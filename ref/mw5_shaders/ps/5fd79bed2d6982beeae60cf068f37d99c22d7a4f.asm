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
; shader hash: ceb529dcdcc439b25c1cc337f2991b13
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
  %462 = add i32 %57, 492
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
  %623 = add i32 %57, 440
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
  %675 = add i32 %57, 424
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
  %699 = add i32 %57, 376
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
  %722 = add i32 %57, 460
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
  %920 = add i32 %57, 392
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
  %1004 = add i32 %57, 408
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
  %1181 = add i32 %57, 444
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
  %1233 = add i32 %57, 428
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
  %1259 = add i32 %57, 380
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
  %1282 = add i32 %57, 464
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
  %1480 = add i32 %57, 396
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
  %1564 = add i32 %57, 412
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
  %1920 = add i32 %57, 448
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
  %1972 = add i32 %57, 432
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
  %1998 = add i32 %57, 384
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
  %2021 = add i32 %57, 468
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
  %2219 = add i32 %57, 400
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
  %2303 = add i32 %57, 416
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
  %2659 = add i32 %57, 452
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
  %2711 = add i32 %57, 436
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
  %2737 = add i32 %57, 388
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
  %2760 = add i32 %57, 472
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
  %2958 = add i32 %57, 404
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
  %3042 = add i32 %57, 420
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
  %3284 = add i32 %57, 360
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
  %3296 = add i32 %57, 456
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = add i32 %3298, 0
  %3300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3300, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = fmul fast float %3295, %3302
  %3304 = fadd fast float %3294, %3303
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = and i32 %202, 65535
  %3308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3307)  ; LegacyF16ToF32(value)
  %3309 = lshr i32 %202, 16
  %3310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3309)  ; LegacyF16ToF32(value)
  %3311 = and i32 %203, 65535
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = fmul fast float %3308, %3274
  %3314 = fmul fast float %3310, %3275
  %3315 = fmul fast float %3312, %3276
  %3316 = shl i32 %204, 4
  %3317 = and i32 %3316, 32752
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = lshr i32 %204, 7
  %3320 = and i32 %3319, 32752
  %3321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3320)  ; LegacyF16ToF32(value)
  %3322 = lshr i32 %204, 22
  %3323 = shl nuw nsw i32 %3322, 5
  %3324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3323)  ; LegacyF16ToF32(value)
  %3325 = and i32 %205, 65535
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = fmul fast float %3306, %3277
  %3328 = fmul fast float %3327, %3318
  %3329 = fmul fast float %3328, %3326
  %3330 = fmul fast float %3306, %3278
  %3331 = fmul fast float %3330, %3321
  %3332 = fmul fast float %3331, %3326
  %3333 = fmul fast float %3306, %3279
  %3334 = fmul fast float %3333, %3324
  %3335 = fmul fast float %3334, %3326
  %3336 = call float @dx.op.dot2.f32(i32 54, float %3272, float %3273, float %3272, float %3273)  ; Dot2(ax,ay,bx,by)
  %3337 = fmul fast float %3336, 0x3FE3333340000000
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3272, float %3273, float %3338, float %3272, float %3273, float %3338)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = call float @dx.op.unary.f32(i32 25, float %3339)  ; Rsqrt(value)
  %3341 = fmul fast float %3340, %3272
  %3342 = fmul fast float %3340, %3273
  %3343 = fmul fast float %3338, %3340
  %3344 = fmul fast float %3343, %122
  %3345 = fmul fast float %3343, %124
  %3346 = fmul fast float %3343, %126
  %3347 = fmul fast float %3341, %88
  %3348 = fmul fast float %3341, %89
  %3349 = fmul fast float %3341, %90
  %3350 = fadd fast float %3344, %3347
  %3351 = fadd fast float %3345, %3348
  %3352 = fadd fast float %3346, %3349
  %3353 = fmul fast float %136, %3342
  %3354 = fmul fast float %137, %3342
  %3355 = fmul fast float %138, %3342
  %3356 = fadd fast float %3350, %3353
  %3357 = fadd fast float %3351, %3354
  %3358 = fadd fast float %3352, %3355
  %3359 = call float @dx.op.dot3.f32(i32 55, float %3356, float %3357, float %3358, float %3356, float %3357, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3360 = call float @dx.op.unary.f32(i32 25, float %3359)  ; Rsqrt(value)
  %3361 = fmul fast float %3356, %3360
  %3362 = fmul fast float %3357, %3360
  %3363 = fmul fast float %3358, %3360
  %3364 = icmp eq i32 %59, 65535
  br i1 %3364, label %3883, label %3365

; <label>:3365                                    ; preds = %3271
  %3366 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3367 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3368 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3369 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3370 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3371 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3372 = fadd fast float %3366, %60
  %3373 = fadd fast float %3367, %61
  %3374 = fadd fast float %3368, %62
  %3375 = fadd fast float %3369, %60
  %3376 = fadd fast float %3370, %61
  %3377 = fadd fast float %3371, %62
  %3378 = mul i32 %59, 48
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = add i32 %3378, 16
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = add i32 %3378, 32
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = extractvalue %dx.types.ResRet.f32 %3389, 3
  %3394 = bitcast float %3393 to i32
  %3395 = fmul fast float %3380, %60
  %3396 = fmul fast float %3381, %61
  %3397 = fmul fast float %3382, %62
  %3398 = fsub fast float %3395, %3385
  %3399 = fsub fast float %3396, %3386
  %3400 = fsub fast float %3397, %3387
  %3401 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3402 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = fmul fast float %3401, %3390
  %3405 = fmul fast float %3402, %3391
  %3406 = fmul fast float %3403, %3392
  %3407 = fadd fast float %3390, -1.000000e+00
  %3408 = fadd fast float %3391, -1.000000e+00
  %3409 = fadd fast float %3392, -1.000000e+00
  %3410 = call float @dx.op.unary.f32(i32 27, float %3404)  ; Round_ni(value)
  %3411 = call float @dx.op.unary.f32(i32 27, float %3405)  ; Round_ni(value)
  %3412 = call float @dx.op.unary.f32(i32 27, float %3406)  ; Round_ni(value)
  %3413 = call float @dx.op.binary.f32(i32 36, float %3410, float %3407)  ; FMin(a,b)
  %3414 = call float @dx.op.binary.f32(i32 36, float %3411, float %3408)  ; FMin(a,b)
  %3415 = call float @dx.op.binary.f32(i32 36, float %3412, float %3409)  ; FMin(a,b)
  %3416 = fmul fast float %3415, %3391
  %3417 = fadd fast float %3416, %3414
  %3418 = fmul fast float %3417, %3390
  %3419 = fadd fast float %3418, %3413
  %3420 = fptosi float %3419 to i32
  %3421 = add nsw i32 %3420, %3394
  %3422 = shl nsw i32 %3421, 2
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = lshr i32 %3424, 16
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %3851, label %3427

; <label>:3427                                    ; preds = %3365
  br label %3428

; <label>:3428                                    ; preds = %3550, %3427
  %3429 = phi i32 [ %3452, %3550 ], [ %3425, %3427 ]
  %3430 = phi float [ %3551, %3550 ], [ 0.000000e+00, %3427 ]
  %3431 = phi float [ %3552, %3550 ], [ %1063, %3427 ]
  %3432 = phi float [ %3553, %3550 ], [ %3304, %3427 ]
  %3433 = phi float [ %3554, %3550 ], [ %3283, %3427 ]
  %3434 = phi float [ %3555, %3550 ], [ 0.000000e+00, %3427 ]
  %3435 = phi float [ %3556, %3550 ], [ 0.000000e+00, %3427 ]
  %3436 = phi float [ %3557, %3550 ], [ %3329, %3427 ]
  %3437 = phi float [ %3558, %3550 ], [ %3332, %3427 ]
  %3438 = phi float [ %3559, %3550 ], [ %3335, %3427 ]
  %3439 = phi float [ %3560, %3550 ], [ %3361, %3427 ]
  %3440 = phi float [ %3561, %3550 ], [ %3362, %3427 ]
  %3441 = phi float [ %3562, %3550 ], [ %3363, %3427 ]
  %3442 = phi float [ %3563, %3550 ], [ %3282, %3427 ]
  %3443 = phi float [ %3564, %3550 ], [ %3281, %3427 ]
  %3444 = phi float [ %3565, %3550 ], [ 0.000000e+00, %3427 ]
  %3445 = phi float [ %3566, %3550 ], [ %3280, %3427 ]
  %3446 = phi float [ %3567, %3550 ], [ %3313, %3427 ]
  %3447 = phi float [ %3568, %3550 ], [ %3314, %3427 ]
  %3448 = phi float [ %3569, %3550 ], [ %3315, %3427 ]
  %3449 = shl nuw nsw i32 %3429, 2
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = lshr i32 %3451, 16
  %3453 = shl i32 %3451, 8
  %3454 = and i32 %3453, 16776960
  %3455 = or i32 %3454, 48
  %3456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = extractvalue %dx.types.ResRet.f32 %3456, 1
  %3459 = extractvalue %dx.types.ResRet.f32 %3456, 2
  %3460 = or i32 %3454, 64
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.i32 %3461, 1
  %3464 = or i32 %3454, 80
  %3465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 3
  %3468 = or i32 %3454, 96
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = or i32 %3454, 112
  %3475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3477 = or i32 %3454, 128
  %3478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3483 = or i32 %3454, 144
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3488 = extractvalue %dx.types.ResRet.f32 %3484, 3
  %3489 = or i32 %3454, 160
  %3490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.ResRet.f32 %3490, 1
  %3493 = extractvalue %dx.types.ResRet.f32 %3490, 2
  %3494 = extractvalue %dx.types.ResRet.f32 %3490, 3
  %3495 = or i32 %3454, 192
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = or i32 %3454, 208
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = or i32 %3454, 248
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.ResRet.f32 %3505, 3
  %3510 = call float @dx.op.dot4.f32(i32 56, float %3506, float %3507, float %3508, float %3509, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3511 = or i32 %3454, 16
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = extractvalue %dx.types.ResRet.f32 %3512, 3
  %3517 = call float @dx.op.dot4.f32(i32 56, float %3513, float %3514, float %3515, float %3516, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3518 = or i32 %3454, 32
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = extractvalue %dx.types.ResRet.f32 %3519, 3
  %3524 = call float @dx.op.dot4.f32(i32 56, float %3520, float %3521, float %3522, float %3523, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3510)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 6, float %3525)  ; FAbs(value)
  %3527 = call float @dx.op.unary.f32(i32 27, float %3517)  ; Round_ni(value)
  %3528 = call float @dx.op.unary.f32(i32 6, float %3527)  ; FAbs(value)
  %3529 = call float @dx.op.unary.f32(i32 6, float %3524)  ; FAbs(value)
  %3530 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3531 = fadd fast float %3528, %3526
  %3532 = fadd fast float %3531, %3530
  %3533 = fcmp fast oeq float %3532, 0.000000e+00
  %3534 = call float @dx.op.dot4.f32(i32 56, float %3506, float %3507, float %3508, float %3509, float %3372, float %3373, float %3374, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3535 = call float @dx.op.dot4.f32(i32 56, float %3513, float %3514, float %3515, float %3516, float %3372, float %3373, float %3374, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3536 = call float @dx.op.dot4.f32(i32 56, float %3506, float %3507, float %3508, float %3509, float %3375, float %3376, float %3377, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3537 = call float @dx.op.dot4.f32(i32 56, float %3513, float %3514, float %3515, float %3516, float %3375, float %3376, float %3377, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3538 = fsub fast float %3534, %3510
  %3539 = fsub fast float %3536, %3510
  %3540 = fsub fast float %3535, %3517
  %3541 = fsub fast float %3537, %3517
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3457, float %3458, float %3459, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 2
  %3545 = fadd fast float %3544, %3542
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3548 = fcmp fast ogt float %3546, %3547
  %3549 = and i1 %3533, %3548
  br i1 %3549, label %3571, label %3550

; <label>:3550                                    ; preds = %3837, %3654, %3571, %3428
  %3551 = phi float [ %3430, %3571 ], [ %3657, %3654 ], [ %3657, %3837 ], [ %3430, %3428 ]
  %3552 = phi float [ %3431, %3571 ], [ %3431, %3654 ], [ %3812, %3837 ], [ %3431, %3428 ]
  %3553 = phi float [ %3432, %3571 ], [ %3432, %3654 ], [ %3811, %3837 ], [ %3432, %3428 ]
  %3554 = phi float [ %3433, %3571 ], [ %3433, %3654 ], [ %3809, %3837 ], [ %3433, %3428 ]
  %3555 = phi float [ %3434, %3571 ], [ %3434, %3654 ], [ %3781, %3837 ], [ %3434, %3428 ]
  %3556 = phi float [ %3435, %3571 ], [ %3435, %3654 ], [ %3779, %3837 ], [ %3435, %3428 ]
  %3557 = phi float [ %3436, %3571 ], [ %3436, %3654 ], [ %3847, %3837 ], [ %3436, %3428 ]
  %3558 = phi float [ %3437, %3571 ], [ %3437, %3654 ], [ %3848, %3837 ], [ %3437, %3428 ]
  %3559 = phi float [ %3438, %3571 ], [ %3438, %3654 ], [ %3849, %3837 ], [ %3438, %3428 ]
  %3560 = phi float [ %3439, %3571 ], [ %3439, %3654 ], [ %3760, %3837 ], [ %3439, %3428 ]
  %3561 = phi float [ %3440, %3571 ], [ %3440, %3654 ], [ %3761, %3837 ], [ %3440, %3428 ]
  %3562 = phi float [ %3441, %3571 ], [ %3441, %3654 ], [ %3762, %3837 ], [ %3441, %3428 ]
  %3563 = phi float [ %3442, %3571 ], [ %3442, %3654 ], [ %3789, %3837 ], [ %3442, %3428 ]
  %3564 = phi float [ %3443, %3571 ], [ %3443, %3654 ], [ %3786, %3837 ], [ %3443, %3428 ]
  %3565 = phi float [ %3444, %3571 ], [ %3444, %3654 ], [ %3783, %3837 ], [ %3444, %3428 ]
  %3566 = phi float [ %3445, %3571 ], [ %3445, %3654 ], [ %3777, %3837 ], [ %3445, %3428 ]
  %3567 = phi float [ %3446, %3571 ], [ %3446, %3654 ], [ %3772, %3837 ], [ %3446, %3428 ]
  %3568 = phi float [ %3447, %3571 ], [ %3447, %3654 ], [ %3773, %3837 ], [ %3447, %3428 ]
  %3569 = phi float [ %3448, %3571 ], [ %3448, %3654 ], [ %3774, %3837 ], [ %3448, %3428 ]
  %3570 = icmp eq i32 %3452, 0
  br i1 %3570, label %3850, label %3428

; <label>:3571                                    ; preds = %3428
  %3572 = extractvalue %dx.types.ResRet.f32 %3456, 3
  %3573 = extractvalue %dx.types.ResRet.f32 %3475, 3
  %3574 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3578 = extractvalue %dx.types.ResRet.i32 %3461, 3
  %3579 = extractvalue %dx.types.ResRet.i32 %3461, 2
  %3580 = bitcast float %3572 to i32
  %3581 = add i32 %3578, 0
  %3582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3581, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3582, %dx.types.Handle %3583, float %3510, float %3517, float undef, float undef, i32 0, i32 0, i32 undef, float %3538, float %3540, float undef, float %3539, float %3541, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = fmul fast float %3585, %3577
  %3587 = fadd fast float %3586, %3576
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fmul fast float %3510, %3470
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3471, float %3517, float %3589)  ; FMad(a,b,c)
  %3591 = fadd fast float %3590, %3575
  %3592 = fmul fast float %3510, %3472
  %3593 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3517, float %3592)  ; FMad(a,b,c)
  %3594 = fadd fast float %3593, %3574
  %3595 = fmul fast float %3538, %3470
  %3596 = call float @dx.op.tertiary.f32(i32 46, float %3471, float %3540, float %3595)  ; FMad(a,b,c)
  %3597 = fmul fast float %3538, %3472
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3540, float %3597)  ; FMad(a,b,c)
  %3599 = fmul fast float %3539, %3470
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3471, float %3541, float %3599)  ; FMad(a,b,c)
  %3601 = fmul fast float %3539, %3472
  %3602 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3541, float %3601)  ; FMad(a,b,c)
  %3603 = add i32 %3579, 0
  %3604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3603, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3605 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3604, %dx.types.Handle %3583, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = and i32 %3580, 1024
  %3608 = icmp ne i32 %3607, 0
  %3609 = fcmp fast ogt float %3606, 0x3FE0101020000000
  %3610 = uitofp i1 %3609 to float
  %3611 = select i1 %3608, float %3610, float %3606
  %3612 = and i32 %3580, 8192
  %3613 = icmp ne i32 %3612, 0
  %3614 = select i1 %3613, float %3573, float 1.000000e+00
  %3615 = fmul fast float %3510, 2.000000e+00
  %3616 = fadd fast float %3615, -1.000000e+00
  %3617 = call float @dx.op.unary.f32(i32 6, float %3616)  ; FAbs(value)
  %3618 = fmul fast float %3617, %3503
  %3619 = fsub fast float %3618, %3503
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3517, 2.000000e+00
  %3622 = fadd fast float %3621, -1.000000e+00
  %3623 = call float @dx.op.unary.f32(i32 6, float %3622)  ; FAbs(value)
  %3624 = fmul fast float %3623, %3504
  %3625 = fsub fast float %3624, %3504
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fmul fast float %3529, %3466
  %3628 = fsub fast float %3627, %3466
  %3629 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3630 = fmul fast float %3588, %3614
  %3631 = fmul fast float %3630, %3585
  %3632 = fmul fast float %3631, %3620
  %3633 = fmul fast float %3632, %3611
  %3634 = fmul fast float %3633, %3626
  %3635 = fmul fast float %3634, %3629
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3639 = fsub fast float %3546, %3638
  %3640 = fmul fast float %3639, %3637
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3642 = fmul fast float %3635, %3467
  %3643 = fadd fast float %3635, %3467
  %3644 = fmul fast float %3643, %3476
  %3645 = fsub fast float %3644, %3476
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = and i32 %3580, 128
  %3648 = icmp ne i32 %3647, 0
  %3649 = select i1 %3648, float %3646, float %3642
  %3650 = fmul fast float %3649, %3641
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = fcmp fast ugt float %3650, %3652
  br i1 %3653, label %3654, label %3550

; <label>:3654                                    ; preds = %3571
  %3655 = select i1 %3613, float %3650, float 0.000000e+00
  %3656 = fadd fast float %3655, %3430
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  br i1 %3613, label %3550, label %3658

; <label>:3658                                    ; preds = %3654
  %3659 = and i32 %3580, 4
  %3660 = and i32 %3580, 8
  %3661 = add i32 %3462, 0
  %3662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3661, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3664 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3662, %dx.types.Handle %3663, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3668 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3669 = bitcast float %3488 to i32
  %3670 = and i32 %3669, 255
  %3671 = uitofp i32 %3670 to float
  %3672 = lshr i32 %3669, 8
  %3673 = and i32 %3672, 255
  %3674 = uitofp i32 %3673 to float
  %3675 = fmul fast float %3668, %3671
  %3676 = fadd fast float %3675, %3674
  %3677 = fmul fast float %3676, 0x3F70101000000000
  %3678 = add i32 %3463, 0
  %3679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3678, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3680 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3679, %dx.types.Handle %3663, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3685 = bitcast float %3482 to i32
  %3686 = and i32 %3685, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = lshr i32 %3685, 8
  %3689 = and i32 %3688, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = lshr i32 %3685, 16
  %3692 = and i32 %3691, 255
  %3693 = uitofp i32 %3692 to float
  %3694 = fmul fast float %3693, 0x3F70101000000000
  %3695 = fmul fast float %3681, %3687
  %3696 = fadd fast float %3695, %3690
  %3697 = fmul fast float %3696, 0x3F70101000000000
  %3698 = fadd fast float %3682, -5.000000e-01
  %3699 = fadd fast float %3684, -5.000000e-01
  %3700 = fmul fast float %3698, %3694
  %3701 = fmul fast float %3699, %3694
  %3702 = fadd fast float %3700, 5.000000e-01
  %3703 = fadd fast float %3701, 5.000000e-01
  %3704 = fmul fast float %3665, %3491
  %3705 = fmul fast float %3666, %3492
  %3706 = fmul fast float %3667, %3493
  %3707 = fmul fast float %3702, 2.000000e+00
  %3708 = fadd fast float %3707, -1.000000e+00
  %3709 = fmul fast float %3703, 2.000000e+00
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = fadd fast float %3708, %3710
  %3712 = fmul fast float %3711, 5.000000e-01
  %3713 = fsub fast float %3708, %3710
  %3714 = fmul fast float %3713, 5.000000e-01
  %3715 = call float @dx.op.unary.f32(i32 6, float %3712)  ; FAbs(value)
  %3716 = fsub fast float 1.000000e+00, %3715
  %3717 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3718 = fsub fast float %3716, %3717
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3714, float %3718, float %3712, float %3714, float %3718)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = call float @dx.op.unary.f32(i32 25, float %3719)  ; Rsqrt(value)
  %3721 = fmul fast float %3712, %3720
  %3722 = fmul fast float %3714, %3720
  %3723 = fmul fast float %3720, %3718
  %3724 = fmul fast float %3723, %3457
  %3725 = fmul fast float %3723, %3458
  %3726 = fmul fast float %3723, %3459
  %3727 = fmul fast float %3721, %3479
  %3728 = fmul fast float %3721, %3480
  %3729 = fmul fast float %3721, %3481
  %3730 = fadd fast float %3727, %3724
  %3731 = fadd fast float %3728, %3725
  %3732 = fadd fast float %3729, %3726
  %3733 = fmul fast float %3722, %3485
  %3734 = fmul fast float %3722, %3486
  %3735 = fmul fast float %3722, %3487
  %3736 = fadd fast float %3730, %3733
  %3737 = fadd fast float %3731, %3734
  %3738 = fadd fast float %3732, %3735
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %3736, float %3737, float %3738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call float @dx.op.unary.f32(i32 25, float %3739)  ; Rsqrt(value)
  %3741 = fmul fast float %3736, %3740
  %3742 = fmul fast float %3737, %3740
  %3743 = fmul fast float %3738, %3740
  %3744 = icmp ne i32 %3660, 0
  %3745 = select i1 %3744, float 1.000000e+00, float 0.000000e+00
  %3746 = fmul fast float %3650, %3745
  %3747 = and i32 %3580, 1
  %3748 = icmp eq i32 %3747, 0
  br i1 %3748, label %3749, label %3753

; <label>:3749                                    ; preds = %3658
  %3750 = fsub fast float %3741, %3439
  %3751 = fsub fast float %3742, %3440
  %3752 = fsub fast float %3743, %3441
  br label %3753

; <label>:3753                                    ; preds = %3749, %3658
  %3754 = phi float [ %3750, %3749 ], [ %3741, %3658 ]
  %3755 = phi float [ %3751, %3749 ], [ %3742, %3658 ]
  %3756 = phi float [ %3752, %3749 ], [ %3743, %3658 ]
  %3757 = fmul float %3756, %3746
  %3758 = fmul float %3755, %3746
  %3759 = fmul float %3754, %3746
  %3760 = fadd fast float %3759, %3439
  %3761 = fadd fast float %3758, %3440
  %3762 = fadd fast float %3757, %3441
  %3763 = icmp ne i32 %3659, 0
  %3764 = select i1 %3763, float 1.000000e+00, float 0.000000e+00
  %3765 = fmul fast float %3650, %3764
  %3766 = fsub fast float %3704, %3446
  %3767 = fsub fast float %3705, %3447
  %3768 = fsub fast float %3706, %3448
  %3769 = fmul fast float %3766, %3765
  %3770 = fmul fast float %3767, %3765
  %3771 = fmul fast float %3768, %3765
  %3772 = fadd fast float %3769, %3446
  %3773 = fadd fast float %3770, %3447
  %3774 = fadd fast float %3771, %3448
  %3775 = fsub fast float %3677, %3445
  %3776 = fmul fast float %3775, %3765
  %3777 = fadd fast float %3776, %3445
  %3778 = fmul fast float %3765, %3435
  %3779 = fsub fast float %3435, %3778
  %3780 = fmul fast float %3765, %3434
  %3781 = fsub fast float %3434, %3780
  %3782 = fadd fast float %3650, %3444
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fsub fast float %3697, %3443
  %3785 = fmul fast float %3784, %3746
  %3786 = fadd fast float %3785, %3443
  %3787 = fsub fast float %3683, %3442
  %3788 = fmul fast float %3787, %3746
  %3789 = fadd fast float %3788, %3442
  %3790 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3705, float %3706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.CBufRet.f32 %3791, 1
  %3794 = fmul fast float %3793, %3790
  %3795 = fadd fast float %3794, %3792
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = bitcast float %3494 to i32
  %3798 = and i32 %3797, 65535
  %3799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3798)  ; LegacyF16ToF32(value)
  %3800 = lshr i32 %3797, 16
  %3801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3800)  ; LegacyF16ToF32(value)
  %3802 = fcmp fast oge float %3799, 0.000000e+00
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = select i1 %3802, float %3799, float %3804
  %3806 = fadd fast float %3805, %3801
  %3807 = fsub fast float %3796, %3433
  %3808 = fmul fast float %3807, %3650
  %3809 = fadd fast float %3808, %3433
  %3810 = fmul fast float %3806, %3650
  %3811 = call float @dx.op.binary.f32(i32 35, float %3432, float %3810)  ; FMax(a,b)
  %3812 = call float @dx.op.binary.f32(i32 35, float %3431, float %3650)  ; FMax(a,b)
  %3813 = and i32 %3580, 16
  %3814 = icmp eq i32 %3813, 0
  br i1 %3814, label %3837, label %3815

; <label>:3815                                    ; preds = %3753
  %3816 = bitcast float %3500 to i32
  %3817 = add i32 %3497, 0
  %3818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3818, %dx.types.Handle %3663, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = and i32 %3816, 65535
  %3824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3823)  ; LegacyF16ToF32(value)
  %3825 = fmul fast float %3820, %3491
  %3826 = fmul fast float %3821, %3492
  %3827 = fmul fast float %3822, %3493
  %3828 = and i32 %3580, 16384
  %3829 = icmp ne i32 %3828, 0
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = select i1 %3829, float %3831, float 1.000000e+00
  %3833 = fmul fast float %3832, %3824
  %3834 = fmul fast float %3825, %3833
  %3835 = fmul fast float %3826, %3833
  %3836 = fmul fast float %3827, %3833
  br label %3837

; <label>:3837                                    ; preds = %3815, %3753
  %3838 = phi float [ %3834, %3815 ], [ 0.000000e+00, %3753 ]
  %3839 = phi float [ %3835, %3815 ], [ 0.000000e+00, %3753 ]
  %3840 = phi float [ %3836, %3815 ], [ 0.000000e+00, %3753 ]
  %3841 = fsub fast float %3838, %3436
  %3842 = fsub fast float %3839, %3437
  %3843 = fsub fast float %3840, %3438
  %3844 = fmul fast float %3841, %3650
  %3845 = fmul fast float %3842, %3650
  %3846 = fmul fast float %3843, %3650
  %3847 = fadd fast float %3844, %3436
  %3848 = fadd fast float %3845, %3437
  %3849 = fadd fast float %3846, %3438
  br label %3550

; <label>:3850                                    ; preds = %3550
  br label %3851

; <label>:3851                                    ; preds = %3850, %3365
  %3852 = phi float [ 0.000000e+00, %3365 ], [ %3551, %3850 ]
  %3853 = phi float [ %1063, %3365 ], [ %3552, %3850 ]
  %3854 = phi float [ %3304, %3365 ], [ %3553, %3850 ]
  %3855 = phi float [ %3283, %3365 ], [ %3554, %3850 ]
  %3856 = phi float [ 0.000000e+00, %3365 ], [ %3555, %3850 ]
  %3857 = phi float [ 0.000000e+00, %3365 ], [ %3556, %3850 ]
  %3858 = phi float [ %3329, %3365 ], [ %3557, %3850 ]
  %3859 = phi float [ %3332, %3365 ], [ %3558, %3850 ]
  %3860 = phi float [ %3335, %3365 ], [ %3559, %3850 ]
  %3861 = phi float [ %3361, %3365 ], [ %3560, %3850 ]
  %3862 = phi float [ %3362, %3365 ], [ %3561, %3850 ]
  %3863 = phi float [ %3363, %3365 ], [ %3562, %3850 ]
  %3864 = phi float [ %3282, %3365 ], [ %3563, %3850 ]
  %3865 = phi float [ %3281, %3365 ], [ %3564, %3850 ]
  %3866 = phi float [ 0.000000e+00, %3365 ], [ %3565, %3850 ]
  %3867 = phi float [ %3280, %3365 ], [ %3566, %3850 ]
  %3868 = phi float [ %3313, %3365 ], [ %3567, %3850 ]
  %3869 = phi float [ %3314, %3365 ], [ %3568, %3850 ]
  %3870 = phi float [ %3315, %3365 ], [ %3569, %3850 ]
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float %3861, float %3862, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = call float @dx.op.unary.f32(i32 25, float %3871)  ; Rsqrt(value)
  %3873 = fmul fast float %3872, %3861
  %3874 = fmul fast float %3872, %3862
  %3875 = fmul fast float %3872, %3863
  %3876 = fadd fast float %3866, %1063
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = call float @dx.op.dot3.f32(i32 55, float %3873, float %3874, float %3875, float %3873, float %3874, float %3875)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = call float @dx.op.unary.f32(i32 25, float %3878)  ; Rsqrt(value)
  %3880 = fmul fast float %3879, %3873
  %3881 = fmul fast float %3879, %3874
  %3882 = fmul fast float %3879, %3875
  br label %3883

; <label>:3883                                    ; preds = %3851, %3271
  %3884 = phi float [ %3880, %3851 ], [ %3361, %3271 ]
  %3885 = phi float [ %3881, %3851 ], [ %3362, %3271 ]
  %3886 = phi float [ %3882, %3851 ], [ %3363, %3271 ]
  %3887 = phi float [ %3868, %3851 ], [ %3313, %3271 ]
  %3888 = phi float [ %3869, %3851 ], [ %3314, %3271 ]
  %3889 = phi float [ %3870, %3851 ], [ %3315, %3271 ]
  %3890 = phi float [ %3858, %3851 ], [ %3329, %3271 ]
  %3891 = phi float [ %3859, %3851 ], [ %3332, %3271 ]
  %3892 = phi float [ %3860, %3851 ], [ %3335, %3271 ]
  %3893 = phi float [ %3867, %3851 ], [ %3280, %3271 ]
  %3894 = phi float [ %3877, %3851 ], [ %1063, %3271 ]
  %3895 = phi float [ %3865, %3851 ], [ %3281, %3271 ]
  %3896 = phi float [ %3864, %3851 ], [ %3282, %3271 ]
  %3897 = phi float [ %3857, %3851 ], [ 0.000000e+00, %3271 ]
  %3898 = phi float [ %3856, %3851 ], [ 0.000000e+00, %3271 ]
  %3899 = phi float [ %3852, %3851 ], [ 0.000000e+00, %3271 ]
  %3900 = phi float [ %3854, %3851 ], [ %3304, %3271 ]
  %3901 = phi float [ %3853, %3851 ], [ %1063, %3271 ]
  %3902 = phi float [ %3855, %3851 ], [ %3283, %3271 ]
  %3903 = fadd fast float %3893, 0xBFB99999A0000000
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = fmul fast float %3904, 0x3FF1C71C80000000
  %3906 = call float @dx.op.binary.f32(i32 36, float %3893, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3907 = fsub fast float 1.000000e+00, %3905
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = fmul fast float %3908, %3887
  %3910 = fmul fast float %3908, %3888
  %3911 = fmul fast float %3908, %3889
  %3912 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3913 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3915 = fmul fast float %3905, %3887
  %3916 = fmul fast float %3905, %3888
  %3917 = fmul fast float %3905, %3889
  %3918 = fadd fast float %3915, %3906
  %3919 = fadd fast float %3916, %3906
  %3920 = fadd fast float %3917, %3906
  %3921 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3922 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3923 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.i32 %3925, 3
  %3927 = and i32 %3926, 8
  %3928 = icmp ne i32 %3927, 0
  %3929 = call float @dx.op.binary.f32(i32 35, float %3912, float %3887)  ; FMax(a,b)
  %3930 = call float @dx.op.binary.f32(i32 35, float %3913, float %3887)  ; FMax(a,b)
  %3931 = call float @dx.op.binary.f32(i32 35, float %3914, float %3887)  ; FMax(a,b)
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3912, float %3913, float %3914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = select i1 %268, float %3887, float %3912
  %3934 = select i1 %268, float %3932, float %3913
  %3935 = select i1 %268, float 1.000000e+00, float %3914
  %3936 = select i1 %3928, float %3929, float %3933
  %3937 = select i1 %3928, float %3930, float %3934
  %3938 = select i1 %3928, float %3931, float %3935
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3943 = fadd fast float %3940, %196
  %3944 = fadd fast float %3941, %197
  %3945 = fadd fast float %3942, %198
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3949 = fsub fast float %3943, %3947
  %3950 = fsub fast float %3944, %3948
  %3951 = fmul fast float %3949, %3949
  %3952 = fmul fast float %3950, %3950
  %3953 = fadd fast float %3951, %3952
  %3954 = call float @dx.op.unary.f32(i32 24, float %3953)  ; Sqrt(value)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3946, 2
  %3956 = fcmp fast olt float %3954, %3955
  br i1 %3956, label %3957, label %4024

; <label>:3957                                    ; preds = %3883
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3966 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3968 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3969 = extractvalue %dx.types.CBufRet.f32 %3962, 3
  %3970 = fadd fast float %3967, %3943
  %3971 = fadd fast float %3968, %3944
  %3972 = fadd fast float %3969, %3945
  %3973 = fmul fast float %3970, %3959
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3971, float %3961, float %3973)  ; FMad(a,b,c)
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3972, float %3963, float %3974)  ; FMad(a,b,c)
  %3976 = fmul fast float %3970, %3964
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %3971, float %3965, float %3976)  ; FMad(a,b,c)
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3972, float %3966, float %3977)  ; FMad(a,b,c)
  %3979 = fsub fast float %3975, %3967
  %3980 = fsub fast float %3978, %3968
  %3981 = fsub fast float %3979, %3947
  %3982 = fadd fast float %3981, %3955
  %3983 = fsub fast float %3980, %3948
  %3984 = fadd fast float %3983, %3955
  %3985 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3986 = fmul fast float %3982, %3985
  %3987 = fmul fast float %3984, %3985
  %3988 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3989 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3990 = fsub fast float 1.000000e+00, %3988
  %3991 = fsub fast float 1.000000e+00, %3989
  %3992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = fcmp fast ugt float %3993, 0.000000e+00
  br i1 %3994, label %3995, label %4298

; <label>:3995                                    ; preds = %3957
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 2
  %3998 = fmul fast float %3997, %3993
  %3999 = extractvalue %dx.types.CBufRet.f32 %3996, 3
  %4000 = fadd fast float %3999, %3998
  %4001 = extractvalue %dx.types.CBufRet.f32 %3962, 2
  %4002 = fadd fast float %4000, %3969
  %4003 = fmul fast float %3975, %3963
  %4004 = call float @dx.op.tertiary.f32(i32 46, float %3978, float %3966, float %4003)  ; FMad(a,b,c)
  %4005 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4001, float %4004)  ; FMad(a,b,c)
  %4006 = fsub fast float %4005, %3969
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4009 = fsub fast float %4006, %4008
  %4010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = extractvalue %dx.types.ResRet.f32 %4010, 1
  %4013 = extractvalue %dx.types.ResRet.f32 %4010, 2
  %4014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %3990, float %3991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4018 = fadd fast float %4015, %4011
  %4019 = fmul fast float %4018, 0x3F847AE140000000
  %4020 = fadd fast float %4016, %4012
  %4021 = fmul fast float %4020, 0x3F847AE140000000
  %4022 = fadd fast float %4017, %4013
  %4023 = fmul fast float %4022, 0x3F847AE140000000
  br label %4298

; <label>:4024                                    ; preds = %3883
  %4025 = and i32 %247, 1
  %4026 = icmp eq i32 %4025, 0
  br i1 %4026, label %4298, label %4027

; <label>:4027                                    ; preds = %4024
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4035 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4036 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4028, 3
  %4038 = extractvalue %dx.types.CBufRet.f32 %4030, 3
  %4039 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4040 = fadd fast float %4037, %3943
  %4041 = fadd fast float %4038, %3944
  %4042 = fadd fast float %4039, %3945
  %4043 = fmul fast float %4040, %4029
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %4041, float %4031, float %4043)  ; FMad(a,b,c)
  %4045 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4033, float %4044)  ; FMad(a,b,c)
  %4046 = fmul fast float %4040, %4034
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4041, float %4035, float %4046)  ; FMad(a,b,c)
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4036, float %4047)  ; FMad(a,b,c)
  %4049 = fsub fast float %4045, %4037
  %4050 = fsub fast float %4048, %4038
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4055 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.i32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.i32 %4058, 1
  %4061 = udiv i32 %4060, %4059
  %4062 = fsub fast float %4049, %4052
  %4063 = fsub fast float %4050, %4053
  %4064 = call float @dx.op.binary.f32(i32 35, float %4062, float 0.000000e+00)  ; FMax(a,b)
  %4065 = call float @dx.op.binary.f32(i32 35, float %4063, float 0.000000e+00)  ; FMax(a,b)
  %4066 = call float @dx.op.binary.f32(i32 36, float %4064, float %4054)  ; FMin(a,b)
  %4067 = call float @dx.op.binary.f32(i32 36, float %4065, float %4055)  ; FMin(a,b)
  %4068 = add i32 %4059, -1
  %4069 = add i32 %4061, -1
  %4070 = fmul fast float %4066, %4057
  %4071 = fmul fast float %4067, %4057
  %4072 = fptoui float %4070 to i32
  %4073 = fptoui float %4071 to i32
  %4074 = call i32 @dx.op.binary.i32(i32 40, i32 %4072, i32 %4068)  ; UMin(a,b)
  %4075 = call i32 @dx.op.binary.i32(i32 40, i32 %4073, i32 %4069)  ; UMin(a,b)
  %4076 = mul i32 %4075, %4059
  %4077 = add i32 %4076, %4074
  %4078 = shl i32 %4077, 2
  %4079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.i32 %4079, 0
  %4081 = icmp eq i32 %4080, -1
  br i1 %4081, label %4298, label %4082

