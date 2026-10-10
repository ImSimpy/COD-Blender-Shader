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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint    y  
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b3acc415ed4fb3457ff5351e777e534f
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = alloca [12 x float], align 4
  %99 = alloca [12 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fmul fast float %105, %94
  %107 = fmul fast float %105, %95
  %108 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = bitcast float %108 to i32
  %110 = ashr i32 %109, 1
  %111 = sub nsw i32 1597250115, %110
  %112 = bitcast i32 %111 to float
  %113 = fmul fast float %112, %85
  %114 = fmul fast float %112, %86
  %115 = fmul fast float %112, %87
  %116 = fmul fast float %86, %83
  %117 = fmul fast float %87, %82
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %87, %81
  %120 = fmul fast float %85, %83
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %85, %82
  %123 = fmul fast float %86, %81
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %84
  %126 = fmul fast float %121, %84
  %127 = fmul fast float %124, %84
  %128 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = bitcast float %128 to i32
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 1597250115, %130
  %132 = bitcast i32 %131 to float
  %133 = fmul fast float %132, %74
  %134 = fmul fast float %132, %75
  %135 = fmul fast float %132, %76
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = fcmp fast une float %137, 0.000000e+00
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %106, 2.000000e+00
  %143 = fmul fast float %142, %140
  %144 = fmul fast float %107, 2.000000e+00
  %145 = fmul fast float %144, %141
  %146 = fsub fast float 1.000000e+00, %143
  %147 = fsub fast float 1.000000e+00, %145
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %138, float %149, float %153
  %157 = select i1 %138, float %150, float %154
  %158 = select i1 %138, float %151, float %155
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fmul fast float %158, %146
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %138, float %163, float %167
  %171 = select i1 %138, float %164, float %168
  %172 = select i1 %138, float %165, float %169
  %173 = fmul fast float %170, %147
  %174 = fmul fast float %171, %147
  %175 = fmul fast float %172, %147
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = select i1 %138, float %180, float %184
  %188 = select i1 %138, float %181, float %185
  %189 = select i1 %138, float %182, float %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fmul fast float %190, %97
  %194 = fmul fast float %191, %97
  %195 = fmul fast float %192, %97
  %196 = shl i32 %56, 5
  %197 = add i32 %196, 4194304
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = extractvalue %dx.types.ResRet.i32 %198, 2
  %202 = extractvalue %dx.types.ResRet.i32 %198, 3
  %203 = fmul fast float %106, 5.000000e-01
  %204 = fmul fast float %107, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %226 = fmul fast float %224, %106
  %227 = fmul fast float %225, %107
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 114688
  %231 = icmp ne i32 %230, 0
  %232 = select i1 %231, float %226, float 0.000000e+00
  %233 = select i1 %231, float %227, float 0.000000e+00
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %232, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fmul fast float %235, 2.550000e+02
  %237 = fptoui float %236 to i32
  %238 = select i1 %231, i32 %237, i32 0
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = and i32 %240, 3
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %240, 4
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %255

; <label>:246                                     ; preds = %0
  %247 = fmul fast float %141, %107
  %248 = fmul fast float %140, %106
  %249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %248, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = fsub fast float 1.000000e+00, %250
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = fcmp fast olt float %251, %253
  br label %258

; <label>:255                                     ; preds = %0
  %256 = icmp eq i32 %243, 0
  %257 = and i1 %242, %256
  br label %258

; <label>:258                                     ; preds = %255, %246
  %259 = phi i1 [ %254, %246 ], [ %257, %255 ]
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = fmul fast float %261, 0x3FE3C6EF40000000
  %263 = frem fast float %106, 2.560000e+02
  %264 = frem fast float %107, 2.560000e+02
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %265, i32 %266, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fadd fast float %268, %262
  %270 = call float @dx.op.unary.f32(i32 22, float %269)  ; Frc(value)
  %271 = add i32 %55, 156
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %55, 216
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %55, 36
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %55, 288
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %55, 172
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %55, 232
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %55, 52
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %55, 304
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %55, 188
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %55, 248
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %55, 68
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %55, 320
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %55, 204
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = shl i32 %399, 4
  %401 = and i32 %400, 32752
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %399, 7
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %399, 22
  %407 = shl nuw nsw i32 %406, 5
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = add i32 %55, 264
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = lshr i32 %411, 8
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = lshr i32 %411, 16
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = add i32 %55, 84
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %55, 336
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = fmul fast float %434, 0x3F50624DE0000000
  %438 = fmul fast float %436, 0x3F50624DE0000000
  %439 = add i32 %55, 348
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 32
  %443 = icmp eq i32 %442, 0
  %444 = and i32 %441, 64
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %441, 128
  %447 = icmp eq i32 %446, 0
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 2
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %467, label %452

; <label>:452                                     ; preds = %258
  %453 = add i32 %55, 472
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = add i32 %455, 0
  %457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %457, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = fmul fast float %462, %90
  %464 = fmul fast float %459, %91
  %465 = fmul fast float %460, %92
  %466 = fmul fast float %461, %93
  br label %467

; <label>:467                                     ; preds = %452, %258
  %468 = phi float [ %93, %258 ], [ %466, %452 ]
  %469 = phi float [ %92, %258 ], [ %465, %452 ]
  %470 = phi float [ %91, %258 ], [ %464, %452 ]
  %471 = phi float [ %90, %258 ], [ %463, %452 ]
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 2
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %495, label %476

; <label>:476                                     ; preds = %467
  %477 = add i32 %55, 44
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %470, float 1.000000e+00
  %483 = add i32 %55, 60
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %469, float 1.000000e+00
  %489 = add i32 %55, 76
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %468, float 1.000000e+00
  br label %495

; <label>:495                                     ; preds = %476, %467
  %496 = phi float [ %468, %467 ], [ %494, %476 ]
  %497 = phi float [ %469, %467 ], [ %488, %476 ]
  %498 = phi float [ %470, %467 ], [ %482, %476 ]
  %499 = lshr i32 %473, 20
  %500 = and i32 %499, 3
  %501 = add nuw nsw i32 %500, 1
  %502 = add i32 %55, 24
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %55, 28
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = or i32 %507, %504
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %1044, label %510

; <label>:510                                     ; preds = %495
  %511 = and i32 %504, 262144
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %61, float 1.000000e+00
  %514 = select i1 %512, float %62, float 0.000000e+00
  %515 = select i1 %512, float %63, float 0.000000e+00
  %516 = select i1 %512, float %64, float 1.000000e+00
  %517 = select i1 %512, float %65, float %88
  %518 = select i1 %512, float %66, float %89
  %519 = add i32 %55, 284
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = fmul fast float %523, 0x3F50624DE0000000
  %525 = add i32 %55, 88
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = and i32 %528, 255
  %530 = lshr i32 %527, 24
  %531 = add i32 %55, 292
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %533, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = add i32 %55, 32
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 22
  %542 = shl nuw nsw i32 %541, 5
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = shl i32 %540, 4
  %545 = and i32 %544, 32752
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %540, 7
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = fmul fast float %551, 1.000000e+03
  %553 = fmul fast float %311, %552
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = fadd fast float %554, %301
  %556 = fmul fast float %312, %552
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = fadd fast float %557, %303
  %559 = fmul fast float %524, %552
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fmul fast float %560, 0x401921FB60000000
  %562 = fadd fast float %561, %543
  %563 = call float @dx.op.unary.f32(i32 13, float %562)  ; Sin(value)
  %564 = call float @dx.op.unary.f32(i32 12, float %562)  ; Cos(value)
  %565 = fsub fast float -0.000000e+00, %563
  %566 = fadd fast float %517, -5.000000e-01
  %567 = fadd fast float %518, -5.000000e-01
  %568 = fmul fast float %535, %566
  %569 = fmul fast float %537, %567
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fmul fast float %546, %570
  %573 = fmul fast float %549, %571
  %574 = fmul fast float %564, %572
  %575 = call float @dx.op.tertiary.f32(i32 46, float %565, float %573, float %574)  ; FMad(a,b,c)
  %576 = fmul fast float %563, %572
  %577 = call float @dx.op.tertiary.f32(i32 46, float %564, float %573, float %576)  ; FMad(a,b,c)
  %578 = fadd fast float %555, %575
  %579 = fadd fast float %558, %577
  %580 = icmp ugt i32 %529, 1
  %581 = icmp ugt i32 %527, 33554431
  %582 = or i1 %581, %580
  br i1 %582, label %583, label %608

; <label>:583                                     ; preds = %510
  %584 = add i32 %55, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = fmul fast float %551, %588
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = mul nuw nsw i32 %529, %530
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %590, %592
  %594 = call float @dx.op.unary.f32(i32 27, float %593)  ; Round_ni(value)
  %595 = fptoui float %594 to i32
  %596 = urem i32 %595, %529
  %597 = udiv i32 %595, %530
  %598 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %599 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %600 = uitofp i32 %596 to float
  %601 = uitofp i32 %597 to float
  %602 = fadd fast float %598, %600
  %603 = fadd fast float %599, %601
  %604 = uitofp i32 %529 to float
  %605 = uitofp i32 %530 to float
  %606 = fdiv fast float %602, %604
  %607 = fdiv fast float %603, %605
  br label %608

; <label>:608                                     ; preds = %583, %510
  %609 = phi float [ %606, %583 ], [ %578, %510 ]
  %610 = phi float [ %607, %583 ], [ %579, %510 ]
  %611 = and i32 %504, 256
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %659, label %613

; <label>:613                                     ; preds = %608
  %614 = add i32 %55, 424
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = add i32 %616, 0
  %618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %618, %dx.types.Handle %103, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = add i32 %55, 100
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = shl i32 %623, 4
  %625 = and i32 %624, 32752
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %623, 7
  %628 = and i32 %627, 32752
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = fsub fast float 1.000000e+00, %471
  %631 = call float @dx.op.binary.f32(i32 35, float %630, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %632 = bitcast float %471 to i32
  %633 = sitofp i32 %632 to float
  %634 = fadd fast float %633, 0xC1CFBF8940000000
  %635 = fmul fast float %629, %634
  %636 = fadd fast float %635, 0x41CFBF8940000000
  %637 = fptosi float %636 to i32
  %638 = bitcast i32 %637 to float
  %639 = bitcast float %631 to i32
  %640 = sitofp i32 %639 to float
  %641 = fadd fast float %640, 0xC1CFBF8940000000
  %642 = fmul fast float %641, %629
  %643 = fadd fast float %642, 0x41CFBF8940000000
  %644 = fptosi float %643 to i32
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %638, %626
  %647 = fmul fast float %645, %626
  %648 = fsub fast float %631, %646
  %649 = fadd fast float %647, %631
  %650 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %652 = fsub fast float %620, %650
  %653 = fsub fast float %651, %650
  %654 = bitcast float %653 to i32
  %655 = sub nsw i32 2129859010, %654
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %656, %652
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  br label %659

; <label>:659                                     ; preds = %613, %608
  %660 = phi float [ %658, %613 ], [ %471, %608 ]
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 128
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %681, label %665

; <label>:665                                     ; preds = %659
  %666 = add i32 %55, 408
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %670, %dx.types.Handle %103, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 524288
  %676 = icmp ne i32 %675, 0
  %677 = fcmp fast ogt float %672, 0x3FE0101020000000
  %678 = select i1 %677, float 1.000000e+00, float 0.000000e+00
  %679 = select i1 %676, float %678, float %672
  %680 = fmul fast float %679, %660
  br label %681

; <label>:681                                     ; preds = %665, %659
  %682 = phi float [ %680, %665 ], [ %660, %659 ]
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 16
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %885, label %687

; <label>:687                                     ; preds = %681
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %55, 360
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %102, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = extractvalue %dx.types.ResRet.f32 %695, 3
  %700 = and i32 %689, 255
  %701 = uitofp i32 %700 to float
  %702 = lshr i32 %689, 8
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %699, %701
  %706 = fadd fast float %705, %704
  %707 = fmul fast float %706, 0x3F70101000000000
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 512
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %720, label %712

; <label>:712                                     ; preds = %687
  %713 = add i32 %55, 440
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %103, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  br label %720

; <label>:720                                     ; preds = %712, %687
  %721 = phi float [ %719, %712 ], [ 1.000000e+00, %687 ]
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 33554432
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %832, label %726

; <label>:726                                     ; preds = %720
  %727 = add i32 %55, 224
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %729, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = add i32 %55, 228
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 65535
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = lshr i32 %740, 24
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = and i32 %740, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = lshr i32 %740, 8
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = lshr i32 %740, 16
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = add i32 %55, 220
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = lshr i32 %757, 24
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = and i32 %757, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = lshr i32 %757, 8
  %765 = and i32 %764, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %757, 16
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = bitcast float %696 to i32
  %773 = ashr i32 %772, 1
  %774 = sub nsw i32 1597463174, %773
  %775 = bitcast i32 %774 to float
  %776 = fmul fast float %696, 5.000000e-01
  %777 = fmul fast float %775, %775
  %778 = fmul fast float %777, %776
  %779 = fsub fast float 1.500000e+00, %778
  %780 = fmul fast float %775, %696
  %781 = fmul fast float %780, %779
  %782 = bitcast float %697 to i32
  %783 = ashr i32 %782, 1
  %784 = sub nsw i32 1597463174, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %697, 5.000000e-01
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.500000e+00, %788
  %790 = fmul fast float %785, %697
  %791 = fmul fast float %790, %789
  %792 = bitcast float %698 to i32
  %793 = ashr i32 %792, 1
  %794 = sub nsw i32 1597463174, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %698, 5.000000e-01
  %797 = fmul fast float %795, %795
  %798 = fmul fast float %797, %796
  %799 = fsub fast float 1.500000e+00, %798
  %800 = fmul fast float %795, %698
  %801 = fmul fast float %800, %799
  %802 = fsub fast float %781, %763
  %803 = fsub fast float %791, %767
  %804 = fsub fast float %801, %771
  %805 = fmul fast float %802, %731
  %806 = fmul fast float %803, %733
  %807 = fmul fast float %804, %738
  %808 = fadd fast float %805, %746
  %809 = fadd fast float %806, %750
  %810 = fadd fast float %807, %754
  %811 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = fmul fast float %811, %811
  %815 = fmul fast float %812, %812
  %816 = fmul fast float %813, %813
  %817 = fsub fast float %814, %696
  %818 = fsub fast float %815, %697
  %819 = fsub fast float %816, %698
  %820 = fmul fast float %817, %721
  %821 = fmul fast float %818, %721
  %822 = fmul fast float %819, %721
  %823 = fadd fast float %820, %696
  %824 = fadd fast float %821, %697
  %825 = fadd fast float %822, %698
  %826 = fadd fast float %743, %707
  %827 = fsub fast float %826, %760
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %829 = fsub fast float %828, %707
  %830 = fmul fast float %829, %721
  %831 = fadd fast float %830, %707
  br label %885

; <label>:832                                     ; preds = %720
  %833 = and i32 %723, 134217728
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %869, label %835

; <label>:835                                     ; preds = %832
  %836 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %837 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %839 = fadd fast float %836, -5.000000e-01
  %840 = fadd fast float %837, -5.000000e-01
  %841 = fadd fast float %838, -5.000000e-01
  %842 = fmul fast float %839, %721
  %843 = fmul fast float %840, %721
  %844 = fmul fast float %841, %721
  %845 = fadd fast float %842, 5.000000e-01
  %846 = fadd fast float %843, 5.000000e-01
  %847 = fadd fast float %844, 5.000000e-01
  %848 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %849 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %850 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %851 = fmul fast float %845, 2.000000e+00
  %852 = fsub fast float 1.000000e+00, %851
  %853 = fmul fast float %852, %848
  %854 = fadd fast float %853, %851
  %855 = fmul fast float %854, %848
  %856 = fmul fast float %846, 2.000000e+00
  %857 = fsub fast float 1.000000e+00, %856
  %858 = fmul fast float %857, %849
  %859 = fadd fast float %858, %856
  %860 = fmul fast float %859, %849
  %861 = fmul fast float %847, 2.000000e+00
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %850
  %864 = fadd fast float %863, %861
  %865 = fmul fast float %864, %850
  %866 = fmul fast float %855, %855
  %867 = fmul fast float %860, %860
  %868 = fmul fast float %865, %865
  br label %885

; <label>:869                                     ; preds = %832
  %870 = fmul fast float %288, %288
  %871 = fmul fast float %292, %292
  %872 = fmul fast float %296, %296
  %873 = fadd fast float %870, -1.000000e+00
  %874 = fadd fast float %871, -1.000000e+00
  %875 = fadd fast float %872, -1.000000e+00
  %876 = fmul fast float %721, %873
  %877 = fmul fast float %721, %874
  %878 = fmul fast float %721, %875
  %879 = fadd fast float %876, 1.000000e+00
  %880 = fadd fast float %877, 1.000000e+00
  %881 = fadd fast float %878, 1.000000e+00
  %882 = fmul fast float %879, %696
  %883 = fmul fast float %880, %697
  %884 = fmul fast float %881, %698
  br label %885

; <label>:885                                     ; preds = %869, %835, %726, %681
  %886 = phi float [ %831, %726 ], [ %707, %835 ], [ %707, %869 ], [ 0x3FA23C0BE0000000, %681 ]
  %887 = phi float [ %823, %726 ], [ %866, %835 ], [ %882, %869 ], [ 1.000000e+00, %681 ]
  %888 = phi float [ %824, %726 ], [ %867, %835 ], [ %883, %869 ], [ 1.000000e+00, %681 ]
  %889 = phi float [ %825, %726 ], [ %868, %835 ], [ %884, %869 ], [ 1.000000e+00, %681 ]
  %890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.i32 %890, 1
  %892 = and i32 %891, 1
  %893 = icmp ne i32 %892, 0
  %894 = add i32 %55, 356
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 32
  %898 = icmp ne i32 %897, 0
  %899 = and i1 %893, %898
  %900 = select i1 %899, float 1.000000e+00, float %887
  %901 = select i1 %899, float 0x3FD3333340000000, float %888
  %902 = select i1 %899, float 0x3FD3333340000000, float %889
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 32
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %979, label %907

; <label>:907                                     ; preds = %885
  %908 = add i32 %55, 92
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %55, 376
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %102, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = extractvalue %dx.types.ResRet.f32 %916, 1
  %919 = extractvalue %dx.types.ResRet.f32 %916, 2
  %920 = extractvalue %dx.types.ResRet.f32 %916, 3
  %921 = and i32 %910, 255
  %922 = uitofp i32 %921 to float
  %923 = lshr i32 %910, 8
  %924 = and i32 %923, 255
  %925 = uitofp i32 %924 to float
  %926 = lshr i32 %910, 16
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F70101000000000
  %930 = fmul fast float %917, %922
  %931 = fadd fast float %930, %925
  %932 = fmul fast float %931, 0x3F70101000000000
  %933 = fadd fast float %918, -5.000000e-01
  %934 = fadd fast float %920, -5.000000e-01
  %935 = fmul fast float %933, %929
  %936 = fmul fast float %934, %929
  %937 = fadd fast float %935, 5.000000e-01
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fmul fast float %937, 2.000000e+00
  %940 = fadd fast float %939, -1.000000e+00
  %941 = fmul fast float %938, 2.000000e+00
  %942 = fadd fast float %941, -1.000000e+00
  %943 = fadd fast float %940, %942
  %944 = fmul fast float %943, 5.000000e-01
  %945 = fsub fast float %940, %942
  %946 = fmul fast float %945, 5.000000e-01
  %947 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %948 = fsub fast float 1.000000e+00, %947
  %949 = call float @dx.op.unary.f32(i32 6, float %946)  ; FAbs(value)
  %950 = fsub fast float %948, %949
  %951 = call float @dx.op.dot3.f32(i32 55, float %944, float %946, float %950, float %944, float %946, float %950)  ; Dot3(ax,ay,az,bx,by,bz)
  %952 = call float @dx.op.unary.f32(i32 25, float %951)  ; Rsqrt(value)
  %953 = fmul fast float %944, %952
  %954 = fmul fast float %946, %952
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 67108864
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %975, label %959

; <label>:959                                     ; preds = %907
  %960 = add i32 %55, 280
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 65535
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %962, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = fsub fast float %932, %970
  %972 = fmul fast float %971, %964
  %973 = fadd fast float %972, %968
  %974 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  br label %975

; <label>:975                                     ; preds = %959, %907
  %976 = phi float [ %974, %959 ], [ %932, %907 ]
  %977 = call float @dx.op.dot2.f32(i32 54, float %953, float %954, float %513, float %514)  ; Dot2(ax,ay,bx,by)
  %978 = call float @dx.op.dot2.f32(i32 54, float %953, float %954, float %515, float %516)  ; Dot2(ax,ay,bx,by)
  br label %979

; <label>:979                                     ; preds = %975, %885
  %980 = phi float [ %976, %975 ], [ 0x3FD6666660000000, %885 ]
  %981 = phi float [ %977, %975 ], [ 0.000000e+00, %885 ]
  %982 = phi float [ %978, %975 ], [ 0.000000e+00, %885 ]
  %983 = phi float [ %919, %975 ], [ 1.000000e+00, %885 ]
  %984 = add i32 %55, 160
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = lshr i32 %986, 22
  %988 = shl nuw nsw i32 %987, 5
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 64
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1027, label %994

; <label>:994                                     ; preds = %979
  %995 = add i32 %55, 392
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %997, 0
  %999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 131072
  %1003 = icmp eq i32 %1002, 0
  %1004 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %999, %dx.types.Handle %102, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = fmul fast float %1005, %276
  %1009 = fmul fast float %1006, %279
  %1010 = fmul fast float %1007, %282
  br i1 %1003, label %1017, label %1011

; <label>:1011                                    ; preds = %994
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = fmul fast float %1013, %1008
  %1015 = fmul fast float %1013, %1009
  %1016 = fmul fast float %1013, %1010
  br label %1017

; <label>:1017                                    ; preds = %1011, %994
  %1018 = phi float [ %1014, %1011 ], [ %1008, %994 ]
  %1019 = phi float [ %1015, %1011 ], [ %1009, %994 ]
  %1020 = phi float [ %1016, %1011 ], [ %1010, %994 ]
  %1021 = fmul fast float %1018, %989
  %1022 = select i1 %259, float %1021, float %1018
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1019, float %1020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = select i1 %259, float 0.000000e+00, float %1018
  %1025 = select i1 %259, float %1023, float %1019
  %1026 = select i1 %259, float 0.000000e+00, float %1020
  br label %1027

; <label>:1027                                    ; preds = %1017, %979
  %1028 = phi float [ %1024, %1017 ], [ 0.000000e+00, %979 ]
  %1029 = phi float [ %1025, %1017 ], [ 0.000000e+00, %979 ]
  %1030 = phi float [ %1026, %1017 ], [ 0.000000e+00, %979 ]
  %1031 = add i32 %55, 96
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = lshr i32 %1033, 8
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = fmul fast float %1038, %1039
  %1041 = fadd fast float %1040, %1035
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = call float @dx.op.unary.f32(i32 7, float %1042)  ; Saturate(value)
  br label %1044

; <label>:1044                                    ; preds = %1027, %495
  %1045 = phi float [ 0.000000e+00, %495 ], [ %981, %1027 ]
  %1046 = phi float [ 0.000000e+00, %495 ], [ %982, %1027 ]
  %1047 = phi float [ 0.000000e+00, %495 ], [ %900, %1027 ]
  %1048 = phi float [ 0.000000e+00, %495 ], [ %901, %1027 ]
  %1049 = phi float [ 0.000000e+00, %495 ], [ %902, %1027 ]
  %1050 = phi float [ 0.000000e+00, %495 ], [ %1028, %1027 ]
  %1051 = phi float [ 0.000000e+00, %495 ], [ %1029, %1027 ]
  %1052 = phi float [ 0.000000e+00, %495 ], [ %1030, %1027 ]
  %1053 = phi float [ 0.000000e+00, %495 ], [ %886, %1027 ]
  %1054 = phi float [ 0.000000e+00, %495 ], [ %682, %1027 ]
  %1055 = phi float [ 0.000000e+00, %495 ], [ %980, %1027 ]
  %1056 = phi float [ 0.000000e+00, %495 ], [ %983, %1027 ]
  %1057 = phi float [ 0.000000e+00, %495 ], [ %1043, %1027 ]
  br i1 %443, label %1784, label %1058

; <label>:1058                                    ; preds = %1044
  %1059 = icmp ult i32 %501, 2
  %1060 = add i32 %55, 40
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = add i32 %55, 44
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = or i32 %1065, %1062
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1784, label %1068

; <label>:1068                                    ; preds = %1058
  %1069 = and i32 %1062, 262144
  %1070 = icmp ne i32 %1069, 0
  %1071 = select i1 %1070, float %61, float 1.000000e+00
  %1072 = select i1 %1070, float %62, float 0.000000e+00
  %1073 = select i1 %1070, float %63, float 0.000000e+00
  %1074 = select i1 %1070, float %64, float 1.000000e+00
  %1075 = select i1 %1070, float %65, float %88
  %1076 = select i1 %1070, float %66, float %89
  %1077 = add i32 %55, 300
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = lshr i32 %1079, 16
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = fmul fast float %1081, 0x3F50624DE0000000
  %1083 = add i32 %55, 104
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = lshr i32 %1085, 16
  %1087 = and i32 %1086, 255
  %1088 = lshr i32 %1085, 24
  %1089 = add i32 %55, 308
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 65535
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = lshr i32 %1091, 16
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = add i32 %55, 48
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = lshr i32 %1098, 22
  %1100 = shl nuw nsw i32 %1099, 5
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = shl i32 %1098, 4
  %1103 = and i32 %1102, 32752
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = lshr i32 %1098, 7
  %1106 = and i32 %1105, 32752
  %1107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1106)  ; LegacyF16ToF32(value)
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 3
  %1110 = fmul fast float %1109, 1.000000e+03
  %1111 = fmul fast float %353, %1110
  %1112 = call float @dx.op.unary.f32(i32 22, float %1111)  ; Frc(value)
  %1113 = fadd fast float %1112, %343
  %1114 = fmul fast float %354, %1110
  %1115 = call float @dx.op.unary.f32(i32 22, float %1114)  ; Frc(value)
  %1116 = fadd fast float %1115, %345
  %1117 = fmul fast float %1082, %1110
  %1118 = call float @dx.op.unary.f32(i32 22, float %1117)  ; Frc(value)
  %1119 = fmul fast float %1118, 0x401921FB60000000
  %1120 = fadd fast float %1119, %1101
  %1121 = call float @dx.op.unary.f32(i32 13, float %1120)  ; Sin(value)
  %1122 = call float @dx.op.unary.f32(i32 12, float %1120)  ; Cos(value)
  %1123 = fsub fast float -0.000000e+00, %1121
  %1124 = fadd fast float %1075, -5.000000e-01
  %1125 = fadd fast float %1076, -5.000000e-01
  %1126 = fmul fast float %1093, %1124
  %1127 = fmul fast float %1095, %1125
  %1128 = fadd fast float %1126, 5.000000e-01
  %1129 = fadd fast float %1127, 5.000000e-01
  %1130 = fmul fast float %1104, %1128
  %1131 = fmul fast float %1107, %1129
  %1132 = fmul fast float %1122, %1130
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %1131, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1121, %1130
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1122, float %1131, float %1134)  ; FMad(a,b,c)
  %1136 = fadd fast float %1113, %1133
  %1137 = fadd fast float %1116, %1135
  %1138 = icmp ugt i32 %1087, 1
  %1139 = icmp ugt i32 %1085, 33554431
  %1140 = or i1 %1139, %1138
  br i1 %1140, label %1141, label %1166

; <label>:1141                                    ; preds = %1068
  %1142 = add i32 %55, 244
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = lshr i32 %1144, 16
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = fmul fast float %1109, %1146
  %1148 = call float @dx.op.unary.f32(i32 22, float %1147)  ; Frc(value)
  %1149 = mul nuw nsw i32 %1087, %1088
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1148, %1150
  %1152 = call float @dx.op.unary.f32(i32 27, float %1151)  ; Round_ni(value)
  %1153 = fptoui float %1152 to i32
  %1154 = urem i32 %1153, %1087
  %1155 = udiv i32 %1153, %1088
  %1156 = call float @dx.op.unary.f32(i32 22, float %1136)  ; Frc(value)
  %1157 = call float @dx.op.unary.f32(i32 22, float %1137)  ; Frc(value)
  %1158 = uitofp i32 %1154 to float
  %1159 = uitofp i32 %1155 to float
  %1160 = fadd fast float %1156, %1158
  %1161 = fadd fast float %1157, %1159
  %1162 = uitofp i32 %1087 to float
  %1163 = uitofp i32 %1088 to float
  %1164 = fdiv fast float %1160, %1162
  %1165 = fdiv fast float %1161, %1163
  br label %1166

; <label>:1166                                    ; preds = %1141, %1068
  %1167 = phi float [ %1164, %1141 ], [ %1136, %1068 ]
  %1168 = phi float [ %1165, %1141 ], [ %1137, %1068 ]
  %1169 = and i32 %1062, 256
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1217, label %1171

; <label>:1171                                    ; preds = %1166
  %1172 = add i32 %55, 428
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1176, %dx.types.Handle %103, float %1167, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = add i32 %55, 116
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = shl i32 %1181, 4
  %1183 = and i32 %1182, 32752
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = lshr i32 %1181, 7
  %1186 = and i32 %1185, 32752
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = fsub fast float 1.000000e+00, %498
  %1189 = call float @dx.op.binary.f32(i32 35, float %1188, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1190 = bitcast float %498 to i32
  %1191 = sitofp i32 %1190 to float
  %1192 = fadd fast float %1191, 0xC1CFBF8940000000
  %1193 = fmul fast float %1187, %1192
  %1194 = fadd fast float %1193, 0x41CFBF8940000000
  %1195 = fptosi float %1194 to i32
  %1196 = bitcast i32 %1195 to float
  %1197 = bitcast float %1189 to i32
  %1198 = sitofp i32 %1197 to float
  %1199 = fadd fast float %1198, 0xC1CFBF8940000000
  %1200 = fmul fast float %1199, %1187
  %1201 = fadd fast float %1200, 0x41CFBF8940000000
  %1202 = fptosi float %1201 to i32
  %1203 = bitcast i32 %1202 to float
  %1204 = fmul fast float %1196, %1184
  %1205 = fmul fast float %1203, %1184
  %1206 = fsub fast float %1189, %1204
  %1207 = fadd fast float %1205, %1189
  %1208 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1209 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1210 = fsub fast float %1178, %1208
  %1211 = fsub fast float %1209, %1208
  %1212 = bitcast float %1211 to i32
  %1213 = sub nsw i32 2129859010, %1212
  %1214 = bitcast i32 %1213 to float
  %1215 = fmul fast float %1214, %1210
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  br label %1217

; <label>:1217                                    ; preds = %1171, %1166
  %1218 = phi float [ %1216, %1171 ], [ %498, %1166 ]
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 128
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1239, label %1223

; <label>:1223                                    ; preds = %1217
  %1224 = add i32 %55, 412
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %1226, 0
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1228, %dx.types.Handle %103, float %1167, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 524288
  %1234 = icmp ne i32 %1233, 0
  %1235 = fcmp fast ogt float %1230, 0x3FE0101020000000
  %1236 = select i1 %1235, float 1.000000e+00, float 0.000000e+00
  %1237 = select i1 %1234, float %1236, float %1230
  %1238 = fmul fast float %1237, %1218
  br label %1239

; <label>:1239                                    ; preds = %1223, %1217
  %1240 = phi float [ %1238, %1223 ], [ %1218, %1217 ]
  %1241 = fcmp fast ult float %1240, 0x3F70101020000000
  br i1 %1241, label %1784, label %1242

; <label>:1242                                    ; preds = %1239
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 16
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1445, label %1247

; <label>:1247                                    ; preds = %1242
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %55, 364
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = add i32 %1252, 0
  %1254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1254, %dx.types.Handle %102, float %1167, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.ResRet.f32 %1255, 3
  %1260 = and i32 %1249, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = lshr i32 %1249, 8
  %1263 = and i32 %1262, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1259, %1261
  %1266 = fadd fast float %1265, %1264
  %1267 = fmul fast float %1266, 0x3F70101000000000
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = and i32 %1269, 512
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1280, label %1272

; <label>:1272                                    ; preds = %1247
  %1273 = add i32 %55, 444
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = add i32 %1275, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1277, %dx.types.Handle %103, float %1167, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  br label %1280

; <label>:1280                                    ; preds = %1272, %1247
  %1281 = phi float [ %1279, %1272 ], [ 1.000000e+00, %1247 ]
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 33554432
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1392, label %1286

; <label>:1286                                    ; preds = %1280
  %1287 = add i32 %55, 240
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1289, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = add i32 %55, 244
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 65535
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = lshr i32 %1300, 24
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = and i32 %1300, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = lshr i32 %1300, 8
  %1308 = and i32 %1307, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = lshr i32 %1300, 16
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = add i32 %55, 236
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = lshr i32 %1317, 24
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = and i32 %1317, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101020000000
  %1324 = lshr i32 %1317, 8
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = lshr i32 %1317, 16
  %1329 = and i32 %1328, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = fmul fast float %1330, 0x3F70101020000000
  %1332 = bitcast float %1256 to i32
  %1333 = ashr i32 %1332, 1
  %1334 = sub nsw i32 1597463174, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1256, 5.000000e-01
  %1337 = fmul fast float %1335, %1335
  %1338 = fmul fast float %1337, %1336
  %1339 = fsub fast float 1.500000e+00, %1338
  %1340 = fmul fast float %1335, %1256
  %1341 = fmul fast float %1340, %1339
  %1342 = bitcast float %1257 to i32
  %1343 = ashr i32 %1342, 1
  %1344 = sub nsw i32 1597463174, %1343
  %1345 = bitcast i32 %1344 to float
  %1346 = fmul fast float %1257, 5.000000e-01
  %1347 = fmul fast float %1345, %1345
  %1348 = fmul fast float %1347, %1346
  %1349 = fsub fast float 1.500000e+00, %1348
  %1350 = fmul fast float %1345, %1257
  %1351 = fmul fast float %1350, %1349
  %1352 = bitcast float %1258 to i32
  %1353 = ashr i32 %1352, 1
  %1354 = sub nsw i32 1597463174, %1353
  %1355 = bitcast i32 %1354 to float
  %1356 = fmul fast float %1258, 5.000000e-01
  %1357 = fmul fast float %1355, %1355
  %1358 = fmul fast float %1357, %1356
  %1359 = fsub fast float 1.500000e+00, %1358
  %1360 = fmul fast float %1355, %1258
  %1361 = fmul fast float %1360, %1359
  %1362 = fsub fast float %1341, %1323
  %1363 = fsub fast float %1351, %1327
  %1364 = fsub fast float %1361, %1331
  %1365 = fmul fast float %1362, %1291
  %1366 = fmul fast float %1363, %1293
  %1367 = fmul fast float %1364, %1298
  %1368 = fadd fast float %1365, %1306
  %1369 = fadd fast float %1366, %1310
  %1370 = fadd fast float %1367, %1314
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1374 = fmul fast float %1371, %1371
  %1375 = fmul fast float %1372, %1372
  %1376 = fmul fast float %1373, %1373
  %1377 = fsub fast float %1374, %1256
  %1378 = fsub fast float %1375, %1257
  %1379 = fsub fast float %1376, %1258
  %1380 = fmul fast float %1377, %1281
  %1381 = fmul fast float %1378, %1281
  %1382 = fmul fast float %1379, %1281
  %1383 = fadd fast float %1380, %1256
  %1384 = fadd fast float %1381, %1257
  %1385 = fadd fast float %1382, %1258
  %1386 = fadd fast float %1303, %1267
  %1387 = fsub fast float %1386, %1320
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fsub fast float %1388, %1267
  %1390 = fmul fast float %1389, %1281
  %1391 = fadd fast float %1390, %1267
  br label %1445

; <label>:1392                                    ; preds = %1280
  %1393 = and i32 %1283, 134217728
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1429, label %1395

; <label>:1395                                    ; preds = %1392
  %1396 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %1397 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1398 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1399 = fadd fast float %1396, -5.000000e-01
  %1400 = fadd fast float %1397, -5.000000e-01
  %1401 = fadd fast float %1398, -5.000000e-01
  %1402 = fmul fast float %1399, %1281
  %1403 = fmul fast float %1400, %1281
  %1404 = fmul fast float %1401, %1281
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = fadd fast float %1403, 5.000000e-01
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1409 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1410 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1411 = fmul fast float %1405, 2.000000e+00
  %1412 = fsub fast float 1.000000e+00, %1411
  %1413 = fmul fast float %1412, %1408
  %1414 = fadd fast float %1413, %1411
  %1415 = fmul fast float %1414, %1408
  %1416 = fmul fast float %1406, 2.000000e+00
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = fmul fast float %1417, %1409
  %1419 = fadd fast float %1418, %1416
  %1420 = fmul fast float %1419, %1409
  %1421 = fmul fast float %1407, 2.000000e+00
  %1422 = fsub fast float 1.000000e+00, %1421
  %1423 = fmul fast float %1422, %1410
  %1424 = fadd fast float %1423, %1421
  %1425 = fmul fast float %1424, %1410
  %1426 = fmul fast float %1415, %1415
  %1427 = fmul fast float %1420, %1420
  %1428 = fmul fast float %1425, %1425
  br label %1445

; <label>:1429                                    ; preds = %1392
  %1430 = fmul fast float %330, %330
  %1431 = fmul fast float %334, %334
  %1432 = fmul fast float %338, %338
  %1433 = fadd fast float %1430, -1.000000e+00
  %1434 = fadd fast float %1431, -1.000000e+00
  %1435 = fadd fast float %1432, -1.000000e+00
  %1436 = fmul fast float %1281, %1433
  %1437 = fmul fast float %1281, %1434
  %1438 = fmul fast float %1281, %1435
  %1439 = fadd fast float %1436, 1.000000e+00
  %1440 = fadd fast float %1437, 1.000000e+00
  %1441 = fadd fast float %1438, 1.000000e+00
  %1442 = fmul fast float %1439, %1256
  %1443 = fmul fast float %1440, %1257
  %1444 = fmul fast float %1441, %1258
  br label %1445

; <label>:1445                                    ; preds = %1429, %1395, %1286, %1242
  %1446 = phi float [ %1391, %1286 ], [ %1267, %1395 ], [ %1267, %1429 ], [ 0x3FA23C0BE0000000, %1242 ]
  %1447 = phi float [ %1383, %1286 ], [ %1426, %1395 ], [ %1442, %1429 ], [ 1.000000e+00, %1242 ]
  %1448 = phi float [ %1384, %1286 ], [ %1427, %1395 ], [ %1443, %1429 ], [ 1.000000e+00, %1242 ]
  %1449 = phi float [ %1385, %1286 ], [ %1428, %1395 ], [ %1444, %1429 ], [ 1.000000e+00, %1242 ]
  %1450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.i32 %1450, 1
  %1452 = and i32 %1451, 1
  %1453 = icmp ne i32 %1452, 0
  %1454 = add i32 %55, 356
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 32
  %1458 = icmp ne i32 %1457, 0
  %1459 = and i1 %1453, %1458
  %1460 = select i1 %1459, float 1.000000e+00, float %1447
  %1461 = select i1 %1459, float 0x3FD3333340000000, float %1448
  %1462 = select i1 %1459, float 0x3FD3333340000000, float %1449
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 32
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1539, label %1467

; <label>:1467                                    ; preds = %1445
  %1468 = add i32 %55, 108
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = add i32 %55, 380
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = add i32 %1473, 0
  %1475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1475, %dx.types.Handle %102, float %1167, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.f32 %1476, 3
  %1481 = and i32 %1470, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = lshr i32 %1470, 8
  %1484 = and i32 %1483, 255
  %1485 = uitofp i32 %1484 to float
  %1486 = lshr i32 %1470, 16
  %1487 = and i32 %1486, 255
  %1488 = uitofp i32 %1487 to float
  %1489 = fmul fast float %1488, 0x3F70101000000000
  %1490 = fmul fast float %1477, %1482
  %1491 = fadd fast float %1490, %1485
  %1492 = fmul fast float %1491, 0x3F70101000000000
  %1493 = fadd fast float %1478, -5.000000e-01
  %1494 = fadd fast float %1480, -5.000000e-01
  %1495 = fmul fast float %1493, %1489
  %1496 = fmul fast float %1494, %1489
  %1497 = fadd fast float %1495, 5.000000e-01
  %1498 = fadd fast float %1496, 5.000000e-01
  %1499 = fmul fast float %1497, 2.000000e+00
  %1500 = fadd fast float %1499, -1.000000e+00
  %1501 = fmul fast float %1498, 2.000000e+00
  %1502 = fadd fast float %1501, -1.000000e+00
  %1503 = fadd fast float %1500, %1502
  %1504 = fmul fast float %1503, 5.000000e-01
  %1505 = fsub fast float %1500, %1502
  %1506 = fmul fast float %1505, 5.000000e-01
  %1507 = call float @dx.op.unary.f32(i32 6, float %1504)  ; FAbs(value)
  %1508 = fsub fast float 1.000000e+00, %1507
  %1509 = call float @dx.op.unary.f32(i32 6, float %1506)  ; FAbs(value)
  %1510 = fsub fast float %1508, %1509
  %1511 = call float @dx.op.dot3.f32(i32 55, float %1504, float %1506, float %1510, float %1504, float %1506, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1512 = call float @dx.op.unary.f32(i32 25, float %1511)  ; Rsqrt(value)
  %1513 = fmul fast float %1504, %1512
  %1514 = fmul fast float %1506, %1512
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 67108864
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1535, label %1519

; <label>:1519                                    ; preds = %1467
  %1520 = add i32 %55, 296
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 65535
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = lshr i32 %1522, 16
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = fsub fast float %1492, %1530
  %1532 = fmul fast float %1531, %1524
  %1533 = fadd fast float %1532, %1528
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  br label %1535

; <label>:1535                                    ; preds = %1519, %1467
  %1536 = phi float [ %1534, %1519 ], [ %1492, %1467 ]
  %1537 = call float @dx.op.dot2.f32(i32 54, float %1513, float %1514, float %1071, float %1072)  ; Dot2(ax,ay,bx,by)
  %1538 = call float @dx.op.dot2.f32(i32 54, float %1513, float %1514, float %1073, float %1074)  ; Dot2(ax,ay,bx,by)
  br label %1539

; <label>:1539                                    ; preds = %1535, %1445
  %1540 = phi float [ %1536, %1535 ], [ 0x3FD6666660000000, %1445 ]
  %1541 = phi float [ %1537, %1535 ], [ 0.000000e+00, %1445 ]
  %1542 = phi float [ %1538, %1535 ], [ 0.000000e+00, %1445 ]
  %1543 = phi float [ %1479, %1535 ], [ 1.000000e+00, %1445 ]
  %1544 = add i32 %55, 176
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = lshr i32 %1546, 22
  %1548 = shl nuw nsw i32 %1547, 5
  %1549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1548)  ; LegacyF16ToF32(value)
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 64
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1587, label %1554

; <label>:1554                                    ; preds = %1539
  %1555 = add i32 %55, 396
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %1557, 0
  %1559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 131072
  %1563 = icmp eq i32 %1562, 0
  %1564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1559, %dx.types.Handle %102, float %1167, float %1168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = fmul fast float %1565, %318
  %1569 = fmul fast float %1566, %321
  %1570 = fmul fast float %1567, %324
  br i1 %1563, label %1577, label %1571

; <label>:1571                                    ; preds = %1554
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 0
  %1574 = fmul fast float %1573, %1568
  %1575 = fmul fast float %1573, %1569
  %1576 = fmul fast float %1573, %1570
  br label %1577

; <label>:1577                                    ; preds = %1571, %1554
  %1578 = phi float [ %1574, %1571 ], [ %1568, %1554 ]
  %1579 = phi float [ %1575, %1571 ], [ %1569, %1554 ]
  %1580 = phi float [ %1576, %1571 ], [ %1570, %1554 ]
  %1581 = fmul fast float %1578, %1549
  %1582 = select i1 %259, float %1581, float %1578
  %1583 = call float @dx.op.dot3.f32(i32 55, float %1582, float %1579, float %1580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1584 = select i1 %259, float 0.000000e+00, float %1578
  %1585 = select i1 %259, float %1583, float %1579
  %1586 = select i1 %259, float 0.000000e+00, float %1580
  br label %1587

; <label>:1587                                    ; preds = %1577, %1539
  %1588 = phi float [ %1584, %1577 ], [ 0.000000e+00, %1539 ]
  %1589 = phi float [ %1585, %1577 ], [ 0.000000e+00, %1539 ]
  %1590 = phi float [ %1586, %1577 ], [ 0.000000e+00, %1539 ]
  %1591 = add i32 %55, 112
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = lshr i32 %1593, 8
  %1597 = and i32 %1596, 255
  %1598 = uitofp i32 %1597 to float
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1460, float %1461, float %1462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = fmul fast float %1598, %1599
  %1601 = fadd fast float %1600, %1595
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  br i1 %1059, label %1604, label %1612

; <label>:1604                                    ; preds = %1587
  %1605 = fsub fast float 1.000000e+00, %1240
  %1606 = fmul fast float %1605, %1047
  %1607 = fmul fast float %1605, %1048
  %1608 = fmul fast float %1605, %1049
  %1609 = fmul fast float %1605, %1050
  %1610 = fmul fast float %1605, %1051
  %1611 = fmul fast float %1605, %1052
  br label %1612

; <label>:1612                                    ; preds = %1604, %1587
  %1613 = phi float [ %1606, %1604 ], [ %1047, %1587 ]
  %1614 = phi float [ %1607, %1604 ], [ %1048, %1587 ]
  %1615 = phi float [ %1608, %1604 ], [ %1049, %1587 ]
  %1616 = phi float [ %1609, %1604 ], [ %1050, %1587 ]
  %1617 = phi float [ %1610, %1604 ], [ %1051, %1587 ]
  %1618 = phi float [ %1611, %1604 ], [ %1052, %1587 ]
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 3
  %1622 = icmp eq i32 %1621, 3
  br i1 %1622, label %1701, label %1623

; <label>:1623                                    ; preds = %1612
  %1624 = and i32 %1620, 16
  %1625 = icmp ne i32 %1624, 0
  %1626 = select i1 %1625, float %1240, float 0.000000e+00
  %1627 = icmp eq i32 %1621, 0
  br i1 %1627, label %1628, label %1656

; <label>:1628                                    ; preds = %1623
  %1629 = and i32 %1620, 64
  %1630 = icmp ne i32 %1629, 0
  %1631 = select i1 %1630, float %1240, float 0.000000e+00
  %1632 = fsub fast float %1460, %1613
  %1633 = fsub fast float %1461, %1614
  %1634 = fsub fast float %1462, %1615
  %1635 = fmul fast float %1626, %1632
  %1636 = fmul fast float %1626, %1633
  %1637 = fmul fast float %1626, %1634
  %1638 = fadd fast float %1635, %1613
  %1639 = fadd fast float %1636, %1614
  %1640 = fadd fast float %1637, %1615
  %1641 = fsub fast float %1446, %1053
  %1642 = fmul fast float %1626, %1641
  %1643 = fadd fast float %1642, %1053
  %1644 = fsub fast float %1588, %1616
  %1645 = fsub fast float %1589, %1617
  %1646 = fsub fast float %1590, %1618
  %1647 = fmul fast float %1631, %1644
  %1648 = fmul fast float %1631, %1645
  %1649 = fmul fast float %1631, %1646
  %1650 = fadd fast float %1647, %1616
  %1651 = fadd fast float %1648, %1617
  %1652 = fadd fast float %1649, %1618
  %1653 = fsub fast float %1603, %1057
  %1654 = fmul fast float %1626, %1653
  %1655 = fadd fast float %1654, %1057
  br label %1701

; <label>:1656                                    ; preds = %1623
  %1657 = icmp eq i32 %1621, 1
  br i1 %1657, label %1658, label %1671

; <label>:1658                                    ; preds = %1656
  %1659 = fadd fast float %1460, -1.000000e+00
  %1660 = fadd fast float %1461, -1.000000e+00
  %1661 = fadd fast float %1462, -1.000000e+00
  %1662 = fmul fast float %1626, %1659
  %1663 = fmul fast float %1626, %1660
  %1664 = fmul fast float %1626, %1661
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fmul fast float %1665, %1613
  %1669 = fmul fast float %1666, %1614
  %1670 = fmul fast float %1667, %1615
  br label %1701

; <label>:1671                                    ; preds = %1656
  %1672 = icmp eq i32 %1621, 2
  br i1 %1672, label %1673, label %1701

; <label>:1673                                    ; preds = %1671
  %1674 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1675 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fmul fast float %1677, %1626
  %1681 = fmul fast float %1678, %1626
  %1682 = fmul fast float %1679, %1626
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fmul fast float %1683, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1613
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1613
  %1691 = fmul fast float %1684, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1614
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1614
  %1696 = fmul fast float %1685, 2.000000e+00
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1697, %1615
  %1699 = fadd fast float %1698, %1696
  %1700 = fmul fast float %1699, %1615
  br label %1701

; <label>:1701                                    ; preds = %1673, %1671, %1658, %1628, %1612
  %1702 = phi float [ %1613, %1612 ], [ %1690, %1673 ], [ %1613, %1671 ], [ %1668, %1658 ], [ %1638, %1628 ]
  %1703 = phi float [ %1614, %1612 ], [ %1695, %1673 ], [ %1614, %1671 ], [ %1669, %1658 ], [ %1639, %1628 ]
  %1704 = phi float [ %1615, %1612 ], [ %1700, %1673 ], [ %1615, %1671 ], [ %1670, %1658 ], [ %1640, %1628 ]
  %1705 = phi float [ %1616, %1612 ], [ %1616, %1673 ], [ %1616, %1671 ], [ %1616, %1658 ], [ %1650, %1628 ]
  %1706 = phi float [ %1617, %1612 ], [ %1617, %1673 ], [ %1617, %1671 ], [ %1617, %1658 ], [ %1651, %1628 ]
  %1707 = phi float [ %1618, %1612 ], [ %1618, %1673 ], [ %1618, %1671 ], [ %1618, %1658 ], [ %1652, %1628 ]
  %1708 = phi float [ %1053, %1612 ], [ %1053, %1673 ], [ %1053, %1671 ], [ %1053, %1658 ], [ %1643, %1628 ]
  %1709 = phi float [ %1057, %1612 ], [ %1057, %1673 ], [ %1057, %1671 ], [ %1057, %1658 ], [ %1655, %1628 ]
  %1710 = and i32 %1620, 12
  %1711 = icmp eq i32 %1710, 12
  br i1 %1711, label %1784, label %1712

; <label>:1712                                    ; preds = %1701
  %1713 = and i32 %1620, 2097184
  %1714 = icmp eq i32 %1713, 2097184
  %1715 = select i1 %1714, float %1240, float 0.000000e+00
  %1716 = and i32 %1620, 4194336
  %1717 = icmp eq i32 %1716, 4194336
  %1718 = select i1 %1717, float %1240, float 0.000000e+00
  %1719 = and i32 %1620, 8388640
  %1720 = icmp eq i32 %1719, 8388640
  %1721 = select i1 %1720, float %1240, float 0.000000e+00
  %1722 = icmp eq i32 %1710, 0
  br i1 %1722, label %1723, label %1736

; <label>:1723                                    ; preds = %1712
  %1724 = fsub fast float %1541, %1045
  %1725 = fsub fast float %1542, %1046
  %1726 = fmul fast float %1715, %1724
  %1727 = fmul fast float %1715, %1725
  %1728 = fadd fast float %1726, %1045
  %1729 = fadd fast float %1727, %1046
  %1730 = fsub fast float %1543, %1056
  %1731 = fmul fast float %1718, %1730
  %1732 = fadd fast float %1731, %1056
  %1733 = fsub fast float %1540, %1055
  %1734 = fmul fast float %1721, %1733
  %1735 = fadd fast float %1734, %1055
  br label %1784

; <label>:1736                                    ; preds = %1712
  %1737 = icmp eq i32 %1710, 4
  br i1 %1737, label %1738, label %1770

; <label>:1738                                    ; preds = %1736
  %1739 = fmul fast float %1715, %1541
  %1740 = fmul fast float %1715, %1542
  %1741 = fadd fast float %1739, %1045
  %1742 = fadd fast float %1740, %1046
  %1743 = call float @dx.op.binary.f32(i32 36, float %1056, float %1543)  ; FMin(a,b)
  %1744 = fsub fast float %1743, %1056
  %1745 = fmul fast float %1744, %1718
  %1746 = fadd fast float %1745, %1056
  %1747 = fadd fast float %1540, %1055
  %1748 = fmul fast float %1747, 0x3FF337FAE0000000
  %1749 = fmul fast float %1055, %1055
  %1750 = fmul fast float %1540, %1540
  %1751 = fadd fast float %1750, %1749
  %1752 = fmul fast float %1751, 0x3FE5152B00000000
  %1753 = fmul fast float %1055, 0xBFCC1F85E0000000
  %1754 = fmul fast float %1753, %1540
  %1755 = fadd fast float %1754, 0xBFE1363700000000
  %1756 = fadd fast float %1755, %1748
  %1757 = fsub fast float %1756, %1752
  %1758 = fmul fast float %1747, 0x3FBA6F0D00000000
  %1759 = fmul fast float %1751, 0x3FD0432880000000
  %1760 = fmul fast float %1055, 0xBFEF110800000000
  %1761 = fmul fast float %1760, %1540
  %1762 = fadd fast float %1761, 1.000000e+00
  %1763 = fsub fast float %1762, %1758
  %1764 = fadd fast float %1763, %1759
  %1765 = fdiv fast float %1757, %1764
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1767 = fsub fast float %1766, %1055
  %1768 = fmul fast float %1767, %1721
  %1769 = fadd fast float %1768, %1055
  br label %1784

; <label>:1770                                    ; preds = %1736
  %1771 = icmp eq i32 %1710, 8
  br i1 %1771, label %1772, label %1784

; <label>:1772                                    ; preds = %1770
  %1773 = fmul fast float %1715, %1541
  %1774 = fmul fast float %1715, %1542
  %1775 = fadd fast float %1773, %1045
  %1776 = fadd fast float %1774, %1046
  %1777 = call float @dx.op.binary.f32(i32 36, float %1056, float %1543)  ; FMin(a,b)
  %1778 = fsub fast float %1777, %1056
  %1779 = fmul fast float %1778, %1718
  %1780 = fadd fast float %1779, %1056
  %1781 = fsub fast float %1540, %1055
  %1782 = fmul fast float %1721, %1781
  %1783 = fadd fast float %1782, %1055
  br label %1784

; <label>:1784                                    ; preds = %1772, %1770, %1738, %1723, %1701, %1239, %1058, %1044
  %1785 = phi float [ %1045, %1701 ], [ %1045, %1239 ], [ %1045, %1044 ], [ %1775, %1772 ], [ %1045, %1770 ], [ %1741, %1738 ], [ %1728, %1723 ], [ %1045, %1058 ]
  %1786 = phi float [ %1046, %1701 ], [ %1046, %1239 ], [ %1046, %1044 ], [ %1776, %1772 ], [ %1046, %1770 ], [ %1742, %1738 ], [ %1729, %1723 ], [ %1046, %1058 ]
  %1787 = phi float [ %1702, %1701 ], [ %1047, %1239 ], [ %1047, %1044 ], [ %1702, %1772 ], [ %1702, %1770 ], [ %1702, %1738 ], [ %1702, %1723 ], [ %1047, %1058 ]
  %1788 = phi float [ %1703, %1701 ], [ %1048, %1239 ], [ %1048, %1044 ], [ %1703, %1772 ], [ %1703, %1770 ], [ %1703, %1738 ], [ %1703, %1723 ], [ %1048, %1058 ]
  %1789 = phi float [ %1704, %1701 ], [ %1049, %1239 ], [ %1049, %1044 ], [ %1704, %1772 ], [ %1704, %1770 ], [ %1704, %1738 ], [ %1704, %1723 ], [ %1049, %1058 ]
  %1790 = phi float [ %1705, %1701 ], [ %1050, %1239 ], [ %1050, %1044 ], [ %1705, %1772 ], [ %1705, %1770 ], [ %1705, %1738 ], [ %1705, %1723 ], [ %1050, %1058 ]
  %1791 = phi float [ %1706, %1701 ], [ %1051, %1239 ], [ %1051, %1044 ], [ %1706, %1772 ], [ %1706, %1770 ], [ %1706, %1738 ], [ %1706, %1723 ], [ %1051, %1058 ]
  %1792 = phi float [ %1707, %1701 ], [ %1052, %1239 ], [ %1052, %1044 ], [ %1707, %1772 ], [ %1707, %1770 ], [ %1707, %1738 ], [ %1707, %1723 ], [ %1052, %1058 ]
  %1793 = phi float [ %1708, %1701 ], [ %1053, %1239 ], [ %1053, %1044 ], [ %1708, %1772 ], [ %1708, %1770 ], [ %1708, %1738 ], [ %1708, %1723 ], [ %1053, %1058 ]
  %1794 = phi float [ %1055, %1701 ], [ %1055, %1239 ], [ %1055, %1044 ], [ %1783, %1772 ], [ %1055, %1770 ], [ %1769, %1738 ], [ %1735, %1723 ], [ %1055, %1058 ]
  %1795 = phi float [ %1056, %1701 ], [ %1056, %1239 ], [ %1056, %1044 ], [ %1780, %1772 ], [ %1056, %1770 ], [ %1746, %1738 ], [ %1732, %1723 ], [ %1056, %1058 ]
  %1796 = phi float [ %1709, %1701 ], [ %1057, %1239 ], [ %1057, %1044 ], [ %1709, %1772 ], [ %1709, %1770 ], [ %1709, %1738 ], [ %1709, %1723 ], [ %1057, %1058 ]
  br i1 %445, label %2523, label %1797

; <label>:1797                                    ; preds = %1784
  %1798 = icmp ult i32 %501, 3
  %1799 = add i32 %55, 56
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = add i32 %55, 60
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = or i32 %1804, %1801
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %2523, label %1807

; <label>:1807                                    ; preds = %1797
  %1808 = and i32 %1801, 262144
  %1809 = icmp ne i32 %1808, 0
  %1810 = select i1 %1809, float %61, float 1.000000e+00
  %1811 = select i1 %1809, float %62, float 0.000000e+00
  %1812 = select i1 %1809, float %63, float 0.000000e+00
  %1813 = select i1 %1809, float %64, float 1.000000e+00
  %1814 = select i1 %1809, float %65, float %88
  %1815 = select i1 %1809, float %66, float %89
  %1816 = add i32 %55, 316
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = lshr i32 %1818, 16
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = fmul fast float %1820, 0x3F50624DE0000000
  %1822 = add i32 %55, 120
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = lshr i32 %1824, 16
  %1826 = and i32 %1825, 255
  %1827 = lshr i32 %1824, 24
  %1828 = add i32 %55, 324
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 65535
  %1832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1831)  ; LegacyF16ToF32(value)
  %1833 = lshr i32 %1830, 16
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = add i32 %55, 64
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = lshr i32 %1837, 22
  %1839 = shl nuw nsw i32 %1838, 5
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = shl i32 %1837, 4
  %1842 = and i32 %1841, 32752
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = lshr i32 %1837, 7
  %1845 = and i32 %1844, 32752
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1849 = fmul fast float %1848, 1.000000e+03
  %1850 = fmul fast float %395, %1849
  %1851 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1852 = fadd fast float %1851, %385
  %1853 = fmul fast float %396, %1849
  %1854 = call float @dx.op.unary.f32(i32 22, float %1853)  ; Frc(value)
  %1855 = fadd fast float %1854, %387
  %1856 = fmul fast float %1821, %1849
  %1857 = call float @dx.op.unary.f32(i32 22, float %1856)  ; Frc(value)
  %1858 = fmul fast float %1857, 0x401921FB60000000
  %1859 = fadd fast float %1858, %1840
  %1860 = call float @dx.op.unary.f32(i32 13, float %1859)  ; Sin(value)
  %1861 = call float @dx.op.unary.f32(i32 12, float %1859)  ; Cos(value)
  %1862 = fsub fast float -0.000000e+00, %1860
  %1863 = fadd fast float %1814, -5.000000e-01
  %1864 = fadd fast float %1815, -5.000000e-01
  %1865 = fmul fast float %1832, %1863
  %1866 = fmul fast float %1834, %1864
  %1867 = fadd fast float %1865, 5.000000e-01
  %1868 = fadd fast float %1866, 5.000000e-01
  %1869 = fmul fast float %1843, %1867
  %1870 = fmul fast float %1846, %1868
  %1871 = fmul fast float %1861, %1869
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1862, float %1870, float %1871)  ; FMad(a,b,c)
  %1873 = fmul fast float %1860, %1869
  %1874 = call float @dx.op.tertiary.f32(i32 46, float %1861, float %1870, float %1873)  ; FMad(a,b,c)
  %1875 = fadd fast float %1852, %1872
  %1876 = fadd fast float %1855, %1874
  %1877 = icmp ugt i32 %1826, 1
  %1878 = icmp ugt i32 %1824, 33554431
  %1879 = or i1 %1878, %1877
  br i1 %1879, label %1880, label %1905

; <label>:1880                                    ; preds = %1807
  %1881 = add i32 %55, 260
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = lshr i32 %1883, 16
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = fmul fast float %1848, %1885
  %1887 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1888 = mul nuw nsw i32 %1826, %1827
  %1889 = uitofp i32 %1888 to float
  %1890 = fmul fast float %1887, %1889
  %1891 = call float @dx.op.unary.f32(i32 27, float %1890)  ; Round_ni(value)
  %1892 = fptoui float %1891 to i32
  %1893 = urem i32 %1892, %1826
  %1894 = udiv i32 %1892, %1827
  %1895 = call float @dx.op.unary.f32(i32 22, float %1875)  ; Frc(value)
  %1896 = call float @dx.op.unary.f32(i32 22, float %1876)  ; Frc(value)
  %1897 = uitofp i32 %1893 to float
  %1898 = uitofp i32 %1894 to float
  %1899 = fadd fast float %1895, %1897
  %1900 = fadd fast float %1896, %1898
  %1901 = uitofp i32 %1826 to float
  %1902 = uitofp i32 %1827 to float
  %1903 = fdiv fast float %1899, %1901
  %1904 = fdiv fast float %1900, %1902
  br label %1905

; <label>:1905                                    ; preds = %1880, %1807
  %1906 = phi float [ %1903, %1880 ], [ %1875, %1807 ]
  %1907 = phi float [ %1904, %1880 ], [ %1876, %1807 ]
  %1908 = and i32 %1801, 256
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1956, label %1910

; <label>:1910                                    ; preds = %1905
  %1911 = add i32 %55, 432
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = add i32 %1913, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1915, %dx.types.Handle %103, float %1906, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = add i32 %55, 132
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = shl i32 %1920, 4
  %1922 = and i32 %1921, 32752
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = lshr i32 %1920, 7
  %1925 = and i32 %1924, 32752
  %1926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1925)  ; LegacyF16ToF32(value)
  %1927 = fsub fast float 1.000000e+00, %497
  %1928 = call float @dx.op.binary.f32(i32 35, float %1927, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1929 = bitcast float %497 to i32
  %1930 = sitofp i32 %1929 to float
  %1931 = fadd fast float %1930, 0xC1CFBF8940000000
  %1932 = fmul fast float %1926, %1931
  %1933 = fadd fast float %1932, 0x41CFBF8940000000
  %1934 = fptosi float %1933 to i32
  %1935 = bitcast i32 %1934 to float
  %1936 = bitcast float %1928 to i32
  %1937 = sitofp i32 %1936 to float
  %1938 = fadd fast float %1937, 0xC1CFBF8940000000
  %1939 = fmul fast float %1938, %1926
  %1940 = fadd fast float %1939, 0x41CFBF8940000000
  %1941 = fptosi float %1940 to i32
  %1942 = bitcast i32 %1941 to float
  %1943 = fmul fast float %1935, %1923
  %1944 = fmul fast float %1942, %1923
  %1945 = fsub fast float %1928, %1943
  %1946 = fadd fast float %1944, %1928
  %1947 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1948 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1949 = fsub fast float %1917, %1947
  %1950 = fsub fast float %1948, %1947
  %1951 = bitcast float %1950 to i32
  %1952 = sub nsw i32 2129859010, %1951
  %1953 = bitcast i32 %1952 to float
  %1954 = fmul fast float %1953, %1949
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  br label %1956

; <label>:1956                                    ; preds = %1910, %1905
  %1957 = phi float [ %1955, %1910 ], [ %497, %1905 ]
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 128
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %1978, label %1962

; <label>:1962                                    ; preds = %1956
  %1963 = add i32 %55, 416
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = add i32 %1965, 0
  %1967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1967, %dx.types.Handle %103, float %1906, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 524288
  %1973 = icmp ne i32 %1972, 0
  %1974 = fcmp fast ogt float %1969, 0x3FE0101020000000
  %1975 = select i1 %1974, float 1.000000e+00, float 0.000000e+00
  %1976 = select i1 %1973, float %1975, float %1969
  %1977 = fmul fast float %1976, %1957
  br label %1978

; <label>:1978                                    ; preds = %1962, %1956
  %1979 = phi float [ %1977, %1962 ], [ %1957, %1956 ]
  %1980 = fcmp fast ult float %1979, 0x3F70101020000000
  br i1 %1980, label %2523, label %1981

; <label>:1981                                    ; preds = %1978
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 16
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %2184, label %1986

; <label>:1986                                    ; preds = %1981
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %55, 368
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = add i32 %1991, 0
  %1993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1993, %dx.types.Handle %102, float %1906, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.ResRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.ResRet.f32 %1994, 2
  %1998 = extractvalue %dx.types.ResRet.f32 %1994, 3
  %1999 = and i32 %1988, 255
  %2000 = uitofp i32 %1999 to float
  %2001 = lshr i32 %1988, 8
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = fmul fast float %1998, %2000
  %2005 = fadd fast float %2004, %2003
  %2006 = fmul fast float %2005, 0x3F70101000000000
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 512
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2019, label %2011

; <label>:2011                                    ; preds = %1986
  %2012 = add i32 %55, 448
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2016, %dx.types.Handle %103, float %1906, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  br label %2019

; <label>:2019                                    ; preds = %2011, %1986
  %2020 = phi float [ %2018, %2011 ], [ 1.000000e+00, %1986 ]
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 33554432
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2131, label %2025

; <label>:2025                                    ; preds = %2019
  %2026 = add i32 %55, 256
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 65535
  %2030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2029)  ; LegacyF16ToF32(value)
  %2031 = lshr i32 %2028, 16
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = add i32 %55, 260
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = and i32 %2035, 65535
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = lshr i32 %2039, 24
  %2041 = uitofp i32 %2040 to float
  %2042 = fmul fast float %2041, 0x3F70101020000000
  %2043 = and i32 %2039, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = fmul fast float %2044, 0x3F70101020000000
  %2046 = lshr i32 %2039, 8
  %2047 = and i32 %2046, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = fmul fast float %2048, 0x3F70101020000000
  %2050 = lshr i32 %2039, 16
  %2051 = and i32 %2050, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = add i32 %55, 252
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 24
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2058, 0x3F70101020000000
  %2060 = and i32 %2056, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = fmul fast float %2061, 0x3F70101020000000
  %2063 = lshr i32 %2056, 8
  %2064 = and i32 %2063, 255
  %2065 = uitofp i32 %2064 to float
  %2066 = fmul fast float %2065, 0x3F70101020000000
  %2067 = lshr i32 %2056, 16
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, 0x3F70101020000000
  %2071 = bitcast float %1995 to i32
  %2072 = ashr i32 %2071, 1
  %2073 = sub nsw i32 1597463174, %2072
  %2074 = bitcast i32 %2073 to float
  %2075 = fmul fast float %1995, 5.000000e-01
  %2076 = fmul fast float %2074, %2074
  %2077 = fmul fast float %2076, %2075
  %2078 = fsub fast float 1.500000e+00, %2077
  %2079 = fmul fast float %2074, %1995
  %2080 = fmul fast float %2079, %2078
  %2081 = bitcast float %1996 to i32
  %2082 = ashr i32 %2081, 1
  %2083 = sub nsw i32 1597463174, %2082
  %2084 = bitcast i32 %2083 to float
  %2085 = fmul fast float %1996, 5.000000e-01
  %2086 = fmul fast float %2084, %2084
  %2087 = fmul fast float %2086, %2085
  %2088 = fsub fast float 1.500000e+00, %2087
  %2089 = fmul fast float %2084, %1996
  %2090 = fmul fast float %2089, %2088
  %2091 = bitcast float %1997 to i32
  %2092 = ashr i32 %2091, 1
  %2093 = sub nsw i32 1597463174, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %1997, 5.000000e-01
  %2096 = fmul fast float %2094, %2094
  %2097 = fmul fast float %2096, %2095
  %2098 = fsub fast float 1.500000e+00, %2097
  %2099 = fmul fast float %2094, %1997
  %2100 = fmul fast float %2099, %2098
  %2101 = fsub fast float %2080, %2062
  %2102 = fsub fast float %2090, %2066
  %2103 = fsub fast float %2100, %2070
  %2104 = fmul fast float %2101, %2030
  %2105 = fmul fast float %2102, %2032
  %2106 = fmul fast float %2103, %2037
  %2107 = fadd fast float %2104, %2045
  %2108 = fadd fast float %2105, %2049
  %2109 = fadd fast float %2106, %2053
  %2110 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2111 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2113 = fmul fast float %2110, %2110
  %2114 = fmul fast float %2111, %2111
  %2115 = fmul fast float %2112, %2112
  %2116 = fsub fast float %2113, %1995
  %2117 = fsub fast float %2114, %1996
  %2118 = fsub fast float %2115, %1997
  %2119 = fmul fast float %2116, %2020
  %2120 = fmul fast float %2117, %2020
  %2121 = fmul fast float %2118, %2020
  %2122 = fadd fast float %2119, %1995
  %2123 = fadd fast float %2120, %1996
  %2124 = fadd fast float %2121, %1997
  %2125 = fadd fast float %2042, %2006
  %2126 = fsub fast float %2125, %2059
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = fsub fast float %2127, %2006
  %2129 = fmul fast float %2128, %2020
  %2130 = fadd fast float %2129, %2006
  br label %2184

; <label>:2131                                    ; preds = %2019
  %2132 = and i32 %2022, 134217728
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2168, label %2134

; <label>:2134                                    ; preds = %2131
  %2135 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2136 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2137 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2138 = fadd fast float %2135, -5.000000e-01
  %2139 = fadd fast float %2136, -5.000000e-01
  %2140 = fadd fast float %2137, -5.000000e-01
  %2141 = fmul fast float %2138, %2020
  %2142 = fmul fast float %2139, %2020
  %2143 = fmul fast float %2140, %2020
  %2144 = fadd fast float %2141, 5.000000e-01
  %2145 = fadd fast float %2142, 5.000000e-01
  %2146 = fadd fast float %2143, 5.000000e-01
  %2147 = call float @dx.op.unary.f32(i32 24, float %1995)  ; Sqrt(value)
  %2148 = call float @dx.op.unary.f32(i32 24, float %1996)  ; Sqrt(value)
  %2149 = call float @dx.op.unary.f32(i32 24, float %1997)  ; Sqrt(value)
  %2150 = fmul fast float %2144, 2.000000e+00
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %2151, %2147
  %2153 = fadd fast float %2152, %2150
  %2154 = fmul fast float %2153, %2147
  %2155 = fmul fast float %2145, 2.000000e+00
  %2156 = fsub fast float 1.000000e+00, %2155
  %2157 = fmul fast float %2156, %2148
  %2158 = fadd fast float %2157, %2155
  %2159 = fmul fast float %2158, %2148
  %2160 = fmul fast float %2146, 2.000000e+00
  %2161 = fsub fast float 1.000000e+00, %2160
  %2162 = fmul fast float %2161, %2149
  %2163 = fadd fast float %2162, %2160
  %2164 = fmul fast float %2163, %2149
  %2165 = fmul fast float %2154, %2154
  %2166 = fmul fast float %2159, %2159
  %2167 = fmul fast float %2164, %2164
  br label %2184

; <label>:2168                                    ; preds = %2131
  %2169 = fmul fast float %372, %372
  %2170 = fmul fast float %376, %376
  %2171 = fmul fast float %380, %380
  %2172 = fadd fast float %2169, -1.000000e+00
  %2173 = fadd fast float %2170, -1.000000e+00
  %2174 = fadd fast float %2171, -1.000000e+00
  %2175 = fmul fast float %2020, %2172
  %2176 = fmul fast float %2020, %2173
  %2177 = fmul fast float %2020, %2174
  %2178 = fadd fast float %2175, 1.000000e+00
  %2179 = fadd fast float %2176, 1.000000e+00
  %2180 = fadd fast float %2177, 1.000000e+00
  %2181 = fmul fast float %2178, %1995
  %2182 = fmul fast float %2179, %1996
  %2183 = fmul fast float %2180, %1997
  br label %2184

; <label>:2184                                    ; preds = %2168, %2134, %2025, %1981
  %2185 = phi float [ %2130, %2025 ], [ %2006, %2134 ], [ %2006, %2168 ], [ 0x3FA23C0BE0000000, %1981 ]
  %2186 = phi float [ %2122, %2025 ], [ %2165, %2134 ], [ %2181, %2168 ], [ 1.000000e+00, %1981 ]
  %2187 = phi float [ %2123, %2025 ], [ %2166, %2134 ], [ %2182, %2168 ], [ 1.000000e+00, %1981 ]
  %2188 = phi float [ %2124, %2025 ], [ %2167, %2134 ], [ %2183, %2168 ], [ 1.000000e+00, %1981 ]
  %2189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.i32 %2189, 1
  %2191 = and i32 %2190, 1
  %2192 = icmp ne i32 %2191, 0
  %2193 = add i32 %55, 356
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 32
  %2197 = icmp ne i32 %2196, 0
  %2198 = and i1 %2192, %2197
  %2199 = select i1 %2198, float 1.000000e+00, float %2186
  %2200 = select i1 %2198, float 0x3FD3333340000000, float %2187
  %2201 = select i1 %2198, float 0x3FD3333340000000, float %2188
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 32
  %2205 = icmp eq i32 %2204, 0
  br i1 %2205, label %2278, label %2206

; <label>:2206                                    ; preds = %2184
  %2207 = add i32 %55, 124
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = add i32 %55, 384
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2214, %dx.types.Handle %102, float %1906, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  %2217 = extractvalue %dx.types.ResRet.f32 %2215, 1
  %2218 = extractvalue %dx.types.ResRet.f32 %2215, 2
  %2219 = extractvalue %dx.types.ResRet.f32 %2215, 3
  %2220 = and i32 %2209, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = lshr i32 %2209, 8
  %2223 = and i32 %2222, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = lshr i32 %2209, 16
  %2226 = and i32 %2225, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = fmul fast float %2227, 0x3F70101000000000
  %2229 = fmul fast float %2216, %2221
  %2230 = fadd fast float %2229, %2224
  %2231 = fmul fast float %2230, 0x3F70101000000000
  %2232 = fadd fast float %2217, -5.000000e-01
  %2233 = fadd fast float %2219, -5.000000e-01
  %2234 = fmul fast float %2232, %2228
  %2235 = fmul fast float %2233, %2228
  %2236 = fadd fast float %2234, 5.000000e-01
  %2237 = fadd fast float %2235, 5.000000e-01
  %2238 = fmul fast float %2236, 2.000000e+00
  %2239 = fadd fast float %2238, -1.000000e+00
  %2240 = fmul fast float %2237, 2.000000e+00
  %2241 = fadd fast float %2240, -1.000000e+00
  %2242 = fadd fast float %2239, %2241
  %2243 = fmul fast float %2242, 5.000000e-01
  %2244 = fsub fast float %2239, %2241
  %2245 = fmul fast float %2244, 5.000000e-01
  %2246 = call float @dx.op.unary.f32(i32 6, float %2243)  ; FAbs(value)
  %2247 = fsub fast float 1.000000e+00, %2246
  %2248 = call float @dx.op.unary.f32(i32 6, float %2245)  ; FAbs(value)
  %2249 = fsub fast float %2247, %2248
  %2250 = call float @dx.op.dot3.f32(i32 55, float %2243, float %2245, float %2249, float %2243, float %2245, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.unary.f32(i32 25, float %2250)  ; Rsqrt(value)
  %2252 = fmul fast float %2243, %2251
  %2253 = fmul fast float %2245, %2251
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 67108864
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2274, label %2258

; <label>:2258                                    ; preds = %2206
  %2259 = add i32 %55, 312
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 65535
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 65535
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = lshr i32 %2261, 16
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = fsub fast float %2231, %2269
  %2271 = fmul fast float %2270, %2263
  %2272 = fadd fast float %2271, %2267
  %2273 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  br label %2274

; <label>:2274                                    ; preds = %2258, %2206
  %2275 = phi float [ %2273, %2258 ], [ %2231, %2206 ]
  %2276 = call float @dx.op.dot2.f32(i32 54, float %2252, float %2253, float %1810, float %1811)  ; Dot2(ax,ay,bx,by)
  %2277 = call float @dx.op.dot2.f32(i32 54, float %2252, float %2253, float %1812, float %1813)  ; Dot2(ax,ay,bx,by)
  br label %2278

; <label>:2278                                    ; preds = %2274, %2184
  %2279 = phi float [ %2275, %2274 ], [ 0x3FD6666660000000, %2184 ]
  %2280 = phi float [ %2276, %2274 ], [ 0.000000e+00, %2184 ]
  %2281 = phi float [ %2277, %2274 ], [ 0.000000e+00, %2184 ]
  %2282 = phi float [ %2218, %2274 ], [ 1.000000e+00, %2184 ]
  %2283 = add i32 %55, 192
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = lshr i32 %2285, 22
  %2287 = shl nuw nsw i32 %2286, 5
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 64
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2326, label %2293

; <label>:2293                                    ; preds = %2278
  %2294 = add i32 %55, 400
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = add i32 %2296, 0
  %2298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 131072
  %2302 = icmp eq i32 %2301, 0
  %2303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2298, %dx.types.Handle %102, float %1906, float %1907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = fmul fast float %2304, %360
  %2308 = fmul fast float %2305, %363
  %2309 = fmul fast float %2306, %366
  br i1 %2302, label %2316, label %2310

; <label>:2310                                    ; preds = %2293
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = fmul fast float %2312, %2307
  %2314 = fmul fast float %2312, %2308
  %2315 = fmul fast float %2312, %2309
  br label %2316

; <label>:2316                                    ; preds = %2310, %2293
  %2317 = phi float [ %2313, %2310 ], [ %2307, %2293 ]
  %2318 = phi float [ %2314, %2310 ], [ %2308, %2293 ]
  %2319 = phi float [ %2315, %2310 ], [ %2309, %2293 ]
  %2320 = fmul fast float %2317, %2288
  %2321 = select i1 %259, float %2320, float %2317
  %2322 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2318, float %2319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2323 = select i1 %259, float 0.000000e+00, float %2317
  %2324 = select i1 %259, float %2322, float %2318
  %2325 = select i1 %259, float 0.000000e+00, float %2319
  br label %2326

; <label>:2326                                    ; preds = %2316, %2278
  %2327 = phi float [ %2323, %2316 ], [ 0.000000e+00, %2278 ]
  %2328 = phi float [ %2324, %2316 ], [ 0.000000e+00, %2278 ]
  %2329 = phi float [ %2325, %2316 ], [ 0.000000e+00, %2278 ]
  %2330 = add i32 %55, 128
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = lshr i32 %2332, 8
  %2336 = and i32 %2335, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2199, float %2200, float %2201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = fmul fast float %2337, %2338
  %2340 = fadd fast float %2339, %2334
  %2341 = fmul fast float %2340, 0x3F70101020000000
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  br i1 %1798, label %2343, label %2351

; <label>:2343                                    ; preds = %2326
  %2344 = fsub fast float 1.000000e+00, %1979
  %2345 = fmul fast float %2344, %1787
  %2346 = fmul fast float %2344, %1788
  %2347 = fmul fast float %2344, %1789
  %2348 = fmul fast float %2344, %1790
  %2349 = fmul fast float %2344, %1791
  %2350 = fmul fast float %2344, %1792
  br label %2351

; <label>:2351                                    ; preds = %2343, %2326
  %2352 = phi float [ %2345, %2343 ], [ %1787, %2326 ]
  %2353 = phi float [ %2346, %2343 ], [ %1788, %2326 ]
  %2354 = phi float [ %2347, %2343 ], [ %1789, %2326 ]
  %2355 = phi float [ %2348, %2343 ], [ %1790, %2326 ]
  %2356 = phi float [ %2349, %2343 ], [ %1791, %2326 ]
  %2357 = phi float [ %2350, %2343 ], [ %1792, %2326 ]
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 3
  %2361 = icmp eq i32 %2360, 3
  br i1 %2361, label %2440, label %2362

; <label>:2362                                    ; preds = %2351
  %2363 = and i32 %2359, 16
  %2364 = icmp ne i32 %2363, 0
  %2365 = select i1 %2364, float %1979, float 0.000000e+00
  %2366 = icmp eq i32 %2360, 0
  br i1 %2366, label %2367, label %2395

; <label>:2367                                    ; preds = %2362
  %2368 = and i32 %2359, 64
  %2369 = icmp ne i32 %2368, 0
  %2370 = select i1 %2369, float %1979, float 0.000000e+00
  %2371 = fsub fast float %2199, %2352
  %2372 = fsub fast float %2200, %2353
  %2373 = fsub fast float %2201, %2354
  %2374 = fmul fast float %2365, %2371
  %2375 = fmul fast float %2365, %2372
  %2376 = fmul fast float %2365, %2373
  %2377 = fadd fast float %2374, %2352
  %2378 = fadd fast float %2375, %2353
  %2379 = fadd fast float %2376, %2354
  %2380 = fsub fast float %2185, %1793
  %2381 = fmul fast float %2365, %2380
  %2382 = fadd fast float %2381, %1793
  %2383 = fsub fast float %2327, %2355
  %2384 = fsub fast float %2328, %2356
  %2385 = fsub fast float %2329, %2357
  %2386 = fmul fast float %2370, %2383
  %2387 = fmul fast float %2370, %2384
  %2388 = fmul fast float %2370, %2385
  %2389 = fadd fast float %2386, %2355
  %2390 = fadd fast float %2387, %2356
  %2391 = fadd fast float %2388, %2357
  %2392 = fsub fast float %2342, %1796
  %2393 = fmul fast float %2365, %2392
  %2394 = fadd fast float %2393, %1796
  br label %2440

; <label>:2395                                    ; preds = %2362
  %2396 = icmp eq i32 %2360, 1
  br i1 %2396, label %2397, label %2410

; <label>:2397                                    ; preds = %2395
  %2398 = fadd fast float %2199, -1.000000e+00
  %2399 = fadd fast float %2200, -1.000000e+00
  %2400 = fadd fast float %2201, -1.000000e+00
  %2401 = fmul fast float %2365, %2398
  %2402 = fmul fast float %2365, %2399
  %2403 = fmul fast float %2365, %2400
  %2404 = fadd fast float %2401, 1.000000e+00
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fmul fast float %2404, %2352
  %2408 = fmul fast float %2405, %2353
  %2409 = fmul fast float %2406, %2354
  br label %2440

; <label>:2410                                    ; preds = %2395
  %2411 = icmp eq i32 %2360, 2
  br i1 %2411, label %2412, label %2440

; <label>:2412                                    ; preds = %2410
  %2413 = call float @dx.op.unary.f32(i32 24, float %2199)  ; Sqrt(value)
  %2414 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2415 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2416 = fadd fast float %2413, -5.000000e-01
  %2417 = fadd fast float %2414, -5.000000e-01
  %2418 = fadd fast float %2415, -5.000000e-01
  %2419 = fmul fast float %2416, %2365
  %2420 = fmul fast float %2417, %2365
  %2421 = fmul fast float %2418, %2365
  %2422 = fadd fast float %2419, 5.000000e-01
  %2423 = fadd fast float %2420, 5.000000e-01
  %2424 = fadd fast float %2421, 5.000000e-01
  %2425 = fmul fast float %2422, 2.000000e+00
  %2426 = fsub fast float 1.000000e+00, %2425
  %2427 = fmul fast float %2426, %2352
  %2428 = fadd fast float %2427, %2425
  %2429 = fmul fast float %2428, %2352
  %2430 = fmul fast float %2423, 2.000000e+00
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = fmul fast float %2431, %2353
  %2433 = fadd fast float %2432, %2430
  %2434 = fmul fast float %2433, %2353
  %2435 = fmul fast float %2424, 2.000000e+00
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = fmul fast float %2436, %2354
  %2438 = fadd fast float %2437, %2435
  %2439 = fmul fast float %2438, %2354
  br label %2440

; <label>:2440                                    ; preds = %2412, %2410, %2397, %2367, %2351
  %2441 = phi float [ %2352, %2351 ], [ %2429, %2412 ], [ %2352, %2410 ], [ %2407, %2397 ], [ %2377, %2367 ]
  %2442 = phi float [ %2353, %2351 ], [ %2434, %2412 ], [ %2353, %2410 ], [ %2408, %2397 ], [ %2378, %2367 ]
  %2443 = phi float [ %2354, %2351 ], [ %2439, %2412 ], [ %2354, %2410 ], [ %2409, %2397 ], [ %2379, %2367 ]
  %2444 = phi float [ %2355, %2351 ], [ %2355, %2412 ], [ %2355, %2410 ], [ %2355, %2397 ], [ %2389, %2367 ]
  %2445 = phi float [ %2356, %2351 ], [ %2356, %2412 ], [ %2356, %2410 ], [ %2356, %2397 ], [ %2390, %2367 ]
  %2446 = phi float [ %2357, %2351 ], [ %2357, %2412 ], [ %2357, %2410 ], [ %2357, %2397 ], [ %2391, %2367 ]
  %2447 = phi float [ %1793, %2351 ], [ %1793, %2412 ], [ %1793, %2410 ], [ %1793, %2397 ], [ %2382, %2367 ]
  %2448 = phi float [ %1796, %2351 ], [ %1796, %2412 ], [ %1796, %2410 ], [ %1796, %2397 ], [ %2394, %2367 ]
  %2449 = and i32 %2359, 12
  %2450 = icmp eq i32 %2449, 12
  br i1 %2450, label %2523, label %2451

; <label>:2451                                    ; preds = %2440
  %2452 = and i32 %2359, 2097184
  %2453 = icmp eq i32 %2452, 2097184
  %2454 = select i1 %2453, float %1979, float 0.000000e+00
  %2455 = and i32 %2359, 4194336
  %2456 = icmp eq i32 %2455, 4194336
  %2457 = select i1 %2456, float %1979, float 0.000000e+00
  %2458 = and i32 %2359, 8388640
  %2459 = icmp eq i32 %2458, 8388640
  %2460 = select i1 %2459, float %1979, float 0.000000e+00
  %2461 = icmp eq i32 %2449, 0
  br i1 %2461, label %2462, label %2475

; <label>:2462                                    ; preds = %2451
  %2463 = fsub fast float %2280, %1785
  %2464 = fsub fast float %2281, %1786
  %2465 = fmul fast float %2454, %2463
  %2466 = fmul fast float %2454, %2464
  %2467 = fadd fast float %2465, %1785
  %2468 = fadd fast float %2466, %1786
  %2469 = fsub fast float %2282, %1795
  %2470 = fmul fast float %2457, %2469
  %2471 = fadd fast float %2470, %1795
  %2472 = fsub fast float %2279, %1794
  %2473 = fmul fast float %2460, %2472
  %2474 = fadd fast float %2473, %1794
  br label %2523

; <label>:2475                                    ; preds = %2451
  %2476 = icmp eq i32 %2449, 4
  br i1 %2476, label %2477, label %2509

; <label>:2477                                    ; preds = %2475
  %2478 = fmul fast float %2454, %2280
  %2479 = fmul fast float %2454, %2281
  %2480 = fadd fast float %2478, %1785
  %2481 = fadd fast float %2479, %1786
  %2482 = call float @dx.op.binary.f32(i32 36, float %1795, float %2282)  ; FMin(a,b)
  %2483 = fsub fast float %2482, %1795
  %2484 = fmul fast float %2483, %2457
  %2485 = fadd fast float %2484, %1795
  %2486 = fadd fast float %2279, %1794
  %2487 = fmul fast float %2486, 0x3FF337FAE0000000
  %2488 = fmul fast float %1794, %1794
  %2489 = fmul fast float %2279, %2279
  %2490 = fadd fast float %2489, %2488
  %2491 = fmul fast float %2490, 0x3FE5152B00000000
  %2492 = fmul fast float %1794, 0xBFCC1F85E0000000
  %2493 = fmul fast float %2492, %2279
  %2494 = fadd fast float %2493, 0xBFE1363700000000
  %2495 = fadd fast float %2494, %2487
  %2496 = fsub fast float %2495, %2491
  %2497 = fmul fast float %2486, 0x3FBA6F0D00000000
  %2498 = fmul fast float %2490, 0x3FD0432880000000
  %2499 = fmul fast float %1794, 0xBFEF110800000000
  %2500 = fmul fast float %2499, %2279
  %2501 = fadd fast float %2500, 1.000000e+00
  %2502 = fsub fast float %2501, %2497
  %2503 = fadd fast float %2502, %2498
  %2504 = fdiv fast float %2496, %2503
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fsub fast float %2505, %1794
  %2507 = fmul fast float %2506, %2460
  %2508 = fadd fast float %2507, %1794
  br label %2523

; <label>:2509                                    ; preds = %2475
  %2510 = icmp eq i32 %2449, 8
  br i1 %2510, label %2511, label %2523

; <label>:2511                                    ; preds = %2509
  %2512 = fmul fast float %2454, %2280
  %2513 = fmul fast float %2454, %2281
  %2514 = fadd fast float %2512, %1785
  %2515 = fadd fast float %2513, %1786
  %2516 = call float @dx.op.binary.f32(i32 36, float %1795, float %2282)  ; FMin(a,b)
  %2517 = fsub fast float %2516, %1795
  %2518 = fmul fast float %2517, %2457
  %2519 = fadd fast float %2518, %1795
  %2520 = fsub fast float %2279, %1794
  %2521 = fmul fast float %2460, %2520
  %2522 = fadd fast float %2521, %1794
  br label %2523

; <label>:2523                                    ; preds = %2511, %2509, %2477, %2462, %2440, %1978, %1797, %1784
  %2524 = phi float [ %1785, %2440 ], [ %1785, %1978 ], [ %1785, %1784 ], [ %2514, %2511 ], [ %1785, %2509 ], [ %2480, %2477 ], [ %2467, %2462 ], [ %1785, %1797 ]
  %2525 = phi float [ %1786, %2440 ], [ %1786, %1978 ], [ %1786, %1784 ], [ %2515, %2511 ], [ %1786, %2509 ], [ %2481, %2477 ], [ %2468, %2462 ], [ %1786, %1797 ]
  %2526 = phi float [ %2441, %2440 ], [ %1787, %1978 ], [ %1787, %1784 ], [ %2441, %2511 ], [ %2441, %2509 ], [ %2441, %2477 ], [ %2441, %2462 ], [ %1787, %1797 ]
  %2527 = phi float [ %2442, %2440 ], [ %1788, %1978 ], [ %1788, %1784 ], [ %2442, %2511 ], [ %2442, %2509 ], [ %2442, %2477 ], [ %2442, %2462 ], [ %1788, %1797 ]
  %2528 = phi float [ %2443, %2440 ], [ %1789, %1978 ], [ %1789, %1784 ], [ %2443, %2511 ], [ %2443, %2509 ], [ %2443, %2477 ], [ %2443, %2462 ], [ %1789, %1797 ]
  %2529 = phi float [ %2444, %2440 ], [ %1790, %1978 ], [ %1790, %1784 ], [ %2444, %2511 ], [ %2444, %2509 ], [ %2444, %2477 ], [ %2444, %2462 ], [ %1790, %1797 ]
  %2530 = phi float [ %2445, %2440 ], [ %1791, %1978 ], [ %1791, %1784 ], [ %2445, %2511 ], [ %2445, %2509 ], [ %2445, %2477 ], [ %2445, %2462 ], [ %1791, %1797 ]
  %2531 = phi float [ %2446, %2440 ], [ %1792, %1978 ], [ %1792, %1784 ], [ %2446, %2511 ], [ %2446, %2509 ], [ %2446, %2477 ], [ %2446, %2462 ], [ %1792, %1797 ]
  %2532 = phi float [ %2447, %2440 ], [ %1793, %1978 ], [ %1793, %1784 ], [ %2447, %2511 ], [ %2447, %2509 ], [ %2447, %2477 ], [ %2447, %2462 ], [ %1793, %1797 ]
  %2533 = phi float [ %1794, %2440 ], [ %1794, %1978 ], [ %1794, %1784 ], [ %2522, %2511 ], [ %1794, %2509 ], [ %2508, %2477 ], [ %2474, %2462 ], [ %1794, %1797 ]
  %2534 = phi float [ %1795, %2440 ], [ %1795, %1978 ], [ %1795, %1784 ], [ %2519, %2511 ], [ %1795, %2509 ], [ %2485, %2477 ], [ %2471, %2462 ], [ %1795, %1797 ]
  %2535 = phi float [ %2448, %2440 ], [ %1796, %1978 ], [ %1796, %1784 ], [ %2448, %2511 ], [ %2448, %2509 ], [ %2448, %2477 ], [ %2448, %2462 ], [ %1796, %1797 ]
  br i1 %447, label %3262, label %2536

; <label>:2536                                    ; preds = %2523
  %2537 = icmp ult i32 %501, 4
  %2538 = add i32 %55, 72
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %55, 76
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = or i32 %2543, %2540
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %3262, label %2546

; <label>:2546                                    ; preds = %2536
  %2547 = and i32 %2540, 262144
  %2548 = icmp ne i32 %2547, 0
  %2549 = select i1 %2548, float %61, float 1.000000e+00
  %2550 = select i1 %2548, float %62, float 0.000000e+00
  %2551 = select i1 %2548, float %63, float 0.000000e+00
  %2552 = select i1 %2548, float %64, float 1.000000e+00
  %2553 = select i1 %2548, float %65, float %88
  %2554 = select i1 %2548, float %66, float %89
  %2555 = add i32 %55, 332
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = lshr i32 %2557, 16
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = fmul fast float %2559, 0x3F50624DE0000000
  %2561 = add i32 %55, 136
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = lshr i32 %2563, 16
  %2565 = and i32 %2564, 255
  %2566 = lshr i32 %2563, 24
  %2567 = add i32 %55, 340
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 65535
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = lshr i32 %2569, 16
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = add i32 %55, 80
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = lshr i32 %2576, 22
  %2578 = shl nuw nsw i32 %2577, 5
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = shl i32 %2576, 4
  %2581 = and i32 %2580, 32752
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = lshr i32 %2576, 7
  %2584 = and i32 %2583, 32752
  %2585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2584)  ; LegacyF16ToF32(value)
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 3
  %2588 = fmul fast float %2587, 1.000000e+03
  %2589 = fmul fast float %437, %2588
  %2590 = call float @dx.op.unary.f32(i32 22, float %2589)  ; Frc(value)
  %2591 = fadd fast float %2590, %427
  %2592 = fmul fast float %438, %2588
  %2593 = call float @dx.op.unary.f32(i32 22, float %2592)  ; Frc(value)
  %2594 = fadd fast float %2593, %429
  %2595 = fmul fast float %2560, %2588
  %2596 = call float @dx.op.unary.f32(i32 22, float %2595)  ; Frc(value)
  %2597 = fmul fast float %2596, 0x401921FB60000000
  %2598 = fadd fast float %2597, %2579
  %2599 = call float @dx.op.unary.f32(i32 13, float %2598)  ; Sin(value)
  %2600 = call float @dx.op.unary.f32(i32 12, float %2598)  ; Cos(value)
  %2601 = fsub fast float -0.000000e+00, %2599
  %2602 = fadd fast float %2553, -5.000000e-01
  %2603 = fadd fast float %2554, -5.000000e-01
  %2604 = fmul fast float %2571, %2602
  %2605 = fmul fast float %2573, %2603
  %2606 = fadd fast float %2604, 5.000000e-01
  %2607 = fadd fast float %2605, 5.000000e-01
  %2608 = fmul fast float %2582, %2606
  %2609 = fmul fast float %2585, %2607
  %2610 = fmul fast float %2600, %2608
  %2611 = call float @dx.op.tertiary.f32(i32 46, float %2601, float %2609, float %2610)  ; FMad(a,b,c)
  %2612 = fmul fast float %2599, %2608
  %2613 = call float @dx.op.tertiary.f32(i32 46, float %2600, float %2609, float %2612)  ; FMad(a,b,c)
  %2614 = fadd fast float %2591, %2611
  %2615 = fadd fast float %2594, %2613
  %2616 = icmp ugt i32 %2565, 1
  %2617 = icmp ugt i32 %2563, 33554431
  %2618 = or i1 %2617, %2616
  br i1 %2618, label %2619, label %2644

; <label>:2619                                    ; preds = %2546
  %2620 = add i32 %55, 276
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = lshr i32 %2622, 16
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = fmul fast float %2587, %2624
  %2626 = call float @dx.op.unary.f32(i32 22, float %2625)  ; Frc(value)
  %2627 = mul nuw nsw i32 %2565, %2566
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2626, %2628
  %2630 = call float @dx.op.unary.f32(i32 27, float %2629)  ; Round_ni(value)
  %2631 = fptoui float %2630 to i32
  %2632 = urem i32 %2631, %2565
  %2633 = udiv i32 %2631, %2566
  %2634 = call float @dx.op.unary.f32(i32 22, float %2614)  ; Frc(value)
  %2635 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2636 = uitofp i32 %2632 to float
  %2637 = uitofp i32 %2633 to float
  %2638 = fadd fast float %2634, %2636
  %2639 = fadd fast float %2635, %2637
  %2640 = uitofp i32 %2565 to float
  %2641 = uitofp i32 %2566 to float
  %2642 = fdiv fast float %2638, %2640
  %2643 = fdiv fast float %2639, %2641
  br label %2644

; <label>:2644                                    ; preds = %2619, %2546
  %2645 = phi float [ %2642, %2619 ], [ %2614, %2546 ]
  %2646 = phi float [ %2643, %2619 ], [ %2615, %2546 ]
  %2647 = and i32 %2540, 256
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2695, label %2649

; <label>:2649                                    ; preds = %2644
  %2650 = add i32 %55, 436
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %2652, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2654, %dx.types.Handle %103, float %2645, float %2646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  %2657 = add i32 %55, 148
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = shl i32 %2659, 4
  %2661 = and i32 %2660, 32752
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = lshr i32 %2659, 7
  %2664 = and i32 %2663, 32752
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = fsub fast float 1.000000e+00, %496
  %2667 = call float @dx.op.binary.f32(i32 35, float %2666, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2668 = bitcast float %496 to i32
  %2669 = sitofp i32 %2668 to float
  %2670 = fadd fast float %2669, 0xC1CFBF8940000000
  %2671 = fmul fast float %2665, %2670
  %2672 = fadd fast float %2671, 0x41CFBF8940000000
  %2673 = fptosi float %2672 to i32
  %2674 = bitcast i32 %2673 to float
  %2675 = bitcast float %2667 to i32
  %2676 = sitofp i32 %2675 to float
  %2677 = fadd fast float %2676, 0xC1CFBF8940000000
  %2678 = fmul fast float %2677, %2665
  %2679 = fadd fast float %2678, 0x41CFBF8940000000
  %2680 = fptosi float %2679 to i32
  %2681 = bitcast i32 %2680 to float
  %2682 = fmul fast float %2674, %2662
  %2683 = fmul fast float %2681, %2662
  %2684 = fsub fast float %2667, %2682
  %2685 = fadd fast float %2683, %2667
  %2686 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  %2687 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2688 = fsub fast float %2656, %2686
  %2689 = fsub fast float %2687, %2686
  %2690 = bitcast float %2689 to i32
  %2691 = sub nsw i32 2129859010, %2690
  %2692 = bitcast i32 %2691 to float
  %2693 = fmul fast float %2692, %2688
  %2694 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  br label %2695

; <label>:2695                                    ; preds = %2649, %2644
  %2696 = phi float [ %2694, %2649 ], [ %496, %2644 ]
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 128
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2717, label %2701

; <label>:2701                                    ; preds = %2695
  %2702 = add i32 %55, 420
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %2704, 0
  %2706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2706, %dx.types.Handle %103, float %2645, float %2646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = and i32 %2710, 524288
  %2712 = icmp ne i32 %2711, 0
  %2713 = fcmp fast ogt float %2708, 0x3FE0101020000000
  %2714 = select i1 %2713, float 1.000000e+00, float 0.000000e+00
  %2715 = select i1 %2712, float %2714, float %2708
  %2716 = fmul fast float %2715, %2696
  br label %2717

; <label>:2717                                    ; preds = %2701, %2695
  %2718 = phi float [ %2716, %2701 ], [ %2696, %2695 ]
  %2719 = fcmp fast ult float %2718, 0x3F70101020000000
  br i1 %2719, label %3262, label %2720

; <label>:2720                                    ; preds = %2717
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = and i32 %2722, 16
  %2724 = icmp eq i32 %2723, 0
  br i1 %2724, label %2923, label %2725

; <label>:2725                                    ; preds = %2720
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %55, 372
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %2730, 0
  %2732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2732, %dx.types.Handle %102, float %2645, float %2646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = extractvalue %dx.types.ResRet.f32 %2733, 3
  %2738 = and i32 %2727, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = lshr i32 %2727, 8
  %2741 = and i32 %2740, 255
  %2742 = uitofp i32 %2741 to float
  %2743 = fmul fast float %2737, %2739
  %2744 = fadd fast float %2743, %2742
  %2745 = fmul fast float %2744, 0x3F70101000000000
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 512
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2758, label %2750

; <label>:2750                                    ; preds = %2725
  %2751 = add i32 %55, 452
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = add i32 %2753, 0
  %2755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2755, %dx.types.Handle %103, float %2645, float %2646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  br label %2758

; <label>:2758                                    ; preds = %2750, %2725
  %2759 = phi float [ %2757, %2750 ], [ 1.000000e+00, %2725 ]
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 33554432
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2870, label %2764

; <label>:2764                                    ; preds = %2758
  %2765 = add i32 %55, 272
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 65535
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = lshr i32 %2767, 16
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = add i32 %55, 276
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 65535
  %2776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2775)  ; LegacyF16ToF32(value)
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = lshr i32 %2778, 24
  %2780 = uitofp i32 %2779 to float
  %2781 = fmul fast float %2780, 0x3F70101020000000
  %2782 = and i32 %2778, 255
  %2783 = uitofp i32 %2782 to float
  %2784 = fmul fast float %2783, 0x3F70101020000000
  %2785 = lshr i32 %2778, 8
  %2786 = and i32 %2785, 255
  %2787 = uitofp i32 %2786 to float
  %2788 = fmul fast float %2787, 0x3F70101020000000
  %2789 = lshr i32 %2778, 16
  %2790 = and i32 %2789, 255
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2791, 0x3F70101020000000
  %2793 = add i32 %55, 268
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = lshr i32 %2795, 24
  %2797 = uitofp i32 %2796 to float
  %2798 = fmul fast float %2797, 0x3F70101020000000
  %2799 = and i32 %2795, 255
  %2800 = uitofp i32 %2799 to float
  %2801 = fmul fast float %2800, 0x3F70101020000000
  %2802 = lshr i32 %2795, 8
  %2803 = and i32 %2802, 255
  %2804 = uitofp i32 %2803 to float
  %2805 = fmul fast float %2804, 0x3F70101020000000
  %2806 = lshr i32 %2795, 16
  %2807 = and i32 %2806, 255
  %2808 = uitofp i32 %2807 to float
  %2809 = fmul fast float %2808, 0x3F70101020000000
  %2810 = bitcast float %2734 to i32
  %2811 = ashr i32 %2810, 1
  %2812 = sub nsw i32 1597463174, %2811
  %2813 = bitcast i32 %2812 to float
  %2814 = fmul fast float %2734, 5.000000e-01
  %2815 = fmul fast float %2813, %2813
  %2816 = fmul fast float %2815, %2814
  %2817 = fsub fast float 1.500000e+00, %2816
  %2818 = fmul fast float %2813, %2734
  %2819 = fmul fast float %2818, %2817
  %2820 = bitcast float %2735 to i32
  %2821 = ashr i32 %2820, 1
  %2822 = sub nsw i32 1597463174, %2821
  %2823 = bitcast i32 %2822 to float
  %2824 = fmul fast float %2735, 5.000000e-01
  %2825 = fmul fast float %2823, %2823
  %2826 = fmul fast float %2825, %2824
  %2827 = fsub fast float 1.500000e+00, %2826
  %2828 = fmul fast float %2823, %2735
  %2829 = fmul fast float %2828, %2827
  %2830 = bitcast float %2736 to i32
  %2831 = ashr i32 %2830, 1
  %2832 = sub nsw i32 1597463174, %2831
  %2833 = bitcast i32 %2832 to float
  %2834 = fmul fast float %2736, 5.000000e-01
  %2835 = fmul fast float %2833, %2833
  %2836 = fmul fast float %2835, %2834
  %2837 = fsub fast float 1.500000e+00, %2836
  %2838 = fmul fast float %2833, %2736
  %2839 = fmul fast float %2838, %2837
  %2840 = fsub fast float %2819, %2801
  %2841 = fsub fast float %2829, %2805
  %2842 = fsub fast float %2839, %2809
  %2843 = fmul fast float %2840, %2769
  %2844 = fmul fast float %2841, %2771
  %2845 = fmul fast float %2842, %2776
  %2846 = fadd fast float %2843, %2784
  %2847 = fadd fast float %2844, %2788
  %2848 = fadd fast float %2845, %2792
  %2849 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2850 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2851 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2852 = fmul fast float %2849, %2849
  %2853 = fmul fast float %2850, %2850
  %2854 = fmul fast float %2851, %2851
  %2855 = fsub fast float %2852, %2734
  %2856 = fsub fast float %2853, %2735
  %2857 = fsub fast float %2854, %2736
  %2858 = fmul fast float %2855, %2759
  %2859 = fmul fast float %2856, %2759
  %2860 = fmul fast float %2857, %2759
  %2861 = fadd fast float %2858, %2734
  %2862 = fadd fast float %2859, %2735
  %2863 = fadd fast float %2860, %2736
  %2864 = fadd fast float %2781, %2745
  %2865 = fsub fast float %2864, %2798
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2867 = fsub fast float %2866, %2745
  %2868 = fmul fast float %2867, %2759
  %2869 = fadd fast float %2868, %2745
  br label %2923

; <label>:2870                                    ; preds = %2758
  %2871 = and i32 %2761, 134217728
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %2907, label %2873

; <label>:2873                                    ; preds = %2870
  %2874 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %2875 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %2876 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %2877 = fadd fast float %2874, -5.000000e-01
  %2878 = fadd fast float %2875, -5.000000e-01
  %2879 = fadd fast float %2876, -5.000000e-01
  %2880 = fmul fast float %2877, %2759
  %2881 = fmul fast float %2878, %2759
  %2882 = fmul fast float %2879, %2759
  %2883 = fadd fast float %2880, 5.000000e-01
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = call float @dx.op.unary.f32(i32 24, float %2734)  ; Sqrt(value)
  %2887 = call float @dx.op.unary.f32(i32 24, float %2735)  ; Sqrt(value)
  %2888 = call float @dx.op.unary.f32(i32 24, float %2736)  ; Sqrt(value)
  %2889 = fmul fast float %2883, 2.000000e+00
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2890, %2886
  %2892 = fadd fast float %2891, %2889
  %2893 = fmul fast float %2892, %2886
  %2894 = fmul fast float %2884, 2.000000e+00
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2895, %2887
  %2897 = fadd fast float %2896, %2894
  %2898 = fmul fast float %2897, %2887
  %2899 = fmul fast float %2885, 2.000000e+00
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2900, %2888
  %2902 = fadd fast float %2901, %2899
  %2903 = fmul fast float %2902, %2888
  %2904 = fmul fast float %2893, %2893
  %2905 = fmul fast float %2898, %2898
  %2906 = fmul fast float %2903, %2903
  br label %2923

; <label>:2907                                    ; preds = %2870
  %2908 = fmul fast float %414, %414
  %2909 = fmul fast float %418, %418
  %2910 = fmul fast float %422, %422
  %2911 = fadd fast float %2908, -1.000000e+00
  %2912 = fadd fast float %2909, -1.000000e+00
  %2913 = fadd fast float %2910, -1.000000e+00
  %2914 = fmul fast float %2759, %2911
  %2915 = fmul fast float %2759, %2912
  %2916 = fmul fast float %2759, %2913
  %2917 = fadd fast float %2914, 1.000000e+00
  %2918 = fadd fast float %2915, 1.000000e+00
  %2919 = fadd fast float %2916, 1.000000e+00
  %2920 = fmul fast float %2917, %2734
  %2921 = fmul fast float %2918, %2735
  %2922 = fmul fast float %2919, %2736
  br label %2923

; <label>:2923                                    ; preds = %2907, %2873, %2764, %2720
  %2924 = phi float [ %2869, %2764 ], [ %2745, %2873 ], [ %2745, %2907 ], [ 0x3FA23C0BE0000000, %2720 ]
  %2925 = phi float [ %2861, %2764 ], [ %2904, %2873 ], [ %2920, %2907 ], [ 1.000000e+00, %2720 ]
  %2926 = phi float [ %2862, %2764 ], [ %2905, %2873 ], [ %2921, %2907 ], [ 1.000000e+00, %2720 ]
  %2927 = phi float [ %2863, %2764 ], [ %2906, %2873 ], [ %2922, %2907 ], [ 1.000000e+00, %2720 ]
  %2928 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.i32 %2928, 1
  %2930 = and i32 %2929, 1
  %2931 = icmp ne i32 %2930, 0
  %2932 = add i32 %55, 356
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 32
  %2936 = icmp ne i32 %2935, 0
  %2937 = and i1 %2931, %2936
  %2938 = select i1 %2937, float 1.000000e+00, float %2925
  %2939 = select i1 %2937, float 0x3FD3333340000000, float %2926
  %2940 = select i1 %2937, float 0x3FD3333340000000, float %2927
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 32
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %3017, label %2945

; <label>:2945                                    ; preds = %2923
  %2946 = add i32 %55, 140
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = add i32 %55, 388
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = add i32 %2951, 0
  %2953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2952, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2953, %dx.types.Handle %102, float %2645, float %2646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.ResRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.ResRet.f32 %2954, 2
  %2958 = extractvalue %dx.types.ResRet.f32 %2954, 3
  %2959 = and i32 %2948, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = lshr i32 %2948, 8
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = lshr i32 %2948, 16
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101000000000
  %2968 = fmul fast float %2955, %2960
  %2969 = fadd fast float %2968, %2963
  %2970 = fmul fast float %2969, 0x3F70101000000000
  %2971 = fadd fast float %2956, -5.000000e-01
  %2972 = fadd fast float %2958, -5.000000e-01
  %2973 = fmul fast float %2971, %2967
  %2974 = fmul fast float %2972, %2967
  %2975 = fadd fast float %2973, 5.000000e-01
  %2976 = fadd fast float %2974, 5.000000e-01
  %2977 = fmul fast float %2975, 2.000000e+00
  %2978 = fadd fast float %2977, -1.000000e+00
  %2979 = fmul fast float %2976, 2.000000e+00
  %2980 = fadd fast float %2979, -1.000000e+00
  %2981 = fadd fast float %2978, %2980
  %2982 = fmul fast float %2981, 5.000000e-01
  %2983 = fsub fast float %2978, %2980
  %2984 = fmul fast float %2983, 5.000000e-01
  %2985 = call float @dx.op.unary.f32(i32 6, float %2982)  ; FAbs(value)
  %2986 = fsub fast float 1.000000e+00, %2985
  %2987 = call float @dx.op.unary.f32(i32 6, float %2984)  ; FAbs(value)
  %2988 = fsub fast float %2986, %2987
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2982, float %2984, float %2988, float %2982, float %2984, float %2988)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = call float @dx.op.unary.f32(i32 25, float %2989)  ; Rsqrt(value)
  %2991 = fmul fast float %2982, %2990
  %2992 = fmul fast float %2984, %2990
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 67108864
  %2996 = icmp eq i32 %2995, 0
  br i1 %2996, label %3013, label %2997

; <label>:2997                                    ; preds = %2945
  %2998 = add i32 %55, 328
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 65535
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 65535
  %3006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3005)  ; LegacyF16ToF32(value)
  %3007 = lshr i32 %3000, 16
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = fsub fast float %2970, %3008
  %3010 = fmul fast float %3009, %3002
  %3011 = fadd fast float %3010, %3006
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  br label %3013

; <label>:3013                                    ; preds = %2997, %2945
  %3014 = phi float [ %3012, %2997 ], [ %2970, %2945 ]
  %3015 = call float @dx.op.dot2.f32(i32 54, float %2991, float %2992, float %2549, float %2550)  ; Dot2(ax,ay,bx,by)
  %3016 = call float @dx.op.dot2.f32(i32 54, float %2991, float %2992, float %2551, float %2552)  ; Dot2(ax,ay,bx,by)
  br label %3017

; <label>:3017                                    ; preds = %3013, %2923
  %3018 = phi float [ %3014, %3013 ], [ 0x3FD6666660000000, %2923 ]
  %3019 = phi float [ %3015, %3013 ], [ 0.000000e+00, %2923 ]
  %3020 = phi float [ %3016, %3013 ], [ 0.000000e+00, %2923 ]
  %3021 = phi float [ %2957, %3013 ], [ 1.000000e+00, %2923 ]
  %3022 = add i32 %55, 208
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = lshr i32 %3024, 22
  %3026 = shl nuw nsw i32 %3025, 5
  %3027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3026)  ; LegacyF16ToF32(value)
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = and i32 %3029, 64
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3065, label %3032

; <label>:3032                                    ; preds = %3017
  %3033 = add i32 %55, 404
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = add i32 %3035, 0
  %3037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = and i32 %3039, 131072
  %3041 = icmp eq i32 %3040, 0
  %3042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3037, %dx.types.Handle %102, float %2645, float %2646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.ResRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.ResRet.f32 %3042, 2
  %3046 = fmul fast float %3043, %402
  %3047 = fmul fast float %3044, %405
  %3048 = fmul fast float %3045, %408
  br i1 %3041, label %3055, label %3049

; <label>:3049                                    ; preds = %3032
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = fmul fast float %3051, %3046
  %3053 = fmul fast float %3051, %3047
  %3054 = fmul fast float %3051, %3048
  br label %3055

; <label>:3055                                    ; preds = %3049, %3032
  %3056 = phi float [ %3052, %3049 ], [ %3046, %3032 ]
  %3057 = phi float [ %3053, %3049 ], [ %3047, %3032 ]
  %3058 = phi float [ %3054, %3049 ], [ %3048, %3032 ]
  %3059 = fmul fast float %3056, %3027
  %3060 = select i1 %259, float %3059, float %3056
  %3061 = call float @dx.op.dot3.f32(i32 55, float %3060, float %3057, float %3058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3062 = select i1 %259, float 0.000000e+00, float %3056
  %3063 = select i1 %259, float %3061, float %3057
  %3064 = select i1 %259, float 0.000000e+00, float %3058
  br label %3065

; <label>:3065                                    ; preds = %3055, %3017
  %3066 = phi float [ %3062, %3055 ], [ 0.000000e+00, %3017 ]
  %3067 = phi float [ %3063, %3055 ], [ 0.000000e+00, %3017 ]
  %3068 = phi float [ %3064, %3055 ], [ 0.000000e+00, %3017 ]
  %3069 = add i32 %55, 144
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = lshr i32 %3071, 8
  %3075 = and i32 %3074, 255
  %3076 = uitofp i32 %3075 to float
  %3077 = call float @dx.op.dot3.f32(i32 55, float %2938, float %2939, float %2940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3078 = fmul fast float %3076, %3077
  %3079 = fadd fast float %3078, %3073
  %3080 = fmul fast float %3079, 0x3F70101020000000
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  br i1 %2537, label %3082, label %3090

; <label>:3082                                    ; preds = %3065
  %3083 = fsub fast float 1.000000e+00, %2718
  %3084 = fmul fast float %3083, %2526
  %3085 = fmul fast float %3083, %2527
  %3086 = fmul fast float %3083, %2528
  %3087 = fmul fast float %3083, %2529
  %3088 = fmul fast float %3083, %2530
  %3089 = fmul fast float %3083, %2531
  br label %3090

; <label>:3090                                    ; preds = %3082, %3065
  %3091 = phi float [ %3084, %3082 ], [ %2526, %3065 ]
  %3092 = phi float [ %3085, %3082 ], [ %2527, %3065 ]
  %3093 = phi float [ %3086, %3082 ], [ %2528, %3065 ]
  %3094 = phi float [ %3087, %3082 ], [ %2529, %3065 ]
  %3095 = phi float [ %3088, %3082 ], [ %2530, %3065 ]
  %3096 = phi float [ %3089, %3082 ], [ %2531, %3065 ]
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 3
  %3100 = icmp eq i32 %3099, 3
  br i1 %3100, label %3179, label %3101

; <label>:3101                                    ; preds = %3090
  %3102 = and i32 %3098, 16
  %3103 = icmp ne i32 %3102, 0
  %3104 = select i1 %3103, float %2718, float 0.000000e+00
  %3105 = icmp eq i32 %3099, 0
  br i1 %3105, label %3106, label %3134

; <label>:3106                                    ; preds = %3101
  %3107 = and i32 %3098, 64
  %3108 = icmp ne i32 %3107, 0
  %3109 = select i1 %3108, float %2718, float 0.000000e+00
  %3110 = fsub fast float %2938, %3091
  %3111 = fsub fast float %2939, %3092
  %3112 = fsub fast float %2940, %3093
  %3113 = fmul fast float %3104, %3110
  %3114 = fmul fast float %3104, %3111
  %3115 = fmul fast float %3104, %3112
  %3116 = fadd fast float %3113, %3091
  %3117 = fadd fast float %3114, %3092
  %3118 = fadd fast float %3115, %3093
  %3119 = fsub fast float %2924, %2532
  %3120 = fmul fast float %3104, %3119
  %3121 = fadd fast float %3120, %2532
  %3122 = fsub fast float %3066, %3094
  %3123 = fsub fast float %3067, %3095
  %3124 = fsub fast float %3068, %3096
  %3125 = fmul fast float %3109, %3122
  %3126 = fmul fast float %3109, %3123
  %3127 = fmul fast float %3109, %3124
  %3128 = fadd fast float %3125, %3094
  %3129 = fadd fast float %3126, %3095
  %3130 = fadd fast float %3127, %3096
  %3131 = fsub fast float %3081, %2535
  %3132 = fmul fast float %3104, %3131
  %3133 = fadd fast float %3132, %2535
  br label %3179

; <label>:3134                                    ; preds = %3101
  %3135 = icmp eq i32 %3099, 1
  br i1 %3135, label %3136, label %3149

; <label>:3136                                    ; preds = %3134
  %3137 = fadd fast float %2938, -1.000000e+00
  %3138 = fadd fast float %2939, -1.000000e+00
  %3139 = fadd fast float %2940, -1.000000e+00
  %3140 = fmul fast float %3104, %3137
  %3141 = fmul fast float %3104, %3138
  %3142 = fmul fast float %3104, %3139
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fmul fast float %3143, %3091
  %3147 = fmul fast float %3144, %3092
  %3148 = fmul fast float %3145, %3093
  br label %3179

; <label>:3149                                    ; preds = %3134
  %3150 = icmp eq i32 %3099, 2
  br i1 %3150, label %3151, label %3179

; <label>:3151                                    ; preds = %3149
  %3152 = call float @dx.op.unary.f32(i32 24, float %2938)  ; Sqrt(value)
  %3153 = call float @dx.op.unary.f32(i32 24, float %2939)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %3155 = fadd fast float %3152, -5.000000e-01
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fmul fast float %3155, %3104
  %3159 = fmul fast float %3156, %3104
  %3160 = fmul fast float %3157, %3104
  %3161 = fadd fast float %3158, 5.000000e-01
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = fmul fast float %3161, 2.000000e+00
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = fmul fast float %3165, %3091
  %3167 = fadd fast float %3166, %3164
  %3168 = fmul fast float %3167, %3091
  %3169 = fmul fast float %3162, 2.000000e+00
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = fmul fast float %3170, %3092
  %3172 = fadd fast float %3171, %3169
  %3173 = fmul fast float %3172, %3092
  %3174 = fmul fast float %3163, 2.000000e+00
  %3175 = fsub fast float 1.000000e+00, %3174
  %3176 = fmul fast float %3175, %3093
  %3177 = fadd fast float %3176, %3174
  %3178 = fmul fast float %3177, %3093
  br label %3179

; <label>:3179                                    ; preds = %3151, %3149, %3136, %3106, %3090
  %3180 = phi float [ %3091, %3090 ], [ %3168, %3151 ], [ %3091, %3149 ], [ %3146, %3136 ], [ %3116, %3106 ]
  %3181 = phi float [ %3092, %3090 ], [ %3173, %3151 ], [ %3092, %3149 ], [ %3147, %3136 ], [ %3117, %3106 ]
  %3182 = phi float [ %3093, %3090 ], [ %3178, %3151 ], [ %3093, %3149 ], [ %3148, %3136 ], [ %3118, %3106 ]
  %3183 = phi float [ %3094, %3090 ], [ %3094, %3151 ], [ %3094, %3149 ], [ %3094, %3136 ], [ %3128, %3106 ]
  %3184 = phi float [ %3095, %3090 ], [ %3095, %3151 ], [ %3095, %3149 ], [ %3095, %3136 ], [ %3129, %3106 ]
  %3185 = phi float [ %3096, %3090 ], [ %3096, %3151 ], [ %3096, %3149 ], [ %3096, %3136 ], [ %3130, %3106 ]
  %3186 = phi float [ %2532, %3090 ], [ %2532, %3151 ], [ %2532, %3149 ], [ %2532, %3136 ], [ %3121, %3106 ]
  %3187 = phi float [ %2535, %3090 ], [ %2535, %3151 ], [ %2535, %3149 ], [ %2535, %3136 ], [ %3133, %3106 ]
  %3188 = and i32 %3098, 12
  %3189 = icmp eq i32 %3188, 12
  br i1 %3189, label %3262, label %3190

; <label>:3190                                    ; preds = %3179
  %3191 = and i32 %3098, 2097184
  %3192 = icmp eq i32 %3191, 2097184
  %3193 = select i1 %3192, float %2718, float 0.000000e+00
  %3194 = and i32 %3098, 4194336
  %3195 = icmp eq i32 %3194, 4194336
  %3196 = select i1 %3195, float %2718, float 0.000000e+00
  %3197 = and i32 %3098, 8388640
  %3198 = icmp eq i32 %3197, 8388640
  %3199 = select i1 %3198, float %2718, float 0.000000e+00
  %3200 = icmp eq i32 %3188, 0
  br i1 %3200, label %3201, label %3214

; <label>:3201                                    ; preds = %3190
  %3202 = fsub fast float %3019, %2524
  %3203 = fsub fast float %3020, %2525
  %3204 = fmul fast float %3193, %3202
  %3205 = fmul fast float %3193, %3203
  %3206 = fadd fast float %3204, %2524
  %3207 = fadd fast float %3205, %2525
  %3208 = fsub fast float %3021, %2534
  %3209 = fmul fast float %3196, %3208
  %3210 = fadd fast float %3209, %2534
  %3211 = fsub fast float %3018, %2533
  %3212 = fmul fast float %3199, %3211
  %3213 = fadd fast float %3212, %2533
  br label %3262

; <label>:3214                                    ; preds = %3190
  %3215 = icmp eq i32 %3188, 4
  br i1 %3215, label %3216, label %3248

; <label>:3216                                    ; preds = %3214
  %3217 = fmul fast float %3193, %3019
  %3218 = fmul fast float %3193, %3020
  %3219 = fadd fast float %3217, %2524
  %3220 = fadd fast float %3218, %2525
  %3221 = call float @dx.op.binary.f32(i32 36, float %2534, float %3021)  ; FMin(a,b)
  %3222 = fsub fast float %3221, %2534
  %3223 = fmul fast float %3222, %3196
  %3224 = fadd fast float %3223, %2534
  %3225 = fadd fast float %3018, %2533
  %3226 = fmul fast float %3225, 0x3FF337FAE0000000
  %3227 = fmul fast float %2533, %2533
  %3228 = fmul fast float %3018, %3018
  %3229 = fadd fast float %3228, %3227
  %3230 = fmul fast float %3229, 0x3FE5152B00000000
  %3231 = fmul fast float %2533, 0xBFCC1F85E0000000
  %3232 = fmul fast float %3231, %3018
  %3233 = fadd fast float %3232, 0xBFE1363700000000
  %3234 = fadd fast float %3233, %3226
  %3235 = fsub fast float %3234, %3230
  %3236 = fmul fast float %3225, 0x3FBA6F0D00000000
  %3237 = fmul fast float %3229, 0x3FD0432880000000
  %3238 = fmul fast float %2533, 0xBFEF110800000000
  %3239 = fmul fast float %3238, %3018
  %3240 = fadd fast float %3239, 1.000000e+00
  %3241 = fsub fast float %3240, %3236
  %3242 = fadd fast float %3241, %3237
  %3243 = fdiv fast float %3235, %3242
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3245 = fsub fast float %3244, %2533
  %3246 = fmul fast float %3245, %3199
  %3247 = fadd fast float %3246, %2533
  br label %3262

; <label>:3248                                    ; preds = %3214
  %3249 = icmp eq i32 %3188, 8
  br i1 %3249, label %3250, label %3262

; <label>:3250                                    ; preds = %3248
  %3251 = fmul fast float %3193, %3019
  %3252 = fmul fast float %3193, %3020
  %3253 = fadd fast float %3251, %2524
  %3254 = fadd fast float %3252, %2525
  %3255 = call float @dx.op.binary.f32(i32 36, float %2534, float %3021)  ; FMin(a,b)
  %3256 = fsub fast float %3255, %2534
  %3257 = fmul fast float %3256, %3196
  %3258 = fadd fast float %3257, %2534
  %3259 = fsub fast float %3018, %2533
  %3260 = fmul fast float %3199, %3259
  %3261 = fadd fast float %3260, %2533
  br label %3262

; <label>:3262                                    ; preds = %3250, %3248, %3216, %3201, %3179, %2717, %2536, %2523
  %3263 = phi float [ %2524, %3179 ], [ %2524, %2717 ], [ %2524, %2523 ], [ %2524, %2536 ], [ %3206, %3201 ], [ %3219, %3216 ], [ %2524, %3248 ], [ %3253, %3250 ]
  %3264 = phi float [ %2525, %3179 ], [ %2525, %2717 ], [ %2525, %2523 ], [ %2525, %2536 ], [ %3207, %3201 ], [ %3220, %3216 ], [ %2525, %3248 ], [ %3254, %3250 ]
  %3265 = phi float [ %3180, %3179 ], [ %2526, %2717 ], [ %2526, %2523 ], [ %2526, %2536 ], [ %3180, %3201 ], [ %3180, %3216 ], [ %3180, %3248 ], [ %3180, %3250 ]
  %3266 = phi float [ %3181, %3179 ], [ %2527, %2717 ], [ %2527, %2523 ], [ %2527, %2536 ], [ %3181, %3201 ], [ %3181, %3216 ], [ %3181, %3248 ], [ %3181, %3250 ]
  %3267 = phi float [ %3182, %3179 ], [ %2528, %2717 ], [ %2528, %2523 ], [ %2528, %2536 ], [ %3182, %3201 ], [ %3182, %3216 ], [ %3182, %3248 ], [ %3182, %3250 ]
  %3268 = phi float [ %3183, %3179 ], [ %2529, %2717 ], [ %2529, %2523 ], [ %2529, %2536 ], [ %3183, %3201 ], [ %3183, %3216 ], [ %3183, %3248 ], [ %3183, %3250 ]
  %3269 = phi float [ %3184, %3179 ], [ %2530, %2717 ], [ %2530, %2523 ], [ %2530, %2536 ], [ %3184, %3201 ], [ %3184, %3216 ], [ %3184, %3248 ], [ %3184, %3250 ]
  %3270 = phi float [ %3185, %3179 ], [ %2531, %2717 ], [ %2531, %2523 ], [ %2531, %2536 ], [ %3185, %3201 ], [ %3185, %3216 ], [ %3185, %3248 ], [ %3185, %3250 ]
  %3271 = phi float [ %3186, %3179 ], [ %2532, %2717 ], [ %2532, %2523 ], [ %2532, %2536 ], [ %3186, %3201 ], [ %3186, %3216 ], [ %3186, %3248 ], [ %3186, %3250 ]
  %3272 = phi float [ %2533, %3179 ], [ %2533, %2717 ], [ %2533, %2523 ], [ %2533, %2536 ], [ %3213, %3201 ], [ %3247, %3216 ], [ %2533, %3248 ], [ %3261, %3250 ]
  %3273 = phi float [ %2534, %3179 ], [ %2534, %2717 ], [ %2534, %2523 ], [ %2534, %2536 ], [ %3210, %3201 ], [ %3224, %3216 ], [ %2534, %3248 ], [ %3258, %3250 ]
  %3274 = phi float [ %3187, %3179 ], [ %2535, %2717 ], [ %2535, %2523 ], [ %2535, %2536 ], [ %3187, %3201 ], [ %3187, %3216 ], [ %3187, %3248 ], [ %3187, %3250 ]
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = and i32 %199, 65535
  %3278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3277)  ; LegacyF16ToF32(value)
  %3279 = lshr i32 %199, 16
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = and i32 %200, 65535
  %3282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3281)  ; LegacyF16ToF32(value)
  %3283 = fmul fast float %3278, %3265
  %3284 = fmul fast float %3280, %3266
  %3285 = fmul fast float %3282, %3267
  %3286 = shl i32 %201, 4
  %3287 = and i32 %3286, 32752
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = lshr i32 %201, 7
  %3290 = and i32 %3289, 32752
  %3291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3290)  ; LegacyF16ToF32(value)
  %3292 = lshr i32 %201, 22
  %3293 = shl nuw nsw i32 %3292, 5
  %3294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3293)  ; LegacyF16ToF32(value)
  %3295 = and i32 %202, 65535
  %3296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3295)  ; LegacyF16ToF32(value)
  %3297 = fmul fast float %3288, %3268
  %3298 = fmul fast float %3297, %3296
  %3299 = fmul fast float %3291, %3269
  %3300 = fmul fast float %3299, %3296
  %3301 = fmul fast float %3294, %3270
  %3302 = fmul fast float %3301, %3296
  %3303 = call float @dx.op.dot2.f32(i32 54, float %3263, float %3264, float %3263, float %3264)  ; Dot2(ax,ay,bx,by)
  %3304 = fmul fast float %3303, 0x3FE3333340000000
  %3305 = fsub fast float 1.000000e+00, %3304
  %3306 = call float @dx.op.dot3.f32(i32 55, float %3263, float %3264, float %3305, float %3263, float %3264, float %3305)  ; Dot3(ax,ay,az,bx,by,bz)
  %3307 = call float @dx.op.unary.f32(i32 25, float %3306)  ; Rsqrt(value)
  %3308 = fmul fast float %3307, %3263
  %3309 = fmul fast float %3307, %3264
  %3310 = fmul fast float %3305, %3307
  %3311 = fmul fast float %3310, %113
  %3312 = fmul fast float %3310, %114
  %3313 = fmul fast float %3310, %115
  %3314 = fmul fast float %3308, %81
  %3315 = fmul fast float %3308, %82
  %3316 = fmul fast float %3308, %83
  %3317 = fadd fast float %3311, %3314
  %3318 = fadd fast float %3312, %3315
  %3319 = fadd fast float %3313, %3316
  %3320 = fmul fast float %125, %3309
  %3321 = fmul fast float %126, %3309
  %3322 = fmul fast float %127, %3309
  %3323 = fadd fast float %3317, %3320
  %3324 = fadd fast float %3318, %3321
  %3325 = fadd fast float %3319, %3322
  %3326 = call float @dx.op.dot3.f32(i32 55, float %3323, float %3324, float %3325, float %3323, float %3324, float %3325)  ; Dot3(ax,ay,az,bx,by,bz)
  %3327 = call float @dx.op.unary.f32(i32 25, float %3326)  ; Rsqrt(value)
  %3328 = fmul fast float %3323, %3327
  %3329 = fmul fast float %3324, %3327
  %3330 = fmul fast float %3325, %3327
  %3331 = icmp eq i32 %57, 65535
  br i1 %3331, label %3850, label %3332

; <label>:3332                                    ; preds = %3262
  %3333 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3334 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3335 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3336 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3337 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3338 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3339 = fadd fast float %3333, %58
  %3340 = fadd fast float %3334, %59
  %3341 = fadd fast float %3335, %60
  %3342 = fadd fast float %3336, %58
  %3343 = fadd fast float %3337, %59
  %3344 = fadd fast float %3338, %60
  %3345 = mul i32 %57, 48
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = add i32 %3345, 16
  %3351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3355 = add i32 %3345, 32
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = bitcast float %3360 to i32
  %3362 = fmul fast float %3347, %58
  %3363 = fmul fast float %3348, %59
  %3364 = fmul fast float %3349, %60
  %3365 = fsub fast float %3362, %3352
  %3366 = fsub fast float %3363, %3353
  %3367 = fsub fast float %3364, %3354
  %3368 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3369 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  %3370 = call float @dx.op.unary.f32(i32 7, float %3367)  ; Saturate(value)
  %3371 = fmul fast float %3368, %3357
  %3372 = fmul fast float %3369, %3358
  %3373 = fmul fast float %3370, %3359
  %3374 = fadd fast float %3357, -1.000000e+00
  %3375 = fadd fast float %3358, -1.000000e+00
  %3376 = fadd fast float %3359, -1.000000e+00
  %3377 = call float @dx.op.unary.f32(i32 27, float %3371)  ; Round_ni(value)
  %3378 = call float @dx.op.unary.f32(i32 27, float %3372)  ; Round_ni(value)
  %3379 = call float @dx.op.unary.f32(i32 27, float %3373)  ; Round_ni(value)
  %3380 = call float @dx.op.binary.f32(i32 36, float %3377, float %3374)  ; FMin(a,b)
  %3381 = call float @dx.op.binary.f32(i32 36, float %3378, float %3375)  ; FMin(a,b)
  %3382 = call float @dx.op.binary.f32(i32 36, float %3379, float %3376)  ; FMin(a,b)
  %3383 = fmul fast float %3382, %3358
  %3384 = fadd fast float %3383, %3381
  %3385 = fmul fast float %3384, %3357
  %3386 = fadd fast float %3385, %3380
  %3387 = fptosi float %3386 to i32
  %3388 = add nsw i32 %3387, %3361
  %3389 = shl nsw i32 %3388, 2
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = lshr i32 %3391, 16
  %3393 = icmp eq i32 %3392, 0
  br i1 %3393, label %3818, label %3394

; <label>:3394                                    ; preds = %3332
  br label %3395

; <label>:3395                                    ; preds = %3517, %3394
  %3396 = phi i32 [ %3419, %3517 ], [ %3392, %3394 ]
  %3397 = phi float [ %3518, %3517 ], [ 0.000000e+00, %3394 ]
  %3398 = phi float [ %3519, %3517 ], [ %1054, %3394 ]
  %3399 = phi float [ %3520, %3517 ], [ %3276, %3394 ]
  %3400 = phi float [ %3521, %3517 ], [ %3274, %3394 ]
  %3401 = phi float [ %3522, %3517 ], [ 0.000000e+00, %3394 ]
  %3402 = phi float [ %3523, %3517 ], [ 0.000000e+00, %3394 ]
  %3403 = phi float [ %3524, %3517 ], [ %3298, %3394 ]
  %3404 = phi float [ %3525, %3517 ], [ %3300, %3394 ]
  %3405 = phi float [ %3526, %3517 ], [ %3302, %3394 ]
  %3406 = phi float [ %3527, %3517 ], [ %3328, %3394 ]
  %3407 = phi float [ %3528, %3517 ], [ %3329, %3394 ]
  %3408 = phi float [ %3529, %3517 ], [ %3330, %3394 ]
  %3409 = phi float [ %3530, %3517 ], [ %3273, %3394 ]
  %3410 = phi float [ %3531, %3517 ], [ %3272, %3394 ]
  %3411 = phi float [ %3532, %3517 ], [ 0.000000e+00, %3394 ]
  %3412 = phi float [ %3533, %3517 ], [ %3271, %3394 ]
  %3413 = phi float [ %3534, %3517 ], [ %3283, %3394 ]
  %3414 = phi float [ %3535, %3517 ], [ %3284, %3394 ]
  %3415 = phi float [ %3536, %3517 ], [ %3285, %3394 ]
  %3416 = shl nuw nsw i32 %3396, 2
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = lshr i32 %3418, 16
  %3420 = shl i32 %3418, 8
  %3421 = and i32 %3420, 16776960
  %3422 = or i32 %3421, 48
  %3423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = or i32 %3421, 64
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = extractvalue %dx.types.ResRet.i32 %3428, 1
  %3431 = or i32 %3421, 80
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3435 = or i32 %3421, 96
  %3436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.ResRet.f32 %3436, 1
  %3439 = extractvalue %dx.types.ResRet.f32 %3436, 2
  %3440 = extractvalue %dx.types.ResRet.f32 %3436, 3
  %3441 = or i32 %3421, 112
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3444 = or i32 %3421, 128
  %3445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = extractvalue %dx.types.ResRet.f32 %3445, 3
  %3450 = or i32 %3421, 144
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3456 = or i32 %3421, 160
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3462 = or i32 %3421, 192
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = or i32 %3421, 208
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = or i32 %3421, 248
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3472, 3
  %3477 = call float @dx.op.dot4.f32(i32 56, float %3473, float %3474, float %3475, float %3476, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3478 = or i32 %3421, 16
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3484 = call float @dx.op.dot4.f32(i32 56, float %3480, float %3481, float %3482, float %3483, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3485 = or i32 %3421, 32
  %3486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = call float @dx.op.dot4.f32(i32 56, float %3487, float %3488, float %3489, float %3490, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3492 = call float @dx.op.unary.f32(i32 27, float %3477)  ; Round_ni(value)
  %3493 = call float @dx.op.unary.f32(i32 6, float %3492)  ; FAbs(value)
  %3494 = call float @dx.op.unary.f32(i32 27, float %3484)  ; Round_ni(value)
  %3495 = call float @dx.op.unary.f32(i32 6, float %3494)  ; FAbs(value)
  %3496 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3497 = call float @dx.op.unary.f32(i32 27, float %3496)  ; Round_ni(value)
  %3498 = fadd fast float %3495, %3493
  %3499 = fadd fast float %3498, %3497
  %3500 = fcmp fast oeq float %3499, 0.000000e+00
  %3501 = call float @dx.op.dot4.f32(i32 56, float %3473, float %3474, float %3475, float %3476, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3502 = call float @dx.op.dot4.f32(i32 56, float %3480, float %3481, float %3482, float %3483, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3503 = call float @dx.op.dot4.f32(i32 56, float %3473, float %3474, float %3475, float %3476, float %3342, float %3343, float %3344, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3504 = call float @dx.op.dot4.f32(i32 56, float %3480, float %3481, float %3482, float %3483, float %3342, float %3343, float %3344, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3505 = fsub fast float %3501, %3477
  %3506 = fsub fast float %3503, %3477
  %3507 = fsub fast float %3502, %3484
  %3508 = fsub fast float %3504, %3484
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3424, float %3425, float %3426, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 2
  %3512 = fadd fast float %3511, %3509
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3515 = fcmp fast ogt float %3513, %3514
  %3516 = and i1 %3500, %3515
  br i1 %3516, label %3538, label %3517

; <label>:3517                                    ; preds = %3804, %3621, %3538, %3395
  %3518 = phi float [ %3397, %3538 ], [ %3624, %3621 ], [ %3624, %3804 ], [ %3397, %3395 ]
  %3519 = phi float [ %3398, %3538 ], [ %3398, %3621 ], [ %3779, %3804 ], [ %3398, %3395 ]
  %3520 = phi float [ %3399, %3538 ], [ %3399, %3621 ], [ %3778, %3804 ], [ %3399, %3395 ]
  %3521 = phi float [ %3400, %3538 ], [ %3400, %3621 ], [ %3776, %3804 ], [ %3400, %3395 ]
  %3522 = phi float [ %3401, %3538 ], [ %3401, %3621 ], [ %3748, %3804 ], [ %3401, %3395 ]
  %3523 = phi float [ %3402, %3538 ], [ %3402, %3621 ], [ %3746, %3804 ], [ %3402, %3395 ]
  %3524 = phi float [ %3403, %3538 ], [ %3403, %3621 ], [ %3814, %3804 ], [ %3403, %3395 ]
  %3525 = phi float [ %3404, %3538 ], [ %3404, %3621 ], [ %3815, %3804 ], [ %3404, %3395 ]
  %3526 = phi float [ %3405, %3538 ], [ %3405, %3621 ], [ %3816, %3804 ], [ %3405, %3395 ]
  %3527 = phi float [ %3406, %3538 ], [ %3406, %3621 ], [ %3727, %3804 ], [ %3406, %3395 ]
  %3528 = phi float [ %3407, %3538 ], [ %3407, %3621 ], [ %3728, %3804 ], [ %3407, %3395 ]
  %3529 = phi float [ %3408, %3538 ], [ %3408, %3621 ], [ %3729, %3804 ], [ %3408, %3395 ]
  %3530 = phi float [ %3409, %3538 ], [ %3409, %3621 ], [ %3756, %3804 ], [ %3409, %3395 ]
  %3531 = phi float [ %3410, %3538 ], [ %3410, %3621 ], [ %3753, %3804 ], [ %3410, %3395 ]
  %3532 = phi float [ %3411, %3538 ], [ %3411, %3621 ], [ %3750, %3804 ], [ %3411, %3395 ]
  %3533 = phi float [ %3412, %3538 ], [ %3412, %3621 ], [ %3744, %3804 ], [ %3412, %3395 ]
  %3534 = phi float [ %3413, %3538 ], [ %3413, %3621 ], [ %3739, %3804 ], [ %3413, %3395 ]
  %3535 = phi float [ %3414, %3538 ], [ %3414, %3621 ], [ %3740, %3804 ], [ %3414, %3395 ]
  %3536 = phi float [ %3415, %3538 ], [ %3415, %3621 ], [ %3741, %3804 ], [ %3415, %3395 ]
  %3537 = icmp eq i32 %3419, 0
  br i1 %3537, label %3817, label %3395

; <label>:3538                                    ; preds = %3395
  %3539 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3540 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3541 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3545 = extractvalue %dx.types.ResRet.i32 %3428, 3
  %3546 = extractvalue %dx.types.ResRet.i32 %3428, 2
  %3547 = bitcast float %3539 to i32
  %3548 = add i32 %3545, 0
  %3549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3549, %dx.types.Handle %3550, float %3477, float %3484, float undef, float undef, i32 0, i32 0, i32 undef, float %3505, float %3507, float undef, float %3506, float %3508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = fmul fast float %3552, %3544
  %3554 = fadd fast float %3553, %3543
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3556 = fmul fast float %3477, %3437
  %3557 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3484, float %3556)  ; FMad(a,b,c)
  %3558 = fadd fast float %3557, %3542
  %3559 = fmul fast float %3477, %3439
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %3440, float %3484, float %3559)  ; FMad(a,b,c)
  %3561 = fadd fast float %3560, %3541
  %3562 = fmul fast float %3505, %3437
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3507, float %3562)  ; FMad(a,b,c)
  %3564 = fmul fast float %3505, %3439
  %3565 = call float @dx.op.tertiary.f32(i32 46, float %3440, float %3507, float %3564)  ; FMad(a,b,c)
  %3566 = fmul fast float %3506, %3437
  %3567 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3508, float %3566)  ; FMad(a,b,c)
  %3568 = fmul fast float %3506, %3439
  %3569 = call float @dx.op.tertiary.f32(i32 46, float %3440, float %3508, float %3568)  ; FMad(a,b,c)
  %3570 = add i32 %3546, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3570, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3571, %dx.types.Handle %3550, float %3558, float %3561, float undef, float undef, i32 0, i32 0, i32 undef, float %3563, float %3565, float undef, float %3567, float %3569, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = and i32 %3547, 1024
  %3575 = icmp ne i32 %3574, 0
  %3576 = fcmp fast ogt float %3573, 0x3FE0101020000000
  %3577 = uitofp i1 %3576 to float
  %3578 = select i1 %3575, float %3577, float %3573
  %3579 = and i32 %3547, 8192
  %3580 = icmp ne i32 %3579, 0
  %3581 = select i1 %3580, float %3540, float 1.000000e+00
  %3582 = fmul fast float %3477, 2.000000e+00
  %3583 = fadd fast float %3582, -1.000000e+00
  %3584 = call float @dx.op.unary.f32(i32 6, float %3583)  ; FAbs(value)
  %3585 = fmul fast float %3584, %3470
  %3586 = fsub fast float %3585, %3470
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  %3588 = fmul fast float %3484, 2.000000e+00
  %3589 = fadd fast float %3588, -1.000000e+00
  %3590 = call float @dx.op.unary.f32(i32 6, float %3589)  ; FAbs(value)
  %3591 = fmul fast float %3590, %3471
  %3592 = fsub fast float %3591, %3471
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fmul fast float %3496, %3433
  %3595 = fsub fast float %3594, %3433
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fmul fast float %3555, %3581
  %3598 = fmul fast float %3597, %3552
  %3599 = fmul fast float %3598, %3587
  %3600 = fmul fast float %3599, %3578
  %3601 = fmul fast float %3600, %3593
  %3602 = fmul fast float %3601, %3596
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 1
  %3605 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3606 = fsub fast float %3513, %3605
  %3607 = fmul fast float %3606, %3604
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = fmul fast float %3602, %3434
  %3610 = fadd fast float %3602, %3434
  %3611 = fmul fast float %3610, %3443
  %3612 = fsub fast float %3611, %3443
  %3613 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  %3614 = and i32 %3547, 128
  %3615 = icmp ne i32 %3614, 0
  %3616 = select i1 %3615, float %3613, float %3609
  %3617 = fmul fast float %3616, %3608
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = fcmp fast ugt float %3617, %3619
  br i1 %3620, label %3621, label %3517

; <label>:3621                                    ; preds = %3538
  %3622 = select i1 %3580, float %3617, float 0.000000e+00
  %3623 = fadd fast float %3622, %3397
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  br i1 %3580, label %3517, label %3625

; <label>:3625                                    ; preds = %3621
  %3626 = and i32 %3547, 4
  %3627 = and i32 %3547, 8
  %3628 = add i32 %3429, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3629, %dx.types.Handle %3630, float %3558, float %3561, float undef, float undef, i32 0, i32 0, i32 undef, float %3563, float %3565, float undef, float %3567, float %3569, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = extractvalue %dx.types.ResRet.f32 %3631, 2
  %3635 = extractvalue %dx.types.ResRet.f32 %3631, 3
  %3636 = bitcast float %3455 to i32
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = lshr i32 %3636, 8
  %3640 = and i32 %3639, 255
  %3641 = uitofp i32 %3640 to float
  %3642 = fmul fast float %3635, %3638
  %3643 = fadd fast float %3642, %3641
  %3644 = fmul fast float %3643, 0x3F70101000000000
  %3645 = add i32 %3430, 0
  %3646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3645, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3647 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3646, %dx.types.Handle %3630, float %3558, float %3561, float undef, float undef, i32 0, i32 0, i32 undef, float %3563, float %3565, float undef, float %3567, float %3569, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = bitcast float %3449 to i32
  %3653 = and i32 %3652, 255
  %3654 = uitofp i32 %3653 to float
  %3655 = lshr i32 %3652, 8
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = lshr i32 %3652, 16
  %3659 = and i32 %3658, 255
  %3660 = uitofp i32 %3659 to float
  %3661 = fmul fast float %3660, 0x3F70101000000000
  %3662 = fmul fast float %3648, %3654
  %3663 = fadd fast float %3662, %3657
  %3664 = fmul fast float %3663, 0x3F70101000000000
  %3665 = fadd fast float %3649, -5.000000e-01
  %3666 = fadd fast float %3651, -5.000000e-01
  %3667 = fmul fast float %3665, %3661
  %3668 = fmul fast float %3666, %3661
  %3669 = fadd fast float %3667, 5.000000e-01
  %3670 = fadd fast float %3668, 5.000000e-01
  %3671 = fmul fast float %3632, %3458
  %3672 = fmul fast float %3633, %3459
  %3673 = fmul fast float %3634, %3460
  %3674 = fmul fast float %3669, 2.000000e+00
  %3675 = fadd fast float %3674, -1.000000e+00
  %3676 = fmul fast float %3670, 2.000000e+00
  %3677 = fadd fast float %3676, -1.000000e+00
  %3678 = fadd fast float %3675, %3677
  %3679 = fmul fast float %3678, 5.000000e-01
  %3680 = fsub fast float %3675, %3677
  %3681 = fmul fast float %3680, 5.000000e-01
  %3682 = call float @dx.op.unary.f32(i32 6, float %3679)  ; FAbs(value)
  %3683 = fsub fast float 1.000000e+00, %3682
  %3684 = call float @dx.op.unary.f32(i32 6, float %3681)  ; FAbs(value)
  %3685 = fsub fast float %3683, %3684
  %3686 = call float @dx.op.dot3.f32(i32 55, float %3679, float %3681, float %3685, float %3679, float %3681, float %3685)  ; Dot3(ax,ay,az,bx,by,bz)
  %3687 = call float @dx.op.unary.f32(i32 25, float %3686)  ; Rsqrt(value)
  %3688 = fmul fast float %3679, %3687
  %3689 = fmul fast float %3681, %3687
  %3690 = fmul fast float %3687, %3685
  %3691 = fmul fast float %3690, %3424
  %3692 = fmul fast float %3690, %3425
  %3693 = fmul fast float %3690, %3426
  %3694 = fmul fast float %3688, %3446
  %3695 = fmul fast float %3688, %3447
  %3696 = fmul fast float %3688, %3448
  %3697 = fadd fast float %3694, %3691
  %3698 = fadd fast float %3695, %3692
  %3699 = fadd fast float %3696, %3693
  %3700 = fmul fast float %3689, %3452
  %3701 = fmul fast float %3689, %3453
  %3702 = fmul fast float %3689, %3454
  %3703 = fadd fast float %3697, %3700
  %3704 = fadd fast float %3698, %3701
  %3705 = fadd fast float %3699, %3702
  %3706 = call float @dx.op.dot3.f32(i32 55, float %3703, float %3704, float %3705, float %3703, float %3704, float %3705)  ; Dot3(ax,ay,az,bx,by,bz)
  %3707 = call float @dx.op.unary.f32(i32 25, float %3706)  ; Rsqrt(value)
  %3708 = fmul fast float %3703, %3707
  %3709 = fmul fast float %3704, %3707
  %3710 = fmul fast float %3705, %3707
  %3711 = icmp ne i32 %3627, 0
  %3712 = select i1 %3711, float 1.000000e+00, float 0.000000e+00
  %3713 = fmul fast float %3617, %3712
  %3714 = and i32 %3547, 1
  %3715 = icmp eq i32 %3714, 0
  br i1 %3715, label %3716, label %3720

; <label>:3716                                    ; preds = %3625
  %3717 = fsub fast float %3708, %3406
  %3718 = fsub fast float %3709, %3407
  %3719 = fsub fast float %3710, %3408
  br label %3720

; <label>:3720                                    ; preds = %3716, %3625
  %3721 = phi float [ %3717, %3716 ], [ %3708, %3625 ]
  %3722 = phi float [ %3718, %3716 ], [ %3709, %3625 ]
  %3723 = phi float [ %3719, %3716 ], [ %3710, %3625 ]
  %3724 = fmul float %3723, %3713
  %3725 = fmul float %3722, %3713
  %3726 = fmul float %3721, %3713
  %3727 = fadd fast float %3726, %3406
  %3728 = fadd fast float %3725, %3407
  %3729 = fadd fast float %3724, %3408
  %3730 = icmp ne i32 %3626, 0
  %3731 = select i1 %3730, float 1.000000e+00, float 0.000000e+00
  %3732 = fmul fast float %3617, %3731
  %3733 = fsub fast float %3671, %3413
  %3734 = fsub fast float %3672, %3414
  %3735 = fsub fast float %3673, %3415
  %3736 = fmul fast float %3733, %3732
  %3737 = fmul fast float %3734, %3732
  %3738 = fmul fast float %3735, %3732
  %3739 = fadd fast float %3736, %3413
  %3740 = fadd fast float %3737, %3414
  %3741 = fadd fast float %3738, %3415
  %3742 = fsub fast float %3644, %3412
  %3743 = fmul fast float %3742, %3732
  %3744 = fadd fast float %3743, %3412
  %3745 = fmul fast float %3732, %3402
  %3746 = fsub fast float %3402, %3745
  %3747 = fmul fast float %3732, %3401
  %3748 = fsub fast float %3401, %3747
  %3749 = fadd fast float %3617, %3411
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fsub fast float %3664, %3410
  %3752 = fmul fast float %3751, %3713
  %3753 = fadd fast float %3752, %3410
  %3754 = fsub fast float %3650, %3409
  %3755 = fmul fast float %3754, %3713
  %3756 = fadd fast float %3755, %3409
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = fmul fast float %3760, %3757
  %3762 = fadd fast float %3761, %3759
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = bitcast float %3461 to i32
  %3765 = and i32 %3764, 65535
  %3766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3765)  ; LegacyF16ToF32(value)
  %3767 = lshr i32 %3764, 16
  %3768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3767)  ; LegacyF16ToF32(value)
  %3769 = fcmp fast oge float %3766, 0.000000e+00
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 0
  %3772 = select i1 %3769, float %3766, float %3771
  %3773 = fadd fast float %3772, %3768
  %3774 = fsub fast float %3763, %3400
  %3775 = fmul fast float %3774, %3617
  %3776 = fadd fast float %3775, %3400
  %3777 = fmul fast float %3773, %3617
  %3778 = call float @dx.op.binary.f32(i32 35, float %3399, float %3777)  ; FMax(a,b)
  %3779 = call float @dx.op.binary.f32(i32 35, float %3398, float %3617)  ; FMax(a,b)
  %3780 = and i32 %3547, 16
  %3781 = icmp eq i32 %3780, 0
  br i1 %3781, label %3804, label %3782

; <label>:3782                                    ; preds = %3720
  %3783 = bitcast float %3467 to i32
  %3784 = add i32 %3464, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3785, %dx.types.Handle %3630, float %3558, float %3561, float undef, float undef, i32 0, i32 0, i32 undef, float %3563, float %3565, float undef, float %3567, float %3569, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = and i32 %3783, 65535
  %3791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3790)  ; LegacyF16ToF32(value)
  %3792 = fmul fast float %3787, %3458
  %3793 = fmul fast float %3788, %3459
  %3794 = fmul fast float %3789, %3460
  %3795 = and i32 %3547, 16384
  %3796 = icmp ne i32 %3795, 0
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = select i1 %3796, float %3798, float 1.000000e+00
  %3800 = fmul fast float %3799, %3791
  %3801 = fmul fast float %3792, %3800
  %3802 = fmul fast float %3793, %3800
  %3803 = fmul fast float %3794, %3800
  br label %3804

; <label>:3804                                    ; preds = %3782, %3720
  %3805 = phi float [ %3801, %3782 ], [ 0.000000e+00, %3720 ]
  %3806 = phi float [ %3802, %3782 ], [ 0.000000e+00, %3720 ]
  %3807 = phi float [ %3803, %3782 ], [ 0.000000e+00, %3720 ]
  %3808 = fsub fast float %3805, %3403
  %3809 = fsub fast float %3806, %3404
  %3810 = fsub fast float %3807, %3405
  %3811 = fmul fast float %3808, %3617
  %3812 = fmul fast float %3809, %3617
  %3813 = fmul fast float %3810, %3617
  %3814 = fadd fast float %3811, %3403
  %3815 = fadd fast float %3812, %3404
  %3816 = fadd fast float %3813, %3405
  br label %3517

; <label>:3817                                    ; preds = %3517
  br label %3818

; <label>:3818                                    ; preds = %3817, %3332
  %3819 = phi float [ 0.000000e+00, %3332 ], [ %3518, %3817 ]
  %3820 = phi float [ %1054, %3332 ], [ %3519, %3817 ]
  %3821 = phi float [ %3276, %3332 ], [ %3520, %3817 ]
  %3822 = phi float [ %3274, %3332 ], [ %3521, %3817 ]
  %3823 = phi float [ 0.000000e+00, %3332 ], [ %3522, %3817 ]
  %3824 = phi float [ 0.000000e+00, %3332 ], [ %3523, %3817 ]
  %3825 = phi float [ %3298, %3332 ], [ %3524, %3817 ]
  %3826 = phi float [ %3300, %3332 ], [ %3525, %3817 ]
  %3827 = phi float [ %3302, %3332 ], [ %3526, %3817 ]
  %3828 = phi float [ %3328, %3332 ], [ %3527, %3817 ]
  %3829 = phi float [ %3329, %3332 ], [ %3528, %3817 ]
  %3830 = phi float [ %3330, %3332 ], [ %3529, %3817 ]
  %3831 = phi float [ %3273, %3332 ], [ %3530, %3817 ]
  %3832 = phi float [ %3272, %3332 ], [ %3531, %3817 ]
  %3833 = phi float [ 0.000000e+00, %3332 ], [ %3532, %3817 ]
  %3834 = phi float [ %3271, %3332 ], [ %3533, %3817 ]
  %3835 = phi float [ %3283, %3332 ], [ %3534, %3817 ]
  %3836 = phi float [ %3284, %3332 ], [ %3535, %3817 ]
  %3837 = phi float [ %3285, %3332 ], [ %3536, %3817 ]
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3828, float %3829, float %3830, float %3828, float %3829, float %3830)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = call float @dx.op.unary.f32(i32 25, float %3838)  ; Rsqrt(value)
  %3840 = fmul fast float %3839, %3828
  %3841 = fmul fast float %3839, %3829
  %3842 = fmul fast float %3839, %3830
  %3843 = fadd fast float %3833, %1054
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3841, float %3842, float %3840, float %3841, float %3842)  ; Dot3(ax,ay,az,bx,by,bz)
  %3846 = call float @dx.op.unary.f32(i32 25, float %3845)  ; Rsqrt(value)
  %3847 = fmul fast float %3846, %3840
  %3848 = fmul fast float %3846, %3841
  %3849 = fmul fast float %3846, %3842
  br label %3850

; <label>:3850                                    ; preds = %3818, %3262
  %3851 = phi float [ %3847, %3818 ], [ %3328, %3262 ]
  %3852 = phi float [ %3848, %3818 ], [ %3329, %3262 ]
  %3853 = phi float [ %3849, %3818 ], [ %3330, %3262 ]
  %3854 = phi float [ %3835, %3818 ], [ %3283, %3262 ]
  %3855 = phi float [ %3836, %3818 ], [ %3284, %3262 ]
  %3856 = phi float [ %3837, %3818 ], [ %3285, %3262 ]
  %3857 = phi float [ %3825, %3818 ], [ %3298, %3262 ]
  %3858 = phi float [ %3826, %3818 ], [ %3300, %3262 ]
  %3859 = phi float [ %3827, %3818 ], [ %3302, %3262 ]
  %3860 = phi float [ %3834, %3818 ], [ %3271, %3262 ]
  %3861 = phi float [ %3844, %3818 ], [ %1054, %3262 ]
  %3862 = phi float [ %3832, %3818 ], [ %3272, %3262 ]
  %3863 = phi float [ %3831, %3818 ], [ %3273, %3262 ]
  %3864 = phi float [ %3824, %3818 ], [ 0.000000e+00, %3262 ]
  %3865 = phi float [ %3823, %3818 ], [ 0.000000e+00, %3262 ]
  %3866 = phi float [ %3819, %3818 ], [ 0.000000e+00, %3262 ]
  %3867 = phi float [ %3821, %3818 ], [ %3276, %3262 ]
  %3868 = phi float [ %3820, %3818 ], [ %1054, %3262 ]
  %3869 = phi float [ %3822, %3818 ], [ %3274, %3262 ]
  %3870 = fadd fast float %3860, 0xBFB99999A0000000
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3871, 0x3FF1C71C80000000
  %3873 = call float @dx.op.binary.f32(i32 36, float %3860, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3874 = fsub fast float 1.000000e+00, %3872
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3875, %3854
  %3877 = fmul fast float %3875, %3855
  %3878 = fmul fast float %3875, %3856
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3881 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3882 = fmul fast float %3872, %3854
  %3883 = fmul fast float %3872, %3855
  %3884 = fmul fast float %3872, %3856
  %3885 = fadd fast float %3882, %3873
  %3886 = fadd fast float %3883, %3873
  %3887 = fadd fast float %3884, %3873
  %3888 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3889 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3890 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3891 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.i32 %3892, 3
  %3894 = and i32 %3893, 8
  %3895 = icmp ne i32 %3894, 0
  %3896 = call float @dx.op.binary.f32(i32 35, float %3879, float %3854)  ; FMax(a,b)
  %3897 = call float @dx.op.binary.f32(i32 35, float %3880, float %3854)  ; FMax(a,b)
  %3898 = call float @dx.op.binary.f32(i32 35, float %3881, float %3854)  ; FMax(a,b)
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = select i1 %259, float %3854, float %3879
  %3901 = select i1 %259, float %3899, float %3880
  %3902 = select i1 %259, float 1.000000e+00, float %3881
  %3903 = select i1 %3895, float %3896, float %3900
  %3904 = select i1 %3895, float %3897, float %3901
  %3905 = select i1 %3895, float %3898, float %3902
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3910 = fadd fast float %3907, %193
  %3911 = fadd fast float %3908, %194
  %3912 = fadd fast float %3909, %195
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.CBufRet.f32 %3913, 1
  %3916 = fsub fast float %3910, %3914
  %3917 = fsub fast float %3911, %3915
  %3918 = fmul fast float %3916, %3916
  %3919 = fmul fast float %3917, %3917
  %3920 = fadd fast float %3918, %3919
  %3921 = call float @dx.op.unary.f32(i32 24, float %3920)  ; Sqrt(value)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3913, 2
  %3923 = fcmp fast olt float %3921, %3922
  br i1 %3923, label %3924, label %3991

; <label>:3924                                    ; preds = %3850
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3932 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3925, 3
  %3935 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3936 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3937 = fadd fast float %3934, %3910
  %3938 = fadd fast float %3935, %3911
  %3939 = fadd fast float %3936, %3912
  %3940 = fmul fast float %3937, %3926
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %3928, float %3940)  ; FMad(a,b,c)
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3930, float %3941)  ; FMad(a,b,c)
  %3943 = fmul fast float %3937, %3931
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %3932, float %3943)  ; FMad(a,b,c)
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3933, float %3944)  ; FMad(a,b,c)
  %3946 = fsub fast float %3942, %3934
  %3947 = fsub fast float %3945, %3935
  %3948 = fsub fast float %3946, %3914
  %3949 = fadd fast float %3948, %3922
  %3950 = fsub fast float %3947, %3915
  %3951 = fadd fast float %3950, %3922
  %3952 = extractvalue %dx.types.CBufRet.f32 %3913, 3
  %3953 = fmul fast float %3949, %3952
  %3954 = fmul fast float %3951, %3952
  %3955 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3956 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3957 = fsub fast float 1.000000e+00, %3955
  %3958 = fsub fast float 1.000000e+00, %3956
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %3957, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = fcmp fast ugt float %3960, 0.000000e+00
  br i1 %3961, label %3962, label %4265

; <label>:3962                                    ; preds = %3924
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3965 = fmul fast float %3964, %3960
  %3966 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3967 = fadd fast float %3966, %3965
  %3968 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3969 = fadd fast float %3967, %3936
  %3970 = fmul fast float %3942, %3930
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %3933, float %3970)  ; FMad(a,b,c)
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3968, float %3971)  ; FMad(a,b,c)
  %3973 = fsub fast float %3972, %3936
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3976 = fsub fast float %3973, %3975
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %3957, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %3957, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = fadd fast float %3982, %3978
  %3986 = fmul fast float %3985, 0x3F847AE140000000
  %3987 = fadd fast float %3983, %3979
  %3988 = fmul fast float %3987, 0x3F847AE140000000
  %3989 = fadd fast float %3984, %3980
  %3990 = fmul fast float %3989, 0x3F847AE140000000
  br label %4265

; <label>:3991                                    ; preds = %3850
  %3992 = and i32 %238, 1
  %3993 = icmp eq i32 %3992, 0
  br i1 %3993, label %4265, label %3994

; <label>:3994                                    ; preds = %3991
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %4002 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %3999, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %4005 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %4006 = extractvalue %dx.types.CBufRet.f32 %3999, 3
  %4007 = fadd fast float %4004, %3910
  %4008 = fadd fast float %4005, %3911
  %4009 = fadd fast float %4006, %3912
  %4010 = fmul fast float %4007, %3996
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %4008, float %3998, float %4010)  ; FMad(a,b,c)
  %4012 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %4000, float %4011)  ; FMad(a,b,c)
  %4013 = fmul fast float %4007, %4001
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %4008, float %4002, float %4013)  ; FMad(a,b,c)
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %4003, float %4014)  ; FMad(a,b,c)
  %4016 = fsub fast float %4012, %4004
  %4017 = fsub fast float %4015, %4005
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.i32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.i32 %4025, 1
  %4028 = udiv i32 %4027, %4026
  %4029 = fsub fast float %4016, %4019
  %4030 = fsub fast float %4017, %4020
  %4031 = call float @dx.op.binary.f32(i32 35, float %4029, float 0.000000e+00)  ; FMax(a,b)
  %4032 = call float @dx.op.binary.f32(i32 35, float %4030, float 0.000000e+00)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 36, float %4031, float %4021)  ; FMin(a,b)
  %4034 = call float @dx.op.binary.f32(i32 36, float %4032, float %4022)  ; FMin(a,b)
  %4035 = add i32 %4026, -1
  %4036 = add i32 %4028, -1
  %4037 = fmul fast float %4033, %4024
  %4038 = fmul fast float %4034, %4024
  %4039 = fptoui float %4037 to i32
  %4040 = fptoui float %4038 to i32
  %4041 = call i32 @dx.op.binary.i32(i32 40, i32 %4039, i32 %4035)  ; UMin(a,b)
  %4042 = call i32 @dx.op.binary.i32(i32 40, i32 %4040, i32 %4036)  ; UMin(a,b)
  %4043 = mul i32 %4042, %4026
  %4044 = add i32 %4043, %4041
  %4045 = shl i32 %4044, 2
  %4046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.i32 %4046, 0
  %4048 = icmp eq i32 %4047, -1
  br i1 %4048, label %4265, label %4049

; <label>:4049                                    ; preds = %3994
  %4050 = mul i32 %4047, 148
  %4051 = add i32 %4050, 4
  %4052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = add i32 %4050, 8
  %4055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4054, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = add i32 %4050, 36
  %4058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = add i32 %4050, 60
  %4061 = add i32 %4050, 92
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = add i32 %4050, 116
  %4065 = fsub fast float %4016, %4053
  %4066 = fsub fast float %4017, %4056
  %4067 = fmul fast float %4024, %4065
  %4068 = fmul fast float %4024, %4066
  %4069 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4070 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4074 = call float @dx.op.unary.f32(i32 83, float %4069)  ; DerivCoarseX(value)
  %4075 = call float @dx.op.unary.f32(i32 83, float %4071)  ; DerivCoarseX(value)
  %4076 = call float @dx.op.unary.f32(i32 84, float %4069)  ; DerivCoarseY(value)
  %4077 = call float @dx.op.unary.f32(i32 84, float %4071)  ; DerivCoarseY(value)
  %4078 = fmul fast float %4074, %4073
  %4079 = fmul fast float %4075, %4073
  %4080 = fmul fast float %4076, %4073
  %4081 = fmul fast float %4077, %4073
  %4082 = call float @dx.op.dot2.f32(i32 54, float %4080, float %4081, float %4080, float %4081)  ; Dot2(ax,ay,bx,by)
  %4083 = call float @dx.op.dot2.f32(i32 54, float %4078, float %4079, float %4078, float %4079)  ; Dot2(ax,ay,bx,by)
  %4084 = call float @dx.op.binary.f32(i32 35, float %4083, float %4082)  ; FMax(a,b)
  %4085 = call float @dx.op.unary.f32(i32 23, float %4084)  ; Log(value)
  %4086 = fmul fast float %4085, 5.000000e-01
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4089 = fadd fast float %4088, %4086
  %4090 = call float @dx.op.binary.f32(i32 35, float %4089, float 0.000000e+00)  ; FMax(a,b)
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4093 = fadd fast float %4092, %4090
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4096 = fadd fast float %4093, %4095
  %4097 = add i32 %4063, 0
  %4098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4099 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4098, i32 0)  ; GetDimensions(handle,mipLevel)
  %4100 = extractvalue %dx.types.Dimensions %4099, 0
  %4101 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4100)  ; FirstbitLo(value)
  %4102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.i32 %4102, 1
  %4104 = sub nsw i32 %4103, %4101
  %4105 = sitofp i32 %4104 to float
  %4106 = fsub fast float %4096, %4105
  %4107 = call float @dx.op.binary.f32(i32 35, float %4106, float 0.000000e+00)  ; FMax(a,b)
  %4108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4098, %dx.types.Handle %47, float %4069, float %4071, float %4059, float undef, i32 0, i32 0, i32 undef, float %4107)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4109 = extractvalue %dx.types.ResRet.f32 %4108, 0
  %4110 = fcmp ule float %4109, 0x3FE0101020000000
  %4111 = extractvalue %dx.types.CBufRet.i32 %4102, 0
  %4112 = and i32 %4111, 128
  %4113 = icmp ne i32 %4112, 0
  %4114 = and i1 %4110, %4113
  br i1 %4114, label %4265, label %4115

; <label>:4115                                    ; preds = %4049
  %4116 = add i32 %4050, 20
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = add i32 %4050, 24
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = add i32 %4050, 40
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = add i32 %4050, 96
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = fmul fast float %4129, %4069
  %4131 = fmul fast float %4129, %4071
  %4132 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4133 = fadd fast float %4130, %4132
  %4134 = fadd fast float %4131, %4132
  %4135 = add i32 %4127, 0
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4136, i32 0)  ; GetDimensions(handle,mipLevel)
  %4138 = extractvalue %dx.types.Dimensions %4137, 0
  %4139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4138)  ; FirstbitLo(value)
  %4140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.i32 %4140, 1
  %4142 = sub nsw i32 %4141, %4139
  %4143 = sitofp i32 %4142 to float
  %4144 = fsub fast float %4093, %4143
  %4145 = call float @dx.op.binary.f32(i32 35, float %4144, float 0.000000e+00)  ; FMax(a,b)
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4136, %dx.types.Handle %47, float %4133, float %4134, float %4124, float undef, i32 0, i32 0, i32 undef, float %4145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = fmul fast float %4147, %4118
  %4149 = fadd fast float %4148, %4121
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4158 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4159 = fadd fast float %4155, %4016
  %4160 = fadd fast float %4157, %4017
  %4161 = fadd fast float %4149, %4158
  %4162 = fmul fast float %4159, %4151
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4152, float %4162)  ; FMad(a,b,c)
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4153, float %4163)  ; FMad(a,b,c)
  %4165 = fsub fast float %4164, %4158
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fsub fast float %4165, %4167
  %4169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.i32 %4169, 0
  %4171 = call i32 @dx.op.binary.i32(i32 40, i32 %4047, i32 %4170)  ; UMin(a,b)
  %4172 = mul i32 %4171, 36
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = add i32 %4172, 4
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = fmul fast float %4177, %4069
  %4179 = fmul fast float %4177, %4071
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4181 = fadd fast float %4178, %4180
  %4182 = fadd fast float %4179, %4180
  %4183 = icmp eq i32 %4174, 0
  br i1 %4183, label %4252, label %4184

; <label>:4184                                    ; preds = %4115
  br label %4185

; <label>:4185                                    ; preds = %4242, %4184
  %4186 = phi float [ %4243, %4242 ], [ 0.000000e+00, %4184 ]
  %4187 = phi float [ %4244, %4242 ], [ 0.000000e+00, %4184 ]
  %4188 = phi float [ %4245, %4242 ], [ 0.000000e+00, %4184 ]
  %4189 = phi float [ %4246, %4242 ], [ 0.000000e+00, %4184 ]
  %4190 = phi float [ %4247, %4242 ], [ 0.000000e+00, %4184 ]
  %4191 = phi float [ %4248, %4242 ], [ 0.000000e+00, %4184 ]
  %4192 = phi i32 [ %4249, %4242 ], [ 0, %4184 ]
  %4193 = shl i32 %4192, 2
  %4194 = add i32 %4060, %4193
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = add i32 %4064, %4193
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = add i32 %4199, 0
  %4201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4200, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4202 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4201, i32 0)  ; GetDimensions(handle,mipLevel)
  %4203 = extractvalue %dx.types.Dimensions %4202, 0
  %4204 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4203)  ; FirstbitLo(value)
  %4205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.i32 %4205, 1
  %4207 = sub nsw i32 %4206, %4204
  %4208 = sitofp i32 %4207 to float
  %4209 = fsub fast float %4093, %4208
  %4210 = call float @dx.op.binary.f32(i32 35, float %4209, float 0.000000e+00)  ; FMax(a,b)
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4201, %dx.types.Handle %47, float %4181, float %4182, float %4196, float undef, i32 0, i32 0, i32 undef, float %4210)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = fcmp fast ogt float %4212, 0.000000e+00
  br i1 %4213, label %4214, label %4242

; <label>:4214                                    ; preds = %4185
  %4215 = add i32 %4175, %4193
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = and i32 %4217, 32767
  %4219 = mul nuw nsw i32 %4218, 928
  %4220 = add nuw nsw i32 %4219, 48
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = add nuw nsw i32 %4219, 60
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = fmul fast float %4222, %4212
  %4231 = fmul fast float %4223, %4212
  %4232 = fmul fast float %4224, %4212
  %4233 = fadd fast float %4230, %4186
  %4234 = fadd fast float %4231, %4187
  %4235 = fadd fast float %4232, %4188
  %4236 = fmul fast float %4227, %4212
  %4237 = fmul fast float %4228, %4212
  %4238 = fmul fast float %4229, %4212
  %4239 = fadd fast float %4236, %4189
  %4240 = fadd fast float %4237, %4190
  %4241 = fadd fast float %4238, %4191
  br label %4242

; <label>:4242                                    ; preds = %4214, %4185
  %4243 = phi float [ %4233, %4214 ], [ %4186, %4185 ]
  %4244 = phi float [ %4234, %4214 ], [ %4187, %4185 ]
  %4245 = phi float [ %4235, %4214 ], [ %4188, %4185 ]
  %4246 = phi float [ %4239, %4214 ], [ %4189, %4185 ]
  %4247 = phi float [ %4240, %4214 ], [ %4190, %4185 ]
  %4248 = phi float [ %4241, %4214 ], [ %4191, %4185 ]
  %4249 = add nuw i32 %4192, 1
  %4250 = icmp eq i32 %4249, %4174
  br i1 %4250, label %4251, label %4185

; <label>:4251                                    ; preds = %4242
  br label %4252

; <label>:4252                                    ; preds = %4251, %4115
  %4253 = phi float [ 0.000000e+00, %4115 ], [ %4243, %4251 ]
  %4254 = phi float [ 0.000000e+00, %4115 ], [ %4244, %4251 ]
  %4255 = phi float [ 0.000000e+00, %4115 ], [ %4245, %4251 ]
  %4256 = phi float [ 0.000000e+00, %4115 ], [ %4246, %4251 ]
  %4257 = phi float [ 0.000000e+00, %4115 ], [ %4247, %4251 ]
  %4258 = phi float [ 0.000000e+00, %4115 ], [ %4248, %4251 ]
  %4259 = fadd fast float %4256, %4253
  %4260 = fmul fast float %4259, 0x3F847AE140000000
  %4261 = fadd fast float %4257, %4254
  %4262 = fmul fast float %4261, 0x3F847AE140000000
  %4263 = fadd fast float %4258, %4255
  %4264 = fmul fast float %4263, 0x3F847AE140000000
  br label %4265

; <label>:4265                                    ; preds = %4252, %4049, %3994, %3991, %3962, %3924
  %4266 = phi float [ %3976, %3962 ], [ -1.310720e+05, %3924 ], [ %4168, %4252 ], [ -1.310720e+05, %3994 ], [ -1.310720e+05, %4049 ], [ -1.310720e+05, %3991 ]
  %4267 = phi float [ %3986, %3962 ], [ 0.000000e+00, %3924 ], [ %4260, %4252 ], [ 0.000000e+00, %3994 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %3991 ]
  %4268 = phi float [ %3988, %3962 ], [ 0.000000e+00, %3924 ], [ %4262, %4252 ], [ 0.000000e+00, %3994 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %3991 ]
  %4269 = phi float [ %3990, %3962 ], [ 0.000000e+00, %3924 ], [ %4264, %4252 ], [ 0.000000e+00, %3994 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %3991 ]
  %4270 = phi i1 [ true, %3962 ], [ false, %3924 ], [ true, %4252 ], [ false, %3994 ], [ false, %4049 ], [ false, %3991 ]
  %4271 = and i32 %238, 3
  %4272 = icmp eq i32 %4271, 1
  %4273 = select i1 %4272, float 1.000000e+00, float 0.000000e+00
  %4274 = fsub fast float %4266, %195
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = select i1 %4270, float %4275, float 1.000000e+00
  %4277 = fmul fast float %4276, %4273
  %4278 = icmp eq i32 %4271, 3
  %4279 = select i1 %4278, float 1.000000e+00, float %4277
  %4280 = call float @dx.op.binary.f32(i32 35, float %3866, float %4279)  ; FMax(a,b)
  %4281 = fcmp fast olt float %4279, 1.000000e+00
  %4282 = fcmp uge float %71, 0.000000e+00
  %4283 = and i1 %4282, %4281
  br i1 %4283, label %4284, label %4294

; <label>:4284                                    ; preds = %4265
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = fadd fast float %4286, %4280
  %4290 = fcmp ule float %70, 0.000000e+00
  %4291 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4292 = select i1 %4290, float %4291, float 1.000000e+00
  %4293 = fmul fast float %4292, %4288
  br label %4294

; <label>:4294                                    ; preds = %4284, %4265
  %4295 = phi float [ %4289, %4284 ], [ %4280, %4265 ]
  %4296 = phi float [ %4287, %4284 ], [ 0.000000e+00, %4265 ]
  %4297 = phi float [ %4293, %4284 ], [ 0.000000e+00, %4265 ]
  %4298 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4299 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4301 = fcmp fast une float %4299, 0.000000e+00
  %4302 = fcmp fast une float %4300, 0.000000e+00
  %4303 = or i1 %4301, %4302
  br i1 %4303, label %4304, label %4863

; <label>:4304                                    ; preds = %4294
  br i1 %4301, label %4305, label %4578

; <label>:4305                                    ; preds = %4304
  %4306 = call float @dx.op.unary.f32(i32 23, float %3863)  ; Log(value)
  %4307 = fmul fast float %4306, 4.000000e+00
  %4308 = call float @dx.op.unary.f32(i32 21, float %4307)  ; Exp(value)
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = fmul fast float %4310, %58
  %4312 = fmul fast float %4310, %59
  %4313 = fmul fast float %4310, %60
  %4314 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4315 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4316 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4317 = call float @dx.op.unary.f32(i32 23, float %4314)  ; Log(value)
  %4318 = call float @dx.op.unary.f32(i32 23, float %4315)  ; Log(value)
  %4319 = call float @dx.op.unary.f32(i32 23, float %4316)  ; Log(value)
  %4320 = fmul fast float %4317, 4.000000e+00
  %4321 = fmul fast float %4318, 4.000000e+00
  %4322 = fmul fast float %4319, 4.000000e+00
  %4323 = call float @dx.op.unary.f32(i32 21, float %4320)  ; Exp(value)
  %4324 = call float @dx.op.unary.f32(i32 21, float %4321)  ; Exp(value)
  %4325 = call float @dx.op.unary.f32(i32 21, float %4322)  ; Exp(value)
  %4326 = fadd fast float %4324, %4323
  %4327 = fadd fast float %4326, %4325
  %4328 = fdiv fast float 1.000000e+00, %4327
  %4329 = fmul fast float %4328, %4323
  %4330 = fcmp fast ogt float %67, 0.000000e+00
  %4331 = fcmp fast ogt float %68, 0.000000e+00
  %4332 = fcmp fast ogt float %69, 0.000000e+00
  %4333 = fcmp fast olt float %67, 0.000000e+00
  %4334 = fcmp fast olt float %68, 0.000000e+00
  %4335 = fcmp fast olt float %69, 0.000000e+00
  %4336 = zext i1 %4330 to i32
  %4337 = zext i1 %4331 to i32
  %4338 = zext i1 %4332 to i32
  %4339 = zext i1 %4333 to i32
  %4340 = zext i1 %4334 to i32
  %4341 = zext i1 %4335 to i32
  %4342 = sub nsw i32 %4336, %4339
  %4343 = sub nsw i32 %4337, %4340
  %4344 = sub nsw i32 %4338, %4341
  %4345 = call float @dx.op.unary.f32(i32 83, float %4311)  ; DerivCoarseX(value)
  %4346 = call float @dx.op.unary.f32(i32 83, float %4312)  ; DerivCoarseX(value)
  %4347 = call float @dx.op.unary.f32(i32 83, float %4313)  ; DerivCoarseX(value)
  %4348 = call float @dx.op.unary.f32(i32 84, float %4311)  ; DerivCoarseY(value)
  %4349 = call float @dx.op.unary.f32(i32 84, float %4312)  ; DerivCoarseY(value)
  %4350 = call float @dx.op.unary.f32(i32 84, float %4313)  ; DerivCoarseY(value)
  %4351 = fcmp fast ole float %270, %4329
  %4352 = fmul fast float %4328, %4326
  %4353 = fcmp fast ole float %270, %4352
  %4354 = select i1 %4353, float %4313, float %4311
  %4355 = select i1 %4353, float %4311, float %4312
  %4356 = select i1 %4351, float %4312, float %4354
  %4357 = select i1 %4351, float %4313, float %4355
  %4358 = select i1 %4353, float %4347, float %4345
  %4359 = select i1 %4353, float %4345, float %4346
  %4360 = select i1 %4351, float %4346, float %4358
  %4361 = select i1 %4351, float %4347, float %4359
  %4362 = select i1 %4353, float %4350, float %4348
  %4363 = select i1 %4353, float %4348, float %4349
  %4364 = select i1 %4351, float %4349, float %4362
  %4365 = select i1 %4351, float %4350, float %4363
  %4366 = call float @dx.op.unary.f32(i32 27, float %4356)  ; Round_ni(value)
  %4367 = call float @dx.op.unary.f32(i32 27, float %4357)  ; Round_ni(value)
  %4368 = fptosi float %4366 to i32
  %4369 = fptosi float %4367 to i32
  %4370 = xor i32 %4369, %4368
  %4371 = sitofp i32 %4370 to float
  %4372 = fptosi float %4371 to i32
  %4373 = sitofp i32 %4372 to float
  %4374 = fmul fast float %4373, 0x3FE3C6EF40000000
  %4375 = frem fast float %4366, 2.560000e+02
  %4376 = frem fast float %4367, 2.560000e+02
  %4377 = fptoui float %4375 to i32
  %4378 = fptoui float %4376 to i32
  %4379 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4377, i32 %4378, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.ResRet.f32 %4379, 2
  %4383 = fadd fast float %4380, %4374
  %4384 = fadd fast float %4381, %4374
  %4385 = fadd fast float %4382, %4374
  %4386 = call float @dx.op.unary.f32(i32 22, float %4383)  ; Frc(value)
  %4387 = call float @dx.op.unary.f32(i32 22, float %4384)  ; Frc(value)
  %4388 = call float @dx.op.unary.f32(i32 22, float %4385)  ; Frc(value)
  %4389 = fmul fast float %4388, 0x401921FB60000000
  %4390 = call float @dx.op.unary.f32(i32 13, float %4389)  ; Sin(value)
  %4391 = call float @dx.op.unary.f32(i32 12, float %4389)  ; Cos(value)
  %4392 = fsub fast float -0.000000e+00, %4391
  %4393 = fmul fast float %4391, %4356
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4357, float %4393)  ; FMad(a,b,c)
  %4395 = fmul fast float %4390, %4356
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4357, float %4395)  ; FMad(a,b,c)
  %4397 = fadd fast float %4394, %4386
  %4398 = fadd fast float %4396, %4387
  %4399 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4400 = bitcast float %4399 to i32
  %4401 = icmp eq i32 %4400, 0
  br i1 %4401, label %4440, label %4402

; <label>:4402                                    ; preds = %4305
  %4403 = add i32 %4400, 0
  %4404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4404, %dx.types.Handle %103, float %4397, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float %4360, float %4361, float undef, float %4364, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4409 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4410 = fsub fast float 1.000000e+00, %4299
  %4411 = call float @dx.op.binary.f32(i32 35, float %4410, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4412 = bitcast float %4299 to i32
  %4413 = sitofp i32 %4412 to float
  %4414 = fadd fast float %4413, 0xC1CFBF8940000000
  %4415 = fmul fast float %4409, %4414
  %4416 = fadd fast float %4415, 0x41CFBF8940000000
  %4417 = fptosi float %4416 to i32
  %4418 = bitcast i32 %4417 to float
  %4419 = bitcast float %4411 to i32
  %4420 = sitofp i32 %4419 to float
  %4421 = fadd fast float %4420, 0xC1CFBF8940000000
  %4422 = fmul fast float %4421, %4409
  %4423 = fadd fast float %4422, 0x41CFBF8940000000
  %4424 = fptosi float %4423 to i32
  %4425 = bitcast i32 %4424 to float
  %4426 = fmul fast float %4418, %4408
  %4427 = fmul fast float %4425, %4408
  %4428 = fsub fast float %4411, %4426
  %4429 = fadd fast float %4427, %4411
  %4430 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4432 = fsub fast float %4406, %4430
  %4433 = fsub fast float %4431, %4430
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = fmul fast float %4436, %4432
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fcmp fast olt float %4438, 0x3F70101020000000
  br i1 %4439, label %4578, label %4440

; <label>:4440                                    ; preds = %4402, %4305
  %4441 = phi float [ %4438, %4402 ], [ %4299, %4305 ]
  %4442 = fmul fast float %4441, %4308
  %4443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.i32 %4443, 1
  %4445 = extractvalue %dx.types.CBufRet.i32 %4443, 0
  %4446 = add i32 %4445, 0
  %4447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4447, %dx.types.Handle %102, float %4397, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float %4360, float %4361, float undef, float %4364, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = extractvalue %dx.types.ResRet.f32 %4448, 3
  %4453 = and i32 %4444, 255
  %4454 = uitofp i32 %4453 to float
  %4455 = lshr i32 %4444, 8
  %4456 = and i32 %4455, 255
  %4457 = uitofp i32 %4456 to float
  %4458 = fmul fast float %4452, %4454
  %4459 = fadd fast float %4458, %4457
  %4460 = fmul fast float %4459, 0x3F70101000000000
  %4461 = fadd fast float %4460, 0xBFB99999A0000000
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4462, 0x3FF1C71C80000000
  %4464 = call float @dx.op.binary.f32(i32 36, float %4460, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4465 = fsub fast float 1.000000e+00, %4463
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4466, %4449
  %4468 = fmul fast float %4466, %4450
  %4469 = fmul fast float %4466, %4451
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4473 = fmul fast float %4463, %4449
  %4474 = fmul fast float %4463, %4450
  %4475 = fmul fast float %4463, %4451
  %4476 = fadd fast float %4473, %4464
  %4477 = fadd fast float %4474, %4464
  %4478 = fadd fast float %4475, %4464
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.i32 %4482, 3
  %4484 = extractvalue %dx.types.CBufRet.i32 %4482, 2
  %4485 = add i32 %4484, 0
  %4486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4487 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4486, %dx.types.Handle %102, float %4397, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float %4360, float %4361, float undef, float %4364, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4488 = extractvalue %dx.types.ResRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.ResRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.ResRet.f32 %4487, 2
  %4491 = extractvalue %dx.types.ResRet.f32 %4487, 3
  %4492 = and i32 %4483, 255
  %4493 = uitofp i32 %4492 to float
  %4494 = lshr i32 %4483, 8
  %4495 = and i32 %4494, 255
  %4496 = uitofp i32 %4495 to float
  %4497 = lshr i32 %4483, 16
  %4498 = and i32 %4497, 255
  %4499 = uitofp i32 %4498 to float
  %4500 = fmul fast float %4499, 0x3F70101000000000
  %4501 = fmul fast float %4488, %4493
  %4502 = fadd fast float %4501, %4496
  %4503 = fmul fast float %4502, 0x3F70101000000000
  %4504 = fadd fast float %4489, -5.000000e-01
  %4505 = fadd fast float %4491, -5.000000e-01
  %4506 = fmul fast float %4504, %4500
  %4507 = fmul fast float %4505, %4500
  %4508 = fadd fast float %4506, 5.000000e-01
  %4509 = fadd fast float %4507, 5.000000e-01
  %4510 = fmul fast float %4508, 2.000000e+00
  %4511 = fadd fast float %4510, -1.000000e+00
  %4512 = fmul fast float %4509, 2.000000e+00
  %4513 = fadd fast float %4512, -1.000000e+00
  %4514 = fadd fast float %4511, %4513
  %4515 = fmul fast float %4514, 5.000000e-01
  %4516 = fsub fast float %4511, %4513
  %4517 = fmul fast float %4516, 5.000000e-01
  %4518 = call float @dx.op.unary.f32(i32 6, float %4515)  ; FAbs(value)
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = call float @dx.op.unary.f32(i32 6, float %4517)  ; FAbs(value)
  %4521 = fsub fast float %4519, %4520
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4515, float %4517, float %4521, float %4515, float %4517, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = call float @dx.op.unary.f32(i32 25, float %4522)  ; Rsqrt(value)
  %4524 = fmul fast float %4515, %4523
  %4525 = fmul fast float %4517, %4523
  %4526 = select i1 %4353, i32 %4343, i32 %4344
  %4527 = select i1 %4351, i32 %4342, i32 %4526
  %4528 = sitofp i32 %4527 to float
  %4529 = fmul fast float %4521, %4528
  %4530 = fmul fast float %4529, %4523
  %4531 = select i1 %4353, float %4530, float %4525
  %4532 = select i1 %4353, float %4525, float %4530
  %4533 = select i1 %4351, float %4530, float %4524
  %4534 = select i1 %4351, float %4525, float %4531
  %4535 = select i1 %4351, float %4524, float %4532
  %4536 = fsub fast float %4470, %3903
  %4537 = fsub fast float %4471, %3904
  %4538 = fsub fast float %4472, %3905
  %4539 = fmul fast float %4536, %4442
  %4540 = fmul fast float %4537, %4442
  %4541 = fmul fast float %4538, %4442
  %4542 = fadd fast float %4539, %3903
  %4543 = fadd fast float %4540, %3904
  %4544 = fadd fast float %4541, %3905
  %4545 = fsub fast float %4479, %3888
  %4546 = fsub fast float %4480, %3889
  %4547 = fsub fast float %4481, %3890
  %4548 = fmul fast float %4545, %4442
  %4549 = fmul fast float %4546, %4442
  %4550 = fmul fast float %4547, %4442
  %4551 = fadd fast float %4548, %3888
  %4552 = fadd fast float %4549, %3889
  %4553 = fadd fast float %4550, %3890
  %4554 = fadd fast float %4533, %3851
  %4555 = fadd fast float %4534, %3852
  %4556 = fadd fast float %4535, %3853
  %4557 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %4556, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = call float @dx.op.unary.f32(i32 25, float %4557)  ; Rsqrt(value)
  %4559 = fmul fast float %4554, %4558
  %4560 = fmul fast float %4555, %4558
  %4561 = fmul fast float %4556, %4558
  %4562 = fsub fast float %4559, %3851
  %4563 = fsub fast float %4560, %3852
  %4564 = fsub fast float %4561, %3853
  %4565 = fmul fast float %4562, %4442
  %4566 = fmul fast float %4563, %4442
  %4567 = fmul fast float %4564, %4442
  %4568 = fadd fast float %4565, %3851
  %4569 = fadd fast float %4566, %3852
  %4570 = fadd fast float %4567, %3853
  %4571 = call float @dx.op.binary.f32(i32 36, float %3863, float %4490)  ; FMin(a,b)
  %4572 = fsub fast float %4571, %3863
  %4573 = fmul fast float %4572, %4442
  %4574 = fadd fast float %4573, %3863
  %4575 = fsub fast float %4503, %3891
  %4576 = fmul fast float %4575, %4442
  %4577 = fadd fast float %4576, %3891
  br label %4578

; <label>:4578                                    ; preds = %4440, %4402, %4304
  %4579 = phi float [ %4568, %4440 ], [ %3851, %4402 ], [ %3851, %4304 ]
  %4580 = phi float [ %4569, %4440 ], [ %3852, %4402 ], [ %3852, %4304 ]
  %4581 = phi float [ %4570, %4440 ], [ %3853, %4402 ], [ %3853, %4304 ]
  %4582 = phi float [ %4542, %4440 ], [ %3903, %4402 ], [ %3903, %4304 ]
  %4583 = phi float [ %4543, %4440 ], [ %3904, %4402 ], [ %3904, %4304 ]
  %4584 = phi float [ %4544, %4440 ], [ %3905, %4402 ], [ %3905, %4304 ]
  %4585 = phi float [ %4551, %4440 ], [ %3888, %4402 ], [ %3888, %4304 ]
  %4586 = phi float [ %4552, %4440 ], [ %3889, %4402 ], [ %3889, %4304 ]
  %4587 = phi float [ %4553, %4440 ], [ %3890, %4402 ], [ %3890, %4304 ]
  %4588 = phi float [ %4577, %4440 ], [ %3891, %4402 ], [ %3891, %4304 ]
  %4589 = phi float [ %4574, %4440 ], [ %3863, %4402 ], [ %3863, %4304 ]
  br i1 %4302, label %4590, label %4863

; <label>:4590                                    ; preds = %4578
  %4591 = call float @dx.op.unary.f32(i32 23, float %4589)  ; Log(value)
  %4592 = fmul fast float %4591, 4.000000e+00
  %4593 = call float @dx.op.unary.f32(i32 21, float %4592)  ; Exp(value)
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = fmul fast float %4595, %58
  %4597 = fmul fast float %4595, %59
  %4598 = fmul fast float %4595, %60
  %4599 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4600 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4601 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4602 = call float @dx.op.unary.f32(i32 23, float %4599)  ; Log(value)
  %4603 = call float @dx.op.unary.f32(i32 23, float %4600)  ; Log(value)
  %4604 = call float @dx.op.unary.f32(i32 23, float %4601)  ; Log(value)
  %4605 = fmul fast float %4602, 4.000000e+00
  %4606 = fmul fast float %4603, 4.000000e+00
  %4607 = fmul fast float %4604, 4.000000e+00
  %4608 = call float @dx.op.unary.f32(i32 21, float %4605)  ; Exp(value)
  %4609 = call float @dx.op.unary.f32(i32 21, float %4606)  ; Exp(value)
  %4610 = call float @dx.op.unary.f32(i32 21, float %4607)  ; Exp(value)
  %4611 = fadd fast float %4609, %4608
  %4612 = fadd fast float %4611, %4610
  %4613 = fdiv fast float 1.000000e+00, %4612
  %4614 = fmul fast float %4613, %4608
  %4615 = fcmp fast ogt float %67, 0.000000e+00
  %4616 = fcmp fast ogt float %68, 0.000000e+00
  %4617 = fcmp fast ogt float %69, 0.000000e+00
  %4618 = fcmp fast olt float %67, 0.000000e+00
  %4619 = fcmp fast olt float %68, 0.000000e+00
  %4620 = fcmp fast olt float %69, 0.000000e+00
  %4621 = zext i1 %4615 to i32
  %4622 = zext i1 %4616 to i32
  %4623 = zext i1 %4617 to i32
  %4624 = zext i1 %4618 to i32
  %4625 = zext i1 %4619 to i32
  %4626 = zext i1 %4620 to i32
  %4627 = sub nsw i32 %4621, %4624
  %4628 = sub nsw i32 %4622, %4625
  %4629 = sub nsw i32 %4623, %4626
  %4630 = call float @dx.op.unary.f32(i32 83, float %4596)  ; DerivCoarseX(value)
  %4631 = call float @dx.op.unary.f32(i32 83, float %4597)  ; DerivCoarseX(value)
  %4632 = call float @dx.op.unary.f32(i32 83, float %4598)  ; DerivCoarseX(value)
  %4633 = call float @dx.op.unary.f32(i32 84, float %4596)  ; DerivCoarseY(value)
  %4634 = call float @dx.op.unary.f32(i32 84, float %4597)  ; DerivCoarseY(value)
  %4635 = call float @dx.op.unary.f32(i32 84, float %4598)  ; DerivCoarseY(value)
  %4636 = fcmp fast ole float %270, %4614
  %4637 = fmul fast float %4613, %4611
  %4638 = fcmp fast ole float %270, %4637
  %4639 = select i1 %4638, float %4598, float %4596
  %4640 = select i1 %4638, float %4596, float %4597
  %4641 = select i1 %4636, float %4597, float %4639
  %4642 = select i1 %4636, float %4598, float %4640
  %4643 = select i1 %4638, float %4632, float %4630
  %4644 = select i1 %4638, float %4630, float %4631
  %4645 = select i1 %4636, float %4631, float %4643
  %4646 = select i1 %4636, float %4632, float %4644
  %4647 = select i1 %4638, float %4635, float %4633
  %4648 = select i1 %4638, float %4633, float %4634
  %4649 = select i1 %4636, float %4634, float %4647
  %4650 = select i1 %4636, float %4635, float %4648
  %4651 = call float @dx.op.unary.f32(i32 27, float %4641)  ; Round_ni(value)
  %4652 = call float @dx.op.unary.f32(i32 27, float %4642)  ; Round_ni(value)
  %4653 = fptosi float %4651 to i32
  %4654 = fptosi float %4652 to i32
  %4655 = xor i32 %4654, %4653
  %4656 = sitofp i32 %4655 to float
  %4657 = fptosi float %4656 to i32
  %4658 = sitofp i32 %4657 to float
  %4659 = fmul fast float %4658, 0x3FE3C6EF40000000
  %4660 = frem fast float %4651, 2.560000e+02
  %4661 = frem fast float %4652, 2.560000e+02
  %4662 = fptoui float %4660 to i32
  %4663 = fptoui float %4661 to i32
  %4664 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4662, i32 %4663, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4668 = fadd fast float %4665, %4659
  %4669 = fadd fast float %4666, %4659
  %4670 = fadd fast float %4667, %4659
  %4671 = call float @dx.op.unary.f32(i32 22, float %4668)  ; Frc(value)
  %4672 = call float @dx.op.unary.f32(i32 22, float %4669)  ; Frc(value)
  %4673 = call float @dx.op.unary.f32(i32 22, float %4670)  ; Frc(value)
  %4674 = fmul fast float %4673, 0x401921FB60000000
  %4675 = call float @dx.op.unary.f32(i32 13, float %4674)  ; Sin(value)
  %4676 = call float @dx.op.unary.f32(i32 12, float %4674)  ; Cos(value)
  %4677 = fsub fast float -0.000000e+00, %4676
  %4678 = fmul fast float %4676, %4641
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4675, float %4642, float %4678)  ; FMad(a,b,c)
  %4680 = fmul fast float %4675, %4641
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4677, float %4642, float %4680)  ; FMad(a,b,c)
  %4682 = fadd fast float %4679, %4671
  %4683 = fadd fast float %4681, %4672
  %4684 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4685 = bitcast float %4684 to i32
  %4686 = icmp eq i32 %4685, 0
  br i1 %4686, label %4725, label %4687

; <label>:4687                                    ; preds = %4590
  %4688 = add i32 %4685, 0
  %4689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4689, %dx.types.Handle %103, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4646, float undef, float %4649, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 1
  %4694 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4695 = fsub fast float 1.000000e+00, %4300
  %4696 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4697 = bitcast float %4300 to i32
  %4698 = sitofp i32 %4697 to float
  %4699 = fadd fast float %4698, 0xC1CFBF8940000000
  %4700 = fmul fast float %4694, %4699
  %4701 = fadd fast float %4700, 0x41CFBF8940000000
  %4702 = fptosi float %4701 to i32
  %4703 = bitcast i32 %4702 to float
  %4704 = bitcast float %4696 to i32
  %4705 = sitofp i32 %4704 to float
  %4706 = fadd fast float %4705, 0xC1CFBF8940000000
  %4707 = fmul fast float %4706, %4694
  %4708 = fadd fast float %4707, 0x41CFBF8940000000
  %4709 = fptosi float %4708 to i32
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4703, %4693
  %4712 = fmul fast float %4710, %4693
  %4713 = fsub fast float %4696, %4711
  %4714 = fadd fast float %4712, %4696
  %4715 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4717 = fsub fast float %4691, %4715
  %4718 = fsub fast float %4716, %4715
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = fmul fast float %4721, %4717
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fcmp fast olt float %4723, 0x3F70101020000000
  br i1 %4724, label %4863, label %4725

; <label>:4725                                    ; preds = %4687, %4590
  %4726 = phi float [ %4723, %4687 ], [ %4300, %4590 ]
  %4727 = fmul fast float %4726, %4593
  %4728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.i32 %4728, 1
  %4730 = extractvalue %dx.types.CBufRet.i32 %4728, 0
  %4731 = add i32 %4730, 0
  %4732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4732, %dx.types.Handle %102, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4646, float undef, float %4649, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.ResRet.f32 %4733, 3
  %4738 = and i32 %4729, 255
  %4739 = uitofp i32 %4738 to float
  %4740 = lshr i32 %4729, 8
  %4741 = and i32 %4740, 255
  %4742 = uitofp i32 %4741 to float
  %4743 = fmul fast float %4737, %4739
  %4744 = fadd fast float %4743, %4742
  %4745 = fmul fast float %4744, 0x3F70101000000000
  %4746 = fadd fast float %4745, 0xBFB99999A0000000
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4747, 0x3FF1C71C80000000
  %4749 = call float @dx.op.binary.f32(i32 36, float %4745, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4750 = fsub fast float 1.000000e+00, %4748
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4751, %4734
  %4753 = fmul fast float %4751, %4735
  %4754 = fmul fast float %4751, %4736
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = fmul fast float %4748, %4734
  %4759 = fmul fast float %4748, %4735
  %4760 = fmul fast float %4748, %4736
  %4761 = fadd fast float %4758, %4749
  %4762 = fadd fast float %4759, %4749
  %4763 = fadd fast float %4760, %4749
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.i32 %4767, 3
  %4769 = extractvalue %dx.types.CBufRet.i32 %4767, 2
  %4770 = add i32 %4769, 0
  %4771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4771, %dx.types.Handle %102, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4646, float undef, float %4649, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.ResRet.f32 %4772, 2
  %4776 = extractvalue %dx.types.ResRet.f32 %4772, 3
  %4777 = and i32 %4768, 255
  %4778 = uitofp i32 %4777 to float
  %4779 = lshr i32 %4768, 8
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = lshr i32 %4768, 16
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = fmul fast float %4784, 0x3F70101000000000
  %4786 = fmul fast float %4773, %4778
  %4787 = fadd fast float %4786, %4781
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fadd fast float %4774, -5.000000e-01
  %4790 = fadd fast float %4776, -5.000000e-01
  %4791 = fmul fast float %4789, %4785
  %4792 = fmul fast float %4790, %4785
  %4793 = fadd fast float %4791, 5.000000e-01
  %4794 = fadd fast float %4792, 5.000000e-01
  %4795 = fmul fast float %4793, 2.000000e+00
  %4796 = fadd fast float %4795, -1.000000e+00
  %4797 = fmul fast float %4794, 2.000000e+00
  %4798 = fadd fast float %4797, -1.000000e+00
  %4799 = fadd fast float %4796, %4798
  %4800 = fmul fast float %4799, 5.000000e-01
  %4801 = fsub fast float %4796, %4798
  %4802 = fmul fast float %4801, 5.000000e-01
  %4803 = call float @dx.op.unary.f32(i32 6, float %4800)  ; FAbs(value)
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4806 = fsub fast float %4804, %4805
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4800, float %4802, float %4806, float %4800, float %4802, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4800, %4808
  %4810 = fmul fast float %4802, %4808
  %4811 = select i1 %4638, i32 %4628, i32 %4629
  %4812 = select i1 %4636, i32 %4627, i32 %4811
  %4813 = sitofp i32 %4812 to float
  %4814 = fmul fast float %4806, %4813
  %4815 = fmul fast float %4814, %4808
  %4816 = select i1 %4638, float %4815, float %4810
  %4817 = select i1 %4638, float %4810, float %4815
  %4818 = select i1 %4636, float %4815, float %4809
  %4819 = select i1 %4636, float %4810, float %4816
  %4820 = select i1 %4636, float %4809, float %4817
  %4821 = fsub fast float %4755, %4582
  %4822 = fsub fast float %4756, %4583
  %4823 = fsub fast float %4757, %4584
  %4824 = fmul fast float %4821, %4727
  %4825 = fmul fast float %4822, %4727
  %4826 = fmul fast float %4823, %4727
  %4827 = fadd fast float %4824, %4582
  %4828 = fadd fast float %4825, %4583
  %4829 = fadd fast float %4826, %4584
  %4830 = fsub fast float %4764, %4585
  %4831 = fsub fast float %4765, %4586
  %4832 = fsub fast float %4766, %4587
  %4833 = fmul fast float %4830, %4727
  %4834 = fmul fast float %4831, %4727
  %4835 = fmul fast float %4832, %4727
  %4836 = fadd fast float %4833, %4585
  %4837 = fadd fast float %4834, %4586
  %4838 = fadd fast float %4835, %4587
  %4839 = fadd fast float %4818, %4579
  %4840 = fadd fast float %4819, %4580
  %4841 = fadd fast float %4820, %4581
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4839, float %4840, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4839, %4843
  %4845 = fmul fast float %4840, %4843
  %4846 = fmul fast float %4841, %4843
  %4847 = fsub fast float %4844, %4579
  %4848 = fsub fast float %4845, %4580
  %4849 = fsub fast float %4846, %4581
  %4850 = fmul fast float %4847, %4727
  %4851 = fmul fast float %4848, %4727
  %4852 = fmul fast float %4849, %4727
  %4853 = fadd fast float %4850, %4579
  %4854 = fadd fast float %4851, %4580
  %4855 = fadd fast float %4852, %4581
  %4856 = call float @dx.op.binary.f32(i32 36, float %4589, float %4775)  ; FMin(a,b)
  %4857 = fsub fast float %4856, %4589
  %4858 = fmul fast float %4857, %4727
  %4859 = fadd fast float %4858, %4589
  %4860 = fsub fast float %4788, %4588
  %4861 = fmul fast float %4860, %4727
  %4862 = fadd fast float %4861, %4588
  br label %4863

; <label>:4863                                    ; preds = %4725, %4687, %4578, %4294
  %4864 = phi float [ %4853, %4725 ], [ %4579, %4687 ], [ %4579, %4578 ], [ %3851, %4294 ]
  %4865 = phi float [ %4854, %4725 ], [ %4580, %4687 ], [ %4580, %4578 ], [ %3852, %4294 ]
  %4866 = phi float [ %4855, %4725 ], [ %4581, %4687 ], [ %4581, %4578 ], [ %3853, %4294 ]
  %4867 = phi float [ %4827, %4725 ], [ %4582, %4687 ], [ %4582, %4578 ], [ %3903, %4294 ]
  %4868 = phi float [ %4828, %4725 ], [ %4583, %4687 ], [ %4583, %4578 ], [ %3904, %4294 ]
  %4869 = phi float [ %4829, %4725 ], [ %4584, %4687 ], [ %4584, %4578 ], [ %3905, %4294 ]
  %4870 = phi float [ %4836, %4725 ], [ %4585, %4687 ], [ %4585, %4578 ], [ %3888, %4294 ]
  %4871 = phi float [ %4837, %4725 ], [ %4586, %4687 ], [ %4586, %4578 ], [ %3889, %4294 ]
  %4872 = phi float [ %4838, %4725 ], [ %4587, %4687 ], [ %4587, %4578 ], [ %3890, %4294 ]
  %4873 = phi float [ %4862, %4725 ], [ %4588, %4687 ], [ %4588, %4578 ], [ %3891, %4294 ]
  %4874 = phi float [ %4859, %4725 ], [ %4589, %4687 ], [ %4589, %4578 ], [ %3863, %4294 ]
  %4875 = fcmp fast une float %4298, 0.000000e+00
  %4876 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = call float @dx.op.unary.f32(i32 25, float %4876)  ; Rsqrt(value)
  br i1 %4875, label %4885, label %4878

; <label>:4878                                    ; preds = %4863
  %4879 = fmul fast float %4877, %193
  %4880 = fmul fast float %4877, %194
  %4881 = fmul fast float %4877, %195
  %4882 = fsub fast float -0.000000e+00, %4879
  %4883 = fsub fast float -0.000000e+00, %4880
  %4884 = fsub fast float -0.000000e+00, %4881
  br label %5052

; <label>:4885                                    ; preds = %4863
  %4886 = fmul fast float %193, %4877
  %4887 = fsub fast float -0.000000e+00, %4886
  %4888 = fmul fast float %194, %4877
  %4889 = fsub fast float -0.000000e+00, %4888
  %4890 = fmul fast float %195, %4877
  %4891 = fsub fast float -0.000000e+00, %4890
  %4892 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4889, float %4891, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4893 = fmul fast float %4298, 2.500000e+00
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4298, 0x4013FFFFE0000000
  %4896 = fadd fast float %4895, 0xBFFFFFFFE0000000
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fmul fast float %4298, 0x4004000020000000
  %4899 = fadd fast float %4898, 0xBFF8000040000000
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %3870, 1.000000e+01
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4902, 2.000000e+00
  %4904 = fsub fast float 3.000000e+00, %4903
  %4905 = fmul fast float %4902, %4902
  %4906 = fmul fast float %4905, %4904
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = fsub fast float 0x3FE3333340000000, %4873
  %4909 = fmul fast float %4908, 0x400AAAAAA0000000
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fmul fast float %4907, %4910
  %4912 = fmul fast float %4867, 0x3FEA2B8620000000
  %4913 = fmul fast float %4868, 0x3FEA2B8620000000
  %4914 = fmul fast float %4869, 0x3FEA2B8620000000
  %4915 = fadd fast float %4912, 0x3FC81DFBA0000000
  %4916 = fmul fast float %4915, %4867
  %4917 = fadd fast float %4916, 0x3F910E6020000000
  %4918 = fadd fast float %4913, 0x3FC81DFBA0000000
  %4919 = fmul fast float %4918, %4868
  %4920 = fadd fast float %4919, 0x3F910E6020000000
  %4921 = fadd fast float %4914, 0x3FC81DFBA0000000
  %4922 = fmul fast float %4921, %4869
  %4923 = fadd fast float %4922, 0x3F910E6020000000
  %4924 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4925 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4927 = fsub fast float %4924, %4867
  %4928 = fsub fast float %4925, %4868
  %4929 = fsub fast float %4926, %4869
  %4930 = fmul fast float %4927, %4894
  %4931 = fmul fast float %4930, %4911
  %4932 = fmul fast float %4928, %4894
  %4933 = fmul fast float %4932, %4911
  %4934 = fmul fast float %4929, %4894
  %4935 = fmul fast float %4934, %4911
  %4936 = fadd fast float %4931, %4867
  %4937 = fadd fast float %4933, %4868
  %4938 = fadd fast float %4935, %4869
  %4939 = fmul fast float %4874, %4874
  %4940 = fmul fast float %4939, %4939
  %4941 = fadd fast float %4897, 1.000000e+00
  %4942 = fsub fast float %4941, %4911
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fsub fast float 1.000000e+00, %4940
  %4947 = call float @dx.op.binary.f32(i32 36, float %4943, float %4946)  ; FMin(a,b)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4949 = call float @dx.op.binary.f32(i32 35, float %4947, float %4948)  ; FMax(a,b)
  %4950 = fadd fast float %4945, 0xBFE4CCCCC0000000
  %4951 = fmul fast float %4950, 0x4006DB6DA0000000
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = fmul fast float %4952, 2.000000e+00
  %4954 = fsub fast float 3.000000e+00, %4953
  %4955 = bitcast float %4870 to i32
  %4956 = ashr i32 %4955, 1
  %4957 = add nsw i32 %4956, 532487669
  %4958 = bitcast i32 %4957 to float
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = bitcast float %4871 to i32
  %4965 = ashr i32 %4964, 1
  %4966 = add nsw i32 %4965, 532487669
  %4967 = bitcast i32 %4966 to float
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = bitcast float %4968 to i32
  %4970 = sub nsw i32 2129859010, %4969
  %4971 = bitcast i32 %4970 to float
  %4972 = fmul fast float %4971, 2.000000e+00
  %4973 = bitcast float %4872 to i32
  %4974 = ashr i32 %4973, 1
  %4975 = add nsw i32 %4974, 532487669
  %4976 = bitcast i32 %4975 to float
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = fmul fast float %4980, 2.000000e+00
  %4982 = fsub fast float 0x4002A9FBE0000000, %4963
  %4983 = fadd fast float %4963, 0x3FD54FDF00000000
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = fmul fast float %4986, %4982
  %4988 = fmul fast float %4987, %4987
  %4989 = fsub fast float 0x4002A9FBE0000000, %4972
  %4990 = fadd fast float %4972, 0x3FD54FDF00000000
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4994, %4994
  %4996 = fsub fast float 0x4002A9FBE0000000, %4981
  %4997 = fadd fast float %4981, 0x3FD54FDF00000000
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, %4996
  %5002 = fmul fast float %5001, %5001
  %5003 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4988)  ; FMax(a,b)
  %5004 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4995)  ; FMax(a,b)
  %5005 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5002)  ; FMax(a,b)
  %5006 = fsub fast float 1.000000e+00, %4892
  %5007 = fadd fast float %5006, %4907
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = fsub fast float 1.000000e+00, %4279
  %5010 = fmul fast float %4949, %5009
  %5011 = fmul fast float %4952, %4952
  %5012 = fmul fast float %5011, %5010
  %5013 = fmul fast float %5012, %4954
  %5014 = fmul fast float %5009, 0xBFE99999A0000000
  %5015 = fmul fast float %5014, %4894
  %5016 = fmul fast float %5015, %4911
  %5017 = fadd fast float %5016, 1.000000e+00
  %5018 = fadd fast float %4873, -1.000000e+00
  %5019 = fmul fast float %5017, %5018
  %5020 = fadd fast float %5019, 1.000000e+00
  %5021 = fsub fast float %5003, %4870
  %5022 = fsub fast float %5004, %4871
  %5023 = fsub fast float %5005, %4872
  %5024 = fmul fast float %5013, %5021
  %5025 = fmul fast float %5013, %5022
  %5026 = fmul fast float %5013, %5023
  %5027 = fadd fast float %5024, %4870
  %5028 = fadd fast float %5025, %4871
  %5029 = fadd fast float %5026, %4872
  %5030 = fsub fast float %113, %4864
  %5031 = fsub fast float %114, %4865
  %5032 = fsub fast float %115, %4866
  %5033 = fmul fast float %5013, %5030
  %5034 = fmul fast float %5013, %5031
  %5035 = fmul fast float %5013, %5032
  %5036 = fadd fast float %5033, %4864
  %5037 = fadd fast float %5034, %4865
  %5038 = fadd fast float %5035, %4866
  %5039 = fmul fast float %5013, %5008
  %5040 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = fmul fast float %5039, %5041
  %5043 = fadd fast float %5042, %5040
  %5044 = fsub fast float 1.000000e+00, %4874
  %5045 = fmul fast float %5013, %5044
  %5046 = fadd fast float %5045, %4874
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float %5036, float %5037, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.unary.f32(i32 25, float %5047)  ; Rsqrt(value)
  %5049 = fmul fast float %5036, %5048
  %5050 = fmul fast float %5037, %5048
  %5051 = fmul fast float %5038, %5048
  br label %5052

; <label>:5052                                    ; preds = %4885, %4878
  %5053 = phi float [ %4884, %4878 ], [ %4891, %4885 ]
  %5054 = phi float [ %4883, %4878 ], [ %4889, %4885 ]
  %5055 = phi float [ %4882, %4878 ], [ %4887, %4885 ]
  %5056 = phi float [ %4881, %4878 ], [ %4890, %4885 ]
  %5057 = phi float [ %4880, %4878 ], [ %4888, %4885 ]
  %5058 = phi float [ %4879, %4878 ], [ %4886, %4885 ]
  %5059 = phi float [ %4864, %4878 ], [ %5049, %4885 ]
  %5060 = phi float [ %4865, %4878 ], [ %5050, %4885 ]
  %5061 = phi float [ %4866, %4878 ], [ %5051, %4885 ]
  %5062 = phi float [ %4867, %4878 ], [ %4936, %4885 ]
  %5063 = phi float [ %4868, %4878 ], [ %4937, %4885 ]
  %5064 = phi float [ %4869, %4878 ], [ %4938, %4885 ]
  %5065 = phi float [ %4870, %4878 ], [ %5027, %4885 ]
  %5066 = phi float [ %4871, %4878 ], [ %5028, %4885 ]
  %5067 = phi float [ %4872, %4878 ], [ %5029, %4885 ]
  %5068 = phi float [ %4873, %4878 ], [ %5043, %4885 ]
  %5069 = phi float [ %4874, %4878 ], [ %5046, %4885 ]
  %5070 = fsub fast float -0.000000e+00, %195
  %5071 = select i1 %259, float 0.000000e+00, float %5067
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %5055, float %5054, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5057, float %5056, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = fmul fast float %5074, 2.000000e+00
  %5076 = fmul fast float %5075, %5059
  %5077 = fmul fast float %5075, %5060
  %5078 = fmul fast float %5075, %5061
  %5079 = fsub fast float %5058, %5076
  %5080 = fsub fast float %5057, %5077
  %5081 = fsub fast float %5056, %5078
  %5082 = call float @dx.op.binary.f32(i32 36, float %5069, float 1.000000e+00)  ; FMin(a,b)
  %5083 = fsub fast float 1.000000e+00, %5069
  %5084 = bitcast float %5083 to i32
  %5085 = sub nsw i32 2129859010, %5084
  %5086 = bitcast i32 %5085 to float
  %5087 = fsub fast float 1.000000e+00, %77
  %5088 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = call float @dx.op.binary.f32(i32 35, float %5088, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5090 = fdiv fast float %5087, %5089
  %5091 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = fmul fast float %5092, 5.000000e-01
  %5094 = fadd fast float %5093, 5.000000e-01
  %5095 = fmul fast float %5094, %77
  %5096 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5097, %5090
  %5099 = fadd fast float %5095, %5098
  %5100 = fsub fast float 5.000000e-01, %5093
  %5101 = fmul fast float %5100, %5062
  %5102 = fmul fast float %5100, %5063
  %5103 = fmul fast float %5100, %5064
  %5104 = fadd fast float %5099, %5101
  %5105 = fadd fast float %5099, %5102
  %5106 = fadd fast float %5099, %5103
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %5108, 5.000000e-01
  %5110 = fadd fast float %5109, 5.000000e-01
  %5111 = fmul fast float %5110, %77
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %5113, %5090
  %5115 = fadd fast float %5111, %5114
  %5116 = fsub fast float 5.000000e-01, %5109
  %5117 = fmul fast float %5116, %5062
  %5118 = fmul fast float %5116, %5063
  %5119 = fmul fast float %5116, %5064
  %5120 = fadd fast float %5115, %5117
  %5121 = fadd fast float %5115, %5118
  %5122 = fadd fast float %5115, %5119
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 0
  %5125 = call float @dx.op.binary.f32(i32 36, float %5062, float %5124)  ; FMin(a,b)
  %5126 = fsub fast float 1.000000e+00, %5082
  %5127 = fmul fast float %5125, %5126
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = call float @dx.op.binary.f32(i32 36, float %5063, float %5124)  ; FMin(a,b)
  %5133 = fmul fast float %5132, %5126
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = bitcast float %5134 to i32
  %5136 = sub nsw i32 2129859010, %5135
  %5137 = bitcast i32 %5136 to float
  %5138 = call float @dx.op.binary.f32(i32 36, float %5064, float %5124)  ; FMin(a,b)
  %5139 = fmul fast float %5138, %5126
  %5140 = fsub fast float 1.000000e+00, %5139
  %5141 = bitcast float %5140 to i32
  %5142 = sub nsw i32 2129859010, %5141
  %5143 = bitcast i32 %5142 to float
  %5144 = fmul fast float %5082, %78
  %5145 = fmul fast float %5144, %5104
  %5146 = fmul fast float %5145, %5131
  %5147 = fmul fast float %5082, %79
  %5148 = fmul fast float %5147, %5105
  %5149 = fmul fast float %5148, %5137
  %5150 = fmul fast float %5082, %80
  %5151 = fmul fast float %5150, %5106
  %5152 = fmul fast float %5151, %5143
  %5153 = call float @dx.op.binary.f32(i32 36, float %5065, float %5124)  ; FMin(a,b)
  %5154 = fmul fast float %5153, %5126
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = bitcast float %5155 to i32
  %5157 = sub nsw i32 2129859010, %5156
  %5158 = bitcast i32 %5157 to float
  %5159 = call float @dx.op.binary.f32(i32 36, float %5066, float %5124)  ; FMin(a,b)
  %5160 = fmul fast float %5159, %5126
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = bitcast float %5161 to i32
  %5163 = sub nsw i32 2129859010, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = call float @dx.op.binary.f32(i32 36, float %5071, float %5124)  ; FMin(a,b)
  %5166 = fmul fast float %5165, %5126
  %5167 = fsub fast float 1.000000e+00, %5166
  %5168 = bitcast float %5167 to i32
  %5169 = sub nsw i32 2129859010, %5168
  %5170 = bitcast i32 %5169 to float
  %5171 = fmul fast float %5144, %5120
  %5172 = fmul fast float %5171, %5158
  %5173 = fmul fast float %5147, %5121
  %5174 = fmul fast float %5173, %5164
  %5175 = fmul fast float %5150, %5122
  %5176 = fmul fast float %5175, %5170
  %5177 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5149, float %5152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = select i1 %259, float 0.000000e+00, float %5146
  %5179 = select i1 %259, float %5177, float %5149
  %5180 = select i1 %259, float 0.000000e+00, float %5152
  %5181 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5174, float %5176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = select i1 %259, float 0.000000e+00, float %5172
  %5183 = select i1 %259, float %5181, float %5174
  %5184 = select i1 %259, float 0.000000e+00, float %5176
  %5185 = fmul fast float %5073, 9.843750e-01
  %5186 = fmul fast float %5068, 9.843750e-01
  %5187 = fadd fast float %5185, 7.812500e-03
  %5188 = fadd fast float %5186, 7.812500e-03
  %5189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5187, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 2
  %5191 = extractvalue %dx.types.ResRet.f32 %5189, 3
  %5192 = fmul fast float %5190, %5065
  %5193 = fmul fast float %5190, %5066
  %5194 = fmul fast float %5190, %5071
  %5195 = fadd fast float %5192, %5191
  %5196 = fadd fast float %5193, %5191
  %5197 = fadd fast float %5194, %5191
  %5198 = fcmp fast ogt float %3864, 0.000000e+00
  br i1 %5198, label %5199, label %5225

; <label>:5199                                    ; preds = %5052
  %5200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3864, float %5073, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 0
  %5202 = extractvalue %dx.types.ResRet.f32 %5200, 1
  %5203 = extractvalue %dx.types.ResRet.f32 %5200, 2
  %5204 = fadd fast float %5201, -5.000000e-01
  %5205 = fadd fast float %5202, -5.000000e-01
  %5206 = fadd fast float %5203, -5.000000e-01
  %5207 = fsub fast float 1.000000e+00, %5065
  %5208 = fsub fast float 1.000000e+00, %5066
  %5209 = fsub fast float 1.000000e+00, %5071
  %5210 = fmul fast float %5065, 4.000000e+00
  %5211 = fmul fast float %5210, %5207
  %5212 = fmul fast float %5211, %5204
  %5213 = fmul fast float %5066, 4.000000e+00
  %5214 = fmul fast float %5213, %5208
  %5215 = fmul fast float %5214, %5205
  %5216 = fmul fast float %5071, 4.000000e+00
  %5217 = fmul fast float %5216, %5209
  %5218 = fmul fast float %5217, %5206
  %5219 = fadd fast float %5212, %5195
  %5220 = fadd fast float %5215, %5196
  %5221 = fadd fast float %5218, %5197
  %5222 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5223 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5224 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  br label %5225

; <label>:5225                                    ; preds = %5199, %5052
  %5226 = phi float [ %5222, %5199 ], [ %5195, %5052 ]
  %5227 = phi float [ %5223, %5199 ], [ %5196, %5052 ]
  %5228 = phi float [ %5224, %5199 ], [ %5197, %5052 ]
  %5229 = call float @dx.op.binary.f32(i32 35, float %5227, float %5228)  ; FMax(a,b)
  %5230 = call float @dx.op.binary.f32(i32 35, float %5226, float %5229)  ; FMax(a,b)
  %5231 = fsub fast float 1.000000e+00, %5230
  %5232 = fmul fast float %5231, %5178
  %5233 = fmul fast float %5231, %5179
  %5234 = fmul fast float %5231, %5180
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fcmp fast ogt float %5235, 0x3E7FF19E20000000
  %5237 = fdiv fast float 1.000000e+00, %5235
  %5238 = select i1 %5236, float %5237, float 0.000000e+00
  %5239 = fmul fast float %5238, %5062
  %5240 = fmul fast float %5238, %5063
  %5241 = fmul fast float %5238, %5064
  %5242 = fadd fast float %5239, -1.000000e+00
  %5243 = fadd fast float %5240, -1.000000e+00
  %5244 = fadd fast float %5241, -1.000000e+00
  %5245 = fmul fast float %5242, 5.000000e-01
  %5246 = fmul fast float %5243, 5.000000e-01
  %5247 = fmul fast float %5244, 5.000000e-01
  %5248 = fadd fast float %5245, 1.000000e+00
  %5249 = fadd fast float %5246, 1.000000e+00
  %5250 = fadd fast float %5247, 1.000000e+00
  %5251 = fmul fast float %5226, %5182
  %5252 = fmul fast float %5227, %5183
  %5253 = fmul fast float %5228, %5184
  %5254 = fsub fast float 1.000000e+00, %5073
  %5255 = bitcast float %5254 to i32
  %5256 = sitofp i32 %5255 to float
  %5257 = fmul fast float %5256, 5.000000e+00
  %5258 = fadd fast float %5257, 0xC1EFBF8940000000
  %5259 = fptosi float %5258 to i32
  %5260 = bitcast i32 %5259 to float
  %5261 = fmul fast float %5260, %3865
  %5262 = fmul fast float %5178, %5261
  %5263 = fmul fast float %5262, %5231
  %5264 = fmul fast float %5263, %5248
  %5265 = fmul fast float %5179, %5261
  %5266 = fmul fast float %5265, %5231
  %5267 = fmul fast float %5266, %5249
  %5268 = fmul fast float %5180, %5261
  %5269 = fmul fast float %5268, %5231
  %5270 = fmul fast float %5269, %5250
  %5271 = fmul fast float %5232, %3861
  %5272 = fmul fast float %5233, %3861
  %5273 = fmul fast float %5234, %3861
  %5274 = fadd fast float %5251, %3857
  %5275 = fadd fast float %5274, %5264
  %5276 = fmul fast float %5275, %3861
  %5277 = fadd fast float %5252, %3858
  %5278 = fadd fast float %5277, %5267
  %5279 = fmul fast float %5278, %3861
  %5280 = fadd fast float %5253, %3859
  %5281 = fadd fast float %5280, %5270
  %5282 = fmul fast float %5281, %3861
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 3
  %5285 = fcmp fast oeq float %5284, 0.000000e+00
  br i1 %5285, label %6370, label %5286

; <label>:5286                                    ; preds = %5225
  %5287 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5289 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.CBufRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.CBufRet.f32 %5290, 2
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = select i1 %259, float %5295, float %5291
  %5299 = select i1 %259, float %5297, float %5292
  %5300 = select i1 %259, float %5296, float %5293
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5303 = fmul fast float %5302, %113
  %5304 = fmul fast float %5302, %114
  %5305 = fmul fast float %5302, %115
  %5306 = fadd fast float %5303, %193
  %5307 = fadd fast float %5304, %194
  %5308 = fadd fast float %5305, %195
  %5309 = fcmp fast olt float %5284, 0.000000e+00
  br i1 %5309, label %5949, label %5310

; <label>:5310                                    ; preds = %5286
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5315 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5316, 2
  %5320 = extractvalue %dx.types.CBufRet.f32 %5316, 3
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.CBufRet.f32 %5321, 2
  %5325 = extractvalue %dx.types.CBufRet.f32 %5321, 3
  %5326 = fmul fast float %5312, %5306
  %5327 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5313, float %5326)  ; FMad(a,b,c)
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5314, float %5327)  ; FMad(a,b,c)
  %5329 = fadd fast float %5328, %5315
  %5330 = fmul fast float %5317, %5306
  %5331 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5318, float %5330)  ; FMad(a,b,c)
  %5332 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5319, float %5331)  ; FMad(a,b,c)
  %5333 = fadd fast float %5332, %5320
  %5334 = fmul fast float %5322, %5306
  %5335 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5323, float %5334)  ; FMad(a,b,c)
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5324, float %5335)  ; FMad(a,b,c)
  %5337 = fadd fast float %5336, %5325
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5340 = fcmp fast une float %5339, 0.000000e+00
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5345 = fmul fast float %5344, %5329
  %5346 = fmul fast float %5344, %5333
  %5347 = fadd fast float %5345, %5342
  %5348 = fadd fast float %5346, %5343
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.CBufRet.f32 %5349, 3
  %5353 = fmul fast float %5352, %5329
  %5354 = fmul fast float %5352, %5333
  %5355 = fadd fast float %5353, %5350
  %5356 = fadd fast float %5354, %5351
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5359 = fsub fast float %5358, %5337
  %5360 = extractvalue %dx.types.CBufRet.f32 %5357, 2
  %5361 = fmul fast float %5359, %5360
  %5362 = fsub fast float 1.000000e+00, %5361
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  br i1 %5340, label %5424, label %5364

; <label>:5364                                    ; preds = %5310
  %5365 = extractvalue %dx.types.CBufRet.f32 %5349, 2
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5368 = fadd fast float %5367, %5365
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  br i1 %5369, label %5370, label %5394

; <label>:5370                                    ; preds = %5364
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = fsub fast float %5355, %5372
  %5375 = fsub fast float %5356, %5373
  %5376 = fcmp fast olt float %5374, 0.000000e+00
  %5377 = fcmp fast olt float %5375, 0.000000e+00
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = select i1 %5376, float %5379, float %5381
  %5384 = select i1 %5377, float %5380, float %5382
  %5385 = fmul fast float %5383, %5374
  %5386 = fmul fast float %5384, %5375
  %5387 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5388 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5390 = call float @dx.op.binary.f32(i32 35, float %5387, float %5388)  ; FMax(a,b)
  %5391 = fsub fast float %5389, %5390
  %5392 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5393 = fmul fast float %5392, %5363
  br label %5394

; <label>:5394                                    ; preds = %5370, %5364
  %5395 = phi float [ %5393, %5370 ], [ 0.000000e+00, %5364 ]
  %5396 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5397 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5398 = fadd fast float %5397, %5396
  %5399 = fcmp fast ogt float %5398, 0.000000e+00
  br i1 %5399, label %5400, label %5424

; <label>:5400                                    ; preds = %5394
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = fsub fast float %5347, %5402
  %5405 = fsub fast float %5348, %5403
  %5406 = fcmp fast olt float %5404, 0.000000e+00
  %5407 = fcmp fast olt float %5405, 0.000000e+00
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5412 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5413 = select i1 %5406, float %5409, float %5411
  %5414 = select i1 %5407, float %5410, float %5412
  %5415 = fmul fast float %5413, %5404
  %5416 = fmul fast float %5414, %5405
  %5417 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5418 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5420 = call float @dx.op.binary.f32(i32 35, float %5417, float %5418)  ; FMax(a,b)
  %5421 = fsub fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5423 = fmul fast float %5422, %5363
  br label %5424

; <label>:5424                                    ; preds = %5400, %5394, %5310
  %5425 = phi float [ 0.000000e+00, %5310 ], [ %5423, %5400 ], [ 0.000000e+00, %5394 ]
  %5426 = phi float [ 0.000000e+00, %5310 ], [ %5395, %5400 ], [ %5395, %5394 ]
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = fsub fast float %5329, %5431
  %5434 = fsub fast float %5333, %5432
  %5435 = fcmp fast olt float %5433, 0.000000e+00
  %5436 = fcmp fast olt float %5434, 0.000000e+00
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5442 = select i1 %5435, float %5438, float %5440
  %5443 = select i1 %5436, float %5439, float %5441
  %5444 = fmul fast float %5442, %5433
  %5445 = fmul fast float %5443, %5434
  %5446 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5447 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5449 = call float @dx.op.binary.f32(i32 35, float %5446, float %5447)  ; FMax(a,b)
  %5450 = fsub fast float %5448, %5449
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = call float @dx.op.binary.f32(i32 36, float %5451, float %5429)  ; FMin(a,b)
  %5453 = fmul fast float %5452, %5363
  %5454 = fsub fast float %5425, %5453
  %5455 = fsub fast float %5426, %5425
  %5456 = fsub fast float %5455, %5453
  %5457 = call float @dx.op.binary.f32(i32 35, float %5425, float %5426)  ; FMax(a,b)
  %5458 = call float @dx.op.binary.f32(i32 35, float %5453, float %5457)  ; FMax(a,b)
  %5459 = fcmp fast olt float %5458, 1.000000e+00
  br i1 %5459, label %5460, label %5858, !dx.controlflow.hints !96

; <label>:5460                                    ; preds = %5424
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = fcmp fast une float %5462, 0.000000e+00
  br i1 %5463, label %5464, label %5858, !dx.controlflow.hints !97

; <label>:5464                                    ; preds = %5460
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5469 = extractvalue %dx.types.CBufRet.f32 %5465, 3
  %5470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.CBufRet.f32 %5470, 1
  %5473 = extractvalue %dx.types.CBufRet.f32 %5470, 2
  %5474 = extractvalue %dx.types.CBufRet.f32 %5470, 3
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5479 = extractvalue %dx.types.CBufRet.f32 %5475, 3
  %5480 = fmul fast float %5466, %5306
  %5481 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5467, float %5480)  ; FMad(a,b,c)
  %5482 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5468, float %5481)  ; FMad(a,b,c)
  %5483 = fadd fast float %5482, %5469
  %5484 = fmul fast float %5471, %5306
  %5485 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5472, float %5484)  ; FMad(a,b,c)
  %5486 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5473, float %5485)  ; FMad(a,b,c)
  %5487 = fadd fast float %5486, %5474
  %5488 = fmul fast float %5476, %5306
  %5489 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5477, float %5488)  ; FMad(a,b,c)
  %5490 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5478, float %5489)  ; FMad(a,b,c)
  %5491 = fadd fast float %5490, %5479
  %5492 = fcmp fast oge float %5483, 1.000000e+00
  %5493 = fcmp fast oge float %5487, 1.000000e+00
  %5494 = or i1 %5492, %5493
  %5495 = fcmp fast olt float %5483, 0.000000e+00
  %5496 = fcmp fast olt float %5487, 0.000000e+00
  %5497 = or i1 %5495, %5496
  %5498 = or i1 %5494, %5497
  br i1 %5498, label %5858, label %5499, !dx.controlflow.hints !98

; <label>:5499                                    ; preds = %5464
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.i32 %5504, 2
  %5506 = uitofp i32 %5505 to float
  %5507 = extractvalue %dx.types.CBufRet.i32 %5504, 3
  %5508 = uitofp i32 %5507 to float
  %5509 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5510 = fmul fast float %5509, 2.000000e+00
  %5511 = fsub fast float %5483, %5501
  %5512 = fsub fast float %5487, %5502
  %5513 = fmul fast float %5510, %5511
  %5514 = fmul fast float %5510, %5512
  %5515 = fdiv fast float 1.000000e+00, %5289
  %5516 = fmul fast float %5514, %5515
  %5517 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5518 = fmul fast float %5503, %5308
  %5519 = fmul fast float %5518, %5510
  %5520 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5521 = call float @dx.op.unary.f32(i32 6, float %5513)  ; FAbs(value)
  %5522 = call float @dx.op.binary.f32(i32 35, float %5520, float %5517)  ; FMax(a,b)
  %5523 = call float @dx.op.binary.f32(i32 35, float %5521, float %5522)  ; FMax(a,b)
  %5524 = fmul fast float %5523, 2.000000e+00
  %5525 = call float @dx.op.unary.f32(i32 23, float %5524)  ; Log(value)
  %5526 = call float @dx.op.binary.f32(i32 35, float %5525, float %5506)  ; FMax(a,b)
  %5527 = call float @dx.op.unary.f32(i32 22, float %5526)  ; Frc(value)
  %5528 = fadd fast float %5527, 0xBFEA666660000000
  %5529 = fmul fast float %5528, 8.000000e+00
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = call float @dx.op.unary.f32(i32 27, float %5526)  ; Round_ni(value)
  %5532 = fadd fast float %5531, %5530
  %5533 = call float @dx.op.binary.f32(i32 36, float %5532, float %5508)  ; FMin(a,b)
  %5534 = call float @dx.op.unary.f32(i32 27, float %5533)  ; Round_ni(value)
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = call float @dx.op.unary.f32(i32 21, float %5535)  ; Exp(value)
  %5537 = fmul fast float %5536, %5510
  %5538 = fmul fast float %5537, %5483
  %5539 = fmul fast float %5537, %5487
  %5540 = fmul fast float %5538, 2.500000e-01
  %5541 = fmul fast float %5539, 2.500000e-01
  %5542 = fadd fast float %5540, 5.000000e-01
  %5543 = fadd fast float %5541, 5.000000e-01
  %5544 = fsub fast float %5508, %5506
  %5545 = fptoui float %5544 to i32
  %5546 = add i32 %5545, 320
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5546)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = fcmp fast une float %5533, %5508
  %5551 = fsub fast float %5483, %5548
  %5552 = fsub fast float %5487, %5549
  %5553 = call float @dx.op.unary.f32(i32 6, float %5551)  ; FAbs(value)
  %5554 = call float @dx.op.unary.f32(i32 6, float %5552)  ; FAbs(value)
  %5555 = fmul fast float %5553, %5537
  %5556 = fmul fast float %5554, %5537
  %5557 = fcmp fast olt float %5555, 1.000000e+00
  %5558 = fcmp fast olt float %5556, 1.000000e+00
  %5559 = and i1 %5557, %5558
  %5560 = or i1 %5550, %5559
  br i1 %5560, label %5561, label %5858, !dx.controlflow.hints !99

; <label>:5561                                    ; preds = %5499
  %5562 = fmul fast float %5539, 5.000000e-01
  %5563 = fmul fast float %5538, 5.000000e-01
  %5564 = fadd fast float %5562, 5.000000e-01
  %5565 = fadd fast float %5563, 5.000000e-01
  %5566 = sitofp i32 %5505 to float
  %5567 = fsub fast float %5533, %5566
  %5568 = call float @dx.op.unary.f32(i32 27, float %5567)  ; Round_ni(value)
  %5569 = call float @dx.op.unary.f32(i32 22, float %5533)  ; Frc(value)
  %5570 = call float @dx.op.unary.f32(i32 22, float %5565)  ; Frc(value)
  %5571 = call float @dx.op.unary.f32(i32 22, float %5564)  ; Frc(value)
  %5572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5570, float %5571, float %5568, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.ResRet.f32 %5572, 2
  %5576 = extractvalue %dx.types.ResRet.f32 %5572, 3
  %5577 = fcmp fast ogt float %5569, 0.000000e+00
  br i1 %5577, label %5578, label %5599, !dx.controlflow.hints !100

; <label>:5578                                    ; preds = %5561
  %5579 = fadd fast float %5568, 1.000000e+00
  %5580 = call float @dx.op.unary.f32(i32 22, float %5542)  ; Frc(value)
  %5581 = call float @dx.op.unary.f32(i32 22, float %5543)  ; Frc(value)
  %5582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5580, float %5581, float %5579, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5583 = extractvalue %dx.types.ResRet.f32 %5582, 0
  %5584 = extractvalue %dx.types.ResRet.f32 %5582, 1
  %5585 = extractvalue %dx.types.ResRet.f32 %5582, 2
  %5586 = extractvalue %dx.types.ResRet.f32 %5582, 3
  %5587 = fsub fast float %5583, %5573
  %5588 = fsub fast float %5584, %5574
  %5589 = fsub fast float %5585, %5575
  %5590 = fsub fast float %5586, %5576
  %5591 = fmul fast float %5587, %5569
  %5592 = fmul fast float %5588, %5569
  %5593 = fmul fast float %5589, %5569
  %5594 = fmul fast float %5590, %5569
  %5595 = fadd fast float %5591, %5573
  %5596 = fadd fast float %5592, %5574
  %5597 = fadd fast float %5593, %5575
  %5598 = fadd fast float %5594, %5576
  br label %5599

; <label>:5599                                    ; preds = %5578, %5561
  %5600 = phi float [ %5595, %5578 ], [ %5573, %5561 ]
  %5601 = phi float [ %5596, %5578 ], [ %5574, %5561 ]
  %5602 = phi float [ %5597, %5578 ], [ %5575, %5561 ]
  %5603 = phi float [ %5598, %5578 ], [ %5576, %5561 ]
  %5604 = fadd fast float %5600, -5.000000e-01
  %5605 = fadd fast float %5602, -5.000000e-01
  %5606 = fmul fast float %5604, 0xBFD5555560000000
  %5607 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5605, float %5606)  ; FMad(a,b,c)
  %5608 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5601, float 0.000000e+00)  ; FMad(a,b,c)
  %5609 = fadd fast float %5608, %5603
  %5610 = fmul fast float %5604, -7.500000e-01
  %5611 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5605, float %5610)  ; FMad(a,b,c)
  %5612 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5601, float 0.000000e+00)  ; FMad(a,b,c)
  %5613 = fadd fast float %5612, %5603
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5620 = extractvalue %dx.types.CBufRet.f32 %5616, 3
  %5621 = fsub fast float %5617, %5607
  %5622 = fsub fast float %5618, %5609
  %5623 = fsub fast float %5619, %5611
  %5624 = fsub fast float %5620, %5613
  %5625 = fmul fast float %5621, %5615
  %5626 = fmul fast float %5622, %5615
  %5627 = fmul fast float %5623, %5615
  %5628 = fmul fast float %5624, %5615
  %5629 = fadd fast float %5625, %5607
  %5630 = fadd fast float %5626, %5609
  %5631 = fadd fast float %5627, %5611
  %5632 = fadd fast float %5628, %5613
  %5633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.i32 %5633, 0
  %5635 = and i32 %5634, 536870911
  %5636 = uitofp i32 %5635 to float
  %5637 = fmul fast float %5636, %5483
  %5638 = fmul fast float %5636, %5487
  %5639 = fptoui float %5637 to i32
  %5640 = fptoui float %5638 to i32
  %5641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5642 = extractvalue %dx.types.ResRet.i32 %5641, 0
  %5643 = and i32 %5642, 31
  %5644 = lshr i32 %5639, %5643
  %5645 = lshr i32 %5640, %5643
  %5646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = and i32 %5647, 31
  %5649 = shl i32 1, %5648
  %5650 = call i32 @dx.op.binary.i32(i32 40, i32 %5649, i32 4)  ; UMin(a,b)
  %5651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.i32 %5651, 0
  %5653 = extractvalue %dx.types.ResRet.i32 %5651, 1
  %5654 = icmp eq i32 %5650, 0
  br i1 %5654, label %5696, label %5655

; <label>:5655                                    ; preds = %5599
  br label %5656

; <label>:5656                                    ; preds = %5684, %5655
  %5657 = phi i32 [ %5687, %5684 ], [ 0, %5655 ]
  %5658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5659 = extractvalue %dx.types.ResRet.i32 %5658, 0
  %5660 = lshr i32 %5659, 16
  %5661 = and i32 %5660, 31
  %5662 = shl i32 %5645, %5661
  %5663 = add i32 %5662, %5644
  %5664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.i32 %5664, 0
  %5666 = and i32 %5665, 31
  %5667 = shl i32 %5663, %5666
  %5668 = add i32 %5667, %5657
  %5669 = shl i32 %5668, 2
  %5670 = add i32 %5669, 32
  %5671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5670, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.i32 %5671, 0
  %5673 = icmp slt i32 %5672, 0
  %5674 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5657
  %5675 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5657
  %5676 = bitcast float* %5674 to i32*
  %5677 = bitcast float* %5675 to i32*
  br i1 %5673, label %5678, label %5684

; <label>:5678                                    ; preds = %5656
  %5679 = and i32 %5672, 1073741823
  %5680 = add nuw nsw i32 %5679, 20
  %5681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5680, i32 undef)  ; BufferLoad(srv,index,wot)
  %5682 = extractvalue %dx.types.ResRet.i32 %5681, 0
  %5683 = extractvalue %dx.types.ResRet.i32 %5681, 1
  br label %5684

; <label>:5684                                    ; preds = %5678, %5656
  %5685 = phi i32 [ %5682, %5678 ], [ %5652, %5656 ]
  %5686 = phi i32 [ %5683, %5678 ], [ %5653, %5656 ]
  store i32 %5685, i32* %5676, align 4
  store i32 %5686, i32* %5677, align 4
  %5687 = add nuw i32 %5657, 1
  %5688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.i32 %5688, 2
  %5690 = icmp eq i32 %5689, 0
  %5691 = icmp ugt i32 %5672, -1073741825
  %5692 = and i1 %5691, %5690
  %5693 = icmp ult i32 %5687, %5650
  %5694 = and i1 %5692, %5693
  br i1 %5694, label %5656, label %5695

; <label>:5695                                    ; preds = %5684
  br label %5696

; <label>:5696                                    ; preds = %5695, %5599
  %5697 = phi i32 [ 0, %5599 ], [ %5687, %5695 ]
  %5698 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5699 = fptoui float %5698 to i32
  %5700 = icmp eq i32 %5699, 0
  br i1 %5700, label %5752, label %5701

; <label>:5701                                    ; preds = %5696
  br label %5702

; <label>:5702                                    ; preds = %5747, %5701
  %5703 = phi i32 [ %5748, %5747 ], [ %5697, %5701 ]
  %5704 = phi i32 [ %5749, %5747 ], [ 0, %5701 ]
  %5705 = lshr i32 %5704, 2
  %5706 = and i32 %5704, 3
  %5707 = add nuw nsw i32 %5705, 83
  %5708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5707)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.i32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.i32 %5708, 1
  %5711 = extractvalue %dx.types.CBufRet.i32 %5708, 2
  %5712 = extractvalue %dx.types.CBufRet.i32 %5708, 3
  %5713 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5709, i32* %5713, align 4
  %5714 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5710, i32* %5714, align 4
  %5715 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5711, i32* %5715, align 4
  %5716 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5712, i32* %5716, align 4
  %5717 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5706
  %5718 = load i32, i32* %5717, align 4, !tbaa !101, !noalias !105
  %5719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5720 = extractvalue %dx.types.ResRet.i32 %5719, 0
  %5721 = lshr i32 %5720, 16
  %5722 = and i32 %5721, 31
  %5723 = shl i32 %5645, %5722
  %5724 = add i32 %5723, %5644
  %5725 = shl i32 %5724, 2
  %5726 = add i32 %5725, %5718
  %5727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5726, i32 undef)  ; BufferLoad(srv,index,wot)
  %5728 = extractvalue %dx.types.ResRet.i32 %5727, 0
  %5729 = icmp eq i32 %5728, 0
  br i1 %5729, label %5747, label %5730

; <label>:5730                                    ; preds = %5702
  %5731 = icmp slt i32 %5728, 0
  %5732 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5703
  %5733 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5703
  %5734 = bitcast float* %5732 to i32*
  %5735 = bitcast float* %5733 to i32*
  br i1 %5731, label %5736, label %5743

; <label>:5736                                    ; preds = %5730
  %5737 = and i32 %5728, 1073741823
  %5738 = add i32 %5718, 20
  %5739 = add i32 %5738, %5737
  %5740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5739, i32 undef)  ; BufferLoad(srv,index,wot)
  %5741 = extractvalue %dx.types.ResRet.i32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.i32 %5740, 1
  br label %5743

; <label>:5743                                    ; preds = %5736, %5730
  %5744 = phi i32 [ %5741, %5736 ], [ %5652, %5730 ]
  %5745 = phi i32 [ %5742, %5736 ], [ %5653, %5730 ]
  store i32 %5744, i32* %5734, align 4
  store i32 %5745, i32* %5735, align 4
  %5746 = add i32 %5703, 1
  br label %5747

; <label>:5747                                    ; preds = %5743, %5702
  %5748 = phi i32 [ %5703, %5702 ], [ %5746, %5743 ]
  %5749 = add nuw i32 %5704, 1
  %5750 = icmp eq i32 %5749, %5699
  br i1 %5750, label %5751, label %5702

; <label>:5751                                    ; preds = %5747
  br label %5752

; <label>:5752                                    ; preds = %5751, %5696
  %5753 = phi i32 [ %5697, %5696 ], [ %5748, %5751 ]
  %5754 = icmp eq i32 %5753, 1
  %5755 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %5756 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %5754, label %5757, label %5760

; <label>:5757                                    ; preds = %5752
  %5758 = load float, float* %5755, align 4
  %5759 = load float, float* %5756, align 4
  br label %5787

; <label>:5760                                    ; preds = %5752
  %5761 = load float, float* %5755, align 4
  %5762 = load float, float* %5756, align 4
  %5763 = fdiv fast float 1.000000e+00, %5762
  %5764 = fsub fast float %5761, %5763
  %5765 = icmp ugt i32 %5753, 1
  br i1 %5765, label %5766, label %5782

; <label>:5766                                    ; preds = %5760
  br label %5767

; <label>:5767                                    ; preds = %5767, %5766
  %5768 = phi float [ %5777, %5767 ], [ %5764, %5766 ]
  %5769 = phi float [ %5778, %5767 ], [ %5761, %5766 ]
  %5770 = phi i32 [ %5779, %5767 ], [ 1, %5766 ]
  %5771 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5770
  %5772 = load float, float* %5771, align 4
  %5773 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5770
  %5774 = load float, float* %5773, align 4
  %5775 = fdiv fast float 1.000000e+00, %5774
  %5776 = fsub fast float %5772, %5775
  %5777 = call float @dx.op.binary.f32(i32 36, float %5768, float %5776)  ; FMin(a,b)
  %5778 = call float @dx.op.binary.f32(i32 35, float %5769, float %5772)  ; FMax(a,b)
  %5779 = add nuw i32 %5770, 1
  %5780 = icmp eq i32 %5779, %5753
  br i1 %5780, label %5781, label %5767

; <label>:5781                                    ; preds = %5767
  br label %5782

; <label>:5782                                    ; preds = %5781, %5760
  %5783 = phi float [ %5764, %5760 ], [ %5777, %5781 ]
  %5784 = phi float [ %5761, %5760 ], [ %5778, %5781 ]
  %5785 = fsub fast float %5784, %5783
  %5786 = fdiv fast float 1.000000e+00, %5785
  br label %5787

; <label>:5787                                    ; preds = %5782, %5757
  %5788 = phi float [ %5758, %5757 ], [ %5784, %5782 ]
  %5789 = phi float [ %5759, %5757 ], [ %5786, %5782 ]
  %5790 = fadd fast float %5491, %5788
  %5791 = fmul fast float %5790, %5789
  %5792 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5793 = fmul fast float %5792, 2.000000e+00
  %5794 = fsub fast float 1.000000e+00, %5793
  %5795 = fmul fast float %5629, %5629
  %5796 = fsub fast float %5630, %5795
  %5797 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5796)  ; FMax(a,b)
  %5798 = fdiv fast float 1.000000e+00, %5797
  %5799 = fmul fast float %5630, %5629
  %5800 = fsub fast float %5631, %5799
  %5801 = fsub fast float %5794, %5629
  %5802 = fmul fast float %5794, %5794
  %5803 = fsub fast float %5802, %5630
  %5804 = fmul fast float %5798, %5800
  %5805 = fmul fast float %5804, %5801
  %5806 = fsub fast float %5803, %5805
  %5807 = fmul fast float %5630, %5630
  %5808 = fsub fast float %5632, %5807
  %5809 = fmul fast float %5800, %5800
  %5810 = fmul fast float %5809, %5798
  %5811 = fsub fast float %5808, %5810
  %5812 = fdiv fast float %5806, %5811
  %5813 = fmul fast float %5812, %5800
  %5814 = fsub fast float %5801, %5813
  %5815 = fmul fast float %5814, %5798
  %5816 = fmul fast float %5815, %5629
  %5817 = fsub fast float 1.000000e+00, %5816
  %5818 = fmul fast float %5812, %5630
  %5819 = fsub fast float %5817, %5818
  %5820 = fmul fast float %5815, %5815
  %5821 = fmul fast float %5812, 4.000000e+00
  %5822 = fmul fast float %5821, %5819
  %5823 = fsub fast float %5820, %5822
  %5824 = call float @dx.op.unary.f32(i32 24, float %5823)  ; Sqrt(value)
  %5825 = fcmp fast oge float %5815, 0.000000e+00
  %5826 = fsub fast float -0.000000e+00, %5824
  %5827 = select i1 %5825, float %5826, float %5824
  %5828 = fsub fast float %5827, %5815
  %5829 = fdiv fast float %5828, %5812
  %5830 = fdiv fast float %5819, %5828
  %5831 = fmul fast float %5829, 5.000000e-01
  %5832 = fmul fast float %5830, 2.000000e+00
  %5833 = select i1 %5825, float %5831, float %5832
  %5834 = select i1 %5825, float %5832, float %5831
  %5835 = call float @dx.op.binary.f32(i32 35, float %5833, float %5834)  ; FMax(a,b)
  %5836 = call float @dx.op.binary.f32(i32 36, float %5833, float %5834)  ; FMin(a,b)
  %5837 = fcmp fast ogt float %5794, %5835
  %5838 = fsub fast float %5794, %5836
  %5839 = fsub fast float %5794, %5835
  %5840 = fsub fast float %5835, %5836
  %5841 = select i1 %5837, float %5839, float %5840
  %5842 = fmul float %5838, %5841
  %5843 = select i1 %5837, float %5836, float %5794
  %5844 = fcmp fast ogt float %5794, %5836
  %5845 = fmul fast float %5843, %5835
  %5846 = fadd fast float %5843, %5835
  %5847 = fmul fast float %5846, %5629
  %5848 = fadd fast float %5845, %5630
  %5849 = fsub fast float %5848, %5847
  %5850 = fdiv fast float %5849, %5842
  %5851 = select i1 %5844, float %5850, float 0.000000e+00
  %5852 = fsub fast float 1.000000e+00, %5851
  %5853 = select i1 %5837, float %5852, float %5851
  %5854 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5614, 3
  %5856 = fmul fast float %5855, %5854
  %5857 = fsub fast float 1.000000e+00, %5856
  br label %5858

; <label>:5858                                    ; preds = %5787, %5499, %5464, %5460, %5424
  %5859 = phi float [ 1.000000e+00, %5424 ], [ %5857, %5787 ], [ 1.000000e+00, %5464 ], [ 1.000000e+00, %5499 ], [ 1.000000e+00, %5460 ]
  %5860 = fcmp fast ogt float %5456, 0.000000e+00
  br i1 %5860, label %5861, label %5869, !dx.controlflow.hints !114

; <label>:5861                                    ; preds = %5858
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = fadd fast float %5863, %5337
  %5865 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5866 = fadd fast float %5865, 0x3F10000000000000
  %5867 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5355, float %5356, float undef, float undef, i32 0, i32 0, i32 undef, float %5866)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 0
  br label %5869

; <label>:5869                                    ; preds = %5861, %5858
  %5870 = phi float [ %5868, %5861 ], [ 1.000000e+00, %5858 ]
  %5871 = fcmp fast ogt float %5454, 0.000000e+00
  br i1 %5871, label %5872, label %5880, !dx.controlflow.hints !115

; <label>:5872                                    ; preds = %5869
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5875 = fadd fast float %5874, %5337
  %5876 = call float @dx.op.binary.f32(i32 35, float %5875, float 0.000000e+00)  ; FMax(a,b)
  %5877 = fadd fast float %5876, 0x3F10000000000000
  %5878 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5347, float %5348, float undef, float undef, i32 0, i32 0, i32 undef, float %5877)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  br label %5880

; <label>:5880                                    ; preds = %5872, %5869
  %5881 = phi float [ %5879, %5872 ], [ 1.000000e+00, %5869 ]
  %5882 = fcmp fast ogt float %5453, 0.000000e+00
  br i1 %5882, label %5883, label %5895, !dx.controlflow.hints !116

; <label>:5883                                    ; preds = %5880
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = fadd fast float %5885, %5337
  %5887 = call float @dx.op.binary.f32(i32 35, float %5886, float 0.000000e+00)  ; FMax(a,b)
  %5888 = fadd fast float %5887, 0x3F10000000000000
  br i1 %5340, label %5889, label %5892, !dx.controlflow.hints !117

; <label>:5889                                    ; preds = %5883
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5329, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float %5888)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  br label %5895

; <label>:5892                                    ; preds = %5883
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5329, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float %5888)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  br label %5895

; <label>:5895                                    ; preds = %5892, %5889, %5880
  %5896 = phi float [ %5891, %5889 ], [ %5894, %5892 ], [ 1.000000e+00, %5880 ]
  %5897 = fsub fast float %5870, %5859
  %5898 = fmul fast float %5897, %5426
  %5899 = fadd fast float %5898, %5859
  %5900 = fsub fast float %5881, %5899
  %5901 = fmul fast float %5900, %5425
  %5902 = fadd fast float %5901, %5899
  %5903 = fsub fast float %5896, %5902
  %5904 = fmul fast float %5903, %5453
  %5905 = fadd fast float %5904, %5902
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  br i1 %5908, label %5909, label %5949, !dx.controlflow.hints !118

; <label>:5909                                    ; preds = %5895
  %5910 = fcmp fast ugt float %5907, 0.000000e+00
  br i1 %5910, label %5911, label %5946

; <label>:5911                                    ; preds = %5909
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5912, 3
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5921 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5922 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = fadd fast float %5925, %5306
  %5929 = fadd fast float %5926, %5307
  %5930 = fadd fast float %5927, %5308
  %5931 = fmul fast float %5928, %5913
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5914, float %5929, float %5931)  ; FMad(a,b,c)
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %5915, float %5930, float %5932)  ; FMad(a,b,c)
  %5934 = fadd fast float %5933, %5916
  %5935 = fmul fast float %5928, %5918
  %5936 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %5929, float %5935)  ; FMad(a,b,c)
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %5930, float %5936)  ; FMad(a,b,c)
  %5938 = fadd fast float %5937, %5921
  %5939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %5934, float %5938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  %5941 = fmul fast float %5940, %5923
  %5942 = fadd fast float %5941, %5922
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fmul fast float %5943, %5907
  %5945 = fsub fast float 1.000000e+00, %5944
  br label %5946

; <label>:5946                                    ; preds = %5911, %5909
  %5947 = phi float [ %5945, %5911 ], [ 1.000000e+00, %5909 ]
  %5948 = fmul fast float %5947, %5905
  br label %5949

; <label>:5949                                    ; preds = %5946, %5895, %5286
  %5950 = phi float [ 1.000000e+00, %5286 ], [ %5948, %5946 ], [ %5905, %5895 ]
  %5951 = call float @dx.op.binary.f32(i32 36, float %5950, float %5950)  ; FMin(a,b)
  %5952 = call float @dx.op.binary.f32(i32 36, float %5950, float %5951)  ; FMin(a,b)
  %5953 = fcmp fast ogt float %5952, 0.000000e+00
  br i1 %5953, label %5954, label %6114, !dx.controlflow.hints !119

; <label>:5954                                    ; preds = %5949
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.CBufRet.f32 %5955, 3
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.CBufRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5969 = extractvalue %dx.types.CBufRet.f32 %5965, 3
  %5970 = fmul fast float %5956, %5306
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5957, float %5970)  ; FMad(a,b,c)
  %5972 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5958, float %5971)  ; FMad(a,b,c)
  %5973 = fadd fast float %5972, %5959
  %5974 = fmul fast float %5961, %5306
  %5975 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5962, float %5974)  ; FMad(a,b,c)
  %5976 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5963, float %5975)  ; FMad(a,b,c)
  %5977 = fadd fast float %5976, %5964
  %5978 = fmul fast float %5966, %5306
  %5979 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5967, float %5978)  ; FMad(a,b,c)
  %5980 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5968, float %5979)  ; FMad(a,b,c)
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.CBufRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.CBufRet.f32 %5981, 3
  %5985 = fmul fast float %5984, %5973
  %5986 = fmul fast float %5984, %5977
  %5987 = fadd fast float %5985, %5982
  %5988 = fadd fast float %5986, %5983
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = fsub fast float %5987, %5990
  %5993 = fsub fast float %5988, %5991
  %5994 = fcmp fast olt float %5992, 0.000000e+00
  %5995 = fcmp fast olt float %5993, 0.000000e+00
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.CBufRet.f32 %5996, 2
  %6000 = extractvalue %dx.types.CBufRet.f32 %5996, 3
  %6001 = select i1 %5994, float %5997, float %5999
  %6002 = select i1 %5995, float %5998, float %6000
  %6003 = fmul fast float %6001, %5992
  %6004 = fmul fast float %6002, %5993
  %6005 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6006 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6007 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %6008 = call float @dx.op.binary.f32(i32 35, float %6005, float %6006)  ; FMax(a,b)
  %6009 = fsub fast float %6007, %6008
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = fcmp fast ogt float %6010, 0.000000e+00
  br i1 %6011, label %6012, label %6053, !dx.controlflow.hints !120

; <label>:6012                                    ; preds = %5954
  %6013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %5987, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6014 = extractvalue %dx.types.ResRet.f32 %6013, 1
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  br i1 %6015, label %6016, label %6048

; <label>:6016                                    ; preds = %6012
  %6017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %5987, float %5988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.ResRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.ResRet.f32 %6017, 2
  %6021 = extractvalue %dx.types.ResRet.f32 %6017, 3
  %6022 = fsub fast float 1.000000e+00, %5969
  %6023 = fsub fast float %6022, %5980
  %6024 = fmul fast float %6023, 0x400921FB60000000
  %6025 = fadd fast float %6024, 0x3FF921FB60000000
  %6026 = call float @dx.op.unary.f32(i32 13, float %6025)  ; Sin(value)
  %6027 = fadd fast float %6026, -1.000000e+00
  %6028 = fmul fast float %6027, 0x3FD45F3060000000
  %6029 = fmul fast float %6023, 0x401921FB60000000
  %6030 = fadd fast float %6029, 0x400921FB60000000
  %6031 = call float @dx.op.unary.f32(i32 13, float %6030)  ; Sin(value)
  %6032 = fadd fast float %6031, 0x3E7777A5C0000000
  %6033 = fmul fast float %6032, 0x3FC45F3060000000
  %6034 = fmul fast float %6023, 0x4022D97C80000000
  %6035 = fadd fast float %6034, 0x4012D97C80000000
  %6036 = call float @dx.op.unary.f32(i32 13, float %6035)  ; Sin(value)
  %6037 = fadd fast float %6036, 1.000000e+00
  %6038 = fmul fast float %6037, 0x3FBB2995E0000000
  %6039 = fmul fast float %6023, 0x402921FB60000000
  %6040 = fadd fast float %6039, 0x401921FB60000000
  %6041 = call float @dx.op.unary.f32(i32 13, float %6040)  ; Sin(value)
  %6042 = fadd fast float %6041, 0xBE8777A5C0000000
  %6043 = fmul fast float %6042, 0x3FB45F3060000000
  %6044 = call float @dx.op.dot4.f32(i32 56, float %6018, float %6019, float %6020, float %6021, float %6028, float %6033, float %6038, float %6043)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6045 = fmul fast float %6044, 0xBFF7154760000000
  %6046 = call float @dx.op.unary.f32(i32 21, float %6045)  ; Exp(value)
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  br label %6048

; <label>:6048                                    ; preds = %6016, %6012
  %6049 = phi float [ %6047, %6016 ], [ 1.000000e+00, %6012 ]
  %6050 = fadd fast float %6049, -1.000000e+00
  %6051 = fmul fast float %6050, %6010
  %6052 = fadd fast float %6051, 1.000000e+00
  br label %6053

; <label>:6053                                    ; preds = %6048, %5954
  %6054 = phi float [ %6052, %6048 ], [ 1.000000e+00, %5954 ]
  %6055 = fmul fast float %6054, %5950
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6060 = fadd fast float %6057, %193
  %6061 = fadd fast float %6058, %194
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 1
  %6064 = fsub fast float -0.000000e+00, %6060
  %6065 = fsub fast float -0.000000e+00, %6061
  %6066 = fsub fast float %5070, %6059
  %6067 = fadd fast float %6066, %6063
  %6068 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6064, float %6065, float %6067)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fdiv fast float 1.000000e+00, %6069
  %6071 = fmul fast float %6070, %6068
  %6072 = fmul fast float %5287, %6071
  %6073 = fmul fast float %5288, %6071
  %6074 = fadd fast float %6072, %6060
  %6075 = fadd fast float %6073, %6061
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = fsub fast float %6074, %6077
  %6080 = fsub fast float %6075, %6078
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 2
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 3
  %6084 = fmul fast float %6079, %6082
  %6085 = fmul fast float %6080, %6083
  %6086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.i32 %6086, 3
  %6088 = icmp eq i32 %6087, 0
  br i1 %6088, label %6094, label %6089

; <label>:6089                                    ; preds = %6053
  %6090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6084, float %6085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6091 = extractvalue %dx.types.ResRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.ResRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.ResRet.f32 %6090, 2
  br label %6099

; <label>:6094                                    ; preds = %6053
  %6095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6084, float %6085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6096 = extractvalue %dx.types.ResRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.ResRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.ResRet.f32 %6095, 2
  br label %6099

; <label>:6099                                    ; preds = %6094, %6089
  %6100 = phi float [ %6091, %6089 ], [ %6096, %6094 ]
  %6101 = phi float [ %6092, %6089 ], [ %6097, %6094 ]
  %6102 = phi float [ %6093, %6089 ], [ %6098, %6094 ]
  %6103 = extractvalue %dx.types.CBufRet.f32 %6062, 2
  %6104 = fmul fast float %6103, %6100
  %6105 = extractvalue %dx.types.CBufRet.f32 %6062, 0
  %6106 = fsub fast float %6071, %6105
  %6107 = fsub fast float %6106, %6104
  %6108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6107)  ; FMax(a,b)
  %6109 = fmul fast float %6108, %6101
  %6110 = call float @dx.op.binary.f32(i32 36, float %6102, float %6109)  ; FMin(a,b)
  %6111 = fmul fast float %6110, 0xBFF7154760000000
  %6112 = call float @dx.op.unary.f32(i32 21, float %6111)  ; Exp(value)
  %6113 = fmul fast float %6055, %6112
  br label %6114

; <label>:6114                                    ; preds = %6099, %5949
  %6115 = phi float [ %6113, %6099 ], [ %5950, %5949 ]
  %6116 = call float @dx.op.binary.f32(i32 36, float %6115, float %6115)  ; FMin(a,b)
  %6117 = call float @dx.op.binary.f32(i32 36, float %6115, float %6116)  ; FMin(a,b)
  %6118 = fcmp fast ogt float %6117, 0.000000e+00
  br i1 %6118, label %6119, label %6370, !dx.controlflow.hints !121

; <label>:6119                                    ; preds = %6114
  %6120 = fmul fast float %6115, %5298
  %6121 = fmul fast float %6115, %5299
  %6122 = fmul fast float %6115, %5300
  %6123 = fsub fast float %195, %4266
  %6124 = fcmp fast ogt float %6123, 0.000000e+00
  %6125 = fmul fast float %5287, 5.120000e+02
  %6126 = fmul fast float %5288, 5.120000e+02
  %6127 = fmul fast float %5289, 5.120000e+02
  %6128 = fadd fast float %6127, %195
  %6129 = fsub fast float %4266, %6128
  %6130 = fmul fast float %6129, 2.000000e+00
  %6131 = fadd fast float %6130, %6128
  %6132 = select i1 %6124, float %6131, float %6128
  %6133 = fsub fast float %6132, %195
  %6134 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6133, float %6125, float %6126, float %6133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6135 = call float @dx.op.unary.f32(i32 25, float %6134)  ; Rsqrt(value)
  %6136 = fmul fast float %6135, %6125
  %6137 = fmul fast float %6135, %6126
  %6138 = fmul fast float %6135, %6133
  %6139 = fsub fast float %4266, %195
  %6140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6136, float %6137, float %6138)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = fdiv fast float 1.000000e+00, %6141
  %6143 = fmul fast float %6142, %6140
  %6144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = fcmp fast ogt float %6144, 0.000000e+00
  %6146 = fcmp fast olt float %6144, 0.000000e+00
  %6147 = zext i1 %6145 to i32
  %6148 = zext i1 %6146 to i32
  %6149 = sub nsw i32 %6147, %6148
  %6150 = sitofp i32 %6149 to float
  %6151 = fsub fast float %6132, %4266
  %6152 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6151, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = fcmp fast ogt float %6152, 0.000000e+00
  %6154 = fcmp fast olt float %6152, 0.000000e+00
  %6155 = zext i1 %6153 to i32
  %6156 = zext i1 %6154 to i32
  %6157 = sub nsw i32 %6155, %6156
  %6158 = sitofp i32 %6157 to float
  %6159 = fcmp fast une float %6150, %6158
  br i1 %6159, label %6160, label %6170

; <label>:6160                                    ; preds = %6119
  %6161 = fmul fast float %6143, %6138
  %6162 = fmul fast float %6143, %6137
  %6163 = fmul fast float %6143, %6136
  %6164 = fmul fast float %6163, %6163
  %6165 = fmul fast float %6162, %6162
  %6166 = fadd fast float %6164, %6165
  %6167 = fmul fast float %6161, %6161
  %6168 = fadd fast float %6166, %6167
  %6169 = call float @dx.op.unary.f32(i32 24, float %6168)  ; Sqrt(value)
  br label %6180

; <label>:6170                                    ; preds = %6119
  %6171 = icmp slt i32 %6149, 0
  br i1 %6171, label %6172, label %6180

; <label>:6172                                    ; preds = %6170
  %6173 = fsub fast float %195, %6132
  %6174 = fmul fast float %6125, %6125
  %6175 = fmul fast float %6126, %6126
  %6176 = fadd fast float %6174, %6175
  %6177 = fmul fast float %6173, %6173
  %6178 = fadd fast float %6176, %6177
  %6179 = call float @dx.op.unary.f32(i32 24, float %6178)  ; Sqrt(value)
  br label %6180

; <label>:6180                                    ; preds = %6172, %6170, %6160
  %6181 = phi float [ %6169, %6160 ], [ %6179, %6172 ], [ 0.000000e+00, %6170 ]
  %6182 = fsub fast float -0.000000e+00, %6181
  %6183 = select i1 %6124, float -0.000000e+00, float %6182
  %6184 = fmul fast float %4267, 0x3FF7154760000000
  %6185 = fmul fast float %6184, %6183
  %6186 = fmul fast float %4268, 0x3FF7154760000000
  %6187 = fmul fast float %6186, %6183
  %6188 = fmul fast float %4269, 0x3FF7154760000000
  %6189 = fmul fast float %6188, %6183
  %6190 = call float @dx.op.unary.f32(i32 21, float %6185)  ; Exp(value)
  %6191 = call float @dx.op.unary.f32(i32 21, float %6187)  ; Exp(value)
  %6192 = call float @dx.op.unary.f32(i32 21, float %6189)  ; Exp(value)
  %6193 = call float @dx.op.unary.f32(i32 7, float %6190)  ; Saturate(value)
  %6194 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6195 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6196 = fmul fast float %6120, %6193
  %6197 = fmul fast float %6121, %6194
  %6198 = fmul fast float %6122, %6195
  %6199 = fsub fast float %5287, %5058
  %6200 = fsub fast float %5288, %5057
  %6201 = fsub fast float %5289, %5056
  %6202 = call float @dx.op.dot3.f32(i32 55, float %6199, float %6200, float %6201, float %6199, float %6200, float %6201)  ; Dot3(ax,ay,az,bx,by,bz)
  %6203 = call float @dx.op.unary.f32(i32 25, float %6202)  ; Rsqrt(value)
  %6204 = fmul fast float %6203, %6199
  %6205 = fmul fast float %6203, %6200
  %6206 = fmul fast float %6203, %6201
  %6207 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5054, float %5053, float %6204, float %6205, float %6206)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6210 = fmul fast float %6209, %6209
  %6211 = fmul fast float %6210, %5086
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = fmul fast float %6212, %6209
  %6214 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %6204, float %6205, float %6206)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = fmul fast float %6214, %6214
  %6216 = call float @dx.op.unary.f32(i32 6, float %6207)  ; FAbs(value)
  %6217 = fsub fast float 1.000000e+00, %5068
  %6218 = call float @dx.op.binary.f32(i32 35, float %6217, float 0x3F847AE140000000)  ; FMax(a,b)
  %6219 = fmul fast float %6218, %6218
  %6220 = fmul fast float %6219, %6219
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = fmul fast float %5073, %5073
  %6223 = fmul fast float %6222, %6221
  %6224 = fadd fast float %6223, %6220
  %6225 = bitcast float %6224 to i32
  %6226 = ashr i32 %6225, 1
  %6227 = add nsw i32 %6226, 532487669
  %6228 = bitcast i32 %6227 to float
  %6229 = fadd fast float %6228, %5073
  %6230 = fmul fast float %6220, %6215
  %6231 = fsub fast float 1.000000e+00, %6215
  %6232 = fadd fast float %6231, %6230
  %6233 = fmul fast float %6216, %6216
  %6234 = fmul fast float %6233, %6221
  %6235 = fadd fast float %6234, %6220
  %6236 = bitcast float %6235 to i32
  %6237 = ashr i32 %6236, 1
  %6238 = add nsw i32 %6237, 532487669
  %6239 = bitcast i32 %6238 to float
  %6240 = fadd fast float %6239, %6216
  %6241 = fmul fast float %6232, %6232
  %6242 = fmul fast float %6241, %6229
  %6243 = fmul fast float %6242, %6240
  %6244 = fdiv fast float 0x3FF0A00000000000, %6243
  %6245 = fmul fast float %6244, %6220
  %6246 = call float @dx.op.unary.f32(i32 6, float %6208)  ; FAbs(value)
  %6247 = fsub fast float 1.000000e+00, %6246
  %6248 = bitcast float %6247 to i32
  %6249 = sitofp i32 %6248 to float
  %6250 = fmul fast float %6249, 5.000000e+00
  %6251 = fadd fast float %6250, 0xC1EFBF8940000000
  %6252 = fptosi float %6251 to i32
  %6253 = bitcast i32 %6252 to float
  %6254 = fsub fast float 1.000000e+00, %5065
  %6255 = fsub fast float 1.000000e+00, %5066
  %6256 = fsub fast float 1.000000e+00, %5071
  %6257 = fmul fast float %6253, %6254
  %6258 = fmul fast float %6253, %6255
  %6259 = fmul fast float %6253, %6256
  %6260 = fadd fast float %6257, %5065
  %6261 = fadd fast float %6258, %5066
  %6262 = fadd fast float %6259, %5071
  br i1 %5198, label %6263, label %6286

; <label>:6263                                    ; preds = %6180
  %6264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3864, float %6246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.ResRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.ResRet.f32 %6264, 2
  %6268 = fadd fast float %6265, -5.000000e-01
  %6269 = fadd fast float %6266, -5.000000e-01
  %6270 = fadd fast float %6267, -5.000000e-01
  %6271 = fmul fast float %5065, 4.000000e+00
  %6272 = fmul fast float %6271, %6254
  %6273 = fmul fast float %6272, %6268
  %6274 = fmul fast float %5066, 4.000000e+00
  %6275 = fmul fast float %6274, %6255
  %6276 = fmul fast float %6275, %6269
  %6277 = fmul fast float %5071, 4.000000e+00
  %6278 = fmul fast float %6277, %6256
  %6279 = fmul fast float %6278, %6270
  %6280 = fadd fast float %6273, %6260
  %6281 = fadd fast float %6276, %6261
  %6282 = fadd fast float %6279, %6262
  %6283 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6285 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  br label %6286

; <label>:6286                                    ; preds = %6263, %6180
  %6287 = phi float [ %6283, %6263 ], [ %6260, %6180 ]
  %6288 = phi float [ %6284, %6263 ], [ %6261, %6180 ]
  %6289 = phi float [ %6285, %6263 ], [ %6262, %6180 ]
  %6290 = fmul fast float %6207, 9.843750e-01
  %6291 = fadd fast float %6290, 7.812500e-03
  %6292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6291, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 2
  %6294 = extractvalue %dx.types.ResRet.f32 %6292, 3
  %6295 = fmul fast float %6293, %5065
  %6296 = fmul fast float %6293, %5066
  %6297 = fmul fast float %6293, %5071
  %6298 = fadd fast float %6295, %6294
  %6299 = fadd fast float %6296, %6294
  %6300 = fadd fast float %6297, %6294
  br i1 %5198, label %6301, label %6324

; <label>:6301                                    ; preds = %6286
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3864, float %6207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.ResRet.f32 %6302, 2
  %6306 = fadd fast float %6303, -5.000000e-01
  %6307 = fadd fast float %6304, -5.000000e-01
  %6308 = fadd fast float %6305, -5.000000e-01
  %6309 = fmul fast float %5065, 4.000000e+00
  %6310 = fmul fast float %6309, %6254
  %6311 = fmul fast float %6310, %6306
  %6312 = fmul fast float %5066, 4.000000e+00
  %6313 = fmul fast float %6312, %6255
  %6314 = fmul fast float %6313, %6307
  %6315 = fmul fast float %5071, 4.000000e+00
  %6316 = fmul fast float %6315, %6256
  %6317 = fmul fast float %6316, %6308
  %6318 = fadd fast float %6311, %6298
  %6319 = fadd fast float %6314, %6299
  %6320 = fadd fast float %6317, %6300
  %6321 = call float @dx.op.unary.f32(i32 7, float %6318)  ; Saturate(value)
  %6322 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6323 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  br label %6324

; <label>:6324                                    ; preds = %6301, %6286
  %6325 = phi float [ %6321, %6301 ], [ %6298, %6286 ]
  %6326 = phi float [ %6322, %6301 ], [ %6299, %6286 ]
  %6327 = phi float [ %6323, %6301 ], [ %6300, %6286 ]
  %6328 = call float @dx.op.binary.f32(i32 35, float %6326, float %6327)  ; FMax(a,b)
  %6329 = call float @dx.op.binary.f32(i32 35, float %6325, float %6328)  ; FMax(a,b)
  %6330 = fsub fast float 1.000000e+00, %6329
  %6331 = fmul fast float %6287, %6245
  %6332 = fmul fast float %6288, %6245
  %6333 = fmul fast float %6289, %6245
  %6334 = fsub fast float 1.000000e+00, %6208
  %6335 = bitcast float %6334 to i32
  %6336 = sitofp i32 %6335 to float
  %6337 = fmul fast float %6336, 5.000000e+00
  %6338 = fadd fast float %6337, 0xC1EFBF8940000000
  %6339 = fptosi float %6338 to i32
  %6340 = bitcast i32 %6339 to float
  %6341 = fmul fast float %6340, %3865
  %6342 = fmul fast float %6330, %6341
  %6343 = fmul fast float %6342, %5248
  %6344 = fmul fast float %6342, %5249
  %6345 = fmul fast float %6342, %5250
  %6346 = fadd fast float %6343, %6331
  %6347 = fadd fast float %6344, %6332
  %6348 = fadd fast float %6345, %6333
  %6349 = fmul fast float %6213, %6196
  %6350 = fmul fast float %6349, %6330
  %6351 = fmul fast float %6213, %6197
  %6352 = fmul fast float %6351, %6330
  %6353 = fmul fast float %6213, %6198
  %6354 = fmul fast float %6353, %6330
  %6355 = fmul fast float %6349, %6346
  %6356 = fmul fast float %6351, %6347
  %6357 = fmul fast float %6353, %6348
  %6358 = fadd fast float %6350, %5232
  %6359 = fmul fast float %6358, %3861
  %6360 = fadd fast float %6352, %5233
  %6361 = fmul fast float %6360, %3861
  %6362 = fadd fast float %6354, %5234
  %6363 = fmul fast float %6362, %3861
  %6364 = fadd fast float %6355, %5275
  %6365 = fmul fast float %6364, %3861
  %6366 = fadd fast float %6356, %5278
  %6367 = fmul fast float %6366, %3861
  %6368 = fadd fast float %6357, %5281
  %6369 = fmul fast float %6368, %3861
  br label %6370

; <label>:6370                                    ; preds = %6324, %6114, %5225
  %6371 = phi float [ %5276, %5225 ], [ %5276, %6114 ], [ %6365, %6324 ]
  %6372 = phi float [ %5279, %5225 ], [ %5279, %6114 ], [ %6367, %6324 ]
  %6373 = phi float [ %5282, %5225 ], [ %5282, %6114 ], [ %6369, %6324 ]
  %6374 = phi float [ %5271, %5225 ], [ %5271, %6114 ], [ %6359, %6324 ]
  %6375 = phi float [ %5272, %5225 ], [ %5272, %6114 ], [ %6361, %6324 ]
  %6376 = phi float [ %5273, %5225 ], [ %5273, %6114 ], [ %6363, %6324 ]
  %6377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.i32 %6377, 0
  %6379 = icmp eq i32 %6378, 0
  br i1 %6379, label %7000, label %6380

; <label>:6380                                    ; preds = %6370
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6384 = fmul fast float %6382, %106
  %6385 = fmul fast float %6383, %107
  %6386 = fptoui float %6384 to i32
  %6387 = fptoui float %6385 to i32
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6391 = extractvalue %dx.types.CBufRet.f32 %6388, 3
  %6392 = fadd fast float %97, -4.000000e+00
  %6393 = call float @dx.op.binary.f32(i32 35, float %6392, float 0.000000e+00)  ; FMax(a,b)
  %6394 = fadd fast float %6393, %6389
  %6395 = fmul fast float %6394, %6390
  %6396 = call float @dx.op.unary.f32(i32 23, float %6395)  ; Log(value)
  %6397 = fmul fast float %6396, %6391
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6400 = fmul fast float %6397, %6399
  %6401 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  %6402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.i32 %6402, 1
  %6404 = add i32 %6403, -1
  %6405 = uitofp i32 %6403 to float
  %6406 = fmul fast float %6405, %6401
  %6407 = fptoui float %6406 to i32
  %6408 = call i32 @dx.op.binary.i32(i32 40, i32 %6407, i32 %6404)  ; UMin(a,b)
  %6409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.i32 %6409, 2
  %6411 = extractvalue %dx.types.CBufRet.i32 %6409, 3
  %6412 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6387, i32 %6410, i32 %6386)  ; UMad(a,b,c)
  %6413 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6408, i32 %6411, i32 %6412)  ; UMad(a,b,c)
  %6414 = add nsw i32 %6378, -1
  %6415 = call i32 @dx.op.binary.i32(i32 37, i32 %6414, i32 0)  ; IMax(a,b)
  %6416 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6417 = fptoui float %6416 to i32
  %6418 = lshr i32 %6417, 5
  %6419 = call i32 @dx.op.binary.i32(i32 40, i32 %6418, i32 8191)  ; UMin(a,b)
  %6420 = shl i32 %6419, 2
  %6421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6420, i32 undef)  ; BufferLoad(srv,index,wot)
  %6422 = extractvalue %dx.types.ResRet.i32 %6421, 0
  %6423 = lshr i32 %6422, 16
  %6424 = and i32 %6422, 65535
  %6425 = lshr i32 %6422, 21
  %6426 = lshr i32 %6424, 5
  %6427 = call i32 @dx.op.binary.i32(i32 40, i32 %6426, i32 %6415)  ; UMin(a,b)
  %6428 = icmp ugt i32 %6425, %6427
  br i1 %6428, label %7000, label %6429

; <label>:6429                                    ; preds = %6380
  br label %6430

; <label>:6430                                    ; preds = %6990, %6429
  %6431 = phi i32 [ %6997, %6990 ], [ %6425, %6429 ]
  %6432 = phi float [ %6991, %6990 ], [ %6371, %6429 ]
  %6433 = phi float [ %6992, %6990 ], [ %6372, %6429 ]
  %6434 = phi float [ %6993, %6990 ], [ %6373, %6429 ]
  %6435 = phi float [ %6994, %6990 ], [ %6374, %6429 ]
  %6436 = phi float [ %6995, %6990 ], [ %6375, %6429 ]
  %6437 = phi float [ %6996, %6990 ], [ %6376, %6429 ]
  %6438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.i32 %6438, 0
  %6440 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6413, i32 %6439, i32 %6431)  ; UMad(a,b,c)
  %6441 = shl i32 %6440, 2
  %6442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6441, i32 undef)  ; BufferLoad(srv,index,wot)
  %6443 = extractvalue %dx.types.ResRet.i32 %6442, 0
  %6444 = shl i32 %6431, 5
  %6445 = sub nsw i32 %6423, %6444
  %6446 = call i32 @dx.op.binary.i32(i32 37, i32 %6445, i32 0)  ; IMax(a,b)
  %6447 = call i32 @dx.op.binary.i32(i32 38, i32 %6446, i32 31)  ; IMin(a,b)
  %6448 = sub nsw i32 1, %6423
  %6449 = add nsw i32 %6448, %6424
  %6450 = call i32 @dx.op.binary.i32(i32 37, i32 %6449, i32 0)  ; IMax(a,b)
  %6451 = call i32 @dx.op.binary.i32(i32 38, i32 %6450, i32 32)  ; IMin(a,b)
  %6452 = and i32 %6451, 31
  %6453 = shl i32 -1, %6452
  %6454 = xor i32 %6453, -1
  %6455 = and i32 %6447, 31
  %6456 = shl i32 %6454, %6455
  %6457 = icmp eq i32 %6451, 32
  %6458 = select i1 %6457, i32 -1, i32 %6456
  %6459 = and i32 %6458, %6443
  %6460 = icmp eq i32 %6459, 0
  br i1 %6460, label %6990, label %6461

; <label>:6461                                    ; preds = %6430
  br label %6462

; <label>:6462                                    ; preds = %6596, %6461
  %6463 = phi i32 [ %6474, %6596 ], [ %6459, %6461 ]
  %6464 = phi float [ %6597, %6596 ], [ %6432, %6461 ]
  %6465 = phi float [ %6598, %6596 ], [ %6433, %6461 ]
  %6466 = phi float [ %6599, %6596 ], [ %6434, %6461 ]
  %6467 = phi float [ %6600, %6596 ], [ %6435, %6461 ]
  %6468 = phi float [ %6601, %6596 ], [ %6436, %6461 ]
  %6469 = phi float [ %6602, %6596 ], [ %6437, %6461 ]
  %6470 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6463)  ; FirstbitLo(value)
  %6471 = add i32 %6470, %6444
  %6472 = and i32 %6470, 31
  %6473 = shl i32 1, %6472
  %6474 = xor i32 %6473, %6463
  %6475 = mul i32 %6471, 112
  %6476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6475, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.ResRet.f32 %6476, 1
  %6479 = extractvalue %dx.types.ResRet.f32 %6476, 2
  %6480 = or i32 %6475, 12
  %6481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6480, i32 undef)  ; BufferLoad(srv,index,wot)
  %6482 = extractvalue %dx.types.ResRet.f32 %6481, 0
  %6483 = add i32 %6475, 16
  %6484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6483, i32 undef)  ; BufferLoad(srv,index,wot)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.ResRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.ResRet.f32 %6484, 2
  %6488 = add i32 %6475, 28
  %6489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6488, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.i32 %6489, 0
  %6491 = add i32 %6475, 44
  %6492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6491, i32 undef)  ; BufferLoad(srv,index,wot)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = add i32 %6475, 48
  %6495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6494, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.ResRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.ResRet.f32 %6495, 2
  %6499 = extractvalue %dx.types.ResRet.f32 %6495, 3
  %6500 = add i32 %6475, 64
  %6501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6500, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.ResRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.ResRet.f32 %6501, 2
  %6505 = extractvalue %dx.types.ResRet.f32 %6501, 3
  %6506 = add i32 %6475, 80
  %6507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6506, i32 undef)  ; BufferLoad(srv,index,wot)
  %6508 = extractvalue %dx.types.ResRet.f32 %6507, 1
  %6509 = extractvalue %dx.types.ResRet.f32 %6507, 2
  %6510 = add i32 %6475, 92
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = call float @dx.op.dot3.f32(i32 55, float %6477, float %6478, float %6479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = select i1 %259, float %6508, float %6477
  %6515 = select i1 %259, float %6513, float %6478
  %6516 = select i1 %259, float %6509, float %6479
  %6517 = and i32 %6512, 65535
  %6518 = uitofp i32 %6517 to float
  %6519 = lshr i32 %6512, 16
  %6520 = uitofp i32 %6519 to float
  %6521 = and i32 %6490, 65535
  %6522 = and i32 %6490, 50331648
  %6523 = icmp eq i32 %6522, 33554432
  %6524 = fsub fast float %6496, %193
  %6525 = fsub fast float %6497, %194
  %6526 = fsub fast float %6498, %195
  %6527 = call float @dx.op.dot3.f32(i32 55, float %6524, float %6525, float %6526, float %6524, float %6525, float %6526)  ; Dot3(ax,ay,az,bx,by,bz)
  %6528 = call float @dx.op.unary.f32(i32 24, float %6527)  ; Sqrt(value)
  %6529 = fdiv fast float 1.000000e+00, %6528
  %6530 = fmul fast float %6529, %6524
  %6531 = fmul fast float %6529, %6525
  %6532 = fmul fast float %6529, %6526
  %6533 = fadd fast float %6528, %6482
  %6534 = fdiv fast float 1.000000e+00, %6533
  %6535 = fmul float %6493, %6534
  %6536 = fmul float %6535, %6535
  %6537 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  br i1 %6523, label %6538, label %6559

; <label>:6538                                    ; preds = %6462
  %6539 = fmul fast float %6504, %6485
  %6540 = fmul fast float %6504, %6486
  %6541 = fmul fast float %6504, %6487
  %6542 = fadd fast float %6524, %6539
  %6543 = fadd fast float %6525, %6540
  %6544 = fadd fast float %6526, %6541
  %6545 = call float @dx.op.dot3.f32(i32 55, float %6542, float %6543, float %6544, float %6542, float %6543, float %6544)  ; Dot3(ax,ay,az,bx,by,bz)
  %6546 = call float @dx.op.unary.f32(i32 25, float %6545)  ; Rsqrt(value)
  %6547 = fmul fast float %6546, %6542
  %6548 = fmul fast float %6546, %6543
  %6549 = fmul fast float %6546, %6544
  %6550 = fsub fast float %193, %6496
  %6551 = fsub fast float %194, %6497
  %6552 = fsub fast float %195, %6498
  %6553 = fsub fast float -0.000000e+00, %6550
  %6554 = fsub fast float -0.000000e+00, %6551
  %6555 = fsub fast float -0.000000e+00, %6552
  %6556 = call float @dx.op.dot3.f32(i32 55, float %6553, float %6554, float %6555, float %6485, float %6486, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %6557 = fcmp fast ogt float %6556, 0.000000e+00
  %6558 = uitofp i1 %6557 to float
  br label %6559

; <label>:6559                                    ; preds = %6538, %6462
  %6560 = phi float [ %6558, %6538 ], [ 1.000000e+00, %6462 ]
  %6561 = phi float [ %6547, %6538 ], [ %6530, %6462 ]
  %6562 = phi float [ %6548, %6538 ], [ %6531, %6462 ]
  %6563 = phi float [ %6549, %6538 ], [ %6532, %6462 ]
  %6564 = call float @dx.op.dot3.f32(i32 55, float %6485, float %6486, float %6487, float %6561, float %6562, float %6563)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = fmul fast float %6564, %6564
  %6566 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = fmul fast float %6567, 5.000000e-01
  %6569 = fcmp fast ogt float %6564, 0.000000e+00
  %6570 = fsub fast float 1.000000e+00, %6568
  %6571 = select i1 %6569, float %6568, float %6570
  %6572 = fmul fast float %6571, %6520
  %6573 = fadd fast float %6572, %6518
  %6574 = fmul fast float %6573, 0x3EF0001000000000
  %6575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6574, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6576 = extractvalue %dx.types.ResRet.f32 %6575, 0
  %6577 = fmul fast float %6564, %6502
  %6578 = fadd fast float %6577, %6503
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = select i1 %6523, float 1.000000e+00, float %6579
  %6581 = select i1 %6523, float %6579, float 1.000000e+00
  %6582 = fmul fast float %6528, %6499
  %6583 = fsub fast float 1.000000e+00, %6582
  %6584 = fmul fast float %6583, %6505
  %6585 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6586 = fmul fast float %6585, %6581
  %6587 = fmul fast float %6586, 2.000000e+00
  %6588 = fsub fast float 3.000000e+00, %6587
  %6589 = fmul fast float %6576, %6560
  %6590 = fmul fast float %6586, %6586
  %6591 = fmul fast float %6590, %6589
  %6592 = fmul fast float %6591, %6588
  %6593 = call float @dx.op.binary.f32(i32 36, float %6592, float %6592)  ; FMin(a,b)
  %6594 = call float @dx.op.binary.f32(i32 36, float %6592, float %6593)  ; FMin(a,b)
  %6595 = fcmp fast ogt float %6594, 0.000000e+00
  br i1 %6595, label %6604, label %6596, !dx.controlflow.hints !122

; <label>:6596                                    ; preds = %6946, %6704, %6559
  %6597 = phi float [ %6464, %6704 ], [ %6464, %6559 ], [ %6986, %6946 ]
  %6598 = phi float [ %6465, %6704 ], [ %6465, %6559 ], [ %6987, %6946 ]
  %6599 = phi float [ %6466, %6704 ], [ %6466, %6559 ], [ %6988, %6946 ]
  %6600 = phi float [ %6467, %6704 ], [ %6467, %6559 ], [ %6980, %6946 ]
  %6601 = phi float [ %6468, %6704 ], [ %6468, %6559 ], [ %6981, %6946 ]
  %6602 = phi float [ %6469, %6704 ], [ %6469, %6559 ], [ %6982, %6946 ]
  %6603 = icmp eq i32 %6463, %6473
  br i1 %6603, label %6989, label %6462

; <label>:6604                                    ; preds = %6559
  %6605 = icmp eq i32 %6521, 255
  br i1 %6605, label %6704, label %6606, !dx.controlflow.hints !123

; <label>:6606                                    ; preds = %6604
  %6607 = mul nuw nsw i32 %6521, 176
  %6608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6607, i32 undef)  ; BufferLoad(srv,index,wot)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = extractvalue %dx.types.ResRet.f32 %6608, 1
  %6611 = extractvalue %dx.types.ResRet.f32 %6608, 2
  %6612 = extractvalue %dx.types.ResRet.f32 %6608, 3
  %6613 = add nuw nsw i32 %6607, 16
  %6614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6613, i32 undef)  ; BufferLoad(srv,index,wot)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = add nuw nsw i32 %6607, 32
  %6618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6617, i32 undef)  ; BufferLoad(srv,index,wot)
  %6619 = extractvalue %dx.types.ResRet.f32 %6618, 0
  %6620 = extractvalue %dx.types.ResRet.f32 %6618, 1
  %6621 = extractvalue %dx.types.ResRet.f32 %6618, 2
  %6622 = add nuw nsw i32 %6607, 48
  %6623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6622, i32 undef)  ; BufferLoad(srv,index,wot)
  %6624 = extractvalue %dx.types.ResRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.ResRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.ResRet.f32 %6623, 2
  %6627 = extractvalue %dx.types.ResRet.f32 %6623, 3
  %6628 = add nuw nsw i32 %6607, 64
  %6629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6628, i32 undef)  ; BufferLoad(srv,index,wot)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 0
  %6631 = extractvalue %dx.types.ResRet.f32 %6629, 1
  %6632 = extractvalue %dx.types.ResRet.f32 %6629, 2
  %6633 = extractvalue %dx.types.ResRet.f32 %6629, 3
  %6634 = add nuw nsw i32 %6607, 80
  %6635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6634, i32 undef)  ; BufferLoad(srv,index,wot)
  %6636 = extractvalue %dx.types.ResRet.f32 %6635, 0
  %6637 = extractvalue %dx.types.ResRet.f32 %6635, 1
  %6638 = extractvalue %dx.types.ResRet.f32 %6635, 2
  %6639 = extractvalue %dx.types.ResRet.f32 %6635, 3
  %6640 = add nuw nsw i32 %6607, 96
  %6641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6640, i32 undef)  ; BufferLoad(srv,index,wot)
  %6642 = extractvalue %dx.types.ResRet.f32 %6641, 0
  %6643 = extractvalue %dx.types.ResRet.f32 %6641, 1
  %6644 = extractvalue %dx.types.ResRet.f32 %6641, 2
  %6645 = extractvalue %dx.types.ResRet.f32 %6641, 3
  %6646 = bitcast float %6616 to i32
  %6647 = fmul fast float %6621, %113
  %6648 = fmul fast float %6621, %114
  %6649 = fmul fast float %6621, %115
  %6650 = fadd fast float %6647, %193
  %6651 = fadd fast float %6648, %194
  %6652 = fadd fast float %6649, %195
  %6653 = fmul fast float %6650, %6624
  %6654 = call float @dx.op.tertiary.f32(i32 46, float %6651, float %6630, float %6653)  ; FMad(a,b,c)
  %6655 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6636, float %6654)  ; FMad(a,b,c)
  %6656 = fadd fast float %6655, %6642
  %6657 = fmul fast float %6650, %6625
  %6658 = call float @dx.op.tertiary.f32(i32 46, float %6651, float %6631, float %6657)  ; FMad(a,b,c)
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6637, float %6658)  ; FMad(a,b,c)
  %6660 = fadd fast float %6659, %6643
  %6661 = fmul fast float %6650, %6626
  %6662 = call float @dx.op.tertiary.f32(i32 46, float %6651, float %6632, float %6661)  ; FMad(a,b,c)
  %6663 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6638, float %6662)  ; FMad(a,b,c)
  %6664 = fadd fast float %6663, %6644
  %6665 = fmul fast float %6650, %6627
  %6666 = call float @dx.op.tertiary.f32(i32 46, float %6651, float %6633, float %6665)  ; FMad(a,b,c)
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6639, float %6666)  ; FMad(a,b,c)
  %6668 = fadd fast float %6667, %6645
  %6669 = fdiv fast float %6656, %6668
  %6670 = fdiv fast float %6660, %6668
  %6671 = fdiv fast float %6664, %6668
  %6672 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6671)  ; FMax(a,b)
  %6673 = fmul fast float %270, 0x401921FB60000000
  %6674 = call float @dx.op.unary.f32(i32 13, float %6673)  ; Sin(value)
  %6675 = call float @dx.op.unary.f32(i32 12, float %6673)  ; Cos(value)
  %6676 = fsub fast float -0.000000e+00, %6674
  %6677 = fmul fast float %6611, 5.000000e-01
  %6678 = call float @dx.op.dot2.f32(i32 54, float %270, float %270, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6679 = call float @dx.op.unary.f32(i32 22, float %6678)  ; Frc(value)
  %6680 = fmul fast float %6679, 0x404A7DD040000000
  %6681 = call float @dx.op.unary.f32(i32 22, float %6680)  ; Frc(value)
  %6682 = fmul fast float %6681, %6620
  %6683 = fadd fast float %6682, %6677
  %6684 = call float @dx.op.tertiary.f32(i32 46, float %6683, float %6676, float 0.000000e+00)  ; FMad(a,b,c)
  %6685 = call float @dx.op.tertiary.f32(i32 46, float %6683, float %6675, float 0.000000e+00)  ; FMad(a,b,c)
  %6686 = fadd fast float %6684, %6669
  %6687 = fadd fast float %6685, %6670
  %6688 = fmul fast float %6686, %6615
  %6689 = fmul fast float %6687, %6615
  %6690 = call float @dx.op.binary.f32(i32 35, float %6688, float %6611)  ; FMax(a,b)
  %6691 = call float @dx.op.binary.f32(i32 35, float %6689, float %6611)  ; FMax(a,b)
  %6692 = call float @dx.op.binary.f32(i32 36, float %6690, float %6612)  ; FMin(a,b)
  %6693 = call float @dx.op.binary.f32(i32 36, float %6691, float %6612)  ; FMin(a,b)
  %6694 = fadd fast float %6692, %6609
  %6695 = fadd fast float %6693, %6610
  %6696 = uitofp i32 %6646 to float
  %6697 = fadd fast float %6672, %6619
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6694, float %6695, float %6696, float undef, i32 0, i32 0, i32 undef, float %6697)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = fadd fast float %6699, -1.000000e+00
  %6701 = fmul fast float %6700, %6580
  %6702 = fadd fast float %6701, 1.000000e+00
  %6703 = fmul fast float %6702, %6592
  br label %6704

; <label>:6704                                    ; preds = %6606, %6604
  %6705 = phi float [ %6703, %6606 ], [ %6592, %6604 ]
  %6706 = call float @dx.op.binary.f32(i32 36, float %6705, float %6705)  ; FMin(a,b)
  %6707 = call float @dx.op.binary.f32(i32 36, float %6705, float %6706)  ; FMin(a,b)
  %6708 = fcmp fast ogt float %6707, 0.000000e+00
  br i1 %6708, label %6709, label %6596, !dx.controlflow.hints !124

; <label>:6709                                    ; preds = %6704
  %6710 = fmul fast float %6705, %6514
  %6711 = fmul fast float %6705, %6515
  %6712 = fmul fast float %6705, %6516
  %6713 = fsub fast float %6498, %4266
  %6714 = fcmp fast ogt float %6713, 0.000000e+00
  %6715 = fsub fast float %195, %4266
  %6716 = fcmp fast ogt float %6715, 0.000000e+00
  %6717 = xor i1 %6716, %6714
  %6718 = fsub fast float %4266, %6498
  %6719 = fmul fast float %6718, 2.000000e+00
  %6720 = fadd fast float %6719, %6498
  %6721 = select i1 %6717, float %6498, float %6720
  %6722 = fsub fast float %6721, %195
  %6723 = call float @dx.op.dot3.f32(i32 55, float %6524, float %6525, float %6722, float %6524, float %6525, float %6722)  ; Dot3(ax,ay,az,bx,by,bz)
  %6724 = call float @dx.op.unary.f32(i32 25, float %6723)  ; Rsqrt(value)
  %6725 = fmul fast float %6724, %6524
  %6726 = fmul fast float %6724, %6525
  %6727 = fmul fast float %6724, %6722
  %6728 = fsub fast float %4266, %195
  %6729 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6728)  ; Dot3(ax,ay,az,bx,by,bz)
  %6730 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6725, float %6726, float %6727)  ; Dot3(ax,ay,az,bx,by,bz)
  %6731 = fdiv fast float 1.000000e+00, %6730
  %6732 = fmul fast float %6731, %6729
  %6733 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6715, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6734 = fcmp fast ogt float %6733, 0.000000e+00
  %6735 = fcmp fast olt float %6733, 0.000000e+00
  %6736 = zext i1 %6734 to i32
  %6737 = zext i1 %6735 to i32
  %6738 = sub nsw i32 %6736, %6737
  %6739 = sitofp i32 %6738 to float
  %6740 = fsub fast float %6721, %4266
  %6741 = call float @dx.op.dot3.f32(i32 55, float %6524, float %6525, float %6740, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6742 = fcmp fast ogt float %6741, 0.000000e+00
  %6743 = fcmp fast olt float %6741, 0.000000e+00
  %6744 = zext i1 %6742 to i32
  %6745 = zext i1 %6743 to i32
  %6746 = sub nsw i32 %6744, %6745
  %6747 = sitofp i32 %6746 to float
  %6748 = fcmp fast une float %6739, %6747
  br i1 %6748, label %6749, label %6759

; <label>:6749                                    ; preds = %6709
  %6750 = fmul fast float %6732, %6727
  %6751 = fmul fast float %6732, %6726
  %6752 = fmul fast float %6732, %6725
  %6753 = fmul fast float %6752, %6752
  %6754 = fmul fast float %6751, %6751
  %6755 = fadd fast float %6753, %6754
  %6756 = fmul fast float %6750, %6750
  %6757 = fadd fast float %6755, %6756
  %6758 = call float @dx.op.unary.f32(i32 24, float %6757)  ; Sqrt(value)
  br label %6771

; <label>:6759                                    ; preds = %6709
  %6760 = icmp slt i32 %6738, 0
  br i1 %6760, label %6761, label %6771

; <label>:6761                                    ; preds = %6759
  %6762 = fsub fast float %193, %6496
  %6763 = fsub fast float %194, %6497
  %6764 = fsub fast float %195, %6721
  %6765 = fmul fast float %6762, %6762
  %6766 = fmul fast float %6763, %6763
  %6767 = fadd fast float %6765, %6766
  %6768 = fmul fast float %6764, %6764
  %6769 = fadd fast float %6767, %6768
  %6770 = call float @dx.op.unary.f32(i32 24, float %6769)  ; Sqrt(value)
  br label %6771

; <label>:6771                                    ; preds = %6761, %6759, %6749
  %6772 = phi float [ %6758, %6749 ], [ %6770, %6761 ], [ 0.000000e+00, %6759 ]
  %6773 = and i1 %6716, %6714
  %6774 = fsub fast float -0.000000e+00, %6772
  %6775 = select i1 %6773, float -0.000000e+00, float %6774
  %6776 = fmul fast float %4267, 0x3FF7154760000000
  %6777 = fmul fast float %6776, %6775
  %6778 = fmul fast float %4268, 0x3FF7154760000000
  %6779 = fmul fast float %6778, %6775
  %6780 = fmul fast float %4269, 0x3FF7154760000000
  %6781 = fmul fast float %6780, %6775
  %6782 = call float @dx.op.unary.f32(i32 21, float %6777)  ; Exp(value)
  %6783 = call float @dx.op.unary.f32(i32 21, float %6779)  ; Exp(value)
  %6784 = call float @dx.op.unary.f32(i32 21, float %6781)  ; Exp(value)
  %6785 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  %6786 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6787 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6788 = fmul fast float %6710, %6785
  %6789 = fmul fast float %6711, %6786
  %6790 = fmul fast float %6712, %6787
  %6791 = fsub fast float %6530, %5058
  %6792 = fsub fast float %6531, %5057
  %6793 = fsub fast float %6532, %5056
  %6794 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %6793, float %6791, float %6792, float %6793)  ; Dot3(ax,ay,az,bx,by,bz)
  %6795 = call float @dx.op.unary.f32(i32 25, float %6794)  ; Rsqrt(value)
  %6796 = fmul fast float %6795, %6791
  %6797 = fmul fast float %6795, %6792
  %6798 = fmul fast float %6795, %6793
  %6799 = call float @dx.op.dot3.f32(i32 55, float %6530, float %6531, float %6532, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %6800 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5054, float %5053, float %6796, float %6797, float %6798)  ; Dot3(ax,ay,az,bx,by,bz)
  %6801 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6802 = fmul fast float %6801, %6537
  %6803 = fmul fast float %6801, %6801
  %6804 = fmul fast float %6803, %5086
  %6805 = call float @dx.op.unary.f32(i32 7, float %6804)  ; Saturate(value)
  %6806 = fmul fast float %6802, %6805
  %6807 = bitcast float %6527 to i32
  %6808 = ashr i32 %6807, 1
  %6809 = sub nsw i32 1597463007, %6808
  %6810 = bitcast i32 %6809 to float
  %6811 = fmul fast float %6810, %6524
  %6812 = fmul fast float %6810, %6525
  %6813 = fmul fast float %6810, %6526
  %6814 = fsub fast float %6811, %5058
  %6815 = fsub fast float %6812, %5057
  %6816 = fsub fast float %6813, %5056
  %6817 = call float @dx.op.dot3.f32(i32 55, float %6814, float %6815, float %6816, float %6814, float %6815, float %6816)  ; Dot3(ax,ay,az,bx,by,bz)
  %6818 = call float @dx.op.unary.f32(i32 25, float %6817)  ; Rsqrt(value)
  %6819 = fmul fast float %6814, %6818
  %6820 = fmul fast float %6815, %6818
  %6821 = fmul fast float %6816, %6818
  %6822 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %6819, float %6820, float %6821)  ; Dot3(ax,ay,az,bx,by,bz)
  %6823 = fmul fast float %6822, %6822
  %6824 = call float @dx.op.unary.f32(i32 6, float %6799)  ; FAbs(value)
  %6825 = fsub fast float 1.000000e+00, %5068
  %6826 = call float @dx.op.binary.f32(i32 35, float %6825, float 0x3F847AE140000000)  ; FMax(a,b)
  %6827 = fmul fast float %6826, %6826
  %6828 = fmul fast float %6827, %6827
  %6829 = fsub fast float 1.000000e+00, %6828
  %6830 = fmul fast float %5073, %5073
  %6831 = fmul fast float %6830, %6829
  %6832 = fadd fast float %6831, %6828
  %6833 = bitcast float %6832 to i32
  %6834 = ashr i32 %6833, 1
  %6835 = add nsw i32 %6834, 532487669
  %6836 = bitcast i32 %6835 to float
  %6837 = fadd fast float %6836, %5073
  %6838 = fmul fast float %6828, %6823
  %6839 = fsub fast float 1.000000e+00, %6823
  %6840 = fadd fast float %6839, %6838
  %6841 = fmul fast float %6824, %6824
  %6842 = fmul fast float %6841, %6829
  %6843 = fadd fast float %6842, %6828
  %6844 = bitcast float %6843 to i32
  %6845 = ashr i32 %6844, 1
  %6846 = add nsw i32 %6845, 532487669
  %6847 = bitcast i32 %6846 to float
  %6848 = fadd fast float %6847, %6824
  %6849 = fmul fast float %6840, %6840
  %6850 = fmul fast float %6849, %6837
  %6851 = fmul fast float %6850, %6848
  %6852 = fdiv fast float 1.000000e+00, %6851
  %6853 = bitcast float %6828 to i32
  %6854 = sitofp i32 %6853 to float
  %6855 = fmul fast float %6854, 0x3FE7F73180000000
  %6856 = fadd fast float %6855, 0x41AFE27C40000000
  %6857 = fptosi float %6856 to i32
  %6858 = bitcast i32 %6857 to float
  %6859 = fmul fast float %6493, 0x3FD80E9D60000000
  %6860 = fmul fast float %6859, %6810
  %6861 = fadd fast float %6858, %6860
  %6862 = bitcast float %6861 to i32
  %6863 = sub nsw i32 2129859010, %6862
  %6864 = bitcast i32 %6863 to float
  %6865 = fmul fast float %6828, %6852
  %6866 = fmul fast float %6865, %6858
  %6867 = fmul fast float %6866, %6864
  %6868 = call float @dx.op.unary.f32(i32 6, float %6800)  ; FAbs(value)
  %6869 = fsub fast float 1.000000e+00, %6868
  %6870 = bitcast float %6869 to i32
  %6871 = sitofp i32 %6870 to float
  %6872 = fmul fast float %6871, 5.000000e+00
  %6873 = fadd fast float %6872, 0xC1EFBF8940000000
  %6874 = fptosi float %6873 to i32
  %6875 = bitcast i32 %6874 to float
  %6876 = fsub fast float 1.000000e+00, %5065
  %6877 = fsub fast float 1.000000e+00, %5066
  %6878 = fsub fast float 1.000000e+00, %5071
  %6879 = fmul fast float %6875, %6876
  %6880 = fmul fast float %6875, %6877
  %6881 = fmul fast float %6875, %6878
  %6882 = fadd fast float %6879, %5065
  %6883 = fadd fast float %6880, %5066
  %6884 = fadd fast float %6881, %5071
  br i1 %5198, label %6885, label %6908

; <label>:6885                                    ; preds = %6771
  %6886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3864, float %6868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6887 = extractvalue %dx.types.ResRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.ResRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.ResRet.f32 %6886, 2
  %6890 = fadd fast float %6887, -5.000000e-01
  %6891 = fadd fast float %6888, -5.000000e-01
  %6892 = fadd fast float %6889, -5.000000e-01
  %6893 = fmul fast float %5065, 4.000000e+00
  %6894 = fmul fast float %6893, %6876
  %6895 = fmul fast float %6894, %6890
  %6896 = fmul fast float %5066, 4.000000e+00
  %6897 = fmul fast float %6896, %6877
  %6898 = fmul fast float %6897, %6891
  %6899 = fmul fast float %5071, 4.000000e+00
  %6900 = fmul fast float %6899, %6878
  %6901 = fmul fast float %6900, %6892
  %6902 = fadd fast float %6895, %6882
  %6903 = fadd fast float %6898, %6883
  %6904 = fadd fast float %6901, %6884
  %6905 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6906 = call float @dx.op.unary.f32(i32 7, float %6903)  ; Saturate(value)
  %6907 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  br label %6908

; <label>:6908                                    ; preds = %6885, %6771
  %6909 = phi float [ %6905, %6885 ], [ %6882, %6771 ]
  %6910 = phi float [ %6906, %6885 ], [ %6883, %6771 ]
  %6911 = phi float [ %6907, %6885 ], [ %6884, %6771 ]
  %6912 = fmul fast float %6799, 9.843750e-01
  %6913 = fadd fast float %6912, 7.812500e-03
  %6914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6913, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6915 = extractvalue %dx.types.ResRet.f32 %6914, 2
  %6916 = extractvalue %dx.types.ResRet.f32 %6914, 3
  %6917 = fmul fast float %6915, %5065
  %6918 = fmul fast float %6915, %5066
  %6919 = fmul fast float %6915, %5071
  %6920 = fadd fast float %6917, %6916
  %6921 = fadd fast float %6918, %6916
  %6922 = fadd fast float %6919, %6916
  br i1 %5198, label %6923, label %6946

; <label>:6923                                    ; preds = %6908
  %6924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3864, float %6799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6925 = extractvalue %dx.types.ResRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.ResRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.ResRet.f32 %6924, 2
  %6928 = fadd fast float %6925, -5.000000e-01
  %6929 = fadd fast float %6926, -5.000000e-01
  %6930 = fadd fast float %6927, -5.000000e-01
  %6931 = fmul fast float %5065, 4.000000e+00
  %6932 = fmul fast float %6931, %6876
  %6933 = fmul fast float %6932, %6928
  %6934 = fmul fast float %5066, 4.000000e+00
  %6935 = fmul fast float %6934, %6877
  %6936 = fmul fast float %6935, %6929
  %6937 = fmul fast float %5071, 4.000000e+00
  %6938 = fmul fast float %6937, %6878
  %6939 = fmul fast float %6938, %6930
  %6940 = fadd fast float %6933, %6920
  %6941 = fadd fast float %6936, %6921
  %6942 = fadd fast float %6939, %6922
  %6943 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6944 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6945 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  br label %6946

; <label>:6946                                    ; preds = %6923, %6908
  %6947 = phi float [ %6943, %6923 ], [ %6920, %6908 ]
  %6948 = phi float [ %6944, %6923 ], [ %6921, %6908 ]
  %6949 = phi float [ %6945, %6923 ], [ %6922, %6908 ]
  %6950 = call float @dx.op.binary.f32(i32 35, float %6948, float %6949)  ; FMax(a,b)
  %6951 = call float @dx.op.binary.f32(i32 35, float %6947, float %6950)  ; FMax(a,b)
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = fmul fast float %6909, %6867
  %6954 = fmul fast float %6910, %6867
  %6955 = fmul fast float %6911, %6867
  %6956 = fsub fast float 1.000000e+00, %6800
  %6957 = bitcast float %6956 to i32
  %6958 = sitofp i32 %6957 to float
  %6959 = fmul fast float %6958, 5.000000e+00
  %6960 = fadd fast float %6959, 0xC1EFBF8940000000
  %6961 = fptosi float %6960 to i32
  %6962 = bitcast i32 %6961 to float
  %6963 = fmul fast float %6962, %3865
  %6964 = fmul fast float %6952, %6963
  %6965 = fmul fast float %6964, %5248
  %6966 = fmul fast float %6964, %5249
  %6967 = fmul fast float %6964, %5250
  %6968 = fadd fast float %6965, %6953
  %6969 = fadd fast float %6966, %6954
  %6970 = fadd fast float %6967, %6955
  %6971 = fmul fast float %6788, %3861
  %6972 = fmul fast float %6971, %6806
  %6973 = fmul fast float %6972, %6952
  %6974 = fmul fast float %6789, %3861
  %6975 = fmul fast float %6974, %6806
  %6976 = fmul fast float %6975, %6952
  %6977 = fmul fast float %6790, %3861
  %6978 = fmul fast float %6977, %6806
  %6979 = fmul fast float %6978, %6952
  %6980 = fadd fast float %6973, %6467
  %6981 = fadd fast float %6976, %6468
  %6982 = fadd fast float %6979, %6469
  %6983 = fmul fast float %6972, %6968
  %6984 = fmul fast float %6975, %6969
  %6985 = fmul fast float %6978, %6970
  %6986 = fadd fast float %6983, %6464
  %6987 = fadd fast float %6984, %6465
  %6988 = fadd fast float %6985, %6466
  br label %6596

; <label>:6989                                    ; preds = %6596
  br label %6990

; <label>:6990                                    ; preds = %6989, %6430
  %6991 = phi float [ %6432, %6430 ], [ %6597, %6989 ]
  %6992 = phi float [ %6433, %6430 ], [ %6598, %6989 ]
  %6993 = phi float [ %6434, %6430 ], [ %6599, %6989 ]
  %6994 = phi float [ %6435, %6430 ], [ %6600, %6989 ]
  %6995 = phi float [ %6436, %6430 ], [ %6601, %6989 ]
  %6996 = phi float [ %6437, %6430 ], [ %6602, %6989 ]
  %6997 = add i32 %6431, 1
  %6998 = icmp ugt i32 %6997, %6427
  br i1 %6998, label %6999, label %6430

; <label>:6999                                    ; preds = %6990
  br label %7000

; <label>:7000                                    ; preds = %6999, %6380, %6370
  %7001 = phi float [ %6371, %6370 ], [ %6371, %6380 ], [ %6991, %6999 ]
  %7002 = phi float [ %6372, %6370 ], [ %6372, %6380 ], [ %6992, %6999 ]
  %7003 = phi float [ %6373, %6370 ], [ %6373, %6380 ], [ %6993, %6999 ]
  %7004 = phi float [ %6374, %6370 ], [ %6374, %6380 ], [ %6994, %6999 ]
  %7005 = phi float [ %6375, %6370 ], [ %6375, %6380 ], [ %6995, %6999 ]
  %7006 = phi float [ %6376, %6370 ], [ %6376, %6380 ], [ %6996, %6999 ]
  %7007 = fmul fast float %3861, %3861
  %7008 = fsub fast float 1.000000e+00, %7007
  %7009 = call float @dx.op.dot3.f32(i32 55, float %7008, float %7008, float %7008, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7010 = fsub fast float 1.000000e+00, %7009
  %7011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.f32 %7011, 0
  %7013 = fmul fast float %7012, %5254
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7016 = fsub fast float 1.000000e+00, %3869
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7018 = fadd fast float %7006, %3867
  %7019 = fmul fast float %7018, %3869
  %7020 = fmul fast float %7017, %7015
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7023 = fmul fast float %7004, %5062
  %7024 = fmul fast float %7005, %5063
  %7025 = fmul fast float %7006, %5064
  %7026 = fcmp fast ogt float %97, %222
  %7027 = and i1 %7026, %4272
  %7028 = or i1 %4278, %7027
  %7029 = icmp eq i32 %4271, 2
  %7030 = fcmp fast ole float %97, %222
  %7031 = and i1 %7030, %7029
  %7032 = or i1 %7031, %7028
  br i1 %7027, label %7033, label %7290

; <label>:7033                                    ; preds = %7000
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7036 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7037 = fmul fast float %7035, %106
  %7038 = fmul fast float %7036, %107
  %7039 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  %7040 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7041 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7039, float %7040, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7042 = extractvalue %dx.types.ResRet.f32 %7041, 0
  %7043 = extractvalue %dx.types.ResRet.f32 %7041, 1
  %7044 = extractvalue %dx.types.ResRet.f32 %7041, 2
  %7045 = extractvalue %dx.types.ResRet.f32 %7041, 3
  %7046 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7039, float %7040, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7047 = extractvalue %dx.types.ResRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.ResRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.ResRet.f32 %7046, 2
  %7050 = extractvalue %dx.types.ResRet.f32 %7046, 3
  %7051 = call float @dx.op.binary.f32(i32 35, float %7043, float %7044)  ; FMax(a,b)
  %7052 = call float @dx.op.binary.f32(i32 35, float %7042, float %7051)  ; FMax(a,b)
  %7053 = call float @dx.op.binary.f32(i32 35, float %7052, float %7045)  ; FMax(a,b)
  %7054 = call float @dx.op.binary.f32(i32 36, float %7048, float %7049)  ; FMin(a,b)
  %7055 = call float @dx.op.binary.f32(i32 36, float %7047, float %7054)  ; FMin(a,b)
  %7056 = call float @dx.op.binary.f32(i32 36, float %7055, float %7050)  ; FMin(a,b)
  %7057 = fmul fast float %7053, 2.550000e+02
  %7058 = fadd fast float %7057, 0x3F70101020000000
  %7059 = fptoui float %7058 to i32
  %7060 = fmul fast float %7056, 2.550000e+02
  %7061 = fadd fast float %7060, 0x3F70101020000000
  %7062 = fptoui float %7061 to i32
  %7063 = icmp ult i32 %7059, %7062
  br i1 %7063, label %7064, label %7232

; <label>:7064                                    ; preds = %7033
  %7065 = fcmp fast ogt float %96, 9.843750e-01
  %7066 = fadd fast float %97, -4.000000e+00
  %7067 = select i1 %7065, float -4.000000e+00, float %7066
  %7068 = call float @dx.op.binary.f32(i32 35, float %7067, float 0.000000e+00)  ; FMax(a,b)
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 0
  %7071 = fadd fast float %7070, %7068
  %7072 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7073 = fmul fast float %7071, %7072
  %7074 = call float @dx.op.unary.f32(i32 23, float %7073)  ; Log(value)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7076 = fmul fast float %7075, %7074
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7079 = fmul fast float %7076, %7078
  %7080 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  %7081 = uitofp i32 %7059 to float
  %7082 = uitofp i32 %7062 to float
  %7083 = fadd fast float %7081, 5.000000e-01
  %7084 = fadd fast float %7082, 5.000000e-01
  %7085 = fmul fast float %7078, %7083
  %7086 = fmul fast float %7078, %7084
  %7087 = fadd fast float %7085, 0x3F0FFB4800000000
  %7088 = fadd fast float %7086, 0xBF0FFB4800000000
  %7089 = call float @dx.op.binary.f32(i32 35, float %7080, float %7087)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 36, float %7089, float %7088)  ; FMin(a,b)
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7093 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7094 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7095 = fmul fast float %7092, %7090
  %7096 = fadd fast float %7094, %7095
  %7097 = fadd fast float %7094, %7093
  %7098 = fsub fast float %7092, %7093
  %7099 = fadd fast float %7098, %7094
  %7100 = call float @dx.op.binary.f32(i32 35, float %7096, float %7097)  ; FMax(a,b)
  %7101 = call float @dx.op.binary.f32(i32 36, float %7100, float %7099)  ; FMin(a,b)
  %7102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7039, float %7040, float %7101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.ResRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.ResRet.f32 %7102, 2
  %7106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.i32 %7106, 0
  %7108 = extractvalue %dx.types.CBufRet.i32 %7106, 1
  %7109 = uitofp i32 %7107 to float
  %7110 = uitofp i32 %7108 to float
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 0
  %7113 = extractvalue %dx.types.CBufRet.f32 %7111, 1
  %7114 = fmul fast float %7109, %7039
  %7115 = fmul fast float %7110, %7040
  %7116 = fadd fast float %7114, -5.000000e-01
  %7117 = fadd fast float %7115, -5.000000e-01
  %7118 = call float @dx.op.unary.f32(i32 22, float %7116)  ; Frc(value)
  %7119 = call float @dx.op.unary.f32(i32 22, float %7117)  ; Frc(value)
  %7120 = fmul fast float %7118, %7118
  %7121 = fmul fast float %7120, %7118
  %7122 = fsub fast float 3.000000e+00, %7118
  %7123 = fmul fast float %7120, %7122
  %7124 = fmul fast float %7118, 3.000000e+00
  %7125 = fmul fast float %7121, 3.000000e+00
  %7126 = fmul fast float %7120, 6.000000e+00
  %7127 = fsub fast float %7125, %7126
  %7128 = fadd fast float %7127, 4.000000e+00
  %7129 = fmul fast float %7128, 0x3FC5555560000000
  %7130 = fmul fast float %7121, -3.000000e+00
  %7131 = fadd fast float %7120, %7118
  %7132 = fmul fast float %7131, 3.000000e+00
  %7133 = fadd fast float %7130, 1.000000e+00
  %7134 = fadd fast float %7133, %7132
  %7135 = fmul fast float %7121, 0x3FC5555560000000
  %7136 = fmul fast float %7119, %7119
  %7137 = fmul fast float %7136, %7119
  %7138 = fsub fast float 3.000000e+00, %7119
  %7139 = fmul fast float %7136, %7138
  %7140 = fmul fast float %7119, 3.000000e+00
  %7141 = fmul fast float %7137, 3.000000e+00
  %7142 = fmul fast float %7136, 6.000000e+00
  %7143 = fsub fast float %7141, %7142
  %7144 = fadd fast float %7143, 4.000000e+00
  %7145 = fmul fast float %7144, 0x3FC5555560000000
  %7146 = fmul fast float %7137, -3.000000e+00
  %7147 = fadd fast float %7136, %7119
  %7148 = fmul fast float %7147, 3.000000e+00
  %7149 = fadd fast float %7146, 1.000000e+00
  %7150 = fadd fast float %7149, %7148
  %7151 = fmul fast float %7137, 0x3FC5555560000000
  %7152 = fadd fast float %7118, 1.000000e+00
  %7153 = fsub fast float 1.000000e+00, %7124
  %7154 = fadd fast float %7153, %7123
  %7155 = fadd fast float %7154, %7128
  %7156 = fmul fast float %7155, 0x3FC5555560000000
  %7157 = fdiv fast float %7129, %7156
  %7158 = fsub fast float %7152, %7157
  %7159 = fsub fast float 1.000000e+00, %7118
  %7160 = fadd fast float %7134, %7121
  %7161 = fmul fast float %7160, 0x3FC5555560000000
  %7162 = fdiv fast float %7135, %7161
  %7163 = fadd fast float %7159, %7162
  %7164 = fadd fast float %7119, 1.000000e+00
  %7165 = fsub fast float 1.000000e+00, %7140
  %7166 = fadd fast float %7165, %7139
  %7167 = fadd fast float %7166, %7144
  %7168 = fmul fast float %7167, 0x3FC5555560000000
  %7169 = fdiv fast float %7145, %7168
  %7170 = fsub fast float %7164, %7169
  %7171 = fsub fast float 1.000000e+00, %7119
  %7172 = fadd fast float %7150, %7137
  %7173 = fmul fast float %7172, 0x3FC5555560000000
  %7174 = fdiv fast float %7151, %7173
  %7175 = fadd fast float %7174, %7171
  %7176 = fmul fast float %7158, %7112
  %7177 = fsub fast float %7039, %7176
  %7178 = fmul fast float %7163, %7112
  %7179 = fadd fast float %7178, %7039
  %7180 = fmul fast float %7175, %7113
  %7181 = fadd fast float %7180, %7040
  %7182 = fmul fast float %7170, %7113
  %7183 = fsub fast float %7040, %7182
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7177, float %7183, float %7101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  %7188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7179, float %7183, float %7101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7189 = extractvalue %dx.types.ResRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.ResRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.ResRet.f32 %7188, 2
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7177, float %7181, float %7101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.ResRet.f32 %7192, 1
  %7195 = extractvalue %dx.types.ResRet.f32 %7192, 2
  %7196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7179, float %7181, float %7101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7197 = extractvalue %dx.types.ResRet.f32 %7196, 0
  %7198 = extractvalue %dx.types.ResRet.f32 %7196, 1
  %7199 = extractvalue %dx.types.ResRet.f32 %7196, 2
  %7200 = fsub fast float %7193, %7185
  %7201 = fsub fast float %7194, %7186
  %7202 = fsub fast float %7195, %7187
  %7203 = fmul fast float %7200, %7173
  %7204 = fmul fast float %7201, %7173
  %7205 = fmul fast float %7202, %7173
  %7206 = fadd fast float %7203, %7185
  %7207 = fadd fast float %7204, %7186
  %7208 = fadd fast float %7205, %7187
  %7209 = fsub fast float %7197, %7189
  %7210 = fsub fast float %7198, %7190
  %7211 = fsub fast float %7199, %7191
  %7212 = fmul fast float %7209, %7173
  %7213 = fmul fast float %7210, %7173
  %7214 = fmul fast float %7211, %7173
  %7215 = fsub fast float %7189, %7206
  %7216 = fadd fast float %7215, %7212
  %7217 = fsub fast float %7190, %7207
  %7218 = fadd fast float %7217, %7213
  %7219 = fsub fast float %7191, %7208
  %7220 = fadd fast float %7219, %7214
  %7221 = fmul fast float %7216, %7161
  %7222 = fmul fast float %7218, %7161
  %7223 = fmul fast float %7220, %7161
  %7224 = fadd fast float %7221, %7206
  %7225 = fadd fast float %7222, %7207
  %7226 = fadd fast float %7223, %7208
  %7227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7228 = extractvalue %dx.types.CBufRet.f32 %7227, 1
  %7229 = fmul fast float %7224, %7228
  %7230 = fmul fast float %7225, %7228
  %7231 = fmul fast float %7226, %7228
  br label %7232

; <label>:7232                                    ; preds = %7064, %7033
  %7233 = phi float [ %7103, %7064 ], [ 1.000000e+00, %7033 ]
  %7234 = phi float [ %7104, %7064 ], [ 1.000000e+00, %7033 ]
  %7235 = phi float [ %7105, %7064 ], [ 1.000000e+00, %7033 ]
  %7236 = phi float [ %7229, %7064 ], [ 0.000000e+00, %7033 ]
  %7237 = phi float [ %7230, %7064 ], [ 0.000000e+00, %7033 ]
  %7238 = phi float [ %7231, %7064 ], [ 0.000000e+00, %7033 ]
  %7239 = fmul fast float %7236, %7010
  %7240 = fmul fast float %7237, %7010
  %7241 = fmul fast float %7238, %7010
  %7242 = call float @dx.op.dot3.f32(i32 55, float %7233, float %7234, float %7235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7243 = call float @dx.op.dot3.f32(i32 55, float %7239, float %7240, float %7241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7244 = select i1 %259, float %7242, float %7233
  %7245 = select i1 %259, float %7242, float %7234
  %7246 = select i1 %259, float 1.000000e+00, float %7235
  %7247 = select i1 %259, float %7243, float %7239
  %7248 = select i1 %259, float 0.000000e+00, float %7240
  %7249 = select i1 %259, float 0.000000e+00, float %7241
  %7250 = fmul fast float %7244, %7023
  %7251 = fmul fast float %7245, %7024
  %7252 = fmul fast float %7246, %7025
  %7253 = fadd fast float %7250, %7247
  %7254 = fadd fast float %7251, %7248
  %7255 = fadd fast float %7249, %7252
  %7256 = fmul fast float %7244, %7001
  %7257 = fmul fast float %7245, %7002
  %7258 = fmul fast float %7246, %7003
  %7259 = fmul fast float %142, %7035
  %7260 = fmul fast float %144, %7036
  %7261 = fsub fast float 1.000000e+00, %7259
  %7262 = fsub fast float 1.000000e+00, %7260
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.CBufRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %7267 = fmul fast float %7261, %7264
  %7268 = fmul fast float %7261, %7265
  %7269 = fmul fast float %7261, %7266
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.CBufRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7274 = fmul fast float %7262, %7271
  %7275 = fmul fast float %7262, %7272
  %7276 = fmul fast float %7262, %7273
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.CBufRet.f32 %7277, 2
  %7281 = fadd fast float %7274, %7278
  %7282 = fadd fast float %7281, %7267
  %7283 = fadd fast float %7275, %7279
  %7284 = fadd fast float %7283, %7268
  %7285 = fadd fast float %7276, %7280
  %7286 = fadd fast float %7285, %7269
  %7287 = fmul fast float %7282, %222
  %7288 = fmul fast float %7284, %222
  %7289 = fmul fast float %7286, %222
  br label %7290

; <label>:7290                                    ; preds = %7232, %7000
  %7291 = phi float [ %7287, %7232 ], [ %193, %7000 ]
  %7292 = phi float [ %7288, %7232 ], [ %194, %7000 ]
  %7293 = phi float [ %7289, %7232 ], [ %195, %7000 ]
  %7294 = phi float [ %222, %7232 ], [ %97, %7000 ]
  %7295 = phi float [ %7253, %7232 ], [ %7023, %7000 ]
  %7296 = phi float [ %7254, %7232 ], [ %7024, %7000 ]
  %7297 = phi float [ %7255, %7232 ], [ %7025, %7000 ]
  %7298 = phi float [ %7256, %7232 ], [ %7001, %7000 ]
  %7299 = phi float [ %7257, %7232 ], [ %7002, %7000 ]
  %7300 = phi float [ %7258, %7232 ], [ %7003, %7000 ]
  %7301 = phi float [ %7233, %7232 ], [ 1.000000e+00, %7000 ]
  br i1 %7032, label %8456, label %7302

; <label>:7302                                    ; preds = %7290
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %7306 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7307 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 0
  %7310 = extractvalue %dx.types.CBufRet.f32 %7308, 1
  %7311 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7312 = extractvalue %dx.types.CBufRet.f32 %7308, 3
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 0
  %7315 = extractvalue %dx.types.CBufRet.f32 %7313, 1
  %7316 = extractvalue %dx.types.CBufRet.f32 %7313, 2
  %7317 = extractvalue %dx.types.CBufRet.f32 %7313, 3
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7322 = extractvalue %dx.types.CBufRet.f32 %7318, 3
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 3
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7328 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7329 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7330 = fcmp fast olt float %7329, -5.000000e-01
  %7331 = call float @dx.op.dot3.f32(i32 55, float %7291, float %7292, float %7293, float %7291, float %7292, float %7293)  ; Dot3(ax,ay,az,bx,by,bz)
  %7332 = call float @dx.op.unary.f32(i32 25, float %7331)  ; Rsqrt(value)
  %7333 = fmul fast float %7332, %7331
  %7334 = fmul fast float %7332, %7291
  %7335 = fmul fast float %7332, %7292
  %7336 = fmul fast float %7332, %7293
  %7337 = fadd fast float %7333, %7307
  %7338 = call float @dx.op.dot3.f32(i32 55, float %7334, float %7335, float %7336, float %7304, float %7305, float %7306)  ; Dot3(ax,ay,az,bx,by,bz)
  %7339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.i32 %7339, 1
  %7341 = and i32 %7340, 1
  %7342 = icmp ne i32 %7341, 0
  %7343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.f32 %7343, 2
  %7345 = fcmp fast ogt float %7344, 0.000000e+00
  %7346 = and i1 %7342, %7345
  br i1 %7346, label %7347, label %7753, !dx.controlflow.hints !125

; <label>:7347                                    ; preds = %7302
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 3
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7354 = fsub fast float %7351, %7353
  %7355 = and i32 %7340, 2
  %7356 = extractvalue %dx.types.CBufRet.i32 %7339, 0
  %7357 = call i32 @dx.op.binary.i32(i32 40, i32 %7356, i32 3)  ; UMin(a,b)
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7362 = extractvalue %dx.types.CBufRet.f32 %7352, 1
  %7363 = fsub fast float %7359, %7361
  %7364 = fsub fast float %7360, %7362
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7367 = fcmp fast ogt float %7366, 0.000000e+00
  %7368 = fsub fast float -0.000000e+00, %7363
  %7369 = fsub fast float -0.000000e+00, %7364
  %7370 = call float @dx.op.dot2.f32(i32 54, float %7334, float %7335, float %7334, float %7335)  ; Dot2(ax,ay,bx,by)
  %7371 = call float @dx.op.dot2.f32(i32 54, float %7334, float %7335, float %7368, float %7369)  ; Dot2(ax,ay,bx,by)
  %7372 = fmul fast float %7371, 2.000000e+00
  %7373 = call float @dx.op.dot2.f32(i32 54, float %7368, float %7369, float %7368, float %7369)  ; Dot2(ax,ay,bx,by)
  %7374 = fmul fast float %7366, %7366
  %7375 = fsub fast float %7373, %7374
  %7376 = fmul fast float %7372, %7372
  %7377 = fmul fast float %7370, 4.000000e+00
  %7378 = fmul fast float %7377, %7375
  %7379 = fsub fast float %7376, %7378
  %7380 = fcmp fast ogt float %7379, 0.000000e+00
  br i1 %7380, label %7381, label %7396

; <label>:7381                                    ; preds = %7347
  %7382 = fcmp fast ogt float %7372, 0.000000e+00
  %7383 = call float @dx.op.unary.f32(i32 24, float %7379)  ; Sqrt(value)
  %7384 = fsub fast float -0.000000e+00, %7383
  %7385 = select i1 %7382, float %7383, float %7384
  %7386 = fadd fast float %7385, %7372
  %7387 = fmul float %7386, -5.000000e-01
  %7388 = fdiv fast float %7387, %7370
  %7389 = call float @dx.op.binary.f32(i32 35, float %7388, float 0.000000e+00)  ; FMax(a,b)
  %7390 = call float @dx.op.binary.f32(i32 36, float %7333, float %7389)  ; FMin(a,b)
  %7391 = fdiv fast float %7375, %7387
  %7392 = call float @dx.op.binary.f32(i32 35, float %7391, float 0.000000e+00)  ; FMax(a,b)
  %7393 = call float @dx.op.binary.f32(i32 36, float %7333, float %7392)  ; FMin(a,b)
  %7394 = call float @dx.op.binary.f32(i32 36, float %7390, float %7393)  ; FMin(a,b)
  %7395 = call float @dx.op.binary.f32(i32 35, float %7390, float %7393)  ; FMax(a,b)
  br label %7396

; <label>:7396                                    ; preds = %7381, %7347
  %7397 = phi float [ %7395, %7381 ], [ -1.000000e+00, %7347 ]
  %7398 = phi float [ %7394, %7381 ], [ -1.000000e+00, %7347 ]
  %7399 = phi i1 [ true, %7381 ], [ false, %7347 ]
  %7400 = and i1 %7367, %7399
  br i1 %7400, label %7401, label %7403

; <label>:7401                                    ; preds = %7396
  %7402 = fcmp fast oeq float %7398, %7397
  br i1 %7402, label %7706, label %7404

; <label>:7403                                    ; preds = %7396
  br i1 %7367, label %7706, label %7404

; <label>:7404                                    ; preds = %7403, %7401
  %7405 = phi float [ %7333, %7403 ], [ %7397, %7401 ]
  %7406 = phi float [ 0.000000e+00, %7403 ], [ %7398, %7401 ]
  %7407 = icmp ne i32 %7355, 0
  %7408 = fmul fast float %7405, %7336
  %7409 = fadd fast float %7408, %7349
  %7410 = fmul fast float %7409, %7405
  %7411 = select i1 %7407, float 0.000000e+00, float %7410
  %7412 = fcmp fast oeq float %7336, 0.000000e+00
  %7413 = fdiv fast float %7354, %7336
  %7414 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7413)  ; FMax(a,b)
  %7415 = select i1 %7412, float %7405, float %7414
  %7416 = call float @dx.op.binary.f32(i32 36, float %7405, float %7415)  ; FMin(a,b)
  %7417 = fcmp fast ogt float %7336, 0.000000e+00
  %7418 = fcmp fast olt float %7354, 0.000000e+00
  br i1 %7417, label %7419, label %7476

; <label>:7419                                    ; preds = %7404
  %7420 = icmp eq i32 %7355, 0
  br i1 %7418, label %7421, label %7465

; <label>:7421                                    ; preds = %7419
  %7422 = select i1 %7420, float %7405, float 0.000000e+00
  %7423 = fsub fast float -0.000000e+00, %7422
  %7424 = call float @dx.op.unary.f32(i32 6, float %7423)  ; FAbs(value)
  %7425 = fmul fast float %7422, %7336
  %7426 = fadd fast float %7425, %7349
  %7427 = fmul fast float %7424, %7426
  %7428 = fsub fast float %7411, %7427
  %7429 = fsub fast float %7405, %7424
  %7430 = select i1 %7420, float %7429, float 0.000000e+00
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %7439 = extractvalue %dx.types.CBufRet.f32 %7435, 3
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 3
  %7442 = call float @dx.op.binary.f32(i32 36, float %7428, float %7441)  ; FMin(a,b)
  %7443 = fmul fast float %7439, %7430
  %7444 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  %7445 = fsub fast float %7436, %7432
  %7446 = fsub fast float %7437, %7433
  %7447 = fsub fast float %7438, %7434
  %7448 = fmul fast float %7444, %7445
  %7449 = fmul fast float %7444, %7446
  %7450 = fmul fast float %7444, %7447
  %7451 = fadd fast float %7448, %7432
  %7452 = fadd fast float %7449, %7433
  %7453 = fadd fast float %7450, %7434
  %7454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7455 = extractvalue %dx.types.CBufRet.f32 %7454, 0
  %7456 = extractvalue %dx.types.CBufRet.f32 %7454, 1
  %7457 = fadd fast float %7456, %7455
  %7458 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7454, 2
  %7460 = extractvalue %dx.types.CBufRet.f32 %7454, 3
  %7461 = fadd fast float %7460, %7459
  %7462 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7463 = fmul fast float %7458, %7442
  %7464 = fmul fast float %7463, %7462
  br label %7706

; <label>:7465                                    ; preds = %7419
  br i1 %7420, label %7466, label %7487

; <label>:7466                                    ; preds = %7465
  %7467 = call float @dx.op.binary.f32(i32 36, float %7416, float %7406)  ; FMin(a,b)
  %7468 = fsub fast float %7416, %7467
  %7469 = fsub fast float %7468, %7405
  %7470 = call float @dx.op.unary.f32(i32 6, float %7469)  ; FAbs(value)
  %7471 = fadd fast float %7468, %7405
  %7472 = fmul fast float %7471, %7336
  %7473 = fadd fast float %7472, %7349
  %7474 = fmul fast float %7473, %7470
  %7475 = fsub fast float %7411, %7474
  br label %7487

; <label>:7476                                    ; preds = %7404
  br i1 %7418, label %7477, label %7487

; <label>:7477                                    ; preds = %7476
  %7478 = call float @dx.op.binary.f32(i32 35, float %7406, float %7416)  ; FMax(a,b)
  %7479 = icmp eq i32 %7355, 0
  %7480 = select i1 %7479, float %7416, float 0.000000e+00
  %7481 = fsub fast float -0.000000e+00, %7480
  %7482 = call float @dx.op.unary.f32(i32 6, float %7481)  ; FAbs(value)
  %7483 = fmul fast float %7480, %7336
  %7484 = fadd fast float %7483, %7349
  %7485 = fmul fast float %7482, %7484
  %7486 = fsub fast float %7411, %7485
  br label %7487

; <label>:7487                                    ; preds = %7477, %7476, %7466, %7465
  %7488 = phi float [ %7406, %7465 ], [ %7406, %7466 ], [ %7478, %7477 ], [ %7406, %7476 ]
  %7489 = phi float [ 0.000000e+00, %7465 ], [ %7470, %7466 ], [ %7482, %7477 ], [ 0.000000e+00, %7476 ]
  %7490 = phi float [ %7411, %7465 ], [ %7475, %7466 ], [ %7486, %7477 ], [ %7411, %7476 ]
  %7491 = phi float [ %7416, %7465 ], [ %7416, %7466 ], [ %7405, %7477 ], [ %7405, %7476 ]
  %7492 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7492, align 4, !tbaa !126, !noalias !128
  %7493 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7493, align 4, !tbaa !126, !noalias !128
  %7494 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7494, align 4, !tbaa !126, !noalias !128
  %7495 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7495, align 4, !tbaa !126, !noalias !128
  %7496 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7496, align 4, !tbaa !126, !noalias !128
  %7497 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7497, align 4, !tbaa !126, !noalias !128
  %7498 = icmp sgt i32 %7357, 0
  br i1 %7498, label %7499, label %7560

; <label>:7499                                    ; preds = %7487
  br label %7500

; <label>:7500                                    ; preds = %7549, %7499
  %7501 = phi i32 [ %7550, %7549 ], [ 0, %7499 ]
  %7502 = phi i32 [ %7551, %7549 ], [ 0, %7499 ]
  %7503 = add nuw i32 %7502, 171
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7503)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.CBufRet.f32 %7504, 1
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.CBufRet.f32 %7507, 1
  %7510 = fsub fast float %7505, %7508
  %7511 = fsub fast float %7506, %7509
  %7512 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7513 = fsub fast float -0.000000e+00, %7510
  %7514 = fsub fast float -0.000000e+00, %7511
  %7515 = call float @dx.op.dot2.f32(i32 54, float %7334, float %7335, float %7513, float %7514)  ; Dot2(ax,ay,bx,by)
  %7516 = fmul fast float %7515, 2.000000e+00
  %7517 = call float @dx.op.dot2.f32(i32 54, float %7513, float %7514, float %7513, float %7514)  ; Dot2(ax,ay,bx,by)
  %7518 = fmul fast float %7512, %7512
  %7519 = fsub fast float %7517, %7518
  %7520 = fmul fast float %7516, %7516
  %7521 = fmul fast float %7377, %7519
  %7522 = fsub fast float %7520, %7521
  %7523 = fcmp fast ogt float %7522, 0.000000e+00
  br i1 %7523, label %7524, label %7539

; <label>:7524                                    ; preds = %7500
  %7525 = fcmp fast ogt float %7516, 0.000000e+00
  %7526 = call float @dx.op.unary.f32(i32 24, float %7522)  ; Sqrt(value)
  %7527 = fsub fast float -0.000000e+00, %7526
  %7528 = select i1 %7525, float %7526, float %7527
  %7529 = fadd fast float %7528, %7516
  %7530 = fmul float %7529, -5.000000e-01
  %7531 = fdiv fast float %7530, %7370
  %7532 = call float @dx.op.binary.f32(i32 35, float %7531, float 0.000000e+00)  ; FMax(a,b)
  %7533 = call float @dx.op.binary.f32(i32 36, float %7405, float %7532)  ; FMin(a,b)
  %7534 = fdiv fast float %7519, %7530
  %7535 = call float @dx.op.binary.f32(i32 35, float %7534, float 0.000000e+00)  ; FMax(a,b)
  %7536 = call float @dx.op.binary.f32(i32 36, float %7405, float %7535)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7533, float %7536)  ; FMin(a,b)
  %7538 = call float @dx.op.binary.f32(i32 35, float %7533, float %7536)  ; FMax(a,b)
  br label %7539

; <label>:7539                                    ; preds = %7524, %7500
  %7540 = phi float [ %7538, %7524 ], [ -1.000000e+00, %7500 ]
  %7541 = phi float [ %7537, %7524 ], [ -1.000000e+00, %7500 ]
  %7542 = phi i1 [ true, %7524 ], [ false, %7500 ]
  br i1 %7542, label %7543, label %7549

; <label>:7543                                    ; preds = %7539
  %7544 = call float @dx.op.binary.f32(i32 35, float %7488, float %7541)  ; FMax(a,b)
  %7545 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7502
  store float %7544, float* %7545, align 4, !tbaa !126, !noalias !128
  %7546 = call float @dx.op.binary.f32(i32 35, float %7488, float %7540)  ; FMax(a,b)
  %7547 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7502
  store float %7546, float* %7547, align 4, !tbaa !126, !noalias !128
  %7548 = add nsw i32 %7501, 1
  br label %7549

; <label>:7549                                    ; preds = %7543, %7539
  %7550 = phi i32 [ %7548, %7543 ], [ %7501, %7539 ]
  %7551 = add nuw nsw i32 %7502, 1
  %7552 = icmp eq i32 %7551, %7357
  br i1 %7552, label %7553, label %7500

; <label>:7553                                    ; preds = %7549
  %7554 = load float, float* %7494, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7555 = load float, float* %7493, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %7556 = load float, float* %7492, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %7557 = load float, float* %7497, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7558 = load float, float* %7496, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %7559 = load float, float* %7495, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %7560

; <label>:7560                                    ; preds = %7553, %7487
  %7561 = phi float [ -1.000000e+00, %7487 ], [ %7559, %7553 ]
  %7562 = phi float [ -1.000000e+00, %7487 ], [ %7558, %7553 ]
  %7563 = phi float [ -1.000000e+00, %7487 ], [ %7557, %7553 ]
  %7564 = phi float [ -1.000000e+00, %7487 ], [ %7556, %7553 ]
  %7565 = phi float [ -1.000000e+00, %7487 ], [ %7555, %7553 ]
  %7566 = phi float [ -1.000000e+00, %7487 ], [ %7554, %7553 ]
  %7567 = phi i32 [ 0, %7487 ], [ %7550, %7553 ]
  %7568 = call float @dx.op.binary.f32(i32 36, float %7565, float %7566)  ; FMin(a,b)
  %7569 = call float @dx.op.binary.f32(i32 36, float %7564, float %7568)  ; FMin(a,b)
  %7570 = call float @dx.op.binary.f32(i32 35, float %7564, float %7565)  ; FMax(a,b)
  %7571 = call float @dx.op.binary.f32(i32 36, float %7570, float %7566)  ; FMin(a,b)
  %7572 = call float @dx.op.binary.f32(i32 36, float %7564, float %7565)  ; FMin(a,b)
  %7573 = call float @dx.op.binary.f32(i32 35, float %7572, float %7571)  ; FMax(a,b)
  %7574 = call float @dx.op.binary.f32(i32 35, float %7565, float %7566)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 35, float %7564, float %7574)  ; FMax(a,b)
  store float %7569, float* %7492, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %7573, float* %7493, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %7575, float* %7494, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7576 = call float @dx.op.binary.f32(i32 36, float %7562, float %7563)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 36, float %7561, float %7576)  ; FMin(a,b)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7561, float %7562)  ; FMax(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7578, float %7563)  ; FMin(a,b)
  %7580 = call float @dx.op.binary.f32(i32 36, float %7561, float %7562)  ; FMin(a,b)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7580, float %7579)  ; FMax(a,b)
  %7582 = call float @dx.op.binary.f32(i32 35, float %7562, float %7563)  ; FMax(a,b)
  %7583 = call float @dx.op.binary.f32(i32 35, float %7561, float %7582)  ; FMax(a,b)
  store float %7577, float* %7495, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %7581, float* %7496, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %7583, float* %7497, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7584 = sub nsw i32 3, %7567
  %7585 = icmp sgt i32 %7584, 2
  br i1 %7585, label %7586, label %7624

; <label>:7586                                    ; preds = %7560
  %7587 = icmp eq i32 %7355, 0
  %7588 = fsub fast float %7405, %7489
  %7589 = select i1 %7587, float %7588, float %7489
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 0
  %7592 = extractvalue %dx.types.CBufRet.f32 %7590, 1
  %7593 = extractvalue %dx.types.CBufRet.f32 %7590, 2
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.CBufRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.CBufRet.f32 %7594, 2
  %7598 = extractvalue %dx.types.CBufRet.f32 %7594, 3
  %7599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7599, 3
  %7601 = call float @dx.op.binary.f32(i32 36, float %7490, float %7600)  ; FMin(a,b)
  %7602 = fmul fast float %7598, %7589
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fsub fast float %7595, %7591
  %7605 = fsub fast float %7596, %7592
  %7606 = fsub fast float %7597, %7593
  %7607 = fmul fast float %7603, %7604
  %7608 = fmul fast float %7603, %7605
  %7609 = fmul fast float %7603, %7606
  %7610 = fadd fast float %7607, %7591
  %7611 = fadd fast float %7608, %7592
  %7612 = fadd fast float %7609, %7593
  %7613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.f32 %7613, 0
  %7615 = extractvalue %dx.types.CBufRet.f32 %7613, 1
  %7616 = fadd fast float %7615, %7614
  %7617 = call float @dx.op.unary.f32(i32 7, float %7616)  ; Saturate(value)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7613, 2
  %7619 = extractvalue %dx.types.CBufRet.f32 %7613, 3
  %7620 = fadd fast float %7619, %7618
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = fmul fast float %7617, %7601
  %7623 = fmul fast float %7622, %7621
  br label %7706

; <label>:7624                                    ; preds = %7560
  %7625 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7584
  %7626 = load float, float* %7625, align 4, !tbaa !126, !noalias !128
  %7627 = fcmp fast olt float %7626, %7491
  %7628 = icmp sgt i32 %7567, 0
  %7629 = and i1 %7628, %7627
  br i1 %7629, label %7630, label %7667

; <label>:7630                                    ; preds = %7624
  br label %7631

; <label>:7631                                    ; preds = %7660, %7630
  %7632 = phi float [ %7661, %7660 ], [ %7489, %7630 ]
  %7633 = phi float [ %7662, %7660 ], [ %7490, %7630 ]
  %7634 = phi float [ %7642, %7660 ], [ %7626, %7630 ]
  %7635 = phi i32 [ %7639, %7660 ], [ %7584, %7630 ]
  %7636 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7635
  %7637 = load float, float* %7636, align 4, !tbaa !126, !noalias !128
  %7638 = icmp slt i32 %7635, 2
  %7639 = add nsw i32 %7635, 1
  %7640 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7639
  %7641 = load float, float* %7640, align 4, !tbaa !126, !noalias !128
  %7642 = select i1 %7638, float %7641, float %7405
  %7643 = call float @dx.op.binary.f32(i32 36, float %7642, float %7637)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7491, float %7643)  ; FMin(a,b)
  %7645 = icmp eq i32 %7355, 0
  %7646 = fadd fast float %7644, %7634
  %7647 = fmul fast float %7646, %7336
  %7648 = fadd fast float %7647, %7349
  br i1 %7645, label %7654, label %7649

; <label>:7649                                    ; preds = %7631
  %7650 = fsub fast float %7644, %7634
  %7651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7650)  ; FMax(a,b)
  %7652 = fmul fast float %7651, %7648
  %7653 = fadd fast float %7652, %7633
  br label %7660

; <label>:7654                                    ; preds = %7631
  %7655 = fsub fast float %7634, %7644
  %7656 = call float @dx.op.unary.f32(i32 6, float %7655)  ; FAbs(value)
  %7657 = fadd fast float %7656, %7632
  %7658 = fmul fast float %7656, %7648
  %7659 = fsub fast float %7633, %7658
  br label %7660

; <label>:7660                                    ; preds = %7654, %7649
  %7661 = phi float [ %7651, %7649 ], [ %7657, %7654 ]
  %7662 = phi float [ %7653, %7649 ], [ %7659, %7654 ]
  %7663 = fcmp fast olt float %7642, %7491
  %7664 = icmp slt i32 %7639, 3
  %7665 = and i1 %7664, %7663
  br i1 %7665, label %7631, label %7666

; <label>:7666                                    ; preds = %7660
  br label %7667

; <label>:7667                                    ; preds = %7666, %7624
  %7668 = phi float [ %7489, %7624 ], [ %7661, %7666 ]
  %7669 = phi float [ %7490, %7624 ], [ %7662, %7666 ]
  %7670 = fsub fast float %7405, %7668
  %7671 = select i1 %7407, float %7668, float %7670
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7675 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %7676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7677 = extractvalue %dx.types.CBufRet.f32 %7676, 0
  %7678 = extractvalue %dx.types.CBufRet.f32 %7676, 1
  %7679 = extractvalue %dx.types.CBufRet.f32 %7676, 2
  %7680 = extractvalue %dx.types.CBufRet.f32 %7676, 3
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 3
  %7683 = call float @dx.op.binary.f32(i32 36, float %7669, float %7682)  ; FMin(a,b)
  %7684 = fmul fast float %7680, %7671
  %7685 = call float @dx.op.unary.f32(i32 7, float %7684)  ; Saturate(value)
  %7686 = fsub fast float %7677, %7673
  %7687 = fsub fast float %7678, %7674
  %7688 = fsub fast float %7679, %7675
  %7689 = fmul fast float %7685, %7686
  %7690 = fmul fast float %7685, %7687
  %7691 = fmul fast float %7685, %7688
  %7692 = fadd fast float %7689, %7673
  %7693 = fadd fast float %7690, %7674
  %7694 = fadd fast float %7691, %7675
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7697 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7698 = fadd fast float %7697, %7696
  %7699 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7701 = extractvalue %dx.types.CBufRet.f32 %7695, 3
  %7702 = fadd fast float %7701, %7700
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fmul fast float %7699, %7683
  %7705 = fmul fast float %7704, %7703
  br label %7706

; <label>:7706                                    ; preds = %7667, %7586, %7421, %7403, %7401
  %7707 = phi float [ %7430, %7421 ], [ %7589, %7586 ], [ %7671, %7667 ], [ 0.000000e+00, %7401 ], [ 0.000000e+00, %7403 ]
  %7708 = phi float [ %7464, %7421 ], [ %7623, %7586 ], [ %7705, %7667 ], [ 0.000000e+00, %7401 ], [ 0.000000e+00, %7403 ]
  %7709 = phi float [ %7451, %7421 ], [ %7610, %7586 ], [ %7692, %7667 ], [ 0.000000e+00, %7401 ], [ 0.000000e+00, %7403 ]
  %7710 = phi float [ %7452, %7421 ], [ %7611, %7586 ], [ %7693, %7667 ], [ 0.000000e+00, %7401 ], [ 0.000000e+00, %7403 ]
  %7711 = phi float [ %7453, %7421 ], [ %7612, %7586 ], [ %7694, %7667 ], [ 0.000000e+00, %7401 ], [ 0.000000e+00, %7403 ]
  %7712 = fmul fast float %7344, %7708
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 2
  %7715 = fsub fast float %7351, %7714
  %7716 = fcmp fast olt float %7712, -2.000000e+01
  %7717 = call float @dx.op.unary.f32(i32 21, float %7712)  ; Exp(value)
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7720 = extractvalue %dx.types.CBufRet.f32 %7718, 3
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 2
  %7723 = fmul fast float %7720, %7715
  %7724 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7725 = fsub fast float 1.000000e+00, %7724
  %7726 = fmul fast float %7336, 5.000000e-01
  %7727 = fadd fast float %7726, 5.000000e-01
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = fsub fast float 1.000000e+00, %7728
  %7730 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7725)  ; FMax(a,b)
  %7731 = fdiv fast float %7729, %7730
  %7732 = fsub fast float %7715, %7293
  %7733 = call float @dx.op.unary.f32(i32 6, float %7732)  ; FAbs(value)
  %7734 = fmul fast float %7733, %7719
  %7735 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7736 = fsub fast float 1.000000e+00, %7734
  %7737 = fmul fast float %7736, %7735
  %7738 = fadd fast float %7737, %7734
  %7739 = fmul fast float %7722, %7715
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = fsub fast float 1.000000e+00, %7738
  %7742 = fmul fast float %7741, %7740
  %7743 = fadd fast float %7742, %7738
  %7744 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7745 = fadd fast float %7717, -1.000000e+00
  %7746 = select i1 %7716, float -1.000000e+00, float %7745
  %7747 = fmul fast float %7744, %7746
  %7748 = fadd fast float %7747, 1.000000e+00
  %7749 = fsub fast float -0.000000e+00, %7747
  %7750 = fmul fast float %7709, %7749
  %7751 = fmul fast float %7710, %7749
  %7752 = fmul fast float %7711, %7749
  br label %7753

; <label>:7753                                    ; preds = %7706, %7302
  %7754 = phi float [ %7707, %7706 ], [ 0.000000e+00, %7302 ]
  %7755 = phi float [ %7748, %7706 ], [ 1.000000e+00, %7302 ]
  %7756 = phi float [ %7750, %7706 ], [ 0.000000e+00, %7302 ]
  %7757 = phi float [ %7751, %7706 ], [ 0.000000e+00, %7302 ]
  %7758 = phi float [ %7752, %7706 ], [ 0.000000e+00, %7302 ]
  %7759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7760 = extractvalue %dx.types.CBufRet.f32 %7759, 1
  %7761 = fsub fast float 1.000000e+00, %7755
  %7762 = fmul fast float %7761, %7337
  %7763 = fmul fast float %7762, %7760
  %7764 = fsub fast float %7337, %7763
  br i1 %7330, label %7765, label %7794, !dx.controlflow.hints !164

; <label>:7765                                    ; preds = %7753
  %7766 = fmul fast float %7338, %7327
  %7767 = fadd fast float %7766, %7328
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = fmul fast float %7309, %7764
  %7770 = fsub fast float -0.000000e+00, %7769
  %7771 = fmul fast float %7310, %7764
  %7772 = fsub fast float -0.000000e+00, %7771
  %7773 = call float @dx.op.unary.f32(i32 21, float %7770)  ; Exp(value)
  %7774 = call float @dx.op.unary.f32(i32 21, float %7772)  ; Exp(value)
  %7775 = call float @dx.op.binary.f32(i32 35, float %7317, float %7773)  ; FMax(a,b)
  %7776 = call float @dx.op.binary.f32(i32 35, float %7317, float %7774)  ; FMax(a,b)
  %7777 = fsub fast float %7776, %7775
  %7778 = fmul fast float %7777, %7768
  %7779 = fadd fast float %7778, %7775
  %7780 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7781 = fsub fast float %7314, %7319
  %7782 = fsub fast float %7315, %7320
  %7783 = fsub fast float %7316, %7321
  %7784 = fmul fast float %7768, %7781
  %7785 = fmul fast float %7768, %7782
  %7786 = fmul fast float %7768, %7783
  %7787 = fadd fast float %7784, %7319
  %7788 = fadd fast float %7785, %7320
  %7789 = fadd fast float %7786, %7321
  %7790 = fsub fast float 1.000000e+00, %7780
  %7791 = fmul fast float %7790, %7787
  %7792 = fmul fast float %7790, %7788
  %7793 = fmul fast float %7790, %7789
  br label %7853

; <label>:7794                                    ; preds = %7753
  %7795 = fmul fast float %7764, %7326
  %7796 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7797 = fsub fast float 2.000000e+00, %7796
  %7798 = fmul fast float %7796, 9.921875e-01
  %7799 = fmul fast float %7798, %7797
  %7800 = fadd fast float %7799, 3.906250e-03
  %7801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7800, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = fsub fast float %7796, %7802
  %7804 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7803)  ; FMax(a,b)
  %7805 = fmul fast float %7312, %7293
  %7806 = call float @dx.op.unary.f32(i32 6, float %7805)  ; FAbs(value)
  %7807 = fcmp fast ogt float %7806, 0x3EB0C6F7A0000000
  br i1 %7807, label %7808, label %7814, !dx.controlflow.hints !165

; <label>:7808                                    ; preds = %7794
  %7809 = fmul fast float %7805, 0xBFF7154760000000
  %7810 = call float @dx.op.unary.f32(i32 21, float %7809)  ; Exp(value)
  %7811 = fsub fast float 1.000000e+00, %7810
  %7812 = fdiv fast float %7811, %7805
  %7813 = fmul fast float %7812, %7322
  br label %7814

; <label>:7814                                    ; preds = %7808, %7794
  %7815 = phi float [ %7813, %7808 ], [ %7322, %7794 ]
  %7816 = fadd fast float %7815, %7324
  %7817 = fmul fast float %7816, %7804
  %7818 = fmul fast float %7309, %7817
  %7819 = fsub fast float -0.000000e+00, %7818
  %7820 = fmul fast float %7310, %7817
  %7821 = fsub fast float -0.000000e+00, %7820
  %7822 = fmul fast float %7311, %7817
  %7823 = fsub fast float -0.000000e+00, %7822
  %7824 = call float @dx.op.unary.f32(i32 21, float %7819)  ; Exp(value)
  %7825 = call float @dx.op.unary.f32(i32 21, float %7821)  ; Exp(value)
  %7826 = call float @dx.op.unary.f32(i32 21, float %7823)  ; Exp(value)
  %7827 = fmul fast float %7338, %7338
  %7828 = fadd fast float %7827, 1.000000e+00
  %7829 = fmul fast float %7828, 0x3FAE8EC8A0000000
  %7830 = fmul fast float %7829, %7319
  %7831 = fmul fast float %7829, %7320
  %7832 = fmul fast float %7829, %7321
  %7833 = fmul fast float %7338, %7317
  %7834 = fsub fast float 1.000000e+00, %7833
  %7835 = fmul fast float %7317, %7317
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fmul fast float %7836, 0x3FB45F3060000000
  %7838 = fmul fast float %7834, %7834
  %7839 = fdiv fast float 1.000000e+00, %7838
  %7840 = fmul fast float %7837, %7839
  %7841 = fmul fast float %7840, %7314
  %7842 = fmul fast float %7840, %7315
  %7843 = fmul fast float %7840, %7316
  %7844 = fadd fast float %7841, %7830
  %7845 = fadd fast float %7842, %7831
  %7846 = fadd fast float %7843, %7832
  %7847 = fsub fast float 1.000000e+00, %7824
  %7848 = fsub fast float 1.000000e+00, %7825
  %7849 = fsub fast float 1.000000e+00, %7826
  %7850 = fmul fast float %7844, %7847
  %7851 = fmul fast float %7845, %7848
  %7852 = fmul fast float %7846, %7849
  br label %7853

; <label>:7853                                    ; preds = %7814, %7765
  %7854 = phi float [ %7791, %7765 ], [ %7850, %7814 ]
  %7855 = phi float [ %7792, %7765 ], [ %7851, %7814 ]
  %7856 = phi float [ %7793, %7765 ], [ %7852, %7814 ]
  %7857 = phi float [ %7780, %7765 ], [ %7824, %7814 ]
  %7858 = phi float [ %7780, %7765 ], [ %7825, %7814 ]
  %7859 = phi float [ %7780, %7765 ], [ %7826, %7814 ]
  br i1 %7346, label %7860, label %8058, !dx.controlflow.hints !166

; <label>:7860                                    ; preds = %7853
  %7861 = extractvalue %dx.types.CBufRet.f32 %7759, 0
  %7862 = fmul fast float %7861, %7761
  %7863 = fsub fast float %7756, %7854
  %7864 = fsub fast float %7757, %7855
  %7865 = fsub fast float %7758, %7856
  %7866 = fmul fast float %7862, %7863
  %7867 = fmul fast float %7862, %7864
  %7868 = fmul fast float %7862, %7865
  %7869 = fadd fast float %7866, %7854
  %7870 = fadd fast float %7867, %7855
  %7871 = fadd fast float %7868, %7856
  %7872 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7857)  ; FMax(a,b)
  %7873 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7858)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7859)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7755)  ; FMax(a,b)
  %7876 = call float @dx.op.binary.f32(i32 35, float %7754, float %7764)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7876)  ; FMax(a,b)
  %7878 = fdiv fast float %7754, %7877
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = fdiv fast float %7764, %7877
  %7881 = call float @dx.op.unary.f32(i32 7, float %7880)  ; Saturate(value)
  %7882 = fcmp fast une float %7875, 1.000000e+00
  br i1 %7882, label %7883, label %7896, !dx.controlflow.hints !167

; <label>:7883                                    ; preds = %7860
  %7884 = call float @dx.op.unary.f32(i32 23, float %7875)  ; Log(value)
  %7885 = fmul fast float %7884, 0x3FE62E4300000000
  %7886 = fmul fast float %7756, %7885
  %7887 = fsub fast float -0.000000e+00, %7886
  %7888 = fmul fast float %7757, %7885
  %7889 = fsub fast float -0.000000e+00, %7888
  %7890 = fmul fast float %7758, %7885
  %7891 = fsub fast float -0.000000e+00, %7890
  %7892 = fsub fast float 1.000000e+00, %7875
  %7893 = fdiv fast float %7887, %7892
  %7894 = fdiv fast float %7889, %7892
  %7895 = fdiv fast float %7891, %7892
  br label %7896

; <label>:7896                                    ; preds = %7883, %7860
  %7897 = phi float [ %7893, %7883 ], [ %7756, %7860 ]
  %7898 = phi float [ %7894, %7883 ], [ %7757, %7860 ]
  %7899 = phi float [ %7895, %7883 ], [ %7758, %7860 ]
  %7900 = phi float [ %7885, %7883 ], [ 0.000000e+00, %7860 ]
  %7901 = fcmp fast une float %7872, 1.000000e+00
  br i1 %7901, label %7902, label %7909, !dx.controlflow.hints !168

; <label>:7902                                    ; preds = %7896
  %7903 = call float @dx.op.unary.f32(i32 23, float %7872)  ; Log(value)
  %7904 = fmul fast float %7903, 0x3FE62E4300000000
  %7905 = fmul fast float %7869, %7904
  %7906 = fsub fast float -0.000000e+00, %7905
  %7907 = fsub fast float 1.000000e+00, %7872
  %7908 = fdiv fast float %7906, %7907
  br label %7909

; <label>:7909                                    ; preds = %7902, %7896
  %7910 = phi float [ %7908, %7902 ], [ %7869, %7896 ]
  %7911 = phi float [ %7904, %7902 ], [ 0.000000e+00, %7896 ]
  %7912 = fcmp fast une float %7873, 1.000000e+00
  br i1 %7912, label %7913, label %7920, !dx.controlflow.hints !168

; <label>:7913                                    ; preds = %7909
  %7914 = call float @dx.op.unary.f32(i32 23, float %7873)  ; Log(value)
  %7915 = fmul fast float %7914, 0x3FE62E4300000000
  %7916 = fmul fast float %7870, %7915
  %7917 = fsub fast float -0.000000e+00, %7916
  %7918 = fsub fast float 1.000000e+00, %7873
  %7919 = fdiv fast float %7917, %7918
  br label %7920

; <label>:7920                                    ; preds = %7913, %7909
  %7921 = phi float [ %7919, %7913 ], [ %7870, %7909 ]
  %7922 = phi float [ %7915, %7913 ], [ 0.000000e+00, %7909 ]
  %7923 = fcmp fast une float %7874, 1.000000e+00
  br i1 %7923, label %7924, label %7931, !dx.controlflow.hints !168

; <label>:7924                                    ; preds = %7920
  %7925 = call float @dx.op.unary.f32(i32 23, float %7874)  ; Log(value)
  %7926 = fmul fast float %7925, 0x3FE62E4300000000
  %7927 = fmul fast float %7871, %7926
  %7928 = fsub fast float -0.000000e+00, %7927
  %7929 = fsub fast float 1.000000e+00, %7874
  %7930 = fdiv fast float %7928, %7929
  br label %7931

; <label>:7931                                    ; preds = %7924, %7920
  %7932 = phi float [ %7930, %7924 ], [ %7871, %7920 ]
  %7933 = phi float [ %7926, %7924 ], [ 0.000000e+00, %7920 ]
  %7934 = fmul fast float %7897, %7881
  %7935 = fmul fast float %7898, %7881
  %7936 = fmul fast float %7899, %7881
  %7937 = fmul fast float %7900, %7881
  %7938 = fmul fast float %7910, %7879
  %7939 = fmul fast float %7921, %7879
  %7940 = fmul fast float %7932, %7879
  %7941 = fmul fast float %7911, %7879
  %7942 = fmul fast float %7922, %7879
  %7943 = fmul fast float %7933, %7879
  %7944 = fadd fast float %7938, %7934
  %7945 = fadd fast float %7939, %7935
  %7946 = fadd fast float %7940, %7936
  %7947 = fadd fast float %7941, %7937
  %7948 = fadd fast float %7942, %7937
  %7949 = fadd fast float %7943, %7937
  %7950 = fcmp fast une float %7947, 0.000000e+00
  br i1 %7950, label %7951, label %7958, !dx.controlflow.hints !169

; <label>:7951                                    ; preds = %7931
  %7952 = fmul fast float %7947, 0x3FF7154760000000
  %7953 = call float @dx.op.unary.f32(i32 21, float %7952)  ; Exp(value)
  %7954 = fsub fast float 1.000000e+00, %7953
  %7955 = fmul fast float %7944, %7954
  %7956 = fsub fast float -0.000000e+00, %7955
  %7957 = fdiv fast float %7956, %7947
  br label %7958

; <label>:7958                                    ; preds = %7951, %7931
  %7959 = phi float [ %7953, %7951 ], [ 1.000000e+00, %7931 ]
  %7960 = phi float [ %7957, %7951 ], [ %7944, %7931 ]
  %7961 = fcmp fast une float %7948, 0.000000e+00
  br i1 %7961, label %7962, label %7969, !dx.controlflow.hints !169

; <label>:7962                                    ; preds = %7958
  %7963 = fmul fast float %7948, 0x3FF7154760000000
  %7964 = call float @dx.op.unary.f32(i32 21, float %7963)  ; Exp(value)
  %7965 = fsub fast float 1.000000e+00, %7964
  %7966 = fmul fast float %7945, %7965
  %7967 = fsub fast float -0.000000e+00, %7966
  %7968 = fdiv fast float %7967, %7948
  br label %7969

; <label>:7969                                    ; preds = %7962, %7958
  %7970 = phi float [ %7964, %7962 ], [ 1.000000e+00, %7958 ]
  %7971 = phi float [ %7968, %7962 ], [ %7945, %7958 ]
  %7972 = fcmp fast une float %7949, 0.000000e+00
  br i1 %7972, label %7973, label %7980, !dx.controlflow.hints !169

; <label>:7973                                    ; preds = %7969
  %7974 = fmul fast float %7949, 0x3FF7154760000000
  %7975 = call float @dx.op.unary.f32(i32 21, float %7974)  ; Exp(value)
  %7976 = fsub fast float 1.000000e+00, %7975
  %7977 = fmul fast float %7946, %7976
  %7978 = fsub fast float -0.000000e+00, %7977
  %7979 = fdiv fast float %7978, %7949
  br label %7980

; <label>:7980                                    ; preds = %7973, %7969
  %7981 = phi float [ %7975, %7973 ], [ 1.000000e+00, %7969 ]
  %7982 = phi float [ %7979, %7973 ], [ %7946, %7969 ]
  %7983 = fcmp fast ogt float %7879, %7881
  br i1 %7983, label %7984, label %8004

; <label>:7984                                    ; preds = %7980
  %7985 = fsub fast float 1.000000e+00, %7881
  %7986 = fmul fast float %7897, %7985
  %7987 = fmul fast float %7898, %7985
  %7988 = fmul fast float %7899, %7985
  %7989 = fmul fast float %7900, %7985
  %7990 = fcmp fast une float %7989, 0.000000e+00
  br i1 %7990, label %7991, label %8042, !dx.controlflow.hints !170

; <label>:7991                                    ; preds = %7984
  %7992 = fmul fast float %7989, 0x3FF7154760000000
  %7993 = call float @dx.op.unary.f32(i32 21, float %7992)  ; Exp(value)
  %7994 = fsub fast float 1.000000e+00, %7993
  %7995 = fmul fast float %7986, %7994
  %7996 = fsub fast float -0.000000e+00, %7995
  %7997 = fmul fast float %7987, %7994
  %7998 = fsub fast float -0.000000e+00, %7997
  %7999 = fmul fast float %7988, %7994
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fdiv fast float %7996, %7989
  %8002 = fdiv fast float %7998, %7989
  %8003 = fdiv fast float %8000, %7989
  br label %8042

; <label>:8004                                    ; preds = %7980
  %8005 = fsub fast float 1.000000e+00, %7879
  %8006 = fmul fast float %7910, %8005
  %8007 = fmul fast float %7921, %8005
  %8008 = fmul fast float %7932, %8005
  %8009 = fmul fast float %7911, %8005
  %8010 = fmul fast float %7922, %8005
  %8011 = fmul fast float %7933, %8005
  %8012 = fcmp fast une float %8009, 0.000000e+00
  br i1 %8012, label %8013, label %8020, !dx.controlflow.hints !169

; <label>:8013                                    ; preds = %8004
  %8014 = fmul fast float %8009, 0x3FF7154760000000
  %8015 = call float @dx.op.unary.f32(i32 21, float %8014)  ; Exp(value)
  %8016 = fsub fast float 1.000000e+00, %8015
  %8017 = fmul fast float %8006, %8016
  %8018 = fsub fast float -0.000000e+00, %8017
  %8019 = fdiv fast float %8018, %8009
  br label %8020

; <label>:8020                                    ; preds = %8013, %8004
  %8021 = phi float [ %8019, %8013 ], [ %8006, %8004 ]
  %8022 = phi float [ %8015, %8013 ], [ 1.000000e+00, %8004 ]
  %8023 = fcmp fast une float %8010, 0.000000e+00
  br i1 %8023, label %8024, label %8031, !dx.controlflow.hints !169

; <label>:8024                                    ; preds = %8020
  %8025 = fmul fast float %8010, 0x3FF7154760000000
  %8026 = call float @dx.op.unary.f32(i32 21, float %8025)  ; Exp(value)
  %8027 = fsub fast float 1.000000e+00, %8026
  %8028 = fmul fast float %8007, %8027
  %8029 = fsub fast float -0.000000e+00, %8028
  %8030 = fdiv fast float %8029, %8010
  br label %8031

; <label>:8031                                    ; preds = %8024, %8020
  %8032 = phi float [ %8030, %8024 ], [ %8007, %8020 ]
  %8033 = phi float [ %8026, %8024 ], [ 1.000000e+00, %8020 ]
  %8034 = fcmp fast une float %8011, 0.000000e+00
  br i1 %8034, label %8035, label %8042, !dx.controlflow.hints !169

; <label>:8035                                    ; preds = %8031
  %8036 = fmul fast float %8011, 0x3FF7154760000000
  %8037 = call float @dx.op.unary.f32(i32 21, float %8036)  ; Exp(value)
  %8038 = fsub fast float 1.000000e+00, %8037
  %8039 = fmul fast float %8008, %8038
  %8040 = fsub fast float -0.000000e+00, %8039
  %8041 = fdiv fast float %8040, %8011
  br label %8042

; <label>:8042                                    ; preds = %8035, %8031, %7991, %7984
  %8043 = phi float [ %8041, %8035 ], [ %8003, %7991 ], [ %7988, %7984 ], [ %8008, %8031 ]
  %8044 = phi float [ %8032, %8035 ], [ %8002, %7991 ], [ %7987, %7984 ], [ %8032, %8031 ]
  %8045 = phi float [ %8021, %8035 ], [ %8001, %7991 ], [ %7986, %7984 ], [ %8021, %8031 ]
  %8046 = phi float [ %8037, %8035 ], [ %7993, %7991 ], [ 1.000000e+00, %7984 ], [ 1.000000e+00, %8031 ]
  %8047 = phi float [ %8033, %8035 ], [ %7993, %7991 ], [ 1.000000e+00, %7984 ], [ %8033, %8031 ]
  %8048 = phi float [ %8022, %8035 ], [ %7993, %7991 ], [ 1.000000e+00, %7984 ], [ %8022, %8031 ]
  %8049 = fmul fast float %8048, %7960
  %8050 = fmul fast float %8047, %7971
  %8051 = fmul fast float %8046, %7982
  %8052 = fadd fast float %8049, %8045
  %8053 = fadd fast float %8050, %8044
  %8054 = fadd fast float %8051, %8043
  %8055 = fmul fast float %8048, %7959
  %8056 = fmul fast float %8047, %7970
  %8057 = fmul fast float %8046, %7981
  br label %8058

; <label>:8058                                    ; preds = %8042, %7853
  %8059 = phi float [ %8057, %8042 ], [ %7859, %7853 ]
  %8060 = phi float [ %8056, %8042 ], [ %7858, %7853 ]
  %8061 = phi float [ %8055, %8042 ], [ %7857, %7853 ]
  %8062 = phi float [ %8054, %8042 ], [ %7856, %7853 ]
  %8063 = phi float [ %8053, %8042 ], [ %7855, %7853 ]
  %8064 = phi float [ %8052, %8042 ], [ %7854, %7853 ]
  %8065 = fmul fast float %8064, %7010
  %8066 = fmul fast float %8063, %7010
  %8067 = fmul fast float %8062, %7010
  %8068 = fmul fast float %8061, %7301
  %8069 = call float @dx.op.dot3.f32(i32 55, float %8061, float %8060, float %8059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8070 = call float @dx.op.dot3.f32(i32 55, float %8065, float %8066, float %8067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8071 = select i1 %259, float %8069, float %8061
  %8072 = select i1 %259, float %8069, float %8060
  %8073 = select i1 %259, float 1.000000e+00, float %8059
  %8074 = select i1 %259, float %8070, float %8065
  %8075 = select i1 %259, float 0.000000e+00, float %8066
  %8076 = select i1 %259, float 0.000000e+00, float %8067
  %8077 = fmul fast float %8071, %7295
  %8078 = fmul fast float %8072, %7296
  %8079 = fmul fast float %8073, %7297
  %8080 = fadd fast float %8077, %8074
  %8081 = fadd fast float %8078, %8075
  %8082 = fadd fast float %8076, %8079
  %8083 = fmul fast float %8071, %7298
  %8084 = fmul fast float %8072, %7299
  %8085 = fmul fast float %8073, %7300
  %8086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.i32 %8086, 0
  %8088 = icmp eq i32 %8087, 0
  br i1 %8088, label %8456, label %8089, !dx.controlflow.hints !171

; <label>:8089                                    ; preds = %8058
  %8090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.f32 %8090, 2
  %8092 = extractvalue %dx.types.CBufRet.f32 %8090, 3
  %8093 = fmul fast float %8091, %106
  %8094 = fmul fast float %8092, %107
  %8095 = fmul fast float %8093, 2.000000e+00
  %8096 = fmul fast float %8094, 2.000000e+00
  %8097 = fsub fast float 1.000000e+00, %8095
  %8098 = fsub fast float 1.000000e+00, %8096
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8103 = fmul fast float %8097, %8100
  %8104 = fmul fast float %8097, %8101
  %8105 = fmul fast float %8097, %8102
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8110 = fmul fast float %8098, %8107
  %8111 = fmul fast float %8098, %8108
  %8112 = fmul fast float %8098, %8109
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8116 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8117 = fadd fast float %8110, %8114
  %8118 = fadd fast float %8117, %8103
  %8119 = fadd fast float %8111, %8115
  %8120 = fadd fast float %8119, %8104
  %8121 = fadd fast float %8112, %8116
  %8122 = fadd fast float %8121, %8105
  %8123 = fmul fast float %8118, %7294
  %8124 = fmul fast float %8120, %7294
  %8125 = fmul fast float %8122, %7294
  %8126 = fmul fast float %8123, %8123
  %8127 = fmul fast float %8124, %8124
  %8128 = fadd fast float %8126, %8127
  %8129 = fmul fast float %8125, %8125
  %8130 = fadd fast float %8128, %8129
  %8131 = call float @dx.op.unary.f32(i32 24, float %8130)  ; Sqrt(value)
  %8132 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %8133 = fsub fast float %8131, %8132
  %8134 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %8135 = fmul fast float %8133, %8134
  %8136 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8137 = fadd fast float %8136, -5.000000e-01
  %8138 = fmul fast float %8137, 2.000000e+00
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8141 = call float @dx.op.binary.f32(i32 36, float %8140, float %8138)  ; FMin(a,b)
  %8142 = fsub fast float -0.000000e+00, %8140
  %8143 = fcmp fast ogt float %8141, %8142
  br i1 %8143, label %8144, label %8456, !dx.controlflow.hints !172

; <label>:8144                                    ; preds = %8089
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 3
  %8147 = fcmp fast ogt float %8146, 0.000000e+00
  br i1 %8147, label %8148, label %8223, !dx.controlflow.hints !173

; <label>:8148                                    ; preds = %8144
  %8149 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8150 = extractvalue %dx.types.Dimensions %8149, 0
  %8151 = sitofp i32 %8150 to float
  %8152 = extractvalue %dx.types.Dimensions %8149, 1
  %8153 = sitofp i32 %8152 to float
  %8154 = fmul fast float %8093, %8151
  %8155 = fmul fast float %8094, %8153
  %8156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.f32 %8156, 1
  %8158 = fsub fast float -0.000000e+00, %8157
  %8159 = fptoui float %8158 to i32
  %8160 = fptoui float %8154 to i32
  %8161 = fptoui float %8155 to i32
  %8162 = and i32 %8159, 31
  %8163 = lshr i32 %8160, %8162
  %8164 = lshr i32 %8161, %8162
  %8165 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8159, i32 %8163, i32 %8164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8166 = extractvalue %dx.types.ResRet.f32 %8165, 0
  %8167 = fcmp fast olt float %8166, -1.000000e+00
  %8168 = fcmp fast ogt float %8166, -1.000000e+00
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 1
  %8171 = select i1 %8168, float %8170, float 1.000000e+00
  %8172 = fadd fast float %8166, 1.000000e+00
  %8173 = fmul fast float %8171, %8172
  %8174 = call float @dx.op.unary.f32(i32 6, float %8173)  ; FAbs(value)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8176 = fcmp fast oge float %8174, %8175
  %8177 = select i1 %8176, float 0x4197782600000000, float %8174
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8181 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8182 = select i1 %8167, float %8179, float %8100
  %8183 = select i1 %8167, float %8180, float %8101
  %8184 = select i1 %8167, float %8181, float %8102
  %8185 = fmul fast float %8182, %8097
  %8186 = fmul fast float %8183, %8097
  %8187 = fmul fast float %8184, %8097
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 0
  %8190 = extractvalue %dx.types.CBufRet.f32 %8188, 1
  %8191 = extractvalue %dx.types.CBufRet.f32 %8188, 2
  %8192 = select i1 %8167, float %8189, float %8107
  %8193 = select i1 %8167, float %8190, float %8108
  %8194 = select i1 %8167, float %8191, float %8109
  %8195 = fmul fast float %8192, %8098
  %8196 = fmul fast float %8193, %8098
  %8197 = fmul fast float %8194, %8098
  %8198 = fadd fast float %8195, %8185
  %8199 = fadd fast float %8196, %8186
  %8200 = fadd fast float %8197, %8187
  %8201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8202 = extractvalue %dx.types.CBufRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.CBufRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.CBufRet.f32 %8201, 2
  %8205 = select i1 %8167, float %8202, float %8114
  %8206 = select i1 %8167, float %8203, float %8115
  %8207 = select i1 %8167, float %8204, float %8116
  %8208 = fadd fast float %8198, %8205
  %8209 = fadd fast float %8199, %8206
  %8210 = fadd fast float %8200, %8207
  %8211 = fmul fast float %8208, %8177
  %8212 = fmul fast float %8209, %8177
  %8213 = fmul fast float %8210, %8177
  %8214 = fmul fast float %8211, %8211
  %8215 = fmul fast float %8212, %8212
  %8216 = fadd fast float %8214, %8215
  %8217 = fmul fast float %8213, %8213
  %8218 = fadd fast float %8216, %8217
  %8219 = call float @dx.op.unary.f32(i32 24, float %8218)  ; Sqrt(value)
  %8220 = fsub fast float %8219, %8132
  %8221 = fmul fast float %8220, %8134
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  br label %8223

; <label>:8223                                    ; preds = %8148, %8144
  %8224 = phi float [ %8222, %8148 ], [ 1.000000e+00, %8144 ]
  %8225 = fmul fast float %8141, 5.000000e-01
  %8226 = fadd fast float %8225, 5.000000e-01
  %8227 = call float @dx.op.unary.f32(i32 22, float %8226)  ; Frc(value)
  %8228 = call float @dx.op.unary.f32(i32 27, float %8227)  ; Round_ni(value)
  %8229 = call float @dx.op.unary.f32(i32 22, float %8227)  ; Frc(value)
  %8230 = fmul fast float %8229, 2.000000e+00
  %8231 = fadd fast float %8230, -1.000000e+00
  %8232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8093, float %8094, float %8228, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8233 = extractvalue %dx.types.ResRet.f32 %8232, 0
  %8234 = extractvalue %dx.types.ResRet.f32 %8232, 1
  %8235 = extractvalue %dx.types.ResRet.f32 %8232, 2
  %8236 = extractvalue %dx.types.ResRet.f32 %8232, 3
  %8237 = fadd fast float %8233, -5.000000e-01
  %8238 = fadd fast float %8235, -5.000000e-01
  %8239 = fmul fast float %8237, 0xBFD5555560000000
  %8240 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8238, float %8239)  ; FMad(a,b,c)
  %8241 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8234, float 0.000000e+00)  ; FMad(a,b,c)
  %8242 = fadd fast float %8241, %8236
  %8243 = fmul fast float %8237, -7.500000e-01
  %8244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8238, float %8243)  ; FMad(a,b,c)
  %8245 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8234, float 0.000000e+00)  ; FMad(a,b,c)
  %8246 = fadd fast float %8245, %8236
  %8247 = call float @dx.op.binary.f32(i32 35, float %8240, float -1.000000e+00)  ; FMax(a,b)
  %8248 = call float @dx.op.binary.f32(i32 35, float %8242, float -1.000000e+00)  ; FMax(a,b)
  %8249 = call float @dx.op.binary.f32(i32 35, float %8244, float -1.000000e+00)  ; FMax(a,b)
  %8250 = call float @dx.op.binary.f32(i32 35, float %8246, float -1.000000e+00)  ; FMax(a,b)
  %8251 = call float @dx.op.binary.f32(i32 36, float %8247, float 1.000000e+00)  ; FMin(a,b)
  %8252 = call float @dx.op.binary.f32(i32 36, float %8248, float 1.000000e+00)  ; FMin(a,b)
  %8253 = call float @dx.op.binary.f32(i32 36, float %8249, float 1.000000e+00)  ; FMin(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8250, float 1.000000e+00)  ; FMin(a,b)
  %8255 = fcmp fast olt float %8251, 0x3FEFFF8020000000
  br i1 %8255, label %8256, label %8371, !dx.controlflow.hints !174

; <label>:8256                                    ; preds = %8223
  %8257 = extractvalue %dx.types.CBufRet.f32 %8139, 3
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 0
  %8260 = extractvalue %dx.types.CBufRet.f32 %8258, 1
  %8261 = extractvalue %dx.types.CBufRet.f32 %8258, 2
  %8262 = extractvalue %dx.types.CBufRet.f32 %8258, 3
  %8263 = fsub fast float %8259, %8251
  %8264 = fsub fast float %8260, %8252
  %8265 = fsub fast float %8261, %8253
  %8266 = fsub fast float %8262, %8254
  %8267 = fmul fast float %8263, %8257
  %8268 = fmul fast float %8264, %8257
  %8269 = fmul fast float %8265, %8257
  %8270 = fmul fast float %8266, %8257
  %8271 = fadd fast float %8267, %8251
  %8272 = fadd fast float %8268, %8252
  %8273 = fsub fast float -0.000000e+00, %8272
  %8274 = fadd fast float %8269, %8253
  %8275 = fadd fast float %8270, %8254
  %8276 = fmul fast float %8271, %8271
  %8277 = fsub fast float %8272, %8276
  %8278 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8277)  ; FMax(a,b)
  %8279 = fdiv fast float 1.000000e+00, %8278
  %8280 = fmul fast float %8272, %8271
  %8281 = fsub fast float %8274, %8280
  %8282 = fsub fast float %8231, %8271
  %8283 = fmul fast float %8231, %8231
  %8284 = fsub fast float %8283, %8272
  %8285 = fmul fast float %8282, %8279
  %8286 = fmul fast float %8285, %8281
  %8287 = fsub fast float %8284, %8286
  %8288 = fmul fast float %8272, %8272
  %8289 = fsub fast float %8275, %8288
  %8290 = fmul fast float %8281, %8281
  %8291 = fmul fast float %8290, %8279
  %8292 = fsub fast float %8289, %8291
  %8293 = fdiv fast float %8287, %8292
  %8294 = fmul fast float %8281, %8293
  %8295 = fsub fast float %8282, %8294
  %8296 = fmul fast float %8295, %8279
  %8297 = fmul fast float %8296, %8271
  %8298 = fsub fast float 1.000000e+00, %8297
  %8299 = fmul fast float %8272, %8293
  %8300 = fsub fast float %8298, %8299
  %8301 = fmul fast float %8296, %8296
  %8302 = fmul fast float %8293, 4.000000e+00
  %8303 = fmul fast float %8302, %8300
  %8304 = fsub fast float %8301, %8303
  %8305 = call float @dx.op.unary.f32(i32 24, float %8304)  ; Sqrt(value)
  %8306 = fcmp fast oge float %8296, 0.000000e+00
  %8307 = fsub fast float -0.000000e+00, %8305
  %8308 = select i1 %8306, float %8307, float %8305
  %8309 = fsub fast float %8308, %8296
  %8310 = fdiv fast float %8309, %8293
  %8311 = fdiv fast float %8300, %8309
  %8312 = fmul fast float %8310, 5.000000e-01
  %8313 = fmul fast float %8311, 2.000000e+00
  %8314 = select i1 %8306, float %8312, float %8313
  %8315 = select i1 %8306, float %8313, float %8312
  %8316 = call float @dx.op.binary.f32(i32 35, float %8314, float %8315)  ; FMax(a,b)
  %8317 = call float @dx.op.binary.f32(i32 36, float %8314, float %8315)  ; FMin(a,b)
  %8318 = fcmp fast ogt float %8231, %8317
  br i1 %8318, label %8319, label %8329

; <label>:8319                                    ; preds = %8256
  %8320 = fsub fast float %8231, %8317
  %8321 = fsub fast float %8316, %8317
  %8322 = fmul fast float %8320, %8321
  %8323 = fmul fast float %8316, %8231
  %8324 = fadd fast float %8316, %8231
  %8325 = fmul fast float %8324, %8271
  %8326 = fadd fast float %8323, %8272
  %8327 = fsub fast float %8326, %8325
  %8328 = fdiv fast float %8327, %8322
  br label %8329

; <label>:8329                                    ; preds = %8319, %8256
  %8330 = phi float [ %8328, %8319 ], [ 0.000000e+00, %8256 ]
  %8331 = fcmp fast ogt float %8231, %8316
  %8332 = fsub fast float %8231, %8316
  br i1 %8331, label %8333, label %8343

; <label>:8333                                    ; preds = %8329
  %8334 = fsub fast float %8316, %8317
  %8335 = fmul fast float %8334, %8332
  %8336 = fmul fast float %8317, %8231
  %8337 = fadd fast float %8317, %8231
  %8338 = fmul fast float %8337, %8271
  %8339 = fsub fast float %8273, %8336
  %8340 = fadd fast float %8339, %8338
  %8341 = fdiv fast float %8340, %8335
  %8342 = fadd fast float %8341, %8330
  br label %8343

; <label>:8343                                    ; preds = %8333, %8329
  %8344 = phi float [ %8342, %8333 ], [ %8330, %8329 ]
  %8345 = fsub fast float %8231, %8317
  %8346 = fmul fast float %8345, %8332
  %8347 = fmul fast float %8317, %8316
  %8348 = fadd fast float %8317, %8316
  %8349 = fmul fast float %8348, %8271
  %8350 = fadd fast float %8347, %8272
  %8351 = fsub fast float %8350, %8349
  %8352 = fdiv fast float %8351, %8346
  %8353 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8354 = fcmp fast oeq float %7022, 0.000000e+00
  %8355 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8356 = fcmp fast oeq float %8355, 0.000000e+00
  %8357 = or i1 %8354, %8356
  %8358 = fmul fast float %8355, 2.000000e+00
  %8359 = fadd fast float %8140, %8141
  %8360 = fdiv fast float %8359, %8358
  %8361 = call float @dx.op.unary.f32(i32 7, float %8360)  ; Saturate(value)
  %8362 = fmul fast float %8361, 2.000000e+00
  %8363 = fsub fast float 3.000000e+00, %8362
  %8364 = fmul fast float %8361, %8361
  %8365 = fmul fast float %8364, %8363
  %8366 = select i1 %8357, float 1.000000e+00, float %8365
  %8367 = fmul fast float %8352, %7022
  %8368 = fadd fast float %8353, %8367
  %8369 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8370 = fmul fast float %8366, %8369
  br label %8371

; <label>:8371                                    ; preds = %8343, %8223
  %8372 = phi float [ %8370, %8343 ], [ 0.000000e+00, %8223 ]
  %8373 = fsub fast float 1.000000e+00, %8372
  %8374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8093, float %8094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8375 = extractvalue %dx.types.ResRet.f32 %8374, 0
  %8376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.i32 %8376, 2
  %8378 = icmp eq i32 %8377, 0
  br i1 %8378, label %8384, label %8379

; <label>:8379                                    ; preds = %8371
  %8380 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8381 = fadd fast float %8375, -1.000000e+00
  %8382 = fmul fast float %8380, %8381
  %8383 = fadd fast float %8382, 1.000000e+00
  br label %8384

; <label>:8384                                    ; preds = %8379, %8371
  %8385 = phi float [ %8383, %8379 ], [ %8373, %8371 ]
  br i1 %8147, label %8386, label %8404

; <label>:8386                                    ; preds = %8384
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8389 = fsub fast float %8224, %8388
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fsub fast float %8224, %8146
  %8392 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8393 = fsub fast float %8390, %8392
  %8394 = fsub fast float %8226, %8392
  %8395 = fdiv fast float %8394, %8393
  %8396 = call float @dx.op.unary.f32(i32 7, float %8395)  ; Saturate(value)
  %8397 = fmul fast float %8396, 2.000000e+00
  %8398 = fsub fast float 3.000000e+00, %8397
  %8399 = fsub fast float %8375, %8385
  %8400 = fmul fast float %8396, %8396
  %8401 = fmul fast float %8400, %8399
  %8402 = fmul fast float %8401, %8398
  %8403 = fadd fast float %8402, %8385
  br label %8404

; <label>:8404                                    ; preds = %8386, %8384
  %8405 = phi float [ %8403, %8386 ], [ %8385, %8384 ]
  %8406 = call float @dx.op.binary.f32(i32 35, float %8375, float %8405)  ; FMax(a,b)
  %8407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.i32 %8407, 2
  %8409 = and i32 %8408, 1
  %8410 = icmp eq i32 %8409, 0
  %8411 = fcmp fast une float %8406, 1.000000e+00
  %8412 = and i1 %8411, %8410
  br i1 %8412, label %8413, label %8432

; <label>:8413                                    ; preds = %8404
  %8414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8093, float %8094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8415 = extractvalue %dx.types.ResRet.f32 %8414, 0
  %8416 = extractvalue %dx.types.ResRet.f32 %8414, 1
  %8417 = extractvalue %dx.types.ResRet.f32 %8414, 2
  %8418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.f32 %8418, 1
  %8420 = fmul fast float %8419, %8415
  %8421 = fmul fast float %8419, %8416
  %8422 = fmul fast float %8419, %8417
  %8423 = fcmp fast ogt float %8375, 0x3FEFFF2E40000000
  %8424 = fsub fast float 1.000000e+00, %8406
  %8425 = fsub fast float 1.000000e+00, %8375
  %8426 = fdiv fast float %8424, %8425
  %8427 = call float @dx.op.unary.f32(i32 7, float %8426)  ; Saturate(value)
  %8428 = select i1 %8423, float 0.000000e+00, float %8427
  %8429 = fmul fast float %8420, %8428
  %8430 = fmul fast float %8421, %8428
  %8431 = fmul fast float %8422, %8428
  br label %8432

; <label>:8432                                    ; preds = %8413, %8404
  %8433 = phi float [ 0.000000e+00, %8404 ], [ %8429, %8413 ]
  %8434 = phi float [ 0.000000e+00, %8404 ], [ %8430, %8413 ]
  %8435 = phi float [ 0.000000e+00, %8404 ], [ %8431, %8413 ]
  %8436 = fmul fast float %8433, %7010
  %8437 = fmul fast float %8434, %7010
  %8438 = fmul fast float %8435, %7010
  %8439 = fmul fast float %8406, %8068
  %8440 = call float @dx.op.dot3.f32(i32 55, float %8406, float %8406, float %8406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8441 = call float @dx.op.dot3.f32(i32 55, float %8436, float %8437, float %8438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8442 = select i1 %259, float %8440, float %8406
  %8443 = select i1 %259, float 1.000000e+00, float %8406
  %8444 = select i1 %259, float %8441, float %8436
  %8445 = select i1 %259, float 0.000000e+00, float %8437
  %8446 = select i1 %259, float 0.000000e+00, float %8438
  %8447 = fmul fast float %8442, %8080
  %8448 = fmul fast float %8442, %8081
  %8449 = fmul fast float %8443, %8082
  %8450 = fadd fast float %8447, %8444
  %8451 = fadd fast float %8448, %8445
  %8452 = fadd fast float %8446, %8449
  %8453 = fmul fast float %8442, %8083
  %8454 = fmul fast float %8442, %8084
  %8455 = fmul fast float %8443, %8085
  br label %8456

; <label>:8456                                    ; preds = %8432, %8089, %8058, %7290
  %8457 = phi float [ %7295, %7290 ], [ %8080, %8058 ], [ %8450, %8432 ], [ %8080, %8089 ]
  %8458 = phi float [ %7296, %7290 ], [ %8081, %8058 ], [ %8451, %8432 ], [ %8081, %8089 ]
  %8459 = phi float [ %7297, %7290 ], [ %8082, %8058 ], [ %8452, %8432 ], [ %8082, %8089 ]
  %8460 = phi float [ %7298, %7290 ], [ %8083, %8058 ], [ %8453, %8432 ], [ %8083, %8089 ]
  %8461 = phi float [ %7299, %7290 ], [ %8084, %8058 ], [ %8454, %8432 ], [ %8084, %8089 ]
  %8462 = phi float [ %7300, %7290 ], [ %8085, %8058 ], [ %8455, %8432 ], [ %8085, %8089 ]
  %8463 = phi float [ %7301, %7290 ], [ %8068, %8058 ], [ %8439, %8432 ], [ %8068, %8089 ]
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8466 = extractvalue %dx.types.CBufRet.f32 %8464, 3
  %8467 = fmul fast float %8465, %106
  %8468 = fmul fast float %8466, %107
  %8469 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8470 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  %8471 = select i1 %7032, i32 2, i32 0
  %8472 = or i32 %8471, 1
  %8473 = uitofp i32 %8472 to float
  %8474 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8469, float %8470, float %8473, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8475 = extractvalue %dx.types.ResRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.ResRet.f32 %8474, 1
  %8477 = extractvalue %dx.types.ResRet.f32 %8474, 2
  %8478 = extractvalue %dx.types.ResRet.f32 %8474, 3
  %8479 = add nuw nsw i32 %8471, 2
  %8480 = uitofp i32 %8479 to float
  %8481 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8469, float %8470, float %8480, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.ResRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.ResRet.f32 %8481, 2
  %8485 = extractvalue %dx.types.ResRet.f32 %8481, 3
  %8486 = call float @dx.op.binary.f32(i32 35, float %8476, float %8477)  ; FMax(a,b)
  %8487 = call float @dx.op.binary.f32(i32 35, float %8475, float %8486)  ; FMax(a,b)
  %8488 = call float @dx.op.binary.f32(i32 35, float %8487, float %8478)  ; FMax(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8483, float %8484)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8482, float %8489)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8490, float %8485)  ; FMin(a,b)
  %8492 = fmul fast float %8488, 2.550000e+02
  %8493 = fadd fast float %8492, 0x3F70101020000000
  %8494 = fptoui float %8493 to i32
  %8495 = fmul fast float %8491, 2.550000e+02
  %8496 = fadd fast float %8495, 0x3F70101020000000
  %8497 = fptoui float %8496 to i32
  %8498 = icmp ult i32 %8494, %8497
  br i1 %8498, label %8499, label %8668

; <label>:8499                                    ; preds = %8456
  %8500 = fcmp fast ogt float %96, 9.843750e-01
  %8501 = fadd fast float %7294, -4.000000e+00
  %8502 = select i1 %8500, float -4.000000e+00, float %8501
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float 0.000000e+00)  ; FMax(a,b)
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = fadd fast float %8505, %8503
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8508 = fmul fast float %8506, %8507
  %8509 = call float @dx.op.unary.f32(i32 23, float %8508)  ; Log(value)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8511 = fmul fast float %8510, %8509
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 2
  %8514 = fmul fast float %8511, %8513
  %8515 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  %8516 = uitofp i32 %8494 to float
  %8517 = uitofp i32 %8497 to float
  %8518 = fadd fast float %8516, 5.000000e-01
  %8519 = fadd fast float %8517, 5.000000e-01
  %8520 = fmul fast float %8513, %8518
  %8521 = fmul fast float %8513, %8519
  %8522 = fadd fast float %8520, 0x3F0FFB4800000000
  %8523 = fadd fast float %8521, 0xBF0FFB4800000000
  %8524 = call float @dx.op.binary.f32(i32 35, float %8515, float %8522)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 36, float %8524, float %8523)  ; FMin(a,b)
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 1
  %8528 = extractvalue %dx.types.CBufRet.f32 %8526, 2
  %8529 = extractvalue %dx.types.CBufRet.f32 %8526, 0
  %8530 = select i1 %7032, float %8529, float 0.000000e+00
  %8531 = fmul fast float %8527, %8525
  %8532 = fadd fast float %8530, %8531
  %8533 = fadd fast float %8530, %8528
  %8534 = fsub fast float %8527, %8528
  %8535 = fadd fast float %8534, %8530
  %8536 = call float @dx.op.binary.f32(i32 35, float %8532, float %8533)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 36, float %8536, float %8535)  ; FMin(a,b)
  %8538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8469, float %8470, float %8537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8539 = extractvalue %dx.types.ResRet.f32 %8538, 0
  %8540 = extractvalue %dx.types.ResRet.f32 %8538, 1
  %8541 = extractvalue %dx.types.ResRet.f32 %8538, 2
  %8542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.i32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.i32 %8542, 1
  %8545 = uitofp i32 %8543 to float
  %8546 = uitofp i32 %8544 to float
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = fmul fast float %8545, %8469
  %8551 = fmul fast float %8546, %8470
  %8552 = fadd fast float %8550, -5.000000e-01
  %8553 = fadd fast float %8551, -5.000000e-01
  %8554 = call float @dx.op.unary.f32(i32 22, float %8552)  ; Frc(value)
  %8555 = call float @dx.op.unary.f32(i32 22, float %8553)  ; Frc(value)
  %8556 = fmul fast float %8554, %8554
  %8557 = fmul fast float %8556, %8554
  %8558 = fsub fast float 3.000000e+00, %8554
  %8559 = fmul fast float %8556, %8558
  %8560 = fmul fast float %8554, 3.000000e+00
  %8561 = fmul fast float %8557, 3.000000e+00
  %8562 = fmul fast float %8556, 6.000000e+00
  %8563 = fsub fast float %8561, %8562
  %8564 = fadd fast float %8563, 4.000000e+00
  %8565 = fmul fast float %8564, 0x3FC5555560000000
  %8566 = fmul fast float %8557, -3.000000e+00
  %8567 = fadd fast float %8556, %8554
  %8568 = fmul fast float %8567, 3.000000e+00
  %8569 = fadd fast float %8566, 1.000000e+00
  %8570 = fadd fast float %8569, %8568
  %8571 = fmul fast float %8557, 0x3FC5555560000000
  %8572 = fmul fast float %8555, %8555
  %8573 = fmul fast float %8572, %8555
  %8574 = fsub fast float 3.000000e+00, %8555
  %8575 = fmul fast float %8572, %8574
  %8576 = fmul fast float %8555, 3.000000e+00
  %8577 = fmul fast float %8573, 3.000000e+00
  %8578 = fmul fast float %8572, 6.000000e+00
  %8579 = fsub fast float %8577, %8578
  %8580 = fadd fast float %8579, 4.000000e+00
  %8581 = fmul fast float %8580, 0x3FC5555560000000
  %8582 = fmul fast float %8573, -3.000000e+00
  %8583 = fadd fast float %8572, %8555
  %8584 = fmul fast float %8583, 3.000000e+00
  %8585 = fadd fast float %8582, 1.000000e+00
  %8586 = fadd fast float %8585, %8584
  %8587 = fmul fast float %8573, 0x3FC5555560000000
  %8588 = fadd fast float %8554, 1.000000e+00
  %8589 = fsub fast float 1.000000e+00, %8560
  %8590 = fadd fast float %8589, %8559
  %8591 = fadd fast float %8590, %8564
  %8592 = fmul fast float %8591, 0x3FC5555560000000
  %8593 = fdiv fast float %8565, %8592
  %8594 = fsub fast float %8588, %8593
  %8595 = fsub fast float 1.000000e+00, %8554
  %8596 = fadd fast float %8570, %8557
  %8597 = fmul fast float %8596, 0x3FC5555560000000
  %8598 = fdiv fast float %8571, %8597
  %8599 = fadd fast float %8595, %8598
  %8600 = fadd fast float %8555, 1.000000e+00
  %8601 = fsub fast float 1.000000e+00, %8576
  %8602 = fadd fast float %8601, %8575
  %8603 = fadd fast float %8602, %8580
  %8604 = fmul fast float %8603, 0x3FC5555560000000
  %8605 = fdiv fast float %8581, %8604
  %8606 = fsub fast float %8600, %8605
  %8607 = fsub fast float 1.000000e+00, %8555
  %8608 = fadd fast float %8586, %8573
  %8609 = fmul fast float %8608, 0x3FC5555560000000
  %8610 = fdiv fast float %8587, %8609
  %8611 = fadd fast float %8610, %8607
  %8612 = fmul fast float %8594, %8548
  %8613 = fsub fast float %8469, %8612
  %8614 = fmul fast float %8599, %8548
  %8615 = fadd fast float %8614, %8469
  %8616 = fmul fast float %8611, %8549
  %8617 = fadd fast float %8616, %8470
  %8618 = fmul fast float %8606, %8549
  %8619 = fsub fast float %8470, %8618
  %8620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8613, float %8619, float %8537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8621 = extractvalue %dx.types.ResRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.ResRet.f32 %8620, 1
  %8623 = extractvalue %dx.types.ResRet.f32 %8620, 2
  %8624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8615, float %8619, float %8537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8625 = extractvalue %dx.types.ResRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.ResRet.f32 %8624, 1
  %8627 = extractvalue %dx.types.ResRet.f32 %8624, 2
  %8628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8613, float %8617, float %8537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8615, float %8617, float %8537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8633 = extractvalue %dx.types.ResRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.ResRet.f32 %8632, 1
  %8635 = extractvalue %dx.types.ResRet.f32 %8632, 2
  %8636 = fsub fast float %8629, %8621
  %8637 = fsub fast float %8630, %8622
  %8638 = fsub fast float %8631, %8623
  %8639 = fmul fast float %8636, %8609
  %8640 = fmul fast float %8637, %8609
  %8641 = fmul fast float %8638, %8609
  %8642 = fadd fast float %8639, %8621
  %8643 = fadd fast float %8640, %8622
  %8644 = fadd fast float %8641, %8623
  %8645 = fsub fast float %8633, %8625
  %8646 = fsub fast float %8634, %8626
  %8647 = fsub fast float %8635, %8627
  %8648 = fmul fast float %8645, %8609
  %8649 = fmul fast float %8646, %8609
  %8650 = fmul fast float %8647, %8609
  %8651 = fsub fast float %8625, %8642
  %8652 = fadd fast float %8651, %8648
  %8653 = fsub fast float %8626, %8643
  %8654 = fadd fast float %8653, %8649
  %8655 = fsub fast float %8627, %8644
  %8656 = fadd fast float %8655, %8650
  %8657 = fmul fast float %8652, %8597
  %8658 = fmul fast float %8654, %8597
  %8659 = fmul fast float %8656, %8597
  %8660 = fadd fast float %8657, %8642
  %8661 = fadd fast float %8658, %8643
  %8662 = fadd fast float %8659, %8644
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8665 = fmul fast float %8660, %8664
  %8666 = fmul fast float %8661, %8664
  %8667 = fmul fast float %8662, %8664
  br label %8668

; <label>:8668                                    ; preds = %8499, %8456
  %8669 = phi float [ %8539, %8499 ], [ 1.000000e+00, %8456 ]
  %8670 = phi float [ %8540, %8499 ], [ 1.000000e+00, %8456 ]
  %8671 = phi float [ %8541, %8499 ], [ 1.000000e+00, %8456 ]
  %8672 = phi float [ %8665, %8499 ], [ 0.000000e+00, %8456 ]
  %8673 = phi float [ %8666, %8499 ], [ 0.000000e+00, %8456 ]
  %8674 = phi float [ %8667, %8499 ], [ 0.000000e+00, %8456 ]
  %8675 = fmul fast float %8672, %7010
  %8676 = fmul fast float %8673, %7010
  %8677 = fmul fast float %8674, %7010
  %8678 = fmul fast float %8669, %8463
  %8679 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8670, float %8671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8680 = call float @dx.op.dot3.f32(i32 55, float %8675, float %8676, float %8677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8681 = select i1 %259, float %8679, float %8669
  %8682 = select i1 %259, float %8679, float %8670
  %8683 = select i1 %259, float 1.000000e+00, float %8671
  %8684 = select i1 %259, float %8680, float %8675
  %8685 = select i1 %259, float 0.000000e+00, float %8676
  %8686 = select i1 %259, float 0.000000e+00, float %8677
  %8687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.i32 %8687, 3
  %8689 = and i32 %8688, 3
  %8690 = icmp ne i32 %8689, 0
  %8691 = and i32 %8688, 4
  %8692 = icmp ne i32 %8691, 0
  %8693 = and i1 %8690, %8692
  %8694 = and i1 %259, %8693
  br i1 %8694, label %8695, label %8701

; <label>:8695                                    ; preds = %8668
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 1
  %8698 = fadd fast float %8678, -1.000000e+00
  %8699 = fmul fast float %8697, %8698
  %8700 = fadd fast float %8699, 1.000000e+00
  br label %8701

; <label>:8701                                    ; preds = %8695, %8668
  %8702 = phi float [ %8700, %8695 ], [ %8678, %8668 ]
  %8703 = fadd fast float %8460, %8457
  %8704 = fmul fast float %8681, %8703
  %8705 = fadd fast float %8704, %8684
  %8706 = fadd fast float %8461, %8458
  %8707 = fmul fast float %8682, %8706
  %8708 = fadd fast float %8707, %8685
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  br i1 %259, label %8711, label %8735

; <label>:8711                                    ; preds = %8701
  %8712 = fadd fast float %8705, %8708
  %8713 = fmul fast float %8710, %8712
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8716 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %8717 = fsub fast float %7019, %7013
  %8718 = fadd fast float %8717, %7020
  %8719 = fsub fast float %8718, %8716
  %8720 = extractvalue %dx.types.CBufRet.f32 %7014, 2
  %8721 = fmul fast float %8719, %8720
  %8722 = call float @dx.op.unary.f32(i32 7, float %8721)  ; Saturate(value)
  %8723 = fsub fast float %8722, %8715
  %8724 = fmul fast float %8723, %8702
  %8725 = fadd fast float %8724, %8715
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = fsub fast float %8725, %8727
  %8729 = fmul fast float %8728, 1.000000e+01
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = fsub fast float %3868, %7010
  %8732 = fmul fast float %8730, %8731
  %8733 = fadd fast float %8732, %7010
  %8734 = fmul fast float %8733, %8725
  br label %8759

; <label>:8735                                    ; preds = %8701
  %8736 = fadd fast float %8462, %8459
  %8737 = fmul fast float %8683, %8736
  %8738 = fadd fast float %8737, %8686
  %8739 = fmul fast float %8710, %8705
  %8740 = fmul fast float %8710, %8708
  %8741 = fmul fast float %8710, %8738
  %8742 = call float @dx.op.binary.f32(i32 35, float %8740, float %8741)  ; FMax(a,b)
  %8743 = call float @dx.op.binary.f32(i32 35, float %8739, float %8742)  ; FMax(a,b)
  %8744 = call float @dx.op.binary.f32(i32 35, float %8743, float %7010)  ; FMax(a,b)
  %8745 = fcmp fast ugt float %8744, 0x3F10000000000000
  br i1 %8745, label %8747, label %8746

; <label>:8746                                    ; preds = %8735
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8747

; <label>:8747                                    ; preds = %8746, %8735
  %8748 = add i32 %55, 356
  %8749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8748, i32 undef)  ; BufferLoad(srv,index,wot)
  %8750 = extractvalue %dx.types.ResRet.i32 %8749, 0
  %8751 = and i32 %8750, 32
  %8752 = icmp eq i32 %8751, 0
  br i1 %8752, label %8759, label %8753

; <label>:8753                                    ; preds = %8747
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8756 = fmul fast float %8755, 0x3FE99999A0000000
  %8757 = fadd fast float %8755, %8739
  %8758 = fadd fast float %8756, %8741
  br label %8759

; <label>:8759                                    ; preds = %8753, %8747, %8711
  %8760 = phi float [ %8713, %8711 ], [ %8757, %8753 ], [ %8739, %8747 ]
  %8761 = phi float [ %8734, %8711 ], [ %8740, %8753 ], [ %8740, %8747 ]
  %8762 = phi float [ %8733, %8711 ], [ %8758, %8753 ], [ %8741, %8747 ]
  %8763 = phi float [ %8733, %8711 ], [ %7010, %8753 ], [ %7010, %8747 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8760, float 3.225500e+04)  ; FMin(a,b)
  %8765 = call float @dx.op.binary.f32(i32 36, float %8761, float 3.225500e+04)  ; FMin(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8762, float 3.225500e+04)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8763, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8765)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8767)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !95}
!70 = !{!71, !93, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 5, i8 0, !79}
!82 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 7, i8 0, !79}
!84 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 9, i8 0, !77}
!86 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !74}
!87 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !79}
!88 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 12, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 12, i8 1, !89}
!91 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 13, i8 0, !89}
!92 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
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
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !103, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

