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
; shader hash: f3a907cb01a2699ab2efdde175fb2b41
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
  %203 = add i32 %196, 4194320
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = bitcast i32 %205 to float
  %208 = bitcast i32 %206 to float
  %209 = add i32 %55, 360
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = extractvalue %dx.types.ResRet.i32 %210, 1
  %213 = extractvalue %dx.types.ResRet.i32 %210, 2
  %214 = extractvalue %dx.types.ResRet.i32 %210, 3
  %215 = bitcast i32 %211 to float
  %216 = bitcast i32 %212 to float
  %217 = bitcast i32 %213 to float
  %218 = bitcast i32 %214 to float
  %219 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 25, float %219)  ; Rsqrt(value)
  %221 = fmul fast float %220, %113
  %222 = fmul fast float %220, %114
  %223 = fmul fast float %220, %115
  %224 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = call float @dx.op.unary.f32(i32 25, float %224)  ; Rsqrt(value)
  %226 = fmul fast float %225, %193
  %227 = fmul fast float %225, %194
  %228 = fmul fast float %225, %195
  %229 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %221, float %222, float %223)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = fmul fast float %229, %229
  %231 = fmul fast float %230, %217
  %232 = fadd fast float %231, %218
  %233 = call float @dx.op.unary.f32(i32 7, float %232)  ; Saturate(value)
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %236 = fmul fast float %235, %224
  %237 = fsub fast float %215, %236
  %238 = fmul fast float %237, %216
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = fmul fast float %239, %233
  %241 = fmul fast float %106, 5.000000e-01
  %242 = fmul fast float %107, 5.000000e-01
  %243 = fptosi float %241 to i32
  %244 = fptosi float %242 to i32
  %245 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 18
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F4C00EBA0000000
  %250 = call float @dx.op.unary.f32(i32 21, float %249)  ; Exp(value)
  %251 = fadd fast float %250, -1.000000e+00
  %252 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %253 = extractvalue %dx.types.Dimensions %252, 0
  %254 = sitofp i32 %253 to float
  %255 = extractvalue %dx.types.Dimensions %252, 1
  %256 = sitofp i32 %255 to float
  %257 = fcmp fast oge float %241, %254
  %258 = fcmp fast oge float %242, %256
  %259 = or i1 %257, %258
  %260 = select i1 %259, float 0x4197782600000000, float %251
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %264 = fmul fast float %262, %106
  %265 = fmul fast float %263, %107
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 114688
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %269, float %264, float 0.000000e+00
  %271 = select i1 %269, float %265, float 0.000000e+00
  %272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fmul fast float %273, 2.550000e+02
  %275 = fptoui float %274 to i32
  %276 = select i1 %269, i32 %275, i32 0
  %277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.i32 %277, 3
  %279 = and i32 %278, 3
  %280 = icmp ne i32 %279, 0
  %281 = and i32 %278, 4
  %282 = icmp ne i32 %281, 0
  %283 = and i1 %280, %282
  br i1 %283, label %284, label %293

; <label>:284                                     ; preds = %0
  %285 = fmul fast float %141, %107
  %286 = fmul fast float %140, %106
  %287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %286, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fsub fast float 1.000000e+00, %288
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = fcmp fast olt float %289, %291
  br label %296

; <label>:293                                     ; preds = %0
  %294 = icmp eq i32 %281, 0
  %295 = and i1 %280, %294
  br label %296

; <label>:296                                     ; preds = %293, %284
  %297 = phi i1 [ %292, %284 ], [ %295, %293 ]
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %300 = fmul fast float %299, 0x3FE3C6EF40000000
  %301 = frem fast float %106, 2.560000e+02
  %302 = frem fast float %107, 2.560000e+02
  %303 = fptoui float %301 to i32
  %304 = fptoui float %302 to i32
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %303, i32 %304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fadd fast float %306, %300
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = add i32 %55, 156
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = shl i32 %311, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %311, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %311, 22
  %319 = shl nuw nsw i32 %318, 5
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %55, 216
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %323, 8
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %323, 16
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = add i32 %55, 36
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %55, 288
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = fmul fast float %346, 0x3F50624DE0000000
  %350 = fmul fast float %348, 0x3F50624DE0000000
  %351 = add i32 %55, 172
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = shl i32 %353, 4
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %353, 7
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %353, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %55, 232
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = lshr i32 %365, 8
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %365, 16
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = add i32 %55, 52
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %379, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = add i32 %55, 304
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = fmul fast float %388, 0x3F50624DE0000000
  %392 = fmul fast float %390, 0x3F50624DE0000000
  %393 = add i32 %55, 188
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = shl i32 %395, 4
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %395, 7
  %400 = and i32 %399, 32752
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %395, 22
  %403 = shl nuw nsw i32 %402, 5
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = add i32 %55, 248
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = lshr i32 %407, 8
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = lshr i32 %407, 16
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = add i32 %55, 68
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %421, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = add i32 %55, 320
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = fmul fast float %430, 0x3F50624DE0000000
  %434 = fmul fast float %432, 0x3F50624DE0000000
  %435 = add i32 %55, 204
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %447 = add i32 %55, 264
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %461 = add i32 %55, 84
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = add i32 %55, 336
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = fmul fast float %472, 0x3F50624DE0000000
  %476 = fmul fast float %474, 0x3F50624DE0000000
  %477 = add i32 %55, 348
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 32
  %481 = icmp eq i32 %480, 0
  %482 = and i32 %479, 64
  %483 = icmp eq i32 %482, 0
  %484 = and i32 %479, 128
  %485 = icmp eq i32 %484, 0
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 2
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %505, label %490

; <label>:490                                     ; preds = %296
  %491 = add i32 %55, 540
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = add i32 %493, 0
  %495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %495, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = fmul fast float %500, %90
  %502 = fmul fast float %497, %91
  %503 = fmul fast float %498, %92
  %504 = fmul fast float %499, %93
  br label %505

; <label>:505                                     ; preds = %490, %296
  %506 = phi float [ %93, %296 ], [ %504, %490 ]
  %507 = phi float [ %92, %296 ], [ %503, %490 ]
  %508 = phi float [ %91, %296 ], [ %502, %490 ]
  %509 = phi float [ %90, %296 ], [ %501, %490 ]
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 2
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %533, label %514

; <label>:514                                     ; preds = %505
  %515 = add i32 %55, 44
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 1
  %519 = icmp ne i32 %518, 0
  %520 = select i1 %519, float %508, float 1.000000e+00
  %521 = add i32 %55, 60
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 1
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %525, float %507, float 1.000000e+00
  %527 = add i32 %55, 76
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 1
  %531 = icmp ne i32 %530, 0
  %532 = select i1 %531, float %506, float 1.000000e+00
  br label %533

; <label>:533                                     ; preds = %514, %505
  %534 = phi float [ %506, %505 ], [ %532, %514 ]
  %535 = phi float [ %507, %505 ], [ %526, %514 ]
  %536 = phi float [ %508, %505 ], [ %520, %514 ]
  %537 = lshr i32 %511, 20
  %538 = and i32 %537, 3
  %539 = add nuw nsw i32 %538, 1
  %540 = add i32 %55, 24
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %55, 28
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = or i32 %545, %542
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %1082, label %548

; <label>:548                                     ; preds = %533
  %549 = and i32 %542, 262144
  %550 = icmp ne i32 %549, 0
  %551 = select i1 %550, float %61, float 1.000000e+00
  %552 = select i1 %550, float %62, float 0.000000e+00
  %553 = select i1 %550, float %63, float 0.000000e+00
  %554 = select i1 %550, float %64, float 1.000000e+00
  %555 = select i1 %550, float %65, float %88
  %556 = select i1 %550, float %66, float %89
  %557 = add i32 %55, 284
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = lshr i32 %559, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = fmul fast float %561, 0x3F50624DE0000000
  %563 = add i32 %55, 88
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = lshr i32 %565, 16
  %567 = and i32 %566, 255
  %568 = lshr i32 %565, 24
  %569 = add i32 %55, 292
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %571, 16
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = add i32 %55, 32
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = lshr i32 %578, 22
  %580 = shl nuw nsw i32 %579, 5
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = shl i32 %578, 4
  %583 = and i32 %582, 32752
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %578, 7
  %586 = and i32 %585, 32752
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %590 = fmul fast float %589, 1.000000e+03
  %591 = fmul fast float %349, %590
  %592 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %593 = fadd fast float %592, %339
  %594 = fmul fast float %350, %590
  %595 = call float @dx.op.unary.f32(i32 22, float %594)  ; Frc(value)
  %596 = fadd fast float %595, %341
  %597 = fmul fast float %562, %590
  %598 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %599 = fmul fast float %598, 0x401921FB60000000
  %600 = fadd fast float %599, %581
  %601 = call float @dx.op.unary.f32(i32 13, float %600)  ; Sin(value)
  %602 = call float @dx.op.unary.f32(i32 12, float %600)  ; Cos(value)
  %603 = fsub fast float -0.000000e+00, %601
  %604 = fadd fast float %555, -5.000000e-01
  %605 = fadd fast float %556, -5.000000e-01
  %606 = fmul fast float %573, %604
  %607 = fmul fast float %575, %605
  %608 = fadd fast float %606, 5.000000e-01
  %609 = fadd fast float %607, 5.000000e-01
  %610 = fmul fast float %584, %608
  %611 = fmul fast float %587, %609
  %612 = fmul fast float %602, %610
  %613 = call float @dx.op.tertiary.f32(i32 46, float %603, float %611, float %612)  ; FMad(a,b,c)
  %614 = fmul fast float %601, %610
  %615 = call float @dx.op.tertiary.f32(i32 46, float %602, float %611, float %614)  ; FMad(a,b,c)
  %616 = fadd fast float %593, %613
  %617 = fadd fast float %596, %615
  %618 = icmp ugt i32 %567, 1
  %619 = icmp ugt i32 %565, 33554431
  %620 = or i1 %619, %618
  br i1 %620, label %621, label %646

; <label>:621                                     ; preds = %548
  %622 = add i32 %55, 228
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = lshr i32 %624, 16
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = fmul fast float %589, %626
  %628 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %629 = mul nuw nsw i32 %567, %568
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %628, %630
  %632 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %633 = fptoui float %632 to i32
  %634 = urem i32 %633, %567
  %635 = udiv i32 %633, %568
  %636 = call float @dx.op.unary.f32(i32 22, float %616)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %638 = uitofp i32 %634 to float
  %639 = uitofp i32 %635 to float
  %640 = fadd fast float %636, %638
  %641 = fadd fast float %637, %639
  %642 = uitofp i32 %567 to float
  %643 = uitofp i32 %568 to float
  %644 = fdiv fast float %640, %642
  %645 = fdiv fast float %641, %643
  br label %646

; <label>:646                                     ; preds = %621, %548
  %647 = phi float [ %644, %621 ], [ %616, %548 ]
  %648 = phi float [ %645, %621 ], [ %617, %548 ]
  %649 = and i32 %542, 256
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %697, label %651

; <label>:651                                     ; preds = %646
  %652 = add i32 %55, 488
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %656, %dx.types.Handle %103, float %647, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = add i32 %55, 100
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = shl i32 %661, 4
  %663 = and i32 %662, 32752
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = lshr i32 %661, 7
  %666 = and i32 %665, 32752
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = fsub fast float 1.000000e+00, %509
  %669 = call float @dx.op.binary.f32(i32 35, float %668, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %670 = bitcast float %509 to i32
  %671 = sitofp i32 %670 to float
  %672 = fadd fast float %671, 0xC1CFBF8940000000
  %673 = fmul fast float %667, %672
  %674 = fadd fast float %673, 0x41CFBF8940000000
  %675 = fptosi float %674 to i32
  %676 = bitcast i32 %675 to float
  %677 = bitcast float %669 to i32
  %678 = sitofp i32 %677 to float
  %679 = fadd fast float %678, 0xC1CFBF8940000000
  %680 = fmul fast float %679, %667
  %681 = fadd fast float %680, 0x41CFBF8940000000
  %682 = fptosi float %681 to i32
  %683 = bitcast i32 %682 to float
  %684 = fmul fast float %676, %664
  %685 = fmul fast float %683, %664
  %686 = fsub fast float %669, %684
  %687 = fadd fast float %685, %669
  %688 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %689 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %690 = fsub fast float %658, %688
  %691 = fsub fast float %689, %688
  %692 = bitcast float %691 to i32
  %693 = sub nsw i32 2129859010, %692
  %694 = bitcast i32 %693 to float
  %695 = fmul fast float %694, %690
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  br label %697

; <label>:697                                     ; preds = %651, %646
  %698 = phi float [ %696, %651 ], [ %509, %646 ]
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 128
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %719, label %703

; <label>:703                                     ; preds = %697
  %704 = add i32 %55, 472
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %103, float %647, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 524288
  %714 = icmp ne i32 %713, 0
  %715 = fcmp fast ogt float %710, 0x3FE0101020000000
  %716 = select i1 %715, float 1.000000e+00, float 0.000000e+00
  %717 = select i1 %714, float %716, float %710
  %718 = fmul fast float %717, %698
  br label %719

; <label>:719                                     ; preds = %703, %697
  %720 = phi float [ %718, %703 ], [ %698, %697 ]
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 16
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %923, label %725

; <label>:725                                     ; preds = %719
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %55, 424
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = add i32 %730, 0
  %732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %732, %dx.types.Handle %102, float %647, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = extractvalue %dx.types.ResRet.f32 %733, 1
  %736 = extractvalue %dx.types.ResRet.f32 %733, 2
  %737 = extractvalue %dx.types.ResRet.f32 %733, 3
  %738 = and i32 %727, 255
  %739 = uitofp i32 %738 to float
  %740 = lshr i32 %727, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %737, %739
  %744 = fadd fast float %743, %742
  %745 = fmul fast float %744, 0x3F70101000000000
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 512
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %758, label %750

; <label>:750                                     ; preds = %725
  %751 = add i32 %55, 508
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %753, 0
  %755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %755, %dx.types.Handle %103, float %647, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  br label %758

; <label>:758                                     ; preds = %750, %725
  %759 = phi float [ %757, %750 ], [ 1.000000e+00, %725 ]
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 33554432
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %870, label %764

; <label>:764                                     ; preds = %758
  %765 = add i32 %55, 224
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 65535
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = lshr i32 %767, 16
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = add i32 %55, 228
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 65535
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %793 = add i32 %55, 220
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = lshr i32 %795, 24
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = and i32 %795, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = lshr i32 %795, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %804, 0x3F70101020000000
  %806 = lshr i32 %795, 16
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, 0x3F70101020000000
  %810 = bitcast float %734 to i32
  %811 = ashr i32 %810, 1
  %812 = sub nsw i32 1597463174, %811
  %813 = bitcast i32 %812 to float
  %814 = fmul fast float %734, 5.000000e-01
  %815 = fmul fast float %813, %813
  %816 = fmul fast float %815, %814
  %817 = fsub fast float 1.500000e+00, %816
  %818 = fmul fast float %813, %734
  %819 = fmul fast float %818, %817
  %820 = bitcast float %735 to i32
  %821 = ashr i32 %820, 1
  %822 = sub nsw i32 1597463174, %821
  %823 = bitcast i32 %822 to float
  %824 = fmul fast float %735, 5.000000e-01
  %825 = fmul fast float %823, %823
  %826 = fmul fast float %825, %824
  %827 = fsub fast float 1.500000e+00, %826
  %828 = fmul fast float %823, %735
  %829 = fmul fast float %828, %827
  %830 = bitcast float %736 to i32
  %831 = ashr i32 %830, 1
  %832 = sub nsw i32 1597463174, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %736, 5.000000e-01
  %835 = fmul fast float %833, %833
  %836 = fmul fast float %835, %834
  %837 = fsub fast float 1.500000e+00, %836
  %838 = fmul fast float %833, %736
  %839 = fmul fast float %838, %837
  %840 = fsub fast float %819, %801
  %841 = fsub fast float %829, %805
  %842 = fsub fast float %839, %809
  %843 = fmul fast float %840, %769
  %844 = fmul fast float %841, %771
  %845 = fmul fast float %842, %776
  %846 = fadd fast float %843, %784
  %847 = fadd fast float %844, %788
  %848 = fadd fast float %845, %792
  %849 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %850 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %851 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %852 = fmul fast float %849, %849
  %853 = fmul fast float %850, %850
  %854 = fmul fast float %851, %851
  %855 = fsub fast float %852, %734
  %856 = fsub fast float %853, %735
  %857 = fsub fast float %854, %736
  %858 = fmul fast float %855, %759
  %859 = fmul fast float %856, %759
  %860 = fmul fast float %857, %759
  %861 = fadd fast float %858, %734
  %862 = fadd fast float %859, %735
  %863 = fadd fast float %860, %736
  %864 = fadd fast float %781, %745
  %865 = fsub fast float %864, %798
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = fsub fast float %866, %745
  %868 = fmul fast float %867, %759
  %869 = fadd fast float %868, %745
  br label %923

; <label>:870                                     ; preds = %758
  %871 = and i32 %761, 134217728
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %907, label %873

; <label>:873                                     ; preds = %870
  %874 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %875 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %876 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %877 = fadd fast float %874, -5.000000e-01
  %878 = fadd fast float %875, -5.000000e-01
  %879 = fadd fast float %876, -5.000000e-01
  %880 = fmul fast float %877, %759
  %881 = fmul fast float %878, %759
  %882 = fmul fast float %879, %759
  %883 = fadd fast float %880, 5.000000e-01
  %884 = fadd fast float %881, 5.000000e-01
  %885 = fadd fast float %882, 5.000000e-01
  %886 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %887 = call float @dx.op.unary.f32(i32 24, float %735)  ; Sqrt(value)
  %888 = call float @dx.op.unary.f32(i32 24, float %736)  ; Sqrt(value)
  %889 = fmul fast float %883, 2.000000e+00
  %890 = fsub fast float 1.000000e+00, %889
  %891 = fmul fast float %890, %886
  %892 = fadd fast float %891, %889
  %893 = fmul fast float %892, %886
  %894 = fmul fast float %884, 2.000000e+00
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul fast float %895, %887
  %897 = fadd fast float %896, %894
  %898 = fmul fast float %897, %887
  %899 = fmul fast float %885, 2.000000e+00
  %900 = fsub fast float 1.000000e+00, %899
  %901 = fmul fast float %900, %888
  %902 = fadd fast float %901, %899
  %903 = fmul fast float %902, %888
  %904 = fmul fast float %893, %893
  %905 = fmul fast float %898, %898
  %906 = fmul fast float %903, %903
  br label %923

; <label>:907                                     ; preds = %870
  %908 = fmul fast float %326, %326
  %909 = fmul fast float %330, %330
  %910 = fmul fast float %334, %334
  %911 = fadd fast float %908, -1.000000e+00
  %912 = fadd fast float %909, -1.000000e+00
  %913 = fadd fast float %910, -1.000000e+00
  %914 = fmul fast float %759, %911
  %915 = fmul fast float %759, %912
  %916 = fmul fast float %759, %913
  %917 = fadd fast float %914, 1.000000e+00
  %918 = fadd fast float %915, 1.000000e+00
  %919 = fadd fast float %916, 1.000000e+00
  %920 = fmul fast float %917, %734
  %921 = fmul fast float %918, %735
  %922 = fmul fast float %919, %736
  br label %923

; <label>:923                                     ; preds = %907, %873, %764, %719
  %924 = phi float [ %869, %764 ], [ %745, %873 ], [ %745, %907 ], [ 0x3FA23C0BE0000000, %719 ]
  %925 = phi float [ %861, %764 ], [ %904, %873 ], [ %920, %907 ], [ 1.000000e+00, %719 ]
  %926 = phi float [ %862, %764 ], [ %905, %873 ], [ %921, %907 ], [ 1.000000e+00, %719 ]
  %927 = phi float [ %863, %764 ], [ %906, %873 ], [ %922, %907 ], [ 1.000000e+00, %719 ]
  %928 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.i32 %928, 1
  %930 = and i32 %929, 1
  %931 = icmp ne i32 %930, 0
  %932 = add i32 %55, 356
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 32
  %936 = icmp ne i32 %935, 0
  %937 = and i1 %931, %936
  %938 = select i1 %937, float 1.000000e+00, float %925
  %939 = select i1 %937, float 0x3FD3333340000000, float %926
  %940 = select i1 %937, float 0x3FD3333340000000, float %927
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 32
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1017, label %945

; <label>:945                                     ; preds = %923
  %946 = add i32 %55, 92
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = add i32 %55, 440
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = add i32 %951, 0
  %953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %952, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %953, %dx.types.Handle %102, float %647, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = extractvalue %dx.types.ResRet.f32 %954, 1
  %957 = extractvalue %dx.types.ResRet.f32 %954, 2
  %958 = extractvalue %dx.types.ResRet.f32 %954, 3
  %959 = and i32 %948, 255
  %960 = uitofp i32 %959 to float
  %961 = lshr i32 %948, 8
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = lshr i32 %948, 16
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101000000000
  %968 = fmul fast float %955, %960
  %969 = fadd fast float %968, %963
  %970 = fmul fast float %969, 0x3F70101000000000
  %971 = fadd fast float %956, -5.000000e-01
  %972 = fadd fast float %958, -5.000000e-01
  %973 = fmul fast float %971, %967
  %974 = fmul fast float %972, %967
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fadd fast float %974, 5.000000e-01
  %977 = fmul fast float %975, 2.000000e+00
  %978 = fadd fast float %977, -1.000000e+00
  %979 = fmul fast float %976, 2.000000e+00
  %980 = fadd fast float %979, -1.000000e+00
  %981 = fadd fast float %978, %980
  %982 = fmul fast float %981, 5.000000e-01
  %983 = fsub fast float %978, %980
  %984 = fmul fast float %983, 5.000000e-01
  %985 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %986 = fsub fast float 1.000000e+00, %985
  %987 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %988 = fsub fast float %986, %987
  %989 = call float @dx.op.dot3.f32(i32 55, float %982, float %984, float %988, float %982, float %984, float %988)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = call float @dx.op.unary.f32(i32 25, float %989)  ; Rsqrt(value)
  %991 = fmul fast float %982, %990
  %992 = fmul fast float %984, %990
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 67108864
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1013, label %997

; <label>:997                                     ; preds = %945
  %998 = add i32 %55, 280
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 65535
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 65535
  %1006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1005)  ; LegacyF16ToF32(value)
  %1007 = lshr i32 %1000, 16
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = fsub fast float %970, %1008
  %1010 = fmul fast float %1009, %1002
  %1011 = fadd fast float %1010, %1006
  %1012 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  br label %1013

; <label>:1013                                    ; preds = %997, %945
  %1014 = phi float [ %1012, %997 ], [ %970, %945 ]
  %1015 = call float @dx.op.dot2.f32(i32 54, float %991, float %992, float %551, float %552)  ; Dot2(ax,ay,bx,by)
  %1016 = call float @dx.op.dot2.f32(i32 54, float %991, float %992, float %553, float %554)  ; Dot2(ax,ay,bx,by)
  br label %1017

; <label>:1017                                    ; preds = %1013, %923
  %1018 = phi float [ %1014, %1013 ], [ 0x3FD6666660000000, %923 ]
  %1019 = phi float [ %1015, %1013 ], [ 0.000000e+00, %923 ]
  %1020 = phi float [ %1016, %1013 ], [ 0.000000e+00, %923 ]
  %1021 = phi float [ %957, %1013 ], [ 1.000000e+00, %923 ]
  %1022 = add i32 %55, 160
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 22
  %1026 = shl nuw nsw i32 %1025, 5
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 64
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1065, label %1032

; <label>:1032                                    ; preds = %1017
  %1033 = add i32 %55, 456
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = add i32 %1035, 0
  %1037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 131072
  %1041 = icmp eq i32 %1040, 0
  %1042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1037, %dx.types.Handle %102, float %647, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = fmul fast float %1043, %314
  %1047 = fmul fast float %1044, %317
  %1048 = fmul fast float %1045, %320
  br i1 %1041, label %1055, label %1049

; <label>:1049                                    ; preds = %1032
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = fmul fast float %1051, %1046
  %1053 = fmul fast float %1051, %1047
  %1054 = fmul fast float %1051, %1048
  br label %1055

; <label>:1055                                    ; preds = %1049, %1032
  %1056 = phi float [ %1052, %1049 ], [ %1046, %1032 ]
  %1057 = phi float [ %1053, %1049 ], [ %1047, %1032 ]
  %1058 = phi float [ %1054, %1049 ], [ %1048, %1032 ]
  %1059 = fmul fast float %1056, %1027
  %1060 = select i1 %297, float %1059, float %1056
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1060, float %1057, float %1058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = select i1 %297, float 0.000000e+00, float %1056
  %1063 = select i1 %297, float %1061, float %1057
  %1064 = select i1 %297, float 0.000000e+00, float %1058
  br label %1065

; <label>:1065                                    ; preds = %1055, %1017
  %1066 = phi float [ %1062, %1055 ], [ 0.000000e+00, %1017 ]
  %1067 = phi float [ %1063, %1055 ], [ 0.000000e+00, %1017 ]
  %1068 = phi float [ %1064, %1055 ], [ 0.000000e+00, %1017 ]
  %1069 = add i32 %55, 96
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 255
  %1073 = uitofp i32 %1072 to float
  %1074 = lshr i32 %1071, 8
  %1075 = and i32 %1074, 255
  %1076 = uitofp i32 %1075 to float
  %1077 = call float @dx.op.dot3.f32(i32 55, float %938, float %939, float %940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = fmul fast float %1076, %1077
  %1079 = fadd fast float %1078, %1073
  %1080 = fmul fast float %1079, 0x3F70101020000000
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  br label %1082

; <label>:1082                                    ; preds = %1065, %533
  %1083 = phi float [ 0.000000e+00, %533 ], [ %1019, %1065 ]
  %1084 = phi float [ 0.000000e+00, %533 ], [ %1020, %1065 ]
  %1085 = phi float [ 0.000000e+00, %533 ], [ %938, %1065 ]
  %1086 = phi float [ 0.000000e+00, %533 ], [ %939, %1065 ]
  %1087 = phi float [ 0.000000e+00, %533 ], [ %940, %1065 ]
  %1088 = phi float [ 0.000000e+00, %533 ], [ %1066, %1065 ]
  %1089 = phi float [ 0.000000e+00, %533 ], [ %1067, %1065 ]
  %1090 = phi float [ 0.000000e+00, %533 ], [ %1068, %1065 ]
  %1091 = phi float [ 0.000000e+00, %533 ], [ %924, %1065 ]
  %1092 = phi float [ 0.000000e+00, %533 ], [ %720, %1065 ]
  %1093 = phi float [ 0.000000e+00, %533 ], [ %1018, %1065 ]
  %1094 = phi float [ 0.000000e+00, %533 ], [ %1021, %1065 ]
  %1095 = phi float [ 0.000000e+00, %533 ], [ %1081, %1065 ]
  br i1 %481, label %1822, label %1096

; <label>:1096                                    ; preds = %1082
  %1097 = icmp ult i32 %539, 2
  %1098 = add i32 %55, 40
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = add i32 %55, 44
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = or i32 %1103, %1100
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1822, label %1106

; <label>:1106                                    ; preds = %1096
  %1107 = and i32 %1100, 262144
  %1108 = icmp ne i32 %1107, 0
  %1109 = select i1 %1108, float %61, float 1.000000e+00
  %1110 = select i1 %1108, float %62, float 0.000000e+00
  %1111 = select i1 %1108, float %63, float 0.000000e+00
  %1112 = select i1 %1108, float %64, float 1.000000e+00
  %1113 = select i1 %1108, float %65, float %88
  %1114 = select i1 %1108, float %66, float %89
  %1115 = add i32 %55, 300
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 16
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = fmul fast float %1119, 0x3F50624DE0000000
  %1121 = add i32 %55, 104
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = lshr i32 %1123, 16
  %1125 = and i32 %1124, 255
  %1126 = lshr i32 %1123, 24
  %1127 = add i32 %55, 308
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 65535
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130)  ; LegacyF16ToF32(value)
  %1132 = lshr i32 %1129, 16
  %1133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1132)  ; LegacyF16ToF32(value)
  %1134 = add i32 %55, 48
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = lshr i32 %1136, 22
  %1138 = shl nuw nsw i32 %1137, 5
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = shl i32 %1136, 4
  %1141 = and i32 %1140, 32752
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = lshr i32 %1136, 7
  %1144 = and i32 %1143, 32752
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 3
  %1148 = fmul fast float %1147, 1.000000e+03
  %1149 = fmul fast float %391, %1148
  %1150 = call float @dx.op.unary.f32(i32 22, float %1149)  ; Frc(value)
  %1151 = fadd fast float %1150, %381
  %1152 = fmul fast float %392, %1148
  %1153 = call float @dx.op.unary.f32(i32 22, float %1152)  ; Frc(value)
  %1154 = fadd fast float %1153, %383
  %1155 = fmul fast float %1120, %1148
  %1156 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1157 = fmul fast float %1156, 0x401921FB60000000
  %1158 = fadd fast float %1157, %1139
  %1159 = call float @dx.op.unary.f32(i32 13, float %1158)  ; Sin(value)
  %1160 = call float @dx.op.unary.f32(i32 12, float %1158)  ; Cos(value)
  %1161 = fsub fast float -0.000000e+00, %1159
  %1162 = fadd fast float %1113, -5.000000e-01
  %1163 = fadd fast float %1114, -5.000000e-01
  %1164 = fmul fast float %1131, %1162
  %1165 = fmul fast float %1133, %1163
  %1166 = fadd fast float %1164, 5.000000e-01
  %1167 = fadd fast float %1165, 5.000000e-01
  %1168 = fmul fast float %1142, %1166
  %1169 = fmul fast float %1145, %1167
  %1170 = fmul fast float %1160, %1168
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1161, float %1169, float %1170)  ; FMad(a,b,c)
  %1172 = fmul fast float %1159, %1168
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1160, float %1169, float %1172)  ; FMad(a,b,c)
  %1174 = fadd fast float %1151, %1171
  %1175 = fadd fast float %1154, %1173
  %1176 = icmp ugt i32 %1125, 1
  %1177 = icmp ugt i32 %1123, 33554431
  %1178 = or i1 %1177, %1176
  br i1 %1178, label %1179, label %1204

; <label>:1179                                    ; preds = %1106
  %1180 = add i32 %55, 244
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = fmul fast float %1147, %1184
  %1186 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1187 = mul nuw nsw i32 %1125, %1126
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1186, %1188
  %1190 = call float @dx.op.unary.f32(i32 27, float %1189)  ; Round_ni(value)
  %1191 = fptoui float %1190 to i32
  %1192 = urem i32 %1191, %1125
  %1193 = udiv i32 %1191, %1126
  %1194 = call float @dx.op.unary.f32(i32 22, float %1174)  ; Frc(value)
  %1195 = call float @dx.op.unary.f32(i32 22, float %1175)  ; Frc(value)
  %1196 = uitofp i32 %1192 to float
  %1197 = uitofp i32 %1193 to float
  %1198 = fadd fast float %1194, %1196
  %1199 = fadd fast float %1195, %1197
  %1200 = uitofp i32 %1125 to float
  %1201 = uitofp i32 %1126 to float
  %1202 = fdiv fast float %1198, %1200
  %1203 = fdiv fast float %1199, %1201
  br label %1204

; <label>:1204                                    ; preds = %1179, %1106
  %1205 = phi float [ %1202, %1179 ], [ %1174, %1106 ]
  %1206 = phi float [ %1203, %1179 ], [ %1175, %1106 ]
  %1207 = and i32 %1100, 256
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1255, label %1209

; <label>:1209                                    ; preds = %1204
  %1210 = add i32 %55, 492
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %1212, 0
  %1214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1214, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = add i32 %55, 116
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = shl i32 %1219, 4
  %1221 = and i32 %1220, 32752
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = lshr i32 %1219, 7
  %1224 = and i32 %1223, 32752
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fsub fast float 1.000000e+00, %536
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1228 = bitcast float %536 to i32
  %1229 = sitofp i32 %1228 to float
  %1230 = fadd fast float %1229, 0xC1CFBF8940000000
  %1231 = fmul fast float %1225, %1230
  %1232 = fadd fast float %1231, 0x41CFBF8940000000
  %1233 = fptosi float %1232 to i32
  %1234 = bitcast i32 %1233 to float
  %1235 = bitcast float %1227 to i32
  %1236 = sitofp i32 %1235 to float
  %1237 = fadd fast float %1236, 0xC1CFBF8940000000
  %1238 = fmul fast float %1237, %1225
  %1239 = fadd fast float %1238, 0x41CFBF8940000000
  %1240 = fptosi float %1239 to i32
  %1241 = bitcast i32 %1240 to float
  %1242 = fmul fast float %1234, %1222
  %1243 = fmul fast float %1241, %1222
  %1244 = fsub fast float %1227, %1242
  %1245 = fadd fast float %1243, %1227
  %1246 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1247 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1248 = fsub fast float %1216, %1246
  %1249 = fsub fast float %1247, %1246
  %1250 = bitcast float %1249 to i32
  %1251 = sub nsw i32 2129859010, %1250
  %1252 = bitcast i32 %1251 to float
  %1253 = fmul fast float %1252, %1248
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  br label %1255

; <label>:1255                                    ; preds = %1209, %1204
  %1256 = phi float [ %1254, %1209 ], [ %536, %1204 ]
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 128
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1277, label %1261

; <label>:1261                                    ; preds = %1255
  %1262 = add i32 %55, 476
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %1264, 0
  %1266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1266, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 524288
  %1272 = icmp ne i32 %1271, 0
  %1273 = fcmp fast ogt float %1268, 0x3FE0101020000000
  %1274 = select i1 %1273, float 1.000000e+00, float 0.000000e+00
  %1275 = select i1 %1272, float %1274, float %1268
  %1276 = fmul fast float %1275, %1256
  br label %1277

; <label>:1277                                    ; preds = %1261, %1255
  %1278 = phi float [ %1276, %1261 ], [ %1256, %1255 ]
  %1279 = fcmp fast ult float %1278, 0x3F70101020000000
  br i1 %1279, label %1822, label %1280

; <label>:1280                                    ; preds = %1277
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 16
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1483, label %1285

; <label>:1285                                    ; preds = %1280
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = add i32 %55, 428
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %102, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1298 = and i32 %1287, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = lshr i32 %1287, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1297, %1299
  %1304 = fadd fast float %1303, %1302
  %1305 = fmul fast float %1304, 0x3F70101000000000
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 512
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1318, label %1310

; <label>:1310                                    ; preds = %1285
  %1311 = add i32 %55, 512
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = add i32 %1313, 0
  %1315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1315, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  br label %1318

; <label>:1318                                    ; preds = %1310, %1285
  %1319 = phi float [ %1317, %1310 ], [ 1.000000e+00, %1285 ]
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 33554432
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1430, label %1324

; <label>:1324                                    ; preds = %1318
  %1325 = add i32 %55, 240
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 65535
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = lshr i32 %1327, 16
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = add i32 %55, 244
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 65535
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = lshr i32 %1338, 24
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = and i32 %1338, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1343, 0x3F70101020000000
  %1345 = lshr i32 %1338, 8
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1347, 0x3F70101020000000
  %1349 = lshr i32 %1338, 16
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = add i32 %55, 236
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = lshr i32 %1355, 24
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1357, 0x3F70101020000000
  %1359 = and i32 %1355, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1360, 0x3F70101020000000
  %1362 = lshr i32 %1355, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = lshr i32 %1355, 16
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = bitcast float %1294 to i32
  %1371 = ashr i32 %1370, 1
  %1372 = sub nsw i32 1597463174, %1371
  %1373 = bitcast i32 %1372 to float
  %1374 = fmul fast float %1294, 5.000000e-01
  %1375 = fmul fast float %1373, %1373
  %1376 = fmul fast float %1375, %1374
  %1377 = fsub fast float 1.500000e+00, %1376
  %1378 = fmul fast float %1373, %1294
  %1379 = fmul fast float %1378, %1377
  %1380 = bitcast float %1295 to i32
  %1381 = ashr i32 %1380, 1
  %1382 = sub nsw i32 1597463174, %1381
  %1383 = bitcast i32 %1382 to float
  %1384 = fmul fast float %1295, 5.000000e-01
  %1385 = fmul fast float %1383, %1383
  %1386 = fmul fast float %1385, %1384
  %1387 = fsub fast float 1.500000e+00, %1386
  %1388 = fmul fast float %1383, %1295
  %1389 = fmul fast float %1388, %1387
  %1390 = bitcast float %1296 to i32
  %1391 = ashr i32 %1390, 1
  %1392 = sub nsw i32 1597463174, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1296, 5.000000e-01
  %1395 = fmul fast float %1393, %1393
  %1396 = fmul fast float %1395, %1394
  %1397 = fsub fast float 1.500000e+00, %1396
  %1398 = fmul fast float %1393, %1296
  %1399 = fmul fast float %1398, %1397
  %1400 = fsub fast float %1379, %1361
  %1401 = fsub fast float %1389, %1365
  %1402 = fsub fast float %1399, %1369
  %1403 = fmul fast float %1400, %1329
  %1404 = fmul fast float %1401, %1331
  %1405 = fmul fast float %1402, %1336
  %1406 = fadd fast float %1403, %1344
  %1407 = fadd fast float %1404, %1348
  %1408 = fadd fast float %1405, %1352
  %1409 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1412 = fmul fast float %1409, %1409
  %1413 = fmul fast float %1410, %1410
  %1414 = fmul fast float %1411, %1411
  %1415 = fsub fast float %1412, %1294
  %1416 = fsub fast float %1413, %1295
  %1417 = fsub fast float %1414, %1296
  %1418 = fmul fast float %1415, %1319
  %1419 = fmul fast float %1416, %1319
  %1420 = fmul fast float %1417, %1319
  %1421 = fadd fast float %1418, %1294
  %1422 = fadd fast float %1419, %1295
  %1423 = fadd fast float %1420, %1296
  %1424 = fadd fast float %1341, %1305
  %1425 = fsub fast float %1424, %1358
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = fsub fast float %1426, %1305
  %1428 = fmul fast float %1427, %1319
  %1429 = fadd fast float %1428, %1305
  br label %1483

; <label>:1430                                    ; preds = %1318
  %1431 = and i32 %1321, 134217728
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1467, label %1433

; <label>:1433                                    ; preds = %1430
  %1434 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %1435 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %1436 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %1437 = fadd fast float %1434, -5.000000e-01
  %1438 = fadd fast float %1435, -5.000000e-01
  %1439 = fadd fast float %1436, -5.000000e-01
  %1440 = fmul fast float %1437, %1319
  %1441 = fmul fast float %1438, %1319
  %1442 = fmul fast float %1439, %1319
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 24, float %1294)  ; Sqrt(value)
  %1447 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1448 = call float @dx.op.unary.f32(i32 24, float %1296)  ; Sqrt(value)
  %1449 = fmul fast float %1443, 2.000000e+00
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = fmul fast float %1450, %1446
  %1452 = fadd fast float %1451, %1449
  %1453 = fmul fast float %1452, %1446
  %1454 = fmul fast float %1444, 2.000000e+00
  %1455 = fsub fast float 1.000000e+00, %1454
  %1456 = fmul fast float %1455, %1447
  %1457 = fadd fast float %1456, %1454
  %1458 = fmul fast float %1457, %1447
  %1459 = fmul fast float %1445, 2.000000e+00
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = fmul fast float %1460, %1448
  %1462 = fadd fast float %1461, %1459
  %1463 = fmul fast float %1462, %1448
  %1464 = fmul fast float %1453, %1453
  %1465 = fmul fast float %1458, %1458
  %1466 = fmul fast float %1463, %1463
  br label %1483

; <label>:1467                                    ; preds = %1430
  %1468 = fmul fast float %368, %368
  %1469 = fmul fast float %372, %372
  %1470 = fmul fast float %376, %376
  %1471 = fadd fast float %1468, -1.000000e+00
  %1472 = fadd fast float %1469, -1.000000e+00
  %1473 = fadd fast float %1470, -1.000000e+00
  %1474 = fmul fast float %1319, %1471
  %1475 = fmul fast float %1319, %1472
  %1476 = fmul fast float %1319, %1473
  %1477 = fadd fast float %1474, 1.000000e+00
  %1478 = fadd fast float %1475, 1.000000e+00
  %1479 = fadd fast float %1476, 1.000000e+00
  %1480 = fmul fast float %1477, %1294
  %1481 = fmul fast float %1478, %1295
  %1482 = fmul fast float %1479, %1296
  br label %1483

; <label>:1483                                    ; preds = %1467, %1433, %1324, %1280
  %1484 = phi float [ %1429, %1324 ], [ %1305, %1433 ], [ %1305, %1467 ], [ 0x3FA23C0BE0000000, %1280 ]
  %1485 = phi float [ %1421, %1324 ], [ %1464, %1433 ], [ %1480, %1467 ], [ 1.000000e+00, %1280 ]
  %1486 = phi float [ %1422, %1324 ], [ %1465, %1433 ], [ %1481, %1467 ], [ 1.000000e+00, %1280 ]
  %1487 = phi float [ %1423, %1324 ], [ %1466, %1433 ], [ %1482, %1467 ], [ 1.000000e+00, %1280 ]
  %1488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.i32 %1488, 1
  %1490 = and i32 %1489, 1
  %1491 = icmp ne i32 %1490, 0
  %1492 = add i32 %55, 356
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 32
  %1496 = icmp ne i32 %1495, 0
  %1497 = and i1 %1491, %1496
  %1498 = select i1 %1497, float 1.000000e+00, float %1485
  %1499 = select i1 %1497, float 0x3FD3333340000000, float %1486
  %1500 = select i1 %1497, float 0x3FD3333340000000, float %1487
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 32
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1577, label %1505

; <label>:1505                                    ; preds = %1483
  %1506 = add i32 %55, 108
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %55, 444
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %102, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = extractvalue %dx.types.ResRet.f32 %1514, 3
  %1519 = and i32 %1508, 255
  %1520 = uitofp i32 %1519 to float
  %1521 = lshr i32 %1508, 8
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = lshr i32 %1508, 16
  %1525 = and i32 %1524, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101000000000
  %1528 = fmul fast float %1515, %1520
  %1529 = fadd fast float %1528, %1523
  %1530 = fmul fast float %1529, 0x3F70101000000000
  %1531 = fadd fast float %1516, -5.000000e-01
  %1532 = fadd fast float %1518, -5.000000e-01
  %1533 = fmul fast float %1531, %1527
  %1534 = fmul fast float %1532, %1527
  %1535 = fadd fast float %1533, 5.000000e-01
  %1536 = fadd fast float %1534, 5.000000e-01
  %1537 = fmul fast float %1535, 2.000000e+00
  %1538 = fadd fast float %1537, -1.000000e+00
  %1539 = fmul fast float %1536, 2.000000e+00
  %1540 = fadd fast float %1539, -1.000000e+00
  %1541 = fadd fast float %1538, %1540
  %1542 = fmul fast float %1541, 5.000000e-01
  %1543 = fsub fast float %1538, %1540
  %1544 = fmul fast float %1543, 5.000000e-01
  %1545 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = call float @dx.op.unary.f32(i32 6, float %1544)  ; FAbs(value)
  %1548 = fsub fast float %1546, %1547
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1544, float %1548, float %1542, float %1544, float %1548)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = call float @dx.op.unary.f32(i32 25, float %1549)  ; Rsqrt(value)
  %1551 = fmul fast float %1542, %1550
  %1552 = fmul fast float %1544, %1550
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 67108864
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1573, label %1557

; <label>:1557                                    ; preds = %1505
  %1558 = add i32 %55, 296
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 65535
  %1562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1561)  ; LegacyF16ToF32(value)
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = lshr i32 %1560, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = fsub fast float %1530, %1568
  %1570 = fmul fast float %1569, %1562
  %1571 = fadd fast float %1570, %1566
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  br label %1573

; <label>:1573                                    ; preds = %1557, %1505
  %1574 = phi float [ %1572, %1557 ], [ %1530, %1505 ]
  %1575 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1109, float %1110)  ; Dot2(ax,ay,bx,by)
  %1576 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1111, float %1112)  ; Dot2(ax,ay,bx,by)
  br label %1577

; <label>:1577                                    ; preds = %1573, %1483
  %1578 = phi float [ %1574, %1573 ], [ 0x3FD6666660000000, %1483 ]
  %1579 = phi float [ %1575, %1573 ], [ 0.000000e+00, %1483 ]
  %1580 = phi float [ %1576, %1573 ], [ 0.000000e+00, %1483 ]
  %1581 = phi float [ %1517, %1573 ], [ 1.000000e+00, %1483 ]
  %1582 = add i32 %55, 176
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = lshr i32 %1584, 22
  %1586 = shl nuw nsw i32 %1585, 5
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 64
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1625, label %1592

; <label>:1592                                    ; preds = %1577
  %1593 = add i32 %55, 460
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 131072
  %1601 = icmp eq i32 %1600, 0
  %1602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %102, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = fmul fast float %1603, %356
  %1607 = fmul fast float %1604, %359
  %1608 = fmul fast float %1605, %362
  br i1 %1601, label %1615, label %1609

; <label>:1609                                    ; preds = %1592
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = fmul fast float %1611, %1606
  %1613 = fmul fast float %1611, %1607
  %1614 = fmul fast float %1611, %1608
  br label %1615

; <label>:1615                                    ; preds = %1609, %1592
  %1616 = phi float [ %1612, %1609 ], [ %1606, %1592 ]
  %1617 = phi float [ %1613, %1609 ], [ %1607, %1592 ]
  %1618 = phi float [ %1614, %1609 ], [ %1608, %1592 ]
  %1619 = fmul fast float %1616, %1587
  %1620 = select i1 %297, float %1619, float %1616
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1617, float %1618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = select i1 %297, float 0.000000e+00, float %1616
  %1623 = select i1 %297, float %1621, float %1617
  %1624 = select i1 %297, float 0.000000e+00, float %1618
  br label %1625

; <label>:1625                                    ; preds = %1615, %1577
  %1626 = phi float [ %1622, %1615 ], [ 0.000000e+00, %1577 ]
  %1627 = phi float [ %1623, %1615 ], [ 0.000000e+00, %1577 ]
  %1628 = phi float [ %1624, %1615 ], [ 0.000000e+00, %1577 ]
  %1629 = add i32 %55, 112
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = lshr i32 %1631, 8
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1499, float %1500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = fmul fast float %1636, %1637
  %1639 = fadd fast float %1638, %1633
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  br i1 %1097, label %1642, label %1650

; <label>:1642                                    ; preds = %1625
  %1643 = fsub fast float 1.000000e+00, %1278
  %1644 = fmul fast float %1643, %1085
  %1645 = fmul fast float %1643, %1086
  %1646 = fmul fast float %1643, %1087
  %1647 = fmul fast float %1643, %1088
  %1648 = fmul fast float %1643, %1089
  %1649 = fmul fast float %1643, %1090
  br label %1650

; <label>:1650                                    ; preds = %1642, %1625
  %1651 = phi float [ %1644, %1642 ], [ %1085, %1625 ]
  %1652 = phi float [ %1645, %1642 ], [ %1086, %1625 ]
  %1653 = phi float [ %1646, %1642 ], [ %1087, %1625 ]
  %1654 = phi float [ %1647, %1642 ], [ %1088, %1625 ]
  %1655 = phi float [ %1648, %1642 ], [ %1089, %1625 ]
  %1656 = phi float [ %1649, %1642 ], [ %1090, %1625 ]
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 3
  %1660 = icmp eq i32 %1659, 3
  br i1 %1660, label %1739, label %1661

; <label>:1661                                    ; preds = %1650
  %1662 = and i32 %1658, 16
  %1663 = icmp ne i32 %1662, 0
  %1664 = select i1 %1663, float %1278, float 0.000000e+00
  %1665 = icmp eq i32 %1659, 0
  br i1 %1665, label %1666, label %1694

; <label>:1666                                    ; preds = %1661
  %1667 = and i32 %1658, 64
  %1668 = icmp ne i32 %1667, 0
  %1669 = select i1 %1668, float %1278, float 0.000000e+00
  %1670 = fsub fast float %1498, %1651
  %1671 = fsub fast float %1499, %1652
  %1672 = fsub fast float %1500, %1653
  %1673 = fmul fast float %1664, %1670
  %1674 = fmul fast float %1664, %1671
  %1675 = fmul fast float %1664, %1672
  %1676 = fadd fast float %1673, %1651
  %1677 = fadd fast float %1674, %1652
  %1678 = fadd fast float %1675, %1653
  %1679 = fsub fast float %1484, %1091
  %1680 = fmul fast float %1664, %1679
  %1681 = fadd fast float %1680, %1091
  %1682 = fsub fast float %1626, %1654
  %1683 = fsub fast float %1627, %1655
  %1684 = fsub fast float %1628, %1656
  %1685 = fmul fast float %1669, %1682
  %1686 = fmul fast float %1669, %1683
  %1687 = fmul fast float %1669, %1684
  %1688 = fadd fast float %1685, %1654
  %1689 = fadd fast float %1686, %1655
  %1690 = fadd fast float %1687, %1656
  %1691 = fsub fast float %1641, %1095
  %1692 = fmul fast float %1664, %1691
  %1693 = fadd fast float %1692, %1095
  br label %1739

; <label>:1694                                    ; preds = %1661
  %1695 = icmp eq i32 %1659, 1
  br i1 %1695, label %1696, label %1709

; <label>:1696                                    ; preds = %1694
  %1697 = fadd fast float %1498, -1.000000e+00
  %1698 = fadd fast float %1499, -1.000000e+00
  %1699 = fadd fast float %1500, -1.000000e+00
  %1700 = fmul fast float %1664, %1697
  %1701 = fmul fast float %1664, %1698
  %1702 = fmul fast float %1664, %1699
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fadd fast float %1702, 1.000000e+00
  %1706 = fmul fast float %1703, %1651
  %1707 = fmul fast float %1704, %1652
  %1708 = fmul fast float %1705, %1653
  br label %1739

; <label>:1709                                    ; preds = %1694
  %1710 = icmp eq i32 %1659, 2
  br i1 %1710, label %1711, label %1739

; <label>:1711                                    ; preds = %1709
  %1712 = call float @dx.op.unary.f32(i32 24, float %1498)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1714 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fadd fast float %1714, -5.000000e-01
  %1718 = fmul fast float %1715, %1664
  %1719 = fmul fast float %1716, %1664
  %1720 = fmul fast float %1717, %1664
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = fadd fast float %1720, 5.000000e-01
  %1724 = fmul fast float %1721, 2.000000e+00
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = fmul fast float %1725, %1651
  %1727 = fadd fast float %1726, %1724
  %1728 = fmul fast float %1727, %1651
  %1729 = fmul fast float %1722, 2.000000e+00
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1652
  %1732 = fadd fast float %1731, %1729
  %1733 = fmul fast float %1732, %1652
  %1734 = fmul fast float %1723, 2.000000e+00
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1735, %1653
  %1737 = fadd fast float %1736, %1734
  %1738 = fmul fast float %1737, %1653
  br label %1739

; <label>:1739                                    ; preds = %1711, %1709, %1696, %1666, %1650
  %1740 = phi float [ %1651, %1650 ], [ %1728, %1711 ], [ %1651, %1709 ], [ %1706, %1696 ], [ %1676, %1666 ]
  %1741 = phi float [ %1652, %1650 ], [ %1733, %1711 ], [ %1652, %1709 ], [ %1707, %1696 ], [ %1677, %1666 ]
  %1742 = phi float [ %1653, %1650 ], [ %1738, %1711 ], [ %1653, %1709 ], [ %1708, %1696 ], [ %1678, %1666 ]
  %1743 = phi float [ %1654, %1650 ], [ %1654, %1711 ], [ %1654, %1709 ], [ %1654, %1696 ], [ %1688, %1666 ]
  %1744 = phi float [ %1655, %1650 ], [ %1655, %1711 ], [ %1655, %1709 ], [ %1655, %1696 ], [ %1689, %1666 ]
  %1745 = phi float [ %1656, %1650 ], [ %1656, %1711 ], [ %1656, %1709 ], [ %1656, %1696 ], [ %1690, %1666 ]
  %1746 = phi float [ %1091, %1650 ], [ %1091, %1711 ], [ %1091, %1709 ], [ %1091, %1696 ], [ %1681, %1666 ]
  %1747 = phi float [ %1095, %1650 ], [ %1095, %1711 ], [ %1095, %1709 ], [ %1095, %1696 ], [ %1693, %1666 ]
  %1748 = and i32 %1658, 12
  %1749 = icmp eq i32 %1748, 12
  br i1 %1749, label %1822, label %1750

; <label>:1750                                    ; preds = %1739
  %1751 = and i32 %1658, 2097184
  %1752 = icmp eq i32 %1751, 2097184
  %1753 = select i1 %1752, float %1278, float 0.000000e+00
  %1754 = and i32 %1658, 4194336
  %1755 = icmp eq i32 %1754, 4194336
  %1756 = select i1 %1755, float %1278, float 0.000000e+00
  %1757 = and i32 %1658, 8388640
  %1758 = icmp eq i32 %1757, 8388640
  %1759 = select i1 %1758, float %1278, float 0.000000e+00
  %1760 = icmp eq i32 %1748, 0
  br i1 %1760, label %1761, label %1774

; <label>:1761                                    ; preds = %1750
  %1762 = fsub fast float %1579, %1083
  %1763 = fsub fast float %1580, %1084
  %1764 = fmul fast float %1753, %1762
  %1765 = fmul fast float %1753, %1763
  %1766 = fadd fast float %1764, %1083
  %1767 = fadd fast float %1765, %1084
  %1768 = fsub fast float %1581, %1094
  %1769 = fmul fast float %1756, %1768
  %1770 = fadd fast float %1769, %1094
  %1771 = fsub fast float %1578, %1093
  %1772 = fmul fast float %1759, %1771
  %1773 = fadd fast float %1772, %1093
  br label %1822

; <label>:1774                                    ; preds = %1750
  %1775 = icmp eq i32 %1748, 4
  br i1 %1775, label %1776, label %1808

; <label>:1776                                    ; preds = %1774
  %1777 = fmul fast float %1753, %1579
  %1778 = fmul fast float %1753, %1580
  %1779 = fadd fast float %1777, %1083
  %1780 = fadd fast float %1778, %1084
  %1781 = call float @dx.op.binary.f32(i32 36, float %1094, float %1581)  ; FMin(a,b)
  %1782 = fsub fast float %1781, %1094
  %1783 = fmul fast float %1782, %1756
  %1784 = fadd fast float %1783, %1094
  %1785 = fadd fast float %1578, %1093
  %1786 = fmul fast float %1785, 0x3FF337FAE0000000
  %1787 = fmul fast float %1093, %1093
  %1788 = fmul fast float %1578, %1578
  %1789 = fadd fast float %1788, %1787
  %1790 = fmul fast float %1789, 0x3FE5152B00000000
  %1791 = fmul fast float %1093, 0xBFCC1F85E0000000
  %1792 = fmul fast float %1791, %1578
  %1793 = fadd fast float %1792, 0xBFE1363700000000
  %1794 = fadd fast float %1793, %1786
  %1795 = fsub fast float %1794, %1790
  %1796 = fmul fast float %1785, 0x3FBA6F0D00000000
  %1797 = fmul fast float %1789, 0x3FD0432880000000
  %1798 = fmul fast float %1093, 0xBFEF110800000000
  %1799 = fmul fast float %1798, %1578
  %1800 = fadd fast float %1799, 1.000000e+00
  %1801 = fsub fast float %1800, %1796
  %1802 = fadd fast float %1801, %1797
  %1803 = fdiv fast float %1795, %1802
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1805 = fsub fast float %1804, %1093
  %1806 = fmul fast float %1805, %1759
  %1807 = fadd fast float %1806, %1093
  br label %1822

; <label>:1808                                    ; preds = %1774
  %1809 = icmp eq i32 %1748, 8
  br i1 %1809, label %1810, label %1822

; <label>:1810                                    ; preds = %1808
  %1811 = fmul fast float %1753, %1579
  %1812 = fmul fast float %1753, %1580
  %1813 = fadd fast float %1811, %1083
  %1814 = fadd fast float %1812, %1084
  %1815 = call float @dx.op.binary.f32(i32 36, float %1094, float %1581)  ; FMin(a,b)
  %1816 = fsub fast float %1815, %1094
  %1817 = fmul fast float %1816, %1756
  %1818 = fadd fast float %1817, %1094
  %1819 = fsub fast float %1578, %1093
  %1820 = fmul fast float %1759, %1819
  %1821 = fadd fast float %1820, %1093
  br label %1822

; <label>:1822                                    ; preds = %1810, %1808, %1776, %1761, %1739, %1277, %1096, %1082
  %1823 = phi float [ %1083, %1739 ], [ %1083, %1277 ], [ %1083, %1082 ], [ %1813, %1810 ], [ %1083, %1808 ], [ %1779, %1776 ], [ %1766, %1761 ], [ %1083, %1096 ]
  %1824 = phi float [ %1084, %1739 ], [ %1084, %1277 ], [ %1084, %1082 ], [ %1814, %1810 ], [ %1084, %1808 ], [ %1780, %1776 ], [ %1767, %1761 ], [ %1084, %1096 ]
  %1825 = phi float [ %1740, %1739 ], [ %1085, %1277 ], [ %1085, %1082 ], [ %1740, %1810 ], [ %1740, %1808 ], [ %1740, %1776 ], [ %1740, %1761 ], [ %1085, %1096 ]
  %1826 = phi float [ %1741, %1739 ], [ %1086, %1277 ], [ %1086, %1082 ], [ %1741, %1810 ], [ %1741, %1808 ], [ %1741, %1776 ], [ %1741, %1761 ], [ %1086, %1096 ]
  %1827 = phi float [ %1742, %1739 ], [ %1087, %1277 ], [ %1087, %1082 ], [ %1742, %1810 ], [ %1742, %1808 ], [ %1742, %1776 ], [ %1742, %1761 ], [ %1087, %1096 ]
  %1828 = phi float [ %1743, %1739 ], [ %1088, %1277 ], [ %1088, %1082 ], [ %1743, %1810 ], [ %1743, %1808 ], [ %1743, %1776 ], [ %1743, %1761 ], [ %1088, %1096 ]
  %1829 = phi float [ %1744, %1739 ], [ %1089, %1277 ], [ %1089, %1082 ], [ %1744, %1810 ], [ %1744, %1808 ], [ %1744, %1776 ], [ %1744, %1761 ], [ %1089, %1096 ]
  %1830 = phi float [ %1745, %1739 ], [ %1090, %1277 ], [ %1090, %1082 ], [ %1745, %1810 ], [ %1745, %1808 ], [ %1745, %1776 ], [ %1745, %1761 ], [ %1090, %1096 ]
  %1831 = phi float [ %1746, %1739 ], [ %1091, %1277 ], [ %1091, %1082 ], [ %1746, %1810 ], [ %1746, %1808 ], [ %1746, %1776 ], [ %1746, %1761 ], [ %1091, %1096 ]
  %1832 = phi float [ %1093, %1739 ], [ %1093, %1277 ], [ %1093, %1082 ], [ %1821, %1810 ], [ %1093, %1808 ], [ %1807, %1776 ], [ %1773, %1761 ], [ %1093, %1096 ]
  %1833 = phi float [ %1094, %1739 ], [ %1094, %1277 ], [ %1094, %1082 ], [ %1818, %1810 ], [ %1094, %1808 ], [ %1784, %1776 ], [ %1770, %1761 ], [ %1094, %1096 ]
  %1834 = phi float [ %1747, %1739 ], [ %1095, %1277 ], [ %1095, %1082 ], [ %1747, %1810 ], [ %1747, %1808 ], [ %1747, %1776 ], [ %1747, %1761 ], [ %1095, %1096 ]
  br i1 %483, label %2561, label %1835

; <label>:1835                                    ; preds = %1822
  %1836 = icmp ult i32 %539, 3
  %1837 = add i32 %55, 56
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = add i32 %55, 60
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = or i32 %1842, %1839
  %1844 = icmp eq i32 %1843, 0
  br i1 %1844, label %2561, label %1845

; <label>:1845                                    ; preds = %1835
  %1846 = and i32 %1839, 262144
  %1847 = icmp ne i32 %1846, 0
  %1848 = select i1 %1847, float %61, float 1.000000e+00
  %1849 = select i1 %1847, float %62, float 0.000000e+00
  %1850 = select i1 %1847, float %63, float 0.000000e+00
  %1851 = select i1 %1847, float %64, float 1.000000e+00
  %1852 = select i1 %1847, float %65, float %88
  %1853 = select i1 %1847, float %66, float %89
  %1854 = add i32 %55, 316
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = lshr i32 %1856, 16
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = fmul fast float %1858, 0x3F50624DE0000000
  %1860 = add i32 %55, 120
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = lshr i32 %1862, 16
  %1864 = and i32 %1863, 255
  %1865 = lshr i32 %1862, 24
  %1866 = add i32 %55, 324
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 65535
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = lshr i32 %1868, 16
  %1872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1871)  ; LegacyF16ToF32(value)
  %1873 = add i32 %55, 64
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = lshr i32 %1875, 22
  %1877 = shl nuw nsw i32 %1876, 5
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = shl i32 %1875, 4
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = lshr i32 %1875, 7
  %1883 = and i32 %1882, 32752
  %1884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1883)  ; LegacyF16ToF32(value)
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1887 = fmul fast float %1886, 1.000000e+03
  %1888 = fmul fast float %433, %1887
  %1889 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1890 = fadd fast float %1889, %423
  %1891 = fmul fast float %434, %1887
  %1892 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1893 = fadd fast float %1892, %425
  %1894 = fmul fast float %1859, %1887
  %1895 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1896 = fmul fast float %1895, 0x401921FB60000000
  %1897 = fadd fast float %1896, %1878
  %1898 = call float @dx.op.unary.f32(i32 13, float %1897)  ; Sin(value)
  %1899 = call float @dx.op.unary.f32(i32 12, float %1897)  ; Cos(value)
  %1900 = fsub fast float -0.000000e+00, %1898
  %1901 = fadd fast float %1852, -5.000000e-01
  %1902 = fadd fast float %1853, -5.000000e-01
  %1903 = fmul fast float %1870, %1901
  %1904 = fmul fast float %1872, %1902
  %1905 = fadd fast float %1903, 5.000000e-01
  %1906 = fadd fast float %1904, 5.000000e-01
  %1907 = fmul fast float %1881, %1905
  %1908 = fmul fast float %1884, %1906
  %1909 = fmul fast float %1899, %1907
  %1910 = call float @dx.op.tertiary.f32(i32 46, float %1900, float %1908, float %1909)  ; FMad(a,b,c)
  %1911 = fmul fast float %1898, %1907
  %1912 = call float @dx.op.tertiary.f32(i32 46, float %1899, float %1908, float %1911)  ; FMad(a,b,c)
  %1913 = fadd fast float %1890, %1910
  %1914 = fadd fast float %1893, %1912
  %1915 = icmp ugt i32 %1864, 1
  %1916 = icmp ugt i32 %1862, 33554431
  %1917 = or i1 %1916, %1915
  br i1 %1917, label %1918, label %1943

; <label>:1918                                    ; preds = %1845
  %1919 = add i32 %55, 260
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = lshr i32 %1921, 16
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = fmul fast float %1886, %1923
  %1925 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1926 = mul nuw nsw i32 %1864, %1865
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1925, %1927
  %1929 = call float @dx.op.unary.f32(i32 27, float %1928)  ; Round_ni(value)
  %1930 = fptoui float %1929 to i32
  %1931 = urem i32 %1930, %1864
  %1932 = udiv i32 %1930, %1865
  %1933 = call float @dx.op.unary.f32(i32 22, float %1913)  ; Frc(value)
  %1934 = call float @dx.op.unary.f32(i32 22, float %1914)  ; Frc(value)
  %1935 = uitofp i32 %1931 to float
  %1936 = uitofp i32 %1932 to float
  %1937 = fadd fast float %1933, %1935
  %1938 = fadd fast float %1934, %1936
  %1939 = uitofp i32 %1864 to float
  %1940 = uitofp i32 %1865 to float
  %1941 = fdiv fast float %1937, %1939
  %1942 = fdiv fast float %1938, %1940
  br label %1943

; <label>:1943                                    ; preds = %1918, %1845
  %1944 = phi float [ %1941, %1918 ], [ %1913, %1845 ]
  %1945 = phi float [ %1942, %1918 ], [ %1914, %1845 ]
  %1946 = and i32 %1839, 256
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %1994, label %1948

; <label>:1948                                    ; preds = %1943
  %1949 = add i32 %55, 496
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = add i32 %1951, 0
  %1953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1952, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1953, %dx.types.Handle %103, float %1944, float %1945, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = add i32 %55, 132
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = shl i32 %1958, 4
  %1960 = and i32 %1959, 32752
  %1961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1960)  ; LegacyF16ToF32(value)
  %1962 = lshr i32 %1958, 7
  %1963 = and i32 %1962, 32752
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = fsub fast float 1.000000e+00, %535
  %1966 = call float @dx.op.binary.f32(i32 35, float %1965, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1967 = bitcast float %535 to i32
  %1968 = sitofp i32 %1967 to float
  %1969 = fadd fast float %1968, 0xC1CFBF8940000000
  %1970 = fmul fast float %1964, %1969
  %1971 = fadd fast float %1970, 0x41CFBF8940000000
  %1972 = fptosi float %1971 to i32
  %1973 = bitcast i32 %1972 to float
  %1974 = bitcast float %1966 to i32
  %1975 = sitofp i32 %1974 to float
  %1976 = fadd fast float %1975, 0xC1CFBF8940000000
  %1977 = fmul fast float %1976, %1964
  %1978 = fadd fast float %1977, 0x41CFBF8940000000
  %1979 = fptosi float %1978 to i32
  %1980 = bitcast i32 %1979 to float
  %1981 = fmul fast float %1973, %1961
  %1982 = fmul fast float %1980, %1961
  %1983 = fsub fast float %1966, %1981
  %1984 = fadd fast float %1982, %1966
  %1985 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1987 = fsub fast float %1955, %1985
  %1988 = fsub fast float %1986, %1985
  %1989 = bitcast float %1988 to i32
  %1990 = sub nsw i32 2129859010, %1989
  %1991 = bitcast i32 %1990 to float
  %1992 = fmul fast float %1991, %1987
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  br label %1994

; <label>:1994                                    ; preds = %1948, %1943
  %1995 = phi float [ %1993, %1948 ], [ %535, %1943 ]
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 128
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2016, label %2000

; <label>:2000                                    ; preds = %1994
  %2001 = add i32 %55, 480
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = add i32 %2003, 0
  %2005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2006 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2005, %dx.types.Handle %103, float %1944, float %1945, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 524288
  %2011 = icmp ne i32 %2010, 0
  %2012 = fcmp fast ogt float %2007, 0x3FE0101020000000
  %2013 = select i1 %2012, float 1.000000e+00, float 0.000000e+00
  %2014 = select i1 %2011, float %2013, float %2007
  %2015 = fmul fast float %2014, %1995
  br label %2016

; <label>:2016                                    ; preds = %2000, %1994
  %2017 = phi float [ %2015, %2000 ], [ %1995, %1994 ]
  %2018 = fcmp fast ult float %2017, 0x3F70101020000000
  br i1 %2018, label %2561, label %2019

; <label>:2019                                    ; preds = %2016
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = and i32 %2021, 16
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2222, label %2024

; <label>:2024                                    ; preds = %2019
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = add i32 %55, 432
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %2029, 0
  %2031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2031, %dx.types.Handle %102, float %1944, float %1945, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.ResRet.f32 %2032, 1
  %2035 = extractvalue %dx.types.ResRet.f32 %2032, 2
  %2036 = extractvalue %dx.types.ResRet.f32 %2032, 3
  %2037 = and i32 %2026, 255
  %2038 = uitofp i32 %2037 to float
  %2039 = lshr i32 %2026, 8
  %2040 = and i32 %2039, 255
  %2041 = uitofp i32 %2040 to float
  %2042 = fmul fast float %2036, %2038
  %2043 = fadd fast float %2042, %2041
  %2044 = fmul fast float %2043, 0x3F70101000000000
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 512
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2057, label %2049

; <label>:2049                                    ; preds = %2024
  %2050 = add i32 %55, 516
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = add i32 %2052, 0
  %2054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2054, %dx.types.Handle %103, float %1944, float %1945, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  br label %2057

; <label>:2057                                    ; preds = %2049, %2024
  %2058 = phi float [ %2056, %2049 ], [ 1.000000e+00, %2024 ]
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 33554432
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %2169, label %2063

; <label>:2063                                    ; preds = %2057
  %2064 = add i32 %55, 256
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = and i32 %2066, 65535
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = lshr i32 %2066, 16
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = add i32 %55, 260
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 65535
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = lshr i32 %2077, 24
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = and i32 %2077, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101020000000
  %2084 = lshr i32 %2077, 8
  %2085 = and i32 %2084, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2086, 0x3F70101020000000
  %2088 = lshr i32 %2077, 16
  %2089 = and i32 %2088, 255
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2090, 0x3F70101020000000
  %2092 = add i32 %55, 252
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = lshr i32 %2094, 24
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = and i32 %2094, 255
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F70101020000000
  %2101 = lshr i32 %2094, 8
  %2102 = and i32 %2101, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = lshr i32 %2094, 16
  %2106 = and i32 %2105, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = bitcast float %2033 to i32
  %2110 = ashr i32 %2109, 1
  %2111 = sub nsw i32 1597463174, %2110
  %2112 = bitcast i32 %2111 to float
  %2113 = fmul fast float %2033, 5.000000e-01
  %2114 = fmul fast float %2112, %2112
  %2115 = fmul fast float %2114, %2113
  %2116 = fsub fast float 1.500000e+00, %2115
  %2117 = fmul fast float %2112, %2033
  %2118 = fmul fast float %2117, %2116
  %2119 = bitcast float %2034 to i32
  %2120 = ashr i32 %2119, 1
  %2121 = sub nsw i32 1597463174, %2120
  %2122 = bitcast i32 %2121 to float
  %2123 = fmul fast float %2034, 5.000000e-01
  %2124 = fmul fast float %2122, %2122
  %2125 = fmul fast float %2124, %2123
  %2126 = fsub fast float 1.500000e+00, %2125
  %2127 = fmul fast float %2122, %2034
  %2128 = fmul fast float %2127, %2126
  %2129 = bitcast float %2035 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2035, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2035
  %2138 = fmul fast float %2137, %2136
  %2139 = fsub fast float %2118, %2100
  %2140 = fsub fast float %2128, %2104
  %2141 = fsub fast float %2138, %2108
  %2142 = fmul fast float %2139, %2068
  %2143 = fmul fast float %2140, %2070
  %2144 = fmul fast float %2141, %2075
  %2145 = fadd fast float %2142, %2083
  %2146 = fadd fast float %2143, %2087
  %2147 = fadd fast float %2144, %2091
  %2148 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2149 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2151 = fmul fast float %2148, %2148
  %2152 = fmul fast float %2149, %2149
  %2153 = fmul fast float %2150, %2150
  %2154 = fsub fast float %2151, %2033
  %2155 = fsub fast float %2152, %2034
  %2156 = fsub fast float %2153, %2035
  %2157 = fmul fast float %2154, %2058
  %2158 = fmul fast float %2155, %2058
  %2159 = fmul fast float %2156, %2058
  %2160 = fadd fast float %2157, %2033
  %2161 = fadd fast float %2158, %2034
  %2162 = fadd fast float %2159, %2035
  %2163 = fadd fast float %2080, %2044
  %2164 = fsub fast float %2163, %2097
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = fsub fast float %2165, %2044
  %2167 = fmul fast float %2166, %2058
  %2168 = fadd fast float %2167, %2044
  br label %2222

; <label>:2169                                    ; preds = %2057
  %2170 = and i32 %2060, 134217728
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2206, label %2172

; <label>:2172                                    ; preds = %2169
  %2173 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %2174 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %2175 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %2176 = fadd fast float %2173, -5.000000e-01
  %2177 = fadd fast float %2174, -5.000000e-01
  %2178 = fadd fast float %2175, -5.000000e-01
  %2179 = fmul fast float %2176, %2058
  %2180 = fmul fast float %2177, %2058
  %2181 = fmul fast float %2178, %2058
  %2182 = fadd fast float %2179, 5.000000e-01
  %2183 = fadd fast float %2180, 5.000000e-01
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = call float @dx.op.unary.f32(i32 24, float %2033)  ; Sqrt(value)
  %2186 = call float @dx.op.unary.f32(i32 24, float %2034)  ; Sqrt(value)
  %2187 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2188 = fmul fast float %2182, 2.000000e+00
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = fmul fast float %2189, %2185
  %2191 = fadd fast float %2190, %2188
  %2192 = fmul fast float %2191, %2185
  %2193 = fmul fast float %2183, 2.000000e+00
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = fmul fast float %2194, %2186
  %2196 = fadd fast float %2195, %2193
  %2197 = fmul fast float %2196, %2186
  %2198 = fmul fast float %2184, 2.000000e+00
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2199, %2187
  %2201 = fadd fast float %2200, %2198
  %2202 = fmul fast float %2201, %2187
  %2203 = fmul fast float %2192, %2192
  %2204 = fmul fast float %2197, %2197
  %2205 = fmul fast float %2202, %2202
  br label %2222

; <label>:2206                                    ; preds = %2169
  %2207 = fmul fast float %410, %410
  %2208 = fmul fast float %414, %414
  %2209 = fmul fast float %418, %418
  %2210 = fadd fast float %2207, -1.000000e+00
  %2211 = fadd fast float %2208, -1.000000e+00
  %2212 = fadd fast float %2209, -1.000000e+00
  %2213 = fmul fast float %2058, %2210
  %2214 = fmul fast float %2058, %2211
  %2215 = fmul fast float %2058, %2212
  %2216 = fadd fast float %2213, 1.000000e+00
  %2217 = fadd fast float %2214, 1.000000e+00
  %2218 = fadd fast float %2215, 1.000000e+00
  %2219 = fmul fast float %2216, %2033
  %2220 = fmul fast float %2217, %2034
  %2221 = fmul fast float %2218, %2035
  br label %2222

; <label>:2222                                    ; preds = %2206, %2172, %2063, %2019
  %2223 = phi float [ %2168, %2063 ], [ %2044, %2172 ], [ %2044, %2206 ], [ 0x3FA23C0BE0000000, %2019 ]
  %2224 = phi float [ %2160, %2063 ], [ %2203, %2172 ], [ %2219, %2206 ], [ 1.000000e+00, %2019 ]
  %2225 = phi float [ %2161, %2063 ], [ %2204, %2172 ], [ %2220, %2206 ], [ 1.000000e+00, %2019 ]
  %2226 = phi float [ %2162, %2063 ], [ %2205, %2172 ], [ %2221, %2206 ], [ 1.000000e+00, %2019 ]
  %2227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.i32 %2227, 1
  %2229 = and i32 %2228, 1
  %2230 = icmp ne i32 %2229, 0
  %2231 = add i32 %55, 356
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 32
  %2235 = icmp ne i32 %2234, 0
  %2236 = and i1 %2230, %2235
  %2237 = select i1 %2236, float 1.000000e+00, float %2224
  %2238 = select i1 %2236, float 0x3FD3333340000000, float %2225
  %2239 = select i1 %2236, float 0x3FD3333340000000, float %2226
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %2241, 32
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2316, label %2244

; <label>:2244                                    ; preds = %2222
  %2245 = add i32 %55, 124
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = add i32 %55, 448
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = add i32 %2250, 0
  %2252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2253 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2252, %dx.types.Handle %102, float %1944, float %1945, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.ResRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.ResRet.f32 %2253, 2
  %2257 = extractvalue %dx.types.ResRet.f32 %2253, 3
  %2258 = and i32 %2247, 255
  %2259 = uitofp i32 %2258 to float
  %2260 = lshr i32 %2247, 8
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = lshr i32 %2247, 16
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101000000000
  %2267 = fmul fast float %2254, %2259
  %2268 = fadd fast float %2267, %2262
  %2269 = fmul fast float %2268, 0x3F70101000000000
  %2270 = fadd fast float %2255, -5.000000e-01
  %2271 = fadd fast float %2257, -5.000000e-01
  %2272 = fmul fast float %2270, %2266
  %2273 = fmul fast float %2271, %2266
  %2274 = fadd fast float %2272, 5.000000e-01
  %2275 = fadd fast float %2273, 5.000000e-01
  %2276 = fmul fast float %2274, 2.000000e+00
  %2277 = fadd fast float %2276, -1.000000e+00
  %2278 = fmul fast float %2275, 2.000000e+00
  %2279 = fadd fast float %2278, -1.000000e+00
  %2280 = fadd fast float %2277, %2279
  %2281 = fmul fast float %2280, 5.000000e-01
  %2282 = fsub fast float %2277, %2279
  %2283 = fmul fast float %2282, 5.000000e-01
  %2284 = call float @dx.op.unary.f32(i32 6, float %2281)  ; FAbs(value)
  %2285 = fsub fast float 1.000000e+00, %2284
  %2286 = call float @dx.op.unary.f32(i32 6, float %2283)  ; FAbs(value)
  %2287 = fsub fast float %2285, %2286
  %2288 = call float @dx.op.dot3.f32(i32 55, float %2281, float %2283, float %2287, float %2281, float %2283, float %2287)  ; Dot3(ax,ay,az,bx,by,bz)
  %2289 = call float @dx.op.unary.f32(i32 25, float %2288)  ; Rsqrt(value)
  %2290 = fmul fast float %2281, %2289
  %2291 = fmul fast float %2283, %2289
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = and i32 %2293, 67108864
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2312, label %2296

; <label>:2296                                    ; preds = %2244
  %2297 = add i32 %55, 312
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 65535
  %2301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2300)  ; LegacyF16ToF32(value)
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 65535
  %2305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2304)  ; LegacyF16ToF32(value)
  %2306 = lshr i32 %2299, 16
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = fsub fast float %2269, %2307
  %2309 = fmul fast float %2308, %2301
  %2310 = fadd fast float %2309, %2305
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  br label %2312

; <label>:2312                                    ; preds = %2296, %2244
  %2313 = phi float [ %2311, %2296 ], [ %2269, %2244 ]
  %2314 = call float @dx.op.dot2.f32(i32 54, float %2290, float %2291, float %1848, float %1849)  ; Dot2(ax,ay,bx,by)
  %2315 = call float @dx.op.dot2.f32(i32 54, float %2290, float %2291, float %1850, float %1851)  ; Dot2(ax,ay,bx,by)
  br label %2316

; <label>:2316                                    ; preds = %2312, %2222
  %2317 = phi float [ %2313, %2312 ], [ 0x3FD6666660000000, %2222 ]
  %2318 = phi float [ %2314, %2312 ], [ 0.000000e+00, %2222 ]
  %2319 = phi float [ %2315, %2312 ], [ 0.000000e+00, %2222 ]
  %2320 = phi float [ %2256, %2312 ], [ 1.000000e+00, %2222 ]
  %2321 = add i32 %55, 192
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = lshr i32 %2323, 22
  %2325 = shl nuw nsw i32 %2324, 5
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 64
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2364, label %2331

; <label>:2331                                    ; preds = %2316
  %2332 = add i32 %55, 464
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = add i32 %2334, 0
  %2336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 131072
  %2340 = icmp eq i32 %2339, 0
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2336, %dx.types.Handle %102, float %1944, float %1945, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = fmul fast float %2342, %398
  %2346 = fmul fast float %2343, %401
  %2347 = fmul fast float %2344, %404
  br i1 %2340, label %2354, label %2348

; <label>:2348                                    ; preds = %2331
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = fmul fast float %2350, %2345
  %2352 = fmul fast float %2350, %2346
  %2353 = fmul fast float %2350, %2347
  br label %2354

; <label>:2354                                    ; preds = %2348, %2331
  %2355 = phi float [ %2351, %2348 ], [ %2345, %2331 ]
  %2356 = phi float [ %2352, %2348 ], [ %2346, %2331 ]
  %2357 = phi float [ %2353, %2348 ], [ %2347, %2331 ]
  %2358 = fmul fast float %2355, %2326
  %2359 = select i1 %297, float %2358, float %2355
  %2360 = call float @dx.op.dot3.f32(i32 55, float %2359, float %2356, float %2357, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2361 = select i1 %297, float 0.000000e+00, float %2355
  %2362 = select i1 %297, float %2360, float %2356
  %2363 = select i1 %297, float 0.000000e+00, float %2357
  br label %2364

; <label>:2364                                    ; preds = %2354, %2316
  %2365 = phi float [ %2361, %2354 ], [ 0.000000e+00, %2316 ]
  %2366 = phi float [ %2362, %2354 ], [ 0.000000e+00, %2316 ]
  %2367 = phi float [ %2363, %2354 ], [ 0.000000e+00, %2316 ]
  %2368 = add i32 %55, 128
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = lshr i32 %2370, 8
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2237, float %2238, float %2239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = fmul fast float %2375, %2376
  %2378 = fadd fast float %2377, %2372
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = call float @dx.op.unary.f32(i32 7, float %2379)  ; Saturate(value)
  br i1 %1836, label %2381, label %2389

; <label>:2381                                    ; preds = %2364
  %2382 = fsub fast float 1.000000e+00, %2017
  %2383 = fmul fast float %2382, %1825
  %2384 = fmul fast float %2382, %1826
  %2385 = fmul fast float %2382, %1827
  %2386 = fmul fast float %2382, %1828
  %2387 = fmul fast float %2382, %1829
  %2388 = fmul fast float %2382, %1830
  br label %2389

; <label>:2389                                    ; preds = %2381, %2364
  %2390 = phi float [ %2383, %2381 ], [ %1825, %2364 ]
  %2391 = phi float [ %2384, %2381 ], [ %1826, %2364 ]
  %2392 = phi float [ %2385, %2381 ], [ %1827, %2364 ]
  %2393 = phi float [ %2386, %2381 ], [ %1828, %2364 ]
  %2394 = phi float [ %2387, %2381 ], [ %1829, %2364 ]
  %2395 = phi float [ %2388, %2381 ], [ %1830, %2364 ]
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 3
  %2399 = icmp eq i32 %2398, 3
  br i1 %2399, label %2478, label %2400

; <label>:2400                                    ; preds = %2389
  %2401 = and i32 %2397, 16
  %2402 = icmp ne i32 %2401, 0
  %2403 = select i1 %2402, float %2017, float 0.000000e+00
  %2404 = icmp eq i32 %2398, 0
  br i1 %2404, label %2405, label %2433

; <label>:2405                                    ; preds = %2400
  %2406 = and i32 %2397, 64
  %2407 = icmp ne i32 %2406, 0
  %2408 = select i1 %2407, float %2017, float 0.000000e+00
  %2409 = fsub fast float %2237, %2390
  %2410 = fsub fast float %2238, %2391
  %2411 = fsub fast float %2239, %2392
  %2412 = fmul fast float %2403, %2409
  %2413 = fmul fast float %2403, %2410
  %2414 = fmul fast float %2403, %2411
  %2415 = fadd fast float %2412, %2390
  %2416 = fadd fast float %2413, %2391
  %2417 = fadd fast float %2414, %2392
  %2418 = fsub fast float %2223, %1831
  %2419 = fmul fast float %2403, %2418
  %2420 = fadd fast float %2419, %1831
  %2421 = fsub fast float %2365, %2393
  %2422 = fsub fast float %2366, %2394
  %2423 = fsub fast float %2367, %2395
  %2424 = fmul fast float %2408, %2421
  %2425 = fmul fast float %2408, %2422
  %2426 = fmul fast float %2408, %2423
  %2427 = fadd fast float %2424, %2393
  %2428 = fadd fast float %2425, %2394
  %2429 = fadd fast float %2426, %2395
  %2430 = fsub fast float %2380, %1834
  %2431 = fmul fast float %2403, %2430
  %2432 = fadd fast float %2431, %1834
  br label %2478

; <label>:2433                                    ; preds = %2400
  %2434 = icmp eq i32 %2398, 1
  br i1 %2434, label %2435, label %2448

; <label>:2435                                    ; preds = %2433
  %2436 = fadd fast float %2237, -1.000000e+00
  %2437 = fadd fast float %2238, -1.000000e+00
  %2438 = fadd fast float %2239, -1.000000e+00
  %2439 = fmul fast float %2403, %2436
  %2440 = fmul fast float %2403, %2437
  %2441 = fmul fast float %2403, %2438
  %2442 = fadd fast float %2439, 1.000000e+00
  %2443 = fadd fast float %2440, 1.000000e+00
  %2444 = fadd fast float %2441, 1.000000e+00
  %2445 = fmul fast float %2442, %2390
  %2446 = fmul fast float %2443, %2391
  %2447 = fmul fast float %2444, %2392
  br label %2478

; <label>:2448                                    ; preds = %2433
  %2449 = icmp eq i32 %2398, 2
  br i1 %2449, label %2450, label %2478

; <label>:2450                                    ; preds = %2448
  %2451 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2452 = call float @dx.op.unary.f32(i32 24, float %2238)  ; Sqrt(value)
  %2453 = call float @dx.op.unary.f32(i32 24, float %2239)  ; Sqrt(value)
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fadd fast float %2452, -5.000000e-01
  %2456 = fadd fast float %2453, -5.000000e-01
  %2457 = fmul fast float %2454, %2403
  %2458 = fmul fast float %2455, %2403
  %2459 = fmul fast float %2456, %2403
  %2460 = fadd fast float %2457, 5.000000e-01
  %2461 = fadd fast float %2458, 5.000000e-01
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = fmul fast float %2460, 2.000000e+00
  %2464 = fsub fast float 1.000000e+00, %2463
  %2465 = fmul fast float %2464, %2390
  %2466 = fadd fast float %2465, %2463
  %2467 = fmul fast float %2466, %2390
  %2468 = fmul fast float %2461, 2.000000e+00
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2469, %2391
  %2471 = fadd fast float %2470, %2468
  %2472 = fmul fast float %2471, %2391
  %2473 = fmul fast float %2462, 2.000000e+00
  %2474 = fsub fast float 1.000000e+00, %2473
  %2475 = fmul fast float %2474, %2392
  %2476 = fadd fast float %2475, %2473
  %2477 = fmul fast float %2476, %2392
  br label %2478

; <label>:2478                                    ; preds = %2450, %2448, %2435, %2405, %2389
  %2479 = phi float [ %2390, %2389 ], [ %2467, %2450 ], [ %2390, %2448 ], [ %2445, %2435 ], [ %2415, %2405 ]
  %2480 = phi float [ %2391, %2389 ], [ %2472, %2450 ], [ %2391, %2448 ], [ %2446, %2435 ], [ %2416, %2405 ]
  %2481 = phi float [ %2392, %2389 ], [ %2477, %2450 ], [ %2392, %2448 ], [ %2447, %2435 ], [ %2417, %2405 ]
  %2482 = phi float [ %2393, %2389 ], [ %2393, %2450 ], [ %2393, %2448 ], [ %2393, %2435 ], [ %2427, %2405 ]
  %2483 = phi float [ %2394, %2389 ], [ %2394, %2450 ], [ %2394, %2448 ], [ %2394, %2435 ], [ %2428, %2405 ]
  %2484 = phi float [ %2395, %2389 ], [ %2395, %2450 ], [ %2395, %2448 ], [ %2395, %2435 ], [ %2429, %2405 ]
  %2485 = phi float [ %1831, %2389 ], [ %1831, %2450 ], [ %1831, %2448 ], [ %1831, %2435 ], [ %2420, %2405 ]
  %2486 = phi float [ %1834, %2389 ], [ %1834, %2450 ], [ %1834, %2448 ], [ %1834, %2435 ], [ %2432, %2405 ]
  %2487 = and i32 %2397, 12
  %2488 = icmp eq i32 %2487, 12
  br i1 %2488, label %2561, label %2489

; <label>:2489                                    ; preds = %2478
  %2490 = and i32 %2397, 2097184
  %2491 = icmp eq i32 %2490, 2097184
  %2492 = select i1 %2491, float %2017, float 0.000000e+00
  %2493 = and i32 %2397, 4194336
  %2494 = icmp eq i32 %2493, 4194336
  %2495 = select i1 %2494, float %2017, float 0.000000e+00
  %2496 = and i32 %2397, 8388640
  %2497 = icmp eq i32 %2496, 8388640
  %2498 = select i1 %2497, float %2017, float 0.000000e+00
  %2499 = icmp eq i32 %2487, 0
  br i1 %2499, label %2500, label %2513

; <label>:2500                                    ; preds = %2489
  %2501 = fsub fast float %2318, %1823
  %2502 = fsub fast float %2319, %1824
  %2503 = fmul fast float %2492, %2501
  %2504 = fmul fast float %2492, %2502
  %2505 = fadd fast float %2503, %1823
  %2506 = fadd fast float %2504, %1824
  %2507 = fsub fast float %2320, %1833
  %2508 = fmul fast float %2495, %2507
  %2509 = fadd fast float %2508, %1833
  %2510 = fsub fast float %2317, %1832
  %2511 = fmul fast float %2498, %2510
  %2512 = fadd fast float %2511, %1832
  br label %2561

; <label>:2513                                    ; preds = %2489
  %2514 = icmp eq i32 %2487, 4
  br i1 %2514, label %2515, label %2547

; <label>:2515                                    ; preds = %2513
  %2516 = fmul fast float %2492, %2318
  %2517 = fmul fast float %2492, %2319
  %2518 = fadd fast float %2516, %1823
  %2519 = fadd fast float %2517, %1824
  %2520 = call float @dx.op.binary.f32(i32 36, float %1833, float %2320)  ; FMin(a,b)
  %2521 = fsub fast float %2520, %1833
  %2522 = fmul fast float %2521, %2495
  %2523 = fadd fast float %2522, %1833
  %2524 = fadd fast float %2317, %1832
  %2525 = fmul fast float %2524, 0x3FF337FAE0000000
  %2526 = fmul fast float %1832, %1832
  %2527 = fmul fast float %2317, %2317
  %2528 = fadd fast float %2527, %2526
  %2529 = fmul fast float %2528, 0x3FE5152B00000000
  %2530 = fmul fast float %1832, 0xBFCC1F85E0000000
  %2531 = fmul fast float %2530, %2317
  %2532 = fadd fast float %2531, 0xBFE1363700000000
  %2533 = fadd fast float %2532, %2525
  %2534 = fsub fast float %2533, %2529
  %2535 = fmul fast float %2524, 0x3FBA6F0D00000000
  %2536 = fmul fast float %2528, 0x3FD0432880000000
  %2537 = fmul fast float %1832, 0xBFEF110800000000
  %2538 = fmul fast float %2537, %2317
  %2539 = fadd fast float %2538, 1.000000e+00
  %2540 = fsub fast float %2539, %2535
  %2541 = fadd fast float %2540, %2536
  %2542 = fdiv fast float %2534, %2541
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2544 = fsub fast float %2543, %1832
  %2545 = fmul fast float %2544, %2498
  %2546 = fadd fast float %2545, %1832
  br label %2561

; <label>:2547                                    ; preds = %2513
  %2548 = icmp eq i32 %2487, 8
  br i1 %2548, label %2549, label %2561

; <label>:2549                                    ; preds = %2547
  %2550 = fmul fast float %2492, %2318
  %2551 = fmul fast float %2492, %2319
  %2552 = fadd fast float %2550, %1823
  %2553 = fadd fast float %2551, %1824
  %2554 = call float @dx.op.binary.f32(i32 36, float %1833, float %2320)  ; FMin(a,b)
  %2555 = fsub fast float %2554, %1833
  %2556 = fmul fast float %2555, %2495
  %2557 = fadd fast float %2556, %1833
  %2558 = fsub fast float %2317, %1832
  %2559 = fmul fast float %2498, %2558
  %2560 = fadd fast float %2559, %1832
  br label %2561

; <label>:2561                                    ; preds = %2549, %2547, %2515, %2500, %2478, %2016, %1835, %1822
  %2562 = phi float [ %1823, %2478 ], [ %1823, %2016 ], [ %1823, %1822 ], [ %2552, %2549 ], [ %1823, %2547 ], [ %2518, %2515 ], [ %2505, %2500 ], [ %1823, %1835 ]
  %2563 = phi float [ %1824, %2478 ], [ %1824, %2016 ], [ %1824, %1822 ], [ %2553, %2549 ], [ %1824, %2547 ], [ %2519, %2515 ], [ %2506, %2500 ], [ %1824, %1835 ]
  %2564 = phi float [ %2479, %2478 ], [ %1825, %2016 ], [ %1825, %1822 ], [ %2479, %2549 ], [ %2479, %2547 ], [ %2479, %2515 ], [ %2479, %2500 ], [ %1825, %1835 ]
  %2565 = phi float [ %2480, %2478 ], [ %1826, %2016 ], [ %1826, %1822 ], [ %2480, %2549 ], [ %2480, %2547 ], [ %2480, %2515 ], [ %2480, %2500 ], [ %1826, %1835 ]
  %2566 = phi float [ %2481, %2478 ], [ %1827, %2016 ], [ %1827, %1822 ], [ %2481, %2549 ], [ %2481, %2547 ], [ %2481, %2515 ], [ %2481, %2500 ], [ %1827, %1835 ]
  %2567 = phi float [ %2482, %2478 ], [ %1828, %2016 ], [ %1828, %1822 ], [ %2482, %2549 ], [ %2482, %2547 ], [ %2482, %2515 ], [ %2482, %2500 ], [ %1828, %1835 ]
  %2568 = phi float [ %2483, %2478 ], [ %1829, %2016 ], [ %1829, %1822 ], [ %2483, %2549 ], [ %2483, %2547 ], [ %2483, %2515 ], [ %2483, %2500 ], [ %1829, %1835 ]
  %2569 = phi float [ %2484, %2478 ], [ %1830, %2016 ], [ %1830, %1822 ], [ %2484, %2549 ], [ %2484, %2547 ], [ %2484, %2515 ], [ %2484, %2500 ], [ %1830, %1835 ]
  %2570 = phi float [ %2485, %2478 ], [ %1831, %2016 ], [ %1831, %1822 ], [ %2485, %2549 ], [ %2485, %2547 ], [ %2485, %2515 ], [ %2485, %2500 ], [ %1831, %1835 ]
  %2571 = phi float [ %1832, %2478 ], [ %1832, %2016 ], [ %1832, %1822 ], [ %2560, %2549 ], [ %1832, %2547 ], [ %2546, %2515 ], [ %2512, %2500 ], [ %1832, %1835 ]
  %2572 = phi float [ %1833, %2478 ], [ %1833, %2016 ], [ %1833, %1822 ], [ %2557, %2549 ], [ %1833, %2547 ], [ %2523, %2515 ], [ %2509, %2500 ], [ %1833, %1835 ]
  %2573 = phi float [ %2486, %2478 ], [ %1834, %2016 ], [ %1834, %1822 ], [ %2486, %2549 ], [ %2486, %2547 ], [ %2486, %2515 ], [ %2486, %2500 ], [ %1834, %1835 ]
  br i1 %485, label %3300, label %2574

; <label>:2574                                    ; preds = %2561
  %2575 = icmp ult i32 %539, 4
  %2576 = add i32 %55, 72
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = add i32 %55, 76
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = or i32 %2581, %2578
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %3300, label %2584

; <label>:2584                                    ; preds = %2574
  %2585 = and i32 %2578, 262144
  %2586 = icmp ne i32 %2585, 0
  %2587 = select i1 %2586, float %61, float 1.000000e+00
  %2588 = select i1 %2586, float %62, float 0.000000e+00
  %2589 = select i1 %2586, float %63, float 0.000000e+00
  %2590 = select i1 %2586, float %64, float 1.000000e+00
  %2591 = select i1 %2586, float %65, float %88
  %2592 = select i1 %2586, float %66, float %89
  %2593 = add i32 %55, 332
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 16
  %2597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2596)  ; LegacyF16ToF32(value)
  %2598 = fmul fast float %2597, 0x3F50624DE0000000
  %2599 = add i32 %55, 136
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = lshr i32 %2601, 16
  %2603 = and i32 %2602, 255
  %2604 = lshr i32 %2601, 24
  %2605 = add i32 %55, 340
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 65535
  %2609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2608)  ; LegacyF16ToF32(value)
  %2610 = lshr i32 %2607, 16
  %2611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2610)  ; LegacyF16ToF32(value)
  %2612 = add i32 %55, 80
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = lshr i32 %2614, 22
  %2616 = shl nuw nsw i32 %2615, 5
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = shl i32 %2614, 4
  %2619 = and i32 %2618, 32752
  %2620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2619)  ; LegacyF16ToF32(value)
  %2621 = lshr i32 %2614, 7
  %2622 = and i32 %2621, 32752
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 3
  %2626 = fmul fast float %2625, 1.000000e+03
  %2627 = fmul fast float %475, %2626
  %2628 = call float @dx.op.unary.f32(i32 22, float %2627)  ; Frc(value)
  %2629 = fadd fast float %2628, %465
  %2630 = fmul fast float %476, %2626
  %2631 = call float @dx.op.unary.f32(i32 22, float %2630)  ; Frc(value)
  %2632 = fadd fast float %2631, %467
  %2633 = fmul fast float %2598, %2626
  %2634 = call float @dx.op.unary.f32(i32 22, float %2633)  ; Frc(value)
  %2635 = fmul fast float %2634, 0x401921FB60000000
  %2636 = fadd fast float %2635, %2617
  %2637 = call float @dx.op.unary.f32(i32 13, float %2636)  ; Sin(value)
  %2638 = call float @dx.op.unary.f32(i32 12, float %2636)  ; Cos(value)
  %2639 = fsub fast float -0.000000e+00, %2637
  %2640 = fadd fast float %2591, -5.000000e-01
  %2641 = fadd fast float %2592, -5.000000e-01
  %2642 = fmul fast float %2609, %2640
  %2643 = fmul fast float %2611, %2641
  %2644 = fadd fast float %2642, 5.000000e-01
  %2645 = fadd fast float %2643, 5.000000e-01
  %2646 = fmul fast float %2620, %2644
  %2647 = fmul fast float %2623, %2645
  %2648 = fmul fast float %2638, %2646
  %2649 = call float @dx.op.tertiary.f32(i32 46, float %2639, float %2647, float %2648)  ; FMad(a,b,c)
  %2650 = fmul fast float %2637, %2646
  %2651 = call float @dx.op.tertiary.f32(i32 46, float %2638, float %2647, float %2650)  ; FMad(a,b,c)
  %2652 = fadd fast float %2629, %2649
  %2653 = fadd fast float %2632, %2651
  %2654 = icmp ugt i32 %2603, 1
  %2655 = icmp ugt i32 %2601, 33554431
  %2656 = or i1 %2655, %2654
  br i1 %2656, label %2657, label %2682

; <label>:2657                                    ; preds = %2584
  %2658 = add i32 %55, 276
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = lshr i32 %2660, 16
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = fmul fast float %2625, %2662
  %2664 = call float @dx.op.unary.f32(i32 22, float %2663)  ; Frc(value)
  %2665 = mul nuw nsw i32 %2603, %2604
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2664, %2666
  %2668 = call float @dx.op.unary.f32(i32 27, float %2667)  ; Round_ni(value)
  %2669 = fptoui float %2668 to i32
  %2670 = urem i32 %2669, %2603
  %2671 = udiv i32 %2669, %2604
  %2672 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2673 = call float @dx.op.unary.f32(i32 22, float %2653)  ; Frc(value)
  %2674 = uitofp i32 %2670 to float
  %2675 = uitofp i32 %2671 to float
  %2676 = fadd fast float %2672, %2674
  %2677 = fadd fast float %2673, %2675
  %2678 = uitofp i32 %2603 to float
  %2679 = uitofp i32 %2604 to float
  %2680 = fdiv fast float %2676, %2678
  %2681 = fdiv fast float %2677, %2679
  br label %2682

; <label>:2682                                    ; preds = %2657, %2584
  %2683 = phi float [ %2680, %2657 ], [ %2652, %2584 ]
  %2684 = phi float [ %2681, %2657 ], [ %2653, %2584 ]
  %2685 = and i32 %2578, 256
  %2686 = icmp eq i32 %2685, 0
  br i1 %2686, label %2733, label %2687

; <label>:2687                                    ; preds = %2682
  %2688 = add i32 %55, 500
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = add i32 %2690, 0
  %2692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2692, %dx.types.Handle %103, float %2683, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 0
  %2695 = add i32 %55, 148
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = shl i32 %2697, 4
  %2699 = and i32 %2698, 32752
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = lshr i32 %2697, 7
  %2702 = and i32 %2701, 32752
  %2703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2702)  ; LegacyF16ToF32(value)
  %2704 = fsub fast float 1.000000e+00, %534
  %2705 = call float @dx.op.binary.f32(i32 35, float %2704, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2706 = bitcast float %534 to i32
  %2707 = sitofp i32 %2706 to float
  %2708 = fadd fast float %2707, 0xC1CFBF8940000000
  %2709 = fmul fast float %2703, %2708
  %2710 = fadd fast float %2709, 0x41CFBF8940000000
  %2711 = fptosi float %2710 to i32
  %2712 = bitcast i32 %2711 to float
  %2713 = bitcast float %2705 to i32
  %2714 = sitofp i32 %2713 to float
  %2715 = fadd fast float %2714, 0xC1CFBF8940000000
  %2716 = fmul fast float %2715, %2703
  %2717 = fadd fast float %2716, 0x41CFBF8940000000
  %2718 = fptosi float %2717 to i32
  %2719 = bitcast i32 %2718 to float
  %2720 = fmul fast float %2712, %2700
  %2721 = fmul fast float %2719, %2700
  %2722 = fsub fast float %2705, %2720
  %2723 = fadd fast float %2721, %2705
  %2724 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2725 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2726 = fsub fast float %2694, %2724
  %2727 = fsub fast float %2725, %2724
  %2728 = bitcast float %2727 to i32
  %2729 = sub nsw i32 2129859010, %2728
  %2730 = bitcast i32 %2729 to float
  %2731 = fmul fast float %2730, %2726
  %2732 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  br label %2733

; <label>:2733                                    ; preds = %2687, %2682
  %2734 = phi float [ %2732, %2687 ], [ %534, %2682 ]
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 128
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %2755, label %2739

; <label>:2739                                    ; preds = %2733
  %2740 = add i32 %55, 484
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = add i32 %2742, 0
  %2744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2744, %dx.types.Handle %103, float %2683, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 524288
  %2750 = icmp ne i32 %2749, 0
  %2751 = fcmp fast ogt float %2746, 0x3FE0101020000000
  %2752 = select i1 %2751, float 1.000000e+00, float 0.000000e+00
  %2753 = select i1 %2750, float %2752, float %2746
  %2754 = fmul fast float %2753, %2734
  br label %2755

; <label>:2755                                    ; preds = %2739, %2733
  %2756 = phi float [ %2754, %2739 ], [ %2734, %2733 ]
  %2757 = fcmp fast ult float %2756, 0x3F70101020000000
  br i1 %2757, label %3300, label %2758

; <label>:2758                                    ; preds = %2755
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = and i32 %2760, 16
  %2762 = icmp eq i32 %2761, 0
  br i1 %2762, label %2961, label %2763

; <label>:2763                                    ; preds = %2758
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = add i32 %55, 436
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = add i32 %2768, 0
  %2770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2770, %dx.types.Handle %102, float %2683, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = extractvalue %dx.types.ResRet.f32 %2771, 3
  %2776 = and i32 %2765, 255
  %2777 = uitofp i32 %2776 to float
  %2778 = lshr i32 %2765, 8
  %2779 = and i32 %2778, 255
  %2780 = uitofp i32 %2779 to float
  %2781 = fmul fast float %2775, %2777
  %2782 = fadd fast float %2781, %2780
  %2783 = fmul fast float %2782, 0x3F70101000000000
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = and i32 %2785, 512
  %2787 = icmp eq i32 %2786, 0
  br i1 %2787, label %2796, label %2788

; <label>:2788                                    ; preds = %2763
  %2789 = add i32 %55, 520
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = add i32 %2791, 0
  %2793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2793, %dx.types.Handle %103, float %2683, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  br label %2796

; <label>:2796                                    ; preds = %2788, %2763
  %2797 = phi float [ %2795, %2788 ], [ 1.000000e+00, %2763 ]
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = and i32 %2799, 33554432
  %2801 = icmp eq i32 %2800, 0
  br i1 %2801, label %2908, label %2802

; <label>:2802                                    ; preds = %2796
  %2803 = add i32 %55, 272
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = and i32 %2805, 65535
  %2807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2806)  ; LegacyF16ToF32(value)
  %2808 = lshr i32 %2805, 16
  %2809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2808)  ; LegacyF16ToF32(value)
  %2810 = add i32 %55, 276
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = and i32 %2812, 65535
  %2814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2813)  ; LegacyF16ToF32(value)
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = lshr i32 %2816, 24
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2818, 0x3F70101020000000
  %2820 = and i32 %2816, 255
  %2821 = uitofp i32 %2820 to float
  %2822 = fmul fast float %2821, 0x3F70101020000000
  %2823 = lshr i32 %2816, 8
  %2824 = and i32 %2823, 255
  %2825 = uitofp i32 %2824 to float
  %2826 = fmul fast float %2825, 0x3F70101020000000
  %2827 = lshr i32 %2816, 16
  %2828 = and i32 %2827, 255
  %2829 = uitofp i32 %2828 to float
  %2830 = fmul fast float %2829, 0x3F70101020000000
  %2831 = add i32 %55, 268
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = lshr i32 %2833, 24
  %2835 = uitofp i32 %2834 to float
  %2836 = fmul fast float %2835, 0x3F70101020000000
  %2837 = and i32 %2833, 255
  %2838 = uitofp i32 %2837 to float
  %2839 = fmul fast float %2838, 0x3F70101020000000
  %2840 = lshr i32 %2833, 8
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = fmul fast float %2842, 0x3F70101020000000
  %2844 = lshr i32 %2833, 16
  %2845 = and i32 %2844, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = fmul fast float %2846, 0x3F70101020000000
  %2848 = bitcast float %2772 to i32
  %2849 = ashr i32 %2848, 1
  %2850 = sub nsw i32 1597463174, %2849
  %2851 = bitcast i32 %2850 to float
  %2852 = fmul fast float %2772, 5.000000e-01
  %2853 = fmul fast float %2851, %2851
  %2854 = fmul fast float %2853, %2852
  %2855 = fsub fast float 1.500000e+00, %2854
  %2856 = fmul fast float %2851, %2772
  %2857 = fmul fast float %2856, %2855
  %2858 = bitcast float %2773 to i32
  %2859 = ashr i32 %2858, 1
  %2860 = sub nsw i32 1597463174, %2859
  %2861 = bitcast i32 %2860 to float
  %2862 = fmul fast float %2773, 5.000000e-01
  %2863 = fmul fast float %2861, %2861
  %2864 = fmul fast float %2863, %2862
  %2865 = fsub fast float 1.500000e+00, %2864
  %2866 = fmul fast float %2861, %2773
  %2867 = fmul fast float %2866, %2865
  %2868 = bitcast float %2774 to i32
  %2869 = ashr i32 %2868, 1
  %2870 = sub nsw i32 1597463174, %2869
  %2871 = bitcast i32 %2870 to float
  %2872 = fmul fast float %2774, 5.000000e-01
  %2873 = fmul fast float %2871, %2871
  %2874 = fmul fast float %2873, %2872
  %2875 = fsub fast float 1.500000e+00, %2874
  %2876 = fmul fast float %2871, %2774
  %2877 = fmul fast float %2876, %2875
  %2878 = fsub fast float %2857, %2839
  %2879 = fsub fast float %2867, %2843
  %2880 = fsub fast float %2877, %2847
  %2881 = fmul fast float %2878, %2807
  %2882 = fmul fast float %2879, %2809
  %2883 = fmul fast float %2880, %2814
  %2884 = fadd fast float %2881, %2822
  %2885 = fadd fast float %2882, %2826
  %2886 = fadd fast float %2883, %2830
  %2887 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2888 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2889 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2890 = fmul fast float %2887, %2887
  %2891 = fmul fast float %2888, %2888
  %2892 = fmul fast float %2889, %2889
  %2893 = fsub fast float %2890, %2772
  %2894 = fsub fast float %2891, %2773
  %2895 = fsub fast float %2892, %2774
  %2896 = fmul fast float %2893, %2797
  %2897 = fmul fast float %2894, %2797
  %2898 = fmul fast float %2895, %2797
  %2899 = fadd fast float %2896, %2772
  %2900 = fadd fast float %2897, %2773
  %2901 = fadd fast float %2898, %2774
  %2902 = fadd fast float %2819, %2783
  %2903 = fsub fast float %2902, %2836
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2905 = fsub fast float %2904, %2783
  %2906 = fmul fast float %2905, %2797
  %2907 = fadd fast float %2906, %2783
  br label %2961

; <label>:2908                                    ; preds = %2796
  %2909 = and i32 %2799, 134217728
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %2945, label %2911

; <label>:2911                                    ; preds = %2908
  %2912 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %2913 = call float @dx.op.unary.f32(i32 24, float %456)  ; Sqrt(value)
  %2914 = call float @dx.op.unary.f32(i32 24, float %460)  ; Sqrt(value)
  %2915 = fadd fast float %2912, -5.000000e-01
  %2916 = fadd fast float %2913, -5.000000e-01
  %2917 = fadd fast float %2914, -5.000000e-01
  %2918 = fmul fast float %2915, %2797
  %2919 = fmul fast float %2916, %2797
  %2920 = fmul fast float %2917, %2797
  %2921 = fadd fast float %2918, 5.000000e-01
  %2922 = fadd fast float %2919, 5.000000e-01
  %2923 = fadd fast float %2920, 5.000000e-01
  %2924 = call float @dx.op.unary.f32(i32 24, float %2772)  ; Sqrt(value)
  %2925 = call float @dx.op.unary.f32(i32 24, float %2773)  ; Sqrt(value)
  %2926 = call float @dx.op.unary.f32(i32 24, float %2774)  ; Sqrt(value)
  %2927 = fmul fast float %2921, 2.000000e+00
  %2928 = fsub fast float 1.000000e+00, %2927
  %2929 = fmul fast float %2928, %2924
  %2930 = fadd fast float %2929, %2927
  %2931 = fmul fast float %2930, %2924
  %2932 = fmul fast float %2922, 2.000000e+00
  %2933 = fsub fast float 1.000000e+00, %2932
  %2934 = fmul fast float %2933, %2925
  %2935 = fadd fast float %2934, %2932
  %2936 = fmul fast float %2935, %2925
  %2937 = fmul fast float %2923, 2.000000e+00
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2938, %2926
  %2940 = fadd fast float %2939, %2937
  %2941 = fmul fast float %2940, %2926
  %2942 = fmul fast float %2931, %2931
  %2943 = fmul fast float %2936, %2936
  %2944 = fmul fast float %2941, %2941
  br label %2961

; <label>:2945                                    ; preds = %2908
  %2946 = fmul fast float %452, %452
  %2947 = fmul fast float %456, %456
  %2948 = fmul fast float %460, %460
  %2949 = fadd fast float %2946, -1.000000e+00
  %2950 = fadd fast float %2947, -1.000000e+00
  %2951 = fadd fast float %2948, -1.000000e+00
  %2952 = fmul fast float %2797, %2949
  %2953 = fmul fast float %2797, %2950
  %2954 = fmul fast float %2797, %2951
  %2955 = fadd fast float %2952, 1.000000e+00
  %2956 = fadd fast float %2953, 1.000000e+00
  %2957 = fadd fast float %2954, 1.000000e+00
  %2958 = fmul fast float %2955, %2772
  %2959 = fmul fast float %2956, %2773
  %2960 = fmul fast float %2957, %2774
  br label %2961

; <label>:2961                                    ; preds = %2945, %2911, %2802, %2758
  %2962 = phi float [ %2907, %2802 ], [ %2783, %2911 ], [ %2783, %2945 ], [ 0x3FA23C0BE0000000, %2758 ]
  %2963 = phi float [ %2899, %2802 ], [ %2942, %2911 ], [ %2958, %2945 ], [ 1.000000e+00, %2758 ]
  %2964 = phi float [ %2900, %2802 ], [ %2943, %2911 ], [ %2959, %2945 ], [ 1.000000e+00, %2758 ]
  %2965 = phi float [ %2901, %2802 ], [ %2944, %2911 ], [ %2960, %2945 ], [ 1.000000e+00, %2758 ]
  %2966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.i32 %2966, 1
  %2968 = and i32 %2967, 1
  %2969 = icmp ne i32 %2968, 0
  %2970 = add i32 %55, 356
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 32
  %2974 = icmp ne i32 %2973, 0
  %2975 = and i1 %2969, %2974
  %2976 = select i1 %2975, float 1.000000e+00, float %2963
  %2977 = select i1 %2975, float 0x3FD3333340000000, float %2964
  %2978 = select i1 %2975, float 0x3FD3333340000000, float %2965
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 32
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %3055, label %2983

; <label>:2983                                    ; preds = %2961
  %2984 = add i32 %55, 140
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = add i32 %55, 452
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = add i32 %2989, 0
  %2991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2991, %dx.types.Handle %102, float %2683, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = extractvalue %dx.types.ResRet.f32 %2992, 3
  %2997 = and i32 %2986, 255
  %2998 = uitofp i32 %2997 to float
  %2999 = lshr i32 %2986, 8
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = lshr i32 %2986, 16
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101000000000
  %3006 = fmul fast float %2993, %2998
  %3007 = fadd fast float %3006, %3001
  %3008 = fmul fast float %3007, 0x3F70101000000000
  %3009 = fadd fast float %2994, -5.000000e-01
  %3010 = fadd fast float %2996, -5.000000e-01
  %3011 = fmul fast float %3009, %3005
  %3012 = fmul fast float %3010, %3005
  %3013 = fadd fast float %3011, 5.000000e-01
  %3014 = fadd fast float %3012, 5.000000e-01
  %3015 = fmul fast float %3013, 2.000000e+00
  %3016 = fadd fast float %3015, -1.000000e+00
  %3017 = fmul fast float %3014, 2.000000e+00
  %3018 = fadd fast float %3017, -1.000000e+00
  %3019 = fadd fast float %3016, %3018
  %3020 = fmul fast float %3019, 5.000000e-01
  %3021 = fsub fast float %3016, %3018
  %3022 = fmul fast float %3021, 5.000000e-01
  %3023 = call float @dx.op.unary.f32(i32 6, float %3020)  ; FAbs(value)
  %3024 = fsub fast float 1.000000e+00, %3023
  %3025 = call float @dx.op.unary.f32(i32 6, float %3022)  ; FAbs(value)
  %3026 = fsub fast float %3024, %3025
  %3027 = call float @dx.op.dot3.f32(i32 55, float %3020, float %3022, float %3026, float %3020, float %3022, float %3026)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = call float @dx.op.unary.f32(i32 25, float %3027)  ; Rsqrt(value)
  %3029 = fmul fast float %3020, %3028
  %3030 = fmul fast float %3022, %3028
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = and i32 %3032, 67108864
  %3034 = icmp eq i32 %3033, 0
  br i1 %3034, label %3051, label %3035

; <label>:3035                                    ; preds = %2983
  %3036 = add i32 %55, 328
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 65535
  %3040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3039)  ; LegacyF16ToF32(value)
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, 65535
  %3044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3043)  ; LegacyF16ToF32(value)
  %3045 = lshr i32 %3038, 16
  %3046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3045)  ; LegacyF16ToF32(value)
  %3047 = fsub fast float %3008, %3046
  %3048 = fmul fast float %3047, %3040
  %3049 = fadd fast float %3048, %3044
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  br label %3051

; <label>:3051                                    ; preds = %3035, %2983
  %3052 = phi float [ %3050, %3035 ], [ %3008, %2983 ]
  %3053 = call float @dx.op.dot2.f32(i32 54, float %3029, float %3030, float %2587, float %2588)  ; Dot2(ax,ay,bx,by)
  %3054 = call float @dx.op.dot2.f32(i32 54, float %3029, float %3030, float %2589, float %2590)  ; Dot2(ax,ay,bx,by)
  br label %3055

; <label>:3055                                    ; preds = %3051, %2961
  %3056 = phi float [ %3052, %3051 ], [ 0x3FD6666660000000, %2961 ]
  %3057 = phi float [ %3053, %3051 ], [ 0.000000e+00, %2961 ]
  %3058 = phi float [ %3054, %3051 ], [ 0.000000e+00, %2961 ]
  %3059 = phi float [ %2995, %3051 ], [ 1.000000e+00, %2961 ]
  %3060 = add i32 %55, 208
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = lshr i32 %3062, 22
  %3064 = shl nuw nsw i32 %3063, 5
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 64
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3103, label %3070

; <label>:3070                                    ; preds = %3055
  %3071 = add i32 %55, 468
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 131072
  %3079 = icmp eq i32 %3078, 0
  %3080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3075, %dx.types.Handle %102, float %2683, float %2684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.ResRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.ResRet.f32 %3080, 2
  %3084 = fmul fast float %3081, %440
  %3085 = fmul fast float %3082, %443
  %3086 = fmul fast float %3083, %446
  br i1 %3079, label %3093, label %3087

; <label>:3087                                    ; preds = %3070
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 0
  %3090 = fmul fast float %3089, %3084
  %3091 = fmul fast float %3089, %3085
  %3092 = fmul fast float %3089, %3086
  br label %3093

; <label>:3093                                    ; preds = %3087, %3070
  %3094 = phi float [ %3090, %3087 ], [ %3084, %3070 ]
  %3095 = phi float [ %3091, %3087 ], [ %3085, %3070 ]
  %3096 = phi float [ %3092, %3087 ], [ %3086, %3070 ]
  %3097 = fmul fast float %3094, %3065
  %3098 = select i1 %297, float %3097, float %3094
  %3099 = call float @dx.op.dot3.f32(i32 55, float %3098, float %3095, float %3096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = select i1 %297, float 0.000000e+00, float %3094
  %3101 = select i1 %297, float %3099, float %3095
  %3102 = select i1 %297, float 0.000000e+00, float %3096
  br label %3103

; <label>:3103                                    ; preds = %3093, %3055
  %3104 = phi float [ %3100, %3093 ], [ 0.000000e+00, %3055 ]
  %3105 = phi float [ %3101, %3093 ], [ 0.000000e+00, %3055 ]
  %3106 = phi float [ %3102, %3093 ], [ 0.000000e+00, %3055 ]
  %3107 = add i32 %55, 144
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 255
  %3111 = uitofp i32 %3110 to float
  %3112 = lshr i32 %3109, 8
  %3113 = and i32 %3112, 255
  %3114 = uitofp i32 %3113 to float
  %3115 = call float @dx.op.dot3.f32(i32 55, float %2976, float %2977, float %2978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = fmul fast float %3114, %3115
  %3117 = fadd fast float %3116, %3111
  %3118 = fmul fast float %3117, 0x3F70101020000000
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  br i1 %2575, label %3120, label %3128

; <label>:3120                                    ; preds = %3103
  %3121 = fsub fast float 1.000000e+00, %2756
  %3122 = fmul fast float %3121, %2564
  %3123 = fmul fast float %3121, %2565
  %3124 = fmul fast float %3121, %2566
  %3125 = fmul fast float %3121, %2567
  %3126 = fmul fast float %3121, %2568
  %3127 = fmul fast float %3121, %2569
  br label %3128

; <label>:3128                                    ; preds = %3120, %3103
  %3129 = phi float [ %3122, %3120 ], [ %2564, %3103 ]
  %3130 = phi float [ %3123, %3120 ], [ %2565, %3103 ]
  %3131 = phi float [ %3124, %3120 ], [ %2566, %3103 ]
  %3132 = phi float [ %3125, %3120 ], [ %2567, %3103 ]
  %3133 = phi float [ %3126, %3120 ], [ %2568, %3103 ]
  %3134 = phi float [ %3127, %3120 ], [ %2569, %3103 ]
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 3
  %3138 = icmp eq i32 %3137, 3
  br i1 %3138, label %3217, label %3139

; <label>:3139                                    ; preds = %3128
  %3140 = and i32 %3136, 16
  %3141 = icmp ne i32 %3140, 0
  %3142 = select i1 %3141, float %2756, float 0.000000e+00
  %3143 = icmp eq i32 %3137, 0
  br i1 %3143, label %3144, label %3172

; <label>:3144                                    ; preds = %3139
  %3145 = and i32 %3136, 64
  %3146 = icmp ne i32 %3145, 0
  %3147 = select i1 %3146, float %2756, float 0.000000e+00
  %3148 = fsub fast float %2976, %3129
  %3149 = fsub fast float %2977, %3130
  %3150 = fsub fast float %2978, %3131
  %3151 = fmul fast float %3142, %3148
  %3152 = fmul fast float %3142, %3149
  %3153 = fmul fast float %3142, %3150
  %3154 = fadd fast float %3151, %3129
  %3155 = fadd fast float %3152, %3130
  %3156 = fadd fast float %3153, %3131
  %3157 = fsub fast float %2962, %2570
  %3158 = fmul fast float %3142, %3157
  %3159 = fadd fast float %3158, %2570
  %3160 = fsub fast float %3104, %3132
  %3161 = fsub fast float %3105, %3133
  %3162 = fsub fast float %3106, %3134
  %3163 = fmul fast float %3147, %3160
  %3164 = fmul fast float %3147, %3161
  %3165 = fmul fast float %3147, %3162
  %3166 = fadd fast float %3163, %3132
  %3167 = fadd fast float %3164, %3133
  %3168 = fadd fast float %3165, %3134
  %3169 = fsub fast float %3119, %2573
  %3170 = fmul fast float %3142, %3169
  %3171 = fadd fast float %3170, %2573
  br label %3217

; <label>:3172                                    ; preds = %3139
  %3173 = icmp eq i32 %3137, 1
  br i1 %3173, label %3174, label %3187

; <label>:3174                                    ; preds = %3172
  %3175 = fadd fast float %2976, -1.000000e+00
  %3176 = fadd fast float %2977, -1.000000e+00
  %3177 = fadd fast float %2978, -1.000000e+00
  %3178 = fmul fast float %3142, %3175
  %3179 = fmul fast float %3142, %3176
  %3180 = fmul fast float %3142, %3177
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fadd fast float %3179, 1.000000e+00
  %3183 = fadd fast float %3180, 1.000000e+00
  %3184 = fmul fast float %3181, %3129
  %3185 = fmul fast float %3182, %3130
  %3186 = fmul fast float %3183, %3131
  br label %3217

; <label>:3187                                    ; preds = %3172
  %3188 = icmp eq i32 %3137, 2
  br i1 %3188, label %3189, label %3217

; <label>:3189                                    ; preds = %3187
  %3190 = call float @dx.op.unary.f32(i32 24, float %2976)  ; Sqrt(value)
  %3191 = call float @dx.op.unary.f32(i32 24, float %2977)  ; Sqrt(value)
  %3192 = call float @dx.op.unary.f32(i32 24, float %2978)  ; Sqrt(value)
  %3193 = fadd fast float %3190, -5.000000e-01
  %3194 = fadd fast float %3191, -5.000000e-01
  %3195 = fadd fast float %3192, -5.000000e-01
  %3196 = fmul fast float %3193, %3142
  %3197 = fmul fast float %3194, %3142
  %3198 = fmul fast float %3195, %3142
  %3199 = fadd fast float %3196, 5.000000e-01
  %3200 = fadd fast float %3197, 5.000000e-01
  %3201 = fadd fast float %3198, 5.000000e-01
  %3202 = fmul fast float %3199, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3129
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3129
  %3207 = fmul fast float %3200, 2.000000e+00
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3208, %3130
  %3210 = fadd fast float %3209, %3207
  %3211 = fmul fast float %3210, %3130
  %3212 = fmul fast float %3201, 2.000000e+00
  %3213 = fsub fast float 1.000000e+00, %3212
  %3214 = fmul fast float %3213, %3131
  %3215 = fadd fast float %3214, %3212
  %3216 = fmul fast float %3215, %3131
  br label %3217

; <label>:3217                                    ; preds = %3189, %3187, %3174, %3144, %3128
  %3218 = phi float [ %3129, %3128 ], [ %3206, %3189 ], [ %3129, %3187 ], [ %3184, %3174 ], [ %3154, %3144 ]
  %3219 = phi float [ %3130, %3128 ], [ %3211, %3189 ], [ %3130, %3187 ], [ %3185, %3174 ], [ %3155, %3144 ]
  %3220 = phi float [ %3131, %3128 ], [ %3216, %3189 ], [ %3131, %3187 ], [ %3186, %3174 ], [ %3156, %3144 ]
  %3221 = phi float [ %3132, %3128 ], [ %3132, %3189 ], [ %3132, %3187 ], [ %3132, %3174 ], [ %3166, %3144 ]
  %3222 = phi float [ %3133, %3128 ], [ %3133, %3189 ], [ %3133, %3187 ], [ %3133, %3174 ], [ %3167, %3144 ]
  %3223 = phi float [ %3134, %3128 ], [ %3134, %3189 ], [ %3134, %3187 ], [ %3134, %3174 ], [ %3168, %3144 ]
  %3224 = phi float [ %2570, %3128 ], [ %2570, %3189 ], [ %2570, %3187 ], [ %2570, %3174 ], [ %3159, %3144 ]
  %3225 = phi float [ %2573, %3128 ], [ %2573, %3189 ], [ %2573, %3187 ], [ %2573, %3174 ], [ %3171, %3144 ]
  %3226 = and i32 %3136, 12
  %3227 = icmp eq i32 %3226, 12
  br i1 %3227, label %3300, label %3228

; <label>:3228                                    ; preds = %3217
  %3229 = and i32 %3136, 2097184
  %3230 = icmp eq i32 %3229, 2097184
  %3231 = select i1 %3230, float %2756, float 0.000000e+00
  %3232 = and i32 %3136, 4194336
  %3233 = icmp eq i32 %3232, 4194336
  %3234 = select i1 %3233, float %2756, float 0.000000e+00
  %3235 = and i32 %3136, 8388640
  %3236 = icmp eq i32 %3235, 8388640
  %3237 = select i1 %3236, float %2756, float 0.000000e+00
  %3238 = icmp eq i32 %3226, 0
  br i1 %3238, label %3239, label %3252

; <label>:3239                                    ; preds = %3228
  %3240 = fsub fast float %3057, %2562
  %3241 = fsub fast float %3058, %2563
  %3242 = fmul fast float %3231, %3240
  %3243 = fmul fast float %3231, %3241
  %3244 = fadd fast float %3242, %2562
  %3245 = fadd fast float %3243, %2563
  %3246 = fsub fast float %3059, %2572
  %3247 = fmul fast float %3234, %3246
  %3248 = fadd fast float %3247, %2572
  %3249 = fsub fast float %3056, %2571
  %3250 = fmul fast float %3237, %3249
  %3251 = fadd fast float %3250, %2571
  br label %3300

; <label>:3252                                    ; preds = %3228
  %3253 = icmp eq i32 %3226, 4
  br i1 %3253, label %3254, label %3286

; <label>:3254                                    ; preds = %3252
  %3255 = fmul fast float %3231, %3057
  %3256 = fmul fast float %3231, %3058
  %3257 = fadd fast float %3255, %2562
  %3258 = fadd fast float %3256, %2563
  %3259 = call float @dx.op.binary.f32(i32 36, float %2572, float %3059)  ; FMin(a,b)
  %3260 = fsub fast float %3259, %2572
  %3261 = fmul fast float %3260, %3234
  %3262 = fadd fast float %3261, %2572
  %3263 = fadd fast float %3056, %2571
  %3264 = fmul fast float %3263, 0x3FF337FAE0000000
  %3265 = fmul fast float %2571, %2571
  %3266 = fmul fast float %3056, %3056
  %3267 = fadd fast float %3266, %3265
  %3268 = fmul fast float %3267, 0x3FE5152B00000000
  %3269 = fmul fast float %2571, 0xBFCC1F85E0000000
  %3270 = fmul fast float %3269, %3056
  %3271 = fadd fast float %3270, 0xBFE1363700000000
  %3272 = fadd fast float %3271, %3264
  %3273 = fsub fast float %3272, %3268
  %3274 = fmul fast float %3263, 0x3FBA6F0D00000000
  %3275 = fmul fast float %3267, 0x3FD0432880000000
  %3276 = fmul fast float %2571, 0xBFEF110800000000
  %3277 = fmul fast float %3276, %3056
  %3278 = fadd fast float %3277, 1.000000e+00
  %3279 = fsub fast float %3278, %3274
  %3280 = fadd fast float %3279, %3275
  %3281 = fdiv fast float %3273, %3280
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = fsub fast float %3282, %2571
  %3284 = fmul fast float %3283, %3237
  %3285 = fadd fast float %3284, %2571
  br label %3300

; <label>:3286                                    ; preds = %3252
  %3287 = icmp eq i32 %3226, 8
  br i1 %3287, label %3288, label %3300

; <label>:3288                                    ; preds = %3286
  %3289 = fmul fast float %3231, %3057
  %3290 = fmul fast float %3231, %3058
  %3291 = fadd fast float %3289, %2562
  %3292 = fadd fast float %3290, %2563
  %3293 = call float @dx.op.binary.f32(i32 36, float %2572, float %3059)  ; FMin(a,b)
  %3294 = fsub fast float %3293, %2572
  %3295 = fmul fast float %3294, %3234
  %3296 = fadd fast float %3295, %2572
  %3297 = fsub fast float %3056, %2571
  %3298 = fmul fast float %3237, %3297
  %3299 = fadd fast float %3298, %2571
  br label %3300

; <label>:3300                                    ; preds = %3288, %3286, %3254, %3239, %3217, %2755, %2574, %2561
  %3301 = phi float [ %2562, %3217 ], [ %2562, %2755 ], [ %2562, %2561 ], [ %2562, %2574 ], [ %3244, %3239 ], [ %3257, %3254 ], [ %2562, %3286 ], [ %3291, %3288 ]
  %3302 = phi float [ %2563, %3217 ], [ %2563, %2755 ], [ %2563, %2561 ], [ %2563, %2574 ], [ %3245, %3239 ], [ %3258, %3254 ], [ %2563, %3286 ], [ %3292, %3288 ]
  %3303 = phi float [ %3218, %3217 ], [ %2564, %2755 ], [ %2564, %2561 ], [ %2564, %2574 ], [ %3218, %3239 ], [ %3218, %3254 ], [ %3218, %3286 ], [ %3218, %3288 ]
  %3304 = phi float [ %3219, %3217 ], [ %2565, %2755 ], [ %2565, %2561 ], [ %2565, %2574 ], [ %3219, %3239 ], [ %3219, %3254 ], [ %3219, %3286 ], [ %3219, %3288 ]
  %3305 = phi float [ %3220, %3217 ], [ %2566, %2755 ], [ %2566, %2561 ], [ %2566, %2574 ], [ %3220, %3239 ], [ %3220, %3254 ], [ %3220, %3286 ], [ %3220, %3288 ]
  %3306 = phi float [ %3221, %3217 ], [ %2567, %2755 ], [ %2567, %2561 ], [ %2567, %2574 ], [ %3221, %3239 ], [ %3221, %3254 ], [ %3221, %3286 ], [ %3221, %3288 ]
  %3307 = phi float [ %3222, %3217 ], [ %2568, %2755 ], [ %2568, %2561 ], [ %2568, %2574 ], [ %3222, %3239 ], [ %3222, %3254 ], [ %3222, %3286 ], [ %3222, %3288 ]
  %3308 = phi float [ %3223, %3217 ], [ %2569, %2755 ], [ %2569, %2561 ], [ %2569, %2574 ], [ %3223, %3239 ], [ %3223, %3254 ], [ %3223, %3286 ], [ %3223, %3288 ]
  %3309 = phi float [ %3224, %3217 ], [ %2570, %2755 ], [ %2570, %2561 ], [ %2570, %2574 ], [ %3224, %3239 ], [ %3224, %3254 ], [ %3224, %3286 ], [ %3224, %3288 ]
  %3310 = phi float [ %2571, %3217 ], [ %2571, %2755 ], [ %2571, %2561 ], [ %2571, %2574 ], [ %3251, %3239 ], [ %3285, %3254 ], [ %2571, %3286 ], [ %3299, %3288 ]
  %3311 = phi float [ %2572, %3217 ], [ %2572, %2755 ], [ %2572, %2561 ], [ %2572, %2574 ], [ %3248, %3239 ], [ %3262, %3254 ], [ %2572, %3286 ], [ %3296, %3288 ]
  %3312 = phi float [ %3225, %3217 ], [ %2573, %2755 ], [ %2573, %2561 ], [ %2573, %2574 ], [ %3225, %3239 ], [ %3225, %3254 ], [ %3225, %3286 ], [ %3225, %3288 ]
  %3313 = add i32 %55, 408
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = extractvalue %dx.types.ResRet.i32 %3314, 1
  %3317 = bitcast i32 %3315 to float
  %3318 = bitcast i32 %3316 to float
  %3319 = fcmp fast oge float %3317, 0.000000e+00
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = select i1 %3319, float %3317, float %3321
  %3323 = fadd fast float %3322, %207
  %3324 = fmul fast float %3318, %208
  %3325 = add i32 %55, 504
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = add i32 %3327, 0
  %3329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3329, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = fmul fast float %3324, %3331
  %3333 = fadd fast float %3323, %3332
  %3334 = and i32 %199, 65535
  %3335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3334)  ; LegacyF16ToF32(value)
  %3336 = lshr i32 %199, 16
  %3337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3336)  ; LegacyF16ToF32(value)
  %3338 = and i32 %200, 65535
  %3339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3338)  ; LegacyF16ToF32(value)
  %3340 = fmul fast float %3335, %3303
  %3341 = fmul fast float %3337, %3304
  %3342 = fmul fast float %3339, %3305
  %3343 = shl i32 %201, 4
  %3344 = and i32 %3343, 32752
  %3345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3344)  ; LegacyF16ToF32(value)
  %3346 = lshr i32 %201, 7
  %3347 = and i32 %3346, 32752
  %3348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3347)  ; LegacyF16ToF32(value)
  %3349 = lshr i32 %201, 22
  %3350 = shl nuw nsw i32 %3349, 5
  %3351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3350)  ; LegacyF16ToF32(value)
  %3352 = and i32 %202, 65535
  %3353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3352)  ; LegacyF16ToF32(value)
  %3354 = fmul fast float %3345, %3306
  %3355 = fmul fast float %3354, %3353
  %3356 = fmul fast float %3348, %3307
  %3357 = fmul fast float %3356, %3353
  %3358 = fmul fast float %3351, %3308
  %3359 = fmul fast float %3358, %3353
  %3360 = call float @dx.op.dot2.f32(i32 54, float %3301, float %3302, float %3301, float %3302)  ; Dot2(ax,ay,bx,by)
  %3361 = fmul fast float %3360, 0x3FE3333340000000
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3301, float %3302, float %3362, float %3301, float %3302, float %3362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = call float @dx.op.unary.f32(i32 25, float %3363)  ; Rsqrt(value)
  %3365 = fmul fast float %3364, %3301
  %3366 = fmul fast float %3364, %3302
  %3367 = fmul fast float %3362, %3364
  %3368 = fmul fast float %3367, %113
  %3369 = fmul fast float %3367, %114
  %3370 = fmul fast float %3367, %115
  %3371 = fmul fast float %3365, %81
  %3372 = fmul fast float %3365, %82
  %3373 = fmul fast float %3365, %83
  %3374 = fadd fast float %3368, %3371
  %3375 = fadd fast float %3369, %3372
  %3376 = fadd fast float %3370, %3373
  %3377 = fmul fast float %125, %3366
  %3378 = fmul fast float %126, %3366
  %3379 = fmul fast float %127, %3366
  %3380 = fadd fast float %3374, %3377
  %3381 = fadd fast float %3375, %3378
  %3382 = fadd fast float %3376, %3379
  %3383 = call float @dx.op.dot3.f32(i32 55, float %3380, float %3381, float %3382, float %3380, float %3381, float %3382)  ; Dot3(ax,ay,az,bx,by,bz)
  %3384 = call float @dx.op.unary.f32(i32 25, float %3383)  ; Rsqrt(value)
  %3385 = fmul fast float %3380, %3384
  %3386 = fmul fast float %3381, %3384
  %3387 = fmul fast float %3382, %3384
  %3388 = icmp eq i32 %57, 65535
  br i1 %3388, label %3907, label %3389

; <label>:3389                                    ; preds = %3300
  %3390 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3391 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3392 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3393 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3394 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3395 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3396 = fadd fast float %3390, %58
  %3397 = fadd fast float %3391, %59
  %3398 = fadd fast float %3392, %60
  %3399 = fadd fast float %3393, %58
  %3400 = fadd fast float %3394, %59
  %3401 = fadd fast float %3395, %60
  %3402 = mul i32 %57, 48
  %3403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = extractvalue %dx.types.ResRet.f32 %3403, 1
  %3406 = extractvalue %dx.types.ResRet.f32 %3403, 2
  %3407 = add i32 %3402, 16
  %3408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.f32 %3408, 0
  %3410 = extractvalue %dx.types.ResRet.f32 %3408, 1
  %3411 = extractvalue %dx.types.ResRet.f32 %3408, 2
  %3412 = add i32 %3402, 32
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = extractvalue %dx.types.ResRet.f32 %3413, 3
  %3418 = bitcast float %3417 to i32
  %3419 = fmul fast float %3404, %58
  %3420 = fmul fast float %3405, %59
  %3421 = fmul fast float %3406, %60
  %3422 = fsub fast float %3419, %3409
  %3423 = fsub fast float %3420, %3410
  %3424 = fsub fast float %3421, %3411
  %3425 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3426 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3427 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3428 = fmul fast float %3425, %3414
  %3429 = fmul fast float %3426, %3415
  %3430 = fmul fast float %3427, %3416
  %3431 = fadd fast float %3414, -1.000000e+00
  %3432 = fadd fast float %3415, -1.000000e+00
  %3433 = fadd fast float %3416, -1.000000e+00
  %3434 = call float @dx.op.unary.f32(i32 27, float %3428)  ; Round_ni(value)
  %3435 = call float @dx.op.unary.f32(i32 27, float %3429)  ; Round_ni(value)
  %3436 = call float @dx.op.unary.f32(i32 27, float %3430)  ; Round_ni(value)
  %3437 = call float @dx.op.binary.f32(i32 36, float %3434, float %3431)  ; FMin(a,b)
  %3438 = call float @dx.op.binary.f32(i32 36, float %3435, float %3432)  ; FMin(a,b)
  %3439 = call float @dx.op.binary.f32(i32 36, float %3436, float %3433)  ; FMin(a,b)
  %3440 = fmul fast float %3439, %3415
  %3441 = fadd fast float %3440, %3438
  %3442 = fmul fast float %3441, %3414
  %3443 = fadd fast float %3442, %3437
  %3444 = fptosi float %3443 to i32
  %3445 = add nsw i32 %3444, %3418
  %3446 = shl nsw i32 %3445, 2
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = lshr i32 %3448, 16
  %3450 = icmp eq i32 %3449, 0
  br i1 %3450, label %3875, label %3451

; <label>:3451                                    ; preds = %3389
  br label %3452

; <label>:3452                                    ; preds = %3574, %3451
  %3453 = phi i32 [ %3476, %3574 ], [ %3449, %3451 ]
  %3454 = phi float [ %3575, %3574 ], [ 0.000000e+00, %3451 ]
  %3455 = phi float [ %3576, %3574 ], [ %1092, %3451 ]
  %3456 = phi float [ %3577, %3574 ], [ %3333, %3451 ]
  %3457 = phi float [ %3578, %3574 ], [ %3312, %3451 ]
  %3458 = phi float [ %3579, %3574 ], [ 0.000000e+00, %3451 ]
  %3459 = phi float [ %3580, %3574 ], [ 0.000000e+00, %3451 ]
  %3460 = phi float [ %3581, %3574 ], [ %3355, %3451 ]
  %3461 = phi float [ %3582, %3574 ], [ %3357, %3451 ]
  %3462 = phi float [ %3583, %3574 ], [ %3359, %3451 ]
  %3463 = phi float [ %3584, %3574 ], [ %3385, %3451 ]
  %3464 = phi float [ %3585, %3574 ], [ %3386, %3451 ]
  %3465 = phi float [ %3586, %3574 ], [ %3387, %3451 ]
  %3466 = phi float [ %3587, %3574 ], [ %3311, %3451 ]
  %3467 = phi float [ %3588, %3574 ], [ %3310, %3451 ]
  %3468 = phi float [ %3589, %3574 ], [ 0.000000e+00, %3451 ]
  %3469 = phi float [ %3590, %3574 ], [ %3309, %3451 ]
  %3470 = phi float [ %3591, %3574 ], [ %3340, %3451 ]
  %3471 = phi float [ %3592, %3574 ], [ %3341, %3451 ]
  %3472 = phi float [ %3593, %3574 ], [ %3342, %3451 ]
  %3473 = shl nuw nsw i32 %3453, 2
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = lshr i32 %3475, 16
  %3477 = shl i32 %3475, 8
  %3478 = and i32 %3477, 16776960
  %3479 = or i32 %3478, 48
  %3480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = or i32 %3478, 64
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.i32 %3485, 1
  %3488 = or i32 %3478, 80
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3492 = or i32 %3478, 96
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = extractvalue %dx.types.ResRet.f32 %3493, 3
  %3498 = or i32 %3478, 112
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3501 = or i32 %3478, 128
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = extractvalue %dx.types.ResRet.f32 %3502, 3
  %3507 = or i32 %3478, 144
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = extractvalue %dx.types.ResRet.f32 %3508, 3
  %3513 = or i32 %3478, 160
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = extractvalue %dx.types.ResRet.f32 %3514, 3
  %3519 = or i32 %3478, 192
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = or i32 %3478, 208
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = or i32 %3478, 248
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.ResRet.f32 %3526, 1
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3535 = or i32 %3478, 16
  %3536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3541 = call float @dx.op.dot4.f32(i32 56, float %3537, float %3538, float %3539, float %3540, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3542 = or i32 %3478, 32
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.ResRet.f32 %3543, 3
  %3548 = call float @dx.op.dot4.f32(i32 56, float %3544, float %3545, float %3546, float %3547, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3549 = call float @dx.op.unary.f32(i32 27, float %3534)  ; Round_ni(value)
  %3550 = call float @dx.op.unary.f32(i32 6, float %3549)  ; FAbs(value)
  %3551 = call float @dx.op.unary.f32(i32 27, float %3541)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 6, float %3551)  ; FAbs(value)
  %3553 = call float @dx.op.unary.f32(i32 6, float %3548)  ; FAbs(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3555 = fadd fast float %3552, %3550
  %3556 = fadd fast float %3555, %3554
  %3557 = fcmp fast oeq float %3556, 0.000000e+00
  %3558 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %3396, float %3397, float %3398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3559 = call float @dx.op.dot4.f32(i32 56, float %3537, float %3538, float %3539, float %3540, float %3396, float %3397, float %3398, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3560 = call float @dx.op.dot4.f32(i32 56, float %3530, float %3531, float %3532, float %3533, float %3399, float %3400, float %3401, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3561 = call float @dx.op.dot4.f32(i32 56, float %3537, float %3538, float %3539, float %3540, float %3399, float %3400, float %3401, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3562 = fsub fast float %3558, %3534
  %3563 = fsub fast float %3560, %3534
  %3564 = fsub fast float %3559, %3541
  %3565 = fsub fast float %3561, %3541
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 2
  %3569 = fadd fast float %3568, %3566
  %3570 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3572 = fcmp fast ogt float %3570, %3571
  %3573 = and i1 %3557, %3572
  br i1 %3573, label %3595, label %3574

; <label>:3574                                    ; preds = %3861, %3678, %3595, %3452
  %3575 = phi float [ %3454, %3595 ], [ %3681, %3678 ], [ %3681, %3861 ], [ %3454, %3452 ]
  %3576 = phi float [ %3455, %3595 ], [ %3455, %3678 ], [ %3836, %3861 ], [ %3455, %3452 ]
  %3577 = phi float [ %3456, %3595 ], [ %3456, %3678 ], [ %3835, %3861 ], [ %3456, %3452 ]
  %3578 = phi float [ %3457, %3595 ], [ %3457, %3678 ], [ %3833, %3861 ], [ %3457, %3452 ]
  %3579 = phi float [ %3458, %3595 ], [ %3458, %3678 ], [ %3805, %3861 ], [ %3458, %3452 ]
  %3580 = phi float [ %3459, %3595 ], [ %3459, %3678 ], [ %3803, %3861 ], [ %3459, %3452 ]
  %3581 = phi float [ %3460, %3595 ], [ %3460, %3678 ], [ %3871, %3861 ], [ %3460, %3452 ]
  %3582 = phi float [ %3461, %3595 ], [ %3461, %3678 ], [ %3872, %3861 ], [ %3461, %3452 ]
  %3583 = phi float [ %3462, %3595 ], [ %3462, %3678 ], [ %3873, %3861 ], [ %3462, %3452 ]
  %3584 = phi float [ %3463, %3595 ], [ %3463, %3678 ], [ %3784, %3861 ], [ %3463, %3452 ]
  %3585 = phi float [ %3464, %3595 ], [ %3464, %3678 ], [ %3785, %3861 ], [ %3464, %3452 ]
  %3586 = phi float [ %3465, %3595 ], [ %3465, %3678 ], [ %3786, %3861 ], [ %3465, %3452 ]
  %3587 = phi float [ %3466, %3595 ], [ %3466, %3678 ], [ %3813, %3861 ], [ %3466, %3452 ]
  %3588 = phi float [ %3467, %3595 ], [ %3467, %3678 ], [ %3810, %3861 ], [ %3467, %3452 ]
  %3589 = phi float [ %3468, %3595 ], [ %3468, %3678 ], [ %3807, %3861 ], [ %3468, %3452 ]
  %3590 = phi float [ %3469, %3595 ], [ %3469, %3678 ], [ %3801, %3861 ], [ %3469, %3452 ]
  %3591 = phi float [ %3470, %3595 ], [ %3470, %3678 ], [ %3796, %3861 ], [ %3470, %3452 ]
  %3592 = phi float [ %3471, %3595 ], [ %3471, %3678 ], [ %3797, %3861 ], [ %3471, %3452 ]
  %3593 = phi float [ %3472, %3595 ], [ %3472, %3678 ], [ %3798, %3861 ], [ %3472, %3452 ]
  %3594 = icmp eq i32 %3476, 0
  br i1 %3594, label %3874, label %3452

; <label>:3595                                    ; preds = %3452
  %3596 = extractvalue %dx.types.ResRet.f32 %3480, 3
  %3597 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3598 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3602 = extractvalue %dx.types.ResRet.i32 %3485, 3
  %3603 = extractvalue %dx.types.ResRet.i32 %3485, 2
  %3604 = bitcast float %3596 to i32
  %3605 = add i32 %3602, 0
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3605, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3608 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3606, %dx.types.Handle %3607, float %3534, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %3562, float %3564, float undef, float %3563, float %3565, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = fmul fast float %3609, %3601
  %3611 = fadd fast float %3610, %3600
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3613 = fmul fast float %3534, %3494
  %3614 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3541, float %3613)  ; FMad(a,b,c)
  %3615 = fadd fast float %3614, %3599
  %3616 = fmul fast float %3534, %3496
  %3617 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3541, float %3616)  ; FMad(a,b,c)
  %3618 = fadd fast float %3617, %3598
  %3619 = fmul fast float %3562, %3494
  %3620 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3564, float %3619)  ; FMad(a,b,c)
  %3621 = fmul fast float %3562, %3496
  %3622 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3564, float %3621)  ; FMad(a,b,c)
  %3623 = fmul fast float %3563, %3494
  %3624 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3565, float %3623)  ; FMad(a,b,c)
  %3625 = fmul fast float %3563, %3496
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3565, float %3625)  ; FMad(a,b,c)
  %3627 = add i32 %3603, 0
  %3628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3627, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3628, %dx.types.Handle %3607, float %3615, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3620, float %3622, float undef, float %3624, float %3626, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = and i32 %3604, 1024
  %3632 = icmp ne i32 %3631, 0
  %3633 = fcmp fast ogt float %3630, 0x3FE0101020000000
  %3634 = uitofp i1 %3633 to float
  %3635 = select i1 %3632, float %3634, float %3630
  %3636 = and i32 %3604, 8192
  %3637 = icmp ne i32 %3636, 0
  %3638 = select i1 %3637, float %3597, float 1.000000e+00
  %3639 = fmul fast float %3534, 2.000000e+00
  %3640 = fadd fast float %3639, -1.000000e+00
  %3641 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3642 = fmul fast float %3641, %3527
  %3643 = fsub fast float %3642, %3527
  %3644 = call float @dx.op.unary.f32(i32 7, float %3643)  ; Saturate(value)
  %3645 = fmul fast float %3541, 2.000000e+00
  %3646 = fadd fast float %3645, -1.000000e+00
  %3647 = call float @dx.op.unary.f32(i32 6, float %3646)  ; FAbs(value)
  %3648 = fmul fast float %3647, %3528
  %3649 = fsub fast float %3648, %3528
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = fmul fast float %3553, %3490
  %3652 = fsub fast float %3651, %3490
  %3653 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3654 = fmul fast float %3612, %3638
  %3655 = fmul fast float %3654, %3609
  %3656 = fmul fast float %3655, %3644
  %3657 = fmul fast float %3656, %3635
  %3658 = fmul fast float %3657, %3650
  %3659 = fmul fast float %3658, %3653
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3663 = fsub fast float %3570, %3662
  %3664 = fmul fast float %3663, %3661
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = fmul fast float %3659, %3491
  %3667 = fadd fast float %3659, %3491
  %3668 = fmul fast float %3667, %3500
  %3669 = fsub fast float %3668, %3500
  %3670 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  %3671 = and i32 %3604, 128
  %3672 = icmp ne i32 %3671, 0
  %3673 = select i1 %3672, float %3670, float %3666
  %3674 = fmul fast float %3673, %3665
  %3675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3675, 0
  %3677 = fcmp fast ugt float %3674, %3676
  br i1 %3677, label %3678, label %3574

; <label>:3678                                    ; preds = %3595
  %3679 = select i1 %3637, float %3674, float 0.000000e+00
  %3680 = fadd fast float %3679, %3454
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  br i1 %3637, label %3574, label %3682

; <label>:3682                                    ; preds = %3678
  %3683 = and i32 %3604, 4
  %3684 = and i32 %3604, 8
  %3685 = add i32 %3486, 0
  %3686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3685, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3686, %dx.types.Handle %3687, float %3615, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3620, float %3622, float undef, float %3624, float %3626, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  %3692 = extractvalue %dx.types.ResRet.f32 %3688, 3
  %3693 = bitcast float %3512 to i32
  %3694 = and i32 %3693, 255
  %3695 = uitofp i32 %3694 to float
  %3696 = lshr i32 %3693, 8
  %3697 = and i32 %3696, 255
  %3698 = uitofp i32 %3697 to float
  %3699 = fmul fast float %3692, %3695
  %3700 = fadd fast float %3699, %3698
  %3701 = fmul fast float %3700, 0x3F70101000000000
  %3702 = add i32 %3487, 0
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3702, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3703, %dx.types.Handle %3687, float %3615, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3620, float %3622, float undef, float %3624, float %3626, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = extractvalue %dx.types.ResRet.f32 %3704, 3
  %3709 = bitcast float %3506 to i32
  %3710 = and i32 %3709, 255
  %3711 = uitofp i32 %3710 to float
  %3712 = lshr i32 %3709, 8
  %3713 = and i32 %3712, 255
  %3714 = uitofp i32 %3713 to float
  %3715 = lshr i32 %3709, 16
  %3716 = and i32 %3715, 255
  %3717 = uitofp i32 %3716 to float
  %3718 = fmul fast float %3717, 0x3F70101000000000
  %3719 = fmul fast float %3705, %3711
  %3720 = fadd fast float %3719, %3714
  %3721 = fmul fast float %3720, 0x3F70101000000000
  %3722 = fadd fast float %3706, -5.000000e-01
  %3723 = fadd fast float %3708, -5.000000e-01
  %3724 = fmul fast float %3722, %3718
  %3725 = fmul fast float %3723, %3718
  %3726 = fadd fast float %3724, 5.000000e-01
  %3727 = fadd fast float %3725, 5.000000e-01
  %3728 = fmul fast float %3689, %3515
  %3729 = fmul fast float %3690, %3516
  %3730 = fmul fast float %3691, %3517
  %3731 = fmul fast float %3726, 2.000000e+00
  %3732 = fadd fast float %3731, -1.000000e+00
  %3733 = fmul fast float %3727, 2.000000e+00
  %3734 = fadd fast float %3733, -1.000000e+00
  %3735 = fadd fast float %3732, %3734
  %3736 = fmul fast float %3735, 5.000000e-01
  %3737 = fsub fast float %3732, %3734
  %3738 = fmul fast float %3737, 5.000000e-01
  %3739 = call float @dx.op.unary.f32(i32 6, float %3736)  ; FAbs(value)
  %3740 = fsub fast float 1.000000e+00, %3739
  %3741 = call float @dx.op.unary.f32(i32 6, float %3738)  ; FAbs(value)
  %3742 = fsub fast float %3740, %3741
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3738, float %3742, float %3736, float %3738, float %3742)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = call float @dx.op.unary.f32(i32 25, float %3743)  ; Rsqrt(value)
  %3745 = fmul fast float %3736, %3744
  %3746 = fmul fast float %3738, %3744
  %3747 = fmul fast float %3744, %3742
  %3748 = fmul fast float %3747, %3481
  %3749 = fmul fast float %3747, %3482
  %3750 = fmul fast float %3747, %3483
  %3751 = fmul fast float %3745, %3503
  %3752 = fmul fast float %3745, %3504
  %3753 = fmul fast float %3745, %3505
  %3754 = fadd fast float %3751, %3748
  %3755 = fadd fast float %3752, %3749
  %3756 = fadd fast float %3753, %3750
  %3757 = fmul fast float %3746, %3509
  %3758 = fmul fast float %3746, %3510
  %3759 = fmul fast float %3746, %3511
  %3760 = fadd fast float %3754, %3757
  %3761 = fadd fast float %3755, %3758
  %3762 = fadd fast float %3756, %3759
  %3763 = call float @dx.op.dot3.f32(i32 55, float %3760, float %3761, float %3762, float %3760, float %3761, float %3762)  ; Dot3(ax,ay,az,bx,by,bz)
  %3764 = call float @dx.op.unary.f32(i32 25, float %3763)  ; Rsqrt(value)
  %3765 = fmul fast float %3760, %3764
  %3766 = fmul fast float %3761, %3764
  %3767 = fmul fast float %3762, %3764
  %3768 = icmp ne i32 %3684, 0
  %3769 = select i1 %3768, float 1.000000e+00, float 0.000000e+00
  %3770 = fmul fast float %3674, %3769
  %3771 = and i32 %3604, 1
  %3772 = icmp eq i32 %3771, 0
  br i1 %3772, label %3773, label %3777

; <label>:3773                                    ; preds = %3682
  %3774 = fsub fast float %3765, %3463
  %3775 = fsub fast float %3766, %3464
  %3776 = fsub fast float %3767, %3465
  br label %3777

; <label>:3777                                    ; preds = %3773, %3682
  %3778 = phi float [ %3774, %3773 ], [ %3765, %3682 ]
  %3779 = phi float [ %3775, %3773 ], [ %3766, %3682 ]
  %3780 = phi float [ %3776, %3773 ], [ %3767, %3682 ]
  %3781 = fmul float %3780, %3770
  %3782 = fmul float %3779, %3770
  %3783 = fmul float %3778, %3770
  %3784 = fadd fast float %3783, %3463
  %3785 = fadd fast float %3782, %3464
  %3786 = fadd fast float %3781, %3465
  %3787 = icmp ne i32 %3683, 0
  %3788 = select i1 %3787, float 1.000000e+00, float 0.000000e+00
  %3789 = fmul fast float %3674, %3788
  %3790 = fsub fast float %3728, %3470
  %3791 = fsub fast float %3729, %3471
  %3792 = fsub fast float %3730, %3472
  %3793 = fmul fast float %3790, %3789
  %3794 = fmul fast float %3791, %3789
  %3795 = fmul fast float %3792, %3789
  %3796 = fadd fast float %3793, %3470
  %3797 = fadd fast float %3794, %3471
  %3798 = fadd fast float %3795, %3472
  %3799 = fsub fast float %3701, %3469
  %3800 = fmul fast float %3799, %3789
  %3801 = fadd fast float %3800, %3469
  %3802 = fmul fast float %3789, %3459
  %3803 = fsub fast float %3459, %3802
  %3804 = fmul fast float %3789, %3458
  %3805 = fsub fast float %3458, %3804
  %3806 = fadd fast float %3674, %3468
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fsub fast float %3721, %3467
  %3809 = fmul fast float %3808, %3770
  %3810 = fadd fast float %3809, %3467
  %3811 = fsub fast float %3707, %3466
  %3812 = fmul fast float %3811, %3770
  %3813 = fadd fast float %3812, %3466
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3818 = fmul fast float %3817, %3814
  %3819 = fadd fast float %3818, %3816
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = bitcast float %3518 to i32
  %3822 = and i32 %3821, 65535
  %3823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3822)  ; LegacyF16ToF32(value)
  %3824 = lshr i32 %3821, 16
  %3825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3824)  ; LegacyF16ToF32(value)
  %3826 = fcmp fast oge float %3823, 0.000000e+00
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = select i1 %3826, float %3823, float %3828
  %3830 = fadd fast float %3829, %3825
  %3831 = fsub fast float %3820, %3457
  %3832 = fmul fast float %3831, %3674
  %3833 = fadd fast float %3832, %3457
  %3834 = fmul fast float %3830, %3674
  %3835 = call float @dx.op.binary.f32(i32 35, float %3456, float %3834)  ; FMax(a,b)
  %3836 = call float @dx.op.binary.f32(i32 35, float %3455, float %3674)  ; FMax(a,b)
  %3837 = and i32 %3604, 16
  %3838 = icmp eq i32 %3837, 0
  br i1 %3838, label %3861, label %3839

; <label>:3839                                    ; preds = %3777
  %3840 = bitcast float %3524 to i32
  %3841 = add i32 %3521, 0
  %3842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3841, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3843 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3842, %dx.types.Handle %3687, float %3615, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3620, float %3622, float undef, float %3624, float %3626, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = and i32 %3840, 65535
  %3848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3847)  ; LegacyF16ToF32(value)
  %3849 = fmul fast float %3844, %3515
  %3850 = fmul fast float %3845, %3516
  %3851 = fmul fast float %3846, %3517
  %3852 = and i32 %3604, 16384
  %3853 = icmp ne i32 %3852, 0
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = select i1 %3853, float %3855, float 1.000000e+00
  %3857 = fmul fast float %3856, %3848
  %3858 = fmul fast float %3849, %3857
  %3859 = fmul fast float %3850, %3857
  %3860 = fmul fast float %3851, %3857
  br label %3861

; <label>:3861                                    ; preds = %3839, %3777
  %3862 = phi float [ %3858, %3839 ], [ 0.000000e+00, %3777 ]
  %3863 = phi float [ %3859, %3839 ], [ 0.000000e+00, %3777 ]
  %3864 = phi float [ %3860, %3839 ], [ 0.000000e+00, %3777 ]
  %3865 = fsub fast float %3862, %3460
  %3866 = fsub fast float %3863, %3461
  %3867 = fsub fast float %3864, %3462
  %3868 = fmul fast float %3865, %3674
  %3869 = fmul fast float %3866, %3674
  %3870 = fmul fast float %3867, %3674
  %3871 = fadd fast float %3868, %3460
  %3872 = fadd fast float %3869, %3461
  %3873 = fadd fast float %3870, %3462
  br label %3574

; <label>:3874                                    ; preds = %3574
  br label %3875

; <label>:3875                                    ; preds = %3874, %3389
  %3876 = phi float [ 0.000000e+00, %3389 ], [ %3575, %3874 ]
  %3877 = phi float [ %1092, %3389 ], [ %3576, %3874 ]
  %3878 = phi float [ %3333, %3389 ], [ %3577, %3874 ]
  %3879 = phi float [ %3312, %3389 ], [ %3578, %3874 ]
  %3880 = phi float [ 0.000000e+00, %3389 ], [ %3579, %3874 ]
  %3881 = phi float [ 0.000000e+00, %3389 ], [ %3580, %3874 ]
  %3882 = phi float [ %3355, %3389 ], [ %3581, %3874 ]
  %3883 = phi float [ %3357, %3389 ], [ %3582, %3874 ]
  %3884 = phi float [ %3359, %3389 ], [ %3583, %3874 ]
  %3885 = phi float [ %3385, %3389 ], [ %3584, %3874 ]
  %3886 = phi float [ %3386, %3389 ], [ %3585, %3874 ]
  %3887 = phi float [ %3387, %3389 ], [ %3586, %3874 ]
  %3888 = phi float [ %3311, %3389 ], [ %3587, %3874 ]
  %3889 = phi float [ %3310, %3389 ], [ %3588, %3874 ]
  %3890 = phi float [ 0.000000e+00, %3389 ], [ %3589, %3874 ]
  %3891 = phi float [ %3309, %3389 ], [ %3590, %3874 ]
  %3892 = phi float [ %3340, %3389 ], [ %3591, %3874 ]
  %3893 = phi float [ %3341, %3389 ], [ %3592, %3874 ]
  %3894 = phi float [ %3342, %3389 ], [ %3593, %3874 ]
  %3895 = call float @dx.op.dot3.f32(i32 55, float %3885, float %3886, float %3887, float %3885, float %3886, float %3887)  ; Dot3(ax,ay,az,bx,by,bz)
  %3896 = call float @dx.op.unary.f32(i32 25, float %3895)  ; Rsqrt(value)
  %3897 = fmul fast float %3896, %3885
  %3898 = fmul fast float %3896, %3886
  %3899 = fmul fast float %3896, %3887
  %3900 = fadd fast float %3890, %1092
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3897, float %3898, float %3899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3903 = call float @dx.op.unary.f32(i32 25, float %3902)  ; Rsqrt(value)
  %3904 = fmul fast float %3903, %3897
  %3905 = fmul fast float %3903, %3898
  %3906 = fmul fast float %3903, %3899
  br label %3907

; <label>:3907                                    ; preds = %3875, %3300
  %3908 = phi float [ %3892, %3875 ], [ %3340, %3300 ]
  %3909 = phi float [ %3893, %3875 ], [ %3341, %3300 ]
  %3910 = phi float [ %3894, %3875 ], [ %3342, %3300 ]
  %3911 = phi float [ %3904, %3875 ], [ %3385, %3300 ]
  %3912 = phi float [ %3905, %3875 ], [ %3386, %3300 ]
  %3913 = phi float [ %3906, %3875 ], [ %3387, %3300 ]
  %3914 = phi float [ %3882, %3875 ], [ %3355, %3300 ]
  %3915 = phi float [ %3883, %3875 ], [ %3357, %3300 ]
  %3916 = phi float [ %3884, %3875 ], [ %3359, %3300 ]
  %3917 = phi float [ %3891, %3875 ], [ %3309, %3300 ]
  %3918 = phi float [ %3901, %3875 ], [ %1092, %3300 ]
  %3919 = phi float [ %3889, %3875 ], [ %3310, %3300 ]
  %3920 = phi float [ %3888, %3875 ], [ %3311, %3300 ]
  %3921 = phi float [ %3881, %3875 ], [ 0.000000e+00, %3300 ]
  %3922 = phi float [ %3880, %3875 ], [ 0.000000e+00, %3300 ]
  %3923 = phi float [ %3876, %3875 ], [ 0.000000e+00, %3300 ]
  %3924 = phi float [ %3878, %3875 ], [ %3333, %3300 ]
  %3925 = phi float [ %3877, %3875 ], [ %1092, %3300 ]
  %3926 = phi float [ %3879, %3875 ], [ %3312, %3300 ]
  %3927 = add i32 %55, 392
  %3928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.i32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.i32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.i32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.i32 %3928, 3
  %3933 = bitcast i32 %3929 to float
  %3934 = bitcast i32 %3930 to float
  %3935 = bitcast i32 %3931 to float
  %3936 = bitcast i32 %3932 to float
  %3937 = fsub fast float %3908, %3933
  %3938 = fsub fast float %3909, %3934
  %3939 = fsub fast float %3910, %3935
  %3940 = fmul fast float %3937, %240
  %3941 = fmul fast float %3938, %240
  %3942 = fmul fast float %3939, %240
  %3943 = fadd fast float %3940, %3933
  %3944 = fadd fast float %3941, %3934
  %3945 = fadd fast float %3942, %3935
  %3946 = fsub fast float %3918, %3936
  %3947 = fmul fast float %3946, %240
  %3948 = fadd fast float %3947, %3936
  %3949 = fadd fast float %3917, 0xBFB99999A0000000
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fmul fast float %3950, 0x3FF1C71C80000000
  %3952 = call float @dx.op.binary.f32(i32 36, float %3917, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3953 = fsub fast float 1.000000e+00, %3951
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3955 = fmul fast float %3943, %3954
  %3956 = fmul fast float %3944, %3954
  %3957 = fmul fast float %3945, %3954
  %3958 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3959 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3961 = fmul fast float %3943, %3951
  %3962 = fmul fast float %3944, %3951
  %3963 = fmul fast float %3945, %3951
  %3964 = fadd fast float %3961, %3952
  %3965 = fadd fast float %3962, %3952
  %3966 = fadd fast float %3963, %3952
  %3967 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3968 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3969 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3970 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.i32 %3971, 3
  %3973 = and i32 %3972, 8
  %3974 = icmp ne i32 %3973, 0
  %3975 = call float @dx.op.binary.f32(i32 35, float %3958, float %3943)  ; FMax(a,b)
  %3976 = call float @dx.op.binary.f32(i32 35, float %3959, float %3943)  ; FMax(a,b)
  %3977 = call float @dx.op.binary.f32(i32 35, float %3960, float %3943)  ; FMax(a,b)
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3958, float %3959, float %3960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = select i1 %297, float %3943, float %3958
  %3980 = select i1 %297, float %3978, float %3959
  %3981 = select i1 %297, float 1.000000e+00, float %3960
  %3982 = select i1 %3974, float %3975, float %3979
  %3983 = select i1 %3974, float %3976, float %3980
  %3984 = select i1 %3974, float %3977, float %3981
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %3989 = fadd fast float %3986, %193
  %3990 = fadd fast float %3987, %194
  %3991 = fadd fast float %3988, %195
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.CBufRet.f32 %3992, 1
  %3995 = fsub fast float %3989, %3993
  %3996 = fsub fast float %3990, %3994
  %3997 = fmul fast float %3995, %3995
  %3998 = fmul fast float %3996, %3996
  %3999 = fadd fast float %3997, %3998
  %4000 = call float @dx.op.unary.f32(i32 24, float %3999)  ; Sqrt(value)
  %4001 = extractvalue %dx.types.CBufRet.f32 %3992, 2
  %4002 = fcmp fast olt float %4000, %4001
  br i1 %4002, label %4003, label %4070

; <label>:4003                                    ; preds = %3907
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4014 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4015 = extractvalue %dx.types.CBufRet.f32 %4008, 3
  %4016 = fadd fast float %4013, %3989
  %4017 = fadd fast float %4014, %3990
  %4018 = fadd fast float %4015, %3991
  %4019 = fmul fast float %4016, %4005
  %4020 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4007, float %4019)  ; FMad(a,b,c)
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4009, float %4020)  ; FMad(a,b,c)
  %4022 = fmul fast float %4016, %4010
  %4023 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4011, float %4022)  ; FMad(a,b,c)
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4012, float %4023)  ; FMad(a,b,c)
  %4025 = fsub fast float %4021, %4013
  %4026 = fsub fast float %4024, %4014
  %4027 = fsub fast float %4025, %3993
  %4028 = fadd fast float %4027, %4001
  %4029 = fsub fast float %4026, %3994
  %4030 = fadd fast float %4029, %4001
  %4031 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %4032 = fmul fast float %4028, %4031
  %4033 = fmul fast float %4030, %4031
  %4034 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4036 = fsub fast float 1.000000e+00, %4034
  %4037 = fsub fast float 1.000000e+00, %4035
  %4038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = fcmp fast ugt float %4039, 0.000000e+00
  br i1 %4040, label %4041, label %4344

; <label>:4041                                    ; preds = %4003
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4044 = fmul fast float %4043, %4039
  %4045 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4046 = fadd fast float %4045, %4044
  %4047 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4048 = fadd fast float %4046, %4015
  %4049 = fmul fast float %4021, %4009
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4012, float %4049)  ; FMad(a,b,c)
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4047, float %4050)  ; FMad(a,b,c)
  %4052 = fsub fast float %4051, %4015
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4055 = fsub fast float %4052, %4054
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = fadd fast float %4061, %4057
  %4065 = fmul fast float %4064, 0x3F847AE140000000
  %4066 = fadd fast float %4062, %4058
  %4067 = fmul fast float %4066, 0x3F847AE140000000
  %4068 = fadd fast float %4063, %4059
  %4069 = fmul fast float %4068, 0x3F847AE140000000
  br label %4344

; <label>:4070                                    ; preds = %3907
  %4071 = and i32 %276, 1
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4344, label %4073

; <label>:4073                                    ; preds = %4070
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4083 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4084 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4085 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4086 = fadd fast float %4083, %3989
  %4087 = fadd fast float %4084, %3990
  %4088 = fadd fast float %4085, %3991
  %4089 = fmul fast float %4086, %4075
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4077, float %4089)  ; FMad(a,b,c)
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4079, float %4090)  ; FMad(a,b,c)
  %4092 = fmul fast float %4086, %4080
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4081, float %4092)  ; FMad(a,b,c)
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4082, float %4093)  ; FMad(a,b,c)
  %4095 = fsub fast float %4091, %4083
  %4096 = fsub fast float %4094, %4084
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.i32 %4104, 0
  %4106 = extractvalue %dx.types.CBufRet.i32 %4104, 1
  %4107 = udiv i32 %4106, %4105
  %4108 = fsub fast float %4095, %4098
  %4109 = fsub fast float %4096, %4099
  %4110 = call float @dx.op.binary.f32(i32 35, float %4108, float 0.000000e+00)  ; FMax(a,b)
  %4111 = call float @dx.op.binary.f32(i32 35, float %4109, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call float @dx.op.binary.f32(i32 36, float %4110, float %4100)  ; FMin(a,b)
  %4113 = call float @dx.op.binary.f32(i32 36, float %4111, float %4101)  ; FMin(a,b)
  %4114 = add i32 %4105, -1
  %4115 = add i32 %4107, -1
  %4116 = fmul fast float %4112, %4103
  %4117 = fmul fast float %4113, %4103
  %4118 = fptoui float %4116 to i32
  %4119 = fptoui float %4117 to i32
  %4120 = call i32 @dx.op.binary.i32(i32 40, i32 %4118, i32 %4114)  ; UMin(a,b)
  %4121 = call i32 @dx.op.binary.i32(i32 40, i32 %4119, i32 %4115)  ; UMin(a,b)
  %4122 = mul i32 %4121, %4105
  %4123 = add i32 %4122, %4120
  %4124 = shl i32 %4123, 2
  %4125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.i32 %4125, 0
  %4127 = icmp eq i32 %4126, -1
  br i1 %4127, label %4344, label %4128

; <label>:4128                                    ; preds = %4073
  %4129 = mul i32 %4126, 148
  %4130 = add i32 %4129, 4
  %4131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = add i32 %4129, 8
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = add i32 %4129, 36
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = add i32 %4129, 60
  %4140 = add i32 %4129, 92
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = add i32 %4129, 116
  %4144 = fsub fast float %4095, %4132
  %4145 = fsub fast float %4096, %4135
  %4146 = fmul fast float %4103, %4144
  %4147 = fmul fast float %4103, %4145
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4150 = fsub fast float 1.000000e+00, %4149
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4153 = call float @dx.op.unary.f32(i32 83, float %4148)  ; DerivCoarseX(value)
  %4154 = call float @dx.op.unary.f32(i32 83, float %4150)  ; DerivCoarseX(value)
  %4155 = call float @dx.op.unary.f32(i32 84, float %4148)  ; DerivCoarseY(value)
  %4156 = call float @dx.op.unary.f32(i32 84, float %4150)  ; DerivCoarseY(value)
  %4157 = fmul fast float %4153, %4152
  %4158 = fmul fast float %4154, %4152
  %4159 = fmul fast float %4155, %4152
  %4160 = fmul fast float %4156, %4152
  %4161 = call float @dx.op.dot2.f32(i32 54, float %4159, float %4160, float %4159, float %4160)  ; Dot2(ax,ay,bx,by)
  %4162 = call float @dx.op.dot2.f32(i32 54, float %4157, float %4158, float %4157, float %4158)  ; Dot2(ax,ay,bx,by)
  %4163 = call float @dx.op.binary.f32(i32 35, float %4162, float %4161)  ; FMax(a,b)
  %4164 = call float @dx.op.unary.f32(i32 23, float %4163)  ; Log(value)
  %4165 = fmul fast float %4164, 5.000000e-01
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4168 = fadd fast float %4167, %4165
  %4169 = call float @dx.op.binary.f32(i32 35, float %4168, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4172 = fadd fast float %4171, %4169
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = fadd fast float %4172, %4174
  %4176 = add i32 %4142, 0
  %4177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4177, i32 0)  ; GetDimensions(handle,mipLevel)
  %4179 = extractvalue %dx.types.Dimensions %4178, 0
  %4180 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4179)  ; FirstbitLo(value)
  %4181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.i32 %4181, 1
  %4183 = sub nsw i32 %4182, %4180
  %4184 = sitofp i32 %4183 to float
  %4185 = fsub fast float %4175, %4184
  %4186 = call float @dx.op.binary.f32(i32 35, float %4185, float 0.000000e+00)  ; FMax(a,b)
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4177, %dx.types.Handle %47, float %4148, float %4150, float %4138, float undef, i32 0, i32 0, i32 undef, float %4186)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = fcmp ule float %4188, 0x3FE0101020000000
  %4190 = extractvalue %dx.types.CBufRet.i32 %4181, 0
  %4191 = and i32 %4190, 128
  %4192 = icmp ne i32 %4191, 0
  %4193 = and i1 %4189, %4192
  br i1 %4193, label %4344, label %4194

; <label>:4194                                    ; preds = %4128
  %4195 = add i32 %4129, 20
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = add i32 %4129, 24
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = add i32 %4129, 40
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = add i32 %4129, 96
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4209 = fmul fast float %4208, %4148
  %4210 = fmul fast float %4208, %4150
  %4211 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4212 = fadd fast float %4209, %4211
  %4213 = fadd fast float %4210, %4211
  %4214 = add i32 %4206, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4215, i32 0)  ; GetDimensions(handle,mipLevel)
  %4217 = extractvalue %dx.types.Dimensions %4216, 0
  %4218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4217)  ; FirstbitLo(value)
  %4219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.i32 %4219, 1
  %4221 = sub nsw i32 %4220, %4218
  %4222 = sitofp i32 %4221 to float
  %4223 = fsub fast float %4172, %4222
  %4224 = call float @dx.op.binary.f32(i32 35, float %4223, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4215, %dx.types.Handle %47, float %4212, float %4213, float %4203, float undef, i32 0, i32 0, i32 undef, float %4224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = fmul fast float %4226, %4197
  %4228 = fadd fast float %4227, %4200
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4237 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4238 = fadd fast float %4234, %4095
  %4239 = fadd fast float %4236, %4096
  %4240 = fadd fast float %4228, %4237
  %4241 = fmul fast float %4238, %4230
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4231, float %4241)  ; FMad(a,b,c)
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4240, float %4232, float %4242)  ; FMad(a,b,c)
  %4244 = fsub fast float %4243, %4237
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4247 = fsub fast float %4244, %4246
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 0
  %4250 = call i32 @dx.op.binary.i32(i32 40, i32 %4126, i32 %4249)  ; UMin(a,b)
  %4251 = mul i32 %4250, 36
  %4252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.i32 %4252, 0
  %4254 = add i32 %4251, 4
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = fmul fast float %4256, %4148
  %4258 = fmul fast float %4256, %4150
  %4259 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4260 = fadd fast float %4257, %4259
  %4261 = fadd fast float %4258, %4259
  %4262 = icmp eq i32 %4253, 0
  br i1 %4262, label %4331, label %4263

; <label>:4263                                    ; preds = %4194
  br label %4264

; <label>:4264                                    ; preds = %4321, %4263
  %4265 = phi float [ %4322, %4321 ], [ 0.000000e+00, %4263 ]
  %4266 = phi float [ %4323, %4321 ], [ 0.000000e+00, %4263 ]
  %4267 = phi float [ %4324, %4321 ], [ 0.000000e+00, %4263 ]
  %4268 = phi float [ %4325, %4321 ], [ 0.000000e+00, %4263 ]
  %4269 = phi float [ %4326, %4321 ], [ 0.000000e+00, %4263 ]
  %4270 = phi float [ %4327, %4321 ], [ 0.000000e+00, %4263 ]
  %4271 = phi i32 [ %4328, %4321 ], [ 0, %4263 ]
  %4272 = shl i32 %4271, 2
  %4273 = add i32 %4139, %4272
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4143, %4272
  %4277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.i32 %4277, 0
  %4279 = add i32 %4278, 0
  %4280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4281 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4280, i32 0)  ; GetDimensions(handle,mipLevel)
  %4282 = extractvalue %dx.types.Dimensions %4281, 0
  %4283 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4282)  ; FirstbitLo(value)
  %4284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.i32 %4284, 1
  %4286 = sub nsw i32 %4285, %4283
  %4287 = sitofp i32 %4286 to float
  %4288 = fsub fast float %4172, %4287
  %4289 = call float @dx.op.binary.f32(i32 35, float %4288, float 0.000000e+00)  ; FMax(a,b)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4280, %dx.types.Handle %47, float %4260, float %4261, float %4275, float undef, i32 0, i32 0, i32 undef, float %4289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = fcmp fast ogt float %4291, 0.000000e+00
  br i1 %4292, label %4293, label %4321

; <label>:4293                                    ; preds = %4264
  %4294 = add i32 %4254, %4272
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4294, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = and i32 %4296, 32767
  %4298 = mul nuw nsw i32 %4297, 928
  %4299 = add nuw nsw i32 %4298, 48
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = add nuw nsw i32 %4298, 60
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = fmul fast float %4301, %4291
  %4310 = fmul fast float %4302, %4291
  %4311 = fmul fast float %4303, %4291
  %4312 = fadd fast float %4309, %4265
  %4313 = fadd fast float %4310, %4266
  %4314 = fadd fast float %4311, %4267
  %4315 = fmul fast float %4306, %4291
  %4316 = fmul fast float %4307, %4291
  %4317 = fmul fast float %4308, %4291
  %4318 = fadd fast float %4315, %4268
  %4319 = fadd fast float %4316, %4269
  %4320 = fadd fast float %4317, %4270
  br label %4321

; <label>:4321                                    ; preds = %4293, %4264
  %4322 = phi float [ %4312, %4293 ], [ %4265, %4264 ]
  %4323 = phi float [ %4313, %4293 ], [ %4266, %4264 ]
  %4324 = phi float [ %4314, %4293 ], [ %4267, %4264 ]
  %4325 = phi float [ %4318, %4293 ], [ %4268, %4264 ]
  %4326 = phi float [ %4319, %4293 ], [ %4269, %4264 ]
  %4327 = phi float [ %4320, %4293 ], [ %4270, %4264 ]
  %4328 = add nuw i32 %4271, 1
  %4329 = icmp eq i32 %4328, %4253
  br i1 %4329, label %4330, label %4264

; <label>:4330                                    ; preds = %4321
  br label %4331

; <label>:4331                                    ; preds = %4330, %4194
  %4332 = phi float [ 0.000000e+00, %4194 ], [ %4322, %4330 ]
  %4333 = phi float [ 0.000000e+00, %4194 ], [ %4323, %4330 ]
  %4334 = phi float [ 0.000000e+00, %4194 ], [ %4324, %4330 ]
  %4335 = phi float [ 0.000000e+00, %4194 ], [ %4325, %4330 ]
  %4336 = phi float [ 0.000000e+00, %4194 ], [ %4326, %4330 ]
  %4337 = phi float [ 0.000000e+00, %4194 ], [ %4327, %4330 ]
  %4338 = fadd fast float %4335, %4332
  %4339 = fmul fast float %4338, 0x3F847AE140000000
  %4340 = fadd fast float %4336, %4333
  %4341 = fmul fast float %4340, 0x3F847AE140000000
  %4342 = fadd fast float %4337, %4334
  %4343 = fmul fast float %4342, 0x3F847AE140000000
  br label %4344

; <label>:4344                                    ; preds = %4331, %4128, %4073, %4070, %4041, %4003
  %4345 = phi float [ %4055, %4041 ], [ -1.310720e+05, %4003 ], [ %4247, %4331 ], [ -1.310720e+05, %4073 ], [ -1.310720e+05, %4128 ], [ -1.310720e+05, %4070 ]
  %4346 = phi float [ %4065, %4041 ], [ 0.000000e+00, %4003 ], [ %4339, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4347 = phi float [ %4067, %4041 ], [ 0.000000e+00, %4003 ], [ %4341, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4348 = phi float [ %4069, %4041 ], [ 0.000000e+00, %4003 ], [ %4343, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4349 = phi i1 [ true, %4041 ], [ false, %4003 ], [ true, %4331 ], [ false, %4073 ], [ false, %4128 ], [ false, %4070 ]
  %4350 = and i32 %276, 3
  %4351 = icmp eq i32 %4350, 1
  %4352 = select i1 %4351, float 1.000000e+00, float 0.000000e+00
  %4353 = fsub fast float %4345, %195
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = select i1 %4349, float %4354, float 1.000000e+00
  %4356 = fmul fast float %4355, %4352
  %4357 = icmp eq i32 %4350, 3
  %4358 = select i1 %4357, float 1.000000e+00, float %4356
  %4359 = call float @dx.op.binary.f32(i32 35, float %3923, float %4358)  ; FMax(a,b)
  %4360 = fcmp fast olt float %4358, 1.000000e+00
  %4361 = fcmp uge float %71, 0.000000e+00
  %4362 = and i1 %4361, %4360
  br i1 %4362, label %4363, label %4373

; <label>:4363                                    ; preds = %4344
  %4364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.ResRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.ResRet.f32 %4364, 2
  %4368 = fadd fast float %4365, %4359
  %4369 = fcmp ule float %70, 0.000000e+00
  %4370 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4371 = select i1 %4369, float %4370, float 1.000000e+00
  %4372 = fmul fast float %4371, %4367
  br label %4373

; <label>:4373                                    ; preds = %4363, %4344
  %4374 = phi float [ %4368, %4363 ], [ %4359, %4344 ]
  %4375 = phi float [ %4366, %4363 ], [ 0.000000e+00, %4344 ]
  %4376 = phi float [ %4372, %4363 ], [ 0.000000e+00, %4344 ]
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4379 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4380 = fcmp fast une float %4378, 0.000000e+00
  %4381 = fcmp fast une float %4379, 0.000000e+00
  %4382 = or i1 %4380, %4381
  br i1 %4382, label %4383, label %4942

; <label>:4383                                    ; preds = %4373
  br i1 %4380, label %4384, label %4657

; <label>:4384                                    ; preds = %4383
  %4385 = call float @dx.op.unary.f32(i32 23, float %3920)  ; Log(value)
  %4386 = fmul fast float %4385, 4.000000e+00
  %4387 = call float @dx.op.unary.f32(i32 21, float %4386)  ; Exp(value)
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = fmul fast float %4389, %58
  %4391 = fmul fast float %4389, %59
  %4392 = fmul fast float %4389, %60
  %4393 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4394 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4395 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4396 = call float @dx.op.unary.f32(i32 23, float %4393)  ; Log(value)
  %4397 = call float @dx.op.unary.f32(i32 23, float %4394)  ; Log(value)
  %4398 = call float @dx.op.unary.f32(i32 23, float %4395)  ; Log(value)
  %4399 = fmul fast float %4396, 4.000000e+00
  %4400 = fmul fast float %4397, 4.000000e+00
  %4401 = fmul fast float %4398, 4.000000e+00
  %4402 = call float @dx.op.unary.f32(i32 21, float %4399)  ; Exp(value)
  %4403 = call float @dx.op.unary.f32(i32 21, float %4400)  ; Exp(value)
  %4404 = call float @dx.op.unary.f32(i32 21, float %4401)  ; Exp(value)
  %4405 = fadd fast float %4403, %4402
  %4406 = fadd fast float %4405, %4404
  %4407 = fdiv fast float 1.000000e+00, %4406
  %4408 = fmul fast float %4407, %4402
  %4409 = fcmp fast ogt float %67, 0.000000e+00
  %4410 = fcmp fast ogt float %68, 0.000000e+00
  %4411 = fcmp fast ogt float %69, 0.000000e+00
  %4412 = fcmp fast olt float %67, 0.000000e+00
  %4413 = fcmp fast olt float %68, 0.000000e+00
  %4414 = fcmp fast olt float %69, 0.000000e+00
  %4415 = zext i1 %4409 to i32
  %4416 = zext i1 %4410 to i32
  %4417 = zext i1 %4411 to i32
  %4418 = zext i1 %4412 to i32
  %4419 = zext i1 %4413 to i32
  %4420 = zext i1 %4414 to i32
  %4421 = sub nsw i32 %4415, %4418
  %4422 = sub nsw i32 %4416, %4419
  %4423 = sub nsw i32 %4417, %4420
  %4424 = call float @dx.op.unary.f32(i32 83, float %4390)  ; DerivCoarseX(value)
  %4425 = call float @dx.op.unary.f32(i32 83, float %4391)  ; DerivCoarseX(value)
  %4426 = call float @dx.op.unary.f32(i32 83, float %4392)  ; DerivCoarseX(value)
  %4427 = call float @dx.op.unary.f32(i32 84, float %4390)  ; DerivCoarseY(value)
  %4428 = call float @dx.op.unary.f32(i32 84, float %4391)  ; DerivCoarseY(value)
  %4429 = call float @dx.op.unary.f32(i32 84, float %4392)  ; DerivCoarseY(value)
  %4430 = fcmp fast ole float %308, %4408
  %4431 = fmul fast float %4407, %4405
  %4432 = fcmp fast ole float %308, %4431
  %4433 = select i1 %4432, float %4392, float %4390
  %4434 = select i1 %4432, float %4390, float %4391
  %4435 = select i1 %4430, float %4391, float %4433
  %4436 = select i1 %4430, float %4392, float %4434
  %4437 = select i1 %4432, float %4426, float %4424
  %4438 = select i1 %4432, float %4424, float %4425
  %4439 = select i1 %4430, float %4425, float %4437
  %4440 = select i1 %4430, float %4426, float %4438
  %4441 = select i1 %4432, float %4429, float %4427
  %4442 = select i1 %4432, float %4427, float %4428
  %4443 = select i1 %4430, float %4428, float %4441
  %4444 = select i1 %4430, float %4429, float %4442
  %4445 = call float @dx.op.unary.f32(i32 27, float %4435)  ; Round_ni(value)
  %4446 = call float @dx.op.unary.f32(i32 27, float %4436)  ; Round_ni(value)
  %4447 = fptosi float %4445 to i32
  %4448 = fptosi float %4446 to i32
  %4449 = xor i32 %4448, %4447
  %4450 = sitofp i32 %4449 to float
  %4451 = fptosi float %4450 to i32
  %4452 = sitofp i32 %4451 to float
  %4453 = fmul fast float %4452, 0x3FE3C6EF40000000
  %4454 = frem fast float %4445, 2.560000e+02
  %4455 = frem fast float %4446, 2.560000e+02
  %4456 = fptoui float %4454 to i32
  %4457 = fptoui float %4455 to i32
  %4458 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4456, i32 %4457, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = fadd fast float %4459, %4453
  %4463 = fadd fast float %4460, %4453
  %4464 = fadd fast float %4461, %4453
  %4465 = call float @dx.op.unary.f32(i32 22, float %4462)  ; Frc(value)
  %4466 = call float @dx.op.unary.f32(i32 22, float %4463)  ; Frc(value)
  %4467 = call float @dx.op.unary.f32(i32 22, float %4464)  ; Frc(value)
  %4468 = fmul fast float %4467, 0x401921FB60000000
  %4469 = call float @dx.op.unary.f32(i32 13, float %4468)  ; Sin(value)
  %4470 = call float @dx.op.unary.f32(i32 12, float %4468)  ; Cos(value)
  %4471 = fsub fast float -0.000000e+00, %4470
  %4472 = fmul fast float %4470, %4435
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4469, float %4436, float %4472)  ; FMad(a,b,c)
  %4474 = fmul fast float %4469, %4435
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4436, float %4474)  ; FMad(a,b,c)
  %4476 = fadd fast float %4473, %4465
  %4477 = fadd fast float %4475, %4466
  %4478 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4479 = bitcast float %4478 to i32
  %4480 = icmp eq i32 %4479, 0
  br i1 %4480, label %4519, label %4481

; <label>:4481                                    ; preds = %4384
  %4482 = add i32 %4479, 0
  %4483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4483, %dx.types.Handle %103, float %4476, float %4477, float undef, float undef, i32 0, i32 0, i32 undef, float %4439, float %4440, float undef, float %4443, float %4444, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 1
  %4488 = extractvalue %dx.types.CBufRet.f32 %4486, 2
  %4489 = fsub fast float 1.000000e+00, %4378
  %4490 = call float @dx.op.binary.f32(i32 35, float %4489, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4491 = bitcast float %4378 to i32
  %4492 = sitofp i32 %4491 to float
  %4493 = fadd fast float %4492, 0xC1CFBF8940000000
  %4494 = fmul fast float %4488, %4493
  %4495 = fadd fast float %4494, 0x41CFBF8940000000
  %4496 = fptosi float %4495 to i32
  %4497 = bitcast i32 %4496 to float
  %4498 = bitcast float %4490 to i32
  %4499 = sitofp i32 %4498 to float
  %4500 = fadd fast float %4499, 0xC1CFBF8940000000
  %4501 = fmul fast float %4500, %4488
  %4502 = fadd fast float %4501, 0x41CFBF8940000000
  %4503 = fptosi float %4502 to i32
  %4504 = bitcast i32 %4503 to float
  %4505 = fmul fast float %4497, %4487
  %4506 = fmul fast float %4504, %4487
  %4507 = fsub fast float %4490, %4505
  %4508 = fadd fast float %4506, %4490
  %4509 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4511 = fsub fast float %4485, %4509
  %4512 = fsub fast float %4510, %4509
  %4513 = bitcast float %4512 to i32
  %4514 = sub nsw i32 2129859010, %4513
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4515, %4511
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fcmp fast olt float %4517, 0x3F70101020000000
  br i1 %4518, label %4657, label %4519

; <label>:4519                                    ; preds = %4481, %4384
  %4520 = phi float [ %4517, %4481 ], [ %4378, %4384 ]
  %4521 = fmul fast float %4520, %4387
  %4522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.i32 %4522, 1
  %4524 = extractvalue %dx.types.CBufRet.i32 %4522, 0
  %4525 = add i32 %4524, 0
  %4526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4526, %dx.types.Handle %102, float %4476, float %4477, float undef, float undef, i32 0, i32 0, i32 undef, float %4439, float %4440, float undef, float %4443, float %4444, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.ResRet.f32 %4527, 1
  %4530 = extractvalue %dx.types.ResRet.f32 %4527, 2
  %4531 = extractvalue %dx.types.ResRet.f32 %4527, 3
  %4532 = and i32 %4523, 255
  %4533 = uitofp i32 %4532 to float
  %4534 = lshr i32 %4523, 8
  %4535 = and i32 %4534, 255
  %4536 = uitofp i32 %4535 to float
  %4537 = fmul fast float %4531, %4533
  %4538 = fadd fast float %4537, %4536
  %4539 = fmul fast float %4538, 0x3F70101000000000
  %4540 = fadd fast float %4539, 0xBFB99999A0000000
  %4541 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4542 = fmul fast float %4541, 0x3FF1C71C80000000
  %4543 = call float @dx.op.binary.f32(i32 36, float %4539, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4544 = fsub fast float 1.000000e+00, %4542
  %4545 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4546 = fmul fast float %4545, %4528
  %4547 = fmul fast float %4545, %4529
  %4548 = fmul fast float %4545, %4530
  %4549 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4550 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4551 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4552 = fmul fast float %4542, %4528
  %4553 = fmul fast float %4542, %4529
  %4554 = fmul fast float %4542, %4530
  %4555 = fadd fast float %4552, %4543
  %4556 = fadd fast float %4553, %4543
  %4557 = fadd fast float %4554, %4543
  %4558 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.i32 %4561, 3
  %4563 = extractvalue %dx.types.CBufRet.i32 %4561, 2
  %4564 = add i32 %4563, 0
  %4565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4566 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4565, %dx.types.Handle %102, float %4476, float %4477, float undef, float undef, i32 0, i32 0, i32 undef, float %4439, float %4440, float undef, float %4443, float %4444, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = and i32 %4562, 255
  %4572 = uitofp i32 %4571 to float
  %4573 = lshr i32 %4562, 8
  %4574 = and i32 %4573, 255
  %4575 = uitofp i32 %4574 to float
  %4576 = lshr i32 %4562, 16
  %4577 = and i32 %4576, 255
  %4578 = uitofp i32 %4577 to float
  %4579 = fmul fast float %4578, 0x3F70101000000000
  %4580 = fmul fast float %4567, %4572
  %4581 = fadd fast float %4580, %4575
  %4582 = fmul fast float %4581, 0x3F70101000000000
  %4583 = fadd fast float %4568, -5.000000e-01
  %4584 = fadd fast float %4570, -5.000000e-01
  %4585 = fmul fast float %4583, %4579
  %4586 = fmul fast float %4584, %4579
  %4587 = fadd fast float %4585, 5.000000e-01
  %4588 = fadd fast float %4586, 5.000000e-01
  %4589 = fmul fast float %4587, 2.000000e+00
  %4590 = fadd fast float %4589, -1.000000e+00
  %4591 = fmul fast float %4588, 2.000000e+00
  %4592 = fadd fast float %4591, -1.000000e+00
  %4593 = fadd fast float %4590, %4592
  %4594 = fmul fast float %4593, 5.000000e-01
  %4595 = fsub fast float %4590, %4592
  %4596 = fmul fast float %4595, 5.000000e-01
  %4597 = call float @dx.op.unary.f32(i32 6, float %4594)  ; FAbs(value)
  %4598 = fsub fast float 1.000000e+00, %4597
  %4599 = call float @dx.op.unary.f32(i32 6, float %4596)  ; FAbs(value)
  %4600 = fsub fast float %4598, %4599
  %4601 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4596, float %4600, float %4594, float %4596, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = call float @dx.op.unary.f32(i32 25, float %4601)  ; Rsqrt(value)
  %4603 = fmul fast float %4594, %4602
  %4604 = fmul fast float %4596, %4602
  %4605 = select i1 %4432, i32 %4422, i32 %4423
  %4606 = select i1 %4430, i32 %4421, i32 %4605
  %4607 = sitofp i32 %4606 to float
  %4608 = fmul fast float %4600, %4607
  %4609 = fmul fast float %4608, %4602
  %4610 = select i1 %4432, float %4609, float %4604
  %4611 = select i1 %4432, float %4604, float %4609
  %4612 = select i1 %4430, float %4609, float %4603
  %4613 = select i1 %4430, float %4604, float %4610
  %4614 = select i1 %4430, float %4603, float %4611
  %4615 = fsub fast float %4549, %3982
  %4616 = fsub fast float %4550, %3983
  %4617 = fsub fast float %4551, %3984
  %4618 = fmul fast float %4615, %4521
  %4619 = fmul fast float %4616, %4521
  %4620 = fmul fast float %4617, %4521
  %4621 = fadd fast float %4618, %3982
  %4622 = fadd fast float %4619, %3983
  %4623 = fadd fast float %4620, %3984
  %4624 = fsub fast float %4558, %3967
  %4625 = fsub fast float %4559, %3968
  %4626 = fsub fast float %4560, %3969
  %4627 = fmul fast float %4624, %4521
  %4628 = fmul fast float %4625, %4521
  %4629 = fmul fast float %4626, %4521
  %4630 = fadd fast float %4627, %3967
  %4631 = fadd fast float %4628, %3968
  %4632 = fadd fast float %4629, %3969
  %4633 = fadd fast float %4612, %3911
  %4634 = fadd fast float %4613, %3912
  %4635 = fadd fast float %4614, %3913
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 25, float %4636)  ; Rsqrt(value)
  %4638 = fmul fast float %4633, %4637
  %4639 = fmul fast float %4634, %4637
  %4640 = fmul fast float %4635, %4637
  %4641 = fsub fast float %4638, %3911
  %4642 = fsub fast float %4639, %3912
  %4643 = fsub fast float %4640, %3913
  %4644 = fmul fast float %4641, %4521
  %4645 = fmul fast float %4642, %4521
  %4646 = fmul fast float %4643, %4521
  %4647 = fadd fast float %4644, %3911
  %4648 = fadd fast float %4645, %3912
  %4649 = fadd fast float %4646, %3913
  %4650 = call float @dx.op.binary.f32(i32 36, float %3920, float %4569)  ; FMin(a,b)
  %4651 = fsub fast float %4650, %3920
  %4652 = fmul fast float %4651, %4521
  %4653 = fadd fast float %4652, %3920
  %4654 = fsub fast float %4582, %3970
  %4655 = fmul fast float %4654, %4521
  %4656 = fadd fast float %4655, %3970
  br label %4657

; <label>:4657                                    ; preds = %4519, %4481, %4383
  %4658 = phi float [ %4621, %4519 ], [ %3982, %4481 ], [ %3982, %4383 ]
  %4659 = phi float [ %4622, %4519 ], [ %3983, %4481 ], [ %3983, %4383 ]
  %4660 = phi float [ %4623, %4519 ], [ %3984, %4481 ], [ %3984, %4383 ]
  %4661 = phi float [ %4630, %4519 ], [ %3967, %4481 ], [ %3967, %4383 ]
  %4662 = phi float [ %4631, %4519 ], [ %3968, %4481 ], [ %3968, %4383 ]
  %4663 = phi float [ %4632, %4519 ], [ %3969, %4481 ], [ %3969, %4383 ]
  %4664 = phi float [ %4647, %4519 ], [ %3911, %4481 ], [ %3911, %4383 ]
  %4665 = phi float [ %4648, %4519 ], [ %3912, %4481 ], [ %3912, %4383 ]
  %4666 = phi float [ %4649, %4519 ], [ %3913, %4481 ], [ %3913, %4383 ]
  %4667 = phi float [ %4656, %4519 ], [ %3970, %4481 ], [ %3970, %4383 ]
  %4668 = phi float [ %4653, %4519 ], [ %3920, %4481 ], [ %3920, %4383 ]
  br i1 %4381, label %4669, label %4942

; <label>:4669                                    ; preds = %4657
  %4670 = call float @dx.op.unary.f32(i32 23, float %4668)  ; Log(value)
  %4671 = fmul fast float %4670, 4.000000e+00
  %4672 = call float @dx.op.unary.f32(i32 21, float %4671)  ; Exp(value)
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 0
  %4675 = fmul fast float %4674, %58
  %4676 = fmul fast float %4674, %59
  %4677 = fmul fast float %4674, %60
  %4678 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4679 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4680 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4681 = call float @dx.op.unary.f32(i32 23, float %4678)  ; Log(value)
  %4682 = call float @dx.op.unary.f32(i32 23, float %4679)  ; Log(value)
  %4683 = call float @dx.op.unary.f32(i32 23, float %4680)  ; Log(value)
  %4684 = fmul fast float %4681, 4.000000e+00
  %4685 = fmul fast float %4682, 4.000000e+00
  %4686 = fmul fast float %4683, 4.000000e+00
  %4687 = call float @dx.op.unary.f32(i32 21, float %4684)  ; Exp(value)
  %4688 = call float @dx.op.unary.f32(i32 21, float %4685)  ; Exp(value)
  %4689 = call float @dx.op.unary.f32(i32 21, float %4686)  ; Exp(value)
  %4690 = fadd fast float %4688, %4687
  %4691 = fadd fast float %4690, %4689
  %4692 = fdiv fast float 1.000000e+00, %4691
  %4693 = fmul fast float %4692, %4687
  %4694 = fcmp fast ogt float %67, 0.000000e+00
  %4695 = fcmp fast ogt float %68, 0.000000e+00
  %4696 = fcmp fast ogt float %69, 0.000000e+00
  %4697 = fcmp fast olt float %67, 0.000000e+00
  %4698 = fcmp fast olt float %68, 0.000000e+00
  %4699 = fcmp fast olt float %69, 0.000000e+00
  %4700 = zext i1 %4694 to i32
  %4701 = zext i1 %4695 to i32
  %4702 = zext i1 %4696 to i32
  %4703 = zext i1 %4697 to i32
  %4704 = zext i1 %4698 to i32
  %4705 = zext i1 %4699 to i32
  %4706 = sub nsw i32 %4700, %4703
  %4707 = sub nsw i32 %4701, %4704
  %4708 = sub nsw i32 %4702, %4705
  %4709 = call float @dx.op.unary.f32(i32 83, float %4675)  ; DerivCoarseX(value)
  %4710 = call float @dx.op.unary.f32(i32 83, float %4676)  ; DerivCoarseX(value)
  %4711 = call float @dx.op.unary.f32(i32 83, float %4677)  ; DerivCoarseX(value)
  %4712 = call float @dx.op.unary.f32(i32 84, float %4675)  ; DerivCoarseY(value)
  %4713 = call float @dx.op.unary.f32(i32 84, float %4676)  ; DerivCoarseY(value)
  %4714 = call float @dx.op.unary.f32(i32 84, float %4677)  ; DerivCoarseY(value)
  %4715 = fcmp fast ole float %308, %4693
  %4716 = fmul fast float %4692, %4690
  %4717 = fcmp fast ole float %308, %4716
  %4718 = select i1 %4717, float %4677, float %4675
  %4719 = select i1 %4717, float %4675, float %4676
  %4720 = select i1 %4715, float %4676, float %4718
  %4721 = select i1 %4715, float %4677, float %4719
  %4722 = select i1 %4717, float %4711, float %4709
  %4723 = select i1 %4717, float %4709, float %4710
  %4724 = select i1 %4715, float %4710, float %4722
  %4725 = select i1 %4715, float %4711, float %4723
  %4726 = select i1 %4717, float %4714, float %4712
  %4727 = select i1 %4717, float %4712, float %4713
  %4728 = select i1 %4715, float %4713, float %4726
  %4729 = select i1 %4715, float %4714, float %4727
  %4730 = call float @dx.op.unary.f32(i32 27, float %4720)  ; Round_ni(value)
  %4731 = call float @dx.op.unary.f32(i32 27, float %4721)  ; Round_ni(value)
  %4732 = fptosi float %4730 to i32
  %4733 = fptosi float %4731 to i32
  %4734 = xor i32 %4733, %4732
  %4735 = sitofp i32 %4734 to float
  %4736 = fptosi float %4735 to i32
  %4737 = sitofp i32 %4736 to float
  %4738 = fmul fast float %4737, 0x3FE3C6EF40000000
  %4739 = frem fast float %4730, 2.560000e+02
  %4740 = frem fast float %4731, 2.560000e+02
  %4741 = fptoui float %4739 to i32
  %4742 = fptoui float %4740 to i32
  %4743 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4741, i32 %4742, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = extractvalue %dx.types.ResRet.f32 %4743, 1
  %4746 = extractvalue %dx.types.ResRet.f32 %4743, 2
  %4747 = fadd fast float %4744, %4738
  %4748 = fadd fast float %4745, %4738
  %4749 = fadd fast float %4746, %4738
  %4750 = call float @dx.op.unary.f32(i32 22, float %4747)  ; Frc(value)
  %4751 = call float @dx.op.unary.f32(i32 22, float %4748)  ; Frc(value)
  %4752 = call float @dx.op.unary.f32(i32 22, float %4749)  ; Frc(value)
  %4753 = fmul fast float %4752, 0x401921FB60000000
  %4754 = call float @dx.op.unary.f32(i32 13, float %4753)  ; Sin(value)
  %4755 = call float @dx.op.unary.f32(i32 12, float %4753)  ; Cos(value)
  %4756 = fsub fast float -0.000000e+00, %4755
  %4757 = fmul fast float %4755, %4720
  %4758 = call float @dx.op.tertiary.f32(i32 46, float %4754, float %4721, float %4757)  ; FMad(a,b,c)
  %4759 = fmul fast float %4754, %4720
  %4760 = call float @dx.op.tertiary.f32(i32 46, float %4756, float %4721, float %4759)  ; FMad(a,b,c)
  %4761 = fadd fast float %4758, %4750
  %4762 = fadd fast float %4760, %4751
  %4763 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4764 = bitcast float %4763 to i32
  %4765 = icmp eq i32 %4764, 0
  br i1 %4765, label %4804, label %4766

; <label>:4766                                    ; preds = %4669
  %4767 = add i32 %4764, 0
  %4768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4769 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4768, %dx.types.Handle %103, float %4761, float %4762, float undef, float undef, i32 0, i32 0, i32 undef, float %4724, float %4725, float undef, float %4728, float %4729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 0
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 1
  %4773 = extractvalue %dx.types.CBufRet.f32 %4771, 2
  %4774 = fsub fast float 1.000000e+00, %4379
  %4775 = call float @dx.op.binary.f32(i32 35, float %4774, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4776 = bitcast float %4379 to i32
  %4777 = sitofp i32 %4776 to float
  %4778 = fadd fast float %4777, 0xC1CFBF8940000000
  %4779 = fmul fast float %4773, %4778
  %4780 = fadd fast float %4779, 0x41CFBF8940000000
  %4781 = fptosi float %4780 to i32
  %4782 = bitcast i32 %4781 to float
  %4783 = bitcast float %4775 to i32
  %4784 = sitofp i32 %4783 to float
  %4785 = fadd fast float %4784, 0xC1CFBF8940000000
  %4786 = fmul fast float %4785, %4773
  %4787 = fadd fast float %4786, 0x41CFBF8940000000
  %4788 = fptosi float %4787 to i32
  %4789 = bitcast i32 %4788 to float
  %4790 = fmul fast float %4782, %4772
  %4791 = fmul fast float %4789, %4772
  %4792 = fsub fast float %4775, %4790
  %4793 = fadd fast float %4791, %4775
  %4794 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4796 = fsub fast float %4770, %4794
  %4797 = fsub fast float %4795, %4794
  %4798 = bitcast float %4797 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = fmul fast float %4800, %4796
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = fcmp fast olt float %4802, 0x3F70101020000000
  br i1 %4803, label %4942, label %4804

; <label>:4804                                    ; preds = %4766, %4669
  %4805 = phi float [ %4802, %4766 ], [ %4379, %4669 ]
  %4806 = fmul fast float %4805, %4672
  %4807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.i32 %4807, 1
  %4809 = extractvalue %dx.types.CBufRet.i32 %4807, 0
  %4810 = add i32 %4809, 0
  %4811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4811, %dx.types.Handle %102, float %4761, float %4762, float undef, float undef, i32 0, i32 0, i32 undef, float %4724, float %4725, float undef, float %4728, float %4729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = extractvalue %dx.types.ResRet.f32 %4812, 3
  %4817 = and i32 %4808, 255
  %4818 = uitofp i32 %4817 to float
  %4819 = lshr i32 %4808, 8
  %4820 = and i32 %4819, 255
  %4821 = uitofp i32 %4820 to float
  %4822 = fmul fast float %4816, %4818
  %4823 = fadd fast float %4822, %4821
  %4824 = fmul fast float %4823, 0x3F70101000000000
  %4825 = fadd fast float %4824, 0xBFB99999A0000000
  %4826 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4827 = fmul fast float %4826, 0x3FF1C71C80000000
  %4828 = call float @dx.op.binary.f32(i32 36, float %4824, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4829 = fsub fast float 1.000000e+00, %4827
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = fmul fast float %4830, %4813
  %4832 = fmul fast float %4830, %4814
  %4833 = fmul fast float %4830, %4815
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4837 = fmul fast float %4827, %4813
  %4838 = fmul fast float %4827, %4814
  %4839 = fmul fast float %4827, %4815
  %4840 = fadd fast float %4837, %4828
  %4841 = fadd fast float %4838, %4828
  %4842 = fadd fast float %4839, %4828
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.i32 %4846, 3
  %4848 = extractvalue %dx.types.CBufRet.i32 %4846, 2
  %4849 = add i32 %4848, 0
  %4850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4851 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4850, %dx.types.Handle %102, float %4761, float %4762, float undef, float undef, i32 0, i32 0, i32 undef, float %4724, float %4725, float undef, float %4728, float %4729, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4852 = extractvalue %dx.types.ResRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.ResRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.ResRet.f32 %4851, 2
  %4855 = extractvalue %dx.types.ResRet.f32 %4851, 3
  %4856 = and i32 %4847, 255
  %4857 = uitofp i32 %4856 to float
  %4858 = lshr i32 %4847, 8
  %4859 = and i32 %4858, 255
  %4860 = uitofp i32 %4859 to float
  %4861 = lshr i32 %4847, 16
  %4862 = and i32 %4861, 255
  %4863 = uitofp i32 %4862 to float
  %4864 = fmul fast float %4863, 0x3F70101000000000
  %4865 = fmul fast float %4852, %4857
  %4866 = fadd fast float %4865, %4860
  %4867 = fmul fast float %4866, 0x3F70101000000000
  %4868 = fadd fast float %4853, -5.000000e-01
  %4869 = fadd fast float %4855, -5.000000e-01
  %4870 = fmul fast float %4868, %4864
  %4871 = fmul fast float %4869, %4864
  %4872 = fadd fast float %4870, 5.000000e-01
  %4873 = fadd fast float %4871, 5.000000e-01
  %4874 = fmul fast float %4872, 2.000000e+00
  %4875 = fadd fast float %4874, -1.000000e+00
  %4876 = fmul fast float %4873, 2.000000e+00
  %4877 = fadd fast float %4876, -1.000000e+00
  %4878 = fadd fast float %4875, %4877
  %4879 = fmul fast float %4878, 5.000000e-01
  %4880 = fsub fast float %4875, %4877
  %4881 = fmul fast float %4880, 5.000000e-01
  %4882 = call float @dx.op.unary.f32(i32 6, float %4879)  ; FAbs(value)
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = call float @dx.op.unary.f32(i32 6, float %4881)  ; FAbs(value)
  %4885 = fsub fast float %4883, %4884
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4881, float %4885, float %4879, float %4881, float %4885)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.unary.f32(i32 25, float %4886)  ; Rsqrt(value)
  %4888 = fmul fast float %4879, %4887
  %4889 = fmul fast float %4881, %4887
  %4890 = select i1 %4717, i32 %4707, i32 %4708
  %4891 = select i1 %4715, i32 %4706, i32 %4890
  %4892 = sitofp i32 %4891 to float
  %4893 = fmul fast float %4885, %4892
  %4894 = fmul fast float %4893, %4887
  %4895 = select i1 %4717, float %4894, float %4889
  %4896 = select i1 %4717, float %4889, float %4894
  %4897 = select i1 %4715, float %4894, float %4888
  %4898 = select i1 %4715, float %4889, float %4895
  %4899 = select i1 %4715, float %4888, float %4896
  %4900 = fsub fast float %4834, %4658
  %4901 = fsub fast float %4835, %4659
  %4902 = fsub fast float %4836, %4660
  %4903 = fmul fast float %4900, %4806
  %4904 = fmul fast float %4901, %4806
  %4905 = fmul fast float %4902, %4806
  %4906 = fadd fast float %4903, %4658
  %4907 = fadd fast float %4904, %4659
  %4908 = fadd fast float %4905, %4660
  %4909 = fsub fast float %4843, %4661
  %4910 = fsub fast float %4844, %4662
  %4911 = fsub fast float %4845, %4663
  %4912 = fmul fast float %4909, %4806
  %4913 = fmul fast float %4910, %4806
  %4914 = fmul fast float %4911, %4806
  %4915 = fadd fast float %4912, %4661
  %4916 = fadd fast float %4913, %4662
  %4917 = fadd fast float %4914, %4663
  %4918 = fadd fast float %4897, %4664
  %4919 = fadd fast float %4898, %4665
  %4920 = fadd fast float %4899, %4666
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4918, float %4919, float %4920, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 25, float %4921)  ; Rsqrt(value)
  %4923 = fmul fast float %4918, %4922
  %4924 = fmul fast float %4919, %4922
  %4925 = fmul fast float %4920, %4922
  %4926 = fsub fast float %4923, %4664
  %4927 = fsub fast float %4924, %4665
  %4928 = fsub fast float %4925, %4666
  %4929 = fmul fast float %4926, %4806
  %4930 = fmul fast float %4927, %4806
  %4931 = fmul fast float %4928, %4806
  %4932 = fadd fast float %4929, %4664
  %4933 = fadd fast float %4930, %4665
  %4934 = fadd fast float %4931, %4666
  %4935 = call float @dx.op.binary.f32(i32 36, float %4668, float %4854)  ; FMin(a,b)
  %4936 = fsub fast float %4935, %4668
  %4937 = fmul fast float %4936, %4806
  %4938 = fadd fast float %4937, %4668
  %4939 = fsub fast float %4867, %4667
  %4940 = fmul fast float %4939, %4806
  %4941 = fadd fast float %4940, %4667
  br label %4942

; <label>:4942                                    ; preds = %4804, %4766, %4657, %4373
  %4943 = phi float [ %4906, %4804 ], [ %4658, %4766 ], [ %4658, %4657 ], [ %3982, %4373 ]
  %4944 = phi float [ %4907, %4804 ], [ %4659, %4766 ], [ %4659, %4657 ], [ %3983, %4373 ]
  %4945 = phi float [ %4908, %4804 ], [ %4660, %4766 ], [ %4660, %4657 ], [ %3984, %4373 ]
  %4946 = phi float [ %4915, %4804 ], [ %4661, %4766 ], [ %4661, %4657 ], [ %3967, %4373 ]
  %4947 = phi float [ %4916, %4804 ], [ %4662, %4766 ], [ %4662, %4657 ], [ %3968, %4373 ]
  %4948 = phi float [ %4917, %4804 ], [ %4663, %4766 ], [ %4663, %4657 ], [ %3969, %4373 ]
  %4949 = phi float [ %4932, %4804 ], [ %4664, %4766 ], [ %4664, %4657 ], [ %3911, %4373 ]
  %4950 = phi float [ %4933, %4804 ], [ %4665, %4766 ], [ %4665, %4657 ], [ %3912, %4373 ]
  %4951 = phi float [ %4934, %4804 ], [ %4666, %4766 ], [ %4666, %4657 ], [ %3913, %4373 ]
  %4952 = phi float [ %4941, %4804 ], [ %4667, %4766 ], [ %4667, %4657 ], [ %3970, %4373 ]
  %4953 = phi float [ %4938, %4804 ], [ %4668, %4766 ], [ %4668, %4657 ], [ %3920, %4373 ]
  %4954 = fcmp fast une float %4377, 0.000000e+00
  %4955 = fsub fast float -0.000000e+00, %226
  %4956 = fsub fast float -0.000000e+00, %227
  %4957 = fsub fast float -0.000000e+00, %228
  br i1 %4954, label %4958, label %5119

; <label>:4958                                    ; preds = %4942
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = fmul fast float %4377, 2.500000e+00
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = fmul fast float %4377, 0x4013FFFFE0000000
  %4963 = fadd fast float %4962, 0xBFFFFFFFE0000000
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4377, 0x4004000020000000
  %4966 = fadd fast float %4965, 0xBFF8000040000000
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %3949, 1.000000e+01
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, 2.000000e+00
  %4971 = fsub fast float 3.000000e+00, %4970
  %4972 = fmul fast float %4969, %4969
  %4973 = fmul fast float %4972, %4971
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = fsub fast float 0x3FE3333340000000, %4952
  %4976 = fmul fast float %4975, 0x400AAAAAA0000000
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4974, %4977
  %4979 = fmul fast float %4943, 0x3FEA2B8620000000
  %4980 = fmul fast float %4944, 0x3FEA2B8620000000
  %4981 = fmul fast float %4945, 0x3FEA2B8620000000
  %4982 = fadd fast float %4979, 0x3FC81DFBA0000000
  %4983 = fmul fast float %4982, %4943
  %4984 = fadd fast float %4983, 0x3F910E6020000000
  %4985 = fadd fast float %4980, 0x3FC81DFBA0000000
  %4986 = fmul fast float %4985, %4944
  %4987 = fadd fast float %4986, 0x3F910E6020000000
  %4988 = fadd fast float %4981, 0x3FC81DFBA0000000
  %4989 = fmul fast float %4988, %4945
  %4990 = fadd fast float %4989, 0x3F910E6020000000
  %4991 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = fsub fast float %4991, %4943
  %4995 = fsub fast float %4992, %4944
  %4996 = fsub fast float %4993, %4945
  %4997 = fmul fast float %4994, %4961
  %4998 = fmul fast float %4997, %4978
  %4999 = fmul fast float %4995, %4961
  %5000 = fmul fast float %4999, %4978
  %5001 = fmul fast float %4996, %4961
  %5002 = fmul fast float %5001, %4978
  %5003 = fadd fast float %4998, %4943
  %5004 = fadd fast float %5000, %4944
  %5005 = fadd fast float %5002, %4945
  %5006 = fmul fast float %4953, %4953
  %5007 = fmul fast float %5006, %5006
  %5008 = fadd fast float %4964, 1.000000e+00
  %5009 = fsub fast float %5008, %4978
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fsub fast float 1.000000e+00, %5007
  %5014 = call float @dx.op.binary.f32(i32 36, float %5010, float %5013)  ; FMin(a,b)
  %5015 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %5016 = call float @dx.op.binary.f32(i32 35, float %5014, float %5015)  ; FMax(a,b)
  %5017 = fadd fast float %5012, 0xBFE4CCCCC0000000
  %5018 = fmul fast float %5017, 0x4006DB6DA0000000
  %5019 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5020 = fmul fast float %5019, 2.000000e+00
  %5021 = fsub fast float 3.000000e+00, %5020
  %5022 = bitcast float %4946 to i32
  %5023 = ashr i32 %5022, 1
  %5024 = add nsw i32 %5023, 532487669
  %5025 = bitcast i32 %5024 to float
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, 2.000000e+00
  %5031 = bitcast float %4947 to i32
  %5032 = ashr i32 %5031, 1
  %5033 = add nsw i32 %5032, 532487669
  %5034 = bitcast i32 %5033 to float
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5038, 2.000000e+00
  %5040 = bitcast float %4948 to i32
  %5041 = ashr i32 %5040, 1
  %5042 = add nsw i32 %5041, 532487669
  %5043 = bitcast i32 %5042 to float
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = bitcast float %5044 to i32
  %5046 = sub nsw i32 2129859010, %5045
  %5047 = bitcast i32 %5046 to float
  %5048 = fmul fast float %5047, 2.000000e+00
  %5049 = fsub fast float 0x4002A9FBE0000000, %5030
  %5050 = fadd fast float %5030, 0x3FD54FDF00000000
  %5051 = bitcast float %5050 to i32
  %5052 = sub nsw i32 2129859010, %5051
  %5053 = bitcast i32 %5052 to float
  %5054 = fmul fast float %5053, %5049
  %5055 = fmul fast float %5054, %5054
  %5056 = fsub fast float 0x4002A9FBE0000000, %5039
  %5057 = fadd fast float %5039, 0x3FD54FDF00000000
  %5058 = bitcast float %5057 to i32
  %5059 = sub nsw i32 2129859010, %5058
  %5060 = bitcast i32 %5059 to float
  %5061 = fmul fast float %5060, %5056
  %5062 = fmul fast float %5061, %5061
  %5063 = fsub fast float 0x4002A9FBE0000000, %5048
  %5064 = fadd fast float %5048, 0x3FD54FDF00000000
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = fmul fast float %5067, %5063
  %5069 = fmul fast float %5068, %5068
  %5070 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5055)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5062)  ; FMax(a,b)
  %5072 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5069)  ; FMax(a,b)
  %5073 = fsub fast float 1.000000e+00, %4959
  %5074 = fadd fast float %5073, %4974
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fsub fast float 1.000000e+00, %4358
  %5077 = fmul fast float %5016, %5076
  %5078 = fmul fast float %5019, %5019
  %5079 = fmul fast float %5078, %5077
  %5080 = fmul fast float %5079, %5021
  %5081 = fmul fast float %5076, 0xBFE99999A0000000
  %5082 = fmul fast float %5081, %4961
  %5083 = fmul fast float %5082, %4978
  %5084 = fadd fast float %5083, 1.000000e+00
  %5085 = fadd fast float %4952, -1.000000e+00
  %5086 = fmul fast float %5084, %5085
  %5087 = fadd fast float %5086, 1.000000e+00
  %5088 = fsub fast float %5070, %4946
  %5089 = fsub fast float %5071, %4947
  %5090 = fsub fast float %5072, %4948
  %5091 = fmul fast float %5080, %5088
  %5092 = fmul fast float %5080, %5089
  %5093 = fmul fast float %5080, %5090
  %5094 = fadd fast float %5091, %4946
  %5095 = fadd fast float %5092, %4947
  %5096 = fadd fast float %5093, %4948
  %5097 = fsub fast float %113, %4949
  %5098 = fsub fast float %114, %4950
  %5099 = fsub fast float %115, %4951
  %5100 = fmul fast float %5080, %5097
  %5101 = fmul fast float %5080, %5098
  %5102 = fmul fast float %5080, %5099
  %5103 = fadd fast float %5100, %4949
  %5104 = fadd fast float %5101, %4950
  %5105 = fadd fast float %5102, %4951
  %5106 = fmul fast float %5080, %5075
  %5107 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = fmul fast float %5106, %5108
  %5110 = fadd fast float %5109, %5107
  %5111 = fsub fast float 1.000000e+00, %4953
  %5112 = fmul fast float %5080, %5111
  %5113 = fadd fast float %5112, %4953
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 25, float %5114)  ; Rsqrt(value)
  %5116 = fmul fast float %5103, %5115
  %5117 = fmul fast float %5104, %5115
  %5118 = fmul fast float %5105, %5115
  br label %5119

; <label>:5119                                    ; preds = %4958, %4942
  %5120 = phi float [ %5003, %4958 ], [ %4943, %4942 ]
  %5121 = phi float [ %5004, %4958 ], [ %4944, %4942 ]
  %5122 = phi float [ %5005, %4958 ], [ %4945, %4942 ]
  %5123 = phi float [ %5094, %4958 ], [ %4946, %4942 ]
  %5124 = phi float [ %5095, %4958 ], [ %4947, %4942 ]
  %5125 = phi float [ %5096, %4958 ], [ %4948, %4942 ]
  %5126 = phi float [ %5116, %4958 ], [ %4949, %4942 ]
  %5127 = phi float [ %5117, %4958 ], [ %4950, %4942 ]
  %5128 = phi float [ %5118, %4958 ], [ %4951, %4942 ]
  %5129 = phi float [ %5110, %4958 ], [ %4952, %4942 ]
  %5130 = phi float [ %5113, %4958 ], [ %4953, %4942 ]
  %5131 = fsub fast float -0.000000e+00, %195
  %5132 = select i1 %297, float 0.000000e+00, float %5125
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %5126, float %5127, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = fmul fast float %5135, 2.000000e+00
  %5137 = fmul fast float %5136, %5126
  %5138 = fmul fast float %5136, %5127
  %5139 = fmul fast float %5136, %5128
  %5140 = fsub fast float %226, %5137
  %5141 = fsub fast float %227, %5138
  %5142 = fsub fast float %228, %5139
  %5143 = call float @dx.op.binary.f32(i32 36, float %5130, float 1.000000e+00)  ; FMin(a,b)
  %5144 = fsub fast float 1.000000e+00, %5130
  %5145 = bitcast float %5144 to i32
  %5146 = sub nsw i32 2129859010, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = fsub fast float 1.000000e+00, %77
  %5149 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = call float @dx.op.binary.f32(i32 35, float %5149, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5151 = fdiv fast float %5148, %5150
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fmul fast float %5153, 5.000000e-01
  %5155 = fadd fast float %5154, 5.000000e-01
  %5156 = fmul fast float %5155, %77
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = fmul fast float %5158, %5151
  %5160 = fadd fast float %5156, %5159
  %5161 = fsub fast float 5.000000e-01, %5154
  %5162 = fmul fast float %5161, %5120
  %5163 = fmul fast float %5161, %5121
  %5164 = fmul fast float %5161, %5122
  %5165 = fadd fast float %5160, %5162
  %5166 = fadd fast float %5160, %5163
  %5167 = fadd fast float %5160, %5164
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5142, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = fmul fast float %5169, 5.000000e-01
  %5171 = fadd fast float %5170, 5.000000e-01
  %5172 = fmul fast float %5171, %77
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5142, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fmul fast float %5174, %5151
  %5176 = fadd fast float %5172, %5175
  %5177 = fsub fast float 5.000000e-01, %5170
  %5178 = fmul fast float %5177, %5120
  %5179 = fmul fast float %5177, %5121
  %5180 = fmul fast float %5177, %5122
  %5181 = fadd fast float %5176, %5178
  %5182 = fadd fast float %5176, %5179
  %5183 = fadd fast float %5176, %5180
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = call float @dx.op.binary.f32(i32 36, float %5120, float %5185)  ; FMin(a,b)
  %5187 = fsub fast float 1.000000e+00, %5143
  %5188 = fmul fast float %5186, %5187
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = bitcast float %5189 to i32
  %5191 = sub nsw i32 2129859010, %5190
  %5192 = bitcast i32 %5191 to float
  %5193 = call float @dx.op.binary.f32(i32 36, float %5121, float %5185)  ; FMin(a,b)
  %5194 = fmul fast float %5193, %5187
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = bitcast float %5195 to i32
  %5197 = sub nsw i32 2129859010, %5196
  %5198 = bitcast i32 %5197 to float
  %5199 = call float @dx.op.binary.f32(i32 36, float %5122, float %5185)  ; FMin(a,b)
  %5200 = fmul fast float %5199, %5187
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = bitcast float %5201 to i32
  %5203 = sub nsw i32 2129859010, %5202
  %5204 = bitcast i32 %5203 to float
  %5205 = fmul fast float %5143, %78
  %5206 = fmul fast float %5205, %5165
  %5207 = fmul fast float %5206, %5192
  %5208 = fmul fast float %5143, %79
  %5209 = fmul fast float %5208, %5166
  %5210 = fmul fast float %5209, %5198
  %5211 = fmul fast float %5143, %80
  %5212 = fmul fast float %5211, %5167
  %5213 = fmul fast float %5212, %5204
  %5214 = call float @dx.op.binary.f32(i32 36, float %5123, float %5185)  ; FMin(a,b)
  %5215 = fmul fast float %5214, %5187
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = bitcast float %5216 to i32
  %5218 = sub nsw i32 2129859010, %5217
  %5219 = bitcast i32 %5218 to float
  %5220 = call float @dx.op.binary.f32(i32 36, float %5124, float %5185)  ; FMin(a,b)
  %5221 = fmul fast float %5220, %5187
  %5222 = fsub fast float 1.000000e+00, %5221
  %5223 = bitcast float %5222 to i32
  %5224 = sub nsw i32 2129859010, %5223
  %5225 = bitcast i32 %5224 to float
  %5226 = call float @dx.op.binary.f32(i32 36, float %5132, float %5185)  ; FMin(a,b)
  %5227 = fmul fast float %5226, %5187
  %5228 = fsub fast float 1.000000e+00, %5227
  %5229 = bitcast float %5228 to i32
  %5230 = sub nsw i32 2129859010, %5229
  %5231 = bitcast i32 %5230 to float
  %5232 = fmul fast float %5205, %5181
  %5233 = fmul fast float %5232, %5219
  %5234 = fmul fast float %5208, %5182
  %5235 = fmul fast float %5234, %5225
  %5236 = fmul fast float %5211, %5183
  %5237 = fmul fast float %5236, %5231
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5210, float %5213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = select i1 %297, float 0.000000e+00, float %5207
  %5240 = select i1 %297, float %5238, float %5210
  %5241 = select i1 %297, float 0.000000e+00, float %5213
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5235, float %5237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = select i1 %297, float 0.000000e+00, float %5233
  %5244 = select i1 %297, float %5242, float %5235
  %5245 = select i1 %297, float 0.000000e+00, float %5237
  %5246 = fmul fast float %5134, 9.843750e-01
  %5247 = fmul fast float %5129, 9.843750e-01
  %5248 = fadd fast float %5246, 7.812500e-03
  %5249 = fadd fast float %5247, 7.812500e-03
  %5250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5248, float %5249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 3
  %5253 = fmul fast float %5251, %5123
  %5254 = fmul fast float %5251, %5124
  %5255 = fmul fast float %5251, %5132
  %5256 = fadd fast float %5253, %5252
  %5257 = fadd fast float %5254, %5252
  %5258 = fadd fast float %5255, %5252
  %5259 = fcmp fast ogt float %3921, 0.000000e+00
  br i1 %5259, label %5260, label %5286

; <label>:5260                                    ; preds = %5119
  %5261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3921, float %5134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = fadd fast float %5262, -5.000000e-01
  %5266 = fadd fast float %5263, -5.000000e-01
  %5267 = fadd fast float %5264, -5.000000e-01
  %5268 = fsub fast float 1.000000e+00, %5123
  %5269 = fsub fast float 1.000000e+00, %5124
  %5270 = fsub fast float 1.000000e+00, %5132
  %5271 = fmul fast float %5123, 4.000000e+00
  %5272 = fmul fast float %5271, %5268
  %5273 = fmul fast float %5272, %5265
  %5274 = fmul fast float %5124, 4.000000e+00
  %5275 = fmul fast float %5274, %5269
  %5276 = fmul fast float %5275, %5266
  %5277 = fmul fast float %5132, 4.000000e+00
  %5278 = fmul fast float %5277, %5270
  %5279 = fmul fast float %5278, %5267
  %5280 = fadd fast float %5273, %5256
  %5281 = fadd fast float %5276, %5257
  %5282 = fadd fast float %5279, %5258
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  br label %5286

; <label>:5286                                    ; preds = %5260, %5119
  %5287 = phi float [ %5283, %5260 ], [ %5256, %5119 ]
  %5288 = phi float [ %5284, %5260 ], [ %5257, %5119 ]
  %5289 = phi float [ %5285, %5260 ], [ %5258, %5119 ]
  %5290 = call float @dx.op.binary.f32(i32 35, float %5288, float %5289)  ; FMax(a,b)
  %5291 = call float @dx.op.binary.f32(i32 35, float %5287, float %5290)  ; FMax(a,b)
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = fmul fast float %5292, %5239
  %5294 = fmul fast float %5292, %5240
  %5295 = fmul fast float %5292, %5241
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = fcmp fast ogt float %5296, 0x3E7FF19E20000000
  %5298 = fdiv fast float 1.000000e+00, %5296
  %5299 = select i1 %5297, float %5298, float 0.000000e+00
  %5300 = fmul fast float %5299, %5120
  %5301 = fmul fast float %5299, %5121
  %5302 = fmul fast float %5299, %5122
  %5303 = fadd fast float %5300, -1.000000e+00
  %5304 = fadd fast float %5301, -1.000000e+00
  %5305 = fadd fast float %5302, -1.000000e+00
  %5306 = fmul fast float %5303, 5.000000e-01
  %5307 = fmul fast float %5304, 5.000000e-01
  %5308 = fmul fast float %5305, 5.000000e-01
  %5309 = fadd fast float %5306, 1.000000e+00
  %5310 = fadd fast float %5307, 1.000000e+00
  %5311 = fadd fast float %5308, 1.000000e+00
  %5312 = fmul fast float %5287, %5243
  %5313 = fmul fast float %5288, %5244
  %5314 = fmul fast float %5289, %5245
  %5315 = fsub fast float 1.000000e+00, %5134
  %5316 = bitcast float %5315 to i32
  %5317 = sitofp i32 %5316 to float
  %5318 = fmul fast float %5317, 5.000000e+00
  %5319 = fadd fast float %5318, 0xC1EFBF8940000000
  %5320 = fptosi float %5319 to i32
  %5321 = bitcast i32 %5320 to float
  %5322 = fmul fast float %5321, %3922
  %5323 = fmul fast float %5239, %5322
  %5324 = fmul fast float %5323, %5292
  %5325 = fmul fast float %5324, %5309
  %5326 = fmul fast float %5240, %5322
  %5327 = fmul fast float %5326, %5292
  %5328 = fmul fast float %5327, %5310
  %5329 = fmul fast float %5241, %5322
  %5330 = fmul fast float %5329, %5292
  %5331 = fmul fast float %5330, %5311
  %5332 = fmul fast float %5293, %3948
  %5333 = fmul fast float %5294, %3948
  %5334 = fmul fast float %5295, %3948
  %5335 = fadd fast float %5312, %3914
  %5336 = fadd fast float %5335, %5325
  %5337 = fmul fast float %5336, %3948
  %5338 = fadd fast float %5313, %3915
  %5339 = fadd fast float %5338, %5328
  %5340 = fmul fast float %5339, %3948
  %5341 = fadd fast float %5314, %3916
  %5342 = fadd fast float %5341, %5331
  %5343 = fmul fast float %5342, %3948
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 3
  %5346 = fcmp fast oeq float %5345, 0.000000e+00
  br i1 %5346, label %6431, label %5347

; <label>:5347                                    ; preds = %5286
  %5348 = extractvalue %dx.types.CBufRet.f32 %5344, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5344, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5344, 2
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.CBufRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.CBufRet.f32 %5351, 2
  %5355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.CBufRet.f32 %5355, 1
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5352, float %5353, float %5354, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = select i1 %297, float %5356, float %5352
  %5360 = select i1 %297, float %5358, float %5353
  %5361 = select i1 %297, float %5357, float %5354
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 2
  %5364 = fmul fast float %5363, %113
  %5365 = fmul fast float %5363, %114
  %5366 = fmul fast float %5363, %115
  %5367 = fadd fast float %5364, %193
  %5368 = fadd fast float %5365, %194
  %5369 = fadd fast float %5366, %195
  %5370 = fcmp fast olt float %5345, 0.000000e+00
  br i1 %5370, label %6010, label %5371

; <label>:5371                                    ; preds = %5347
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5375 = extractvalue %dx.types.CBufRet.f32 %5372, 2
  %5376 = extractvalue %dx.types.CBufRet.f32 %5372, 3
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.CBufRet.f32 %5377, 2
  %5381 = extractvalue %dx.types.CBufRet.f32 %5377, 3
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.CBufRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.CBufRet.f32 %5382, 2
  %5386 = extractvalue %dx.types.CBufRet.f32 %5382, 3
  %5387 = fmul fast float %5373, %5367
  %5388 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5374, float %5387)  ; FMad(a,b,c)
  %5389 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5375, float %5388)  ; FMad(a,b,c)
  %5390 = fadd fast float %5389, %5376
  %5391 = fmul fast float %5378, %5367
  %5392 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5379, float %5391)  ; FMad(a,b,c)
  %5393 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5380, float %5392)  ; FMad(a,b,c)
  %5394 = fadd fast float %5393, %5381
  %5395 = fmul fast float %5383, %5367
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5384, float %5395)  ; FMad(a,b,c)
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5385, float %5396)  ; FMad(a,b,c)
  %5398 = fadd fast float %5397, %5386
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5401 = fcmp fast une float %5400, 0.000000e+00
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5406 = fmul fast float %5405, %5390
  %5407 = fmul fast float %5405, %5394
  %5408 = fadd fast float %5406, %5403
  %5409 = fadd fast float %5407, %5404
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5414 = fmul fast float %5413, %5390
  %5415 = fmul fast float %5413, %5394
  %5416 = fadd fast float %5414, %5411
  %5417 = fadd fast float %5415, %5412
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5420 = fsub fast float %5419, %5398
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5422 = fmul fast float %5420, %5421
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  br i1 %5401, label %5485, label %5425

; <label>:5425                                    ; preds = %5371
  %5426 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5429 = fadd fast float %5428, %5426
  %5430 = fcmp fast ogt float %5429, 0.000000e+00
  br i1 %5430, label %5431, label %5455

; <label>:5431                                    ; preds = %5425
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = fsub fast float %5416, %5433
  %5436 = fsub fast float %5417, %5434
  %5437 = fcmp fast olt float %5435, 0.000000e+00
  %5438 = fcmp fast olt float %5436, 0.000000e+00
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5443 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5444 = select i1 %5437, float %5440, float %5442
  %5445 = select i1 %5438, float %5441, float %5443
  %5446 = fmul fast float %5444, %5435
  %5447 = fmul fast float %5445, %5436
  %5448 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5449 = call float @dx.op.unary.f32(i32 6, float %5447)  ; FAbs(value)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %5451 = call float @dx.op.binary.f32(i32 35, float %5448, float %5449)  ; FMax(a,b)
  %5452 = fsub fast float %5450, %5451
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fmul fast float %5453, %5424
  br label %5455

; <label>:5455                                    ; preds = %5431, %5425
  %5456 = phi float [ %5454, %5431 ], [ 0.000000e+00, %5425 ]
  %5457 = extractvalue %dx.types.CBufRet.f32 %5402, 2
  %5458 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5459 = fadd fast float %5458, %5457
  %5460 = fcmp fast ogt float %5459, 0.000000e+00
  br i1 %5460, label %5461, label %5485

; <label>:5461                                    ; preds = %5455
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = fsub fast float %5408, %5463
  %5466 = fsub fast float %5409, %5464
  %5467 = fcmp fast olt float %5465, 0.000000e+00
  %5468 = fcmp fast olt float %5466, 0.000000e+00
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.CBufRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5473 = extractvalue %dx.types.CBufRet.f32 %5469, 3
  %5474 = select i1 %5467, float %5470, float %5472
  %5475 = select i1 %5468, float %5471, float %5473
  %5476 = fmul fast float %5474, %5465
  %5477 = fmul fast float %5475, %5466
  %5478 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5479 = call float @dx.op.unary.f32(i32 6, float %5477)  ; FAbs(value)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %5481 = call float @dx.op.binary.f32(i32 35, float %5478, float %5479)  ; FMax(a,b)
  %5482 = fsub fast float %5480, %5481
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fmul fast float %5483, %5424
  br label %5485

; <label>:5485                                    ; preds = %5461, %5455, %5371
  %5486 = phi float [ 0.000000e+00, %5371 ], [ %5484, %5461 ], [ 0.000000e+00, %5455 ]
  %5487 = phi float [ 0.000000e+00, %5371 ], [ %5456, %5461 ], [ %5456, %5455 ]
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.CBufRet.f32 %5491, 1
  %5494 = fsub fast float %5390, %5492
  %5495 = fsub fast float %5394, %5493
  %5496 = fcmp fast olt float %5494, 0.000000e+00
  %5497 = fcmp fast olt float %5495, 0.000000e+00
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5500 = extractvalue %dx.types.CBufRet.f32 %5498, 1
  %5501 = extractvalue %dx.types.CBufRet.f32 %5498, 2
  %5502 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5503 = select i1 %5496, float %5499, float %5501
  %5504 = select i1 %5497, float %5500, float %5502
  %5505 = fmul fast float %5503, %5494
  %5506 = fmul fast float %5504, %5495
  %5507 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5508 = call float @dx.op.unary.f32(i32 6, float %5506)  ; FAbs(value)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %5510 = call float @dx.op.binary.f32(i32 35, float %5507, float %5508)  ; FMax(a,b)
  %5511 = fsub fast float %5509, %5510
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = call float @dx.op.binary.f32(i32 36, float %5512, float %5490)  ; FMin(a,b)
  %5514 = fmul fast float %5513, %5424
  %5515 = fsub fast float %5486, %5514
  %5516 = fsub fast float %5487, %5486
  %5517 = fsub fast float %5516, %5514
  %5518 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5519 = call float @dx.op.binary.f32(i32 35, float %5514, float %5518)  ; FMax(a,b)
  %5520 = fcmp fast olt float %5519, 1.000000e+00
  br i1 %5520, label %5521, label %5919, !dx.controlflow.hints !96

; <label>:5521                                    ; preds = %5485
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 0
  %5524 = fcmp fast une float %5523, 0.000000e+00
  br i1 %5524, label %5525, label %5919, !dx.controlflow.hints !97

; <label>:5525                                    ; preds = %5521
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5530 = extractvalue %dx.types.CBufRet.f32 %5526, 3
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.CBufRet.f32 %5531, 1
  %5534 = extractvalue %dx.types.CBufRet.f32 %5531, 2
  %5535 = extractvalue %dx.types.CBufRet.f32 %5531, 3
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5536, 2
  %5540 = extractvalue %dx.types.CBufRet.f32 %5536, 3
  %5541 = fmul fast float %5527, %5367
  %5542 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5528, float %5541)  ; FMad(a,b,c)
  %5543 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5529, float %5542)  ; FMad(a,b,c)
  %5544 = fadd fast float %5543, %5530
  %5545 = fmul fast float %5532, %5367
  %5546 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5533, float %5545)  ; FMad(a,b,c)
  %5547 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5534, float %5546)  ; FMad(a,b,c)
  %5548 = fadd fast float %5547, %5535
  %5549 = fmul fast float %5537, %5367
  %5550 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5538, float %5549)  ; FMad(a,b,c)
  %5551 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5539, float %5550)  ; FMad(a,b,c)
  %5552 = fadd fast float %5551, %5540
  %5553 = fcmp fast oge float %5544, 1.000000e+00
  %5554 = fcmp fast oge float %5548, 1.000000e+00
  %5555 = or i1 %5553, %5554
  %5556 = fcmp fast olt float %5544, 0.000000e+00
  %5557 = fcmp fast olt float %5548, 0.000000e+00
  %5558 = or i1 %5556, %5557
  %5559 = or i1 %5555, %5558
  br i1 %5559, label %5919, label %5560, !dx.controlflow.hints !98

; <label>:5560                                    ; preds = %5525
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5561, 2
  %5565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.i32 %5565, 2
  %5567 = uitofp i32 %5566 to float
  %5568 = extractvalue %dx.types.CBufRet.i32 %5565, 3
  %5569 = uitofp i32 %5568 to float
  %5570 = extractvalue %dx.types.CBufRet.f32 %5561, 3
  %5571 = fmul fast float %5570, 2.000000e+00
  %5572 = fsub fast float %5544, %5562
  %5573 = fsub fast float %5548, %5563
  %5574 = fmul fast float %5571, %5572
  %5575 = fmul fast float %5571, %5573
  %5576 = fdiv fast float 1.000000e+00, %5350
  %5577 = fmul fast float %5575, %5576
  %5578 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5579 = fmul fast float %5564, %5369
  %5580 = fmul fast float %5579, %5571
  %5581 = call float @dx.op.unary.f32(i32 6, float %5580)  ; FAbs(value)
  %5582 = call float @dx.op.unary.f32(i32 6, float %5574)  ; FAbs(value)
  %5583 = call float @dx.op.binary.f32(i32 35, float %5581, float %5578)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float %5582, float %5583)  ; FMax(a,b)
  %5585 = fmul fast float %5584, 2.000000e+00
  %5586 = call float @dx.op.unary.f32(i32 23, float %5585)  ; Log(value)
  %5587 = call float @dx.op.binary.f32(i32 35, float %5586, float %5567)  ; FMax(a,b)
  %5588 = call float @dx.op.unary.f32(i32 22, float %5587)  ; Frc(value)
  %5589 = fadd fast float %5588, 0xBFEA666660000000
  %5590 = fmul fast float %5589, 8.000000e+00
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call float @dx.op.unary.f32(i32 27, float %5587)  ; Round_ni(value)
  %5593 = fadd fast float %5592, %5591
  %5594 = call float @dx.op.binary.f32(i32 36, float %5593, float %5569)  ; FMin(a,b)
  %5595 = call float @dx.op.unary.f32(i32 27, float %5594)  ; Round_ni(value)
  %5596 = fsub fast float -0.000000e+00, %5595
  %5597 = call float @dx.op.unary.f32(i32 21, float %5596)  ; Exp(value)
  %5598 = fmul fast float %5597, %5571
  %5599 = fmul fast float %5598, %5544
  %5600 = fmul fast float %5598, %5548
  %5601 = fmul fast float %5599, 2.500000e-01
  %5602 = fmul fast float %5600, 2.500000e-01
  %5603 = fadd fast float %5601, 5.000000e-01
  %5604 = fadd fast float %5602, 5.000000e-01
  %5605 = fsub fast float %5569, %5567
  %5606 = fptoui float %5605 to i32
  %5607 = add i32 %5606, 320
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5607)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = fcmp fast une float %5594, %5569
  %5612 = fsub fast float %5544, %5609
  %5613 = fsub fast float %5548, %5610
  %5614 = call float @dx.op.unary.f32(i32 6, float %5612)  ; FAbs(value)
  %5615 = call float @dx.op.unary.f32(i32 6, float %5613)  ; FAbs(value)
  %5616 = fmul fast float %5614, %5598
  %5617 = fmul fast float %5615, %5598
  %5618 = fcmp fast olt float %5616, 1.000000e+00
  %5619 = fcmp fast olt float %5617, 1.000000e+00
  %5620 = and i1 %5618, %5619
  %5621 = or i1 %5611, %5620
  br i1 %5621, label %5622, label %5919, !dx.controlflow.hints !99

; <label>:5622                                    ; preds = %5560
  %5623 = fmul fast float %5600, 5.000000e-01
  %5624 = fmul fast float %5599, 5.000000e-01
  %5625 = fadd fast float %5623, 5.000000e-01
  %5626 = fadd fast float %5624, 5.000000e-01
  %5627 = sitofp i32 %5566 to float
  %5628 = fsub fast float %5594, %5627
  %5629 = call float @dx.op.unary.f32(i32 27, float %5628)  ; Round_ni(value)
  %5630 = call float @dx.op.unary.f32(i32 22, float %5594)  ; Frc(value)
  %5631 = call float @dx.op.unary.f32(i32 22, float %5626)  ; Frc(value)
  %5632 = call float @dx.op.unary.f32(i32 22, float %5625)  ; Frc(value)
  %5633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5631, float %5632, float %5629, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.ResRet.f32 %5633, 2
  %5637 = extractvalue %dx.types.ResRet.f32 %5633, 3
  %5638 = fcmp fast ogt float %5630, 0.000000e+00
  br i1 %5638, label %5639, label %5660, !dx.controlflow.hints !100

; <label>:5639                                    ; preds = %5622
  %5640 = fadd fast float %5629, 1.000000e+00
  %5641 = call float @dx.op.unary.f32(i32 22, float %5603)  ; Frc(value)
  %5642 = call float @dx.op.unary.f32(i32 22, float %5604)  ; Frc(value)
  %5643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5641, float %5642, float %5640, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5644 = extractvalue %dx.types.ResRet.f32 %5643, 0
  %5645 = extractvalue %dx.types.ResRet.f32 %5643, 1
  %5646 = extractvalue %dx.types.ResRet.f32 %5643, 2
  %5647 = extractvalue %dx.types.ResRet.f32 %5643, 3
  %5648 = fsub fast float %5644, %5634
  %5649 = fsub fast float %5645, %5635
  %5650 = fsub fast float %5646, %5636
  %5651 = fsub fast float %5647, %5637
  %5652 = fmul fast float %5648, %5630
  %5653 = fmul fast float %5649, %5630
  %5654 = fmul fast float %5650, %5630
  %5655 = fmul fast float %5651, %5630
  %5656 = fadd fast float %5652, %5634
  %5657 = fadd fast float %5653, %5635
  %5658 = fadd fast float %5654, %5636
  %5659 = fadd fast float %5655, %5637
  br label %5660

; <label>:5660                                    ; preds = %5639, %5622
  %5661 = phi float [ %5656, %5639 ], [ %5634, %5622 ]
  %5662 = phi float [ %5657, %5639 ], [ %5635, %5622 ]
  %5663 = phi float [ %5658, %5639 ], [ %5636, %5622 ]
  %5664 = phi float [ %5659, %5639 ], [ %5637, %5622 ]
  %5665 = fadd fast float %5661, -5.000000e-01
  %5666 = fadd fast float %5663, -5.000000e-01
  %5667 = fmul fast float %5665, 0xBFD5555560000000
  %5668 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5666, float %5667)  ; FMad(a,b,c)
  %5669 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5662, float 0.000000e+00)  ; FMad(a,b,c)
  %5670 = fadd fast float %5669, %5664
  %5671 = fmul fast float %5665, -7.500000e-01
  %5672 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5666, float %5671)  ; FMad(a,b,c)
  %5673 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5662, float 0.000000e+00)  ; FMad(a,b,c)
  %5674 = fadd fast float %5673, %5664
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5680 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5681 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5682 = fsub fast float %5678, %5668
  %5683 = fsub fast float %5679, %5670
  %5684 = fsub fast float %5680, %5672
  %5685 = fsub fast float %5681, %5674
  %5686 = fmul fast float %5682, %5676
  %5687 = fmul fast float %5683, %5676
  %5688 = fmul fast float %5684, %5676
  %5689 = fmul fast float %5685, %5676
  %5690 = fadd fast float %5686, %5668
  %5691 = fadd fast float %5687, %5670
  %5692 = fadd fast float %5688, %5672
  %5693 = fadd fast float %5689, %5674
  %5694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5695 = extractvalue %dx.types.ResRet.i32 %5694, 0
  %5696 = and i32 %5695, 536870911
  %5697 = uitofp i32 %5696 to float
  %5698 = fmul fast float %5697, %5544
  %5699 = fmul fast float %5697, %5548
  %5700 = fptoui float %5698 to i32
  %5701 = fptoui float %5699 to i32
  %5702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5703 = extractvalue %dx.types.ResRet.i32 %5702, 0
  %5704 = and i32 %5703, 31
  %5705 = lshr i32 %5700, %5704
  %5706 = lshr i32 %5701, %5704
  %5707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5708 = extractvalue %dx.types.ResRet.i32 %5707, 0
  %5709 = and i32 %5708, 31
  %5710 = shl i32 1, %5709
  %5711 = call i32 @dx.op.binary.i32(i32 40, i32 %5710, i32 4)  ; UMin(a,b)
  %5712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5713 = extractvalue %dx.types.ResRet.i32 %5712, 0
  %5714 = extractvalue %dx.types.ResRet.i32 %5712, 1
  %5715 = icmp eq i32 %5711, 0
  br i1 %5715, label %5757, label %5716

; <label>:5716                                    ; preds = %5660
  br label %5717

; <label>:5717                                    ; preds = %5745, %5716
  %5718 = phi i32 [ %5748, %5745 ], [ 0, %5716 ]
  %5719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5720 = extractvalue %dx.types.ResRet.i32 %5719, 0
  %5721 = lshr i32 %5720, 16
  %5722 = and i32 %5721, 31
  %5723 = shl i32 %5706, %5722
  %5724 = add i32 %5723, %5705
  %5725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5726 = extractvalue %dx.types.ResRet.i32 %5725, 0
  %5727 = and i32 %5726, 31
  %5728 = shl i32 %5724, %5727
  %5729 = add i32 %5728, %5718
  %5730 = shl i32 %5729, 2
  %5731 = add i32 %5730, 32
  %5732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5731, i32 undef)  ; BufferLoad(srv,index,wot)
  %5733 = extractvalue %dx.types.ResRet.i32 %5732, 0
  %5734 = icmp slt i32 %5733, 0
  %5735 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5718
  %5736 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5718
  %5737 = bitcast float* %5735 to i32*
  %5738 = bitcast float* %5736 to i32*
  br i1 %5734, label %5739, label %5745

; <label>:5739                                    ; preds = %5717
  %5740 = and i32 %5733, 1073741823
  %5741 = add nuw nsw i32 %5740, 20
  %5742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5741, i32 undef)  ; BufferLoad(srv,index,wot)
  %5743 = extractvalue %dx.types.ResRet.i32 %5742, 0
  %5744 = extractvalue %dx.types.ResRet.i32 %5742, 1
  br label %5745

; <label>:5745                                    ; preds = %5739, %5717
  %5746 = phi i32 [ %5743, %5739 ], [ %5713, %5717 ]
  %5747 = phi i32 [ %5744, %5739 ], [ %5714, %5717 ]
  store i32 %5746, i32* %5737, align 4
  store i32 %5747, i32* %5738, align 4
  %5748 = add nuw i32 %5718, 1
  %5749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.i32 %5749, 2
  %5751 = icmp eq i32 %5750, 0
  %5752 = icmp ugt i32 %5733, -1073741825
  %5753 = and i1 %5752, %5751
  %5754 = icmp ult i32 %5748, %5711
  %5755 = and i1 %5753, %5754
  br i1 %5755, label %5717, label %5756

; <label>:5756                                    ; preds = %5745
  br label %5757

; <label>:5757                                    ; preds = %5756, %5660
  %5758 = phi i32 [ 0, %5660 ], [ %5748, %5756 ]
  %5759 = extractvalue %dx.types.CBufRet.f32 %5522, 2
  %5760 = fptoui float %5759 to i32
  %5761 = icmp eq i32 %5760, 0
  br i1 %5761, label %5813, label %5762

; <label>:5762                                    ; preds = %5757
  br label %5763

; <label>:5763                                    ; preds = %5808, %5762
  %5764 = phi i32 [ %5809, %5808 ], [ %5758, %5762 ]
  %5765 = phi i32 [ %5810, %5808 ], [ 0, %5762 ]
  %5766 = lshr i32 %5765, 2
  %5767 = and i32 %5765, 3
  %5768 = add nuw nsw i32 %5766, 83
  %5769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5768)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.i32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.i32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.i32 %5769, 2
  %5773 = extractvalue %dx.types.CBufRet.i32 %5769, 3
  %5774 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5770, i32* %5774, align 4
  %5775 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5771, i32* %5775, align 4
  %5776 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5772, i32* %5776, align 4
  %5777 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5773, i32* %5777, align 4
  %5778 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5767
  %5779 = load i32, i32* %5778, align 4, !tbaa !101, !noalias !105
  %5780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5781 = extractvalue %dx.types.ResRet.i32 %5780, 0
  %5782 = lshr i32 %5781, 16
  %5783 = and i32 %5782, 31
  %5784 = shl i32 %5706, %5783
  %5785 = add i32 %5784, %5705
  %5786 = shl i32 %5785, 2
  %5787 = add i32 %5786, %5779
  %5788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5787, i32 undef)  ; BufferLoad(srv,index,wot)
  %5789 = extractvalue %dx.types.ResRet.i32 %5788, 0
  %5790 = icmp eq i32 %5789, 0
  br i1 %5790, label %5808, label %5791

; <label>:5791                                    ; preds = %5763
  %5792 = icmp slt i32 %5789, 0
  %5793 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5764
  %5794 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5764
  %5795 = bitcast float* %5793 to i32*
  %5796 = bitcast float* %5794 to i32*
  br i1 %5792, label %5797, label %5804

; <label>:5797                                    ; preds = %5791
  %5798 = and i32 %5789, 1073741823
  %5799 = add i32 %5779, 20
  %5800 = add i32 %5799, %5798
  %5801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5800, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.i32 %5801, 0
  %5803 = extractvalue %dx.types.ResRet.i32 %5801, 1
  br label %5804

; <label>:5804                                    ; preds = %5797, %5791
  %5805 = phi i32 [ %5802, %5797 ], [ %5713, %5791 ]
  %5806 = phi i32 [ %5803, %5797 ], [ %5714, %5791 ]
  store i32 %5805, i32* %5795, align 4
  store i32 %5806, i32* %5796, align 4
  %5807 = add i32 %5764, 1
  br label %5808

; <label>:5808                                    ; preds = %5804, %5763
  %5809 = phi i32 [ %5764, %5763 ], [ %5807, %5804 ]
  %5810 = add nuw i32 %5765, 1
  %5811 = icmp eq i32 %5810, %5760
  br i1 %5811, label %5812, label %5763

; <label>:5812                                    ; preds = %5808
  br label %5813

; <label>:5813                                    ; preds = %5812, %5757
  %5814 = phi i32 [ %5758, %5757 ], [ %5809, %5812 ]
  %5815 = icmp eq i32 %5814, 1
  %5816 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %5817 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %5815, label %5818, label %5821

; <label>:5818                                    ; preds = %5813
  %5819 = load float, float* %5816, align 4
  %5820 = load float, float* %5817, align 4
  br label %5848

; <label>:5821                                    ; preds = %5813
  %5822 = load float, float* %5816, align 4
  %5823 = load float, float* %5817, align 4
  %5824 = fdiv fast float 1.000000e+00, %5823
  %5825 = fsub fast float %5822, %5824
  %5826 = icmp ugt i32 %5814, 1
  br i1 %5826, label %5827, label %5843

; <label>:5827                                    ; preds = %5821
  br label %5828

; <label>:5828                                    ; preds = %5828, %5827
  %5829 = phi float [ %5838, %5828 ], [ %5825, %5827 ]
  %5830 = phi float [ %5839, %5828 ], [ %5822, %5827 ]
  %5831 = phi i32 [ %5840, %5828 ], [ 1, %5827 ]
  %5832 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5831
  %5833 = load float, float* %5832, align 4
  %5834 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5831
  %5835 = load float, float* %5834, align 4
  %5836 = fdiv fast float 1.000000e+00, %5835
  %5837 = fsub fast float %5833, %5836
  %5838 = call float @dx.op.binary.f32(i32 36, float %5829, float %5837)  ; FMin(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5830, float %5833)  ; FMax(a,b)
  %5840 = add nuw i32 %5831, 1
  %5841 = icmp eq i32 %5840, %5814
  br i1 %5841, label %5842, label %5828

; <label>:5842                                    ; preds = %5828
  br label %5843

; <label>:5843                                    ; preds = %5842, %5821
  %5844 = phi float [ %5825, %5821 ], [ %5838, %5842 ]
  %5845 = phi float [ %5822, %5821 ], [ %5839, %5842 ]
  %5846 = fsub fast float %5845, %5844
  %5847 = fdiv fast float 1.000000e+00, %5846
  br label %5848

; <label>:5848                                    ; preds = %5843, %5818
  %5849 = phi float [ %5819, %5818 ], [ %5845, %5843 ]
  %5850 = phi float [ %5820, %5818 ], [ %5847, %5843 ]
  %5851 = fadd fast float %5552, %5849
  %5852 = fmul fast float %5851, %5850
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = fmul fast float %5853, 2.000000e+00
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = fmul fast float %5690, %5690
  %5857 = fsub fast float %5691, %5856
  %5858 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5857)  ; FMax(a,b)
  %5859 = fdiv fast float 1.000000e+00, %5858
  %5860 = fmul fast float %5691, %5690
  %5861 = fsub fast float %5692, %5860
  %5862 = fsub fast float %5855, %5690
  %5863 = fmul fast float %5855, %5855
  %5864 = fsub fast float %5863, %5691
  %5865 = fmul fast float %5859, %5861
  %5866 = fmul fast float %5865, %5862
  %5867 = fsub fast float %5864, %5866
  %5868 = fmul fast float %5691, %5691
  %5869 = fsub fast float %5693, %5868
  %5870 = fmul fast float %5861, %5861
  %5871 = fmul fast float %5870, %5859
  %5872 = fsub fast float %5869, %5871
  %5873 = fdiv fast float %5867, %5872
  %5874 = fmul fast float %5873, %5861
  %5875 = fsub fast float %5862, %5874
  %5876 = fmul fast float %5875, %5859
  %5877 = fmul fast float %5876, %5690
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fmul fast float %5873, %5691
  %5880 = fsub fast float %5878, %5879
  %5881 = fmul fast float %5876, %5876
  %5882 = fmul fast float %5873, 4.000000e+00
  %5883 = fmul fast float %5882, %5880
  %5884 = fsub fast float %5881, %5883
  %5885 = call float @dx.op.unary.f32(i32 24, float %5884)  ; Sqrt(value)
  %5886 = fcmp fast oge float %5876, 0.000000e+00
  %5887 = fsub fast float -0.000000e+00, %5885
  %5888 = select i1 %5886, float %5887, float %5885
  %5889 = fsub fast float %5888, %5876
  %5890 = fdiv fast float %5889, %5873
  %5891 = fdiv fast float %5880, %5889
  %5892 = fmul fast float %5890, 5.000000e-01
  %5893 = fmul fast float %5891, 2.000000e+00
  %5894 = select i1 %5886, float %5892, float %5893
  %5895 = select i1 %5886, float %5893, float %5892
  %5896 = call float @dx.op.binary.f32(i32 35, float %5894, float %5895)  ; FMax(a,b)
  %5897 = call float @dx.op.binary.f32(i32 36, float %5894, float %5895)  ; FMin(a,b)
  %5898 = fcmp fast ogt float %5855, %5896
  %5899 = fsub fast float %5855, %5897
  %5900 = fsub fast float %5855, %5896
  %5901 = fsub fast float %5896, %5897
  %5902 = select i1 %5898, float %5900, float %5901
  %5903 = fmul float %5899, %5902
  %5904 = select i1 %5898, float %5897, float %5855
  %5905 = fcmp fast ogt float %5855, %5897
  %5906 = fmul fast float %5904, %5896
  %5907 = fadd fast float %5904, %5896
  %5908 = fmul fast float %5907, %5690
  %5909 = fadd fast float %5906, %5691
  %5910 = fsub fast float %5909, %5908
  %5911 = fdiv fast float %5910, %5903
  %5912 = select i1 %5905, float %5911, float 0.000000e+00
  %5913 = fsub fast float 1.000000e+00, %5912
  %5914 = select i1 %5898, float %5913, float %5912
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5917 = fmul fast float %5916, %5915
  %5918 = fsub fast float 1.000000e+00, %5917
  br label %5919

; <label>:5919                                    ; preds = %5848, %5560, %5525, %5521, %5485
  %5920 = phi float [ 1.000000e+00, %5485 ], [ %5918, %5848 ], [ 1.000000e+00, %5525 ], [ 1.000000e+00, %5560 ], [ 1.000000e+00, %5521 ]
  %5921 = fcmp fast ogt float %5517, 0.000000e+00
  br i1 %5921, label %5922, label %5930, !dx.controlflow.hints !114

; <label>:5922                                    ; preds = %5919
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5925 = fadd fast float %5924, %5398
  %5926 = call float @dx.op.binary.f32(i32 35, float %5925, float 0.000000e+00)  ; FMax(a,b)
  %5927 = fadd fast float %5926, 0x3F10000000000000
  %5928 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5416, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float %5927)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  br label %5930

; <label>:5930                                    ; preds = %5922, %5919
  %5931 = phi float [ %5929, %5922 ], [ 1.000000e+00, %5919 ]
  %5932 = fcmp fast ogt float %5515, 0.000000e+00
  br i1 %5932, label %5933, label %5941, !dx.controlflow.hints !115

; <label>:5933                                    ; preds = %5930
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5936 = fadd fast float %5935, %5398
  %5937 = call float @dx.op.binary.f32(i32 35, float %5936, float 0.000000e+00)  ; FMax(a,b)
  %5938 = fadd fast float %5937, 0x3F10000000000000
  %5939 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5408, float %5409, float undef, float undef, i32 0, i32 0, i32 undef, float %5938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  br label %5941

; <label>:5941                                    ; preds = %5933, %5930
  %5942 = phi float [ %5940, %5933 ], [ 1.000000e+00, %5930 ]
  %5943 = fcmp fast ogt float %5514, 0.000000e+00
  br i1 %5943, label %5944, label %5956, !dx.controlflow.hints !116

; <label>:5944                                    ; preds = %5941
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = fadd fast float %5946, %5398
  %5948 = call float @dx.op.binary.f32(i32 35, float %5947, float 0.000000e+00)  ; FMax(a,b)
  %5949 = fadd fast float %5948, 0x3F10000000000000
  br i1 %5401, label %5950, label %5953, !dx.controlflow.hints !117

; <label>:5950                                    ; preds = %5944
  %5951 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5390, float %5394, float undef, float undef, i32 0, i32 0, i32 undef, float %5949)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 0
  br label %5956

; <label>:5953                                    ; preds = %5944
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5390, float %5394, float undef, float undef, i32 0, i32 0, i32 undef, float %5949)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  br label %5956

; <label>:5956                                    ; preds = %5953, %5950, %5941
  %5957 = phi float [ %5952, %5950 ], [ %5955, %5953 ], [ 1.000000e+00, %5941 ]
  %5958 = fsub fast float %5931, %5920
  %5959 = fmul fast float %5958, %5487
  %5960 = fadd fast float %5959, %5920
  %5961 = fsub fast float %5942, %5960
  %5962 = fmul fast float %5961, %5486
  %5963 = fadd fast float %5962, %5960
  %5964 = fsub fast float %5957, %5963
  %5965 = fmul fast float %5964, %5514
  %5966 = fadd fast float %5965, %5963
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5969 = fcmp fast ogt float %5968, 0.000000e+00
  br i1 %5969, label %5970, label %6010, !dx.controlflow.hints !118

; <label>:5970                                    ; preds = %5956
  %5971 = fcmp fast ugt float %5968, 0.000000e+00
  br i1 %5971, label %5972, label %6007

; <label>:5972                                    ; preds = %5970
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.CBufRet.f32 %5973, 2
  %5977 = extractvalue %dx.types.CBufRet.f32 %5973, 3
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5983 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5984 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5989 = fadd fast float %5986, %5367
  %5990 = fadd fast float %5987, %5368
  %5991 = fadd fast float %5988, %5369
  %5992 = fmul fast float %5989, %5974
  %5993 = call float @dx.op.tertiary.f32(i32 46, float %5975, float %5990, float %5992)  ; FMad(a,b,c)
  %5994 = call float @dx.op.tertiary.f32(i32 46, float %5976, float %5991, float %5993)  ; FMad(a,b,c)
  %5995 = fadd fast float %5994, %5977
  %5996 = fmul fast float %5989, %5979
  %5997 = call float @dx.op.tertiary.f32(i32 46, float %5980, float %5990, float %5996)  ; FMad(a,b,c)
  %5998 = call float @dx.op.tertiary.f32(i32 46, float %5981, float %5991, float %5997)  ; FMad(a,b,c)
  %5999 = fadd fast float %5998, %5982
  %6000 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %5995, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = fmul fast float %6001, %5984
  %6003 = fadd fast float %6002, %5983
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = fmul fast float %6004, %5968
  %6006 = fsub fast float 1.000000e+00, %6005
  br label %6007

; <label>:6007                                    ; preds = %5972, %5970
  %6008 = phi float [ %6006, %5972 ], [ 1.000000e+00, %5970 ]
  %6009 = fmul fast float %6008, %5966
  br label %6010

; <label>:6010                                    ; preds = %6007, %5956, %5347
  %6011 = phi float [ 1.000000e+00, %5347 ], [ %6009, %6007 ], [ %5966, %5956 ]
  %6012 = call float @dx.op.binary.f32(i32 36, float %6011, float %6011)  ; FMin(a,b)
  %6013 = call float @dx.op.binary.f32(i32 36, float %6011, float %6012)  ; FMin(a,b)
  %6014 = fcmp fast ogt float %6013, 0.000000e+00
  br i1 %6014, label %6015, label %6175, !dx.controlflow.hints !119

; <label>:6015                                    ; preds = %6010
  %6016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.CBufRet.f32 %6016, 1
  %6019 = extractvalue %dx.types.CBufRet.f32 %6016, 2
  %6020 = extractvalue %dx.types.CBufRet.f32 %6016, 3
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6030 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6031 = fmul fast float %6017, %5367
  %6032 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %6018, float %6031)  ; FMad(a,b,c)
  %6033 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %6019, float %6032)  ; FMad(a,b,c)
  %6034 = fadd fast float %6033, %6020
  %6035 = fmul fast float %6022, %5367
  %6036 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %6023, float %6035)  ; FMad(a,b,c)
  %6037 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %6024, float %6036)  ; FMad(a,b,c)
  %6038 = fadd fast float %6037, %6025
  %6039 = fmul fast float %6027, %5367
  %6040 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %6028, float %6039)  ; FMad(a,b,c)
  %6041 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %6029, float %6040)  ; FMad(a,b,c)
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6046 = fmul fast float %6045, %6034
  %6047 = fmul fast float %6045, %6038
  %6048 = fadd fast float %6046, %6043
  %6049 = fadd fast float %6047, %6044
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = fsub fast float %6048, %6051
  %6054 = fsub fast float %6049, %6052
  %6055 = fcmp fast olt float %6053, 0.000000e+00
  %6056 = fcmp fast olt float %6054, 0.000000e+00
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6061 = extractvalue %dx.types.CBufRet.f32 %6057, 3
  %6062 = select i1 %6055, float %6058, float %6060
  %6063 = select i1 %6056, float %6059, float %6061
  %6064 = fmul fast float %6062, %6053
  %6065 = fmul fast float %6063, %6054
  %6066 = call float @dx.op.unary.f32(i32 6, float %6064)  ; FAbs(value)
  %6067 = call float @dx.op.unary.f32(i32 6, float %6065)  ; FAbs(value)
  %6068 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %6069 = call float @dx.op.binary.f32(i32 35, float %6066, float %6067)  ; FMax(a,b)
  %6070 = fsub fast float %6068, %6069
  %6071 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6072 = fcmp fast ogt float %6071, 0.000000e+00
  br i1 %6072, label %6073, label %6114, !dx.controlflow.hints !120

; <label>:6073                                    ; preds = %6015
  %6074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6048, float %6049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6075 = extractvalue %dx.types.ResRet.f32 %6074, 1
  %6076 = fcmp fast ogt float %6075, 0.000000e+00
  br i1 %6076, label %6077, label %6109

; <label>:6077                                    ; preds = %6073
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6048, float %6049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6082 = extractvalue %dx.types.ResRet.f32 %6078, 3
  %6083 = fsub fast float 1.000000e+00, %6030
  %6084 = fsub fast float %6083, %6041
  %6085 = fmul fast float %6084, 0x400921FB60000000
  %6086 = fadd fast float %6085, 0x3FF921FB60000000
  %6087 = call float @dx.op.unary.f32(i32 13, float %6086)  ; Sin(value)
  %6088 = fadd fast float %6087, -1.000000e+00
  %6089 = fmul fast float %6088, 0x3FD45F3060000000
  %6090 = fmul fast float %6084, 0x401921FB60000000
  %6091 = fadd fast float %6090, 0x400921FB60000000
  %6092 = call float @dx.op.unary.f32(i32 13, float %6091)  ; Sin(value)
  %6093 = fadd fast float %6092, 0x3E7777A5C0000000
  %6094 = fmul fast float %6093, 0x3FC45F3060000000
  %6095 = fmul fast float %6084, 0x4022D97C80000000
  %6096 = fadd fast float %6095, 0x4012D97C80000000
  %6097 = call float @dx.op.unary.f32(i32 13, float %6096)  ; Sin(value)
  %6098 = fadd fast float %6097, 1.000000e+00
  %6099 = fmul fast float %6098, 0x3FBB2995E0000000
  %6100 = fmul fast float %6084, 0x402921FB60000000
  %6101 = fadd fast float %6100, 0x401921FB60000000
  %6102 = call float @dx.op.unary.f32(i32 13, float %6101)  ; Sin(value)
  %6103 = fadd fast float %6102, 0xBE8777A5C0000000
  %6104 = fmul fast float %6103, 0x3FB45F3060000000
  %6105 = call float @dx.op.dot4.f32(i32 56, float %6079, float %6080, float %6081, float %6082, float %6089, float %6094, float %6099, float %6104)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6106 = fmul fast float %6105, 0xBFF7154760000000
  %6107 = call float @dx.op.unary.f32(i32 21, float %6106)  ; Exp(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  br label %6109

; <label>:6109                                    ; preds = %6077, %6073
  %6110 = phi float [ %6108, %6077 ], [ 1.000000e+00, %6073 ]
  %6111 = fadd fast float %6110, -1.000000e+00
  %6112 = fmul fast float %6111, %6071
  %6113 = fadd fast float %6112, 1.000000e+00
  br label %6114

; <label>:6114                                    ; preds = %6109, %6015
  %6115 = phi float [ %6113, %6109 ], [ 1.000000e+00, %6015 ]
  %6116 = fmul fast float %6115, %6011
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6120 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6121 = fadd fast float %6118, %193
  %6122 = fadd fast float %6119, %194
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6125 = fsub fast float -0.000000e+00, %6121
  %6126 = fsub fast float -0.000000e+00, %6122
  %6127 = fsub fast float %5131, %6120
  %6128 = fadd fast float %6127, %6124
  %6129 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6125, float %6126, float %6128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %6131 = fdiv fast float 1.000000e+00, %6130
  %6132 = fmul fast float %6131, %6129
  %6133 = fmul fast float %5348, %6132
  %6134 = fmul fast float %5349, %6132
  %6135 = fadd fast float %6133, %6121
  %6136 = fadd fast float %6134, %6122
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = fsub fast float %6135, %6138
  %6141 = fsub fast float %6136, %6139
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 3
  %6145 = fmul fast float %6140, %6143
  %6146 = fmul fast float %6141, %6144
  %6147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.i32 %6147, 3
  %6149 = icmp eq i32 %6148, 0
  br i1 %6149, label %6155, label %6150

; <label>:6150                                    ; preds = %6114
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6145, float %6146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  br label %6160

; <label>:6155                                    ; preds = %6114
  %6156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6145, float %6146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6157 = extractvalue %dx.types.ResRet.f32 %6156, 0
  %6158 = extractvalue %dx.types.ResRet.f32 %6156, 1
  %6159 = extractvalue %dx.types.ResRet.f32 %6156, 2
  br label %6160

; <label>:6160                                    ; preds = %6155, %6150
  %6161 = phi float [ %6152, %6150 ], [ %6157, %6155 ]
  %6162 = phi float [ %6153, %6150 ], [ %6158, %6155 ]
  %6163 = phi float [ %6154, %6150 ], [ %6159, %6155 ]
  %6164 = extractvalue %dx.types.CBufRet.f32 %6123, 2
  %6165 = fmul fast float %6164, %6161
  %6166 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6167 = fsub fast float %6132, %6166
  %6168 = fsub fast float %6167, %6165
  %6169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6168)  ; FMax(a,b)
  %6170 = fmul fast float %6169, %6162
  %6171 = call float @dx.op.binary.f32(i32 36, float %6163, float %6170)  ; FMin(a,b)
  %6172 = fmul fast float %6171, 0xBFF7154760000000
  %6173 = call float @dx.op.unary.f32(i32 21, float %6172)  ; Exp(value)
  %6174 = fmul fast float %6116, %6173
  br label %6175

; <label>:6175                                    ; preds = %6160, %6010
  %6176 = phi float [ %6174, %6160 ], [ %6011, %6010 ]
  %6177 = call float @dx.op.binary.f32(i32 36, float %6176, float %6176)  ; FMin(a,b)
  %6178 = call float @dx.op.binary.f32(i32 36, float %6176, float %6177)  ; FMin(a,b)
  %6179 = fcmp fast ogt float %6178, 0.000000e+00
  br i1 %6179, label %6180, label %6431, !dx.controlflow.hints !121

; <label>:6180                                    ; preds = %6175
  %6181 = fmul fast float %6176, %5359
  %6182 = fmul fast float %6176, %5360
  %6183 = fmul fast float %6176, %5361
  %6184 = fsub fast float %195, %4345
  %6185 = fcmp fast ogt float %6184, 0.000000e+00
  %6186 = fmul fast float %5348, 5.120000e+02
  %6187 = fmul fast float %5349, 5.120000e+02
  %6188 = fmul fast float %5350, 5.120000e+02
  %6189 = fadd fast float %6188, %195
  %6190 = fsub fast float %4345, %6189
  %6191 = fmul fast float %6190, 2.000000e+00
  %6192 = fadd fast float %6191, %6189
  %6193 = select i1 %6185, float %6192, float %6189
  %6194 = fsub fast float %6193, %195
  %6195 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6194, float %6186, float %6187, float %6194)  ; Dot3(ax,ay,az,bx,by,bz)
  %6196 = call float @dx.op.unary.f32(i32 25, float %6195)  ; Rsqrt(value)
  %6197 = fmul fast float %6196, %6186
  %6198 = fmul fast float %6196, %6187
  %6199 = fmul fast float %6196, %6194
  %6200 = fsub fast float %4345, %195
  %6201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6200)  ; Dot3(ax,ay,az,bx,by,bz)
  %6202 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6197, float %6198, float %6199)  ; Dot3(ax,ay,az,bx,by,bz)
  %6203 = fdiv fast float 1.000000e+00, %6202
  %6204 = fmul fast float %6203, %6201
  %6205 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6184, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6206 = fcmp fast ogt float %6205, 0.000000e+00
  %6207 = fcmp fast olt float %6205, 0.000000e+00
  %6208 = zext i1 %6206 to i32
  %6209 = zext i1 %6207 to i32
  %6210 = sub nsw i32 %6208, %6209
  %6211 = sitofp i32 %6210 to float
  %6212 = fsub fast float %6193, %4345
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6212, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = fcmp fast ogt float %6213, 0.000000e+00
  %6215 = fcmp fast olt float %6213, 0.000000e+00
  %6216 = zext i1 %6214 to i32
  %6217 = zext i1 %6215 to i32
  %6218 = sub nsw i32 %6216, %6217
  %6219 = sitofp i32 %6218 to float
  %6220 = fcmp fast une float %6211, %6219
  br i1 %6220, label %6221, label %6231

; <label>:6221                                    ; preds = %6180
  %6222 = fmul fast float %6204, %6199
  %6223 = fmul fast float %6204, %6198
  %6224 = fmul fast float %6204, %6197
  %6225 = fmul fast float %6224, %6224
  %6226 = fmul fast float %6223, %6223
  %6227 = fadd fast float %6225, %6226
  %6228 = fmul fast float %6222, %6222
  %6229 = fadd fast float %6227, %6228
  %6230 = call float @dx.op.unary.f32(i32 24, float %6229)  ; Sqrt(value)
  br label %6241

; <label>:6231                                    ; preds = %6180
  %6232 = icmp slt i32 %6210, 0
  br i1 %6232, label %6233, label %6241

; <label>:6233                                    ; preds = %6231
  %6234 = fsub fast float %195, %6193
  %6235 = fmul fast float %6186, %6186
  %6236 = fmul fast float %6187, %6187
  %6237 = fadd fast float %6235, %6236
  %6238 = fmul fast float %6234, %6234
  %6239 = fadd fast float %6237, %6238
  %6240 = call float @dx.op.unary.f32(i32 24, float %6239)  ; Sqrt(value)
  br label %6241

; <label>:6241                                    ; preds = %6233, %6231, %6221
  %6242 = phi float [ %6230, %6221 ], [ %6240, %6233 ], [ 0.000000e+00, %6231 ]
  %6243 = fsub fast float -0.000000e+00, %6242
  %6244 = select i1 %6185, float -0.000000e+00, float %6243
  %6245 = fmul fast float %4346, 0x3FF7154760000000
  %6246 = fmul fast float %6245, %6244
  %6247 = fmul fast float %4347, 0x3FF7154760000000
  %6248 = fmul fast float %6247, %6244
  %6249 = fmul fast float %4348, 0x3FF7154760000000
  %6250 = fmul fast float %6249, %6244
  %6251 = call float @dx.op.unary.f32(i32 21, float %6246)  ; Exp(value)
  %6252 = call float @dx.op.unary.f32(i32 21, float %6248)  ; Exp(value)
  %6253 = call float @dx.op.unary.f32(i32 21, float %6250)  ; Exp(value)
  %6254 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6255 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6256 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  %6257 = fmul fast float %6181, %6254
  %6258 = fmul fast float %6182, %6255
  %6259 = fmul fast float %6183, %6256
  %6260 = fsub fast float %5348, %226
  %6261 = fsub fast float %5349, %227
  %6262 = fsub fast float %5350, %228
  %6263 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6262, float %6260, float %6261, float %6262)  ; Dot3(ax,ay,az,bx,by,bz)
  %6264 = call float @dx.op.unary.f32(i32 25, float %6263)  ; Rsqrt(value)
  %6265 = fmul fast float %6264, %6260
  %6266 = fmul fast float %6264, %6261
  %6267 = fmul fast float %6264, %6262
  %6268 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %5126, float %5127, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6269 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %6265, float %6266, float %6267)  ; Dot3(ax,ay,az,bx,by,bz)
  %6270 = call float @dx.op.unary.f32(i32 7, float %6268)  ; Saturate(value)
  %6271 = fmul fast float %6270, %6270
  %6272 = fmul fast float %6271, %5147
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = fmul fast float %6273, %6270
  %6275 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %6265, float %6266, float %6267)  ; Dot3(ax,ay,az,bx,by,bz)
  %6276 = fmul fast float %6275, %6275
  %6277 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6278 = fsub fast float 1.000000e+00, %5129
  %6279 = call float @dx.op.binary.f32(i32 35, float %6278, float 0x3F847AE140000000)  ; FMax(a,b)
  %6280 = fmul fast float %6279, %6279
  %6281 = fmul fast float %6280, %6280
  %6282 = fsub fast float 1.000000e+00, %6281
  %6283 = fmul fast float %5134, %5134
  %6284 = fmul fast float %6283, %6282
  %6285 = fadd fast float %6284, %6281
  %6286 = bitcast float %6285 to i32
  %6287 = ashr i32 %6286, 1
  %6288 = add nsw i32 %6287, 532487669
  %6289 = bitcast i32 %6288 to float
  %6290 = fadd fast float %6289, %5134
  %6291 = fmul fast float %6281, %6276
  %6292 = fsub fast float 1.000000e+00, %6276
  %6293 = fadd fast float %6292, %6291
  %6294 = fmul fast float %6277, %6277
  %6295 = fmul fast float %6294, %6282
  %6296 = fadd fast float %6295, %6281
  %6297 = bitcast float %6296 to i32
  %6298 = ashr i32 %6297, 1
  %6299 = add nsw i32 %6298, 532487669
  %6300 = bitcast i32 %6299 to float
  %6301 = fadd fast float %6300, %6277
  %6302 = fmul fast float %6293, %6293
  %6303 = fmul fast float %6302, %6290
  %6304 = fmul fast float %6303, %6301
  %6305 = fdiv fast float 0x3FF0A00000000000, %6304
  %6306 = fmul fast float %6305, %6281
  %6307 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6308 = fsub fast float 1.000000e+00, %6307
  %6309 = bitcast float %6308 to i32
  %6310 = sitofp i32 %6309 to float
  %6311 = fmul fast float %6310, 5.000000e+00
  %6312 = fadd fast float %6311, 0xC1EFBF8940000000
  %6313 = fptosi float %6312 to i32
  %6314 = bitcast i32 %6313 to float
  %6315 = fsub fast float 1.000000e+00, %5123
  %6316 = fsub fast float 1.000000e+00, %5124
  %6317 = fsub fast float 1.000000e+00, %5132
  %6318 = fmul fast float %6314, %6315
  %6319 = fmul fast float %6314, %6316
  %6320 = fmul fast float %6314, %6317
  %6321 = fadd fast float %6318, %5123
  %6322 = fadd fast float %6319, %5124
  %6323 = fadd fast float %6320, %5132
  br i1 %5259, label %6324, label %6347

; <label>:6324                                    ; preds = %6241
  %6325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3921, float %6307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6326 = extractvalue %dx.types.ResRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.ResRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.ResRet.f32 %6325, 2
  %6329 = fadd fast float %6326, -5.000000e-01
  %6330 = fadd fast float %6327, -5.000000e-01
  %6331 = fadd fast float %6328, -5.000000e-01
  %6332 = fmul fast float %5123, 4.000000e+00
  %6333 = fmul fast float %6332, %6315
  %6334 = fmul fast float %6333, %6329
  %6335 = fmul fast float %5124, 4.000000e+00
  %6336 = fmul fast float %6335, %6316
  %6337 = fmul fast float %6336, %6330
  %6338 = fmul fast float %5132, 4.000000e+00
  %6339 = fmul fast float %6338, %6317
  %6340 = fmul fast float %6339, %6331
  %6341 = fadd fast float %6334, %6321
  %6342 = fadd fast float %6337, %6322
  %6343 = fadd fast float %6340, %6323
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6345 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  br label %6347

; <label>:6347                                    ; preds = %6324, %6241
  %6348 = phi float [ %6344, %6324 ], [ %6321, %6241 ]
  %6349 = phi float [ %6345, %6324 ], [ %6322, %6241 ]
  %6350 = phi float [ %6346, %6324 ], [ %6323, %6241 ]
  %6351 = fmul fast float %6268, 9.843750e-01
  %6352 = fadd fast float %6351, 7.812500e-03
  %6353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6352, float %5249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6354 = extractvalue %dx.types.ResRet.f32 %6353, 2
  %6355 = extractvalue %dx.types.ResRet.f32 %6353, 3
  %6356 = fmul fast float %6354, %5123
  %6357 = fmul fast float %6354, %5124
  %6358 = fmul fast float %6354, %5132
  %6359 = fadd fast float %6356, %6355
  %6360 = fadd fast float %6357, %6355
  %6361 = fadd fast float %6358, %6355
  br i1 %5259, label %6362, label %6385

; <label>:6362                                    ; preds = %6347
  %6363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3921, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.ResRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.ResRet.f32 %6363, 2
  %6367 = fadd fast float %6364, -5.000000e-01
  %6368 = fadd fast float %6365, -5.000000e-01
  %6369 = fadd fast float %6366, -5.000000e-01
  %6370 = fmul fast float %5123, 4.000000e+00
  %6371 = fmul fast float %6370, %6315
  %6372 = fmul fast float %6371, %6367
  %6373 = fmul fast float %5124, 4.000000e+00
  %6374 = fmul fast float %6373, %6316
  %6375 = fmul fast float %6374, %6368
  %6376 = fmul fast float %5132, 4.000000e+00
  %6377 = fmul fast float %6376, %6317
  %6378 = fmul fast float %6377, %6369
  %6379 = fadd fast float %6372, %6359
  %6380 = fadd fast float %6375, %6360
  %6381 = fadd fast float %6378, %6361
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6383 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  %6384 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  br label %6385

; <label>:6385                                    ; preds = %6362, %6347
  %6386 = phi float [ %6382, %6362 ], [ %6359, %6347 ]
  %6387 = phi float [ %6383, %6362 ], [ %6360, %6347 ]
  %6388 = phi float [ %6384, %6362 ], [ %6361, %6347 ]
  %6389 = call float @dx.op.binary.f32(i32 35, float %6387, float %6388)  ; FMax(a,b)
  %6390 = call float @dx.op.binary.f32(i32 35, float %6386, float %6389)  ; FMax(a,b)
  %6391 = fsub fast float 1.000000e+00, %6390
  %6392 = fmul fast float %6348, %6306
  %6393 = fmul fast float %6349, %6306
  %6394 = fmul fast float %6350, %6306
  %6395 = fsub fast float 1.000000e+00, %6269
  %6396 = bitcast float %6395 to i32
  %6397 = sitofp i32 %6396 to float
  %6398 = fmul fast float %6397, 5.000000e+00
  %6399 = fadd fast float %6398, 0xC1EFBF8940000000
  %6400 = fptosi float %6399 to i32
  %6401 = bitcast i32 %6400 to float
  %6402 = fmul fast float %6401, %3922
  %6403 = fmul fast float %6391, %6402
  %6404 = fmul fast float %6403, %5309
  %6405 = fmul fast float %6403, %5310
  %6406 = fmul fast float %6403, %5311
  %6407 = fadd fast float %6404, %6392
  %6408 = fadd fast float %6405, %6393
  %6409 = fadd fast float %6406, %6394
  %6410 = fmul fast float %6274, %6257
  %6411 = fmul fast float %6410, %6391
  %6412 = fmul fast float %6274, %6258
  %6413 = fmul fast float %6412, %6391
  %6414 = fmul fast float %6274, %6259
  %6415 = fmul fast float %6414, %6391
  %6416 = fmul fast float %6410, %6407
  %6417 = fmul fast float %6412, %6408
  %6418 = fmul fast float %6414, %6409
  %6419 = fadd fast float %6411, %5293
  %6420 = fmul fast float %6419, %3948
  %6421 = fadd fast float %6413, %5294
  %6422 = fmul fast float %6421, %3948
  %6423 = fadd fast float %6415, %5295
  %6424 = fmul fast float %6423, %3948
  %6425 = fadd fast float %6416, %5336
  %6426 = fmul fast float %6425, %3948
  %6427 = fadd fast float %6417, %5339
  %6428 = fmul fast float %6427, %3948
  %6429 = fadd fast float %6418, %5342
  %6430 = fmul fast float %6429, %3948
  br label %6431

; <label>:6431                                    ; preds = %6385, %6175, %5286
  %6432 = phi float [ %5337, %5286 ], [ %5337, %6175 ], [ %6426, %6385 ]
  %6433 = phi float [ %5340, %5286 ], [ %5340, %6175 ], [ %6428, %6385 ]
  %6434 = phi float [ %5343, %5286 ], [ %5343, %6175 ], [ %6430, %6385 ]
  %6435 = phi float [ %5332, %5286 ], [ %5332, %6175 ], [ %6420, %6385 ]
  %6436 = phi float [ %5333, %5286 ], [ %5333, %6175 ], [ %6422, %6385 ]
  %6437 = phi float [ %5334, %5286 ], [ %5334, %6175 ], [ %6424, %6385 ]
  %6438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.i32 %6438, 0
  %6440 = icmp eq i32 %6439, 0
  br i1 %6440, label %7061, label %6441

; <label>:6441                                    ; preds = %6431
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 3
  %6445 = fmul fast float %6443, %106
  %6446 = fmul fast float %6444, %107
  %6447 = fptoui float %6445 to i32
  %6448 = fptoui float %6446 to i32
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6452 = extractvalue %dx.types.CBufRet.f32 %6449, 3
  %6453 = fadd fast float %97, -4.000000e+00
  %6454 = call float @dx.op.binary.f32(i32 35, float %6453, float 0.000000e+00)  ; FMax(a,b)
  %6455 = fadd fast float %6454, %6450
  %6456 = fmul fast float %6455, %6451
  %6457 = call float @dx.op.unary.f32(i32 23, float %6456)  ; Log(value)
  %6458 = fmul fast float %6457, %6452
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6461 = fmul fast float %6458, %6460
  %6462 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.i32 %6463, 1
  %6465 = add i32 %6464, -1
  %6466 = uitofp i32 %6464 to float
  %6467 = fmul fast float %6466, %6462
  %6468 = fptoui float %6467 to i32
  %6469 = call i32 @dx.op.binary.i32(i32 40, i32 %6468, i32 %6465)  ; UMin(a,b)
  %6470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.i32 %6470, 2
  %6472 = extractvalue %dx.types.CBufRet.i32 %6470, 3
  %6473 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6448, i32 %6471, i32 %6447)  ; UMad(a,b,c)
  %6474 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6469, i32 %6472, i32 %6473)  ; UMad(a,b,c)
  %6475 = add nsw i32 %6439, -1
  %6476 = call i32 @dx.op.binary.i32(i32 37, i32 %6475, i32 0)  ; IMax(a,b)
  %6477 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6478 = fptoui float %6477 to i32
  %6479 = lshr i32 %6478, 5
  %6480 = call i32 @dx.op.binary.i32(i32 40, i32 %6479, i32 8191)  ; UMin(a,b)
  %6481 = shl i32 %6480, 2
  %6482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6481, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.i32 %6482, 0
  %6484 = lshr i32 %6483, 16
  %6485 = and i32 %6483, 65535
  %6486 = lshr i32 %6483, 21
  %6487 = lshr i32 %6485, 5
  %6488 = call i32 @dx.op.binary.i32(i32 40, i32 %6487, i32 %6476)  ; UMin(a,b)
  %6489 = icmp ugt i32 %6486, %6488
  br i1 %6489, label %7061, label %6490

; <label>:6490                                    ; preds = %6441
  br label %6491

; <label>:6491                                    ; preds = %7051, %6490
  %6492 = phi i32 [ %7058, %7051 ], [ %6486, %6490 ]
  %6493 = phi float [ %7052, %7051 ], [ %6432, %6490 ]
  %6494 = phi float [ %7053, %7051 ], [ %6433, %6490 ]
  %6495 = phi float [ %7054, %7051 ], [ %6434, %6490 ]
  %6496 = phi float [ %7055, %7051 ], [ %6435, %6490 ]
  %6497 = phi float [ %7056, %7051 ], [ %6436, %6490 ]
  %6498 = phi float [ %7057, %7051 ], [ %6437, %6490 ]
  %6499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.i32 %6499, 0
  %6501 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6474, i32 %6500, i32 %6492)  ; UMad(a,b,c)
  %6502 = shl i32 %6501, 2
  %6503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6502, i32 undef)  ; BufferLoad(srv,index,wot)
  %6504 = extractvalue %dx.types.ResRet.i32 %6503, 0
  %6505 = shl i32 %6492, 5
  %6506 = sub nsw i32 %6484, %6505
  %6507 = call i32 @dx.op.binary.i32(i32 37, i32 %6506, i32 0)  ; IMax(a,b)
  %6508 = call i32 @dx.op.binary.i32(i32 38, i32 %6507, i32 31)  ; IMin(a,b)
  %6509 = sub nsw i32 1, %6484
  %6510 = add nsw i32 %6509, %6485
  %6511 = call i32 @dx.op.binary.i32(i32 37, i32 %6510, i32 0)  ; IMax(a,b)
  %6512 = call i32 @dx.op.binary.i32(i32 38, i32 %6511, i32 32)  ; IMin(a,b)
  %6513 = and i32 %6512, 31
  %6514 = shl i32 -1, %6513
  %6515 = xor i32 %6514, -1
  %6516 = and i32 %6508, 31
  %6517 = shl i32 %6515, %6516
  %6518 = icmp eq i32 %6512, 32
  %6519 = select i1 %6518, i32 -1, i32 %6517
  %6520 = and i32 %6519, %6504
  %6521 = icmp eq i32 %6520, 0
  br i1 %6521, label %7051, label %6522

; <label>:6522                                    ; preds = %6491
  br label %6523

; <label>:6523                                    ; preds = %6657, %6522
  %6524 = phi i32 [ %6535, %6657 ], [ %6520, %6522 ]
  %6525 = phi float [ %6658, %6657 ], [ %6493, %6522 ]
  %6526 = phi float [ %6659, %6657 ], [ %6494, %6522 ]
  %6527 = phi float [ %6660, %6657 ], [ %6495, %6522 ]
  %6528 = phi float [ %6661, %6657 ], [ %6496, %6522 ]
  %6529 = phi float [ %6662, %6657 ], [ %6497, %6522 ]
  %6530 = phi float [ %6663, %6657 ], [ %6498, %6522 ]
  %6531 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6524)  ; FirstbitLo(value)
  %6532 = add i32 %6531, %6505
  %6533 = and i32 %6531, 31
  %6534 = shl i32 1, %6533
  %6535 = xor i32 %6534, %6524
  %6536 = mul i32 %6532, 112
  %6537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6536, i32 undef)  ; BufferLoad(srv,index,wot)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.ResRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.ResRet.f32 %6537, 2
  %6541 = or i32 %6536, 12
  %6542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6541, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 0
  %6544 = add i32 %6536, 16
  %6545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6544, i32 undef)  ; BufferLoad(srv,index,wot)
  %6546 = extractvalue %dx.types.ResRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.ResRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.ResRet.f32 %6545, 2
  %6549 = add i32 %6536, 28
  %6550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6549, i32 undef)  ; BufferLoad(srv,index,wot)
  %6551 = extractvalue %dx.types.ResRet.i32 %6550, 0
  %6552 = add i32 %6536, 44
  %6553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6552, i32 undef)  ; BufferLoad(srv,index,wot)
  %6554 = extractvalue %dx.types.ResRet.f32 %6553, 0
  %6555 = add i32 %6536, 48
  %6556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6555, i32 undef)  ; BufferLoad(srv,index,wot)
  %6557 = extractvalue %dx.types.ResRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.ResRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.ResRet.f32 %6556, 2
  %6560 = extractvalue %dx.types.ResRet.f32 %6556, 3
  %6561 = add i32 %6536, 64
  %6562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6561, i32 undef)  ; BufferLoad(srv,index,wot)
  %6563 = extractvalue %dx.types.ResRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.ResRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.ResRet.f32 %6562, 2
  %6566 = extractvalue %dx.types.ResRet.f32 %6562, 3
  %6567 = add i32 %6536, 80
  %6568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6567, i32 undef)  ; BufferLoad(srv,index,wot)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 1
  %6570 = extractvalue %dx.types.ResRet.f32 %6568, 2
  %6571 = add i32 %6536, 92
  %6572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6571, i32 undef)  ; BufferLoad(srv,index,wot)
  %6573 = extractvalue %dx.types.ResRet.i32 %6572, 0
  %6574 = call float @dx.op.dot3.f32(i32 55, float %6538, float %6539, float %6540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6575 = select i1 %297, float %6569, float %6538
  %6576 = select i1 %297, float %6574, float %6539
  %6577 = select i1 %297, float %6570, float %6540
  %6578 = and i32 %6573, 65535
  %6579 = uitofp i32 %6578 to float
  %6580 = lshr i32 %6573, 16
  %6581 = uitofp i32 %6580 to float
  %6582 = and i32 %6551, 65535
  %6583 = and i32 %6551, 50331648
  %6584 = icmp eq i32 %6583, 33554432
  %6585 = fsub fast float %6557, %193
  %6586 = fsub fast float %6558, %194
  %6587 = fsub fast float %6559, %195
  %6588 = call float @dx.op.dot3.f32(i32 55, float %6585, float %6586, float %6587, float %6585, float %6586, float %6587)  ; Dot3(ax,ay,az,bx,by,bz)
  %6589 = call float @dx.op.unary.f32(i32 24, float %6588)  ; Sqrt(value)
  %6590 = fdiv fast float 1.000000e+00, %6589
  %6591 = fmul fast float %6590, %6585
  %6592 = fmul fast float %6590, %6586
  %6593 = fmul fast float %6590, %6587
  %6594 = fadd fast float %6589, %6543
  %6595 = fdiv fast float 1.000000e+00, %6594
  %6596 = fmul float %6554, %6595
  %6597 = fmul float %6596, %6596
  %6598 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  br i1 %6584, label %6599, label %6620

; <label>:6599                                    ; preds = %6523
  %6600 = fmul fast float %6565, %6546
  %6601 = fmul fast float %6565, %6547
  %6602 = fmul fast float %6565, %6548
  %6603 = fadd fast float %6585, %6600
  %6604 = fadd fast float %6586, %6601
  %6605 = fadd fast float %6587, %6602
  %6606 = call float @dx.op.dot3.f32(i32 55, float %6603, float %6604, float %6605, float %6603, float %6604, float %6605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6607 = call float @dx.op.unary.f32(i32 25, float %6606)  ; Rsqrt(value)
  %6608 = fmul fast float %6607, %6603
  %6609 = fmul fast float %6607, %6604
  %6610 = fmul fast float %6607, %6605
  %6611 = fsub fast float %193, %6557
  %6612 = fsub fast float %194, %6558
  %6613 = fsub fast float %195, %6559
  %6614 = fsub fast float -0.000000e+00, %6611
  %6615 = fsub fast float -0.000000e+00, %6612
  %6616 = fsub fast float -0.000000e+00, %6613
  %6617 = call float @dx.op.dot3.f32(i32 55, float %6614, float %6615, float %6616, float %6546, float %6547, float %6548)  ; Dot3(ax,ay,az,bx,by,bz)
  %6618 = fcmp fast ogt float %6617, 0.000000e+00
  %6619 = uitofp i1 %6618 to float
  br label %6620

; <label>:6620                                    ; preds = %6599, %6523
  %6621 = phi float [ %6619, %6599 ], [ 1.000000e+00, %6523 ]
  %6622 = phi float [ %6608, %6599 ], [ %6591, %6523 ]
  %6623 = phi float [ %6609, %6599 ], [ %6592, %6523 ]
  %6624 = phi float [ %6610, %6599 ], [ %6593, %6523 ]
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6546, float %6547, float %6548, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = fmul fast float %6625, %6625
  %6627 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6628 = fsub fast float 1.000000e+00, %6627
  %6629 = fmul fast float %6628, 5.000000e-01
  %6630 = fcmp fast ogt float %6625, 0.000000e+00
  %6631 = fsub fast float 1.000000e+00, %6629
  %6632 = select i1 %6630, float %6629, float %6631
  %6633 = fmul fast float %6632, %6581
  %6634 = fadd fast float %6633, %6579
  %6635 = fmul fast float %6634, 0x3EF0001000000000
  %6636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6635, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6637 = extractvalue %dx.types.ResRet.f32 %6636, 0
  %6638 = fmul fast float %6625, %6563
  %6639 = fadd fast float %6638, %6564
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = select i1 %6584, float 1.000000e+00, float %6640
  %6642 = select i1 %6584, float %6640, float 1.000000e+00
  %6643 = fmul fast float %6589, %6560
  %6644 = fsub fast float 1.000000e+00, %6643
  %6645 = fmul fast float %6644, %6566
  %6646 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6647 = fmul fast float %6646, %6642
  %6648 = fmul fast float %6647, 2.000000e+00
  %6649 = fsub fast float 3.000000e+00, %6648
  %6650 = fmul fast float %6637, %6621
  %6651 = fmul fast float %6647, %6647
  %6652 = fmul fast float %6651, %6650
  %6653 = fmul fast float %6652, %6649
  %6654 = call float @dx.op.binary.f32(i32 36, float %6653, float %6653)  ; FMin(a,b)
  %6655 = call float @dx.op.binary.f32(i32 36, float %6653, float %6654)  ; FMin(a,b)
  %6656 = fcmp fast ogt float %6655, 0.000000e+00
  br i1 %6656, label %6665, label %6657, !dx.controlflow.hints !122

; <label>:6657                                    ; preds = %7007, %6765, %6620
  %6658 = phi float [ %6525, %6765 ], [ %6525, %6620 ], [ %7047, %7007 ]
  %6659 = phi float [ %6526, %6765 ], [ %6526, %6620 ], [ %7048, %7007 ]
  %6660 = phi float [ %6527, %6765 ], [ %6527, %6620 ], [ %7049, %7007 ]
  %6661 = phi float [ %6528, %6765 ], [ %6528, %6620 ], [ %7041, %7007 ]
  %6662 = phi float [ %6529, %6765 ], [ %6529, %6620 ], [ %7042, %7007 ]
  %6663 = phi float [ %6530, %6765 ], [ %6530, %6620 ], [ %7043, %7007 ]
  %6664 = icmp eq i32 %6524, %6534
  br i1 %6664, label %7050, label %6523

; <label>:6665                                    ; preds = %6620
  %6666 = icmp eq i32 %6582, 255
  br i1 %6666, label %6765, label %6667, !dx.controlflow.hints !123

; <label>:6667                                    ; preds = %6665
  %6668 = mul nuw nsw i32 %6582, 176
  %6669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6668, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = extractvalue %dx.types.ResRet.f32 %6669, 3
  %6674 = add nuw nsw i32 %6668, 16
  %6675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6674, i32 undef)  ; BufferLoad(srv,index,wot)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.ResRet.f32 %6675, 1
  %6678 = add nuw nsw i32 %6668, 32
  %6679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6678, i32 undef)  ; BufferLoad(srv,index,wot)
  %6680 = extractvalue %dx.types.ResRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.ResRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.ResRet.f32 %6679, 2
  %6683 = add nuw nsw i32 %6668, 48
  %6684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6683, i32 undef)  ; BufferLoad(srv,index,wot)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.ResRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.ResRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.ResRet.f32 %6684, 3
  %6689 = add nuw nsw i32 %6668, 64
  %6690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6689, i32 undef)  ; BufferLoad(srv,index,wot)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.ResRet.f32 %6690, 3
  %6695 = add nuw nsw i32 %6668, 80
  %6696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6695, i32 undef)  ; BufferLoad(srv,index,wot)
  %6697 = extractvalue %dx.types.ResRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.ResRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.ResRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.ResRet.f32 %6696, 3
  %6701 = add nuw nsw i32 %6668, 96
  %6702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6701, i32 undef)  ; BufferLoad(srv,index,wot)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.ResRet.f32 %6702, 2
  %6706 = extractvalue %dx.types.ResRet.f32 %6702, 3
  %6707 = bitcast float %6677 to i32
  %6708 = fmul fast float %6682, %113
  %6709 = fmul fast float %6682, %114
  %6710 = fmul fast float %6682, %115
  %6711 = fadd fast float %6708, %193
  %6712 = fadd fast float %6709, %194
  %6713 = fadd fast float %6710, %195
  %6714 = fmul fast float %6711, %6685
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6691, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6697, float %6715)  ; FMad(a,b,c)
  %6717 = fadd fast float %6716, %6703
  %6718 = fmul fast float %6711, %6686
  %6719 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6692, float %6718)  ; FMad(a,b,c)
  %6720 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6698, float %6719)  ; FMad(a,b,c)
  %6721 = fadd fast float %6720, %6704
  %6722 = fmul fast float %6711, %6687
  %6723 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6693, float %6722)  ; FMad(a,b,c)
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6699, float %6723)  ; FMad(a,b,c)
  %6725 = fadd fast float %6724, %6705
  %6726 = fmul fast float %6711, %6688
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6694, float %6726)  ; FMad(a,b,c)
  %6728 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6700, float %6727)  ; FMad(a,b,c)
  %6729 = fadd fast float %6728, %6706
  %6730 = fdiv fast float %6717, %6729
  %6731 = fdiv fast float %6721, %6729
  %6732 = fdiv fast float %6725, %6729
  %6733 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6732)  ; FMax(a,b)
  %6734 = fmul fast float %308, 0x401921FB60000000
  %6735 = call float @dx.op.unary.f32(i32 13, float %6734)  ; Sin(value)
  %6736 = call float @dx.op.unary.f32(i32 12, float %6734)  ; Cos(value)
  %6737 = fsub fast float -0.000000e+00, %6735
  %6738 = fmul fast float %6672, 5.000000e-01
  %6739 = call float @dx.op.dot2.f32(i32 54, float %308, float %308, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6740 = call float @dx.op.unary.f32(i32 22, float %6739)  ; Frc(value)
  %6741 = fmul fast float %6740, 0x404A7DD040000000
  %6742 = call float @dx.op.unary.f32(i32 22, float %6741)  ; Frc(value)
  %6743 = fmul fast float %6742, %6681
  %6744 = fadd fast float %6743, %6738
  %6745 = call float @dx.op.tertiary.f32(i32 46, float %6744, float %6737, float 0.000000e+00)  ; FMad(a,b,c)
  %6746 = call float @dx.op.tertiary.f32(i32 46, float %6744, float %6736, float 0.000000e+00)  ; FMad(a,b,c)
  %6747 = fadd fast float %6745, %6730
  %6748 = fadd fast float %6746, %6731
  %6749 = fmul fast float %6747, %6676
  %6750 = fmul fast float %6748, %6676
  %6751 = call float @dx.op.binary.f32(i32 35, float %6749, float %6672)  ; FMax(a,b)
  %6752 = call float @dx.op.binary.f32(i32 35, float %6750, float %6672)  ; FMax(a,b)
  %6753 = call float @dx.op.binary.f32(i32 36, float %6751, float %6673)  ; FMin(a,b)
  %6754 = call float @dx.op.binary.f32(i32 36, float %6752, float %6673)  ; FMin(a,b)
  %6755 = fadd fast float %6753, %6670
  %6756 = fadd fast float %6754, %6671
  %6757 = uitofp i32 %6707 to float
  %6758 = fadd fast float %6733, %6680
  %6759 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6755, float %6756, float %6757, float undef, i32 0, i32 0, i32 undef, float %6758)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = fadd fast float %6760, -1.000000e+00
  %6762 = fmul fast float %6761, %6641
  %6763 = fadd fast float %6762, 1.000000e+00
  %6764 = fmul fast float %6763, %6653
  br label %6765

; <label>:6765                                    ; preds = %6667, %6665
  %6766 = phi float [ %6764, %6667 ], [ %6653, %6665 ]
  %6767 = call float @dx.op.binary.f32(i32 36, float %6766, float %6766)  ; FMin(a,b)
  %6768 = call float @dx.op.binary.f32(i32 36, float %6766, float %6767)  ; FMin(a,b)
  %6769 = fcmp fast ogt float %6768, 0.000000e+00
  br i1 %6769, label %6770, label %6657, !dx.controlflow.hints !124

; <label>:6770                                    ; preds = %6765
  %6771 = fmul fast float %6766, %6575
  %6772 = fmul fast float %6766, %6576
  %6773 = fmul fast float %6766, %6577
  %6774 = fsub fast float %6559, %4345
  %6775 = fcmp fast ogt float %6774, 0.000000e+00
  %6776 = fsub fast float %195, %4345
  %6777 = fcmp fast ogt float %6776, 0.000000e+00
  %6778 = xor i1 %6777, %6775
  %6779 = fsub fast float %4345, %6559
  %6780 = fmul fast float %6779, 2.000000e+00
  %6781 = fadd fast float %6780, %6559
  %6782 = select i1 %6778, float %6559, float %6781
  %6783 = fsub fast float %6782, %195
  %6784 = call float @dx.op.dot3.f32(i32 55, float %6585, float %6586, float %6783, float %6585, float %6586, float %6783)  ; Dot3(ax,ay,az,bx,by,bz)
  %6785 = call float @dx.op.unary.f32(i32 25, float %6784)  ; Rsqrt(value)
  %6786 = fmul fast float %6785, %6585
  %6787 = fmul fast float %6785, %6586
  %6788 = fmul fast float %6785, %6783
  %6789 = fsub fast float %4345, %195
  %6790 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6789)  ; Dot3(ax,ay,az,bx,by,bz)
  %6791 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6786, float %6787, float %6788)  ; Dot3(ax,ay,az,bx,by,bz)
  %6792 = fdiv fast float 1.000000e+00, %6791
  %6793 = fmul fast float %6792, %6790
  %6794 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6776, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6795 = fcmp fast ogt float %6794, 0.000000e+00
  %6796 = fcmp fast olt float %6794, 0.000000e+00
  %6797 = zext i1 %6795 to i32
  %6798 = zext i1 %6796 to i32
  %6799 = sub nsw i32 %6797, %6798
  %6800 = sitofp i32 %6799 to float
  %6801 = fsub fast float %6782, %4345
  %6802 = call float @dx.op.dot3.f32(i32 55, float %6585, float %6586, float %6801, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6803 = fcmp fast ogt float %6802, 0.000000e+00
  %6804 = fcmp fast olt float %6802, 0.000000e+00
  %6805 = zext i1 %6803 to i32
  %6806 = zext i1 %6804 to i32
  %6807 = sub nsw i32 %6805, %6806
  %6808 = sitofp i32 %6807 to float
  %6809 = fcmp fast une float %6800, %6808
  br i1 %6809, label %6810, label %6820

; <label>:6810                                    ; preds = %6770
  %6811 = fmul fast float %6793, %6788
  %6812 = fmul fast float %6793, %6787
  %6813 = fmul fast float %6793, %6786
  %6814 = fmul fast float %6813, %6813
  %6815 = fmul fast float %6812, %6812
  %6816 = fadd fast float %6814, %6815
  %6817 = fmul fast float %6811, %6811
  %6818 = fadd fast float %6816, %6817
  %6819 = call float @dx.op.unary.f32(i32 24, float %6818)  ; Sqrt(value)
  br label %6832

; <label>:6820                                    ; preds = %6770
  %6821 = icmp slt i32 %6799, 0
  br i1 %6821, label %6822, label %6832

; <label>:6822                                    ; preds = %6820
  %6823 = fsub fast float %193, %6557
  %6824 = fsub fast float %194, %6558
  %6825 = fsub fast float %195, %6782
  %6826 = fmul fast float %6823, %6823
  %6827 = fmul fast float %6824, %6824
  %6828 = fadd fast float %6826, %6827
  %6829 = fmul fast float %6825, %6825
  %6830 = fadd fast float %6828, %6829
  %6831 = call float @dx.op.unary.f32(i32 24, float %6830)  ; Sqrt(value)
  br label %6832

; <label>:6832                                    ; preds = %6822, %6820, %6810
  %6833 = phi float [ %6819, %6810 ], [ %6831, %6822 ], [ 0.000000e+00, %6820 ]
  %6834 = and i1 %6777, %6775
  %6835 = fsub fast float -0.000000e+00, %6833
  %6836 = select i1 %6834, float -0.000000e+00, float %6835
  %6837 = fmul fast float %4346, 0x3FF7154760000000
  %6838 = fmul fast float %6837, %6836
  %6839 = fmul fast float %4347, 0x3FF7154760000000
  %6840 = fmul fast float %6839, %6836
  %6841 = fmul fast float %4348, 0x3FF7154760000000
  %6842 = fmul fast float %6841, %6836
  %6843 = call float @dx.op.unary.f32(i32 21, float %6838)  ; Exp(value)
  %6844 = call float @dx.op.unary.f32(i32 21, float %6840)  ; Exp(value)
  %6845 = call float @dx.op.unary.f32(i32 21, float %6842)  ; Exp(value)
  %6846 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6847 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6848 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6849 = fmul fast float %6771, %6846
  %6850 = fmul fast float %6772, %6847
  %6851 = fmul fast float %6773, %6848
  %6852 = fsub fast float %6591, %226
  %6853 = fsub fast float %6592, %227
  %6854 = fsub fast float %6593, %228
  %6855 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6853, float %6854, float %6852, float %6853, float %6854)  ; Dot3(ax,ay,az,bx,by,bz)
  %6856 = call float @dx.op.unary.f32(i32 25, float %6855)  ; Rsqrt(value)
  %6857 = fmul fast float %6856, %6852
  %6858 = fmul fast float %6856, %6853
  %6859 = fmul fast float %6856, %6854
  %6860 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6592, float %6593, float %5126, float %5127, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6861 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %6857, float %6858, float %6859)  ; Dot3(ax,ay,az,bx,by,bz)
  %6862 = call float @dx.op.unary.f32(i32 7, float %6860)  ; Saturate(value)
  %6863 = fmul fast float %6862, %6598
  %6864 = fmul fast float %6862, %6862
  %6865 = fmul fast float %6864, %5147
  %6866 = call float @dx.op.unary.f32(i32 7, float %6865)  ; Saturate(value)
  %6867 = fmul fast float %6863, %6866
  %6868 = bitcast float %6588 to i32
  %6869 = ashr i32 %6868, 1
  %6870 = sub nsw i32 1597463007, %6869
  %6871 = bitcast i32 %6870 to float
  %6872 = fmul fast float %6871, %6585
  %6873 = fmul fast float %6871, %6586
  %6874 = fmul fast float %6871, %6587
  %6875 = fsub fast float %6872, %226
  %6876 = fsub fast float %6873, %227
  %6877 = fsub fast float %6874, %228
  %6878 = call float @dx.op.dot3.f32(i32 55, float %6875, float %6876, float %6877, float %6875, float %6876, float %6877)  ; Dot3(ax,ay,az,bx,by,bz)
  %6879 = call float @dx.op.unary.f32(i32 25, float %6878)  ; Rsqrt(value)
  %6880 = fmul fast float %6875, %6879
  %6881 = fmul fast float %6876, %6879
  %6882 = fmul fast float %6877, %6879
  %6883 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %6880, float %6881, float %6882)  ; Dot3(ax,ay,az,bx,by,bz)
  %6884 = fmul fast float %6883, %6883
  %6885 = call float @dx.op.unary.f32(i32 6, float %6860)  ; FAbs(value)
  %6886 = fsub fast float 1.000000e+00, %5129
  %6887 = call float @dx.op.binary.f32(i32 35, float %6886, float 0x3F847AE140000000)  ; FMax(a,b)
  %6888 = fmul fast float %6887, %6887
  %6889 = fmul fast float %6888, %6888
  %6890 = fsub fast float 1.000000e+00, %6889
  %6891 = fmul fast float %5134, %5134
  %6892 = fmul fast float %6891, %6890
  %6893 = fadd fast float %6892, %6889
  %6894 = bitcast float %6893 to i32
  %6895 = ashr i32 %6894, 1
  %6896 = add nsw i32 %6895, 532487669
  %6897 = bitcast i32 %6896 to float
  %6898 = fadd fast float %6897, %5134
  %6899 = fmul fast float %6889, %6884
  %6900 = fsub fast float 1.000000e+00, %6884
  %6901 = fadd fast float %6900, %6899
  %6902 = fmul fast float %6885, %6885
  %6903 = fmul fast float %6902, %6890
  %6904 = fadd fast float %6903, %6889
  %6905 = bitcast float %6904 to i32
  %6906 = ashr i32 %6905, 1
  %6907 = add nsw i32 %6906, 532487669
  %6908 = bitcast i32 %6907 to float
  %6909 = fadd fast float %6908, %6885
  %6910 = fmul fast float %6901, %6901
  %6911 = fmul fast float %6910, %6898
  %6912 = fmul fast float %6911, %6909
  %6913 = fdiv fast float 1.000000e+00, %6912
  %6914 = bitcast float %6889 to i32
  %6915 = sitofp i32 %6914 to float
  %6916 = fmul fast float %6915, 0x3FE7F73180000000
  %6917 = fadd fast float %6916, 0x41AFE27C40000000
  %6918 = fptosi float %6917 to i32
  %6919 = bitcast i32 %6918 to float
  %6920 = fmul fast float %6554, 0x3FD80E9D60000000
  %6921 = fmul fast float %6920, %6871
  %6922 = fadd fast float %6919, %6921
  %6923 = bitcast float %6922 to i32
  %6924 = sub nsw i32 2129859010, %6923
  %6925 = bitcast i32 %6924 to float
  %6926 = fmul fast float %6889, %6913
  %6927 = fmul fast float %6926, %6919
  %6928 = fmul fast float %6927, %6925
  %6929 = call float @dx.op.unary.f32(i32 6, float %6861)  ; FAbs(value)
  %6930 = fsub fast float 1.000000e+00, %6929
  %6931 = bitcast float %6930 to i32
  %6932 = sitofp i32 %6931 to float
  %6933 = fmul fast float %6932, 5.000000e+00
  %6934 = fadd fast float %6933, 0xC1EFBF8940000000
  %6935 = fptosi float %6934 to i32
  %6936 = bitcast i32 %6935 to float
  %6937 = fsub fast float 1.000000e+00, %5123
  %6938 = fsub fast float 1.000000e+00, %5124
  %6939 = fsub fast float 1.000000e+00, %5132
  %6940 = fmul fast float %6936, %6937
  %6941 = fmul fast float %6936, %6938
  %6942 = fmul fast float %6936, %6939
  %6943 = fadd fast float %6940, %5123
  %6944 = fadd fast float %6941, %5124
  %6945 = fadd fast float %6942, %5132
  br i1 %5259, label %6946, label %6969

; <label>:6946                                    ; preds = %6832
  %6947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3921, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6948 = extractvalue %dx.types.ResRet.f32 %6947, 0
  %6949 = extractvalue %dx.types.ResRet.f32 %6947, 1
  %6950 = extractvalue %dx.types.ResRet.f32 %6947, 2
  %6951 = fadd fast float %6948, -5.000000e-01
  %6952 = fadd fast float %6949, -5.000000e-01
  %6953 = fadd fast float %6950, -5.000000e-01
  %6954 = fmul fast float %5123, 4.000000e+00
  %6955 = fmul fast float %6954, %6937
  %6956 = fmul fast float %6955, %6951
  %6957 = fmul fast float %5124, 4.000000e+00
  %6958 = fmul fast float %6957, %6938
  %6959 = fmul fast float %6958, %6952
  %6960 = fmul fast float %5132, 4.000000e+00
  %6961 = fmul fast float %6960, %6939
  %6962 = fmul fast float %6961, %6953
  %6963 = fadd fast float %6956, %6943
  %6964 = fadd fast float %6959, %6944
  %6965 = fadd fast float %6962, %6945
  %6966 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6967 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6968 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  br label %6969

; <label>:6969                                    ; preds = %6946, %6832
  %6970 = phi float [ %6966, %6946 ], [ %6943, %6832 ]
  %6971 = phi float [ %6967, %6946 ], [ %6944, %6832 ]
  %6972 = phi float [ %6968, %6946 ], [ %6945, %6832 ]
  %6973 = fmul fast float %6860, 9.843750e-01
  %6974 = fadd fast float %6973, 7.812500e-03
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6974, float %5249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 3
  %6978 = fmul fast float %6976, %5123
  %6979 = fmul fast float %6976, %5124
  %6980 = fmul fast float %6976, %5132
  %6981 = fadd fast float %6978, %6977
  %6982 = fadd fast float %6979, %6977
  %6983 = fadd fast float %6980, %6977
  br i1 %5259, label %6984, label %7007

; <label>:6984                                    ; preds = %6969
  %6985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3921, float %6860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.ResRet.f32 %6985, 1
  %6988 = extractvalue %dx.types.ResRet.f32 %6985, 2
  %6989 = fadd fast float %6986, -5.000000e-01
  %6990 = fadd fast float %6987, -5.000000e-01
  %6991 = fadd fast float %6988, -5.000000e-01
  %6992 = fmul fast float %5123, 4.000000e+00
  %6993 = fmul fast float %6992, %6937
  %6994 = fmul fast float %6993, %6989
  %6995 = fmul fast float %5124, 4.000000e+00
  %6996 = fmul fast float %6995, %6938
  %6997 = fmul fast float %6996, %6990
  %6998 = fmul fast float %5132, 4.000000e+00
  %6999 = fmul fast float %6998, %6939
  %7000 = fmul fast float %6999, %6991
  %7001 = fadd fast float %6994, %6981
  %7002 = fadd fast float %6997, %6982
  %7003 = fadd fast float %7000, %6983
  %7004 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  %7005 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7006 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  br label %7007

; <label>:7007                                    ; preds = %6984, %6969
  %7008 = phi float [ %7004, %6984 ], [ %6981, %6969 ]
  %7009 = phi float [ %7005, %6984 ], [ %6982, %6969 ]
  %7010 = phi float [ %7006, %6984 ], [ %6983, %6969 ]
  %7011 = call float @dx.op.binary.f32(i32 35, float %7009, float %7010)  ; FMax(a,b)
  %7012 = call float @dx.op.binary.f32(i32 35, float %7008, float %7011)  ; FMax(a,b)
  %7013 = fsub fast float 1.000000e+00, %7012
  %7014 = fmul fast float %6970, %6928
  %7015 = fmul fast float %6971, %6928
  %7016 = fmul fast float %6972, %6928
  %7017 = fsub fast float 1.000000e+00, %6861
  %7018 = bitcast float %7017 to i32
  %7019 = sitofp i32 %7018 to float
  %7020 = fmul fast float %7019, 5.000000e+00
  %7021 = fadd fast float %7020, 0xC1EFBF8940000000
  %7022 = fptosi float %7021 to i32
  %7023 = bitcast i32 %7022 to float
  %7024 = fmul fast float %7023, %3922
  %7025 = fmul fast float %7013, %7024
  %7026 = fmul fast float %7025, %5309
  %7027 = fmul fast float %7025, %5310
  %7028 = fmul fast float %7025, %5311
  %7029 = fadd fast float %7026, %7014
  %7030 = fadd fast float %7027, %7015
  %7031 = fadd fast float %7028, %7016
  %7032 = fmul fast float %6849, %3948
  %7033 = fmul fast float %7032, %6867
  %7034 = fmul fast float %7033, %7013
  %7035 = fmul fast float %6850, %3948
  %7036 = fmul fast float %7035, %6867
  %7037 = fmul fast float %7036, %7013
  %7038 = fmul fast float %6851, %3948
  %7039 = fmul fast float %7038, %6867
  %7040 = fmul fast float %7039, %7013
  %7041 = fadd fast float %7034, %6528
  %7042 = fadd fast float %7037, %6529
  %7043 = fadd fast float %7040, %6530
  %7044 = fmul fast float %7033, %7029
  %7045 = fmul fast float %7036, %7030
  %7046 = fmul fast float %7039, %7031
  %7047 = fadd fast float %7044, %6525
  %7048 = fadd fast float %7045, %6526
  %7049 = fadd fast float %7046, %6527
  br label %6657

; <label>:7050                                    ; preds = %6657
  br label %7051

; <label>:7051                                    ; preds = %7050, %6491
  %7052 = phi float [ %6493, %6491 ], [ %6658, %7050 ]
  %7053 = phi float [ %6494, %6491 ], [ %6659, %7050 ]
  %7054 = phi float [ %6495, %6491 ], [ %6660, %7050 ]
  %7055 = phi float [ %6496, %6491 ], [ %6661, %7050 ]
  %7056 = phi float [ %6497, %6491 ], [ %6662, %7050 ]
  %7057 = phi float [ %6498, %6491 ], [ %6663, %7050 ]
  %7058 = add i32 %6492, 1
  %7059 = icmp ugt i32 %7058, %6488
  br i1 %7059, label %7060, label %6491

; <label>:7060                                    ; preds = %7051
  br label %7061

; <label>:7061                                    ; preds = %7060, %6441, %6431
  %7062 = phi float [ %6432, %6431 ], [ %6432, %6441 ], [ %7052, %7060 ]
  %7063 = phi float [ %6433, %6431 ], [ %6433, %6441 ], [ %7053, %7060 ]
  %7064 = phi float [ %6434, %6431 ], [ %6434, %6441 ], [ %7054, %7060 ]
  %7065 = phi float [ %6435, %6431 ], [ %6435, %6441 ], [ %7055, %7060 ]
  %7066 = phi float [ %6436, %6431 ], [ %6436, %6441 ], [ %7056, %7060 ]
  %7067 = phi float [ %6437, %6431 ], [ %6437, %6441 ], [ %7057, %7060 ]
  %7068 = fmul fast float %3948, %3948
  %7069 = fsub fast float 1.000000e+00, %7068
  %7070 = call float @dx.op.dot3.f32(i32 55, float %7069, float %7069, float %7069, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7071 = fsub fast float 1.000000e+00, %7070
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 0
  %7074 = fmul fast float %7073, %5315
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 3
  %7077 = fsub fast float 1.000000e+00, %3926
  %7078 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7079 = fadd fast float %7067, %3924
  %7080 = fmul fast float %7079, %3926
  %7081 = fmul fast float %7078, %7076
  %7082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.i32 %7082, 3
  %7084 = bitcast i32 %7083 to float
  %7085 = fsub fast float %7071, %7084
  %7086 = fmul fast float %7085, %240
  %7087 = fadd fast float %7086, %7084
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 3
  %7090 = fmul fast float %7065, %5120
  %7091 = fmul fast float %7066, %5121
  %7092 = fmul fast float %7067, %5122
  %7093 = fcmp fast ogt float %97, %260
  %7094 = and i1 %7093, %4351
  %7095 = or i1 %4357, %7094
  %7096 = icmp eq i32 %4350, 2
  %7097 = fcmp fast ole float %97, %260
  %7098 = and i1 %7097, %7096
  %7099 = or i1 %7098, %7095
  br i1 %7094, label %7100, label %7357

; <label>:7100                                    ; preds = %7061
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7103 = extractvalue %dx.types.CBufRet.f32 %7101, 3
  %7104 = fmul fast float %7102, %106
  %7105 = fmul fast float %7103, %107
  %7106 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  %7107 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7108 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7106, float %7107, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7109 = extractvalue %dx.types.ResRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.ResRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.ResRet.f32 %7108, 2
  %7112 = extractvalue %dx.types.ResRet.f32 %7108, 3
  %7113 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7106, float %7107, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7114 = extractvalue %dx.types.ResRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.ResRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.ResRet.f32 %7113, 2
  %7117 = extractvalue %dx.types.ResRet.f32 %7113, 3
  %7118 = call float @dx.op.binary.f32(i32 35, float %7110, float %7111)  ; FMax(a,b)
  %7119 = call float @dx.op.binary.f32(i32 35, float %7109, float %7118)  ; FMax(a,b)
  %7120 = call float @dx.op.binary.f32(i32 35, float %7119, float %7112)  ; FMax(a,b)
  %7121 = call float @dx.op.binary.f32(i32 36, float %7115, float %7116)  ; FMin(a,b)
  %7122 = call float @dx.op.binary.f32(i32 36, float %7114, float %7121)  ; FMin(a,b)
  %7123 = call float @dx.op.binary.f32(i32 36, float %7122, float %7117)  ; FMin(a,b)
  %7124 = fmul fast float %7120, 2.550000e+02
  %7125 = fadd fast float %7124, 0x3F70101020000000
  %7126 = fptoui float %7125 to i32
  %7127 = fmul fast float %7123, 2.550000e+02
  %7128 = fadd fast float %7127, 0x3F70101020000000
  %7129 = fptoui float %7128 to i32
  %7130 = icmp ult i32 %7126, %7129
  br i1 %7130, label %7131, label %7299

; <label>:7131                                    ; preds = %7100
  %7132 = fcmp fast ogt float %96, 9.843750e-01
  %7133 = fadd fast float %97, -4.000000e+00
  %7134 = select i1 %7132, float -4.000000e+00, float %7133
  %7135 = call float @dx.op.binary.f32(i32 35, float %7134, float 0.000000e+00)  ; FMax(a,b)
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = fadd fast float %7137, %7135
  %7139 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7140 = fmul fast float %7138, %7139
  %7141 = call float @dx.op.unary.f32(i32 23, float %7140)  ; Log(value)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7136, 3
  %7143 = fmul fast float %7142, %7141
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7146 = fmul fast float %7143, %7145
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = uitofp i32 %7126 to float
  %7149 = uitofp i32 %7129 to float
  %7150 = fadd fast float %7148, 5.000000e-01
  %7151 = fadd fast float %7149, 5.000000e-01
  %7152 = fmul fast float %7145, %7150
  %7153 = fmul fast float %7145, %7151
  %7154 = fadd fast float %7152, 0x3F0FFB4800000000
  %7155 = fadd fast float %7153, 0xBF0FFB4800000000
  %7156 = call float @dx.op.binary.f32(i32 35, float %7147, float %7154)  ; FMax(a,b)
  %7157 = call float @dx.op.binary.f32(i32 36, float %7156, float %7155)  ; FMin(a,b)
  %7158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7159 = extractvalue %dx.types.CBufRet.f32 %7158, 1
  %7160 = extractvalue %dx.types.CBufRet.f32 %7158, 2
  %7161 = extractvalue %dx.types.CBufRet.f32 %7158, 0
  %7162 = fmul fast float %7159, %7157
  %7163 = fadd fast float %7161, %7162
  %7164 = fadd fast float %7161, %7160
  %7165 = fsub fast float %7159, %7160
  %7166 = fadd fast float %7165, %7161
  %7167 = call float @dx.op.binary.f32(i32 35, float %7163, float %7164)  ; FMax(a,b)
  %7168 = call float @dx.op.binary.f32(i32 36, float %7167, float %7166)  ; FMin(a,b)
  %7169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7106, float %7107, float %7168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.ResRet.f32 %7169, 1
  %7172 = extractvalue %dx.types.ResRet.f32 %7169, 2
  %7173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.i32 %7173, 0
  %7175 = extractvalue %dx.types.CBufRet.i32 %7173, 1
  %7176 = uitofp i32 %7174 to float
  %7177 = uitofp i32 %7175 to float
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7181 = fmul fast float %7176, %7106
  %7182 = fmul fast float %7177, %7107
  %7183 = fadd fast float %7181, -5.000000e-01
  %7184 = fadd fast float %7182, -5.000000e-01
  %7185 = call float @dx.op.unary.f32(i32 22, float %7183)  ; Frc(value)
  %7186 = call float @dx.op.unary.f32(i32 22, float %7184)  ; Frc(value)
  %7187 = fmul fast float %7185, %7185
  %7188 = fmul fast float %7187, %7185
  %7189 = fsub fast float 3.000000e+00, %7185
  %7190 = fmul fast float %7187, %7189
  %7191 = fmul fast float %7185, 3.000000e+00
  %7192 = fmul fast float %7188, 3.000000e+00
  %7193 = fmul fast float %7187, 6.000000e+00
  %7194 = fsub fast float %7192, %7193
  %7195 = fadd fast float %7194, 4.000000e+00
  %7196 = fmul fast float %7195, 0x3FC5555560000000
  %7197 = fmul fast float %7188, -3.000000e+00
  %7198 = fadd fast float %7187, %7185
  %7199 = fmul fast float %7198, 3.000000e+00
  %7200 = fadd fast float %7197, 1.000000e+00
  %7201 = fadd fast float %7200, %7199
  %7202 = fmul fast float %7188, 0x3FC5555560000000
  %7203 = fmul fast float %7186, %7186
  %7204 = fmul fast float %7203, %7186
  %7205 = fsub fast float 3.000000e+00, %7186
  %7206 = fmul fast float %7203, %7205
  %7207 = fmul fast float %7186, 3.000000e+00
  %7208 = fmul fast float %7204, 3.000000e+00
  %7209 = fmul fast float %7203, 6.000000e+00
  %7210 = fsub fast float %7208, %7209
  %7211 = fadd fast float %7210, 4.000000e+00
  %7212 = fmul fast float %7211, 0x3FC5555560000000
  %7213 = fmul fast float %7204, -3.000000e+00
  %7214 = fadd fast float %7203, %7186
  %7215 = fmul fast float %7214, 3.000000e+00
  %7216 = fadd fast float %7213, 1.000000e+00
  %7217 = fadd fast float %7216, %7215
  %7218 = fmul fast float %7204, 0x3FC5555560000000
  %7219 = fadd fast float %7185, 1.000000e+00
  %7220 = fsub fast float 1.000000e+00, %7191
  %7221 = fadd fast float %7220, %7190
  %7222 = fadd fast float %7221, %7195
  %7223 = fmul fast float %7222, 0x3FC5555560000000
  %7224 = fdiv fast float %7196, %7223
  %7225 = fsub fast float %7219, %7224
  %7226 = fsub fast float 1.000000e+00, %7185
  %7227 = fadd fast float %7201, %7188
  %7228 = fmul fast float %7227, 0x3FC5555560000000
  %7229 = fdiv fast float %7202, %7228
  %7230 = fadd fast float %7226, %7229
  %7231 = fadd fast float %7186, 1.000000e+00
  %7232 = fsub fast float 1.000000e+00, %7207
  %7233 = fadd fast float %7232, %7206
  %7234 = fadd fast float %7233, %7211
  %7235 = fmul fast float %7234, 0x3FC5555560000000
  %7236 = fdiv fast float %7212, %7235
  %7237 = fsub fast float %7231, %7236
  %7238 = fsub fast float 1.000000e+00, %7186
  %7239 = fadd fast float %7217, %7204
  %7240 = fmul fast float %7239, 0x3FC5555560000000
  %7241 = fdiv fast float %7218, %7240
  %7242 = fadd fast float %7241, %7238
  %7243 = fmul fast float %7225, %7179
  %7244 = fsub fast float %7106, %7243
  %7245 = fmul fast float %7230, %7179
  %7246 = fadd fast float %7245, %7106
  %7247 = fmul fast float %7242, %7180
  %7248 = fadd fast float %7247, %7107
  %7249 = fmul fast float %7237, %7180
  %7250 = fsub fast float %7107, %7249
  %7251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7244, float %7250, float %7168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7252 = extractvalue %dx.types.ResRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.ResRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.ResRet.f32 %7251, 2
  %7255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7246, float %7250, float %7168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.ResRet.f32 %7255, 2
  %7259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7244, float %7248, float %7168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7246, float %7248, float %7168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7264 = extractvalue %dx.types.ResRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.ResRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.ResRet.f32 %7263, 2
  %7267 = fsub fast float %7260, %7252
  %7268 = fsub fast float %7261, %7253
  %7269 = fsub fast float %7262, %7254
  %7270 = fmul fast float %7267, %7240
  %7271 = fmul fast float %7268, %7240
  %7272 = fmul fast float %7269, %7240
  %7273 = fadd fast float %7270, %7252
  %7274 = fadd fast float %7271, %7253
  %7275 = fadd fast float %7272, %7254
  %7276 = fsub fast float %7264, %7256
  %7277 = fsub fast float %7265, %7257
  %7278 = fsub fast float %7266, %7258
  %7279 = fmul fast float %7276, %7240
  %7280 = fmul fast float %7277, %7240
  %7281 = fmul fast float %7278, %7240
  %7282 = fsub fast float %7256, %7273
  %7283 = fadd fast float %7282, %7279
  %7284 = fsub fast float %7257, %7274
  %7285 = fadd fast float %7284, %7280
  %7286 = fsub fast float %7258, %7275
  %7287 = fadd fast float %7286, %7281
  %7288 = fmul fast float %7283, %7228
  %7289 = fmul fast float %7285, %7228
  %7290 = fmul fast float %7287, %7228
  %7291 = fadd fast float %7288, %7273
  %7292 = fadd fast float %7289, %7274
  %7293 = fadd fast float %7290, %7275
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7296 = fmul fast float %7291, %7295
  %7297 = fmul fast float %7292, %7295
  %7298 = fmul fast float %7293, %7295
  br label %7299

; <label>:7299                                    ; preds = %7131, %7100
  %7300 = phi float [ %7170, %7131 ], [ 1.000000e+00, %7100 ]
  %7301 = phi float [ %7171, %7131 ], [ 1.000000e+00, %7100 ]
  %7302 = phi float [ %7172, %7131 ], [ 1.000000e+00, %7100 ]
  %7303 = phi float [ %7296, %7131 ], [ 0.000000e+00, %7100 ]
  %7304 = phi float [ %7297, %7131 ], [ 0.000000e+00, %7100 ]
  %7305 = phi float [ %7298, %7131 ], [ 0.000000e+00, %7100 ]
  %7306 = fmul fast float %7303, %7087
  %7307 = fmul fast float %7304, %7087
  %7308 = fmul fast float %7305, %7087
  %7309 = call float @dx.op.dot3.f32(i32 55, float %7300, float %7301, float %7302, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = call float @dx.op.dot3.f32(i32 55, float %7306, float %7307, float %7308, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = select i1 %297, float %7309, float %7300
  %7312 = select i1 %297, float %7309, float %7301
  %7313 = select i1 %297, float 1.000000e+00, float %7302
  %7314 = select i1 %297, float %7310, float %7306
  %7315 = select i1 %297, float 0.000000e+00, float %7307
  %7316 = select i1 %297, float 0.000000e+00, float %7308
  %7317 = fmul fast float %7311, %7090
  %7318 = fmul fast float %7312, %7091
  %7319 = fmul fast float %7313, %7092
  %7320 = fadd fast float %7317, %7314
  %7321 = fadd fast float %7318, %7315
  %7322 = fadd fast float %7316, %7319
  %7323 = fmul fast float %7311, %7062
  %7324 = fmul fast float %7312, %7063
  %7325 = fmul fast float %7313, %7064
  %7326 = fmul fast float %142, %7102
  %7327 = fmul fast float %144, %7103
  %7328 = fsub fast float 1.000000e+00, %7326
  %7329 = fsub fast float 1.000000e+00, %7327
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7334 = fmul fast float %7328, %7331
  %7335 = fmul fast float %7328, %7332
  %7336 = fmul fast float %7328, %7333
  %7337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.f32 %7337, 0
  %7339 = extractvalue %dx.types.CBufRet.f32 %7337, 1
  %7340 = extractvalue %dx.types.CBufRet.f32 %7337, 2
  %7341 = fmul fast float %7329, %7338
  %7342 = fmul fast float %7329, %7339
  %7343 = fmul fast float %7329, %7340
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 0
  %7346 = extractvalue %dx.types.CBufRet.f32 %7344, 1
  %7347 = extractvalue %dx.types.CBufRet.f32 %7344, 2
  %7348 = fadd fast float %7341, %7345
  %7349 = fadd fast float %7348, %7334
  %7350 = fadd fast float %7342, %7346
  %7351 = fadd fast float %7350, %7335
  %7352 = fadd fast float %7343, %7347
  %7353 = fadd fast float %7352, %7336
  %7354 = fmul fast float %7349, %260
  %7355 = fmul fast float %7351, %260
  %7356 = fmul fast float %7353, %260
  br label %7357

; <label>:7357                                    ; preds = %7299, %7061
  %7358 = phi float [ %7354, %7299 ], [ %193, %7061 ]
  %7359 = phi float [ %7355, %7299 ], [ %194, %7061 ]
  %7360 = phi float [ %7356, %7299 ], [ %195, %7061 ]
  %7361 = phi float [ %260, %7299 ], [ %97, %7061 ]
  %7362 = phi float [ %7320, %7299 ], [ %7090, %7061 ]
  %7363 = phi float [ %7321, %7299 ], [ %7091, %7061 ]
  %7364 = phi float [ %7322, %7299 ], [ %7092, %7061 ]
  %7365 = phi float [ %7323, %7299 ], [ %7062, %7061 ]
  %7366 = phi float [ %7324, %7299 ], [ %7063, %7061 ]
  %7367 = phi float [ %7325, %7299 ], [ %7064, %7061 ]
  %7368 = phi float [ %7300, %7299 ], [ 1.000000e+00, %7061 ]
  br i1 %7099, label %8523, label %7369

; <label>:7369                                    ; preds = %7357
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.CBufRet.f32 %7370, 1
  %7373 = extractvalue %dx.types.CBufRet.f32 %7370, 2
  %7374 = extractvalue %dx.types.CBufRet.f32 %7370, 3
  %7375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.CBufRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.CBufRet.f32 %7375, 2
  %7379 = extractvalue %dx.types.CBufRet.f32 %7375, 3
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7383 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7384 = extractvalue %dx.types.CBufRet.f32 %7380, 3
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7389 = extractvalue %dx.types.CBufRet.f32 %7385, 3
  %7390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7390, 3
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 3
  %7394 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7392, 1
  %7396 = extractvalue %dx.types.CBufRet.f32 %7392, 2
  %7397 = fcmp fast olt float %7396, -5.000000e-01
  %7398 = call float @dx.op.dot3.f32(i32 55, float %7358, float %7359, float %7360, float %7358, float %7359, float %7360)  ; Dot3(ax,ay,az,bx,by,bz)
  %7399 = call float @dx.op.unary.f32(i32 25, float %7398)  ; Rsqrt(value)
  %7400 = fmul fast float %7399, %7398
  %7401 = fmul fast float %7399, %7358
  %7402 = fmul fast float %7399, %7359
  %7403 = fmul fast float %7399, %7360
  %7404 = fadd fast float %7400, %7374
  %7405 = call float @dx.op.dot3.f32(i32 55, float %7401, float %7402, float %7403, float %7371, float %7372, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.i32 %7406, 1
  %7408 = and i32 %7407, 1
  %7409 = icmp ne i32 %7408, 0
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %7412 = fcmp fast ogt float %7411, 0.000000e+00
  %7413 = and i1 %7409, %7412
  br i1 %7413, label %7414, label %7820, !dx.controlflow.hints !125

; <label>:7414                                    ; preds = %7369
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 3
  %7417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7418 = extractvalue %dx.types.CBufRet.f32 %7417, 2
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 2
  %7421 = fsub fast float %7418, %7420
  %7422 = and i32 %7407, 2
  %7423 = extractvalue %dx.types.CBufRet.i32 %7406, 0
  %7424 = call i32 @dx.op.binary.i32(i32 40, i32 %7423, i32 3)  ; UMin(a,b)
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.CBufRet.f32 %7419, 0
  %7429 = extractvalue %dx.types.CBufRet.f32 %7419, 1
  %7430 = fsub fast float %7426, %7428
  %7431 = fsub fast float %7427, %7429
  %7432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7432, 0
  %7434 = fcmp fast ogt float %7433, 0.000000e+00
  %7435 = fsub fast float -0.000000e+00, %7430
  %7436 = fsub fast float -0.000000e+00, %7431
  %7437 = call float @dx.op.dot2.f32(i32 54, float %7401, float %7402, float %7401, float %7402)  ; Dot2(ax,ay,bx,by)
  %7438 = call float @dx.op.dot2.f32(i32 54, float %7401, float %7402, float %7435, float %7436)  ; Dot2(ax,ay,bx,by)
  %7439 = fmul fast float %7438, 2.000000e+00
  %7440 = call float @dx.op.dot2.f32(i32 54, float %7435, float %7436, float %7435, float %7436)  ; Dot2(ax,ay,bx,by)
  %7441 = fmul fast float %7433, %7433
  %7442 = fsub fast float %7440, %7441
  %7443 = fmul fast float %7439, %7439
  %7444 = fmul fast float %7437, 4.000000e+00
  %7445 = fmul fast float %7444, %7442
  %7446 = fsub fast float %7443, %7445
  %7447 = fcmp fast ogt float %7446, 0.000000e+00
  br i1 %7447, label %7448, label %7463

; <label>:7448                                    ; preds = %7414
  %7449 = fcmp fast ogt float %7439, 0.000000e+00
  %7450 = call float @dx.op.unary.f32(i32 24, float %7446)  ; Sqrt(value)
  %7451 = fsub fast float -0.000000e+00, %7450
  %7452 = select i1 %7449, float %7450, float %7451
  %7453 = fadd fast float %7452, %7439
  %7454 = fmul float %7453, -5.000000e-01
  %7455 = fdiv fast float %7454, %7437
  %7456 = call float @dx.op.binary.f32(i32 35, float %7455, float 0.000000e+00)  ; FMax(a,b)
  %7457 = call float @dx.op.binary.f32(i32 36, float %7400, float %7456)  ; FMin(a,b)
  %7458 = fdiv fast float %7442, %7454
  %7459 = call float @dx.op.binary.f32(i32 35, float %7458, float 0.000000e+00)  ; FMax(a,b)
  %7460 = call float @dx.op.binary.f32(i32 36, float %7400, float %7459)  ; FMin(a,b)
  %7461 = call float @dx.op.binary.f32(i32 36, float %7457, float %7460)  ; FMin(a,b)
  %7462 = call float @dx.op.binary.f32(i32 35, float %7457, float %7460)  ; FMax(a,b)
  br label %7463

; <label>:7463                                    ; preds = %7448, %7414
  %7464 = phi float [ %7462, %7448 ], [ -1.000000e+00, %7414 ]
  %7465 = phi float [ %7461, %7448 ], [ -1.000000e+00, %7414 ]
  %7466 = phi i1 [ true, %7448 ], [ false, %7414 ]
  %7467 = and i1 %7434, %7466
  br i1 %7467, label %7468, label %7470

; <label>:7468                                    ; preds = %7463
  %7469 = fcmp fast oeq float %7465, %7464
  br i1 %7469, label %7773, label %7471

; <label>:7470                                    ; preds = %7463
  br i1 %7434, label %7773, label %7471

; <label>:7471                                    ; preds = %7470, %7468
  %7472 = phi float [ %7400, %7470 ], [ %7464, %7468 ]
  %7473 = phi float [ 0.000000e+00, %7470 ], [ %7465, %7468 ]
  %7474 = icmp ne i32 %7422, 0
  %7475 = fmul fast float %7472, %7403
  %7476 = fadd fast float %7475, %7416
  %7477 = fmul fast float %7476, %7472
  %7478 = select i1 %7474, float 0.000000e+00, float %7477
  %7479 = fcmp fast oeq float %7403, 0.000000e+00
  %7480 = fdiv fast float %7421, %7403
  %7481 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7480)  ; FMax(a,b)
  %7482 = select i1 %7479, float %7472, float %7481
  %7483 = call float @dx.op.binary.f32(i32 36, float %7472, float %7482)  ; FMin(a,b)
  %7484 = fcmp fast ogt float %7403, 0.000000e+00
  %7485 = fcmp fast olt float %7421, 0.000000e+00
  br i1 %7484, label %7486, label %7543

; <label>:7486                                    ; preds = %7471
  %7487 = icmp eq i32 %7422, 0
  br i1 %7485, label %7488, label %7532

; <label>:7488                                    ; preds = %7486
  %7489 = select i1 %7487, float %7472, float 0.000000e+00
  %7490 = fsub fast float -0.000000e+00, %7489
  %7491 = call float @dx.op.unary.f32(i32 6, float %7490)  ; FAbs(value)
  %7492 = fmul fast float %7489, %7403
  %7493 = fadd fast float %7492, %7416
  %7494 = fmul fast float %7491, %7493
  %7495 = fsub fast float %7478, %7494
  %7496 = fsub fast float %7472, %7491
  %7497 = select i1 %7487, float %7496, float 0.000000e+00
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7506 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 3
  %7509 = call float @dx.op.binary.f32(i32 36, float %7495, float %7508)  ; FMin(a,b)
  %7510 = fmul fast float %7506, %7497
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = fsub fast float %7503, %7499
  %7513 = fsub fast float %7504, %7500
  %7514 = fsub fast float %7505, %7501
  %7515 = fmul fast float %7511, %7512
  %7516 = fmul fast float %7511, %7513
  %7517 = fmul fast float %7511, %7514
  %7518 = fadd fast float %7515, %7499
  %7519 = fadd fast float %7516, %7500
  %7520 = fadd fast float %7517, %7501
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 1
  %7524 = fadd fast float %7523, %7522
  %7525 = call float @dx.op.unary.f32(i32 7, float %7524)  ; Saturate(value)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7528 = fadd fast float %7527, %7526
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = fmul fast float %7525, %7509
  %7531 = fmul fast float %7530, %7529
  br label %7773

; <label>:7532                                    ; preds = %7486
  br i1 %7487, label %7533, label %7554

; <label>:7533                                    ; preds = %7532
  %7534 = call float @dx.op.binary.f32(i32 36, float %7483, float %7473)  ; FMin(a,b)
  %7535 = fsub fast float %7483, %7534
  %7536 = fsub fast float %7535, %7472
  %7537 = call float @dx.op.unary.f32(i32 6, float %7536)  ; FAbs(value)
  %7538 = fadd fast float %7535, %7472
  %7539 = fmul fast float %7538, %7403
  %7540 = fadd fast float %7539, %7416
  %7541 = fmul fast float %7540, %7537
  %7542 = fsub fast float %7478, %7541
  br label %7554

; <label>:7543                                    ; preds = %7471
  br i1 %7485, label %7544, label %7554

; <label>:7544                                    ; preds = %7543
  %7545 = call float @dx.op.binary.f32(i32 35, float %7473, float %7483)  ; FMax(a,b)
  %7546 = icmp eq i32 %7422, 0
  %7547 = select i1 %7546, float %7483, float 0.000000e+00
  %7548 = fsub fast float -0.000000e+00, %7547
  %7549 = call float @dx.op.unary.f32(i32 6, float %7548)  ; FAbs(value)
  %7550 = fmul fast float %7547, %7403
  %7551 = fadd fast float %7550, %7416
  %7552 = fmul fast float %7549, %7551
  %7553 = fsub fast float %7478, %7552
  br label %7554

; <label>:7554                                    ; preds = %7544, %7543, %7533, %7532
  %7555 = phi float [ %7473, %7532 ], [ %7473, %7533 ], [ %7545, %7544 ], [ %7473, %7543 ]
  %7556 = phi float [ 0.000000e+00, %7532 ], [ %7537, %7533 ], [ %7549, %7544 ], [ 0.000000e+00, %7543 ]
  %7557 = phi float [ %7478, %7532 ], [ %7542, %7533 ], [ %7553, %7544 ], [ %7478, %7543 ]
  %7558 = phi float [ %7483, %7532 ], [ %7483, %7533 ], [ %7472, %7544 ], [ %7472, %7543 ]
  %7559 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7559, align 4, !tbaa !126, !noalias !128
  %7560 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7560, align 4, !tbaa !126, !noalias !128
  %7561 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7561, align 4, !tbaa !126, !noalias !128
  %7562 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7562, align 4, !tbaa !126, !noalias !128
  %7563 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7563, align 4, !tbaa !126, !noalias !128
  %7564 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7564, align 4, !tbaa !126, !noalias !128
  %7565 = icmp sgt i32 %7424, 0
  br i1 %7565, label %7566, label %7627

; <label>:7566                                    ; preds = %7554
  br label %7567

; <label>:7567                                    ; preds = %7616, %7566
  %7568 = phi i32 [ %7617, %7616 ], [ 0, %7566 ]
  %7569 = phi i32 [ %7618, %7616 ], [ 0, %7566 ]
  %7570 = add nuw i32 %7569, 171
  %7571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7570)  ; CBufferLoadLegacy(handle,regIndex)
  %7572 = extractvalue %dx.types.CBufRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.CBufRet.f32 %7571, 1
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 0
  %7576 = extractvalue %dx.types.CBufRet.f32 %7574, 1
  %7577 = fsub fast float %7572, %7575
  %7578 = fsub fast float %7573, %7576
  %7579 = extractvalue %dx.types.CBufRet.f32 %7571, 2
  %7580 = fsub fast float -0.000000e+00, %7577
  %7581 = fsub fast float -0.000000e+00, %7578
  %7582 = call float @dx.op.dot2.f32(i32 54, float %7401, float %7402, float %7580, float %7581)  ; Dot2(ax,ay,bx,by)
  %7583 = fmul fast float %7582, 2.000000e+00
  %7584 = call float @dx.op.dot2.f32(i32 54, float %7580, float %7581, float %7580, float %7581)  ; Dot2(ax,ay,bx,by)
  %7585 = fmul fast float %7579, %7579
  %7586 = fsub fast float %7584, %7585
  %7587 = fmul fast float %7583, %7583
  %7588 = fmul fast float %7444, %7586
  %7589 = fsub fast float %7587, %7588
  %7590 = fcmp fast ogt float %7589, 0.000000e+00
  br i1 %7590, label %7591, label %7606

; <label>:7591                                    ; preds = %7567
  %7592 = fcmp fast ogt float %7583, 0.000000e+00
  %7593 = call float @dx.op.unary.f32(i32 24, float %7589)  ; Sqrt(value)
  %7594 = fsub fast float -0.000000e+00, %7593
  %7595 = select i1 %7592, float %7593, float %7594
  %7596 = fadd fast float %7595, %7583
  %7597 = fmul float %7596, -5.000000e-01
  %7598 = fdiv fast float %7597, %7437
  %7599 = call float @dx.op.binary.f32(i32 35, float %7598, float 0.000000e+00)  ; FMax(a,b)
  %7600 = call float @dx.op.binary.f32(i32 36, float %7472, float %7599)  ; FMin(a,b)
  %7601 = fdiv fast float %7586, %7597
  %7602 = call float @dx.op.binary.f32(i32 35, float %7601, float 0.000000e+00)  ; FMax(a,b)
  %7603 = call float @dx.op.binary.f32(i32 36, float %7472, float %7602)  ; FMin(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7600, float %7603)  ; FMin(a,b)
  %7605 = call float @dx.op.binary.f32(i32 35, float %7600, float %7603)  ; FMax(a,b)
  br label %7606

; <label>:7606                                    ; preds = %7591, %7567
  %7607 = phi float [ %7605, %7591 ], [ -1.000000e+00, %7567 ]
  %7608 = phi float [ %7604, %7591 ], [ -1.000000e+00, %7567 ]
  %7609 = phi i1 [ true, %7591 ], [ false, %7567 ]
  br i1 %7609, label %7610, label %7616

; <label>:7610                                    ; preds = %7606
  %7611 = call float @dx.op.binary.f32(i32 35, float %7555, float %7608)  ; FMax(a,b)
  %7612 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7569
  store float %7611, float* %7612, align 4, !tbaa !126, !noalias !128
  %7613 = call float @dx.op.binary.f32(i32 35, float %7555, float %7607)  ; FMax(a,b)
  %7614 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7569
  store float %7613, float* %7614, align 4, !tbaa !126, !noalias !128
  %7615 = add nsw i32 %7568, 1
  br label %7616

; <label>:7616                                    ; preds = %7610, %7606
  %7617 = phi i32 [ %7615, %7610 ], [ %7568, %7606 ]
  %7618 = add nuw nsw i32 %7569, 1
  %7619 = icmp eq i32 %7618, %7424
  br i1 %7619, label %7620, label %7567

; <label>:7620                                    ; preds = %7616
  %7621 = load float, float* %7561, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7622 = load float, float* %7560, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %7623 = load float, float* %7559, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %7624 = load float, float* %7564, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7625 = load float, float* %7563, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %7626 = load float, float* %7562, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %7627

; <label>:7627                                    ; preds = %7620, %7554
  %7628 = phi float [ -1.000000e+00, %7554 ], [ %7626, %7620 ]
  %7629 = phi float [ -1.000000e+00, %7554 ], [ %7625, %7620 ]
  %7630 = phi float [ -1.000000e+00, %7554 ], [ %7624, %7620 ]
  %7631 = phi float [ -1.000000e+00, %7554 ], [ %7623, %7620 ]
  %7632 = phi float [ -1.000000e+00, %7554 ], [ %7622, %7620 ]
  %7633 = phi float [ -1.000000e+00, %7554 ], [ %7621, %7620 ]
  %7634 = phi i32 [ 0, %7554 ], [ %7617, %7620 ]
  %7635 = call float @dx.op.binary.f32(i32 36, float %7632, float %7633)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7631, float %7635)  ; FMin(a,b)
  %7637 = call float @dx.op.binary.f32(i32 35, float %7631, float %7632)  ; FMax(a,b)
  %7638 = call float @dx.op.binary.f32(i32 36, float %7637, float %7633)  ; FMin(a,b)
  %7639 = call float @dx.op.binary.f32(i32 36, float %7631, float %7632)  ; FMin(a,b)
  %7640 = call float @dx.op.binary.f32(i32 35, float %7639, float %7638)  ; FMax(a,b)
  %7641 = call float @dx.op.binary.f32(i32 35, float %7632, float %7633)  ; FMax(a,b)
  %7642 = call float @dx.op.binary.f32(i32 35, float %7631, float %7641)  ; FMax(a,b)
  store float %7636, float* %7559, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %7640, float* %7560, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %7642, float* %7561, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7643 = call float @dx.op.binary.f32(i32 36, float %7629, float %7630)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7628, float %7643)  ; FMin(a,b)
  %7645 = call float @dx.op.binary.f32(i32 35, float %7628, float %7629)  ; FMax(a,b)
  %7646 = call float @dx.op.binary.f32(i32 36, float %7645, float %7630)  ; FMin(a,b)
  %7647 = call float @dx.op.binary.f32(i32 36, float %7628, float %7629)  ; FMin(a,b)
  %7648 = call float @dx.op.binary.f32(i32 35, float %7647, float %7646)  ; FMax(a,b)
  %7649 = call float @dx.op.binary.f32(i32 35, float %7629, float %7630)  ; FMax(a,b)
  %7650 = call float @dx.op.binary.f32(i32 35, float %7628, float %7649)  ; FMax(a,b)
  store float %7644, float* %7562, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %7648, float* %7563, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %7650, float* %7564, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7651 = sub nsw i32 3, %7634
  %7652 = icmp sgt i32 %7651, 2
  br i1 %7652, label %7653, label %7691

; <label>:7653                                    ; preds = %7627
  %7654 = icmp eq i32 %7422, 0
  %7655 = fsub fast float %7472, %7556
  %7656 = select i1 %7654, float %7655, float %7556
  %7657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7658 = extractvalue %dx.types.CBufRet.f32 %7657, 0
  %7659 = extractvalue %dx.types.CBufRet.f32 %7657, 1
  %7660 = extractvalue %dx.types.CBufRet.f32 %7657, 2
  %7661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7662 = extractvalue %dx.types.CBufRet.f32 %7661, 0
  %7663 = extractvalue %dx.types.CBufRet.f32 %7661, 1
  %7664 = extractvalue %dx.types.CBufRet.f32 %7661, 2
  %7665 = extractvalue %dx.types.CBufRet.f32 %7661, 3
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 3
  %7668 = call float @dx.op.binary.f32(i32 36, float %7557, float %7667)  ; FMin(a,b)
  %7669 = fmul fast float %7665, %7656
  %7670 = call float @dx.op.unary.f32(i32 7, float %7669)  ; Saturate(value)
  %7671 = fsub fast float %7662, %7658
  %7672 = fsub fast float %7663, %7659
  %7673 = fsub fast float %7664, %7660
  %7674 = fmul fast float %7670, %7671
  %7675 = fmul fast float %7670, %7672
  %7676 = fmul fast float %7670, %7673
  %7677 = fadd fast float %7674, %7658
  %7678 = fadd fast float %7675, %7659
  %7679 = fadd fast float %7676, %7660
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.CBufRet.f32 %7680, 1
  %7683 = fadd fast float %7682, %7681
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7686 = extractvalue %dx.types.CBufRet.f32 %7680, 3
  %7687 = fadd fast float %7686, %7685
  %7688 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7689 = fmul fast float %7684, %7668
  %7690 = fmul fast float %7689, %7688
  br label %7773

; <label>:7691                                    ; preds = %7627
  %7692 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7651
  %7693 = load float, float* %7692, align 4, !tbaa !126, !noalias !128
  %7694 = fcmp fast olt float %7693, %7558
  %7695 = icmp sgt i32 %7634, 0
  %7696 = and i1 %7695, %7694
  br i1 %7696, label %7697, label %7734

; <label>:7697                                    ; preds = %7691
  br label %7698

; <label>:7698                                    ; preds = %7727, %7697
  %7699 = phi float [ %7728, %7727 ], [ %7556, %7697 ]
  %7700 = phi float [ %7729, %7727 ], [ %7557, %7697 ]
  %7701 = phi float [ %7709, %7727 ], [ %7693, %7697 ]
  %7702 = phi i32 [ %7706, %7727 ], [ %7651, %7697 ]
  %7703 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7702
  %7704 = load float, float* %7703, align 4, !tbaa !126, !noalias !128
  %7705 = icmp slt i32 %7702, 2
  %7706 = add nsw i32 %7702, 1
  %7707 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7706
  %7708 = load float, float* %7707, align 4, !tbaa !126, !noalias !128
  %7709 = select i1 %7705, float %7708, float %7472
  %7710 = call float @dx.op.binary.f32(i32 36, float %7709, float %7704)  ; FMin(a,b)
  %7711 = call float @dx.op.binary.f32(i32 36, float %7558, float %7710)  ; FMin(a,b)
  %7712 = icmp eq i32 %7422, 0
  %7713 = fadd fast float %7711, %7701
  %7714 = fmul fast float %7713, %7403
  %7715 = fadd fast float %7714, %7416
  br i1 %7712, label %7721, label %7716

; <label>:7716                                    ; preds = %7698
  %7717 = fsub fast float %7711, %7701
  %7718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7717)  ; FMax(a,b)
  %7719 = fmul fast float %7718, %7715
  %7720 = fadd fast float %7719, %7700
  br label %7727

; <label>:7721                                    ; preds = %7698
  %7722 = fsub fast float %7701, %7711
  %7723 = call float @dx.op.unary.f32(i32 6, float %7722)  ; FAbs(value)
  %7724 = fadd fast float %7723, %7699
  %7725 = fmul fast float %7723, %7715
  %7726 = fsub fast float %7700, %7725
  br label %7727

; <label>:7727                                    ; preds = %7721, %7716
  %7728 = phi float [ %7718, %7716 ], [ %7724, %7721 ]
  %7729 = phi float [ %7720, %7716 ], [ %7726, %7721 ]
  %7730 = fcmp fast olt float %7709, %7558
  %7731 = icmp slt i32 %7706, 3
  %7732 = and i1 %7731, %7730
  br i1 %7732, label %7698, label %7733

; <label>:7733                                    ; preds = %7727
  br label %7734

; <label>:7734                                    ; preds = %7733, %7691
  %7735 = phi float [ %7556, %7691 ], [ %7728, %7733 ]
  %7736 = phi float [ %7557, %7691 ], [ %7729, %7733 ]
  %7737 = fsub fast float %7472, %7735
  %7738 = select i1 %7474, float %7735, float %7737
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 0
  %7741 = extractvalue %dx.types.CBufRet.f32 %7739, 1
  %7742 = extractvalue %dx.types.CBufRet.f32 %7739, 2
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7746 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7747 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7750 = call float @dx.op.binary.f32(i32 36, float %7736, float %7749)  ; FMin(a,b)
  %7751 = fmul fast float %7747, %7738
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = fsub fast float %7744, %7740
  %7754 = fsub fast float %7745, %7741
  %7755 = fsub fast float %7746, %7742
  %7756 = fmul fast float %7752, %7753
  %7757 = fmul fast float %7752, %7754
  %7758 = fmul fast float %7752, %7755
  %7759 = fadd fast float %7756, %7740
  %7760 = fadd fast float %7757, %7741
  %7761 = fadd fast float %7758, %7742
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = fadd fast float %7764, %7763
  %7766 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7768 = extractvalue %dx.types.CBufRet.f32 %7762, 3
  %7769 = fadd fast float %7768, %7767
  %7770 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  %7771 = fmul fast float %7766, %7750
  %7772 = fmul fast float %7771, %7770
  br label %7773

; <label>:7773                                    ; preds = %7734, %7653, %7488, %7470, %7468
  %7774 = phi float [ %7497, %7488 ], [ %7656, %7653 ], [ %7738, %7734 ], [ 0.000000e+00, %7468 ], [ 0.000000e+00, %7470 ]
  %7775 = phi float [ %7531, %7488 ], [ %7690, %7653 ], [ %7772, %7734 ], [ 0.000000e+00, %7468 ], [ 0.000000e+00, %7470 ]
  %7776 = phi float [ %7518, %7488 ], [ %7677, %7653 ], [ %7759, %7734 ], [ 0.000000e+00, %7468 ], [ 0.000000e+00, %7470 ]
  %7777 = phi float [ %7519, %7488 ], [ %7678, %7653 ], [ %7760, %7734 ], [ 0.000000e+00, %7468 ], [ 0.000000e+00, %7470 ]
  %7778 = phi float [ %7520, %7488 ], [ %7679, %7653 ], [ %7761, %7734 ], [ 0.000000e+00, %7468 ], [ 0.000000e+00, %7470 ]
  %7779 = fmul fast float %7411, %7775
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7782 = fsub fast float %7418, %7781
  %7783 = fcmp fast olt float %7779, -2.000000e+01
  %7784 = call float @dx.op.unary.f32(i32 21, float %7779)  ; Exp(value)
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 3
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 2
  %7790 = fmul fast float %7787, %7782
  %7791 = call float @dx.op.unary.f32(i32 7, float %7790)  ; Saturate(value)
  %7792 = fsub fast float 1.000000e+00, %7791
  %7793 = fmul fast float %7403, 5.000000e-01
  %7794 = fadd fast float %7793, 5.000000e-01
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fsub fast float 1.000000e+00, %7795
  %7797 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7792)  ; FMax(a,b)
  %7798 = fdiv fast float %7796, %7797
  %7799 = fsub fast float %7782, %7360
  %7800 = call float @dx.op.unary.f32(i32 6, float %7799)  ; FAbs(value)
  %7801 = fmul fast float %7800, %7786
  %7802 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7803 = fsub fast float 1.000000e+00, %7801
  %7804 = fmul fast float %7803, %7802
  %7805 = fadd fast float %7804, %7801
  %7806 = fmul fast float %7789, %7782
  %7807 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7808 = fsub fast float 1.000000e+00, %7805
  %7809 = fmul fast float %7808, %7807
  %7810 = fadd fast float %7809, %7805
  %7811 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7812 = fadd fast float %7784, -1.000000e+00
  %7813 = select i1 %7783, float -1.000000e+00, float %7812
  %7814 = fmul fast float %7811, %7813
  %7815 = fadd fast float %7814, 1.000000e+00
  %7816 = fsub fast float -0.000000e+00, %7814
  %7817 = fmul fast float %7776, %7816
  %7818 = fmul fast float %7777, %7816
  %7819 = fmul fast float %7778, %7816
  br label %7820

; <label>:7820                                    ; preds = %7773, %7369
  %7821 = phi float [ %7774, %7773 ], [ 0.000000e+00, %7369 ]
  %7822 = phi float [ %7815, %7773 ], [ 1.000000e+00, %7369 ]
  %7823 = phi float [ %7817, %7773 ], [ 0.000000e+00, %7369 ]
  %7824 = phi float [ %7818, %7773 ], [ 0.000000e+00, %7369 ]
  %7825 = phi float [ %7819, %7773 ], [ 0.000000e+00, %7369 ]
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7828 = fsub fast float 1.000000e+00, %7822
  %7829 = fmul fast float %7828, %7404
  %7830 = fmul fast float %7829, %7827
  %7831 = fsub fast float %7404, %7830
  br i1 %7397, label %7832, label %7861, !dx.controlflow.hints !164

; <label>:7832                                    ; preds = %7820
  %7833 = fmul fast float %7405, %7394
  %7834 = fadd fast float %7833, %7395
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = fmul fast float %7376, %7831
  %7837 = fsub fast float -0.000000e+00, %7836
  %7838 = fmul fast float %7377, %7831
  %7839 = fsub fast float -0.000000e+00, %7838
  %7840 = call float @dx.op.unary.f32(i32 21, float %7837)  ; Exp(value)
  %7841 = call float @dx.op.unary.f32(i32 21, float %7839)  ; Exp(value)
  %7842 = call float @dx.op.binary.f32(i32 35, float %7384, float %7840)  ; FMax(a,b)
  %7843 = call float @dx.op.binary.f32(i32 35, float %7384, float %7841)  ; FMax(a,b)
  %7844 = fsub fast float %7843, %7842
  %7845 = fmul fast float %7844, %7835
  %7846 = fadd fast float %7845, %7842
  %7847 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  %7848 = fsub fast float %7381, %7386
  %7849 = fsub fast float %7382, %7387
  %7850 = fsub fast float %7383, %7388
  %7851 = fmul fast float %7835, %7848
  %7852 = fmul fast float %7835, %7849
  %7853 = fmul fast float %7835, %7850
  %7854 = fadd fast float %7851, %7386
  %7855 = fadd fast float %7852, %7387
  %7856 = fadd fast float %7853, %7388
  %7857 = fsub fast float 1.000000e+00, %7847
  %7858 = fmul fast float %7857, %7854
  %7859 = fmul fast float %7857, %7855
  %7860 = fmul fast float %7857, %7856
  br label %7920

; <label>:7861                                    ; preds = %7820
  %7862 = fmul fast float %7831, %7393
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fsub fast float 2.000000e+00, %7863
  %7865 = fmul fast float %7863, 9.921875e-01
  %7866 = fmul fast float %7865, %7864
  %7867 = fadd fast float %7866, 3.906250e-03
  %7868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7867, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = fsub fast float %7863, %7869
  %7871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7870)  ; FMax(a,b)
  %7872 = fmul fast float %7379, %7360
  %7873 = call float @dx.op.unary.f32(i32 6, float %7872)  ; FAbs(value)
  %7874 = fcmp fast ogt float %7873, 0x3EB0C6F7A0000000
  br i1 %7874, label %7875, label %7881, !dx.controlflow.hints !165

; <label>:7875                                    ; preds = %7861
  %7876 = fmul fast float %7872, 0xBFF7154760000000
  %7877 = call float @dx.op.unary.f32(i32 21, float %7876)  ; Exp(value)
  %7878 = fsub fast float 1.000000e+00, %7877
  %7879 = fdiv fast float %7878, %7872
  %7880 = fmul fast float %7879, %7389
  br label %7881

; <label>:7881                                    ; preds = %7875, %7861
  %7882 = phi float [ %7880, %7875 ], [ %7389, %7861 ]
  %7883 = fadd fast float %7882, %7391
  %7884 = fmul fast float %7883, %7871
  %7885 = fmul fast float %7376, %7884
  %7886 = fsub fast float -0.000000e+00, %7885
  %7887 = fmul fast float %7377, %7884
  %7888 = fsub fast float -0.000000e+00, %7887
  %7889 = fmul fast float %7378, %7884
  %7890 = fsub fast float -0.000000e+00, %7889
  %7891 = call float @dx.op.unary.f32(i32 21, float %7886)  ; Exp(value)
  %7892 = call float @dx.op.unary.f32(i32 21, float %7888)  ; Exp(value)
  %7893 = call float @dx.op.unary.f32(i32 21, float %7890)  ; Exp(value)
  %7894 = fmul fast float %7405, %7405
  %7895 = fadd fast float %7894, 1.000000e+00
  %7896 = fmul fast float %7895, 0x3FAE8EC8A0000000
  %7897 = fmul fast float %7896, %7386
  %7898 = fmul fast float %7896, %7387
  %7899 = fmul fast float %7896, %7388
  %7900 = fmul fast float %7405, %7384
  %7901 = fsub fast float 1.000000e+00, %7900
  %7902 = fmul fast float %7384, %7384
  %7903 = fsub fast float 1.000000e+00, %7902
  %7904 = fmul fast float %7903, 0x3FB45F3060000000
  %7905 = fmul fast float %7901, %7901
  %7906 = fdiv fast float 1.000000e+00, %7905
  %7907 = fmul fast float %7904, %7906
  %7908 = fmul fast float %7907, %7381
  %7909 = fmul fast float %7907, %7382
  %7910 = fmul fast float %7907, %7383
  %7911 = fadd fast float %7908, %7897
  %7912 = fadd fast float %7909, %7898
  %7913 = fadd fast float %7910, %7899
  %7914 = fsub fast float 1.000000e+00, %7891
  %7915 = fsub fast float 1.000000e+00, %7892
  %7916 = fsub fast float 1.000000e+00, %7893
  %7917 = fmul fast float %7911, %7914
  %7918 = fmul fast float %7912, %7915
  %7919 = fmul fast float %7913, %7916
  br label %7920

; <label>:7920                                    ; preds = %7881, %7832
  %7921 = phi float [ %7858, %7832 ], [ %7917, %7881 ]
  %7922 = phi float [ %7859, %7832 ], [ %7918, %7881 ]
  %7923 = phi float [ %7860, %7832 ], [ %7919, %7881 ]
  %7924 = phi float [ %7847, %7832 ], [ %7891, %7881 ]
  %7925 = phi float [ %7847, %7832 ], [ %7892, %7881 ]
  %7926 = phi float [ %7847, %7832 ], [ %7893, %7881 ]
  br i1 %7413, label %7927, label %8125, !dx.controlflow.hints !166

; <label>:7927                                    ; preds = %7920
  %7928 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7929 = fmul fast float %7928, %7828
  %7930 = fsub fast float %7823, %7921
  %7931 = fsub fast float %7824, %7922
  %7932 = fsub fast float %7825, %7923
  %7933 = fmul fast float %7929, %7930
  %7934 = fmul fast float %7929, %7931
  %7935 = fmul fast float %7929, %7932
  %7936 = fadd fast float %7933, %7921
  %7937 = fadd fast float %7934, %7922
  %7938 = fadd fast float %7935, %7923
  %7939 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7924)  ; FMax(a,b)
  %7940 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7925)  ; FMax(a,b)
  %7941 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7926)  ; FMax(a,b)
  %7942 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7822)  ; FMax(a,b)
  %7943 = call float @dx.op.binary.f32(i32 35, float %7821, float %7831)  ; FMax(a,b)
  %7944 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7943)  ; FMax(a,b)
  %7945 = fdiv fast float %7821, %7944
  %7946 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7947 = fdiv fast float %7831, %7944
  %7948 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7949 = fcmp fast une float %7942, 1.000000e+00
  br i1 %7949, label %7950, label %7963, !dx.controlflow.hints !167

; <label>:7950                                    ; preds = %7927
  %7951 = call float @dx.op.unary.f32(i32 23, float %7942)  ; Log(value)
  %7952 = fmul fast float %7951, 0x3FE62E4300000000
  %7953 = fmul fast float %7823, %7952
  %7954 = fsub fast float -0.000000e+00, %7953
  %7955 = fmul fast float %7824, %7952
  %7956 = fsub fast float -0.000000e+00, %7955
  %7957 = fmul fast float %7825, %7952
  %7958 = fsub fast float -0.000000e+00, %7957
  %7959 = fsub fast float 1.000000e+00, %7942
  %7960 = fdiv fast float %7954, %7959
  %7961 = fdiv fast float %7956, %7959
  %7962 = fdiv fast float %7958, %7959
  br label %7963

; <label>:7963                                    ; preds = %7950, %7927
  %7964 = phi float [ %7960, %7950 ], [ %7823, %7927 ]
  %7965 = phi float [ %7961, %7950 ], [ %7824, %7927 ]
  %7966 = phi float [ %7962, %7950 ], [ %7825, %7927 ]
  %7967 = phi float [ %7952, %7950 ], [ 0.000000e+00, %7927 ]
  %7968 = fcmp fast une float %7939, 1.000000e+00
  br i1 %7968, label %7969, label %7976, !dx.controlflow.hints !168

; <label>:7969                                    ; preds = %7963
  %7970 = call float @dx.op.unary.f32(i32 23, float %7939)  ; Log(value)
  %7971 = fmul fast float %7970, 0x3FE62E4300000000
  %7972 = fmul fast float %7936, %7971
  %7973 = fsub fast float -0.000000e+00, %7972
  %7974 = fsub fast float 1.000000e+00, %7939
  %7975 = fdiv fast float %7973, %7974
  br label %7976

; <label>:7976                                    ; preds = %7969, %7963
  %7977 = phi float [ %7975, %7969 ], [ %7936, %7963 ]
  %7978 = phi float [ %7971, %7969 ], [ 0.000000e+00, %7963 ]
  %7979 = fcmp fast une float %7940, 1.000000e+00
  br i1 %7979, label %7980, label %7987, !dx.controlflow.hints !168

; <label>:7980                                    ; preds = %7976
  %7981 = call float @dx.op.unary.f32(i32 23, float %7940)  ; Log(value)
  %7982 = fmul fast float %7981, 0x3FE62E4300000000
  %7983 = fmul fast float %7937, %7982
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = fsub fast float 1.000000e+00, %7940
  %7986 = fdiv fast float %7984, %7985
  br label %7987

; <label>:7987                                    ; preds = %7980, %7976
  %7988 = phi float [ %7986, %7980 ], [ %7937, %7976 ]
  %7989 = phi float [ %7982, %7980 ], [ 0.000000e+00, %7976 ]
  %7990 = fcmp fast une float %7941, 1.000000e+00
  br i1 %7990, label %7991, label %7998, !dx.controlflow.hints !168

; <label>:7991                                    ; preds = %7987
  %7992 = call float @dx.op.unary.f32(i32 23, float %7941)  ; Log(value)
  %7993 = fmul fast float %7992, 0x3FE62E4300000000
  %7994 = fmul fast float %7938, %7993
  %7995 = fsub fast float -0.000000e+00, %7994
  %7996 = fsub fast float 1.000000e+00, %7941
  %7997 = fdiv fast float %7995, %7996
  br label %7998

; <label>:7998                                    ; preds = %7991, %7987
  %7999 = phi float [ %7997, %7991 ], [ %7938, %7987 ]
  %8000 = phi float [ %7993, %7991 ], [ 0.000000e+00, %7987 ]
  %8001 = fmul fast float %7964, %7948
  %8002 = fmul fast float %7965, %7948
  %8003 = fmul fast float %7966, %7948
  %8004 = fmul fast float %7967, %7948
  %8005 = fmul fast float %7977, %7946
  %8006 = fmul fast float %7988, %7946
  %8007 = fmul fast float %7999, %7946
  %8008 = fmul fast float %7978, %7946
  %8009 = fmul fast float %7989, %7946
  %8010 = fmul fast float %8000, %7946
  %8011 = fadd fast float %8005, %8001
  %8012 = fadd fast float %8006, %8002
  %8013 = fadd fast float %8007, %8003
  %8014 = fadd fast float %8008, %8004
  %8015 = fadd fast float %8009, %8004
  %8016 = fadd fast float %8010, %8004
  %8017 = fcmp fast une float %8014, 0.000000e+00
  br i1 %8017, label %8018, label %8025, !dx.controlflow.hints !169

; <label>:8018                                    ; preds = %7998
  %8019 = fmul fast float %8014, 0x3FF7154760000000
  %8020 = call float @dx.op.unary.f32(i32 21, float %8019)  ; Exp(value)
  %8021 = fsub fast float 1.000000e+00, %8020
  %8022 = fmul fast float %8011, %8021
  %8023 = fsub fast float -0.000000e+00, %8022
  %8024 = fdiv fast float %8023, %8014
  br label %8025

; <label>:8025                                    ; preds = %8018, %7998
  %8026 = phi float [ %8020, %8018 ], [ 1.000000e+00, %7998 ]
  %8027 = phi float [ %8024, %8018 ], [ %8011, %7998 ]
  %8028 = fcmp fast une float %8015, 0.000000e+00
  br i1 %8028, label %8029, label %8036, !dx.controlflow.hints !169

; <label>:8029                                    ; preds = %8025
  %8030 = fmul fast float %8015, 0x3FF7154760000000
  %8031 = call float @dx.op.unary.f32(i32 21, float %8030)  ; Exp(value)
  %8032 = fsub fast float 1.000000e+00, %8031
  %8033 = fmul fast float %8012, %8032
  %8034 = fsub fast float -0.000000e+00, %8033
  %8035 = fdiv fast float %8034, %8015
  br label %8036

; <label>:8036                                    ; preds = %8029, %8025
  %8037 = phi float [ %8031, %8029 ], [ 1.000000e+00, %8025 ]
  %8038 = phi float [ %8035, %8029 ], [ %8012, %8025 ]
  %8039 = fcmp fast une float %8016, 0.000000e+00
  br i1 %8039, label %8040, label %8047, !dx.controlflow.hints !169

; <label>:8040                                    ; preds = %8036
  %8041 = fmul fast float %8016, 0x3FF7154760000000
  %8042 = call float @dx.op.unary.f32(i32 21, float %8041)  ; Exp(value)
  %8043 = fsub fast float 1.000000e+00, %8042
  %8044 = fmul fast float %8013, %8043
  %8045 = fsub fast float -0.000000e+00, %8044
  %8046 = fdiv fast float %8045, %8016
  br label %8047

; <label>:8047                                    ; preds = %8040, %8036
  %8048 = phi float [ %8042, %8040 ], [ 1.000000e+00, %8036 ]
  %8049 = phi float [ %8046, %8040 ], [ %8013, %8036 ]
  %8050 = fcmp fast ogt float %7946, %7948
  br i1 %8050, label %8051, label %8071

; <label>:8051                                    ; preds = %8047
  %8052 = fsub fast float 1.000000e+00, %7948
  %8053 = fmul fast float %7964, %8052
  %8054 = fmul fast float %7965, %8052
  %8055 = fmul fast float %7966, %8052
  %8056 = fmul fast float %7967, %8052
  %8057 = fcmp fast une float %8056, 0.000000e+00
  br i1 %8057, label %8058, label %8109, !dx.controlflow.hints !170

; <label>:8058                                    ; preds = %8051
  %8059 = fmul fast float %8056, 0x3FF7154760000000
  %8060 = call float @dx.op.unary.f32(i32 21, float %8059)  ; Exp(value)
  %8061 = fsub fast float 1.000000e+00, %8060
  %8062 = fmul fast float %8053, %8061
  %8063 = fsub fast float -0.000000e+00, %8062
  %8064 = fmul fast float %8054, %8061
  %8065 = fsub fast float -0.000000e+00, %8064
  %8066 = fmul fast float %8055, %8061
  %8067 = fsub fast float -0.000000e+00, %8066
  %8068 = fdiv fast float %8063, %8056
  %8069 = fdiv fast float %8065, %8056
  %8070 = fdiv fast float %8067, %8056
  br label %8109

; <label>:8071                                    ; preds = %8047
  %8072 = fsub fast float 1.000000e+00, %7946
  %8073 = fmul fast float %7977, %8072
  %8074 = fmul fast float %7988, %8072
  %8075 = fmul fast float %7999, %8072
  %8076 = fmul fast float %7978, %8072
  %8077 = fmul fast float %7989, %8072
  %8078 = fmul fast float %8000, %8072
  %8079 = fcmp fast une float %8076, 0.000000e+00
  br i1 %8079, label %8080, label %8087, !dx.controlflow.hints !169

; <label>:8080                                    ; preds = %8071
  %8081 = fmul fast float %8076, 0x3FF7154760000000
  %8082 = call float @dx.op.unary.f32(i32 21, float %8081)  ; Exp(value)
  %8083 = fsub fast float 1.000000e+00, %8082
  %8084 = fmul fast float %8073, %8083
  %8085 = fsub fast float -0.000000e+00, %8084
  %8086 = fdiv fast float %8085, %8076
  br label %8087

; <label>:8087                                    ; preds = %8080, %8071
  %8088 = phi float [ %8086, %8080 ], [ %8073, %8071 ]
  %8089 = phi float [ %8082, %8080 ], [ 1.000000e+00, %8071 ]
  %8090 = fcmp fast une float %8077, 0.000000e+00
  br i1 %8090, label %8091, label %8098, !dx.controlflow.hints !169

; <label>:8091                                    ; preds = %8087
  %8092 = fmul fast float %8077, 0x3FF7154760000000
  %8093 = call float @dx.op.unary.f32(i32 21, float %8092)  ; Exp(value)
  %8094 = fsub fast float 1.000000e+00, %8093
  %8095 = fmul fast float %8074, %8094
  %8096 = fsub fast float -0.000000e+00, %8095
  %8097 = fdiv fast float %8096, %8077
  br label %8098

; <label>:8098                                    ; preds = %8091, %8087
  %8099 = phi float [ %8097, %8091 ], [ %8074, %8087 ]
  %8100 = phi float [ %8093, %8091 ], [ 1.000000e+00, %8087 ]
  %8101 = fcmp fast une float %8078, 0.000000e+00
  br i1 %8101, label %8102, label %8109, !dx.controlflow.hints !169

; <label>:8102                                    ; preds = %8098
  %8103 = fmul fast float %8078, 0x3FF7154760000000
  %8104 = call float @dx.op.unary.f32(i32 21, float %8103)  ; Exp(value)
  %8105 = fsub fast float 1.000000e+00, %8104
  %8106 = fmul fast float %8075, %8105
  %8107 = fsub fast float -0.000000e+00, %8106
  %8108 = fdiv fast float %8107, %8078
  br label %8109

; <label>:8109                                    ; preds = %8102, %8098, %8058, %8051
  %8110 = phi float [ %8108, %8102 ], [ %8070, %8058 ], [ %8055, %8051 ], [ %8075, %8098 ]
  %8111 = phi float [ %8099, %8102 ], [ %8069, %8058 ], [ %8054, %8051 ], [ %8099, %8098 ]
  %8112 = phi float [ %8088, %8102 ], [ %8068, %8058 ], [ %8053, %8051 ], [ %8088, %8098 ]
  %8113 = phi float [ %8104, %8102 ], [ %8060, %8058 ], [ 1.000000e+00, %8051 ], [ 1.000000e+00, %8098 ]
  %8114 = phi float [ %8100, %8102 ], [ %8060, %8058 ], [ 1.000000e+00, %8051 ], [ %8100, %8098 ]
  %8115 = phi float [ %8089, %8102 ], [ %8060, %8058 ], [ 1.000000e+00, %8051 ], [ %8089, %8098 ]
  %8116 = fmul fast float %8115, %8027
  %8117 = fmul fast float %8114, %8038
  %8118 = fmul fast float %8113, %8049
  %8119 = fadd fast float %8116, %8112
  %8120 = fadd fast float %8117, %8111
  %8121 = fadd fast float %8118, %8110
  %8122 = fmul fast float %8115, %8026
  %8123 = fmul fast float %8114, %8037
  %8124 = fmul fast float %8113, %8048
  br label %8125

; <label>:8125                                    ; preds = %8109, %7920
  %8126 = phi float [ %8124, %8109 ], [ %7926, %7920 ]
  %8127 = phi float [ %8123, %8109 ], [ %7925, %7920 ]
  %8128 = phi float [ %8122, %8109 ], [ %7924, %7920 ]
  %8129 = phi float [ %8121, %8109 ], [ %7923, %7920 ]
  %8130 = phi float [ %8120, %8109 ], [ %7922, %7920 ]
  %8131 = phi float [ %8119, %8109 ], [ %7921, %7920 ]
  %8132 = fmul fast float %8131, %7087
  %8133 = fmul fast float %8130, %7087
  %8134 = fmul fast float %8129, %7087
  %8135 = fmul fast float %8128, %7368
  %8136 = call float @dx.op.dot3.f32(i32 55, float %8128, float %8127, float %8126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8137 = call float @dx.op.dot3.f32(i32 55, float %8132, float %8133, float %8134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8138 = select i1 %297, float %8136, float %8128
  %8139 = select i1 %297, float %8136, float %8127
  %8140 = select i1 %297, float 1.000000e+00, float %8126
  %8141 = select i1 %297, float %8137, float %8132
  %8142 = select i1 %297, float 0.000000e+00, float %8133
  %8143 = select i1 %297, float 0.000000e+00, float %8134
  %8144 = fmul fast float %8138, %7362
  %8145 = fmul fast float %8139, %7363
  %8146 = fmul fast float %8140, %7364
  %8147 = fadd fast float %8144, %8141
  %8148 = fadd fast float %8145, %8142
  %8149 = fadd fast float %8143, %8146
  %8150 = fmul fast float %8138, %7365
  %8151 = fmul fast float %8139, %7366
  %8152 = fmul fast float %8140, %7367
  %8153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.i32 %8153, 0
  %8155 = icmp eq i32 %8154, 0
  br i1 %8155, label %8523, label %8156, !dx.controlflow.hints !171

; <label>:8156                                    ; preds = %8125
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 2
  %8159 = extractvalue %dx.types.CBufRet.f32 %8157, 3
  %8160 = fmul fast float %8158, %106
  %8161 = fmul fast float %8159, %107
  %8162 = fmul fast float %8160, 2.000000e+00
  %8163 = fmul fast float %8161, 2.000000e+00
  %8164 = fsub fast float 1.000000e+00, %8162
  %8165 = fsub fast float 1.000000e+00, %8163
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.CBufRet.f32 %8166, 1
  %8169 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8170 = fmul fast float %8164, %8167
  %8171 = fmul fast float %8164, %8168
  %8172 = fmul fast float %8164, %8169
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8177 = fmul fast float %8165, %8174
  %8178 = fmul fast float %8165, %8175
  %8179 = fmul fast float %8165, %8176
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8184 = fadd fast float %8177, %8181
  %8185 = fadd fast float %8184, %8170
  %8186 = fadd fast float %8178, %8182
  %8187 = fadd fast float %8186, %8171
  %8188 = fadd fast float %8179, %8183
  %8189 = fadd fast float %8188, %8172
  %8190 = fmul fast float %8185, %7361
  %8191 = fmul fast float %8187, %7361
  %8192 = fmul fast float %8189, %7361
  %8193 = fmul fast float %8190, %8190
  %8194 = fmul fast float %8191, %8191
  %8195 = fadd fast float %8193, %8194
  %8196 = fmul fast float %8192, %8192
  %8197 = fadd fast float %8195, %8196
  %8198 = call float @dx.op.unary.f32(i32 24, float %8197)  ; Sqrt(value)
  %8199 = extractvalue %dx.types.CBufRet.f32 %7088, 0
  %8200 = fsub fast float %8198, %8199
  %8201 = extractvalue %dx.types.CBufRet.f32 %7088, 2
  %8202 = fmul fast float %8200, %8201
  %8203 = call float @dx.op.unary.f32(i32 7, float %8202)  ; Saturate(value)
  %8204 = fadd fast float %8203, -5.000000e-01
  %8205 = fmul fast float %8204, 2.000000e+00
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %8208 = call float @dx.op.binary.f32(i32 36, float %8207, float %8205)  ; FMin(a,b)
  %8209 = fsub fast float -0.000000e+00, %8207
  %8210 = fcmp fast ogt float %8208, %8209
  br i1 %8210, label %8211, label %8523, !dx.controlflow.hints !172

; <label>:8211                                    ; preds = %8156
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 3
  %8214 = fcmp fast ogt float %8213, 0.000000e+00
  br i1 %8214, label %8215, label %8290, !dx.controlflow.hints !173

; <label>:8215                                    ; preds = %8211
  %8216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8217 = extractvalue %dx.types.Dimensions %8216, 0
  %8218 = sitofp i32 %8217 to float
  %8219 = extractvalue %dx.types.Dimensions %8216, 1
  %8220 = sitofp i32 %8219 to float
  %8221 = fmul fast float %8160, %8218
  %8222 = fmul fast float %8161, %8220
  %8223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8224 = extractvalue %dx.types.CBufRet.f32 %8223, 1
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = fptoui float %8225 to i32
  %8227 = fptoui float %8221 to i32
  %8228 = fptoui float %8222 to i32
  %8229 = and i32 %8226, 31
  %8230 = lshr i32 %8227, %8229
  %8231 = lshr i32 %8228, %8229
  %8232 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8226, i32 %8230, i32 %8231, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8233 = extractvalue %dx.types.ResRet.f32 %8232, 0
  %8234 = fcmp fast olt float %8233, -1.000000e+00
  %8235 = fcmp fast ogt float %8233, -1.000000e+00
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 1
  %8238 = select i1 %8235, float %8237, float 1.000000e+00
  %8239 = fadd fast float %8233, 1.000000e+00
  %8240 = fmul fast float %8238, %8239
  %8241 = call float @dx.op.unary.f32(i32 6, float %8240)  ; FAbs(value)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8236, 3
  %8243 = fcmp fast oge float %8241, %8242
  %8244 = select i1 %8243, float 0x4197782600000000, float %8241
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.CBufRet.f32 %8245, 2
  %8249 = select i1 %8234, float %8246, float %8167
  %8250 = select i1 %8234, float %8247, float %8168
  %8251 = select i1 %8234, float %8248, float %8169
  %8252 = fmul fast float %8249, %8164
  %8253 = fmul fast float %8250, %8164
  %8254 = fmul fast float %8251, %8164
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = select i1 %8234, float %8256, float %8174
  %8260 = select i1 %8234, float %8257, float %8175
  %8261 = select i1 %8234, float %8258, float %8176
  %8262 = fmul fast float %8259, %8165
  %8263 = fmul fast float %8260, %8165
  %8264 = fmul fast float %8261, %8165
  %8265 = fadd fast float %8262, %8252
  %8266 = fadd fast float %8263, %8253
  %8267 = fadd fast float %8264, %8254
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8272 = select i1 %8234, float %8269, float %8181
  %8273 = select i1 %8234, float %8270, float %8182
  %8274 = select i1 %8234, float %8271, float %8183
  %8275 = fadd fast float %8265, %8272
  %8276 = fadd fast float %8266, %8273
  %8277 = fadd fast float %8267, %8274
  %8278 = fmul fast float %8275, %8244
  %8279 = fmul fast float %8276, %8244
  %8280 = fmul fast float %8277, %8244
  %8281 = fmul fast float %8278, %8278
  %8282 = fmul fast float %8279, %8279
  %8283 = fadd fast float %8281, %8282
  %8284 = fmul fast float %8280, %8280
  %8285 = fadd fast float %8283, %8284
  %8286 = call float @dx.op.unary.f32(i32 24, float %8285)  ; Sqrt(value)
  %8287 = fsub fast float %8286, %8199
  %8288 = fmul fast float %8287, %8201
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  br label %8290

; <label>:8290                                    ; preds = %8215, %8211
  %8291 = phi float [ %8289, %8215 ], [ 1.000000e+00, %8211 ]
  %8292 = fmul fast float %8208, 5.000000e-01
  %8293 = fadd fast float %8292, 5.000000e-01
  %8294 = call float @dx.op.unary.f32(i32 22, float %8293)  ; Frc(value)
  %8295 = call float @dx.op.unary.f32(i32 27, float %8294)  ; Round_ni(value)
  %8296 = call float @dx.op.unary.f32(i32 22, float %8294)  ; Frc(value)
  %8297 = fmul fast float %8296, 2.000000e+00
  %8298 = fadd fast float %8297, -1.000000e+00
  %8299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8160, float %8161, float %8295, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8300 = extractvalue %dx.types.ResRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.ResRet.f32 %8299, 1
  %8302 = extractvalue %dx.types.ResRet.f32 %8299, 2
  %8303 = extractvalue %dx.types.ResRet.f32 %8299, 3
  %8304 = fadd fast float %8300, -5.000000e-01
  %8305 = fadd fast float %8302, -5.000000e-01
  %8306 = fmul fast float %8304, 0xBFD5555560000000
  %8307 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8305, float %8306)  ; FMad(a,b,c)
  %8308 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8301, float 0.000000e+00)  ; FMad(a,b,c)
  %8309 = fadd fast float %8308, %8303
  %8310 = fmul fast float %8304, -7.500000e-01
  %8311 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8305, float %8310)  ; FMad(a,b,c)
  %8312 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8301, float 0.000000e+00)  ; FMad(a,b,c)
  %8313 = fadd fast float %8312, %8303
  %8314 = call float @dx.op.binary.f32(i32 35, float %8307, float -1.000000e+00)  ; FMax(a,b)
  %8315 = call float @dx.op.binary.f32(i32 35, float %8309, float -1.000000e+00)  ; FMax(a,b)
  %8316 = call float @dx.op.binary.f32(i32 35, float %8311, float -1.000000e+00)  ; FMax(a,b)
  %8317 = call float @dx.op.binary.f32(i32 35, float %8313, float -1.000000e+00)  ; FMax(a,b)
  %8318 = call float @dx.op.binary.f32(i32 36, float %8314, float 1.000000e+00)  ; FMin(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8315, float 1.000000e+00)  ; FMin(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8316, float 1.000000e+00)  ; FMin(a,b)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8317, float 1.000000e+00)  ; FMin(a,b)
  %8322 = fcmp fast olt float %8318, 0x3FEFFF8020000000
  br i1 %8322, label %8323, label %8438, !dx.controlflow.hints !174

; <label>:8323                                    ; preds = %8290
  %8324 = extractvalue %dx.types.CBufRet.f32 %8206, 3
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.CBufRet.f32 %8325, 1
  %8328 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8329 = extractvalue %dx.types.CBufRet.f32 %8325, 3
  %8330 = fsub fast float %8326, %8318
  %8331 = fsub fast float %8327, %8319
  %8332 = fsub fast float %8328, %8320
  %8333 = fsub fast float %8329, %8321
  %8334 = fmul fast float %8330, %8324
  %8335 = fmul fast float %8331, %8324
  %8336 = fmul fast float %8332, %8324
  %8337 = fmul fast float %8333, %8324
  %8338 = fadd fast float %8334, %8318
  %8339 = fadd fast float %8335, %8319
  %8340 = fsub fast float -0.000000e+00, %8339
  %8341 = fadd fast float %8336, %8320
  %8342 = fadd fast float %8337, %8321
  %8343 = fmul fast float %8338, %8338
  %8344 = fsub fast float %8339, %8343
  %8345 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8344)  ; FMax(a,b)
  %8346 = fdiv fast float 1.000000e+00, %8345
  %8347 = fmul fast float %8339, %8338
  %8348 = fsub fast float %8341, %8347
  %8349 = fsub fast float %8298, %8338
  %8350 = fmul fast float %8298, %8298
  %8351 = fsub fast float %8350, %8339
  %8352 = fmul fast float %8349, %8346
  %8353 = fmul fast float %8352, %8348
  %8354 = fsub fast float %8351, %8353
  %8355 = fmul fast float %8339, %8339
  %8356 = fsub fast float %8342, %8355
  %8357 = fmul fast float %8348, %8348
  %8358 = fmul fast float %8357, %8346
  %8359 = fsub fast float %8356, %8358
  %8360 = fdiv fast float %8354, %8359
  %8361 = fmul fast float %8348, %8360
  %8362 = fsub fast float %8349, %8361
  %8363 = fmul fast float %8362, %8346
  %8364 = fmul fast float %8363, %8338
  %8365 = fsub fast float 1.000000e+00, %8364
  %8366 = fmul fast float %8339, %8360
  %8367 = fsub fast float %8365, %8366
  %8368 = fmul fast float %8363, %8363
  %8369 = fmul fast float %8360, 4.000000e+00
  %8370 = fmul fast float %8369, %8367
  %8371 = fsub fast float %8368, %8370
  %8372 = call float @dx.op.unary.f32(i32 24, float %8371)  ; Sqrt(value)
  %8373 = fcmp fast oge float %8363, 0.000000e+00
  %8374 = fsub fast float -0.000000e+00, %8372
  %8375 = select i1 %8373, float %8374, float %8372
  %8376 = fsub fast float %8375, %8363
  %8377 = fdiv fast float %8376, %8360
  %8378 = fdiv fast float %8367, %8376
  %8379 = fmul fast float %8377, 5.000000e-01
  %8380 = fmul fast float %8378, 2.000000e+00
  %8381 = select i1 %8373, float %8379, float %8380
  %8382 = select i1 %8373, float %8380, float %8379
  %8383 = call float @dx.op.binary.f32(i32 35, float %8381, float %8382)  ; FMax(a,b)
  %8384 = call float @dx.op.binary.f32(i32 36, float %8381, float %8382)  ; FMin(a,b)
  %8385 = fcmp fast ogt float %8298, %8384
  br i1 %8385, label %8386, label %8396

; <label>:8386                                    ; preds = %8323
  %8387 = fsub fast float %8298, %8384
  %8388 = fsub fast float %8383, %8384
  %8389 = fmul fast float %8387, %8388
  %8390 = fmul fast float %8383, %8298
  %8391 = fadd fast float %8383, %8298
  %8392 = fmul fast float %8391, %8338
  %8393 = fadd fast float %8390, %8339
  %8394 = fsub fast float %8393, %8392
  %8395 = fdiv fast float %8394, %8389
  br label %8396

; <label>:8396                                    ; preds = %8386, %8323
  %8397 = phi float [ %8395, %8386 ], [ 0.000000e+00, %8323 ]
  %8398 = fcmp fast ogt float %8298, %8383
  %8399 = fsub fast float %8298, %8383
  br i1 %8398, label %8400, label %8410

; <label>:8400                                    ; preds = %8396
  %8401 = fsub fast float %8383, %8384
  %8402 = fmul fast float %8401, %8399
  %8403 = fmul fast float %8384, %8298
  %8404 = fadd fast float %8384, %8298
  %8405 = fmul fast float %8404, %8338
  %8406 = fsub fast float %8340, %8403
  %8407 = fadd fast float %8406, %8405
  %8408 = fdiv fast float %8407, %8402
  %8409 = fadd fast float %8408, %8397
  br label %8410

; <label>:8410                                    ; preds = %8400, %8396
  %8411 = phi float [ %8409, %8400 ], [ %8397, %8396 ]
  %8412 = fsub fast float %8298, %8384
  %8413 = fmul fast float %8412, %8399
  %8414 = fmul fast float %8384, %8383
  %8415 = fadd fast float %8384, %8383
  %8416 = fmul fast float %8415, %8338
  %8417 = fadd fast float %8414, %8339
  %8418 = fsub fast float %8417, %8416
  %8419 = fdiv fast float %8418, %8413
  %8420 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8421 = fcmp fast oeq float %7089, 0.000000e+00
  %8422 = extractvalue %dx.types.CBufRet.f32 %8206, 0
  %8423 = fcmp fast oeq float %8422, 0.000000e+00
  %8424 = or i1 %8421, %8423
  %8425 = fmul fast float %8422, 2.000000e+00
  %8426 = fadd fast float %8207, %8208
  %8427 = fdiv fast float %8426, %8425
  %8428 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8429 = fmul fast float %8428, 2.000000e+00
  %8430 = fsub fast float 3.000000e+00, %8429
  %8431 = fmul fast float %8428, %8428
  %8432 = fmul fast float %8431, %8430
  %8433 = select i1 %8424, float 1.000000e+00, float %8432
  %8434 = fmul fast float %8419, %7089
  %8435 = fadd fast float %8420, %8434
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8437 = fmul fast float %8433, %8436
  br label %8438

; <label>:8438                                    ; preds = %8410, %8290
  %8439 = phi float [ %8437, %8410 ], [ 0.000000e+00, %8290 ]
  %8440 = fsub fast float 1.000000e+00, %8439
  %8441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8160, float %8161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8442 = extractvalue %dx.types.ResRet.f32 %8441, 0
  %8443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.i32 %8443, 2
  %8445 = icmp eq i32 %8444, 0
  br i1 %8445, label %8451, label %8446

; <label>:8446                                    ; preds = %8438
  %8447 = call float @dx.op.unary.f32(i32 7, float %8439)  ; Saturate(value)
  %8448 = fadd fast float %8442, -1.000000e+00
  %8449 = fmul fast float %8447, %8448
  %8450 = fadd fast float %8449, 1.000000e+00
  br label %8451

; <label>:8451                                    ; preds = %8446, %8438
  %8452 = phi float [ %8450, %8446 ], [ %8440, %8438 ]
  br i1 %8214, label %8453, label %8471

; <label>:8453                                    ; preds = %8451
  %8454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8455 = extractvalue %dx.types.CBufRet.f32 %8454, 1
  %8456 = fsub fast float %8291, %8455
  %8457 = call float @dx.op.unary.f32(i32 7, float %8456)  ; Saturate(value)
  %8458 = fsub fast float %8291, %8213
  %8459 = call float @dx.op.unary.f32(i32 7, float %8458)  ; Saturate(value)
  %8460 = fsub fast float %8457, %8459
  %8461 = fsub fast float %8293, %8459
  %8462 = fdiv fast float %8461, %8460
  %8463 = call float @dx.op.unary.f32(i32 7, float %8462)  ; Saturate(value)
  %8464 = fmul fast float %8463, 2.000000e+00
  %8465 = fsub fast float 3.000000e+00, %8464
  %8466 = fsub fast float %8442, %8452
  %8467 = fmul fast float %8463, %8463
  %8468 = fmul fast float %8467, %8466
  %8469 = fmul fast float %8468, %8465
  %8470 = fadd fast float %8469, %8452
  br label %8471

; <label>:8471                                    ; preds = %8453, %8451
  %8472 = phi float [ %8470, %8453 ], [ %8452, %8451 ]
  %8473 = call float @dx.op.binary.f32(i32 35, float %8442, float %8472)  ; FMax(a,b)
  %8474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.i32 %8474, 2
  %8476 = and i32 %8475, 1
  %8477 = icmp eq i32 %8476, 0
  %8478 = fcmp fast une float %8473, 1.000000e+00
  %8479 = and i1 %8478, %8477
  br i1 %8479, label %8480, label %8499

; <label>:8480                                    ; preds = %8471
  %8481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8160, float %8161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.ResRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.ResRet.f32 %8481, 2
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8487 = fmul fast float %8486, %8482
  %8488 = fmul fast float %8486, %8483
  %8489 = fmul fast float %8486, %8484
  %8490 = fcmp fast ogt float %8442, 0x3FEFFF2E40000000
  %8491 = fsub fast float 1.000000e+00, %8473
  %8492 = fsub fast float 1.000000e+00, %8442
  %8493 = fdiv fast float %8491, %8492
  %8494 = call float @dx.op.unary.f32(i32 7, float %8493)  ; Saturate(value)
  %8495 = select i1 %8490, float 0.000000e+00, float %8494
  %8496 = fmul fast float %8487, %8495
  %8497 = fmul fast float %8488, %8495
  %8498 = fmul fast float %8489, %8495
  br label %8499

; <label>:8499                                    ; preds = %8480, %8471
  %8500 = phi float [ 0.000000e+00, %8471 ], [ %8496, %8480 ]
  %8501 = phi float [ 0.000000e+00, %8471 ], [ %8497, %8480 ]
  %8502 = phi float [ 0.000000e+00, %8471 ], [ %8498, %8480 ]
  %8503 = fmul fast float %8500, %7087
  %8504 = fmul fast float %8501, %7087
  %8505 = fmul fast float %8502, %7087
  %8506 = fmul fast float %8473, %8135
  %8507 = call float @dx.op.dot3.f32(i32 55, float %8473, float %8473, float %8473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8508 = call float @dx.op.dot3.f32(i32 55, float %8503, float %8504, float %8505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8509 = select i1 %297, float %8507, float %8473
  %8510 = select i1 %297, float 1.000000e+00, float %8473
  %8511 = select i1 %297, float %8508, float %8503
  %8512 = select i1 %297, float 0.000000e+00, float %8504
  %8513 = select i1 %297, float 0.000000e+00, float %8505
  %8514 = fmul fast float %8509, %8147
  %8515 = fmul fast float %8509, %8148
  %8516 = fmul fast float %8510, %8149
  %8517 = fadd fast float %8514, %8511
  %8518 = fadd fast float %8515, %8512
  %8519 = fadd fast float %8513, %8516
  %8520 = fmul fast float %8509, %8150
  %8521 = fmul fast float %8509, %8151
  %8522 = fmul fast float %8510, %8152
  br label %8523

; <label>:8523                                    ; preds = %8499, %8156, %8125, %7357
  %8524 = phi float [ %7362, %7357 ], [ %8147, %8125 ], [ %8517, %8499 ], [ %8147, %8156 ]
  %8525 = phi float [ %7363, %7357 ], [ %8148, %8125 ], [ %8518, %8499 ], [ %8148, %8156 ]
  %8526 = phi float [ %7364, %7357 ], [ %8149, %8125 ], [ %8519, %8499 ], [ %8149, %8156 ]
  %8527 = phi float [ %7365, %7357 ], [ %8150, %8125 ], [ %8520, %8499 ], [ %8150, %8156 ]
  %8528 = phi float [ %7366, %7357 ], [ %8151, %8125 ], [ %8521, %8499 ], [ %8151, %8156 ]
  %8529 = phi float [ %7367, %7357 ], [ %8152, %8125 ], [ %8522, %8499 ], [ %8152, %8156 ]
  %8530 = phi float [ %7368, %7357 ], [ %8135, %8125 ], [ %8506, %8499 ], [ %8135, %8156 ]
  %8531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8532 = extractvalue %dx.types.CBufRet.f32 %8531, 2
  %8533 = extractvalue %dx.types.CBufRet.f32 %8531, 3
  %8534 = fmul fast float %8532, %106
  %8535 = fmul fast float %8533, %107
  %8536 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8537 = call float @dx.op.unary.f32(i32 7, float %8535)  ; Saturate(value)
  %8538 = select i1 %7099, i32 2, i32 0
  %8539 = or i32 %8538, 1
  %8540 = uitofp i32 %8539 to float
  %8541 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8536, float %8537, float %8540, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.ResRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.ResRet.f32 %8541, 2
  %8545 = extractvalue %dx.types.ResRet.f32 %8541, 3
  %8546 = add nuw nsw i32 %8538, 2
  %8547 = uitofp i32 %8546 to float
  %8548 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8536, float %8537, float %8547, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8549 = extractvalue %dx.types.ResRet.f32 %8548, 0
  %8550 = extractvalue %dx.types.ResRet.f32 %8548, 1
  %8551 = extractvalue %dx.types.ResRet.f32 %8548, 2
  %8552 = extractvalue %dx.types.ResRet.f32 %8548, 3
  %8553 = call float @dx.op.binary.f32(i32 35, float %8543, float %8544)  ; FMax(a,b)
  %8554 = call float @dx.op.binary.f32(i32 35, float %8542, float %8553)  ; FMax(a,b)
  %8555 = call float @dx.op.binary.f32(i32 35, float %8554, float %8545)  ; FMax(a,b)
  %8556 = call float @dx.op.binary.f32(i32 36, float %8550, float %8551)  ; FMin(a,b)
  %8557 = call float @dx.op.binary.f32(i32 36, float %8549, float %8556)  ; FMin(a,b)
  %8558 = call float @dx.op.binary.f32(i32 36, float %8557, float %8552)  ; FMin(a,b)
  %8559 = fmul fast float %8555, 2.550000e+02
  %8560 = fadd fast float %8559, 0x3F70101020000000
  %8561 = fptoui float %8560 to i32
  %8562 = fmul fast float %8558, 2.550000e+02
  %8563 = fadd fast float %8562, 0x3F70101020000000
  %8564 = fptoui float %8563 to i32
  %8565 = icmp ult i32 %8561, %8564
  br i1 %8565, label %8566, label %8735

; <label>:8566                                    ; preds = %8523
  %8567 = fcmp fast ogt float %96, 9.843750e-01
  %8568 = fadd fast float %7361, -4.000000e+00
  %8569 = select i1 %8567, float -4.000000e+00, float %8568
  %8570 = call float @dx.op.binary.f32(i32 35, float %8569, float 0.000000e+00)  ; FMax(a,b)
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 0
  %8573 = fadd fast float %8572, %8570
  %8574 = extractvalue %dx.types.CBufRet.f32 %8571, 2
  %8575 = fmul fast float %8573, %8574
  %8576 = call float @dx.op.unary.f32(i32 23, float %8575)  ; Log(value)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8571, 3
  %8578 = fmul fast float %8577, %8576
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %8581 = fmul fast float %8578, %8580
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = uitofp i32 %8561 to float
  %8584 = uitofp i32 %8564 to float
  %8585 = fadd fast float %8583, 5.000000e-01
  %8586 = fadd fast float %8584, 5.000000e-01
  %8587 = fmul fast float %8580, %8585
  %8588 = fmul fast float %8580, %8586
  %8589 = fadd fast float %8587, 0x3F0FFB4800000000
  %8590 = fadd fast float %8588, 0xBF0FFB4800000000
  %8591 = call float @dx.op.binary.f32(i32 35, float %8582, float %8589)  ; FMax(a,b)
  %8592 = call float @dx.op.binary.f32(i32 36, float %8591, float %8590)  ; FMin(a,b)
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 1
  %8595 = extractvalue %dx.types.CBufRet.f32 %8593, 2
  %8596 = extractvalue %dx.types.CBufRet.f32 %8593, 0
  %8597 = select i1 %7099, float %8596, float 0.000000e+00
  %8598 = fmul fast float %8594, %8592
  %8599 = fadd fast float %8597, %8598
  %8600 = fadd fast float %8597, %8595
  %8601 = fsub fast float %8594, %8595
  %8602 = fadd fast float %8601, %8597
  %8603 = call float @dx.op.binary.f32(i32 35, float %8599, float %8600)  ; FMax(a,b)
  %8604 = call float @dx.op.binary.f32(i32 36, float %8603, float %8602)  ; FMin(a,b)
  %8605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8536, float %8537, float %8604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8606 = extractvalue %dx.types.ResRet.f32 %8605, 0
  %8607 = extractvalue %dx.types.ResRet.f32 %8605, 1
  %8608 = extractvalue %dx.types.ResRet.f32 %8605, 2
  %8609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.i32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.i32 %8609, 1
  %8612 = uitofp i32 %8610 to float
  %8613 = uitofp i32 %8611 to float
  %8614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.CBufRet.f32 %8614, 1
  %8617 = fmul fast float %8612, %8536
  %8618 = fmul fast float %8613, %8537
  %8619 = fadd fast float %8617, -5.000000e-01
  %8620 = fadd fast float %8618, -5.000000e-01
  %8621 = call float @dx.op.unary.f32(i32 22, float %8619)  ; Frc(value)
  %8622 = call float @dx.op.unary.f32(i32 22, float %8620)  ; Frc(value)
  %8623 = fmul fast float %8621, %8621
  %8624 = fmul fast float %8623, %8621
  %8625 = fsub fast float 3.000000e+00, %8621
  %8626 = fmul fast float %8623, %8625
  %8627 = fmul fast float %8621, 3.000000e+00
  %8628 = fmul fast float %8624, 3.000000e+00
  %8629 = fmul fast float %8623, 6.000000e+00
  %8630 = fsub fast float %8628, %8629
  %8631 = fadd fast float %8630, 4.000000e+00
  %8632 = fmul fast float %8631, 0x3FC5555560000000
  %8633 = fmul fast float %8624, -3.000000e+00
  %8634 = fadd fast float %8623, %8621
  %8635 = fmul fast float %8634, 3.000000e+00
  %8636 = fadd fast float %8633, 1.000000e+00
  %8637 = fadd fast float %8636, %8635
  %8638 = fmul fast float %8624, 0x3FC5555560000000
  %8639 = fmul fast float %8622, %8622
  %8640 = fmul fast float %8639, %8622
  %8641 = fsub fast float 3.000000e+00, %8622
  %8642 = fmul fast float %8639, %8641
  %8643 = fmul fast float %8622, 3.000000e+00
  %8644 = fmul fast float %8640, 3.000000e+00
  %8645 = fmul fast float %8639, 6.000000e+00
  %8646 = fsub fast float %8644, %8645
  %8647 = fadd fast float %8646, 4.000000e+00
  %8648 = fmul fast float %8647, 0x3FC5555560000000
  %8649 = fmul fast float %8640, -3.000000e+00
  %8650 = fadd fast float %8639, %8622
  %8651 = fmul fast float %8650, 3.000000e+00
  %8652 = fadd fast float %8649, 1.000000e+00
  %8653 = fadd fast float %8652, %8651
  %8654 = fmul fast float %8640, 0x3FC5555560000000
  %8655 = fadd fast float %8621, 1.000000e+00
  %8656 = fsub fast float 1.000000e+00, %8627
  %8657 = fadd fast float %8656, %8626
  %8658 = fadd fast float %8657, %8631
  %8659 = fmul fast float %8658, 0x3FC5555560000000
  %8660 = fdiv fast float %8632, %8659
  %8661 = fsub fast float %8655, %8660
  %8662 = fsub fast float 1.000000e+00, %8621
  %8663 = fadd fast float %8637, %8624
  %8664 = fmul fast float %8663, 0x3FC5555560000000
  %8665 = fdiv fast float %8638, %8664
  %8666 = fadd fast float %8662, %8665
  %8667 = fadd fast float %8622, 1.000000e+00
  %8668 = fsub fast float 1.000000e+00, %8643
  %8669 = fadd fast float %8668, %8642
  %8670 = fadd fast float %8669, %8647
  %8671 = fmul fast float %8670, 0x3FC5555560000000
  %8672 = fdiv fast float %8648, %8671
  %8673 = fsub fast float %8667, %8672
  %8674 = fsub fast float 1.000000e+00, %8622
  %8675 = fadd fast float %8653, %8640
  %8676 = fmul fast float %8675, 0x3FC5555560000000
  %8677 = fdiv fast float %8654, %8676
  %8678 = fadd fast float %8677, %8674
  %8679 = fmul fast float %8661, %8615
  %8680 = fsub fast float %8536, %8679
  %8681 = fmul fast float %8666, %8615
  %8682 = fadd fast float %8681, %8536
  %8683 = fmul fast float %8678, %8616
  %8684 = fadd fast float %8683, %8537
  %8685 = fmul fast float %8673, %8616
  %8686 = fsub fast float %8537, %8685
  %8687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8680, float %8686, float %8604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8688 = extractvalue %dx.types.ResRet.f32 %8687, 0
  %8689 = extractvalue %dx.types.ResRet.f32 %8687, 1
  %8690 = extractvalue %dx.types.ResRet.f32 %8687, 2
  %8691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8682, float %8686, float %8604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8692 = extractvalue %dx.types.ResRet.f32 %8691, 0
  %8693 = extractvalue %dx.types.ResRet.f32 %8691, 1
  %8694 = extractvalue %dx.types.ResRet.f32 %8691, 2
  %8695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8680, float %8684, float %8604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8696 = extractvalue %dx.types.ResRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.ResRet.f32 %8695, 1
  %8698 = extractvalue %dx.types.ResRet.f32 %8695, 2
  %8699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8682, float %8684, float %8604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8700 = extractvalue %dx.types.ResRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.ResRet.f32 %8699, 1
  %8702 = extractvalue %dx.types.ResRet.f32 %8699, 2
  %8703 = fsub fast float %8696, %8688
  %8704 = fsub fast float %8697, %8689
  %8705 = fsub fast float %8698, %8690
  %8706 = fmul fast float %8703, %8676
  %8707 = fmul fast float %8704, %8676
  %8708 = fmul fast float %8705, %8676
  %8709 = fadd fast float %8706, %8688
  %8710 = fadd fast float %8707, %8689
  %8711 = fadd fast float %8708, %8690
  %8712 = fsub fast float %8700, %8692
  %8713 = fsub fast float %8701, %8693
  %8714 = fsub fast float %8702, %8694
  %8715 = fmul fast float %8712, %8676
  %8716 = fmul fast float %8713, %8676
  %8717 = fmul fast float %8714, %8676
  %8718 = fsub fast float %8692, %8709
  %8719 = fadd fast float %8718, %8715
  %8720 = fsub fast float %8693, %8710
  %8721 = fadd fast float %8720, %8716
  %8722 = fsub fast float %8694, %8711
  %8723 = fadd fast float %8722, %8717
  %8724 = fmul fast float %8719, %8664
  %8725 = fmul fast float %8721, %8664
  %8726 = fmul fast float %8723, %8664
  %8727 = fadd fast float %8724, %8709
  %8728 = fadd fast float %8725, %8710
  %8729 = fadd fast float %8726, %8711
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 1
  %8732 = fmul fast float %8727, %8731
  %8733 = fmul fast float %8728, %8731
  %8734 = fmul fast float %8729, %8731
  br label %8735

; <label>:8735                                    ; preds = %8566, %8523
  %8736 = phi float [ %8606, %8566 ], [ 1.000000e+00, %8523 ]
  %8737 = phi float [ %8607, %8566 ], [ 1.000000e+00, %8523 ]
  %8738 = phi float [ %8608, %8566 ], [ 1.000000e+00, %8523 ]
  %8739 = phi float [ %8732, %8566 ], [ 0.000000e+00, %8523 ]
  %8740 = phi float [ %8733, %8566 ], [ 0.000000e+00, %8523 ]
  %8741 = phi float [ %8734, %8566 ], [ 0.000000e+00, %8523 ]
  %8742 = fmul fast float %8739, %7087
  %8743 = fmul fast float %8740, %7087
  %8744 = fmul fast float %8741, %7087
  %8745 = fmul fast float %8736, %8530
  %8746 = call float @dx.op.dot3.f32(i32 55, float %8736, float %8737, float %8738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8747 = call float @dx.op.dot3.f32(i32 55, float %8742, float %8743, float %8744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8748 = select i1 %297, float %8746, float %8736
  %8749 = select i1 %297, float %8746, float %8737
  %8750 = select i1 %297, float 1.000000e+00, float %8738
  %8751 = select i1 %297, float %8747, float %8742
  %8752 = select i1 %297, float 0.000000e+00, float %8743
  %8753 = select i1 %297, float 0.000000e+00, float %8744
  %8754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.i32 %8754, 3
  %8756 = and i32 %8755, 3
  %8757 = icmp ne i32 %8756, 0
  %8758 = and i32 %8755, 4
  %8759 = icmp ne i32 %8758, 0
  %8760 = and i1 %8757, %8759
  %8761 = and i1 %297, %8760
  br i1 %8761, label %8762, label %8768

; <label>:8762                                    ; preds = %8735
  %8763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8763, 1
  %8765 = fadd fast float %8745, -1.000000e+00
  %8766 = fmul fast float %8764, %8765
  %8767 = fadd fast float %8766, 1.000000e+00
  br label %8768

; <label>:8768                                    ; preds = %8762, %8735
  %8769 = phi float [ %8767, %8762 ], [ %8745, %8735 ]
  %8770 = fadd fast float %8527, %8524
  %8771 = fmul fast float %8748, %8770
  %8772 = fadd fast float %8771, %8751
  %8773 = fadd fast float %8528, %8525
  %8774 = fmul fast float %8749, %8773
  %8775 = fadd fast float %8774, %8752
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  br i1 %297, label %8778, label %8802

; <label>:8778                                    ; preds = %8768
  %8779 = fadd fast float %8772, %8775
  %8780 = fmul fast float %8777, %8779
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 3
  %8783 = extractvalue %dx.types.CBufRet.f32 %7075, 1
  %8784 = fsub fast float %7080, %7074
  %8785 = fadd fast float %8784, %7081
  %8786 = fsub fast float %8785, %8783
  %8787 = extractvalue %dx.types.CBufRet.f32 %7075, 2
  %8788 = fmul fast float %8786, %8787
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = fsub fast float %8789, %8782
  %8791 = fmul fast float %8790, %8769
  %8792 = fadd fast float %8791, %8782
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = fsub fast float %8792, %8794
  %8796 = fmul fast float %8795, 1.000000e+01
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = fsub fast float %3925, %7087
  %8799 = fmul fast float %8797, %8798
  %8800 = fadd fast float %8799, %7087
  %8801 = fmul fast float %8800, %8792
  br label %8826

; <label>:8802                                    ; preds = %8768
  %8803 = fadd fast float %8529, %8526
  %8804 = fmul fast float %8750, %8803
  %8805 = fadd fast float %8804, %8753
  %8806 = fmul fast float %8777, %8772
  %8807 = fmul fast float %8777, %8775
  %8808 = fmul fast float %8777, %8805
  %8809 = call float @dx.op.binary.f32(i32 35, float %8807, float %8808)  ; FMax(a,b)
  %8810 = call float @dx.op.binary.f32(i32 35, float %8806, float %8809)  ; FMax(a,b)
  %8811 = call float @dx.op.binary.f32(i32 35, float %8810, float %7087)  ; FMax(a,b)
  %8812 = fcmp fast ugt float %8811, 0x3F10000000000000
  br i1 %8812, label %8814, label %8813

; <label>:8813                                    ; preds = %8802
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8814

; <label>:8814                                    ; preds = %8813, %8802
  %8815 = add i32 %55, 356
  %8816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8815, i32 undef)  ; BufferLoad(srv,index,wot)
  %8817 = extractvalue %dx.types.ResRet.i32 %8816, 0
  %8818 = and i32 %8817, 32
  %8819 = icmp eq i32 %8818, 0
  br i1 %8819, label %8826, label %8820

; <label>:8820                                    ; preds = %8814
  %8821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8822 = extractvalue %dx.types.CBufRet.f32 %8821, 0
  %8823 = fmul fast float %8822, 0x3FE99999A0000000
  %8824 = fadd fast float %8822, %8806
  %8825 = fadd fast float %8823, %8808
  br label %8826

; <label>:8826                                    ; preds = %8820, %8814, %8778
  %8827 = phi float [ %8780, %8778 ], [ %8824, %8820 ], [ %8806, %8814 ]
  %8828 = phi float [ %8801, %8778 ], [ %8807, %8820 ], [ %8807, %8814 ]
  %8829 = phi float [ %8800, %8778 ], [ %8825, %8820 ], [ %8808, %8814 ]
  %8830 = phi float [ %8800, %8778 ], [ %7087, %8820 ], [ %7087, %8814 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8831 = call float @dx.op.binary.f32(i32 36, float %8827, float 3.225500e+04)  ; FMin(a,b)
  %8832 = call float @dx.op.binary.f32(i32 36, float %8828, float 3.225500e+04)  ; FMin(a,b)
  %8833 = call float @dx.op.binary.f32(i32 36, float %8829, float 3.225500e+04)  ; FMin(a,b)
  %8834 = call float @dx.op.binary.f32(i32 36, float %8830, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8831)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8832)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8833)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8834)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