; <label>:4082                                    ; preds = %4027
  %4083 = mul i32 %4080, 148
  %4084 = add i32 %4083, 4
  %4085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = add i32 %4083, 8
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = add i32 %4083, 36
  %4091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4090, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = add i32 %4083, 60
  %4094 = add i32 %4083, 92
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = add i32 %4083, 116
  %4098 = fsub fast float %4049, %4086
  %4099 = fsub fast float %4050, %4089
  %4100 = fmul fast float %4057, %4098
  %4101 = fmul fast float %4057, %4099
  %4102 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4103 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4104 = fsub fast float 1.000000e+00, %4103
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 2
  %4107 = call float @dx.op.unary.f32(i32 83, float %4102)  ; DerivCoarseX(value)
  %4108 = call float @dx.op.unary.f32(i32 83, float %4104)  ; DerivCoarseX(value)
  %4109 = call float @dx.op.unary.f32(i32 84, float %4102)  ; DerivCoarseY(value)
  %4110 = call float @dx.op.unary.f32(i32 84, float %4104)  ; DerivCoarseY(value)
  %4111 = fmul fast float %4107, %4106
  %4112 = fmul fast float %4108, %4106
  %4113 = fmul fast float %4109, %4106
  %4114 = fmul fast float %4110, %4106
  %4115 = call float @dx.op.dot2.f32(i32 54, float %4113, float %4114, float %4113, float %4114)  ; Dot2(ax,ay,bx,by)
  %4116 = call float @dx.op.dot2.f32(i32 54, float %4111, float %4112, float %4111, float %4112)  ; Dot2(ax,ay,bx,by)
  %4117 = call float @dx.op.binary.f32(i32 35, float %4116, float %4115)  ; FMax(a,b)
  %4118 = call float @dx.op.unary.f32(i32 23, float %4117)  ; Log(value)
  %4119 = fmul fast float %4118, 5.000000e-01
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4122 = fadd fast float %4121, %4119
  %4123 = call float @dx.op.binary.f32(i32 35, float %4122, float 0.000000e+00)  ; FMax(a,b)
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4126 = fadd fast float %4125, %4123
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 3
  %4129 = fadd fast float %4126, %4128
  %4130 = add i32 %4096, 0
  %4131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4130, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4132 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4131, i32 0)  ; GetDimensions(handle,mipLevel)
  %4133 = extractvalue %dx.types.Dimensions %4132, 0
  %4134 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4133)  ; FirstbitLo(value)
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 1
  %4137 = sub nsw i32 %4136, %4134
  %4138 = sitofp i32 %4137 to float
  %4139 = fsub fast float %4129, %4138
  %4140 = call float @dx.op.binary.f32(i32 35, float %4139, float 0.000000e+00)  ; FMax(a,b)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4131, %dx.types.Handle %47, float %4102, float %4104, float %4092, float undef, i32 0, i32 0, i32 undef, float %4140)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = fcmp ule float %4142, 0x3FE0101020000000
  %4144 = extractvalue %dx.types.CBufRet.i32 %4135, 0
  %4145 = and i32 %4144, 128
  %4146 = icmp ne i32 %4145, 0
  %4147 = and i1 %4143, %4146
  br i1 %4147, label %4298, label %4148

; <label>:4148                                    ; preds = %4082
  %4149 = add i32 %4083, 20
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = add i32 %4083, 24
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = add i32 %4083, 40
  %4156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = add i32 %4083, 96
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 2
  %4163 = fmul fast float %4162, %4102
  %4164 = fmul fast float %4162, %4104
  %4165 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4166 = fadd fast float %4163, %4165
  %4167 = fadd fast float %4164, %4165
  %4168 = add i32 %4160, 0
  %4169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4170 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4169, i32 0)  ; GetDimensions(handle,mipLevel)
  %4171 = extractvalue %dx.types.Dimensions %4170, 0
  %4172 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4171)  ; FirstbitLo(value)
  %4173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.i32 %4173, 1
  %4175 = sub nsw i32 %4174, %4172
  %4176 = sitofp i32 %4175 to float
  %4177 = fsub fast float %4126, %4176
  %4178 = call float @dx.op.binary.f32(i32 35, float %4177, float 0.000000e+00)  ; FMax(a,b)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4169, %dx.types.Handle %47, float %4166, float %4167, float %4157, float undef, i32 0, i32 0, i32 undef, float %4178)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = fmul fast float %4180, %4151
  %4182 = fadd fast float %4181, %4154
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4191 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4192 = fadd fast float %4188, %4049
  %4193 = fadd fast float %4190, %4050
  %4194 = fadd fast float %4182, %4191
  %4195 = fmul fast float %4192, %4184
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4193, float %4185, float %4195)  ; FMad(a,b,c)
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4186, float %4196)  ; FMad(a,b,c)
  %4198 = fsub fast float %4197, %4191
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4201 = fsub fast float %4198, %4200
  %4202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.i32 %4202, 0
  %4204 = call i32 @dx.op.binary.i32(i32 40, i32 %4080, i32 %4203)  ; UMin(a,b)
  %4205 = mul i32 %4204, 36
  %4206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.i32 %4206, 0
  %4208 = add i32 %4205, 4
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4211 = fmul fast float %4210, %4102
  %4212 = fmul fast float %4210, %4104
  %4213 = extractvalue %dx.types.CBufRet.f32 %4209, 1
  %4214 = fadd fast float %4211, %4213
  %4215 = fadd fast float %4212, %4213
  %4216 = icmp eq i32 %4207, 0
  br i1 %4216, label %4285, label %4217

; <label>:4217                                    ; preds = %4148
  br label %4218

; <label>:4218                                    ; preds = %4275, %4217
  %4219 = phi float [ %4276, %4275 ], [ 0.000000e+00, %4217 ]
  %4220 = phi float [ %4277, %4275 ], [ 0.000000e+00, %4217 ]
  %4221 = phi float [ %4278, %4275 ], [ 0.000000e+00, %4217 ]
  %4222 = phi float [ %4279, %4275 ], [ 0.000000e+00, %4217 ]
  %4223 = phi float [ %4280, %4275 ], [ 0.000000e+00, %4217 ]
  %4224 = phi float [ %4281, %4275 ], [ 0.000000e+00, %4217 ]
  %4225 = phi i32 [ %4282, %4275 ], [ 0, %4217 ]
  %4226 = shl i32 %4225, 2
  %4227 = add i32 %4093, %4226
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = add i32 %4097, %4226
  %4231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.i32 %4231, 0
  %4233 = add i32 %4232, 0
  %4234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4233, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4235 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4234, i32 0)  ; GetDimensions(handle,mipLevel)
  %4236 = extractvalue %dx.types.Dimensions %4235, 0
  %4237 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4236)  ; FirstbitLo(value)
  %4238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.i32 %4238, 1
  %4240 = sub nsw i32 %4239, %4237
  %4241 = sitofp i32 %4240 to float
  %4242 = fsub fast float %4126, %4241
  %4243 = call float @dx.op.binary.f32(i32 35, float %4242, float 0.000000e+00)  ; FMax(a,b)
  %4244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4234, %dx.types.Handle %47, float %4214, float %4215, float %4229, float undef, i32 0, i32 0, i32 undef, float %4243)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = fcmp fast ogt float %4245, 0.000000e+00
  br i1 %4246, label %4247, label %4275

; <label>:4247                                    ; preds = %4218
  %4248 = add i32 %4208, %4226
  %4249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.i32 %4249, 0
  %4251 = and i32 %4250, 32767
  %4252 = mul nuw nsw i32 %4251, 928
  %4253 = add nuw nsw i32 %4252, 48
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = add nuw nsw i32 %4252, 60
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4263 = fmul fast float %4255, %4245
  %4264 = fmul fast float %4256, %4245
  %4265 = fmul fast float %4257, %4245
  %4266 = fadd fast float %4263, %4219
  %4267 = fadd fast float %4264, %4220
  %4268 = fadd fast float %4265, %4221
  %4269 = fmul fast float %4260, %4245
  %4270 = fmul fast float %4261, %4245
  %4271 = fmul fast float %4262, %4245
  %4272 = fadd fast float %4269, %4222
  %4273 = fadd fast float %4270, %4223
  %4274 = fadd fast float %4271, %4224
  br label %4275

; <label>:4275                                    ; preds = %4247, %4218
  %4276 = phi float [ %4266, %4247 ], [ %4219, %4218 ]
  %4277 = phi float [ %4267, %4247 ], [ %4220, %4218 ]
  %4278 = phi float [ %4268, %4247 ], [ %4221, %4218 ]
  %4279 = phi float [ %4272, %4247 ], [ %4222, %4218 ]
  %4280 = phi float [ %4273, %4247 ], [ %4223, %4218 ]
  %4281 = phi float [ %4274, %4247 ], [ %4224, %4218 ]
  %4282 = add nuw i32 %4225, 1
  %4283 = icmp eq i32 %4282, %4207
  br i1 %4283, label %4284, label %4218

; <label>:4284                                    ; preds = %4275
  br label %4285

; <label>:4285                                    ; preds = %4284, %4148
  %4286 = phi float [ 0.000000e+00, %4148 ], [ %4276, %4284 ]
  %4287 = phi float [ 0.000000e+00, %4148 ], [ %4277, %4284 ]
  %4288 = phi float [ 0.000000e+00, %4148 ], [ %4278, %4284 ]
  %4289 = phi float [ 0.000000e+00, %4148 ], [ %4279, %4284 ]
  %4290 = phi float [ 0.000000e+00, %4148 ], [ %4280, %4284 ]
  %4291 = phi float [ 0.000000e+00, %4148 ], [ %4281, %4284 ]
  %4292 = fadd fast float %4289, %4286
  %4293 = fmul fast float %4292, 0x3F847AE140000000
  %4294 = fadd fast float %4290, %4287
  %4295 = fmul fast float %4294, 0x3F847AE140000000
  %4296 = fadd fast float %4291, %4288
  %4297 = fmul fast float %4296, 0x3F847AE140000000
  br label %4298

; <label>:4298                                    ; preds = %4285, %4082, %4027, %4024, %3995, %3957
  %4299 = phi float [ %4009, %3995 ], [ -1.310720e+05, %3957 ], [ %4201, %4285 ], [ -1.310720e+05, %4027 ], [ -1.310720e+05, %4082 ], [ -1.310720e+05, %4024 ]
  %4300 = phi float [ %4019, %3995 ], [ 0.000000e+00, %3957 ], [ %4293, %4285 ], [ 0.000000e+00, %4027 ], [ 0.000000e+00, %4082 ], [ 0.000000e+00, %4024 ]
  %4301 = phi float [ %4021, %3995 ], [ 0.000000e+00, %3957 ], [ %4295, %4285 ], [ 0.000000e+00, %4027 ], [ 0.000000e+00, %4082 ], [ 0.000000e+00, %4024 ]
  %4302 = phi float [ %4023, %3995 ], [ 0.000000e+00, %3957 ], [ %4297, %4285 ], [ 0.000000e+00, %4027 ], [ 0.000000e+00, %4082 ], [ 0.000000e+00, %4024 ]
  %4303 = phi i1 [ true, %3995 ], [ false, %3957 ], [ true, %4285 ], [ false, %4027 ], [ false, %4082 ], [ false, %4024 ]
  %4304 = and i32 %247, 3
  %4305 = icmp eq i32 %4304, 1
  %4306 = select i1 %4305, float 1.000000e+00, float 0.000000e+00
  %4307 = fsub fast float %4299, %198
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = select i1 %4303, float %4308, float 1.000000e+00
  %4310 = fmul fast float %4309, %4306
  %4311 = icmp eq i32 %4304, 3
  %4312 = select i1 %4311, float 1.000000e+00, float %4310
  %4313 = call float @dx.op.binary.f32(i32 35, float %3899, float %4312)  ; FMax(a,b)
  %4314 = fcmp fast olt float %4312, 1.000000e+00
  %4315 = fcmp uge float %73, 0.000000e+00
  %4316 = and i1 %4315, %4314
  br i1 %4316, label %4317, label %4327

; <label>:4317                                    ; preds = %4298
  %4318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.ResRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.ResRet.f32 %4318, 2
  %4322 = fadd fast float %4319, %4313
  %4323 = fcmp ule float %72, 0.000000e+00
  %4324 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = select i1 %4323, float %4324, float 1.000000e+00
  %4326 = fmul fast float %4325, %4321
  br label %4327

; <label>:4327                                    ; preds = %4317, %4298
  %4328 = phi float [ %4322, %4317 ], [ %4313, %4298 ]
  %4329 = phi float [ %4320, %4317 ], [ 0.000000e+00, %4298 ]
  %4330 = phi float [ %4326, %4317 ], [ 0.000000e+00, %4298 ]
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = fcmp fast une float %4332, 0.000000e+00
  %4335 = fcmp fast une float %4333, 0.000000e+00
  %4336 = or i1 %4334, %4335
  br i1 %4336, label %4337, label %4896

; <label>:4337                                    ; preds = %4327
  br i1 %4334, label %4338, label %4611

; <label>:4338                                    ; preds = %4337
  %4339 = call float @dx.op.unary.f32(i32 23, float %3896)  ; Log(value)
  %4340 = fmul fast float %4339, 4.000000e+00
  %4341 = call float @dx.op.unary.f32(i32 21, float %4340)  ; Exp(value)
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = fmul fast float %4343, %60
  %4345 = fmul fast float %4343, %61
  %4346 = fmul fast float %4343, %62
  %4347 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4348 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4349 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4350 = call float @dx.op.unary.f32(i32 23, float %4347)  ; Log(value)
  %4351 = call float @dx.op.unary.f32(i32 23, float %4348)  ; Log(value)
  %4352 = call float @dx.op.unary.f32(i32 23, float %4349)  ; Log(value)
  %4353 = fmul fast float %4350, 4.000000e+00
  %4354 = fmul fast float %4351, 4.000000e+00
  %4355 = fmul fast float %4352, 4.000000e+00
  %4356 = call float @dx.op.unary.f32(i32 21, float %4353)  ; Exp(value)
  %4357 = call float @dx.op.unary.f32(i32 21, float %4354)  ; Exp(value)
  %4358 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4359 = fadd fast float %4357, %4356
  %4360 = fadd fast float %4359, %4358
  %4361 = fdiv fast float 1.000000e+00, %4360
  %4362 = fmul fast float %4361, %4356
  %4363 = fcmp fast ogt float %69, 0.000000e+00
  %4364 = fcmp fast ogt float %70, 0.000000e+00
  %4365 = fcmp fast ogt float %71, 0.000000e+00
  %4366 = fcmp fast olt float %69, 0.000000e+00
  %4367 = fcmp fast olt float %70, 0.000000e+00
  %4368 = fcmp fast olt float %71, 0.000000e+00
  %4369 = zext i1 %4363 to i32
  %4370 = zext i1 %4364 to i32
  %4371 = zext i1 %4365 to i32
  %4372 = zext i1 %4366 to i32
  %4373 = zext i1 %4367 to i32
  %4374 = zext i1 %4368 to i32
  %4375 = sub nsw i32 %4369, %4372
  %4376 = sub nsw i32 %4370, %4373
  %4377 = sub nsw i32 %4371, %4374
  %4378 = call float @dx.op.unary.f32(i32 83, float %4344)  ; DerivCoarseX(value)
  %4379 = call float @dx.op.unary.f32(i32 83, float %4345)  ; DerivCoarseX(value)
  %4380 = call float @dx.op.unary.f32(i32 83, float %4346)  ; DerivCoarseX(value)
  %4381 = call float @dx.op.unary.f32(i32 84, float %4344)  ; DerivCoarseY(value)
  %4382 = call float @dx.op.unary.f32(i32 84, float %4345)  ; DerivCoarseY(value)
  %4383 = call float @dx.op.unary.f32(i32 84, float %4346)  ; DerivCoarseY(value)
  %4384 = fcmp fast ole float %279, %4362
  %4385 = fmul fast float %4361, %4359
  %4386 = fcmp fast ole float %279, %4385
  %4387 = select i1 %4386, float %4346, float %4344
  %4388 = select i1 %4386, float %4344, float %4345
  %4389 = select i1 %4384, float %4345, float %4387
  %4390 = select i1 %4384, float %4346, float %4388
  %4391 = select i1 %4386, float %4380, float %4378
  %4392 = select i1 %4386, float %4378, float %4379
  %4393 = select i1 %4384, float %4379, float %4391
  %4394 = select i1 %4384, float %4380, float %4392
  %4395 = select i1 %4386, float %4383, float %4381
  %4396 = select i1 %4386, float %4381, float %4382
  %4397 = select i1 %4384, float %4382, float %4395
  %4398 = select i1 %4384, float %4383, float %4396
  %4399 = call float @dx.op.unary.f32(i32 27, float %4389)  ; Round_ni(value)
  %4400 = call float @dx.op.unary.f32(i32 27, float %4390)  ; Round_ni(value)
  %4401 = fptosi float %4399 to i32
  %4402 = fptosi float %4400 to i32
  %4403 = xor i32 %4402, %4401
  %4404 = sitofp i32 %4403 to float
  %4405 = fptosi float %4404 to i32
  %4406 = sitofp i32 %4405 to float
  %4407 = fmul fast float %4406, 0x3FE3C6EF40000000
  %4408 = frem fast float %4399, 2.560000e+02
  %4409 = frem fast float %4400, 2.560000e+02
  %4410 = fptoui float %4408 to i32
  %4411 = fptoui float %4409 to i32
  %4412 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4410, i32 %4411, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.ResRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.ResRet.f32 %4412, 2
  %4416 = fadd fast float %4413, %4407
  %4417 = fadd fast float %4414, %4407
  %4418 = fadd fast float %4415, %4407
  %4419 = call float @dx.op.unary.f32(i32 22, float %4416)  ; Frc(value)
  %4420 = call float @dx.op.unary.f32(i32 22, float %4417)  ; Frc(value)
  %4421 = call float @dx.op.unary.f32(i32 22, float %4418)  ; Frc(value)
  %4422 = fmul fast float %4421, 0x401921FB60000000
  %4423 = call float @dx.op.unary.f32(i32 13, float %4422)  ; Sin(value)
  %4424 = call float @dx.op.unary.f32(i32 12, float %4422)  ; Cos(value)
  %4425 = fsub fast float -0.000000e+00, %4424
  %4426 = fmul fast float %4424, %4389
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4390, float %4426)  ; FMad(a,b,c)
  %4428 = fmul fast float %4423, %4389
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4425, float %4390, float %4428)  ; FMad(a,b,c)
  %4430 = fadd fast float %4427, %4419
  %4431 = fadd fast float %4429, %4420
  %4432 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4433 = bitcast float %4432 to i32
  %4434 = icmp eq i32 %4433, 0
  br i1 %4434, label %4473, label %4435

; <label>:4435                                    ; preds = %4338
  %4436 = add i32 %4433, 0
  %4437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4437, %dx.types.Handle %110, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float %4393, float %4394, float undef, float %4397, float %4398, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4442 = extractvalue %dx.types.CBufRet.f32 %4440, 2
  %4443 = fsub fast float 1.000000e+00, %4332
  %4444 = call float @dx.op.binary.f32(i32 35, float %4443, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4445 = bitcast float %4332 to i32
  %4446 = sitofp i32 %4445 to float
  %4447 = fadd fast float %4446, 0xC1CFBF8940000000
  %4448 = fmul fast float %4442, %4447
  %4449 = fadd fast float %4448, 0x41CFBF8940000000
  %4450 = fptosi float %4449 to i32
  %4451 = bitcast i32 %4450 to float
  %4452 = bitcast float %4444 to i32
  %4453 = sitofp i32 %4452 to float
  %4454 = fadd fast float %4453, 0xC1CFBF8940000000
  %4455 = fmul fast float %4454, %4442
  %4456 = fadd fast float %4455, 0x41CFBF8940000000
  %4457 = fptosi float %4456 to i32
  %4458 = bitcast i32 %4457 to float
  %4459 = fmul fast float %4451, %4441
  %4460 = fmul fast float %4458, %4441
  %4461 = fsub fast float %4444, %4459
  %4462 = fadd fast float %4460, %4444
  %4463 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4465 = fsub fast float %4439, %4463
  %4466 = fsub fast float %4464, %4463
  %4467 = bitcast float %4466 to i32
  %4468 = sub nsw i32 2129859010, %4467
  %4469 = bitcast i32 %4468 to float
  %4470 = fmul fast float %4469, %4465
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fcmp fast olt float %4471, 0x3F70101020000000
  br i1 %4472, label %4611, label %4473

; <label>:4473                                    ; preds = %4435, %4338
  %4474 = phi float [ %4471, %4435 ], [ %4332, %4338 ]
  %4475 = fmul fast float %4474, %4341
  %4476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.i32 %4476, 1
  %4478 = extractvalue %dx.types.CBufRet.i32 %4476, 0
  %4479 = add i32 %4478, 0
  %4480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4481 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4480, %dx.types.Handle %109, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float %4393, float %4394, float undef, float %4397, float %4398, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = extractvalue %dx.types.ResRet.f32 %4481, 3
  %4486 = and i32 %4477, 255
  %4487 = uitofp i32 %4486 to float
  %4488 = lshr i32 %4477, 8
  %4489 = and i32 %4488, 255
  %4490 = uitofp i32 %4489 to float
  %4491 = fmul fast float %4485, %4487
  %4492 = fadd fast float %4491, %4490
  %4493 = fmul fast float %4492, 0x3F70101000000000
  %4494 = fadd fast float %4493, 0xBFB99999A0000000
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fmul fast float %4495, 0x3FF1C71C80000000
  %4497 = call float @dx.op.binary.f32(i32 36, float %4493, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4498 = fsub fast float 1.000000e+00, %4496
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = fmul fast float %4499, %4482
  %4501 = fmul fast float %4499, %4483
  %4502 = fmul fast float %4499, %4484
  %4503 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = fmul fast float %4496, %4482
  %4507 = fmul fast float %4496, %4483
  %4508 = fmul fast float %4496, %4484
  %4509 = fadd fast float %4506, %4497
  %4510 = fadd fast float %4507, %4497
  %4511 = fadd fast float %4508, %4497
  %4512 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.i32 %4515, 3
  %4517 = extractvalue %dx.types.CBufRet.i32 %4515, 2
  %4518 = add i32 %4517, 0
  %4519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4520 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4519, %dx.types.Handle %109, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float %4393, float %4394, float undef, float %4397, float %4398, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4521 = extractvalue %dx.types.ResRet.f32 %4520, 0
  %4522 = extractvalue %dx.types.ResRet.f32 %4520, 1
  %4523 = extractvalue %dx.types.ResRet.f32 %4520, 2
  %4524 = extractvalue %dx.types.ResRet.f32 %4520, 3
  %4525 = and i32 %4516, 255
  %4526 = uitofp i32 %4525 to float
  %4527 = lshr i32 %4516, 8
  %4528 = and i32 %4527, 255
  %4529 = uitofp i32 %4528 to float
  %4530 = lshr i32 %4516, 16
  %4531 = and i32 %4530, 255
  %4532 = uitofp i32 %4531 to float
  %4533 = fmul fast float %4532, 0x3F70101000000000
  %4534 = fmul fast float %4521, %4526
  %4535 = fadd fast float %4534, %4529
  %4536 = fmul fast float %4535, 0x3F70101000000000
  %4537 = fadd fast float %4522, -5.000000e-01
  %4538 = fadd fast float %4524, -5.000000e-01
  %4539 = fmul fast float %4537, %4533
  %4540 = fmul fast float %4538, %4533
  %4541 = fadd fast float %4539, 5.000000e-01
  %4542 = fadd fast float %4540, 5.000000e-01
  %4543 = fmul fast float %4541, 2.000000e+00
  %4544 = fadd fast float %4543, -1.000000e+00
  %4545 = fmul fast float %4542, 2.000000e+00
  %4546 = fadd fast float %4545, -1.000000e+00
  %4547 = fadd fast float %4544, %4546
  %4548 = fmul fast float %4547, 5.000000e-01
  %4549 = fsub fast float %4544, %4546
  %4550 = fmul fast float %4549, 5.000000e-01
  %4551 = call float @dx.op.unary.f32(i32 6, float %4548)  ; FAbs(value)
  %4552 = fsub fast float 1.000000e+00, %4551
  %4553 = call float @dx.op.unary.f32(i32 6, float %4550)  ; FAbs(value)
  %4554 = fsub fast float %4552, %4553
  %4555 = call float @dx.op.dot3.f32(i32 55, float %4548, float %4550, float %4554, float %4548, float %4550, float %4554)  ; Dot3(ax,ay,az,bx,by,bz)
  %4556 = call float @dx.op.unary.f32(i32 25, float %4555)  ; Rsqrt(value)
  %4557 = fmul fast float %4548, %4556
  %4558 = fmul fast float %4550, %4556
  %4559 = select i1 %4386, i32 %4376, i32 %4377
  %4560 = select i1 %4384, i32 %4375, i32 %4559
  %4561 = sitofp i32 %4560 to float
  %4562 = fmul fast float %4554, %4561
  %4563 = fmul fast float %4562, %4556
  %4564 = select i1 %4386, float %4563, float %4558
  %4565 = select i1 %4386, float %4558, float %4563
  %4566 = select i1 %4384, float %4563, float %4557
  %4567 = select i1 %4384, float %4558, float %4564
  %4568 = select i1 %4384, float %4557, float %4565
  %4569 = fsub fast float %4503, %3936
  %4570 = fsub fast float %4504, %3937
  %4571 = fsub fast float %4505, %3938
  %4572 = fmul fast float %4569, %4475
  %4573 = fmul fast float %4570, %4475
  %4574 = fmul fast float %4571, %4475
  %4575 = fadd fast float %4572, %3936
  %4576 = fadd fast float %4573, %3937
  %4577 = fadd fast float %4574, %3938
  %4578 = fsub fast float %4512, %3921
  %4579 = fsub fast float %4513, %3922
  %4580 = fsub fast float %4514, %3923
  %4581 = fmul fast float %4578, %4475
  %4582 = fmul fast float %4579, %4475
  %4583 = fmul fast float %4580, %4475
  %4584 = fadd fast float %4581, %3921
  %4585 = fadd fast float %4582, %3922
  %4586 = fadd fast float %4583, %3923
  %4587 = fadd fast float %4566, %3884
  %4588 = fadd fast float %4567, %3885
  %4589 = fadd fast float %4568, %3886
  %4590 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4588, float %4589, float %4587, float %4588, float %4589)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = call float @dx.op.unary.f32(i32 25, float %4590)  ; Rsqrt(value)
  %4592 = fmul fast float %4587, %4591
  %4593 = fmul fast float %4588, %4591
  %4594 = fmul fast float %4589, %4591
  %4595 = fsub fast float %4592, %3884
  %4596 = fsub fast float %4593, %3885
  %4597 = fsub fast float %4594, %3886
  %4598 = fmul fast float %4595, %4475
  %4599 = fmul fast float %4596, %4475
  %4600 = fmul fast float %4597, %4475
  %4601 = fadd fast float %4598, %3884
  %4602 = fadd fast float %4599, %3885
  %4603 = fadd fast float %4600, %3886
  %4604 = call float @dx.op.binary.f32(i32 36, float %3896, float %4523)  ; FMin(a,b)
  %4605 = fsub fast float %4604, %3896
  %4606 = fmul fast float %4605, %4475
  %4607 = fadd fast float %4606, %3896
  %4608 = fsub fast float %4536, %3924
  %4609 = fmul fast float %4608, %4475
  %4610 = fadd fast float %4609, %3924
  br label %4611

; <label>:4611                                    ; preds = %4473, %4435, %4337
  %4612 = phi float [ %4584, %4473 ], [ %3921, %4435 ], [ %3921, %4337 ]
  %4613 = phi float [ %4585, %4473 ], [ %3922, %4435 ], [ %3922, %4337 ]
  %4614 = phi float [ %4586, %4473 ], [ %3923, %4435 ], [ %3923, %4337 ]
  %4615 = phi float [ %4601, %4473 ], [ %3884, %4435 ], [ %3884, %4337 ]
  %4616 = phi float [ %4602, %4473 ], [ %3885, %4435 ], [ %3885, %4337 ]
  %4617 = phi float [ %4603, %4473 ], [ %3886, %4435 ], [ %3886, %4337 ]
  %4618 = phi float [ %4575, %4473 ], [ %3936, %4435 ], [ %3936, %4337 ]
  %4619 = phi float [ %4576, %4473 ], [ %3937, %4435 ], [ %3937, %4337 ]
  %4620 = phi float [ %4577, %4473 ], [ %3938, %4435 ], [ %3938, %4337 ]
  %4621 = phi float [ %4610, %4473 ], [ %3924, %4435 ], [ %3924, %4337 ]
  %4622 = phi float [ %4607, %4473 ], [ %3896, %4435 ], [ %3896, %4337 ]
  br i1 %4335, label %4623, label %4896

; <label>:4623                                    ; preds = %4611
  %4624 = call float @dx.op.unary.f32(i32 23, float %4622)  ; Log(value)
  %4625 = fmul fast float %4624, 4.000000e+00
  %4626 = call float @dx.op.unary.f32(i32 21, float %4625)  ; Exp(value)
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4629 = fmul fast float %4628, %60
  %4630 = fmul fast float %4628, %61
  %4631 = fmul fast float %4628, %62
  %4632 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4633 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4634 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4635 = call float @dx.op.unary.f32(i32 23, float %4632)  ; Log(value)
  %4636 = call float @dx.op.unary.f32(i32 23, float %4633)  ; Log(value)
  %4637 = call float @dx.op.unary.f32(i32 23, float %4634)  ; Log(value)
  %4638 = fmul fast float %4635, 4.000000e+00
  %4639 = fmul fast float %4636, 4.000000e+00
  %4640 = fmul fast float %4637, 4.000000e+00
  %4641 = call float @dx.op.unary.f32(i32 21, float %4638)  ; Exp(value)
  %4642 = call float @dx.op.unary.f32(i32 21, float %4639)  ; Exp(value)
  %4643 = call float @dx.op.unary.f32(i32 21, float %4640)  ; Exp(value)
  %4644 = fadd fast float %4642, %4641
  %4645 = fadd fast float %4644, %4643
  %4646 = fdiv fast float 1.000000e+00, %4645
  %4647 = fmul fast float %4646, %4641
  %4648 = fcmp fast ogt float %69, 0.000000e+00
  %4649 = fcmp fast ogt float %70, 0.000000e+00
  %4650 = fcmp fast ogt float %71, 0.000000e+00
  %4651 = fcmp fast olt float %69, 0.000000e+00
  %4652 = fcmp fast olt float %70, 0.000000e+00
  %4653 = fcmp fast olt float %71, 0.000000e+00
  %4654 = zext i1 %4648 to i32
  %4655 = zext i1 %4649 to i32
  %4656 = zext i1 %4650 to i32
  %4657 = zext i1 %4651 to i32
  %4658 = zext i1 %4652 to i32
  %4659 = zext i1 %4653 to i32
  %4660 = sub nsw i32 %4654, %4657
  %4661 = sub nsw i32 %4655, %4658
  %4662 = sub nsw i32 %4656, %4659
  %4663 = call float @dx.op.unary.f32(i32 83, float %4629)  ; DerivCoarseX(value)
  %4664 = call float @dx.op.unary.f32(i32 83, float %4630)  ; DerivCoarseX(value)
  %4665 = call float @dx.op.unary.f32(i32 83, float %4631)  ; DerivCoarseX(value)
  %4666 = call float @dx.op.unary.f32(i32 84, float %4629)  ; DerivCoarseY(value)
  %4667 = call float @dx.op.unary.f32(i32 84, float %4630)  ; DerivCoarseY(value)
  %4668 = call float @dx.op.unary.f32(i32 84, float %4631)  ; DerivCoarseY(value)
  %4669 = fcmp fast ole float %279, %4647
  %4670 = fmul fast float %4646, %4644
  %4671 = fcmp fast ole float %279, %4670
  %4672 = select i1 %4671, float %4631, float %4629
  %4673 = select i1 %4671, float %4629, float %4630
  %4674 = select i1 %4669, float %4630, float %4672
  %4675 = select i1 %4669, float %4631, float %4673
  %4676 = select i1 %4671, float %4665, float %4663
  %4677 = select i1 %4671, float %4663, float %4664
  %4678 = select i1 %4669, float %4664, float %4676
  %4679 = select i1 %4669, float %4665, float %4677
  %4680 = select i1 %4671, float %4668, float %4666
  %4681 = select i1 %4671, float %4666, float %4667
  %4682 = select i1 %4669, float %4667, float %4680
  %4683 = select i1 %4669, float %4668, float %4681
  %4684 = call float @dx.op.unary.f32(i32 27, float %4674)  ; Round_ni(value)
  %4685 = call float @dx.op.unary.f32(i32 27, float %4675)  ; Round_ni(value)
  %4686 = fptosi float %4684 to i32
  %4687 = fptosi float %4685 to i32
  %4688 = xor i32 %4687, %4686
  %4689 = sitofp i32 %4688 to float
  %4690 = fptosi float %4689 to i32
  %4691 = sitofp i32 %4690 to float
  %4692 = fmul fast float %4691, 0x3FE3C6EF40000000
  %4693 = frem fast float %4684, 2.560000e+02
  %4694 = frem fast float %4685, 2.560000e+02
  %4695 = fptoui float %4693 to i32
  %4696 = fptoui float %4694 to i32
  %4697 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4695, i32 %4696, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.ResRet.f32 %4697, 2
  %4701 = fadd fast float %4698, %4692
  %4702 = fadd fast float %4699, %4692
  %4703 = fadd fast float %4700, %4692
  %4704 = call float @dx.op.unary.f32(i32 22, float %4701)  ; Frc(value)
  %4705 = call float @dx.op.unary.f32(i32 22, float %4702)  ; Frc(value)
  %4706 = call float @dx.op.unary.f32(i32 22, float %4703)  ; Frc(value)
  %4707 = fmul fast float %4706, 0x401921FB60000000
  %4708 = call float @dx.op.unary.f32(i32 13, float %4707)  ; Sin(value)
  %4709 = call float @dx.op.unary.f32(i32 12, float %4707)  ; Cos(value)
  %4710 = fsub fast float -0.000000e+00, %4709
  %4711 = fmul fast float %4709, %4674
  %4712 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4675, float %4711)  ; FMad(a,b,c)
  %4713 = fmul fast float %4708, %4674
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %4710, float %4675, float %4713)  ; FMad(a,b,c)
  %4715 = fadd fast float %4712, %4704
  %4716 = fadd fast float %4714, %4705
  %4717 = extractvalue %dx.types.CBufRet.f32 %4627, 3
  %4718 = bitcast float %4717 to i32
  %4719 = icmp eq i32 %4718, 0
  br i1 %4719, label %4758, label %4720

