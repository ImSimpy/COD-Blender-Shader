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
; shader hash: d549ac011908da66c301b591562569cb
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
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26      t1,space1     1
;                                   texture     f32          1d     T27     t32,space2     1
;                                   texture     f32     2darray     T28      t8,space2     1
;                                   texture     f32          2d     T29      t1,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = alloca [4 x i32], align 4
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = icmp ne i32 %55, 0
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
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = fmul fast float %112, %101
  %114 = fmul fast float %112, %102
  %115 = select i1 %56, float 1.000000e+00, float -1.000000e+00
  %116 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %92, %115
  %122 = fmul fast float %121, %120
  %123 = fmul fast float %93, %115
  %124 = fmul fast float %123, %120
  %125 = fmul fast float %94, %115
  %126 = fmul fast float %125, %120
  %127 = fmul fast float %93, %90
  %128 = fmul fast float %94, %89
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %94, %88
  %131 = fmul fast float %92, %90
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %92, %89
  %134 = fmul fast float %93, %88
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %129, %91
  %137 = fmul fast float %132, %91
  %138 = fmul fast float %135, %91
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = fcmp fast une float %140, 0.000000e+00
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %145 = fmul fast float %113, 2.000000e+00
  %146 = fmul fast float %145, %143
  %147 = fmul fast float %114, 2.000000e+00
  %148 = fmul fast float %147, %144
  %149 = fsub fast float 1.000000e+00, %146
  %150 = fsub fast float 1.000000e+00, %148
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = select i1 %141, float %152, float %156
  %160 = select i1 %141, float %153, float %157
  %161 = select i1 %141, float %154, float %158
  %162 = fmul fast float %159, %149
  %163 = fmul fast float %160, %149
  %164 = fmul fast float %161, %149
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = select i1 %141, float %166, float %170
  %174 = select i1 %141, float %167, float %171
  %175 = select i1 %141, float %168, float %172
  %176 = fmul fast float %173, %150
  %177 = fmul fast float %174, %150
  %178 = fmul fast float %175, %150
  %179 = fadd fast float %176, %162
  %180 = fadd fast float %177, %163
  %181 = fadd fast float %178, %164
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = select i1 %141, float %183, float %187
  %191 = select i1 %141, float %184, float %188
  %192 = select i1 %141, float %185, float %189
  %193 = fadd fast float %179, %190
  %194 = fadd fast float %180, %191
  %195 = fadd fast float %181, %192
  %196 = fmul fast float %193, %104
  %197 = fmul fast float %194, %104
  %198 = fmul fast float %195, %104
  %199 = shl i32 %58, 5
  %200 = add i32 %199, 4194304
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = extractvalue %dx.types.ResRet.i32 %201, 2
  %205 = extractvalue %dx.types.ResRet.i32 %201, 3
  %206 = add i32 %199, 4194320
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = bitcast i32 %208 to float
  %211 = bitcast i32 %209 to float
  %212 = fmul fast float %113, 5.000000e-01
  %213 = fmul fast float %114, 5.000000e-01
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
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %235 = fmul fast float %233, %113
  %236 = fmul fast float %234, %114
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 114688
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %240, float %235, float 0.000000e+00
  %242 = select i1 %240, float %236, float 0.000000e+00
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %241, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = fmul fast float %244, 2.550000e+02
  %246 = fptoui float %245 to i32
  %247 = select i1 %240, i32 %246, i32 0
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 3
  %250 = and i32 %249, 3
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %249, 4
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %251, %253
  br i1 %254, label %255, label %264

; <label>:255                                     ; preds = %0
  %256 = fmul fast float %144, %114
  %257 = fmul fast float %143, %113
  %258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %257, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fsub fast float 1.000000e+00, %259
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = fcmp fast olt float %260, %262
  br label %267

; <label>:264                                     ; preds = %0
  %265 = icmp eq i32 %252, 0
  %266 = and i1 %251, %265
  br label %267

; <label>:267                                     ; preds = %264, %255
  %268 = phi i1 [ %263, %255 ], [ %266, %264 ]
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fmul fast float %270, 0x3FE3C6EF40000000
  %272 = frem fast float %113, 2.560000e+02
  %273 = frem fast float %114, 2.560000e+02
  %274 = fptoui float %272 to i32
  %275 = fptoui float %273 to i32
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fadd fast float %277, %271
  %279 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %280 = add i32 %57, 156
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %57, 216
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %57, 36
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %57, 288
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %57, 172
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %57, 232
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %57, 52
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %57, 304
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %359, 0x3F50624DE0000000
  %363 = fmul fast float %361, 0x3F50624DE0000000
  %364 = add i32 %57, 188
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = shl i32 %366, 4
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %366, 7
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %366, 22
  %374 = shl nuw nsw i32 %373, 5
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %57, 248
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %378, 8
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = lshr i32 %378, 16
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = add i32 %57, 68
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %57, 320
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = fmul fast float %401, 0x3F50624DE0000000
  %405 = fmul fast float %403, 0x3F50624DE0000000
  %406 = add i32 %57, 204
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = shl i32 %408, 4
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %408, 7
  %413 = and i32 %412, 32752
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %408, 22
  %416 = shl nuw nsw i32 %415, 5
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %57, 264
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = lshr i32 %420, 8
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = lshr i32 %420, 16
  %429 = and i32 %428, 255
  %430 = uitofp i32 %429 to float
  %431 = fmul fast float %430, 0x3F70101020000000
  %432 = add i32 %57, 84
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 65535
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %434, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %57, 336
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %443, 0x3F50624DE0000000
  %447 = fmul fast float %445, 0x3F50624DE0000000
  %448 = add i32 %57, 364
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 32
  %452 = icmp eq i32 %451, 0
  %453 = and i32 %450, 64
  %454 = icmp eq i32 %453, 0
  %455 = and i32 %450, 128
  %456 = icmp eq i32 %455, 0
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 2
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %476, label %461

; <label>:461                                     ; preds = %267
  %462 = add i32 %57, 524
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = add i32 %464, 0
  %466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %466, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = fmul fast float %471, %97
  %473 = fmul fast float %468, %98
  %474 = fmul fast float %469, %99
  %475 = fmul fast float %470, %100
  br label %476

; <label>:476                                     ; preds = %461, %267
  %477 = phi float [ %100, %267 ], [ %475, %461 ]
  %478 = phi float [ %99, %267 ], [ %474, %461 ]
  %479 = phi float [ %98, %267 ], [ %473, %461 ]
  %480 = phi float [ %97, %267 ], [ %472, %461 ]
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 2
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %504, label %485

; <label>:485                                     ; preds = %476
  %486 = add i32 %57, 44
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 1
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %479, float 1.000000e+00
  %492 = add i32 %57, 60
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  %497 = select i1 %496, float %478, float 1.000000e+00
  %498 = add i32 %57, 76
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 1
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %477, float 1.000000e+00
  br label %504

; <label>:504                                     ; preds = %485, %476
  %505 = phi float [ %477, %476 ], [ %503, %485 ]
  %506 = phi float [ %478, %476 ], [ %497, %485 ]
  %507 = phi float [ %479, %476 ], [ %491, %485 ]
  %508 = lshr i32 %482, 20
  %509 = and i32 %508, 3
  %510 = add nuw nsw i32 %509, 1
  %511 = add i32 %57, 24
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = add i32 %57, 28
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = or i32 %516, %513
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %1154, label %519

; <label>:519                                     ; preds = %504
  %520 = and i32 %513, 262144
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, float %63, float 1.000000e+00
  %523 = select i1 %521, float %64, float 0.000000e+00
  %524 = select i1 %521, float %65, float 0.000000e+00
  %525 = select i1 %521, float %66, float 1.000000e+00
  %526 = select i1 %521, float %67, float %95
  %527 = select i1 %521, float %68, float %96
  %528 = add i32 %57, 284
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = fmul fast float %532, 0x3F50624DE0000000
  %534 = add i32 %57, 88
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = lshr i32 %536, 16
  %538 = and i32 %537, 255
  %539 = lshr i32 %536, 24
  %540 = add i32 %57, 292
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 65535
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = lshr i32 %542, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = add i32 %57, 32
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 22
  %551 = shl nuw nsw i32 %550, 5
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = shl i32 %549, 4
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %549, 7
  %557 = and i32 %556, 32752
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = fmul fast float %560, 1.000000e+03
  %562 = fmul fast float %320, %561
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fadd fast float %563, %310
  %565 = fmul fast float %321, %561
  %566 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %567 = fadd fast float %566, %312
  %568 = fmul fast float %533, %561
  %569 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %570 = fmul fast float %569, 0x401921FB60000000
  %571 = fadd fast float %570, %552
  %572 = call float @dx.op.unary.f32(i32 13, float %571)  ; Sin(value)
  %573 = call float @dx.op.unary.f32(i32 12, float %571)  ; Cos(value)
  %574 = fsub fast float -0.000000e+00, %572
  %575 = fadd fast float %526, -5.000000e-01
  %576 = fadd fast float %527, -5.000000e-01
  %577 = fmul fast float %544, %575
  %578 = fmul fast float %546, %576
  %579 = fadd fast float %577, 5.000000e-01
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fmul fast float %555, %579
  %582 = fmul fast float %558, %580
  %583 = fmul fast float %573, %581
  %584 = call float @dx.op.tertiary.f32(i32 46, float %574, float %582, float %583)  ; FMad(a,b,c)
  %585 = fmul fast float %572, %581
  %586 = call float @dx.op.tertiary.f32(i32 46, float %573, float %582, float %585)  ; FMad(a,b,c)
  %587 = fadd fast float %564, %584
  %588 = fadd fast float %567, %586
  %589 = icmp ugt i32 %538, 1
  %590 = icmp ugt i32 %536, 33554431
  %591 = or i1 %590, %589
  br i1 %591, label %592, label %617

; <label>:592                                     ; preds = %519
  %593 = add i32 %57, 228
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = fmul fast float %560, %597
  %599 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %600 = mul nuw nsw i32 %538, %539
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %599, %601
  %603 = call float @dx.op.unary.f32(i32 27, float %602)  ; Round_ni(value)
  %604 = fptoui float %603 to i32
  %605 = urem i32 %604, %538
  %606 = udiv i32 %604, %539
  %607 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %608 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %609 = uitofp i32 %605 to float
  %610 = uitofp i32 %606 to float
  %611 = fadd fast float %607, %609
  %612 = fadd fast float %608, %610
  %613 = uitofp i32 %538 to float
  %614 = uitofp i32 %539 to float
  %615 = fdiv fast float %611, %613
  %616 = fdiv fast float %612, %614
  br label %617

; <label>:617                                     ; preds = %592, %519
  %618 = phi float [ %615, %592 ], [ %587, %519 ]
  %619 = phi float [ %616, %592 ], [ %588, %519 ]
  %620 = and i32 %513, 256
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %668, label %622

; <label>:622                                     ; preds = %617
  %623 = add i32 %57, 456
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = add i32 %57, 100
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = shl i32 %632, 4
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %632, 7
  %637 = and i32 %636, 32752
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = fsub fast float 1.000000e+00, %480
  %640 = call float @dx.op.binary.f32(i32 35, float %639, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %641 = bitcast float %480 to i32
  %642 = sitofp i32 %641 to float
  %643 = fadd fast float %642, 0xC1CFBF8940000000
  %644 = fmul fast float %638, %643
  %645 = fadd fast float %644, 0x41CFBF8940000000
  %646 = fptosi float %645 to i32
  %647 = bitcast i32 %646 to float
  %648 = bitcast float %640 to i32
  %649 = sitofp i32 %648 to float
  %650 = fadd fast float %649, 0xC1CFBF8940000000
  %651 = fmul fast float %650, %638
  %652 = fadd fast float %651, 0x41CFBF8940000000
  %653 = fptosi float %652 to i32
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %647, %635
  %656 = fmul fast float %654, %635
  %657 = fsub fast float %640, %655
  %658 = fadd fast float %656, %640
  %659 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %660 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %661 = fsub fast float %629, %659
  %662 = fsub fast float %660, %659
  %663 = bitcast float %662 to i32
  %664 = sub nsw i32 2129859010, %663
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %665, %661
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  br label %668

; <label>:668                                     ; preds = %622, %617
  %669 = phi float [ %667, %622 ], [ %480, %617 ]
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 128
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %690, label %674

; <label>:674                                     ; preds = %668
  %675 = add i32 %57, 440
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %677, 0
  %679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %679, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 524288
  %685 = icmp ne i32 %684, 0
  %686 = fcmp fast ogt float %681, 0x3FE0101020000000
  %687 = select i1 %686, float 1.000000e+00, float 0.000000e+00
  %688 = select i1 %685, float %687, float %681
  %689 = fmul fast float %688, %669
  br label %690

; <label>:690                                     ; preds = %674, %668
  %691 = phi float [ %689, %674 ], [ %669, %668 ]
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 16
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %894, label %696

; <label>:696                                     ; preds = %690
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %57, 392
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %109, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = extractvalue %dx.types.ResRet.f32 %704, 3
  %709 = and i32 %698, 255
  %710 = uitofp i32 %709 to float
  %711 = lshr i32 %698, 8
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %708, %710
  %715 = fadd fast float %714, %713
  %716 = fmul fast float %715, 0x3F70101000000000
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 512
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %729, label %721

; <label>:721                                     ; preds = %696
  %722 = add i32 %57, 476
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  br label %729

; <label>:729                                     ; preds = %721, %696
  %730 = phi float [ %728, %721 ], [ 1.000000e+00, %696 ]
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 33554432
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %841, label %735

; <label>:735                                     ; preds = %729
  %736 = add i32 %57, 224
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 65535
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = lshr i32 %738, 16
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = add i32 %57, 228
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 65535
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = lshr i32 %749, 24
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = and i32 %749, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = lshr i32 %749, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = lshr i32 %749, 16
  %761 = and i32 %760, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = add i32 %57, 220
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = lshr i32 %766, 24
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = and i32 %766, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = lshr i32 %766, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %766, 16
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = bitcast float %705 to i32
  %782 = ashr i32 %781, 1
  %783 = sub nsw i32 1597463174, %782
  %784 = bitcast i32 %783 to float
  %785 = fmul fast float %705, 5.000000e-01
  %786 = fmul fast float %784, %784
  %787 = fmul fast float %786, %785
  %788 = fsub fast float 1.500000e+00, %787
  %789 = fmul fast float %784, %705
  %790 = fmul fast float %789, %788
  %791 = bitcast float %706 to i32
  %792 = ashr i32 %791, 1
  %793 = sub nsw i32 1597463174, %792
  %794 = bitcast i32 %793 to float
  %795 = fmul fast float %706, 5.000000e-01
  %796 = fmul fast float %794, %794
  %797 = fmul fast float %796, %795
  %798 = fsub fast float 1.500000e+00, %797
  %799 = fmul fast float %794, %706
  %800 = fmul fast float %799, %798
  %801 = bitcast float %707 to i32
  %802 = ashr i32 %801, 1
  %803 = sub nsw i32 1597463174, %802
  %804 = bitcast i32 %803 to float
  %805 = fmul fast float %707, 5.000000e-01
  %806 = fmul fast float %804, %804
  %807 = fmul fast float %806, %805
  %808 = fsub fast float 1.500000e+00, %807
  %809 = fmul fast float %804, %707
  %810 = fmul fast float %809, %808
  %811 = fsub fast float %790, %772
  %812 = fsub fast float %800, %776
  %813 = fsub fast float %810, %780
  %814 = fmul fast float %811, %740
  %815 = fmul fast float %812, %742
  %816 = fmul fast float %813, %747
  %817 = fadd fast float %814, %755
  %818 = fadd fast float %815, %759
  %819 = fadd fast float %816, %763
  %820 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = fmul fast float %820, %820
  %824 = fmul fast float %821, %821
  %825 = fmul fast float %822, %822
  %826 = fsub fast float %823, %705
  %827 = fsub fast float %824, %706
  %828 = fsub fast float %825, %707
  %829 = fmul fast float %826, %730
  %830 = fmul fast float %827, %730
  %831 = fmul fast float %828, %730
  %832 = fadd fast float %829, %705
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %831, %707
  %835 = fadd fast float %752, %716
  %836 = fsub fast float %835, %769
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fsub fast float %837, %716
  %839 = fmul fast float %838, %730
  %840 = fadd fast float %839, %716
  br label %894

; <label>:841                                     ; preds = %729
  %842 = and i32 %732, 134217728
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %878, label %844

; <label>:844                                     ; preds = %841
  %845 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %846 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %848 = fadd fast float %845, -5.000000e-01
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fadd fast float %847, -5.000000e-01
  %851 = fmul fast float %848, %730
  %852 = fmul fast float %849, %730
  %853 = fmul fast float %850, %730
  %854 = fadd fast float %851, 5.000000e-01
  %855 = fadd fast float %852, 5.000000e-01
  %856 = fadd fast float %853, 5.000000e-01
  %857 = call float @dx.op.unary.f32(i32 24, float %705)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %860 = fmul fast float %854, 2.000000e+00
  %861 = fsub fast float 1.000000e+00, %860
  %862 = fmul fast float %861, %857
  %863 = fadd fast float %862, %860
  %864 = fmul fast float %863, %857
  %865 = fmul fast float %855, 2.000000e+00
  %866 = fsub fast float 1.000000e+00, %865
  %867 = fmul fast float %866, %858
  %868 = fadd fast float %867, %865
  %869 = fmul fast float %868, %858
  %870 = fmul fast float %856, 2.000000e+00
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %871, %859
  %873 = fadd fast float %872, %870
  %874 = fmul fast float %873, %859
  %875 = fmul fast float %864, %864
  %876 = fmul fast float %869, %869
  %877 = fmul fast float %874, %874
  br label %894

; <label>:878                                     ; preds = %841
  %879 = fmul fast float %297, %297
  %880 = fmul fast float %301, %301
  %881 = fmul fast float %305, %305
  %882 = fadd fast float %879, -1.000000e+00
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fadd fast float %881, -1.000000e+00
  %885 = fmul fast float %730, %882
  %886 = fmul fast float %730, %883
  %887 = fmul fast float %730, %884
  %888 = fadd fast float %885, 1.000000e+00
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fadd fast float %887, 1.000000e+00
  %891 = fmul fast float %888, %705
  %892 = fmul fast float %889, %706
  %893 = fmul fast float %890, %707
  br label %894

; <label>:894                                     ; preds = %878, %844, %735, %690
  %895 = phi float [ %840, %735 ], [ %716, %844 ], [ %716, %878 ], [ 0x3FA23C0BE0000000, %690 ]
  %896 = phi float [ %832, %735 ], [ %875, %844 ], [ %891, %878 ], [ 1.000000e+00, %690 ]
  %897 = phi float [ %833, %735 ], [ %876, %844 ], [ %892, %878 ], [ 1.000000e+00, %690 ]
  %898 = phi float [ %834, %735 ], [ %877, %844 ], [ %893, %878 ], [ 1.000000e+00, %690 ]
  %899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.i32 %899, 1
  %901 = and i32 %900, 1
  %902 = icmp ne i32 %901, 0
  %903 = add i32 %57, 372
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 32
  %907 = icmp ne i32 %906, 0
  %908 = and i1 %902, %907
  %909 = select i1 %908, float 1.000000e+00, float %896
  %910 = select i1 %908, float 0x3FD3333340000000, float %897
  %911 = select i1 %908, float 0x3FD3333340000000, float %898
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 32
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %988, label %916

; <label>:916                                     ; preds = %894
  %917 = add i32 %57, 92
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %57, 408
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = add i32 %922, 0
  %924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %924, %dx.types.Handle %109, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = extractvalue %dx.types.ResRet.f32 %925, 1
  %928 = extractvalue %dx.types.ResRet.f32 %925, 2
  %929 = extractvalue %dx.types.ResRet.f32 %925, 3
  %930 = and i32 %919, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %919, 8
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = lshr i32 %919, 16
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = fmul fast float %937, 0x3F70101000000000
  %939 = fmul fast float %926, %931
  %940 = fadd fast float %939, %934
  %941 = fmul fast float %940, 0x3F70101000000000
  %942 = fadd fast float %927, -5.000000e-01
  %943 = fadd fast float %929, -5.000000e-01
  %944 = fmul fast float %942, %938
  %945 = fmul fast float %943, %938
  %946 = fadd fast float %944, 5.000000e-01
  %947 = fadd fast float %945, 5.000000e-01
  %948 = fmul fast float %946, 2.000000e+00
  %949 = fadd fast float %948, -1.000000e+00
  %950 = fmul fast float %947, 2.000000e+00
  %951 = fadd fast float %950, -1.000000e+00
  %952 = fadd fast float %949, %951
  %953 = fmul fast float %952, 5.000000e-01
  %954 = fsub fast float %949, %951
  %955 = fmul fast float %954, 5.000000e-01
  %956 = call float @dx.op.unary.f32(i32 6, float %953)  ; FAbs(value)
  %957 = fsub fast float 1.000000e+00, %956
  %958 = call float @dx.op.unary.f32(i32 6, float %955)  ; FAbs(value)
  %959 = fsub fast float %957, %958
  %960 = call float @dx.op.dot3.f32(i32 55, float %953, float %955, float %959, float %953, float %955, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 25, float %960)  ; Rsqrt(value)
  %962 = fmul fast float %953, %961
  %963 = fmul fast float %955, %961
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 67108864
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %984, label %968

; <label>:968                                     ; preds = %916
  %969 = add i32 %57, 280
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 65535
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 65535
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %971, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = fsub fast float %941, %979
  %981 = fmul fast float %980, %973
  %982 = fadd fast float %981, %977
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  br label %984

; <label>:984                                     ; preds = %968, %916
  %985 = phi float [ %983, %968 ], [ %941, %916 ]
  %986 = call float @dx.op.dot2.f32(i32 54, float %962, float %963, float %522, float %523)  ; Dot2(ax,ay,bx,by)
  %987 = call float @dx.op.dot2.f32(i32 54, float %962, float %963, float %524, float %525)  ; Dot2(ax,ay,bx,by)
  br label %988

; <label>:988                                     ; preds = %984, %894
  %989 = phi float [ %985, %984 ], [ 0x3FD6666660000000, %894 ]
  %990 = phi float [ %986, %984 ], [ 0.000000e+00, %894 ]
  %991 = phi float [ %987, %984 ], [ 0.000000e+00, %894 ]
  %992 = phi float [ %928, %984 ], [ 1.000000e+00, %894 ]
  %993 = add i32 %57, 160
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 22
  %997 = shl nuw nsw i32 %996, 5
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 64
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1036, label %1003

; <label>:1003                                    ; preds = %988
  %1004 = add i32 %57, 424
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = add i32 %1006, 0
  %1008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 131072
  %1012 = icmp eq i32 %1011, 0
  %1013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1008, %dx.types.Handle %109, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = fmul fast float %1014, %285
  %1018 = fmul fast float %1015, %288
  %1019 = fmul fast float %1016, %291
  br i1 %1012, label %1026, label %1020

; <label>:1020                                    ; preds = %1003
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = fmul fast float %1022, %1017
  %1024 = fmul fast float %1022, %1018
  %1025 = fmul fast float %1022, %1019
  br label %1026

; <label>:1026                                    ; preds = %1020, %1003
  %1027 = phi float [ %1023, %1020 ], [ %1017, %1003 ]
  %1028 = phi float [ %1024, %1020 ], [ %1018, %1003 ]
  %1029 = phi float [ %1025, %1020 ], [ %1019, %1003 ]
  %1030 = fmul fast float %1027, %998
  %1031 = select i1 %268, float %1030, float %1027
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1028, float %1029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = select i1 %268, float 0.000000e+00, float %1027
  %1034 = select i1 %268, float %1032, float %1028
  %1035 = select i1 %268, float 0.000000e+00, float %1029
  br label %1036

; <label>:1036                                    ; preds = %1026, %988
  %1037 = phi float [ %1033, %1026 ], [ 0.000000e+00, %988 ]
  %1038 = phi float [ %1034, %1026 ], [ 0.000000e+00, %988 ]
  %1039 = phi float [ %1035, %1026 ], [ 0.000000e+00, %988 ]
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 1024
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1074, label %1044

; <label>:1044                                    ; preds = %1036
  %1045 = add i32 %57, 152
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = lshr i32 %1047, 8
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1053, 0x3F70101020000000
  %1055 = lshr i32 %1047, 16
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1057, 0x3F70101020000000
  %1059 = fmul fast float %1050, %1050
  %1060 = fmul fast float %1054, %1054
  %1061 = fmul fast float %1058, %1058
  %1062 = add i32 %57, 492
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = add i32 %1064, 0
  %1066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1067 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1066, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = fmul fast float %1059, %1068
  %1072 = fmul fast float %1060, %1069
  %1073 = fmul fast float %1061, %1070
  br label %1074

; <label>:1074                                    ; preds = %1044, %1036
  %1075 = phi float [ %1071, %1044 ], [ 0.000000e+00, %1036 ]
  %1076 = phi float [ %1072, %1044 ], [ 0.000000e+00, %1036 ]
  %1077 = phi float [ %1073, %1044 ], [ 0.000000e+00, %1036 ]
  %1078 = fcmp fast ogt float %1075, 0.000000e+00
  %1079 = fcmp fast ogt float %1076, 0.000000e+00
  %1080 = fcmp fast ogt float %1077, 0.000000e+00
  %1081 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1082 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1083 = call float @dx.op.unary.f32(i32 23, float %1077)  ; Log(value)
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = lshr i32 %1085, 7
  %1087 = and i32 %1086, 32752
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = fmul fast float %1081, 0xBFE62E4300000000
  %1090 = fmul fast float %1089, %1088
  %1091 = fmul fast float %1082, 0xBFE62E4300000000
  %1092 = fmul fast float %1091, %1088
  %1093 = fmul fast float %1083, 0xBFE62E4300000000
  %1094 = fmul fast float %1093, %1088
  %1095 = select i1 %1078, float %1090, float 1.270000e+02
  %1096 = select i1 %1079, float %1092, float 1.270000e+02
  %1097 = select i1 %1080, float %1094, float 1.270000e+02
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 26624
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1138, label %1102

; <label>:1102                                    ; preds = %1074
  %1103 = add i32 %57, 508
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 1048576
  %1113 = icmp ne i32 %1112, 0
  %1114 = and i32 %1111, 2048
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1125, label %1116

; <label>:1116                                    ; preds = %1102
  %1117 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = shl i32 %1119, 4
  %1121 = and i32 %1120, 32752
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = fmul fast float %1122, %1117
  %1124 = call float @dx.op.binary.f32(i32 35, float %1123, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1125

; <label>:1125                                    ; preds = %1116, %1102
  %1126 = phi float [ %1124, %1116 ], [ 0x3F70101020000000, %1102 ]
  %1127 = and i32 %1111, 16384
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1138, label %1129

; <label>:1129                                    ; preds = %1125
  %1130 = add i32 %57, 96
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = lshr i32 %1132, 24
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1109, 0x3F70101020000000
  %1136 = select i1 %1113, float 0x3F70101020000000, float %1135
  %1137 = fmul fast float %1136, %1134
  br label %1138

; <label>:1138                                    ; preds = %1129, %1125, %1074
  %1139 = phi float [ %1126, %1129 ], [ %1126, %1125 ], [ 0x3F70101020000000, %1074 ]
  %1140 = phi float [ %1137, %1129 ], [ 0.000000e+00, %1125 ], [ 0.000000e+00, %1074 ]
  %1141 = add i32 %57, 96
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = lshr i32 %1143, 8
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = call float @dx.op.dot3.f32(i32 55, float %909, float %910, float %911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = fmul fast float %1148, %1149
  %1151 = fadd fast float %1150, %1145
  %1152 = fmul fast float %1151, 0x3F70101020000000
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  br label %1154

; <label>:1154                                    ; preds = %1138, %504
  %1155 = phi float [ 0.000000e+00, %504 ], [ %990, %1138 ]
  %1156 = phi float [ 0.000000e+00, %504 ], [ %991, %1138 ]
  %1157 = phi float [ 0.000000e+00, %504 ], [ %1095, %1138 ]
  %1158 = phi float [ 0.000000e+00, %504 ], [ %1096, %1138 ]
  %1159 = phi float [ 0.000000e+00, %504 ], [ %1097, %1138 ]
  %1160 = phi float [ 0.000000e+00, %504 ], [ %909, %1138 ]
  %1161 = phi float [ 0.000000e+00, %504 ], [ %910, %1138 ]
  %1162 = phi float [ 0.000000e+00, %504 ], [ %911, %1138 ]
  %1163 = phi float [ 0.000000e+00, %504 ], [ %1037, %1138 ]
  %1164 = phi float [ 0.000000e+00, %504 ], [ %1038, %1138 ]
  %1165 = phi float [ 0.000000e+00, %504 ], [ %1039, %1138 ]
  %1166 = phi float [ 0.000000e+00, %504 ], [ %895, %1138 ]
  %1167 = phi float [ 0.000000e+00, %504 ], [ %691, %1138 ]
  %1168 = phi float [ 0.000000e+00, %504 ], [ %989, %1138 ]
  %1169 = phi float [ 0.000000e+00, %504 ], [ %992, %1138 ]
  %1170 = phi float [ 0.000000e+00, %504 ], [ %1139, %1138 ]
  %1171 = phi float [ 0.000000e+00, %504 ], [ %1140, %1138 ]
  %1172 = phi float [ 0.000000e+00, %504 ], [ %1153, %1138 ]
  br i1 %452, label %2071, label %1173

; <label>:1173                                    ; preds = %1154
  %1174 = icmp ult i32 %510, 2
  %1175 = add i32 %57, 40
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %57, 44
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = or i32 %1180, %1177
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %2071, label %1183

; <label>:1183                                    ; preds = %1173
  %1184 = and i32 %1177, 262144
  %1185 = icmp ne i32 %1184, 0
  %1186 = select i1 %1185, float %63, float 1.000000e+00
  %1187 = select i1 %1185, float %64, float 0.000000e+00
  %1188 = select i1 %1185, float %65, float 0.000000e+00
  %1189 = select i1 %1185, float %66, float 1.000000e+00
  %1190 = select i1 %1185, float %67, float %95
  %1191 = select i1 %1185, float %68, float %96
  %1192 = add i32 %57, 300
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = fmul fast float %1196, 0x3F50624DE0000000
  %1198 = add i32 %57, 104
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = lshr i32 %1200, 16
  %1202 = and i32 %1201, 255
  %1203 = lshr i32 %1200, 24
  %1204 = add i32 %57, 308
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 65535
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = lshr i32 %1206, 16
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = add i32 %57, 48
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 22
  %1215 = shl nuw nsw i32 %1214, 5
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = shl i32 %1213, 4
  %1218 = and i32 %1217, 32752
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = lshr i32 %1213, 7
  %1221 = and i32 %1220, 32752
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 3
  %1225 = fmul fast float %1224, 1.000000e+03
  %1226 = fmul fast float %362, %1225
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = fadd fast float %1227, %352
  %1229 = fmul fast float %363, %1225
  %1230 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1231 = fadd fast float %1230, %354
  %1232 = fmul fast float %1197, %1225
  %1233 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1234 = fmul fast float %1233, 0x401921FB60000000
  %1235 = fadd fast float %1234, %1216
  %1236 = call float @dx.op.unary.f32(i32 13, float %1235)  ; Sin(value)
  %1237 = call float @dx.op.unary.f32(i32 12, float %1235)  ; Cos(value)
  %1238 = fsub fast float -0.000000e+00, %1236
  %1239 = fadd fast float %1190, -5.000000e-01
  %1240 = fadd fast float %1191, -5.000000e-01
  %1241 = fmul fast float %1208, %1239
  %1242 = fmul fast float %1210, %1240
  %1243 = fadd fast float %1241, 5.000000e-01
  %1244 = fadd fast float %1242, 5.000000e-01
  %1245 = fmul fast float %1219, %1243
  %1246 = fmul fast float %1222, %1244
  %1247 = fmul fast float %1237, %1245
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1246, float %1247)  ; FMad(a,b,c)
  %1249 = fmul fast float %1236, %1245
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1246, float %1249)  ; FMad(a,b,c)
  %1251 = fadd fast float %1228, %1248
  %1252 = fadd fast float %1231, %1250
  %1253 = icmp ugt i32 %1202, 1
  %1254 = icmp ugt i32 %1200, 33554431
  %1255 = or i1 %1254, %1253
  br i1 %1255, label %1256, label %1281

; <label>:1256                                    ; preds = %1183
  %1257 = add i32 %57, 244
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = lshr i32 %1259, 16
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = fmul fast float %1224, %1261
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = mul nuw nsw i32 %1202, %1203
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1263, %1265
  %1267 = call float @dx.op.unary.f32(i32 27, float %1266)  ; Round_ni(value)
  %1268 = fptoui float %1267 to i32
  %1269 = urem i32 %1268, %1202
  %1270 = udiv i32 %1268, %1203
  %1271 = call float @dx.op.unary.f32(i32 22, float %1251)  ; Frc(value)
  %1272 = call float @dx.op.unary.f32(i32 22, float %1252)  ; Frc(value)
  %1273 = uitofp i32 %1269 to float
  %1274 = uitofp i32 %1270 to float
  %1275 = fadd fast float %1271, %1273
  %1276 = fadd fast float %1272, %1274
  %1277 = uitofp i32 %1202 to float
  %1278 = uitofp i32 %1203 to float
  %1279 = fdiv fast float %1275, %1277
  %1280 = fdiv fast float %1276, %1278
  br label %1281

; <label>:1281                                    ; preds = %1256, %1183
  %1282 = phi float [ %1279, %1256 ], [ %1251, %1183 ]
  %1283 = phi float [ %1280, %1256 ], [ %1252, %1183 ]
  %1284 = and i32 %1177, 256
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1332, label %1286

; <label>:1286                                    ; preds = %1281
  %1287 = add i32 %57, 460
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = add i32 %1289, 0
  %1291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1291, %dx.types.Handle %110, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = add i32 %57, 116
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = shl i32 %1296, 4
  %1298 = and i32 %1297, 32752
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = lshr i32 %1296, 7
  %1301 = and i32 %1300, 32752
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = fsub fast float 1.000000e+00, %507
  %1304 = call float @dx.op.binary.f32(i32 35, float %1303, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1305 = bitcast float %507 to i32
  %1306 = sitofp i32 %1305 to float
  %1307 = fadd fast float %1306, 0xC1CFBF8940000000
  %1308 = fmul fast float %1302, %1307
  %1309 = fadd fast float %1308, 0x41CFBF8940000000
  %1310 = fptosi float %1309 to i32
  %1311 = bitcast i32 %1310 to float
  %1312 = bitcast float %1304 to i32
  %1313 = sitofp i32 %1312 to float
  %1314 = fadd fast float %1313, 0xC1CFBF8940000000
  %1315 = fmul fast float %1314, %1302
  %1316 = fadd fast float %1315, 0x41CFBF8940000000
  %1317 = fptosi float %1316 to i32
  %1318 = bitcast i32 %1317 to float
  %1319 = fmul fast float %1311, %1299
  %1320 = fmul fast float %1318, %1299
  %1321 = fsub fast float %1304, %1319
  %1322 = fadd fast float %1320, %1304
  %1323 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1324 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1325 = fsub fast float %1293, %1323
  %1326 = fsub fast float %1324, %1323
  %1327 = bitcast float %1326 to i32
  %1328 = sub nsw i32 2129859010, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1329, %1325
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  br label %1332

; <label>:1332                                    ; preds = %1286, %1281
  %1333 = phi float [ %1331, %1286 ], [ %507, %1281 ]
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 128
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1354, label %1338

; <label>:1338                                    ; preds = %1332
  %1339 = add i32 %57, 444
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %1341, 0
  %1343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1343, %dx.types.Handle %110, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 524288
  %1349 = icmp ne i32 %1348, 0
  %1350 = fcmp fast ogt float %1345, 0x3FE0101020000000
  %1351 = select i1 %1350, float 1.000000e+00, float 0.000000e+00
  %1352 = select i1 %1349, float %1351, float %1345
  %1353 = fmul fast float %1352, %1333
  br label %1354

; <label>:1354                                    ; preds = %1338, %1332
  %1355 = phi float [ %1353, %1338 ], [ %1333, %1332 ]
  %1356 = fcmp fast ult float %1355, 0x3F70101020000000
  br i1 %1356, label %2071, label %1357

; <label>:1357                                    ; preds = %1354
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 16
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1560, label %1362

; <label>:1362                                    ; preds = %1357
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %57, 396
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %109, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = extractvalue %dx.types.ResRet.f32 %1370, 3
  %1375 = and i32 %1364, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = lshr i32 %1364, 8
  %1378 = and i32 %1377, 255
  %1379 = uitofp i32 %1378 to float
  %1380 = fmul fast float %1374, %1376
  %1381 = fadd fast float %1380, %1379
  %1382 = fmul fast float %1381, 0x3F70101000000000
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 512
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1395, label %1387

; <label>:1387                                    ; preds = %1362
  %1388 = add i32 %57, 480
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = add i32 %1390, 0
  %1392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1392, %dx.types.Handle %110, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  br label %1395

; <label>:1395                                    ; preds = %1387, %1362
  %1396 = phi float [ %1394, %1387 ], [ 1.000000e+00, %1362 ]
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 33554432
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1507, label %1401

; <label>:1401                                    ; preds = %1395
  %1402 = add i32 %57, 240
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 65535
  %1406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1405)  ; LegacyF16ToF32(value)
  %1407 = lshr i32 %1404, 16
  %1408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1407)  ; LegacyF16ToF32(value)
  %1409 = add i32 %57, 244
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 65535
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = lshr i32 %1415, 24
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = and i32 %1415, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = lshr i32 %1415, 8
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = fmul fast float %1424, 0x3F70101020000000
  %1426 = lshr i32 %1415, 16
  %1427 = and i32 %1426, 255
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3F70101020000000
  %1430 = add i32 %57, 236
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = lshr i32 %1432, 24
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = and i32 %1432, 255
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3F70101020000000
  %1439 = lshr i32 %1432, 8
  %1440 = and i32 %1439, 255
  %1441 = uitofp i32 %1440 to float
  %1442 = fmul fast float %1441, 0x3F70101020000000
  %1443 = lshr i32 %1432, 16
  %1444 = and i32 %1443, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = fmul fast float %1445, 0x3F70101020000000
  %1447 = bitcast float %1371 to i32
  %1448 = ashr i32 %1447, 1
  %1449 = sub nsw i32 1597463174, %1448
  %1450 = bitcast i32 %1449 to float
  %1451 = fmul fast float %1371, 5.000000e-01
  %1452 = fmul fast float %1450, %1450
  %1453 = fmul fast float %1452, %1451
  %1454 = fsub fast float 1.500000e+00, %1453
  %1455 = fmul fast float %1450, %1371
  %1456 = fmul fast float %1455, %1454
  %1457 = bitcast float %1372 to i32
  %1458 = ashr i32 %1457, 1
  %1459 = sub nsw i32 1597463174, %1458
  %1460 = bitcast i32 %1459 to float
  %1461 = fmul fast float %1372, 5.000000e-01
  %1462 = fmul fast float %1460, %1460
  %1463 = fmul fast float %1462, %1461
  %1464 = fsub fast float 1.500000e+00, %1463
  %1465 = fmul fast float %1460, %1372
  %1466 = fmul fast float %1465, %1464
  %1467 = bitcast float %1373 to i32
  %1468 = ashr i32 %1467, 1
  %1469 = sub nsw i32 1597463174, %1468
  %1470 = bitcast i32 %1469 to float
  %1471 = fmul fast float %1373, 5.000000e-01
  %1472 = fmul fast float %1470, %1470
  %1473 = fmul fast float %1472, %1471
  %1474 = fsub fast float 1.500000e+00, %1473
  %1475 = fmul fast float %1470, %1373
  %1476 = fmul fast float %1475, %1474
  %1477 = fsub fast float %1456, %1438
  %1478 = fsub fast float %1466, %1442
  %1479 = fsub fast float %1476, %1446
  %1480 = fmul fast float %1477, %1406
  %1481 = fmul fast float %1478, %1408
  %1482 = fmul fast float %1479, %1413
  %1483 = fadd fast float %1480, %1421
  %1484 = fadd fast float %1481, %1425
  %1485 = fadd fast float %1482, %1429
  %1486 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1487 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1488 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1489 = fmul fast float %1486, %1486
  %1490 = fmul fast float %1487, %1487
  %1491 = fmul fast float %1488, %1488
  %1492 = fsub fast float %1489, %1371
  %1493 = fsub fast float %1490, %1372
  %1494 = fsub fast float %1491, %1373
  %1495 = fmul fast float %1492, %1396
  %1496 = fmul fast float %1493, %1396
  %1497 = fmul fast float %1494, %1396
  %1498 = fadd fast float %1495, %1371
  %1499 = fadd fast float %1496, %1372
  %1500 = fadd fast float %1497, %1373
  %1501 = fadd fast float %1418, %1382
  %1502 = fsub fast float %1501, %1435
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fsub fast float %1503, %1382
  %1505 = fmul fast float %1504, %1396
  %1506 = fadd fast float %1505, %1382
  br label %1560

; <label>:1507                                    ; preds = %1395
  %1508 = and i32 %1398, 134217728
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1544, label %1510

; <label>:1510                                    ; preds = %1507
  %1511 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1512 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %1513 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %1514 = fadd fast float %1511, -5.000000e-01
  %1515 = fadd fast float %1512, -5.000000e-01
  %1516 = fadd fast float %1513, -5.000000e-01
  %1517 = fmul fast float %1514, %1396
  %1518 = fmul fast float %1515, %1396
  %1519 = fmul fast float %1516, %1396
  %1520 = fadd fast float %1517, 5.000000e-01
  %1521 = fadd fast float %1518, 5.000000e-01
  %1522 = fadd fast float %1519, 5.000000e-01
  %1523 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1524 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1525 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1526 = fmul fast float %1520, 2.000000e+00
  %1527 = fsub fast float 1.000000e+00, %1526
  %1528 = fmul fast float %1527, %1523
  %1529 = fadd fast float %1528, %1526
  %1530 = fmul fast float %1529, %1523
  %1531 = fmul fast float %1521, 2.000000e+00
  %1532 = fsub fast float 1.000000e+00, %1531
  %1533 = fmul fast float %1532, %1524
  %1534 = fadd fast float %1533, %1531
  %1535 = fmul fast float %1534, %1524
  %1536 = fmul fast float %1522, 2.000000e+00
  %1537 = fsub fast float 1.000000e+00, %1536
  %1538 = fmul fast float %1537, %1525
  %1539 = fadd fast float %1538, %1536
  %1540 = fmul fast float %1539, %1525
  %1541 = fmul fast float %1530, %1530
  %1542 = fmul fast float %1535, %1535
  %1543 = fmul fast float %1540, %1540
  br label %1560

; <label>:1544                                    ; preds = %1507
  %1545 = fmul fast float %339, %339
  %1546 = fmul fast float %343, %343
  %1547 = fmul fast float %347, %347
  %1548 = fadd fast float %1545, -1.000000e+00
  %1549 = fadd fast float %1546, -1.000000e+00
  %1550 = fadd fast float %1547, -1.000000e+00
  %1551 = fmul fast float %1396, %1548
  %1552 = fmul fast float %1396, %1549
  %1553 = fmul fast float %1396, %1550
  %1554 = fadd fast float %1551, 1.000000e+00
  %1555 = fadd fast float %1552, 1.000000e+00
  %1556 = fadd fast float %1553, 1.000000e+00
  %1557 = fmul fast float %1554, %1371
  %1558 = fmul fast float %1555, %1372
  %1559 = fmul fast float %1556, %1373
  br label %1560

; <label>:1560                                    ; preds = %1544, %1510, %1401, %1357
  %1561 = phi float [ %1506, %1401 ], [ %1382, %1510 ], [ %1382, %1544 ], [ 0x3FA23C0BE0000000, %1357 ]
  %1562 = phi float [ %1498, %1401 ], [ %1541, %1510 ], [ %1557, %1544 ], [ 1.000000e+00, %1357 ]
  %1563 = phi float [ %1499, %1401 ], [ %1542, %1510 ], [ %1558, %1544 ], [ 1.000000e+00, %1357 ]
  %1564 = phi float [ %1500, %1401 ], [ %1543, %1510 ], [ %1559, %1544 ], [ 1.000000e+00, %1357 ]
  %1565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.i32 %1565, 1
  %1567 = and i32 %1566, 1
  %1568 = icmp ne i32 %1567, 0
  %1569 = add i32 %57, 372
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 32
  %1573 = icmp ne i32 %1572, 0
  %1574 = and i1 %1568, %1573
  %1575 = select i1 %1574, float 1.000000e+00, float %1562
  %1576 = select i1 %1574, float 0x3FD3333340000000, float %1563
  %1577 = select i1 %1574, float 0x3FD3333340000000, float %1564
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 32
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1654, label %1582

; <label>:1582                                    ; preds = %1560
  %1583 = add i32 %57, 108
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = add i32 %57, 412
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %1588, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1590, %dx.types.Handle %109, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = extractvalue %dx.types.ResRet.f32 %1591, 3
  %1596 = and i32 %1585, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = lshr i32 %1585, 8
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = lshr i32 %1585, 16
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101000000000
  %1605 = fmul fast float %1592, %1597
  %1606 = fadd fast float %1605, %1600
  %1607 = fmul fast float %1606, 0x3F70101000000000
  %1608 = fadd fast float %1593, -5.000000e-01
  %1609 = fadd fast float %1595, -5.000000e-01
  %1610 = fmul fast float %1608, %1604
  %1611 = fmul fast float %1609, %1604
  %1612 = fadd fast float %1610, 5.000000e-01
  %1613 = fadd fast float %1611, 5.000000e-01
  %1614 = fmul fast float %1612, 2.000000e+00
  %1615 = fadd fast float %1614, -1.000000e+00
  %1616 = fmul fast float %1613, 2.000000e+00
  %1617 = fadd fast float %1616, -1.000000e+00
  %1618 = fadd fast float %1615, %1617
  %1619 = fmul fast float %1618, 5.000000e-01
  %1620 = fsub fast float %1615, %1617
  %1621 = fmul fast float %1620, 5.000000e-01
  %1622 = call float @dx.op.unary.f32(i32 6, float %1619)  ; FAbs(value)
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = call float @dx.op.unary.f32(i32 6, float %1621)  ; FAbs(value)
  %1625 = fsub fast float %1623, %1624
  %1626 = call float @dx.op.dot3.f32(i32 55, float %1619, float %1621, float %1625, float %1619, float %1621, float %1625)  ; Dot3(ax,ay,az,bx,by,bz)
  %1627 = call float @dx.op.unary.f32(i32 25, float %1626)  ; Rsqrt(value)
  %1628 = fmul fast float %1619, %1627
  %1629 = fmul fast float %1621, %1627
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 67108864
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1650, label %1634

; <label>:1634                                    ; preds = %1582
  %1635 = add i32 %57, 296
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 65535
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 65535
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = lshr i32 %1637, 16
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = fsub fast float %1607, %1645
  %1647 = fmul fast float %1646, %1639
  %1648 = fadd fast float %1647, %1643
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  br label %1650

; <label>:1650                                    ; preds = %1634, %1582
  %1651 = phi float [ %1649, %1634 ], [ %1607, %1582 ]
  %1652 = call float @dx.op.dot2.f32(i32 54, float %1628, float %1629, float %1186, float %1187)  ; Dot2(ax,ay,bx,by)
  %1653 = call float @dx.op.dot2.f32(i32 54, float %1628, float %1629, float %1188, float %1189)  ; Dot2(ax,ay,bx,by)
  br label %1654

; <label>:1654                                    ; preds = %1650, %1560
  %1655 = phi float [ %1651, %1650 ], [ 0x3FD6666660000000, %1560 ]
  %1656 = phi float [ %1652, %1650 ], [ 0.000000e+00, %1560 ]
  %1657 = phi float [ %1653, %1650 ], [ 0.000000e+00, %1560 ]
  %1658 = phi float [ %1594, %1650 ], [ 1.000000e+00, %1560 ]
  %1659 = add i32 %57, 176
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = lshr i32 %1661, 22
  %1663 = shl nuw nsw i32 %1662, 5
  %1664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1663)  ; LegacyF16ToF32(value)
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 64
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1702, label %1669

; <label>:1669                                    ; preds = %1654
  %1670 = add i32 %57, 428
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %1672, 0
  %1674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = and i32 %1676, 131072
  %1678 = icmp eq i32 %1677, 0
  %1679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1674, %dx.types.Handle %109, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = fmul fast float %1680, %327
  %1684 = fmul fast float %1681, %330
  %1685 = fmul fast float %1682, %333
  br i1 %1678, label %1692, label %1686

; <label>:1686                                    ; preds = %1669
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 0
  %1689 = fmul fast float %1688, %1683
  %1690 = fmul fast float %1688, %1684
  %1691 = fmul fast float %1688, %1685
  br label %1692

; <label>:1692                                    ; preds = %1686, %1669
  %1693 = phi float [ %1689, %1686 ], [ %1683, %1669 ]
  %1694 = phi float [ %1690, %1686 ], [ %1684, %1669 ]
  %1695 = phi float [ %1691, %1686 ], [ %1685, %1669 ]
  %1696 = fmul fast float %1693, %1664
  %1697 = select i1 %268, float %1696, float %1693
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1694, float %1695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = select i1 %268, float 0.000000e+00, float %1693
  %1700 = select i1 %268, float %1698, float %1694
  %1701 = select i1 %268, float 0.000000e+00, float %1695
  br label %1702

; <label>:1702                                    ; preds = %1692, %1654
  %1703 = phi float [ %1699, %1692 ], [ 0.000000e+00, %1654 ]
  %1704 = phi float [ %1700, %1692 ], [ 0.000000e+00, %1654 ]
  %1705 = phi float [ %1701, %1692 ], [ 0.000000e+00, %1654 ]
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 1024
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1740, label %1710

; <label>:1710                                    ; preds = %1702
  %1711 = add i32 %57, 168
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 255
  %1715 = uitofp i32 %1714 to float
  %1716 = fmul fast float %1715, 0x3F70101020000000
  %1717 = lshr i32 %1713, 8
  %1718 = and i32 %1717, 255
  %1719 = uitofp i32 %1718 to float
  %1720 = fmul fast float %1719, 0x3F70101020000000
  %1721 = lshr i32 %1713, 16
  %1722 = and i32 %1721, 255
  %1723 = uitofp i32 %1722 to float
  %1724 = fmul fast float %1723, 0x3F70101020000000
  %1725 = fmul fast float %1716, %1716
  %1726 = fmul fast float %1720, %1720
  %1727 = fmul fast float %1724, %1724
  %1728 = add i32 %57, 496
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = add i32 %1730, 0
  %1732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1732, %dx.types.Handle %110, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.ResRet.f32 %1733, 1
  %1736 = extractvalue %dx.types.ResRet.f32 %1733, 2
  %1737 = fmul fast float %1725, %1734
  %1738 = fmul fast float %1726, %1735
  %1739 = fmul fast float %1727, %1736
  br label %1740

; <label>:1740                                    ; preds = %1710, %1702
  %1741 = phi float [ %1737, %1710 ], [ 0.000000e+00, %1702 ]
  %1742 = phi float [ %1738, %1710 ], [ 0.000000e+00, %1702 ]
  %1743 = phi float [ %1739, %1710 ], [ 0.000000e+00, %1702 ]
  %1744 = fcmp fast ogt float %1741, 0.000000e+00
  %1745 = fcmp fast ogt float %1742, 0.000000e+00
  %1746 = fcmp fast ogt float %1743, 0.000000e+00
  %1747 = call float @dx.op.unary.f32(i32 23, float %1741)  ; Log(value)
  %1748 = call float @dx.op.unary.f32(i32 23, float %1742)  ; Log(value)
  %1749 = call float @dx.op.unary.f32(i32 23, float %1743)  ; Log(value)
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = lshr i32 %1751, 7
  %1753 = and i32 %1752, 32752
  %1754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1753)  ; LegacyF16ToF32(value)
  %1755 = fmul fast float %1747, 0xBFE62E4300000000
  %1756 = fmul fast float %1755, %1754
  %1757 = fmul fast float %1748, 0xBFE62E4300000000
  %1758 = fmul fast float %1757, %1754
  %1759 = fmul fast float %1749, 0xBFE62E4300000000
  %1760 = fmul fast float %1759, %1754
  %1761 = select i1 %1744, float %1756, float 1.270000e+02
  %1762 = select i1 %1745, float %1758, float 1.270000e+02
  %1763 = select i1 %1746, float %1760, float 1.270000e+02
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 26624
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1804, label %1768

; <label>:1768                                    ; preds = %1740
  %1769 = add i32 %57, 512
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = add i32 %1771, 0
  %1773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1773, %dx.types.Handle %110, float %1282, float %1283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = and i32 %1777, 1048576
  %1779 = icmp ne i32 %1778, 0
  %1780 = and i32 %1777, 2048
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1791, label %1782

; <label>:1782                                    ; preds = %1768
  %1783 = extractvalue %dx.types.ResRet.f32 %1774, 3
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = shl i32 %1785, 4
  %1787 = and i32 %1786, 32752
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = fmul fast float %1788, %1783
  %1790 = call float @dx.op.binary.f32(i32 35, float %1789, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1791

; <label>:1791                                    ; preds = %1782, %1768
  %1792 = phi float [ %1790, %1782 ], [ 0x3F70101020000000, %1768 ]
  %1793 = and i32 %1777, 16384
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1804, label %1795

; <label>:1795                                    ; preds = %1791
  %1796 = add i32 %57, 112
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = lshr i32 %1798, 24
  %1800 = uitofp i32 %1799 to float
  %1801 = fmul fast float %1775, 0x3F70101020000000
  %1802 = select i1 %1779, float 0x3F70101020000000, float %1801
  %1803 = fmul fast float %1802, %1800
  br label %1804

; <label>:1804                                    ; preds = %1795, %1791, %1740
  %1805 = phi float [ %1792, %1795 ], [ %1792, %1791 ], [ 0x3F70101020000000, %1740 ]
  %1806 = phi float [ %1803, %1795 ], [ 0.000000e+00, %1791 ], [ 0.000000e+00, %1740 ]
  %1807 = add i32 %57, 112
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 255
  %1811 = uitofp i32 %1810 to float
  %1812 = lshr i32 %1809, 8
  %1813 = and i32 %1812, 255
  %1814 = uitofp i32 %1813 to float
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1576, float %1577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = fmul fast float %1814, %1815
  %1817 = fadd fast float %1816, %1811
  %1818 = fmul fast float %1817, 0x3F70101020000000
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  br i1 %1174, label %1820, label %1855

; <label>:1820                                    ; preds = %1804
  %1821 = fmul fast float %1805, 2.000000e+00
  %1822 = fcmp fast olt float %1761, 1.270000e+02
  %1823 = fcmp fast olt float %1762, 1.270000e+02
  %1824 = fcmp fast olt float %1763, 1.270000e+02
  %1825 = fmul fast float %1761, 0xBFF7154760000000
  %1826 = fmul fast float %1825, %1821
  %1827 = fmul fast float %1762, 0xBFF7154760000000
  %1828 = fmul fast float %1827, %1821
  %1829 = fmul fast float %1763, 0xBFF7154760000000
  %1830 = fmul fast float %1829, %1821
  %1831 = call float @dx.op.unary.f32(i32 21, float %1826)  ; Exp(value)
  %1832 = call float @dx.op.unary.f32(i32 21, float %1828)  ; Exp(value)
  %1833 = call float @dx.op.unary.f32(i32 21, float %1830)  ; Exp(value)
  %1834 = call float @dx.op.unary.f32(i32 7, float %1831)  ; Saturate(value)
  %1835 = call float @dx.op.unary.f32(i32 7, float %1832)  ; Saturate(value)
  %1836 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1837 = fadd fast float %1834, -1.000000e+00
  %1838 = select i1 %1822, float %1837, float -1.000000e+00
  %1839 = fadd fast float %1835, -1.000000e+00
  %1840 = select i1 %1823, float %1839, float -1.000000e+00
  %1841 = fadd fast float %1836, -1.000000e+00
  %1842 = select i1 %1824, float %1841, float -1.000000e+00
  %1843 = fmul fast float %1838, %1355
  %1844 = fmul fast float %1840, %1355
  %1845 = fmul fast float %1842, %1355
  %1846 = fadd fast float %1843, 1.000000e+00
  %1847 = fadd fast float %1844, 1.000000e+00
  %1848 = fadd fast float %1845, 1.000000e+00
  %1849 = fmul fast float %1846, %1160
  %1850 = fmul fast float %1847, %1161
  %1851 = fmul fast float %1848, %1162
  %1852 = fmul fast float %1846, %1163
  %1853 = fmul fast float %1847, %1164
  %1854 = fmul fast float %1848, %1165
  br label %1855

; <label>:1855                                    ; preds = %1820, %1804
  %1856 = phi float [ %1849, %1820 ], [ %1160, %1804 ]
  %1857 = phi float [ %1850, %1820 ], [ %1161, %1804 ]
  %1858 = phi float [ %1851, %1820 ], [ %1162, %1804 ]
  %1859 = phi float [ %1852, %1820 ], [ %1163, %1804 ]
  %1860 = phi float [ %1853, %1820 ], [ %1164, %1804 ]
  %1861 = phi float [ %1854, %1820 ], [ %1165, %1804 ]
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 3
  %1865 = icmp eq i32 %1864, 3
  br i1 %1865, label %1944, label %1866

; <label>:1866                                    ; preds = %1855
  %1867 = and i32 %1863, 16
  %1868 = icmp ne i32 %1867, 0
  %1869 = select i1 %1868, float %1355, float 0.000000e+00
  %1870 = icmp eq i32 %1864, 0
  br i1 %1870, label %1871, label %1899

; <label>:1871                                    ; preds = %1866
  %1872 = and i32 %1863, 64
  %1873 = icmp ne i32 %1872, 0
  %1874 = select i1 %1873, float %1355, float 0.000000e+00
  %1875 = fsub fast float %1575, %1856
  %1876 = fsub fast float %1576, %1857
  %1877 = fsub fast float %1577, %1858
  %1878 = fmul fast float %1869, %1875
  %1879 = fmul fast float %1869, %1876
  %1880 = fmul fast float %1869, %1877
  %1881 = fadd fast float %1878, %1856
  %1882 = fadd fast float %1879, %1857
  %1883 = fadd fast float %1880, %1858
  %1884 = fsub fast float %1561, %1166
  %1885 = fmul fast float %1869, %1884
  %1886 = fadd fast float %1885, %1166
  %1887 = fsub fast float %1703, %1859
  %1888 = fsub fast float %1704, %1860
  %1889 = fsub fast float %1705, %1861
  %1890 = fmul fast float %1874, %1887
  %1891 = fmul fast float %1874, %1888
  %1892 = fmul fast float %1874, %1889
  %1893 = fadd fast float %1890, %1859
  %1894 = fadd fast float %1891, %1860
  %1895 = fadd fast float %1892, %1861
  %1896 = fsub fast float %1819, %1172
  %1897 = fmul fast float %1869, %1896
  %1898 = fadd fast float %1897, %1172
  br label %1944

; <label>:1899                                    ; preds = %1866
  %1900 = icmp eq i32 %1864, 1
  br i1 %1900, label %1901, label %1914

; <label>:1901                                    ; preds = %1899
  %1902 = fadd fast float %1575, -1.000000e+00
  %1903 = fadd fast float %1576, -1.000000e+00
  %1904 = fadd fast float %1577, -1.000000e+00
  %1905 = fmul fast float %1869, %1902
  %1906 = fmul fast float %1869, %1903
  %1907 = fmul fast float %1869, %1904
  %1908 = fadd fast float %1905, 1.000000e+00
  %1909 = fadd fast float %1906, 1.000000e+00
  %1910 = fadd fast float %1907, 1.000000e+00
  %1911 = fmul fast float %1908, %1856
  %1912 = fmul fast float %1909, %1857
  %1913 = fmul fast float %1910, %1858
  br label %1944

; <label>:1914                                    ; preds = %1899
  %1915 = icmp eq i32 %1864, 2
  br i1 %1915, label %1916, label %1944

; <label>:1916                                    ; preds = %1914
  %1917 = call float @dx.op.unary.f32(i32 24, float %1575)  ; Sqrt(value)
  %1918 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1919 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1920 = fadd fast float %1917, -5.000000e-01
  %1921 = fadd fast float %1918, -5.000000e-01
  %1922 = fadd fast float %1919, -5.000000e-01
  %1923 = fmul fast float %1920, %1869
  %1924 = fmul fast float %1921, %1869
  %1925 = fmul fast float %1922, %1869
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fmul fast float %1926, 2.000000e+00
  %1930 = fsub fast float 1.000000e+00, %1929
  %1931 = fmul fast float %1930, %1856
  %1932 = fadd fast float %1931, %1929
  %1933 = fmul fast float %1932, %1856
  %1934 = fmul fast float %1927, 2.000000e+00
  %1935 = fsub fast float 1.000000e+00, %1934
  %1936 = fmul fast float %1935, %1857
  %1937 = fadd fast float %1936, %1934
  %1938 = fmul fast float %1937, %1857
  %1939 = fmul fast float %1928, 2.000000e+00
  %1940 = fsub fast float 1.000000e+00, %1939
  %1941 = fmul fast float %1940, %1858
  %1942 = fadd fast float %1941, %1939
  %1943 = fmul fast float %1942, %1858
  br label %1944

; <label>:1944                                    ; preds = %1916, %1914, %1901, %1871, %1855
  %1945 = phi float [ %1856, %1855 ], [ %1933, %1916 ], [ %1856, %1914 ], [ %1911, %1901 ], [ %1881, %1871 ]
  %1946 = phi float [ %1857, %1855 ], [ %1938, %1916 ], [ %1857, %1914 ], [ %1912, %1901 ], [ %1882, %1871 ]
  %1947 = phi float [ %1858, %1855 ], [ %1943, %1916 ], [ %1858, %1914 ], [ %1913, %1901 ], [ %1883, %1871 ]
  %1948 = phi float [ %1859, %1855 ], [ %1859, %1916 ], [ %1859, %1914 ], [ %1859, %1901 ], [ %1893, %1871 ]
  %1949 = phi float [ %1860, %1855 ], [ %1860, %1916 ], [ %1860, %1914 ], [ %1860, %1901 ], [ %1894, %1871 ]
  %1950 = phi float [ %1861, %1855 ], [ %1861, %1916 ], [ %1861, %1914 ], [ %1861, %1901 ], [ %1895, %1871 ]
  %1951 = phi float [ %1166, %1855 ], [ %1166, %1916 ], [ %1166, %1914 ], [ %1166, %1901 ], [ %1886, %1871 ]
  %1952 = phi float [ %1172, %1855 ], [ %1172, %1916 ], [ %1172, %1914 ], [ %1172, %1901 ], [ %1898, %1871 ]
  %1953 = and i32 %1863, 12
  %1954 = icmp eq i32 %1953, 12
  br i1 %1954, label %2071, label %1955

; <label>:1955                                    ; preds = %1944
  %1956 = and i32 %1863, 2097184
  %1957 = icmp eq i32 %1956, 2097184
  %1958 = select i1 %1957, float %1355, float 0.000000e+00
  %1959 = and i32 %1863, 4194336
  %1960 = icmp eq i32 %1959, 4194336
  %1961 = select i1 %1960, float %1355, float 0.000000e+00
  %1962 = and i32 %1863, 8388640
  %1963 = icmp eq i32 %1962, 8388640
  %1964 = select i1 %1963, float %1355, float 0.000000e+00
  %1965 = and i32 %1863, 1024
  %1966 = icmp ne i32 %1965, 0
  %1967 = select i1 %1966, float %1355, float 0.000000e+00
  %1968 = and i32 %1863, 2048
  %1969 = icmp ne i32 %1968, 0
  %1970 = select i1 %1969, float %1355, float 0.000000e+00
  %1971 = and i32 %1863, 16384
  %1972 = icmp ne i32 %1971, 0
  %1973 = select i1 %1972, float %1355, float 0.000000e+00
  %1974 = icmp eq i32 %1953, 0
  br i1 %1974, label %1975, label %2003

; <label>:1975                                    ; preds = %1955
  %1976 = fsub fast float %1656, %1155
  %1977 = fsub fast float %1657, %1156
  %1978 = fmul fast float %1958, %1976
  %1979 = fmul fast float %1958, %1977
  %1980 = fadd fast float %1978, %1155
  %1981 = fadd fast float %1979, %1156
  %1982 = fsub fast float %1658, %1169
  %1983 = fmul fast float %1961, %1982
  %1984 = fadd fast float %1983, %1169
  %1985 = fsub fast float %1655, %1168
  %1986 = fmul fast float %1964, %1985
  %1987 = fadd fast float %1986, %1168
  %1988 = fsub fast float %1761, %1157
  %1989 = fsub fast float %1762, %1158
  %1990 = fsub fast float %1763, %1159
  %1991 = fmul fast float %1967, %1988
  %1992 = fmul fast float %1967, %1989
  %1993 = fmul fast float %1967, %1990
  %1994 = fadd fast float %1991, %1157
  %1995 = fadd fast float %1992, %1158
  %1996 = fadd fast float %1993, %1159
  %1997 = fsub fast float %1805, %1170
  %1998 = fmul fast float %1970, %1997
  %1999 = fadd fast float %1998, %1170
  %2000 = fsub fast float %1806, %1171
  %2001 = fmul fast float %1973, %2000
  %2002 = fadd fast float %2001, %1171
  br label %2071

; <label>:2003                                    ; preds = %1955
  %2004 = icmp eq i32 %1953, 4
  br i1 %2004, label %2005, label %2047

; <label>:2005                                    ; preds = %2003
  %2006 = fmul fast float %1958, %1656
  %2007 = fmul fast float %1958, %1657
  %2008 = fadd fast float %2006, %1155
  %2009 = fadd fast float %2007, %1156
  %2010 = call float @dx.op.binary.f32(i32 36, float %1169, float %1658)  ; FMin(a,b)
  %2011 = fsub fast float %2010, %1169
  %2012 = fmul fast float %2011, %1961
  %2013 = fadd fast float %2012, %1169
  %2014 = fadd fast float %1655, %1168
  %2015 = fmul fast float %2014, 0x3FF337FAE0000000
  %2016 = fmul fast float %1168, %1168
  %2017 = fmul fast float %1655, %1655
  %2018 = fadd fast float %2017, %2016
  %2019 = fmul fast float %2018, 0x3FE5152B00000000
  %2020 = fmul fast float %1168, 0xBFCC1F85E0000000
  %2021 = fmul fast float %2020, %1655
  %2022 = fadd fast float %2021, 0xBFE1363700000000
  %2023 = fadd fast float %2022, %2015
  %2024 = fsub fast float %2023, %2019
  %2025 = fmul fast float %2014, 0x3FBA6F0D00000000
  %2026 = fmul fast float %2018, 0x3FD0432880000000
  %2027 = fmul fast float %1168, 0xBFEF110800000000
  %2028 = fmul fast float %2027, %1655
  %2029 = fadd fast float %2028, 1.000000e+00
  %2030 = fsub fast float %2029, %2025
  %2031 = fadd fast float %2030, %2026
  %2032 = fdiv fast float %2024, %2031
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fsub fast float %2033, %1168
  %2035 = fmul fast float %2034, %1964
  %2036 = fadd fast float %2035, %1168
  %2037 = fmul fast float %1967, %1761
  %2038 = fmul fast float %1967, %1762
  %2039 = fmul fast float %1967, %1763
  %2040 = fadd fast float %2037, %1157
  %2041 = fadd fast float %2038, %1158
  %2042 = fadd fast float %2039, %1159
  %2043 = fmul fast float %1970, %1805
  %2044 = fadd fast float %2043, %1170
  %2045 = fmul fast float %1973, %1806
  %2046 = fadd fast float %2045, %1171
  br label %2071

; <label>:2047                                    ; preds = %2003
  %2048 = icmp eq i32 %1953, 8
  br i1 %2048, label %2049, label %2071

; <label>:2049                                    ; preds = %2047
  %2050 = fmul fast float %1958, %1656
  %2051 = fmul fast float %1958, %1657
  %2052 = fadd fast float %2050, %1155
  %2053 = fadd fast float %2051, %1156
  %2054 = call float @dx.op.binary.f32(i32 36, float %1169, float %1658)  ; FMin(a,b)
  %2055 = fsub fast float %2054, %1169
  %2056 = fmul fast float %2055, %1961
  %2057 = fadd fast float %2056, %1169
  %2058 = fsub fast float %1655, %1168
  %2059 = fmul fast float %1964, %2058
  %2060 = fadd fast float %2059, %1168
  %2061 = fmul fast float %1967, %1761
  %2062 = fmul fast float %1967, %1762
  %2063 = fmul fast float %1967, %1763
  %2064 = fadd fast float %2061, %1157
  %2065 = fadd fast float %2062, %1158
  %2066 = fadd fast float %2063, %1159
  %2067 = fmul fast float %1970, %1805
  %2068 = fadd fast float %2067, %1170
  %2069 = fmul fast float %1973, %1806
  %2070 = fadd fast float %2069, %1171
  br label %2071

; <label>:2071                                    ; preds = %2049, %2047, %2005, %1975, %1944, %1354, %1173, %1154
  %2072 = phi float [ %1155, %1944 ], [ %1155, %1354 ], [ %1155, %1154 ], [ %2052, %2049 ], [ %1155, %2047 ], [ %2008, %2005 ], [ %1980, %1975 ], [ %1155, %1173 ]
  %2073 = phi float [ %1156, %1944 ], [ %1156, %1354 ], [ %1156, %1154 ], [ %2053, %2049 ], [ %1156, %2047 ], [ %2009, %2005 ], [ %1981, %1975 ], [ %1156, %1173 ]
  %2074 = phi float [ %1157, %1944 ], [ %1157, %1354 ], [ %1157, %1154 ], [ %2064, %2049 ], [ %1157, %2047 ], [ %2040, %2005 ], [ %1994, %1975 ], [ %1157, %1173 ]
  %2075 = phi float [ %1158, %1944 ], [ %1158, %1354 ], [ %1158, %1154 ], [ %2065, %2049 ], [ %1158, %2047 ], [ %2041, %2005 ], [ %1995, %1975 ], [ %1158, %1173 ]
  %2076 = phi float [ %1159, %1944 ], [ %1159, %1354 ], [ %1159, %1154 ], [ %2066, %2049 ], [ %1159, %2047 ], [ %2042, %2005 ], [ %1996, %1975 ], [ %1159, %1173 ]
  %2077 = phi float [ %1945, %1944 ], [ %1160, %1354 ], [ %1160, %1154 ], [ %1945, %2049 ], [ %1945, %2047 ], [ %1945, %2005 ], [ %1945, %1975 ], [ %1160, %1173 ]
  %2078 = phi float [ %1946, %1944 ], [ %1161, %1354 ], [ %1161, %1154 ], [ %1946, %2049 ], [ %1946, %2047 ], [ %1946, %2005 ], [ %1946, %1975 ], [ %1161, %1173 ]
  %2079 = phi float [ %1947, %1944 ], [ %1162, %1354 ], [ %1162, %1154 ], [ %1947, %2049 ], [ %1947, %2047 ], [ %1947, %2005 ], [ %1947, %1975 ], [ %1162, %1173 ]
  %2080 = phi float [ %1948, %1944 ], [ %1163, %1354 ], [ %1163, %1154 ], [ %1948, %2049 ], [ %1948, %2047 ], [ %1948, %2005 ], [ %1948, %1975 ], [ %1163, %1173 ]
  %2081 = phi float [ %1949, %1944 ], [ %1164, %1354 ], [ %1164, %1154 ], [ %1949, %2049 ], [ %1949, %2047 ], [ %1949, %2005 ], [ %1949, %1975 ], [ %1164, %1173 ]
  %2082 = phi float [ %1950, %1944 ], [ %1165, %1354 ], [ %1165, %1154 ], [ %1950, %2049 ], [ %1950, %2047 ], [ %1950, %2005 ], [ %1950, %1975 ], [ %1165, %1173 ]
  %2083 = phi float [ %1951, %1944 ], [ %1166, %1354 ], [ %1166, %1154 ], [ %1951, %2049 ], [ %1951, %2047 ], [ %1951, %2005 ], [ %1951, %1975 ], [ %1166, %1173 ]
  %2084 = phi float [ %1168, %1944 ], [ %1168, %1354 ], [ %1168, %1154 ], [ %2060, %2049 ], [ %1168, %2047 ], [ %2036, %2005 ], [ %1987, %1975 ], [ %1168, %1173 ]
  %2085 = phi float [ %1169, %1944 ], [ %1169, %1354 ], [ %1169, %1154 ], [ %2057, %2049 ], [ %1169, %2047 ], [ %2013, %2005 ], [ %1984, %1975 ], [ %1169, %1173 ]
  %2086 = phi float [ %1170, %1944 ], [ %1170, %1354 ], [ %1170, %1154 ], [ %2068, %2049 ], [ %1170, %2047 ], [ %2044, %2005 ], [ %1999, %1975 ], [ %1170, %1173 ]
  %2087 = phi float [ %1171, %1944 ], [ %1171, %1354 ], [ %1171, %1154 ], [ %2070, %2049 ], [ %1171, %2047 ], [ %2046, %2005 ], [ %2002, %1975 ], [ %1171, %1173 ]
  %2088 = phi float [ %1952, %1944 ], [ %1172, %1354 ], [ %1172, %1154 ], [ %1952, %2049 ], [ %1952, %2047 ], [ %1952, %2005 ], [ %1952, %1975 ], [ %1172, %1173 ]
  br i1 %454, label %2987, label %2089

; <label>:2089                                    ; preds = %2071
  %2090 = icmp ult i32 %510, 3
  %2091 = add i32 %57, 56
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = add i32 %57, 60
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = or i32 %2096, %2093
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2987, label %2099

; <label>:2099                                    ; preds = %2089
  %2100 = and i32 %2093, 262144
  %2101 = icmp ne i32 %2100, 0
  %2102 = select i1 %2101, float %63, float 1.000000e+00
  %2103 = select i1 %2101, float %64, float 0.000000e+00
  %2104 = select i1 %2101, float %65, float 0.000000e+00
  %2105 = select i1 %2101, float %66, float 1.000000e+00
  %2106 = select i1 %2101, float %67, float %95
  %2107 = select i1 %2101, float %68, float %96
  %2108 = add i32 %57, 316
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = lshr i32 %2110, 16
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = fmul fast float %2112, 0x3F50624DE0000000
  %2114 = add i32 %57, 120
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = lshr i32 %2116, 16
  %2118 = and i32 %2117, 255
  %2119 = lshr i32 %2116, 24
  %2120 = add i32 %57, 324
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2120, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = and i32 %2122, 65535
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = lshr i32 %2122, 16
  %2126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2125)  ; LegacyF16ToF32(value)
  %2127 = add i32 %57, 64
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = lshr i32 %2129, 22
  %2131 = shl nuw nsw i32 %2130, 5
  %2132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2131)  ; LegacyF16ToF32(value)
  %2133 = shl i32 %2129, 4
  %2134 = and i32 %2133, 32752
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = lshr i32 %2129, 7
  %2137 = and i32 %2136, 32752
  %2138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2137)  ; LegacyF16ToF32(value)
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 3
  %2141 = fmul fast float %2140, 1.000000e+03
  %2142 = fmul fast float %404, %2141
  %2143 = call float @dx.op.unary.f32(i32 22, float %2142)  ; Frc(value)
  %2144 = fadd fast float %2143, %394
  %2145 = fmul fast float %405, %2141
  %2146 = call float @dx.op.unary.f32(i32 22, float %2145)  ; Frc(value)
  %2147 = fadd fast float %2146, %396
  %2148 = fmul fast float %2113, %2141
  %2149 = call float @dx.op.unary.f32(i32 22, float %2148)  ; Frc(value)
  %2150 = fmul fast float %2149, 0x401921FB60000000
  %2151 = fadd fast float %2150, %2132
  %2152 = call float @dx.op.unary.f32(i32 13, float %2151)  ; Sin(value)
  %2153 = call float @dx.op.unary.f32(i32 12, float %2151)  ; Cos(value)
  %2154 = fsub fast float -0.000000e+00, %2152
  %2155 = fadd fast float %2106, -5.000000e-01
  %2156 = fadd fast float %2107, -5.000000e-01
  %2157 = fmul fast float %2124, %2155
  %2158 = fmul fast float %2126, %2156
  %2159 = fadd fast float %2157, 5.000000e-01
  %2160 = fadd fast float %2158, 5.000000e-01
  %2161 = fmul fast float %2135, %2159
  %2162 = fmul fast float %2138, %2160
  %2163 = fmul fast float %2153, %2161
  %2164 = call float @dx.op.tertiary.f32(i32 46, float %2154, float %2162, float %2163)  ; FMad(a,b,c)
  %2165 = fmul fast float %2152, %2161
  %2166 = call float @dx.op.tertiary.f32(i32 46, float %2153, float %2162, float %2165)  ; FMad(a,b,c)
  %2167 = fadd fast float %2144, %2164
  %2168 = fadd fast float %2147, %2166
  %2169 = icmp ugt i32 %2118, 1
  %2170 = icmp ugt i32 %2116, 33554431
  %2171 = or i1 %2170, %2169
  br i1 %2171, label %2172, label %2197

; <label>:2172                                    ; preds = %2099
  %2173 = add i32 %57, 260
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = lshr i32 %2175, 16
  %2177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2176)  ; LegacyF16ToF32(value)
  %2178 = fmul fast float %2140, %2177
  %2179 = call float @dx.op.unary.f32(i32 22, float %2178)  ; Frc(value)
  %2180 = mul nuw nsw i32 %2118, %2119
  %2181 = uitofp i32 %2180 to float
  %2182 = fmul fast float %2179, %2181
  %2183 = call float @dx.op.unary.f32(i32 27, float %2182)  ; Round_ni(value)
  %2184 = fptoui float %2183 to i32
  %2185 = urem i32 %2184, %2118
  %2186 = udiv i32 %2184, %2119
  %2187 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2188 = call float @dx.op.unary.f32(i32 22, float %2168)  ; Frc(value)
  %2189 = uitofp i32 %2185 to float
  %2190 = uitofp i32 %2186 to float
  %2191 = fadd fast float %2187, %2189
  %2192 = fadd fast float %2188, %2190
  %2193 = uitofp i32 %2118 to float
  %2194 = uitofp i32 %2119 to float
  %2195 = fdiv fast float %2191, %2193
  %2196 = fdiv fast float %2192, %2194
  br label %2197

; <label>:2197                                    ; preds = %2172, %2099
  %2198 = phi float [ %2195, %2172 ], [ %2167, %2099 ]
  %2199 = phi float [ %2196, %2172 ], [ %2168, %2099 ]
  %2200 = and i32 %2093, 256
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2248, label %2202

; <label>:2202                                    ; preds = %2197
  %2203 = add i32 %57, 464
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = add i32 %2205, 0
  %2207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2207, %dx.types.Handle %110, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = add i32 %57, 132
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = shl i32 %2212, 4
  %2214 = and i32 %2213, 32752
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = lshr i32 %2212, 7
  %2217 = and i32 %2216, 32752
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = fsub fast float 1.000000e+00, %506
  %2220 = call float @dx.op.binary.f32(i32 35, float %2219, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2221 = bitcast float %506 to i32
  %2222 = sitofp i32 %2221 to float
  %2223 = fadd fast float %2222, 0xC1CFBF8940000000
  %2224 = fmul fast float %2218, %2223
  %2225 = fadd fast float %2224, 0x41CFBF8940000000
  %2226 = fptosi float %2225 to i32
  %2227 = bitcast i32 %2226 to float
  %2228 = bitcast float %2220 to i32
  %2229 = sitofp i32 %2228 to float
  %2230 = fadd fast float %2229, 0xC1CFBF8940000000
  %2231 = fmul fast float %2230, %2218
  %2232 = fadd fast float %2231, 0x41CFBF8940000000
  %2233 = fptosi float %2232 to i32
  %2234 = bitcast i32 %2233 to float
  %2235 = fmul fast float %2227, %2215
  %2236 = fmul fast float %2234, %2215
  %2237 = fsub fast float %2220, %2235
  %2238 = fadd fast float %2236, %2220
  %2239 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2240 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2241 = fsub fast float %2209, %2239
  %2242 = fsub fast float %2240, %2239
  %2243 = bitcast float %2242 to i32
  %2244 = sub nsw i32 2129859010, %2243
  %2245 = bitcast i32 %2244 to float
  %2246 = fmul fast float %2245, %2241
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  br label %2248

; <label>:2248                                    ; preds = %2202, %2197
  %2249 = phi float [ %2247, %2202 ], [ %506, %2197 ]
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 128
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2270, label %2254

; <label>:2254                                    ; preds = %2248
  %2255 = add i32 %57, 448
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %2257, 0
  %2259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2259, %dx.types.Handle %110, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 524288
  %2265 = icmp ne i32 %2264, 0
  %2266 = fcmp fast ogt float %2261, 0x3FE0101020000000
  %2267 = select i1 %2266, float 1.000000e+00, float 0.000000e+00
  %2268 = select i1 %2265, float %2267, float %2261
  %2269 = fmul fast float %2268, %2249
  br label %2270

; <label>:2270                                    ; preds = %2254, %2248
  %2271 = phi float [ %2269, %2254 ], [ %2249, %2248 ]
  %2272 = fcmp fast ult float %2271, 0x3F70101020000000
  br i1 %2272, label %2987, label %2273

; <label>:2273                                    ; preds = %2270
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 16
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2476, label %2278

; <label>:2278                                    ; preds = %2273
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = add i32 %57, 400
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = add i32 %2283, 0
  %2285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2285, %dx.types.Handle %109, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.ResRet.f32 %2286, 2
  %2290 = extractvalue %dx.types.ResRet.f32 %2286, 3
  %2291 = and i32 %2280, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = lshr i32 %2280, 8
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2290, %2292
  %2297 = fadd fast float %2296, %2295
  %2298 = fmul fast float %2297, 0x3F70101000000000
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 512
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2311, label %2303

; <label>:2303                                    ; preds = %2278
  %2304 = add i32 %57, 484
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %2306, 0
  %2308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2308, %dx.types.Handle %110, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  br label %2311

; <label>:2311                                    ; preds = %2303, %2278
  %2312 = phi float [ %2310, %2303 ], [ 1.000000e+00, %2278 ]
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 33554432
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2423, label %2317

; <label>:2317                                    ; preds = %2311
  %2318 = add i32 %57, 256
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 65535
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = lshr i32 %2320, 16
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = add i32 %57, 260
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 65535
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = lshr i32 %2331, 24
  %2333 = uitofp i32 %2332 to float
  %2334 = fmul fast float %2333, 0x3F70101020000000
  %2335 = and i32 %2331, 255
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = lshr i32 %2331, 8
  %2339 = and i32 %2338, 255
  %2340 = uitofp i32 %2339 to float
  %2341 = fmul fast float %2340, 0x3F70101020000000
  %2342 = lshr i32 %2331, 16
  %2343 = and i32 %2342, 255
  %2344 = uitofp i32 %2343 to float
  %2345 = fmul fast float %2344, 0x3F70101020000000
  %2346 = add i32 %57, 252
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 24
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = and i32 %2348, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = lshr i32 %2348, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = lshr i32 %2348, 16
  %2360 = and i32 %2359, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = bitcast float %2287 to i32
  %2364 = ashr i32 %2363, 1
  %2365 = sub nsw i32 1597463174, %2364
  %2366 = bitcast i32 %2365 to float
  %2367 = fmul fast float %2287, 5.000000e-01
  %2368 = fmul fast float %2366, %2366
  %2369 = fmul fast float %2368, %2367
  %2370 = fsub fast float 1.500000e+00, %2369
  %2371 = fmul fast float %2366, %2287
  %2372 = fmul fast float %2371, %2370
  %2373 = bitcast float %2288 to i32
  %2374 = ashr i32 %2373, 1
  %2375 = sub nsw i32 1597463174, %2374
  %2376 = bitcast i32 %2375 to float
  %2377 = fmul fast float %2288, 5.000000e-01
  %2378 = fmul fast float %2376, %2376
  %2379 = fmul fast float %2378, %2377
  %2380 = fsub fast float 1.500000e+00, %2379
  %2381 = fmul fast float %2376, %2288
  %2382 = fmul fast float %2381, %2380
  %2383 = bitcast float %2289 to i32
  %2384 = ashr i32 %2383, 1
  %2385 = sub nsw i32 1597463174, %2384
  %2386 = bitcast i32 %2385 to float
  %2387 = fmul fast float %2289, 5.000000e-01
  %2388 = fmul fast float %2386, %2386
  %2389 = fmul fast float %2388, %2387
  %2390 = fsub fast float 1.500000e+00, %2389
  %2391 = fmul fast float %2386, %2289
  %2392 = fmul fast float %2391, %2390
  %2393 = fsub fast float %2372, %2354
  %2394 = fsub fast float %2382, %2358
  %2395 = fsub fast float %2392, %2362
  %2396 = fmul fast float %2393, %2322
  %2397 = fmul fast float %2394, %2324
  %2398 = fmul fast float %2395, %2329
  %2399 = fadd fast float %2396, %2337
  %2400 = fadd fast float %2397, %2341
  %2401 = fadd fast float %2398, %2345
  %2402 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2403 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2404 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2405 = fmul fast float %2402, %2402
  %2406 = fmul fast float %2403, %2403
  %2407 = fmul fast float %2404, %2404
  %2408 = fsub fast float %2405, %2287
  %2409 = fsub fast float %2406, %2288
  %2410 = fsub fast float %2407, %2289
  %2411 = fmul fast float %2408, %2312
  %2412 = fmul fast float %2409, %2312
  %2413 = fmul fast float %2410, %2312
  %2414 = fadd fast float %2411, %2287
  %2415 = fadd fast float %2412, %2288
  %2416 = fadd fast float %2413, %2289
  %2417 = fadd fast float %2334, %2298
  %2418 = fsub fast float %2417, %2351
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2420 = fsub fast float %2419, %2298
  %2421 = fmul fast float %2420, %2312
  %2422 = fadd fast float %2421, %2298
  br label %2476

; <label>:2423                                    ; preds = %2311
  %2424 = and i32 %2314, 134217728
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2460, label %2426

; <label>:2426                                    ; preds = %2423
  %2427 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2428 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %2429 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %2430 = fadd fast float %2427, -5.000000e-01
  %2431 = fadd fast float %2428, -5.000000e-01
  %2432 = fadd fast float %2429, -5.000000e-01
  %2433 = fmul fast float %2430, %2312
  %2434 = fmul fast float %2431, %2312
  %2435 = fmul fast float %2432, %2312
  %2436 = fadd fast float %2433, 5.000000e-01
  %2437 = fadd fast float %2434, 5.000000e-01
  %2438 = fadd fast float %2435, 5.000000e-01
  %2439 = call float @dx.op.unary.f32(i32 24, float %2287)  ; Sqrt(value)
  %2440 = call float @dx.op.unary.f32(i32 24, float %2288)  ; Sqrt(value)
  %2441 = call float @dx.op.unary.f32(i32 24, float %2289)  ; Sqrt(value)
  %2442 = fmul fast float %2436, 2.000000e+00
  %2443 = fsub fast float 1.000000e+00, %2442
  %2444 = fmul fast float %2443, %2439
  %2445 = fadd fast float %2444, %2442
  %2446 = fmul fast float %2445, %2439
  %2447 = fmul fast float %2437, 2.000000e+00
  %2448 = fsub fast float 1.000000e+00, %2447
  %2449 = fmul fast float %2448, %2440
  %2450 = fadd fast float %2449, %2447
  %2451 = fmul fast float %2450, %2440
  %2452 = fmul fast float %2438, 2.000000e+00
  %2453 = fsub fast float 1.000000e+00, %2452
  %2454 = fmul fast float %2453, %2441
  %2455 = fadd fast float %2454, %2452
  %2456 = fmul fast float %2455, %2441
  %2457 = fmul fast float %2446, %2446
  %2458 = fmul fast float %2451, %2451
  %2459 = fmul fast float %2456, %2456
  br label %2476

; <label>:2460                                    ; preds = %2423
  %2461 = fmul fast float %381, %381
  %2462 = fmul fast float %385, %385
  %2463 = fmul fast float %389, %389
  %2464 = fadd fast float %2461, -1.000000e+00
  %2465 = fadd fast float %2462, -1.000000e+00
  %2466 = fadd fast float %2463, -1.000000e+00
  %2467 = fmul fast float %2312, %2464
  %2468 = fmul fast float %2312, %2465
  %2469 = fmul fast float %2312, %2466
  %2470 = fadd fast float %2467, 1.000000e+00
  %2471 = fadd fast float %2468, 1.000000e+00
  %2472 = fadd fast float %2469, 1.000000e+00
  %2473 = fmul fast float %2470, %2287
  %2474 = fmul fast float %2471, %2288
  %2475 = fmul fast float %2472, %2289
  br label %2476

; <label>:2476                                    ; preds = %2460, %2426, %2317, %2273
  %2477 = phi float [ %2422, %2317 ], [ %2298, %2426 ], [ %2298, %2460 ], [ 0x3FA23C0BE0000000, %2273 ]
  %2478 = phi float [ %2414, %2317 ], [ %2457, %2426 ], [ %2473, %2460 ], [ 1.000000e+00, %2273 ]
  %2479 = phi float [ %2415, %2317 ], [ %2458, %2426 ], [ %2474, %2460 ], [ 1.000000e+00, %2273 ]
  %2480 = phi float [ %2416, %2317 ], [ %2459, %2426 ], [ %2475, %2460 ], [ 1.000000e+00, %2273 ]
  %2481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = extractvalue %dx.types.CBufRet.i32 %2481, 1
  %2483 = and i32 %2482, 1
  %2484 = icmp ne i32 %2483, 0
  %2485 = add i32 %57, 372
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 32
  %2489 = icmp ne i32 %2488, 0
  %2490 = and i1 %2484, %2489
  %2491 = select i1 %2490, float 1.000000e+00, float %2478
  %2492 = select i1 %2490, float 0x3FD3333340000000, float %2479
  %2493 = select i1 %2490, float 0x3FD3333340000000, float %2480
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 32
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2570, label %2498

; <label>:2498                                    ; preds = %2476
  %2499 = add i32 %57, 124
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = add i32 %57, 416
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %2504, 0
  %2506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2506, %dx.types.Handle %109, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = extractvalue %dx.types.ResRet.f32 %2507, 3
  %2512 = and i32 %2501, 255
  %2513 = uitofp i32 %2512 to float
  %2514 = lshr i32 %2501, 8
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = lshr i32 %2501, 16
  %2518 = and i32 %2517, 255
  %2519 = uitofp i32 %2518 to float
  %2520 = fmul fast float %2519, 0x3F70101000000000
  %2521 = fmul fast float %2508, %2513
  %2522 = fadd fast float %2521, %2516
  %2523 = fmul fast float %2522, 0x3F70101000000000
  %2524 = fadd fast float %2509, -5.000000e-01
  %2525 = fadd fast float %2511, -5.000000e-01
  %2526 = fmul fast float %2524, %2520
  %2527 = fmul fast float %2525, %2520
  %2528 = fadd fast float %2526, 5.000000e-01
  %2529 = fadd fast float %2527, 5.000000e-01
  %2530 = fmul fast float %2528, 2.000000e+00
  %2531 = fadd fast float %2530, -1.000000e+00
  %2532 = fmul fast float %2529, 2.000000e+00
  %2533 = fadd fast float %2532, -1.000000e+00
  %2534 = fadd fast float %2531, %2533
  %2535 = fmul fast float %2534, 5.000000e-01
  %2536 = fsub fast float %2531, %2533
  %2537 = fmul fast float %2536, 5.000000e-01
  %2538 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = call float @dx.op.unary.f32(i32 6, float %2537)  ; FAbs(value)
  %2541 = fsub fast float %2539, %2540
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2535, float %2537, float %2541, float %2535, float %2537, float %2541)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = call float @dx.op.unary.f32(i32 25, float %2542)  ; Rsqrt(value)
  %2544 = fmul fast float %2535, %2543
  %2545 = fmul fast float %2537, %2543
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 67108864
  %2549 = icmp eq i32 %2548, 0
  br i1 %2549, label %2566, label %2550

; <label>:2550                                    ; preds = %2498
  %2551 = add i32 %57, 312
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 65535
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 65535
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = lshr i32 %2553, 16
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = fsub fast float %2523, %2561
  %2563 = fmul fast float %2562, %2555
  %2564 = fadd fast float %2563, %2559
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  br label %2566

; <label>:2566                                    ; preds = %2550, %2498
  %2567 = phi float [ %2565, %2550 ], [ %2523, %2498 ]
  %2568 = call float @dx.op.dot2.f32(i32 54, float %2544, float %2545, float %2102, float %2103)  ; Dot2(ax,ay,bx,by)
  %2569 = call float @dx.op.dot2.f32(i32 54, float %2544, float %2545, float %2104, float %2105)  ; Dot2(ax,ay,bx,by)
  br label %2570

; <label>:2570                                    ; preds = %2566, %2476
  %2571 = phi float [ %2567, %2566 ], [ 0x3FD6666660000000, %2476 ]
  %2572 = phi float [ %2568, %2566 ], [ 0.000000e+00, %2476 ]
  %2573 = phi float [ %2569, %2566 ], [ 0.000000e+00, %2476 ]
  %2574 = phi float [ %2510, %2566 ], [ 1.000000e+00, %2476 ]
  %2575 = add i32 %57, 192
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = lshr i32 %2577, 22
  %2579 = shl nuw nsw i32 %2578, 5
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 64
  %2584 = icmp eq i32 %2583, 0
  br i1 %2584, label %2618, label %2585

; <label>:2585                                    ; preds = %2570
  %2586 = add i32 %57, 432
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %2588, 0
  %2590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 131072
  %2594 = icmp eq i32 %2593, 0
  %2595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2590, %dx.types.Handle %109, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.ResRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.ResRet.f32 %2595, 2
  %2599 = fmul fast float %2596, %369
  %2600 = fmul fast float %2597, %372
  %2601 = fmul fast float %2598, %375
  br i1 %2594, label %2608, label %2602

; <label>:2602                                    ; preds = %2585
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2605 = fmul fast float %2604, %2599
  %2606 = fmul fast float %2604, %2600
  %2607 = fmul fast float %2604, %2601
  br label %2608

; <label>:2608                                    ; preds = %2602, %2585
  %2609 = phi float [ %2605, %2602 ], [ %2599, %2585 ]
  %2610 = phi float [ %2606, %2602 ], [ %2600, %2585 ]
  %2611 = phi float [ %2607, %2602 ], [ %2601, %2585 ]
  %2612 = fmul fast float %2609, %2580
  %2613 = select i1 %268, float %2612, float %2609
  %2614 = call float @dx.op.dot3.f32(i32 55, float %2613, float %2610, float %2611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2615 = select i1 %268, float 0.000000e+00, float %2609
  %2616 = select i1 %268, float %2614, float %2610
  %2617 = select i1 %268, float 0.000000e+00, float %2611
  br label %2618

; <label>:2618                                    ; preds = %2608, %2570
  %2619 = phi float [ %2615, %2608 ], [ 0.000000e+00, %2570 ]
  %2620 = phi float [ %2616, %2608 ], [ 0.000000e+00, %2570 ]
  %2621 = phi float [ %2617, %2608 ], [ 0.000000e+00, %2570 ]
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 1024
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %2656, label %2626

; <label>:2626                                    ; preds = %2618
  %2627 = add i32 %57, 184
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 255
  %2631 = uitofp i32 %2630 to float
  %2632 = fmul fast float %2631, 0x3F70101020000000
  %2633 = lshr i32 %2629, 8
  %2634 = and i32 %2633, 255
  %2635 = uitofp i32 %2634 to float
  %2636 = fmul fast float %2635, 0x3F70101020000000
  %2637 = lshr i32 %2629, 16
  %2638 = and i32 %2637, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = fmul fast float %2639, 0x3F70101020000000
  %2641 = fmul fast float %2632, %2632
  %2642 = fmul fast float %2636, %2636
  %2643 = fmul fast float %2640, %2640
  %2644 = add i32 %57, 500
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = add i32 %2646, 0
  %2648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2648, %dx.types.Handle %110, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = fmul fast float %2641, %2650
  %2654 = fmul fast float %2642, %2651
  %2655 = fmul fast float %2643, %2652
  br label %2656

; <label>:2656                                    ; preds = %2626, %2618
  %2657 = phi float [ %2653, %2626 ], [ 0.000000e+00, %2618 ]
  %2658 = phi float [ %2654, %2626 ], [ 0.000000e+00, %2618 ]
  %2659 = phi float [ %2655, %2626 ], [ 0.000000e+00, %2618 ]
  %2660 = fcmp fast ogt float %2657, 0.000000e+00
  %2661 = fcmp fast ogt float %2658, 0.000000e+00
  %2662 = fcmp fast ogt float %2659, 0.000000e+00
  %2663 = call float @dx.op.unary.f32(i32 23, float %2657)  ; Log(value)
  %2664 = call float @dx.op.unary.f32(i32 23, float %2658)  ; Log(value)
  %2665 = call float @dx.op.unary.f32(i32 23, float %2659)  ; Log(value)
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = lshr i32 %2667, 7
  %2669 = and i32 %2668, 32752
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = fmul fast float %2663, 0xBFE62E4300000000
  %2672 = fmul fast float %2671, %2670
  %2673 = fmul fast float %2664, 0xBFE62E4300000000
  %2674 = fmul fast float %2673, %2670
  %2675 = fmul fast float %2665, 0xBFE62E4300000000
  %2676 = fmul fast float %2675, %2670
  %2677 = select i1 %2660, float %2672, float 1.270000e+02
  %2678 = select i1 %2661, float %2674, float 1.270000e+02
  %2679 = select i1 %2662, float %2676, float 1.270000e+02
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = and i32 %2681, 26624
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2720, label %2684

; <label>:2684                                    ; preds = %2656
  %2685 = add i32 %57, 516
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = add i32 %2687, 0
  %2689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2689, %dx.types.Handle %110, float %2198, float %2199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 1048576
  %2695 = icmp ne i32 %2694, 0
  %2696 = and i32 %2693, 2048
  %2697 = icmp eq i32 %2696, 0
  br i1 %2697, label %2707, label %2698

; <label>:2698                                    ; preds = %2684
  %2699 = extractvalue %dx.types.ResRet.f32 %2690, 3
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = shl i32 %2701, 4
  %2703 = and i32 %2702, 32752
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = fmul fast float %2704, %2699
  %2706 = call float @dx.op.binary.f32(i32 35, float %2705, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2707

; <label>:2707                                    ; preds = %2698, %2684
  %2708 = phi float [ %2706, %2698 ], [ 0x3F70101020000000, %2684 ]
  %2709 = and i32 %2693, 16384
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %2720, label %2711

; <label>:2711                                    ; preds = %2707
  %2712 = add i32 %57, 128
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = lshr i32 %2714, 24
  %2716 = uitofp i32 %2715 to float
  %2717 = fmul fast float %2691, 0x3F70101020000000
  %2718 = select i1 %2695, float 0x3F70101020000000, float %2717
  %2719 = fmul fast float %2718, %2716
  br label %2720

; <label>:2720                                    ; preds = %2711, %2707, %2656
  %2721 = phi float [ %2708, %2711 ], [ %2708, %2707 ], [ 0x3F70101020000000, %2656 ]
  %2722 = phi float [ %2719, %2711 ], [ 0.000000e+00, %2707 ], [ 0.000000e+00, %2656 ]
  %2723 = add i32 %57, 128
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, 255
  %2727 = uitofp i32 %2726 to float
  %2728 = lshr i32 %2725, 8
  %2729 = and i32 %2728, 255
  %2730 = uitofp i32 %2729 to float
  %2731 = call float @dx.op.dot3.f32(i32 55, float %2491, float %2492, float %2493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2732 = fmul fast float %2730, %2731
  %2733 = fadd fast float %2732, %2727
  %2734 = fmul fast float %2733, 0x3F70101020000000
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  br i1 %2090, label %2736, label %2771

; <label>:2736                                    ; preds = %2720
  %2737 = fmul fast float %2721, 2.000000e+00
  %2738 = fcmp fast olt float %2677, 1.270000e+02
  %2739 = fcmp fast olt float %2678, 1.270000e+02
  %2740 = fcmp fast olt float %2679, 1.270000e+02
  %2741 = fmul fast float %2677, 0xBFF7154760000000
  %2742 = fmul fast float %2741, %2737
  %2743 = fmul fast float %2678, 0xBFF7154760000000
  %2744 = fmul fast float %2743, %2737
  %2745 = fmul fast float %2679, 0xBFF7154760000000
  %2746 = fmul fast float %2745, %2737
  %2747 = call float @dx.op.unary.f32(i32 21, float %2742)  ; Exp(value)
  %2748 = call float @dx.op.unary.f32(i32 21, float %2744)  ; Exp(value)
  %2749 = call float @dx.op.unary.f32(i32 21, float %2746)  ; Exp(value)
  %2750 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2751 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2752 = call float @dx.op.unary.f32(i32 7, float %2749)  ; Saturate(value)
  %2753 = fadd fast float %2750, -1.000000e+00
  %2754 = select i1 %2738, float %2753, float -1.000000e+00
  %2755 = fadd fast float %2751, -1.000000e+00
  %2756 = select i1 %2739, float %2755, float -1.000000e+00
  %2757 = fadd fast float %2752, -1.000000e+00
  %2758 = select i1 %2740, float %2757, float -1.000000e+00
  %2759 = fmul fast float %2754, %2271
  %2760 = fmul fast float %2756, %2271
  %2761 = fmul fast float %2758, %2271
  %2762 = fadd fast float %2759, 1.000000e+00
  %2763 = fadd fast float %2760, 1.000000e+00
  %2764 = fadd fast float %2761, 1.000000e+00
  %2765 = fmul fast float %2762, %2077
  %2766 = fmul fast float %2763, %2078
  %2767 = fmul fast float %2764, %2079
  %2768 = fmul fast float %2762, %2080
  %2769 = fmul fast float %2763, %2081
  %2770 = fmul fast float %2764, %2082
  br label %2771

; <label>:2771                                    ; preds = %2736, %2720
  %2772 = phi float [ %2765, %2736 ], [ %2077, %2720 ]
  %2773 = phi float [ %2766, %2736 ], [ %2078, %2720 ]
  %2774 = phi float [ %2767, %2736 ], [ %2079, %2720 ]
  %2775 = phi float [ %2768, %2736 ], [ %2080, %2720 ]
  %2776 = phi float [ %2769, %2736 ], [ %2081, %2720 ]
  %2777 = phi float [ %2770, %2736 ], [ %2082, %2720 ]
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 3
  %2781 = icmp eq i32 %2780, 3
  br i1 %2781, label %2860, label %2782

; <label>:2782                                    ; preds = %2771
  %2783 = and i32 %2779, 16
  %2784 = icmp ne i32 %2783, 0
  %2785 = select i1 %2784, float %2271, float 0.000000e+00
  %2786 = icmp eq i32 %2780, 0
  br i1 %2786, label %2787, label %2815

; <label>:2787                                    ; preds = %2782
  %2788 = and i32 %2779, 64
  %2789 = icmp ne i32 %2788, 0
  %2790 = select i1 %2789, float %2271, float 0.000000e+00
  %2791 = fsub fast float %2491, %2772
  %2792 = fsub fast float %2492, %2773
  %2793 = fsub fast float %2493, %2774
  %2794 = fmul fast float %2785, %2791
  %2795 = fmul fast float %2785, %2792
  %2796 = fmul fast float %2785, %2793
  %2797 = fadd fast float %2794, %2772
  %2798 = fadd fast float %2795, %2773
  %2799 = fadd fast float %2796, %2774
  %2800 = fsub fast float %2477, %2083
  %2801 = fmul fast float %2785, %2800
  %2802 = fadd fast float %2801, %2083
  %2803 = fsub fast float %2619, %2775
  %2804 = fsub fast float %2620, %2776
  %2805 = fsub fast float %2621, %2777
  %2806 = fmul fast float %2790, %2803
  %2807 = fmul fast float %2790, %2804
  %2808 = fmul fast float %2790, %2805
  %2809 = fadd fast float %2806, %2775
  %2810 = fadd fast float %2807, %2776
  %2811 = fadd fast float %2808, %2777
  %2812 = fsub fast float %2735, %2088
  %2813 = fmul fast float %2785, %2812
  %2814 = fadd fast float %2813, %2088
  br label %2860

; <label>:2815                                    ; preds = %2782
  %2816 = icmp eq i32 %2780, 1
  br i1 %2816, label %2817, label %2830

; <label>:2817                                    ; preds = %2815
  %2818 = fadd fast float %2491, -1.000000e+00
  %2819 = fadd fast float %2492, -1.000000e+00
  %2820 = fadd fast float %2493, -1.000000e+00
  %2821 = fmul fast float %2785, %2818
  %2822 = fmul fast float %2785, %2819
  %2823 = fmul fast float %2785, %2820
  %2824 = fadd fast float %2821, 1.000000e+00
  %2825 = fadd fast float %2822, 1.000000e+00
  %2826 = fadd fast float %2823, 1.000000e+00
  %2827 = fmul fast float %2824, %2772
  %2828 = fmul fast float %2825, %2773
  %2829 = fmul fast float %2826, %2774
  br label %2860

; <label>:2830                                    ; preds = %2815
  %2831 = icmp eq i32 %2780, 2
  br i1 %2831, label %2832, label %2860

; <label>:2832                                    ; preds = %2830
  %2833 = call float @dx.op.unary.f32(i32 24, float %2491)  ; Sqrt(value)
  %2834 = call float @dx.op.unary.f32(i32 24, float %2492)  ; Sqrt(value)
  %2835 = call float @dx.op.unary.f32(i32 24, float %2493)  ; Sqrt(value)
  %2836 = fadd fast float %2833, -5.000000e-01
  %2837 = fadd fast float %2834, -5.000000e-01
  %2838 = fadd fast float %2835, -5.000000e-01
  %2839 = fmul fast float %2836, %2785
  %2840 = fmul fast float %2837, %2785
  %2841 = fmul fast float %2838, %2785
  %2842 = fadd fast float %2839, 5.000000e-01
  %2843 = fadd fast float %2840, 5.000000e-01
  %2844 = fadd fast float %2841, 5.000000e-01
  %2845 = fmul fast float %2842, 2.000000e+00
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = fmul fast float %2846, %2772
  %2848 = fadd fast float %2847, %2845
  %2849 = fmul fast float %2848, %2772
  %2850 = fmul fast float %2843, 2.000000e+00
  %2851 = fsub fast float 1.000000e+00, %2850
  %2852 = fmul fast float %2851, %2773
  %2853 = fadd fast float %2852, %2850
  %2854 = fmul fast float %2853, %2773
  %2855 = fmul fast float %2844, 2.000000e+00
  %2856 = fsub fast float 1.000000e+00, %2855
  %2857 = fmul fast float %2856, %2774
  %2858 = fadd fast float %2857, %2855
  %2859 = fmul fast float %2858, %2774
  br label %2860

; <label>:2860                                    ; preds = %2832, %2830, %2817, %2787, %2771
  %2861 = phi float [ %2772, %2771 ], [ %2849, %2832 ], [ %2772, %2830 ], [ %2827, %2817 ], [ %2797, %2787 ]
  %2862 = phi float [ %2773, %2771 ], [ %2854, %2832 ], [ %2773, %2830 ], [ %2828, %2817 ], [ %2798, %2787 ]
  %2863 = phi float [ %2774, %2771 ], [ %2859, %2832 ], [ %2774, %2830 ], [ %2829, %2817 ], [ %2799, %2787 ]
  %2864 = phi float [ %2775, %2771 ], [ %2775, %2832 ], [ %2775, %2830 ], [ %2775, %2817 ], [ %2809, %2787 ]
  %2865 = phi float [ %2776, %2771 ], [ %2776, %2832 ], [ %2776, %2830 ], [ %2776, %2817 ], [ %2810, %2787 ]
  %2866 = phi float [ %2777, %2771 ], [ %2777, %2832 ], [ %2777, %2830 ], [ %2777, %2817 ], [ %2811, %2787 ]
  %2867 = phi float [ %2083, %2771 ], [ %2083, %2832 ], [ %2083, %2830 ], [ %2083, %2817 ], [ %2802, %2787 ]
  %2868 = phi float [ %2088, %2771 ], [ %2088, %2832 ], [ %2088, %2830 ], [ %2088, %2817 ], [ %2814, %2787 ]
  %2869 = and i32 %2779, 12
  %2870 = icmp eq i32 %2869, 12
  br i1 %2870, label %2987, label %2871

; <label>:2871                                    ; preds = %2860
  %2872 = and i32 %2779, 2097184
  %2873 = icmp eq i32 %2872, 2097184
  %2874 = select i1 %2873, float %2271, float 0.000000e+00
  %2875 = and i32 %2779, 4194336
  %2876 = icmp eq i32 %2875, 4194336
  %2877 = select i1 %2876, float %2271, float 0.000000e+00
  %2878 = and i32 %2779, 8388640
  %2879 = icmp eq i32 %2878, 8388640
  %2880 = select i1 %2879, float %2271, float 0.000000e+00
  %2881 = and i32 %2779, 1024
  %2882 = icmp ne i32 %2881, 0
  %2883 = select i1 %2882, float %2271, float 0.000000e+00
  %2884 = and i32 %2779, 2048
  %2885 = icmp ne i32 %2884, 0
  %2886 = select i1 %2885, float %2271, float 0.000000e+00
  %2887 = and i32 %2779, 16384
  %2888 = icmp ne i32 %2887, 0
  %2889 = select i1 %2888, float %2271, float 0.000000e+00
  %2890 = icmp eq i32 %2869, 0
  br i1 %2890, label %2891, label %2919

; <label>:2891                                    ; preds = %2871
  %2892 = fsub fast float %2572, %2072
  %2893 = fsub fast float %2573, %2073
  %2894 = fmul fast float %2874, %2892
  %2895 = fmul fast float %2874, %2893
  %2896 = fadd fast float %2894, %2072
  %2897 = fadd fast float %2895, %2073
  %2898 = fsub fast float %2574, %2085
  %2899 = fmul fast float %2877, %2898
  %2900 = fadd fast float %2899, %2085
  %2901 = fsub fast float %2571, %2084
  %2902 = fmul fast float %2880, %2901
  %2903 = fadd fast float %2902, %2084
  %2904 = fsub fast float %2677, %2074
  %2905 = fsub fast float %2678, %2075
  %2906 = fsub fast float %2679, %2076
  %2907 = fmul fast float %2883, %2904
  %2908 = fmul fast float %2883, %2905
  %2909 = fmul fast float %2883, %2906
  %2910 = fadd fast float %2907, %2074
  %2911 = fadd fast float %2908, %2075
  %2912 = fadd fast float %2909, %2076
  %2913 = fsub fast float %2721, %2086
  %2914 = fmul fast float %2886, %2913
  %2915 = fadd fast float %2914, %2086
  %2916 = fsub fast float %2722, %2087
  %2917 = fmul fast float %2889, %2916
  %2918 = fadd fast float %2917, %2087
  br label %2987

; <label>:2919                                    ; preds = %2871
  %2920 = icmp eq i32 %2869, 4
  br i1 %2920, label %2921, label %2963

; <label>:2921                                    ; preds = %2919
  %2922 = fmul fast float %2874, %2572
  %2923 = fmul fast float %2874, %2573
  %2924 = fadd fast float %2922, %2072
  %2925 = fadd fast float %2923, %2073
  %2926 = call float @dx.op.binary.f32(i32 36, float %2085, float %2574)  ; FMin(a,b)
  %2927 = fsub fast float %2926, %2085
  %2928 = fmul fast float %2927, %2877
  %2929 = fadd fast float %2928, %2085
  %2930 = fadd fast float %2571, %2084
  %2931 = fmul fast float %2930, 0x3FF337FAE0000000
  %2932 = fmul fast float %2084, %2084
  %2933 = fmul fast float %2571, %2571
  %2934 = fadd fast float %2933, %2932
  %2935 = fmul fast float %2934, 0x3FE5152B00000000
  %2936 = fmul fast float %2084, 0xBFCC1F85E0000000
  %2937 = fmul fast float %2936, %2571
  %2938 = fadd fast float %2937, 0xBFE1363700000000
  %2939 = fadd fast float %2938, %2931
  %2940 = fsub fast float %2939, %2935
  %2941 = fmul fast float %2930, 0x3FBA6F0D00000000
  %2942 = fmul fast float %2934, 0x3FD0432880000000
  %2943 = fmul fast float %2084, 0xBFEF110800000000
  %2944 = fmul fast float %2943, %2571
  %2945 = fadd fast float %2944, 1.000000e+00
  %2946 = fsub fast float %2945, %2941
  %2947 = fadd fast float %2946, %2942
  %2948 = fdiv fast float %2940, %2947
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2950 = fsub fast float %2949, %2084
  %2951 = fmul fast float %2950, %2880
  %2952 = fadd fast float %2951, %2084
  %2953 = fmul fast float %2883, %2677
  %2954 = fmul fast float %2883, %2678
  %2955 = fmul fast float %2883, %2679
  %2956 = fadd fast float %2953, %2074
  %2957 = fadd fast float %2954, %2075
  %2958 = fadd fast float %2955, %2076
  %2959 = fmul fast float %2886, %2721
  %2960 = fadd fast float %2959, %2086
  %2961 = fmul fast float %2889, %2722
  %2962 = fadd fast float %2961, %2087
  br label %2987

; <label>:2963                                    ; preds = %2919
  %2964 = icmp eq i32 %2869, 8
  br i1 %2964, label %2965, label %2987

; <label>:2965                                    ; preds = %2963
  %2966 = fmul fast float %2874, %2572
  %2967 = fmul fast float %2874, %2573
  %2968 = fadd fast float %2966, %2072
  %2969 = fadd fast float %2967, %2073
  %2970 = call float @dx.op.binary.f32(i32 36, float %2085, float %2574)  ; FMin(a,b)
  %2971 = fsub fast float %2970, %2085
  %2972 = fmul fast float %2971, %2877
  %2973 = fadd fast float %2972, %2085
  %2974 = fsub fast float %2571, %2084
  %2975 = fmul fast float %2880, %2974
  %2976 = fadd fast float %2975, %2084
  %2977 = fmul fast float %2883, %2677
  %2978 = fmul fast float %2883, %2678
  %2979 = fmul fast float %2883, %2679
  %2980 = fadd fast float %2977, %2074
  %2981 = fadd fast float %2978, %2075
  %2982 = fadd fast float %2979, %2076
  %2983 = fmul fast float %2886, %2721
  %2984 = fadd fast float %2983, %2086
  %2985 = fmul fast float %2889, %2722
  %2986 = fadd fast float %2985, %2087
  br label %2987

; <label>:2987                                    ; preds = %2965, %2963, %2921, %2891, %2860, %2270, %2089, %2071
  %2988 = phi float [ %2072, %2860 ], [ %2072, %2270 ], [ %2072, %2071 ], [ %2968, %2965 ], [ %2072, %2963 ], [ %2924, %2921 ], [ %2896, %2891 ], [ %2072, %2089 ]
  %2989 = phi float [ %2073, %2860 ], [ %2073, %2270 ], [ %2073, %2071 ], [ %2969, %2965 ], [ %2073, %2963 ], [ %2925, %2921 ], [ %2897, %2891 ], [ %2073, %2089 ]
  %2990 = phi float [ %2074, %2860 ], [ %2074, %2270 ], [ %2074, %2071 ], [ %2980, %2965 ], [ %2074, %2963 ], [ %2956, %2921 ], [ %2910, %2891 ], [ %2074, %2089 ]
  %2991 = phi float [ %2075, %2860 ], [ %2075, %2270 ], [ %2075, %2071 ], [ %2981, %2965 ], [ %2075, %2963 ], [ %2957, %2921 ], [ %2911, %2891 ], [ %2075, %2089 ]
  %2992 = phi float [ %2076, %2860 ], [ %2076, %2270 ], [ %2076, %2071 ], [ %2982, %2965 ], [ %2076, %2963 ], [ %2958, %2921 ], [ %2912, %2891 ], [ %2076, %2089 ]
  %2993 = phi float [ %2861, %2860 ], [ %2077, %2270 ], [ %2077, %2071 ], [ %2861, %2965 ], [ %2861, %2963 ], [ %2861, %2921 ], [ %2861, %2891 ], [ %2077, %2089 ]
  %2994 = phi float [ %2862, %2860 ], [ %2078, %2270 ], [ %2078, %2071 ], [ %2862, %2965 ], [ %2862, %2963 ], [ %2862, %2921 ], [ %2862, %2891 ], [ %2078, %2089 ]
  %2995 = phi float [ %2863, %2860 ], [ %2079, %2270 ], [ %2079, %2071 ], [ %2863, %2965 ], [ %2863, %2963 ], [ %2863, %2921 ], [ %2863, %2891 ], [ %2079, %2089 ]
  %2996 = phi float [ %2864, %2860 ], [ %2080, %2270 ], [ %2080, %2071 ], [ %2864, %2965 ], [ %2864, %2963 ], [ %2864, %2921 ], [ %2864, %2891 ], [ %2080, %2089 ]
  %2997 = phi float [ %2865, %2860 ], [ %2081, %2270 ], [ %2081, %2071 ], [ %2865, %2965 ], [ %2865, %2963 ], [ %2865, %2921 ], [ %2865, %2891 ], [ %2081, %2089 ]
  %2998 = phi float [ %2866, %2860 ], [ %2082, %2270 ], [ %2082, %2071 ], [ %2866, %2965 ], [ %2866, %2963 ], [ %2866, %2921 ], [ %2866, %2891 ], [ %2082, %2089 ]
  %2999 = phi float [ %2867, %2860 ], [ %2083, %2270 ], [ %2083, %2071 ], [ %2867, %2965 ], [ %2867, %2963 ], [ %2867, %2921 ], [ %2867, %2891 ], [ %2083, %2089 ]
  %3000 = phi float [ %2084, %2860 ], [ %2084, %2270 ], [ %2084, %2071 ], [ %2976, %2965 ], [ %2084, %2963 ], [ %2952, %2921 ], [ %2903, %2891 ], [ %2084, %2089 ]
  %3001 = phi float [ %2085, %2860 ], [ %2085, %2270 ], [ %2085, %2071 ], [ %2973, %2965 ], [ %2085, %2963 ], [ %2929, %2921 ], [ %2900, %2891 ], [ %2085, %2089 ]
  %3002 = phi float [ %2086, %2860 ], [ %2086, %2270 ], [ %2086, %2071 ], [ %2984, %2965 ], [ %2086, %2963 ], [ %2960, %2921 ], [ %2915, %2891 ], [ %2086, %2089 ]
  %3003 = phi float [ %2087, %2860 ], [ %2087, %2270 ], [ %2087, %2071 ], [ %2986, %2965 ], [ %2087, %2963 ], [ %2962, %2921 ], [ %2918, %2891 ], [ %2087, %2089 ]
  %3004 = phi float [ %2868, %2860 ], [ %2088, %2270 ], [ %2088, %2071 ], [ %2868, %2965 ], [ %2868, %2963 ], [ %2868, %2921 ], [ %2868, %2891 ], [ %2088, %2089 ]
  br i1 %456, label %3903, label %3005

; <label>:3005                                    ; preds = %2987
  %3006 = icmp ult i32 %510, 4
  %3007 = add i32 %57, 72
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %57, 76
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = or i32 %3012, %3009
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3903, label %3015

; <label>:3015                                    ; preds = %3005
  %3016 = and i32 %3009, 262144
  %3017 = icmp ne i32 %3016, 0
  %3018 = select i1 %3017, float %63, float 1.000000e+00
  %3019 = select i1 %3017, float %64, float 0.000000e+00
  %3020 = select i1 %3017, float %65, float 0.000000e+00
  %3021 = select i1 %3017, float %66, float 1.000000e+00
  %3022 = select i1 %3017, float %67, float %95
  %3023 = select i1 %3017, float %68, float %96
  %3024 = add i32 %57, 332
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = lshr i32 %3026, 16
  %3028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3027)  ; LegacyF16ToF32(value)
  %3029 = fmul fast float %3028, 0x3F50624DE0000000
  %3030 = add i32 %57, 136
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = lshr i32 %3032, 16
  %3034 = and i32 %3033, 255
  %3035 = lshr i32 %3032, 24
  %3036 = add i32 %57, 340
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 65535
  %3040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3039)  ; LegacyF16ToF32(value)
  %3041 = lshr i32 %3038, 16
  %3042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3041)  ; LegacyF16ToF32(value)
  %3043 = add i32 %57, 80
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 22
  %3047 = shl nuw nsw i32 %3046, 5
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = shl i32 %3045, 4
  %3050 = and i32 %3049, 32752
  %3051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3050)  ; LegacyF16ToF32(value)
  %3052 = lshr i32 %3045, 7
  %3053 = and i32 %3052, 32752
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3055, 3
  %3057 = fmul fast float %3056, 1.000000e+03
  %3058 = fmul fast float %446, %3057
  %3059 = call float @dx.op.unary.f32(i32 22, float %3058)  ; Frc(value)
  %3060 = fadd fast float %3059, %436
  %3061 = fmul fast float %447, %3057
  %3062 = call float @dx.op.unary.f32(i32 22, float %3061)  ; Frc(value)
  %3063 = fadd fast float %3062, %438
  %3064 = fmul fast float %3029, %3057
  %3065 = call float @dx.op.unary.f32(i32 22, float %3064)  ; Frc(value)
  %3066 = fmul fast float %3065, 0x401921FB60000000
  %3067 = fadd fast float %3066, %3048
  %3068 = call float @dx.op.unary.f32(i32 13, float %3067)  ; Sin(value)
  %3069 = call float @dx.op.unary.f32(i32 12, float %3067)  ; Cos(value)
  %3070 = fsub fast float -0.000000e+00, %3068
  %3071 = fadd fast float %3022, -5.000000e-01
  %3072 = fadd fast float %3023, -5.000000e-01
  %3073 = fmul fast float %3040, %3071
  %3074 = fmul fast float %3042, %3072
  %3075 = fadd fast float %3073, 5.000000e-01
  %3076 = fadd fast float %3074, 5.000000e-01
  %3077 = fmul fast float %3051, %3075
  %3078 = fmul fast float %3054, %3076
  %3079 = fmul fast float %3069, %3077
  %3080 = call float @dx.op.tertiary.f32(i32 46, float %3070, float %3078, float %3079)  ; FMad(a,b,c)
  %3081 = fmul fast float %3068, %3077
  %3082 = call float @dx.op.tertiary.f32(i32 46, float %3069, float %3078, float %3081)  ; FMad(a,b,c)
  %3083 = fadd fast float %3060, %3080
  %3084 = fadd fast float %3063, %3082
  %3085 = icmp ugt i32 %3034, 1
  %3086 = icmp ugt i32 %3032, 33554431
  %3087 = or i1 %3086, %3085
  br i1 %3087, label %3088, label %3113

; <label>:3088                                    ; preds = %3015
  %3089 = add i32 %57, 276
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = lshr i32 %3091, 16
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = fmul fast float %3056, %3093
  %3095 = call float @dx.op.unary.f32(i32 22, float %3094)  ; Frc(value)
  %3096 = mul nuw nsw i32 %3034, %3035
  %3097 = uitofp i32 %3096 to float
  %3098 = fmul fast float %3095, %3097
  %3099 = call float @dx.op.unary.f32(i32 27, float %3098)  ; Round_ni(value)
  %3100 = fptoui float %3099 to i32
  %3101 = urem i32 %3100, %3034
  %3102 = udiv i32 %3100, %3035
  %3103 = call float @dx.op.unary.f32(i32 22, float %3083)  ; Frc(value)
  %3104 = call float @dx.op.unary.f32(i32 22, float %3084)  ; Frc(value)
  %3105 = uitofp i32 %3101 to float
  %3106 = uitofp i32 %3102 to float
  %3107 = fadd fast float %3103, %3105
  %3108 = fadd fast float %3104, %3106
  %3109 = uitofp i32 %3034 to float
  %3110 = uitofp i32 %3035 to float
  %3111 = fdiv fast float %3107, %3109
  %3112 = fdiv fast float %3108, %3110
  br label %3113

; <label>:3113                                    ; preds = %3088, %3015
  %3114 = phi float [ %3111, %3088 ], [ %3083, %3015 ]
  %3115 = phi float [ %3112, %3088 ], [ %3084, %3015 ]
  %3116 = and i32 %3009, 256
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3164, label %3118

; <label>:3118                                    ; preds = %3113
  %3119 = add i32 %57, 468
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %110, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = add i32 %57, 148
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = shl i32 %3128, 4
  %3130 = and i32 %3129, 32752
  %3131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3130)  ; LegacyF16ToF32(value)
  %3132 = lshr i32 %3128, 7
  %3133 = and i32 %3132, 32752
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = fsub fast float 1.000000e+00, %505
  %3136 = call float @dx.op.binary.f32(i32 35, float %3135, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3137 = bitcast float %505 to i32
  %3138 = sitofp i32 %3137 to float
  %3139 = fadd fast float %3138, 0xC1CFBF8940000000
  %3140 = fmul fast float %3134, %3139
  %3141 = fadd fast float %3140, 0x41CFBF8940000000
  %3142 = fptosi float %3141 to i32
  %3143 = bitcast i32 %3142 to float
  %3144 = bitcast float %3136 to i32
  %3145 = sitofp i32 %3144 to float
  %3146 = fadd fast float %3145, 0xC1CFBF8940000000
  %3147 = fmul fast float %3146, %3134
  %3148 = fadd fast float %3147, 0x41CFBF8940000000
  %3149 = fptosi float %3148 to i32
  %3150 = bitcast i32 %3149 to float
  %3151 = fmul fast float %3143, %3131
  %3152 = fmul fast float %3150, %3131
  %3153 = fsub fast float %3136, %3151
  %3154 = fadd fast float %3152, %3136
  %3155 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3156 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3157 = fsub fast float %3125, %3155
  %3158 = fsub fast float %3156, %3155
  %3159 = bitcast float %3158 to i32
  %3160 = sub nsw i32 2129859010, %3159
  %3161 = bitcast i32 %3160 to float
  %3162 = fmul fast float %3161, %3157
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  br label %3164

; <label>:3164                                    ; preds = %3118, %3113
  %3165 = phi float [ %3163, %3118 ], [ %505, %3113 ]
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 128
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3186, label %3170

; <label>:3170                                    ; preds = %3164
  %3171 = add i32 %57, 452
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = add i32 %3173, 0
  %3175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3175, %dx.types.Handle %110, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3177 = extractvalue %dx.types.ResRet.f32 %3176, 0
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 524288
  %3181 = icmp ne i32 %3180, 0
  %3182 = fcmp fast ogt float %3177, 0x3FE0101020000000
  %3183 = select i1 %3182, float 1.000000e+00, float 0.000000e+00
  %3184 = select i1 %3181, float %3183, float %3177
  %3185 = fmul fast float %3184, %3165
  br label %3186

; <label>:3186                                    ; preds = %3170, %3164
  %3187 = phi float [ %3185, %3170 ], [ %3165, %3164 ]
  %3188 = fcmp fast ult float %3187, 0x3F70101020000000
  br i1 %3188, label %3903, label %3189

; <label>:3189                                    ; preds = %3186
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 16
  %3193 = icmp eq i32 %3192, 0
  br i1 %3193, label %3392, label %3194

; <label>:3194                                    ; preds = %3189
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = add i32 %57, 404
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = add i32 %3199, 0
  %3201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3201, %dx.types.Handle %109, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3203 = extractvalue %dx.types.ResRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.ResRet.f32 %3202, 1
  %3205 = extractvalue %dx.types.ResRet.f32 %3202, 2
  %3206 = extractvalue %dx.types.ResRet.f32 %3202, 3
  %3207 = and i32 %3196, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = lshr i32 %3196, 8
  %3210 = and i32 %3209, 255
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3206, %3208
  %3213 = fadd fast float %3212, %3211
  %3214 = fmul fast float %3213, 0x3F70101000000000
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 512
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3227, label %3219

; <label>:3219                                    ; preds = %3194
  %3220 = add i32 %57, 488
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %3222, 0
  %3224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3224, %dx.types.Handle %110, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3226 = extractvalue %dx.types.ResRet.f32 %3225, 0
  br label %3227

; <label>:3227                                    ; preds = %3219, %3194
  %3228 = phi float [ %3226, %3219 ], [ 1.000000e+00, %3194 ]
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 33554432
  %3232 = icmp eq i32 %3231, 0
  br i1 %3232, label %3339, label %3233

; <label>:3233                                    ; preds = %3227
  %3234 = add i32 %57, 272
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 65535
  %3238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3237)  ; LegacyF16ToF32(value)
  %3239 = lshr i32 %3236, 16
  %3240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3239)  ; LegacyF16ToF32(value)
  %3241 = add i32 %57, 276
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 65535
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = lshr i32 %3247, 24
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = and i32 %3247, 255
  %3252 = uitofp i32 %3251 to float
  %3253 = fmul fast float %3252, 0x3F70101020000000
  %3254 = lshr i32 %3247, 8
  %3255 = and i32 %3254, 255
  %3256 = uitofp i32 %3255 to float
  %3257 = fmul fast float %3256, 0x3F70101020000000
  %3258 = lshr i32 %3247, 16
  %3259 = and i32 %3258, 255
  %3260 = uitofp i32 %3259 to float
  %3261 = fmul fast float %3260, 0x3F70101020000000
  %3262 = add i32 %57, 268
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = lshr i32 %3264, 24
  %3266 = uitofp i32 %3265 to float
  %3267 = fmul fast float %3266, 0x3F70101020000000
  %3268 = and i32 %3264, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F70101020000000
  %3271 = lshr i32 %3264, 8
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101020000000
  %3275 = lshr i32 %3264, 16
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = fmul fast float %3277, 0x3F70101020000000
  %3279 = bitcast float %3203 to i32
  %3280 = ashr i32 %3279, 1
  %3281 = sub nsw i32 1597463174, %3280
  %3282 = bitcast i32 %3281 to float
  %3283 = fmul fast float %3203, 5.000000e-01
  %3284 = fmul fast float %3282, %3282
  %3285 = fmul fast float %3284, %3283
  %3286 = fsub fast float 1.500000e+00, %3285
  %3287 = fmul fast float %3282, %3203
  %3288 = fmul fast float %3287, %3286
  %3289 = bitcast float %3204 to i32
  %3290 = ashr i32 %3289, 1
  %3291 = sub nsw i32 1597463174, %3290
  %3292 = bitcast i32 %3291 to float
  %3293 = fmul fast float %3204, 5.000000e-01
  %3294 = fmul fast float %3292, %3292
  %3295 = fmul fast float %3294, %3293
  %3296 = fsub fast float 1.500000e+00, %3295
  %3297 = fmul fast float %3292, %3204
  %3298 = fmul fast float %3297, %3296
  %3299 = bitcast float %3205 to i32
  %3300 = ashr i32 %3299, 1
  %3301 = sub nsw i32 1597463174, %3300
  %3302 = bitcast i32 %3301 to float
  %3303 = fmul fast float %3205, 5.000000e-01
  %3304 = fmul fast float %3302, %3302
  %3305 = fmul fast float %3304, %3303
  %3306 = fsub fast float 1.500000e+00, %3305
  %3307 = fmul fast float %3302, %3205
  %3308 = fmul fast float %3307, %3306
  %3309 = fsub fast float %3288, %3270
  %3310 = fsub fast float %3298, %3274
  %3311 = fsub fast float %3308, %3278
  %3312 = fmul fast float %3309, %3238
  %3313 = fmul fast float %3310, %3240
  %3314 = fmul fast float %3311, %3245
  %3315 = fadd fast float %3312, %3253
  %3316 = fadd fast float %3313, %3257
  %3317 = fadd fast float %3314, %3261
  %3318 = call float @dx.op.unary.f32(i32 7, float %3315)  ; Saturate(value)
  %3319 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  %3320 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  %3321 = fmul fast float %3318, %3318
  %3322 = fmul fast float %3319, %3319
  %3323 = fmul fast float %3320, %3320
  %3324 = fsub fast float %3321, %3203
  %3325 = fsub fast float %3322, %3204
  %3326 = fsub fast float %3323, %3205
  %3327 = fmul fast float %3324, %3228
  %3328 = fmul fast float %3325, %3228
  %3329 = fmul fast float %3326, %3228
  %3330 = fadd fast float %3327, %3203
  %3331 = fadd fast float %3328, %3204
  %3332 = fadd fast float %3329, %3205
  %3333 = fadd fast float %3250, %3214
  %3334 = fsub fast float %3333, %3267
  %3335 = call float @dx.op.unary.f32(i32 7, float %3334)  ; Saturate(value)
  %3336 = fsub fast float %3335, %3214
  %3337 = fmul fast float %3336, %3228
  %3338 = fadd fast float %3337, %3214
  br label %3392

; <label>:3339                                    ; preds = %3227
  %3340 = and i32 %3230, 134217728
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3376, label %3342

; <label>:3342                                    ; preds = %3339
  %3343 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3344 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %3345 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %3346 = fadd fast float %3343, -5.000000e-01
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fmul fast float %3346, %3228
  %3350 = fmul fast float %3347, %3228
  %3351 = fmul fast float %3348, %3228
  %3352 = fadd fast float %3349, 5.000000e-01
  %3353 = fadd fast float %3350, 5.000000e-01
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = call float @dx.op.unary.f32(i32 24, float %3203)  ; Sqrt(value)
  %3356 = call float @dx.op.unary.f32(i32 24, float %3204)  ; Sqrt(value)
  %3357 = call float @dx.op.unary.f32(i32 24, float %3205)  ; Sqrt(value)
  %3358 = fmul fast float %3352, 2.000000e+00
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3355
  %3361 = fadd fast float %3360, %3358
  %3362 = fmul fast float %3361, %3355
  %3363 = fmul fast float %3353, 2.000000e+00
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3364, %3356
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3356
  %3368 = fmul fast float %3354, 2.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3357
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3357
  %3373 = fmul fast float %3362, %3362
  %3374 = fmul fast float %3367, %3367
  %3375 = fmul fast float %3372, %3372
  br label %3392

; <label>:3376                                    ; preds = %3339
  %3377 = fmul fast float %423, %423
  %3378 = fmul fast float %427, %427
  %3379 = fmul fast float %431, %431
  %3380 = fadd fast float %3377, -1.000000e+00
  %3381 = fadd fast float %3378, -1.000000e+00
  %3382 = fadd fast float %3379, -1.000000e+00
  %3383 = fmul fast float %3228, %3380
  %3384 = fmul fast float %3228, %3381
  %3385 = fmul fast float %3228, %3382
  %3386 = fadd fast float %3383, 1.000000e+00
  %3387 = fadd fast float %3384, 1.000000e+00
  %3388 = fadd fast float %3385, 1.000000e+00
  %3389 = fmul fast float %3386, %3203
  %3390 = fmul fast float %3387, %3204
  %3391 = fmul fast float %3388, %3205
  br label %3392

; <label>:3392                                    ; preds = %3376, %3342, %3233, %3189
  %3393 = phi float [ %3338, %3233 ], [ %3214, %3342 ], [ %3214, %3376 ], [ 0x3FA23C0BE0000000, %3189 ]
  %3394 = phi float [ %3330, %3233 ], [ %3373, %3342 ], [ %3389, %3376 ], [ 1.000000e+00, %3189 ]
  %3395 = phi float [ %3331, %3233 ], [ %3374, %3342 ], [ %3390, %3376 ], [ 1.000000e+00, %3189 ]
  %3396 = phi float [ %3332, %3233 ], [ %3375, %3342 ], [ %3391, %3376 ], [ 1.000000e+00, %3189 ]
  %3397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3398 = extractvalue %dx.types.CBufRet.i32 %3397, 1
  %3399 = and i32 %3398, 1
  %3400 = icmp ne i32 %3399, 0
  %3401 = add i32 %57, 372
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 32
  %3405 = icmp ne i32 %3404, 0
  %3406 = and i1 %3400, %3405
  %3407 = select i1 %3406, float 1.000000e+00, float %3394
  %3408 = select i1 %3406, float 0x3FD3333340000000, float %3395
  %3409 = select i1 %3406, float 0x3FD3333340000000, float %3396
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 32
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3486, label %3414

; <label>:3414                                    ; preds = %3392
  %3415 = add i32 %57, 140
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = add i32 %57, 420
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = add i32 %3420, 0
  %3422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3422, %dx.types.Handle %109, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = and i32 %3417, 255
  %3429 = uitofp i32 %3428 to float
  %3430 = lshr i32 %3417, 8
  %3431 = and i32 %3430, 255
  %3432 = uitofp i32 %3431 to float
  %3433 = lshr i32 %3417, 16
  %3434 = and i32 %3433, 255
  %3435 = uitofp i32 %3434 to float
  %3436 = fmul fast float %3435, 0x3F70101000000000
  %3437 = fmul fast float %3424, %3429
  %3438 = fadd fast float %3437, %3432
  %3439 = fmul fast float %3438, 0x3F70101000000000
  %3440 = fadd fast float %3425, -5.000000e-01
  %3441 = fadd fast float %3427, -5.000000e-01
  %3442 = fmul fast float %3440, %3436
  %3443 = fmul fast float %3441, %3436
  %3444 = fadd fast float %3442, 5.000000e-01
  %3445 = fadd fast float %3443, 5.000000e-01
  %3446 = fmul fast float %3444, 2.000000e+00
  %3447 = fadd fast float %3446, -1.000000e+00
  %3448 = fmul fast float %3445, 2.000000e+00
  %3449 = fadd fast float %3448, -1.000000e+00
  %3450 = fadd fast float %3447, %3449
  %3451 = fmul fast float %3450, 5.000000e-01
  %3452 = fsub fast float %3447, %3449
  %3453 = fmul fast float %3452, 5.000000e-01
  %3454 = call float @dx.op.unary.f32(i32 6, float %3451)  ; FAbs(value)
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = call float @dx.op.unary.f32(i32 6, float %3453)  ; FAbs(value)
  %3457 = fsub fast float %3455, %3456
  %3458 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3453, float %3457, float %3451, float %3453, float %3457)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = call float @dx.op.unary.f32(i32 25, float %3458)  ; Rsqrt(value)
  %3460 = fmul fast float %3451, %3459
  %3461 = fmul fast float %3453, %3459
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 67108864
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3482, label %3466

; <label>:3466                                    ; preds = %3414
  %3467 = add i32 %57, 328
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 65535
  %3471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3470)  ; LegacyF16ToF32(value)
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 65535
  %3475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3474)  ; LegacyF16ToF32(value)
  %3476 = lshr i32 %3469, 16
  %3477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3476)  ; LegacyF16ToF32(value)
  %3478 = fsub fast float %3439, %3477
  %3479 = fmul fast float %3478, %3471
  %3480 = fadd fast float %3479, %3475
  %3481 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  br label %3482

; <label>:3482                                    ; preds = %3466, %3414
  %3483 = phi float [ %3481, %3466 ], [ %3439, %3414 ]
  %3484 = call float @dx.op.dot2.f32(i32 54, float %3460, float %3461, float %3018, float %3019)  ; Dot2(ax,ay,bx,by)
  %3485 = call float @dx.op.dot2.f32(i32 54, float %3460, float %3461, float %3020, float %3021)  ; Dot2(ax,ay,bx,by)
  br label %3486

; <label>:3486                                    ; preds = %3482, %3392
  %3487 = phi float [ %3483, %3482 ], [ 0x3FD6666660000000, %3392 ]
  %3488 = phi float [ %3484, %3482 ], [ 0.000000e+00, %3392 ]
  %3489 = phi float [ %3485, %3482 ], [ 0.000000e+00, %3392 ]
  %3490 = phi float [ %3426, %3482 ], [ 1.000000e+00, %3392 ]
  %3491 = add i32 %57, 208
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = lshr i32 %3493, 22
  %3495 = shl nuw nsw i32 %3494, 5
  %3496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3495)  ; LegacyF16ToF32(value)
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %3498, 64
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3534, label %3501

; <label>:3501                                    ; preds = %3486
  %3502 = add i32 %57, 436
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = add i32 %3504, 0
  %3506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 131072
  %3510 = icmp eq i32 %3509, 0
  %3511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3506, %dx.types.Handle %109, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = fmul fast float %3512, %411
  %3516 = fmul fast float %3513, %414
  %3517 = fmul fast float %3514, %417
  br i1 %3510, label %3524, label %3518

; <label>:3518                                    ; preds = %3501
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = fmul fast float %3520, %3515
  %3522 = fmul fast float %3520, %3516
  %3523 = fmul fast float %3520, %3517
  br label %3524

; <label>:3524                                    ; preds = %3518, %3501
  %3525 = phi float [ %3521, %3518 ], [ %3515, %3501 ]
  %3526 = phi float [ %3522, %3518 ], [ %3516, %3501 ]
  %3527 = phi float [ %3523, %3518 ], [ %3517, %3501 ]
  %3528 = fmul fast float %3525, %3496
  %3529 = select i1 %268, float %3528, float %3525
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3529, float %3526, float %3527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = select i1 %268, float 0.000000e+00, float %3525
  %3532 = select i1 %268, float %3530, float %3526
  %3533 = select i1 %268, float 0.000000e+00, float %3527
  br label %3534

; <label>:3534                                    ; preds = %3524, %3486
  %3535 = phi float [ %3531, %3524 ], [ 0.000000e+00, %3486 ]
  %3536 = phi float [ %3532, %3524 ], [ 0.000000e+00, %3486 ]
  %3537 = phi float [ %3533, %3524 ], [ 0.000000e+00, %3486 ]
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 1024
  %3541 = icmp eq i32 %3540, 0
  br i1 %3541, label %3572, label %3542

; <label>:3542                                    ; preds = %3534
  %3543 = add i32 %57, 200
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = and i32 %3545, 255
  %3547 = uitofp i32 %3546 to float
  %3548 = fmul fast float %3547, 0x3F70101020000000
  %3549 = lshr i32 %3545, 8
  %3550 = and i32 %3549, 255
  %3551 = uitofp i32 %3550 to float
  %3552 = fmul fast float %3551, 0x3F70101020000000
  %3553 = lshr i32 %3545, 16
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = fmul fast float %3555, 0x3F70101020000000
  %3557 = fmul fast float %3548, %3548
  %3558 = fmul fast float %3552, %3552
  %3559 = fmul fast float %3556, %3556
  %3560 = add i32 %57, 504
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = add i32 %3562, 0
  %3564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3564, %dx.types.Handle %110, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3567 = extractvalue %dx.types.ResRet.f32 %3565, 1
  %3568 = extractvalue %dx.types.ResRet.f32 %3565, 2
  %3569 = fmul fast float %3557, %3566
  %3570 = fmul fast float %3558, %3567
  %3571 = fmul fast float %3559, %3568
  br label %3572

; <label>:3572                                    ; preds = %3542, %3534
  %3573 = phi float [ %3569, %3542 ], [ 0.000000e+00, %3534 ]
  %3574 = phi float [ %3570, %3542 ], [ 0.000000e+00, %3534 ]
  %3575 = phi float [ %3571, %3542 ], [ 0.000000e+00, %3534 ]
  %3576 = fcmp fast ogt float %3573, 0.000000e+00
  %3577 = fcmp fast ogt float %3574, 0.000000e+00
  %3578 = fcmp fast ogt float %3575, 0.000000e+00
  %3579 = call float @dx.op.unary.f32(i32 23, float %3573)  ; Log(value)
  %3580 = call float @dx.op.unary.f32(i32 23, float %3574)  ; Log(value)
  %3581 = call float @dx.op.unary.f32(i32 23, float %3575)  ; Log(value)
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = lshr i32 %3583, 7
  %3585 = and i32 %3584, 32752
  %3586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3585)  ; LegacyF16ToF32(value)
  %3587 = fmul fast float %3579, 0xBFE62E4300000000
  %3588 = fmul fast float %3587, %3586
  %3589 = fmul fast float %3580, 0xBFE62E4300000000
  %3590 = fmul fast float %3589, %3586
  %3591 = fmul fast float %3581, 0xBFE62E4300000000
  %3592 = fmul fast float %3591, %3586
  %3593 = select i1 %3576, float %3588, float 1.270000e+02
  %3594 = select i1 %3577, float %3590, float 1.270000e+02
  %3595 = select i1 %3578, float %3592, float 1.270000e+02
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = and i32 %3597, 26624
  %3599 = icmp eq i32 %3598, 0
  br i1 %3599, label %3636, label %3600

; <label>:3600                                    ; preds = %3572
  %3601 = add i32 %57, 520
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = add i32 %3603, 0
  %3605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3605, %dx.types.Handle %110, float %3114, float %3115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = and i32 %3609, 1048576
  %3611 = icmp ne i32 %3610, 0
  %3612 = and i32 %3609, 2048
  %3613 = icmp eq i32 %3612, 0
  br i1 %3613, label %3623, label %3614

; <label>:3614                                    ; preds = %3600
  %3615 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = shl i32 %3617, 4
  %3619 = and i32 %3618, 32752
  %3620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3619)  ; LegacyF16ToF32(value)
  %3621 = fmul fast float %3620, %3615
  %3622 = call float @dx.op.binary.f32(i32 35, float %3621, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3623

; <label>:3623                                    ; preds = %3614, %3600
  %3624 = phi float [ %3622, %3614 ], [ 0x3F70101020000000, %3600 ]
  %3625 = and i32 %3609, 16384
  %3626 = icmp eq i32 %3625, 0
  br i1 %3626, label %3636, label %3627

; <label>:3627                                    ; preds = %3623
  %3628 = add i32 %57, 144
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = lshr i32 %3630, 24
  %3632 = uitofp i32 %3631 to float
  %3633 = fmul fast float %3607, 0x3F70101020000000
  %3634 = select i1 %3611, float 0x3F70101020000000, float %3633
  %3635 = fmul fast float %3634, %3632
  br label %3636

; <label>:3636                                    ; preds = %3627, %3623, %3572
  %3637 = phi float [ %3624, %3627 ], [ %3624, %3623 ], [ 0x3F70101020000000, %3572 ]
  %3638 = phi float [ %3635, %3627 ], [ 0.000000e+00, %3623 ], [ 0.000000e+00, %3572 ]
  %3639 = add i32 %57, 144
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = lshr i32 %3641, 8
  %3645 = and i32 %3644, 255
  %3646 = uitofp i32 %3645 to float
  %3647 = call float @dx.op.dot3.f32(i32 55, float %3407, float %3408, float %3409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3648 = fmul fast float %3646, %3647
  %3649 = fadd fast float %3648, %3643
  %3650 = fmul fast float %3649, 0x3F70101020000000
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  br i1 %3006, label %3652, label %3687

; <label>:3652                                    ; preds = %3636
  %3653 = fmul fast float %3637, 2.000000e+00
  %3654 = fcmp fast olt float %3593, 1.270000e+02
  %3655 = fcmp fast olt float %3594, 1.270000e+02
  %3656 = fcmp fast olt float %3595, 1.270000e+02
  %3657 = fmul fast float %3593, 0xBFF7154760000000
  %3658 = fmul fast float %3657, %3653
  %3659 = fmul fast float %3594, 0xBFF7154760000000
  %3660 = fmul fast float %3659, %3653
  %3661 = fmul fast float %3595, 0xBFF7154760000000
  %3662 = fmul fast float %3661, %3653
  %3663 = call float @dx.op.unary.f32(i32 21, float %3658)  ; Exp(value)
  %3664 = call float @dx.op.unary.f32(i32 21, float %3660)  ; Exp(value)
  %3665 = call float @dx.op.unary.f32(i32 21, float %3662)  ; Exp(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3669 = fadd fast float %3666, -1.000000e+00
  %3670 = select i1 %3654, float %3669, float -1.000000e+00
  %3671 = fadd fast float %3667, -1.000000e+00
  %3672 = select i1 %3655, float %3671, float -1.000000e+00
  %3673 = fadd fast float %3668, -1.000000e+00
  %3674 = select i1 %3656, float %3673, float -1.000000e+00
  %3675 = fmul fast float %3670, %3187
  %3676 = fmul fast float %3672, %3187
  %3677 = fmul fast float %3674, %3187
  %3678 = fadd fast float %3675, 1.000000e+00
  %3679 = fadd fast float %3676, 1.000000e+00
  %3680 = fadd fast float %3677, 1.000000e+00
  %3681 = fmul fast float %3678, %2993
  %3682 = fmul fast float %3679, %2994
  %3683 = fmul fast float %3680, %2995
  %3684 = fmul fast float %3678, %2996
  %3685 = fmul fast float %3679, %2997
  %3686 = fmul fast float %3680, %2998
  br label %3687

; <label>:3687                                    ; preds = %3652, %3636
  %3688 = phi float [ %3681, %3652 ], [ %2993, %3636 ]
  %3689 = phi float [ %3682, %3652 ], [ %2994, %3636 ]
  %3690 = phi float [ %3683, %3652 ], [ %2995, %3636 ]
  %3691 = phi float [ %3684, %3652 ], [ %2996, %3636 ]
  %3692 = phi float [ %3685, %3652 ], [ %2997, %3636 ]
  %3693 = phi float [ %3686, %3652 ], [ %2998, %3636 ]
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 3
  %3697 = icmp eq i32 %3696, 3
  br i1 %3697, label %3776, label %3698

; <label>:3698                                    ; preds = %3687
  %3699 = and i32 %3695, 16
  %3700 = icmp ne i32 %3699, 0
  %3701 = select i1 %3700, float %3187, float 0.000000e+00
  %3702 = icmp eq i32 %3696, 0
  br i1 %3702, label %3703, label %3731

; <label>:3703                                    ; preds = %3698
  %3704 = and i32 %3695, 64
  %3705 = icmp ne i32 %3704, 0
  %3706 = select i1 %3705, float %3187, float 0.000000e+00
  %3707 = fsub fast float %3407, %3688
  %3708 = fsub fast float %3408, %3689
  %3709 = fsub fast float %3409, %3690
  %3710 = fmul fast float %3701, %3707
  %3711 = fmul fast float %3701, %3708
  %3712 = fmul fast float %3701, %3709
  %3713 = fadd fast float %3710, %3688
  %3714 = fadd fast float %3711, %3689
  %3715 = fadd fast float %3712, %3690
  %3716 = fsub fast float %3393, %2999
  %3717 = fmul fast float %3701, %3716
  %3718 = fadd fast float %3717, %2999
  %3719 = fsub fast float %3535, %3691
  %3720 = fsub fast float %3536, %3692
  %3721 = fsub fast float %3537, %3693
  %3722 = fmul fast float %3706, %3719
  %3723 = fmul fast float %3706, %3720
  %3724 = fmul fast float %3706, %3721
  %3725 = fadd fast float %3722, %3691
  %3726 = fadd fast float %3723, %3692
  %3727 = fadd fast float %3724, %3693
  %3728 = fsub fast float %3651, %3004
  %3729 = fmul fast float %3701, %3728
  %3730 = fadd fast float %3729, %3004
  br label %3776

; <label>:3731                                    ; preds = %3698
  %3732 = icmp eq i32 %3696, 1
  br i1 %3732, label %3733, label %3746

; <label>:3733                                    ; preds = %3731
  %3734 = fadd fast float %3407, -1.000000e+00
  %3735 = fadd fast float %3408, -1.000000e+00
  %3736 = fadd fast float %3409, -1.000000e+00
  %3737 = fmul fast float %3701, %3734
  %3738 = fmul fast float %3701, %3735
  %3739 = fmul fast float %3701, %3736
  %3740 = fadd fast float %3737, 1.000000e+00
  %3741 = fadd fast float %3738, 1.000000e+00
  %3742 = fadd fast float %3739, 1.000000e+00
  %3743 = fmul fast float %3740, %3688
  %3744 = fmul fast float %3741, %3689
  %3745 = fmul fast float %3742, %3690
  br label %3776

; <label>:3746                                    ; preds = %3731
  %3747 = icmp eq i32 %3696, 2
  br i1 %3747, label %3748, label %3776

; <label>:3748                                    ; preds = %3746
  %3749 = call float @dx.op.unary.f32(i32 24, float %3407)  ; Sqrt(value)
  %3750 = call float @dx.op.unary.f32(i32 24, float %3408)  ; Sqrt(value)
  %3751 = call float @dx.op.unary.f32(i32 24, float %3409)  ; Sqrt(value)
  %3752 = fadd fast float %3749, -5.000000e-01
  %3753 = fadd fast float %3750, -5.000000e-01
  %3754 = fadd fast float %3751, -5.000000e-01
  %3755 = fmul fast float %3752, %3701
  %3756 = fmul fast float %3753, %3701
  %3757 = fmul fast float %3754, %3701
  %3758 = fadd fast float %3755, 5.000000e-01
  %3759 = fadd fast float %3756, 5.000000e-01
  %3760 = fadd fast float %3757, 5.000000e-01
  %3761 = fmul fast float %3758, 2.000000e+00
  %3762 = fsub fast float 1.000000e+00, %3761
  %3763 = fmul fast float %3762, %3688
  %3764 = fadd fast float %3763, %3761
  %3765 = fmul fast float %3764, %3688
  %3766 = fmul fast float %3759, 2.000000e+00
  %3767 = fsub fast float 1.000000e+00, %3766
  %3768 = fmul fast float %3767, %3689
  %3769 = fadd fast float %3768, %3766
  %3770 = fmul fast float %3769, %3689
  %3771 = fmul fast float %3760, 2.000000e+00
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = fmul fast float %3772, %3690
  %3774 = fadd fast float %3773, %3771
  %3775 = fmul fast float %3774, %3690
  br label %3776

; <label>:3776                                    ; preds = %3748, %3746, %3733, %3703, %3687
  %3777 = phi float [ %3688, %3687 ], [ %3765, %3748 ], [ %3688, %3746 ], [ %3743, %3733 ], [ %3713, %3703 ]
  %3778 = phi float [ %3689, %3687 ], [ %3770, %3748 ], [ %3689, %3746 ], [ %3744, %3733 ], [ %3714, %3703 ]
  %3779 = phi float [ %3690, %3687 ], [ %3775, %3748 ], [ %3690, %3746 ], [ %3745, %3733 ], [ %3715, %3703 ]
  %3780 = phi float [ %3691, %3687 ], [ %3691, %3748 ], [ %3691, %3746 ], [ %3691, %3733 ], [ %3725, %3703 ]
  %3781 = phi float [ %3692, %3687 ], [ %3692, %3748 ], [ %3692, %3746 ], [ %3692, %3733 ], [ %3726, %3703 ]
  %3782 = phi float [ %3693, %3687 ], [ %3693, %3748 ], [ %3693, %3746 ], [ %3693, %3733 ], [ %3727, %3703 ]
  %3783 = phi float [ %2999, %3687 ], [ %2999, %3748 ], [ %2999, %3746 ], [ %2999, %3733 ], [ %3718, %3703 ]
  %3784 = phi float [ %3004, %3687 ], [ %3004, %3748 ], [ %3004, %3746 ], [ %3004, %3733 ], [ %3730, %3703 ]
  %3785 = and i32 %3695, 12
  %3786 = icmp eq i32 %3785, 12
  br i1 %3786, label %3903, label %3787

; <label>:3787                                    ; preds = %3776
  %3788 = and i32 %3695, 2097184
  %3789 = icmp eq i32 %3788, 2097184
  %3790 = select i1 %3789, float %3187, float 0.000000e+00
  %3791 = and i32 %3695, 4194336
  %3792 = icmp eq i32 %3791, 4194336
  %3793 = select i1 %3792, float %3187, float 0.000000e+00
  %3794 = and i32 %3695, 8388640
  %3795 = icmp eq i32 %3794, 8388640
  %3796 = select i1 %3795, float %3187, float 0.000000e+00
  %3797 = and i32 %3695, 1024
  %3798 = icmp ne i32 %3797, 0
  %3799 = select i1 %3798, float %3187, float 0.000000e+00
  %3800 = and i32 %3695, 2048
  %3801 = icmp ne i32 %3800, 0
  %3802 = select i1 %3801, float %3187, float 0.000000e+00
  %3803 = and i32 %3695, 16384
  %3804 = icmp ne i32 %3803, 0
  %3805 = select i1 %3804, float %3187, float 0.000000e+00
  %3806 = icmp eq i32 %3785, 0
  br i1 %3806, label %3807, label %3835

; <label>:3807                                    ; preds = %3787
  %3808 = fsub fast float %3488, %2988
  %3809 = fsub fast float %3489, %2989
  %3810 = fmul fast float %3790, %3808
  %3811 = fmul fast float %3790, %3809
  %3812 = fadd fast float %3810, %2988
  %3813 = fadd fast float %3811, %2989
  %3814 = fsub fast float %3490, %3001
  %3815 = fmul fast float %3793, %3814
  %3816 = fadd fast float %3815, %3001
  %3817 = fsub fast float %3487, %3000
  %3818 = fmul fast float %3796, %3817
  %3819 = fadd fast float %3818, %3000
  %3820 = fsub fast float %3593, %2990
  %3821 = fsub fast float %3594, %2991
  %3822 = fsub fast float %3595, %2992
  %3823 = fmul fast float %3799, %3820
  %3824 = fmul fast float %3799, %3821
  %3825 = fmul fast float %3799, %3822
  %3826 = fadd fast float %3823, %2990
  %3827 = fadd fast float %3824, %2991
  %3828 = fadd fast float %3825, %2992
  %3829 = fsub fast float %3637, %3002
  %3830 = fmul fast float %3802, %3829
  %3831 = fadd fast float %3830, %3002
  %3832 = fsub fast float %3638, %3003
  %3833 = fmul fast float %3805, %3832
  %3834 = fadd fast float %3833, %3003
  br label %3903

; <label>:3835                                    ; preds = %3787
  %3836 = icmp eq i32 %3785, 4
  br i1 %3836, label %3837, label %3879

; <label>:3837                                    ; preds = %3835
  %3838 = fmul fast float %3790, %3488
  %3839 = fmul fast float %3790, %3489
  %3840 = fadd fast float %3838, %2988
  %3841 = fadd fast float %3839, %2989
  %3842 = call float @dx.op.binary.f32(i32 36, float %3001, float %3490)  ; FMin(a,b)
  %3843 = fsub fast float %3842, %3001
  %3844 = fmul fast float %3843, %3793
  %3845 = fadd fast float %3844, %3001
  %3846 = fadd fast float %3487, %3000
  %3847 = fmul fast float %3846, 0x3FF337FAE0000000
  %3848 = fmul fast float %3000, %3000
  %3849 = fmul fast float %3487, %3487
  %3850 = fadd fast float %3849, %3848
  %3851 = fmul fast float %3850, 0x3FE5152B00000000
  %3852 = fmul fast float %3000, 0xBFCC1F85E0000000
  %3853 = fmul fast float %3852, %3487
  %3854 = fadd fast float %3853, 0xBFE1363700000000
  %3855 = fadd fast float %3854, %3847
  %3856 = fsub fast float %3855, %3851
  %3857 = fmul fast float %3846, 0x3FBA6F0D00000000
  %3858 = fmul fast float %3850, 0x3FD0432880000000
  %3859 = fmul fast float %3000, 0xBFEF110800000000
  %3860 = fmul fast float %3859, %3487
  %3861 = fadd fast float %3860, 1.000000e+00
  %3862 = fsub fast float %3861, %3857
  %3863 = fadd fast float %3862, %3858
  %3864 = fdiv fast float %3856, %3863
  %3865 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3866 = fsub fast float %3865, %3000
  %3867 = fmul fast float %3866, %3796
  %3868 = fadd fast float %3867, %3000
  %3869 = fmul fast float %3799, %3593
  %3870 = fmul fast float %3799, %3594
  %3871 = fmul fast float %3799, %3595
  %3872 = fadd fast float %3869, %2990
  %3873 = fadd fast float %3870, %2991
  %3874 = fadd fast float %3871, %2992
  %3875 = fmul fast float %3802, %3637
  %3876 = fadd fast float %3875, %3002
  %3877 = fmul fast float %3805, %3638
  %3878 = fadd fast float %3877, %3003
  br label %3903

; <label>:3879                                    ; preds = %3835
  %3880 = icmp eq i32 %3785, 8
  br i1 %3880, label %3881, label %3903

; <label>:3881                                    ; preds = %3879
  %3882 = fmul fast float %3790, %3488
  %3883 = fmul fast float %3790, %3489
  %3884 = fadd fast float %3882, %2988
  %3885 = fadd fast float %3883, %2989
  %3886 = call float @dx.op.binary.f32(i32 36, float %3001, float %3490)  ; FMin(a,b)
  %3887 = fsub fast float %3886, %3001
  %3888 = fmul fast float %3887, %3793
  %3889 = fadd fast float %3888, %3001
  %3890 = fsub fast float %3487, %3000
  %3891 = fmul fast float %3796, %3890
  %3892 = fadd fast float %3891, %3000
  %3893 = fmul fast float %3799, %3593
  %3894 = fmul fast float %3799, %3594
  %3895 = fmul fast float %3799, %3595
  %3896 = fadd fast float %3893, %2990
  %3897 = fadd fast float %3894, %2991
  %3898 = fadd fast float %3895, %2992
  %3899 = fmul fast float %3802, %3637
  %3900 = fadd fast float %3899, %3002
  %3901 = fmul fast float %3805, %3638
  %3902 = fadd fast float %3901, %3003
  br label %3903

; <label>:3903                                    ; preds = %3881, %3879, %3837, %3807, %3776, %3186, %3005, %2987
  %3904 = phi float [ %2988, %3776 ], [ %2988, %3186 ], [ %2988, %2987 ], [ %2988, %3005 ], [ %3812, %3807 ], [ %3840, %3837 ], [ %2988, %3879 ], [ %3884, %3881 ]
  %3905 = phi float [ %2989, %3776 ], [ %2989, %3186 ], [ %2989, %2987 ], [ %2989, %3005 ], [ %3813, %3807 ], [ %3841, %3837 ], [ %2989, %3879 ], [ %3885, %3881 ]
  %3906 = phi float [ %2990, %3776 ], [ %2990, %3186 ], [ %2990, %2987 ], [ %2990, %3005 ], [ %3826, %3807 ], [ %3872, %3837 ], [ %2990, %3879 ], [ %3896, %3881 ]
  %3907 = phi float [ %2991, %3776 ], [ %2991, %3186 ], [ %2991, %2987 ], [ %2991, %3005 ], [ %3827, %3807 ], [ %3873, %3837 ], [ %2991, %3879 ], [ %3897, %3881 ]
  %3908 = phi float [ %2992, %3776 ], [ %2992, %3186 ], [ %2992, %2987 ], [ %2992, %3005 ], [ %3828, %3807 ], [ %3874, %3837 ], [ %2992, %3879 ], [ %3898, %3881 ]
  %3909 = phi float [ %3777, %3776 ], [ %2993, %3186 ], [ %2993, %2987 ], [ %2993, %3005 ], [ %3777, %3807 ], [ %3777, %3837 ], [ %3777, %3879 ], [ %3777, %3881 ]
  %3910 = phi float [ %3778, %3776 ], [ %2994, %3186 ], [ %2994, %2987 ], [ %2994, %3005 ], [ %3778, %3807 ], [ %3778, %3837 ], [ %3778, %3879 ], [ %3778, %3881 ]
  %3911 = phi float [ %3779, %3776 ], [ %2995, %3186 ], [ %2995, %2987 ], [ %2995, %3005 ], [ %3779, %3807 ], [ %3779, %3837 ], [ %3779, %3879 ], [ %3779, %3881 ]
  %3912 = phi float [ %3780, %3776 ], [ %2996, %3186 ], [ %2996, %2987 ], [ %2996, %3005 ], [ %3780, %3807 ], [ %3780, %3837 ], [ %3780, %3879 ], [ %3780, %3881 ]
  %3913 = phi float [ %3781, %3776 ], [ %2997, %3186 ], [ %2997, %2987 ], [ %2997, %3005 ], [ %3781, %3807 ], [ %3781, %3837 ], [ %3781, %3879 ], [ %3781, %3881 ]
  %3914 = phi float [ %3782, %3776 ], [ %2998, %3186 ], [ %2998, %2987 ], [ %2998, %3005 ], [ %3782, %3807 ], [ %3782, %3837 ], [ %3782, %3879 ], [ %3782, %3881 ]
  %3915 = phi float [ %3783, %3776 ], [ %2999, %3186 ], [ %2999, %2987 ], [ %2999, %3005 ], [ %3783, %3807 ], [ %3783, %3837 ], [ %3783, %3879 ], [ %3783, %3881 ]
  %3916 = phi float [ %3000, %3776 ], [ %3000, %3186 ], [ %3000, %2987 ], [ %3000, %3005 ], [ %3819, %3807 ], [ %3868, %3837 ], [ %3000, %3879 ], [ %3892, %3881 ]
  %3917 = phi float [ %3001, %3776 ], [ %3001, %3186 ], [ %3001, %2987 ], [ %3001, %3005 ], [ %3816, %3807 ], [ %3845, %3837 ], [ %3001, %3879 ], [ %3889, %3881 ]
  %3918 = phi float [ %3002, %3776 ], [ %3002, %3186 ], [ %3002, %2987 ], [ %3002, %3005 ], [ %3831, %3807 ], [ %3876, %3837 ], [ %3002, %3879 ], [ %3900, %3881 ]
  %3919 = phi float [ %3003, %3776 ], [ %3003, %3186 ], [ %3003, %2987 ], [ %3003, %3005 ], [ %3834, %3807 ], [ %3878, %3837 ], [ %3003, %3879 ], [ %3902, %3881 ]
  %3920 = phi float [ %3784, %3776 ], [ %3004, %3186 ], [ %3004, %2987 ], [ %3004, %3005 ], [ %3784, %3807 ], [ %3784, %3837 ], [ %3784, %3879 ], [ %3784, %3881 ]
  %3921 = add i32 %57, 376
  %3922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.i32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.i32 %3922, 1
  %3925 = bitcast i32 %3923 to float
  %3926 = bitcast i32 %3924 to float
  %3927 = fcmp fast oge float %3925, 0.000000e+00
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = select i1 %3927, float %3925, float %3929
  %3931 = fadd fast float %3930, %210
  %3932 = fmul fast float %3926, %211
  %3933 = add i32 %57, 472
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = add i32 %3935, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3937, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = fmul fast float %3932, %3939
  %3941 = fadd fast float %3931, %3940
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3944 = and i32 %202, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = lshr i32 %202, 16
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = and i32 %203, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = fmul fast float %3945, %3909
  %3951 = fmul fast float %3947, %3910
  %3952 = fmul fast float %3949, %3911
  %3953 = shl i32 %204, 4
  %3954 = and i32 %3953, 32752
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = lshr i32 %204, 7
  %3957 = and i32 %3956, 32752
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = lshr i32 %204, 22
  %3960 = shl nuw nsw i32 %3959, 5
  %3961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3960)  ; LegacyF16ToF32(value)
  %3962 = and i32 %205, 65535
  %3963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3962)  ; LegacyF16ToF32(value)
  %3964 = fmul fast float %3943, %3912
  %3965 = fmul fast float %3964, %3955
  %3966 = fmul fast float %3965, %3963
  %3967 = fmul fast float %3943, %3913
  %3968 = fmul fast float %3967, %3958
  %3969 = fmul fast float %3968, %3963
  %3970 = fmul fast float %3943, %3914
  %3971 = fmul fast float %3970, %3961
  %3972 = fmul fast float %3971, %3963
  %3973 = call float @dx.op.dot2.f32(i32 54, float %3904, float %3905, float %3904, float %3905)  ; Dot2(ax,ay,bx,by)
  %3974 = fmul fast float %3973, 0x3FE3333340000000
  %3975 = fsub fast float 1.000000e+00, %3974
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3975, float %3904, float %3905, float %3975)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.unary.f32(i32 25, float %3976)  ; Rsqrt(value)
  %3978 = fmul fast float %3977, %3904
  %3979 = fmul fast float %3977, %3905
  %3980 = fmul fast float %3975, %3977
  %3981 = fmul fast float %3980, %122
  %3982 = fmul fast float %3980, %124
  %3983 = fmul fast float %3980, %126
  %3984 = fmul fast float %3978, %88
  %3985 = fmul fast float %3978, %89
  %3986 = fmul fast float %3978, %90
  %3987 = fadd fast float %3981, %3984
  %3988 = fadd fast float %3982, %3985
  %3989 = fadd fast float %3983, %3986
  %3990 = fmul fast float %136, %3979
  %3991 = fmul fast float %137, %3979
  %3992 = fmul fast float %138, %3979
  %3993 = fadd fast float %3987, %3990
  %3994 = fadd fast float %3988, %3991
  %3995 = fadd fast float %3989, %3992
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3994, float %3995, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.unary.f32(i32 25, float %3996)  ; Rsqrt(value)
  %3998 = fmul fast float %3993, %3997
  %3999 = fmul fast float %3994, %3997
  %4000 = fmul fast float %3995, %3997
  %4001 = icmp eq i32 %59, 65535
  br i1 %4001, label %4551, label %4002

; <label>:4002                                    ; preds = %3903
  %4003 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4004 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %4005 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4006 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4007 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %4008 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4009 = fadd fast float %4003, %60
  %4010 = fadd fast float %4004, %61
  %4011 = fadd fast float %4005, %62
  %4012 = fadd fast float %4006, %60
  %4013 = fadd fast float %4007, %61
  %4014 = fadd fast float %4008, %62
  %4015 = mul i32 %59, 48
  %4016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = add i32 %4015, 16
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = add i32 %4015, 32
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4031 = bitcast float %4030 to i32
  %4032 = fmul fast float %4017, %60
  %4033 = fmul fast float %4018, %61
  %4034 = fmul fast float %4019, %62
  %4035 = fsub fast float %4032, %4022
  %4036 = fsub fast float %4033, %4023
  %4037 = fsub fast float %4034, %4024
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = fmul fast float %4038, %4027
  %4042 = fmul fast float %4039, %4028
  %4043 = fmul fast float %4040, %4029
  %4044 = fadd fast float %4027, -1.000000e+00
  %4045 = fadd fast float %4028, -1.000000e+00
  %4046 = fadd fast float %4029, -1.000000e+00
  %4047 = call float @dx.op.unary.f32(i32 27, float %4041)  ; Round_ni(value)
  %4048 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4049 = call float @dx.op.unary.f32(i32 27, float %4043)  ; Round_ni(value)
  %4050 = call float @dx.op.binary.f32(i32 36, float %4047, float %4044)  ; FMin(a,b)
  %4051 = call float @dx.op.binary.f32(i32 36, float %4048, float %4045)  ; FMin(a,b)
  %4052 = call float @dx.op.binary.f32(i32 36, float %4049, float %4046)  ; FMin(a,b)
  %4053 = fmul fast float %4052, %4028
  %4054 = fadd fast float %4053, %4051
  %4055 = fmul fast float %4054, %4027
  %4056 = fadd fast float %4055, %4050
  %4057 = fptosi float %4056 to i32
  %4058 = add nsw i32 %4057, %4031
  %4059 = shl nsw i32 %4058, 2
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = lshr i32 %4061, 16
  %4063 = icmp eq i32 %4062, 0
  br i1 %4063, label %4516, label %4064

; <label>:4064                                    ; preds = %4002
  br label %4065

; <label>:4065                                    ; preds = %4190, %4064
  %4066 = phi i32 [ %4092, %4190 ], [ %4062, %4064 ]
  %4067 = phi float [ %4191, %4190 ], [ 0.000000e+00, %4064 ]
  %4068 = phi float [ %4192, %4190 ], [ %1167, %4064 ]
  %4069 = phi float [ %4193, %4190 ], [ %3941, %4064 ]
  %4070 = phi float [ %4194, %4190 ], [ %3920, %4064 ]
  %4071 = phi float [ %4195, %4190 ], [ %3906, %4064 ]
  %4072 = phi float [ %4196, %4190 ], [ %3907, %4064 ]
  %4073 = phi float [ %4197, %4190 ], [ %3908, %4064 ]
  %4074 = phi float [ %4198, %4190 ], [ %3919, %4064 ]
  %4075 = phi float [ %4199, %4190 ], [ 0.000000e+00, %4064 ]
  %4076 = phi float [ %4200, %4190 ], [ %3966, %4064 ]
  %4077 = phi float [ %4201, %4190 ], [ %3969, %4064 ]
  %4078 = phi float [ %4202, %4190 ], [ %3972, %4064 ]
  %4079 = phi float [ %4203, %4190 ], [ %3998, %4064 ]
  %4080 = phi float [ %4204, %4190 ], [ %3999, %4064 ]
  %4081 = phi float [ %4205, %4190 ], [ %4000, %4064 ]
  %4082 = phi float [ %4206, %4190 ], [ %3917, %4064 ]
  %4083 = phi float [ %4207, %4190 ], [ %3916, %4064 ]
  %4084 = phi float [ %4208, %4190 ], [ 0.000000e+00, %4064 ]
  %4085 = phi float [ %4209, %4190 ], [ %3915, %4064 ]
  %4086 = phi float [ %4210, %4190 ], [ %3950, %4064 ]
  %4087 = phi float [ %4211, %4190 ], [ %3951, %4064 ]
  %4088 = phi float [ %4212, %4190 ], [ %3952, %4064 ]
  %4089 = shl nuw nsw i32 %4066, 2
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = lshr i32 %4091, 16
  %4093 = shl i32 %4091, 8
  %4094 = and i32 %4093, 16776960
  %4095 = or i32 %4094, 48
  %4096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  %4100 = or i32 %4094, 64
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.i32 %4101, 1
  %4104 = or i32 %4094, 80
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 3
  %4108 = or i32 %4094, 96
  %4109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = extractvalue %dx.types.ResRet.f32 %4109, 3
  %4114 = or i32 %4094, 112
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4117 = or i32 %4094, 128
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = extractvalue %dx.types.ResRet.f32 %4118, 3
  %4123 = or i32 %4094, 144
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = extractvalue %dx.types.ResRet.f32 %4124, 3
  %4129 = or i32 %4094, 160
  %4130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4130, 3
  %4135 = or i32 %4094, 192
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = or i32 %4094, 208
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = or i32 %4094, 248
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4150 = call float @dx.op.dot4.f32(i32 56, float %4146, float %4147, float %4148, float %4149, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4151 = or i32 %4094, 16
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = call float @dx.op.dot4.f32(i32 56, float %4153, float %4154, float %4155, float %4156, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4158 = or i32 %4094, 32
  %4159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4163 = extractvalue %dx.types.ResRet.f32 %4159, 3
  %4164 = call float @dx.op.dot4.f32(i32 56, float %4160, float %4161, float %4162, float %4163, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4165 = call float @dx.op.unary.f32(i32 27, float %4150)  ; Round_ni(value)
  %4166 = call float @dx.op.unary.f32(i32 6, float %4165)  ; FAbs(value)
  %4167 = call float @dx.op.unary.f32(i32 27, float %4157)  ; Round_ni(value)
  %4168 = call float @dx.op.unary.f32(i32 6, float %4167)  ; FAbs(value)
  %4169 = call float @dx.op.unary.f32(i32 6, float %4164)  ; FAbs(value)
  %4170 = call float @dx.op.unary.f32(i32 27, float %4169)  ; Round_ni(value)
  %4171 = fadd fast float %4168, %4166
  %4172 = fadd fast float %4171, %4170
  %4173 = fcmp fast oeq float %4172, 0.000000e+00
  %4174 = call float @dx.op.dot4.f32(i32 56, float %4146, float %4147, float %4148, float %4149, float %4009, float %4010, float %4011, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4175 = call float @dx.op.dot4.f32(i32 56, float %4153, float %4154, float %4155, float %4156, float %4009, float %4010, float %4011, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4176 = call float @dx.op.dot4.f32(i32 56, float %4146, float %4147, float %4148, float %4149, float %4012, float %4013, float %4014, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4177 = call float @dx.op.dot4.f32(i32 56, float %4153, float %4154, float %4155, float %4156, float %4012, float %4013, float %4014, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4178 = fsub fast float %4174, %4150
  %4179 = fsub fast float %4176, %4150
  %4180 = fsub fast float %4175, %4157
  %4181 = fsub fast float %4177, %4157
  %4182 = call float @dx.op.dot3.f32(i32 55, float %4097, float %4098, float %4099, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4185 = fadd fast float %4184, %4182
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4188 = fcmp fast ogt float %4186, %4187
  %4189 = and i1 %4173, %4188
  br i1 %4189, label %4214, label %4190

; <label>:4190                                    ; preds = %4502, %4297, %4214, %4065
  %4191 = phi float [ %4067, %4214 ], [ %4300, %4297 ], [ %4300, %4502 ], [ %4067, %4065 ]
  %4192 = phi float [ %4068, %4214 ], [ %4068, %4297 ], [ %4478, %4502 ], [ %4068, %4065 ]
  %4193 = phi float [ %4069, %4214 ], [ %4069, %4297 ], [ %4477, %4502 ], [ %4069, %4065 ]
  %4194 = phi float [ %4070, %4214 ], [ %4070, %4297 ], [ %4475, %4502 ], [ %4070, %4065 ]
  %4195 = phi float [ %4071, %4214 ], [ %4071, %4297 ], [ %4453, %4502 ], [ %4071, %4065 ]
  %4196 = phi float [ %4072, %4214 ], [ %4072, %4297 ], [ %4454, %4502 ], [ %4072, %4065 ]
  %4197 = phi float [ %4073, %4214 ], [ %4073, %4297 ], [ %4455, %4502 ], [ %4073, %4065 ]
  %4198 = phi float [ %4074, %4214 ], [ %4074, %4297 ], [ %4424, %4502 ], [ %4074, %4065 ]
  %4199 = phi float [ %4075, %4214 ], [ %4075, %4297 ], [ %4422, %4502 ], [ %4075, %4065 ]
  %4200 = phi float [ %4076, %4214 ], [ %4076, %4297 ], [ %4512, %4502 ], [ %4076, %4065 ]
  %4201 = phi float [ %4077, %4214 ], [ %4077, %4297 ], [ %4513, %4502 ], [ %4077, %4065 ]
  %4202 = phi float [ %4078, %4214 ], [ %4078, %4297 ], [ %4514, %4502 ], [ %4078, %4065 ]
  %4203 = phi float [ %4079, %4214 ], [ %4079, %4297 ], [ %4403, %4502 ], [ %4079, %4065 ]
  %4204 = phi float [ %4080, %4214 ], [ %4080, %4297 ], [ %4404, %4502 ], [ %4080, %4065 ]
  %4205 = phi float [ %4081, %4214 ], [ %4081, %4297 ], [ %4405, %4502 ], [ %4081, %4065 ]
  %4206 = phi float [ %4082, %4214 ], [ %4082, %4297 ], [ %4433, %4502 ], [ %4082, %4065 ]
  %4207 = phi float [ %4083, %4214 ], [ %4083, %4297 ], [ %4430, %4502 ], [ %4083, %4065 ]
  %4208 = phi float [ %4084, %4214 ], [ %4084, %4297 ], [ %4427, %4502 ], [ %4084, %4065 ]
  %4209 = phi float [ %4085, %4214 ], [ %4085, %4297 ], [ %4420, %4502 ], [ %4085, %4065 ]
  %4210 = phi float [ %4086, %4214 ], [ %4086, %4297 ], [ %4415, %4502 ], [ %4086, %4065 ]
  %4211 = phi float [ %4087, %4214 ], [ %4087, %4297 ], [ %4416, %4502 ], [ %4087, %4065 ]
  %4212 = phi float [ %4088, %4214 ], [ %4088, %4297 ], [ %4417, %4502 ], [ %4088, %4065 ]
  %4213 = icmp eq i32 %4092, 0
  br i1 %4213, label %4515, label %4065

; <label>:4214                                    ; preds = %4065
  %4215 = extractvalue %dx.types.ResRet.f32 %4096, 3
  %4216 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4217 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4221 = extractvalue %dx.types.ResRet.i32 %4101, 3
  %4222 = extractvalue %dx.types.ResRet.i32 %4101, 2
  %4223 = bitcast float %4215 to i32
  %4224 = add i32 %4221, 0
  %4225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4224, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4227 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4225, %dx.types.Handle %4226, float %4150, float %4157, float undef, float undef, i32 0, i32 0, i32 undef, float %4178, float %4180, float undef, float %4179, float %4181, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = fmul fast float %4228, %4220
  %4230 = fadd fast float %4229, %4219
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = fmul fast float %4150, %4110
  %4233 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4157, float %4232)  ; FMad(a,b,c)
  %4234 = fadd fast float %4233, %4218
  %4235 = fmul fast float %4150, %4112
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4157, float %4235)  ; FMad(a,b,c)
  %4237 = fadd fast float %4236, %4217
  %4238 = fmul fast float %4178, %4110
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4180, float %4238)  ; FMad(a,b,c)
  %4240 = fmul fast float %4178, %4112
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4180, float %4240)  ; FMad(a,b,c)
  %4242 = fmul fast float %4179, %4110
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4181, float %4242)  ; FMad(a,b,c)
  %4244 = fmul fast float %4179, %4112
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4181, float %4244)  ; FMad(a,b,c)
  %4246 = add i32 %4222, 0
  %4247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4246, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4247, %dx.types.Handle %4226, float %4234, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4241, float undef, float %4243, float %4245, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = and i32 %4223, 1024
  %4251 = icmp ne i32 %4250, 0
  %4252 = fcmp fast ogt float %4249, 0x3FE0101020000000
  %4253 = uitofp i1 %4252 to float
  %4254 = select i1 %4251, float %4253, float %4249
  %4255 = and i32 %4223, 8192
  %4256 = icmp ne i32 %4255, 0
  %4257 = select i1 %4256, float %4216, float 1.000000e+00
  %4258 = fmul fast float %4150, 2.000000e+00
  %4259 = fadd fast float %4258, -1.000000e+00
  %4260 = call float @dx.op.unary.f32(i32 6, float %4259)  ; FAbs(value)
  %4261 = fmul fast float %4260, %4143
  %4262 = fsub fast float %4261, %4143
  %4263 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4264 = fmul fast float %4157, 2.000000e+00
  %4265 = fadd fast float %4264, -1.000000e+00
  %4266 = call float @dx.op.unary.f32(i32 6, float %4265)  ; FAbs(value)
  %4267 = fmul fast float %4266, %4144
  %4268 = fsub fast float %4267, %4144
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = fmul fast float %4169, %4106
  %4271 = fsub fast float %4270, %4106
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = fmul fast float %4231, %4257
  %4274 = fmul fast float %4273, %4228
  %4275 = fmul fast float %4274, %4263
  %4276 = fmul fast float %4275, %4254
  %4277 = fmul fast float %4276, %4269
  %4278 = fmul fast float %4277, %4272
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4282 = fsub fast float %4186, %4281
  %4283 = fmul fast float %4282, %4280
  %4284 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4285 = fmul fast float %4278, %4107
  %4286 = fadd fast float %4278, %4107
  %4287 = fmul fast float %4286, %4116
  %4288 = fsub fast float %4287, %4116
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = and i32 %4223, 128
  %4291 = icmp ne i32 %4290, 0
  %4292 = select i1 %4291, float %4289, float %4285
  %4293 = fmul fast float %4292, %4284
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 0
  %4296 = fcmp fast ugt float %4293, %4295
  br i1 %4296, label %4297, label %4190

; <label>:4297                                    ; preds = %4214
  %4298 = select i1 %4256, float %4293, float 0.000000e+00
  %4299 = fadd fast float %4298, %4067
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  br i1 %4256, label %4190, label %4301

; <label>:4301                                    ; preds = %4297
  %4302 = and i32 %4223, 4
  %4303 = and i32 %4223, 8
  %4304 = add i32 %4102, 0
  %4305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4304, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4307 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4305, %dx.types.Handle %4306, float %4234, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4241, float undef, float %4243, float %4245, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4308 = extractvalue %dx.types.ResRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.ResRet.f32 %4307, 1
  %4310 = extractvalue %dx.types.ResRet.f32 %4307, 2
  %4311 = extractvalue %dx.types.ResRet.f32 %4307, 3
  %4312 = bitcast float %4128 to i32
  %4313 = and i32 %4312, 255
  %4314 = uitofp i32 %4313 to float
  %4315 = lshr i32 %4312, 8
  %4316 = and i32 %4315, 255
  %4317 = uitofp i32 %4316 to float
  %4318 = fmul fast float %4311, %4314
  %4319 = fadd fast float %4318, %4317
  %4320 = fmul fast float %4319, 0x3F70101000000000
  %4321 = add i32 %4103, 0
  %4322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4322, %dx.types.Handle %4306, float %4234, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4241, float undef, float %4243, float %4245, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = extractvalue %dx.types.ResRet.f32 %4323, 3
  %4328 = bitcast float %4122 to i32
  %4329 = and i32 %4328, 255
  %4330 = uitofp i32 %4329 to float
  %4331 = lshr i32 %4328, 8
  %4332 = and i32 %4331, 255
  %4333 = uitofp i32 %4332 to float
  %4334 = lshr i32 %4328, 16
  %4335 = and i32 %4334, 255
  %4336 = uitofp i32 %4335 to float
  %4337 = fmul fast float %4336, 0x3F70101000000000
  %4338 = fmul fast float %4324, %4330
  %4339 = fadd fast float %4338, %4333
  %4340 = fmul fast float %4339, 0x3F70101000000000
  %4341 = fadd fast float %4325, -5.000000e-01
  %4342 = fadd fast float %4327, -5.000000e-01
  %4343 = fmul fast float %4341, %4337
  %4344 = fmul fast float %4342, %4337
  %4345 = fadd fast float %4343, 5.000000e-01
  %4346 = fadd fast float %4344, 5.000000e-01
  %4347 = fmul fast float %4308, %4131
  %4348 = fmul fast float %4309, %4132
  %4349 = fmul fast float %4310, %4133
  %4350 = fmul fast float %4345, 2.000000e+00
  %4351 = fadd fast float %4350, -1.000000e+00
  %4352 = fmul fast float %4346, 2.000000e+00
  %4353 = fadd fast float %4352, -1.000000e+00
  %4354 = fadd fast float %4351, %4353
  %4355 = fmul fast float %4354, 5.000000e-01
  %4356 = fsub fast float %4351, %4353
  %4357 = fmul fast float %4356, 5.000000e-01
  %4358 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4359 = fsub fast float 1.000000e+00, %4358
  %4360 = call float @dx.op.unary.f32(i32 6, float %4357)  ; FAbs(value)
  %4361 = fsub fast float %4359, %4360
  %4362 = call float @dx.op.dot3.f32(i32 55, float %4355, float %4357, float %4361, float %4355, float %4357, float %4361)  ; Dot3(ax,ay,az,bx,by,bz)
  %4363 = call float @dx.op.unary.f32(i32 25, float %4362)  ; Rsqrt(value)
  %4364 = fmul fast float %4355, %4363
  %4365 = fmul fast float %4357, %4363
  %4366 = fmul fast float %4363, %4361
  %4367 = fmul fast float %4366, %4097
  %4368 = fmul fast float %4366, %4098
  %4369 = fmul fast float %4366, %4099
  %4370 = fmul fast float %4364, %4119
  %4371 = fmul fast float %4364, %4120
  %4372 = fmul fast float %4364, %4121
  %4373 = fadd fast float %4370, %4367
  %4374 = fadd fast float %4371, %4368
  %4375 = fadd fast float %4372, %4369
  %4376 = fmul fast float %4365, %4125
  %4377 = fmul fast float %4365, %4126
  %4378 = fmul fast float %4365, %4127
  %4379 = fadd fast float %4373, %4376
  %4380 = fadd fast float %4374, %4377
  %4381 = fadd fast float %4375, %4378
  %4382 = call float @dx.op.dot3.f32(i32 55, float %4379, float %4380, float %4381, float %4379, float %4380, float %4381)  ; Dot3(ax,ay,az,bx,by,bz)
  %4383 = call float @dx.op.unary.f32(i32 25, float %4382)  ; Rsqrt(value)
  %4384 = fmul fast float %4379, %4383
  %4385 = fmul fast float %4380, %4383
  %4386 = fmul fast float %4381, %4383
  %4387 = icmp ne i32 %4303, 0
  %4388 = select i1 %4387, float 1.000000e+00, float 0.000000e+00
  %4389 = fmul fast float %4293, %4388
  %4390 = and i32 %4223, 1
  %4391 = icmp eq i32 %4390, 0
  br i1 %4391, label %4392, label %4396

; <label>:4392                                    ; preds = %4301
  %4393 = fsub fast float %4384, %4079
  %4394 = fsub fast float %4385, %4080
  %4395 = fsub fast float %4386, %4081
  br label %4396

; <label>:4396                                    ; preds = %4392, %4301
  %4397 = phi float [ %4393, %4392 ], [ %4384, %4301 ]
  %4398 = phi float [ %4394, %4392 ], [ %4385, %4301 ]
  %4399 = phi float [ %4395, %4392 ], [ %4386, %4301 ]
  %4400 = fmul float %4399, %4389
  %4401 = fmul float %4398, %4389
  %4402 = fmul float %4397, %4389
  %4403 = fadd fast float %4402, %4079
  %4404 = fadd fast float %4401, %4080
  %4405 = fadd fast float %4400, %4081
  %4406 = icmp ne i32 %4302, 0
  %4407 = select i1 %4406, float 1.000000e+00, float 0.000000e+00
  %4408 = fmul fast float %4293, %4407
  %4409 = fsub fast float %4347, %4086
  %4410 = fsub fast float %4348, %4087
  %4411 = fsub fast float %4349, %4088
  %4412 = fmul fast float %4409, %4408
  %4413 = fmul fast float %4410, %4408
  %4414 = fmul fast float %4411, %4408
  %4415 = fadd fast float %4412, %4086
  %4416 = fadd fast float %4413, %4087
  %4417 = fadd fast float %4414, %4088
  %4418 = fsub fast float %4320, %4085
  %4419 = fmul fast float %4418, %4408
  %4420 = fadd fast float %4419, %4085
  %4421 = fmul fast float %4408, %4075
  %4422 = fsub fast float %4075, %4421
  %4423 = fmul fast float %4408, %4074
  %4424 = fsub fast float %4074, %4423
  %4425 = bitcast float %4140 to i32
  %4426 = fadd fast float %4293, %4084
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fsub fast float %4340, %4083
  %4429 = fmul fast float %4428, %4389
  %4430 = fadd fast float %4429, %4083
  %4431 = fsub fast float %4326, %4082
  %4432 = fmul fast float %4431, %4389
  %4433 = fadd fast float %4432, %4082
  br i1 %4391, label %4442, label %4434

; <label>:4434                                    ; preds = %4396
  %4435 = and i32 %4223, 32768
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %4452, label %4437

; <label>:4437                                    ; preds = %4434
  %4438 = fmul fast float %4389, 1.270000e+02
  %4439 = fadd fast float %4438, %4071
  %4440 = fadd fast float %4438, %4072
  %4441 = fadd fast float %4438, %4073
  br label %4452

; <label>:4442                                    ; preds = %4396
  %4443 = fsub fast float 1.270000e+02, %4071
  %4444 = fsub fast float 1.270000e+02, %4072
  %4445 = fsub fast float 1.270000e+02, %4073
  %4446 = fmul fast float %4389, %4443
  %4447 = fmul fast float %4389, %4444
  %4448 = fmul fast float %4389, %4445
  %4449 = fadd fast float %4446, %4071
  %4450 = fadd fast float %4447, %4072
  %4451 = fadd fast float %4448, %4073
  br label %4452

; <label>:4452                                    ; preds = %4442, %4437, %4434
  %4453 = phi float [ %4439, %4437 ], [ %4071, %4434 ], [ %4449, %4442 ]
  %4454 = phi float [ %4440, %4437 ], [ %4072, %4434 ], [ %4450, %4442 ]
  %4455 = phi float [ %4441, %4437 ], [ %4073, %4434 ], [ %4451, %4442 ]
  %4456 = call float @dx.op.dot3.f32(i32 55, float %4347, float %4348, float %4349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = fmul fast float %4459, %4456
  %4461 = fadd fast float %4460, %4458
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = bitcast float %4134 to i32
  %4464 = and i32 %4463, 65535
  %4465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4464)  ; LegacyF16ToF32(value)
  %4466 = lshr i32 %4463, 16
  %4467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4466)  ; LegacyF16ToF32(value)
  %4468 = fcmp fast oge float %4465, 0.000000e+00
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = select i1 %4468, float %4465, float %4470
  %4472 = fadd fast float %4471, %4467
  %4473 = fsub fast float %4462, %4070
  %4474 = fmul fast float %4473, %4293
  %4475 = fadd fast float %4474, %4070
  %4476 = fmul fast float %4472, %4293
  %4477 = call float @dx.op.binary.f32(i32 35, float %4069, float %4476)  ; FMax(a,b)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4068, float %4293)  ; FMax(a,b)
  %4479 = and i32 %4223, 16
  %4480 = icmp eq i32 %4479, 0
  br i1 %4480, label %4502, label %4481

; <label>:4481                                    ; preds = %4452
  %4482 = add i32 %4137, 0
  %4483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4483, %dx.types.Handle %4306, float %4234, float %4237, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4241, float undef, float %4243, float %4245, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = extractvalue %dx.types.ResRet.f32 %4484, 1
  %4487 = extractvalue %dx.types.ResRet.f32 %4484, 2
  %4488 = and i32 %4425, 65535
  %4489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4488)  ; LegacyF16ToF32(value)
  %4490 = fmul fast float %4485, %4131
  %4491 = fmul fast float %4486, %4132
  %4492 = fmul fast float %4487, %4133
  %4493 = and i32 %4223, 16384
  %4494 = icmp ne i32 %4493, 0
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = select i1 %4494, float %4496, float 1.000000e+00
  %4498 = fmul fast float %4497, %4489
  %4499 = fmul fast float %4490, %4498
  %4500 = fmul fast float %4491, %4498
  %4501 = fmul fast float %4492, %4498
  br label %4502

; <label>:4502                                    ; preds = %4481, %4452
  %4503 = phi float [ %4499, %4481 ], [ 0.000000e+00, %4452 ]
  %4504 = phi float [ %4500, %4481 ], [ 0.000000e+00, %4452 ]
  %4505 = phi float [ %4501, %4481 ], [ 0.000000e+00, %4452 ]
  %4506 = fsub fast float %4503, %4076
  %4507 = fsub fast float %4504, %4077
  %4508 = fsub fast float %4505, %4078
  %4509 = fmul fast float %4506, %4293
  %4510 = fmul fast float %4507, %4293
  %4511 = fmul fast float %4508, %4293
  %4512 = fadd fast float %4509, %4076
  %4513 = fadd fast float %4510, %4077
  %4514 = fadd fast float %4511, %4078
  br label %4190

; <label>:4515                                    ; preds = %4190
  br label %4516

; <label>:4516                                    ; preds = %4515, %4002
  %4517 = phi float [ 0.000000e+00, %4002 ], [ %4191, %4515 ]
  %4518 = phi float [ %1167, %4002 ], [ %4192, %4515 ]
  %4519 = phi float [ %3941, %4002 ], [ %4193, %4515 ]
  %4520 = phi float [ %3920, %4002 ], [ %4194, %4515 ]
  %4521 = phi float [ %3906, %4002 ], [ %4195, %4515 ]
  %4522 = phi float [ %3907, %4002 ], [ %4196, %4515 ]
  %4523 = phi float [ %3908, %4002 ], [ %4197, %4515 ]
  %4524 = phi float [ %3919, %4002 ], [ %4198, %4515 ]
  %4525 = phi float [ 0.000000e+00, %4002 ], [ %4199, %4515 ]
  %4526 = phi float [ %3966, %4002 ], [ %4200, %4515 ]
  %4527 = phi float [ %3969, %4002 ], [ %4201, %4515 ]
  %4528 = phi float [ %3972, %4002 ], [ %4202, %4515 ]
  %4529 = phi float [ %3998, %4002 ], [ %4203, %4515 ]
  %4530 = phi float [ %3999, %4002 ], [ %4204, %4515 ]
  %4531 = phi float [ %4000, %4002 ], [ %4205, %4515 ]
  %4532 = phi float [ %3917, %4002 ], [ %4206, %4515 ]
  %4533 = phi float [ %3916, %4002 ], [ %4207, %4515 ]
  %4534 = phi float [ 0.000000e+00, %4002 ], [ %4208, %4515 ]
  %4535 = phi float [ %3915, %4002 ], [ %4209, %4515 ]
  %4536 = phi float [ %3950, %4002 ], [ %4210, %4515 ]
  %4537 = phi float [ %3951, %4002 ], [ %4211, %4515 ]
  %4538 = phi float [ %3952, %4002 ], [ %4212, %4515 ]
  %4539 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4530, float %4531, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = call float @dx.op.unary.f32(i32 25, float %4539)  ; Rsqrt(value)
  %4541 = fmul fast float %4540, %4529
  %4542 = fmul fast float %4540, %4530
  %4543 = fmul fast float %4540, %4531
  %4544 = fadd fast float %4534, %1167
  %4545 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call float @dx.op.unary.f32(i32 25, float %4546)  ; Rsqrt(value)
  %4548 = fmul fast float %4547, %4541
  %4549 = fmul fast float %4547, %4542
  %4550 = fmul fast float %4547, %4543
  br label %4551

; <label>:4551                                    ; preds = %4516, %3903
  %4552 = phi float [ %4521, %4516 ], [ %3906, %3903 ]
  %4553 = phi float [ %4522, %4516 ], [ %3907, %3903 ]
  %4554 = phi float [ %4523, %4516 ], [ %3908, %3903 ]
  %4555 = phi float [ %4548, %4516 ], [ %3998, %3903 ]
  %4556 = phi float [ %4549, %4516 ], [ %3999, %3903 ]
  %4557 = phi float [ %4550, %4516 ], [ %4000, %3903 ]
  %4558 = phi float [ %4536, %4516 ], [ %3950, %3903 ]
  %4559 = phi float [ %4537, %4516 ], [ %3951, %3903 ]
  %4560 = phi float [ %4538, %4516 ], [ %3952, %3903 ]
  %4561 = phi float [ %4526, %4516 ], [ %3966, %3903 ]
  %4562 = phi float [ %4527, %4516 ], [ %3969, %3903 ]
  %4563 = phi float [ %4528, %4516 ], [ %3972, %3903 ]
  %4564 = phi float [ %4535, %4516 ], [ %3915, %3903 ]
  %4565 = phi float [ %4545, %4516 ], [ %1167, %3903 ]
  %4566 = phi float [ %4533, %4516 ], [ %3916, %3903 ]
  %4567 = phi float [ %4532, %4516 ], [ %3917, %3903 ]
  %4568 = phi float [ %4525, %4516 ], [ 0.000000e+00, %3903 ]
  %4569 = phi float [ %4524, %4516 ], [ %3919, %3903 ]
  %4570 = phi float [ %4517, %4516 ], [ 0.000000e+00, %3903 ]
  %4571 = phi float [ %4519, %4516 ], [ %3941, %3903 ]
  %4572 = phi float [ %4518, %4516 ], [ %1167, %3903 ]
  %4573 = phi float [ %4520, %4516 ], [ %3920, %3903 ]
  %4574 = fadd fast float %4564, 0xBFB99999A0000000
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fmul fast float %4575, 0x3FF1C71C80000000
  %4577 = call float @dx.op.binary.f32(i32 36, float %4564, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4578 = fsub fast float 1.000000e+00, %4576
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = fmul fast float %4579, %4558
  %4581 = fmul fast float %4579, %4559
  %4582 = fmul fast float %4579, %4560
  %4583 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4584 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4586 = fmul fast float %4576, %4558
  %4587 = fmul fast float %4576, %4559
  %4588 = fmul fast float %4576, %4560
  %4589 = fadd fast float %4586, %4577
  %4590 = fadd fast float %4587, %4577
  %4591 = fadd fast float %4588, %4577
  %4592 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4596 = call float @dx.op.binary.f32(i32 36, float %4552, float 1.270000e+02)  ; FMin(a,b)
  %4597 = call float @dx.op.binary.f32(i32 36, float %4553, float 1.270000e+02)  ; FMin(a,b)
  %4598 = call float @dx.op.binary.f32(i32 36, float %4554, float 1.270000e+02)  ; FMin(a,b)
  %4599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.i32 %4599, 3
  %4601 = and i32 %4600, 8
  %4602 = icmp ne i32 %4601, 0
  %4603 = call float @dx.op.binary.f32(i32 35, float %4583, float %4558)  ; FMax(a,b)
  %4604 = call float @dx.op.binary.f32(i32 35, float %4584, float %4558)  ; FMax(a,b)
  %4605 = call float @dx.op.binary.f32(i32 35, float %4585, float %4558)  ; FMax(a,b)
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = select i1 %268, float %4558, float %4583
  %4608 = select i1 %268, float %4606, float %4584
  %4609 = select i1 %268, float 1.000000e+00, float %4585
  %4610 = select i1 %4602, float %4603, float %4607
  %4611 = select i1 %4602, float %4604, float %4608
  %4612 = select i1 %4602, float %4605, float %4609
  %4613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.CBufRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.CBufRet.f32 %4613, 2
  %4617 = fadd fast float %4614, %196
  %4618 = fadd fast float %4615, %197
  %4619 = fadd fast float %4616, %198
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = fsub fast float %4617, %4621
  %4624 = fsub fast float %4618, %4622
  %4625 = fmul fast float %4623, %4623
  %4626 = fmul fast float %4624, %4624
  %4627 = fadd fast float %4625, %4626
  %4628 = call float @dx.op.unary.f32(i32 24, float %4627)  ; Sqrt(value)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4630 = fcmp fast olt float %4628, %4629
  br i1 %4630, label %4631, label %4698

; <label>:4631                                    ; preds = %4551
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 0
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4639 = extractvalue %dx.types.CBufRet.f32 %4634, 1
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4642 = extractvalue %dx.types.CBufRet.f32 %4634, 3
  %4643 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4644 = fadd fast float %4641, %4617
  %4645 = fadd fast float %4642, %4618
  %4646 = fadd fast float %4643, %4619
  %4647 = fmul fast float %4644, %4633
  %4648 = call float @dx.op.tertiary.f32(i32 46, float %4645, float %4635, float %4647)  ; FMad(a,b,c)
  %4649 = call float @dx.op.tertiary.f32(i32 46, float %4646, float %4637, float %4648)  ; FMad(a,b,c)
  %4650 = fmul fast float %4644, %4638
  %4651 = call float @dx.op.tertiary.f32(i32 46, float %4645, float %4639, float %4650)  ; FMad(a,b,c)
  %4652 = call float @dx.op.tertiary.f32(i32 46, float %4646, float %4640, float %4651)  ; FMad(a,b,c)
  %4653 = fsub fast float %4649, %4641
  %4654 = fsub fast float %4652, %4642
  %4655 = fsub fast float %4653, %4621
  %4656 = fadd fast float %4655, %4629
  %4657 = fsub fast float %4654, %4622
  %4658 = fadd fast float %4657, %4629
  %4659 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4660 = fmul fast float %4656, %4659
  %4661 = fmul fast float %4658, %4659
  %4662 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4664 = fsub fast float 1.000000e+00, %4662
  %4665 = fsub fast float 1.000000e+00, %4663
  %4666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4664, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4667 = extractvalue %dx.types.ResRet.f32 %4666, 0
  %4668 = fcmp fast ugt float %4667, 0.000000e+00
  br i1 %4668, label %4669, label %4972

; <label>:4669                                    ; preds = %4631
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4672 = fmul fast float %4671, %4667
  %4673 = extractvalue %dx.types.CBufRet.f32 %4670, 3
  %4674 = fadd fast float %4673, %4672
  %4675 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4676 = fadd fast float %4674, %4643
  %4677 = fmul fast float %4649, %4637
  %4678 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4640, float %4677)  ; FMad(a,b,c)
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4676, float %4675, float %4678)  ; FMad(a,b,c)
  %4680 = fsub fast float %4679, %4643
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 2
  %4683 = fsub fast float %4680, %4682
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4664, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4664, float %4665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4692 = fadd fast float %4689, %4685
  %4693 = fmul fast float %4692, 0x3F847AE140000000
  %4694 = fadd fast float %4690, %4686
  %4695 = fmul fast float %4694, 0x3F847AE140000000
  %4696 = fadd fast float %4691, %4687
  %4697 = fmul fast float %4696, 0x3F847AE140000000
  br label %4972

; <label>:4698                                    ; preds = %4551
  %4699 = and i32 %247, 1
  %4700 = icmp eq i32 %4699, 0
  br i1 %4700, label %4972, label %4701

; <label>:4701                                    ; preds = %4698
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4709 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4710 = extractvalue %dx.types.CBufRet.f32 %4706, 1
  %4711 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4712 = extractvalue %dx.types.CBufRet.f32 %4704, 3
  %4713 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4714 = fadd fast float %4711, %4617
  %4715 = fadd fast float %4712, %4618
  %4716 = fadd fast float %4713, %4619
  %4717 = fmul fast float %4714, %4703
  %4718 = call float @dx.op.tertiary.f32(i32 46, float %4715, float %4705, float %4717)  ; FMad(a,b,c)
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %4716, float %4707, float %4718)  ; FMad(a,b,c)
  %4720 = fmul fast float %4714, %4708
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %4715, float %4709, float %4720)  ; FMad(a,b,c)
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %4716, float %4710, float %4721)  ; FMad(a,b,c)
  %4723 = fsub fast float %4719, %4711
  %4724 = fsub fast float %4722, %4712
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4729 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.i32 %4732, 0
  %4734 = extractvalue %dx.types.CBufRet.i32 %4732, 1
  %4735 = udiv i32 %4734, %4733
  %4736 = fsub fast float %4723, %4726
  %4737 = fsub fast float %4724, %4727
  %4738 = call float @dx.op.binary.f32(i32 35, float %4736, float 0.000000e+00)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4737, float 0.000000e+00)  ; FMax(a,b)
  %4740 = call float @dx.op.binary.f32(i32 36, float %4738, float %4728)  ; FMin(a,b)
  %4741 = call float @dx.op.binary.f32(i32 36, float %4739, float %4729)  ; FMin(a,b)
  %4742 = add i32 %4733, -1
  %4743 = add i32 %4735, -1
  %4744 = fmul fast float %4740, %4731
  %4745 = fmul fast float %4741, %4731
  %4746 = fptoui float %4744 to i32
  %4747 = fptoui float %4745 to i32
  %4748 = call i32 @dx.op.binary.i32(i32 40, i32 %4746, i32 %4742)  ; UMin(a,b)
  %4749 = call i32 @dx.op.binary.i32(i32 40, i32 %4747, i32 %4743)  ; UMin(a,b)
  %4750 = mul i32 %4749, %4733
  %4751 = add i32 %4750, %4748
  %4752 = shl i32 %4751, 2
  %4753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.i32 %4753, 0
  %4755 = icmp eq i32 %4754, -1
  br i1 %4755, label %4972, label %4756

; <label>:4756                                    ; preds = %4701
  %4757 = mul i32 %4754, 148
  %4758 = add i32 %4757, 4
  %4759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4758, i32 undef)  ; BufferLoad(srv,index,wot)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = add i32 %4757, 8
  %4762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4761, i32 undef)  ; BufferLoad(srv,index,wot)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 0
  %4764 = add i32 %4757, 36
  %4765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4764, i32 undef)  ; BufferLoad(srv,index,wot)
  %4766 = extractvalue %dx.types.ResRet.f32 %4765, 0
  %4767 = add i32 %4757, 60
  %4768 = add i32 %4757, 92
  %4769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4768, i32 undef)  ; BufferLoad(srv,index,wot)
  %4770 = extractvalue %dx.types.ResRet.i32 %4769, 0
  %4771 = add i32 %4757, 116
  %4772 = fsub fast float %4723, %4760
  %4773 = fsub fast float %4724, %4763
  %4774 = fmul fast float %4731, %4772
  %4775 = fmul fast float %4731, %4773
  %4776 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4778 = fsub fast float 1.000000e+00, %4777
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4781 = call float @dx.op.unary.f32(i32 83, float %4776)  ; DerivCoarseX(value)
  %4782 = call float @dx.op.unary.f32(i32 83, float %4778)  ; DerivCoarseX(value)
  %4783 = call float @dx.op.unary.f32(i32 84, float %4776)  ; DerivCoarseY(value)
  %4784 = call float @dx.op.unary.f32(i32 84, float %4778)  ; DerivCoarseY(value)
  %4785 = fmul fast float %4781, %4780
  %4786 = fmul fast float %4782, %4780
  %4787 = fmul fast float %4783, %4780
  %4788 = fmul fast float %4784, %4780
  %4789 = call float @dx.op.dot2.f32(i32 54, float %4787, float %4788, float %4787, float %4788)  ; Dot2(ax,ay,bx,by)
  %4790 = call float @dx.op.dot2.f32(i32 54, float %4785, float %4786, float %4785, float %4786)  ; Dot2(ax,ay,bx,by)
  %4791 = call float @dx.op.binary.f32(i32 35, float %4790, float %4789)  ; FMax(a,b)
  %4792 = call float @dx.op.unary.f32(i32 23, float %4791)  ; Log(value)
  %4793 = fmul fast float %4792, 5.000000e-01
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4796 = fadd fast float %4795, %4793
  %4797 = call float @dx.op.binary.f32(i32 35, float %4796, float 0.000000e+00)  ; FMax(a,b)
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4800 = fadd fast float %4799, %4797
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 3
  %4803 = fadd fast float %4800, %4802
  %4804 = add i32 %4770, 0
  %4805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4804, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4806 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4805, i32 0)  ; GetDimensions(handle,mipLevel)
  %4807 = extractvalue %dx.types.Dimensions %4806, 0
  %4808 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4807)  ; FirstbitLo(value)
  %4809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.i32 %4809, 1
  %4811 = sub nsw i32 %4810, %4808
  %4812 = sitofp i32 %4811 to float
  %4813 = fsub fast float %4803, %4812
  %4814 = call float @dx.op.binary.f32(i32 35, float %4813, float 0.000000e+00)  ; FMax(a,b)
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4805, %dx.types.Handle %47, float %4776, float %4778, float %4766, float undef, i32 0, i32 0, i32 undef, float %4814)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = fcmp ule float %4816, 0x3FE0101020000000
  %4818 = extractvalue %dx.types.CBufRet.i32 %4809, 0
  %4819 = and i32 %4818, 128
  %4820 = icmp ne i32 %4819, 0
  %4821 = and i1 %4817, %4820
  br i1 %4821, label %4972, label %4822

; <label>:4822                                    ; preds = %4756
  %4823 = add i32 %4757, 20
  %4824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4823, i32 undef)  ; BufferLoad(srv,index,wot)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = add i32 %4757, 24
  %4827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4826, i32 undef)  ; BufferLoad(srv,index,wot)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = add i32 %4757, 40
  %4830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4829, i32 undef)  ; BufferLoad(srv,index,wot)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = add i32 %4757, 96
  %4833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4832, i32 undef)  ; BufferLoad(srv,index,wot)
  %4834 = extractvalue %dx.types.ResRet.i32 %4833, 0
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4837 = fmul fast float %4836, %4776
  %4838 = fmul fast float %4836, %4778
  %4839 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4840 = fadd fast float %4837, %4839
  %4841 = fadd fast float %4838, %4839
  %4842 = add i32 %4834, 0
  %4843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4842, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4844 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4843, i32 0)  ; GetDimensions(handle,mipLevel)
  %4845 = extractvalue %dx.types.Dimensions %4844, 0
  %4846 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4845)  ; FirstbitLo(value)
  %4847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.i32 %4847, 1
  %4849 = sub nsw i32 %4848, %4846
  %4850 = sitofp i32 %4849 to float
  %4851 = fsub fast float %4800, %4850
  %4852 = call float @dx.op.binary.f32(i32 35, float %4851, float 0.000000e+00)  ; FMax(a,b)
  %4853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4843, %dx.types.Handle %47, float %4840, float %4841, float %4831, float undef, i32 0, i32 0, i32 undef, float %4852)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = fmul fast float %4854, %4825
  %4856 = fadd fast float %4855, %4828
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.CBufRet.f32 %4857, 2
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 3
  %4865 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4866 = fadd fast float %4862, %4723
  %4867 = fadd fast float %4864, %4724
  %4868 = fadd fast float %4856, %4865
  %4869 = fmul fast float %4866, %4858
  %4870 = call float @dx.op.tertiary.f32(i32 46, float %4867, float %4859, float %4869)  ; FMad(a,b,c)
  %4871 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4860, float %4870)  ; FMad(a,b,c)
  %4872 = fsub fast float %4871, %4865
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4875 = fsub fast float %4872, %4874
  %4876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.i32 %4876, 0
  %4878 = call i32 @dx.op.binary.i32(i32 40, i32 %4754, i32 %4877)  ; UMin(a,b)
  %4879 = mul i32 %4878, 36
  %4880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4879, i32 undef)  ; BufferLoad(srv,index,wot)
  %4881 = extractvalue %dx.types.ResRet.i32 %4880, 0
  %4882 = add i32 %4879, 4
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 0
  %4885 = fmul fast float %4884, %4776
  %4886 = fmul fast float %4884, %4778
  %4887 = extractvalue %dx.types.CBufRet.f32 %4883, 1
  %4888 = fadd fast float %4885, %4887
  %4889 = fadd fast float %4886, %4887
  %4890 = icmp eq i32 %4881, 0
  br i1 %4890, label %4959, label %4891

; <label>:4891                                    ; preds = %4822
  br label %4892

; <label>:4892                                    ; preds = %4949, %4891
  %4893 = phi float [ %4950, %4949 ], [ 0.000000e+00, %4891 ]
  %4894 = phi float [ %4951, %4949 ], [ 0.000000e+00, %4891 ]
  %4895 = phi float [ %4952, %4949 ], [ 0.000000e+00, %4891 ]
  %4896 = phi float [ %4953, %4949 ], [ 0.000000e+00, %4891 ]
  %4897 = phi float [ %4954, %4949 ], [ 0.000000e+00, %4891 ]
  %4898 = phi float [ %4955, %4949 ], [ 0.000000e+00, %4891 ]
  %4899 = phi i32 [ %4956, %4949 ], [ 0, %4891 ]
  %4900 = shl i32 %4899, 2
  %4901 = add i32 %4767, %4900
  %4902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4901, i32 undef)  ; BufferLoad(srv,index,wot)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = add i32 %4771, %4900
  %4905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4904, i32 undef)  ; BufferLoad(srv,index,wot)
  %4906 = extractvalue %dx.types.ResRet.i32 %4905, 0
  %4907 = add i32 %4906, 0
  %4908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4907, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4909 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4908, i32 0)  ; GetDimensions(handle,mipLevel)
  %4910 = extractvalue %dx.types.Dimensions %4909, 0
  %4911 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4910)  ; FirstbitLo(value)
  %4912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.i32 %4912, 1
  %4914 = sub nsw i32 %4913, %4911
  %4915 = sitofp i32 %4914 to float
  %4916 = fsub fast float %4800, %4915
  %4917 = call float @dx.op.binary.f32(i32 35, float %4916, float 0.000000e+00)  ; FMax(a,b)
  %4918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4908, %dx.types.Handle %47, float %4888, float %4889, float %4903, float undef, i32 0, i32 0, i32 undef, float %4917)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4919 = extractvalue %dx.types.ResRet.f32 %4918, 0
  %4920 = fcmp fast ogt float %4919, 0.000000e+00
  br i1 %4920, label %4921, label %4949

; <label>:4921                                    ; preds = %4892
  %4922 = add i32 %4882, %4900
  %4923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4922, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.i32 %4923, 0
  %4925 = and i32 %4924, 32767
  %4926 = mul nuw nsw i32 %4925, 928
  %4927 = add nuw nsw i32 %4926, 48
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = add nuw nsw i32 %4926, 60
  %4933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.ResRet.f32 %4933, 1
  %4936 = extractvalue %dx.types.ResRet.f32 %4933, 2
  %4937 = fmul fast float %4929, %4919
  %4938 = fmul fast float %4930, %4919
  %4939 = fmul fast float %4931, %4919
  %4940 = fadd fast float %4937, %4893
  %4941 = fadd fast float %4938, %4894
  %4942 = fadd fast float %4939, %4895
  %4943 = fmul fast float %4934, %4919
  %4944 = fmul fast float %4935, %4919
  %4945 = fmul fast float %4936, %4919
  %4946 = fadd fast float %4943, %4896
  %4947 = fadd fast float %4944, %4897
  %4948 = fadd fast float %4945, %4898
  br label %4949

; <label>:4949                                    ; preds = %4921, %4892
  %4950 = phi float [ %4940, %4921 ], [ %4893, %4892 ]
  %4951 = phi float [ %4941, %4921 ], [ %4894, %4892 ]
  %4952 = phi float [ %4942, %4921 ], [ %4895, %4892 ]
  %4953 = phi float [ %4946, %4921 ], [ %4896, %4892 ]
  %4954 = phi float [ %4947, %4921 ], [ %4897, %4892 ]
  %4955 = phi float [ %4948, %4921 ], [ %4898, %4892 ]
  %4956 = add nuw i32 %4899, 1
  %4957 = icmp eq i32 %4956, %4881
  br i1 %4957, label %4958, label %4892

; <label>:4958                                    ; preds = %4949
  br label %4959

; <label>:4959                                    ; preds = %4958, %4822
  %4960 = phi float [ 0.000000e+00, %4822 ], [ %4950, %4958 ]
  %4961 = phi float [ 0.000000e+00, %4822 ], [ %4951, %4958 ]
  %4962 = phi float [ 0.000000e+00, %4822 ], [ %4952, %4958 ]
  %4963 = phi float [ 0.000000e+00, %4822 ], [ %4953, %4958 ]
  %4964 = phi float [ 0.000000e+00, %4822 ], [ %4954, %4958 ]
  %4965 = phi float [ 0.000000e+00, %4822 ], [ %4955, %4958 ]
  %4966 = fadd fast float %4963, %4960
  %4967 = fmul fast float %4966, 0x3F847AE140000000
  %4968 = fadd fast float %4964, %4961
  %4969 = fmul fast float %4968, 0x3F847AE140000000
  %4970 = fadd fast float %4965, %4962
  %4971 = fmul fast float %4970, 0x3F847AE140000000
  br label %4972

; <label>:4972                                    ; preds = %4959, %4756, %4701, %4698, %4669, %4631
  %4973 = phi float [ %4683, %4669 ], [ -1.310720e+05, %4631 ], [ %4875, %4959 ], [ -1.310720e+05, %4701 ], [ -1.310720e+05, %4756 ], [ -1.310720e+05, %4698 ]
  %4974 = phi float [ %4693, %4669 ], [ 0.000000e+00, %4631 ], [ %4967, %4959 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4756 ], [ 0.000000e+00, %4698 ]
  %4975 = phi float [ %4695, %4669 ], [ 0.000000e+00, %4631 ], [ %4969, %4959 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4756 ], [ 0.000000e+00, %4698 ]
  %4976 = phi float [ %4697, %4669 ], [ 0.000000e+00, %4631 ], [ %4971, %4959 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4756 ], [ 0.000000e+00, %4698 ]
  %4977 = phi i1 [ true, %4669 ], [ false, %4631 ], [ true, %4959 ], [ false, %4701 ], [ false, %4756 ], [ false, %4698 ]
  %4978 = and i32 %247, 3
  %4979 = icmp eq i32 %4978, 1
  %4980 = select i1 %4979, float 1.000000e+00, float 0.000000e+00
  %4981 = fsub fast float %4973, %198
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = select i1 %4977, float %4982, float 1.000000e+00
  %4984 = fmul fast float %4983, %4980
  %4985 = icmp eq i32 %4978, 3
  %4986 = select i1 %4985, float 1.000000e+00, float %4984
  %4987 = call float @dx.op.binary.f32(i32 35, float %4570, float %4986)  ; FMax(a,b)
  %4988 = fcmp fast olt float %4986, 1.000000e+00
  %4989 = fcmp uge float %73, 0.000000e+00
  %4990 = and i1 %4989, %4988
  br i1 %4990, label %4991, label %5001

; <label>:4991                                    ; preds = %4972
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 1
  %4995 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4996 = fadd fast float %4993, %4987
  %4997 = fcmp ule float %72, 0.000000e+00
  %4998 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4999 = select i1 %4997, float %4998, float 1.000000e+00
  %5000 = fmul fast float %4999, %4995
  br label %5001

; <label>:5001                                    ; preds = %4991, %4972
  %5002 = phi float [ %4996, %4991 ], [ %4987, %4972 ]
  %5003 = phi float [ %4994, %4991 ], [ 0.000000e+00, %4972 ]
  %5004 = phi float [ %5000, %4991 ], [ 0.000000e+00, %4972 ]
  %5005 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5006 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5007 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5008 = fcmp fast une float %5006, 0.000000e+00
  %5009 = fcmp fast une float %5007, 0.000000e+00
  %5010 = or i1 %5008, %5009
  br i1 %5010, label %5011, label %5570

; <label>:5011                                    ; preds = %5001
  br i1 %5008, label %5012, label %5285

; <label>:5012                                    ; preds = %5011
  %5013 = call float @dx.op.unary.f32(i32 23, float %4567)  ; Log(value)
  %5014 = fmul fast float %5013, 4.000000e+00
  %5015 = call float @dx.op.unary.f32(i32 21, float %5014)  ; Exp(value)
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = fmul fast float %5017, %60
  %5019 = fmul fast float %5017, %61
  %5020 = fmul fast float %5017, %62
  %5021 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5022 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5023 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5024 = call float @dx.op.unary.f32(i32 23, float %5021)  ; Log(value)
  %5025 = call float @dx.op.unary.f32(i32 23, float %5022)  ; Log(value)
  %5026 = call float @dx.op.unary.f32(i32 23, float %5023)  ; Log(value)
  %5027 = fmul fast float %5024, 4.000000e+00
  %5028 = fmul fast float %5025, 4.000000e+00
  %5029 = fmul fast float %5026, 4.000000e+00
  %5030 = call float @dx.op.unary.f32(i32 21, float %5027)  ; Exp(value)
  %5031 = call float @dx.op.unary.f32(i32 21, float %5028)  ; Exp(value)
  %5032 = call float @dx.op.unary.f32(i32 21, float %5029)  ; Exp(value)
  %5033 = fadd fast float %5031, %5030
  %5034 = fadd fast float %5033, %5032
  %5035 = fdiv fast float 1.000000e+00, %5034
  %5036 = fmul fast float %5035, %5030
  %5037 = fcmp fast ogt float %69, 0.000000e+00
  %5038 = fcmp fast ogt float %70, 0.000000e+00
  %5039 = fcmp fast ogt float %71, 0.000000e+00
  %5040 = fcmp fast olt float %69, 0.000000e+00
  %5041 = fcmp fast olt float %70, 0.000000e+00
  %5042 = fcmp fast olt float %71, 0.000000e+00
  %5043 = zext i1 %5037 to i32
  %5044 = zext i1 %5038 to i32
  %5045 = zext i1 %5039 to i32
  %5046 = zext i1 %5040 to i32
  %5047 = zext i1 %5041 to i32
  %5048 = zext i1 %5042 to i32
  %5049 = sub nsw i32 %5043, %5046
  %5050 = sub nsw i32 %5044, %5047
  %5051 = sub nsw i32 %5045, %5048
  %5052 = call float @dx.op.unary.f32(i32 83, float %5018)  ; DerivCoarseX(value)
  %5053 = call float @dx.op.unary.f32(i32 83, float %5019)  ; DerivCoarseX(value)
  %5054 = call float @dx.op.unary.f32(i32 83, float %5020)  ; DerivCoarseX(value)
  %5055 = call float @dx.op.unary.f32(i32 84, float %5018)  ; DerivCoarseY(value)
  %5056 = call float @dx.op.unary.f32(i32 84, float %5019)  ; DerivCoarseY(value)
  %5057 = call float @dx.op.unary.f32(i32 84, float %5020)  ; DerivCoarseY(value)
  %5058 = fcmp fast ole float %279, %5036
  %5059 = fmul fast float %5035, %5033
  %5060 = fcmp fast ole float %279, %5059
  %5061 = select i1 %5060, float %5020, float %5018
  %5062 = select i1 %5060, float %5018, float %5019
  %5063 = select i1 %5058, float %5019, float %5061
  %5064 = select i1 %5058, float %5020, float %5062
  %5065 = select i1 %5060, float %5054, float %5052
  %5066 = select i1 %5060, float %5052, float %5053
  %5067 = select i1 %5058, float %5053, float %5065
  %5068 = select i1 %5058, float %5054, float %5066
  %5069 = select i1 %5060, float %5057, float %5055
  %5070 = select i1 %5060, float %5055, float %5056
  %5071 = select i1 %5058, float %5056, float %5069
  %5072 = select i1 %5058, float %5057, float %5070
  %5073 = call float @dx.op.unary.f32(i32 27, float %5063)  ; Round_ni(value)
  %5074 = call float @dx.op.unary.f32(i32 27, float %5064)  ; Round_ni(value)
  %5075 = fptosi float %5073 to i32
  %5076 = fptosi float %5074 to i32
  %5077 = xor i32 %5076, %5075
  %5078 = sitofp i32 %5077 to float
  %5079 = fptosi float %5078 to i32
  %5080 = sitofp i32 %5079 to float
  %5081 = fmul fast float %5080, 0x3FE3C6EF40000000
  %5082 = frem fast float %5073, 2.560000e+02
  %5083 = frem fast float %5074, 2.560000e+02
  %5084 = fptoui float %5082 to i32
  %5085 = fptoui float %5083 to i32
  %5086 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5084, i32 %5085, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.ResRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.ResRet.f32 %5086, 2
  %5090 = fadd fast float %5087, %5081
  %5091 = fadd fast float %5088, %5081
  %5092 = fadd fast float %5089, %5081
  %5093 = call float @dx.op.unary.f32(i32 22, float %5090)  ; Frc(value)
  %5094 = call float @dx.op.unary.f32(i32 22, float %5091)  ; Frc(value)
  %5095 = call float @dx.op.unary.f32(i32 22, float %5092)  ; Frc(value)
  %5096 = fmul fast float %5095, 0x401921FB60000000
  %5097 = call float @dx.op.unary.f32(i32 13, float %5096)  ; Sin(value)
  %5098 = call float @dx.op.unary.f32(i32 12, float %5096)  ; Cos(value)
  %5099 = fsub fast float -0.000000e+00, %5098
  %5100 = fmul fast float %5098, %5063
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5097, float %5064, float %5100)  ; FMad(a,b,c)
  %5102 = fmul fast float %5097, %5063
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5064, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5101, %5093
  %5105 = fadd fast float %5103, %5094
  %5106 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5107 = bitcast float %5106 to i32
  %5108 = icmp eq i32 %5107, 0
  br i1 %5108, label %5147, label %5109

; <label>:5109                                    ; preds = %5012
  %5110 = add i32 %5107, 0
  %5111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5111, %dx.types.Handle %110, float %5104, float %5105, float undef, float undef, i32 0, i32 0, i32 undef, float %5067, float %5068, float undef, float %5071, float %5072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5116 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5117 = fsub fast float 1.000000e+00, %5006
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5119 = bitcast float %5006 to i32
  %5120 = sitofp i32 %5119 to float
  %5121 = fadd fast float %5120, 0xC1CFBF8940000000
  %5122 = fmul fast float %5116, %5121
  %5123 = fadd fast float %5122, 0x41CFBF8940000000
  %5124 = fptosi float %5123 to i32
  %5125 = bitcast i32 %5124 to float
  %5126 = bitcast float %5118 to i32
  %5127 = sitofp i32 %5126 to float
  %5128 = fadd fast float %5127, 0xC1CFBF8940000000
  %5129 = fmul fast float %5128, %5116
  %5130 = fadd fast float %5129, 0x41CFBF8940000000
  %5131 = fptosi float %5130 to i32
  %5132 = bitcast i32 %5131 to float
  %5133 = fmul fast float %5125, %5115
  %5134 = fmul fast float %5132, %5115
  %5135 = fsub fast float %5118, %5133
  %5136 = fadd fast float %5134, %5118
  %5137 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5139 = fsub fast float %5113, %5137
  %5140 = fsub fast float %5138, %5137
  %5141 = bitcast float %5140 to i32
  %5142 = sub nsw i32 2129859010, %5141
  %5143 = bitcast i32 %5142 to float
  %5144 = fmul fast float %5143, %5139
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fcmp fast olt float %5145, 0x3F70101020000000
  br i1 %5146, label %5285, label %5147

; <label>:5147                                    ; preds = %5109, %5012
  %5148 = phi float [ %5145, %5109 ], [ %5006, %5012 ]
  %5149 = fmul fast float %5148, %5015
  %5150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.i32 %5150, 1
  %5152 = extractvalue %dx.types.CBufRet.i32 %5150, 0
  %5153 = add i32 %5152, 0
  %5154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5155 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5154, %dx.types.Handle %109, float %5104, float %5105, float undef, float undef, i32 0, i32 0, i32 undef, float %5067, float %5068, float undef, float %5071, float %5072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.ResRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.ResRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.ResRet.f32 %5155, 3
  %5160 = and i32 %5151, 255
  %5161 = uitofp i32 %5160 to float
  %5162 = lshr i32 %5151, 8
  %5163 = and i32 %5162, 255
  %5164 = uitofp i32 %5163 to float
  %5165 = fmul fast float %5159, %5161
  %5166 = fadd fast float %5165, %5164
  %5167 = fmul fast float %5166, 0x3F70101000000000
  %5168 = fadd fast float %5167, 0xBFB99999A0000000
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = fmul fast float %5169, 0x3FF1C71C80000000
  %5171 = call float @dx.op.binary.f32(i32 36, float %5167, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5172 = fsub fast float 1.000000e+00, %5170
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = fmul fast float %5173, %5156
  %5175 = fmul fast float %5173, %5157
  %5176 = fmul fast float %5173, %5158
  %5177 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5178 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5180 = fmul fast float %5170, %5156
  %5181 = fmul fast float %5170, %5157
  %5182 = fmul fast float %5170, %5158
  %5183 = fadd fast float %5180, %5171
  %5184 = fadd fast float %5181, %5171
  %5185 = fadd fast float %5182, %5171
  %5186 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.i32 %5189, 3
  %5191 = extractvalue %dx.types.CBufRet.i32 %5189, 2
  %5192 = add i32 %5191, 0
  %5193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5194 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5193, %dx.types.Handle %109, float %5104, float %5105, float undef, float undef, i32 0, i32 0, i32 undef, float %5067, float %5068, float undef, float %5071, float %5072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5195 = extractvalue %dx.types.ResRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.ResRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.ResRet.f32 %5194, 2
  %5198 = extractvalue %dx.types.ResRet.f32 %5194, 3
  %5199 = and i32 %5190, 255
  %5200 = uitofp i32 %5199 to float
  %5201 = lshr i32 %5190, 8
  %5202 = and i32 %5201, 255
  %5203 = uitofp i32 %5202 to float
  %5204 = lshr i32 %5190, 16
  %5205 = and i32 %5204, 255
  %5206 = uitofp i32 %5205 to float
  %5207 = fmul fast float %5206, 0x3F70101000000000
  %5208 = fmul fast float %5195, %5200
  %5209 = fadd fast float %5208, %5203
  %5210 = fmul fast float %5209, 0x3F70101000000000
  %5211 = fadd fast float %5196, -5.000000e-01
  %5212 = fadd fast float %5198, -5.000000e-01
  %5213 = fmul fast float %5211, %5207
  %5214 = fmul fast float %5212, %5207
  %5215 = fadd fast float %5213, 5.000000e-01
  %5216 = fadd fast float %5214, 5.000000e-01
  %5217 = fmul fast float %5215, 2.000000e+00
  %5218 = fadd fast float %5217, -1.000000e+00
  %5219 = fmul fast float %5216, 2.000000e+00
  %5220 = fadd fast float %5219, -1.000000e+00
  %5221 = fadd fast float %5218, %5220
  %5222 = fmul fast float %5221, 5.000000e-01
  %5223 = fsub fast float %5218, %5220
  %5224 = fmul fast float %5223, 5.000000e-01
  %5225 = call float @dx.op.unary.f32(i32 6, float %5222)  ; FAbs(value)
  %5226 = fsub fast float 1.000000e+00, %5225
  %5227 = call float @dx.op.unary.f32(i32 6, float %5224)  ; FAbs(value)
  %5228 = fsub fast float %5226, %5227
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5222, float %5224, float %5228, float %5222, float %5224, float %5228)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = call float @dx.op.unary.f32(i32 25, float %5229)  ; Rsqrt(value)
  %5231 = fmul fast float %5222, %5230
  %5232 = fmul fast float %5224, %5230
  %5233 = select i1 %5060, i32 %5050, i32 %5051
  %5234 = select i1 %5058, i32 %5049, i32 %5233
  %5235 = sitofp i32 %5234 to float
  %5236 = fmul fast float %5228, %5235
  %5237 = fmul fast float %5236, %5230
  %5238 = select i1 %5060, float %5237, float %5232
  %5239 = select i1 %5060, float %5232, float %5237
  %5240 = select i1 %5058, float %5237, float %5231
  %5241 = select i1 %5058, float %5232, float %5238
  %5242 = select i1 %5058, float %5231, float %5239
  %5243 = fsub fast float %5177, %4610
  %5244 = fsub fast float %5178, %4611
  %5245 = fsub fast float %5179, %4612
  %5246 = fmul fast float %5243, %5149
  %5247 = fmul fast float %5244, %5149
  %5248 = fmul fast float %5245, %5149
  %5249 = fadd fast float %5246, %4610
  %5250 = fadd fast float %5247, %4611
  %5251 = fadd fast float %5248, %4612
  %5252 = fsub fast float %5186, %4592
  %5253 = fsub fast float %5187, %4593
  %5254 = fsub fast float %5188, %4594
  %5255 = fmul fast float %5252, %5149
  %5256 = fmul fast float %5253, %5149
  %5257 = fmul fast float %5254, %5149
  %5258 = fadd fast float %5255, %4592
  %5259 = fadd fast float %5256, %4593
  %5260 = fadd fast float %5257, %4594
  %5261 = fadd fast float %5240, %4555
  %5262 = fadd fast float %5241, %4556
  %5263 = fadd fast float %5242, %4557
  %5264 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 25, float %5264)  ; Rsqrt(value)
  %5266 = fmul fast float %5261, %5265
  %5267 = fmul fast float %5262, %5265
  %5268 = fmul fast float %5263, %5265
  %5269 = fsub fast float %5266, %4555
  %5270 = fsub fast float %5267, %4556
  %5271 = fsub fast float %5268, %4557
  %5272 = fmul fast float %5269, %5149
  %5273 = fmul fast float %5270, %5149
  %5274 = fmul fast float %5271, %5149
  %5275 = fadd fast float %5272, %4555
  %5276 = fadd fast float %5273, %4556
  %5277 = fadd fast float %5274, %4557
  %5278 = call float @dx.op.binary.f32(i32 36, float %4567, float %5197)  ; FMin(a,b)
  %5279 = fsub fast float %5278, %4567
  %5280 = fmul fast float %5279, %5149
  %5281 = fadd fast float %5280, %4567
  %5282 = fsub fast float %5210, %4595
  %5283 = fmul fast float %5282, %5149
  %5284 = fadd fast float %5283, %4595
  br label %5285

; <label>:5285                                    ; preds = %5147, %5109, %5011
  %5286 = phi float [ %5258, %5147 ], [ %4592, %5109 ], [ %4592, %5011 ]
  %5287 = phi float [ %5259, %5147 ], [ %4593, %5109 ], [ %4593, %5011 ]
  %5288 = phi float [ %5260, %5147 ], [ %4594, %5109 ], [ %4594, %5011 ]
  %5289 = phi float [ %5275, %5147 ], [ %4555, %5109 ], [ %4555, %5011 ]
  %5290 = phi float [ %5276, %5147 ], [ %4556, %5109 ], [ %4556, %5011 ]
  %5291 = phi float [ %5277, %5147 ], [ %4557, %5109 ], [ %4557, %5011 ]
  %5292 = phi float [ %5249, %5147 ], [ %4610, %5109 ], [ %4610, %5011 ]
  %5293 = phi float [ %5250, %5147 ], [ %4611, %5109 ], [ %4611, %5011 ]
  %5294 = phi float [ %5251, %5147 ], [ %4612, %5109 ], [ %4612, %5011 ]
  %5295 = phi float [ %5284, %5147 ], [ %4595, %5109 ], [ %4595, %5011 ]
  %5296 = phi float [ %5281, %5147 ], [ %4567, %5109 ], [ %4567, %5011 ]
  br i1 %5009, label %5297, label %5570

; <label>:5297                                    ; preds = %5285
  %5298 = call float @dx.op.unary.f32(i32 23, float %5296)  ; Log(value)
  %5299 = fmul fast float %5298, 4.000000e+00
  %5300 = call float @dx.op.unary.f32(i32 21, float %5299)  ; Exp(value)
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = fmul fast float %5302, %60
  %5304 = fmul fast float %5302, %61
  %5305 = fmul fast float %5302, %62
  %5306 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5307 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5308 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5309 = call float @dx.op.unary.f32(i32 23, float %5306)  ; Log(value)
  %5310 = call float @dx.op.unary.f32(i32 23, float %5307)  ; Log(value)
  %5311 = call float @dx.op.unary.f32(i32 23, float %5308)  ; Log(value)
  %5312 = fmul fast float %5309, 4.000000e+00
  %5313 = fmul fast float %5310, 4.000000e+00
  %5314 = fmul fast float %5311, 4.000000e+00
  %5315 = call float @dx.op.unary.f32(i32 21, float %5312)  ; Exp(value)
  %5316 = call float @dx.op.unary.f32(i32 21, float %5313)  ; Exp(value)
  %5317 = call float @dx.op.unary.f32(i32 21, float %5314)  ; Exp(value)
  %5318 = fadd fast float %5316, %5315
  %5319 = fadd fast float %5318, %5317
  %5320 = fdiv fast float 1.000000e+00, %5319
  %5321 = fmul fast float %5320, %5315
  %5322 = fcmp fast ogt float %69, 0.000000e+00
  %5323 = fcmp fast ogt float %70, 0.000000e+00
  %5324 = fcmp fast ogt float %71, 0.000000e+00
  %5325 = fcmp fast olt float %69, 0.000000e+00
  %5326 = fcmp fast olt float %70, 0.000000e+00
  %5327 = fcmp fast olt float %71, 0.000000e+00
  %5328 = zext i1 %5322 to i32
  %5329 = zext i1 %5323 to i32
  %5330 = zext i1 %5324 to i32
  %5331 = zext i1 %5325 to i32
  %5332 = zext i1 %5326 to i32
  %5333 = zext i1 %5327 to i32
  %5334 = sub nsw i32 %5328, %5331
  %5335 = sub nsw i32 %5329, %5332
  %5336 = sub nsw i32 %5330, %5333
  %5337 = call float @dx.op.unary.f32(i32 83, float %5303)  ; DerivCoarseX(value)
  %5338 = call float @dx.op.unary.f32(i32 83, float %5304)  ; DerivCoarseX(value)
  %5339 = call float @dx.op.unary.f32(i32 83, float %5305)  ; DerivCoarseX(value)
  %5340 = call float @dx.op.unary.f32(i32 84, float %5303)  ; DerivCoarseY(value)
  %5341 = call float @dx.op.unary.f32(i32 84, float %5304)  ; DerivCoarseY(value)
  %5342 = call float @dx.op.unary.f32(i32 84, float %5305)  ; DerivCoarseY(value)
  %5343 = fcmp fast ole float %279, %5321
  %5344 = fmul fast float %5320, %5318
  %5345 = fcmp fast ole float %279, %5344
  %5346 = select i1 %5345, float %5305, float %5303
  %5347 = select i1 %5345, float %5303, float %5304
  %5348 = select i1 %5343, float %5304, float %5346
  %5349 = select i1 %5343, float %5305, float %5347
  %5350 = select i1 %5345, float %5339, float %5337
  %5351 = select i1 %5345, float %5337, float %5338
  %5352 = select i1 %5343, float %5338, float %5350
  %5353 = select i1 %5343, float %5339, float %5351
  %5354 = select i1 %5345, float %5342, float %5340
  %5355 = select i1 %5345, float %5340, float %5341
  %5356 = select i1 %5343, float %5341, float %5354
  %5357 = select i1 %5343, float %5342, float %5355
  %5358 = call float @dx.op.unary.f32(i32 27, float %5348)  ; Round_ni(value)
  %5359 = call float @dx.op.unary.f32(i32 27, float %5349)  ; Round_ni(value)
  %5360 = fptosi float %5358 to i32
  %5361 = fptosi float %5359 to i32
  %5362 = xor i32 %5361, %5360
  %5363 = sitofp i32 %5362 to float
  %5364 = fptosi float %5363 to i32
  %5365 = sitofp i32 %5364 to float
  %5366 = fmul fast float %5365, 0x3FE3C6EF40000000
  %5367 = frem fast float %5358, 2.560000e+02
  %5368 = frem fast float %5359, 2.560000e+02
  %5369 = fptoui float %5367 to i32
  %5370 = fptoui float %5368 to i32
  %5371 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5369, i32 %5370, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.ResRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.ResRet.f32 %5371, 2
  %5375 = fadd fast float %5372, %5366
  %5376 = fadd fast float %5373, %5366
  %5377 = fadd fast float %5374, %5366
  %5378 = call float @dx.op.unary.f32(i32 22, float %5375)  ; Frc(value)
  %5379 = call float @dx.op.unary.f32(i32 22, float %5376)  ; Frc(value)
  %5380 = call float @dx.op.unary.f32(i32 22, float %5377)  ; Frc(value)
  %5381 = fmul fast float %5380, 0x401921FB60000000
  %5382 = call float @dx.op.unary.f32(i32 13, float %5381)  ; Sin(value)
  %5383 = call float @dx.op.unary.f32(i32 12, float %5381)  ; Cos(value)
  %5384 = fsub fast float -0.000000e+00, %5383
  %5385 = fmul fast float %5383, %5348
  %5386 = call float @dx.op.tertiary.f32(i32 46, float %5382, float %5349, float %5385)  ; FMad(a,b,c)
  %5387 = fmul fast float %5382, %5348
  %5388 = call float @dx.op.tertiary.f32(i32 46, float %5384, float %5349, float %5387)  ; FMad(a,b,c)
  %5389 = fadd fast float %5386, %5378
  %5390 = fadd fast float %5388, %5379
  %5391 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5392 = bitcast float %5391 to i32
  %5393 = icmp eq i32 %5392, 0
  br i1 %5393, label %5432, label %5394

; <label>:5394                                    ; preds = %5297
  %5395 = add i32 %5392, 0
  %5396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5396, %dx.types.Handle %110, float %5389, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float %5352, float %5353, float undef, float %5356, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 1
  %5401 = extractvalue %dx.types.CBufRet.f32 %5399, 2
  %5402 = fsub fast float 1.000000e+00, %5007
  %5403 = call float @dx.op.binary.f32(i32 35, float %5402, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5404 = bitcast float %5007 to i32
  %5405 = sitofp i32 %5404 to float
  %5406 = fadd fast float %5405, 0xC1CFBF8940000000
  %5407 = fmul fast float %5401, %5406
  %5408 = fadd fast float %5407, 0x41CFBF8940000000
  %5409 = fptosi float %5408 to i32
  %5410 = bitcast i32 %5409 to float
  %5411 = bitcast float %5403 to i32
  %5412 = sitofp i32 %5411 to float
  %5413 = fadd fast float %5412, 0xC1CFBF8940000000
  %5414 = fmul fast float %5413, %5401
  %5415 = fadd fast float %5414, 0x41CFBF8940000000
  %5416 = fptosi float %5415 to i32
  %5417 = bitcast i32 %5416 to float
  %5418 = fmul fast float %5410, %5400
  %5419 = fmul fast float %5417, %5400
  %5420 = fsub fast float %5403, %5418
  %5421 = fadd fast float %5419, %5403
  %5422 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5423 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5424 = fsub fast float %5398, %5422
  %5425 = fsub fast float %5423, %5422
  %5426 = bitcast float %5425 to i32
  %5427 = sub nsw i32 2129859010, %5426
  %5428 = bitcast i32 %5427 to float
  %5429 = fmul fast float %5428, %5424
  %5430 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5431 = fcmp fast olt float %5430, 0x3F70101020000000
  br i1 %5431, label %5570, label %5432

; <label>:5432                                    ; preds = %5394, %5297
  %5433 = phi float [ %5430, %5394 ], [ %5007, %5297 ]
  %5434 = fmul fast float %5433, %5300
  %5435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.i32 %5435, 1
  %5437 = extractvalue %dx.types.CBufRet.i32 %5435, 0
  %5438 = add i32 %5437, 0
  %5439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5440 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5439, %dx.types.Handle %109, float %5389, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float %5352, float %5353, float undef, float %5356, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = extractvalue %dx.types.ResRet.f32 %5440, 3
  %5445 = and i32 %5436, 255
  %5446 = uitofp i32 %5445 to float
  %5447 = lshr i32 %5436, 8
  %5448 = and i32 %5447, 255
  %5449 = uitofp i32 %5448 to float
  %5450 = fmul fast float %5444, %5446
  %5451 = fadd fast float %5450, %5449
  %5452 = fmul fast float %5451, 0x3F70101000000000
  %5453 = fadd fast float %5452, 0xBFB99999A0000000
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = fmul fast float %5454, 0x3FF1C71C80000000
  %5456 = call float @dx.op.binary.f32(i32 36, float %5452, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5457 = fsub fast float 1.000000e+00, %5455
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = fmul fast float %5458, %5441
  %5460 = fmul fast float %5458, %5442
  %5461 = fmul fast float %5458, %5443
  %5462 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = fmul fast float %5455, %5441
  %5466 = fmul fast float %5455, %5442
  %5467 = fmul fast float %5455, %5443
  %5468 = fadd fast float %5465, %5456
  %5469 = fadd fast float %5466, %5456
  %5470 = fadd fast float %5467, %5456
  %5471 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.i32 %5474, 3
  %5476 = extractvalue %dx.types.CBufRet.i32 %5474, 2
  %5477 = add i32 %5476, 0
  %5478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5479 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5478, %dx.types.Handle %109, float %5389, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float %5352, float %5353, float undef, float %5356, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5480 = extractvalue %dx.types.ResRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.ResRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.ResRet.f32 %5479, 2
  %5483 = extractvalue %dx.types.ResRet.f32 %5479, 3
  %5484 = and i32 %5475, 255
  %5485 = uitofp i32 %5484 to float
  %5486 = lshr i32 %5475, 8
  %5487 = and i32 %5486, 255
  %5488 = uitofp i32 %5487 to float
  %5489 = lshr i32 %5475, 16
  %5490 = and i32 %5489, 255
  %5491 = uitofp i32 %5490 to float
  %5492 = fmul fast float %5491, 0x3F70101000000000
  %5493 = fmul fast float %5480, %5485
  %5494 = fadd fast float %5493, %5488
  %5495 = fmul fast float %5494, 0x3F70101000000000
  %5496 = fadd fast float %5481, -5.000000e-01
  %5497 = fadd fast float %5483, -5.000000e-01
  %5498 = fmul fast float %5496, %5492
  %5499 = fmul fast float %5497, %5492
  %5500 = fadd fast float %5498, 5.000000e-01
  %5501 = fadd fast float %5499, 5.000000e-01
  %5502 = fmul fast float %5500, 2.000000e+00
  %5503 = fadd fast float %5502, -1.000000e+00
  %5504 = fmul fast float %5501, 2.000000e+00
  %5505 = fadd fast float %5504, -1.000000e+00
  %5506 = fadd fast float %5503, %5505
  %5507 = fmul fast float %5506, 5.000000e-01
  %5508 = fsub fast float %5503, %5505
  %5509 = fmul fast float %5508, 5.000000e-01
  %5510 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5513 = fsub fast float %5511, %5512
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5509, float %5513, float %5507, float %5509, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 25, float %5514)  ; Rsqrt(value)
  %5516 = fmul fast float %5507, %5515
  %5517 = fmul fast float %5509, %5515
  %5518 = select i1 %5345, i32 %5335, i32 %5336
  %5519 = select i1 %5343, i32 %5334, i32 %5518
  %5520 = sitofp i32 %5519 to float
  %5521 = fmul fast float %5513, %5520
  %5522 = fmul fast float %5521, %5515
  %5523 = select i1 %5345, float %5522, float %5517
  %5524 = select i1 %5345, float %5517, float %5522
  %5525 = select i1 %5343, float %5522, float %5516
  %5526 = select i1 %5343, float %5517, float %5523
  %5527 = select i1 %5343, float %5516, float %5524
  %5528 = fsub fast float %5462, %5292
  %5529 = fsub fast float %5463, %5293
  %5530 = fsub fast float %5464, %5294
  %5531 = fmul fast float %5528, %5434
  %5532 = fmul fast float %5529, %5434
  %5533 = fmul fast float %5530, %5434
  %5534 = fadd fast float %5531, %5292
  %5535 = fadd fast float %5532, %5293
  %5536 = fadd fast float %5533, %5294
  %5537 = fsub fast float %5471, %5286
  %5538 = fsub fast float %5472, %5287
  %5539 = fsub fast float %5473, %5288
  %5540 = fmul fast float %5537, %5434
  %5541 = fmul fast float %5538, %5434
  %5542 = fmul fast float %5539, %5434
  %5543 = fadd fast float %5540, %5286
  %5544 = fadd fast float %5541, %5287
  %5545 = fadd fast float %5542, %5288
  %5546 = fadd fast float %5525, %5289
  %5547 = fadd fast float %5526, %5290
  %5548 = fadd fast float %5527, %5291
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5548, float %5546, float %5547, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = call float @dx.op.unary.f32(i32 25, float %5549)  ; Rsqrt(value)
  %5551 = fmul fast float %5546, %5550
  %5552 = fmul fast float %5547, %5550
  %5553 = fmul fast float %5548, %5550
  %5554 = fsub fast float %5551, %5289
  %5555 = fsub fast float %5552, %5290
  %5556 = fsub fast float %5553, %5291
  %5557 = fmul fast float %5554, %5434
  %5558 = fmul fast float %5555, %5434
  %5559 = fmul fast float %5556, %5434
  %5560 = fadd fast float %5557, %5289
  %5561 = fadd fast float %5558, %5290
  %5562 = fadd fast float %5559, %5291
  %5563 = call float @dx.op.binary.f32(i32 36, float %5296, float %5482)  ; FMin(a,b)
  %5564 = fsub fast float %5563, %5296
  %5565 = fmul fast float %5564, %5434
  %5566 = fadd fast float %5565, %5296
  %5567 = fsub fast float %5495, %5295
  %5568 = fmul fast float %5567, %5434
  %5569 = fadd fast float %5568, %5295
  br label %5570

; <label>:5570                                    ; preds = %5432, %5394, %5285, %5001
  %5571 = phi float [ %5543, %5432 ], [ %5286, %5394 ], [ %5286, %5285 ], [ %4592, %5001 ]
  %5572 = phi float [ %5544, %5432 ], [ %5287, %5394 ], [ %5287, %5285 ], [ %4593, %5001 ]
  %5573 = phi float [ %5545, %5432 ], [ %5288, %5394 ], [ %5288, %5285 ], [ %4594, %5001 ]
  %5574 = phi float [ %5560, %5432 ], [ %5289, %5394 ], [ %5289, %5285 ], [ %4555, %5001 ]
  %5575 = phi float [ %5561, %5432 ], [ %5290, %5394 ], [ %5290, %5285 ], [ %4556, %5001 ]
  %5576 = phi float [ %5562, %5432 ], [ %5291, %5394 ], [ %5291, %5285 ], [ %4557, %5001 ]
  %5577 = phi float [ %5534, %5432 ], [ %5292, %5394 ], [ %5292, %5285 ], [ %4610, %5001 ]
  %5578 = phi float [ %5535, %5432 ], [ %5293, %5394 ], [ %5293, %5285 ], [ %4611, %5001 ]
  %5579 = phi float [ %5536, %5432 ], [ %5294, %5394 ], [ %5294, %5285 ], [ %4612, %5001 ]
  %5580 = phi float [ %5569, %5432 ], [ %5295, %5394 ], [ %5295, %5285 ], [ %4595, %5001 ]
  %5581 = phi float [ %5566, %5432 ], [ %5296, %5394 ], [ %5296, %5285 ], [ %4567, %5001 ]
  %5582 = fcmp fast une float %5005, 0.000000e+00
  %5583 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.unary.f32(i32 25, float %5583)  ; Rsqrt(value)
  br i1 %5582, label %5592, label %5585

; <label>:5585                                    ; preds = %5570
  %5586 = fmul fast float %5584, %196
  %5587 = fmul fast float %5584, %197
  %5588 = fmul fast float %5584, %198
  %5589 = fsub fast float -0.000000e+00, %5586
  %5590 = fsub fast float -0.000000e+00, %5587
  %5591 = fsub fast float -0.000000e+00, %5588
  br label %5759

; <label>:5592                                    ; preds = %5570
  %5593 = fmul fast float %196, %5584
  %5594 = fsub fast float -0.000000e+00, %5593
  %5595 = fmul fast float %197, %5584
  %5596 = fsub fast float -0.000000e+00, %5595
  %5597 = fmul fast float %198, %5584
  %5598 = fsub fast float -0.000000e+00, %5597
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5596, float %5598, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fmul fast float %5005, 2.500000e+00
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5005, 0x4013FFFFE0000000
  %5603 = fadd fast float %5602, 0xBFFFFFFFE0000000
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fmul fast float %5005, 0x4004000020000000
  %5606 = fadd fast float %5605, 0xBFF8000040000000
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %4574, 1.000000e+01
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fmul fast float %5609, 2.000000e+00
  %5611 = fsub fast float 3.000000e+00, %5610
  %5612 = fmul fast float %5609, %5609
  %5613 = fmul fast float %5612, %5611
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = fsub fast float 0x3FE3333340000000, %5580
  %5616 = fmul fast float %5615, 0x400AAAAAA0000000
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %5614, %5617
  %5619 = fmul fast float %5577, 0x3FEA2B8620000000
  %5620 = fmul fast float %5578, 0x3FEA2B8620000000
  %5621 = fmul fast float %5579, 0x3FEA2B8620000000
  %5622 = fadd fast float %5619, 0x3FC81DFBA0000000
  %5623 = fmul fast float %5622, %5577
  %5624 = fadd fast float %5623, 0x3F910E6020000000
  %5625 = fadd fast float %5620, 0x3FC81DFBA0000000
  %5626 = fmul fast float %5625, %5578
  %5627 = fadd fast float %5626, 0x3F910E6020000000
  %5628 = fadd fast float %5621, 0x3FC81DFBA0000000
  %5629 = fmul fast float %5628, %5579
  %5630 = fadd fast float %5629, 0x3F910E6020000000
  %5631 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5632 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5633 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5634 = fsub fast float %5631, %5577
  %5635 = fsub fast float %5632, %5578
  %5636 = fsub fast float %5633, %5579
  %5637 = fmul fast float %5634, %5601
  %5638 = fmul fast float %5637, %5618
  %5639 = fmul fast float %5635, %5601
  %5640 = fmul fast float %5639, %5618
  %5641 = fmul fast float %5636, %5601
  %5642 = fmul fast float %5641, %5618
  %5643 = fadd fast float %5638, %5577
  %5644 = fadd fast float %5640, %5578
  %5645 = fadd fast float %5642, %5579
  %5646 = fmul fast float %5581, %5581
  %5647 = fmul fast float %5646, %5646
  %5648 = fadd fast float %5604, 1.000000e+00
  %5649 = fsub fast float %5648, %5618
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = call float @dx.op.dot3.f32(i32 55, float %122, float %124, float %126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5662 = bitcast float %5571 to i32
  %5663 = ashr i32 %5662, 1
  %5664 = add nsw i32 %5663, 532487669
  %5665 = bitcast i32 %5664 to float
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = bitcast i32 %5668 to float
  %5670 = fmul fast float %5669, 2.000000e+00
  %5671 = bitcast float %5572 to i32
  %5672 = ashr i32 %5671, 1
  %5673 = add nsw i32 %5672, 532487669
  %5674 = bitcast i32 %5673 to float
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = bitcast float %5675 to i32
  %5677 = sub nsw i32 2129859010, %5676
  %5678 = bitcast i32 %5677 to float
  %5679 = fmul fast float %5678, 2.000000e+00
  %5680 = bitcast float %5573 to i32
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
  %5716 = fsub fast float 1.000000e+00, %4986
  %5717 = fmul fast float %5656, %5716
  %5718 = fmul fast float %5659, %5659
  %5719 = fmul fast float %5718, %5717
  %5720 = fmul fast float %5719, %5661
  %5721 = fmul fast float %5716, 0xBFE99999A0000000
  %5722 = fmul fast float %5721, %5601
  %5723 = fmul fast float %5722, %5618
  %5724 = fadd fast float %5723, 1.000000e+00
  %5725 = fadd fast float %5580, -1.000000e+00
  %5726 = fmul fast float %5724, %5725
  %5727 = fadd fast float %5726, 1.000000e+00
  %5728 = fsub fast float %5710, %5571
  %5729 = fsub fast float %5711, %5572
  %5730 = fsub fast float %5712, %5573
  %5731 = fmul fast float %5720, %5728
  %5732 = fmul fast float %5720, %5729
  %5733 = fmul fast float %5720, %5730
  %5734 = fadd fast float %5731, %5571
  %5735 = fadd fast float %5732, %5572
  %5736 = fadd fast float %5733, %5573
  %5737 = fsub fast float %122, %5574
  %5738 = fsub fast float %124, %5575
  %5739 = fsub fast float %126, %5576
  %5740 = fmul fast float %5720, %5737
  %5741 = fmul fast float %5720, %5738
  %5742 = fmul fast float %5720, %5739
  %5743 = fadd fast float %5740, %5574
  %5744 = fadd fast float %5741, %5575
  %5745 = fadd fast float %5742, %5576
  %5746 = fmul fast float %5720, %5715
  %5747 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = fmul fast float %5746, %5748
  %5750 = fadd fast float %5749, %5747
  %5751 = fsub fast float 1.000000e+00, %5581
  %5752 = fmul fast float %5720, %5751
  %5753 = fadd fast float %5752, %5581
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5743, float %5744, float %5745, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = call float @dx.op.unary.f32(i32 25, float %5754)  ; Rsqrt(value)
  %5756 = fmul fast float %5743, %5755
  %5757 = fmul fast float %5744, %5755
  %5758 = fmul fast float %5745, %5755
  br label %5759

; <label>:5759                                    ; preds = %5592, %5585
  %5760 = phi float [ %5591, %5585 ], [ %5598, %5592 ]
  %5761 = phi float [ %5590, %5585 ], [ %5596, %5592 ]
  %5762 = phi float [ %5589, %5585 ], [ %5594, %5592 ]
  %5763 = phi float [ %5588, %5585 ], [ %5597, %5592 ]
  %5764 = phi float [ %5587, %5585 ], [ %5595, %5592 ]
  %5765 = phi float [ %5586, %5585 ], [ %5593, %5592 ]
  %5766 = phi float [ %5571, %5585 ], [ %5734, %5592 ]
  %5767 = phi float [ %5572, %5585 ], [ %5735, %5592 ]
  %5768 = phi float [ %5573, %5585 ], [ %5736, %5592 ]
  %5769 = phi float [ %5574, %5585 ], [ %5756, %5592 ]
  %5770 = phi float [ %5575, %5585 ], [ %5757, %5592 ]
  %5771 = phi float [ %5576, %5585 ], [ %5758, %5592 ]
  %5772 = phi float [ %5577, %5585 ], [ %5643, %5592 ]
  %5773 = phi float [ %5578, %5585 ], [ %5644, %5592 ]
  %5774 = phi float [ %5579, %5585 ], [ %5645, %5592 ]
  %5775 = phi float [ %5580, %5585 ], [ %5750, %5592 ]
  %5776 = phi float [ %5581, %5585 ], [ %5753, %5592 ]
  %5777 = fsub fast float -0.000000e+00, %198
  %5778 = select i1 %268, float 0.000000e+00, float %5768
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %5771, float %5762, float %5761, float %5760)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = call float @dx.op.unary.f32(i32 7, float %5779)  ; Saturate(value)
  %5781 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5764, float %5763, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = fmul fast float %5781, 2.000000e+00
  %5783 = fmul fast float %5782, %5769
  %5784 = fmul fast float %5782, %5770
  %5785 = fmul fast float %5782, %5771
  %5786 = fsub fast float %5765, %5783
  %5787 = fsub fast float %5764, %5784
  %5788 = fsub fast float %5763, %5785
  %5789 = call float @dx.op.binary.f32(i32 36, float %5776, float 1.000000e+00)  ; FMin(a,b)
  %5790 = fsub fast float 1.000000e+00, %5776
  %5791 = bitcast float %5790 to i32
  %5792 = sub nsw i32 2129859010, %5791
  %5793 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5794 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = fcmp fast oeq float %5794, 0.000000e+00
  %5796 = fcmp fast oeq float %5793, 0.000000e+00
  %5797 = or i1 %5796, %5795
  br i1 %5797, label %5827, label %5798

; <label>:5798                                    ; preds = %5759
  %5799 = fsub fast float -0.000000e+00, %87
  %5800 = fsub fast float -0.000000e+00, %85
  %5801 = call float @dx.op.unary.f32(i32 24, float %5794)  ; Sqrt(value)
  %5802 = fdiv fast float %5801, %5793
  %5803 = fcmp fast ogt float %5802, 0x3FFB6F8900000000
  %5804 = select i1 %5803, float 0x3FFB6F8900000000, float %5802
  %5805 = fmul fast float %5804, 0x3FE8A23460000000
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5804, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5808 = fmul fast float %5806, %5793
  %5809 = fmul fast float %5807, 0x3FF279A740000000
  %5810 = fadd fast float %5809, -1.000000e+00
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %86, float %5799, float %5800, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.unary.f32(i32 25, float %5811)  ; Rsqrt(value)
  %5813 = fmul fast float %5812, %5799
  %5814 = fmul fast float %5812, %5800
  %5815 = fmul fast float %5812, %86
  %5816 = fmul fast float %5810, %5810
  %5817 = fsub fast float 1.000000e+00, %5816
  %5818 = fmul fast float %5807, 0x40005F8BE0000000
  %5819 = fsub fast float 0x400C5BF8A0000000, %5818
  %5820 = fdiv fast float %5808, %5819
  %5821 = fmul fast float %5820, 0x3FEE31C3C0000000
  %5822 = fmul fast float %5821, %5817
  %5823 = fmul fast float %5807, 0x3FDACB7480000000
  %5824 = fadd fast float %5823, 0xBFD7347680000000
  %5825 = fmul fast float %5824, %5820
  %5826 = fmul fast float %5825, %5817
  br label %5827

; <label>:5827                                    ; preds = %5798, %5759
  %5828 = phi float [ %5813, %5798 ], [ 0.000000e+00, %5759 ]
  %5829 = phi float [ %5814, %5798 ], [ 0.000000e+00, %5759 ]
  %5830 = phi float [ %5815, %5798 ], [ 0.000000e+00, %5759 ]
  %5831 = phi float [ %5822, %5798 ], [ 0.000000e+00, %5759 ]
  %5832 = phi float [ %5826, %5798 ], [ 0.000000e+00, %5759 ]
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5830, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = fmul fast float %5833, %5833
  %5835 = fmul fast float %5834, 0x3FEE471020000000
  %5836 = fadd fast float %5835, 0xBFD42F6020000000
  %5837 = fmul fast float %5793, 0x3FD20DD760000000
  %5838 = fmul fast float %5836, %5832
  %5839 = fmul fast float %5831, 0x3FDF454380000000
  %5840 = fmul fast float %5839, %5833
  %5841 = fadd fast float %5840, %5837
  %5842 = fadd fast float %5841, %5838
  %5843 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5830, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5844 = fmul fast float %5843, 0x3FDF454380000000
  %5845 = fmul fast float %5843, %5843
  %5846 = fmul fast float %5845, 0x3FEE471020000000
  %5847 = fadd fast float %5846, 0xBFD42F6020000000
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5831, float %5832, float 0x3FD20DD760000000, float %5844, float %5847)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5850 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fcmp fast oeq float %5850, 0.000000e+00
  %5852 = fcmp fast oeq float %5849, 0.000000e+00
  %5853 = or i1 %5852, %5851
  br i1 %5853, label %5883, label %5854

; <label>:5854                                    ; preds = %5827
  %5855 = fsub fast float -0.000000e+00, %83
  %5856 = fsub fast float -0.000000e+00, %81
  %5857 = call float @dx.op.unary.f32(i32 24, float %5850)  ; Sqrt(value)
  %5858 = fdiv fast float %5857, %5849
  %5859 = fcmp fast ogt float %5858, 0x3FFB6F8900000000
  %5860 = select i1 %5859, float 0x3FFB6F8900000000, float %5858
  %5861 = fmul fast float %5860, 0x3FE8A23460000000
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = call float @dx.op.binary.f32(i32 35, float %5860, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5864 = fmul fast float %5862, %5849
  %5865 = fmul fast float %5863, 0x3FF279A740000000
  %5866 = fadd fast float %5865, -1.000000e+00
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5856, float %82, float %5855, float %5856, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = call float @dx.op.unary.f32(i32 25, float %5867)  ; Rsqrt(value)
  %5869 = fmul fast float %5868, %5855
  %5870 = fmul fast float %5868, %5856
  %5871 = fmul fast float %5868, %82
  %5872 = fmul fast float %5866, %5866
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = fmul fast float %5863, 0x40005F8BE0000000
  %5875 = fsub fast float 0x400C5BF8A0000000, %5874
  %5876 = fdiv fast float %5864, %5875
  %5877 = fmul fast float %5876, 0x3FEE31C3C0000000
  %5878 = fmul fast float %5877, %5873
  %5879 = fmul fast float %5863, 0x3FDACB7480000000
  %5880 = fadd fast float %5879, 0xBFD7347680000000
  %5881 = fmul fast float %5880, %5876
  %5882 = fmul fast float %5881, %5873
  br label %5883

; <label>:5883                                    ; preds = %5854, %5827
  %5884 = phi float [ %5869, %5854 ], [ 0.000000e+00, %5827 ]
  %5885 = phi float [ %5870, %5854 ], [ 0.000000e+00, %5827 ]
  %5886 = phi float [ %5871, %5854 ], [ 0.000000e+00, %5827 ]
  %5887 = phi float [ %5878, %5854 ], [ 0.000000e+00, %5827 ]
  %5888 = phi float [ %5882, %5854 ], [ 0.000000e+00, %5827 ]
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5884, float %5885, float %5886, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = fmul fast float %5889, %5889
  %5891 = fmul fast float %5890, 0x3FEE471020000000
  %5892 = fadd fast float %5891, 0xBFD42F6020000000
  %5893 = fmul fast float %5849, 0x3FD20DD760000000
  %5894 = fmul fast float %5892, %5888
  %5895 = fmul fast float %5887, 0x3FDF454380000000
  %5896 = fmul fast float %5895, %5889
  %5897 = fadd fast float %5896, %5893
  %5898 = fadd fast float %5897, %5894
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5884, float %5885, float %5886, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fmul fast float %5899, 0x3FDF454380000000
  %5901 = fmul fast float %5899, %5899
  %5902 = fmul fast float %5901, 0x3FEE471020000000
  %5903 = fadd fast float %5902, 0xBFD42F6020000000
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5887, float %5888, float 0x3FD20DD760000000, float %5900, float %5903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5906 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = fcmp fast oeq float %5906, 0.000000e+00
  %5908 = fcmp fast oeq float %5905, 0.000000e+00
  %5909 = or i1 %5908, %5907
  br i1 %5909, label %5939, label %5910

; <label>:5910                                    ; preds = %5883
  %5911 = fsub fast float -0.000000e+00, %79
  %5912 = fsub fast float -0.000000e+00, %77
  %5913 = call float @dx.op.unary.f32(i32 24, float %5906)  ; Sqrt(value)
  %5914 = fdiv fast float %5913, %5905
  %5915 = fcmp fast ogt float %5914, 0x3FFB6F8900000000
  %5916 = select i1 %5915, float 0x3FFB6F8900000000, float %5914
  %5917 = fmul fast float %5916, 0x3FE8A23460000000
  %5918 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5916, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5920 = fmul fast float %5918, %5905
  %5921 = fmul fast float %5919, 0x3FF279A740000000
  %5922 = fadd fast float %5921, -1.000000e+00
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5912, float %78, float %5911, float %5912, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = call float @dx.op.unary.f32(i32 25, float %5923)  ; Rsqrt(value)
  %5925 = fmul fast float %5924, %5911
  %5926 = fmul fast float %5924, %5912
  %5927 = fmul fast float %5924, %78
  %5928 = fmul fast float %5922, %5922
  %5929 = fsub fast float 1.000000e+00, %5928
  %5930 = fmul fast float %5919, 0x40005F8BE0000000
  %5931 = fsub fast float 0x400C5BF8A0000000, %5930
  %5932 = fdiv fast float %5920, %5931
  %5933 = fmul fast float %5932, 0x3FEE31C3C0000000
  %5934 = fmul fast float %5933, %5929
  %5935 = fmul fast float %5919, 0x3FDACB7480000000
  %5936 = fadd fast float %5935, 0xBFD7347680000000
  %5937 = fmul fast float %5936, %5932
  %5938 = fmul fast float %5937, %5929
  br label %5939

; <label>:5939                                    ; preds = %5910, %5883
  %5940 = phi float [ %5925, %5910 ], [ 0.000000e+00, %5883 ]
  %5941 = phi float [ %5926, %5910 ], [ 0.000000e+00, %5883 ]
  %5942 = phi float [ %5927, %5910 ], [ 0.000000e+00, %5883 ]
  %5943 = phi float [ %5934, %5910 ], [ 0.000000e+00, %5883 ]
  %5944 = phi float [ %5938, %5910 ], [ 0.000000e+00, %5883 ]
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5940, float %5941, float %5942, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = fmul fast float %5945, %5945
  %5947 = fmul fast float %5946, 0x3FEE471020000000
  %5948 = fadd fast float %5947, 0xBFD42F6020000000
  %5949 = fmul fast float %5905, 0x3FD20DD760000000
  %5950 = fmul fast float %5948, %5944
  %5951 = fmul fast float %5943, 0x3FDF454380000000
  %5952 = fmul fast float %5951, %5945
  %5953 = fadd fast float %5952, %5949
  %5954 = fadd fast float %5953, %5950
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5940, float %5941, float %5942, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = fmul fast float %5955, 0x3FDF454380000000
  %5957 = fmul fast float %5955, %5955
  %5958 = fmul fast float %5957, 0x3FEE471020000000
  %5959 = fadd fast float %5958, 0xBFD42F6020000000
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5943, float %5944, float 0x3FD20DD760000000, float %5956, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5842, float 0.000000e+00)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 35, float %5898, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5954, float 0.000000e+00)  ; FMax(a,b)
  %5964 = call float @dx.op.binary.f32(i32 35, float %5848, float 0.000000e+00)  ; FMax(a,b)
  %5965 = call float @dx.op.binary.f32(i32 35, float %5904, float 0.000000e+00)  ; FMax(a,b)
  %5966 = call float @dx.op.binary.f32(i32 35, float %5960, float 0.000000e+00)  ; FMax(a,b)
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = call float @dx.op.binary.f32(i32 36, float %5772, float %5968)  ; FMin(a,b)
  %5970 = fsub fast float 1.000000e+00, %5789
  %5971 = fmul fast float %5969, %5970
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = call float @dx.op.binary.f32(i32 36, float %5773, float %5968)  ; FMin(a,b)
  %5977 = fmul fast float %5976, %5970
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = bitcast float %5978 to i32
  %5980 = sub nsw i32 2129859010, %5979
  %5981 = bitcast i32 %5980 to float
  %5982 = call float @dx.op.binary.f32(i32 36, float %5774, float %5968)  ; FMin(a,b)
  %5983 = fmul fast float %5982, %5970
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = bitcast float %5984 to i32
  %5986 = sub nsw i32 2129859010, %5985
  %5987 = bitcast i32 %5986 to float
  %5988 = fmul fast float %5961, %5789
  %5989 = fmul fast float %5988, %5975
  %5990 = fmul fast float %5962, %5789
  %5991 = fmul fast float %5990, %5981
  %5992 = fmul fast float %5963, %5789
  %5993 = fmul fast float %5992, %5987
  %5994 = call float @dx.op.binary.f32(i32 36, float %5766, float %5968)  ; FMin(a,b)
  %5995 = fmul fast float %5994, %5970
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = bitcast float %5996 to i32
  %5998 = sub nsw i32 2129859010, %5997
  %5999 = bitcast i32 %5998 to float
  %6000 = call float @dx.op.binary.f32(i32 36, float %5767, float %5968)  ; FMin(a,b)
  %6001 = fmul fast float %6000, %5970
  %6002 = fsub fast float 1.000000e+00, %6001
  %6003 = bitcast float %6002 to i32
  %6004 = sub nsw i32 2129859010, %6003
  %6005 = bitcast i32 %6004 to float
  %6006 = call float @dx.op.binary.f32(i32 36, float %5778, float %5968)  ; FMin(a,b)
  %6007 = fmul fast float %6006, %5970
  %6008 = fsub fast float 1.000000e+00, %6007
  %6009 = bitcast float %6008 to i32
  %6010 = sub nsw i32 2129859010, %6009
  %6011 = bitcast i32 %6010 to float
  %6012 = fmul fast float %5964, %5789
  %6013 = fmul fast float %6012, %5999
  %6014 = fmul fast float %5965, %5789
  %6015 = fmul fast float %6014, %6005
  %6016 = fmul fast float %5966, %5789
  %6017 = fmul fast float %6016, %6011
  %6018 = call float @dx.op.dot3.f32(i32 55, float %5989, float %5991, float %5993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6019 = select i1 %268, float 0.000000e+00, float %5989
  %6020 = select i1 %268, float %6018, float %5991
  %6021 = select i1 %268, float 0.000000e+00, float %5993
  %6022 = call float @dx.op.dot3.f32(i32 55, float %6013, float %6015, float %6017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = select i1 %268, float 0.000000e+00, float %6013
  %6024 = select i1 %268, float %6022, float %6015
  %6025 = select i1 %268, float 0.000000e+00, float %6017
  %6026 = fmul fast float %3918, %3918
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = fmul fast float %5780, 9.843750e-01
  %6029 = fmul fast float %5775, 9.843750e-01
  %6030 = fadd fast float %6028, 7.812500e-03
  %6031 = fadd fast float %6029, 7.812500e-03
  %6032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6030, float %6031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6033 = extractvalue %dx.types.ResRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.ResRet.f32 %6032, 1
  %6035 = extractvalue %dx.types.ResRet.f32 %6032, 2
  %6036 = extractvalue %dx.types.ResRet.f32 %6032, 3
  %6037 = fsub fast float 1.000000e+00, %6027
  %6038 = fsub fast float %6035, %6033
  %6039 = fsub fast float %6036, %6034
  %6040 = fmul fast float %6038, %6037
  %6041 = fmul fast float %6039, %6037
  %6042 = fadd fast float %6040, %6033
  %6043 = fadd fast float %6041, %6034
  %6044 = fmul fast float %6042, %5766
  %6045 = fmul fast float %6042, %5767
  %6046 = fmul fast float %6042, %5778
  %6047 = fadd fast float %6044, %6043
  %6048 = fadd fast float %6045, %6043
  %6049 = fadd fast float %6046, %6043
  %6050 = fcmp fast ogt float %4568, 0.000000e+00
  br i1 %6050, label %6051, label %6077

; <label>:6051                                    ; preds = %5939
  %6052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4568, float %5780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6053 = extractvalue %dx.types.ResRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.ResRet.f32 %6052, 1
  %6055 = extractvalue %dx.types.ResRet.f32 %6052, 2
  %6056 = fadd fast float %6053, -5.000000e-01
  %6057 = fadd fast float %6054, -5.000000e-01
  %6058 = fadd fast float %6055, -5.000000e-01
  %6059 = fsub fast float 1.000000e+00, %5766
  %6060 = fsub fast float 1.000000e+00, %5767
  %6061 = fsub fast float 1.000000e+00, %5778
  %6062 = fmul fast float %5766, 4.000000e+00
  %6063 = fmul fast float %6062, %6059
  %6064 = fmul fast float %6063, %6056
  %6065 = fmul fast float %5767, 4.000000e+00
  %6066 = fmul fast float %6065, %6060
  %6067 = fmul fast float %6066, %6057
  %6068 = fmul fast float %5778, 4.000000e+00
  %6069 = fmul fast float %6068, %6061
  %6070 = fmul fast float %6069, %6058
  %6071 = fadd fast float %6064, %6047
  %6072 = fadd fast float %6067, %6048
  %6073 = fadd fast float %6070, %6049
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6075 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6076 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  br label %6077

; <label>:6077                                    ; preds = %6051, %5939
  %6078 = phi float [ %6074, %6051 ], [ %6047, %5939 ]
  %6079 = phi float [ %6075, %6051 ], [ %6048, %5939 ]
  %6080 = phi float [ %6076, %6051 ], [ %6049, %5939 ]
  %6081 = call float @dx.op.binary.f32(i32 35, float %6079, float %6080)  ; FMax(a,b)
  %6082 = call float @dx.op.binary.f32(i32 35, float %6078, float %6081)  ; FMax(a,b)
  %6083 = fsub fast float 1.000000e+00, %6082
  %6084 = fmul fast float %6083, %6019
  %6085 = fmul fast float %6083, %6020
  %6086 = fmul fast float %6083, %6021
  %6087 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %5774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6088 = fcmp fast ogt float %6087, 0x3E7FF19E20000000
  %6089 = fdiv fast float 1.000000e+00, %6087
  %6090 = select i1 %6088, float %6089, float 0.000000e+00
  %6091 = fmul fast float %6090, %5772
  %6092 = fmul fast float %6090, %5773
  %6093 = fmul fast float %6090, %5774
  %6094 = fadd fast float %6091, -1.000000e+00
  %6095 = fadd fast float %6092, -1.000000e+00
  %6096 = fadd fast float %6093, -1.000000e+00
  %6097 = fmul fast float %6094, 5.000000e-01
  %6098 = fmul fast float %6095, 5.000000e-01
  %6099 = fmul fast float %6096, 5.000000e-01
  %6100 = fadd fast float %6097, 1.000000e+00
  %6101 = fadd fast float %6098, 1.000000e+00
  %6102 = fadd fast float %6099, 1.000000e+00
  %6103 = call float @dx.op.binary.f32(i32 35, float %5780, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6104 = fdiv fast float %3918, %6103
  %6105 = fcmp fast olt float %4596, 1.270000e+02
  %6106 = fcmp fast olt float %4597, 1.270000e+02
  %6107 = fcmp fast olt float %4598, 1.270000e+02
  %6108 = fmul fast float %4596, 0xBFF7154760000000
  %6109 = fmul fast float %6108, %6104
  %6110 = fmul fast float %4597, 0xBFF7154760000000
  %6111 = fmul fast float %6110, %6104
  %6112 = fmul fast float %4598, 0xBFF7154760000000
  %6113 = fmul fast float %6112, %6104
  %6114 = call float @dx.op.unary.f32(i32 21, float %6109)  ; Exp(value)
  %6115 = call float @dx.op.unary.f32(i32 21, float %6111)  ; Exp(value)
  %6116 = call float @dx.op.unary.f32(i32 21, float %6113)  ; Exp(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = select i1 %6105, float %6117, float 0.000000e+00
  %6121 = select i1 %6106, float %6118, float 0.000000e+00
  %6122 = select i1 %6107, float %6119, float 0.000000e+00
  %6123 = fmul fast float %6120, %6083
  %6124 = fmul fast float %6121, %6083
  %6125 = fmul fast float %6122, %6083
  %6126 = fadd fast float %6123, -1.000000e+00
  %6127 = fadd fast float %6124, -1.000000e+00
  %6128 = fadd fast float %6125, -1.000000e+00
  %6129 = fmul fast float %6078, %6023
  %6130 = fmul fast float %6079, %6024
  %6131 = fmul fast float %6080, %6025
  %6132 = fsub fast float 1.000000e+00, %5780
  %6133 = bitcast float %6132 to i32
  %6134 = sitofp i32 %6133 to float
  %6135 = fmul fast float %6134, 5.000000e+00
  %6136 = fadd fast float %6135, 0xC1EFBF8940000000
  %6137 = fptosi float %6136 to i32
  %6138 = bitcast i32 %6137 to float
  %6139 = fmul fast float %6138, %4569
  %6140 = fmul fast float %6019, %6139
  %6141 = fmul fast float %6140, %6083
  %6142 = fmul fast float %6141, %6100
  %6143 = fmul fast float %6020, %6139
  %6144 = fmul fast float %6143, %6083
  %6145 = fmul fast float %6144, %6101
  %6146 = fmul fast float %6021, %6139
  %6147 = fmul fast float %6146, %6083
  %6148 = fmul fast float %6147, %6102
  %6149 = fmul fast float %6084, %4565
  %6150 = fmul fast float %6085, %4565
  %6151 = fmul fast float %6086, %4565
  %6152 = fadd fast float %6129, %4561
  %6153 = fadd fast float %6152, %6142
  %6154 = fmul fast float %6153, %4565
  %6155 = fadd fast float %6130, %4562
  %6156 = fadd fast float %6155, %6145
  %6157 = fmul fast float %6156, %4565
  %6158 = fadd fast float %6131, %4563
  %6159 = fadd fast float %6158, %6148
  %6160 = fmul fast float %6159, %4565
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 3
  %6163 = fcmp fast oeq float %6162, 0.000000e+00
  br i1 %6163, label %7261, label %6164

; <label>:6164                                    ; preds = %6077
  %6165 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6161, 2
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6170 = extractvalue %dx.types.CBufRet.f32 %6168, 1
  %6171 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6176 = select i1 %268, float %6173, float %6169
  %6177 = select i1 %268, float %6175, float %6170
  %6178 = select i1 %268, float %6174, float %6171
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6181 = fmul fast float %6180, %122
  %6182 = fmul fast float %6180, %124
  %6183 = fmul fast float %6180, %126
  %6184 = fadd fast float %6181, %196
  %6185 = fadd fast float %6182, %197
  %6186 = fadd fast float %6183, %198
  %6187 = fcmp fast olt float %6162, 0.000000e+00
  br i1 %6187, label %6827, label %6188

; <label>:6188                                    ; preds = %6164
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 0
  %6191 = extractvalue %dx.types.CBufRet.f32 %6189, 1
  %6192 = extractvalue %dx.types.CBufRet.f32 %6189, 2
  %6193 = extractvalue %dx.types.CBufRet.f32 %6189, 3
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.CBufRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.CBufRet.f32 %6194, 2
  %6198 = extractvalue %dx.types.CBufRet.f32 %6194, 3
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6202 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6203 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6204 = fmul fast float %6190, %6184
  %6205 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6191, float %6204)  ; FMad(a,b,c)
  %6206 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6192, float %6205)  ; FMad(a,b,c)
  %6207 = fadd fast float %6206, %6193
  %6208 = fmul fast float %6195, %6184
  %6209 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6196, float %6208)  ; FMad(a,b,c)
  %6210 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6197, float %6209)  ; FMad(a,b,c)
  %6211 = fadd fast float %6210, %6198
  %6212 = fmul fast float %6200, %6184
  %6213 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6201, float %6212)  ; FMad(a,b,c)
  %6214 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6202, float %6213)  ; FMad(a,b,c)
  %6215 = fadd fast float %6214, %6203
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = fcmp fast une float %6217, 0.000000e+00
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.CBufRet.f32 %6219, 3
  %6223 = fmul fast float %6222, %6207
  %6224 = fmul fast float %6222, %6211
  %6225 = fadd fast float %6223, %6220
  %6226 = fadd fast float %6224, %6221
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6230 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6231 = fmul fast float %6230, %6207
  %6232 = fmul fast float %6230, %6211
  %6233 = fadd fast float %6231, %6228
  %6234 = fadd fast float %6232, %6229
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6237 = fsub fast float %6236, %6215
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = fmul fast float %6237, %6238
  %6240 = fsub fast float 1.000000e+00, %6239
  %6241 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  br i1 %6218, label %6302, label %6242

; <label>:6242                                    ; preds = %6188
  %6243 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6246 = fadd fast float %6245, %6243
  %6247 = fcmp fast ogt float %6246, 0.000000e+00
  br i1 %6247, label %6248, label %6272

; <label>:6248                                    ; preds = %6242
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = fsub fast float %6233, %6250
  %6253 = fsub fast float %6234, %6251
  %6254 = fcmp fast olt float %6252, 0.000000e+00
  %6255 = fcmp fast olt float %6253, 0.000000e+00
  %6256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.CBufRet.f32 %6256, 1
  %6259 = extractvalue %dx.types.CBufRet.f32 %6256, 2
  %6260 = extractvalue %dx.types.CBufRet.f32 %6256, 3
  %6261 = select i1 %6254, float %6257, float %6259
  %6262 = select i1 %6255, float %6258, float %6260
  %6263 = fmul fast float %6261, %6252
  %6264 = fmul fast float %6262, %6253
  %6265 = call float @dx.op.unary.f32(i32 6, float %6263)  ; FAbs(value)
  %6266 = call float @dx.op.unary.f32(i32 6, float %6264)  ; FAbs(value)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6268 = call float @dx.op.binary.f32(i32 35, float %6265, float %6266)  ; FMax(a,b)
  %6269 = fsub fast float %6267, %6268
  %6270 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6271 = fmul fast float %6270, %6241
  br label %6272

; <label>:6272                                    ; preds = %6248, %6242
  %6273 = phi float [ %6271, %6248 ], [ 0.000000e+00, %6242 ]
  %6274 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6276 = fadd fast float %6275, %6274
  %6277 = fcmp fast ogt float %6276, 0.000000e+00
  br i1 %6277, label %6278, label %6302

; <label>:6278                                    ; preds = %6272
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6282 = fsub fast float %6225, %6280
  %6283 = fsub fast float %6226, %6281
  %6284 = fcmp fast olt float %6282, 0.000000e+00
  %6285 = fcmp fast olt float %6283, 0.000000e+00
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.CBufRet.f32 %6286, 1
  %6289 = extractvalue %dx.types.CBufRet.f32 %6286, 2
  %6290 = extractvalue %dx.types.CBufRet.f32 %6286, 3
  %6291 = select i1 %6284, float %6287, float %6289
  %6292 = select i1 %6285, float %6288, float %6290
  %6293 = fmul fast float %6291, %6282
  %6294 = fmul fast float %6292, %6283
  %6295 = call float @dx.op.unary.f32(i32 6, float %6293)  ; FAbs(value)
  %6296 = call float @dx.op.unary.f32(i32 6, float %6294)  ; FAbs(value)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6298 = call float @dx.op.binary.f32(i32 35, float %6295, float %6296)  ; FMax(a,b)
  %6299 = fsub fast float %6297, %6298
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = fmul fast float %6300, %6241
  br label %6302

; <label>:6302                                    ; preds = %6278, %6272, %6188
  %6303 = phi float [ 0.000000e+00, %6188 ], [ %6301, %6278 ], [ 0.000000e+00, %6272 ]
  %6304 = phi float [ 0.000000e+00, %6188 ], [ %6273, %6278 ], [ %6273, %6272 ]
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6307 = call float @dx.op.unary.f32(i32 7, float %6306)  ; Saturate(value)
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6311 = fsub fast float %6207, %6309
  %6312 = fsub fast float %6211, %6310
  %6313 = fcmp fast olt float %6311, 0.000000e+00
  %6314 = fcmp fast olt float %6312, 0.000000e+00
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6319 = extractvalue %dx.types.CBufRet.f32 %6315, 3
  %6320 = select i1 %6313, float %6316, float %6318
  %6321 = select i1 %6314, float %6317, float %6319
  %6322 = fmul fast float %6320, %6311
  %6323 = fmul fast float %6321, %6312
  %6324 = call float @dx.op.unary.f32(i32 6, float %6322)  ; FAbs(value)
  %6325 = call float @dx.op.unary.f32(i32 6, float %6323)  ; FAbs(value)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6327 = call float @dx.op.binary.f32(i32 35, float %6324, float %6325)  ; FMax(a,b)
  %6328 = fsub fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6330 = call float @dx.op.binary.f32(i32 36, float %6329, float %6307)  ; FMin(a,b)
  %6331 = fmul fast float %6330, %6241
  %6332 = fsub fast float %6303, %6331
  %6333 = fsub fast float %6304, %6303
  %6334 = fsub fast float %6333, %6331
  %6335 = call float @dx.op.binary.f32(i32 35, float %6303, float %6304)  ; FMax(a,b)
  %6336 = call float @dx.op.binary.f32(i32 35, float %6331, float %6335)  ; FMax(a,b)
  %6337 = fcmp fast olt float %6336, 1.000000e+00
  br i1 %6337, label %6338, label %6736, !dx.controlflow.hints !98

; <label>:6338                                    ; preds = %6302
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = fcmp fast une float %6340, 0.000000e+00
  br i1 %6341, label %6342, label %6736, !dx.controlflow.hints !99

; <label>:6342                                    ; preds = %6338
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6346 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6347 = extractvalue %dx.types.CBufRet.f32 %6343, 3
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6358 = fmul fast float %6344, %6184
  %6359 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6345, float %6358)  ; FMad(a,b,c)
  %6360 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6346, float %6359)  ; FMad(a,b,c)
  %6361 = fadd fast float %6360, %6347
  %6362 = fmul fast float %6349, %6184
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6350, float %6362)  ; FMad(a,b,c)
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6351, float %6363)  ; FMad(a,b,c)
  %6365 = fadd fast float %6364, %6352
  %6366 = fmul fast float %6354, %6184
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6355, float %6366)  ; FMad(a,b,c)
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6356, float %6367)  ; FMad(a,b,c)
  %6369 = fadd fast float %6368, %6357
  %6370 = fcmp fast oge float %6361, 1.000000e+00
  %6371 = fcmp fast oge float %6365, 1.000000e+00
  %6372 = or i1 %6370, %6371
  %6373 = fcmp fast olt float %6361, 0.000000e+00
  %6374 = fcmp fast olt float %6365, 0.000000e+00
  %6375 = or i1 %6373, %6374
  %6376 = or i1 %6372, %6375
  br i1 %6376, label %6736, label %6377, !dx.controlflow.hints !100

; <label>:6377                                    ; preds = %6342
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.i32 %6382, 2
  %6384 = uitofp i32 %6383 to float
  %6385 = extractvalue %dx.types.CBufRet.i32 %6382, 3
  %6386 = uitofp i32 %6385 to float
  %6387 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6388 = fmul fast float %6387, 2.000000e+00
  %6389 = fsub fast float %6361, %6379
  %6390 = fsub fast float %6365, %6380
  %6391 = fmul fast float %6388, %6389
  %6392 = fmul fast float %6388, %6390
  %6393 = fdiv fast float 1.000000e+00, %6167
  %6394 = fmul fast float %6392, %6393
  %6395 = call float @dx.op.unary.f32(i32 6, float %6394)  ; FAbs(value)
  %6396 = fmul fast float %6381, %6186
  %6397 = fmul fast float %6396, %6388
  %6398 = call float @dx.op.unary.f32(i32 6, float %6397)  ; FAbs(value)
  %6399 = call float @dx.op.unary.f32(i32 6, float %6391)  ; FAbs(value)
  %6400 = call float @dx.op.binary.f32(i32 35, float %6398, float %6395)  ; FMax(a,b)
  %6401 = call float @dx.op.binary.f32(i32 35, float %6399, float %6400)  ; FMax(a,b)
  %6402 = fmul fast float %6401, 2.000000e+00
  %6403 = call float @dx.op.unary.f32(i32 23, float %6402)  ; Log(value)
  %6404 = call float @dx.op.binary.f32(i32 35, float %6403, float %6384)  ; FMax(a,b)
  %6405 = call float @dx.op.unary.f32(i32 22, float %6404)  ; Frc(value)
  %6406 = fadd fast float %6405, 0xBFEA666660000000
  %6407 = fmul fast float %6406, 8.000000e+00
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = call float @dx.op.unary.f32(i32 27, float %6404)  ; Round_ni(value)
  %6410 = fadd fast float %6409, %6408
  %6411 = call float @dx.op.binary.f32(i32 36, float %6410, float %6386)  ; FMin(a,b)
  %6412 = call float @dx.op.unary.f32(i32 27, float %6411)  ; Round_ni(value)
  %6413 = fsub fast float -0.000000e+00, %6412
  %6414 = call float @dx.op.unary.f32(i32 21, float %6413)  ; Exp(value)
  %6415 = fmul fast float %6414, %6388
  %6416 = fmul fast float %6415, %6361
  %6417 = fmul fast float %6415, %6365
  %6418 = fmul fast float %6416, 2.500000e-01
  %6419 = fmul fast float %6417, 2.500000e-01
  %6420 = fadd fast float %6418, 5.000000e-01
  %6421 = fadd fast float %6419, 5.000000e-01
  %6422 = fsub fast float %6386, %6384
  %6423 = fptoui float %6422 to i32
  %6424 = add i32 %6423, 320
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6424)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = fcmp fast une float %6411, %6386
  %6429 = fsub fast float %6361, %6426
  %6430 = fsub fast float %6365, %6427
  %6431 = call float @dx.op.unary.f32(i32 6, float %6429)  ; FAbs(value)
  %6432 = call float @dx.op.unary.f32(i32 6, float %6430)  ; FAbs(value)
  %6433 = fmul fast float %6431, %6415
  %6434 = fmul fast float %6432, %6415
  %6435 = fcmp fast olt float %6433, 1.000000e+00
  %6436 = fcmp fast olt float %6434, 1.000000e+00
  %6437 = and i1 %6435, %6436
  %6438 = or i1 %6428, %6437
  br i1 %6438, label %6439, label %6736, !dx.controlflow.hints !101

; <label>:6439                                    ; preds = %6377
  %6440 = fmul fast float %6417, 5.000000e-01
  %6441 = fmul fast float %6416, 5.000000e-01
  %6442 = fadd fast float %6440, 5.000000e-01
  %6443 = fadd fast float %6441, 5.000000e-01
  %6444 = sitofp i32 %6383 to float
  %6445 = fsub fast float %6411, %6444
  %6446 = call float @dx.op.unary.f32(i32 27, float %6445)  ; Round_ni(value)
  %6447 = call float @dx.op.unary.f32(i32 22, float %6411)  ; Frc(value)
  %6448 = call float @dx.op.unary.f32(i32 22, float %6443)  ; Frc(value)
  %6449 = call float @dx.op.unary.f32(i32 22, float %6442)  ; Frc(value)
  %6450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6448, float %6449, float %6446, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6451 = extractvalue %dx.types.ResRet.f32 %6450, 0
  %6452 = extractvalue %dx.types.ResRet.f32 %6450, 1
  %6453 = extractvalue %dx.types.ResRet.f32 %6450, 2
  %6454 = extractvalue %dx.types.ResRet.f32 %6450, 3
  %6455 = fcmp fast ogt float %6447, 0.000000e+00
  br i1 %6455, label %6456, label %6477, !dx.controlflow.hints !102

; <label>:6456                                    ; preds = %6439
  %6457 = fadd fast float %6446, 1.000000e+00
  %6458 = call float @dx.op.unary.f32(i32 22, float %6420)  ; Frc(value)
  %6459 = call float @dx.op.unary.f32(i32 22, float %6421)  ; Frc(value)
  %6460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6458, float %6459, float %6457, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.ResRet.f32 %6460, 3
  %6465 = fsub fast float %6461, %6451
  %6466 = fsub fast float %6462, %6452
  %6467 = fsub fast float %6463, %6453
  %6468 = fsub fast float %6464, %6454
  %6469 = fmul fast float %6465, %6447
  %6470 = fmul fast float %6466, %6447
  %6471 = fmul fast float %6467, %6447
  %6472 = fmul fast float %6468, %6447
  %6473 = fadd fast float %6469, %6451
  %6474 = fadd fast float %6470, %6452
  %6475 = fadd fast float %6471, %6453
  %6476 = fadd fast float %6472, %6454
  br label %6477

; <label>:6477                                    ; preds = %6456, %6439
  %6478 = phi float [ %6473, %6456 ], [ %6451, %6439 ]
  %6479 = phi float [ %6474, %6456 ], [ %6452, %6439 ]
  %6480 = phi float [ %6475, %6456 ], [ %6453, %6439 ]
  %6481 = phi float [ %6476, %6456 ], [ %6454, %6439 ]
  %6482 = fadd fast float %6478, -5.000000e-01
  %6483 = fadd fast float %6480, -5.000000e-01
  %6484 = fmul fast float %6482, 0xBFD5555560000000
  %6485 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6483, float %6484)  ; FMad(a,b,c)
  %6486 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6479, float 0.000000e+00)  ; FMad(a,b,c)
  %6487 = fadd fast float %6486, %6481
  %6488 = fmul fast float %6482, -7.500000e-01
  %6489 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6483, float %6488)  ; FMad(a,b,c)
  %6490 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6479, float 0.000000e+00)  ; FMad(a,b,c)
  %6491 = fadd fast float %6490, %6481
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6497 = extractvalue %dx.types.CBufRet.f32 %6494, 2
  %6498 = extractvalue %dx.types.CBufRet.f32 %6494, 3
  %6499 = fsub fast float %6495, %6485
  %6500 = fsub fast float %6496, %6487
  %6501 = fsub fast float %6497, %6489
  %6502 = fsub fast float %6498, %6491
  %6503 = fmul fast float %6499, %6493
  %6504 = fmul fast float %6500, %6493
  %6505 = fmul fast float %6501, %6493
  %6506 = fmul fast float %6502, %6493
  %6507 = fadd fast float %6503, %6485
  %6508 = fadd fast float %6504, %6487
  %6509 = fadd fast float %6505, %6489
  %6510 = fadd fast float %6506, %6491
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = and i32 %6512, 536870911
  %6514 = uitofp i32 %6513 to float
  %6515 = fmul fast float %6514, %6361
  %6516 = fmul fast float %6514, %6365
  %6517 = fptoui float %6515 to i32
  %6518 = fptoui float %6516 to i32
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = and i32 %6520, 31
  %6522 = lshr i32 %6517, %6521
  %6523 = lshr i32 %6518, %6521
  %6524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6525 = extractvalue %dx.types.ResRet.i32 %6524, 0
  %6526 = and i32 %6525, 31
  %6527 = shl i32 1, %6526
  %6528 = call i32 @dx.op.binary.i32(i32 40, i32 %6527, i32 4)  ; UMin(a,b)
  %6529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6530 = extractvalue %dx.types.ResRet.i32 %6529, 0
  %6531 = extractvalue %dx.types.ResRet.i32 %6529, 1
  %6532 = icmp eq i32 %6528, 0
  br i1 %6532, label %6574, label %6533

; <label>:6533                                    ; preds = %6477
  br label %6534

; <label>:6534                                    ; preds = %6562, %6533
  %6535 = phi i32 [ %6565, %6562 ], [ 0, %6533 ]
  %6536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6537 = extractvalue %dx.types.ResRet.i32 %6536, 0
  %6538 = lshr i32 %6537, 16
  %6539 = and i32 %6538, 31
  %6540 = shl i32 %6523, %6539
  %6541 = add i32 %6540, %6522
  %6542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.i32 %6542, 0
  %6544 = and i32 %6543, 31
  %6545 = shl i32 %6541, %6544
  %6546 = add i32 %6545, %6535
  %6547 = shl i32 %6546, 2
  %6548 = add i32 %6547, 32
  %6549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6548, i32 undef)  ; BufferLoad(srv,index,wot)
  %6550 = extractvalue %dx.types.ResRet.i32 %6549, 0
  %6551 = icmp slt i32 %6550, 0
  %6552 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6535
  %6553 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6535
  %6554 = bitcast float* %6552 to i32*
  %6555 = bitcast float* %6553 to i32*
  br i1 %6551, label %6556, label %6562

; <label>:6556                                    ; preds = %6534
  %6557 = and i32 %6550, 1073741823
  %6558 = add nuw nsw i32 %6557, 20
  %6559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6558, i32 undef)  ; BufferLoad(srv,index,wot)
  %6560 = extractvalue %dx.types.ResRet.i32 %6559, 0
  %6561 = extractvalue %dx.types.ResRet.i32 %6559, 1
  br label %6562

; <label>:6562                                    ; preds = %6556, %6534
  %6563 = phi i32 [ %6560, %6556 ], [ %6530, %6534 ]
  %6564 = phi i32 [ %6561, %6556 ], [ %6531, %6534 ]
  store i32 %6563, i32* %6554, align 4
  store i32 %6564, i32* %6555, align 4
  %6565 = add nuw i32 %6535, 1
  %6566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.i32 %6566, 2
  %6568 = icmp eq i32 %6567, 0
  %6569 = icmp ugt i32 %6550, -1073741825
  %6570 = and i1 %6569, %6568
  %6571 = icmp ult i32 %6565, %6528
  %6572 = and i1 %6570, %6571
  br i1 %6572, label %6534, label %6573

; <label>:6573                                    ; preds = %6562
  br label %6574

; <label>:6574                                    ; preds = %6573, %6477
  %6575 = phi i32 [ 0, %6477 ], [ %6565, %6573 ]
  %6576 = extractvalue %dx.types.CBufRet.f32 %6339, 2
  %6577 = fptoui float %6576 to i32
  %6578 = icmp eq i32 %6577, 0
  br i1 %6578, label %6630, label %6579

; <label>:6579                                    ; preds = %6574
  br label %6580

; <label>:6580                                    ; preds = %6625, %6579
  %6581 = phi i32 [ %6626, %6625 ], [ %6575, %6579 ]
  %6582 = phi i32 [ %6627, %6625 ], [ 0, %6579 ]
  %6583 = lshr i32 %6582, 2
  %6584 = and i32 %6582, 3
  %6585 = add nuw nsw i32 %6583, 83
  %6586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6585)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.i32 %6586, 0
  %6588 = extractvalue %dx.types.CBufRet.i32 %6586, 1
  %6589 = extractvalue %dx.types.CBufRet.i32 %6586, 2
  %6590 = extractvalue %dx.types.CBufRet.i32 %6586, 3
  %6591 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6587, i32* %6591, align 4
  %6592 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6588, i32* %6592, align 4
  %6593 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6589, i32* %6593, align 4
  %6594 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6590, i32* %6594, align 4
  %6595 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6584
  %6596 = load i32, i32* %6595, align 4, !tbaa !103, !noalias !107
  %6597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6598 = extractvalue %dx.types.ResRet.i32 %6597, 0
  %6599 = lshr i32 %6598, 16
  %6600 = and i32 %6599, 31
  %6601 = shl i32 %6523, %6600
  %6602 = add i32 %6601, %6522
  %6603 = shl i32 %6602, 2
  %6604 = add i32 %6603, %6596
  %6605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6604, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.i32 %6605, 0
  %6607 = icmp eq i32 %6606, 0
  br i1 %6607, label %6625, label %6608

; <label>:6608                                    ; preds = %6580
  %6609 = icmp slt i32 %6606, 0
  %6610 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6581
  %6611 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6581
  %6612 = bitcast float* %6610 to i32*
  %6613 = bitcast float* %6611 to i32*
  br i1 %6609, label %6614, label %6621

; <label>:6614                                    ; preds = %6608
  %6615 = and i32 %6606, 1073741823
  %6616 = add i32 %6596, 20
  %6617 = add i32 %6616, %6615
  %6618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6617, i32 undef)  ; BufferLoad(srv,index,wot)
  %6619 = extractvalue %dx.types.ResRet.i32 %6618, 0
  %6620 = extractvalue %dx.types.ResRet.i32 %6618, 1
  br label %6621

; <label>:6621                                    ; preds = %6614, %6608
  %6622 = phi i32 [ %6619, %6614 ], [ %6530, %6608 ]
  %6623 = phi i32 [ %6620, %6614 ], [ %6531, %6608 ]
  store i32 %6622, i32* %6612, align 4
  store i32 %6623, i32* %6613, align 4
  %6624 = add i32 %6581, 1
  br label %6625

; <label>:6625                                    ; preds = %6621, %6580
  %6626 = phi i32 [ %6581, %6580 ], [ %6624, %6621 ]
  %6627 = add nuw i32 %6582, 1
  %6628 = icmp eq i32 %6627, %6577
  br i1 %6628, label %6629, label %6580

; <label>:6629                                    ; preds = %6625
  br label %6630

; <label>:6630                                    ; preds = %6629, %6574
  %6631 = phi i32 [ %6575, %6574 ], [ %6626, %6629 ]
  %6632 = icmp eq i32 %6631, 1
  %6633 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %6634 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %6632, label %6635, label %6638

; <label>:6635                                    ; preds = %6630
  %6636 = load float, float* %6633, align 4
  %6637 = load float, float* %6634, align 4
  br label %6665

; <label>:6638                                    ; preds = %6630
  %6639 = load float, float* %6633, align 4
  %6640 = load float, float* %6634, align 4
  %6641 = fdiv fast float 1.000000e+00, %6640
  %6642 = fsub fast float %6639, %6641
  %6643 = icmp ugt i32 %6631, 1
  br i1 %6643, label %6644, label %6660

; <label>:6644                                    ; preds = %6638
  br label %6645

; <label>:6645                                    ; preds = %6645, %6644
  %6646 = phi float [ %6655, %6645 ], [ %6642, %6644 ]
  %6647 = phi float [ %6656, %6645 ], [ %6639, %6644 ]
  %6648 = phi i32 [ %6657, %6645 ], [ 1, %6644 ]
  %6649 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6648
  %6650 = load float, float* %6649, align 4
  %6651 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6648
  %6652 = load float, float* %6651, align 4
  %6653 = fdiv fast float 1.000000e+00, %6652
  %6654 = fsub fast float %6650, %6653
  %6655 = call float @dx.op.binary.f32(i32 36, float %6646, float %6654)  ; FMin(a,b)
  %6656 = call float @dx.op.binary.f32(i32 35, float %6647, float %6650)  ; FMax(a,b)
  %6657 = add nuw i32 %6648, 1
  %6658 = icmp eq i32 %6657, %6631
  br i1 %6658, label %6659, label %6645

; <label>:6659                                    ; preds = %6645
  br label %6660

; <label>:6660                                    ; preds = %6659, %6638
  %6661 = phi float [ %6642, %6638 ], [ %6655, %6659 ]
  %6662 = phi float [ %6639, %6638 ], [ %6656, %6659 ]
  %6663 = fsub fast float %6662, %6661
  %6664 = fdiv fast float 1.000000e+00, %6663
  br label %6665

; <label>:6665                                    ; preds = %6660, %6635
  %6666 = phi float [ %6636, %6635 ], [ %6662, %6660 ]
  %6667 = phi float [ %6637, %6635 ], [ %6664, %6660 ]
  %6668 = fadd fast float %6369, %6666
  %6669 = fmul fast float %6668, %6667
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = fmul fast float %6670, 2.000000e+00
  %6672 = fsub fast float 1.000000e+00, %6671
  %6673 = fmul fast float %6507, %6507
  %6674 = fsub fast float %6508, %6673
  %6675 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6674)  ; FMax(a,b)
  %6676 = fdiv fast float 1.000000e+00, %6675
  %6677 = fmul fast float %6508, %6507
  %6678 = fsub fast float %6509, %6677
  %6679 = fsub fast float %6672, %6507
  %6680 = fmul fast float %6672, %6672
  %6681 = fsub fast float %6680, %6508
  %6682 = fmul fast float %6676, %6678
  %6683 = fmul fast float %6682, %6679
  %6684 = fsub fast float %6681, %6683
  %6685 = fmul fast float %6508, %6508
  %6686 = fsub fast float %6510, %6685
  %6687 = fmul fast float %6678, %6678
  %6688 = fmul fast float %6687, %6676
  %6689 = fsub fast float %6686, %6688
  %6690 = fdiv fast float %6684, %6689
  %6691 = fmul fast float %6690, %6678
  %6692 = fsub fast float %6679, %6691
  %6693 = fmul fast float %6692, %6676
  %6694 = fmul fast float %6693, %6507
  %6695 = fsub fast float 1.000000e+00, %6694
  %6696 = fmul fast float %6690, %6508
  %6697 = fsub fast float %6695, %6696
  %6698 = fmul fast float %6693, %6693
  %6699 = fmul fast float %6690, 4.000000e+00
  %6700 = fmul fast float %6699, %6697
  %6701 = fsub fast float %6698, %6700
  %6702 = call float @dx.op.unary.f32(i32 24, float %6701)  ; Sqrt(value)
  %6703 = fcmp fast oge float %6693, 0.000000e+00
  %6704 = fsub fast float -0.000000e+00, %6702
  %6705 = select i1 %6703, float %6704, float %6702
  %6706 = fsub fast float %6705, %6693
  %6707 = fdiv fast float %6706, %6690
  %6708 = fdiv fast float %6697, %6706
  %6709 = fmul fast float %6707, 5.000000e-01
  %6710 = fmul fast float %6708, 2.000000e+00
  %6711 = select i1 %6703, float %6709, float %6710
  %6712 = select i1 %6703, float %6710, float %6709
  %6713 = call float @dx.op.binary.f32(i32 35, float %6711, float %6712)  ; FMax(a,b)
  %6714 = call float @dx.op.binary.f32(i32 36, float %6711, float %6712)  ; FMin(a,b)
  %6715 = fcmp fast ogt float %6672, %6713
  %6716 = fsub fast float %6672, %6714
  %6717 = fsub fast float %6672, %6713
  %6718 = fsub fast float %6713, %6714
  %6719 = select i1 %6715, float %6717, float %6718
  %6720 = fmul float %6716, %6719
  %6721 = select i1 %6715, float %6714, float %6672
  %6722 = fcmp fast ogt float %6672, %6714
  %6723 = fmul fast float %6721, %6713
  %6724 = fadd fast float %6721, %6713
  %6725 = fmul fast float %6724, %6507
  %6726 = fadd fast float %6723, %6508
  %6727 = fsub fast float %6726, %6725
  %6728 = fdiv fast float %6727, %6720
  %6729 = select i1 %6722, float %6728, float 0.000000e+00
  %6730 = fsub fast float 1.000000e+00, %6729
  %6731 = select i1 %6715, float %6730, float %6729
  %6732 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6734 = fmul fast float %6733, %6732
  %6735 = fsub fast float 1.000000e+00, %6734
  br label %6736

; <label>:6736                                    ; preds = %6665, %6377, %6342, %6338, %6302
  %6737 = phi float [ 1.000000e+00, %6302 ], [ %6735, %6665 ], [ 1.000000e+00, %6342 ], [ 1.000000e+00, %6377 ], [ 1.000000e+00, %6338 ]
  %6738 = fcmp fast ogt float %6334, 0.000000e+00
  br i1 %6738, label %6739, label %6747, !dx.controlflow.hints !116

; <label>:6739                                    ; preds = %6736
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 2
  %6742 = fadd fast float %6741, %6215
  %6743 = call float @dx.op.binary.f32(i32 35, float %6742, float 0.000000e+00)  ; FMax(a,b)
  %6744 = fadd fast float %6743, 0x3F10000000000000
  %6745 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6233, float %6234, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  br label %6747

; <label>:6747                                    ; preds = %6739, %6736
  %6748 = phi float [ %6746, %6739 ], [ 1.000000e+00, %6736 ]
  %6749 = fcmp fast ogt float %6332, 0.000000e+00
  br i1 %6749, label %6750, label %6758, !dx.controlflow.hints !117

; <label>:6750                                    ; preds = %6747
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6753 = fadd fast float %6752, %6215
  %6754 = call float @dx.op.binary.f32(i32 35, float %6753, float 0.000000e+00)  ; FMax(a,b)
  %6755 = fadd fast float %6754, 0x3F10000000000000
  %6756 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6225, float %6226, float undef, float undef, i32 0, i32 0, i32 undef, float %6755)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6757 = extractvalue %dx.types.ResRet.f32 %6756, 0
  br label %6758

; <label>:6758                                    ; preds = %6750, %6747
  %6759 = phi float [ %6757, %6750 ], [ 1.000000e+00, %6747 ]
  %6760 = fcmp fast ogt float %6331, 0.000000e+00
  br i1 %6760, label %6761, label %6773, !dx.controlflow.hints !118

; <label>:6761                                    ; preds = %6758
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  %6764 = fadd fast float %6763, %6215
  %6765 = call float @dx.op.binary.f32(i32 35, float %6764, float 0.000000e+00)  ; FMax(a,b)
  %6766 = fadd fast float %6765, 0x3F10000000000000
  br i1 %6218, label %6767, label %6770, !dx.controlflow.hints !119

; <label>:6767                                    ; preds = %6761
  %6768 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6207, float %6211, float undef, float undef, i32 0, i32 0, i32 undef, float %6766)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  br label %6773

; <label>:6770                                    ; preds = %6761
  %6771 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6207, float %6211, float undef, float undef, i32 0, i32 0, i32 undef, float %6766)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  br label %6773

; <label>:6773                                    ; preds = %6770, %6767, %6758
  %6774 = phi float [ %6769, %6767 ], [ %6772, %6770 ], [ 1.000000e+00, %6758 ]
  %6775 = fsub fast float %6748, %6737
  %6776 = fmul fast float %6775, %6304
  %6777 = fadd fast float %6776, %6737
  %6778 = fsub fast float %6759, %6777
  %6779 = fmul fast float %6778, %6303
  %6780 = fadd fast float %6779, %6777
  %6781 = fsub fast float %6774, %6780
  %6782 = fmul fast float %6781, %6331
  %6783 = fadd fast float %6782, %6780
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 2
  %6786 = fcmp fast ogt float %6785, 0.000000e+00
  br i1 %6786, label %6787, label %6827, !dx.controlflow.hints !120

; <label>:6787                                    ; preds = %6773
  %6788 = fcmp fast ugt float %6785, 0.000000e+00
  br i1 %6788, label %6789, label %6824

; <label>:6789                                    ; preds = %6787
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6795, 3
  %6800 = extractvalue %dx.types.CBufRet.f32 %6784, 0
  %6801 = extractvalue %dx.types.CBufRet.f32 %6784, 1
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6806 = fadd fast float %6803, %6184
  %6807 = fadd fast float %6804, %6185
  %6808 = fadd fast float %6805, %6186
  %6809 = fmul fast float %6806, %6791
  %6810 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6807, float %6809)  ; FMad(a,b,c)
  %6811 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6808, float %6810)  ; FMad(a,b,c)
  %6812 = fadd fast float %6811, %6794
  %6813 = fmul fast float %6806, %6796
  %6814 = call float @dx.op.tertiary.f32(i32 46, float %6797, float %6807, float %6813)  ; FMad(a,b,c)
  %6815 = call float @dx.op.tertiary.f32(i32 46, float %6798, float %6808, float %6814)  ; FMad(a,b,c)
  %6816 = fadd fast float %6815, %6799
  %6817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6812, float %6816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 0
  %6819 = fmul fast float %6818, %6801
  %6820 = fadd fast float %6819, %6800
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6822 = fmul fast float %6821, %6785
  %6823 = fsub fast float 1.000000e+00, %6822
  br label %6824

; <label>:6824                                    ; preds = %6789, %6787
  %6825 = phi float [ %6823, %6789 ], [ 1.000000e+00, %6787 ]
  %6826 = fmul fast float %6825, %6783
  br label %6827

; <label>:6827                                    ; preds = %6824, %6773, %6164
  %6828 = phi float [ 1.000000e+00, %6164 ], [ %6826, %6824 ], [ %6783, %6773 ]
  %6829 = call float @dx.op.binary.f32(i32 36, float %6828, float %6828)  ; FMin(a,b)
  %6830 = call float @dx.op.binary.f32(i32 36, float %6828, float %6829)  ; FMin(a,b)
  %6831 = fcmp fast ogt float %6830, 0.000000e+00
  br i1 %6831, label %6832, label %6992, !dx.controlflow.hints !121

; <label>:6832                                    ; preds = %6827
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = extractvalue %dx.types.CBufRet.f32 %6843, 3
  %6848 = fmul fast float %6834, %6184
  %6849 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6835, float %6848)  ; FMad(a,b,c)
  %6850 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6836, float %6849)  ; FMad(a,b,c)
  %6851 = fadd fast float %6850, %6837
  %6852 = fmul fast float %6839, %6184
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6840, float %6852)  ; FMad(a,b,c)
  %6854 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6841, float %6853)  ; FMad(a,b,c)
  %6855 = fadd fast float %6854, %6842
  %6856 = fmul fast float %6844, %6184
  %6857 = call float @dx.op.tertiary.f32(i32 46, float %6185, float %6845, float %6856)  ; FMad(a,b,c)
  %6858 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6846, float %6857)  ; FMad(a,b,c)
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.CBufRet.f32 %6859, 1
  %6862 = extractvalue %dx.types.CBufRet.f32 %6859, 3
  %6863 = fmul fast float %6862, %6851
  %6864 = fmul fast float %6862, %6855
  %6865 = fadd fast float %6863, %6860
  %6866 = fadd fast float %6864, %6861
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.CBufRet.f32 %6867, 1
  %6870 = fsub fast float %6865, %6868
  %6871 = fsub fast float %6866, %6869
  %6872 = fcmp fast olt float %6870, 0.000000e+00
  %6873 = fcmp fast olt float %6871, 0.000000e+00
  %6874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6874, 0
  %6876 = extractvalue %dx.types.CBufRet.f32 %6874, 1
  %6877 = extractvalue %dx.types.CBufRet.f32 %6874, 2
  %6878 = extractvalue %dx.types.CBufRet.f32 %6874, 3
  %6879 = select i1 %6872, float %6875, float %6877
  %6880 = select i1 %6873, float %6876, float %6878
  %6881 = fmul fast float %6879, %6870
  %6882 = fmul fast float %6880, %6871
  %6883 = call float @dx.op.unary.f32(i32 6, float %6881)  ; FAbs(value)
  %6884 = call float @dx.op.unary.f32(i32 6, float %6882)  ; FAbs(value)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6886 = call float @dx.op.binary.f32(i32 35, float %6883, float %6884)  ; FMax(a,b)
  %6887 = fsub fast float %6885, %6886
  %6888 = call float @dx.op.unary.f32(i32 7, float %6887)  ; Saturate(value)
  %6889 = fcmp fast ogt float %6888, 0.000000e+00
  br i1 %6889, label %6890, label %6931, !dx.controlflow.hints !122

; <label>:6890                                    ; preds = %6832
  %6891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6865, float %6866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6892 = extractvalue %dx.types.ResRet.f32 %6891, 1
  %6893 = fcmp fast ogt float %6892, 0.000000e+00
  br i1 %6893, label %6894, label %6926

; <label>:6894                                    ; preds = %6890
  %6895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6865, float %6866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 0
  %6897 = extractvalue %dx.types.ResRet.f32 %6895, 1
  %6898 = extractvalue %dx.types.ResRet.f32 %6895, 2
  %6899 = extractvalue %dx.types.ResRet.f32 %6895, 3
  %6900 = fsub fast float 1.000000e+00, %6847
  %6901 = fsub fast float %6900, %6858
  %6902 = fmul fast float %6901, 0x400921FB60000000
  %6903 = fadd fast float %6902, 0x3FF921FB60000000
  %6904 = call float @dx.op.unary.f32(i32 13, float %6903)  ; Sin(value)
  %6905 = fadd fast float %6904, -1.000000e+00
  %6906 = fmul fast float %6905, 0x3FD45F3060000000
  %6907 = fmul fast float %6901, 0x401921FB60000000
  %6908 = fadd fast float %6907, 0x400921FB60000000
  %6909 = call float @dx.op.unary.f32(i32 13, float %6908)  ; Sin(value)
  %6910 = fadd fast float %6909, 0x3E7777A5C0000000
  %6911 = fmul fast float %6910, 0x3FC45F3060000000
  %6912 = fmul fast float %6901, 0x4022D97C80000000
  %6913 = fadd fast float %6912, 0x4012D97C80000000
  %6914 = call float @dx.op.unary.f32(i32 13, float %6913)  ; Sin(value)
  %6915 = fadd fast float %6914, 1.000000e+00
  %6916 = fmul fast float %6915, 0x3FBB2995E0000000
  %6917 = fmul fast float %6901, 0x402921FB60000000
  %6918 = fadd fast float %6917, 0x401921FB60000000
  %6919 = call float @dx.op.unary.f32(i32 13, float %6918)  ; Sin(value)
  %6920 = fadd fast float %6919, 0xBE8777A5C0000000
  %6921 = fmul fast float %6920, 0x3FB45F3060000000
  %6922 = call float @dx.op.dot4.f32(i32 56, float %6896, float %6897, float %6898, float %6899, float %6906, float %6911, float %6916, float %6921)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6923 = fmul fast float %6922, 0xBFF7154760000000
  %6924 = call float @dx.op.unary.f32(i32 21, float %6923)  ; Exp(value)
  %6925 = call float @dx.op.unary.f32(i32 7, float %6924)  ; Saturate(value)
  br label %6926

; <label>:6926                                    ; preds = %6894, %6890
  %6927 = phi float [ %6925, %6894 ], [ 1.000000e+00, %6890 ]
  %6928 = fadd fast float %6927, -1.000000e+00
  %6929 = fmul fast float %6928, %6888
  %6930 = fadd fast float %6929, 1.000000e+00
  br label %6931

; <label>:6931                                    ; preds = %6926, %6832
  %6932 = phi float [ %6930, %6926 ], [ 1.000000e+00, %6832 ]
  %6933 = fmul fast float %6932, %6828
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6938 = fadd fast float %6935, %196
  %6939 = fadd fast float %6936, %197
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6942 = fsub fast float -0.000000e+00, %6938
  %6943 = fsub fast float -0.000000e+00, %6939
  %6944 = fsub fast float %5777, %6937
  %6945 = fadd fast float %6944, %6941
  %6946 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6942, float %6943, float %6945)  ; Dot3(ax,ay,az,bx,by,bz)
  %6947 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6165, float %6166, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6948 = fdiv fast float 1.000000e+00, %6947
  %6949 = fmul fast float %6948, %6946
  %6950 = fmul fast float %6165, %6949
  %6951 = fmul fast float %6166, %6949
  %6952 = fadd fast float %6950, %6938
  %6953 = fadd fast float %6951, %6939
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = fsub fast float %6952, %6955
  %6958 = fsub fast float %6953, %6956
  %6959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.f32 %6959, 2
  %6961 = extractvalue %dx.types.CBufRet.f32 %6959, 3
  %6962 = fmul fast float %6957, %6960
  %6963 = fmul fast float %6958, %6961
  %6964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.i32 %6964, 3
  %6966 = icmp eq i32 %6965, 0
  br i1 %6966, label %6972, label %6967

; <label>:6967                                    ; preds = %6931
  %6968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6962, float %6963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6969 = extractvalue %dx.types.ResRet.f32 %6968, 0
  %6970 = extractvalue %dx.types.ResRet.f32 %6968, 1
  %6971 = extractvalue %dx.types.ResRet.f32 %6968, 2
  br label %6977

; <label>:6972                                    ; preds = %6931
  %6973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6962, float %6963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6974 = extractvalue %dx.types.ResRet.f32 %6973, 0
  %6975 = extractvalue %dx.types.ResRet.f32 %6973, 1
  %6976 = extractvalue %dx.types.ResRet.f32 %6973, 2
  br label %6977

; <label>:6977                                    ; preds = %6972, %6967
  %6978 = phi float [ %6969, %6967 ], [ %6974, %6972 ]
  %6979 = phi float [ %6970, %6967 ], [ %6975, %6972 ]
  %6980 = phi float [ %6971, %6967 ], [ %6976, %6972 ]
  %6981 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6982 = fmul fast float %6981, %6978
  %6983 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6984 = fsub fast float %6949, %6983
  %6985 = fsub fast float %6984, %6982
  %6986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6985)  ; FMax(a,b)
  %6987 = fmul fast float %6986, %6979
  %6988 = call float @dx.op.binary.f32(i32 36, float %6980, float %6987)  ; FMin(a,b)
  %6989 = fmul fast float %6988, 0xBFF7154760000000
  %6990 = call float @dx.op.unary.f32(i32 21, float %6989)  ; Exp(value)
  %6991 = fmul fast float %6933, %6990
  br label %6992

; <label>:6992                                    ; preds = %6977, %6827
  %6993 = phi float [ %6991, %6977 ], [ %6828, %6827 ]
  %6994 = call float @dx.op.binary.f32(i32 36, float %6993, float %6993)  ; FMin(a,b)
  %6995 = call float @dx.op.binary.f32(i32 36, float %6993, float %6994)  ; FMin(a,b)
  %6996 = fcmp fast ogt float %6995, 0.000000e+00
  br i1 %6996, label %6997, label %7261, !dx.controlflow.hints !123

; <label>:6997                                    ; preds = %6992
  %6998 = fmul fast float %6993, %6176
  %6999 = fmul fast float %6993, %6177
  %7000 = fmul fast float %6993, %6178
  %7001 = fsub fast float %198, %4973
  %7002 = fcmp fast ogt float %7001, 0.000000e+00
  %7003 = fmul fast float %6165, 5.120000e+02
  %7004 = fmul fast float %6166, 5.120000e+02
  %7005 = fmul fast float %6167, 5.120000e+02
  %7006 = fadd fast float %7005, %198
  %7007 = fsub fast float %4973, %7006
  %7008 = fmul fast float %7007, 2.000000e+00
  %7009 = fadd fast float %7008, %7006
  %7010 = select i1 %7002, float %7009, float %7006
  %7011 = fsub fast float %7010, %198
  %7012 = call float @dx.op.dot3.f32(i32 55, float %7003, float %7004, float %7011, float %7003, float %7004, float %7011)  ; Dot3(ax,ay,az,bx,by,bz)
  %7013 = call float @dx.op.unary.f32(i32 25, float %7012)  ; Rsqrt(value)
  %7014 = fmul fast float %7013, %7003
  %7015 = fmul fast float %7013, %7004
  %7016 = fmul fast float %7013, %7011
  %7017 = fsub fast float %4973, %198
  %7018 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7017)  ; Dot3(ax,ay,az,bx,by,bz)
  %7019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7014, float %7015, float %7016)  ; Dot3(ax,ay,az,bx,by,bz)
  %7020 = fdiv fast float 1.000000e+00, %7019
  %7021 = fmul fast float %7020, %7018
  %7022 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7001, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = fcmp fast ogt float %7022, 0.000000e+00
  %7024 = fcmp fast olt float %7022, 0.000000e+00
  %7025 = zext i1 %7023 to i32
  %7026 = zext i1 %7024 to i32
  %7027 = sub nsw i32 %7025, %7026
  %7028 = sitofp i32 %7027 to float
  %7029 = fsub fast float %7010, %4973
  %7030 = call float @dx.op.dot3.f32(i32 55, float %7003, float %7004, float %7029, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = fcmp fast ogt float %7030, 0.000000e+00
  %7032 = fcmp fast olt float %7030, 0.000000e+00
  %7033 = zext i1 %7031 to i32
  %7034 = zext i1 %7032 to i32
  %7035 = sub nsw i32 %7033, %7034
  %7036 = sitofp i32 %7035 to float
  %7037 = fcmp fast une float %7028, %7036
  br i1 %7037, label %7038, label %7048

; <label>:7038                                    ; preds = %6997
  %7039 = fmul fast float %7021, %7016
  %7040 = fmul fast float %7021, %7015
  %7041 = fmul fast float %7021, %7014
  %7042 = fmul fast float %7041, %7041
  %7043 = fmul fast float %7040, %7040
  %7044 = fadd fast float %7042, %7043
  %7045 = fmul fast float %7039, %7039
  %7046 = fadd fast float %7044, %7045
  %7047 = call float @dx.op.unary.f32(i32 24, float %7046)  ; Sqrt(value)
  br label %7058

; <label>:7048                                    ; preds = %6997
  %7049 = icmp slt i32 %7027, 0
  br i1 %7049, label %7050, label %7058

; <label>:7050                                    ; preds = %7048
  %7051 = fsub fast float %198, %7010
  %7052 = fmul fast float %7003, %7003
  %7053 = fmul fast float %7004, %7004
  %7054 = fadd fast float %7052, %7053
  %7055 = fmul fast float %7051, %7051
  %7056 = fadd fast float %7054, %7055
  %7057 = call float @dx.op.unary.f32(i32 24, float %7056)  ; Sqrt(value)
  br label %7058

; <label>:7058                                    ; preds = %7050, %7048, %7038
  %7059 = phi float [ %7047, %7038 ], [ %7057, %7050 ], [ 0.000000e+00, %7048 ]
  %7060 = fsub fast float -0.000000e+00, %7059
  %7061 = select i1 %7002, float -0.000000e+00, float %7060
  %7062 = fmul fast float %4974, 0x3FF7154760000000
  %7063 = fmul fast float %7062, %7061
  %7064 = fmul fast float %4975, 0x3FF7154760000000
  %7065 = fmul fast float %7064, %7061
  %7066 = fmul fast float %4976, 0x3FF7154760000000
  %7067 = fmul fast float %7066, %7061
  %7068 = call float @dx.op.unary.f32(i32 21, float %7063)  ; Exp(value)
  %7069 = call float @dx.op.unary.f32(i32 21, float %7065)  ; Exp(value)
  %7070 = call float @dx.op.unary.f32(i32 21, float %7067)  ; Exp(value)
  %7071 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7072 = call float @dx.op.unary.f32(i32 7, float %7069)  ; Saturate(value)
  %7073 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7074 = fmul fast float %6998, %7071
  %7075 = fmul fast float %6999, %7072
  %7076 = fmul fast float %7000, %7073
  %7077 = fsub fast float %6165, %5765
  %7078 = fsub fast float %6166, %5764
  %7079 = fsub fast float %6167, %5763
  %7080 = call float @dx.op.dot3.f32(i32 55, float %7077, float %7078, float %7079, float %7077, float %7078, float %7079)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = call float @dx.op.unary.f32(i32 25, float %7080)  ; Rsqrt(value)
  %7082 = fmul fast float %7081, %7077
  %7083 = fmul fast float %7081, %7078
  %7084 = fmul fast float %7081, %7079
  %7085 = call float @dx.op.dot3.f32(i32 55, float %6165, float %6166, float %6167, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %7086 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5761, float %5760, float %7082, float %7083, float %7084)  ; Dot3(ax,ay,az,bx,by,bz)
  %7087 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7088 = bitcast i32 %5792 to float
  %7089 = fmul fast float %7087, %7087
  %7090 = fmul fast float %7089, %7088
  %7091 = call float @dx.op.unary.f32(i32 7, float %7090)  ; Saturate(value)
  %7092 = fmul fast float %7091, %7087
  %7093 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %5771, float %7082, float %7083, float %7084)  ; Dot3(ax,ay,az,bx,by,bz)
  %7094 = fmul fast float %7093, %7093
  %7095 = call float @dx.op.unary.f32(i32 6, float %7085)  ; FAbs(value)
  %7096 = fsub fast float 1.000000e+00, %5775
  %7097 = call float @dx.op.binary.f32(i32 35, float %7096, float 0x3F847AE140000000)  ; FMax(a,b)
  %7098 = fmul fast float %7097, %7097
  %7099 = fmul fast float %7098, %7098
  %7100 = fsub fast float 1.000000e+00, %7099
  %7101 = fmul fast float %5780, %5780
  %7102 = fmul fast float %7101, %7100
  %7103 = fadd fast float %7102, %7099
  %7104 = bitcast float %7103 to i32
  %7105 = ashr i32 %7104, 1
  %7106 = add nsw i32 %7105, 532487669
  %7107 = bitcast i32 %7106 to float
  %7108 = fadd fast float %7107, %5780
  %7109 = fmul fast float %7099, %7094
  %7110 = fsub fast float 1.000000e+00, %7094
  %7111 = fadd fast float %7110, %7109
  %7112 = fmul fast float %7095, %7095
  %7113 = fmul fast float %7112, %7100
  %7114 = fadd fast float %7113, %7099
  %7115 = bitcast float %7114 to i32
  %7116 = ashr i32 %7115, 1
  %7117 = add nsw i32 %7116, 532487669
  %7118 = bitcast i32 %7117 to float
  %7119 = fadd fast float %7118, %7095
  %7120 = fmul fast float %7111, %7111
  %7121 = fmul fast float %7120, %7108
  %7122 = fmul fast float %7121, %7119
  %7123 = fdiv fast float 0x3FF0A00000000000, %7122
  %7124 = fmul fast float %7123, %7099
  %7125 = fmul fast float %6027, 0x3FF9999980000000
  %7126 = fsub fast float 5.000000e+00, %7125
  %7127 = call float @dx.op.unary.f32(i32 6, float %7086)  ; FAbs(value)
  %7128 = fsub fast float 1.000000e+00, %7127
  %7129 = fmul fast float %6027, 0x41D9660740000000
  %7130 = fadd fast float %7129, 0xC1EFBF8940000000
  %7131 = bitcast float %7128 to i32
  %7132 = sitofp i32 %7131 to float
  %7133 = fmul fast float %7132, %7126
  %7134 = fadd fast float %7130, %7133
  %7135 = fptosi float %7134 to i32
  %7136 = bitcast i32 %7135 to float
  %7137 = fsub fast float 1.000000e+00, %5766
  %7138 = fsub fast float 1.000000e+00, %5767
  %7139 = fsub fast float 1.000000e+00, %5778
  %7140 = fmul fast float %7136, %7137
  %7141 = fmul fast float %7136, %7138
  %7142 = fmul fast float %7136, %7139
  %7143 = fadd fast float %7140, %5766
  %7144 = fadd fast float %7141, %5767
  %7145 = fadd fast float %7142, %5778
  br i1 %6050, label %7146, label %7169

; <label>:7146                                    ; preds = %7058
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4568, float %7127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.ResRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.ResRet.f32 %7147, 2
  %7151 = fadd fast float %7148, -5.000000e-01
  %7152 = fadd fast float %7149, -5.000000e-01
  %7153 = fadd fast float %7150, -5.000000e-01
  %7154 = fmul fast float %5766, 4.000000e+00
  %7155 = fmul fast float %7154, %7137
  %7156 = fmul fast float %7155, %7151
  %7157 = fmul fast float %5767, 4.000000e+00
  %7158 = fmul fast float %7157, %7138
  %7159 = fmul fast float %7158, %7152
  %7160 = fmul fast float %5778, 4.000000e+00
  %7161 = fmul fast float %7160, %7139
  %7162 = fmul fast float %7161, %7153
  %7163 = fadd fast float %7156, %7143
  %7164 = fadd fast float %7159, %7144
  %7165 = fadd fast float %7162, %7145
  %7166 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7167 = call float @dx.op.unary.f32(i32 7, float %7164)  ; Saturate(value)
  %7168 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  br label %7169

; <label>:7169                                    ; preds = %7146, %7058
  %7170 = phi float [ %7166, %7146 ], [ %7143, %7058 ]
  %7171 = phi float [ %7167, %7146 ], [ %7144, %7058 ]
  %7172 = phi float [ %7168, %7146 ], [ %7145, %7058 ]
  %7173 = fmul fast float %7085, 9.843750e-01
  %7174 = fadd fast float %7173, 7.812500e-03
  %7175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7174, float %6031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7176 = extractvalue %dx.types.ResRet.f32 %7175, 0
  %7177 = extractvalue %dx.types.ResRet.f32 %7175, 1
  %7178 = extractvalue %dx.types.ResRet.f32 %7175, 2
  %7179 = extractvalue %dx.types.ResRet.f32 %7175, 3
  %7180 = fsub fast float %7178, %7176
  %7181 = fsub fast float %7179, %7177
  %7182 = fmul fast float %7180, %6037
  %7183 = fmul fast float %7181, %6037
  %7184 = fadd fast float %7182, %7176
  %7185 = fadd fast float %7183, %7177
  %7186 = fmul fast float %7184, %5766
  %7187 = fmul fast float %7184, %5767
  %7188 = fmul fast float %7184, %5778
  %7189 = fadd fast float %7186, %7185
  %7190 = fadd fast float %7187, %7185
  %7191 = fadd fast float %7188, %7185
  br i1 %6050, label %7192, label %7215

; <label>:7192                                    ; preds = %7169
  %7193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4568, float %7085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7194 = extractvalue %dx.types.ResRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.ResRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.ResRet.f32 %7193, 2
  %7197 = fadd fast float %7194, -5.000000e-01
  %7198 = fadd fast float %7195, -5.000000e-01
  %7199 = fadd fast float %7196, -5.000000e-01
  %7200 = fmul fast float %5766, 4.000000e+00
  %7201 = fmul fast float %7200, %7137
  %7202 = fmul fast float %7201, %7197
  %7203 = fmul fast float %5767, 4.000000e+00
  %7204 = fmul fast float %7203, %7138
  %7205 = fmul fast float %7204, %7198
  %7206 = fmul fast float %5778, 4.000000e+00
  %7207 = fmul fast float %7206, %7139
  %7208 = fmul fast float %7207, %7199
  %7209 = fadd fast float %7202, %7189
  %7210 = fadd fast float %7205, %7190
  %7211 = fadd fast float %7208, %7191
  %7212 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7213 = call float @dx.op.unary.f32(i32 7, float %7210)  ; Saturate(value)
  %7214 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  br label %7215

; <label>:7215                                    ; preds = %7192, %7169
  %7216 = phi float [ %7212, %7192 ], [ %7189, %7169 ]
  %7217 = phi float [ %7213, %7192 ], [ %7190, %7169 ]
  %7218 = phi float [ %7214, %7192 ], [ %7191, %7169 ]
  %7219 = call float @dx.op.binary.f32(i32 35, float %7217, float %7218)  ; FMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 35, float %7216, float %7219)  ; FMax(a,b)
  %7221 = fsub fast float 1.000000e+00, %7220
  %7222 = fmul fast float %7170, %7124
  %7223 = fmul fast float %7171, %7124
  %7224 = fmul fast float %7172, %7124
  %7225 = fsub fast float 1.000000e+00, %7086
  %7226 = bitcast float %7225 to i32
  %7227 = sitofp i32 %7226 to float
  %7228 = fmul fast float %7227, 5.000000e+00
  %7229 = fadd fast float %7228, 0xC1EFBF8940000000
  %7230 = fptosi float %7229 to i32
  %7231 = bitcast i32 %7230 to float
  %7232 = fmul fast float %7231, %4569
  %7233 = fmul fast float %7221, %7232
  %7234 = fmul fast float %7233, %6100
  %7235 = fmul fast float %7233, %6101
  %7236 = fmul fast float %7233, %6102
  %7237 = fadd fast float %7234, %7222
  %7238 = fadd fast float %7235, %7223
  %7239 = fadd fast float %7236, %7224
  %7240 = fmul fast float %7092, %7074
  %7241 = fmul fast float %7240, %7221
  %7242 = fmul fast float %7092, %7075
  %7243 = fmul fast float %7242, %7221
  %7244 = fmul fast float %7092, %7076
  %7245 = fmul fast float %7244, %7221
  %7246 = fmul fast float %7240, %7237
  %7247 = fmul fast float %7242, %7238
  %7248 = fmul fast float %7244, %7239
  %7249 = fadd fast float %7241, %6084
  %7250 = fmul fast float %7249, %4565
  %7251 = fadd fast float %7243, %6085
  %7252 = fmul fast float %7251, %4565
  %7253 = fadd fast float %7245, %6086
  %7254 = fmul fast float %7253, %4565
  %7255 = fadd fast float %7246, %6153
  %7256 = fmul fast float %7255, %4565
  %7257 = fadd fast float %7247, %6156
  %7258 = fmul fast float %7257, %4565
  %7259 = fadd fast float %7248, %6159
  %7260 = fmul fast float %7259, %4565
  br label %7261

; <label>:7261                                    ; preds = %7215, %6992, %6077
  %7262 = phi float [ %6154, %6077 ], [ %6154, %6992 ], [ %7256, %7215 ]
  %7263 = phi float [ %6157, %6077 ], [ %6157, %6992 ], [ %7258, %7215 ]
  %7264 = phi float [ %6160, %6077 ], [ %6160, %6992 ], [ %7260, %7215 ]
  %7265 = phi float [ %6149, %6077 ], [ %6149, %6992 ], [ %7250, %7215 ]
  %7266 = phi float [ %6150, %6077 ], [ %6150, %6992 ], [ %7252, %7215 ]
  %7267 = phi float [ %6151, %6077 ], [ %6151, %6992 ], [ %7254, %7215 ]
  %7268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.i32 %7268, 0
  %7270 = icmp eq i32 %7269, 0
  br i1 %7270, label %7904, label %7271

; <label>:7271                                    ; preds = %7261
  %7272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7272, 2
  %7274 = extractvalue %dx.types.CBufRet.f32 %7272, 3
  %7275 = fmul fast float %7273, %113
  %7276 = fmul fast float %7274, %114
  %7277 = fptoui float %7275 to i32
  %7278 = fptoui float %7276 to i32
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.CBufRet.f32 %7279, 2
  %7282 = extractvalue %dx.types.CBufRet.f32 %7279, 3
  %7283 = fadd fast float %104, -4.000000e+00
  %7284 = call float @dx.op.binary.f32(i32 35, float %7283, float 0.000000e+00)  ; FMax(a,b)
  %7285 = fadd fast float %7284, %7280
  %7286 = fmul fast float %7285, %7281
  %7287 = call float @dx.op.unary.f32(i32 23, float %7286)  ; Log(value)
  %7288 = fmul fast float %7287, %7282
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 2
  %7291 = fmul fast float %7288, %7290
  %7292 = call float @dx.op.unary.f32(i32 7, float %7291)  ; Saturate(value)
  %7293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.i32 %7293, 1
  %7295 = add i32 %7294, -1
  %7296 = uitofp i32 %7294 to float
  %7297 = fmul fast float %7296, %7292
  %7298 = fptoui float %7297 to i32
  %7299 = call i32 @dx.op.binary.i32(i32 40, i32 %7298, i32 %7295)  ; UMin(a,b)
  %7300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.i32 %7300, 2
  %7302 = extractvalue %dx.types.CBufRet.i32 %7300, 3
  %7303 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7278, i32 %7301, i32 %7277)  ; UMad(a,b,c)
  %7304 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7299, i32 %7302, i32 %7303)  ; UMad(a,b,c)
  %7305 = add nsw i32 %7269, -1
  %7306 = call i32 @dx.op.binary.i32(i32 37, i32 %7305, i32 0)  ; IMax(a,b)
  %7307 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %7308 = fptoui float %7307 to i32
  %7309 = lshr i32 %7308, 5
  %7310 = call i32 @dx.op.binary.i32(i32 40, i32 %7309, i32 8191)  ; UMin(a,b)
  %7311 = shl i32 %7310, 2
  %7312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7311, i32 undef)  ; BufferLoad(srv,index,wot)
  %7313 = extractvalue %dx.types.ResRet.i32 %7312, 0
  %7314 = lshr i32 %7313, 16
  %7315 = and i32 %7313, 65535
  %7316 = lshr i32 %7313, 21
  %7317 = lshr i32 %7315, 5
  %7318 = call i32 @dx.op.binary.i32(i32 40, i32 %7317, i32 %7306)  ; UMin(a,b)
  %7319 = icmp ugt i32 %7316, %7318
  br i1 %7319, label %7904, label %7320

; <label>:7320                                    ; preds = %7271
  br label %7321

; <label>:7321                                    ; preds = %7894, %7320
  %7322 = phi i32 [ %7901, %7894 ], [ %7316, %7320 ]
  %7323 = phi float [ %7895, %7894 ], [ %7262, %7320 ]
  %7324 = phi float [ %7896, %7894 ], [ %7263, %7320 ]
  %7325 = phi float [ %7897, %7894 ], [ %7264, %7320 ]
  %7326 = phi float [ %7898, %7894 ], [ %7265, %7320 ]
  %7327 = phi float [ %7899, %7894 ], [ %7266, %7320 ]
  %7328 = phi float [ %7900, %7894 ], [ %7267, %7320 ]
  %7329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.i32 %7329, 0
  %7331 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7304, i32 %7330, i32 %7322)  ; UMad(a,b,c)
  %7332 = shl i32 %7331, 2
  %7333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7332, i32 undef)  ; BufferLoad(srv,index,wot)
  %7334 = extractvalue %dx.types.ResRet.i32 %7333, 0
  %7335 = shl i32 %7322, 5
  %7336 = sub nsw i32 %7314, %7335
  %7337 = call i32 @dx.op.binary.i32(i32 37, i32 %7336, i32 0)  ; IMax(a,b)
  %7338 = call i32 @dx.op.binary.i32(i32 38, i32 %7337, i32 31)  ; IMin(a,b)
  %7339 = sub nsw i32 1, %7314
  %7340 = add nsw i32 %7339, %7315
  %7341 = call i32 @dx.op.binary.i32(i32 37, i32 %7340, i32 0)  ; IMax(a,b)
  %7342 = call i32 @dx.op.binary.i32(i32 38, i32 %7341, i32 32)  ; IMin(a,b)
  %7343 = and i32 %7342, 31
  %7344 = shl i32 -1, %7343
  %7345 = xor i32 %7344, -1
  %7346 = and i32 %7338, 31
  %7347 = shl i32 %7345, %7346
  %7348 = icmp eq i32 %7342, 32
  %7349 = select i1 %7348, i32 -1, i32 %7347
  %7350 = and i32 %7349, %7334
  %7351 = icmp eq i32 %7350, 0
  br i1 %7351, label %7894, label %7352

; <label>:7352                                    ; preds = %7321
  br label %7353

; <label>:7353                                    ; preds = %7487, %7352
  %7354 = phi i32 [ %7365, %7487 ], [ %7350, %7352 ]
  %7355 = phi float [ %7488, %7487 ], [ %7323, %7352 ]
  %7356 = phi float [ %7489, %7487 ], [ %7324, %7352 ]
  %7357 = phi float [ %7490, %7487 ], [ %7325, %7352 ]
  %7358 = phi float [ %7491, %7487 ], [ %7326, %7352 ]
  %7359 = phi float [ %7492, %7487 ], [ %7327, %7352 ]
  %7360 = phi float [ %7493, %7487 ], [ %7328, %7352 ]
  %7361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7354)  ; FirstbitLo(value)
  %7362 = add i32 %7361, %7335
  %7363 = and i32 %7361, 31
  %7364 = shl i32 1, %7363
  %7365 = xor i32 %7364, %7354
  %7366 = mul i32 %7362, 112
  %7367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7366, i32 undef)  ; BufferLoad(srv,index,wot)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = or i32 %7366, 12
  %7372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7371, i32 undef)  ; BufferLoad(srv,index,wot)
  %7373 = extractvalue %dx.types.ResRet.f32 %7372, 0
  %7374 = add i32 %7366, 16
  %7375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7374, i32 undef)  ; BufferLoad(srv,index,wot)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = add i32 %7366, 28
  %7380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7379, i32 undef)  ; BufferLoad(srv,index,wot)
  %7381 = extractvalue %dx.types.ResRet.i32 %7380, 0
  %7382 = add i32 %7366, 44
  %7383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7382, i32 undef)  ; BufferLoad(srv,index,wot)
  %7384 = extractvalue %dx.types.ResRet.f32 %7383, 0
  %7385 = add i32 %7366, 48
  %7386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7385, i32 undef)  ; BufferLoad(srv,index,wot)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = extractvalue %dx.types.ResRet.f32 %7386, 3
  %7391 = add i32 %7366, 64
  %7392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7391, i32 undef)  ; BufferLoad(srv,index,wot)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.ResRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.ResRet.f32 %7392, 2
  %7396 = extractvalue %dx.types.ResRet.f32 %7392, 3
  %7397 = add i32 %7366, 80
  %7398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7397, i32 undef)  ; BufferLoad(srv,index,wot)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7401 = add i32 %7366, 92
  %7402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7401, i32 undef)  ; BufferLoad(srv,index,wot)
  %7403 = extractvalue %dx.types.ResRet.i32 %7402, 0
  %7404 = call float @dx.op.dot3.f32(i32 55, float %7368, float %7369, float %7370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7405 = select i1 %268, float %7399, float %7368
  %7406 = select i1 %268, float %7404, float %7369
  %7407 = select i1 %268, float %7400, float %7370
  %7408 = and i32 %7403, 65535
  %7409 = uitofp i32 %7408 to float
  %7410 = lshr i32 %7403, 16
  %7411 = uitofp i32 %7410 to float
  %7412 = and i32 %7381, 65535
  %7413 = and i32 %7381, 50331648
  %7414 = icmp eq i32 %7413, 33554432
  %7415 = fsub fast float %7387, %196
  %7416 = fsub fast float %7388, %197
  %7417 = fsub fast float %7389, %198
  %7418 = call float @dx.op.dot3.f32(i32 55, float %7415, float %7416, float %7417, float %7415, float %7416, float %7417)  ; Dot3(ax,ay,az,bx,by,bz)
  %7419 = call float @dx.op.unary.f32(i32 24, float %7418)  ; Sqrt(value)
  %7420 = fdiv fast float 1.000000e+00, %7419
  %7421 = fmul fast float %7420, %7415
  %7422 = fmul fast float %7420, %7416
  %7423 = fmul fast float %7420, %7417
  %7424 = fadd fast float %7419, %7373
  %7425 = fdiv fast float 1.000000e+00, %7424
  %7426 = fmul float %7384, %7425
  %7427 = fmul float %7426, %7426
  %7428 = call float @dx.op.unary.f32(i32 7, float %7427)  ; Saturate(value)
  br i1 %7414, label %7429, label %7450

; <label>:7429                                    ; preds = %7353
  %7430 = fmul fast float %7395, %7376
  %7431 = fmul fast float %7395, %7377
  %7432 = fmul fast float %7395, %7378
  %7433 = fadd fast float %7415, %7430
  %7434 = fadd fast float %7416, %7431
  %7435 = fadd fast float %7417, %7432
  %7436 = call float @dx.op.dot3.f32(i32 55, float %7433, float %7434, float %7435, float %7433, float %7434, float %7435)  ; Dot3(ax,ay,az,bx,by,bz)
  %7437 = call float @dx.op.unary.f32(i32 25, float %7436)  ; Rsqrt(value)
  %7438 = fmul fast float %7437, %7433
  %7439 = fmul fast float %7437, %7434
  %7440 = fmul fast float %7437, %7435
  %7441 = fsub fast float %196, %7387
  %7442 = fsub fast float %197, %7388
  %7443 = fsub fast float %198, %7389
  %7444 = fsub fast float -0.000000e+00, %7441
  %7445 = fsub fast float -0.000000e+00, %7442
  %7446 = fsub fast float -0.000000e+00, %7443
  %7447 = call float @dx.op.dot3.f32(i32 55, float %7444, float %7445, float %7446, float %7376, float %7377, float %7378)  ; Dot3(ax,ay,az,bx,by,bz)
  %7448 = fcmp fast ogt float %7447, 0.000000e+00
  %7449 = uitofp i1 %7448 to float
  br label %7450

; <label>:7450                                    ; preds = %7429, %7353
  %7451 = phi float [ %7449, %7429 ], [ 1.000000e+00, %7353 ]
  %7452 = phi float [ %7438, %7429 ], [ %7421, %7353 ]
  %7453 = phi float [ %7439, %7429 ], [ %7422, %7353 ]
  %7454 = phi float [ %7440, %7429 ], [ %7423, %7353 ]
  %7455 = call float @dx.op.dot3.f32(i32 55, float %7376, float %7377, float %7378, float %7452, float %7453, float %7454)  ; Dot3(ax,ay,az,bx,by,bz)
  %7456 = fmul fast float %7455, %7455
  %7457 = call float @dx.op.unary.f32(i32 7, float %7456)  ; Saturate(value)
  %7458 = fsub fast float 1.000000e+00, %7457
  %7459 = fmul fast float %7458, 5.000000e-01
  %7460 = fcmp fast ogt float %7455, 0.000000e+00
  %7461 = fsub fast float 1.000000e+00, %7459
  %7462 = select i1 %7460, float %7459, float %7461
  %7463 = fmul fast float %7462, %7411
  %7464 = fadd fast float %7463, %7409
  %7465 = fmul fast float %7464, 0x3EF0001000000000
  %7466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7465, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7467 = extractvalue %dx.types.ResRet.f32 %7466, 0
  %7468 = fmul fast float %7455, %7393
  %7469 = fadd fast float %7468, %7394
  %7470 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7471 = select i1 %7414, float 1.000000e+00, float %7470
  %7472 = select i1 %7414, float %7470, float 1.000000e+00
  %7473 = fmul fast float %7419, %7390
  %7474 = fsub fast float 1.000000e+00, %7473
  %7475 = fmul fast float %7474, %7396
  %7476 = call float @dx.op.unary.f32(i32 7, float %7475)  ; Saturate(value)
  %7477 = fmul fast float %7476, %7472
  %7478 = fmul fast float %7477, 2.000000e+00
  %7479 = fsub fast float 3.000000e+00, %7478
  %7480 = fmul fast float %7467, %7451
  %7481 = fmul fast float %7477, %7477
  %7482 = fmul fast float %7481, %7480
  %7483 = fmul fast float %7482, %7479
  %7484 = call float @dx.op.binary.f32(i32 36, float %7483, float %7483)  ; FMin(a,b)
  %7485 = call float @dx.op.binary.f32(i32 36, float %7483, float %7484)  ; FMin(a,b)
  %7486 = fcmp fast ogt float %7485, 0.000000e+00
  br i1 %7486, label %7495, label %7487, !dx.controlflow.hints !124

; <label>:7487                                    ; preds = %7850, %7595, %7450
  %7488 = phi float [ %7355, %7595 ], [ %7355, %7450 ], [ %7890, %7850 ]
  %7489 = phi float [ %7356, %7595 ], [ %7356, %7450 ], [ %7891, %7850 ]
  %7490 = phi float [ %7357, %7595 ], [ %7357, %7450 ], [ %7892, %7850 ]
  %7491 = phi float [ %7358, %7595 ], [ %7358, %7450 ], [ %7884, %7850 ]
  %7492 = phi float [ %7359, %7595 ], [ %7359, %7450 ], [ %7885, %7850 ]
  %7493 = phi float [ %7360, %7595 ], [ %7360, %7450 ], [ %7886, %7850 ]
  %7494 = icmp eq i32 %7354, %7364
  br i1 %7494, label %7893, label %7353

; <label>:7495                                    ; preds = %7450
  %7496 = icmp eq i32 %7412, 255
  br i1 %7496, label %7595, label %7497, !dx.controlflow.hints !125

; <label>:7497                                    ; preds = %7495
  %7498 = mul nuw nsw i32 %7412, 176
  %7499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7498, i32 undef)  ; BufferLoad(srv,index,wot)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7503 = extractvalue %dx.types.ResRet.f32 %7499, 3
  %7504 = add nuw nsw i32 %7498, 16
  %7505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7504, i32 undef)  ; BufferLoad(srv,index,wot)
  %7506 = extractvalue %dx.types.ResRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.ResRet.f32 %7505, 1
  %7508 = add nuw nsw i32 %7498, 32
  %7509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7508, i32 undef)  ; BufferLoad(srv,index,wot)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.ResRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.ResRet.f32 %7509, 2
  %7513 = add nuw nsw i32 %7498, 48
  %7514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7513, i32 undef)  ; BufferLoad(srv,index,wot)
  %7515 = extractvalue %dx.types.ResRet.f32 %7514, 0
  %7516 = extractvalue %dx.types.ResRet.f32 %7514, 1
  %7517 = extractvalue %dx.types.ResRet.f32 %7514, 2
  %7518 = extractvalue %dx.types.ResRet.f32 %7514, 3
  %7519 = add nuw nsw i32 %7498, 64
  %7520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7519, i32 undef)  ; BufferLoad(srv,index,wot)
  %7521 = extractvalue %dx.types.ResRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.ResRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.ResRet.f32 %7520, 2
  %7524 = extractvalue %dx.types.ResRet.f32 %7520, 3
  %7525 = add nuw nsw i32 %7498, 80
  %7526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7525, i32 undef)  ; BufferLoad(srv,index,wot)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.ResRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.ResRet.f32 %7526, 2
  %7530 = extractvalue %dx.types.ResRet.f32 %7526, 3
  %7531 = add nuw nsw i32 %7498, 96
  %7532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7531, i32 undef)  ; BufferLoad(srv,index,wot)
  %7533 = extractvalue %dx.types.ResRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.ResRet.f32 %7532, 1
  %7535 = extractvalue %dx.types.ResRet.f32 %7532, 2
  %7536 = extractvalue %dx.types.ResRet.f32 %7532, 3
  %7537 = bitcast float %7507 to i32
  %7538 = fmul fast float %7512, %122
  %7539 = fmul fast float %7512, %124
  %7540 = fmul fast float %7512, %126
  %7541 = fadd fast float %7538, %196
  %7542 = fadd fast float %7539, %197
  %7543 = fadd fast float %7540, %198
  %7544 = fmul fast float %7541, %7515
  %7545 = call float @dx.op.tertiary.f32(i32 46, float %7542, float %7521, float %7544)  ; FMad(a,b,c)
  %7546 = call float @dx.op.tertiary.f32(i32 46, float %7543, float %7527, float %7545)  ; FMad(a,b,c)
  %7547 = fadd fast float %7546, %7533
  %7548 = fmul fast float %7541, %7516
  %7549 = call float @dx.op.tertiary.f32(i32 46, float %7542, float %7522, float %7548)  ; FMad(a,b,c)
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %7543, float %7528, float %7549)  ; FMad(a,b,c)
  %7551 = fadd fast float %7550, %7534
  %7552 = fmul fast float %7541, %7517
  %7553 = call float @dx.op.tertiary.f32(i32 46, float %7542, float %7523, float %7552)  ; FMad(a,b,c)
  %7554 = call float @dx.op.tertiary.f32(i32 46, float %7543, float %7529, float %7553)  ; FMad(a,b,c)
  %7555 = fadd fast float %7554, %7535
  %7556 = fmul fast float %7541, %7518
  %7557 = call float @dx.op.tertiary.f32(i32 46, float %7542, float %7524, float %7556)  ; FMad(a,b,c)
  %7558 = call float @dx.op.tertiary.f32(i32 46, float %7543, float %7530, float %7557)  ; FMad(a,b,c)
  %7559 = fadd fast float %7558, %7536
  %7560 = fdiv fast float %7547, %7559
  %7561 = fdiv fast float %7551, %7559
  %7562 = fdiv fast float %7555, %7559
  %7563 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7562)  ; FMax(a,b)
  %7564 = fmul fast float %279, 0x401921FB60000000
  %7565 = call float @dx.op.unary.f32(i32 13, float %7564)  ; Sin(value)
  %7566 = call float @dx.op.unary.f32(i32 12, float %7564)  ; Cos(value)
  %7567 = fsub fast float -0.000000e+00, %7565
  %7568 = fmul fast float %7502, 5.000000e-01
  %7569 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7570 = call float @dx.op.unary.f32(i32 22, float %7569)  ; Frc(value)
  %7571 = fmul fast float %7570, 0x404A7DD040000000
  %7572 = call float @dx.op.unary.f32(i32 22, float %7571)  ; Frc(value)
  %7573 = fmul fast float %7572, %7511
  %7574 = fadd fast float %7573, %7568
  %7575 = call float @dx.op.tertiary.f32(i32 46, float %7574, float %7567, float 0.000000e+00)  ; FMad(a,b,c)
  %7576 = call float @dx.op.tertiary.f32(i32 46, float %7574, float %7566, float 0.000000e+00)  ; FMad(a,b,c)
  %7577 = fadd fast float %7575, %7560
  %7578 = fadd fast float %7576, %7561
  %7579 = fmul fast float %7577, %7506
  %7580 = fmul fast float %7578, %7506
  %7581 = call float @dx.op.binary.f32(i32 35, float %7579, float %7502)  ; FMax(a,b)
  %7582 = call float @dx.op.binary.f32(i32 35, float %7580, float %7502)  ; FMax(a,b)
  %7583 = call float @dx.op.binary.f32(i32 36, float %7581, float %7503)  ; FMin(a,b)
  %7584 = call float @dx.op.binary.f32(i32 36, float %7582, float %7503)  ; FMin(a,b)
  %7585 = fadd fast float %7583, %7500
  %7586 = fadd fast float %7584, %7501
  %7587 = uitofp i32 %7537 to float
  %7588 = fadd fast float %7563, %7510
  %7589 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7585, float %7586, float %7587, float undef, i32 0, i32 0, i32 undef, float %7588)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = fadd fast float %7590, -1.000000e+00
  %7592 = fmul fast float %7591, %7471
  %7593 = fadd fast float %7592, 1.000000e+00
  %7594 = fmul fast float %7593, %7483
  br label %7595

; <label>:7595                                    ; preds = %7497, %7495
  %7596 = phi float [ %7594, %7497 ], [ %7483, %7495 ]
  %7597 = call float @dx.op.binary.f32(i32 36, float %7596, float %7596)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 36, float %7596, float %7597)  ; FMin(a,b)
  %7599 = fcmp fast ogt float %7598, 0.000000e+00
  br i1 %7599, label %7600, label %7487, !dx.controlflow.hints !126

; <label>:7600                                    ; preds = %7595
  %7601 = fmul fast float %7596, %7405
  %7602 = fmul fast float %7596, %7406
  %7603 = fmul fast float %7596, %7407
  %7604 = fsub fast float %7389, %4973
  %7605 = fcmp fast ogt float %7604, 0.000000e+00
  %7606 = fsub fast float %198, %4973
  %7607 = fcmp fast ogt float %7606, 0.000000e+00
  %7608 = xor i1 %7607, %7605
  %7609 = fsub fast float %4973, %7389
  %7610 = fmul fast float %7609, 2.000000e+00
  %7611 = fadd fast float %7610, %7389
  %7612 = select i1 %7608, float %7389, float %7611
  %7613 = fsub fast float %7612, %198
  %7614 = call float @dx.op.dot3.f32(i32 55, float %7415, float %7416, float %7613, float %7415, float %7416, float %7613)  ; Dot3(ax,ay,az,bx,by,bz)
  %7615 = call float @dx.op.unary.f32(i32 25, float %7614)  ; Rsqrt(value)
  %7616 = fmul fast float %7615, %7415
  %7617 = fmul fast float %7615, %7416
  %7618 = fmul fast float %7615, %7613
  %7619 = fsub fast float %4973, %198
  %7620 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7619)  ; Dot3(ax,ay,az,bx,by,bz)
  %7621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7616, float %7617, float %7618)  ; Dot3(ax,ay,az,bx,by,bz)
  %7622 = fdiv fast float 1.000000e+00, %7621
  %7623 = fmul fast float %7622, %7620
  %7624 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7606, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7625 = fcmp fast ogt float %7624, 0.000000e+00
  %7626 = fcmp fast olt float %7624, 0.000000e+00
  %7627 = zext i1 %7625 to i32
  %7628 = zext i1 %7626 to i32
  %7629 = sub nsw i32 %7627, %7628
  %7630 = sitofp i32 %7629 to float
  %7631 = fsub fast float %7612, %4973
  %7632 = call float @dx.op.dot3.f32(i32 55, float %7415, float %7416, float %7631, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7633 = fcmp fast ogt float %7632, 0.000000e+00
  %7634 = fcmp fast olt float %7632, 0.000000e+00
  %7635 = zext i1 %7633 to i32
  %7636 = zext i1 %7634 to i32
  %7637 = sub nsw i32 %7635, %7636
  %7638 = sitofp i32 %7637 to float
  %7639 = fcmp fast une float %7630, %7638
  br i1 %7639, label %7640, label %7650

; <label>:7640                                    ; preds = %7600
  %7641 = fmul fast float %7623, %7618
  %7642 = fmul fast float %7623, %7617
  %7643 = fmul fast float %7623, %7616
  %7644 = fmul fast float %7643, %7643
  %7645 = fmul fast float %7642, %7642
  %7646 = fadd fast float %7644, %7645
  %7647 = fmul fast float %7641, %7641
  %7648 = fadd fast float %7646, %7647
  %7649 = call float @dx.op.unary.f32(i32 24, float %7648)  ; Sqrt(value)
  br label %7662

; <label>:7650                                    ; preds = %7600
  %7651 = icmp slt i32 %7629, 0
  br i1 %7651, label %7652, label %7662

; <label>:7652                                    ; preds = %7650
  %7653 = fsub fast float %196, %7387
  %7654 = fsub fast float %197, %7388
  %7655 = fsub fast float %198, %7612
  %7656 = fmul fast float %7653, %7653
  %7657 = fmul fast float %7654, %7654
  %7658 = fadd fast float %7656, %7657
  %7659 = fmul fast float %7655, %7655
  %7660 = fadd fast float %7658, %7659
  %7661 = call float @dx.op.unary.f32(i32 24, float %7660)  ; Sqrt(value)
  br label %7662

; <label>:7662                                    ; preds = %7652, %7650, %7640
  %7663 = phi float [ %7649, %7640 ], [ %7661, %7652 ], [ 0.000000e+00, %7650 ]
  %7664 = and i1 %7607, %7605
  %7665 = fsub fast float -0.000000e+00, %7663
  %7666 = select i1 %7664, float -0.000000e+00, float %7665
  %7667 = fmul fast float %4974, 0x3FF7154760000000
  %7668 = fmul fast float %7667, %7666
  %7669 = fmul fast float %4975, 0x3FF7154760000000
  %7670 = fmul fast float %7669, %7666
  %7671 = fmul fast float %4976, 0x3FF7154760000000
  %7672 = fmul fast float %7671, %7666
  %7673 = call float @dx.op.unary.f32(i32 21, float %7668)  ; Exp(value)
  %7674 = call float @dx.op.unary.f32(i32 21, float %7670)  ; Exp(value)
  %7675 = call float @dx.op.unary.f32(i32 21, float %7672)  ; Exp(value)
  %7676 = call float @dx.op.unary.f32(i32 7, float %7673)  ; Saturate(value)
  %7677 = call float @dx.op.unary.f32(i32 7, float %7674)  ; Saturate(value)
  %7678 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7679 = fmul fast float %7601, %7676
  %7680 = fmul fast float %7602, %7677
  %7681 = fmul fast float %7603, %7678
  %7682 = fsub fast float %7421, %5765
  %7683 = fsub fast float %7422, %5764
  %7684 = fsub fast float %7423, %5763
  %7685 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7684, float %7682, float %7683, float %7684)  ; Dot3(ax,ay,az,bx,by,bz)
  %7686 = call float @dx.op.unary.f32(i32 25, float %7685)  ; Rsqrt(value)
  %7687 = fmul fast float %7686, %7682
  %7688 = fmul fast float %7686, %7683
  %7689 = fmul fast float %7686, %7684
  %7690 = call float @dx.op.dot3.f32(i32 55, float %7421, float %7422, float %7423, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %7691 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5761, float %5760, float %7687, float %7688, float %7689)  ; Dot3(ax,ay,az,bx,by,bz)
  %7692 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  %7693 = fmul fast float %7692, %7428
  %7694 = bitcast i32 %5792 to float
  %7695 = fmul fast float %7692, %7692
  %7696 = fmul fast float %7695, %7694
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7698 = fmul fast float %7693, %7697
  %7699 = bitcast float %7418 to i32
  %7700 = ashr i32 %7699, 1
  %7701 = sub nsw i32 1597463007, %7700
  %7702 = bitcast i32 %7701 to float
  %7703 = fmul fast float %7702, %7415
  %7704 = fmul fast float %7702, %7416
  %7705 = fmul fast float %7702, %7417
  %7706 = fsub fast float %7703, %5765
  %7707 = fsub fast float %7704, %5764
  %7708 = fsub fast float %7705, %5763
  %7709 = call float @dx.op.dot3.f32(i32 55, float %7706, float %7707, float %7708, float %7706, float %7707, float %7708)  ; Dot3(ax,ay,az,bx,by,bz)
  %7710 = call float @dx.op.unary.f32(i32 25, float %7709)  ; Rsqrt(value)
  %7711 = fmul fast float %7706, %7710
  %7712 = fmul fast float %7707, %7710
  %7713 = fmul fast float %7708, %7710
  %7714 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %5771, float %7711, float %7712, float %7713)  ; Dot3(ax,ay,az,bx,by,bz)
  %7715 = fmul fast float %7714, %7714
  %7716 = call float @dx.op.unary.f32(i32 6, float %7690)  ; FAbs(value)
  %7717 = fsub fast float 1.000000e+00, %5775
  %7718 = call float @dx.op.binary.f32(i32 35, float %7717, float 0x3F847AE140000000)  ; FMax(a,b)
  %7719 = fmul fast float %7718, %7718
  %7720 = fmul fast float %7719, %7719
  %7721 = fsub fast float 1.000000e+00, %7720
  %7722 = fmul fast float %5780, %5780
  %7723 = fmul fast float %7722, %7721
  %7724 = fadd fast float %7723, %7720
  %7725 = bitcast float %7724 to i32
  %7726 = ashr i32 %7725, 1
  %7727 = add nsw i32 %7726, 532487669
  %7728 = bitcast i32 %7727 to float
  %7729 = fadd fast float %7728, %5780
  %7730 = fmul fast float %7720, %7715
  %7731 = fsub fast float 1.000000e+00, %7715
  %7732 = fadd fast float %7731, %7730
  %7733 = fmul fast float %7716, %7716
  %7734 = fmul fast float %7733, %7721
  %7735 = fadd fast float %7734, %7720
  %7736 = bitcast float %7735 to i32
  %7737 = ashr i32 %7736, 1
  %7738 = add nsw i32 %7737, 532487669
  %7739 = bitcast i32 %7738 to float
  %7740 = fadd fast float %7739, %7716
  %7741 = fmul fast float %7732, %7732
  %7742 = fmul fast float %7741, %7729
  %7743 = fmul fast float %7742, %7740
  %7744 = fdiv fast float 1.000000e+00, %7743
  %7745 = bitcast float %7720 to i32
  %7746 = sitofp i32 %7745 to float
  %7747 = fmul fast float %7746, 0x3FE7F73180000000
  %7748 = fadd fast float %7747, 0x41AFE27C40000000
  %7749 = fptosi float %7748 to i32
  %7750 = bitcast i32 %7749 to float
  %7751 = fmul fast float %7384, 0x3FD80E9D60000000
  %7752 = fmul fast float %7751, %7702
  %7753 = fadd fast float %7750, %7752
  %7754 = bitcast float %7753 to i32
  %7755 = sub nsw i32 2129859010, %7754
  %7756 = bitcast i32 %7755 to float
  %7757 = fmul fast float %7720, %7744
  %7758 = fmul fast float %7757, %7750
  %7759 = fmul fast float %7758, %7756
  %7760 = fmul fast float %6027, 0x3FF9999980000000
  %7761 = fsub fast float 5.000000e+00, %7760
  %7762 = call float @dx.op.unary.f32(i32 6, float %7691)  ; FAbs(value)
  %7763 = fsub fast float 1.000000e+00, %7762
  %7764 = fmul fast float %6027, 0x41D9660740000000
  %7765 = fadd fast float %7764, 0xC1EFBF8940000000
  %7766 = bitcast float %7763 to i32
  %7767 = sitofp i32 %7766 to float
  %7768 = fmul fast float %7767, %7761
  %7769 = fadd fast float %7765, %7768
  %7770 = fptosi float %7769 to i32
  %7771 = bitcast i32 %7770 to float
  %7772 = fsub fast float 1.000000e+00, %5766
  %7773 = fsub fast float 1.000000e+00, %5767
  %7774 = fsub fast float 1.000000e+00, %5778
  %7775 = fmul fast float %7771, %7772
  %7776 = fmul fast float %7771, %7773
  %7777 = fmul fast float %7771, %7774
  %7778 = fadd fast float %7775, %5766
  %7779 = fadd fast float %7776, %5767
  %7780 = fadd fast float %7777, %5778
  br i1 %6050, label %7781, label %7804

; <label>:7781                                    ; preds = %7662
  %7782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4568, float %7762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = fadd fast float %7783, -5.000000e-01
  %7787 = fadd fast float %7784, -5.000000e-01
  %7788 = fadd fast float %7785, -5.000000e-01
  %7789 = fmul fast float %5766, 4.000000e+00
  %7790 = fmul fast float %7789, %7772
  %7791 = fmul fast float %7790, %7786
  %7792 = fmul fast float %5767, 4.000000e+00
  %7793 = fmul fast float %7792, %7773
  %7794 = fmul fast float %7793, %7787
  %7795 = fmul fast float %5778, 4.000000e+00
  %7796 = fmul fast float %7795, %7774
  %7797 = fmul fast float %7796, %7788
  %7798 = fadd fast float %7791, %7778
  %7799 = fadd fast float %7794, %7779
  %7800 = fadd fast float %7797, %7780
  %7801 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7802 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7803 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  br label %7804

; <label>:7804                                    ; preds = %7781, %7662
  %7805 = phi float [ %7801, %7781 ], [ %7778, %7662 ]
  %7806 = phi float [ %7802, %7781 ], [ %7779, %7662 ]
  %7807 = phi float [ %7803, %7781 ], [ %7780, %7662 ]
  %7808 = fmul fast float %7690, 9.843750e-01
  %7809 = fadd fast float %7808, 7.812500e-03
  %7810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7809, float %6031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7811 = extractvalue %dx.types.ResRet.f32 %7810, 0
  %7812 = extractvalue %dx.types.ResRet.f32 %7810, 1
  %7813 = extractvalue %dx.types.ResRet.f32 %7810, 2
  %7814 = extractvalue %dx.types.ResRet.f32 %7810, 3
  %7815 = fsub fast float %7813, %7811
  %7816 = fsub fast float %7814, %7812
  %7817 = fmul fast float %7815, %6037
  %7818 = fmul fast float %7816, %6037
  %7819 = fadd fast float %7817, %7811
  %7820 = fadd fast float %7818, %7812
  %7821 = fmul fast float %7819, %5766
  %7822 = fmul fast float %7819, %5767
  %7823 = fmul fast float %7819, %5778
  %7824 = fadd fast float %7821, %7820
  %7825 = fadd fast float %7822, %7820
  %7826 = fadd fast float %7823, %7820
  br i1 %6050, label %7827, label %7850

; <label>:7827                                    ; preds = %7804
  %7828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4568, float %7690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7829 = extractvalue %dx.types.ResRet.f32 %7828, 0
  %7830 = extractvalue %dx.types.ResRet.f32 %7828, 1
  %7831 = extractvalue %dx.types.ResRet.f32 %7828, 2
  %7832 = fadd fast float %7829, -5.000000e-01
  %7833 = fadd fast float %7830, -5.000000e-01
  %7834 = fadd fast float %7831, -5.000000e-01
  %7835 = fmul fast float %5766, 4.000000e+00
  %7836 = fmul fast float %7835, %7772
  %7837 = fmul fast float %7836, %7832
  %7838 = fmul fast float %5767, 4.000000e+00
  %7839 = fmul fast float %7838, %7773
  %7840 = fmul fast float %7839, %7833
  %7841 = fmul fast float %5778, 4.000000e+00
  %7842 = fmul fast float %7841, %7774
  %7843 = fmul fast float %7842, %7834
  %7844 = fadd fast float %7837, %7824
  %7845 = fadd fast float %7840, %7825
  %7846 = fadd fast float %7843, %7826
  %7847 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7848 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7849 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  br label %7850

; <label>:7850                                    ; preds = %7827, %7804
  %7851 = phi float [ %7847, %7827 ], [ %7824, %7804 ]
  %7852 = phi float [ %7848, %7827 ], [ %7825, %7804 ]
  %7853 = phi float [ %7849, %7827 ], [ %7826, %7804 ]
  %7854 = call float @dx.op.binary.f32(i32 35, float %7852, float %7853)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float %7851, float %7854)  ; FMax(a,b)
  %7856 = fsub fast float 1.000000e+00, %7855
  %7857 = fmul fast float %7805, %7759
  %7858 = fmul fast float %7806, %7759
  %7859 = fmul fast float %7807, %7759
  %7860 = fsub fast float 1.000000e+00, %7691
  %7861 = bitcast float %7860 to i32
  %7862 = sitofp i32 %7861 to float
  %7863 = fmul fast float %7862, 5.000000e+00
  %7864 = fadd fast float %7863, 0xC1EFBF8940000000
  %7865 = fptosi float %7864 to i32
  %7866 = bitcast i32 %7865 to float
  %7867 = fmul fast float %7866, %4569
  %7868 = fmul fast float %7856, %7867
  %7869 = fmul fast float %7868, %6100
  %7870 = fmul fast float %7868, %6101
  %7871 = fmul fast float %7868, %6102
  %7872 = fadd fast float %7869, %7857
  %7873 = fadd fast float %7870, %7858
  %7874 = fadd fast float %7871, %7859
  %7875 = fmul fast float %7679, %4565
  %7876 = fmul fast float %7875, %7698
  %7877 = fmul fast float %7876, %7856
  %7878 = fmul fast float %7680, %4565
  %7879 = fmul fast float %7878, %7698
  %7880 = fmul fast float %7879, %7856
  %7881 = fmul fast float %7681, %4565
  %7882 = fmul fast float %7881, %7698
  %7883 = fmul fast float %7882, %7856
  %7884 = fadd fast float %7877, %7358
  %7885 = fadd fast float %7880, %7359
  %7886 = fadd fast float %7883, %7360
  %7887 = fmul fast float %7876, %7872
  %7888 = fmul fast float %7879, %7873
  %7889 = fmul fast float %7882, %7874
  %7890 = fadd fast float %7887, %7355
  %7891 = fadd fast float %7888, %7356
  %7892 = fadd fast float %7889, %7357
  br label %7487

; <label>:7893                                    ; preds = %7487
  br label %7894

; <label>:7894                                    ; preds = %7893, %7321
  %7895 = phi float [ %7323, %7321 ], [ %7488, %7893 ]
  %7896 = phi float [ %7324, %7321 ], [ %7489, %7893 ]
  %7897 = phi float [ %7325, %7321 ], [ %7490, %7893 ]
  %7898 = phi float [ %7326, %7321 ], [ %7491, %7893 ]
  %7899 = phi float [ %7327, %7321 ], [ %7492, %7893 ]
  %7900 = phi float [ %7328, %7321 ], [ %7493, %7893 ]
  %7901 = add i32 %7322, 1
  %7902 = icmp ugt i32 %7901, %7318
  br i1 %7902, label %7903, label %7321

; <label>:7903                                    ; preds = %7894
  br label %7904

; <label>:7904                                    ; preds = %7903, %7271, %7261
  %7905 = phi float [ %7262, %7261 ], [ %7262, %7271 ], [ %7895, %7903 ]
  %7906 = phi float [ %7263, %7261 ], [ %7263, %7271 ], [ %7896, %7903 ]
  %7907 = phi float [ %7264, %7261 ], [ %7264, %7271 ], [ %7897, %7903 ]
  %7908 = phi float [ %7265, %7261 ], [ %7265, %7271 ], [ %7898, %7903 ]
  %7909 = phi float [ %7266, %7261 ], [ %7266, %7271 ], [ %7899, %7903 ]
  %7910 = phi float [ %7267, %7261 ], [ %7267, %7271 ], [ %7900, %7903 ]
  %7911 = fmul fast float %4565, %4565
  %7912 = fmul fast float %7911, %6126
  %7913 = fmul fast float %7911, %6127
  %7914 = fmul fast float %7911, %6128
  %7915 = fadd fast float %7912, 1.000000e+00
  %7916 = fadd fast float %7913, 1.000000e+00
  %7917 = fadd fast float %7914, 1.000000e+00
  %7918 = call float @dx.op.dot3.f32(i32 55, float %7915, float %7916, float %7917, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7919 = fsub fast float 1.000000e+00, %7918
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 0
  %7922 = fmul fast float %7921, %6132
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %7925 = fsub fast float 1.000000e+00, %4573
  %7926 = call float @dx.op.unary.f32(i32 7, float %7925)  ; Saturate(value)
  %7927 = fadd fast float %7910, %4571
  %7928 = fmul fast float %7927, %4573
  %7929 = fmul fast float %7926, %7924
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 3
  %7932 = fmul fast float %7908, %5772
  %7933 = fmul fast float %7909, %5773
  %7934 = fmul fast float %7910, %5774
  %7935 = fcmp fast ogt float %104, %231
  %7936 = and i1 %7935, %4979
  %7937 = or i1 %4985, %7936
  %7938 = icmp eq i32 %4978, 2
  %7939 = fcmp fast ole float %104, %231
  %7940 = and i1 %7939, %7938
  %7941 = or i1 %7940, %7937
  br i1 %7936, label %7942, label %8199

; <label>:7942                                    ; preds = %7904
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 2
  %7945 = extractvalue %dx.types.CBufRet.f32 %7943, 3
  %7946 = fmul fast float %7944, %113
  %7947 = fmul fast float %7945, %114
  %7948 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7949 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7950 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7948, float %7949, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7951 = extractvalue %dx.types.ResRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.ResRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.ResRet.f32 %7950, 2
  %7954 = extractvalue %dx.types.ResRet.f32 %7950, 3
  %7955 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7948, float %7949, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7956 = extractvalue %dx.types.ResRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.ResRet.f32 %7955, 1
  %7958 = extractvalue %dx.types.ResRet.f32 %7955, 2
  %7959 = extractvalue %dx.types.ResRet.f32 %7955, 3
  %7960 = call float @dx.op.binary.f32(i32 35, float %7952, float %7953)  ; FMax(a,b)
  %7961 = call float @dx.op.binary.f32(i32 35, float %7951, float %7960)  ; FMax(a,b)
  %7962 = call float @dx.op.binary.f32(i32 35, float %7961, float %7954)  ; FMax(a,b)
  %7963 = call float @dx.op.binary.f32(i32 36, float %7957, float %7958)  ; FMin(a,b)
  %7964 = call float @dx.op.binary.f32(i32 36, float %7956, float %7963)  ; FMin(a,b)
  %7965 = call float @dx.op.binary.f32(i32 36, float %7964, float %7959)  ; FMin(a,b)
  %7966 = fmul fast float %7962, 2.550000e+02
  %7967 = fadd fast float %7966, 0x3F70101020000000
  %7968 = fptoui float %7967 to i32
  %7969 = fmul fast float %7965, 2.550000e+02
  %7970 = fadd fast float %7969, 0x3F70101020000000
  %7971 = fptoui float %7970 to i32
  %7972 = icmp ult i32 %7968, %7971
  br i1 %7972, label %7973, label %8141

; <label>:7973                                    ; preds = %7942
  %7974 = fcmp fast ogt float %103, 9.843750e-01
  %7975 = fadd fast float %104, -4.000000e+00
  %7976 = select i1 %7974, float -4.000000e+00, float %7975
  %7977 = call float @dx.op.binary.f32(i32 35, float %7976, float 0.000000e+00)  ; FMax(a,b)
  %7978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7979 = extractvalue %dx.types.CBufRet.f32 %7978, 0
  %7980 = fadd fast float %7979, %7977
  %7981 = extractvalue %dx.types.CBufRet.f32 %7978, 2
  %7982 = fmul fast float %7980, %7981
  %7983 = call float @dx.op.unary.f32(i32 23, float %7982)  ; Log(value)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7978, 3
  %7985 = fmul fast float %7984, %7983
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7988 = fmul fast float %7985, %7987
  %7989 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  %7990 = uitofp i32 %7968 to float
  %7991 = uitofp i32 %7971 to float
  %7992 = fadd fast float %7990, 5.000000e-01
  %7993 = fadd fast float %7991, 5.000000e-01
  %7994 = fmul fast float %7987, %7992
  %7995 = fmul fast float %7987, %7993
  %7996 = fadd fast float %7994, 0x3F0FFB4800000000
  %7997 = fadd fast float %7995, 0xBF0FFB4800000000
  %7998 = call float @dx.op.binary.f32(i32 35, float %7989, float %7996)  ; FMax(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7998, float %7997)  ; FMin(a,b)
  %8000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8001 = extractvalue %dx.types.CBufRet.f32 %8000, 1
  %8002 = extractvalue %dx.types.CBufRet.f32 %8000, 2
  %8003 = extractvalue %dx.types.CBufRet.f32 %8000, 0
  %8004 = fmul fast float %8001, %7999
  %8005 = fadd fast float %8003, %8004
  %8006 = fadd fast float %8003, %8002
  %8007 = fsub fast float %8001, %8002
  %8008 = fadd fast float %8007, %8003
  %8009 = call float @dx.op.binary.f32(i32 35, float %8005, float %8006)  ; FMax(a,b)
  %8010 = call float @dx.op.binary.f32(i32 36, float %8009, float %8008)  ; FMin(a,b)
  %8011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7948, float %7949, float %8010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8012 = extractvalue %dx.types.ResRet.f32 %8011, 0
  %8013 = extractvalue %dx.types.ResRet.f32 %8011, 1
  %8014 = extractvalue %dx.types.ResRet.f32 %8011, 2
  %8015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.i32 %8015, 0
  %8017 = extractvalue %dx.types.CBufRet.i32 %8015, 1
  %8018 = uitofp i32 %8016 to float
  %8019 = uitofp i32 %8017 to float
  %8020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.CBufRet.f32 %8020, 1
  %8023 = fmul fast float %8018, %7948
  %8024 = fmul fast float %8019, %7949
  %8025 = fadd fast float %8023, -5.000000e-01
  %8026 = fadd fast float %8024, -5.000000e-01
  %8027 = call float @dx.op.unary.f32(i32 22, float %8025)  ; Frc(value)
  %8028 = call float @dx.op.unary.f32(i32 22, float %8026)  ; Frc(value)
  %8029 = fmul fast float %8027, %8027
  %8030 = fmul fast float %8029, %8027
  %8031 = fsub fast float 3.000000e+00, %8027
  %8032 = fmul fast float %8029, %8031
  %8033 = fmul fast float %8027, 3.000000e+00
  %8034 = fmul fast float %8030, 3.000000e+00
  %8035 = fmul fast float %8029, 6.000000e+00
  %8036 = fsub fast float %8034, %8035
  %8037 = fadd fast float %8036, 4.000000e+00
  %8038 = fmul fast float %8037, 0x3FC5555560000000
  %8039 = fmul fast float %8030, -3.000000e+00
  %8040 = fadd fast float %8029, %8027
  %8041 = fmul fast float %8040, 3.000000e+00
  %8042 = fadd fast float %8039, 1.000000e+00
  %8043 = fadd fast float %8042, %8041
  %8044 = fmul fast float %8030, 0x3FC5555560000000
  %8045 = fmul fast float %8028, %8028
  %8046 = fmul fast float %8045, %8028
  %8047 = fsub fast float 3.000000e+00, %8028
  %8048 = fmul fast float %8045, %8047
  %8049 = fmul fast float %8028, 3.000000e+00
  %8050 = fmul fast float %8046, 3.000000e+00
  %8051 = fmul fast float %8045, 6.000000e+00
  %8052 = fsub fast float %8050, %8051
  %8053 = fadd fast float %8052, 4.000000e+00
  %8054 = fmul fast float %8053, 0x3FC5555560000000
  %8055 = fmul fast float %8046, -3.000000e+00
  %8056 = fadd fast float %8045, %8028
  %8057 = fmul fast float %8056, 3.000000e+00
  %8058 = fadd fast float %8055, 1.000000e+00
  %8059 = fadd fast float %8058, %8057
  %8060 = fmul fast float %8046, 0x3FC5555560000000
  %8061 = fadd fast float %8027, 1.000000e+00
  %8062 = fsub fast float 1.000000e+00, %8033
  %8063 = fadd fast float %8062, %8032
  %8064 = fadd fast float %8063, %8037
  %8065 = fmul fast float %8064, 0x3FC5555560000000
  %8066 = fdiv fast float %8038, %8065
  %8067 = fsub fast float %8061, %8066
  %8068 = fsub fast float 1.000000e+00, %8027
  %8069 = fadd fast float %8043, %8030
  %8070 = fmul fast float %8069, 0x3FC5555560000000
  %8071 = fdiv fast float %8044, %8070
  %8072 = fadd fast float %8068, %8071
  %8073 = fadd fast float %8028, 1.000000e+00
  %8074 = fsub fast float 1.000000e+00, %8049
  %8075 = fadd fast float %8074, %8048
  %8076 = fadd fast float %8075, %8053
  %8077 = fmul fast float %8076, 0x3FC5555560000000
  %8078 = fdiv fast float %8054, %8077
  %8079 = fsub fast float %8073, %8078
  %8080 = fsub fast float 1.000000e+00, %8028
  %8081 = fadd fast float %8059, %8046
  %8082 = fmul fast float %8081, 0x3FC5555560000000
  %8083 = fdiv fast float %8060, %8082
  %8084 = fadd fast float %8083, %8080
  %8085 = fmul fast float %8067, %8021
  %8086 = fsub fast float %7948, %8085
  %8087 = fmul fast float %8072, %8021
  %8088 = fadd fast float %8087, %7948
  %8089 = fmul fast float %8084, %8022
  %8090 = fadd fast float %8089, %7949
  %8091 = fmul fast float %8079, %8022
  %8092 = fsub fast float %7949, %8091
  %8093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8086, float %8092, float %8010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.ResRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.ResRet.f32 %8093, 2
  %8097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8088, float %8092, float %8010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8098 = extractvalue %dx.types.ResRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.ResRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.ResRet.f32 %8097, 2
  %8101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8086, float %8090, float %8010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.ResRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.ResRet.f32 %8101, 2
  %8105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8088, float %8090, float %8010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8106 = extractvalue %dx.types.ResRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.ResRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.ResRet.f32 %8105, 2
  %8109 = fsub fast float %8102, %8094
  %8110 = fsub fast float %8103, %8095
  %8111 = fsub fast float %8104, %8096
  %8112 = fmul fast float %8109, %8082
  %8113 = fmul fast float %8110, %8082
  %8114 = fmul fast float %8111, %8082
  %8115 = fadd fast float %8112, %8094
  %8116 = fadd fast float %8113, %8095
  %8117 = fadd fast float %8114, %8096
  %8118 = fsub fast float %8106, %8098
  %8119 = fsub fast float %8107, %8099
  %8120 = fsub fast float %8108, %8100
  %8121 = fmul fast float %8118, %8082
  %8122 = fmul fast float %8119, %8082
  %8123 = fmul fast float %8120, %8082
  %8124 = fsub fast float %8098, %8115
  %8125 = fadd fast float %8124, %8121
  %8126 = fsub fast float %8099, %8116
  %8127 = fadd fast float %8126, %8122
  %8128 = fsub fast float %8100, %8117
  %8129 = fadd fast float %8128, %8123
  %8130 = fmul fast float %8125, %8070
  %8131 = fmul fast float %8127, %8070
  %8132 = fmul fast float %8129, %8070
  %8133 = fadd fast float %8130, %8115
  %8134 = fadd fast float %8131, %8116
  %8135 = fadd fast float %8132, %8117
  %8136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8137 = extractvalue %dx.types.CBufRet.f32 %8136, 1
  %8138 = fmul fast float %8133, %8137
  %8139 = fmul fast float %8134, %8137
  %8140 = fmul fast float %8135, %8137
  br label %8141

; <label>:8141                                    ; preds = %7973, %7942
  %8142 = phi float [ %8012, %7973 ], [ 1.000000e+00, %7942 ]
  %8143 = phi float [ %8013, %7973 ], [ 1.000000e+00, %7942 ]
  %8144 = phi float [ %8014, %7973 ], [ 1.000000e+00, %7942 ]
  %8145 = phi float [ %8138, %7973 ], [ 0.000000e+00, %7942 ]
  %8146 = phi float [ %8139, %7973 ], [ 0.000000e+00, %7942 ]
  %8147 = phi float [ %8140, %7973 ], [ 0.000000e+00, %7942 ]
  %8148 = fmul fast float %8145, %7919
  %8149 = fmul fast float %8146, %7919
  %8150 = fmul fast float %8147, %7919
  %8151 = call float @dx.op.dot3.f32(i32 55, float %8142, float %8143, float %8144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8152 = call float @dx.op.dot3.f32(i32 55, float %8148, float %8149, float %8150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8153 = select i1 %268, float %8151, float %8142
  %8154 = select i1 %268, float %8151, float %8143
  %8155 = select i1 %268, float 1.000000e+00, float %8144
  %8156 = select i1 %268, float %8152, float %8148
  %8157 = select i1 %268, float 0.000000e+00, float %8149
  %8158 = select i1 %268, float 0.000000e+00, float %8150
  %8159 = fmul fast float %8153, %7932
  %8160 = fmul fast float %8154, %7933
  %8161 = fmul fast float %8155, %7934
  %8162 = fadd fast float %8159, %8156
  %8163 = fadd fast float %8160, %8157
  %8164 = fadd fast float %8158, %8161
  %8165 = fmul fast float %8153, %7905
  %8166 = fmul fast float %8154, %7906
  %8167 = fmul fast float %8155, %7907
  %8168 = fmul fast float %145, %7944
  %8169 = fmul fast float %147, %7945
  %8170 = fsub fast float 1.000000e+00, %8168
  %8171 = fsub fast float 1.000000e+00, %8169
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8176 = fmul fast float %8170, %8173
  %8177 = fmul fast float %8170, %8174
  %8178 = fmul fast float %8170, %8175
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8183 = fmul fast float %8171, %8180
  %8184 = fmul fast float %8171, %8181
  %8185 = fmul fast float %8171, %8182
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.CBufRet.f32 %8186, 2
  %8190 = fadd fast float %8183, %8187
  %8191 = fadd fast float %8190, %8176
  %8192 = fadd fast float %8184, %8188
  %8193 = fadd fast float %8192, %8177
  %8194 = fadd fast float %8185, %8189
  %8195 = fadd fast float %8194, %8178
  %8196 = fmul fast float %8191, %231
  %8197 = fmul fast float %8193, %231
  %8198 = fmul fast float %8195, %231
  br label %8199

; <label>:8199                                    ; preds = %8141, %7904
  %8200 = phi float [ %8196, %8141 ], [ %196, %7904 ]
  %8201 = phi float [ %8197, %8141 ], [ %197, %7904 ]
  %8202 = phi float [ %8198, %8141 ], [ %198, %7904 ]
  %8203 = phi float [ %231, %8141 ], [ %104, %7904 ]
  %8204 = phi float [ %8162, %8141 ], [ %7932, %7904 ]
  %8205 = phi float [ %8163, %8141 ], [ %7933, %7904 ]
  %8206 = phi float [ %8164, %8141 ], [ %7934, %7904 ]
  %8207 = phi float [ %8165, %8141 ], [ %7905, %7904 ]
  %8208 = phi float [ %8166, %8141 ], [ %7906, %7904 ]
  %8209 = phi float [ %8167, %8141 ], [ %7907, %7904 ]
  %8210 = phi float [ %8142, %8141 ], [ 1.000000e+00, %7904 ]
  br i1 %7941, label %9365, label %8211

; <label>:8211                                    ; preds = %8199
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8214 = extractvalue %dx.types.CBufRet.f32 %8212, 1
  %8215 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8216 = extractvalue %dx.types.CBufRet.f32 %8212, 3
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8221 = extractvalue %dx.types.CBufRet.f32 %8217, 3
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.CBufRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8226 = extractvalue %dx.types.CBufRet.f32 %8222, 3
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 0
  %8229 = extractvalue %dx.types.CBufRet.f32 %8227, 1
  %8230 = extractvalue %dx.types.CBufRet.f32 %8227, 2
  %8231 = extractvalue %dx.types.CBufRet.f32 %8227, 3
  %8232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8233 = extractvalue %dx.types.CBufRet.f32 %8232, 3
  %8234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8234, 3
  %8236 = extractvalue %dx.types.CBufRet.f32 %8234, 0
  %8237 = extractvalue %dx.types.CBufRet.f32 %8234, 1
  %8238 = extractvalue %dx.types.CBufRet.f32 %8234, 2
  %8239 = fcmp fast olt float %8238, -5.000000e-01
  %8240 = call float @dx.op.dot3.f32(i32 55, float %8200, float %8201, float %8202, float %8200, float %8201, float %8202)  ; Dot3(ax,ay,az,bx,by,bz)
  %8241 = call float @dx.op.unary.f32(i32 25, float %8240)  ; Rsqrt(value)
  %8242 = fmul fast float %8241, %8240
  %8243 = fmul fast float %8241, %8200
  %8244 = fmul fast float %8241, %8201
  %8245 = fmul fast float %8241, %8202
  %8246 = fadd fast float %8242, %8216
  %8247 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8245, float %8213, float %8214, float %8215)  ; Dot3(ax,ay,az,bx,by,bz)
  %8248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.i32 %8248, 1
  %8250 = and i32 %8249, 1
  %8251 = icmp ne i32 %8250, 0
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8254 = fcmp fast ogt float %8253, 0.000000e+00
  %8255 = and i1 %8251, %8254
  br i1 %8255, label %8256, label %8662, !dx.controlflow.hints !127

; <label>:8256                                    ; preds = %8211
  %8257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8257, 3
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 2
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8263 = fsub fast float %8260, %8262
  %8264 = and i32 %8249, 2
  %8265 = extractvalue %dx.types.CBufRet.i32 %8248, 0
  %8266 = call i32 @dx.op.binary.i32(i32 40, i32 %8265, i32 3)  ; UMin(a,b)
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 0
  %8269 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8270 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8271 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8272 = fsub fast float %8268, %8270
  %8273 = fsub fast float %8269, %8271
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 0
  %8276 = fcmp fast ogt float %8275, 0.000000e+00
  %8277 = fsub fast float -0.000000e+00, %8272
  %8278 = fsub fast float -0.000000e+00, %8273
  %8279 = call float @dx.op.dot2.f32(i32 54, float %8243, float %8244, float %8243, float %8244)  ; Dot2(ax,ay,bx,by)
  %8280 = call float @dx.op.dot2.f32(i32 54, float %8243, float %8244, float %8277, float %8278)  ; Dot2(ax,ay,bx,by)
  %8281 = fmul fast float %8280, 2.000000e+00
  %8282 = call float @dx.op.dot2.f32(i32 54, float %8277, float %8278, float %8277, float %8278)  ; Dot2(ax,ay,bx,by)
  %8283 = fmul fast float %8275, %8275
  %8284 = fsub fast float %8282, %8283
  %8285 = fmul fast float %8281, %8281
  %8286 = fmul fast float %8279, 4.000000e+00
  %8287 = fmul fast float %8286, %8284
  %8288 = fsub fast float %8285, %8287
  %8289 = fcmp fast ogt float %8288, 0.000000e+00
  br i1 %8289, label %8290, label %8305

; <label>:8290                                    ; preds = %8256
  %8291 = fcmp fast ogt float %8281, 0.000000e+00
  %8292 = call float @dx.op.unary.f32(i32 24, float %8288)  ; Sqrt(value)
  %8293 = fsub fast float -0.000000e+00, %8292
  %8294 = select i1 %8291, float %8292, float %8293
  %8295 = fadd fast float %8294, %8281
  %8296 = fmul float %8295, -5.000000e-01
  %8297 = fdiv fast float %8296, %8279
  %8298 = call float @dx.op.binary.f32(i32 35, float %8297, float 0.000000e+00)  ; FMax(a,b)
  %8299 = call float @dx.op.binary.f32(i32 36, float %8242, float %8298)  ; FMin(a,b)
  %8300 = fdiv fast float %8284, %8296
  %8301 = call float @dx.op.binary.f32(i32 35, float %8300, float 0.000000e+00)  ; FMax(a,b)
  %8302 = call float @dx.op.binary.f32(i32 36, float %8242, float %8301)  ; FMin(a,b)
  %8303 = call float @dx.op.binary.f32(i32 36, float %8299, float %8302)  ; FMin(a,b)
  %8304 = call float @dx.op.binary.f32(i32 35, float %8299, float %8302)  ; FMax(a,b)
  br label %8305

; <label>:8305                                    ; preds = %8290, %8256
  %8306 = phi float [ %8304, %8290 ], [ -1.000000e+00, %8256 ]
  %8307 = phi float [ %8303, %8290 ], [ -1.000000e+00, %8256 ]
  %8308 = phi i1 [ true, %8290 ], [ false, %8256 ]
  %8309 = and i1 %8276, %8308
  br i1 %8309, label %8310, label %8312

; <label>:8310                                    ; preds = %8305
  %8311 = fcmp fast oeq float %8307, %8306
  br i1 %8311, label %8615, label %8313

; <label>:8312                                    ; preds = %8305
  br i1 %8276, label %8615, label %8313

; <label>:8313                                    ; preds = %8312, %8310
  %8314 = phi float [ %8242, %8312 ], [ %8306, %8310 ]
  %8315 = phi float [ 0.000000e+00, %8312 ], [ %8307, %8310 ]
  %8316 = icmp ne i32 %8264, 0
  %8317 = fmul fast float %8314, %8245
  %8318 = fadd fast float %8317, %8258
  %8319 = fmul fast float %8318, %8314
  %8320 = select i1 %8316, float 0.000000e+00, float %8319
  %8321 = fcmp fast oeq float %8245, 0.000000e+00
  %8322 = fdiv fast float %8263, %8245
  %8323 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8322)  ; FMax(a,b)
  %8324 = select i1 %8321, float %8314, float %8323
  %8325 = call float @dx.op.binary.f32(i32 36, float %8314, float %8324)  ; FMin(a,b)
  %8326 = fcmp fast ogt float %8245, 0.000000e+00
  %8327 = fcmp fast olt float %8263, 0.000000e+00
  br i1 %8326, label %8328, label %8385

; <label>:8328                                    ; preds = %8313
  %8329 = icmp eq i32 %8264, 0
  br i1 %8327, label %8330, label %8374

; <label>:8330                                    ; preds = %8328
  %8331 = select i1 %8329, float %8314, float 0.000000e+00
  %8332 = fsub fast float -0.000000e+00, %8331
  %8333 = call float @dx.op.unary.f32(i32 6, float %8332)  ; FAbs(value)
  %8334 = fmul fast float %8331, %8245
  %8335 = fadd fast float %8334, %8258
  %8336 = fmul fast float %8333, %8335
  %8337 = fsub fast float %8320, %8336
  %8338 = fsub fast float %8314, %8333
  %8339 = select i1 %8329, float %8338, float 0.000000e+00
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 0
  %8342 = extractvalue %dx.types.CBufRet.f32 %8340, 1
  %8343 = extractvalue %dx.types.CBufRet.f32 %8340, 2
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = extractvalue %dx.types.CBufRet.f32 %8344, 3
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 3
  %8351 = call float @dx.op.binary.f32(i32 36, float %8337, float %8350)  ; FMin(a,b)
  %8352 = fmul fast float %8348, %8339
  %8353 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8354 = fsub fast float %8345, %8341
  %8355 = fsub fast float %8346, %8342
  %8356 = fsub fast float %8347, %8343
  %8357 = fmul fast float %8353, %8354
  %8358 = fmul fast float %8353, %8355
  %8359 = fmul fast float %8353, %8356
  %8360 = fadd fast float %8357, %8341
  %8361 = fadd fast float %8358, %8342
  %8362 = fadd fast float %8359, %8343
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8366 = fadd fast float %8365, %8364
  %8367 = call float @dx.op.unary.f32(i32 7, float %8366)  ; Saturate(value)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8369 = extractvalue %dx.types.CBufRet.f32 %8363, 3
  %8370 = fadd fast float %8369, %8368
  %8371 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8372 = fmul fast float %8367, %8351
  %8373 = fmul fast float %8372, %8371
  br label %8615

; <label>:8374                                    ; preds = %8328
  br i1 %8329, label %8375, label %8396

; <label>:8375                                    ; preds = %8374
  %8376 = call float @dx.op.binary.f32(i32 36, float %8325, float %8315)  ; FMin(a,b)
  %8377 = fsub fast float %8325, %8376
  %8378 = fsub fast float %8377, %8314
  %8379 = call float @dx.op.unary.f32(i32 6, float %8378)  ; FAbs(value)
  %8380 = fadd fast float %8377, %8314
  %8381 = fmul fast float %8380, %8245
  %8382 = fadd fast float %8381, %8258
  %8383 = fmul fast float %8382, %8379
  %8384 = fsub fast float %8320, %8383
  br label %8396

; <label>:8385                                    ; preds = %8313
  br i1 %8327, label %8386, label %8396

; <label>:8386                                    ; preds = %8385
  %8387 = call float @dx.op.binary.f32(i32 35, float %8315, float %8325)  ; FMax(a,b)
  %8388 = icmp eq i32 %8264, 0
  %8389 = select i1 %8388, float %8325, float 0.000000e+00
  %8390 = fsub fast float -0.000000e+00, %8389
  %8391 = call float @dx.op.unary.f32(i32 6, float %8390)  ; FAbs(value)
  %8392 = fmul fast float %8389, %8245
  %8393 = fadd fast float %8392, %8258
  %8394 = fmul fast float %8391, %8393
  %8395 = fsub fast float %8320, %8394
  br label %8396

; <label>:8396                                    ; preds = %8386, %8385, %8375, %8374
  %8397 = phi float [ %8315, %8374 ], [ %8315, %8375 ], [ %8387, %8386 ], [ %8315, %8385 ]
  %8398 = phi float [ 0.000000e+00, %8374 ], [ %8379, %8375 ], [ %8391, %8386 ], [ 0.000000e+00, %8385 ]
  %8399 = phi float [ %8320, %8374 ], [ %8384, %8375 ], [ %8395, %8386 ], [ %8320, %8385 ]
  %8400 = phi float [ %8325, %8374 ], [ %8325, %8375 ], [ %8314, %8386 ], [ %8314, %8385 ]
  %8401 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %8401, align 4, !tbaa !128, !noalias !130
  %8402 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %8402, align 4, !tbaa !128, !noalias !130
  %8403 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %8403, align 4, !tbaa !128, !noalias !130
  %8404 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8404, align 4, !tbaa !128, !noalias !130
  %8405 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8405, align 4, !tbaa !128, !noalias !130
  %8406 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8406, align 4, !tbaa !128, !noalias !130
  %8407 = icmp sgt i32 %8266, 0
  br i1 %8407, label %8408, label %8469

; <label>:8408                                    ; preds = %8396
  br label %8409

; <label>:8409                                    ; preds = %8458, %8408
  %8410 = phi i32 [ %8459, %8458 ], [ 0, %8408 ]
  %8411 = phi i32 [ %8460, %8458 ], [ 0, %8408 ]
  %8412 = add nuw i32 %8411, 171
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8412)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.CBufRet.f32 %8413, 1
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8419 = fsub fast float %8414, %8417
  %8420 = fsub fast float %8415, %8418
  %8421 = extractvalue %dx.types.CBufRet.f32 %8413, 2
  %8422 = fsub fast float -0.000000e+00, %8419
  %8423 = fsub fast float -0.000000e+00, %8420
  %8424 = call float @dx.op.dot2.f32(i32 54, float %8243, float %8244, float %8422, float %8423)  ; Dot2(ax,ay,bx,by)
  %8425 = fmul fast float %8424, 2.000000e+00
  %8426 = call float @dx.op.dot2.f32(i32 54, float %8422, float %8423, float %8422, float %8423)  ; Dot2(ax,ay,bx,by)
  %8427 = fmul fast float %8421, %8421
  %8428 = fsub fast float %8426, %8427
  %8429 = fmul fast float %8425, %8425
  %8430 = fmul fast float %8286, %8428
  %8431 = fsub fast float %8429, %8430
  %8432 = fcmp fast ogt float %8431, 0.000000e+00
  br i1 %8432, label %8433, label %8448

; <label>:8433                                    ; preds = %8409
  %8434 = fcmp fast ogt float %8425, 0.000000e+00
  %8435 = call float @dx.op.unary.f32(i32 24, float %8431)  ; Sqrt(value)
  %8436 = fsub fast float -0.000000e+00, %8435
  %8437 = select i1 %8434, float %8435, float %8436
  %8438 = fadd fast float %8437, %8425
  %8439 = fmul float %8438, -5.000000e-01
  %8440 = fdiv fast float %8439, %8279
  %8441 = call float @dx.op.binary.f32(i32 35, float %8440, float 0.000000e+00)  ; FMax(a,b)
  %8442 = call float @dx.op.binary.f32(i32 36, float %8314, float %8441)  ; FMin(a,b)
  %8443 = fdiv fast float %8428, %8439
  %8444 = call float @dx.op.binary.f32(i32 35, float %8443, float 0.000000e+00)  ; FMax(a,b)
  %8445 = call float @dx.op.binary.f32(i32 36, float %8314, float %8444)  ; FMin(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8442, float %8445)  ; FMin(a,b)
  %8447 = call float @dx.op.binary.f32(i32 35, float %8442, float %8445)  ; FMax(a,b)
  br label %8448

; <label>:8448                                    ; preds = %8433, %8409
  %8449 = phi float [ %8447, %8433 ], [ -1.000000e+00, %8409 ]
  %8450 = phi float [ %8446, %8433 ], [ -1.000000e+00, %8409 ]
  %8451 = phi i1 [ true, %8433 ], [ false, %8409 ]
  br i1 %8451, label %8452, label %8458

; <label>:8452                                    ; preds = %8448
  %8453 = call float @dx.op.binary.f32(i32 35, float %8397, float %8450)  ; FMax(a,b)
  %8454 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8411
  store float %8453, float* %8454, align 4, !tbaa !128, !noalias !130
  %8455 = call float @dx.op.binary.f32(i32 35, float %8397, float %8449)  ; FMax(a,b)
  %8456 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8411
  store float %8455, float* %8456, align 4, !tbaa !128, !noalias !130
  %8457 = add nsw i32 %8410, 1
  br label %8458

; <label>:8458                                    ; preds = %8452, %8448
  %8459 = phi i32 [ %8457, %8452 ], [ %8410, %8448 ]
  %8460 = add nuw nsw i32 %8411, 1
  %8461 = icmp eq i32 %8460, %8266
  br i1 %8461, label %8462, label %8409

; <label>:8462                                    ; preds = %8458
  %8463 = load float, float* %8403, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8464 = load float, float* %8402, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %8465 = load float, float* %8401, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %8466 = load float, float* %8406, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8467 = load float, float* %8405, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %8468 = load float, float* %8404, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %8469

; <label>:8469                                    ; preds = %8462, %8396
  %8470 = phi float [ -1.000000e+00, %8396 ], [ %8468, %8462 ]
  %8471 = phi float [ -1.000000e+00, %8396 ], [ %8467, %8462 ]
  %8472 = phi float [ -1.000000e+00, %8396 ], [ %8466, %8462 ]
  %8473 = phi float [ -1.000000e+00, %8396 ], [ %8465, %8462 ]
  %8474 = phi float [ -1.000000e+00, %8396 ], [ %8464, %8462 ]
  %8475 = phi float [ -1.000000e+00, %8396 ], [ %8463, %8462 ]
  %8476 = phi i32 [ 0, %8396 ], [ %8459, %8462 ]
  %8477 = call float @dx.op.binary.f32(i32 36, float %8474, float %8475)  ; FMin(a,b)
  %8478 = call float @dx.op.binary.f32(i32 36, float %8473, float %8477)  ; FMin(a,b)
  %8479 = call float @dx.op.binary.f32(i32 35, float %8473, float %8474)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 36, float %8479, float %8475)  ; FMin(a,b)
  %8481 = call float @dx.op.binary.f32(i32 36, float %8473, float %8474)  ; FMin(a,b)
  %8482 = call float @dx.op.binary.f32(i32 35, float %8481, float %8480)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 35, float %8474, float %8475)  ; FMax(a,b)
  %8484 = call float @dx.op.binary.f32(i32 35, float %8473, float %8483)  ; FMax(a,b)
  store float %8478, float* %8401, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %8482, float* %8402, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %8484, float* %8403, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8485 = call float @dx.op.binary.f32(i32 36, float %8471, float %8472)  ; FMin(a,b)
  %8486 = call float @dx.op.binary.f32(i32 36, float %8470, float %8485)  ; FMin(a,b)
  %8487 = call float @dx.op.binary.f32(i32 35, float %8470, float %8471)  ; FMax(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8487, float %8472)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8470, float %8471)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 35, float %8489, float %8488)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 35, float %8471, float %8472)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 35, float %8470, float %8491)  ; FMax(a,b)
  store float %8486, float* %8404, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %8490, float* %8405, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %8492, float* %8406, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8493 = sub nsw i32 3, %8476
  %8494 = icmp sgt i32 %8493, 2
  br i1 %8494, label %8495, label %8533

; <label>:8495                                    ; preds = %8469
  %8496 = icmp eq i32 %8264, 0
  %8497 = fsub fast float %8314, %8398
  %8498 = select i1 %8496, float %8497, float %8398
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.CBufRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8503, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8503, 3
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 3
  %8510 = call float @dx.op.binary.f32(i32 36, float %8399, float %8509)  ; FMin(a,b)
  %8511 = fmul fast float %8507, %8498
  %8512 = call float @dx.op.unary.f32(i32 7, float %8511)  ; Saturate(value)
  %8513 = fsub fast float %8504, %8500
  %8514 = fsub fast float %8505, %8501
  %8515 = fsub fast float %8506, %8502
  %8516 = fmul fast float %8512, %8513
  %8517 = fmul fast float %8512, %8514
  %8518 = fmul fast float %8512, %8515
  %8519 = fadd fast float %8516, %8500
  %8520 = fadd fast float %8517, %8501
  %8521 = fadd fast float %8518, %8502
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8525 = fadd fast float %8524, %8523
  %8526 = call float @dx.op.unary.f32(i32 7, float %8525)  ; Saturate(value)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8528 = extractvalue %dx.types.CBufRet.f32 %8522, 3
  %8529 = fadd fast float %8528, %8527
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fmul fast float %8526, %8510
  %8532 = fmul fast float %8531, %8530
  br label %8615

; <label>:8533                                    ; preds = %8469
  %8534 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8493
  %8535 = load float, float* %8534, align 4, !tbaa !128, !noalias !130
  %8536 = fcmp fast olt float %8535, %8400
  %8537 = icmp sgt i32 %8476, 0
  %8538 = and i1 %8537, %8536
  br i1 %8538, label %8539, label %8576

; <label>:8539                                    ; preds = %8533
  br label %8540

; <label>:8540                                    ; preds = %8569, %8539
  %8541 = phi float [ %8570, %8569 ], [ %8398, %8539 ]
  %8542 = phi float [ %8571, %8569 ], [ %8399, %8539 ]
  %8543 = phi float [ %8551, %8569 ], [ %8535, %8539 ]
  %8544 = phi i32 [ %8548, %8569 ], [ %8493, %8539 ]
  %8545 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8544
  %8546 = load float, float* %8545, align 4, !tbaa !128, !noalias !130
  %8547 = icmp slt i32 %8544, 2
  %8548 = add nsw i32 %8544, 1
  %8549 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8548
  %8550 = load float, float* %8549, align 4, !tbaa !128, !noalias !130
  %8551 = select i1 %8547, float %8550, float %8314
  %8552 = call float @dx.op.binary.f32(i32 36, float %8551, float %8546)  ; FMin(a,b)
  %8553 = call float @dx.op.binary.f32(i32 36, float %8400, float %8552)  ; FMin(a,b)
  %8554 = icmp eq i32 %8264, 0
  %8555 = fadd fast float %8553, %8543
  %8556 = fmul fast float %8555, %8245
  %8557 = fadd fast float %8556, %8258
  br i1 %8554, label %8563, label %8558

; <label>:8558                                    ; preds = %8540
  %8559 = fsub fast float %8553, %8543
  %8560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8559)  ; FMax(a,b)
  %8561 = fmul fast float %8560, %8557
  %8562 = fadd fast float %8561, %8542
  br label %8569

; <label>:8563                                    ; preds = %8540
  %8564 = fsub fast float %8543, %8553
  %8565 = call float @dx.op.unary.f32(i32 6, float %8564)  ; FAbs(value)
  %8566 = fadd fast float %8565, %8541
  %8567 = fmul fast float %8565, %8557
  %8568 = fsub fast float %8542, %8567
  br label %8569

; <label>:8569                                    ; preds = %8563, %8558
  %8570 = phi float [ %8560, %8558 ], [ %8566, %8563 ]
  %8571 = phi float [ %8562, %8558 ], [ %8568, %8563 ]
  %8572 = fcmp fast olt float %8551, %8400
  %8573 = icmp slt i32 %8548, 3
  %8574 = and i1 %8573, %8572
  br i1 %8574, label %8540, label %8575

; <label>:8575                                    ; preds = %8569
  br label %8576

; <label>:8576                                    ; preds = %8575, %8533
  %8577 = phi float [ %8398, %8533 ], [ %8570, %8575 ]
  %8578 = phi float [ %8399, %8533 ], [ %8571, %8575 ]
  %8579 = fsub fast float %8314, %8577
  %8580 = select i1 %8316, float %8577, float %8579
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8584 = extractvalue %dx.types.CBufRet.f32 %8581, 2
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8589 = extractvalue %dx.types.CBufRet.f32 %8585, 3
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 3
  %8592 = call float @dx.op.binary.f32(i32 36, float %8578, float %8591)  ; FMin(a,b)
  %8593 = fmul fast float %8589, %8580
  %8594 = call float @dx.op.unary.f32(i32 7, float %8593)  ; Saturate(value)
  %8595 = fsub fast float %8586, %8582
  %8596 = fsub fast float %8587, %8583
  %8597 = fsub fast float %8588, %8584
  %8598 = fmul fast float %8594, %8595
  %8599 = fmul fast float %8594, %8596
  %8600 = fmul fast float %8594, %8597
  %8601 = fadd fast float %8598, %8582
  %8602 = fadd fast float %8599, %8583
  %8603 = fadd fast float %8600, %8584
  %8604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.f32 %8604, 0
  %8606 = extractvalue %dx.types.CBufRet.f32 %8604, 1
  %8607 = fadd fast float %8606, %8605
  %8608 = call float @dx.op.unary.f32(i32 7, float %8607)  ; Saturate(value)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8604, 2
  %8610 = extractvalue %dx.types.CBufRet.f32 %8604, 3
  %8611 = fadd fast float %8610, %8609
  %8612 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8613 = fmul fast float %8608, %8592
  %8614 = fmul fast float %8613, %8612
  br label %8615

; <label>:8615                                    ; preds = %8576, %8495, %8330, %8312, %8310
  %8616 = phi float [ %8339, %8330 ], [ %8498, %8495 ], [ %8580, %8576 ], [ 0.000000e+00, %8310 ], [ 0.000000e+00, %8312 ]
  %8617 = phi float [ %8373, %8330 ], [ %8532, %8495 ], [ %8614, %8576 ], [ 0.000000e+00, %8310 ], [ 0.000000e+00, %8312 ]
  %8618 = phi float [ %8360, %8330 ], [ %8519, %8495 ], [ %8601, %8576 ], [ 0.000000e+00, %8310 ], [ 0.000000e+00, %8312 ]
  %8619 = phi float [ %8361, %8330 ], [ %8520, %8495 ], [ %8602, %8576 ], [ 0.000000e+00, %8310 ], [ 0.000000e+00, %8312 ]
  %8620 = phi float [ %8362, %8330 ], [ %8521, %8495 ], [ %8603, %8576 ], [ 0.000000e+00, %8310 ], [ 0.000000e+00, %8312 ]
  %8621 = fmul fast float %8253, %8617
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 2
  %8624 = fsub fast float %8260, %8623
  %8625 = fcmp fast olt float %8621, -2.000000e+01
  %8626 = call float @dx.op.unary.f32(i32 21, float %8621)  ; Exp(value)
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8629 = extractvalue %dx.types.CBufRet.f32 %8627, 3
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 2
  %8632 = fmul fast float %8629, %8624
  %8633 = call float @dx.op.unary.f32(i32 7, float %8632)  ; Saturate(value)
  %8634 = fsub fast float 1.000000e+00, %8633
  %8635 = fmul fast float %8245, 5.000000e-01
  %8636 = fadd fast float %8635, 5.000000e-01
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fsub fast float 1.000000e+00, %8637
  %8639 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8634)  ; FMax(a,b)
  %8640 = fdiv fast float %8638, %8639
  %8641 = fsub fast float %8624, %8202
  %8642 = call float @dx.op.unary.f32(i32 6, float %8641)  ; FAbs(value)
  %8643 = fmul fast float %8642, %8628
  %8644 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8645 = fsub fast float 1.000000e+00, %8643
  %8646 = fmul fast float %8645, %8644
  %8647 = fadd fast float %8646, %8643
  %8648 = fmul fast float %8631, %8624
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = fsub fast float 1.000000e+00, %8647
  %8651 = fmul fast float %8650, %8649
  %8652 = fadd fast float %8651, %8647
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = fadd fast float %8626, -1.000000e+00
  %8655 = select i1 %8625, float -1.000000e+00, float %8654
  %8656 = fmul fast float %8653, %8655
  %8657 = fadd fast float %8656, 1.000000e+00
  %8658 = fsub fast float -0.000000e+00, %8656
  %8659 = fmul fast float %8618, %8658
  %8660 = fmul fast float %8619, %8658
  %8661 = fmul fast float %8620, %8658
  br label %8662

; <label>:8662                                    ; preds = %8615, %8211
  %8663 = phi float [ %8616, %8615 ], [ 0.000000e+00, %8211 ]
  %8664 = phi float [ %8657, %8615 ], [ 1.000000e+00, %8211 ]
  %8665 = phi float [ %8659, %8615 ], [ 0.000000e+00, %8211 ]
  %8666 = phi float [ %8660, %8615 ], [ 0.000000e+00, %8211 ]
  %8667 = phi float [ %8661, %8615 ], [ 0.000000e+00, %8211 ]
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8670 = fsub fast float 1.000000e+00, %8664
  %8671 = fmul fast float %8670, %8246
  %8672 = fmul fast float %8671, %8669
  %8673 = fsub fast float %8246, %8672
  br i1 %8239, label %8674, label %8703, !dx.controlflow.hints !166

; <label>:8674                                    ; preds = %8662
  %8675 = fmul fast float %8247, %8236
  %8676 = fadd fast float %8675, %8237
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = fmul fast float %8218, %8673
  %8679 = fsub fast float -0.000000e+00, %8678
  %8680 = fmul fast float %8219, %8673
  %8681 = fsub fast float -0.000000e+00, %8680
  %8682 = call float @dx.op.unary.f32(i32 21, float %8679)  ; Exp(value)
  %8683 = call float @dx.op.unary.f32(i32 21, float %8681)  ; Exp(value)
  %8684 = call float @dx.op.binary.f32(i32 35, float %8226, float %8682)  ; FMax(a,b)
  %8685 = call float @dx.op.binary.f32(i32 35, float %8226, float %8683)  ; FMax(a,b)
  %8686 = fsub fast float %8685, %8684
  %8687 = fmul fast float %8686, %8677
  %8688 = fadd fast float %8687, %8684
  %8689 = call float @dx.op.unary.f32(i32 7, float %8688)  ; Saturate(value)
  %8690 = fsub fast float %8223, %8228
  %8691 = fsub fast float %8224, %8229
  %8692 = fsub fast float %8225, %8230
  %8693 = fmul fast float %8677, %8690
  %8694 = fmul fast float %8677, %8691
  %8695 = fmul fast float %8677, %8692
  %8696 = fadd fast float %8693, %8228
  %8697 = fadd fast float %8694, %8229
  %8698 = fadd fast float %8695, %8230
  %8699 = fsub fast float 1.000000e+00, %8689
  %8700 = fmul fast float %8699, %8696
  %8701 = fmul fast float %8699, %8697
  %8702 = fmul fast float %8699, %8698
  br label %8762

; <label>:8703                                    ; preds = %8662
  %8704 = fmul fast float %8673, %8235
  %8705 = call float @dx.op.unary.f32(i32 7, float %8704)  ; Saturate(value)
  %8706 = fsub fast float 2.000000e+00, %8705
  %8707 = fmul fast float %8705, 9.921875e-01
  %8708 = fmul fast float %8707, %8706
  %8709 = fadd fast float %8708, 3.906250e-03
  %8710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8709, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8711 = extractvalue %dx.types.ResRet.f32 %8710, 0
  %8712 = fsub fast float %8705, %8711
  %8713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8712)  ; FMax(a,b)
  %8714 = fmul fast float %8221, %8202
  %8715 = call float @dx.op.unary.f32(i32 6, float %8714)  ; FAbs(value)
  %8716 = fcmp fast ogt float %8715, 0x3EB0C6F7A0000000
  br i1 %8716, label %8717, label %8723, !dx.controlflow.hints !167

; <label>:8717                                    ; preds = %8703
  %8718 = fmul fast float %8714, 0xBFF7154760000000
  %8719 = call float @dx.op.unary.f32(i32 21, float %8718)  ; Exp(value)
  %8720 = fsub fast float 1.000000e+00, %8719
  %8721 = fdiv fast float %8720, %8714
  %8722 = fmul fast float %8721, %8231
  br label %8723

; <label>:8723                                    ; preds = %8717, %8703
  %8724 = phi float [ %8722, %8717 ], [ %8231, %8703 ]
  %8725 = fadd fast float %8724, %8233
  %8726 = fmul fast float %8725, %8713
  %8727 = fmul fast float %8218, %8726
  %8728 = fsub fast float -0.000000e+00, %8727
  %8729 = fmul fast float %8219, %8726
  %8730 = fsub fast float -0.000000e+00, %8729
  %8731 = fmul fast float %8220, %8726
  %8732 = fsub fast float -0.000000e+00, %8731
  %8733 = call float @dx.op.unary.f32(i32 21, float %8728)  ; Exp(value)
  %8734 = call float @dx.op.unary.f32(i32 21, float %8730)  ; Exp(value)
  %8735 = call float @dx.op.unary.f32(i32 21, float %8732)  ; Exp(value)
  %8736 = fmul fast float %8247, %8247
  %8737 = fadd fast float %8736, 1.000000e+00
  %8738 = fmul fast float %8737, 0x3FAE8EC8A0000000
  %8739 = fmul fast float %8738, %8228
  %8740 = fmul fast float %8738, %8229
  %8741 = fmul fast float %8738, %8230
  %8742 = fmul fast float %8247, %8226
  %8743 = fsub fast float 1.000000e+00, %8742
  %8744 = fmul fast float %8226, %8226
  %8745 = fsub fast float 1.000000e+00, %8744
  %8746 = fmul fast float %8745, 0x3FB45F3060000000
  %8747 = fmul fast float %8743, %8743
  %8748 = fdiv fast float 1.000000e+00, %8747
  %8749 = fmul fast float %8746, %8748
  %8750 = fmul fast float %8749, %8223
  %8751 = fmul fast float %8749, %8224
  %8752 = fmul fast float %8749, %8225
  %8753 = fadd fast float %8750, %8739
  %8754 = fadd fast float %8751, %8740
  %8755 = fadd fast float %8752, %8741
  %8756 = fsub fast float 1.000000e+00, %8733
  %8757 = fsub fast float 1.000000e+00, %8734
  %8758 = fsub fast float 1.000000e+00, %8735
  %8759 = fmul fast float %8753, %8756
  %8760 = fmul fast float %8754, %8757
  %8761 = fmul fast float %8755, %8758
  br label %8762

; <label>:8762                                    ; preds = %8723, %8674
  %8763 = phi float [ %8700, %8674 ], [ %8759, %8723 ]
  %8764 = phi float [ %8701, %8674 ], [ %8760, %8723 ]
  %8765 = phi float [ %8702, %8674 ], [ %8761, %8723 ]
  %8766 = phi float [ %8689, %8674 ], [ %8733, %8723 ]
  %8767 = phi float [ %8689, %8674 ], [ %8734, %8723 ]
  %8768 = phi float [ %8689, %8674 ], [ %8735, %8723 ]
  br i1 %8255, label %8769, label %8967, !dx.controlflow.hints !168

; <label>:8769                                    ; preds = %8762
  %8770 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8771 = fmul fast float %8770, %8670
  %8772 = fsub fast float %8665, %8763
  %8773 = fsub fast float %8666, %8764
  %8774 = fsub fast float %8667, %8765
  %8775 = fmul fast float %8771, %8772
  %8776 = fmul fast float %8771, %8773
  %8777 = fmul fast float %8771, %8774
  %8778 = fadd fast float %8775, %8763
  %8779 = fadd fast float %8776, %8764
  %8780 = fadd fast float %8777, %8765
  %8781 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8766)  ; FMax(a,b)
  %8782 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8767)  ; FMax(a,b)
  %8783 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8768)  ; FMax(a,b)
  %8784 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8664)  ; FMax(a,b)
  %8785 = call float @dx.op.binary.f32(i32 35, float %8663, float %8673)  ; FMax(a,b)
  %8786 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8785)  ; FMax(a,b)
  %8787 = fdiv fast float %8663, %8786
  %8788 = call float @dx.op.unary.f32(i32 7, float %8787)  ; Saturate(value)
  %8789 = fdiv fast float %8673, %8786
  %8790 = call float @dx.op.unary.f32(i32 7, float %8789)  ; Saturate(value)
  %8791 = fcmp fast une float %8784, 1.000000e+00
  br i1 %8791, label %8792, label %8805, !dx.controlflow.hints !169

; <label>:8792                                    ; preds = %8769
  %8793 = call float @dx.op.unary.f32(i32 23, float %8784)  ; Log(value)
  %8794 = fmul fast float %8793, 0x3FE62E4300000000
  %8795 = fmul fast float %8665, %8794
  %8796 = fsub fast float -0.000000e+00, %8795
  %8797 = fmul fast float %8666, %8794
  %8798 = fsub fast float -0.000000e+00, %8797
  %8799 = fmul fast float %8667, %8794
  %8800 = fsub fast float -0.000000e+00, %8799
  %8801 = fsub fast float 1.000000e+00, %8784
  %8802 = fdiv fast float %8796, %8801
  %8803 = fdiv fast float %8798, %8801
  %8804 = fdiv fast float %8800, %8801
  br label %8805

; <label>:8805                                    ; preds = %8792, %8769
  %8806 = phi float [ %8802, %8792 ], [ %8665, %8769 ]
  %8807 = phi float [ %8803, %8792 ], [ %8666, %8769 ]
  %8808 = phi float [ %8804, %8792 ], [ %8667, %8769 ]
  %8809 = phi float [ %8794, %8792 ], [ 0.000000e+00, %8769 ]
  %8810 = fcmp fast une float %8781, 1.000000e+00
  br i1 %8810, label %8811, label %8818, !dx.controlflow.hints !170

; <label>:8811                                    ; preds = %8805
  %8812 = call float @dx.op.unary.f32(i32 23, float %8781)  ; Log(value)
  %8813 = fmul fast float %8812, 0x3FE62E4300000000
  %8814 = fmul fast float %8778, %8813
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = fsub fast float 1.000000e+00, %8781
  %8817 = fdiv fast float %8815, %8816
  br label %8818

; <label>:8818                                    ; preds = %8811, %8805
  %8819 = phi float [ %8817, %8811 ], [ %8778, %8805 ]
  %8820 = phi float [ %8813, %8811 ], [ 0.000000e+00, %8805 ]
  %8821 = fcmp fast une float %8782, 1.000000e+00
  br i1 %8821, label %8822, label %8829, !dx.controlflow.hints !170

; <label>:8822                                    ; preds = %8818
  %8823 = call float @dx.op.unary.f32(i32 23, float %8782)  ; Log(value)
  %8824 = fmul fast float %8823, 0x3FE62E4300000000
  %8825 = fmul fast float %8779, %8824
  %8826 = fsub fast float -0.000000e+00, %8825
  %8827 = fsub fast float 1.000000e+00, %8782
  %8828 = fdiv fast float %8826, %8827
  br label %8829

; <label>:8829                                    ; preds = %8822, %8818
  %8830 = phi float [ %8828, %8822 ], [ %8779, %8818 ]
  %8831 = phi float [ %8824, %8822 ], [ 0.000000e+00, %8818 ]
  %8832 = fcmp fast une float %8783, 1.000000e+00
  br i1 %8832, label %8833, label %8840, !dx.controlflow.hints !170

; <label>:8833                                    ; preds = %8829
  %8834 = call float @dx.op.unary.f32(i32 23, float %8783)  ; Log(value)
  %8835 = fmul fast float %8834, 0x3FE62E4300000000
  %8836 = fmul fast float %8780, %8835
  %8837 = fsub fast float -0.000000e+00, %8836
  %8838 = fsub fast float 1.000000e+00, %8783
  %8839 = fdiv fast float %8837, %8838
  br label %8840

; <label>:8840                                    ; preds = %8833, %8829
  %8841 = phi float [ %8839, %8833 ], [ %8780, %8829 ]
  %8842 = phi float [ %8835, %8833 ], [ 0.000000e+00, %8829 ]
  %8843 = fmul fast float %8806, %8790
  %8844 = fmul fast float %8807, %8790
  %8845 = fmul fast float %8808, %8790
  %8846 = fmul fast float %8809, %8790
  %8847 = fmul fast float %8819, %8788
  %8848 = fmul fast float %8830, %8788
  %8849 = fmul fast float %8841, %8788
  %8850 = fmul fast float %8820, %8788
  %8851 = fmul fast float %8831, %8788
  %8852 = fmul fast float %8842, %8788
  %8853 = fadd fast float %8847, %8843
  %8854 = fadd fast float %8848, %8844
  %8855 = fadd fast float %8849, %8845
  %8856 = fadd fast float %8850, %8846
  %8857 = fadd fast float %8851, %8846
  %8858 = fadd fast float %8852, %8846
  %8859 = fcmp fast une float %8856, 0.000000e+00
  br i1 %8859, label %8860, label %8867, !dx.controlflow.hints !171

; <label>:8860                                    ; preds = %8840
  %8861 = fmul fast float %8856, 0x3FF7154760000000
  %8862 = call float @dx.op.unary.f32(i32 21, float %8861)  ; Exp(value)
  %8863 = fsub fast float 1.000000e+00, %8862
  %8864 = fmul fast float %8853, %8863
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fdiv fast float %8865, %8856
  br label %8867

; <label>:8867                                    ; preds = %8860, %8840
  %8868 = phi float [ %8862, %8860 ], [ 1.000000e+00, %8840 ]
  %8869 = phi float [ %8866, %8860 ], [ %8853, %8840 ]
  %8870 = fcmp fast une float %8857, 0.000000e+00
  br i1 %8870, label %8871, label %8878, !dx.controlflow.hints !171

; <label>:8871                                    ; preds = %8867
  %8872 = fmul fast float %8857, 0x3FF7154760000000
  %8873 = call float @dx.op.unary.f32(i32 21, float %8872)  ; Exp(value)
  %8874 = fsub fast float 1.000000e+00, %8873
  %8875 = fmul fast float %8854, %8874
  %8876 = fsub fast float -0.000000e+00, %8875
  %8877 = fdiv fast float %8876, %8857
  br label %8878

; <label>:8878                                    ; preds = %8871, %8867
  %8879 = phi float [ %8873, %8871 ], [ 1.000000e+00, %8867 ]
  %8880 = phi float [ %8877, %8871 ], [ %8854, %8867 ]
  %8881 = fcmp fast une float %8858, 0.000000e+00
  br i1 %8881, label %8882, label %8889, !dx.controlflow.hints !171

; <label>:8882                                    ; preds = %8878
  %8883 = fmul fast float %8858, 0x3FF7154760000000
  %8884 = call float @dx.op.unary.f32(i32 21, float %8883)  ; Exp(value)
  %8885 = fsub fast float 1.000000e+00, %8884
  %8886 = fmul fast float %8855, %8885
  %8887 = fsub fast float -0.000000e+00, %8886
  %8888 = fdiv fast float %8887, %8858
  br label %8889

; <label>:8889                                    ; preds = %8882, %8878
  %8890 = phi float [ %8884, %8882 ], [ 1.000000e+00, %8878 ]
  %8891 = phi float [ %8888, %8882 ], [ %8855, %8878 ]
  %8892 = fcmp fast ogt float %8788, %8790
  br i1 %8892, label %8893, label %8913

; <label>:8893                                    ; preds = %8889
  %8894 = fsub fast float 1.000000e+00, %8790
  %8895 = fmul fast float %8806, %8894
  %8896 = fmul fast float %8807, %8894
  %8897 = fmul fast float %8808, %8894
  %8898 = fmul fast float %8809, %8894
  %8899 = fcmp fast une float %8898, 0.000000e+00
  br i1 %8899, label %8900, label %8951, !dx.controlflow.hints !172

; <label>:8900                                    ; preds = %8893
  %8901 = fmul fast float %8898, 0x3FF7154760000000
  %8902 = call float @dx.op.unary.f32(i32 21, float %8901)  ; Exp(value)
  %8903 = fsub fast float 1.000000e+00, %8902
  %8904 = fmul fast float %8895, %8903
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = fmul fast float %8896, %8903
  %8907 = fsub fast float -0.000000e+00, %8906
  %8908 = fmul fast float %8897, %8903
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = fdiv fast float %8905, %8898
  %8911 = fdiv fast float %8907, %8898
  %8912 = fdiv fast float %8909, %8898
  br label %8951

; <label>:8913                                    ; preds = %8889
  %8914 = fsub fast float 1.000000e+00, %8788
  %8915 = fmul fast float %8819, %8914
  %8916 = fmul fast float %8830, %8914
  %8917 = fmul fast float %8841, %8914
  %8918 = fmul fast float %8820, %8914
  %8919 = fmul fast float %8831, %8914
  %8920 = fmul fast float %8842, %8914
  %8921 = fcmp fast une float %8918, 0.000000e+00
  br i1 %8921, label %8922, label %8929, !dx.controlflow.hints !171

; <label>:8922                                    ; preds = %8913
  %8923 = fmul fast float %8918, 0x3FF7154760000000
  %8924 = call float @dx.op.unary.f32(i32 21, float %8923)  ; Exp(value)
  %8925 = fsub fast float 1.000000e+00, %8924
  %8926 = fmul fast float %8915, %8925
  %8927 = fsub fast float -0.000000e+00, %8926
  %8928 = fdiv fast float %8927, %8918
  br label %8929

; <label>:8929                                    ; preds = %8922, %8913
  %8930 = phi float [ %8928, %8922 ], [ %8915, %8913 ]
  %8931 = phi float [ %8924, %8922 ], [ 1.000000e+00, %8913 ]
  %8932 = fcmp fast une float %8919, 0.000000e+00
  br i1 %8932, label %8933, label %8940, !dx.controlflow.hints !171

; <label>:8933                                    ; preds = %8929
  %8934 = fmul fast float %8919, 0x3FF7154760000000
  %8935 = call float @dx.op.unary.f32(i32 21, float %8934)  ; Exp(value)
  %8936 = fsub fast float 1.000000e+00, %8935
  %8937 = fmul fast float %8916, %8936
  %8938 = fsub fast float -0.000000e+00, %8937
  %8939 = fdiv fast float %8938, %8919
  br label %8940

; <label>:8940                                    ; preds = %8933, %8929
  %8941 = phi float [ %8939, %8933 ], [ %8916, %8929 ]
  %8942 = phi float [ %8935, %8933 ], [ 1.000000e+00, %8929 ]
  %8943 = fcmp fast une float %8920, 0.000000e+00
  br i1 %8943, label %8944, label %8951, !dx.controlflow.hints !171

; <label>:8944                                    ; preds = %8940
  %8945 = fmul fast float %8920, 0x3FF7154760000000
  %8946 = call float @dx.op.unary.f32(i32 21, float %8945)  ; Exp(value)
  %8947 = fsub fast float 1.000000e+00, %8946
  %8948 = fmul fast float %8917, %8947
  %8949 = fsub fast float -0.000000e+00, %8948
  %8950 = fdiv fast float %8949, %8920
  br label %8951

; <label>:8951                                    ; preds = %8944, %8940, %8900, %8893
  %8952 = phi float [ %8950, %8944 ], [ %8912, %8900 ], [ %8897, %8893 ], [ %8917, %8940 ]
  %8953 = phi float [ %8941, %8944 ], [ %8911, %8900 ], [ %8896, %8893 ], [ %8941, %8940 ]
  %8954 = phi float [ %8930, %8944 ], [ %8910, %8900 ], [ %8895, %8893 ], [ %8930, %8940 ]
  %8955 = phi float [ %8946, %8944 ], [ %8902, %8900 ], [ 1.000000e+00, %8893 ], [ 1.000000e+00, %8940 ]
  %8956 = phi float [ %8942, %8944 ], [ %8902, %8900 ], [ 1.000000e+00, %8893 ], [ %8942, %8940 ]
  %8957 = phi float [ %8931, %8944 ], [ %8902, %8900 ], [ 1.000000e+00, %8893 ], [ %8931, %8940 ]
  %8958 = fmul fast float %8957, %8869
  %8959 = fmul fast float %8956, %8880
  %8960 = fmul fast float %8955, %8891
  %8961 = fadd fast float %8958, %8954
  %8962 = fadd fast float %8959, %8953
  %8963 = fadd fast float %8960, %8952
  %8964 = fmul fast float %8957, %8868
  %8965 = fmul fast float %8956, %8879
  %8966 = fmul fast float %8955, %8890
  br label %8967

; <label>:8967                                    ; preds = %8951, %8762
  %8968 = phi float [ %8966, %8951 ], [ %8768, %8762 ]
  %8969 = phi float [ %8965, %8951 ], [ %8767, %8762 ]
  %8970 = phi float [ %8964, %8951 ], [ %8766, %8762 ]
  %8971 = phi float [ %8963, %8951 ], [ %8765, %8762 ]
  %8972 = phi float [ %8962, %8951 ], [ %8764, %8762 ]
  %8973 = phi float [ %8961, %8951 ], [ %8763, %8762 ]
  %8974 = fmul fast float %8973, %7919
  %8975 = fmul fast float %8972, %7919
  %8976 = fmul fast float %8971, %7919
  %8977 = fmul fast float %8970, %8210
  %8978 = call float @dx.op.dot3.f32(i32 55, float %8970, float %8969, float %8968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8979 = call float @dx.op.dot3.f32(i32 55, float %8974, float %8975, float %8976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8980 = select i1 %268, float %8978, float %8970
  %8981 = select i1 %268, float %8978, float %8969
  %8982 = select i1 %268, float 1.000000e+00, float %8968
  %8983 = select i1 %268, float %8979, float %8974
  %8984 = select i1 %268, float 0.000000e+00, float %8975
  %8985 = select i1 %268, float 0.000000e+00, float %8976
  %8986 = fmul fast float %8980, %8204
  %8987 = fmul fast float %8981, %8205
  %8988 = fmul fast float %8982, %8206
  %8989 = fadd fast float %8986, %8983
  %8990 = fadd fast float %8987, %8984
  %8991 = fadd fast float %8985, %8988
  %8992 = fmul fast float %8980, %8207
  %8993 = fmul fast float %8981, %8208
  %8994 = fmul fast float %8982, %8209
  %8995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.i32 %8995, 0
  %8997 = icmp eq i32 %8996, 0
  br i1 %8997, label %9365, label %8998, !dx.controlflow.hints !173

; <label>:8998                                    ; preds = %8967
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 2
  %9001 = extractvalue %dx.types.CBufRet.f32 %8999, 3
  %9002 = fmul fast float %9000, %113
  %9003 = fmul fast float %9001, %114
  %9004 = fmul fast float %9002, 2.000000e+00
  %9005 = fmul fast float %9003, 2.000000e+00
  %9006 = fsub fast float 1.000000e+00, %9004
  %9007 = fsub fast float 1.000000e+00, %9005
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = fmul fast float %9006, %9009
  %9013 = fmul fast float %9006, %9010
  %9014 = fmul fast float %9006, %9011
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 0
  %9017 = extractvalue %dx.types.CBufRet.f32 %9015, 1
  %9018 = extractvalue %dx.types.CBufRet.f32 %9015, 2
  %9019 = fmul fast float %9007, %9016
  %9020 = fmul fast float %9007, %9017
  %9021 = fmul fast float %9007, %9018
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 0
  %9024 = extractvalue %dx.types.CBufRet.f32 %9022, 1
  %9025 = extractvalue %dx.types.CBufRet.f32 %9022, 2
  %9026 = fadd fast float %9019, %9023
  %9027 = fadd fast float %9026, %9012
  %9028 = fadd fast float %9020, %9024
  %9029 = fadd fast float %9028, %9013
  %9030 = fadd fast float %9021, %9025
  %9031 = fadd fast float %9030, %9014
  %9032 = fmul fast float %9027, %8203
  %9033 = fmul fast float %9029, %8203
  %9034 = fmul fast float %9031, %8203
  %9035 = fmul fast float %9032, %9032
  %9036 = fmul fast float %9033, %9033
  %9037 = fadd fast float %9035, %9036
  %9038 = fmul fast float %9034, %9034
  %9039 = fadd fast float %9037, %9038
  %9040 = call float @dx.op.unary.f32(i32 24, float %9039)  ; Sqrt(value)
  %9041 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %9042 = fsub fast float %9040, %9041
  %9043 = extractvalue %dx.types.CBufRet.f32 %7930, 2
  %9044 = fmul fast float %9042, %9043
  %9045 = call float @dx.op.unary.f32(i32 7, float %9044)  ; Saturate(value)
  %9046 = fadd fast float %9045, -5.000000e-01
  %9047 = fmul fast float %9046, 2.000000e+00
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 2
  %9050 = call float @dx.op.binary.f32(i32 36, float %9049, float %9047)  ; FMin(a,b)
  %9051 = fsub fast float -0.000000e+00, %9049
  %9052 = fcmp fast ogt float %9050, %9051
  br i1 %9052, label %9053, label %9365, !dx.controlflow.hints !174

; <label>:9053                                    ; preds = %8998
  %9054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9055 = extractvalue %dx.types.CBufRet.f32 %9054, 3
  %9056 = fcmp fast ogt float %9055, 0.000000e+00
  br i1 %9056, label %9057, label %9132, !dx.controlflow.hints !175

; <label>:9057                                    ; preds = %9053
  %9058 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9059 = extractvalue %dx.types.Dimensions %9058, 0
  %9060 = sitofp i32 %9059 to float
  %9061 = extractvalue %dx.types.Dimensions %9058, 1
  %9062 = sitofp i32 %9061 to float
  %9063 = fmul fast float %9002, %9060
  %9064 = fmul fast float %9003, %9062
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 1
  %9067 = fsub fast float -0.000000e+00, %9066
  %9068 = fptoui float %9067 to i32
  %9069 = fptoui float %9063 to i32
  %9070 = fptoui float %9064 to i32
  %9071 = and i32 %9068, 31
  %9072 = lshr i32 %9069, %9071
  %9073 = lshr i32 %9070, %9071
  %9074 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9068, i32 %9072, i32 %9073, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9075 = extractvalue %dx.types.ResRet.f32 %9074, 0
  %9076 = fcmp fast olt float %9075, -1.000000e+00
  %9077 = fcmp fast ogt float %9075, -1.000000e+00
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9080 = select i1 %9077, float %9079, float 1.000000e+00
  %9081 = fadd fast float %9075, 1.000000e+00
  %9082 = fmul fast float %9080, %9081
  %9083 = call float @dx.op.unary.f32(i32 6, float %9082)  ; FAbs(value)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9078, 3
  %9085 = fcmp fast oge float %9083, %9084
  %9086 = select i1 %9085, float 0x4197782600000000, float %9083
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 0
  %9089 = extractvalue %dx.types.CBufRet.f32 %9087, 1
  %9090 = extractvalue %dx.types.CBufRet.f32 %9087, 2
  %9091 = select i1 %9076, float %9088, float %9009
  %9092 = select i1 %9076, float %9089, float %9010
  %9093 = select i1 %9076, float %9090, float %9011
  %9094 = fmul fast float %9091, %9006
  %9095 = fmul fast float %9092, %9006
  %9096 = fmul fast float %9093, %9006
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  %9099 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9100 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9101 = select i1 %9076, float %9098, float %9016
  %9102 = select i1 %9076, float %9099, float %9017
  %9103 = select i1 %9076, float %9100, float %9018
  %9104 = fmul fast float %9101, %9007
  %9105 = fmul fast float %9102, %9007
  %9106 = fmul fast float %9103, %9007
  %9107 = fadd fast float %9104, %9094
  %9108 = fadd fast float %9105, %9095
  %9109 = fadd fast float %9106, %9096
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 0
  %9112 = extractvalue %dx.types.CBufRet.f32 %9110, 1
  %9113 = extractvalue %dx.types.CBufRet.f32 %9110, 2
  %9114 = select i1 %9076, float %9111, float %9023
  %9115 = select i1 %9076, float %9112, float %9024
  %9116 = select i1 %9076, float %9113, float %9025
  %9117 = fadd fast float %9107, %9114
  %9118 = fadd fast float %9108, %9115
  %9119 = fadd fast float %9109, %9116
  %9120 = fmul fast float %9117, %9086
  %9121 = fmul fast float %9118, %9086
  %9122 = fmul fast float %9119, %9086
  %9123 = fmul fast float %9120, %9120
  %9124 = fmul fast float %9121, %9121
  %9125 = fadd fast float %9123, %9124
  %9126 = fmul fast float %9122, %9122
  %9127 = fadd fast float %9125, %9126
  %9128 = call float @dx.op.unary.f32(i32 24, float %9127)  ; Sqrt(value)
  %9129 = fsub fast float %9128, %9041
  %9130 = fmul fast float %9129, %9043
  %9131 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  br label %9132

; <label>:9132                                    ; preds = %9057, %9053
  %9133 = phi float [ %9131, %9057 ], [ 1.000000e+00, %9053 ]
  %9134 = fmul fast float %9050, 5.000000e-01
  %9135 = fadd fast float %9134, 5.000000e-01
  %9136 = call float @dx.op.unary.f32(i32 22, float %9135)  ; Frc(value)
  %9137 = call float @dx.op.unary.f32(i32 27, float %9136)  ; Round_ni(value)
  %9138 = call float @dx.op.unary.f32(i32 22, float %9136)  ; Frc(value)
  %9139 = fmul fast float %9138, 2.000000e+00
  %9140 = fadd fast float %9139, -1.000000e+00
  %9141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %9002, float %9003, float %9137, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9142 = extractvalue %dx.types.ResRet.f32 %9141, 0
  %9143 = extractvalue %dx.types.ResRet.f32 %9141, 1
  %9144 = extractvalue %dx.types.ResRet.f32 %9141, 2
  %9145 = extractvalue %dx.types.ResRet.f32 %9141, 3
  %9146 = fadd fast float %9142, -5.000000e-01
  %9147 = fadd fast float %9144, -5.000000e-01
  %9148 = fmul fast float %9146, 0xBFD5555560000000
  %9149 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9147, float %9148)  ; FMad(a,b,c)
  %9150 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9143, float 0.000000e+00)  ; FMad(a,b,c)
  %9151 = fadd fast float %9150, %9145
  %9152 = fmul fast float %9146, -7.500000e-01
  %9153 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9147, float %9152)  ; FMad(a,b,c)
  %9154 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9143, float 0.000000e+00)  ; FMad(a,b,c)
  %9155 = fadd fast float %9154, %9145
  %9156 = call float @dx.op.binary.f32(i32 35, float %9149, float -1.000000e+00)  ; FMax(a,b)
  %9157 = call float @dx.op.binary.f32(i32 35, float %9151, float -1.000000e+00)  ; FMax(a,b)
  %9158 = call float @dx.op.binary.f32(i32 35, float %9153, float -1.000000e+00)  ; FMax(a,b)
  %9159 = call float @dx.op.binary.f32(i32 35, float %9155, float -1.000000e+00)  ; FMax(a,b)
  %9160 = call float @dx.op.binary.f32(i32 36, float %9156, float 1.000000e+00)  ; FMin(a,b)
  %9161 = call float @dx.op.binary.f32(i32 36, float %9157, float 1.000000e+00)  ; FMin(a,b)
  %9162 = call float @dx.op.binary.f32(i32 36, float %9158, float 1.000000e+00)  ; FMin(a,b)
  %9163 = call float @dx.op.binary.f32(i32 36, float %9159, float 1.000000e+00)  ; FMin(a,b)
  %9164 = fcmp fast olt float %9160, 0x3FEFFF8020000000
  br i1 %9164, label %9165, label %9280, !dx.controlflow.hints !176

; <label>:9165                                    ; preds = %9132
  %9166 = extractvalue %dx.types.CBufRet.f32 %9048, 3
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 0
  %9169 = extractvalue %dx.types.CBufRet.f32 %9167, 1
  %9170 = extractvalue %dx.types.CBufRet.f32 %9167, 2
  %9171 = extractvalue %dx.types.CBufRet.f32 %9167, 3
  %9172 = fsub fast float %9168, %9160
  %9173 = fsub fast float %9169, %9161
  %9174 = fsub fast float %9170, %9162
  %9175 = fsub fast float %9171, %9163
  %9176 = fmul fast float %9172, %9166
  %9177 = fmul fast float %9173, %9166
  %9178 = fmul fast float %9174, %9166
  %9179 = fmul fast float %9175, %9166
  %9180 = fadd fast float %9176, %9160
  %9181 = fadd fast float %9177, %9161
  %9182 = fsub fast float -0.000000e+00, %9181
  %9183 = fadd fast float %9178, %9162
  %9184 = fadd fast float %9179, %9163
  %9185 = fmul fast float %9180, %9180
  %9186 = fsub fast float %9181, %9185
  %9187 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9186)  ; FMax(a,b)
  %9188 = fdiv fast float 1.000000e+00, %9187
  %9189 = fmul fast float %9181, %9180
  %9190 = fsub fast float %9183, %9189
  %9191 = fsub fast float %9140, %9180
  %9192 = fmul fast float %9140, %9140
  %9193 = fsub fast float %9192, %9181
  %9194 = fmul fast float %9191, %9188
  %9195 = fmul fast float %9194, %9190
  %9196 = fsub fast float %9193, %9195
  %9197 = fmul fast float %9181, %9181
  %9198 = fsub fast float %9184, %9197
  %9199 = fmul fast float %9190, %9190
  %9200 = fmul fast float %9199, %9188
  %9201 = fsub fast float %9198, %9200
  %9202 = fdiv fast float %9196, %9201
  %9203 = fmul fast float %9190, %9202
  %9204 = fsub fast float %9191, %9203
  %9205 = fmul fast float %9204, %9188
  %9206 = fmul fast float %9205, %9180
  %9207 = fsub fast float 1.000000e+00, %9206
  %9208 = fmul fast float %9181, %9202
  %9209 = fsub fast float %9207, %9208
  %9210 = fmul fast float %9205, %9205
  %9211 = fmul fast float %9202, 4.000000e+00
  %9212 = fmul fast float %9211, %9209
  %9213 = fsub fast float %9210, %9212
  %9214 = call float @dx.op.unary.f32(i32 24, float %9213)  ; Sqrt(value)
  %9215 = fcmp fast oge float %9205, 0.000000e+00
  %9216 = fsub fast float -0.000000e+00, %9214
  %9217 = select i1 %9215, float %9216, float %9214
  %9218 = fsub fast float %9217, %9205
  %9219 = fdiv fast float %9218, %9202
  %9220 = fdiv fast float %9209, %9218
  %9221 = fmul fast float %9219, 5.000000e-01
  %9222 = fmul fast float %9220, 2.000000e+00
  %9223 = select i1 %9215, float %9221, float %9222
  %9224 = select i1 %9215, float %9222, float %9221
  %9225 = call float @dx.op.binary.f32(i32 35, float %9223, float %9224)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9223, float %9224)  ; FMin(a,b)
  %9227 = fcmp fast ogt float %9140, %9226
  br i1 %9227, label %9228, label %9238

; <label>:9228                                    ; preds = %9165
  %9229 = fsub fast float %9140, %9226
  %9230 = fsub fast float %9225, %9226
  %9231 = fmul fast float %9229, %9230
  %9232 = fmul fast float %9225, %9140
  %9233 = fadd fast float %9225, %9140
  %9234 = fmul fast float %9233, %9180
  %9235 = fadd fast float %9232, %9181
  %9236 = fsub fast float %9235, %9234
  %9237 = fdiv fast float %9236, %9231
  br label %9238

; <label>:9238                                    ; preds = %9228, %9165
  %9239 = phi float [ %9237, %9228 ], [ 0.000000e+00, %9165 ]
  %9240 = fcmp fast ogt float %9140, %9225
  %9241 = fsub fast float %9140, %9225
  br i1 %9240, label %9242, label %9252

; <label>:9242                                    ; preds = %9238
  %9243 = fsub fast float %9225, %9226
  %9244 = fmul fast float %9243, %9241
  %9245 = fmul fast float %9226, %9140
  %9246 = fadd fast float %9226, %9140
  %9247 = fmul fast float %9246, %9180
  %9248 = fsub fast float %9182, %9245
  %9249 = fadd fast float %9248, %9247
  %9250 = fdiv fast float %9249, %9244
  %9251 = fadd fast float %9250, %9239
  br label %9252

; <label>:9252                                    ; preds = %9242, %9238
  %9253 = phi float [ %9251, %9242 ], [ %9239, %9238 ]
  %9254 = fsub fast float %9140, %9226
  %9255 = fmul fast float %9254, %9241
  %9256 = fmul fast float %9226, %9225
  %9257 = fadd fast float %9226, %9225
  %9258 = fmul fast float %9257, %9180
  %9259 = fadd fast float %9256, %9181
  %9260 = fsub fast float %9259, %9258
  %9261 = fdiv fast float %9260, %9255
  %9262 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  %9263 = fcmp fast oeq float %7931, 0.000000e+00
  %9264 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9265 = fcmp fast oeq float %9264, 0.000000e+00
  %9266 = or i1 %9263, %9265
  %9267 = fmul fast float %9264, 2.000000e+00
  %9268 = fadd fast float %9049, %9050
  %9269 = fdiv fast float %9268, %9267
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = fmul fast float %9270, 2.000000e+00
  %9272 = fsub fast float 3.000000e+00, %9271
  %9273 = fmul fast float %9270, %9270
  %9274 = fmul fast float %9273, %9272
  %9275 = select i1 %9266, float 1.000000e+00, float %9274
  %9276 = fmul fast float %9261, %7931
  %9277 = fadd fast float %9262, %9276
  %9278 = call float @dx.op.unary.f32(i32 7, float %9277)  ; Saturate(value)
  %9279 = fmul fast float %9275, %9278
  br label %9280

; <label>:9280                                    ; preds = %9252, %9132
  %9281 = phi float [ %9279, %9252 ], [ 0.000000e+00, %9132 ]
  %9282 = fsub fast float 1.000000e+00, %9281
  %9283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %9002, float %9003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9284 = extractvalue %dx.types.ResRet.f32 %9283, 0
  %9285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.i32 %9285, 2
  %9287 = icmp eq i32 %9286, 0
  br i1 %9287, label %9293, label %9288

; <label>:9288                                    ; preds = %9280
  %9289 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9290 = fadd fast float %9284, -1.000000e+00
  %9291 = fmul fast float %9289, %9290
  %9292 = fadd fast float %9291, 1.000000e+00
  br label %9293

; <label>:9293                                    ; preds = %9288, %9280
  %9294 = phi float [ %9292, %9288 ], [ %9282, %9280 ]
  br i1 %9056, label %9295, label %9313

; <label>:9295                                    ; preds = %9293
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 1
  %9298 = fsub fast float %9133, %9297
  %9299 = call float @dx.op.unary.f32(i32 7, float %9298)  ; Saturate(value)
  %9300 = fsub fast float %9133, %9055
  %9301 = call float @dx.op.unary.f32(i32 7, float %9300)  ; Saturate(value)
  %9302 = fsub fast float %9299, %9301
  %9303 = fsub fast float %9135, %9301
  %9304 = fdiv fast float %9303, %9302
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  %9306 = fmul fast float %9305, 2.000000e+00
  %9307 = fsub fast float 3.000000e+00, %9306
  %9308 = fsub fast float %9284, %9294
  %9309 = fmul fast float %9305, %9305
  %9310 = fmul fast float %9309, %9308
  %9311 = fmul fast float %9310, %9307
  %9312 = fadd fast float %9311, %9294
  br label %9313

; <label>:9313                                    ; preds = %9295, %9293
  %9314 = phi float [ %9312, %9295 ], [ %9294, %9293 ]
  %9315 = call float @dx.op.binary.f32(i32 35, float %9284, float %9314)  ; FMax(a,b)
  %9316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.i32 %9316, 2
  %9318 = and i32 %9317, 1
  %9319 = icmp eq i32 %9318, 0
  %9320 = fcmp fast une float %9315, 1.000000e+00
  %9321 = and i1 %9320, %9319
  br i1 %9321, label %9322, label %9341

; <label>:9322                                    ; preds = %9313
  %9323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %9002, float %9003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9324 = extractvalue %dx.types.ResRet.f32 %9323, 0
  %9325 = extractvalue %dx.types.ResRet.f32 %9323, 1
  %9326 = extractvalue %dx.types.ResRet.f32 %9323, 2
  %9327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9328 = extractvalue %dx.types.CBufRet.f32 %9327, 1
  %9329 = fmul fast float %9328, %9324
  %9330 = fmul fast float %9328, %9325
  %9331 = fmul fast float %9328, %9326
  %9332 = fcmp fast ogt float %9284, 0x3FEFFF2E40000000
  %9333 = fsub fast float 1.000000e+00, %9315
  %9334 = fsub fast float 1.000000e+00, %9284
  %9335 = fdiv fast float %9333, %9334
  %9336 = call float @dx.op.unary.f32(i32 7, float %9335)  ; Saturate(value)
  %9337 = select i1 %9332, float 0.000000e+00, float %9336
  %9338 = fmul fast float %9329, %9337
  %9339 = fmul fast float %9330, %9337
  %9340 = fmul fast float %9331, %9337
  br label %9341

; <label>:9341                                    ; preds = %9322, %9313
  %9342 = phi float [ 0.000000e+00, %9313 ], [ %9338, %9322 ]
  %9343 = phi float [ 0.000000e+00, %9313 ], [ %9339, %9322 ]
  %9344 = phi float [ 0.000000e+00, %9313 ], [ %9340, %9322 ]
  %9345 = fmul fast float %9342, %7919
  %9346 = fmul fast float %9343, %7919
  %9347 = fmul fast float %9344, %7919
  %9348 = fmul fast float %9315, %8977
  %9349 = call float @dx.op.dot3.f32(i32 55, float %9315, float %9315, float %9315, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9350 = call float @dx.op.dot3.f32(i32 55, float %9345, float %9346, float %9347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9351 = select i1 %268, float %9349, float %9315
  %9352 = select i1 %268, float 1.000000e+00, float %9315
  %9353 = select i1 %268, float %9350, float %9345
  %9354 = select i1 %268, float 0.000000e+00, float %9346
  %9355 = select i1 %268, float 0.000000e+00, float %9347
  %9356 = fmul fast float %9351, %8989
  %9357 = fmul fast float %9351, %8990
  %9358 = fmul fast float %9352, %8991
  %9359 = fadd fast float %9356, %9353
  %9360 = fadd fast float %9357, %9354
  %9361 = fadd fast float %9355, %9358
  %9362 = fmul fast float %9351, %8992
  %9363 = fmul fast float %9351, %8993
  %9364 = fmul fast float %9352, %8994
  br label %9365

; <label>:9365                                    ; preds = %9341, %8998, %8967, %8199
  %9366 = phi float [ %8204, %8199 ], [ %8989, %8967 ], [ %9359, %9341 ], [ %8989, %8998 ]
  %9367 = phi float [ %8205, %8199 ], [ %8990, %8967 ], [ %9360, %9341 ], [ %8990, %8998 ]
  %9368 = phi float [ %8206, %8199 ], [ %8991, %8967 ], [ %9361, %9341 ], [ %8991, %8998 ]
  %9369 = phi float [ %8207, %8199 ], [ %8992, %8967 ], [ %9362, %9341 ], [ %8992, %8998 ]
  %9370 = phi float [ %8208, %8199 ], [ %8993, %8967 ], [ %9363, %9341 ], [ %8993, %8998 ]
  %9371 = phi float [ %8209, %8199 ], [ %8994, %8967 ], [ %9364, %9341 ], [ %8994, %8998 ]
  %9372 = phi float [ %8210, %8199 ], [ %8977, %8967 ], [ %9348, %9341 ], [ %8977, %8998 ]
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 3
  %9376 = fmul fast float %9374, %113
  %9377 = fmul fast float %9375, %114
  %9378 = call float @dx.op.unary.f32(i32 7, float %9376)  ; Saturate(value)
  %9379 = call float @dx.op.unary.f32(i32 7, float %9377)  ; Saturate(value)
  %9380 = select i1 %7941, i32 2, i32 0
  %9381 = or i32 %9380, 1
  %9382 = uitofp i32 %9381 to float
  %9383 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9378, float %9379, float %9382, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9384 = extractvalue %dx.types.ResRet.f32 %9383, 0
  %9385 = extractvalue %dx.types.ResRet.f32 %9383, 1
  %9386 = extractvalue %dx.types.ResRet.f32 %9383, 2
  %9387 = extractvalue %dx.types.ResRet.f32 %9383, 3
  %9388 = add nuw nsw i32 %9380, 2
  %9389 = uitofp i32 %9388 to float
  %9390 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9378, float %9379, float %9389, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9391 = extractvalue %dx.types.ResRet.f32 %9390, 0
  %9392 = extractvalue %dx.types.ResRet.f32 %9390, 1
  %9393 = extractvalue %dx.types.ResRet.f32 %9390, 2
  %9394 = extractvalue %dx.types.ResRet.f32 %9390, 3
  %9395 = call float @dx.op.binary.f32(i32 35, float %9385, float %9386)  ; FMax(a,b)
  %9396 = call float @dx.op.binary.f32(i32 35, float %9384, float %9395)  ; FMax(a,b)
  %9397 = call float @dx.op.binary.f32(i32 35, float %9396, float %9387)  ; FMax(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9392, float %9393)  ; FMin(a,b)
  %9399 = call float @dx.op.binary.f32(i32 36, float %9391, float %9398)  ; FMin(a,b)
  %9400 = call float @dx.op.binary.f32(i32 36, float %9399, float %9394)  ; FMin(a,b)
  %9401 = fmul fast float %9397, 2.550000e+02
  %9402 = fadd fast float %9401, 0x3F70101020000000
  %9403 = fptoui float %9402 to i32
  %9404 = fmul fast float %9400, 2.550000e+02
  %9405 = fadd fast float %9404, 0x3F70101020000000
  %9406 = fptoui float %9405 to i32
  %9407 = icmp ult i32 %9403, %9406
  br i1 %9407, label %9408, label %9577

; <label>:9408                                    ; preds = %9365
  %9409 = fcmp fast ogt float %103, 9.843750e-01
  %9410 = fadd fast float %8203, -4.000000e+00
  %9411 = select i1 %9409, float -4.000000e+00, float %9410
  %9412 = call float @dx.op.binary.f32(i32 35, float %9411, float 0.000000e+00)  ; FMax(a,b)
  %9413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9414 = extractvalue %dx.types.CBufRet.f32 %9413, 0
  %9415 = fadd fast float %9414, %9412
  %9416 = extractvalue %dx.types.CBufRet.f32 %9413, 2
  %9417 = fmul fast float %9415, %9416
  %9418 = call float @dx.op.unary.f32(i32 23, float %9417)  ; Log(value)
  %9419 = extractvalue %dx.types.CBufRet.f32 %9413, 3
  %9420 = fmul fast float %9419, %9418
  %9421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9422 = extractvalue %dx.types.CBufRet.f32 %9421, 2
  %9423 = fmul fast float %9420, %9422
  %9424 = call float @dx.op.unary.f32(i32 7, float %9423)  ; Saturate(value)
  %9425 = uitofp i32 %9403 to float
  %9426 = uitofp i32 %9406 to float
  %9427 = fadd fast float %9425, 5.000000e-01
  %9428 = fadd fast float %9426, 5.000000e-01
  %9429 = fmul fast float %9422, %9427
  %9430 = fmul fast float %9422, %9428
  %9431 = fadd fast float %9429, 0x3F0FFB4800000000
  %9432 = fadd fast float %9430, 0xBF0FFB4800000000
  %9433 = call float @dx.op.binary.f32(i32 35, float %9424, float %9431)  ; FMax(a,b)
  %9434 = call float @dx.op.binary.f32(i32 36, float %9433, float %9432)  ; FMin(a,b)
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 1
  %9437 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9438 = extractvalue %dx.types.CBufRet.f32 %9435, 0
  %9439 = select i1 %7941, float %9438, float 0.000000e+00
  %9440 = fmul fast float %9436, %9434
  %9441 = fadd fast float %9439, %9440
  %9442 = fadd fast float %9439, %9437
  %9443 = fsub fast float %9436, %9437
  %9444 = fadd fast float %9443, %9439
  %9445 = call float @dx.op.binary.f32(i32 35, float %9441, float %9442)  ; FMax(a,b)
  %9446 = call float @dx.op.binary.f32(i32 36, float %9445, float %9444)  ; FMin(a,b)
  %9447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9378, float %9379, float %9446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9448 = extractvalue %dx.types.ResRet.f32 %9447, 0
  %9449 = extractvalue %dx.types.ResRet.f32 %9447, 1
  %9450 = extractvalue %dx.types.ResRet.f32 %9447, 2
  %9451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.i32 %9451, 0
  %9453 = extractvalue %dx.types.CBufRet.i32 %9451, 1
  %9454 = uitofp i32 %9452 to float
  %9455 = uitofp i32 %9453 to float
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 0
  %9458 = extractvalue %dx.types.CBufRet.f32 %9456, 1
  %9459 = fmul fast float %9454, %9378
  %9460 = fmul fast float %9455, %9379
  %9461 = fadd fast float %9459, -5.000000e-01
  %9462 = fadd fast float %9460, -5.000000e-01
  %9463 = call float @dx.op.unary.f32(i32 22, float %9461)  ; Frc(value)
  %9464 = call float @dx.op.unary.f32(i32 22, float %9462)  ; Frc(value)
  %9465 = fmul fast float %9463, %9463
  %9466 = fmul fast float %9465, %9463
  %9467 = fsub fast float 3.000000e+00, %9463
  %9468 = fmul fast float %9465, %9467
  %9469 = fmul fast float %9463, 3.000000e+00
  %9470 = fmul fast float %9466, 3.000000e+00
  %9471 = fmul fast float %9465, 6.000000e+00
  %9472 = fsub fast float %9470, %9471
  %9473 = fadd fast float %9472, 4.000000e+00
  %9474 = fmul fast float %9473, 0x3FC5555560000000
  %9475 = fmul fast float %9466, -3.000000e+00
  %9476 = fadd fast float %9465, %9463
  %9477 = fmul fast float %9476, 3.000000e+00
  %9478 = fadd fast float %9475, 1.000000e+00
  %9479 = fadd fast float %9478, %9477
  %9480 = fmul fast float %9466, 0x3FC5555560000000
  %9481 = fmul fast float %9464, %9464
  %9482 = fmul fast float %9481, %9464
  %9483 = fsub fast float 3.000000e+00, %9464
  %9484 = fmul fast float %9481, %9483
  %9485 = fmul fast float %9464, 3.000000e+00
  %9486 = fmul fast float %9482, 3.000000e+00
  %9487 = fmul fast float %9481, 6.000000e+00
  %9488 = fsub fast float %9486, %9487
  %9489 = fadd fast float %9488, 4.000000e+00
  %9490 = fmul fast float %9489, 0x3FC5555560000000
  %9491 = fmul fast float %9482, -3.000000e+00
  %9492 = fadd fast float %9481, %9464
  %9493 = fmul fast float %9492, 3.000000e+00
  %9494 = fadd fast float %9491, 1.000000e+00
  %9495 = fadd fast float %9494, %9493
  %9496 = fmul fast float %9482, 0x3FC5555560000000
  %9497 = fadd fast float %9463, 1.000000e+00
  %9498 = fsub fast float 1.000000e+00, %9469
  %9499 = fadd fast float %9498, %9468
  %9500 = fadd fast float %9499, %9473
  %9501 = fmul fast float %9500, 0x3FC5555560000000
  %9502 = fdiv fast float %9474, %9501
  %9503 = fsub fast float %9497, %9502
  %9504 = fsub fast float 1.000000e+00, %9463
  %9505 = fadd fast float %9479, %9466
  %9506 = fmul fast float %9505, 0x3FC5555560000000
  %9507 = fdiv fast float %9480, %9506
  %9508 = fadd fast float %9504, %9507
  %9509 = fadd fast float %9464, 1.000000e+00
  %9510 = fsub fast float 1.000000e+00, %9485
  %9511 = fadd fast float %9510, %9484
  %9512 = fadd fast float %9511, %9489
  %9513 = fmul fast float %9512, 0x3FC5555560000000
  %9514 = fdiv fast float %9490, %9513
  %9515 = fsub fast float %9509, %9514
  %9516 = fsub fast float 1.000000e+00, %9464
  %9517 = fadd fast float %9495, %9482
  %9518 = fmul fast float %9517, 0x3FC5555560000000
  %9519 = fdiv fast float %9496, %9518
  %9520 = fadd fast float %9519, %9516
  %9521 = fmul fast float %9503, %9457
  %9522 = fsub fast float %9378, %9521
  %9523 = fmul fast float %9508, %9457
  %9524 = fadd fast float %9523, %9378
  %9525 = fmul fast float %9520, %9458
  %9526 = fadd fast float %9525, %9379
  %9527 = fmul fast float %9515, %9458
  %9528 = fsub fast float %9379, %9527
  %9529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9522, float %9528, float %9446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9530 = extractvalue %dx.types.ResRet.f32 %9529, 0
  %9531 = extractvalue %dx.types.ResRet.f32 %9529, 1
  %9532 = extractvalue %dx.types.ResRet.f32 %9529, 2
  %9533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9524, float %9528, float %9446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9534 = extractvalue %dx.types.ResRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.ResRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.ResRet.f32 %9533, 2
  %9537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9522, float %9526, float %9446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9538 = extractvalue %dx.types.ResRet.f32 %9537, 0
  %9539 = extractvalue %dx.types.ResRet.f32 %9537, 1
  %9540 = extractvalue %dx.types.ResRet.f32 %9537, 2
  %9541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9524, float %9526, float %9446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9542 = extractvalue %dx.types.ResRet.f32 %9541, 0
  %9543 = extractvalue %dx.types.ResRet.f32 %9541, 1
  %9544 = extractvalue %dx.types.ResRet.f32 %9541, 2
  %9545 = fsub fast float %9538, %9530
  %9546 = fsub fast float %9539, %9531
  %9547 = fsub fast float %9540, %9532
  %9548 = fmul fast float %9545, %9518
  %9549 = fmul fast float %9546, %9518
  %9550 = fmul fast float %9547, %9518
  %9551 = fadd fast float %9548, %9530
  %9552 = fadd fast float %9549, %9531
  %9553 = fadd fast float %9550, %9532
  %9554 = fsub fast float %9542, %9534
  %9555 = fsub fast float %9543, %9535
  %9556 = fsub fast float %9544, %9536
  %9557 = fmul fast float %9554, %9518
  %9558 = fmul fast float %9555, %9518
  %9559 = fmul fast float %9556, %9518
  %9560 = fsub fast float %9534, %9551
  %9561 = fadd fast float %9560, %9557
  %9562 = fsub fast float %9535, %9552
  %9563 = fadd fast float %9562, %9558
  %9564 = fsub fast float %9536, %9553
  %9565 = fadd fast float %9564, %9559
  %9566 = fmul fast float %9561, %9506
  %9567 = fmul fast float %9563, %9506
  %9568 = fmul fast float %9565, %9506
  %9569 = fadd fast float %9566, %9551
  %9570 = fadd fast float %9567, %9552
  %9571 = fadd fast float %9568, %9553
  %9572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9573 = extractvalue %dx.types.CBufRet.f32 %9572, 1
  %9574 = fmul fast float %9569, %9573
  %9575 = fmul fast float %9570, %9573
  %9576 = fmul fast float %9571, %9573
  br label %9577

; <label>:9577                                    ; preds = %9408, %9365
  %9578 = phi float [ %9448, %9408 ], [ 1.000000e+00, %9365 ]
  %9579 = phi float [ %9449, %9408 ], [ 1.000000e+00, %9365 ]
  %9580 = phi float [ %9450, %9408 ], [ 1.000000e+00, %9365 ]
  %9581 = phi float [ %9574, %9408 ], [ 0.000000e+00, %9365 ]
  %9582 = phi float [ %9575, %9408 ], [ 0.000000e+00, %9365 ]
  %9583 = phi float [ %9576, %9408 ], [ 0.000000e+00, %9365 ]
  %9584 = fmul fast float %9581, %7919
  %9585 = fmul fast float %9582, %7919
  %9586 = fmul fast float %9583, %7919
  %9587 = fmul fast float %9578, %9372
  %9588 = call float @dx.op.dot3.f32(i32 55, float %9578, float %9579, float %9580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9589 = call float @dx.op.dot3.f32(i32 55, float %9584, float %9585, float %9586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9590 = select i1 %268, float %9588, float %9578
  %9591 = select i1 %268, float %9588, float %9579
  %9592 = select i1 %268, float 1.000000e+00, float %9580
  %9593 = select i1 %268, float %9589, float %9584
  %9594 = select i1 %268, float 0.000000e+00, float %9585
  %9595 = select i1 %268, float 0.000000e+00, float %9586
  %9596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9597 = extractvalue %dx.types.CBufRet.i32 %9596, 3
  %9598 = and i32 %9597, 3
  %9599 = icmp ne i32 %9598, 0
  %9600 = and i32 %9597, 4
  %9601 = icmp ne i32 %9600, 0
  %9602 = and i1 %9599, %9601
  %9603 = and i1 %268, %9602
  br i1 %9603, label %9604, label %9610

; <label>:9604                                    ; preds = %9577
  %9605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9606 = extractvalue %dx.types.CBufRet.f32 %9605, 1
  %9607 = fadd fast float %9587, -1.000000e+00
  %9608 = fmul fast float %9606, %9607
  %9609 = fadd fast float %9608, 1.000000e+00
  br label %9610

; <label>:9610                                    ; preds = %9604, %9577
  %9611 = phi float [ %9609, %9604 ], [ %9587, %9577 ]
  %9612 = fadd fast float %9369, %9366
  %9613 = fmul fast float %9590, %9612
  %9614 = fadd fast float %9613, %9593
  %9615 = fadd fast float %9370, %9367
  %9616 = fmul fast float %9591, %9615
  %9617 = fadd fast float %9616, %9594
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 0
  br i1 %268, label %9620, label %9644

; <label>:9620                                    ; preds = %9610
  %9621 = fadd fast float %9614, %9617
  %9622 = fmul fast float %9619, %9621
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 3
  %9625 = extractvalue %dx.types.CBufRet.f32 %7923, 1
  %9626 = fsub fast float %7928, %7922
  %9627 = fadd fast float %9626, %7929
  %9628 = fsub fast float %9627, %9625
  %9629 = extractvalue %dx.types.CBufRet.f32 %7923, 2
  %9630 = fmul fast float %9628, %9629
  %9631 = call float @dx.op.unary.f32(i32 7, float %9630)  ; Saturate(value)
  %9632 = fsub fast float %9631, %9624
  %9633 = fmul fast float %9632, %9611
  %9634 = fadd fast float %9633, %9624
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  %9637 = fsub fast float %9634, %9636
  %9638 = fmul fast float %9637, 1.000000e+01
  %9639 = call float @dx.op.unary.f32(i32 7, float %9638)  ; Saturate(value)
  %9640 = fsub fast float %4572, %7919
  %9641 = fmul fast float %9639, %9640
  %9642 = fadd fast float %9641, %7919
  %9643 = fmul fast float %9642, %9634
  br label %9668

; <label>:9644                                    ; preds = %9610
  %9645 = fadd fast float %9371, %9368
  %9646 = fmul fast float %9592, %9645
  %9647 = fadd fast float %9646, %9595
  %9648 = fmul fast float %9619, %9614
  %9649 = fmul fast float %9619, %9617
  %9650 = fmul fast float %9619, %9647
  %9651 = call float @dx.op.binary.f32(i32 35, float %9649, float %9650)  ; FMax(a,b)
  %9652 = call float @dx.op.binary.f32(i32 35, float %9648, float %9651)  ; FMax(a,b)
  %9653 = call float @dx.op.binary.f32(i32 35, float %9652, float %7919)  ; FMax(a,b)
  %9654 = fcmp fast ugt float %9653, 0x3F10000000000000
  br i1 %9654, label %9656, label %9655

; <label>:9655                                    ; preds = %9644
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9656

; <label>:9656                                    ; preds = %9655, %9644
  %9657 = add i32 %57, 372
  %9658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9657, i32 undef)  ; BufferLoad(srv,index,wot)
  %9659 = extractvalue %dx.types.ResRet.i32 %9658, 0
  %9660 = and i32 %9659, 32
  %9661 = icmp eq i32 %9660, 0
  br i1 %9661, label %9668, label %9662

; <label>:9662                                    ; preds = %9656
  %9663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9664 = extractvalue %dx.types.CBufRet.f32 %9663, 0
  %9665 = fmul fast float %9664, 0x3FE99999A0000000
  %9666 = fadd fast float %9664, %9648
  %9667 = fadd fast float %9665, %9650
  br label %9668

; <label>:9668                                    ; preds = %9662, %9656, %9620
  %9669 = phi float [ %9622, %9620 ], [ %9666, %9662 ], [ %9648, %9656 ]
  %9670 = phi float [ %9643, %9620 ], [ %9649, %9662 ], [ %9649, %9656 ]
  %9671 = phi float [ %9642, %9620 ], [ %9667, %9662 ], [ %9650, %9656 ]
  %9672 = phi float [ %9642, %9620 ], [ %7919, %9662 ], [ %7919, %9656 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9673 = call float @dx.op.binary.f32(i32 36, float %9669, float 3.225500e+04)  ; FMin(a,b)
  %9674 = call float @dx.op.binary.f32(i32 36, float %9670, float 3.225500e+04)  ; FMin(a,b)
  %9675 = call float @dx.op.binary.f32(i32 36, float %9671, float 3.225500e+04)  ; FMin(a,b)
  %9676 = call float @dx.op.binary.f32(i32 36, float %9672, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9673)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9674)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9675)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9676)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
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
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !97}
!70 = !{!71, !95, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"SH_RED", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 5, i8 0, !74}
!82 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 7, i8 0, !74}
!84 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 8, i8 0, !79}
!85 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !74}
!86 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 10, i8 0, !77}
!87 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !74}
!88 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 12, i8 0, !79}
!89 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 13, i8 0, !90}
!90 = !{i32 3, i32 1}
!91 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 13, i8 1, !90}
!92 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 14, i8 0, !90}
!93 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !73, i8 1, i32 1, i8 1, i32 13, i8 3, !90}
!94 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
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
!128 = !{!129, !129, i64 0}
!129 = !{!"float", !105, i64 0}
!130 = !{!131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!131 = distinct !{!131, !132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!132 = distinct !{!132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!133 = distinct !{!133, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!134 = distinct !{!134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!135 = distinct !{!135, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!144 = distinct !{!144, !145, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!145 = distinct !{!145, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"\01?sort@@YAXAIAM00@Z: %c"}
!148 = distinct !{!148, !"\01?sort@@YAXAIAM00@Z"}
!149 = !{!150, !151, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!150 = distinct !{!150, !148, !"\01?sort@@YAXAIAM00@Z: %a"}
!151 = distinct !{!151, !148, !"\01?sort@@YAXAIAM00@Z: %b"}
!152 = !{!151}
!153 = !{!150, !147, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!154 = !{!150}
!155 = !{!151, !147, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!156 = !{!157}
!157 = distinct !{!157, !158, !"\01?sort@@YAXAIAM00@Z: %c"}
!158 = distinct !{!158, !"\01?sort@@YAXAIAM00@Z"}
!159 = !{!160, !161, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!160 = distinct !{!160, !158, !"\01?sort@@YAXAIAM00@Z: %a"}
!161 = distinct !{!161, !158, !"\01?sort@@YAXAIAM00@Z: %b"}
!162 = !{!161}
!163 = !{!160, !157, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!164 = !{!160}
!165 = !{!161, !157, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 2}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}

