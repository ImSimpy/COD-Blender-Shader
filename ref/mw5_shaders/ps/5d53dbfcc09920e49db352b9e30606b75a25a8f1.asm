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
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
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
; shader hash: 15a291eb7408db6123df383731e6ce06
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
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
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = alloca [12 x float], align 4
  %109 = alloca [12 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = alloca [3 x float], align 4
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = fmul fast float %115, %104
  %117 = fmul fast float %115, %105
  %118 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %119 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = bitcast float %119 to i32
  %121 = ashr i32 %120, 1
  %122 = sub nsw i32 1597250115, %121
  %123 = bitcast i32 %122 to float
  %124 = fmul fast float %95, %118
  %125 = fmul fast float %124, %123
  %126 = fmul fast float %96, %118
  %127 = fmul fast float %126, %123
  %128 = fmul fast float %97, %118
  %129 = fmul fast float %128, %123
  %130 = fmul fast float %96, %93
  %131 = fmul fast float %97, %92
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %97, %91
  %134 = fmul fast float %95, %93
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %95, %92
  %137 = fmul fast float %96, %91
  %138 = fsub fast float %136, %137
  %139 = fmul fast float %132, %94
  %140 = fmul fast float %135, %94
  %141 = fmul fast float %138, %94
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = fcmp fast une float %143, 0.000000e+00
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %148 = fmul fast float %116, 2.000000e+00
  %149 = fmul fast float %148, %146
  %150 = fmul fast float %117, 2.000000e+00
  %151 = fmul fast float %150, %147
  %152 = fsub fast float 1.000000e+00, %149
  %153 = fsub fast float 1.000000e+00, %151
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = select i1 %144, float %155, float %159
  %163 = select i1 %144, float %156, float %160
  %164 = select i1 %144, float %157, float %161
  %165 = fmul fast float %162, %152
  %166 = fmul fast float %163, %152
  %167 = fmul fast float %164, %152
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = select i1 %144, float %169, float %173
  %177 = select i1 %144, float %170, float %174
  %178 = select i1 %144, float %171, float %175
  %179 = fmul fast float %176, %153
  %180 = fmul fast float %177, %153
  %181 = fmul fast float %178, %153
  %182 = fadd fast float %179, %165
  %183 = fadd fast float %180, %166
  %184 = fadd fast float %181, %167
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = select i1 %144, float %186, float %190
  %194 = select i1 %144, float %187, float %191
  %195 = select i1 %144, float %188, float %192
  %196 = fadd fast float %182, %193
  %197 = fadd fast float %183, %194
  %198 = fadd fast float %184, %195
  %199 = fmul fast float %196, %107
  %200 = fmul fast float %197, %107
  %201 = fmul fast float %198, %107
  %202 = shl i32 %59, 5
  %203 = add i32 %202, 4194304
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = extractvalue %dx.types.ResRet.i32 %204, 2
  %208 = extractvalue %dx.types.ResRet.i32 %204, 3
  %209 = add i32 %202, 4194320
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = extractvalue %dx.types.ResRet.i32 %210, 1
  %213 = bitcast i32 %211 to float
  %214 = bitcast i32 %212 to float
  %215 = fmul fast float %116, 5.000000e-01
  %216 = fmul fast float %117, 5.000000e-01
  %217 = fptosi float %215 to i32
  %218 = fptosi float %216 to i32
  %219 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = lshr i32 %220, 18
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F4C00EBA0000000
  %224 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %225 = fadd fast float %224, -1.000000e+00
  %226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %227 = extractvalue %dx.types.Dimensions %226, 0
  %228 = sitofp i32 %227 to float
  %229 = extractvalue %dx.types.Dimensions %226, 1
  %230 = sitofp i32 %229 to float
  %231 = fcmp fast oge float %215, %228
  %232 = fcmp fast oge float %216, %230
  %233 = or i1 %231, %232
  %234 = select i1 %233, float 0x4197782600000000, float %225
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %238 = fmul fast float %236, %116
  %239 = fmul fast float %237, %117
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 114688
  %243 = icmp ne i32 %242, 0
  %244 = select i1 %243, float %238, float 0.000000e+00
  %245 = select i1 %243, float %239, float 0.000000e+00
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %244, float %245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fmul fast float %247, 2.550000e+02
  %249 = fptoui float %248 to i32
  %250 = select i1 %243, i32 %249, i32 0
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 3
  %253 = and i32 %252, 3
  %254 = icmp ne i32 %253, 0
  %255 = and i32 %252, 4
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %254, %256
  br i1 %257, label %258, label %267

; <label>:258                                     ; preds = %0
  %259 = fmul fast float %147, %117
  %260 = fmul fast float %146, %116
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %260, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fsub fast float 1.000000e+00, %262
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fcmp fast olt float %263, %265
  br label %270

; <label>:267                                     ; preds = %0
  %268 = icmp eq i32 %255, 0
  %269 = and i1 %254, %268
  br label %270

; <label>:270                                     ; preds = %267, %258
  %271 = phi i1 [ %266, %258 ], [ %269, %267 ]
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %274 = fmul fast float %273, 0x3FE3C6EF40000000
  %275 = frem fast float %116, 2.560000e+02
  %276 = frem fast float %117, 2.560000e+02
  %277 = fptoui float %275 to i32
  %278 = fptoui float %276 to i32
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %277, i32 %278, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fadd fast float %280, %274
  %282 = call float @dx.op.unary.f32(i32 22, float %281)  ; Frc(value)
  %283 = add i32 %58, 156
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %58, 216
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %58, 36
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %58, 288
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = mul i32 %60, 100
  %326 = add i32 %325, 28
  %327 = add i32 %325, 40
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = add i32 %58, 172
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = shl i32 %332, 4
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %332, 7
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %332, 22
  %340 = shl nuw nsw i32 %339, 5
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %58, 232
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %344, 8
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %344, 16
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = add i32 %58, 52
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %58, 304
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = and i32 %329, 1
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %374, float %335
  %384 = select i1 %382, float %377, float %338
  %385 = select i1 %382, float %380, float %341
  %386 = add i32 %325, 44
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = fmul fast float %388, %383
  %390 = fmul fast float %388, %384
  %391 = fmul fast float %388, %385
  %392 = add i32 %325, 48
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = shl i32 %394, 4
  %396 = and i32 %395, 32752
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %394, 7
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %394, 22
  %402 = shl nuw nsw i32 %401, 5
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = and i32 %329, 8
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %397, float %347
  %407 = select i1 %405, float %400, float %351
  %408 = select i1 %405, float %403, float %355
  %409 = add i32 %325, 52
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = and i32 %329, 2
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %413, float %360
  %419 = select i1 %417, float %415, float %362
  %420 = add i32 %325, 56
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = and i32 %329, 4
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %424, float %367
  %430 = fmul float %429, 0x3F50624DE0000000
  %431 = select i1 %428, float %426, float %369
  %432 = fmul float %431, 0x3F50624DE0000000
  %433 = add i32 %325, 60
  %434 = add i32 %325, 32
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = add i32 %58, 188
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %449 = add i32 %58, 248
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %463 = add i32 %58, 68
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %58, 320
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = shl i32 %478, 4
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %478, 7
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %478, 22
  %486 = shl nuw nsw i32 %485, 5
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = and i32 %436, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %481, float %442
  %491 = select i1 %489, float %484, float %445
  %492 = select i1 %489, float %487, float %448
  %493 = add i32 %325, 64
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = fmul fast float %495, %490
  %497 = fmul fast float %495, %491
  %498 = fmul fast float %495, %492
  %499 = add i32 %325, 68
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = shl i32 %501, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %501, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 22
  %509 = shl nuw nsw i32 %508, 5
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = and i32 %436, 8
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %504, float %454
  %514 = select i1 %512, float %507, float %458
  %515 = select i1 %512, float %510, float %462
  %516 = add i32 %325, 72
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %518, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = and i32 %436, 2
  %524 = icmp ne i32 %523, 0
  %525 = select i1 %524, float %520, float %467
  %526 = select i1 %524, float %522, float %469
  %527 = add i32 %325, 76
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 65535
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = lshr i32 %529, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = and i32 %436, 4
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %531, float %474
  %537 = fmul float %536, 0x3F50624DE0000000
  %538 = select i1 %535, float %533, float %476
  %539 = fmul float %538, 0x3F50624DE0000000
  %540 = add i32 %325, 80
  %541 = add i32 %325, 36
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %58, 204
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = shl i32 %546, 4
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %546, 7
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %546, 22
  %554 = shl nuw nsw i32 %553, 5
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %58, 264
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = lshr i32 %558, 8
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %558, 16
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = add i32 %58, 84
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = add i32 %58, 336
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = shl i32 %585, 4
  %587 = and i32 %586, 32752
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %585, 7
  %590 = and i32 %589, 32752
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %585, 22
  %593 = shl nuw nsw i32 %592, 5
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %543, 1
  %596 = icmp ne i32 %595, 0
  %597 = select i1 %596, float %588, float %549
  %598 = select i1 %596, float %591, float %552
  %599 = select i1 %596, float %594, float %555
  %600 = add i32 %325, 84
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = fmul fast float %602, %597
  %604 = fmul fast float %602, %598
  %605 = fmul fast float %602, %599
  %606 = add i32 %325, 88
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = shl i32 %608, 4
  %610 = and i32 %609, 32752
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %608, 7
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %608, 22
  %616 = shl nuw nsw i32 %615, 5
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %543, 8
  %619 = icmp ne i32 %618, 0
  %620 = select i1 %619, float %611, float %561
  %621 = select i1 %619, float %614, float %565
  %622 = select i1 %619, float %617, float %569
  %623 = add i32 %325, 92
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %625, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %543, 2
  %631 = icmp ne i32 %630, 0
  %632 = select i1 %631, float %627, float %574
  %633 = select i1 %631, float %629, float %576
  %634 = add i32 %325, 96
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %636, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %543, 4
  %642 = icmp ne i32 %641, 0
  %643 = select i1 %642, float %638, float %581
  %644 = fmul float %643, 0x3F50624DE0000000
  %645 = select i1 %642, float %640, float %583
  %646 = fmul float %645, 0x3F50624DE0000000
  %647 = add i32 %58, 348
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 32
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %649, 64
  %653 = icmp eq i32 %652, 0
  %654 = and i32 %649, 128
  %655 = icmp eq i32 %654, 0
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 2
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %675, label %660

; <label>:660                                     ; preds = %270
  %661 = add i32 %58, 524
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %665, %dx.types.Handle %113, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  %671 = fmul fast float %670, %100
  %672 = fmul fast float %667, %101
  %673 = fmul fast float %668, %102
  %674 = fmul fast float %669, %103
  br label %675

; <label>:675                                     ; preds = %660, %270
  %676 = phi float [ %103, %270 ], [ %674, %660 ]
  %677 = phi float [ %102, %270 ], [ %673, %660 ]
  %678 = phi float [ %101, %270 ], [ %672, %660 ]
  %679 = phi float [ %100, %270 ], [ %671, %660 ]
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 2
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %703, label %684

; <label>:684                                     ; preds = %675
  %685 = add i32 %58, 44
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  %690 = select i1 %689, float %678, float 1.000000e+00
  %691 = add i32 %58, 60
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 1
  %695 = icmp ne i32 %694, 0
  %696 = select i1 %695, float %677, float 1.000000e+00
  %697 = add i32 %58, 76
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 1
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %676, float 1.000000e+00
  br label %703

; <label>:703                                     ; preds = %684, %675
  %704 = phi float [ %676, %675 ], [ %702, %684 ]
  %705 = phi float [ %677, %675 ], [ %696, %684 ]
  %706 = phi float [ %678, %675 ], [ %690, %684 ]
  %707 = lshr i32 %681, 20
  %708 = and i32 %707, 3
  %709 = add nuw nsw i32 %708, 1
  %710 = add i32 %58, 24
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %58, 28
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = or i32 %715, %712
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %1252, label %718

; <label>:718                                     ; preds = %703
  %719 = and i32 %712, 262144
  %720 = icmp ne i32 %719, 0
  %721 = select i1 %720, float %66, float 1.000000e+00
  %722 = select i1 %720, float %67, float 0.000000e+00
  %723 = select i1 %720, float %68, float 0.000000e+00
  %724 = select i1 %720, float %69, float 1.000000e+00
  %725 = select i1 %720, float %70, float %98
  %726 = select i1 %720, float %71, float %99
  %727 = add i32 %58, 284
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 16
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = fmul fast float %731, 0x3F50624DE0000000
  %733 = add i32 %58, 88
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = lshr i32 %735, 16
  %737 = and i32 %736, 255
  %738 = lshr i32 %735, 24
  %739 = add i32 %58, 292
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %741, 16
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = add i32 %58, 32
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 22
  %750 = shl nuw nsw i32 %749, 5
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = shl i32 %748, 4
  %753 = and i32 %752, 32752
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %748, 7
  %756 = and i32 %755, 32752
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %760 = fmul fast float %759, 1.000000e+03
  %761 = fmul fast float %323, %760
  %762 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %763 = fadd fast float %762, %313
  %764 = fmul fast float %324, %760
  %765 = call float @dx.op.unary.f32(i32 22, float %764)  ; Frc(value)
  %766 = fadd fast float %765, %315
  %767 = fmul fast float %732, %760
  %768 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %769 = fmul fast float %768, 0x401921FB60000000
  %770 = fadd fast float %769, %751
  %771 = call float @dx.op.unary.f32(i32 13, float %770)  ; Sin(value)
  %772 = call float @dx.op.unary.f32(i32 12, float %770)  ; Cos(value)
  %773 = fsub fast float -0.000000e+00, %771
  %774 = fadd fast float %725, -5.000000e-01
  %775 = fadd fast float %726, -5.000000e-01
  %776 = fmul fast float %743, %774
  %777 = fmul fast float %745, %775
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fmul fast float %754, %778
  %781 = fmul fast float %757, %779
  %782 = fmul fast float %772, %780
  %783 = call float @dx.op.tertiary.f32(i32 46, float %773, float %781, float %782)  ; FMad(a,b,c)
  %784 = fmul fast float %771, %780
  %785 = call float @dx.op.tertiary.f32(i32 46, float %772, float %781, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %763, %783
  %787 = fadd fast float %766, %785
  %788 = icmp ugt i32 %737, 1
  %789 = icmp ugt i32 %735, 33554431
  %790 = or i1 %789, %788
  br i1 %790, label %791, label %816

; <label>:791                                     ; preds = %718
  %792 = add i32 %58, 228
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fmul fast float %759, %796
  %798 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %799 = mul nuw nsw i32 %737, %738
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %798, %800
  %802 = call float @dx.op.unary.f32(i32 27, float %801)  ; Round_ni(value)
  %803 = fptoui float %802 to i32
  %804 = urem i32 %803, %737
  %805 = udiv i32 %803, %738
  %806 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %807 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %808 = uitofp i32 %804 to float
  %809 = uitofp i32 %805 to float
  %810 = fadd fast float %806, %808
  %811 = fadd fast float %807, %809
  %812 = uitofp i32 %737 to float
  %813 = uitofp i32 %738 to float
  %814 = fdiv fast float %810, %812
  %815 = fdiv fast float %811, %813
  br label %816

; <label>:816                                     ; preds = %791, %718
  %817 = phi float [ %814, %791 ], [ %786, %718 ]
  %818 = phi float [ %815, %791 ], [ %787, %718 ]
  %819 = and i32 %712, 256
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %867, label %821

; <label>:821                                     ; preds = %816
  %822 = add i32 %58, 472
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = add i32 %58, 100
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = shl i32 %831, 4
  %833 = and i32 %832, 32752
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = lshr i32 %831, 7
  %836 = and i32 %835, 32752
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fsub fast float 1.000000e+00, %679
  %839 = call float @dx.op.binary.f32(i32 35, float %838, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %840 = bitcast float %679 to i32
  %841 = sitofp i32 %840 to float
  %842 = fadd fast float %841, 0xC1CFBF8940000000
  %843 = fmul fast float %837, %842
  %844 = fadd fast float %843, 0x41CFBF8940000000
  %845 = fptosi float %844 to i32
  %846 = bitcast i32 %845 to float
  %847 = bitcast float %839 to i32
  %848 = sitofp i32 %847 to float
  %849 = fadd fast float %848, 0xC1CFBF8940000000
  %850 = fmul fast float %849, %837
  %851 = fadd fast float %850, 0x41CFBF8940000000
  %852 = fptosi float %851 to i32
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %846, %834
  %855 = fmul fast float %853, %834
  %856 = fsub fast float %839, %854
  %857 = fadd fast float %855, %839
  %858 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %859 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %860 = fsub fast float %828, %858
  %861 = fsub fast float %859, %858
  %862 = bitcast float %861 to i32
  %863 = sub nsw i32 2129859010, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %864, %860
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  br label %867

; <label>:867                                     ; preds = %821, %816
  %868 = phi float [ %866, %821 ], [ %679, %816 ]
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 128
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %889, label %873

; <label>:873                                     ; preds = %867
  %874 = add i32 %58, 456
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 524288
  %884 = icmp ne i32 %883, 0
  %885 = fcmp fast ogt float %880, 0x3FE0101020000000
  %886 = select i1 %885, float 1.000000e+00, float 0.000000e+00
  %887 = select i1 %884, float %886, float %880
  %888 = fmul fast float %887, %868
  br label %889

; <label>:889                                     ; preds = %873, %867
  %890 = phi float [ %888, %873 ], [ %868, %867 ]
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 16
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %1093, label %895

; <label>:895                                     ; preds = %889
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = add i32 %58, 408
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = add i32 %900, 0
  %902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %902, %dx.types.Handle %112, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = extractvalue %dx.types.ResRet.f32 %903, 3
  %908 = and i32 %897, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %897, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = fmul fast float %907, %909
  %914 = fadd fast float %913, %912
  %915 = fmul fast float %914, 0x3F70101000000000
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 512
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %928, label %920

; <label>:920                                     ; preds = %895
  %921 = add i32 %58, 492
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  br label %928

; <label>:928                                     ; preds = %920, %895
  %929 = phi float [ %927, %920 ], [ 1.000000e+00, %895 ]
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 33554432
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %1040, label %934

; <label>:934                                     ; preds = %928
  %935 = add i32 %58, 224
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %937, 16
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = add i32 %58, 228
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 24
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = and i32 %948, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %948, 8
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %948, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = add i32 %58, 220
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 24
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = and i32 %965, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = lshr i32 %965, 8
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %965, 16
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = bitcast float %904 to i32
  %981 = ashr i32 %980, 1
  %982 = sub nsw i32 1597463174, %981
  %983 = bitcast i32 %982 to float
  %984 = fmul fast float %904, 5.000000e-01
  %985 = fmul fast float %983, %983
  %986 = fmul fast float %985, %984
  %987 = fsub fast float 1.500000e+00, %986
  %988 = fmul fast float %983, %904
  %989 = fmul fast float %988, %987
  %990 = bitcast float %905 to i32
  %991 = ashr i32 %990, 1
  %992 = sub nsw i32 1597463174, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %905, 5.000000e-01
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 1.500000e+00, %996
  %998 = fmul fast float %993, %905
  %999 = fmul fast float %998, %997
  %1000 = bitcast float %906 to i32
  %1001 = ashr i32 %1000, 1
  %1002 = sub nsw i32 1597463174, %1001
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %906, 5.000000e-01
  %1005 = fmul fast float %1003, %1003
  %1006 = fmul fast float %1005, %1004
  %1007 = fsub fast float 1.500000e+00, %1006
  %1008 = fmul fast float %1003, %906
  %1009 = fmul fast float %1008, %1007
  %1010 = fsub fast float %989, %971
  %1011 = fsub fast float %999, %975
  %1012 = fsub fast float %1009, %979
  %1013 = fmul fast float %1010, %939
  %1014 = fmul fast float %1011, %941
  %1015 = fmul fast float %1012, %946
  %1016 = fadd fast float %1013, %954
  %1017 = fadd fast float %1014, %958
  %1018 = fadd fast float %1015, %962
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1021 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1022 = fmul fast float %1019, %1019
  %1023 = fmul fast float %1020, %1020
  %1024 = fmul fast float %1021, %1021
  %1025 = fsub fast float %1022, %904
  %1026 = fsub fast float %1023, %905
  %1027 = fsub fast float %1024, %906
  %1028 = fmul fast float %1025, %929
  %1029 = fmul fast float %1026, %929
  %1030 = fmul fast float %1027, %929
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %1029, %905
  %1033 = fadd fast float %1030, %906
  %1034 = fadd fast float %951, %915
  %1035 = fsub fast float %1034, %968
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1037 = fsub fast float %1036, %915
  %1038 = fmul fast float %1037, %929
  %1039 = fadd fast float %1038, %915
  br label %1093

; <label>:1040                                    ; preds = %928
  %1041 = and i32 %931, 134217728
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1077, label %1043

; <label>:1043                                    ; preds = %1040
  %1044 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1045 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1046 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fadd fast float %1045, -5.000000e-01
  %1049 = fadd fast float %1046, -5.000000e-01
  %1050 = fmul fast float %1047, %929
  %1051 = fmul fast float %1048, %929
  %1052 = fmul fast float %1049, %929
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = call float @dx.op.unary.f32(i32 24, float %905)  ; Sqrt(value)
  %1058 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %1059 = fmul fast float %1053, 2.000000e+00
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1060, %1056
  %1062 = fadd fast float %1061, %1059
  %1063 = fmul fast float %1062, %1056
  %1064 = fmul fast float %1054, 2.000000e+00
  %1065 = fsub fast float 1.000000e+00, %1064
  %1066 = fmul fast float %1065, %1057
  %1067 = fadd fast float %1066, %1064
  %1068 = fmul fast float %1067, %1057
  %1069 = fmul fast float %1055, 2.000000e+00
  %1070 = fsub fast float 1.000000e+00, %1069
  %1071 = fmul fast float %1070, %1058
  %1072 = fadd fast float %1071, %1069
  %1073 = fmul fast float %1072, %1058
  %1074 = fmul fast float %1063, %1063
  %1075 = fmul fast float %1068, %1068
  %1076 = fmul fast float %1073, %1073
  br label %1093

; <label>:1077                                    ; preds = %1040
  %1078 = fmul fast float %300, %300
  %1079 = fmul fast float %304, %304
  %1080 = fmul fast float %308, %308
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fadd fast float %1079, -1.000000e+00
  %1083 = fadd fast float %1080, -1.000000e+00
  %1084 = fmul fast float %929, %1081
  %1085 = fmul fast float %929, %1082
  %1086 = fmul fast float %929, %1083
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fadd fast float %1085, 1.000000e+00
  %1089 = fadd fast float %1086, 1.000000e+00
  %1090 = fmul fast float %1087, %904
  %1091 = fmul fast float %1088, %905
  %1092 = fmul fast float %1089, %906
  br label %1093

; <label>:1093                                    ; preds = %1077, %1043, %934, %889
  %1094 = phi float [ %1039, %934 ], [ %915, %1043 ], [ %915, %1077 ], [ 0x3FA23C0BE0000000, %889 ]
  %1095 = phi float [ %1031, %934 ], [ %1074, %1043 ], [ %1090, %1077 ], [ 1.000000e+00, %889 ]
  %1096 = phi float [ %1032, %934 ], [ %1075, %1043 ], [ %1091, %1077 ], [ 1.000000e+00, %889 ]
  %1097 = phi float [ %1033, %934 ], [ %1076, %1043 ], [ %1092, %1077 ], [ 1.000000e+00, %889 ]
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 1
  %1100 = and i32 %1099, 1
  %1101 = icmp ne i32 %1100, 0
  %1102 = add i32 %58, 356
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 32
  %1106 = icmp ne i32 %1105, 0
  %1107 = and i1 %1101, %1106
  %1108 = select i1 %1107, float 1.000000e+00, float %1095
  %1109 = select i1 %1107, float 0x3FD3333340000000, float %1096
  %1110 = select i1 %1107, float 0x3FD3333340000000, float %1097
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 32
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1187, label %1115

; <label>:1115                                    ; preds = %1093
  %1116 = add i32 %58, 92
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %58, 424
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %1121, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1123, %dx.types.Handle %112, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1129 = and i32 %1118, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = lshr i32 %1118, 8
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = lshr i32 %1118, 16
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101000000000
  %1138 = fmul fast float %1125, %1130
  %1139 = fadd fast float %1138, %1133
  %1140 = fmul fast float %1139, 0x3F70101000000000
  %1141 = fadd fast float %1126, -5.000000e-01
  %1142 = fadd fast float %1128, -5.000000e-01
  %1143 = fmul fast float %1141, %1137
  %1144 = fmul fast float %1142, %1137
  %1145 = fadd fast float %1143, 5.000000e-01
  %1146 = fadd fast float %1144, 5.000000e-01
  %1147 = fmul fast float %1145, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = fmul fast float %1146, 2.000000e+00
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = fadd fast float %1148, %1150
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = fsub fast float %1148, %1150
  %1154 = fmul fast float %1153, 5.000000e-01
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = fsub fast float 1.000000e+00, %1155
  %1157 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1158 = fsub fast float %1156, %1157
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1154, float %1158, float %1152, float %1154, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = call float @dx.op.unary.f32(i32 25, float %1159)  ; Rsqrt(value)
  %1161 = fmul fast float %1152, %1160
  %1162 = fmul fast float %1154, %1160
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 67108864
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1183, label %1167

; <label>:1167                                    ; preds = %1115
  %1168 = add i32 %58, 280
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = lshr i32 %1170, 16
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fsub fast float %1140, %1178
  %1180 = fmul fast float %1179, %1172
  %1181 = fadd fast float %1180, %1176
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  br label %1183

; <label>:1183                                    ; preds = %1167, %1115
  %1184 = phi float [ %1182, %1167 ], [ %1140, %1115 ]
  %1185 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  %1186 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %723, float %724)  ; Dot2(ax,ay,bx,by)
  br label %1187

; <label>:1187                                    ; preds = %1183, %1093
  %1188 = phi float [ %1184, %1183 ], [ 0x3FD6666660000000, %1093 ]
  %1189 = phi float [ %1185, %1183 ], [ 0.000000e+00, %1093 ]
  %1190 = phi float [ %1186, %1183 ], [ 0.000000e+00, %1093 ]
  %1191 = phi float [ %1127, %1183 ], [ 1.000000e+00, %1093 ]
  %1192 = add i32 %58, 160
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 22
  %1196 = shl nuw nsw i32 %1195, 5
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 64
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1235, label %1202

; <label>:1202                                    ; preds = %1187
  %1203 = add i32 %58, 440
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1205, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 131072
  %1211 = icmp eq i32 %1210, 0
  %1212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1207, %dx.types.Handle %112, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = fmul fast float %1213, %288
  %1217 = fmul fast float %1214, %291
  %1218 = fmul fast float %1215, %294
  br i1 %1211, label %1225, label %1219

; <label>:1219                                    ; preds = %1202
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = fmul fast float %1221, %1216
  %1223 = fmul fast float %1221, %1217
  %1224 = fmul fast float %1221, %1218
  br label %1225

; <label>:1225                                    ; preds = %1219, %1202
  %1226 = phi float [ %1222, %1219 ], [ %1216, %1202 ]
  %1227 = phi float [ %1223, %1219 ], [ %1217, %1202 ]
  %1228 = phi float [ %1224, %1219 ], [ %1218, %1202 ]
  %1229 = fmul fast float %1226, %1197
  %1230 = select i1 %271, float %1229, float %1226
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1230, float %1227, float %1228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = select i1 %271, float 0.000000e+00, float %1226
  %1233 = select i1 %271, float %1231, float %1227
  %1234 = select i1 %271, float 0.000000e+00, float %1228
  br label %1235

; <label>:1235                                    ; preds = %1225, %1187
  %1236 = phi float [ %1232, %1225 ], [ 0.000000e+00, %1187 ]
  %1237 = phi float [ %1233, %1225 ], [ 0.000000e+00, %1187 ]
  %1238 = phi float [ %1234, %1225 ], [ 0.000000e+00, %1187 ]
  %1239 = add i32 %58, 96
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = lshr i32 %1241, 8
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1109, float %1110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1248 = fmul fast float %1246, %1247
  %1249 = fadd fast float %1248, %1243
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  br label %1252

; <label>:1252                                    ; preds = %1235, %703
  %1253 = phi float [ 0.000000e+00, %703 ], [ %1189, %1235 ]
  %1254 = phi float [ 0.000000e+00, %703 ], [ %1190, %1235 ]
  %1255 = phi float [ 0.000000e+00, %703 ], [ %1236, %1235 ]
  %1256 = phi float [ 0.000000e+00, %703 ], [ %1237, %1235 ]
  %1257 = phi float [ 0.000000e+00, %703 ], [ %1238, %1235 ]
  %1258 = phi float [ 0.000000e+00, %703 ], [ %1108, %1235 ]
  %1259 = phi float [ 0.000000e+00, %703 ], [ %1109, %1235 ]
  %1260 = phi float [ 0.000000e+00, %703 ], [ %1110, %1235 ]
  %1261 = phi float [ 0.000000e+00, %703 ], [ %1094, %1235 ]
  %1262 = phi float [ 0.000000e+00, %703 ], [ %890, %1235 ]
  %1263 = phi float [ 0.000000e+00, %703 ], [ %1188, %1235 ]
  %1264 = phi float [ 0.000000e+00, %703 ], [ %1191, %1235 ]
  %1265 = phi float [ 0.000000e+00, %703 ], [ %1251, %1235 ]
  br i1 %651, label %1992, label %1266

; <label>:1266                                    ; preds = %1252
  %1267 = icmp ult i32 %709, 2
  %1268 = add i32 %58, 40
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %58, 44
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = or i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1992, label %1276

; <label>:1276                                    ; preds = %1266
  %1277 = and i32 %1270, 262144
  %1278 = icmp ne i32 %1277, 0
  %1279 = select i1 %1278, float %66, float 1.000000e+00
  %1280 = select i1 %1278, float %67, float 0.000000e+00
  %1281 = select i1 %1278, float %68, float 0.000000e+00
  %1282 = select i1 %1278, float %69, float 1.000000e+00
  %1283 = select i1 %1278, float %70, float %98
  %1284 = select i1 %1278, float %71, float %99
  %1285 = add i32 %58, 300
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = fmul fast float %1289, 0x3F50624DE0000000
  %1291 = add i32 %58, 104
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 16
  %1295 = and i32 %1294, 255
  %1296 = lshr i32 %1293, 24
  %1297 = add i32 %58, 308
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 65535
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = lshr i32 %1299, 16
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = add i32 %58, 48
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = lshr i32 %1306, 22
  %1308 = shl nuw nsw i32 %1307, 5
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = shl i32 %1306, 4
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = lshr i32 %1306, 7
  %1314 = and i32 %1313, 32752
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1318 = fmul fast float %1317, 1.000000e+03
  %1319 = fmul fast float %1318, %430
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = fadd fast float %1320, %418
  %1322 = fmul fast float %1318, %432
  %1323 = call float @dx.op.unary.f32(i32 22, float %1322)  ; Frc(value)
  %1324 = fadd fast float %1323, %419
  %1325 = fmul fast float %1290, %1318
  %1326 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1327 = fmul fast float %1326, 0x401921FB60000000
  %1328 = fadd fast float %1327, %1309
  %1329 = call float @dx.op.unary.f32(i32 13, float %1328)  ; Sin(value)
  %1330 = call float @dx.op.unary.f32(i32 12, float %1328)  ; Cos(value)
  %1331 = fsub fast float -0.000000e+00, %1329
  %1332 = fadd fast float %1283, -5.000000e-01
  %1333 = fadd fast float %1284, -5.000000e-01
  %1334 = fmul fast float %1301, %1332
  %1335 = fmul fast float %1303, %1333
  %1336 = fadd fast float %1334, 5.000000e-01
  %1337 = fadd fast float %1335, 5.000000e-01
  %1338 = fmul fast float %1312, %1336
  %1339 = fmul fast float %1315, %1337
  %1340 = fmul fast float %1330, %1338
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1331, float %1339, float %1340)  ; FMad(a,b,c)
  %1342 = fmul fast float %1329, %1338
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1339, float %1342)  ; FMad(a,b,c)
  %1344 = fadd fast float %1321, %1341
  %1345 = fadd fast float %1324, %1343
  %1346 = icmp ugt i32 %1295, 1
  %1347 = icmp ugt i32 %1293, 33554431
  %1348 = or i1 %1347, %1346
  br i1 %1348, label %1349, label %1374

; <label>:1349                                    ; preds = %1276
  %1350 = add i32 %58, 244
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = lshr i32 %1352, 16
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = fmul fast float %1317, %1354
  %1356 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1357 = mul nuw nsw i32 %1295, %1296
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1356, %1358
  %1360 = call float @dx.op.unary.f32(i32 27, float %1359)  ; Round_ni(value)
  %1361 = fptoui float %1360 to i32
  %1362 = urem i32 %1361, %1295
  %1363 = udiv i32 %1361, %1296
  %1364 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1365 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1366 = uitofp i32 %1362 to float
  %1367 = uitofp i32 %1363 to float
  %1368 = fadd fast float %1364, %1366
  %1369 = fadd fast float %1365, %1367
  %1370 = uitofp i32 %1295 to float
  %1371 = uitofp i32 %1296 to float
  %1372 = fdiv fast float %1368, %1370
  %1373 = fdiv fast float %1369, %1371
  br label %1374

; <label>:1374                                    ; preds = %1349, %1276
  %1375 = phi float [ %1372, %1349 ], [ %1344, %1276 ]
  %1376 = phi float [ %1373, %1349 ], [ %1345, %1276 ]
  %1377 = and i32 %1270, 256
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1425, label %1379

; <label>:1379                                    ; preds = %1374
  %1380 = add i32 %58, 476
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %1382, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1384, %dx.types.Handle %113, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = add i32 %58, 116
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = shl i32 %1389, 4
  %1391 = and i32 %1390, 32752
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1389, 7
  %1394 = and i32 %1393, 32752
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = fsub fast float 1.000000e+00, %706
  %1397 = call float @dx.op.binary.f32(i32 35, float %1396, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1398 = bitcast float %706 to i32
  %1399 = sitofp i32 %1398 to float
  %1400 = fadd fast float %1399, 0xC1CFBF8940000000
  %1401 = fmul fast float %1395, %1400
  %1402 = fadd fast float %1401, 0x41CFBF8940000000
  %1403 = fptosi float %1402 to i32
  %1404 = bitcast i32 %1403 to float
  %1405 = bitcast float %1397 to i32
  %1406 = sitofp i32 %1405 to float
  %1407 = fadd fast float %1406, 0xC1CFBF8940000000
  %1408 = fmul fast float %1407, %1395
  %1409 = fadd fast float %1408, 0x41CFBF8940000000
  %1410 = fptosi float %1409 to i32
  %1411 = bitcast i32 %1410 to float
  %1412 = fmul fast float %1404, %1392
  %1413 = fmul fast float %1411, %1392
  %1414 = fsub fast float %1397, %1412
  %1415 = fadd fast float %1413, %1397
  %1416 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1417 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1418 = fsub fast float %1386, %1416
  %1419 = fsub fast float %1417, %1416
  %1420 = bitcast float %1419 to i32
  %1421 = sub nsw i32 2129859010, %1420
  %1422 = bitcast i32 %1421 to float
  %1423 = fmul fast float %1422, %1418
  %1424 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  br label %1425

; <label>:1425                                    ; preds = %1379, %1374
  %1426 = phi float [ %1424, %1379 ], [ %706, %1374 ]
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 128
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1447, label %1431

; <label>:1431                                    ; preds = %1425
  %1432 = add i32 %58, 460
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %113, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 524288
  %1442 = icmp ne i32 %1441, 0
  %1443 = fcmp fast ogt float %1438, 0x3FE0101020000000
  %1444 = select i1 %1443, float 1.000000e+00, float 0.000000e+00
  %1445 = select i1 %1442, float %1444, float %1438
  %1446 = fmul fast float %1445, %1426
  br label %1447

; <label>:1447                                    ; preds = %1431, %1425
  %1448 = phi float [ %1446, %1431 ], [ %1426, %1425 ]
  %1449 = fcmp fast ult float %1448, 0x3F70101020000000
  br i1 %1449, label %1992, label %1450

; <label>:1450                                    ; preds = %1447
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 16
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1653, label %1455

; <label>:1455                                    ; preds = %1450
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = add i32 %58, 412
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %1460, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1462, %dx.types.Handle %112, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = and i32 %1457, 255
  %1469 = uitofp i32 %1468 to float
  %1470 = lshr i32 %1457, 8
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1467, %1469
  %1474 = fadd fast float %1473, %1472
  %1475 = fmul fast float %1474, 0x3F70101000000000
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 512
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1488, label %1480

; <label>:1480                                    ; preds = %1455
  %1481 = add i32 %58, 496
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1485, %dx.types.Handle %113, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  br label %1488

; <label>:1488                                    ; preds = %1480, %1455
  %1489 = phi float [ %1487, %1480 ], [ 1.000000e+00, %1455 ]
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 33554432
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1600, label %1494

; <label>:1494                                    ; preds = %1488
  %1495 = add i32 %58, 240
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 65535
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = lshr i32 %1497, 16
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = add i32 %58, 244
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 65535
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 24
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = and i32 %1508, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1508, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1508, 16
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = add i32 %58, 236
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = lshr i32 %1525, 24
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = and i32 %1525, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = lshr i32 %1525, 8
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = lshr i32 %1525, 16
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = bitcast float %1464 to i32
  %1541 = ashr i32 %1540, 1
  %1542 = sub nsw i32 1597463174, %1541
  %1543 = bitcast i32 %1542 to float
  %1544 = fmul fast float %1464, 5.000000e-01
  %1545 = fmul fast float %1543, %1543
  %1546 = fmul fast float %1545, %1544
  %1547 = fsub fast float 1.500000e+00, %1546
  %1548 = fmul fast float %1543, %1464
  %1549 = fmul fast float %1548, %1547
  %1550 = bitcast float %1465 to i32
  %1551 = ashr i32 %1550, 1
  %1552 = sub nsw i32 1597463174, %1551
  %1553 = bitcast i32 %1552 to float
  %1554 = fmul fast float %1465, 5.000000e-01
  %1555 = fmul fast float %1553, %1553
  %1556 = fmul fast float %1555, %1554
  %1557 = fsub fast float 1.500000e+00, %1556
  %1558 = fmul fast float %1553, %1465
  %1559 = fmul fast float %1558, %1557
  %1560 = bitcast float %1466 to i32
  %1561 = ashr i32 %1560, 1
  %1562 = sub nsw i32 1597463174, %1561
  %1563 = bitcast i32 %1562 to float
  %1564 = fmul fast float %1466, 5.000000e-01
  %1565 = fmul fast float %1563, %1563
  %1566 = fmul fast float %1565, %1564
  %1567 = fsub fast float 1.500000e+00, %1566
  %1568 = fmul fast float %1563, %1466
  %1569 = fmul fast float %1568, %1567
  %1570 = fsub fast float %1549, %1531
  %1571 = fsub fast float %1559, %1535
  %1572 = fsub fast float %1569, %1539
  %1573 = fmul fast float %1570, %1499
  %1574 = fmul fast float %1571, %1501
  %1575 = fmul fast float %1572, %1506
  %1576 = fadd fast float %1573, %1514
  %1577 = fadd fast float %1574, %1518
  %1578 = fadd fast float %1575, %1522
  %1579 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1580 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1581 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1582 = fmul fast float %1579, %1579
  %1583 = fmul fast float %1580, %1580
  %1584 = fmul fast float %1581, %1581
  %1585 = fsub fast float %1582, %1464
  %1586 = fsub fast float %1583, %1465
  %1587 = fsub fast float %1584, %1466
  %1588 = fmul fast float %1585, %1489
  %1589 = fmul fast float %1586, %1489
  %1590 = fmul fast float %1587, %1489
  %1591 = fadd fast float %1588, %1464
  %1592 = fadd fast float %1589, %1465
  %1593 = fadd fast float %1590, %1466
  %1594 = fadd fast float %1511, %1475
  %1595 = fsub fast float %1594, %1528
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fsub fast float %1596, %1475
  %1598 = fmul fast float %1597, %1489
  %1599 = fadd fast float %1598, %1475
  br label %1653

; <label>:1600                                    ; preds = %1488
  %1601 = and i32 %1491, 134217728
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1637, label %1603

; <label>:1603                                    ; preds = %1600
  %1604 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %1606 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fadd fast float %1605, -5.000000e-01
  %1609 = fadd fast float %1606, -5.000000e-01
  %1610 = fmul fast float %1607, %1489
  %1611 = fmul fast float %1608, %1489
  %1612 = fmul fast float %1609, %1489
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = fadd fast float %1611, 5.000000e-01
  %1615 = fadd fast float %1612, 5.000000e-01
  %1616 = call float @dx.op.unary.f32(i32 24, float %1464)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1618 = call float @dx.op.unary.f32(i32 24, float %1466)  ; Sqrt(value)
  %1619 = fmul fast float %1613, 2.000000e+00
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = fmul fast float %1620, %1616
  %1622 = fadd fast float %1621, %1619
  %1623 = fmul fast float %1622, %1616
  %1624 = fmul fast float %1614, 2.000000e+00
  %1625 = fsub fast float 1.000000e+00, %1624
  %1626 = fmul fast float %1625, %1617
  %1627 = fadd fast float %1626, %1624
  %1628 = fmul fast float %1627, %1617
  %1629 = fmul fast float %1615, 2.000000e+00
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = fmul fast float %1630, %1618
  %1632 = fadd fast float %1631, %1629
  %1633 = fmul fast float %1632, %1618
  %1634 = fmul fast float %1623, %1623
  %1635 = fmul fast float %1628, %1628
  %1636 = fmul fast float %1633, %1633
  br label %1653

; <label>:1637                                    ; preds = %1600
  %1638 = fmul fast float %406, %406
  %1639 = fmul fast float %407, %407
  %1640 = fmul fast float %408, %408
  %1641 = fadd fast float %1638, -1.000000e+00
  %1642 = fadd fast float %1639, -1.000000e+00
  %1643 = fadd fast float %1640, -1.000000e+00
  %1644 = fmul fast float %1489, %1641
  %1645 = fmul fast float %1489, %1642
  %1646 = fmul fast float %1489, %1643
  %1647 = fadd fast float %1644, 1.000000e+00
  %1648 = fadd fast float %1645, 1.000000e+00
  %1649 = fadd fast float %1646, 1.000000e+00
  %1650 = fmul fast float %1647, %1464
  %1651 = fmul fast float %1648, %1465
  %1652 = fmul fast float %1649, %1466
  br label %1653

; <label>:1653                                    ; preds = %1637, %1603, %1494, %1450
  %1654 = phi float [ %1599, %1494 ], [ %1475, %1603 ], [ %1475, %1637 ], [ 0x3FA23C0BE0000000, %1450 ]
  %1655 = phi float [ %1591, %1494 ], [ %1634, %1603 ], [ %1650, %1637 ], [ 1.000000e+00, %1450 ]
  %1656 = phi float [ %1592, %1494 ], [ %1635, %1603 ], [ %1651, %1637 ], [ 1.000000e+00, %1450 ]
  %1657 = phi float [ %1593, %1494 ], [ %1636, %1603 ], [ %1652, %1637 ], [ 1.000000e+00, %1450 ]
  %1658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.i32 %1658, 1
  %1660 = and i32 %1659, 1
  %1661 = icmp ne i32 %1660, 0
  %1662 = add i32 %58, 356
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 32
  %1666 = icmp ne i32 %1665, 0
  %1667 = and i1 %1661, %1666
  %1668 = select i1 %1667, float 1.000000e+00, float %1655
  %1669 = select i1 %1667, float 0x3FD3333340000000, float %1656
  %1670 = select i1 %1667, float 0x3FD3333340000000, float %1657
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 32
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1747, label %1675

; <label>:1675                                    ; preds = %1653
  %1676 = add i32 %58, 108
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %58, 428
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = add i32 %1681, 0
  %1683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1683, %dx.types.Handle %112, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1685 = extractvalue %dx.types.ResRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.ResRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.ResRet.f32 %1684, 2
  %1688 = extractvalue %dx.types.ResRet.f32 %1684, 3
  %1689 = and i32 %1678, 255
  %1690 = uitofp i32 %1689 to float
  %1691 = lshr i32 %1678, 8
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = lshr i32 %1678, 16
  %1695 = and i32 %1694, 255
  %1696 = uitofp i32 %1695 to float
  %1697 = fmul fast float %1696, 0x3F70101000000000
  %1698 = fmul fast float %1685, %1690
  %1699 = fadd fast float %1698, %1693
  %1700 = fmul fast float %1699, 0x3F70101000000000
  %1701 = fadd fast float %1686, -5.000000e-01
  %1702 = fadd fast float %1688, -5.000000e-01
  %1703 = fmul fast float %1701, %1697
  %1704 = fmul fast float %1702, %1697
  %1705 = fadd fast float %1703, 5.000000e-01
  %1706 = fadd fast float %1704, 5.000000e-01
  %1707 = fmul fast float %1705, 2.000000e+00
  %1708 = fadd fast float %1707, -1.000000e+00
  %1709 = fmul fast float %1706, 2.000000e+00
  %1710 = fadd fast float %1709, -1.000000e+00
  %1711 = fadd fast float %1708, %1710
  %1712 = fmul fast float %1711, 5.000000e-01
  %1713 = fsub fast float %1708, %1710
  %1714 = fmul fast float %1713, 5.000000e-01
  %1715 = call float @dx.op.unary.f32(i32 6, float %1712)  ; FAbs(value)
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = call float @dx.op.unary.f32(i32 6, float %1714)  ; FAbs(value)
  %1718 = fsub fast float %1716, %1717
  %1719 = call float @dx.op.dot3.f32(i32 55, float %1712, float %1714, float %1718, float %1712, float %1714, float %1718)  ; Dot3(ax,ay,az,bx,by,bz)
  %1720 = call float @dx.op.unary.f32(i32 25, float %1719)  ; Rsqrt(value)
  %1721 = fmul fast float %1712, %1720
  %1722 = fmul fast float %1714, %1720
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 67108864
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1743, label %1727

; <label>:1727                                    ; preds = %1675
  %1728 = add i32 %58, 296
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 65535
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 65535
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = lshr i32 %1730, 16
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = fsub fast float %1700, %1738
  %1740 = fmul fast float %1739, %1732
  %1741 = fadd fast float %1740, %1736
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  br label %1743

; <label>:1743                                    ; preds = %1727, %1675
  %1744 = phi float [ %1742, %1727 ], [ %1700, %1675 ]
  %1745 = call float @dx.op.dot2.f32(i32 54, float %1721, float %1722, float %1279, float %1280)  ; Dot2(ax,ay,bx,by)
  %1746 = call float @dx.op.dot2.f32(i32 54, float %1721, float %1722, float %1281, float %1282)  ; Dot2(ax,ay,bx,by)
  br label %1747

; <label>:1747                                    ; preds = %1743, %1653
  %1748 = phi float [ %1744, %1743 ], [ 0x3FD6666660000000, %1653 ]
  %1749 = phi float [ %1745, %1743 ], [ 0.000000e+00, %1653 ]
  %1750 = phi float [ %1746, %1743 ], [ 0.000000e+00, %1653 ]
  %1751 = phi float [ %1687, %1743 ], [ 1.000000e+00, %1653 ]
  %1752 = add i32 %58, 176
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = lshr i32 %1754, 22
  %1756 = shl nuw nsw i32 %1755, 5
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 64
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1795, label %1762

; <label>:1762                                    ; preds = %1747
  %1763 = add i32 %58, 444
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = add i32 %1765, 0
  %1767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 131072
  %1771 = icmp eq i32 %1770, 0
  %1772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1767, %dx.types.Handle %112, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = fmul fast float %389, %1773
  %1777 = fmul fast float %390, %1774
  %1778 = fmul fast float %391, %1775
  br i1 %1771, label %1785, label %1779

; <label>:1779                                    ; preds = %1762
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1782 = fmul fast float %1781, %1776
  %1783 = fmul fast float %1781, %1777
  %1784 = fmul fast float %1781, %1778
  br label %1785

; <label>:1785                                    ; preds = %1779, %1762
  %1786 = phi float [ %1782, %1779 ], [ %1776, %1762 ]
  %1787 = phi float [ %1783, %1779 ], [ %1777, %1762 ]
  %1788 = phi float [ %1784, %1779 ], [ %1778, %1762 ]
  %1789 = fmul fast float %1786, %1757
  %1790 = select i1 %271, float %1789, float %1786
  %1791 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1787, float %1788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1792 = select i1 %271, float 0.000000e+00, float %1786
  %1793 = select i1 %271, float %1791, float %1787
  %1794 = select i1 %271, float 0.000000e+00, float %1788
  br label %1795

; <label>:1795                                    ; preds = %1785, %1747
  %1796 = phi float [ %1792, %1785 ], [ 0.000000e+00, %1747 ]
  %1797 = phi float [ %1793, %1785 ], [ 0.000000e+00, %1747 ]
  %1798 = phi float [ %1794, %1785 ], [ 0.000000e+00, %1747 ]
  %1799 = add i32 %58, 112
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 255
  %1803 = uitofp i32 %1802 to float
  %1804 = lshr i32 %1801, 8
  %1805 = and i32 %1804, 255
  %1806 = uitofp i32 %1805 to float
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1668, float %1669, float %1670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = fmul fast float %1806, %1807
  %1809 = fadd fast float %1808, %1803
  %1810 = fmul fast float %1809, 0x3F70101020000000
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  br i1 %1267, label %1812, label %1820

; <label>:1812                                    ; preds = %1795
  %1813 = fsub fast float 1.000000e+00, %1448
  %1814 = fmul fast float %1813, %1258
  %1815 = fmul fast float %1813, %1259
  %1816 = fmul fast float %1813, %1260
  %1817 = fmul fast float %1813, %1255
  %1818 = fmul fast float %1813, %1256
  %1819 = fmul fast float %1813, %1257
  br label %1820

; <label>:1820                                    ; preds = %1812, %1795
  %1821 = phi float [ %1817, %1812 ], [ %1255, %1795 ]
  %1822 = phi float [ %1818, %1812 ], [ %1256, %1795 ]
  %1823 = phi float [ %1819, %1812 ], [ %1257, %1795 ]
  %1824 = phi float [ %1814, %1812 ], [ %1258, %1795 ]
  %1825 = phi float [ %1815, %1812 ], [ %1259, %1795 ]
  %1826 = phi float [ %1816, %1812 ], [ %1260, %1795 ]
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 3
  %1830 = icmp eq i32 %1829, 3
  br i1 %1830, label %1909, label %1831

; <label>:1831                                    ; preds = %1820
  %1832 = and i32 %1828, 16
  %1833 = icmp ne i32 %1832, 0
  %1834 = select i1 %1833, float %1448, float 0.000000e+00
  %1835 = icmp eq i32 %1829, 0
  br i1 %1835, label %1836, label %1864

; <label>:1836                                    ; preds = %1831
  %1837 = and i32 %1828, 64
  %1838 = icmp ne i32 %1837, 0
  %1839 = select i1 %1838, float %1448, float 0.000000e+00
  %1840 = fsub fast float %1668, %1824
  %1841 = fsub fast float %1669, %1825
  %1842 = fsub fast float %1670, %1826
  %1843 = fmul fast float %1834, %1840
  %1844 = fmul fast float %1834, %1841
  %1845 = fmul fast float %1834, %1842
  %1846 = fadd fast float %1843, %1824
  %1847 = fadd fast float %1844, %1825
  %1848 = fadd fast float %1845, %1826
  %1849 = fsub fast float %1654, %1261
  %1850 = fmul fast float %1834, %1849
  %1851 = fadd fast float %1850, %1261
  %1852 = fsub fast float %1796, %1821
  %1853 = fsub fast float %1797, %1822
  %1854 = fsub fast float %1798, %1823
  %1855 = fmul fast float %1839, %1852
  %1856 = fmul fast float %1839, %1853
  %1857 = fmul fast float %1839, %1854
  %1858 = fadd fast float %1855, %1821
  %1859 = fadd fast float %1856, %1822
  %1860 = fadd fast float %1857, %1823
  %1861 = fsub fast float %1811, %1265
  %1862 = fmul fast float %1834, %1861
  %1863 = fadd fast float %1862, %1265
  br label %1909

; <label>:1864                                    ; preds = %1831
  %1865 = icmp eq i32 %1829, 1
  br i1 %1865, label %1866, label %1879

; <label>:1866                                    ; preds = %1864
  %1867 = fadd fast float %1668, -1.000000e+00
  %1868 = fadd fast float %1669, -1.000000e+00
  %1869 = fadd fast float %1670, -1.000000e+00
  %1870 = fmul fast float %1834, %1867
  %1871 = fmul fast float %1834, %1868
  %1872 = fmul fast float %1834, %1869
  %1873 = fadd fast float %1870, 1.000000e+00
  %1874 = fadd fast float %1871, 1.000000e+00
  %1875 = fadd fast float %1872, 1.000000e+00
  %1876 = fmul fast float %1873, %1824
  %1877 = fmul fast float %1874, %1825
  %1878 = fmul fast float %1875, %1826
  br label %1909

; <label>:1879                                    ; preds = %1864
  %1880 = icmp eq i32 %1829, 2
  br i1 %1880, label %1881, label %1909

; <label>:1881                                    ; preds = %1879
  %1882 = call float @dx.op.unary.f32(i32 24, float %1668)  ; Sqrt(value)
  %1883 = call float @dx.op.unary.f32(i32 24, float %1669)  ; Sqrt(value)
  %1884 = call float @dx.op.unary.f32(i32 24, float %1670)  ; Sqrt(value)
  %1885 = fadd fast float %1882, -5.000000e-01
  %1886 = fadd fast float %1883, -5.000000e-01
  %1887 = fadd fast float %1884, -5.000000e-01
  %1888 = fmul fast float %1885, %1834
  %1889 = fmul fast float %1886, %1834
  %1890 = fmul fast float %1887, %1834
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fadd fast float %1890, 5.000000e-01
  %1894 = fmul fast float %1891, 2.000000e+00
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1895, %1824
  %1897 = fadd fast float %1896, %1894
  %1898 = fmul fast float %1897, %1824
  %1899 = fmul fast float %1892, 2.000000e+00
  %1900 = fsub fast float 1.000000e+00, %1899
  %1901 = fmul fast float %1900, %1825
  %1902 = fadd fast float %1901, %1899
  %1903 = fmul fast float %1902, %1825
  %1904 = fmul fast float %1893, 2.000000e+00
  %1905 = fsub fast float 1.000000e+00, %1904
  %1906 = fmul fast float %1905, %1826
  %1907 = fadd fast float %1906, %1904
  %1908 = fmul fast float %1907, %1826
  br label %1909

; <label>:1909                                    ; preds = %1881, %1879, %1866, %1836, %1820
  %1910 = phi float [ %1821, %1820 ], [ %1821, %1881 ], [ %1821, %1879 ], [ %1821, %1866 ], [ %1858, %1836 ]
  %1911 = phi float [ %1822, %1820 ], [ %1822, %1881 ], [ %1822, %1879 ], [ %1822, %1866 ], [ %1859, %1836 ]
  %1912 = phi float [ %1823, %1820 ], [ %1823, %1881 ], [ %1823, %1879 ], [ %1823, %1866 ], [ %1860, %1836 ]
  %1913 = phi float [ %1824, %1820 ], [ %1898, %1881 ], [ %1824, %1879 ], [ %1876, %1866 ], [ %1846, %1836 ]
  %1914 = phi float [ %1825, %1820 ], [ %1903, %1881 ], [ %1825, %1879 ], [ %1877, %1866 ], [ %1847, %1836 ]
  %1915 = phi float [ %1826, %1820 ], [ %1908, %1881 ], [ %1826, %1879 ], [ %1878, %1866 ], [ %1848, %1836 ]
  %1916 = phi float [ %1261, %1820 ], [ %1261, %1881 ], [ %1261, %1879 ], [ %1261, %1866 ], [ %1851, %1836 ]
  %1917 = phi float [ %1265, %1820 ], [ %1265, %1881 ], [ %1265, %1879 ], [ %1265, %1866 ], [ %1863, %1836 ]
  %1918 = and i32 %1828, 12
  %1919 = icmp eq i32 %1918, 12
  br i1 %1919, label %1992, label %1920

; <label>:1920                                    ; preds = %1909
  %1921 = and i32 %1828, 2097184
  %1922 = icmp eq i32 %1921, 2097184
  %1923 = select i1 %1922, float %1448, float 0.000000e+00
  %1924 = and i32 %1828, 4194336
  %1925 = icmp eq i32 %1924, 4194336
  %1926 = select i1 %1925, float %1448, float 0.000000e+00
  %1927 = and i32 %1828, 8388640
  %1928 = icmp eq i32 %1927, 8388640
  %1929 = select i1 %1928, float %1448, float 0.000000e+00
  %1930 = icmp eq i32 %1918, 0
  br i1 %1930, label %1931, label %1944

; <label>:1931                                    ; preds = %1920
  %1932 = fsub fast float %1749, %1253
  %1933 = fsub fast float %1750, %1254
  %1934 = fmul fast float %1923, %1932
  %1935 = fmul fast float %1923, %1933
  %1936 = fadd fast float %1934, %1253
  %1937 = fadd fast float %1935, %1254
  %1938 = fsub fast float %1751, %1264
  %1939 = fmul fast float %1926, %1938
  %1940 = fadd fast float %1939, %1264
  %1941 = fsub fast float %1748, %1263
  %1942 = fmul fast float %1929, %1941
  %1943 = fadd fast float %1942, %1263
  br label %1992

; <label>:1944                                    ; preds = %1920
  %1945 = icmp eq i32 %1918, 4
  br i1 %1945, label %1946, label %1978

; <label>:1946                                    ; preds = %1944
  %1947 = fmul fast float %1923, %1749
  %1948 = fmul fast float %1923, %1750
  %1949 = fadd fast float %1947, %1253
  %1950 = fadd fast float %1948, %1254
  %1951 = call float @dx.op.binary.f32(i32 36, float %1264, float %1751)  ; FMin(a,b)
  %1952 = fsub fast float %1951, %1264
  %1953 = fmul fast float %1952, %1926
  %1954 = fadd fast float %1953, %1264
  %1955 = fadd fast float %1748, %1263
  %1956 = fmul fast float %1955, 0x3FF337FAE0000000
  %1957 = fmul fast float %1263, %1263
  %1958 = fmul fast float %1748, %1748
  %1959 = fadd fast float %1958, %1957
  %1960 = fmul fast float %1959, 0x3FE5152B00000000
  %1961 = fmul fast float %1263, 0xBFCC1F85E0000000
  %1962 = fmul fast float %1961, %1748
  %1963 = fadd fast float %1962, 0xBFE1363700000000
  %1964 = fadd fast float %1963, %1956
  %1965 = fsub fast float %1964, %1960
  %1966 = fmul fast float %1955, 0x3FBA6F0D00000000
  %1967 = fmul fast float %1959, 0x3FD0432880000000
  %1968 = fmul fast float %1263, 0xBFEF110800000000
  %1969 = fmul fast float %1968, %1748
  %1970 = fadd fast float %1969, 1.000000e+00
  %1971 = fsub fast float %1970, %1966
  %1972 = fadd fast float %1971, %1967
  %1973 = fdiv fast float %1965, %1972
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fsub fast float %1974, %1263
  %1976 = fmul fast float %1975, %1929
  %1977 = fadd fast float %1976, %1263
  br label %1992

; <label>:1978                                    ; preds = %1944
  %1979 = icmp eq i32 %1918, 8
  br i1 %1979, label %1980, label %1992

; <label>:1980                                    ; preds = %1978
  %1981 = fmul fast float %1923, %1749
  %1982 = fmul fast float %1923, %1750
  %1983 = fadd fast float %1981, %1253
  %1984 = fadd fast float %1982, %1254
  %1985 = call float @dx.op.binary.f32(i32 36, float %1264, float %1751)  ; FMin(a,b)
  %1986 = fsub fast float %1985, %1264
  %1987 = fmul fast float %1986, %1926
  %1988 = fadd fast float %1987, %1264
  %1989 = fsub fast float %1748, %1263
  %1990 = fmul fast float %1929, %1989
  %1991 = fadd fast float %1990, %1263
  br label %1992

; <label>:1992                                    ; preds = %1980, %1978, %1946, %1931, %1909, %1447, %1266, %1252
  %1993 = phi float [ %1253, %1909 ], [ %1253, %1447 ], [ %1253, %1252 ], [ %1983, %1980 ], [ %1253, %1978 ], [ %1949, %1946 ], [ %1936, %1931 ], [ %1253, %1266 ]
  %1994 = phi float [ %1254, %1909 ], [ %1254, %1447 ], [ %1254, %1252 ], [ %1984, %1980 ], [ %1254, %1978 ], [ %1950, %1946 ], [ %1937, %1931 ], [ %1254, %1266 ]
  %1995 = phi float [ %1910, %1909 ], [ %1255, %1447 ], [ %1255, %1252 ], [ %1910, %1980 ], [ %1910, %1978 ], [ %1910, %1946 ], [ %1910, %1931 ], [ %1255, %1266 ]
  %1996 = phi float [ %1911, %1909 ], [ %1256, %1447 ], [ %1256, %1252 ], [ %1911, %1980 ], [ %1911, %1978 ], [ %1911, %1946 ], [ %1911, %1931 ], [ %1256, %1266 ]
  %1997 = phi float [ %1912, %1909 ], [ %1257, %1447 ], [ %1257, %1252 ], [ %1912, %1980 ], [ %1912, %1978 ], [ %1912, %1946 ], [ %1912, %1931 ], [ %1257, %1266 ]
  %1998 = phi float [ %1913, %1909 ], [ %1258, %1447 ], [ %1258, %1252 ], [ %1913, %1980 ], [ %1913, %1978 ], [ %1913, %1946 ], [ %1913, %1931 ], [ %1258, %1266 ]
  %1999 = phi float [ %1914, %1909 ], [ %1259, %1447 ], [ %1259, %1252 ], [ %1914, %1980 ], [ %1914, %1978 ], [ %1914, %1946 ], [ %1914, %1931 ], [ %1259, %1266 ]
  %2000 = phi float [ %1915, %1909 ], [ %1260, %1447 ], [ %1260, %1252 ], [ %1915, %1980 ], [ %1915, %1978 ], [ %1915, %1946 ], [ %1915, %1931 ], [ %1260, %1266 ]
  %2001 = phi float [ %1916, %1909 ], [ %1261, %1447 ], [ %1261, %1252 ], [ %1916, %1980 ], [ %1916, %1978 ], [ %1916, %1946 ], [ %1916, %1931 ], [ %1261, %1266 ]
  %2002 = phi float [ %1263, %1909 ], [ %1263, %1447 ], [ %1263, %1252 ], [ %1991, %1980 ], [ %1263, %1978 ], [ %1977, %1946 ], [ %1943, %1931 ], [ %1263, %1266 ]
  %2003 = phi float [ %1264, %1909 ], [ %1264, %1447 ], [ %1264, %1252 ], [ %1988, %1980 ], [ %1264, %1978 ], [ %1954, %1946 ], [ %1940, %1931 ], [ %1264, %1266 ]
  %2004 = phi float [ %1917, %1909 ], [ %1265, %1447 ], [ %1265, %1252 ], [ %1917, %1980 ], [ %1917, %1978 ], [ %1917, %1946 ], [ %1917, %1931 ], [ %1265, %1266 ]
  br i1 %653, label %2731, label %2005

; <label>:2005                                    ; preds = %1992
  %2006 = icmp ult i32 %709, 3
  %2007 = add i32 %58, 56
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %58, 60
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = or i32 %2012, %2009
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2731, label %2015

; <label>:2015                                    ; preds = %2005
  %2016 = and i32 %2009, 262144
  %2017 = icmp ne i32 %2016, 0
  %2018 = select i1 %2017, float %66, float 1.000000e+00
  %2019 = select i1 %2017, float %67, float 0.000000e+00
  %2020 = select i1 %2017, float %68, float 0.000000e+00
  %2021 = select i1 %2017, float %69, float 1.000000e+00
  %2022 = select i1 %2017, float %70, float %98
  %2023 = select i1 %2017, float %71, float %99
  %2024 = add i32 %58, 316
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 16
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = fmul fast float %2028, 0x3F50624DE0000000
  %2030 = add i32 %58, 120
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = lshr i32 %2032, 16
  %2034 = and i32 %2033, 255
  %2035 = lshr i32 %2032, 24
  %2036 = add i32 %58, 324
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 65535
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = lshr i32 %2038, 16
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = add i32 %58, 64
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = lshr i32 %2045, 22
  %2047 = shl nuw nsw i32 %2046, 5
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = shl i32 %2045, 4
  %2050 = and i32 %2049, 32752
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = lshr i32 %2045, 7
  %2053 = and i32 %2052, 32752
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2057 = fmul fast float %2056, 1.000000e+03
  %2058 = fmul fast float %2057, %537
  %2059 = call float @dx.op.unary.f32(i32 22, float %2058)  ; Frc(value)
  %2060 = fadd fast float %2059, %525
  %2061 = fmul fast float %2057, %539
  %2062 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2063 = fadd fast float %2062, %526
  %2064 = fmul fast float %2029, %2057
  %2065 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2066 = fmul fast float %2065, 0x401921FB60000000
  %2067 = fadd fast float %2066, %2048
  %2068 = call float @dx.op.unary.f32(i32 13, float %2067)  ; Sin(value)
  %2069 = call float @dx.op.unary.f32(i32 12, float %2067)  ; Cos(value)
  %2070 = fsub fast float -0.000000e+00, %2068
  %2071 = fadd fast float %2022, -5.000000e-01
  %2072 = fadd fast float %2023, -5.000000e-01
  %2073 = fmul fast float %2040, %2071
  %2074 = fmul fast float %2042, %2072
  %2075 = fadd fast float %2073, 5.000000e-01
  %2076 = fadd fast float %2074, 5.000000e-01
  %2077 = fmul fast float %2051, %2075
  %2078 = fmul fast float %2054, %2076
  %2079 = fmul fast float %2069, %2077
  %2080 = call float @dx.op.tertiary.f32(i32 46, float %2070, float %2078, float %2079)  ; FMad(a,b,c)
  %2081 = fmul fast float %2068, %2077
  %2082 = call float @dx.op.tertiary.f32(i32 46, float %2069, float %2078, float %2081)  ; FMad(a,b,c)
  %2083 = fadd fast float %2060, %2080
  %2084 = fadd fast float %2063, %2082
  %2085 = icmp ugt i32 %2034, 1
  %2086 = icmp ugt i32 %2032, 33554431
  %2087 = or i1 %2086, %2085
  br i1 %2087, label %2088, label %2113

; <label>:2088                                    ; preds = %2015
  %2089 = add i32 %58, 260
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = lshr i32 %2091, 16
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = fmul fast float %2056, %2093
  %2095 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2096 = mul nuw nsw i32 %2034, %2035
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2095, %2097
  %2099 = call float @dx.op.unary.f32(i32 27, float %2098)  ; Round_ni(value)
  %2100 = fptoui float %2099 to i32
  %2101 = urem i32 %2100, %2034
  %2102 = udiv i32 %2100, %2035
  %2103 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2104 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2105 = uitofp i32 %2101 to float
  %2106 = uitofp i32 %2102 to float
  %2107 = fadd fast float %2103, %2105
  %2108 = fadd fast float %2104, %2106
  %2109 = uitofp i32 %2034 to float
  %2110 = uitofp i32 %2035 to float
  %2111 = fdiv fast float %2107, %2109
  %2112 = fdiv fast float %2108, %2110
  br label %2113

; <label>:2113                                    ; preds = %2088, %2015
  %2114 = phi float [ %2111, %2088 ], [ %2083, %2015 ]
  %2115 = phi float [ %2112, %2088 ], [ %2084, %2015 ]
  %2116 = and i32 %2009, 256
  %2117 = icmp eq i32 %2116, 0
  br i1 %2117, label %2164, label %2118

; <label>:2118                                    ; preds = %2113
  %2119 = add i32 %58, 480
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = add i32 %2121, 0
  %2123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2123, %dx.types.Handle %113, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = add i32 %58, 132
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = shl i32 %2128, 4
  %2130 = and i32 %2129, 32752
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = lshr i32 %2128, 7
  %2133 = and i32 %2132, 32752
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = fsub fast float 1.000000e+00, %705
  %2136 = call float @dx.op.binary.f32(i32 35, float %2135, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2137 = bitcast float %705 to i32
  %2138 = sitofp i32 %2137 to float
  %2139 = fadd fast float %2138, 0xC1CFBF8940000000
  %2140 = fmul fast float %2134, %2139
  %2141 = fadd fast float %2140, 0x41CFBF8940000000
  %2142 = fptosi float %2141 to i32
  %2143 = bitcast i32 %2142 to float
  %2144 = bitcast float %2136 to i32
  %2145 = sitofp i32 %2144 to float
  %2146 = fadd fast float %2145, 0xC1CFBF8940000000
  %2147 = fmul fast float %2146, %2134
  %2148 = fadd fast float %2147, 0x41CFBF8940000000
  %2149 = fptosi float %2148 to i32
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2143, %2131
  %2152 = fmul fast float %2150, %2131
  %2153 = fsub fast float %2136, %2151
  %2154 = fadd fast float %2152, %2136
  %2155 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2157 = fsub fast float %2125, %2155
  %2158 = fsub fast float %2156, %2155
  %2159 = bitcast float %2158 to i32
  %2160 = sub nsw i32 2129859010, %2159
  %2161 = bitcast i32 %2160 to float
  %2162 = fmul fast float %2161, %2157
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  br label %2164

; <label>:2164                                    ; preds = %2118, %2113
  %2165 = phi float [ %2163, %2118 ], [ %705, %2113 ]
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 128
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2186, label %2170

; <label>:2170                                    ; preds = %2164
  %2171 = add i32 %58, 464
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2175, %dx.types.Handle %113, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 524288
  %2181 = icmp ne i32 %2180, 0
  %2182 = fcmp fast ogt float %2177, 0x3FE0101020000000
  %2183 = select i1 %2182, float 1.000000e+00, float 0.000000e+00
  %2184 = select i1 %2181, float %2183, float %2177
  %2185 = fmul fast float %2184, %2165
  br label %2186

; <label>:2186                                    ; preds = %2170, %2164
  %2187 = phi float [ %2185, %2170 ], [ %2165, %2164 ]
  %2188 = fcmp fast ult float %2187, 0x3F70101020000000
  br i1 %2188, label %2731, label %2189

; <label>:2189                                    ; preds = %2186
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 16
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2392, label %2194

; <label>:2194                                    ; preds = %2189
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = add i32 %58, 416
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = add i32 %2199, 0
  %2201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2201, %dx.types.Handle %112, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  %2204 = extractvalue %dx.types.ResRet.f32 %2202, 1
  %2205 = extractvalue %dx.types.ResRet.f32 %2202, 2
  %2206 = extractvalue %dx.types.ResRet.f32 %2202, 3
  %2207 = and i32 %2196, 255
  %2208 = uitofp i32 %2207 to float
  %2209 = lshr i32 %2196, 8
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2206, %2208
  %2213 = fadd fast float %2212, %2211
  %2214 = fmul fast float %2213, 0x3F70101000000000
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 512
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2227, label %2219

; <label>:2219                                    ; preds = %2194
  %2220 = add i32 %58, 500
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = add i32 %2222, 0
  %2224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2224, %dx.types.Handle %113, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  br label %2227

; <label>:2227                                    ; preds = %2219, %2194
  %2228 = phi float [ %2226, %2219 ], [ 1.000000e+00, %2194 ]
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = and i32 %2230, 33554432
  %2232 = icmp eq i32 %2231, 0
  br i1 %2232, label %2339, label %2233

; <label>:2233                                    ; preds = %2227
  %2234 = add i32 %58, 256
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 65535
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = lshr i32 %2236, 16
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = add i32 %58, 260
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 65535
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = lshr i32 %2247, 24
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = and i32 %2247, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2247, 8
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = lshr i32 %2247, 16
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = add i32 %58, 252
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = lshr i32 %2264, 24
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = and i32 %2264, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2264, 8
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = lshr i32 %2264, 16
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = fmul fast float %2277, 0x3F70101020000000
  %2279 = bitcast float %2203 to i32
  %2280 = ashr i32 %2279, 1
  %2281 = sub nsw i32 1597463174, %2280
  %2282 = bitcast i32 %2281 to float
  %2283 = fmul fast float %2203, 5.000000e-01
  %2284 = fmul fast float %2282, %2282
  %2285 = fmul fast float %2284, %2283
  %2286 = fsub fast float 1.500000e+00, %2285
  %2287 = fmul fast float %2282, %2203
  %2288 = fmul fast float %2287, %2286
  %2289 = bitcast float %2204 to i32
  %2290 = ashr i32 %2289, 1
  %2291 = sub nsw i32 1597463174, %2290
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2204, 5.000000e-01
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, %2293
  %2296 = fsub fast float 1.500000e+00, %2295
  %2297 = fmul fast float %2292, %2204
  %2298 = fmul fast float %2297, %2296
  %2299 = bitcast float %2205 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2205, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2205
  %2308 = fmul fast float %2307, %2306
  %2309 = fsub fast float %2288, %2270
  %2310 = fsub fast float %2298, %2274
  %2311 = fsub fast float %2308, %2278
  %2312 = fmul fast float %2309, %2238
  %2313 = fmul fast float %2310, %2240
  %2314 = fmul fast float %2311, %2245
  %2315 = fadd fast float %2312, %2253
  %2316 = fadd fast float %2313, %2257
  %2317 = fadd fast float %2314, %2261
  %2318 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2319 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2320 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  %2321 = fmul fast float %2318, %2318
  %2322 = fmul fast float %2319, %2319
  %2323 = fmul fast float %2320, %2320
  %2324 = fsub fast float %2321, %2203
  %2325 = fsub fast float %2322, %2204
  %2326 = fsub fast float %2323, %2205
  %2327 = fmul fast float %2324, %2228
  %2328 = fmul fast float %2325, %2228
  %2329 = fmul fast float %2326, %2228
  %2330 = fadd fast float %2327, %2203
  %2331 = fadd fast float %2328, %2204
  %2332 = fadd fast float %2329, %2205
  %2333 = fadd fast float %2250, %2214
  %2334 = fsub fast float %2333, %2267
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = fsub fast float %2335, %2214
  %2337 = fmul fast float %2336, %2228
  %2338 = fadd fast float %2337, %2214
  br label %2392

; <label>:2339                                    ; preds = %2227
  %2340 = and i32 %2230, 134217728
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2376, label %2342

; <label>:2342                                    ; preds = %2339
  %2343 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2344 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %2346 = fadd fast float %2343, -5.000000e-01
  %2347 = fadd fast float %2344, -5.000000e-01
  %2348 = fadd fast float %2345, -5.000000e-01
  %2349 = fmul fast float %2346, %2228
  %2350 = fmul fast float %2347, %2228
  %2351 = fmul fast float %2348, %2228
  %2352 = fadd fast float %2349, 5.000000e-01
  %2353 = fadd fast float %2350, 5.000000e-01
  %2354 = fadd fast float %2351, 5.000000e-01
  %2355 = call float @dx.op.unary.f32(i32 24, float %2203)  ; Sqrt(value)
  %2356 = call float @dx.op.unary.f32(i32 24, float %2204)  ; Sqrt(value)
  %2357 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2358 = fmul fast float %2352, 2.000000e+00
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, %2355
  %2361 = fadd fast float %2360, %2358
  %2362 = fmul fast float %2361, %2355
  %2363 = fmul fast float %2353, 2.000000e+00
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = fmul fast float %2364, %2356
  %2366 = fadd fast float %2365, %2363
  %2367 = fmul fast float %2366, %2356
  %2368 = fmul fast float %2354, 2.000000e+00
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = fmul fast float %2369, %2357
  %2371 = fadd fast float %2370, %2368
  %2372 = fmul fast float %2371, %2357
  %2373 = fmul fast float %2362, %2362
  %2374 = fmul fast float %2367, %2367
  %2375 = fmul fast float %2372, %2372
  br label %2392

; <label>:2376                                    ; preds = %2339
  %2377 = fmul fast float %513, %513
  %2378 = fmul fast float %514, %514
  %2379 = fmul fast float %515, %515
  %2380 = fadd fast float %2377, -1.000000e+00
  %2381 = fadd fast float %2378, -1.000000e+00
  %2382 = fadd fast float %2379, -1.000000e+00
  %2383 = fmul fast float %2228, %2380
  %2384 = fmul fast float %2228, %2381
  %2385 = fmul fast float %2228, %2382
  %2386 = fadd fast float %2383, 1.000000e+00
  %2387 = fadd fast float %2384, 1.000000e+00
  %2388 = fadd fast float %2385, 1.000000e+00
  %2389 = fmul fast float %2386, %2203
  %2390 = fmul fast float %2387, %2204
  %2391 = fmul fast float %2388, %2205
  br label %2392

; <label>:2392                                    ; preds = %2376, %2342, %2233, %2189
  %2393 = phi float [ %2338, %2233 ], [ %2214, %2342 ], [ %2214, %2376 ], [ 0x3FA23C0BE0000000, %2189 ]
  %2394 = phi float [ %2330, %2233 ], [ %2373, %2342 ], [ %2389, %2376 ], [ 1.000000e+00, %2189 ]
  %2395 = phi float [ %2331, %2233 ], [ %2374, %2342 ], [ %2390, %2376 ], [ 1.000000e+00, %2189 ]
  %2396 = phi float [ %2332, %2233 ], [ %2375, %2342 ], [ %2391, %2376 ], [ 1.000000e+00, %2189 ]
  %2397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.i32 %2397, 1
  %2399 = and i32 %2398, 1
  %2400 = icmp ne i32 %2399, 0
  %2401 = add i32 %58, 356
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 32
  %2405 = icmp ne i32 %2404, 0
  %2406 = and i1 %2400, %2405
  %2407 = select i1 %2406, float 1.000000e+00, float %2394
  %2408 = select i1 %2406, float 0x3FD3333340000000, float %2395
  %2409 = select i1 %2406, float 0x3FD3333340000000, float %2396
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 32
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2486, label %2414

; <label>:2414                                    ; preds = %2392
  %2415 = add i32 %58, 124
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %58, 432
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = add i32 %2420, 0
  %2422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2422, %dx.types.Handle %112, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2424 = extractvalue %dx.types.ResRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.ResRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.ResRet.f32 %2423, 2
  %2427 = extractvalue %dx.types.ResRet.f32 %2423, 3
  %2428 = and i32 %2417, 255
  %2429 = uitofp i32 %2428 to float
  %2430 = lshr i32 %2417, 8
  %2431 = and i32 %2430, 255
  %2432 = uitofp i32 %2431 to float
  %2433 = lshr i32 %2417, 16
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2435, 0x3F70101000000000
  %2437 = fmul fast float %2424, %2429
  %2438 = fadd fast float %2437, %2432
  %2439 = fmul fast float %2438, 0x3F70101000000000
  %2440 = fadd fast float %2425, -5.000000e-01
  %2441 = fadd fast float %2427, -5.000000e-01
  %2442 = fmul fast float %2440, %2436
  %2443 = fmul fast float %2441, %2436
  %2444 = fadd fast float %2442, 5.000000e-01
  %2445 = fadd fast float %2443, 5.000000e-01
  %2446 = fmul fast float %2444, 2.000000e+00
  %2447 = fadd fast float %2446, -1.000000e+00
  %2448 = fmul fast float %2445, 2.000000e+00
  %2449 = fadd fast float %2448, -1.000000e+00
  %2450 = fadd fast float %2447, %2449
  %2451 = fmul fast float %2450, 5.000000e-01
  %2452 = fsub fast float %2447, %2449
  %2453 = fmul fast float %2452, 5.000000e-01
  %2454 = call float @dx.op.unary.f32(i32 6, float %2451)  ; FAbs(value)
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = call float @dx.op.unary.f32(i32 6, float %2453)  ; FAbs(value)
  %2457 = fsub fast float %2455, %2456
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2451, float %2453, float %2457, float %2451, float %2453, float %2457)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = call float @dx.op.unary.f32(i32 25, float %2458)  ; Rsqrt(value)
  %2460 = fmul fast float %2451, %2459
  %2461 = fmul fast float %2453, %2459
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 67108864
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %2482, label %2466

; <label>:2466                                    ; preds = %2414
  %2467 = add i32 %58, 312
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 65535
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = lshr i32 %2469, 16
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = fsub fast float %2439, %2477
  %2479 = fmul fast float %2478, %2471
  %2480 = fadd fast float %2479, %2475
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  br label %2482

; <label>:2482                                    ; preds = %2466, %2414
  %2483 = phi float [ %2481, %2466 ], [ %2439, %2414 ]
  %2484 = call float @dx.op.dot2.f32(i32 54, float %2460, float %2461, float %2018, float %2019)  ; Dot2(ax,ay,bx,by)
  %2485 = call float @dx.op.dot2.f32(i32 54, float %2460, float %2461, float %2020, float %2021)  ; Dot2(ax,ay,bx,by)
  br label %2486

; <label>:2486                                    ; preds = %2482, %2392
  %2487 = phi float [ %2483, %2482 ], [ 0x3FD6666660000000, %2392 ]
  %2488 = phi float [ %2484, %2482 ], [ 0.000000e+00, %2392 ]
  %2489 = phi float [ %2485, %2482 ], [ 0.000000e+00, %2392 ]
  %2490 = phi float [ %2426, %2482 ], [ 1.000000e+00, %2392 ]
  %2491 = add i32 %58, 192
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = lshr i32 %2493, 22
  %2495 = shl nuw nsw i32 %2494, 5
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 64
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2534, label %2501

; <label>:2501                                    ; preds = %2486
  %2502 = add i32 %58, 448
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %2504, 0
  %2506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 131072
  %2510 = icmp eq i32 %2509, 0
  %2511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2506, %dx.types.Handle %112, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.ResRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.ResRet.f32 %2511, 2
  %2515 = fmul fast float %496, %2512
  %2516 = fmul fast float %497, %2513
  %2517 = fmul fast float %498, %2514
  br i1 %2510, label %2524, label %2518

; <label>:2518                                    ; preds = %2501
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = fmul fast float %2520, %2515
  %2522 = fmul fast float %2520, %2516
  %2523 = fmul fast float %2520, %2517
  br label %2524

; <label>:2524                                    ; preds = %2518, %2501
  %2525 = phi float [ %2521, %2518 ], [ %2515, %2501 ]
  %2526 = phi float [ %2522, %2518 ], [ %2516, %2501 ]
  %2527 = phi float [ %2523, %2518 ], [ %2517, %2501 ]
  %2528 = fmul fast float %2525, %2496
  %2529 = select i1 %271, float %2528, float %2525
  %2530 = call float @dx.op.dot3.f32(i32 55, float %2529, float %2526, float %2527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2531 = select i1 %271, float 0.000000e+00, float %2525
  %2532 = select i1 %271, float %2530, float %2526
  %2533 = select i1 %271, float 0.000000e+00, float %2527
  br label %2534

; <label>:2534                                    ; preds = %2524, %2486
  %2535 = phi float [ %2531, %2524 ], [ 0.000000e+00, %2486 ]
  %2536 = phi float [ %2532, %2524 ], [ 0.000000e+00, %2486 ]
  %2537 = phi float [ %2533, %2524 ], [ 0.000000e+00, %2486 ]
  %2538 = add i32 %58, 128
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 255
  %2542 = uitofp i32 %2541 to float
  %2543 = lshr i32 %2540, 8
  %2544 = and i32 %2543, 255
  %2545 = uitofp i32 %2544 to float
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2407, float %2408, float %2409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = fmul fast float %2545, %2546
  %2548 = fadd fast float %2547, %2542
  %2549 = fmul fast float %2548, 0x3F70101020000000
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  br i1 %2006, label %2551, label %2559

; <label>:2551                                    ; preds = %2534
  %2552 = fsub fast float 1.000000e+00, %2187
  %2553 = fmul fast float %2552, %1998
  %2554 = fmul fast float %2552, %1999
  %2555 = fmul fast float %2552, %2000
  %2556 = fmul fast float %2552, %1995
  %2557 = fmul fast float %2552, %1996
  %2558 = fmul fast float %2552, %1997
  br label %2559

; <label>:2559                                    ; preds = %2551, %2534
  %2560 = phi float [ %2556, %2551 ], [ %1995, %2534 ]
  %2561 = phi float [ %2557, %2551 ], [ %1996, %2534 ]
  %2562 = phi float [ %2558, %2551 ], [ %1997, %2534 ]
  %2563 = phi float [ %2553, %2551 ], [ %1998, %2534 ]
  %2564 = phi float [ %2554, %2551 ], [ %1999, %2534 ]
  %2565 = phi float [ %2555, %2551 ], [ %2000, %2534 ]
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 3
  %2569 = icmp eq i32 %2568, 3
  br i1 %2569, label %2648, label %2570

; <label>:2570                                    ; preds = %2559
  %2571 = and i32 %2567, 16
  %2572 = icmp ne i32 %2571, 0
  %2573 = select i1 %2572, float %2187, float 0.000000e+00
  %2574 = icmp eq i32 %2568, 0
  br i1 %2574, label %2575, label %2603

; <label>:2575                                    ; preds = %2570
  %2576 = and i32 %2567, 64
  %2577 = icmp ne i32 %2576, 0
  %2578 = select i1 %2577, float %2187, float 0.000000e+00
  %2579 = fsub fast float %2407, %2563
  %2580 = fsub fast float %2408, %2564
  %2581 = fsub fast float %2409, %2565
  %2582 = fmul fast float %2573, %2579
  %2583 = fmul fast float %2573, %2580
  %2584 = fmul fast float %2573, %2581
  %2585 = fadd fast float %2582, %2563
  %2586 = fadd fast float %2583, %2564
  %2587 = fadd fast float %2584, %2565
  %2588 = fsub fast float %2393, %2001
  %2589 = fmul fast float %2573, %2588
  %2590 = fadd fast float %2589, %2001
  %2591 = fsub fast float %2535, %2560
  %2592 = fsub fast float %2536, %2561
  %2593 = fsub fast float %2537, %2562
  %2594 = fmul fast float %2578, %2591
  %2595 = fmul fast float %2578, %2592
  %2596 = fmul fast float %2578, %2593
  %2597 = fadd fast float %2594, %2560
  %2598 = fadd fast float %2595, %2561
  %2599 = fadd fast float %2596, %2562
  %2600 = fsub fast float %2550, %2004
  %2601 = fmul fast float %2573, %2600
  %2602 = fadd fast float %2601, %2004
  br label %2648

; <label>:2603                                    ; preds = %2570
  %2604 = icmp eq i32 %2568, 1
  br i1 %2604, label %2605, label %2618

; <label>:2605                                    ; preds = %2603
  %2606 = fadd fast float %2407, -1.000000e+00
  %2607 = fadd fast float %2408, -1.000000e+00
  %2608 = fadd fast float %2409, -1.000000e+00
  %2609 = fmul fast float %2573, %2606
  %2610 = fmul fast float %2573, %2607
  %2611 = fmul fast float %2573, %2608
  %2612 = fadd fast float %2609, 1.000000e+00
  %2613 = fadd fast float %2610, 1.000000e+00
  %2614 = fadd fast float %2611, 1.000000e+00
  %2615 = fmul fast float %2612, %2563
  %2616 = fmul fast float %2613, %2564
  %2617 = fmul fast float %2614, %2565
  br label %2648

; <label>:2618                                    ; preds = %2603
  %2619 = icmp eq i32 %2568, 2
  br i1 %2619, label %2620, label %2648

; <label>:2620                                    ; preds = %2618
  %2621 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2622 = call float @dx.op.unary.f32(i32 24, float %2408)  ; Sqrt(value)
  %2623 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %2624 = fadd fast float %2621, -5.000000e-01
  %2625 = fadd fast float %2622, -5.000000e-01
  %2626 = fadd fast float %2623, -5.000000e-01
  %2627 = fmul fast float %2624, %2573
  %2628 = fmul fast float %2625, %2573
  %2629 = fmul fast float %2626, %2573
  %2630 = fadd fast float %2627, 5.000000e-01
  %2631 = fadd fast float %2628, 5.000000e-01
  %2632 = fadd fast float %2629, 5.000000e-01
  %2633 = fmul fast float %2630, 2.000000e+00
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = fmul fast float %2634, %2563
  %2636 = fadd fast float %2635, %2633
  %2637 = fmul fast float %2636, %2563
  %2638 = fmul fast float %2631, 2.000000e+00
  %2639 = fsub fast float 1.000000e+00, %2638
  %2640 = fmul fast float %2639, %2564
  %2641 = fadd fast float %2640, %2638
  %2642 = fmul fast float %2641, %2564
  %2643 = fmul fast float %2632, 2.000000e+00
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = fmul fast float %2644, %2565
  %2646 = fadd fast float %2645, %2643
  %2647 = fmul fast float %2646, %2565
  br label %2648

; <label>:2648                                    ; preds = %2620, %2618, %2605, %2575, %2559
  %2649 = phi float [ %2560, %2559 ], [ %2560, %2620 ], [ %2560, %2618 ], [ %2560, %2605 ], [ %2597, %2575 ]
  %2650 = phi float [ %2561, %2559 ], [ %2561, %2620 ], [ %2561, %2618 ], [ %2561, %2605 ], [ %2598, %2575 ]
  %2651 = phi float [ %2562, %2559 ], [ %2562, %2620 ], [ %2562, %2618 ], [ %2562, %2605 ], [ %2599, %2575 ]
  %2652 = phi float [ %2563, %2559 ], [ %2637, %2620 ], [ %2563, %2618 ], [ %2615, %2605 ], [ %2585, %2575 ]
  %2653 = phi float [ %2564, %2559 ], [ %2642, %2620 ], [ %2564, %2618 ], [ %2616, %2605 ], [ %2586, %2575 ]
  %2654 = phi float [ %2565, %2559 ], [ %2647, %2620 ], [ %2565, %2618 ], [ %2617, %2605 ], [ %2587, %2575 ]
  %2655 = phi float [ %2001, %2559 ], [ %2001, %2620 ], [ %2001, %2618 ], [ %2001, %2605 ], [ %2590, %2575 ]
  %2656 = phi float [ %2004, %2559 ], [ %2004, %2620 ], [ %2004, %2618 ], [ %2004, %2605 ], [ %2602, %2575 ]
  %2657 = and i32 %2567, 12
  %2658 = icmp eq i32 %2657, 12
  br i1 %2658, label %2731, label %2659

; <label>:2659                                    ; preds = %2648
  %2660 = and i32 %2567, 2097184
  %2661 = icmp eq i32 %2660, 2097184
  %2662 = select i1 %2661, float %2187, float 0.000000e+00
  %2663 = and i32 %2567, 4194336
  %2664 = icmp eq i32 %2663, 4194336
  %2665 = select i1 %2664, float %2187, float 0.000000e+00
  %2666 = and i32 %2567, 8388640
  %2667 = icmp eq i32 %2666, 8388640
  %2668 = select i1 %2667, float %2187, float 0.000000e+00
  %2669 = icmp eq i32 %2657, 0
  br i1 %2669, label %2670, label %2683

; <label>:2670                                    ; preds = %2659
  %2671 = fsub fast float %2488, %1993
  %2672 = fsub fast float %2489, %1994
  %2673 = fmul fast float %2662, %2671
  %2674 = fmul fast float %2662, %2672
  %2675 = fadd fast float %2673, %1993
  %2676 = fadd fast float %2674, %1994
  %2677 = fsub fast float %2490, %2003
  %2678 = fmul fast float %2665, %2677
  %2679 = fadd fast float %2678, %2003
  %2680 = fsub fast float %2487, %2002
  %2681 = fmul fast float %2668, %2680
  %2682 = fadd fast float %2681, %2002
  br label %2731

; <label>:2683                                    ; preds = %2659
  %2684 = icmp eq i32 %2657, 4
  br i1 %2684, label %2685, label %2717

; <label>:2685                                    ; preds = %2683
  %2686 = fmul fast float %2662, %2488
  %2687 = fmul fast float %2662, %2489
  %2688 = fadd fast float %2686, %1993
  %2689 = fadd fast float %2687, %1994
  %2690 = call float @dx.op.binary.f32(i32 36, float %2003, float %2490)  ; FMin(a,b)
  %2691 = fsub fast float %2690, %2003
  %2692 = fmul fast float %2691, %2665
  %2693 = fadd fast float %2692, %2003
  %2694 = fadd fast float %2487, %2002
  %2695 = fmul fast float %2694, 0x3FF337FAE0000000
  %2696 = fmul fast float %2002, %2002
  %2697 = fmul fast float %2487, %2487
  %2698 = fadd fast float %2697, %2696
  %2699 = fmul fast float %2698, 0x3FE5152B00000000
  %2700 = fmul fast float %2002, 0xBFCC1F85E0000000
  %2701 = fmul fast float %2700, %2487
  %2702 = fadd fast float %2701, 0xBFE1363700000000
  %2703 = fadd fast float %2702, %2695
  %2704 = fsub fast float %2703, %2699
  %2705 = fmul fast float %2694, 0x3FBA6F0D00000000
  %2706 = fmul fast float %2698, 0x3FD0432880000000
  %2707 = fmul fast float %2002, 0xBFEF110800000000
  %2708 = fmul fast float %2707, %2487
  %2709 = fadd fast float %2708, 1.000000e+00
  %2710 = fsub fast float %2709, %2705
  %2711 = fadd fast float %2710, %2706
  %2712 = fdiv fast float %2704, %2711
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = fsub fast float %2713, %2002
  %2715 = fmul fast float %2714, %2668
  %2716 = fadd fast float %2715, %2002
  br label %2731

; <label>:2717                                    ; preds = %2683
  %2718 = icmp eq i32 %2657, 8
  br i1 %2718, label %2719, label %2731

; <label>:2719                                    ; preds = %2717
  %2720 = fmul fast float %2662, %2488
  %2721 = fmul fast float %2662, %2489
  %2722 = fadd fast float %2720, %1993
  %2723 = fadd fast float %2721, %1994
  %2724 = call float @dx.op.binary.f32(i32 36, float %2003, float %2490)  ; FMin(a,b)
  %2725 = fsub fast float %2724, %2003
  %2726 = fmul fast float %2725, %2665
  %2727 = fadd fast float %2726, %2003
  %2728 = fsub fast float %2487, %2002
  %2729 = fmul fast float %2668, %2728
  %2730 = fadd fast float %2729, %2002
  br label %2731

; <label>:2731                                    ; preds = %2719, %2717, %2685, %2670, %2648, %2186, %2005, %1992
  %2732 = phi float [ %1993, %2648 ], [ %1993, %2186 ], [ %1993, %1992 ], [ %2722, %2719 ], [ %1993, %2717 ], [ %2688, %2685 ], [ %2675, %2670 ], [ %1993, %2005 ]
  %2733 = phi float [ %1994, %2648 ], [ %1994, %2186 ], [ %1994, %1992 ], [ %2723, %2719 ], [ %1994, %2717 ], [ %2689, %2685 ], [ %2676, %2670 ], [ %1994, %2005 ]
  %2734 = phi float [ %2649, %2648 ], [ %1995, %2186 ], [ %1995, %1992 ], [ %2649, %2719 ], [ %2649, %2717 ], [ %2649, %2685 ], [ %2649, %2670 ], [ %1995, %2005 ]
  %2735 = phi float [ %2650, %2648 ], [ %1996, %2186 ], [ %1996, %1992 ], [ %2650, %2719 ], [ %2650, %2717 ], [ %2650, %2685 ], [ %2650, %2670 ], [ %1996, %2005 ]
  %2736 = phi float [ %2651, %2648 ], [ %1997, %2186 ], [ %1997, %1992 ], [ %2651, %2719 ], [ %2651, %2717 ], [ %2651, %2685 ], [ %2651, %2670 ], [ %1997, %2005 ]
  %2737 = phi float [ %2652, %2648 ], [ %1998, %2186 ], [ %1998, %1992 ], [ %2652, %2719 ], [ %2652, %2717 ], [ %2652, %2685 ], [ %2652, %2670 ], [ %1998, %2005 ]
  %2738 = phi float [ %2653, %2648 ], [ %1999, %2186 ], [ %1999, %1992 ], [ %2653, %2719 ], [ %2653, %2717 ], [ %2653, %2685 ], [ %2653, %2670 ], [ %1999, %2005 ]
  %2739 = phi float [ %2654, %2648 ], [ %2000, %2186 ], [ %2000, %1992 ], [ %2654, %2719 ], [ %2654, %2717 ], [ %2654, %2685 ], [ %2654, %2670 ], [ %2000, %2005 ]
  %2740 = phi float [ %2655, %2648 ], [ %2001, %2186 ], [ %2001, %1992 ], [ %2655, %2719 ], [ %2655, %2717 ], [ %2655, %2685 ], [ %2655, %2670 ], [ %2001, %2005 ]
  %2741 = phi float [ %2002, %2648 ], [ %2002, %2186 ], [ %2002, %1992 ], [ %2730, %2719 ], [ %2002, %2717 ], [ %2716, %2685 ], [ %2682, %2670 ], [ %2002, %2005 ]
  %2742 = phi float [ %2003, %2648 ], [ %2003, %2186 ], [ %2003, %1992 ], [ %2727, %2719 ], [ %2003, %2717 ], [ %2693, %2685 ], [ %2679, %2670 ], [ %2003, %2005 ]
  %2743 = phi float [ %2656, %2648 ], [ %2004, %2186 ], [ %2004, %1992 ], [ %2656, %2719 ], [ %2656, %2717 ], [ %2656, %2685 ], [ %2656, %2670 ], [ %2004, %2005 ]
  br i1 %655, label %3470, label %2744

; <label>:2744                                    ; preds = %2731
  %2745 = icmp ult i32 %709, 4
  %2746 = add i32 %58, 72
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = add i32 %58, 76
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = or i32 %2751, %2748
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %3470, label %2754

; <label>:2754                                    ; preds = %2744
  %2755 = and i32 %2748, 262144
  %2756 = icmp ne i32 %2755, 0
  %2757 = select i1 %2756, float %66, float 1.000000e+00
  %2758 = select i1 %2756, float %67, float 0.000000e+00
  %2759 = select i1 %2756, float %68, float 0.000000e+00
  %2760 = select i1 %2756, float %69, float 1.000000e+00
  %2761 = select i1 %2756, float %70, float %98
  %2762 = select i1 %2756, float %71, float %99
  %2763 = add i32 %58, 332
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = lshr i32 %2765, 16
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = fmul fast float %2767, 0x3F50624DE0000000
  %2769 = add i32 %58, 136
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = lshr i32 %2771, 16
  %2773 = and i32 %2772, 255
  %2774 = lshr i32 %2771, 24
  %2775 = add i32 %58, 340
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = and i32 %2777, 65535
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = lshr i32 %2777, 16
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = add i32 %58, 80
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = lshr i32 %2784, 22
  %2786 = shl nuw nsw i32 %2785, 5
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = shl i32 %2784, 4
  %2789 = and i32 %2788, 32752
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = lshr i32 %2784, 7
  %2792 = and i32 %2791, 32752
  %2793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2792)  ; LegacyF16ToF32(value)
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2796 = fmul fast float %2795, 1.000000e+03
  %2797 = fmul fast float %2796, %644
  %2798 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2799 = fadd fast float %2798, %632
  %2800 = fmul fast float %2796, %646
  %2801 = call float @dx.op.unary.f32(i32 22, float %2800)  ; Frc(value)
  %2802 = fadd fast float %2801, %633
  %2803 = fmul fast float %2768, %2796
  %2804 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  %2805 = fmul fast float %2804, 0x401921FB60000000
  %2806 = fadd fast float %2805, %2787
  %2807 = call float @dx.op.unary.f32(i32 13, float %2806)  ; Sin(value)
  %2808 = call float @dx.op.unary.f32(i32 12, float %2806)  ; Cos(value)
  %2809 = fsub fast float -0.000000e+00, %2807
  %2810 = fadd fast float %2761, -5.000000e-01
  %2811 = fadd fast float %2762, -5.000000e-01
  %2812 = fmul fast float %2779, %2810
  %2813 = fmul fast float %2781, %2811
  %2814 = fadd fast float %2812, 5.000000e-01
  %2815 = fadd fast float %2813, 5.000000e-01
  %2816 = fmul fast float %2790, %2814
  %2817 = fmul fast float %2793, %2815
  %2818 = fmul fast float %2808, %2816
  %2819 = call float @dx.op.tertiary.f32(i32 46, float %2809, float %2817, float %2818)  ; FMad(a,b,c)
  %2820 = fmul fast float %2807, %2816
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2808, float %2817, float %2820)  ; FMad(a,b,c)
  %2822 = fadd fast float %2799, %2819
  %2823 = fadd fast float %2802, %2821
  %2824 = icmp ugt i32 %2773, 1
  %2825 = icmp ugt i32 %2771, 33554431
  %2826 = or i1 %2825, %2824
  br i1 %2826, label %2827, label %2852

; <label>:2827                                    ; preds = %2754
  %2828 = add i32 %58, 276
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = lshr i32 %2830, 16
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = fmul fast float %2795, %2832
  %2834 = call float @dx.op.unary.f32(i32 22, float %2833)  ; Frc(value)
  %2835 = mul nuw nsw i32 %2773, %2774
  %2836 = uitofp i32 %2835 to float
  %2837 = fmul fast float %2834, %2836
  %2838 = call float @dx.op.unary.f32(i32 27, float %2837)  ; Round_ni(value)
  %2839 = fptoui float %2838 to i32
  %2840 = urem i32 %2839, %2773
  %2841 = udiv i32 %2839, %2774
  %2842 = call float @dx.op.unary.f32(i32 22, float %2822)  ; Frc(value)
  %2843 = call float @dx.op.unary.f32(i32 22, float %2823)  ; Frc(value)
  %2844 = uitofp i32 %2840 to float
  %2845 = uitofp i32 %2841 to float
  %2846 = fadd fast float %2842, %2844
  %2847 = fadd fast float %2843, %2845
  %2848 = uitofp i32 %2773 to float
  %2849 = uitofp i32 %2774 to float
  %2850 = fdiv fast float %2846, %2848
  %2851 = fdiv fast float %2847, %2849
  br label %2852

; <label>:2852                                    ; preds = %2827, %2754
  %2853 = phi float [ %2850, %2827 ], [ %2822, %2754 ]
  %2854 = phi float [ %2851, %2827 ], [ %2823, %2754 ]
  %2855 = and i32 %2748, 256
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %2903, label %2857

; <label>:2857                                    ; preds = %2852
  %2858 = add i32 %58, 484
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = add i32 %2860, 0
  %2862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2862, %dx.types.Handle %113, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = add i32 %58, 148
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = shl i32 %2867, 4
  %2869 = and i32 %2868, 32752
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = lshr i32 %2867, 7
  %2872 = and i32 %2871, 32752
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = fsub fast float 1.000000e+00, %704
  %2875 = call float @dx.op.binary.f32(i32 35, float %2874, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2876 = bitcast float %704 to i32
  %2877 = sitofp i32 %2876 to float
  %2878 = fadd fast float %2877, 0xC1CFBF8940000000
  %2879 = fmul fast float %2873, %2878
  %2880 = fadd fast float %2879, 0x41CFBF8940000000
  %2881 = fptosi float %2880 to i32
  %2882 = bitcast i32 %2881 to float
  %2883 = bitcast float %2875 to i32
  %2884 = sitofp i32 %2883 to float
  %2885 = fadd fast float %2884, 0xC1CFBF8940000000
  %2886 = fmul fast float %2885, %2873
  %2887 = fadd fast float %2886, 0x41CFBF8940000000
  %2888 = fptosi float %2887 to i32
  %2889 = bitcast i32 %2888 to float
  %2890 = fmul fast float %2882, %2870
  %2891 = fmul fast float %2889, %2870
  %2892 = fsub fast float %2875, %2890
  %2893 = fadd fast float %2891, %2875
  %2894 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2895 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2896 = fsub fast float %2864, %2894
  %2897 = fsub fast float %2895, %2894
  %2898 = bitcast float %2897 to i32
  %2899 = sub nsw i32 2129859010, %2898
  %2900 = bitcast i32 %2899 to float
  %2901 = fmul fast float %2900, %2896
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  br label %2903

; <label>:2903                                    ; preds = %2857, %2852
  %2904 = phi float [ %2902, %2857 ], [ %704, %2852 ]
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 128
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2925, label %2909

; <label>:2909                                    ; preds = %2903
  %2910 = add i32 %58, 468
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2914, %dx.types.Handle %113, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 524288
  %2920 = icmp ne i32 %2919, 0
  %2921 = fcmp fast ogt float %2916, 0x3FE0101020000000
  %2922 = select i1 %2921, float 1.000000e+00, float 0.000000e+00
  %2923 = select i1 %2920, float %2922, float %2916
  %2924 = fmul fast float %2923, %2904
  br label %2925

; <label>:2925                                    ; preds = %2909, %2903
  %2926 = phi float [ %2924, %2909 ], [ %2904, %2903 ]
  %2927 = fcmp fast ult float %2926, 0x3F70101020000000
  br i1 %2927, label %3470, label %2928

; <label>:2928                                    ; preds = %2925
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 16
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3131, label %2933

; <label>:2933                                    ; preds = %2928
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = add i32 %58, 420
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = add i32 %2938, 0
  %2940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2940, %dx.types.Handle %112, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = extractvalue %dx.types.ResRet.f32 %2941, 3
  %2946 = and i32 %2935, 255
  %2947 = uitofp i32 %2946 to float
  %2948 = lshr i32 %2935, 8
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2945, %2947
  %2952 = fadd fast float %2951, %2950
  %2953 = fmul fast float %2952, 0x3F70101000000000
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 512
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2966, label %2958

; <label>:2958                                    ; preds = %2933
  %2959 = add i32 %58, 504
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = add i32 %2961, 0
  %2963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2963, %dx.types.Handle %113, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  br label %2966

; <label>:2966                                    ; preds = %2958, %2933
  %2967 = phi float [ %2965, %2958 ], [ 1.000000e+00, %2933 ]
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 33554432
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %3078, label %2972

; <label>:2972                                    ; preds = %2966
  %2973 = add i32 %58, 272
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 65535
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = lshr i32 %2975, 16
  %2979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2978)  ; LegacyF16ToF32(value)
  %2980 = add i32 %58, 276
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = and i32 %2982, 65535
  %2984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2983)  ; LegacyF16ToF32(value)
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = lshr i32 %2986, 24
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = and i32 %2986, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2986, 8
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2986, 16
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = add i32 %58, 268
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = lshr i32 %3003, 24
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = and i32 %3003, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = lshr i32 %3003, 8
  %3011 = and i32 %3010, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = lshr i32 %3003, 16
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F70101020000000
  %3018 = bitcast float %2942 to i32
  %3019 = ashr i32 %3018, 1
  %3020 = sub nsw i32 1597463174, %3019
  %3021 = bitcast i32 %3020 to float
  %3022 = fmul fast float %2942, 5.000000e-01
  %3023 = fmul fast float %3021, %3021
  %3024 = fmul fast float %3023, %3022
  %3025 = fsub fast float 1.500000e+00, %3024
  %3026 = fmul fast float %3021, %2942
  %3027 = fmul fast float %3026, %3025
  %3028 = bitcast float %2943 to i32
  %3029 = ashr i32 %3028, 1
  %3030 = sub nsw i32 1597463174, %3029
  %3031 = bitcast i32 %3030 to float
  %3032 = fmul fast float %2943, 5.000000e-01
  %3033 = fmul fast float %3031, %3031
  %3034 = fmul fast float %3033, %3032
  %3035 = fsub fast float 1.500000e+00, %3034
  %3036 = fmul fast float %3031, %2943
  %3037 = fmul fast float %3036, %3035
  %3038 = bitcast float %2944 to i32
  %3039 = ashr i32 %3038, 1
  %3040 = sub nsw i32 1597463174, %3039
  %3041 = bitcast i32 %3040 to float
  %3042 = fmul fast float %2944, 5.000000e-01
  %3043 = fmul fast float %3041, %3041
  %3044 = fmul fast float %3043, %3042
  %3045 = fsub fast float 1.500000e+00, %3044
  %3046 = fmul fast float %3041, %2944
  %3047 = fmul fast float %3046, %3045
  %3048 = fsub fast float %3027, %3009
  %3049 = fsub fast float %3037, %3013
  %3050 = fsub fast float %3047, %3017
  %3051 = fmul fast float %3048, %2977
  %3052 = fmul fast float %3049, %2979
  %3053 = fmul fast float %3050, %2984
  %3054 = fadd fast float %3051, %2992
  %3055 = fadd fast float %3052, %2996
  %3056 = fadd fast float %3053, %3000
  %3057 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3058 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  %3059 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3060 = fmul fast float %3057, %3057
  %3061 = fmul fast float %3058, %3058
  %3062 = fmul fast float %3059, %3059
  %3063 = fsub fast float %3060, %2942
  %3064 = fsub fast float %3061, %2943
  %3065 = fsub fast float %3062, %2944
  %3066 = fmul fast float %3063, %2967
  %3067 = fmul fast float %3064, %2967
  %3068 = fmul fast float %3065, %2967
  %3069 = fadd fast float %3066, %2942
  %3070 = fadd fast float %3067, %2943
  %3071 = fadd fast float %3068, %2944
  %3072 = fadd fast float %2989, %2953
  %3073 = fsub fast float %3072, %3006
  %3074 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3075 = fsub fast float %3074, %2953
  %3076 = fmul fast float %3075, %2967
  %3077 = fadd fast float %3076, %2953
  br label %3131

; <label>:3078                                    ; preds = %2966
  %3079 = and i32 %2969, 134217728
  %3080 = icmp eq i32 %3079, 0
  br i1 %3080, label %3115, label %3081

; <label>:3081                                    ; preds = %3078
  %3082 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %3084 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %3085 = fadd fast float %3082, -5.000000e-01
  %3086 = fadd fast float %3083, -5.000000e-01
  %3087 = fadd fast float %3084, -5.000000e-01
  %3088 = fmul fast float %3085, %2967
  %3089 = fmul fast float %3086, %2967
  %3090 = fmul fast float %3087, %2967
  %3091 = fadd fast float %3088, 5.000000e-01
  %3092 = fadd fast float %3089, 5.000000e-01
  %3093 = fadd fast float %3090, 5.000000e-01
  %3094 = call float @dx.op.unary.f32(i32 24, float %2942)  ; Sqrt(value)
  %3095 = call float @dx.op.unary.f32(i32 24, float %2943)  ; Sqrt(value)
  %3096 = call float @dx.op.unary.f32(i32 24, float %2944)  ; Sqrt(value)
  %3097 = fmul fast float %3091, 2.000000e+00
  %3098 = fsub fast float 1.000000e+00, %3097
  %3099 = fmul fast float %3098, %3094
  %3100 = fadd fast float %3099, %3097
  %3101 = fmul fast float %3100, %3094
  %3102 = fmul fast float %3092, 2.000000e+00
  %3103 = fsub fast float 1.000000e+00, %3102
  %3104 = fmul fast float %3103, %3095
  %3105 = fadd fast float %3104, %3102
  %3106 = fmul fast float %3105, %3095
  %3107 = fmul fast float %3093, 2.000000e+00
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = fmul fast float %3108, %3096
  %3110 = fadd fast float %3109, %3107
  %3111 = fmul fast float %3110, %3096
  %3112 = fmul fast float %3101, %3101
  %3113 = fmul fast float %3106, %3106
  %3114 = fmul fast float %3111, %3111
  br label %3131

; <label>:3115                                    ; preds = %3078
  %3116 = fmul fast float %620, %620
  %3117 = fmul fast float %621, %621
  %3118 = fmul fast float %622, %622
  %3119 = fadd fast float %3116, -1.000000e+00
  %3120 = fadd fast float %3117, -1.000000e+00
  %3121 = fadd fast float %3118, -1.000000e+00
  %3122 = fmul fast float %2967, %3119
  %3123 = fmul fast float %2967, %3120
  %3124 = fmul fast float %2967, %3121
  %3125 = fadd fast float %3122, 1.000000e+00
  %3126 = fadd fast float %3123, 1.000000e+00
  %3127 = fadd fast float %3124, 1.000000e+00
  %3128 = fmul fast float %3125, %2942
  %3129 = fmul fast float %3126, %2943
  %3130 = fmul fast float %3127, %2944
  br label %3131

; <label>:3131                                    ; preds = %3115, %3081, %2972, %2928
  %3132 = phi float [ %3077, %2972 ], [ %2953, %3081 ], [ %2953, %3115 ], [ 0x3FA23C0BE0000000, %2928 ]
  %3133 = phi float [ %3069, %2972 ], [ %3112, %3081 ], [ %3128, %3115 ], [ 1.000000e+00, %2928 ]
  %3134 = phi float [ %3070, %2972 ], [ %3113, %3081 ], [ %3129, %3115 ], [ 1.000000e+00, %2928 ]
  %3135 = phi float [ %3071, %2972 ], [ %3114, %3081 ], [ %3130, %3115 ], [ 1.000000e+00, %2928 ]
  %3136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.i32 %3136, 1
  %3138 = and i32 %3137, 1
  %3139 = icmp ne i32 %3138, 0
  %3140 = add i32 %58, 356
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 32
  %3144 = icmp ne i32 %3143, 0
  %3145 = and i1 %3139, %3144
  %3146 = select i1 %3145, float 1.000000e+00, float %3133
  %3147 = select i1 %3145, float 0x3FD3333340000000, float %3134
  %3148 = select i1 %3145, float 0x3FD3333340000000, float %3135
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 32
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3225, label %3153

; <label>:3153                                    ; preds = %3131
  %3154 = add i32 %58, 140
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %58, 436
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %112, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.ResRet.f32 %3162, 2
  %3166 = extractvalue %dx.types.ResRet.f32 %3162, 3
  %3167 = and i32 %3156, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = lshr i32 %3156, 8
  %3170 = and i32 %3169, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = lshr i32 %3156, 16
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101000000000
  %3176 = fmul fast float %3163, %3168
  %3177 = fadd fast float %3176, %3171
  %3178 = fmul fast float %3177, 0x3F70101000000000
  %3179 = fadd fast float %3164, -5.000000e-01
  %3180 = fadd fast float %3166, -5.000000e-01
  %3181 = fmul fast float %3179, %3175
  %3182 = fmul fast float %3180, %3175
  %3183 = fadd fast float %3181, 5.000000e-01
  %3184 = fadd fast float %3182, 5.000000e-01
  %3185 = fmul fast float %3183, 2.000000e+00
  %3186 = fadd fast float %3185, -1.000000e+00
  %3187 = fmul fast float %3184, 2.000000e+00
  %3188 = fadd fast float %3187, -1.000000e+00
  %3189 = fadd fast float %3186, %3188
  %3190 = fmul fast float %3189, 5.000000e-01
  %3191 = fsub fast float %3186, %3188
  %3192 = fmul fast float %3191, 5.000000e-01
  %3193 = call float @dx.op.unary.f32(i32 6, float %3190)  ; FAbs(value)
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = call float @dx.op.unary.f32(i32 6, float %3192)  ; FAbs(value)
  %3196 = fsub fast float %3194, %3195
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3192, float %3196, float %3190, float %3192, float %3196)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = call float @dx.op.unary.f32(i32 25, float %3197)  ; Rsqrt(value)
  %3199 = fmul fast float %3190, %3198
  %3200 = fmul fast float %3192, %3198
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 67108864
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3221, label %3205

; <label>:3205                                    ; preds = %3153
  %3206 = add i32 %58, 328
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 65535
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = lshr i32 %3208, 16
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = fsub fast float %3178, %3216
  %3218 = fmul fast float %3217, %3210
  %3219 = fadd fast float %3218, %3214
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  br label %3221

; <label>:3221                                    ; preds = %3205, %3153
  %3222 = phi float [ %3220, %3205 ], [ %3178, %3153 ]
  %3223 = call float @dx.op.dot2.f32(i32 54, float %3199, float %3200, float %2757, float %2758)  ; Dot2(ax,ay,bx,by)
  %3224 = call float @dx.op.dot2.f32(i32 54, float %3199, float %3200, float %2759, float %2760)  ; Dot2(ax,ay,bx,by)
  br label %3225

; <label>:3225                                    ; preds = %3221, %3131
  %3226 = phi float [ %3222, %3221 ], [ 0x3FD6666660000000, %3131 ]
  %3227 = phi float [ %3223, %3221 ], [ 0.000000e+00, %3131 ]
  %3228 = phi float [ %3224, %3221 ], [ 0.000000e+00, %3131 ]
  %3229 = phi float [ %3165, %3221 ], [ 1.000000e+00, %3131 ]
  %3230 = add i32 %58, 208
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = lshr i32 %3232, 22
  %3234 = shl nuw nsw i32 %3233, 5
  %3235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3234)  ; LegacyF16ToF32(value)
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 64
  %3239 = icmp eq i32 %3238, 0
  br i1 %3239, label %3273, label %3240

; <label>:3240                                    ; preds = %3225
  %3241 = add i32 %58, 452
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = add i32 %3243, 0
  %3245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 131072
  %3249 = icmp eq i32 %3248, 0
  %3250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3245, %dx.types.Handle %112, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.ResRet.f32 %3250, 2
  %3254 = fmul fast float %603, %3251
  %3255 = fmul fast float %604, %3252
  %3256 = fmul fast float %605, %3253
  br i1 %3249, label %3263, label %3257

; <label>:3257                                    ; preds = %3240
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 0
  %3260 = fmul fast float %3259, %3254
  %3261 = fmul fast float %3259, %3255
  %3262 = fmul fast float %3259, %3256
  br label %3263

; <label>:3263                                    ; preds = %3257, %3240
  %3264 = phi float [ %3260, %3257 ], [ %3254, %3240 ]
  %3265 = phi float [ %3261, %3257 ], [ %3255, %3240 ]
  %3266 = phi float [ %3262, %3257 ], [ %3256, %3240 ]
  %3267 = fmul fast float %3264, %3235
  %3268 = select i1 %271, float %3267, float %3264
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3268, float %3265, float %3266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = select i1 %271, float 0.000000e+00, float %3264
  %3271 = select i1 %271, float %3269, float %3265
  %3272 = select i1 %271, float 0.000000e+00, float %3266
  br label %3273

; <label>:3273                                    ; preds = %3263, %3225
  %3274 = phi float [ %3270, %3263 ], [ 0.000000e+00, %3225 ]
  %3275 = phi float [ %3271, %3263 ], [ 0.000000e+00, %3225 ]
  %3276 = phi float [ %3272, %3263 ], [ 0.000000e+00, %3225 ]
  %3277 = add i32 %58, 144
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 255
  %3281 = uitofp i32 %3280 to float
  %3282 = lshr i32 %3279, 8
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3147, float %3148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = fmul fast float %3284, %3285
  %3287 = fadd fast float %3286, %3281
  %3288 = fmul fast float %3287, 0x3F70101020000000
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  br i1 %2745, label %3290, label %3298

; <label>:3290                                    ; preds = %3273
  %3291 = fsub fast float 1.000000e+00, %2926
  %3292 = fmul fast float %3291, %2737
  %3293 = fmul fast float %3291, %2738
  %3294 = fmul fast float %3291, %2739
  %3295 = fmul fast float %3291, %2734
  %3296 = fmul fast float %3291, %2735
  %3297 = fmul fast float %3291, %2736
  br label %3298

; <label>:3298                                    ; preds = %3290, %3273
  %3299 = phi float [ %3295, %3290 ], [ %2734, %3273 ]
  %3300 = phi float [ %3296, %3290 ], [ %2735, %3273 ]
  %3301 = phi float [ %3297, %3290 ], [ %2736, %3273 ]
  %3302 = phi float [ %3292, %3290 ], [ %2737, %3273 ]
  %3303 = phi float [ %3293, %3290 ], [ %2738, %3273 ]
  %3304 = phi float [ %3294, %3290 ], [ %2739, %3273 ]
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 3
  %3308 = icmp eq i32 %3307, 3
  br i1 %3308, label %3387, label %3309

; <label>:3309                                    ; preds = %3298
  %3310 = and i32 %3306, 16
  %3311 = icmp ne i32 %3310, 0
  %3312 = select i1 %3311, float %2926, float 0.000000e+00
  %3313 = icmp eq i32 %3307, 0
  br i1 %3313, label %3314, label %3342

; <label>:3314                                    ; preds = %3309
  %3315 = and i32 %3306, 64
  %3316 = icmp ne i32 %3315, 0
  %3317 = select i1 %3316, float %2926, float 0.000000e+00
  %3318 = fsub fast float %3146, %3302
  %3319 = fsub fast float %3147, %3303
  %3320 = fsub fast float %3148, %3304
  %3321 = fmul fast float %3312, %3318
  %3322 = fmul fast float %3312, %3319
  %3323 = fmul fast float %3312, %3320
  %3324 = fadd fast float %3321, %3302
  %3325 = fadd fast float %3322, %3303
  %3326 = fadd fast float %3323, %3304
  %3327 = fsub fast float %3132, %2740
  %3328 = fmul fast float %3312, %3327
  %3329 = fadd fast float %3328, %2740
  %3330 = fsub fast float %3274, %3299
  %3331 = fsub fast float %3275, %3300
  %3332 = fsub fast float %3276, %3301
  %3333 = fmul fast float %3317, %3330
  %3334 = fmul fast float %3317, %3331
  %3335 = fmul fast float %3317, %3332
  %3336 = fadd fast float %3333, %3299
  %3337 = fadd fast float %3334, %3300
  %3338 = fadd fast float %3335, %3301
  %3339 = fsub fast float %3289, %2743
  %3340 = fmul fast float %3312, %3339
  %3341 = fadd fast float %3340, %2743
  br label %3387

; <label>:3342                                    ; preds = %3309
  %3343 = icmp eq i32 %3307, 1
  br i1 %3343, label %3344, label %3357

; <label>:3344                                    ; preds = %3342
  %3345 = fadd fast float %3146, -1.000000e+00
  %3346 = fadd fast float %3147, -1.000000e+00
  %3347 = fadd fast float %3148, -1.000000e+00
  %3348 = fmul fast float %3312, %3345
  %3349 = fmul fast float %3312, %3346
  %3350 = fmul fast float %3312, %3347
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fmul fast float %3351, %3302
  %3355 = fmul fast float %3352, %3303
  %3356 = fmul fast float %3353, %3304
  br label %3387

; <label>:3357                                    ; preds = %3342
  %3358 = icmp eq i32 %3307, 2
  br i1 %3358, label %3359, label %3387

; <label>:3359                                    ; preds = %3357
  %3360 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3361 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3362 = call float @dx.op.unary.f32(i32 24, float %3148)  ; Sqrt(value)
  %3363 = fadd fast float %3360, -5.000000e-01
  %3364 = fadd fast float %3361, -5.000000e-01
  %3365 = fadd fast float %3362, -5.000000e-01
  %3366 = fmul fast float %3363, %3312
  %3367 = fmul fast float %3364, %3312
  %3368 = fmul fast float %3365, %3312
  %3369 = fadd fast float %3366, 5.000000e-01
  %3370 = fadd fast float %3367, 5.000000e-01
  %3371 = fadd fast float %3368, 5.000000e-01
  %3372 = fmul fast float %3369, 2.000000e+00
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = fmul fast float %3373, %3302
  %3375 = fadd fast float %3374, %3372
  %3376 = fmul fast float %3375, %3302
  %3377 = fmul fast float %3370, 2.000000e+00
  %3378 = fsub fast float 1.000000e+00, %3377
  %3379 = fmul fast float %3378, %3303
  %3380 = fadd fast float %3379, %3377
  %3381 = fmul fast float %3380, %3303
  %3382 = fmul fast float %3371, 2.000000e+00
  %3383 = fsub fast float 1.000000e+00, %3382
  %3384 = fmul fast float %3383, %3304
  %3385 = fadd fast float %3384, %3382
  %3386 = fmul fast float %3385, %3304
  br label %3387

; <label>:3387                                    ; preds = %3359, %3357, %3344, %3314, %3298
  %3388 = phi float [ %3299, %3298 ], [ %3299, %3359 ], [ %3299, %3357 ], [ %3299, %3344 ], [ %3336, %3314 ]
  %3389 = phi float [ %3300, %3298 ], [ %3300, %3359 ], [ %3300, %3357 ], [ %3300, %3344 ], [ %3337, %3314 ]
  %3390 = phi float [ %3301, %3298 ], [ %3301, %3359 ], [ %3301, %3357 ], [ %3301, %3344 ], [ %3338, %3314 ]
  %3391 = phi float [ %3302, %3298 ], [ %3376, %3359 ], [ %3302, %3357 ], [ %3354, %3344 ], [ %3324, %3314 ]
  %3392 = phi float [ %3303, %3298 ], [ %3381, %3359 ], [ %3303, %3357 ], [ %3355, %3344 ], [ %3325, %3314 ]
  %3393 = phi float [ %3304, %3298 ], [ %3386, %3359 ], [ %3304, %3357 ], [ %3356, %3344 ], [ %3326, %3314 ]
  %3394 = phi float [ %2740, %3298 ], [ %2740, %3359 ], [ %2740, %3357 ], [ %2740, %3344 ], [ %3329, %3314 ]
  %3395 = phi float [ %2743, %3298 ], [ %2743, %3359 ], [ %2743, %3357 ], [ %2743, %3344 ], [ %3341, %3314 ]
  %3396 = and i32 %3306, 12
  %3397 = icmp eq i32 %3396, 12
  br i1 %3397, label %3470, label %3398

; <label>:3398                                    ; preds = %3387
  %3399 = and i32 %3306, 2097184
  %3400 = icmp eq i32 %3399, 2097184
  %3401 = select i1 %3400, float %2926, float 0.000000e+00
  %3402 = and i32 %3306, 4194336
  %3403 = icmp eq i32 %3402, 4194336
  %3404 = select i1 %3403, float %2926, float 0.000000e+00
  %3405 = and i32 %3306, 8388640
  %3406 = icmp eq i32 %3405, 8388640
  %3407 = select i1 %3406, float %2926, float 0.000000e+00
  %3408 = icmp eq i32 %3396, 0
  br i1 %3408, label %3409, label %3422

; <label>:3409                                    ; preds = %3398
  %3410 = fsub fast float %3227, %2732
  %3411 = fsub fast float %3228, %2733
  %3412 = fmul fast float %3401, %3410
  %3413 = fmul fast float %3401, %3411
  %3414 = fadd fast float %3412, %2732
  %3415 = fadd fast float %3413, %2733
  %3416 = fsub fast float %3229, %2742
  %3417 = fmul fast float %3404, %3416
  %3418 = fadd fast float %3417, %2742
  %3419 = fsub fast float %3226, %2741
  %3420 = fmul fast float %3407, %3419
  %3421 = fadd fast float %3420, %2741
  br label %3470

; <label>:3422                                    ; preds = %3398
  %3423 = icmp eq i32 %3396, 4
  br i1 %3423, label %3424, label %3456

; <label>:3424                                    ; preds = %3422
  %3425 = fmul fast float %3401, %3227
  %3426 = fmul fast float %3401, %3228
  %3427 = fadd fast float %3425, %2732
  %3428 = fadd fast float %3426, %2733
  %3429 = call float @dx.op.binary.f32(i32 36, float %2742, float %3229)  ; FMin(a,b)
  %3430 = fsub fast float %3429, %2742
  %3431 = fmul fast float %3430, %3404
  %3432 = fadd fast float %3431, %2742
  %3433 = fadd fast float %3226, %2741
  %3434 = fmul fast float %3433, 0x3FF337FAE0000000
  %3435 = fmul fast float %2741, %2741
  %3436 = fmul fast float %3226, %3226
  %3437 = fadd fast float %3436, %3435
  %3438 = fmul fast float %3437, 0x3FE5152B00000000
  %3439 = fmul fast float %2741, 0xBFCC1F85E0000000
  %3440 = fmul fast float %3439, %3226
  %3441 = fadd fast float %3440, 0xBFE1363700000000
  %3442 = fadd fast float %3441, %3434
  %3443 = fsub fast float %3442, %3438
  %3444 = fmul fast float %3433, 0x3FBA6F0D00000000
  %3445 = fmul fast float %3437, 0x3FD0432880000000
  %3446 = fmul fast float %2741, 0xBFEF110800000000
  %3447 = fmul fast float %3446, %3226
  %3448 = fadd fast float %3447, 1.000000e+00
  %3449 = fsub fast float %3448, %3444
  %3450 = fadd fast float %3449, %3445
  %3451 = fdiv fast float %3443, %3450
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = fsub fast float %3452, %2741
  %3454 = fmul fast float %3453, %3407
  %3455 = fadd fast float %3454, %2741
  br label %3470

; <label>:3456                                    ; preds = %3422
  %3457 = icmp eq i32 %3396, 8
  br i1 %3457, label %3458, label %3470

; <label>:3458                                    ; preds = %3456
  %3459 = fmul fast float %3401, %3227
  %3460 = fmul fast float %3401, %3228
  %3461 = fadd fast float %3459, %2732
  %3462 = fadd fast float %3460, %2733
  %3463 = call float @dx.op.binary.f32(i32 36, float %2742, float %3229)  ; FMin(a,b)
  %3464 = fsub fast float %3463, %2742
  %3465 = fmul fast float %3464, %3404
  %3466 = fadd fast float %3465, %2742
  %3467 = fsub fast float %3226, %2741
  %3468 = fmul fast float %3407, %3467
  %3469 = fadd fast float %3468, %2741
  br label %3470

; <label>:3470                                    ; preds = %3458, %3456, %3424, %3409, %3387, %2925, %2744, %2731
  %3471 = phi float [ %2732, %3387 ], [ %2732, %2925 ], [ %2732, %2731 ], [ %2732, %2744 ], [ %3414, %3409 ], [ %3427, %3424 ], [ %2732, %3456 ], [ %3461, %3458 ]
  %3472 = phi float [ %2733, %3387 ], [ %2733, %2925 ], [ %2733, %2731 ], [ %2733, %2744 ], [ %3415, %3409 ], [ %3428, %3424 ], [ %2733, %3456 ], [ %3462, %3458 ]
  %3473 = phi float [ %3388, %3387 ], [ %2734, %2925 ], [ %2734, %2731 ], [ %2734, %2744 ], [ %3388, %3409 ], [ %3388, %3424 ], [ %3388, %3456 ], [ %3388, %3458 ]
  %3474 = phi float [ %3389, %3387 ], [ %2735, %2925 ], [ %2735, %2731 ], [ %2735, %2744 ], [ %3389, %3409 ], [ %3389, %3424 ], [ %3389, %3456 ], [ %3389, %3458 ]
  %3475 = phi float [ %3390, %3387 ], [ %2736, %2925 ], [ %2736, %2731 ], [ %2736, %2744 ], [ %3390, %3409 ], [ %3390, %3424 ], [ %3390, %3456 ], [ %3390, %3458 ]
  %3476 = phi float [ %3391, %3387 ], [ %2737, %2925 ], [ %2737, %2731 ], [ %2737, %2744 ], [ %3391, %3409 ], [ %3391, %3424 ], [ %3391, %3456 ], [ %3391, %3458 ]
  %3477 = phi float [ %3392, %3387 ], [ %2738, %2925 ], [ %2738, %2731 ], [ %2738, %2744 ], [ %3392, %3409 ], [ %3392, %3424 ], [ %3392, %3456 ], [ %3392, %3458 ]
  %3478 = phi float [ %3393, %3387 ], [ %2739, %2925 ], [ %2739, %2731 ], [ %2739, %2744 ], [ %3393, %3409 ], [ %3393, %3424 ], [ %3393, %3456 ], [ %3393, %3458 ]
  %3479 = phi float [ %3394, %3387 ], [ %2740, %2925 ], [ %2740, %2731 ], [ %2740, %2744 ], [ %3394, %3409 ], [ %3394, %3424 ], [ %3394, %3456 ], [ %3394, %3458 ]
  %3480 = phi float [ %2741, %3387 ], [ %2741, %2925 ], [ %2741, %2731 ], [ %2741, %2744 ], [ %3421, %3409 ], [ %3455, %3424 ], [ %2741, %3456 ], [ %3469, %3458 ]
  %3481 = phi float [ %2742, %3387 ], [ %2742, %2925 ], [ %2742, %2731 ], [ %2742, %2744 ], [ %3418, %3409 ], [ %3432, %3424 ], [ %2742, %3456 ], [ %3466, %3458 ]
  %3482 = phi float [ %3395, %3387 ], [ %2743, %2925 ], [ %2743, %2731 ], [ %2743, %2744 ], [ %3395, %3409 ], [ %3395, %3424 ], [ %3395, %3456 ], [ %3395, %3458 ]
  %3483 = add i32 %58, 360
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.i32 %3484, 1
  %3487 = bitcast i32 %3485 to float
  %3488 = bitcast i32 %3486 to float
  %3489 = fcmp fast oge float %3487, 0.000000e+00
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = select i1 %3489, float %3487, float %3491
  %3493 = fadd fast float %3492, %213
  %3494 = fmul fast float %3488, %214
  %3495 = add i32 %58, 488
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = add i32 %3497, 0
  %3499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3499, %dx.types.Handle %113, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = fmul fast float %3494, %3501
  %3503 = fadd fast float %3493, %3502
  %3504 = and i32 %205, 65535
  %3505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3504)  ; LegacyF16ToF32(value)
  %3506 = lshr i32 %205, 16
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = and i32 %206, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = fmul fast float %3505, %3476
  %3511 = fmul fast float %3507, %3477
  %3512 = fmul fast float %3509, %3478
  %3513 = shl i32 %207, 4
  %3514 = and i32 %3513, 32752
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = lshr i32 %207, 7
  %3517 = and i32 %3516, 32752
  %3518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3517)  ; LegacyF16ToF32(value)
  %3519 = lshr i32 %207, 22
  %3520 = shl nuw nsw i32 %3519, 5
  %3521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3520)  ; LegacyF16ToF32(value)
  %3522 = and i32 %208, 65535
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = fmul fast float %3515, %3473
  %3525 = fmul fast float %3524, %3523
  %3526 = fmul fast float %3518, %3474
  %3527 = fmul fast float %3526, %3523
  %3528 = fmul fast float %3521, %3475
  %3529 = fmul fast float %3528, %3523
  %3530 = call float @dx.op.dot2.f32(i32 54, float %3471, float %3472, float %3471, float %3472)  ; Dot2(ax,ay,bx,by)
  %3531 = fmul fast float %3530, 0x3FE3333340000000
  %3532 = fsub fast float 1.000000e+00, %3531
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3532, float %3471, float %3472, float %3532)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = call float @dx.op.unary.f32(i32 25, float %3533)  ; Rsqrt(value)
  %3535 = fmul fast float %3534, %3471
  %3536 = fmul fast float %3534, %3472
  %3537 = fmul fast float %3532, %3534
  %3538 = fmul fast float %3537, %125
  %3539 = fmul fast float %3537, %127
  %3540 = fmul fast float %3537, %129
  %3541 = fmul fast float %3535, %91
  %3542 = fmul fast float %3535, %92
  %3543 = fmul fast float %3535, %93
  %3544 = fadd fast float %3538, %3541
  %3545 = fadd fast float %3539, %3542
  %3546 = fadd fast float %3540, %3543
  %3547 = fmul fast float %139, %3536
  %3548 = fmul fast float %140, %3536
  %3549 = fmul fast float %141, %3536
  %3550 = fadd fast float %3544, %3547
  %3551 = fadd fast float %3545, %3548
  %3552 = fadd fast float %3546, %3549
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3552, float %3550, float %3551, float %3552)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = call float @dx.op.unary.f32(i32 25, float %3553)  ; Rsqrt(value)
  %3555 = fmul fast float %3550, %3554
  %3556 = fmul fast float %3551, %3554
  %3557 = fmul fast float %3552, %3554
  %3558 = icmp eq i32 %61, 65535
  br i1 %3558, label %4077, label %3559

; <label>:3559                                    ; preds = %3470
  %3560 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3561 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3562 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3563 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3564 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3565 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3566 = fadd fast float %3560, %62
  %3567 = fadd fast float %3561, %63
  %3568 = fadd fast float %3562, %64
  %3569 = fadd fast float %3563, %62
  %3570 = fadd fast float %3564, %63
  %3571 = fadd fast float %3565, %64
  %3572 = mul i32 %61, 48
  %3573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = add i32 %3572, 16
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = add i32 %3572, 32
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3588 = bitcast float %3587 to i32
  %3589 = fmul fast float %3574, %62
  %3590 = fmul fast float %3575, %63
  %3591 = fmul fast float %3576, %64
  %3592 = fsub fast float %3589, %3579
  %3593 = fsub fast float %3590, %3580
  %3594 = fsub fast float %3591, %3581
  %3595 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3596 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3597 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3598 = fmul fast float %3595, %3584
  %3599 = fmul fast float %3596, %3585
  %3600 = fmul fast float %3597, %3586
  %3601 = fadd fast float %3584, -1.000000e+00
  %3602 = fadd fast float %3585, -1.000000e+00
  %3603 = fadd fast float %3586, -1.000000e+00
  %3604 = call float @dx.op.unary.f32(i32 27, float %3598)  ; Round_ni(value)
  %3605 = call float @dx.op.unary.f32(i32 27, float %3599)  ; Round_ni(value)
  %3606 = call float @dx.op.unary.f32(i32 27, float %3600)  ; Round_ni(value)
  %3607 = call float @dx.op.binary.f32(i32 36, float %3604, float %3601)  ; FMin(a,b)
  %3608 = call float @dx.op.binary.f32(i32 36, float %3605, float %3602)  ; FMin(a,b)
  %3609 = call float @dx.op.binary.f32(i32 36, float %3606, float %3603)  ; FMin(a,b)
  %3610 = fmul fast float %3609, %3585
  %3611 = fadd fast float %3610, %3608
  %3612 = fmul fast float %3611, %3584
  %3613 = fadd fast float %3612, %3607
  %3614 = fptosi float %3613 to i32
  %3615 = add nsw i32 %3614, %3588
  %3616 = shl nsw i32 %3615, 2
  %3617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.i32 %3617, 0
  %3619 = lshr i32 %3618, 16
  %3620 = icmp eq i32 %3619, 0
  br i1 %3620, label %4045, label %3621

; <label>:3621                                    ; preds = %3559
  br label %3622

; <label>:3622                                    ; preds = %3744, %3621
  %3623 = phi i32 [ %3646, %3744 ], [ %3619, %3621 ]
  %3624 = phi float [ %3745, %3744 ], [ 0.000000e+00, %3621 ]
  %3625 = phi float [ %3746, %3744 ], [ %1262, %3621 ]
  %3626 = phi float [ %3747, %3744 ], [ %3503, %3621 ]
  %3627 = phi float [ %3748, %3744 ], [ %3482, %3621 ]
  %3628 = phi float [ %3749, %3744 ], [ 0.000000e+00, %3621 ]
  %3629 = phi float [ %3750, %3744 ], [ 0.000000e+00, %3621 ]
  %3630 = phi float [ %3751, %3744 ], [ %3525, %3621 ]
  %3631 = phi float [ %3752, %3744 ], [ %3527, %3621 ]
  %3632 = phi float [ %3753, %3744 ], [ %3529, %3621 ]
  %3633 = phi float [ %3754, %3744 ], [ %3555, %3621 ]
  %3634 = phi float [ %3755, %3744 ], [ %3556, %3621 ]
  %3635 = phi float [ %3756, %3744 ], [ %3557, %3621 ]
  %3636 = phi float [ %3757, %3744 ], [ %3481, %3621 ]
  %3637 = phi float [ %3758, %3744 ], [ %3480, %3621 ]
  %3638 = phi float [ %3759, %3744 ], [ 0.000000e+00, %3621 ]
  %3639 = phi float [ %3760, %3744 ], [ %3479, %3621 ]
  %3640 = phi float [ %3761, %3744 ], [ %3510, %3621 ]
  %3641 = phi float [ %3762, %3744 ], [ %3511, %3621 ]
  %3642 = phi float [ %3763, %3744 ], [ %3512, %3621 ]
  %3643 = shl nuw nsw i32 %3623, 2
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = lshr i32 %3645, 16
  %3647 = shl i32 %3645, 8
  %3648 = and i32 %3647, 16776960
  %3649 = or i32 %3648, 48
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = or i32 %3648, 64
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.i32 %3655, 1
  %3658 = or i32 %3648, 80
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3662 = or i32 %3648, 96
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.ResRet.f32 %3663, 3
  %3668 = or i32 %3648, 112
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3671 = or i32 %3648, 128
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = or i32 %3648, 144
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = or i32 %3648, 160
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = extractvalue %dx.types.ResRet.f32 %3684, 3
  %3689 = or i32 %3648, 192
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = or i32 %3648, 208
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = or i32 %3648, 248
  %3696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3703 = extractvalue %dx.types.ResRet.f32 %3699, 3
  %3704 = call float @dx.op.dot4.f32(i32 56, float %3700, float %3701, float %3702, float %3703, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3705 = or i32 %3648, 16
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3711 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3712 = or i32 %3648, 32
  %3713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.ResRet.f32 %3713, 3
  %3718 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3719 = call float @dx.op.unary.f32(i32 27, float %3704)  ; Round_ni(value)
  %3720 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3721 = call float @dx.op.unary.f32(i32 27, float %3711)  ; Round_ni(value)
  %3722 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3723 = call float @dx.op.unary.f32(i32 6, float %3718)  ; FAbs(value)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3725 = fadd fast float %3722, %3720
  %3726 = fadd fast float %3725, %3724
  %3727 = fcmp fast oeq float %3726, 0.000000e+00
  %3728 = call float @dx.op.dot4.f32(i32 56, float %3700, float %3701, float %3702, float %3703, float %3566, float %3567, float %3568, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3729 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3566, float %3567, float %3568, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3730 = call float @dx.op.dot4.f32(i32 56, float %3700, float %3701, float %3702, float %3703, float %3569, float %3570, float %3571, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3731 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3569, float %3570, float %3571, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3732 = fsub fast float %3728, %3704
  %3733 = fsub fast float %3730, %3704
  %3734 = fsub fast float %3729, %3711
  %3735 = fsub fast float %3731, %3711
  %3736 = call float @dx.op.dot3.f32(i32 55, float %3651, float %3652, float %3653, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3739 = fadd fast float %3738, %3736
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3742 = fcmp fast ogt float %3740, %3741
  %3743 = and i1 %3727, %3742
  br i1 %3743, label %3765, label %3744

; <label>:3744                                    ; preds = %4031, %3848, %3765, %3622
  %3745 = phi float [ %3624, %3765 ], [ %3851, %3848 ], [ %3851, %4031 ], [ %3624, %3622 ]
  %3746 = phi float [ %3625, %3765 ], [ %3625, %3848 ], [ %4006, %4031 ], [ %3625, %3622 ]
  %3747 = phi float [ %3626, %3765 ], [ %3626, %3848 ], [ %4005, %4031 ], [ %3626, %3622 ]
  %3748 = phi float [ %3627, %3765 ], [ %3627, %3848 ], [ %4003, %4031 ], [ %3627, %3622 ]
  %3749 = phi float [ %3628, %3765 ], [ %3628, %3848 ], [ %3975, %4031 ], [ %3628, %3622 ]
  %3750 = phi float [ %3629, %3765 ], [ %3629, %3848 ], [ %3973, %4031 ], [ %3629, %3622 ]
  %3751 = phi float [ %3630, %3765 ], [ %3630, %3848 ], [ %4041, %4031 ], [ %3630, %3622 ]
  %3752 = phi float [ %3631, %3765 ], [ %3631, %3848 ], [ %4042, %4031 ], [ %3631, %3622 ]
  %3753 = phi float [ %3632, %3765 ], [ %3632, %3848 ], [ %4043, %4031 ], [ %3632, %3622 ]
  %3754 = phi float [ %3633, %3765 ], [ %3633, %3848 ], [ %3954, %4031 ], [ %3633, %3622 ]
  %3755 = phi float [ %3634, %3765 ], [ %3634, %3848 ], [ %3955, %4031 ], [ %3634, %3622 ]
  %3756 = phi float [ %3635, %3765 ], [ %3635, %3848 ], [ %3956, %4031 ], [ %3635, %3622 ]
  %3757 = phi float [ %3636, %3765 ], [ %3636, %3848 ], [ %3983, %4031 ], [ %3636, %3622 ]
  %3758 = phi float [ %3637, %3765 ], [ %3637, %3848 ], [ %3980, %4031 ], [ %3637, %3622 ]
  %3759 = phi float [ %3638, %3765 ], [ %3638, %3848 ], [ %3977, %4031 ], [ %3638, %3622 ]
  %3760 = phi float [ %3639, %3765 ], [ %3639, %3848 ], [ %3971, %4031 ], [ %3639, %3622 ]
  %3761 = phi float [ %3640, %3765 ], [ %3640, %3848 ], [ %3966, %4031 ], [ %3640, %3622 ]
  %3762 = phi float [ %3641, %3765 ], [ %3641, %3848 ], [ %3967, %4031 ], [ %3641, %3622 ]
  %3763 = phi float [ %3642, %3765 ], [ %3642, %3848 ], [ %3968, %4031 ], [ %3642, %3622 ]
  %3764 = icmp eq i32 %3646, 0
  br i1 %3764, label %4044, label %3622

; <label>:3765                                    ; preds = %3622
  %3766 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3767 = extractvalue %dx.types.ResRet.f32 %3669, 3
  %3768 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3772 = extractvalue %dx.types.ResRet.i32 %3655, 3
  %3773 = extractvalue %dx.types.ResRet.i32 %3655, 2
  %3774 = bitcast float %3766 to i32
  %3775 = add i32 %3772, 0
  %3776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3776, %dx.types.Handle %3777, float %3704, float %3711, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = fmul fast float %3779, %3771
  %3781 = fadd fast float %3780, %3770
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = fmul fast float %3704, %3664
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3711, float %3783)  ; FMad(a,b,c)
  %3785 = fadd fast float %3784, %3769
  %3786 = fmul fast float %3704, %3666
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3667, float %3711, float %3786)  ; FMad(a,b,c)
  %3788 = fadd fast float %3787, %3768
  %3789 = fmul fast float %3732, %3664
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3734, float %3789)  ; FMad(a,b,c)
  %3791 = fmul fast float %3732, %3666
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3667, float %3734, float %3791)  ; FMad(a,b,c)
  %3793 = fmul fast float %3733, %3664
  %3794 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3735, float %3793)  ; FMad(a,b,c)
  %3795 = fmul fast float %3733, %3666
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3667, float %3735, float %3795)  ; FMad(a,b,c)
  %3797 = add i32 %3773, 0
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3798, %dx.types.Handle %3777, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = and i32 %3774, 1024
  %3802 = icmp ne i32 %3801, 0
  %3803 = fcmp fast ogt float %3800, 0x3FE0101020000000
  %3804 = uitofp i1 %3803 to float
  %3805 = select i1 %3802, float %3804, float %3800
  %3806 = and i32 %3774, 8192
  %3807 = icmp ne i32 %3806, 0
  %3808 = select i1 %3807, float %3767, float 1.000000e+00
  %3809 = fmul fast float %3704, 2.000000e+00
  %3810 = fadd fast float %3809, -1.000000e+00
  %3811 = call float @dx.op.unary.f32(i32 6, float %3810)  ; FAbs(value)
  %3812 = fmul fast float %3811, %3697
  %3813 = fsub fast float %3812, %3697
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fmul fast float %3711, 2.000000e+00
  %3816 = fadd fast float %3815, -1.000000e+00
  %3817 = call float @dx.op.unary.f32(i32 6, float %3816)  ; FAbs(value)
  %3818 = fmul fast float %3817, %3698
  %3819 = fsub fast float %3818, %3698
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3723, %3660
  %3822 = fsub fast float %3821, %3660
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fmul fast float %3782, %3808
  %3825 = fmul fast float %3824, %3779
  %3826 = fmul fast float %3825, %3814
  %3827 = fmul fast float %3826, %3805
  %3828 = fmul fast float %3827, %3820
  %3829 = fmul fast float %3828, %3823
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3832 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3833 = fsub fast float %3740, %3832
  %3834 = fmul fast float %3833, %3831
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3829, %3661
  %3837 = fadd fast float %3829, %3661
  %3838 = fmul fast float %3837, %3670
  %3839 = fsub fast float %3838, %3670
  %3840 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3841 = and i32 %3774, 128
  %3842 = icmp ne i32 %3841, 0
  %3843 = select i1 %3842, float %3840, float %3836
  %3844 = fmul fast float %3843, %3835
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = fcmp fast ugt float %3844, %3846
  br i1 %3847, label %3848, label %3744

; <label>:3848                                    ; preds = %3765
  %3849 = select i1 %3807, float %3844, float 0.000000e+00
  %3850 = fadd fast float %3849, %3624
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  br i1 %3807, label %3744, label %3852

; <label>:3852                                    ; preds = %3848
  %3853 = and i32 %3774, 4
  %3854 = and i32 %3774, 8
  %3855 = add i32 %3656, 0
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3855, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3856, %dx.types.Handle %3857, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = bitcast float %3682 to i32
  %3864 = and i32 %3863, 255
  %3865 = uitofp i32 %3864 to float
  %3866 = lshr i32 %3863, 8
  %3867 = and i32 %3866, 255
  %3868 = uitofp i32 %3867 to float
  %3869 = fmul fast float %3862, %3865
  %3870 = fadd fast float %3869, %3868
  %3871 = fmul fast float %3870, 0x3F70101000000000
  %3872 = add i32 %3657, 0
  %3873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3872, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3874 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3873, %dx.types.Handle %3857, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3874, 3
  %3879 = bitcast float %3676 to i32
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = lshr i32 %3879, 8
  %3883 = and i32 %3882, 255
  %3884 = uitofp i32 %3883 to float
  %3885 = lshr i32 %3879, 16
  %3886 = and i32 %3885, 255
  %3887 = uitofp i32 %3886 to float
  %3888 = fmul fast float %3887, 0x3F70101000000000
  %3889 = fmul fast float %3875, %3881
  %3890 = fadd fast float %3889, %3884
  %3891 = fmul fast float %3890, 0x3F70101000000000
  %3892 = fadd fast float %3876, -5.000000e-01
  %3893 = fadd fast float %3878, -5.000000e-01
  %3894 = fmul fast float %3892, %3888
  %3895 = fmul fast float %3893, %3888
  %3896 = fadd fast float %3894, 5.000000e-01
  %3897 = fadd fast float %3895, 5.000000e-01
  %3898 = fmul fast float %3859, %3685
  %3899 = fmul fast float %3860, %3686
  %3900 = fmul fast float %3861, %3687
  %3901 = fmul fast float %3896, 2.000000e+00
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = fmul fast float %3897, 2.000000e+00
  %3904 = fadd fast float %3903, -1.000000e+00
  %3905 = fadd fast float %3902, %3904
  %3906 = fmul fast float %3905, 5.000000e-01
  %3907 = fsub fast float %3902, %3904
  %3908 = fmul fast float %3907, 5.000000e-01
  %3909 = call float @dx.op.unary.f32(i32 6, float %3906)  ; FAbs(value)
  %3910 = fsub fast float 1.000000e+00, %3909
  %3911 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %3912 = fsub fast float %3910, %3911
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3906, float %3908, float %3912, float %3906, float %3908, float %3912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = call float @dx.op.unary.f32(i32 25, float %3913)  ; Rsqrt(value)
  %3915 = fmul fast float %3906, %3914
  %3916 = fmul fast float %3908, %3914
  %3917 = fmul fast float %3914, %3912
  %3918 = fmul fast float %3917, %3651
  %3919 = fmul fast float %3917, %3652
  %3920 = fmul fast float %3917, %3653
  %3921 = fmul fast float %3915, %3673
  %3922 = fmul fast float %3915, %3674
  %3923 = fmul fast float %3915, %3675
  %3924 = fadd fast float %3921, %3918
  %3925 = fadd fast float %3922, %3919
  %3926 = fadd fast float %3923, %3920
  %3927 = fmul fast float %3916, %3679
  %3928 = fmul fast float %3916, %3680
  %3929 = fmul fast float %3916, %3681
  %3930 = fadd fast float %3924, %3927
  %3931 = fadd fast float %3925, %3928
  %3932 = fadd fast float %3926, %3929
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3931, float %3932, float %3930, float %3931, float %3932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = call float @dx.op.unary.f32(i32 25, float %3933)  ; Rsqrt(value)
  %3935 = fmul fast float %3930, %3934
  %3936 = fmul fast float %3931, %3934
  %3937 = fmul fast float %3932, %3934
  %3938 = icmp ne i32 %3854, 0
  %3939 = select i1 %3938, float 1.000000e+00, float 0.000000e+00
  %3940 = fmul fast float %3844, %3939
  %3941 = and i32 %3774, 1
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %3943, label %3947

; <label>:3943                                    ; preds = %3852
  %3944 = fsub fast float %3935, %3633
  %3945 = fsub fast float %3936, %3634
  %3946 = fsub fast float %3937, %3635
  br label %3947

; <label>:3947                                    ; preds = %3943, %3852
  %3948 = phi float [ %3944, %3943 ], [ %3935, %3852 ]
  %3949 = phi float [ %3945, %3943 ], [ %3936, %3852 ]
  %3950 = phi float [ %3946, %3943 ], [ %3937, %3852 ]
  %3951 = fmul float %3950, %3940
  %3952 = fmul float %3949, %3940
  %3953 = fmul float %3948, %3940
  %3954 = fadd fast float %3953, %3633
  %3955 = fadd fast float %3952, %3634
  %3956 = fadd fast float %3951, %3635
  %3957 = icmp ne i32 %3853, 0
  %3958 = select i1 %3957, float 1.000000e+00, float 0.000000e+00
  %3959 = fmul fast float %3844, %3958
  %3960 = fsub fast float %3898, %3640
  %3961 = fsub fast float %3899, %3641
  %3962 = fsub fast float %3900, %3642
  %3963 = fmul fast float %3960, %3959
  %3964 = fmul fast float %3961, %3959
  %3965 = fmul fast float %3962, %3959
  %3966 = fadd fast float %3963, %3640
  %3967 = fadd fast float %3964, %3641
  %3968 = fadd fast float %3965, %3642
  %3969 = fsub fast float %3871, %3639
  %3970 = fmul fast float %3969, %3959
  %3971 = fadd fast float %3970, %3639
  %3972 = fmul fast float %3959, %3629
  %3973 = fsub fast float %3629, %3972
  %3974 = fmul fast float %3959, %3628
  %3975 = fsub fast float %3628, %3974
  %3976 = fadd fast float %3844, %3638
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fsub fast float %3891, %3637
  %3979 = fmul fast float %3978, %3940
  %3980 = fadd fast float %3979, %3637
  %3981 = fsub fast float %3877, %3636
  %3982 = fmul fast float %3981, %3940
  %3983 = fadd fast float %3982, %3636
  %3984 = call float @dx.op.dot3.f32(i32 55, float %3898, float %3899, float %3900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = fmul fast float %3987, %3984
  %3989 = fadd fast float %3988, %3986
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = bitcast float %3688 to i32
  %3992 = and i32 %3991, 65535
  %3993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3992)  ; LegacyF16ToF32(value)
  %3994 = lshr i32 %3991, 16
  %3995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3994)  ; LegacyF16ToF32(value)
  %3996 = fcmp fast oge float %3993, 0.000000e+00
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = select i1 %3996, float %3993, float %3998
  %4000 = fadd fast float %3999, %3995
  %4001 = fsub fast float %3990, %3627
  %4002 = fmul fast float %4001, %3844
  %4003 = fadd fast float %4002, %3627
  %4004 = fmul fast float %4000, %3844
  %4005 = call float @dx.op.binary.f32(i32 35, float %3626, float %4004)  ; FMax(a,b)
  %4006 = call float @dx.op.binary.f32(i32 35, float %3625, float %3844)  ; FMax(a,b)
  %4007 = and i32 %3774, 16
  %4008 = icmp eq i32 %4007, 0
  br i1 %4008, label %4031, label %4009

; <label>:4009                                    ; preds = %3947
  %4010 = bitcast float %3694 to i32
  %4011 = add i32 %3691, 0
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4011, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4012, %dx.types.Handle %3857, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = and i32 %4010, 65535
  %4018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4017)  ; LegacyF16ToF32(value)
  %4019 = fmul fast float %4014, %3685
  %4020 = fmul fast float %4015, %3686
  %4021 = fmul fast float %4016, %3687
  %4022 = and i32 %3774, 16384
  %4023 = icmp ne i32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = select i1 %4023, float %4025, float 1.000000e+00
  %4027 = fmul fast float %4026, %4018
  %4028 = fmul fast float %4019, %4027
  %4029 = fmul fast float %4020, %4027
  %4030 = fmul fast float %4021, %4027
  br label %4031

; <label>:4031                                    ; preds = %4009, %3947
  %4032 = phi float [ %4028, %4009 ], [ 0.000000e+00, %3947 ]
  %4033 = phi float [ %4029, %4009 ], [ 0.000000e+00, %3947 ]
  %4034 = phi float [ %4030, %4009 ], [ 0.000000e+00, %3947 ]
  %4035 = fsub fast float %4032, %3630
  %4036 = fsub fast float %4033, %3631
  %4037 = fsub fast float %4034, %3632
  %4038 = fmul fast float %4035, %3844
  %4039 = fmul fast float %4036, %3844
  %4040 = fmul fast float %4037, %3844
  %4041 = fadd fast float %4038, %3630
  %4042 = fadd fast float %4039, %3631
  %4043 = fadd fast float %4040, %3632
  br label %3744

; <label>:4044                                    ; preds = %3744
  br label %4045

; <label>:4045                                    ; preds = %4044, %3559
  %4046 = phi float [ 0.000000e+00, %3559 ], [ %3745, %4044 ]
  %4047 = phi float [ %1262, %3559 ], [ %3746, %4044 ]
  %4048 = phi float [ %3503, %3559 ], [ %3747, %4044 ]
  %4049 = phi float [ %3482, %3559 ], [ %3748, %4044 ]
  %4050 = phi float [ 0.000000e+00, %3559 ], [ %3749, %4044 ]
  %4051 = phi float [ 0.000000e+00, %3559 ], [ %3750, %4044 ]
  %4052 = phi float [ %3525, %3559 ], [ %3751, %4044 ]
  %4053 = phi float [ %3527, %3559 ], [ %3752, %4044 ]
  %4054 = phi float [ %3529, %3559 ], [ %3753, %4044 ]
  %4055 = phi float [ %3555, %3559 ], [ %3754, %4044 ]
  %4056 = phi float [ %3556, %3559 ], [ %3755, %4044 ]
  %4057 = phi float [ %3557, %3559 ], [ %3756, %4044 ]
  %4058 = phi float [ %3481, %3559 ], [ %3757, %4044 ]
  %4059 = phi float [ %3480, %3559 ], [ %3758, %4044 ]
  %4060 = phi float [ 0.000000e+00, %3559 ], [ %3759, %4044 ]
  %4061 = phi float [ %3479, %3559 ], [ %3760, %4044 ]
  %4062 = phi float [ %3510, %3559 ], [ %3761, %4044 ]
  %4063 = phi float [ %3511, %3559 ], [ %3762, %4044 ]
  %4064 = phi float [ %3512, %3559 ], [ %3763, %4044 ]
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4057, float %4055, float %4056, float %4057)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = call float @dx.op.unary.f32(i32 25, float %4065)  ; Rsqrt(value)
  %4067 = fmul fast float %4066, %4055
  %4068 = fmul fast float %4066, %4056
  %4069 = fmul fast float %4066, %4057
  %4070 = fadd fast float %4060, %1262
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float %4067, float %4068, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = call float @dx.op.unary.f32(i32 25, float %4072)  ; Rsqrt(value)
  %4074 = fmul fast float %4073, %4067
  %4075 = fmul fast float %4073, %4068
  %4076 = fmul fast float %4073, %4069
  br label %4077

; <label>:4077                                    ; preds = %4045, %3470
  %4078 = phi float [ %4074, %4045 ], [ %3555, %3470 ]
  %4079 = phi float [ %4075, %4045 ], [ %3556, %3470 ]
  %4080 = phi float [ %4076, %4045 ], [ %3557, %3470 ]
  %4081 = phi float [ %4062, %4045 ], [ %3510, %3470 ]
  %4082 = phi float [ %4063, %4045 ], [ %3511, %3470 ]
  %4083 = phi float [ %4064, %4045 ], [ %3512, %3470 ]
  %4084 = phi float [ %4052, %4045 ], [ %3525, %3470 ]
  %4085 = phi float [ %4053, %4045 ], [ %3527, %3470 ]
  %4086 = phi float [ %4054, %4045 ], [ %3529, %3470 ]
  %4087 = phi float [ %4061, %4045 ], [ %3479, %3470 ]
  %4088 = phi float [ %4071, %4045 ], [ %1262, %3470 ]
  %4089 = phi float [ %4059, %4045 ], [ %3480, %3470 ]
  %4090 = phi float [ %4058, %4045 ], [ %3481, %3470 ]
  %4091 = phi float [ %4051, %4045 ], [ 0.000000e+00, %3470 ]
  %4092 = phi float [ %4050, %4045 ], [ 0.000000e+00, %3470 ]
  %4093 = phi float [ %4046, %4045 ], [ 0.000000e+00, %3470 ]
  %4094 = phi float [ %4048, %4045 ], [ %3503, %3470 ]
  %4095 = phi float [ %4047, %4045 ], [ %1262, %3470 ]
  %4096 = phi float [ %4049, %4045 ], [ %3482, %3470 ]
  %4097 = fadd fast float %4087, 0xBFB99999A0000000
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = fmul fast float %4098, 0x3FF1C71C80000000
  %4100 = call float @dx.op.binary.f32(i32 36, float %4087, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4101 = fsub fast float 1.000000e+00, %4099
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fmul fast float %4102, %4081
  %4104 = fmul fast float %4102, %4082
  %4105 = fmul fast float %4102, %4083
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4109 = fmul fast float %4099, %4081
  %4110 = fmul fast float %4099, %4082
  %4111 = fmul fast float %4099, %4083
  %4112 = fadd fast float %4109, %4100
  %4113 = fadd fast float %4110, %4100
  %4114 = fadd fast float %4111, %4100
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.i32 %4119, 3
  %4121 = and i32 %4120, 8
  %4122 = icmp ne i32 %4121, 0
  %4123 = call float @dx.op.binary.f32(i32 35, float %4106, float %4081)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4107, float %4081)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 35, float %4108, float %4081)  ; FMax(a,b)
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4106, float %4107, float %4108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = select i1 %271, float %4081, float %4106
  %4128 = select i1 %271, float %4126, float %4107
  %4129 = select i1 %271, float 1.000000e+00, float %4108
  %4130 = select i1 %4122, float %4123, float %4127
  %4131 = select i1 %4122, float %4124, float %4128
  %4132 = select i1 %4122, float %4125, float %4129
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = fadd fast float %4134, %199
  %4138 = fadd fast float %4135, %200
  %4139 = fadd fast float %4136, %201
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4143 = fsub fast float %4137, %4141
  %4144 = fsub fast float %4138, %4142
  %4145 = fmul fast float %4143, %4143
  %4146 = fmul fast float %4144, %4144
  %4147 = fadd fast float %4145, %4146
  %4148 = call float @dx.op.unary.f32(i32 24, float %4147)  ; Sqrt(value)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4150 = fcmp fast olt float %4148, %4149
  br i1 %4150, label %4151, label %4218

; <label>:4151                                    ; preds = %4077
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4162 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4163 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4164 = fadd fast float %4161, %4137
  %4165 = fadd fast float %4162, %4138
  %4166 = fadd fast float %4163, %4139
  %4167 = fmul fast float %4164, %4153
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4155, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = fmul fast float %4164, %4158
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4159, float %4170)  ; FMad(a,b,c)
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = fsub fast float %4169, %4161
  %4174 = fsub fast float %4172, %4162
  %4175 = fsub fast float %4173, %4141
  %4176 = fadd fast float %4175, %4149
  %4177 = fsub fast float %4174, %4142
  %4178 = fadd fast float %4177, %4149
  %4179 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4180 = fmul fast float %4176, %4179
  %4181 = fmul fast float %4178, %4179
  %4182 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4184 = fsub fast float 1.000000e+00, %4182
  %4185 = fsub fast float 1.000000e+00, %4183
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = fcmp fast ugt float %4187, 0.000000e+00
  br i1 %4188, label %4189, label %4492

; <label>:4189                                    ; preds = %4151
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4192 = fmul fast float %4191, %4187
  %4193 = extractvalue %dx.types.CBufRet.f32 %4190, 3
  %4194 = fadd fast float %4193, %4192
  %4195 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4196 = fadd fast float %4194, %4163
  %4197 = fmul fast float %4169, %4157
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4160, float %4197)  ; FMad(a,b,c)
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4195, float %4198)  ; FMad(a,b,c)
  %4200 = fsub fast float %4199, %4163
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4203 = fsub fast float %4200, %4202
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = fadd fast float %4209, %4205
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  %4214 = fadd fast float %4210, %4206
  %4215 = fmul fast float %4214, 0x3F847AE140000000
  %4216 = fadd fast float %4211, %4207
  %4217 = fmul fast float %4216, 0x3F847AE140000000
  br label %4492

; <label>:4218                                    ; preds = %4077
  %4219 = and i32 %250, 1
  %4220 = icmp eq i32 %4219, 0
  br i1 %4220, label %4492, label %4221

; <label>:4221                                    ; preds = %4218
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4230 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4231 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4232 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4233 = extractvalue %dx.types.CBufRet.f32 %4226, 3
  %4234 = fadd fast float %4231, %4137
  %4235 = fadd fast float %4232, %4138
  %4236 = fadd fast float %4233, %4139
  %4237 = fmul fast float %4234, %4223
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4225, float %4237)  ; FMad(a,b,c)
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = fmul fast float %4234, %4228
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4229, float %4240)  ; FMad(a,b,c)
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4230, float %4241)  ; FMad(a,b,c)
  %4243 = fsub fast float %4239, %4231
  %4244 = fsub fast float %4242, %4232
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 3
  %4252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.i32 %4252, 0
  %4254 = extractvalue %dx.types.CBufRet.i32 %4252, 1
  %4255 = udiv i32 %4254, %4253
  %4256 = fsub fast float %4243, %4246
  %4257 = fsub fast float %4244, %4247
  %4258 = call float @dx.op.binary.f32(i32 35, float %4256, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4260 = call float @dx.op.binary.f32(i32 36, float %4258, float %4248)  ; FMin(a,b)
  %4261 = call float @dx.op.binary.f32(i32 36, float %4259, float %4249)  ; FMin(a,b)
  %4262 = add i32 %4253, -1
  %4263 = add i32 %4255, -1
  %4264 = fmul fast float %4260, %4251
  %4265 = fmul fast float %4261, %4251
  %4266 = fptoui float %4264 to i32
  %4267 = fptoui float %4265 to i32
  %4268 = call i32 @dx.op.binary.i32(i32 40, i32 %4266, i32 %4262)  ; UMin(a,b)
  %4269 = call i32 @dx.op.binary.i32(i32 40, i32 %4267, i32 %4263)  ; UMin(a,b)
  %4270 = mul i32 %4269, %4253
  %4271 = add i32 %4270, %4268
  %4272 = shl i32 %4271, 2
  %4273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.i32 %4273, 0
  %4275 = icmp eq i32 %4274, -1
  br i1 %4275, label %4492, label %4276

; <label>:4276                                    ; preds = %4221
  %4277 = mul i32 %4274, 148
  %4278 = add i32 %4277, 4
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = add i32 %4277, 8
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4277, 36
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4277, 60
  %4288 = add i32 %4277, 92
  %4289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.i32 %4289, 0
  %4291 = add i32 %4277, 116
  %4292 = fsub fast float %4243, %4280
  %4293 = fsub fast float %4244, %4283
  %4294 = fmul fast float %4251, %4292
  %4295 = fmul fast float %4251, %4293
  %4296 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4298 = fsub fast float 1.000000e+00, %4297
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4301 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4302 = call float @dx.op.unary.f32(i32 83, float %4298)  ; DerivCoarseX(value)
  %4303 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4304 = call float @dx.op.unary.f32(i32 84, float %4298)  ; DerivCoarseY(value)
  %4305 = fmul fast float %4301, %4300
  %4306 = fmul fast float %4302, %4300
  %4307 = fmul fast float %4303, %4300
  %4308 = fmul fast float %4304, %4300
  %4309 = call float @dx.op.dot2.f32(i32 54, float %4307, float %4308, float %4307, float %4308)  ; Dot2(ax,ay,bx,by)
  %4310 = call float @dx.op.dot2.f32(i32 54, float %4305, float %4306, float %4305, float %4306)  ; Dot2(ax,ay,bx,by)
  %4311 = call float @dx.op.binary.f32(i32 35, float %4310, float %4309)  ; FMax(a,b)
  %4312 = call float @dx.op.unary.f32(i32 23, float %4311)  ; Log(value)
  %4313 = fmul fast float %4312, 5.000000e-01
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4316 = fadd fast float %4315, %4313
  %4317 = call float @dx.op.binary.f32(i32 35, float %4316, float 0.000000e+00)  ; FMax(a,b)
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4320 = fadd fast float %4319, %4317
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = fadd fast float %4320, %4322
  %4324 = add i32 %4290, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4325, i32 0)  ; GetDimensions(handle,mipLevel)
  %4327 = extractvalue %dx.types.Dimensions %4326, 0
  %4328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4327)  ; FirstbitLo(value)
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 1
  %4331 = sub nsw i32 %4330, %4328
  %4332 = sitofp i32 %4331 to float
  %4333 = fsub fast float %4323, %4332
  %4334 = call float @dx.op.binary.f32(i32 35, float %4333, float 0.000000e+00)  ; FMax(a,b)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4325, %dx.types.Handle %48, float %4296, float %4298, float %4286, float undef, i32 0, i32 0, i32 undef, float %4334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = fcmp ule float %4336, 0x3FE0101020000000
  %4338 = extractvalue %dx.types.CBufRet.i32 %4329, 0
  %4339 = and i32 %4338, 128
  %4340 = icmp ne i32 %4339, 0
  %4341 = and i1 %4337, %4340
  br i1 %4341, label %4492, label %4342

; <label>:4342                                    ; preds = %4276
  %4343 = add i32 %4277, 20
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = add i32 %4277, 24
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = add i32 %4277, 40
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = add i32 %4277, 96
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = fmul fast float %4356, %4296
  %4358 = fmul fast float %4356, %4298
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4360 = fadd fast float %4357, %4359
  %4361 = fadd fast float %4358, %4359
  %4362 = add i32 %4354, 0
  %4363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4363, i32 0)  ; GetDimensions(handle,mipLevel)
  %4365 = extractvalue %dx.types.Dimensions %4364, 0
  %4366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4365)  ; FirstbitLo(value)
  %4367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.i32 %4367, 1
  %4369 = sub nsw i32 %4368, %4366
  %4370 = sitofp i32 %4369 to float
  %4371 = fsub fast float %4320, %4370
  %4372 = call float @dx.op.binary.f32(i32 35, float %4371, float 0.000000e+00)  ; FMax(a,b)
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4363, %dx.types.Handle %48, float %4360, float %4361, float %4351, float undef, i32 0, i32 0, i32 undef, float %4372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = fmul fast float %4374, %4345
  %4376 = fadd fast float %4375, %4348
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4385 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4386 = fadd fast float %4382, %4243
  %4387 = fadd fast float %4384, %4244
  %4388 = fadd fast float %4376, %4385
  %4389 = fmul fast float %4386, %4378
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4379, float %4389)  ; FMad(a,b,c)
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4388, float %4380, float %4390)  ; FMad(a,b,c)
  %4392 = fsub fast float %4391, %4385
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4395 = fsub fast float %4392, %4394
  %4396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.i32 %4396, 0
  %4398 = call i32 @dx.op.binary.i32(i32 40, i32 %4274, i32 %4397)  ; UMin(a,b)
  %4399 = mul i32 %4398, 36
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = add i32 %4399, 4
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = fmul fast float %4404, %4296
  %4406 = fmul fast float %4404, %4298
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4408 = fadd fast float %4405, %4407
  %4409 = fadd fast float %4406, %4407
  %4410 = icmp eq i32 %4401, 0
  br i1 %4410, label %4479, label %4411

; <label>:4411                                    ; preds = %4342
  br label %4412

; <label>:4412                                    ; preds = %4469, %4411
  %4413 = phi float [ %4470, %4469 ], [ 0.000000e+00, %4411 ]
  %4414 = phi float [ %4471, %4469 ], [ 0.000000e+00, %4411 ]
  %4415 = phi float [ %4472, %4469 ], [ 0.000000e+00, %4411 ]
  %4416 = phi float [ %4473, %4469 ], [ 0.000000e+00, %4411 ]
  %4417 = phi float [ %4474, %4469 ], [ 0.000000e+00, %4411 ]
  %4418 = phi float [ %4475, %4469 ], [ 0.000000e+00, %4411 ]
  %4419 = phi i32 [ %4476, %4469 ], [ 0, %4411 ]
  %4420 = shl i32 %4419, 2
  %4421 = add i32 %4287, %4420
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = add i32 %4291, %4420
  %4425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4424, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.i32 %4425, 0
  %4427 = add i32 %4426, 0
  %4428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4427, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4429 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4428, i32 0)  ; GetDimensions(handle,mipLevel)
  %4430 = extractvalue %dx.types.Dimensions %4429, 0
  %4431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4430)  ; FirstbitLo(value)
  %4432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.i32 %4432, 1
  %4434 = sub nsw i32 %4433, %4431
  %4435 = sitofp i32 %4434 to float
  %4436 = fsub fast float %4320, %4435
  %4437 = call float @dx.op.binary.f32(i32 35, float %4436, float 0.000000e+00)  ; FMax(a,b)
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4428, %dx.types.Handle %48, float %4408, float %4409, float %4423, float undef, i32 0, i32 0, i32 undef, float %4437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = fcmp fast ogt float %4439, 0.000000e+00
  br i1 %4440, label %4441, label %4469

; <label>:4441                                    ; preds = %4412
  %4442 = add i32 %4402, %4420
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = and i32 %4444, 32767
  %4446 = mul nuw nsw i32 %4445, 928
  %4447 = add nuw nsw i32 %4446, 48
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = add nuw nsw i32 %4446, 60
  %4453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = fmul fast float %4449, %4439
  %4458 = fmul fast float %4450, %4439
  %4459 = fmul fast float %4451, %4439
  %4460 = fadd fast float %4457, %4413
  %4461 = fadd fast float %4458, %4414
  %4462 = fadd fast float %4459, %4415
  %4463 = fmul fast float %4454, %4439
  %4464 = fmul fast float %4455, %4439
  %4465 = fmul fast float %4456, %4439
  %4466 = fadd fast float %4463, %4416
  %4467 = fadd fast float %4464, %4417
  %4468 = fadd fast float %4465, %4418
  br label %4469

; <label>:4469                                    ; preds = %4441, %4412
  %4470 = phi float [ %4460, %4441 ], [ %4413, %4412 ]
  %4471 = phi float [ %4461, %4441 ], [ %4414, %4412 ]
  %4472 = phi float [ %4462, %4441 ], [ %4415, %4412 ]
  %4473 = phi float [ %4466, %4441 ], [ %4416, %4412 ]
  %4474 = phi float [ %4467, %4441 ], [ %4417, %4412 ]
  %4475 = phi float [ %4468, %4441 ], [ %4418, %4412 ]
  %4476 = add nuw i32 %4419, 1
  %4477 = icmp eq i32 %4476, %4401
  br i1 %4477, label %4478, label %4412

; <label>:4478                                    ; preds = %4469
  br label %4479

; <label>:4479                                    ; preds = %4478, %4342
  %4480 = phi float [ 0.000000e+00, %4342 ], [ %4470, %4478 ]
  %4481 = phi float [ 0.000000e+00, %4342 ], [ %4471, %4478 ]
  %4482 = phi float [ 0.000000e+00, %4342 ], [ %4472, %4478 ]
  %4483 = phi float [ 0.000000e+00, %4342 ], [ %4473, %4478 ]
  %4484 = phi float [ 0.000000e+00, %4342 ], [ %4474, %4478 ]
  %4485 = phi float [ 0.000000e+00, %4342 ], [ %4475, %4478 ]
  %4486 = fadd fast float %4483, %4480
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  %4488 = fadd fast float %4484, %4481
  %4489 = fmul fast float %4488, 0x3F847AE140000000
  %4490 = fadd fast float %4485, %4482
  %4491 = fmul fast float %4490, 0x3F847AE140000000
  br label %4492

; <label>:4492                                    ; preds = %4479, %4276, %4221, %4218, %4189, %4151
  %4493 = phi float [ %4203, %4189 ], [ -1.310720e+05, %4151 ], [ %4395, %4479 ], [ -1.310720e+05, %4221 ], [ -1.310720e+05, %4276 ], [ -1.310720e+05, %4218 ]
  %4494 = phi float [ %4213, %4189 ], [ 0.000000e+00, %4151 ], [ %4487, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4495 = phi float [ %4215, %4189 ], [ 0.000000e+00, %4151 ], [ %4489, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4496 = phi float [ %4217, %4189 ], [ 0.000000e+00, %4151 ], [ %4491, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4497 = phi i1 [ true, %4189 ], [ false, %4151 ], [ true, %4479 ], [ false, %4221 ], [ false, %4276 ], [ false, %4218 ]
  %4498 = and i32 %250, 3
  %4499 = icmp eq i32 %4498, 1
  %4500 = select i1 %4499, float 1.000000e+00, float 0.000000e+00
  %4501 = fsub fast float %4493, %201
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = select i1 %4497, float %4502, float 1.000000e+00
  %4504 = fmul fast float %4503, %4500
  %4505 = icmp eq i32 %4498, 3
  %4506 = select i1 %4505, float 1.000000e+00, float %4504
  %4507 = call float @dx.op.binary.f32(i32 35, float %4093, float %4506)  ; FMax(a,b)
  %4508 = fcmp fast olt float %4506, 1.000000e+00
  %4509 = fcmp uge float %76, 0.000000e+00
  %4510 = and i1 %4509, %4508
  br i1 %4510, label %4511, label %4521

; <label>:4511                                    ; preds = %4492
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %76, float %77, float %78, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = fadd fast float %4513, %4507
  %4517 = fcmp ule float %75, 0.000000e+00
  %4518 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = select i1 %4517, float %4518, float 1.000000e+00
  %4520 = fmul fast float %4519, %4515
  br label %4521

; <label>:4521                                    ; preds = %4511, %4492
  %4522 = phi float [ %4516, %4511 ], [ %4507, %4492 ]
  %4523 = phi float [ %4514, %4511 ], [ 0.000000e+00, %4492 ]
  %4524 = phi float [ %4520, %4511 ], [ 0.000000e+00, %4492 ]
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = fcmp fast une float %4526, 0.000000e+00
  %4529 = fcmp fast une float %4527, 0.000000e+00
  %4530 = or i1 %4528, %4529
  br i1 %4530, label %4531, label %5090

; <label>:4531                                    ; preds = %4521
  br i1 %4528, label %4532, label %4805

; <label>:4532                                    ; preds = %4531
  %4533 = call float @dx.op.unary.f32(i32 23, float %4090)  ; Log(value)
  %4534 = fmul fast float %4533, 4.000000e+00
  %4535 = call float @dx.op.unary.f32(i32 21, float %4534)  ; Exp(value)
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %62
  %4539 = fmul fast float %4537, %63
  %4540 = fmul fast float %4537, %64
  %4541 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4542 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4543 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4544 = call float @dx.op.unary.f32(i32 23, float %4541)  ; Log(value)
  %4545 = call float @dx.op.unary.f32(i32 23, float %4542)  ; Log(value)
  %4546 = call float @dx.op.unary.f32(i32 23, float %4543)  ; Log(value)
  %4547 = fmul fast float %4544, 4.000000e+00
  %4548 = fmul fast float %4545, 4.000000e+00
  %4549 = fmul fast float %4546, 4.000000e+00
  %4550 = call float @dx.op.unary.f32(i32 21, float %4547)  ; Exp(value)
  %4551 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4552 = call float @dx.op.unary.f32(i32 21, float %4549)  ; Exp(value)
  %4553 = fadd fast float %4551, %4550
  %4554 = fadd fast float %4553, %4552
  %4555 = fdiv fast float 1.000000e+00, %4554
  %4556 = fmul fast float %4555, %4550
  %4557 = fcmp fast ogt float %72, 0.000000e+00
  %4558 = fcmp fast ogt float %73, 0.000000e+00
  %4559 = fcmp fast ogt float %74, 0.000000e+00
  %4560 = fcmp fast olt float %72, 0.000000e+00
  %4561 = fcmp fast olt float %73, 0.000000e+00
  %4562 = fcmp fast olt float %74, 0.000000e+00
  %4563 = zext i1 %4557 to i32
  %4564 = zext i1 %4558 to i32
  %4565 = zext i1 %4559 to i32
  %4566 = zext i1 %4560 to i32
  %4567 = zext i1 %4561 to i32
  %4568 = zext i1 %4562 to i32
  %4569 = sub nsw i32 %4563, %4566
  %4570 = sub nsw i32 %4564, %4567
  %4571 = sub nsw i32 %4565, %4568
  %4572 = call float @dx.op.unary.f32(i32 83, float %4538)  ; DerivCoarseX(value)
  %4573 = call float @dx.op.unary.f32(i32 83, float %4539)  ; DerivCoarseX(value)
  %4574 = call float @dx.op.unary.f32(i32 83, float %4540)  ; DerivCoarseX(value)
  %4575 = call float @dx.op.unary.f32(i32 84, float %4538)  ; DerivCoarseY(value)
  %4576 = call float @dx.op.unary.f32(i32 84, float %4539)  ; DerivCoarseY(value)
  %4577 = call float @dx.op.unary.f32(i32 84, float %4540)  ; DerivCoarseY(value)
  %4578 = fcmp fast ole float %282, %4556
  %4579 = fmul fast float %4555, %4553
  %4580 = fcmp fast ole float %282, %4579
  %4581 = select i1 %4580, float %4540, float %4538
  %4582 = select i1 %4580, float %4538, float %4539
  %4583 = select i1 %4578, float %4539, float %4581
  %4584 = select i1 %4578, float %4540, float %4582
  %4585 = select i1 %4580, float %4574, float %4572
  %4586 = select i1 %4580, float %4572, float %4573
  %4587 = select i1 %4578, float %4573, float %4585
  %4588 = select i1 %4578, float %4574, float %4586
  %4589 = select i1 %4580, float %4577, float %4575
  %4590 = select i1 %4580, float %4575, float %4576
  %4591 = select i1 %4578, float %4576, float %4589
  %4592 = select i1 %4578, float %4577, float %4590
  %4593 = call float @dx.op.unary.f32(i32 27, float %4583)  ; Round_ni(value)
  %4594 = call float @dx.op.unary.f32(i32 27, float %4584)  ; Round_ni(value)
  %4595 = fptosi float %4593 to i32
  %4596 = fptosi float %4594 to i32
  %4597 = xor i32 %4596, %4595
  %4598 = sitofp i32 %4597 to float
  %4599 = fptosi float %4598 to i32
  %4600 = sitofp i32 %4599 to float
  %4601 = fmul fast float %4600, 0x3FE3C6EF40000000
  %4602 = frem fast float %4593, 2.560000e+02
  %4603 = frem fast float %4594, 2.560000e+02
  %4604 = fptoui float %4602 to i32
  %4605 = fptoui float %4603 to i32
  %4606 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4604, i32 %4605, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = fadd fast float %4607, %4601
  %4611 = fadd fast float %4608, %4601
  %4612 = fadd fast float %4609, %4601
  %4613 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4614 = call float @dx.op.unary.f32(i32 22, float %4611)  ; Frc(value)
  %4615 = call float @dx.op.unary.f32(i32 22, float %4612)  ; Frc(value)
  %4616 = fmul fast float %4615, 0x401921FB60000000
  %4617 = call float @dx.op.unary.f32(i32 13, float %4616)  ; Sin(value)
  %4618 = call float @dx.op.unary.f32(i32 12, float %4616)  ; Cos(value)
  %4619 = fsub fast float -0.000000e+00, %4618
  %4620 = fmul fast float %4618, %4583
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4584, float %4620)  ; FMad(a,b,c)
  %4622 = fmul fast float %4617, %4583
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4584, float %4622)  ; FMad(a,b,c)
  %4624 = fadd fast float %4621, %4613
  %4625 = fadd fast float %4623, %4614
  %4626 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4627 = bitcast float %4626 to i32
  %4628 = icmp eq i32 %4627, 0
  br i1 %4628, label %4667, label %4629

; <label>:4629                                    ; preds = %4532
  %4630 = add i32 %4627, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4631, %dx.types.Handle %113, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4634, 2
  %4637 = fsub fast float 1.000000e+00, %4526
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4639 = bitcast float %4526 to i32
  %4640 = sitofp i32 %4639 to float
  %4641 = fadd fast float %4640, 0xC1CFBF8940000000
  %4642 = fmul fast float %4636, %4641
  %4643 = fadd fast float %4642, 0x41CFBF8940000000
  %4644 = fptosi float %4643 to i32
  %4645 = bitcast i32 %4644 to float
  %4646 = bitcast float %4638 to i32
  %4647 = sitofp i32 %4646 to float
  %4648 = fadd fast float %4647, 0xC1CFBF8940000000
  %4649 = fmul fast float %4648, %4636
  %4650 = fadd fast float %4649, 0x41CFBF8940000000
  %4651 = fptosi float %4650 to i32
  %4652 = bitcast i32 %4651 to float
  %4653 = fmul fast float %4645, %4635
  %4654 = fmul fast float %4652, %4635
  %4655 = fsub fast float %4638, %4653
  %4656 = fadd fast float %4654, %4638
  %4657 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4659 = fsub fast float %4633, %4657
  %4660 = fsub fast float %4658, %4657
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, %4659
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fcmp fast olt float %4665, 0x3F70101020000000
  br i1 %4666, label %4805, label %4667

; <label>:4667                                    ; preds = %4629, %4532
  %4668 = phi float [ %4665, %4629 ], [ %4526, %4532 ]
  %4669 = fmul fast float %4668, %4535
  %4670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.i32 %4670, 1
  %4672 = extractvalue %dx.types.CBufRet.i32 %4670, 0
  %4673 = add i32 %4672, 0
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4674, %dx.types.Handle %112, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4679 = extractvalue %dx.types.ResRet.f32 %4675, 3
  %4680 = and i32 %4671, 255
  %4681 = uitofp i32 %4680 to float
  %4682 = lshr i32 %4671, 8
  %4683 = and i32 %4682, 255
  %4684 = uitofp i32 %4683 to float
  %4685 = fmul fast float %4679, %4681
  %4686 = fadd fast float %4685, %4684
  %4687 = fmul fast float %4686, 0x3F70101000000000
  %4688 = fadd fast float %4687, 0xBFB99999A0000000
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, 0x3FF1C71C80000000
  %4691 = call float @dx.op.binary.f32(i32 36, float %4687, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4692 = fsub fast float 1.000000e+00, %4690
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, %4676
  %4695 = fmul fast float %4693, %4677
  %4696 = fmul fast float %4693, %4678
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = fmul fast float %4690, %4676
  %4701 = fmul fast float %4690, %4677
  %4702 = fmul fast float %4690, %4678
  %4703 = fadd fast float %4700, %4691
  %4704 = fadd fast float %4701, %4691
  %4705 = fadd fast float %4702, %4691
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.i32 %4709, 3
  %4711 = extractvalue %dx.types.CBufRet.i32 %4709, 2
  %4712 = add i32 %4711, 0
  %4713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4713, %dx.types.Handle %112, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.ResRet.f32 %4714, 1
  %4717 = extractvalue %dx.types.ResRet.f32 %4714, 2
  %4718 = extractvalue %dx.types.ResRet.f32 %4714, 3
  %4719 = and i32 %4710, 255
  %4720 = uitofp i32 %4719 to float
  %4721 = lshr i32 %4710, 8
  %4722 = and i32 %4721, 255
  %4723 = uitofp i32 %4722 to float
  %4724 = lshr i32 %4710, 16
  %4725 = and i32 %4724, 255
  %4726 = uitofp i32 %4725 to float
  %4727 = fmul fast float %4726, 0x3F70101000000000
  %4728 = fmul fast float %4715, %4720
  %4729 = fadd fast float %4728, %4723
  %4730 = fmul fast float %4729, 0x3F70101000000000
  %4731 = fadd fast float %4716, -5.000000e-01
  %4732 = fadd fast float %4718, -5.000000e-01
  %4733 = fmul fast float %4731, %4727
  %4734 = fmul fast float %4732, %4727
  %4735 = fadd fast float %4733, 5.000000e-01
  %4736 = fadd fast float %4734, 5.000000e-01
  %4737 = fmul fast float %4735, 2.000000e+00
  %4738 = fadd fast float %4737, -1.000000e+00
  %4739 = fmul fast float %4736, 2.000000e+00
  %4740 = fadd fast float %4739, -1.000000e+00
  %4741 = fadd fast float %4738, %4740
  %4742 = fmul fast float %4741, 5.000000e-01
  %4743 = fsub fast float %4738, %4740
  %4744 = fmul fast float %4743, 5.000000e-01
  %4745 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = call float @dx.op.unary.f32(i32 6, float %4744)  ; FAbs(value)
  %4748 = fsub fast float %4746, %4747
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4744, float %4748, float %4742, float %4744, float %4748)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 25, float %4749)  ; Rsqrt(value)
  %4751 = fmul fast float %4742, %4750
  %4752 = fmul fast float %4744, %4750
  %4753 = select i1 %4580, i32 %4570, i32 %4571
  %4754 = select i1 %4578, i32 %4569, i32 %4753
  %4755 = sitofp i32 %4754 to float
  %4756 = fmul fast float %4748, %4755
  %4757 = fmul fast float %4756, %4750
  %4758 = select i1 %4580, float %4757, float %4752
  %4759 = select i1 %4580, float %4752, float %4757
  %4760 = select i1 %4578, float %4757, float %4751
  %4761 = select i1 %4578, float %4752, float %4758
  %4762 = select i1 %4578, float %4751, float %4759
  %4763 = fsub fast float %4697, %4130
  %4764 = fsub fast float %4698, %4131
  %4765 = fsub fast float %4699, %4132
  %4766 = fmul fast float %4763, %4669
  %4767 = fmul fast float %4764, %4669
  %4768 = fmul fast float %4765, %4669
  %4769 = fadd fast float %4766, %4130
  %4770 = fadd fast float %4767, %4131
  %4771 = fadd fast float %4768, %4132
  %4772 = fsub fast float %4706, %4115
  %4773 = fsub fast float %4707, %4116
  %4774 = fsub fast float %4708, %4117
  %4775 = fmul fast float %4772, %4669
  %4776 = fmul fast float %4773, %4669
  %4777 = fmul fast float %4774, %4669
  %4778 = fadd fast float %4775, %4115
  %4779 = fadd fast float %4776, %4116
  %4780 = fadd fast float %4777, %4117
  %4781 = fadd fast float %4760, %4078
  %4782 = fadd fast float %4761, %4079
  %4783 = fadd fast float %4762, %4080
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = call float @dx.op.unary.f32(i32 25, float %4784)  ; Rsqrt(value)
  %4786 = fmul fast float %4781, %4785
  %4787 = fmul fast float %4782, %4785
  %4788 = fmul fast float %4783, %4785
  %4789 = fsub fast float %4786, %4078
  %4790 = fsub fast float %4787, %4079
  %4791 = fsub fast float %4788, %4080
  %4792 = fmul fast float %4789, %4669
  %4793 = fmul fast float %4790, %4669
  %4794 = fmul fast float %4791, %4669
  %4795 = fadd fast float %4792, %4078
  %4796 = fadd fast float %4793, %4079
  %4797 = fadd fast float %4794, %4080
  %4798 = call float @dx.op.binary.f32(i32 36, float %4090, float %4717)  ; FMin(a,b)
  %4799 = fsub fast float %4798, %4090
  %4800 = fmul fast float %4799, %4669
  %4801 = fadd fast float %4800, %4090
  %4802 = fsub fast float %4730, %4118
  %4803 = fmul fast float %4802, %4669
  %4804 = fadd fast float %4803, %4118
  br label %4805

; <label>:4805                                    ; preds = %4667, %4629, %4531
  %4806 = phi float [ %4769, %4667 ], [ %4130, %4629 ], [ %4130, %4531 ]
  %4807 = phi float [ %4770, %4667 ], [ %4131, %4629 ], [ %4131, %4531 ]
  %4808 = phi float [ %4771, %4667 ], [ %4132, %4629 ], [ %4132, %4531 ]
  %4809 = phi float [ %4778, %4667 ], [ %4115, %4629 ], [ %4115, %4531 ]
  %4810 = phi float [ %4779, %4667 ], [ %4116, %4629 ], [ %4116, %4531 ]
  %4811 = phi float [ %4780, %4667 ], [ %4117, %4629 ], [ %4117, %4531 ]
  %4812 = phi float [ %4795, %4667 ], [ %4078, %4629 ], [ %4078, %4531 ]
  %4813 = phi float [ %4796, %4667 ], [ %4079, %4629 ], [ %4079, %4531 ]
  %4814 = phi float [ %4797, %4667 ], [ %4080, %4629 ], [ %4080, %4531 ]
  %4815 = phi float [ %4804, %4667 ], [ %4118, %4629 ], [ %4118, %4531 ]
  %4816 = phi float [ %4801, %4667 ], [ %4090, %4629 ], [ %4090, %4531 ]
  br i1 %4529, label %4817, label %5090

; <label>:4817                                    ; preds = %4805
  %4818 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4819 = fmul fast float %4818, 4.000000e+00
  %4820 = call float @dx.op.unary.f32(i32 21, float %4819)  ; Exp(value)
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = fmul fast float %4822, %62
  %4824 = fmul fast float %4822, %63
  %4825 = fmul fast float %4822, %64
  %4826 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4827 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4828 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4829 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4830 = call float @dx.op.unary.f32(i32 23, float %4827)  ; Log(value)
  %4831 = call float @dx.op.unary.f32(i32 23, float %4828)  ; Log(value)
  %4832 = fmul fast float %4829, 4.000000e+00
  %4833 = fmul fast float %4830, 4.000000e+00
  %4834 = fmul fast float %4831, 4.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 21, float %4832)  ; Exp(value)
  %4836 = call float @dx.op.unary.f32(i32 21, float %4833)  ; Exp(value)
  %4837 = call float @dx.op.unary.f32(i32 21, float %4834)  ; Exp(value)
  %4838 = fadd fast float %4836, %4835
  %4839 = fadd fast float %4838, %4837
  %4840 = fdiv fast float 1.000000e+00, %4839
  %4841 = fmul fast float %4840, %4835
  %4842 = fcmp fast ogt float %72, 0.000000e+00
  %4843 = fcmp fast ogt float %73, 0.000000e+00
  %4844 = fcmp fast ogt float %74, 0.000000e+00
  %4845 = fcmp fast olt float %72, 0.000000e+00
  %4846 = fcmp fast olt float %73, 0.000000e+00
  %4847 = fcmp fast olt float %74, 0.000000e+00
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = zext i1 %4844 to i32
  %4851 = zext i1 %4845 to i32
  %4852 = zext i1 %4846 to i32
  %4853 = zext i1 %4847 to i32
  %4854 = sub nsw i32 %4848, %4851
  %4855 = sub nsw i32 %4849, %4852
  %4856 = sub nsw i32 %4850, %4853
  %4857 = call float @dx.op.unary.f32(i32 83, float %4823)  ; DerivCoarseX(value)
  %4858 = call float @dx.op.unary.f32(i32 83, float %4824)  ; DerivCoarseX(value)
  %4859 = call float @dx.op.unary.f32(i32 83, float %4825)  ; DerivCoarseX(value)
  %4860 = call float @dx.op.unary.f32(i32 84, float %4823)  ; DerivCoarseY(value)
  %4861 = call float @dx.op.unary.f32(i32 84, float %4824)  ; DerivCoarseY(value)
  %4862 = call float @dx.op.unary.f32(i32 84, float %4825)  ; DerivCoarseY(value)
  %4863 = fcmp fast ole float %282, %4841
  %4864 = fmul fast float %4840, %4838
  %4865 = fcmp fast ole float %282, %4864
  %4866 = select i1 %4865, float %4825, float %4823
  %4867 = select i1 %4865, float %4823, float %4824
  %4868 = select i1 %4863, float %4824, float %4866
  %4869 = select i1 %4863, float %4825, float %4867
  %4870 = select i1 %4865, float %4859, float %4857
  %4871 = select i1 %4865, float %4857, float %4858
  %4872 = select i1 %4863, float %4858, float %4870
  %4873 = select i1 %4863, float %4859, float %4871
  %4874 = select i1 %4865, float %4862, float %4860
  %4875 = select i1 %4865, float %4860, float %4861
  %4876 = select i1 %4863, float %4861, float %4874
  %4877 = select i1 %4863, float %4862, float %4875
  %4878 = call float @dx.op.unary.f32(i32 27, float %4868)  ; Round_ni(value)
  %4879 = call float @dx.op.unary.f32(i32 27, float %4869)  ; Round_ni(value)
  %4880 = fptosi float %4878 to i32
  %4881 = fptosi float %4879 to i32
  %4882 = xor i32 %4881, %4880
  %4883 = sitofp i32 %4882 to float
  %4884 = fptosi float %4883 to i32
  %4885 = sitofp i32 %4884 to float
  %4886 = fmul fast float %4885, 0x3FE3C6EF40000000
  %4887 = frem fast float %4878, 2.560000e+02
  %4888 = frem fast float %4879, 2.560000e+02
  %4889 = fptoui float %4887 to i32
  %4890 = fptoui float %4888 to i32
  %4891 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4889, i32 %4890, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = fadd fast float %4892, %4886
  %4896 = fadd fast float %4893, %4886
  %4897 = fadd fast float %4894, %4886
  %4898 = call float @dx.op.unary.f32(i32 22, float %4895)  ; Frc(value)
  %4899 = call float @dx.op.unary.f32(i32 22, float %4896)  ; Frc(value)
  %4900 = call float @dx.op.unary.f32(i32 22, float %4897)  ; Frc(value)
  %4901 = fmul fast float %4900, 0x401921FB60000000
  %4902 = call float @dx.op.unary.f32(i32 13, float %4901)  ; Sin(value)
  %4903 = call float @dx.op.unary.f32(i32 12, float %4901)  ; Cos(value)
  %4904 = fsub fast float -0.000000e+00, %4903
  %4905 = fmul fast float %4903, %4868
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4869, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4902, %4868
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4869, float %4907)  ; FMad(a,b,c)
  %4909 = fadd fast float %4906, %4898
  %4910 = fadd fast float %4908, %4899
  %4911 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4912 = bitcast float %4911 to i32
  %4913 = icmp eq i32 %4912, 0
  br i1 %4913, label %4952, label %4914

; <label>:4914                                    ; preds = %4817
  %4915 = add i32 %4912, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4916, %dx.types.Handle %113, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4922 = fsub fast float 1.000000e+00, %4527
  %4923 = call float @dx.op.binary.f32(i32 35, float %4922, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4924 = bitcast float %4527 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fadd fast float %4925, 0xC1CFBF8940000000
  %4927 = fmul fast float %4921, %4926
  %4928 = fadd fast float %4927, 0x41CFBF8940000000
  %4929 = fptosi float %4928 to i32
  %4930 = bitcast i32 %4929 to float
  %4931 = bitcast float %4923 to i32
  %4932 = sitofp i32 %4931 to float
  %4933 = fadd fast float %4932, 0xC1CFBF8940000000
  %4934 = fmul fast float %4933, %4921
  %4935 = fadd fast float %4934, 0x41CFBF8940000000
  %4936 = fptosi float %4935 to i32
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4930, %4920
  %4939 = fmul fast float %4937, %4920
  %4940 = fsub fast float %4923, %4938
  %4941 = fadd fast float %4939, %4923
  %4942 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4944 = fsub fast float %4918, %4942
  %4945 = fsub fast float %4943, %4942
  %4946 = bitcast float %4945 to i32
  %4947 = sub nsw i32 2129859010, %4946
  %4948 = bitcast i32 %4947 to float
  %4949 = fmul fast float %4948, %4944
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fcmp fast olt float %4950, 0x3F70101020000000
  br i1 %4951, label %5090, label %4952

; <label>:4952                                    ; preds = %4914, %4817
  %4953 = phi float [ %4950, %4914 ], [ %4527, %4817 ]
  %4954 = fmul fast float %4953, %4820
  %4955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.i32 %4955, 1
  %4957 = extractvalue %dx.types.CBufRet.i32 %4955, 0
  %4958 = add i32 %4957, 0
  %4959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4959, %dx.types.Handle %112, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  %4964 = extractvalue %dx.types.ResRet.f32 %4960, 3
  %4965 = and i32 %4956, 255
  %4966 = uitofp i32 %4965 to float
  %4967 = lshr i32 %4956, 8
  %4968 = and i32 %4967, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = fmul fast float %4964, %4966
  %4971 = fadd fast float %4970, %4969
  %4972 = fmul fast float %4971, 0x3F70101000000000
  %4973 = fadd fast float %4972, 0xBFB99999A0000000
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 0x3FF1C71C80000000
  %4976 = call float @dx.op.binary.f32(i32 36, float %4972, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4977 = fsub fast float 1.000000e+00, %4975
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, %4961
  %4980 = fmul fast float %4978, %4962
  %4981 = fmul fast float %4978, %4963
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = fmul fast float %4975, %4961
  %4986 = fmul fast float %4975, %4962
  %4987 = fmul fast float %4975, %4963
  %4988 = fadd fast float %4985, %4976
  %4989 = fadd fast float %4986, %4976
  %4990 = fadd fast float %4987, %4976
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.i32 %4994, 3
  %4996 = extractvalue %dx.types.CBufRet.i32 %4994, 2
  %4997 = add i32 %4996, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4998, %dx.types.Handle %112, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.ResRet.f32 %4999, 3
  %5004 = and i32 %4995, 255
  %5005 = uitofp i32 %5004 to float
  %5006 = lshr i32 %4995, 8
  %5007 = and i32 %5006, 255
  %5008 = uitofp i32 %5007 to float
  %5009 = lshr i32 %4995, 16
  %5010 = and i32 %5009, 255
  %5011 = uitofp i32 %5010 to float
  %5012 = fmul fast float %5011, 0x3F70101000000000
  %5013 = fmul fast float %5000, %5005
  %5014 = fadd fast float %5013, %5008
  %5015 = fmul fast float %5014, 0x3F70101000000000
  %5016 = fadd fast float %5001, -5.000000e-01
  %5017 = fadd fast float %5003, -5.000000e-01
  %5018 = fmul fast float %5016, %5012
  %5019 = fmul fast float %5017, %5012
  %5020 = fadd fast float %5018, 5.000000e-01
  %5021 = fadd fast float %5019, 5.000000e-01
  %5022 = fmul fast float %5020, 2.000000e+00
  %5023 = fadd fast float %5022, -1.000000e+00
  %5024 = fmul fast float %5021, 2.000000e+00
  %5025 = fadd fast float %5024, -1.000000e+00
  %5026 = fadd fast float %5023, %5025
  %5027 = fmul fast float %5026, 5.000000e-01
  %5028 = fsub fast float %5023, %5025
  %5029 = fmul fast float %5028, 5.000000e-01
  %5030 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5033 = fsub fast float %5031, %5032
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5029, float %5033, float %5027, float %5029, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.unary.f32(i32 25, float %5034)  ; Rsqrt(value)
  %5036 = fmul fast float %5027, %5035
  %5037 = fmul fast float %5029, %5035
  %5038 = select i1 %4865, i32 %4855, i32 %4856
  %5039 = select i1 %4863, i32 %4854, i32 %5038
  %5040 = sitofp i32 %5039 to float
  %5041 = fmul fast float %5033, %5040
  %5042 = fmul fast float %5041, %5035
  %5043 = select i1 %4865, float %5042, float %5037
  %5044 = select i1 %4865, float %5037, float %5042
  %5045 = select i1 %4863, float %5042, float %5036
  %5046 = select i1 %4863, float %5037, float %5043
  %5047 = select i1 %4863, float %5036, float %5044
  %5048 = fsub fast float %4982, %4806
  %5049 = fsub fast float %4983, %4807
  %5050 = fsub fast float %4984, %4808
  %5051 = fmul fast float %5048, %4954
  %5052 = fmul fast float %5049, %4954
  %5053 = fmul fast float %5050, %4954
  %5054 = fadd fast float %5051, %4806
  %5055 = fadd fast float %5052, %4807
  %5056 = fadd fast float %5053, %4808
  %5057 = fsub fast float %4991, %4809
  %5058 = fsub fast float %4992, %4810
  %5059 = fsub fast float %4993, %4811
  %5060 = fmul fast float %5057, %4954
  %5061 = fmul fast float %5058, %4954
  %5062 = fmul fast float %5059, %4954
  %5063 = fadd fast float %5060, %4809
  %5064 = fadd fast float %5061, %4810
  %5065 = fadd fast float %5062, %4811
  %5066 = fadd fast float %5045, %4812
  %5067 = fadd fast float %5046, %4813
  %5068 = fadd fast float %5047, %4814
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %5066, float %5067, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %5066, %5070
  %5072 = fmul fast float %5067, %5070
  %5073 = fmul fast float %5068, %5070
  %5074 = fsub fast float %5071, %4812
  %5075 = fsub fast float %5072, %4813
  %5076 = fsub fast float %5073, %4814
  %5077 = fmul fast float %5074, %4954
  %5078 = fmul fast float %5075, %4954
  %5079 = fmul fast float %5076, %4954
  %5080 = fadd fast float %5077, %4812
  %5081 = fadd fast float %5078, %4813
  %5082 = fadd fast float %5079, %4814
  %5083 = call float @dx.op.binary.f32(i32 36, float %4816, float %5002)  ; FMin(a,b)
  %5084 = fsub fast float %5083, %4816
  %5085 = fmul fast float %5084, %4954
  %5086 = fadd fast float %5085, %4816
  %5087 = fsub fast float %5015, %4815
  %5088 = fmul fast float %5087, %4954
  %5089 = fadd fast float %5088, %4815
  br label %5090

; <label>:5090                                    ; preds = %4952, %4914, %4805, %4521
  %5091 = phi float [ %5054, %4952 ], [ %4806, %4914 ], [ %4806, %4805 ], [ %4130, %4521 ]
  %5092 = phi float [ %5055, %4952 ], [ %4807, %4914 ], [ %4807, %4805 ], [ %4131, %4521 ]
  %5093 = phi float [ %5056, %4952 ], [ %4808, %4914 ], [ %4808, %4805 ], [ %4132, %4521 ]
  %5094 = phi float [ %5063, %4952 ], [ %4809, %4914 ], [ %4809, %4805 ], [ %4115, %4521 ]
  %5095 = phi float [ %5064, %4952 ], [ %4810, %4914 ], [ %4810, %4805 ], [ %4116, %4521 ]
  %5096 = phi float [ %5065, %4952 ], [ %4811, %4914 ], [ %4811, %4805 ], [ %4117, %4521 ]
  %5097 = phi float [ %5080, %4952 ], [ %4812, %4914 ], [ %4812, %4805 ], [ %4078, %4521 ]
  %5098 = phi float [ %5081, %4952 ], [ %4813, %4914 ], [ %4813, %4805 ], [ %4079, %4521 ]
  %5099 = phi float [ %5082, %4952 ], [ %4814, %4914 ], [ %4814, %4805 ], [ %4080, %4521 ]
  %5100 = phi float [ %5089, %4952 ], [ %4815, %4914 ], [ %4815, %4805 ], [ %4118, %4521 ]
  %5101 = phi float [ %5086, %4952 ], [ %4816, %4914 ], [ %4816, %4805 ], [ %4090, %4521 ]
  %5102 = fcmp fast une float %4525, 0.000000e+00
  br i1 %5102, label %5103, label %5272

; <label>:5103                                    ; preds = %5090
  %5104 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 25, float %5104)  ; Rsqrt(value)
  %5106 = fmul fast float %199, %5105
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fmul fast float %200, %5105
  %5109 = fsub fast float -0.000000e+00, %5108
  %5110 = fmul fast float %201, %5105
  %5111 = fsub fast float -0.000000e+00, %5110
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5109, float %5111, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %4525, 2.500000e+00
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %4525, 0x4013FFFFE0000000
  %5116 = fadd fast float %5115, 0xBFFFFFFFE0000000
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %4525, 0x4004000020000000
  %5119 = fadd fast float %5118, 0xBFF8000040000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %4097, 1.000000e+01
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = fsub fast float 3.000000e+00, %5123
  %5125 = fmul fast float %5122, %5122
  %5126 = fmul fast float %5125, %5124
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fsub fast float 0x3FE3333340000000, %5100
  %5129 = fmul fast float %5128, 0x400AAAAAA0000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5127, %5130
  %5132 = fmul fast float %5091, 0x3FEA2B8620000000
  %5133 = fmul fast float %5092, 0x3FEA2B8620000000
  %5134 = fmul fast float %5093, 0x3FEA2B8620000000
  %5135 = fadd fast float %5132, 0x3FC81DFBA0000000
  %5136 = fmul fast float %5135, %5091
  %5137 = fadd fast float %5136, 0x3F910E6020000000
  %5138 = fadd fast float %5133, 0x3FC81DFBA0000000
  %5139 = fmul fast float %5138, %5092
  %5140 = fadd fast float %5139, 0x3F910E6020000000
  %5141 = fadd fast float %5134, 0x3FC81DFBA0000000
  %5142 = fmul fast float %5141, %5093
  %5143 = fadd fast float %5142, 0x3F910E6020000000
  %5144 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = fsub fast float %5144, %5091
  %5148 = fsub fast float %5145, %5092
  %5149 = fsub fast float %5146, %5093
  %5150 = fmul fast float %5147, %5114
  %5151 = fmul fast float %5150, %5131
  %5152 = fmul fast float %5148, %5114
  %5153 = fmul fast float %5152, %5131
  %5154 = fmul fast float %5149, %5114
  %5155 = fmul fast float %5154, %5131
  %5156 = fadd fast float %5151, %5091
  %5157 = fadd fast float %5153, %5092
  %5158 = fadd fast float %5155, %5093
  %5159 = fmul fast float %5101, %5101
  %5160 = fmul fast float %5159, %5159
  %5161 = fadd fast float %5117, 1.000000e+00
  %5162 = fsub fast float %5161, %5131
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = call float @dx.op.dot3.f32(i32 55, float %125, float %127, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fsub fast float 1.000000e+00, %5160
  %5167 = call float @dx.op.binary.f32(i32 36, float %5163, float %5166)  ; FMin(a,b)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5167, float %5168)  ; FMax(a,b)
  %5170 = fadd fast float %5165, 0xBFE4CCCCC0000000
  %5171 = fmul fast float %5170, 0x4006DB6DA0000000
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5172, 2.000000e+00
  %5174 = fsub fast float 3.000000e+00, %5173
  %5175 = bitcast float %5094 to i32
  %5176 = ashr i32 %5175, 1
  %5177 = add nsw i32 %5176, 532487669
  %5178 = bitcast i32 %5177 to float
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = bitcast float %5095 to i32
  %5185 = ashr i32 %5184, 1
  %5186 = add nsw i32 %5185, 532487669
  %5187 = bitcast i32 %5186 to float
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = bitcast float %5096 to i32
  %5194 = ashr i32 %5193, 1
  %5195 = add nsw i32 %5194, 532487669
  %5196 = bitcast i32 %5195 to float
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5200, 2.000000e+00
  %5202 = fsub fast float 0x4002A9FBE0000000, %5183
  %5203 = fadd fast float %5183, 0x3FD54FDF00000000
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5207, %5207
  %5209 = fsub fast float 0x4002A9FBE0000000, %5192
  %5210 = fadd fast float %5192, 0x3FD54FDF00000000
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, %5214
  %5216 = fsub fast float 0x4002A9FBE0000000, %5201
  %5217 = fadd fast float %5201, 0x3FD54FDF00000000
  %5218 = bitcast float %5217 to i32
  %5219 = sub nsw i32 2129859010, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %5216
  %5222 = fmul fast float %5221, %5221
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5208)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5215)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5222)  ; FMax(a,b)
  %5226 = fsub fast float 1.000000e+00, %5112
  %5227 = fadd fast float %5226, %5127
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fsub fast float 1.000000e+00, %4506
  %5230 = fmul fast float %5169, %5229
  %5231 = fmul fast float %5172, %5172
  %5232 = fmul fast float %5231, %5230
  %5233 = fmul fast float %5232, %5174
  %5234 = fmul fast float %5229, 0xBFE99999A0000000
  %5235 = fmul fast float %5234, %5114
  %5236 = fmul fast float %5235, %5131
  %5237 = fadd fast float %5236, 1.000000e+00
  %5238 = fadd fast float %5100, -1.000000e+00
  %5239 = fmul fast float %5237, %5238
  %5240 = fadd fast float %5239, 1.000000e+00
  %5241 = fsub fast float %5223, %5094
  %5242 = fsub fast float %5224, %5095
  %5243 = fsub fast float %5225, %5096
  %5244 = fmul fast float %5233, %5241
  %5245 = fmul fast float %5233, %5242
  %5246 = fmul fast float %5233, %5243
  %5247 = fadd fast float %5244, %5094
  %5248 = fadd fast float %5245, %5095
  %5249 = fadd fast float %5246, %5096
  %5250 = fsub fast float %125, %5097
  %5251 = fsub fast float %127, %5098
  %5252 = fsub fast float %129, %5099
  %5253 = fmul fast float %5233, %5250
  %5254 = fmul fast float %5233, %5251
  %5255 = fmul fast float %5233, %5252
  %5256 = fadd fast float %5253, %5097
  %5257 = fadd fast float %5254, %5098
  %5258 = fadd fast float %5255, %5099
  %5259 = fmul fast float %5233, %5228
  %5260 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5259, %5261
  %5263 = fadd fast float %5262, %5260
  %5264 = fsub fast float 1.000000e+00, %5101
  %5265 = fmul fast float %5233, %5264
  %5266 = fadd fast float %5265, %5101
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.unary.f32(i32 25, float %5267)  ; Rsqrt(value)
  %5269 = fmul fast float %5256, %5268
  %5270 = fmul fast float %5257, %5268
  %5271 = fmul fast float %5258, %5268
  br label %5272

; <label>:5272                                    ; preds = %5103, %5090
  %5273 = phi float [ %5156, %5103 ], [ %5091, %5090 ]
  %5274 = phi float [ %5157, %5103 ], [ %5092, %5090 ]
  %5275 = phi float [ %5158, %5103 ], [ %5093, %5090 ]
  %5276 = phi float [ %5247, %5103 ], [ %5094, %5090 ]
  %5277 = phi float [ %5248, %5103 ], [ %5095, %5090 ]
  %5278 = phi float [ %5249, %5103 ], [ %5096, %5090 ]
  %5279 = phi float [ %5269, %5103 ], [ %5097, %5090 ]
  %5280 = phi float [ %5270, %5103 ], [ %5098, %5090 ]
  %5281 = phi float [ %5271, %5103 ], [ %5099, %5090 ]
  %5282 = phi float [ %5263, %5103 ], [ %5100, %5090 ]
  %5283 = phi float [ %5266, %5103 ], [ %5101, %5090 ]
  %5284 = icmp eq i32 %60, 0
  br i1 %5284, label %5315, label %5285

; <label>:5285                                    ; preds = %5272
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5289 = fmul fast float %5287, %116
  %5290 = fmul fast float %5288, %117
  %5291 = fmul fast float %5289, 1.024000e+03
  %5292 = fmul fast float %5290, 1.024000e+03
  %5293 = fadd fast float %5291, -5.120000e+02
  %5294 = fadd fast float %5292, -5.120000e+02
  %5295 = fmul fast float %5289, 0x4081BEDF00000000
  %5296 = fadd fast float %5295, 0xC071BEDF00000000
  %5297 = call float @dx.op.unary.f32(i32 22, float %5296)  ; Frc(value)
  %5298 = fmul fast float %5293, %5297
  %5299 = fadd fast float %5298, %5294
  %5300 = fmul fast float %5290, 0x4073BEBE20000000
  %5301 = fadd fast float %5300, 0xC063BEBE20000000
  %5302 = call float @dx.op.unary.f32(i32 22, float %5301)  ; Frc(value)
  %5303 = fmul fast float %5294, %5302
  %5304 = fadd fast float %5303, %5293
  %5305 = fmul fast float %5299, %5304
  %5306 = call float @dx.op.unary.f32(i32 22, float %5305)  ; Frc(value)
  %5307 = add i32 %325, 12
  %5308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.i32 %5308, 0
  %5310 = and i32 %5309, 255
  %5311 = uitofp i32 %5310 to float
  %5312 = fmul fast float %5311, 0x3F70101020000000
  %5313 = fcmp fast olt float %5306, %5312
  br i1 %5313, label %5314, label %5315

; <label>:5314                                    ; preds = %5285
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5315

; <label>:5315                                    ; preds = %5314, %5285, %5272
  %5316 = fsub fast float -0.000000e+00, %201
  %5317 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.unary.f32(i32 25, float %5317)  ; Rsqrt(value)
  %5319 = fmul fast float %5318, %199
  %5320 = fmul fast float %5318, %200
  %5321 = fmul fast float %5318, %201
  %5322 = fsub fast float -0.000000e+00, %5319
  %5323 = fsub fast float -0.000000e+00, %5320
  %5324 = fsub fast float -0.000000e+00, %5321
  %5325 = select i1 %271, float 0.000000e+00, float %5278
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = fmul fast float %5328, 2.000000e+00
  %5330 = fmul fast float %5329, %5279
  %5331 = fmul fast float %5329, %5280
  %5332 = fmul fast float %5329, %5281
  %5333 = fsub fast float %5319, %5330
  %5334 = fsub fast float %5320, %5331
  %5335 = fsub fast float %5321, %5332
  %5336 = call float @dx.op.binary.f32(i32 36, float %5283, float 1.000000e+00)  ; FMin(a,b)
  %5337 = fsub fast float 1.000000e+00, %5283
  %5338 = bitcast float %5337 to i32
  %5339 = sub nsw i32 2129859010, %5338
  %5340 = bitcast i32 %5339 to float
  %5341 = call float @dx.op.dot3.f32(i32 55, float %87, float %83, float %79, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = fmul fast float %5341, 0x3FD20DD760000000
  %5343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %5344 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = fcmp fast oeq float %5344, 0.000000e+00
  %5346 = fcmp fast oeq float %5343, 0.000000e+00
  %5347 = or i1 %5346, %5345
  br i1 %5347, label %5377, label %5348

; <label>:5348                                    ; preds = %5315
  %5349 = fsub fast float -0.000000e+00, %90
  %5350 = fsub fast float -0.000000e+00, %88
  %5351 = call float @dx.op.unary.f32(i32 24, float %5344)  ; Sqrt(value)
  %5352 = fdiv fast float %5351, %5343
  %5353 = fcmp fast ogt float %5352, 0x3FFB6F8900000000
  %5354 = select i1 %5353, float 0x3FFB6F8900000000, float %5352
  %5355 = fmul fast float %5354, 0x3FE8A23460000000
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = call float @dx.op.binary.f32(i32 35, float %5354, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5358 = fmul fast float %5356, %5343
  %5359 = fmul fast float %5357, 0x3FF279A740000000
  %5360 = fadd fast float %5359, -1.000000e+00
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %89, float %5349, float %5350, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.unary.f32(i32 25, float %5361)  ; Rsqrt(value)
  %5363 = fmul fast float %5362, %5349
  %5364 = fmul fast float %5362, %5350
  %5365 = fmul fast float %5362, %89
  %5366 = fmul fast float %5360, %5360
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = fmul fast float %5357, 0x40005F8BE0000000
  %5369 = fsub fast float 0x400C5BF8A0000000, %5368
  %5370 = fdiv fast float %5358, %5369
  %5371 = fmul fast float %5370, 0x3FEE31C3C0000000
  %5372 = fmul fast float %5371, %5367
  %5373 = fmul fast float %5357, 0x3FDACB7480000000
  %5374 = fadd fast float %5373, 0xBFD7347680000000
  %5375 = fmul fast float %5374, %5370
  %5376 = fmul fast float %5375, %5367
  br label %5377

; <label>:5377                                    ; preds = %5348, %5315
  %5378 = phi float [ %5363, %5348 ], [ 0.000000e+00, %5315 ]
  %5379 = phi float [ %5364, %5348 ], [ 0.000000e+00, %5315 ]
  %5380 = phi float [ %5365, %5348 ], [ 0.000000e+00, %5315 ]
  %5381 = phi float [ %5372, %5348 ], [ 0.000000e+00, %5315 ]
  %5382 = phi float [ %5376, %5348 ], [ 0.000000e+00, %5315 ]
  %5383 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %5380, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = fmul fast float %5383, %5383
  %5385 = fmul fast float %5384, 0x3FEE471020000000
  %5386 = fadd fast float %5385, 0xBFD42F6020000000
  %5387 = fmul fast float %5343, 0x3FD20DD760000000
  %5388 = fmul fast float %5386, %5382
  %5389 = fmul fast float %5381, 0x3FDF454380000000
  %5390 = fmul fast float %5389, %5383
  %5391 = fadd fast float %5390, %5387
  %5392 = fadd fast float %5391, %5388
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %5380, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fmul fast float %5393, 0x3FDF454380000000
  %5395 = fmul fast float %5393, %5393
  %5396 = fmul fast float %5395, 0x3FEE471020000000
  %5397 = fadd fast float %5396, 0xBFD42F6020000000
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5381, float %5382, float 0x3FD20DD760000000, float %5394, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  %5400 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fcmp fast oeq float %5400, 0.000000e+00
  %5402 = fcmp fast oeq float %5399, 0.000000e+00
  %5403 = or i1 %5402, %5401
  br i1 %5403, label %5433, label %5404

; <label>:5404                                    ; preds = %5377
  %5405 = fsub fast float -0.000000e+00, %86
  %5406 = fsub fast float -0.000000e+00, %84
  %5407 = call float @dx.op.unary.f32(i32 24, float %5400)  ; Sqrt(value)
  %5408 = fdiv fast float %5407, %5399
  %5409 = fcmp fast ogt float %5408, 0x3FFB6F8900000000
  %5410 = select i1 %5409, float 0x3FFB6F8900000000, float %5408
  %5411 = fmul fast float %5410, 0x3FE8A23460000000
  %5412 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5413 = call float @dx.op.binary.f32(i32 35, float %5410, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5414 = fmul fast float %5412, %5399
  %5415 = fmul fast float %5413, 0x3FF279A740000000
  %5416 = fadd fast float %5415, -1.000000e+00
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %85, float %5405, float %5406, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = call float @dx.op.unary.f32(i32 25, float %5417)  ; Rsqrt(value)
  %5419 = fmul fast float %5418, %5405
  %5420 = fmul fast float %5418, %5406
  %5421 = fmul fast float %5418, %85
  %5422 = fmul fast float %5416, %5416
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = fmul fast float %5413, 0x40005F8BE0000000
  %5425 = fsub fast float 0x400C5BF8A0000000, %5424
  %5426 = fdiv fast float %5414, %5425
  %5427 = fmul fast float %5426, 0x3FEE31C3C0000000
  %5428 = fmul fast float %5427, %5423
  %5429 = fmul fast float %5413, 0x3FDACB7480000000
  %5430 = fadd fast float %5429, 0xBFD7347680000000
  %5431 = fmul fast float %5430, %5426
  %5432 = fmul fast float %5431, %5423
  br label %5433

; <label>:5433                                    ; preds = %5404, %5377
  %5434 = phi float [ %5419, %5404 ], [ 0.000000e+00, %5377 ]
  %5435 = phi float [ %5420, %5404 ], [ 0.000000e+00, %5377 ]
  %5436 = phi float [ %5421, %5404 ], [ 0.000000e+00, %5377 ]
  %5437 = phi float [ %5428, %5404 ], [ 0.000000e+00, %5377 ]
  %5438 = phi float [ %5432, %5404 ], [ 0.000000e+00, %5377 ]
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = fmul fast float %5439, %5439
  %5441 = fmul fast float %5440, 0x3FEE471020000000
  %5442 = fadd fast float %5441, 0xBFD42F6020000000
  %5443 = fmul fast float %5399, 0x3FD20DD760000000
  %5444 = fmul fast float %5442, %5438
  %5445 = fmul fast float %5437, 0x3FDF454380000000
  %5446 = fmul fast float %5445, %5439
  %5447 = fadd fast float %5446, %5443
  %5448 = fadd fast float %5447, %5444
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = fmul fast float %5449, 0x3FDF454380000000
  %5451 = fmul fast float %5449, %5449
  %5452 = fmul fast float %5451, 0x3FEE471020000000
  %5453 = fadd fast float %5452, 0xBFD42F6020000000
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5437, float %5438, float 0x3FD20DD760000000, float %5450, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5456 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = fcmp fast oeq float %5456, 0.000000e+00
  %5458 = fcmp fast oeq float %5455, 0.000000e+00
  %5459 = or i1 %5458, %5457
  br i1 %5459, label %5489, label %5460

; <label>:5460                                    ; preds = %5433
  %5461 = fsub fast float -0.000000e+00, %82
  %5462 = fsub fast float -0.000000e+00, %80
  %5463 = call float @dx.op.unary.f32(i32 24, float %5456)  ; Sqrt(value)
  %5464 = fdiv fast float %5463, %5455
  %5465 = fcmp fast ogt float %5464, 0x3FFB6F8900000000
  %5466 = select i1 %5465, float 0x3FFB6F8900000000, float %5464
  %5467 = fmul fast float %5466, 0x3FE8A23460000000
  %5468 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5469 = call float @dx.op.binary.f32(i32 35, float %5466, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5470 = fmul fast float %5468, %5455
  %5471 = fmul fast float %5469, 0x3FF279A740000000
  %5472 = fadd fast float %5471, -1.000000e+00
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %81, float %5461, float %5462, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 25, float %5473)  ; Rsqrt(value)
  %5475 = fmul fast float %5474, %5461
  %5476 = fmul fast float %5474, %5462
  %5477 = fmul fast float %5474, %81
  %5478 = fmul fast float %5472, %5472
  %5479 = fsub fast float 1.000000e+00, %5478
  %5480 = fmul fast float %5469, 0x40005F8BE0000000
  %5481 = fsub fast float 0x400C5BF8A0000000, %5480
  %5482 = fdiv fast float %5470, %5481
  %5483 = fmul fast float %5482, 0x3FEE31C3C0000000
  %5484 = fmul fast float %5483, %5479
  %5485 = fmul fast float %5469, 0x3FDACB7480000000
  %5486 = fadd fast float %5485, 0xBFD7347680000000
  %5487 = fmul fast float %5486, %5482
  %5488 = fmul fast float %5487, %5479
  br label %5489

; <label>:5489                                    ; preds = %5460, %5433
  %5490 = phi float [ %5475, %5460 ], [ 0.000000e+00, %5433 ]
  %5491 = phi float [ %5476, %5460 ], [ 0.000000e+00, %5433 ]
  %5492 = phi float [ %5477, %5460 ], [ 0.000000e+00, %5433 ]
  %5493 = phi float [ %5484, %5460 ], [ 0.000000e+00, %5433 ]
  %5494 = phi float [ %5488, %5460 ], [ 0.000000e+00, %5433 ]
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %5492, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = fmul fast float %5495, %5495
  %5497 = fmul fast float %5496, 0x3FEE471020000000
  %5498 = fadd fast float %5497, 0xBFD42F6020000000
  %5499 = fmul fast float %5455, 0x3FD20DD760000000
  %5500 = fmul fast float %5498, %5494
  %5501 = fmul fast float %5493, 0x3FDF454380000000
  %5502 = fmul fast float %5501, %5495
  %5503 = fadd fast float %5502, %5499
  %5504 = fadd fast float %5503, %5500
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %5492, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = fmul fast float %5505, 0x3FDF454380000000
  %5507 = fmul fast float %5505, %5505
  %5508 = fmul fast float %5507, 0x3FEE471020000000
  %5509 = fadd fast float %5508, 0xBFD42F6020000000
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5493, float %5494, float 0x3FD20DD760000000, float %5506, float %5509)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = call float @dx.op.binary.f32(i32 35, float %5392, float 0.000000e+00)  ; FMax(a,b)
  %5512 = call float @dx.op.binary.f32(i32 35, float %5448, float 0.000000e+00)  ; FMax(a,b)
  %5513 = call float @dx.op.binary.f32(i32 35, float %5504, float 0.000000e+00)  ; FMax(a,b)
  %5514 = call float @dx.op.binary.f32(i32 35, float %5398, float 0.000000e+00)  ; FMax(a,b)
  %5515 = call float @dx.op.binary.f32(i32 35, float %5454, float 0.000000e+00)  ; FMax(a,b)
  %5516 = call float @dx.op.binary.f32(i32 35, float %5510, float 0.000000e+00)  ; FMax(a,b)
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 0
  %5519 = call float @dx.op.binary.f32(i32 36, float %5273, float %5518)  ; FMin(a,b)
  %5520 = fsub fast float 1.000000e+00, %5336
  %5521 = fmul fast float %5519, %5520
  %5522 = fsub fast float 1.000000e+00, %5521
  %5523 = bitcast float %5522 to i32
  %5524 = sub nsw i32 2129859010, %5523
  %5525 = bitcast i32 %5524 to float
  %5526 = call float @dx.op.binary.f32(i32 36, float %5274, float %5518)  ; FMin(a,b)
  %5527 = fmul fast float %5526, %5520
  %5528 = fsub fast float 1.000000e+00, %5527
  %5529 = bitcast float %5528 to i32
  %5530 = sub nsw i32 2129859010, %5529
  %5531 = bitcast i32 %5530 to float
  %5532 = call float @dx.op.binary.f32(i32 36, float %5275, float %5518)  ; FMin(a,b)
  %5533 = fmul fast float %5532, %5520
  %5534 = fsub fast float 1.000000e+00, %5533
  %5535 = bitcast float %5534 to i32
  %5536 = sub nsw i32 2129859010, %5535
  %5537 = bitcast i32 %5536 to float
  %5538 = fmul fast float %5511, %5336
  %5539 = fmul fast float %5538, %5525
  %5540 = fmul fast float %5512, %5336
  %5541 = fmul fast float %5540, %5531
  %5542 = fmul fast float %5513, %5336
  %5543 = fmul fast float %5542, %5537
  %5544 = call float @dx.op.binary.f32(i32 36, float %5276, float %5518)  ; FMin(a,b)
  %5545 = fmul fast float %5544, %5520
  %5546 = fsub fast float 1.000000e+00, %5545
  %5547 = bitcast float %5546 to i32
  %5548 = sub nsw i32 2129859010, %5547
  %5549 = bitcast i32 %5548 to float
  %5550 = call float @dx.op.binary.f32(i32 36, float %5277, float %5518)  ; FMin(a,b)
  %5551 = fmul fast float %5550, %5520
  %5552 = fsub fast float 1.000000e+00, %5551
  %5553 = bitcast float %5552 to i32
  %5554 = sub nsw i32 2129859010, %5553
  %5555 = bitcast i32 %5554 to float
  %5556 = call float @dx.op.binary.f32(i32 36, float %5325, float %5518)  ; FMin(a,b)
  %5557 = fmul fast float %5556, %5520
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = bitcast float %5558 to i32
  %5560 = sub nsw i32 2129859010, %5559
  %5561 = bitcast i32 %5560 to float
  %5562 = fmul fast float %5514, %5336
  %5563 = fmul fast float %5562, %5549
  %5564 = fmul fast float %5515, %5336
  %5565 = fmul fast float %5564, %5555
  %5566 = fmul fast float %5516, %5336
  %5567 = fmul fast float %5566, %5561
  %5568 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5541, float %5543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = select i1 %271, float 0.000000e+00, float %5539
  %5570 = select i1 %271, float %5568, float %5541
  %5571 = select i1 %271, float 0.000000e+00, float %5543
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5563, float %5565, float %5567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = select i1 %271, float 0.000000e+00, float %5563
  %5574 = select i1 %271, float %5572, float %5565
  %5575 = select i1 %271, float 0.000000e+00, float %5567
  %5576 = fmul fast float %5341, 0x4071A18460000000
  %5577 = fadd fast float %5576, 0x3F0FFB4800000000
  %5578 = call float @dx.op.unary.f32(i32 23, float %5577)  ; Log(value)
  %5579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5580 = extractvalue %dx.types.ResRet.i32 %5579, 0
  %5581 = and i32 %5580, 8388608
  %5582 = icmp eq i32 %5581, 0
  br i1 %5582, label %5583, label %5623

; <label>:5583                                    ; preds = %5489
  %5584 = fadd fast float %5578, 0x4006B851E0000000
  %5585 = add i32 %325, 12
  %5586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5585, i32 undef)  ; BufferLoad(srv,index,wot)
  %5587 = extractvalue %dx.types.ResRet.i32 %5586, 0
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 3
  %5590 = lshr i32 %5587, 16
  %5591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5590)  ; LegacyF16ToF32(value)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5595 = fsub fast float %107, %5594
  %5596 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5597 = fmul fast float %5595, %5596
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fsub fast float %5592, %5584
  %5600 = fcmp fast ogt float %5599, 0.000000e+00
  %5601 = fcmp fast olt float %5599, 0.000000e+00
  %5602 = zext i1 %5600 to i32
  %5603 = zext i1 %5601 to i32
  %5604 = sub nsw i32 %5602, %5603
  %5605 = sitofp i32 %5604 to float
  %5606 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5607 = fsub fast float -0.000000e+00, %5591
  %5608 = fsub fast float %5607, %5589
  %5609 = fadd fast float %5608, %5606
  %5610 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5611 = fmul fast float %5605, %5610
  %5612 = fadd fast float %5578, %5611
  %5613 = call float @dx.op.unary.f32(i32 21, float %5612)  ; Exp(value)
  %5614 = fmul fast float %5613, 0x3F50624DE0000000
  %5615 = fcmp fast oeq float %5342, 0.000000e+00
  %5616 = fdiv fast float 0x400C5BF880000000, %5341
  %5617 = fmul fast float %5614, %5616
  %5618 = select i1 %5615, float 1.000000e+00, float %5617
  %5619 = call float @dx.op.binary.f32(i32 35, float %5618, float 1.000000e+00)  ; FMax(a,b)
  %5620 = fadd fast float %5619, -1.000000e+00
  %5621 = fmul fast float %5620, %5598
  %5622 = fadd fast float %5621, 1.000000e+00
  br label %5623

; <label>:5623                                    ; preds = %5583, %5489
  %5624 = phi float [ %5622, %5583 ], [ 1.000000e+00, %5489 ]
  %5625 = call float @dx.op.unary.f32(i32 6, float %5624)  ; FAbs(value)
  %5626 = fmul fast float %5625, %5569
  %5627 = fmul fast float %5625, %5570
  %5628 = fmul fast float %5625, %5571
  %5629 = fmul fast float %5327, 9.843750e-01
  %5630 = fmul fast float %5282, 9.843750e-01
  %5631 = fadd fast float %5629, 7.812500e-03
  %5632 = fadd fast float %5630, 7.812500e-03
  %5633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5631, float %5632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 2
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 3
  %5636 = fmul fast float %5634, %5276
  %5637 = fmul fast float %5634, %5277
  %5638 = fmul fast float %5634, %5325
  %5639 = fadd fast float %5636, %5635
  %5640 = fadd fast float %5637, %5635
  %5641 = fadd fast float %5638, %5635
  %5642 = fcmp fast ogt float %4091, 0.000000e+00
  br i1 %5642, label %5643, label %5669

; <label>:5643                                    ; preds = %5623
  %5644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %5327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5645 = extractvalue %dx.types.ResRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.ResRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.ResRet.f32 %5644, 2
  %5648 = fadd fast float %5645, -5.000000e-01
  %5649 = fadd fast float %5646, -5.000000e-01
  %5650 = fadd fast float %5647, -5.000000e-01
  %5651 = fsub fast float 1.000000e+00, %5276
  %5652 = fsub fast float 1.000000e+00, %5277
  %5653 = fsub fast float 1.000000e+00, %5325
  %5654 = fmul fast float %5276, 4.000000e+00
  %5655 = fmul fast float %5654, %5651
  %5656 = fmul fast float %5655, %5648
  %5657 = fmul fast float %5277, 4.000000e+00
  %5658 = fmul fast float %5657, %5652
  %5659 = fmul fast float %5658, %5649
  %5660 = fmul fast float %5325, 4.000000e+00
  %5661 = fmul fast float %5660, %5653
  %5662 = fmul fast float %5661, %5650
  %5663 = fadd fast float %5656, %5639
  %5664 = fadd fast float %5659, %5640
  %5665 = fadd fast float %5662, %5641
  %5666 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5667 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  br label %5669

; <label>:5669                                    ; preds = %5643, %5623
  %5670 = phi float [ %5666, %5643 ], [ %5639, %5623 ]
  %5671 = phi float [ %5667, %5643 ], [ %5640, %5623 ]
  %5672 = phi float [ %5668, %5643 ], [ %5641, %5623 ]
  %5673 = call float @dx.op.binary.f32(i32 35, float %5671, float %5672)  ; FMax(a,b)
  %5674 = call float @dx.op.binary.f32(i32 35, float %5670, float %5673)  ; FMax(a,b)
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = fmul fast float %199, %199
  %5677 = fmul fast float %200, %200
  %5678 = fadd fast float %5677, %5676
  %5679 = fmul fast float %201, %201
  %5680 = fadd fast float %5678, %5679
  %5681 = call float @dx.op.unary.f32(i32 24, float %5680)  ; Sqrt(value)
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5684 = fsub fast float %5681, %5683
  %5685 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5686 = fmul fast float %5684, %5685
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5689 = extractvalue %dx.types.CBufRet.f32 %5682, 3
  %5690 = and i32 %5580, 4194304
  %5691 = icmp ne i32 %5690, 0
  %5692 = icmp ne i32 %5581, 0
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5697 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5702 = extractvalue %dx.types.CBufRet.f32 %5698, 3
  %5703 = select i1 %5691, float %5694, float %5699
  %5704 = select i1 %5691, float %5695, float %5700
  %5705 = select i1 %5691, float %5696, float %5701
  %5706 = select i1 %5691, float %5697, float %5702
  %5707 = select i1 %5692, float 0.000000e+00, float %5706
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5711 = select i1 %5691, float %5709, float %5710
  %5712 = select i1 %5692, float 0.000000e+00, float %5711
  %5713 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5714 = extractvalue %dx.types.CBufRet.f32 %5708, 3
  %5715 = select i1 %5691, float %5713, float %5714
  %5716 = select i1 %5692, float 0.000000e+00, float %5715
  %5717 = fmul fast float %5687, %65
  %5718 = fmul fast float %5717, %5688
  %5719 = fmul fast float %5718, %5712
  %5720 = fmul fast float %5717, %5689
  %5721 = fmul fast float %5720, %5716
  %5722 = fadd fast float %5721, 1.000000e+00
  %5723 = fmul fast float %5675, %5626
  %5724 = fmul fast float %5723, %5722
  %5725 = fmul fast float %5675, %5627
  %5726 = fmul fast float %5725, %5722
  %5727 = fmul fast float %5675, %5628
  %5728 = fmul fast float %5727, %5722
  %5729 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fcmp fast ogt float %5729, 0x3E7FF19E20000000
  %5731 = fdiv fast float 1.000000e+00, %5729
  %5732 = select i1 %5730, float %5731, float 0.000000e+00
  %5733 = fmul fast float %5732, %5273
  %5734 = fmul fast float %5732, %5274
  %5735 = fmul fast float %5732, %5275
  %5736 = fadd fast float %5733, -1.000000e+00
  %5737 = fadd fast float %5734, -1.000000e+00
  %5738 = fadd fast float %5735, -1.000000e+00
  %5739 = fmul fast float %5736, 5.000000e-01
  %5740 = fmul fast float %5737, 5.000000e-01
  %5741 = fmul fast float %5738, 5.000000e-01
  %5742 = fadd fast float %5739, 1.000000e+00
  %5743 = fadd fast float %5740, 1.000000e+00
  %5744 = fadd fast float %5741, 1.000000e+00
  %5745 = fadd fast float %5719, %4092
  %5746 = fsub fast float %5703, %5742
  %5747 = fsub fast float %5704, %5743
  %5748 = fsub fast float %5705, %5744
  %5749 = fmul fast float %5746, %5707
  %5750 = fmul fast float %5747, %5707
  %5751 = fmul fast float %5748, %5707
  %5752 = fadd fast float %5749, %5742
  %5753 = fadd fast float %5750, %5743
  %5754 = fadd fast float %5751, %5744
  %5755 = fmul fast float %5670, %5573
  %5756 = fmul fast float %5671, %5574
  %5757 = fmul fast float %5672, %5575
  %5758 = fsub fast float 1.000000e+00, %5327
  %5759 = bitcast float %5758 to i32
  %5760 = sitofp i32 %5759 to float
  %5761 = fmul fast float %5760, 5.000000e+00
  %5762 = fadd fast float %5761, 0xC1EFBF8940000000
  %5763 = fptosi float %5762 to i32
  %5764 = bitcast i32 %5763 to float
  %5765 = fmul fast float %5745, %5764
  %5766 = fmul fast float %5723, %5765
  %5767 = fmul fast float %5766, %5752
  %5768 = fmul fast float %5725, %5765
  %5769 = fmul fast float %5768, %5753
  %5770 = fmul fast float %5727, %5765
  %5771 = fmul fast float %5770, %5754
  %5772 = fmul fast float %5724, %4088
  %5773 = fmul fast float %5726, %4088
  %5774 = fmul fast float %5728, %4088
  %5775 = fadd fast float %5755, %4084
  %5776 = fadd fast float %5775, %5767
  %5777 = fmul fast float %5776, %4088
  %5778 = fadd fast float %5756, %4085
  %5779 = fadd fast float %5778, %5769
  %5780 = fmul fast float %5779, %4088
  %5781 = fadd fast float %5757, %4086
  %5782 = fadd fast float %5781, %5771
  %5783 = fmul fast float %5782, %4088
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5786 = fcmp fast oeq float %5785, 0.000000e+00
  br i1 %5786, label %6871, label %5787

; <label>:5787                                    ; preds = %5669
  %5788 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5784, 2
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %5794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = select i1 %271, float %5796, float %5792
  %5800 = select i1 %271, float %5798, float %5793
  %5801 = select i1 %271, float %5797, float %5794
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5804 = fmul fast float %5803, %125
  %5805 = fmul fast float %5803, %127
  %5806 = fmul fast float %5803, %129
  %5807 = fadd fast float %5804, %199
  %5808 = fadd fast float %5805, %200
  %5809 = fadd fast float %5806, %201
  %5810 = fcmp fast olt float %5785, 0.000000e+00
  br i1 %5810, label %6450, label %5811

; <label>:5811                                    ; preds = %5787
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5827 = fmul fast float %5813, %5807
  %5828 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5814, float %5827)  ; FMad(a,b,c)
  %5829 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5815, float %5828)  ; FMad(a,b,c)
  %5830 = fadd fast float %5829, %5816
  %5831 = fmul fast float %5818, %5807
  %5832 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5819, float %5831)  ; FMad(a,b,c)
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5820, float %5832)  ; FMad(a,b,c)
  %5834 = fadd fast float %5833, %5821
  %5835 = fmul fast float %5823, %5807
  %5836 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5824, float %5835)  ; FMad(a,b,c)
  %5837 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5825, float %5836)  ; FMad(a,b,c)
  %5838 = fadd fast float %5837, %5826
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = fcmp fast une float %5840, 0.000000e+00
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5846 = fmul fast float %5845, %5830
  %5847 = fmul fast float %5845, %5834
  %5848 = fadd fast float %5846, %5843
  %5849 = fadd fast float %5847, %5844
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5854 = fmul fast float %5853, %5830
  %5855 = fmul fast float %5853, %5834
  %5856 = fadd fast float %5854, %5851
  %5857 = fadd fast float %5855, %5852
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5860 = fsub fast float %5859, %5838
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = fmul fast float %5860, %5861
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  br i1 %5841, label %5925, label %5865

; <label>:5865                                    ; preds = %5811
  %5866 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 2
  %5869 = fadd fast float %5868, %5866
  %5870 = fcmp fast ogt float %5869, 0.000000e+00
  br i1 %5870, label %5871, label %5895

; <label>:5871                                    ; preds = %5865
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5872, 1
  %5875 = fsub fast float %5856, %5873
  %5876 = fsub fast float %5857, %5874
  %5877 = fcmp fast olt float %5875, 0.000000e+00
  %5878 = fcmp fast olt float %5876, 0.000000e+00
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.CBufRet.f32 %5879, 1
  %5882 = extractvalue %dx.types.CBufRet.f32 %5879, 2
  %5883 = extractvalue %dx.types.CBufRet.f32 %5879, 3
  %5884 = select i1 %5877, float %5880, float %5882
  %5885 = select i1 %5878, float %5881, float %5883
  %5886 = fmul fast float %5884, %5875
  %5887 = fmul fast float %5885, %5876
  %5888 = call float @dx.op.unary.f32(i32 6, float %5886)  ; FAbs(value)
  %5889 = call float @dx.op.unary.f32(i32 6, float %5887)  ; FAbs(value)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5891 = call float @dx.op.binary.f32(i32 35, float %5888, float %5889)  ; FMax(a,b)
  %5892 = fsub fast float %5890, %5891
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = fmul fast float %5893, %5864
  br label %5895

; <label>:5895                                    ; preds = %5871, %5865
  %5896 = phi float [ %5894, %5871 ], [ 0.000000e+00, %5865 ]
  %5897 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5898 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5899 = fadd fast float %5898, %5897
  %5900 = fcmp fast ogt float %5899, 0.000000e+00
  br i1 %5900, label %5901, label %5925

; <label>:5901                                    ; preds = %5895
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = fsub fast float %5848, %5903
  %5906 = fsub fast float %5849, %5904
  %5907 = fcmp fast olt float %5905, 0.000000e+00
  %5908 = fcmp fast olt float %5906, 0.000000e+00
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.CBufRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.CBufRet.f32 %5909, 2
  %5913 = extractvalue %dx.types.CBufRet.f32 %5909, 3
  %5914 = select i1 %5907, float %5910, float %5912
  %5915 = select i1 %5908, float %5911, float %5913
  %5916 = fmul fast float %5914, %5905
  %5917 = fmul fast float %5915, %5906
  %5918 = call float @dx.op.unary.f32(i32 6, float %5916)  ; FAbs(value)
  %5919 = call float @dx.op.unary.f32(i32 6, float %5917)  ; FAbs(value)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5921 = call float @dx.op.binary.f32(i32 35, float %5918, float %5919)  ; FMax(a,b)
  %5922 = fsub fast float %5920, %5921
  %5923 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5924 = fmul fast float %5923, %5864
  br label %5925

; <label>:5925                                    ; preds = %5901, %5895, %5811
  %5926 = phi float [ 0.000000e+00, %5811 ], [ %5924, %5901 ], [ 0.000000e+00, %5895 ]
  %5927 = phi float [ 0.000000e+00, %5811 ], [ %5896, %5901 ], [ %5896, %5895 ]
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = fsub fast float %5830, %5932
  %5935 = fsub fast float %5834, %5933
  %5936 = fcmp fast olt float %5934, 0.000000e+00
  %5937 = fcmp fast olt float %5935, 0.000000e+00
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = select i1 %5936, float %5939, float %5941
  %5944 = select i1 %5937, float %5940, float %5942
  %5945 = fmul fast float %5943, %5934
  %5946 = fmul fast float %5944, %5935
  %5947 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5948 = call float @dx.op.unary.f32(i32 6, float %5946)  ; FAbs(value)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5950 = call float @dx.op.binary.f32(i32 35, float %5947, float %5948)  ; FMax(a,b)
  %5951 = fsub fast float %5949, %5950
  %5952 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5953 = call float @dx.op.binary.f32(i32 36, float %5952, float %5930)  ; FMin(a,b)
  %5954 = fmul fast float %5953, %5864
  %5955 = fsub fast float %5926, %5954
  %5956 = fsub fast float %5927, %5926
  %5957 = fsub fast float %5956, %5954
  %5958 = call float @dx.op.binary.f32(i32 35, float %5926, float %5927)  ; FMax(a,b)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5954, float %5958)  ; FMax(a,b)
  %5960 = fcmp fast olt float %5959, 1.000000e+00
  br i1 %5960, label %5961, label %6359, !dx.controlflow.hints !99

; <label>:5961                                    ; preds = %5925
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = fcmp fast une float %5963, 0.000000e+00
  br i1 %5964, label %5965, label %6359, !dx.controlflow.hints !100

; <label>:5965                                    ; preds = %5961
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5970 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5971, 3
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5980 = extractvalue %dx.types.CBufRet.f32 %5976, 3
  %5981 = fmul fast float %5967, %5807
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5968, float %5981)  ; FMad(a,b,c)
  %5983 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5969, float %5982)  ; FMad(a,b,c)
  %5984 = fadd fast float %5983, %5970
  %5985 = fmul fast float %5972, %5807
  %5986 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5973, float %5985)  ; FMad(a,b,c)
  %5987 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5974, float %5986)  ; FMad(a,b,c)
  %5988 = fadd fast float %5987, %5975
  %5989 = fmul fast float %5977, %5807
  %5990 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5978, float %5989)  ; FMad(a,b,c)
  %5991 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5979, float %5990)  ; FMad(a,b,c)
  %5992 = fadd fast float %5991, %5980
  %5993 = fcmp fast oge float %5984, 1.000000e+00
  %5994 = fcmp fast oge float %5988, 1.000000e+00
  %5995 = or i1 %5993, %5994
  %5996 = fcmp fast olt float %5984, 0.000000e+00
  %5997 = fcmp fast olt float %5988, 0.000000e+00
  %5998 = or i1 %5996, %5997
  %5999 = or i1 %5995, %5998
  br i1 %5999, label %6359, label %6000, !dx.controlflow.hints !101

; <label>:6000                                    ; preds = %5965
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.i32 %6005, 2
  %6007 = uitofp i32 %6006 to float
  %6008 = extractvalue %dx.types.CBufRet.i32 %6005, 3
  %6009 = uitofp i32 %6008 to float
  %6010 = extractvalue %dx.types.CBufRet.f32 %6001, 3
  %6011 = fmul fast float %6010, 2.000000e+00
  %6012 = fsub fast float %5984, %6002
  %6013 = fsub fast float %5988, %6003
  %6014 = fmul fast float %6011, %6012
  %6015 = fmul fast float %6011, %6013
  %6016 = fdiv fast float 1.000000e+00, %5790
  %6017 = fmul fast float %6015, %6016
  %6018 = call float @dx.op.unary.f32(i32 6, float %6017)  ; FAbs(value)
  %6019 = fmul fast float %6004, %5809
  %6020 = fmul fast float %6019, %6011
  %6021 = call float @dx.op.unary.f32(i32 6, float %6020)  ; FAbs(value)
  %6022 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6023 = call float @dx.op.binary.f32(i32 35, float %6021, float %6018)  ; FMax(a,b)
  %6024 = call float @dx.op.binary.f32(i32 35, float %6022, float %6023)  ; FMax(a,b)
  %6025 = fmul fast float %6024, 2.000000e+00
  %6026 = call float @dx.op.unary.f32(i32 23, float %6025)  ; Log(value)
  %6027 = call float @dx.op.binary.f32(i32 35, float %6026, float %6007)  ; FMax(a,b)
  %6028 = call float @dx.op.unary.f32(i32 22, float %6027)  ; Frc(value)
  %6029 = fadd fast float %6028, 0xBFEA666660000000
  %6030 = fmul fast float %6029, 8.000000e+00
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = call float @dx.op.unary.f32(i32 27, float %6027)  ; Round_ni(value)
  %6033 = fadd fast float %6032, %6031
  %6034 = call float @dx.op.binary.f32(i32 36, float %6033, float %6009)  ; FMin(a,b)
  %6035 = call float @dx.op.unary.f32(i32 27, float %6034)  ; Round_ni(value)
  %6036 = fsub fast float -0.000000e+00, %6035
  %6037 = call float @dx.op.unary.f32(i32 21, float %6036)  ; Exp(value)
  %6038 = fmul fast float %6037, %6011
  %6039 = fmul fast float %6038, %5984
  %6040 = fmul fast float %6038, %5988
  %6041 = fmul fast float %6039, 2.500000e-01
  %6042 = fmul fast float %6040, 2.500000e-01
  %6043 = fadd fast float %6041, 5.000000e-01
  %6044 = fadd fast float %6042, 5.000000e-01
  %6045 = fsub fast float %6009, %6007
  %6046 = fptoui float %6045 to i32
  %6047 = add i32 %6046, 320
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6047)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = fcmp fast une float %6034, %6009
  %6052 = fsub fast float %5984, %6049
  %6053 = fsub fast float %5988, %6050
  %6054 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6055 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6056 = fmul fast float %6054, %6038
  %6057 = fmul fast float %6055, %6038
  %6058 = fcmp fast olt float %6056, 1.000000e+00
  %6059 = fcmp fast olt float %6057, 1.000000e+00
  %6060 = and i1 %6058, %6059
  %6061 = or i1 %6051, %6060
  br i1 %6061, label %6062, label %6359, !dx.controlflow.hints !102

; <label>:6062                                    ; preds = %6000
  %6063 = fmul fast float %6040, 5.000000e-01
  %6064 = fmul fast float %6039, 5.000000e-01
  %6065 = fadd fast float %6063, 5.000000e-01
  %6066 = fadd fast float %6064, 5.000000e-01
  %6067 = sitofp i32 %6006 to float
  %6068 = fsub fast float %6034, %6067
  %6069 = call float @dx.op.unary.f32(i32 27, float %6068)  ; Round_ni(value)
  %6070 = call float @dx.op.unary.f32(i32 22, float %6034)  ; Frc(value)
  %6071 = call float @dx.op.unary.f32(i32 22, float %6066)  ; Frc(value)
  %6072 = call float @dx.op.unary.f32(i32 22, float %6065)  ; Frc(value)
  %6073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6071, float %6072, float %6069, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.ResRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.ResRet.f32 %6073, 2
  %6077 = extractvalue %dx.types.ResRet.f32 %6073, 3
  %6078 = fcmp fast ogt float %6070, 0.000000e+00
  br i1 %6078, label %6079, label %6100, !dx.controlflow.hints !103

; <label>:6079                                    ; preds = %6062
  %6080 = fadd fast float %6069, 1.000000e+00
  %6081 = call float @dx.op.unary.f32(i32 22, float %6043)  ; Frc(value)
  %6082 = call float @dx.op.unary.f32(i32 22, float %6044)  ; Frc(value)
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6081, float %6082, float %6080, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.ResRet.f32 %6083, 3
  %6088 = fsub fast float %6084, %6074
  %6089 = fsub fast float %6085, %6075
  %6090 = fsub fast float %6086, %6076
  %6091 = fsub fast float %6087, %6077
  %6092 = fmul fast float %6088, %6070
  %6093 = fmul fast float %6089, %6070
  %6094 = fmul fast float %6090, %6070
  %6095 = fmul fast float %6091, %6070
  %6096 = fadd fast float %6092, %6074
  %6097 = fadd fast float %6093, %6075
  %6098 = fadd fast float %6094, %6076
  %6099 = fadd fast float %6095, %6077
  br label %6100

; <label>:6100                                    ; preds = %6079, %6062
  %6101 = phi float [ %6096, %6079 ], [ %6074, %6062 ]
  %6102 = phi float [ %6097, %6079 ], [ %6075, %6062 ]
  %6103 = phi float [ %6098, %6079 ], [ %6076, %6062 ]
  %6104 = phi float [ %6099, %6079 ], [ %6077, %6062 ]
  %6105 = fadd fast float %6101, -5.000000e-01
  %6106 = fadd fast float %6103, -5.000000e-01
  %6107 = fmul fast float %6105, 0xBFD5555560000000
  %6108 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6106, float %6107)  ; FMad(a,b,c)
  %6109 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6102, float 0.000000e+00)  ; FMad(a,b,c)
  %6110 = fadd fast float %6109, %6104
  %6111 = fmul fast float %6105, -7.500000e-01
  %6112 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6106, float %6111)  ; FMad(a,b,c)
  %6113 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6102, float 0.000000e+00)  ; FMad(a,b,c)
  %6114 = fadd fast float %6113, %6104
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6120 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6121 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6122 = fsub fast float %6118, %6108
  %6123 = fsub fast float %6119, %6110
  %6124 = fsub fast float %6120, %6112
  %6125 = fsub fast float %6121, %6114
  %6126 = fmul fast float %6122, %6116
  %6127 = fmul fast float %6123, %6116
  %6128 = fmul fast float %6124, %6116
  %6129 = fmul fast float %6125, %6116
  %6130 = fadd fast float %6126, %6108
  %6131 = fadd fast float %6127, %6110
  %6132 = fadd fast float %6128, %6112
  %6133 = fadd fast float %6129, %6114
  %6134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6135 = extractvalue %dx.types.ResRet.i32 %6134, 0
  %6136 = and i32 %6135, 536870911
  %6137 = uitofp i32 %6136 to float
  %6138 = fmul fast float %6137, %5984
  %6139 = fmul fast float %6137, %5988
  %6140 = fptoui float %6138 to i32
  %6141 = fptoui float %6139 to i32
  %6142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6143 = extractvalue %dx.types.ResRet.i32 %6142, 0
  %6144 = and i32 %6143, 31
  %6145 = lshr i32 %6140, %6144
  %6146 = lshr i32 %6141, %6144
  %6147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6148 = extractvalue %dx.types.ResRet.i32 %6147, 0
  %6149 = and i32 %6148, 31
  %6150 = shl i32 1, %6149
  %6151 = call i32 @dx.op.binary.i32(i32 40, i32 %6150, i32 4)  ; UMin(a,b)
  %6152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.i32 %6152, 0
  %6154 = extractvalue %dx.types.ResRet.i32 %6152, 1
  %6155 = icmp eq i32 %6151, 0
  br i1 %6155, label %6197, label %6156

; <label>:6156                                    ; preds = %6100
  br label %6157

; <label>:6157                                    ; preds = %6185, %6156
  %6158 = phi i32 [ %6188, %6185 ], [ 0, %6156 ]
  %6159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.i32 %6159, 0
  %6161 = lshr i32 %6160, 16
  %6162 = and i32 %6161, 31
  %6163 = shl i32 %6146, %6162
  %6164 = add i32 %6163, %6145
  %6165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6166 = extractvalue %dx.types.ResRet.i32 %6165, 0
  %6167 = and i32 %6166, 31
  %6168 = shl i32 %6164, %6167
  %6169 = add i32 %6168, %6158
  %6170 = shl i32 %6169, 2
  %6171 = add i32 %6170, 32
  %6172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.i32 %6172, 0
  %6174 = icmp slt i32 %6173, 0
  %6175 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6158
  %6176 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6158
  %6177 = bitcast float* %6175 to i32*
  %6178 = bitcast float* %6176 to i32*
  br i1 %6174, label %6179, label %6185

; <label>:6179                                    ; preds = %6157
  %6180 = and i32 %6173, 1073741823
  %6181 = add nuw nsw i32 %6180, 20
  %6182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6181, i32 undef)  ; BufferLoad(srv,index,wot)
  %6183 = extractvalue %dx.types.ResRet.i32 %6182, 0
  %6184 = extractvalue %dx.types.ResRet.i32 %6182, 1
  br label %6185

; <label>:6185                                    ; preds = %6179, %6157
  %6186 = phi i32 [ %6183, %6179 ], [ %6153, %6157 ]
  %6187 = phi i32 [ %6184, %6179 ], [ %6154, %6157 ]
  store i32 %6186, i32* %6177, align 4
  store i32 %6187, i32* %6178, align 4
  %6188 = add nuw i32 %6158, 1
  %6189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.i32 %6189, 2
  %6191 = icmp eq i32 %6190, 0
  %6192 = icmp ugt i32 %6173, -1073741825
  %6193 = and i1 %6192, %6191
  %6194 = icmp ult i32 %6188, %6151
  %6195 = and i1 %6193, %6194
  br i1 %6195, label %6157, label %6196

; <label>:6196                                    ; preds = %6185
  br label %6197

; <label>:6197                                    ; preds = %6196, %6100
  %6198 = phi i32 [ 0, %6100 ], [ %6188, %6196 ]
  %6199 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %6200 = fptoui float %6199 to i32
  %6201 = icmp eq i32 %6200, 0
  br i1 %6201, label %6253, label %6202

; <label>:6202                                    ; preds = %6197
  br label %6203

; <label>:6203                                    ; preds = %6248, %6202
  %6204 = phi i32 [ %6249, %6248 ], [ %6198, %6202 ]
  %6205 = phi i32 [ %6250, %6248 ], [ 0, %6202 ]
  %6206 = lshr i32 %6205, 2
  %6207 = and i32 %6205, 3
  %6208 = add nuw nsw i32 %6206, 83
  %6209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6208)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.i32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.i32 %6209, 1
  %6212 = extractvalue %dx.types.CBufRet.i32 %6209, 2
  %6213 = extractvalue %dx.types.CBufRet.i32 %6209, 3
  %6214 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6210, i32* %6214, align 4
  %6215 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6211, i32* %6215, align 4
  %6216 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6212, i32* %6216, align 4
  %6217 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6213, i32* %6217, align 4
  %6218 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6207
  %6219 = load i32, i32* %6218, align 4, !tbaa !104, !noalias !108
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = lshr i32 %6221, 16
  %6223 = and i32 %6222, 31
  %6224 = shl i32 %6146, %6223
  %6225 = add i32 %6224, %6145
  %6226 = shl i32 %6225, 2
  %6227 = add i32 %6226, %6219
  %6228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6227, i32 undef)  ; BufferLoad(srv,index,wot)
  %6229 = extractvalue %dx.types.ResRet.i32 %6228, 0
  %6230 = icmp eq i32 %6229, 0
  br i1 %6230, label %6248, label %6231

; <label>:6231                                    ; preds = %6203
  %6232 = icmp slt i32 %6229, 0
  %6233 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6204
  %6234 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6204
  %6235 = bitcast float* %6233 to i32*
  %6236 = bitcast float* %6234 to i32*
  br i1 %6232, label %6237, label %6244

; <label>:6237                                    ; preds = %6231
  %6238 = and i32 %6229, 1073741823
  %6239 = add i32 %6219, 20
  %6240 = add i32 %6239, %6238
  %6241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.i32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.i32 %6241, 1
  br label %6244

; <label>:6244                                    ; preds = %6237, %6231
  %6245 = phi i32 [ %6242, %6237 ], [ %6153, %6231 ]
  %6246 = phi i32 [ %6243, %6237 ], [ %6154, %6231 ]
  store i32 %6245, i32* %6235, align 4
  store i32 %6246, i32* %6236, align 4
  %6247 = add i32 %6204, 1
  br label %6248

; <label>:6248                                    ; preds = %6244, %6203
  %6249 = phi i32 [ %6204, %6203 ], [ %6247, %6244 ]
  %6250 = add nuw i32 %6205, 1
  %6251 = icmp eq i32 %6250, %6200
  br i1 %6251, label %6252, label %6203

; <label>:6252                                    ; preds = %6248
  br label %6253

; <label>:6253                                    ; preds = %6252, %6197
  %6254 = phi i32 [ %6198, %6197 ], [ %6249, %6252 ]
  %6255 = icmp eq i32 %6254, 1
  %6256 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6257 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6255, label %6258, label %6261

; <label>:6258                                    ; preds = %6253
  %6259 = load float, float* %6256, align 4
  %6260 = load float, float* %6257, align 4
  br label %6288

; <label>:6261                                    ; preds = %6253
  %6262 = load float, float* %6256, align 4
  %6263 = load float, float* %6257, align 4
  %6264 = fdiv fast float 1.000000e+00, %6263
  %6265 = fsub fast float %6262, %6264
  %6266 = icmp ugt i32 %6254, 1
  br i1 %6266, label %6267, label %6283

; <label>:6267                                    ; preds = %6261
  br label %6268

; <label>:6268                                    ; preds = %6268, %6267
  %6269 = phi float [ %6278, %6268 ], [ %6265, %6267 ]
  %6270 = phi float [ %6279, %6268 ], [ %6262, %6267 ]
  %6271 = phi i32 [ %6280, %6268 ], [ 1, %6267 ]
  %6272 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6271
  %6273 = load float, float* %6272, align 4
  %6274 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6271
  %6275 = load float, float* %6274, align 4
  %6276 = fdiv fast float 1.000000e+00, %6275
  %6277 = fsub fast float %6273, %6276
  %6278 = call float @dx.op.binary.f32(i32 36, float %6269, float %6277)  ; FMin(a,b)
  %6279 = call float @dx.op.binary.f32(i32 35, float %6270, float %6273)  ; FMax(a,b)
  %6280 = add nuw i32 %6271, 1
  %6281 = icmp eq i32 %6280, %6254
  br i1 %6281, label %6282, label %6268

; <label>:6282                                    ; preds = %6268
  br label %6283

; <label>:6283                                    ; preds = %6282, %6261
  %6284 = phi float [ %6265, %6261 ], [ %6278, %6282 ]
  %6285 = phi float [ %6262, %6261 ], [ %6279, %6282 ]
  %6286 = fsub fast float %6285, %6284
  %6287 = fdiv fast float 1.000000e+00, %6286
  br label %6288

; <label>:6288                                    ; preds = %6283, %6258
  %6289 = phi float [ %6259, %6258 ], [ %6285, %6283 ]
  %6290 = phi float [ %6260, %6258 ], [ %6287, %6283 ]
  %6291 = fadd fast float %5992, %6289
  %6292 = fmul fast float %6291, %6290
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = fmul fast float %6293, 2.000000e+00
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = fmul fast float %6130, %6130
  %6297 = fsub fast float %6131, %6296
  %6298 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6297)  ; FMax(a,b)
  %6299 = fdiv fast float 1.000000e+00, %6298
  %6300 = fmul fast float %6131, %6130
  %6301 = fsub fast float %6132, %6300
  %6302 = fsub fast float %6295, %6130
  %6303 = fmul fast float %6295, %6295
  %6304 = fsub fast float %6303, %6131
  %6305 = fmul fast float %6299, %6301
  %6306 = fmul fast float %6305, %6302
  %6307 = fsub fast float %6304, %6306
  %6308 = fmul fast float %6131, %6131
  %6309 = fsub fast float %6133, %6308
  %6310 = fmul fast float %6301, %6301
  %6311 = fmul fast float %6310, %6299
  %6312 = fsub fast float %6309, %6311
  %6313 = fdiv fast float %6307, %6312
  %6314 = fmul fast float %6313, %6301
  %6315 = fsub fast float %6302, %6314
  %6316 = fmul fast float %6315, %6299
  %6317 = fmul fast float %6316, %6130
  %6318 = fsub fast float 1.000000e+00, %6317
  %6319 = fmul fast float %6313, %6131
  %6320 = fsub fast float %6318, %6319
  %6321 = fmul fast float %6316, %6316
  %6322 = fmul fast float %6313, 4.000000e+00
  %6323 = fmul fast float %6322, %6320
  %6324 = fsub fast float %6321, %6323
  %6325 = call float @dx.op.unary.f32(i32 24, float %6324)  ; Sqrt(value)
  %6326 = fcmp fast oge float %6316, 0.000000e+00
  %6327 = fsub fast float -0.000000e+00, %6325
  %6328 = select i1 %6326, float %6327, float %6325
  %6329 = fsub fast float %6328, %6316
  %6330 = fdiv fast float %6329, %6313
  %6331 = fdiv fast float %6320, %6329
  %6332 = fmul fast float %6330, 5.000000e-01
  %6333 = fmul fast float %6331, 2.000000e+00
  %6334 = select i1 %6326, float %6332, float %6333
  %6335 = select i1 %6326, float %6333, float %6332
  %6336 = call float @dx.op.binary.f32(i32 35, float %6334, float %6335)  ; FMax(a,b)
  %6337 = call float @dx.op.binary.f32(i32 36, float %6334, float %6335)  ; FMin(a,b)
  %6338 = fcmp fast ogt float %6295, %6336
  %6339 = fsub fast float %6295, %6337
  %6340 = fsub fast float %6295, %6336
  %6341 = fsub fast float %6336, %6337
  %6342 = select i1 %6338, float %6340, float %6341
  %6343 = fmul float %6339, %6342
  %6344 = select i1 %6338, float %6337, float %6295
  %6345 = fcmp fast ogt float %6295, %6337
  %6346 = fmul fast float %6344, %6336
  %6347 = fadd fast float %6344, %6336
  %6348 = fmul fast float %6347, %6130
  %6349 = fadd fast float %6346, %6131
  %6350 = fsub fast float %6349, %6348
  %6351 = fdiv fast float %6350, %6343
  %6352 = select i1 %6345, float %6351, float 0.000000e+00
  %6353 = fsub fast float 1.000000e+00, %6352
  %6354 = select i1 %6338, float %6353, float %6352
  %6355 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6115, 3
  %6357 = fmul fast float %6356, %6355
  %6358 = fsub fast float 1.000000e+00, %6357
  br label %6359

; <label>:6359                                    ; preds = %6288, %6000, %5965, %5961, %5925
  %6360 = phi float [ 1.000000e+00, %5925 ], [ %6358, %6288 ], [ 1.000000e+00, %5965 ], [ 1.000000e+00, %6000 ], [ 1.000000e+00, %5961 ]
  %6361 = fcmp fast ogt float %5957, 0.000000e+00
  br i1 %6361, label %6362, label %6370, !dx.controlflow.hints !117

; <label>:6362                                    ; preds = %6359
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6365 = fadd fast float %6364, %5838
  %6366 = call float @dx.op.binary.f32(i32 35, float %6365, float 0.000000e+00)  ; FMax(a,b)
  %6367 = fadd fast float %6366, 0x3F10000000000000
  %6368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5856, float %5857, float undef, float undef, i32 0, i32 0, i32 undef, float %6367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  br label %6370

; <label>:6370                                    ; preds = %6362, %6359
  %6371 = phi float [ %6369, %6362 ], [ 1.000000e+00, %6359 ]
  %6372 = fcmp fast ogt float %5955, 0.000000e+00
  br i1 %6372, label %6373, label %6381, !dx.controlflow.hints !118

; <label>:6373                                    ; preds = %6370
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6376 = fadd fast float %6375, %5838
  %6377 = call float @dx.op.binary.f32(i32 35, float %6376, float 0.000000e+00)  ; FMax(a,b)
  %6378 = fadd fast float %6377, 0x3F10000000000000
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5848, float %5849, float undef, float undef, i32 0, i32 0, i32 undef, float %6378)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  br label %6381

; <label>:6381                                    ; preds = %6373, %6370
  %6382 = phi float [ %6380, %6373 ], [ 1.000000e+00, %6370 ]
  %6383 = fcmp fast ogt float %5954, 0.000000e+00
  br i1 %6383, label %6384, label %6396, !dx.controlflow.hints !119

; <label>:6384                                    ; preds = %6381
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = fadd fast float %6386, %5838
  %6388 = call float @dx.op.binary.f32(i32 35, float %6387, float 0.000000e+00)  ; FMax(a,b)
  %6389 = fadd fast float %6388, 0x3F10000000000000
  br i1 %5841, label %6390, label %6393, !dx.controlflow.hints !120

; <label>:6390                                    ; preds = %6384
  %6391 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5830, float %5834, float undef, float undef, i32 0, i32 0, i32 undef, float %6389)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6392 = extractvalue %dx.types.ResRet.f32 %6391, 0
  br label %6396

; <label>:6393                                    ; preds = %6384
  %6394 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5830, float %5834, float undef, float undef, i32 0, i32 0, i32 undef, float %6389)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6395 = extractvalue %dx.types.ResRet.f32 %6394, 0
  br label %6396

; <label>:6396                                    ; preds = %6393, %6390, %6381
  %6397 = phi float [ %6392, %6390 ], [ %6395, %6393 ], [ 1.000000e+00, %6381 ]
  %6398 = fsub fast float %6371, %6360
  %6399 = fmul fast float %6398, %5927
  %6400 = fadd fast float %6399, %6360
  %6401 = fsub fast float %6382, %6400
  %6402 = fmul fast float %6401, %5926
  %6403 = fadd fast float %6402, %6400
  %6404 = fsub fast float %6397, %6403
  %6405 = fmul fast float %6404, %5954
  %6406 = fadd fast float %6405, %6403
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6409 = fcmp fast ogt float %6408, 0.000000e+00
  br i1 %6409, label %6410, label %6450, !dx.controlflow.hints !121

; <label>:6410                                    ; preds = %6396
  %6411 = fcmp fast ugt float %6408, 0.000000e+00
  br i1 %6411, label %6412, label %6447

; <label>:6412                                    ; preds = %6410
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6417 = extractvalue %dx.types.CBufRet.f32 %6413, 3
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.CBufRet.f32 %6418, 2
  %6422 = extractvalue %dx.types.CBufRet.f32 %6418, 3
  %6423 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6424 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = fadd fast float %6426, %5807
  %6430 = fadd fast float %6427, %5808
  %6431 = fadd fast float %6428, %5809
  %6432 = fmul fast float %6429, %6414
  %6433 = call float @dx.op.tertiary.f32(i32 46, float %6415, float %6430, float %6432)  ; FMad(a,b,c)
  %6434 = call float @dx.op.tertiary.f32(i32 46, float %6416, float %6431, float %6433)  ; FMad(a,b,c)
  %6435 = fadd fast float %6434, %6417
  %6436 = fmul fast float %6429, %6419
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6420, float %6430, float %6436)  ; FMad(a,b,c)
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %6421, float %6431, float %6437)  ; FMad(a,b,c)
  %6439 = fadd fast float %6438, %6422
  %6440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6435, float %6439, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6441 = extractvalue %dx.types.ResRet.f32 %6440, 0
  %6442 = fmul fast float %6441, %6424
  %6443 = fadd fast float %6442, %6423
  %6444 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6445 = fmul fast float %6444, %6408
  %6446 = fsub fast float 1.000000e+00, %6445
  br label %6447

; <label>:6447                                    ; preds = %6412, %6410
  %6448 = phi float [ %6446, %6412 ], [ 1.000000e+00, %6410 ]
  %6449 = fmul fast float %6448, %6406
  br label %6450

; <label>:6450                                    ; preds = %6447, %6396, %5787
  %6451 = phi float [ 1.000000e+00, %5787 ], [ %6449, %6447 ], [ %6406, %6396 ]
  %6452 = call float @dx.op.binary.f32(i32 36, float %6451, float %6451)  ; FMin(a,b)
  %6453 = call float @dx.op.binary.f32(i32 36, float %6451, float %6452)  ; FMin(a,b)
  %6454 = fcmp fast ogt float %6453, 0.000000e+00
  br i1 %6454, label %6455, label %6615, !dx.controlflow.hints !122

; <label>:6455                                    ; preds = %6450
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.CBufRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.CBufRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.CBufRet.f32 %6461, 3
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6471 = fmul fast float %6457, %5807
  %6472 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %6458, float %6471)  ; FMad(a,b,c)
  %6473 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %6459, float %6472)  ; FMad(a,b,c)
  %6474 = fadd fast float %6473, %6460
  %6475 = fmul fast float %6462, %5807
  %6476 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %6463, float %6475)  ; FMad(a,b,c)
  %6477 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %6464, float %6476)  ; FMad(a,b,c)
  %6478 = fadd fast float %6477, %6465
  %6479 = fmul fast float %6467, %5807
  %6480 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %6468, float %6479)  ; FMad(a,b,c)
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %6469, float %6480)  ; FMad(a,b,c)
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6486 = fmul fast float %6485, %6474
  %6487 = fmul fast float %6485, %6478
  %6488 = fadd fast float %6486, %6483
  %6489 = fadd fast float %6487, %6484
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = fsub fast float %6488, %6491
  %6494 = fsub fast float %6489, %6492
  %6495 = fcmp fast olt float %6493, 0.000000e+00
  %6496 = fcmp fast olt float %6494, 0.000000e+00
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6508 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %6509 = call float @dx.op.binary.f32(i32 35, float %6506, float %6507)  ; FMax(a,b)
  %6510 = fsub fast float %6508, %6509
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = fcmp fast ogt float %6511, 0.000000e+00
  br i1 %6512, label %6513, label %6554, !dx.controlflow.hints !123

; <label>:6513                                    ; preds = %6455
  %6514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6488, float %6489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6516 = fcmp fast ogt float %6515, 0.000000e+00
  br i1 %6516, label %6517, label %6549

; <label>:6517                                    ; preds = %6513
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6488, float %6489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.ResRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.ResRet.f32 %6518, 3
  %6523 = fsub fast float 1.000000e+00, %6470
  %6524 = fsub fast float %6523, %6481
  %6525 = fmul fast float %6524, 0x400921FB60000000
  %6526 = fadd fast float %6525, 0x3FF921FB60000000
  %6527 = call float @dx.op.unary.f32(i32 13, float %6526)  ; Sin(value)
  %6528 = fadd fast float %6527, -1.000000e+00
  %6529 = fmul fast float %6528, 0x3FD45F3060000000
  %6530 = fmul fast float %6524, 0x401921FB60000000
  %6531 = fadd fast float %6530, 0x400921FB60000000
  %6532 = call float @dx.op.unary.f32(i32 13, float %6531)  ; Sin(value)
  %6533 = fadd fast float %6532, 0x3E7777A5C0000000
  %6534 = fmul fast float %6533, 0x3FC45F3060000000
  %6535 = fmul fast float %6524, 0x4022D97C80000000
  %6536 = fadd fast float %6535, 0x4012D97C80000000
  %6537 = call float @dx.op.unary.f32(i32 13, float %6536)  ; Sin(value)
  %6538 = fadd fast float %6537, 1.000000e+00
  %6539 = fmul fast float %6538, 0x3FBB2995E0000000
  %6540 = fmul fast float %6524, 0x402921FB60000000
  %6541 = fadd fast float %6540, 0x401921FB60000000
  %6542 = call float @dx.op.unary.f32(i32 13, float %6541)  ; Sin(value)
  %6543 = fadd fast float %6542, 0xBE8777A5C0000000
  %6544 = fmul fast float %6543, 0x3FB45F3060000000
  %6545 = call float @dx.op.dot4.f32(i32 56, float %6519, float %6520, float %6521, float %6522, float %6529, float %6534, float %6539, float %6544)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6546 = fmul fast float %6545, 0xBFF7154760000000
  %6547 = call float @dx.op.unary.f32(i32 21, float %6546)  ; Exp(value)
  %6548 = call float @dx.op.unary.f32(i32 7, float %6547)  ; Saturate(value)
  br label %6549

; <label>:6549                                    ; preds = %6517, %6513
  %6550 = phi float [ %6548, %6517 ], [ 1.000000e+00, %6513 ]
  %6551 = fadd fast float %6550, -1.000000e+00
  %6552 = fmul fast float %6551, %6511
  %6553 = fadd fast float %6552, 1.000000e+00
  br label %6554

; <label>:6554                                    ; preds = %6549, %6455
  %6555 = phi float [ %6553, %6549 ], [ 1.000000e+00, %6455 ]
  %6556 = fmul fast float %6555, %6451
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6561 = fadd fast float %6558, %199
  %6562 = fadd fast float %6559, %200
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6565 = fsub fast float -0.000000e+00, %6561
  %6566 = fsub fast float -0.000000e+00, %6562
  %6567 = fsub fast float %5316, %6560
  %6568 = fadd fast float %6567, %6564
  %6569 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6565, float %6566, float %6568)  ; Dot3(ax,ay,az,bx,by,bz)
  %6570 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5788, float %5789, float %5790)  ; Dot3(ax,ay,az,bx,by,bz)
  %6571 = fdiv fast float 1.000000e+00, %6570
  %6572 = fmul fast float %6571, %6569
  %6573 = fmul fast float %5788, %6572
  %6574 = fmul fast float %5789, %6572
  %6575 = fadd fast float %6573, %6561
  %6576 = fadd fast float %6574, %6562
  %6577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.f32 %6577, 0
  %6579 = extractvalue %dx.types.CBufRet.f32 %6577, 1
  %6580 = fsub fast float %6575, %6578
  %6581 = fsub fast float %6576, %6579
  %6582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.f32 %6582, 2
  %6584 = extractvalue %dx.types.CBufRet.f32 %6582, 3
  %6585 = fmul fast float %6580, %6583
  %6586 = fmul fast float %6581, %6584
  %6587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.i32 %6587, 3
  %6589 = icmp eq i32 %6588, 0
  br i1 %6589, label %6595, label %6590

; <label>:6590                                    ; preds = %6554
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6585, float %6586, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.ResRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.ResRet.f32 %6591, 2
  br label %6600

; <label>:6595                                    ; preds = %6554
  %6596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6585, float %6586, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = extractvalue %dx.types.ResRet.f32 %6596, 1
  %6599 = extractvalue %dx.types.ResRet.f32 %6596, 2
  br label %6600

; <label>:6600                                    ; preds = %6595, %6590
  %6601 = phi float [ %6592, %6590 ], [ %6597, %6595 ]
  %6602 = phi float [ %6593, %6590 ], [ %6598, %6595 ]
  %6603 = phi float [ %6594, %6590 ], [ %6599, %6595 ]
  %6604 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6605 = fmul fast float %6604, %6601
  %6606 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6607 = fsub fast float %6572, %6606
  %6608 = fsub fast float %6607, %6605
  %6609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6608)  ; FMax(a,b)
  %6610 = fmul fast float %6609, %6602
  %6611 = call float @dx.op.binary.f32(i32 36, float %6603, float %6610)  ; FMin(a,b)
  %6612 = fmul fast float %6611, 0xBFF7154760000000
  %6613 = call float @dx.op.unary.f32(i32 21, float %6612)  ; Exp(value)
  %6614 = fmul fast float %6556, %6613
  br label %6615

; <label>:6615                                    ; preds = %6600, %6450
  %6616 = phi float [ %6614, %6600 ], [ %6451, %6450 ]
  %6617 = call float @dx.op.binary.f32(i32 36, float %6616, float %6616)  ; FMin(a,b)
  %6618 = call float @dx.op.binary.f32(i32 36, float %6616, float %6617)  ; FMin(a,b)
  %6619 = fcmp fast ogt float %6618, 0.000000e+00
  br i1 %6619, label %6620, label %6871, !dx.controlflow.hints !124

; <label>:6620                                    ; preds = %6615
  %6621 = fmul fast float %6616, %5799
  %6622 = fmul fast float %6616, %5800
  %6623 = fmul fast float %6616, %5801
  %6624 = fsub fast float %201, %4493
  %6625 = fcmp fast ogt float %6624, 0.000000e+00
  %6626 = fmul fast float %5788, 5.120000e+02
  %6627 = fmul fast float %5789, 5.120000e+02
  %6628 = fmul fast float %5790, 5.120000e+02
  %6629 = fadd fast float %6628, %201
  %6630 = fsub fast float %4493, %6629
  %6631 = fmul fast float %6630, 2.000000e+00
  %6632 = fadd fast float %6631, %6629
  %6633 = select i1 %6625, float %6632, float %6629
  %6634 = fsub fast float %6633, %201
  %6635 = call float @dx.op.dot3.f32(i32 55, float %6626, float %6627, float %6634, float %6626, float %6627, float %6634)  ; Dot3(ax,ay,az,bx,by,bz)
  %6636 = call float @dx.op.unary.f32(i32 25, float %6635)  ; Rsqrt(value)
  %6637 = fmul fast float %6636, %6626
  %6638 = fmul fast float %6636, %6627
  %6639 = fmul fast float %6636, %6634
  %6640 = fsub fast float %4493, %201
  %6641 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6640)  ; Dot3(ax,ay,az,bx,by,bz)
  %6642 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6637, float %6638, float %6639)  ; Dot3(ax,ay,az,bx,by,bz)
  %6643 = fdiv fast float 1.000000e+00, %6642
  %6644 = fmul fast float %6643, %6641
  %6645 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6624, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6646 = fcmp fast ogt float %6645, 0.000000e+00
  %6647 = fcmp fast olt float %6645, 0.000000e+00
  %6648 = zext i1 %6646 to i32
  %6649 = zext i1 %6647 to i32
  %6650 = sub nsw i32 %6648, %6649
  %6651 = sitofp i32 %6650 to float
  %6652 = fsub fast float %6633, %4493
  %6653 = call float @dx.op.dot3.f32(i32 55, float %6626, float %6627, float %6652, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6654 = fcmp fast ogt float %6653, 0.000000e+00
  %6655 = fcmp fast olt float %6653, 0.000000e+00
  %6656 = zext i1 %6654 to i32
  %6657 = zext i1 %6655 to i32
  %6658 = sub nsw i32 %6656, %6657
  %6659 = sitofp i32 %6658 to float
  %6660 = fcmp fast une float %6651, %6659
  br i1 %6660, label %6661, label %6671

; <label>:6661                                    ; preds = %6620
  %6662 = fmul fast float %6644, %6639
  %6663 = fmul fast float %6644, %6638
  %6664 = fmul fast float %6644, %6637
  %6665 = fmul fast float %6664, %6664
  %6666 = fmul fast float %6663, %6663
  %6667 = fadd fast float %6665, %6666
  %6668 = fmul fast float %6662, %6662
  %6669 = fadd fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 24, float %6669)  ; Sqrt(value)
  br label %6681

; <label>:6671                                    ; preds = %6620
  %6672 = icmp slt i32 %6650, 0
  br i1 %6672, label %6673, label %6681

; <label>:6673                                    ; preds = %6671
  %6674 = fsub fast float %201, %6633
  %6675 = fmul fast float %6626, %6626
  %6676 = fmul fast float %6627, %6627
  %6677 = fadd fast float %6675, %6676
  %6678 = fmul fast float %6674, %6674
  %6679 = fadd fast float %6677, %6678
  %6680 = call float @dx.op.unary.f32(i32 24, float %6679)  ; Sqrt(value)
  br label %6681

; <label>:6681                                    ; preds = %6673, %6671, %6661
  %6682 = phi float [ %6670, %6661 ], [ %6680, %6673 ], [ 0.000000e+00, %6671 ]
  %6683 = fsub fast float -0.000000e+00, %6682
  %6684 = select i1 %6625, float -0.000000e+00, float %6683
  %6685 = fmul fast float %4494, 0x3FF7154760000000
  %6686 = fmul fast float %6685, %6684
  %6687 = fmul fast float %4495, 0x3FF7154760000000
  %6688 = fmul fast float %6687, %6684
  %6689 = fmul fast float %4496, 0x3FF7154760000000
  %6690 = fmul fast float %6689, %6684
  %6691 = call float @dx.op.unary.f32(i32 21, float %6686)  ; Exp(value)
  %6692 = call float @dx.op.unary.f32(i32 21, float %6688)  ; Exp(value)
  %6693 = call float @dx.op.unary.f32(i32 21, float %6690)  ; Exp(value)
  %6694 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6695 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6696 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6697 = fmul fast float %6621, %6694
  %6698 = fmul fast float %6622, %6695
  %6699 = fmul fast float %6623, %6696
  %6700 = fsub fast float %5788, %5319
  %6701 = fsub fast float %5789, %5320
  %6702 = fsub fast float %5790, %5321
  %6703 = call float @dx.op.dot3.f32(i32 55, float %6700, float %6701, float %6702, float %6700, float %6701, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6704 = call float @dx.op.unary.f32(i32 25, float %6703)  ; Rsqrt(value)
  %6705 = fmul fast float %6704, %6700
  %6706 = fmul fast float %6704, %6701
  %6707 = fmul fast float %6704, %6702
  %6708 = call float @dx.op.dot3.f32(i32 55, float %5788, float %5789, float %5790, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6709 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %6705, float %6706, float %6707)  ; Dot3(ax,ay,az,bx,by,bz)
  %6710 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6711 = fmul fast float %6710, %6710
  %6712 = fmul fast float %6711, %5340
  %6713 = call float @dx.op.unary.f32(i32 7, float %6712)  ; Saturate(value)
  %6714 = fmul fast float %6713, %6710
  %6715 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %6705, float %6706, float %6707)  ; Dot3(ax,ay,az,bx,by,bz)
  %6716 = fmul fast float %6715, %6715
  %6717 = call float @dx.op.unary.f32(i32 6, float %6708)  ; FAbs(value)
  %6718 = fsub fast float 1.000000e+00, %5282
  %6719 = call float @dx.op.binary.f32(i32 35, float %6718, float 0x3F847AE140000000)  ; FMax(a,b)
  %6720 = fmul fast float %6719, %6719
  %6721 = fmul fast float %6720, %6720
  %6722 = fsub fast float 1.000000e+00, %6721
  %6723 = fmul fast float %5327, %5327
  %6724 = fmul fast float %6723, %6722
  %6725 = fadd fast float %6724, %6721
  %6726 = bitcast float %6725 to i32
  %6727 = ashr i32 %6726, 1
  %6728 = add nsw i32 %6727, 532487669
  %6729 = bitcast i32 %6728 to float
  %6730 = fadd fast float %6729, %5327
  %6731 = fmul fast float %6721, %6716
  %6732 = fsub fast float 1.000000e+00, %6716
  %6733 = fadd fast float %6732, %6731
  %6734 = fmul fast float %6717, %6717
  %6735 = fmul fast float %6734, %6722
  %6736 = fadd fast float %6735, %6721
  %6737 = bitcast float %6736 to i32
  %6738 = ashr i32 %6737, 1
  %6739 = add nsw i32 %6738, 532487669
  %6740 = bitcast i32 %6739 to float
  %6741 = fadd fast float %6740, %6717
  %6742 = fmul fast float %6733, %6733
  %6743 = fmul fast float %6742, %6730
  %6744 = fmul fast float %6743, %6741
  %6745 = fdiv fast float 0x3FF0A00000000000, %6744
  %6746 = fmul fast float %6745, %6721
  %6747 = call float @dx.op.unary.f32(i32 6, float %6709)  ; FAbs(value)
  %6748 = fsub fast float 1.000000e+00, %6747
  %6749 = bitcast float %6748 to i32
  %6750 = sitofp i32 %6749 to float
  %6751 = fmul fast float %6750, 5.000000e+00
  %6752 = fadd fast float %6751, 0xC1EFBF8940000000
  %6753 = fptosi float %6752 to i32
  %6754 = bitcast i32 %6753 to float
  %6755 = fsub fast float 1.000000e+00, %5276
  %6756 = fsub fast float 1.000000e+00, %5277
  %6757 = fsub fast float 1.000000e+00, %5325
  %6758 = fmul fast float %6754, %6755
  %6759 = fmul fast float %6754, %6756
  %6760 = fmul fast float %6754, %6757
  %6761 = fadd fast float %6758, %5276
  %6762 = fadd fast float %6759, %5277
  %6763 = fadd fast float %6760, %5325
  br i1 %5642, label %6764, label %6787

; <label>:6764                                    ; preds = %6681
  %6765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %6747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6766 = extractvalue %dx.types.ResRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.ResRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.ResRet.f32 %6765, 2
  %6769 = fadd fast float %6766, -5.000000e-01
  %6770 = fadd fast float %6767, -5.000000e-01
  %6771 = fadd fast float %6768, -5.000000e-01
  %6772 = fmul fast float %5276, 4.000000e+00
  %6773 = fmul fast float %6772, %6755
  %6774 = fmul fast float %6773, %6769
  %6775 = fmul fast float %5277, 4.000000e+00
  %6776 = fmul fast float %6775, %6756
  %6777 = fmul fast float %6776, %6770
  %6778 = fmul fast float %5325, 4.000000e+00
  %6779 = fmul fast float %6778, %6757
  %6780 = fmul fast float %6779, %6771
  %6781 = fadd fast float %6774, %6761
  %6782 = fadd fast float %6777, %6762
  %6783 = fadd fast float %6780, %6763
  %6784 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  %6785 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  %6786 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  br label %6787

; <label>:6787                                    ; preds = %6764, %6681
  %6788 = phi float [ %6784, %6764 ], [ %6761, %6681 ]
  %6789 = phi float [ %6785, %6764 ], [ %6762, %6681 ]
  %6790 = phi float [ %6786, %6764 ], [ %6763, %6681 ]
  %6791 = fmul fast float %6708, 9.843750e-01
  %6792 = fadd fast float %6791, 7.812500e-03
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6792, float %5632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 3
  %6796 = fmul fast float %6794, %5276
  %6797 = fmul fast float %6794, %5277
  %6798 = fmul fast float %6794, %5325
  %6799 = fadd fast float %6796, %6795
  %6800 = fadd fast float %6797, %6795
  %6801 = fadd fast float %6798, %6795
  br i1 %5642, label %6802, label %6825

; <label>:6802                                    ; preds = %6787
  %6803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %6708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = fadd fast float %6804, -5.000000e-01
  %6808 = fadd fast float %6805, -5.000000e-01
  %6809 = fadd fast float %6806, -5.000000e-01
  %6810 = fmul fast float %5276, 4.000000e+00
  %6811 = fmul fast float %6810, %6755
  %6812 = fmul fast float %6811, %6807
  %6813 = fmul fast float %5277, 4.000000e+00
  %6814 = fmul fast float %6813, %6756
  %6815 = fmul fast float %6814, %6808
  %6816 = fmul fast float %5325, 4.000000e+00
  %6817 = fmul fast float %6816, %6757
  %6818 = fmul fast float %6817, %6809
  %6819 = fadd fast float %6812, %6799
  %6820 = fadd fast float %6815, %6800
  %6821 = fadd fast float %6818, %6801
  %6822 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6823 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6824 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  br label %6825

; <label>:6825                                    ; preds = %6802, %6787
  %6826 = phi float [ %6822, %6802 ], [ %6799, %6787 ]
  %6827 = phi float [ %6823, %6802 ], [ %6800, %6787 ]
  %6828 = phi float [ %6824, %6802 ], [ %6801, %6787 ]
  %6829 = call float @dx.op.binary.f32(i32 35, float %6827, float %6828)  ; FMax(a,b)
  %6830 = call float @dx.op.binary.f32(i32 35, float %6826, float %6829)  ; FMax(a,b)
  %6831 = fsub fast float 1.000000e+00, %6830
  %6832 = fmul fast float %6788, %6746
  %6833 = fmul fast float %6789, %6746
  %6834 = fmul fast float %6790, %6746
  %6835 = fsub fast float 1.000000e+00, %6709
  %6836 = bitcast float %6835 to i32
  %6837 = sitofp i32 %6836 to float
  %6838 = fmul fast float %6837, 5.000000e+00
  %6839 = fadd fast float %6838, 0xC1EFBF8940000000
  %6840 = fptosi float %6839 to i32
  %6841 = bitcast i32 %6840 to float
  %6842 = fmul fast float %6841, %4092
  %6843 = fmul fast float %6831, %6842
  %6844 = fmul fast float %6843, %5742
  %6845 = fmul fast float %6843, %5743
  %6846 = fmul fast float %6843, %5744
  %6847 = fadd fast float %6844, %6832
  %6848 = fadd fast float %6845, %6833
  %6849 = fadd fast float %6846, %6834
  %6850 = fmul fast float %6714, %6697
  %6851 = fmul fast float %6850, %6831
  %6852 = fmul fast float %6714, %6698
  %6853 = fmul fast float %6852, %6831
  %6854 = fmul fast float %6714, %6699
  %6855 = fmul fast float %6854, %6831
  %6856 = fmul fast float %6850, %6847
  %6857 = fmul fast float %6852, %6848
  %6858 = fmul fast float %6854, %6849
  %6859 = fadd fast float %6851, %5724
  %6860 = fmul fast float %6859, %4088
  %6861 = fadd fast float %6853, %5726
  %6862 = fmul fast float %6861, %4088
  %6863 = fadd fast float %6855, %5728
  %6864 = fmul fast float %6863, %4088
  %6865 = fadd fast float %6856, %5776
  %6866 = fmul fast float %6865, %4088
  %6867 = fadd fast float %6857, %5779
  %6868 = fmul fast float %6867, %4088
  %6869 = fadd fast float %6858, %5782
  %6870 = fmul fast float %6869, %4088
  br label %6871

; <label>:6871                                    ; preds = %6825, %6615, %5669
  %6872 = phi float [ %5777, %5669 ], [ %5777, %6615 ], [ %6866, %6825 ]
  %6873 = phi float [ %5780, %5669 ], [ %5780, %6615 ], [ %6868, %6825 ]
  %6874 = phi float [ %5783, %5669 ], [ %5783, %6615 ], [ %6870, %6825 ]
  %6875 = phi float [ %5772, %5669 ], [ %5772, %6615 ], [ %6860, %6825 ]
  %6876 = phi float [ %5773, %5669 ], [ %5773, %6615 ], [ %6862, %6825 ]
  %6877 = phi float [ %5774, %5669 ], [ %5774, %6615 ], [ %6864, %6825 ]
  %6878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.i32 %6878, 0
  %6880 = icmp eq i32 %6879, 0
  br i1 %6880, label %7501, label %6881

; <label>:6881                                    ; preds = %6871
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6885 = fmul fast float %6883, %116
  %6886 = fmul fast float %6884, %117
  %6887 = fptoui float %6885 to i32
  %6888 = fptoui float %6886 to i32
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6892 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6893 = fadd fast float %107, -4.000000e+00
  %6894 = call float @dx.op.binary.f32(i32 35, float %6893, float 0.000000e+00)  ; FMax(a,b)
  %6895 = fadd fast float %6894, %6890
  %6896 = fmul fast float %6895, %6891
  %6897 = call float @dx.op.unary.f32(i32 23, float %6896)  ; Log(value)
  %6898 = fmul fast float %6897, %6892
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %6901 = fmul fast float %6898, %6900
  %6902 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.i32 %6903, 1
  %6905 = add i32 %6904, -1
  %6906 = uitofp i32 %6904 to float
  %6907 = fmul fast float %6906, %6902
  %6908 = fptoui float %6907 to i32
  %6909 = call i32 @dx.op.binary.i32(i32 40, i32 %6908, i32 %6905)  ; UMin(a,b)
  %6910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.i32 %6910, 2
  %6912 = extractvalue %dx.types.CBufRet.i32 %6910, 3
  %6913 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6888, i32 %6911, i32 %6887)  ; UMad(a,b,c)
  %6914 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6909, i32 %6912, i32 %6913)  ; UMad(a,b,c)
  %6915 = add nsw i32 %6879, -1
  %6916 = call i32 @dx.op.binary.i32(i32 37, i32 %6915, i32 0)  ; IMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %6918 = fptoui float %6917 to i32
  %6919 = lshr i32 %6918, 5
  %6920 = call i32 @dx.op.binary.i32(i32 40, i32 %6919, i32 8191)  ; UMin(a,b)
  %6921 = shl i32 %6920, 2
  %6922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6921, i32 undef)  ; BufferLoad(srv,index,wot)
  %6923 = extractvalue %dx.types.ResRet.i32 %6922, 0
  %6924 = lshr i32 %6923, 16
  %6925 = and i32 %6923, 65535
  %6926 = lshr i32 %6923, 21
  %6927 = lshr i32 %6925, 5
  %6928 = call i32 @dx.op.binary.i32(i32 40, i32 %6927, i32 %6916)  ; UMin(a,b)
  %6929 = icmp ugt i32 %6926, %6928
  br i1 %6929, label %7501, label %6930

; <label>:6930                                    ; preds = %6881
  br label %6931

; <label>:6931                                    ; preds = %7491, %6930
  %6932 = phi i32 [ %7498, %7491 ], [ %6926, %6930 ]
  %6933 = phi float [ %7492, %7491 ], [ %6872, %6930 ]
  %6934 = phi float [ %7493, %7491 ], [ %6873, %6930 ]
  %6935 = phi float [ %7494, %7491 ], [ %6874, %6930 ]
  %6936 = phi float [ %7495, %7491 ], [ %6875, %6930 ]
  %6937 = phi float [ %7496, %7491 ], [ %6876, %6930 ]
  %6938 = phi float [ %7497, %7491 ], [ %6877, %6930 ]
  %6939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.i32 %6939, 0
  %6941 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6914, i32 %6940, i32 %6932)  ; UMad(a,b,c)
  %6942 = shl i32 %6941, 2
  %6943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6942, i32 undef)  ; BufferLoad(srv,index,wot)
  %6944 = extractvalue %dx.types.ResRet.i32 %6943, 0
  %6945 = shl i32 %6932, 5
  %6946 = sub nsw i32 %6924, %6945
  %6947 = call i32 @dx.op.binary.i32(i32 37, i32 %6946, i32 0)  ; IMax(a,b)
  %6948 = call i32 @dx.op.binary.i32(i32 38, i32 %6947, i32 31)  ; IMin(a,b)
  %6949 = sub nsw i32 1, %6924
  %6950 = add nsw i32 %6949, %6925
  %6951 = call i32 @dx.op.binary.i32(i32 37, i32 %6950, i32 0)  ; IMax(a,b)
  %6952 = call i32 @dx.op.binary.i32(i32 38, i32 %6951, i32 32)  ; IMin(a,b)
  %6953 = and i32 %6952, 31
  %6954 = shl i32 -1, %6953
  %6955 = xor i32 %6954, -1
  %6956 = and i32 %6948, 31
  %6957 = shl i32 %6955, %6956
  %6958 = icmp eq i32 %6952, 32
  %6959 = select i1 %6958, i32 -1, i32 %6957
  %6960 = and i32 %6959, %6944
  %6961 = icmp eq i32 %6960, 0
  br i1 %6961, label %7491, label %6962

; <label>:6962                                    ; preds = %6931
  br label %6963

; <label>:6963                                    ; preds = %7097, %6962
  %6964 = phi i32 [ %6975, %7097 ], [ %6960, %6962 ]
  %6965 = phi float [ %7098, %7097 ], [ %6933, %6962 ]
  %6966 = phi float [ %7099, %7097 ], [ %6934, %6962 ]
  %6967 = phi float [ %7100, %7097 ], [ %6935, %6962 ]
  %6968 = phi float [ %7101, %7097 ], [ %6936, %6962 ]
  %6969 = phi float [ %7102, %7097 ], [ %6937, %6962 ]
  %6970 = phi float [ %7103, %7097 ], [ %6938, %6962 ]
  %6971 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6964)  ; FirstbitLo(value)
  %6972 = add i32 %6971, %6945
  %6973 = and i32 %6971, 31
  %6974 = shl i32 1, %6973
  %6975 = xor i32 %6974, %6964
  %6976 = mul i32 %6972, 112
  %6977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6976, i32 undef)  ; BufferLoad(srv,index,wot)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 0
  %6979 = extractvalue %dx.types.ResRet.f32 %6977, 1
  %6980 = extractvalue %dx.types.ResRet.f32 %6977, 2
  %6981 = or i32 %6976, 12
  %6982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6981, i32 undef)  ; BufferLoad(srv,index,wot)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = add i32 %6976, 16
  %6985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6984, i32 undef)  ; BufferLoad(srv,index,wot)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.ResRet.f32 %6985, 1
  %6988 = extractvalue %dx.types.ResRet.f32 %6985, 2
  %6989 = add i32 %6976, 28
  %6990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6989, i32 undef)  ; BufferLoad(srv,index,wot)
  %6991 = extractvalue %dx.types.ResRet.i32 %6990, 0
  %6992 = add i32 %6976, 44
  %6993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6992, i32 undef)  ; BufferLoad(srv,index,wot)
  %6994 = extractvalue %dx.types.ResRet.f32 %6993, 0
  %6995 = add i32 %6976, 48
  %6996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6995, i32 undef)  ; BufferLoad(srv,index,wot)
  %6997 = extractvalue %dx.types.ResRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.ResRet.f32 %6996, 1
  %6999 = extractvalue %dx.types.ResRet.f32 %6996, 2
  %7000 = extractvalue %dx.types.ResRet.f32 %6996, 3
  %7001 = add i32 %6976, 64
  %7002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7001, i32 undef)  ; BufferLoad(srv,index,wot)
  %7003 = extractvalue %dx.types.ResRet.f32 %7002, 0
  %7004 = extractvalue %dx.types.ResRet.f32 %7002, 1
  %7005 = extractvalue %dx.types.ResRet.f32 %7002, 2
  %7006 = extractvalue %dx.types.ResRet.f32 %7002, 3
  %7007 = add i32 %6976, 80
  %7008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7007, i32 undef)  ; BufferLoad(srv,index,wot)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7011 = add i32 %6976, 92
  %7012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7011, i32 undef)  ; BufferLoad(srv,index,wot)
  %7013 = extractvalue %dx.types.ResRet.i32 %7012, 0
  %7014 = call float @dx.op.dot3.f32(i32 55, float %6978, float %6979, float %6980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = select i1 %271, float %7009, float %6978
  %7016 = select i1 %271, float %7014, float %6979
  %7017 = select i1 %271, float %7010, float %6980
  %7018 = and i32 %7013, 65535
  %7019 = uitofp i32 %7018 to float
  %7020 = lshr i32 %7013, 16
  %7021 = uitofp i32 %7020 to float
  %7022 = and i32 %6991, 65535
  %7023 = and i32 %6991, 50331648
  %7024 = icmp eq i32 %7023, 33554432
  %7025 = fsub fast float %6997, %199
  %7026 = fsub fast float %6998, %200
  %7027 = fsub fast float %6999, %201
  %7028 = call float @dx.op.dot3.f32(i32 55, float %7025, float %7026, float %7027, float %7025, float %7026, float %7027)  ; Dot3(ax,ay,az,bx,by,bz)
  %7029 = call float @dx.op.unary.f32(i32 24, float %7028)  ; Sqrt(value)
  %7030 = fdiv fast float 1.000000e+00, %7029
  %7031 = fmul fast float %7030, %7025
  %7032 = fmul fast float %7030, %7026
  %7033 = fmul fast float %7030, %7027
  %7034 = fadd fast float %7029, %6983
  %7035 = fdiv fast float 1.000000e+00, %7034
  %7036 = fmul float %6994, %7035
  %7037 = fmul float %7036, %7036
  %7038 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  br i1 %7024, label %7039, label %7060

; <label>:7039                                    ; preds = %6963
  %7040 = fmul fast float %7005, %6986
  %7041 = fmul fast float %7005, %6987
  %7042 = fmul fast float %7005, %6988
  %7043 = fadd fast float %7025, %7040
  %7044 = fadd fast float %7026, %7041
  %7045 = fadd fast float %7027, %7042
  %7046 = call float @dx.op.dot3.f32(i32 55, float %7043, float %7044, float %7045, float %7043, float %7044, float %7045)  ; Dot3(ax,ay,az,bx,by,bz)
  %7047 = call float @dx.op.unary.f32(i32 25, float %7046)  ; Rsqrt(value)
  %7048 = fmul fast float %7047, %7043
  %7049 = fmul fast float %7047, %7044
  %7050 = fmul fast float %7047, %7045
  %7051 = fsub fast float %199, %6997
  %7052 = fsub fast float %200, %6998
  %7053 = fsub fast float %201, %6999
  %7054 = fsub fast float -0.000000e+00, %7051
  %7055 = fsub fast float -0.000000e+00, %7052
  %7056 = fsub fast float -0.000000e+00, %7053
  %7057 = call float @dx.op.dot3.f32(i32 55, float %7054, float %7055, float %7056, float %6986, float %6987, float %6988)  ; Dot3(ax,ay,az,bx,by,bz)
  %7058 = fcmp fast ogt float %7057, 0.000000e+00
  %7059 = uitofp i1 %7058 to float
  br label %7060

; <label>:7060                                    ; preds = %7039, %6963
  %7061 = phi float [ %7059, %7039 ], [ 1.000000e+00, %6963 ]
  %7062 = phi float [ %7048, %7039 ], [ %7031, %6963 ]
  %7063 = phi float [ %7049, %7039 ], [ %7032, %6963 ]
  %7064 = phi float [ %7050, %7039 ], [ %7033, %6963 ]
  %7065 = call float @dx.op.dot3.f32(i32 55, float %6986, float %6987, float %6988, float %7062, float %7063, float %7064)  ; Dot3(ax,ay,az,bx,by,bz)
  %7066 = fmul fast float %7065, %7065
  %7067 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7068 = fsub fast float 1.000000e+00, %7067
  %7069 = fmul fast float %7068, 5.000000e-01
  %7070 = fcmp fast ogt float %7065, 0.000000e+00
  %7071 = fsub fast float 1.000000e+00, %7069
  %7072 = select i1 %7070, float %7069, float %7071
  %7073 = fmul fast float %7072, %7021
  %7074 = fadd fast float %7073, %7019
  %7075 = fmul fast float %7074, 0x3EF0001000000000
  %7076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7075, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = fmul fast float %7065, %7003
  %7079 = fadd fast float %7078, %7004
  %7080 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  %7081 = select i1 %7024, float 1.000000e+00, float %7080
  %7082 = select i1 %7024, float %7080, float 1.000000e+00
  %7083 = fmul fast float %7029, %7000
  %7084 = fsub fast float 1.000000e+00, %7083
  %7085 = fmul fast float %7084, %7006
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7087 = fmul fast float %7086, %7082
  %7088 = fmul fast float %7087, 2.000000e+00
  %7089 = fsub fast float 3.000000e+00, %7088
  %7090 = fmul fast float %7077, %7061
  %7091 = fmul fast float %7087, %7087
  %7092 = fmul fast float %7091, %7090
  %7093 = fmul fast float %7092, %7089
  %7094 = call float @dx.op.binary.f32(i32 36, float %7093, float %7093)  ; FMin(a,b)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7093, float %7094)  ; FMin(a,b)
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  br i1 %7096, label %7105, label %7097, !dx.controlflow.hints !125

; <label>:7097                                    ; preds = %7447, %7205, %7060
  %7098 = phi float [ %6965, %7205 ], [ %6965, %7060 ], [ %7487, %7447 ]
  %7099 = phi float [ %6966, %7205 ], [ %6966, %7060 ], [ %7488, %7447 ]
  %7100 = phi float [ %6967, %7205 ], [ %6967, %7060 ], [ %7489, %7447 ]
  %7101 = phi float [ %6968, %7205 ], [ %6968, %7060 ], [ %7481, %7447 ]
  %7102 = phi float [ %6969, %7205 ], [ %6969, %7060 ], [ %7482, %7447 ]
  %7103 = phi float [ %6970, %7205 ], [ %6970, %7060 ], [ %7483, %7447 ]
  %7104 = icmp eq i32 %6964, %6974
  br i1 %7104, label %7490, label %6963

; <label>:7105                                    ; preds = %7060
  %7106 = icmp eq i32 %7022, 255
  br i1 %7106, label %7205, label %7107, !dx.controlflow.hints !126

; <label>:7107                                    ; preds = %7105
  %7108 = mul nuw nsw i32 %7022, 176
  %7109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7108, i32 undef)  ; BufferLoad(srv,index,wot)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.ResRet.f32 %7109, 2
  %7113 = extractvalue %dx.types.ResRet.f32 %7109, 3
  %7114 = add nuw nsw i32 %7108, 16
  %7115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7114, i32 undef)  ; BufferLoad(srv,index,wot)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 1
  %7118 = add nuw nsw i32 %7108, 32
  %7119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7118, i32 undef)  ; BufferLoad(srv,index,wot)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.ResRet.f32 %7119, 1
  %7122 = extractvalue %dx.types.ResRet.f32 %7119, 2
  %7123 = add nuw nsw i32 %7108, 48
  %7124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7123, i32 undef)  ; BufferLoad(srv,index,wot)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.ResRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.ResRet.f32 %7124, 2
  %7128 = extractvalue %dx.types.ResRet.f32 %7124, 3
  %7129 = add nuw nsw i32 %7108, 64
  %7130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7129, i32 undef)  ; BufferLoad(srv,index,wot)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = extractvalue %dx.types.ResRet.f32 %7130, 3
  %7135 = add nuw nsw i32 %7108, 80
  %7136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7135, i32 undef)  ; BufferLoad(srv,index,wot)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = extractvalue %dx.types.ResRet.f32 %7136, 3
  %7141 = add nuw nsw i32 %7108, 96
  %7142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7141, i32 undef)  ; BufferLoad(srv,index,wot)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.ResRet.f32 %7142, 1
  %7145 = extractvalue %dx.types.ResRet.f32 %7142, 2
  %7146 = extractvalue %dx.types.ResRet.f32 %7142, 3
  %7147 = bitcast float %7117 to i32
  %7148 = fmul fast float %7122, %125
  %7149 = fmul fast float %7122, %127
  %7150 = fmul fast float %7122, %129
  %7151 = fadd fast float %7148, %199
  %7152 = fadd fast float %7149, %200
  %7153 = fadd fast float %7150, %201
  %7154 = fmul fast float %7151, %7125
  %7155 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7131, float %7154)  ; FMad(a,b,c)
  %7156 = call float @dx.op.tertiary.f32(i32 46, float %7153, float %7137, float %7155)  ; FMad(a,b,c)
  %7157 = fadd fast float %7156, %7143
  %7158 = fmul fast float %7151, %7126
  %7159 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7132, float %7158)  ; FMad(a,b,c)
  %7160 = call float @dx.op.tertiary.f32(i32 46, float %7153, float %7138, float %7159)  ; FMad(a,b,c)
  %7161 = fadd fast float %7160, %7144
  %7162 = fmul fast float %7151, %7127
  %7163 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7133, float %7162)  ; FMad(a,b,c)
  %7164 = call float @dx.op.tertiary.f32(i32 46, float %7153, float %7139, float %7163)  ; FMad(a,b,c)
  %7165 = fadd fast float %7164, %7145
  %7166 = fmul fast float %7151, %7128
  %7167 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7134, float %7166)  ; FMad(a,b,c)
  %7168 = call float @dx.op.tertiary.f32(i32 46, float %7153, float %7140, float %7167)  ; FMad(a,b,c)
  %7169 = fadd fast float %7168, %7146
  %7170 = fdiv fast float %7157, %7169
  %7171 = fdiv fast float %7161, %7169
  %7172 = fdiv fast float %7165, %7169
  %7173 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7172)  ; FMax(a,b)
  %7174 = fmul fast float %282, 0x401921FB60000000
  %7175 = call float @dx.op.unary.f32(i32 13, float %7174)  ; Sin(value)
  %7176 = call float @dx.op.unary.f32(i32 12, float %7174)  ; Cos(value)
  %7177 = fsub fast float -0.000000e+00, %7175
  %7178 = fmul fast float %7112, 5.000000e-01
  %7179 = call float @dx.op.dot2.f32(i32 54, float %282, float %282, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7180 = call float @dx.op.unary.f32(i32 22, float %7179)  ; Frc(value)
  %7181 = fmul fast float %7180, 0x404A7DD040000000
  %7182 = call float @dx.op.unary.f32(i32 22, float %7181)  ; Frc(value)
  %7183 = fmul fast float %7182, %7121
  %7184 = fadd fast float %7183, %7178
  %7185 = call float @dx.op.tertiary.f32(i32 46, float %7184, float %7177, float 0.000000e+00)  ; FMad(a,b,c)
  %7186 = call float @dx.op.tertiary.f32(i32 46, float %7184, float %7176, float 0.000000e+00)  ; FMad(a,b,c)
  %7187 = fadd fast float %7185, %7170
  %7188 = fadd fast float %7186, %7171
  %7189 = fmul fast float %7187, %7116
  %7190 = fmul fast float %7188, %7116
  %7191 = call float @dx.op.binary.f32(i32 35, float %7189, float %7112)  ; FMax(a,b)
  %7192 = call float @dx.op.binary.f32(i32 35, float %7190, float %7112)  ; FMax(a,b)
  %7193 = call float @dx.op.binary.f32(i32 36, float %7191, float %7113)  ; FMin(a,b)
  %7194 = call float @dx.op.binary.f32(i32 36, float %7192, float %7113)  ; FMin(a,b)
  %7195 = fadd fast float %7193, %7110
  %7196 = fadd fast float %7194, %7111
  %7197 = uitofp i32 %7147 to float
  %7198 = fadd fast float %7173, %7120
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7195, float %7196, float %7197, float undef, i32 0, i32 0, i32 undef, float %7198)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = fadd fast float %7200, -1.000000e+00
  %7202 = fmul fast float %7201, %7081
  %7203 = fadd fast float %7202, 1.000000e+00
  %7204 = fmul fast float %7203, %7093
  br label %7205

; <label>:7205                                    ; preds = %7107, %7105
  %7206 = phi float [ %7204, %7107 ], [ %7093, %7105 ]
  %7207 = call float @dx.op.binary.f32(i32 36, float %7206, float %7206)  ; FMin(a,b)
  %7208 = call float @dx.op.binary.f32(i32 36, float %7206, float %7207)  ; FMin(a,b)
  %7209 = fcmp fast ogt float %7208, 0.000000e+00
  br i1 %7209, label %7210, label %7097, !dx.controlflow.hints !127

; <label>:7210                                    ; preds = %7205
  %7211 = fmul fast float %7206, %7015
  %7212 = fmul fast float %7206, %7016
  %7213 = fmul fast float %7206, %7017
  %7214 = fsub fast float %6999, %4493
  %7215 = fcmp fast ogt float %7214, 0.000000e+00
  %7216 = fsub fast float %201, %4493
  %7217 = fcmp fast ogt float %7216, 0.000000e+00
  %7218 = xor i1 %7217, %7215
  %7219 = fsub fast float %4493, %6999
  %7220 = fmul fast float %7219, 2.000000e+00
  %7221 = fadd fast float %7220, %6999
  %7222 = select i1 %7218, float %6999, float %7221
  %7223 = fsub fast float %7222, %201
  %7224 = call float @dx.op.dot3.f32(i32 55, float %7025, float %7026, float %7223, float %7025, float %7026, float %7223)  ; Dot3(ax,ay,az,bx,by,bz)
  %7225 = call float @dx.op.unary.f32(i32 25, float %7224)  ; Rsqrt(value)
  %7226 = fmul fast float %7225, %7025
  %7227 = fmul fast float %7225, %7026
  %7228 = fmul fast float %7225, %7223
  %7229 = fsub fast float %4493, %201
  %7230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7229)  ; Dot3(ax,ay,az,bx,by,bz)
  %7231 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7226, float %7227, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7232 = fdiv fast float 1.000000e+00, %7231
  %7233 = fmul fast float %7232, %7230
  %7234 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7216, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7235 = fcmp fast ogt float %7234, 0.000000e+00
  %7236 = fcmp fast olt float %7234, 0.000000e+00
  %7237 = zext i1 %7235 to i32
  %7238 = zext i1 %7236 to i32
  %7239 = sub nsw i32 %7237, %7238
  %7240 = sitofp i32 %7239 to float
  %7241 = fsub fast float %7222, %4493
  %7242 = call float @dx.op.dot3.f32(i32 55, float %7025, float %7026, float %7241, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7243 = fcmp fast ogt float %7242, 0.000000e+00
  %7244 = fcmp fast olt float %7242, 0.000000e+00
  %7245 = zext i1 %7243 to i32
  %7246 = zext i1 %7244 to i32
  %7247 = sub nsw i32 %7245, %7246
  %7248 = sitofp i32 %7247 to float
  %7249 = fcmp fast une float %7240, %7248
  br i1 %7249, label %7250, label %7260

; <label>:7250                                    ; preds = %7210
  %7251 = fmul fast float %7233, %7228
  %7252 = fmul fast float %7233, %7227
  %7253 = fmul fast float %7233, %7226
  %7254 = fmul fast float %7253, %7253
  %7255 = fmul fast float %7252, %7252
  %7256 = fadd fast float %7254, %7255
  %7257 = fmul fast float %7251, %7251
  %7258 = fadd fast float %7256, %7257
  %7259 = call float @dx.op.unary.f32(i32 24, float %7258)  ; Sqrt(value)
  br label %7272

; <label>:7260                                    ; preds = %7210
  %7261 = icmp slt i32 %7239, 0
  br i1 %7261, label %7262, label %7272

; <label>:7262                                    ; preds = %7260
  %7263 = fsub fast float %199, %6997
  %7264 = fsub fast float %200, %6998
  %7265 = fsub fast float %201, %7222
  %7266 = fmul fast float %7263, %7263
  %7267 = fmul fast float %7264, %7264
  %7268 = fadd fast float %7266, %7267
  %7269 = fmul fast float %7265, %7265
  %7270 = fadd fast float %7268, %7269
  %7271 = call float @dx.op.unary.f32(i32 24, float %7270)  ; Sqrt(value)
  br label %7272

; <label>:7272                                    ; preds = %7262, %7260, %7250
  %7273 = phi float [ %7259, %7250 ], [ %7271, %7262 ], [ 0.000000e+00, %7260 ]
  %7274 = and i1 %7217, %7215
  %7275 = fsub fast float -0.000000e+00, %7273
  %7276 = select i1 %7274, float -0.000000e+00, float %7275
  %7277 = fmul fast float %4494, 0x3FF7154760000000
  %7278 = fmul fast float %7277, %7276
  %7279 = fmul fast float %4495, 0x3FF7154760000000
  %7280 = fmul fast float %7279, %7276
  %7281 = fmul fast float %4496, 0x3FF7154760000000
  %7282 = fmul fast float %7281, %7276
  %7283 = call float @dx.op.unary.f32(i32 21, float %7278)  ; Exp(value)
  %7284 = call float @dx.op.unary.f32(i32 21, float %7280)  ; Exp(value)
  %7285 = call float @dx.op.unary.f32(i32 21, float %7282)  ; Exp(value)
  %7286 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7287 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  %7288 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7289 = fmul fast float %7211, %7286
  %7290 = fmul fast float %7212, %7287
  %7291 = fmul fast float %7213, %7288
  %7292 = fsub fast float %7031, %5319
  %7293 = fsub fast float %7032, %5320
  %7294 = fsub fast float %7033, %5321
  %7295 = call float @dx.op.dot3.f32(i32 55, float %7292, float %7293, float %7294, float %7292, float %7293, float %7294)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = call float @dx.op.unary.f32(i32 25, float %7295)  ; Rsqrt(value)
  %7297 = fmul fast float %7296, %7292
  %7298 = fmul fast float %7296, %7293
  %7299 = fmul fast float %7296, %7294
  %7300 = call float @dx.op.dot3.f32(i32 55, float %7031, float %7032, float %7033, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7301 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %7297, float %7298, float %7299)  ; Dot3(ax,ay,az,bx,by,bz)
  %7302 = call float @dx.op.unary.f32(i32 7, float %7300)  ; Saturate(value)
  %7303 = fmul fast float %7302, %7038
  %7304 = fmul fast float %7302, %7302
  %7305 = fmul fast float %7304, %5340
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = fmul fast float %7303, %7306
  %7308 = bitcast float %7028 to i32
  %7309 = ashr i32 %7308, 1
  %7310 = sub nsw i32 1597463007, %7309
  %7311 = bitcast i32 %7310 to float
  %7312 = fmul fast float %7311, %7025
  %7313 = fmul fast float %7311, %7026
  %7314 = fmul fast float %7311, %7027
  %7315 = fsub fast float %7312, %5319
  %7316 = fsub fast float %7313, %5320
  %7317 = fsub fast float %7314, %5321
  %7318 = call float @dx.op.dot3.f32(i32 55, float %7315, float %7316, float %7317, float %7315, float %7316, float %7317)  ; Dot3(ax,ay,az,bx,by,bz)
  %7319 = call float @dx.op.unary.f32(i32 25, float %7318)  ; Rsqrt(value)
  %7320 = fmul fast float %7315, %7319
  %7321 = fmul fast float %7316, %7319
  %7322 = fmul fast float %7317, %7319
  %7323 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %7320, float %7321, float %7322)  ; Dot3(ax,ay,az,bx,by,bz)
  %7324 = fmul fast float %7323, %7323
  %7325 = call float @dx.op.unary.f32(i32 6, float %7300)  ; FAbs(value)
  %7326 = fsub fast float 1.000000e+00, %5282
  %7327 = call float @dx.op.binary.f32(i32 35, float %7326, float 0x3F847AE140000000)  ; FMax(a,b)
  %7328 = fmul fast float %7327, %7327
  %7329 = fmul fast float %7328, %7328
  %7330 = fsub fast float 1.000000e+00, %7329
  %7331 = fmul fast float %5327, %5327
  %7332 = fmul fast float %7331, %7330
  %7333 = fadd fast float %7332, %7329
  %7334 = bitcast float %7333 to i32
  %7335 = ashr i32 %7334, 1
  %7336 = add nsw i32 %7335, 532487669
  %7337 = bitcast i32 %7336 to float
  %7338 = fadd fast float %7337, %5327
  %7339 = fmul fast float %7329, %7324
  %7340 = fsub fast float 1.000000e+00, %7324
  %7341 = fadd fast float %7340, %7339
  %7342 = fmul fast float %7325, %7325
  %7343 = fmul fast float %7342, %7330
  %7344 = fadd fast float %7343, %7329
  %7345 = bitcast float %7344 to i32
  %7346 = ashr i32 %7345, 1
  %7347 = add nsw i32 %7346, 532487669
  %7348 = bitcast i32 %7347 to float
  %7349 = fadd fast float %7348, %7325
  %7350 = fmul fast float %7341, %7341
  %7351 = fmul fast float %7350, %7338
  %7352 = fmul fast float %7351, %7349
  %7353 = fdiv fast float 1.000000e+00, %7352
  %7354 = bitcast float %7329 to i32
  %7355 = sitofp i32 %7354 to float
  %7356 = fmul fast float %7355, 0x3FE7F73180000000
  %7357 = fadd fast float %7356, 0x41AFE27C40000000
  %7358 = fptosi float %7357 to i32
  %7359 = bitcast i32 %7358 to float
  %7360 = fmul fast float %6994, 0x3FD80E9D60000000
  %7361 = fmul fast float %7360, %7311
  %7362 = fadd fast float %7359, %7361
  %7363 = bitcast float %7362 to i32
  %7364 = sub nsw i32 2129859010, %7363
  %7365 = bitcast i32 %7364 to float
  %7366 = fmul fast float %7329, %7353
  %7367 = fmul fast float %7366, %7359
  %7368 = fmul fast float %7367, %7365
  %7369 = call float @dx.op.unary.f32(i32 6, float %7301)  ; FAbs(value)
  %7370 = fsub fast float 1.000000e+00, %7369
  %7371 = bitcast float %7370 to i32
  %7372 = sitofp i32 %7371 to float
  %7373 = fmul fast float %7372, 5.000000e+00
  %7374 = fadd fast float %7373, 0xC1EFBF8940000000
  %7375 = fptosi float %7374 to i32
  %7376 = bitcast i32 %7375 to float
  %7377 = fsub fast float 1.000000e+00, %5276
  %7378 = fsub fast float 1.000000e+00, %5277
  %7379 = fsub fast float 1.000000e+00, %5325
  %7380 = fmul fast float %7376, %7377
  %7381 = fmul fast float %7376, %7378
  %7382 = fmul fast float %7376, %7379
  %7383 = fadd fast float %7380, %5276
  %7384 = fadd fast float %7381, %5277
  %7385 = fadd fast float %7382, %5325
  br i1 %5642, label %7386, label %7409

; <label>:7386                                    ; preds = %7272
  %7387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %7369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.ResRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.ResRet.f32 %7387, 2
  %7391 = fadd fast float %7388, -5.000000e-01
  %7392 = fadd fast float %7389, -5.000000e-01
  %7393 = fadd fast float %7390, -5.000000e-01
  %7394 = fmul fast float %5276, 4.000000e+00
  %7395 = fmul fast float %7394, %7377
  %7396 = fmul fast float %7395, %7391
  %7397 = fmul fast float %5277, 4.000000e+00
  %7398 = fmul fast float %7397, %7378
  %7399 = fmul fast float %7398, %7392
  %7400 = fmul fast float %5325, 4.000000e+00
  %7401 = fmul fast float %7400, %7379
  %7402 = fmul fast float %7401, %7393
  %7403 = fadd fast float %7396, %7383
  %7404 = fadd fast float %7399, %7384
  %7405 = fadd fast float %7402, %7385
  %7406 = call float @dx.op.unary.f32(i32 7, float %7403)  ; Saturate(value)
  %7407 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7408 = call float @dx.op.unary.f32(i32 7, float %7405)  ; Saturate(value)
  br label %7409

; <label>:7409                                    ; preds = %7386, %7272
  %7410 = phi float [ %7406, %7386 ], [ %7383, %7272 ]
  %7411 = phi float [ %7407, %7386 ], [ %7384, %7272 ]
  %7412 = phi float [ %7408, %7386 ], [ %7385, %7272 ]
  %7413 = fmul fast float %7300, 9.843750e-01
  %7414 = fadd fast float %7413, 7.812500e-03
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7414, float %5632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 3
  %7418 = fmul fast float %7416, %5276
  %7419 = fmul fast float %7416, %5277
  %7420 = fmul fast float %7416, %5325
  %7421 = fadd fast float %7418, %7417
  %7422 = fadd fast float %7419, %7417
  %7423 = fadd fast float %7420, %7417
  br i1 %5642, label %7424, label %7447

; <label>:7424                                    ; preds = %7409
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %7300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7429 = fadd fast float %7426, -5.000000e-01
  %7430 = fadd fast float %7427, -5.000000e-01
  %7431 = fadd fast float %7428, -5.000000e-01
  %7432 = fmul fast float %5276, 4.000000e+00
  %7433 = fmul fast float %7432, %7377
  %7434 = fmul fast float %7433, %7429
  %7435 = fmul fast float %5277, 4.000000e+00
  %7436 = fmul fast float %7435, %7378
  %7437 = fmul fast float %7436, %7430
  %7438 = fmul fast float %5325, 4.000000e+00
  %7439 = fmul fast float %7438, %7379
  %7440 = fmul fast float %7439, %7431
  %7441 = fadd fast float %7434, %7421
  %7442 = fadd fast float %7437, %7422
  %7443 = fadd fast float %7440, %7423
  %7444 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7445 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7446 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  br label %7447

; <label>:7447                                    ; preds = %7424, %7409
  %7448 = phi float [ %7444, %7424 ], [ %7421, %7409 ]
  %7449 = phi float [ %7445, %7424 ], [ %7422, %7409 ]
  %7450 = phi float [ %7446, %7424 ], [ %7423, %7409 ]
  %7451 = call float @dx.op.binary.f32(i32 35, float %7449, float %7450)  ; FMax(a,b)
  %7452 = call float @dx.op.binary.f32(i32 35, float %7448, float %7451)  ; FMax(a,b)
  %7453 = fsub fast float 1.000000e+00, %7452
  %7454 = fmul fast float %7410, %7368
  %7455 = fmul fast float %7411, %7368
  %7456 = fmul fast float %7412, %7368
  %7457 = fsub fast float 1.000000e+00, %7301
  %7458 = bitcast float %7457 to i32
  %7459 = sitofp i32 %7458 to float
  %7460 = fmul fast float %7459, 5.000000e+00
  %7461 = fadd fast float %7460, 0xC1EFBF8940000000
  %7462 = fptosi float %7461 to i32
  %7463 = bitcast i32 %7462 to float
  %7464 = fmul fast float %7463, %4092
  %7465 = fmul fast float %7453, %7464
  %7466 = fmul fast float %7465, %5742
  %7467 = fmul fast float %7465, %5743
  %7468 = fmul fast float %7465, %5744
  %7469 = fadd fast float %7466, %7454
  %7470 = fadd fast float %7467, %7455
  %7471 = fadd fast float %7468, %7456
  %7472 = fmul fast float %7289, %4088
  %7473 = fmul fast float %7472, %7307
  %7474 = fmul fast float %7473, %7453
  %7475 = fmul fast float %7290, %4088
  %7476 = fmul fast float %7475, %7307
  %7477 = fmul fast float %7476, %7453
  %7478 = fmul fast float %7291, %4088
  %7479 = fmul fast float %7478, %7307
  %7480 = fmul fast float %7479, %7453
  %7481 = fadd fast float %7474, %6968
  %7482 = fadd fast float %7477, %6969
  %7483 = fadd fast float %7480, %6970
  %7484 = fmul fast float %7473, %7469
  %7485 = fmul fast float %7476, %7470
  %7486 = fmul fast float %7479, %7471
  %7487 = fadd fast float %7484, %6965
  %7488 = fadd fast float %7485, %6966
  %7489 = fadd fast float %7486, %6967
  br label %7097

; <label>:7490                                    ; preds = %7097
  br label %7491

; <label>:7491                                    ; preds = %7490, %6931
  %7492 = phi float [ %6933, %6931 ], [ %7098, %7490 ]
  %7493 = phi float [ %6934, %6931 ], [ %7099, %7490 ]
  %7494 = phi float [ %6935, %6931 ], [ %7100, %7490 ]
  %7495 = phi float [ %6936, %6931 ], [ %7101, %7490 ]
  %7496 = phi float [ %6937, %6931 ], [ %7102, %7490 ]
  %7497 = phi float [ %6938, %6931 ], [ %7103, %7490 ]
  %7498 = add i32 %6932, 1
  %7499 = icmp ugt i32 %7498, %6928
  br i1 %7499, label %7500, label %6931

; <label>:7500                                    ; preds = %7491
  br label %7501

; <label>:7501                                    ; preds = %7500, %6881, %6871
  %7502 = phi float [ %6872, %6871 ], [ %6872, %6881 ], [ %7492, %7500 ]
  %7503 = phi float [ %6873, %6871 ], [ %6873, %6881 ], [ %7493, %7500 ]
  %7504 = phi float [ %6874, %6871 ], [ %6874, %6881 ], [ %7494, %7500 ]
  %7505 = phi float [ %6875, %6871 ], [ %6875, %6881 ], [ %7495, %7500 ]
  %7506 = phi float [ %6876, %6871 ], [ %6876, %6881 ], [ %7496, %7500 ]
  %7507 = phi float [ %6877, %6871 ], [ %6877, %6881 ], [ %7497, %7500 ]
  %7508 = fmul fast float %4088, %4088
  %7509 = fsub fast float 1.000000e+00, %7508
  %7510 = call float @dx.op.dot3.f32(i32 55, float %7509, float %7509, float %7509, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7511 = fsub fast float 1.000000e+00, %7510
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7514 = fmul fast float %7513, %5758
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 3
  %7517 = fsub fast float 1.000000e+00, %4096
  %7518 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  %7519 = fadd fast float %7507, %4094
  %7520 = fmul fast float %7519, %4096
  %7521 = fmul fast float %7518, %7516
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 3
  %7524 = fmul fast float %7505, %5273
  %7525 = fmul fast float %7506, %5274
  %7526 = fmul fast float %7507, %5275
  %7527 = fcmp fast ogt float %107, %234
  %7528 = and i1 %7527, %4499
  %7529 = or i1 %4505, %7528
  %7530 = icmp eq i32 %4498, 2
  %7531 = fcmp fast ole float %107, %234
  %7532 = and i1 %7531, %7530
  %7533 = or i1 %7532, %7529
  br i1 %7528, label %7534, label %7791

; <label>:7534                                    ; preds = %7501
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7537 = extractvalue %dx.types.CBufRet.f32 %7535, 3
  %7538 = fmul fast float %7536, %116
  %7539 = fmul fast float %7537, %117
  %7540 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  %7541 = call float @dx.op.unary.f32(i32 7, float %7539)  ; Saturate(value)
  %7542 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7540, float %7541, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.ResRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.ResRet.f32 %7542, 2
  %7546 = extractvalue %dx.types.ResRet.f32 %7542, 3
  %7547 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7540, float %7541, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.ResRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.ResRet.f32 %7547, 2
  %7551 = extractvalue %dx.types.ResRet.f32 %7547, 3
  %7552 = call float @dx.op.binary.f32(i32 35, float %7544, float %7545)  ; FMax(a,b)
  %7553 = call float @dx.op.binary.f32(i32 35, float %7543, float %7552)  ; FMax(a,b)
  %7554 = call float @dx.op.binary.f32(i32 35, float %7553, float %7546)  ; FMax(a,b)
  %7555 = call float @dx.op.binary.f32(i32 36, float %7549, float %7550)  ; FMin(a,b)
  %7556 = call float @dx.op.binary.f32(i32 36, float %7548, float %7555)  ; FMin(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7556, float %7551)  ; FMin(a,b)
  %7558 = fmul fast float %7554, 2.550000e+02
  %7559 = fadd fast float %7558, 0x3F70101020000000
  %7560 = fptoui float %7559 to i32
  %7561 = fmul fast float %7557, 2.550000e+02
  %7562 = fadd fast float %7561, 0x3F70101020000000
  %7563 = fptoui float %7562 to i32
  %7564 = icmp ult i32 %7560, %7563
  br i1 %7564, label %7565, label %7733

; <label>:7565                                    ; preds = %7534
  %7566 = fcmp fast ogt float %106, 9.843750e-01
  %7567 = fadd fast float %107, -4.000000e+00
  %7568 = select i1 %7566, float -4.000000e+00, float %7567
  %7569 = call float @dx.op.binary.f32(i32 35, float %7568, float 0.000000e+00)  ; FMax(a,b)
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %7572 = fadd fast float %7571, %7569
  %7573 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7574 = fmul fast float %7572, %7573
  %7575 = call float @dx.op.unary.f32(i32 23, float %7574)  ; Log(value)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7570, 3
  %7577 = fmul fast float %7576, %7575
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7580 = fmul fast float %7577, %7579
  %7581 = call float @dx.op.unary.f32(i32 7, float %7580)  ; Saturate(value)
  %7582 = uitofp i32 %7560 to float
  %7583 = uitofp i32 %7563 to float
  %7584 = fadd fast float %7582, 5.000000e-01
  %7585 = fadd fast float %7583, 5.000000e-01
  %7586 = fmul fast float %7579, %7584
  %7587 = fmul fast float %7579, %7585
  %7588 = fadd fast float %7586, 0x3F0FFB4800000000
  %7589 = fadd fast float %7587, 0xBF0FFB4800000000
  %7590 = call float @dx.op.binary.f32(i32 35, float %7581, float %7588)  ; FMax(a,b)
  %7591 = call float @dx.op.binary.f32(i32 36, float %7590, float %7589)  ; FMin(a,b)
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7595 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7596 = fmul fast float %7593, %7591
  %7597 = fadd fast float %7595, %7596
  %7598 = fadd fast float %7595, %7594
  %7599 = fsub fast float %7593, %7594
  %7600 = fadd fast float %7599, %7595
  %7601 = call float @dx.op.binary.f32(i32 35, float %7597, float %7598)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 36, float %7601, float %7600)  ; FMin(a,b)
  %7603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7540, float %7541, float %7602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7604 = extractvalue %dx.types.ResRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.ResRet.f32 %7603, 1
  %7606 = extractvalue %dx.types.ResRet.f32 %7603, 2
  %7607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.i32 %7607, 0
  %7609 = extractvalue %dx.types.CBufRet.i32 %7607, 1
  %7610 = uitofp i32 %7608 to float
  %7611 = uitofp i32 %7609 to float
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.CBufRet.f32 %7612, 1
  %7615 = fmul fast float %7610, %7540
  %7616 = fmul fast float %7611, %7541
  %7617 = fadd fast float %7615, -5.000000e-01
  %7618 = fadd fast float %7616, -5.000000e-01
  %7619 = call float @dx.op.unary.f32(i32 22, float %7617)  ; Frc(value)
  %7620 = call float @dx.op.unary.f32(i32 22, float %7618)  ; Frc(value)
  %7621 = fmul fast float %7619, %7619
  %7622 = fmul fast float %7621, %7619
  %7623 = fsub fast float 3.000000e+00, %7619
  %7624 = fmul fast float %7621, %7623
  %7625 = fmul fast float %7619, 3.000000e+00
  %7626 = fmul fast float %7622, 3.000000e+00
  %7627 = fmul fast float %7621, 6.000000e+00
  %7628 = fsub fast float %7626, %7627
  %7629 = fadd fast float %7628, 4.000000e+00
  %7630 = fmul fast float %7629, 0x3FC5555560000000
  %7631 = fmul fast float %7622, -3.000000e+00
  %7632 = fadd fast float %7621, %7619
  %7633 = fmul fast float %7632, 3.000000e+00
  %7634 = fadd fast float %7631, 1.000000e+00
  %7635 = fadd fast float %7634, %7633
  %7636 = fmul fast float %7622, 0x3FC5555560000000
  %7637 = fmul fast float %7620, %7620
  %7638 = fmul fast float %7637, %7620
  %7639 = fsub fast float 3.000000e+00, %7620
  %7640 = fmul fast float %7637, %7639
  %7641 = fmul fast float %7620, 3.000000e+00
  %7642 = fmul fast float %7638, 3.000000e+00
  %7643 = fmul fast float %7637, 6.000000e+00
  %7644 = fsub fast float %7642, %7643
  %7645 = fadd fast float %7644, 4.000000e+00
  %7646 = fmul fast float %7645, 0x3FC5555560000000
  %7647 = fmul fast float %7638, -3.000000e+00
  %7648 = fadd fast float %7637, %7620
  %7649 = fmul fast float %7648, 3.000000e+00
  %7650 = fadd fast float %7647, 1.000000e+00
  %7651 = fadd fast float %7650, %7649
  %7652 = fmul fast float %7638, 0x3FC5555560000000
  %7653 = fadd fast float %7619, 1.000000e+00
  %7654 = fsub fast float 1.000000e+00, %7625
  %7655 = fadd fast float %7654, %7624
  %7656 = fadd fast float %7655, %7629
  %7657 = fmul fast float %7656, 0x3FC5555560000000
  %7658 = fdiv fast float %7630, %7657
  %7659 = fsub fast float %7653, %7658
  %7660 = fsub fast float 1.000000e+00, %7619
  %7661 = fadd fast float %7635, %7622
  %7662 = fmul fast float %7661, 0x3FC5555560000000
  %7663 = fdiv fast float %7636, %7662
  %7664 = fadd fast float %7660, %7663
  %7665 = fadd fast float %7620, 1.000000e+00
  %7666 = fsub fast float 1.000000e+00, %7641
  %7667 = fadd fast float %7666, %7640
  %7668 = fadd fast float %7667, %7645
  %7669 = fmul fast float %7668, 0x3FC5555560000000
  %7670 = fdiv fast float %7646, %7669
  %7671 = fsub fast float %7665, %7670
  %7672 = fsub fast float 1.000000e+00, %7620
  %7673 = fadd fast float %7651, %7638
  %7674 = fmul fast float %7673, 0x3FC5555560000000
  %7675 = fdiv fast float %7652, %7674
  %7676 = fadd fast float %7675, %7672
  %7677 = fmul fast float %7659, %7613
  %7678 = fsub fast float %7540, %7677
  %7679 = fmul fast float %7664, %7613
  %7680 = fadd fast float %7679, %7540
  %7681 = fmul fast float %7676, %7614
  %7682 = fadd fast float %7681, %7541
  %7683 = fmul fast float %7671, %7614
  %7684 = fsub fast float %7541, %7683
  %7685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7678, float %7684, float %7602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.ResRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.ResRet.f32 %7685, 2
  %7689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7680, float %7684, float %7602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7690 = extractvalue %dx.types.ResRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.ResRet.f32 %7689, 1
  %7692 = extractvalue %dx.types.ResRet.f32 %7689, 2
  %7693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7678, float %7682, float %7602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.ResRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.ResRet.f32 %7693, 2
  %7697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7680, float %7682, float %7602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  %7701 = fsub fast float %7694, %7686
  %7702 = fsub fast float %7695, %7687
  %7703 = fsub fast float %7696, %7688
  %7704 = fmul fast float %7701, %7674
  %7705 = fmul fast float %7702, %7674
  %7706 = fmul fast float %7703, %7674
  %7707 = fadd fast float %7704, %7686
  %7708 = fadd fast float %7705, %7687
  %7709 = fadd fast float %7706, %7688
  %7710 = fsub fast float %7698, %7690
  %7711 = fsub fast float %7699, %7691
  %7712 = fsub fast float %7700, %7692
  %7713 = fmul fast float %7710, %7674
  %7714 = fmul fast float %7711, %7674
  %7715 = fmul fast float %7712, %7674
  %7716 = fsub fast float %7690, %7707
  %7717 = fadd fast float %7716, %7713
  %7718 = fsub fast float %7691, %7708
  %7719 = fadd fast float %7718, %7714
  %7720 = fsub fast float %7692, %7709
  %7721 = fadd fast float %7720, %7715
  %7722 = fmul fast float %7717, %7662
  %7723 = fmul fast float %7719, %7662
  %7724 = fmul fast float %7721, %7662
  %7725 = fadd fast float %7722, %7707
  %7726 = fadd fast float %7723, %7708
  %7727 = fadd fast float %7724, %7709
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 1
  %7730 = fmul fast float %7725, %7729
  %7731 = fmul fast float %7726, %7729
  %7732 = fmul fast float %7727, %7729
  br label %7733

; <label>:7733                                    ; preds = %7565, %7534
  %7734 = phi float [ %7604, %7565 ], [ 1.000000e+00, %7534 ]
  %7735 = phi float [ %7605, %7565 ], [ 1.000000e+00, %7534 ]
  %7736 = phi float [ %7606, %7565 ], [ 1.000000e+00, %7534 ]
  %7737 = phi float [ %7730, %7565 ], [ 0.000000e+00, %7534 ]
  %7738 = phi float [ %7731, %7565 ], [ 0.000000e+00, %7534 ]
  %7739 = phi float [ %7732, %7565 ], [ 0.000000e+00, %7534 ]
  %7740 = fmul fast float %7737, %7511
  %7741 = fmul fast float %7738, %7511
  %7742 = fmul fast float %7739, %7511
  %7743 = call float @dx.op.dot3.f32(i32 55, float %7734, float %7735, float %7736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7744 = call float @dx.op.dot3.f32(i32 55, float %7740, float %7741, float %7742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7745 = select i1 %271, float %7743, float %7734
  %7746 = select i1 %271, float %7743, float %7735
  %7747 = select i1 %271, float 1.000000e+00, float %7736
  %7748 = select i1 %271, float %7744, float %7740
  %7749 = select i1 %271, float 0.000000e+00, float %7741
  %7750 = select i1 %271, float 0.000000e+00, float %7742
  %7751 = fmul fast float %7745, %7524
  %7752 = fmul fast float %7746, %7525
  %7753 = fmul fast float %7747, %7526
  %7754 = fadd fast float %7751, %7748
  %7755 = fadd fast float %7752, %7749
  %7756 = fadd fast float %7750, %7753
  %7757 = fmul fast float %7745, %7502
  %7758 = fmul fast float %7746, %7503
  %7759 = fmul fast float %7747, %7504
  %7760 = fmul fast float %148, %7536
  %7761 = fmul fast float %150, %7537
  %7762 = fsub fast float 1.000000e+00, %7760
  %7763 = fsub fast float 1.000000e+00, %7761
  %7764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7765 = extractvalue %dx.types.CBufRet.f32 %7764, 0
  %7766 = extractvalue %dx.types.CBufRet.f32 %7764, 1
  %7767 = extractvalue %dx.types.CBufRet.f32 %7764, 2
  %7768 = fmul fast float %7762, %7765
  %7769 = fmul fast float %7762, %7766
  %7770 = fmul fast float %7762, %7767
  %7771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7771, 0
  %7773 = extractvalue %dx.types.CBufRet.f32 %7771, 1
  %7774 = extractvalue %dx.types.CBufRet.f32 %7771, 2
  %7775 = fmul fast float %7763, %7772
  %7776 = fmul fast float %7763, %7773
  %7777 = fmul fast float %7763, %7774
  %7778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7779 = extractvalue %dx.types.CBufRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.CBufRet.f32 %7778, 1
  %7781 = extractvalue %dx.types.CBufRet.f32 %7778, 2
  %7782 = fadd fast float %7775, %7779
  %7783 = fadd fast float %7782, %7768
  %7784 = fadd fast float %7776, %7780
  %7785 = fadd fast float %7784, %7769
  %7786 = fadd fast float %7777, %7781
  %7787 = fadd fast float %7786, %7770
  %7788 = fmul fast float %7783, %234
  %7789 = fmul fast float %7785, %234
  %7790 = fmul fast float %7787, %234
  br label %7791

; <label>:7791                                    ; preds = %7733, %7501
  %7792 = phi float [ %7788, %7733 ], [ %199, %7501 ]
  %7793 = phi float [ %7789, %7733 ], [ %200, %7501 ]
  %7794 = phi float [ %7790, %7733 ], [ %201, %7501 ]
  %7795 = phi float [ %234, %7733 ], [ %107, %7501 ]
  %7796 = phi float [ %7754, %7733 ], [ %7524, %7501 ]
  %7797 = phi float [ %7755, %7733 ], [ %7525, %7501 ]
  %7798 = phi float [ %7756, %7733 ], [ %7526, %7501 ]
  %7799 = phi float [ %7757, %7733 ], [ %7502, %7501 ]
  %7800 = phi float [ %7758, %7733 ], [ %7503, %7501 ]
  %7801 = phi float [ %7759, %7733 ], [ %7504, %7501 ]
  %7802 = phi float [ %7734, %7733 ], [ 1.000000e+00, %7501 ]
  br i1 %7533, label %8957, label %7803

; <label>:7803                                    ; preds = %7791
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.CBufRet.f32 %7804, 1
  %7807 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7808 = extractvalue %dx.types.CBufRet.f32 %7804, 3
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 0
  %7811 = extractvalue %dx.types.CBufRet.f32 %7809, 1
  %7812 = extractvalue %dx.types.CBufRet.f32 %7809, 2
  %7813 = extractvalue %dx.types.CBufRet.f32 %7809, 3
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = extractvalue %dx.types.CBufRet.f32 %7814, 3
  %7819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7820 = extractvalue %dx.types.CBufRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.CBufRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.CBufRet.f32 %7819, 2
  %7823 = extractvalue %dx.types.CBufRet.f32 %7819, 3
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 3
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 3
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7829 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7830 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7831 = fcmp fast olt float %7830, -5.000000e-01
  %7832 = call float @dx.op.dot3.f32(i32 55, float %7792, float %7793, float %7794, float %7792, float %7793, float %7794)  ; Dot3(ax,ay,az,bx,by,bz)
  %7833 = call float @dx.op.unary.f32(i32 25, float %7832)  ; Rsqrt(value)
  %7834 = fmul fast float %7833, %7832
  %7835 = fmul fast float %7833, %7792
  %7836 = fmul fast float %7833, %7793
  %7837 = fmul fast float %7833, %7794
  %7838 = fadd fast float %7834, %7808
  %7839 = call float @dx.op.dot3.f32(i32 55, float %7835, float %7836, float %7837, float %7805, float %7806, float %7807)  ; Dot3(ax,ay,az,bx,by,bz)
  %7840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.i32 %7840, 1
  %7842 = and i32 %7841, 1
  %7843 = icmp ne i32 %7842, 0
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7846 = fcmp fast ogt float %7845, 0.000000e+00
  %7847 = and i1 %7843, %7846
  br i1 %7847, label %7848, label %8254, !dx.controlflow.hints !128

; <label>:7848                                    ; preds = %7803
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 3
  %7851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.f32 %7851, 2
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7855 = fsub fast float %7852, %7854
  %7856 = and i32 %7841, 2
  %7857 = extractvalue %dx.types.CBufRet.i32 %7840, 0
  %7858 = call i32 @dx.op.binary.i32(i32 40, i32 %7857, i32 3)  ; UMin(a,b)
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7863 = extractvalue %dx.types.CBufRet.f32 %7853, 1
  %7864 = fsub fast float %7860, %7862
  %7865 = fsub fast float %7861, %7863
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 0
  %7868 = fcmp fast ogt float %7867, 0.000000e+00
  %7869 = fsub fast float -0.000000e+00, %7864
  %7870 = fsub fast float -0.000000e+00, %7865
  %7871 = call float @dx.op.dot2.f32(i32 54, float %7835, float %7836, float %7835, float %7836)  ; Dot2(ax,ay,bx,by)
  %7872 = call float @dx.op.dot2.f32(i32 54, float %7835, float %7836, float %7869, float %7870)  ; Dot2(ax,ay,bx,by)
  %7873 = fmul fast float %7872, 2.000000e+00
  %7874 = call float @dx.op.dot2.f32(i32 54, float %7869, float %7870, float %7869, float %7870)  ; Dot2(ax,ay,bx,by)
  %7875 = fmul fast float %7867, %7867
  %7876 = fsub fast float %7874, %7875
  %7877 = fmul fast float %7873, %7873
  %7878 = fmul fast float %7871, 4.000000e+00
  %7879 = fmul fast float %7878, %7876
  %7880 = fsub fast float %7877, %7879
  %7881 = fcmp fast ogt float %7880, 0.000000e+00
  br i1 %7881, label %7882, label %7897

; <label>:7882                                    ; preds = %7848
  %7883 = fcmp fast ogt float %7873, 0.000000e+00
  %7884 = call float @dx.op.unary.f32(i32 24, float %7880)  ; Sqrt(value)
  %7885 = fsub fast float -0.000000e+00, %7884
  %7886 = select i1 %7883, float %7884, float %7885
  %7887 = fadd fast float %7886, %7873
  %7888 = fmul float %7887, -5.000000e-01
  %7889 = fdiv fast float %7888, %7871
  %7890 = call float @dx.op.binary.f32(i32 35, float %7889, float 0.000000e+00)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 36, float %7834, float %7890)  ; FMin(a,b)
  %7892 = fdiv fast float %7876, %7888
  %7893 = call float @dx.op.binary.f32(i32 35, float %7892, float 0.000000e+00)  ; FMax(a,b)
  %7894 = call float @dx.op.binary.f32(i32 36, float %7834, float %7893)  ; FMin(a,b)
  %7895 = call float @dx.op.binary.f32(i32 36, float %7891, float %7894)  ; FMin(a,b)
  %7896 = call float @dx.op.binary.f32(i32 35, float %7891, float %7894)  ; FMax(a,b)
  br label %7897

; <label>:7897                                    ; preds = %7882, %7848
  %7898 = phi float [ %7896, %7882 ], [ -1.000000e+00, %7848 ]
  %7899 = phi float [ %7895, %7882 ], [ -1.000000e+00, %7848 ]
  %7900 = phi i1 [ true, %7882 ], [ false, %7848 ]
  %7901 = and i1 %7868, %7900
  br i1 %7901, label %7902, label %7904

; <label>:7902                                    ; preds = %7897
  %7903 = fcmp fast oeq float %7899, %7898
  br i1 %7903, label %8207, label %7905

; <label>:7904                                    ; preds = %7897
  br i1 %7868, label %8207, label %7905

; <label>:7905                                    ; preds = %7904, %7902
  %7906 = phi float [ %7834, %7904 ], [ %7898, %7902 ]
  %7907 = phi float [ 0.000000e+00, %7904 ], [ %7899, %7902 ]
  %7908 = icmp ne i32 %7856, 0
  %7909 = fmul fast float %7906, %7837
  %7910 = fadd fast float %7909, %7850
  %7911 = fmul fast float %7910, %7906
  %7912 = select i1 %7908, float 0.000000e+00, float %7911
  %7913 = fcmp fast oeq float %7837, 0.000000e+00
  %7914 = fdiv fast float %7855, %7837
  %7915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7914)  ; FMax(a,b)
  %7916 = select i1 %7913, float %7906, float %7915
  %7917 = call float @dx.op.binary.f32(i32 36, float %7906, float %7916)  ; FMin(a,b)
  %7918 = fcmp fast ogt float %7837, 0.000000e+00
  %7919 = fcmp fast olt float %7855, 0.000000e+00
  br i1 %7918, label %7920, label %7977

; <label>:7920                                    ; preds = %7905
  %7921 = icmp eq i32 %7856, 0
  br i1 %7919, label %7922, label %7966

; <label>:7922                                    ; preds = %7920
  %7923 = select i1 %7921, float %7906, float 0.000000e+00
  %7924 = fsub fast float -0.000000e+00, %7923
  %7925 = call float @dx.op.unary.f32(i32 6, float %7924)  ; FAbs(value)
  %7926 = fmul fast float %7923, %7837
  %7927 = fadd fast float %7926, %7850
  %7928 = fmul fast float %7925, %7927
  %7929 = fsub fast float %7912, %7928
  %7930 = fsub fast float %7906, %7925
  %7931 = select i1 %7921, float %7930, float 0.000000e+00
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7932, 1
  %7935 = extractvalue %dx.types.CBufRet.f32 %7932, 2
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.CBufRet.f32 %7936, 2
  %7940 = extractvalue %dx.types.CBufRet.f32 %7936, 3
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 3
  %7943 = call float @dx.op.binary.f32(i32 36, float %7929, float %7942)  ; FMin(a,b)
  %7944 = fmul fast float %7940, %7931
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7946 = fsub fast float %7937, %7933
  %7947 = fsub fast float %7938, %7934
  %7948 = fsub fast float %7939, %7935
  %7949 = fmul fast float %7945, %7946
  %7950 = fmul fast float %7945, %7947
  %7951 = fmul fast float %7945, %7948
  %7952 = fadd fast float %7949, %7933
  %7953 = fadd fast float %7950, %7934
  %7954 = fadd fast float %7951, %7935
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.CBufRet.f32 %7955, 1
  %7958 = fadd fast float %7957, %7956
  %7959 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7955, 2
  %7961 = extractvalue %dx.types.CBufRet.f32 %7955, 3
  %7962 = fadd fast float %7961, %7960
  %7963 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7964 = fmul fast float %7959, %7943
  %7965 = fmul fast float %7964, %7963
  br label %8207

; <label>:7966                                    ; preds = %7920
  br i1 %7921, label %7967, label %7988

; <label>:7967                                    ; preds = %7966
  %7968 = call float @dx.op.binary.f32(i32 36, float %7917, float %7907)  ; FMin(a,b)
  %7969 = fsub fast float %7917, %7968
  %7970 = fsub fast float %7969, %7906
  %7971 = call float @dx.op.unary.f32(i32 6, float %7970)  ; FAbs(value)
  %7972 = fadd fast float %7969, %7906
  %7973 = fmul fast float %7972, %7837
  %7974 = fadd fast float %7973, %7850
  %7975 = fmul fast float %7974, %7971
  %7976 = fsub fast float %7912, %7975
  br label %7988

; <label>:7977                                    ; preds = %7905
  br i1 %7919, label %7978, label %7988

; <label>:7978                                    ; preds = %7977
  %7979 = call float @dx.op.binary.f32(i32 35, float %7907, float %7917)  ; FMax(a,b)
  %7980 = icmp eq i32 %7856, 0
  %7981 = select i1 %7980, float %7917, float 0.000000e+00
  %7982 = fsub fast float -0.000000e+00, %7981
  %7983 = call float @dx.op.unary.f32(i32 6, float %7982)  ; FAbs(value)
  %7984 = fmul fast float %7981, %7837
  %7985 = fadd fast float %7984, %7850
  %7986 = fmul fast float %7983, %7985
  %7987 = fsub fast float %7912, %7986
  br label %7988

; <label>:7988                                    ; preds = %7978, %7977, %7967, %7966
  %7989 = phi float [ %7907, %7966 ], [ %7907, %7967 ], [ %7979, %7978 ], [ %7907, %7977 ]
  %7990 = phi float [ 0.000000e+00, %7966 ], [ %7971, %7967 ], [ %7983, %7978 ], [ 0.000000e+00, %7977 ]
  %7991 = phi float [ %7912, %7966 ], [ %7976, %7967 ], [ %7987, %7978 ], [ %7912, %7977 ]
  %7992 = phi float [ %7917, %7966 ], [ %7917, %7967 ], [ %7906, %7978 ], [ %7906, %7977 ]
  %7993 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %7993, align 4, !tbaa !129, !noalias !131
  %7994 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %7994, align 4, !tbaa !129, !noalias !131
  %7995 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %7995, align 4, !tbaa !129, !noalias !131
  %7996 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %7996, align 4, !tbaa !129, !noalias !131
  %7997 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %7997, align 4, !tbaa !129, !noalias !131
  %7998 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %7998, align 4, !tbaa !129, !noalias !131
  %7999 = icmp sgt i32 %7858, 0
  br i1 %7999, label %8000, label %8061

; <label>:8000                                    ; preds = %7988
  br label %8001

; <label>:8001                                    ; preds = %8050, %8000
  %8002 = phi i32 [ %8051, %8050 ], [ 0, %8000 ]
  %8003 = phi i32 [ %8052, %8050 ], [ 0, %8000 ]
  %8004 = add nuw i32 %8003, 171
  %8005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8004)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8005, 0
  %8007 = extractvalue %dx.types.CBufRet.f32 %8005, 1
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8011 = fsub fast float %8006, %8009
  %8012 = fsub fast float %8007, %8010
  %8013 = extractvalue %dx.types.CBufRet.f32 %8005, 2
  %8014 = fsub fast float -0.000000e+00, %8011
  %8015 = fsub fast float -0.000000e+00, %8012
  %8016 = call float @dx.op.dot2.f32(i32 54, float %7835, float %7836, float %8014, float %8015)  ; Dot2(ax,ay,bx,by)
  %8017 = fmul fast float %8016, 2.000000e+00
  %8018 = call float @dx.op.dot2.f32(i32 54, float %8014, float %8015, float %8014, float %8015)  ; Dot2(ax,ay,bx,by)
  %8019 = fmul fast float %8013, %8013
  %8020 = fsub fast float %8018, %8019
  %8021 = fmul fast float %8017, %8017
  %8022 = fmul fast float %7878, %8020
  %8023 = fsub fast float %8021, %8022
  %8024 = fcmp fast ogt float %8023, 0.000000e+00
  br i1 %8024, label %8025, label %8040

; <label>:8025                                    ; preds = %8001
  %8026 = fcmp fast ogt float %8017, 0.000000e+00
  %8027 = call float @dx.op.unary.f32(i32 24, float %8023)  ; Sqrt(value)
  %8028 = fsub fast float -0.000000e+00, %8027
  %8029 = select i1 %8026, float %8027, float %8028
  %8030 = fadd fast float %8029, %8017
  %8031 = fmul float %8030, -5.000000e-01
  %8032 = fdiv fast float %8031, %7871
  %8033 = call float @dx.op.binary.f32(i32 35, float %8032, float 0.000000e+00)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 36, float %7906, float %8033)  ; FMin(a,b)
  %8035 = fdiv fast float %8020, %8031
  %8036 = call float @dx.op.binary.f32(i32 35, float %8035, float 0.000000e+00)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 36, float %7906, float %8036)  ; FMin(a,b)
  %8038 = call float @dx.op.binary.f32(i32 36, float %8034, float %8037)  ; FMin(a,b)
  %8039 = call float @dx.op.binary.f32(i32 35, float %8034, float %8037)  ; FMax(a,b)
  br label %8040

; <label>:8040                                    ; preds = %8025, %8001
  %8041 = phi float [ %8039, %8025 ], [ -1.000000e+00, %8001 ]
  %8042 = phi float [ %8038, %8025 ], [ -1.000000e+00, %8001 ]
  %8043 = phi i1 [ true, %8025 ], [ false, %8001 ]
  br i1 %8043, label %8044, label %8050

; <label>:8044                                    ; preds = %8040
  %8045 = call float @dx.op.binary.f32(i32 35, float %7989, float %8042)  ; FMax(a,b)
  %8046 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8003
  store float %8045, float* %8046, align 4, !tbaa !129, !noalias !131
  %8047 = call float @dx.op.binary.f32(i32 35, float %7989, float %8041)  ; FMax(a,b)
  %8048 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8003
  store float %8047, float* %8048, align 4, !tbaa !129, !noalias !131
  %8049 = add nsw i32 %8002, 1
  br label %8050

; <label>:8050                                    ; preds = %8044, %8040
  %8051 = phi i32 [ %8049, %8044 ], [ %8002, %8040 ]
  %8052 = add nuw nsw i32 %8003, 1
  %8053 = icmp eq i32 %8052, %7858
  br i1 %8053, label %8054, label %8001

; <label>:8054                                    ; preds = %8050
  %8055 = load float, float* %7995, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8056 = load float, float* %7994, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8057 = load float, float* %7993, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8058 = load float, float* %7998, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8059 = load float, float* %7997, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8060 = load float, float* %7996, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8061

; <label>:8061                                    ; preds = %8054, %7988
  %8062 = phi float [ -1.000000e+00, %7988 ], [ %8060, %8054 ]
  %8063 = phi float [ -1.000000e+00, %7988 ], [ %8059, %8054 ]
  %8064 = phi float [ -1.000000e+00, %7988 ], [ %8058, %8054 ]
  %8065 = phi float [ -1.000000e+00, %7988 ], [ %8057, %8054 ]
  %8066 = phi float [ -1.000000e+00, %7988 ], [ %8056, %8054 ]
  %8067 = phi float [ -1.000000e+00, %7988 ], [ %8055, %8054 ]
  %8068 = phi i32 [ 0, %7988 ], [ %8051, %8054 ]
  %8069 = call float @dx.op.binary.f32(i32 36, float %8066, float %8067)  ; FMin(a,b)
  %8070 = call float @dx.op.binary.f32(i32 36, float %8065, float %8069)  ; FMin(a,b)
  %8071 = call float @dx.op.binary.f32(i32 35, float %8065, float %8066)  ; FMax(a,b)
  %8072 = call float @dx.op.binary.f32(i32 36, float %8071, float %8067)  ; FMin(a,b)
  %8073 = call float @dx.op.binary.f32(i32 36, float %8065, float %8066)  ; FMin(a,b)
  %8074 = call float @dx.op.binary.f32(i32 35, float %8073, float %8072)  ; FMax(a,b)
  %8075 = call float @dx.op.binary.f32(i32 35, float %8066, float %8067)  ; FMax(a,b)
  %8076 = call float @dx.op.binary.f32(i32 35, float %8065, float %8075)  ; FMax(a,b)
  store float %8070, float* %7993, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8074, float* %7994, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8076, float* %7995, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8077 = call float @dx.op.binary.f32(i32 36, float %8063, float %8064)  ; FMin(a,b)
  %8078 = call float @dx.op.binary.f32(i32 36, float %8062, float %8077)  ; FMin(a,b)
  %8079 = call float @dx.op.binary.f32(i32 35, float %8062, float %8063)  ; FMax(a,b)
  %8080 = call float @dx.op.binary.f32(i32 36, float %8079, float %8064)  ; FMin(a,b)
  %8081 = call float @dx.op.binary.f32(i32 36, float %8062, float %8063)  ; FMin(a,b)
  %8082 = call float @dx.op.binary.f32(i32 35, float %8081, float %8080)  ; FMax(a,b)
  %8083 = call float @dx.op.binary.f32(i32 35, float %8063, float %8064)  ; FMax(a,b)
  %8084 = call float @dx.op.binary.f32(i32 35, float %8062, float %8083)  ; FMax(a,b)
  store float %8078, float* %7996, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8082, float* %7997, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8084, float* %7998, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8085 = sub nsw i32 3, %8068
  %8086 = icmp sgt i32 %8085, 2
  br i1 %8086, label %8087, label %8125

; <label>:8087                                    ; preds = %8061
  %8088 = icmp eq i32 %7856, 0
  %8089 = fsub fast float %7906, %7990
  %8090 = select i1 %8088, float %8089, float %7990
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.f32 %8091, 1
  %8094 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.CBufRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8099 = extractvalue %dx.types.CBufRet.f32 %8095, 3
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8102 = call float @dx.op.binary.f32(i32 36, float %7991, float %8101)  ; FMin(a,b)
  %8103 = fmul fast float %8099, %8090
  %8104 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  %8105 = fsub fast float %8096, %8092
  %8106 = fsub fast float %8097, %8093
  %8107 = fsub fast float %8098, %8094
  %8108 = fmul fast float %8104, %8105
  %8109 = fmul fast float %8104, %8106
  %8110 = fmul fast float %8104, %8107
  %8111 = fadd fast float %8108, %8092
  %8112 = fadd fast float %8109, %8093
  %8113 = fadd fast float %8110, %8094
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8117 = fadd fast float %8116, %8115
  %8118 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8119 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8120 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8121 = fadd fast float %8120, %8119
  %8122 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  %8123 = fmul fast float %8118, %8102
  %8124 = fmul fast float %8123, %8122
  br label %8207

; <label>:8125                                    ; preds = %8061
  %8126 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8085
  %8127 = load float, float* %8126, align 4, !tbaa !129, !noalias !131
  %8128 = fcmp fast olt float %8127, %7992
  %8129 = icmp sgt i32 %8068, 0
  %8130 = and i1 %8129, %8128
  br i1 %8130, label %8131, label %8168

; <label>:8131                                    ; preds = %8125
  br label %8132

; <label>:8132                                    ; preds = %8161, %8131
  %8133 = phi float [ %8162, %8161 ], [ %7990, %8131 ]
  %8134 = phi float [ %8163, %8161 ], [ %7991, %8131 ]
  %8135 = phi float [ %8143, %8161 ], [ %8127, %8131 ]
  %8136 = phi i32 [ %8140, %8161 ], [ %8085, %8131 ]
  %8137 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8136
  %8138 = load float, float* %8137, align 4, !tbaa !129, !noalias !131
  %8139 = icmp slt i32 %8136, 2
  %8140 = add nsw i32 %8136, 1
  %8141 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8140
  %8142 = load float, float* %8141, align 4, !tbaa !129, !noalias !131
  %8143 = select i1 %8139, float %8142, float %7906
  %8144 = call float @dx.op.binary.f32(i32 36, float %8143, float %8138)  ; FMin(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %7992, float %8144)  ; FMin(a,b)
  %8146 = icmp eq i32 %7856, 0
  %8147 = fadd fast float %8145, %8135
  %8148 = fmul fast float %8147, %7837
  %8149 = fadd fast float %8148, %7850
  br i1 %8146, label %8155, label %8150

; <label>:8150                                    ; preds = %8132
  %8151 = fsub fast float %8145, %8135
  %8152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8151)  ; FMax(a,b)
  %8153 = fmul fast float %8152, %8149
  %8154 = fadd fast float %8153, %8134
  br label %8161

; <label>:8155                                    ; preds = %8132
  %8156 = fsub fast float %8135, %8145
  %8157 = call float @dx.op.unary.f32(i32 6, float %8156)  ; FAbs(value)
  %8158 = fadd fast float %8157, %8133
  %8159 = fmul fast float %8157, %8149
  %8160 = fsub fast float %8134, %8159
  br label %8161

; <label>:8161                                    ; preds = %8155, %8150
  %8162 = phi float [ %8152, %8150 ], [ %8158, %8155 ]
  %8163 = phi float [ %8154, %8150 ], [ %8160, %8155 ]
  %8164 = fcmp fast olt float %8143, %7992
  %8165 = icmp slt i32 %8140, 3
  %8166 = and i1 %8165, %8164
  br i1 %8166, label %8132, label %8167

; <label>:8167                                    ; preds = %8161
  br label %8168

; <label>:8168                                    ; preds = %8167, %8125
  %8169 = phi float [ %7990, %8125 ], [ %8162, %8167 ]
  %8170 = phi float [ %7991, %8125 ], [ %8163, %8167 ]
  %8171 = fsub fast float %7906, %8169
  %8172 = select i1 %7908, float %8169, float %8171
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.CBufRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.CBufRet.f32 %8177, 2
  %8181 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 3
  %8184 = call float @dx.op.binary.f32(i32 36, float %8170, float %8183)  ; FMin(a,b)
  %8185 = fmul fast float %8181, %8172
  %8186 = call float @dx.op.unary.f32(i32 7, float %8185)  ; Saturate(value)
  %8187 = fsub fast float %8178, %8174
  %8188 = fsub fast float %8179, %8175
  %8189 = fsub fast float %8180, %8176
  %8190 = fmul fast float %8186, %8187
  %8191 = fmul fast float %8186, %8188
  %8192 = fmul fast float %8186, %8189
  %8193 = fadd fast float %8190, %8174
  %8194 = fadd fast float %8191, %8175
  %8195 = fadd fast float %8192, %8176
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.CBufRet.f32 %8196, 1
  %8199 = fadd fast float %8198, %8197
  %8200 = call float @dx.op.unary.f32(i32 7, float %8199)  ; Saturate(value)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8196, 2
  %8202 = extractvalue %dx.types.CBufRet.f32 %8196, 3
  %8203 = fadd fast float %8202, %8201
  %8204 = call float @dx.op.unary.f32(i32 7, float %8203)  ; Saturate(value)
  %8205 = fmul fast float %8200, %8184
  %8206 = fmul fast float %8205, %8204
  br label %8207

; <label>:8207                                    ; preds = %8168, %8087, %7922, %7904, %7902
  %8208 = phi float [ %7931, %7922 ], [ %8090, %8087 ], [ %8172, %8168 ], [ 0.000000e+00, %7902 ], [ 0.000000e+00, %7904 ]
  %8209 = phi float [ %7965, %7922 ], [ %8124, %8087 ], [ %8206, %8168 ], [ 0.000000e+00, %7902 ], [ 0.000000e+00, %7904 ]
  %8210 = phi float [ %7952, %7922 ], [ %8111, %8087 ], [ %8193, %8168 ], [ 0.000000e+00, %7902 ], [ 0.000000e+00, %7904 ]
  %8211 = phi float [ %7953, %7922 ], [ %8112, %8087 ], [ %8194, %8168 ], [ 0.000000e+00, %7902 ], [ 0.000000e+00, %7904 ]
  %8212 = phi float [ %7954, %7922 ], [ %8113, %8087 ], [ %8195, %8168 ], [ 0.000000e+00, %7902 ], [ 0.000000e+00, %7904 ]
  %8213 = fmul fast float %7845, %8209
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %8216 = fsub fast float %7852, %8215
  %8217 = fcmp fast olt float %8213, -2.000000e+01
  %8218 = call float @dx.op.unary.f32(i32 21, float %8213)  ; Exp(value)
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 2
  %8221 = extractvalue %dx.types.CBufRet.f32 %8219, 3
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8224 = fmul fast float %8221, %8216
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = fsub fast float 1.000000e+00, %8225
  %8227 = fmul fast float %7837, 5.000000e-01
  %8228 = fadd fast float %8227, 5.000000e-01
  %8229 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8230 = fsub fast float 1.000000e+00, %8229
  %8231 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8226)  ; FMax(a,b)
  %8232 = fdiv fast float %8230, %8231
  %8233 = fsub fast float %8216, %7794
  %8234 = call float @dx.op.unary.f32(i32 6, float %8233)  ; FAbs(value)
  %8235 = fmul fast float %8234, %8220
  %8236 = call float @dx.op.unary.f32(i32 7, float %8232)  ; Saturate(value)
  %8237 = fsub fast float 1.000000e+00, %8235
  %8238 = fmul fast float %8237, %8236
  %8239 = fadd fast float %8238, %8235
  %8240 = fmul fast float %8223, %8216
  %8241 = call float @dx.op.unary.f32(i32 7, float %8240)  ; Saturate(value)
  %8242 = fsub fast float 1.000000e+00, %8239
  %8243 = fmul fast float %8242, %8241
  %8244 = fadd fast float %8243, %8239
  %8245 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  %8246 = fadd fast float %8218, -1.000000e+00
  %8247 = select i1 %8217, float -1.000000e+00, float %8246
  %8248 = fmul fast float %8245, %8247
  %8249 = fadd fast float %8248, 1.000000e+00
  %8250 = fsub fast float -0.000000e+00, %8248
  %8251 = fmul fast float %8210, %8250
  %8252 = fmul fast float %8211, %8250
  %8253 = fmul fast float %8212, %8250
  br label %8254

; <label>:8254                                    ; preds = %8207, %7803
  %8255 = phi float [ %8208, %8207 ], [ 0.000000e+00, %7803 ]
  %8256 = phi float [ %8249, %8207 ], [ 1.000000e+00, %7803 ]
  %8257 = phi float [ %8251, %8207 ], [ 0.000000e+00, %7803 ]
  %8258 = phi float [ %8252, %8207 ], [ 0.000000e+00, %7803 ]
  %8259 = phi float [ %8253, %8207 ], [ 0.000000e+00, %7803 ]
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8262 = fsub fast float 1.000000e+00, %8256
  %8263 = fmul fast float %8262, %7838
  %8264 = fmul fast float %8263, %8261
  %8265 = fsub fast float %7838, %8264
  br i1 %7831, label %8266, label %8295, !dx.controlflow.hints !167

; <label>:8266                                    ; preds = %8254
  %8267 = fmul fast float %7839, %7828
  %8268 = fadd fast float %8267, %7829
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = fmul fast float %7810, %8265
  %8271 = fsub fast float -0.000000e+00, %8270
  %8272 = fmul fast float %7811, %8265
  %8273 = fsub fast float -0.000000e+00, %8272
  %8274 = call float @dx.op.unary.f32(i32 21, float %8271)  ; Exp(value)
  %8275 = call float @dx.op.unary.f32(i32 21, float %8273)  ; Exp(value)
  %8276 = call float @dx.op.binary.f32(i32 35, float %7818, float %8274)  ; FMax(a,b)
  %8277 = call float @dx.op.binary.f32(i32 35, float %7818, float %8275)  ; FMax(a,b)
  %8278 = fsub fast float %8277, %8276
  %8279 = fmul fast float %8278, %8269
  %8280 = fadd fast float %8279, %8276
  %8281 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8282 = fsub fast float %7815, %7820
  %8283 = fsub fast float %7816, %7821
  %8284 = fsub fast float %7817, %7822
  %8285 = fmul fast float %8269, %8282
  %8286 = fmul fast float %8269, %8283
  %8287 = fmul fast float %8269, %8284
  %8288 = fadd fast float %8285, %7820
  %8289 = fadd fast float %8286, %7821
  %8290 = fadd fast float %8287, %7822
  %8291 = fsub fast float 1.000000e+00, %8281
  %8292 = fmul fast float %8291, %8288
  %8293 = fmul fast float %8291, %8289
  %8294 = fmul fast float %8291, %8290
  br label %8354

; <label>:8295                                    ; preds = %8254
  %8296 = fmul fast float %8265, %7827
  %8297 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8298 = fsub fast float 2.000000e+00, %8297
  %8299 = fmul fast float %8297, 9.921875e-01
  %8300 = fmul fast float %8299, %8298
  %8301 = fadd fast float %8300, 3.906250e-03
  %8302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8301, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8303 = extractvalue %dx.types.ResRet.f32 %8302, 0
  %8304 = fsub fast float %8297, %8303
  %8305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8304)  ; FMax(a,b)
  %8306 = fmul fast float %7813, %7794
  %8307 = call float @dx.op.unary.f32(i32 6, float %8306)  ; FAbs(value)
  %8308 = fcmp fast ogt float %8307, 0x3EB0C6F7A0000000
  br i1 %8308, label %8309, label %8315, !dx.controlflow.hints !168

; <label>:8309                                    ; preds = %8295
  %8310 = fmul fast float %8306, 0xBFF7154760000000
  %8311 = call float @dx.op.unary.f32(i32 21, float %8310)  ; Exp(value)
  %8312 = fsub fast float 1.000000e+00, %8311
  %8313 = fdiv fast float %8312, %8306
  %8314 = fmul fast float %8313, %7823
  br label %8315

; <label>:8315                                    ; preds = %8309, %8295
  %8316 = phi float [ %8314, %8309 ], [ %7823, %8295 ]
  %8317 = fadd fast float %8316, %7825
  %8318 = fmul fast float %8317, %8305
  %8319 = fmul fast float %7810, %8318
  %8320 = fsub fast float -0.000000e+00, %8319
  %8321 = fmul fast float %7811, %8318
  %8322 = fsub fast float -0.000000e+00, %8321
  %8323 = fmul fast float %7812, %8318
  %8324 = fsub fast float -0.000000e+00, %8323
  %8325 = call float @dx.op.unary.f32(i32 21, float %8320)  ; Exp(value)
  %8326 = call float @dx.op.unary.f32(i32 21, float %8322)  ; Exp(value)
  %8327 = call float @dx.op.unary.f32(i32 21, float %8324)  ; Exp(value)
  %8328 = fmul fast float %7839, %7839
  %8329 = fadd fast float %8328, 1.000000e+00
  %8330 = fmul fast float %8329, 0x3FAE8EC8A0000000
  %8331 = fmul fast float %8330, %7820
  %8332 = fmul fast float %8330, %7821
  %8333 = fmul fast float %8330, %7822
  %8334 = fmul fast float %7839, %7818
  %8335 = fsub fast float 1.000000e+00, %8334
  %8336 = fmul fast float %7818, %7818
  %8337 = fsub fast float 1.000000e+00, %8336
  %8338 = fmul fast float %8337, 0x3FB45F3060000000
  %8339 = fmul fast float %8335, %8335
  %8340 = fdiv fast float 1.000000e+00, %8339
  %8341 = fmul fast float %8338, %8340
  %8342 = fmul fast float %8341, %7815
  %8343 = fmul fast float %8341, %7816
  %8344 = fmul fast float %8341, %7817
  %8345 = fadd fast float %8342, %8331
  %8346 = fadd fast float %8343, %8332
  %8347 = fadd fast float %8344, %8333
  %8348 = fsub fast float 1.000000e+00, %8325
  %8349 = fsub fast float 1.000000e+00, %8326
  %8350 = fsub fast float 1.000000e+00, %8327
  %8351 = fmul fast float %8345, %8348
  %8352 = fmul fast float %8346, %8349
  %8353 = fmul fast float %8347, %8350
  br label %8354

; <label>:8354                                    ; preds = %8315, %8266
  %8355 = phi float [ %8292, %8266 ], [ %8351, %8315 ]
  %8356 = phi float [ %8293, %8266 ], [ %8352, %8315 ]
  %8357 = phi float [ %8294, %8266 ], [ %8353, %8315 ]
  %8358 = phi float [ %8281, %8266 ], [ %8325, %8315 ]
  %8359 = phi float [ %8281, %8266 ], [ %8326, %8315 ]
  %8360 = phi float [ %8281, %8266 ], [ %8327, %8315 ]
  br i1 %7847, label %8361, label %8559, !dx.controlflow.hints !169

; <label>:8361                                    ; preds = %8354
  %8362 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8363 = fmul fast float %8362, %8262
  %8364 = fsub fast float %8257, %8355
  %8365 = fsub fast float %8258, %8356
  %8366 = fsub fast float %8259, %8357
  %8367 = fmul fast float %8363, %8364
  %8368 = fmul fast float %8363, %8365
  %8369 = fmul fast float %8363, %8366
  %8370 = fadd fast float %8367, %8355
  %8371 = fadd fast float %8368, %8356
  %8372 = fadd fast float %8369, %8357
  %8373 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8358)  ; FMax(a,b)
  %8374 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8359)  ; FMax(a,b)
  %8375 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8360)  ; FMax(a,b)
  %8376 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8256)  ; FMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float %8255, float %8265)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8377)  ; FMax(a,b)
  %8379 = fdiv fast float %8255, %8378
  %8380 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8381 = fdiv fast float %8265, %8378
  %8382 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8383 = fcmp fast une float %8376, 1.000000e+00
  br i1 %8383, label %8384, label %8397, !dx.controlflow.hints !170

; <label>:8384                                    ; preds = %8361
  %8385 = call float @dx.op.unary.f32(i32 23, float %8376)  ; Log(value)
  %8386 = fmul fast float %8385, 0x3FE62E4300000000
  %8387 = fmul fast float %8257, %8386
  %8388 = fsub fast float -0.000000e+00, %8387
  %8389 = fmul fast float %8258, %8386
  %8390 = fsub fast float -0.000000e+00, %8389
  %8391 = fmul fast float %8259, %8386
  %8392 = fsub fast float -0.000000e+00, %8391
  %8393 = fsub fast float 1.000000e+00, %8376
  %8394 = fdiv fast float %8388, %8393
  %8395 = fdiv fast float %8390, %8393
  %8396 = fdiv fast float %8392, %8393
  br label %8397

; <label>:8397                                    ; preds = %8384, %8361
  %8398 = phi float [ %8394, %8384 ], [ %8257, %8361 ]
  %8399 = phi float [ %8395, %8384 ], [ %8258, %8361 ]
  %8400 = phi float [ %8396, %8384 ], [ %8259, %8361 ]
  %8401 = phi float [ %8386, %8384 ], [ 0.000000e+00, %8361 ]
  %8402 = fcmp fast une float %8373, 1.000000e+00
  br i1 %8402, label %8403, label %8410, !dx.controlflow.hints !171

; <label>:8403                                    ; preds = %8397
  %8404 = call float @dx.op.unary.f32(i32 23, float %8373)  ; Log(value)
  %8405 = fmul fast float %8404, 0x3FE62E4300000000
  %8406 = fmul fast float %8370, %8405
  %8407 = fsub fast float -0.000000e+00, %8406
  %8408 = fsub fast float 1.000000e+00, %8373
  %8409 = fdiv fast float %8407, %8408
  br label %8410

; <label>:8410                                    ; preds = %8403, %8397
  %8411 = phi float [ %8409, %8403 ], [ %8370, %8397 ]
  %8412 = phi float [ %8405, %8403 ], [ 0.000000e+00, %8397 ]
  %8413 = fcmp fast une float %8374, 1.000000e+00
  br i1 %8413, label %8414, label %8421, !dx.controlflow.hints !171

; <label>:8414                                    ; preds = %8410
  %8415 = call float @dx.op.unary.f32(i32 23, float %8374)  ; Log(value)
  %8416 = fmul fast float %8415, 0x3FE62E4300000000
  %8417 = fmul fast float %8371, %8416
  %8418 = fsub fast float -0.000000e+00, %8417
  %8419 = fsub fast float 1.000000e+00, %8374
  %8420 = fdiv fast float %8418, %8419
  br label %8421

; <label>:8421                                    ; preds = %8414, %8410
  %8422 = phi float [ %8420, %8414 ], [ %8371, %8410 ]
  %8423 = phi float [ %8416, %8414 ], [ 0.000000e+00, %8410 ]
  %8424 = fcmp fast une float %8375, 1.000000e+00
  br i1 %8424, label %8425, label %8432, !dx.controlflow.hints !171

; <label>:8425                                    ; preds = %8421
  %8426 = call float @dx.op.unary.f32(i32 23, float %8375)  ; Log(value)
  %8427 = fmul fast float %8426, 0x3FE62E4300000000
  %8428 = fmul fast float %8372, %8427
  %8429 = fsub fast float -0.000000e+00, %8428
  %8430 = fsub fast float 1.000000e+00, %8375
  %8431 = fdiv fast float %8429, %8430
  br label %8432

; <label>:8432                                    ; preds = %8425, %8421
  %8433 = phi float [ %8431, %8425 ], [ %8372, %8421 ]
  %8434 = phi float [ %8427, %8425 ], [ 0.000000e+00, %8421 ]
  %8435 = fmul fast float %8398, %8382
  %8436 = fmul fast float %8399, %8382
  %8437 = fmul fast float %8400, %8382
  %8438 = fmul fast float %8401, %8382
  %8439 = fmul fast float %8411, %8380
  %8440 = fmul fast float %8422, %8380
  %8441 = fmul fast float %8433, %8380
  %8442 = fmul fast float %8412, %8380
  %8443 = fmul fast float %8423, %8380
  %8444 = fmul fast float %8434, %8380
  %8445 = fadd fast float %8439, %8435
  %8446 = fadd fast float %8440, %8436
  %8447 = fadd fast float %8441, %8437
  %8448 = fadd fast float %8442, %8438
  %8449 = fadd fast float %8443, %8438
  %8450 = fadd fast float %8444, %8438
  %8451 = fcmp fast une float %8448, 0.000000e+00
  br i1 %8451, label %8452, label %8459, !dx.controlflow.hints !172

; <label>:8452                                    ; preds = %8432
  %8453 = fmul fast float %8448, 0x3FF7154760000000
  %8454 = call float @dx.op.unary.f32(i32 21, float %8453)  ; Exp(value)
  %8455 = fsub fast float 1.000000e+00, %8454
  %8456 = fmul fast float %8445, %8455
  %8457 = fsub fast float -0.000000e+00, %8456
  %8458 = fdiv fast float %8457, %8448
  br label %8459

; <label>:8459                                    ; preds = %8452, %8432
  %8460 = phi float [ %8454, %8452 ], [ 1.000000e+00, %8432 ]
  %8461 = phi float [ %8458, %8452 ], [ %8445, %8432 ]
  %8462 = fcmp fast une float %8449, 0.000000e+00
  br i1 %8462, label %8463, label %8470, !dx.controlflow.hints !172

; <label>:8463                                    ; preds = %8459
  %8464 = fmul fast float %8449, 0x3FF7154760000000
  %8465 = call float @dx.op.unary.f32(i32 21, float %8464)  ; Exp(value)
  %8466 = fsub fast float 1.000000e+00, %8465
  %8467 = fmul fast float %8446, %8466
  %8468 = fsub fast float -0.000000e+00, %8467
  %8469 = fdiv fast float %8468, %8449
  br label %8470

; <label>:8470                                    ; preds = %8463, %8459
  %8471 = phi float [ %8465, %8463 ], [ 1.000000e+00, %8459 ]
  %8472 = phi float [ %8469, %8463 ], [ %8446, %8459 ]
  %8473 = fcmp fast une float %8450, 0.000000e+00
  br i1 %8473, label %8474, label %8481, !dx.controlflow.hints !172

; <label>:8474                                    ; preds = %8470
  %8475 = fmul fast float %8450, 0x3FF7154760000000
  %8476 = call float @dx.op.unary.f32(i32 21, float %8475)  ; Exp(value)
  %8477 = fsub fast float 1.000000e+00, %8476
  %8478 = fmul fast float %8447, %8477
  %8479 = fsub fast float -0.000000e+00, %8478
  %8480 = fdiv fast float %8479, %8450
  br label %8481

; <label>:8481                                    ; preds = %8474, %8470
  %8482 = phi float [ %8476, %8474 ], [ 1.000000e+00, %8470 ]
  %8483 = phi float [ %8480, %8474 ], [ %8447, %8470 ]
  %8484 = fcmp fast ogt float %8380, %8382
  br i1 %8484, label %8485, label %8505

; <label>:8485                                    ; preds = %8481
  %8486 = fsub fast float 1.000000e+00, %8382
  %8487 = fmul fast float %8398, %8486
  %8488 = fmul fast float %8399, %8486
  %8489 = fmul fast float %8400, %8486
  %8490 = fmul fast float %8401, %8486
  %8491 = fcmp fast une float %8490, 0.000000e+00
  br i1 %8491, label %8492, label %8543, !dx.controlflow.hints !173

; <label>:8492                                    ; preds = %8485
  %8493 = fmul fast float %8490, 0x3FF7154760000000
  %8494 = call float @dx.op.unary.f32(i32 21, float %8493)  ; Exp(value)
  %8495 = fsub fast float 1.000000e+00, %8494
  %8496 = fmul fast float %8487, %8495
  %8497 = fsub fast float -0.000000e+00, %8496
  %8498 = fmul fast float %8488, %8495
  %8499 = fsub fast float -0.000000e+00, %8498
  %8500 = fmul fast float %8489, %8495
  %8501 = fsub fast float -0.000000e+00, %8500
  %8502 = fdiv fast float %8497, %8490
  %8503 = fdiv fast float %8499, %8490
  %8504 = fdiv fast float %8501, %8490
  br label %8543

; <label>:8505                                    ; preds = %8481
  %8506 = fsub fast float 1.000000e+00, %8380
  %8507 = fmul fast float %8411, %8506
  %8508 = fmul fast float %8422, %8506
  %8509 = fmul fast float %8433, %8506
  %8510 = fmul fast float %8412, %8506
  %8511 = fmul fast float %8423, %8506
  %8512 = fmul fast float %8434, %8506
  %8513 = fcmp fast une float %8510, 0.000000e+00
  br i1 %8513, label %8514, label %8521, !dx.controlflow.hints !172

; <label>:8514                                    ; preds = %8505
  %8515 = fmul fast float %8510, 0x3FF7154760000000
  %8516 = call float @dx.op.unary.f32(i32 21, float %8515)  ; Exp(value)
  %8517 = fsub fast float 1.000000e+00, %8516
  %8518 = fmul fast float %8507, %8517
  %8519 = fsub fast float -0.000000e+00, %8518
  %8520 = fdiv fast float %8519, %8510
  br label %8521

; <label>:8521                                    ; preds = %8514, %8505
  %8522 = phi float [ %8520, %8514 ], [ %8507, %8505 ]
  %8523 = phi float [ %8516, %8514 ], [ 1.000000e+00, %8505 ]
  %8524 = fcmp fast une float %8511, 0.000000e+00
  br i1 %8524, label %8525, label %8532, !dx.controlflow.hints !172

; <label>:8525                                    ; preds = %8521
  %8526 = fmul fast float %8511, 0x3FF7154760000000
  %8527 = call float @dx.op.unary.f32(i32 21, float %8526)  ; Exp(value)
  %8528 = fsub fast float 1.000000e+00, %8527
  %8529 = fmul fast float %8508, %8528
  %8530 = fsub fast float -0.000000e+00, %8529
  %8531 = fdiv fast float %8530, %8511
  br label %8532

; <label>:8532                                    ; preds = %8525, %8521
  %8533 = phi float [ %8531, %8525 ], [ %8508, %8521 ]
  %8534 = phi float [ %8527, %8525 ], [ 1.000000e+00, %8521 ]
  %8535 = fcmp fast une float %8512, 0.000000e+00
  br i1 %8535, label %8536, label %8543, !dx.controlflow.hints !172

; <label>:8536                                    ; preds = %8532
  %8537 = fmul fast float %8512, 0x3FF7154760000000
  %8538 = call float @dx.op.unary.f32(i32 21, float %8537)  ; Exp(value)
  %8539 = fsub fast float 1.000000e+00, %8538
  %8540 = fmul fast float %8509, %8539
  %8541 = fsub fast float -0.000000e+00, %8540
  %8542 = fdiv fast float %8541, %8512
  br label %8543

; <label>:8543                                    ; preds = %8536, %8532, %8492, %8485
  %8544 = phi float [ %8542, %8536 ], [ %8504, %8492 ], [ %8489, %8485 ], [ %8509, %8532 ]
  %8545 = phi float [ %8533, %8536 ], [ %8503, %8492 ], [ %8488, %8485 ], [ %8533, %8532 ]
  %8546 = phi float [ %8522, %8536 ], [ %8502, %8492 ], [ %8487, %8485 ], [ %8522, %8532 ]
  %8547 = phi float [ %8538, %8536 ], [ %8494, %8492 ], [ 1.000000e+00, %8485 ], [ 1.000000e+00, %8532 ]
  %8548 = phi float [ %8534, %8536 ], [ %8494, %8492 ], [ 1.000000e+00, %8485 ], [ %8534, %8532 ]
  %8549 = phi float [ %8523, %8536 ], [ %8494, %8492 ], [ 1.000000e+00, %8485 ], [ %8523, %8532 ]
  %8550 = fmul fast float %8549, %8461
  %8551 = fmul fast float %8548, %8472
  %8552 = fmul fast float %8547, %8483
  %8553 = fadd fast float %8550, %8546
  %8554 = fadd fast float %8551, %8545
  %8555 = fadd fast float %8552, %8544
  %8556 = fmul fast float %8549, %8460
  %8557 = fmul fast float %8548, %8471
  %8558 = fmul fast float %8547, %8482
  br label %8559

; <label>:8559                                    ; preds = %8543, %8354
  %8560 = phi float [ %8558, %8543 ], [ %8360, %8354 ]
  %8561 = phi float [ %8557, %8543 ], [ %8359, %8354 ]
  %8562 = phi float [ %8556, %8543 ], [ %8358, %8354 ]
  %8563 = phi float [ %8555, %8543 ], [ %8357, %8354 ]
  %8564 = phi float [ %8554, %8543 ], [ %8356, %8354 ]
  %8565 = phi float [ %8553, %8543 ], [ %8355, %8354 ]
  %8566 = fmul fast float %8565, %7511
  %8567 = fmul fast float %8564, %7511
  %8568 = fmul fast float %8563, %7511
  %8569 = fmul fast float %8562, %7802
  %8570 = call float @dx.op.dot3.f32(i32 55, float %8562, float %8561, float %8560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8571 = call float @dx.op.dot3.f32(i32 55, float %8566, float %8567, float %8568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8572 = select i1 %271, float %8570, float %8562
  %8573 = select i1 %271, float %8570, float %8561
  %8574 = select i1 %271, float 1.000000e+00, float %8560
  %8575 = select i1 %271, float %8571, float %8566
  %8576 = select i1 %271, float 0.000000e+00, float %8567
  %8577 = select i1 %271, float 0.000000e+00, float %8568
  %8578 = fmul fast float %8572, %7796
  %8579 = fmul fast float %8573, %7797
  %8580 = fmul fast float %8574, %7798
  %8581 = fadd fast float %8578, %8575
  %8582 = fadd fast float %8579, %8576
  %8583 = fadd fast float %8577, %8580
  %8584 = fmul fast float %8572, %7799
  %8585 = fmul fast float %8573, %7800
  %8586 = fmul fast float %8574, %7801
  %8587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.i32 %8587, 0
  %8589 = icmp eq i32 %8588, 0
  br i1 %8589, label %8957, label %8590, !dx.controlflow.hints !174

; <label>:8590                                    ; preds = %8559
  %8591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8592 = extractvalue %dx.types.CBufRet.f32 %8591, 2
  %8593 = extractvalue %dx.types.CBufRet.f32 %8591, 3
  %8594 = fmul fast float %8592, %116
  %8595 = fmul fast float %8593, %117
  %8596 = fmul fast float %8594, 2.000000e+00
  %8597 = fmul fast float %8595, 2.000000e+00
  %8598 = fsub fast float 1.000000e+00, %8596
  %8599 = fsub fast float 1.000000e+00, %8597
  %8600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.CBufRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.CBufRet.f32 %8600, 2
  %8604 = fmul fast float %8598, %8601
  %8605 = fmul fast float %8598, %8602
  %8606 = fmul fast float %8598, %8603
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.CBufRet.f32 %8607, 1
  %8610 = extractvalue %dx.types.CBufRet.f32 %8607, 2
  %8611 = fmul fast float %8599, %8608
  %8612 = fmul fast float %8599, %8609
  %8613 = fmul fast float %8599, %8610
  %8614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.CBufRet.f32 %8614, 1
  %8617 = extractvalue %dx.types.CBufRet.f32 %8614, 2
  %8618 = fadd fast float %8611, %8615
  %8619 = fadd fast float %8618, %8604
  %8620 = fadd fast float %8612, %8616
  %8621 = fadd fast float %8620, %8605
  %8622 = fadd fast float %8613, %8617
  %8623 = fadd fast float %8622, %8606
  %8624 = fmul fast float %8619, %7795
  %8625 = fmul fast float %8621, %7795
  %8626 = fmul fast float %8623, %7795
  %8627 = fmul fast float %8624, %8624
  %8628 = fmul fast float %8625, %8625
  %8629 = fadd fast float %8627, %8628
  %8630 = fmul fast float %8626, %8626
  %8631 = fadd fast float %8629, %8630
  %8632 = call float @dx.op.unary.f32(i32 24, float %8631)  ; Sqrt(value)
  %8633 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %8634 = fsub fast float %8632, %8633
  %8635 = extractvalue %dx.types.CBufRet.f32 %7522, 2
  %8636 = fmul fast float %8634, %8635
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fadd fast float %8637, -5.000000e-01
  %8639 = fmul fast float %8638, 2.000000e+00
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8642 = call float @dx.op.binary.f32(i32 36, float %8641, float %8639)  ; FMin(a,b)
  %8643 = fsub fast float -0.000000e+00, %8641
  %8644 = fcmp fast ogt float %8642, %8643
  br i1 %8644, label %8645, label %8957, !dx.controlflow.hints !175

; <label>:8645                                    ; preds = %8590
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8648 = fcmp fast ogt float %8647, 0.000000e+00
  br i1 %8648, label %8649, label %8724, !dx.controlflow.hints !176

; <label>:8649                                    ; preds = %8645
  %8650 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8651 = extractvalue %dx.types.Dimensions %8650, 0
  %8652 = sitofp i32 %8651 to float
  %8653 = extractvalue %dx.types.Dimensions %8650, 1
  %8654 = sitofp i32 %8653 to float
  %8655 = fmul fast float %8594, %8652
  %8656 = fmul fast float %8595, %8654
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8659 = fsub fast float -0.000000e+00, %8658
  %8660 = fptoui float %8659 to i32
  %8661 = fptoui float %8655 to i32
  %8662 = fptoui float %8656 to i32
  %8663 = and i32 %8660, 31
  %8664 = lshr i32 %8661, %8663
  %8665 = lshr i32 %8662, %8663
  %8666 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8660, i32 %8664, i32 %8665, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8667 = extractvalue %dx.types.ResRet.f32 %8666, 0
  %8668 = fcmp fast olt float %8667, -1.000000e+00
  %8669 = fcmp fast ogt float %8667, -1.000000e+00
  %8670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.f32 %8670, 1
  %8672 = select i1 %8669, float %8671, float 1.000000e+00
  %8673 = fadd fast float %8667, 1.000000e+00
  %8674 = fmul fast float %8672, %8673
  %8675 = call float @dx.op.unary.f32(i32 6, float %8674)  ; FAbs(value)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8670, 3
  %8677 = fcmp fast oge float %8675, %8676
  %8678 = select i1 %8677, float 0x4197782600000000, float %8675
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 0
  %8681 = extractvalue %dx.types.CBufRet.f32 %8679, 1
  %8682 = extractvalue %dx.types.CBufRet.f32 %8679, 2
  %8683 = select i1 %8668, float %8680, float %8601
  %8684 = select i1 %8668, float %8681, float %8602
  %8685 = select i1 %8668, float %8682, float %8603
  %8686 = fmul fast float %8683, %8598
  %8687 = fmul fast float %8684, %8598
  %8688 = fmul fast float %8685, %8598
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8691 = extractvalue %dx.types.CBufRet.f32 %8689, 1
  %8692 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8693 = select i1 %8668, float %8690, float %8608
  %8694 = select i1 %8668, float %8691, float %8609
  %8695 = select i1 %8668, float %8692, float %8610
  %8696 = fmul fast float %8693, %8599
  %8697 = fmul fast float %8694, %8599
  %8698 = fmul fast float %8695, %8599
  %8699 = fadd fast float %8696, %8686
  %8700 = fadd fast float %8697, %8687
  %8701 = fadd fast float %8698, %8688
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.CBufRet.f32 %8702, 1
  %8705 = extractvalue %dx.types.CBufRet.f32 %8702, 2
  %8706 = select i1 %8668, float %8703, float %8615
  %8707 = select i1 %8668, float %8704, float %8616
  %8708 = select i1 %8668, float %8705, float %8617
  %8709 = fadd fast float %8699, %8706
  %8710 = fadd fast float %8700, %8707
  %8711 = fadd fast float %8701, %8708
  %8712 = fmul fast float %8709, %8678
  %8713 = fmul fast float %8710, %8678
  %8714 = fmul fast float %8711, %8678
  %8715 = fmul fast float %8712, %8712
  %8716 = fmul fast float %8713, %8713
  %8717 = fadd fast float %8715, %8716
  %8718 = fmul fast float %8714, %8714
  %8719 = fadd fast float %8717, %8718
  %8720 = call float @dx.op.unary.f32(i32 24, float %8719)  ; Sqrt(value)
  %8721 = fsub fast float %8720, %8633
  %8722 = fmul fast float %8721, %8635
  %8723 = call float @dx.op.unary.f32(i32 7, float %8722)  ; Saturate(value)
  br label %8724

; <label>:8724                                    ; preds = %8649, %8645
  %8725 = phi float [ %8723, %8649 ], [ 1.000000e+00, %8645 ]
  %8726 = fmul fast float %8642, 5.000000e-01
  %8727 = fadd fast float %8726, 5.000000e-01
  %8728 = call float @dx.op.unary.f32(i32 22, float %8727)  ; Frc(value)
  %8729 = call float @dx.op.unary.f32(i32 27, float %8728)  ; Round_ni(value)
  %8730 = call float @dx.op.unary.f32(i32 22, float %8728)  ; Frc(value)
  %8731 = fmul fast float %8730, 2.000000e+00
  %8732 = fadd fast float %8731, -1.000000e+00
  %8733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8594, float %8595, float %8729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8734 = extractvalue %dx.types.ResRet.f32 %8733, 0
  %8735 = extractvalue %dx.types.ResRet.f32 %8733, 1
  %8736 = extractvalue %dx.types.ResRet.f32 %8733, 2
  %8737 = extractvalue %dx.types.ResRet.f32 %8733, 3
  %8738 = fadd fast float %8734, -5.000000e-01
  %8739 = fadd fast float %8736, -5.000000e-01
  %8740 = fmul fast float %8738, 0xBFD5555560000000
  %8741 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8739, float %8740)  ; FMad(a,b,c)
  %8742 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8735, float 0.000000e+00)  ; FMad(a,b,c)
  %8743 = fadd fast float %8742, %8737
  %8744 = fmul fast float %8738, -7.500000e-01
  %8745 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8739, float %8744)  ; FMad(a,b,c)
  %8746 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8735, float 0.000000e+00)  ; FMad(a,b,c)
  %8747 = fadd fast float %8746, %8737
  %8748 = call float @dx.op.binary.f32(i32 35, float %8741, float -1.000000e+00)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 35, float %8743, float -1.000000e+00)  ; FMax(a,b)
  %8750 = call float @dx.op.binary.f32(i32 35, float %8745, float -1.000000e+00)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8747, float -1.000000e+00)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 36, float %8748, float 1.000000e+00)  ; FMin(a,b)
  %8753 = call float @dx.op.binary.f32(i32 36, float %8749, float 1.000000e+00)  ; FMin(a,b)
  %8754 = call float @dx.op.binary.f32(i32 36, float %8750, float 1.000000e+00)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8751, float 1.000000e+00)  ; FMin(a,b)
  %8756 = fcmp fast olt float %8752, 0x3FEFFF8020000000
  br i1 %8756, label %8757, label %8872, !dx.controlflow.hints !177

; <label>:8757                                    ; preds = %8724
  %8758 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 0
  %8761 = extractvalue %dx.types.CBufRet.f32 %8759, 1
  %8762 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %8763 = extractvalue %dx.types.CBufRet.f32 %8759, 3
  %8764 = fsub fast float %8760, %8752
  %8765 = fsub fast float %8761, %8753
  %8766 = fsub fast float %8762, %8754
  %8767 = fsub fast float %8763, %8755
  %8768 = fmul fast float %8764, %8758
  %8769 = fmul fast float %8765, %8758
  %8770 = fmul fast float %8766, %8758
  %8771 = fmul fast float %8767, %8758
  %8772 = fadd fast float %8768, %8752
  %8773 = fadd fast float %8769, %8753
  %8774 = fsub fast float -0.000000e+00, %8773
  %8775 = fadd fast float %8770, %8754
  %8776 = fadd fast float %8771, %8755
  %8777 = fmul fast float %8772, %8772
  %8778 = fsub fast float %8773, %8777
  %8779 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8778)  ; FMax(a,b)
  %8780 = fdiv fast float 1.000000e+00, %8779
  %8781 = fmul fast float %8773, %8772
  %8782 = fsub fast float %8775, %8781
  %8783 = fsub fast float %8732, %8772
  %8784 = fmul fast float %8732, %8732
  %8785 = fsub fast float %8784, %8773
  %8786 = fmul fast float %8783, %8780
  %8787 = fmul fast float %8786, %8782
  %8788 = fsub fast float %8785, %8787
  %8789 = fmul fast float %8773, %8773
  %8790 = fsub fast float %8776, %8789
  %8791 = fmul fast float %8782, %8782
  %8792 = fmul fast float %8791, %8780
  %8793 = fsub fast float %8790, %8792
  %8794 = fdiv fast float %8788, %8793
  %8795 = fmul fast float %8782, %8794
  %8796 = fsub fast float %8783, %8795
  %8797 = fmul fast float %8796, %8780
  %8798 = fmul fast float %8797, %8772
  %8799 = fsub fast float 1.000000e+00, %8798
  %8800 = fmul fast float %8773, %8794
  %8801 = fsub fast float %8799, %8800
  %8802 = fmul fast float %8797, %8797
  %8803 = fmul fast float %8794, 4.000000e+00
  %8804 = fmul fast float %8803, %8801
  %8805 = fsub fast float %8802, %8804
  %8806 = call float @dx.op.unary.f32(i32 24, float %8805)  ; Sqrt(value)
  %8807 = fcmp fast oge float %8797, 0.000000e+00
  %8808 = fsub fast float -0.000000e+00, %8806
  %8809 = select i1 %8807, float %8808, float %8806
  %8810 = fsub fast float %8809, %8797
  %8811 = fdiv fast float %8810, %8794
  %8812 = fdiv fast float %8801, %8810
  %8813 = fmul fast float %8811, 5.000000e-01
  %8814 = fmul fast float %8812, 2.000000e+00
  %8815 = select i1 %8807, float %8813, float %8814
  %8816 = select i1 %8807, float %8814, float %8813
  %8817 = call float @dx.op.binary.f32(i32 35, float %8815, float %8816)  ; FMax(a,b)
  %8818 = call float @dx.op.binary.f32(i32 36, float %8815, float %8816)  ; FMin(a,b)
  %8819 = fcmp fast ogt float %8732, %8818
  br i1 %8819, label %8820, label %8830

; <label>:8820                                    ; preds = %8757
  %8821 = fsub fast float %8732, %8818
  %8822 = fsub fast float %8817, %8818
  %8823 = fmul fast float %8821, %8822
  %8824 = fmul fast float %8817, %8732
  %8825 = fadd fast float %8817, %8732
  %8826 = fmul fast float %8825, %8772
  %8827 = fadd fast float %8824, %8773
  %8828 = fsub fast float %8827, %8826
  %8829 = fdiv fast float %8828, %8823
  br label %8830

; <label>:8830                                    ; preds = %8820, %8757
  %8831 = phi float [ %8829, %8820 ], [ 0.000000e+00, %8757 ]
  %8832 = fcmp fast ogt float %8732, %8817
  %8833 = fsub fast float %8732, %8817
  br i1 %8832, label %8834, label %8844

; <label>:8834                                    ; preds = %8830
  %8835 = fsub fast float %8817, %8818
  %8836 = fmul fast float %8835, %8833
  %8837 = fmul fast float %8818, %8732
  %8838 = fadd fast float %8818, %8732
  %8839 = fmul fast float %8838, %8772
  %8840 = fsub fast float %8774, %8837
  %8841 = fadd fast float %8840, %8839
  %8842 = fdiv fast float %8841, %8836
  %8843 = fadd fast float %8842, %8831
  br label %8844

; <label>:8844                                    ; preds = %8834, %8830
  %8845 = phi float [ %8843, %8834 ], [ %8831, %8830 ]
  %8846 = fsub fast float %8732, %8818
  %8847 = fmul fast float %8846, %8833
  %8848 = fmul fast float %8818, %8817
  %8849 = fadd fast float %8818, %8817
  %8850 = fmul fast float %8849, %8772
  %8851 = fadd fast float %8848, %8773
  %8852 = fsub fast float %8851, %8850
  %8853 = fdiv fast float %8852, %8847
  %8854 = call float @dx.op.unary.f32(i32 7, float %8845)  ; Saturate(value)
  %8855 = fcmp fast oeq float %7523, 0.000000e+00
  %8856 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8857 = fcmp fast oeq float %8856, 0.000000e+00
  %8858 = or i1 %8855, %8857
  %8859 = fmul fast float %8856, 2.000000e+00
  %8860 = fadd fast float %8641, %8642
  %8861 = fdiv fast float %8860, %8859
  %8862 = call float @dx.op.unary.f32(i32 7, float %8861)  ; Saturate(value)
  %8863 = fmul fast float %8862, 2.000000e+00
  %8864 = fsub fast float 3.000000e+00, %8863
  %8865 = fmul fast float %8862, %8862
  %8866 = fmul fast float %8865, %8864
  %8867 = select i1 %8858, float 1.000000e+00, float %8866
  %8868 = fmul fast float %8853, %7523
  %8869 = fadd fast float %8854, %8868
  %8870 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8871 = fmul fast float %8867, %8870
  br label %8872

; <label>:8872                                    ; preds = %8844, %8724
  %8873 = phi float [ %8871, %8844 ], [ 0.000000e+00, %8724 ]
  %8874 = fsub fast float 1.000000e+00, %8873
  %8875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8594, float %8595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8876 = extractvalue %dx.types.ResRet.f32 %8875, 0
  %8877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.i32 %8877, 2
  %8879 = icmp eq i32 %8878, 0
  br i1 %8879, label %8885, label %8880

; <label>:8880                                    ; preds = %8872
  %8881 = call float @dx.op.unary.f32(i32 7, float %8873)  ; Saturate(value)
  %8882 = fadd fast float %8876, -1.000000e+00
  %8883 = fmul fast float %8881, %8882
  %8884 = fadd fast float %8883, 1.000000e+00
  br label %8885

; <label>:8885                                    ; preds = %8880, %8872
  %8886 = phi float [ %8884, %8880 ], [ %8874, %8872 ]
  br i1 %8648, label %8887, label %8905

; <label>:8887                                    ; preds = %8885
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8890 = fsub fast float %8725, %8889
  %8891 = call float @dx.op.unary.f32(i32 7, float %8890)  ; Saturate(value)
  %8892 = fsub fast float %8725, %8647
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fsub fast float %8891, %8893
  %8895 = fsub fast float %8727, %8893
  %8896 = fdiv fast float %8895, %8894
  %8897 = call float @dx.op.unary.f32(i32 7, float %8896)  ; Saturate(value)
  %8898 = fmul fast float %8897, 2.000000e+00
  %8899 = fsub fast float 3.000000e+00, %8898
  %8900 = fsub fast float %8876, %8886
  %8901 = fmul fast float %8897, %8897
  %8902 = fmul fast float %8901, %8900
  %8903 = fmul fast float %8902, %8899
  %8904 = fadd fast float %8903, %8886
  br label %8905

; <label>:8905                                    ; preds = %8887, %8885
  %8906 = phi float [ %8904, %8887 ], [ %8886, %8885 ]
  %8907 = call float @dx.op.binary.f32(i32 35, float %8876, float %8906)  ; FMax(a,b)
  %8908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.i32 %8908, 2
  %8910 = and i32 %8909, 1
  %8911 = icmp eq i32 %8910, 0
  %8912 = fcmp fast une float %8907, 1.000000e+00
  %8913 = and i1 %8912, %8911
  br i1 %8913, label %8914, label %8933

; <label>:8914                                    ; preds = %8905
  %8915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8594, float %8595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8916 = extractvalue %dx.types.ResRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.ResRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.ResRet.f32 %8915, 2
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 1
  %8921 = fmul fast float %8920, %8916
  %8922 = fmul fast float %8920, %8917
  %8923 = fmul fast float %8920, %8918
  %8924 = fcmp fast ogt float %8876, 0x3FEFFF2E40000000
  %8925 = fsub fast float 1.000000e+00, %8907
  %8926 = fsub fast float 1.000000e+00, %8876
  %8927 = fdiv fast float %8925, %8926
  %8928 = call float @dx.op.unary.f32(i32 7, float %8927)  ; Saturate(value)
  %8929 = select i1 %8924, float 0.000000e+00, float %8928
  %8930 = fmul fast float %8921, %8929
  %8931 = fmul fast float %8922, %8929
  %8932 = fmul fast float %8923, %8929
  br label %8933

; <label>:8933                                    ; preds = %8914, %8905
  %8934 = phi float [ 0.000000e+00, %8905 ], [ %8930, %8914 ]
  %8935 = phi float [ 0.000000e+00, %8905 ], [ %8931, %8914 ]
  %8936 = phi float [ 0.000000e+00, %8905 ], [ %8932, %8914 ]
  %8937 = fmul fast float %8934, %7511
  %8938 = fmul fast float %8935, %7511
  %8939 = fmul fast float %8936, %7511
  %8940 = fmul fast float %8907, %8569
  %8941 = call float @dx.op.dot3.f32(i32 55, float %8907, float %8907, float %8907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8942 = call float @dx.op.dot3.f32(i32 55, float %8937, float %8938, float %8939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8943 = select i1 %271, float %8941, float %8907
  %8944 = select i1 %271, float 1.000000e+00, float %8907
  %8945 = select i1 %271, float %8942, float %8937
  %8946 = select i1 %271, float 0.000000e+00, float %8938
  %8947 = select i1 %271, float 0.000000e+00, float %8939
  %8948 = fmul fast float %8943, %8581
  %8949 = fmul fast float %8943, %8582
  %8950 = fmul fast float %8944, %8583
  %8951 = fadd fast float %8948, %8945
  %8952 = fadd fast float %8949, %8946
  %8953 = fadd fast float %8947, %8950
  %8954 = fmul fast float %8943, %8584
  %8955 = fmul fast float %8943, %8585
  %8956 = fmul fast float %8944, %8586
  br label %8957

; <label>:8957                                    ; preds = %8933, %8590, %8559, %7791
  %8958 = phi float [ %7796, %7791 ], [ %8581, %8559 ], [ %8951, %8933 ], [ %8581, %8590 ]
  %8959 = phi float [ %7797, %7791 ], [ %8582, %8559 ], [ %8952, %8933 ], [ %8582, %8590 ]
  %8960 = phi float [ %7798, %7791 ], [ %8583, %8559 ], [ %8953, %8933 ], [ %8583, %8590 ]
  %8961 = phi float [ %7799, %7791 ], [ %8584, %8559 ], [ %8954, %8933 ], [ %8584, %8590 ]
  %8962 = phi float [ %7800, %7791 ], [ %8585, %8559 ], [ %8955, %8933 ], [ %8585, %8590 ]
  %8963 = phi float [ %7801, %7791 ], [ %8586, %8559 ], [ %8956, %8933 ], [ %8586, %8590 ]
  %8964 = phi float [ %7802, %7791 ], [ %8569, %8559 ], [ %8940, %8933 ], [ %8569, %8590 ]
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 3
  %8968 = fmul fast float %8966, %116
  %8969 = fmul fast float %8967, %117
  %8970 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8971 = call float @dx.op.unary.f32(i32 7, float %8969)  ; Saturate(value)
  %8972 = select i1 %7533, i32 2, i32 0
  %8973 = or i32 %8972, 1
  %8974 = uitofp i32 %8973 to float
  %8975 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8970, float %8971, float %8974, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8976 = extractvalue %dx.types.ResRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.ResRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.ResRet.f32 %8975, 2
  %8979 = extractvalue %dx.types.ResRet.f32 %8975, 3
  %8980 = add nuw nsw i32 %8972, 2
  %8981 = uitofp i32 %8980 to float
  %8982 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8970, float %8971, float %8981, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8983 = extractvalue %dx.types.ResRet.f32 %8982, 0
  %8984 = extractvalue %dx.types.ResRet.f32 %8982, 1
  %8985 = extractvalue %dx.types.ResRet.f32 %8982, 2
  %8986 = extractvalue %dx.types.ResRet.f32 %8982, 3
  %8987 = call float @dx.op.binary.f32(i32 35, float %8977, float %8978)  ; FMax(a,b)
  %8988 = call float @dx.op.binary.f32(i32 35, float %8976, float %8987)  ; FMax(a,b)
  %8989 = call float @dx.op.binary.f32(i32 35, float %8988, float %8979)  ; FMax(a,b)
  %8990 = call float @dx.op.binary.f32(i32 36, float %8984, float %8985)  ; FMin(a,b)
  %8991 = call float @dx.op.binary.f32(i32 36, float %8983, float %8990)  ; FMin(a,b)
  %8992 = call float @dx.op.binary.f32(i32 36, float %8991, float %8986)  ; FMin(a,b)
  %8993 = fmul fast float %8989, 2.550000e+02
  %8994 = fadd fast float %8993, 0x3F70101020000000
  %8995 = fptoui float %8994 to i32
  %8996 = fmul fast float %8992, 2.550000e+02
  %8997 = fadd fast float %8996, 0x3F70101020000000
  %8998 = fptoui float %8997 to i32
  %8999 = icmp ult i32 %8995, %8998
  br i1 %8999, label %9000, label %9169

; <label>:9000                                    ; preds = %8957
  %9001 = fcmp fast ogt float %106, 9.843750e-01
  %9002 = fadd fast float %7795, -4.000000e+00
  %9003 = select i1 %9001, float -4.000000e+00, float %9002
  %9004 = call float @dx.op.binary.f32(i32 35, float %9003, float 0.000000e+00)  ; FMax(a,b)
  %9005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9006 = extractvalue %dx.types.CBufRet.f32 %9005, 0
  %9007 = fadd fast float %9006, %9004
  %9008 = extractvalue %dx.types.CBufRet.f32 %9005, 2
  %9009 = fmul fast float %9007, %9008
  %9010 = call float @dx.op.unary.f32(i32 23, float %9009)  ; Log(value)
  %9011 = extractvalue %dx.types.CBufRet.f32 %9005, 3
  %9012 = fmul fast float %9011, %9010
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9015 = fmul fast float %9012, %9014
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = uitofp i32 %8995 to float
  %9018 = uitofp i32 %8998 to float
  %9019 = fadd fast float %9017, 5.000000e-01
  %9020 = fadd fast float %9018, 5.000000e-01
  %9021 = fmul fast float %9014, %9019
  %9022 = fmul fast float %9014, %9020
  %9023 = fadd fast float %9021, 0x3F0FFB4800000000
  %9024 = fadd fast float %9022, 0xBF0FFB4800000000
  %9025 = call float @dx.op.binary.f32(i32 35, float %9016, float %9023)  ; FMax(a,b)
  %9026 = call float @dx.op.binary.f32(i32 36, float %9025, float %9024)  ; FMin(a,b)
  %9027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9028 = extractvalue %dx.types.CBufRet.f32 %9027, 1
  %9029 = extractvalue %dx.types.CBufRet.f32 %9027, 2
  %9030 = extractvalue %dx.types.CBufRet.f32 %9027, 0
  %9031 = select i1 %7533, float %9030, float 0.000000e+00
  %9032 = fmul fast float %9028, %9026
  %9033 = fadd fast float %9031, %9032
  %9034 = fadd fast float %9031, %9029
  %9035 = fsub fast float %9028, %9029
  %9036 = fadd fast float %9035, %9031
  %9037 = call float @dx.op.binary.f32(i32 35, float %9033, float %9034)  ; FMax(a,b)
  %9038 = call float @dx.op.binary.f32(i32 36, float %9037, float %9036)  ; FMin(a,b)
  %9039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8970, float %8971, float %9038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9040 = extractvalue %dx.types.ResRet.f32 %9039, 0
  %9041 = extractvalue %dx.types.ResRet.f32 %9039, 1
  %9042 = extractvalue %dx.types.ResRet.f32 %9039, 2
  %9043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.i32 %9043, 0
  %9045 = extractvalue %dx.types.CBufRet.i32 %9043, 1
  %9046 = uitofp i32 %9044 to float
  %9047 = uitofp i32 %9045 to float
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9050 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9051 = fmul fast float %9046, %8970
  %9052 = fmul fast float %9047, %8971
  %9053 = fadd fast float %9051, -5.000000e-01
  %9054 = fadd fast float %9052, -5.000000e-01
  %9055 = call float @dx.op.unary.f32(i32 22, float %9053)  ; Frc(value)
  %9056 = call float @dx.op.unary.f32(i32 22, float %9054)  ; Frc(value)
  %9057 = fmul fast float %9055, %9055
  %9058 = fmul fast float %9057, %9055
  %9059 = fsub fast float 3.000000e+00, %9055
  %9060 = fmul fast float %9057, %9059
  %9061 = fmul fast float %9055, 3.000000e+00
  %9062 = fmul fast float %9058, 3.000000e+00
  %9063 = fmul fast float %9057, 6.000000e+00
  %9064 = fsub fast float %9062, %9063
  %9065 = fadd fast float %9064, 4.000000e+00
  %9066 = fmul fast float %9065, 0x3FC5555560000000
  %9067 = fmul fast float %9058, -3.000000e+00
  %9068 = fadd fast float %9057, %9055
  %9069 = fmul fast float %9068, 3.000000e+00
  %9070 = fadd fast float %9067, 1.000000e+00
  %9071 = fadd fast float %9070, %9069
  %9072 = fmul fast float %9058, 0x3FC5555560000000
  %9073 = fmul fast float %9056, %9056
  %9074 = fmul fast float %9073, %9056
  %9075 = fsub fast float 3.000000e+00, %9056
  %9076 = fmul fast float %9073, %9075
  %9077 = fmul fast float %9056, 3.000000e+00
  %9078 = fmul fast float %9074, 3.000000e+00
  %9079 = fmul fast float %9073, 6.000000e+00
  %9080 = fsub fast float %9078, %9079
  %9081 = fadd fast float %9080, 4.000000e+00
  %9082 = fmul fast float %9081, 0x3FC5555560000000
  %9083 = fmul fast float %9074, -3.000000e+00
  %9084 = fadd fast float %9073, %9056
  %9085 = fmul fast float %9084, 3.000000e+00
  %9086 = fadd fast float %9083, 1.000000e+00
  %9087 = fadd fast float %9086, %9085
  %9088 = fmul fast float %9074, 0x3FC5555560000000
  %9089 = fadd fast float %9055, 1.000000e+00
  %9090 = fsub fast float 1.000000e+00, %9061
  %9091 = fadd fast float %9090, %9060
  %9092 = fadd fast float %9091, %9065
  %9093 = fmul fast float %9092, 0x3FC5555560000000
  %9094 = fdiv fast float %9066, %9093
  %9095 = fsub fast float %9089, %9094
  %9096 = fsub fast float 1.000000e+00, %9055
  %9097 = fadd fast float %9071, %9058
  %9098 = fmul fast float %9097, 0x3FC5555560000000
  %9099 = fdiv fast float %9072, %9098
  %9100 = fadd fast float %9096, %9099
  %9101 = fadd fast float %9056, 1.000000e+00
  %9102 = fsub fast float 1.000000e+00, %9077
  %9103 = fadd fast float %9102, %9076
  %9104 = fadd fast float %9103, %9081
  %9105 = fmul fast float %9104, 0x3FC5555560000000
  %9106 = fdiv fast float %9082, %9105
  %9107 = fsub fast float %9101, %9106
  %9108 = fsub fast float 1.000000e+00, %9056
  %9109 = fadd fast float %9087, %9074
  %9110 = fmul fast float %9109, 0x3FC5555560000000
  %9111 = fdiv fast float %9088, %9110
  %9112 = fadd fast float %9111, %9108
  %9113 = fmul fast float %9095, %9049
  %9114 = fsub fast float %8970, %9113
  %9115 = fmul fast float %9100, %9049
  %9116 = fadd fast float %9115, %8970
  %9117 = fmul fast float %9112, %9050
  %9118 = fadd fast float %9117, %8971
  %9119 = fmul fast float %9107, %9050
  %9120 = fsub fast float %8971, %9119
  %9121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9114, float %9120, float %9038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9122 = extractvalue %dx.types.ResRet.f32 %9121, 0
  %9123 = extractvalue %dx.types.ResRet.f32 %9121, 1
  %9124 = extractvalue %dx.types.ResRet.f32 %9121, 2
  %9125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9116, float %9120, float %9038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9126 = extractvalue %dx.types.ResRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.ResRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.ResRet.f32 %9125, 2
  %9129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9114, float %9118, float %9038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9130 = extractvalue %dx.types.ResRet.f32 %9129, 0
  %9131 = extractvalue %dx.types.ResRet.f32 %9129, 1
  %9132 = extractvalue %dx.types.ResRet.f32 %9129, 2
  %9133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9116, float %9118, float %9038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9134 = extractvalue %dx.types.ResRet.f32 %9133, 0
  %9135 = extractvalue %dx.types.ResRet.f32 %9133, 1
  %9136 = extractvalue %dx.types.ResRet.f32 %9133, 2
  %9137 = fsub fast float %9130, %9122
  %9138 = fsub fast float %9131, %9123
  %9139 = fsub fast float %9132, %9124
  %9140 = fmul fast float %9137, %9110
  %9141 = fmul fast float %9138, %9110
  %9142 = fmul fast float %9139, %9110
  %9143 = fadd fast float %9140, %9122
  %9144 = fadd fast float %9141, %9123
  %9145 = fadd fast float %9142, %9124
  %9146 = fsub fast float %9134, %9126
  %9147 = fsub fast float %9135, %9127
  %9148 = fsub fast float %9136, %9128
  %9149 = fmul fast float %9146, %9110
  %9150 = fmul fast float %9147, %9110
  %9151 = fmul fast float %9148, %9110
  %9152 = fsub fast float %9126, %9143
  %9153 = fadd fast float %9152, %9149
  %9154 = fsub fast float %9127, %9144
  %9155 = fadd fast float %9154, %9150
  %9156 = fsub fast float %9128, %9145
  %9157 = fadd fast float %9156, %9151
  %9158 = fmul fast float %9153, %9098
  %9159 = fmul fast float %9155, %9098
  %9160 = fmul fast float %9157, %9098
  %9161 = fadd fast float %9158, %9143
  %9162 = fadd fast float %9159, %9144
  %9163 = fadd fast float %9160, %9145
  %9164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.f32 %9164, 1
  %9166 = fmul fast float %9161, %9165
  %9167 = fmul fast float %9162, %9165
  %9168 = fmul fast float %9163, %9165
  br label %9169

; <label>:9169                                    ; preds = %9000, %8957
  %9170 = phi float [ %9040, %9000 ], [ 1.000000e+00, %8957 ]
  %9171 = phi float [ %9041, %9000 ], [ 1.000000e+00, %8957 ]
  %9172 = phi float [ %9042, %9000 ], [ 1.000000e+00, %8957 ]
  %9173 = phi float [ %9166, %9000 ], [ 0.000000e+00, %8957 ]
  %9174 = phi float [ %9167, %9000 ], [ 0.000000e+00, %8957 ]
  %9175 = phi float [ %9168, %9000 ], [ 0.000000e+00, %8957 ]
  %9176 = fmul fast float %9173, %7511
  %9177 = fmul fast float %9174, %7511
  %9178 = fmul fast float %9175, %7511
  %9179 = fmul fast float %9170, %8964
  %9180 = call float @dx.op.dot3.f32(i32 55, float %9170, float %9171, float %9172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9181 = call float @dx.op.dot3.f32(i32 55, float %9176, float %9177, float %9178, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9182 = select i1 %271, float %9180, float %9170
  %9183 = select i1 %271, float %9180, float %9171
  %9184 = select i1 %271, float 1.000000e+00, float %9172
  %9185 = select i1 %271, float %9181, float %9176
  %9186 = select i1 %271, float 0.000000e+00, float %9177
  %9187 = select i1 %271, float 0.000000e+00, float %9178
  %9188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9189 = extractvalue %dx.types.CBufRet.i32 %9188, 3
  %9190 = and i32 %9189, 3
  %9191 = icmp ne i32 %9190, 0
  %9192 = and i32 %9189, 4
  %9193 = icmp ne i32 %9192, 0
  %9194 = and i1 %9191, %9193
  %9195 = and i1 %271, %9194
  br i1 %9195, label %9196, label %9202

; <label>:9196                                    ; preds = %9169
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 1
  %9199 = fadd fast float %9179, -1.000000e+00
  %9200 = fmul fast float %9198, %9199
  %9201 = fadd fast float %9200, 1.000000e+00
  br label %9202

; <label>:9202                                    ; preds = %9196, %9169
  %9203 = phi float [ %9201, %9196 ], [ %9179, %9169 ]
  %9204 = fadd fast float %8961, %8958
  %9205 = fmul fast float %9182, %9204
  %9206 = fadd fast float %9205, %9185
  %9207 = fadd fast float %8962, %8959
  %9208 = fmul fast float %9183, %9207
  %9209 = fadd fast float %9208, %9186
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  br i1 %271, label %9212, label %9236

; <label>:9212                                    ; preds = %9202
  %9213 = fadd fast float %9206, %9209
  %9214 = fmul fast float %9211, %9213
  %9215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9216 = extractvalue %dx.types.CBufRet.f32 %9215, 3
  %9217 = extractvalue %dx.types.CBufRet.f32 %7515, 1
  %9218 = fsub fast float %7520, %7514
  %9219 = fadd fast float %9218, %7521
  %9220 = fsub fast float %9219, %9217
  %9221 = extractvalue %dx.types.CBufRet.f32 %7515, 2
  %9222 = fmul fast float %9220, %9221
  %9223 = call float @dx.op.unary.f32(i32 7, float %9222)  ; Saturate(value)
  %9224 = fsub fast float %9223, %9216
  %9225 = fmul fast float %9224, %9203
  %9226 = fadd fast float %9225, %9216
  %9227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9228 = extractvalue %dx.types.CBufRet.f32 %9227, 0
  %9229 = fsub fast float %9226, %9228
  %9230 = fmul fast float %9229, 1.000000e+01
  %9231 = call float @dx.op.unary.f32(i32 7, float %9230)  ; Saturate(value)
  %9232 = fsub fast float %4095, %7511
  %9233 = fmul fast float %9231, %9232
  %9234 = fadd fast float %9233, %7511
  %9235 = fmul fast float %9234, %9226
  br label %9260

; <label>:9236                                    ; preds = %9202
  %9237 = fadd fast float %8963, %8960
  %9238 = fmul fast float %9184, %9237
  %9239 = fadd fast float %9238, %9187
  %9240 = fmul fast float %9211, %9206
  %9241 = fmul fast float %9211, %9209
  %9242 = fmul fast float %9211, %9239
  %9243 = call float @dx.op.binary.f32(i32 35, float %9241, float %9242)  ; FMax(a,b)
  %9244 = call float @dx.op.binary.f32(i32 35, float %9240, float %9243)  ; FMax(a,b)
  %9245 = call float @dx.op.binary.f32(i32 35, float %9244, float %7511)  ; FMax(a,b)
  %9246 = fcmp fast ugt float %9245, 0x3F10000000000000
  br i1 %9246, label %9248, label %9247

; <label>:9247                                    ; preds = %9236
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9248

; <label>:9248                                    ; preds = %9247, %9236
  %9249 = add i32 %58, 356
  %9250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9249, i32 undef)  ; BufferLoad(srv,index,wot)
  %9251 = extractvalue %dx.types.ResRet.i32 %9250, 0
  %9252 = and i32 %9251, 32
  %9253 = icmp eq i32 %9252, 0
  br i1 %9253, label %9260, label %9254

; <label>:9254                                    ; preds = %9248
  %9255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9256 = extractvalue %dx.types.CBufRet.f32 %9255, 0
  %9257 = fmul fast float %9256, 0x3FE99999A0000000
  %9258 = fadd fast float %9256, %9240
  %9259 = fadd fast float %9257, %9242
  br label %9260

; <label>:9260                                    ; preds = %9254, %9248, %9212
  %9261 = phi float [ %9214, %9212 ], [ %9258, %9254 ], [ %9240, %9248 ]
  %9262 = phi float [ %9235, %9212 ], [ %9241, %9254 ], [ %9241, %9248 ]
  %9263 = phi float [ %9234, %9212 ], [ %9259, %9254 ], [ %9242, %9248 ]
  %9264 = phi float [ %9234, %9212 ], [ %7511, %9254 ], [ %7511, %9248 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9265 = call float @dx.op.binary.f32(i32 36, float %9261, float 3.225500e+04)  ; FMin(a,b)
  %9266 = call float @dx.op.binary.f32(i32 36, float %9262, float 3.225500e+04)  ; FMin(a,b)
  %9267 = call float @dx.op.binary.f32(i32 36, float %9263, float 3.225500e+04)  ; FMin(a,b)
  %9268 = call float @dx.op.binary.f32(i32 36, float %9264, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9265)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9266)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9267)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9268)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0]}
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
!89 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 12, i8 0, !75}
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