; <label>:4720                                    ; preds = %4623
  %4721 = add i32 %4718, 0
  %4722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4722, %dx.types.Handle %110, float %4715, float %4716, float undef, float undef, i32 0, i32 0, i32 undef, float %4678, float %4679, float undef, float %4682, float %4683, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 0
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4727 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4728 = fsub fast float 1.000000e+00, %4333
  %4729 = call float @dx.op.binary.f32(i32 35, float %4728, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4730 = bitcast float %4333 to i32
  %4731 = sitofp i32 %4730 to float
  %4732 = fadd fast float %4731, 0xC1CFBF8940000000
  %4733 = fmul fast float %4727, %4732
  %4734 = fadd fast float %4733, 0x41CFBF8940000000
  %4735 = fptosi float %4734 to i32
  %4736 = bitcast i32 %4735 to float
  %4737 = bitcast float %4729 to i32
  %4738 = sitofp i32 %4737 to float
  %4739 = fadd fast float %4738, 0xC1CFBF8940000000
  %4740 = fmul fast float %4739, %4727
  %4741 = fadd fast float %4740, 0x41CFBF8940000000
  %4742 = fptosi float %4741 to i32
  %4743 = bitcast i32 %4742 to float
  %4744 = fmul fast float %4736, %4726
  %4745 = fmul fast float %4743, %4726
  %4746 = fsub fast float %4729, %4744
  %4747 = fadd fast float %4745, %4729
  %4748 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4750 = fsub fast float %4724, %4748
  %4751 = fsub fast float %4749, %4748
  %4752 = bitcast float %4751 to i32
  %4753 = sub nsw i32 2129859010, %4752
  %4754 = bitcast i32 %4753 to float
  %4755 = fmul fast float %4754, %4750
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fcmp fast olt float %4756, 0x3F70101020000000
  br i1 %4757, label %4896, label %4758

; <label>:4758                                    ; preds = %4720, %4623
  %4759 = phi float [ %4756, %4720 ], [ %4333, %4623 ]
  %4760 = fmul fast float %4759, %4626
  %4761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.i32 %4761, 1
  %4763 = extractvalue %dx.types.CBufRet.i32 %4761, 0
  %4764 = add i32 %4763, 0
  %4765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4766 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4765, %dx.types.Handle %109, float %4715, float %4716, float undef, float undef, i32 0, i32 0, i32 undef, float %4678, float %4679, float undef, float %4682, float %4683, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4767 = extractvalue %dx.types.ResRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.ResRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.ResRet.f32 %4766, 2
  %4770 = extractvalue %dx.types.ResRet.f32 %4766, 3
  %4771 = and i32 %4762, 255
  %4772 = uitofp i32 %4771 to float
  %4773 = lshr i32 %4762, 8
  %4774 = and i32 %4773, 255
  %4775 = uitofp i32 %4774 to float
  %4776 = fmul fast float %4770, %4772
  %4777 = fadd fast float %4776, %4775
  %4778 = fmul fast float %4777, 0x3F70101000000000
  %4779 = fadd fast float %4778, 0xBFB99999A0000000
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = fmul fast float %4780, 0x3FF1C71C80000000
  %4782 = call float @dx.op.binary.f32(i32 36, float %4778, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4783 = fsub fast float 1.000000e+00, %4781
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = fmul fast float %4784, %4767
  %4786 = fmul fast float %4784, %4768
  %4787 = fmul fast float %4784, %4769
  %4788 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4789 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = fmul fast float %4781, %4767
  %4792 = fmul fast float %4781, %4768
  %4793 = fmul fast float %4781, %4769
  %4794 = fadd fast float %4791, %4782
  %4795 = fadd fast float %4792, %4782
  %4796 = fadd fast float %4793, %4782
  %4797 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.i32 %4800, 3
  %4802 = extractvalue %dx.types.CBufRet.i32 %4800, 2
  %4803 = add i32 %4802, 0
  %4804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4804, %dx.types.Handle %109, float %4715, float %4716, float undef, float undef, i32 0, i32 0, i32 undef, float %4678, float %4679, float undef, float %4682, float %4683, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.ResRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.ResRet.f32 %4805, 2
  %4809 = extractvalue %dx.types.ResRet.f32 %4805, 3
  %4810 = and i32 %4801, 255
  %4811 = uitofp i32 %4810 to float
  %4812 = lshr i32 %4801, 8
  %4813 = and i32 %4812, 255
  %4814 = uitofp i32 %4813 to float
  %4815 = lshr i32 %4801, 16
  %4816 = and i32 %4815, 255
  %4817 = uitofp i32 %4816 to float
  %4818 = fmul fast float %4817, 0x3F70101000000000
  %4819 = fmul fast float %4806, %4811
  %4820 = fadd fast float %4819, %4814
  %4821 = fmul fast float %4820, 0x3F70101000000000
  %4822 = fadd fast float %4807, -5.000000e-01
  %4823 = fadd fast float %4809, -5.000000e-01
  %4824 = fmul fast float %4822, %4818
  %4825 = fmul fast float %4823, %4818
  %4826 = fadd fast float %4824, 5.000000e-01
  %4827 = fadd fast float %4825, 5.000000e-01
  %4828 = fmul fast float %4826, 2.000000e+00
  %4829 = fadd fast float %4828, -1.000000e+00
  %4830 = fmul fast float %4827, 2.000000e+00
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = fadd fast float %4829, %4831
  %4833 = fmul fast float %4832, 5.000000e-01
  %4834 = fsub fast float %4829, %4831
  %4835 = fmul fast float %4834, 5.000000e-01
  %4836 = call float @dx.op.unary.f32(i32 6, float %4833)  ; FAbs(value)
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = call float @dx.op.unary.f32(i32 6, float %4835)  ; FAbs(value)
  %4839 = fsub fast float %4837, %4838
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4835, float %4839, float %4833, float %4835, float %4839)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 25, float %4840)  ; Rsqrt(value)
  %4842 = fmul fast float %4833, %4841
  %4843 = fmul fast float %4835, %4841
  %4844 = select i1 %4671, i32 %4661, i32 %4662
  %4845 = select i1 %4669, i32 %4660, i32 %4844
  %4846 = sitofp i32 %4845 to float
  %4847 = fmul fast float %4839, %4846
  %4848 = fmul fast float %4847, %4841
  %4849 = select i1 %4671, float %4848, float %4843
  %4850 = select i1 %4671, float %4843, float %4848
  %4851 = select i1 %4669, float %4848, float %4842
  %4852 = select i1 %4669, float %4843, float %4849
  %4853 = select i1 %4669, float %4842, float %4850
  %4854 = fsub fast float %4788, %4618
  %4855 = fsub fast float %4789, %4619
  %4856 = fsub fast float %4790, %4620
  %4857 = fmul fast float %4854, %4760
  %4858 = fmul fast float %4855, %4760
  %4859 = fmul fast float %4856, %4760
  %4860 = fadd fast float %4857, %4618
  %4861 = fadd fast float %4858, %4619
  %4862 = fadd fast float %4859, %4620
  %4863 = fsub fast float %4797, %4612
  %4864 = fsub fast float %4798, %4613
  %4865 = fsub fast float %4799, %4614
  %4866 = fmul fast float %4863, %4760
  %4867 = fmul fast float %4864, %4760
  %4868 = fmul fast float %4865, %4760
  %4869 = fadd fast float %4866, %4612
  %4870 = fadd fast float %4867, %4613
  %4871 = fadd fast float %4868, %4614
  %4872 = fadd fast float %4851, %4615
  %4873 = fadd fast float %4852, %4616
  %4874 = fadd fast float %4853, %4617
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = call float @dx.op.unary.f32(i32 25, float %4875)  ; Rsqrt(value)
  %4877 = fmul fast float %4872, %4876
  %4878 = fmul fast float %4873, %4876
  %4879 = fmul fast float %4874, %4876
  %4880 = fsub fast float %4877, %4615
  %4881 = fsub fast float %4878, %4616
  %4882 = fsub fast float %4879, %4617
  %4883 = fmul fast float %4880, %4760
  %4884 = fmul fast float %4881, %4760
  %4885 = fmul fast float %4882, %4760
  %4886 = fadd fast float %4883, %4615
  %4887 = fadd fast float %4884, %4616
  %4888 = fadd fast float %4885, %4617
  %4889 = call float @dx.op.binary.f32(i32 36, float %4622, float %4808)  ; FMin(a,b)
  %4890 = fsub fast float %4889, %4622
  %4891 = fmul fast float %4890, %4760
  %4892 = fadd fast float %4891, %4622
  %4893 = fsub fast float %4821, %4621
  %4894 = fmul fast float %4893, %4760
  %4895 = fadd fast float %4894, %4621
  br label %4896

; <label>:4896                                    ; preds = %4758, %4720, %4611, %4327
  %4897 = phi float [ %4869, %4758 ], [ %4612, %4720 ], [ %4612, %4611 ], [ %3921, %4327 ]
  %4898 = phi float [ %4870, %4758 ], [ %4613, %4720 ], [ %4613, %4611 ], [ %3922, %4327 ]
  %4899 = phi float [ %4871, %4758 ], [ %4614, %4720 ], [ %4614, %4611 ], [ %3923, %4327 ]
  %4900 = phi float [ %4886, %4758 ], [ %4615, %4720 ], [ %4615, %4611 ], [ %3884, %4327 ]
  %4901 = phi float [ %4887, %4758 ], [ %4616, %4720 ], [ %4616, %4611 ], [ %3885, %4327 ]
  %4902 = phi float [ %4888, %4758 ], [ %4617, %4720 ], [ %4617, %4611 ], [ %3886, %4327 ]
  %4903 = phi float [ %4860, %4758 ], [ %4618, %4720 ], [ %4618, %4611 ], [ %3936, %4327 ]
  %4904 = phi float [ %4861, %4758 ], [ %4619, %4720 ], [ %4619, %4611 ], [ %3937, %4327 ]
  %4905 = phi float [ %4862, %4758 ], [ %4620, %4720 ], [ %4620, %4611 ], [ %3938, %4327 ]
  %4906 = phi float [ %4895, %4758 ], [ %4621, %4720 ], [ %4621, %4611 ], [ %3924, %4327 ]
  %4907 = phi float [ %4892, %4758 ], [ %4622, %4720 ], [ %4622, %4611 ], [ %3896, %4327 ]
  %4908 = fcmp fast une float %4331, 0.000000e+00
  %4909 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = call float @dx.op.unary.f32(i32 25, float %4909)  ; Rsqrt(value)
  br i1 %4908, label %4918, label %4911

; <label>:4911                                    ; preds = %4896
  %4912 = fmul fast float %4910, %196
  %4913 = fmul fast float %4910, %197
  %4914 = fmul fast float %4910, %198
  %4915 = fsub fast float -0.000000e+00, %4912
  %4916 = fsub fast float -0.000000e+00, %4913
  %4917 = fsub fast float -0.000000e+00, %4914
  br label %5085

; <label>:4918                                    ; preds = %4896
  %4919 = fmul fast float %196, %4910
  %4920 = fsub fast float -0.000000e+00, %4919
  %4921 = fmul fast float %197, %4910
  %4922 = fsub fast float -0.000000e+00, %4921
  %4923 = fmul fast float %198, %4910
  %4924 = fsub fast float -0.000000e+00, %4923
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4922, float %4924, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = fmul fast float %4331, 2.500000e+00
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4331, 0x4013FFFFE0000000
  %4929 = fadd fast float %4928, 0xBFFFFFFFE0000000
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4331, 0x4004000020000000
  %4932 = fadd fast float %4931, 0xBFF8000040000000
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fmul fast float %3903, 1.000000e+01
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4935, 2.000000e+00
  %4937 = fsub fast float 3.000000e+00, %4936
  %4938 = fmul fast float %4935, %4935
  %4939 = fmul fast float %4938, %4937
  %4940 = fsub fast float 1.000000e+00, %4939
  %4941 = fsub fast float 0x3FE3333340000000, %4906
  %4942 = fmul fast float %4941, 0x400AAAAAA0000000
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4940, %4943
  %4945 = fmul fast float %4903, 0x3FEA2B8620000000
  %4946 = fmul fast float %4904, 0x3FEA2B8620000000
  %4947 = fmul fast float %4905, 0x3FEA2B8620000000
  %4948 = fadd fast float %4945, 0x3FC81DFBA0000000
  %4949 = fmul fast float %4948, %4903
  %4950 = fadd fast float %4949, 0x3F910E6020000000
  %4951 = fadd fast float %4946, 0x3FC81DFBA0000000
  %4952 = fmul fast float %4951, %4904
  %4953 = fadd fast float %4952, 0x3F910E6020000000
  %4954 = fadd fast float %4947, 0x3FC81DFBA0000000
  %4955 = fmul fast float %4954, %4905
  %4956 = fadd fast float %4955, 0x3F910E6020000000
  %4957 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4960 = fsub fast float %4957, %4903
  %4961 = fsub fast float %4958, %4904
  %4962 = fsub fast float %4959, %4905
  %4963 = fmul fast float %4960, %4927
  %4964 = fmul fast float %4963, %4944
  %4965 = fmul fast float %4961, %4927
  %4966 = fmul fast float %4965, %4944
  %4967 = fmul fast float %4962, %4927
  %4968 = fmul fast float %4967, %4944
  %4969 = fadd fast float %4964, %4903
  %4970 = fadd fast float %4966, %4904
  %4971 = fadd fast float %4968, %4905
  %4972 = fmul fast float %4907, %4907
  %4973 = fmul fast float %4972, %4972
  %4974 = fadd fast float %4930, 1.000000e+00
  %4975 = fsub fast float %4974, %4944
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = call float @dx.op.dot3.f32(i32 55, float %122, float %124, float %126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fsub fast float 1.000000e+00, %4973
  %4980 = call float @dx.op.binary.f32(i32 36, float %4976, float %4979)  ; FMin(a,b)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4982 = call float @dx.op.binary.f32(i32 35, float %4980, float %4981)  ; FMax(a,b)
  %4983 = fadd fast float %4978, 0xBFE4CCCCC0000000
  %4984 = fmul fast float %4983, 0x4006DB6DA0000000
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fmul fast float %4985, 2.000000e+00
  %4987 = fsub fast float 3.000000e+00, %4986
  %4988 = bitcast float %4897 to i32
  %4989 = ashr i32 %4988, 1
  %4990 = add nsw i32 %4989, 532487669
  %4991 = bitcast i32 %4990 to float
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = fmul fast float %4995, 2.000000e+00
  %4997 = bitcast float %4898 to i32
  %4998 = ashr i32 %4997, 1
  %4999 = add nsw i32 %4998, 532487669
  %5000 = bitcast i32 %4999 to float
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = bitcast float %5001 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = fmul fast float %5004, 2.000000e+00
  %5006 = bitcast float %4899 to i32
  %5007 = ashr i32 %5006, 1
  %5008 = add nsw i32 %5007, 532487669
  %5009 = bitcast i32 %5008 to float
  %5010 = fsub fast float 1.000000e+00, %5009
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = fmul fast float %5013, 2.000000e+00
  %5015 = fsub fast float 0x4002A9FBE0000000, %4996
  %5016 = fadd fast float %4996, 0x3FD54FDF00000000
  %5017 = bitcast float %5016 to i32
  %5018 = sub nsw i32 2129859010, %5017
  %5019 = bitcast i32 %5018 to float
  %5020 = fmul fast float %5019, %5015
  %5021 = fmul fast float %5020, %5020
  %5022 = fsub fast float 0x4002A9FBE0000000, %5005
  %5023 = fadd fast float %5005, 0x3FD54FDF00000000
  %5024 = bitcast float %5023 to i32
  %5025 = sub nsw i32 2129859010, %5024
  %5026 = bitcast i32 %5025 to float
  %5027 = fmul fast float %5026, %5022
  %5028 = fmul fast float %5027, %5027
  %5029 = fsub fast float 0x4002A9FBE0000000, %5014
  %5030 = fadd fast float %5014, 0x3FD54FDF00000000
  %5031 = bitcast float %5030 to i32
  %5032 = sub nsw i32 2129859010, %5031
  %5033 = bitcast i32 %5032 to float
  %5034 = fmul fast float %5033, %5029
  %5035 = fmul fast float %5034, %5034
  %5036 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5021)  ; FMax(a,b)
  %5037 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5028)  ; FMax(a,b)
  %5038 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5035)  ; FMax(a,b)
  %5039 = fsub fast float 1.000000e+00, %4925
  %5040 = fadd fast float %5039, %4940
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fsub fast float 1.000000e+00, %4312
  %5043 = fmul fast float %4982, %5042
  %5044 = fmul fast float %4985, %4985
  %5045 = fmul fast float %5044, %5043
  %5046 = fmul fast float %5045, %4987
  %5047 = fmul fast float %5042, 0xBFE99999A0000000
  %5048 = fmul fast float %5047, %4927
  %5049 = fmul fast float %5048, %4944
  %5050 = fadd fast float %5049, 1.000000e+00
  %5051 = fadd fast float %4906, -1.000000e+00
  %5052 = fmul fast float %5050, %5051
  %5053 = fadd fast float %5052, 1.000000e+00
  %5054 = fsub fast float %5036, %4897
  %5055 = fsub fast float %5037, %4898
  %5056 = fsub fast float %5038, %4899
  %5057 = fmul fast float %5046, %5054
  %5058 = fmul fast float %5046, %5055
  %5059 = fmul fast float %5046, %5056
  %5060 = fadd fast float %5057, %4897
  %5061 = fadd fast float %5058, %4898
  %5062 = fadd fast float %5059, %4899
  %5063 = fsub fast float %122, %4900
  %5064 = fsub fast float %124, %4901
  %5065 = fsub fast float %126, %4902
  %5066 = fmul fast float %5046, %5063
  %5067 = fmul fast float %5046, %5064
  %5068 = fmul fast float %5046, %5065
  %5069 = fadd fast float %5066, %4900
  %5070 = fadd fast float %5067, %4901
  %5071 = fadd fast float %5068, %4902
  %5072 = fmul fast float %5046, %5041
  %5073 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = fmul fast float %5072, %5074
  %5076 = fadd fast float %5075, %5073
  %5077 = fsub fast float 1.000000e+00, %4907
  %5078 = fmul fast float %5046, %5077
  %5079 = fadd fast float %5078, %4907
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 25, float %5080)  ; Rsqrt(value)
  %5082 = fmul fast float %5069, %5081
  %5083 = fmul fast float %5070, %5081
  %5084 = fmul fast float %5071, %5081
  br label %5085

; <label>:5085                                    ; preds = %4918, %4911
  %5086 = phi float [ %4917, %4911 ], [ %4924, %4918 ]
  %5087 = phi float [ %4916, %4911 ], [ %4922, %4918 ]
  %5088 = phi float [ %4915, %4911 ], [ %4920, %4918 ]
  %5089 = phi float [ %4914, %4911 ], [ %4923, %4918 ]
  %5090 = phi float [ %4913, %4911 ], [ %4921, %4918 ]
  %5091 = phi float [ %4912, %4911 ], [ %4919, %4918 ]
  %5092 = phi float [ %4897, %4911 ], [ %5060, %4918 ]
  %5093 = phi float [ %4898, %4911 ], [ %5061, %4918 ]
  %5094 = phi float [ %4899, %4911 ], [ %5062, %4918 ]
  %5095 = phi float [ %4900, %4911 ], [ %5082, %4918 ]
  %5096 = phi float [ %4901, %4911 ], [ %5083, %4918 ]
  %5097 = phi float [ %4902, %4911 ], [ %5084, %4918 ]
  %5098 = phi float [ %4903, %4911 ], [ %4969, %4918 ]
  %5099 = phi float [ %4904, %4911 ], [ %4970, %4918 ]
  %5100 = phi float [ %4905, %4911 ], [ %4971, %4918 ]
  %5101 = phi float [ %4906, %4911 ], [ %5076, %4918 ]
  %5102 = phi float [ %4907, %4911 ], [ %5079, %4918 ]
  %5103 = fsub fast float -0.000000e+00, %198
  %5104 = select i1 %268, float 0.000000e+00, float %5094
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %5088, float %5087, float %5086)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5091, float %5090, float %5089, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = fmul fast float %5107, 2.000000e+00
  %5109 = fmul fast float %5108, %5095
  %5110 = fmul fast float %5108, %5096
  %5111 = fmul fast float %5108, %5097
  %5112 = fsub fast float %5091, %5109
  %5113 = fsub fast float %5090, %5110
  %5114 = fsub fast float %5089, %5111
  %5115 = call float @dx.op.binary.f32(i32 36, float %5102, float 1.000000e+00)  ; FMin(a,b)
  %5116 = fsub fast float 1.000000e+00, %5102
  %5117 = bitcast float %5116 to i32
  %5118 = sub nsw i32 2129859010, %5117
  %5119 = bitcast i32 %5118 to float
  %5120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5121 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = fcmp fast oeq float %5121, 0.000000e+00
  %5123 = fcmp fast oeq float %5120, 0.000000e+00
  %5124 = or i1 %5123, %5122
  br i1 %5124, label %5154, label %5125

; <label>:5125                                    ; preds = %5085
  %5126 = fsub fast float -0.000000e+00, %87
  %5127 = fsub fast float -0.000000e+00, %85
  %5128 = call float @dx.op.unary.f32(i32 24, float %5121)  ; Sqrt(value)
  %5129 = fdiv fast float %5128, %5120
  %5130 = fcmp fast ogt float %5129, 0x3FFB6F8900000000
  %5131 = select i1 %5130, float 0x3FFB6F8900000000, float %5129
  %5132 = fmul fast float %5131, 0x3FE8A23460000000
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5131, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5135 = fmul fast float %5133, %5120
  %5136 = fmul fast float %5134, 0x3FF279A740000000
  %5137 = fadd fast float %5136, -1.000000e+00
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %86, float %5126, float %5127, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 25, float %5138)  ; Rsqrt(value)
  %5140 = fmul fast float %5139, %5126
  %5141 = fmul fast float %5139, %5127
  %5142 = fmul fast float %5139, %86
  %5143 = fmul fast float %5137, %5137
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5134, 0x40005F8BE0000000
  %5146 = fsub fast float 0x400C5BF8A0000000, %5145
  %5147 = fdiv fast float %5135, %5146
  %5148 = fmul fast float %5147, 0x3FEE31C3C0000000
  %5149 = fmul fast float %5148, %5144
  %5150 = fmul fast float %5134, 0x3FDACB7480000000
  %5151 = fadd fast float %5150, 0xBFD7347680000000
  %5152 = fmul fast float %5151, %5147
  %5153 = fmul fast float %5152, %5144
  br label %5154

; <label>:5154                                    ; preds = %5125, %5085
  %5155 = phi float [ %5140, %5125 ], [ 0.000000e+00, %5085 ]
  %5156 = phi float [ %5141, %5125 ], [ 0.000000e+00, %5085 ]
  %5157 = phi float [ %5142, %5125 ], [ 0.000000e+00, %5085 ]
  %5158 = phi float [ %5149, %5125 ], [ 0.000000e+00, %5085 ]
  %5159 = phi float [ %5153, %5125 ], [ 0.000000e+00, %5085 ]
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5155, float %5156, float %5157, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = fmul fast float %5160, %5160
  %5162 = fmul fast float %5161, 0x3FEE471020000000
  %5163 = fadd fast float %5162, 0xBFD42F6020000000
  %5164 = fmul fast float %5120, 0x3FD20DD760000000
  %5165 = fmul fast float %5163, %5159
  %5166 = fmul fast float %5158, 0x3FDF454380000000
  %5167 = fmul fast float %5166, %5160
  %5168 = fadd fast float %5167, %5164
  %5169 = fadd fast float %5168, %5165
  %5170 = call float @dx.op.dot3.f32(i32 55, float %5155, float %5156, float %5157, float %5112, float %5113, float %5114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = fmul fast float %5170, 0x3FDF454380000000
  %5172 = fmul fast float %5170, %5170
  %5173 = fmul fast float %5172, 0x3FEE471020000000
  %5174 = fadd fast float %5173, 0xBFD42F6020000000
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5158, float %5159, float 0x3FD20DD760000000, float %5171, float %5174)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5177 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = fcmp fast oeq float %5177, 0.000000e+00
  %5179 = fcmp fast oeq float %5176, 0.000000e+00
  %5180 = or i1 %5179, %5178
  br i1 %5180, label %5210, label %5181

; <label>:5181                                    ; preds = %5154
  %5182 = fsub fast float -0.000000e+00, %83
  %5183 = fsub fast float -0.000000e+00, %81
  %5184 = call float @dx.op.unary.f32(i32 24, float %5177)  ; Sqrt(value)
  %5185 = fdiv fast float %5184, %5176
  %5186 = fcmp fast ogt float %5185, 0x3FFB6F8900000000
  %5187 = select i1 %5186, float 0x3FFB6F8900000000, float %5185
  %5188 = fmul fast float %5187, 0x3FE8A23460000000
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5187, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5191 = fmul fast float %5189, %5176
  %5192 = fmul fast float %5190, 0x3FF279A740000000
  %5193 = fadd fast float %5192, -1.000000e+00
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %82, float %5182, float %5183, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = call float @dx.op.unary.f32(i32 25, float %5194)  ; Rsqrt(value)
  %5196 = fmul fast float %5195, %5182
  %5197 = fmul fast float %5195, %5183
  %5198 = fmul fast float %5195, %82
  %5199 = fmul fast float %5193, %5193
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = fmul fast float %5190, 0x40005F8BE0000000
  %5202 = fsub fast float 0x400C5BF8A0000000, %5201
  %5203 = fdiv fast float %5191, %5202
  %5204 = fmul fast float %5203, 0x3FEE31C3C0000000
  %5205 = fmul fast float %5204, %5200
  %5206 = fmul fast float %5190, 0x3FDACB7480000000
  %5207 = fadd fast float %5206, 0xBFD7347680000000
  %5208 = fmul fast float %5207, %5203
  %5209 = fmul fast float %5208, %5200
  br label %5210

; <label>:5210                                    ; preds = %5181, %5154
  %5211 = phi float [ %5196, %5181 ], [ 0.000000e+00, %5154 ]
  %5212 = phi float [ %5197, %5181 ], [ 0.000000e+00, %5154 ]
  %5213 = phi float [ %5198, %5181 ], [ 0.000000e+00, %5154 ]
  %5214 = phi float [ %5205, %5181 ], [ 0.000000e+00, %5154 ]
  %5215 = phi float [ %5209, %5181 ], [ 0.000000e+00, %5154 ]
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = fmul fast float %5216, %5216
  %5218 = fmul fast float %5217, 0x3FEE471020000000
  %5219 = fadd fast float %5218, 0xBFD42F6020000000
  %5220 = fmul fast float %5176, 0x3FD20DD760000000
  %5221 = fmul fast float %5219, %5215
  %5222 = fmul fast float %5214, 0x3FDF454380000000
  %5223 = fmul fast float %5222, %5216
  %5224 = fadd fast float %5223, %5220
  %5225 = fadd fast float %5224, %5221
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float %5112, float %5113, float %5114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = fmul fast float %5226, 0x3FDF454380000000
  %5228 = fmul fast float %5226, %5226
  %5229 = fmul fast float %5228, 0x3FEE471020000000
  %5230 = fadd fast float %5229, 0xBFD42F6020000000
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5214, float %5215, float 0x3FD20DD760000000, float %5227, float %5230)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5233 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = fcmp fast oeq float %5233, 0.000000e+00
  %5235 = fcmp fast oeq float %5232, 0.000000e+00
  %5236 = or i1 %5235, %5234
  br i1 %5236, label %5266, label %5237

; <label>:5237                                    ; preds = %5210
  %5238 = fsub fast float -0.000000e+00, %79
  %5239 = fsub fast float -0.000000e+00, %77
  %5240 = call float @dx.op.unary.f32(i32 24, float %5233)  ; Sqrt(value)
  %5241 = fdiv fast float %5240, %5232
  %5242 = fcmp fast ogt float %5241, 0x3FFB6F8900000000
  %5243 = select i1 %5242, float 0x3FFB6F8900000000, float %5241
  %5244 = fmul fast float %5243, 0x3FE8A23460000000
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5243, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5247 = fmul fast float %5245, %5232
  %5248 = fmul fast float %5246, 0x3FF279A740000000
  %5249 = fadd fast float %5248, -1.000000e+00
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %78, float %5238, float %5239, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = call float @dx.op.unary.f32(i32 25, float %5250)  ; Rsqrt(value)
  %5252 = fmul fast float %5251, %5238
  %5253 = fmul fast float %5251, %5239
  %5254 = fmul fast float %5251, %78
  %5255 = fmul fast float %5249, %5249
  %5256 = fsub fast float 1.000000e+00, %5255
  %5257 = fmul fast float %5246, 0x40005F8BE0000000
  %5258 = fsub fast float 0x400C5BF8A0000000, %5257
  %5259 = fdiv fast float %5247, %5258
  %5260 = fmul fast float %5259, 0x3FEE31C3C0000000
  %5261 = fmul fast float %5260, %5256
  %5262 = fmul fast float %5246, 0x3FDACB7480000000
  %5263 = fadd fast float %5262, 0xBFD7347680000000
  %5264 = fmul fast float %5263, %5259
  %5265 = fmul fast float %5264, %5256
  br label %5266

; <label>:5266                                    ; preds = %5237, %5210
  %5267 = phi float [ %5252, %5237 ], [ 0.000000e+00, %5210 ]
  %5268 = phi float [ %5253, %5237 ], [ 0.000000e+00, %5210 ]
  %5269 = phi float [ %5254, %5237 ], [ 0.000000e+00, %5210 ]
  %5270 = phi float [ %5261, %5237 ], [ 0.000000e+00, %5210 ]
  %5271 = phi float [ %5265, %5237 ], [ 0.000000e+00, %5210 ]
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = fmul fast float %5272, %5272
  %5274 = fmul fast float %5273, 0x3FEE471020000000
  %5275 = fadd fast float %5274, 0xBFD42F6020000000
  %5276 = fmul fast float %5232, 0x3FD20DD760000000
  %5277 = fmul fast float %5275, %5271
  %5278 = fmul fast float %5270, 0x3FDF454380000000
  %5279 = fmul fast float %5278, %5272
  %5280 = fadd fast float %5279, %5276
  %5281 = fadd fast float %5280, %5277
  %5282 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float %5112, float %5113, float %5114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = fmul fast float %5282, 0x3FDF454380000000
  %5284 = fmul fast float %5282, %5282
  %5285 = fmul fast float %5284, 0x3FEE471020000000
  %5286 = fadd fast float %5285, 0xBFD42F6020000000
  %5287 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5270, float %5271, float 0x3FD20DD760000000, float %5283, float %5286)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = call float @dx.op.binary.f32(i32 35, float %5169, float 0.000000e+00)  ; FMax(a,b)
  %5289 = call float @dx.op.binary.f32(i32 35, float %5225, float 0.000000e+00)  ; FMax(a,b)
  %5290 = call float @dx.op.binary.f32(i32 35, float %5281, float 0.000000e+00)  ; FMax(a,b)
  %5291 = call float @dx.op.binary.f32(i32 35, float %5175, float 0.000000e+00)  ; FMax(a,b)
  %5292 = call float @dx.op.binary.f32(i32 35, float %5231, float 0.000000e+00)  ; FMax(a,b)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5287, float 0.000000e+00)  ; FMax(a,b)
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = call float @dx.op.binary.f32(i32 36, float %5098, float %5295)  ; FMin(a,b)
  %5297 = fsub fast float 1.000000e+00, %5115
  %5298 = fmul fast float %5296, %5297
  %5299 = fsub fast float 1.000000e+00, %5298
  %5300 = bitcast float %5299 to i32
  %5301 = sub nsw i32 2129859010, %5300
  %5302 = bitcast i32 %5301 to float
  %5303 = call float @dx.op.binary.f32(i32 36, float %5099, float %5295)  ; FMin(a,b)
  %5304 = fmul fast float %5303, %5297
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = call float @dx.op.binary.f32(i32 36, float %5100, float %5295)  ; FMin(a,b)
  %5310 = fmul fast float %5309, %5297
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = bitcast float %5311 to i32
  %5313 = sub nsw i32 2129859010, %5312
  %5314 = bitcast i32 %5313 to float
  %5315 = fmul fast float %5288, %5115
  %5316 = fmul fast float %5315, %5302
  %5317 = fmul fast float %5289, %5115
  %5318 = fmul fast float %5317, %5308
  %5319 = fmul fast float %5290, %5115
  %5320 = fmul fast float %5319, %5314
  %5321 = call float @dx.op.binary.f32(i32 36, float %5092, float %5295)  ; FMin(a,b)
  %5322 = fmul fast float %5321, %5297
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = call float @dx.op.binary.f32(i32 36, float %5093, float %5295)  ; FMin(a,b)
  %5328 = fmul fast float %5327, %5297
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = call float @dx.op.binary.f32(i32 36, float %5104, float %5295)  ; FMin(a,b)
  %5334 = fmul fast float %5333, %5297
  %5335 = fsub fast float 1.000000e+00, %5334
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5291, %5115
  %5340 = fmul fast float %5339, %5326
  %5341 = fmul fast float %5292, %5115
  %5342 = fmul fast float %5341, %5332
  %5343 = fmul fast float %5293, %5115
  %5344 = fmul fast float %5343, %5338
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5318, float %5320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = select i1 %268, float 0.000000e+00, float %5316
  %5347 = select i1 %268, float %5345, float %5318
  %5348 = select i1 %268, float 0.000000e+00, float %5320
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5342, float %5344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = select i1 %268, float 0.000000e+00, float %5340
  %5351 = select i1 %268, float %5349, float %5342
  %5352 = select i1 %268, float 0.000000e+00, float %5344
  %5353 = fmul fast float %5106, 9.843750e-01
  %5354 = fmul fast float %5101, 9.843750e-01
  %5355 = fadd fast float %5353, 7.812500e-03
  %5356 = fadd fast float %5354, 7.812500e-03
  %5357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5355, float %5356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 2
  %5359 = extractvalue %dx.types.ResRet.f32 %5357, 3
  %5360 = fmul fast float %5358, %5092
  %5361 = fmul fast float %5358, %5093
  %5362 = fmul fast float %5358, %5104
  %5363 = fadd fast float %5360, %5359
  %5364 = fadd fast float %5361, %5359
  %5365 = fadd fast float %5362, %5359
  %5366 = fcmp fast ogt float %3897, 0.000000e+00
  br i1 %5366, label %5367, label %5393

; <label>:5367                                    ; preds = %5266
  %5368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3897, float %5106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = extractvalue %dx.types.ResRet.f32 %5368, 1
  %5371 = extractvalue %dx.types.ResRet.f32 %5368, 2
  %5372 = fadd fast float %5369, -5.000000e-01
  %5373 = fadd fast float %5370, -5.000000e-01
  %5374 = fadd fast float %5371, -5.000000e-01
  %5375 = fsub fast float 1.000000e+00, %5092
  %5376 = fsub fast float 1.000000e+00, %5093
  %5377 = fsub fast float 1.000000e+00, %5104
  %5378 = fmul fast float %5092, 4.000000e+00
  %5379 = fmul fast float %5378, %5375
  %5380 = fmul fast float %5379, %5372
  %5381 = fmul fast float %5093, 4.000000e+00
  %5382 = fmul fast float %5381, %5376
  %5383 = fmul fast float %5382, %5373
  %5384 = fmul fast float %5104, 4.000000e+00
  %5385 = fmul fast float %5384, %5377
  %5386 = fmul fast float %5385, %5374
  %5387 = fadd fast float %5380, %5363
  %5388 = fadd fast float %5383, %5364
  %5389 = fadd fast float %5386, %5365
  %5390 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  br label %5393

; <label>:5393                                    ; preds = %5367, %5266
  %5394 = phi float [ %5390, %5367 ], [ %5363, %5266 ]
  %5395 = phi float [ %5391, %5367 ], [ %5364, %5266 ]
  %5396 = phi float [ %5392, %5367 ], [ %5365, %5266 ]
  %5397 = call float @dx.op.binary.f32(i32 35, float %5395, float %5396)  ; FMax(a,b)
  %5398 = call float @dx.op.binary.f32(i32 35, float %5394, float %5397)  ; FMax(a,b)
  %5399 = fsub fast float 1.000000e+00, %5398
  %5400 = fmul fast float %5399, %5346
  %5401 = fmul fast float %5399, %5347
  %5402 = fmul fast float %5399, %5348
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5099, float %5100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = fcmp fast ogt float %5403, 0x3E7FF19E20000000
  %5405 = fdiv fast float 1.000000e+00, %5403
  %5406 = select i1 %5404, float %5405, float 0.000000e+00
  %5407 = fmul fast float %5406, %5098
  %5408 = fmul fast float %5406, %5099
  %5409 = fmul fast float %5406, %5100
  %5410 = fadd fast float %5407, -1.000000e+00
  %5411 = fadd fast float %5408, -1.000000e+00
  %5412 = fadd fast float %5409, -1.000000e+00
  %5413 = fmul fast float %5410, 5.000000e-01
  %5414 = fmul fast float %5411, 5.000000e-01
  %5415 = fmul fast float %5412, 5.000000e-01
  %5416 = fadd fast float %5413, 1.000000e+00
  %5417 = fadd fast float %5414, 1.000000e+00
  %5418 = fadd fast float %5415, 1.000000e+00
  %5419 = fmul fast float %5394, %5350
  %5420 = fmul fast float %5395, %5351
  %5421 = fmul fast float %5396, %5352
  %5422 = fsub fast float 1.000000e+00, %5106
  %5423 = bitcast float %5422 to i32
  %5424 = sitofp i32 %5423 to float
  %5425 = fmul fast float %5424, 5.000000e+00
  %5426 = fadd fast float %5425, 0xC1EFBF8940000000
  %5427 = fptosi float %5426 to i32
  %5428 = bitcast i32 %5427 to float
  %5429 = fmul fast float %5428, %3898
  %5430 = fmul fast float %5346, %5429
  %5431 = fmul fast float %5430, %5399
  %5432 = fmul fast float %5431, %5416
  %5433 = fmul fast float %5347, %5429
  %5434 = fmul fast float %5433, %5399
  %5435 = fmul fast float %5434, %5417
  %5436 = fmul fast float %5348, %5429
  %5437 = fmul fast float %5436, %5399
  %5438 = fmul fast float %5437, %5418
  %5439 = fmul fast float %5400, %3894
  %5440 = fmul fast float %5401, %3894
  %5441 = fmul fast float %5402, %3894
  %5442 = fadd fast float %5419, %3890
  %5443 = fadd fast float %5442, %5432
  %5444 = fmul fast float %5443, %3894
  %5445 = fadd fast float %5420, %3891
  %5446 = fadd fast float %5445, %5435
  %5447 = fmul fast float %5446, %3894
  %5448 = fadd fast float %5421, %3892
  %5449 = fadd fast float %5448, %5438
  %5450 = fmul fast float %5449, %3894
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5453 = fcmp fast oeq float %5452, 0.000000e+00
  br i1 %5453, label %6538, label %5454

; <label>:5454                                    ; preds = %5393
  %5455 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = select i1 %268, float %5463, float %5459
  %5467 = select i1 %268, float %5465, float %5460
  %5468 = select i1 %268, float %5464, float %5461
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5471 = fmul fast float %5470, %122
  %5472 = fmul fast float %5470, %124
  %5473 = fmul fast float %5470, %126
  %5474 = fadd fast float %5471, %196
  %5475 = fadd fast float %5472, %197
  %5476 = fadd fast float %5473, %198
  %5477 = fcmp fast olt float %5452, 0.000000e+00
  br i1 %5477, label %6117, label %5478

; <label>:5478                                    ; preds = %5454
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5488 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5493 = extractvalue %dx.types.CBufRet.f32 %5489, 3
  %5494 = fmul fast float %5480, %5474
  %5495 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %5481, float %5494)  ; FMad(a,b,c)
  %5496 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %5482, float %5495)  ; FMad(a,b,c)
  %5497 = fadd fast float %5496, %5483
  %5498 = fmul fast float %5485, %5474
  %5499 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %5486, float %5498)  ; FMad(a,b,c)
  %5500 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %5487, float %5499)  ; FMad(a,b,c)
  %5501 = fadd fast float %5500, %5488
  %5502 = fmul fast float %5490, %5474
  %5503 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %5491, float %5502)  ; FMad(a,b,c)
  %5504 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %5492, float %5503)  ; FMad(a,b,c)
  %5505 = fadd fast float %5504, %5493
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 0
  %5508 = fcmp fast une float %5507, 0.000000e+00
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.CBufRet.f32 %5509, 1
  %5512 = extractvalue %dx.types.CBufRet.f32 %5509, 3
  %5513 = fmul fast float %5512, %5497
  %5514 = fmul fast float %5512, %5501
  %5515 = fadd fast float %5513, %5510
  %5516 = fadd fast float %5514, %5511
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.CBufRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.CBufRet.f32 %5517, 3
  %5521 = fmul fast float %5520, %5497
  %5522 = fmul fast float %5520, %5501
  %5523 = fadd fast float %5521, %5518
  %5524 = fadd fast float %5522, %5519
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5527 = fsub fast float %5526, %5505
  %5528 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5529 = fmul fast float %5527, %5528
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  br i1 %5508, label %5592, label %5532

; <label>:5532                                    ; preds = %5478
  %5533 = extractvalue %dx.types.CBufRet.f32 %5517, 2
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5536 = fadd fast float %5535, %5533
  %5537 = fcmp fast ogt float %5536, 0.000000e+00
  br i1 %5537, label %5538, label %5562

