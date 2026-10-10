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
; shader hash: 1ec068adbe5c3e0ace85529220d1a2a2
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
  %448 = add i32 %57, 348
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
  %462 = add i32 %57, 572
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
  br i1 %518, label %1053, label %519

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
  %623 = add i32 %57, 520
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
  %675 = add i32 %57, 504
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
  %699 = add i32 %57, 456
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
  %722 = add i32 %57, 540
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
  %903 = add i32 %57, 356
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
  %920 = add i32 %57, 472
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
  %1004 = add i32 %57, 488
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
  %1040 = add i32 %57, 96
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 255
  %1044 = uitofp i32 %1043 to float
  %1045 = lshr i32 %1042, 8
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = call float @dx.op.dot3.f32(i32 55, float %909, float %910, float %911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = fmul fast float %1047, %1048
  %1050 = fadd fast float %1049, %1044
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  br label %1053

; <label>:1053                                    ; preds = %1036, %504
  %1054 = phi float [ 0.000000e+00, %504 ], [ %990, %1036 ]
  %1055 = phi float [ 0.000000e+00, %504 ], [ %991, %1036 ]
  %1056 = phi float [ 0.000000e+00, %504 ], [ %909, %1036 ]
  %1057 = phi float [ 0.000000e+00, %504 ], [ %910, %1036 ]
  %1058 = phi float [ 0.000000e+00, %504 ], [ %911, %1036 ]
  %1059 = phi float [ 0.000000e+00, %504 ], [ %1037, %1036 ]
  %1060 = phi float [ 0.000000e+00, %504 ], [ %1038, %1036 ]
  %1061 = phi float [ 0.000000e+00, %504 ], [ %1039, %1036 ]
  %1062 = phi float [ 0.000000e+00, %504 ], [ %895, %1036 ]
  %1063 = phi float [ 0.000000e+00, %504 ], [ %691, %1036 ]
  %1064 = phi float [ 0.000000e+00, %504 ], [ %989, %1036 ]
  %1065 = phi float [ 0.000000e+00, %504 ], [ %992, %1036 ]
  %1066 = phi float [ 0.000000e+00, %504 ], [ %1052, %1036 ]
  br i1 %452, label %1793, label %1067

; <label>:1067                                    ; preds = %1053
  %1068 = icmp ult i32 %510, 2
  %1069 = add i32 %57, 40
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %57, 44
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = or i32 %1074, %1071
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1793, label %1077

; <label>:1077                                    ; preds = %1067
  %1078 = and i32 %1071, 262144
  %1079 = icmp ne i32 %1078, 0
  %1080 = select i1 %1079, float %63, float 1.000000e+00
  %1081 = select i1 %1079, float %64, float 0.000000e+00
  %1082 = select i1 %1079, float %65, float 0.000000e+00
  %1083 = select i1 %1079, float %66, float 1.000000e+00
  %1084 = select i1 %1079, float %67, float %95
  %1085 = select i1 %1079, float %68, float %96
  %1086 = add i32 %57, 300
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = lshr i32 %1088, 16
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = fmul fast float %1090, 0x3F50624DE0000000
  %1092 = add i32 %57, 104
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 16
  %1096 = and i32 %1095, 255
  %1097 = lshr i32 %1094, 24
  %1098 = add i32 %57, 308
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 65535
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = lshr i32 %1100, 16
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = add i32 %57, 48
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = lshr i32 %1107, 22
  %1109 = shl nuw nsw i32 %1108, 5
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = shl i32 %1107, 4
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = lshr i32 %1107, 7
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1119 = fmul fast float %1118, 1.000000e+03
  %1120 = fmul fast float %362, %1119
  %1121 = call float @dx.op.unary.f32(i32 22, float %1120)  ; Frc(value)
  %1122 = fadd fast float %1121, %352
  %1123 = fmul fast float %363, %1119
  %1124 = call float @dx.op.unary.f32(i32 22, float %1123)  ; Frc(value)
  %1125 = fadd fast float %1124, %354
  %1126 = fmul fast float %1091, %1119
  %1127 = call float @dx.op.unary.f32(i32 22, float %1126)  ; Frc(value)
  %1128 = fmul fast float %1127, 0x401921FB60000000
  %1129 = fadd fast float %1128, %1110
  %1130 = call float @dx.op.unary.f32(i32 13, float %1129)  ; Sin(value)
  %1131 = call float @dx.op.unary.f32(i32 12, float %1129)  ; Cos(value)
  %1132 = fsub fast float -0.000000e+00, %1130
  %1133 = fadd fast float %1084, -5.000000e-01
  %1134 = fadd fast float %1085, -5.000000e-01
  %1135 = fmul fast float %1102, %1133
  %1136 = fmul fast float %1104, %1134
  %1137 = fadd fast float %1135, 5.000000e-01
  %1138 = fadd fast float %1136, 5.000000e-01
  %1139 = fmul fast float %1113, %1137
  %1140 = fmul fast float %1116, %1138
  %1141 = fmul fast float %1131, %1139
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %1140, float %1141)  ; FMad(a,b,c)
  %1143 = fmul fast float %1130, %1139
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %1140, float %1143)  ; FMad(a,b,c)
  %1145 = fadd fast float %1122, %1142
  %1146 = fadd fast float %1125, %1144
  %1147 = icmp ugt i32 %1096, 1
  %1148 = icmp ugt i32 %1094, 33554431
  %1149 = or i1 %1148, %1147
  br i1 %1149, label %1150, label %1175

; <label>:1150                                    ; preds = %1077
  %1151 = add i32 %57, 244
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = lshr i32 %1153, 16
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = fmul fast float %1118, %1155
  %1157 = call float @dx.op.unary.f32(i32 22, float %1156)  ; Frc(value)
  %1158 = mul nuw nsw i32 %1096, %1097
  %1159 = uitofp i32 %1158 to float
  %1160 = fmul fast float %1157, %1159
  %1161 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1162 = fptoui float %1161 to i32
  %1163 = urem i32 %1162, %1096
  %1164 = udiv i32 %1162, %1097
  %1165 = call float @dx.op.unary.f32(i32 22, float %1145)  ; Frc(value)
  %1166 = call float @dx.op.unary.f32(i32 22, float %1146)  ; Frc(value)
  %1167 = uitofp i32 %1163 to float
  %1168 = uitofp i32 %1164 to float
  %1169 = fadd fast float %1165, %1167
  %1170 = fadd fast float %1166, %1168
  %1171 = uitofp i32 %1096 to float
  %1172 = uitofp i32 %1097 to float
  %1173 = fdiv fast float %1169, %1171
  %1174 = fdiv fast float %1170, %1172
  br label %1175

; <label>:1175                                    ; preds = %1150, %1077
  %1176 = phi float [ %1173, %1150 ], [ %1145, %1077 ]
  %1177 = phi float [ %1174, %1150 ], [ %1146, %1077 ]
  %1178 = and i32 %1071, 256
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1226, label %1180

; <label>:1180                                    ; preds = %1175
  %1181 = add i32 %57, 524
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = add i32 %1183, 0
  %1185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1185, %dx.types.Handle %110, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = add i32 %57, 116
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = shl i32 %1190, 4
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = lshr i32 %1190, 7
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = fsub fast float 1.000000e+00, %507
  %1198 = call float @dx.op.binary.f32(i32 35, float %1197, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1199 = bitcast float %507 to i32
  %1200 = sitofp i32 %1199 to float
  %1201 = fadd fast float %1200, 0xC1CFBF8940000000
  %1202 = fmul fast float %1196, %1201
  %1203 = fadd fast float %1202, 0x41CFBF8940000000
  %1204 = fptosi float %1203 to i32
  %1205 = bitcast i32 %1204 to float
  %1206 = bitcast float %1198 to i32
  %1207 = sitofp i32 %1206 to float
  %1208 = fadd fast float %1207, 0xC1CFBF8940000000
  %1209 = fmul fast float %1208, %1196
  %1210 = fadd fast float %1209, 0x41CFBF8940000000
  %1211 = fptosi float %1210 to i32
  %1212 = bitcast i32 %1211 to float
  %1213 = fmul fast float %1205, %1193
  %1214 = fmul fast float %1212, %1193
  %1215 = fsub fast float %1198, %1213
  %1216 = fadd fast float %1214, %1198
  %1217 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1218 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1219 = fsub fast float %1187, %1217
  %1220 = fsub fast float %1218, %1217
  %1221 = bitcast float %1220 to i32
  %1222 = sub nsw i32 2129859010, %1221
  %1223 = bitcast i32 %1222 to float
  %1224 = fmul fast float %1223, %1219
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  br label %1226

; <label>:1226                                    ; preds = %1180, %1175
  %1227 = phi float [ %1225, %1180 ], [ %507, %1175 ]
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 128
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1248, label %1232

; <label>:1232                                    ; preds = %1226
  %1233 = add i32 %57, 508
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = add i32 %1235, 0
  %1237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1237, %dx.types.Handle %110, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 524288
  %1243 = icmp ne i32 %1242, 0
  %1244 = fcmp fast ogt float %1239, 0x3FE0101020000000
  %1245 = select i1 %1244, float 1.000000e+00, float 0.000000e+00
  %1246 = select i1 %1243, float %1245, float %1239
  %1247 = fmul fast float %1246, %1227
  br label %1248

; <label>:1248                                    ; preds = %1232, %1226
  %1249 = phi float [ %1247, %1232 ], [ %1227, %1226 ]
  %1250 = fcmp fast ult float %1249, 0x3F70101020000000
  br i1 %1250, label %1793, label %1251

; <label>:1251                                    ; preds = %1248
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 16
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1454, label %1256

; <label>:1256                                    ; preds = %1251
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = add i32 %57, 460
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1261, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1263, %dx.types.Handle %109, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = extractvalue %dx.types.ResRet.f32 %1264, 3
  %1269 = and i32 %1258, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = lshr i32 %1258, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1268, %1270
  %1275 = fadd fast float %1274, %1273
  %1276 = fmul fast float %1275, 0x3F70101000000000
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 512
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1289, label %1281

; <label>:1281                                    ; preds = %1256
  %1282 = add i32 %57, 544
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1286, %dx.types.Handle %110, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  br label %1289

; <label>:1289                                    ; preds = %1281, %1256
  %1290 = phi float [ %1288, %1281 ], [ 1.000000e+00, %1256 ]
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 33554432
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1401, label %1295

; <label>:1295                                    ; preds = %1289
  %1296 = add i32 %57, 240
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 65535
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1298, 16
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = add i32 %57, 244
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 65535
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = lshr i32 %1309, 24
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = and i32 %1309, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = lshr i32 %1309, 8
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = lshr i32 %1309, 16
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101020000000
  %1324 = add i32 %57, 236
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = lshr i32 %1326, 24
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = and i32 %1326, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = lshr i32 %1326, 8
  %1334 = and i32 %1333, 255
  %1335 = uitofp i32 %1334 to float
  %1336 = fmul fast float %1335, 0x3F70101020000000
  %1337 = lshr i32 %1326, 16
  %1338 = and i32 %1337, 255
  %1339 = uitofp i32 %1338 to float
  %1340 = fmul fast float %1339, 0x3F70101020000000
  %1341 = bitcast float %1265 to i32
  %1342 = ashr i32 %1341, 1
  %1343 = sub nsw i32 1597463174, %1342
  %1344 = bitcast i32 %1343 to float
  %1345 = fmul fast float %1265, 5.000000e-01
  %1346 = fmul fast float %1344, %1344
  %1347 = fmul fast float %1346, %1345
  %1348 = fsub fast float 1.500000e+00, %1347
  %1349 = fmul fast float %1344, %1265
  %1350 = fmul fast float %1349, %1348
  %1351 = bitcast float %1266 to i32
  %1352 = ashr i32 %1351, 1
  %1353 = sub nsw i32 1597463174, %1352
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1266, 5.000000e-01
  %1356 = fmul fast float %1354, %1354
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float 1.500000e+00, %1357
  %1359 = fmul fast float %1354, %1266
  %1360 = fmul fast float %1359, %1358
  %1361 = bitcast float %1267 to i32
  %1362 = ashr i32 %1361, 1
  %1363 = sub nsw i32 1597463174, %1362
  %1364 = bitcast i32 %1363 to float
  %1365 = fmul fast float %1267, 5.000000e-01
  %1366 = fmul fast float %1364, %1364
  %1367 = fmul fast float %1366, %1365
  %1368 = fsub fast float 1.500000e+00, %1367
  %1369 = fmul fast float %1364, %1267
  %1370 = fmul fast float %1369, %1368
  %1371 = fsub fast float %1350, %1332
  %1372 = fsub fast float %1360, %1336
  %1373 = fsub fast float %1370, %1340
  %1374 = fmul fast float %1371, %1300
  %1375 = fmul fast float %1372, %1302
  %1376 = fmul fast float %1373, %1307
  %1377 = fadd fast float %1374, %1315
  %1378 = fadd fast float %1375, %1319
  %1379 = fadd fast float %1376, %1323
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1383 = fmul fast float %1380, %1380
  %1384 = fmul fast float %1381, %1381
  %1385 = fmul fast float %1382, %1382
  %1386 = fsub fast float %1383, %1265
  %1387 = fsub fast float %1384, %1266
  %1388 = fsub fast float %1385, %1267
  %1389 = fmul fast float %1386, %1290
  %1390 = fmul fast float %1387, %1290
  %1391 = fmul fast float %1388, %1290
  %1392 = fadd fast float %1389, %1265
  %1393 = fadd fast float %1390, %1266
  %1394 = fadd fast float %1391, %1267
  %1395 = fadd fast float %1312, %1276
  %1396 = fsub fast float %1395, %1329
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = fsub fast float %1397, %1276
  %1399 = fmul fast float %1398, %1290
  %1400 = fadd fast float %1399, %1276
  br label %1454

; <label>:1401                                    ; preds = %1289
  %1402 = and i32 %1292, 134217728
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1438, label %1404

; <label>:1404                                    ; preds = %1401
  %1405 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %1407 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %1408 = fadd fast float %1405, -5.000000e-01
  %1409 = fadd fast float %1406, -5.000000e-01
  %1410 = fadd fast float %1407, -5.000000e-01
  %1411 = fmul fast float %1408, %1290
  %1412 = fmul fast float %1409, %1290
  %1413 = fmul fast float %1410, %1290
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = call float @dx.op.unary.f32(i32 24, float %1265)  ; Sqrt(value)
  %1418 = call float @dx.op.unary.f32(i32 24, float %1266)  ; Sqrt(value)
  %1419 = call float @dx.op.unary.f32(i32 24, float %1267)  ; Sqrt(value)
  %1420 = fmul fast float %1414, 2.000000e+00
  %1421 = fsub fast float 1.000000e+00, %1420
  %1422 = fmul fast float %1421, %1417
  %1423 = fadd fast float %1422, %1420
  %1424 = fmul fast float %1423, %1417
  %1425 = fmul fast float %1415, 2.000000e+00
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = fmul fast float %1426, %1418
  %1428 = fadd fast float %1427, %1425
  %1429 = fmul fast float %1428, %1418
  %1430 = fmul fast float %1416, 2.000000e+00
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fmul fast float %1431, %1419
  %1433 = fadd fast float %1432, %1430
  %1434 = fmul fast float %1433, %1419
  %1435 = fmul fast float %1424, %1424
  %1436 = fmul fast float %1429, %1429
  %1437 = fmul fast float %1434, %1434
  br label %1454

; <label>:1438                                    ; preds = %1401
  %1439 = fmul fast float %339, %339
  %1440 = fmul fast float %343, %343
  %1441 = fmul fast float %347, %347
  %1442 = fadd fast float %1439, -1.000000e+00
  %1443 = fadd fast float %1440, -1.000000e+00
  %1444 = fadd fast float %1441, -1.000000e+00
  %1445 = fmul fast float %1290, %1442
  %1446 = fmul fast float %1290, %1443
  %1447 = fmul fast float %1290, %1444
  %1448 = fadd fast float %1445, 1.000000e+00
  %1449 = fadd fast float %1446, 1.000000e+00
  %1450 = fadd fast float %1447, 1.000000e+00
  %1451 = fmul fast float %1448, %1265
  %1452 = fmul fast float %1449, %1266
  %1453 = fmul fast float %1450, %1267
  br label %1454

; <label>:1454                                    ; preds = %1438, %1404, %1295, %1251
  %1455 = phi float [ %1400, %1295 ], [ %1276, %1404 ], [ %1276, %1438 ], [ 0x3FA23C0BE0000000, %1251 ]
  %1456 = phi float [ %1392, %1295 ], [ %1435, %1404 ], [ %1451, %1438 ], [ 1.000000e+00, %1251 ]
  %1457 = phi float [ %1393, %1295 ], [ %1436, %1404 ], [ %1452, %1438 ], [ 1.000000e+00, %1251 ]
  %1458 = phi float [ %1394, %1295 ], [ %1437, %1404 ], [ %1453, %1438 ], [ 1.000000e+00, %1251 ]
  %1459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.i32 %1459, 1
  %1461 = and i32 %1460, 1
  %1462 = icmp ne i32 %1461, 0
  %1463 = add i32 %57, 356
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 32
  %1467 = icmp ne i32 %1466, 0
  %1468 = and i1 %1462, %1467
  %1469 = select i1 %1468, float 1.000000e+00, float %1456
  %1470 = select i1 %1468, float 0x3FD3333340000000, float %1457
  %1471 = select i1 %1468, float 0x3FD3333340000000, float %1458
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 32
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1548, label %1476

; <label>:1476                                    ; preds = %1454
  %1477 = add i32 %57, 108
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %57, 476
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = add i32 %1482, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1484, %dx.types.Handle %109, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.ResRet.f32 %1485, 2
  %1489 = extractvalue %dx.types.ResRet.f32 %1485, 3
  %1490 = and i32 %1479, 255
  %1491 = uitofp i32 %1490 to float
  %1492 = lshr i32 %1479, 8
  %1493 = and i32 %1492, 255
  %1494 = uitofp i32 %1493 to float
  %1495 = lshr i32 %1479, 16
  %1496 = and i32 %1495, 255
  %1497 = uitofp i32 %1496 to float
  %1498 = fmul fast float %1497, 0x3F70101000000000
  %1499 = fmul fast float %1486, %1491
  %1500 = fadd fast float %1499, %1494
  %1501 = fmul fast float %1500, 0x3F70101000000000
  %1502 = fadd fast float %1487, -5.000000e-01
  %1503 = fadd fast float %1489, -5.000000e-01
  %1504 = fmul fast float %1502, %1498
  %1505 = fmul fast float %1503, %1498
  %1506 = fadd fast float %1504, 5.000000e-01
  %1507 = fadd fast float %1505, 5.000000e-01
  %1508 = fmul fast float %1506, 2.000000e+00
  %1509 = fadd fast float %1508, -1.000000e+00
  %1510 = fmul fast float %1507, 2.000000e+00
  %1511 = fadd fast float %1510, -1.000000e+00
  %1512 = fadd fast float %1509, %1511
  %1513 = fmul fast float %1512, 5.000000e-01
  %1514 = fsub fast float %1509, %1511
  %1515 = fmul fast float %1514, 5.000000e-01
  %1516 = call float @dx.op.unary.f32(i32 6, float %1513)  ; FAbs(value)
  %1517 = fsub fast float 1.000000e+00, %1516
  %1518 = call float @dx.op.unary.f32(i32 6, float %1515)  ; FAbs(value)
  %1519 = fsub fast float %1517, %1518
  %1520 = call float @dx.op.dot3.f32(i32 55, float %1513, float %1515, float %1519, float %1513, float %1515, float %1519)  ; Dot3(ax,ay,az,bx,by,bz)
  %1521 = call float @dx.op.unary.f32(i32 25, float %1520)  ; Rsqrt(value)
  %1522 = fmul fast float %1513, %1521
  %1523 = fmul fast float %1515, %1521
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 67108864
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1544, label %1528

; <label>:1528                                    ; preds = %1476
  %1529 = add i32 %57, 296
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 65535
  %1533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1532)  ; LegacyF16ToF32(value)
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 65535
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = lshr i32 %1531, 16
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = fsub fast float %1501, %1539
  %1541 = fmul fast float %1540, %1533
  %1542 = fadd fast float %1541, %1537
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  br label %1544

; <label>:1544                                    ; preds = %1528, %1476
  %1545 = phi float [ %1543, %1528 ], [ %1501, %1476 ]
  %1546 = call float @dx.op.dot2.f32(i32 54, float %1522, float %1523, float %1080, float %1081)  ; Dot2(ax,ay,bx,by)
  %1547 = call float @dx.op.dot2.f32(i32 54, float %1522, float %1523, float %1082, float %1083)  ; Dot2(ax,ay,bx,by)
  br label %1548

; <label>:1548                                    ; preds = %1544, %1454
  %1549 = phi float [ %1545, %1544 ], [ 0x3FD6666660000000, %1454 ]
  %1550 = phi float [ %1546, %1544 ], [ 0.000000e+00, %1454 ]
  %1551 = phi float [ %1547, %1544 ], [ 0.000000e+00, %1454 ]
  %1552 = phi float [ %1488, %1544 ], [ 1.000000e+00, %1454 ]
  %1553 = add i32 %57, 176
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = lshr i32 %1555, 22
  %1557 = shl nuw nsw i32 %1556, 5
  %1558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1557)  ; LegacyF16ToF32(value)
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 64
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1596, label %1563

; <label>:1563                                    ; preds = %1548
  %1564 = add i32 %57, 492
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = add i32 %1566, 0
  %1568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 131072
  %1572 = icmp eq i32 %1571, 0
  %1573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1568, %dx.types.Handle %109, float %1176, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = fmul fast float %1574, %327
  %1578 = fmul fast float %1575, %330
  %1579 = fmul fast float %1576, %333
  br i1 %1572, label %1586, label %1580

; <label>:1580                                    ; preds = %1563
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = fmul fast float %1582, %1577
  %1584 = fmul fast float %1582, %1578
  %1585 = fmul fast float %1582, %1579
  br label %1586

; <label>:1586                                    ; preds = %1580, %1563
  %1587 = phi float [ %1583, %1580 ], [ %1577, %1563 ]
  %1588 = phi float [ %1584, %1580 ], [ %1578, %1563 ]
  %1589 = phi float [ %1585, %1580 ], [ %1579, %1563 ]
  %1590 = fmul fast float %1587, %1558
  %1591 = select i1 %268, float %1590, float %1587
  %1592 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1588, float %1589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1593 = select i1 %268, float 0.000000e+00, float %1587
  %1594 = select i1 %268, float %1592, float %1588
  %1595 = select i1 %268, float 0.000000e+00, float %1589
  br label %1596

; <label>:1596                                    ; preds = %1586, %1548
  %1597 = phi float [ %1593, %1586 ], [ 0.000000e+00, %1548 ]
  %1598 = phi float [ %1594, %1586 ], [ 0.000000e+00, %1548 ]
  %1599 = phi float [ %1595, %1586 ], [ 0.000000e+00, %1548 ]
  %1600 = add i32 %57, 112
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = lshr i32 %1602, 8
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1470, float %1471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = fmul fast float %1607, %1608
  %1610 = fadd fast float %1609, %1604
  %1611 = fmul fast float %1610, 0x3F70101020000000
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  br i1 %1068, label %1613, label %1621

; <label>:1613                                    ; preds = %1596
  %1614 = fsub fast float 1.000000e+00, %1249
  %1615 = fmul fast float %1614, %1056
  %1616 = fmul fast float %1614, %1057
  %1617 = fmul fast float %1614, %1058
  %1618 = fmul fast float %1614, %1059
  %1619 = fmul fast float %1614, %1060
  %1620 = fmul fast float %1614, %1061
  br label %1621

; <label>:1621                                    ; preds = %1613, %1596
  %1622 = phi float [ %1615, %1613 ], [ %1056, %1596 ]
  %1623 = phi float [ %1616, %1613 ], [ %1057, %1596 ]
  %1624 = phi float [ %1617, %1613 ], [ %1058, %1596 ]
  %1625 = phi float [ %1618, %1613 ], [ %1059, %1596 ]
  %1626 = phi float [ %1619, %1613 ], [ %1060, %1596 ]
  %1627 = phi float [ %1620, %1613 ], [ %1061, %1596 ]
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = and i32 %1629, 3
  %1631 = icmp eq i32 %1630, 3
  br i1 %1631, label %1710, label %1632

; <label>:1632                                    ; preds = %1621
  %1633 = and i32 %1629, 16
  %1634 = icmp ne i32 %1633, 0
  %1635 = select i1 %1634, float %1249, float 0.000000e+00
  %1636 = icmp eq i32 %1630, 0
  br i1 %1636, label %1637, label %1665

; <label>:1637                                    ; preds = %1632
  %1638 = and i32 %1629, 64
  %1639 = icmp ne i32 %1638, 0
  %1640 = select i1 %1639, float %1249, float 0.000000e+00
  %1641 = fsub fast float %1469, %1622
  %1642 = fsub fast float %1470, %1623
  %1643 = fsub fast float %1471, %1624
  %1644 = fmul fast float %1635, %1641
  %1645 = fmul fast float %1635, %1642
  %1646 = fmul fast float %1635, %1643
  %1647 = fadd fast float %1644, %1622
  %1648 = fadd fast float %1645, %1623
  %1649 = fadd fast float %1646, %1624
  %1650 = fsub fast float %1455, %1062
  %1651 = fmul fast float %1635, %1650
  %1652 = fadd fast float %1651, %1062
  %1653 = fsub fast float %1597, %1625
  %1654 = fsub fast float %1598, %1626
  %1655 = fsub fast float %1599, %1627
  %1656 = fmul fast float %1640, %1653
  %1657 = fmul fast float %1640, %1654
  %1658 = fmul fast float %1640, %1655
  %1659 = fadd fast float %1656, %1625
  %1660 = fadd fast float %1657, %1626
  %1661 = fadd fast float %1658, %1627
  %1662 = fsub fast float %1612, %1066
  %1663 = fmul fast float %1635, %1662
  %1664 = fadd fast float %1663, %1066
  br label %1710

; <label>:1665                                    ; preds = %1632
  %1666 = icmp eq i32 %1630, 1
  br i1 %1666, label %1667, label %1680

; <label>:1667                                    ; preds = %1665
  %1668 = fadd fast float %1469, -1.000000e+00
  %1669 = fadd fast float %1470, -1.000000e+00
  %1670 = fadd fast float %1471, -1.000000e+00
  %1671 = fmul fast float %1635, %1668
  %1672 = fmul fast float %1635, %1669
  %1673 = fmul fast float %1635, %1670
  %1674 = fadd fast float %1671, 1.000000e+00
  %1675 = fadd fast float %1672, 1.000000e+00
  %1676 = fadd fast float %1673, 1.000000e+00
  %1677 = fmul fast float %1674, %1622
  %1678 = fmul fast float %1675, %1623
  %1679 = fmul fast float %1676, %1624
  br label %1710

; <label>:1680                                    ; preds = %1665
  %1681 = icmp eq i32 %1630, 2
  br i1 %1681, label %1682, label %1710

; <label>:1682                                    ; preds = %1680
  %1683 = call float @dx.op.unary.f32(i32 24, float %1469)  ; Sqrt(value)
  %1684 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1685 = call float @dx.op.unary.f32(i32 24, float %1471)  ; Sqrt(value)
  %1686 = fadd fast float %1683, -5.000000e-01
  %1687 = fadd fast float %1684, -5.000000e-01
  %1688 = fadd fast float %1685, -5.000000e-01
  %1689 = fmul fast float %1686, %1635
  %1690 = fmul fast float %1687, %1635
  %1691 = fmul fast float %1688, %1635
  %1692 = fadd fast float %1689, 5.000000e-01
  %1693 = fadd fast float %1690, 5.000000e-01
  %1694 = fadd fast float %1691, 5.000000e-01
  %1695 = fmul fast float %1692, 2.000000e+00
  %1696 = fsub fast float 1.000000e+00, %1695
  %1697 = fmul fast float %1696, %1622
  %1698 = fadd fast float %1697, %1695
  %1699 = fmul fast float %1698, %1622
  %1700 = fmul fast float %1693, 2.000000e+00
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = fmul fast float %1701, %1623
  %1703 = fadd fast float %1702, %1700
  %1704 = fmul fast float %1703, %1623
  %1705 = fmul fast float %1694, 2.000000e+00
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1706, %1624
  %1708 = fadd fast float %1707, %1705
  %1709 = fmul fast float %1708, %1624
  br label %1710

; <label>:1710                                    ; preds = %1682, %1680, %1667, %1637, %1621
  %1711 = phi float [ %1622, %1621 ], [ %1699, %1682 ], [ %1622, %1680 ], [ %1677, %1667 ], [ %1647, %1637 ]
  %1712 = phi float [ %1623, %1621 ], [ %1704, %1682 ], [ %1623, %1680 ], [ %1678, %1667 ], [ %1648, %1637 ]
  %1713 = phi float [ %1624, %1621 ], [ %1709, %1682 ], [ %1624, %1680 ], [ %1679, %1667 ], [ %1649, %1637 ]
  %1714 = phi float [ %1625, %1621 ], [ %1625, %1682 ], [ %1625, %1680 ], [ %1625, %1667 ], [ %1659, %1637 ]
  %1715 = phi float [ %1626, %1621 ], [ %1626, %1682 ], [ %1626, %1680 ], [ %1626, %1667 ], [ %1660, %1637 ]
  %1716 = phi float [ %1627, %1621 ], [ %1627, %1682 ], [ %1627, %1680 ], [ %1627, %1667 ], [ %1661, %1637 ]
  %1717 = phi float [ %1062, %1621 ], [ %1062, %1682 ], [ %1062, %1680 ], [ %1062, %1667 ], [ %1652, %1637 ]
  %1718 = phi float [ %1066, %1621 ], [ %1066, %1682 ], [ %1066, %1680 ], [ %1066, %1667 ], [ %1664, %1637 ]
  %1719 = and i32 %1629, 12
  %1720 = icmp eq i32 %1719, 12
  br i1 %1720, label %1793, label %1721

; <label>:1721                                    ; preds = %1710
  %1722 = and i32 %1629, 2097184
  %1723 = icmp eq i32 %1722, 2097184
  %1724 = select i1 %1723, float %1249, float 0.000000e+00
  %1725 = and i32 %1629, 4194336
  %1726 = icmp eq i32 %1725, 4194336
  %1727 = select i1 %1726, float %1249, float 0.000000e+00
  %1728 = and i32 %1629, 8388640
  %1729 = icmp eq i32 %1728, 8388640
  %1730 = select i1 %1729, float %1249, float 0.000000e+00
  %1731 = icmp eq i32 %1719, 0
  br i1 %1731, label %1732, label %1745

; <label>:1732                                    ; preds = %1721
  %1733 = fsub fast float %1550, %1054
  %1734 = fsub fast float %1551, %1055
  %1735 = fmul fast float %1724, %1733
  %1736 = fmul fast float %1724, %1734
  %1737 = fadd fast float %1735, %1054
  %1738 = fadd fast float %1736, %1055
  %1739 = fsub fast float %1552, %1065
  %1740 = fmul fast float %1727, %1739
  %1741 = fadd fast float %1740, %1065
  %1742 = fsub fast float %1549, %1064
  %1743 = fmul fast float %1730, %1742
  %1744 = fadd fast float %1743, %1064
  br label %1793

; <label>:1745                                    ; preds = %1721
  %1746 = icmp eq i32 %1719, 4
  br i1 %1746, label %1747, label %1779

; <label>:1747                                    ; preds = %1745
  %1748 = fmul fast float %1724, %1550
  %1749 = fmul fast float %1724, %1551
  %1750 = fadd fast float %1748, %1054
  %1751 = fadd fast float %1749, %1055
  %1752 = call float @dx.op.binary.f32(i32 36, float %1065, float %1552)  ; FMin(a,b)
  %1753 = fsub fast float %1752, %1065
  %1754 = fmul fast float %1753, %1727
  %1755 = fadd fast float %1754, %1065
  %1756 = fadd fast float %1549, %1064
  %1757 = fmul fast float %1756, 0x3FF337FAE0000000
  %1758 = fmul fast float %1064, %1064
  %1759 = fmul fast float %1549, %1549
  %1760 = fadd fast float %1759, %1758
  %1761 = fmul fast float %1760, 0x3FE5152B00000000
  %1762 = fmul fast float %1064, 0xBFCC1F85E0000000
  %1763 = fmul fast float %1762, %1549
  %1764 = fadd fast float %1763, 0xBFE1363700000000
  %1765 = fadd fast float %1764, %1757
  %1766 = fsub fast float %1765, %1761
  %1767 = fmul fast float %1756, 0x3FBA6F0D00000000
  %1768 = fmul fast float %1760, 0x3FD0432880000000
  %1769 = fmul fast float %1064, 0xBFEF110800000000
  %1770 = fmul fast float %1769, %1549
  %1771 = fadd fast float %1770, 1.000000e+00
  %1772 = fsub fast float %1771, %1767
  %1773 = fadd fast float %1772, %1768
  %1774 = fdiv fast float %1766, %1773
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1776 = fsub fast float %1775, %1064
  %1777 = fmul fast float %1776, %1730
  %1778 = fadd fast float %1777, %1064
  br label %1793

; <label>:1779                                    ; preds = %1745
  %1780 = icmp eq i32 %1719, 8
  br i1 %1780, label %1781, label %1793

; <label>:1781                                    ; preds = %1779
  %1782 = fmul fast float %1724, %1550
  %1783 = fmul fast float %1724, %1551
  %1784 = fadd fast float %1782, %1054
  %1785 = fadd fast float %1783, %1055
  %1786 = call float @dx.op.binary.f32(i32 36, float %1065, float %1552)  ; FMin(a,b)
  %1787 = fsub fast float %1786, %1065
  %1788 = fmul fast float %1787, %1727
  %1789 = fadd fast float %1788, %1065
  %1790 = fsub fast float %1549, %1064
  %1791 = fmul fast float %1730, %1790
  %1792 = fadd fast float %1791, %1064
  br label %1793

; <label>:1793                                    ; preds = %1781, %1779, %1747, %1732, %1710, %1248, %1067, %1053
  %1794 = phi float [ %1054, %1710 ], [ %1054, %1248 ], [ %1054, %1053 ], [ %1784, %1781 ], [ %1054, %1779 ], [ %1750, %1747 ], [ %1737, %1732 ], [ %1054, %1067 ]
  %1795 = phi float [ %1055, %1710 ], [ %1055, %1248 ], [ %1055, %1053 ], [ %1785, %1781 ], [ %1055, %1779 ], [ %1751, %1747 ], [ %1738, %1732 ], [ %1055, %1067 ]
  %1796 = phi float [ %1711, %1710 ], [ %1056, %1248 ], [ %1056, %1053 ], [ %1711, %1781 ], [ %1711, %1779 ], [ %1711, %1747 ], [ %1711, %1732 ], [ %1056, %1067 ]
  %1797 = phi float [ %1712, %1710 ], [ %1057, %1248 ], [ %1057, %1053 ], [ %1712, %1781 ], [ %1712, %1779 ], [ %1712, %1747 ], [ %1712, %1732 ], [ %1057, %1067 ]
  %1798 = phi float [ %1713, %1710 ], [ %1058, %1248 ], [ %1058, %1053 ], [ %1713, %1781 ], [ %1713, %1779 ], [ %1713, %1747 ], [ %1713, %1732 ], [ %1058, %1067 ]
  %1799 = phi float [ %1714, %1710 ], [ %1059, %1248 ], [ %1059, %1053 ], [ %1714, %1781 ], [ %1714, %1779 ], [ %1714, %1747 ], [ %1714, %1732 ], [ %1059, %1067 ]
  %1800 = phi float [ %1715, %1710 ], [ %1060, %1248 ], [ %1060, %1053 ], [ %1715, %1781 ], [ %1715, %1779 ], [ %1715, %1747 ], [ %1715, %1732 ], [ %1060, %1067 ]
  %1801 = phi float [ %1716, %1710 ], [ %1061, %1248 ], [ %1061, %1053 ], [ %1716, %1781 ], [ %1716, %1779 ], [ %1716, %1747 ], [ %1716, %1732 ], [ %1061, %1067 ]
  %1802 = phi float [ %1717, %1710 ], [ %1062, %1248 ], [ %1062, %1053 ], [ %1717, %1781 ], [ %1717, %1779 ], [ %1717, %1747 ], [ %1717, %1732 ], [ %1062, %1067 ]
  %1803 = phi float [ %1064, %1710 ], [ %1064, %1248 ], [ %1064, %1053 ], [ %1792, %1781 ], [ %1064, %1779 ], [ %1778, %1747 ], [ %1744, %1732 ], [ %1064, %1067 ]
  %1804 = phi float [ %1065, %1710 ], [ %1065, %1248 ], [ %1065, %1053 ], [ %1789, %1781 ], [ %1065, %1779 ], [ %1755, %1747 ], [ %1741, %1732 ], [ %1065, %1067 ]
  %1805 = phi float [ %1718, %1710 ], [ %1066, %1248 ], [ %1066, %1053 ], [ %1718, %1781 ], [ %1718, %1779 ], [ %1718, %1747 ], [ %1718, %1732 ], [ %1066, %1067 ]
  br i1 %454, label %2532, label %1806

; <label>:1806                                    ; preds = %1793
  %1807 = icmp ult i32 %510, 3
  %1808 = add i32 %57, 56
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %57, 60
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = or i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2532, label %1816

; <label>:1816                                    ; preds = %1806
  %1817 = and i32 %1810, 262144
  %1818 = icmp ne i32 %1817, 0
  %1819 = select i1 %1818, float %63, float 1.000000e+00
  %1820 = select i1 %1818, float %64, float 0.000000e+00
  %1821 = select i1 %1818, float %65, float 0.000000e+00
  %1822 = select i1 %1818, float %66, float 1.000000e+00
  %1823 = select i1 %1818, float %67, float %95
  %1824 = select i1 %1818, float %68, float %96
  %1825 = add i32 %57, 316
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = lshr i32 %1827, 16
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = fmul fast float %1829, 0x3F50624DE0000000
  %1831 = add i32 %57, 120
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = and i32 %1834, 255
  %1836 = lshr i32 %1833, 24
  %1837 = add i32 %57, 324
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 65535
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %1839, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = add i32 %57, 64
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 22
  %1848 = shl nuw nsw i32 %1847, 5
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = shl i32 %1846, 4
  %1851 = and i32 %1850, 32752
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = lshr i32 %1846, 7
  %1854 = and i32 %1853, 32752
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1858 = fmul fast float %1857, 1.000000e+03
  %1859 = fmul fast float %404, %1858
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = fadd fast float %1860, %394
  %1862 = fmul fast float %405, %1858
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fadd fast float %1863, %396
  %1865 = fmul fast float %1830, %1858
  %1866 = call float @dx.op.unary.f32(i32 22, float %1865)  ; Frc(value)
  %1867 = fmul fast float %1866, 0x401921FB60000000
  %1868 = fadd fast float %1867, %1849
  %1869 = call float @dx.op.unary.f32(i32 13, float %1868)  ; Sin(value)
  %1870 = call float @dx.op.unary.f32(i32 12, float %1868)  ; Cos(value)
  %1871 = fsub fast float -0.000000e+00, %1869
  %1872 = fadd fast float %1823, -5.000000e-01
  %1873 = fadd fast float %1824, -5.000000e-01
  %1874 = fmul fast float %1841, %1872
  %1875 = fmul fast float %1843, %1873
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fmul fast float %1852, %1876
  %1879 = fmul fast float %1855, %1877
  %1880 = fmul fast float %1870, %1878
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1871, float %1879, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1869, %1878
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1879, float %1882)  ; FMad(a,b,c)
  %1884 = fadd fast float %1861, %1881
  %1885 = fadd fast float %1864, %1883
  %1886 = icmp ugt i32 %1835, 1
  %1887 = icmp ugt i32 %1833, 33554431
  %1888 = or i1 %1887, %1886
  br i1 %1888, label %1889, label %1914

; <label>:1889                                    ; preds = %1816
  %1890 = add i32 %57, 260
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = fmul fast float %1857, %1894
  %1896 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1897 = mul nuw nsw i32 %1835, %1836
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1896, %1898
  %1900 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1901 = fptoui float %1900 to i32
  %1902 = urem i32 %1901, %1835
  %1903 = udiv i32 %1901, %1836
  %1904 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1905 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1906 = uitofp i32 %1902 to float
  %1907 = uitofp i32 %1903 to float
  %1908 = fadd fast float %1904, %1906
  %1909 = fadd fast float %1905, %1907
  %1910 = uitofp i32 %1835 to float
  %1911 = uitofp i32 %1836 to float
  %1912 = fdiv fast float %1908, %1910
  %1913 = fdiv fast float %1909, %1911
  br label %1914

; <label>:1914                                    ; preds = %1889, %1816
  %1915 = phi float [ %1912, %1889 ], [ %1884, %1816 ]
  %1916 = phi float [ %1913, %1889 ], [ %1885, %1816 ]
  %1917 = and i32 %1810, 256
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %1965, label %1919

; <label>:1919                                    ; preds = %1914
  %1920 = add i32 %57, 528
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %1922, 0
  %1924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1924, %dx.types.Handle %110, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = add i32 %57, 132
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = shl i32 %1929, 4
  %1931 = and i32 %1930, 32752
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = lshr i32 %1929, 7
  %1934 = and i32 %1933, 32752
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = fsub fast float 1.000000e+00, %506
  %1937 = call float @dx.op.binary.f32(i32 35, float %1936, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1938 = bitcast float %506 to i32
  %1939 = sitofp i32 %1938 to float
  %1940 = fadd fast float %1939, 0xC1CFBF8940000000
  %1941 = fmul fast float %1935, %1940
  %1942 = fadd fast float %1941, 0x41CFBF8940000000
  %1943 = fptosi float %1942 to i32
  %1944 = bitcast i32 %1943 to float
  %1945 = bitcast float %1937 to i32
  %1946 = sitofp i32 %1945 to float
  %1947 = fadd fast float %1946, 0xC1CFBF8940000000
  %1948 = fmul fast float %1947, %1935
  %1949 = fadd fast float %1948, 0x41CFBF8940000000
  %1950 = fptosi float %1949 to i32
  %1951 = bitcast i32 %1950 to float
  %1952 = fmul fast float %1944, %1932
  %1953 = fmul fast float %1951, %1932
  %1954 = fsub fast float %1937, %1952
  %1955 = fadd fast float %1953, %1937
  %1956 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1957 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1958 = fsub fast float %1926, %1956
  %1959 = fsub fast float %1957, %1956
  %1960 = bitcast float %1959 to i32
  %1961 = sub nsw i32 2129859010, %1960
  %1962 = bitcast i32 %1961 to float
  %1963 = fmul fast float %1962, %1958
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  br label %1965

; <label>:1965                                    ; preds = %1919, %1914
  %1966 = phi float [ %1964, %1919 ], [ %506, %1914 ]
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 128
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1987, label %1971

; <label>:1971                                    ; preds = %1965
  %1972 = add i32 %57, 512
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = add i32 %1974, 0
  %1976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1976, %dx.types.Handle %110, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = and i32 %1980, 524288
  %1982 = icmp ne i32 %1981, 0
  %1983 = fcmp fast ogt float %1978, 0x3FE0101020000000
  %1984 = select i1 %1983, float 1.000000e+00, float 0.000000e+00
  %1985 = select i1 %1982, float %1984, float %1978
  %1986 = fmul fast float %1985, %1966
  br label %1987

; <label>:1987                                    ; preds = %1971, %1965
  %1988 = phi float [ %1986, %1971 ], [ %1966, %1965 ]
  %1989 = fcmp fast ult float %1988, 0x3F70101020000000
  br i1 %1989, label %2532, label %1990

; <label>:1990                                    ; preds = %1987
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = and i32 %1992, 16
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2193, label %1995

; <label>:1995                                    ; preds = %1990
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = add i32 %57, 464
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = add i32 %2000, 0
  %2002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2002, %dx.types.Handle %109, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.ResRet.f32 %2003, 3
  %2008 = and i32 %1997, 255
  %2009 = uitofp i32 %2008 to float
  %2010 = lshr i32 %1997, 8
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = fmul fast float %2007, %2009
  %2014 = fadd fast float %2013, %2012
  %2015 = fmul fast float %2014, 0x3F70101000000000
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 512
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2028, label %2020

; <label>:2020                                    ; preds = %1995
  %2021 = add i32 %57, 548
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = add i32 %2023, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2025, %dx.types.Handle %110, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  br label %2028

; <label>:2028                                    ; preds = %2020, %1995
  %2029 = phi float [ %2027, %2020 ], [ 1.000000e+00, %1995 ]
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 33554432
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2140, label %2034

; <label>:2034                                    ; preds = %2028
  %2035 = add i32 %57, 256
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 65535
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = lshr i32 %2037, 16
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = add i32 %57, 260
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 65535
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = lshr i32 %2048, 24
  %2050 = uitofp i32 %2049 to float
  %2051 = fmul fast float %2050, 0x3F70101020000000
  %2052 = and i32 %2048, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = lshr i32 %2048, 8
  %2056 = and i32 %2055, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2057, 0x3F70101020000000
  %2059 = lshr i32 %2048, 16
  %2060 = and i32 %2059, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = fmul fast float %2061, 0x3F70101020000000
  %2063 = add i32 %57, 252
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = lshr i32 %2065, 24
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = and i32 %2065, 255
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2070, 0x3F70101020000000
  %2072 = lshr i32 %2065, 8
  %2073 = and i32 %2072, 255
  %2074 = uitofp i32 %2073 to float
  %2075 = fmul fast float %2074, 0x3F70101020000000
  %2076 = lshr i32 %2065, 16
  %2077 = and i32 %2076, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = fmul fast float %2078, 0x3F70101020000000
  %2080 = bitcast float %2004 to i32
  %2081 = ashr i32 %2080, 1
  %2082 = sub nsw i32 1597463174, %2081
  %2083 = bitcast i32 %2082 to float
  %2084 = fmul fast float %2004, 5.000000e-01
  %2085 = fmul fast float %2083, %2083
  %2086 = fmul fast float %2085, %2084
  %2087 = fsub fast float 1.500000e+00, %2086
  %2088 = fmul fast float %2083, %2004
  %2089 = fmul fast float %2088, %2087
  %2090 = bitcast float %2005 to i32
  %2091 = ashr i32 %2090, 1
  %2092 = sub nsw i32 1597463174, %2091
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2005, 5.000000e-01
  %2095 = fmul fast float %2093, %2093
  %2096 = fmul fast float %2095, %2094
  %2097 = fsub fast float 1.500000e+00, %2096
  %2098 = fmul fast float %2093, %2005
  %2099 = fmul fast float %2098, %2097
  %2100 = bitcast float %2006 to i32
  %2101 = ashr i32 %2100, 1
  %2102 = sub nsw i32 1597463174, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2006, 5.000000e-01
  %2105 = fmul fast float %2103, %2103
  %2106 = fmul fast float %2105, %2104
  %2107 = fsub fast float 1.500000e+00, %2106
  %2108 = fmul fast float %2103, %2006
  %2109 = fmul fast float %2108, %2107
  %2110 = fsub fast float %2089, %2071
  %2111 = fsub fast float %2099, %2075
  %2112 = fsub fast float %2109, %2079
  %2113 = fmul fast float %2110, %2039
  %2114 = fmul fast float %2111, %2041
  %2115 = fmul fast float %2112, %2046
  %2116 = fadd fast float %2113, %2054
  %2117 = fadd fast float %2114, %2058
  %2118 = fadd fast float %2115, %2062
  %2119 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2122 = fmul fast float %2119, %2119
  %2123 = fmul fast float %2120, %2120
  %2124 = fmul fast float %2121, %2121
  %2125 = fsub fast float %2122, %2004
  %2126 = fsub fast float %2123, %2005
  %2127 = fsub fast float %2124, %2006
  %2128 = fmul fast float %2125, %2029
  %2129 = fmul fast float %2126, %2029
  %2130 = fmul fast float %2127, %2029
  %2131 = fadd fast float %2128, %2004
  %2132 = fadd fast float %2129, %2005
  %2133 = fadd fast float %2130, %2006
  %2134 = fadd fast float %2051, %2015
  %2135 = fsub fast float %2134, %2068
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fsub fast float %2136, %2015
  %2138 = fmul fast float %2137, %2029
  %2139 = fadd fast float %2138, %2015
  br label %2193

; <label>:2140                                    ; preds = %2028
  %2141 = and i32 %2031, 134217728
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2177, label %2143

; <label>:2143                                    ; preds = %2140
  %2144 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2145 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %2146 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %2147 = fadd fast float %2144, -5.000000e-01
  %2148 = fadd fast float %2145, -5.000000e-01
  %2149 = fadd fast float %2146, -5.000000e-01
  %2150 = fmul fast float %2147, %2029
  %2151 = fmul fast float %2148, %2029
  %2152 = fmul fast float %2149, %2029
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fadd fast float %2152, 5.000000e-01
  %2156 = call float @dx.op.unary.f32(i32 24, float %2004)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %2005)  ; Sqrt(value)
  %2158 = call float @dx.op.unary.f32(i32 24, float %2006)  ; Sqrt(value)
  %2159 = fmul fast float %2153, 2.000000e+00
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = fmul fast float %2160, %2156
  %2162 = fadd fast float %2161, %2159
  %2163 = fmul fast float %2162, %2156
  %2164 = fmul fast float %2154, 2.000000e+00
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %2165, %2157
  %2167 = fadd fast float %2166, %2164
  %2168 = fmul fast float %2167, %2157
  %2169 = fmul fast float %2155, 2.000000e+00
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2158
  %2172 = fadd fast float %2171, %2169
  %2173 = fmul fast float %2172, %2158
  %2174 = fmul fast float %2163, %2163
  %2175 = fmul fast float %2168, %2168
  %2176 = fmul fast float %2173, %2173
  br label %2193

; <label>:2177                                    ; preds = %2140
  %2178 = fmul fast float %381, %381
  %2179 = fmul fast float %385, %385
  %2180 = fmul fast float %389, %389
  %2181 = fadd fast float %2178, -1.000000e+00
  %2182 = fadd fast float %2179, -1.000000e+00
  %2183 = fadd fast float %2180, -1.000000e+00
  %2184 = fmul fast float %2029, %2181
  %2185 = fmul fast float %2029, %2182
  %2186 = fmul fast float %2029, %2183
  %2187 = fadd fast float %2184, 1.000000e+00
  %2188 = fadd fast float %2185, 1.000000e+00
  %2189 = fadd fast float %2186, 1.000000e+00
  %2190 = fmul fast float %2187, %2004
  %2191 = fmul fast float %2188, %2005
  %2192 = fmul fast float %2189, %2006
  br label %2193

; <label>:2193                                    ; preds = %2177, %2143, %2034, %1990
  %2194 = phi float [ %2139, %2034 ], [ %2015, %2143 ], [ %2015, %2177 ], [ 0x3FA23C0BE0000000, %1990 ]
  %2195 = phi float [ %2131, %2034 ], [ %2174, %2143 ], [ %2190, %2177 ], [ 1.000000e+00, %1990 ]
  %2196 = phi float [ %2132, %2034 ], [ %2175, %2143 ], [ %2191, %2177 ], [ 1.000000e+00, %1990 ]
  %2197 = phi float [ %2133, %2034 ], [ %2176, %2143 ], [ %2192, %2177 ], [ 1.000000e+00, %1990 ]
  %2198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.i32 %2198, 1
  %2200 = and i32 %2199, 1
  %2201 = icmp ne i32 %2200, 0
  %2202 = add i32 %57, 356
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 32
  %2206 = icmp ne i32 %2205, 0
  %2207 = and i1 %2201, %2206
  %2208 = select i1 %2207, float 1.000000e+00, float %2195
  %2209 = select i1 %2207, float 0x3FD3333340000000, float %2196
  %2210 = select i1 %2207, float 0x3FD3333340000000, float %2197
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 32
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2287, label %2215

; <label>:2215                                    ; preds = %2193
  %2216 = add i32 %57, 124
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %57, 480
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = add i32 %2221, 0
  %2223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2223, %dx.types.Handle %109, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.ResRet.f32 %2224, 2
  %2228 = extractvalue %dx.types.ResRet.f32 %2224, 3
  %2229 = and i32 %2218, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = lshr i32 %2218, 8
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = lshr i32 %2218, 16
  %2235 = and i32 %2234, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101000000000
  %2238 = fmul fast float %2225, %2230
  %2239 = fadd fast float %2238, %2233
  %2240 = fmul fast float %2239, 0x3F70101000000000
  %2241 = fadd fast float %2226, -5.000000e-01
  %2242 = fadd fast float %2228, -5.000000e-01
  %2243 = fmul fast float %2241, %2237
  %2244 = fmul fast float %2242, %2237
  %2245 = fadd fast float %2243, 5.000000e-01
  %2246 = fadd fast float %2244, 5.000000e-01
  %2247 = fmul fast float %2245, 2.000000e+00
  %2248 = fadd fast float %2247, -1.000000e+00
  %2249 = fmul fast float %2246, 2.000000e+00
  %2250 = fadd fast float %2249, -1.000000e+00
  %2251 = fadd fast float %2248, %2250
  %2252 = fmul fast float %2251, 5.000000e-01
  %2253 = fsub fast float %2248, %2250
  %2254 = fmul fast float %2253, 5.000000e-01
  %2255 = call float @dx.op.unary.f32(i32 6, float %2252)  ; FAbs(value)
  %2256 = fsub fast float 1.000000e+00, %2255
  %2257 = call float @dx.op.unary.f32(i32 6, float %2254)  ; FAbs(value)
  %2258 = fsub fast float %2256, %2257
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2252, float %2254, float %2258, float %2252, float %2254, float %2258)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = call float @dx.op.unary.f32(i32 25, float %2259)  ; Rsqrt(value)
  %2261 = fmul fast float %2252, %2260
  %2262 = fmul fast float %2254, %2260
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 67108864
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2283, label %2267

; <label>:2267                                    ; preds = %2215
  %2268 = add i32 %57, 312
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 65535
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 65535
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = lshr i32 %2270, 16
  %2278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2277)  ; LegacyF16ToF32(value)
  %2279 = fsub fast float %2240, %2278
  %2280 = fmul fast float %2279, %2272
  %2281 = fadd fast float %2280, %2276
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  br label %2283

; <label>:2283                                    ; preds = %2267, %2215
  %2284 = phi float [ %2282, %2267 ], [ %2240, %2215 ]
  %2285 = call float @dx.op.dot2.f32(i32 54, float %2261, float %2262, float %1819, float %1820)  ; Dot2(ax,ay,bx,by)
  %2286 = call float @dx.op.dot2.f32(i32 54, float %2261, float %2262, float %1821, float %1822)  ; Dot2(ax,ay,bx,by)
  br label %2287

; <label>:2287                                    ; preds = %2283, %2193
  %2288 = phi float [ %2284, %2283 ], [ 0x3FD6666660000000, %2193 ]
  %2289 = phi float [ %2285, %2283 ], [ 0.000000e+00, %2193 ]
  %2290 = phi float [ %2286, %2283 ], [ 0.000000e+00, %2193 ]
  %2291 = phi float [ %2227, %2283 ], [ 1.000000e+00, %2193 ]
  %2292 = add i32 %57, 192
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = lshr i32 %2294, 22
  %2296 = shl nuw nsw i32 %2295, 5
  %2297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2296)  ; LegacyF16ToF32(value)
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 64
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2335, label %2302

; <label>:2302                                    ; preds = %2287
  %2303 = add i32 %57, 496
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %2305, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 131072
  %2311 = icmp eq i32 %2310, 0
  %2312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2307, %dx.types.Handle %109, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.ResRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.ResRet.f32 %2312, 2
  %2316 = fmul fast float %2313, %369
  %2317 = fmul fast float %2314, %372
  %2318 = fmul fast float %2315, %375
  br i1 %2311, label %2325, label %2319

; <label>:2319                                    ; preds = %2302
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = fmul fast float %2321, %2316
  %2323 = fmul fast float %2321, %2317
  %2324 = fmul fast float %2321, %2318
  br label %2325

; <label>:2325                                    ; preds = %2319, %2302
  %2326 = phi float [ %2322, %2319 ], [ %2316, %2302 ]
  %2327 = phi float [ %2323, %2319 ], [ %2317, %2302 ]
  %2328 = phi float [ %2324, %2319 ], [ %2318, %2302 ]
  %2329 = fmul fast float %2326, %2297
  %2330 = select i1 %268, float %2329, float %2326
  %2331 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2327, float %2328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = select i1 %268, float 0.000000e+00, float %2326
  %2333 = select i1 %268, float %2331, float %2327
  %2334 = select i1 %268, float 0.000000e+00, float %2328
  br label %2335

; <label>:2335                                    ; preds = %2325, %2287
  %2336 = phi float [ %2332, %2325 ], [ 0.000000e+00, %2287 ]
  %2337 = phi float [ %2333, %2325 ], [ 0.000000e+00, %2287 ]
  %2338 = phi float [ %2334, %2325 ], [ 0.000000e+00, %2287 ]
  %2339 = add i32 %57, 128
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = lshr i32 %2341, 8
  %2345 = and i32 %2344, 255
  %2346 = uitofp i32 %2345 to float
  %2347 = call float @dx.op.dot3.f32(i32 55, float %2208, float %2209, float %2210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2348 = fmul fast float %2346, %2347
  %2349 = fadd fast float %2348, %2343
  %2350 = fmul fast float %2349, 0x3F70101020000000
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  br i1 %1807, label %2352, label %2360

; <label>:2352                                    ; preds = %2335
  %2353 = fsub fast float 1.000000e+00, %1988
  %2354 = fmul fast float %2353, %1796
  %2355 = fmul fast float %2353, %1797
  %2356 = fmul fast float %2353, %1798
  %2357 = fmul fast float %2353, %1799
  %2358 = fmul fast float %2353, %1800
  %2359 = fmul fast float %2353, %1801
  br label %2360

; <label>:2360                                    ; preds = %2352, %2335
  %2361 = phi float [ %2354, %2352 ], [ %1796, %2335 ]
  %2362 = phi float [ %2355, %2352 ], [ %1797, %2335 ]
  %2363 = phi float [ %2356, %2352 ], [ %1798, %2335 ]
  %2364 = phi float [ %2357, %2352 ], [ %1799, %2335 ]
  %2365 = phi float [ %2358, %2352 ], [ %1800, %2335 ]
  %2366 = phi float [ %2359, %2352 ], [ %1801, %2335 ]
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 3
  %2370 = icmp eq i32 %2369, 3
  br i1 %2370, label %2449, label %2371

; <label>:2371                                    ; preds = %2360
  %2372 = and i32 %2368, 16
  %2373 = icmp ne i32 %2372, 0
  %2374 = select i1 %2373, float %1988, float 0.000000e+00
  %2375 = icmp eq i32 %2369, 0
  br i1 %2375, label %2376, label %2404

; <label>:2376                                    ; preds = %2371
  %2377 = and i32 %2368, 64
  %2378 = icmp ne i32 %2377, 0
  %2379 = select i1 %2378, float %1988, float 0.000000e+00
  %2380 = fsub fast float %2208, %2361
  %2381 = fsub fast float %2209, %2362
  %2382 = fsub fast float %2210, %2363
  %2383 = fmul fast float %2374, %2380
  %2384 = fmul fast float %2374, %2381
  %2385 = fmul fast float %2374, %2382
  %2386 = fadd fast float %2383, %2361
  %2387 = fadd fast float %2384, %2362
  %2388 = fadd fast float %2385, %2363
  %2389 = fsub fast float %2194, %1802
  %2390 = fmul fast float %2374, %2389
  %2391 = fadd fast float %2390, %1802
  %2392 = fsub fast float %2336, %2364
  %2393 = fsub fast float %2337, %2365
  %2394 = fsub fast float %2338, %2366
  %2395 = fmul fast float %2379, %2392
  %2396 = fmul fast float %2379, %2393
  %2397 = fmul fast float %2379, %2394
  %2398 = fadd fast float %2395, %2364
  %2399 = fadd fast float %2396, %2365
  %2400 = fadd fast float %2397, %2366
  %2401 = fsub fast float %2351, %1805
  %2402 = fmul fast float %2374, %2401
  %2403 = fadd fast float %2402, %1805
  br label %2449

; <label>:2404                                    ; preds = %2371
  %2405 = icmp eq i32 %2369, 1
  br i1 %2405, label %2406, label %2419

; <label>:2406                                    ; preds = %2404
  %2407 = fadd fast float %2208, -1.000000e+00
  %2408 = fadd fast float %2209, -1.000000e+00
  %2409 = fadd fast float %2210, -1.000000e+00
  %2410 = fmul fast float %2374, %2407
  %2411 = fmul fast float %2374, %2408
  %2412 = fmul fast float %2374, %2409
  %2413 = fadd fast float %2410, 1.000000e+00
  %2414 = fadd fast float %2411, 1.000000e+00
  %2415 = fadd fast float %2412, 1.000000e+00
  %2416 = fmul fast float %2413, %2361
  %2417 = fmul fast float %2414, %2362
  %2418 = fmul fast float %2415, %2363
  br label %2449

; <label>:2419                                    ; preds = %2404
  %2420 = icmp eq i32 %2369, 2
  br i1 %2420, label %2421, label %2449

; <label>:2421                                    ; preds = %2419
  %2422 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2423 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2424 = call float @dx.op.unary.f32(i32 24, float %2210)  ; Sqrt(value)
  %2425 = fadd fast float %2422, -5.000000e-01
  %2426 = fadd fast float %2423, -5.000000e-01
  %2427 = fadd fast float %2424, -5.000000e-01
  %2428 = fmul fast float %2425, %2374
  %2429 = fmul fast float %2426, %2374
  %2430 = fmul fast float %2427, %2374
  %2431 = fadd fast float %2428, 5.000000e-01
  %2432 = fadd fast float %2429, 5.000000e-01
  %2433 = fadd fast float %2430, 5.000000e-01
  %2434 = fmul fast float %2431, 2.000000e+00
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = fmul fast float %2435, %2361
  %2437 = fadd fast float %2436, %2434
  %2438 = fmul fast float %2437, %2361
  %2439 = fmul fast float %2432, 2.000000e+00
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2362
  %2442 = fadd fast float %2441, %2439
  %2443 = fmul fast float %2442, %2362
  %2444 = fmul fast float %2433, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2363
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2363
  br label %2449

; <label>:2449                                    ; preds = %2421, %2419, %2406, %2376, %2360
  %2450 = phi float [ %2361, %2360 ], [ %2438, %2421 ], [ %2361, %2419 ], [ %2416, %2406 ], [ %2386, %2376 ]
  %2451 = phi float [ %2362, %2360 ], [ %2443, %2421 ], [ %2362, %2419 ], [ %2417, %2406 ], [ %2387, %2376 ]
  %2452 = phi float [ %2363, %2360 ], [ %2448, %2421 ], [ %2363, %2419 ], [ %2418, %2406 ], [ %2388, %2376 ]
  %2453 = phi float [ %2364, %2360 ], [ %2364, %2421 ], [ %2364, %2419 ], [ %2364, %2406 ], [ %2398, %2376 ]
  %2454 = phi float [ %2365, %2360 ], [ %2365, %2421 ], [ %2365, %2419 ], [ %2365, %2406 ], [ %2399, %2376 ]
  %2455 = phi float [ %2366, %2360 ], [ %2366, %2421 ], [ %2366, %2419 ], [ %2366, %2406 ], [ %2400, %2376 ]
  %2456 = phi float [ %1802, %2360 ], [ %1802, %2421 ], [ %1802, %2419 ], [ %1802, %2406 ], [ %2391, %2376 ]
  %2457 = phi float [ %1805, %2360 ], [ %1805, %2421 ], [ %1805, %2419 ], [ %1805, %2406 ], [ %2403, %2376 ]
  %2458 = and i32 %2368, 12
  %2459 = icmp eq i32 %2458, 12
  br i1 %2459, label %2532, label %2460

; <label>:2460                                    ; preds = %2449
  %2461 = and i32 %2368, 2097184
  %2462 = icmp eq i32 %2461, 2097184
  %2463 = select i1 %2462, float %1988, float 0.000000e+00
  %2464 = and i32 %2368, 4194336
  %2465 = icmp eq i32 %2464, 4194336
  %2466 = select i1 %2465, float %1988, float 0.000000e+00
  %2467 = and i32 %2368, 8388640
  %2468 = icmp eq i32 %2467, 8388640
  %2469 = select i1 %2468, float %1988, float 0.000000e+00
  %2470 = icmp eq i32 %2458, 0
  br i1 %2470, label %2471, label %2484

; <label>:2471                                    ; preds = %2460
  %2472 = fsub fast float %2289, %1794
  %2473 = fsub fast float %2290, %1795
  %2474 = fmul fast float %2463, %2472
  %2475 = fmul fast float %2463, %2473
  %2476 = fadd fast float %2474, %1794
  %2477 = fadd fast float %2475, %1795
  %2478 = fsub fast float %2291, %1804
  %2479 = fmul fast float %2466, %2478
  %2480 = fadd fast float %2479, %1804
  %2481 = fsub fast float %2288, %1803
  %2482 = fmul fast float %2469, %2481
  %2483 = fadd fast float %2482, %1803
  br label %2532

; <label>:2484                                    ; preds = %2460
  %2485 = icmp eq i32 %2458, 4
  br i1 %2485, label %2486, label %2518

; <label>:2486                                    ; preds = %2484
  %2487 = fmul fast float %2463, %2289
  %2488 = fmul fast float %2463, %2290
  %2489 = fadd fast float %2487, %1794
  %2490 = fadd fast float %2488, %1795
  %2491 = call float @dx.op.binary.f32(i32 36, float %1804, float %2291)  ; FMin(a,b)
  %2492 = fsub fast float %2491, %1804
  %2493 = fmul fast float %2492, %2466
  %2494 = fadd fast float %2493, %1804
  %2495 = fadd fast float %2288, %1803
  %2496 = fmul fast float %2495, 0x3FF337FAE0000000
  %2497 = fmul fast float %1803, %1803
  %2498 = fmul fast float %2288, %2288
  %2499 = fadd fast float %2498, %2497
  %2500 = fmul fast float %2499, 0x3FE5152B00000000
  %2501 = fmul fast float %1803, 0xBFCC1F85E0000000
  %2502 = fmul fast float %2501, %2288
  %2503 = fadd fast float %2502, 0xBFE1363700000000
  %2504 = fadd fast float %2503, %2496
  %2505 = fsub fast float %2504, %2500
  %2506 = fmul fast float %2495, 0x3FBA6F0D00000000
  %2507 = fmul fast float %2499, 0x3FD0432880000000
  %2508 = fmul fast float %1803, 0xBFEF110800000000
  %2509 = fmul fast float %2508, %2288
  %2510 = fadd fast float %2509, 1.000000e+00
  %2511 = fsub fast float %2510, %2506
  %2512 = fadd fast float %2511, %2507
  %2513 = fdiv fast float %2505, %2512
  %2514 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2515 = fsub fast float %2514, %1803
  %2516 = fmul fast float %2515, %2469
  %2517 = fadd fast float %2516, %1803
  br label %2532

; <label>:2518                                    ; preds = %2484
  %2519 = icmp eq i32 %2458, 8
  br i1 %2519, label %2520, label %2532

; <label>:2520                                    ; preds = %2518
  %2521 = fmul fast float %2463, %2289
  %2522 = fmul fast float %2463, %2290
  %2523 = fadd fast float %2521, %1794
  %2524 = fadd fast float %2522, %1795
  %2525 = call float @dx.op.binary.f32(i32 36, float %1804, float %2291)  ; FMin(a,b)
  %2526 = fsub fast float %2525, %1804
  %2527 = fmul fast float %2526, %2466
  %2528 = fadd fast float %2527, %1804
  %2529 = fsub fast float %2288, %1803
  %2530 = fmul fast float %2469, %2529
  %2531 = fadd fast float %2530, %1803
  br label %2532

; <label>:2532                                    ; preds = %2520, %2518, %2486, %2471, %2449, %1987, %1806, %1793
  %2533 = phi float [ %1794, %2449 ], [ %1794, %1987 ], [ %1794, %1793 ], [ %2523, %2520 ], [ %1794, %2518 ], [ %2489, %2486 ], [ %2476, %2471 ], [ %1794, %1806 ]
  %2534 = phi float [ %1795, %2449 ], [ %1795, %1987 ], [ %1795, %1793 ], [ %2524, %2520 ], [ %1795, %2518 ], [ %2490, %2486 ], [ %2477, %2471 ], [ %1795, %1806 ]
  %2535 = phi float [ %2450, %2449 ], [ %1796, %1987 ], [ %1796, %1793 ], [ %2450, %2520 ], [ %2450, %2518 ], [ %2450, %2486 ], [ %2450, %2471 ], [ %1796, %1806 ]
  %2536 = phi float [ %2451, %2449 ], [ %1797, %1987 ], [ %1797, %1793 ], [ %2451, %2520 ], [ %2451, %2518 ], [ %2451, %2486 ], [ %2451, %2471 ], [ %1797, %1806 ]
  %2537 = phi float [ %2452, %2449 ], [ %1798, %1987 ], [ %1798, %1793 ], [ %2452, %2520 ], [ %2452, %2518 ], [ %2452, %2486 ], [ %2452, %2471 ], [ %1798, %1806 ]
  %2538 = phi float [ %2453, %2449 ], [ %1799, %1987 ], [ %1799, %1793 ], [ %2453, %2520 ], [ %2453, %2518 ], [ %2453, %2486 ], [ %2453, %2471 ], [ %1799, %1806 ]
  %2539 = phi float [ %2454, %2449 ], [ %1800, %1987 ], [ %1800, %1793 ], [ %2454, %2520 ], [ %2454, %2518 ], [ %2454, %2486 ], [ %2454, %2471 ], [ %1800, %1806 ]
  %2540 = phi float [ %2455, %2449 ], [ %1801, %1987 ], [ %1801, %1793 ], [ %2455, %2520 ], [ %2455, %2518 ], [ %2455, %2486 ], [ %2455, %2471 ], [ %1801, %1806 ]
  %2541 = phi float [ %2456, %2449 ], [ %1802, %1987 ], [ %1802, %1793 ], [ %2456, %2520 ], [ %2456, %2518 ], [ %2456, %2486 ], [ %2456, %2471 ], [ %1802, %1806 ]
  %2542 = phi float [ %1803, %2449 ], [ %1803, %1987 ], [ %1803, %1793 ], [ %2531, %2520 ], [ %1803, %2518 ], [ %2517, %2486 ], [ %2483, %2471 ], [ %1803, %1806 ]
  %2543 = phi float [ %1804, %2449 ], [ %1804, %1987 ], [ %1804, %1793 ], [ %2528, %2520 ], [ %1804, %2518 ], [ %2494, %2486 ], [ %2480, %2471 ], [ %1804, %1806 ]
  %2544 = phi float [ %2457, %2449 ], [ %1805, %1987 ], [ %1805, %1793 ], [ %2457, %2520 ], [ %2457, %2518 ], [ %2457, %2486 ], [ %2457, %2471 ], [ %1805, %1806 ]
  br i1 %456, label %3271, label %2545

; <label>:2545                                    ; preds = %2532
  %2546 = icmp ult i32 %510, 4
  %2547 = add i32 %57, 72
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = add i32 %57, 76
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = or i32 %2552, %2549
  %2554 = icmp eq i32 %2553, 0
  br i1 %2554, label %3271, label %2555

; <label>:2555                                    ; preds = %2545
  %2556 = and i32 %2549, 262144
  %2557 = icmp ne i32 %2556, 0
  %2558 = select i1 %2557, float %63, float 1.000000e+00
  %2559 = select i1 %2557, float %64, float 0.000000e+00
  %2560 = select i1 %2557, float %65, float 0.000000e+00
  %2561 = select i1 %2557, float %66, float 1.000000e+00
  %2562 = select i1 %2557, float %67, float %95
  %2563 = select i1 %2557, float %68, float %96
  %2564 = add i32 %57, 332
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 16
  %2568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2567)  ; LegacyF16ToF32(value)
  %2569 = fmul fast float %2568, 0x3F50624DE0000000
  %2570 = add i32 %57, 136
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = lshr i32 %2572, 16
  %2574 = and i32 %2573, 255
  %2575 = lshr i32 %2572, 24
  %2576 = add i32 %57, 340
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 65535
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = lshr i32 %2578, 16
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = add i32 %57, 80
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = lshr i32 %2585, 22
  %2587 = shl nuw nsw i32 %2586, 5
  %2588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2587)  ; LegacyF16ToF32(value)
  %2589 = shl i32 %2585, 4
  %2590 = and i32 %2589, 32752
  %2591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2590)  ; LegacyF16ToF32(value)
  %2592 = lshr i32 %2585, 7
  %2593 = and i32 %2592, 32752
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2597 = fmul fast float %2596, 1.000000e+03
  %2598 = fmul fast float %446, %2597
  %2599 = call float @dx.op.unary.f32(i32 22, float %2598)  ; Frc(value)
  %2600 = fadd fast float %2599, %436
  %2601 = fmul fast float %447, %2597
  %2602 = call float @dx.op.unary.f32(i32 22, float %2601)  ; Frc(value)
  %2603 = fadd fast float %2602, %438
  %2604 = fmul fast float %2569, %2597
  %2605 = call float @dx.op.unary.f32(i32 22, float %2604)  ; Frc(value)
  %2606 = fmul fast float %2605, 0x401921FB60000000
  %2607 = fadd fast float %2606, %2588
  %2608 = call float @dx.op.unary.f32(i32 13, float %2607)  ; Sin(value)
  %2609 = call float @dx.op.unary.f32(i32 12, float %2607)  ; Cos(value)
  %2610 = fsub fast float -0.000000e+00, %2608
  %2611 = fadd fast float %2562, -5.000000e-01
  %2612 = fadd fast float %2563, -5.000000e-01
  %2613 = fmul fast float %2580, %2611
  %2614 = fmul fast float %2582, %2612
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = fadd fast float %2614, 5.000000e-01
  %2617 = fmul fast float %2591, %2615
  %2618 = fmul fast float %2594, %2616
  %2619 = fmul fast float %2609, %2617
  %2620 = call float @dx.op.tertiary.f32(i32 46, float %2610, float %2618, float %2619)  ; FMad(a,b,c)
  %2621 = fmul fast float %2608, %2617
  %2622 = call float @dx.op.tertiary.f32(i32 46, float %2609, float %2618, float %2621)  ; FMad(a,b,c)
  %2623 = fadd fast float %2600, %2620
  %2624 = fadd fast float %2603, %2622
  %2625 = icmp ugt i32 %2574, 1
  %2626 = icmp ugt i32 %2572, 33554431
  %2627 = or i1 %2626, %2625
  br i1 %2627, label %2628, label %2653

; <label>:2628                                    ; preds = %2555
  %2629 = add i32 %57, 276
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = lshr i32 %2631, 16
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = fmul fast float %2596, %2633
  %2635 = call float @dx.op.unary.f32(i32 22, float %2634)  ; Frc(value)
  %2636 = mul nuw nsw i32 %2574, %2575
  %2637 = uitofp i32 %2636 to float
  %2638 = fmul fast float %2635, %2637
  %2639 = call float @dx.op.unary.f32(i32 27, float %2638)  ; Round_ni(value)
  %2640 = fptoui float %2639 to i32
  %2641 = urem i32 %2640, %2574
  %2642 = udiv i32 %2640, %2575
  %2643 = call float @dx.op.unary.f32(i32 22, float %2623)  ; Frc(value)
  %2644 = call float @dx.op.unary.f32(i32 22, float %2624)  ; Frc(value)
  %2645 = uitofp i32 %2641 to float
  %2646 = uitofp i32 %2642 to float
  %2647 = fadd fast float %2643, %2645
  %2648 = fadd fast float %2644, %2646
  %2649 = uitofp i32 %2574 to float
  %2650 = uitofp i32 %2575 to float
  %2651 = fdiv fast float %2647, %2649
  %2652 = fdiv fast float %2648, %2650
  br label %2653

; <label>:2653                                    ; preds = %2628, %2555
  %2654 = phi float [ %2651, %2628 ], [ %2623, %2555 ]
  %2655 = phi float [ %2652, %2628 ], [ %2624, %2555 ]
  %2656 = and i32 %2549, 256
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2704, label %2658

; <label>:2658                                    ; preds = %2653
  %2659 = add i32 %57, 532
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = add i32 %2661, 0
  %2663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2663, %dx.types.Handle %110, float %2654, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = add i32 %57, 148
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = shl i32 %2668, 4
  %2670 = and i32 %2669, 32752
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = lshr i32 %2668, 7
  %2673 = and i32 %2672, 32752
  %2674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2673)  ; LegacyF16ToF32(value)
  %2675 = fsub fast float 1.000000e+00, %505
  %2676 = call float @dx.op.binary.f32(i32 35, float %2675, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2677 = bitcast float %505 to i32
  %2678 = sitofp i32 %2677 to float
  %2679 = fadd fast float %2678, 0xC1CFBF8940000000
  %2680 = fmul fast float %2674, %2679
  %2681 = fadd fast float %2680, 0x41CFBF8940000000
  %2682 = fptosi float %2681 to i32
  %2683 = bitcast i32 %2682 to float
  %2684 = bitcast float %2676 to i32
  %2685 = sitofp i32 %2684 to float
  %2686 = fadd fast float %2685, 0xC1CFBF8940000000
  %2687 = fmul fast float %2686, %2674
  %2688 = fadd fast float %2687, 0x41CFBF8940000000
  %2689 = fptosi float %2688 to i32
  %2690 = bitcast i32 %2689 to float
  %2691 = fmul fast float %2683, %2671
  %2692 = fmul fast float %2690, %2671
  %2693 = fsub fast float %2676, %2691
  %2694 = fadd fast float %2692, %2676
  %2695 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2696 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2697 = fsub fast float %2665, %2695
  %2698 = fsub fast float %2696, %2695
  %2699 = bitcast float %2698 to i32
  %2700 = sub nsw i32 2129859010, %2699
  %2701 = bitcast i32 %2700 to float
  %2702 = fmul fast float %2701, %2697
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  br label %2704

; <label>:2704                                    ; preds = %2658, %2653
  %2705 = phi float [ %2703, %2658 ], [ %505, %2653 ]
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %2707, 128
  %2709 = icmp eq i32 %2708, 0
  br i1 %2709, label %2726, label %2710

; <label>:2710                                    ; preds = %2704
  %2711 = add i32 %57, 516
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = add i32 %2713, 0
  %2715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2715, %dx.types.Handle %110, float %2654, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = and i32 %2719, 524288
  %2721 = icmp ne i32 %2720, 0
  %2722 = fcmp fast ogt float %2717, 0x3FE0101020000000
  %2723 = select i1 %2722, float 1.000000e+00, float 0.000000e+00
  %2724 = select i1 %2721, float %2723, float %2717
  %2725 = fmul fast float %2724, %2705
  br label %2726

; <label>:2726                                    ; preds = %2710, %2704
  %2727 = phi float [ %2725, %2710 ], [ %2705, %2704 ]
  %2728 = fcmp fast ult float %2727, 0x3F70101020000000
  br i1 %2728, label %3271, label %2729

; <label>:2729                                    ; preds = %2726
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 16
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %2932, label %2734

; <label>:2734                                    ; preds = %2729
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = add i32 %57, 468
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = add i32 %2739, 0
  %2741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2741, %dx.types.Handle %109, float %2654, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.ResRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.ResRet.f32 %2742, 2
  %2746 = extractvalue %dx.types.ResRet.f32 %2742, 3
  %2747 = and i32 %2736, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = lshr i32 %2736, 8
  %2750 = and i32 %2749, 255
  %2751 = uitofp i32 %2750 to float
  %2752 = fmul fast float %2746, %2748
  %2753 = fadd fast float %2752, %2751
  %2754 = fmul fast float %2753, 0x3F70101000000000
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 512
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2767, label %2759

; <label>:2759                                    ; preds = %2734
  %2760 = add i32 %57, 552
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2764, %dx.types.Handle %110, float %2654, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  br label %2767

; <label>:2767                                    ; preds = %2759, %2734
  %2768 = phi float [ %2766, %2759 ], [ 1.000000e+00, %2734 ]
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 33554432
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %2879, label %2773

; <label>:2773                                    ; preds = %2767
  %2774 = add i32 %57, 272
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = and i32 %2776, 65535
  %2778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2777)  ; LegacyF16ToF32(value)
  %2779 = lshr i32 %2776, 16
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = add i32 %57, 276
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = lshr i32 %2787, 24
  %2789 = uitofp i32 %2788 to float
  %2790 = fmul fast float %2789, 0x3F70101020000000
  %2791 = and i32 %2787, 255
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = lshr i32 %2787, 8
  %2795 = and i32 %2794, 255
  %2796 = uitofp i32 %2795 to float
  %2797 = fmul fast float %2796, 0x3F70101020000000
  %2798 = lshr i32 %2787, 16
  %2799 = and i32 %2798, 255
  %2800 = uitofp i32 %2799 to float
  %2801 = fmul fast float %2800, 0x3F70101020000000
  %2802 = add i32 %57, 268
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = lshr i32 %2804, 24
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F70101020000000
  %2808 = and i32 %2804, 255
  %2809 = uitofp i32 %2808 to float
  %2810 = fmul fast float %2809, 0x3F70101020000000
  %2811 = lshr i32 %2804, 8
  %2812 = and i32 %2811, 255
  %2813 = uitofp i32 %2812 to float
  %2814 = fmul fast float %2813, 0x3F70101020000000
  %2815 = lshr i32 %2804, 16
  %2816 = and i32 %2815, 255
  %2817 = uitofp i32 %2816 to float
  %2818 = fmul fast float %2817, 0x3F70101020000000
  %2819 = bitcast float %2743 to i32
  %2820 = ashr i32 %2819, 1
  %2821 = sub nsw i32 1597463174, %2820
  %2822 = bitcast i32 %2821 to float
  %2823 = fmul fast float %2743, 5.000000e-01
  %2824 = fmul fast float %2822, %2822
  %2825 = fmul fast float %2824, %2823
  %2826 = fsub fast float 1.500000e+00, %2825
  %2827 = fmul fast float %2822, %2743
  %2828 = fmul fast float %2827, %2826
  %2829 = bitcast float %2744 to i32
  %2830 = ashr i32 %2829, 1
  %2831 = sub nsw i32 1597463174, %2830
  %2832 = bitcast i32 %2831 to float
  %2833 = fmul fast float %2744, 5.000000e-01
  %2834 = fmul fast float %2832, %2832
  %2835 = fmul fast float %2834, %2833
  %2836 = fsub fast float 1.500000e+00, %2835
  %2837 = fmul fast float %2832, %2744
  %2838 = fmul fast float %2837, %2836
  %2839 = bitcast float %2745 to i32
  %2840 = ashr i32 %2839, 1
  %2841 = sub nsw i32 1597463174, %2840
  %2842 = bitcast i32 %2841 to float
  %2843 = fmul fast float %2745, 5.000000e-01
  %2844 = fmul fast float %2842, %2842
  %2845 = fmul fast float %2844, %2843
  %2846 = fsub fast float 1.500000e+00, %2845
  %2847 = fmul fast float %2842, %2745
  %2848 = fmul fast float %2847, %2846
  %2849 = fsub fast float %2828, %2810
  %2850 = fsub fast float %2838, %2814
  %2851 = fsub fast float %2848, %2818
  %2852 = fmul fast float %2849, %2778
  %2853 = fmul fast float %2850, %2780
  %2854 = fmul fast float %2851, %2785
  %2855 = fadd fast float %2852, %2793
  %2856 = fadd fast float %2853, %2797
  %2857 = fadd fast float %2854, %2801
  %2858 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2859 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2861 = fmul fast float %2858, %2858
  %2862 = fmul fast float %2859, %2859
  %2863 = fmul fast float %2860, %2860
  %2864 = fsub fast float %2861, %2743
  %2865 = fsub fast float %2862, %2744
  %2866 = fsub fast float %2863, %2745
  %2867 = fmul fast float %2864, %2768
  %2868 = fmul fast float %2865, %2768
  %2869 = fmul fast float %2866, %2768
  %2870 = fadd fast float %2867, %2743
  %2871 = fadd fast float %2868, %2744
  %2872 = fadd fast float %2869, %2745
  %2873 = fadd fast float %2790, %2754
  %2874 = fsub fast float %2873, %2807
  %2875 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  %2876 = fsub fast float %2875, %2754
  %2877 = fmul fast float %2876, %2768
  %2878 = fadd fast float %2877, %2754
  br label %2932

; <label>:2879                                    ; preds = %2767
  %2880 = and i32 %2770, 134217728
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2916, label %2882

; <label>:2882                                    ; preds = %2879
  %2883 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %2884 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %2885 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %2886 = fadd fast float %2883, -5.000000e-01
  %2887 = fadd fast float %2884, -5.000000e-01
  %2888 = fadd fast float %2885, -5.000000e-01
  %2889 = fmul fast float %2886, %2768
  %2890 = fmul fast float %2887, %2768
  %2891 = fmul fast float %2888, %2768
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = fadd fast float %2891, 5.000000e-01
  %2895 = call float @dx.op.unary.f32(i32 24, float %2743)  ; Sqrt(value)
  %2896 = call float @dx.op.unary.f32(i32 24, float %2744)  ; Sqrt(value)
  %2897 = call float @dx.op.unary.f32(i32 24, float %2745)  ; Sqrt(value)
  %2898 = fmul fast float %2892, 2.000000e+00
  %2899 = fsub fast float 1.000000e+00, %2898
  %2900 = fmul fast float %2899, %2895
  %2901 = fadd fast float %2900, %2898
  %2902 = fmul fast float %2901, %2895
  %2903 = fmul fast float %2893, 2.000000e+00
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = fmul fast float %2904, %2896
  %2906 = fadd fast float %2905, %2903
  %2907 = fmul fast float %2906, %2896
  %2908 = fmul fast float %2894, 2.000000e+00
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2897
  %2911 = fadd fast float %2910, %2908
  %2912 = fmul fast float %2911, %2897
  %2913 = fmul fast float %2902, %2902
  %2914 = fmul fast float %2907, %2907
  %2915 = fmul fast float %2912, %2912
  br label %2932

; <label>:2916                                    ; preds = %2879
  %2917 = fmul fast float %423, %423
  %2918 = fmul fast float %427, %427
  %2919 = fmul fast float %431, %431
  %2920 = fadd fast float %2917, -1.000000e+00
  %2921 = fadd fast float %2918, -1.000000e+00
  %2922 = fadd fast float %2919, -1.000000e+00
  %2923 = fmul fast float %2768, %2920
  %2924 = fmul fast float %2768, %2921
  %2925 = fmul fast float %2768, %2922
  %2926 = fadd fast float %2923, 1.000000e+00
  %2927 = fadd fast float %2924, 1.000000e+00
  %2928 = fadd fast float %2925, 1.000000e+00
  %2929 = fmul fast float %2926, %2743
  %2930 = fmul fast float %2927, %2744
  %2931 = fmul fast float %2928, %2745
  br label %2932

; <label>:2932                                    ; preds = %2916, %2882, %2773, %2729
  %2933 = phi float [ %2878, %2773 ], [ %2754, %2882 ], [ %2754, %2916 ], [ 0x3FA23C0BE0000000, %2729 ]
  %2934 = phi float [ %2870, %2773 ], [ %2913, %2882 ], [ %2929, %2916 ], [ 1.000000e+00, %2729 ]
  %2935 = phi float [ %2871, %2773 ], [ %2914, %2882 ], [ %2930, %2916 ], [ 1.000000e+00, %2729 ]
  %2936 = phi float [ %2872, %2773 ], [ %2915, %2882 ], [ %2931, %2916 ], [ 1.000000e+00, %2729 ]
  %2937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.i32 %2937, 1
  %2939 = and i32 %2938, 1
  %2940 = icmp ne i32 %2939, 0
  %2941 = add i32 %57, 356
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 32
  %2945 = icmp ne i32 %2944, 0
  %2946 = and i1 %2940, %2945
  %2947 = select i1 %2946, float 1.000000e+00, float %2934
  %2948 = select i1 %2946, float 0x3FD3333340000000, float %2935
  %2949 = select i1 %2946, float 0x3FD3333340000000, float %2936
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 32
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %3026, label %2954

; <label>:2954                                    ; preds = %2932
  %2955 = add i32 %57, 140
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %57, 484
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = add i32 %2960, 0
  %2962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2961, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2963 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2962, %dx.types.Handle %109, float %2654, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  %2967 = extractvalue %dx.types.ResRet.f32 %2963, 3
  %2968 = and i32 %2957, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = lshr i32 %2957, 8
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = lshr i32 %2957, 16
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101000000000
  %2977 = fmul fast float %2964, %2969
  %2978 = fadd fast float %2977, %2972
  %2979 = fmul fast float %2978, 0x3F70101000000000
  %2980 = fadd fast float %2965, -5.000000e-01
  %2981 = fadd fast float %2967, -5.000000e-01
  %2982 = fmul fast float %2980, %2976
  %2983 = fmul fast float %2981, %2976
  %2984 = fadd fast float %2982, 5.000000e-01
  %2985 = fadd fast float %2983, 5.000000e-01
  %2986 = fmul fast float %2984, 2.000000e+00
  %2987 = fadd fast float %2986, -1.000000e+00
  %2988 = fmul fast float %2985, 2.000000e+00
  %2989 = fadd fast float %2988, -1.000000e+00
  %2990 = fadd fast float %2987, %2989
  %2991 = fmul fast float %2990, 5.000000e-01
  %2992 = fsub fast float %2987, %2989
  %2993 = fmul fast float %2992, 5.000000e-01
  %2994 = call float @dx.op.unary.f32(i32 6, float %2991)  ; FAbs(value)
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = call float @dx.op.unary.f32(i32 6, float %2993)  ; FAbs(value)
  %2997 = fsub fast float %2995, %2996
  %2998 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2993, float %2997, float %2991, float %2993, float %2997)  ; Dot3(ax,ay,az,bx,by,bz)
  %2999 = call float @dx.op.unary.f32(i32 25, float %2998)  ; Rsqrt(value)
  %3000 = fmul fast float %2991, %2999
  %3001 = fmul fast float %2993, %2999
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 67108864
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3022, label %3006

; <label>:3006                                    ; preds = %2954
  %3007 = add i32 %57, 328
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, 65535
  %3011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3010)  ; LegacyF16ToF32(value)
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 65535
  %3015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3014)  ; LegacyF16ToF32(value)
  %3016 = lshr i32 %3009, 16
  %3017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3016)  ; LegacyF16ToF32(value)
  %3018 = fsub fast float %2979, %3017
  %3019 = fmul fast float %3018, %3011
  %3020 = fadd fast float %3019, %3015
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  br label %3022

; <label>:3022                                    ; preds = %3006, %2954
  %3023 = phi float [ %3021, %3006 ], [ %2979, %2954 ]
  %3024 = call float @dx.op.dot2.f32(i32 54, float %3000, float %3001, float %2558, float %2559)  ; Dot2(ax,ay,bx,by)
  %3025 = call float @dx.op.dot2.f32(i32 54, float %3000, float %3001, float %2560, float %2561)  ; Dot2(ax,ay,bx,by)
  br label %3026

; <label>:3026                                    ; preds = %3022, %2932
  %3027 = phi float [ %3023, %3022 ], [ 0x3FD6666660000000, %2932 ]
  %3028 = phi float [ %3024, %3022 ], [ 0.000000e+00, %2932 ]
  %3029 = phi float [ %3025, %3022 ], [ 0.000000e+00, %2932 ]
  %3030 = phi float [ %2966, %3022 ], [ 1.000000e+00, %2932 ]
  %3031 = add i32 %57, 208
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = lshr i32 %3033, 22
  %3035 = shl nuw nsw i32 %3034, 5
  %3036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3035)  ; LegacyF16ToF32(value)
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 64
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3074, label %3041

; <label>:3041                                    ; preds = %3026
  %3042 = add i32 %57, 500
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = add i32 %3044, 0
  %3046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 131072
  %3050 = icmp eq i32 %3049, 0
  %3051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3046, %dx.types.Handle %109, float %2654, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.ResRet.f32 %3051, 1
  %3054 = extractvalue %dx.types.ResRet.f32 %3051, 2
  %3055 = fmul fast float %3052, %411
  %3056 = fmul fast float %3053, %414
  %3057 = fmul fast float %3054, %417
  br i1 %3050, label %3064, label %3058

; <label>:3058                                    ; preds = %3041
  %3059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3060 = extractvalue %dx.types.CBufRet.f32 %3059, 0
  %3061 = fmul fast float %3060, %3055
  %3062 = fmul fast float %3060, %3056
  %3063 = fmul fast float %3060, %3057
  br label %3064

; <label>:3064                                    ; preds = %3058, %3041
  %3065 = phi float [ %3061, %3058 ], [ %3055, %3041 ]
  %3066 = phi float [ %3062, %3058 ], [ %3056, %3041 ]
  %3067 = phi float [ %3063, %3058 ], [ %3057, %3041 ]
  %3068 = fmul fast float %3065, %3036
  %3069 = select i1 %268, float %3068, float %3065
  %3070 = call float @dx.op.dot3.f32(i32 55, float %3069, float %3066, float %3067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3071 = select i1 %268, float 0.000000e+00, float %3065
  %3072 = select i1 %268, float %3070, float %3066
  %3073 = select i1 %268, float 0.000000e+00, float %3067
  br label %3074

; <label>:3074                                    ; preds = %3064, %3026
  %3075 = phi float [ %3071, %3064 ], [ 0.000000e+00, %3026 ]
  %3076 = phi float [ %3072, %3064 ], [ 0.000000e+00, %3026 ]
  %3077 = phi float [ %3073, %3064 ], [ 0.000000e+00, %3026 ]
  %3078 = add i32 %57, 144
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = lshr i32 %3080, 8
  %3084 = and i32 %3083, 255
  %3085 = uitofp i32 %3084 to float
  %3086 = call float @dx.op.dot3.f32(i32 55, float %2947, float %2948, float %2949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3087 = fmul fast float %3085, %3086
  %3088 = fadd fast float %3087, %3082
  %3089 = fmul fast float %3088, 0x3F70101020000000
  %3090 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  br i1 %2546, label %3091, label %3099

; <label>:3091                                    ; preds = %3074
  %3092 = fsub fast float 1.000000e+00, %2727
  %3093 = fmul fast float %3092, %2535
  %3094 = fmul fast float %3092, %2536
  %3095 = fmul fast float %3092, %2537
  %3096 = fmul fast float %3092, %2538
  %3097 = fmul fast float %3092, %2539
  %3098 = fmul fast float %3092, %2540
  br label %3099

; <label>:3099                                    ; preds = %3091, %3074
  %3100 = phi float [ %3093, %3091 ], [ %2535, %3074 ]
  %3101 = phi float [ %3094, %3091 ], [ %2536, %3074 ]
  %3102 = phi float [ %3095, %3091 ], [ %2537, %3074 ]
  %3103 = phi float [ %3096, %3091 ], [ %2538, %3074 ]
  %3104 = phi float [ %3097, %3091 ], [ %2539, %3074 ]
  %3105 = phi float [ %3098, %3091 ], [ %2540, %3074 ]
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = and i32 %3107, 3
  %3109 = icmp eq i32 %3108, 3
  br i1 %3109, label %3188, label %3110

; <label>:3110                                    ; preds = %3099
  %3111 = and i32 %3107, 16
  %3112 = icmp ne i32 %3111, 0
  %3113 = select i1 %3112, float %2727, float 0.000000e+00
  %3114 = icmp eq i32 %3108, 0
  br i1 %3114, label %3115, label %3143

; <label>:3115                                    ; preds = %3110
  %3116 = and i32 %3107, 64
  %3117 = icmp ne i32 %3116, 0
  %3118 = select i1 %3117, float %2727, float 0.000000e+00
  %3119 = fsub fast float %2947, %3100
  %3120 = fsub fast float %2948, %3101
  %3121 = fsub fast float %2949, %3102
  %3122 = fmul fast float %3113, %3119
  %3123 = fmul fast float %3113, %3120
  %3124 = fmul fast float %3113, %3121
  %3125 = fadd fast float %3122, %3100
  %3126 = fadd fast float %3123, %3101
  %3127 = fadd fast float %3124, %3102
  %3128 = fsub fast float %2933, %2541
  %3129 = fmul fast float %3113, %3128
  %3130 = fadd fast float %3129, %2541
  %3131 = fsub fast float %3075, %3103
  %3132 = fsub fast float %3076, %3104
  %3133 = fsub fast float %3077, %3105
  %3134 = fmul fast float %3118, %3131
  %3135 = fmul fast float %3118, %3132
  %3136 = fmul fast float %3118, %3133
  %3137 = fadd fast float %3134, %3103
  %3138 = fadd fast float %3135, %3104
  %3139 = fadd fast float %3136, %3105
  %3140 = fsub fast float %3090, %2544
  %3141 = fmul fast float %3113, %3140
  %3142 = fadd fast float %3141, %2544
  br label %3188

; <label>:3143                                    ; preds = %3110
  %3144 = icmp eq i32 %3108, 1
  br i1 %3144, label %3145, label %3158

; <label>:3145                                    ; preds = %3143
  %3146 = fadd fast float %2947, -1.000000e+00
  %3147 = fadd fast float %2948, -1.000000e+00
  %3148 = fadd fast float %2949, -1.000000e+00
  %3149 = fmul fast float %3113, %3146
  %3150 = fmul fast float %3113, %3147
  %3151 = fmul fast float %3113, %3148
  %3152 = fadd fast float %3149, 1.000000e+00
  %3153 = fadd fast float %3150, 1.000000e+00
  %3154 = fadd fast float %3151, 1.000000e+00
  %3155 = fmul fast float %3152, %3100
  %3156 = fmul fast float %3153, %3101
  %3157 = fmul fast float %3154, %3102
  br label %3188

; <label>:3158                                    ; preds = %3143
  %3159 = icmp eq i32 %3108, 2
  br i1 %3159, label %3160, label %3188

; <label>:3160                                    ; preds = %3158
  %3161 = call float @dx.op.unary.f32(i32 24, float %2947)  ; Sqrt(value)
  %3162 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %3163 = call float @dx.op.unary.f32(i32 24, float %2949)  ; Sqrt(value)
  %3164 = fadd fast float %3161, -5.000000e-01
  %3165 = fadd fast float %3162, -5.000000e-01
  %3166 = fadd fast float %3163, -5.000000e-01
  %3167 = fmul fast float %3164, %3113
  %3168 = fmul fast float %3165, %3113
  %3169 = fmul fast float %3166, %3113
  %3170 = fadd fast float %3167, 5.000000e-01
  %3171 = fadd fast float %3168, 5.000000e-01
  %3172 = fadd fast float %3169, 5.000000e-01
  %3173 = fmul fast float %3170, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3100
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3100
  %3178 = fmul fast float %3171, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3101
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3101
  %3183 = fmul fast float %3172, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3102
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3102
  br label %3188

; <label>:3188                                    ; preds = %3160, %3158, %3145, %3115, %3099
  %3189 = phi float [ %3100, %3099 ], [ %3177, %3160 ], [ %3100, %3158 ], [ %3155, %3145 ], [ %3125, %3115 ]
  %3190 = phi float [ %3101, %3099 ], [ %3182, %3160 ], [ %3101, %3158 ], [ %3156, %3145 ], [ %3126, %3115 ]
  %3191 = phi float [ %3102, %3099 ], [ %3187, %3160 ], [ %3102, %3158 ], [ %3157, %3145 ], [ %3127, %3115 ]
  %3192 = phi float [ %3103, %3099 ], [ %3103, %3160 ], [ %3103, %3158 ], [ %3103, %3145 ], [ %3137, %3115 ]
  %3193 = phi float [ %3104, %3099 ], [ %3104, %3160 ], [ %3104, %3158 ], [ %3104, %3145 ], [ %3138, %3115 ]
  %3194 = phi float [ %3105, %3099 ], [ %3105, %3160 ], [ %3105, %3158 ], [ %3105, %3145 ], [ %3139, %3115 ]
  %3195 = phi float [ %2541, %3099 ], [ %2541, %3160 ], [ %2541, %3158 ], [ %2541, %3145 ], [ %3130, %3115 ]
  %3196 = phi float [ %2544, %3099 ], [ %2544, %3160 ], [ %2544, %3158 ], [ %2544, %3145 ], [ %3142, %3115 ]
  %3197 = and i32 %3107, 12
  %3198 = icmp eq i32 %3197, 12
  br i1 %3198, label %3271, label %3199

; <label>:3199                                    ; preds = %3188
  %3200 = and i32 %3107, 2097184
  %3201 = icmp eq i32 %3200, 2097184
  %3202 = select i1 %3201, float %2727, float 0.000000e+00
  %3203 = and i32 %3107, 4194336
  %3204 = icmp eq i32 %3203, 4194336
  %3205 = select i1 %3204, float %2727, float 0.000000e+00
  %3206 = and i32 %3107, 8388640
  %3207 = icmp eq i32 %3206, 8388640
  %3208 = select i1 %3207, float %2727, float 0.000000e+00
  %3209 = icmp eq i32 %3197, 0
  br i1 %3209, label %3210, label %3223

; <label>:3210                                    ; preds = %3199
  %3211 = fsub fast float %3028, %2533
  %3212 = fsub fast float %3029, %2534
  %3213 = fmul fast float %3202, %3211
  %3214 = fmul fast float %3202, %3212
  %3215 = fadd fast float %3213, %2533
  %3216 = fadd fast float %3214, %2534
  %3217 = fsub fast float %3030, %2543
  %3218 = fmul fast float %3205, %3217
  %3219 = fadd fast float %3218, %2543
  %3220 = fsub fast float %3027, %2542
  %3221 = fmul fast float %3208, %3220
  %3222 = fadd fast float %3221, %2542
  br label %3271

; <label>:3223                                    ; preds = %3199
  %3224 = icmp eq i32 %3197, 4
  br i1 %3224, label %3225, label %3257

; <label>:3225                                    ; preds = %3223
  %3226 = fmul fast float %3202, %3028
  %3227 = fmul fast float %3202, %3029
  %3228 = fadd fast float %3226, %2533
  %3229 = fadd fast float %3227, %2534
  %3230 = call float @dx.op.binary.f32(i32 36, float %2543, float %3030)  ; FMin(a,b)
  %3231 = fsub fast float %3230, %2543
  %3232 = fmul fast float %3231, %3205
  %3233 = fadd fast float %3232, %2543
  %3234 = fadd fast float %3027, %2542
  %3235 = fmul fast float %3234, 0x3FF337FAE0000000
  %3236 = fmul fast float %2542, %2542
  %3237 = fmul fast float %3027, %3027
  %3238 = fadd fast float %3237, %3236
  %3239 = fmul fast float %3238, 0x3FE5152B00000000
  %3240 = fmul fast float %2542, 0xBFCC1F85E0000000
  %3241 = fmul fast float %3240, %3027
  %3242 = fadd fast float %3241, 0xBFE1363700000000
  %3243 = fadd fast float %3242, %3235
  %3244 = fsub fast float %3243, %3239
  %3245 = fmul fast float %3234, 0x3FBA6F0D00000000
  %3246 = fmul fast float %3238, 0x3FD0432880000000
  %3247 = fmul fast float %2542, 0xBFEF110800000000
  %3248 = fmul fast float %3247, %3027
  %3249 = fadd fast float %3248, 1.000000e+00
  %3250 = fsub fast float %3249, %3245
  %3251 = fadd fast float %3250, %3246
  %3252 = fdiv fast float %3244, %3251
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fsub fast float %3253, %2542
  %3255 = fmul fast float %3254, %3208
  %3256 = fadd fast float %3255, %2542
  br label %3271

; <label>:3257                                    ; preds = %3223
  %3258 = icmp eq i32 %3197, 8
  br i1 %3258, label %3259, label %3271

; <label>:3259                                    ; preds = %3257
  %3260 = fmul fast float %3202, %3028
  %3261 = fmul fast float %3202, %3029
  %3262 = fadd fast float %3260, %2533
  %3263 = fadd fast float %3261, %2534
  %3264 = call float @dx.op.binary.f32(i32 36, float %2543, float %3030)  ; FMin(a,b)
  %3265 = fsub fast float %3264, %2543
  %3266 = fmul fast float %3265, %3205
  %3267 = fadd fast float %3266, %2543
  %3268 = fsub fast float %3027, %2542
  %3269 = fmul fast float %3208, %3268
  %3270 = fadd fast float %3269, %2542
  br label %3271

; <label>:3271                                    ; preds = %3259, %3257, %3225, %3210, %3188, %2726, %2545, %2532
  %3272 = phi float [ %2533, %3188 ], [ %2533, %2726 ], [ %2533, %2532 ], [ %2533, %2545 ], [ %3215, %3210 ], [ %3228, %3225 ], [ %2533, %3257 ], [ %3262, %3259 ]
  %3273 = phi float [ %2534, %3188 ], [ %2534, %2726 ], [ %2534, %2532 ], [ %2534, %2545 ], [ %3216, %3210 ], [ %3229, %3225 ], [ %2534, %3257 ], [ %3263, %3259 ]
  %3274 = phi float [ %3189, %3188 ], [ %2535, %2726 ], [ %2535, %2532 ], [ %2535, %2545 ], [ %3189, %3210 ], [ %3189, %3225 ], [ %3189, %3257 ], [ %3189, %3259 ]
  %3275 = phi float [ %3190, %3188 ], [ %2536, %2726 ], [ %2536, %2532 ], [ %2536, %2545 ], [ %3190, %3210 ], [ %3190, %3225 ], [ %3190, %3257 ], [ %3190, %3259 ]
  %3276 = phi float [ %3191, %3188 ], [ %2537, %2726 ], [ %2537, %2532 ], [ %2537, %2545 ], [ %3191, %3210 ], [ %3191, %3225 ], [ %3191, %3257 ], [ %3191, %3259 ]
  %3277 = phi float [ %3192, %3188 ], [ %2538, %2726 ], [ %2538, %2532 ], [ %2538, %2545 ], [ %3192, %3210 ], [ %3192, %3225 ], [ %3192, %3257 ], [ %3192, %3259 ]
  %3278 = phi float [ %3193, %3188 ], [ %2539, %2726 ], [ %2539, %2532 ], [ %2539, %2545 ], [ %3193, %3210 ], [ %3193, %3225 ], [ %3193, %3257 ], [ %3193, %3259 ]
  %3279 = phi float [ %3194, %3188 ], [ %2540, %2726 ], [ %2540, %2532 ], [ %2540, %2545 ], [ %3194, %3210 ], [ %3194, %3225 ], [ %3194, %3257 ], [ %3194, %3259 ]
  %3280 = phi float [ %3195, %3188 ], [ %2541, %2726 ], [ %2541, %2532 ], [ %2541, %2545 ], [ %3195, %3210 ], [ %3195, %3225 ], [ %3195, %3257 ], [ %3195, %3259 ]
  %3281 = phi float [ %2542, %3188 ], [ %2542, %2726 ], [ %2542, %2532 ], [ %2542, %2545 ], [ %3222, %3210 ], [ %3256, %3225 ], [ %2542, %3257 ], [ %3270, %3259 ]
  %3282 = phi float [ %2543, %3188 ], [ %2543, %2726 ], [ %2543, %2532 ], [ %2543, %2545 ], [ %3219, %3210 ], [ %3233, %3225 ], [ %2543, %3257 ], [ %3267, %3259 ]
  %3283 = phi float [ %3196, %3188 ], [ %2544, %2726 ], [ %2544, %2532 ], [ %2544, %2545 ], [ %3196, %3210 ], [ %3196, %3225 ], [ %3196, %3257 ], [ %3196, %3259 ]
  %3284 = add i32 %57, 440
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.i32 %3285, 1
  %3288 = bitcast i32 %3286 to float
  %3289 = bitcast i32 %3287 to float
  %3290 = fcmp fast oge float %3288, 0.000000e+00
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = select i1 %3290, float %3288, float %3292
  %3294 = fadd fast float %3293, %210
  %3295 = fmul fast float %3289, %211
  %3296 = add i32 %57, 536
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = add i32 %3298, 0
  %3300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3300, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = fmul fast float %3295, %3302
  %3304 = fadd fast float %3294, %3303
  %3305 = and i32 %202, 65535
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = lshr i32 %202, 16
  %3308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3307)  ; LegacyF16ToF32(value)
  %3309 = and i32 %203, 65535
  %3310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3309)  ; LegacyF16ToF32(value)
  %3311 = fmul fast float %3306, %3274
  %3312 = fmul fast float %3308, %3275
  %3313 = fmul fast float %3310, %3276
  %3314 = shl i32 %204, 4
  %3315 = and i32 %3314, 32752
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = lshr i32 %204, 7
  %3318 = and i32 %3317, 32752
  %3319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3318)  ; LegacyF16ToF32(value)
  %3320 = lshr i32 %204, 22
  %3321 = shl nuw nsw i32 %3320, 5
  %3322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3321)  ; LegacyF16ToF32(value)
  %3323 = and i32 %205, 65535
  %3324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3323)  ; LegacyF16ToF32(value)
  %3325 = fmul fast float %3316, %3277
  %3326 = fmul fast float %3325, %3324
  %3327 = fmul fast float %3319, %3278
  %3328 = fmul fast float %3327, %3324
  %3329 = fmul fast float %3322, %3279
  %3330 = fmul fast float %3329, %3324
  %3331 = call float @dx.op.dot2.f32(i32 54, float %3272, float %3273, float %3272, float %3273)  ; Dot2(ax,ay,bx,by)
  %3332 = fmul fast float %3331, 0x3FE3333340000000
  %3333 = fsub fast float 1.000000e+00, %3332
  %3334 = call float @dx.op.dot3.f32(i32 55, float %3272, float %3273, float %3333, float %3272, float %3273, float %3333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3335 = call float @dx.op.unary.f32(i32 25, float %3334)  ; Rsqrt(value)
  %3336 = fmul fast float %3335, %3272
  %3337 = fmul fast float %3335, %3273
  %3338 = fmul fast float %3333, %3335
  %3339 = fmul fast float %3338, %122
  %3340 = fmul fast float %3338, %124
  %3341 = fmul fast float %3338, %126
  %3342 = fmul fast float %3336, %88
  %3343 = fmul fast float %3336, %89
  %3344 = fmul fast float %3336, %90
  %3345 = fadd fast float %3339, %3342
  %3346 = fadd fast float %3340, %3343
  %3347 = fadd fast float %3341, %3344
  %3348 = fmul fast float %136, %3337
  %3349 = fmul fast float %137, %3337
  %3350 = fmul fast float %138, %3337
  %3351 = fadd fast float %3345, %3348
  %3352 = fadd fast float %3346, %3349
  %3353 = fadd fast float %3347, %3350
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3351, float %3352, float %3353, float %3351, float %3352, float %3353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = call float @dx.op.unary.f32(i32 25, float %3354)  ; Rsqrt(value)
  %3356 = fmul fast float %3351, %3355
  %3357 = fmul fast float %3352, %3355
  %3358 = fmul fast float %3353, %3355
  %3359 = icmp eq i32 %59, 65535
  br i1 %3359, label %3878, label %3360

; <label>:3360                                    ; preds = %3271
  %3361 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3362 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3363 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3364 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3365 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3366 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3367 = fadd fast float %3361, %60
  %3368 = fadd fast float %3362, %61
  %3369 = fadd fast float %3363, %62
  %3370 = fadd fast float %3364, %60
  %3371 = fadd fast float %3365, %61
  %3372 = fadd fast float %3366, %62
  %3373 = mul i32 %59, 48
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = add i32 %3373, 16
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = add i32 %3373, 32
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = extractvalue %dx.types.ResRet.f32 %3384, 3
  %3389 = bitcast float %3388 to i32
  %3390 = fmul fast float %3375, %60
  %3391 = fmul fast float %3376, %61
  %3392 = fmul fast float %3377, %62
  %3393 = fsub fast float %3390, %3380
  %3394 = fsub fast float %3391, %3381
  %3395 = fsub fast float %3392, %3382
  %3396 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3397 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3398 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  %3399 = fmul fast float %3396, %3385
  %3400 = fmul fast float %3397, %3386
  %3401 = fmul fast float %3398, %3387
  %3402 = fadd fast float %3385, -1.000000e+00
  %3403 = fadd fast float %3386, -1.000000e+00
  %3404 = fadd fast float %3387, -1.000000e+00
  %3405 = call float @dx.op.unary.f32(i32 27, float %3399)  ; Round_ni(value)
  %3406 = call float @dx.op.unary.f32(i32 27, float %3400)  ; Round_ni(value)
  %3407 = call float @dx.op.unary.f32(i32 27, float %3401)  ; Round_ni(value)
  %3408 = call float @dx.op.binary.f32(i32 36, float %3405, float %3402)  ; FMin(a,b)
  %3409 = call float @dx.op.binary.f32(i32 36, float %3406, float %3403)  ; FMin(a,b)
  %3410 = call float @dx.op.binary.f32(i32 36, float %3407, float %3404)  ; FMin(a,b)
  %3411 = fmul fast float %3410, %3386
  %3412 = fadd fast float %3411, %3409
  %3413 = fmul fast float %3412, %3385
  %3414 = fadd fast float %3413, %3408
  %3415 = fptosi float %3414 to i32
  %3416 = add nsw i32 %3415, %3389
  %3417 = shl nsw i32 %3416, 2
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = lshr i32 %3419, 16
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3846, label %3422

; <label>:3422                                    ; preds = %3360
  br label %3423

; <label>:3423                                    ; preds = %3545, %3422
  %3424 = phi i32 [ %3447, %3545 ], [ %3420, %3422 ]
  %3425 = phi float [ %3546, %3545 ], [ 0.000000e+00, %3422 ]
  %3426 = phi float [ %3547, %3545 ], [ %1063, %3422 ]
  %3427 = phi float [ %3548, %3545 ], [ %3304, %3422 ]
  %3428 = phi float [ %3549, %3545 ], [ %3283, %3422 ]
  %3429 = phi float [ %3550, %3545 ], [ 0.000000e+00, %3422 ]
  %3430 = phi float [ %3551, %3545 ], [ 0.000000e+00, %3422 ]
  %3431 = phi float [ %3552, %3545 ], [ %3326, %3422 ]
  %3432 = phi float [ %3553, %3545 ], [ %3328, %3422 ]
  %3433 = phi float [ %3554, %3545 ], [ %3330, %3422 ]
  %3434 = phi float [ %3555, %3545 ], [ %3356, %3422 ]
  %3435 = phi float [ %3556, %3545 ], [ %3357, %3422 ]
  %3436 = phi float [ %3557, %3545 ], [ %3358, %3422 ]
  %3437 = phi float [ %3558, %3545 ], [ %3282, %3422 ]
  %3438 = phi float [ %3559, %3545 ], [ %3281, %3422 ]
  %3439 = phi float [ %3560, %3545 ], [ 0.000000e+00, %3422 ]
  %3440 = phi float [ %3561, %3545 ], [ %3280, %3422 ]
  %3441 = phi float [ %3562, %3545 ], [ %3311, %3422 ]
  %3442 = phi float [ %3563, %3545 ], [ %3312, %3422 ]
  %3443 = phi float [ %3564, %3545 ], [ %3313, %3422 ]
  %3444 = shl nuw nsw i32 %3424, 2
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = lshr i32 %3446, 16
  %3448 = shl i32 %3446, 8
  %3449 = and i32 %3448, 16776960
  %3450 = or i32 %3449, 48
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = or i32 %3449, 64
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = extractvalue %dx.types.ResRet.i32 %3456, 1
  %3459 = or i32 %3449, 80
  %3460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 3
  %3463 = or i32 %3449, 96
  %3464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = or i32 %3449, 112
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3472 = or i32 %3449, 128
  %3473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3473, 2
  %3477 = extractvalue %dx.types.ResRet.f32 %3473, 3
  %3478 = or i32 %3449, 144
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3484 = or i32 %3449, 160
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3490 = or i32 %3449, 192
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = or i32 %3449, 208
  %3494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = or i32 %3449, 248
  %3497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.ResRet.f32 %3497, 1
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = extractvalue %dx.types.ResRet.f32 %3500, 1
  %3503 = extractvalue %dx.types.ResRet.f32 %3500, 2
  %3504 = extractvalue %dx.types.ResRet.f32 %3500, 3
  %3505 = call float @dx.op.dot4.f32(i32 56, float %3501, float %3502, float %3503, float %3504, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3506 = or i32 %3449, 16
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.ResRet.f32 %3507, 3
  %3512 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3513 = or i32 %3449, 32
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = extractvalue %dx.types.ResRet.f32 %3514, 3
  %3519 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3520 = call float @dx.op.unary.f32(i32 27, float %3505)  ; Round_ni(value)
  %3521 = call float @dx.op.unary.f32(i32 6, float %3520)  ; FAbs(value)
  %3522 = call float @dx.op.unary.f32(i32 27, float %3512)  ; Round_ni(value)
  %3523 = call float @dx.op.unary.f32(i32 6, float %3522)  ; FAbs(value)
  %3524 = call float @dx.op.unary.f32(i32 6, float %3519)  ; FAbs(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3526 = fadd fast float %3523, %3521
  %3527 = fadd fast float %3526, %3525
  %3528 = fcmp fast oeq float %3527, 0.000000e+00
  %3529 = call float @dx.op.dot4.f32(i32 56, float %3501, float %3502, float %3503, float %3504, float %3367, float %3368, float %3369, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3530 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %3367, float %3368, float %3369, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3531 = call float @dx.op.dot4.f32(i32 56, float %3501, float %3502, float %3503, float %3504, float %3370, float %3371, float %3372, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3532 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %3370, float %3371, float %3372, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3533 = fsub fast float %3529, %3505
  %3534 = fsub fast float %3531, %3505
  %3535 = fsub fast float %3530, %3512
  %3536 = fsub fast float %3532, %3512
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3453, float %3454, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3540 = fadd fast float %3539, %3537
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3538, 0
  %3543 = fcmp fast ogt float %3541, %3542
  %3544 = and i1 %3528, %3543
  br i1 %3544, label %3566, label %3545

; <label>:3545                                    ; preds = %3832, %3649, %3566, %3423
  %3546 = phi float [ %3425, %3566 ], [ %3652, %3649 ], [ %3652, %3832 ], [ %3425, %3423 ]
  %3547 = phi float [ %3426, %3566 ], [ %3426, %3649 ], [ %3807, %3832 ], [ %3426, %3423 ]
  %3548 = phi float [ %3427, %3566 ], [ %3427, %3649 ], [ %3806, %3832 ], [ %3427, %3423 ]
  %3549 = phi float [ %3428, %3566 ], [ %3428, %3649 ], [ %3804, %3832 ], [ %3428, %3423 ]
  %3550 = phi float [ %3429, %3566 ], [ %3429, %3649 ], [ %3776, %3832 ], [ %3429, %3423 ]
  %3551 = phi float [ %3430, %3566 ], [ %3430, %3649 ], [ %3774, %3832 ], [ %3430, %3423 ]
  %3552 = phi float [ %3431, %3566 ], [ %3431, %3649 ], [ %3842, %3832 ], [ %3431, %3423 ]
  %3553 = phi float [ %3432, %3566 ], [ %3432, %3649 ], [ %3843, %3832 ], [ %3432, %3423 ]
  %3554 = phi float [ %3433, %3566 ], [ %3433, %3649 ], [ %3844, %3832 ], [ %3433, %3423 ]
  %3555 = phi float [ %3434, %3566 ], [ %3434, %3649 ], [ %3755, %3832 ], [ %3434, %3423 ]
  %3556 = phi float [ %3435, %3566 ], [ %3435, %3649 ], [ %3756, %3832 ], [ %3435, %3423 ]
  %3557 = phi float [ %3436, %3566 ], [ %3436, %3649 ], [ %3757, %3832 ], [ %3436, %3423 ]
  %3558 = phi float [ %3437, %3566 ], [ %3437, %3649 ], [ %3784, %3832 ], [ %3437, %3423 ]
  %3559 = phi float [ %3438, %3566 ], [ %3438, %3649 ], [ %3781, %3832 ], [ %3438, %3423 ]
  %3560 = phi float [ %3439, %3566 ], [ %3439, %3649 ], [ %3778, %3832 ], [ %3439, %3423 ]
  %3561 = phi float [ %3440, %3566 ], [ %3440, %3649 ], [ %3772, %3832 ], [ %3440, %3423 ]
  %3562 = phi float [ %3441, %3566 ], [ %3441, %3649 ], [ %3767, %3832 ], [ %3441, %3423 ]
  %3563 = phi float [ %3442, %3566 ], [ %3442, %3649 ], [ %3768, %3832 ], [ %3442, %3423 ]
  %3564 = phi float [ %3443, %3566 ], [ %3443, %3649 ], [ %3769, %3832 ], [ %3443, %3423 ]
  %3565 = icmp eq i32 %3447, 0
  br i1 %3565, label %3845, label %3423

; <label>:3566                                    ; preds = %3423
  %3567 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3568 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3569 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3570 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3573 = extractvalue %dx.types.ResRet.i32 %3456, 3
  %3574 = extractvalue %dx.types.ResRet.i32 %3456, 2
  %3575 = bitcast float %3567 to i32
  %3576 = add i32 %3573, 0
  %3577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3576, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3579 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3577, %dx.types.Handle %3578, float %3505, float %3512, float undef, float undef, i32 0, i32 0, i32 undef, float %3533, float %3535, float undef, float %3534, float %3536, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = fmul fast float %3580, %3572
  %3582 = fadd fast float %3581, %3571
  %3583 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  %3584 = fmul fast float %3505, %3465
  %3585 = call float @dx.op.tertiary.f32(i32 46, float %3466, float %3512, float %3584)  ; FMad(a,b,c)
  %3586 = fadd fast float %3585, %3570
  %3587 = fmul fast float %3505, %3467
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3512, float %3587)  ; FMad(a,b,c)
  %3589 = fadd fast float %3588, %3569
  %3590 = fmul fast float %3533, %3465
  %3591 = call float @dx.op.tertiary.f32(i32 46, float %3466, float %3535, float %3590)  ; FMad(a,b,c)
  %3592 = fmul fast float %3533, %3467
  %3593 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3535, float %3592)  ; FMad(a,b,c)
  %3594 = fmul fast float %3534, %3465
  %3595 = call float @dx.op.tertiary.f32(i32 46, float %3466, float %3536, float %3594)  ; FMad(a,b,c)
  %3596 = fmul fast float %3534, %3467
  %3597 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3536, float %3596)  ; FMad(a,b,c)
  %3598 = add i32 %3574, 0
  %3599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3598, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3600 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3599, %dx.types.Handle %3578, float %3586, float %3589, float undef, float undef, i32 0, i32 0, i32 undef, float %3591, float %3593, float undef, float %3595, float %3597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = and i32 %3575, 1024
  %3603 = icmp ne i32 %3602, 0
  %3604 = fcmp fast ogt float %3601, 0x3FE0101020000000
  %3605 = uitofp i1 %3604 to float
  %3606 = select i1 %3603, float %3605, float %3601
  %3607 = and i32 %3575, 8192
  %3608 = icmp ne i32 %3607, 0
  %3609 = select i1 %3608, float %3568, float 1.000000e+00
  %3610 = fmul fast float %3505, 2.000000e+00
  %3611 = fadd fast float %3610, -1.000000e+00
  %3612 = call float @dx.op.unary.f32(i32 6, float %3611)  ; FAbs(value)
  %3613 = fmul fast float %3612, %3498
  %3614 = fsub fast float %3613, %3498
  %3615 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3616 = fmul fast float %3512, 2.000000e+00
  %3617 = fadd fast float %3616, -1.000000e+00
  %3618 = call float @dx.op.unary.f32(i32 6, float %3617)  ; FAbs(value)
  %3619 = fmul fast float %3618, %3499
  %3620 = fsub fast float %3619, %3499
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = fmul fast float %3524, %3461
  %3623 = fsub fast float %3622, %3461
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  %3625 = fmul fast float %3583, %3609
  %3626 = fmul fast float %3625, %3580
  %3627 = fmul fast float %3626, %3615
  %3628 = fmul fast float %3627, %3606
  %3629 = fmul fast float %3628, %3621
  %3630 = fmul fast float %3629, %3624
  %3631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.f32 %3631, 1
  %3633 = extractvalue %dx.types.CBufRet.f32 %3631, 0
  %3634 = fsub fast float %3541, %3633
  %3635 = fmul fast float %3634, %3632
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = fmul fast float %3630, %3462
  %3638 = fadd fast float %3630, %3462
  %3639 = fmul fast float %3638, %3471
  %3640 = fsub fast float %3639, %3471
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3642 = and i32 %3575, 128
  %3643 = icmp ne i32 %3642, 0
  %3644 = select i1 %3643, float %3641, float %3637
  %3645 = fmul fast float %3644, %3636
  %3646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3646, 0
  %3648 = fcmp fast ugt float %3645, %3647
  br i1 %3648, label %3649, label %3545

; <label>:3649                                    ; preds = %3566
  %3650 = select i1 %3608, float %3645, float 0.000000e+00
  %3651 = fadd fast float %3650, %3425
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  br i1 %3608, label %3545, label %3653

; <label>:3653                                    ; preds = %3649
  %3654 = and i32 %3575, 4
  %3655 = and i32 %3575, 8
  %3656 = add i32 %3457, 0
  %3657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3656, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3659 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3657, %dx.types.Handle %3658, float %3586, float %3589, float undef, float undef, i32 0, i32 0, i32 undef, float %3591, float %3593, float undef, float %3595, float %3597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = bitcast float %3483 to i32
  %3665 = and i32 %3664, 255
  %3666 = uitofp i32 %3665 to float
  %3667 = lshr i32 %3664, 8
  %3668 = and i32 %3667, 255
  %3669 = uitofp i32 %3668 to float
  %3670 = fmul fast float %3663, %3666
  %3671 = fadd fast float %3670, %3669
  %3672 = fmul fast float %3671, 0x3F70101000000000
  %3673 = add i32 %3458, 0
  %3674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3673, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3675 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3674, %dx.types.Handle %3658, float %3586, float %3589, float undef, float undef, i32 0, i32 0, i32 undef, float %3591, float %3593, float undef, float %3595, float %3597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = bitcast float %3477 to i32
  %3681 = and i32 %3680, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = lshr i32 %3680, 8
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = lshr i32 %3680, 16
  %3687 = and i32 %3686, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = fmul fast float %3688, 0x3F70101000000000
  %3690 = fmul fast float %3676, %3682
  %3691 = fadd fast float %3690, %3685
  %3692 = fmul fast float %3691, 0x3F70101000000000
  %3693 = fadd fast float %3677, -5.000000e-01
  %3694 = fadd fast float %3679, -5.000000e-01
  %3695 = fmul fast float %3693, %3689
  %3696 = fmul fast float %3694, %3689
  %3697 = fadd fast float %3695, 5.000000e-01
  %3698 = fadd fast float %3696, 5.000000e-01
  %3699 = fmul fast float %3660, %3486
  %3700 = fmul fast float %3661, %3487
  %3701 = fmul fast float %3662, %3488
  %3702 = fmul fast float %3697, 2.000000e+00
  %3703 = fadd fast float %3702, -1.000000e+00
  %3704 = fmul fast float %3698, 2.000000e+00
  %3705 = fadd fast float %3704, -1.000000e+00
  %3706 = fadd fast float %3703, %3705
  %3707 = fmul fast float %3706, 5.000000e-01
  %3708 = fsub fast float %3703, %3705
  %3709 = fmul fast float %3708, 5.000000e-01
  %3710 = call float @dx.op.unary.f32(i32 6, float %3707)  ; FAbs(value)
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = call float @dx.op.unary.f32(i32 6, float %3709)  ; FAbs(value)
  %3713 = fsub fast float %3711, %3712
  %3714 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3709, float %3713, float %3707, float %3709, float %3713)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = call float @dx.op.unary.f32(i32 25, float %3714)  ; Rsqrt(value)
  %3716 = fmul fast float %3707, %3715
  %3717 = fmul fast float %3709, %3715
  %3718 = fmul fast float %3715, %3713
  %3719 = fmul fast float %3718, %3452
  %3720 = fmul fast float %3718, %3453
  %3721 = fmul fast float %3718, %3454
  %3722 = fmul fast float %3716, %3474
  %3723 = fmul fast float %3716, %3475
  %3724 = fmul fast float %3716, %3476
  %3725 = fadd fast float %3722, %3719
  %3726 = fadd fast float %3723, %3720
  %3727 = fadd fast float %3724, %3721
  %3728 = fmul fast float %3717, %3480
  %3729 = fmul fast float %3717, %3481
  %3730 = fmul fast float %3717, %3482
  %3731 = fadd fast float %3725, %3728
  %3732 = fadd fast float %3726, %3729
  %3733 = fadd fast float %3727, %3730
  %3734 = call float @dx.op.dot3.f32(i32 55, float %3731, float %3732, float %3733, float %3731, float %3732, float %3733)  ; Dot3(ax,ay,az,bx,by,bz)
  %3735 = call float @dx.op.unary.f32(i32 25, float %3734)  ; Rsqrt(value)
  %3736 = fmul fast float %3731, %3735
  %3737 = fmul fast float %3732, %3735
  %3738 = fmul fast float %3733, %3735
  %3739 = icmp ne i32 %3655, 0
  %3740 = select i1 %3739, float 1.000000e+00, float 0.000000e+00
  %3741 = fmul fast float %3645, %3740
  %3742 = and i32 %3575, 1
  %3743 = icmp eq i32 %3742, 0
  br i1 %3743, label %3744, label %3748

; <label>:3744                                    ; preds = %3653
  %3745 = fsub fast float %3736, %3434
  %3746 = fsub fast float %3737, %3435
  %3747 = fsub fast float %3738, %3436
  br label %3748

; <label>:3748                                    ; preds = %3744, %3653
  %3749 = phi float [ %3745, %3744 ], [ %3736, %3653 ]
  %3750 = phi float [ %3746, %3744 ], [ %3737, %3653 ]
  %3751 = phi float [ %3747, %3744 ], [ %3738, %3653 ]
  %3752 = fmul float %3751, %3741
  %3753 = fmul float %3750, %3741
  %3754 = fmul float %3749, %3741
  %3755 = fadd fast float %3754, %3434
  %3756 = fadd fast float %3753, %3435
  %3757 = fadd fast float %3752, %3436
  %3758 = icmp ne i32 %3654, 0
  %3759 = select i1 %3758, float 1.000000e+00, float 0.000000e+00
  %3760 = fmul fast float %3645, %3759
  %3761 = fsub fast float %3699, %3441
  %3762 = fsub fast float %3700, %3442
  %3763 = fsub fast float %3701, %3443
  %3764 = fmul fast float %3761, %3760
  %3765 = fmul fast float %3762, %3760
  %3766 = fmul fast float %3763, %3760
  %3767 = fadd fast float %3764, %3441
  %3768 = fadd fast float %3765, %3442
  %3769 = fadd fast float %3766, %3443
  %3770 = fsub fast float %3672, %3440
  %3771 = fmul fast float %3770, %3760
  %3772 = fadd fast float %3771, %3440
  %3773 = fmul fast float %3760, %3430
  %3774 = fsub fast float %3430, %3773
  %3775 = fmul fast float %3760, %3429
  %3776 = fsub fast float %3429, %3775
  %3777 = fadd fast float %3645, %3439
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = fsub fast float %3692, %3438
  %3780 = fmul fast float %3779, %3741
  %3781 = fadd fast float %3780, %3438
  %3782 = fsub fast float %3678, %3437
  %3783 = fmul fast float %3782, %3741
  %3784 = fadd fast float %3783, %3437
  %3785 = call float @dx.op.dot3.f32(i32 55, float %3699, float %3700, float %3701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 1
  %3789 = fmul fast float %3788, %3785
  %3790 = fadd fast float %3789, %3787
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = bitcast float %3489 to i32
  %3793 = and i32 %3792, 65535
  %3794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3793)  ; LegacyF16ToF32(value)
  %3795 = lshr i32 %3792, 16
  %3796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3795)  ; LegacyF16ToF32(value)
  %3797 = fcmp fast oge float %3794, 0.000000e+00
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = select i1 %3797, float %3794, float %3799
  %3801 = fadd fast float %3800, %3796
  %3802 = fsub fast float %3791, %3428
  %3803 = fmul fast float %3802, %3645
  %3804 = fadd fast float %3803, %3428
  %3805 = fmul fast float %3801, %3645
  %3806 = call float @dx.op.binary.f32(i32 35, float %3427, float %3805)  ; FMax(a,b)
  %3807 = call float @dx.op.binary.f32(i32 35, float %3426, float %3645)  ; FMax(a,b)
  %3808 = and i32 %3575, 16
  %3809 = icmp eq i32 %3808, 0
  br i1 %3809, label %3832, label %3810

; <label>:3810                                    ; preds = %3748
  %3811 = bitcast float %3495 to i32
  %3812 = add i32 %3492, 0
  %3813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3812, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3813, %dx.types.Handle %3658, float %3586, float %3589, float undef, float undef, i32 0, i32 0, i32 undef, float %3591, float %3593, float undef, float %3595, float %3597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = and i32 %3811, 65535
  %3819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3818)  ; LegacyF16ToF32(value)
  %3820 = fmul fast float %3815, %3486
  %3821 = fmul fast float %3816, %3487
  %3822 = fmul fast float %3817, %3488
  %3823 = and i32 %3575, 16384
  %3824 = icmp ne i32 %3823, 0
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 0
  %3827 = select i1 %3824, float %3826, float 1.000000e+00
  %3828 = fmul fast float %3827, %3819
  %3829 = fmul fast float %3820, %3828
  %3830 = fmul fast float %3821, %3828
  %3831 = fmul fast float %3822, %3828
  br label %3832

; <label>:3832                                    ; preds = %3810, %3748
  %3833 = phi float [ %3829, %3810 ], [ 0.000000e+00, %3748 ]
  %3834 = phi float [ %3830, %3810 ], [ 0.000000e+00, %3748 ]
  %3835 = phi float [ %3831, %3810 ], [ 0.000000e+00, %3748 ]
  %3836 = fsub fast float %3833, %3431
  %3837 = fsub fast float %3834, %3432
  %3838 = fsub fast float %3835, %3433
  %3839 = fmul fast float %3836, %3645
  %3840 = fmul fast float %3837, %3645
  %3841 = fmul fast float %3838, %3645
  %3842 = fadd fast float %3839, %3431
  %3843 = fadd fast float %3840, %3432
  %3844 = fadd fast float %3841, %3433
  br label %3545

; <label>:3845                                    ; preds = %3545
  br label %3846

; <label>:3846                                    ; preds = %3845, %3360
  %3847 = phi float [ 0.000000e+00, %3360 ], [ %3546, %3845 ]
  %3848 = phi float [ %1063, %3360 ], [ %3547, %3845 ]
  %3849 = phi float [ %3304, %3360 ], [ %3548, %3845 ]
  %3850 = phi float [ %3283, %3360 ], [ %3549, %3845 ]
  %3851 = phi float [ 0.000000e+00, %3360 ], [ %3550, %3845 ]
  %3852 = phi float [ 0.000000e+00, %3360 ], [ %3551, %3845 ]
  %3853 = phi float [ %3326, %3360 ], [ %3552, %3845 ]
  %3854 = phi float [ %3328, %3360 ], [ %3553, %3845 ]
  %3855 = phi float [ %3330, %3360 ], [ %3554, %3845 ]
  %3856 = phi float [ %3356, %3360 ], [ %3555, %3845 ]
  %3857 = phi float [ %3357, %3360 ], [ %3556, %3845 ]
  %3858 = phi float [ %3358, %3360 ], [ %3557, %3845 ]
  %3859 = phi float [ %3282, %3360 ], [ %3558, %3845 ]
  %3860 = phi float [ %3281, %3360 ], [ %3559, %3845 ]
  %3861 = phi float [ 0.000000e+00, %3360 ], [ %3560, %3845 ]
  %3862 = phi float [ %3280, %3360 ], [ %3561, %3845 ]
  %3863 = phi float [ %3311, %3360 ], [ %3562, %3845 ]
  %3864 = phi float [ %3312, %3360 ], [ %3563, %3845 ]
  %3865 = phi float [ %3313, %3360 ], [ %3564, %3845 ]
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3856, float %3857, float %3858, float %3856, float %3857, float %3858)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3867, %3856
  %3869 = fmul fast float %3867, %3857
  %3870 = fmul fast float %3867, %3858
  %3871 = fadd fast float %3861, %1063
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3870, float %3868, float %3869, float %3870)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = call float @dx.op.unary.f32(i32 25, float %3873)  ; Rsqrt(value)
  %3875 = fmul fast float %3874, %3868
  %3876 = fmul fast float %3874, %3869
  %3877 = fmul fast float %3874, %3870
  br label %3878

; <label>:3878                                    ; preds = %3846, %3271
  %3879 = phi float [ %3875, %3846 ], [ %3356, %3271 ]
  %3880 = phi float [ %3876, %3846 ], [ %3357, %3271 ]
  %3881 = phi float [ %3877, %3846 ], [ %3358, %3271 ]
  %3882 = phi float [ %3863, %3846 ], [ %3311, %3271 ]
  %3883 = phi float [ %3864, %3846 ], [ %3312, %3271 ]
  %3884 = phi float [ %3865, %3846 ], [ %3313, %3271 ]
  %3885 = phi float [ %3853, %3846 ], [ %3326, %3271 ]
  %3886 = phi float [ %3854, %3846 ], [ %3328, %3271 ]
  %3887 = phi float [ %3855, %3846 ], [ %3330, %3271 ]
  %3888 = phi float [ %3862, %3846 ], [ %3280, %3271 ]
  %3889 = phi float [ %3872, %3846 ], [ %1063, %3271 ]
  %3890 = phi float [ %3860, %3846 ], [ %3281, %3271 ]
  %3891 = phi float [ %3859, %3846 ], [ %3282, %3271 ]
  %3892 = phi float [ %3852, %3846 ], [ 0.000000e+00, %3271 ]
  %3893 = phi float [ %3851, %3846 ], [ 0.000000e+00, %3271 ]
  %3894 = phi float [ %3847, %3846 ], [ 0.000000e+00, %3271 ]
  %3895 = phi float [ %3849, %3846 ], [ %3304, %3271 ]
  %3896 = phi float [ %3848, %3846 ], [ %1063, %3271 ]
  %3897 = phi float [ %3850, %3846 ], [ %3283, %3271 ]
  %3898 = fadd fast float %3888, 0xBFB99999A0000000
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3899, 0x3FF1C71C80000000
  %3901 = call float @dx.op.binary.f32(i32 36, float %3888, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3902 = fsub fast float 1.000000e+00, %3900
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fmul fast float %3903, %3882
  %3905 = fmul fast float %3903, %3883
  %3906 = fmul fast float %3903, %3884
  %3907 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3908 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3909 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3910 = fmul fast float %3900, %3882
  %3911 = fmul fast float %3900, %3883
  %3912 = fmul fast float %3900, %3884
  %3913 = fadd fast float %3910, %3901
  %3914 = fadd fast float %3911, %3901
  %3915 = fadd fast float %3912, %3901
  %3916 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3917 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.i32 %3920, 3
  %3922 = and i32 %3921, 8
  %3923 = icmp ne i32 %3922, 0
  %3924 = call float @dx.op.binary.f32(i32 35, float %3907, float %3882)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3908, float %3882)  ; FMax(a,b)
  %3926 = call float @dx.op.binary.f32(i32 35, float %3909, float %3882)  ; FMax(a,b)
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = select i1 %268, float %3882, float %3907
  %3929 = select i1 %268, float %3927, float %3908
  %3930 = select i1 %268, float 1.000000e+00, float %3909
  %3931 = select i1 %3923, float %3924, float %3928
  %3932 = select i1 %3923, float %3925, float %3929
  %3933 = select i1 %3923, float %3926, float %3930
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3938 = fadd fast float %3935, %196
  %3939 = fadd fast float %3936, %197
  %3940 = fadd fast float %3937, %198
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = fsub fast float %3938, %3942
  %3945 = fsub fast float %3939, %3943
  %3946 = fmul fast float %3944, %3944
  %3947 = fmul fast float %3945, %3945
  %3948 = fadd fast float %3946, %3947
  %3949 = call float @dx.op.unary.f32(i32 24, float %3948)  ; Sqrt(value)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3951 = fcmp fast olt float %3949, %3950
  br i1 %3951, label %3952, label %4019

; <label>:3952                                    ; preds = %3878
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3960 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3963 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3964 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3965 = fadd fast float %3962, %3938
  %3966 = fadd fast float %3963, %3939
  %3967 = fadd fast float %3964, %3940
  %3968 = fmul fast float %3965, %3954
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3956, float %3968)  ; FMad(a,b,c)
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3967, float %3958, float %3969)  ; FMad(a,b,c)
  %3971 = fmul fast float %3965, %3959
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3960, float %3971)  ; FMad(a,b,c)
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3967, float %3961, float %3972)  ; FMad(a,b,c)
  %3974 = fsub fast float %3970, %3962
  %3975 = fsub fast float %3973, %3963
  %3976 = fsub fast float %3974, %3942
  %3977 = fadd fast float %3976, %3950
  %3978 = fsub fast float %3975, %3943
  %3979 = fadd fast float %3978, %3950
  %3980 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3981 = fmul fast float %3977, %3980
  %3982 = fmul fast float %3979, %3980
  %3983 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3984 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3985 = fsub fast float 1.000000e+00, %3983
  %3986 = fsub fast float 1.000000e+00, %3984
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = fcmp fast ugt float %3988, 0.000000e+00
  br i1 %3989, label %3990, label %4293

; <label>:3990                                    ; preds = %3952
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3993 = fmul fast float %3992, %3988
  %3994 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3995 = fadd fast float %3994, %3993
  %3996 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3997 = fadd fast float %3995, %3964
  %3998 = fmul fast float %3970, %3958
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3961, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3996, float %3999)  ; FMad(a,b,c)
  %4001 = fsub fast float %4000, %3964
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4004 = fsub fast float %4001, %4003
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = fadd fast float %4010, %4006
  %4014 = fmul fast float %4013, 0x3F847AE140000000
  %4015 = fadd fast float %4011, %4007
  %4016 = fmul fast float %4015, 0x3F847AE140000000
  %4017 = fadd fast float %4012, %4008
  %4018 = fmul fast float %4017, 0x3F847AE140000000
  br label %4293

; <label>:4019                                    ; preds = %3878
  %4020 = and i32 %247, 1
  %4021 = icmp eq i32 %4020, 0
  br i1 %4021, label %4293, label %4022

; <label>:4022                                    ; preds = %4019
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4030 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4031 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4033 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4034 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4035 = fadd fast float %4032, %3938
  %4036 = fadd fast float %4033, %3939
  %4037 = fadd fast float %4034, %3940
  %4038 = fmul fast float %4035, %4024
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4026, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4028, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %4035, %4029
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4030, float %4041)  ; FMad(a,b,c)
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4031, float %4042)  ; FMad(a,b,c)
  %4044 = fsub fast float %4040, %4032
  %4045 = fsub fast float %4043, %4033
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 0
  %4055 = extractvalue %dx.types.CBufRet.i32 %4053, 1
  %4056 = udiv i32 %4055, %4054
  %4057 = fsub fast float %4044, %4047
  %4058 = fsub fast float %4045, %4048
  %4059 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4058, float 0.000000e+00)  ; FMax(a,b)
  %4061 = call float @dx.op.binary.f32(i32 36, float %4059, float %4049)  ; FMin(a,b)
  %4062 = call float @dx.op.binary.f32(i32 36, float %4060, float %4050)  ; FMin(a,b)
  %4063 = add i32 %4054, -1
  %4064 = add i32 %4056, -1
  %4065 = fmul fast float %4061, %4052
  %4066 = fmul fast float %4062, %4052
  %4067 = fptoui float %4065 to i32
  %4068 = fptoui float %4066 to i32
  %4069 = call i32 @dx.op.binary.i32(i32 40, i32 %4067, i32 %4063)  ; UMin(a,b)
  %4070 = call i32 @dx.op.binary.i32(i32 40, i32 %4068, i32 %4064)  ; UMin(a,b)
  %4071 = mul i32 %4070, %4054
  %4072 = add i32 %4071, %4069
  %4073 = shl i32 %4072, 2
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = icmp eq i32 %4075, -1
  br i1 %4076, label %4293, label %4077

; <label>:4077                                    ; preds = %4022
  %4078 = mul i32 %4075, 148
  %4079 = add i32 %4078, 4
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4078, 8
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4078, 36
  %4086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = add i32 %4078, 60
  %4089 = add i32 %4078, 92
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = add i32 %4078, 116
  %4093 = fsub fast float %4044, %4081
  %4094 = fsub fast float %4045, %4084
  %4095 = fmul fast float %4052, %4093
  %4096 = fmul fast float %4052, %4094
  %4097 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4098 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4099 = fsub fast float 1.000000e+00, %4098
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4102 = call float @dx.op.unary.f32(i32 83, float %4097)  ; DerivCoarseX(value)
  %4103 = call float @dx.op.unary.f32(i32 83, float %4099)  ; DerivCoarseX(value)
  %4104 = call float @dx.op.unary.f32(i32 84, float %4097)  ; DerivCoarseY(value)
  %4105 = call float @dx.op.unary.f32(i32 84, float %4099)  ; DerivCoarseY(value)
  %4106 = fmul fast float %4102, %4101
  %4107 = fmul fast float %4103, %4101
  %4108 = fmul fast float %4104, %4101
  %4109 = fmul fast float %4105, %4101
  %4110 = call float @dx.op.dot2.f32(i32 54, float %4108, float %4109, float %4108, float %4109)  ; Dot2(ax,ay,bx,by)
  %4111 = call float @dx.op.dot2.f32(i32 54, float %4106, float %4107, float %4106, float %4107)  ; Dot2(ax,ay,bx,by)
  %4112 = call float @dx.op.binary.f32(i32 35, float %4111, float %4110)  ; FMax(a,b)
  %4113 = call float @dx.op.unary.f32(i32 23, float %4112)  ; Log(value)
  %4114 = fmul fast float %4113, 5.000000e-01
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4117 = fadd fast float %4116, %4114
  %4118 = call float @dx.op.binary.f32(i32 35, float %4117, float 0.000000e+00)  ; FMax(a,b)
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = fadd fast float %4120, %4118
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4124 = fadd fast float %4121, %4123
  %4125 = add i32 %4091, 0
  %4126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4125, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4127 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4126, i32 0)  ; GetDimensions(handle,mipLevel)
  %4128 = extractvalue %dx.types.Dimensions %4127, 0
  %4129 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4128)  ; FirstbitLo(value)
  %4130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.i32 %4130, 1
  %4132 = sub nsw i32 %4131, %4129
  %4133 = sitofp i32 %4132 to float
  %4134 = fsub fast float %4124, %4133
  %4135 = call float @dx.op.binary.f32(i32 35, float %4134, float 0.000000e+00)  ; FMax(a,b)
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4126, %dx.types.Handle %47, float %4097, float %4099, float %4087, float undef, i32 0, i32 0, i32 undef, float %4135)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = fcmp ule float %4137, 0x3FE0101020000000
  %4139 = extractvalue %dx.types.CBufRet.i32 %4130, 0
  %4140 = and i32 %4139, 128
  %4141 = icmp ne i32 %4140, 0
  %4142 = and i1 %4138, %4141
  br i1 %4142, label %4293, label %4143

; <label>:4143                                    ; preds = %4077
  %4144 = add i32 %4078, 20
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = add i32 %4078, 24
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = add i32 %4078, 40
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = add i32 %4078, 96
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4158 = fmul fast float %4157, %4097
  %4159 = fmul fast float %4157, %4099
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4161 = fadd fast float %4158, %4160
  %4162 = fadd fast float %4159, %4160
  %4163 = add i32 %4155, 0
  %4164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4164, i32 0)  ; GetDimensions(handle,mipLevel)
  %4166 = extractvalue %dx.types.Dimensions %4165, 0
  %4167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4166)  ; FirstbitLo(value)
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 1
  %4170 = sub nsw i32 %4169, %4167
  %4171 = sitofp i32 %4170 to float
  %4172 = fsub fast float %4121, %4171
  %4173 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4164, %dx.types.Handle %47, float %4161, float %4162, float %4152, float undef, i32 0, i32 0, i32 undef, float %4173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fmul fast float %4175, %4146
  %4177 = fadd fast float %4176, %4149
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4178, 2
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4186 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4187 = fadd fast float %4183, %4044
  %4188 = fadd fast float %4185, %4045
  %4189 = fadd fast float %4177, %4186
  %4190 = fmul fast float %4187, %4179
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4180, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4181, float %4191)  ; FMad(a,b,c)
  %4193 = fsub fast float %4192, %4186
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4196 = fsub fast float %4193, %4195
  %4197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.i32 %4197, 0
  %4199 = call i32 @dx.op.binary.i32(i32 40, i32 %4075, i32 %4198)  ; UMin(a,b)
  %4200 = mul i32 %4199, 36
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = add i32 %4200, 4
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = fmul fast float %4205, %4097
  %4207 = fmul fast float %4205, %4099
  %4208 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4209 = fadd fast float %4206, %4208
  %4210 = fadd fast float %4207, %4208
  %4211 = icmp eq i32 %4202, 0
  br i1 %4211, label %4280, label %4212

; <label>:4212                                    ; preds = %4143
  br label %4213

; <label>:4213                                    ; preds = %4270, %4212
  %4214 = phi float [ %4271, %4270 ], [ 0.000000e+00, %4212 ]
  %4215 = phi float [ %4272, %4270 ], [ 0.000000e+00, %4212 ]
  %4216 = phi float [ %4273, %4270 ], [ 0.000000e+00, %4212 ]
  %4217 = phi float [ %4274, %4270 ], [ 0.000000e+00, %4212 ]
  %4218 = phi float [ %4275, %4270 ], [ 0.000000e+00, %4212 ]
  %4219 = phi float [ %4276, %4270 ], [ 0.000000e+00, %4212 ]
  %4220 = phi i32 [ %4277, %4270 ], [ 0, %4212 ]
  %4221 = shl i32 %4220, 2
  %4222 = add i32 %4088, %4221
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4092, %4221
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = add i32 %4227, 0
  %4229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4228, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4229, i32 0)  ; GetDimensions(handle,mipLevel)
  %4231 = extractvalue %dx.types.Dimensions %4230, 0
  %4232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4231)  ; FirstbitLo(value)
  %4233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.i32 %4233, 1
  %4235 = sub nsw i32 %4234, %4232
  %4236 = sitofp i32 %4235 to float
  %4237 = fsub fast float %4121, %4236
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float 0.000000e+00)  ; FMax(a,b)
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4229, %dx.types.Handle %47, float %4209, float %4210, float %4224, float undef, i32 0, i32 0, i32 undef, float %4238)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = fcmp fast ogt float %4240, 0.000000e+00
  br i1 %4241, label %4242, label %4270

; <label>:4242                                    ; preds = %4213
  %4243 = add i32 %4203, %4221
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = and i32 %4245, 32767
  %4247 = mul nuw nsw i32 %4246, 928
  %4248 = add nuw nsw i32 %4247, 48
  %4249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.ResRet.f32 %4249, 2
  %4253 = add nuw nsw i32 %4247, 60
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = fmul fast float %4250, %4240
  %4259 = fmul fast float %4251, %4240
  %4260 = fmul fast float %4252, %4240
  %4261 = fadd fast float %4258, %4214
  %4262 = fadd fast float %4259, %4215
  %4263 = fadd fast float %4260, %4216
  %4264 = fmul fast float %4255, %4240
  %4265 = fmul fast float %4256, %4240
  %4266 = fmul fast float %4257, %4240
  %4267 = fadd fast float %4264, %4217
  %4268 = fadd fast float %4265, %4218
  %4269 = fadd fast float %4266, %4219
  br label %4270

; <label>:4270                                    ; preds = %4242, %4213
  %4271 = phi float [ %4261, %4242 ], [ %4214, %4213 ]
  %4272 = phi float [ %4262, %4242 ], [ %4215, %4213 ]
  %4273 = phi float [ %4263, %4242 ], [ %4216, %4213 ]
  %4274 = phi float [ %4267, %4242 ], [ %4217, %4213 ]
  %4275 = phi float [ %4268, %4242 ], [ %4218, %4213 ]
  %4276 = phi float [ %4269, %4242 ], [ %4219, %4213 ]
  %4277 = add nuw i32 %4220, 1
  %4278 = icmp eq i32 %4277, %4202
  br i1 %4278, label %4279, label %4213

; <label>:4279                                    ; preds = %4270
  br label %4280

; <label>:4280                                    ; preds = %4279, %4143
  %4281 = phi float [ 0.000000e+00, %4143 ], [ %4271, %4279 ]
  %4282 = phi float [ 0.000000e+00, %4143 ], [ %4272, %4279 ]
  %4283 = phi float [ 0.000000e+00, %4143 ], [ %4273, %4279 ]
  %4284 = phi float [ 0.000000e+00, %4143 ], [ %4274, %4279 ]
  %4285 = phi float [ 0.000000e+00, %4143 ], [ %4275, %4279 ]
  %4286 = phi float [ 0.000000e+00, %4143 ], [ %4276, %4279 ]
  %4287 = fadd fast float %4284, %4281
  %4288 = fmul fast float %4287, 0x3F847AE140000000
  %4289 = fadd fast float %4285, %4282
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  %4291 = fadd fast float %4286, %4283
  %4292 = fmul fast float %4291, 0x3F847AE140000000
  br label %4293

; <label>:4293                                    ; preds = %4280, %4077, %4022, %4019, %3990, %3952
  %4294 = phi float [ %4004, %3990 ], [ -1.310720e+05, %3952 ], [ %4196, %4280 ], [ -1.310720e+05, %4022 ], [ -1.310720e+05, %4077 ], [ -1.310720e+05, %4019 ]
  %4295 = phi float [ %4014, %3990 ], [ 0.000000e+00, %3952 ], [ %4288, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4296 = phi float [ %4016, %3990 ], [ 0.000000e+00, %3952 ], [ %4290, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4297 = phi float [ %4018, %3990 ], [ 0.000000e+00, %3952 ], [ %4292, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4298 = phi i1 [ true, %3990 ], [ false, %3952 ], [ true, %4280 ], [ false, %4022 ], [ false, %4077 ], [ false, %4019 ]
  %4299 = and i32 %247, 3
  %4300 = icmp eq i32 %4299, 1
  %4301 = select i1 %4300, float 1.000000e+00, float 0.000000e+00
  %4302 = fsub fast float %4294, %198
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = select i1 %4298, float %4303, float 1.000000e+00
  %4305 = fmul fast float %4304, %4301
  %4306 = icmp eq i32 %4299, 3
  %4307 = select i1 %4306, float 1.000000e+00, float %4305
  %4308 = call float @dx.op.binary.f32(i32 35, float %3894, float %4307)  ; FMax(a,b)
  %4309 = fcmp fast olt float %4307, 1.000000e+00
  %4310 = fcmp uge float %73, 0.000000e+00
  %4311 = and i1 %4310, %4309
  br i1 %4311, label %4312, label %4322

; <label>:4312                                    ; preds = %4293
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.ResRet.f32 %4313, 1
  %4316 = extractvalue %dx.types.ResRet.f32 %4313, 2
  %4317 = fadd fast float %4314, %4308
  %4318 = fcmp ule float %72, 0.000000e+00
  %4319 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4320 = select i1 %4318, float %4319, float 1.000000e+00
  %4321 = fmul fast float %4320, %4316
  br label %4322

; <label>:4322                                    ; preds = %4312, %4293
  %4323 = phi float [ %4317, %4312 ], [ %4308, %4293 ]
  %4324 = phi float [ %4315, %4312 ], [ 0.000000e+00, %4293 ]
  %4325 = phi float [ %4321, %4312 ], [ 0.000000e+00, %4293 ]
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = fcmp fast une float %4327, 0.000000e+00
  %4330 = fcmp fast une float %4328, 0.000000e+00
  %4331 = or i1 %4329, %4330
  br i1 %4331, label %4332, label %4891

; <label>:4332                                    ; preds = %4322
  br i1 %4329, label %4333, label %4606

; <label>:4333                                    ; preds = %4332
  %4334 = call float @dx.op.unary.f32(i32 23, float %3891)  ; Log(value)
  %4335 = fmul fast float %4334, 4.000000e+00
  %4336 = call float @dx.op.unary.f32(i32 21, float %4335)  ; Exp(value)
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = fmul fast float %4338, %60
  %4340 = fmul fast float %4338, %61
  %4341 = fmul fast float %4338, %62
  %4342 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4343 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4344 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4345 = call float @dx.op.unary.f32(i32 23, float %4342)  ; Log(value)
  %4346 = call float @dx.op.unary.f32(i32 23, float %4343)  ; Log(value)
  %4347 = call float @dx.op.unary.f32(i32 23, float %4344)  ; Log(value)
  %4348 = fmul fast float %4345, 4.000000e+00
  %4349 = fmul fast float %4346, 4.000000e+00
  %4350 = fmul fast float %4347, 4.000000e+00
  %4351 = call float @dx.op.unary.f32(i32 21, float %4348)  ; Exp(value)
  %4352 = call float @dx.op.unary.f32(i32 21, float %4349)  ; Exp(value)
  %4353 = call float @dx.op.unary.f32(i32 21, float %4350)  ; Exp(value)
  %4354 = fadd fast float %4352, %4351
  %4355 = fadd fast float %4354, %4353
  %4356 = fdiv fast float 1.000000e+00, %4355
  %4357 = fmul fast float %4356, %4351
  %4358 = fcmp fast ogt float %69, 0.000000e+00
  %4359 = fcmp fast ogt float %70, 0.000000e+00
  %4360 = fcmp fast ogt float %71, 0.000000e+00
  %4361 = fcmp fast olt float %69, 0.000000e+00
  %4362 = fcmp fast olt float %70, 0.000000e+00
  %4363 = fcmp fast olt float %71, 0.000000e+00
  %4364 = zext i1 %4358 to i32
  %4365 = zext i1 %4359 to i32
  %4366 = zext i1 %4360 to i32
  %4367 = zext i1 %4361 to i32
  %4368 = zext i1 %4362 to i32
  %4369 = zext i1 %4363 to i32
  %4370 = sub nsw i32 %4364, %4367
  %4371 = sub nsw i32 %4365, %4368
  %4372 = sub nsw i32 %4366, %4369
  %4373 = call float @dx.op.unary.f32(i32 83, float %4339)  ; DerivCoarseX(value)
  %4374 = call float @dx.op.unary.f32(i32 83, float %4340)  ; DerivCoarseX(value)
  %4375 = call float @dx.op.unary.f32(i32 83, float %4341)  ; DerivCoarseX(value)
  %4376 = call float @dx.op.unary.f32(i32 84, float %4339)  ; DerivCoarseY(value)
  %4377 = call float @dx.op.unary.f32(i32 84, float %4340)  ; DerivCoarseY(value)
  %4378 = call float @dx.op.unary.f32(i32 84, float %4341)  ; DerivCoarseY(value)
  %4379 = fcmp fast ole float %279, %4357
  %4380 = fmul fast float %4356, %4354
  %4381 = fcmp fast ole float %279, %4380
  %4382 = select i1 %4381, float %4341, float %4339
  %4383 = select i1 %4381, float %4339, float %4340
  %4384 = select i1 %4379, float %4340, float %4382
  %4385 = select i1 %4379, float %4341, float %4383
  %4386 = select i1 %4381, float %4375, float %4373
  %4387 = select i1 %4381, float %4373, float %4374
  %4388 = select i1 %4379, float %4374, float %4386
  %4389 = select i1 %4379, float %4375, float %4387
  %4390 = select i1 %4381, float %4378, float %4376
  %4391 = select i1 %4381, float %4376, float %4377
  %4392 = select i1 %4379, float %4377, float %4390
  %4393 = select i1 %4379, float %4378, float %4391
  %4394 = call float @dx.op.unary.f32(i32 27, float %4384)  ; Round_ni(value)
  %4395 = call float @dx.op.unary.f32(i32 27, float %4385)  ; Round_ni(value)
  %4396 = fptosi float %4394 to i32
  %4397 = fptosi float %4395 to i32
  %4398 = xor i32 %4397, %4396
  %4399 = sitofp i32 %4398 to float
  %4400 = fptosi float %4399 to i32
  %4401 = sitofp i32 %4400 to float
  %4402 = fmul fast float %4401, 0x3FE3C6EF40000000
  %4403 = frem fast float %4394, 2.560000e+02
  %4404 = frem fast float %4395, 2.560000e+02
  %4405 = fptoui float %4403 to i32
  %4406 = fptoui float %4404 to i32
  %4407 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4405, i32 %4406, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = fadd fast float %4408, %4402
  %4412 = fadd fast float %4409, %4402
  %4413 = fadd fast float %4410, %4402
  %4414 = call float @dx.op.unary.f32(i32 22, float %4411)  ; Frc(value)
  %4415 = call float @dx.op.unary.f32(i32 22, float %4412)  ; Frc(value)
  %4416 = call float @dx.op.unary.f32(i32 22, float %4413)  ; Frc(value)
  %4417 = fmul fast float %4416, 0x401921FB60000000
  %4418 = call float @dx.op.unary.f32(i32 13, float %4417)  ; Sin(value)
  %4419 = call float @dx.op.unary.f32(i32 12, float %4417)  ; Cos(value)
  %4420 = fsub fast float -0.000000e+00, %4419
  %4421 = fmul fast float %4419, %4384
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4385, float %4421)  ; FMad(a,b,c)
  %4423 = fmul fast float %4418, %4384
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4385, float %4423)  ; FMad(a,b,c)
  %4425 = fadd fast float %4422, %4414
  %4426 = fadd fast float %4424, %4415
  %4427 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4428 = bitcast float %4427 to i32
  %4429 = icmp eq i32 %4428, 0
  br i1 %4429, label %4468, label %4430

; <label>:4430                                    ; preds = %4333
  %4431 = add i32 %4428, 0
  %4432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4432, %dx.types.Handle %110, float %4425, float %4426, float undef, float undef, i32 0, i32 0, i32 undef, float %4388, float %4389, float undef, float %4392, float %4393, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4438 = fsub fast float 1.000000e+00, %4327
  %4439 = call float @dx.op.binary.f32(i32 35, float %4438, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4440 = bitcast float %4327 to i32
  %4441 = sitofp i32 %4440 to float
  %4442 = fadd fast float %4441, 0xC1CFBF8940000000
  %4443 = fmul fast float %4437, %4442
  %4444 = fadd fast float %4443, 0x41CFBF8940000000
  %4445 = fptosi float %4444 to i32
  %4446 = bitcast i32 %4445 to float
  %4447 = bitcast float %4439 to i32
  %4448 = sitofp i32 %4447 to float
  %4449 = fadd fast float %4448, 0xC1CFBF8940000000
  %4450 = fmul fast float %4449, %4437
  %4451 = fadd fast float %4450, 0x41CFBF8940000000
  %4452 = fptosi float %4451 to i32
  %4453 = bitcast i32 %4452 to float
  %4454 = fmul fast float %4446, %4436
  %4455 = fmul fast float %4453, %4436
  %4456 = fsub fast float %4439, %4454
  %4457 = fadd fast float %4455, %4439
  %4458 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4460 = fsub fast float %4434, %4458
  %4461 = fsub fast float %4459, %4458
  %4462 = bitcast float %4461 to i32
  %4463 = sub nsw i32 2129859010, %4462
  %4464 = bitcast i32 %4463 to float
  %4465 = fmul fast float %4464, %4460
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fcmp fast olt float %4466, 0x3F70101020000000
  br i1 %4467, label %4606, label %4468

; <label>:4468                                    ; preds = %4430, %4333
  %4469 = phi float [ %4466, %4430 ], [ %4327, %4333 ]
  %4470 = fmul fast float %4469, %4336
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 1
  %4473 = extractvalue %dx.types.CBufRet.i32 %4471, 0
  %4474 = add i32 %4473, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4475, %dx.types.Handle %109, float %4425, float %4426, float undef, float undef, i32 0, i32 0, i32 undef, float %4388, float %4389, float undef, float %4392, float %4393, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = extractvalue %dx.types.ResRet.f32 %4476, 3
  %4481 = and i32 %4472, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = lshr i32 %4472, 8
  %4484 = and i32 %4483, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = fmul fast float %4480, %4482
  %4487 = fadd fast float %4486, %4485
  %4488 = fmul fast float %4487, 0x3F70101000000000
  %4489 = fadd fast float %4488, 0xBFB99999A0000000
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4490, 0x3FF1C71C80000000
  %4492 = call float @dx.op.binary.f32(i32 36, float %4488, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4493 = fsub fast float 1.000000e+00, %4491
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fmul fast float %4494, %4477
  %4496 = fmul fast float %4494, %4478
  %4497 = fmul fast float %4494, %4479
  %4498 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = fmul fast float %4491, %4477
  %4502 = fmul fast float %4491, %4478
  %4503 = fmul fast float %4491, %4479
  %4504 = fadd fast float %4501, %4492
  %4505 = fadd fast float %4502, %4492
  %4506 = fadd fast float %4503, %4492
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.i32 %4510, 3
  %4512 = extractvalue %dx.types.CBufRet.i32 %4510, 2
  %4513 = add i32 %4512, 0
  %4514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4514, %dx.types.Handle %109, float %4425, float %4426, float undef, float undef, i32 0, i32 0, i32 undef, float %4388, float %4389, float undef, float %4392, float %4393, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4519 = extractvalue %dx.types.ResRet.f32 %4515, 3
  %4520 = and i32 %4511, 255
  %4521 = uitofp i32 %4520 to float
  %4522 = lshr i32 %4511, 8
  %4523 = and i32 %4522, 255
  %4524 = uitofp i32 %4523 to float
  %4525 = lshr i32 %4511, 16
  %4526 = and i32 %4525, 255
  %4527 = uitofp i32 %4526 to float
  %4528 = fmul fast float %4527, 0x3F70101000000000
  %4529 = fmul fast float %4516, %4521
  %4530 = fadd fast float %4529, %4524
  %4531 = fmul fast float %4530, 0x3F70101000000000
  %4532 = fadd fast float %4517, -5.000000e-01
  %4533 = fadd fast float %4519, -5.000000e-01
  %4534 = fmul fast float %4532, %4528
  %4535 = fmul fast float %4533, %4528
  %4536 = fadd fast float %4534, 5.000000e-01
  %4537 = fadd fast float %4535, 5.000000e-01
  %4538 = fmul fast float %4536, 2.000000e+00
  %4539 = fadd fast float %4538, -1.000000e+00
  %4540 = fmul fast float %4537, 2.000000e+00
  %4541 = fadd fast float %4540, -1.000000e+00
  %4542 = fadd fast float %4539, %4541
  %4543 = fmul fast float %4542, 5.000000e-01
  %4544 = fsub fast float %4539, %4541
  %4545 = fmul fast float %4544, 5.000000e-01
  %4546 = call float @dx.op.unary.f32(i32 6, float %4543)  ; FAbs(value)
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4549 = fsub fast float %4547, %4548
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4545, float %4549, float %4543, float %4545, float %4549)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = call float @dx.op.unary.f32(i32 25, float %4550)  ; Rsqrt(value)
  %4552 = fmul fast float %4543, %4551
  %4553 = fmul fast float %4545, %4551
  %4554 = select i1 %4381, i32 %4371, i32 %4372
  %4555 = select i1 %4379, i32 %4370, i32 %4554
  %4556 = sitofp i32 %4555 to float
  %4557 = fmul fast float %4549, %4556
  %4558 = fmul fast float %4557, %4551
  %4559 = select i1 %4381, float %4558, float %4553
  %4560 = select i1 %4381, float %4553, float %4558
  %4561 = select i1 %4379, float %4558, float %4552
  %4562 = select i1 %4379, float %4553, float %4559
  %4563 = select i1 %4379, float %4552, float %4560
  %4564 = fsub fast float %4498, %3931
  %4565 = fsub fast float %4499, %3932
  %4566 = fsub fast float %4500, %3933
  %4567 = fmul fast float %4564, %4470
  %4568 = fmul fast float %4565, %4470
  %4569 = fmul fast float %4566, %4470
  %4570 = fadd fast float %4567, %3931
  %4571 = fadd fast float %4568, %3932
  %4572 = fadd fast float %4569, %3933
  %4573 = fsub fast float %4507, %3916
  %4574 = fsub fast float %4508, %3917
  %4575 = fsub fast float %4509, %3918
  %4576 = fmul fast float %4573, %4470
  %4577 = fmul fast float %4574, %4470
  %4578 = fmul fast float %4575, %4470
  %4579 = fadd fast float %4576, %3916
  %4580 = fadd fast float %4577, %3917
  %4581 = fadd fast float %4578, %3918
  %4582 = fadd fast float %4561, %3879
  %4583 = fadd fast float %4562, %3880
  %4584 = fadd fast float %4563, %3881
  %4585 = call float @dx.op.dot3.f32(i32 55, float %4582, float %4583, float %4584, float %4582, float %4583, float %4584)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = call float @dx.op.unary.f32(i32 25, float %4585)  ; Rsqrt(value)
  %4587 = fmul fast float %4582, %4586
  %4588 = fmul fast float %4583, %4586
  %4589 = fmul fast float %4584, %4586
  %4590 = fsub fast float %4587, %3879
  %4591 = fsub fast float %4588, %3880
  %4592 = fsub fast float %4589, %3881
  %4593 = fmul fast float %4590, %4470
  %4594 = fmul fast float %4591, %4470
  %4595 = fmul fast float %4592, %4470
  %4596 = fadd fast float %4593, %3879
  %4597 = fadd fast float %4594, %3880
  %4598 = fadd fast float %4595, %3881
  %4599 = call float @dx.op.binary.f32(i32 36, float %3891, float %4518)  ; FMin(a,b)
  %4600 = fsub fast float %4599, %3891
  %4601 = fmul fast float %4600, %4470
  %4602 = fadd fast float %4601, %3891
  %4603 = fsub fast float %4531, %3919
  %4604 = fmul fast float %4603, %4470
  %4605 = fadd fast float %4604, %3919
  br label %4606

; <label>:4606                                    ; preds = %4468, %4430, %4332
  %4607 = phi float [ %4579, %4468 ], [ %3916, %4430 ], [ %3916, %4332 ]
  %4608 = phi float [ %4580, %4468 ], [ %3917, %4430 ], [ %3917, %4332 ]
  %4609 = phi float [ %4581, %4468 ], [ %3918, %4430 ], [ %3918, %4332 ]
  %4610 = phi float [ %4596, %4468 ], [ %3879, %4430 ], [ %3879, %4332 ]
  %4611 = phi float [ %4597, %4468 ], [ %3880, %4430 ], [ %3880, %4332 ]
  %4612 = phi float [ %4598, %4468 ], [ %3881, %4430 ], [ %3881, %4332 ]
  %4613 = phi float [ %4570, %4468 ], [ %3931, %4430 ], [ %3931, %4332 ]
  %4614 = phi float [ %4571, %4468 ], [ %3932, %4430 ], [ %3932, %4332 ]
  %4615 = phi float [ %4572, %4468 ], [ %3933, %4430 ], [ %3933, %4332 ]
  %4616 = phi float [ %4605, %4468 ], [ %3919, %4430 ], [ %3919, %4332 ]
  %4617 = phi float [ %4602, %4468 ], [ %3891, %4430 ], [ %3891, %4332 ]
  br i1 %4330, label %4618, label %4891

; <label>:4618                                    ; preds = %4606
  %4619 = call float @dx.op.unary.f32(i32 23, float %4617)  ; Log(value)
  %4620 = fmul fast float %4619, 4.000000e+00
  %4621 = call float @dx.op.unary.f32(i32 21, float %4620)  ; Exp(value)
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = fmul fast float %4623, %60
  %4625 = fmul fast float %4623, %61
  %4626 = fmul fast float %4623, %62
  %4627 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4628 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4629 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4630 = call float @dx.op.unary.f32(i32 23, float %4627)  ; Log(value)
  %4631 = call float @dx.op.unary.f32(i32 23, float %4628)  ; Log(value)
  %4632 = call float @dx.op.unary.f32(i32 23, float %4629)  ; Log(value)
  %4633 = fmul fast float %4630, 4.000000e+00
  %4634 = fmul fast float %4631, 4.000000e+00
  %4635 = fmul fast float %4632, 4.000000e+00
  %4636 = call float @dx.op.unary.f32(i32 21, float %4633)  ; Exp(value)
  %4637 = call float @dx.op.unary.f32(i32 21, float %4634)  ; Exp(value)
  %4638 = call float @dx.op.unary.f32(i32 21, float %4635)  ; Exp(value)
  %4639 = fadd fast float %4637, %4636
  %4640 = fadd fast float %4639, %4638
  %4641 = fdiv fast float 1.000000e+00, %4640
  %4642 = fmul fast float %4641, %4636
  %4643 = fcmp fast ogt float %69, 0.000000e+00
  %4644 = fcmp fast ogt float %70, 0.000000e+00
  %4645 = fcmp fast ogt float %71, 0.000000e+00
  %4646 = fcmp fast olt float %69, 0.000000e+00
  %4647 = fcmp fast olt float %70, 0.000000e+00
  %4648 = fcmp fast olt float %71, 0.000000e+00
  %4649 = zext i1 %4643 to i32
  %4650 = zext i1 %4644 to i32
  %4651 = zext i1 %4645 to i32
  %4652 = zext i1 %4646 to i32
  %4653 = zext i1 %4647 to i32
  %4654 = zext i1 %4648 to i32
  %4655 = sub nsw i32 %4649, %4652
  %4656 = sub nsw i32 %4650, %4653
  %4657 = sub nsw i32 %4651, %4654
  %4658 = call float @dx.op.unary.f32(i32 83, float %4624)  ; DerivCoarseX(value)
  %4659 = call float @dx.op.unary.f32(i32 83, float %4625)  ; DerivCoarseX(value)
  %4660 = call float @dx.op.unary.f32(i32 83, float %4626)  ; DerivCoarseX(value)
  %4661 = call float @dx.op.unary.f32(i32 84, float %4624)  ; DerivCoarseY(value)
  %4662 = call float @dx.op.unary.f32(i32 84, float %4625)  ; DerivCoarseY(value)
  %4663 = call float @dx.op.unary.f32(i32 84, float %4626)  ; DerivCoarseY(value)
  %4664 = fcmp fast ole float %279, %4642
  %4665 = fmul fast float %4641, %4639
  %4666 = fcmp fast ole float %279, %4665
  %4667 = select i1 %4666, float %4626, float %4624
  %4668 = select i1 %4666, float %4624, float %4625
  %4669 = select i1 %4664, float %4625, float %4667
  %4670 = select i1 %4664, float %4626, float %4668
  %4671 = select i1 %4666, float %4660, float %4658
  %4672 = select i1 %4666, float %4658, float %4659
  %4673 = select i1 %4664, float %4659, float %4671
  %4674 = select i1 %4664, float %4660, float %4672
  %4675 = select i1 %4666, float %4663, float %4661
  %4676 = select i1 %4666, float %4661, float %4662
  %4677 = select i1 %4664, float %4662, float %4675
  %4678 = select i1 %4664, float %4663, float %4676
  %4679 = call float @dx.op.unary.f32(i32 27, float %4669)  ; Round_ni(value)
  %4680 = call float @dx.op.unary.f32(i32 27, float %4670)  ; Round_ni(value)
  %4681 = fptosi float %4679 to i32
  %4682 = fptosi float %4680 to i32
  %4683 = xor i32 %4682, %4681
  %4684 = sitofp i32 %4683 to float
  %4685 = fptosi float %4684 to i32
  %4686 = sitofp i32 %4685 to float
  %4687 = fmul fast float %4686, 0x3FE3C6EF40000000
  %4688 = frem fast float %4679, 2.560000e+02
  %4689 = frem fast float %4680, 2.560000e+02
  %4690 = fptoui float %4688 to i32
  %4691 = fptoui float %4689 to i32
  %4692 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4690, i32 %4691, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = fadd fast float %4693, %4687
  %4697 = fadd fast float %4694, %4687
  %4698 = fadd fast float %4695, %4687
  %4699 = call float @dx.op.unary.f32(i32 22, float %4696)  ; Frc(value)
  %4700 = call float @dx.op.unary.f32(i32 22, float %4697)  ; Frc(value)
  %4701 = call float @dx.op.unary.f32(i32 22, float %4698)  ; Frc(value)
  %4702 = fmul fast float %4701, 0x401921FB60000000
  %4703 = call float @dx.op.unary.f32(i32 13, float %4702)  ; Sin(value)
  %4704 = call float @dx.op.unary.f32(i32 12, float %4702)  ; Cos(value)
  %4705 = fsub fast float -0.000000e+00, %4704
  %4706 = fmul fast float %4704, %4669
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4670, float %4706)  ; FMad(a,b,c)
  %4708 = fmul fast float %4703, %4669
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4705, float %4670, float %4708)  ; FMad(a,b,c)
  %4710 = fadd fast float %4707, %4699
  %4711 = fadd fast float %4709, %4700
  %4712 = extractvalue %dx.types.CBufRet.f32 %4622, 3
  %4713 = bitcast float %4712 to i32
  %4714 = icmp eq i32 %4713, 0
  br i1 %4714, label %4753, label %4715

; <label>:4715                                    ; preds = %4618
  %4716 = add i32 %4713, 0
  %4717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4718 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4717, %dx.types.Handle %110, float %4710, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4673, float %4674, float undef, float %4677, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4723 = fsub fast float 1.000000e+00, %4328
  %4724 = call float @dx.op.binary.f32(i32 35, float %4723, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4725 = bitcast float %4328 to i32
  %4726 = sitofp i32 %4725 to float
  %4727 = fadd fast float %4726, 0xC1CFBF8940000000
  %4728 = fmul fast float %4722, %4727
  %4729 = fadd fast float %4728, 0x41CFBF8940000000
  %4730 = fptosi float %4729 to i32
  %4731 = bitcast i32 %4730 to float
  %4732 = bitcast float %4724 to i32
  %4733 = sitofp i32 %4732 to float
  %4734 = fadd fast float %4733, 0xC1CFBF8940000000
  %4735 = fmul fast float %4734, %4722
  %4736 = fadd fast float %4735, 0x41CFBF8940000000
  %4737 = fptosi float %4736 to i32
  %4738 = bitcast i32 %4737 to float
  %4739 = fmul fast float %4731, %4721
  %4740 = fmul fast float %4738, %4721
  %4741 = fsub fast float %4724, %4739
  %4742 = fadd fast float %4740, %4724
  %4743 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4745 = fsub fast float %4719, %4743
  %4746 = fsub fast float %4744, %4743
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = fmul fast float %4749, %4745
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fcmp fast olt float %4751, 0x3F70101020000000
  br i1 %4752, label %4891, label %4753

; <label>:4753                                    ; preds = %4715, %4618
  %4754 = phi float [ %4751, %4715 ], [ %4328, %4618 ]
  %4755 = fmul fast float %4754, %4621
  %4756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.i32 %4756, 1
  %4758 = extractvalue %dx.types.CBufRet.i32 %4756, 0
  %4759 = add i32 %4758, 0
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4760, %dx.types.Handle %109, float %4710, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4673, float %4674, float undef, float %4677, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = and i32 %4757, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = lshr i32 %4757, 8
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = fmul fast float %4765, %4767
  %4772 = fadd fast float %4771, %4770
  %4773 = fmul fast float %4772, 0x3F70101000000000
  %4774 = fadd fast float %4773, 0xBFB99999A0000000
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4775, 0x3FF1C71C80000000
  %4777 = call float @dx.op.binary.f32(i32 36, float %4773, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4778 = fsub fast float 1.000000e+00, %4776
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4779, %4762
  %4781 = fmul fast float %4779, %4763
  %4782 = fmul fast float %4779, %4764
  %4783 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = fmul fast float %4776, %4762
  %4787 = fmul fast float %4776, %4763
  %4788 = fmul fast float %4776, %4764
  %4789 = fadd fast float %4786, %4777
  %4790 = fadd fast float %4787, %4777
  %4791 = fadd fast float %4788, %4777
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.i32 %4795, 3
  %4797 = extractvalue %dx.types.CBufRet.i32 %4795, 2
  %4798 = add i32 %4797, 0
  %4799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4799, %dx.types.Handle %109, float %4710, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4673, float %4674, float undef, float %4677, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.ResRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.ResRet.f32 %4800, 2
  %4804 = extractvalue %dx.types.ResRet.f32 %4800, 3
  %4805 = and i32 %4796, 255
  %4806 = uitofp i32 %4805 to float
  %4807 = lshr i32 %4796, 8
  %4808 = and i32 %4807, 255
  %4809 = uitofp i32 %4808 to float
  %4810 = lshr i32 %4796, 16
  %4811 = and i32 %4810, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = fmul fast float %4812, 0x3F70101000000000
  %4814 = fmul fast float %4801, %4806
  %4815 = fadd fast float %4814, %4809
  %4816 = fmul fast float %4815, 0x3F70101000000000
  %4817 = fadd fast float %4802, -5.000000e-01
  %4818 = fadd fast float %4804, -5.000000e-01
  %4819 = fmul fast float %4817, %4813
  %4820 = fmul fast float %4818, %4813
  %4821 = fadd fast float %4819, 5.000000e-01
  %4822 = fadd fast float %4820, 5.000000e-01
  %4823 = fmul fast float %4821, 2.000000e+00
  %4824 = fadd fast float %4823, -1.000000e+00
  %4825 = fmul fast float %4822, 2.000000e+00
  %4826 = fadd fast float %4825, -1.000000e+00
  %4827 = fadd fast float %4824, %4826
  %4828 = fmul fast float %4827, 5.000000e-01
  %4829 = fsub fast float %4824, %4826
  %4830 = fmul fast float %4829, 5.000000e-01
  %4831 = call float @dx.op.unary.f32(i32 6, float %4828)  ; FAbs(value)
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = call float @dx.op.unary.f32(i32 6, float %4830)  ; FAbs(value)
  %4834 = fsub fast float %4832, %4833
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4828, float %4830, float %4834, float %4828, float %4830, float %4834)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 25, float %4835)  ; Rsqrt(value)
  %4837 = fmul fast float %4828, %4836
  %4838 = fmul fast float %4830, %4836
  %4839 = select i1 %4666, i32 %4656, i32 %4657
  %4840 = select i1 %4664, i32 %4655, i32 %4839
  %4841 = sitofp i32 %4840 to float
  %4842 = fmul fast float %4834, %4841
  %4843 = fmul fast float %4842, %4836
  %4844 = select i1 %4666, float %4843, float %4838
  %4845 = select i1 %4666, float %4838, float %4843
  %4846 = select i1 %4664, float %4843, float %4837
  %4847 = select i1 %4664, float %4838, float %4844
  %4848 = select i1 %4664, float %4837, float %4845
  %4849 = fsub fast float %4783, %4613
  %4850 = fsub fast float %4784, %4614
  %4851 = fsub fast float %4785, %4615
  %4852 = fmul fast float %4849, %4755
  %4853 = fmul fast float %4850, %4755
  %4854 = fmul fast float %4851, %4755
  %4855 = fadd fast float %4852, %4613
  %4856 = fadd fast float %4853, %4614
  %4857 = fadd fast float %4854, %4615
  %4858 = fsub fast float %4792, %4607
  %4859 = fsub fast float %4793, %4608
  %4860 = fsub fast float %4794, %4609
  %4861 = fmul fast float %4858, %4755
  %4862 = fmul fast float %4859, %4755
  %4863 = fmul fast float %4860, %4755
  %4864 = fadd fast float %4861, %4607
  %4865 = fadd fast float %4862, %4608
  %4866 = fadd fast float %4863, %4609
  %4867 = fadd fast float %4846, %4610
  %4868 = fadd fast float %4847, %4611
  %4869 = fadd fast float %4848, %4612
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.unary.f32(i32 25, float %4870)  ; Rsqrt(value)
  %4872 = fmul fast float %4867, %4871
  %4873 = fmul fast float %4868, %4871
  %4874 = fmul fast float %4869, %4871
  %4875 = fsub fast float %4872, %4610
  %4876 = fsub fast float %4873, %4611
  %4877 = fsub fast float %4874, %4612
  %4878 = fmul fast float %4875, %4755
  %4879 = fmul fast float %4876, %4755
  %4880 = fmul fast float %4877, %4755
  %4881 = fadd fast float %4878, %4610
  %4882 = fadd fast float %4879, %4611
  %4883 = fadd fast float %4880, %4612
  %4884 = call float @dx.op.binary.f32(i32 36, float %4617, float %4803)  ; FMin(a,b)
  %4885 = fsub fast float %4884, %4617
  %4886 = fmul fast float %4885, %4755
  %4887 = fadd fast float %4886, %4617
  %4888 = fsub fast float %4816, %4616
  %4889 = fmul fast float %4888, %4755
  %4890 = fadd fast float %4889, %4616
  br label %4891

; <label>:4891                                    ; preds = %4753, %4715, %4606, %4322
  %4892 = phi float [ %4864, %4753 ], [ %4607, %4715 ], [ %4607, %4606 ], [ %3916, %4322 ]
  %4893 = phi float [ %4865, %4753 ], [ %4608, %4715 ], [ %4608, %4606 ], [ %3917, %4322 ]
  %4894 = phi float [ %4866, %4753 ], [ %4609, %4715 ], [ %4609, %4606 ], [ %3918, %4322 ]
  %4895 = phi float [ %4881, %4753 ], [ %4610, %4715 ], [ %4610, %4606 ], [ %3879, %4322 ]
  %4896 = phi float [ %4882, %4753 ], [ %4611, %4715 ], [ %4611, %4606 ], [ %3880, %4322 ]
  %4897 = phi float [ %4883, %4753 ], [ %4612, %4715 ], [ %4612, %4606 ], [ %3881, %4322 ]
  %4898 = phi float [ %4855, %4753 ], [ %4613, %4715 ], [ %4613, %4606 ], [ %3931, %4322 ]
  %4899 = phi float [ %4856, %4753 ], [ %4614, %4715 ], [ %4614, %4606 ], [ %3932, %4322 ]
  %4900 = phi float [ %4857, %4753 ], [ %4615, %4715 ], [ %4615, %4606 ], [ %3933, %4322 ]
  %4901 = phi float [ %4890, %4753 ], [ %4616, %4715 ], [ %4616, %4606 ], [ %3919, %4322 ]
  %4902 = phi float [ %4887, %4753 ], [ %4617, %4715 ], [ %4617, %4606 ], [ %3891, %4322 ]
  %4903 = fcmp fast une float %4326, 0.000000e+00
  %4904 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 25, float %4904)  ; Rsqrt(value)
  br i1 %4903, label %4913, label %4906

; <label>:4906                                    ; preds = %4891
  %4907 = fmul fast float %4905, %196
  %4908 = fmul fast float %4905, %197
  %4909 = fmul fast float %4905, %198
  %4910 = fsub fast float -0.000000e+00, %4907
  %4911 = fsub fast float -0.000000e+00, %4908
  %4912 = fsub fast float -0.000000e+00, %4909
  br label %5080

; <label>:4913                                    ; preds = %4891
  %4914 = fmul fast float %196, %4905
  %4915 = fsub fast float -0.000000e+00, %4914
  %4916 = fmul fast float %197, %4905
  %4917 = fsub fast float -0.000000e+00, %4916
  %4918 = fmul fast float %198, %4905
  %4919 = fsub fast float -0.000000e+00, %4918
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4917, float %4919, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = fmul fast float %4326, 2.500000e+00
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4326, 0x4013FFFFE0000000
  %4924 = fadd fast float %4923, 0xBFFFFFFFE0000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %4326, 0x4004000020000000
  %4927 = fadd fast float %4926, 0xBFF8000040000000
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %3898, 1.000000e+01
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, 2.000000e+00
  %4932 = fsub fast float 3.000000e+00, %4931
  %4933 = fmul fast float %4930, %4930
  %4934 = fmul fast float %4933, %4932
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = fsub fast float 0x3FE3333340000000, %4901
  %4937 = fmul fast float %4936, 0x400AAAAAA0000000
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4935, %4938
  %4940 = fmul fast float %4898, 0x3FEA2B8620000000
  %4941 = fmul fast float %4899, 0x3FEA2B8620000000
  %4942 = fmul fast float %4900, 0x3FEA2B8620000000
  %4943 = fadd fast float %4940, 0x3FC81DFBA0000000
  %4944 = fmul fast float %4943, %4898
  %4945 = fadd fast float %4944, 0x3F910E6020000000
  %4946 = fadd fast float %4941, 0x3FC81DFBA0000000
  %4947 = fmul fast float %4946, %4899
  %4948 = fadd fast float %4947, 0x3F910E6020000000
  %4949 = fadd fast float %4942, 0x3FC81DFBA0000000
  %4950 = fmul fast float %4949, %4900
  %4951 = fadd fast float %4950, 0x3F910E6020000000
  %4952 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = fsub fast float %4952, %4898
  %4956 = fsub fast float %4953, %4899
  %4957 = fsub fast float %4954, %4900
  %4958 = fmul fast float %4955, %4922
  %4959 = fmul fast float %4958, %4939
  %4960 = fmul fast float %4956, %4922
  %4961 = fmul fast float %4960, %4939
  %4962 = fmul fast float %4957, %4922
  %4963 = fmul fast float %4962, %4939
  %4964 = fadd fast float %4959, %4898
  %4965 = fadd fast float %4961, %4899
  %4966 = fadd fast float %4963, %4900
  %4967 = fmul fast float %4902, %4902
  %4968 = fmul fast float %4967, %4967
  %4969 = fadd fast float %4925, 1.000000e+00
  %4970 = fsub fast float %4969, %4939
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = call float @dx.op.dot3.f32(i32 55, float %122, float %124, float %126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fsub fast float 1.000000e+00, %4968
  %4975 = call float @dx.op.binary.f32(i32 36, float %4971, float %4974)  ; FMin(a,b)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4975, float %4976)  ; FMax(a,b)
  %4978 = fadd fast float %4973, 0xBFE4CCCCC0000000
  %4979 = fmul fast float %4978, 0x4006DB6DA0000000
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fmul fast float %4980, 2.000000e+00
  %4982 = fsub fast float 3.000000e+00, %4981
  %4983 = bitcast float %4892 to i32
  %4984 = ashr i32 %4983, 1
  %4985 = add nsw i32 %4984, 532487669
  %4986 = bitcast i32 %4985 to float
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = fmul fast float %4990, 2.000000e+00
  %4992 = bitcast float %4893 to i32
  %4993 = ashr i32 %4992, 1
  %4994 = add nsw i32 %4993, 532487669
  %4995 = bitcast i32 %4994 to float
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = bitcast float %4996 to i32
  %4998 = sub nsw i32 2129859010, %4997
  %4999 = bitcast i32 %4998 to float
  %5000 = fmul fast float %4999, 2.000000e+00
  %5001 = bitcast float %4894 to i32
  %5002 = ashr i32 %5001, 1
  %5003 = add nsw i32 %5002, 532487669
  %5004 = bitcast i32 %5003 to float
  %5005 = fsub fast float 1.000000e+00, %5004
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5008, 2.000000e+00
  %5010 = fsub fast float 0x4002A9FBE0000000, %4991
  %5011 = fadd fast float %4991, 0x3FD54FDF00000000
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, %5010
  %5016 = fmul fast float %5015, %5015
  %5017 = fsub fast float 0x4002A9FBE0000000, %5000
  %5018 = fadd fast float %5000, 0x3FD54FDF00000000
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %5021, %5017
  %5023 = fmul fast float %5022, %5022
  %5024 = fsub fast float 0x4002A9FBE0000000, %5009
  %5025 = fadd fast float %5009, 0x3FD54FDF00000000
  %5026 = bitcast float %5025 to i32
  %5027 = sub nsw i32 2129859010, %5026
  %5028 = bitcast i32 %5027 to float
  %5029 = fmul fast float %5028, %5024
  %5030 = fmul fast float %5029, %5029
  %5031 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5016)  ; FMax(a,b)
  %5032 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5023)  ; FMax(a,b)
  %5033 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5030)  ; FMax(a,b)
  %5034 = fsub fast float 1.000000e+00, %4920
  %5035 = fadd fast float %5034, %4935
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = fsub fast float 1.000000e+00, %4307
  %5038 = fmul fast float %4977, %5037
  %5039 = fmul fast float %4980, %4980
  %5040 = fmul fast float %5039, %5038
  %5041 = fmul fast float %5040, %4982
  %5042 = fmul fast float %5037, 0xBFE99999A0000000
  %5043 = fmul fast float %5042, %4922
  %5044 = fmul fast float %5043, %4939
  %5045 = fadd fast float %5044, 1.000000e+00
  %5046 = fadd fast float %4901, -1.000000e+00
  %5047 = fmul fast float %5045, %5046
  %5048 = fadd fast float %5047, 1.000000e+00
  %5049 = fsub fast float %5031, %4892
  %5050 = fsub fast float %5032, %4893
  %5051 = fsub fast float %5033, %4894
  %5052 = fmul fast float %5041, %5049
  %5053 = fmul fast float %5041, %5050
  %5054 = fmul fast float %5041, %5051
  %5055 = fadd fast float %5052, %4892
  %5056 = fadd fast float %5053, %4893
  %5057 = fadd fast float %5054, %4894
  %5058 = fsub fast float %122, %4895
  %5059 = fsub fast float %124, %4896
  %5060 = fsub fast float %126, %4897
  %5061 = fmul fast float %5041, %5058
  %5062 = fmul fast float %5041, %5059
  %5063 = fmul fast float %5041, %5060
  %5064 = fadd fast float %5061, %4895
  %5065 = fadd fast float %5062, %4896
  %5066 = fadd fast float %5063, %4897
  %5067 = fmul fast float %5041, %5036
  %5068 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5069 = fsub fast float 1.000000e+00, %5068
  %5070 = fmul fast float %5067, %5069
  %5071 = fadd fast float %5070, %5068
  %5072 = fsub fast float 1.000000e+00, %4902
  %5073 = fmul fast float %5041, %5072
  %5074 = fadd fast float %5073, %4902
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.unary.f32(i32 25, float %5075)  ; Rsqrt(value)
  %5077 = fmul fast float %5064, %5076
  %5078 = fmul fast float %5065, %5076
  %5079 = fmul fast float %5066, %5076
  br label %5080

; <label>:5080                                    ; preds = %4913, %4906
  %5081 = phi float [ %4912, %4906 ], [ %4919, %4913 ]
  %5082 = phi float [ %4911, %4906 ], [ %4917, %4913 ]
  %5083 = phi float [ %4910, %4906 ], [ %4915, %4913 ]
  %5084 = phi float [ %4909, %4906 ], [ %4918, %4913 ]
  %5085 = phi float [ %4908, %4906 ], [ %4916, %4913 ]
  %5086 = phi float [ %4907, %4906 ], [ %4914, %4913 ]
  %5087 = phi float [ %4892, %4906 ], [ %5055, %4913 ]
  %5088 = phi float [ %4893, %4906 ], [ %5056, %4913 ]
  %5089 = phi float [ %4894, %4906 ], [ %5057, %4913 ]
  %5090 = phi float [ %4895, %4906 ], [ %5077, %4913 ]
  %5091 = phi float [ %4896, %4906 ], [ %5078, %4913 ]
  %5092 = phi float [ %4897, %4906 ], [ %5079, %4913 ]
  %5093 = phi float [ %4898, %4906 ], [ %4964, %4913 ]
  %5094 = phi float [ %4899, %4906 ], [ %4965, %4913 ]
  %5095 = phi float [ %4900, %4906 ], [ %4966, %4913 ]
  %5096 = phi float [ %4901, %4906 ], [ %5071, %4913 ]
  %5097 = phi float [ %4902, %4906 ], [ %5074, %4913 ]
  %5098 = fsub fast float -0.000000e+00, %198
  %5099 = select i1 %268, float 0.000000e+00, float %5089
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5083, float %5082, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5085, float %5084, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = fmul fast float %5102, 2.000000e+00
  %5104 = fmul fast float %5103, %5090
  %5105 = fmul fast float %5103, %5091
  %5106 = fmul fast float %5103, %5092
  %5107 = fsub fast float %5086, %5104
  %5108 = fsub fast float %5085, %5105
  %5109 = fsub fast float %5084, %5106
  %5110 = call float @dx.op.binary.f32(i32 36, float %5097, float 1.000000e+00)  ; FMin(a,b)
  %5111 = fsub fast float 1.000000e+00, %5097
  %5112 = bitcast float %5111 to i32
  %5113 = sub nsw i32 2129859010, %5112
  %5114 = bitcast i32 %5113 to float
  %5115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5116 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = fcmp fast oeq float %5116, 0.000000e+00
  %5118 = fcmp fast oeq float %5115, 0.000000e+00
  %5119 = or i1 %5118, %5117
  br i1 %5119, label %5149, label %5120

; <label>:5120                                    ; preds = %5080
  %5121 = fsub fast float -0.000000e+00, %87
  %5122 = fsub fast float -0.000000e+00, %85
  %5123 = call float @dx.op.unary.f32(i32 24, float %5116)  ; Sqrt(value)
  %5124 = fdiv fast float %5123, %5115
  %5125 = fcmp fast ogt float %5124, 0x3FFB6F8900000000
  %5126 = select i1 %5125, float 0x3FFB6F8900000000, float %5124
  %5127 = fmul fast float %5126, 0x3FE8A23460000000
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = call float @dx.op.binary.f32(i32 35, float %5126, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5130 = fmul fast float %5128, %5115
  %5131 = fmul fast float %5129, 0x3FF279A740000000
  %5132 = fadd fast float %5131, -1.000000e+00
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %86, float %5121, float %5122, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.unary.f32(i32 25, float %5133)  ; Rsqrt(value)
  %5135 = fmul fast float %5134, %5121
  %5136 = fmul fast float %5134, %5122
  %5137 = fmul fast float %5134, %86
  %5138 = fmul fast float %5132, %5132
  %5139 = fsub fast float 1.000000e+00, %5138
  %5140 = fmul fast float %5129, 0x40005F8BE0000000
  %5141 = fsub fast float 0x400C5BF8A0000000, %5140
  %5142 = fdiv fast float %5130, %5141
  %5143 = fmul fast float %5142, 0x3FEE31C3C0000000
  %5144 = fmul fast float %5143, %5139
  %5145 = fmul fast float %5129, 0x3FDACB7480000000
  %5146 = fadd fast float %5145, 0xBFD7347680000000
  %5147 = fmul fast float %5146, %5142
  %5148 = fmul fast float %5147, %5139
  br label %5149

; <label>:5149                                    ; preds = %5120, %5080
  %5150 = phi float [ %5135, %5120 ], [ 0.000000e+00, %5080 ]
  %5151 = phi float [ %5136, %5120 ], [ 0.000000e+00, %5080 ]
  %5152 = phi float [ %5137, %5120 ], [ 0.000000e+00, %5080 ]
  %5153 = phi float [ %5144, %5120 ], [ 0.000000e+00, %5080 ]
  %5154 = phi float [ %5148, %5120 ], [ 0.000000e+00, %5080 ]
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fmul fast float %5155, %5155
  %5157 = fmul fast float %5156, 0x3FEE471020000000
  %5158 = fadd fast float %5157, 0xBFD42F6020000000
  %5159 = fmul fast float %5115, 0x3FD20DD760000000
  %5160 = fmul fast float %5158, %5154
  %5161 = fmul fast float %5153, 0x3FDF454380000000
  %5162 = fmul fast float %5161, %5155
  %5163 = fadd fast float %5162, %5159
  %5164 = fadd fast float %5163, %5160
  %5165 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %5107, float %5108, float %5109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = fmul fast float %5165, 0x3FDF454380000000
  %5167 = fmul fast float %5165, %5165
  %5168 = fmul fast float %5167, 0x3FEE471020000000
  %5169 = fadd fast float %5168, 0xBFD42F6020000000
  %5170 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5153, float %5154, float 0x3FD20DD760000000, float %5166, float %5169)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5172 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5173 = fcmp fast oeq float %5172, 0.000000e+00
  %5174 = fcmp fast oeq float %5171, 0.000000e+00
  %5175 = or i1 %5174, %5173
  br i1 %5175, label %5205, label %5176

; <label>:5176                                    ; preds = %5149
  %5177 = fsub fast float -0.000000e+00, %83
  %5178 = fsub fast float -0.000000e+00, %81
  %5179 = call float @dx.op.unary.f32(i32 24, float %5172)  ; Sqrt(value)
  %5180 = fdiv fast float %5179, %5171
  %5181 = fcmp fast ogt float %5180, 0x3FFB6F8900000000
  %5182 = select i1 %5181, float 0x3FFB6F8900000000, float %5180
  %5183 = fmul fast float %5182, 0x3FE8A23460000000
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = call float @dx.op.binary.f32(i32 35, float %5182, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5186 = fmul fast float %5184, %5171
  %5187 = fmul fast float %5185, 0x3FF279A740000000
  %5188 = fadd fast float %5187, -1.000000e+00
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %82, float %5177, float %5178, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.unary.f32(i32 25, float %5189)  ; Rsqrt(value)
  %5191 = fmul fast float %5190, %5177
  %5192 = fmul fast float %5190, %5178
  %5193 = fmul fast float %5190, %82
  %5194 = fmul fast float %5188, %5188
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = fmul fast float %5185, 0x40005F8BE0000000
  %5197 = fsub fast float 0x400C5BF8A0000000, %5196
  %5198 = fdiv fast float %5186, %5197
  %5199 = fmul fast float %5198, 0x3FEE31C3C0000000
  %5200 = fmul fast float %5199, %5195
  %5201 = fmul fast float %5185, 0x3FDACB7480000000
  %5202 = fadd fast float %5201, 0xBFD7347680000000
  %5203 = fmul fast float %5202, %5198
  %5204 = fmul fast float %5203, %5195
  br label %5205

; <label>:5205                                    ; preds = %5176, %5149
  %5206 = phi float [ %5191, %5176 ], [ 0.000000e+00, %5149 ]
  %5207 = phi float [ %5192, %5176 ], [ 0.000000e+00, %5149 ]
  %5208 = phi float [ %5193, %5176 ], [ 0.000000e+00, %5149 ]
  %5209 = phi float [ %5200, %5176 ], [ 0.000000e+00, %5149 ]
  %5210 = phi float [ %5204, %5176 ], [ 0.000000e+00, %5149 ]
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5207, float %5208, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = fmul fast float %5211, %5211
  %5213 = fmul fast float %5212, 0x3FEE471020000000
  %5214 = fadd fast float %5213, 0xBFD42F6020000000
  %5215 = fmul fast float %5171, 0x3FD20DD760000000
  %5216 = fmul fast float %5214, %5210
  %5217 = fmul fast float %5209, 0x3FDF454380000000
  %5218 = fmul fast float %5217, %5211
  %5219 = fadd fast float %5218, %5215
  %5220 = fadd fast float %5219, %5216
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5207, float %5208, float %5107, float %5108, float %5109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fmul fast float %5221, 0x3FDF454380000000
  %5223 = fmul fast float %5221, %5221
  %5224 = fmul fast float %5223, 0x3FEE471020000000
  %5225 = fadd fast float %5224, 0xBFD42F6020000000
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5209, float %5210, float 0x3FD20DD760000000, float %5222, float %5225)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5228 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fcmp fast oeq float %5228, 0.000000e+00
  %5230 = fcmp fast oeq float %5227, 0.000000e+00
  %5231 = or i1 %5230, %5229
  br i1 %5231, label %5261, label %5232

; <label>:5232                                    ; preds = %5205
  %5233 = fsub fast float -0.000000e+00, %79
  %5234 = fsub fast float -0.000000e+00, %77
  %5235 = call float @dx.op.unary.f32(i32 24, float %5228)  ; Sqrt(value)
  %5236 = fdiv fast float %5235, %5227
  %5237 = fcmp fast ogt float %5236, 0x3FFB6F8900000000
  %5238 = select i1 %5237, float 0x3FFB6F8900000000, float %5236
  %5239 = fmul fast float %5238, 0x3FE8A23460000000
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5238, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5242 = fmul fast float %5240, %5227
  %5243 = fmul fast float %5241, 0x3FF279A740000000
  %5244 = fadd fast float %5243, -1.000000e+00
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5234, float %78, float %5233, float %5234, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = call float @dx.op.unary.f32(i32 25, float %5245)  ; Rsqrt(value)
  %5247 = fmul fast float %5246, %5233
  %5248 = fmul fast float %5246, %5234
  %5249 = fmul fast float %5246, %78
  %5250 = fmul fast float %5244, %5244
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = fmul fast float %5241, 0x40005F8BE0000000
  %5253 = fsub fast float 0x400C5BF8A0000000, %5252
  %5254 = fdiv fast float %5242, %5253
  %5255 = fmul fast float %5254, 0x3FEE31C3C0000000
  %5256 = fmul fast float %5255, %5251
  %5257 = fmul fast float %5241, 0x3FDACB7480000000
  %5258 = fadd fast float %5257, 0xBFD7347680000000
  %5259 = fmul fast float %5258, %5254
  %5260 = fmul fast float %5259, %5251
  br label %5261

; <label>:5261                                    ; preds = %5232, %5205
  %5262 = phi float [ %5247, %5232 ], [ 0.000000e+00, %5205 ]
  %5263 = phi float [ %5248, %5232 ], [ 0.000000e+00, %5205 ]
  %5264 = phi float [ %5249, %5232 ], [ 0.000000e+00, %5205 ]
  %5265 = phi float [ %5256, %5232 ], [ 0.000000e+00, %5205 ]
  %5266 = phi float [ %5260, %5232 ], [ 0.000000e+00, %5205 ]
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = fmul fast float %5267, %5267
  %5269 = fmul fast float %5268, 0x3FEE471020000000
  %5270 = fadd fast float %5269, 0xBFD42F6020000000
  %5271 = fmul fast float %5227, 0x3FD20DD760000000
  %5272 = fmul fast float %5270, %5266
  %5273 = fmul fast float %5265, 0x3FDF454380000000
  %5274 = fmul fast float %5273, %5267
  %5275 = fadd fast float %5274, %5271
  %5276 = fadd fast float %5275, %5272
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %5107, float %5108, float %5109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fmul fast float %5277, 0x3FDF454380000000
  %5279 = fmul fast float %5277, %5277
  %5280 = fmul fast float %5279, 0x3FEE471020000000
  %5281 = fadd fast float %5280, 0xBFD42F6020000000
  %5282 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5265, float %5266, float 0x3FD20DD760000000, float %5278, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = call float @dx.op.binary.f32(i32 35, float %5164, float 0.000000e+00)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5220, float 0.000000e+00)  ; FMax(a,b)
  %5285 = call float @dx.op.binary.f32(i32 35, float %5276, float 0.000000e+00)  ; FMax(a,b)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5170, float 0.000000e+00)  ; FMax(a,b)
  %5287 = call float @dx.op.binary.f32(i32 35, float %5226, float 0.000000e+00)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float %5282, float 0.000000e+00)  ; FMax(a,b)
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = call float @dx.op.binary.f32(i32 36, float %5093, float %5290)  ; FMin(a,b)
  %5292 = fsub fast float 1.000000e+00, %5110
  %5293 = fmul fast float %5291, %5292
  %5294 = fsub fast float 1.000000e+00, %5293
  %5295 = bitcast float %5294 to i32
  %5296 = sub nsw i32 2129859010, %5295
  %5297 = bitcast i32 %5296 to float
  %5298 = call float @dx.op.binary.f32(i32 36, float %5094, float %5290)  ; FMin(a,b)
  %5299 = fmul fast float %5298, %5292
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = bitcast float %5300 to i32
  %5302 = sub nsw i32 2129859010, %5301
  %5303 = bitcast i32 %5302 to float
  %5304 = call float @dx.op.binary.f32(i32 36, float %5095, float %5290)  ; FMin(a,b)
  %5305 = fmul fast float %5304, %5292
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = bitcast float %5306 to i32
  %5308 = sub nsw i32 2129859010, %5307
  %5309 = bitcast i32 %5308 to float
  %5310 = fmul fast float %5283, %5110
  %5311 = fmul fast float %5310, %5297
  %5312 = fmul fast float %5284, %5110
  %5313 = fmul fast float %5312, %5303
  %5314 = fmul fast float %5285, %5110
  %5315 = fmul fast float %5314, %5309
  %5316 = call float @dx.op.binary.f32(i32 36, float %5087, float %5290)  ; FMin(a,b)
  %5317 = fmul fast float %5316, %5292
  %5318 = fsub fast float 1.000000e+00, %5317
  %5319 = bitcast float %5318 to i32
  %5320 = sub nsw i32 2129859010, %5319
  %5321 = bitcast i32 %5320 to float
  %5322 = call float @dx.op.binary.f32(i32 36, float %5088, float %5290)  ; FMin(a,b)
  %5323 = fmul fast float %5322, %5292
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = bitcast float %5324 to i32
  %5326 = sub nsw i32 2129859010, %5325
  %5327 = bitcast i32 %5326 to float
  %5328 = call float @dx.op.binary.f32(i32 36, float %5099, float %5290)  ; FMin(a,b)
  %5329 = fmul fast float %5328, %5292
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = bitcast float %5330 to i32
  %5332 = sub nsw i32 2129859010, %5331
  %5333 = bitcast i32 %5332 to float
  %5334 = fmul fast float %5286, %5110
  %5335 = fmul fast float %5334, %5321
  %5336 = fmul fast float %5287, %5110
  %5337 = fmul fast float %5336, %5327
  %5338 = fmul fast float %5288, %5110
  %5339 = fmul fast float %5338, %5333
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5313, float %5315, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = select i1 %268, float 0.000000e+00, float %5311
  %5342 = select i1 %268, float %5340, float %5313
  %5343 = select i1 %268, float 0.000000e+00, float %5315
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5337, float %5339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = select i1 %268, float 0.000000e+00, float %5335
  %5346 = select i1 %268, float %5344, float %5337
  %5347 = select i1 %268, float 0.000000e+00, float %5339
  %5348 = fmul fast float %5101, 9.843750e-01
  %5349 = fmul fast float %5096, 9.843750e-01
  %5350 = fadd fast float %5348, 7.812500e-03
  %5351 = fadd fast float %5349, 7.812500e-03
  %5352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5350, float %5351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5353 = extractvalue %dx.types.ResRet.f32 %5352, 2
  %5354 = extractvalue %dx.types.ResRet.f32 %5352, 3
  %5355 = fmul fast float %5353, %5087
  %5356 = fmul fast float %5353, %5088
  %5357 = fmul fast float %5353, %5099
  %5358 = fadd fast float %5355, %5354
  %5359 = fadd fast float %5356, %5354
  %5360 = fadd fast float %5357, %5354
  %5361 = fcmp fast ogt float %3892, 0.000000e+00
  br i1 %5361, label %5362, label %5388

; <label>:5362                                    ; preds = %5261
  %5363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3892, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = fadd fast float %5364, -5.000000e-01
  %5368 = fadd fast float %5365, -5.000000e-01
  %5369 = fadd fast float %5366, -5.000000e-01
  %5370 = fsub fast float 1.000000e+00, %5087
  %5371 = fsub fast float 1.000000e+00, %5088
  %5372 = fsub fast float 1.000000e+00, %5099
  %5373 = fmul fast float %5087, 4.000000e+00
  %5374 = fmul fast float %5373, %5370
  %5375 = fmul fast float %5374, %5367
  %5376 = fmul fast float %5088, 4.000000e+00
  %5377 = fmul fast float %5376, %5371
  %5378 = fmul fast float %5377, %5368
  %5379 = fmul fast float %5099, 4.000000e+00
  %5380 = fmul fast float %5379, %5372
  %5381 = fmul fast float %5380, %5369
  %5382 = fadd fast float %5375, %5358
  %5383 = fadd fast float %5378, %5359
  %5384 = fadd fast float %5381, %5360
  %5385 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5386 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  br label %5388

; <label>:5388                                    ; preds = %5362, %5261
  %5389 = phi float [ %5385, %5362 ], [ %5358, %5261 ]
  %5390 = phi float [ %5386, %5362 ], [ %5359, %5261 ]
  %5391 = phi float [ %5387, %5362 ], [ %5360, %5261 ]
  %5392 = call float @dx.op.binary.f32(i32 35, float %5390, float %5391)  ; FMax(a,b)
  %5393 = call float @dx.op.binary.f32(i32 35, float %5389, float %5392)  ; FMax(a,b)
  %5394 = fsub fast float 1.000000e+00, %5393
  %5395 = fmul fast float %5394, %5341
  %5396 = fmul fast float %5394, %5342
  %5397 = fmul fast float %5394, %5343
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = fcmp fast ogt float %5398, 0x3E7FF19E20000000
  %5400 = fdiv fast float 1.000000e+00, %5398
  %5401 = select i1 %5399, float %5400, float 0.000000e+00
  %5402 = fmul fast float %5401, %5093
  %5403 = fmul fast float %5401, %5094
  %5404 = fmul fast float %5401, %5095
  %5405 = fadd fast float %5402, -1.000000e+00
  %5406 = fadd fast float %5403, -1.000000e+00
  %5407 = fadd fast float %5404, -1.000000e+00
  %5408 = fmul fast float %5405, 5.000000e-01
  %5409 = fmul fast float %5406, 5.000000e-01
  %5410 = fmul fast float %5407, 5.000000e-01
  %5411 = fadd fast float %5408, 1.000000e+00
  %5412 = fadd fast float %5409, 1.000000e+00
  %5413 = fadd fast float %5410, 1.000000e+00
  %5414 = fmul fast float %5389, %5345
  %5415 = fmul fast float %5390, %5346
  %5416 = fmul fast float %5391, %5347
  %5417 = fsub fast float 1.000000e+00, %5101
  %5418 = bitcast float %5417 to i32
  %5419 = sitofp i32 %5418 to float
  %5420 = fmul fast float %5419, 5.000000e+00
  %5421 = fadd fast float %5420, 0xC1EFBF8940000000
  %5422 = fptosi float %5421 to i32
  %5423 = bitcast i32 %5422 to float
  %5424 = fmul fast float %5423, %3893
  %5425 = fmul fast float %5341, %5424
  %5426 = fmul fast float %5425, %5394
  %5427 = fmul fast float %5426, %5411
  %5428 = fmul fast float %5342, %5424
  %5429 = fmul fast float %5428, %5394
  %5430 = fmul fast float %5429, %5412
  %5431 = fmul fast float %5343, %5424
  %5432 = fmul fast float %5431, %5394
  %5433 = fmul fast float %5432, %5413
  %5434 = fmul fast float %5395, %3889
  %5435 = fmul fast float %5396, %3889
  %5436 = fmul fast float %5397, %3889
  %5437 = fadd fast float %5414, %3885
  %5438 = fadd fast float %5437, %5427
  %5439 = fmul fast float %5438, %3889
  %5440 = fadd fast float %5415, %3886
  %5441 = fadd fast float %5440, %5430
  %5442 = fmul fast float %5441, %3889
  %5443 = fadd fast float %5416, %3887
  %5444 = fadd fast float %5443, %5433
  %5445 = fmul fast float %5444, %3889
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5448 = fcmp fast oeq float %5447, 0.000000e+00
  br i1 %5448, label %6533, label %5449

; <label>:5449                                    ; preds = %5388
  %5450 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5451 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5452 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.CBufRet.f32 %5453, 1
  %5456 = extractvalue %dx.types.CBufRet.f32 %5453, 2
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = select i1 %268, float %5458, float %5454
  %5462 = select i1 %268, float %5460, float %5455
  %5463 = select i1 %268, float %5459, float %5456
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5466 = fmul fast float %5465, %122
  %5467 = fmul fast float %5465, %124
  %5468 = fmul fast float %5465, %126
  %5469 = fadd fast float %5466, %196
  %5470 = fadd fast float %5467, %197
  %5471 = fadd fast float %5468, %198
  %5472 = fcmp fast olt float %5447, 0.000000e+00
  br i1 %5472, label %6112, label %5473

; <label>:5473                                    ; preds = %5449
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.CBufRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.CBufRet.f32 %5474, 2
  %5478 = extractvalue %dx.types.CBufRet.f32 %5474, 3
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5488 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5489 = fmul fast float %5475, %5469
  %5490 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5476, float %5489)  ; FMad(a,b,c)
  %5491 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %5477, float %5490)  ; FMad(a,b,c)
  %5492 = fadd fast float %5491, %5478
  %5493 = fmul fast float %5480, %5469
  %5494 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5481, float %5493)  ; FMad(a,b,c)
  %5495 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %5482, float %5494)  ; FMad(a,b,c)
  %5496 = fadd fast float %5495, %5483
  %5497 = fmul fast float %5485, %5469
  %5498 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5486, float %5497)  ; FMad(a,b,c)
  %5499 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %5487, float %5498)  ; FMad(a,b,c)
  %5500 = fadd fast float %5499, %5488
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = fcmp fast une float %5502, 0.000000e+00
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5508 = fmul fast float %5507, %5492
  %5509 = fmul fast float %5507, %5496
  %5510 = fadd fast float %5508, %5505
  %5511 = fadd fast float %5509, %5506
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.CBufRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.CBufRet.f32 %5512, 3
  %5516 = fmul fast float %5515, %5492
  %5517 = fmul fast float %5515, %5496
  %5518 = fadd fast float %5516, %5513
  %5519 = fadd fast float %5517, %5514
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5522 = fsub fast float %5521, %5500
  %5523 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5524 = fmul fast float %5522, %5523
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  br i1 %5503, label %5587, label %5527

; <label>:5527                                    ; preds = %5473
  %5528 = extractvalue %dx.types.CBufRet.f32 %5512, 2
  %5529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5530 = extractvalue %dx.types.CBufRet.f32 %5529, 2
  %5531 = fadd fast float %5530, %5528
  %5532 = fcmp fast ogt float %5531, 0.000000e+00
  br i1 %5532, label %5533, label %5557

; <label>:5533                                    ; preds = %5527
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = fsub fast float %5518, %5535
  %5538 = fsub fast float %5519, %5536
  %5539 = fcmp fast olt float %5537, 0.000000e+00
  %5540 = fcmp fast olt float %5538, 0.000000e+00
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5545 = extractvalue %dx.types.CBufRet.f32 %5541, 3
  %5546 = select i1 %5539, float %5542, float %5544
  %5547 = select i1 %5540, float %5543, float %5545
  %5548 = fmul fast float %5546, %5537
  %5549 = fmul fast float %5547, %5538
  %5550 = call float @dx.op.unary.f32(i32 6, float %5548)  ; FAbs(value)
  %5551 = call float @dx.op.unary.f32(i32 6, float %5549)  ; FAbs(value)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5553 = call float @dx.op.binary.f32(i32 35, float %5550, float %5551)  ; FMax(a,b)
  %5554 = fsub fast float %5552, %5553
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fmul fast float %5555, %5526
  br label %5557

; <label>:5557                                    ; preds = %5533, %5527
  %5558 = phi float [ %5556, %5533 ], [ 0.000000e+00, %5527 ]
  %5559 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5560 = extractvalue %dx.types.CBufRet.f32 %5529, 1
  %5561 = fadd fast float %5560, %5559
  %5562 = fcmp fast ogt float %5561, 0.000000e+00
  br i1 %5562, label %5563, label %5587

; <label>:5563                                    ; preds = %5557
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 1
  %5567 = fsub fast float %5510, %5565
  %5568 = fsub fast float %5511, %5566
  %5569 = fcmp fast olt float %5567, 0.000000e+00
  %5570 = fcmp fast olt float %5568, 0.000000e+00
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5575 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5576 = select i1 %5569, float %5572, float %5574
  %5577 = select i1 %5570, float %5573, float %5575
  %5578 = fmul fast float %5576, %5567
  %5579 = fmul fast float %5577, %5568
  %5580 = call float @dx.op.unary.f32(i32 6, float %5578)  ; FAbs(value)
  %5581 = call float @dx.op.unary.f32(i32 6, float %5579)  ; FAbs(value)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5583 = call float @dx.op.binary.f32(i32 35, float %5580, float %5581)  ; FMax(a,b)
  %5584 = fsub fast float %5582, %5583
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fmul fast float %5585, %5526
  br label %5587

; <label>:5587                                    ; preds = %5563, %5557, %5473
  %5588 = phi float [ 0.000000e+00, %5473 ], [ %5586, %5563 ], [ 0.000000e+00, %5557 ]
  %5589 = phi float [ 0.000000e+00, %5473 ], [ %5558, %5563 ], [ %5558, %5557 ]
  %5590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.f32 %5590, 1
  %5592 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5596 = fsub fast float %5492, %5594
  %5597 = fsub fast float %5496, %5595
  %5598 = fcmp fast olt float %5596, 0.000000e+00
  %5599 = fcmp fast olt float %5597, 0.000000e+00
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = select i1 %5598, float %5601, float %5603
  %5606 = select i1 %5599, float %5602, float %5604
  %5607 = fmul fast float %5605, %5596
  %5608 = fmul fast float %5606, %5597
  %5609 = call float @dx.op.unary.f32(i32 6, float %5607)  ; FAbs(value)
  %5610 = call float @dx.op.unary.f32(i32 6, float %5608)  ; FAbs(value)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5612 = call float @dx.op.binary.f32(i32 35, float %5609, float %5610)  ; FMax(a,b)
  %5613 = fsub fast float %5611, %5612
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = call float @dx.op.binary.f32(i32 36, float %5614, float %5592)  ; FMin(a,b)
  %5616 = fmul fast float %5615, %5526
  %5617 = fsub fast float %5588, %5616
  %5618 = fsub fast float %5589, %5588
  %5619 = fsub fast float %5618, %5616
  %5620 = call float @dx.op.binary.f32(i32 35, float %5588, float %5589)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5616, float %5620)  ; FMax(a,b)
  %5622 = fcmp fast olt float %5621, 1.000000e+00
  br i1 %5622, label %5623, label %6021, !dx.controlflow.hints !98

; <label>:5623                                    ; preds = %5587
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = fcmp fast une float %5625, 0.000000e+00
  br i1 %5626, label %5627, label %6021, !dx.controlflow.hints !99

; <label>:5627                                    ; preds = %5623
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5628, 1
  %5631 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5632 = extractvalue %dx.types.CBufRet.f32 %5628, 3
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5637 = extractvalue %dx.types.CBufRet.f32 %5633, 3
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5638, 1
  %5641 = extractvalue %dx.types.CBufRet.f32 %5638, 2
  %5642 = extractvalue %dx.types.CBufRet.f32 %5638, 3
  %5643 = fmul fast float %5629, %5469
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5630, float %5643)  ; FMad(a,b,c)
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %5631, float %5644)  ; FMad(a,b,c)
  %5646 = fadd fast float %5645, %5632
  %5647 = fmul fast float %5634, %5469
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5635, float %5647)  ; FMad(a,b,c)
  %5649 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %5636, float %5648)  ; FMad(a,b,c)
  %5650 = fadd fast float %5649, %5637
  %5651 = fmul fast float %5639, %5469
  %5652 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5640, float %5651)  ; FMad(a,b,c)
  %5653 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %5641, float %5652)  ; FMad(a,b,c)
  %5654 = fadd fast float %5653, %5642
  %5655 = fcmp fast oge float %5646, 1.000000e+00
  %5656 = fcmp fast oge float %5650, 1.000000e+00
  %5657 = or i1 %5655, %5656
  %5658 = fcmp fast olt float %5646, 0.000000e+00
  %5659 = fcmp fast olt float %5650, 0.000000e+00
  %5660 = or i1 %5658, %5659
  %5661 = or i1 %5657, %5660
  br i1 %5661, label %6021, label %5662, !dx.controlflow.hints !100

; <label>:5662                                    ; preds = %5627
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.i32 %5667, 2
  %5669 = uitofp i32 %5668 to float
  %5670 = extractvalue %dx.types.CBufRet.i32 %5667, 3
  %5671 = uitofp i32 %5670 to float
  %5672 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5673 = fmul fast float %5672, 2.000000e+00
  %5674 = fsub fast float %5646, %5664
  %5675 = fsub fast float %5650, %5665
  %5676 = fmul fast float %5673, %5674
  %5677 = fmul fast float %5673, %5675
  %5678 = fdiv fast float 1.000000e+00, %5452
  %5679 = fmul fast float %5677, %5678
  %5680 = call float @dx.op.unary.f32(i32 6, float %5679)  ; FAbs(value)
  %5681 = fmul fast float %5666, %5471
  %5682 = fmul fast float %5681, %5673
  %5683 = call float @dx.op.unary.f32(i32 6, float %5682)  ; FAbs(value)
  %5684 = call float @dx.op.unary.f32(i32 6, float %5676)  ; FAbs(value)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5683, float %5680)  ; FMax(a,b)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5684, float %5685)  ; FMax(a,b)
  %5687 = fmul fast float %5686, 2.000000e+00
  %5688 = call float @dx.op.unary.f32(i32 23, float %5687)  ; Log(value)
  %5689 = call float @dx.op.binary.f32(i32 35, float %5688, float %5669)  ; FMax(a,b)
  %5690 = call float @dx.op.unary.f32(i32 22, float %5689)  ; Frc(value)
  %5691 = fadd fast float %5690, 0xBFEA666660000000
  %5692 = fmul fast float %5691, 8.000000e+00
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = call float @dx.op.unary.f32(i32 27, float %5689)  ; Round_ni(value)
  %5695 = fadd fast float %5694, %5693
  %5696 = call float @dx.op.binary.f32(i32 36, float %5695, float %5671)  ; FMin(a,b)
  %5697 = call float @dx.op.unary.f32(i32 27, float %5696)  ; Round_ni(value)
  %5698 = fsub fast float -0.000000e+00, %5697
  %5699 = call float @dx.op.unary.f32(i32 21, float %5698)  ; Exp(value)
  %5700 = fmul fast float %5699, %5673
  %5701 = fmul fast float %5700, %5646
  %5702 = fmul fast float %5700, %5650
  %5703 = fmul fast float %5701, 2.500000e-01
  %5704 = fmul fast float %5702, 2.500000e-01
  %5705 = fadd fast float %5703, 5.000000e-01
  %5706 = fadd fast float %5704, 5.000000e-01
  %5707 = fsub fast float %5671, %5669
  %5708 = fptoui float %5707 to i32
  %5709 = add i32 %5708, 320
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5709)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.CBufRet.f32 %5710, 1
  %5713 = fcmp fast une float %5696, %5671
  %5714 = fsub fast float %5646, %5711
  %5715 = fsub fast float %5650, %5712
  %5716 = call float @dx.op.unary.f32(i32 6, float %5714)  ; FAbs(value)
  %5717 = call float @dx.op.unary.f32(i32 6, float %5715)  ; FAbs(value)
  %5718 = fmul fast float %5716, %5700
  %5719 = fmul fast float %5717, %5700
  %5720 = fcmp fast olt float %5718, 1.000000e+00
  %5721 = fcmp fast olt float %5719, 1.000000e+00
  %5722 = and i1 %5720, %5721
  %5723 = or i1 %5713, %5722
  br i1 %5723, label %5724, label %6021, !dx.controlflow.hints !101

; <label>:5724                                    ; preds = %5662
  %5725 = fmul fast float %5702, 5.000000e-01
  %5726 = fmul fast float %5701, 5.000000e-01
  %5727 = fadd fast float %5725, 5.000000e-01
  %5728 = fadd fast float %5726, 5.000000e-01
  %5729 = sitofp i32 %5668 to float
  %5730 = fsub fast float %5696, %5729
  %5731 = call float @dx.op.unary.f32(i32 27, float %5730)  ; Round_ni(value)
  %5732 = call float @dx.op.unary.f32(i32 22, float %5696)  ; Frc(value)
  %5733 = call float @dx.op.unary.f32(i32 22, float %5728)  ; Frc(value)
  %5734 = call float @dx.op.unary.f32(i32 22, float %5727)  ; Frc(value)
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5733, float %5734, float %5731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = extractvalue %dx.types.ResRet.f32 %5735, 3
  %5740 = fcmp fast ogt float %5732, 0.000000e+00
  br i1 %5740, label %5741, label %5762, !dx.controlflow.hints !102

; <label>:5741                                    ; preds = %5724
  %5742 = fadd fast float %5731, 1.000000e+00
  %5743 = call float @dx.op.unary.f32(i32 22, float %5705)  ; Frc(value)
  %5744 = call float @dx.op.unary.f32(i32 22, float %5706)  ; Frc(value)
  %5745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5743, float %5744, float %5742, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.ResRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.ResRet.f32 %5745, 2
  %5749 = extractvalue %dx.types.ResRet.f32 %5745, 3
  %5750 = fsub fast float %5746, %5736
  %5751 = fsub fast float %5747, %5737
  %5752 = fsub fast float %5748, %5738
  %5753 = fsub fast float %5749, %5739
  %5754 = fmul fast float %5750, %5732
  %5755 = fmul fast float %5751, %5732
  %5756 = fmul fast float %5752, %5732
  %5757 = fmul fast float %5753, %5732
  %5758 = fadd fast float %5754, %5736
  %5759 = fadd fast float %5755, %5737
  %5760 = fadd fast float %5756, %5738
  %5761 = fadd fast float %5757, %5739
  br label %5762

; <label>:5762                                    ; preds = %5741, %5724
  %5763 = phi float [ %5758, %5741 ], [ %5736, %5724 ]
  %5764 = phi float [ %5759, %5741 ], [ %5737, %5724 ]
  %5765 = phi float [ %5760, %5741 ], [ %5738, %5724 ]
  %5766 = phi float [ %5761, %5741 ], [ %5739, %5724 ]
  %5767 = fadd fast float %5763, -5.000000e-01
  %5768 = fadd fast float %5765, -5.000000e-01
  %5769 = fmul fast float %5767, 0xBFD5555560000000
  %5770 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5768, float %5769)  ; FMad(a,b,c)
  %5771 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5764, float 0.000000e+00)  ; FMad(a,b,c)
  %5772 = fadd fast float %5771, %5766
  %5773 = fmul fast float %5767, -7.500000e-01
  %5774 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5768, float %5773)  ; FMad(a,b,c)
  %5775 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5764, float 0.000000e+00)  ; FMad(a,b,c)
  %5776 = fadd fast float %5775, %5766
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = fsub fast float %5780, %5770
  %5785 = fsub fast float %5781, %5772
  %5786 = fsub fast float %5782, %5774
  %5787 = fsub fast float %5783, %5776
  %5788 = fmul fast float %5784, %5778
  %5789 = fmul fast float %5785, %5778
  %5790 = fmul fast float %5786, %5778
  %5791 = fmul fast float %5787, %5778
  %5792 = fadd fast float %5788, %5770
  %5793 = fadd fast float %5789, %5772
  %5794 = fadd fast float %5790, %5774
  %5795 = fadd fast float %5791, %5776
  %5796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5797 = extractvalue %dx.types.ResRet.i32 %5796, 0
  %5798 = and i32 %5797, 536870911
  %5799 = uitofp i32 %5798 to float
  %5800 = fmul fast float %5799, %5646
  %5801 = fmul fast float %5799, %5650
  %5802 = fptoui float %5800 to i32
  %5803 = fptoui float %5801 to i32
  %5804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.i32 %5804, 0
  %5806 = and i32 %5805, 31
  %5807 = lshr i32 %5802, %5806
  %5808 = lshr i32 %5803, %5806
  %5809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5810 = extractvalue %dx.types.ResRet.i32 %5809, 0
  %5811 = and i32 %5810, 31
  %5812 = shl i32 1, %5811
  %5813 = call i32 @dx.op.binary.i32(i32 40, i32 %5812, i32 4)  ; UMin(a,b)
  %5814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5815 = extractvalue %dx.types.ResRet.i32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.i32 %5814, 1
  %5817 = icmp eq i32 %5813, 0
  br i1 %5817, label %5859, label %5818

; <label>:5818                                    ; preds = %5762
  br label %5819

; <label>:5819                                    ; preds = %5847, %5818
  %5820 = phi i32 [ %5850, %5847 ], [ 0, %5818 ]
  %5821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.i32 %5821, 0
  %5823 = lshr i32 %5822, 16
  %5824 = and i32 %5823, 31
  %5825 = shl i32 %5808, %5824
  %5826 = add i32 %5825, %5807
  %5827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5828 = extractvalue %dx.types.ResRet.i32 %5827, 0
  %5829 = and i32 %5828, 31
  %5830 = shl i32 %5826, %5829
  %5831 = add i32 %5830, %5820
  %5832 = shl i32 %5831, 2
  %5833 = add i32 %5832, 32
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = icmp slt i32 %5835, 0
  %5837 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5820
  %5838 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5820
  %5839 = bitcast float* %5837 to i32*
  %5840 = bitcast float* %5838 to i32*
  br i1 %5836, label %5841, label %5847

; <label>:5841                                    ; preds = %5819
  %5842 = and i32 %5835, 1073741823
  %5843 = add nuw nsw i32 %5842, 20
  %5844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5843, i32 undef)  ; BufferLoad(srv,index,wot)
  %5845 = extractvalue %dx.types.ResRet.i32 %5844, 0
  %5846 = extractvalue %dx.types.ResRet.i32 %5844, 1
  br label %5847

; <label>:5847                                    ; preds = %5841, %5819
  %5848 = phi i32 [ %5845, %5841 ], [ %5815, %5819 ]
  %5849 = phi i32 [ %5846, %5841 ], [ %5816, %5819 ]
  store i32 %5848, i32* %5839, align 4
  store i32 %5849, i32* %5840, align 4
  %5850 = add nuw i32 %5820, 1
  %5851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.i32 %5851, 2
  %5853 = icmp eq i32 %5852, 0
  %5854 = icmp ugt i32 %5835, -1073741825
  %5855 = and i1 %5854, %5853
  %5856 = icmp ult i32 %5850, %5813
  %5857 = and i1 %5855, %5856
  br i1 %5857, label %5819, label %5858

; <label>:5858                                    ; preds = %5847
  br label %5859

; <label>:5859                                    ; preds = %5858, %5762
  %5860 = phi i32 [ 0, %5762 ], [ %5850, %5858 ]
  %5861 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5862 = fptoui float %5861 to i32
  %5863 = icmp eq i32 %5862, 0
  br i1 %5863, label %5915, label %5864

; <label>:5864                                    ; preds = %5859
  br label %5865

; <label>:5865                                    ; preds = %5910, %5864
  %5866 = phi i32 [ %5911, %5910 ], [ %5860, %5864 ]
  %5867 = phi i32 [ %5912, %5910 ], [ 0, %5864 ]
  %5868 = lshr i32 %5867, 2
  %5869 = and i32 %5867, 3
  %5870 = add nuw nsw i32 %5868, 83
  %5871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5870)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.i32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.i32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.i32 %5871, 2
  %5875 = extractvalue %dx.types.CBufRet.i32 %5871, 3
  %5876 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5872, i32* %5876, align 4
  %5877 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5873, i32* %5877, align 4
  %5878 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5874, i32* %5878, align 4
  %5879 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5875, i32* %5879, align 4
  %5880 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5869
  %5881 = load i32, i32* %5880, align 4, !tbaa !103, !noalias !107
  %5882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5883 = extractvalue %dx.types.ResRet.i32 %5882, 0
  %5884 = lshr i32 %5883, 16
  %5885 = and i32 %5884, 31
  %5886 = shl i32 %5808, %5885
  %5887 = add i32 %5886, %5807
  %5888 = shl i32 %5887, 2
  %5889 = add i32 %5888, %5881
  %5890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5889, i32 undef)  ; BufferLoad(srv,index,wot)
  %5891 = extractvalue %dx.types.ResRet.i32 %5890, 0
  %5892 = icmp eq i32 %5891, 0
  br i1 %5892, label %5910, label %5893

; <label>:5893                                    ; preds = %5865
  %5894 = icmp slt i32 %5891, 0
  %5895 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5866
  %5896 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5866
  %5897 = bitcast float* %5895 to i32*
  %5898 = bitcast float* %5896 to i32*
  br i1 %5894, label %5899, label %5906

; <label>:5899                                    ; preds = %5893
  %5900 = and i32 %5891, 1073741823
  %5901 = add i32 %5881, 20
  %5902 = add i32 %5901, %5900
  %5903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.i32 %5903, 0
  %5905 = extractvalue %dx.types.ResRet.i32 %5903, 1
  br label %5906

; <label>:5906                                    ; preds = %5899, %5893
  %5907 = phi i32 [ %5904, %5899 ], [ %5815, %5893 ]
  %5908 = phi i32 [ %5905, %5899 ], [ %5816, %5893 ]
  store i32 %5907, i32* %5897, align 4
  store i32 %5908, i32* %5898, align 4
  %5909 = add i32 %5866, 1
  br label %5910

; <label>:5910                                    ; preds = %5906, %5865
  %5911 = phi i32 [ %5866, %5865 ], [ %5909, %5906 ]
  %5912 = add nuw i32 %5867, 1
  %5913 = icmp eq i32 %5912, %5862
  br i1 %5913, label %5914, label %5865

; <label>:5914                                    ; preds = %5910
  br label %5915

; <label>:5915                                    ; preds = %5914, %5859
  %5916 = phi i32 [ %5860, %5859 ], [ %5911, %5914 ]
  %5917 = icmp eq i32 %5916, 1
  %5918 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %5919 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %5917, label %5920, label %5923

; <label>:5920                                    ; preds = %5915
  %5921 = load float, float* %5918, align 4
  %5922 = load float, float* %5919, align 4
  br label %5950

; <label>:5923                                    ; preds = %5915
  %5924 = load float, float* %5918, align 4
  %5925 = load float, float* %5919, align 4
  %5926 = fdiv fast float 1.000000e+00, %5925
  %5927 = fsub fast float %5924, %5926
  %5928 = icmp ugt i32 %5916, 1
  br i1 %5928, label %5929, label %5945

; <label>:5929                                    ; preds = %5923
  br label %5930

; <label>:5930                                    ; preds = %5930, %5929
  %5931 = phi float [ %5940, %5930 ], [ %5927, %5929 ]
  %5932 = phi float [ %5941, %5930 ], [ %5924, %5929 ]
  %5933 = phi i32 [ %5942, %5930 ], [ 1, %5929 ]
  %5934 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5933
  %5935 = load float, float* %5934, align 4
  %5936 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5933
  %5937 = load float, float* %5936, align 4
  %5938 = fdiv fast float 1.000000e+00, %5937
  %5939 = fsub fast float %5935, %5938
  %5940 = call float @dx.op.binary.f32(i32 36, float %5931, float %5939)  ; FMin(a,b)
  %5941 = call float @dx.op.binary.f32(i32 35, float %5932, float %5935)  ; FMax(a,b)
  %5942 = add nuw i32 %5933, 1
  %5943 = icmp eq i32 %5942, %5916
  br i1 %5943, label %5944, label %5930

; <label>:5944                                    ; preds = %5930
  br label %5945

; <label>:5945                                    ; preds = %5944, %5923
  %5946 = phi float [ %5927, %5923 ], [ %5940, %5944 ]
  %5947 = phi float [ %5924, %5923 ], [ %5941, %5944 ]
  %5948 = fsub fast float %5947, %5946
  %5949 = fdiv fast float 1.000000e+00, %5948
  br label %5950

; <label>:5950                                    ; preds = %5945, %5920
  %5951 = phi float [ %5921, %5920 ], [ %5947, %5945 ]
  %5952 = phi float [ %5922, %5920 ], [ %5949, %5945 ]
  %5953 = fadd fast float %5654, %5951
  %5954 = fmul fast float %5953, %5952
  %5955 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5956 = fmul fast float %5955, 2.000000e+00
  %5957 = fsub fast float 1.000000e+00, %5956
  %5958 = fmul fast float %5792, %5792
  %5959 = fsub fast float %5793, %5958
  %5960 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5959)  ; FMax(a,b)
  %5961 = fdiv fast float 1.000000e+00, %5960
  %5962 = fmul fast float %5793, %5792
  %5963 = fsub fast float %5794, %5962
  %5964 = fsub fast float %5957, %5792
  %5965 = fmul fast float %5957, %5957
  %5966 = fsub fast float %5965, %5793
  %5967 = fmul fast float %5961, %5963
  %5968 = fmul fast float %5967, %5964
  %5969 = fsub fast float %5966, %5968
  %5970 = fmul fast float %5793, %5793
  %5971 = fsub fast float %5795, %5970
  %5972 = fmul fast float %5963, %5963
  %5973 = fmul fast float %5972, %5961
  %5974 = fsub fast float %5971, %5973
  %5975 = fdiv fast float %5969, %5974
  %5976 = fmul fast float %5975, %5963
  %5977 = fsub fast float %5964, %5976
  %5978 = fmul fast float %5977, %5961
  %5979 = fmul fast float %5978, %5792
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = fmul fast float %5975, %5793
  %5982 = fsub fast float %5980, %5981
  %5983 = fmul fast float %5978, %5978
  %5984 = fmul fast float %5975, 4.000000e+00
  %5985 = fmul fast float %5984, %5982
  %5986 = fsub fast float %5983, %5985
  %5987 = call float @dx.op.unary.f32(i32 24, float %5986)  ; Sqrt(value)
  %5988 = fcmp fast oge float %5978, 0.000000e+00
  %5989 = fsub fast float -0.000000e+00, %5987
  %5990 = select i1 %5988, float %5989, float %5987
  %5991 = fsub fast float %5990, %5978
  %5992 = fdiv fast float %5991, %5975
  %5993 = fdiv fast float %5982, %5991
  %5994 = fmul fast float %5992, 5.000000e-01
  %5995 = fmul fast float %5993, 2.000000e+00
  %5996 = select i1 %5988, float %5994, float %5995
  %5997 = select i1 %5988, float %5995, float %5994
  %5998 = call float @dx.op.binary.f32(i32 35, float %5996, float %5997)  ; FMax(a,b)
  %5999 = call float @dx.op.binary.f32(i32 36, float %5996, float %5997)  ; FMin(a,b)
  %6000 = fcmp fast ogt float %5957, %5998
  %6001 = fsub fast float %5957, %5999
  %6002 = fsub fast float %5957, %5998
  %6003 = fsub fast float %5998, %5999
  %6004 = select i1 %6000, float %6002, float %6003
  %6005 = fmul float %6001, %6004
  %6006 = select i1 %6000, float %5999, float %5957
  %6007 = fcmp fast ogt float %5957, %5999
  %6008 = fmul fast float %6006, %5998
  %6009 = fadd fast float %6006, %5998
  %6010 = fmul fast float %6009, %5792
  %6011 = fadd fast float %6008, %5793
  %6012 = fsub fast float %6011, %6010
  %6013 = fdiv fast float %6012, %6005
  %6014 = select i1 %6007, float %6013, float 0.000000e+00
  %6015 = fsub fast float 1.000000e+00, %6014
  %6016 = select i1 %6000, float %6015, float %6014
  %6017 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6018 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %6019 = fmul fast float %6018, %6017
  %6020 = fsub fast float 1.000000e+00, %6019
  br label %6021

; <label>:6021                                    ; preds = %5950, %5662, %5627, %5623, %5587
  %6022 = phi float [ 1.000000e+00, %5587 ], [ %6020, %5950 ], [ 1.000000e+00, %5627 ], [ 1.000000e+00, %5662 ], [ 1.000000e+00, %5623 ]
  %6023 = fcmp fast ogt float %5619, 0.000000e+00
  br i1 %6023, label %6024, label %6032, !dx.controlflow.hints !116

; <label>:6024                                    ; preds = %6021
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6027 = fadd fast float %6026, %5500
  %6028 = call float @dx.op.binary.f32(i32 35, float %6027, float 0.000000e+00)  ; FMax(a,b)
  %6029 = fadd fast float %6028, 0x3F10000000000000
  %6030 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5518, float %5519, float undef, float undef, i32 0, i32 0, i32 undef, float %6029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6031 = extractvalue %dx.types.ResRet.f32 %6030, 0
  br label %6032

; <label>:6032                                    ; preds = %6024, %6021
  %6033 = phi float [ %6031, %6024 ], [ 1.000000e+00, %6021 ]
  %6034 = fcmp fast ogt float %5617, 0.000000e+00
  br i1 %6034, label %6035, label %6043, !dx.controlflow.hints !117

; <label>:6035                                    ; preds = %6032
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 1
  %6038 = fadd fast float %6037, %5500
  %6039 = call float @dx.op.binary.f32(i32 35, float %6038, float 0.000000e+00)  ; FMax(a,b)
  %6040 = fadd fast float %6039, 0x3F10000000000000
  %6041 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5510, float %5511, float undef, float undef, i32 0, i32 0, i32 undef, float %6040)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 0
  br label %6043

; <label>:6043                                    ; preds = %6035, %6032
  %6044 = phi float [ %6042, %6035 ], [ 1.000000e+00, %6032 ]
  %6045 = fcmp fast ogt float %5616, 0.000000e+00
  br i1 %6045, label %6046, label %6058, !dx.controlflow.hints !118

; <label>:6046                                    ; preds = %6043
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = fadd fast float %6048, %5500
  %6050 = call float @dx.op.binary.f32(i32 35, float %6049, float 0.000000e+00)  ; FMax(a,b)
  %6051 = fadd fast float %6050, 0x3F10000000000000
  br i1 %5503, label %6052, label %6055, !dx.controlflow.hints !119

; <label>:6052                                    ; preds = %6046
  %6053 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5492, float %5496, float undef, float undef, i32 0, i32 0, i32 undef, float %6051)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6054 = extractvalue %dx.types.ResRet.f32 %6053, 0
  br label %6058

; <label>:6055                                    ; preds = %6046
  %6056 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5492, float %5496, float undef, float undef, i32 0, i32 0, i32 undef, float %6051)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  br label %6058

; <label>:6058                                    ; preds = %6055, %6052, %6043
  %6059 = phi float [ %6054, %6052 ], [ %6057, %6055 ], [ 1.000000e+00, %6043 ]
  %6060 = fsub fast float %6033, %6022
  %6061 = fmul fast float %6060, %5589
  %6062 = fadd fast float %6061, %6022
  %6063 = fsub fast float %6044, %6062
  %6064 = fmul fast float %6063, %5588
  %6065 = fadd fast float %6064, %6062
  %6066 = fsub fast float %6059, %6065
  %6067 = fmul fast float %6066, %5616
  %6068 = fadd fast float %6067, %6065
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6071 = fcmp fast ogt float %6070, 0.000000e+00
  br i1 %6071, label %6072, label %6112, !dx.controlflow.hints !120

; <label>:6072                                    ; preds = %6058
  %6073 = fcmp fast ugt float %6070, 0.000000e+00
  br i1 %6073, label %6074, label %6109

; <label>:6074                                    ; preds = %6072
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.CBufRet.f32 %6075, 1
  %6078 = extractvalue %dx.types.CBufRet.f32 %6075, 2
  %6079 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6080, 2
  %6084 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6085 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6091 = fadd fast float %6088, %5469
  %6092 = fadd fast float %6089, %5470
  %6093 = fadd fast float %6090, %5471
  %6094 = fmul fast float %6091, %6076
  %6095 = call float @dx.op.tertiary.f32(i32 46, float %6077, float %6092, float %6094)  ; FMad(a,b,c)
  %6096 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6093, float %6095)  ; FMad(a,b,c)
  %6097 = fadd fast float %6096, %6079
  %6098 = fmul fast float %6091, %6081
  %6099 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6092, float %6098)  ; FMad(a,b,c)
  %6100 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6093, float %6099)  ; FMad(a,b,c)
  %6101 = fadd fast float %6100, %6084
  %6102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6097, float %6101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6103 = extractvalue %dx.types.ResRet.f32 %6102, 0
  %6104 = fmul fast float %6103, %6086
  %6105 = fadd fast float %6104, %6085
  %6106 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6107 = fmul fast float %6106, %6070
  %6108 = fsub fast float 1.000000e+00, %6107
  br label %6109

; <label>:6109                                    ; preds = %6074, %6072
  %6110 = phi float [ %6108, %6074 ], [ 1.000000e+00, %6072 ]
  %6111 = fmul fast float %6110, %6068
  br label %6112

; <label>:6112                                    ; preds = %6109, %6058, %5449
  %6113 = phi float [ 1.000000e+00, %5449 ], [ %6111, %6109 ], [ %6068, %6058 ]
  %6114 = call float @dx.op.binary.f32(i32 36, float %6113, float %6113)  ; FMin(a,b)
  %6115 = call float @dx.op.binary.f32(i32 36, float %6113, float %6114)  ; FMin(a,b)
  %6116 = fcmp fast ogt float %6115, 0.000000e+00
  br i1 %6116, label %6117, label %6277, !dx.controlflow.hints !121

; <label>:6117                                    ; preds = %6112
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6122 = extractvalue %dx.types.CBufRet.f32 %6118, 3
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.CBufRet.f32 %6123, 2
  %6127 = extractvalue %dx.types.CBufRet.f32 %6123, 3
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6133 = fmul fast float %6119, %5469
  %6134 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %6120, float %6133)  ; FMad(a,b,c)
  %6135 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %6121, float %6134)  ; FMad(a,b,c)
  %6136 = fadd fast float %6135, %6122
  %6137 = fmul fast float %6124, %5469
  %6138 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %6125, float %6137)  ; FMad(a,b,c)
  %6139 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %6126, float %6138)  ; FMad(a,b,c)
  %6140 = fadd fast float %6139, %6127
  %6141 = fmul fast float %6129, %5469
  %6142 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %6130, float %6141)  ; FMad(a,b,c)
  %6143 = call float @dx.op.tertiary.f32(i32 46, float %5471, float %6131, float %6142)  ; FMad(a,b,c)
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.CBufRet.f32 %6144, 3
  %6148 = fmul fast float %6147, %6136
  %6149 = fmul fast float %6147, %6140
  %6150 = fadd fast float %6148, %6145
  %6151 = fadd fast float %6149, %6146
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6155 = fsub fast float %6150, %6153
  %6156 = fsub fast float %6151, %6154
  %6157 = fcmp fast olt float %6155, 0.000000e+00
  %6158 = fcmp fast olt float %6156, 0.000000e+00
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6163 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6164 = select i1 %6157, float %6160, float %6162
  %6165 = select i1 %6158, float %6161, float %6163
  %6166 = fmul fast float %6164, %6155
  %6167 = fmul fast float %6165, %6156
  %6168 = call float @dx.op.unary.f32(i32 6, float %6166)  ; FAbs(value)
  %6169 = call float @dx.op.unary.f32(i32 6, float %6167)  ; FAbs(value)
  %6170 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %6171 = call float @dx.op.binary.f32(i32 35, float %6168, float %6169)  ; FMax(a,b)
  %6172 = fsub fast float %6170, %6171
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  br i1 %6174, label %6175, label %6216, !dx.controlflow.hints !122

; <label>:6175                                    ; preds = %6117
  %6176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6150, float %6151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6177 = extractvalue %dx.types.ResRet.f32 %6176, 1
  %6178 = fcmp fast ogt float %6177, 0.000000e+00
  br i1 %6178, label %6179, label %6211

; <label>:6179                                    ; preds = %6175
  %6180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6150, float %6151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6181 = extractvalue %dx.types.ResRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.ResRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.ResRet.f32 %6180, 2
  %6184 = extractvalue %dx.types.ResRet.f32 %6180, 3
  %6185 = fsub fast float 1.000000e+00, %6132
  %6186 = fsub fast float %6185, %6143
  %6187 = fmul fast float %6186, 0x400921FB60000000
  %6188 = fadd fast float %6187, 0x3FF921FB60000000
  %6189 = call float @dx.op.unary.f32(i32 13, float %6188)  ; Sin(value)
  %6190 = fadd fast float %6189, -1.000000e+00
  %6191 = fmul fast float %6190, 0x3FD45F3060000000
  %6192 = fmul fast float %6186, 0x401921FB60000000
  %6193 = fadd fast float %6192, 0x400921FB60000000
  %6194 = call float @dx.op.unary.f32(i32 13, float %6193)  ; Sin(value)
  %6195 = fadd fast float %6194, 0x3E7777A5C0000000
  %6196 = fmul fast float %6195, 0x3FC45F3060000000
  %6197 = fmul fast float %6186, 0x4022D97C80000000
  %6198 = fadd fast float %6197, 0x4012D97C80000000
  %6199 = call float @dx.op.unary.f32(i32 13, float %6198)  ; Sin(value)
  %6200 = fadd fast float %6199, 1.000000e+00
  %6201 = fmul fast float %6200, 0x3FBB2995E0000000
  %6202 = fmul fast float %6186, 0x402921FB60000000
  %6203 = fadd fast float %6202, 0x401921FB60000000
  %6204 = call float @dx.op.unary.f32(i32 13, float %6203)  ; Sin(value)
  %6205 = fadd fast float %6204, 0xBE8777A5C0000000
  %6206 = fmul fast float %6205, 0x3FB45F3060000000
  %6207 = call float @dx.op.dot4.f32(i32 56, float %6181, float %6182, float %6183, float %6184, float %6191, float %6196, float %6201, float %6206)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6208 = fmul fast float %6207, 0xBFF7154760000000
  %6209 = call float @dx.op.unary.f32(i32 21, float %6208)  ; Exp(value)
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  br label %6211

; <label>:6211                                    ; preds = %6179, %6175
  %6212 = phi float [ %6210, %6179 ], [ 1.000000e+00, %6175 ]
  %6213 = fadd fast float %6212, -1.000000e+00
  %6214 = fmul fast float %6213, %6173
  %6215 = fadd fast float %6214, 1.000000e+00
  br label %6216

; <label>:6216                                    ; preds = %6211, %6117
  %6217 = phi float [ %6215, %6211 ], [ 1.000000e+00, %6117 ]
  %6218 = fmul fast float %6217, %6113
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6223 = fadd fast float %6220, %196
  %6224 = fadd fast float %6221, %197
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6227 = fsub fast float -0.000000e+00, %6223
  %6228 = fsub fast float -0.000000e+00, %6224
  %6229 = fsub fast float %5098, %6222
  %6230 = fadd fast float %6229, %6226
  %6231 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6227, float %6228, float %6230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = fdiv fast float 1.000000e+00, %6232
  %6234 = fmul fast float %6233, %6231
  %6235 = fmul fast float %5450, %6234
  %6236 = fmul fast float %5451, %6234
  %6237 = fadd fast float %6235, %6223
  %6238 = fadd fast float %6236, %6224
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = fsub fast float %6237, %6240
  %6243 = fsub fast float %6238, %6241
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6247 = fmul fast float %6242, %6245
  %6248 = fmul fast float %6243, %6246
  %6249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.i32 %6249, 3
  %6251 = icmp eq i32 %6250, 0
  br i1 %6251, label %6257, label %6252

; <label>:6252                                    ; preds = %6216
  %6253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6247, float %6248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6254 = extractvalue %dx.types.ResRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.ResRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.ResRet.f32 %6253, 2
  br label %6262

; <label>:6257                                    ; preds = %6216
  %6258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6247, float %6248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.ResRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.ResRet.f32 %6258, 2
  br label %6262

; <label>:6262                                    ; preds = %6257, %6252
  %6263 = phi float [ %6254, %6252 ], [ %6259, %6257 ]
  %6264 = phi float [ %6255, %6252 ], [ %6260, %6257 ]
  %6265 = phi float [ %6256, %6252 ], [ %6261, %6257 ]
  %6266 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6267 = fmul fast float %6266, %6263
  %6268 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6269 = fsub fast float %6234, %6268
  %6270 = fsub fast float %6269, %6267
  %6271 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6270)  ; FMax(a,b)
  %6272 = fmul fast float %6271, %6264
  %6273 = call float @dx.op.binary.f32(i32 36, float %6265, float %6272)  ; FMin(a,b)
  %6274 = fmul fast float %6273, 0xBFF7154760000000
  %6275 = call float @dx.op.unary.f32(i32 21, float %6274)  ; Exp(value)
  %6276 = fmul fast float %6218, %6275
  br label %6277

; <label>:6277                                    ; preds = %6262, %6112
  %6278 = phi float [ %6276, %6262 ], [ %6113, %6112 ]
  %6279 = call float @dx.op.binary.f32(i32 36, float %6278, float %6278)  ; FMin(a,b)
  %6280 = call float @dx.op.binary.f32(i32 36, float %6278, float %6279)  ; FMin(a,b)
  %6281 = fcmp fast ogt float %6280, 0.000000e+00
  br i1 %6281, label %6282, label %6533, !dx.controlflow.hints !123

; <label>:6282                                    ; preds = %6277
  %6283 = fmul fast float %6278, %5461
  %6284 = fmul fast float %6278, %5462
  %6285 = fmul fast float %6278, %5463
  %6286 = fsub fast float %198, %4294
  %6287 = fcmp fast ogt float %6286, 0.000000e+00
  %6288 = fmul fast float %5450, 5.120000e+02
  %6289 = fmul fast float %5451, 5.120000e+02
  %6290 = fmul fast float %5452, 5.120000e+02
  %6291 = fadd fast float %6290, %198
  %6292 = fsub fast float %4294, %6291
  %6293 = fmul fast float %6292, 2.000000e+00
  %6294 = fadd fast float %6293, %6291
  %6295 = select i1 %6287, float %6294, float %6291
  %6296 = fsub fast float %6295, %198
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6288, float %6289, float %6296, float %6288, float %6289, float %6296)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = call float @dx.op.unary.f32(i32 25, float %6297)  ; Rsqrt(value)
  %6299 = fmul fast float %6298, %6288
  %6300 = fmul fast float %6298, %6289
  %6301 = fmul fast float %6298, %6296
  %6302 = fsub fast float %4294, %198
  %6303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6302)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6305 = fdiv fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6305, %6303
  %6307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6286, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6308 = fcmp fast ogt float %6307, 0.000000e+00
  %6309 = fcmp fast olt float %6307, 0.000000e+00
  %6310 = zext i1 %6308 to i32
  %6311 = zext i1 %6309 to i32
  %6312 = sub nsw i32 %6310, %6311
  %6313 = sitofp i32 %6312 to float
  %6314 = fsub fast float %6295, %4294
  %6315 = call float @dx.op.dot3.f32(i32 55, float %6288, float %6289, float %6314, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6316 = fcmp fast ogt float %6315, 0.000000e+00
  %6317 = fcmp fast olt float %6315, 0.000000e+00
  %6318 = zext i1 %6316 to i32
  %6319 = zext i1 %6317 to i32
  %6320 = sub nsw i32 %6318, %6319
  %6321 = sitofp i32 %6320 to float
  %6322 = fcmp fast une float %6313, %6321
  br i1 %6322, label %6323, label %6333

; <label>:6323                                    ; preds = %6282
  %6324 = fmul fast float %6306, %6301
  %6325 = fmul fast float %6306, %6300
  %6326 = fmul fast float %6306, %6299
  %6327 = fmul fast float %6326, %6326
  %6328 = fmul fast float %6325, %6325
  %6329 = fadd fast float %6327, %6328
  %6330 = fmul fast float %6324, %6324
  %6331 = fadd fast float %6329, %6330
  %6332 = call float @dx.op.unary.f32(i32 24, float %6331)  ; Sqrt(value)
  br label %6343

; <label>:6333                                    ; preds = %6282
  %6334 = icmp slt i32 %6312, 0
  br i1 %6334, label %6335, label %6343

; <label>:6335                                    ; preds = %6333
  %6336 = fsub fast float %198, %6295
  %6337 = fmul fast float %6288, %6288
  %6338 = fmul fast float %6289, %6289
  %6339 = fadd fast float %6337, %6338
  %6340 = fmul fast float %6336, %6336
  %6341 = fadd fast float %6339, %6340
  %6342 = call float @dx.op.unary.f32(i32 24, float %6341)  ; Sqrt(value)
  br label %6343

; <label>:6343                                    ; preds = %6335, %6333, %6323
  %6344 = phi float [ %6332, %6323 ], [ %6342, %6335 ], [ 0.000000e+00, %6333 ]
  %6345 = fsub fast float -0.000000e+00, %6344
  %6346 = select i1 %6287, float -0.000000e+00, float %6345
  %6347 = fmul fast float %4295, 0x3FF7154760000000
  %6348 = fmul fast float %6347, %6346
  %6349 = fmul fast float %4296, 0x3FF7154760000000
  %6350 = fmul fast float %6349, %6346
  %6351 = fmul fast float %4297, 0x3FF7154760000000
  %6352 = fmul fast float %6351, %6346
  %6353 = call float @dx.op.unary.f32(i32 21, float %6348)  ; Exp(value)
  %6354 = call float @dx.op.unary.f32(i32 21, float %6350)  ; Exp(value)
  %6355 = call float @dx.op.unary.f32(i32 21, float %6352)  ; Exp(value)
  %6356 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6357 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6358 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6359 = fmul fast float %6283, %6356
  %6360 = fmul fast float %6284, %6357
  %6361 = fmul fast float %6285, %6358
  %6362 = fsub fast float %5450, %5086
  %6363 = fsub fast float %5451, %5085
  %6364 = fsub fast float %5452, %5084
  %6365 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %6362, float %6363, float %6364)  ; Dot3(ax,ay,az,bx,by,bz)
  %6366 = call float @dx.op.unary.f32(i32 25, float %6365)  ; Rsqrt(value)
  %6367 = fmul fast float %6366, %6362
  %6368 = fmul fast float %6366, %6363
  %6369 = fmul fast float %6366, %6364
  %6370 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5082, float %5081, float %6367, float %6368, float %6369)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  %6373 = fmul fast float %6372, %6372
  %6374 = fmul fast float %6373, %5114
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = fmul fast float %6375, %6372
  %6377 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %6367, float %6368, float %6369)  ; Dot3(ax,ay,az,bx,by,bz)
  %6378 = fmul fast float %6377, %6377
  %6379 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6380 = fsub fast float 1.000000e+00, %5096
  %6381 = call float @dx.op.binary.f32(i32 35, float %6380, float 0x3F847AE140000000)  ; FMax(a,b)
  %6382 = fmul fast float %6381, %6381
  %6383 = fmul fast float %6382, %6382
  %6384 = fsub fast float 1.000000e+00, %6383
  %6385 = fmul fast float %5101, %5101
  %6386 = fmul fast float %6385, %6384
  %6387 = fadd fast float %6386, %6383
  %6388 = bitcast float %6387 to i32
  %6389 = ashr i32 %6388, 1
  %6390 = add nsw i32 %6389, 532487669
  %6391 = bitcast i32 %6390 to float
  %6392 = fadd fast float %6391, %5101
  %6393 = fmul fast float %6383, %6378
  %6394 = fsub fast float 1.000000e+00, %6378
  %6395 = fadd fast float %6394, %6393
  %6396 = fmul fast float %6379, %6379
  %6397 = fmul fast float %6396, %6384
  %6398 = fadd fast float %6397, %6383
  %6399 = bitcast float %6398 to i32
  %6400 = ashr i32 %6399, 1
  %6401 = add nsw i32 %6400, 532487669
  %6402 = bitcast i32 %6401 to float
  %6403 = fadd fast float %6402, %6379
  %6404 = fmul fast float %6395, %6395
  %6405 = fmul fast float %6404, %6392
  %6406 = fmul fast float %6405, %6403
  %6407 = fdiv fast float 0x3FF0A00000000000, %6406
  %6408 = fmul fast float %6407, %6383
  %6409 = call float @dx.op.unary.f32(i32 6, float %6371)  ; FAbs(value)
  %6410 = fsub fast float 1.000000e+00, %6409
  %6411 = bitcast float %6410 to i32
  %6412 = sitofp i32 %6411 to float
  %6413 = fmul fast float %6412, 5.000000e+00
  %6414 = fadd fast float %6413, 0xC1EFBF8940000000
  %6415 = fptosi float %6414 to i32
  %6416 = bitcast i32 %6415 to float
  %6417 = fsub fast float 1.000000e+00, %5087
  %6418 = fsub fast float 1.000000e+00, %5088
  %6419 = fsub fast float 1.000000e+00, %5099
  %6420 = fmul fast float %6416, %6417
  %6421 = fmul fast float %6416, %6418
  %6422 = fmul fast float %6416, %6419
  %6423 = fadd fast float %6420, %5087
  %6424 = fadd fast float %6421, %5088
  %6425 = fadd fast float %6422, %5099
  br i1 %5361, label %6426, label %6449

; <label>:6426                                    ; preds = %6343
  %6427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3892, float %6409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.ResRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.ResRet.f32 %6427, 2
  %6431 = fadd fast float %6428, -5.000000e-01
  %6432 = fadd fast float %6429, -5.000000e-01
  %6433 = fadd fast float %6430, -5.000000e-01
  %6434 = fmul fast float %5087, 4.000000e+00
  %6435 = fmul fast float %6434, %6417
  %6436 = fmul fast float %6435, %6431
  %6437 = fmul fast float %5088, 4.000000e+00
  %6438 = fmul fast float %6437, %6418
  %6439 = fmul fast float %6438, %6432
  %6440 = fmul fast float %5099, 4.000000e+00
  %6441 = fmul fast float %6440, %6419
  %6442 = fmul fast float %6441, %6433
  %6443 = fadd fast float %6436, %6423
  %6444 = fadd fast float %6439, %6424
  %6445 = fadd fast float %6442, %6425
  %6446 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6447 = call float @dx.op.unary.f32(i32 7, float %6444)  ; Saturate(value)
  %6448 = call float @dx.op.unary.f32(i32 7, float %6445)  ; Saturate(value)
  br label %6449

; <label>:6449                                    ; preds = %6426, %6343
  %6450 = phi float [ %6446, %6426 ], [ %6423, %6343 ]
  %6451 = phi float [ %6447, %6426 ], [ %6424, %6343 ]
  %6452 = phi float [ %6448, %6426 ], [ %6425, %6343 ]
  %6453 = fmul fast float %6370, 9.843750e-01
  %6454 = fadd fast float %6453, 7.812500e-03
  %6455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6454, float %5351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6456 = extractvalue %dx.types.ResRet.f32 %6455, 2
  %6457 = extractvalue %dx.types.ResRet.f32 %6455, 3
  %6458 = fmul fast float %6456, %5087
  %6459 = fmul fast float %6456, %5088
  %6460 = fmul fast float %6456, %5099
  %6461 = fadd fast float %6458, %6457
  %6462 = fadd fast float %6459, %6457
  %6463 = fadd fast float %6460, %6457
  br i1 %5361, label %6464, label %6487

; <label>:6464                                    ; preds = %6449
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3892, float %6370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.ResRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.ResRet.f32 %6465, 2
  %6469 = fadd fast float %6466, -5.000000e-01
  %6470 = fadd fast float %6467, -5.000000e-01
  %6471 = fadd fast float %6468, -5.000000e-01
  %6472 = fmul fast float %5087, 4.000000e+00
  %6473 = fmul fast float %6472, %6417
  %6474 = fmul fast float %6473, %6469
  %6475 = fmul fast float %5088, 4.000000e+00
  %6476 = fmul fast float %6475, %6418
  %6477 = fmul fast float %6476, %6470
  %6478 = fmul fast float %5099, 4.000000e+00
  %6479 = fmul fast float %6478, %6419
  %6480 = fmul fast float %6479, %6471
  %6481 = fadd fast float %6474, %6461
  %6482 = fadd fast float %6477, %6462
  %6483 = fadd fast float %6480, %6463
  %6484 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6485 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6486 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  br label %6487

; <label>:6487                                    ; preds = %6464, %6449
  %6488 = phi float [ %6484, %6464 ], [ %6461, %6449 ]
  %6489 = phi float [ %6485, %6464 ], [ %6462, %6449 ]
  %6490 = phi float [ %6486, %6464 ], [ %6463, %6449 ]
  %6491 = call float @dx.op.binary.f32(i32 35, float %6489, float %6490)  ; FMax(a,b)
  %6492 = call float @dx.op.binary.f32(i32 35, float %6488, float %6491)  ; FMax(a,b)
  %6493 = fsub fast float 1.000000e+00, %6492
  %6494 = fmul fast float %6450, %6408
  %6495 = fmul fast float %6451, %6408
  %6496 = fmul fast float %6452, %6408
  %6497 = fsub fast float 1.000000e+00, %6371
  %6498 = bitcast float %6497 to i32
  %6499 = sitofp i32 %6498 to float
  %6500 = fmul fast float %6499, 5.000000e+00
  %6501 = fadd fast float %6500, 0xC1EFBF8940000000
  %6502 = fptosi float %6501 to i32
  %6503 = bitcast i32 %6502 to float
  %6504 = fmul fast float %6503, %3893
  %6505 = fmul fast float %6493, %6504
  %6506 = fmul fast float %6505, %5411
  %6507 = fmul fast float %6505, %5412
  %6508 = fmul fast float %6505, %5413
  %6509 = fadd fast float %6506, %6494
  %6510 = fadd fast float %6507, %6495
  %6511 = fadd fast float %6508, %6496
  %6512 = fmul fast float %6376, %6359
  %6513 = fmul fast float %6512, %6493
  %6514 = fmul fast float %6376, %6360
  %6515 = fmul fast float %6514, %6493
  %6516 = fmul fast float %6376, %6361
  %6517 = fmul fast float %6516, %6493
  %6518 = fmul fast float %6512, %6509
  %6519 = fmul fast float %6514, %6510
  %6520 = fmul fast float %6516, %6511
  %6521 = fadd fast float %6513, %5395
  %6522 = fmul fast float %6521, %3889
  %6523 = fadd fast float %6515, %5396
  %6524 = fmul fast float %6523, %3889
  %6525 = fadd fast float %6517, %5397
  %6526 = fmul fast float %6525, %3889
  %6527 = fadd fast float %6518, %5438
  %6528 = fmul fast float %6527, %3889
  %6529 = fadd fast float %6519, %5441
  %6530 = fmul fast float %6529, %3889
  %6531 = fadd fast float %6520, %5444
  %6532 = fmul fast float %6531, %3889
  br label %6533

; <label>:6533                                    ; preds = %6487, %6277, %5388
  %6534 = phi float [ %5439, %5388 ], [ %5439, %6277 ], [ %6528, %6487 ]
  %6535 = phi float [ %5442, %5388 ], [ %5442, %6277 ], [ %6530, %6487 ]
  %6536 = phi float [ %5445, %5388 ], [ %5445, %6277 ], [ %6532, %6487 ]
  %6537 = phi float [ %5434, %5388 ], [ %5434, %6277 ], [ %6522, %6487 ]
  %6538 = phi float [ %5435, %5388 ], [ %5435, %6277 ], [ %6524, %6487 ]
  %6539 = phi float [ %5436, %5388 ], [ %5436, %6277 ], [ %6526, %6487 ]
  %6540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.i32 %6540, 0
  %6542 = icmp eq i32 %6541, 0
  br i1 %6542, label %7163, label %6543

; <label>:6543                                    ; preds = %6533
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 2
  %6546 = extractvalue %dx.types.CBufRet.f32 %6544, 3
  %6547 = fmul fast float %6545, %113
  %6548 = fmul fast float %6546, %114
  %6549 = fptoui float %6547 to i32
  %6550 = fptoui float %6548 to i32
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6555 = fadd fast float %104, -4.000000e+00
  %6556 = call float @dx.op.binary.f32(i32 35, float %6555, float 0.000000e+00)  ; FMax(a,b)
  %6557 = fadd fast float %6556, %6552
  %6558 = fmul fast float %6557, %6553
  %6559 = call float @dx.op.unary.f32(i32 23, float %6558)  ; Log(value)
  %6560 = fmul fast float %6559, %6554
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 2
  %6563 = fmul fast float %6560, %6562
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.i32 %6565, 1
  %6567 = add i32 %6566, -1
  %6568 = uitofp i32 %6566 to float
  %6569 = fmul fast float %6568, %6564
  %6570 = fptoui float %6569 to i32
  %6571 = call i32 @dx.op.binary.i32(i32 40, i32 %6570, i32 %6567)  ; UMin(a,b)
  %6572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.i32 %6572, 2
  %6574 = extractvalue %dx.types.CBufRet.i32 %6572, 3
  %6575 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6550, i32 %6573, i32 %6549)  ; UMad(a,b,c)
  %6576 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6571, i32 %6574, i32 %6575)  ; UMad(a,b,c)
  %6577 = add nsw i32 %6541, -1
  %6578 = call i32 @dx.op.binary.i32(i32 37, i32 %6577, i32 0)  ; IMax(a,b)
  %6579 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %6580 = fptoui float %6579 to i32
  %6581 = lshr i32 %6580, 5
  %6582 = call i32 @dx.op.binary.i32(i32 40, i32 %6581, i32 8191)  ; UMin(a,b)
  %6583 = shl i32 %6582, 2
  %6584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6583, i32 undef)  ; BufferLoad(srv,index,wot)
  %6585 = extractvalue %dx.types.ResRet.i32 %6584, 0
  %6586 = lshr i32 %6585, 16
  %6587 = and i32 %6585, 65535
  %6588 = lshr i32 %6585, 21
  %6589 = lshr i32 %6587, 5
  %6590 = call i32 @dx.op.binary.i32(i32 40, i32 %6589, i32 %6578)  ; UMin(a,b)
  %6591 = icmp ugt i32 %6588, %6590
  br i1 %6591, label %7163, label %6592

; <label>:6592                                    ; preds = %6543
  br label %6593

; <label>:6593                                    ; preds = %7153, %6592
  %6594 = phi i32 [ %7160, %7153 ], [ %6588, %6592 ]
  %6595 = phi float [ %7154, %7153 ], [ %6534, %6592 ]
  %6596 = phi float [ %7155, %7153 ], [ %6535, %6592 ]
  %6597 = phi float [ %7156, %7153 ], [ %6536, %6592 ]
  %6598 = phi float [ %7157, %7153 ], [ %6537, %6592 ]
  %6599 = phi float [ %7158, %7153 ], [ %6538, %6592 ]
  %6600 = phi float [ %7159, %7153 ], [ %6539, %6592 ]
  %6601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.i32 %6601, 0
  %6603 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6576, i32 %6602, i32 %6594)  ; UMad(a,b,c)
  %6604 = shl i32 %6603, 2
  %6605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6604, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.i32 %6605, 0
  %6607 = shl i32 %6594, 5
  %6608 = sub nsw i32 %6586, %6607
  %6609 = call i32 @dx.op.binary.i32(i32 37, i32 %6608, i32 0)  ; IMax(a,b)
  %6610 = call i32 @dx.op.binary.i32(i32 38, i32 %6609, i32 31)  ; IMin(a,b)
  %6611 = sub nsw i32 1, %6586
  %6612 = add nsw i32 %6611, %6587
  %6613 = call i32 @dx.op.binary.i32(i32 37, i32 %6612, i32 0)  ; IMax(a,b)
  %6614 = call i32 @dx.op.binary.i32(i32 38, i32 %6613, i32 32)  ; IMin(a,b)
  %6615 = and i32 %6614, 31
  %6616 = shl i32 -1, %6615
  %6617 = xor i32 %6616, -1
  %6618 = and i32 %6610, 31
  %6619 = shl i32 %6617, %6618
  %6620 = icmp eq i32 %6614, 32
  %6621 = select i1 %6620, i32 -1, i32 %6619
  %6622 = and i32 %6621, %6606
  %6623 = icmp eq i32 %6622, 0
  br i1 %6623, label %7153, label %6624

; <label>:6624                                    ; preds = %6593
  br label %6625

; <label>:6625                                    ; preds = %6759, %6624
  %6626 = phi i32 [ %6637, %6759 ], [ %6622, %6624 ]
  %6627 = phi float [ %6760, %6759 ], [ %6595, %6624 ]
  %6628 = phi float [ %6761, %6759 ], [ %6596, %6624 ]
  %6629 = phi float [ %6762, %6759 ], [ %6597, %6624 ]
  %6630 = phi float [ %6763, %6759 ], [ %6598, %6624 ]
  %6631 = phi float [ %6764, %6759 ], [ %6599, %6624 ]
  %6632 = phi float [ %6765, %6759 ], [ %6600, %6624 ]
  %6633 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6626)  ; FirstbitLo(value)
  %6634 = add i32 %6633, %6607
  %6635 = and i32 %6633, 31
  %6636 = shl i32 1, %6635
  %6637 = xor i32 %6636, %6626
  %6638 = mul i32 %6634, 112
  %6639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6638, i32 undef)  ; BufferLoad(srv,index,wot)
  %6640 = extractvalue %dx.types.ResRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.ResRet.f32 %6639, 1
  %6642 = extractvalue %dx.types.ResRet.f32 %6639, 2
  %6643 = or i32 %6638, 12
  %6644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6643, i32 undef)  ; BufferLoad(srv,index,wot)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = add i32 %6638, 16
  %6647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6646, i32 undef)  ; BufferLoad(srv,index,wot)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.ResRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.ResRet.f32 %6647, 2
  %6651 = add i32 %6638, 28
  %6652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6651, i32 undef)  ; BufferLoad(srv,index,wot)
  %6653 = extractvalue %dx.types.ResRet.i32 %6652, 0
  %6654 = add i32 %6638, 44
  %6655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6654, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.f32 %6655, 0
  %6657 = add i32 %6638, 48
  %6658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6657, i32 undef)  ; BufferLoad(srv,index,wot)
  %6659 = extractvalue %dx.types.ResRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.ResRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.ResRet.f32 %6658, 2
  %6662 = extractvalue %dx.types.ResRet.f32 %6658, 3
  %6663 = add i32 %6638, 64
  %6664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6663, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6668 = extractvalue %dx.types.ResRet.f32 %6664, 3
  %6669 = add i32 %6638, 80
  %6670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6669, i32 undef)  ; BufferLoad(srv,index,wot)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 2
  %6673 = add i32 %6638, 92
  %6674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6673, i32 undef)  ; BufferLoad(srv,index,wot)
  %6675 = extractvalue %dx.types.ResRet.i32 %6674, 0
  %6676 = call float @dx.op.dot3.f32(i32 55, float %6640, float %6641, float %6642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6677 = select i1 %268, float %6671, float %6640
  %6678 = select i1 %268, float %6676, float %6641
  %6679 = select i1 %268, float %6672, float %6642
  %6680 = and i32 %6675, 65535
  %6681 = uitofp i32 %6680 to float
  %6682 = lshr i32 %6675, 16
  %6683 = uitofp i32 %6682 to float
  %6684 = and i32 %6653, 65535
  %6685 = and i32 %6653, 50331648
  %6686 = icmp eq i32 %6685, 33554432
  %6687 = fsub fast float %6659, %196
  %6688 = fsub fast float %6660, %197
  %6689 = fsub fast float %6661, %198
  %6690 = call float @dx.op.dot3.f32(i32 55, float %6687, float %6688, float %6689, float %6687, float %6688, float %6689)  ; Dot3(ax,ay,az,bx,by,bz)
  %6691 = call float @dx.op.unary.f32(i32 24, float %6690)  ; Sqrt(value)
  %6692 = fdiv fast float 1.000000e+00, %6691
  %6693 = fmul fast float %6692, %6687
  %6694 = fmul fast float %6692, %6688
  %6695 = fmul fast float %6692, %6689
  %6696 = fadd fast float %6691, %6645
  %6697 = fdiv fast float 1.000000e+00, %6696
  %6698 = fmul float %6656, %6697
  %6699 = fmul float %6698, %6698
  %6700 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  br i1 %6686, label %6701, label %6722

; <label>:6701                                    ; preds = %6625
  %6702 = fmul fast float %6667, %6648
  %6703 = fmul fast float %6667, %6649
  %6704 = fmul fast float %6667, %6650
  %6705 = fadd fast float %6687, %6702
  %6706 = fadd fast float %6688, %6703
  %6707 = fadd fast float %6689, %6704
  %6708 = call float @dx.op.dot3.f32(i32 55, float %6705, float %6706, float %6707, float %6705, float %6706, float %6707)  ; Dot3(ax,ay,az,bx,by,bz)
  %6709 = call float @dx.op.unary.f32(i32 25, float %6708)  ; Rsqrt(value)
  %6710 = fmul fast float %6709, %6705
  %6711 = fmul fast float %6709, %6706
  %6712 = fmul fast float %6709, %6707
  %6713 = fsub fast float %196, %6659
  %6714 = fsub fast float %197, %6660
  %6715 = fsub fast float %198, %6661
  %6716 = fsub fast float -0.000000e+00, %6713
  %6717 = fsub fast float -0.000000e+00, %6714
  %6718 = fsub fast float -0.000000e+00, %6715
  %6719 = call float @dx.op.dot3.f32(i32 55, float %6716, float %6717, float %6718, float %6648, float %6649, float %6650)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = fcmp fast ogt float %6719, 0.000000e+00
  %6721 = uitofp i1 %6720 to float
  br label %6722

; <label>:6722                                    ; preds = %6701, %6625
  %6723 = phi float [ %6721, %6701 ], [ 1.000000e+00, %6625 ]
  %6724 = phi float [ %6710, %6701 ], [ %6693, %6625 ]
  %6725 = phi float [ %6711, %6701 ], [ %6694, %6625 ]
  %6726 = phi float [ %6712, %6701 ], [ %6695, %6625 ]
  %6727 = call float @dx.op.dot3.f32(i32 55, float %6648, float %6649, float %6650, float %6724, float %6725, float %6726)  ; Dot3(ax,ay,az,bx,by,bz)
  %6728 = fmul fast float %6727, %6727
  %6729 = call float @dx.op.unary.f32(i32 7, float %6728)  ; Saturate(value)
  %6730 = fsub fast float 1.000000e+00, %6729
  %6731 = fmul fast float %6730, 5.000000e-01
  %6732 = fcmp fast ogt float %6727, 0.000000e+00
  %6733 = fsub fast float 1.000000e+00, %6731
  %6734 = select i1 %6732, float %6731, float %6733
  %6735 = fmul fast float %6734, %6683
  %6736 = fadd fast float %6735, %6681
  %6737 = fmul fast float %6736, 0x3EF0001000000000
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6737, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = fmul fast float %6727, %6665
  %6741 = fadd fast float %6740, %6666
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6743 = select i1 %6686, float 1.000000e+00, float %6742
  %6744 = select i1 %6686, float %6742, float 1.000000e+00
  %6745 = fmul fast float %6691, %6662
  %6746 = fsub fast float 1.000000e+00, %6745
  %6747 = fmul fast float %6746, %6668
  %6748 = call float @dx.op.unary.f32(i32 7, float %6747)  ; Saturate(value)
  %6749 = fmul fast float %6748, %6744
  %6750 = fmul fast float %6749, 2.000000e+00
  %6751 = fsub fast float 3.000000e+00, %6750
  %6752 = fmul fast float %6739, %6723
  %6753 = fmul fast float %6749, %6749
  %6754 = fmul fast float %6753, %6752
  %6755 = fmul fast float %6754, %6751
  %6756 = call float @dx.op.binary.f32(i32 36, float %6755, float %6755)  ; FMin(a,b)
  %6757 = call float @dx.op.binary.f32(i32 36, float %6755, float %6756)  ; FMin(a,b)
  %6758 = fcmp fast ogt float %6757, 0.000000e+00
  br i1 %6758, label %6767, label %6759, !dx.controlflow.hints !124

; <label>:6759                                    ; preds = %7109, %6867, %6722
  %6760 = phi float [ %6627, %6867 ], [ %6627, %6722 ], [ %7149, %7109 ]
  %6761 = phi float [ %6628, %6867 ], [ %6628, %6722 ], [ %7150, %7109 ]
  %6762 = phi float [ %6629, %6867 ], [ %6629, %6722 ], [ %7151, %7109 ]
  %6763 = phi float [ %6630, %6867 ], [ %6630, %6722 ], [ %7143, %7109 ]
  %6764 = phi float [ %6631, %6867 ], [ %6631, %6722 ], [ %7144, %7109 ]
  %6765 = phi float [ %6632, %6867 ], [ %6632, %6722 ], [ %7145, %7109 ]
  %6766 = icmp eq i32 %6626, %6636
  br i1 %6766, label %7152, label %6625

; <label>:6767                                    ; preds = %6722
  %6768 = icmp eq i32 %6684, 255
  br i1 %6768, label %6867, label %6769, !dx.controlflow.hints !125

; <label>:6769                                    ; preds = %6767
  %6770 = mul nuw nsw i32 %6684, 176
  %6771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6770, i32 undef)  ; BufferLoad(srv,index,wot)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.ResRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.ResRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.ResRet.f32 %6771, 3
  %6776 = add nuw nsw i32 %6770, 16
  %6777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6776, i32 undef)  ; BufferLoad(srv,index,wot)
  %6778 = extractvalue %dx.types.ResRet.f32 %6777, 0
  %6779 = extractvalue %dx.types.ResRet.f32 %6777, 1
  %6780 = add nuw nsw i32 %6770, 32
  %6781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6780, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 0
  %6783 = extractvalue %dx.types.ResRet.f32 %6781, 1
  %6784 = extractvalue %dx.types.ResRet.f32 %6781, 2
  %6785 = add nuw nsw i32 %6770, 48
  %6786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6785, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.ResRet.f32 %6786, 1
  %6789 = extractvalue %dx.types.ResRet.f32 %6786, 2
  %6790 = extractvalue %dx.types.ResRet.f32 %6786, 3
  %6791 = add nuw nsw i32 %6770, 64
  %6792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6791, i32 undef)  ; BufferLoad(srv,index,wot)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.ResRet.f32 %6792, 3
  %6797 = add nuw nsw i32 %6770, 80
  %6798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6797, i32 undef)  ; BufferLoad(srv,index,wot)
  %6799 = extractvalue %dx.types.ResRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.ResRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.ResRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.ResRet.f32 %6798, 3
  %6803 = add nuw nsw i32 %6770, 96
  %6804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6803, i32 undef)  ; BufferLoad(srv,index,wot)
  %6805 = extractvalue %dx.types.ResRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.ResRet.f32 %6804, 1
  %6807 = extractvalue %dx.types.ResRet.f32 %6804, 2
  %6808 = extractvalue %dx.types.ResRet.f32 %6804, 3
  %6809 = bitcast float %6779 to i32
  %6810 = fmul fast float %6784, %122
  %6811 = fmul fast float %6784, %124
  %6812 = fmul fast float %6784, %126
  %6813 = fadd fast float %6810, %196
  %6814 = fadd fast float %6811, %197
  %6815 = fadd fast float %6812, %198
  %6816 = fmul fast float %6813, %6787
  %6817 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6793, float %6816)  ; FMad(a,b,c)
  %6818 = call float @dx.op.tertiary.f32(i32 46, float %6815, float %6799, float %6817)  ; FMad(a,b,c)
  %6819 = fadd fast float %6818, %6805
  %6820 = fmul fast float %6813, %6788
  %6821 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6794, float %6820)  ; FMad(a,b,c)
  %6822 = call float @dx.op.tertiary.f32(i32 46, float %6815, float %6800, float %6821)  ; FMad(a,b,c)
  %6823 = fadd fast float %6822, %6806
  %6824 = fmul fast float %6813, %6789
  %6825 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6795, float %6824)  ; FMad(a,b,c)
  %6826 = call float @dx.op.tertiary.f32(i32 46, float %6815, float %6801, float %6825)  ; FMad(a,b,c)
  %6827 = fadd fast float %6826, %6807
  %6828 = fmul fast float %6813, %6790
  %6829 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6796, float %6828)  ; FMad(a,b,c)
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6815, float %6802, float %6829)  ; FMad(a,b,c)
  %6831 = fadd fast float %6830, %6808
  %6832 = fdiv fast float %6819, %6831
  %6833 = fdiv fast float %6823, %6831
  %6834 = fdiv fast float %6827, %6831
  %6835 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6834)  ; FMax(a,b)
  %6836 = fmul fast float %279, 0x401921FB60000000
  %6837 = call float @dx.op.unary.f32(i32 13, float %6836)  ; Sin(value)
  %6838 = call float @dx.op.unary.f32(i32 12, float %6836)  ; Cos(value)
  %6839 = fsub fast float -0.000000e+00, %6837
  %6840 = fmul fast float %6774, 5.000000e-01
  %6841 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6842 = call float @dx.op.unary.f32(i32 22, float %6841)  ; Frc(value)
  %6843 = fmul fast float %6842, 0x404A7DD040000000
  %6844 = call float @dx.op.unary.f32(i32 22, float %6843)  ; Frc(value)
  %6845 = fmul fast float %6844, %6783
  %6846 = fadd fast float %6845, %6840
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %6839, float 0.000000e+00)  ; FMad(a,b,c)
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %6838, float 0.000000e+00)  ; FMad(a,b,c)
  %6849 = fadd fast float %6847, %6832
  %6850 = fadd fast float %6848, %6833
  %6851 = fmul fast float %6849, %6778
  %6852 = fmul fast float %6850, %6778
  %6853 = call float @dx.op.binary.f32(i32 35, float %6851, float %6774)  ; FMax(a,b)
  %6854 = call float @dx.op.binary.f32(i32 35, float %6852, float %6774)  ; FMax(a,b)
  %6855 = call float @dx.op.binary.f32(i32 36, float %6853, float %6775)  ; FMin(a,b)
  %6856 = call float @dx.op.binary.f32(i32 36, float %6854, float %6775)  ; FMin(a,b)
  %6857 = fadd fast float %6855, %6772
  %6858 = fadd fast float %6856, %6773
  %6859 = uitofp i32 %6809 to float
  %6860 = fadd fast float %6835, %6782
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6857, float %6858, float %6859, float undef, i32 0, i32 0, i32 undef, float %6860)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = fadd fast float %6862, -1.000000e+00
  %6864 = fmul fast float %6863, %6743
  %6865 = fadd fast float %6864, 1.000000e+00
  %6866 = fmul fast float %6865, %6755
  br label %6867

; <label>:6867                                    ; preds = %6769, %6767
  %6868 = phi float [ %6866, %6769 ], [ %6755, %6767 ]
  %6869 = call float @dx.op.binary.f32(i32 36, float %6868, float %6868)  ; FMin(a,b)
  %6870 = call float @dx.op.binary.f32(i32 36, float %6868, float %6869)  ; FMin(a,b)
  %6871 = fcmp fast ogt float %6870, 0.000000e+00
  br i1 %6871, label %6872, label %6759, !dx.controlflow.hints !126

; <label>:6872                                    ; preds = %6867
  %6873 = fmul fast float %6868, %6677
  %6874 = fmul fast float %6868, %6678
  %6875 = fmul fast float %6868, %6679
  %6876 = fsub fast float %6661, %4294
  %6877 = fcmp fast ogt float %6876, 0.000000e+00
  %6878 = fsub fast float %198, %4294
  %6879 = fcmp fast ogt float %6878, 0.000000e+00
  %6880 = xor i1 %6879, %6877
  %6881 = fsub fast float %4294, %6661
  %6882 = fmul fast float %6881, 2.000000e+00
  %6883 = fadd fast float %6882, %6661
  %6884 = select i1 %6880, float %6661, float %6883
  %6885 = fsub fast float %6884, %198
  %6886 = call float @dx.op.dot3.f32(i32 55, float %6687, float %6688, float %6885, float %6687, float %6688, float %6885)  ; Dot3(ax,ay,az,bx,by,bz)
  %6887 = call float @dx.op.unary.f32(i32 25, float %6886)  ; Rsqrt(value)
  %6888 = fmul fast float %6887, %6687
  %6889 = fmul fast float %6887, %6688
  %6890 = fmul fast float %6887, %6885
  %6891 = fsub fast float %4294, %198
  %6892 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6891)  ; Dot3(ax,ay,az,bx,by,bz)
  %6893 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6888, float %6889, float %6890)  ; Dot3(ax,ay,az,bx,by,bz)
  %6894 = fdiv fast float 1.000000e+00, %6893
  %6895 = fmul fast float %6894, %6892
  %6896 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6878, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6897 = fcmp fast ogt float %6896, 0.000000e+00
  %6898 = fcmp fast olt float %6896, 0.000000e+00
  %6899 = zext i1 %6897 to i32
  %6900 = zext i1 %6898 to i32
  %6901 = sub nsw i32 %6899, %6900
  %6902 = sitofp i32 %6901 to float
  %6903 = fsub fast float %6884, %4294
  %6904 = call float @dx.op.dot3.f32(i32 55, float %6687, float %6688, float %6903, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6905 = fcmp fast ogt float %6904, 0.000000e+00
  %6906 = fcmp fast olt float %6904, 0.000000e+00
  %6907 = zext i1 %6905 to i32
  %6908 = zext i1 %6906 to i32
  %6909 = sub nsw i32 %6907, %6908
  %6910 = sitofp i32 %6909 to float
  %6911 = fcmp fast une float %6902, %6910
  br i1 %6911, label %6912, label %6922

; <label>:6912                                    ; preds = %6872
  %6913 = fmul fast float %6895, %6890
  %6914 = fmul fast float %6895, %6889
  %6915 = fmul fast float %6895, %6888
  %6916 = fmul fast float %6915, %6915
  %6917 = fmul fast float %6914, %6914
  %6918 = fadd fast float %6916, %6917
  %6919 = fmul fast float %6913, %6913
  %6920 = fadd fast float %6918, %6919
  %6921 = call float @dx.op.unary.f32(i32 24, float %6920)  ; Sqrt(value)
  br label %6934

; <label>:6922                                    ; preds = %6872
  %6923 = icmp slt i32 %6901, 0
  br i1 %6923, label %6924, label %6934

; <label>:6924                                    ; preds = %6922
  %6925 = fsub fast float %196, %6659
  %6926 = fsub fast float %197, %6660
  %6927 = fsub fast float %198, %6884
  %6928 = fmul fast float %6925, %6925
  %6929 = fmul fast float %6926, %6926
  %6930 = fadd fast float %6928, %6929
  %6931 = fmul fast float %6927, %6927
  %6932 = fadd fast float %6930, %6931
  %6933 = call float @dx.op.unary.f32(i32 24, float %6932)  ; Sqrt(value)
  br label %6934

; <label>:6934                                    ; preds = %6924, %6922, %6912
  %6935 = phi float [ %6921, %6912 ], [ %6933, %6924 ], [ 0.000000e+00, %6922 ]
  %6936 = and i1 %6879, %6877
  %6937 = fsub fast float -0.000000e+00, %6935
  %6938 = select i1 %6936, float -0.000000e+00, float %6937
  %6939 = fmul fast float %4295, 0x3FF7154760000000
  %6940 = fmul fast float %6939, %6938
  %6941 = fmul fast float %4296, 0x3FF7154760000000
  %6942 = fmul fast float %6941, %6938
  %6943 = fmul fast float %4297, 0x3FF7154760000000
  %6944 = fmul fast float %6943, %6938
  %6945 = call float @dx.op.unary.f32(i32 21, float %6940)  ; Exp(value)
  %6946 = call float @dx.op.unary.f32(i32 21, float %6942)  ; Exp(value)
  %6947 = call float @dx.op.unary.f32(i32 21, float %6944)  ; Exp(value)
  %6948 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6949 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6950 = call float @dx.op.unary.f32(i32 7, float %6947)  ; Saturate(value)
  %6951 = fmul fast float %6873, %6948
  %6952 = fmul fast float %6874, %6949
  %6953 = fmul fast float %6875, %6950
  %6954 = fsub fast float %6693, %5086
  %6955 = fsub fast float %6694, %5085
  %6956 = fsub fast float %6695, %5084
  %6957 = call float @dx.op.dot3.f32(i32 55, float %6954, float %6955, float %6956, float %6954, float %6955, float %6956)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = call float @dx.op.unary.f32(i32 25, float %6957)  ; Rsqrt(value)
  %6959 = fmul fast float %6958, %6954
  %6960 = fmul fast float %6958, %6955
  %6961 = fmul fast float %6958, %6956
  %6962 = call float @dx.op.dot3.f32(i32 55, float %6693, float %6694, float %6695, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6963 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5082, float %5081, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6965 = fmul fast float %6964, %6700
  %6966 = fmul fast float %6964, %6964
  %6967 = fmul fast float %6966, %5114
  %6968 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  %6969 = fmul fast float %6965, %6968
  %6970 = bitcast float %6690 to i32
  %6971 = ashr i32 %6970, 1
  %6972 = sub nsw i32 1597463007, %6971
  %6973 = bitcast i32 %6972 to float
  %6974 = fmul fast float %6973, %6687
  %6975 = fmul fast float %6973, %6688
  %6976 = fmul fast float %6973, %6689
  %6977 = fsub fast float %6974, %5086
  %6978 = fsub fast float %6975, %5085
  %6979 = fsub fast float %6976, %5084
  %6980 = call float @dx.op.dot3.f32(i32 55, float %6977, float %6978, float %6979, float %6977, float %6978, float %6979)  ; Dot3(ax,ay,az,bx,by,bz)
  %6981 = call float @dx.op.unary.f32(i32 25, float %6980)  ; Rsqrt(value)
  %6982 = fmul fast float %6977, %6981
  %6983 = fmul fast float %6978, %6981
  %6984 = fmul fast float %6979, %6981
  %6985 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %6982, float %6983, float %6984)  ; Dot3(ax,ay,az,bx,by,bz)
  %6986 = fmul fast float %6985, %6985
  %6987 = call float @dx.op.unary.f32(i32 6, float %6962)  ; FAbs(value)
  %6988 = fsub fast float 1.000000e+00, %5096
  %6989 = call float @dx.op.binary.f32(i32 35, float %6988, float 0x3F847AE140000000)  ; FMax(a,b)
  %6990 = fmul fast float %6989, %6989
  %6991 = fmul fast float %6990, %6990
  %6992 = fsub fast float 1.000000e+00, %6991
  %6993 = fmul fast float %5101, %5101
  %6994 = fmul fast float %6993, %6992
  %6995 = fadd fast float %6994, %6991
  %6996 = bitcast float %6995 to i32
  %6997 = ashr i32 %6996, 1
  %6998 = add nsw i32 %6997, 532487669
  %6999 = bitcast i32 %6998 to float
  %7000 = fadd fast float %6999, %5101
  %7001 = fmul fast float %6991, %6986
  %7002 = fsub fast float 1.000000e+00, %6986
  %7003 = fadd fast float %7002, %7001
  %7004 = fmul fast float %6987, %6987
  %7005 = fmul fast float %7004, %6992
  %7006 = fadd fast float %7005, %6991
  %7007 = bitcast float %7006 to i32
  %7008 = ashr i32 %7007, 1
  %7009 = add nsw i32 %7008, 532487669
  %7010 = bitcast i32 %7009 to float
  %7011 = fadd fast float %7010, %6987
  %7012 = fmul fast float %7003, %7003
  %7013 = fmul fast float %7012, %7000
  %7014 = fmul fast float %7013, %7011
  %7015 = fdiv fast float 1.000000e+00, %7014
  %7016 = bitcast float %6991 to i32
  %7017 = sitofp i32 %7016 to float
  %7018 = fmul fast float %7017, 0x3FE7F73180000000
  %7019 = fadd fast float %7018, 0x41AFE27C40000000
  %7020 = fptosi float %7019 to i32
  %7021 = bitcast i32 %7020 to float
  %7022 = fmul fast float %6656, 0x3FD80E9D60000000
  %7023 = fmul fast float %7022, %6973
  %7024 = fadd fast float %7021, %7023
  %7025 = bitcast float %7024 to i32
  %7026 = sub nsw i32 2129859010, %7025
  %7027 = bitcast i32 %7026 to float
  %7028 = fmul fast float %6991, %7015
  %7029 = fmul fast float %7028, %7021
  %7030 = fmul fast float %7029, %7027
  %7031 = call float @dx.op.unary.f32(i32 6, float %6963)  ; FAbs(value)
  %7032 = fsub fast float 1.000000e+00, %7031
  %7033 = bitcast float %7032 to i32
  %7034 = sitofp i32 %7033 to float
  %7035 = fmul fast float %7034, 5.000000e+00
  %7036 = fadd fast float %7035, 0xC1EFBF8940000000
  %7037 = fptosi float %7036 to i32
  %7038 = bitcast i32 %7037 to float
  %7039 = fsub fast float 1.000000e+00, %5087
  %7040 = fsub fast float 1.000000e+00, %5088
  %7041 = fsub fast float 1.000000e+00, %5099
  %7042 = fmul fast float %7038, %7039
  %7043 = fmul fast float %7038, %7040
  %7044 = fmul fast float %7038, %7041
  %7045 = fadd fast float %7042, %5087
  %7046 = fadd fast float %7043, %5088
  %7047 = fadd fast float %7044, %5099
  br i1 %5361, label %7048, label %7071

; <label>:7048                                    ; preds = %6934
  %7049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3892, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.ResRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.ResRet.f32 %7049, 2
  %7053 = fadd fast float %7050, -5.000000e-01
  %7054 = fadd fast float %7051, -5.000000e-01
  %7055 = fadd fast float %7052, -5.000000e-01
  %7056 = fmul fast float %5087, 4.000000e+00
  %7057 = fmul fast float %7056, %7039
  %7058 = fmul fast float %7057, %7053
  %7059 = fmul fast float %5088, 4.000000e+00
  %7060 = fmul fast float %7059, %7040
  %7061 = fmul fast float %7060, %7054
  %7062 = fmul fast float %5099, 4.000000e+00
  %7063 = fmul fast float %7062, %7041
  %7064 = fmul fast float %7063, %7055
  %7065 = fadd fast float %7058, %7045
  %7066 = fadd fast float %7061, %7046
  %7067 = fadd fast float %7064, %7047
  %7068 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  br label %7071

; <label>:7071                                    ; preds = %7048, %6934
  %7072 = phi float [ %7068, %7048 ], [ %7045, %6934 ]
  %7073 = phi float [ %7069, %7048 ], [ %7046, %6934 ]
  %7074 = phi float [ %7070, %7048 ], [ %7047, %6934 ]
  %7075 = fmul fast float %6962, 9.843750e-01
  %7076 = fadd fast float %7075, 7.812500e-03
  %7077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7076, float %5351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7078 = extractvalue %dx.types.ResRet.f32 %7077, 2
  %7079 = extractvalue %dx.types.ResRet.f32 %7077, 3
  %7080 = fmul fast float %7078, %5087
  %7081 = fmul fast float %7078, %5088
  %7082 = fmul fast float %7078, %5099
  %7083 = fadd fast float %7080, %7079
  %7084 = fadd fast float %7081, %7079
  %7085 = fadd fast float %7082, %7079
  br i1 %5361, label %7086, label %7109

; <label>:7086                                    ; preds = %7071
  %7087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3892, float %6962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7088 = extractvalue %dx.types.ResRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.ResRet.f32 %7087, 1
  %7090 = extractvalue %dx.types.ResRet.f32 %7087, 2
  %7091 = fadd fast float %7088, -5.000000e-01
  %7092 = fadd fast float %7089, -5.000000e-01
  %7093 = fadd fast float %7090, -5.000000e-01
  %7094 = fmul fast float %5087, 4.000000e+00
  %7095 = fmul fast float %7094, %7039
  %7096 = fmul fast float %7095, %7091
  %7097 = fmul fast float %5088, 4.000000e+00
  %7098 = fmul fast float %7097, %7040
  %7099 = fmul fast float %7098, %7092
  %7100 = fmul fast float %5099, 4.000000e+00
  %7101 = fmul fast float %7100, %7041
  %7102 = fmul fast float %7101, %7093
  %7103 = fadd fast float %7096, %7083
  %7104 = fadd fast float %7099, %7084
  %7105 = fadd fast float %7102, %7085
  %7106 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7107 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  %7108 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  br label %7109

; <label>:7109                                    ; preds = %7086, %7071
  %7110 = phi float [ %7106, %7086 ], [ %7083, %7071 ]
  %7111 = phi float [ %7107, %7086 ], [ %7084, %7071 ]
  %7112 = phi float [ %7108, %7086 ], [ %7085, %7071 ]
  %7113 = call float @dx.op.binary.f32(i32 35, float %7111, float %7112)  ; FMax(a,b)
  %7114 = call float @dx.op.binary.f32(i32 35, float %7110, float %7113)  ; FMax(a,b)
  %7115 = fsub fast float 1.000000e+00, %7114
  %7116 = fmul fast float %7072, %7030
  %7117 = fmul fast float %7073, %7030
  %7118 = fmul fast float %7074, %7030
  %7119 = fsub fast float 1.000000e+00, %6963
  %7120 = bitcast float %7119 to i32
  %7121 = sitofp i32 %7120 to float
  %7122 = fmul fast float %7121, 5.000000e+00
  %7123 = fadd fast float %7122, 0xC1EFBF8940000000
  %7124 = fptosi float %7123 to i32
  %7125 = bitcast i32 %7124 to float
  %7126 = fmul fast float %7125, %3893
  %7127 = fmul fast float %7115, %7126
  %7128 = fmul fast float %7127, %5411
  %7129 = fmul fast float %7127, %5412
  %7130 = fmul fast float %7127, %5413
  %7131 = fadd fast float %7128, %7116
  %7132 = fadd fast float %7129, %7117
  %7133 = fadd fast float %7130, %7118
  %7134 = fmul fast float %6951, %3889
  %7135 = fmul fast float %7134, %6969
  %7136 = fmul fast float %7135, %7115
  %7137 = fmul fast float %6952, %3889
  %7138 = fmul fast float %7137, %6969
  %7139 = fmul fast float %7138, %7115
  %7140 = fmul fast float %6953, %3889
  %7141 = fmul fast float %7140, %6969
  %7142 = fmul fast float %7141, %7115
  %7143 = fadd fast float %7136, %6630
  %7144 = fadd fast float %7139, %6631
  %7145 = fadd fast float %7142, %6632
  %7146 = fmul fast float %7135, %7131
  %7147 = fmul fast float %7138, %7132
  %7148 = fmul fast float %7141, %7133
  %7149 = fadd fast float %7146, %6627
  %7150 = fadd fast float %7147, %6628
  %7151 = fadd fast float %7148, %6629
  br label %6759

; <label>:7152                                    ; preds = %6759
  br label %7153

; <label>:7153                                    ; preds = %7152, %6593
  %7154 = phi float [ %6595, %6593 ], [ %6760, %7152 ]
  %7155 = phi float [ %6596, %6593 ], [ %6761, %7152 ]
  %7156 = phi float [ %6597, %6593 ], [ %6762, %7152 ]
  %7157 = phi float [ %6598, %6593 ], [ %6763, %7152 ]
  %7158 = phi float [ %6599, %6593 ], [ %6764, %7152 ]
  %7159 = phi float [ %6600, %6593 ], [ %6765, %7152 ]
  %7160 = add i32 %6594, 1
  %7161 = icmp ugt i32 %7160, %6590
  br i1 %7161, label %7162, label %6593

; <label>:7162                                    ; preds = %7153
  br label %7163

; <label>:7163                                    ; preds = %7162, %6543, %6533
  %7164 = phi float [ %6534, %6533 ], [ %6534, %6543 ], [ %7154, %7162 ]
  %7165 = phi float [ %6535, %6533 ], [ %6535, %6543 ], [ %7155, %7162 ]
  %7166 = phi float [ %6536, %6533 ], [ %6536, %6543 ], [ %7156, %7162 ]
  %7167 = phi float [ %6537, %6533 ], [ %6537, %6543 ], [ %7157, %7162 ]
  %7168 = phi float [ %6538, %6533 ], [ %6538, %6543 ], [ %7158, %7162 ]
  %7169 = phi float [ %6539, %6533 ], [ %6539, %6543 ], [ %7159, %7162 ]
  %7170 = fmul fast float %3889, %3889
  %7171 = fsub fast float 1.000000e+00, %7170
  %7172 = call float @dx.op.dot3.f32(i32 55, float %7171, float %7171, float %7171, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7173 = fsub fast float 1.000000e+00, %7172
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = fmul fast float %7175, %5417
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 3
  %7179 = fsub fast float 1.000000e+00, %3897
  %7180 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  %7181 = fadd fast float %7169, %3895
  %7182 = fmul fast float %7181, %3897
  %7183 = fmul fast float %7180, %7178
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 3
  %7186 = fmul fast float %7167, %5093
  %7187 = fmul fast float %7168, %5094
  %7188 = fmul fast float %7169, %5095
  %7189 = fcmp fast ogt float %104, %231
  %7190 = and i1 %7189, %4300
  %7191 = or i1 %4306, %7190
  %7192 = icmp eq i32 %4299, 2
  %7193 = fcmp fast ole float %104, %231
  %7194 = and i1 %7193, %7192
  %7195 = or i1 %7194, %7191
  br i1 %7190, label %7196, label %7453

; <label>:7196                                    ; preds = %7163
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 2
  %7199 = extractvalue %dx.types.CBufRet.f32 %7197, 3
  %7200 = fmul fast float %7198, %113
  %7201 = fmul fast float %7199, %114
  %7202 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7204 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7202, float %7203, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = extractvalue %dx.types.ResRet.f32 %7204, 1
  %7207 = extractvalue %dx.types.ResRet.f32 %7204, 2
  %7208 = extractvalue %dx.types.ResRet.f32 %7204, 3
  %7209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7202, float %7203, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7210 = extractvalue %dx.types.ResRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.ResRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.ResRet.f32 %7209, 2
  %7213 = extractvalue %dx.types.ResRet.f32 %7209, 3
  %7214 = call float @dx.op.binary.f32(i32 35, float %7206, float %7207)  ; FMax(a,b)
  %7215 = call float @dx.op.binary.f32(i32 35, float %7205, float %7214)  ; FMax(a,b)
  %7216 = call float @dx.op.binary.f32(i32 35, float %7215, float %7208)  ; FMax(a,b)
  %7217 = call float @dx.op.binary.f32(i32 36, float %7211, float %7212)  ; FMin(a,b)
  %7218 = call float @dx.op.binary.f32(i32 36, float %7210, float %7217)  ; FMin(a,b)
  %7219 = call float @dx.op.binary.f32(i32 36, float %7218, float %7213)  ; FMin(a,b)
  %7220 = fmul fast float %7216, 2.550000e+02
  %7221 = fadd fast float %7220, 0x3F70101020000000
  %7222 = fptoui float %7221 to i32
  %7223 = fmul fast float %7219, 2.550000e+02
  %7224 = fadd fast float %7223, 0x3F70101020000000
  %7225 = fptoui float %7224 to i32
  %7226 = icmp ult i32 %7222, %7225
  br i1 %7226, label %7227, label %7395

; <label>:7227                                    ; preds = %7196
  %7228 = fcmp fast ogt float %103, 9.843750e-01
  %7229 = fadd fast float %104, -4.000000e+00
  %7230 = select i1 %7228, float -4.000000e+00, float %7229
  %7231 = call float @dx.op.binary.f32(i32 35, float %7230, float 0.000000e+00)  ; FMax(a,b)
  %7232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7233 = extractvalue %dx.types.CBufRet.f32 %7232, 0
  %7234 = fadd fast float %7233, %7231
  %7235 = extractvalue %dx.types.CBufRet.f32 %7232, 2
  %7236 = fmul fast float %7234, %7235
  %7237 = call float @dx.op.unary.f32(i32 23, float %7236)  ; Log(value)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7232, 3
  %7239 = fmul fast float %7238, %7237
  %7240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7241 = extractvalue %dx.types.CBufRet.f32 %7240, 2
  %7242 = fmul fast float %7239, %7241
  %7243 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7244 = uitofp i32 %7222 to float
  %7245 = uitofp i32 %7225 to float
  %7246 = fadd fast float %7244, 5.000000e-01
  %7247 = fadd fast float %7245, 5.000000e-01
  %7248 = fmul fast float %7241, %7246
  %7249 = fmul fast float %7241, %7247
  %7250 = fadd fast float %7248, 0x3F0FFB4800000000
  %7251 = fadd fast float %7249, 0xBF0FFB4800000000
  %7252 = call float @dx.op.binary.f32(i32 35, float %7243, float %7250)  ; FMax(a,b)
  %7253 = call float @dx.op.binary.f32(i32 36, float %7252, float %7251)  ; FMin(a,b)
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7256 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7257 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7258 = fmul fast float %7255, %7253
  %7259 = fadd fast float %7257, %7258
  %7260 = fadd fast float %7257, %7256
  %7261 = fsub fast float %7255, %7256
  %7262 = fadd fast float %7261, %7257
  %7263 = call float @dx.op.binary.f32(i32 35, float %7259, float %7260)  ; FMax(a,b)
  %7264 = call float @dx.op.binary.f32(i32 36, float %7263, float %7262)  ; FMin(a,b)
  %7265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7202, float %7203, float %7264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7266 = extractvalue %dx.types.ResRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.ResRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.ResRet.f32 %7265, 2
  %7269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.i32 %7269, 0
  %7271 = extractvalue %dx.types.CBufRet.i32 %7269, 1
  %7272 = uitofp i32 %7270 to float
  %7273 = uitofp i32 %7271 to float
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 1
  %7277 = fmul fast float %7272, %7202
  %7278 = fmul fast float %7273, %7203
  %7279 = fadd fast float %7277, -5.000000e-01
  %7280 = fadd fast float %7278, -5.000000e-01
  %7281 = call float @dx.op.unary.f32(i32 22, float %7279)  ; Frc(value)
  %7282 = call float @dx.op.unary.f32(i32 22, float %7280)  ; Frc(value)
  %7283 = fmul fast float %7281, %7281
  %7284 = fmul fast float %7283, %7281
  %7285 = fsub fast float 3.000000e+00, %7281
  %7286 = fmul fast float %7283, %7285
  %7287 = fmul fast float %7281, 3.000000e+00
  %7288 = fmul fast float %7284, 3.000000e+00
  %7289 = fmul fast float %7283, 6.000000e+00
  %7290 = fsub fast float %7288, %7289
  %7291 = fadd fast float %7290, 4.000000e+00
  %7292 = fmul fast float %7291, 0x3FC5555560000000
  %7293 = fmul fast float %7284, -3.000000e+00
  %7294 = fadd fast float %7283, %7281
  %7295 = fmul fast float %7294, 3.000000e+00
  %7296 = fadd fast float %7293, 1.000000e+00
  %7297 = fadd fast float %7296, %7295
  %7298 = fmul fast float %7284, 0x3FC5555560000000
  %7299 = fmul fast float %7282, %7282
  %7300 = fmul fast float %7299, %7282
  %7301 = fsub fast float 3.000000e+00, %7282
  %7302 = fmul fast float %7299, %7301
  %7303 = fmul fast float %7282, 3.000000e+00
  %7304 = fmul fast float %7300, 3.000000e+00
  %7305 = fmul fast float %7299, 6.000000e+00
  %7306 = fsub fast float %7304, %7305
  %7307 = fadd fast float %7306, 4.000000e+00
  %7308 = fmul fast float %7307, 0x3FC5555560000000
  %7309 = fmul fast float %7300, -3.000000e+00
  %7310 = fadd fast float %7299, %7282
  %7311 = fmul fast float %7310, 3.000000e+00
  %7312 = fadd fast float %7309, 1.000000e+00
  %7313 = fadd fast float %7312, %7311
  %7314 = fmul fast float %7300, 0x3FC5555560000000
  %7315 = fadd fast float %7281, 1.000000e+00
  %7316 = fsub fast float 1.000000e+00, %7287
  %7317 = fadd fast float %7316, %7286
  %7318 = fadd fast float %7317, %7291
  %7319 = fmul fast float %7318, 0x3FC5555560000000
  %7320 = fdiv fast float %7292, %7319
  %7321 = fsub fast float %7315, %7320
  %7322 = fsub fast float 1.000000e+00, %7281
  %7323 = fadd fast float %7297, %7284
  %7324 = fmul fast float %7323, 0x3FC5555560000000
  %7325 = fdiv fast float %7298, %7324
  %7326 = fadd fast float %7322, %7325
  %7327 = fadd fast float %7282, 1.000000e+00
  %7328 = fsub fast float 1.000000e+00, %7303
  %7329 = fadd fast float %7328, %7302
  %7330 = fadd fast float %7329, %7307
  %7331 = fmul fast float %7330, 0x3FC5555560000000
  %7332 = fdiv fast float %7308, %7331
  %7333 = fsub fast float %7327, %7332
  %7334 = fsub fast float 1.000000e+00, %7282
  %7335 = fadd fast float %7313, %7300
  %7336 = fmul fast float %7335, 0x3FC5555560000000
  %7337 = fdiv fast float %7314, %7336
  %7338 = fadd fast float %7337, %7334
  %7339 = fmul fast float %7321, %7275
  %7340 = fsub fast float %7202, %7339
  %7341 = fmul fast float %7326, %7275
  %7342 = fadd fast float %7341, %7202
  %7343 = fmul fast float %7338, %7276
  %7344 = fadd fast float %7343, %7203
  %7345 = fmul fast float %7333, %7276
  %7346 = fsub fast float %7203, %7345
  %7347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7340, float %7346, float %7264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7348 = extractvalue %dx.types.ResRet.f32 %7347, 0
  %7349 = extractvalue %dx.types.ResRet.f32 %7347, 1
  %7350 = extractvalue %dx.types.ResRet.f32 %7347, 2
  %7351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7342, float %7346, float %7264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.ResRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.ResRet.f32 %7351, 2
  %7355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7340, float %7344, float %7264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.f32 %7355, 1
  %7358 = extractvalue %dx.types.ResRet.f32 %7355, 2
  %7359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7342, float %7344, float %7264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7360 = extractvalue %dx.types.ResRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.ResRet.f32 %7359, 1
  %7362 = extractvalue %dx.types.ResRet.f32 %7359, 2
  %7363 = fsub fast float %7356, %7348
  %7364 = fsub fast float %7357, %7349
  %7365 = fsub fast float %7358, %7350
  %7366 = fmul fast float %7363, %7336
  %7367 = fmul fast float %7364, %7336
  %7368 = fmul fast float %7365, %7336
  %7369 = fadd fast float %7366, %7348
  %7370 = fadd fast float %7367, %7349
  %7371 = fadd fast float %7368, %7350
  %7372 = fsub fast float %7360, %7352
  %7373 = fsub fast float %7361, %7353
  %7374 = fsub fast float %7362, %7354
  %7375 = fmul fast float %7372, %7336
  %7376 = fmul fast float %7373, %7336
  %7377 = fmul fast float %7374, %7336
  %7378 = fsub fast float %7352, %7369
  %7379 = fadd fast float %7378, %7375
  %7380 = fsub fast float %7353, %7370
  %7381 = fadd fast float %7380, %7376
  %7382 = fsub fast float %7354, %7371
  %7383 = fadd fast float %7382, %7377
  %7384 = fmul fast float %7379, %7324
  %7385 = fmul fast float %7381, %7324
  %7386 = fmul fast float %7383, %7324
  %7387 = fadd fast float %7384, %7369
  %7388 = fadd fast float %7385, %7370
  %7389 = fadd fast float %7386, %7371
  %7390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7390, 1
  %7392 = fmul fast float %7387, %7391
  %7393 = fmul fast float %7388, %7391
  %7394 = fmul fast float %7389, %7391
  br label %7395

; <label>:7395                                    ; preds = %7227, %7196
  %7396 = phi float [ %7266, %7227 ], [ 1.000000e+00, %7196 ]
  %7397 = phi float [ %7267, %7227 ], [ 1.000000e+00, %7196 ]
  %7398 = phi float [ %7268, %7227 ], [ 1.000000e+00, %7196 ]
  %7399 = phi float [ %7392, %7227 ], [ 0.000000e+00, %7196 ]
  %7400 = phi float [ %7393, %7227 ], [ 0.000000e+00, %7196 ]
  %7401 = phi float [ %7394, %7227 ], [ 0.000000e+00, %7196 ]
  %7402 = fmul fast float %7399, %7173
  %7403 = fmul fast float %7400, %7173
  %7404 = fmul fast float %7401, %7173
  %7405 = call float @dx.op.dot3.f32(i32 55, float %7396, float %7397, float %7398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7406 = call float @dx.op.dot3.f32(i32 55, float %7402, float %7403, float %7404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7407 = select i1 %268, float %7405, float %7396
  %7408 = select i1 %268, float %7405, float %7397
  %7409 = select i1 %268, float 1.000000e+00, float %7398
  %7410 = select i1 %268, float %7406, float %7402
  %7411 = select i1 %268, float 0.000000e+00, float %7403
  %7412 = select i1 %268, float 0.000000e+00, float %7404
  %7413 = fmul fast float %7407, %7186
  %7414 = fmul fast float %7408, %7187
  %7415 = fmul fast float %7409, %7188
  %7416 = fadd fast float %7413, %7410
  %7417 = fadd fast float %7414, %7411
  %7418 = fadd fast float %7412, %7415
  %7419 = fmul fast float %7407, %7164
  %7420 = fmul fast float %7408, %7165
  %7421 = fmul fast float %7409, %7166
  %7422 = fmul fast float %145, %7198
  %7423 = fmul fast float %147, %7199
  %7424 = fsub fast float 1.000000e+00, %7422
  %7425 = fsub fast float 1.000000e+00, %7423
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7430 = fmul fast float %7424, %7427
  %7431 = fmul fast float %7424, %7428
  %7432 = fmul fast float %7424, %7429
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7437 = fmul fast float %7425, %7434
  %7438 = fmul fast float %7425, %7435
  %7439 = fmul fast float %7425, %7436
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 0
  %7442 = extractvalue %dx.types.CBufRet.f32 %7440, 1
  %7443 = extractvalue %dx.types.CBufRet.f32 %7440, 2
  %7444 = fadd fast float %7437, %7441
  %7445 = fadd fast float %7444, %7430
  %7446 = fadd fast float %7438, %7442
  %7447 = fadd fast float %7446, %7431
  %7448 = fadd fast float %7439, %7443
  %7449 = fadd fast float %7448, %7432
  %7450 = fmul fast float %7445, %231
  %7451 = fmul fast float %7447, %231
  %7452 = fmul fast float %7449, %231
  br label %7453

; <label>:7453                                    ; preds = %7395, %7163
  %7454 = phi float [ %7450, %7395 ], [ %196, %7163 ]
  %7455 = phi float [ %7451, %7395 ], [ %197, %7163 ]
  %7456 = phi float [ %7452, %7395 ], [ %198, %7163 ]
  %7457 = phi float [ %231, %7395 ], [ %104, %7163 ]
  %7458 = phi float [ %7416, %7395 ], [ %7186, %7163 ]
  %7459 = phi float [ %7417, %7395 ], [ %7187, %7163 ]
  %7460 = phi float [ %7418, %7395 ], [ %7188, %7163 ]
  %7461 = phi float [ %7419, %7395 ], [ %7164, %7163 ]
  %7462 = phi float [ %7420, %7395 ], [ %7165, %7163 ]
  %7463 = phi float [ %7421, %7395 ], [ %7166, %7163 ]
  %7464 = phi float [ %7396, %7395 ], [ 1.000000e+00, %7163 ]
  br i1 %7195, label %8619, label %7465

; <label>:7465                                    ; preds = %7453
  %7466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7467 = extractvalue %dx.types.CBufRet.f32 %7466, 0
  %7468 = extractvalue %dx.types.CBufRet.f32 %7466, 1
  %7469 = extractvalue %dx.types.CBufRet.f32 %7466, 2
  %7470 = extractvalue %dx.types.CBufRet.f32 %7466, 3
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7475 = extractvalue %dx.types.CBufRet.f32 %7471, 3
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.CBufRet.f32 %7476, 2
  %7480 = extractvalue %dx.types.CBufRet.f32 %7476, 3
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 3
  %7490 = extractvalue %dx.types.CBufRet.f32 %7488, 0
  %7491 = extractvalue %dx.types.CBufRet.f32 %7488, 1
  %7492 = extractvalue %dx.types.CBufRet.f32 %7488, 2
  %7493 = fcmp fast olt float %7492, -5.000000e-01
  %7494 = call float @dx.op.dot3.f32(i32 55, float %7454, float %7455, float %7456, float %7454, float %7455, float %7456)  ; Dot3(ax,ay,az,bx,by,bz)
  %7495 = call float @dx.op.unary.f32(i32 25, float %7494)  ; Rsqrt(value)
  %7496 = fmul fast float %7495, %7494
  %7497 = fmul fast float %7495, %7454
  %7498 = fmul fast float %7495, %7455
  %7499 = fmul fast float %7495, %7456
  %7500 = fadd fast float %7496, %7470
  %7501 = call float @dx.op.dot3.f32(i32 55, float %7497, float %7498, float %7499, float %7467, float %7468, float %7469)  ; Dot3(ax,ay,az,bx,by,bz)
  %7502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.i32 %7502, 1
  %7504 = and i32 %7503, 1
  %7505 = icmp ne i32 %7504, 0
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 2
  %7508 = fcmp fast ogt float %7507, 0.000000e+00
  %7509 = and i1 %7505, %7508
  br i1 %7509, label %7510, label %7916, !dx.controlflow.hints !127

; <label>:7510                                    ; preds = %7465
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 3
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 2
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 2
  %7517 = fsub fast float %7514, %7516
  %7518 = and i32 %7503, 2
  %7519 = extractvalue %dx.types.CBufRet.i32 %7502, 0
  %7520 = call i32 @dx.op.binary.i32(i32 40, i32 %7519, i32 3)  ; UMin(a,b)
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 1
  %7524 = extractvalue %dx.types.CBufRet.f32 %7515, 0
  %7525 = extractvalue %dx.types.CBufRet.f32 %7515, 1
  %7526 = fsub fast float %7522, %7524
  %7527 = fsub fast float %7523, %7525
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 0
  %7530 = fcmp fast ogt float %7529, 0.000000e+00
  %7531 = fsub fast float -0.000000e+00, %7526
  %7532 = fsub fast float -0.000000e+00, %7527
  %7533 = call float @dx.op.dot2.f32(i32 54, float %7497, float %7498, float %7497, float %7498)  ; Dot2(ax,ay,bx,by)
  %7534 = call float @dx.op.dot2.f32(i32 54, float %7497, float %7498, float %7531, float %7532)  ; Dot2(ax,ay,bx,by)
  %7535 = fmul fast float %7534, 2.000000e+00
  %7536 = call float @dx.op.dot2.f32(i32 54, float %7531, float %7532, float %7531, float %7532)  ; Dot2(ax,ay,bx,by)
  %7537 = fmul fast float %7529, %7529
  %7538 = fsub fast float %7536, %7537
  %7539 = fmul fast float %7535, %7535
  %7540 = fmul fast float %7533, 4.000000e+00
  %7541 = fmul fast float %7540, %7538
  %7542 = fsub fast float %7539, %7541
  %7543 = fcmp fast ogt float %7542, 0.000000e+00
  br i1 %7543, label %7544, label %7559

; <label>:7544                                    ; preds = %7510
  %7545 = fcmp fast ogt float %7535, 0.000000e+00
  %7546 = call float @dx.op.unary.f32(i32 24, float %7542)  ; Sqrt(value)
  %7547 = fsub fast float -0.000000e+00, %7546
  %7548 = select i1 %7545, float %7546, float %7547
  %7549 = fadd fast float %7548, %7535
  %7550 = fmul float %7549, -5.000000e-01
  %7551 = fdiv fast float %7550, %7533
  %7552 = call float @dx.op.binary.f32(i32 35, float %7551, float 0.000000e+00)  ; FMax(a,b)
  %7553 = call float @dx.op.binary.f32(i32 36, float %7496, float %7552)  ; FMin(a,b)
  %7554 = fdiv fast float %7538, %7550
  %7555 = call float @dx.op.binary.f32(i32 35, float %7554, float 0.000000e+00)  ; FMax(a,b)
  %7556 = call float @dx.op.binary.f32(i32 36, float %7496, float %7555)  ; FMin(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7553, float %7556)  ; FMin(a,b)
  %7558 = call float @dx.op.binary.f32(i32 35, float %7553, float %7556)  ; FMax(a,b)
  br label %7559

; <label>:7559                                    ; preds = %7544, %7510
  %7560 = phi float [ %7558, %7544 ], [ -1.000000e+00, %7510 ]
  %7561 = phi float [ %7557, %7544 ], [ -1.000000e+00, %7510 ]
  %7562 = phi i1 [ true, %7544 ], [ false, %7510 ]
  %7563 = and i1 %7530, %7562
  br i1 %7563, label %7564, label %7566

; <label>:7564                                    ; preds = %7559
  %7565 = fcmp fast oeq float %7561, %7560
  br i1 %7565, label %7869, label %7567

; <label>:7566                                    ; preds = %7559
  br i1 %7530, label %7869, label %7567

; <label>:7567                                    ; preds = %7566, %7564
  %7568 = phi float [ %7496, %7566 ], [ %7560, %7564 ]
  %7569 = phi float [ 0.000000e+00, %7566 ], [ %7561, %7564 ]
  %7570 = icmp ne i32 %7518, 0
  %7571 = fmul fast float %7568, %7499
  %7572 = fadd fast float %7571, %7512
  %7573 = fmul fast float %7572, %7568
  %7574 = select i1 %7570, float 0.000000e+00, float %7573
  %7575 = fcmp fast oeq float %7499, 0.000000e+00
  %7576 = fdiv fast float %7517, %7499
  %7577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7576)  ; FMax(a,b)
  %7578 = select i1 %7575, float %7568, float %7577
  %7579 = call float @dx.op.binary.f32(i32 36, float %7568, float %7578)  ; FMin(a,b)
  %7580 = fcmp fast ogt float %7499, 0.000000e+00
  %7581 = fcmp fast olt float %7517, 0.000000e+00
  br i1 %7580, label %7582, label %7639

; <label>:7582                                    ; preds = %7567
  %7583 = icmp eq i32 %7518, 0
  br i1 %7581, label %7584, label %7628

; <label>:7584                                    ; preds = %7582
  %7585 = select i1 %7583, float %7568, float 0.000000e+00
  %7586 = fsub fast float -0.000000e+00, %7585
  %7587 = call float @dx.op.unary.f32(i32 6, float %7586)  ; FAbs(value)
  %7588 = fmul fast float %7585, %7499
  %7589 = fadd fast float %7588, %7512
  %7590 = fmul fast float %7587, %7589
  %7591 = fsub fast float %7574, %7590
  %7592 = fsub fast float %7568, %7587
  %7593 = select i1 %7583, float %7592, float 0.000000e+00
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.CBufRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.CBufRet.f32 %7594, 2
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.CBufRet.f32 %7598, 2
  %7602 = extractvalue %dx.types.CBufRet.f32 %7598, 3
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 3
  %7605 = call float @dx.op.binary.f32(i32 36, float %7591, float %7604)  ; FMin(a,b)
  %7606 = fmul fast float %7602, %7593
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = fsub fast float %7599, %7595
  %7609 = fsub fast float %7600, %7596
  %7610 = fsub fast float %7601, %7597
  %7611 = fmul fast float %7607, %7608
  %7612 = fmul fast float %7607, %7609
  %7613 = fmul fast float %7607, %7610
  %7614 = fadd fast float %7611, %7595
  %7615 = fadd fast float %7612, %7596
  %7616 = fadd fast float %7613, %7597
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7620 = fadd fast float %7619, %7618
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7623 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7624 = fadd fast float %7623, %7622
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7626 = fmul fast float %7621, %7605
  %7627 = fmul fast float %7626, %7625
  br label %7869

; <label>:7628                                    ; preds = %7582
  br i1 %7583, label %7629, label %7650

; <label>:7629                                    ; preds = %7628
  %7630 = call float @dx.op.binary.f32(i32 36, float %7579, float %7569)  ; FMin(a,b)
  %7631 = fsub fast float %7579, %7630
  %7632 = fsub fast float %7631, %7568
  %7633 = call float @dx.op.unary.f32(i32 6, float %7632)  ; FAbs(value)
  %7634 = fadd fast float %7631, %7568
  %7635 = fmul fast float %7634, %7499
  %7636 = fadd fast float %7635, %7512
  %7637 = fmul fast float %7636, %7633
  %7638 = fsub fast float %7574, %7637
  br label %7650

; <label>:7639                                    ; preds = %7567
  br i1 %7581, label %7640, label %7650

; <label>:7640                                    ; preds = %7639
  %7641 = call float @dx.op.binary.f32(i32 35, float %7569, float %7579)  ; FMax(a,b)
  %7642 = icmp eq i32 %7518, 0
  %7643 = select i1 %7642, float %7579, float 0.000000e+00
  %7644 = fsub fast float -0.000000e+00, %7643
  %7645 = call float @dx.op.unary.f32(i32 6, float %7644)  ; FAbs(value)
  %7646 = fmul fast float %7643, %7499
  %7647 = fadd fast float %7646, %7512
  %7648 = fmul fast float %7645, %7647
  %7649 = fsub fast float %7574, %7648
  br label %7650

; <label>:7650                                    ; preds = %7640, %7639, %7629, %7628
  %7651 = phi float [ %7569, %7628 ], [ %7569, %7629 ], [ %7641, %7640 ], [ %7569, %7639 ]
  %7652 = phi float [ 0.000000e+00, %7628 ], [ %7633, %7629 ], [ %7645, %7640 ], [ 0.000000e+00, %7639 ]
  %7653 = phi float [ %7574, %7628 ], [ %7638, %7629 ], [ %7649, %7640 ], [ %7574, %7639 ]
  %7654 = phi float [ %7579, %7628 ], [ %7579, %7629 ], [ %7568, %7640 ], [ %7568, %7639 ]
  %7655 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %7655, align 4, !tbaa !128, !noalias !130
  %7656 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %7656, align 4, !tbaa !128, !noalias !130
  %7657 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %7657, align 4, !tbaa !128, !noalias !130
  %7658 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %7658, align 4, !tbaa !128, !noalias !130
  %7659 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %7659, align 4, !tbaa !128, !noalias !130
  %7660 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %7660, align 4, !tbaa !128, !noalias !130
  %7661 = icmp sgt i32 %7520, 0
  br i1 %7661, label %7662, label %7723

; <label>:7662                                    ; preds = %7650
  br label %7663

; <label>:7663                                    ; preds = %7712, %7662
  %7664 = phi i32 [ %7713, %7712 ], [ 0, %7662 ]
  %7665 = phi i32 [ %7714, %7712 ], [ 0, %7662 ]
  %7666 = add nuw i32 %7665, 171
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7666)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  %7669 = extractvalue %dx.types.CBufRet.f32 %7667, 1
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = fsub fast float %7668, %7671
  %7674 = fsub fast float %7669, %7672
  %7675 = extractvalue %dx.types.CBufRet.f32 %7667, 2
  %7676 = fsub fast float -0.000000e+00, %7673
  %7677 = fsub fast float -0.000000e+00, %7674
  %7678 = call float @dx.op.dot2.f32(i32 54, float %7497, float %7498, float %7676, float %7677)  ; Dot2(ax,ay,bx,by)
  %7679 = fmul fast float %7678, 2.000000e+00
  %7680 = call float @dx.op.dot2.f32(i32 54, float %7676, float %7677, float %7676, float %7677)  ; Dot2(ax,ay,bx,by)
  %7681 = fmul fast float %7675, %7675
  %7682 = fsub fast float %7680, %7681
  %7683 = fmul fast float %7679, %7679
  %7684 = fmul fast float %7540, %7682
  %7685 = fsub fast float %7683, %7684
  %7686 = fcmp fast ogt float %7685, 0.000000e+00
  br i1 %7686, label %7687, label %7702

; <label>:7687                                    ; preds = %7663
  %7688 = fcmp fast ogt float %7679, 0.000000e+00
  %7689 = call float @dx.op.unary.f32(i32 24, float %7685)  ; Sqrt(value)
  %7690 = fsub fast float -0.000000e+00, %7689
  %7691 = select i1 %7688, float %7689, float %7690
  %7692 = fadd fast float %7691, %7679
  %7693 = fmul float %7692, -5.000000e-01
  %7694 = fdiv fast float %7693, %7533
  %7695 = call float @dx.op.binary.f32(i32 35, float %7694, float 0.000000e+00)  ; FMax(a,b)
  %7696 = call float @dx.op.binary.f32(i32 36, float %7568, float %7695)  ; FMin(a,b)
  %7697 = fdiv fast float %7682, %7693
  %7698 = call float @dx.op.binary.f32(i32 35, float %7697, float 0.000000e+00)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7568, float %7698)  ; FMin(a,b)
  %7700 = call float @dx.op.binary.f32(i32 36, float %7696, float %7699)  ; FMin(a,b)
  %7701 = call float @dx.op.binary.f32(i32 35, float %7696, float %7699)  ; FMax(a,b)
  br label %7702

; <label>:7702                                    ; preds = %7687, %7663
  %7703 = phi float [ %7701, %7687 ], [ -1.000000e+00, %7663 ]
  %7704 = phi float [ %7700, %7687 ], [ -1.000000e+00, %7663 ]
  %7705 = phi i1 [ true, %7687 ], [ false, %7663 ]
  br i1 %7705, label %7706, label %7712

; <label>:7706                                    ; preds = %7702
  %7707 = call float @dx.op.binary.f32(i32 35, float %7651, float %7704)  ; FMax(a,b)
  %7708 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %7665
  store float %7707, float* %7708, align 4, !tbaa !128, !noalias !130
  %7709 = call float @dx.op.binary.f32(i32 35, float %7651, float %7703)  ; FMax(a,b)
  %7710 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %7665
  store float %7709, float* %7710, align 4, !tbaa !128, !noalias !130
  %7711 = add nsw i32 %7664, 1
  br label %7712

; <label>:7712                                    ; preds = %7706, %7702
  %7713 = phi i32 [ %7711, %7706 ], [ %7664, %7702 ]
  %7714 = add nuw nsw i32 %7665, 1
  %7715 = icmp eq i32 %7714, %7520
  br i1 %7715, label %7716, label %7663

; <label>:7716                                    ; preds = %7712
  %7717 = load float, float* %7657, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7718 = load float, float* %7656, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %7719 = load float, float* %7655, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %7720 = load float, float* %7660, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7721 = load float, float* %7659, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %7722 = load float, float* %7658, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %7723

; <label>:7723                                    ; preds = %7716, %7650
  %7724 = phi float [ -1.000000e+00, %7650 ], [ %7722, %7716 ]
  %7725 = phi float [ -1.000000e+00, %7650 ], [ %7721, %7716 ]
  %7726 = phi float [ -1.000000e+00, %7650 ], [ %7720, %7716 ]
  %7727 = phi float [ -1.000000e+00, %7650 ], [ %7719, %7716 ]
  %7728 = phi float [ -1.000000e+00, %7650 ], [ %7718, %7716 ]
  %7729 = phi float [ -1.000000e+00, %7650 ], [ %7717, %7716 ]
  %7730 = phi i32 [ 0, %7650 ], [ %7713, %7716 ]
  %7731 = call float @dx.op.binary.f32(i32 36, float %7728, float %7729)  ; FMin(a,b)
  %7732 = call float @dx.op.binary.f32(i32 36, float %7727, float %7731)  ; FMin(a,b)
  %7733 = call float @dx.op.binary.f32(i32 35, float %7727, float %7728)  ; FMax(a,b)
  %7734 = call float @dx.op.binary.f32(i32 36, float %7733, float %7729)  ; FMin(a,b)
  %7735 = call float @dx.op.binary.f32(i32 36, float %7727, float %7728)  ; FMin(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float %7735, float %7734)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 35, float %7728, float %7729)  ; FMax(a,b)
  %7738 = call float @dx.op.binary.f32(i32 35, float %7727, float %7737)  ; FMax(a,b)
  store float %7732, float* %7655, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %7736, float* %7656, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %7738, float* %7657, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7739 = call float @dx.op.binary.f32(i32 36, float %7725, float %7726)  ; FMin(a,b)
  %7740 = call float @dx.op.binary.f32(i32 36, float %7724, float %7739)  ; FMin(a,b)
  %7741 = call float @dx.op.binary.f32(i32 35, float %7724, float %7725)  ; FMax(a,b)
  %7742 = call float @dx.op.binary.f32(i32 36, float %7741, float %7726)  ; FMin(a,b)
  %7743 = call float @dx.op.binary.f32(i32 36, float %7724, float %7725)  ; FMin(a,b)
  %7744 = call float @dx.op.binary.f32(i32 35, float %7743, float %7742)  ; FMax(a,b)
  %7745 = call float @dx.op.binary.f32(i32 35, float %7725, float %7726)  ; FMax(a,b)
  %7746 = call float @dx.op.binary.f32(i32 35, float %7724, float %7745)  ; FMax(a,b)
  store float %7740, float* %7658, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %7744, float* %7659, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %7746, float* %7660, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7747 = sub nsw i32 3, %7730
  %7748 = icmp sgt i32 %7747, 2
  br i1 %7748, label %7749, label %7787

; <label>:7749                                    ; preds = %7723
  %7750 = icmp eq i32 %7518, 0
  %7751 = fsub fast float %7568, %7652
  %7752 = select i1 %7750, float %7751, float %7652
  %7753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.CBufRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.CBufRet.f32 %7753, 2
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.CBufRet.f32 %7757, 2
  %7761 = extractvalue %dx.types.CBufRet.f32 %7757, 3
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 3
  %7764 = call float @dx.op.binary.f32(i32 36, float %7653, float %7763)  ; FMin(a,b)
  %7765 = fmul fast float %7761, %7752
  %7766 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  %7767 = fsub fast float %7758, %7754
  %7768 = fsub fast float %7759, %7755
  %7769 = fsub fast float %7760, %7756
  %7770 = fmul fast float %7766, %7767
  %7771 = fmul fast float %7766, %7768
  %7772 = fmul fast float %7766, %7769
  %7773 = fadd fast float %7770, %7754
  %7774 = fadd fast float %7771, %7755
  %7775 = fadd fast float %7772, %7756
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.CBufRet.f32 %7776, 1
  %7779 = fadd fast float %7778, %7777
  %7780 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7776, 2
  %7782 = extractvalue %dx.types.CBufRet.f32 %7776, 3
  %7783 = fadd fast float %7782, %7781
  %7784 = call float @dx.op.unary.f32(i32 7, float %7783)  ; Saturate(value)
  %7785 = fmul fast float %7780, %7764
  %7786 = fmul fast float %7785, %7784
  br label %7869

; <label>:7787                                    ; preds = %7723
  %7788 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %7747
  %7789 = load float, float* %7788, align 4, !tbaa !128, !noalias !130
  %7790 = fcmp fast olt float %7789, %7654
  %7791 = icmp sgt i32 %7730, 0
  %7792 = and i1 %7791, %7790
  br i1 %7792, label %7793, label %7830

; <label>:7793                                    ; preds = %7787
  br label %7794

; <label>:7794                                    ; preds = %7823, %7793
  %7795 = phi float [ %7824, %7823 ], [ %7652, %7793 ]
  %7796 = phi float [ %7825, %7823 ], [ %7653, %7793 ]
  %7797 = phi float [ %7805, %7823 ], [ %7789, %7793 ]
  %7798 = phi i32 [ %7802, %7823 ], [ %7747, %7793 ]
  %7799 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %7798
  %7800 = load float, float* %7799, align 4, !tbaa !128, !noalias !130
  %7801 = icmp slt i32 %7798, 2
  %7802 = add nsw i32 %7798, 1
  %7803 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %7802
  %7804 = load float, float* %7803, align 4, !tbaa !128, !noalias !130
  %7805 = select i1 %7801, float %7804, float %7568
  %7806 = call float @dx.op.binary.f32(i32 36, float %7805, float %7800)  ; FMin(a,b)
  %7807 = call float @dx.op.binary.f32(i32 36, float %7654, float %7806)  ; FMin(a,b)
  %7808 = icmp eq i32 %7518, 0
  %7809 = fadd fast float %7807, %7797
  %7810 = fmul fast float %7809, %7499
  %7811 = fadd fast float %7810, %7512
  br i1 %7808, label %7817, label %7812

; <label>:7812                                    ; preds = %7794
  %7813 = fsub fast float %7807, %7797
  %7814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7813)  ; FMax(a,b)
  %7815 = fmul fast float %7814, %7811
  %7816 = fadd fast float %7815, %7796
  br label %7823

; <label>:7817                                    ; preds = %7794
  %7818 = fsub fast float %7797, %7807
  %7819 = call float @dx.op.unary.f32(i32 6, float %7818)  ; FAbs(value)
  %7820 = fadd fast float %7819, %7795
  %7821 = fmul fast float %7819, %7811
  %7822 = fsub fast float %7796, %7821
  br label %7823

; <label>:7823                                    ; preds = %7817, %7812
  %7824 = phi float [ %7814, %7812 ], [ %7820, %7817 ]
  %7825 = phi float [ %7816, %7812 ], [ %7822, %7817 ]
  %7826 = fcmp fast olt float %7805, %7654
  %7827 = icmp slt i32 %7802, 3
  %7828 = and i1 %7827, %7826
  br i1 %7828, label %7794, label %7829

; <label>:7829                                    ; preds = %7823
  br label %7830

; <label>:7830                                    ; preds = %7829, %7787
  %7831 = phi float [ %7652, %7787 ], [ %7824, %7829 ]
  %7832 = phi float [ %7653, %7787 ], [ %7825, %7829 ]
  %7833 = fsub fast float %7568, %7831
  %7834 = select i1 %7570, float %7831, float %7833
  %7835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.CBufRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.CBufRet.f32 %7835, 2
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.CBufRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.CBufRet.f32 %7839, 2
  %7843 = extractvalue %dx.types.CBufRet.f32 %7839, 3
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 3
  %7846 = call float @dx.op.binary.f32(i32 36, float %7832, float %7845)  ; FMin(a,b)
  %7847 = fmul fast float %7843, %7834
  %7848 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7849 = fsub fast float %7840, %7836
  %7850 = fsub fast float %7841, %7837
  %7851 = fsub fast float %7842, %7838
  %7852 = fmul fast float %7848, %7849
  %7853 = fmul fast float %7848, %7850
  %7854 = fmul fast float %7848, %7851
  %7855 = fadd fast float %7852, %7836
  %7856 = fadd fast float %7853, %7837
  %7857 = fadd fast float %7854, %7838
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 0
  %7860 = extractvalue %dx.types.CBufRet.f32 %7858, 1
  %7861 = fadd fast float %7860, %7859
  %7862 = call float @dx.op.unary.f32(i32 7, float %7861)  ; Saturate(value)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7858, 2
  %7864 = extractvalue %dx.types.CBufRet.f32 %7858, 3
  %7865 = fadd fast float %7864, %7863
  %7866 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  %7867 = fmul fast float %7862, %7846
  %7868 = fmul fast float %7867, %7866
  br label %7869

; <label>:7869                                    ; preds = %7830, %7749, %7584, %7566, %7564
  %7870 = phi float [ %7593, %7584 ], [ %7752, %7749 ], [ %7834, %7830 ], [ 0.000000e+00, %7564 ], [ 0.000000e+00, %7566 ]
  %7871 = phi float [ %7627, %7584 ], [ %7786, %7749 ], [ %7868, %7830 ], [ 0.000000e+00, %7564 ], [ 0.000000e+00, %7566 ]
  %7872 = phi float [ %7614, %7584 ], [ %7773, %7749 ], [ %7855, %7830 ], [ 0.000000e+00, %7564 ], [ 0.000000e+00, %7566 ]
  %7873 = phi float [ %7615, %7584 ], [ %7774, %7749 ], [ %7856, %7830 ], [ 0.000000e+00, %7564 ], [ 0.000000e+00, %7566 ]
  %7874 = phi float [ %7616, %7584 ], [ %7775, %7749 ], [ %7857, %7830 ], [ 0.000000e+00, %7564 ], [ 0.000000e+00, %7566 ]
  %7875 = fmul fast float %7507, %7871
  %7876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7876, 2
  %7878 = fsub fast float %7514, %7877
  %7879 = fcmp fast olt float %7875, -2.000000e+01
  %7880 = call float @dx.op.unary.f32(i32 21, float %7875)  ; Exp(value)
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 3
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7886 = fmul fast float %7883, %7878
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = fsub fast float 1.000000e+00, %7887
  %7889 = fmul fast float %7499, 5.000000e-01
  %7890 = fadd fast float %7889, 5.000000e-01
  %7891 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7892 = fsub fast float 1.000000e+00, %7891
  %7893 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7888)  ; FMax(a,b)
  %7894 = fdiv fast float %7892, %7893
  %7895 = fsub fast float %7878, %7456
  %7896 = call float @dx.op.unary.f32(i32 6, float %7895)  ; FAbs(value)
  %7897 = fmul fast float %7896, %7882
  %7898 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7899 = fsub fast float 1.000000e+00, %7897
  %7900 = fmul fast float %7899, %7898
  %7901 = fadd fast float %7900, %7897
  %7902 = fmul fast float %7885, %7878
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7904 = fsub fast float 1.000000e+00, %7901
  %7905 = fmul fast float %7904, %7903
  %7906 = fadd fast float %7905, %7901
  %7907 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7908 = fadd fast float %7880, -1.000000e+00
  %7909 = select i1 %7879, float -1.000000e+00, float %7908
  %7910 = fmul fast float %7907, %7909
  %7911 = fadd fast float %7910, 1.000000e+00
  %7912 = fsub fast float -0.000000e+00, %7910
  %7913 = fmul fast float %7872, %7912
  %7914 = fmul fast float %7873, %7912
  %7915 = fmul fast float %7874, %7912
  br label %7916

; <label>:7916                                    ; preds = %7869, %7465
  %7917 = phi float [ %7870, %7869 ], [ 0.000000e+00, %7465 ]
  %7918 = phi float [ %7911, %7869 ], [ 1.000000e+00, %7465 ]
  %7919 = phi float [ %7913, %7869 ], [ 0.000000e+00, %7465 ]
  %7920 = phi float [ %7914, %7869 ], [ 0.000000e+00, %7465 ]
  %7921 = phi float [ %7915, %7869 ], [ 0.000000e+00, %7465 ]
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7924 = fsub fast float 1.000000e+00, %7918
  %7925 = fmul fast float %7924, %7500
  %7926 = fmul fast float %7925, %7923
  %7927 = fsub fast float %7500, %7926
  br i1 %7493, label %7928, label %7957, !dx.controlflow.hints !166

; <label>:7928                                    ; preds = %7916
  %7929 = fmul fast float %7501, %7490
  %7930 = fadd fast float %7929, %7491
  %7931 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7932 = fmul fast float %7472, %7927
  %7933 = fsub fast float -0.000000e+00, %7932
  %7934 = fmul fast float %7473, %7927
  %7935 = fsub fast float -0.000000e+00, %7934
  %7936 = call float @dx.op.unary.f32(i32 21, float %7933)  ; Exp(value)
  %7937 = call float @dx.op.unary.f32(i32 21, float %7935)  ; Exp(value)
  %7938 = call float @dx.op.binary.f32(i32 35, float %7480, float %7936)  ; FMax(a,b)
  %7939 = call float @dx.op.binary.f32(i32 35, float %7480, float %7937)  ; FMax(a,b)
  %7940 = fsub fast float %7939, %7938
  %7941 = fmul fast float %7940, %7931
  %7942 = fadd fast float %7941, %7938
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7944 = fsub fast float %7477, %7482
  %7945 = fsub fast float %7478, %7483
  %7946 = fsub fast float %7479, %7484
  %7947 = fmul fast float %7931, %7944
  %7948 = fmul fast float %7931, %7945
  %7949 = fmul fast float %7931, %7946
  %7950 = fadd fast float %7947, %7482
  %7951 = fadd fast float %7948, %7483
  %7952 = fadd fast float %7949, %7484
  %7953 = fsub fast float 1.000000e+00, %7943
  %7954 = fmul fast float %7953, %7950
  %7955 = fmul fast float %7953, %7951
  %7956 = fmul fast float %7953, %7952
  br label %8016

; <label>:7957                                    ; preds = %7916
  %7958 = fmul fast float %7927, %7489
  %7959 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7960 = fsub fast float 2.000000e+00, %7959
  %7961 = fmul fast float %7959, 9.921875e-01
  %7962 = fmul fast float %7961, %7960
  %7963 = fadd fast float %7962, 3.906250e-03
  %7964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7963, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7965 = extractvalue %dx.types.ResRet.f32 %7964, 0
  %7966 = fsub fast float %7959, %7965
  %7967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7966)  ; FMax(a,b)
  %7968 = fmul fast float %7475, %7456
  %7969 = call float @dx.op.unary.f32(i32 6, float %7968)  ; FAbs(value)
  %7970 = fcmp fast ogt float %7969, 0x3EB0C6F7A0000000
  br i1 %7970, label %7971, label %7977, !dx.controlflow.hints !167

; <label>:7971                                    ; preds = %7957
  %7972 = fmul fast float %7968, 0xBFF7154760000000
  %7973 = call float @dx.op.unary.f32(i32 21, float %7972)  ; Exp(value)
  %7974 = fsub fast float 1.000000e+00, %7973
  %7975 = fdiv fast float %7974, %7968
  %7976 = fmul fast float %7975, %7485
  br label %7977

; <label>:7977                                    ; preds = %7971, %7957
  %7978 = phi float [ %7976, %7971 ], [ %7485, %7957 ]
  %7979 = fadd fast float %7978, %7487
  %7980 = fmul fast float %7979, %7967
  %7981 = fmul fast float %7472, %7980
  %7982 = fsub fast float -0.000000e+00, %7981
  %7983 = fmul fast float %7473, %7980
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = fmul fast float %7474, %7980
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = call float @dx.op.unary.f32(i32 21, float %7982)  ; Exp(value)
  %7988 = call float @dx.op.unary.f32(i32 21, float %7984)  ; Exp(value)
  %7989 = call float @dx.op.unary.f32(i32 21, float %7986)  ; Exp(value)
  %7990 = fmul fast float %7501, %7501
  %7991 = fadd fast float %7990, 1.000000e+00
  %7992 = fmul fast float %7991, 0x3FAE8EC8A0000000
  %7993 = fmul fast float %7992, %7482
  %7994 = fmul fast float %7992, %7483
  %7995 = fmul fast float %7992, %7484
  %7996 = fmul fast float %7501, %7480
  %7997 = fsub fast float 1.000000e+00, %7996
  %7998 = fmul fast float %7480, %7480
  %7999 = fsub fast float 1.000000e+00, %7998
  %8000 = fmul fast float %7999, 0x3FB45F3060000000
  %8001 = fmul fast float %7997, %7997
  %8002 = fdiv fast float 1.000000e+00, %8001
  %8003 = fmul fast float %8000, %8002
  %8004 = fmul fast float %8003, %7477
  %8005 = fmul fast float %8003, %7478
  %8006 = fmul fast float %8003, %7479
  %8007 = fadd fast float %8004, %7993
  %8008 = fadd fast float %8005, %7994
  %8009 = fadd fast float %8006, %7995
  %8010 = fsub fast float 1.000000e+00, %7987
  %8011 = fsub fast float 1.000000e+00, %7988
  %8012 = fsub fast float 1.000000e+00, %7989
  %8013 = fmul fast float %8007, %8010
  %8014 = fmul fast float %8008, %8011
  %8015 = fmul fast float %8009, %8012
  br label %8016

; <label>:8016                                    ; preds = %7977, %7928
  %8017 = phi float [ %7954, %7928 ], [ %8013, %7977 ]
  %8018 = phi float [ %7955, %7928 ], [ %8014, %7977 ]
  %8019 = phi float [ %7956, %7928 ], [ %8015, %7977 ]
  %8020 = phi float [ %7943, %7928 ], [ %7987, %7977 ]
  %8021 = phi float [ %7943, %7928 ], [ %7988, %7977 ]
  %8022 = phi float [ %7943, %7928 ], [ %7989, %7977 ]
  br i1 %7509, label %8023, label %8221, !dx.controlflow.hints !168

; <label>:8023                                    ; preds = %8016
  %8024 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %8025 = fmul fast float %8024, %7924
  %8026 = fsub fast float %7919, %8017
  %8027 = fsub fast float %7920, %8018
  %8028 = fsub fast float %7921, %8019
  %8029 = fmul fast float %8025, %8026
  %8030 = fmul fast float %8025, %8027
  %8031 = fmul fast float %8025, %8028
  %8032 = fadd fast float %8029, %8017
  %8033 = fadd fast float %8030, %8018
  %8034 = fadd fast float %8031, %8019
  %8035 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8020)  ; FMax(a,b)
  %8036 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8021)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8022)  ; FMax(a,b)
  %8038 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7918)  ; FMax(a,b)
  %8039 = call float @dx.op.binary.f32(i32 35, float %7917, float %7927)  ; FMax(a,b)
  %8040 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8039)  ; FMax(a,b)
  %8041 = fdiv fast float %7917, %8040
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = fdiv fast float %7927, %8040
  %8044 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8045 = fcmp fast une float %8038, 1.000000e+00
  br i1 %8045, label %8046, label %8059, !dx.controlflow.hints !169

; <label>:8046                                    ; preds = %8023
  %8047 = call float @dx.op.unary.f32(i32 23, float %8038)  ; Log(value)
  %8048 = fmul fast float %8047, 0x3FE62E4300000000
  %8049 = fmul fast float %7919, %8048
  %8050 = fsub fast float -0.000000e+00, %8049
  %8051 = fmul fast float %7920, %8048
  %8052 = fsub fast float -0.000000e+00, %8051
  %8053 = fmul fast float %7921, %8048
  %8054 = fsub fast float -0.000000e+00, %8053
  %8055 = fsub fast float 1.000000e+00, %8038
  %8056 = fdiv fast float %8050, %8055
  %8057 = fdiv fast float %8052, %8055
  %8058 = fdiv fast float %8054, %8055
  br label %8059

; <label>:8059                                    ; preds = %8046, %8023
  %8060 = phi float [ %8056, %8046 ], [ %7919, %8023 ]
  %8061 = phi float [ %8057, %8046 ], [ %7920, %8023 ]
  %8062 = phi float [ %8058, %8046 ], [ %7921, %8023 ]
  %8063 = phi float [ %8048, %8046 ], [ 0.000000e+00, %8023 ]
  %8064 = fcmp fast une float %8035, 1.000000e+00
  br i1 %8064, label %8065, label %8072, !dx.controlflow.hints !170

; <label>:8065                                    ; preds = %8059
  %8066 = call float @dx.op.unary.f32(i32 23, float %8035)  ; Log(value)
  %8067 = fmul fast float %8066, 0x3FE62E4300000000
  %8068 = fmul fast float %8032, %8067
  %8069 = fsub fast float -0.000000e+00, %8068
  %8070 = fsub fast float 1.000000e+00, %8035
  %8071 = fdiv fast float %8069, %8070
  br label %8072

; <label>:8072                                    ; preds = %8065, %8059
  %8073 = phi float [ %8071, %8065 ], [ %8032, %8059 ]
  %8074 = phi float [ %8067, %8065 ], [ 0.000000e+00, %8059 ]
  %8075 = fcmp fast une float %8036, 1.000000e+00
  br i1 %8075, label %8076, label %8083, !dx.controlflow.hints !170

; <label>:8076                                    ; preds = %8072
  %8077 = call float @dx.op.unary.f32(i32 23, float %8036)  ; Log(value)
  %8078 = fmul fast float %8077, 0x3FE62E4300000000
  %8079 = fmul fast float %8033, %8078
  %8080 = fsub fast float -0.000000e+00, %8079
  %8081 = fsub fast float 1.000000e+00, %8036
  %8082 = fdiv fast float %8080, %8081
  br label %8083

; <label>:8083                                    ; preds = %8076, %8072
  %8084 = phi float [ %8082, %8076 ], [ %8033, %8072 ]
  %8085 = phi float [ %8078, %8076 ], [ 0.000000e+00, %8072 ]
  %8086 = fcmp fast une float %8037, 1.000000e+00
  br i1 %8086, label %8087, label %8094, !dx.controlflow.hints !170

; <label>:8087                                    ; preds = %8083
  %8088 = call float @dx.op.unary.f32(i32 23, float %8037)  ; Log(value)
  %8089 = fmul fast float %8088, 0x3FE62E4300000000
  %8090 = fmul fast float %8034, %8089
  %8091 = fsub fast float -0.000000e+00, %8090
  %8092 = fsub fast float 1.000000e+00, %8037
  %8093 = fdiv fast float %8091, %8092
  br label %8094

; <label>:8094                                    ; preds = %8087, %8083
  %8095 = phi float [ %8093, %8087 ], [ %8034, %8083 ]
  %8096 = phi float [ %8089, %8087 ], [ 0.000000e+00, %8083 ]
  %8097 = fmul fast float %8060, %8044
  %8098 = fmul fast float %8061, %8044
  %8099 = fmul fast float %8062, %8044
  %8100 = fmul fast float %8063, %8044
  %8101 = fmul fast float %8073, %8042
  %8102 = fmul fast float %8084, %8042
  %8103 = fmul fast float %8095, %8042
  %8104 = fmul fast float %8074, %8042
  %8105 = fmul fast float %8085, %8042
  %8106 = fmul fast float %8096, %8042
  %8107 = fadd fast float %8101, %8097
  %8108 = fadd fast float %8102, %8098
  %8109 = fadd fast float %8103, %8099
  %8110 = fadd fast float %8104, %8100
  %8111 = fadd fast float %8105, %8100
  %8112 = fadd fast float %8106, %8100
  %8113 = fcmp fast une float %8110, 0.000000e+00
  br i1 %8113, label %8114, label %8121, !dx.controlflow.hints !171

; <label>:8114                                    ; preds = %8094
  %8115 = fmul fast float %8110, 0x3FF7154760000000
  %8116 = call float @dx.op.unary.f32(i32 21, float %8115)  ; Exp(value)
  %8117 = fsub fast float 1.000000e+00, %8116
  %8118 = fmul fast float %8107, %8117
  %8119 = fsub fast float -0.000000e+00, %8118
  %8120 = fdiv fast float %8119, %8110
  br label %8121

; <label>:8121                                    ; preds = %8114, %8094
  %8122 = phi float [ %8116, %8114 ], [ 1.000000e+00, %8094 ]
  %8123 = phi float [ %8120, %8114 ], [ %8107, %8094 ]
  %8124 = fcmp fast une float %8111, 0.000000e+00
  br i1 %8124, label %8125, label %8132, !dx.controlflow.hints !171

; <label>:8125                                    ; preds = %8121
  %8126 = fmul fast float %8111, 0x3FF7154760000000
  %8127 = call float @dx.op.unary.f32(i32 21, float %8126)  ; Exp(value)
  %8128 = fsub fast float 1.000000e+00, %8127
  %8129 = fmul fast float %8108, %8128
  %8130 = fsub fast float -0.000000e+00, %8129
  %8131 = fdiv fast float %8130, %8111
  br label %8132

; <label>:8132                                    ; preds = %8125, %8121
  %8133 = phi float [ %8127, %8125 ], [ 1.000000e+00, %8121 ]
  %8134 = phi float [ %8131, %8125 ], [ %8108, %8121 ]
  %8135 = fcmp fast une float %8112, 0.000000e+00
  br i1 %8135, label %8136, label %8143, !dx.controlflow.hints !171

; <label>:8136                                    ; preds = %8132
  %8137 = fmul fast float %8112, 0x3FF7154760000000
  %8138 = call float @dx.op.unary.f32(i32 21, float %8137)  ; Exp(value)
  %8139 = fsub fast float 1.000000e+00, %8138
  %8140 = fmul fast float %8109, %8139
  %8141 = fsub fast float -0.000000e+00, %8140
  %8142 = fdiv fast float %8141, %8112
  br label %8143

; <label>:8143                                    ; preds = %8136, %8132
  %8144 = phi float [ %8138, %8136 ], [ 1.000000e+00, %8132 ]
  %8145 = phi float [ %8142, %8136 ], [ %8109, %8132 ]
  %8146 = fcmp fast ogt float %8042, %8044
  br i1 %8146, label %8147, label %8167

; <label>:8147                                    ; preds = %8143
  %8148 = fsub fast float 1.000000e+00, %8044
  %8149 = fmul fast float %8060, %8148
  %8150 = fmul fast float %8061, %8148
  %8151 = fmul fast float %8062, %8148
  %8152 = fmul fast float %8063, %8148
  %8153 = fcmp fast une float %8152, 0.000000e+00
  br i1 %8153, label %8154, label %8205, !dx.controlflow.hints !172

; <label>:8154                                    ; preds = %8147
  %8155 = fmul fast float %8152, 0x3FF7154760000000
  %8156 = call float @dx.op.unary.f32(i32 21, float %8155)  ; Exp(value)
  %8157 = fsub fast float 1.000000e+00, %8156
  %8158 = fmul fast float %8149, %8157
  %8159 = fsub fast float -0.000000e+00, %8158
  %8160 = fmul fast float %8150, %8157
  %8161 = fsub fast float -0.000000e+00, %8160
  %8162 = fmul fast float %8151, %8157
  %8163 = fsub fast float -0.000000e+00, %8162
  %8164 = fdiv fast float %8159, %8152
  %8165 = fdiv fast float %8161, %8152
  %8166 = fdiv fast float %8163, %8152
  br label %8205

; <label>:8167                                    ; preds = %8143
  %8168 = fsub fast float 1.000000e+00, %8042
  %8169 = fmul fast float %8073, %8168
  %8170 = fmul fast float %8084, %8168
  %8171 = fmul fast float %8095, %8168
  %8172 = fmul fast float %8074, %8168
  %8173 = fmul fast float %8085, %8168
  %8174 = fmul fast float %8096, %8168
  %8175 = fcmp fast une float %8172, 0.000000e+00
  br i1 %8175, label %8176, label %8183, !dx.controlflow.hints !171

; <label>:8176                                    ; preds = %8167
  %8177 = fmul fast float %8172, 0x3FF7154760000000
  %8178 = call float @dx.op.unary.f32(i32 21, float %8177)  ; Exp(value)
  %8179 = fsub fast float 1.000000e+00, %8178
  %8180 = fmul fast float %8169, %8179
  %8181 = fsub fast float -0.000000e+00, %8180
  %8182 = fdiv fast float %8181, %8172
  br label %8183

; <label>:8183                                    ; preds = %8176, %8167
  %8184 = phi float [ %8182, %8176 ], [ %8169, %8167 ]
  %8185 = phi float [ %8178, %8176 ], [ 1.000000e+00, %8167 ]
  %8186 = fcmp fast une float %8173, 0.000000e+00
  br i1 %8186, label %8187, label %8194, !dx.controlflow.hints !171

; <label>:8187                                    ; preds = %8183
  %8188 = fmul fast float %8173, 0x3FF7154760000000
  %8189 = call float @dx.op.unary.f32(i32 21, float %8188)  ; Exp(value)
  %8190 = fsub fast float 1.000000e+00, %8189
  %8191 = fmul fast float %8170, %8190
  %8192 = fsub fast float -0.000000e+00, %8191
  %8193 = fdiv fast float %8192, %8173
  br label %8194

; <label>:8194                                    ; preds = %8187, %8183
  %8195 = phi float [ %8193, %8187 ], [ %8170, %8183 ]
  %8196 = phi float [ %8189, %8187 ], [ 1.000000e+00, %8183 ]
  %8197 = fcmp fast une float %8174, 0.000000e+00
  br i1 %8197, label %8198, label %8205, !dx.controlflow.hints !171

; <label>:8198                                    ; preds = %8194
  %8199 = fmul fast float %8174, 0x3FF7154760000000
  %8200 = call float @dx.op.unary.f32(i32 21, float %8199)  ; Exp(value)
  %8201 = fsub fast float 1.000000e+00, %8200
  %8202 = fmul fast float %8171, %8201
  %8203 = fsub fast float -0.000000e+00, %8202
  %8204 = fdiv fast float %8203, %8174
  br label %8205

; <label>:8205                                    ; preds = %8198, %8194, %8154, %8147
  %8206 = phi float [ %8204, %8198 ], [ %8166, %8154 ], [ %8151, %8147 ], [ %8171, %8194 ]
  %8207 = phi float [ %8195, %8198 ], [ %8165, %8154 ], [ %8150, %8147 ], [ %8195, %8194 ]
  %8208 = phi float [ %8184, %8198 ], [ %8164, %8154 ], [ %8149, %8147 ], [ %8184, %8194 ]
  %8209 = phi float [ %8200, %8198 ], [ %8156, %8154 ], [ 1.000000e+00, %8147 ], [ 1.000000e+00, %8194 ]
  %8210 = phi float [ %8196, %8198 ], [ %8156, %8154 ], [ 1.000000e+00, %8147 ], [ %8196, %8194 ]
  %8211 = phi float [ %8185, %8198 ], [ %8156, %8154 ], [ 1.000000e+00, %8147 ], [ %8185, %8194 ]
  %8212 = fmul fast float %8211, %8123
  %8213 = fmul fast float %8210, %8134
  %8214 = fmul fast float %8209, %8145
  %8215 = fadd fast float %8212, %8208
  %8216 = fadd fast float %8213, %8207
  %8217 = fadd fast float %8214, %8206
  %8218 = fmul fast float %8211, %8122
  %8219 = fmul fast float %8210, %8133
  %8220 = fmul fast float %8209, %8144
  br label %8221

; <label>:8221                                    ; preds = %8205, %8016
  %8222 = phi float [ %8220, %8205 ], [ %8022, %8016 ]
  %8223 = phi float [ %8219, %8205 ], [ %8021, %8016 ]
  %8224 = phi float [ %8218, %8205 ], [ %8020, %8016 ]
  %8225 = phi float [ %8217, %8205 ], [ %8019, %8016 ]
  %8226 = phi float [ %8216, %8205 ], [ %8018, %8016 ]
  %8227 = phi float [ %8215, %8205 ], [ %8017, %8016 ]
  %8228 = fmul fast float %8227, %7173
  %8229 = fmul fast float %8226, %7173
  %8230 = fmul fast float %8225, %7173
  %8231 = fmul fast float %8224, %7464
  %8232 = call float @dx.op.dot3.f32(i32 55, float %8224, float %8223, float %8222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8233 = call float @dx.op.dot3.f32(i32 55, float %8228, float %8229, float %8230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8234 = select i1 %268, float %8232, float %8224
  %8235 = select i1 %268, float %8232, float %8223
  %8236 = select i1 %268, float 1.000000e+00, float %8222
  %8237 = select i1 %268, float %8233, float %8228
  %8238 = select i1 %268, float 0.000000e+00, float %8229
  %8239 = select i1 %268, float 0.000000e+00, float %8230
  %8240 = fmul fast float %8234, %7458
  %8241 = fmul fast float %8235, %7459
  %8242 = fmul fast float %8236, %7460
  %8243 = fadd fast float %8240, %8237
  %8244 = fadd fast float %8241, %8238
  %8245 = fadd fast float %8239, %8242
  %8246 = fmul fast float %8234, %7461
  %8247 = fmul fast float %8235, %7462
  %8248 = fmul fast float %8236, %7463
  %8249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8250 = extractvalue %dx.types.CBufRet.i32 %8249, 0
  %8251 = icmp eq i32 %8250, 0
  br i1 %8251, label %8619, label %8252, !dx.controlflow.hints !173

; <label>:8252                                    ; preds = %8221
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 3
  %8256 = fmul fast float %8254, %113
  %8257 = fmul fast float %8255, %114
  %8258 = fmul fast float %8256, 2.000000e+00
  %8259 = fmul fast float %8257, 2.000000e+00
  %8260 = fsub fast float 1.000000e+00, %8258
  %8261 = fsub fast float 1.000000e+00, %8259
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8266 = fmul fast float %8260, %8263
  %8267 = fmul fast float %8260, %8264
  %8268 = fmul fast float %8260, %8265
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8272 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8273 = fmul fast float %8261, %8270
  %8274 = fmul fast float %8261, %8271
  %8275 = fmul fast float %8261, %8272
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = fadd fast float %8273, %8277
  %8281 = fadd fast float %8280, %8266
  %8282 = fadd fast float %8274, %8278
  %8283 = fadd fast float %8282, %8267
  %8284 = fadd fast float %8275, %8279
  %8285 = fadd fast float %8284, %8268
  %8286 = fmul fast float %8281, %7457
  %8287 = fmul fast float %8283, %7457
  %8288 = fmul fast float %8285, %7457
  %8289 = fmul fast float %8286, %8286
  %8290 = fmul fast float %8287, %8287
  %8291 = fadd fast float %8289, %8290
  %8292 = fmul fast float %8288, %8288
  %8293 = fadd fast float %8291, %8292
  %8294 = call float @dx.op.unary.f32(i32 24, float %8293)  ; Sqrt(value)
  %8295 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %8296 = fsub fast float %8294, %8295
  %8297 = extractvalue %dx.types.CBufRet.f32 %7184, 2
  %8298 = fmul fast float %8296, %8297
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = fadd fast float %8299, -5.000000e-01
  %8301 = fmul fast float %8300, 2.000000e+00
  %8302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8303 = extractvalue %dx.types.CBufRet.f32 %8302, 2
  %8304 = call float @dx.op.binary.f32(i32 36, float %8303, float %8301)  ; FMin(a,b)
  %8305 = fsub fast float -0.000000e+00, %8303
  %8306 = fcmp fast ogt float %8304, %8305
  br i1 %8306, label %8307, label %8619, !dx.controlflow.hints !174

; <label>:8307                                    ; preds = %8252
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 3
  %8310 = fcmp fast ogt float %8309, 0.000000e+00
  br i1 %8310, label %8311, label %8386, !dx.controlflow.hints !175

; <label>:8311                                    ; preds = %8307
  %8312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8313 = extractvalue %dx.types.Dimensions %8312, 0
  %8314 = sitofp i32 %8313 to float
  %8315 = extractvalue %dx.types.Dimensions %8312, 1
  %8316 = sitofp i32 %8315 to float
  %8317 = fmul fast float %8256, %8314
  %8318 = fmul fast float %8257, %8316
  %8319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8319, 1
  %8321 = fsub fast float -0.000000e+00, %8320
  %8322 = fptoui float %8321 to i32
  %8323 = fptoui float %8317 to i32
  %8324 = fptoui float %8318 to i32
  %8325 = and i32 %8322, 31
  %8326 = lshr i32 %8323, %8325
  %8327 = lshr i32 %8324, %8325
  %8328 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8322, i32 %8326, i32 %8327, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = fcmp fast olt float %8329, -1.000000e+00
  %8331 = fcmp fast ogt float %8329, -1.000000e+00
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 1
  %8334 = select i1 %8331, float %8333, float 1.000000e+00
  %8335 = fadd fast float %8329, 1.000000e+00
  %8336 = fmul fast float %8334, %8335
  %8337 = call float @dx.op.unary.f32(i32 6, float %8336)  ; FAbs(value)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8339 = fcmp fast oge float %8337, %8338
  %8340 = select i1 %8339, float 0x4197782600000000, float %8337
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = select i1 %8330, float %8342, float %8263
  %8346 = select i1 %8330, float %8343, float %8264
  %8347 = select i1 %8330, float %8344, float %8265
  %8348 = fmul fast float %8345, %8260
  %8349 = fmul fast float %8346, %8260
  %8350 = fmul fast float %8347, %8260
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.CBufRet.f32 %8351, 1
  %8354 = extractvalue %dx.types.CBufRet.f32 %8351, 2
  %8355 = select i1 %8330, float %8352, float %8270
  %8356 = select i1 %8330, float %8353, float %8271
  %8357 = select i1 %8330, float %8354, float %8272
  %8358 = fmul fast float %8355, %8261
  %8359 = fmul fast float %8356, %8261
  %8360 = fmul fast float %8357, %8261
  %8361 = fadd fast float %8358, %8348
  %8362 = fadd fast float %8359, %8349
  %8363 = fadd fast float %8360, %8350
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 0
  %8366 = extractvalue %dx.types.CBufRet.f32 %8364, 1
  %8367 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8368 = select i1 %8330, float %8365, float %8277
  %8369 = select i1 %8330, float %8366, float %8278
  %8370 = select i1 %8330, float %8367, float %8279
  %8371 = fadd fast float %8361, %8368
  %8372 = fadd fast float %8362, %8369
  %8373 = fadd fast float %8363, %8370
  %8374 = fmul fast float %8371, %8340
  %8375 = fmul fast float %8372, %8340
  %8376 = fmul fast float %8373, %8340
  %8377 = fmul fast float %8374, %8374
  %8378 = fmul fast float %8375, %8375
  %8379 = fadd fast float %8377, %8378
  %8380 = fmul fast float %8376, %8376
  %8381 = fadd fast float %8379, %8380
  %8382 = call float @dx.op.unary.f32(i32 24, float %8381)  ; Sqrt(value)
  %8383 = fsub fast float %8382, %8295
  %8384 = fmul fast float %8383, %8297
  %8385 = call float @dx.op.unary.f32(i32 7, float %8384)  ; Saturate(value)
  br label %8386

; <label>:8386                                    ; preds = %8311, %8307
  %8387 = phi float [ %8385, %8311 ], [ 1.000000e+00, %8307 ]
  %8388 = fmul fast float %8304, 5.000000e-01
  %8389 = fadd fast float %8388, 5.000000e-01
  %8390 = call float @dx.op.unary.f32(i32 22, float %8389)  ; Frc(value)
  %8391 = call float @dx.op.unary.f32(i32 27, float %8390)  ; Round_ni(value)
  %8392 = call float @dx.op.unary.f32(i32 22, float %8390)  ; Frc(value)
  %8393 = fmul fast float %8392, 2.000000e+00
  %8394 = fadd fast float %8393, -1.000000e+00
  %8395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8256, float %8257, float %8391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = extractvalue %dx.types.ResRet.f32 %8395, 3
  %8400 = fadd fast float %8396, -5.000000e-01
  %8401 = fadd fast float %8398, -5.000000e-01
  %8402 = fmul fast float %8400, 0xBFD5555560000000
  %8403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8401, float %8402)  ; FMad(a,b,c)
  %8404 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8397, float 0.000000e+00)  ; FMad(a,b,c)
  %8405 = fadd fast float %8404, %8399
  %8406 = fmul fast float %8400, -7.500000e-01
  %8407 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8401, float %8406)  ; FMad(a,b,c)
  %8408 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8397, float 0.000000e+00)  ; FMad(a,b,c)
  %8409 = fadd fast float %8408, %8399
  %8410 = call float @dx.op.binary.f32(i32 35, float %8403, float -1.000000e+00)  ; FMax(a,b)
  %8411 = call float @dx.op.binary.f32(i32 35, float %8405, float -1.000000e+00)  ; FMax(a,b)
  %8412 = call float @dx.op.binary.f32(i32 35, float %8407, float -1.000000e+00)  ; FMax(a,b)
  %8413 = call float @dx.op.binary.f32(i32 35, float %8409, float -1.000000e+00)  ; FMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 36, float %8410, float 1.000000e+00)  ; FMin(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8411, float 1.000000e+00)  ; FMin(a,b)
  %8416 = call float @dx.op.binary.f32(i32 36, float %8412, float 1.000000e+00)  ; FMin(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8413, float 1.000000e+00)  ; FMin(a,b)
  %8418 = fcmp fast olt float %8414, 0x3FEFFF8020000000
  br i1 %8418, label %8419, label %8534, !dx.controlflow.hints !176

; <label>:8419                                    ; preds = %8386
  %8420 = extractvalue %dx.types.CBufRet.f32 %8302, 3
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.CBufRet.f32 %8421, 2
  %8425 = extractvalue %dx.types.CBufRet.f32 %8421, 3
  %8426 = fsub fast float %8422, %8414
  %8427 = fsub fast float %8423, %8415
  %8428 = fsub fast float %8424, %8416
  %8429 = fsub fast float %8425, %8417
  %8430 = fmul fast float %8426, %8420
  %8431 = fmul fast float %8427, %8420
  %8432 = fmul fast float %8428, %8420
  %8433 = fmul fast float %8429, %8420
  %8434 = fadd fast float %8430, %8414
  %8435 = fadd fast float %8431, %8415
  %8436 = fsub fast float -0.000000e+00, %8435
  %8437 = fadd fast float %8432, %8416
  %8438 = fadd fast float %8433, %8417
  %8439 = fmul fast float %8434, %8434
  %8440 = fsub fast float %8435, %8439
  %8441 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8440)  ; FMax(a,b)
  %8442 = fdiv fast float 1.000000e+00, %8441
  %8443 = fmul fast float %8435, %8434
  %8444 = fsub fast float %8437, %8443
  %8445 = fsub fast float %8394, %8434
  %8446 = fmul fast float %8394, %8394
  %8447 = fsub fast float %8446, %8435
  %8448 = fmul fast float %8445, %8442
  %8449 = fmul fast float %8448, %8444
  %8450 = fsub fast float %8447, %8449
  %8451 = fmul fast float %8435, %8435
  %8452 = fsub fast float %8438, %8451
  %8453 = fmul fast float %8444, %8444
  %8454 = fmul fast float %8453, %8442
  %8455 = fsub fast float %8452, %8454
  %8456 = fdiv fast float %8450, %8455
  %8457 = fmul fast float %8444, %8456
  %8458 = fsub fast float %8445, %8457
  %8459 = fmul fast float %8458, %8442
  %8460 = fmul fast float %8459, %8434
  %8461 = fsub fast float 1.000000e+00, %8460
  %8462 = fmul fast float %8435, %8456
  %8463 = fsub fast float %8461, %8462
  %8464 = fmul fast float %8459, %8459
  %8465 = fmul fast float %8456, 4.000000e+00
  %8466 = fmul fast float %8465, %8463
  %8467 = fsub fast float %8464, %8466
  %8468 = call float @dx.op.unary.f32(i32 24, float %8467)  ; Sqrt(value)
  %8469 = fcmp fast oge float %8459, 0.000000e+00
  %8470 = fsub fast float -0.000000e+00, %8468
  %8471 = select i1 %8469, float %8470, float %8468
  %8472 = fsub fast float %8471, %8459
  %8473 = fdiv fast float %8472, %8456
  %8474 = fdiv fast float %8463, %8472
  %8475 = fmul fast float %8473, 5.000000e-01
  %8476 = fmul fast float %8474, 2.000000e+00
  %8477 = select i1 %8469, float %8475, float %8476
  %8478 = select i1 %8469, float %8476, float %8475
  %8479 = call float @dx.op.binary.f32(i32 35, float %8477, float %8478)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 36, float %8477, float %8478)  ; FMin(a,b)
  %8481 = fcmp fast ogt float %8394, %8480
  br i1 %8481, label %8482, label %8492

; <label>:8482                                    ; preds = %8419
  %8483 = fsub fast float %8394, %8480
  %8484 = fsub fast float %8479, %8480
  %8485 = fmul fast float %8483, %8484
  %8486 = fmul fast float %8479, %8394
  %8487 = fadd fast float %8479, %8394
  %8488 = fmul fast float %8487, %8434
  %8489 = fadd fast float %8486, %8435
  %8490 = fsub fast float %8489, %8488
  %8491 = fdiv fast float %8490, %8485
  br label %8492

; <label>:8492                                    ; preds = %8482, %8419
  %8493 = phi float [ %8491, %8482 ], [ 0.000000e+00, %8419 ]
  %8494 = fcmp fast ogt float %8394, %8479
  %8495 = fsub fast float %8394, %8479
  br i1 %8494, label %8496, label %8506

; <label>:8496                                    ; preds = %8492
  %8497 = fsub fast float %8479, %8480
  %8498 = fmul fast float %8497, %8495
  %8499 = fmul fast float %8480, %8394
  %8500 = fadd fast float %8480, %8394
  %8501 = fmul fast float %8500, %8434
  %8502 = fsub fast float %8436, %8499
  %8503 = fadd fast float %8502, %8501
  %8504 = fdiv fast float %8503, %8498
  %8505 = fadd fast float %8504, %8493
  br label %8506

; <label>:8506                                    ; preds = %8496, %8492
  %8507 = phi float [ %8505, %8496 ], [ %8493, %8492 ]
  %8508 = fsub fast float %8394, %8480
  %8509 = fmul fast float %8508, %8495
  %8510 = fmul fast float %8480, %8479
  %8511 = fadd fast float %8480, %8479
  %8512 = fmul fast float %8511, %8434
  %8513 = fadd fast float %8510, %8435
  %8514 = fsub fast float %8513, %8512
  %8515 = fdiv fast float %8514, %8509
  %8516 = call float @dx.op.unary.f32(i32 7, float %8507)  ; Saturate(value)
  %8517 = fcmp fast oeq float %7185, 0.000000e+00
  %8518 = extractvalue %dx.types.CBufRet.f32 %8302, 0
  %8519 = fcmp fast oeq float %8518, 0.000000e+00
  %8520 = or i1 %8517, %8519
  %8521 = fmul fast float %8518, 2.000000e+00
  %8522 = fadd fast float %8303, %8304
  %8523 = fdiv fast float %8522, %8521
  %8524 = call float @dx.op.unary.f32(i32 7, float %8523)  ; Saturate(value)
  %8525 = fmul fast float %8524, 2.000000e+00
  %8526 = fsub fast float 3.000000e+00, %8525
  %8527 = fmul fast float %8524, %8524
  %8528 = fmul fast float %8527, %8526
  %8529 = select i1 %8520, float 1.000000e+00, float %8528
  %8530 = fmul fast float %8515, %7185
  %8531 = fadd fast float %8516, %8530
  %8532 = call float @dx.op.unary.f32(i32 7, float %8531)  ; Saturate(value)
  %8533 = fmul fast float %8529, %8532
  br label %8534

; <label>:8534                                    ; preds = %8506, %8386
  %8535 = phi float [ %8533, %8506 ], [ 0.000000e+00, %8386 ]
  %8536 = fsub fast float 1.000000e+00, %8535
  %8537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8256, float %8257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8538 = extractvalue %dx.types.ResRet.f32 %8537, 0
  %8539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.i32 %8539, 2
  %8541 = icmp eq i32 %8540, 0
  br i1 %8541, label %8547, label %8542

; <label>:8542                                    ; preds = %8534
  %8543 = call float @dx.op.unary.f32(i32 7, float %8535)  ; Saturate(value)
  %8544 = fadd fast float %8538, -1.000000e+00
  %8545 = fmul fast float %8543, %8544
  %8546 = fadd fast float %8545, 1.000000e+00
  br label %8547

; <label>:8547                                    ; preds = %8542, %8534
  %8548 = phi float [ %8546, %8542 ], [ %8536, %8534 ]
  br i1 %8310, label %8549, label %8567

; <label>:8549                                    ; preds = %8547
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 1
  %8552 = fsub fast float %8387, %8551
  %8553 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8554 = fsub fast float %8387, %8309
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = fsub fast float %8553, %8555
  %8557 = fsub fast float %8389, %8555
  %8558 = fdiv fast float %8557, %8556
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fmul fast float %8559, 2.000000e+00
  %8561 = fsub fast float 3.000000e+00, %8560
  %8562 = fsub fast float %8538, %8548
  %8563 = fmul fast float %8559, %8559
  %8564 = fmul fast float %8563, %8562
  %8565 = fmul fast float %8564, %8561
  %8566 = fadd fast float %8565, %8548
  br label %8567

; <label>:8567                                    ; preds = %8549, %8547
  %8568 = phi float [ %8566, %8549 ], [ %8548, %8547 ]
  %8569 = call float @dx.op.binary.f32(i32 35, float %8538, float %8568)  ; FMax(a,b)
  %8570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.i32 %8570, 2
  %8572 = and i32 %8571, 1
  %8573 = icmp eq i32 %8572, 0
  %8574 = fcmp fast une float %8569, 1.000000e+00
  %8575 = and i1 %8574, %8573
  br i1 %8575, label %8576, label %8595

; <label>:8576                                    ; preds = %8567
  %8577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8256, float %8257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8578 = extractvalue %dx.types.ResRet.f32 %8577, 0
  %8579 = extractvalue %dx.types.ResRet.f32 %8577, 1
  %8580 = extractvalue %dx.types.ResRet.f32 %8577, 2
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8583 = fmul fast float %8582, %8578
  %8584 = fmul fast float %8582, %8579
  %8585 = fmul fast float %8582, %8580
  %8586 = fcmp fast ogt float %8538, 0x3FEFFF2E40000000
  %8587 = fsub fast float 1.000000e+00, %8569
  %8588 = fsub fast float 1.000000e+00, %8538
  %8589 = fdiv fast float %8587, %8588
  %8590 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  %8591 = select i1 %8586, float 0.000000e+00, float %8590
  %8592 = fmul fast float %8583, %8591
  %8593 = fmul fast float %8584, %8591
  %8594 = fmul fast float %8585, %8591
  br label %8595

; <label>:8595                                    ; preds = %8576, %8567
  %8596 = phi float [ 0.000000e+00, %8567 ], [ %8592, %8576 ]
  %8597 = phi float [ 0.000000e+00, %8567 ], [ %8593, %8576 ]
  %8598 = phi float [ 0.000000e+00, %8567 ], [ %8594, %8576 ]
  %8599 = fmul fast float %8596, %7173
  %8600 = fmul fast float %8597, %7173
  %8601 = fmul fast float %8598, %7173
  %8602 = fmul fast float %8569, %8231
  %8603 = call float @dx.op.dot3.f32(i32 55, float %8569, float %8569, float %8569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8604 = call float @dx.op.dot3.f32(i32 55, float %8599, float %8600, float %8601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8605 = select i1 %268, float %8603, float %8569
  %8606 = select i1 %268, float 1.000000e+00, float %8569
  %8607 = select i1 %268, float %8604, float %8599
  %8608 = select i1 %268, float 0.000000e+00, float %8600
  %8609 = select i1 %268, float 0.000000e+00, float %8601
  %8610 = fmul fast float %8605, %8243
  %8611 = fmul fast float %8605, %8244
  %8612 = fmul fast float %8606, %8245
  %8613 = fadd fast float %8610, %8607
  %8614 = fadd fast float %8611, %8608
  %8615 = fadd fast float %8609, %8612
  %8616 = fmul fast float %8605, %8246
  %8617 = fmul fast float %8605, %8247
  %8618 = fmul fast float %8606, %8248
  br label %8619

; <label>:8619                                    ; preds = %8595, %8252, %8221, %7453
  %8620 = phi float [ %7458, %7453 ], [ %8243, %8221 ], [ %8613, %8595 ], [ %8243, %8252 ]
  %8621 = phi float [ %7459, %7453 ], [ %8244, %8221 ], [ %8614, %8595 ], [ %8244, %8252 ]
  %8622 = phi float [ %7460, %7453 ], [ %8245, %8221 ], [ %8615, %8595 ], [ %8245, %8252 ]
  %8623 = phi float [ %7461, %7453 ], [ %8246, %8221 ], [ %8616, %8595 ], [ %8246, %8252 ]
  %8624 = phi float [ %7462, %7453 ], [ %8247, %8221 ], [ %8617, %8595 ], [ %8247, %8252 ]
  %8625 = phi float [ %7463, %7453 ], [ %8248, %8221 ], [ %8618, %8595 ], [ %8248, %8252 ]
  %8626 = phi float [ %7464, %7453 ], [ %8231, %8221 ], [ %8602, %8595 ], [ %8231, %8252 ]
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8629 = extractvalue %dx.types.CBufRet.f32 %8627, 3
  %8630 = fmul fast float %8628, %113
  %8631 = fmul fast float %8629, %114
  %8632 = call float @dx.op.unary.f32(i32 7, float %8630)  ; Saturate(value)
  %8633 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8634 = select i1 %7195, i32 2, i32 0
  %8635 = or i32 %8634, 1
  %8636 = uitofp i32 %8635 to float
  %8637 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8632, float %8633, float %8636, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8638 = extractvalue %dx.types.ResRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.ResRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.ResRet.f32 %8637, 2
  %8641 = extractvalue %dx.types.ResRet.f32 %8637, 3
  %8642 = add nuw nsw i32 %8634, 2
  %8643 = uitofp i32 %8642 to float
  %8644 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8632, float %8633, float %8643, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8645 = extractvalue %dx.types.ResRet.f32 %8644, 0
  %8646 = extractvalue %dx.types.ResRet.f32 %8644, 1
  %8647 = extractvalue %dx.types.ResRet.f32 %8644, 2
  %8648 = extractvalue %dx.types.ResRet.f32 %8644, 3
  %8649 = call float @dx.op.binary.f32(i32 35, float %8639, float %8640)  ; FMax(a,b)
  %8650 = call float @dx.op.binary.f32(i32 35, float %8638, float %8649)  ; FMax(a,b)
  %8651 = call float @dx.op.binary.f32(i32 35, float %8650, float %8641)  ; FMax(a,b)
  %8652 = call float @dx.op.binary.f32(i32 36, float %8646, float %8647)  ; FMin(a,b)
  %8653 = call float @dx.op.binary.f32(i32 36, float %8645, float %8652)  ; FMin(a,b)
  %8654 = call float @dx.op.binary.f32(i32 36, float %8653, float %8648)  ; FMin(a,b)
  %8655 = fmul fast float %8651, 2.550000e+02
  %8656 = fadd fast float %8655, 0x3F70101020000000
  %8657 = fptoui float %8656 to i32
  %8658 = fmul fast float %8654, 2.550000e+02
  %8659 = fadd fast float %8658, 0x3F70101020000000
  %8660 = fptoui float %8659 to i32
  %8661 = icmp ult i32 %8657, %8660
  br i1 %8661, label %8662, label %8831

; <label>:8662                                    ; preds = %8619
  %8663 = fcmp fast ogt float %103, 9.843750e-01
  %8664 = fadd fast float %7457, -4.000000e+00
  %8665 = select i1 %8663, float -4.000000e+00, float %8664
  %8666 = call float @dx.op.binary.f32(i32 35, float %8665, float 0.000000e+00)  ; FMax(a,b)
  %8667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8668 = extractvalue %dx.types.CBufRet.f32 %8667, 0
  %8669 = fadd fast float %8668, %8666
  %8670 = extractvalue %dx.types.CBufRet.f32 %8667, 2
  %8671 = fmul fast float %8669, %8670
  %8672 = call float @dx.op.unary.f32(i32 23, float %8671)  ; Log(value)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8667, 3
  %8674 = fmul fast float %8673, %8672
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 2
  %8677 = fmul fast float %8674, %8676
  %8678 = call float @dx.op.unary.f32(i32 7, float %8677)  ; Saturate(value)
  %8679 = uitofp i32 %8657 to float
  %8680 = uitofp i32 %8660 to float
  %8681 = fadd fast float %8679, 5.000000e-01
  %8682 = fadd fast float %8680, 5.000000e-01
  %8683 = fmul fast float %8676, %8681
  %8684 = fmul fast float %8676, %8682
  %8685 = fadd fast float %8683, 0x3F0FFB4800000000
  %8686 = fadd fast float %8684, 0xBF0FFB4800000000
  %8687 = call float @dx.op.binary.f32(i32 35, float %8678, float %8685)  ; FMax(a,b)
  %8688 = call float @dx.op.binary.f32(i32 36, float %8687, float %8686)  ; FMin(a,b)
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 1
  %8691 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8692 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8693 = select i1 %7195, float %8692, float 0.000000e+00
  %8694 = fmul fast float %8690, %8688
  %8695 = fadd fast float %8693, %8694
  %8696 = fadd fast float %8693, %8691
  %8697 = fsub fast float %8690, %8691
  %8698 = fadd fast float %8697, %8693
  %8699 = call float @dx.op.binary.f32(i32 35, float %8695, float %8696)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 36, float %8699, float %8698)  ; FMin(a,b)
  %8701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8632, float %8633, float %8700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8702 = extractvalue %dx.types.ResRet.f32 %8701, 0
  %8703 = extractvalue %dx.types.ResRet.f32 %8701, 1
  %8704 = extractvalue %dx.types.ResRet.f32 %8701, 2
  %8705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.i32 %8705, 0
  %8707 = extractvalue %dx.types.CBufRet.i32 %8705, 1
  %8708 = uitofp i32 %8706 to float
  %8709 = uitofp i32 %8707 to float
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = fmul fast float %8708, %8632
  %8714 = fmul fast float %8709, %8633
  %8715 = fadd fast float %8713, -5.000000e-01
  %8716 = fadd fast float %8714, -5.000000e-01
  %8717 = call float @dx.op.unary.f32(i32 22, float %8715)  ; Frc(value)
  %8718 = call float @dx.op.unary.f32(i32 22, float %8716)  ; Frc(value)
  %8719 = fmul fast float %8717, %8717
  %8720 = fmul fast float %8719, %8717
  %8721 = fsub fast float 3.000000e+00, %8717
  %8722 = fmul fast float %8719, %8721
  %8723 = fmul fast float %8717, 3.000000e+00
  %8724 = fmul fast float %8720, 3.000000e+00
  %8725 = fmul fast float %8719, 6.000000e+00
  %8726 = fsub fast float %8724, %8725
  %8727 = fadd fast float %8726, 4.000000e+00
  %8728 = fmul fast float %8727, 0x3FC5555560000000
  %8729 = fmul fast float %8720, -3.000000e+00
  %8730 = fadd fast float %8719, %8717
  %8731 = fmul fast float %8730, 3.000000e+00
  %8732 = fadd fast float %8729, 1.000000e+00
  %8733 = fadd fast float %8732, %8731
  %8734 = fmul fast float %8720, 0x3FC5555560000000
  %8735 = fmul fast float %8718, %8718
  %8736 = fmul fast float %8735, %8718
  %8737 = fsub fast float 3.000000e+00, %8718
  %8738 = fmul fast float %8735, %8737
  %8739 = fmul fast float %8718, 3.000000e+00
  %8740 = fmul fast float %8736, 3.000000e+00
  %8741 = fmul fast float %8735, 6.000000e+00
  %8742 = fsub fast float %8740, %8741
  %8743 = fadd fast float %8742, 4.000000e+00
  %8744 = fmul fast float %8743, 0x3FC5555560000000
  %8745 = fmul fast float %8736, -3.000000e+00
  %8746 = fadd fast float %8735, %8718
  %8747 = fmul fast float %8746, 3.000000e+00
  %8748 = fadd fast float %8745, 1.000000e+00
  %8749 = fadd fast float %8748, %8747
  %8750 = fmul fast float %8736, 0x3FC5555560000000
  %8751 = fadd fast float %8717, 1.000000e+00
  %8752 = fsub fast float 1.000000e+00, %8723
  %8753 = fadd fast float %8752, %8722
  %8754 = fadd fast float %8753, %8727
  %8755 = fmul fast float %8754, 0x3FC5555560000000
  %8756 = fdiv fast float %8728, %8755
  %8757 = fsub fast float %8751, %8756
  %8758 = fsub fast float 1.000000e+00, %8717
  %8759 = fadd fast float %8733, %8720
  %8760 = fmul fast float %8759, 0x3FC5555560000000
  %8761 = fdiv fast float %8734, %8760
  %8762 = fadd fast float %8758, %8761
  %8763 = fadd fast float %8718, 1.000000e+00
  %8764 = fsub fast float 1.000000e+00, %8739
  %8765 = fadd fast float %8764, %8738
  %8766 = fadd fast float %8765, %8743
  %8767 = fmul fast float %8766, 0x3FC5555560000000
  %8768 = fdiv fast float %8744, %8767
  %8769 = fsub fast float %8763, %8768
  %8770 = fsub fast float 1.000000e+00, %8718
  %8771 = fadd fast float %8749, %8736
  %8772 = fmul fast float %8771, 0x3FC5555560000000
  %8773 = fdiv fast float %8750, %8772
  %8774 = fadd fast float %8773, %8770
  %8775 = fmul fast float %8757, %8711
  %8776 = fsub fast float %8632, %8775
  %8777 = fmul fast float %8762, %8711
  %8778 = fadd fast float %8777, %8632
  %8779 = fmul fast float %8774, %8712
  %8780 = fadd fast float %8779, %8633
  %8781 = fmul fast float %8769, %8712
  %8782 = fsub fast float %8633, %8781
  %8783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8776, float %8782, float %8700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8784 = extractvalue %dx.types.ResRet.f32 %8783, 0
  %8785 = extractvalue %dx.types.ResRet.f32 %8783, 1
  %8786 = extractvalue %dx.types.ResRet.f32 %8783, 2
  %8787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8778, float %8782, float %8700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8788 = extractvalue %dx.types.ResRet.f32 %8787, 0
  %8789 = extractvalue %dx.types.ResRet.f32 %8787, 1
  %8790 = extractvalue %dx.types.ResRet.f32 %8787, 2
  %8791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8776, float %8780, float %8700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8792 = extractvalue %dx.types.ResRet.f32 %8791, 0
  %8793 = extractvalue %dx.types.ResRet.f32 %8791, 1
  %8794 = extractvalue %dx.types.ResRet.f32 %8791, 2
  %8795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8778, float %8780, float %8700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8796 = extractvalue %dx.types.ResRet.f32 %8795, 0
  %8797 = extractvalue %dx.types.ResRet.f32 %8795, 1
  %8798 = extractvalue %dx.types.ResRet.f32 %8795, 2
  %8799 = fsub fast float %8792, %8784
  %8800 = fsub fast float %8793, %8785
  %8801 = fsub fast float %8794, %8786
  %8802 = fmul fast float %8799, %8772
  %8803 = fmul fast float %8800, %8772
  %8804 = fmul fast float %8801, %8772
  %8805 = fadd fast float %8802, %8784
  %8806 = fadd fast float %8803, %8785
  %8807 = fadd fast float %8804, %8786
  %8808 = fsub fast float %8796, %8788
  %8809 = fsub fast float %8797, %8789
  %8810 = fsub fast float %8798, %8790
  %8811 = fmul fast float %8808, %8772
  %8812 = fmul fast float %8809, %8772
  %8813 = fmul fast float %8810, %8772
  %8814 = fsub fast float %8788, %8805
  %8815 = fadd fast float %8814, %8811
  %8816 = fsub fast float %8789, %8806
  %8817 = fadd fast float %8816, %8812
  %8818 = fsub fast float %8790, %8807
  %8819 = fadd fast float %8818, %8813
  %8820 = fmul fast float %8815, %8760
  %8821 = fmul fast float %8817, %8760
  %8822 = fmul fast float %8819, %8760
  %8823 = fadd fast float %8820, %8805
  %8824 = fadd fast float %8821, %8806
  %8825 = fadd fast float %8822, %8807
  %8826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8827 = extractvalue %dx.types.CBufRet.f32 %8826, 1
  %8828 = fmul fast float %8823, %8827
  %8829 = fmul fast float %8824, %8827
  %8830 = fmul fast float %8825, %8827
  br label %8831

; <label>:8831                                    ; preds = %8662, %8619
  %8832 = phi float [ %8702, %8662 ], [ 1.000000e+00, %8619 ]
  %8833 = phi float [ %8703, %8662 ], [ 1.000000e+00, %8619 ]
  %8834 = phi float [ %8704, %8662 ], [ 1.000000e+00, %8619 ]
  %8835 = phi float [ %8828, %8662 ], [ 0.000000e+00, %8619 ]
  %8836 = phi float [ %8829, %8662 ], [ 0.000000e+00, %8619 ]
  %8837 = phi float [ %8830, %8662 ], [ 0.000000e+00, %8619 ]
  %8838 = fmul fast float %8835, %7173
  %8839 = fmul fast float %8836, %7173
  %8840 = fmul fast float %8837, %7173
  %8841 = fmul fast float %8832, %8626
  %8842 = call float @dx.op.dot3.f32(i32 55, float %8832, float %8833, float %8834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8843 = call float @dx.op.dot3.f32(i32 55, float %8838, float %8839, float %8840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8844 = select i1 %268, float %8842, float %8832
  %8845 = select i1 %268, float %8842, float %8833
  %8846 = select i1 %268, float 1.000000e+00, float %8834
  %8847 = select i1 %268, float %8843, float %8838
  %8848 = select i1 %268, float 0.000000e+00, float %8839
  %8849 = select i1 %268, float 0.000000e+00, float %8840
  %8850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.i32 %8850, 3
  %8852 = and i32 %8851, 3
  %8853 = icmp ne i32 %8852, 0
  %8854 = and i32 %8851, 4
  %8855 = icmp ne i32 %8854, 0
  %8856 = and i1 %8853, %8855
  %8857 = and i1 %268, %8856
  br i1 %8857, label %8858, label %8864

; <label>:8858                                    ; preds = %8831
  %8859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8860 = extractvalue %dx.types.CBufRet.f32 %8859, 1
  %8861 = fadd fast float %8841, -1.000000e+00
  %8862 = fmul fast float %8860, %8861
  %8863 = fadd fast float %8862, 1.000000e+00
  br label %8864

; <label>:8864                                    ; preds = %8858, %8831
  %8865 = phi float [ %8863, %8858 ], [ %8841, %8831 ]
  %8866 = fadd fast float %8623, %8620
  %8867 = fmul fast float %8844, %8866
  %8868 = fadd fast float %8867, %8847
  %8869 = fadd fast float %8624, %8621
  %8870 = fmul fast float %8845, %8869
  %8871 = fadd fast float %8870, %8848
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  br i1 %268, label %8874, label %8898

; <label>:8874                                    ; preds = %8864
  %8875 = fadd fast float %8868, %8871
  %8876 = fmul fast float %8873, %8875
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8879 = extractvalue %dx.types.CBufRet.f32 %7177, 1
  %8880 = fsub fast float %7182, %7176
  %8881 = fadd fast float %8880, %7183
  %8882 = fsub fast float %8881, %8879
  %8883 = extractvalue %dx.types.CBufRet.f32 %7177, 2
  %8884 = fmul fast float %8882, %8883
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  %8886 = fsub fast float %8885, %8878
  %8887 = fmul fast float %8886, %8865
  %8888 = fadd fast float %8887, %8878
  %8889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8889, 0
  %8891 = fsub fast float %8888, %8890
  %8892 = fmul fast float %8891, 1.000000e+01
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fsub fast float %3896, %7173
  %8895 = fmul fast float %8893, %8894
  %8896 = fadd fast float %8895, %7173
  %8897 = fmul fast float %8896, %8888
  br label %8922

; <label>:8898                                    ; preds = %8864
  %8899 = fadd fast float %8625, %8622
  %8900 = fmul fast float %8846, %8899
  %8901 = fadd fast float %8900, %8849
  %8902 = fmul fast float %8873, %8868
  %8903 = fmul fast float %8873, %8871
  %8904 = fmul fast float %8873, %8901
  %8905 = call float @dx.op.binary.f32(i32 35, float %8903, float %8904)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 35, float %8902, float %8905)  ; FMax(a,b)
  %8907 = call float @dx.op.binary.f32(i32 35, float %8906, float %7173)  ; FMax(a,b)
  %8908 = fcmp fast ugt float %8907, 0x3F10000000000000
  br i1 %8908, label %8910, label %8909

; <label>:8909                                    ; preds = %8898
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8910

; <label>:8910                                    ; preds = %8909, %8898
  %8911 = add i32 %57, 356
  %8912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8911, i32 undef)  ; BufferLoad(srv,index,wot)
  %8913 = extractvalue %dx.types.ResRet.i32 %8912, 0
  %8914 = and i32 %8913, 32
  %8915 = icmp eq i32 %8914, 0
  br i1 %8915, label %8922, label %8916

; <label>:8916                                    ; preds = %8910
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 0
  %8919 = fmul fast float %8918, 0x3FE99999A0000000
  %8920 = fadd fast float %8918, %8902
  %8921 = fadd fast float %8919, %8904
  br label %8922

; <label>:8922                                    ; preds = %8916, %8910, %8874
  %8923 = phi float [ %8876, %8874 ], [ %8920, %8916 ], [ %8902, %8910 ]
  %8924 = phi float [ %8897, %8874 ], [ %8903, %8916 ], [ %8903, %8910 ]
  %8925 = phi float [ %8896, %8874 ], [ %8921, %8916 ], [ %8904, %8910 ]
  %8926 = phi float [ %8896, %8874 ], [ %7173, %8916 ], [ %7173, %8910 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8927 = call float @dx.op.binary.f32(i32 36, float %8923, float 3.225500e+04)  ; FMin(a,b)
  %8928 = call float @dx.op.binary.f32(i32 36, float %8924, float 3.225500e+04)  ; FMin(a,b)
  %8929 = call float @dx.op.binary.f32(i32 36, float %8925, float 3.225500e+04)  ; FMin(a,b)
  %8930 = call float @dx.op.binary.f32(i32 36, float %8926, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8929)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8930)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

