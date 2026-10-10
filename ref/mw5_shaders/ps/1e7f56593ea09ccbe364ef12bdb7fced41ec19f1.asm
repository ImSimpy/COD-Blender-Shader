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
; shader hash: e6e6d449f427f9aa0d2272cb269e6ab2
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
  %203 = add i32 %55, 376
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 2
  %206 = extractvalue %dx.types.ResRet.i32 %204, 3
  %207 = bitcast i32 %205 to float
  %208 = bitcast i32 %206 to float
  %209 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 25, float %209)  ; Rsqrt(value)
  %211 = fmul fast float %210, %113
  %212 = fmul fast float %210, %114
  %213 = fmul fast float %210, %115
  %214 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 25, float %214)  ; Rsqrt(value)
  %216 = fmul fast float %215, %193
  %217 = fmul fast float %215, %194
  %218 = fmul fast float %215, %195
  %219 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float %211, float %212, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = fmul fast float %219, %219
  %221 = fmul fast float %220, %207
  %222 = fadd fast float %221, %208
  %223 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %224 = fmul fast float %106, 5.000000e-01
  %225 = fmul fast float %107, 5.000000e-01
  %226 = fptosi float %224 to i32
  %227 = fptosi float %225 to i32
  %228 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = lshr i32 %229, 18
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F4C00EBA0000000
  %233 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %234 = fadd fast float %233, -1.000000e+00
  %235 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %236 = extractvalue %dx.types.Dimensions %235, 0
  %237 = sitofp i32 %236 to float
  %238 = extractvalue %dx.types.Dimensions %235, 1
  %239 = sitofp i32 %238 to float
  %240 = fcmp fast oge float %224, %237
  %241 = fcmp fast oge float %225, %239
  %242 = or i1 %240, %241
  %243 = select i1 %242, float 0x4197782600000000, float %234
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %247 = fmul fast float %245, %106
  %248 = fmul fast float %246, %107
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 114688
  %252 = icmp ne i32 %251, 0
  %253 = select i1 %252, float %247, float 0.000000e+00
  %254 = select i1 %252, float %248, float 0.000000e+00
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %253, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fmul fast float %256, 2.550000e+02
  %258 = fptoui float %257 to i32
  %259 = select i1 %252, i32 %258, i32 0
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 3
  %262 = and i32 %261, 3
  %263 = icmp ne i32 %262, 0
  %264 = and i32 %261, 4
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %263, %265
  br i1 %266, label %267, label %276

; <label>:267                                     ; preds = %0
  %268 = fmul fast float %141, %107
  %269 = fmul fast float %140, %106
  %270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %269, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fsub fast float 1.000000e+00, %271
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = fcmp fast olt float %272, %274
  br label %279

; <label>:276                                     ; preds = %0
  %277 = icmp eq i32 %264, 0
  %278 = and i1 %263, %277
  br label %279

; <label>:279                                     ; preds = %276, %267
  %280 = phi i1 [ %275, %267 ], [ %278, %276 ]
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fmul fast float %282, 0x3FE3C6EF40000000
  %284 = frem fast float %106, 2.560000e+02
  %285 = frem fast float %107, 2.560000e+02
  %286 = fptoui float %284 to i32
  %287 = fptoui float %285 to i32
  %288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %286, i32 %287, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fadd fast float %289, %283
  %291 = call float @dx.op.unary.f32(i32 22, float %290)  ; Frc(value)
  %292 = add i32 %55, 156
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = shl i32 %294, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %294, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 22
  %302 = shl nuw nsw i32 %301, 5
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %55, 216
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = lshr i32 %306, 8
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %306, 16
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = add i32 %55, 36
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %55, 288
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %329, 0x3F50624DE0000000
  %333 = fmul fast float %331, 0x3F50624DE0000000
  %334 = add i32 %55, 172
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = shl i32 %336, 4
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %336, 7
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 22
  %344 = shl nuw nsw i32 %343, 5
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %55, 232
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %348, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %348, 16
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = add i32 %55, 52
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %55, 304
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = fmul fast float %371, 0x3F50624DE0000000
  %375 = fmul fast float %373, 0x3F50624DE0000000
  %376 = add i32 %55, 188
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = shl i32 %378, 4
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %378, 7
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %378, 22
  %386 = shl nuw nsw i32 %385, 5
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %55, 248
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = lshr i32 %390, 8
  %395 = and i32 %394, 255
  %396 = uitofp i32 %395 to float
  %397 = fmul fast float %396, 0x3F70101020000000
  %398 = lshr i32 %390, 16
  %399 = and i32 %398, 255
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %400, 0x3F70101020000000
  %402 = add i32 %55, 68
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = add i32 %55, 320
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = fmul fast float %413, 0x3F50624DE0000000
  %417 = fmul fast float %415, 0x3F50624DE0000000
  %418 = add i32 %55, 204
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = shl i32 %420, 4
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %420, 7
  %425 = and i32 %424, 32752
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %420, 22
  %428 = shl nuw nsw i32 %427, 5
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %55, 264
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = lshr i32 %432, 8
  %437 = and i32 %436, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %432, 16
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = add i32 %55, 84
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = add i32 %55, 336
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = fmul fast float %455, 0x3F50624DE0000000
  %459 = fmul fast float %457, 0x3F50624DE0000000
  %460 = add i32 %55, 364
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 32
  %464 = icmp eq i32 %463, 0
  %465 = and i32 %462, 64
  %466 = icmp eq i32 %465, 0
  %467 = and i32 %462, 128
  %468 = icmp eq i32 %467, 0
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 2
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %488, label %473

; <label>:473                                     ; preds = %279
  %474 = add i32 %55, 552
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = add i32 %476, 0
  %478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %479 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %478, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = fmul fast float %483, %90
  %485 = fmul fast float %480, %91
  %486 = fmul fast float %481, %92
  %487 = fmul fast float %482, %93
  br label %488

; <label>:488                                     ; preds = %473, %279
  %489 = phi float [ %93, %279 ], [ %487, %473 ]
  %490 = phi float [ %92, %279 ], [ %486, %473 ]
  %491 = phi float [ %91, %279 ], [ %485, %473 ]
  %492 = phi float [ %90, %279 ], [ %484, %473 ]
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 2
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %516, label %497

; <label>:497                                     ; preds = %488
  %498 = add i32 %55, 44
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 1
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %491, float 1.000000e+00
  %504 = add i32 %55, 60
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 1
  %508 = icmp ne i32 %507, 0
  %509 = select i1 %508, float %490, float 1.000000e+00
  %510 = add i32 %55, 76
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 1
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %489, float 1.000000e+00
  br label %516

; <label>:516                                     ; preds = %497, %488
  %517 = phi float [ %489, %488 ], [ %515, %497 ]
  %518 = phi float [ %490, %488 ], [ %509, %497 ]
  %519 = phi float [ %491, %488 ], [ %503, %497 ]
  %520 = lshr i32 %494, 20
  %521 = and i32 %520, 3
  %522 = add nuw nsw i32 %521, 1
  %523 = add i32 %55, 24
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add i32 %55, 28
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = or i32 %528, %525
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %1149, label %531

; <label>:531                                     ; preds = %516
  %532 = and i32 %525, 262144
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %61, float 1.000000e+00
  %535 = select i1 %533, float %62, float 0.000000e+00
  %536 = select i1 %533, float %63, float 0.000000e+00
  %537 = select i1 %533, float %64, float 1.000000e+00
  %538 = select i1 %533, float %65, float %88
  %539 = select i1 %533, float %66, float %89
  %540 = add i32 %55, 284
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = lshr i32 %542, 16
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = fmul fast float %544, 0x3F50624DE0000000
  %546 = add i32 %55, 88
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = lshr i32 %548, 16
  %550 = and i32 %549, 255
  %551 = lshr i32 %548, 24
  %552 = add i32 %55, 292
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %554, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = add i32 %55, 32
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = lshr i32 %561, 22
  %563 = shl nuw nsw i32 %562, 5
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = shl i32 %561, 4
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %561, 7
  %569 = and i32 %568, 32752
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %573 = fmul fast float %572, 1.000000e+03
  %574 = fmul fast float %332, %573
  %575 = call float @dx.op.unary.f32(i32 22, float %574)  ; Frc(value)
  %576 = fadd fast float %575, %322
  %577 = fmul fast float %333, %573
  %578 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %579 = fadd fast float %578, %324
  %580 = fmul fast float %545, %573
  %581 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %582 = fmul fast float %581, 0x401921FB60000000
  %583 = fadd fast float %582, %564
  %584 = call float @dx.op.unary.f32(i32 13, float %583)  ; Sin(value)
  %585 = call float @dx.op.unary.f32(i32 12, float %583)  ; Cos(value)
  %586 = fsub fast float -0.000000e+00, %584
  %587 = fadd fast float %538, -5.000000e-01
  %588 = fadd fast float %539, -5.000000e-01
  %589 = fmul fast float %556, %587
  %590 = fmul fast float %558, %588
  %591 = fadd fast float %589, 5.000000e-01
  %592 = fadd fast float %590, 5.000000e-01
  %593 = fmul fast float %567, %591
  %594 = fmul fast float %570, %592
  %595 = fmul fast float %585, %593
  %596 = call float @dx.op.tertiary.f32(i32 46, float %586, float %594, float %595)  ; FMad(a,b,c)
  %597 = fmul fast float %584, %593
  %598 = call float @dx.op.tertiary.f32(i32 46, float %585, float %594, float %597)  ; FMad(a,b,c)
  %599 = fadd fast float %576, %596
  %600 = fadd fast float %579, %598
  %601 = icmp ugt i32 %550, 1
  %602 = icmp ugt i32 %548, 33554431
  %603 = or i1 %602, %601
  br i1 %603, label %604, label %629

; <label>:604                                     ; preds = %531
  %605 = add i32 %55, 228
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 16
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = fmul fast float %572, %609
  %611 = call float @dx.op.unary.f32(i32 22, float %610)  ; Frc(value)
  %612 = mul nuw nsw i32 %550, %551
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %611, %613
  %615 = call float @dx.op.unary.f32(i32 27, float %614)  ; Round_ni(value)
  %616 = fptoui float %615 to i32
  %617 = urem i32 %616, %550
  %618 = udiv i32 %616, %551
  %619 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %620 = call float @dx.op.unary.f32(i32 22, float %600)  ; Frc(value)
  %621 = uitofp i32 %617 to float
  %622 = uitofp i32 %618 to float
  %623 = fadd fast float %619, %621
  %624 = fadd fast float %620, %622
  %625 = uitofp i32 %550 to float
  %626 = uitofp i32 %551 to float
  %627 = fdiv fast float %623, %625
  %628 = fdiv fast float %624, %626
  br label %629

; <label>:629                                     ; preds = %604, %531
  %630 = phi float [ %627, %604 ], [ %599, %531 ]
  %631 = phi float [ %628, %604 ], [ %600, %531 ]
  %632 = and i32 %525, 256
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %680, label %634

; <label>:634                                     ; preds = %629
  %635 = add i32 %55, 488
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = add i32 %637, 0
  %639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %640 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %639, %dx.types.Handle %103, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = add i32 %55, 100
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = shl i32 %644, 4
  %646 = and i32 %645, 32752
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = lshr i32 %644, 7
  %649 = and i32 %648, 32752
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = fsub fast float 1.000000e+00, %492
  %652 = call float @dx.op.binary.f32(i32 35, float %651, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %653 = bitcast float %492 to i32
  %654 = sitofp i32 %653 to float
  %655 = fadd fast float %654, 0xC1CFBF8940000000
  %656 = fmul fast float %650, %655
  %657 = fadd fast float %656, 0x41CFBF8940000000
  %658 = fptosi float %657 to i32
  %659 = bitcast i32 %658 to float
  %660 = bitcast float %652 to i32
  %661 = sitofp i32 %660 to float
  %662 = fadd fast float %661, 0xC1CFBF8940000000
  %663 = fmul fast float %662, %650
  %664 = fadd fast float %663, 0x41CFBF8940000000
  %665 = fptosi float %664 to i32
  %666 = bitcast i32 %665 to float
  %667 = fmul fast float %659, %647
  %668 = fmul fast float %666, %647
  %669 = fsub fast float %652, %667
  %670 = fadd fast float %668, %652
  %671 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %672 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %673 = fsub fast float %641, %671
  %674 = fsub fast float %672, %671
  %675 = bitcast float %674 to i32
  %676 = sub nsw i32 2129859010, %675
  %677 = bitcast i32 %676 to float
  %678 = fmul fast float %677, %673
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br label %680

; <label>:680                                     ; preds = %634, %629
  %681 = phi float [ %679, %634 ], [ %492, %629 ]
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 128
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %702, label %686

; <label>:686                                     ; preds = %680
  %687 = add i32 %55, 472
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %103, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 524288
  %697 = icmp ne i32 %696, 0
  %698 = fcmp fast ogt float %693, 0x3FE0101020000000
  %699 = select i1 %698, float 1.000000e+00, float 0.000000e+00
  %700 = select i1 %697, float %699, float %693
  %701 = fmul fast float %700, %681
  br label %702

; <label>:702                                     ; preds = %686, %680
  %703 = phi float [ %701, %686 ], [ %681, %680 ]
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 16
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %906, label %708

; <label>:708                                     ; preds = %702
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %55, 424
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = add i32 %713, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %715, %dx.types.Handle %102, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = extractvalue %dx.types.ResRet.f32 %716, 3
  %721 = and i32 %710, 255
  %722 = uitofp i32 %721 to float
  %723 = lshr i32 %710, 8
  %724 = and i32 %723, 255
  %725 = uitofp i32 %724 to float
  %726 = fmul fast float %720, %722
  %727 = fadd fast float %726, %725
  %728 = fmul fast float %727, 0x3F70101000000000
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 512
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %741, label %733

; <label>:733                                     ; preds = %708
  %734 = add i32 %55, 504
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %103, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  br label %741

; <label>:741                                     ; preds = %733, %708
  %742 = phi float [ %740, %733 ], [ 1.000000e+00, %708 ]
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 33554432
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %853, label %747

; <label>:747                                     ; preds = %741
  %748 = add i32 %55, 224
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 65535
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %750, 16
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = add i32 %55, 228
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 65535
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = lshr i32 %761, 24
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = and i32 %761, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %761, 8
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %761, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = add i32 %55, 220
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = lshr i32 %778, 24
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = and i32 %778, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = lshr i32 %778, 8
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101020000000
  %789 = lshr i32 %778, 16
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, 0x3F70101020000000
  %793 = bitcast float %717 to i32
  %794 = ashr i32 %793, 1
  %795 = sub nsw i32 1597463174, %794
  %796 = bitcast i32 %795 to float
  %797 = fmul fast float %717, 5.000000e-01
  %798 = fmul fast float %796, %796
  %799 = fmul fast float %798, %797
  %800 = fsub fast float 1.500000e+00, %799
  %801 = fmul fast float %796, %717
  %802 = fmul fast float %801, %800
  %803 = bitcast float %718 to i32
  %804 = ashr i32 %803, 1
  %805 = sub nsw i32 1597463174, %804
  %806 = bitcast i32 %805 to float
  %807 = fmul fast float %718, 5.000000e-01
  %808 = fmul fast float %806, %806
  %809 = fmul fast float %808, %807
  %810 = fsub fast float 1.500000e+00, %809
  %811 = fmul fast float %806, %718
  %812 = fmul fast float %811, %810
  %813 = bitcast float %719 to i32
  %814 = ashr i32 %813, 1
  %815 = sub nsw i32 1597463174, %814
  %816 = bitcast i32 %815 to float
  %817 = fmul fast float %719, 5.000000e-01
  %818 = fmul fast float %816, %816
  %819 = fmul fast float %818, %817
  %820 = fsub fast float 1.500000e+00, %819
  %821 = fmul fast float %816, %719
  %822 = fmul fast float %821, %820
  %823 = fsub fast float %802, %784
  %824 = fsub fast float %812, %788
  %825 = fsub fast float %822, %792
  %826 = fmul fast float %823, %752
  %827 = fmul fast float %824, %754
  %828 = fmul fast float %825, %759
  %829 = fadd fast float %826, %767
  %830 = fadd fast float %827, %771
  %831 = fadd fast float %828, %775
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %834 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %835 = fmul fast float %832, %832
  %836 = fmul fast float %833, %833
  %837 = fmul fast float %834, %834
  %838 = fsub fast float %835, %717
  %839 = fsub fast float %836, %718
  %840 = fsub fast float %837, %719
  %841 = fmul fast float %838, %742
  %842 = fmul fast float %839, %742
  %843 = fmul fast float %840, %742
  %844 = fadd fast float %841, %717
  %845 = fadd fast float %842, %718
  %846 = fadd fast float %843, %719
  %847 = fadd fast float %764, %728
  %848 = fsub fast float %847, %781
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = fsub fast float %849, %728
  %851 = fmul fast float %850, %742
  %852 = fadd fast float %851, %728
  br label %906

; <label>:853                                     ; preds = %741
  %854 = and i32 %744, 134217728
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %890, label %856

; <label>:856                                     ; preds = %853
  %857 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %860 = fadd fast float %857, -5.000000e-01
  %861 = fadd fast float %858, -5.000000e-01
  %862 = fadd fast float %859, -5.000000e-01
  %863 = fmul fast float %860, %742
  %864 = fmul fast float %861, %742
  %865 = fmul fast float %862, %742
  %866 = fadd fast float %863, 5.000000e-01
  %867 = fadd fast float %864, 5.000000e-01
  %868 = fadd fast float %865, 5.000000e-01
  %869 = call float @dx.op.unary.f32(i32 24, float %717)  ; Sqrt(value)
  %870 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %871 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %872 = fmul fast float %866, 2.000000e+00
  %873 = fsub fast float 1.000000e+00, %872
  %874 = fmul fast float %873, %869
  %875 = fadd fast float %874, %872
  %876 = fmul fast float %875, %869
  %877 = fmul fast float %867, 2.000000e+00
  %878 = fsub fast float 1.000000e+00, %877
  %879 = fmul fast float %878, %870
  %880 = fadd fast float %879, %877
  %881 = fmul fast float %880, %870
  %882 = fmul fast float %868, 2.000000e+00
  %883 = fsub fast float 1.000000e+00, %882
  %884 = fmul fast float %883, %871
  %885 = fadd fast float %884, %882
  %886 = fmul fast float %885, %871
  %887 = fmul fast float %876, %876
  %888 = fmul fast float %881, %881
  %889 = fmul fast float %886, %886
  br label %906

; <label>:890                                     ; preds = %853
  %891 = fmul fast float %309, %309
  %892 = fmul fast float %313, %313
  %893 = fmul fast float %317, %317
  %894 = fadd fast float %891, -1.000000e+00
  %895 = fadd fast float %892, -1.000000e+00
  %896 = fadd fast float %893, -1.000000e+00
  %897 = fmul fast float %742, %894
  %898 = fmul fast float %742, %895
  %899 = fmul fast float %742, %896
  %900 = fadd fast float %897, 1.000000e+00
  %901 = fadd fast float %898, 1.000000e+00
  %902 = fadd fast float %899, 1.000000e+00
  %903 = fmul fast float %900, %717
  %904 = fmul fast float %901, %718
  %905 = fmul fast float %902, %719
  br label %906

; <label>:906                                     ; preds = %890, %856, %747, %702
  %907 = phi float [ %852, %747 ], [ %728, %856 ], [ %728, %890 ], [ 0x3FA23C0BE0000000, %702 ]
  %908 = phi float [ %844, %747 ], [ %887, %856 ], [ %903, %890 ], [ 1.000000e+00, %702 ]
  %909 = phi float [ %845, %747 ], [ %888, %856 ], [ %904, %890 ], [ 1.000000e+00, %702 ]
  %910 = phi float [ %846, %747 ], [ %889, %856 ], [ %905, %890 ], [ 1.000000e+00, %702 ]
  %911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.i32 %911, 1
  %913 = and i32 %912, 1
  %914 = icmp ne i32 %913, 0
  %915 = add i32 %55, 372
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 32
  %919 = icmp ne i32 %918, 0
  %920 = and i1 %914, %919
  %921 = select i1 %920, float 1.000000e+00, float %908
  %922 = select i1 %920, float 0x3FD3333340000000, float %909
  %923 = select i1 %920, float 0x3FD3333340000000, float %910
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 32
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %1000, label %928

; <label>:928                                     ; preds = %906
  %929 = add i32 %55, 92
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %55, 440
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = add i32 %934, 0
  %936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %936, %dx.types.Handle %102, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = extractvalue %dx.types.ResRet.f32 %937, 1
  %940 = extractvalue %dx.types.ResRet.f32 %937, 2
  %941 = extractvalue %dx.types.ResRet.f32 %937, 3
  %942 = and i32 %931, 255
  %943 = uitofp i32 %942 to float
  %944 = lshr i32 %931, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = lshr i32 %931, 16
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101000000000
  %951 = fmul fast float %938, %943
  %952 = fadd fast float %951, %946
  %953 = fmul fast float %952, 0x3F70101000000000
  %954 = fadd fast float %939, -5.000000e-01
  %955 = fadd fast float %941, -5.000000e-01
  %956 = fmul fast float %954, %950
  %957 = fmul fast float %955, %950
  %958 = fadd fast float %956, 5.000000e-01
  %959 = fadd fast float %957, 5.000000e-01
  %960 = fmul fast float %958, 2.000000e+00
  %961 = fadd fast float %960, -1.000000e+00
  %962 = fmul fast float %959, 2.000000e+00
  %963 = fadd fast float %962, -1.000000e+00
  %964 = fadd fast float %961, %963
  %965 = fmul fast float %964, 5.000000e-01
  %966 = fsub fast float %961, %963
  %967 = fmul fast float %966, 5.000000e-01
  %968 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %969 = fsub fast float 1.000000e+00, %968
  %970 = call float @dx.op.unary.f32(i32 6, float %967)  ; FAbs(value)
  %971 = fsub fast float %969, %970
  %972 = call float @dx.op.dot3.f32(i32 55, float %965, float %967, float %971, float %965, float %967, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 25, float %972)  ; Rsqrt(value)
  %974 = fmul fast float %965, %973
  %975 = fmul fast float %967, %973
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 67108864
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %996, label %980

; <label>:980                                     ; preds = %928
  %981 = add i32 %55, 280
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 65535
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 65535
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = lshr i32 %983, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = fsub fast float %953, %991
  %993 = fmul fast float %992, %985
  %994 = fadd fast float %993, %989
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  br label %996

; <label>:996                                     ; preds = %980, %928
  %997 = phi float [ %995, %980 ], [ %953, %928 ]
  %998 = call float @dx.op.dot2.f32(i32 54, float %974, float %975, float %534, float %535)  ; Dot2(ax,ay,bx,by)
  %999 = call float @dx.op.dot2.f32(i32 54, float %974, float %975, float %536, float %537)  ; Dot2(ax,ay,bx,by)
  br label %1000

; <label>:1000                                    ; preds = %996, %906
  %1001 = phi float [ %997, %996 ], [ 0x3FD6666660000000, %906 ]
  %1002 = phi float [ %998, %996 ], [ 0.000000e+00, %906 ]
  %1003 = phi float [ %999, %996 ], [ 0.000000e+00, %906 ]
  %1004 = phi float [ %940, %996 ], [ 1.000000e+00, %906 ]
  %1005 = add i32 %55, 160
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = lshr i32 %1007, 22
  %1009 = shl nuw nsw i32 %1008, 5
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 64
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1048, label %1015

; <label>:1015                                    ; preds = %1000
  %1016 = add i32 %55, 456
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %1018, 0
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %1022, 131072
  %1024 = icmp eq i32 %1023, 0
  %1025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1020, %dx.types.Handle %102, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = fmul fast float %1026, %297
  %1030 = fmul fast float %1027, %300
  %1031 = fmul fast float %1028, %303
  br i1 %1024, label %1038, label %1032

; <label>:1032                                    ; preds = %1015
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = fmul fast float %1034, %1029
  %1036 = fmul fast float %1034, %1030
  %1037 = fmul fast float %1034, %1031
  br label %1038

; <label>:1038                                    ; preds = %1032, %1015
  %1039 = phi float [ %1035, %1032 ], [ %1029, %1015 ]
  %1040 = phi float [ %1036, %1032 ], [ %1030, %1015 ]
  %1041 = phi float [ %1037, %1032 ], [ %1031, %1015 ]
  %1042 = fmul fast float %1039, %1010
  %1043 = select i1 %280, float %1042, float %1039
  %1044 = call float @dx.op.dot3.f32(i32 55, float %1043, float %1040, float %1041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = select i1 %280, float 0.000000e+00, float %1039
  %1046 = select i1 %280, float %1044, float %1040
  %1047 = select i1 %280, float 0.000000e+00, float %1041
  br label %1048

; <label>:1048                                    ; preds = %1038, %1000
  %1049 = phi float [ %1045, %1038 ], [ 0.000000e+00, %1000 ]
  %1050 = phi float [ %1046, %1038 ], [ 0.000000e+00, %1000 ]
  %1051 = phi float [ %1047, %1038 ], [ 0.000000e+00, %1000 ]
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 1024
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1086, label %1056

; <label>:1056                                    ; preds = %1048
  %1057 = add i32 %55, 152
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F70101020000000
  %1063 = lshr i32 %1059, 8
  %1064 = and i32 %1063, 255
  %1065 = uitofp i32 %1064 to float
  %1066 = fmul fast float %1065, 0x3F70101020000000
  %1067 = lshr i32 %1059, 16
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1069, 0x3F70101020000000
  %1071 = fmul fast float %1062, %1062
  %1072 = fmul fast float %1066, %1066
  %1073 = fmul fast float %1070, %1070
  %1074 = add i32 %55, 520
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %1076, 0
  %1078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1078, %dx.types.Handle %103, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = fmul fast float %1071, %1080
  %1084 = fmul fast float %1072, %1081
  %1085 = fmul fast float %1073, %1082
  br label %1086

; <label>:1086                                    ; preds = %1056, %1048
  %1087 = phi float [ %1083, %1056 ], [ 0.000000e+00, %1048 ]
  %1088 = phi float [ %1084, %1056 ], [ 0.000000e+00, %1048 ]
  %1089 = phi float [ %1085, %1056 ], [ 0.000000e+00, %1048 ]
  %1090 = fcmp fast ogt float %1087, 0.000000e+00
  %1091 = fcmp fast ogt float %1088, 0.000000e+00
  %1092 = fcmp fast ogt float %1089, 0.000000e+00
  %1093 = call float @dx.op.unary.f32(i32 23, float %1087)  ; Log(value)
  %1094 = call float @dx.op.unary.f32(i32 23, float %1088)  ; Log(value)
  %1095 = call float @dx.op.unary.f32(i32 23, float %1089)  ; Log(value)
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = lshr i32 %1097, 7
  %1099 = and i32 %1098, 32752
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = fmul fast float %1093, 0xBFE62E4300000000
  %1102 = fmul fast float %1101, %1100
  %1103 = fmul fast float %1094, 0xBFE62E4300000000
  %1104 = fmul fast float %1103, %1100
  %1105 = fmul fast float %1095, 0xBFE62E4300000000
  %1106 = fmul fast float %1105, %1100
  %1107 = select i1 %1090, float %1102, float 1.270000e+02
  %1108 = select i1 %1091, float %1104, float 1.270000e+02
  %1109 = select i1 %1092, float %1106, float 1.270000e+02
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 10240
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1134, label %1114

; <label>:1114                                    ; preds = %1086
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 2048
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1134, label %1119

; <label>:1119                                    ; preds = %1114
  %1120 = add i32 %55, 536
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %103, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 3
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = shl i32 %1128, 4
  %1130 = and i32 %1129, 32752
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130)  ; LegacyF16ToF32(value)
  %1132 = fmul fast float %1131, %1126
  %1133 = call float @dx.op.binary.f32(i32 35, float %1132, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1134

; <label>:1134                                    ; preds = %1119, %1114, %1086
  %1135 = phi float [ %1133, %1119 ], [ 0x3F70101020000000, %1114 ], [ 0x3F70101020000000, %1086 ]
  %1136 = add i32 %55, 96
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = lshr i32 %1138, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = call float @dx.op.dot3.f32(i32 55, float %921, float %922, float %923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = fmul fast float %1143, %1144
  %1146 = fadd fast float %1145, %1140
  %1147 = fmul fast float %1146, 0x3F70101020000000
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  br label %1149

; <label>:1149                                    ; preds = %1134, %516
  %1150 = phi float [ 0.000000e+00, %516 ], [ %1002, %1134 ]
  %1151 = phi float [ 0.000000e+00, %516 ], [ %1003, %1134 ]
  %1152 = phi float [ 0.000000e+00, %516 ], [ %921, %1134 ]
  %1153 = phi float [ 0.000000e+00, %516 ], [ %922, %1134 ]
  %1154 = phi float [ 0.000000e+00, %516 ], [ %923, %1134 ]
  %1155 = phi float [ 0.000000e+00, %516 ], [ %1049, %1134 ]
  %1156 = phi float [ 0.000000e+00, %516 ], [ %1050, %1134 ]
  %1157 = phi float [ 0.000000e+00, %516 ], [ %1051, %1134 ]
  %1158 = phi float [ 0.000000e+00, %516 ], [ %1107, %1134 ]
  %1159 = phi float [ 0.000000e+00, %516 ], [ %1108, %1134 ]
  %1160 = phi float [ 0.000000e+00, %516 ], [ %1109, %1134 ]
  %1161 = phi float [ 0.000000e+00, %516 ], [ %907, %1134 ]
  %1162 = phi float [ 0.000000e+00, %516 ], [ %703, %1134 ]
  %1163 = phi float [ 0.000000e+00, %516 ], [ %1001, %1134 ]
  %1164 = phi float [ 0.000000e+00, %516 ], [ %1004, %1134 ]
  %1165 = phi float [ 0.000000e+00, %516 ], [ %1135, %1134 ]
  %1166 = phi float [ 0.000000e+00, %516 ], [ %1148, %1134 ]
  br i1 %464, label %2038, label %1167

; <label>:1167                                    ; preds = %1149
  %1168 = icmp ult i32 %522, 2
  %1169 = add i32 %55, 40
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %55, 44
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = or i32 %1174, %1171
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %2038, label %1177

; <label>:1177                                    ; preds = %1167
  %1178 = and i32 %1171, 262144
  %1179 = icmp ne i32 %1178, 0
  %1180 = select i1 %1179, float %61, float 1.000000e+00
  %1181 = select i1 %1179, float %62, float 0.000000e+00
  %1182 = select i1 %1179, float %63, float 0.000000e+00
  %1183 = select i1 %1179, float %64, float 1.000000e+00
  %1184 = select i1 %1179, float %65, float %88
  %1185 = select i1 %1179, float %66, float %89
  %1186 = add i32 %55, 300
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 16
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = fmul fast float %1190, 0x3F50624DE0000000
  %1192 = add i32 %55, 104
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = and i32 %1195, 255
  %1197 = lshr i32 %1194, 24
  %1198 = add i32 %55, 308
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 65535
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1200, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = add i32 %55, 48
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = lshr i32 %1207, 22
  %1209 = shl nuw nsw i32 %1208, 5
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = shl i32 %1207, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = lshr i32 %1207, 7
  %1215 = and i32 %1214, 32752
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1219 = fmul fast float %1218, 1.000000e+03
  %1220 = fmul fast float %374, %1219
  %1221 = call float @dx.op.unary.f32(i32 22, float %1220)  ; Frc(value)
  %1222 = fadd fast float %1221, %364
  %1223 = fmul fast float %375, %1219
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = fadd fast float %1224, %366
  %1226 = fmul fast float %1191, %1219
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = fmul fast float %1227, 0x401921FB60000000
  %1229 = fadd fast float %1228, %1210
  %1230 = call float @dx.op.unary.f32(i32 13, float %1229)  ; Sin(value)
  %1231 = call float @dx.op.unary.f32(i32 12, float %1229)  ; Cos(value)
  %1232 = fsub fast float -0.000000e+00, %1230
  %1233 = fadd fast float %1184, -5.000000e-01
  %1234 = fadd fast float %1185, -5.000000e-01
  %1235 = fmul fast float %1202, %1233
  %1236 = fmul fast float %1204, %1234
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = fadd fast float %1236, 5.000000e-01
  %1239 = fmul fast float %1213, %1237
  %1240 = fmul fast float %1216, %1238
  %1241 = fmul fast float %1231, %1239
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1232, float %1240, float %1241)  ; FMad(a,b,c)
  %1243 = fmul fast float %1230, %1239
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1231, float %1240, float %1243)  ; FMad(a,b,c)
  %1245 = fadd fast float %1222, %1242
  %1246 = fadd fast float %1225, %1244
  %1247 = icmp ugt i32 %1196, 1
  %1248 = icmp ugt i32 %1194, 33554431
  %1249 = or i1 %1248, %1247
  br i1 %1249, label %1250, label %1275

; <label>:1250                                    ; preds = %1177
  %1251 = add i32 %55, 244
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = lshr i32 %1253, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = fmul fast float %1218, %1255
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = mul nuw nsw i32 %1196, %1197
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1257, %1259
  %1261 = call float @dx.op.unary.f32(i32 27, float %1260)  ; Round_ni(value)
  %1262 = fptoui float %1261 to i32
  %1263 = urem i32 %1262, %1196
  %1264 = udiv i32 %1262, %1197
  %1265 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1266 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1267 = uitofp i32 %1263 to float
  %1268 = uitofp i32 %1264 to float
  %1269 = fadd fast float %1265, %1267
  %1270 = fadd fast float %1266, %1268
  %1271 = uitofp i32 %1196 to float
  %1272 = uitofp i32 %1197 to float
  %1273 = fdiv fast float %1269, %1271
  %1274 = fdiv fast float %1270, %1272
  br label %1275

; <label>:1275                                    ; preds = %1250, %1177
  %1276 = phi float [ %1273, %1250 ], [ %1245, %1177 ]
  %1277 = phi float [ %1274, %1250 ], [ %1246, %1177 ]
  %1278 = and i32 %1171, 256
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1326, label %1280

; <label>:1280                                    ; preds = %1275
  %1281 = add i32 %55, 492
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = add i32 %1283, 0
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1285, %dx.types.Handle %103, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = add i32 %55, 116
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = shl i32 %1290, 4
  %1292 = and i32 %1291, 32752
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = lshr i32 %1290, 7
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = fsub fast float 1.000000e+00, %519
  %1298 = call float @dx.op.binary.f32(i32 35, float %1297, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1299 = bitcast float %519 to i32
  %1300 = sitofp i32 %1299 to float
  %1301 = fadd fast float %1300, 0xC1CFBF8940000000
  %1302 = fmul fast float %1296, %1301
  %1303 = fadd fast float %1302, 0x41CFBF8940000000
  %1304 = fptosi float %1303 to i32
  %1305 = bitcast i32 %1304 to float
  %1306 = bitcast float %1298 to i32
  %1307 = sitofp i32 %1306 to float
  %1308 = fadd fast float %1307, 0xC1CFBF8940000000
  %1309 = fmul fast float %1308, %1296
  %1310 = fadd fast float %1309, 0x41CFBF8940000000
  %1311 = fptosi float %1310 to i32
  %1312 = bitcast i32 %1311 to float
  %1313 = fmul fast float %1305, %1293
  %1314 = fmul fast float %1312, %1293
  %1315 = fsub fast float %1298, %1313
  %1316 = fadd fast float %1314, %1298
  %1317 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1319 = fsub fast float %1287, %1317
  %1320 = fsub fast float %1318, %1317
  %1321 = bitcast float %1320 to i32
  %1322 = sub nsw i32 2129859010, %1321
  %1323 = bitcast i32 %1322 to float
  %1324 = fmul fast float %1323, %1319
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  br label %1326

; <label>:1326                                    ; preds = %1280, %1275
  %1327 = phi float [ %1325, %1280 ], [ %519, %1275 ]
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 128
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1348, label %1332

; <label>:1332                                    ; preds = %1326
  %1333 = add i32 %55, 476
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = add i32 %1335, 0
  %1337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1337, %dx.types.Handle %103, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 524288
  %1343 = icmp ne i32 %1342, 0
  %1344 = fcmp fast ogt float %1339, 0x3FE0101020000000
  %1345 = select i1 %1344, float 1.000000e+00, float 0.000000e+00
  %1346 = select i1 %1343, float %1345, float %1339
  %1347 = fmul fast float %1346, %1327
  br label %1348

; <label>:1348                                    ; preds = %1332, %1326
  %1349 = phi float [ %1347, %1332 ], [ %1327, %1326 ]
  %1350 = fcmp fast ult float %1349, 0x3F70101020000000
  br i1 %1350, label %2038, label %1351

; <label>:1351                                    ; preds = %1348
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = and i32 %1353, 16
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1554, label %1356

; <label>:1356                                    ; preds = %1351
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = add i32 %55, 428
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = add i32 %1361, 0
  %1363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1363, %dx.types.Handle %102, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.f32 %1364, 2
  %1368 = extractvalue %dx.types.ResRet.f32 %1364, 3
  %1369 = and i32 %1358, 255
  %1370 = uitofp i32 %1369 to float
  %1371 = lshr i32 %1358, 8
  %1372 = and i32 %1371, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1368, %1370
  %1375 = fadd fast float %1374, %1373
  %1376 = fmul fast float %1375, 0x3F70101000000000
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 512
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1389, label %1381

; <label>:1381                                    ; preds = %1356
  %1382 = add i32 %55, 508
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1384, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1386, %dx.types.Handle %103, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  br label %1389

; <label>:1389                                    ; preds = %1381, %1356
  %1390 = phi float [ %1388, %1381 ], [ 1.000000e+00, %1356 ]
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 33554432
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1501, label %1395

; <label>:1395                                    ; preds = %1389
  %1396 = add i32 %55, 240
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 65535
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = lshr i32 %1398, 16
  %1402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1401)  ; LegacyF16ToF32(value)
  %1403 = add i32 %55, 244
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 65535
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = lshr i32 %1409, 24
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = and i32 %1409, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = fmul fast float %1414, 0x3F70101020000000
  %1416 = lshr i32 %1409, 8
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101020000000
  %1420 = lshr i32 %1409, 16
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1422, 0x3F70101020000000
  %1424 = add i32 %55, 236
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = lshr i32 %1426, 24
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3F70101020000000
  %1430 = and i32 %1426, 255
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1431, 0x3F70101020000000
  %1433 = lshr i32 %1426, 8
  %1434 = and i32 %1433, 255
  %1435 = uitofp i32 %1434 to float
  %1436 = fmul fast float %1435, 0x3F70101020000000
  %1437 = lshr i32 %1426, 16
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3F70101020000000
  %1441 = bitcast float %1365 to i32
  %1442 = ashr i32 %1441, 1
  %1443 = sub nsw i32 1597463174, %1442
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1365, 5.000000e-01
  %1446 = fmul fast float %1444, %1444
  %1447 = fmul fast float %1446, %1445
  %1448 = fsub fast float 1.500000e+00, %1447
  %1449 = fmul fast float %1444, %1365
  %1450 = fmul fast float %1449, %1448
  %1451 = bitcast float %1366 to i32
  %1452 = ashr i32 %1451, 1
  %1453 = sub nsw i32 1597463174, %1452
  %1454 = bitcast i32 %1453 to float
  %1455 = fmul fast float %1366, 5.000000e-01
  %1456 = fmul fast float %1454, %1454
  %1457 = fmul fast float %1456, %1455
  %1458 = fsub fast float 1.500000e+00, %1457
  %1459 = fmul fast float %1454, %1366
  %1460 = fmul fast float %1459, %1458
  %1461 = bitcast float %1367 to i32
  %1462 = ashr i32 %1461, 1
  %1463 = sub nsw i32 1597463174, %1462
  %1464 = bitcast i32 %1463 to float
  %1465 = fmul fast float %1367, 5.000000e-01
  %1466 = fmul fast float %1464, %1464
  %1467 = fmul fast float %1466, %1465
  %1468 = fsub fast float 1.500000e+00, %1467
  %1469 = fmul fast float %1464, %1367
  %1470 = fmul fast float %1469, %1468
  %1471 = fsub fast float %1450, %1432
  %1472 = fsub fast float %1460, %1436
  %1473 = fsub fast float %1470, %1440
  %1474 = fmul fast float %1471, %1400
  %1475 = fmul fast float %1472, %1402
  %1476 = fmul fast float %1473, %1407
  %1477 = fadd fast float %1474, %1415
  %1478 = fadd fast float %1475, %1419
  %1479 = fadd fast float %1476, %1423
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1482 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1483 = fmul fast float %1480, %1480
  %1484 = fmul fast float %1481, %1481
  %1485 = fmul fast float %1482, %1482
  %1486 = fsub fast float %1483, %1365
  %1487 = fsub fast float %1484, %1366
  %1488 = fsub fast float %1485, %1367
  %1489 = fmul fast float %1486, %1390
  %1490 = fmul fast float %1487, %1390
  %1491 = fmul fast float %1488, %1390
  %1492 = fadd fast float %1489, %1365
  %1493 = fadd fast float %1490, %1366
  %1494 = fadd fast float %1491, %1367
  %1495 = fadd fast float %1412, %1376
  %1496 = fsub fast float %1495, %1429
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fsub fast float %1497, %1376
  %1499 = fmul fast float %1498, %1390
  %1500 = fadd fast float %1499, %1376
  br label %1554

; <label>:1501                                    ; preds = %1389
  %1502 = and i32 %1392, 134217728
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1538, label %1504

; <label>:1504                                    ; preds = %1501
  %1505 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %1506 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %1507 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %1508 = fadd fast float %1505, -5.000000e-01
  %1509 = fadd fast float %1506, -5.000000e-01
  %1510 = fadd fast float %1507, -5.000000e-01
  %1511 = fmul fast float %1508, %1390
  %1512 = fmul fast float %1509, %1390
  %1513 = fmul fast float %1510, %1390
  %1514 = fadd fast float %1511, 5.000000e-01
  %1515 = fadd fast float %1512, 5.000000e-01
  %1516 = fadd fast float %1513, 5.000000e-01
  %1517 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  %1518 = call float @dx.op.unary.f32(i32 24, float %1366)  ; Sqrt(value)
  %1519 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1520 = fmul fast float %1514, 2.000000e+00
  %1521 = fsub fast float 1.000000e+00, %1520
  %1522 = fmul fast float %1521, %1517
  %1523 = fadd fast float %1522, %1520
  %1524 = fmul fast float %1523, %1517
  %1525 = fmul fast float %1515, 2.000000e+00
  %1526 = fsub fast float 1.000000e+00, %1525
  %1527 = fmul fast float %1526, %1518
  %1528 = fadd fast float %1527, %1525
  %1529 = fmul fast float %1528, %1518
  %1530 = fmul fast float %1516, 2.000000e+00
  %1531 = fsub fast float 1.000000e+00, %1530
  %1532 = fmul fast float %1531, %1519
  %1533 = fadd fast float %1532, %1530
  %1534 = fmul fast float %1533, %1519
  %1535 = fmul fast float %1524, %1524
  %1536 = fmul fast float %1529, %1529
  %1537 = fmul fast float %1534, %1534
  br label %1554

; <label>:1538                                    ; preds = %1501
  %1539 = fmul fast float %351, %351
  %1540 = fmul fast float %355, %355
  %1541 = fmul fast float %359, %359
  %1542 = fadd fast float %1539, -1.000000e+00
  %1543 = fadd fast float %1540, -1.000000e+00
  %1544 = fadd fast float %1541, -1.000000e+00
  %1545 = fmul fast float %1390, %1542
  %1546 = fmul fast float %1390, %1543
  %1547 = fmul fast float %1390, %1544
  %1548 = fadd fast float %1545, 1.000000e+00
  %1549 = fadd fast float %1546, 1.000000e+00
  %1550 = fadd fast float %1547, 1.000000e+00
  %1551 = fmul fast float %1548, %1365
  %1552 = fmul fast float %1549, %1366
  %1553 = fmul fast float %1550, %1367
  br label %1554

; <label>:1554                                    ; preds = %1538, %1504, %1395, %1351
  %1555 = phi float [ %1500, %1395 ], [ %1376, %1504 ], [ %1376, %1538 ], [ 0x3FA23C0BE0000000, %1351 ]
  %1556 = phi float [ %1492, %1395 ], [ %1535, %1504 ], [ %1551, %1538 ], [ 1.000000e+00, %1351 ]
  %1557 = phi float [ %1493, %1395 ], [ %1536, %1504 ], [ %1552, %1538 ], [ 1.000000e+00, %1351 ]
  %1558 = phi float [ %1494, %1395 ], [ %1537, %1504 ], [ %1553, %1538 ], [ 1.000000e+00, %1351 ]
  %1559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.i32 %1559, 1
  %1561 = and i32 %1560, 1
  %1562 = icmp ne i32 %1561, 0
  %1563 = add i32 %55, 372
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 32
  %1567 = icmp ne i32 %1566, 0
  %1568 = and i1 %1562, %1567
  %1569 = select i1 %1568, float 1.000000e+00, float %1556
  %1570 = select i1 %1568, float 0x3FD3333340000000, float %1557
  %1571 = select i1 %1568, float 0x3FD3333340000000, float %1558
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 32
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1648, label %1576

; <label>:1576                                    ; preds = %1554
  %1577 = add i32 %55, 108
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %55, 444
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %1582, 0
  %1584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1584, %dx.types.Handle %102, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.ResRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.ResRet.f32 %1585, 2
  %1589 = extractvalue %dx.types.ResRet.f32 %1585, 3
  %1590 = and i32 %1579, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = lshr i32 %1579, 8
  %1593 = and i32 %1592, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = lshr i32 %1579, 16
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101000000000
  %1599 = fmul fast float %1586, %1591
  %1600 = fadd fast float %1599, %1594
  %1601 = fmul fast float %1600, 0x3F70101000000000
  %1602 = fadd fast float %1587, -5.000000e-01
  %1603 = fadd fast float %1589, -5.000000e-01
  %1604 = fmul fast float %1602, %1598
  %1605 = fmul fast float %1603, %1598
  %1606 = fadd fast float %1604, 5.000000e-01
  %1607 = fadd fast float %1605, 5.000000e-01
  %1608 = fmul fast float %1606, 2.000000e+00
  %1609 = fadd fast float %1608, -1.000000e+00
  %1610 = fmul fast float %1607, 2.000000e+00
  %1611 = fadd fast float %1610, -1.000000e+00
  %1612 = fadd fast float %1609, %1611
  %1613 = fmul fast float %1612, 5.000000e-01
  %1614 = fsub fast float %1609, %1611
  %1615 = fmul fast float %1614, 5.000000e-01
  %1616 = call float @dx.op.unary.f32(i32 6, float %1613)  ; FAbs(value)
  %1617 = fsub fast float 1.000000e+00, %1616
  %1618 = call float @dx.op.unary.f32(i32 6, float %1615)  ; FAbs(value)
  %1619 = fsub fast float %1617, %1618
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1615, float %1619, float %1613, float %1615, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = call float @dx.op.unary.f32(i32 25, float %1620)  ; Rsqrt(value)
  %1622 = fmul fast float %1613, %1621
  %1623 = fmul fast float %1615, %1621
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = and i32 %1625, 67108864
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1644, label %1628

; <label>:1628                                    ; preds = %1576
  %1629 = add i32 %55, 296
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 65535
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = and i32 %1635, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = lshr i32 %1631, 16
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = fsub fast float %1601, %1639
  %1641 = fmul fast float %1640, %1633
  %1642 = fadd fast float %1641, %1637
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  br label %1644

; <label>:1644                                    ; preds = %1628, %1576
  %1645 = phi float [ %1643, %1628 ], [ %1601, %1576 ]
  %1646 = call float @dx.op.dot2.f32(i32 54, float %1622, float %1623, float %1180, float %1181)  ; Dot2(ax,ay,bx,by)
  %1647 = call float @dx.op.dot2.f32(i32 54, float %1622, float %1623, float %1182, float %1183)  ; Dot2(ax,ay,bx,by)
  br label %1648

; <label>:1648                                    ; preds = %1644, %1554
  %1649 = phi float [ %1645, %1644 ], [ 0x3FD6666660000000, %1554 ]
  %1650 = phi float [ %1646, %1644 ], [ 0.000000e+00, %1554 ]
  %1651 = phi float [ %1647, %1644 ], [ 0.000000e+00, %1554 ]
  %1652 = phi float [ %1588, %1644 ], [ 1.000000e+00, %1554 ]
  %1653 = add i32 %55, 176
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = lshr i32 %1655, 22
  %1657 = shl nuw nsw i32 %1656, 5
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 64
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1696, label %1663

; <label>:1663                                    ; preds = %1648
  %1664 = add i32 %55, 460
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = add i32 %1666, 0
  %1668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 131072
  %1672 = icmp eq i32 %1671, 0
  %1673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1668, %dx.types.Handle %102, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = fmul fast float %1674, %339
  %1678 = fmul fast float %1675, %342
  %1679 = fmul fast float %1676, %345
  br i1 %1672, label %1686, label %1680

; <label>:1680                                    ; preds = %1663
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = fmul fast float %1682, %1677
  %1684 = fmul fast float %1682, %1678
  %1685 = fmul fast float %1682, %1679
  br label %1686

; <label>:1686                                    ; preds = %1680, %1663
  %1687 = phi float [ %1683, %1680 ], [ %1677, %1663 ]
  %1688 = phi float [ %1684, %1680 ], [ %1678, %1663 ]
  %1689 = phi float [ %1685, %1680 ], [ %1679, %1663 ]
  %1690 = fmul fast float %1687, %1658
  %1691 = select i1 %280, float %1690, float %1687
  %1692 = call float @dx.op.dot3.f32(i32 55, float %1691, float %1688, float %1689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1693 = select i1 %280, float 0.000000e+00, float %1687
  %1694 = select i1 %280, float %1692, float %1688
  %1695 = select i1 %280, float 0.000000e+00, float %1689
  br label %1696

; <label>:1696                                    ; preds = %1686, %1648
  %1697 = phi float [ %1693, %1686 ], [ 0.000000e+00, %1648 ]
  %1698 = phi float [ %1694, %1686 ], [ 0.000000e+00, %1648 ]
  %1699 = phi float [ %1695, %1686 ], [ 0.000000e+00, %1648 ]
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 1024
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1734, label %1704

; <label>:1704                                    ; preds = %1696
  %1705 = add i32 %55, 168
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 255
  %1709 = uitofp i32 %1708 to float
  %1710 = fmul fast float %1709, 0x3F70101020000000
  %1711 = lshr i32 %1707, 8
  %1712 = and i32 %1711, 255
  %1713 = uitofp i32 %1712 to float
  %1714 = fmul fast float %1713, 0x3F70101020000000
  %1715 = lshr i32 %1707, 16
  %1716 = and i32 %1715, 255
  %1717 = uitofp i32 %1716 to float
  %1718 = fmul fast float %1717, 0x3F70101020000000
  %1719 = fmul fast float %1710, %1710
  %1720 = fmul fast float %1714, %1714
  %1721 = fmul fast float %1718, %1718
  %1722 = add i32 %55, 524
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = add i32 %1724, 0
  %1726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1726, %dx.types.Handle %103, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1730 = extractvalue %dx.types.ResRet.f32 %1727, 2
  %1731 = fmul fast float %1719, %1728
  %1732 = fmul fast float %1720, %1729
  %1733 = fmul fast float %1721, %1730
  br label %1734

; <label>:1734                                    ; preds = %1704, %1696
  %1735 = phi float [ %1731, %1704 ], [ 0.000000e+00, %1696 ]
  %1736 = phi float [ %1732, %1704 ], [ 0.000000e+00, %1696 ]
  %1737 = phi float [ %1733, %1704 ], [ 0.000000e+00, %1696 ]
  %1738 = fcmp fast ogt float %1735, 0.000000e+00
  %1739 = fcmp fast ogt float %1736, 0.000000e+00
  %1740 = fcmp fast ogt float %1737, 0.000000e+00
  %1741 = call float @dx.op.unary.f32(i32 23, float %1735)  ; Log(value)
  %1742 = call float @dx.op.unary.f32(i32 23, float %1736)  ; Log(value)
  %1743 = call float @dx.op.unary.f32(i32 23, float %1737)  ; Log(value)
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = lshr i32 %1745, 7
  %1747 = and i32 %1746, 32752
  %1748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1747)  ; LegacyF16ToF32(value)
  %1749 = fmul fast float %1741, 0xBFE62E4300000000
  %1750 = fmul fast float %1749, %1748
  %1751 = fmul fast float %1742, 0xBFE62E4300000000
  %1752 = fmul fast float %1751, %1748
  %1753 = fmul fast float %1743, 0xBFE62E4300000000
  %1754 = fmul fast float %1753, %1748
  %1755 = select i1 %1738, float %1750, float 1.270000e+02
  %1756 = select i1 %1739, float %1752, float 1.270000e+02
  %1757 = select i1 %1740, float %1754, float 1.270000e+02
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 10240
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1782, label %1762

; <label>:1762                                    ; preds = %1734
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = and i32 %1764, 2048
  %1766 = icmp eq i32 %1765, 0
  br i1 %1766, label %1782, label %1767

; <label>:1767                                    ; preds = %1762
  %1768 = add i32 %55, 540
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = add i32 %1770, 0
  %1772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1772, %dx.types.Handle %103, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 3
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = shl i32 %1776, 4
  %1778 = and i32 %1777, 32752
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = fmul fast float %1779, %1774
  %1781 = call float @dx.op.binary.f32(i32 35, float %1780, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1782

; <label>:1782                                    ; preds = %1767, %1762, %1734
  %1783 = phi float [ %1781, %1767 ], [ 0x3F70101020000000, %1762 ], [ 0x3F70101020000000, %1734 ]
  %1784 = add i32 %55, 112
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1786, 8
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1569, float %1570, float %1571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = fmul fast float %1791, %1792
  %1794 = fadd fast float %1793, %1788
  %1795 = fmul fast float %1794, 0x3F70101020000000
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  br i1 %1168, label %1797, label %1832

; <label>:1797                                    ; preds = %1782
  %1798 = fmul fast float %1783, 2.000000e+00
  %1799 = fcmp fast olt float %1755, 1.270000e+02
  %1800 = fcmp fast olt float %1756, 1.270000e+02
  %1801 = fcmp fast olt float %1757, 1.270000e+02
  %1802 = fmul fast float %1755, 0xBFF7154760000000
  %1803 = fmul fast float %1802, %1798
  %1804 = fmul fast float %1756, 0xBFF7154760000000
  %1805 = fmul fast float %1804, %1798
  %1806 = fmul fast float %1757, 0xBFF7154760000000
  %1807 = fmul fast float %1806, %1798
  %1808 = call float @dx.op.unary.f32(i32 21, float %1803)  ; Exp(value)
  %1809 = call float @dx.op.unary.f32(i32 21, float %1805)  ; Exp(value)
  %1810 = call float @dx.op.unary.f32(i32 21, float %1807)  ; Exp(value)
  %1811 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1812 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1813 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1814 = fadd fast float %1811, -1.000000e+00
  %1815 = select i1 %1799, float %1814, float -1.000000e+00
  %1816 = fadd fast float %1812, -1.000000e+00
  %1817 = select i1 %1800, float %1816, float -1.000000e+00
  %1818 = fadd fast float %1813, -1.000000e+00
  %1819 = select i1 %1801, float %1818, float -1.000000e+00
  %1820 = fmul fast float %1815, %1349
  %1821 = fmul fast float %1817, %1349
  %1822 = fmul fast float %1819, %1349
  %1823 = fadd fast float %1820, 1.000000e+00
  %1824 = fadd fast float %1821, 1.000000e+00
  %1825 = fadd fast float %1822, 1.000000e+00
  %1826 = fmul fast float %1823, %1152
  %1827 = fmul fast float %1824, %1153
  %1828 = fmul fast float %1825, %1154
  %1829 = fmul fast float %1823, %1155
  %1830 = fmul fast float %1824, %1156
  %1831 = fmul fast float %1825, %1157
  br label %1832

; <label>:1832                                    ; preds = %1797, %1782
  %1833 = phi float [ %1826, %1797 ], [ %1152, %1782 ]
  %1834 = phi float [ %1827, %1797 ], [ %1153, %1782 ]
  %1835 = phi float [ %1828, %1797 ], [ %1154, %1782 ]
  %1836 = phi float [ %1829, %1797 ], [ %1155, %1782 ]
  %1837 = phi float [ %1830, %1797 ], [ %1156, %1782 ]
  %1838 = phi float [ %1831, %1797 ], [ %1157, %1782 ]
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 3
  %1842 = icmp eq i32 %1841, 3
  br i1 %1842, label %1921, label %1843

; <label>:1843                                    ; preds = %1832
  %1844 = and i32 %1840, 16
  %1845 = icmp ne i32 %1844, 0
  %1846 = select i1 %1845, float %1349, float 0.000000e+00
  %1847 = icmp eq i32 %1841, 0
  br i1 %1847, label %1848, label %1876

; <label>:1848                                    ; preds = %1843
  %1849 = and i32 %1840, 64
  %1850 = icmp ne i32 %1849, 0
  %1851 = select i1 %1850, float %1349, float 0.000000e+00
  %1852 = fsub fast float %1569, %1833
  %1853 = fsub fast float %1570, %1834
  %1854 = fsub fast float %1571, %1835
  %1855 = fmul fast float %1846, %1852
  %1856 = fmul fast float %1846, %1853
  %1857 = fmul fast float %1846, %1854
  %1858 = fadd fast float %1855, %1833
  %1859 = fadd fast float %1856, %1834
  %1860 = fadd fast float %1857, %1835
  %1861 = fsub fast float %1555, %1161
  %1862 = fmul fast float %1846, %1861
  %1863 = fadd fast float %1862, %1161
  %1864 = fsub fast float %1697, %1836
  %1865 = fsub fast float %1698, %1837
  %1866 = fsub fast float %1699, %1838
  %1867 = fmul fast float %1851, %1864
  %1868 = fmul fast float %1851, %1865
  %1869 = fmul fast float %1851, %1866
  %1870 = fadd fast float %1867, %1836
  %1871 = fadd fast float %1868, %1837
  %1872 = fadd fast float %1869, %1838
  %1873 = fsub fast float %1796, %1166
  %1874 = fmul fast float %1846, %1873
  %1875 = fadd fast float %1874, %1166
  br label %1921

; <label>:1876                                    ; preds = %1843
  %1877 = icmp eq i32 %1841, 1
  br i1 %1877, label %1878, label %1891

; <label>:1878                                    ; preds = %1876
  %1879 = fadd fast float %1569, -1.000000e+00
  %1880 = fadd fast float %1570, -1.000000e+00
  %1881 = fadd fast float %1571, -1.000000e+00
  %1882 = fmul fast float %1846, %1879
  %1883 = fmul fast float %1846, %1880
  %1884 = fmul fast float %1846, %1881
  %1885 = fadd fast float %1882, 1.000000e+00
  %1886 = fadd fast float %1883, 1.000000e+00
  %1887 = fadd fast float %1884, 1.000000e+00
  %1888 = fmul fast float %1885, %1833
  %1889 = fmul fast float %1886, %1834
  %1890 = fmul fast float %1887, %1835
  br label %1921

; <label>:1891                                    ; preds = %1876
  %1892 = icmp eq i32 %1841, 2
  br i1 %1892, label %1893, label %1921

; <label>:1893                                    ; preds = %1891
  %1894 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1895 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1896 = call float @dx.op.unary.f32(i32 24, float %1571)  ; Sqrt(value)
  %1897 = fadd fast float %1894, -5.000000e-01
  %1898 = fadd fast float %1895, -5.000000e-01
  %1899 = fadd fast float %1896, -5.000000e-01
  %1900 = fmul fast float %1897, %1846
  %1901 = fmul fast float %1898, %1846
  %1902 = fmul fast float %1899, %1846
  %1903 = fadd fast float %1900, 5.000000e-01
  %1904 = fadd fast float %1901, 5.000000e-01
  %1905 = fadd fast float %1902, 5.000000e-01
  %1906 = fmul fast float %1903, 2.000000e+00
  %1907 = fsub fast float 1.000000e+00, %1906
  %1908 = fmul fast float %1907, %1833
  %1909 = fadd fast float %1908, %1906
  %1910 = fmul fast float %1909, %1833
  %1911 = fmul fast float %1904, 2.000000e+00
  %1912 = fsub fast float 1.000000e+00, %1911
  %1913 = fmul fast float %1912, %1834
  %1914 = fadd fast float %1913, %1911
  %1915 = fmul fast float %1914, %1834
  %1916 = fmul fast float %1905, 2.000000e+00
  %1917 = fsub fast float 1.000000e+00, %1916
  %1918 = fmul fast float %1917, %1835
  %1919 = fadd fast float %1918, %1916
  %1920 = fmul fast float %1919, %1835
  br label %1921

; <label>:1921                                    ; preds = %1893, %1891, %1878, %1848, %1832
  %1922 = phi float [ %1833, %1832 ], [ %1910, %1893 ], [ %1833, %1891 ], [ %1888, %1878 ], [ %1858, %1848 ]
  %1923 = phi float [ %1834, %1832 ], [ %1915, %1893 ], [ %1834, %1891 ], [ %1889, %1878 ], [ %1859, %1848 ]
  %1924 = phi float [ %1835, %1832 ], [ %1920, %1893 ], [ %1835, %1891 ], [ %1890, %1878 ], [ %1860, %1848 ]
  %1925 = phi float [ %1836, %1832 ], [ %1836, %1893 ], [ %1836, %1891 ], [ %1836, %1878 ], [ %1870, %1848 ]
  %1926 = phi float [ %1837, %1832 ], [ %1837, %1893 ], [ %1837, %1891 ], [ %1837, %1878 ], [ %1871, %1848 ]
  %1927 = phi float [ %1838, %1832 ], [ %1838, %1893 ], [ %1838, %1891 ], [ %1838, %1878 ], [ %1872, %1848 ]
  %1928 = phi float [ %1161, %1832 ], [ %1161, %1893 ], [ %1161, %1891 ], [ %1161, %1878 ], [ %1863, %1848 ]
  %1929 = phi float [ %1166, %1832 ], [ %1166, %1893 ], [ %1166, %1891 ], [ %1166, %1878 ], [ %1875, %1848 ]
  %1930 = and i32 %1840, 12
  %1931 = icmp eq i32 %1930, 12
  br i1 %1931, label %2038, label %1932

; <label>:1932                                    ; preds = %1921
  %1933 = and i32 %1840, 2097184
  %1934 = icmp eq i32 %1933, 2097184
  %1935 = select i1 %1934, float %1349, float 0.000000e+00
  %1936 = and i32 %1840, 4194336
  %1937 = icmp eq i32 %1936, 4194336
  %1938 = select i1 %1937, float %1349, float 0.000000e+00
  %1939 = and i32 %1840, 8388640
  %1940 = icmp eq i32 %1939, 8388640
  %1941 = select i1 %1940, float %1349, float 0.000000e+00
  %1942 = and i32 %1840, 1024
  %1943 = icmp ne i32 %1942, 0
  %1944 = select i1 %1943, float %1349, float 0.000000e+00
  %1945 = and i32 %1840, 2048
  %1946 = icmp ne i32 %1945, 0
  %1947 = select i1 %1946, float %1349, float 0.000000e+00
  %1948 = icmp eq i32 %1930, 0
  br i1 %1948, label %1949, label %1974

; <label>:1949                                    ; preds = %1932
  %1950 = fsub fast float %1650, %1150
  %1951 = fsub fast float %1651, %1151
  %1952 = fmul fast float %1935, %1950
  %1953 = fmul fast float %1935, %1951
  %1954 = fadd fast float %1952, %1150
  %1955 = fadd fast float %1953, %1151
  %1956 = fsub fast float %1652, %1164
  %1957 = fmul fast float %1938, %1956
  %1958 = fadd fast float %1957, %1164
  %1959 = fsub fast float %1649, %1163
  %1960 = fmul fast float %1941, %1959
  %1961 = fadd fast float %1960, %1163
  %1962 = fsub fast float %1755, %1158
  %1963 = fsub fast float %1756, %1159
  %1964 = fsub fast float %1757, %1160
  %1965 = fmul fast float %1944, %1962
  %1966 = fmul fast float %1944, %1963
  %1967 = fmul fast float %1944, %1964
  %1968 = fadd fast float %1965, %1158
  %1969 = fadd fast float %1966, %1159
  %1970 = fadd fast float %1967, %1160
  %1971 = fsub fast float %1783, %1165
  %1972 = fmul fast float %1947, %1971
  %1973 = fadd fast float %1972, %1165
  br label %2038

; <label>:1974                                    ; preds = %1932
  %1975 = icmp eq i32 %1930, 4
  br i1 %1975, label %1976, label %2016

; <label>:1976                                    ; preds = %1974
  %1977 = fmul fast float %1935, %1650
  %1978 = fmul fast float %1935, %1651
  %1979 = fadd fast float %1977, %1150
  %1980 = fadd fast float %1978, %1151
  %1981 = call float @dx.op.binary.f32(i32 36, float %1164, float %1652)  ; FMin(a,b)
  %1982 = fsub fast float %1981, %1164
  %1983 = fmul fast float %1982, %1938
  %1984 = fadd fast float %1983, %1164
  %1985 = fadd fast float %1649, %1163
  %1986 = fmul fast float %1985, 0x3FF337FAE0000000
  %1987 = fmul fast float %1163, %1163
  %1988 = fmul fast float %1649, %1649
  %1989 = fadd fast float %1988, %1987
  %1990 = fmul fast float %1989, 0x3FE5152B00000000
  %1991 = fmul fast float %1163, 0xBFCC1F85E0000000
  %1992 = fmul fast float %1991, %1649
  %1993 = fadd fast float %1992, 0xBFE1363700000000
  %1994 = fadd fast float %1993, %1986
  %1995 = fsub fast float %1994, %1990
  %1996 = fmul fast float %1985, 0x3FBA6F0D00000000
  %1997 = fmul fast float %1989, 0x3FD0432880000000
  %1998 = fmul fast float %1163, 0xBFEF110800000000
  %1999 = fmul fast float %1998, %1649
  %2000 = fadd fast float %1999, 1.000000e+00
  %2001 = fsub fast float %2000, %1996
  %2002 = fadd fast float %2001, %1997
  %2003 = fdiv fast float %1995, %2002
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = fsub fast float %2004, %1163
  %2006 = fmul fast float %2005, %1941
  %2007 = fadd fast float %2006, %1163
  %2008 = fmul fast float %1944, %1755
  %2009 = fmul fast float %1944, %1756
  %2010 = fmul fast float %1944, %1757
  %2011 = fadd fast float %2008, %1158
  %2012 = fadd fast float %2009, %1159
  %2013 = fadd fast float %2010, %1160
  %2014 = fmul fast float %1947, %1783
  %2015 = fadd fast float %2014, %1165
  br label %2038

; <label>:2016                                    ; preds = %1974
  %2017 = icmp eq i32 %1930, 8
  br i1 %2017, label %2018, label %2038

; <label>:2018                                    ; preds = %2016
  %2019 = fmul fast float %1935, %1650
  %2020 = fmul fast float %1935, %1651
  %2021 = fadd fast float %2019, %1150
  %2022 = fadd fast float %2020, %1151
  %2023 = call float @dx.op.binary.f32(i32 36, float %1164, float %1652)  ; FMin(a,b)
  %2024 = fsub fast float %2023, %1164
  %2025 = fmul fast float %2024, %1938
  %2026 = fadd fast float %2025, %1164
  %2027 = fsub fast float %1649, %1163
  %2028 = fmul fast float %1941, %2027
  %2029 = fadd fast float %2028, %1163
  %2030 = fmul fast float %1944, %1755
  %2031 = fmul fast float %1944, %1756
  %2032 = fmul fast float %1944, %1757
  %2033 = fadd fast float %2030, %1158
  %2034 = fadd fast float %2031, %1159
  %2035 = fadd fast float %2032, %1160
  %2036 = fmul fast float %1947, %1783
  %2037 = fadd fast float %2036, %1165
  br label %2038

; <label>:2038                                    ; preds = %2018, %2016, %1976, %1949, %1921, %1348, %1167, %1149
  %2039 = phi float [ %1150, %1921 ], [ %1150, %1348 ], [ %1150, %1149 ], [ %2021, %2018 ], [ %1150, %2016 ], [ %1979, %1976 ], [ %1954, %1949 ], [ %1150, %1167 ]
  %2040 = phi float [ %1151, %1921 ], [ %1151, %1348 ], [ %1151, %1149 ], [ %2022, %2018 ], [ %1151, %2016 ], [ %1980, %1976 ], [ %1955, %1949 ], [ %1151, %1167 ]
  %2041 = phi float [ %1922, %1921 ], [ %1152, %1348 ], [ %1152, %1149 ], [ %1922, %2018 ], [ %1922, %2016 ], [ %1922, %1976 ], [ %1922, %1949 ], [ %1152, %1167 ]
  %2042 = phi float [ %1923, %1921 ], [ %1153, %1348 ], [ %1153, %1149 ], [ %1923, %2018 ], [ %1923, %2016 ], [ %1923, %1976 ], [ %1923, %1949 ], [ %1153, %1167 ]
  %2043 = phi float [ %1924, %1921 ], [ %1154, %1348 ], [ %1154, %1149 ], [ %1924, %2018 ], [ %1924, %2016 ], [ %1924, %1976 ], [ %1924, %1949 ], [ %1154, %1167 ]
  %2044 = phi float [ %1925, %1921 ], [ %1155, %1348 ], [ %1155, %1149 ], [ %1925, %2018 ], [ %1925, %2016 ], [ %1925, %1976 ], [ %1925, %1949 ], [ %1155, %1167 ]
  %2045 = phi float [ %1926, %1921 ], [ %1156, %1348 ], [ %1156, %1149 ], [ %1926, %2018 ], [ %1926, %2016 ], [ %1926, %1976 ], [ %1926, %1949 ], [ %1156, %1167 ]
  %2046 = phi float [ %1927, %1921 ], [ %1157, %1348 ], [ %1157, %1149 ], [ %1927, %2018 ], [ %1927, %2016 ], [ %1927, %1976 ], [ %1927, %1949 ], [ %1157, %1167 ]
  %2047 = phi float [ %1158, %1921 ], [ %1158, %1348 ], [ %1158, %1149 ], [ %2033, %2018 ], [ %1158, %2016 ], [ %2011, %1976 ], [ %1968, %1949 ], [ %1158, %1167 ]
  %2048 = phi float [ %1159, %1921 ], [ %1159, %1348 ], [ %1159, %1149 ], [ %2034, %2018 ], [ %1159, %2016 ], [ %2012, %1976 ], [ %1969, %1949 ], [ %1159, %1167 ]
  %2049 = phi float [ %1160, %1921 ], [ %1160, %1348 ], [ %1160, %1149 ], [ %2035, %2018 ], [ %1160, %2016 ], [ %2013, %1976 ], [ %1970, %1949 ], [ %1160, %1167 ]
  %2050 = phi float [ %1928, %1921 ], [ %1161, %1348 ], [ %1161, %1149 ], [ %1928, %2018 ], [ %1928, %2016 ], [ %1928, %1976 ], [ %1928, %1949 ], [ %1161, %1167 ]
  %2051 = phi float [ %1163, %1921 ], [ %1163, %1348 ], [ %1163, %1149 ], [ %2029, %2018 ], [ %1163, %2016 ], [ %2007, %1976 ], [ %1961, %1949 ], [ %1163, %1167 ]
  %2052 = phi float [ %1164, %1921 ], [ %1164, %1348 ], [ %1164, %1149 ], [ %2026, %2018 ], [ %1164, %2016 ], [ %1984, %1976 ], [ %1958, %1949 ], [ %1164, %1167 ]
  %2053 = phi float [ %1165, %1921 ], [ %1165, %1348 ], [ %1165, %1149 ], [ %2037, %2018 ], [ %1165, %2016 ], [ %2015, %1976 ], [ %1973, %1949 ], [ %1165, %1167 ]
  %2054 = phi float [ %1929, %1921 ], [ %1166, %1348 ], [ %1166, %1149 ], [ %1929, %2018 ], [ %1929, %2016 ], [ %1929, %1976 ], [ %1929, %1949 ], [ %1166, %1167 ]
  br i1 %466, label %2926, label %2055

; <label>:2055                                    ; preds = %2038
  %2056 = icmp ult i32 %522, 3
  %2057 = add i32 %55, 56
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %55, 60
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = or i32 %2062, %2059
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2926, label %2065

; <label>:2065                                    ; preds = %2055
  %2066 = and i32 %2059, 262144
  %2067 = icmp ne i32 %2066, 0
  %2068 = select i1 %2067, float %61, float 1.000000e+00
  %2069 = select i1 %2067, float %62, float 0.000000e+00
  %2070 = select i1 %2067, float %63, float 0.000000e+00
  %2071 = select i1 %2067, float %64, float 1.000000e+00
  %2072 = select i1 %2067, float %65, float %88
  %2073 = select i1 %2067, float %66, float %89
  %2074 = add i32 %55, 316
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = lshr i32 %2076, 16
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = fmul fast float %2078, 0x3F50624DE0000000
  %2080 = add i32 %55, 120
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = lshr i32 %2082, 16
  %2084 = and i32 %2083, 255
  %2085 = lshr i32 %2082, 24
  %2086 = add i32 %55, 324
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 65535
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = lshr i32 %2088, 16
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = add i32 %55, 64
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = lshr i32 %2095, 22
  %2097 = shl nuw nsw i32 %2096, 5
  %2098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2097)  ; LegacyF16ToF32(value)
  %2099 = shl i32 %2095, 4
  %2100 = and i32 %2099, 32752
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = lshr i32 %2095, 7
  %2103 = and i32 %2102, 32752
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 3
  %2107 = fmul fast float %2106, 1.000000e+03
  %2108 = fmul fast float %416, %2107
  %2109 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  %2110 = fadd fast float %2109, %406
  %2111 = fmul fast float %417, %2107
  %2112 = call float @dx.op.unary.f32(i32 22, float %2111)  ; Frc(value)
  %2113 = fadd fast float %2112, %408
  %2114 = fmul fast float %2079, %2107
  %2115 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2116 = fmul fast float %2115, 0x401921FB60000000
  %2117 = fadd fast float %2116, %2098
  %2118 = call float @dx.op.unary.f32(i32 13, float %2117)  ; Sin(value)
  %2119 = call float @dx.op.unary.f32(i32 12, float %2117)  ; Cos(value)
  %2120 = fsub fast float -0.000000e+00, %2118
  %2121 = fadd fast float %2072, -5.000000e-01
  %2122 = fadd fast float %2073, -5.000000e-01
  %2123 = fmul fast float %2090, %2121
  %2124 = fmul fast float %2092, %2122
  %2125 = fadd fast float %2123, 5.000000e-01
  %2126 = fadd fast float %2124, 5.000000e-01
  %2127 = fmul fast float %2101, %2125
  %2128 = fmul fast float %2104, %2126
  %2129 = fmul fast float %2119, %2127
  %2130 = call float @dx.op.tertiary.f32(i32 46, float %2120, float %2128, float %2129)  ; FMad(a,b,c)
  %2131 = fmul fast float %2118, %2127
  %2132 = call float @dx.op.tertiary.f32(i32 46, float %2119, float %2128, float %2131)  ; FMad(a,b,c)
  %2133 = fadd fast float %2110, %2130
  %2134 = fadd fast float %2113, %2132
  %2135 = icmp ugt i32 %2084, 1
  %2136 = icmp ugt i32 %2082, 33554431
  %2137 = or i1 %2136, %2135
  br i1 %2137, label %2138, label %2163

; <label>:2138                                    ; preds = %2065
  %2139 = add i32 %55, 260
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = lshr i32 %2141, 16
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = fmul fast float %2106, %2143
  %2145 = call float @dx.op.unary.f32(i32 22, float %2144)  ; Frc(value)
  %2146 = mul nuw nsw i32 %2084, %2085
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2145, %2147
  %2149 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2150 = fptoui float %2149 to i32
  %2151 = urem i32 %2150, %2084
  %2152 = udiv i32 %2150, %2085
  %2153 = call float @dx.op.unary.f32(i32 22, float %2133)  ; Frc(value)
  %2154 = call float @dx.op.unary.f32(i32 22, float %2134)  ; Frc(value)
  %2155 = uitofp i32 %2151 to float
  %2156 = uitofp i32 %2152 to float
  %2157 = fadd fast float %2153, %2155
  %2158 = fadd fast float %2154, %2156
  %2159 = uitofp i32 %2084 to float
  %2160 = uitofp i32 %2085 to float
  %2161 = fdiv fast float %2157, %2159
  %2162 = fdiv fast float %2158, %2160
  br label %2163

; <label>:2163                                    ; preds = %2138, %2065
  %2164 = phi float [ %2161, %2138 ], [ %2133, %2065 ]
  %2165 = phi float [ %2162, %2138 ], [ %2134, %2065 ]
  %2166 = and i32 %2059, 256
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2214, label %2168

; <label>:2168                                    ; preds = %2163
  %2169 = add i32 %55, 496
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %2171, 0
  %2173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2173, %dx.types.Handle %103, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = add i32 %55, 132
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = shl i32 %2178, 4
  %2180 = and i32 %2179, 32752
  %2181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2180)  ; LegacyF16ToF32(value)
  %2182 = lshr i32 %2178, 7
  %2183 = and i32 %2182, 32752
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = fsub fast float 1.000000e+00, %518
  %2186 = call float @dx.op.binary.f32(i32 35, float %2185, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2187 = bitcast float %518 to i32
  %2188 = sitofp i32 %2187 to float
  %2189 = fadd fast float %2188, 0xC1CFBF8940000000
  %2190 = fmul fast float %2184, %2189
  %2191 = fadd fast float %2190, 0x41CFBF8940000000
  %2192 = fptosi float %2191 to i32
  %2193 = bitcast i32 %2192 to float
  %2194 = bitcast float %2186 to i32
  %2195 = sitofp i32 %2194 to float
  %2196 = fadd fast float %2195, 0xC1CFBF8940000000
  %2197 = fmul fast float %2196, %2184
  %2198 = fadd fast float %2197, 0x41CFBF8940000000
  %2199 = fptosi float %2198 to i32
  %2200 = bitcast i32 %2199 to float
  %2201 = fmul fast float %2193, %2181
  %2202 = fmul fast float %2200, %2181
  %2203 = fsub fast float %2186, %2201
  %2204 = fadd fast float %2202, %2186
  %2205 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2206 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2207 = fsub fast float %2175, %2205
  %2208 = fsub fast float %2206, %2205
  %2209 = bitcast float %2208 to i32
  %2210 = sub nsw i32 2129859010, %2209
  %2211 = bitcast i32 %2210 to float
  %2212 = fmul fast float %2211, %2207
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  br label %2214

; <label>:2214                                    ; preds = %2168, %2163
  %2215 = phi float [ %2213, %2168 ], [ %518, %2163 ]
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 128
  %2219 = icmp eq i32 %2218, 0
  br i1 %2219, label %2236, label %2220

; <label>:2220                                    ; preds = %2214
  %2221 = add i32 %55, 480
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = add i32 %2223, 0
  %2225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2225, %dx.types.Handle %103, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 524288
  %2231 = icmp ne i32 %2230, 0
  %2232 = fcmp fast ogt float %2227, 0x3FE0101020000000
  %2233 = select i1 %2232, float 1.000000e+00, float 0.000000e+00
  %2234 = select i1 %2231, float %2233, float %2227
  %2235 = fmul fast float %2234, %2215
  br label %2236

; <label>:2236                                    ; preds = %2220, %2214
  %2237 = phi float [ %2235, %2220 ], [ %2215, %2214 ]
  %2238 = fcmp fast ult float %2237, 0x3F70101020000000
  br i1 %2238, label %2926, label %2239

; <label>:2239                                    ; preds = %2236
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %2241, 16
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2442, label %2244

; <label>:2244                                    ; preds = %2239
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = add i32 %55, 432
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = add i32 %2249, 0
  %2251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2251, %dx.types.Handle %102, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2253 = extractvalue %dx.types.ResRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.ResRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.ResRet.f32 %2252, 2
  %2256 = extractvalue %dx.types.ResRet.f32 %2252, 3
  %2257 = and i32 %2246, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = lshr i32 %2246, 8
  %2260 = and i32 %2259, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2256, %2258
  %2263 = fadd fast float %2262, %2261
  %2264 = fmul fast float %2263, 0x3F70101000000000
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 512
  %2268 = icmp eq i32 %2267, 0
  br i1 %2268, label %2277, label %2269

; <label>:2269                                    ; preds = %2244
  %2270 = add i32 %55, 512
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %2272, 0
  %2274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2274, %dx.types.Handle %103, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2276 = extractvalue %dx.types.ResRet.f32 %2275, 0
  br label %2277

; <label>:2277                                    ; preds = %2269, %2244
  %2278 = phi float [ %2276, %2269 ], [ 1.000000e+00, %2244 ]
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 33554432
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2389, label %2283

; <label>:2283                                    ; preds = %2277
  %2284 = add i32 %55, 256
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 65535
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = lshr i32 %2286, 16
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = add i32 %55, 260
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = and i32 %2293, 65535
  %2295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2294)  ; LegacyF16ToF32(value)
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = lshr i32 %2297, 24
  %2299 = uitofp i32 %2298 to float
  %2300 = fmul fast float %2299, 0x3F70101020000000
  %2301 = and i32 %2297, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = fmul fast float %2302, 0x3F70101020000000
  %2304 = lshr i32 %2297, 8
  %2305 = and i32 %2304, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = fmul fast float %2306, 0x3F70101020000000
  %2308 = lshr i32 %2297, 16
  %2309 = and i32 %2308, 255
  %2310 = uitofp i32 %2309 to float
  %2311 = fmul fast float %2310, 0x3F70101020000000
  %2312 = add i32 %55, 252
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = lshr i32 %2314, 24
  %2316 = uitofp i32 %2315 to float
  %2317 = fmul fast float %2316, 0x3F70101020000000
  %2318 = and i32 %2314, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = fmul fast float %2319, 0x3F70101020000000
  %2321 = lshr i32 %2314, 8
  %2322 = and i32 %2321, 255
  %2323 = uitofp i32 %2322 to float
  %2324 = fmul fast float %2323, 0x3F70101020000000
  %2325 = lshr i32 %2314, 16
  %2326 = and i32 %2325, 255
  %2327 = uitofp i32 %2326 to float
  %2328 = fmul fast float %2327, 0x3F70101020000000
  %2329 = bitcast float %2253 to i32
  %2330 = ashr i32 %2329, 1
  %2331 = sub nsw i32 1597463174, %2330
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2253, 5.000000e-01
  %2334 = fmul fast float %2332, %2332
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float 1.500000e+00, %2335
  %2337 = fmul fast float %2332, %2253
  %2338 = fmul fast float %2337, %2336
  %2339 = bitcast float %2254 to i32
  %2340 = ashr i32 %2339, 1
  %2341 = sub nsw i32 1597463174, %2340
  %2342 = bitcast i32 %2341 to float
  %2343 = fmul fast float %2254, 5.000000e-01
  %2344 = fmul fast float %2342, %2342
  %2345 = fmul fast float %2344, %2343
  %2346 = fsub fast float 1.500000e+00, %2345
  %2347 = fmul fast float %2342, %2254
  %2348 = fmul fast float %2347, %2346
  %2349 = bitcast float %2255 to i32
  %2350 = ashr i32 %2349, 1
  %2351 = sub nsw i32 1597463174, %2350
  %2352 = bitcast i32 %2351 to float
  %2353 = fmul fast float %2255, 5.000000e-01
  %2354 = fmul fast float %2352, %2352
  %2355 = fmul fast float %2354, %2353
  %2356 = fsub fast float 1.500000e+00, %2355
  %2357 = fmul fast float %2352, %2255
  %2358 = fmul fast float %2357, %2356
  %2359 = fsub fast float %2338, %2320
  %2360 = fsub fast float %2348, %2324
  %2361 = fsub fast float %2358, %2328
  %2362 = fmul fast float %2359, %2288
  %2363 = fmul fast float %2360, %2290
  %2364 = fmul fast float %2361, %2295
  %2365 = fadd fast float %2362, %2303
  %2366 = fadd fast float %2363, %2307
  %2367 = fadd fast float %2364, %2311
  %2368 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  %2369 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2370 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2371 = fmul fast float %2368, %2368
  %2372 = fmul fast float %2369, %2369
  %2373 = fmul fast float %2370, %2370
  %2374 = fsub fast float %2371, %2253
  %2375 = fsub fast float %2372, %2254
  %2376 = fsub fast float %2373, %2255
  %2377 = fmul fast float %2374, %2278
  %2378 = fmul fast float %2375, %2278
  %2379 = fmul fast float %2376, %2278
  %2380 = fadd fast float %2377, %2253
  %2381 = fadd fast float %2378, %2254
  %2382 = fadd fast float %2379, %2255
  %2383 = fadd fast float %2300, %2264
  %2384 = fsub fast float %2383, %2317
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = fsub fast float %2385, %2264
  %2387 = fmul fast float %2386, %2278
  %2388 = fadd fast float %2387, %2264
  br label %2442

; <label>:2389                                    ; preds = %2277
  %2390 = and i32 %2280, 134217728
  %2391 = icmp eq i32 %2390, 0
  br i1 %2391, label %2426, label %2392

; <label>:2392                                    ; preds = %2389
  %2393 = call float @dx.op.unary.f32(i32 24, float %393)  ; Sqrt(value)
  %2394 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %2395 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %2396 = fadd fast float %2393, -5.000000e-01
  %2397 = fadd fast float %2394, -5.000000e-01
  %2398 = fadd fast float %2395, -5.000000e-01
  %2399 = fmul fast float %2396, %2278
  %2400 = fmul fast float %2397, %2278
  %2401 = fmul fast float %2398, %2278
  %2402 = fadd fast float %2399, 5.000000e-01
  %2403 = fadd fast float %2400, 5.000000e-01
  %2404 = fadd fast float %2401, 5.000000e-01
  %2405 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2406 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2407 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2408 = fmul fast float %2402, 2.000000e+00
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2409, %2405
  %2411 = fadd fast float %2410, %2408
  %2412 = fmul fast float %2411, %2405
  %2413 = fmul fast float %2403, 2.000000e+00
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = fmul fast float %2414, %2406
  %2416 = fadd fast float %2415, %2413
  %2417 = fmul fast float %2416, %2406
  %2418 = fmul fast float %2404, 2.000000e+00
  %2419 = fsub fast float 1.000000e+00, %2418
  %2420 = fmul fast float %2419, %2407
  %2421 = fadd fast float %2420, %2418
  %2422 = fmul fast float %2421, %2407
  %2423 = fmul fast float %2412, %2412
  %2424 = fmul fast float %2417, %2417
  %2425 = fmul fast float %2422, %2422
  br label %2442

; <label>:2426                                    ; preds = %2389
  %2427 = fmul fast float %393, %393
  %2428 = fmul fast float %397, %397
  %2429 = fmul fast float %401, %401
  %2430 = fadd fast float %2427, -1.000000e+00
  %2431 = fadd fast float %2428, -1.000000e+00
  %2432 = fadd fast float %2429, -1.000000e+00
  %2433 = fmul fast float %2278, %2430
  %2434 = fmul fast float %2278, %2431
  %2435 = fmul fast float %2278, %2432
  %2436 = fadd fast float %2433, 1.000000e+00
  %2437 = fadd fast float %2434, 1.000000e+00
  %2438 = fadd fast float %2435, 1.000000e+00
  %2439 = fmul fast float %2436, %2253
  %2440 = fmul fast float %2437, %2254
  %2441 = fmul fast float %2438, %2255
  br label %2442

; <label>:2442                                    ; preds = %2426, %2392, %2283, %2239
  %2443 = phi float [ %2388, %2283 ], [ %2264, %2392 ], [ %2264, %2426 ], [ 0x3FA23C0BE0000000, %2239 ]
  %2444 = phi float [ %2380, %2283 ], [ %2423, %2392 ], [ %2439, %2426 ], [ 1.000000e+00, %2239 ]
  %2445 = phi float [ %2381, %2283 ], [ %2424, %2392 ], [ %2440, %2426 ], [ 1.000000e+00, %2239 ]
  %2446 = phi float [ %2382, %2283 ], [ %2425, %2392 ], [ %2441, %2426 ], [ 1.000000e+00, %2239 ]
  %2447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.i32 %2447, 1
  %2449 = and i32 %2448, 1
  %2450 = icmp ne i32 %2449, 0
  %2451 = add i32 %55, 372
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 32
  %2455 = icmp ne i32 %2454, 0
  %2456 = and i1 %2450, %2455
  %2457 = select i1 %2456, float 1.000000e+00, float %2444
  %2458 = select i1 %2456, float 0x3FD3333340000000, float %2445
  %2459 = select i1 %2456, float 0x3FD3333340000000, float %2446
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 32
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2536, label %2464

; <label>:2464                                    ; preds = %2442
  %2465 = add i32 %55, 124
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = add i32 %55, 448
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = add i32 %2470, 0
  %2472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2472, %dx.types.Handle %102, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.ResRet.f32 %2473, 2
  %2477 = extractvalue %dx.types.ResRet.f32 %2473, 3
  %2478 = and i32 %2467, 255
  %2479 = uitofp i32 %2478 to float
  %2480 = lshr i32 %2467, 8
  %2481 = and i32 %2480, 255
  %2482 = uitofp i32 %2481 to float
  %2483 = lshr i32 %2467, 16
  %2484 = and i32 %2483, 255
  %2485 = uitofp i32 %2484 to float
  %2486 = fmul fast float %2485, 0x3F70101000000000
  %2487 = fmul fast float %2474, %2479
  %2488 = fadd fast float %2487, %2482
  %2489 = fmul fast float %2488, 0x3F70101000000000
  %2490 = fadd fast float %2475, -5.000000e-01
  %2491 = fadd fast float %2477, -5.000000e-01
  %2492 = fmul fast float %2490, %2486
  %2493 = fmul fast float %2491, %2486
  %2494 = fadd fast float %2492, 5.000000e-01
  %2495 = fadd fast float %2493, 5.000000e-01
  %2496 = fmul fast float %2494, 2.000000e+00
  %2497 = fadd fast float %2496, -1.000000e+00
  %2498 = fmul fast float %2495, 2.000000e+00
  %2499 = fadd fast float %2498, -1.000000e+00
  %2500 = fadd fast float %2497, %2499
  %2501 = fmul fast float %2500, 5.000000e-01
  %2502 = fsub fast float %2497, %2499
  %2503 = fmul fast float %2502, 5.000000e-01
  %2504 = call float @dx.op.unary.f32(i32 6, float %2501)  ; FAbs(value)
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = call float @dx.op.unary.f32(i32 6, float %2503)  ; FAbs(value)
  %2507 = fsub fast float %2505, %2506
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2503, float %2507, float %2501, float %2503, float %2507)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = call float @dx.op.unary.f32(i32 25, float %2508)  ; Rsqrt(value)
  %2510 = fmul fast float %2501, %2509
  %2511 = fmul fast float %2503, %2509
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = and i32 %2513, 67108864
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2532, label %2516

; <label>:2516                                    ; preds = %2464
  %2517 = add i32 %55, 312
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = and i32 %2519, 65535
  %2521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2520)  ; LegacyF16ToF32(value)
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 65535
  %2525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2524)  ; LegacyF16ToF32(value)
  %2526 = lshr i32 %2519, 16
  %2527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2526)  ; LegacyF16ToF32(value)
  %2528 = fsub fast float %2489, %2527
  %2529 = fmul fast float %2528, %2521
  %2530 = fadd fast float %2529, %2525
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  br label %2532

; <label>:2532                                    ; preds = %2516, %2464
  %2533 = phi float [ %2531, %2516 ], [ %2489, %2464 ]
  %2534 = call float @dx.op.dot2.f32(i32 54, float %2510, float %2511, float %2068, float %2069)  ; Dot2(ax,ay,bx,by)
  %2535 = call float @dx.op.dot2.f32(i32 54, float %2510, float %2511, float %2070, float %2071)  ; Dot2(ax,ay,bx,by)
  br label %2536

; <label>:2536                                    ; preds = %2532, %2442
  %2537 = phi float [ %2533, %2532 ], [ 0x3FD6666660000000, %2442 ]
  %2538 = phi float [ %2534, %2532 ], [ 0.000000e+00, %2442 ]
  %2539 = phi float [ %2535, %2532 ], [ 0.000000e+00, %2442 ]
  %2540 = phi float [ %2476, %2532 ], [ 1.000000e+00, %2442 ]
  %2541 = add i32 %55, 192
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = lshr i32 %2543, 22
  %2545 = shl nuw nsw i32 %2544, 5
  %2546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2545)  ; LegacyF16ToF32(value)
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 64
  %2550 = icmp eq i32 %2549, 0
  br i1 %2550, label %2584, label %2551

; <label>:2551                                    ; preds = %2536
  %2552 = add i32 %55, 464
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = add i32 %2554, 0
  %2556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 131072
  %2560 = icmp eq i32 %2559, 0
  %2561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2556, %dx.types.Handle %102, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2565 = fmul fast float %2562, %381
  %2566 = fmul fast float %2563, %384
  %2567 = fmul fast float %2564, %387
  br i1 %2560, label %2574, label %2568

; <label>:2568                                    ; preds = %2551
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = fmul fast float %2570, %2565
  %2572 = fmul fast float %2570, %2566
  %2573 = fmul fast float %2570, %2567
  br label %2574

; <label>:2574                                    ; preds = %2568, %2551
  %2575 = phi float [ %2571, %2568 ], [ %2565, %2551 ]
  %2576 = phi float [ %2572, %2568 ], [ %2566, %2551 ]
  %2577 = phi float [ %2573, %2568 ], [ %2567, %2551 ]
  %2578 = fmul fast float %2575, %2546
  %2579 = select i1 %280, float %2578, float %2575
  %2580 = call float @dx.op.dot3.f32(i32 55, float %2579, float %2576, float %2577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2581 = select i1 %280, float 0.000000e+00, float %2575
  %2582 = select i1 %280, float %2580, float %2576
  %2583 = select i1 %280, float 0.000000e+00, float %2577
  br label %2584

; <label>:2584                                    ; preds = %2574, %2536
  %2585 = phi float [ %2581, %2574 ], [ 0.000000e+00, %2536 ]
  %2586 = phi float [ %2582, %2574 ], [ 0.000000e+00, %2536 ]
  %2587 = phi float [ %2583, %2574 ], [ 0.000000e+00, %2536 ]
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 1024
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2622, label %2592

; <label>:2592                                    ; preds = %2584
  %2593 = add i32 %55, 184
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = fmul fast float %2597, 0x3F70101020000000
  %2599 = lshr i32 %2595, 8
  %2600 = and i32 %2599, 255
  %2601 = uitofp i32 %2600 to float
  %2602 = fmul fast float %2601, 0x3F70101020000000
  %2603 = lshr i32 %2595, 16
  %2604 = and i32 %2603, 255
  %2605 = uitofp i32 %2604 to float
  %2606 = fmul fast float %2605, 0x3F70101020000000
  %2607 = fmul fast float %2598, %2598
  %2608 = fmul fast float %2602, %2602
  %2609 = fmul fast float %2606, %2606
  %2610 = add i32 %55, 528
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %2612, 0
  %2614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2614, %dx.types.Handle %103, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.ResRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.ResRet.f32 %2615, 2
  %2619 = fmul fast float %2607, %2616
  %2620 = fmul fast float %2608, %2617
  %2621 = fmul fast float %2609, %2618
  br label %2622

; <label>:2622                                    ; preds = %2592, %2584
  %2623 = phi float [ %2619, %2592 ], [ 0.000000e+00, %2584 ]
  %2624 = phi float [ %2620, %2592 ], [ 0.000000e+00, %2584 ]
  %2625 = phi float [ %2621, %2592 ], [ 0.000000e+00, %2584 ]
  %2626 = fcmp fast ogt float %2623, 0.000000e+00
  %2627 = fcmp fast ogt float %2624, 0.000000e+00
  %2628 = fcmp fast ogt float %2625, 0.000000e+00
  %2629 = call float @dx.op.unary.f32(i32 23, float %2623)  ; Log(value)
  %2630 = call float @dx.op.unary.f32(i32 23, float %2624)  ; Log(value)
  %2631 = call float @dx.op.unary.f32(i32 23, float %2625)  ; Log(value)
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 7
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = fmul fast float %2629, 0xBFE62E4300000000
  %2638 = fmul fast float %2637, %2636
  %2639 = fmul fast float %2630, 0xBFE62E4300000000
  %2640 = fmul fast float %2639, %2636
  %2641 = fmul fast float %2631, 0xBFE62E4300000000
  %2642 = fmul fast float %2641, %2636
  %2643 = select i1 %2626, float %2638, float 1.270000e+02
  %2644 = select i1 %2627, float %2640, float 1.270000e+02
  %2645 = select i1 %2628, float %2642, float 1.270000e+02
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 10240
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2670, label %2650

; <label>:2650                                    ; preds = %2622
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 2048
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %2670, label %2655

; <label>:2655                                    ; preds = %2650
  %2656 = add i32 %55, 544
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = add i32 %2658, 0
  %2660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2660, %dx.types.Handle %103, float %2164, float %2165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 3
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = shl i32 %2664, 4
  %2666 = and i32 %2665, 32752
  %2667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2666)  ; LegacyF16ToF32(value)
  %2668 = fmul fast float %2667, %2662
  %2669 = call float @dx.op.binary.f32(i32 35, float %2668, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2670

; <label>:2670                                    ; preds = %2655, %2650, %2622
  %2671 = phi float [ %2669, %2655 ], [ 0x3F70101020000000, %2650 ], [ 0x3F70101020000000, %2622 ]
  %2672 = add i32 %55, 128
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = lshr i32 %2674, 8
  %2678 = and i32 %2677, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2681 = fmul fast float %2679, %2680
  %2682 = fadd fast float %2681, %2676
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  br i1 %2056, label %2685, label %2720

; <label>:2685                                    ; preds = %2670
  %2686 = fmul fast float %2671, 2.000000e+00
  %2687 = fcmp fast olt float %2643, 1.270000e+02
  %2688 = fcmp fast olt float %2644, 1.270000e+02
  %2689 = fcmp fast olt float %2645, 1.270000e+02
  %2690 = fmul fast float %2643, 0xBFF7154760000000
  %2691 = fmul fast float %2690, %2686
  %2692 = fmul fast float %2644, 0xBFF7154760000000
  %2693 = fmul fast float %2692, %2686
  %2694 = fmul fast float %2645, 0xBFF7154760000000
  %2695 = fmul fast float %2694, %2686
  %2696 = call float @dx.op.unary.f32(i32 21, float %2691)  ; Exp(value)
  %2697 = call float @dx.op.unary.f32(i32 21, float %2693)  ; Exp(value)
  %2698 = call float @dx.op.unary.f32(i32 21, float %2695)  ; Exp(value)
  %2699 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2700 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2701 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2702 = fadd fast float %2699, -1.000000e+00
  %2703 = select i1 %2687, float %2702, float -1.000000e+00
  %2704 = fadd fast float %2700, -1.000000e+00
  %2705 = select i1 %2688, float %2704, float -1.000000e+00
  %2706 = fadd fast float %2701, -1.000000e+00
  %2707 = select i1 %2689, float %2706, float -1.000000e+00
  %2708 = fmul fast float %2703, %2237
  %2709 = fmul fast float %2705, %2237
  %2710 = fmul fast float %2707, %2237
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fadd fast float %2710, 1.000000e+00
  %2714 = fmul fast float %2711, %2041
  %2715 = fmul fast float %2712, %2042
  %2716 = fmul fast float %2713, %2043
  %2717 = fmul fast float %2711, %2044
  %2718 = fmul fast float %2712, %2045
  %2719 = fmul fast float %2713, %2046
  br label %2720

; <label>:2720                                    ; preds = %2685, %2670
  %2721 = phi float [ %2714, %2685 ], [ %2041, %2670 ]
  %2722 = phi float [ %2715, %2685 ], [ %2042, %2670 ]
  %2723 = phi float [ %2716, %2685 ], [ %2043, %2670 ]
  %2724 = phi float [ %2717, %2685 ], [ %2044, %2670 ]
  %2725 = phi float [ %2718, %2685 ], [ %2045, %2670 ]
  %2726 = phi float [ %2719, %2685 ], [ %2046, %2670 ]
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 3
  %2730 = icmp eq i32 %2729, 3
  br i1 %2730, label %2809, label %2731

; <label>:2731                                    ; preds = %2720
  %2732 = and i32 %2728, 16
  %2733 = icmp ne i32 %2732, 0
  %2734 = select i1 %2733, float %2237, float 0.000000e+00
  %2735 = icmp eq i32 %2729, 0
  br i1 %2735, label %2736, label %2764

; <label>:2736                                    ; preds = %2731
  %2737 = and i32 %2728, 64
  %2738 = icmp ne i32 %2737, 0
  %2739 = select i1 %2738, float %2237, float 0.000000e+00
  %2740 = fsub fast float %2457, %2721
  %2741 = fsub fast float %2458, %2722
  %2742 = fsub fast float %2459, %2723
  %2743 = fmul fast float %2734, %2740
  %2744 = fmul fast float %2734, %2741
  %2745 = fmul fast float %2734, %2742
  %2746 = fadd fast float %2743, %2721
  %2747 = fadd fast float %2744, %2722
  %2748 = fadd fast float %2745, %2723
  %2749 = fsub fast float %2443, %2050
  %2750 = fmul fast float %2734, %2749
  %2751 = fadd fast float %2750, %2050
  %2752 = fsub fast float %2585, %2724
  %2753 = fsub fast float %2586, %2725
  %2754 = fsub fast float %2587, %2726
  %2755 = fmul fast float %2739, %2752
  %2756 = fmul fast float %2739, %2753
  %2757 = fmul fast float %2739, %2754
  %2758 = fadd fast float %2755, %2724
  %2759 = fadd fast float %2756, %2725
  %2760 = fadd fast float %2757, %2726
  %2761 = fsub fast float %2684, %2054
  %2762 = fmul fast float %2734, %2761
  %2763 = fadd fast float %2762, %2054
  br label %2809

; <label>:2764                                    ; preds = %2731
  %2765 = icmp eq i32 %2729, 1
  br i1 %2765, label %2766, label %2779

; <label>:2766                                    ; preds = %2764
  %2767 = fadd fast float %2457, -1.000000e+00
  %2768 = fadd fast float %2458, -1.000000e+00
  %2769 = fadd fast float %2459, -1.000000e+00
  %2770 = fmul fast float %2734, %2767
  %2771 = fmul fast float %2734, %2768
  %2772 = fmul fast float %2734, %2769
  %2773 = fadd fast float %2770, 1.000000e+00
  %2774 = fadd fast float %2771, 1.000000e+00
  %2775 = fadd fast float %2772, 1.000000e+00
  %2776 = fmul fast float %2773, %2721
  %2777 = fmul fast float %2774, %2722
  %2778 = fmul fast float %2775, %2723
  br label %2809

; <label>:2779                                    ; preds = %2764
  %2780 = icmp eq i32 %2729, 2
  br i1 %2780, label %2781, label %2809

; <label>:2781                                    ; preds = %2779
  %2782 = call float @dx.op.unary.f32(i32 24, float %2457)  ; Sqrt(value)
  %2783 = call float @dx.op.unary.f32(i32 24, float %2458)  ; Sqrt(value)
  %2784 = call float @dx.op.unary.f32(i32 24, float %2459)  ; Sqrt(value)
  %2785 = fadd fast float %2782, -5.000000e-01
  %2786 = fadd fast float %2783, -5.000000e-01
  %2787 = fadd fast float %2784, -5.000000e-01
  %2788 = fmul fast float %2785, %2734
  %2789 = fmul fast float %2786, %2734
  %2790 = fmul fast float %2787, %2734
  %2791 = fadd fast float %2788, 5.000000e-01
  %2792 = fadd fast float %2789, 5.000000e-01
  %2793 = fadd fast float %2790, 5.000000e-01
  %2794 = fmul fast float %2791, 2.000000e+00
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2795, %2721
  %2797 = fadd fast float %2796, %2794
  %2798 = fmul fast float %2797, %2721
  %2799 = fmul fast float %2792, 2.000000e+00
  %2800 = fsub fast float 1.000000e+00, %2799
  %2801 = fmul fast float %2800, %2722
  %2802 = fadd fast float %2801, %2799
  %2803 = fmul fast float %2802, %2722
  %2804 = fmul fast float %2793, 2.000000e+00
  %2805 = fsub fast float 1.000000e+00, %2804
  %2806 = fmul fast float %2805, %2723
  %2807 = fadd fast float %2806, %2804
  %2808 = fmul fast float %2807, %2723
  br label %2809

; <label>:2809                                    ; preds = %2781, %2779, %2766, %2736, %2720
  %2810 = phi float [ %2721, %2720 ], [ %2798, %2781 ], [ %2721, %2779 ], [ %2776, %2766 ], [ %2746, %2736 ]
  %2811 = phi float [ %2722, %2720 ], [ %2803, %2781 ], [ %2722, %2779 ], [ %2777, %2766 ], [ %2747, %2736 ]
  %2812 = phi float [ %2723, %2720 ], [ %2808, %2781 ], [ %2723, %2779 ], [ %2778, %2766 ], [ %2748, %2736 ]
  %2813 = phi float [ %2724, %2720 ], [ %2724, %2781 ], [ %2724, %2779 ], [ %2724, %2766 ], [ %2758, %2736 ]
  %2814 = phi float [ %2725, %2720 ], [ %2725, %2781 ], [ %2725, %2779 ], [ %2725, %2766 ], [ %2759, %2736 ]
  %2815 = phi float [ %2726, %2720 ], [ %2726, %2781 ], [ %2726, %2779 ], [ %2726, %2766 ], [ %2760, %2736 ]
  %2816 = phi float [ %2050, %2720 ], [ %2050, %2781 ], [ %2050, %2779 ], [ %2050, %2766 ], [ %2751, %2736 ]
  %2817 = phi float [ %2054, %2720 ], [ %2054, %2781 ], [ %2054, %2779 ], [ %2054, %2766 ], [ %2763, %2736 ]
  %2818 = and i32 %2728, 12
  %2819 = icmp eq i32 %2818, 12
  br i1 %2819, label %2926, label %2820

; <label>:2820                                    ; preds = %2809
  %2821 = and i32 %2728, 2097184
  %2822 = icmp eq i32 %2821, 2097184
  %2823 = select i1 %2822, float %2237, float 0.000000e+00
  %2824 = and i32 %2728, 4194336
  %2825 = icmp eq i32 %2824, 4194336
  %2826 = select i1 %2825, float %2237, float 0.000000e+00
  %2827 = and i32 %2728, 8388640
  %2828 = icmp eq i32 %2827, 8388640
  %2829 = select i1 %2828, float %2237, float 0.000000e+00
  %2830 = and i32 %2728, 1024
  %2831 = icmp ne i32 %2830, 0
  %2832 = select i1 %2831, float %2237, float 0.000000e+00
  %2833 = and i32 %2728, 2048
  %2834 = icmp ne i32 %2833, 0
  %2835 = select i1 %2834, float %2237, float 0.000000e+00
  %2836 = icmp eq i32 %2818, 0
  br i1 %2836, label %2837, label %2862

; <label>:2837                                    ; preds = %2820
  %2838 = fsub fast float %2538, %2039
  %2839 = fsub fast float %2539, %2040
  %2840 = fmul fast float %2823, %2838
  %2841 = fmul fast float %2823, %2839
  %2842 = fadd fast float %2840, %2039
  %2843 = fadd fast float %2841, %2040
  %2844 = fsub fast float %2540, %2052
  %2845 = fmul fast float %2826, %2844
  %2846 = fadd fast float %2845, %2052
  %2847 = fsub fast float %2537, %2051
  %2848 = fmul fast float %2829, %2847
  %2849 = fadd fast float %2848, %2051
  %2850 = fsub fast float %2643, %2047
  %2851 = fsub fast float %2644, %2048
  %2852 = fsub fast float %2645, %2049
  %2853 = fmul fast float %2832, %2850
  %2854 = fmul fast float %2832, %2851
  %2855 = fmul fast float %2832, %2852
  %2856 = fadd fast float %2853, %2047
  %2857 = fadd fast float %2854, %2048
  %2858 = fadd fast float %2855, %2049
  %2859 = fsub fast float %2671, %2053
  %2860 = fmul fast float %2835, %2859
  %2861 = fadd fast float %2860, %2053
  br label %2926

; <label>:2862                                    ; preds = %2820
  %2863 = icmp eq i32 %2818, 4
  br i1 %2863, label %2864, label %2904

; <label>:2864                                    ; preds = %2862
  %2865 = fmul fast float %2823, %2538
  %2866 = fmul fast float %2823, %2539
  %2867 = fadd fast float %2865, %2039
  %2868 = fadd fast float %2866, %2040
  %2869 = call float @dx.op.binary.f32(i32 36, float %2052, float %2540)  ; FMin(a,b)
  %2870 = fsub fast float %2869, %2052
  %2871 = fmul fast float %2870, %2826
  %2872 = fadd fast float %2871, %2052
  %2873 = fadd fast float %2537, %2051
  %2874 = fmul fast float %2873, 0x3FF337FAE0000000
  %2875 = fmul fast float %2051, %2051
  %2876 = fmul fast float %2537, %2537
  %2877 = fadd fast float %2876, %2875
  %2878 = fmul fast float %2877, 0x3FE5152B00000000
  %2879 = fmul fast float %2051, 0xBFCC1F85E0000000
  %2880 = fmul fast float %2879, %2537
  %2881 = fadd fast float %2880, 0xBFE1363700000000
  %2882 = fadd fast float %2881, %2874
  %2883 = fsub fast float %2882, %2878
  %2884 = fmul fast float %2873, 0x3FBA6F0D00000000
  %2885 = fmul fast float %2877, 0x3FD0432880000000
  %2886 = fmul fast float %2051, 0xBFEF110800000000
  %2887 = fmul fast float %2886, %2537
  %2888 = fadd fast float %2887, 1.000000e+00
  %2889 = fsub fast float %2888, %2884
  %2890 = fadd fast float %2889, %2885
  %2891 = fdiv fast float %2883, %2890
  %2892 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2893 = fsub fast float %2892, %2051
  %2894 = fmul fast float %2893, %2829
  %2895 = fadd fast float %2894, %2051
  %2896 = fmul fast float %2832, %2643
  %2897 = fmul fast float %2832, %2644
  %2898 = fmul fast float %2832, %2645
  %2899 = fadd fast float %2896, %2047
  %2900 = fadd fast float %2897, %2048
  %2901 = fadd fast float %2898, %2049
  %2902 = fmul fast float %2835, %2671
  %2903 = fadd fast float %2902, %2053
  br label %2926

; <label>:2904                                    ; preds = %2862
  %2905 = icmp eq i32 %2818, 8
  br i1 %2905, label %2906, label %2926

; <label>:2906                                    ; preds = %2904
  %2907 = fmul fast float %2823, %2538
  %2908 = fmul fast float %2823, %2539
  %2909 = fadd fast float %2907, %2039
  %2910 = fadd fast float %2908, %2040
  %2911 = call float @dx.op.binary.f32(i32 36, float %2052, float %2540)  ; FMin(a,b)
  %2912 = fsub fast float %2911, %2052
  %2913 = fmul fast float %2912, %2826
  %2914 = fadd fast float %2913, %2052
  %2915 = fsub fast float %2537, %2051
  %2916 = fmul fast float %2829, %2915
  %2917 = fadd fast float %2916, %2051
  %2918 = fmul fast float %2832, %2643
  %2919 = fmul fast float %2832, %2644
  %2920 = fmul fast float %2832, %2645
  %2921 = fadd fast float %2918, %2047
  %2922 = fadd fast float %2919, %2048
  %2923 = fadd fast float %2920, %2049
  %2924 = fmul fast float %2835, %2671
  %2925 = fadd fast float %2924, %2053
  br label %2926

; <label>:2926                                    ; preds = %2906, %2904, %2864, %2837, %2809, %2236, %2055, %2038
  %2927 = phi float [ %2039, %2809 ], [ %2039, %2236 ], [ %2039, %2038 ], [ %2909, %2906 ], [ %2039, %2904 ], [ %2867, %2864 ], [ %2842, %2837 ], [ %2039, %2055 ]
  %2928 = phi float [ %2040, %2809 ], [ %2040, %2236 ], [ %2040, %2038 ], [ %2910, %2906 ], [ %2040, %2904 ], [ %2868, %2864 ], [ %2843, %2837 ], [ %2040, %2055 ]
  %2929 = phi float [ %2810, %2809 ], [ %2041, %2236 ], [ %2041, %2038 ], [ %2810, %2906 ], [ %2810, %2904 ], [ %2810, %2864 ], [ %2810, %2837 ], [ %2041, %2055 ]
  %2930 = phi float [ %2811, %2809 ], [ %2042, %2236 ], [ %2042, %2038 ], [ %2811, %2906 ], [ %2811, %2904 ], [ %2811, %2864 ], [ %2811, %2837 ], [ %2042, %2055 ]
  %2931 = phi float [ %2812, %2809 ], [ %2043, %2236 ], [ %2043, %2038 ], [ %2812, %2906 ], [ %2812, %2904 ], [ %2812, %2864 ], [ %2812, %2837 ], [ %2043, %2055 ]
  %2932 = phi float [ %2813, %2809 ], [ %2044, %2236 ], [ %2044, %2038 ], [ %2813, %2906 ], [ %2813, %2904 ], [ %2813, %2864 ], [ %2813, %2837 ], [ %2044, %2055 ]
  %2933 = phi float [ %2814, %2809 ], [ %2045, %2236 ], [ %2045, %2038 ], [ %2814, %2906 ], [ %2814, %2904 ], [ %2814, %2864 ], [ %2814, %2837 ], [ %2045, %2055 ]
  %2934 = phi float [ %2815, %2809 ], [ %2046, %2236 ], [ %2046, %2038 ], [ %2815, %2906 ], [ %2815, %2904 ], [ %2815, %2864 ], [ %2815, %2837 ], [ %2046, %2055 ]
  %2935 = phi float [ %2047, %2809 ], [ %2047, %2236 ], [ %2047, %2038 ], [ %2921, %2906 ], [ %2047, %2904 ], [ %2899, %2864 ], [ %2856, %2837 ], [ %2047, %2055 ]
  %2936 = phi float [ %2048, %2809 ], [ %2048, %2236 ], [ %2048, %2038 ], [ %2922, %2906 ], [ %2048, %2904 ], [ %2900, %2864 ], [ %2857, %2837 ], [ %2048, %2055 ]
  %2937 = phi float [ %2049, %2809 ], [ %2049, %2236 ], [ %2049, %2038 ], [ %2923, %2906 ], [ %2049, %2904 ], [ %2901, %2864 ], [ %2858, %2837 ], [ %2049, %2055 ]
  %2938 = phi float [ %2816, %2809 ], [ %2050, %2236 ], [ %2050, %2038 ], [ %2816, %2906 ], [ %2816, %2904 ], [ %2816, %2864 ], [ %2816, %2837 ], [ %2050, %2055 ]
  %2939 = phi float [ %2051, %2809 ], [ %2051, %2236 ], [ %2051, %2038 ], [ %2917, %2906 ], [ %2051, %2904 ], [ %2895, %2864 ], [ %2849, %2837 ], [ %2051, %2055 ]
  %2940 = phi float [ %2052, %2809 ], [ %2052, %2236 ], [ %2052, %2038 ], [ %2914, %2906 ], [ %2052, %2904 ], [ %2872, %2864 ], [ %2846, %2837 ], [ %2052, %2055 ]
  %2941 = phi float [ %2053, %2809 ], [ %2053, %2236 ], [ %2053, %2038 ], [ %2925, %2906 ], [ %2053, %2904 ], [ %2903, %2864 ], [ %2861, %2837 ], [ %2053, %2055 ]
  %2942 = phi float [ %2817, %2809 ], [ %2054, %2236 ], [ %2054, %2038 ], [ %2817, %2906 ], [ %2817, %2904 ], [ %2817, %2864 ], [ %2817, %2837 ], [ %2054, %2055 ]
  br i1 %468, label %3814, label %2943

; <label>:2943                                    ; preds = %2926
  %2944 = icmp ult i32 %522, 4
  %2945 = add i32 %55, 72
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = add i32 %55, 76
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = or i32 %2950, %2947
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %3814, label %2953

; <label>:2953                                    ; preds = %2943
  %2954 = and i32 %2947, 262144
  %2955 = icmp ne i32 %2954, 0
  %2956 = select i1 %2955, float %61, float 1.000000e+00
  %2957 = select i1 %2955, float %62, float 0.000000e+00
  %2958 = select i1 %2955, float %63, float 0.000000e+00
  %2959 = select i1 %2955, float %64, float 1.000000e+00
  %2960 = select i1 %2955, float %65, float %88
  %2961 = select i1 %2955, float %66, float %89
  %2962 = add i32 %55, 332
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 16
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = fmul fast float %2966, 0x3F50624DE0000000
  %2968 = add i32 %55, 136
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = lshr i32 %2970, 16
  %2972 = and i32 %2971, 255
  %2973 = lshr i32 %2970, 24
  %2974 = add i32 %55, 340
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = and i32 %2976, 65535
  %2978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2977)  ; LegacyF16ToF32(value)
  %2979 = lshr i32 %2976, 16
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = add i32 %55, 80
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = lshr i32 %2983, 22
  %2985 = shl nuw nsw i32 %2984, 5
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = shl i32 %2983, 4
  %2988 = and i32 %2987, 32752
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = lshr i32 %2983, 7
  %2991 = and i32 %2990, 32752
  %2992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2991)  ; LegacyF16ToF32(value)
  %2993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2993, 3
  %2995 = fmul fast float %2994, 1.000000e+03
  %2996 = fmul fast float %458, %2995
  %2997 = call float @dx.op.unary.f32(i32 22, float %2996)  ; Frc(value)
  %2998 = fadd fast float %2997, %448
  %2999 = fmul fast float %459, %2995
  %3000 = call float @dx.op.unary.f32(i32 22, float %2999)  ; Frc(value)
  %3001 = fadd fast float %3000, %450
  %3002 = fmul fast float %2967, %2995
  %3003 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3004 = fmul fast float %3003, 0x401921FB60000000
  %3005 = fadd fast float %3004, %2986
  %3006 = call float @dx.op.unary.f32(i32 13, float %3005)  ; Sin(value)
  %3007 = call float @dx.op.unary.f32(i32 12, float %3005)  ; Cos(value)
  %3008 = fsub fast float -0.000000e+00, %3006
  %3009 = fadd fast float %2960, -5.000000e-01
  %3010 = fadd fast float %2961, -5.000000e-01
  %3011 = fmul fast float %2978, %3009
  %3012 = fmul fast float %2980, %3010
  %3013 = fadd fast float %3011, 5.000000e-01
  %3014 = fadd fast float %3012, 5.000000e-01
  %3015 = fmul fast float %2989, %3013
  %3016 = fmul fast float %2992, %3014
  %3017 = fmul fast float %3007, %3015
  %3018 = call float @dx.op.tertiary.f32(i32 46, float %3008, float %3016, float %3017)  ; FMad(a,b,c)
  %3019 = fmul fast float %3006, %3015
  %3020 = call float @dx.op.tertiary.f32(i32 46, float %3007, float %3016, float %3019)  ; FMad(a,b,c)
  %3021 = fadd fast float %2998, %3018
  %3022 = fadd fast float %3001, %3020
  %3023 = icmp ugt i32 %2972, 1
  %3024 = icmp ugt i32 %2970, 33554431
  %3025 = or i1 %3024, %3023
  br i1 %3025, label %3026, label %3051

; <label>:3026                                    ; preds = %2953
  %3027 = add i32 %55, 276
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = lshr i32 %3029, 16
  %3031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3030)  ; LegacyF16ToF32(value)
  %3032 = fmul fast float %2994, %3031
  %3033 = call float @dx.op.unary.f32(i32 22, float %3032)  ; Frc(value)
  %3034 = mul nuw nsw i32 %2972, %2973
  %3035 = uitofp i32 %3034 to float
  %3036 = fmul fast float %3033, %3035
  %3037 = call float @dx.op.unary.f32(i32 27, float %3036)  ; Round_ni(value)
  %3038 = fptoui float %3037 to i32
  %3039 = urem i32 %3038, %2972
  %3040 = udiv i32 %3038, %2973
  %3041 = call float @dx.op.unary.f32(i32 22, float %3021)  ; Frc(value)
  %3042 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3043 = uitofp i32 %3039 to float
  %3044 = uitofp i32 %3040 to float
  %3045 = fadd fast float %3041, %3043
  %3046 = fadd fast float %3042, %3044
  %3047 = uitofp i32 %2972 to float
  %3048 = uitofp i32 %2973 to float
  %3049 = fdiv fast float %3045, %3047
  %3050 = fdiv fast float %3046, %3048
  br label %3051

; <label>:3051                                    ; preds = %3026, %2953
  %3052 = phi float [ %3049, %3026 ], [ %3021, %2953 ]
  %3053 = phi float [ %3050, %3026 ], [ %3022, %2953 ]
  %3054 = and i32 %2947, 256
  %3055 = icmp eq i32 %3054, 0
  br i1 %3055, label %3102, label %3056

; <label>:3056                                    ; preds = %3051
  %3057 = add i32 %55, 500
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = add i32 %3059, 0
  %3061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3061, %dx.types.Handle %103, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = add i32 %55, 148
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = shl i32 %3066, 4
  %3068 = and i32 %3067, 32752
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = lshr i32 %3066, 7
  %3071 = and i32 %3070, 32752
  %3072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3071)  ; LegacyF16ToF32(value)
  %3073 = fsub fast float 1.000000e+00, %517
  %3074 = call float @dx.op.binary.f32(i32 35, float %3073, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3075 = bitcast float %517 to i32
  %3076 = sitofp i32 %3075 to float
  %3077 = fadd fast float %3076, 0xC1CFBF8940000000
  %3078 = fmul fast float %3072, %3077
  %3079 = fadd fast float %3078, 0x41CFBF8940000000
  %3080 = fptosi float %3079 to i32
  %3081 = bitcast i32 %3080 to float
  %3082 = bitcast float %3074 to i32
  %3083 = sitofp i32 %3082 to float
  %3084 = fadd fast float %3083, 0xC1CFBF8940000000
  %3085 = fmul fast float %3084, %3072
  %3086 = fadd fast float %3085, 0x41CFBF8940000000
  %3087 = fptosi float %3086 to i32
  %3088 = bitcast i32 %3087 to float
  %3089 = fmul fast float %3081, %3069
  %3090 = fmul fast float %3088, %3069
  %3091 = fsub fast float %3074, %3089
  %3092 = fadd fast float %3090, %3074
  %3093 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3095 = fsub fast float %3063, %3093
  %3096 = fsub fast float %3094, %3093
  %3097 = bitcast float %3096 to i32
  %3098 = sub nsw i32 2129859010, %3097
  %3099 = bitcast i32 %3098 to float
  %3100 = fmul fast float %3099, %3095
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  br label %3102

; <label>:3102                                    ; preds = %3056, %3051
  %3103 = phi float [ %3101, %3056 ], [ %517, %3051 ]
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 128
  %3107 = icmp eq i32 %3106, 0
  br i1 %3107, label %3124, label %3108

; <label>:3108                                    ; preds = %3102
  %3109 = add i32 %55, 484
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = add i32 %3111, 0
  %3113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3113, %dx.types.Handle %103, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 524288
  %3119 = icmp ne i32 %3118, 0
  %3120 = fcmp fast ogt float %3115, 0x3FE0101020000000
  %3121 = select i1 %3120, float 1.000000e+00, float 0.000000e+00
  %3122 = select i1 %3119, float %3121, float %3115
  %3123 = fmul fast float %3122, %3103
  br label %3124

; <label>:3124                                    ; preds = %3108, %3102
  %3125 = phi float [ %3123, %3108 ], [ %3103, %3102 ]
  %3126 = fcmp fast ult float %3125, 0x3F70101020000000
  br i1 %3126, label %3814, label %3127

; <label>:3127                                    ; preds = %3124
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 16
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3330, label %3132

; <label>:3132                                    ; preds = %3127
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %55, 436
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = add i32 %3137, 0
  %3139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3139, %dx.types.Handle %102, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3141 = extractvalue %dx.types.ResRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.ResRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.ResRet.f32 %3140, 2
  %3144 = extractvalue %dx.types.ResRet.f32 %3140, 3
  %3145 = and i32 %3134, 255
  %3146 = uitofp i32 %3145 to float
  %3147 = lshr i32 %3134, 8
  %3148 = and i32 %3147, 255
  %3149 = uitofp i32 %3148 to float
  %3150 = fmul fast float %3144, %3146
  %3151 = fadd fast float %3150, %3149
  %3152 = fmul fast float %3151, 0x3F70101000000000
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 512
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3165, label %3157

; <label>:3157                                    ; preds = %3132
  %3158 = add i32 %55, 516
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = add i32 %3160, 0
  %3162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3162, %dx.types.Handle %103, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  br label %3165

; <label>:3165                                    ; preds = %3157, %3132
  %3166 = phi float [ %3164, %3157 ], [ 1.000000e+00, %3132 ]
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 33554432
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3277, label %3171

; <label>:3171                                    ; preds = %3165
  %3172 = add i32 %55, 272
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = and i32 %3174, 65535
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = lshr i32 %3174, 16
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = add i32 %55, 276
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 65535
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = lshr i32 %3185, 24
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = and i32 %3185, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = lshr i32 %3185, 8
  %3193 = and i32 %3192, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101020000000
  %3196 = lshr i32 %3185, 16
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101020000000
  %3200 = add i32 %55, 268
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = lshr i32 %3202, 24
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = and i32 %3202, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = lshr i32 %3202, 8
  %3210 = and i32 %3209, 255
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3211, 0x3F70101020000000
  %3213 = lshr i32 %3202, 16
  %3214 = and i32 %3213, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = bitcast float %3141 to i32
  %3218 = ashr i32 %3217, 1
  %3219 = sub nsw i32 1597463174, %3218
  %3220 = bitcast i32 %3219 to float
  %3221 = fmul fast float %3141, 5.000000e-01
  %3222 = fmul fast float %3220, %3220
  %3223 = fmul fast float %3222, %3221
  %3224 = fsub fast float 1.500000e+00, %3223
  %3225 = fmul fast float %3220, %3141
  %3226 = fmul fast float %3225, %3224
  %3227 = bitcast float %3142 to i32
  %3228 = ashr i32 %3227, 1
  %3229 = sub nsw i32 1597463174, %3228
  %3230 = bitcast i32 %3229 to float
  %3231 = fmul fast float %3142, 5.000000e-01
  %3232 = fmul fast float %3230, %3230
  %3233 = fmul fast float %3232, %3231
  %3234 = fsub fast float 1.500000e+00, %3233
  %3235 = fmul fast float %3230, %3142
  %3236 = fmul fast float %3235, %3234
  %3237 = bitcast float %3143 to i32
  %3238 = ashr i32 %3237, 1
  %3239 = sub nsw i32 1597463174, %3238
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3143, 5.000000e-01
  %3242 = fmul fast float %3240, %3240
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float 1.500000e+00, %3243
  %3245 = fmul fast float %3240, %3143
  %3246 = fmul fast float %3245, %3244
  %3247 = fsub fast float %3226, %3208
  %3248 = fsub fast float %3236, %3212
  %3249 = fsub fast float %3246, %3216
  %3250 = fmul fast float %3247, %3176
  %3251 = fmul fast float %3248, %3178
  %3252 = fmul fast float %3249, %3183
  %3253 = fadd fast float %3250, %3191
  %3254 = fadd fast float %3251, %3195
  %3255 = fadd fast float %3252, %3199
  %3256 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3257 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3258 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3259 = fmul fast float %3256, %3256
  %3260 = fmul fast float %3257, %3257
  %3261 = fmul fast float %3258, %3258
  %3262 = fsub fast float %3259, %3141
  %3263 = fsub fast float %3260, %3142
  %3264 = fsub fast float %3261, %3143
  %3265 = fmul fast float %3262, %3166
  %3266 = fmul fast float %3263, %3166
  %3267 = fmul fast float %3264, %3166
  %3268 = fadd fast float %3265, %3141
  %3269 = fadd fast float %3266, %3142
  %3270 = fadd fast float %3267, %3143
  %3271 = fadd fast float %3188, %3152
  %3272 = fsub fast float %3271, %3205
  %3273 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3274 = fsub fast float %3273, %3152
  %3275 = fmul fast float %3274, %3166
  %3276 = fadd fast float %3275, %3152
  br label %3330

; <label>:3277                                    ; preds = %3165
  %3278 = and i32 %3168, 134217728
  %3279 = icmp eq i32 %3278, 0
  br i1 %3279, label %3314, label %3280

; <label>:3280                                    ; preds = %3277
  %3281 = call float @dx.op.unary.f32(i32 24, float %435)  ; Sqrt(value)
  %3282 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %3283 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fadd fast float %3282, -5.000000e-01
  %3286 = fadd fast float %3283, -5.000000e-01
  %3287 = fmul fast float %3284, %3166
  %3288 = fmul fast float %3285, %3166
  %3289 = fmul fast float %3286, %3166
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = fadd fast float %3288, 5.000000e-01
  %3292 = fadd fast float %3289, 5.000000e-01
  %3293 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3294 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3295 = call float @dx.op.unary.f32(i32 24, float %3143)  ; Sqrt(value)
  %3296 = fmul fast float %3290, 2.000000e+00
  %3297 = fsub fast float 1.000000e+00, %3296
  %3298 = fmul fast float %3297, %3293
  %3299 = fadd fast float %3298, %3296
  %3300 = fmul fast float %3299, %3293
  %3301 = fmul fast float %3291, 2.000000e+00
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = fmul fast float %3302, %3294
  %3304 = fadd fast float %3303, %3301
  %3305 = fmul fast float %3304, %3294
  %3306 = fmul fast float %3292, 2.000000e+00
  %3307 = fsub fast float 1.000000e+00, %3306
  %3308 = fmul fast float %3307, %3295
  %3309 = fadd fast float %3308, %3306
  %3310 = fmul fast float %3309, %3295
  %3311 = fmul fast float %3300, %3300
  %3312 = fmul fast float %3305, %3305
  %3313 = fmul fast float %3310, %3310
  br label %3330

; <label>:3314                                    ; preds = %3277
  %3315 = fmul fast float %435, %435
  %3316 = fmul fast float %439, %439
  %3317 = fmul fast float %443, %443
  %3318 = fadd fast float %3315, -1.000000e+00
  %3319 = fadd fast float %3316, -1.000000e+00
  %3320 = fadd fast float %3317, -1.000000e+00
  %3321 = fmul fast float %3166, %3318
  %3322 = fmul fast float %3166, %3319
  %3323 = fmul fast float %3166, %3320
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fadd fast float %3322, 1.000000e+00
  %3326 = fadd fast float %3323, 1.000000e+00
  %3327 = fmul fast float %3324, %3141
  %3328 = fmul fast float %3325, %3142
  %3329 = fmul fast float %3326, %3143
  br label %3330

; <label>:3330                                    ; preds = %3314, %3280, %3171, %3127
  %3331 = phi float [ %3276, %3171 ], [ %3152, %3280 ], [ %3152, %3314 ], [ 0x3FA23C0BE0000000, %3127 ]
  %3332 = phi float [ %3268, %3171 ], [ %3311, %3280 ], [ %3327, %3314 ], [ 1.000000e+00, %3127 ]
  %3333 = phi float [ %3269, %3171 ], [ %3312, %3280 ], [ %3328, %3314 ], [ 1.000000e+00, %3127 ]
  %3334 = phi float [ %3270, %3171 ], [ %3313, %3280 ], [ %3329, %3314 ], [ 1.000000e+00, %3127 ]
  %3335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.i32 %3335, 1
  %3337 = and i32 %3336, 1
  %3338 = icmp ne i32 %3337, 0
  %3339 = add i32 %55, 372
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = and i32 %3341, 32
  %3343 = icmp ne i32 %3342, 0
  %3344 = and i1 %3338, %3343
  %3345 = select i1 %3344, float 1.000000e+00, float %3332
  %3346 = select i1 %3344, float 0x3FD3333340000000, float %3333
  %3347 = select i1 %3344, float 0x3FD3333340000000, float %3334
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = and i32 %3349, 32
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3424, label %3352

; <label>:3352                                    ; preds = %3330
  %3353 = add i32 %55, 140
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = add i32 %55, 452
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = add i32 %3358, 0
  %3360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3360, %dx.types.Handle %102, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = extractvalue %dx.types.ResRet.f32 %3361, 3
  %3366 = and i32 %3355, 255
  %3367 = uitofp i32 %3366 to float
  %3368 = lshr i32 %3355, 8
  %3369 = and i32 %3368, 255
  %3370 = uitofp i32 %3369 to float
  %3371 = lshr i32 %3355, 16
  %3372 = and i32 %3371, 255
  %3373 = uitofp i32 %3372 to float
  %3374 = fmul fast float %3373, 0x3F70101000000000
  %3375 = fmul fast float %3362, %3367
  %3376 = fadd fast float %3375, %3370
  %3377 = fmul fast float %3376, 0x3F70101000000000
  %3378 = fadd fast float %3363, -5.000000e-01
  %3379 = fadd fast float %3365, -5.000000e-01
  %3380 = fmul fast float %3378, %3374
  %3381 = fmul fast float %3379, %3374
  %3382 = fadd fast float %3380, 5.000000e-01
  %3383 = fadd fast float %3381, 5.000000e-01
  %3384 = fmul fast float %3382, 2.000000e+00
  %3385 = fadd fast float %3384, -1.000000e+00
  %3386 = fmul fast float %3383, 2.000000e+00
  %3387 = fadd fast float %3386, -1.000000e+00
  %3388 = fadd fast float %3385, %3387
  %3389 = fmul fast float %3388, 5.000000e-01
  %3390 = fsub fast float %3385, %3387
  %3391 = fmul fast float %3390, 5.000000e-01
  %3392 = call float @dx.op.unary.f32(i32 6, float %3389)  ; FAbs(value)
  %3393 = fsub fast float 1.000000e+00, %3392
  %3394 = call float @dx.op.unary.f32(i32 6, float %3391)  ; FAbs(value)
  %3395 = fsub fast float %3393, %3394
  %3396 = call float @dx.op.dot3.f32(i32 55, float %3389, float %3391, float %3395, float %3389, float %3391, float %3395)  ; Dot3(ax,ay,az,bx,by,bz)
  %3397 = call float @dx.op.unary.f32(i32 25, float %3396)  ; Rsqrt(value)
  %3398 = fmul fast float %3389, %3397
  %3399 = fmul fast float %3391, %3397
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = and i32 %3401, 67108864
  %3403 = icmp eq i32 %3402, 0
  br i1 %3403, label %3420, label %3404

; <label>:3404                                    ; preds = %3352
  %3405 = add i32 %55, 328
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 65535
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 65535
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = lshr i32 %3407, 16
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = fsub fast float %3377, %3415
  %3417 = fmul fast float %3416, %3409
  %3418 = fadd fast float %3417, %3413
  %3419 = call float @dx.op.unary.f32(i32 7, float %3418)  ; Saturate(value)
  br label %3420

; <label>:3420                                    ; preds = %3404, %3352
  %3421 = phi float [ %3419, %3404 ], [ %3377, %3352 ]
  %3422 = call float @dx.op.dot2.f32(i32 54, float %3398, float %3399, float %2956, float %2957)  ; Dot2(ax,ay,bx,by)
  %3423 = call float @dx.op.dot2.f32(i32 54, float %3398, float %3399, float %2958, float %2959)  ; Dot2(ax,ay,bx,by)
  br label %3424

; <label>:3424                                    ; preds = %3420, %3330
  %3425 = phi float [ %3421, %3420 ], [ 0x3FD6666660000000, %3330 ]
  %3426 = phi float [ %3422, %3420 ], [ 0.000000e+00, %3330 ]
  %3427 = phi float [ %3423, %3420 ], [ 0.000000e+00, %3330 ]
  %3428 = phi float [ %3364, %3420 ], [ 1.000000e+00, %3330 ]
  %3429 = add i32 %55, 208
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = lshr i32 %3431, 22
  %3433 = shl nuw nsw i32 %3432, 5
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = and i32 %3436, 64
  %3438 = icmp eq i32 %3437, 0
  br i1 %3438, label %3472, label %3439

; <label>:3439                                    ; preds = %3424
  %3440 = add i32 %55, 468
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = add i32 %3442, 0
  %3444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 131072
  %3448 = icmp eq i32 %3447, 0
  %3449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3444, %dx.types.Handle %102, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.f32 %3449, 1
  %3452 = extractvalue %dx.types.ResRet.f32 %3449, 2
  %3453 = fmul fast float %3450, %423
  %3454 = fmul fast float %3451, %426
  %3455 = fmul fast float %3452, %429
  br i1 %3448, label %3462, label %3456

; <label>:3456                                    ; preds = %3439
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 0
  %3459 = fmul fast float %3458, %3453
  %3460 = fmul fast float %3458, %3454
  %3461 = fmul fast float %3458, %3455
  br label %3462

; <label>:3462                                    ; preds = %3456, %3439
  %3463 = phi float [ %3459, %3456 ], [ %3453, %3439 ]
  %3464 = phi float [ %3460, %3456 ], [ %3454, %3439 ]
  %3465 = phi float [ %3461, %3456 ], [ %3455, %3439 ]
  %3466 = fmul fast float %3463, %3434
  %3467 = select i1 %280, float %3466, float %3463
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3464, float %3465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = select i1 %280, float 0.000000e+00, float %3463
  %3470 = select i1 %280, float %3468, float %3464
  %3471 = select i1 %280, float 0.000000e+00, float %3465
  br label %3472

; <label>:3472                                    ; preds = %3462, %3424
  %3473 = phi float [ %3469, %3462 ], [ 0.000000e+00, %3424 ]
  %3474 = phi float [ %3470, %3462 ], [ 0.000000e+00, %3424 ]
  %3475 = phi float [ %3471, %3462 ], [ 0.000000e+00, %3424 ]
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = and i32 %3477, 1024
  %3479 = icmp eq i32 %3478, 0
  br i1 %3479, label %3510, label %3480

; <label>:3480                                    ; preds = %3472
  %3481 = add i32 %55, 200
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = fmul fast float %3485, 0x3F70101020000000
  %3487 = lshr i32 %3483, 8
  %3488 = and i32 %3487, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = fmul fast float %3489, 0x3F70101020000000
  %3491 = lshr i32 %3483, 16
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101020000000
  %3495 = fmul fast float %3486, %3486
  %3496 = fmul fast float %3490, %3490
  %3497 = fmul fast float %3494, %3494
  %3498 = add i32 %55, 532
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = add i32 %3500, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3502, %dx.types.Handle %103, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3506 = extractvalue %dx.types.ResRet.f32 %3503, 2
  %3507 = fmul fast float %3495, %3504
  %3508 = fmul fast float %3496, %3505
  %3509 = fmul fast float %3497, %3506
  br label %3510

; <label>:3510                                    ; preds = %3480, %3472
  %3511 = phi float [ %3507, %3480 ], [ 0.000000e+00, %3472 ]
  %3512 = phi float [ %3508, %3480 ], [ 0.000000e+00, %3472 ]
  %3513 = phi float [ %3509, %3480 ], [ 0.000000e+00, %3472 ]
  %3514 = fcmp fast ogt float %3511, 0.000000e+00
  %3515 = fcmp fast ogt float %3512, 0.000000e+00
  %3516 = fcmp fast ogt float %3513, 0.000000e+00
  %3517 = call float @dx.op.unary.f32(i32 23, float %3511)  ; Log(value)
  %3518 = call float @dx.op.unary.f32(i32 23, float %3512)  ; Log(value)
  %3519 = call float @dx.op.unary.f32(i32 23, float %3513)  ; Log(value)
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = lshr i32 %3521, 7
  %3523 = and i32 %3522, 32752
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = fmul fast float %3517, 0xBFE62E4300000000
  %3526 = fmul fast float %3525, %3524
  %3527 = fmul fast float %3518, 0xBFE62E4300000000
  %3528 = fmul fast float %3527, %3524
  %3529 = fmul fast float %3519, 0xBFE62E4300000000
  %3530 = fmul fast float %3529, %3524
  %3531 = select i1 %3514, float %3526, float 1.270000e+02
  %3532 = select i1 %3515, float %3528, float 1.270000e+02
  %3533 = select i1 %3516, float %3530, float 1.270000e+02
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = and i32 %3535, 10240
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %3558, label %3538

; <label>:3538                                    ; preds = %3510
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = and i32 %3540, 2048
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3558, label %3543

; <label>:3543                                    ; preds = %3538
  %3544 = add i32 %55, 548
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = add i32 %3546, 0
  %3548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3548, %dx.types.Handle %103, float %3052, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 3
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = shl i32 %3552, 4
  %3554 = and i32 %3553, 32752
  %3555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3554)  ; LegacyF16ToF32(value)
  %3556 = fmul fast float %3555, %3550
  %3557 = call float @dx.op.binary.f32(i32 35, float %3556, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3558

; <label>:3558                                    ; preds = %3543, %3538, %3510
  %3559 = phi float [ %3557, %3543 ], [ 0x3F70101020000000, %3538 ], [ 0x3F70101020000000, %3510 ]
  %3560 = add i32 %55, 144
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = and i32 %3562, 255
  %3564 = uitofp i32 %3563 to float
  %3565 = lshr i32 %3562, 8
  %3566 = and i32 %3565, 255
  %3567 = uitofp i32 %3566 to float
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3345, float %3346, float %3347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = fmul fast float %3567, %3568
  %3570 = fadd fast float %3569, %3564
  %3571 = fmul fast float %3570, 0x3F70101020000000
  %3572 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  br i1 %2944, label %3573, label %3608

; <label>:3573                                    ; preds = %3558
  %3574 = fmul fast float %3559, 2.000000e+00
  %3575 = fcmp fast olt float %3531, 1.270000e+02
  %3576 = fcmp fast olt float %3532, 1.270000e+02
  %3577 = fcmp fast olt float %3533, 1.270000e+02
  %3578 = fmul fast float %3531, 0xBFF7154760000000
  %3579 = fmul fast float %3578, %3574
  %3580 = fmul fast float %3532, 0xBFF7154760000000
  %3581 = fmul fast float %3580, %3574
  %3582 = fmul fast float %3533, 0xBFF7154760000000
  %3583 = fmul fast float %3582, %3574
  %3584 = call float @dx.op.unary.f32(i32 21, float %3579)  ; Exp(value)
  %3585 = call float @dx.op.unary.f32(i32 21, float %3581)  ; Exp(value)
  %3586 = call float @dx.op.unary.f32(i32 21, float %3583)  ; Exp(value)
  %3587 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3588 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3589 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  %3590 = fadd fast float %3587, -1.000000e+00
  %3591 = select i1 %3575, float %3590, float -1.000000e+00
  %3592 = fadd fast float %3588, -1.000000e+00
  %3593 = select i1 %3576, float %3592, float -1.000000e+00
  %3594 = fadd fast float %3589, -1.000000e+00
  %3595 = select i1 %3577, float %3594, float -1.000000e+00
  %3596 = fmul fast float %3591, %3125
  %3597 = fmul fast float %3593, %3125
  %3598 = fmul fast float %3595, %3125
  %3599 = fadd fast float %3596, 1.000000e+00
  %3600 = fadd fast float %3597, 1.000000e+00
  %3601 = fadd fast float %3598, 1.000000e+00
  %3602 = fmul fast float %3599, %2929
  %3603 = fmul fast float %3600, %2930
  %3604 = fmul fast float %3601, %2931
  %3605 = fmul fast float %3599, %2932
  %3606 = fmul fast float %3600, %2933
  %3607 = fmul fast float %3601, %2934
  br label %3608

; <label>:3608                                    ; preds = %3573, %3558
  %3609 = phi float [ %3602, %3573 ], [ %2929, %3558 ]
  %3610 = phi float [ %3603, %3573 ], [ %2930, %3558 ]
  %3611 = phi float [ %3604, %3573 ], [ %2931, %3558 ]
  %3612 = phi float [ %3605, %3573 ], [ %2932, %3558 ]
  %3613 = phi float [ %3606, %3573 ], [ %2933, %3558 ]
  %3614 = phi float [ %3607, %3573 ], [ %2934, %3558 ]
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = and i32 %3616, 3
  %3618 = icmp eq i32 %3617, 3
  br i1 %3618, label %3697, label %3619

; <label>:3619                                    ; preds = %3608
  %3620 = and i32 %3616, 16
  %3621 = icmp ne i32 %3620, 0
  %3622 = select i1 %3621, float %3125, float 0.000000e+00
  %3623 = icmp eq i32 %3617, 0
  br i1 %3623, label %3624, label %3652

; <label>:3624                                    ; preds = %3619
  %3625 = and i32 %3616, 64
  %3626 = icmp ne i32 %3625, 0
  %3627 = select i1 %3626, float %3125, float 0.000000e+00
  %3628 = fsub fast float %3345, %3609
  %3629 = fsub fast float %3346, %3610
  %3630 = fsub fast float %3347, %3611
  %3631 = fmul fast float %3622, %3628
  %3632 = fmul fast float %3622, %3629
  %3633 = fmul fast float %3622, %3630
  %3634 = fadd fast float %3631, %3609
  %3635 = fadd fast float %3632, %3610
  %3636 = fadd fast float %3633, %3611
  %3637 = fsub fast float %3331, %2938
  %3638 = fmul fast float %3622, %3637
  %3639 = fadd fast float %3638, %2938
  %3640 = fsub fast float %3473, %3612
  %3641 = fsub fast float %3474, %3613
  %3642 = fsub fast float %3475, %3614
  %3643 = fmul fast float %3627, %3640
  %3644 = fmul fast float %3627, %3641
  %3645 = fmul fast float %3627, %3642
  %3646 = fadd fast float %3643, %3612
  %3647 = fadd fast float %3644, %3613
  %3648 = fadd fast float %3645, %3614
  %3649 = fsub fast float %3572, %2942
  %3650 = fmul fast float %3622, %3649
  %3651 = fadd fast float %3650, %2942
  br label %3697

; <label>:3652                                    ; preds = %3619
  %3653 = icmp eq i32 %3617, 1
  br i1 %3653, label %3654, label %3667

; <label>:3654                                    ; preds = %3652
  %3655 = fadd fast float %3345, -1.000000e+00
  %3656 = fadd fast float %3346, -1.000000e+00
  %3657 = fadd fast float %3347, -1.000000e+00
  %3658 = fmul fast float %3622, %3655
  %3659 = fmul fast float %3622, %3656
  %3660 = fmul fast float %3622, %3657
  %3661 = fadd fast float %3658, 1.000000e+00
  %3662 = fadd fast float %3659, 1.000000e+00
  %3663 = fadd fast float %3660, 1.000000e+00
  %3664 = fmul fast float %3661, %3609
  %3665 = fmul fast float %3662, %3610
  %3666 = fmul fast float %3663, %3611
  br label %3697

; <label>:3667                                    ; preds = %3652
  %3668 = icmp eq i32 %3617, 2
  br i1 %3668, label %3669, label %3697

; <label>:3669                                    ; preds = %3667
  %3670 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3671 = call float @dx.op.unary.f32(i32 24, float %3346)  ; Sqrt(value)
  %3672 = call float @dx.op.unary.f32(i32 24, float %3347)  ; Sqrt(value)
  %3673 = fadd fast float %3670, -5.000000e-01
  %3674 = fadd fast float %3671, -5.000000e-01
  %3675 = fadd fast float %3672, -5.000000e-01
  %3676 = fmul fast float %3673, %3622
  %3677 = fmul fast float %3674, %3622
  %3678 = fmul fast float %3675, %3622
  %3679 = fadd fast float %3676, 5.000000e-01
  %3680 = fadd fast float %3677, 5.000000e-01
  %3681 = fadd fast float %3678, 5.000000e-01
  %3682 = fmul fast float %3679, 2.000000e+00
  %3683 = fsub fast float 1.000000e+00, %3682
  %3684 = fmul fast float %3683, %3609
  %3685 = fadd fast float %3684, %3682
  %3686 = fmul fast float %3685, %3609
  %3687 = fmul fast float %3680, 2.000000e+00
  %3688 = fsub fast float 1.000000e+00, %3687
  %3689 = fmul fast float %3688, %3610
  %3690 = fadd fast float %3689, %3687
  %3691 = fmul fast float %3690, %3610
  %3692 = fmul fast float %3681, 2.000000e+00
  %3693 = fsub fast float 1.000000e+00, %3692
  %3694 = fmul fast float %3693, %3611
  %3695 = fadd fast float %3694, %3692
  %3696 = fmul fast float %3695, %3611
  br label %3697

; <label>:3697                                    ; preds = %3669, %3667, %3654, %3624, %3608
  %3698 = phi float [ %3609, %3608 ], [ %3686, %3669 ], [ %3609, %3667 ], [ %3664, %3654 ], [ %3634, %3624 ]
  %3699 = phi float [ %3610, %3608 ], [ %3691, %3669 ], [ %3610, %3667 ], [ %3665, %3654 ], [ %3635, %3624 ]
  %3700 = phi float [ %3611, %3608 ], [ %3696, %3669 ], [ %3611, %3667 ], [ %3666, %3654 ], [ %3636, %3624 ]
  %3701 = phi float [ %3612, %3608 ], [ %3612, %3669 ], [ %3612, %3667 ], [ %3612, %3654 ], [ %3646, %3624 ]
  %3702 = phi float [ %3613, %3608 ], [ %3613, %3669 ], [ %3613, %3667 ], [ %3613, %3654 ], [ %3647, %3624 ]
  %3703 = phi float [ %3614, %3608 ], [ %3614, %3669 ], [ %3614, %3667 ], [ %3614, %3654 ], [ %3648, %3624 ]
  %3704 = phi float [ %2938, %3608 ], [ %2938, %3669 ], [ %2938, %3667 ], [ %2938, %3654 ], [ %3639, %3624 ]
  %3705 = phi float [ %2942, %3608 ], [ %2942, %3669 ], [ %2942, %3667 ], [ %2942, %3654 ], [ %3651, %3624 ]
  %3706 = and i32 %3616, 12
  %3707 = icmp eq i32 %3706, 12
  br i1 %3707, label %3814, label %3708

; <label>:3708                                    ; preds = %3697
  %3709 = and i32 %3616, 2097184
  %3710 = icmp eq i32 %3709, 2097184
  %3711 = select i1 %3710, float %3125, float 0.000000e+00
  %3712 = and i32 %3616, 4194336
  %3713 = icmp eq i32 %3712, 4194336
  %3714 = select i1 %3713, float %3125, float 0.000000e+00
  %3715 = and i32 %3616, 8388640
  %3716 = icmp eq i32 %3715, 8388640
  %3717 = select i1 %3716, float %3125, float 0.000000e+00
  %3718 = and i32 %3616, 1024
  %3719 = icmp ne i32 %3718, 0
  %3720 = select i1 %3719, float %3125, float 0.000000e+00
  %3721 = and i32 %3616, 2048
  %3722 = icmp ne i32 %3721, 0
  %3723 = select i1 %3722, float %3125, float 0.000000e+00
  %3724 = icmp eq i32 %3706, 0
  br i1 %3724, label %3725, label %3750

; <label>:3725                                    ; preds = %3708
  %3726 = fsub fast float %3426, %2927
  %3727 = fsub fast float %3427, %2928
  %3728 = fmul fast float %3711, %3726
  %3729 = fmul fast float %3711, %3727
  %3730 = fadd fast float %3728, %2927
  %3731 = fadd fast float %3729, %2928
  %3732 = fsub fast float %3428, %2940
  %3733 = fmul fast float %3714, %3732
  %3734 = fadd fast float %3733, %2940
  %3735 = fsub fast float %3425, %2939
  %3736 = fmul fast float %3717, %3735
  %3737 = fadd fast float %3736, %2939
  %3738 = fsub fast float %3531, %2935
  %3739 = fsub fast float %3532, %2936
  %3740 = fsub fast float %3533, %2937
  %3741 = fmul fast float %3720, %3738
  %3742 = fmul fast float %3720, %3739
  %3743 = fmul fast float %3720, %3740
  %3744 = fadd fast float %3741, %2935
  %3745 = fadd fast float %3742, %2936
  %3746 = fadd fast float %3743, %2937
  %3747 = fsub fast float %3559, %2941
  %3748 = fmul fast float %3723, %3747
  %3749 = fadd fast float %3748, %2941
  br label %3814

; <label>:3750                                    ; preds = %3708
  %3751 = icmp eq i32 %3706, 4
  br i1 %3751, label %3752, label %3792

; <label>:3752                                    ; preds = %3750
  %3753 = fmul fast float %3711, %3426
  %3754 = fmul fast float %3711, %3427
  %3755 = fadd fast float %3753, %2927
  %3756 = fadd fast float %3754, %2928
  %3757 = call float @dx.op.binary.f32(i32 36, float %2940, float %3428)  ; FMin(a,b)
  %3758 = fsub fast float %3757, %2940
  %3759 = fmul fast float %3758, %3714
  %3760 = fadd fast float %3759, %2940
  %3761 = fadd fast float %3425, %2939
  %3762 = fmul fast float %3761, 0x3FF337FAE0000000
  %3763 = fmul fast float %2939, %2939
  %3764 = fmul fast float %3425, %3425
  %3765 = fadd fast float %3764, %3763
  %3766 = fmul fast float %3765, 0x3FE5152B00000000
  %3767 = fmul fast float %2939, 0xBFCC1F85E0000000
  %3768 = fmul fast float %3767, %3425
  %3769 = fadd fast float %3768, 0xBFE1363700000000
  %3770 = fadd fast float %3769, %3762
  %3771 = fsub fast float %3770, %3766
  %3772 = fmul fast float %3761, 0x3FBA6F0D00000000
  %3773 = fmul fast float %3765, 0x3FD0432880000000
  %3774 = fmul fast float %2939, 0xBFEF110800000000
  %3775 = fmul fast float %3774, %3425
  %3776 = fadd fast float %3775, 1.000000e+00
  %3777 = fsub fast float %3776, %3772
  %3778 = fadd fast float %3777, %3773
  %3779 = fdiv fast float %3771, %3778
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fsub fast float %3780, %2939
  %3782 = fmul fast float %3781, %3717
  %3783 = fadd fast float %3782, %2939
  %3784 = fmul fast float %3720, %3531
  %3785 = fmul fast float %3720, %3532
  %3786 = fmul fast float %3720, %3533
  %3787 = fadd fast float %3784, %2935
  %3788 = fadd fast float %3785, %2936
  %3789 = fadd fast float %3786, %2937
  %3790 = fmul fast float %3723, %3559
  %3791 = fadd fast float %3790, %2941
  br label %3814

; <label>:3792                                    ; preds = %3750
  %3793 = icmp eq i32 %3706, 8
  br i1 %3793, label %3794, label %3814

; <label>:3794                                    ; preds = %3792
  %3795 = fmul fast float %3711, %3426
  %3796 = fmul fast float %3711, %3427
  %3797 = fadd fast float %3795, %2927
  %3798 = fadd fast float %3796, %2928
  %3799 = call float @dx.op.binary.f32(i32 36, float %2940, float %3428)  ; FMin(a,b)
  %3800 = fsub fast float %3799, %2940
  %3801 = fmul fast float %3800, %3714
  %3802 = fadd fast float %3801, %2940
  %3803 = fsub fast float %3425, %2939
  %3804 = fmul fast float %3717, %3803
  %3805 = fadd fast float %3804, %2939
  %3806 = fmul fast float %3720, %3531
  %3807 = fmul fast float %3720, %3532
  %3808 = fmul fast float %3720, %3533
  %3809 = fadd fast float %3806, %2935
  %3810 = fadd fast float %3807, %2936
  %3811 = fadd fast float %3808, %2937
  %3812 = fmul fast float %3723, %3559
  %3813 = fadd fast float %3812, %2941
  br label %3814

; <label>:3814                                    ; preds = %3794, %3792, %3752, %3725, %3697, %3124, %2943, %2926
  %3815 = phi float [ %2927, %3697 ], [ %2927, %3124 ], [ %2927, %2926 ], [ %2927, %2943 ], [ %3730, %3725 ], [ %3755, %3752 ], [ %2927, %3792 ], [ %3797, %3794 ]
  %3816 = phi float [ %2928, %3697 ], [ %2928, %3124 ], [ %2928, %2926 ], [ %2928, %2943 ], [ %3731, %3725 ], [ %3756, %3752 ], [ %2928, %3792 ], [ %3798, %3794 ]
  %3817 = phi float [ %3698, %3697 ], [ %2929, %3124 ], [ %2929, %2926 ], [ %2929, %2943 ], [ %3698, %3725 ], [ %3698, %3752 ], [ %3698, %3792 ], [ %3698, %3794 ]
  %3818 = phi float [ %3699, %3697 ], [ %2930, %3124 ], [ %2930, %2926 ], [ %2930, %2943 ], [ %3699, %3725 ], [ %3699, %3752 ], [ %3699, %3792 ], [ %3699, %3794 ]
  %3819 = phi float [ %3700, %3697 ], [ %2931, %3124 ], [ %2931, %2926 ], [ %2931, %2943 ], [ %3700, %3725 ], [ %3700, %3752 ], [ %3700, %3792 ], [ %3700, %3794 ]
  %3820 = phi float [ %3701, %3697 ], [ %2932, %3124 ], [ %2932, %2926 ], [ %2932, %2943 ], [ %3701, %3725 ], [ %3701, %3752 ], [ %3701, %3792 ], [ %3701, %3794 ]
  %3821 = phi float [ %3702, %3697 ], [ %2933, %3124 ], [ %2933, %2926 ], [ %2933, %2943 ], [ %3702, %3725 ], [ %3702, %3752 ], [ %3702, %3792 ], [ %3702, %3794 ]
  %3822 = phi float [ %3703, %3697 ], [ %2934, %3124 ], [ %2934, %2926 ], [ %2934, %2943 ], [ %3703, %3725 ], [ %3703, %3752 ], [ %3703, %3792 ], [ %3703, %3794 ]
  %3823 = phi float [ %2935, %3697 ], [ %2935, %3124 ], [ %2935, %2926 ], [ %2935, %2943 ], [ %3744, %3725 ], [ %3787, %3752 ], [ %2935, %3792 ], [ %3809, %3794 ]
  %3824 = phi float [ %2936, %3697 ], [ %2936, %3124 ], [ %2936, %2926 ], [ %2936, %2943 ], [ %3745, %3725 ], [ %3788, %3752 ], [ %2936, %3792 ], [ %3810, %3794 ]
  %3825 = phi float [ %2937, %3697 ], [ %2937, %3124 ], [ %2937, %2926 ], [ %2937, %2943 ], [ %3746, %3725 ], [ %3789, %3752 ], [ %2937, %3792 ], [ %3811, %3794 ]
  %3826 = phi float [ %3704, %3697 ], [ %2938, %3124 ], [ %2938, %2926 ], [ %2938, %2943 ], [ %3704, %3725 ], [ %3704, %3752 ], [ %3704, %3792 ], [ %3704, %3794 ]
  %3827 = phi float [ %2939, %3697 ], [ %2939, %3124 ], [ %2939, %2926 ], [ %2939, %2943 ], [ %3737, %3725 ], [ %3783, %3752 ], [ %2939, %3792 ], [ %3805, %3794 ]
  %3828 = phi float [ %2940, %3697 ], [ %2940, %3124 ], [ %2940, %2926 ], [ %2940, %2943 ], [ %3734, %3725 ], [ %3760, %3752 ], [ %2940, %3792 ], [ %3802, %3794 ]
  %3829 = phi float [ %2941, %3697 ], [ %2941, %3124 ], [ %2941, %2926 ], [ %2941, %2943 ], [ %3749, %3725 ], [ %3791, %3752 ], [ %2941, %3792 ], [ %3813, %3794 ]
  %3830 = phi float [ %3705, %3697 ], [ %2942, %3124 ], [ %2942, %2926 ], [ %2942, %2943 ], [ %3705, %3725 ], [ %3705, %3752 ], [ %3705, %3792 ], [ %3705, %3794 ]
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3835 = and i32 %199, 65535
  %3836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3835)  ; LegacyF16ToF32(value)
  %3837 = lshr i32 %199, 16
  %3838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3837)  ; LegacyF16ToF32(value)
  %3839 = and i32 %200, 65535
  %3840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3839)  ; LegacyF16ToF32(value)
  %3841 = fmul fast float %3836, %3817
  %3842 = fmul fast float %3838, %3818
  %3843 = fmul fast float %3840, %3819
  %3844 = shl i32 %201, 4
  %3845 = and i32 %3844, 32752
  %3846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3845)  ; LegacyF16ToF32(value)
  %3847 = lshr i32 %201, 7
  %3848 = and i32 %3847, 32752
  %3849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3848)  ; LegacyF16ToF32(value)
  %3850 = lshr i32 %201, 22
  %3851 = shl nuw nsw i32 %3850, 5
  %3852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3851)  ; LegacyF16ToF32(value)
  %3853 = and i32 %202, 65535
  %3854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3853)  ; LegacyF16ToF32(value)
  %3855 = fmul fast float %3834, %3820
  %3856 = fmul fast float %3855, %3846
  %3857 = fmul fast float %3856, %3854
  %3858 = fmul fast float %3834, %3821
  %3859 = fmul fast float %3858, %3849
  %3860 = fmul fast float %3859, %3854
  %3861 = fmul fast float %3834, %3822
  %3862 = fmul fast float %3861, %3852
  %3863 = fmul fast float %3862, %3854
  %3864 = call float @dx.op.dot2.f32(i32 54, float %3815, float %3816, float %3815, float %3816)  ; Dot2(ax,ay,bx,by)
  %3865 = fmul fast float %3864, 0x3FE3333340000000
  %3866 = fsub fast float 1.000000e+00, %3865
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3866, float %3815, float %3816, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call float @dx.op.unary.f32(i32 25, float %3867)  ; Rsqrt(value)
  %3869 = fmul fast float %3868, %3815
  %3870 = fmul fast float %3868, %3816
  %3871 = fmul fast float %3866, %3868
  %3872 = fmul fast float %3871, %113
  %3873 = fmul fast float %3871, %114
  %3874 = fmul fast float %3871, %115
  %3875 = fmul fast float %3869, %81
  %3876 = fmul fast float %3869, %82
  %3877 = fmul fast float %3869, %83
  %3878 = fadd fast float %3872, %3875
  %3879 = fadd fast float %3873, %3876
  %3880 = fadd fast float %3874, %3877
  %3881 = fmul fast float %125, %3870
  %3882 = fmul fast float %126, %3870
  %3883 = fmul fast float %127, %3870
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = fadd fast float %3880, %3883
  %3887 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %3888 = call float @dx.op.unary.f32(i32 25, float %3887)  ; Rsqrt(value)
  %3889 = fmul fast float %3884, %3888
  %3890 = fmul fast float %3885, %3888
  %3891 = fmul fast float %3886, %3888
  %3892 = icmp eq i32 %57, 65535
  br i1 %3892, label %4442, label %3893

; <label>:3893                                    ; preds = %3814
  %3894 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3895 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3896 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3897 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3898 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3899 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3900 = fadd fast float %3894, %58
  %3901 = fadd fast float %3895, %59
  %3902 = fadd fast float %3896, %60
  %3903 = fadd fast float %3897, %58
  %3904 = fadd fast float %3898, %59
  %3905 = fadd fast float %3899, %60
  %3906 = mul i32 %57, 48
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3907, 2
  %3911 = add i32 %3906, 16
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = add i32 %3906, 32
  %3917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = bitcast float %3921 to i32
  %3923 = fmul fast float %3908, %58
  %3924 = fmul fast float %3909, %59
  %3925 = fmul fast float %3910, %60
  %3926 = fsub fast float %3923, %3913
  %3927 = fsub fast float %3924, %3914
  %3928 = fsub fast float %3925, %3915
  %3929 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3930 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3931 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3932 = fmul fast float %3929, %3918
  %3933 = fmul fast float %3930, %3919
  %3934 = fmul fast float %3931, %3920
  %3935 = fadd fast float %3918, -1.000000e+00
  %3936 = fadd fast float %3919, -1.000000e+00
  %3937 = fadd fast float %3920, -1.000000e+00
  %3938 = call float @dx.op.unary.f32(i32 27, float %3932)  ; Round_ni(value)
  %3939 = call float @dx.op.unary.f32(i32 27, float %3933)  ; Round_ni(value)
  %3940 = call float @dx.op.unary.f32(i32 27, float %3934)  ; Round_ni(value)
  %3941 = call float @dx.op.binary.f32(i32 36, float %3938, float %3935)  ; FMin(a,b)
  %3942 = call float @dx.op.binary.f32(i32 36, float %3939, float %3936)  ; FMin(a,b)
  %3943 = call float @dx.op.binary.f32(i32 36, float %3940, float %3937)  ; FMin(a,b)
  %3944 = fmul fast float %3943, %3919
  %3945 = fadd fast float %3944, %3942
  %3946 = fmul fast float %3945, %3918
  %3947 = fadd fast float %3946, %3941
  %3948 = fptosi float %3947 to i32
  %3949 = add nsw i32 %3948, %3922
  %3950 = shl nsw i32 %3949, 2
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = lshr i32 %3952, 16
  %3954 = icmp eq i32 %3953, 0
  br i1 %3954, label %4407, label %3955

; <label>:3955                                    ; preds = %3893
  br label %3956

; <label>:3956                                    ; preds = %4081, %3955
  %3957 = phi i32 [ %3983, %4081 ], [ %3953, %3955 ]
  %3958 = phi float [ %4082, %4081 ], [ 0.000000e+00, %3955 ]
  %3959 = phi float [ %4083, %4081 ], [ %1162, %3955 ]
  %3960 = phi float [ %4084, %4081 ], [ %3832, %3955 ]
  %3961 = phi float [ %4085, %4081 ], [ %3830, %3955 ]
  %3962 = phi float [ %4086, %4081 ], [ %3823, %3955 ]
  %3963 = phi float [ %4087, %4081 ], [ %3824, %3955 ]
  %3964 = phi float [ %4088, %4081 ], [ %3825, %3955 ]
  %3965 = phi float [ %4089, %4081 ], [ 0.000000e+00, %3955 ]
  %3966 = phi float [ %4090, %4081 ], [ 0.000000e+00, %3955 ]
  %3967 = phi float [ %4091, %4081 ], [ %3857, %3955 ]
  %3968 = phi float [ %4092, %4081 ], [ %3860, %3955 ]
  %3969 = phi float [ %4093, %4081 ], [ %3863, %3955 ]
  %3970 = phi float [ %4094, %4081 ], [ %3889, %3955 ]
  %3971 = phi float [ %4095, %4081 ], [ %3890, %3955 ]
  %3972 = phi float [ %4096, %4081 ], [ %3891, %3955 ]
  %3973 = phi float [ %4097, %4081 ], [ %3828, %3955 ]
  %3974 = phi float [ %4098, %4081 ], [ %3827, %3955 ]
  %3975 = phi float [ %4099, %4081 ], [ 0.000000e+00, %3955 ]
  %3976 = phi float [ %4100, %4081 ], [ %3826, %3955 ]
  %3977 = phi float [ %4101, %4081 ], [ %3841, %3955 ]
  %3978 = phi float [ %4102, %4081 ], [ %3842, %3955 ]
  %3979 = phi float [ %4103, %4081 ], [ %3843, %3955 ]
  %3980 = shl nuw nsw i32 %3957, 2
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = lshr i32 %3982, 16
  %3984 = shl i32 %3982, 8
  %3985 = and i32 %3984, 16776960
  %3986 = or i32 %3985, 48
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = or i32 %3985, 64
  %3992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.i32 %3992, 0
  %3994 = extractvalue %dx.types.ResRet.i32 %3992, 1
  %3995 = or i32 %3985, 80
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 3
  %3999 = or i32 %3985, 96
  %4000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.f32 %4000, 1
  %4003 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4004 = extractvalue %dx.types.ResRet.f32 %4000, 3
  %4005 = or i32 %3985, 112
  %4006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4008 = or i32 %3985, 128
  %4009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = extractvalue %dx.types.ResRet.f32 %4009, 3
  %4014 = or i32 %3985, 144
  %4015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = extractvalue %dx.types.ResRet.f32 %4015, 3
  %4020 = or i32 %3985, 160
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4026 = or i32 %3985, 192
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = or i32 %3985, 208
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = or i32 %3985, 248
  %4033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.ResRet.f32 %4033, 1
  %4036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = extractvalue %dx.types.ResRet.f32 %4036, 3
  %4041 = call float @dx.op.dot4.f32(i32 56, float %4037, float %4038, float %4039, float %4040, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4042 = or i32 %3985, 16
  %4043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4042, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = extractvalue %dx.types.ResRet.f32 %4043, 3
  %4048 = call float @dx.op.dot4.f32(i32 56, float %4044, float %4045, float %4046, float %4047, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4049 = or i32 %3985, 32
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = extractvalue %dx.types.ResRet.f32 %4050, 3
  %4055 = call float @dx.op.dot4.f32(i32 56, float %4051, float %4052, float %4053, float %4054, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4056 = call float @dx.op.unary.f32(i32 27, float %4041)  ; Round_ni(value)
  %4057 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4058 = call float @dx.op.unary.f32(i32 27, float %4048)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4060 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4061 = call float @dx.op.unary.f32(i32 27, float %4060)  ; Round_ni(value)
  %4062 = fadd fast float %4059, %4057
  %4063 = fadd fast float %4062, %4061
  %4064 = fcmp fast oeq float %4063, 0.000000e+00
  %4065 = call float @dx.op.dot4.f32(i32 56, float %4037, float %4038, float %4039, float %4040, float %3900, float %3901, float %3902, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4066 = call float @dx.op.dot4.f32(i32 56, float %4044, float %4045, float %4046, float %4047, float %3900, float %3901, float %3902, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4067 = call float @dx.op.dot4.f32(i32 56, float %4037, float %4038, float %4039, float %4040, float %3903, float %3904, float %3905, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4068 = call float @dx.op.dot4.f32(i32 56, float %4044, float %4045, float %4046, float %4047, float %3903, float %3904, float %3905, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4069 = fsub fast float %4065, %4041
  %4070 = fsub fast float %4067, %4041
  %4071 = fsub fast float %4066, %4048
  %4072 = fsub fast float %4068, %4048
  %4073 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3989, float %3990, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4076 = fadd fast float %4075, %4073
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4079 = fcmp fast ogt float %4077, %4078
  %4080 = and i1 %4064, %4079
  br i1 %4080, label %4105, label %4081

; <label>:4081                                    ; preds = %4393, %4188, %4105, %3956
  %4082 = phi float [ %3958, %4105 ], [ %4191, %4188 ], [ %4191, %4393 ], [ %3958, %3956 ]
  %4083 = phi float [ %3959, %4105 ], [ %3959, %4188 ], [ %4369, %4393 ], [ %3959, %3956 ]
  %4084 = phi float [ %3960, %4105 ], [ %3960, %4188 ], [ %4368, %4393 ], [ %3960, %3956 ]
  %4085 = phi float [ %3961, %4105 ], [ %3961, %4188 ], [ %4366, %4393 ], [ %3961, %3956 ]
  %4086 = phi float [ %3962, %4105 ], [ %3962, %4188 ], [ %4344, %4393 ], [ %3962, %3956 ]
  %4087 = phi float [ %3963, %4105 ], [ %3963, %4188 ], [ %4345, %4393 ], [ %3963, %3956 ]
  %4088 = phi float [ %3964, %4105 ], [ %3964, %4188 ], [ %4346, %4393 ], [ %3964, %3956 ]
  %4089 = phi float [ %3965, %4105 ], [ %3965, %4188 ], [ %4315, %4393 ], [ %3965, %3956 ]
  %4090 = phi float [ %3966, %4105 ], [ %3966, %4188 ], [ %4313, %4393 ], [ %3966, %3956 ]
  %4091 = phi float [ %3967, %4105 ], [ %3967, %4188 ], [ %4403, %4393 ], [ %3967, %3956 ]
  %4092 = phi float [ %3968, %4105 ], [ %3968, %4188 ], [ %4404, %4393 ], [ %3968, %3956 ]
  %4093 = phi float [ %3969, %4105 ], [ %3969, %4188 ], [ %4405, %4393 ], [ %3969, %3956 ]
  %4094 = phi float [ %3970, %4105 ], [ %3970, %4188 ], [ %4294, %4393 ], [ %3970, %3956 ]
  %4095 = phi float [ %3971, %4105 ], [ %3971, %4188 ], [ %4295, %4393 ], [ %3971, %3956 ]
  %4096 = phi float [ %3972, %4105 ], [ %3972, %4188 ], [ %4296, %4393 ], [ %3972, %3956 ]
  %4097 = phi float [ %3973, %4105 ], [ %3973, %4188 ], [ %4324, %4393 ], [ %3973, %3956 ]
  %4098 = phi float [ %3974, %4105 ], [ %3974, %4188 ], [ %4321, %4393 ], [ %3974, %3956 ]
  %4099 = phi float [ %3975, %4105 ], [ %3975, %4188 ], [ %4318, %4393 ], [ %3975, %3956 ]
  %4100 = phi float [ %3976, %4105 ], [ %3976, %4188 ], [ %4311, %4393 ], [ %3976, %3956 ]
  %4101 = phi float [ %3977, %4105 ], [ %3977, %4188 ], [ %4306, %4393 ], [ %3977, %3956 ]
  %4102 = phi float [ %3978, %4105 ], [ %3978, %4188 ], [ %4307, %4393 ], [ %3978, %3956 ]
  %4103 = phi float [ %3979, %4105 ], [ %3979, %4188 ], [ %4308, %4393 ], [ %3979, %3956 ]
  %4104 = icmp eq i32 %3983, 0
  br i1 %4104, label %4406, label %3956

; <label>:4105                                    ; preds = %3956
  %4106 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %4107 = extractvalue %dx.types.ResRet.f32 %4006, 3
  %4108 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4110 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %4111 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %4112 = extractvalue %dx.types.ResRet.i32 %3992, 3
  %4113 = extractvalue %dx.types.ResRet.i32 %3992, 2
  %4114 = bitcast float %4106 to i32
  %4115 = add i32 %4112, 0
  %4116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4115, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4116, %dx.types.Handle %4117, float %4041, float %4048, float undef, float undef, i32 0, i32 0, i32 undef, float %4069, float %4071, float undef, float %4070, float %4072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = fmul fast float %4119, %4111
  %4121 = fadd fast float %4120, %4110
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = fmul fast float %4041, %4001
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4048, float %4123)  ; FMad(a,b,c)
  %4125 = fadd fast float %4124, %4109
  %4126 = fmul fast float %4041, %4003
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4048, float %4126)  ; FMad(a,b,c)
  %4128 = fadd fast float %4127, %4108
  %4129 = fmul fast float %4069, %4001
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4071, float %4129)  ; FMad(a,b,c)
  %4131 = fmul fast float %4069, %4003
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4071, float %4131)  ; FMad(a,b,c)
  %4133 = fmul fast float %4070, %4001
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4072, float %4133)  ; FMad(a,b,c)
  %4135 = fmul fast float %4070, %4003
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4072, float %4135)  ; FMad(a,b,c)
  %4137 = add i32 %4113, 0
  %4138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4137, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4138, %dx.types.Handle %4117, float %4125, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4130, float %4132, float undef, float %4134, float %4136, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = and i32 %4114, 1024
  %4142 = icmp ne i32 %4141, 0
  %4143 = fcmp fast ogt float %4140, 0x3FE0101020000000
  %4144 = uitofp i1 %4143 to float
  %4145 = select i1 %4142, float %4144, float %4140
  %4146 = and i32 %4114, 8192
  %4147 = icmp ne i32 %4146, 0
  %4148 = select i1 %4147, float %4107, float 1.000000e+00
  %4149 = fmul fast float %4041, 2.000000e+00
  %4150 = fadd fast float %4149, -1.000000e+00
  %4151 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4152 = fmul fast float %4151, %4034
  %4153 = fsub fast float %4152, %4034
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4048, 2.000000e+00
  %4156 = fadd fast float %4155, -1.000000e+00
  %4157 = call float @dx.op.unary.f32(i32 6, float %4156)  ; FAbs(value)
  %4158 = fmul fast float %4157, %4035
  %4159 = fsub fast float %4158, %4035
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = fmul fast float %4060, %3997
  %4162 = fsub fast float %4161, %3997
  %4163 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4164 = fmul fast float %4122, %4148
  %4165 = fmul fast float %4164, %4119
  %4166 = fmul fast float %4165, %4154
  %4167 = fmul fast float %4166, %4145
  %4168 = fmul fast float %4167, %4160
  %4169 = fmul fast float %4168, %4163
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4170, 0
  %4173 = fsub fast float %4077, %4172
  %4174 = fmul fast float %4173, %4171
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4169, %3998
  %4177 = fadd fast float %4169, %3998
  %4178 = fmul fast float %4177, %4007
  %4179 = fsub fast float %4178, %4007
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = and i32 %4114, 128
  %4182 = icmp ne i32 %4181, 0
  %4183 = select i1 %4182, float %4180, float %4176
  %4184 = fmul fast float %4183, %4175
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4187 = fcmp fast ugt float %4184, %4186
  br i1 %4187, label %4188, label %4081

; <label>:4188                                    ; preds = %4105
  %4189 = select i1 %4147, float %4184, float 0.000000e+00
  %4190 = fadd fast float %4189, %3958
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  br i1 %4147, label %4081, label %4192

; <label>:4192                                    ; preds = %4188
  %4193 = and i32 %4114, 4
  %4194 = and i32 %4114, 8
  %4195 = add i32 %3993, 0
  %4196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4195, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4198 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4196, %dx.types.Handle %4197, float %4125, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4130, float %4132, float undef, float %4134, float %4136, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4203 = bitcast float %4019 to i32
  %4204 = and i32 %4203, 255
  %4205 = uitofp i32 %4204 to float
  %4206 = lshr i32 %4203, 8
  %4207 = and i32 %4206, 255
  %4208 = uitofp i32 %4207 to float
  %4209 = fmul fast float %4202, %4205
  %4210 = fadd fast float %4209, %4208
  %4211 = fmul fast float %4210, 0x3F70101000000000
  %4212 = add i32 %3994, 0
  %4213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4212, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4213, %dx.types.Handle %4197, float %4125, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4130, float %4132, float undef, float %4134, float %4136, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = bitcast float %4013 to i32
  %4220 = and i32 %4219, 255
  %4221 = uitofp i32 %4220 to float
  %4222 = lshr i32 %4219, 8
  %4223 = and i32 %4222, 255
  %4224 = uitofp i32 %4223 to float
  %4225 = lshr i32 %4219, 16
  %4226 = and i32 %4225, 255
  %4227 = uitofp i32 %4226 to float
  %4228 = fmul fast float %4227, 0x3F70101000000000
  %4229 = fmul fast float %4215, %4221
  %4230 = fadd fast float %4229, %4224
  %4231 = fmul fast float %4230, 0x3F70101000000000
  %4232 = fadd fast float %4216, -5.000000e-01
  %4233 = fadd fast float %4218, -5.000000e-01
  %4234 = fmul fast float %4232, %4228
  %4235 = fmul fast float %4233, %4228
  %4236 = fadd fast float %4234, 5.000000e-01
  %4237 = fadd fast float %4235, 5.000000e-01
  %4238 = fmul fast float %4199, %4022
  %4239 = fmul fast float %4200, %4023
  %4240 = fmul fast float %4201, %4024
  %4241 = fmul fast float %4236, 2.000000e+00
  %4242 = fadd fast float %4241, -1.000000e+00
  %4243 = fmul fast float %4237, 2.000000e+00
  %4244 = fadd fast float %4243, -1.000000e+00
  %4245 = fadd fast float %4242, %4244
  %4246 = fmul fast float %4245, 5.000000e-01
  %4247 = fsub fast float %4242, %4244
  %4248 = fmul fast float %4247, 5.000000e-01
  %4249 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4252 = fsub fast float %4250, %4251
  %4253 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4248, float %4252, float %4246, float %4248, float %4252)  ; Dot3(ax,ay,az,bx,by,bz)
  %4254 = call float @dx.op.unary.f32(i32 25, float %4253)  ; Rsqrt(value)
  %4255 = fmul fast float %4246, %4254
  %4256 = fmul fast float %4248, %4254
  %4257 = fmul fast float %4254, %4252
  %4258 = fmul fast float %4257, %3988
  %4259 = fmul fast float %4257, %3989
  %4260 = fmul fast float %4257, %3990
  %4261 = fmul fast float %4255, %4010
  %4262 = fmul fast float %4255, %4011
  %4263 = fmul fast float %4255, %4012
  %4264 = fadd fast float %4261, %4258
  %4265 = fadd fast float %4262, %4259
  %4266 = fadd fast float %4263, %4260
  %4267 = fmul fast float %4256, %4016
  %4268 = fmul fast float %4256, %4017
  %4269 = fmul fast float %4256, %4018
  %4270 = fadd fast float %4264, %4267
  %4271 = fadd fast float %4265, %4268
  %4272 = fadd fast float %4266, %4269
  %4273 = call float @dx.op.dot3.f32(i32 55, float %4270, float %4271, float %4272, float %4270, float %4271, float %4272)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = call float @dx.op.unary.f32(i32 25, float %4273)  ; Rsqrt(value)
  %4275 = fmul fast float %4270, %4274
  %4276 = fmul fast float %4271, %4274
  %4277 = fmul fast float %4272, %4274
  %4278 = icmp ne i32 %4194, 0
  %4279 = select i1 %4278, float 1.000000e+00, float 0.000000e+00
  %4280 = fmul fast float %4184, %4279
  %4281 = and i32 %4114, 1
  %4282 = icmp eq i32 %4281, 0
  br i1 %4282, label %4283, label %4287

; <label>:4283                                    ; preds = %4192
  %4284 = fsub fast float %4275, %3970
  %4285 = fsub fast float %4276, %3971
  %4286 = fsub fast float %4277, %3972
  br label %4287

; <label>:4287                                    ; preds = %4283, %4192
  %4288 = phi float [ %4284, %4283 ], [ %4275, %4192 ]
  %4289 = phi float [ %4285, %4283 ], [ %4276, %4192 ]
  %4290 = phi float [ %4286, %4283 ], [ %4277, %4192 ]
  %4291 = fmul float %4290, %4280
  %4292 = fmul float %4289, %4280
  %4293 = fmul float %4288, %4280
  %4294 = fadd fast float %4293, %3970
  %4295 = fadd fast float %4292, %3971
  %4296 = fadd fast float %4291, %3972
  %4297 = icmp ne i32 %4193, 0
  %4298 = select i1 %4297, float 1.000000e+00, float 0.000000e+00
  %4299 = fmul fast float %4184, %4298
  %4300 = fsub fast float %4238, %3977
  %4301 = fsub fast float %4239, %3978
  %4302 = fsub fast float %4240, %3979
  %4303 = fmul fast float %4300, %4299
  %4304 = fmul fast float %4301, %4299
  %4305 = fmul fast float %4302, %4299
  %4306 = fadd fast float %4303, %3977
  %4307 = fadd fast float %4304, %3978
  %4308 = fadd fast float %4305, %3979
  %4309 = fsub fast float %4211, %3976
  %4310 = fmul fast float %4309, %4299
  %4311 = fadd fast float %4310, %3976
  %4312 = fmul fast float %4299, %3966
  %4313 = fsub fast float %3966, %4312
  %4314 = fmul fast float %4299, %3965
  %4315 = fsub fast float %3965, %4314
  %4316 = bitcast float %4031 to i32
  %4317 = fadd fast float %4184, %3975
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fsub fast float %4231, %3974
  %4320 = fmul fast float %4319, %4280
  %4321 = fadd fast float %4320, %3974
  %4322 = fsub fast float %4217, %3973
  %4323 = fmul fast float %4322, %4280
  %4324 = fadd fast float %4323, %3973
  br i1 %4282, label %4333, label %4325

; <label>:4325                                    ; preds = %4287
  %4326 = and i32 %4114, 32768
  %4327 = icmp eq i32 %4326, 0
  br i1 %4327, label %4343, label %4328

; <label>:4328                                    ; preds = %4325
  %4329 = fmul fast float %4280, 1.270000e+02
  %4330 = fadd fast float %4329, %3962
  %4331 = fadd fast float %4329, %3963
  %4332 = fadd fast float %4329, %3964
  br label %4343

; <label>:4333                                    ; preds = %4287
  %4334 = fsub fast float 1.270000e+02, %3962
  %4335 = fsub fast float 1.270000e+02, %3963
  %4336 = fsub fast float 1.270000e+02, %3964
  %4337 = fmul fast float %4280, %4334
  %4338 = fmul fast float %4280, %4335
  %4339 = fmul fast float %4280, %4336
  %4340 = fadd fast float %4337, %3962
  %4341 = fadd fast float %4338, %3963
  %4342 = fadd fast float %4339, %3964
  br label %4343

; <label>:4343                                    ; preds = %4333, %4328, %4325
  %4344 = phi float [ %4330, %4328 ], [ %3962, %4325 ], [ %4340, %4333 ]
  %4345 = phi float [ %4331, %4328 ], [ %3963, %4325 ], [ %4341, %4333 ]
  %4346 = phi float [ %4332, %4328 ], [ %3964, %4325 ], [ %4342, %4333 ]
  %4347 = call float @dx.op.dot3.f32(i32 55, float %4238, float %4239, float %4240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = fmul fast float %4350, %4347
  %4352 = fadd fast float %4351, %4349
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = bitcast float %4025 to i32
  %4355 = and i32 %4354, 65535
  %4356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4355)  ; LegacyF16ToF32(value)
  %4357 = lshr i32 %4354, 16
  %4358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4357)  ; LegacyF16ToF32(value)
  %4359 = fcmp fast oge float %4356, 0.000000e+00
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 0
  %4362 = select i1 %4359, float %4356, float %4361
  %4363 = fadd fast float %4362, %4358
  %4364 = fsub fast float %4353, %3961
  %4365 = fmul fast float %4364, %4184
  %4366 = fadd fast float %4365, %3961
  %4367 = fmul fast float %4363, %4184
  %4368 = call float @dx.op.binary.f32(i32 35, float %3960, float %4367)  ; FMax(a,b)
  %4369 = call float @dx.op.binary.f32(i32 35, float %3959, float %4184)  ; FMax(a,b)
  %4370 = and i32 %4114, 16
  %4371 = icmp eq i32 %4370, 0
  br i1 %4371, label %4393, label %4372

; <label>:4372                                    ; preds = %4343
  %4373 = add i32 %4028, 0
  %4374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4373, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4374, %dx.types.Handle %4197, float %4125, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4130, float %4132, float undef, float %4134, float %4136, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = and i32 %4316, 65535
  %4380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4379)  ; LegacyF16ToF32(value)
  %4381 = fmul fast float %4376, %4022
  %4382 = fmul fast float %4377, %4023
  %4383 = fmul fast float %4378, %4024
  %4384 = and i32 %4114, 16384
  %4385 = icmp ne i32 %4384, 0
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = select i1 %4385, float %4387, float 1.000000e+00
  %4389 = fmul fast float %4388, %4380
  %4390 = fmul fast float %4381, %4389
  %4391 = fmul fast float %4382, %4389
  %4392 = fmul fast float %4383, %4389
  br label %4393

; <label>:4393                                    ; preds = %4372, %4343
  %4394 = phi float [ %4390, %4372 ], [ 0.000000e+00, %4343 ]
  %4395 = phi float [ %4391, %4372 ], [ 0.000000e+00, %4343 ]
  %4396 = phi float [ %4392, %4372 ], [ 0.000000e+00, %4343 ]
  %4397 = fsub fast float %4394, %3967
  %4398 = fsub fast float %4395, %3968
  %4399 = fsub fast float %4396, %3969
  %4400 = fmul fast float %4397, %4184
  %4401 = fmul fast float %4398, %4184
  %4402 = fmul fast float %4399, %4184
  %4403 = fadd fast float %4400, %3967
  %4404 = fadd fast float %4401, %3968
  %4405 = fadd fast float %4402, %3969
  br label %4081

; <label>:4406                                    ; preds = %4081
  br label %4407

; <label>:4407                                    ; preds = %4406, %3893
  %4408 = phi float [ 0.000000e+00, %3893 ], [ %4082, %4406 ]
  %4409 = phi float [ %1162, %3893 ], [ %4083, %4406 ]
  %4410 = phi float [ %3832, %3893 ], [ %4084, %4406 ]
  %4411 = phi float [ %3830, %3893 ], [ %4085, %4406 ]
  %4412 = phi float [ %3823, %3893 ], [ %4086, %4406 ]
  %4413 = phi float [ %3824, %3893 ], [ %4087, %4406 ]
  %4414 = phi float [ %3825, %3893 ], [ %4088, %4406 ]
  %4415 = phi float [ 0.000000e+00, %3893 ], [ %4089, %4406 ]
  %4416 = phi float [ 0.000000e+00, %3893 ], [ %4090, %4406 ]
  %4417 = phi float [ %3857, %3893 ], [ %4091, %4406 ]
  %4418 = phi float [ %3860, %3893 ], [ %4092, %4406 ]
  %4419 = phi float [ %3863, %3893 ], [ %4093, %4406 ]
  %4420 = phi float [ %3889, %3893 ], [ %4094, %4406 ]
  %4421 = phi float [ %3890, %3893 ], [ %4095, %4406 ]
  %4422 = phi float [ %3891, %3893 ], [ %4096, %4406 ]
  %4423 = phi float [ %3828, %3893 ], [ %4097, %4406 ]
  %4424 = phi float [ %3827, %3893 ], [ %4098, %4406 ]
  %4425 = phi float [ 0.000000e+00, %3893 ], [ %4099, %4406 ]
  %4426 = phi float [ %3826, %3893 ], [ %4100, %4406 ]
  %4427 = phi float [ %3841, %3893 ], [ %4101, %4406 ]
  %4428 = phi float [ %3842, %3893 ], [ %4102, %4406 ]
  %4429 = phi float [ %3843, %3893 ], [ %4103, %4406 ]
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4420, float %4421, float %4422, float %4420, float %4421, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = call float @dx.op.unary.f32(i32 25, float %4430)  ; Rsqrt(value)
  %4432 = fmul fast float %4431, %4420
  %4433 = fmul fast float %4431, %4421
  %4434 = fmul fast float %4431, %4422
  %4435 = fadd fast float %4425, %1162
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float %4432, float %4433, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = call float @dx.op.unary.f32(i32 25, float %4437)  ; Rsqrt(value)
  %4439 = fmul fast float %4438, %4432
  %4440 = fmul fast float %4438, %4433
  %4441 = fmul fast float %4438, %4434
  br label %4442

; <label>:4442                                    ; preds = %4407, %3814
  %4443 = phi float [ %4439, %4407 ], [ %3889, %3814 ]
  %4444 = phi float [ %4440, %4407 ], [ %3890, %3814 ]
  %4445 = phi float [ %4441, %4407 ], [ %3891, %3814 ]
  %4446 = phi float [ %4427, %4407 ], [ %3841, %3814 ]
  %4447 = phi float [ %4428, %4407 ], [ %3842, %3814 ]
  %4448 = phi float [ %4429, %4407 ], [ %3843, %3814 ]
  %4449 = phi float [ %4417, %4407 ], [ %3857, %3814 ]
  %4450 = phi float [ %4418, %4407 ], [ %3860, %3814 ]
  %4451 = phi float [ %4419, %4407 ], [ %3863, %3814 ]
  %4452 = phi float [ %4412, %4407 ], [ %3823, %3814 ]
  %4453 = phi float [ %4413, %4407 ], [ %3824, %3814 ]
  %4454 = phi float [ %4414, %4407 ], [ %3825, %3814 ]
  %4455 = phi float [ %4426, %4407 ], [ %3826, %3814 ]
  %4456 = phi float [ %4436, %4407 ], [ %1162, %3814 ]
  %4457 = phi float [ %4424, %4407 ], [ %3827, %3814 ]
  %4458 = phi float [ %4423, %4407 ], [ %3828, %3814 ]
  %4459 = phi float [ %4416, %4407 ], [ 0.000000e+00, %3814 ]
  %4460 = phi float [ %4415, %4407 ], [ 0.000000e+00, %3814 ]
  %4461 = phi float [ %4408, %4407 ], [ 0.000000e+00, %3814 ]
  %4462 = phi float [ %4410, %4407 ], [ %3832, %3814 ]
  %4463 = phi float [ %4409, %4407 ], [ %1162, %3814 ]
  %4464 = phi float [ %4411, %4407 ], [ %3830, %3814 ]
  %4465 = add i32 %55, 408
  %4466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4467 = extractvalue %dx.types.ResRet.i32 %4466, 0
  %4468 = extractvalue %dx.types.ResRet.i32 %4466, 1
  %4469 = extractvalue %dx.types.ResRet.i32 %4466, 2
  %4470 = extractvalue %dx.types.ResRet.i32 %4466, 3
  %4471 = bitcast i32 %4467 to float
  %4472 = bitcast i32 %4468 to float
  %4473 = bitcast i32 %4469 to float
  %4474 = bitcast i32 %4470 to float
  %4475 = fsub fast float %4446, %4471
  %4476 = fsub fast float %4447, %4472
  %4477 = fsub fast float %4448, %4473
  %4478 = fmul fast float %4475, %223
  %4479 = fmul fast float %4476, %223
  %4480 = fmul fast float %4477, %223
  %4481 = fadd fast float %4478, %4471
  %4482 = fadd fast float %4479, %4472
  %4483 = fadd fast float %4480, %4473
  %4484 = fsub fast float %4456, %4474
  %4485 = fmul fast float %4484, %223
  %4486 = fadd fast float %4485, %4474
  %4487 = fadd fast float %4455, 0xBFB99999A0000000
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = fmul fast float %4488, 0x3FF1C71C80000000
  %4490 = call float @dx.op.binary.f32(i32 36, float %4455, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4491 = fsub fast float 1.000000e+00, %4489
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4481, %4492
  %4494 = fmul fast float %4482, %4492
  %4495 = fmul fast float %4483, %4492
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4499 = fmul fast float %4481, %4489
  %4500 = fmul fast float %4482, %4489
  %4501 = fmul fast float %4483, %4489
  %4502 = fadd fast float %4499, %4490
  %4503 = fadd fast float %4500, %4490
  %4504 = fadd fast float %4501, %4490
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4509 = call float @dx.op.binary.f32(i32 36, float %4452, float 1.270000e+02)  ; FMin(a,b)
  %4510 = call float @dx.op.binary.f32(i32 36, float %4453, float 1.270000e+02)  ; FMin(a,b)
  %4511 = call float @dx.op.binary.f32(i32 36, float %4454, float 1.270000e+02)  ; FMin(a,b)
  %4512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.i32 %4512, 3
  %4514 = and i32 %4513, 8
  %4515 = icmp ne i32 %4514, 0
  %4516 = call float @dx.op.binary.f32(i32 35, float %4496, float %4481)  ; FMax(a,b)
  %4517 = call float @dx.op.binary.f32(i32 35, float %4497, float %4481)  ; FMax(a,b)
  %4518 = call float @dx.op.binary.f32(i32 35, float %4498, float %4481)  ; FMax(a,b)
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = select i1 %280, float %4481, float %4496
  %4521 = select i1 %280, float %4519, float %4497
  %4522 = select i1 %280, float 1.000000e+00, float %4498
  %4523 = select i1 %4515, float %4516, float %4520
  %4524 = select i1 %4515, float %4517, float %4521
  %4525 = select i1 %4515, float %4518, float %4522
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4529 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4530 = fadd fast float %4527, %193
  %4531 = fadd fast float %4528, %194
  %4532 = fadd fast float %4529, %195
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4536 = fsub fast float %4530, %4534
  %4537 = fsub fast float %4531, %4535
  %4538 = fmul fast float %4536, %4536
  %4539 = fmul fast float %4537, %4537
  %4540 = fadd fast float %4538, %4539
  %4541 = call float @dx.op.unary.f32(i32 24, float %4540)  ; Sqrt(value)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4543 = fcmp fast olt float %4541, %4542
  br i1 %4543, label %4544, label %4611

; <label>:4544                                    ; preds = %4442
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4553 = extractvalue %dx.types.CBufRet.f32 %4549, 1
  %4554 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4555 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4556 = extractvalue %dx.types.CBufRet.f32 %4549, 3
  %4557 = fadd fast float %4554, %4530
  %4558 = fadd fast float %4555, %4531
  %4559 = fadd fast float %4556, %4532
  %4560 = fmul fast float %4557, %4546
  %4561 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4548, float %4560)  ; FMad(a,b,c)
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4550, float %4561)  ; FMad(a,b,c)
  %4563 = fmul fast float %4557, %4551
  %4564 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4552, float %4563)  ; FMad(a,b,c)
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4553, float %4564)  ; FMad(a,b,c)
  %4566 = fsub fast float %4562, %4554
  %4567 = fsub fast float %4565, %4555
  %4568 = fsub fast float %4566, %4534
  %4569 = fadd fast float %4568, %4542
  %4570 = fsub fast float %4567, %4535
  %4571 = fadd fast float %4570, %4542
  %4572 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4573 = fmul fast float %4569, %4572
  %4574 = fmul fast float %4571, %4572
  %4575 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4576 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4577 = fsub fast float 1.000000e+00, %4575
  %4578 = fsub fast float 1.000000e+00, %4576
  %4579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4577, float %4578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = fcmp fast ugt float %4580, 0.000000e+00
  br i1 %4581, label %4582, label %4885

; <label>:4582                                    ; preds = %4544
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 2
  %4585 = fmul fast float %4584, %4580
  %4586 = extractvalue %dx.types.CBufRet.f32 %4583, 3
  %4587 = fadd fast float %4586, %4585
  %4588 = extractvalue %dx.types.CBufRet.f32 %4549, 2
  %4589 = fadd fast float %4587, %4556
  %4590 = fmul fast float %4562, %4550
  %4591 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4553, float %4590)  ; FMad(a,b,c)
  %4592 = call float @dx.op.tertiary.f32(i32 46, float %4589, float %4588, float %4591)  ; FMad(a,b,c)
  %4593 = fsub fast float %4592, %4556
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4596 = fsub fast float %4593, %4595
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4577, float %4578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4577, float %4578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = fadd fast float %4602, %4598
  %4606 = fmul fast float %4605, 0x3F847AE140000000
  %4607 = fadd fast float %4603, %4599
  %4608 = fmul fast float %4607, 0x3F847AE140000000
  %4609 = fadd fast float %4604, %4600
  %4610 = fmul fast float %4609, 0x3F847AE140000000
  br label %4885

; <label>:4611                                    ; preds = %4442
  %4612 = and i32 %259, 1
  %4613 = icmp eq i32 %4612, 0
  br i1 %4613, label %4885, label %4614

; <label>:4614                                    ; preds = %4611
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 0
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4617, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4624 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4625 = extractvalue %dx.types.CBufRet.f32 %4617, 3
  %4626 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4627 = fadd fast float %4624, %4530
  %4628 = fadd fast float %4625, %4531
  %4629 = fadd fast float %4626, %4532
  %4630 = fmul fast float %4627, %4616
  %4631 = call float @dx.op.tertiary.f32(i32 46, float %4628, float %4618, float %4630)  ; FMad(a,b,c)
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4620, float %4631)  ; FMad(a,b,c)
  %4633 = fmul fast float %4627, %4621
  %4634 = call float @dx.op.tertiary.f32(i32 46, float %4628, float %4622, float %4633)  ; FMad(a,b,c)
  %4635 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4623, float %4634)  ; FMad(a,b,c)
  %4636 = fsub fast float %4632, %4624
  %4637 = fsub fast float %4635, %4625
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4642 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.i32 %4645, 0
  %4647 = extractvalue %dx.types.CBufRet.i32 %4645, 1
  %4648 = udiv i32 %4647, %4646
  %4649 = fsub fast float %4636, %4639
  %4650 = fsub fast float %4637, %4640
  %4651 = call float @dx.op.binary.f32(i32 35, float %4649, float 0.000000e+00)  ; FMax(a,b)
  %4652 = call float @dx.op.binary.f32(i32 35, float %4650, float 0.000000e+00)  ; FMax(a,b)
  %4653 = call float @dx.op.binary.f32(i32 36, float %4651, float %4641)  ; FMin(a,b)
  %4654 = call float @dx.op.binary.f32(i32 36, float %4652, float %4642)  ; FMin(a,b)
  %4655 = add i32 %4646, -1
  %4656 = add i32 %4648, -1
  %4657 = fmul fast float %4653, %4644
  %4658 = fmul fast float %4654, %4644
  %4659 = fptoui float %4657 to i32
  %4660 = fptoui float %4658 to i32
  %4661 = call i32 @dx.op.binary.i32(i32 40, i32 %4659, i32 %4655)  ; UMin(a,b)
  %4662 = call i32 @dx.op.binary.i32(i32 40, i32 %4660, i32 %4656)  ; UMin(a,b)
  %4663 = mul i32 %4662, %4646
  %4664 = add i32 %4663, %4661
  %4665 = shl i32 %4664, 2
  %4666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4665, i32 undef)  ; BufferLoad(srv,index,wot)
  %4667 = extractvalue %dx.types.ResRet.i32 %4666, 0
  %4668 = icmp eq i32 %4667, -1
  br i1 %4668, label %4885, label %4669

; <label>:4669                                    ; preds = %4614
  %4670 = mul i32 %4667, 148
  %4671 = add i32 %4670, 4
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = add i32 %4670, 8
  %4675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = add i32 %4670, 36
  %4678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4677, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = add i32 %4670, 60
  %4681 = add i32 %4670, 92
  %4682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4681, i32 undef)  ; BufferLoad(srv,index,wot)
  %4683 = extractvalue %dx.types.ResRet.i32 %4682, 0
  %4684 = add i32 %4670, 116
  %4685 = fsub fast float %4636, %4673
  %4686 = fsub fast float %4637, %4676
  %4687 = fmul fast float %4644, %4685
  %4688 = fmul fast float %4644, %4686
  %4689 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4691 = fsub fast float 1.000000e+00, %4690
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4694 = call float @dx.op.unary.f32(i32 83, float %4689)  ; DerivCoarseX(value)
  %4695 = call float @dx.op.unary.f32(i32 83, float %4691)  ; DerivCoarseX(value)
  %4696 = call float @dx.op.unary.f32(i32 84, float %4689)  ; DerivCoarseY(value)
  %4697 = call float @dx.op.unary.f32(i32 84, float %4691)  ; DerivCoarseY(value)
  %4698 = fmul fast float %4694, %4693
  %4699 = fmul fast float %4695, %4693
  %4700 = fmul fast float %4696, %4693
  %4701 = fmul fast float %4697, %4693
  %4702 = call float @dx.op.dot2.f32(i32 54, float %4700, float %4701, float %4700, float %4701)  ; Dot2(ax,ay,bx,by)
  %4703 = call float @dx.op.dot2.f32(i32 54, float %4698, float %4699, float %4698, float %4699)  ; Dot2(ax,ay,bx,by)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float %4702)  ; FMax(a,b)
  %4705 = call float @dx.op.unary.f32(i32 23, float %4704)  ; Log(value)
  %4706 = fmul fast float %4705, 5.000000e-01
  %4707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.f32 %4707, 1
  %4709 = fadd fast float %4708, %4706
  %4710 = call float @dx.op.binary.f32(i32 35, float %4709, float 0.000000e+00)  ; FMax(a,b)
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4713 = fadd fast float %4712, %4710
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 3
  %4716 = fadd fast float %4713, %4715
  %4717 = add i32 %4683, 0
  %4718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4719 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4718, i32 0)  ; GetDimensions(handle,mipLevel)
  %4720 = extractvalue %dx.types.Dimensions %4719, 0
  %4721 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4720)  ; FirstbitLo(value)
  %4722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.i32 %4722, 1
  %4724 = sub nsw i32 %4723, %4721
  %4725 = sitofp i32 %4724 to float
  %4726 = fsub fast float %4716, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float %4726, float 0.000000e+00)  ; FMax(a,b)
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4718, %dx.types.Handle %47, float %4689, float %4691, float %4679, float undef, i32 0, i32 0, i32 undef, float %4727)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = fcmp ule float %4729, 0x3FE0101020000000
  %4731 = extractvalue %dx.types.CBufRet.i32 %4722, 0
  %4732 = and i32 %4731, 128
  %4733 = icmp ne i32 %4732, 0
  %4734 = and i1 %4730, %4733
  br i1 %4734, label %4885, label %4735

; <label>:4735                                    ; preds = %4669
  %4736 = add i32 %4670, 20
  %4737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4736, i32 undef)  ; BufferLoad(srv,index,wot)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = add i32 %4670, 24
  %4740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 0
  %4742 = add i32 %4670, 40
  %4743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4742, i32 undef)  ; BufferLoad(srv,index,wot)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = add i32 %4670, 96
  %4746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4745, i32 undef)  ; BufferLoad(srv,index,wot)
  %4747 = extractvalue %dx.types.ResRet.i32 %4746, 0
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4750 = fmul fast float %4749, %4689
  %4751 = fmul fast float %4749, %4691
  %4752 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4753 = fadd fast float %4750, %4752
  %4754 = fadd fast float %4751, %4752
  %4755 = add i32 %4747, 0
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4756, i32 0)  ; GetDimensions(handle,mipLevel)
  %4758 = extractvalue %dx.types.Dimensions %4757, 0
  %4759 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4758)  ; FirstbitLo(value)
  %4760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.i32 %4760, 1
  %4762 = sub nsw i32 %4761, %4759
  %4763 = sitofp i32 %4762 to float
  %4764 = fsub fast float %4713, %4763
  %4765 = call float @dx.op.binary.f32(i32 35, float %4764, float 0.000000e+00)  ; FMax(a,b)
  %4766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4756, %dx.types.Handle %47, float %4753, float %4754, float %4744, float undef, i32 0, i32 0, i32 undef, float %4765)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4767 = extractvalue %dx.types.ResRet.f32 %4766, 0
  %4768 = fmul fast float %4767, %4738
  %4769 = fadd fast float %4768, %4741
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 3
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 3
  %4778 = extractvalue %dx.types.CBufRet.f32 %4770, 3
  %4779 = fadd fast float %4775, %4636
  %4780 = fadd fast float %4777, %4637
  %4781 = fadd fast float %4769, %4778
  %4782 = fmul fast float %4779, %4771
  %4783 = call float @dx.op.tertiary.f32(i32 46, float %4780, float %4772, float %4782)  ; FMad(a,b,c)
  %4784 = call float @dx.op.tertiary.f32(i32 46, float %4781, float %4773, float %4783)  ; FMad(a,b,c)
  %4785 = fsub fast float %4784, %4778
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 2
  %4788 = fsub fast float %4785, %4787
  %4789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.i32 %4789, 0
  %4791 = call i32 @dx.op.binary.i32(i32 40, i32 %4667, i32 %4790)  ; UMin(a,b)
  %4792 = mul i32 %4791, 36
  %4793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4792, i32 undef)  ; BufferLoad(srv,index,wot)
  %4794 = extractvalue %dx.types.ResRet.i32 %4793, 0
  %4795 = add i32 %4792, 4
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = fmul fast float %4797, %4689
  %4799 = fmul fast float %4797, %4691
  %4800 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4801 = fadd fast float %4798, %4800
  %4802 = fadd fast float %4799, %4800
  %4803 = icmp eq i32 %4794, 0
  br i1 %4803, label %4872, label %4804

; <label>:4804                                    ; preds = %4735
  br label %4805

; <label>:4805                                    ; preds = %4862, %4804
  %4806 = phi float [ %4863, %4862 ], [ 0.000000e+00, %4804 ]
  %4807 = phi float [ %4864, %4862 ], [ 0.000000e+00, %4804 ]
  %4808 = phi float [ %4865, %4862 ], [ 0.000000e+00, %4804 ]
  %4809 = phi float [ %4866, %4862 ], [ 0.000000e+00, %4804 ]
  %4810 = phi float [ %4867, %4862 ], [ 0.000000e+00, %4804 ]
  %4811 = phi float [ %4868, %4862 ], [ 0.000000e+00, %4804 ]
  %4812 = phi i32 [ %4869, %4862 ], [ 0, %4804 ]
  %4813 = shl i32 %4812, 2
  %4814 = add i32 %4680, %4813
  %4815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = add i32 %4684, %4813
  %4818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.i32 %4818, 0
  %4820 = add i32 %4819, 0
  %4821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4820, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4822 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4821, i32 0)  ; GetDimensions(handle,mipLevel)
  %4823 = extractvalue %dx.types.Dimensions %4822, 0
  %4824 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4823)  ; FirstbitLo(value)
  %4825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.i32 %4825, 1
  %4827 = sub nsw i32 %4826, %4824
  %4828 = sitofp i32 %4827 to float
  %4829 = fsub fast float %4713, %4828
  %4830 = call float @dx.op.binary.f32(i32 35, float %4829, float 0.000000e+00)  ; FMax(a,b)
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4821, %dx.types.Handle %47, float %4801, float %4802, float %4816, float undef, i32 0, i32 0, i32 undef, float %4830)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = fcmp fast ogt float %4832, 0.000000e+00
  br i1 %4833, label %4834, label %4862

; <label>:4834                                    ; preds = %4805
  %4835 = add i32 %4795, %4813
  %4836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4835, i32 undef)  ; BufferLoad(srv,index,wot)
  %4837 = extractvalue %dx.types.ResRet.i32 %4836, 0
  %4838 = and i32 %4837, 32767
  %4839 = mul nuw nsw i32 %4838, 928
  %4840 = add nuw nsw i32 %4839, 48
  %4841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4840, i32 undef)  ; BufferLoad(srv,index,wot)
  %4842 = extractvalue %dx.types.ResRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.ResRet.f32 %4841, 1
  %4844 = extractvalue %dx.types.ResRet.f32 %4841, 2
  %4845 = add nuw nsw i32 %4839, 60
  %4846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4845, i32 undef)  ; BufferLoad(srv,index,wot)
  %4847 = extractvalue %dx.types.ResRet.f32 %4846, 0
  %4848 = extractvalue %dx.types.ResRet.f32 %4846, 1
  %4849 = extractvalue %dx.types.ResRet.f32 %4846, 2
  %4850 = fmul fast float %4842, %4832
  %4851 = fmul fast float %4843, %4832
  %4852 = fmul fast float %4844, %4832
  %4853 = fadd fast float %4850, %4806
  %4854 = fadd fast float %4851, %4807
  %4855 = fadd fast float %4852, %4808
  %4856 = fmul fast float %4847, %4832
  %4857 = fmul fast float %4848, %4832
  %4858 = fmul fast float %4849, %4832
  %4859 = fadd fast float %4856, %4809
  %4860 = fadd fast float %4857, %4810
  %4861 = fadd fast float %4858, %4811
  br label %4862

; <label>:4862                                    ; preds = %4834, %4805
  %4863 = phi float [ %4853, %4834 ], [ %4806, %4805 ]
  %4864 = phi float [ %4854, %4834 ], [ %4807, %4805 ]
  %4865 = phi float [ %4855, %4834 ], [ %4808, %4805 ]
  %4866 = phi float [ %4859, %4834 ], [ %4809, %4805 ]
  %4867 = phi float [ %4860, %4834 ], [ %4810, %4805 ]
  %4868 = phi float [ %4861, %4834 ], [ %4811, %4805 ]
  %4869 = add nuw i32 %4812, 1
  %4870 = icmp eq i32 %4869, %4794
  br i1 %4870, label %4871, label %4805

; <label>:4871                                    ; preds = %4862
  br label %4872

; <label>:4872                                    ; preds = %4871, %4735
  %4873 = phi float [ 0.000000e+00, %4735 ], [ %4863, %4871 ]
  %4874 = phi float [ 0.000000e+00, %4735 ], [ %4864, %4871 ]
  %4875 = phi float [ 0.000000e+00, %4735 ], [ %4865, %4871 ]
  %4876 = phi float [ 0.000000e+00, %4735 ], [ %4866, %4871 ]
  %4877 = phi float [ 0.000000e+00, %4735 ], [ %4867, %4871 ]
  %4878 = phi float [ 0.000000e+00, %4735 ], [ %4868, %4871 ]
  %4879 = fadd fast float %4876, %4873
  %4880 = fmul fast float %4879, 0x3F847AE140000000
  %4881 = fadd fast float %4877, %4874
  %4882 = fmul fast float %4881, 0x3F847AE140000000
  %4883 = fadd fast float %4878, %4875
  %4884 = fmul fast float %4883, 0x3F847AE140000000
  br label %4885

; <label>:4885                                    ; preds = %4872, %4669, %4614, %4611, %4582, %4544
  %4886 = phi float [ %4596, %4582 ], [ -1.310720e+05, %4544 ], [ %4788, %4872 ], [ -1.310720e+05, %4614 ], [ -1.310720e+05, %4669 ], [ -1.310720e+05, %4611 ]
  %4887 = phi float [ %4606, %4582 ], [ 0.000000e+00, %4544 ], [ %4880, %4872 ], [ 0.000000e+00, %4614 ], [ 0.000000e+00, %4669 ], [ 0.000000e+00, %4611 ]
  %4888 = phi float [ %4608, %4582 ], [ 0.000000e+00, %4544 ], [ %4882, %4872 ], [ 0.000000e+00, %4614 ], [ 0.000000e+00, %4669 ], [ 0.000000e+00, %4611 ]
  %4889 = phi float [ %4610, %4582 ], [ 0.000000e+00, %4544 ], [ %4884, %4872 ], [ 0.000000e+00, %4614 ], [ 0.000000e+00, %4669 ], [ 0.000000e+00, %4611 ]
  %4890 = phi i1 [ true, %4582 ], [ false, %4544 ], [ true, %4872 ], [ false, %4614 ], [ false, %4669 ], [ false, %4611 ]
  %4891 = and i32 %259, 3
  %4892 = icmp eq i32 %4891, 1
  %4893 = select i1 %4892, float 1.000000e+00, float 0.000000e+00
  %4894 = fsub fast float %4886, %195
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = select i1 %4890, float %4895, float 1.000000e+00
  %4897 = fmul fast float %4896, %4893
  %4898 = icmp eq i32 %4891, 3
  %4899 = select i1 %4898, float 1.000000e+00, float %4897
  %4900 = call float @dx.op.binary.f32(i32 35, float %4461, float %4899)  ; FMax(a,b)
  %4901 = fcmp fast olt float %4899, 1.000000e+00
  %4902 = fcmp uge float %71, 0.000000e+00
  %4903 = and i1 %4902, %4901
  br i1 %4903, label %4904, label %4914

; <label>:4904                                    ; preds = %4885
  %4905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4906 = extractvalue %dx.types.ResRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.ResRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.ResRet.f32 %4905, 2
  %4909 = fadd fast float %4906, %4900
  %4910 = fcmp ule float %70, 0.000000e+00
  %4911 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = select i1 %4910, float %4911, float 1.000000e+00
  %4913 = fmul fast float %4912, %4908
  br label %4914

; <label>:4914                                    ; preds = %4904, %4885
  %4915 = phi float [ %4909, %4904 ], [ %4900, %4885 ]
  %4916 = phi float [ %4907, %4904 ], [ 0.000000e+00, %4885 ]
  %4917 = phi float [ %4913, %4904 ], [ 0.000000e+00, %4885 ]
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4921 = fcmp fast une float %4919, 0.000000e+00
  %4922 = fcmp fast une float %4920, 0.000000e+00
  %4923 = or i1 %4921, %4922
  br i1 %4923, label %4924, label %5483

; <label>:4924                                    ; preds = %4914
  br i1 %4921, label %4925, label %5198

; <label>:4925                                    ; preds = %4924
  %4926 = call float @dx.op.unary.f32(i32 23, float %4458)  ; Log(value)
  %4927 = fmul fast float %4926, 4.000000e+00
  %4928 = call float @dx.op.unary.f32(i32 21, float %4927)  ; Exp(value)
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 0
  %4931 = fmul fast float %4930, %58
  %4932 = fmul fast float %4930, %59
  %4933 = fmul fast float %4930, %60
  %4934 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4935 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4936 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4937 = call float @dx.op.unary.f32(i32 23, float %4934)  ; Log(value)
  %4938 = call float @dx.op.unary.f32(i32 23, float %4935)  ; Log(value)
  %4939 = call float @dx.op.unary.f32(i32 23, float %4936)  ; Log(value)
  %4940 = fmul fast float %4937, 4.000000e+00
  %4941 = fmul fast float %4938, 4.000000e+00
  %4942 = fmul fast float %4939, 4.000000e+00
  %4943 = call float @dx.op.unary.f32(i32 21, float %4940)  ; Exp(value)
  %4944 = call float @dx.op.unary.f32(i32 21, float %4941)  ; Exp(value)
  %4945 = call float @dx.op.unary.f32(i32 21, float %4942)  ; Exp(value)
  %4946 = fadd fast float %4944, %4943
  %4947 = fadd fast float %4946, %4945
  %4948 = fdiv fast float 1.000000e+00, %4947
  %4949 = fmul fast float %4948, %4943
  %4950 = fcmp fast ogt float %67, 0.000000e+00
  %4951 = fcmp fast ogt float %68, 0.000000e+00
  %4952 = fcmp fast ogt float %69, 0.000000e+00
  %4953 = fcmp fast olt float %67, 0.000000e+00
  %4954 = fcmp fast olt float %68, 0.000000e+00
  %4955 = fcmp fast olt float %69, 0.000000e+00
  %4956 = zext i1 %4950 to i32
  %4957 = zext i1 %4951 to i32
  %4958 = zext i1 %4952 to i32
  %4959 = zext i1 %4953 to i32
  %4960 = zext i1 %4954 to i32
  %4961 = zext i1 %4955 to i32
  %4962 = sub nsw i32 %4956, %4959
  %4963 = sub nsw i32 %4957, %4960
  %4964 = sub nsw i32 %4958, %4961
  %4965 = call float @dx.op.unary.f32(i32 83, float %4931)  ; DerivCoarseX(value)
  %4966 = call float @dx.op.unary.f32(i32 83, float %4932)  ; DerivCoarseX(value)
  %4967 = call float @dx.op.unary.f32(i32 83, float %4933)  ; DerivCoarseX(value)
  %4968 = call float @dx.op.unary.f32(i32 84, float %4931)  ; DerivCoarseY(value)
  %4969 = call float @dx.op.unary.f32(i32 84, float %4932)  ; DerivCoarseY(value)
  %4970 = call float @dx.op.unary.f32(i32 84, float %4933)  ; DerivCoarseY(value)
  %4971 = fcmp fast ole float %291, %4949
  %4972 = fmul fast float %4948, %4946
  %4973 = fcmp fast ole float %291, %4972
  %4974 = select i1 %4973, float %4933, float %4931
  %4975 = select i1 %4973, float %4931, float %4932
  %4976 = select i1 %4971, float %4932, float %4974
  %4977 = select i1 %4971, float %4933, float %4975
  %4978 = select i1 %4973, float %4967, float %4965
  %4979 = select i1 %4973, float %4965, float %4966
  %4980 = select i1 %4971, float %4966, float %4978
  %4981 = select i1 %4971, float %4967, float %4979
  %4982 = select i1 %4973, float %4970, float %4968
  %4983 = select i1 %4973, float %4968, float %4969
  %4984 = select i1 %4971, float %4969, float %4982
  %4985 = select i1 %4971, float %4970, float %4983
  %4986 = call float @dx.op.unary.f32(i32 27, float %4976)  ; Round_ni(value)
  %4987 = call float @dx.op.unary.f32(i32 27, float %4977)  ; Round_ni(value)
  %4988 = fptosi float %4986 to i32
  %4989 = fptosi float %4987 to i32
  %4990 = xor i32 %4989, %4988
  %4991 = sitofp i32 %4990 to float
  %4992 = fptosi float %4991 to i32
  %4993 = sitofp i32 %4992 to float
  %4994 = fmul fast float %4993, 0x3FE3C6EF40000000
  %4995 = frem fast float %4986, 2.560000e+02
  %4996 = frem fast float %4987, 2.560000e+02
  %4997 = fptoui float %4995 to i32
  %4998 = fptoui float %4996 to i32
  %4999 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4997, i32 %4998, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = fadd fast float %5000, %4994
  %5004 = fadd fast float %5001, %4994
  %5005 = fadd fast float %5002, %4994
  %5006 = call float @dx.op.unary.f32(i32 22, float %5003)  ; Frc(value)
  %5007 = call float @dx.op.unary.f32(i32 22, float %5004)  ; Frc(value)
  %5008 = call float @dx.op.unary.f32(i32 22, float %5005)  ; Frc(value)
  %5009 = fmul fast float %5008, 0x401921FB60000000
  %5010 = call float @dx.op.unary.f32(i32 13, float %5009)  ; Sin(value)
  %5011 = call float @dx.op.unary.f32(i32 12, float %5009)  ; Cos(value)
  %5012 = fsub fast float -0.000000e+00, %5011
  %5013 = fmul fast float %5011, %4976
  %5014 = call float @dx.op.tertiary.f32(i32 46, float %5010, float %4977, float %5013)  ; FMad(a,b,c)
  %5015 = fmul fast float %5010, %4976
  %5016 = call float @dx.op.tertiary.f32(i32 46, float %5012, float %4977, float %5015)  ; FMad(a,b,c)
  %5017 = fadd fast float %5014, %5006
  %5018 = fadd fast float %5016, %5007
  %5019 = extractvalue %dx.types.CBufRet.f32 %4929, 3
  %5020 = bitcast float %5019 to i32
  %5021 = icmp eq i32 %5020, 0
  br i1 %5021, label %5060, label %5022

; <label>:5022                                    ; preds = %4925
  %5023 = add i32 %5020, 0
  %5024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5024, %dx.types.Handle %103, float %5017, float %5018, float undef, float undef, i32 0, i32 0, i32 undef, float %4980, float %4981, float undef, float %4984, float %4985, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 1
  %5029 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5030 = fsub fast float 1.000000e+00, %4919
  %5031 = call float @dx.op.binary.f32(i32 35, float %5030, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5032 = bitcast float %4919 to i32
  %5033 = sitofp i32 %5032 to float
  %5034 = fadd fast float %5033, 0xC1CFBF8940000000
  %5035 = fmul fast float %5029, %5034
  %5036 = fadd fast float %5035, 0x41CFBF8940000000
  %5037 = fptosi float %5036 to i32
  %5038 = bitcast i32 %5037 to float
  %5039 = bitcast float %5031 to i32
  %5040 = sitofp i32 %5039 to float
  %5041 = fadd fast float %5040, 0xC1CFBF8940000000
  %5042 = fmul fast float %5041, %5029
  %5043 = fadd fast float %5042, 0x41CFBF8940000000
  %5044 = fptosi float %5043 to i32
  %5045 = bitcast i32 %5044 to float
  %5046 = fmul fast float %5038, %5028
  %5047 = fmul fast float %5045, %5028
  %5048 = fsub fast float %5031, %5046
  %5049 = fadd fast float %5047, %5031
  %5050 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5051 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5052 = fsub fast float %5026, %5050
  %5053 = fsub fast float %5051, %5050
  %5054 = bitcast float %5053 to i32
  %5055 = sub nsw i32 2129859010, %5054
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %5056, %5052
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fcmp fast olt float %5058, 0x3F70101020000000
  br i1 %5059, label %5198, label %5060

; <label>:5060                                    ; preds = %5022, %4925
  %5061 = phi float [ %5058, %5022 ], [ %4919, %4925 ]
  %5062 = fmul fast float %5061, %4928
  %5063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.i32 %5063, 1
  %5065 = extractvalue %dx.types.CBufRet.i32 %5063, 0
  %5066 = add i32 %5065, 0
  %5067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5068 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5067, %dx.types.Handle %102, float %5017, float %5018, float undef, float undef, i32 0, i32 0, i32 undef, float %4980, float %4981, float undef, float %4984, float %4985, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5069 = extractvalue %dx.types.ResRet.f32 %5068, 0
  %5070 = extractvalue %dx.types.ResRet.f32 %5068, 1
  %5071 = extractvalue %dx.types.ResRet.f32 %5068, 2
  %5072 = extractvalue %dx.types.ResRet.f32 %5068, 3
  %5073 = and i32 %5064, 255
  %5074 = uitofp i32 %5073 to float
  %5075 = lshr i32 %5064, 8
  %5076 = and i32 %5075, 255
  %5077 = uitofp i32 %5076 to float
  %5078 = fmul fast float %5072, %5074
  %5079 = fadd fast float %5078, %5077
  %5080 = fmul fast float %5079, 0x3F70101000000000
  %5081 = fadd fast float %5080, 0xBFB99999A0000000
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fmul fast float %5082, 0x3FF1C71C80000000
  %5084 = call float @dx.op.binary.f32(i32 36, float %5080, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5085 = fsub fast float 1.000000e+00, %5083
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fmul fast float %5086, %5069
  %5088 = fmul fast float %5086, %5070
  %5089 = fmul fast float %5086, %5071
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = fmul fast float %5083, %5069
  %5094 = fmul fast float %5083, %5070
  %5095 = fmul fast float %5083, %5071
  %5096 = fadd fast float %5093, %5084
  %5097 = fadd fast float %5094, %5084
  %5098 = fadd fast float %5095, %5084
  %5099 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.i32 %5102, 3
  %5104 = extractvalue %dx.types.CBufRet.i32 %5102, 2
  %5105 = add i32 %5104, 0
  %5106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5107 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5106, %dx.types.Handle %102, float %5017, float %5018, float undef, float undef, i32 0, i32 0, i32 undef, float %4980, float %4981, float undef, float %4984, float %4985, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5111 = extractvalue %dx.types.ResRet.f32 %5107, 3
  %5112 = and i32 %5103, 255
  %5113 = uitofp i32 %5112 to float
  %5114 = lshr i32 %5103, 8
  %5115 = and i32 %5114, 255
  %5116 = uitofp i32 %5115 to float
  %5117 = lshr i32 %5103, 16
  %5118 = and i32 %5117, 255
  %5119 = uitofp i32 %5118 to float
  %5120 = fmul fast float %5119, 0x3F70101000000000
  %5121 = fmul fast float %5108, %5113
  %5122 = fadd fast float %5121, %5116
  %5123 = fmul fast float %5122, 0x3F70101000000000
  %5124 = fadd fast float %5109, -5.000000e-01
  %5125 = fadd fast float %5111, -5.000000e-01
  %5126 = fmul fast float %5124, %5120
  %5127 = fmul fast float %5125, %5120
  %5128 = fadd fast float %5126, 5.000000e-01
  %5129 = fadd fast float %5127, 5.000000e-01
  %5130 = fmul fast float %5128, 2.000000e+00
  %5131 = fadd fast float %5130, -1.000000e+00
  %5132 = fmul fast float %5129, 2.000000e+00
  %5133 = fadd fast float %5132, -1.000000e+00
  %5134 = fadd fast float %5131, %5133
  %5135 = fmul fast float %5134, 5.000000e-01
  %5136 = fsub fast float %5131, %5133
  %5137 = fmul fast float %5136, 5.000000e-01
  %5138 = call float @dx.op.unary.f32(i32 6, float %5135)  ; FAbs(value)
  %5139 = fsub fast float 1.000000e+00, %5138
  %5140 = call float @dx.op.unary.f32(i32 6, float %5137)  ; FAbs(value)
  %5141 = fsub fast float %5139, %5140
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5137, float %5141, float %5135, float %5137, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.unary.f32(i32 25, float %5142)  ; Rsqrt(value)
  %5144 = fmul fast float %5135, %5143
  %5145 = fmul fast float %5137, %5143
  %5146 = select i1 %4973, i32 %4963, i32 %4964
  %5147 = select i1 %4971, i32 %4962, i32 %5146
  %5148 = sitofp i32 %5147 to float
  %5149 = fmul fast float %5141, %5148
  %5150 = fmul fast float %5149, %5143
  %5151 = select i1 %4973, float %5150, float %5145
  %5152 = select i1 %4973, float %5145, float %5150
  %5153 = select i1 %4971, float %5150, float %5144
  %5154 = select i1 %4971, float %5145, float %5151
  %5155 = select i1 %4971, float %5144, float %5152
  %5156 = fsub fast float %5090, %4523
  %5157 = fsub fast float %5091, %4524
  %5158 = fsub fast float %5092, %4525
  %5159 = fmul fast float %5156, %5062
  %5160 = fmul fast float %5157, %5062
  %5161 = fmul fast float %5158, %5062
  %5162 = fadd fast float %5159, %4523
  %5163 = fadd fast float %5160, %4524
  %5164 = fadd fast float %5161, %4525
  %5165 = fsub fast float %5099, %4505
  %5166 = fsub fast float %5100, %4506
  %5167 = fsub fast float %5101, %4507
  %5168 = fmul fast float %5165, %5062
  %5169 = fmul fast float %5166, %5062
  %5170 = fmul fast float %5167, %5062
  %5171 = fadd fast float %5168, %4505
  %5172 = fadd fast float %5169, %4506
  %5173 = fadd fast float %5170, %4507
  %5174 = fadd fast float %5153, %4443
  %5175 = fadd fast float %5154, %4444
  %5176 = fadd fast float %5155, %4445
  %5177 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5174, float %5175, float %5176)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = call float @dx.op.unary.f32(i32 25, float %5177)  ; Rsqrt(value)
  %5179 = fmul fast float %5174, %5178
  %5180 = fmul fast float %5175, %5178
  %5181 = fmul fast float %5176, %5178
  %5182 = fsub fast float %5179, %4443
  %5183 = fsub fast float %5180, %4444
  %5184 = fsub fast float %5181, %4445
  %5185 = fmul fast float %5182, %5062
  %5186 = fmul fast float %5183, %5062
  %5187 = fmul fast float %5184, %5062
  %5188 = fadd fast float %5185, %4443
  %5189 = fadd fast float %5186, %4444
  %5190 = fadd fast float %5187, %4445
  %5191 = call float @dx.op.binary.f32(i32 36, float %4458, float %5110)  ; FMin(a,b)
  %5192 = fsub fast float %5191, %4458
  %5193 = fmul fast float %5192, %5062
  %5194 = fadd fast float %5193, %4458
  %5195 = fsub fast float %5123, %4508
  %5196 = fmul fast float %5195, %5062
  %5197 = fadd fast float %5196, %4508
  br label %5198

; <label>:5198                                    ; preds = %5060, %5022, %4924
  %5199 = phi float [ %5162, %5060 ], [ %4523, %5022 ], [ %4523, %4924 ]
  %5200 = phi float [ %5163, %5060 ], [ %4524, %5022 ], [ %4524, %4924 ]
  %5201 = phi float [ %5164, %5060 ], [ %4525, %5022 ], [ %4525, %4924 ]
  %5202 = phi float [ %5171, %5060 ], [ %4505, %5022 ], [ %4505, %4924 ]
  %5203 = phi float [ %5172, %5060 ], [ %4506, %5022 ], [ %4506, %4924 ]
  %5204 = phi float [ %5173, %5060 ], [ %4507, %5022 ], [ %4507, %4924 ]
  %5205 = phi float [ %5188, %5060 ], [ %4443, %5022 ], [ %4443, %4924 ]
  %5206 = phi float [ %5189, %5060 ], [ %4444, %5022 ], [ %4444, %4924 ]
  %5207 = phi float [ %5190, %5060 ], [ %4445, %5022 ], [ %4445, %4924 ]
  %5208 = phi float [ %5197, %5060 ], [ %4508, %5022 ], [ %4508, %4924 ]
  %5209 = phi float [ %5194, %5060 ], [ %4458, %5022 ], [ %4458, %4924 ]
  br i1 %4922, label %5210, label %5483

; <label>:5210                                    ; preds = %5198
  %5211 = call float @dx.op.unary.f32(i32 23, float %5209)  ; Log(value)
  %5212 = fmul fast float %5211, 4.000000e+00
  %5213 = call float @dx.op.unary.f32(i32 21, float %5212)  ; Exp(value)
  %5214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5214, 0
  %5216 = fmul fast float %5215, %58
  %5217 = fmul fast float %5215, %59
  %5218 = fmul fast float %5215, %60
  %5219 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5220 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5221 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5222 = call float @dx.op.unary.f32(i32 23, float %5219)  ; Log(value)
  %5223 = call float @dx.op.unary.f32(i32 23, float %5220)  ; Log(value)
  %5224 = call float @dx.op.unary.f32(i32 23, float %5221)  ; Log(value)
  %5225 = fmul fast float %5222, 4.000000e+00
  %5226 = fmul fast float %5223, 4.000000e+00
  %5227 = fmul fast float %5224, 4.000000e+00
  %5228 = call float @dx.op.unary.f32(i32 21, float %5225)  ; Exp(value)
  %5229 = call float @dx.op.unary.f32(i32 21, float %5226)  ; Exp(value)
  %5230 = call float @dx.op.unary.f32(i32 21, float %5227)  ; Exp(value)
  %5231 = fadd fast float %5229, %5228
  %5232 = fadd fast float %5231, %5230
  %5233 = fdiv fast float 1.000000e+00, %5232
  %5234 = fmul fast float %5233, %5228
  %5235 = fcmp fast ogt float %67, 0.000000e+00
  %5236 = fcmp fast ogt float %68, 0.000000e+00
  %5237 = fcmp fast ogt float %69, 0.000000e+00
  %5238 = fcmp fast olt float %67, 0.000000e+00
  %5239 = fcmp fast olt float %68, 0.000000e+00
  %5240 = fcmp fast olt float %69, 0.000000e+00
  %5241 = zext i1 %5235 to i32
  %5242 = zext i1 %5236 to i32
  %5243 = zext i1 %5237 to i32
  %5244 = zext i1 %5238 to i32
  %5245 = zext i1 %5239 to i32
  %5246 = zext i1 %5240 to i32
  %5247 = sub nsw i32 %5241, %5244
  %5248 = sub nsw i32 %5242, %5245
  %5249 = sub nsw i32 %5243, %5246
  %5250 = call float @dx.op.unary.f32(i32 83, float %5216)  ; DerivCoarseX(value)
  %5251 = call float @dx.op.unary.f32(i32 83, float %5217)  ; DerivCoarseX(value)
  %5252 = call float @dx.op.unary.f32(i32 83, float %5218)  ; DerivCoarseX(value)
  %5253 = call float @dx.op.unary.f32(i32 84, float %5216)  ; DerivCoarseY(value)
  %5254 = call float @dx.op.unary.f32(i32 84, float %5217)  ; DerivCoarseY(value)
  %5255 = call float @dx.op.unary.f32(i32 84, float %5218)  ; DerivCoarseY(value)
  %5256 = fcmp fast ole float %291, %5234
  %5257 = fmul fast float %5233, %5231
  %5258 = fcmp fast ole float %291, %5257
  %5259 = select i1 %5258, float %5218, float %5216
  %5260 = select i1 %5258, float %5216, float %5217
  %5261 = select i1 %5256, float %5217, float %5259
  %5262 = select i1 %5256, float %5218, float %5260
  %5263 = select i1 %5258, float %5252, float %5250
  %5264 = select i1 %5258, float %5250, float %5251
  %5265 = select i1 %5256, float %5251, float %5263
  %5266 = select i1 %5256, float %5252, float %5264
  %5267 = select i1 %5258, float %5255, float %5253
  %5268 = select i1 %5258, float %5253, float %5254
  %5269 = select i1 %5256, float %5254, float %5267
  %5270 = select i1 %5256, float %5255, float %5268
  %5271 = call float @dx.op.unary.f32(i32 27, float %5261)  ; Round_ni(value)
  %5272 = call float @dx.op.unary.f32(i32 27, float %5262)  ; Round_ni(value)
  %5273 = fptosi float %5271 to i32
  %5274 = fptosi float %5272 to i32
  %5275 = xor i32 %5274, %5273
  %5276 = sitofp i32 %5275 to float
  %5277 = fptosi float %5276 to i32
  %5278 = sitofp i32 %5277 to float
  %5279 = fmul fast float %5278, 0x3FE3C6EF40000000
  %5280 = frem fast float %5271, 2.560000e+02
  %5281 = frem fast float %5272, 2.560000e+02
  %5282 = fptoui float %5280 to i32
  %5283 = fptoui float %5281 to i32
  %5284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5282, i32 %5283, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5288 = fadd fast float %5285, %5279
  %5289 = fadd fast float %5286, %5279
  %5290 = fadd fast float %5287, %5279
  %5291 = call float @dx.op.unary.f32(i32 22, float %5288)  ; Frc(value)
  %5292 = call float @dx.op.unary.f32(i32 22, float %5289)  ; Frc(value)
  %5293 = call float @dx.op.unary.f32(i32 22, float %5290)  ; Frc(value)
  %5294 = fmul fast float %5293, 0x401921FB60000000
  %5295 = call float @dx.op.unary.f32(i32 13, float %5294)  ; Sin(value)
  %5296 = call float @dx.op.unary.f32(i32 12, float %5294)  ; Cos(value)
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = fmul fast float %5296, %5261
  %5299 = call float @dx.op.tertiary.f32(i32 46, float %5295, float %5262, float %5298)  ; FMad(a,b,c)
  %5300 = fmul fast float %5295, %5261
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5262, float %5300)  ; FMad(a,b,c)
  %5302 = fadd fast float %5299, %5291
  %5303 = fadd fast float %5301, %5292
  %5304 = extractvalue %dx.types.CBufRet.f32 %5214, 3
  %5305 = bitcast float %5304 to i32
  %5306 = icmp eq i32 %5305, 0
  br i1 %5306, label %5345, label %5307

; <label>:5307                                    ; preds = %5210
  %5308 = add i32 %5305, 0
  %5309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5309, %dx.types.Handle %103, float %5302, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float %5265, float %5266, float undef, float %5269, float %5270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5311 = extractvalue %dx.types.ResRet.f32 %5310, 0
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5315 = fsub fast float 1.000000e+00, %4920
  %5316 = call float @dx.op.binary.f32(i32 35, float %5315, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5317 = bitcast float %4920 to i32
  %5318 = sitofp i32 %5317 to float
  %5319 = fadd fast float %5318, 0xC1CFBF8940000000
  %5320 = fmul fast float %5314, %5319
  %5321 = fadd fast float %5320, 0x41CFBF8940000000
  %5322 = fptosi float %5321 to i32
  %5323 = bitcast i32 %5322 to float
  %5324 = bitcast float %5316 to i32
  %5325 = sitofp i32 %5324 to float
  %5326 = fadd fast float %5325, 0xC1CFBF8940000000
  %5327 = fmul fast float %5326, %5314
  %5328 = fadd fast float %5327, 0x41CFBF8940000000
  %5329 = fptosi float %5328 to i32
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5323, %5313
  %5332 = fmul fast float %5330, %5313
  %5333 = fsub fast float %5316, %5331
  %5334 = fadd fast float %5332, %5316
  %5335 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5336 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5337 = fsub fast float %5311, %5335
  %5338 = fsub fast float %5336, %5335
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, %5337
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fcmp fast olt float %5343, 0x3F70101020000000
  br i1 %5344, label %5483, label %5345

; <label>:5345                                    ; preds = %5307, %5210
  %5346 = phi float [ %5343, %5307 ], [ %4920, %5210 ]
  %5347 = fmul fast float %5346, %5213
  %5348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.i32 %5348, 1
  %5350 = extractvalue %dx.types.CBufRet.i32 %5348, 0
  %5351 = add i32 %5350, 0
  %5352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5353 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5352, %dx.types.Handle %102, float %5302, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float %5265, float %5266, float undef, float %5269, float %5270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.ResRet.f32 %5353, 1
  %5356 = extractvalue %dx.types.ResRet.f32 %5353, 2
  %5357 = extractvalue %dx.types.ResRet.f32 %5353, 3
  %5358 = and i32 %5349, 255
  %5359 = uitofp i32 %5358 to float
  %5360 = lshr i32 %5349, 8
  %5361 = and i32 %5360, 255
  %5362 = uitofp i32 %5361 to float
  %5363 = fmul fast float %5357, %5359
  %5364 = fadd fast float %5363, %5362
  %5365 = fmul fast float %5364, 0x3F70101000000000
  %5366 = fadd fast float %5365, 0xBFB99999A0000000
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fmul fast float %5367, 0x3FF1C71C80000000
  %5369 = call float @dx.op.binary.f32(i32 36, float %5365, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5370 = fsub fast float 1.000000e+00, %5368
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5372 = fmul fast float %5371, %5354
  %5373 = fmul fast float %5371, %5355
  %5374 = fmul fast float %5371, %5356
  %5375 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5376 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5378 = fmul fast float %5368, %5354
  %5379 = fmul fast float %5368, %5355
  %5380 = fmul fast float %5368, %5356
  %5381 = fadd fast float %5378, %5369
  %5382 = fadd fast float %5379, %5369
  %5383 = fadd fast float %5380, %5369
  %5384 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5385 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5386 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.i32 %5387, 3
  %5389 = extractvalue %dx.types.CBufRet.i32 %5387, 2
  %5390 = add i32 %5389, 0
  %5391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5392 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5391, %dx.types.Handle %102, float %5302, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float %5265, float %5266, float undef, float %5269, float %5270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5393 = extractvalue %dx.types.ResRet.f32 %5392, 0
  %5394 = extractvalue %dx.types.ResRet.f32 %5392, 1
  %5395 = extractvalue %dx.types.ResRet.f32 %5392, 2
  %5396 = extractvalue %dx.types.ResRet.f32 %5392, 3
  %5397 = and i32 %5388, 255
  %5398 = uitofp i32 %5397 to float
  %5399 = lshr i32 %5388, 8
  %5400 = and i32 %5399, 255
  %5401 = uitofp i32 %5400 to float
  %5402 = lshr i32 %5388, 16
  %5403 = and i32 %5402, 255
  %5404 = uitofp i32 %5403 to float
  %5405 = fmul fast float %5404, 0x3F70101000000000
  %5406 = fmul fast float %5393, %5398
  %5407 = fadd fast float %5406, %5401
  %5408 = fmul fast float %5407, 0x3F70101000000000
  %5409 = fadd fast float %5394, -5.000000e-01
  %5410 = fadd fast float %5396, -5.000000e-01
  %5411 = fmul fast float %5409, %5405
  %5412 = fmul fast float %5410, %5405
  %5413 = fadd fast float %5411, 5.000000e-01
  %5414 = fadd fast float %5412, 5.000000e-01
  %5415 = fmul fast float %5413, 2.000000e+00
  %5416 = fadd fast float %5415, -1.000000e+00
  %5417 = fmul fast float %5414, 2.000000e+00
  %5418 = fadd fast float %5417, -1.000000e+00
  %5419 = fadd fast float %5416, %5418
  %5420 = fmul fast float %5419, 5.000000e-01
  %5421 = fsub fast float %5416, %5418
  %5422 = fmul fast float %5421, 5.000000e-01
  %5423 = call float @dx.op.unary.f32(i32 6, float %5420)  ; FAbs(value)
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5426 = fsub fast float %5424, %5425
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5422, float %5426, float %5420, float %5422, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.unary.f32(i32 25, float %5427)  ; Rsqrt(value)
  %5429 = fmul fast float %5420, %5428
  %5430 = fmul fast float %5422, %5428
  %5431 = select i1 %5258, i32 %5248, i32 %5249
  %5432 = select i1 %5256, i32 %5247, i32 %5431
  %5433 = sitofp i32 %5432 to float
  %5434 = fmul fast float %5426, %5433
  %5435 = fmul fast float %5434, %5428
  %5436 = select i1 %5258, float %5435, float %5430
  %5437 = select i1 %5258, float %5430, float %5435
  %5438 = select i1 %5256, float %5435, float %5429
  %5439 = select i1 %5256, float %5430, float %5436
  %5440 = select i1 %5256, float %5429, float %5437
  %5441 = fsub fast float %5375, %5199
  %5442 = fsub fast float %5376, %5200
  %5443 = fsub fast float %5377, %5201
  %5444 = fmul fast float %5441, %5347
  %5445 = fmul fast float %5442, %5347
  %5446 = fmul fast float %5443, %5347
  %5447 = fadd fast float %5444, %5199
  %5448 = fadd fast float %5445, %5200
  %5449 = fadd fast float %5446, %5201
  %5450 = fsub fast float %5384, %5202
  %5451 = fsub fast float %5385, %5203
  %5452 = fsub fast float %5386, %5204
  %5453 = fmul fast float %5450, %5347
  %5454 = fmul fast float %5451, %5347
  %5455 = fmul fast float %5452, %5347
  %5456 = fadd fast float %5453, %5202
  %5457 = fadd fast float %5454, %5203
  %5458 = fadd fast float %5455, %5204
  %5459 = fadd fast float %5438, %5205
  %5460 = fadd fast float %5439, %5206
  %5461 = fadd fast float %5440, %5207
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 25, float %5462)  ; Rsqrt(value)
  %5464 = fmul fast float %5459, %5463
  %5465 = fmul fast float %5460, %5463
  %5466 = fmul fast float %5461, %5463
  %5467 = fsub fast float %5464, %5205
  %5468 = fsub fast float %5465, %5206
  %5469 = fsub fast float %5466, %5207
  %5470 = fmul fast float %5467, %5347
  %5471 = fmul fast float %5468, %5347
  %5472 = fmul fast float %5469, %5347
  %5473 = fadd fast float %5470, %5205
  %5474 = fadd fast float %5471, %5206
  %5475 = fadd fast float %5472, %5207
  %5476 = call float @dx.op.binary.f32(i32 36, float %5209, float %5395)  ; FMin(a,b)
  %5477 = fsub fast float %5476, %5209
  %5478 = fmul fast float %5477, %5347
  %5479 = fadd fast float %5478, %5209
  %5480 = fsub fast float %5408, %5208
  %5481 = fmul fast float %5480, %5347
  %5482 = fadd fast float %5481, %5208
  br label %5483

; <label>:5483                                    ; preds = %5345, %5307, %5198, %4914
  %5484 = phi float [ %5447, %5345 ], [ %5199, %5307 ], [ %5199, %5198 ], [ %4523, %4914 ]
  %5485 = phi float [ %5448, %5345 ], [ %5200, %5307 ], [ %5200, %5198 ], [ %4524, %4914 ]
  %5486 = phi float [ %5449, %5345 ], [ %5201, %5307 ], [ %5201, %5198 ], [ %4525, %4914 ]
  %5487 = phi float [ %5456, %5345 ], [ %5202, %5307 ], [ %5202, %5198 ], [ %4505, %4914 ]
  %5488 = phi float [ %5457, %5345 ], [ %5203, %5307 ], [ %5203, %5198 ], [ %4506, %4914 ]
  %5489 = phi float [ %5458, %5345 ], [ %5204, %5307 ], [ %5204, %5198 ], [ %4507, %4914 ]
  %5490 = phi float [ %5473, %5345 ], [ %5205, %5307 ], [ %5205, %5198 ], [ %4443, %4914 ]
  %5491 = phi float [ %5474, %5345 ], [ %5206, %5307 ], [ %5206, %5198 ], [ %4444, %4914 ]
  %5492 = phi float [ %5475, %5345 ], [ %5207, %5307 ], [ %5207, %5198 ], [ %4445, %4914 ]
  %5493 = phi float [ %5482, %5345 ], [ %5208, %5307 ], [ %5208, %5198 ], [ %4508, %4914 ]
  %5494 = phi float [ %5479, %5345 ], [ %5209, %5307 ], [ %5209, %5198 ], [ %4458, %4914 ]
  %5495 = fcmp fast une float %4918, 0.000000e+00
  %5496 = fsub fast float -0.000000e+00, %216
  %5497 = fsub fast float -0.000000e+00, %217
  %5498 = fsub fast float -0.000000e+00, %218
  br i1 %5495, label %5499, label %5660

; <label>:5499                                    ; preds = %5483
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fmul fast float %4918, 2.500000e+00
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fmul fast float %4918, 0x4013FFFFE0000000
  %5504 = fadd fast float %5503, 0xBFFFFFFFE0000000
  %5505 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5506 = fmul fast float %4918, 0x4004000020000000
  %5507 = fadd fast float %5506, 0xBFF8000040000000
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = fmul fast float %4487, 1.000000e+01
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5510, 2.000000e+00
  %5512 = fsub fast float 3.000000e+00, %5511
  %5513 = fmul fast float %5510, %5510
  %5514 = fmul fast float %5513, %5512
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = fsub fast float 0x3FE3333340000000, %5493
  %5517 = fmul fast float %5516, 0x400AAAAAA0000000
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = fmul fast float %5515, %5518
  %5520 = fmul fast float %5484, 0x3FEA2B8620000000
  %5521 = fmul fast float %5485, 0x3FEA2B8620000000
  %5522 = fmul fast float %5486, 0x3FEA2B8620000000
  %5523 = fadd fast float %5520, 0x3FC81DFBA0000000
  %5524 = fmul fast float %5523, %5484
  %5525 = fadd fast float %5524, 0x3F910E6020000000
  %5526 = fadd fast float %5521, 0x3FC81DFBA0000000
  %5527 = fmul fast float %5526, %5485
  %5528 = fadd fast float %5527, 0x3F910E6020000000
  %5529 = fadd fast float %5522, 0x3FC81DFBA0000000
  %5530 = fmul fast float %5529, %5486
  %5531 = fadd fast float %5530, 0x3F910E6020000000
  %5532 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5533 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5535 = fsub fast float %5532, %5484
  %5536 = fsub fast float %5533, %5485
  %5537 = fsub fast float %5534, %5486
  %5538 = fmul fast float %5535, %5502
  %5539 = fmul fast float %5538, %5519
  %5540 = fmul fast float %5536, %5502
  %5541 = fmul fast float %5540, %5519
  %5542 = fmul fast float %5537, %5502
  %5543 = fmul fast float %5542, %5519
  %5544 = fadd fast float %5539, %5484
  %5545 = fadd fast float %5541, %5485
  %5546 = fadd fast float %5543, %5486
  %5547 = fmul fast float %5494, %5494
  %5548 = fmul fast float %5547, %5547
  %5549 = fadd fast float %5505, 1.000000e+00
  %5550 = fsub fast float %5549, %5519
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fsub fast float 1.000000e+00, %5548
  %5555 = call float @dx.op.binary.f32(i32 36, float %5551, float %5554)  ; FMin(a,b)
  %5556 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5557 = call float @dx.op.binary.f32(i32 35, float %5555, float %5556)  ; FMax(a,b)
  %5558 = fadd fast float %5553, 0xBFE4CCCCC0000000
  %5559 = fmul fast float %5558, 0x4006DB6DA0000000
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fmul fast float %5560, 2.000000e+00
  %5562 = fsub fast float 3.000000e+00, %5561
  %5563 = bitcast float %5487 to i32
  %5564 = ashr i32 %5563, 1
  %5565 = add nsw i32 %5564, 532487669
  %5566 = bitcast i32 %5565 to float
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = bitcast float %5567 to i32
  %5569 = sub nsw i32 2129859010, %5568
  %5570 = bitcast i32 %5569 to float
  %5571 = fmul fast float %5570, 2.000000e+00
  %5572 = bitcast float %5488 to i32
  %5573 = ashr i32 %5572, 1
  %5574 = add nsw i32 %5573, 532487669
  %5575 = bitcast i32 %5574 to float
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = bitcast float %5576 to i32
  %5578 = sub nsw i32 2129859010, %5577
  %5579 = bitcast i32 %5578 to float
  %5580 = fmul fast float %5579, 2.000000e+00
  %5581 = bitcast float %5489 to i32
  %5582 = ashr i32 %5581, 1
  %5583 = add nsw i32 %5582, 532487669
  %5584 = bitcast i32 %5583 to float
  %5585 = fsub fast float 1.000000e+00, %5584
  %5586 = bitcast float %5585 to i32
  %5587 = sub nsw i32 2129859010, %5586
  %5588 = bitcast i32 %5587 to float
  %5589 = fmul fast float %5588, 2.000000e+00
  %5590 = fsub fast float 0x4002A9FBE0000000, %5571
  %5591 = fadd fast float %5571, 0x3FD54FDF00000000
  %5592 = bitcast float %5591 to i32
  %5593 = sub nsw i32 2129859010, %5592
  %5594 = bitcast i32 %5593 to float
  %5595 = fmul fast float %5594, %5590
  %5596 = fmul fast float %5595, %5595
  %5597 = fsub fast float 0x4002A9FBE0000000, %5580
  %5598 = fadd fast float %5580, 0x3FD54FDF00000000
  %5599 = bitcast float %5598 to i32
  %5600 = sub nsw i32 2129859010, %5599
  %5601 = bitcast i32 %5600 to float
  %5602 = fmul fast float %5601, %5597
  %5603 = fmul fast float %5602, %5602
  %5604 = fsub fast float 0x4002A9FBE0000000, %5589
  %5605 = fadd fast float %5589, 0x3FD54FDF00000000
  %5606 = bitcast float %5605 to i32
  %5607 = sub nsw i32 2129859010, %5606
  %5608 = bitcast i32 %5607 to float
  %5609 = fmul fast float %5608, %5604
  %5610 = fmul fast float %5609, %5609
  %5611 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5596)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5603)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5610)  ; FMax(a,b)
  %5614 = fsub fast float 1.000000e+00, %5500
  %5615 = fadd fast float %5614, %5515
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fsub fast float 1.000000e+00, %4899
  %5618 = fmul fast float %5557, %5617
  %5619 = fmul fast float %5560, %5560
  %5620 = fmul fast float %5619, %5618
  %5621 = fmul fast float %5620, %5562
  %5622 = fmul fast float %5617, 0xBFE99999A0000000
  %5623 = fmul fast float %5622, %5502
  %5624 = fmul fast float %5623, %5519
  %5625 = fadd fast float %5624, 1.000000e+00
  %5626 = fadd fast float %5493, -1.000000e+00
  %5627 = fmul fast float %5625, %5626
  %5628 = fadd fast float %5627, 1.000000e+00
  %5629 = fsub fast float %5611, %5487
  %5630 = fsub fast float %5612, %5488
  %5631 = fsub fast float %5613, %5489
  %5632 = fmul fast float %5621, %5629
  %5633 = fmul fast float %5621, %5630
  %5634 = fmul fast float %5621, %5631
  %5635 = fadd fast float %5632, %5487
  %5636 = fadd fast float %5633, %5488
  %5637 = fadd fast float %5634, %5489
  %5638 = fsub fast float %113, %5490
  %5639 = fsub fast float %114, %5491
  %5640 = fsub fast float %115, %5492
  %5641 = fmul fast float %5621, %5638
  %5642 = fmul fast float %5621, %5639
  %5643 = fmul fast float %5621, %5640
  %5644 = fadd fast float %5641, %5490
  %5645 = fadd fast float %5642, %5491
  %5646 = fadd fast float %5643, %5492
  %5647 = fmul fast float %5621, %5616
  %5648 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = fmul fast float %5647, %5649
  %5651 = fadd fast float %5650, %5648
  %5652 = fsub fast float 1.000000e+00, %5494
  %5653 = fmul fast float %5621, %5652
  %5654 = fadd fast float %5653, %5494
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5645, float %5646, float %5644, float %5645, float %5646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 25, float %5655)  ; Rsqrt(value)
  %5657 = fmul fast float %5644, %5656
  %5658 = fmul fast float %5645, %5656
  %5659 = fmul fast float %5646, %5656
  br label %5660

; <label>:5660                                    ; preds = %5499, %5483
  %5661 = phi float [ %5544, %5499 ], [ %5484, %5483 ]
  %5662 = phi float [ %5545, %5499 ], [ %5485, %5483 ]
  %5663 = phi float [ %5546, %5499 ], [ %5486, %5483 ]
  %5664 = phi float [ %5635, %5499 ], [ %5487, %5483 ]
  %5665 = phi float [ %5636, %5499 ], [ %5488, %5483 ]
  %5666 = phi float [ %5637, %5499 ], [ %5489, %5483 ]
  %5667 = phi float [ %5657, %5499 ], [ %5490, %5483 ]
  %5668 = phi float [ %5658, %5499 ], [ %5491, %5483 ]
  %5669 = phi float [ %5659, %5499 ], [ %5492, %5483 ]
  %5670 = phi float [ %5651, %5499 ], [ %5493, %5483 ]
  %5671 = phi float [ %5654, %5499 ], [ %5494, %5483 ]
  %5672 = fsub fast float -0.000000e+00, %195
  %5673 = select i1 %280, float 0.000000e+00, float %5666
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = fmul fast float %5676, 2.000000e+00
  %5678 = fmul fast float %5677, %5667
  %5679 = fmul fast float %5677, %5668
  %5680 = fmul fast float %5677, %5669
  %5681 = fsub fast float %216, %5678
  %5682 = fsub fast float %217, %5679
  %5683 = fsub fast float %218, %5680
  %5684 = call float @dx.op.binary.f32(i32 36, float %5671, float 1.000000e+00)  ; FMin(a,b)
  %5685 = fsub fast float 1.000000e+00, %5671
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = fsub fast float 1.000000e+00, %77
  %5690 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = call float @dx.op.binary.f32(i32 35, float %5690, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5692 = fdiv fast float %5689, %5691
  %5693 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, 5.000000e-01
  %5696 = fadd fast float %5695, 5.000000e-01
  %5697 = fmul fast float %5696, %77
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = fmul fast float %5699, %5692
  %5701 = fadd fast float %5697, %5700
  %5702 = fsub fast float 5.000000e-01, %5695
  %5703 = fmul fast float %5702, %5661
  %5704 = fmul fast float %5702, %5662
  %5705 = fmul fast float %5702, %5663
  %5706 = fadd fast float %5701, %5703
  %5707 = fadd fast float %5701, %5704
  %5708 = fadd fast float %5701, %5705
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = fmul fast float %5710, 5.000000e-01
  %5712 = fadd fast float %5711, 5.000000e-01
  %5713 = fmul fast float %5712, %77
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fmul fast float %5715, %5692
  %5717 = fadd fast float %5713, %5716
  %5718 = fsub fast float 5.000000e-01, %5711
  %5719 = fmul fast float %5718, %5661
  %5720 = fmul fast float %5718, %5662
  %5721 = fmul fast float %5718, %5663
  %5722 = fadd fast float %5717, %5719
  %5723 = fadd fast float %5717, %5720
  %5724 = fadd fast float %5717, %5721
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5727 = call float @dx.op.binary.f32(i32 36, float %5661, float %5726)  ; FMin(a,b)
  %5728 = fsub fast float 1.000000e+00, %5684
  %5729 = fmul fast float %5727, %5728
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = bitcast float %5730 to i32
  %5732 = sub nsw i32 2129859010, %5731
  %5733 = bitcast i32 %5732 to float
  %5734 = call float @dx.op.binary.f32(i32 36, float %5662, float %5726)  ; FMin(a,b)
  %5735 = fmul fast float %5734, %5728
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = bitcast float %5736 to i32
  %5738 = sub nsw i32 2129859010, %5737
  %5739 = bitcast i32 %5738 to float
  %5740 = call float @dx.op.binary.f32(i32 36, float %5663, float %5726)  ; FMin(a,b)
  %5741 = fmul fast float %5740, %5728
  %5742 = fsub fast float 1.000000e+00, %5741
  %5743 = bitcast float %5742 to i32
  %5744 = sub nsw i32 2129859010, %5743
  %5745 = bitcast i32 %5744 to float
  %5746 = fmul fast float %5684, %78
  %5747 = fmul fast float %5746, %5706
  %5748 = fmul fast float %5747, %5733
  %5749 = fmul fast float %5684, %79
  %5750 = fmul fast float %5749, %5707
  %5751 = fmul fast float %5750, %5739
  %5752 = fmul fast float %5684, %80
  %5753 = fmul fast float %5752, %5708
  %5754 = fmul fast float %5753, %5745
  %5755 = call float @dx.op.binary.f32(i32 36, float %5664, float %5726)  ; FMin(a,b)
  %5756 = fmul fast float %5755, %5728
  %5757 = fsub fast float 1.000000e+00, %5756
  %5758 = bitcast float %5757 to i32
  %5759 = sub nsw i32 2129859010, %5758
  %5760 = bitcast i32 %5759 to float
  %5761 = call float @dx.op.binary.f32(i32 36, float %5665, float %5726)  ; FMin(a,b)
  %5762 = fmul fast float %5761, %5728
  %5763 = fsub fast float 1.000000e+00, %5762
  %5764 = bitcast float %5763 to i32
  %5765 = sub nsw i32 2129859010, %5764
  %5766 = bitcast i32 %5765 to float
  %5767 = call float @dx.op.binary.f32(i32 36, float %5673, float %5726)  ; FMin(a,b)
  %5768 = fmul fast float %5767, %5728
  %5769 = fsub fast float 1.000000e+00, %5768
  %5770 = bitcast float %5769 to i32
  %5771 = sub nsw i32 2129859010, %5770
  %5772 = bitcast i32 %5771 to float
  %5773 = fmul fast float %5746, %5722
  %5774 = fmul fast float %5773, %5760
  %5775 = fmul fast float %5749, %5723
  %5776 = fmul fast float %5775, %5766
  %5777 = fmul fast float %5752, %5724
  %5778 = fmul fast float %5777, %5772
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5751, float %5754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = select i1 %280, float 0.000000e+00, float %5748
  %5781 = select i1 %280, float %5779, float %5751
  %5782 = select i1 %280, float 0.000000e+00, float %5754
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5774, float %5776, float %5778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = select i1 %280, float 0.000000e+00, float %5774
  %5785 = select i1 %280, float %5783, float %5776
  %5786 = select i1 %280, float 0.000000e+00, float %5778
  %5787 = fmul fast float %3829, %3829
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fmul fast float %5675, 9.843750e-01
  %5790 = fmul fast float %5670, 9.843750e-01
  %5791 = fadd fast float %5789, 7.812500e-03
  %5792 = fadd fast float %5790, 7.812500e-03
  %5793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5791, float %5792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5794 = extractvalue %dx.types.ResRet.f32 %5793, 0
  %5795 = extractvalue %dx.types.ResRet.f32 %5793, 1
  %5796 = extractvalue %dx.types.ResRet.f32 %5793, 2
  %5797 = extractvalue %dx.types.ResRet.f32 %5793, 3
  %5798 = fsub fast float 1.000000e+00, %5788
  %5799 = fsub fast float %5796, %5794
  %5800 = fsub fast float %5797, %5795
  %5801 = fmul fast float %5799, %5798
  %5802 = fmul fast float %5800, %5798
  %5803 = fadd fast float %5801, %5794
  %5804 = fadd fast float %5802, %5795
  %5805 = fmul fast float %5803, %5664
  %5806 = fmul fast float %5803, %5665
  %5807 = fmul fast float %5803, %5673
  %5808 = fadd fast float %5805, %5804
  %5809 = fadd fast float %5806, %5804
  %5810 = fadd fast float %5807, %5804
  %5811 = fcmp fast ogt float %4459, 0.000000e+00
  br i1 %5811, label %5812, label %5838

; <label>:5812                                    ; preds = %5660
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4459, float %5675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 1
  %5816 = extractvalue %dx.types.ResRet.f32 %5813, 2
  %5817 = fadd fast float %5814, -5.000000e-01
  %5818 = fadd fast float %5815, -5.000000e-01
  %5819 = fadd fast float %5816, -5.000000e-01
  %5820 = fsub fast float 1.000000e+00, %5664
  %5821 = fsub fast float 1.000000e+00, %5665
  %5822 = fsub fast float 1.000000e+00, %5673
  %5823 = fmul fast float %5664, 4.000000e+00
  %5824 = fmul fast float %5823, %5820
  %5825 = fmul fast float %5824, %5817
  %5826 = fmul fast float %5665, 4.000000e+00
  %5827 = fmul fast float %5826, %5821
  %5828 = fmul fast float %5827, %5818
  %5829 = fmul fast float %5673, 4.000000e+00
  %5830 = fmul fast float %5829, %5822
  %5831 = fmul fast float %5830, %5819
  %5832 = fadd fast float %5825, %5808
  %5833 = fadd fast float %5828, %5809
  %5834 = fadd fast float %5831, %5810
  %5835 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5836 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5837 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  br label %5838

; <label>:5838                                    ; preds = %5812, %5660
  %5839 = phi float [ %5835, %5812 ], [ %5808, %5660 ]
  %5840 = phi float [ %5836, %5812 ], [ %5809, %5660 ]
  %5841 = phi float [ %5837, %5812 ], [ %5810, %5660 ]
  %5842 = call float @dx.op.binary.f32(i32 35, float %5840, float %5841)  ; FMax(a,b)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5839, float %5842)  ; FMax(a,b)
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = fmul fast float %5844, %5780
  %5846 = fmul fast float %5844, %5781
  %5847 = fmul fast float %5844, %5782
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fcmp fast ogt float %5848, 0x3E7FF19E20000000
  %5850 = fdiv fast float 1.000000e+00, %5848
  %5851 = select i1 %5849, float %5850, float 0.000000e+00
  %5852 = fmul fast float %5851, %5661
  %5853 = fmul fast float %5851, %5662
  %5854 = fmul fast float %5851, %5663
  %5855 = fadd fast float %5852, -1.000000e+00
  %5856 = fadd fast float %5853, -1.000000e+00
  %5857 = fadd fast float %5854, -1.000000e+00
  %5858 = fmul fast float %5855, 5.000000e-01
  %5859 = fmul fast float %5856, 5.000000e-01
  %5860 = fmul fast float %5857, 5.000000e-01
  %5861 = fadd fast float %5858, 1.000000e+00
  %5862 = fadd fast float %5859, 1.000000e+00
  %5863 = fadd fast float %5860, 1.000000e+00
  %5864 = call float @dx.op.binary.f32(i32 35, float %5675, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5865 = fdiv fast float %3829, %5864
  %5866 = fcmp fast olt float %4509, 1.270000e+02
  %5867 = fcmp fast olt float %4510, 1.270000e+02
  %5868 = fcmp fast olt float %4511, 1.270000e+02
  %5869 = fmul fast float %4509, 0xBFF7154760000000
  %5870 = fmul fast float %5869, %5865
  %5871 = fmul fast float %4510, 0xBFF7154760000000
  %5872 = fmul fast float %5871, %5865
  %5873 = fmul fast float %4511, 0xBFF7154760000000
  %5874 = fmul fast float %5873, %5865
  %5875 = call float @dx.op.unary.f32(i32 21, float %5870)  ; Exp(value)
  %5876 = call float @dx.op.unary.f32(i32 21, float %5872)  ; Exp(value)
  %5877 = call float @dx.op.unary.f32(i32 21, float %5874)  ; Exp(value)
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5880 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5881 = select i1 %5866, float %5878, float 0.000000e+00
  %5882 = select i1 %5867, float %5879, float 0.000000e+00
  %5883 = select i1 %5868, float %5880, float 0.000000e+00
  %5884 = fmul fast float %5881, %5844
  %5885 = fmul fast float %5882, %5844
  %5886 = fmul fast float %5883, %5844
  %5887 = fadd fast float %5884, -1.000000e+00
  %5888 = fadd fast float %5885, -1.000000e+00
  %5889 = fadd fast float %5886, -1.000000e+00
  %5890 = fmul fast float %5839, %5784
  %5891 = fmul fast float %5840, %5785
  %5892 = fmul fast float %5841, %5786
  %5893 = fsub fast float 1.000000e+00, %5675
  %5894 = bitcast float %5893 to i32
  %5895 = sitofp i32 %5894 to float
  %5896 = fmul fast float %5895, 5.000000e+00
  %5897 = fadd fast float %5896, 0xC1EFBF8940000000
  %5898 = fptosi float %5897 to i32
  %5899 = bitcast i32 %5898 to float
  %5900 = fmul fast float %5899, %4460
  %5901 = fmul fast float %5780, %5900
  %5902 = fmul fast float %5901, %5844
  %5903 = fmul fast float %5902, %5861
  %5904 = fmul fast float %5781, %5900
  %5905 = fmul fast float %5904, %5844
  %5906 = fmul fast float %5905, %5862
  %5907 = fmul fast float %5782, %5900
  %5908 = fmul fast float %5907, %5844
  %5909 = fmul fast float %5908, %5863
  %5910 = fmul fast float %5845, %4486
  %5911 = fmul fast float %5846, %4486
  %5912 = fmul fast float %5847, %4486
  %5913 = fadd fast float %5890, %4449
  %5914 = fadd fast float %5913, %5903
  %5915 = fmul fast float %5914, %4486
  %5916 = fadd fast float %5891, %4450
  %5917 = fadd fast float %5916, %5906
  %5918 = fmul fast float %5917, %4486
  %5919 = fadd fast float %5892, %4451
  %5920 = fadd fast float %5919, %5909
  %5921 = fmul fast float %5920, %4486
  %5922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5922, 3
  %5924 = fcmp fast oeq float %5923, 0.000000e+00
  br i1 %5924, label %7021, label %5925

; <label>:5925                                    ; preds = %5838
  %5926 = extractvalue %dx.types.CBufRet.f32 %5922, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5922, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5922, 2
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5932 = extractvalue %dx.types.CBufRet.f32 %5929, 2
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5931, float %5932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = select i1 %280, float %5934, float %5930
  %5938 = select i1 %280, float %5936, float %5931
  %5939 = select i1 %280, float %5935, float %5932
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5942 = fmul fast float %5941, %113
  %5943 = fmul fast float %5941, %114
  %5944 = fmul fast float %5941, %115
  %5945 = fadd fast float %5942, %193
  %5946 = fadd fast float %5943, %194
  %5947 = fadd fast float %5944, %195
  %5948 = fcmp fast olt float %5923, 0.000000e+00
  br i1 %5948, label %6588, label %5949

; <label>:5949                                    ; preds = %5925
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.CBufRet.f32 %5955, 3
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5965 = fmul fast float %5951, %5945
  %5966 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %5952, float %5965)  ; FMad(a,b,c)
  %5967 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %5953, float %5966)  ; FMad(a,b,c)
  %5968 = fadd fast float %5967, %5954
  %5969 = fmul fast float %5956, %5945
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %5957, float %5969)  ; FMad(a,b,c)
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %5958, float %5970)  ; FMad(a,b,c)
  %5972 = fadd fast float %5971, %5959
  %5973 = fmul fast float %5961, %5945
  %5974 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %5962, float %5973)  ; FMad(a,b,c)
  %5975 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %5963, float %5974)  ; FMad(a,b,c)
  %5976 = fadd fast float %5975, %5964
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = fcmp fast une float %5978, 0.000000e+00
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %5984 = fmul fast float %5983, %5968
  %5985 = fmul fast float %5983, %5972
  %5986 = fadd fast float %5984, %5981
  %5987 = fadd fast float %5985, %5982
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.CBufRet.f32 %5988, 3
  %5992 = fmul fast float %5991, %5968
  %5993 = fmul fast float %5991, %5972
  %5994 = fadd fast float %5992, %5989
  %5995 = fadd fast float %5993, %5990
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5998 = fsub fast float %5997, %5976
  %5999 = extractvalue %dx.types.CBufRet.f32 %5996, 2
  %6000 = fmul fast float %5998, %5999
  %6001 = fsub fast float 1.000000e+00, %6000
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  br i1 %5979, label %6063, label %6003

; <label>:6003                                    ; preds = %5949
  %6004 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 2
  %6007 = fadd fast float %6006, %6004
  %6008 = fcmp fast ogt float %6007, 0.000000e+00
  br i1 %6008, label %6009, label %6033

; <label>:6009                                    ; preds = %6003
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.CBufRet.f32 %6010, 1
  %6013 = fsub fast float %5994, %6011
  %6014 = fsub fast float %5995, %6012
  %6015 = fcmp fast olt float %6013, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6021 = extractvalue %dx.types.CBufRet.f32 %6017, 3
  %6022 = select i1 %6015, float %6018, float %6020
  %6023 = select i1 %6016, float %6019, float %6021
  %6024 = fmul fast float %6022, %6013
  %6025 = fmul fast float %6023, %6014
  %6026 = call float @dx.op.unary.f32(i32 6, float %6024)  ; FAbs(value)
  %6027 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6028 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %6029 = call float @dx.op.binary.f32(i32 35, float %6026, float %6027)  ; FMax(a,b)
  %6030 = fsub fast float %6028, %6029
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = fmul fast float %6031, %6002
  br label %6033

; <label>:6033                                    ; preds = %6009, %6003
  %6034 = phi float [ %6032, %6009 ], [ 0.000000e+00, %6003 ]
  %6035 = extractvalue %dx.types.CBufRet.f32 %5980, 2
  %6036 = extractvalue %dx.types.CBufRet.f32 %6005, 1
  %6037 = fadd fast float %6036, %6035
  %6038 = fcmp fast ogt float %6037, 0.000000e+00
  br i1 %6038, label %6039, label %6063

; <label>:6039                                    ; preds = %6033
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = fsub fast float %5986, %6041
  %6044 = fsub fast float %5987, %6042
  %6045 = fcmp fast olt float %6043, 0.000000e+00
  %6046 = fcmp fast olt float %6044, 0.000000e+00
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6051 = extractvalue %dx.types.CBufRet.f32 %6047, 3
  %6052 = select i1 %6045, float %6048, float %6050
  %6053 = select i1 %6046, float %6049, float %6051
  %6054 = fmul fast float %6052, %6043
  %6055 = fmul fast float %6053, %6044
  %6056 = call float @dx.op.unary.f32(i32 6, float %6054)  ; FAbs(value)
  %6057 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6058 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %6059 = call float @dx.op.binary.f32(i32 35, float %6056, float %6057)  ; FMax(a,b)
  %6060 = fsub fast float %6058, %6059
  %6061 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  %6062 = fmul fast float %6061, %6002
  br label %6063

; <label>:6063                                    ; preds = %6039, %6033, %5949
  %6064 = phi float [ 0.000000e+00, %5949 ], [ %6062, %6039 ], [ 0.000000e+00, %6033 ]
  %6065 = phi float [ 0.000000e+00, %5949 ], [ %6034, %6039 ], [ %6034, %6033 ]
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = fsub fast float %5968, %6070
  %6073 = fsub fast float %5972, %6071
  %6074 = fcmp fast olt float %6072, 0.000000e+00
  %6075 = fcmp fast olt float %6073, 0.000000e+00
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6080 = extractvalue %dx.types.CBufRet.f32 %6076, 3
  %6081 = select i1 %6074, float %6077, float %6079
  %6082 = select i1 %6075, float %6078, float %6080
  %6083 = fmul fast float %6081, %6072
  %6084 = fmul fast float %6082, %6073
  %6085 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6086 = call float @dx.op.unary.f32(i32 6, float %6084)  ; FAbs(value)
  %6087 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %6088 = call float @dx.op.binary.f32(i32 35, float %6085, float %6086)  ; FMax(a,b)
  %6089 = fsub fast float %6087, %6088
  %6090 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6091 = call float @dx.op.binary.f32(i32 36, float %6090, float %6068)  ; FMin(a,b)
  %6092 = fmul fast float %6091, %6002
  %6093 = fsub fast float %6064, %6092
  %6094 = fsub fast float %6065, %6064
  %6095 = fsub fast float %6094, %6092
  %6096 = call float @dx.op.binary.f32(i32 35, float %6064, float %6065)  ; FMax(a,b)
  %6097 = call float @dx.op.binary.f32(i32 35, float %6092, float %6096)  ; FMax(a,b)
  %6098 = fcmp fast olt float %6097, 1.000000e+00
  br i1 %6098, label %6099, label %6497, !dx.controlflow.hints !96

; <label>:6099                                    ; preds = %6063
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = fcmp fast une float %6101, 0.000000e+00
  br i1 %6102, label %6103, label %6497, !dx.controlflow.hints !97

; <label>:6103                                    ; preds = %6099
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6108 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6113 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6119 = fmul fast float %6105, %5945
  %6120 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %6106, float %6119)  ; FMad(a,b,c)
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %6107, float %6120)  ; FMad(a,b,c)
  %6122 = fadd fast float %6121, %6108
  %6123 = fmul fast float %6110, %5945
  %6124 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %6111, float %6123)  ; FMad(a,b,c)
  %6125 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %6112, float %6124)  ; FMad(a,b,c)
  %6126 = fadd fast float %6125, %6113
  %6127 = fmul fast float %6115, %5945
  %6128 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %6116, float %6127)  ; FMad(a,b,c)
  %6129 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %6117, float %6128)  ; FMad(a,b,c)
  %6130 = fadd fast float %6129, %6118
  %6131 = fcmp fast oge float %6122, 1.000000e+00
  %6132 = fcmp fast oge float %6126, 1.000000e+00
  %6133 = or i1 %6131, %6132
  %6134 = fcmp fast olt float %6122, 0.000000e+00
  %6135 = fcmp fast olt float %6126, 0.000000e+00
  %6136 = or i1 %6134, %6135
  %6137 = or i1 %6133, %6136
  br i1 %6137, label %6497, label %6138, !dx.controlflow.hints !98

; <label>:6138                                    ; preds = %6103
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6141 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6142 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.i32 %6143, 2
  %6145 = uitofp i32 %6144 to float
  %6146 = extractvalue %dx.types.CBufRet.i32 %6143, 3
  %6147 = uitofp i32 %6146 to float
  %6148 = extractvalue %dx.types.CBufRet.f32 %6139, 3
  %6149 = fmul fast float %6148, 2.000000e+00
  %6150 = fsub fast float %6122, %6140
  %6151 = fsub fast float %6126, %6141
  %6152 = fmul fast float %6149, %6150
  %6153 = fmul fast float %6149, %6151
  %6154 = fdiv fast float 1.000000e+00, %5928
  %6155 = fmul fast float %6153, %6154
  %6156 = call float @dx.op.unary.f32(i32 6, float %6155)  ; FAbs(value)
  %6157 = fmul fast float %6142, %5947
  %6158 = fmul fast float %6157, %6149
  %6159 = call float @dx.op.unary.f32(i32 6, float %6158)  ; FAbs(value)
  %6160 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6161 = call float @dx.op.binary.f32(i32 35, float %6159, float %6156)  ; FMax(a,b)
  %6162 = call float @dx.op.binary.f32(i32 35, float %6160, float %6161)  ; FMax(a,b)
  %6163 = fmul fast float %6162, 2.000000e+00
  %6164 = call float @dx.op.unary.f32(i32 23, float %6163)  ; Log(value)
  %6165 = call float @dx.op.binary.f32(i32 35, float %6164, float %6145)  ; FMax(a,b)
  %6166 = call float @dx.op.unary.f32(i32 22, float %6165)  ; Frc(value)
  %6167 = fadd fast float %6166, 0xBFEA666660000000
  %6168 = fmul fast float %6167, 8.000000e+00
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6170 = call float @dx.op.unary.f32(i32 27, float %6165)  ; Round_ni(value)
  %6171 = fadd fast float %6170, %6169
  %6172 = call float @dx.op.binary.f32(i32 36, float %6171, float %6147)  ; FMin(a,b)
  %6173 = call float @dx.op.unary.f32(i32 27, float %6172)  ; Round_ni(value)
  %6174 = fsub fast float -0.000000e+00, %6173
  %6175 = call float @dx.op.unary.f32(i32 21, float %6174)  ; Exp(value)
  %6176 = fmul fast float %6175, %6149
  %6177 = fmul fast float %6176, %6122
  %6178 = fmul fast float %6176, %6126
  %6179 = fmul fast float %6177, 2.500000e-01
  %6180 = fmul fast float %6178, 2.500000e-01
  %6181 = fadd fast float %6179, 5.000000e-01
  %6182 = fadd fast float %6180, 5.000000e-01
  %6183 = fsub fast float %6147, %6145
  %6184 = fptoui float %6183 to i32
  %6185 = add i32 %6184, 320
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6185)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6189 = fcmp fast une float %6172, %6147
  %6190 = fsub fast float %6122, %6187
  %6191 = fsub fast float %6126, %6188
  %6192 = call float @dx.op.unary.f32(i32 6, float %6190)  ; FAbs(value)
  %6193 = call float @dx.op.unary.f32(i32 6, float %6191)  ; FAbs(value)
  %6194 = fmul fast float %6192, %6176
  %6195 = fmul fast float %6193, %6176
  %6196 = fcmp fast olt float %6194, 1.000000e+00
  %6197 = fcmp fast olt float %6195, 1.000000e+00
  %6198 = and i1 %6196, %6197
  %6199 = or i1 %6189, %6198
  br i1 %6199, label %6200, label %6497, !dx.controlflow.hints !99

; <label>:6200                                    ; preds = %6138
  %6201 = fmul fast float %6178, 5.000000e-01
  %6202 = fmul fast float %6177, 5.000000e-01
  %6203 = fadd fast float %6201, 5.000000e-01
  %6204 = fadd fast float %6202, 5.000000e-01
  %6205 = sitofp i32 %6144 to float
  %6206 = fsub fast float %6172, %6205
  %6207 = call float @dx.op.unary.f32(i32 27, float %6206)  ; Round_ni(value)
  %6208 = call float @dx.op.unary.f32(i32 22, float %6172)  ; Frc(value)
  %6209 = call float @dx.op.unary.f32(i32 22, float %6204)  ; Frc(value)
  %6210 = call float @dx.op.unary.f32(i32 22, float %6203)  ; Frc(value)
  %6211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6209, float %6210, float %6207, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.ResRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.ResRet.f32 %6211, 2
  %6215 = extractvalue %dx.types.ResRet.f32 %6211, 3
  %6216 = fcmp fast ogt float %6208, 0.000000e+00
  br i1 %6216, label %6217, label %6238, !dx.controlflow.hints !100

; <label>:6217                                    ; preds = %6200
  %6218 = fadd fast float %6207, 1.000000e+00
  %6219 = call float @dx.op.unary.f32(i32 22, float %6181)  ; Frc(value)
  %6220 = call float @dx.op.unary.f32(i32 22, float %6182)  ; Frc(value)
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6219, float %6220, float %6218, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6221, 2
  %6225 = extractvalue %dx.types.ResRet.f32 %6221, 3
  %6226 = fsub fast float %6222, %6212
  %6227 = fsub fast float %6223, %6213
  %6228 = fsub fast float %6224, %6214
  %6229 = fsub fast float %6225, %6215
  %6230 = fmul fast float %6226, %6208
  %6231 = fmul fast float %6227, %6208
  %6232 = fmul fast float %6228, %6208
  %6233 = fmul fast float %6229, %6208
  %6234 = fadd fast float %6230, %6212
  %6235 = fadd fast float %6231, %6213
  %6236 = fadd fast float %6232, %6214
  %6237 = fadd fast float %6233, %6215
  br label %6238

; <label>:6238                                    ; preds = %6217, %6200
  %6239 = phi float [ %6234, %6217 ], [ %6212, %6200 ]
  %6240 = phi float [ %6235, %6217 ], [ %6213, %6200 ]
  %6241 = phi float [ %6236, %6217 ], [ %6214, %6200 ]
  %6242 = phi float [ %6237, %6217 ], [ %6215, %6200 ]
  %6243 = fadd fast float %6239, -5.000000e-01
  %6244 = fadd fast float %6241, -5.000000e-01
  %6245 = fmul fast float %6243, 0xBFD5555560000000
  %6246 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6244, float %6245)  ; FMad(a,b,c)
  %6247 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6240, float 0.000000e+00)  ; FMad(a,b,c)
  %6248 = fadd fast float %6247, %6242
  %6249 = fmul fast float %6243, -7.500000e-01
  %6250 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6244, float %6249)  ; FMad(a,b,c)
  %6251 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6240, float 0.000000e+00)  ; FMad(a,b,c)
  %6252 = fadd fast float %6251, %6242
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6259 = extractvalue %dx.types.CBufRet.f32 %6255, 3
  %6260 = fsub fast float %6256, %6246
  %6261 = fsub fast float %6257, %6248
  %6262 = fsub fast float %6258, %6250
  %6263 = fsub fast float %6259, %6252
  %6264 = fmul fast float %6260, %6254
  %6265 = fmul fast float %6261, %6254
  %6266 = fmul fast float %6262, %6254
  %6267 = fmul fast float %6263, %6254
  %6268 = fadd fast float %6264, %6246
  %6269 = fadd fast float %6265, %6248
  %6270 = fadd fast float %6266, %6250
  %6271 = fadd fast float %6267, %6252
  %6272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.i32 %6272, 0
  %6274 = and i32 %6273, 536870911
  %6275 = uitofp i32 %6274 to float
  %6276 = fmul fast float %6275, %6122
  %6277 = fmul fast float %6275, %6126
  %6278 = fptoui float %6276 to i32
  %6279 = fptoui float %6277 to i32
  %6280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6281 = extractvalue %dx.types.ResRet.i32 %6280, 0
  %6282 = and i32 %6281, 31
  %6283 = lshr i32 %6278, %6282
  %6284 = lshr i32 %6279, %6282
  %6285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.i32 %6285, 0
  %6287 = and i32 %6286, 31
  %6288 = shl i32 1, %6287
  %6289 = call i32 @dx.op.binary.i32(i32 40, i32 %6288, i32 4)  ; UMin(a,b)
  %6290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6291 = extractvalue %dx.types.ResRet.i32 %6290, 0
  %6292 = extractvalue %dx.types.ResRet.i32 %6290, 1
  %6293 = icmp eq i32 %6289, 0
  br i1 %6293, label %6335, label %6294

; <label>:6294                                    ; preds = %6238
  br label %6295

; <label>:6295                                    ; preds = %6323, %6294
  %6296 = phi i32 [ %6326, %6323 ], [ 0, %6294 ]
  %6297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.i32 %6297, 0
  %6299 = lshr i32 %6298, 16
  %6300 = and i32 %6299, 31
  %6301 = shl i32 %6284, %6300
  %6302 = add i32 %6301, %6283
  %6303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.i32 %6303, 0
  %6305 = and i32 %6304, 31
  %6306 = shl i32 %6302, %6305
  %6307 = add i32 %6306, %6296
  %6308 = shl i32 %6307, 2
  %6309 = add i32 %6308, 32
  %6310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6309, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.i32 %6310, 0
  %6312 = icmp slt i32 %6311, 0
  %6313 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6296
  %6314 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6296
  %6315 = bitcast float* %6313 to i32*
  %6316 = bitcast float* %6314 to i32*
  br i1 %6312, label %6317, label %6323

; <label>:6317                                    ; preds = %6295
  %6318 = and i32 %6311, 1073741823
  %6319 = add nuw nsw i32 %6318, 20
  %6320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6319, i32 undef)  ; BufferLoad(srv,index,wot)
  %6321 = extractvalue %dx.types.ResRet.i32 %6320, 0
  %6322 = extractvalue %dx.types.ResRet.i32 %6320, 1
  br label %6323

; <label>:6323                                    ; preds = %6317, %6295
  %6324 = phi i32 [ %6321, %6317 ], [ %6291, %6295 ]
  %6325 = phi i32 [ %6322, %6317 ], [ %6292, %6295 ]
  store i32 %6324, i32* %6315, align 4
  store i32 %6325, i32* %6316, align 4
  %6326 = add nuw i32 %6296, 1
  %6327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.i32 %6327, 2
  %6329 = icmp eq i32 %6328, 0
  %6330 = icmp ugt i32 %6311, -1073741825
  %6331 = and i1 %6330, %6329
  %6332 = icmp ult i32 %6326, %6289
  %6333 = and i1 %6331, %6332
  br i1 %6333, label %6295, label %6334

; <label>:6334                                    ; preds = %6323
  br label %6335

; <label>:6335                                    ; preds = %6334, %6238
  %6336 = phi i32 [ 0, %6238 ], [ %6326, %6334 ]
  %6337 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6338 = fptoui float %6337 to i32
  %6339 = icmp eq i32 %6338, 0
  br i1 %6339, label %6391, label %6340

; <label>:6340                                    ; preds = %6335
  br label %6341

; <label>:6341                                    ; preds = %6386, %6340
  %6342 = phi i32 [ %6387, %6386 ], [ %6336, %6340 ]
  %6343 = phi i32 [ %6388, %6386 ], [ 0, %6340 ]
  %6344 = lshr i32 %6343, 2
  %6345 = and i32 %6343, 3
  %6346 = add nuw nsw i32 %6344, 83
  %6347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6346)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.i32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.i32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.i32 %6347, 2
  %6351 = extractvalue %dx.types.CBufRet.i32 %6347, 3
  %6352 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6348, i32* %6352, align 4
  %6353 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6349, i32* %6353, align 4
  %6354 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6350, i32* %6354, align 4
  %6355 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6351, i32* %6355, align 4
  %6356 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6345
  %6357 = load i32, i32* %6356, align 4, !tbaa !101, !noalias !105
  %6358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6359 = extractvalue %dx.types.ResRet.i32 %6358, 0
  %6360 = lshr i32 %6359, 16
  %6361 = and i32 %6360, 31
  %6362 = shl i32 %6284, %6361
  %6363 = add i32 %6362, %6283
  %6364 = shl i32 %6363, 2
  %6365 = add i32 %6364, %6357
  %6366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6365, i32 undef)  ; BufferLoad(srv,index,wot)
  %6367 = extractvalue %dx.types.ResRet.i32 %6366, 0
  %6368 = icmp eq i32 %6367, 0
  br i1 %6368, label %6386, label %6369

; <label>:6369                                    ; preds = %6341
  %6370 = icmp slt i32 %6367, 0
  %6371 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6342
  %6372 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6342
  %6373 = bitcast float* %6371 to i32*
  %6374 = bitcast float* %6372 to i32*
  br i1 %6370, label %6375, label %6382

; <label>:6375                                    ; preds = %6369
  %6376 = and i32 %6367, 1073741823
  %6377 = add i32 %6357, 20
  %6378 = add i32 %6377, %6376
  %6379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6378, i32 undef)  ; BufferLoad(srv,index,wot)
  %6380 = extractvalue %dx.types.ResRet.i32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.i32 %6379, 1
  br label %6382

; <label>:6382                                    ; preds = %6375, %6369
  %6383 = phi i32 [ %6380, %6375 ], [ %6291, %6369 ]
  %6384 = phi i32 [ %6381, %6375 ], [ %6292, %6369 ]
  store i32 %6383, i32* %6373, align 4
  store i32 %6384, i32* %6374, align 4
  %6385 = add i32 %6342, 1
  br label %6386

; <label>:6386                                    ; preds = %6382, %6341
  %6387 = phi i32 [ %6342, %6341 ], [ %6385, %6382 ]
  %6388 = add nuw i32 %6343, 1
  %6389 = icmp eq i32 %6388, %6338
  br i1 %6389, label %6390, label %6341

; <label>:6390                                    ; preds = %6386
  br label %6391

; <label>:6391                                    ; preds = %6390, %6335
  %6392 = phi i32 [ %6336, %6335 ], [ %6387, %6390 ]
  %6393 = icmp eq i32 %6392, 1
  %6394 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6395 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6393, label %6396, label %6399

; <label>:6396                                    ; preds = %6391
  %6397 = load float, float* %6394, align 4
  %6398 = load float, float* %6395, align 4
  br label %6426

; <label>:6399                                    ; preds = %6391
  %6400 = load float, float* %6394, align 4
  %6401 = load float, float* %6395, align 4
  %6402 = fdiv fast float 1.000000e+00, %6401
  %6403 = fsub fast float %6400, %6402
  %6404 = icmp ugt i32 %6392, 1
  br i1 %6404, label %6405, label %6421

; <label>:6405                                    ; preds = %6399
  br label %6406

; <label>:6406                                    ; preds = %6406, %6405
  %6407 = phi float [ %6416, %6406 ], [ %6403, %6405 ]
  %6408 = phi float [ %6417, %6406 ], [ %6400, %6405 ]
  %6409 = phi i32 [ %6418, %6406 ], [ 1, %6405 ]
  %6410 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6409
  %6411 = load float, float* %6410, align 4
  %6412 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6409
  %6413 = load float, float* %6412, align 4
  %6414 = fdiv fast float 1.000000e+00, %6413
  %6415 = fsub fast float %6411, %6414
  %6416 = call float @dx.op.binary.f32(i32 36, float %6407, float %6415)  ; FMin(a,b)
  %6417 = call float @dx.op.binary.f32(i32 35, float %6408, float %6411)  ; FMax(a,b)
  %6418 = add nuw i32 %6409, 1
  %6419 = icmp eq i32 %6418, %6392
  br i1 %6419, label %6420, label %6406

; <label>:6420                                    ; preds = %6406
  br label %6421

; <label>:6421                                    ; preds = %6420, %6399
  %6422 = phi float [ %6403, %6399 ], [ %6416, %6420 ]
  %6423 = phi float [ %6400, %6399 ], [ %6417, %6420 ]
  %6424 = fsub fast float %6423, %6422
  %6425 = fdiv fast float 1.000000e+00, %6424
  br label %6426

; <label>:6426                                    ; preds = %6421, %6396
  %6427 = phi float [ %6397, %6396 ], [ %6423, %6421 ]
  %6428 = phi float [ %6398, %6396 ], [ %6425, %6421 ]
  %6429 = fadd fast float %6130, %6427
  %6430 = fmul fast float %6429, %6428
  %6431 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6432 = fmul fast float %6431, 2.000000e+00
  %6433 = fsub fast float 1.000000e+00, %6432
  %6434 = fmul fast float %6268, %6268
  %6435 = fsub fast float %6269, %6434
  %6436 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6435)  ; FMax(a,b)
  %6437 = fdiv fast float 1.000000e+00, %6436
  %6438 = fmul fast float %6269, %6268
  %6439 = fsub fast float %6270, %6438
  %6440 = fsub fast float %6433, %6268
  %6441 = fmul fast float %6433, %6433
  %6442 = fsub fast float %6441, %6269
  %6443 = fmul fast float %6437, %6439
  %6444 = fmul fast float %6443, %6440
  %6445 = fsub fast float %6442, %6444
  %6446 = fmul fast float %6269, %6269
  %6447 = fsub fast float %6271, %6446
  %6448 = fmul fast float %6439, %6439
  %6449 = fmul fast float %6448, %6437
  %6450 = fsub fast float %6447, %6449
  %6451 = fdiv fast float %6445, %6450
  %6452 = fmul fast float %6451, %6439
  %6453 = fsub fast float %6440, %6452
  %6454 = fmul fast float %6453, %6437
  %6455 = fmul fast float %6454, %6268
  %6456 = fsub fast float 1.000000e+00, %6455
  %6457 = fmul fast float %6451, %6269
  %6458 = fsub fast float %6456, %6457
  %6459 = fmul fast float %6454, %6454
  %6460 = fmul fast float %6451, 4.000000e+00
  %6461 = fmul fast float %6460, %6458
  %6462 = fsub fast float %6459, %6461
  %6463 = call float @dx.op.unary.f32(i32 24, float %6462)  ; Sqrt(value)
  %6464 = fcmp fast oge float %6454, 0.000000e+00
  %6465 = fsub fast float -0.000000e+00, %6463
  %6466 = select i1 %6464, float %6465, float %6463
  %6467 = fsub fast float %6466, %6454
  %6468 = fdiv fast float %6467, %6451
  %6469 = fdiv fast float %6458, %6467
  %6470 = fmul fast float %6468, 5.000000e-01
  %6471 = fmul fast float %6469, 2.000000e+00
  %6472 = select i1 %6464, float %6470, float %6471
  %6473 = select i1 %6464, float %6471, float %6470
  %6474 = call float @dx.op.binary.f32(i32 35, float %6472, float %6473)  ; FMax(a,b)
  %6475 = call float @dx.op.binary.f32(i32 36, float %6472, float %6473)  ; FMin(a,b)
  %6476 = fcmp fast ogt float %6433, %6474
  %6477 = fsub fast float %6433, %6475
  %6478 = fsub fast float %6433, %6474
  %6479 = fsub fast float %6474, %6475
  %6480 = select i1 %6476, float %6478, float %6479
  %6481 = fmul float %6477, %6480
  %6482 = select i1 %6476, float %6475, float %6433
  %6483 = fcmp fast ogt float %6433, %6475
  %6484 = fmul fast float %6482, %6474
  %6485 = fadd fast float %6482, %6474
  %6486 = fmul fast float %6485, %6268
  %6487 = fadd fast float %6484, %6269
  %6488 = fsub fast float %6487, %6486
  %6489 = fdiv fast float %6488, %6481
  %6490 = select i1 %6483, float %6489, float 0.000000e+00
  %6491 = fsub fast float 1.000000e+00, %6490
  %6492 = select i1 %6476, float %6491, float %6490
  %6493 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6495 = fmul fast float %6494, %6493
  %6496 = fsub fast float 1.000000e+00, %6495
  br label %6497

; <label>:6497                                    ; preds = %6426, %6138, %6103, %6099, %6063
  %6498 = phi float [ 1.000000e+00, %6063 ], [ %6496, %6426 ], [ 1.000000e+00, %6103 ], [ 1.000000e+00, %6138 ], [ 1.000000e+00, %6099 ]
  %6499 = fcmp fast ogt float %6095, 0.000000e+00
  br i1 %6499, label %6500, label %6508, !dx.controlflow.hints !114

; <label>:6500                                    ; preds = %6497
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 2
  %6503 = fadd fast float %6502, %5976
  %6504 = call float @dx.op.binary.f32(i32 35, float %6503, float 0.000000e+00)  ; FMax(a,b)
  %6505 = fadd fast float %6504, 0x3F10000000000000
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5994, float %5995, float undef, float undef, i32 0, i32 0, i32 undef, float %6505)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  br label %6508

; <label>:6508                                    ; preds = %6500, %6497
  %6509 = phi float [ %6507, %6500 ], [ 1.000000e+00, %6497 ]
  %6510 = fcmp fast ogt float %6093, 0.000000e+00
  br i1 %6510, label %6511, label %6519, !dx.controlflow.hints !115

; <label>:6511                                    ; preds = %6508
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6514 = fadd fast float %6513, %5976
  %6515 = call float @dx.op.binary.f32(i32 35, float %6514, float 0.000000e+00)  ; FMax(a,b)
  %6516 = fadd fast float %6515, 0x3F10000000000000
  %6517 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5986, float %5987, float undef, float undef, i32 0, i32 0, i32 undef, float %6516)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6518 = extractvalue %dx.types.ResRet.f32 %6517, 0
  br label %6519

; <label>:6519                                    ; preds = %6511, %6508
  %6520 = phi float [ %6518, %6511 ], [ 1.000000e+00, %6508 ]
  %6521 = fcmp fast ogt float %6092, 0.000000e+00
  br i1 %6521, label %6522, label %6534, !dx.controlflow.hints !116

; <label>:6522                                    ; preds = %6519
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = fadd fast float %6524, %5976
  %6526 = call float @dx.op.binary.f32(i32 35, float %6525, float 0.000000e+00)  ; FMax(a,b)
  %6527 = fadd fast float %6526, 0x3F10000000000000
  br i1 %5979, label %6528, label %6531, !dx.controlflow.hints !117

; <label>:6528                                    ; preds = %6522
  %6529 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5968, float %5972, float undef, float undef, i32 0, i32 0, i32 undef, float %6527)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 0
  br label %6534

; <label>:6531                                    ; preds = %6522
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5968, float %5972, float undef, float undef, i32 0, i32 0, i32 undef, float %6527)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  br label %6534

; <label>:6534                                    ; preds = %6531, %6528, %6519
  %6535 = phi float [ %6530, %6528 ], [ %6533, %6531 ], [ 1.000000e+00, %6519 ]
  %6536 = fsub fast float %6509, %6498
  %6537 = fmul fast float %6536, %6065
  %6538 = fadd fast float %6537, %6498
  %6539 = fsub fast float %6520, %6538
  %6540 = fmul fast float %6539, %6064
  %6541 = fadd fast float %6540, %6538
  %6542 = fsub fast float %6535, %6541
  %6543 = fmul fast float %6542, %6092
  %6544 = fadd fast float %6543, %6541
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6547 = fcmp fast ogt float %6546, 0.000000e+00
  br i1 %6547, label %6548, label %6588, !dx.controlflow.hints !118

; <label>:6548                                    ; preds = %6534
  %6549 = fcmp fast ugt float %6546, 0.000000e+00
  br i1 %6549, label %6550, label %6585

; <label>:6550                                    ; preds = %6548
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6560 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6561 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6562 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = fadd fast float %6564, %5945
  %6568 = fadd fast float %6565, %5946
  %6569 = fadd fast float %6566, %5947
  %6570 = fmul fast float %6567, %6552
  %6571 = call float @dx.op.tertiary.f32(i32 46, float %6553, float %6568, float %6570)  ; FMad(a,b,c)
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6554, float %6569, float %6571)  ; FMad(a,b,c)
  %6573 = fadd fast float %6572, %6555
  %6574 = fmul fast float %6567, %6557
  %6575 = call float @dx.op.tertiary.f32(i32 46, float %6558, float %6568, float %6574)  ; FMad(a,b,c)
  %6576 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6569, float %6575)  ; FMad(a,b,c)
  %6577 = fadd fast float %6576, %6560
  %6578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6573, float %6577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6579 = extractvalue %dx.types.ResRet.f32 %6578, 0
  %6580 = fmul fast float %6579, %6562
  %6581 = fadd fast float %6580, %6561
  %6582 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6583 = fmul fast float %6582, %6546
  %6584 = fsub fast float 1.000000e+00, %6583
  br label %6585

; <label>:6585                                    ; preds = %6550, %6548
  %6586 = phi float [ %6584, %6550 ], [ 1.000000e+00, %6548 ]
  %6587 = fmul fast float %6586, %6544
  br label %6588

; <label>:6588                                    ; preds = %6585, %6534, %5925
  %6589 = phi float [ 1.000000e+00, %5925 ], [ %6587, %6585 ], [ %6544, %6534 ]
  %6590 = call float @dx.op.binary.f32(i32 36, float %6589, float %6589)  ; FMin(a,b)
  %6591 = call float @dx.op.binary.f32(i32 36, float %6589, float %6590)  ; FMin(a,b)
  %6592 = fcmp fast ogt float %6591, 0.000000e+00
  br i1 %6592, label %6593, label %6753, !dx.controlflow.hints !119

; <label>:6593                                    ; preds = %6588
  %6594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.f32 %6594, 0
  %6596 = extractvalue %dx.types.CBufRet.f32 %6594, 1
  %6597 = extractvalue %dx.types.CBufRet.f32 %6594, 2
  %6598 = extractvalue %dx.types.CBufRet.f32 %6594, 3
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 0
  %6601 = extractvalue %dx.types.CBufRet.f32 %6599, 1
  %6602 = extractvalue %dx.types.CBufRet.f32 %6599, 2
  %6603 = extractvalue %dx.types.CBufRet.f32 %6599, 3
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.CBufRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.CBufRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.CBufRet.f32 %6604, 3
  %6609 = fmul fast float %6595, %5945
  %6610 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %6596, float %6609)  ; FMad(a,b,c)
  %6611 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %6597, float %6610)  ; FMad(a,b,c)
  %6612 = fadd fast float %6611, %6598
  %6613 = fmul fast float %6600, %5945
  %6614 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %6601, float %6613)  ; FMad(a,b,c)
  %6615 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %6602, float %6614)  ; FMad(a,b,c)
  %6616 = fadd fast float %6615, %6603
  %6617 = fmul fast float %6605, %5945
  %6618 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %6606, float %6617)  ; FMad(a,b,c)
  %6619 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %6607, float %6618)  ; FMad(a,b,c)
  %6620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6621 = extractvalue %dx.types.CBufRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.CBufRet.f32 %6620, 1
  %6623 = extractvalue %dx.types.CBufRet.f32 %6620, 3
  %6624 = fmul fast float %6623, %6612
  %6625 = fmul fast float %6623, %6616
  %6626 = fadd fast float %6624, %6621
  %6627 = fadd fast float %6625, %6622
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = fsub fast float %6626, %6629
  %6632 = fsub fast float %6627, %6630
  %6633 = fcmp fast olt float %6631, 0.000000e+00
  %6634 = fcmp fast olt float %6632, 0.000000e+00
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = extractvalue %dx.types.CBufRet.f32 %6635, 1
  %6638 = extractvalue %dx.types.CBufRet.f32 %6635, 2
  %6639 = extractvalue %dx.types.CBufRet.f32 %6635, 3
  %6640 = select i1 %6633, float %6636, float %6638
  %6641 = select i1 %6634, float %6637, float %6639
  %6642 = fmul fast float %6640, %6631
  %6643 = fmul fast float %6641, %6632
  %6644 = call float @dx.op.unary.f32(i32 6, float %6642)  ; FAbs(value)
  %6645 = call float @dx.op.unary.f32(i32 6, float %6643)  ; FAbs(value)
  %6646 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %6647 = call float @dx.op.binary.f32(i32 35, float %6644, float %6645)  ; FMax(a,b)
  %6648 = fsub fast float %6646, %6647
  %6649 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  %6650 = fcmp fast ogt float %6649, 0.000000e+00
  br i1 %6650, label %6651, label %6692, !dx.controlflow.hints !120

; <label>:6651                                    ; preds = %6593
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6626, float %6627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 1
  %6654 = fcmp fast ogt float %6653, 0.000000e+00
  br i1 %6654, label %6655, label %6687

; <label>:6655                                    ; preds = %6651
  %6656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6626, float %6627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.ResRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.ResRet.f32 %6656, 2
  %6660 = extractvalue %dx.types.ResRet.f32 %6656, 3
  %6661 = fsub fast float 1.000000e+00, %6608
  %6662 = fsub fast float %6661, %6619
  %6663 = fmul fast float %6662, 0x400921FB60000000
  %6664 = fadd fast float %6663, 0x3FF921FB60000000
  %6665 = call float @dx.op.unary.f32(i32 13, float %6664)  ; Sin(value)
  %6666 = fadd fast float %6665, -1.000000e+00
  %6667 = fmul fast float %6666, 0x3FD45F3060000000
  %6668 = fmul fast float %6662, 0x401921FB60000000
  %6669 = fadd fast float %6668, 0x400921FB60000000
  %6670 = call float @dx.op.unary.f32(i32 13, float %6669)  ; Sin(value)
  %6671 = fadd fast float %6670, 0x3E7777A5C0000000
  %6672 = fmul fast float %6671, 0x3FC45F3060000000
  %6673 = fmul fast float %6662, 0x4022D97C80000000
  %6674 = fadd fast float %6673, 0x4012D97C80000000
  %6675 = call float @dx.op.unary.f32(i32 13, float %6674)  ; Sin(value)
  %6676 = fadd fast float %6675, 1.000000e+00
  %6677 = fmul fast float %6676, 0x3FBB2995E0000000
  %6678 = fmul fast float %6662, 0x402921FB60000000
  %6679 = fadd fast float %6678, 0x401921FB60000000
  %6680 = call float @dx.op.unary.f32(i32 13, float %6679)  ; Sin(value)
  %6681 = fadd fast float %6680, 0xBE8777A5C0000000
  %6682 = fmul fast float %6681, 0x3FB45F3060000000
  %6683 = call float @dx.op.dot4.f32(i32 56, float %6657, float %6658, float %6659, float %6660, float %6667, float %6672, float %6677, float %6682)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6684 = fmul fast float %6683, 0xBFF7154760000000
  %6685 = call float @dx.op.unary.f32(i32 21, float %6684)  ; Exp(value)
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  br label %6687

; <label>:6687                                    ; preds = %6655, %6651
  %6688 = phi float [ %6686, %6655 ], [ 1.000000e+00, %6651 ]
  %6689 = fadd fast float %6688, -1.000000e+00
  %6690 = fmul fast float %6689, %6649
  %6691 = fadd fast float %6690, 1.000000e+00
  br label %6692

; <label>:6692                                    ; preds = %6687, %6593
  %6693 = phi float [ %6691, %6687 ], [ 1.000000e+00, %6593 ]
  %6694 = fmul fast float %6693, %6589
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6699 = fadd fast float %6696, %193
  %6700 = fadd fast float %6697, %194
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6703 = fsub fast float -0.000000e+00, %6699
  %6704 = fsub fast float -0.000000e+00, %6700
  %6705 = fsub fast float %5672, %6698
  %6706 = fadd fast float %6705, %6702
  %6707 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6703, float %6704, float %6706)  ; Dot3(ax,ay,az,bx,by,bz)
  %6708 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %6709 = fdiv fast float 1.000000e+00, %6708
  %6710 = fmul fast float %6709, %6707
  %6711 = fmul fast float %5926, %6710
  %6712 = fmul fast float %5927, %6710
  %6713 = fadd fast float %6711, %6699
  %6714 = fadd fast float %6712, %6700
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = fsub fast float %6713, %6716
  %6719 = fsub fast float %6714, %6717
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 2
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 3
  %6723 = fmul fast float %6718, %6721
  %6724 = fmul fast float %6719, %6722
  %6725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.i32 %6725, 3
  %6727 = icmp eq i32 %6726, 0
  br i1 %6727, label %6733, label %6728

; <label>:6728                                    ; preds = %6692
  %6729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6723, float %6724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6730 = extractvalue %dx.types.ResRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.ResRet.f32 %6729, 1
  %6732 = extractvalue %dx.types.ResRet.f32 %6729, 2
  br label %6738

; <label>:6733                                    ; preds = %6692
  %6734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6723, float %6724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6735 = extractvalue %dx.types.ResRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.ResRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.ResRet.f32 %6734, 2
  br label %6738

; <label>:6738                                    ; preds = %6733, %6728
  %6739 = phi float [ %6730, %6728 ], [ %6735, %6733 ]
  %6740 = phi float [ %6731, %6728 ], [ %6736, %6733 ]
  %6741 = phi float [ %6732, %6728 ], [ %6737, %6733 ]
  %6742 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6743 = fmul fast float %6742, %6739
  %6744 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6745 = fsub fast float %6710, %6744
  %6746 = fsub fast float %6745, %6743
  %6747 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6746)  ; FMax(a,b)
  %6748 = fmul fast float %6747, %6740
  %6749 = call float @dx.op.binary.f32(i32 36, float %6741, float %6748)  ; FMin(a,b)
  %6750 = fmul fast float %6749, 0xBFF7154760000000
  %6751 = call float @dx.op.unary.f32(i32 21, float %6750)  ; Exp(value)
  %6752 = fmul fast float %6694, %6751
  br label %6753

; <label>:6753                                    ; preds = %6738, %6588
  %6754 = phi float [ %6752, %6738 ], [ %6589, %6588 ]
  %6755 = call float @dx.op.binary.f32(i32 36, float %6754, float %6754)  ; FMin(a,b)
  %6756 = call float @dx.op.binary.f32(i32 36, float %6754, float %6755)  ; FMin(a,b)
  %6757 = fcmp fast ogt float %6756, 0.000000e+00
  br i1 %6757, label %6758, label %7021, !dx.controlflow.hints !121

; <label>:6758                                    ; preds = %6753
  %6759 = fmul fast float %6754, %5937
  %6760 = fmul fast float %6754, %5938
  %6761 = fmul fast float %6754, %5939
  %6762 = fsub fast float %195, %4886
  %6763 = fcmp fast ogt float %6762, 0.000000e+00
  %6764 = fmul fast float %5926, 5.120000e+02
  %6765 = fmul fast float %5927, 5.120000e+02
  %6766 = fmul fast float %5928, 5.120000e+02
  %6767 = fadd fast float %6766, %195
  %6768 = fsub fast float %4886, %6767
  %6769 = fmul fast float %6768, 2.000000e+00
  %6770 = fadd fast float %6769, %6767
  %6771 = select i1 %6763, float %6770, float %6767
  %6772 = fsub fast float %6771, %195
  %6773 = call float @dx.op.dot3.f32(i32 55, float %6764, float %6765, float %6772, float %6764, float %6765, float %6772)  ; Dot3(ax,ay,az,bx,by,bz)
  %6774 = call float @dx.op.unary.f32(i32 25, float %6773)  ; Rsqrt(value)
  %6775 = fmul fast float %6774, %6764
  %6776 = fmul fast float %6774, %6765
  %6777 = fmul fast float %6774, %6772
  %6778 = fsub fast float %4886, %195
  %6779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6778)  ; Dot3(ax,ay,az,bx,by,bz)
  %6780 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6775, float %6776, float %6777)  ; Dot3(ax,ay,az,bx,by,bz)
  %6781 = fdiv fast float 1.000000e+00, %6780
  %6782 = fmul fast float %6781, %6779
  %6783 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6762, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6784 = fcmp fast ogt float %6783, 0.000000e+00
  %6785 = fcmp fast olt float %6783, 0.000000e+00
  %6786 = zext i1 %6784 to i32
  %6787 = zext i1 %6785 to i32
  %6788 = sub nsw i32 %6786, %6787
  %6789 = sitofp i32 %6788 to float
  %6790 = fsub fast float %6771, %4886
  %6791 = call float @dx.op.dot3.f32(i32 55, float %6764, float %6765, float %6790, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6792 = fcmp fast ogt float %6791, 0.000000e+00
  %6793 = fcmp fast olt float %6791, 0.000000e+00
  %6794 = zext i1 %6792 to i32
  %6795 = zext i1 %6793 to i32
  %6796 = sub nsw i32 %6794, %6795
  %6797 = sitofp i32 %6796 to float
  %6798 = fcmp fast une float %6789, %6797
  br i1 %6798, label %6799, label %6809

; <label>:6799                                    ; preds = %6758
  %6800 = fmul fast float %6782, %6777
  %6801 = fmul fast float %6782, %6776
  %6802 = fmul fast float %6782, %6775
  %6803 = fmul fast float %6802, %6802
  %6804 = fmul fast float %6801, %6801
  %6805 = fadd fast float %6803, %6804
  %6806 = fmul fast float %6800, %6800
  %6807 = fadd fast float %6805, %6806
  %6808 = call float @dx.op.unary.f32(i32 24, float %6807)  ; Sqrt(value)
  br label %6819

; <label>:6809                                    ; preds = %6758
  %6810 = icmp slt i32 %6788, 0
  br i1 %6810, label %6811, label %6819

; <label>:6811                                    ; preds = %6809
  %6812 = fsub fast float %195, %6771
  %6813 = fmul fast float %6764, %6764
  %6814 = fmul fast float %6765, %6765
  %6815 = fadd fast float %6813, %6814
  %6816 = fmul fast float %6812, %6812
  %6817 = fadd fast float %6815, %6816
  %6818 = call float @dx.op.unary.f32(i32 24, float %6817)  ; Sqrt(value)
  br label %6819

; <label>:6819                                    ; preds = %6811, %6809, %6799
  %6820 = phi float [ %6808, %6799 ], [ %6818, %6811 ], [ 0.000000e+00, %6809 ]
  %6821 = fsub fast float -0.000000e+00, %6820
  %6822 = select i1 %6763, float -0.000000e+00, float %6821
  %6823 = fmul fast float %4887, 0x3FF7154760000000
  %6824 = fmul fast float %6823, %6822
  %6825 = fmul fast float %4888, 0x3FF7154760000000
  %6826 = fmul fast float %6825, %6822
  %6827 = fmul fast float %4889, 0x3FF7154760000000
  %6828 = fmul fast float %6827, %6822
  %6829 = call float @dx.op.unary.f32(i32 21, float %6824)  ; Exp(value)
  %6830 = call float @dx.op.unary.f32(i32 21, float %6826)  ; Exp(value)
  %6831 = call float @dx.op.unary.f32(i32 21, float %6828)  ; Exp(value)
  %6832 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6833 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6834 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6835 = fmul fast float %6759, %6832
  %6836 = fmul fast float %6760, %6833
  %6837 = fmul fast float %6761, %6834
  %6838 = fsub fast float %5926, %216
  %6839 = fsub fast float %5927, %217
  %6840 = fsub fast float %5928, %218
  %6841 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6838, float %6839, float %6840)  ; Dot3(ax,ay,az,bx,by,bz)
  %6842 = call float @dx.op.unary.f32(i32 25, float %6841)  ; Rsqrt(value)
  %6843 = fmul fast float %6842, %6838
  %6844 = fmul fast float %6842, %6839
  %6845 = fmul fast float %6842, %6840
  %6846 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %6847 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %6843, float %6844, float %6845)  ; Dot3(ax,ay,az,bx,by,bz)
  %6848 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6849 = fmul fast float %6848, %6848
  %6850 = fmul fast float %6849, %5688
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  %6852 = fmul fast float %6851, %6848
  %6853 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %6843, float %6844, float %6845)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = fmul fast float %6853, %6853
  %6855 = call float @dx.op.unary.f32(i32 6, float %6846)  ; FAbs(value)
  %6856 = fsub fast float 1.000000e+00, %5670
  %6857 = call float @dx.op.binary.f32(i32 35, float %6856, float 0x3F847AE140000000)  ; FMax(a,b)
  %6858 = fmul fast float %6857, %6857
  %6859 = fmul fast float %6858, %6858
  %6860 = fsub fast float 1.000000e+00, %6859
  %6861 = fmul fast float %5675, %5675
  %6862 = fmul fast float %6861, %6860
  %6863 = fadd fast float %6862, %6859
  %6864 = bitcast float %6863 to i32
  %6865 = ashr i32 %6864, 1
  %6866 = add nsw i32 %6865, 532487669
  %6867 = bitcast i32 %6866 to float
  %6868 = fadd fast float %6867, %5675
  %6869 = fmul fast float %6859, %6854
  %6870 = fsub fast float 1.000000e+00, %6854
  %6871 = fadd fast float %6870, %6869
  %6872 = fmul fast float %6855, %6855
  %6873 = fmul fast float %6872, %6860
  %6874 = fadd fast float %6873, %6859
  %6875 = bitcast float %6874 to i32
  %6876 = ashr i32 %6875, 1
  %6877 = add nsw i32 %6876, 532487669
  %6878 = bitcast i32 %6877 to float
  %6879 = fadd fast float %6878, %6855
  %6880 = fmul fast float %6871, %6871
  %6881 = fmul fast float %6880, %6868
  %6882 = fmul fast float %6881, %6879
  %6883 = fdiv fast float 0x3FF0A00000000000, %6882
  %6884 = fmul fast float %6883, %6859
  %6885 = fmul fast float %5788, 0x3FF9999980000000
  %6886 = fsub fast float 5.000000e+00, %6885
  %6887 = call float @dx.op.unary.f32(i32 6, float %6847)  ; FAbs(value)
  %6888 = fsub fast float 1.000000e+00, %6887
  %6889 = fmul fast float %5788, 0x41D9660740000000
  %6890 = fadd fast float %6889, 0xC1EFBF8940000000
  %6891 = bitcast float %6888 to i32
  %6892 = sitofp i32 %6891 to float
  %6893 = fmul fast float %6892, %6886
  %6894 = fadd fast float %6890, %6893
  %6895 = fptosi float %6894 to i32
  %6896 = bitcast i32 %6895 to float
  %6897 = fsub fast float 1.000000e+00, %5664
  %6898 = fsub fast float 1.000000e+00, %5665
  %6899 = fsub fast float 1.000000e+00, %5673
  %6900 = fmul fast float %6896, %6897
  %6901 = fmul fast float %6896, %6898
  %6902 = fmul fast float %6896, %6899
  %6903 = fadd fast float %6900, %5664
  %6904 = fadd fast float %6901, %5665
  %6905 = fadd fast float %6902, %5673
  br i1 %5811, label %6906, label %6929

; <label>:6906                                    ; preds = %6819
  %6907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4459, float %6887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.ResRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.ResRet.f32 %6907, 2
  %6911 = fadd fast float %6908, -5.000000e-01
  %6912 = fadd fast float %6909, -5.000000e-01
  %6913 = fadd fast float %6910, -5.000000e-01
  %6914 = fmul fast float %5664, 4.000000e+00
  %6915 = fmul fast float %6914, %6897
  %6916 = fmul fast float %6915, %6911
  %6917 = fmul fast float %5665, 4.000000e+00
  %6918 = fmul fast float %6917, %6898
  %6919 = fmul fast float %6918, %6912
  %6920 = fmul fast float %5673, 4.000000e+00
  %6921 = fmul fast float %6920, %6899
  %6922 = fmul fast float %6921, %6913
  %6923 = fadd fast float %6916, %6903
  %6924 = fadd fast float %6919, %6904
  %6925 = fadd fast float %6922, %6905
  %6926 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6927 = call float @dx.op.unary.f32(i32 7, float %6924)  ; Saturate(value)
  %6928 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  br label %6929

; <label>:6929                                    ; preds = %6906, %6819
  %6930 = phi float [ %6926, %6906 ], [ %6903, %6819 ]
  %6931 = phi float [ %6927, %6906 ], [ %6904, %6819 ]
  %6932 = phi float [ %6928, %6906 ], [ %6905, %6819 ]
  %6933 = fmul fast float %6846, 9.843750e-01
  %6934 = fadd fast float %6933, 7.812500e-03
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6934, float %5792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.ResRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.ResRet.f32 %6935, 2
  %6939 = extractvalue %dx.types.ResRet.f32 %6935, 3
  %6940 = fsub fast float %6938, %6936
  %6941 = fsub fast float %6939, %6937
  %6942 = fmul fast float %6940, %5798
  %6943 = fmul fast float %6941, %5798
  %6944 = fadd fast float %6942, %6936
  %6945 = fadd fast float %6943, %6937
  %6946 = fmul fast float %6944, %5664
  %6947 = fmul fast float %6944, %5665
  %6948 = fmul fast float %6944, %5673
  %6949 = fadd fast float %6946, %6945
  %6950 = fadd fast float %6947, %6945
  %6951 = fadd fast float %6948, %6945
  br i1 %5811, label %6952, label %6975

; <label>:6952                                    ; preds = %6929
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4459, float %6846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.ResRet.f32 %6953, 1
  %6956 = extractvalue %dx.types.ResRet.f32 %6953, 2
  %6957 = fadd fast float %6954, -5.000000e-01
  %6958 = fadd fast float %6955, -5.000000e-01
  %6959 = fadd fast float %6956, -5.000000e-01
  %6960 = fmul fast float %5664, 4.000000e+00
  %6961 = fmul fast float %6960, %6897
  %6962 = fmul fast float %6961, %6957
  %6963 = fmul fast float %5665, 4.000000e+00
  %6964 = fmul fast float %6963, %6898
  %6965 = fmul fast float %6964, %6958
  %6966 = fmul fast float %5673, 4.000000e+00
  %6967 = fmul fast float %6966, %6899
  %6968 = fmul fast float %6967, %6959
  %6969 = fadd fast float %6962, %6949
  %6970 = fadd fast float %6965, %6950
  %6971 = fadd fast float %6968, %6951
  %6972 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6973 = call float @dx.op.unary.f32(i32 7, float %6970)  ; Saturate(value)
  %6974 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  br label %6975

; <label>:6975                                    ; preds = %6952, %6929
  %6976 = phi float [ %6972, %6952 ], [ %6949, %6929 ]
  %6977 = phi float [ %6973, %6952 ], [ %6950, %6929 ]
  %6978 = phi float [ %6974, %6952 ], [ %6951, %6929 ]
  %6979 = call float @dx.op.binary.f32(i32 35, float %6977, float %6978)  ; FMax(a,b)
  %6980 = call float @dx.op.binary.f32(i32 35, float %6976, float %6979)  ; FMax(a,b)
  %6981 = fsub fast float 1.000000e+00, %6980
  %6982 = fmul fast float %6930, %6884
  %6983 = fmul fast float %6931, %6884
  %6984 = fmul fast float %6932, %6884
  %6985 = fsub fast float 1.000000e+00, %6847
  %6986 = bitcast float %6985 to i32
  %6987 = sitofp i32 %6986 to float
  %6988 = fmul fast float %6987, 5.000000e+00
  %6989 = fadd fast float %6988, 0xC1EFBF8940000000
  %6990 = fptosi float %6989 to i32
  %6991 = bitcast i32 %6990 to float
  %6992 = fmul fast float %6991, %4460
  %6993 = fmul fast float %6981, %6992
  %6994 = fmul fast float %6993, %5861
  %6995 = fmul fast float %6993, %5862
  %6996 = fmul fast float %6993, %5863
  %6997 = fadd fast float %6994, %6982
  %6998 = fadd fast float %6995, %6983
  %6999 = fadd fast float %6996, %6984
  %7000 = fmul fast float %6852, %6835
  %7001 = fmul fast float %7000, %6981
  %7002 = fmul fast float %6852, %6836
  %7003 = fmul fast float %7002, %6981
  %7004 = fmul fast float %6852, %6837
  %7005 = fmul fast float %7004, %6981
  %7006 = fmul fast float %7000, %6997
  %7007 = fmul fast float %7002, %6998
  %7008 = fmul fast float %7004, %6999
  %7009 = fadd fast float %7001, %5845
  %7010 = fmul fast float %7009, %4486
  %7011 = fadd fast float %7003, %5846
  %7012 = fmul fast float %7011, %4486
  %7013 = fadd fast float %7005, %5847
  %7014 = fmul fast float %7013, %4486
  %7015 = fadd fast float %7006, %5914
  %7016 = fmul fast float %7015, %4486
  %7017 = fadd fast float %7007, %5917
  %7018 = fmul fast float %7017, %4486
  %7019 = fadd fast float %7008, %5920
  %7020 = fmul fast float %7019, %4486
  br label %7021

; <label>:7021                                    ; preds = %6975, %6753, %5838
  %7022 = phi float [ %5915, %5838 ], [ %5915, %6753 ], [ %7016, %6975 ]
  %7023 = phi float [ %5918, %5838 ], [ %5918, %6753 ], [ %7018, %6975 ]
  %7024 = phi float [ %5921, %5838 ], [ %5921, %6753 ], [ %7020, %6975 ]
  %7025 = phi float [ %5910, %5838 ], [ %5910, %6753 ], [ %7010, %6975 ]
  %7026 = phi float [ %5911, %5838 ], [ %5911, %6753 ], [ %7012, %6975 ]
  %7027 = phi float [ %5912, %5838 ], [ %5912, %6753 ], [ %7014, %6975 ]
  %7028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.i32 %7028, 0
  %7030 = icmp eq i32 %7029, 0
  br i1 %7030, label %7663, label %7031

; <label>:7031                                    ; preds = %7021
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 2
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7035 = fmul fast float %7033, %106
  %7036 = fmul fast float %7034, %107
  %7037 = fptoui float %7035 to i32
  %7038 = fptoui float %7036 to i32
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %7042 = extractvalue %dx.types.CBufRet.f32 %7039, 3
  %7043 = fadd fast float %97, -4.000000e+00
  %7044 = call float @dx.op.binary.f32(i32 35, float %7043, float 0.000000e+00)  ; FMax(a,b)
  %7045 = fadd fast float %7044, %7040
  %7046 = fmul fast float %7045, %7041
  %7047 = call float @dx.op.unary.f32(i32 23, float %7046)  ; Log(value)
  %7048 = fmul fast float %7047, %7042
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7051 = fmul fast float %7048, %7050
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.i32 %7053, 1
  %7055 = add i32 %7054, -1
  %7056 = uitofp i32 %7054 to float
  %7057 = fmul fast float %7056, %7052
  %7058 = fptoui float %7057 to i32
  %7059 = call i32 @dx.op.binary.i32(i32 40, i32 %7058, i32 %7055)  ; UMin(a,b)
  %7060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.i32 %7060, 2
  %7062 = extractvalue %dx.types.CBufRet.i32 %7060, 3
  %7063 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7038, i32 %7061, i32 %7037)  ; UMad(a,b,c)
  %7064 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7059, i32 %7062, i32 %7063)  ; UMad(a,b,c)
  %7065 = add nsw i32 %7029, -1
  %7066 = call i32 @dx.op.binary.i32(i32 37, i32 %7065, i32 0)  ; IMax(a,b)
  %7067 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7068 = fptoui float %7067 to i32
  %7069 = lshr i32 %7068, 5
  %7070 = call i32 @dx.op.binary.i32(i32 40, i32 %7069, i32 8191)  ; UMin(a,b)
  %7071 = shl i32 %7070, 2
  %7072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7071, i32 undef)  ; BufferLoad(srv,index,wot)
  %7073 = extractvalue %dx.types.ResRet.i32 %7072, 0
  %7074 = lshr i32 %7073, 16
  %7075 = and i32 %7073, 65535
  %7076 = lshr i32 %7073, 21
  %7077 = lshr i32 %7075, 5
  %7078 = call i32 @dx.op.binary.i32(i32 40, i32 %7077, i32 %7066)  ; UMin(a,b)
  %7079 = icmp ugt i32 %7076, %7078
  br i1 %7079, label %7663, label %7080

; <label>:7080                                    ; preds = %7031
  br label %7081

; <label>:7081                                    ; preds = %7653, %7080
  %7082 = phi i32 [ %7660, %7653 ], [ %7076, %7080 ]
  %7083 = phi float [ %7654, %7653 ], [ %7022, %7080 ]
  %7084 = phi float [ %7655, %7653 ], [ %7023, %7080 ]
  %7085 = phi float [ %7656, %7653 ], [ %7024, %7080 ]
  %7086 = phi float [ %7657, %7653 ], [ %7025, %7080 ]
  %7087 = phi float [ %7658, %7653 ], [ %7026, %7080 ]
  %7088 = phi float [ %7659, %7653 ], [ %7027, %7080 ]
  %7089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.i32 %7089, 0
  %7091 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7064, i32 %7090, i32 %7082)  ; UMad(a,b,c)
  %7092 = shl i32 %7091, 2
  %7093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7092, i32 undef)  ; BufferLoad(srv,index,wot)
  %7094 = extractvalue %dx.types.ResRet.i32 %7093, 0
  %7095 = shl i32 %7082, 5
  %7096 = sub nsw i32 %7074, %7095
  %7097 = call i32 @dx.op.binary.i32(i32 37, i32 %7096, i32 0)  ; IMax(a,b)
  %7098 = call i32 @dx.op.binary.i32(i32 38, i32 %7097, i32 31)  ; IMin(a,b)
  %7099 = sub nsw i32 1, %7074
  %7100 = add nsw i32 %7099, %7075
  %7101 = call i32 @dx.op.binary.i32(i32 37, i32 %7100, i32 0)  ; IMax(a,b)
  %7102 = call i32 @dx.op.binary.i32(i32 38, i32 %7101, i32 32)  ; IMin(a,b)
  %7103 = and i32 %7102, 31
  %7104 = shl i32 -1, %7103
  %7105 = xor i32 %7104, -1
  %7106 = and i32 %7098, 31
  %7107 = shl i32 %7105, %7106
  %7108 = icmp eq i32 %7102, 32
  %7109 = select i1 %7108, i32 -1, i32 %7107
  %7110 = and i32 %7109, %7094
  %7111 = icmp eq i32 %7110, 0
  br i1 %7111, label %7653, label %7112

; <label>:7112                                    ; preds = %7081
  br label %7113

; <label>:7113                                    ; preds = %7247, %7112
  %7114 = phi i32 [ %7125, %7247 ], [ %7110, %7112 ]
  %7115 = phi float [ %7248, %7247 ], [ %7083, %7112 ]
  %7116 = phi float [ %7249, %7247 ], [ %7084, %7112 ]
  %7117 = phi float [ %7250, %7247 ], [ %7085, %7112 ]
  %7118 = phi float [ %7251, %7247 ], [ %7086, %7112 ]
  %7119 = phi float [ %7252, %7247 ], [ %7087, %7112 ]
  %7120 = phi float [ %7253, %7247 ], [ %7088, %7112 ]
  %7121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7114)  ; FirstbitLo(value)
  %7122 = add i32 %7121, %7095
  %7123 = and i32 %7121, 31
  %7124 = shl i32 1, %7123
  %7125 = xor i32 %7124, %7114
  %7126 = mul i32 %7122, 112
  %7127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7126, i32 undef)  ; BufferLoad(srv,index,wot)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = extractvalue %dx.types.ResRet.f32 %7127, 1
  %7130 = extractvalue %dx.types.ResRet.f32 %7127, 2
  %7131 = or i32 %7126, 12
  %7132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7131, i32 undef)  ; BufferLoad(srv,index,wot)
  %7133 = extractvalue %dx.types.ResRet.f32 %7132, 0
  %7134 = add i32 %7126, 16
  %7135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7134, i32 undef)  ; BufferLoad(srv,index,wot)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7139 = add i32 %7126, 28
  %7140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7139, i32 undef)  ; BufferLoad(srv,index,wot)
  %7141 = extractvalue %dx.types.ResRet.i32 %7140, 0
  %7142 = add i32 %7126, 44
  %7143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7142, i32 undef)  ; BufferLoad(srv,index,wot)
  %7144 = extractvalue %dx.types.ResRet.f32 %7143, 0
  %7145 = add i32 %7126, 48
  %7146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7145, i32 undef)  ; BufferLoad(srv,index,wot)
  %7147 = extractvalue %dx.types.ResRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.ResRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.ResRet.f32 %7146, 2
  %7150 = extractvalue %dx.types.ResRet.f32 %7146, 3
  %7151 = add i32 %7126, 64
  %7152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7151, i32 undef)  ; BufferLoad(srv,index,wot)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.ResRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.ResRet.f32 %7152, 3
  %7157 = add i32 %7126, 80
  %7158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7157, i32 undef)  ; BufferLoad(srv,index,wot)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 2
  %7161 = add i32 %7126, 92
  %7162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7161, i32 undef)  ; BufferLoad(srv,index,wot)
  %7163 = extractvalue %dx.types.ResRet.i32 %7162, 0
  %7164 = call float @dx.op.dot3.f32(i32 55, float %7128, float %7129, float %7130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7165 = select i1 %280, float %7159, float %7128
  %7166 = select i1 %280, float %7164, float %7129
  %7167 = select i1 %280, float %7160, float %7130
  %7168 = and i32 %7163, 65535
  %7169 = uitofp i32 %7168 to float
  %7170 = lshr i32 %7163, 16
  %7171 = uitofp i32 %7170 to float
  %7172 = and i32 %7141, 65535
  %7173 = and i32 %7141, 50331648
  %7174 = icmp eq i32 %7173, 33554432
  %7175 = fsub fast float %7147, %193
  %7176 = fsub fast float %7148, %194
  %7177 = fsub fast float %7149, %195
  %7178 = call float @dx.op.dot3.f32(i32 55, float %7175, float %7176, float %7177, float %7175, float %7176, float %7177)  ; Dot3(ax,ay,az,bx,by,bz)
  %7179 = call float @dx.op.unary.f32(i32 24, float %7178)  ; Sqrt(value)
  %7180 = fdiv fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7180, %7175
  %7182 = fmul fast float %7180, %7176
  %7183 = fmul fast float %7180, %7177
  %7184 = fadd fast float %7179, %7133
  %7185 = fdiv fast float 1.000000e+00, %7184
  %7186 = fmul float %7144, %7185
  %7187 = fmul float %7186, %7186
  %7188 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  br i1 %7174, label %7189, label %7210

; <label>:7189                                    ; preds = %7113
  %7190 = fmul fast float %7155, %7136
  %7191 = fmul fast float %7155, %7137
  %7192 = fmul fast float %7155, %7138
  %7193 = fadd fast float %7175, %7190
  %7194 = fadd fast float %7176, %7191
  %7195 = fadd fast float %7177, %7192
  %7196 = call float @dx.op.dot3.f32(i32 55, float %7193, float %7194, float %7195, float %7193, float %7194, float %7195)  ; Dot3(ax,ay,az,bx,by,bz)
  %7197 = call float @dx.op.unary.f32(i32 25, float %7196)  ; Rsqrt(value)
  %7198 = fmul fast float %7197, %7193
  %7199 = fmul fast float %7197, %7194
  %7200 = fmul fast float %7197, %7195
  %7201 = fsub fast float %193, %7147
  %7202 = fsub fast float %194, %7148
  %7203 = fsub fast float %195, %7149
  %7204 = fsub fast float -0.000000e+00, %7201
  %7205 = fsub fast float -0.000000e+00, %7202
  %7206 = fsub fast float -0.000000e+00, %7203
  %7207 = call float @dx.op.dot3.f32(i32 55, float %7204, float %7205, float %7206, float %7136, float %7137, float %7138)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  %7209 = uitofp i1 %7208 to float
  br label %7210

; <label>:7210                                    ; preds = %7189, %7113
  %7211 = phi float [ %7209, %7189 ], [ 1.000000e+00, %7113 ]
  %7212 = phi float [ %7198, %7189 ], [ %7181, %7113 ]
  %7213 = phi float [ %7199, %7189 ], [ %7182, %7113 ]
  %7214 = phi float [ %7200, %7189 ], [ %7183, %7113 ]
  %7215 = call float @dx.op.dot3.f32(i32 55, float %7136, float %7137, float %7138, float %7212, float %7213, float %7214)  ; Dot3(ax,ay,az,bx,by,bz)
  %7216 = fmul fast float %7215, %7215
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = fsub fast float 1.000000e+00, %7217
  %7219 = fmul fast float %7218, 5.000000e-01
  %7220 = fcmp fast ogt float %7215, 0.000000e+00
  %7221 = fsub fast float 1.000000e+00, %7219
  %7222 = select i1 %7220, float %7219, float %7221
  %7223 = fmul fast float %7222, %7171
  %7224 = fadd fast float %7223, %7169
  %7225 = fmul fast float %7224, 0x3EF0001000000000
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7225, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = fmul fast float %7215, %7153
  %7229 = fadd fast float %7228, %7154
  %7230 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7231 = select i1 %7174, float 1.000000e+00, float %7230
  %7232 = select i1 %7174, float %7230, float 1.000000e+00
  %7233 = fmul fast float %7179, %7150
  %7234 = fsub fast float 1.000000e+00, %7233
  %7235 = fmul fast float %7234, %7156
  %7236 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  %7237 = fmul fast float %7236, %7232
  %7238 = fmul fast float %7237, 2.000000e+00
  %7239 = fsub fast float 3.000000e+00, %7238
  %7240 = fmul fast float %7227, %7211
  %7241 = fmul fast float %7237, %7237
  %7242 = fmul fast float %7241, %7240
  %7243 = fmul fast float %7242, %7239
  %7244 = call float @dx.op.binary.f32(i32 36, float %7243, float %7243)  ; FMin(a,b)
  %7245 = call float @dx.op.binary.f32(i32 36, float %7243, float %7244)  ; FMin(a,b)
  %7246 = fcmp fast ogt float %7245, 0.000000e+00
  br i1 %7246, label %7255, label %7247, !dx.controlflow.hints !122

; <label>:7247                                    ; preds = %7609, %7355, %7210
  %7248 = phi float [ %7115, %7355 ], [ %7115, %7210 ], [ %7649, %7609 ]
  %7249 = phi float [ %7116, %7355 ], [ %7116, %7210 ], [ %7650, %7609 ]
  %7250 = phi float [ %7117, %7355 ], [ %7117, %7210 ], [ %7651, %7609 ]
  %7251 = phi float [ %7118, %7355 ], [ %7118, %7210 ], [ %7643, %7609 ]
  %7252 = phi float [ %7119, %7355 ], [ %7119, %7210 ], [ %7644, %7609 ]
  %7253 = phi float [ %7120, %7355 ], [ %7120, %7210 ], [ %7645, %7609 ]
  %7254 = icmp eq i32 %7114, %7124
  br i1 %7254, label %7652, label %7113

; <label>:7255                                    ; preds = %7210
  %7256 = icmp eq i32 %7172, 255
  br i1 %7256, label %7355, label %7257, !dx.controlflow.hints !123

; <label>:7257                                    ; preds = %7255
  %7258 = mul nuw nsw i32 %7172, 176
  %7259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7258, i32 undef)  ; BufferLoad(srv,index,wot)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = extractvalue %dx.types.ResRet.f32 %7259, 3
  %7264 = add nuw nsw i32 %7258, 16
  %7265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7264, i32 undef)  ; BufferLoad(srv,index,wot)
  %7266 = extractvalue %dx.types.ResRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.ResRet.f32 %7265, 1
  %7268 = add nuw nsw i32 %7258, 32
  %7269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7268, i32 undef)  ; BufferLoad(srv,index,wot)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = add nuw nsw i32 %7258, 48
  %7274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7273, i32 undef)  ; BufferLoad(srv,index,wot)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.ResRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7274, 2
  %7278 = extractvalue %dx.types.ResRet.f32 %7274, 3
  %7279 = add nuw nsw i32 %7258, 64
  %7280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7279, i32 undef)  ; BufferLoad(srv,index,wot)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.ResRet.f32 %7280, 1
  %7283 = extractvalue %dx.types.ResRet.f32 %7280, 2
  %7284 = extractvalue %dx.types.ResRet.f32 %7280, 3
  %7285 = add nuw nsw i32 %7258, 80
  %7286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7285, i32 undef)  ; BufferLoad(srv,index,wot)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = extractvalue %dx.types.ResRet.f32 %7286, 1
  %7289 = extractvalue %dx.types.ResRet.f32 %7286, 2
  %7290 = extractvalue %dx.types.ResRet.f32 %7286, 3
  %7291 = add nuw nsw i32 %7258, 96
  %7292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7291, i32 undef)  ; BufferLoad(srv,index,wot)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.ResRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.ResRet.f32 %7292, 2
  %7296 = extractvalue %dx.types.ResRet.f32 %7292, 3
  %7297 = bitcast float %7267 to i32
  %7298 = fmul fast float %7272, %113
  %7299 = fmul fast float %7272, %114
  %7300 = fmul fast float %7272, %115
  %7301 = fadd fast float %7298, %193
  %7302 = fadd fast float %7299, %194
  %7303 = fadd fast float %7300, %195
  %7304 = fmul fast float %7301, %7275
  %7305 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7281, float %7304)  ; FMad(a,b,c)
  %7306 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7287, float %7305)  ; FMad(a,b,c)
  %7307 = fadd fast float %7306, %7293
  %7308 = fmul fast float %7301, %7276
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7282, float %7308)  ; FMad(a,b,c)
  %7310 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7288, float %7309)  ; FMad(a,b,c)
  %7311 = fadd fast float %7310, %7294
  %7312 = fmul fast float %7301, %7277
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7283, float %7312)  ; FMad(a,b,c)
  %7314 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7289, float %7313)  ; FMad(a,b,c)
  %7315 = fadd fast float %7314, %7295
  %7316 = fmul fast float %7301, %7278
  %7317 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7284, float %7316)  ; FMad(a,b,c)
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7290, float %7317)  ; FMad(a,b,c)
  %7319 = fadd fast float %7318, %7296
  %7320 = fdiv fast float %7307, %7319
  %7321 = fdiv fast float %7311, %7319
  %7322 = fdiv fast float %7315, %7319
  %7323 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7322)  ; FMax(a,b)
  %7324 = fmul fast float %291, 0x401921FB60000000
  %7325 = call float @dx.op.unary.f32(i32 13, float %7324)  ; Sin(value)
  %7326 = call float @dx.op.unary.f32(i32 12, float %7324)  ; Cos(value)
  %7327 = fsub fast float -0.000000e+00, %7325
  %7328 = fmul fast float %7262, 5.000000e-01
  %7329 = call float @dx.op.dot2.f32(i32 54, float %291, float %291, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7330 = call float @dx.op.unary.f32(i32 22, float %7329)  ; Frc(value)
  %7331 = fmul fast float %7330, 0x404A7DD040000000
  %7332 = call float @dx.op.unary.f32(i32 22, float %7331)  ; Frc(value)
  %7333 = fmul fast float %7332, %7271
  %7334 = fadd fast float %7333, %7328
  %7335 = call float @dx.op.tertiary.f32(i32 46, float %7334, float %7327, float 0.000000e+00)  ; FMad(a,b,c)
  %7336 = call float @dx.op.tertiary.f32(i32 46, float %7334, float %7326, float 0.000000e+00)  ; FMad(a,b,c)
  %7337 = fadd fast float %7335, %7320
  %7338 = fadd fast float %7336, %7321
  %7339 = fmul fast float %7337, %7266
  %7340 = fmul fast float %7338, %7266
  %7341 = call float @dx.op.binary.f32(i32 35, float %7339, float %7262)  ; FMax(a,b)
  %7342 = call float @dx.op.binary.f32(i32 35, float %7340, float %7262)  ; FMax(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7341, float %7263)  ; FMin(a,b)
  %7344 = call float @dx.op.binary.f32(i32 36, float %7342, float %7263)  ; FMin(a,b)
  %7345 = fadd fast float %7343, %7260
  %7346 = fadd fast float %7344, %7261
  %7347 = uitofp i32 %7297 to float
  %7348 = fadd fast float %7323, %7270
  %7349 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7345, float %7346, float %7347, float undef, i32 0, i32 0, i32 undef, float %7348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7350 = extractvalue %dx.types.ResRet.f32 %7349, 0
  %7351 = fadd fast float %7350, -1.000000e+00
  %7352 = fmul fast float %7351, %7231
  %7353 = fadd fast float %7352, 1.000000e+00
  %7354 = fmul fast float %7353, %7243
  br label %7355

; <label>:7355                                    ; preds = %7257, %7255
  %7356 = phi float [ %7354, %7257 ], [ %7243, %7255 ]
  %7357 = call float @dx.op.binary.f32(i32 36, float %7356, float %7356)  ; FMin(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7356, float %7357)  ; FMin(a,b)
  %7359 = fcmp fast ogt float %7358, 0.000000e+00
  br i1 %7359, label %7360, label %7247, !dx.controlflow.hints !124

; <label>:7360                                    ; preds = %7355
  %7361 = fmul fast float %7356, %7165
  %7362 = fmul fast float %7356, %7166
  %7363 = fmul fast float %7356, %7167
  %7364 = fsub fast float %7149, %4886
  %7365 = fcmp fast ogt float %7364, 0.000000e+00
  %7366 = fsub fast float %195, %4886
  %7367 = fcmp fast ogt float %7366, 0.000000e+00
  %7368 = xor i1 %7367, %7365
  %7369 = fsub fast float %4886, %7149
  %7370 = fmul fast float %7369, 2.000000e+00
  %7371 = fadd fast float %7370, %7149
  %7372 = select i1 %7368, float %7149, float %7371
  %7373 = fsub fast float %7372, %195
  %7374 = call float @dx.op.dot3.f32(i32 55, float %7175, float %7176, float %7373, float %7175, float %7176, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7375 = call float @dx.op.unary.f32(i32 25, float %7374)  ; Rsqrt(value)
  %7376 = fmul fast float %7375, %7175
  %7377 = fmul fast float %7375, %7176
  %7378 = fmul fast float %7375, %7373
  %7379 = fsub fast float %4886, %195
  %7380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7379)  ; Dot3(ax,ay,az,bx,by,bz)
  %7381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7376, float %7377, float %7378)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = fdiv fast float 1.000000e+00, %7381
  %7383 = fmul fast float %7382, %7380
  %7384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7366, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7385 = fcmp fast ogt float %7384, 0.000000e+00
  %7386 = fcmp fast olt float %7384, 0.000000e+00
  %7387 = zext i1 %7385 to i32
  %7388 = zext i1 %7386 to i32
  %7389 = sub nsw i32 %7387, %7388
  %7390 = sitofp i32 %7389 to float
  %7391 = fsub fast float %7372, %4886
  %7392 = call float @dx.op.dot3.f32(i32 55, float %7175, float %7176, float %7391, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7393 = fcmp fast ogt float %7392, 0.000000e+00
  %7394 = fcmp fast olt float %7392, 0.000000e+00
  %7395 = zext i1 %7393 to i32
  %7396 = zext i1 %7394 to i32
  %7397 = sub nsw i32 %7395, %7396
  %7398 = sitofp i32 %7397 to float
  %7399 = fcmp fast une float %7390, %7398
  br i1 %7399, label %7400, label %7410

; <label>:7400                                    ; preds = %7360
  %7401 = fmul fast float %7383, %7378
  %7402 = fmul fast float %7383, %7377
  %7403 = fmul fast float %7383, %7376
  %7404 = fmul fast float %7403, %7403
  %7405 = fmul fast float %7402, %7402
  %7406 = fadd fast float %7404, %7405
  %7407 = fmul fast float %7401, %7401
  %7408 = fadd fast float %7406, %7407
  %7409 = call float @dx.op.unary.f32(i32 24, float %7408)  ; Sqrt(value)
  br label %7422

; <label>:7410                                    ; preds = %7360
  %7411 = icmp slt i32 %7389, 0
  br i1 %7411, label %7412, label %7422

; <label>:7412                                    ; preds = %7410
  %7413 = fsub fast float %193, %7147
  %7414 = fsub fast float %194, %7148
  %7415 = fsub fast float %195, %7372
  %7416 = fmul fast float %7413, %7413
  %7417 = fmul fast float %7414, %7414
  %7418 = fadd fast float %7416, %7417
  %7419 = fmul fast float %7415, %7415
  %7420 = fadd fast float %7418, %7419
  %7421 = call float @dx.op.unary.f32(i32 24, float %7420)  ; Sqrt(value)
  br label %7422

; <label>:7422                                    ; preds = %7412, %7410, %7400
  %7423 = phi float [ %7409, %7400 ], [ %7421, %7412 ], [ 0.000000e+00, %7410 ]
  %7424 = and i1 %7367, %7365
  %7425 = fsub fast float -0.000000e+00, %7423
  %7426 = select i1 %7424, float -0.000000e+00, float %7425
  %7427 = fmul fast float %4887, 0x3FF7154760000000
  %7428 = fmul fast float %7427, %7426
  %7429 = fmul fast float %4888, 0x3FF7154760000000
  %7430 = fmul fast float %7429, %7426
  %7431 = fmul fast float %4889, 0x3FF7154760000000
  %7432 = fmul fast float %7431, %7426
  %7433 = call float @dx.op.unary.f32(i32 21, float %7428)  ; Exp(value)
  %7434 = call float @dx.op.unary.f32(i32 21, float %7430)  ; Exp(value)
  %7435 = call float @dx.op.unary.f32(i32 21, float %7432)  ; Exp(value)
  %7436 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7437 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7438 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  %7439 = fmul fast float %7361, %7436
  %7440 = fmul fast float %7362, %7437
  %7441 = fmul fast float %7363, %7438
  %7442 = fsub fast float %7181, %216
  %7443 = fsub fast float %7182, %217
  %7444 = fsub fast float %7183, %218
  %7445 = call float @dx.op.dot3.f32(i32 55, float %7442, float %7443, float %7444, float %7442, float %7443, float %7444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = call float @dx.op.unary.f32(i32 25, float %7445)  ; Rsqrt(value)
  %7447 = fmul fast float %7446, %7442
  %7448 = fmul fast float %7446, %7443
  %7449 = fmul fast float %7446, %7444
  %7450 = call float @dx.op.dot3.f32(i32 55, float %7181, float %7182, float %7183, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %7451 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %7447, float %7448, float %7449)  ; Dot3(ax,ay,az,bx,by,bz)
  %7452 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7453 = fmul fast float %7452, %7188
  %7454 = fmul fast float %7452, %7452
  %7455 = fmul fast float %7454, %5688
  %7456 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7457 = fmul fast float %7453, %7456
  %7458 = bitcast float %7178 to i32
  %7459 = ashr i32 %7458, 1
  %7460 = sub nsw i32 1597463007, %7459
  %7461 = bitcast i32 %7460 to float
  %7462 = fmul fast float %7461, %7175
  %7463 = fmul fast float %7461, %7176
  %7464 = fmul fast float %7461, %7177
  %7465 = fsub fast float %7462, %216
  %7466 = fsub fast float %7463, %217
  %7467 = fsub fast float %7464, %218
  %7468 = call float @dx.op.dot3.f32(i32 55, float %7465, float %7466, float %7467, float %7465, float %7466, float %7467)  ; Dot3(ax,ay,az,bx,by,bz)
  %7469 = call float @dx.op.unary.f32(i32 25, float %7468)  ; Rsqrt(value)
  %7470 = fmul fast float %7465, %7469
  %7471 = fmul fast float %7466, %7469
  %7472 = fmul fast float %7467, %7469
  %7473 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %7470, float %7471, float %7472)  ; Dot3(ax,ay,az,bx,by,bz)
  %7474 = fmul fast float %7473, %7473
  %7475 = call float @dx.op.unary.f32(i32 6, float %7450)  ; FAbs(value)
  %7476 = fsub fast float 1.000000e+00, %5670
  %7477 = call float @dx.op.binary.f32(i32 35, float %7476, float 0x3F847AE140000000)  ; FMax(a,b)
  %7478 = fmul fast float %7477, %7477
  %7479 = fmul fast float %7478, %7478
  %7480 = fsub fast float 1.000000e+00, %7479
  %7481 = fmul fast float %5675, %5675
  %7482 = fmul fast float %7481, %7480
  %7483 = fadd fast float %7482, %7479
  %7484 = bitcast float %7483 to i32
  %7485 = ashr i32 %7484, 1
  %7486 = add nsw i32 %7485, 532487669
  %7487 = bitcast i32 %7486 to float
  %7488 = fadd fast float %7487, %5675
  %7489 = fmul fast float %7479, %7474
  %7490 = fsub fast float 1.000000e+00, %7474
  %7491 = fadd fast float %7490, %7489
  %7492 = fmul fast float %7475, %7475
  %7493 = fmul fast float %7492, %7480
  %7494 = fadd fast float %7493, %7479
  %7495 = bitcast float %7494 to i32
  %7496 = ashr i32 %7495, 1
  %7497 = add nsw i32 %7496, 532487669
  %7498 = bitcast i32 %7497 to float
  %7499 = fadd fast float %7498, %7475
  %7500 = fmul fast float %7491, %7491
  %7501 = fmul fast float %7500, %7488
  %7502 = fmul fast float %7501, %7499
  %7503 = fdiv fast float 1.000000e+00, %7502
  %7504 = bitcast float %7479 to i32
  %7505 = sitofp i32 %7504 to float
  %7506 = fmul fast float %7505, 0x3FE7F73180000000
  %7507 = fadd fast float %7506, 0x41AFE27C40000000
  %7508 = fptosi float %7507 to i32
  %7509 = bitcast i32 %7508 to float
  %7510 = fmul fast float %7144, 0x3FD80E9D60000000
  %7511 = fmul fast float %7510, %7461
  %7512 = fadd fast float %7509, %7511
  %7513 = bitcast float %7512 to i32
  %7514 = sub nsw i32 2129859010, %7513
  %7515 = bitcast i32 %7514 to float
  %7516 = fmul fast float %7479, %7503
  %7517 = fmul fast float %7516, %7509
  %7518 = fmul fast float %7517, %7515
  %7519 = fmul fast float %5788, 0x3FF9999980000000
  %7520 = fsub fast float 5.000000e+00, %7519
  %7521 = call float @dx.op.unary.f32(i32 6, float %7451)  ; FAbs(value)
  %7522 = fsub fast float 1.000000e+00, %7521
  %7523 = fmul fast float %5788, 0x41D9660740000000
  %7524 = fadd fast float %7523, 0xC1EFBF8940000000
  %7525 = bitcast float %7522 to i32
  %7526 = sitofp i32 %7525 to float
  %7527 = fmul fast float %7526, %7520
  %7528 = fadd fast float %7524, %7527
  %7529 = fptosi float %7528 to i32
  %7530 = bitcast i32 %7529 to float
  %7531 = fsub fast float 1.000000e+00, %5664
  %7532 = fsub fast float 1.000000e+00, %5665
  %7533 = fsub fast float 1.000000e+00, %5673
  %7534 = fmul fast float %7530, %7531
  %7535 = fmul fast float %7530, %7532
  %7536 = fmul fast float %7530, %7533
  %7537 = fadd fast float %7534, %5664
  %7538 = fadd fast float %7535, %5665
  %7539 = fadd fast float %7536, %5673
  br i1 %5811, label %7540, label %7563

; <label>:7540                                    ; preds = %7422
  %7541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4459, float %7521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7542 = extractvalue %dx.types.ResRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.ResRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.ResRet.f32 %7541, 2
  %7545 = fadd fast float %7542, -5.000000e-01
  %7546 = fadd fast float %7543, -5.000000e-01
  %7547 = fadd fast float %7544, -5.000000e-01
  %7548 = fmul fast float %5664, 4.000000e+00
  %7549 = fmul fast float %7548, %7531
  %7550 = fmul fast float %7549, %7545
  %7551 = fmul fast float %5665, 4.000000e+00
  %7552 = fmul fast float %7551, %7532
  %7553 = fmul fast float %7552, %7546
  %7554 = fmul fast float %5673, 4.000000e+00
  %7555 = fmul fast float %7554, %7533
  %7556 = fmul fast float %7555, %7547
  %7557 = fadd fast float %7550, %7537
  %7558 = fadd fast float %7553, %7538
  %7559 = fadd fast float %7556, %7539
  %7560 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7561 = call float @dx.op.unary.f32(i32 7, float %7558)  ; Saturate(value)
  %7562 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  br label %7563

; <label>:7563                                    ; preds = %7540, %7422
  %7564 = phi float [ %7560, %7540 ], [ %7537, %7422 ]
  %7565 = phi float [ %7561, %7540 ], [ %7538, %7422 ]
  %7566 = phi float [ %7562, %7540 ], [ %7539, %7422 ]
  %7567 = fmul fast float %7450, 9.843750e-01
  %7568 = fadd fast float %7567, 7.812500e-03
  %7569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7568, float %5792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = extractvalue %dx.types.ResRet.f32 %7569, 1
  %7572 = extractvalue %dx.types.ResRet.f32 %7569, 2
  %7573 = extractvalue %dx.types.ResRet.f32 %7569, 3
  %7574 = fsub fast float %7572, %7570
  %7575 = fsub fast float %7573, %7571
  %7576 = fmul fast float %7574, %5798
  %7577 = fmul fast float %7575, %5798
  %7578 = fadd fast float %7576, %7570
  %7579 = fadd fast float %7577, %7571
  %7580 = fmul fast float %7578, %5664
  %7581 = fmul fast float %7578, %5665
  %7582 = fmul fast float %7578, %5673
  %7583 = fadd fast float %7580, %7579
  %7584 = fadd fast float %7581, %7579
  %7585 = fadd fast float %7582, %7579
  br i1 %5811, label %7586, label %7609

; <label>:7586                                    ; preds = %7563
  %7587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4459, float %7450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7588 = extractvalue %dx.types.ResRet.f32 %7587, 0
  %7589 = extractvalue %dx.types.ResRet.f32 %7587, 1
  %7590 = extractvalue %dx.types.ResRet.f32 %7587, 2
  %7591 = fadd fast float %7588, -5.000000e-01
  %7592 = fadd fast float %7589, -5.000000e-01
  %7593 = fadd fast float %7590, -5.000000e-01
  %7594 = fmul fast float %5664, 4.000000e+00
  %7595 = fmul fast float %7594, %7531
  %7596 = fmul fast float %7595, %7591
  %7597 = fmul fast float %5665, 4.000000e+00
  %7598 = fmul fast float %7597, %7532
  %7599 = fmul fast float %7598, %7592
  %7600 = fmul fast float %5673, 4.000000e+00
  %7601 = fmul fast float %7600, %7533
  %7602 = fmul fast float %7601, %7593
  %7603 = fadd fast float %7596, %7583
  %7604 = fadd fast float %7599, %7584
  %7605 = fadd fast float %7602, %7585
  %7606 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  %7607 = call float @dx.op.unary.f32(i32 7, float %7604)  ; Saturate(value)
  %7608 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  br label %7609

; <label>:7609                                    ; preds = %7586, %7563
  %7610 = phi float [ %7606, %7586 ], [ %7583, %7563 ]
  %7611 = phi float [ %7607, %7586 ], [ %7584, %7563 ]
  %7612 = phi float [ %7608, %7586 ], [ %7585, %7563 ]
  %7613 = call float @dx.op.binary.f32(i32 35, float %7611, float %7612)  ; FMax(a,b)
  %7614 = call float @dx.op.binary.f32(i32 35, float %7610, float %7613)  ; FMax(a,b)
  %7615 = fsub fast float 1.000000e+00, %7614
  %7616 = fmul fast float %7564, %7518
  %7617 = fmul fast float %7565, %7518
  %7618 = fmul fast float %7566, %7518
  %7619 = fsub fast float 1.000000e+00, %7451
  %7620 = bitcast float %7619 to i32
  %7621 = sitofp i32 %7620 to float
  %7622 = fmul fast float %7621, 5.000000e+00
  %7623 = fadd fast float %7622, 0xC1EFBF8940000000
  %7624 = fptosi float %7623 to i32
  %7625 = bitcast i32 %7624 to float
  %7626 = fmul fast float %7625, %4460
  %7627 = fmul fast float %7615, %7626
  %7628 = fmul fast float %7627, %5861
  %7629 = fmul fast float %7627, %5862
  %7630 = fmul fast float %7627, %5863
  %7631 = fadd fast float %7628, %7616
  %7632 = fadd fast float %7629, %7617
  %7633 = fadd fast float %7630, %7618
  %7634 = fmul fast float %7439, %4486
  %7635 = fmul fast float %7634, %7457
  %7636 = fmul fast float %7635, %7615
  %7637 = fmul fast float %7440, %4486
  %7638 = fmul fast float %7637, %7457
  %7639 = fmul fast float %7638, %7615
  %7640 = fmul fast float %7441, %4486
  %7641 = fmul fast float %7640, %7457
  %7642 = fmul fast float %7641, %7615
  %7643 = fadd fast float %7636, %7118
  %7644 = fadd fast float %7639, %7119
  %7645 = fadd fast float %7642, %7120
  %7646 = fmul fast float %7635, %7631
  %7647 = fmul fast float %7638, %7632
  %7648 = fmul fast float %7641, %7633
  %7649 = fadd fast float %7646, %7115
  %7650 = fadd fast float %7647, %7116
  %7651 = fadd fast float %7648, %7117
  br label %7247

; <label>:7652                                    ; preds = %7247
  br label %7653

; <label>:7653                                    ; preds = %7652, %7081
  %7654 = phi float [ %7083, %7081 ], [ %7248, %7652 ]
  %7655 = phi float [ %7084, %7081 ], [ %7249, %7652 ]
  %7656 = phi float [ %7085, %7081 ], [ %7250, %7652 ]
  %7657 = phi float [ %7086, %7081 ], [ %7251, %7652 ]
  %7658 = phi float [ %7087, %7081 ], [ %7252, %7652 ]
  %7659 = phi float [ %7088, %7081 ], [ %7253, %7652 ]
  %7660 = add i32 %7082, 1
  %7661 = icmp ugt i32 %7660, %7078
  br i1 %7661, label %7662, label %7081

; <label>:7662                                    ; preds = %7653
  br label %7663

; <label>:7663                                    ; preds = %7662, %7031, %7021
  %7664 = phi float [ %7022, %7021 ], [ %7022, %7031 ], [ %7654, %7662 ]
  %7665 = phi float [ %7023, %7021 ], [ %7023, %7031 ], [ %7655, %7662 ]
  %7666 = phi float [ %7024, %7021 ], [ %7024, %7031 ], [ %7656, %7662 ]
  %7667 = phi float [ %7025, %7021 ], [ %7025, %7031 ], [ %7657, %7662 ]
  %7668 = phi float [ %7026, %7021 ], [ %7026, %7031 ], [ %7658, %7662 ]
  %7669 = phi float [ %7027, %7021 ], [ %7027, %7031 ], [ %7659, %7662 ]
  %7670 = fmul fast float %4486, %4486
  %7671 = fmul fast float %7670, %5887
  %7672 = fmul fast float %7670, %5888
  %7673 = fmul fast float %7670, %5889
  %7674 = fadd fast float %7671, 1.000000e+00
  %7675 = fadd fast float %7672, 1.000000e+00
  %7676 = fadd fast float %7673, 1.000000e+00
  %7677 = call float @dx.op.dot3.f32(i32 55, float %7674, float %7675, float %7676, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7678 = fsub fast float 1.000000e+00, %7677
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 0
  %7681 = fmul fast float %7680, %5893
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 3
  %7684 = fsub fast float 1.000000e+00, %4464
  %7685 = call float @dx.op.unary.f32(i32 7, float %7684)  ; Saturate(value)
  %7686 = fadd fast float %7669, %4462
  %7687 = fmul fast float %7686, %4464
  %7688 = fmul fast float %7685, %7683
  %7689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %7690 = extractvalue %dx.types.ResRet.i32 %7689, 3
  %7691 = bitcast i32 %7690 to float
  %7692 = fsub fast float %7678, %7691
  %7693 = fmul fast float %7692, %223
  %7694 = fadd fast float %7693, %7691
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 3
  %7697 = fmul fast float %7667, %5661
  %7698 = fmul fast float %7668, %5662
  %7699 = fmul fast float %7669, %5663
  %7700 = fcmp fast ogt float %97, %243
  %7701 = and i1 %7700, %4892
  %7702 = or i1 %4898, %7701
  %7703 = icmp eq i32 %4891, 2
  %7704 = fcmp fast ole float %97, %243
  %7705 = and i1 %7704, %7703
  %7706 = or i1 %7705, %7702
  br i1 %7701, label %7707, label %7964

; <label>:7707                                    ; preds = %7663
  %7708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7708, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7708, 3
  %7711 = fmul fast float %7709, %106
  %7712 = fmul fast float %7710, %107
  %7713 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7714 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7715 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7713, float %7714, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.ResRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.ResRet.f32 %7715, 2
  %7719 = extractvalue %dx.types.ResRet.f32 %7715, 3
  %7720 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7713, float %7714, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7721 = extractvalue %dx.types.ResRet.f32 %7720, 0
  %7722 = extractvalue %dx.types.ResRet.f32 %7720, 1
  %7723 = extractvalue %dx.types.ResRet.f32 %7720, 2
  %7724 = extractvalue %dx.types.ResRet.f32 %7720, 3
  %7725 = call float @dx.op.binary.f32(i32 35, float %7717, float %7718)  ; FMax(a,b)
  %7726 = call float @dx.op.binary.f32(i32 35, float %7716, float %7725)  ; FMax(a,b)
  %7727 = call float @dx.op.binary.f32(i32 35, float %7726, float %7719)  ; FMax(a,b)
  %7728 = call float @dx.op.binary.f32(i32 36, float %7722, float %7723)  ; FMin(a,b)
  %7729 = call float @dx.op.binary.f32(i32 36, float %7721, float %7728)  ; FMin(a,b)
  %7730 = call float @dx.op.binary.f32(i32 36, float %7729, float %7724)  ; FMin(a,b)
  %7731 = fmul fast float %7727, 2.550000e+02
  %7732 = fadd fast float %7731, 0x3F70101020000000
  %7733 = fptoui float %7732 to i32
  %7734 = fmul fast float %7730, 2.550000e+02
  %7735 = fadd fast float %7734, 0x3F70101020000000
  %7736 = fptoui float %7735 to i32
  %7737 = icmp ult i32 %7733, %7736
  br i1 %7737, label %7738, label %7906

; <label>:7738                                    ; preds = %7707
  %7739 = fcmp fast ogt float %96, 9.843750e-01
  %7740 = fadd fast float %97, -4.000000e+00
  %7741 = select i1 %7739, float -4.000000e+00, float %7740
  %7742 = call float @dx.op.binary.f32(i32 35, float %7741, float 0.000000e+00)  ; FMax(a,b)
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7745 = fadd fast float %7744, %7742
  %7746 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7747 = fmul fast float %7745, %7746
  %7748 = call float @dx.op.unary.f32(i32 23, float %7747)  ; Log(value)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7750 = fmul fast float %7749, %7748
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7753 = fmul fast float %7750, %7752
  %7754 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  %7755 = uitofp i32 %7733 to float
  %7756 = uitofp i32 %7736 to float
  %7757 = fadd fast float %7755, 5.000000e-01
  %7758 = fadd fast float %7756, 5.000000e-01
  %7759 = fmul fast float %7752, %7757
  %7760 = fmul fast float %7752, %7758
  %7761 = fadd fast float %7759, 0x3F0FFB4800000000
  %7762 = fadd fast float %7760, 0xBF0FFB4800000000
  %7763 = call float @dx.op.binary.f32(i32 35, float %7754, float %7761)  ; FMax(a,b)
  %7764 = call float @dx.op.binary.f32(i32 36, float %7763, float %7762)  ; FMin(a,b)
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7768 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7769 = fmul fast float %7766, %7764
  %7770 = fadd fast float %7768, %7769
  %7771 = fadd fast float %7768, %7767
  %7772 = fsub fast float %7766, %7767
  %7773 = fadd fast float %7772, %7768
  %7774 = call float @dx.op.binary.f32(i32 35, float %7770, float %7771)  ; FMax(a,b)
  %7775 = call float @dx.op.binary.f32(i32 36, float %7774, float %7773)  ; FMin(a,b)
  %7776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7713, float %7714, float %7775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.i32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.i32 %7780, 1
  %7783 = uitofp i32 %7781 to float
  %7784 = uitofp i32 %7782 to float
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = fmul fast float %7783, %7713
  %7789 = fmul fast float %7784, %7714
  %7790 = fadd fast float %7788, -5.000000e-01
  %7791 = fadd fast float %7789, -5.000000e-01
  %7792 = call float @dx.op.unary.f32(i32 22, float %7790)  ; Frc(value)
  %7793 = call float @dx.op.unary.f32(i32 22, float %7791)  ; Frc(value)
  %7794 = fmul fast float %7792, %7792
  %7795 = fmul fast float %7794, %7792
  %7796 = fsub fast float 3.000000e+00, %7792
  %7797 = fmul fast float %7794, %7796
  %7798 = fmul fast float %7792, 3.000000e+00
  %7799 = fmul fast float %7795, 3.000000e+00
  %7800 = fmul fast float %7794, 6.000000e+00
  %7801 = fsub fast float %7799, %7800
  %7802 = fadd fast float %7801, 4.000000e+00
  %7803 = fmul fast float %7802, 0x3FC5555560000000
  %7804 = fmul fast float %7795, -3.000000e+00
  %7805 = fadd fast float %7794, %7792
  %7806 = fmul fast float %7805, 3.000000e+00
  %7807 = fadd fast float %7804, 1.000000e+00
  %7808 = fadd fast float %7807, %7806
  %7809 = fmul fast float %7795, 0x3FC5555560000000
  %7810 = fmul fast float %7793, %7793
  %7811 = fmul fast float %7810, %7793
  %7812 = fsub fast float 3.000000e+00, %7793
  %7813 = fmul fast float %7810, %7812
  %7814 = fmul fast float %7793, 3.000000e+00
  %7815 = fmul fast float %7811, 3.000000e+00
  %7816 = fmul fast float %7810, 6.000000e+00
  %7817 = fsub fast float %7815, %7816
  %7818 = fadd fast float %7817, 4.000000e+00
  %7819 = fmul fast float %7818, 0x3FC5555560000000
  %7820 = fmul fast float %7811, -3.000000e+00
  %7821 = fadd fast float %7810, %7793
  %7822 = fmul fast float %7821, 3.000000e+00
  %7823 = fadd fast float %7820, 1.000000e+00
  %7824 = fadd fast float %7823, %7822
  %7825 = fmul fast float %7811, 0x3FC5555560000000
  %7826 = fadd fast float %7792, 1.000000e+00
  %7827 = fsub fast float 1.000000e+00, %7798
  %7828 = fadd fast float %7827, %7797
  %7829 = fadd fast float %7828, %7802
  %7830 = fmul fast float %7829, 0x3FC5555560000000
  %7831 = fdiv fast float %7803, %7830
  %7832 = fsub fast float %7826, %7831
  %7833 = fsub fast float 1.000000e+00, %7792
  %7834 = fadd fast float %7808, %7795
  %7835 = fmul fast float %7834, 0x3FC5555560000000
  %7836 = fdiv fast float %7809, %7835
  %7837 = fadd fast float %7833, %7836
  %7838 = fadd fast float %7793, 1.000000e+00
  %7839 = fsub fast float 1.000000e+00, %7814
  %7840 = fadd fast float %7839, %7813
  %7841 = fadd fast float %7840, %7818
  %7842 = fmul fast float %7841, 0x3FC5555560000000
  %7843 = fdiv fast float %7819, %7842
  %7844 = fsub fast float %7838, %7843
  %7845 = fsub fast float 1.000000e+00, %7793
  %7846 = fadd fast float %7824, %7811
  %7847 = fmul fast float %7846, 0x3FC5555560000000
  %7848 = fdiv fast float %7825, %7847
  %7849 = fadd fast float %7848, %7845
  %7850 = fmul fast float %7832, %7786
  %7851 = fsub fast float %7713, %7850
  %7852 = fmul fast float %7837, %7786
  %7853 = fadd fast float %7852, %7713
  %7854 = fmul fast float %7849, %7787
  %7855 = fadd fast float %7854, %7714
  %7856 = fmul fast float %7844, %7787
  %7857 = fsub fast float %7714, %7856
  %7858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7851, float %7857, float %7775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7859 = extractvalue %dx.types.ResRet.f32 %7858, 0
  %7860 = extractvalue %dx.types.ResRet.f32 %7858, 1
  %7861 = extractvalue %dx.types.ResRet.f32 %7858, 2
  %7862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7853, float %7857, float %7775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7863 = extractvalue %dx.types.ResRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.ResRet.f32 %7862, 1
  %7865 = extractvalue %dx.types.ResRet.f32 %7862, 2
  %7866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7851, float %7855, float %7775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7867 = extractvalue %dx.types.ResRet.f32 %7866, 0
  %7868 = extractvalue %dx.types.ResRet.f32 %7866, 1
  %7869 = extractvalue %dx.types.ResRet.f32 %7866, 2
  %7870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7853, float %7855, float %7775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7871 = extractvalue %dx.types.ResRet.f32 %7870, 0
  %7872 = extractvalue %dx.types.ResRet.f32 %7870, 1
  %7873 = extractvalue %dx.types.ResRet.f32 %7870, 2
  %7874 = fsub fast float %7867, %7859
  %7875 = fsub fast float %7868, %7860
  %7876 = fsub fast float %7869, %7861
  %7877 = fmul fast float %7874, %7847
  %7878 = fmul fast float %7875, %7847
  %7879 = fmul fast float %7876, %7847
  %7880 = fadd fast float %7877, %7859
  %7881 = fadd fast float %7878, %7860
  %7882 = fadd fast float %7879, %7861
  %7883 = fsub fast float %7871, %7863
  %7884 = fsub fast float %7872, %7864
  %7885 = fsub fast float %7873, %7865
  %7886 = fmul fast float %7883, %7847
  %7887 = fmul fast float %7884, %7847
  %7888 = fmul fast float %7885, %7847
  %7889 = fsub fast float %7863, %7880
  %7890 = fadd fast float %7889, %7886
  %7891 = fsub fast float %7864, %7881
  %7892 = fadd fast float %7891, %7887
  %7893 = fsub fast float %7865, %7882
  %7894 = fadd fast float %7893, %7888
  %7895 = fmul fast float %7890, %7835
  %7896 = fmul fast float %7892, %7835
  %7897 = fmul fast float %7894, %7835
  %7898 = fadd fast float %7895, %7880
  %7899 = fadd fast float %7896, %7881
  %7900 = fadd fast float %7897, %7882
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7903 = fmul fast float %7898, %7902
  %7904 = fmul fast float %7899, %7902
  %7905 = fmul fast float %7900, %7902
  br label %7906

; <label>:7906                                    ; preds = %7738, %7707
  %7907 = phi float [ %7777, %7738 ], [ 1.000000e+00, %7707 ]
  %7908 = phi float [ %7778, %7738 ], [ 1.000000e+00, %7707 ]
  %7909 = phi float [ %7779, %7738 ], [ 1.000000e+00, %7707 ]
  %7910 = phi float [ %7903, %7738 ], [ 0.000000e+00, %7707 ]
  %7911 = phi float [ %7904, %7738 ], [ 0.000000e+00, %7707 ]
  %7912 = phi float [ %7905, %7738 ], [ 0.000000e+00, %7707 ]
  %7913 = fmul fast float %7910, %7694
  %7914 = fmul fast float %7911, %7694
  %7915 = fmul fast float %7912, %7694
  %7916 = call float @dx.op.dot3.f32(i32 55, float %7907, float %7908, float %7909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7917 = call float @dx.op.dot3.f32(i32 55, float %7913, float %7914, float %7915, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7918 = select i1 %280, float %7916, float %7907
  %7919 = select i1 %280, float %7916, float %7908
  %7920 = select i1 %280, float 1.000000e+00, float %7909
  %7921 = select i1 %280, float %7917, float %7913
  %7922 = select i1 %280, float 0.000000e+00, float %7914
  %7923 = select i1 %280, float 0.000000e+00, float %7915
  %7924 = fmul fast float %7918, %7697
  %7925 = fmul fast float %7919, %7698
  %7926 = fmul fast float %7920, %7699
  %7927 = fadd fast float %7924, %7921
  %7928 = fadd fast float %7925, %7922
  %7929 = fadd fast float %7923, %7926
  %7930 = fmul fast float %7918, %7664
  %7931 = fmul fast float %7919, %7665
  %7932 = fmul fast float %7920, %7666
  %7933 = fmul fast float %142, %7709
  %7934 = fmul fast float %144, %7710
  %7935 = fsub fast float 1.000000e+00, %7933
  %7936 = fsub fast float 1.000000e+00, %7934
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.CBufRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.CBufRet.f32 %7937, 2
  %7941 = fmul fast float %7935, %7938
  %7942 = fmul fast float %7935, %7939
  %7943 = fmul fast float %7935, %7940
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 0
  %7946 = extractvalue %dx.types.CBufRet.f32 %7944, 1
  %7947 = extractvalue %dx.types.CBufRet.f32 %7944, 2
  %7948 = fmul fast float %7936, %7945
  %7949 = fmul fast float %7936, %7946
  %7950 = fmul fast float %7936, %7947
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.CBufRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.CBufRet.f32 %7951, 2
  %7955 = fadd fast float %7948, %7952
  %7956 = fadd fast float %7955, %7941
  %7957 = fadd fast float %7949, %7953
  %7958 = fadd fast float %7957, %7942
  %7959 = fadd fast float %7950, %7954
  %7960 = fadd fast float %7959, %7943
  %7961 = fmul fast float %7956, %243
  %7962 = fmul fast float %7958, %243
  %7963 = fmul fast float %7960, %243
  br label %7964

; <label>:7964                                    ; preds = %7906, %7663
  %7965 = phi float [ %7961, %7906 ], [ %193, %7663 ]
  %7966 = phi float [ %7962, %7906 ], [ %194, %7663 ]
  %7967 = phi float [ %7963, %7906 ], [ %195, %7663 ]
  %7968 = phi float [ %243, %7906 ], [ %97, %7663 ]
  %7969 = phi float [ %7927, %7906 ], [ %7697, %7663 ]
  %7970 = phi float [ %7928, %7906 ], [ %7698, %7663 ]
  %7971 = phi float [ %7929, %7906 ], [ %7699, %7663 ]
  %7972 = phi float [ %7930, %7906 ], [ %7664, %7663 ]
  %7973 = phi float [ %7931, %7906 ], [ %7665, %7663 ]
  %7974 = phi float [ %7932, %7906 ], [ %7666, %7663 ]
  %7975 = phi float [ %7907, %7906 ], [ 1.000000e+00, %7663 ]
  br i1 %7706, label %9130, label %7976

; <label>:7976                                    ; preds = %7964
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 0
  %7979 = extractvalue %dx.types.CBufRet.f32 %7977, 1
  %7980 = extractvalue %dx.types.CBufRet.f32 %7977, 2
  %7981 = extractvalue %dx.types.CBufRet.f32 %7977, 3
  %7982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7982, 0
  %7984 = extractvalue %dx.types.CBufRet.f32 %7982, 1
  %7985 = extractvalue %dx.types.CBufRet.f32 %7982, 2
  %7986 = extractvalue %dx.types.CBufRet.f32 %7982, 3
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 0
  %7989 = extractvalue %dx.types.CBufRet.f32 %7987, 1
  %7990 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %7991 = extractvalue %dx.types.CBufRet.f32 %7987, 3
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %7996 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 3
  %8001 = extractvalue %dx.types.CBufRet.f32 %7999, 0
  %8002 = extractvalue %dx.types.CBufRet.f32 %7999, 1
  %8003 = extractvalue %dx.types.CBufRet.f32 %7999, 2
  %8004 = fcmp fast olt float %8003, -5.000000e-01
  %8005 = call float @dx.op.dot3.f32(i32 55, float %7965, float %7966, float %7967, float %7965, float %7966, float %7967)  ; Dot3(ax,ay,az,bx,by,bz)
  %8006 = call float @dx.op.unary.f32(i32 25, float %8005)  ; Rsqrt(value)
  %8007 = fmul fast float %8006, %8005
  %8008 = fmul fast float %8006, %7965
  %8009 = fmul fast float %8006, %7966
  %8010 = fmul fast float %8006, %7967
  %8011 = fadd fast float %8007, %7981
  %8012 = call float @dx.op.dot3.f32(i32 55, float %8008, float %8009, float %8010, float %7978, float %7979, float %7980)  ; Dot3(ax,ay,az,bx,by,bz)
  %8013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.i32 %8013, 1
  %8015 = and i32 %8014, 1
  %8016 = icmp ne i32 %8015, 0
  %8017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8018 = extractvalue %dx.types.CBufRet.f32 %8017, 2
  %8019 = fcmp fast ogt float %8018, 0.000000e+00
  %8020 = and i1 %8016, %8019
  br i1 %8020, label %8021, label %8427, !dx.controlflow.hints !125

; <label>:8021                                    ; preds = %7976
  %8022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8023 = extractvalue %dx.types.CBufRet.f32 %8022, 3
  %8024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.f32 %8024, 2
  %8026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8027 = extractvalue %dx.types.CBufRet.f32 %8026, 2
  %8028 = fsub fast float %8025, %8027
  %8029 = and i32 %8014, 2
  %8030 = extractvalue %dx.types.CBufRet.i32 %8013, 0
  %8031 = call i32 @dx.op.binary.i32(i32 40, i32 %8030, i32 3)  ; UMin(a,b)
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %8035 = extractvalue %dx.types.CBufRet.f32 %8026, 0
  %8036 = extractvalue %dx.types.CBufRet.f32 %8026, 1
  %8037 = fsub fast float %8033, %8035
  %8038 = fsub fast float %8034, %8036
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = fcmp fast ogt float %8040, 0.000000e+00
  %8042 = fsub fast float -0.000000e+00, %8037
  %8043 = fsub fast float -0.000000e+00, %8038
  %8044 = call float @dx.op.dot2.f32(i32 54, float %8008, float %8009, float %8008, float %8009)  ; Dot2(ax,ay,bx,by)
  %8045 = call float @dx.op.dot2.f32(i32 54, float %8008, float %8009, float %8042, float %8043)  ; Dot2(ax,ay,bx,by)
  %8046 = fmul fast float %8045, 2.000000e+00
  %8047 = call float @dx.op.dot2.f32(i32 54, float %8042, float %8043, float %8042, float %8043)  ; Dot2(ax,ay,bx,by)
  %8048 = fmul fast float %8040, %8040
  %8049 = fsub fast float %8047, %8048
  %8050 = fmul fast float %8046, %8046
  %8051 = fmul fast float %8044, 4.000000e+00
  %8052 = fmul fast float %8051, %8049
  %8053 = fsub fast float %8050, %8052
  %8054 = fcmp fast ogt float %8053, 0.000000e+00
  br i1 %8054, label %8055, label %8070

; <label>:8055                                    ; preds = %8021
  %8056 = fcmp fast ogt float %8046, 0.000000e+00
  %8057 = call float @dx.op.unary.f32(i32 24, float %8053)  ; Sqrt(value)
  %8058 = fsub fast float -0.000000e+00, %8057
  %8059 = select i1 %8056, float %8057, float %8058
  %8060 = fadd fast float %8059, %8046
  %8061 = fmul float %8060, -5.000000e-01
  %8062 = fdiv fast float %8061, %8044
  %8063 = call float @dx.op.binary.f32(i32 35, float %8062, float 0.000000e+00)  ; FMax(a,b)
  %8064 = call float @dx.op.binary.f32(i32 36, float %8007, float %8063)  ; FMin(a,b)
  %8065 = fdiv fast float %8049, %8061
  %8066 = call float @dx.op.binary.f32(i32 35, float %8065, float 0.000000e+00)  ; FMax(a,b)
  %8067 = call float @dx.op.binary.f32(i32 36, float %8007, float %8066)  ; FMin(a,b)
  %8068 = call float @dx.op.binary.f32(i32 36, float %8064, float %8067)  ; FMin(a,b)
  %8069 = call float @dx.op.binary.f32(i32 35, float %8064, float %8067)  ; FMax(a,b)
  br label %8070

; <label>:8070                                    ; preds = %8055, %8021
  %8071 = phi float [ %8069, %8055 ], [ -1.000000e+00, %8021 ]
  %8072 = phi float [ %8068, %8055 ], [ -1.000000e+00, %8021 ]
  %8073 = phi i1 [ true, %8055 ], [ false, %8021 ]
  %8074 = and i1 %8041, %8073
  br i1 %8074, label %8075, label %8077

; <label>:8075                                    ; preds = %8070
  %8076 = fcmp fast oeq float %8072, %8071
  br i1 %8076, label %8380, label %8078

; <label>:8077                                    ; preds = %8070
  br i1 %8041, label %8380, label %8078

; <label>:8078                                    ; preds = %8077, %8075
  %8079 = phi float [ %8007, %8077 ], [ %8071, %8075 ]
  %8080 = phi float [ 0.000000e+00, %8077 ], [ %8072, %8075 ]
  %8081 = icmp ne i32 %8029, 0
  %8082 = fmul fast float %8079, %8010
  %8083 = fadd fast float %8082, %8023
  %8084 = fmul fast float %8083, %8079
  %8085 = select i1 %8081, float 0.000000e+00, float %8084
  %8086 = fcmp fast oeq float %8010, 0.000000e+00
  %8087 = fdiv fast float %8028, %8010
  %8088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8087)  ; FMax(a,b)
  %8089 = select i1 %8086, float %8079, float %8088
  %8090 = call float @dx.op.binary.f32(i32 36, float %8079, float %8089)  ; FMin(a,b)
  %8091 = fcmp fast ogt float %8010, 0.000000e+00
  %8092 = fcmp fast olt float %8028, 0.000000e+00
  br i1 %8091, label %8093, label %8150

; <label>:8093                                    ; preds = %8078
  %8094 = icmp eq i32 %8029, 0
  br i1 %8092, label %8095, label %8139

; <label>:8095                                    ; preds = %8093
  %8096 = select i1 %8094, float %8079, float 0.000000e+00
  %8097 = fsub fast float -0.000000e+00, %8096
  %8098 = call float @dx.op.unary.f32(i32 6, float %8097)  ; FAbs(value)
  %8099 = fmul fast float %8096, %8010
  %8100 = fadd fast float %8099, %8023
  %8101 = fmul fast float %8098, %8100
  %8102 = fsub fast float %8085, %8101
  %8103 = fsub fast float %8079, %8098
  %8104 = select i1 %8094, float %8103, float 0.000000e+00
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8109, 0
  %8111 = extractvalue %dx.types.CBufRet.f32 %8109, 1
  %8112 = extractvalue %dx.types.CBufRet.f32 %8109, 2
  %8113 = extractvalue %dx.types.CBufRet.f32 %8109, 3
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8116 = call float @dx.op.binary.f32(i32 36, float %8102, float %8115)  ; FMin(a,b)
  %8117 = fmul fast float %8113, %8104
  %8118 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8119 = fsub fast float %8110, %8106
  %8120 = fsub fast float %8111, %8107
  %8121 = fsub fast float %8112, %8108
  %8122 = fmul fast float %8118, %8119
  %8123 = fmul fast float %8118, %8120
  %8124 = fmul fast float %8118, %8121
  %8125 = fadd fast float %8122, %8106
  %8126 = fadd fast float %8123, %8107
  %8127 = fadd fast float %8124, %8108
  %8128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.f32 %8128, 0
  %8130 = extractvalue %dx.types.CBufRet.f32 %8128, 1
  %8131 = fadd fast float %8130, %8129
  %8132 = call float @dx.op.unary.f32(i32 7, float %8131)  ; Saturate(value)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8128, 2
  %8134 = extractvalue %dx.types.CBufRet.f32 %8128, 3
  %8135 = fadd fast float %8134, %8133
  %8136 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8137 = fmul fast float %8132, %8116
  %8138 = fmul fast float %8137, %8136
  br label %8380

; <label>:8139                                    ; preds = %8093
  br i1 %8094, label %8140, label %8161

; <label>:8140                                    ; preds = %8139
  %8141 = call float @dx.op.binary.f32(i32 36, float %8090, float %8080)  ; FMin(a,b)
  %8142 = fsub fast float %8090, %8141
  %8143 = fsub fast float %8142, %8079
  %8144 = call float @dx.op.unary.f32(i32 6, float %8143)  ; FAbs(value)
  %8145 = fadd fast float %8142, %8079
  %8146 = fmul fast float %8145, %8010
  %8147 = fadd fast float %8146, %8023
  %8148 = fmul fast float %8147, %8144
  %8149 = fsub fast float %8085, %8148
  br label %8161

; <label>:8150                                    ; preds = %8078
  br i1 %8092, label %8151, label %8161

; <label>:8151                                    ; preds = %8150
  %8152 = call float @dx.op.binary.f32(i32 35, float %8080, float %8090)  ; FMax(a,b)
  %8153 = icmp eq i32 %8029, 0
  %8154 = select i1 %8153, float %8090, float 0.000000e+00
  %8155 = fsub fast float -0.000000e+00, %8154
  %8156 = call float @dx.op.unary.f32(i32 6, float %8155)  ; FAbs(value)
  %8157 = fmul fast float %8154, %8010
  %8158 = fadd fast float %8157, %8023
  %8159 = fmul fast float %8156, %8158
  %8160 = fsub fast float %8085, %8159
  br label %8161

; <label>:8161                                    ; preds = %8151, %8150, %8140, %8139
  %8162 = phi float [ %8080, %8139 ], [ %8080, %8140 ], [ %8152, %8151 ], [ %8080, %8150 ]
  %8163 = phi float [ 0.000000e+00, %8139 ], [ %8144, %8140 ], [ %8156, %8151 ], [ 0.000000e+00, %8150 ]
  %8164 = phi float [ %8085, %8139 ], [ %8149, %8140 ], [ %8160, %8151 ], [ %8085, %8150 ]
  %8165 = phi float [ %8090, %8139 ], [ %8090, %8140 ], [ %8079, %8151 ], [ %8079, %8150 ]
  %8166 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8166, align 4, !tbaa !126, !noalias !128
  %8167 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8167, align 4, !tbaa !126, !noalias !128
  %8168 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8168, align 4, !tbaa !126, !noalias !128
  %8169 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8169, align 4, !tbaa !126, !noalias !128
  %8170 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8170, align 4, !tbaa !126, !noalias !128
  %8171 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8171, align 4, !tbaa !126, !noalias !128
  %8172 = icmp sgt i32 %8031, 0
  br i1 %8172, label %8173, label %8234

; <label>:8173                                    ; preds = %8161
  br label %8174

; <label>:8174                                    ; preds = %8223, %8173
  %8175 = phi i32 [ %8224, %8223 ], [ 0, %8173 ]
  %8176 = phi i32 [ %8225, %8223 ], [ 0, %8173 ]
  %8177 = add nuw i32 %8176, 171
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8177)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.CBufRet.f32 %8181, 1
  %8184 = fsub fast float %8179, %8182
  %8185 = fsub fast float %8180, %8183
  %8186 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8187 = fsub fast float -0.000000e+00, %8184
  %8188 = fsub fast float -0.000000e+00, %8185
  %8189 = call float @dx.op.dot2.f32(i32 54, float %8008, float %8009, float %8187, float %8188)  ; Dot2(ax,ay,bx,by)
  %8190 = fmul fast float %8189, 2.000000e+00
  %8191 = call float @dx.op.dot2.f32(i32 54, float %8187, float %8188, float %8187, float %8188)  ; Dot2(ax,ay,bx,by)
  %8192 = fmul fast float %8186, %8186
  %8193 = fsub fast float %8191, %8192
  %8194 = fmul fast float %8190, %8190
  %8195 = fmul fast float %8051, %8193
  %8196 = fsub fast float %8194, %8195
  %8197 = fcmp fast ogt float %8196, 0.000000e+00
  br i1 %8197, label %8198, label %8213

; <label>:8198                                    ; preds = %8174
  %8199 = fcmp fast ogt float %8190, 0.000000e+00
  %8200 = call float @dx.op.unary.f32(i32 24, float %8196)  ; Sqrt(value)
  %8201 = fsub fast float -0.000000e+00, %8200
  %8202 = select i1 %8199, float %8200, float %8201
  %8203 = fadd fast float %8202, %8190
  %8204 = fmul float %8203, -5.000000e-01
  %8205 = fdiv fast float %8204, %8044
  %8206 = call float @dx.op.binary.f32(i32 35, float %8205, float 0.000000e+00)  ; FMax(a,b)
  %8207 = call float @dx.op.binary.f32(i32 36, float %8079, float %8206)  ; FMin(a,b)
  %8208 = fdiv fast float %8193, %8204
  %8209 = call float @dx.op.binary.f32(i32 35, float %8208, float 0.000000e+00)  ; FMax(a,b)
  %8210 = call float @dx.op.binary.f32(i32 36, float %8079, float %8209)  ; FMin(a,b)
  %8211 = call float @dx.op.binary.f32(i32 36, float %8207, float %8210)  ; FMin(a,b)
  %8212 = call float @dx.op.binary.f32(i32 35, float %8207, float %8210)  ; FMax(a,b)
  br label %8213

; <label>:8213                                    ; preds = %8198, %8174
  %8214 = phi float [ %8212, %8198 ], [ -1.000000e+00, %8174 ]
  %8215 = phi float [ %8211, %8198 ], [ -1.000000e+00, %8174 ]
  %8216 = phi i1 [ true, %8198 ], [ false, %8174 ]
  br i1 %8216, label %8217, label %8223

; <label>:8217                                    ; preds = %8213
  %8218 = call float @dx.op.binary.f32(i32 35, float %8162, float %8215)  ; FMax(a,b)
  %8219 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8176
  store float %8218, float* %8219, align 4, !tbaa !126, !noalias !128
  %8220 = call float @dx.op.binary.f32(i32 35, float %8162, float %8214)  ; FMax(a,b)
  %8221 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8176
  store float %8220, float* %8221, align 4, !tbaa !126, !noalias !128
  %8222 = add nsw i32 %8175, 1
  br label %8223

; <label>:8223                                    ; preds = %8217, %8213
  %8224 = phi i32 [ %8222, %8217 ], [ %8175, %8213 ]
  %8225 = add nuw nsw i32 %8176, 1
  %8226 = icmp eq i32 %8225, %8031
  br i1 %8226, label %8227, label %8174

; <label>:8227                                    ; preds = %8223
  %8228 = load float, float* %8168, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8229 = load float, float* %8167, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8230 = load float, float* %8166, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8231 = load float, float* %8171, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8232 = load float, float* %8170, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8233 = load float, float* %8169, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8234

; <label>:8234                                    ; preds = %8227, %8161
  %8235 = phi float [ -1.000000e+00, %8161 ], [ %8233, %8227 ]
  %8236 = phi float [ -1.000000e+00, %8161 ], [ %8232, %8227 ]
  %8237 = phi float [ -1.000000e+00, %8161 ], [ %8231, %8227 ]
  %8238 = phi float [ -1.000000e+00, %8161 ], [ %8230, %8227 ]
  %8239 = phi float [ -1.000000e+00, %8161 ], [ %8229, %8227 ]
  %8240 = phi float [ -1.000000e+00, %8161 ], [ %8228, %8227 ]
  %8241 = phi i32 [ 0, %8161 ], [ %8224, %8227 ]
  %8242 = call float @dx.op.binary.f32(i32 36, float %8239, float %8240)  ; FMin(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8238, float %8242)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 35, float %8238, float %8239)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8244, float %8240)  ; FMin(a,b)
  %8246 = call float @dx.op.binary.f32(i32 36, float %8238, float %8239)  ; FMin(a,b)
  %8247 = call float @dx.op.binary.f32(i32 35, float %8246, float %8245)  ; FMax(a,b)
  %8248 = call float @dx.op.binary.f32(i32 35, float %8239, float %8240)  ; FMax(a,b)
  %8249 = call float @dx.op.binary.f32(i32 35, float %8238, float %8248)  ; FMax(a,b)
  store float %8243, float* %8166, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8247, float* %8167, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8249, float* %8168, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8250 = call float @dx.op.binary.f32(i32 36, float %8236, float %8237)  ; FMin(a,b)
  %8251 = call float @dx.op.binary.f32(i32 36, float %8235, float %8250)  ; FMin(a,b)
  %8252 = call float @dx.op.binary.f32(i32 35, float %8235, float %8236)  ; FMax(a,b)
  %8253 = call float @dx.op.binary.f32(i32 36, float %8252, float %8237)  ; FMin(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8235, float %8236)  ; FMin(a,b)
  %8255 = call float @dx.op.binary.f32(i32 35, float %8254, float %8253)  ; FMax(a,b)
  %8256 = call float @dx.op.binary.f32(i32 35, float %8236, float %8237)  ; FMax(a,b)
  %8257 = call float @dx.op.binary.f32(i32 35, float %8235, float %8256)  ; FMax(a,b)
  store float %8251, float* %8169, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8255, float* %8170, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8257, float* %8171, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8258 = sub nsw i32 3, %8241
  %8259 = icmp sgt i32 %8258, 2
  br i1 %8259, label %8260, label %8298

; <label>:8260                                    ; preds = %8234
  %8261 = icmp eq i32 %8029, 0
  %8262 = fsub fast float %8079, %8163
  %8263 = select i1 %8261, float %8262, float %8163
  %8264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8265 = extractvalue %dx.types.CBufRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.CBufRet.f32 %8264, 1
  %8267 = extractvalue %dx.types.CBufRet.f32 %8264, 2
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8272 = extractvalue %dx.types.CBufRet.f32 %8268, 3
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 3
  %8275 = call float @dx.op.binary.f32(i32 36, float %8164, float %8274)  ; FMin(a,b)
  %8276 = fmul fast float %8272, %8263
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  %8278 = fsub fast float %8269, %8265
  %8279 = fsub fast float %8270, %8266
  %8280 = fsub fast float %8271, %8267
  %8281 = fmul fast float %8277, %8278
  %8282 = fmul fast float %8277, %8279
  %8283 = fmul fast float %8277, %8280
  %8284 = fadd fast float %8281, %8265
  %8285 = fadd fast float %8282, %8266
  %8286 = fadd fast float %8283, %8267
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8289 = extractvalue %dx.types.CBufRet.f32 %8287, 1
  %8290 = fadd fast float %8289, %8288
  %8291 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8293 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8294 = fadd fast float %8293, %8292
  %8295 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8296 = fmul fast float %8291, %8275
  %8297 = fmul fast float %8296, %8295
  br label %8380

; <label>:8298                                    ; preds = %8234
  %8299 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8258
  %8300 = load float, float* %8299, align 4, !tbaa !126, !noalias !128
  %8301 = fcmp fast olt float %8300, %8165
  %8302 = icmp sgt i32 %8241, 0
  %8303 = and i1 %8302, %8301
  br i1 %8303, label %8304, label %8341

; <label>:8304                                    ; preds = %8298
  br label %8305

; <label>:8305                                    ; preds = %8334, %8304
  %8306 = phi float [ %8335, %8334 ], [ %8163, %8304 ]
  %8307 = phi float [ %8336, %8334 ], [ %8164, %8304 ]
  %8308 = phi float [ %8316, %8334 ], [ %8300, %8304 ]
  %8309 = phi i32 [ %8313, %8334 ], [ %8258, %8304 ]
  %8310 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8309
  %8311 = load float, float* %8310, align 4, !tbaa !126, !noalias !128
  %8312 = icmp slt i32 %8309, 2
  %8313 = add nsw i32 %8309, 1
  %8314 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8313
  %8315 = load float, float* %8314, align 4, !tbaa !126, !noalias !128
  %8316 = select i1 %8312, float %8315, float %8079
  %8317 = call float @dx.op.binary.f32(i32 36, float %8316, float %8311)  ; FMin(a,b)
  %8318 = call float @dx.op.binary.f32(i32 36, float %8165, float %8317)  ; FMin(a,b)
  %8319 = icmp eq i32 %8029, 0
  %8320 = fadd fast float %8318, %8308
  %8321 = fmul fast float %8320, %8010
  %8322 = fadd fast float %8321, %8023
  br i1 %8319, label %8328, label %8323

; <label>:8323                                    ; preds = %8305
  %8324 = fsub fast float %8318, %8308
  %8325 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8324)  ; FMax(a,b)
  %8326 = fmul fast float %8325, %8322
  %8327 = fadd fast float %8326, %8307
  br label %8334

; <label>:8328                                    ; preds = %8305
  %8329 = fsub fast float %8308, %8318
  %8330 = call float @dx.op.unary.f32(i32 6, float %8329)  ; FAbs(value)
  %8331 = fadd fast float %8330, %8306
  %8332 = fmul fast float %8330, %8322
  %8333 = fsub fast float %8307, %8332
  br label %8334

; <label>:8334                                    ; preds = %8328, %8323
  %8335 = phi float [ %8325, %8323 ], [ %8331, %8328 ]
  %8336 = phi float [ %8327, %8323 ], [ %8333, %8328 ]
  %8337 = fcmp fast olt float %8316, %8165
  %8338 = icmp slt i32 %8313, 3
  %8339 = and i1 %8338, %8337
  br i1 %8339, label %8305, label %8340

; <label>:8340                                    ; preds = %8334
  br label %8341

; <label>:8341                                    ; preds = %8340, %8298
  %8342 = phi float [ %8163, %8298 ], [ %8335, %8340 ]
  %8343 = phi float [ %8164, %8298 ], [ %8336, %8340 ]
  %8344 = fsub fast float %8079, %8342
  %8345 = select i1 %8081, float %8342, float %8344
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.CBufRet.f32 %8350, 1
  %8353 = extractvalue %dx.types.CBufRet.f32 %8350, 2
  %8354 = extractvalue %dx.types.CBufRet.f32 %8350, 3
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 3
  %8357 = call float @dx.op.binary.f32(i32 36, float %8343, float %8356)  ; FMin(a,b)
  %8358 = fmul fast float %8354, %8345
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = fsub fast float %8351, %8347
  %8361 = fsub fast float %8352, %8348
  %8362 = fsub fast float %8353, %8349
  %8363 = fmul fast float %8359, %8360
  %8364 = fmul fast float %8359, %8361
  %8365 = fmul fast float %8359, %8362
  %8366 = fadd fast float %8363, %8347
  %8367 = fadd fast float %8364, %8348
  %8368 = fadd fast float %8365, %8349
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 0
  %8371 = extractvalue %dx.types.CBufRet.f32 %8369, 1
  %8372 = fadd fast float %8371, %8370
  %8373 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8369, 2
  %8375 = extractvalue %dx.types.CBufRet.f32 %8369, 3
  %8376 = fadd fast float %8375, %8374
  %8377 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8378 = fmul fast float %8373, %8357
  %8379 = fmul fast float %8378, %8377
  br label %8380

; <label>:8380                                    ; preds = %8341, %8260, %8095, %8077, %8075
  %8381 = phi float [ %8104, %8095 ], [ %8263, %8260 ], [ %8345, %8341 ], [ 0.000000e+00, %8075 ], [ 0.000000e+00, %8077 ]
  %8382 = phi float [ %8138, %8095 ], [ %8297, %8260 ], [ %8379, %8341 ], [ 0.000000e+00, %8075 ], [ 0.000000e+00, %8077 ]
  %8383 = phi float [ %8125, %8095 ], [ %8284, %8260 ], [ %8366, %8341 ], [ 0.000000e+00, %8075 ], [ 0.000000e+00, %8077 ]
  %8384 = phi float [ %8126, %8095 ], [ %8285, %8260 ], [ %8367, %8341 ], [ 0.000000e+00, %8075 ], [ 0.000000e+00, %8077 ]
  %8385 = phi float [ %8127, %8095 ], [ %8286, %8260 ], [ %8368, %8341 ], [ 0.000000e+00, %8075 ], [ 0.000000e+00, %8077 ]
  %8386 = fmul fast float %8018, %8382
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %8389 = fsub fast float %8025, %8388
  %8390 = fcmp fast olt float %8386, -2.000000e+01
  %8391 = call float @dx.op.unary.f32(i32 21, float %8386)  ; Exp(value)
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8394 = extractvalue %dx.types.CBufRet.f32 %8392, 3
  %8395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8395, 2
  %8397 = fmul fast float %8394, %8389
  %8398 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8399 = fsub fast float 1.000000e+00, %8398
  %8400 = fmul fast float %8010, 5.000000e-01
  %8401 = fadd fast float %8400, 5.000000e-01
  %8402 = call float @dx.op.unary.f32(i32 7, float %8401)  ; Saturate(value)
  %8403 = fsub fast float 1.000000e+00, %8402
  %8404 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8399)  ; FMax(a,b)
  %8405 = fdiv fast float %8403, %8404
  %8406 = fsub fast float %8389, %7967
  %8407 = call float @dx.op.unary.f32(i32 6, float %8406)  ; FAbs(value)
  %8408 = fmul fast float %8407, %8393
  %8409 = call float @dx.op.unary.f32(i32 7, float %8405)  ; Saturate(value)
  %8410 = fsub fast float 1.000000e+00, %8408
  %8411 = fmul fast float %8410, %8409
  %8412 = fadd fast float %8411, %8408
  %8413 = fmul fast float %8396, %8389
  %8414 = call float @dx.op.unary.f32(i32 7, float %8413)  ; Saturate(value)
  %8415 = fsub fast float 1.000000e+00, %8412
  %8416 = fmul fast float %8415, %8414
  %8417 = fadd fast float %8416, %8412
  %8418 = call float @dx.op.unary.f32(i32 7, float %8417)  ; Saturate(value)
  %8419 = fadd fast float %8391, -1.000000e+00
  %8420 = select i1 %8390, float -1.000000e+00, float %8419
  %8421 = fmul fast float %8418, %8420
  %8422 = fadd fast float %8421, 1.000000e+00
  %8423 = fsub fast float -0.000000e+00, %8421
  %8424 = fmul fast float %8383, %8423
  %8425 = fmul fast float %8384, %8423
  %8426 = fmul fast float %8385, %8423
  br label %8427

; <label>:8427                                    ; preds = %8380, %7976
  %8428 = phi float [ %8381, %8380 ], [ 0.000000e+00, %7976 ]
  %8429 = phi float [ %8422, %8380 ], [ 1.000000e+00, %7976 ]
  %8430 = phi float [ %8424, %8380 ], [ 0.000000e+00, %7976 ]
  %8431 = phi float [ %8425, %8380 ], [ 0.000000e+00, %7976 ]
  %8432 = phi float [ %8426, %8380 ], [ 0.000000e+00, %7976 ]
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8435 = fsub fast float 1.000000e+00, %8429
  %8436 = fmul fast float %8435, %8011
  %8437 = fmul fast float %8436, %8434
  %8438 = fsub fast float %8011, %8437
  br i1 %8004, label %8439, label %8468, !dx.controlflow.hints !164

; <label>:8439                                    ; preds = %8427
  %8440 = fmul fast float %8012, %8001
  %8441 = fadd fast float %8440, %8002
  %8442 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8443 = fmul fast float %7983, %8438
  %8444 = fsub fast float -0.000000e+00, %8443
  %8445 = fmul fast float %7984, %8438
  %8446 = fsub fast float -0.000000e+00, %8445
  %8447 = call float @dx.op.unary.f32(i32 21, float %8444)  ; Exp(value)
  %8448 = call float @dx.op.unary.f32(i32 21, float %8446)  ; Exp(value)
  %8449 = call float @dx.op.binary.f32(i32 35, float %7991, float %8447)  ; FMax(a,b)
  %8450 = call float @dx.op.binary.f32(i32 35, float %7991, float %8448)  ; FMax(a,b)
  %8451 = fsub fast float %8450, %8449
  %8452 = fmul fast float %8451, %8442
  %8453 = fadd fast float %8452, %8449
  %8454 = call float @dx.op.unary.f32(i32 7, float %8453)  ; Saturate(value)
  %8455 = fsub fast float %7988, %7993
  %8456 = fsub fast float %7989, %7994
  %8457 = fsub fast float %7990, %7995
  %8458 = fmul fast float %8442, %8455
  %8459 = fmul fast float %8442, %8456
  %8460 = fmul fast float %8442, %8457
  %8461 = fadd fast float %8458, %7993
  %8462 = fadd fast float %8459, %7994
  %8463 = fadd fast float %8460, %7995
  %8464 = fsub fast float 1.000000e+00, %8454
  %8465 = fmul fast float %8464, %8461
  %8466 = fmul fast float %8464, %8462
  %8467 = fmul fast float %8464, %8463
  br label %8527

; <label>:8468                                    ; preds = %8427
  %8469 = fmul fast float %8438, %8000
  %8470 = call float @dx.op.unary.f32(i32 7, float %8469)  ; Saturate(value)
  %8471 = fsub fast float 2.000000e+00, %8470
  %8472 = fmul fast float %8470, 9.921875e-01
  %8473 = fmul fast float %8472, %8471
  %8474 = fadd fast float %8473, 3.906250e-03
  %8475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8474, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8476 = extractvalue %dx.types.ResRet.f32 %8475, 0
  %8477 = fsub fast float %8470, %8476
  %8478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8477)  ; FMax(a,b)
  %8479 = fmul fast float %7986, %7967
  %8480 = call float @dx.op.unary.f32(i32 6, float %8479)  ; FAbs(value)
  %8481 = fcmp fast ogt float %8480, 0x3EB0C6F7A0000000
  br i1 %8481, label %8482, label %8488, !dx.controlflow.hints !165

; <label>:8482                                    ; preds = %8468
  %8483 = fmul fast float %8479, 0xBFF7154760000000
  %8484 = call float @dx.op.unary.f32(i32 21, float %8483)  ; Exp(value)
  %8485 = fsub fast float 1.000000e+00, %8484
  %8486 = fdiv fast float %8485, %8479
  %8487 = fmul fast float %8486, %7996
  br label %8488

; <label>:8488                                    ; preds = %8482, %8468
  %8489 = phi float [ %8487, %8482 ], [ %7996, %8468 ]
  %8490 = fadd fast float %8489, %7998
  %8491 = fmul fast float %8490, %8478
  %8492 = fmul fast float %7983, %8491
  %8493 = fsub fast float -0.000000e+00, %8492
  %8494 = fmul fast float %7984, %8491
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fmul fast float %7985, %8491
  %8497 = fsub fast float -0.000000e+00, %8496
  %8498 = call float @dx.op.unary.f32(i32 21, float %8493)  ; Exp(value)
  %8499 = call float @dx.op.unary.f32(i32 21, float %8495)  ; Exp(value)
  %8500 = call float @dx.op.unary.f32(i32 21, float %8497)  ; Exp(value)
  %8501 = fmul fast float %8012, %8012
  %8502 = fadd fast float %8501, 1.000000e+00
  %8503 = fmul fast float %8502, 0x3FAE8EC8A0000000
  %8504 = fmul fast float %8503, %7993
  %8505 = fmul fast float %8503, %7994
  %8506 = fmul fast float %8503, %7995
  %8507 = fmul fast float %8012, %7991
  %8508 = fsub fast float 1.000000e+00, %8507
  %8509 = fmul fast float %7991, %7991
  %8510 = fsub fast float 1.000000e+00, %8509
  %8511 = fmul fast float %8510, 0x3FB45F3060000000
  %8512 = fmul fast float %8508, %8508
  %8513 = fdiv fast float 1.000000e+00, %8512
  %8514 = fmul fast float %8511, %8513
  %8515 = fmul fast float %8514, %7988
  %8516 = fmul fast float %8514, %7989
  %8517 = fmul fast float %8514, %7990
  %8518 = fadd fast float %8515, %8504
  %8519 = fadd fast float %8516, %8505
  %8520 = fadd fast float %8517, %8506
  %8521 = fsub fast float 1.000000e+00, %8498
  %8522 = fsub fast float 1.000000e+00, %8499
  %8523 = fsub fast float 1.000000e+00, %8500
  %8524 = fmul fast float %8518, %8521
  %8525 = fmul fast float %8519, %8522
  %8526 = fmul fast float %8520, %8523
  br label %8527

; <label>:8527                                    ; preds = %8488, %8439
  %8528 = phi float [ %8465, %8439 ], [ %8524, %8488 ]
  %8529 = phi float [ %8466, %8439 ], [ %8525, %8488 ]
  %8530 = phi float [ %8467, %8439 ], [ %8526, %8488 ]
  %8531 = phi float [ %8454, %8439 ], [ %8498, %8488 ]
  %8532 = phi float [ %8454, %8439 ], [ %8499, %8488 ]
  %8533 = phi float [ %8454, %8439 ], [ %8500, %8488 ]
  br i1 %8020, label %8534, label %8732, !dx.controlflow.hints !166

; <label>:8534                                    ; preds = %8527
  %8535 = extractvalue %dx.types.CBufRet.f32 %8433, 0
  %8536 = fmul fast float %8535, %8435
  %8537 = fsub fast float %8430, %8528
  %8538 = fsub fast float %8431, %8529
  %8539 = fsub fast float %8432, %8530
  %8540 = fmul fast float %8536, %8537
  %8541 = fmul fast float %8536, %8538
  %8542 = fmul fast float %8536, %8539
  %8543 = fadd fast float %8540, %8528
  %8544 = fadd fast float %8541, %8529
  %8545 = fadd fast float %8542, %8530
  %8546 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8531)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8532)  ; FMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8533)  ; FMax(a,b)
  %8549 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8429)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 35, float %8428, float %8438)  ; FMax(a,b)
  %8551 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8550)  ; FMax(a,b)
  %8552 = fdiv fast float %8428, %8551
  %8553 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8554 = fdiv fast float %8438, %8551
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = fcmp fast une float %8549, 1.000000e+00
  br i1 %8556, label %8557, label %8570, !dx.controlflow.hints !167

; <label>:8557                                    ; preds = %8534
  %8558 = call float @dx.op.unary.f32(i32 23, float %8549)  ; Log(value)
  %8559 = fmul fast float %8558, 0x3FE62E4300000000
  %8560 = fmul fast float %8430, %8559
  %8561 = fsub fast float -0.000000e+00, %8560
  %8562 = fmul fast float %8431, %8559
  %8563 = fsub fast float -0.000000e+00, %8562
  %8564 = fmul fast float %8432, %8559
  %8565 = fsub fast float -0.000000e+00, %8564
  %8566 = fsub fast float 1.000000e+00, %8549
  %8567 = fdiv fast float %8561, %8566
  %8568 = fdiv fast float %8563, %8566
  %8569 = fdiv fast float %8565, %8566
  br label %8570

; <label>:8570                                    ; preds = %8557, %8534
  %8571 = phi float [ %8567, %8557 ], [ %8430, %8534 ]
  %8572 = phi float [ %8568, %8557 ], [ %8431, %8534 ]
  %8573 = phi float [ %8569, %8557 ], [ %8432, %8534 ]
  %8574 = phi float [ %8559, %8557 ], [ 0.000000e+00, %8534 ]
  %8575 = fcmp fast une float %8546, 1.000000e+00
  br i1 %8575, label %8576, label %8583, !dx.controlflow.hints !168

; <label>:8576                                    ; preds = %8570
  %8577 = call float @dx.op.unary.f32(i32 23, float %8546)  ; Log(value)
  %8578 = fmul fast float %8577, 0x3FE62E4300000000
  %8579 = fmul fast float %8543, %8578
  %8580 = fsub fast float -0.000000e+00, %8579
  %8581 = fsub fast float 1.000000e+00, %8546
  %8582 = fdiv fast float %8580, %8581
  br label %8583

; <label>:8583                                    ; preds = %8576, %8570
  %8584 = phi float [ %8582, %8576 ], [ %8543, %8570 ]
  %8585 = phi float [ %8578, %8576 ], [ 0.000000e+00, %8570 ]
  %8586 = fcmp fast une float %8547, 1.000000e+00
  br i1 %8586, label %8587, label %8594, !dx.controlflow.hints !168

; <label>:8587                                    ; preds = %8583
  %8588 = call float @dx.op.unary.f32(i32 23, float %8547)  ; Log(value)
  %8589 = fmul fast float %8588, 0x3FE62E4300000000
  %8590 = fmul fast float %8544, %8589
  %8591 = fsub fast float -0.000000e+00, %8590
  %8592 = fsub fast float 1.000000e+00, %8547
  %8593 = fdiv fast float %8591, %8592
  br label %8594

; <label>:8594                                    ; preds = %8587, %8583
  %8595 = phi float [ %8593, %8587 ], [ %8544, %8583 ]
  %8596 = phi float [ %8589, %8587 ], [ 0.000000e+00, %8583 ]
  %8597 = fcmp fast une float %8548, 1.000000e+00
  br i1 %8597, label %8598, label %8605, !dx.controlflow.hints !168

; <label>:8598                                    ; preds = %8594
  %8599 = call float @dx.op.unary.f32(i32 23, float %8548)  ; Log(value)
  %8600 = fmul fast float %8599, 0x3FE62E4300000000
  %8601 = fmul fast float %8545, %8600
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = fsub fast float 1.000000e+00, %8548
  %8604 = fdiv fast float %8602, %8603
  br label %8605

; <label>:8605                                    ; preds = %8598, %8594
  %8606 = phi float [ %8604, %8598 ], [ %8545, %8594 ]
  %8607 = phi float [ %8600, %8598 ], [ 0.000000e+00, %8594 ]
  %8608 = fmul fast float %8571, %8555
  %8609 = fmul fast float %8572, %8555
  %8610 = fmul fast float %8573, %8555
  %8611 = fmul fast float %8574, %8555
  %8612 = fmul fast float %8584, %8553
  %8613 = fmul fast float %8595, %8553
  %8614 = fmul fast float %8606, %8553
  %8615 = fmul fast float %8585, %8553
  %8616 = fmul fast float %8596, %8553
  %8617 = fmul fast float %8607, %8553
  %8618 = fadd fast float %8612, %8608
  %8619 = fadd fast float %8613, %8609
  %8620 = fadd fast float %8614, %8610
  %8621 = fadd fast float %8615, %8611
  %8622 = fadd fast float %8616, %8611
  %8623 = fadd fast float %8617, %8611
  %8624 = fcmp fast une float %8621, 0.000000e+00
  br i1 %8624, label %8625, label %8632, !dx.controlflow.hints !169

; <label>:8625                                    ; preds = %8605
  %8626 = fmul fast float %8621, 0x3FF7154760000000
  %8627 = call float @dx.op.unary.f32(i32 21, float %8626)  ; Exp(value)
  %8628 = fsub fast float 1.000000e+00, %8627
  %8629 = fmul fast float %8618, %8628
  %8630 = fsub fast float -0.000000e+00, %8629
  %8631 = fdiv fast float %8630, %8621
  br label %8632

; <label>:8632                                    ; preds = %8625, %8605
  %8633 = phi float [ %8627, %8625 ], [ 1.000000e+00, %8605 ]
  %8634 = phi float [ %8631, %8625 ], [ %8618, %8605 ]
  %8635 = fcmp fast une float %8622, 0.000000e+00
  br i1 %8635, label %8636, label %8643, !dx.controlflow.hints !169

; <label>:8636                                    ; preds = %8632
  %8637 = fmul fast float %8622, 0x3FF7154760000000
  %8638 = call float @dx.op.unary.f32(i32 21, float %8637)  ; Exp(value)
  %8639 = fsub fast float 1.000000e+00, %8638
  %8640 = fmul fast float %8619, %8639
  %8641 = fsub fast float -0.000000e+00, %8640
  %8642 = fdiv fast float %8641, %8622
  br label %8643

; <label>:8643                                    ; preds = %8636, %8632
  %8644 = phi float [ %8638, %8636 ], [ 1.000000e+00, %8632 ]
  %8645 = phi float [ %8642, %8636 ], [ %8619, %8632 ]
  %8646 = fcmp fast une float %8623, 0.000000e+00
  br i1 %8646, label %8647, label %8654, !dx.controlflow.hints !169

; <label>:8647                                    ; preds = %8643
  %8648 = fmul fast float %8623, 0x3FF7154760000000
  %8649 = call float @dx.op.unary.f32(i32 21, float %8648)  ; Exp(value)
  %8650 = fsub fast float 1.000000e+00, %8649
  %8651 = fmul fast float %8620, %8650
  %8652 = fsub fast float -0.000000e+00, %8651
  %8653 = fdiv fast float %8652, %8623
  br label %8654

; <label>:8654                                    ; preds = %8647, %8643
  %8655 = phi float [ %8649, %8647 ], [ 1.000000e+00, %8643 ]
  %8656 = phi float [ %8653, %8647 ], [ %8620, %8643 ]
  %8657 = fcmp fast ogt float %8553, %8555
  br i1 %8657, label %8658, label %8678

; <label>:8658                                    ; preds = %8654
  %8659 = fsub fast float 1.000000e+00, %8555
  %8660 = fmul fast float %8571, %8659
  %8661 = fmul fast float %8572, %8659
  %8662 = fmul fast float %8573, %8659
  %8663 = fmul fast float %8574, %8659
  %8664 = fcmp fast une float %8663, 0.000000e+00
  br i1 %8664, label %8665, label %8716, !dx.controlflow.hints !170

; <label>:8665                                    ; preds = %8658
  %8666 = fmul fast float %8663, 0x3FF7154760000000
  %8667 = call float @dx.op.unary.f32(i32 21, float %8666)  ; Exp(value)
  %8668 = fsub fast float 1.000000e+00, %8667
  %8669 = fmul fast float %8660, %8668
  %8670 = fsub fast float -0.000000e+00, %8669
  %8671 = fmul fast float %8661, %8668
  %8672 = fsub fast float -0.000000e+00, %8671
  %8673 = fmul fast float %8662, %8668
  %8674 = fsub fast float -0.000000e+00, %8673
  %8675 = fdiv fast float %8670, %8663
  %8676 = fdiv fast float %8672, %8663
  %8677 = fdiv fast float %8674, %8663
  br label %8716

; <label>:8678                                    ; preds = %8654
  %8679 = fsub fast float 1.000000e+00, %8553
  %8680 = fmul fast float %8584, %8679
  %8681 = fmul fast float %8595, %8679
  %8682 = fmul fast float %8606, %8679
  %8683 = fmul fast float %8585, %8679
  %8684 = fmul fast float %8596, %8679
  %8685 = fmul fast float %8607, %8679
  %8686 = fcmp fast une float %8683, 0.000000e+00
  br i1 %8686, label %8687, label %8694, !dx.controlflow.hints !169

; <label>:8687                                    ; preds = %8678
  %8688 = fmul fast float %8683, 0x3FF7154760000000
  %8689 = call float @dx.op.unary.f32(i32 21, float %8688)  ; Exp(value)
  %8690 = fsub fast float 1.000000e+00, %8689
  %8691 = fmul fast float %8680, %8690
  %8692 = fsub fast float -0.000000e+00, %8691
  %8693 = fdiv fast float %8692, %8683
  br label %8694

; <label>:8694                                    ; preds = %8687, %8678
  %8695 = phi float [ %8693, %8687 ], [ %8680, %8678 ]
  %8696 = phi float [ %8689, %8687 ], [ 1.000000e+00, %8678 ]
  %8697 = fcmp fast une float %8684, 0.000000e+00
  br i1 %8697, label %8698, label %8705, !dx.controlflow.hints !169

; <label>:8698                                    ; preds = %8694
  %8699 = fmul fast float %8684, 0x3FF7154760000000
  %8700 = call float @dx.op.unary.f32(i32 21, float %8699)  ; Exp(value)
  %8701 = fsub fast float 1.000000e+00, %8700
  %8702 = fmul fast float %8681, %8701
  %8703 = fsub fast float -0.000000e+00, %8702
  %8704 = fdiv fast float %8703, %8684
  br label %8705

; <label>:8705                                    ; preds = %8698, %8694
  %8706 = phi float [ %8704, %8698 ], [ %8681, %8694 ]
  %8707 = phi float [ %8700, %8698 ], [ 1.000000e+00, %8694 ]
  %8708 = fcmp fast une float %8685, 0.000000e+00
  br i1 %8708, label %8709, label %8716, !dx.controlflow.hints !169

; <label>:8709                                    ; preds = %8705
  %8710 = fmul fast float %8685, 0x3FF7154760000000
  %8711 = call float @dx.op.unary.f32(i32 21, float %8710)  ; Exp(value)
  %8712 = fsub fast float 1.000000e+00, %8711
  %8713 = fmul fast float %8682, %8712
  %8714 = fsub fast float -0.000000e+00, %8713
  %8715 = fdiv fast float %8714, %8685
  br label %8716

; <label>:8716                                    ; preds = %8709, %8705, %8665, %8658
  %8717 = phi float [ %8715, %8709 ], [ %8677, %8665 ], [ %8662, %8658 ], [ %8682, %8705 ]
  %8718 = phi float [ %8706, %8709 ], [ %8676, %8665 ], [ %8661, %8658 ], [ %8706, %8705 ]
  %8719 = phi float [ %8695, %8709 ], [ %8675, %8665 ], [ %8660, %8658 ], [ %8695, %8705 ]
  %8720 = phi float [ %8711, %8709 ], [ %8667, %8665 ], [ 1.000000e+00, %8658 ], [ 1.000000e+00, %8705 ]
  %8721 = phi float [ %8707, %8709 ], [ %8667, %8665 ], [ 1.000000e+00, %8658 ], [ %8707, %8705 ]
  %8722 = phi float [ %8696, %8709 ], [ %8667, %8665 ], [ 1.000000e+00, %8658 ], [ %8696, %8705 ]
  %8723 = fmul fast float %8722, %8634
  %8724 = fmul fast float %8721, %8645
  %8725 = fmul fast float %8720, %8656
  %8726 = fadd fast float %8723, %8719
  %8727 = fadd fast float %8724, %8718
  %8728 = fadd fast float %8725, %8717
  %8729 = fmul fast float %8722, %8633
  %8730 = fmul fast float %8721, %8644
  %8731 = fmul fast float %8720, %8655
  br label %8732

; <label>:8732                                    ; preds = %8716, %8527
  %8733 = phi float [ %8731, %8716 ], [ %8533, %8527 ]
  %8734 = phi float [ %8730, %8716 ], [ %8532, %8527 ]
  %8735 = phi float [ %8729, %8716 ], [ %8531, %8527 ]
  %8736 = phi float [ %8728, %8716 ], [ %8530, %8527 ]
  %8737 = phi float [ %8727, %8716 ], [ %8529, %8527 ]
  %8738 = phi float [ %8726, %8716 ], [ %8528, %8527 ]
  %8739 = fmul fast float %8738, %7694
  %8740 = fmul fast float %8737, %7694
  %8741 = fmul fast float %8736, %7694
  %8742 = fmul fast float %8735, %7975
  %8743 = call float @dx.op.dot3.f32(i32 55, float %8735, float %8734, float %8733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8744 = call float @dx.op.dot3.f32(i32 55, float %8739, float %8740, float %8741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8745 = select i1 %280, float %8743, float %8735
  %8746 = select i1 %280, float %8743, float %8734
  %8747 = select i1 %280, float 1.000000e+00, float %8733
  %8748 = select i1 %280, float %8744, float %8739
  %8749 = select i1 %280, float 0.000000e+00, float %8740
  %8750 = select i1 %280, float 0.000000e+00, float %8741
  %8751 = fmul fast float %8745, %7969
  %8752 = fmul fast float %8746, %7970
  %8753 = fmul fast float %8747, %7971
  %8754 = fadd fast float %8751, %8748
  %8755 = fadd fast float %8752, %8749
  %8756 = fadd fast float %8750, %8753
  %8757 = fmul fast float %8745, %7972
  %8758 = fmul fast float %8746, %7973
  %8759 = fmul fast float %8747, %7974
  %8760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.i32 %8760, 0
  %8762 = icmp eq i32 %8761, 0
  br i1 %8762, label %9130, label %8763, !dx.controlflow.hints !171

; <label>:8763                                    ; preds = %8732
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 2
  %8766 = extractvalue %dx.types.CBufRet.f32 %8764, 3
  %8767 = fmul fast float %8765, %106
  %8768 = fmul fast float %8766, %107
  %8769 = fmul fast float %8767, 2.000000e+00
  %8770 = fmul fast float %8768, 2.000000e+00
  %8771 = fsub fast float 1.000000e+00, %8769
  %8772 = fsub fast float 1.000000e+00, %8770
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 0
  %8775 = extractvalue %dx.types.CBufRet.f32 %8773, 1
  %8776 = extractvalue %dx.types.CBufRet.f32 %8773, 2
  %8777 = fmul fast float %8771, %8774
  %8778 = fmul fast float %8771, %8775
  %8779 = fmul fast float %8771, %8776
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 0
  %8782 = extractvalue %dx.types.CBufRet.f32 %8780, 1
  %8783 = extractvalue %dx.types.CBufRet.f32 %8780, 2
  %8784 = fmul fast float %8772, %8781
  %8785 = fmul fast float %8772, %8782
  %8786 = fmul fast float %8772, %8783
  %8787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8787, 0
  %8789 = extractvalue %dx.types.CBufRet.f32 %8787, 1
  %8790 = extractvalue %dx.types.CBufRet.f32 %8787, 2
  %8791 = fadd fast float %8784, %8788
  %8792 = fadd fast float %8791, %8777
  %8793 = fadd fast float %8785, %8789
  %8794 = fadd fast float %8793, %8778
  %8795 = fadd fast float %8786, %8790
  %8796 = fadd fast float %8795, %8779
  %8797 = fmul fast float %8792, %7968
  %8798 = fmul fast float %8794, %7968
  %8799 = fmul fast float %8796, %7968
  %8800 = fmul fast float %8797, %8797
  %8801 = fmul fast float %8798, %8798
  %8802 = fadd fast float %8800, %8801
  %8803 = fmul fast float %8799, %8799
  %8804 = fadd fast float %8802, %8803
  %8805 = call float @dx.op.unary.f32(i32 24, float %8804)  ; Sqrt(value)
  %8806 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %8807 = fsub fast float %8805, %8806
  %8808 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %8809 = fmul fast float %8807, %8808
  %8810 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8811 = fadd fast float %8810, -5.000000e-01
  %8812 = fmul fast float %8811, 2.000000e+00
  %8813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8814 = extractvalue %dx.types.CBufRet.f32 %8813, 2
  %8815 = call float @dx.op.binary.f32(i32 36, float %8814, float %8812)  ; FMin(a,b)
  %8816 = fsub fast float -0.000000e+00, %8814
  %8817 = fcmp fast ogt float %8815, %8816
  br i1 %8817, label %8818, label %9130, !dx.controlflow.hints !172

; <label>:8818                                    ; preds = %8763
  %8819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8820 = extractvalue %dx.types.CBufRet.f32 %8819, 3
  %8821 = fcmp fast ogt float %8820, 0.000000e+00
  br i1 %8821, label %8822, label %8897, !dx.controlflow.hints !173

; <label>:8822                                    ; preds = %8818
  %8823 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8824 = extractvalue %dx.types.Dimensions %8823, 0
  %8825 = sitofp i32 %8824 to float
  %8826 = extractvalue %dx.types.Dimensions %8823, 1
  %8827 = sitofp i32 %8826 to float
  %8828 = fmul fast float %8767, %8825
  %8829 = fmul fast float %8768, %8827
  %8830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.f32 %8830, 1
  %8832 = fsub fast float -0.000000e+00, %8831
  %8833 = fptoui float %8832 to i32
  %8834 = fptoui float %8828 to i32
  %8835 = fptoui float %8829 to i32
  %8836 = and i32 %8833, 31
  %8837 = lshr i32 %8834, %8836
  %8838 = lshr i32 %8835, %8836
  %8839 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8833, i32 %8837, i32 %8838, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8840 = extractvalue %dx.types.ResRet.f32 %8839, 0
  %8841 = fcmp fast olt float %8840, -1.000000e+00
  %8842 = fcmp fast ogt float %8840, -1.000000e+00
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 1
  %8845 = select i1 %8842, float %8844, float 1.000000e+00
  %8846 = fadd fast float %8840, 1.000000e+00
  %8847 = fmul fast float %8845, %8846
  %8848 = call float @dx.op.unary.f32(i32 6, float %8847)  ; FAbs(value)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8843, 3
  %8850 = fcmp fast oge float %8848, %8849
  %8851 = select i1 %8850, float 0x4197782600000000, float %8848
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 1
  %8855 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8856 = select i1 %8841, float %8853, float %8774
  %8857 = select i1 %8841, float %8854, float %8775
  %8858 = select i1 %8841, float %8855, float %8776
  %8859 = fmul fast float %8856, %8771
  %8860 = fmul fast float %8857, %8771
  %8861 = fmul fast float %8858, %8771
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = select i1 %8841, float %8863, float %8781
  %8867 = select i1 %8841, float %8864, float %8782
  %8868 = select i1 %8841, float %8865, float %8783
  %8869 = fmul fast float %8866, %8772
  %8870 = fmul fast float %8867, %8772
  %8871 = fmul fast float %8868, %8772
  %8872 = fadd fast float %8869, %8859
  %8873 = fadd fast float %8870, %8860
  %8874 = fadd fast float %8871, %8861
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %8878 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8879 = select i1 %8841, float %8876, float %8788
  %8880 = select i1 %8841, float %8877, float %8789
  %8881 = select i1 %8841, float %8878, float %8790
  %8882 = fadd fast float %8872, %8879
  %8883 = fadd fast float %8873, %8880
  %8884 = fadd fast float %8874, %8881
  %8885 = fmul fast float %8882, %8851
  %8886 = fmul fast float %8883, %8851
  %8887 = fmul fast float %8884, %8851
  %8888 = fmul fast float %8885, %8885
  %8889 = fmul fast float %8886, %8886
  %8890 = fadd fast float %8888, %8889
  %8891 = fmul fast float %8887, %8887
  %8892 = fadd fast float %8890, %8891
  %8893 = call float @dx.op.unary.f32(i32 24, float %8892)  ; Sqrt(value)
  %8894 = fsub fast float %8893, %8806
  %8895 = fmul fast float %8894, %8808
  %8896 = call float @dx.op.unary.f32(i32 7, float %8895)  ; Saturate(value)
  br label %8897

; <label>:8897                                    ; preds = %8822, %8818
  %8898 = phi float [ %8896, %8822 ], [ 1.000000e+00, %8818 ]
  %8899 = fmul fast float %8815, 5.000000e-01
  %8900 = fadd fast float %8899, 5.000000e-01
  %8901 = call float @dx.op.unary.f32(i32 22, float %8900)  ; Frc(value)
  %8902 = call float @dx.op.unary.f32(i32 27, float %8901)  ; Round_ni(value)
  %8903 = call float @dx.op.unary.f32(i32 22, float %8901)  ; Frc(value)
  %8904 = fmul fast float %8903, 2.000000e+00
  %8905 = fadd fast float %8904, -1.000000e+00
  %8906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8767, float %8768, float %8902, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8907 = extractvalue %dx.types.ResRet.f32 %8906, 0
  %8908 = extractvalue %dx.types.ResRet.f32 %8906, 1
  %8909 = extractvalue %dx.types.ResRet.f32 %8906, 2
  %8910 = extractvalue %dx.types.ResRet.f32 %8906, 3
  %8911 = fadd fast float %8907, -5.000000e-01
  %8912 = fadd fast float %8909, -5.000000e-01
  %8913 = fmul fast float %8911, 0xBFD5555560000000
  %8914 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8912, float %8913)  ; FMad(a,b,c)
  %8915 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8908, float 0.000000e+00)  ; FMad(a,b,c)
  %8916 = fadd fast float %8915, %8910
  %8917 = fmul fast float %8911, -7.500000e-01
  %8918 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8912, float %8917)  ; FMad(a,b,c)
  %8919 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8908, float 0.000000e+00)  ; FMad(a,b,c)
  %8920 = fadd fast float %8919, %8910
  %8921 = call float @dx.op.binary.f32(i32 35, float %8914, float -1.000000e+00)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 35, float %8916, float -1.000000e+00)  ; FMax(a,b)
  %8923 = call float @dx.op.binary.f32(i32 35, float %8918, float -1.000000e+00)  ; FMax(a,b)
  %8924 = call float @dx.op.binary.f32(i32 35, float %8920, float -1.000000e+00)  ; FMax(a,b)
  %8925 = call float @dx.op.binary.f32(i32 36, float %8921, float 1.000000e+00)  ; FMin(a,b)
  %8926 = call float @dx.op.binary.f32(i32 36, float %8922, float 1.000000e+00)  ; FMin(a,b)
  %8927 = call float @dx.op.binary.f32(i32 36, float %8923, float 1.000000e+00)  ; FMin(a,b)
  %8928 = call float @dx.op.binary.f32(i32 36, float %8924, float 1.000000e+00)  ; FMin(a,b)
  %8929 = fcmp fast olt float %8925, 0x3FEFFF8020000000
  br i1 %8929, label %8930, label %9045, !dx.controlflow.hints !174

; <label>:8930                                    ; preds = %8897
  %8931 = extractvalue %dx.types.CBufRet.f32 %8813, 3
  %8932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.f32 %8932, 0
  %8934 = extractvalue %dx.types.CBufRet.f32 %8932, 1
  %8935 = extractvalue %dx.types.CBufRet.f32 %8932, 2
  %8936 = extractvalue %dx.types.CBufRet.f32 %8932, 3
  %8937 = fsub fast float %8933, %8925
  %8938 = fsub fast float %8934, %8926
  %8939 = fsub fast float %8935, %8927
  %8940 = fsub fast float %8936, %8928
  %8941 = fmul fast float %8937, %8931
  %8942 = fmul fast float %8938, %8931
  %8943 = fmul fast float %8939, %8931
  %8944 = fmul fast float %8940, %8931
  %8945 = fadd fast float %8941, %8925
  %8946 = fadd fast float %8942, %8926
  %8947 = fsub fast float -0.000000e+00, %8946
  %8948 = fadd fast float %8943, %8927
  %8949 = fadd fast float %8944, %8928
  %8950 = fmul fast float %8945, %8945
  %8951 = fsub fast float %8946, %8950
  %8952 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8951)  ; FMax(a,b)
  %8953 = fdiv fast float 1.000000e+00, %8952
  %8954 = fmul fast float %8946, %8945
  %8955 = fsub fast float %8948, %8954
  %8956 = fsub fast float %8905, %8945
  %8957 = fmul fast float %8905, %8905
  %8958 = fsub fast float %8957, %8946
  %8959 = fmul fast float %8956, %8953
  %8960 = fmul fast float %8959, %8955
  %8961 = fsub fast float %8958, %8960
  %8962 = fmul fast float %8946, %8946
  %8963 = fsub fast float %8949, %8962
  %8964 = fmul fast float %8955, %8955
  %8965 = fmul fast float %8964, %8953
  %8966 = fsub fast float %8963, %8965
  %8967 = fdiv fast float %8961, %8966
  %8968 = fmul fast float %8955, %8967
  %8969 = fsub fast float %8956, %8968
  %8970 = fmul fast float %8969, %8953
  %8971 = fmul fast float %8970, %8945
  %8972 = fsub fast float 1.000000e+00, %8971
  %8973 = fmul fast float %8946, %8967
  %8974 = fsub fast float %8972, %8973
  %8975 = fmul fast float %8970, %8970
  %8976 = fmul fast float %8967, 4.000000e+00
  %8977 = fmul fast float %8976, %8974
  %8978 = fsub fast float %8975, %8977
  %8979 = call float @dx.op.unary.f32(i32 24, float %8978)  ; Sqrt(value)
  %8980 = fcmp fast oge float %8970, 0.000000e+00
  %8981 = fsub fast float -0.000000e+00, %8979
  %8982 = select i1 %8980, float %8981, float %8979
  %8983 = fsub fast float %8982, %8970
  %8984 = fdiv fast float %8983, %8967
  %8985 = fdiv fast float %8974, %8983
  %8986 = fmul fast float %8984, 5.000000e-01
  %8987 = fmul fast float %8985, 2.000000e+00
  %8988 = select i1 %8980, float %8986, float %8987
  %8989 = select i1 %8980, float %8987, float %8986
  %8990 = call float @dx.op.binary.f32(i32 35, float %8988, float %8989)  ; FMax(a,b)
  %8991 = call float @dx.op.binary.f32(i32 36, float %8988, float %8989)  ; FMin(a,b)
  %8992 = fcmp fast ogt float %8905, %8991
  br i1 %8992, label %8993, label %9003

; <label>:8993                                    ; preds = %8930
  %8994 = fsub fast float %8905, %8991
  %8995 = fsub fast float %8990, %8991
  %8996 = fmul fast float %8994, %8995
  %8997 = fmul fast float %8990, %8905
  %8998 = fadd fast float %8990, %8905
  %8999 = fmul fast float %8998, %8945
  %9000 = fadd fast float %8997, %8946
  %9001 = fsub fast float %9000, %8999
  %9002 = fdiv fast float %9001, %8996
  br label %9003

; <label>:9003                                    ; preds = %8993, %8930
  %9004 = phi float [ %9002, %8993 ], [ 0.000000e+00, %8930 ]
  %9005 = fcmp fast ogt float %8905, %8990
  %9006 = fsub fast float %8905, %8990
  br i1 %9005, label %9007, label %9017

; <label>:9007                                    ; preds = %9003
  %9008 = fsub fast float %8990, %8991
  %9009 = fmul fast float %9008, %9006
  %9010 = fmul fast float %8991, %8905
  %9011 = fadd fast float %8991, %8905
  %9012 = fmul fast float %9011, %8945
  %9013 = fsub fast float %8947, %9010
  %9014 = fadd fast float %9013, %9012
  %9015 = fdiv fast float %9014, %9009
  %9016 = fadd fast float %9015, %9004
  br label %9017

; <label>:9017                                    ; preds = %9007, %9003
  %9018 = phi float [ %9016, %9007 ], [ %9004, %9003 ]
  %9019 = fsub fast float %8905, %8991
  %9020 = fmul fast float %9019, %9006
  %9021 = fmul fast float %8991, %8990
  %9022 = fadd fast float %8991, %8990
  %9023 = fmul fast float %9022, %8945
  %9024 = fadd fast float %9021, %8946
  %9025 = fsub fast float %9024, %9023
  %9026 = fdiv fast float %9025, %9020
  %9027 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9028 = fcmp fast oeq float %7696, 0.000000e+00
  %9029 = extractvalue %dx.types.CBufRet.f32 %8813, 0
  %9030 = fcmp fast oeq float %9029, 0.000000e+00
  %9031 = or i1 %9028, %9030
  %9032 = fmul fast float %9029, 2.000000e+00
  %9033 = fadd fast float %8814, %8815
  %9034 = fdiv fast float %9033, %9032
  %9035 = call float @dx.op.unary.f32(i32 7, float %9034)  ; Saturate(value)
  %9036 = fmul fast float %9035, 2.000000e+00
  %9037 = fsub fast float 3.000000e+00, %9036
  %9038 = fmul fast float %9035, %9035
  %9039 = fmul fast float %9038, %9037
  %9040 = select i1 %9031, float 1.000000e+00, float %9039
  %9041 = fmul fast float %9026, %7696
  %9042 = fadd fast float %9027, %9041
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fmul fast float %9040, %9043
  br label %9045

; <label>:9045                                    ; preds = %9017, %8897
  %9046 = phi float [ %9044, %9017 ], [ 0.000000e+00, %8897 ]
  %9047 = fsub fast float 1.000000e+00, %9046
  %9048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8767, float %8768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9049 = extractvalue %dx.types.ResRet.f32 %9048, 0
  %9050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.i32 %9050, 2
  %9052 = icmp eq i32 %9051, 0
  br i1 %9052, label %9058, label %9053

; <label>:9053                                    ; preds = %9045
  %9054 = call float @dx.op.unary.f32(i32 7, float %9046)  ; Saturate(value)
  %9055 = fadd fast float %9049, -1.000000e+00
  %9056 = fmul fast float %9054, %9055
  %9057 = fadd fast float %9056, 1.000000e+00
  br label %9058

; <label>:9058                                    ; preds = %9053, %9045
  %9059 = phi float [ %9057, %9053 ], [ %9047, %9045 ]
  br i1 %8821, label %9060, label %9078

; <label>:9060                                    ; preds = %9058
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9063 = fsub fast float %8898, %9062
  %9064 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9065 = fsub fast float %8898, %8820
  %9066 = call float @dx.op.unary.f32(i32 7, float %9065)  ; Saturate(value)
  %9067 = fsub fast float %9064, %9066
  %9068 = fsub fast float %8900, %9066
  %9069 = fdiv fast float %9068, %9067
  %9070 = call float @dx.op.unary.f32(i32 7, float %9069)  ; Saturate(value)
  %9071 = fmul fast float %9070, 2.000000e+00
  %9072 = fsub fast float 3.000000e+00, %9071
  %9073 = fsub fast float %9049, %9059
  %9074 = fmul fast float %9070, %9070
  %9075 = fmul fast float %9074, %9073
  %9076 = fmul fast float %9075, %9072
  %9077 = fadd fast float %9076, %9059
  br label %9078

; <label>:9078                                    ; preds = %9060, %9058
  %9079 = phi float [ %9077, %9060 ], [ %9059, %9058 ]
  %9080 = call float @dx.op.binary.f32(i32 35, float %9049, float %9079)  ; FMax(a,b)
  %9081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.i32 %9081, 2
  %9083 = and i32 %9082, 1
  %9084 = icmp eq i32 %9083, 0
  %9085 = fcmp fast une float %9080, 1.000000e+00
  %9086 = and i1 %9085, %9084
  br i1 %9086, label %9087, label %9106

; <label>:9087                                    ; preds = %9078
  %9088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8767, float %8768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9089 = extractvalue %dx.types.ResRet.f32 %9088, 0
  %9090 = extractvalue %dx.types.ResRet.f32 %9088, 1
  %9091 = extractvalue %dx.types.ResRet.f32 %9088, 2
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 1
  %9094 = fmul fast float %9093, %9089
  %9095 = fmul fast float %9093, %9090
  %9096 = fmul fast float %9093, %9091
  %9097 = fcmp fast ogt float %9049, 0x3FEFFF2E40000000
  %9098 = fsub fast float 1.000000e+00, %9080
  %9099 = fsub fast float 1.000000e+00, %9049
  %9100 = fdiv fast float %9098, %9099
  %9101 = call float @dx.op.unary.f32(i32 7, float %9100)  ; Saturate(value)
  %9102 = select i1 %9097, float 0.000000e+00, float %9101
  %9103 = fmul fast float %9094, %9102
  %9104 = fmul fast float %9095, %9102
  %9105 = fmul fast float %9096, %9102
  br label %9106

; <label>:9106                                    ; preds = %9087, %9078
  %9107 = phi float [ 0.000000e+00, %9078 ], [ %9103, %9087 ]
  %9108 = phi float [ 0.000000e+00, %9078 ], [ %9104, %9087 ]
  %9109 = phi float [ 0.000000e+00, %9078 ], [ %9105, %9087 ]
  %9110 = fmul fast float %9107, %7694
  %9111 = fmul fast float %9108, %7694
  %9112 = fmul fast float %9109, %7694
  %9113 = fmul fast float %9080, %8742
  %9114 = call float @dx.op.dot3.f32(i32 55, float %9080, float %9080, float %9080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9115 = call float @dx.op.dot3.f32(i32 55, float %9110, float %9111, float %9112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9116 = select i1 %280, float %9114, float %9080
  %9117 = select i1 %280, float 1.000000e+00, float %9080
  %9118 = select i1 %280, float %9115, float %9110
  %9119 = select i1 %280, float 0.000000e+00, float %9111
  %9120 = select i1 %280, float 0.000000e+00, float %9112
  %9121 = fmul fast float %9116, %8754
  %9122 = fmul fast float %9116, %8755
  %9123 = fmul fast float %9117, %8756
  %9124 = fadd fast float %9121, %9118
  %9125 = fadd fast float %9122, %9119
  %9126 = fadd fast float %9120, %9123
  %9127 = fmul fast float %9116, %8757
  %9128 = fmul fast float %9116, %8758
  %9129 = fmul fast float %9117, %8759
  br label %9130

; <label>:9130                                    ; preds = %9106, %8763, %8732, %7964
  %9131 = phi float [ %7969, %7964 ], [ %8754, %8732 ], [ %9124, %9106 ], [ %8754, %8763 ]
  %9132 = phi float [ %7970, %7964 ], [ %8755, %8732 ], [ %9125, %9106 ], [ %8755, %8763 ]
  %9133 = phi float [ %7971, %7964 ], [ %8756, %8732 ], [ %9126, %9106 ], [ %8756, %8763 ]
  %9134 = phi float [ %7972, %7964 ], [ %8757, %8732 ], [ %9127, %9106 ], [ %8757, %8763 ]
  %9135 = phi float [ %7973, %7964 ], [ %8758, %8732 ], [ %9128, %9106 ], [ %8758, %8763 ]
  %9136 = phi float [ %7974, %7964 ], [ %8759, %8732 ], [ %9129, %9106 ], [ %8759, %8763 ]
  %9137 = phi float [ %7975, %7964 ], [ %8742, %8732 ], [ %9113, %9106 ], [ %8742, %8763 ]
  %9138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9139 = extractvalue %dx.types.CBufRet.f32 %9138, 2
  %9140 = extractvalue %dx.types.CBufRet.f32 %9138, 3
  %9141 = fmul fast float %9139, %106
  %9142 = fmul fast float %9140, %107
  %9143 = call float @dx.op.unary.f32(i32 7, float %9141)  ; Saturate(value)
  %9144 = call float @dx.op.unary.f32(i32 7, float %9142)  ; Saturate(value)
  %9145 = select i1 %7706, i32 2, i32 0
  %9146 = or i32 %9145, 1
  %9147 = uitofp i32 %9146 to float
  %9148 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9143, float %9144, float %9147, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9149 = extractvalue %dx.types.ResRet.f32 %9148, 0
  %9150 = extractvalue %dx.types.ResRet.f32 %9148, 1
  %9151 = extractvalue %dx.types.ResRet.f32 %9148, 2
  %9152 = extractvalue %dx.types.ResRet.f32 %9148, 3
  %9153 = add nuw nsw i32 %9145, 2
  %9154 = uitofp i32 %9153 to float
  %9155 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9143, float %9144, float %9154, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9156 = extractvalue %dx.types.ResRet.f32 %9155, 0
  %9157 = extractvalue %dx.types.ResRet.f32 %9155, 1
  %9158 = extractvalue %dx.types.ResRet.f32 %9155, 2
  %9159 = extractvalue %dx.types.ResRet.f32 %9155, 3
  %9160 = call float @dx.op.binary.f32(i32 35, float %9150, float %9151)  ; FMax(a,b)
  %9161 = call float @dx.op.binary.f32(i32 35, float %9149, float %9160)  ; FMax(a,b)
  %9162 = call float @dx.op.binary.f32(i32 35, float %9161, float %9152)  ; FMax(a,b)
  %9163 = call float @dx.op.binary.f32(i32 36, float %9157, float %9158)  ; FMin(a,b)
  %9164 = call float @dx.op.binary.f32(i32 36, float %9156, float %9163)  ; FMin(a,b)
  %9165 = call float @dx.op.binary.f32(i32 36, float %9164, float %9159)  ; FMin(a,b)
  %9166 = fmul fast float %9162, 2.550000e+02
  %9167 = fadd fast float %9166, 0x3F70101020000000
  %9168 = fptoui float %9167 to i32
  %9169 = fmul fast float %9165, 2.550000e+02
  %9170 = fadd fast float %9169, 0x3F70101020000000
  %9171 = fptoui float %9170 to i32
  %9172 = icmp ult i32 %9168, %9171
  br i1 %9172, label %9173, label %9342

; <label>:9173                                    ; preds = %9130
  %9174 = fcmp fast ogt float %96, 9.843750e-01
  %9175 = fadd fast float %7968, -4.000000e+00
  %9176 = select i1 %9174, float -4.000000e+00, float %9175
  %9177 = call float @dx.op.binary.f32(i32 35, float %9176, float 0.000000e+00)  ; FMax(a,b)
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 0
  %9180 = fadd fast float %9179, %9177
  %9181 = extractvalue %dx.types.CBufRet.f32 %9178, 2
  %9182 = fmul fast float %9180, %9181
  %9183 = call float @dx.op.unary.f32(i32 23, float %9182)  ; Log(value)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9178, 3
  %9185 = fmul fast float %9184, %9183
  %9186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9186, 2
  %9188 = fmul fast float %9185, %9187
  %9189 = call float @dx.op.unary.f32(i32 7, float %9188)  ; Saturate(value)
  %9190 = uitofp i32 %9168 to float
  %9191 = uitofp i32 %9171 to float
  %9192 = fadd fast float %9190, 5.000000e-01
  %9193 = fadd fast float %9191, 5.000000e-01
  %9194 = fmul fast float %9187, %9192
  %9195 = fmul fast float %9187, %9193
  %9196 = fadd fast float %9194, 0x3F0FFB4800000000
  %9197 = fadd fast float %9195, 0xBF0FFB4800000000
  %9198 = call float @dx.op.binary.f32(i32 35, float %9189, float %9196)  ; FMax(a,b)
  %9199 = call float @dx.op.binary.f32(i32 36, float %9198, float %9197)  ; FMin(a,b)
  %9200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9201 = extractvalue %dx.types.CBufRet.f32 %9200, 1
  %9202 = extractvalue %dx.types.CBufRet.f32 %9200, 2
  %9203 = extractvalue %dx.types.CBufRet.f32 %9200, 0
  %9204 = select i1 %7706, float %9203, float 0.000000e+00
  %9205 = fmul fast float %9201, %9199
  %9206 = fadd fast float %9204, %9205
  %9207 = fadd fast float %9204, %9202
  %9208 = fsub fast float %9201, %9202
  %9209 = fadd fast float %9208, %9204
  %9210 = call float @dx.op.binary.f32(i32 35, float %9206, float %9207)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 36, float %9210, float %9209)  ; FMin(a,b)
  %9212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9143, float %9144, float %9211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9213 = extractvalue %dx.types.ResRet.f32 %9212, 0
  %9214 = extractvalue %dx.types.ResRet.f32 %9212, 1
  %9215 = extractvalue %dx.types.ResRet.f32 %9212, 2
  %9216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9217 = extractvalue %dx.types.CBufRet.i32 %9216, 0
  %9218 = extractvalue %dx.types.CBufRet.i32 %9216, 1
  %9219 = uitofp i32 %9217 to float
  %9220 = uitofp i32 %9218 to float
  %9221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9222 = extractvalue %dx.types.CBufRet.f32 %9221, 0
  %9223 = extractvalue %dx.types.CBufRet.f32 %9221, 1
  %9224 = fmul fast float %9219, %9143
  %9225 = fmul fast float %9220, %9144
  %9226 = fadd fast float %9224, -5.000000e-01
  %9227 = fadd fast float %9225, -5.000000e-01
  %9228 = call float @dx.op.unary.f32(i32 22, float %9226)  ; Frc(value)
  %9229 = call float @dx.op.unary.f32(i32 22, float %9227)  ; Frc(value)
  %9230 = fmul fast float %9228, %9228
  %9231 = fmul fast float %9230, %9228
  %9232 = fsub fast float 3.000000e+00, %9228
  %9233 = fmul fast float %9230, %9232
  %9234 = fmul fast float %9228, 3.000000e+00
  %9235 = fmul fast float %9231, 3.000000e+00
  %9236 = fmul fast float %9230, 6.000000e+00
  %9237 = fsub fast float %9235, %9236
  %9238 = fadd fast float %9237, 4.000000e+00
  %9239 = fmul fast float %9238, 0x3FC5555560000000
  %9240 = fmul fast float %9231, -3.000000e+00
  %9241 = fadd fast float %9230, %9228
  %9242 = fmul fast float %9241, 3.000000e+00
  %9243 = fadd fast float %9240, 1.000000e+00
  %9244 = fadd fast float %9243, %9242
  %9245 = fmul fast float %9231, 0x3FC5555560000000
  %9246 = fmul fast float %9229, %9229
  %9247 = fmul fast float %9246, %9229
  %9248 = fsub fast float 3.000000e+00, %9229
  %9249 = fmul fast float %9246, %9248
  %9250 = fmul fast float %9229, 3.000000e+00
  %9251 = fmul fast float %9247, 3.000000e+00
  %9252 = fmul fast float %9246, 6.000000e+00
  %9253 = fsub fast float %9251, %9252
  %9254 = fadd fast float %9253, 4.000000e+00
  %9255 = fmul fast float %9254, 0x3FC5555560000000
  %9256 = fmul fast float %9247, -3.000000e+00
  %9257 = fadd fast float %9246, %9229
  %9258 = fmul fast float %9257, 3.000000e+00
  %9259 = fadd fast float %9256, 1.000000e+00
  %9260 = fadd fast float %9259, %9258
  %9261 = fmul fast float %9247, 0x3FC5555560000000
  %9262 = fadd fast float %9228, 1.000000e+00
  %9263 = fsub fast float 1.000000e+00, %9234
  %9264 = fadd fast float %9263, %9233
  %9265 = fadd fast float %9264, %9238
  %9266 = fmul fast float %9265, 0x3FC5555560000000
  %9267 = fdiv fast float %9239, %9266
  %9268 = fsub fast float %9262, %9267
  %9269 = fsub fast float 1.000000e+00, %9228
  %9270 = fadd fast float %9244, %9231
  %9271 = fmul fast float %9270, 0x3FC5555560000000
  %9272 = fdiv fast float %9245, %9271
  %9273 = fadd fast float %9269, %9272
  %9274 = fadd fast float %9229, 1.000000e+00
  %9275 = fsub fast float 1.000000e+00, %9250
  %9276 = fadd fast float %9275, %9249
  %9277 = fadd fast float %9276, %9254
  %9278 = fmul fast float %9277, 0x3FC5555560000000
  %9279 = fdiv fast float %9255, %9278
  %9280 = fsub fast float %9274, %9279
  %9281 = fsub fast float 1.000000e+00, %9229
  %9282 = fadd fast float %9260, %9247
  %9283 = fmul fast float %9282, 0x3FC5555560000000
  %9284 = fdiv fast float %9261, %9283
  %9285 = fadd fast float %9284, %9281
  %9286 = fmul fast float %9268, %9222
  %9287 = fsub fast float %9143, %9286
  %9288 = fmul fast float %9273, %9222
  %9289 = fadd fast float %9288, %9143
  %9290 = fmul fast float %9285, %9223
  %9291 = fadd fast float %9290, %9144
  %9292 = fmul fast float %9280, %9223
  %9293 = fsub fast float %9144, %9292
  %9294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9287, float %9293, float %9211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9295 = extractvalue %dx.types.ResRet.f32 %9294, 0
  %9296 = extractvalue %dx.types.ResRet.f32 %9294, 1
  %9297 = extractvalue %dx.types.ResRet.f32 %9294, 2
  %9298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9289, float %9293, float %9211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9299 = extractvalue %dx.types.ResRet.f32 %9298, 0
  %9300 = extractvalue %dx.types.ResRet.f32 %9298, 1
  %9301 = extractvalue %dx.types.ResRet.f32 %9298, 2
  %9302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9287, float %9291, float %9211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9303 = extractvalue %dx.types.ResRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.ResRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.ResRet.f32 %9302, 2
  %9306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9289, float %9291, float %9211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9307 = extractvalue %dx.types.ResRet.f32 %9306, 0
  %9308 = extractvalue %dx.types.ResRet.f32 %9306, 1
  %9309 = extractvalue %dx.types.ResRet.f32 %9306, 2
  %9310 = fsub fast float %9303, %9295
  %9311 = fsub fast float %9304, %9296
  %9312 = fsub fast float %9305, %9297
  %9313 = fmul fast float %9310, %9283
  %9314 = fmul fast float %9311, %9283
  %9315 = fmul fast float %9312, %9283
  %9316 = fadd fast float %9313, %9295
  %9317 = fadd fast float %9314, %9296
  %9318 = fadd fast float %9315, %9297
  %9319 = fsub fast float %9307, %9299
  %9320 = fsub fast float %9308, %9300
  %9321 = fsub fast float %9309, %9301
  %9322 = fmul fast float %9319, %9283
  %9323 = fmul fast float %9320, %9283
  %9324 = fmul fast float %9321, %9283
  %9325 = fsub fast float %9299, %9316
  %9326 = fadd fast float %9325, %9322
  %9327 = fsub fast float %9300, %9317
  %9328 = fadd fast float %9327, %9323
  %9329 = fsub fast float %9301, %9318
  %9330 = fadd fast float %9329, %9324
  %9331 = fmul fast float %9326, %9271
  %9332 = fmul fast float %9328, %9271
  %9333 = fmul fast float %9330, %9271
  %9334 = fadd fast float %9331, %9316
  %9335 = fadd fast float %9332, %9317
  %9336 = fadd fast float %9333, %9318
  %9337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9338 = extractvalue %dx.types.CBufRet.f32 %9337, 1
  %9339 = fmul fast float %9334, %9338
  %9340 = fmul fast float %9335, %9338
  %9341 = fmul fast float %9336, %9338
  br label %9342

; <label>:9342                                    ; preds = %9173, %9130
  %9343 = phi float [ %9213, %9173 ], [ 1.000000e+00, %9130 ]
  %9344 = phi float [ %9214, %9173 ], [ 1.000000e+00, %9130 ]
  %9345 = phi float [ %9215, %9173 ], [ 1.000000e+00, %9130 ]
  %9346 = phi float [ %9339, %9173 ], [ 0.000000e+00, %9130 ]
  %9347 = phi float [ %9340, %9173 ], [ 0.000000e+00, %9130 ]
  %9348 = phi float [ %9341, %9173 ], [ 0.000000e+00, %9130 ]
  %9349 = fmul fast float %9346, %7694
  %9350 = fmul fast float %9347, %7694
  %9351 = fmul fast float %9348, %7694
  %9352 = fmul fast float %9343, %9137
  %9353 = call float @dx.op.dot3.f32(i32 55, float %9343, float %9344, float %9345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9354 = call float @dx.op.dot3.f32(i32 55, float %9349, float %9350, float %9351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9355 = select i1 %280, float %9353, float %9343
  %9356 = select i1 %280, float %9353, float %9344
  %9357 = select i1 %280, float 1.000000e+00, float %9345
  %9358 = select i1 %280, float %9354, float %9349
  %9359 = select i1 %280, float 0.000000e+00, float %9350
  %9360 = select i1 %280, float 0.000000e+00, float %9351
  %9361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.i32 %9361, 3
  %9363 = and i32 %9362, 3
  %9364 = icmp ne i32 %9363, 0
  %9365 = and i32 %9362, 4
  %9366 = icmp ne i32 %9365, 0
  %9367 = and i1 %9364, %9366
  %9368 = and i1 %280, %9367
  br i1 %9368, label %9369, label %9375

; <label>:9369                                    ; preds = %9342
  %9370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9370, 1
  %9372 = fadd fast float %9352, -1.000000e+00
  %9373 = fmul fast float %9371, %9372
  %9374 = fadd fast float %9373, 1.000000e+00
  br label %9375

; <label>:9375                                    ; preds = %9369, %9342
  %9376 = phi float [ %9374, %9369 ], [ %9352, %9342 ]
  %9377 = fadd fast float %9134, %9131
  %9378 = fmul fast float %9355, %9377
  %9379 = fadd fast float %9378, %9358
  %9380 = fadd fast float %9135, %9132
  %9381 = fmul fast float %9356, %9380
  %9382 = fadd fast float %9381, %9359
  %9383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9384 = extractvalue %dx.types.CBufRet.f32 %9383, 0
  br i1 %280, label %9385, label %9409

; <label>:9385                                    ; preds = %9375
  %9386 = fadd fast float %9379, %9382
  %9387 = fmul fast float %9384, %9386
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 3
  %9390 = extractvalue %dx.types.CBufRet.f32 %7682, 1
  %9391 = fsub fast float %7687, %7681
  %9392 = fadd fast float %9391, %7688
  %9393 = fsub fast float %9392, %9390
  %9394 = extractvalue %dx.types.CBufRet.f32 %7682, 2
  %9395 = fmul fast float %9393, %9394
  %9396 = call float @dx.op.unary.f32(i32 7, float %9395)  ; Saturate(value)
  %9397 = fsub fast float %9396, %9389
  %9398 = fmul fast float %9397, %9376
  %9399 = fadd fast float %9398, %9389
  %9400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9401 = extractvalue %dx.types.CBufRet.f32 %9400, 0
  %9402 = fsub fast float %9399, %9401
  %9403 = fmul fast float %9402, 1.000000e+01
  %9404 = call float @dx.op.unary.f32(i32 7, float %9403)  ; Saturate(value)
  %9405 = fsub fast float %4463, %7694
  %9406 = fmul fast float %9404, %9405
  %9407 = fadd fast float %9406, %7694
  %9408 = fmul fast float %9407, %9399
  br label %9433

; <label>:9409                                    ; preds = %9375
  %9410 = fadd fast float %9136, %9133
  %9411 = fmul fast float %9357, %9410
  %9412 = fadd fast float %9411, %9360
  %9413 = fmul fast float %9384, %9379
  %9414 = fmul fast float %9384, %9382
  %9415 = fmul fast float %9384, %9412
  %9416 = call float @dx.op.binary.f32(i32 35, float %9414, float %9415)  ; FMax(a,b)
  %9417 = call float @dx.op.binary.f32(i32 35, float %9413, float %9416)  ; FMax(a,b)
  %9418 = call float @dx.op.binary.f32(i32 35, float %9417, float %7694)  ; FMax(a,b)
  %9419 = fcmp fast ugt float %9418, 0x3F10000000000000
  br i1 %9419, label %9421, label %9420

; <label>:9420                                    ; preds = %9409
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9421

; <label>:9421                                    ; preds = %9420, %9409
  %9422 = add i32 %55, 372
  %9423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9422, i32 undef)  ; BufferLoad(srv,index,wot)
  %9424 = extractvalue %dx.types.ResRet.i32 %9423, 0
  %9425 = and i32 %9424, 32
  %9426 = icmp eq i32 %9425, 0
  br i1 %9426, label %9433, label %9427

; <label>:9427                                    ; preds = %9421
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 0
  %9430 = fmul fast float %9429, 0x3FE99999A0000000
  %9431 = fadd fast float %9429, %9413
  %9432 = fadd fast float %9430, %9415
  br label %9433

; <label>:9433                                    ; preds = %9427, %9421, %9385
  %9434 = phi float [ %9387, %9385 ], [ %9431, %9427 ], [ %9413, %9421 ]
  %9435 = phi float [ %9408, %9385 ], [ %9414, %9427 ], [ %9414, %9421 ]
  %9436 = phi float [ %9407, %9385 ], [ %9432, %9427 ], [ %9415, %9421 ]
  %9437 = phi float [ %9407, %9385 ], [ %7694, %9427 ], [ %7694, %9421 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9438 = call float @dx.op.binary.f32(i32 36, float %9434, float 3.225500e+04)  ; FMin(a,b)
  %9439 = call float @dx.op.binary.f32(i32 36, float %9435, float 3.225500e+04)  ; FMin(a,b)
  %9440 = call float @dx.op.binary.f32(i32 36, float %9436, float 3.225500e+04)  ; FMin(a,b)
  %9441 = call float @dx.op.binary.f32(i32 36, float %9437, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9438)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9440)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9441)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