; <label>:5538                                    ; preds = %5532
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.CBufRet.f32 %5539, 1
  %5542 = fsub fast float %5523, %5540
  %5543 = fsub fast float %5524, %5541
  %5544 = fcmp fast olt float %5542, 0.000000e+00
  %5545 = fcmp fast olt float %5543, 0.000000e+00
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5550 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5551 = select i1 %5544, float %5547, float %5549
  %5552 = select i1 %5545, float %5548, float %5550
  %5553 = fmul fast float %5551, %5542
  %5554 = fmul fast float %5552, %5543
  %5555 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5556 = call float @dx.op.unary.f32(i32 6, float %5554)  ; FAbs(value)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5558 = call float @dx.op.binary.f32(i32 35, float %5555, float %5556)  ; FMax(a,b)
  %5559 = fsub fast float %5557, %5558
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fmul fast float %5560, %5531
  br label %5562

; <label>:5562                                    ; preds = %5538, %5532
  %5563 = phi float [ %5561, %5538 ], [ 0.000000e+00, %5532 ]
  %5564 = extractvalue %dx.types.CBufRet.f32 %5509, 2
  %5565 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5566 = fadd fast float %5565, %5564
  %5567 = fcmp fast ogt float %5566, 0.000000e+00
  br i1 %5567, label %5568, label %5592

; <label>:5568                                    ; preds = %5562
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5572 = fsub fast float %5515, %5570
  %5573 = fsub fast float %5516, %5571
  %5574 = fcmp fast olt float %5572, 0.000000e+00
  %5575 = fcmp fast olt float %5573, 0.000000e+00
  %5576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5577 = extractvalue %dx.types.CBufRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.CBufRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.CBufRet.f32 %5576, 2
  %5580 = extractvalue %dx.types.CBufRet.f32 %5576, 3
  %5581 = select i1 %5574, float %5577, float %5579
  %5582 = select i1 %5575, float %5578, float %5580
  %5583 = fmul fast float %5581, %5572
  %5584 = fmul fast float %5582, %5573
  %5585 = call float @dx.op.unary.f32(i32 6, float %5583)  ; FAbs(value)
  %5586 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5588 = call float @dx.op.binary.f32(i32 35, float %5585, float %5586)  ; FMax(a,b)
  %5589 = fsub fast float %5587, %5588
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5590, %5531
  br label %5592

; <label>:5592                                    ; preds = %5568, %5562, %5478
  %5593 = phi float [ 0.000000e+00, %5478 ], [ %5591, %5568 ], [ 0.000000e+00, %5562 ]
  %5594 = phi float [ 0.000000e+00, %5478 ], [ %5563, %5568 ], [ %5563, %5562 ]
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = fsub fast float %5497, %5599
  %5602 = fsub fast float %5501, %5600
  %5603 = fcmp fast olt float %5601, 0.000000e+00
  %5604 = fcmp fast olt float %5602, 0.000000e+00
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5610 = select i1 %5603, float %5606, float %5608
  %5611 = select i1 %5604, float %5607, float %5609
  %5612 = fmul fast float %5610, %5601
  %5613 = fmul fast float %5611, %5602
  %5614 = call float @dx.op.unary.f32(i32 6, float %5612)  ; FAbs(value)
  %5615 = call float @dx.op.unary.f32(i32 6, float %5613)  ; FAbs(value)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5617 = call float @dx.op.binary.f32(i32 35, float %5614, float %5615)  ; FMax(a,b)
  %5618 = fsub fast float %5616, %5617
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = call float @dx.op.binary.f32(i32 36, float %5619, float %5597)  ; FMin(a,b)
  %5621 = fmul fast float %5620, %5531
  %5622 = fsub fast float %5593, %5621
  %5623 = fsub fast float %5594, %5593
  %5624 = fsub fast float %5623, %5621
  %5625 = call float @dx.op.binary.f32(i32 35, float %5593, float %5594)  ; FMax(a,b)
  %5626 = call float @dx.op.binary.f32(i32 35, float %5621, float %5625)  ; FMax(a,b)
  %5627 = fcmp fast olt float %5626, 1.000000e+00
  br i1 %5627, label %5628, label %6026, !dx.controlflow.hints !98

; <label>:5628                                    ; preds = %5592
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = fcmp fast une float %5630, 0.000000e+00
  br i1 %5631, label %5632, label %6026, !dx.controlflow.hints !99

; <label>:5632                                    ; preds = %5628
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5637 = extractvalue %dx.types.CBufRet.f32 %5633, 3
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5638, 1
  %5641 = extractvalue %dx.types.CBufRet.f32 %5638, 2
  %5642 = extractvalue %dx.types.CBufRet.f32 %5638, 3
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 0
  %5645 = extractvalue %dx.types.CBufRet.f32 %5643, 1
  %5646 = extractvalue %dx.types.CBufRet.f32 %5643, 2
  %5647 = extractvalue %dx.types.CBufRet.f32 %5643, 3
  %5648 = fmul fast float %5634, %5474
  %5649 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %5635, float %5648)  ; FMad(a,b,c)
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %5636, float %5649)  ; FMad(a,b,c)
  %5651 = fadd fast float %5650, %5637
  %5652 = fmul fast float %5639, %5474
  %5653 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %5640, float %5652)  ; FMad(a,b,c)
  %5654 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %5641, float %5653)  ; FMad(a,b,c)
  %5655 = fadd fast float %5654, %5642
  %5656 = fmul fast float %5644, %5474
  %5657 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %5645, float %5656)  ; FMad(a,b,c)
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %5646, float %5657)  ; FMad(a,b,c)
  %5659 = fadd fast float %5658, %5647
  %5660 = fcmp fast oge float %5651, 1.000000e+00
  %5661 = fcmp fast oge float %5655, 1.000000e+00
  %5662 = or i1 %5660, %5661
  %5663 = fcmp fast olt float %5651, 0.000000e+00
  %5664 = fcmp fast olt float %5655, 0.000000e+00
  %5665 = or i1 %5663, %5664
  %5666 = or i1 %5662, %5665
  br i1 %5666, label %6026, label %5667, !dx.controlflow.hints !100

; <label>:5667                                    ; preds = %5632
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.i32 %5672, 2
  %5674 = uitofp i32 %5673 to float
  %5675 = extractvalue %dx.types.CBufRet.i32 %5672, 3
  %5676 = uitofp i32 %5675 to float
  %5677 = extractvalue %dx.types.CBufRet.f32 %5668, 3
  %5678 = fmul fast float %5677, 2.000000e+00
  %5679 = fsub fast float %5651, %5669
  %5680 = fsub fast float %5655, %5670
  %5681 = fmul fast float %5678, %5679
  %5682 = fmul fast float %5678, %5680
  %5683 = fdiv fast float 1.000000e+00, %5457
  %5684 = fmul fast float %5682, %5683
  %5685 = call float @dx.op.unary.f32(i32 6, float %5684)  ; FAbs(value)
  %5686 = fmul fast float %5671, %5476
  %5687 = fmul fast float %5686, %5678
  %5688 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5689 = call float @dx.op.unary.f32(i32 6, float %5681)  ; FAbs(value)
  %5690 = call float @dx.op.binary.f32(i32 35, float %5688, float %5685)  ; FMax(a,b)
  %5691 = call float @dx.op.binary.f32(i32 35, float %5689, float %5690)  ; FMax(a,b)
  %5692 = fmul fast float %5691, 2.000000e+00
  %5693 = call float @dx.op.unary.f32(i32 23, float %5692)  ; Log(value)
  %5694 = call float @dx.op.binary.f32(i32 35, float %5693, float %5674)  ; FMax(a,b)
  %5695 = call float @dx.op.unary.f32(i32 22, float %5694)  ; Frc(value)
  %5696 = fadd fast float %5695, 0xBFEA666660000000
  %5697 = fmul fast float %5696, 8.000000e+00
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 27, float %5694)  ; Round_ni(value)
  %5700 = fadd fast float %5699, %5698
  %5701 = call float @dx.op.binary.f32(i32 36, float %5700, float %5676)  ; FMin(a,b)
  %5702 = call float @dx.op.unary.f32(i32 27, float %5701)  ; Round_ni(value)
  %5703 = fsub fast float -0.000000e+00, %5702
  %5704 = call float @dx.op.unary.f32(i32 21, float %5703)  ; Exp(value)
  %5705 = fmul fast float %5704, %5678
  %5706 = fmul fast float %5705, %5651
  %5707 = fmul fast float %5705, %5655
  %5708 = fmul fast float %5706, 2.500000e-01
  %5709 = fmul fast float %5707, 2.500000e-01
  %5710 = fadd fast float %5708, 5.000000e-01
  %5711 = fadd fast float %5709, 5.000000e-01
  %5712 = fsub fast float %5676, %5674
  %5713 = fptoui float %5712 to i32
  %5714 = add i32 %5713, 320
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5714)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = fcmp fast une float %5701, %5676
  %5719 = fsub fast float %5651, %5716
  %5720 = fsub fast float %5655, %5717
  %5721 = call float @dx.op.unary.f32(i32 6, float %5719)  ; FAbs(value)
  %5722 = call float @dx.op.unary.f32(i32 6, float %5720)  ; FAbs(value)
  %5723 = fmul fast float %5721, %5705
  %5724 = fmul fast float %5722, %5705
  %5725 = fcmp fast olt float %5723, 1.000000e+00
  %5726 = fcmp fast olt float %5724, 1.000000e+00
  %5727 = and i1 %5725, %5726
  %5728 = or i1 %5718, %5727
  br i1 %5728, label %5729, label %6026, !dx.controlflow.hints !101

; <label>:5729                                    ; preds = %5667
  %5730 = fmul fast float %5707, 5.000000e-01
  %5731 = fmul fast float %5706, 5.000000e-01
  %5732 = fadd fast float %5730, 5.000000e-01
  %5733 = fadd fast float %5731, 5.000000e-01
  %5734 = sitofp i32 %5673 to float
  %5735 = fsub fast float %5701, %5734
  %5736 = call float @dx.op.unary.f32(i32 27, float %5735)  ; Round_ni(value)
  %5737 = call float @dx.op.unary.f32(i32 22, float %5701)  ; Frc(value)
  %5738 = call float @dx.op.unary.f32(i32 22, float %5733)  ; Frc(value)
  %5739 = call float @dx.op.unary.f32(i32 22, float %5732)  ; Frc(value)
  %5740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5738, float %5739, float %5736, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.ResRet.f32 %5740, 2
  %5744 = extractvalue %dx.types.ResRet.f32 %5740, 3
  %5745 = fcmp fast ogt float %5737, 0.000000e+00
  br i1 %5745, label %5746, label %5767, !dx.controlflow.hints !102

; <label>:5746                                    ; preds = %5729
  %5747 = fadd fast float %5736, 1.000000e+00
  %5748 = call float @dx.op.unary.f32(i32 22, float %5710)  ; Frc(value)
  %5749 = call float @dx.op.unary.f32(i32 22, float %5711)  ; Frc(value)
  %5750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5748, float %5749, float %5747, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5751 = extractvalue %dx.types.ResRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.ResRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.ResRet.f32 %5750, 2
  %5754 = extractvalue %dx.types.ResRet.f32 %5750, 3
  %5755 = fsub fast float %5751, %5741
  %5756 = fsub fast float %5752, %5742
  %5757 = fsub fast float %5753, %5743
  %5758 = fsub fast float %5754, %5744
  %5759 = fmul fast float %5755, %5737
  %5760 = fmul fast float %5756, %5737
  %5761 = fmul fast float %5757, %5737
  %5762 = fmul fast float %5758, %5737
  %5763 = fadd fast float %5759, %5741
  %5764 = fadd fast float %5760, %5742
  %5765 = fadd fast float %5761, %5743
  %5766 = fadd fast float %5762, %5744
  br label %5767

; <label>:5767                                    ; preds = %5746, %5729
  %5768 = phi float [ %5763, %5746 ], [ %5741, %5729 ]
  %5769 = phi float [ %5764, %5746 ], [ %5742, %5729 ]
  %5770 = phi float [ %5765, %5746 ], [ %5743, %5729 ]
  %5771 = phi float [ %5766, %5746 ], [ %5744, %5729 ]
  %5772 = fadd fast float %5768, -5.000000e-01
  %5773 = fadd fast float %5770, -5.000000e-01
  %5774 = fmul fast float %5772, 0xBFD5555560000000
  %5775 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5773, float %5774)  ; FMad(a,b,c)
  %5776 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5769, float 0.000000e+00)  ; FMad(a,b,c)
  %5777 = fadd fast float %5776, %5771
  %5778 = fmul fast float %5772, -7.500000e-01
  %5779 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5773, float %5778)  ; FMad(a,b,c)
  %5780 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5769, float 0.000000e+00)  ; FMad(a,b,c)
  %5781 = fadd fast float %5780, %5771
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5784, 2
  %5788 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5789 = fsub fast float %5785, %5775
  %5790 = fsub fast float %5786, %5777
  %5791 = fsub fast float %5787, %5779
  %5792 = fsub fast float %5788, %5781
  %5793 = fmul fast float %5789, %5783
  %5794 = fmul fast float %5790, %5783
  %5795 = fmul fast float %5791, %5783
  %5796 = fmul fast float %5792, %5783
  %5797 = fadd fast float %5793, %5775
  %5798 = fadd fast float %5794, %5777
  %5799 = fadd fast float %5795, %5779
  %5800 = fadd fast float %5796, %5781
  %5801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.i32 %5801, 0
  %5803 = and i32 %5802, 536870911
  %5804 = uitofp i32 %5803 to float
  %5805 = fmul fast float %5804, %5651
  %5806 = fmul fast float %5804, %5655
  %5807 = fptoui float %5805 to i32
  %5808 = fptoui float %5806 to i32
  %5809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5810 = extractvalue %dx.types.ResRet.i32 %5809, 0
  %5811 = and i32 %5810, 31
  %5812 = lshr i32 %5807, %5811
  %5813 = lshr i32 %5808, %5811
  %5814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5815 = extractvalue %dx.types.ResRet.i32 %5814, 0
  %5816 = and i32 %5815, 31
  %5817 = shl i32 1, %5816
  %5818 = call i32 @dx.op.binary.i32(i32 40, i32 %5817, i32 4)  ; UMin(a,b)
  %5819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5820 = extractvalue %dx.types.ResRet.i32 %5819, 0
  %5821 = extractvalue %dx.types.ResRet.i32 %5819, 1
  %5822 = icmp eq i32 %5818, 0
  br i1 %5822, label %5864, label %5823

; <label>:5823                                    ; preds = %5767
  br label %5824

; <label>:5824                                    ; preds = %5852, %5823
  %5825 = phi i32 [ %5855, %5852 ], [ 0, %5823 ]
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = lshr i32 %5827, 16
  %5829 = and i32 %5828, 31
  %5830 = shl i32 %5813, %5829
  %5831 = add i32 %5830, %5812
  %5832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.i32 %5832, 0
  %5834 = and i32 %5833, 31
  %5835 = shl i32 %5831, %5834
  %5836 = add i32 %5835, %5825
  %5837 = shl i32 %5836, 2
  %5838 = add i32 %5837, 32
  %5839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5838, i32 undef)  ; BufferLoad(srv,index,wot)
  %5840 = extractvalue %dx.types.ResRet.i32 %5839, 0
  %5841 = icmp slt i32 %5840, 0
  %5842 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5825
  %5843 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5825
  %5844 = bitcast float* %5842 to i32*
  %5845 = bitcast float* %5843 to i32*
  br i1 %5841, label %5846, label %5852

; <label>:5846                                    ; preds = %5824
  %5847 = and i32 %5840, 1073741823
  %5848 = add nuw nsw i32 %5847, 20
  %5849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5848, i32 undef)  ; BufferLoad(srv,index,wot)
  %5850 = extractvalue %dx.types.ResRet.i32 %5849, 0
  %5851 = extractvalue %dx.types.ResRet.i32 %5849, 1
  br label %5852

; <label>:5852                                    ; preds = %5846, %5824
  %5853 = phi i32 [ %5850, %5846 ], [ %5820, %5824 ]
  %5854 = phi i32 [ %5851, %5846 ], [ %5821, %5824 ]
  store i32 %5853, i32* %5844, align 4
  store i32 %5854, i32* %5845, align 4
  %5855 = add nuw i32 %5825, 1
  %5856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.i32 %5856, 2
  %5858 = icmp eq i32 %5857, 0
  %5859 = icmp ugt i32 %5840, -1073741825
  %5860 = and i1 %5859, %5858
  %5861 = icmp ult i32 %5855, %5818
  %5862 = and i1 %5860, %5861
  br i1 %5862, label %5824, label %5863

; <label>:5863                                    ; preds = %5852
  br label %5864

; <label>:5864                                    ; preds = %5863, %5767
  %5865 = phi i32 [ 0, %5767 ], [ %5855, %5863 ]
  %5866 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5867 = fptoui float %5866 to i32
  %5868 = icmp eq i32 %5867, 0
  br i1 %5868, label %5920, label %5869

; <label>:5869                                    ; preds = %5864
  br label %5870

; <label>:5870                                    ; preds = %5915, %5869
  %5871 = phi i32 [ %5916, %5915 ], [ %5865, %5869 ]
  %5872 = phi i32 [ %5917, %5915 ], [ 0, %5869 ]
  %5873 = lshr i32 %5872, 2
  %5874 = and i32 %5872, 3
  %5875 = add nuw nsw i32 %5873, 83
  %5876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5875)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.i32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.i32 %5876, 1
  %5879 = extractvalue %dx.types.CBufRet.i32 %5876, 2
  %5880 = extractvalue %dx.types.CBufRet.i32 %5876, 3
  %5881 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5877, i32* %5881, align 4
  %5882 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5878, i32* %5882, align 4
  %5883 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5879, i32* %5883, align 4
  %5884 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5880, i32* %5884, align 4
  %5885 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5874
  %5886 = load i32, i32* %5885, align 4, !tbaa !103, !noalias !107
  %5887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5888 = extractvalue %dx.types.ResRet.i32 %5887, 0
  %5889 = lshr i32 %5888, 16
  %5890 = and i32 %5889, 31
  %5891 = shl i32 %5813, %5890
  %5892 = add i32 %5891, %5812
  %5893 = shl i32 %5892, 2
  %5894 = add i32 %5893, %5886
  %5895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5894, i32 undef)  ; BufferLoad(srv,index,wot)
  %5896 = extractvalue %dx.types.ResRet.i32 %5895, 0
  %5897 = icmp eq i32 %5896, 0
  br i1 %5897, label %5915, label %5898

; <label>:5898                                    ; preds = %5870
  %5899 = icmp slt i32 %5896, 0
  %5900 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5871
  %5901 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5871
  %5902 = bitcast float* %5900 to i32*
  %5903 = bitcast float* %5901 to i32*
  br i1 %5899, label %5904, label %5911

; <label>:5904                                    ; preds = %5898
  %5905 = and i32 %5896, 1073741823
  %5906 = add i32 %5886, 20
  %5907 = add i32 %5906, %5905
  %5908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.i32 %5908, 0
  %5910 = extractvalue %dx.types.ResRet.i32 %5908, 1
  br label %5911

; <label>:5911                                    ; preds = %5904, %5898
  %5912 = phi i32 [ %5909, %5904 ], [ %5820, %5898 ]
  %5913 = phi i32 [ %5910, %5904 ], [ %5821, %5898 ]
  store i32 %5912, i32* %5902, align 4
  store i32 %5913, i32* %5903, align 4
  %5914 = add i32 %5871, 1
  br label %5915

; <label>:5915                                    ; preds = %5911, %5870
  %5916 = phi i32 [ %5871, %5870 ], [ %5914, %5911 ]
  %5917 = add nuw i32 %5872, 1
  %5918 = icmp eq i32 %5917, %5867
  br i1 %5918, label %5919, label %5870

; <label>:5919                                    ; preds = %5915
  br label %5920

; <label>:5920                                    ; preds = %5919, %5864
  %5921 = phi i32 [ %5865, %5864 ], [ %5916, %5919 ]
  %5922 = icmp eq i32 %5921, 1
  %5923 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %5924 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %5922, label %5925, label %5928

; <label>:5925                                    ; preds = %5920
  %5926 = load float, float* %5923, align 4
  %5927 = load float, float* %5924, align 4
  br label %5955

; <label>:5928                                    ; preds = %5920
  %5929 = load float, float* %5923, align 4
  %5930 = load float, float* %5924, align 4
  %5931 = fdiv fast float 1.000000e+00, %5930
  %5932 = fsub fast float %5929, %5931
  %5933 = icmp ugt i32 %5921, 1
  br i1 %5933, label %5934, label %5950

; <label>:5934                                    ; preds = %5928
  br label %5935

; <label>:5935                                    ; preds = %5935, %5934
  %5936 = phi float [ %5945, %5935 ], [ %5932, %5934 ]
  %5937 = phi float [ %5946, %5935 ], [ %5929, %5934 ]
  %5938 = phi i32 [ %5947, %5935 ], [ 1, %5934 ]
  %5939 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5938
  %5940 = load float, float* %5939, align 4
  %5941 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5938
  %5942 = load float, float* %5941, align 4
  %5943 = fdiv fast float 1.000000e+00, %5942
  %5944 = fsub fast float %5940, %5943
  %5945 = call float @dx.op.binary.f32(i32 36, float %5936, float %5944)  ; FMin(a,b)
  %5946 = call float @dx.op.binary.f32(i32 35, float %5937, float %5940)  ; FMax(a,b)
  %5947 = add nuw i32 %5938, 1
  %5948 = icmp eq i32 %5947, %5921
  br i1 %5948, label %5949, label %5935

; <label>:5949                                    ; preds = %5935
  br label %5950

; <label>:5950                                    ; preds = %5949, %5928
  %5951 = phi float [ %5932, %5928 ], [ %5945, %5949 ]
  %5952 = phi float [ %5929, %5928 ], [ %5946, %5949 ]
  %5953 = fsub fast float %5952, %5951
  %5954 = fdiv fast float 1.000000e+00, %5953
  br label %5955

; <label>:5955                                    ; preds = %5950, %5925
  %5956 = phi float [ %5926, %5925 ], [ %5952, %5950 ]
  %5957 = phi float [ %5927, %5925 ], [ %5954, %5950 ]
  %5958 = fadd fast float %5659, %5956
  %5959 = fmul fast float %5958, %5957
  %5960 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  %5961 = fmul fast float %5960, 2.000000e+00
  %5962 = fsub fast float 1.000000e+00, %5961
  %5963 = fmul fast float %5797, %5797
  %5964 = fsub fast float %5798, %5963
  %5965 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5964)  ; FMax(a,b)
  %5966 = fdiv fast float 1.000000e+00, %5965
  %5967 = fmul fast float %5798, %5797
  %5968 = fsub fast float %5799, %5967
  %5969 = fsub fast float %5962, %5797
  %5970 = fmul fast float %5962, %5962
  %5971 = fsub fast float %5970, %5798
  %5972 = fmul fast float %5966, %5968
  %5973 = fmul fast float %5972, %5969
  %5974 = fsub fast float %5971, %5973
  %5975 = fmul fast float %5798, %5798
  %5976 = fsub fast float %5800, %5975
  %5977 = fmul fast float %5968, %5968
  %5978 = fmul fast float %5977, %5966
  %5979 = fsub fast float %5976, %5978
  %5980 = fdiv fast float %5974, %5979
  %5981 = fmul fast float %5980, %5968
  %5982 = fsub fast float %5969, %5981
  %5983 = fmul fast float %5982, %5966
  %5984 = fmul fast float %5983, %5797
  %5985 = fsub fast float 1.000000e+00, %5984
  %5986 = fmul fast float %5980, %5798
  %5987 = fsub fast float %5985, %5986
  %5988 = fmul fast float %5983, %5983
  %5989 = fmul fast float %5980, 4.000000e+00
  %5990 = fmul fast float %5989, %5987
  %5991 = fsub fast float %5988, %5990
  %5992 = call float @dx.op.unary.f32(i32 24, float %5991)  ; Sqrt(value)
  %5993 = fcmp fast oge float %5983, 0.000000e+00
  %5994 = fsub fast float -0.000000e+00, %5992
  %5995 = select i1 %5993, float %5994, float %5992
  %5996 = fsub fast float %5995, %5983
  %5997 = fdiv fast float %5996, %5980
  %5998 = fdiv fast float %5987, %5996
  %5999 = fmul fast float %5997, 5.000000e-01
  %6000 = fmul fast float %5998, 2.000000e+00
  %6001 = select i1 %5993, float %5999, float %6000
  %6002 = select i1 %5993, float %6000, float %5999
  %6003 = call float @dx.op.binary.f32(i32 35, float %6001, float %6002)  ; FMax(a,b)
  %6004 = call float @dx.op.binary.f32(i32 36, float %6001, float %6002)  ; FMin(a,b)
  %6005 = fcmp fast ogt float %5962, %6003
  %6006 = fsub fast float %5962, %6004
  %6007 = fsub fast float %5962, %6003
  %6008 = fsub fast float %6003, %6004
  %6009 = select i1 %6005, float %6007, float %6008
  %6010 = fmul float %6006, %6009
  %6011 = select i1 %6005, float %6004, float %5962
  %6012 = fcmp fast ogt float %5962, %6004
  %6013 = fmul fast float %6011, %6003
  %6014 = fadd fast float %6011, %6003
  %6015 = fmul fast float %6014, %5797
  %6016 = fadd fast float %6013, %5798
  %6017 = fsub fast float %6016, %6015
  %6018 = fdiv fast float %6017, %6010
  %6019 = select i1 %6012, float %6018, float 0.000000e+00
  %6020 = fsub fast float 1.000000e+00, %6019
  %6021 = select i1 %6005, float %6020, float %6019
  %6022 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6023 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %6024 = fmul fast float %6023, %6022
  %6025 = fsub fast float 1.000000e+00, %6024
  br label %6026

; <label>:6026                                    ; preds = %5955, %5667, %5632, %5628, %5592
  %6027 = phi float [ 1.000000e+00, %5592 ], [ %6025, %5955 ], [ 1.000000e+00, %5632 ], [ 1.000000e+00, %5667 ], [ 1.000000e+00, %5628 ]
  %6028 = fcmp fast ogt float %5624, 0.000000e+00
  br i1 %6028, label %6029, label %6037, !dx.controlflow.hints !116

; <label>:6029                                    ; preds = %6026
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 2
  %6032 = fadd fast float %6031, %5505
  %6033 = call float @dx.op.binary.f32(i32 35, float %6032, float 0.000000e+00)  ; FMax(a,b)
  %6034 = fadd fast float %6033, 0x3F10000000000000
  %6035 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5523, float %5524, float undef, float undef, i32 0, i32 0, i32 undef, float %6034)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6036 = extractvalue %dx.types.ResRet.f32 %6035, 0
  br label %6037

; <label>:6037                                    ; preds = %6029, %6026
  %6038 = phi float [ %6036, %6029 ], [ 1.000000e+00, %6026 ]
  %6039 = fcmp fast ogt float %5622, 0.000000e+00
  br i1 %6039, label %6040, label %6048, !dx.controlflow.hints !117

; <label>:6040                                    ; preds = %6037
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6043 = fadd fast float %6042, %5505
  %6044 = call float @dx.op.binary.f32(i32 35, float %6043, float 0.000000e+00)  ; FMax(a,b)
  %6045 = fadd fast float %6044, 0x3F10000000000000
  %6046 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5515, float %5516, float undef, float undef, i32 0, i32 0, i32 undef, float %6045)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  br label %6048

; <label>:6048                                    ; preds = %6040, %6037
  %6049 = phi float [ %6047, %6040 ], [ 1.000000e+00, %6037 ]
  %6050 = fcmp fast ogt float %5621, 0.000000e+00
  br i1 %6050, label %6051, label %6063, !dx.controlflow.hints !118

; <label>:6051                                    ; preds = %6048
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6054 = fadd fast float %6053, %5505
  %6055 = call float @dx.op.binary.f32(i32 35, float %6054, float 0.000000e+00)  ; FMax(a,b)
  %6056 = fadd fast float %6055, 0x3F10000000000000
  br i1 %5508, label %6057, label %6060, !dx.controlflow.hints !119

; <label>:6057                                    ; preds = %6051
  %6058 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5497, float %5501, float undef, float undef, i32 0, i32 0, i32 undef, float %6056)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6059 = extractvalue %dx.types.ResRet.f32 %6058, 0
  br label %6063

; <label>:6060                                    ; preds = %6051
  %6061 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5497, float %5501, float undef, float undef, i32 0, i32 0, i32 undef, float %6056)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 0
  br label %6063

; <label>:6063                                    ; preds = %6060, %6057, %6048
  %6064 = phi float [ %6059, %6057 ], [ %6062, %6060 ], [ 1.000000e+00, %6048 ]
  %6065 = fsub fast float %6038, %6027
  %6066 = fmul fast float %6065, %5594
  %6067 = fadd fast float %6066, %6027
  %6068 = fsub fast float %6049, %6067
  %6069 = fmul fast float %6068, %5593
  %6070 = fadd fast float %6069, %6067
  %6071 = fsub fast float %6064, %6070
  %6072 = fmul fast float %6071, %5621
  %6073 = fadd fast float %6072, %6070
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6076 = fcmp fast ogt float %6075, 0.000000e+00
  br i1 %6076, label %6077, label %6117, !dx.controlflow.hints !120

; <label>:6077                                    ; preds = %6063
  %6078 = fcmp fast ugt float %6075, 0.000000e+00
  br i1 %6078, label %6079, label %6114

; <label>:6079                                    ; preds = %6077
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6080, 2
  %6084 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.CBufRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6089 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6090 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6096 = fadd fast float %6093, %5474
  %6097 = fadd fast float %6094, %5475
  %6098 = fadd fast float %6095, %5476
  %6099 = fmul fast float %6096, %6081
  %6100 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6097, float %6099)  ; FMad(a,b,c)
  %6101 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6098, float %6100)  ; FMad(a,b,c)
  %6102 = fadd fast float %6101, %6084
  %6103 = fmul fast float %6096, %6086
  %6104 = call float @dx.op.tertiary.f32(i32 46, float %6087, float %6097, float %6103)  ; FMad(a,b,c)
  %6105 = call float @dx.op.tertiary.f32(i32 46, float %6088, float %6098, float %6104)  ; FMad(a,b,c)
  %6106 = fadd fast float %6105, %6089
  %6107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6102, float %6106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = fmul fast float %6108, %6091
  %6110 = fadd fast float %6109, %6090
  %6111 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6112 = fmul fast float %6111, %6075
  %6113 = fsub fast float 1.000000e+00, %6112
  br label %6114

; <label>:6114                                    ; preds = %6079, %6077
  %6115 = phi float [ %6113, %6079 ], [ 1.000000e+00, %6077 ]
  %6116 = fmul fast float %6115, %6073
  br label %6117

; <label>:6117                                    ; preds = %6114, %6063, %5454
  %6118 = phi float [ 1.000000e+00, %5454 ], [ %6116, %6114 ], [ %6073, %6063 ]
  %6119 = call float @dx.op.binary.f32(i32 36, float %6118, float %6118)  ; FMin(a,b)
  %6120 = call float @dx.op.binary.f32(i32 36, float %6118, float %6119)  ; FMin(a,b)
  %6121 = fcmp fast ogt float %6120, 0.000000e+00
  br i1 %6121, label %6122, label %6282, !dx.controlflow.hints !121

; <label>:6122                                    ; preds = %6117
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.CBufRet.f32 %6123, 2
  %6127 = extractvalue %dx.types.CBufRet.f32 %6123, 3
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.f32 %6133, 0
  %6135 = extractvalue %dx.types.CBufRet.f32 %6133, 1
  %6136 = extractvalue %dx.types.CBufRet.f32 %6133, 2
  %6137 = extractvalue %dx.types.CBufRet.f32 %6133, 3
  %6138 = fmul fast float %6124, %5474
  %6139 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %6125, float %6138)  ; FMad(a,b,c)
  %6140 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %6126, float %6139)  ; FMad(a,b,c)
  %6141 = fadd fast float %6140, %6127
  %6142 = fmul fast float %6129, %5474
  %6143 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %6130, float %6142)  ; FMad(a,b,c)
  %6144 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %6131, float %6143)  ; FMad(a,b,c)
  %6145 = fadd fast float %6144, %6132
  %6146 = fmul fast float %6134, %5474
  %6147 = call float @dx.op.tertiary.f32(i32 46, float %5475, float %6135, float %6146)  ; FMad(a,b,c)
  %6148 = call float @dx.op.tertiary.f32(i32 46, float %5476, float %6136, float %6147)  ; FMad(a,b,c)
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.CBufRet.f32 %6149, 3
  %6153 = fmul fast float %6152, %6141
  %6154 = fmul fast float %6152, %6145
  %6155 = fadd fast float %6153, %6150
  %6156 = fadd fast float %6154, %6151
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = fsub fast float %6155, %6158
  %6161 = fsub fast float %6156, %6159
  %6162 = fcmp fast olt float %6160, 0.000000e+00
  %6163 = fcmp fast olt float %6161, 0.000000e+00
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6168 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6169 = select i1 %6162, float %6165, float %6167
  %6170 = select i1 %6163, float %6166, float %6168
  %6171 = fmul fast float %6169, %6160
  %6172 = fmul fast float %6170, %6161
  %6173 = call float @dx.op.unary.f32(i32 6, float %6171)  ; FAbs(value)
  %6174 = call float @dx.op.unary.f32(i32 6, float %6172)  ; FAbs(value)
  %6175 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %6176 = call float @dx.op.binary.f32(i32 35, float %6173, float %6174)  ; FMax(a,b)
  %6177 = fsub fast float %6175, %6176
  %6178 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6179 = fcmp fast ogt float %6178, 0.000000e+00
  br i1 %6179, label %6180, label %6221, !dx.controlflow.hints !122

; <label>:6180                                    ; preds = %6122
  %6181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6155, float %6156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6182 = extractvalue %dx.types.ResRet.f32 %6181, 1
  %6183 = fcmp fast ogt float %6182, 0.000000e+00
  br i1 %6183, label %6184, label %6216

; <label>:6184                                    ; preds = %6180
  %6185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6155, float %6156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6186 = extractvalue %dx.types.ResRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.ResRet.f32 %6185, 1
  %6188 = extractvalue %dx.types.ResRet.f32 %6185, 2
  %6189 = extractvalue %dx.types.ResRet.f32 %6185, 3
  %6190 = fsub fast float 1.000000e+00, %6137
  %6191 = fsub fast float %6190, %6148
  %6192 = fmul fast float %6191, 0x400921FB60000000
  %6193 = fadd fast float %6192, 0x3FF921FB60000000
  %6194 = call float @dx.op.unary.f32(i32 13, float %6193)  ; Sin(value)
  %6195 = fadd fast float %6194, -1.000000e+00
  %6196 = fmul fast float %6195, 0x3FD45F3060000000
  %6197 = fmul fast float %6191, 0x401921FB60000000
  %6198 = fadd fast float %6197, 0x400921FB60000000
  %6199 = call float @dx.op.unary.f32(i32 13, float %6198)  ; Sin(value)
  %6200 = fadd fast float %6199, 0x3E7777A5C0000000
  %6201 = fmul fast float %6200, 0x3FC45F3060000000
  %6202 = fmul fast float %6191, 0x4022D97C80000000
  %6203 = fadd fast float %6202, 0x4012D97C80000000
  %6204 = call float @dx.op.unary.f32(i32 13, float %6203)  ; Sin(value)
  %6205 = fadd fast float %6204, 1.000000e+00
  %6206 = fmul fast float %6205, 0x3FBB2995E0000000
  %6207 = fmul fast float %6191, 0x402921FB60000000
  %6208 = fadd fast float %6207, 0x401921FB60000000
  %6209 = call float @dx.op.unary.f32(i32 13, float %6208)  ; Sin(value)
  %6210 = fadd fast float %6209, 0xBE8777A5C0000000
  %6211 = fmul fast float %6210, 0x3FB45F3060000000
  %6212 = call float @dx.op.dot4.f32(i32 56, float %6186, float %6187, float %6188, float %6189, float %6196, float %6201, float %6206, float %6211)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6213 = fmul fast float %6212, 0xBFF7154760000000
  %6214 = call float @dx.op.unary.f32(i32 21, float %6213)  ; Exp(value)
  %6215 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  br label %6216

; <label>:6216                                    ; preds = %6184, %6180
  %6217 = phi float [ %6215, %6184 ], [ 1.000000e+00, %6180 ]
  %6218 = fadd fast float %6217, -1.000000e+00
  %6219 = fmul fast float %6218, %6178
  %6220 = fadd fast float %6219, 1.000000e+00
  br label %6221

; <label>:6221                                    ; preds = %6216, %6122
  %6222 = phi float [ %6220, %6216 ], [ 1.000000e+00, %6122 ]
  %6223 = fmul fast float %6222, %6118
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = fadd fast float %6225, %196
  %6229 = fadd fast float %6226, %197
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6232 = fsub fast float -0.000000e+00, %6228
  %6233 = fsub fast float -0.000000e+00, %6229
  %6234 = fsub fast float %5103, %6227
  %6235 = fadd fast float %6234, %6231
  %6236 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6232, float %6233, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = fdiv fast float 1.000000e+00, %6237
  %6239 = fmul fast float %6238, %6236
  %6240 = fmul fast float %5455, %6239
  %6241 = fmul fast float %5456, %6239
  %6242 = fadd fast float %6240, %6228
  %6243 = fadd fast float %6241, %6229
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6247 = fsub fast float %6242, %6245
  %6248 = fsub fast float %6243, %6246
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6252 = fmul fast float %6247, %6250
  %6253 = fmul fast float %6248, %6251
  %6254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.i32 %6254, 3
  %6256 = icmp eq i32 %6255, 0
  br i1 %6256, label %6262, label %6257

; <label>:6257                                    ; preds = %6221
  %6258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6252, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.ResRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.ResRet.f32 %6258, 2
  br label %6267

; <label>:6262                                    ; preds = %6221
  %6263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6252, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.ResRet.f32 %6263, 2
  br label %6267

; <label>:6267                                    ; preds = %6262, %6257
  %6268 = phi float [ %6259, %6257 ], [ %6264, %6262 ]
  %6269 = phi float [ %6260, %6257 ], [ %6265, %6262 ]
  %6270 = phi float [ %6261, %6257 ], [ %6266, %6262 ]
  %6271 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6272 = fmul fast float %6271, %6268
  %6273 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6274 = fsub fast float %6239, %6273
  %6275 = fsub fast float %6274, %6272
  %6276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6275)  ; FMax(a,b)
  %6277 = fmul fast float %6276, %6269
  %6278 = call float @dx.op.binary.f32(i32 36, float %6270, float %6277)  ; FMin(a,b)
  %6279 = fmul fast float %6278, 0xBFF7154760000000
  %6280 = call float @dx.op.unary.f32(i32 21, float %6279)  ; Exp(value)
  %6281 = fmul fast float %6223, %6280
  br label %6282

; <label>:6282                                    ; preds = %6267, %6117
  %6283 = phi float [ %6281, %6267 ], [ %6118, %6117 ]
  %6284 = call float @dx.op.binary.f32(i32 36, float %6283, float %6283)  ; FMin(a,b)
  %6285 = call float @dx.op.binary.f32(i32 36, float %6283, float %6284)  ; FMin(a,b)
  %6286 = fcmp fast ogt float %6285, 0.000000e+00
  br i1 %6286, label %6287, label %6538, !dx.controlflow.hints !123

; <label>:6287                                    ; preds = %6282
  %6288 = fmul fast float %6283, %5466
  %6289 = fmul fast float %6283, %5467
  %6290 = fmul fast float %6283, %5468
  %6291 = fsub fast float %198, %4299
  %6292 = fcmp fast ogt float %6291, 0.000000e+00
  %6293 = fmul fast float %5455, 5.120000e+02
  %6294 = fmul fast float %5456, 5.120000e+02
  %6295 = fmul fast float %5457, 5.120000e+02
  %6296 = fadd fast float %6295, %198
  %6297 = fsub fast float %4299, %6296
  %6298 = fmul fast float %6297, 2.000000e+00
  %6299 = fadd fast float %6298, %6296
  %6300 = select i1 %6292, float %6299, float %6296
  %6301 = fsub fast float %6300, %198
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6293, float %6294, float %6301, float %6293, float %6294, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = call float @dx.op.unary.f32(i32 25, float %6302)  ; Rsqrt(value)
  %6304 = fmul fast float %6303, %6293
  %6305 = fmul fast float %6303, %6294
  %6306 = fmul fast float %6303, %6301
  %6307 = fsub fast float %4299, %198
  %6308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6307)  ; Dot3(ax,ay,az,bx,by,bz)
  %6309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6304, float %6305, float %6306)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = fdiv fast float 1.000000e+00, %6309
  %6311 = fmul fast float %6310, %6308
  %6312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6291, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6313 = fcmp fast ogt float %6312, 0.000000e+00
  %6314 = fcmp fast olt float %6312, 0.000000e+00
  %6315 = zext i1 %6313 to i32
  %6316 = zext i1 %6314 to i32
  %6317 = sub nsw i32 %6315, %6316
  %6318 = sitofp i32 %6317 to float
  %6319 = fsub fast float %6300, %4299
  %6320 = call float @dx.op.dot3.f32(i32 55, float %6293, float %6294, float %6319, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6321 = fcmp fast ogt float %6320, 0.000000e+00
  %6322 = fcmp fast olt float %6320, 0.000000e+00
  %6323 = zext i1 %6321 to i32
  %6324 = zext i1 %6322 to i32
  %6325 = sub nsw i32 %6323, %6324
  %6326 = sitofp i32 %6325 to float
  %6327 = fcmp fast une float %6318, %6326
  br i1 %6327, label %6328, label %6338

; <label>:6328                                    ; preds = %6287
  %6329 = fmul fast float %6311, %6306
  %6330 = fmul fast float %6311, %6305
  %6331 = fmul fast float %6311, %6304
  %6332 = fmul fast float %6331, %6331
  %6333 = fmul fast float %6330, %6330
  %6334 = fadd fast float %6332, %6333
  %6335 = fmul fast float %6329, %6329
  %6336 = fadd fast float %6334, %6335
  %6337 = call float @dx.op.unary.f32(i32 24, float %6336)  ; Sqrt(value)
  br label %6348

; <label>:6338                                    ; preds = %6287
  %6339 = icmp slt i32 %6317, 0
  br i1 %6339, label %6340, label %6348

; <label>:6340                                    ; preds = %6338
  %6341 = fsub fast float %198, %6300
  %6342 = fmul fast float %6293, %6293
  %6343 = fmul fast float %6294, %6294
  %6344 = fadd fast float %6342, %6343
  %6345 = fmul fast float %6341, %6341
  %6346 = fadd fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 24, float %6346)  ; Sqrt(value)
  br label %6348

; <label>:6348                                    ; preds = %6340, %6338, %6328
  %6349 = phi float [ %6337, %6328 ], [ %6347, %6340 ], [ 0.000000e+00, %6338 ]
  %6350 = fsub fast float -0.000000e+00, %6349
  %6351 = select i1 %6292, float -0.000000e+00, float %6350
  %6352 = fmul fast float %4300, 0x3FF7154760000000
  %6353 = fmul fast float %6352, %6351
  %6354 = fmul fast float %4301, 0x3FF7154760000000
  %6355 = fmul fast float %6354, %6351
  %6356 = fmul fast float %4302, 0x3FF7154760000000
  %6357 = fmul fast float %6356, %6351
  %6358 = call float @dx.op.unary.f32(i32 21, float %6353)  ; Exp(value)
  %6359 = call float @dx.op.unary.f32(i32 21, float %6355)  ; Exp(value)
  %6360 = call float @dx.op.unary.f32(i32 21, float %6357)  ; Exp(value)
  %6361 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6362 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6363 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6364 = fmul fast float %6288, %6361
  %6365 = fmul fast float %6289, %6362
  %6366 = fmul fast float %6290, %6363
  %6367 = fsub fast float %5455, %5091
  %6368 = fsub fast float %5456, %5090
  %6369 = fsub fast float %5457, %5089
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6367, float %6368, float %6369, float %6367, float %6368, float %6369)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.unary.f32(i32 25, float %6370)  ; Rsqrt(value)
  %6372 = fmul fast float %6371, %6367
  %6373 = fmul fast float %6371, %6368
  %6374 = fmul fast float %6371, %6369
  %6375 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6376 = call float @dx.op.dot3.f32(i32 55, float %5088, float %5087, float %5086, float %6372, float %6373, float %6374)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6378 = fmul fast float %6377, %6377
  %6379 = fmul fast float %6378, %5119
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = fmul fast float %6380, %6377
  %6382 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %6372, float %6373, float %6374)  ; Dot3(ax,ay,az,bx,by,bz)
  %6383 = fmul fast float %6382, %6382
  %6384 = call float @dx.op.unary.f32(i32 6, float %6375)  ; FAbs(value)
  %6385 = fsub fast float 1.000000e+00, %5101
  %6386 = call float @dx.op.binary.f32(i32 35, float %6385, float 0x3F847AE140000000)  ; FMax(a,b)
  %6387 = fmul fast float %6386, %6386
  %6388 = fmul fast float %6387, %6387
  %6389 = fsub fast float 1.000000e+00, %6388
  %6390 = fmul fast float %5106, %5106
  %6391 = fmul fast float %6390, %6389
  %6392 = fadd fast float %6391, %6388
  %6393 = bitcast float %6392 to i32
  %6394 = ashr i32 %6393, 1
  %6395 = add nsw i32 %6394, 532487669
  %6396 = bitcast i32 %6395 to float
  %6397 = fadd fast float %6396, %5106
  %6398 = fmul fast float %6388, %6383
  %6399 = fsub fast float 1.000000e+00, %6383
  %6400 = fadd fast float %6399, %6398
  %6401 = fmul fast float %6384, %6384
  %6402 = fmul fast float %6401, %6389
  %6403 = fadd fast float %6402, %6388
  %6404 = bitcast float %6403 to i32
  %6405 = ashr i32 %6404, 1
  %6406 = add nsw i32 %6405, 532487669
  %6407 = bitcast i32 %6406 to float
  %6408 = fadd fast float %6407, %6384
  %6409 = fmul fast float %6400, %6400
  %6410 = fmul fast float %6409, %6397
  %6411 = fmul fast float %6410, %6408
  %6412 = fdiv fast float 0x3FF0A00000000000, %6411
  %6413 = fmul fast float %6412, %6388
  %6414 = call float @dx.op.unary.f32(i32 6, float %6376)  ; FAbs(value)
  %6415 = fsub fast float 1.000000e+00, %6414
  %6416 = bitcast float %6415 to i32
  %6417 = sitofp i32 %6416 to float
  %6418 = fmul fast float %6417, 5.000000e+00
  %6419 = fadd fast float %6418, 0xC1EFBF8940000000
  %6420 = fptosi float %6419 to i32
  %6421 = bitcast i32 %6420 to float
  %6422 = fsub fast float 1.000000e+00, %5092
  %6423 = fsub fast float 1.000000e+00, %5093
  %6424 = fsub fast float 1.000000e+00, %5104
  %6425 = fmul fast float %6421, %6422
  %6426 = fmul fast float %6421, %6423
  %6427 = fmul fast float %6421, %6424
  %6428 = fadd fast float %6425, %5092
  %6429 = fadd fast float %6426, %5093
  %6430 = fadd fast float %6427, %5104
  br i1 %5366, label %6431, label %6454

; <label>:6431                                    ; preds = %6348
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3897, float %6414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.ResRet.f32 %6432, 2
  %6436 = fadd fast float %6433, -5.000000e-01
  %6437 = fadd fast float %6434, -5.000000e-01
  %6438 = fadd fast float %6435, -5.000000e-01
  %6439 = fmul fast float %5092, 4.000000e+00
  %6440 = fmul fast float %6439, %6422
  %6441 = fmul fast float %6440, %6436
  %6442 = fmul fast float %5093, 4.000000e+00
  %6443 = fmul fast float %6442, %6423
  %6444 = fmul fast float %6443, %6437
  %6445 = fmul fast float %5104, 4.000000e+00
  %6446 = fmul fast float %6445, %6424
  %6447 = fmul fast float %6446, %6438
  %6448 = fadd fast float %6441, %6428
  %6449 = fadd fast float %6444, %6429
  %6450 = fadd fast float %6447, %6430
  %6451 = call float @dx.op.unary.f32(i32 7, float %6448)  ; Saturate(value)
  %6452 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  %6453 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  br label %6454

; <label>:6454                                    ; preds = %6431, %6348
  %6455 = phi float [ %6451, %6431 ], [ %6428, %6348 ]
  %6456 = phi float [ %6452, %6431 ], [ %6429, %6348 ]
  %6457 = phi float [ %6453, %6431 ], [ %6430, %6348 ]
  %6458 = fmul fast float %6375, 9.843750e-01
  %6459 = fadd fast float %6458, 7.812500e-03
  %6460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6459, float %5356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 3
  %6463 = fmul fast float %6461, %5092
  %6464 = fmul fast float %6461, %5093
  %6465 = fmul fast float %6461, %5104
  %6466 = fadd fast float %6463, %6462
  %6467 = fadd fast float %6464, %6462
  %6468 = fadd fast float %6465, %6462
  br i1 %5366, label %6469, label %6492

; <label>:6469                                    ; preds = %6454
  %6470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3897, float %6375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.ResRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.ResRet.f32 %6470, 2
  %6474 = fadd fast float %6471, -5.000000e-01
  %6475 = fadd fast float %6472, -5.000000e-01
  %6476 = fadd fast float %6473, -5.000000e-01
  %6477 = fmul fast float %5092, 4.000000e+00
  %6478 = fmul fast float %6477, %6422
  %6479 = fmul fast float %6478, %6474
  %6480 = fmul fast float %5093, 4.000000e+00
  %6481 = fmul fast float %6480, %6423
  %6482 = fmul fast float %6481, %6475
  %6483 = fmul fast float %5104, 4.000000e+00
  %6484 = fmul fast float %6483, %6424
  %6485 = fmul fast float %6484, %6476
  %6486 = fadd fast float %6479, %6466
  %6487 = fadd fast float %6482, %6467
  %6488 = fadd fast float %6485, %6468
  %6489 = call float @dx.op.unary.f32(i32 7, float %6486)  ; Saturate(value)
  %6490 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  %6491 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  br label %6492

; <label>:6492                                    ; preds = %6469, %6454
  %6493 = phi float [ %6489, %6469 ], [ %6466, %6454 ]
  %6494 = phi float [ %6490, %6469 ], [ %6467, %6454 ]
  %6495 = phi float [ %6491, %6469 ], [ %6468, %6454 ]
  %6496 = call float @dx.op.binary.f32(i32 35, float %6494, float %6495)  ; FMax(a,b)
  %6497 = call float @dx.op.binary.f32(i32 35, float %6493, float %6496)  ; FMax(a,b)
  %6498 = fsub fast float 1.000000e+00, %6497
  %6499 = fmul fast float %6455, %6413
  %6500 = fmul fast float %6456, %6413
  %6501 = fmul fast float %6457, %6413
  %6502 = fsub fast float 1.000000e+00, %6376
  %6503 = bitcast float %6502 to i32
  %6504 = sitofp i32 %6503 to float
  %6505 = fmul fast float %6504, 5.000000e+00
  %6506 = fadd fast float %6505, 0xC1EFBF8940000000
  %6507 = fptosi float %6506 to i32
  %6508 = bitcast i32 %6507 to float
  %6509 = fmul fast float %6508, %3898
  %6510 = fmul fast float %6498, %6509
  %6511 = fmul fast float %6510, %5416
  %6512 = fmul fast float %6510, %5417
  %6513 = fmul fast float %6510, %5418
  %6514 = fadd fast float %6511, %6499
  %6515 = fadd fast float %6512, %6500
  %6516 = fadd fast float %6513, %6501
  %6517 = fmul fast float %6381, %6364
  %6518 = fmul fast float %6517, %6498
  %6519 = fmul fast float %6381, %6365
  %6520 = fmul fast float %6519, %6498
  %6521 = fmul fast float %6381, %6366
  %6522 = fmul fast float %6521, %6498
  %6523 = fmul fast float %6517, %6514
  %6524 = fmul fast float %6519, %6515
  %6525 = fmul fast float %6521, %6516
  %6526 = fadd fast float %6518, %5400
  %6527 = fmul fast float %6526, %3894
  %6528 = fadd fast float %6520, %5401
  %6529 = fmul fast float %6528, %3894
  %6530 = fadd fast float %6522, %5402
  %6531 = fmul fast float %6530, %3894
  %6532 = fadd fast float %6523, %5443
  %6533 = fmul fast float %6532, %3894
  %6534 = fadd fast float %6524, %5446
  %6535 = fmul fast float %6534, %3894
  %6536 = fadd fast float %6525, %5449
  %6537 = fmul fast float %6536, %3894
  br label %6538

; <label>:6538                                    ; preds = %6492, %6282, %5393
  %6539 = phi float [ %5444, %5393 ], [ %5444, %6282 ], [ %6533, %6492 ]
  %6540 = phi float [ %5447, %5393 ], [ %5447, %6282 ], [ %6535, %6492 ]
  %6541 = phi float [ %5450, %5393 ], [ %5450, %6282 ], [ %6537, %6492 ]
  %6542 = phi float [ %5439, %5393 ], [ %5439, %6282 ], [ %6527, %6492 ]
  %6543 = phi float [ %5440, %5393 ], [ %5440, %6282 ], [ %6529, %6492 ]
  %6544 = phi float [ %5441, %5393 ], [ %5441, %6282 ], [ %6531, %6492 ]
  %6545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.i32 %6545, 0
  %6547 = icmp eq i32 %6546, 0
  br i1 %6547, label %7168, label %6548

; <label>:6548                                    ; preds = %6538
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 2
  %6551 = extractvalue %dx.types.CBufRet.f32 %6549, 3
  %6552 = fmul fast float %6550, %113
  %6553 = fmul fast float %6551, %114
  %6554 = fptoui float %6552 to i32
  %6555 = fptoui float %6553 to i32
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6560 = fadd fast float %104, -4.000000e+00
  %6561 = call float @dx.op.binary.f32(i32 35, float %6560, float 0.000000e+00)  ; FMax(a,b)
  %6562 = fadd fast float %6561, %6557
  %6563 = fmul fast float %6562, %6558
  %6564 = call float @dx.op.unary.f32(i32 23, float %6563)  ; Log(value)
  %6565 = fmul fast float %6564, %6559
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6568 = fmul fast float %6565, %6567
  %6569 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.i32 %6570, 1
  %6572 = add i32 %6571, -1
  %6573 = uitofp i32 %6571 to float
  %6574 = fmul fast float %6573, %6569
  %6575 = fptoui float %6574 to i32
  %6576 = call i32 @dx.op.binary.i32(i32 40, i32 %6575, i32 %6572)  ; UMin(a,b)
  %6577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.i32 %6577, 2
  %6579 = extractvalue %dx.types.CBufRet.i32 %6577, 3
  %6580 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6555, i32 %6578, i32 %6554)  ; UMad(a,b,c)
  %6581 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6576, i32 %6579, i32 %6580)  ; UMad(a,b,c)
  %6582 = add nsw i32 %6546, -1
  %6583 = call i32 @dx.op.binary.i32(i32 37, i32 %6582, i32 0)  ; IMax(a,b)
  %6584 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %6585 = fptoui float %6584 to i32
  %6586 = lshr i32 %6585, 5
  %6587 = call i32 @dx.op.binary.i32(i32 40, i32 %6586, i32 8191)  ; UMin(a,b)
  %6588 = shl i32 %6587, 2
  %6589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6588, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.i32 %6589, 0
  %6591 = lshr i32 %6590, 16
  %6592 = and i32 %6590, 65535
  %6593 = lshr i32 %6590, 21
  %6594 = lshr i32 %6592, 5
  %6595 = call i32 @dx.op.binary.i32(i32 40, i32 %6594, i32 %6583)  ; UMin(a,b)
  %6596 = icmp ugt i32 %6593, %6595
  br i1 %6596, label %7168, label %6597

; <label>:6597                                    ; preds = %6548
  br label %6598

; <label>:6598                                    ; preds = %7158, %6597
  %6599 = phi i32 [ %7165, %7158 ], [ %6593, %6597 ]
  %6600 = phi float [ %7159, %7158 ], [ %6539, %6597 ]
  %6601 = phi float [ %7160, %7158 ], [ %6540, %6597 ]
  %6602 = phi float [ %7161, %7158 ], [ %6541, %6597 ]
  %6603 = phi float [ %7162, %7158 ], [ %6542, %6597 ]
  %6604 = phi float [ %7163, %7158 ], [ %6543, %6597 ]
  %6605 = phi float [ %7164, %7158 ], [ %6544, %6597 ]
  %6606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.i32 %6606, 0
  %6608 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6581, i32 %6607, i32 %6599)  ; UMad(a,b,c)
  %6609 = shl i32 %6608, 2
  %6610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6609, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.i32 %6610, 0
  %6612 = shl i32 %6599, 5
  %6613 = sub nsw i32 %6591, %6612
  %6614 = call i32 @dx.op.binary.i32(i32 37, i32 %6613, i32 0)  ; IMax(a,b)
  %6615 = call i32 @dx.op.binary.i32(i32 38, i32 %6614, i32 31)  ; IMin(a,b)
  %6616 = sub nsw i32 1, %6591
  %6617 = add nsw i32 %6616, %6592
  %6618 = call i32 @dx.op.binary.i32(i32 37, i32 %6617, i32 0)  ; IMax(a,b)
  %6619 = call i32 @dx.op.binary.i32(i32 38, i32 %6618, i32 32)  ; IMin(a,b)
  %6620 = and i32 %6619, 31
  %6621 = shl i32 -1, %6620
  %6622 = xor i32 %6621, -1
  %6623 = and i32 %6615, 31
  %6624 = shl i32 %6622, %6623
  %6625 = icmp eq i32 %6619, 32
  %6626 = select i1 %6625, i32 -1, i32 %6624
  %6627 = and i32 %6626, %6611
  %6628 = icmp eq i32 %6627, 0
  br i1 %6628, label %7158, label %6629

; <label>:6629                                    ; preds = %6598
  br label %6630

; <label>:6630                                    ; preds = %6764, %6629
  %6631 = phi i32 [ %6642, %6764 ], [ %6627, %6629 ]
  %6632 = phi float [ %6765, %6764 ], [ %6600, %6629 ]
  %6633 = phi float [ %6766, %6764 ], [ %6601, %6629 ]
  %6634 = phi float [ %6767, %6764 ], [ %6602, %6629 ]
  %6635 = phi float [ %6768, %6764 ], [ %6603, %6629 ]
  %6636 = phi float [ %6769, %6764 ], [ %6604, %6629 ]
  %6637 = phi float [ %6770, %6764 ], [ %6605, %6629 ]
  %6638 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6631)  ; FirstbitLo(value)
  %6639 = add i32 %6638, %6612
  %6640 = and i32 %6638, 31
  %6641 = shl i32 1, %6640
  %6642 = xor i32 %6641, %6631
  %6643 = mul i32 %6639, 112
  %6644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6643, i32 undef)  ; BufferLoad(srv,index,wot)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.ResRet.f32 %6644, 2
  %6648 = or i32 %6643, 12
  %6649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6648, i32 undef)  ; BufferLoad(srv,index,wot)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = add i32 %6643, 16
  %6652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6651, i32 undef)  ; BufferLoad(srv,index,wot)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.ResRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.ResRet.f32 %6652, 2
  %6656 = add i32 %6643, 28
  %6657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6656, i32 undef)  ; BufferLoad(srv,index,wot)
  %6658 = extractvalue %dx.types.ResRet.i32 %6657, 0
  %6659 = add i32 %6643, 44
  %6660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6659, i32 undef)  ; BufferLoad(srv,index,wot)
  %6661 = extractvalue %dx.types.ResRet.f32 %6660, 0
  %6662 = add i32 %6643, 48
  %6663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6662, i32 undef)  ; BufferLoad(srv,index,wot)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.ResRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.ResRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.ResRet.f32 %6663, 3
  %6668 = add i32 %6643, 64
  %6669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6668, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = extractvalue %dx.types.ResRet.f32 %6669, 3
  %6674 = add i32 %6643, 80
  %6675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6674, i32 undef)  ; BufferLoad(srv,index,wot)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6675, 2
  %6678 = add i32 %6643, 92
  %6679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6678, i32 undef)  ; BufferLoad(srv,index,wot)
  %6680 = extractvalue %dx.types.ResRet.i32 %6679, 0
  %6681 = call float @dx.op.dot3.f32(i32 55, float %6645, float %6646, float %6647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = select i1 %268, float %6676, float %6645
  %6683 = select i1 %268, float %6681, float %6646
  %6684 = select i1 %268, float %6677, float %6647
  %6685 = and i32 %6680, 65535
  %6686 = uitofp i32 %6685 to float
  %6687 = lshr i32 %6680, 16
  %6688 = uitofp i32 %6687 to float
  %6689 = and i32 %6658, 65535
  %6690 = and i32 %6658, 50331648
  %6691 = icmp eq i32 %6690, 33554432
  %6692 = fsub fast float %6664, %196
  %6693 = fsub fast float %6665, %197
  %6694 = fsub fast float %6666, %198
  %6695 = call float @dx.op.dot3.f32(i32 55, float %6692, float %6693, float %6694, float %6692, float %6693, float %6694)  ; Dot3(ax,ay,az,bx,by,bz)
  %6696 = call float @dx.op.unary.f32(i32 24, float %6695)  ; Sqrt(value)
  %6697 = fdiv fast float 1.000000e+00, %6696
  %6698 = fmul fast float %6697, %6692
  %6699 = fmul fast float %6697, %6693
  %6700 = fmul fast float %6697, %6694
  %6701 = fadd fast float %6696, %6650
  %6702 = fdiv fast float 1.000000e+00, %6701
  %6703 = fmul float %6661, %6702
  %6704 = fmul float %6703, %6703
  %6705 = call float @dx.op.unary.f32(i32 7, float %6704)  ; Saturate(value)
  br i1 %6691, label %6706, label %6727

; <label>:6706                                    ; preds = %6630
  %6707 = fmul fast float %6672, %6653
  %6708 = fmul fast float %6672, %6654
  %6709 = fmul fast float %6672, %6655
  %6710 = fadd fast float %6692, %6707
  %6711 = fadd fast float %6693, %6708
  %6712 = fadd fast float %6694, %6709
  %6713 = call float @dx.op.dot3.f32(i32 55, float %6710, float %6711, float %6712, float %6710, float %6711, float %6712)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = call float @dx.op.unary.f32(i32 25, float %6713)  ; Rsqrt(value)
  %6715 = fmul fast float %6714, %6710
  %6716 = fmul fast float %6714, %6711
  %6717 = fmul fast float %6714, %6712
  %6718 = fsub fast float %196, %6664
  %6719 = fsub fast float %197, %6665
  %6720 = fsub fast float %198, %6666
  %6721 = fsub fast float -0.000000e+00, %6718
  %6722 = fsub fast float -0.000000e+00, %6719
  %6723 = fsub fast float -0.000000e+00, %6720
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6721, float %6722, float %6723, float %6653, float %6654, float %6655)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = fcmp fast ogt float %6724, 0.000000e+00
  %6726 = uitofp i1 %6725 to float
  br label %6727

; <label>:6727                                    ; preds = %6706, %6630
  %6728 = phi float [ %6726, %6706 ], [ 1.000000e+00, %6630 ]
  %6729 = phi float [ %6715, %6706 ], [ %6698, %6630 ]
  %6730 = phi float [ %6716, %6706 ], [ %6699, %6630 ]
  %6731 = phi float [ %6717, %6706 ], [ %6700, %6630 ]
  %6732 = call float @dx.op.dot3.f32(i32 55, float %6653, float %6654, float %6655, float %6729, float %6730, float %6731)  ; Dot3(ax,ay,az,bx,by,bz)
  %6733 = fmul fast float %6732, %6732
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = fsub fast float 1.000000e+00, %6734
  %6736 = fmul fast float %6735, 5.000000e-01
  %6737 = fcmp fast ogt float %6732, 0.000000e+00
  %6738 = fsub fast float 1.000000e+00, %6736
  %6739 = select i1 %6737, float %6736, float %6738
  %6740 = fmul fast float %6739, %6688
  %6741 = fadd fast float %6740, %6686
  %6742 = fmul fast float %6741, 0x3EF0001000000000
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6742, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = fmul fast float %6732, %6670
  %6746 = fadd fast float %6745, %6671
  %6747 = call float @dx.op.unary.f32(i32 7, float %6746)  ; Saturate(value)
  %6748 = select i1 %6691, float 1.000000e+00, float %6747
  %6749 = select i1 %6691, float %6747, float 1.000000e+00
  %6750 = fmul fast float %6696, %6667
  %6751 = fsub fast float 1.000000e+00, %6750
  %6752 = fmul fast float %6751, %6673
  %6753 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6754 = fmul fast float %6753, %6749
  %6755 = fmul fast float %6754, 2.000000e+00
  %6756 = fsub fast float 3.000000e+00, %6755
  %6757 = fmul fast float %6744, %6728
  %6758 = fmul fast float %6754, %6754
  %6759 = fmul fast float %6758, %6757
  %6760 = fmul fast float %6759, %6756
  %6761 = call float @dx.op.binary.f32(i32 36, float %6760, float %6760)  ; FMin(a,b)
  %6762 = call float @dx.op.binary.f32(i32 36, float %6760, float %6761)  ; FMin(a,b)
  %6763 = fcmp fast ogt float %6762, 0.000000e+00
  br i1 %6763, label %6772, label %6764, !dx.controlflow.hints !124

; <label>:6764                                    ; preds = %7114, %6872, %6727
  %6765 = phi float [ %6632, %6872 ], [ %6632, %6727 ], [ %7154, %7114 ]
  %6766 = phi float [ %6633, %6872 ], [ %6633, %6727 ], [ %7155, %7114 ]
  %6767 = phi float [ %6634, %6872 ], [ %6634, %6727 ], [ %7156, %7114 ]
  %6768 = phi float [ %6635, %6872 ], [ %6635, %6727 ], [ %7148, %7114 ]
  %6769 = phi float [ %6636, %6872 ], [ %6636, %6727 ], [ %7149, %7114 ]
  %6770 = phi float [ %6637, %6872 ], [ %6637, %6727 ], [ %7150, %7114 ]
  %6771 = icmp eq i32 %6631, %6641
  br i1 %6771, label %7157, label %6630

; <label>:6772                                    ; preds = %6727
  %6773 = icmp eq i32 %6689, 255
  br i1 %6773, label %6872, label %6774, !dx.controlflow.hints !125

; <label>:6774                                    ; preds = %6772
  %6775 = mul nuw nsw i32 %6689, 176
  %6776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6775, i32 undef)  ; BufferLoad(srv,index,wot)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.ResRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.ResRet.f32 %6776, 2
  %6780 = extractvalue %dx.types.ResRet.f32 %6776, 3
  %6781 = add nuw nsw i32 %6775, 16
  %6782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6781, i32 undef)  ; BufferLoad(srv,index,wot)
  %6783 = extractvalue %dx.types.ResRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.ResRet.f32 %6782, 1
  %6785 = add nuw nsw i32 %6775, 32
  %6786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6785, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.ResRet.f32 %6786, 1
  %6789 = extractvalue %dx.types.ResRet.f32 %6786, 2
  %6790 = add nuw nsw i32 %6775, 48
  %6791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6790, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.f32 %6791, 1
  %6794 = extractvalue %dx.types.ResRet.f32 %6791, 2
  %6795 = extractvalue %dx.types.ResRet.f32 %6791, 3
  %6796 = add nuw nsw i32 %6775, 64
  %6797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6796, i32 undef)  ; BufferLoad(srv,index,wot)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.ResRet.f32 %6797, 2
  %6801 = extractvalue %dx.types.ResRet.f32 %6797, 3
  %6802 = add nuw nsw i32 %6775, 80
  %6803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6802, i32 undef)  ; BufferLoad(srv,index,wot)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = extractvalue %dx.types.ResRet.f32 %6803, 3
  %6808 = add nuw nsw i32 %6775, 96
  %6809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6808, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.ResRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.ResRet.f32 %6809, 3
  %6814 = bitcast float %6784 to i32
  %6815 = fmul fast float %6789, %122
  %6816 = fmul fast float %6789, %124
  %6817 = fmul fast float %6789, %126
  %6818 = fadd fast float %6815, %196
  %6819 = fadd fast float %6816, %197
  %6820 = fadd fast float %6817, %198
  %6821 = fmul fast float %6818, %6792
  %6822 = call float @dx.op.tertiary.f32(i32 46, float %6819, float %6798, float %6821)  ; FMad(a,b,c)
  %6823 = call float @dx.op.tertiary.f32(i32 46, float %6820, float %6804, float %6822)  ; FMad(a,b,c)
  %6824 = fadd fast float %6823, %6810
  %6825 = fmul fast float %6818, %6793
  %6826 = call float @dx.op.tertiary.f32(i32 46, float %6819, float %6799, float %6825)  ; FMad(a,b,c)
  %6827 = call float @dx.op.tertiary.f32(i32 46, float %6820, float %6805, float %6826)  ; FMad(a,b,c)
  %6828 = fadd fast float %6827, %6811
  %6829 = fmul fast float %6818, %6794
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6819, float %6800, float %6829)  ; FMad(a,b,c)
  %6831 = call float @dx.op.tertiary.f32(i32 46, float %6820, float %6806, float %6830)  ; FMad(a,b,c)
  %6832 = fadd fast float %6831, %6812
  %6833 = fmul fast float %6818, %6795
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6819, float %6801, float %6833)  ; FMad(a,b,c)
  %6835 = call float @dx.op.tertiary.f32(i32 46, float %6820, float %6807, float %6834)  ; FMad(a,b,c)
  %6836 = fadd fast float %6835, %6813
  %6837 = fdiv fast float %6824, %6836
  %6838 = fdiv fast float %6828, %6836
  %6839 = fdiv fast float %6832, %6836
  %6840 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6839)  ; FMax(a,b)
  %6841 = fmul fast float %279, 0x401921FB60000000
  %6842 = call float @dx.op.unary.f32(i32 13, float %6841)  ; Sin(value)
  %6843 = call float @dx.op.unary.f32(i32 12, float %6841)  ; Cos(value)
  %6844 = fsub fast float -0.000000e+00, %6842
  %6845 = fmul fast float %6779, 5.000000e-01
  %6846 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6847 = call float @dx.op.unary.f32(i32 22, float %6846)  ; Frc(value)
  %6848 = fmul fast float %6847, 0x404A7DD040000000
  %6849 = call float @dx.op.unary.f32(i32 22, float %6848)  ; Frc(value)
  %6850 = fmul fast float %6849, %6788
  %6851 = fadd fast float %6850, %6845
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6851, float %6844, float 0.000000e+00)  ; FMad(a,b,c)
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %6851, float %6843, float 0.000000e+00)  ; FMad(a,b,c)
  %6854 = fadd fast float %6852, %6837
  %6855 = fadd fast float %6853, %6838
  %6856 = fmul fast float %6854, %6783
  %6857 = fmul fast float %6855, %6783
  %6858 = call float @dx.op.binary.f32(i32 35, float %6856, float %6779)  ; FMax(a,b)
  %6859 = call float @dx.op.binary.f32(i32 35, float %6857, float %6779)  ; FMax(a,b)
  %6860 = call float @dx.op.binary.f32(i32 36, float %6858, float %6780)  ; FMin(a,b)
  %6861 = call float @dx.op.binary.f32(i32 36, float %6859, float %6780)  ; FMin(a,b)
  %6862 = fadd fast float %6860, %6777
  %6863 = fadd fast float %6861, %6778
  %6864 = uitofp i32 %6814 to float
  %6865 = fadd fast float %6840, %6787
  %6866 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6862, float %6863, float %6864, float undef, i32 0, i32 0, i32 undef, float %6865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = fadd fast float %6867, -1.000000e+00
  %6869 = fmul fast float %6868, %6748
  %6870 = fadd fast float %6869, 1.000000e+00
  %6871 = fmul fast float %6870, %6760
  br label %6872

; <label>:6872                                    ; preds = %6774, %6772
  %6873 = phi float [ %6871, %6774 ], [ %6760, %6772 ]
  %6874 = call float @dx.op.binary.f32(i32 36, float %6873, float %6873)  ; FMin(a,b)
  %6875 = call float @dx.op.binary.f32(i32 36, float %6873, float %6874)  ; FMin(a,b)
  %6876 = fcmp fast ogt float %6875, 0.000000e+00
  br i1 %6876, label %6877, label %6764, !dx.controlflow.hints !126

; <label>:6877                                    ; preds = %6872
  %6878 = fmul fast float %6873, %6682
  %6879 = fmul fast float %6873, %6683
  %6880 = fmul fast float %6873, %6684
  %6881 = fsub fast float %6666, %4299
  %6882 = fcmp fast ogt float %6881, 0.000000e+00
  %6883 = fsub fast float %198, %4299
  %6884 = fcmp fast ogt float %6883, 0.000000e+00
  %6885 = xor i1 %6884, %6882
  %6886 = fsub fast float %4299, %6666
  %6887 = fmul fast float %6886, 2.000000e+00
  %6888 = fadd fast float %6887, %6666
  %6889 = select i1 %6885, float %6666, float %6888
  %6890 = fsub fast float %6889, %198
  %6891 = call float @dx.op.dot3.f32(i32 55, float %6692, float %6693, float %6890, float %6692, float %6693, float %6890)  ; Dot3(ax,ay,az,bx,by,bz)
  %6892 = call float @dx.op.unary.f32(i32 25, float %6891)  ; Rsqrt(value)
  %6893 = fmul fast float %6892, %6692
  %6894 = fmul fast float %6892, %6693
  %6895 = fmul fast float %6892, %6890
  %6896 = fsub fast float %4299, %198
  %6897 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6898 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6893, float %6894, float %6895)  ; Dot3(ax,ay,az,bx,by,bz)
  %6899 = fdiv fast float 1.000000e+00, %6898
  %6900 = fmul fast float %6899, %6897
  %6901 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6883, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = fcmp fast ogt float %6901, 0.000000e+00
  %6903 = fcmp fast olt float %6901, 0.000000e+00
  %6904 = zext i1 %6902 to i32
  %6905 = zext i1 %6903 to i32
  %6906 = sub nsw i32 %6904, %6905
  %6907 = sitofp i32 %6906 to float
  %6908 = fsub fast float %6889, %4299
  %6909 = call float @dx.op.dot3.f32(i32 55, float %6692, float %6693, float %6908, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6910 = fcmp fast ogt float %6909, 0.000000e+00
  %6911 = fcmp fast olt float %6909, 0.000000e+00
  %6912 = zext i1 %6910 to i32
  %6913 = zext i1 %6911 to i32
  %6914 = sub nsw i32 %6912, %6913
  %6915 = sitofp i32 %6914 to float
  %6916 = fcmp fast une float %6907, %6915
  br i1 %6916, label %6917, label %6927

; <label>:6917                                    ; preds = %6877
  %6918 = fmul fast float %6900, %6895
  %6919 = fmul fast float %6900, %6894
  %6920 = fmul fast float %6900, %6893
  %6921 = fmul fast float %6920, %6920
  %6922 = fmul fast float %6919, %6919
  %6923 = fadd fast float %6921, %6922
  %6924 = fmul fast float %6918, %6918
  %6925 = fadd fast float %6923, %6924
  %6926 = call float @dx.op.unary.f32(i32 24, float %6925)  ; Sqrt(value)
  br label %6939

; <label>:6927                                    ; preds = %6877
  %6928 = icmp slt i32 %6906, 0
  br i1 %6928, label %6929, label %6939

; <label>:6929                                    ; preds = %6927
  %6930 = fsub fast float %196, %6664
  %6931 = fsub fast float %197, %6665
  %6932 = fsub fast float %198, %6889
  %6933 = fmul fast float %6930, %6930
  %6934 = fmul fast float %6931, %6931
  %6935 = fadd fast float %6933, %6934
  %6936 = fmul fast float %6932, %6932
  %6937 = fadd fast float %6935, %6936
  %6938 = call float @dx.op.unary.f32(i32 24, float %6937)  ; Sqrt(value)
  br label %6939

; <label>:6939                                    ; preds = %6929, %6927, %6917
  %6940 = phi float [ %6926, %6917 ], [ %6938, %6929 ], [ 0.000000e+00, %6927 ]
  %6941 = and i1 %6884, %6882
  %6942 = fsub fast float -0.000000e+00, %6940
  %6943 = select i1 %6941, float -0.000000e+00, float %6942
  %6944 = fmul fast float %4300, 0x3FF7154760000000
  %6945 = fmul fast float %6944, %6943
  %6946 = fmul fast float %4301, 0x3FF7154760000000
  %6947 = fmul fast float %6946, %6943
  %6948 = fmul fast float %4302, 0x3FF7154760000000
  %6949 = fmul fast float %6948, %6943
  %6950 = call float @dx.op.unary.f32(i32 21, float %6945)  ; Exp(value)
  %6951 = call float @dx.op.unary.f32(i32 21, float %6947)  ; Exp(value)
  %6952 = call float @dx.op.unary.f32(i32 21, float %6949)  ; Exp(value)
  %6953 = call float @dx.op.unary.f32(i32 7, float %6950)  ; Saturate(value)
  %6954 = call float @dx.op.unary.f32(i32 7, float %6951)  ; Saturate(value)
  %6955 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  %6956 = fmul fast float %6878, %6953
  %6957 = fmul fast float %6879, %6954
  %6958 = fmul fast float %6880, %6955
  %6959 = fsub fast float %6698, %5091
  %6960 = fsub fast float %6699, %5090
  %6961 = fsub fast float %6700, %5089
  %6962 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6960, float %6961, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6963 = call float @dx.op.unary.f32(i32 25, float %6962)  ; Rsqrt(value)
  %6964 = fmul fast float %6963, %6959
  %6965 = fmul fast float %6963, %6960
  %6966 = fmul fast float %6963, %6961
  %6967 = call float @dx.op.dot3.f32(i32 55, float %6698, float %6699, float %6700, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6968 = call float @dx.op.dot3.f32(i32 55, float %5088, float %5087, float %5086, float %6964, float %6965, float %6966)  ; Dot3(ax,ay,az,bx,by,bz)
  %6969 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  %6970 = fmul fast float %6969, %6705
  %6971 = fmul fast float %6969, %6969
  %6972 = fmul fast float %6971, %5119
  %6973 = call float @dx.op.unary.f32(i32 7, float %6972)  ; Saturate(value)
  %6974 = fmul fast float %6970, %6973
  %6975 = bitcast float %6695 to i32
  %6976 = ashr i32 %6975, 1
  %6977 = sub nsw i32 1597463007, %6976
  %6978 = bitcast i32 %6977 to float
  %6979 = fmul fast float %6978, %6692
  %6980 = fmul fast float %6978, %6693
  %6981 = fmul fast float %6978, %6694
  %6982 = fsub fast float %6979, %5091
  %6983 = fsub fast float %6980, %5090
  %6984 = fsub fast float %6981, %5089
  %6985 = call float @dx.op.dot3.f32(i32 55, float %6982, float %6983, float %6984, float %6982, float %6983, float %6984)  ; Dot3(ax,ay,az,bx,by,bz)
  %6986 = call float @dx.op.unary.f32(i32 25, float %6985)  ; Rsqrt(value)
  %6987 = fmul fast float %6982, %6986
  %6988 = fmul fast float %6983, %6986
  %6989 = fmul fast float %6984, %6986
  %6990 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %6987, float %6988, float %6989)  ; Dot3(ax,ay,az,bx,by,bz)
  %6991 = fmul fast float %6990, %6990
  %6992 = call float @dx.op.unary.f32(i32 6, float %6967)  ; FAbs(value)
  %6993 = fsub fast float 1.000000e+00, %5101
  %6994 = call float @dx.op.binary.f32(i32 35, float %6993, float 0x3F847AE140000000)  ; FMax(a,b)
  %6995 = fmul fast float %6994, %6994
  %6996 = fmul fast float %6995, %6995
  %6997 = fsub fast float 1.000000e+00, %6996
  %6998 = fmul fast float %5106, %5106
  %6999 = fmul fast float %6998, %6997
  %7000 = fadd fast float %6999, %6996
  %7001 = bitcast float %7000 to i32
  %7002 = ashr i32 %7001, 1
  %7003 = add nsw i32 %7002, 532487669
  %7004 = bitcast i32 %7003 to float
  %7005 = fadd fast float %7004, %5106
  %7006 = fmul fast float %6996, %6991
  %7007 = fsub fast float 1.000000e+00, %6991
  %7008 = fadd fast float %7007, %7006
  %7009 = fmul fast float %6992, %6992
  %7010 = fmul fast float %7009, %6997
  %7011 = fadd fast float %7010, %6996
  %7012 = bitcast float %7011 to i32
  %7013 = ashr i32 %7012, 1
  %7014 = add nsw i32 %7013, 532487669
  %7015 = bitcast i32 %7014 to float
  %7016 = fadd fast float %7015, %6992
  %7017 = fmul fast float %7008, %7008
  %7018 = fmul fast float %7017, %7005
  %7019 = fmul fast float %7018, %7016
  %7020 = fdiv fast float 1.000000e+00, %7019
  %7021 = bitcast float %6996 to i32
  %7022 = sitofp i32 %7021 to float
  %7023 = fmul fast float %7022, 0x3FE7F73180000000
  %7024 = fadd fast float %7023, 0x41AFE27C40000000
  %7025 = fptosi float %7024 to i32
  %7026 = bitcast i32 %7025 to float
  %7027 = fmul fast float %6661, 0x3FD80E9D60000000
  %7028 = fmul fast float %7027, %6978
  %7029 = fadd fast float %7026, %7028
  %7030 = bitcast float %7029 to i32
  %7031 = sub nsw i32 2129859010, %7030
  %7032 = bitcast i32 %7031 to float
  %7033 = fmul fast float %6996, %7020
  %7034 = fmul fast float %7033, %7026
  %7035 = fmul fast float %7034, %7032
  %7036 = call float @dx.op.unary.f32(i32 6, float %6968)  ; FAbs(value)
  %7037 = fsub fast float 1.000000e+00, %7036
  %7038 = bitcast float %7037 to i32
  %7039 = sitofp i32 %7038 to float
  %7040 = fmul fast float %7039, 5.000000e+00
  %7041 = fadd fast float %7040, 0xC1EFBF8940000000
  %7042 = fptosi float %7041 to i32
  %7043 = bitcast i32 %7042 to float
  %7044 = fsub fast float 1.000000e+00, %5092
  %7045 = fsub fast float 1.000000e+00, %5093
  %7046 = fsub fast float 1.000000e+00, %5104
  %7047 = fmul fast float %7043, %7044
  %7048 = fmul fast float %7043, %7045
  %7049 = fmul fast float %7043, %7046
  %7050 = fadd fast float %7047, %5092
  %7051 = fadd fast float %7048, %5093
  %7052 = fadd fast float %7049, %5104
  br i1 %5366, label %7053, label %7076

; <label>:7053                                    ; preds = %6939
  %7054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3897, float %7036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = fadd fast float %7055, -5.000000e-01
  %7059 = fadd fast float %7056, -5.000000e-01
  %7060 = fadd fast float %7057, -5.000000e-01
  %7061 = fmul fast float %5092, 4.000000e+00
  %7062 = fmul fast float %7061, %7044
  %7063 = fmul fast float %7062, %7058
  %7064 = fmul fast float %5093, 4.000000e+00
  %7065 = fmul fast float %7064, %7045
  %7066 = fmul fast float %7065, %7059
  %7067 = fmul fast float %5104, 4.000000e+00
  %7068 = fmul fast float %7067, %7046
  %7069 = fmul fast float %7068, %7060
  %7070 = fadd fast float %7063, %7050
  %7071 = fadd fast float %7066, %7051
  %7072 = fadd fast float %7069, %7052
  %7073 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7074 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7075 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  br label %7076

; <label>:7076                                    ; preds = %7053, %6939
  %7077 = phi float [ %7073, %7053 ], [ %7050, %6939 ]
  %7078 = phi float [ %7074, %7053 ], [ %7051, %6939 ]
  %7079 = phi float [ %7075, %7053 ], [ %7052, %6939 ]
  %7080 = fmul fast float %6967, 9.843750e-01
  %7081 = fadd fast float %7080, 7.812500e-03
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7081, float %5356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 3
  %7085 = fmul fast float %7083, %5092
  %7086 = fmul fast float %7083, %5093
  %7087 = fmul fast float %7083, %5104
  %7088 = fadd fast float %7085, %7084
  %7089 = fadd fast float %7086, %7084
  %7090 = fadd fast float %7087, %7084
  br i1 %5366, label %7091, label %7114

; <label>:7091                                    ; preds = %7076
  %7092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3897, float %6967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7093 = extractvalue %dx.types.ResRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.ResRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.ResRet.f32 %7092, 2
  %7096 = fadd fast float %7093, -5.000000e-01
  %7097 = fadd fast float %7094, -5.000000e-01
  %7098 = fadd fast float %7095, -5.000000e-01
  %7099 = fmul fast float %5092, 4.000000e+00
  %7100 = fmul fast float %7099, %7044
  %7101 = fmul fast float %7100, %7096
  %7102 = fmul fast float %5093, 4.000000e+00
  %7103 = fmul fast float %7102, %7045
  %7104 = fmul fast float %7103, %7097
  %7105 = fmul fast float %5104, 4.000000e+00
  %7106 = fmul fast float %7105, %7046
  %7107 = fmul fast float %7106, %7098
  %7108 = fadd fast float %7101, %7088
  %7109 = fadd fast float %7104, %7089
  %7110 = fadd fast float %7107, %7090
  %7111 = call float @dx.op.unary.f32(i32 7, float %7108)  ; Saturate(value)
  %7112 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7113 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  br label %7114

; <label>:7114                                    ; preds = %7091, %7076
  %7115 = phi float [ %7111, %7091 ], [ %7088, %7076 ]
  %7116 = phi float [ %7112, %7091 ], [ %7089, %7076 ]
  %7117 = phi float [ %7113, %7091 ], [ %7090, %7076 ]
  %7118 = call float @dx.op.binary.f32(i32 35, float %7116, float %7117)  ; FMax(a,b)
  %7119 = call float @dx.op.binary.f32(i32 35, float %7115, float %7118)  ; FMax(a,b)
  %7120 = fsub fast float 1.000000e+00, %7119
  %7121 = fmul fast float %7077, %7035
  %7122 = fmul fast float %7078, %7035
  %7123 = fmul fast float %7079, %7035
  %7124 = fsub fast float 1.000000e+00, %6968
  %7125 = bitcast float %7124 to i32
  %7126 = sitofp i32 %7125 to float
  %7127 = fmul fast float %7126, 5.000000e+00
  %7128 = fadd fast float %7127, 0xC1EFBF8940000000
  %7129 = fptosi float %7128 to i32
  %7130 = bitcast i32 %7129 to float
  %7131 = fmul fast float %7130, %3898
  %7132 = fmul fast float %7120, %7131
  %7133 = fmul fast float %7132, %5416
  %7134 = fmul fast float %7132, %5417
  %7135 = fmul fast float %7132, %5418
  %7136 = fadd fast float %7133, %7121
  %7137 = fadd fast float %7134, %7122
  %7138 = fadd fast float %7135, %7123
  %7139 = fmul fast float %6956, %3894
  %7140 = fmul fast float %7139, %6974
  %7141 = fmul fast float %7140, %7120
  %7142 = fmul fast float %6957, %3894
  %7143 = fmul fast float %7142, %6974
  %7144 = fmul fast float %7143, %7120
  %7145 = fmul fast float %6958, %3894
  %7146 = fmul fast float %7145, %6974
  %7147 = fmul fast float %7146, %7120
  %7148 = fadd fast float %7141, %6635
  %7149 = fadd fast float %7144, %6636
  %7150 = fadd fast float %7147, %6637
  %7151 = fmul fast float %7140, %7136
  %7152 = fmul fast float %7143, %7137
  %7153 = fmul fast float %7146, %7138
  %7154 = fadd fast float %7151, %6632
  %7155 = fadd fast float %7152, %6633
  %7156 = fadd fast float %7153, %6634
  br label %6764

; <label>:7157                                    ; preds = %6764
  br label %7158

; <label>:7158                                    ; preds = %7157, %6598
  %7159 = phi float [ %6600, %6598 ], [ %6765, %7157 ]
  %7160 = phi float [ %6601, %6598 ], [ %6766, %7157 ]
  %7161 = phi float [ %6602, %6598 ], [ %6767, %7157 ]
  %7162 = phi float [ %6603, %6598 ], [ %6768, %7157 ]
  %7163 = phi float [ %6604, %6598 ], [ %6769, %7157 ]
  %7164 = phi float [ %6605, %6598 ], [ %6770, %7157 ]
  %7165 = add i32 %6599, 1
  %7166 = icmp ugt i32 %7165, %6595
  br i1 %7166, label %7167, label %6598

; <label>:7167                                    ; preds = %7158
  br label %7168

; <label>:7168                                    ; preds = %7167, %6548, %6538
  %7169 = phi float [ %6539, %6538 ], [ %6539, %6548 ], [ %7159, %7167 ]
  %7170 = phi float [ %6540, %6538 ], [ %6540, %6548 ], [ %7160, %7167 ]
  %7171 = phi float [ %6541, %6538 ], [ %6541, %6548 ], [ %7161, %7167 ]
  %7172 = phi float [ %6542, %6538 ], [ %6542, %6548 ], [ %7162, %7167 ]
  %7173 = phi float [ %6543, %6538 ], [ %6543, %6548 ], [ %7163, %7167 ]
  %7174 = phi float [ %6544, %6538 ], [ %6544, %6548 ], [ %7164, %7167 ]
  %7175 = fmul fast float %3894, %3894
  %7176 = fsub fast float 1.000000e+00, %7175
  %7177 = call float @dx.op.dot3.f32(i32 55, float %7176, float %7176, float %7176, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7178 = fsub fast float 1.000000e+00, %7177
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 0
  %7181 = fmul fast float %7180, %5422
  %7182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.f32 %7182, 3
  %7184 = fsub fast float 1.000000e+00, %3902
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = fadd fast float %7174, %3900
  %7187 = fmul fast float %7186, %3902
  %7188 = fmul fast float %7185, %7183
  %7189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.f32 %7189, 3
  %7191 = fmul fast float %7172, %5098
  %7192 = fmul fast float %7173, %5099
  %7193 = fmul fast float %7174, %5100
  %7194 = fcmp fast ogt float %104, %231
  %7195 = and i1 %7194, %4305
  %7196 = or i1 %4311, %7195
  %7197 = icmp eq i32 %4304, 2
  %7198 = fcmp fast ole float %104, %231
  %7199 = and i1 %7198, %7197
  %7200 = or i1 %7199, %7196
  br i1 %7195, label %7201, label %7458

; <label>:7201                                    ; preds = %7168
  %7202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.f32 %7202, 2
  %7204 = extractvalue %dx.types.CBufRet.f32 %7202, 3
  %7205 = fmul fast float %7203, %113
  %7206 = fmul fast float %7204, %114
  %7207 = call float @dx.op.unary.f32(i32 7, float %7205)  ; Saturate(value)
  %7208 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7207, float %7208, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7210 = extractvalue %dx.types.ResRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.ResRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.ResRet.f32 %7209, 2
  %7213 = extractvalue %dx.types.ResRet.f32 %7209, 3
  %7214 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7207, float %7208, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7215 = extractvalue %dx.types.ResRet.f32 %7214, 0
  %7216 = extractvalue %dx.types.ResRet.f32 %7214, 1
  %7217 = extractvalue %dx.types.ResRet.f32 %7214, 2
  %7218 = extractvalue %dx.types.ResRet.f32 %7214, 3
  %7219 = call float @dx.op.binary.f32(i32 35, float %7211, float %7212)  ; FMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 35, float %7210, float %7219)  ; FMax(a,b)
  %7221 = call float @dx.op.binary.f32(i32 35, float %7220, float %7213)  ; FMax(a,b)
  %7222 = call float @dx.op.binary.f32(i32 36, float %7216, float %7217)  ; FMin(a,b)
  %7223 = call float @dx.op.binary.f32(i32 36, float %7215, float %7222)  ; FMin(a,b)
  %7224 = call float @dx.op.binary.f32(i32 36, float %7223, float %7218)  ; FMin(a,b)
  %7225 = fmul fast float %7221, 2.550000e+02
  %7226 = fadd fast float %7225, 0x3F70101020000000
  %7227 = fptoui float %7226 to i32
  %7228 = fmul fast float %7224, 2.550000e+02
  %7229 = fadd fast float %7228, 0x3F70101020000000
  %7230 = fptoui float %7229 to i32
  %7231 = icmp ult i32 %7227, %7230
  br i1 %7231, label %7232, label %7400

; <label>:7232                                    ; preds = %7201
  %7233 = fcmp fast ogt float %103, 9.843750e-01
  %7234 = fadd fast float %104, -4.000000e+00
  %7235 = select i1 %7233, float -4.000000e+00, float %7234
  %7236 = call float @dx.op.binary.f32(i32 35, float %7235, float 0.000000e+00)  ; FMax(a,b)
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7239 = fadd fast float %7238, %7236
  %7240 = extractvalue %dx.types.CBufRet.f32 %7237, 2
  %7241 = fmul fast float %7239, %7240
  %7242 = call float @dx.op.unary.f32(i32 23, float %7241)  ; Log(value)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7237, 3
  %7244 = fmul fast float %7243, %7242
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 2
  %7247 = fmul fast float %7244, %7246
  %7248 = call float @dx.op.unary.f32(i32 7, float %7247)  ; Saturate(value)
  %7249 = uitofp i32 %7227 to float
  %7250 = uitofp i32 %7230 to float
  %7251 = fadd fast float %7249, 5.000000e-01
  %7252 = fadd fast float %7250, 5.000000e-01
  %7253 = fmul fast float %7246, %7251
  %7254 = fmul fast float %7246, %7252
  %7255 = fadd fast float %7253, 0x3F0FFB4800000000
  %7256 = fadd fast float %7254, 0xBF0FFB4800000000
  %7257 = call float @dx.op.binary.f32(i32 35, float %7248, float %7255)  ; FMax(a,b)
  %7258 = call float @dx.op.binary.f32(i32 36, float %7257, float %7256)  ; FMin(a,b)
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7261 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7262 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7263 = fmul fast float %7260, %7258
  %7264 = fadd fast float %7262, %7263
  %7265 = fadd fast float %7262, %7261
  %7266 = fsub fast float %7260, %7261
  %7267 = fadd fast float %7266, %7262
  %7268 = call float @dx.op.binary.f32(i32 35, float %7264, float %7265)  ; FMax(a,b)
  %7269 = call float @dx.op.binary.f32(i32 36, float %7268, float %7267)  ; FMin(a,b)
  %7270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7207, float %7208, float %7269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.i32 %7274, 0
  %7276 = extractvalue %dx.types.CBufRet.i32 %7274, 1
  %7277 = uitofp i32 %7275 to float
  %7278 = uitofp i32 %7276 to float
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.CBufRet.f32 %7279, 1
  %7282 = fmul fast float %7277, %7207
  %7283 = fmul fast float %7278, %7208
  %7284 = fadd fast float %7282, -5.000000e-01
  %7285 = fadd fast float %7283, -5.000000e-01
  %7286 = call float @dx.op.unary.f32(i32 22, float %7284)  ; Frc(value)
  %7287 = call float @dx.op.unary.f32(i32 22, float %7285)  ; Frc(value)
  %7288 = fmul fast float %7286, %7286
  %7289 = fmul fast float %7288, %7286
  %7290 = fsub fast float 3.000000e+00, %7286
  %7291 = fmul fast float %7288, %7290
  %7292 = fmul fast float %7286, 3.000000e+00
  %7293 = fmul fast float %7289, 3.000000e+00
  %7294 = fmul fast float %7288, 6.000000e+00
  %7295 = fsub fast float %7293, %7294
  %7296 = fadd fast float %7295, 4.000000e+00
  %7297 = fmul fast float %7296, 0x3FC5555560000000
  %7298 = fmul fast float %7289, -3.000000e+00
  %7299 = fadd fast float %7288, %7286
  %7300 = fmul fast float %7299, 3.000000e+00
  %7301 = fadd fast float %7298, 1.000000e+00
  %7302 = fadd fast float %7301, %7300
  %7303 = fmul fast float %7289, 0x3FC5555560000000
  %7304 = fmul fast float %7287, %7287
  %7305 = fmul fast float %7304, %7287
  %7306 = fsub fast float 3.000000e+00, %7287
  %7307 = fmul fast float %7304, %7306
  %7308 = fmul fast float %7287, 3.000000e+00
  %7309 = fmul fast float %7305, 3.000000e+00
  %7310 = fmul fast float %7304, 6.000000e+00
  %7311 = fsub fast float %7309, %7310
  %7312 = fadd fast float %7311, 4.000000e+00
  %7313 = fmul fast float %7312, 0x3FC5555560000000
  %7314 = fmul fast float %7305, -3.000000e+00
  %7315 = fadd fast float %7304, %7287
  %7316 = fmul fast float %7315, 3.000000e+00
  %7317 = fadd fast float %7314, 1.000000e+00
  %7318 = fadd fast float %7317, %7316
  %7319 = fmul fast float %7305, 0x3FC5555560000000
  %7320 = fadd fast float %7286, 1.000000e+00
  %7321 = fsub fast float 1.000000e+00, %7292
  %7322 = fadd fast float %7321, %7291
  %7323 = fadd fast float %7322, %7296
  %7324 = fmul fast float %7323, 0x3FC5555560000000
  %7325 = fdiv fast float %7297, %7324
  %7326 = fsub fast float %7320, %7325
  %7327 = fsub fast float 1.000000e+00, %7286
  %7328 = fadd fast float %7302, %7289
  %7329 = fmul fast float %7328, 0x3FC5555560000000
  %7330 = fdiv fast float %7303, %7329
  %7331 = fadd fast float %7327, %7330
  %7332 = fadd fast float %7287, 1.000000e+00
  %7333 = fsub fast float 1.000000e+00, %7308
  %7334 = fadd fast float %7333, %7307
  %7335 = fadd fast float %7334, %7312
  %7336 = fmul fast float %7335, 0x3FC5555560000000
  %7337 = fdiv fast float %7313, %7336
  %7338 = fsub fast float %7332, %7337
  %7339 = fsub fast float 1.000000e+00, %7287
  %7340 = fadd fast float %7318, %7305
  %7341 = fmul fast float %7340, 0x3FC5555560000000
  %7342 = fdiv fast float %7319, %7341
  %7343 = fadd fast float %7342, %7339
  %7344 = fmul fast float %7326, %7280
  %7345 = fsub fast float %7207, %7344
  %7346 = fmul fast float %7331, %7280
  %7347 = fadd fast float %7346, %7207
  %7348 = fmul fast float %7343, %7281
  %7349 = fadd fast float %7348, %7208
  %7350 = fmul fast float %7338, %7281
  %7351 = fsub fast float %7208, %7350
  %7352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7345, float %7351, float %7269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7353 = extractvalue %dx.types.ResRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.ResRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.ResRet.f32 %7352, 2
  %7356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7347, float %7351, float %7269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7357 = extractvalue %dx.types.ResRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.ResRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.ResRet.f32 %7356, 2
  %7360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7345, float %7349, float %7269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7361 = extractvalue %dx.types.ResRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.ResRet.f32 %7360, 1
  %7363 = extractvalue %dx.types.ResRet.f32 %7360, 2
  %7364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7347, float %7349, float %7269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7365 = extractvalue %dx.types.ResRet.f32 %7364, 0
  %7366 = extractvalue %dx.types.ResRet.f32 %7364, 1
  %7367 = extractvalue %dx.types.ResRet.f32 %7364, 2
  %7368 = fsub fast float %7361, %7353
  %7369 = fsub fast float %7362, %7354
  %7370 = fsub fast float %7363, %7355
  %7371 = fmul fast float %7368, %7341
  %7372 = fmul fast float %7369, %7341
  %7373 = fmul fast float %7370, %7341
  %7374 = fadd fast float %7371, %7353
  %7375 = fadd fast float %7372, %7354
  %7376 = fadd fast float %7373, %7355
  %7377 = fsub fast float %7365, %7357
  %7378 = fsub fast float %7366, %7358
  %7379 = fsub fast float %7367, %7359
  %7380 = fmul fast float %7377, %7341
  %7381 = fmul fast float %7378, %7341
  %7382 = fmul fast float %7379, %7341
  %7383 = fsub fast float %7357, %7374
  %7384 = fadd fast float %7383, %7380
  %7385 = fsub fast float %7358, %7375
  %7386 = fadd fast float %7385, %7381
  %7387 = fsub fast float %7359, %7376
  %7388 = fadd fast float %7387, %7382
  %7389 = fmul fast float %7384, %7329
  %7390 = fmul fast float %7386, %7329
  %7391 = fmul fast float %7388, %7329
  %7392 = fadd fast float %7389, %7374
  %7393 = fadd fast float %7390, %7375
  %7394 = fadd fast float %7391, %7376
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7397 = fmul fast float %7392, %7396
  %7398 = fmul fast float %7393, %7396
  %7399 = fmul fast float %7394, %7396
  br label %7400

; <label>:7400                                    ; preds = %7232, %7201
  %7401 = phi float [ %7271, %7232 ], [ 1.000000e+00, %7201 ]
  %7402 = phi float [ %7272, %7232 ], [ 1.000000e+00, %7201 ]
  %7403 = phi float [ %7273, %7232 ], [ 1.000000e+00, %7201 ]
  %7404 = phi float [ %7397, %7232 ], [ 0.000000e+00, %7201 ]
  %7405 = phi float [ %7398, %7232 ], [ 0.000000e+00, %7201 ]
  %7406 = phi float [ %7399, %7232 ], [ 0.000000e+00, %7201 ]
  %7407 = fmul fast float %7404, %7178
  %7408 = fmul fast float %7405, %7178
  %7409 = fmul fast float %7406, %7178
  %7410 = call float @dx.op.dot3.f32(i32 55, float %7401, float %7402, float %7403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7411 = call float @dx.op.dot3.f32(i32 55, float %7407, float %7408, float %7409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7412 = select i1 %268, float %7410, float %7401
  %7413 = select i1 %268, float %7410, float %7402
  %7414 = select i1 %268, float 1.000000e+00, float %7403
  %7415 = select i1 %268, float %7411, float %7407
  %7416 = select i1 %268, float 0.000000e+00, float %7408
  %7417 = select i1 %268, float 0.000000e+00, float %7409
  %7418 = fmul fast float %7412, %7191
  %7419 = fmul fast float %7413, %7192
  %7420 = fmul fast float %7414, %7193
  %7421 = fadd fast float %7418, %7415
  %7422 = fadd fast float %7419, %7416
  %7423 = fadd fast float %7417, %7420
  %7424 = fmul fast float %7412, %7169
  %7425 = fmul fast float %7413, %7170
  %7426 = fmul fast float %7414, %7171
  %7427 = fmul fast float %145, %7203
  %7428 = fmul fast float %147, %7204
  %7429 = fsub fast float 1.000000e+00, %7427
  %7430 = fsub fast float 1.000000e+00, %7428
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7435 = fmul fast float %7429, %7432
  %7436 = fmul fast float %7429, %7433
  %7437 = fmul fast float %7429, %7434
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7442 = fmul fast float %7430, %7439
  %7443 = fmul fast float %7430, %7440
  %7444 = fmul fast float %7430, %7441
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.CBufRet.f32 %7445, 2
  %7449 = fadd fast float %7442, %7446
  %7450 = fadd fast float %7449, %7435
  %7451 = fadd fast float %7443, %7447
  %7452 = fadd fast float %7451, %7436
  %7453 = fadd fast float %7444, %7448
  %7454 = fadd fast float %7453, %7437
  %7455 = fmul fast float %7450, %231
  %7456 = fmul fast float %7452, %231
  %7457 = fmul fast float %7454, %231
  br label %7458

; <label>:7458                                    ; preds = %7400, %7168
  %7459 = phi float [ %7455, %7400 ], [ %196, %7168 ]
  %7460 = phi float [ %7456, %7400 ], [ %197, %7168 ]
  %7461 = phi float [ %7457, %7400 ], [ %198, %7168 ]
  %7462 = phi float [ %231, %7400 ], [ %104, %7168 ]
  %7463 = phi float [ %7421, %7400 ], [ %7191, %7168 ]
  %7464 = phi float [ %7422, %7400 ], [ %7192, %7168 ]
  %7465 = phi float [ %7423, %7400 ], [ %7193, %7168 ]
  %7466 = phi float [ %7424, %7400 ], [ %7169, %7168 ]
  %7467 = phi float [ %7425, %7400 ], [ %7170, %7168 ]
  %7468 = phi float [ %7426, %7400 ], [ %7171, %7168 ]
  %7469 = phi float [ %7401, %7400 ], [ 1.000000e+00, %7168 ]
  br i1 %7200, label %8624, label %7470

; <label>:7470                                    ; preds = %7458
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7475 = extractvalue %dx.types.CBufRet.f32 %7471, 3
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.CBufRet.f32 %7476, 2
  %7480 = extractvalue %dx.types.CBufRet.f32 %7476, 3
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 3
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7496 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7497 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7498 = fcmp fast olt float %7497, -5.000000e-01
  %7499 = call float @dx.op.dot3.f32(i32 55, float %7459, float %7460, float %7461, float %7459, float %7460, float %7461)  ; Dot3(ax,ay,az,bx,by,bz)
  %7500 = call float @dx.op.unary.f32(i32 25, float %7499)  ; Rsqrt(value)
  %7501 = fmul fast float %7500, %7499
  %7502 = fmul fast float %7500, %7459
  %7503 = fmul fast float %7500, %7460
  %7504 = fmul fast float %7500, %7461
  %7505 = fadd fast float %7501, %7475
  %7506 = call float @dx.op.dot3.f32(i32 55, float %7502, float %7503, float %7504, float %7472, float %7473, float %7474)  ; Dot3(ax,ay,az,bx,by,bz)
  %7507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.i32 %7507, 1
  %7509 = and i32 %7508, 1
  %7510 = icmp ne i32 %7509, 0
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 2
  %7513 = fcmp fast ogt float %7512, 0.000000e+00
  %7514 = and i1 %7510, %7513
  br i1 %7514, label %7515, label %7921, !dx.controlflow.hints !127

; <label>:7515                                    ; preds = %7470
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 3
  %7518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7519 = extractvalue %dx.types.CBufRet.f32 %7518, 2
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 2
  %7522 = fsub fast float %7519, %7521
  %7523 = and i32 %7508, 2
  %7524 = extractvalue %dx.types.CBufRet.i32 %7507, 0
  %7525 = call i32 @dx.op.binary.i32(i32 40, i32 %7524, i32 3)  ; UMin(a,b)
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.CBufRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.CBufRet.f32 %7520, 0
  %7530 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7531 = fsub fast float %7527, %7529
  %7532 = fsub fast float %7528, %7530
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 0
  %7535 = fcmp fast ogt float %7534, 0.000000e+00
  %7536 = fsub fast float -0.000000e+00, %7531
  %7537 = fsub fast float -0.000000e+00, %7532
  %7538 = call float @dx.op.dot2.f32(i32 54, float %7502, float %7503, float %7502, float %7503)  ; Dot2(ax,ay,bx,by)
  %7539 = call float @dx.op.dot2.f32(i32 54, float %7502, float %7503, float %7536, float %7537)  ; Dot2(ax,ay,bx,by)
  %7540 = fmul fast float %7539, 2.000000e+00
  %7541 = call float @dx.op.dot2.f32(i32 54, float %7536, float %7537, float %7536, float %7537)  ; Dot2(ax,ay,bx,by)
  %7542 = fmul fast float %7534, %7534
  %7543 = fsub fast float %7541, %7542
  %7544 = fmul fast float %7540, %7540
  %7545 = fmul fast float %7538, 4.000000e+00
  %7546 = fmul fast float %7545, %7543
  %7547 = fsub fast float %7544, %7546
  %7548 = fcmp fast ogt float %7547, 0.000000e+00
  br i1 %7548, label %7549, label %7564

; <label>:7549                                    ; preds = %7515
  %7550 = fcmp fast ogt float %7540, 0.000000e+00
  %7551 = call float @dx.op.unary.f32(i32 24, float %7547)  ; Sqrt(value)
  %7552 = fsub fast float -0.000000e+00, %7551
  %7553 = select i1 %7550, float %7551, float %7552
  %7554 = fadd fast float %7553, %7540
  %7555 = fmul float %7554, -5.000000e-01
  %7556 = fdiv fast float %7555, %7538
  %7557 = call float @dx.op.binary.f32(i32 35, float %7556, float 0.000000e+00)  ; FMax(a,b)
  %7558 = call float @dx.op.binary.f32(i32 36, float %7501, float %7557)  ; FMin(a,b)
  %7559 = fdiv fast float %7543, %7555
  %7560 = call float @dx.op.binary.f32(i32 35, float %7559, float 0.000000e+00)  ; FMax(a,b)
  %7561 = call float @dx.op.binary.f32(i32 36, float %7501, float %7560)  ; FMin(a,b)
  %7562 = call float @dx.op.binary.f32(i32 36, float %7558, float %7561)  ; FMin(a,b)
  %7563 = call float @dx.op.binary.f32(i32 35, float %7558, float %7561)  ; FMax(a,b)
  br label %7564

; <label>:7564                                    ; preds = %7549, %7515
  %7565 = phi float [ %7563, %7549 ], [ -1.000000e+00, %7515 ]
  %7566 = phi float [ %7562, %7549 ], [ -1.000000e+00, %7515 ]
  %7567 = phi i1 [ true, %7549 ], [ false, %7515 ]
  %7568 = and i1 %7535, %7567
  br i1 %7568, label %7569, label %7571

; <label>:7569                                    ; preds = %7564
  %7570 = fcmp fast oeq float %7566, %7565
  br i1 %7570, label %7874, label %7572

; <label>:7571                                    ; preds = %7564
  br i1 %7535, label %7874, label %7572

; <label>:7572                                    ; preds = %7571, %7569
  %7573 = phi float [ %7501, %7571 ], [ %7565, %7569 ]
  %7574 = phi float [ 0.000000e+00, %7571 ], [ %7566, %7569 ]
  %7575 = icmp ne i32 %7523, 0
  %7576 = fmul fast float %7573, %7504
  %7577 = fadd fast float %7576, %7517
  %7578 = fmul fast float %7577, %7573
  %7579 = select i1 %7575, float 0.000000e+00, float %7578
  %7580 = fcmp fast oeq float %7504, 0.000000e+00
  %7581 = fdiv fast float %7522, %7504
  %7582 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7581)  ; FMax(a,b)
  %7583 = select i1 %7580, float %7573, float %7582
  %7584 = call float @dx.op.binary.f32(i32 36, float %7573, float %7583)  ; FMin(a,b)
  %7585 = fcmp fast ogt float %7504, 0.000000e+00
  %7586 = fcmp fast olt float %7522, 0.000000e+00
  br i1 %7585, label %7587, label %7644

; <label>:7587                                    ; preds = %7572
  %7588 = icmp eq i32 %7523, 0
  br i1 %7586, label %7589, label %7633

; <label>:7589                                    ; preds = %7587
  %7590 = select i1 %7588, float %7573, float 0.000000e+00
  %7591 = fsub fast float -0.000000e+00, %7590
  %7592 = call float @dx.op.unary.f32(i32 6, float %7591)  ; FAbs(value)
  %7593 = fmul fast float %7590, %7504
  %7594 = fadd fast float %7593, %7517
  %7595 = fmul fast float %7592, %7594
  %7596 = fsub fast float %7579, %7595
  %7597 = fsub fast float %7573, %7592
  %7598 = select i1 %7588, float %7597, float 0.000000e+00
  %7599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7599, 0
  %7601 = extractvalue %dx.types.CBufRet.f32 %7599, 1
  %7602 = extractvalue %dx.types.CBufRet.f32 %7599, 2
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %7606 = extractvalue %dx.types.CBufRet.f32 %7603, 2
  %7607 = extractvalue %dx.types.CBufRet.f32 %7603, 3
  %7608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.f32 %7608, 3
  %7610 = call float @dx.op.binary.f32(i32 36, float %7596, float %7609)  ; FMin(a,b)
  %7611 = fmul fast float %7607, %7598
  %7612 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7613 = fsub fast float %7604, %7600
  %7614 = fsub fast float %7605, %7601
  %7615 = fsub fast float %7606, %7602
  %7616 = fmul fast float %7612, %7613
  %7617 = fmul fast float %7612, %7614
  %7618 = fmul fast float %7612, %7615
  %7619 = fadd fast float %7616, %7600
  %7620 = fadd fast float %7617, %7601
  %7621 = fadd fast float %7618, %7602
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7625 = fadd fast float %7624, %7623
  %7626 = call float @dx.op.unary.f32(i32 7, float %7625)  ; Saturate(value)
  %7627 = extractvalue %dx.types.CBufRet.f32 %7622, 2
  %7628 = extractvalue %dx.types.CBufRet.f32 %7622, 3
  %7629 = fadd fast float %7628, %7627
  %7630 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  %7631 = fmul fast float %7626, %7610
  %7632 = fmul fast float %7631, %7630
  br label %7874

; <label>:7633                                    ; preds = %7587
  br i1 %7588, label %7634, label %7655

; <label>:7634                                    ; preds = %7633
  %7635 = call float @dx.op.binary.f32(i32 36, float %7584, float %7574)  ; FMin(a,b)
  %7636 = fsub fast float %7584, %7635
  %7637 = fsub fast float %7636, %7573
  %7638 = call float @dx.op.unary.f32(i32 6, float %7637)  ; FAbs(value)
  %7639 = fadd fast float %7636, %7573
  %7640 = fmul fast float %7639, %7504
  %7641 = fadd fast float %7640, %7517
  %7642 = fmul fast float %7641, %7638
  %7643 = fsub fast float %7579, %7642
  br label %7655

; <label>:7644                                    ; preds = %7572
  br i1 %7586, label %7645, label %7655

; <label>:7645                                    ; preds = %7644
  %7646 = call float @dx.op.binary.f32(i32 35, float %7574, float %7584)  ; FMax(a,b)
  %7647 = icmp eq i32 %7523, 0
  %7648 = select i1 %7647, float %7584, float 0.000000e+00
  %7649 = fsub fast float -0.000000e+00, %7648
  %7650 = call float @dx.op.unary.f32(i32 6, float %7649)  ; FAbs(value)
  %7651 = fmul fast float %7648, %7504
  %7652 = fadd fast float %7651, %7517
  %7653 = fmul fast float %7650, %7652
  %7654 = fsub fast float %7579, %7653
  br label %7655

; <label>:7655                                    ; preds = %7645, %7644, %7634, %7633
  %7656 = phi float [ %7574, %7633 ], [ %7574, %7634 ], [ %7646, %7645 ], [ %7574, %7644 ]
  %7657 = phi float [ 0.000000e+00, %7633 ], [ %7638, %7634 ], [ %7650, %7645 ], [ 0.000000e+00, %7644 ]
  %7658 = phi float [ %7579, %7633 ], [ %7643, %7634 ], [ %7654, %7645 ], [ %7579, %7644 ]
  %7659 = phi float [ %7584, %7633 ], [ %7584, %7634 ], [ %7573, %7645 ], [ %7573, %7644 ]
  %7660 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %7660, align 4, !tbaa !128, !noalias !130
  %7661 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %7661, align 4, !tbaa !128, !noalias !130
  %7662 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %7662, align 4, !tbaa !128, !noalias !130
  %7663 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %7663, align 4, !tbaa !128, !noalias !130
  %7664 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %7664, align 4, !tbaa !128, !noalias !130
  %7665 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %7665, align 4, !tbaa !128, !noalias !130
  %7666 = icmp sgt i32 %7525, 0
  br i1 %7666, label %7667, label %7728

; <label>:7667                                    ; preds = %7655
  br label %7668

; <label>:7668                                    ; preds = %7717, %7667
  %7669 = phi i32 [ %7718, %7717 ], [ 0, %7667 ]
  %7670 = phi i32 [ %7719, %7717 ], [ 0, %7667 ]
  %7671 = add nuw i32 %7670, 171
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7671)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.CBufRet.f32 %7675, 1
  %7678 = fsub fast float %7673, %7676
  %7679 = fsub fast float %7674, %7677
  %7680 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %7681 = fsub fast float -0.000000e+00, %7678
  %7682 = fsub fast float -0.000000e+00, %7679
  %7683 = call float @dx.op.dot2.f32(i32 54, float %7502, float %7503, float %7681, float %7682)  ; Dot2(ax,ay,bx,by)
  %7684 = fmul fast float %7683, 2.000000e+00
  %7685 = call float @dx.op.dot2.f32(i32 54, float %7681, float %7682, float %7681, float %7682)  ; Dot2(ax,ay,bx,by)
  %7686 = fmul fast float %7680, %7680
  %7687 = fsub fast float %7685, %7686
  %7688 = fmul fast float %7684, %7684
  %7689 = fmul fast float %7545, %7687
  %7690 = fsub fast float %7688, %7689
  %7691 = fcmp fast ogt float %7690, 0.000000e+00
  br i1 %7691, label %7692, label %7707

; <label>:7692                                    ; preds = %7668
  %7693 = fcmp fast ogt float %7684, 0.000000e+00
  %7694 = call float @dx.op.unary.f32(i32 24, float %7690)  ; Sqrt(value)
  %7695 = fsub fast float -0.000000e+00, %7694
  %7696 = select i1 %7693, float %7694, float %7695
  %7697 = fadd fast float %7696, %7684
  %7698 = fmul float %7697, -5.000000e-01
  %7699 = fdiv fast float %7698, %7538
  %7700 = call float @dx.op.binary.f32(i32 35, float %7699, float 0.000000e+00)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 36, float %7573, float %7700)  ; FMin(a,b)
  %7702 = fdiv fast float %7687, %7698
  %7703 = call float @dx.op.binary.f32(i32 35, float %7702, float 0.000000e+00)  ; FMax(a,b)
  %7704 = call float @dx.op.binary.f32(i32 36, float %7573, float %7703)  ; FMin(a,b)
  %7705 = call float @dx.op.binary.f32(i32 36, float %7701, float %7704)  ; FMin(a,b)
  %7706 = call float @dx.op.binary.f32(i32 35, float %7701, float %7704)  ; FMax(a,b)
  br label %7707

; <label>:7707                                    ; preds = %7692, %7668
  %7708 = phi float [ %7706, %7692 ], [ -1.000000e+00, %7668 ]
  %7709 = phi float [ %7705, %7692 ], [ -1.000000e+00, %7668 ]
  %7710 = phi i1 [ true, %7692 ], [ false, %7668 ]
  br i1 %7710, label %7711, label %7717

; <label>:7711                                    ; preds = %7707
  %7712 = call float @dx.op.binary.f32(i32 35, float %7656, float %7709)  ; FMax(a,b)
  %7713 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %7670
  store float %7712, float* %7713, align 4, !tbaa !128, !noalias !130
  %7714 = call float @dx.op.binary.f32(i32 35, float %7656, float %7708)  ; FMax(a,b)
  %7715 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %7670
  store float %7714, float* %7715, align 4, !tbaa !128, !noalias !130
  %7716 = add nsw i32 %7669, 1
  br label %7717

; <label>:7717                                    ; preds = %7711, %7707
  %7718 = phi i32 [ %7716, %7711 ], [ %7669, %7707 ]
  %7719 = add nuw nsw i32 %7670, 1
  %7720 = icmp eq i32 %7719, %7525
  br i1 %7720, label %7721, label %7668

; <label>:7721                                    ; preds = %7717
  %7722 = load float, float* %7662, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7723 = load float, float* %7661, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %7724 = load float, float* %7660, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %7725 = load float, float* %7665, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7726 = load float, float* %7664, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %7727 = load float, float* %7663, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %7728

; <label>:7728                                    ; preds = %7721, %7655
  %7729 = phi float [ -1.000000e+00, %7655 ], [ %7727, %7721 ]
  %7730 = phi float [ -1.000000e+00, %7655 ], [ %7726, %7721 ]
  %7731 = phi float [ -1.000000e+00, %7655 ], [ %7725, %7721 ]
  %7732 = phi float [ -1.000000e+00, %7655 ], [ %7724, %7721 ]
  %7733 = phi float [ -1.000000e+00, %7655 ], [ %7723, %7721 ]
  %7734 = phi float [ -1.000000e+00, %7655 ], [ %7722, %7721 ]
  %7735 = phi i32 [ 0, %7655 ], [ %7718, %7721 ]
  %7736 = call float @dx.op.binary.f32(i32 36, float %7733, float %7734)  ; FMin(a,b)
  %7737 = call float @dx.op.binary.f32(i32 36, float %7732, float %7736)  ; FMin(a,b)
  %7738 = call float @dx.op.binary.f32(i32 35, float %7732, float %7733)  ; FMax(a,b)
  %7739 = call float @dx.op.binary.f32(i32 36, float %7738, float %7734)  ; FMin(a,b)
  %7740 = call float @dx.op.binary.f32(i32 36, float %7732, float %7733)  ; FMin(a,b)
  %7741 = call float @dx.op.binary.f32(i32 35, float %7740, float %7739)  ; FMax(a,b)
  %7742 = call float @dx.op.binary.f32(i32 35, float %7733, float %7734)  ; FMax(a,b)
  %7743 = call float @dx.op.binary.f32(i32 35, float %7732, float %7742)  ; FMax(a,b)
  store float %7737, float* %7660, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %7741, float* %7661, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %7743, float* %7662, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7744 = call float @dx.op.binary.f32(i32 36, float %7730, float %7731)  ; FMin(a,b)
  %7745 = call float @dx.op.binary.f32(i32 36, float %7729, float %7744)  ; FMin(a,b)
  %7746 = call float @dx.op.binary.f32(i32 35, float %7729, float %7730)  ; FMax(a,b)
  %7747 = call float @dx.op.binary.f32(i32 36, float %7746, float %7731)  ; FMin(a,b)
  %7748 = call float @dx.op.binary.f32(i32 36, float %7729, float %7730)  ; FMin(a,b)
  %7749 = call float @dx.op.binary.f32(i32 35, float %7748, float %7747)  ; FMax(a,b)
  %7750 = call float @dx.op.binary.f32(i32 35, float %7730, float %7731)  ; FMax(a,b)
  %7751 = call float @dx.op.binary.f32(i32 35, float %7729, float %7750)  ; FMax(a,b)
  store float %7745, float* %7663, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %7749, float* %7664, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %7751, float* %7665, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7752 = sub nsw i32 3, %7735
  %7753 = icmp sgt i32 %7752, 2
  br i1 %7753, label %7754, label %7792

; <label>:7754                                    ; preds = %7728
  %7755 = icmp eq i32 %7523, 0
  %7756 = fsub fast float %7573, %7657
  %7757 = select i1 %7755, float %7756, float %7657
  %7758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.CBufRet.f32 %7758, 1
  %7761 = extractvalue %dx.types.CBufRet.f32 %7758, 2
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7766 = extractvalue %dx.types.CBufRet.f32 %7762, 3
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 3
  %7769 = call float @dx.op.binary.f32(i32 36, float %7658, float %7768)  ; FMin(a,b)
  %7770 = fmul fast float %7766, %7757
  %7771 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7772 = fsub fast float %7763, %7759
  %7773 = fsub fast float %7764, %7760
  %7774 = fsub fast float %7765, %7761
  %7775 = fmul fast float %7771, %7772
  %7776 = fmul fast float %7771, %7773
  %7777 = fmul fast float %7771, %7774
  %7778 = fadd fast float %7775, %7759
  %7779 = fadd fast float %7776, %7760
  %7780 = fadd fast float %7777, %7761
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.CBufRet.f32 %7781, 1
  %7784 = fadd fast float %7783, %7782
  %7785 = call float @dx.op.unary.f32(i32 7, float %7784)  ; Saturate(value)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7781, 2
  %7787 = extractvalue %dx.types.CBufRet.f32 %7781, 3
  %7788 = fadd fast float %7787, %7786
  %7789 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  %7790 = fmul fast float %7785, %7769
  %7791 = fmul fast float %7790, %7789
  br label %7874

; <label>:7792                                    ; preds = %7728
  %7793 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %7752
  %7794 = load float, float* %7793, align 4, !tbaa !128, !noalias !130
  %7795 = fcmp fast olt float %7794, %7659
  %7796 = icmp sgt i32 %7735, 0
  %7797 = and i1 %7796, %7795
  br i1 %7797, label %7798, label %7835

; <label>:7798                                    ; preds = %7792
  br label %7799

; <label>:7799                                    ; preds = %7828, %7798
  %7800 = phi float [ %7829, %7828 ], [ %7657, %7798 ]
  %7801 = phi float [ %7830, %7828 ], [ %7658, %7798 ]
  %7802 = phi float [ %7810, %7828 ], [ %7794, %7798 ]
  %7803 = phi i32 [ %7807, %7828 ], [ %7752, %7798 ]
  %7804 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %7803
  %7805 = load float, float* %7804, align 4, !tbaa !128, !noalias !130
  %7806 = icmp slt i32 %7803, 2
  %7807 = add nsw i32 %7803, 1
  %7808 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %7807
  %7809 = load float, float* %7808, align 4, !tbaa !128, !noalias !130
  %7810 = select i1 %7806, float %7809, float %7573
  %7811 = call float @dx.op.binary.f32(i32 36, float %7810, float %7805)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 36, float %7659, float %7811)  ; FMin(a,b)
  %7813 = icmp eq i32 %7523, 0
  %7814 = fadd fast float %7812, %7802
  %7815 = fmul fast float %7814, %7504
  %7816 = fadd fast float %7815, %7517
  br i1 %7813, label %7822, label %7817

; <label>:7817                                    ; preds = %7799
  %7818 = fsub fast float %7812, %7802
  %7819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7818)  ; FMax(a,b)
  %7820 = fmul fast float %7819, %7816
  %7821 = fadd fast float %7820, %7801
  br label %7828

; <label>:7822                                    ; preds = %7799
  %7823 = fsub fast float %7802, %7812
  %7824 = call float @dx.op.unary.f32(i32 6, float %7823)  ; FAbs(value)
  %7825 = fadd fast float %7824, %7800
  %7826 = fmul fast float %7824, %7816
  %7827 = fsub fast float %7801, %7826
  br label %7828

; <label>:7828                                    ; preds = %7822, %7817
  %7829 = phi float [ %7819, %7817 ], [ %7825, %7822 ]
  %7830 = phi float [ %7821, %7817 ], [ %7827, %7822 ]
  %7831 = fcmp fast olt float %7810, %7659
  %7832 = icmp slt i32 %7807, 3
  %7833 = and i1 %7832, %7831
  br i1 %7833, label %7799, label %7834

; <label>:7834                                    ; preds = %7828
  br label %7835

; <label>:7835                                    ; preds = %7834, %7792
  %7836 = phi float [ %7657, %7792 ], [ %7829, %7834 ]
  %7837 = phi float [ %7658, %7792 ], [ %7830, %7834 ]
  %7838 = fsub fast float %7573, %7836
  %7839 = select i1 %7575, float %7836, float %7838
  %7840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.CBufRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.CBufRet.f32 %7840, 2
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7847 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7848 = extractvalue %dx.types.CBufRet.f32 %7844, 3
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 3
  %7851 = call float @dx.op.binary.f32(i32 36, float %7837, float %7850)  ; FMin(a,b)
  %7852 = fmul fast float %7848, %7839
  %7853 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7854 = fsub fast float %7845, %7841
  %7855 = fsub fast float %7846, %7842
  %7856 = fsub fast float %7847, %7843
  %7857 = fmul fast float %7853, %7854
  %7858 = fmul fast float %7853, %7855
  %7859 = fmul fast float %7853, %7856
  %7860 = fadd fast float %7857, %7841
  %7861 = fadd fast float %7858, %7842
  %7862 = fadd fast float %7859, %7843
  %7863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.CBufRet.f32 %7863, 1
  %7866 = fadd fast float %7865, %7864
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7863, 2
  %7869 = extractvalue %dx.types.CBufRet.f32 %7863, 3
  %7870 = fadd fast float %7869, %7868
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fmul fast float %7867, %7851
  %7873 = fmul fast float %7872, %7871
  br label %7874

; <label>:7874                                    ; preds = %7835, %7754, %7589, %7571, %7569
  %7875 = phi float [ %7598, %7589 ], [ %7757, %7754 ], [ %7839, %7835 ], [ 0.000000e+00, %7569 ], [ 0.000000e+00, %7571 ]
  %7876 = phi float [ %7632, %7589 ], [ %7791, %7754 ], [ %7873, %7835 ], [ 0.000000e+00, %7569 ], [ 0.000000e+00, %7571 ]
  %7877 = phi float [ %7619, %7589 ], [ %7778, %7754 ], [ %7860, %7835 ], [ 0.000000e+00, %7569 ], [ 0.000000e+00, %7571 ]
  %7878 = phi float [ %7620, %7589 ], [ %7779, %7754 ], [ %7861, %7835 ], [ 0.000000e+00, %7569 ], [ 0.000000e+00, %7571 ]
  %7879 = phi float [ %7621, %7589 ], [ %7780, %7754 ], [ %7862, %7835 ], [ 0.000000e+00, %7569 ], [ 0.000000e+00, %7571 ]
  %7880 = fmul fast float %7512, %7876
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7883 = fsub fast float %7519, %7882
  %7884 = fcmp fast olt float %7880, -2.000000e+01
  %7885 = call float @dx.op.unary.f32(i32 21, float %7880)  ; Exp(value)
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 3
  %7889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7890 = extractvalue %dx.types.CBufRet.f32 %7889, 2
  %7891 = fmul fast float %7888, %7883
  %7892 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7893 = fsub fast float 1.000000e+00, %7892
  %7894 = fmul fast float %7504, 5.000000e-01
  %7895 = fadd fast float %7894, 5.000000e-01
  %7896 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  %7897 = fsub fast float 1.000000e+00, %7896
  %7898 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7893)  ; FMax(a,b)
  %7899 = fdiv fast float %7897, %7898
  %7900 = fsub fast float %7883, %7461
  %7901 = call float @dx.op.unary.f32(i32 6, float %7900)  ; FAbs(value)
  %7902 = fmul fast float %7901, %7887
  %7903 = call float @dx.op.unary.f32(i32 7, float %7899)  ; Saturate(value)
  %7904 = fsub fast float 1.000000e+00, %7902
  %7905 = fmul fast float %7904, %7903
  %7906 = fadd fast float %7905, %7902
  %7907 = fmul fast float %7890, %7883
  %7908 = call float @dx.op.unary.f32(i32 7, float %7907)  ; Saturate(value)
  %7909 = fsub fast float 1.000000e+00, %7906
  %7910 = fmul fast float %7909, %7908
  %7911 = fadd fast float %7910, %7906
  %7912 = call float @dx.op.unary.f32(i32 7, float %7911)  ; Saturate(value)
  %7913 = fadd fast float %7885, -1.000000e+00
  %7914 = select i1 %7884, float -1.000000e+00, float %7913
  %7915 = fmul fast float %7912, %7914
  %7916 = fadd fast float %7915, 1.000000e+00
  %7917 = fsub fast float -0.000000e+00, %7915
  %7918 = fmul fast float %7877, %7917
  %7919 = fmul fast float %7878, %7917
  %7920 = fmul fast float %7879, %7917
  br label %7921

; <label>:7921                                    ; preds = %7874, %7470
  %7922 = phi float [ %7875, %7874 ], [ 0.000000e+00, %7470 ]
  %7923 = phi float [ %7916, %7874 ], [ 1.000000e+00, %7470 ]
  %7924 = phi float [ %7918, %7874 ], [ 0.000000e+00, %7470 ]
  %7925 = phi float [ %7919, %7874 ], [ 0.000000e+00, %7470 ]
  %7926 = phi float [ %7920, %7874 ], [ 0.000000e+00, %7470 ]
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %7929 = fsub fast float 1.000000e+00, %7923
  %7930 = fmul fast float %7929, %7505
  %7931 = fmul fast float %7930, %7928
  %7932 = fsub fast float %7505, %7931
  br i1 %7498, label %7933, label %7962, !dx.controlflow.hints !166

; <label>:7933                                    ; preds = %7921
  %7934 = fmul fast float %7506, %7495
  %7935 = fadd fast float %7934, %7496
  %7936 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7937 = fmul fast float %7477, %7932
  %7938 = fsub fast float -0.000000e+00, %7937
  %7939 = fmul fast float %7478, %7932
  %7940 = fsub fast float -0.000000e+00, %7939
  %7941 = call float @dx.op.unary.f32(i32 21, float %7938)  ; Exp(value)
  %7942 = call float @dx.op.unary.f32(i32 21, float %7940)  ; Exp(value)
  %7943 = call float @dx.op.binary.f32(i32 35, float %7485, float %7941)  ; FMax(a,b)
  %7944 = call float @dx.op.binary.f32(i32 35, float %7485, float %7942)  ; FMax(a,b)
  %7945 = fsub fast float %7944, %7943
  %7946 = fmul fast float %7945, %7936
  %7947 = fadd fast float %7946, %7943
  %7948 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7949 = fsub fast float %7482, %7487
  %7950 = fsub fast float %7483, %7488
  %7951 = fsub fast float %7484, %7489
  %7952 = fmul fast float %7936, %7949
  %7953 = fmul fast float %7936, %7950
  %7954 = fmul fast float %7936, %7951
  %7955 = fadd fast float %7952, %7487
  %7956 = fadd fast float %7953, %7488
  %7957 = fadd fast float %7954, %7489
  %7958 = fsub fast float 1.000000e+00, %7948
  %7959 = fmul fast float %7958, %7955
  %7960 = fmul fast float %7958, %7956
  %7961 = fmul fast float %7958, %7957
  br label %8021

; <label>:7962                                    ; preds = %7921
  %7963 = fmul fast float %7932, %7494
  %7964 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7965 = fsub fast float 2.000000e+00, %7964
  %7966 = fmul fast float %7964, 9.921875e-01
  %7967 = fmul fast float %7966, %7965
  %7968 = fadd fast float %7967, 3.906250e-03
  %7969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7968, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = fsub fast float %7964, %7970
  %7972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7971)  ; FMax(a,b)
  %7973 = fmul fast float %7480, %7461
  %7974 = call float @dx.op.unary.f32(i32 6, float %7973)  ; FAbs(value)
  %7975 = fcmp fast ogt float %7974, 0x3EB0C6F7A0000000
  br i1 %7975, label %7976, label %7982, !dx.controlflow.hints !167

; <label>:7976                                    ; preds = %7962
  %7977 = fmul fast float %7973, 0xBFF7154760000000
  %7978 = call float @dx.op.unary.f32(i32 21, float %7977)  ; Exp(value)
  %7979 = fsub fast float 1.000000e+00, %7978
  %7980 = fdiv fast float %7979, %7973
  %7981 = fmul fast float %7980, %7490
  br label %7982

; <label>:7982                                    ; preds = %7976, %7962
  %7983 = phi float [ %7981, %7976 ], [ %7490, %7962 ]
  %7984 = fadd fast float %7983, %7492
  %7985 = fmul fast float %7984, %7972
  %7986 = fmul fast float %7477, %7985
  %7987 = fsub fast float -0.000000e+00, %7986
  %7988 = fmul fast float %7478, %7985
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = fmul fast float %7479, %7985
  %7991 = fsub fast float -0.000000e+00, %7990
  %7992 = call float @dx.op.unary.f32(i32 21, float %7987)  ; Exp(value)
  %7993 = call float @dx.op.unary.f32(i32 21, float %7989)  ; Exp(value)
  %7994 = call float @dx.op.unary.f32(i32 21, float %7991)  ; Exp(value)
  %7995 = fmul fast float %7506, %7506
  %7996 = fadd fast float %7995, 1.000000e+00
  %7997 = fmul fast float %7996, 0x3FAE8EC8A0000000
  %7998 = fmul fast float %7997, %7487
  %7999 = fmul fast float %7997, %7488
  %8000 = fmul fast float %7997, %7489
  %8001 = fmul fast float %7506, %7485
  %8002 = fsub fast float 1.000000e+00, %8001
  %8003 = fmul fast float %7485, %7485
  %8004 = fsub fast float 1.000000e+00, %8003
  %8005 = fmul fast float %8004, 0x3FB45F3060000000
  %8006 = fmul fast float %8002, %8002
  %8007 = fdiv fast float 1.000000e+00, %8006
  %8008 = fmul fast float %8005, %8007
  %8009 = fmul fast float %8008, %7482
  %8010 = fmul fast float %8008, %7483
  %8011 = fmul fast float %8008, %7484
  %8012 = fadd fast float %8009, %7998
  %8013 = fadd fast float %8010, %7999
  %8014 = fadd fast float %8011, %8000
  %8015 = fsub fast float 1.000000e+00, %7992
  %8016 = fsub fast float 1.000000e+00, %7993
  %8017 = fsub fast float 1.000000e+00, %7994
  %8018 = fmul fast float %8012, %8015
  %8019 = fmul fast float %8013, %8016
  %8020 = fmul fast float %8014, %8017
  br label %8021

; <label>:8021                                    ; preds = %7982, %7933
  %8022 = phi float [ %7959, %7933 ], [ %8018, %7982 ]
  %8023 = phi float [ %7960, %7933 ], [ %8019, %7982 ]
  %8024 = phi float [ %7961, %7933 ], [ %8020, %7982 ]
  %8025 = phi float [ %7948, %7933 ], [ %7992, %7982 ]
  %8026 = phi float [ %7948, %7933 ], [ %7993, %7982 ]
  %8027 = phi float [ %7948, %7933 ], [ %7994, %7982 ]
  br i1 %7514, label %8028, label %8226, !dx.controlflow.hints !168

; <label>:8028                                    ; preds = %8021
  %8029 = extractvalue %dx.types.CBufRet.f32 %7927, 0
  %8030 = fmul fast float %8029, %7929
  %8031 = fsub fast float %7924, %8022
  %8032 = fsub fast float %7925, %8023
  %8033 = fsub fast float %7926, %8024
  %8034 = fmul fast float %8030, %8031
  %8035 = fmul fast float %8030, %8032
  %8036 = fmul fast float %8030, %8033
  %8037 = fadd fast float %8034, %8022
  %8038 = fadd fast float %8035, %8023
  %8039 = fadd fast float %8036, %8024
  %8040 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8025)  ; FMax(a,b)
  %8041 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8026)  ; FMax(a,b)
  %8042 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8027)  ; FMax(a,b)
  %8043 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7923)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %7922, float %7932)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8044)  ; FMax(a,b)
  %8046 = fdiv fast float %7922, %8045
  %8047 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8048 = fdiv fast float %7932, %8045
  %8049 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  %8050 = fcmp fast une float %8043, 1.000000e+00
  br i1 %8050, label %8051, label %8064, !dx.controlflow.hints !169

; <label>:8051                                    ; preds = %8028
  %8052 = call float @dx.op.unary.f32(i32 23, float %8043)  ; Log(value)
  %8053 = fmul fast float %8052, 0x3FE62E4300000000
  %8054 = fmul fast float %7924, %8053
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = fmul fast float %7925, %8053
  %8057 = fsub fast float -0.000000e+00, %8056
  %8058 = fmul fast float %7926, %8053
  %8059 = fsub fast float -0.000000e+00, %8058
  %8060 = fsub fast float 1.000000e+00, %8043
  %8061 = fdiv fast float %8055, %8060
  %8062 = fdiv fast float %8057, %8060
  %8063 = fdiv fast float %8059, %8060
  br label %8064

; <label>:8064                                    ; preds = %8051, %8028
  %8065 = phi float [ %8061, %8051 ], [ %7924, %8028 ]
  %8066 = phi float [ %8062, %8051 ], [ %7925, %8028 ]
  %8067 = phi float [ %8063, %8051 ], [ %7926, %8028 ]
  %8068 = phi float [ %8053, %8051 ], [ 0.000000e+00, %8028 ]
  %8069 = fcmp fast une float %8040, 1.000000e+00
  br i1 %8069, label %8070, label %8077, !dx.controlflow.hints !170

; <label>:8070                                    ; preds = %8064
  %8071 = call float @dx.op.unary.f32(i32 23, float %8040)  ; Log(value)
  %8072 = fmul fast float %8071, 0x3FE62E4300000000
  %8073 = fmul fast float %8037, %8072
  %8074 = fsub fast float -0.000000e+00, %8073
  %8075 = fsub fast float 1.000000e+00, %8040
  %8076 = fdiv fast float %8074, %8075
  br label %8077

; <label>:8077                                    ; preds = %8070, %8064
  %8078 = phi float [ %8076, %8070 ], [ %8037, %8064 ]
  %8079 = phi float [ %8072, %8070 ], [ 0.000000e+00, %8064 ]
  %8080 = fcmp fast une float %8041, 1.000000e+00
  br i1 %8080, label %8081, label %8088, !dx.controlflow.hints !170

; <label>:8081                                    ; preds = %8077
  %8082 = call float @dx.op.unary.f32(i32 23, float %8041)  ; Log(value)
  %8083 = fmul fast float %8082, 0x3FE62E4300000000
  %8084 = fmul fast float %8038, %8083
  %8085 = fsub fast float -0.000000e+00, %8084
  %8086 = fsub fast float 1.000000e+00, %8041
  %8087 = fdiv fast float %8085, %8086
  br label %8088

; <label>:8088                                    ; preds = %8081, %8077
  %8089 = phi float [ %8087, %8081 ], [ %8038, %8077 ]
  %8090 = phi float [ %8083, %8081 ], [ 0.000000e+00, %8077 ]
  %8091 = fcmp fast une float %8042, 1.000000e+00
  br i1 %8091, label %8092, label %8099, !dx.controlflow.hints !170

; <label>:8092                                    ; preds = %8088
  %8093 = call float @dx.op.unary.f32(i32 23, float %8042)  ; Log(value)
  %8094 = fmul fast float %8093, 0x3FE62E4300000000
  %8095 = fmul fast float %8039, %8094
  %8096 = fsub fast float -0.000000e+00, %8095
  %8097 = fsub fast float 1.000000e+00, %8042
  %8098 = fdiv fast float %8096, %8097
  br label %8099

; <label>:8099                                    ; preds = %8092, %8088
  %8100 = phi float [ %8098, %8092 ], [ %8039, %8088 ]
  %8101 = phi float [ %8094, %8092 ], [ 0.000000e+00, %8088 ]
  %8102 = fmul fast float %8065, %8049
  %8103 = fmul fast float %8066, %8049
  %8104 = fmul fast float %8067, %8049
  %8105 = fmul fast float %8068, %8049
  %8106 = fmul fast float %8078, %8047
  %8107 = fmul fast float %8089, %8047
  %8108 = fmul fast float %8100, %8047
  %8109 = fmul fast float %8079, %8047
  %8110 = fmul fast float %8090, %8047
  %8111 = fmul fast float %8101, %8047
  %8112 = fadd fast float %8106, %8102
  %8113 = fadd fast float %8107, %8103
  %8114 = fadd fast float %8108, %8104
  %8115 = fadd fast float %8109, %8105
  %8116 = fadd fast float %8110, %8105
  %8117 = fadd fast float %8111, %8105
  %8118 = fcmp fast une float %8115, 0.000000e+00
  br i1 %8118, label %8119, label %8126, !dx.controlflow.hints !171

; <label>:8119                                    ; preds = %8099
  %8120 = fmul fast float %8115, 0x3FF7154760000000
  %8121 = call float @dx.op.unary.f32(i32 21, float %8120)  ; Exp(value)
  %8122 = fsub fast float 1.000000e+00, %8121
  %8123 = fmul fast float %8112, %8122
  %8124 = fsub fast float -0.000000e+00, %8123
  %8125 = fdiv fast float %8124, %8115
  br label %8126

; <label>:8126                                    ; preds = %8119, %8099
  %8127 = phi float [ %8121, %8119 ], [ 1.000000e+00, %8099 ]
  %8128 = phi float [ %8125, %8119 ], [ %8112, %8099 ]
  %8129 = fcmp fast une float %8116, 0.000000e+00
  br i1 %8129, label %8130, label %8137, !dx.controlflow.hints !171

; <label>:8130                                    ; preds = %8126
  %8131 = fmul fast float %8116, 0x3FF7154760000000
  %8132 = call float @dx.op.unary.f32(i32 21, float %8131)  ; Exp(value)
  %8133 = fsub fast float 1.000000e+00, %8132
  %8134 = fmul fast float %8113, %8133
  %8135 = fsub fast float -0.000000e+00, %8134
  %8136 = fdiv fast float %8135, %8116
  br label %8137

; <label>:8137                                    ; preds = %8130, %8126
  %8138 = phi float [ %8132, %8130 ], [ 1.000000e+00, %8126 ]
  %8139 = phi float [ %8136, %8130 ], [ %8113, %8126 ]
  %8140 = fcmp fast une float %8117, 0.000000e+00
  br i1 %8140, label %8141, label %8148, !dx.controlflow.hints !171

; <label>:8141                                    ; preds = %8137
  %8142 = fmul fast float %8117, 0x3FF7154760000000
  %8143 = call float @dx.op.unary.f32(i32 21, float %8142)  ; Exp(value)
  %8144 = fsub fast float 1.000000e+00, %8143
  %8145 = fmul fast float %8114, %8144
  %8146 = fsub fast float -0.000000e+00, %8145
  %8147 = fdiv fast float %8146, %8117
  br label %8148

; <label>:8148                                    ; preds = %8141, %8137
  %8149 = phi float [ %8143, %8141 ], [ 1.000000e+00, %8137 ]
  %8150 = phi float [ %8147, %8141 ], [ %8114, %8137 ]
  %8151 = fcmp fast ogt float %8047, %8049
  br i1 %8151, label %8152, label %8172

; <label>:8152                                    ; preds = %8148
  %8153 = fsub fast float 1.000000e+00, %8049
  %8154 = fmul fast float %8065, %8153
  %8155 = fmul fast float %8066, %8153
  %8156 = fmul fast float %8067, %8153
  %8157 = fmul fast float %8068, %8153
  %8158 = fcmp fast une float %8157, 0.000000e+00
  br i1 %8158, label %8159, label %8210, !dx.controlflow.hints !172

; <label>:8159                                    ; preds = %8152
  %8160 = fmul fast float %8157, 0x3FF7154760000000
  %8161 = call float @dx.op.unary.f32(i32 21, float %8160)  ; Exp(value)
  %8162 = fsub fast float 1.000000e+00, %8161
  %8163 = fmul fast float %8154, %8162
  %8164 = fsub fast float -0.000000e+00, %8163
  %8165 = fmul fast float %8155, %8162
  %8166 = fsub fast float -0.000000e+00, %8165
  %8167 = fmul fast float %8156, %8162
  %8168 = fsub fast float -0.000000e+00, %8167
  %8169 = fdiv fast float %8164, %8157
  %8170 = fdiv fast float %8166, %8157
  %8171 = fdiv fast float %8168, %8157
  br label %8210

; <label>:8172                                    ; preds = %8148
  %8173 = fsub fast float 1.000000e+00, %8047
  %8174 = fmul fast float %8078, %8173
  %8175 = fmul fast float %8089, %8173
  %8176 = fmul fast float %8100, %8173
  %8177 = fmul fast float %8079, %8173
  %8178 = fmul fast float %8090, %8173
  %8179 = fmul fast float %8101, %8173
  %8180 = fcmp fast une float %8177, 0.000000e+00
  br i1 %8180, label %8181, label %8188, !dx.controlflow.hints !171

; <label>:8181                                    ; preds = %8172
  %8182 = fmul fast float %8177, 0x3FF7154760000000
  %8183 = call float @dx.op.unary.f32(i32 21, float %8182)  ; Exp(value)
  %8184 = fsub fast float 1.000000e+00, %8183
  %8185 = fmul fast float %8174, %8184
  %8186 = fsub fast float -0.000000e+00, %8185
  %8187 = fdiv fast float %8186, %8177
  br label %8188

; <label>:8188                                    ; preds = %8181, %8172
  %8189 = phi float [ %8187, %8181 ], [ %8174, %8172 ]
  %8190 = phi float [ %8183, %8181 ], [ 1.000000e+00, %8172 ]
  %8191 = fcmp fast une float %8178, 0.000000e+00
  br i1 %8191, label %8192, label %8199, !dx.controlflow.hints !171

; <label>:8192                                    ; preds = %8188
  %8193 = fmul fast float %8178, 0x3FF7154760000000
  %8194 = call float @dx.op.unary.f32(i32 21, float %8193)  ; Exp(value)
  %8195 = fsub fast float 1.000000e+00, %8194
  %8196 = fmul fast float %8175, %8195
  %8197 = fsub fast float -0.000000e+00, %8196
  %8198 = fdiv fast float %8197, %8178
  br label %8199

; <label>:8199                                    ; preds = %8192, %8188
  %8200 = phi float [ %8198, %8192 ], [ %8175, %8188 ]
  %8201 = phi float [ %8194, %8192 ], [ 1.000000e+00, %8188 ]
  %8202 = fcmp fast une float %8179, 0.000000e+00
  br i1 %8202, label %8203, label %8210, !dx.controlflow.hints !171

; <label>:8203                                    ; preds = %8199
  %8204 = fmul fast float %8179, 0x3FF7154760000000
  %8205 = call float @dx.op.unary.f32(i32 21, float %8204)  ; Exp(value)
  %8206 = fsub fast float 1.000000e+00, %8205
  %8207 = fmul fast float %8176, %8206
  %8208 = fsub fast float -0.000000e+00, %8207
  %8209 = fdiv fast float %8208, %8179
  br label %8210

; <label>:8210                                    ; preds = %8203, %8199, %8159, %8152
  %8211 = phi float [ %8209, %8203 ], [ %8171, %8159 ], [ %8156, %8152 ], [ %8176, %8199 ]
  %8212 = phi float [ %8200, %8203 ], [ %8170, %8159 ], [ %8155, %8152 ], [ %8200, %8199 ]
  %8213 = phi float [ %8189, %8203 ], [ %8169, %8159 ], [ %8154, %8152 ], [ %8189, %8199 ]
  %8214 = phi float [ %8205, %8203 ], [ %8161, %8159 ], [ 1.000000e+00, %8152 ], [ 1.000000e+00, %8199 ]
  %8215 = phi float [ %8201, %8203 ], [ %8161, %8159 ], [ 1.000000e+00, %8152 ], [ %8201, %8199 ]
  %8216 = phi float [ %8190, %8203 ], [ %8161, %8159 ], [ 1.000000e+00, %8152 ], [ %8190, %8199 ]
  %8217 = fmul fast float %8216, %8128
  %8218 = fmul fast float %8215, %8139
  %8219 = fmul fast float %8214, %8150
  %8220 = fadd fast float %8217, %8213
  %8221 = fadd fast float %8218, %8212
  %8222 = fadd fast float %8219, %8211
  %8223 = fmul fast float %8216, %8127
  %8224 = fmul fast float %8215, %8138
  %8225 = fmul fast float %8214, %8149
  br label %8226

; <label>:8226                                    ; preds = %8210, %8021
  %8227 = phi float [ %8225, %8210 ], [ %8027, %8021 ]
  %8228 = phi float [ %8224, %8210 ], [ %8026, %8021 ]
  %8229 = phi float [ %8223, %8210 ], [ %8025, %8021 ]
  %8230 = phi float [ %8222, %8210 ], [ %8024, %8021 ]
  %8231 = phi float [ %8221, %8210 ], [ %8023, %8021 ]
  %8232 = phi float [ %8220, %8210 ], [ %8022, %8021 ]
  %8233 = fmul fast float %8232, %7178
  %8234 = fmul fast float %8231, %7178
  %8235 = fmul fast float %8230, %7178
  %8236 = fmul fast float %8229, %7469
  %8237 = call float @dx.op.dot3.f32(i32 55, float %8229, float %8228, float %8227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8238 = call float @dx.op.dot3.f32(i32 55, float %8233, float %8234, float %8235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8239 = select i1 %268, float %8237, float %8229
  %8240 = select i1 %268, float %8237, float %8228
  %8241 = select i1 %268, float 1.000000e+00, float %8227
  %8242 = select i1 %268, float %8238, float %8233
  %8243 = select i1 %268, float 0.000000e+00, float %8234
  %8244 = select i1 %268, float 0.000000e+00, float %8235
  %8245 = fmul fast float %8239, %7463
  %8246 = fmul fast float %8240, %7464
  %8247 = fmul fast float %8241, %7465
  %8248 = fadd fast float %8245, %8242
  %8249 = fadd fast float %8246, %8243
  %8250 = fadd fast float %8244, %8247
  %8251 = fmul fast float %8239, %7466
  %8252 = fmul fast float %8240, %7467
  %8253 = fmul fast float %8241, %7468
  %8254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8255 = extractvalue %dx.types.CBufRet.i32 %8254, 0
  %8256 = icmp eq i32 %8255, 0
  br i1 %8256, label %8624, label %8257, !dx.controlflow.hints !173

; <label>:8257                                    ; preds = %8226
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 2
  %8260 = extractvalue %dx.types.CBufRet.f32 %8258, 3
  %8261 = fmul fast float %8259, %113
  %8262 = fmul fast float %8260, %114
  %8263 = fmul fast float %8261, 2.000000e+00
  %8264 = fmul fast float %8262, 2.000000e+00
  %8265 = fsub fast float 1.000000e+00, %8263
  %8266 = fsub fast float 1.000000e+00, %8264
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 0
  %8269 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8270 = extractvalue %dx.types.CBufRet.f32 %8267, 2
  %8271 = fmul fast float %8265, %8268
  %8272 = fmul fast float %8265, %8269
  %8273 = fmul fast float %8265, %8270
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 0
  %8276 = extractvalue %dx.types.CBufRet.f32 %8274, 1
  %8277 = extractvalue %dx.types.CBufRet.f32 %8274, 2
  %8278 = fmul fast float %8266, %8275
  %8279 = fmul fast float %8266, %8276
  %8280 = fmul fast float %8266, %8277
  %8281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.CBufRet.f32 %8281, 2
  %8285 = fadd fast float %8278, %8282
  %8286 = fadd fast float %8285, %8271
  %8287 = fadd fast float %8279, %8283
  %8288 = fadd fast float %8287, %8272
  %8289 = fadd fast float %8280, %8284
  %8290 = fadd fast float %8289, %8273
  %8291 = fmul fast float %8286, %7462
  %8292 = fmul fast float %8288, %7462
  %8293 = fmul fast float %8290, %7462
  %8294 = fmul fast float %8291, %8291
  %8295 = fmul fast float %8292, %8292
  %8296 = fadd fast float %8294, %8295
  %8297 = fmul fast float %8293, %8293
  %8298 = fadd fast float %8296, %8297
  %8299 = call float @dx.op.unary.f32(i32 24, float %8298)  ; Sqrt(value)
  %8300 = extractvalue %dx.types.CBufRet.f32 %7189, 0
  %8301 = fsub fast float %8299, %8300
  %8302 = extractvalue %dx.types.CBufRet.f32 %7189, 2
  %8303 = fmul fast float %8301, %8302
  %8304 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8305 = fadd fast float %8304, -5.000000e-01
  %8306 = fmul fast float %8305, 2.000000e+00
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 2
  %8309 = call float @dx.op.binary.f32(i32 36, float %8308, float %8306)  ; FMin(a,b)
  %8310 = fsub fast float -0.000000e+00, %8308
  %8311 = fcmp fast ogt float %8309, %8310
  br i1 %8311, label %8312, label %8624, !dx.controlflow.hints !174

; <label>:8312                                    ; preds = %8257
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 3
  %8315 = fcmp fast ogt float %8314, 0.000000e+00
  br i1 %8315, label %8316, label %8391, !dx.controlflow.hints !175

; <label>:8316                                    ; preds = %8312
  %8317 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8318 = extractvalue %dx.types.Dimensions %8317, 0
  %8319 = sitofp i32 %8318 to float
  %8320 = extractvalue %dx.types.Dimensions %8317, 1
  %8321 = sitofp i32 %8320 to float
  %8322 = fmul fast float %8261, %8319
  %8323 = fmul fast float %8262, %8321
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 1
  %8326 = fsub fast float -0.000000e+00, %8325
  %8327 = fptoui float %8326 to i32
  %8328 = fptoui float %8322 to i32
  %8329 = fptoui float %8323 to i32
  %8330 = and i32 %8327, 31
  %8331 = lshr i32 %8328, %8330
  %8332 = lshr i32 %8329, %8330
  %8333 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8327, i32 %8331, i32 %8332, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = fcmp fast olt float %8334, -1.000000e+00
  %8336 = fcmp fast ogt float %8334, -1.000000e+00
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8339 = select i1 %8336, float %8338, float 1.000000e+00
  %8340 = fadd fast float %8334, 1.000000e+00
  %8341 = fmul fast float %8339, %8340
  %8342 = call float @dx.op.unary.f32(i32 6, float %8341)  ; FAbs(value)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8337, 3
  %8344 = fcmp fast oge float %8342, %8343
  %8345 = select i1 %8344, float 0x4197782600000000, float %8342
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8350 = select i1 %8335, float %8347, float %8268
  %8351 = select i1 %8335, float %8348, float %8269
  %8352 = select i1 %8335, float %8349, float %8270
  %8353 = fmul fast float %8350, %8265
  %8354 = fmul fast float %8351, %8265
  %8355 = fmul fast float %8352, %8265
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = select i1 %8335, float %8357, float %8275
  %8361 = select i1 %8335, float %8358, float %8276
  %8362 = select i1 %8335, float %8359, float %8277
  %8363 = fmul fast float %8360, %8266
  %8364 = fmul fast float %8361, %8266
  %8365 = fmul fast float %8362, %8266
  %8366 = fadd fast float %8363, %8353
  %8367 = fadd fast float %8364, %8354
  %8368 = fadd fast float %8365, %8355
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 0
  %8371 = extractvalue %dx.types.CBufRet.f32 %8369, 1
  %8372 = extractvalue %dx.types.CBufRet.f32 %8369, 2
  %8373 = select i1 %8335, float %8370, float %8282
  %8374 = select i1 %8335, float %8371, float %8283
  %8375 = select i1 %8335, float %8372, float %8284
  %8376 = fadd fast float %8366, %8373
  %8377 = fadd fast float %8367, %8374
  %8378 = fadd fast float %8368, %8375
  %8379 = fmul fast float %8376, %8345
  %8380 = fmul fast float %8377, %8345
  %8381 = fmul fast float %8378, %8345
  %8382 = fmul fast float %8379, %8379
  %8383 = fmul fast float %8380, %8380
  %8384 = fadd fast float %8382, %8383
  %8385 = fmul fast float %8381, %8381
  %8386 = fadd fast float %8384, %8385
  %8387 = call float @dx.op.unary.f32(i32 24, float %8386)  ; Sqrt(value)
  %8388 = fsub fast float %8387, %8300
  %8389 = fmul fast float %8388, %8302
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  br label %8391

; <label>:8391                                    ; preds = %8316, %8312
  %8392 = phi float [ %8390, %8316 ], [ 1.000000e+00, %8312 ]
  %8393 = fmul fast float %8309, 5.000000e-01
  %8394 = fadd fast float %8393, 5.000000e-01
  %8395 = call float @dx.op.unary.f32(i32 22, float %8394)  ; Frc(value)
  %8396 = call float @dx.op.unary.f32(i32 27, float %8395)  ; Round_ni(value)
  %8397 = call float @dx.op.unary.f32(i32 22, float %8395)  ; Frc(value)
  %8398 = fmul fast float %8397, 2.000000e+00
  %8399 = fadd fast float %8398, -1.000000e+00
  %8400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8261, float %8262, float %8396, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8401 = extractvalue %dx.types.ResRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.ResRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.ResRet.f32 %8400, 2
  %8404 = extractvalue %dx.types.ResRet.f32 %8400, 3
  %8405 = fadd fast float %8401, -5.000000e-01
  %8406 = fadd fast float %8403, -5.000000e-01
  %8407 = fmul fast float %8405, 0xBFD5555560000000
  %8408 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8406, float %8407)  ; FMad(a,b,c)
  %8409 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8402, float 0.000000e+00)  ; FMad(a,b,c)
  %8410 = fadd fast float %8409, %8404
  %8411 = fmul fast float %8405, -7.500000e-01
  %8412 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8406, float %8411)  ; FMad(a,b,c)
  %8413 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8402, float 0.000000e+00)  ; FMad(a,b,c)
  %8414 = fadd fast float %8413, %8404
  %8415 = call float @dx.op.binary.f32(i32 35, float %8408, float -1.000000e+00)  ; FMax(a,b)
  %8416 = call float @dx.op.binary.f32(i32 35, float %8410, float -1.000000e+00)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 35, float %8412, float -1.000000e+00)  ; FMax(a,b)
  %8418 = call float @dx.op.binary.f32(i32 35, float %8414, float -1.000000e+00)  ; FMax(a,b)
  %8419 = call float @dx.op.binary.f32(i32 36, float %8415, float 1.000000e+00)  ; FMin(a,b)
  %8420 = call float @dx.op.binary.f32(i32 36, float %8416, float 1.000000e+00)  ; FMin(a,b)
  %8421 = call float @dx.op.binary.f32(i32 36, float %8417, float 1.000000e+00)  ; FMin(a,b)
  %8422 = call float @dx.op.binary.f32(i32 36, float %8418, float 1.000000e+00)  ; FMin(a,b)
  %8423 = fcmp fast olt float %8419, 0x3FEFFF8020000000
  br i1 %8423, label %8424, label %8539, !dx.controlflow.hints !176

; <label>:8424                                    ; preds = %8391
  %8425 = extractvalue %dx.types.CBufRet.f32 %8307, 3
  %8426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.CBufRet.f32 %8426, 1
  %8429 = extractvalue %dx.types.CBufRet.f32 %8426, 2
  %8430 = extractvalue %dx.types.CBufRet.f32 %8426, 3
  %8431 = fsub fast float %8427, %8419
  %8432 = fsub fast float %8428, %8420
  %8433 = fsub fast float %8429, %8421
  %8434 = fsub fast float %8430, %8422
  %8435 = fmul fast float %8431, %8425
  %8436 = fmul fast float %8432, %8425
  %8437 = fmul fast float %8433, %8425
  %8438 = fmul fast float %8434, %8425
  %8439 = fadd fast float %8435, %8419
  %8440 = fadd fast float %8436, %8420
  %8441 = fsub fast float -0.000000e+00, %8440
  %8442 = fadd fast float %8437, %8421
  %8443 = fadd fast float %8438, %8422
  %8444 = fmul fast float %8439, %8439
  %8445 = fsub fast float %8440, %8444
  %8446 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8445)  ; FMax(a,b)
  %8447 = fdiv fast float 1.000000e+00, %8446
  %8448 = fmul fast float %8440, %8439
  %8449 = fsub fast float %8442, %8448
  %8450 = fsub fast float %8399, %8439
  %8451 = fmul fast float %8399, %8399
  %8452 = fsub fast float %8451, %8440
  %8453 = fmul fast float %8450, %8447
  %8454 = fmul fast float %8453, %8449
  %8455 = fsub fast float %8452, %8454
  %8456 = fmul fast float %8440, %8440
  %8457 = fsub fast float %8443, %8456
  %8458 = fmul fast float %8449, %8449
  %8459 = fmul fast float %8458, %8447
  %8460 = fsub fast float %8457, %8459
  %8461 = fdiv fast float %8455, %8460
  %8462 = fmul fast float %8449, %8461
  %8463 = fsub fast float %8450, %8462
  %8464 = fmul fast float %8463, %8447
  %8465 = fmul fast float %8464, %8439
  %8466 = fsub fast float 1.000000e+00, %8465
  %8467 = fmul fast float %8440, %8461
  %8468 = fsub fast float %8466, %8467
  %8469 = fmul fast float %8464, %8464
  %8470 = fmul fast float %8461, 4.000000e+00
  %8471 = fmul fast float %8470, %8468
  %8472 = fsub fast float %8469, %8471
  %8473 = call float @dx.op.unary.f32(i32 24, float %8472)  ; Sqrt(value)
  %8474 = fcmp fast oge float %8464, 0.000000e+00
  %8475 = fsub fast float -0.000000e+00, %8473
  %8476 = select i1 %8474, float %8475, float %8473
  %8477 = fsub fast float %8476, %8464
  %8478 = fdiv fast float %8477, %8461
  %8479 = fdiv fast float %8468, %8477
  %8480 = fmul fast float %8478, 5.000000e-01
  %8481 = fmul fast float %8479, 2.000000e+00
  %8482 = select i1 %8474, float %8480, float %8481
  %8483 = select i1 %8474, float %8481, float %8480
  %8484 = call float @dx.op.binary.f32(i32 35, float %8482, float %8483)  ; FMax(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8482, float %8483)  ; FMin(a,b)
  %8486 = fcmp fast ogt float %8399, %8485
  br i1 %8486, label %8487, label %8497

; <label>:8487                                    ; preds = %8424
  %8488 = fsub fast float %8399, %8485
  %8489 = fsub fast float %8484, %8485
  %8490 = fmul fast float %8488, %8489
  %8491 = fmul fast float %8484, %8399
  %8492 = fadd fast float %8484, %8399
  %8493 = fmul fast float %8492, %8439
  %8494 = fadd fast float %8491, %8440
  %8495 = fsub fast float %8494, %8493
  %8496 = fdiv fast float %8495, %8490
  br label %8497

; <label>:8497                                    ; preds = %8487, %8424
  %8498 = phi float [ %8496, %8487 ], [ 0.000000e+00, %8424 ]
  %8499 = fcmp fast ogt float %8399, %8484
  %8500 = fsub fast float %8399, %8484
  br i1 %8499, label %8501, label %8511

; <label>:8501                                    ; preds = %8497
  %8502 = fsub fast float %8484, %8485
  %8503 = fmul fast float %8502, %8500
  %8504 = fmul fast float %8485, %8399
  %8505 = fadd fast float %8485, %8399
  %8506 = fmul fast float %8505, %8439
  %8507 = fsub fast float %8441, %8504
  %8508 = fadd fast float %8507, %8506
  %8509 = fdiv fast float %8508, %8503
  %8510 = fadd fast float %8509, %8498
  br label %8511

; <label>:8511                                    ; preds = %8501, %8497
  %8512 = phi float [ %8510, %8501 ], [ %8498, %8497 ]
  %8513 = fsub fast float %8399, %8485
  %8514 = fmul fast float %8513, %8500
  %8515 = fmul fast float %8485, %8484
  %8516 = fadd fast float %8485, %8484
  %8517 = fmul fast float %8516, %8439
  %8518 = fadd fast float %8515, %8440
  %8519 = fsub fast float %8518, %8517
  %8520 = fdiv fast float %8519, %8514
  %8521 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8522 = fcmp fast oeq float %7190, 0.000000e+00
  %8523 = extractvalue %dx.types.CBufRet.f32 %8307, 0
  %8524 = fcmp fast oeq float %8523, 0.000000e+00
  %8525 = or i1 %8522, %8524
  %8526 = fmul fast float %8523, 2.000000e+00
  %8527 = fadd fast float %8308, %8309
  %8528 = fdiv fast float %8527, %8526
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fmul fast float %8529, 2.000000e+00
  %8531 = fsub fast float 3.000000e+00, %8530
  %8532 = fmul fast float %8529, %8529
  %8533 = fmul fast float %8532, %8531
  %8534 = select i1 %8525, float 1.000000e+00, float %8533
  %8535 = fmul fast float %8520, %7190
  %8536 = fadd fast float %8521, %8535
  %8537 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  %8538 = fmul fast float %8534, %8537
  br label %8539

; <label>:8539                                    ; preds = %8511, %8391
  %8540 = phi float [ %8538, %8511 ], [ 0.000000e+00, %8391 ]
  %8541 = fsub fast float 1.000000e+00, %8540
  %8542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8261, float %8262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8543 = extractvalue %dx.types.ResRet.f32 %8542, 0
  %8544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.i32 %8544, 2
  %8546 = icmp eq i32 %8545, 0
  br i1 %8546, label %8552, label %8547

; <label>:8547                                    ; preds = %8539
  %8548 = call float @dx.op.unary.f32(i32 7, float %8540)  ; Saturate(value)
  %8549 = fadd fast float %8543, -1.000000e+00
  %8550 = fmul fast float %8548, %8549
  %8551 = fadd fast float %8550, 1.000000e+00
  br label %8552

; <label>:8552                                    ; preds = %8547, %8539
  %8553 = phi float [ %8551, %8547 ], [ %8541, %8539 ]
  br i1 %8315, label %8554, label %8572

; <label>:8554                                    ; preds = %8552
  %8555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8556 = extractvalue %dx.types.CBufRet.f32 %8555, 1
  %8557 = fsub fast float %8392, %8556
  %8558 = call float @dx.op.unary.f32(i32 7, float %8557)  ; Saturate(value)
  %8559 = fsub fast float %8392, %8314
  %8560 = call float @dx.op.unary.f32(i32 7, float %8559)  ; Saturate(value)
  %8561 = fsub fast float %8558, %8560
  %8562 = fsub fast float %8394, %8560
  %8563 = fdiv fast float %8562, %8561
  %8564 = call float @dx.op.unary.f32(i32 7, float %8563)  ; Saturate(value)
  %8565 = fmul fast float %8564, 2.000000e+00
  %8566 = fsub fast float 3.000000e+00, %8565
  %8567 = fsub fast float %8543, %8553
  %8568 = fmul fast float %8564, %8564
  %8569 = fmul fast float %8568, %8567
  %8570 = fmul fast float %8569, %8566
  %8571 = fadd fast float %8570, %8553
  br label %8572

; <label>:8572                                    ; preds = %8554, %8552
  %8573 = phi float [ %8571, %8554 ], [ %8553, %8552 ]
  %8574 = call float @dx.op.binary.f32(i32 35, float %8543, float %8573)  ; FMax(a,b)
  %8575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.i32 %8575, 2
  %8577 = and i32 %8576, 1
  %8578 = icmp eq i32 %8577, 0
  %8579 = fcmp fast une float %8574, 1.000000e+00
  %8580 = and i1 %8579, %8578
  br i1 %8580, label %8581, label %8600

; <label>:8581                                    ; preds = %8572
  %8582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8261, float %8262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8583 = extractvalue %dx.types.ResRet.f32 %8582, 0
  %8584 = extractvalue %dx.types.ResRet.f32 %8582, 1
  %8585 = extractvalue %dx.types.ResRet.f32 %8582, 2
  %8586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8587 = extractvalue %dx.types.CBufRet.f32 %8586, 1
  %8588 = fmul fast float %8587, %8583
  %8589 = fmul fast float %8587, %8584
  %8590 = fmul fast float %8587, %8585
  %8591 = fcmp fast ogt float %8543, 0x3FEFFF2E40000000
  %8592 = fsub fast float 1.000000e+00, %8574
  %8593 = fsub fast float 1.000000e+00, %8543
  %8594 = fdiv fast float %8592, %8593
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = select i1 %8591, float 0.000000e+00, float %8595
  %8597 = fmul fast float %8588, %8596
  %8598 = fmul fast float %8589, %8596
  %8599 = fmul fast float %8590, %8596
  br label %8600

; <label>:8600                                    ; preds = %8581, %8572
  %8601 = phi float [ 0.000000e+00, %8572 ], [ %8597, %8581 ]
  %8602 = phi float [ 0.000000e+00, %8572 ], [ %8598, %8581 ]
  %8603 = phi float [ 0.000000e+00, %8572 ], [ %8599, %8581 ]
  %8604 = fmul fast float %8601, %7178
  %8605 = fmul fast float %8602, %7178
  %8606 = fmul fast float %8603, %7178
  %8607 = fmul fast float %8574, %8236
  %8608 = call float @dx.op.dot3.f32(i32 55, float %8574, float %8574, float %8574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8609 = call float @dx.op.dot3.f32(i32 55, float %8604, float %8605, float %8606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8610 = select i1 %268, float %8608, float %8574
  %8611 = select i1 %268, float 1.000000e+00, float %8574
  %8612 = select i1 %268, float %8609, float %8604
  %8613 = select i1 %268, float 0.000000e+00, float %8605
  %8614 = select i1 %268, float 0.000000e+00, float %8606
  %8615 = fmul fast float %8610, %8248
  %8616 = fmul fast float %8610, %8249
  %8617 = fmul fast float %8611, %8250
  %8618 = fadd fast float %8615, %8612
  %8619 = fadd fast float %8616, %8613
  %8620 = fadd fast float %8614, %8617
  %8621 = fmul fast float %8610, %8251
  %8622 = fmul fast float %8610, %8252
  %8623 = fmul fast float %8611, %8253
  br label %8624

; <label>:8624                                    ; preds = %8600, %8257, %8226, %7458
  %8625 = phi float [ %7463, %7458 ], [ %8248, %8226 ], [ %8618, %8600 ], [ %8248, %8257 ]
  %8626 = phi float [ %7464, %7458 ], [ %8249, %8226 ], [ %8619, %8600 ], [ %8249, %8257 ]
  %8627 = phi float [ %7465, %7458 ], [ %8250, %8226 ], [ %8620, %8600 ], [ %8250, %8257 ]
  %8628 = phi float [ %7466, %7458 ], [ %8251, %8226 ], [ %8621, %8600 ], [ %8251, %8257 ]
  %8629 = phi float [ %7467, %7458 ], [ %8252, %8226 ], [ %8622, %8600 ], [ %8252, %8257 ]
  %8630 = phi float [ %7468, %7458 ], [ %8253, %8226 ], [ %8623, %8600 ], [ %8253, %8257 ]
  %8631 = phi float [ %7469, %7458 ], [ %8236, %8226 ], [ %8607, %8600 ], [ %8236, %8257 ]
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 2
  %8634 = extractvalue %dx.types.CBufRet.f32 %8632, 3
  %8635 = fmul fast float %8633, %113
  %8636 = fmul fast float %8634, %114
  %8637 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8638 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8639 = select i1 %7200, i32 2, i32 0
  %8640 = or i32 %8639, 1
  %8641 = uitofp i32 %8640 to float
  %8642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8637, float %8638, float %8641, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8643 = extractvalue %dx.types.ResRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.ResRet.f32 %8642, 1
  %8645 = extractvalue %dx.types.ResRet.f32 %8642, 2
  %8646 = extractvalue %dx.types.ResRet.f32 %8642, 3
  %8647 = add nuw nsw i32 %8639, 2
  %8648 = uitofp i32 %8647 to float
  %8649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8637, float %8638, float %8648, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8650 = extractvalue %dx.types.ResRet.f32 %8649, 0
  %8651 = extractvalue %dx.types.ResRet.f32 %8649, 1
  %8652 = extractvalue %dx.types.ResRet.f32 %8649, 2
  %8653 = extractvalue %dx.types.ResRet.f32 %8649, 3
  %8654 = call float @dx.op.binary.f32(i32 35, float %8644, float %8645)  ; FMax(a,b)
  %8655 = call float @dx.op.binary.f32(i32 35, float %8643, float %8654)  ; FMax(a,b)
  %8656 = call float @dx.op.binary.f32(i32 35, float %8655, float %8646)  ; FMax(a,b)
  %8657 = call float @dx.op.binary.f32(i32 36, float %8651, float %8652)  ; FMin(a,b)
  %8658 = call float @dx.op.binary.f32(i32 36, float %8650, float %8657)  ; FMin(a,b)
  %8659 = call float @dx.op.binary.f32(i32 36, float %8658, float %8653)  ; FMin(a,b)
  %8660 = fmul fast float %8656, 2.550000e+02
  %8661 = fadd fast float %8660, 0x3F70101020000000
  %8662 = fptoui float %8661 to i32
  %8663 = fmul fast float %8659, 2.550000e+02
  %8664 = fadd fast float %8663, 0x3F70101020000000
  %8665 = fptoui float %8664 to i32
  %8666 = icmp ult i32 %8662, %8665
  br i1 %8666, label %8667, label %8836

; <label>:8667                                    ; preds = %8624
  %8668 = fcmp fast ogt float %103, 9.843750e-01
  %8669 = fadd fast float %7462, -4.000000e+00
  %8670 = select i1 %8668, float -4.000000e+00, float %8669
  %8671 = call float @dx.op.binary.f32(i32 35, float %8670, float 0.000000e+00)  ; FMax(a,b)
  %8672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8672, 0
  %8674 = fadd fast float %8673, %8671
  %8675 = extractvalue %dx.types.CBufRet.f32 %8672, 2
  %8676 = fmul fast float %8674, %8675
  %8677 = call float @dx.op.unary.f32(i32 23, float %8676)  ; Log(value)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8672, 3
  %8679 = fmul fast float %8678, %8677
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 2
  %8682 = fmul fast float %8679, %8681
  %8683 = call float @dx.op.unary.f32(i32 7, float %8682)  ; Saturate(value)
  %8684 = uitofp i32 %8662 to float
  %8685 = uitofp i32 %8665 to float
  %8686 = fadd fast float %8684, 5.000000e-01
  %8687 = fadd fast float %8685, 5.000000e-01
  %8688 = fmul fast float %8681, %8686
  %8689 = fmul fast float %8681, %8687
  %8690 = fadd fast float %8688, 0x3F0FFB4800000000
  %8691 = fadd fast float %8689, 0xBF0FFB4800000000
  %8692 = call float @dx.op.binary.f32(i32 35, float %8683, float %8690)  ; FMax(a,b)
  %8693 = call float @dx.op.binary.f32(i32 36, float %8692, float %8691)  ; FMin(a,b)
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8697 = extractvalue %dx.types.CBufRet.f32 %8694, 0
  %8698 = select i1 %7200, float %8697, float 0.000000e+00
  %8699 = fmul fast float %8695, %8693
  %8700 = fadd fast float %8698, %8699
  %8701 = fadd fast float %8698, %8696
  %8702 = fsub fast float %8695, %8696
  %8703 = fadd fast float %8702, %8698
  %8704 = call float @dx.op.binary.f32(i32 35, float %8700, float %8701)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8704, float %8703)  ; FMin(a,b)
  %8706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8637, float %8638, float %8705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8707 = extractvalue %dx.types.ResRet.f32 %8706, 0
  %8708 = extractvalue %dx.types.ResRet.f32 %8706, 1
  %8709 = extractvalue %dx.types.ResRet.f32 %8706, 2
  %8710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.i32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.i32 %8710, 1
  %8713 = uitofp i32 %8711 to float
  %8714 = uitofp i32 %8712 to float
  %8715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.f32 %8715, 0
  %8717 = extractvalue %dx.types.CBufRet.f32 %8715, 1
  %8718 = fmul fast float %8713, %8637
  %8719 = fmul fast float %8714, %8638
  %8720 = fadd fast float %8718, -5.000000e-01
  %8721 = fadd fast float %8719, -5.000000e-01
  %8722 = call float @dx.op.unary.f32(i32 22, float %8720)  ; Frc(value)
  %8723 = call float @dx.op.unary.f32(i32 22, float %8721)  ; Frc(value)
  %8724 = fmul fast float %8722, %8722
  %8725 = fmul fast float %8724, %8722
  %8726 = fsub fast float 3.000000e+00, %8722
  %8727 = fmul fast float %8724, %8726
  %8728 = fmul fast float %8722, 3.000000e+00
  %8729 = fmul fast float %8725, 3.000000e+00
  %8730 = fmul fast float %8724, 6.000000e+00
  %8731 = fsub fast float %8729, %8730
  %8732 = fadd fast float %8731, 4.000000e+00
  %8733 = fmul fast float %8732, 0x3FC5555560000000
  %8734 = fmul fast float %8725, -3.000000e+00
  %8735 = fadd fast float %8724, %8722
  %8736 = fmul fast float %8735, 3.000000e+00
  %8737 = fadd fast float %8734, 1.000000e+00
  %8738 = fadd fast float %8737, %8736
  %8739 = fmul fast float %8725, 0x3FC5555560000000
  %8740 = fmul fast float %8723, %8723
  %8741 = fmul fast float %8740, %8723
  %8742 = fsub fast float 3.000000e+00, %8723
  %8743 = fmul fast float %8740, %8742
  %8744 = fmul fast float %8723, 3.000000e+00
  %8745 = fmul fast float %8741, 3.000000e+00
  %8746 = fmul fast float %8740, 6.000000e+00
  %8747 = fsub fast float %8745, %8746
  %8748 = fadd fast float %8747, 4.000000e+00
  %8749 = fmul fast float %8748, 0x3FC5555560000000
  %8750 = fmul fast float %8741, -3.000000e+00
  %8751 = fadd fast float %8740, %8723
  %8752 = fmul fast float %8751, 3.000000e+00
  %8753 = fadd fast float %8750, 1.000000e+00
  %8754 = fadd fast float %8753, %8752
  %8755 = fmul fast float %8741, 0x3FC5555560000000
  %8756 = fadd fast float %8722, 1.000000e+00
  %8757 = fsub fast float 1.000000e+00, %8728
  %8758 = fadd fast float %8757, %8727
  %8759 = fadd fast float %8758, %8732
  %8760 = fmul fast float %8759, 0x3FC5555560000000
  %8761 = fdiv fast float %8733, %8760
  %8762 = fsub fast float %8756, %8761
  %8763 = fsub fast float 1.000000e+00, %8722
  %8764 = fadd fast float %8738, %8725
  %8765 = fmul fast float %8764, 0x3FC5555560000000
  %8766 = fdiv fast float %8739, %8765
  %8767 = fadd fast float %8763, %8766
  %8768 = fadd fast float %8723, 1.000000e+00
  %8769 = fsub fast float 1.000000e+00, %8744
  %8770 = fadd fast float %8769, %8743
  %8771 = fadd fast float %8770, %8748
  %8772 = fmul fast float %8771, 0x3FC5555560000000
  %8773 = fdiv fast float %8749, %8772
  %8774 = fsub fast float %8768, %8773
  %8775 = fsub fast float 1.000000e+00, %8723
  %8776 = fadd fast float %8754, %8741
  %8777 = fmul fast float %8776, 0x3FC5555560000000
  %8778 = fdiv fast float %8755, %8777
  %8779 = fadd fast float %8778, %8775
  %8780 = fmul fast float %8762, %8716
  %8781 = fsub fast float %8637, %8780
  %8782 = fmul fast float %8767, %8716
  %8783 = fadd fast float %8782, %8637
  %8784 = fmul fast float %8779, %8717
  %8785 = fadd fast float %8784, %8638
  %8786 = fmul fast float %8774, %8717
  %8787 = fsub fast float %8638, %8786
  %8788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8781, float %8787, float %8705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8789 = extractvalue %dx.types.ResRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.ResRet.f32 %8788, 1
  %8791 = extractvalue %dx.types.ResRet.f32 %8788, 2
  %8792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8783, float %8787, float %8705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8793 = extractvalue %dx.types.ResRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.ResRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.ResRet.f32 %8792, 2
  %8796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8781, float %8785, float %8705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8797 = extractvalue %dx.types.ResRet.f32 %8796, 0
  %8798 = extractvalue %dx.types.ResRet.f32 %8796, 1
  %8799 = extractvalue %dx.types.ResRet.f32 %8796, 2
  %8800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8783, float %8785, float %8705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8801 = extractvalue %dx.types.ResRet.f32 %8800, 0
  %8802 = extractvalue %dx.types.ResRet.f32 %8800, 1
  %8803 = extractvalue %dx.types.ResRet.f32 %8800, 2
  %8804 = fsub fast float %8797, %8789
  %8805 = fsub fast float %8798, %8790
  %8806 = fsub fast float %8799, %8791
  %8807 = fmul fast float %8804, %8777
  %8808 = fmul fast float %8805, %8777
  %8809 = fmul fast float %8806, %8777
  %8810 = fadd fast float %8807, %8789
  %8811 = fadd fast float %8808, %8790
  %8812 = fadd fast float %8809, %8791
  %8813 = fsub fast float %8801, %8793
  %8814 = fsub fast float %8802, %8794
  %8815 = fsub fast float %8803, %8795
  %8816 = fmul fast float %8813, %8777
  %8817 = fmul fast float %8814, %8777
  %8818 = fmul fast float %8815, %8777
  %8819 = fsub fast float %8793, %8810
  %8820 = fadd fast float %8819, %8816
  %8821 = fsub fast float %8794, %8811
  %8822 = fadd fast float %8821, %8817
  %8823 = fsub fast float %8795, %8812
  %8824 = fadd fast float %8823, %8818
  %8825 = fmul fast float %8820, %8765
  %8826 = fmul fast float %8822, %8765
  %8827 = fmul fast float %8824, %8765
  %8828 = fadd fast float %8825, %8810
  %8829 = fadd fast float %8826, %8811
  %8830 = fadd fast float %8827, %8812
  %8831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8831, 1
  %8833 = fmul fast float %8828, %8832
  %8834 = fmul fast float %8829, %8832
  %8835 = fmul fast float %8830, %8832
  br label %8836

; <label>:8836                                    ; preds = %8667, %8624
  %8837 = phi float [ %8707, %8667 ], [ 1.000000e+00, %8624 ]
  %8838 = phi float [ %8708, %8667 ], [ 1.000000e+00, %8624 ]
  %8839 = phi float [ %8709, %8667 ], [ 1.000000e+00, %8624 ]
  %8840 = phi float [ %8833, %8667 ], [ 0.000000e+00, %8624 ]
  %8841 = phi float [ %8834, %8667 ], [ 0.000000e+00, %8624 ]
  %8842 = phi float [ %8835, %8667 ], [ 0.000000e+00, %8624 ]
  %8843 = fmul fast float %8840, %7178
  %8844 = fmul fast float %8841, %7178
  %8845 = fmul fast float %8842, %7178
  %8846 = fmul fast float %8837, %8631
  %8847 = call float @dx.op.dot3.f32(i32 55, float %8837, float %8838, float %8839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8848 = call float @dx.op.dot3.f32(i32 55, float %8843, float %8844, float %8845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8849 = select i1 %268, float %8847, float %8837
  %8850 = select i1 %268, float %8847, float %8838
  %8851 = select i1 %268, float 1.000000e+00, float %8839
  %8852 = select i1 %268, float %8848, float %8843
  %8853 = select i1 %268, float 0.000000e+00, float %8844
  %8854 = select i1 %268, float 0.000000e+00, float %8845
  %8855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.i32 %8855, 3
  %8857 = and i32 %8856, 3
  %8858 = icmp ne i32 %8857, 0
  %8859 = and i32 %8856, 4
  %8860 = icmp ne i32 %8859, 0
  %8861 = and i1 %8858, %8860
  %8862 = and i1 %268, %8861
  br i1 %8862, label %8863, label %8869

; <label>:8863                                    ; preds = %8836
  %8864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8864, 1
  %8866 = fadd fast float %8846, -1.000000e+00
  %8867 = fmul fast float %8865, %8866
  %8868 = fadd fast float %8867, 1.000000e+00
  br label %8869

; <label>:8869                                    ; preds = %8863, %8836
  %8870 = phi float [ %8868, %8863 ], [ %8846, %8836 ]
  %8871 = fadd fast float %8628, %8625
  %8872 = fmul fast float %8849, %8871
  %8873 = fadd fast float %8872, %8852
  %8874 = fadd fast float %8629, %8626
  %8875 = fmul fast float %8850, %8874
  %8876 = fadd fast float %8875, %8853
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 0
  br i1 %268, label %8879, label %8903

; <label>:8879                                    ; preds = %8869
  %8880 = fadd fast float %8873, %8876
  %8881 = fmul fast float %8878, %8880
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 3
  %8884 = extractvalue %dx.types.CBufRet.f32 %7182, 1
  %8885 = fsub fast float %7187, %7181
  %8886 = fadd fast float %8885, %7188
  %8887 = fsub fast float %8886, %8884
  %8888 = extractvalue %dx.types.CBufRet.f32 %7182, 2
  %8889 = fmul fast float %8887, %8888
  %8890 = call float @dx.op.unary.f32(i32 7, float %8889)  ; Saturate(value)
  %8891 = fsub fast float %8890, %8883
  %8892 = fmul fast float %8891, %8870
  %8893 = fadd fast float %8892, %8883
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8896 = fsub fast float %8893, %8895
  %8897 = fmul fast float %8896, 1.000000e+01
  %8898 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8899 = fsub fast float %3901, %7178
  %8900 = fmul fast float %8898, %8899
  %8901 = fadd fast float %8900, %7178
  %8902 = fmul fast float %8901, %8893
  br label %8927

; <label>:8903                                    ; preds = %8869
  %8904 = fadd fast float %8630, %8627
  %8905 = fmul fast float %8851, %8904
  %8906 = fadd fast float %8905, %8854
  %8907 = fmul fast float %8878, %8873
  %8908 = fmul fast float %8878, %8876
  %8909 = fmul fast float %8878, %8906
  %8910 = call float @dx.op.binary.f32(i32 35, float %8908, float %8909)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 35, float %8907, float %8910)  ; FMax(a,b)
  %8912 = call float @dx.op.binary.f32(i32 35, float %8911, float %7178)  ; FMax(a,b)
  %8913 = fcmp fast ugt float %8912, 0x3F10000000000000
  br i1 %8913, label %8915, label %8914

; <label>:8914                                    ; preds = %8903
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8915

; <label>:8915                                    ; preds = %8914, %8903
  %8916 = add i32 %57, 356
  %8917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8916, i32 undef)  ; BufferLoad(srv,index,wot)
  %8918 = extractvalue %dx.types.ResRet.i32 %8917, 0
  %8919 = and i32 %8918, 32
  %8920 = icmp eq i32 %8919, 0
  br i1 %8920, label %8927, label %8921

; <label>:8921                                    ; preds = %8915
  %8922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8923 = extractvalue %dx.types.CBufRet.f32 %8922, 0
  %8924 = fmul fast float %8923, 0x3FE99999A0000000
  %8925 = fadd fast float %8923, %8907
  %8926 = fadd fast float %8924, %8909
  br label %8927

; <label>:8927                                    ; preds = %8921, %8915, %8879
  %8928 = phi float [ %8881, %8879 ], [ %8925, %8921 ], [ %8907, %8915 ]
  %8929 = phi float [ %8902, %8879 ], [ %8908, %8921 ], [ %8908, %8915 ]
  %8930 = phi float [ %8901, %8879 ], [ %8926, %8921 ], [ %8909, %8915 ]
  %8931 = phi float [ %8901, %8879 ], [ %7178, %8921 ], [ %7178, %8915 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8932 = call float @dx.op.binary.f32(i32 36, float %8928, float 3.225500e+04)  ; FMin(a,b)
  %8933 = call float @dx.op.binary.f32(i32 36, float %8929, float 3.225500e+04)  ; FMin(a,b)
  %8934 = call float @dx.op.binary.f32(i32 36, float %8930, float 3.225500e+04)  ; FMin(a,b)
  %8935 = call float @dx.op.binary.f32(i32 36, float %8931, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8933)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8935)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

