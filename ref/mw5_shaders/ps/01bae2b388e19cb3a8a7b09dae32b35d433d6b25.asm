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
; shader hash: 507a1f8c8186da9cb8b4ff192944a805
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
  %209 = fmul fast float %106, 5.000000e-01
  %210 = fmul fast float %107, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %106
  %233 = fmul fast float %231, %107
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 114688
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, float %232, float 0.000000e+00
  %239 = select i1 %237, float %233, float 0.000000e+00
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fmul fast float %241, 2.550000e+02
  %243 = fptoui float %242 to i32
  %244 = select i1 %237, i32 %243, i32 0
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 3
  %247 = and i32 %246, 3
  %248 = icmp ne i32 %247, 0
  %249 = and i32 %246, 4
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %248, %250
  br i1 %251, label %252, label %261

; <label>:252                                     ; preds = %0
  %253 = fmul fast float %141, %107
  %254 = fmul fast float %140, %106
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %254, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fsub fast float 1.000000e+00, %256
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = fcmp fast olt float %257, %259
  br label %264

; <label>:261                                     ; preds = %0
  %262 = icmp eq i32 %249, 0
  %263 = and i1 %248, %262
  br label %264

; <label>:264                                     ; preds = %261, %252
  %265 = phi i1 [ %260, %252 ], [ %263, %261 ]
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = fmul fast float %267, 0x3FE3C6EF40000000
  %269 = frem fast float %106, 2.560000e+02
  %270 = frem fast float %107, 2.560000e+02
  %271 = fptoui float %269 to i32
  %272 = fptoui float %270 to i32
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %271, i32 %272, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = fadd fast float %274, %268
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = add i32 %55, 156
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %55, 216
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %55, 36
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %55, 288
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %55, 172
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %55, 232
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %55, 52
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %55, 304
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %55, 188
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %55, 248
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %55, 68
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %55, 320
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %55, 204
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = shl i32 %405, 4
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %405, 7
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %405, 22
  %413 = shl nuw nsw i32 %412, 5
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %55, 264
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = lshr i32 %417, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %417, 16
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = add i32 %55, 84
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %55, 336
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 65535
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %438, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = fmul fast float %440, 0x3F50624DE0000000
  %444 = fmul fast float %442, 0x3F50624DE0000000
  %445 = add i32 %55, 348
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 32
  %449 = icmp eq i32 %448, 0
  %450 = and i32 %447, 64
  %451 = icmp eq i32 %450, 0
  %452 = and i32 %447, 128
  %453 = icmp eq i32 %452, 0
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 2
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %473, label %458

; <label>:458                                     ; preds = %264
  %459 = add i32 %55, 508
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %461, 0
  %463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %463, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = fmul fast float %468, %90
  %470 = fmul fast float %465, %91
  %471 = fmul fast float %466, %92
  %472 = fmul fast float %467, %93
  br label %473

; <label>:473                                     ; preds = %458, %264
  %474 = phi float [ %93, %264 ], [ %472, %458 ]
  %475 = phi float [ %92, %264 ], [ %471, %458 ]
  %476 = phi float [ %91, %264 ], [ %470, %458 ]
  %477 = phi float [ %90, %264 ], [ %469, %458 ]
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 2
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %501, label %482

; <label>:482                                     ; preds = %473
  %483 = add i32 %55, 44
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %476, float 1.000000e+00
  %489 = add i32 %55, 60
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %475, float 1.000000e+00
  %495 = add i32 %55, 76
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 1
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %499, float %474, float 1.000000e+00
  br label %501

; <label>:501                                     ; preds = %482, %473
  %502 = phi float [ %474, %473 ], [ %500, %482 ]
  %503 = phi float [ %475, %473 ], [ %494, %482 ]
  %504 = phi float [ %476, %473 ], [ %488, %482 ]
  %505 = lshr i32 %479, 20
  %506 = and i32 %505, 3
  %507 = add nuw nsw i32 %506, 1
  %508 = add i32 %55, 24
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %55, 28
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = or i32 %513, %510
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %1134, label %516

; <label>:516                                     ; preds = %501
  %517 = and i32 %510, 262144
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %61, float 1.000000e+00
  %520 = select i1 %518, float %62, float 0.000000e+00
  %521 = select i1 %518, float %63, float 0.000000e+00
  %522 = select i1 %518, float %64, float 1.000000e+00
  %523 = select i1 %518, float %65, float %88
  %524 = select i1 %518, float %66, float %89
  %525 = add i32 %55, 284
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = fmul fast float %529, 0x3F50624DE0000000
  %531 = add i32 %55, 88
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 16
  %535 = and i32 %534, 255
  %536 = lshr i32 %533, 24
  %537 = add i32 %55, 292
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 65535
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %539, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = add i32 %55, 32
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 22
  %548 = shl nuw nsw i32 %547, 5
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = shl i32 %546, 4
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %546, 7
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %557, 1.000000e+03
  %559 = fmul fast float %317, %558
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fadd fast float %560, %307
  %562 = fmul fast float %318, %558
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fadd fast float %563, %309
  %565 = fmul fast float %530, %558
  %566 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %567 = fmul fast float %566, 0x401921FB60000000
  %568 = fadd fast float %567, %549
  %569 = call float @dx.op.unary.f32(i32 13, float %568)  ; Sin(value)
  %570 = call float @dx.op.unary.f32(i32 12, float %568)  ; Cos(value)
  %571 = fsub fast float -0.000000e+00, %569
  %572 = fadd fast float %523, -5.000000e-01
  %573 = fadd fast float %524, -5.000000e-01
  %574 = fmul fast float %541, %572
  %575 = fmul fast float %543, %573
  %576 = fadd fast float %574, 5.000000e-01
  %577 = fadd fast float %575, 5.000000e-01
  %578 = fmul fast float %552, %576
  %579 = fmul fast float %555, %577
  %580 = fmul fast float %570, %578
  %581 = call float @dx.op.tertiary.f32(i32 46, float %571, float %579, float %580)  ; FMad(a,b,c)
  %582 = fmul fast float %569, %578
  %583 = call float @dx.op.tertiary.f32(i32 46, float %570, float %579, float %582)  ; FMad(a,b,c)
  %584 = fadd fast float %561, %581
  %585 = fadd fast float %564, %583
  %586 = icmp ugt i32 %535, 1
  %587 = icmp ugt i32 %533, 33554431
  %588 = or i1 %587, %586
  br i1 %588, label %589, label %614

; <label>:589                                     ; preds = %516
  %590 = add i32 %55, 228
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = fmul fast float %557, %594
  %596 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %597 = mul nuw nsw i32 %535, %536
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %596, %598
  %600 = call float @dx.op.unary.f32(i32 27, float %599)  ; Round_ni(value)
  %601 = fptoui float %600 to i32
  %602 = urem i32 %601, %535
  %603 = udiv i32 %601, %536
  %604 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %605 = call float @dx.op.unary.f32(i32 22, float %585)  ; Frc(value)
  %606 = uitofp i32 %602 to float
  %607 = uitofp i32 %603 to float
  %608 = fadd fast float %604, %606
  %609 = fadd fast float %605, %607
  %610 = uitofp i32 %535 to float
  %611 = uitofp i32 %536 to float
  %612 = fdiv fast float %608, %610
  %613 = fdiv fast float %609, %611
  br label %614

; <label>:614                                     ; preds = %589, %516
  %615 = phi float [ %612, %589 ], [ %584, %516 ]
  %616 = phi float [ %613, %589 ], [ %585, %516 ]
  %617 = and i32 %510, 256
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %665, label %619

; <label>:619                                     ; preds = %614
  %620 = add i32 %55, 440
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = add i32 %55, 100
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = shl i32 %629, 4
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %629, 7
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = fsub fast float 1.000000e+00, %477
  %637 = call float @dx.op.binary.f32(i32 35, float %636, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %638 = bitcast float %477 to i32
  %639 = sitofp i32 %638 to float
  %640 = fadd fast float %639, 0xC1CFBF8940000000
  %641 = fmul fast float %635, %640
  %642 = fadd fast float %641, 0x41CFBF8940000000
  %643 = fptosi float %642 to i32
  %644 = bitcast i32 %643 to float
  %645 = bitcast float %637 to i32
  %646 = sitofp i32 %645 to float
  %647 = fadd fast float %646, 0xC1CFBF8940000000
  %648 = fmul fast float %647, %635
  %649 = fadd fast float %648, 0x41CFBF8940000000
  %650 = fptosi float %649 to i32
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %644, %632
  %653 = fmul fast float %651, %632
  %654 = fsub fast float %637, %652
  %655 = fadd fast float %653, %637
  %656 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %657 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %658 = fsub fast float %626, %656
  %659 = fsub fast float %657, %656
  %660 = bitcast float %659 to i32
  %661 = sub nsw i32 2129859010, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %662, %658
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  br label %665

; <label>:665                                     ; preds = %619, %614
  %666 = phi float [ %664, %619 ], [ %477, %614 ]
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 128
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %687, label %671

; <label>:671                                     ; preds = %665
  %672 = add i32 %55, 424
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 524288
  %682 = icmp ne i32 %681, 0
  %683 = fcmp fast ogt float %678, 0x3FE0101020000000
  %684 = select i1 %683, float 1.000000e+00, float 0.000000e+00
  %685 = select i1 %682, float %684, float %678
  %686 = fmul fast float %685, %666
  br label %687

; <label>:687                                     ; preds = %671, %665
  %688 = phi float [ %686, %671 ], [ %666, %665 ]
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 16
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %891, label %693

; <label>:693                                     ; preds = %687
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %55, 376
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = extractvalue %dx.types.ResRet.f32 %701, 3
  %706 = and i32 %695, 255
  %707 = uitofp i32 %706 to float
  %708 = lshr i32 %695, 8
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %705, %707
  %712 = fadd fast float %711, %710
  %713 = fmul fast float %712, 0x3F70101000000000
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 512
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %726, label %718

; <label>:718                                     ; preds = %693
  %719 = add i32 %55, 460
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %721, 0
  %723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %723, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  br label %726

; <label>:726                                     ; preds = %718, %693
  %727 = phi float [ %725, %718 ], [ 1.000000e+00, %693 ]
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 33554432
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %838, label %732

; <label>:732                                     ; preds = %726
  %733 = add i32 %55, 224
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 65535
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %735, 16
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = add i32 %55, 228
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 65535
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 24
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = and i32 %746, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = lshr i32 %746, 8
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %746, 16
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = add i32 %55, 220
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 24
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = and i32 %763, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %763, 8
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %763, 16
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = bitcast float %702 to i32
  %779 = ashr i32 %778, 1
  %780 = sub nsw i32 1597463174, %779
  %781 = bitcast i32 %780 to float
  %782 = fmul fast float %702, 5.000000e-01
  %783 = fmul fast float %781, %781
  %784 = fmul fast float %783, %782
  %785 = fsub fast float 1.500000e+00, %784
  %786 = fmul fast float %781, %702
  %787 = fmul fast float %786, %785
  %788 = bitcast float %703 to i32
  %789 = ashr i32 %788, 1
  %790 = sub nsw i32 1597463174, %789
  %791 = bitcast i32 %790 to float
  %792 = fmul fast float %703, 5.000000e-01
  %793 = fmul fast float %791, %791
  %794 = fmul fast float %793, %792
  %795 = fsub fast float 1.500000e+00, %794
  %796 = fmul fast float %791, %703
  %797 = fmul fast float %796, %795
  %798 = bitcast float %704 to i32
  %799 = ashr i32 %798, 1
  %800 = sub nsw i32 1597463174, %799
  %801 = bitcast i32 %800 to float
  %802 = fmul fast float %704, 5.000000e-01
  %803 = fmul fast float %801, %801
  %804 = fmul fast float %803, %802
  %805 = fsub fast float 1.500000e+00, %804
  %806 = fmul fast float %801, %704
  %807 = fmul fast float %806, %805
  %808 = fsub fast float %787, %769
  %809 = fsub fast float %797, %773
  %810 = fsub fast float %807, %777
  %811 = fmul fast float %808, %737
  %812 = fmul fast float %809, %739
  %813 = fmul fast float %810, %744
  %814 = fadd fast float %811, %752
  %815 = fadd fast float %812, %756
  %816 = fadd fast float %813, %760
  %817 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %818 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %819 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %820 = fmul fast float %817, %817
  %821 = fmul fast float %818, %818
  %822 = fmul fast float %819, %819
  %823 = fsub fast float %820, %702
  %824 = fsub fast float %821, %703
  %825 = fsub fast float %822, %704
  %826 = fmul fast float %823, %727
  %827 = fmul fast float %824, %727
  %828 = fmul fast float %825, %727
  %829 = fadd fast float %826, %702
  %830 = fadd fast float %827, %703
  %831 = fadd fast float %828, %704
  %832 = fadd fast float %749, %713
  %833 = fsub fast float %832, %766
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fsub fast float %834, %713
  %836 = fmul fast float %835, %727
  %837 = fadd fast float %836, %713
  br label %891

; <label>:838                                     ; preds = %726
  %839 = and i32 %729, 134217728
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %875, label %841

; <label>:841                                     ; preds = %838
  %842 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %844 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %845 = fadd fast float %842, -5.000000e-01
  %846 = fadd fast float %843, -5.000000e-01
  %847 = fadd fast float %844, -5.000000e-01
  %848 = fmul fast float %845, %727
  %849 = fmul fast float %846, %727
  %850 = fmul fast float %847, %727
  %851 = fadd fast float %848, 5.000000e-01
  %852 = fadd fast float %849, 5.000000e-01
  %853 = fadd fast float %850, 5.000000e-01
  %854 = call float @dx.op.unary.f32(i32 24, float %702)  ; Sqrt(value)
  %855 = call float @dx.op.unary.f32(i32 24, float %703)  ; Sqrt(value)
  %856 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %857 = fmul fast float %851, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %854
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %854
  %862 = fmul fast float %852, 2.000000e+00
  %863 = fsub fast float 1.000000e+00, %862
  %864 = fmul fast float %863, %855
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, %855
  %867 = fmul fast float %853, 2.000000e+00
  %868 = fsub fast float 1.000000e+00, %867
  %869 = fmul fast float %868, %856
  %870 = fadd fast float %869, %867
  %871 = fmul fast float %870, %856
  %872 = fmul fast float %861, %861
  %873 = fmul fast float %866, %866
  %874 = fmul fast float %871, %871
  br label %891

; <label>:875                                     ; preds = %838
  %876 = fmul fast float %294, %294
  %877 = fmul fast float %298, %298
  %878 = fmul fast float %302, %302
  %879 = fadd fast float %876, -1.000000e+00
  %880 = fadd fast float %877, -1.000000e+00
  %881 = fadd fast float %878, -1.000000e+00
  %882 = fmul fast float %727, %879
  %883 = fmul fast float %727, %880
  %884 = fmul fast float %727, %881
  %885 = fadd fast float %882, 1.000000e+00
  %886 = fadd fast float %883, 1.000000e+00
  %887 = fadd fast float %884, 1.000000e+00
  %888 = fmul fast float %885, %702
  %889 = fmul fast float %886, %703
  %890 = fmul fast float %887, %704
  br label %891

; <label>:891                                     ; preds = %875, %841, %732, %687
  %892 = phi float [ %837, %732 ], [ %713, %841 ], [ %713, %875 ], [ 0x3FA23C0BE0000000, %687 ]
  %893 = phi float [ %829, %732 ], [ %872, %841 ], [ %888, %875 ], [ 1.000000e+00, %687 ]
  %894 = phi float [ %830, %732 ], [ %873, %841 ], [ %889, %875 ], [ 1.000000e+00, %687 ]
  %895 = phi float [ %831, %732 ], [ %874, %841 ], [ %890, %875 ], [ 1.000000e+00, %687 ]
  %896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.i32 %896, 1
  %898 = and i32 %897, 1
  %899 = icmp ne i32 %898, 0
  %900 = add i32 %55, 356
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 32
  %904 = icmp ne i32 %903, 0
  %905 = and i1 %899, %904
  %906 = select i1 %905, float 1.000000e+00, float %893
  %907 = select i1 %905, float 0x3FD3333340000000, float %894
  %908 = select i1 %905, float 0x3FD3333340000000, float %895
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 32
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %985, label %913

; <label>:913                                     ; preds = %891
  %914 = add i32 %55, 92
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %55, 392
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %919, 0
  %921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %921, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = extractvalue %dx.types.ResRet.f32 %922, 3
  %927 = and i32 %916, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %916, 8
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %916, 16
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F70101000000000
  %936 = fmul fast float %923, %928
  %937 = fadd fast float %936, %931
  %938 = fmul fast float %937, 0x3F70101000000000
  %939 = fadd fast float %924, -5.000000e-01
  %940 = fadd fast float %926, -5.000000e-01
  %941 = fmul fast float %939, %935
  %942 = fmul fast float %940, %935
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fadd fast float %942, 5.000000e-01
  %945 = fmul fast float %943, 2.000000e+00
  %946 = fadd fast float %945, -1.000000e+00
  %947 = fmul fast float %944, 2.000000e+00
  %948 = fadd fast float %947, -1.000000e+00
  %949 = fadd fast float %946, %948
  %950 = fmul fast float %949, 5.000000e-01
  %951 = fsub fast float %946, %948
  %952 = fmul fast float %951, 5.000000e-01
  %953 = call float @dx.op.unary.f32(i32 6, float %950)  ; FAbs(value)
  %954 = fsub fast float 1.000000e+00, %953
  %955 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %956 = fsub fast float %954, %955
  %957 = call float @dx.op.dot3.f32(i32 55, float %950, float %952, float %956, float %950, float %952, float %956)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call float @dx.op.unary.f32(i32 25, float %957)  ; Rsqrt(value)
  %959 = fmul fast float %950, %958
  %960 = fmul fast float %952, %958
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 67108864
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %981, label %965

; <label>:965                                     ; preds = %913
  %966 = add i32 %55, 280
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %968, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = fsub fast float %938, %976
  %978 = fmul fast float %977, %970
  %979 = fadd fast float %978, %974
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  br label %981

; <label>:981                                     ; preds = %965, %913
  %982 = phi float [ %980, %965 ], [ %938, %913 ]
  %983 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %519, float %520)  ; Dot2(ax,ay,bx,by)
  %984 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %521, float %522)  ; Dot2(ax,ay,bx,by)
  br label %985

; <label>:985                                     ; preds = %981, %891
  %986 = phi float [ %982, %981 ], [ 0x3FD6666660000000, %891 ]
  %987 = phi float [ %983, %981 ], [ 0.000000e+00, %891 ]
  %988 = phi float [ %984, %981 ], [ 0.000000e+00, %891 ]
  %989 = phi float [ %925, %981 ], [ 1.000000e+00, %891 ]
  %990 = add i32 %55, 160
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 22
  %994 = shl nuw nsw i32 %993, 5
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 64
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1033, label %1000

; <label>:1000                                    ; preds = %985
  %1001 = add i32 %55, 408
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = add i32 %1003, 0
  %1005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 131072
  %1009 = icmp eq i32 %1008, 0
  %1010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1005, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = fmul fast float %1011, %282
  %1015 = fmul fast float %1012, %285
  %1016 = fmul fast float %1013, %288
  br i1 %1009, label %1023, label %1017

; <label>:1017                                    ; preds = %1000
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = fmul fast float %1019, %1014
  %1021 = fmul fast float %1019, %1015
  %1022 = fmul fast float %1019, %1016
  br label %1023

; <label>:1023                                    ; preds = %1017, %1000
  %1024 = phi float [ %1020, %1017 ], [ %1014, %1000 ]
  %1025 = phi float [ %1021, %1017 ], [ %1015, %1000 ]
  %1026 = phi float [ %1022, %1017 ], [ %1016, %1000 ]
  %1027 = fmul fast float %1024, %995
  %1028 = select i1 %265, float %1027, float %1024
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1025, float %1026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = select i1 %265, float 0.000000e+00, float %1024
  %1031 = select i1 %265, float %1029, float %1025
  %1032 = select i1 %265, float 0.000000e+00, float %1026
  br label %1033

; <label>:1033                                    ; preds = %1023, %985
  %1034 = phi float [ %1030, %1023 ], [ 0.000000e+00, %985 ]
  %1035 = phi float [ %1031, %1023 ], [ 0.000000e+00, %985 ]
  %1036 = phi float [ %1032, %1023 ], [ 0.000000e+00, %985 ]
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 1024
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1071, label %1041

; <label>:1041                                    ; preds = %1033
  %1042 = add i32 %55, 152
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F70101020000000
  %1048 = lshr i32 %1044, 8
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = lshr i32 %1044, 16
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = fmul fast float %1047, %1047
  %1057 = fmul fast float %1051, %1051
  %1058 = fmul fast float %1055, %1055
  %1059 = add i32 %55, 476
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = add i32 %1061, 0
  %1063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1063, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = fmul fast float %1056, %1065
  %1069 = fmul fast float %1057, %1066
  %1070 = fmul fast float %1058, %1067
  br label %1071

; <label>:1071                                    ; preds = %1041, %1033
  %1072 = phi float [ %1068, %1041 ], [ 0.000000e+00, %1033 ]
  %1073 = phi float [ %1069, %1041 ], [ 0.000000e+00, %1033 ]
  %1074 = phi float [ %1070, %1041 ], [ 0.000000e+00, %1033 ]
  %1075 = fcmp fast ogt float %1072, 0.000000e+00
  %1076 = fcmp fast ogt float %1073, 0.000000e+00
  %1077 = fcmp fast ogt float %1074, 0.000000e+00
  %1078 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1079 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1080 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = lshr i32 %1082, 7
  %1084 = and i32 %1083, 32752
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fmul fast float %1078, 0xBFE62E4300000000
  %1087 = fmul fast float %1086, %1085
  %1088 = fmul fast float %1079, 0xBFE62E4300000000
  %1089 = fmul fast float %1088, %1085
  %1090 = fmul fast float %1080, 0xBFE62E4300000000
  %1091 = fmul fast float %1090, %1085
  %1092 = select i1 %1075, float %1087, float 1.270000e+02
  %1093 = select i1 %1076, float %1089, float 1.270000e+02
  %1094 = select i1 %1077, float %1091, float 1.270000e+02
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 10240
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1119, label %1099

; <label>:1099                                    ; preds = %1071
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 2048
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1119, label %1104

; <label>:1104                                    ; preds = %1099
  %1105 = add i32 %55, 492
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = shl i32 %1113, 4
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = fmul fast float %1116, %1111
  %1118 = call float @dx.op.binary.f32(i32 35, float %1117, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1119

; <label>:1119                                    ; preds = %1104, %1099, %1071
  %1120 = phi float [ %1118, %1104 ], [ 0x3F70101020000000, %1099 ], [ 0x3F70101020000000, %1071 ]
  %1121 = add i32 %55, 96
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %1123, 8
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = call float @dx.op.dot3.f32(i32 55, float %906, float %907, float %908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = fmul fast float %1128, %1129
  %1131 = fadd fast float %1130, %1125
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  br label %1134

; <label>:1134                                    ; preds = %1119, %501
  %1135 = phi float [ 0.000000e+00, %501 ], [ %987, %1119 ]
  %1136 = phi float [ 0.000000e+00, %501 ], [ %988, %1119 ]
  %1137 = phi float [ 0.000000e+00, %501 ], [ %906, %1119 ]
  %1138 = phi float [ 0.000000e+00, %501 ], [ %907, %1119 ]
  %1139 = phi float [ 0.000000e+00, %501 ], [ %908, %1119 ]
  %1140 = phi float [ 0.000000e+00, %501 ], [ %1034, %1119 ]
  %1141 = phi float [ 0.000000e+00, %501 ], [ %1035, %1119 ]
  %1142 = phi float [ 0.000000e+00, %501 ], [ %1036, %1119 ]
  %1143 = phi float [ 0.000000e+00, %501 ], [ %1092, %1119 ]
  %1144 = phi float [ 0.000000e+00, %501 ], [ %1093, %1119 ]
  %1145 = phi float [ 0.000000e+00, %501 ], [ %1094, %1119 ]
  %1146 = phi float [ 0.000000e+00, %501 ], [ %892, %1119 ]
  %1147 = phi float [ 0.000000e+00, %501 ], [ %688, %1119 ]
  %1148 = phi float [ 0.000000e+00, %501 ], [ %986, %1119 ]
  %1149 = phi float [ 0.000000e+00, %501 ], [ %989, %1119 ]
  %1150 = phi float [ 0.000000e+00, %501 ], [ %1120, %1119 ]
  %1151 = phi float [ 0.000000e+00, %501 ], [ %1133, %1119 ]
  br i1 %449, label %2023, label %1152

; <label>:1152                                    ; preds = %1134
  %1153 = icmp ult i32 %507, 2
  %1154 = add i32 %55, 40
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %55, 44
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = or i32 %1159, %1156
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %2023, label %1162

; <label>:1162                                    ; preds = %1152
  %1163 = and i32 %1156, 262144
  %1164 = icmp ne i32 %1163, 0
  %1165 = select i1 %1164, float %61, float 1.000000e+00
  %1166 = select i1 %1164, float %62, float 0.000000e+00
  %1167 = select i1 %1164, float %63, float 0.000000e+00
  %1168 = select i1 %1164, float %64, float 1.000000e+00
  %1169 = select i1 %1164, float %65, float %88
  %1170 = select i1 %1164, float %66, float %89
  %1171 = add i32 %55, 300
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = fmul fast float %1175, 0x3F50624DE0000000
  %1177 = add i32 %55, 104
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 16
  %1181 = and i32 %1180, 255
  %1182 = lshr i32 %1179, 24
  %1183 = add i32 %55, 308
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 65535
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = lshr i32 %1185, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = add i32 %55, 48
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = shl i32 %1192, 4
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = lshr i32 %1192, 7
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1204 = fmul fast float %1203, 1.000000e+03
  %1205 = fmul fast float %359, %1204
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = fadd fast float %1206, %349
  %1208 = fmul fast float %360, %1204
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fadd fast float %1209, %351
  %1211 = fmul fast float %1176, %1204
  %1212 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1213 = fmul fast float %1212, 0x401921FB60000000
  %1214 = fadd fast float %1213, %1195
  %1215 = call float @dx.op.unary.f32(i32 13, float %1214)  ; Sin(value)
  %1216 = call float @dx.op.unary.f32(i32 12, float %1214)  ; Cos(value)
  %1217 = fsub fast float -0.000000e+00, %1215
  %1218 = fadd fast float %1169, -5.000000e-01
  %1219 = fadd fast float %1170, -5.000000e-01
  %1220 = fmul fast float %1187, %1218
  %1221 = fmul fast float %1189, %1219
  %1222 = fadd fast float %1220, 5.000000e-01
  %1223 = fadd fast float %1221, 5.000000e-01
  %1224 = fmul fast float %1198, %1222
  %1225 = fmul fast float %1201, %1223
  %1226 = fmul fast float %1216, %1224
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %1225, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1215, %1224
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1225, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1207, %1227
  %1231 = fadd fast float %1210, %1229
  %1232 = icmp ugt i32 %1181, 1
  %1233 = icmp ugt i32 %1179, 33554431
  %1234 = or i1 %1233, %1232
  br i1 %1234, label %1235, label %1260

; <label>:1235                                    ; preds = %1162
  %1236 = add i32 %55, 244
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 16
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = fmul fast float %1203, %1240
  %1242 = call float @dx.op.unary.f32(i32 22, float %1241)  ; Frc(value)
  %1243 = mul nuw nsw i32 %1181, %1182
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1242, %1244
  %1246 = call float @dx.op.unary.f32(i32 27, float %1245)  ; Round_ni(value)
  %1247 = fptoui float %1246 to i32
  %1248 = urem i32 %1247, %1181
  %1249 = udiv i32 %1247, %1182
  %1250 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1251 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1252 = uitofp i32 %1248 to float
  %1253 = uitofp i32 %1249 to float
  %1254 = fadd fast float %1250, %1252
  %1255 = fadd fast float %1251, %1253
  %1256 = uitofp i32 %1181 to float
  %1257 = uitofp i32 %1182 to float
  %1258 = fdiv fast float %1254, %1256
  %1259 = fdiv fast float %1255, %1257
  br label %1260

; <label>:1260                                    ; preds = %1235, %1162
  %1261 = phi float [ %1258, %1235 ], [ %1230, %1162 ]
  %1262 = phi float [ %1259, %1235 ], [ %1231, %1162 ]
  %1263 = and i32 %1156, 256
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1311, label %1265

; <label>:1265                                    ; preds = %1260
  %1266 = add i32 %55, 444
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = add i32 %55, 116
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = shl i32 %1275, 4
  %1277 = and i32 %1276, 32752
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = lshr i32 %1275, 7
  %1280 = and i32 %1279, 32752
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = fsub fast float 1.000000e+00, %504
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1284 = bitcast float %504 to i32
  %1285 = sitofp i32 %1284 to float
  %1286 = fadd fast float %1285, 0xC1CFBF8940000000
  %1287 = fmul fast float %1281, %1286
  %1288 = fadd fast float %1287, 0x41CFBF8940000000
  %1289 = fptosi float %1288 to i32
  %1290 = bitcast i32 %1289 to float
  %1291 = bitcast float %1283 to i32
  %1292 = sitofp i32 %1291 to float
  %1293 = fadd fast float %1292, 0xC1CFBF8940000000
  %1294 = fmul fast float %1293, %1281
  %1295 = fadd fast float %1294, 0x41CFBF8940000000
  %1296 = fptosi float %1295 to i32
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1290, %1278
  %1299 = fmul fast float %1297, %1278
  %1300 = fsub fast float %1283, %1298
  %1301 = fadd fast float %1299, %1283
  %1302 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1303 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1304 = fsub fast float %1272, %1302
  %1305 = fsub fast float %1303, %1302
  %1306 = bitcast float %1305 to i32
  %1307 = sub nsw i32 2129859010, %1306
  %1308 = bitcast i32 %1307 to float
  %1309 = fmul fast float %1308, %1304
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  br label %1311

; <label>:1311                                    ; preds = %1265, %1260
  %1312 = phi float [ %1310, %1265 ], [ %504, %1260 ]
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 128
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1333, label %1317

; <label>:1317                                    ; preds = %1311
  %1318 = add i32 %55, 428
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = add i32 %1320, 0
  %1322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1322, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 524288
  %1328 = icmp ne i32 %1327, 0
  %1329 = fcmp fast ogt float %1324, 0x3FE0101020000000
  %1330 = select i1 %1329, float 1.000000e+00, float 0.000000e+00
  %1331 = select i1 %1328, float %1330, float %1324
  %1332 = fmul fast float %1331, %1312
  br label %1333

; <label>:1333                                    ; preds = %1317, %1311
  %1334 = phi float [ %1332, %1317 ], [ %1312, %1311 ]
  %1335 = fcmp fast ult float %1334, 0x3F70101020000000
  br i1 %1335, label %2023, label %1336

; <label>:1336                                    ; preds = %1333
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 16
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1539, label %1341

; <label>:1341                                    ; preds = %1336
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %55, 380
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1348, %dx.types.Handle %102, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = extractvalue %dx.types.ResRet.f32 %1349, 3
  %1354 = and i32 %1343, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = lshr i32 %1343, 8
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1353, %1355
  %1360 = fadd fast float %1359, %1358
  %1361 = fmul fast float %1360, 0x3F70101000000000
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 512
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1374, label %1366

; <label>:1366                                    ; preds = %1341
  %1367 = add i32 %55, 464
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1371, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  br label %1374

; <label>:1374                                    ; preds = %1366, %1341
  %1375 = phi float [ %1373, %1366 ], [ 1.000000e+00, %1341 ]
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 33554432
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1486, label %1380

; <label>:1380                                    ; preds = %1374
  %1381 = add i32 %55, 240
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 65535
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1383, 16
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = add i32 %55, 244
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = lshr i32 %1394, 24
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = and i32 %1394, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = lshr i32 %1394, 8
  %1402 = and i32 %1401, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = lshr i32 %1394, 16
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1407, 0x3F70101020000000
  %1409 = add i32 %55, 236
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = lshr i32 %1411, 24
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = and i32 %1411, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = lshr i32 %1411, 8
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = lshr i32 %1411, 16
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = fmul fast float %1424, 0x3F70101020000000
  %1426 = bitcast float %1350 to i32
  %1427 = ashr i32 %1426, 1
  %1428 = sub nsw i32 1597463174, %1427
  %1429 = bitcast i32 %1428 to float
  %1430 = fmul fast float %1350, 5.000000e-01
  %1431 = fmul fast float %1429, %1429
  %1432 = fmul fast float %1431, %1430
  %1433 = fsub fast float 1.500000e+00, %1432
  %1434 = fmul fast float %1429, %1350
  %1435 = fmul fast float %1434, %1433
  %1436 = bitcast float %1351 to i32
  %1437 = ashr i32 %1436, 1
  %1438 = sub nsw i32 1597463174, %1437
  %1439 = bitcast i32 %1438 to float
  %1440 = fmul fast float %1351, 5.000000e-01
  %1441 = fmul fast float %1439, %1439
  %1442 = fmul fast float %1441, %1440
  %1443 = fsub fast float 1.500000e+00, %1442
  %1444 = fmul fast float %1439, %1351
  %1445 = fmul fast float %1444, %1443
  %1446 = bitcast float %1352 to i32
  %1447 = ashr i32 %1446, 1
  %1448 = sub nsw i32 1597463174, %1447
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1352, 5.000000e-01
  %1451 = fmul fast float %1449, %1449
  %1452 = fmul fast float %1451, %1450
  %1453 = fsub fast float 1.500000e+00, %1452
  %1454 = fmul fast float %1449, %1352
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float %1435, %1417
  %1457 = fsub fast float %1445, %1421
  %1458 = fsub fast float %1455, %1425
  %1459 = fmul fast float %1456, %1385
  %1460 = fmul fast float %1457, %1387
  %1461 = fmul fast float %1458, %1392
  %1462 = fadd fast float %1459, %1400
  %1463 = fadd fast float %1460, %1404
  %1464 = fadd fast float %1461, %1408
  %1465 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1466 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1467 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1468 = fmul fast float %1465, %1465
  %1469 = fmul fast float %1466, %1466
  %1470 = fmul fast float %1467, %1467
  %1471 = fsub fast float %1468, %1350
  %1472 = fsub fast float %1469, %1351
  %1473 = fsub fast float %1470, %1352
  %1474 = fmul fast float %1471, %1375
  %1475 = fmul fast float %1472, %1375
  %1476 = fmul fast float %1473, %1375
  %1477 = fadd fast float %1474, %1350
  %1478 = fadd fast float %1475, %1351
  %1479 = fadd fast float %1476, %1352
  %1480 = fadd fast float %1397, %1361
  %1481 = fsub fast float %1480, %1414
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fsub fast float %1482, %1361
  %1484 = fmul fast float %1483, %1375
  %1485 = fadd fast float %1484, %1361
  br label %1539

; <label>:1486                                    ; preds = %1374
  %1487 = and i32 %1377, 134217728
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1523, label %1489

; <label>:1489                                    ; preds = %1486
  %1490 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1491 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1492 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1493 = fadd fast float %1490, -5.000000e-01
  %1494 = fadd fast float %1491, -5.000000e-01
  %1495 = fadd fast float %1492, -5.000000e-01
  %1496 = fmul fast float %1493, %1375
  %1497 = fmul fast float %1494, %1375
  %1498 = fmul fast float %1495, %1375
  %1499 = fadd fast float %1496, 5.000000e-01
  %1500 = fadd fast float %1497, 5.000000e-01
  %1501 = fadd fast float %1498, 5.000000e-01
  %1502 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1503 = call float @dx.op.unary.f32(i32 24, float %1351)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %1352)  ; Sqrt(value)
  %1505 = fmul fast float %1499, 2.000000e+00
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1506, %1502
  %1508 = fadd fast float %1507, %1505
  %1509 = fmul fast float %1508, %1502
  %1510 = fmul fast float %1500, 2.000000e+00
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, %1503
  %1513 = fadd fast float %1512, %1510
  %1514 = fmul fast float %1513, %1503
  %1515 = fmul fast float %1501, 2.000000e+00
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, %1504
  %1518 = fadd fast float %1517, %1515
  %1519 = fmul fast float %1518, %1504
  %1520 = fmul fast float %1509, %1509
  %1521 = fmul fast float %1514, %1514
  %1522 = fmul fast float %1519, %1519
  br label %1539

; <label>:1523                                    ; preds = %1486
  %1524 = fmul fast float %336, %336
  %1525 = fmul fast float %340, %340
  %1526 = fmul fast float %344, %344
  %1527 = fadd fast float %1524, -1.000000e+00
  %1528 = fadd fast float %1525, -1.000000e+00
  %1529 = fadd fast float %1526, -1.000000e+00
  %1530 = fmul fast float %1375, %1527
  %1531 = fmul fast float %1375, %1528
  %1532 = fmul fast float %1375, %1529
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fadd fast float %1531, 1.000000e+00
  %1535 = fadd fast float %1532, 1.000000e+00
  %1536 = fmul fast float %1533, %1350
  %1537 = fmul fast float %1534, %1351
  %1538 = fmul fast float %1535, %1352
  br label %1539

; <label>:1539                                    ; preds = %1523, %1489, %1380, %1336
  %1540 = phi float [ %1485, %1380 ], [ %1361, %1489 ], [ %1361, %1523 ], [ 0x3FA23C0BE0000000, %1336 ]
  %1541 = phi float [ %1477, %1380 ], [ %1520, %1489 ], [ %1536, %1523 ], [ 1.000000e+00, %1336 ]
  %1542 = phi float [ %1478, %1380 ], [ %1521, %1489 ], [ %1537, %1523 ], [ 1.000000e+00, %1336 ]
  %1543 = phi float [ %1479, %1380 ], [ %1522, %1489 ], [ %1538, %1523 ], [ 1.000000e+00, %1336 ]
  %1544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.i32 %1544, 1
  %1546 = and i32 %1545, 1
  %1547 = icmp ne i32 %1546, 0
  %1548 = add i32 %55, 356
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 32
  %1552 = icmp ne i32 %1551, 0
  %1553 = and i1 %1547, %1552
  %1554 = select i1 %1553, float 1.000000e+00, float %1541
  %1555 = select i1 %1553, float 0x3FD3333340000000, float %1542
  %1556 = select i1 %1553, float 0x3FD3333340000000, float %1543
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 32
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1633, label %1561

; <label>:1561                                    ; preds = %1539
  %1562 = add i32 %55, 108
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %55, 396
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %102, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = extractvalue %dx.types.ResRet.f32 %1570, 3
  %1575 = and i32 %1564, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = lshr i32 %1564, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = lshr i32 %1564, 16
  %1581 = and i32 %1580, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101000000000
  %1584 = fmul fast float %1571, %1576
  %1585 = fadd fast float %1584, %1579
  %1586 = fmul fast float %1585, 0x3F70101000000000
  %1587 = fadd fast float %1572, -5.000000e-01
  %1588 = fadd fast float %1574, -5.000000e-01
  %1589 = fmul fast float %1587, %1583
  %1590 = fmul fast float %1588, %1583
  %1591 = fadd fast float %1589, 5.000000e-01
  %1592 = fadd fast float %1590, 5.000000e-01
  %1593 = fmul fast float %1591, 2.000000e+00
  %1594 = fadd fast float %1593, -1.000000e+00
  %1595 = fmul fast float %1592, 2.000000e+00
  %1596 = fadd fast float %1595, -1.000000e+00
  %1597 = fadd fast float %1594, %1596
  %1598 = fmul fast float %1597, 5.000000e-01
  %1599 = fsub fast float %1594, %1596
  %1600 = fmul fast float %1599, 5.000000e-01
  %1601 = call float @dx.op.unary.f32(i32 6, float %1598)  ; FAbs(value)
  %1602 = fsub fast float 1.000000e+00, %1601
  %1603 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1604 = fsub fast float %1602, %1603
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1600, float %1604, float %1598, float %1600, float %1604)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = call float @dx.op.unary.f32(i32 25, float %1605)  ; Rsqrt(value)
  %1607 = fmul fast float %1598, %1606
  %1608 = fmul fast float %1600, %1606
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 67108864
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1629, label %1613

; <label>:1613                                    ; preds = %1561
  %1614 = add i32 %55, 296
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 65535
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = lshr i32 %1616, 16
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = fsub fast float %1586, %1624
  %1626 = fmul fast float %1625, %1618
  %1627 = fadd fast float %1626, %1622
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  br label %1629

; <label>:1629                                    ; preds = %1613, %1561
  %1630 = phi float [ %1628, %1613 ], [ %1586, %1561 ]
  %1631 = call float @dx.op.dot2.f32(i32 54, float %1607, float %1608, float %1165, float %1166)  ; Dot2(ax,ay,bx,by)
  %1632 = call float @dx.op.dot2.f32(i32 54, float %1607, float %1608, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  br label %1633

; <label>:1633                                    ; preds = %1629, %1539
  %1634 = phi float [ %1630, %1629 ], [ 0x3FD6666660000000, %1539 ]
  %1635 = phi float [ %1631, %1629 ], [ 0.000000e+00, %1539 ]
  %1636 = phi float [ %1632, %1629 ], [ 0.000000e+00, %1539 ]
  %1637 = phi float [ %1573, %1629 ], [ 1.000000e+00, %1539 ]
  %1638 = add i32 %55, 176
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = lshr i32 %1640, 22
  %1642 = shl nuw nsw i32 %1641, 5
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 64
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1681, label %1648

; <label>:1648                                    ; preds = %1633
  %1649 = add i32 %55, 412
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = add i32 %1651, 0
  %1653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 131072
  %1657 = icmp eq i32 %1656, 0
  %1658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1653, %dx.types.Handle %102, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.ResRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.ResRet.f32 %1658, 2
  %1662 = fmul fast float %1659, %324
  %1663 = fmul fast float %1660, %327
  %1664 = fmul fast float %1661, %330
  br i1 %1657, label %1671, label %1665

; <label>:1665                                    ; preds = %1648
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = fmul fast float %1667, %1662
  %1669 = fmul fast float %1667, %1663
  %1670 = fmul fast float %1667, %1664
  br label %1671

; <label>:1671                                    ; preds = %1665, %1648
  %1672 = phi float [ %1668, %1665 ], [ %1662, %1648 ]
  %1673 = phi float [ %1669, %1665 ], [ %1663, %1648 ]
  %1674 = phi float [ %1670, %1665 ], [ %1664, %1648 ]
  %1675 = fmul fast float %1672, %1643
  %1676 = select i1 %265, float %1675, float %1672
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1673, float %1674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = select i1 %265, float 0.000000e+00, float %1672
  %1679 = select i1 %265, float %1677, float %1673
  %1680 = select i1 %265, float 0.000000e+00, float %1674
  br label %1681

; <label>:1681                                    ; preds = %1671, %1633
  %1682 = phi float [ %1678, %1671 ], [ 0.000000e+00, %1633 ]
  %1683 = phi float [ %1679, %1671 ], [ 0.000000e+00, %1633 ]
  %1684 = phi float [ %1680, %1671 ], [ 0.000000e+00, %1633 ]
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = and i32 %1686, 1024
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1719, label %1689

; <label>:1689                                    ; preds = %1681
  %1690 = add i32 %55, 168
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = fmul fast float %1694, 0x3F70101020000000
  %1696 = lshr i32 %1692, 8
  %1697 = and i32 %1696, 255
  %1698 = uitofp i32 %1697 to float
  %1699 = fmul fast float %1698, 0x3F70101020000000
  %1700 = lshr i32 %1692, 16
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = fmul fast float %1702, 0x3F70101020000000
  %1704 = fmul fast float %1695, %1695
  %1705 = fmul fast float %1699, %1699
  %1706 = fmul fast float %1703, %1703
  %1707 = add i32 %55, 480
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = add i32 %1709, 0
  %1711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1711, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = fmul fast float %1704, %1713
  %1717 = fmul fast float %1705, %1714
  %1718 = fmul fast float %1706, %1715
  br label %1719

; <label>:1719                                    ; preds = %1689, %1681
  %1720 = phi float [ %1716, %1689 ], [ 0.000000e+00, %1681 ]
  %1721 = phi float [ %1717, %1689 ], [ 0.000000e+00, %1681 ]
  %1722 = phi float [ %1718, %1689 ], [ 0.000000e+00, %1681 ]
  %1723 = fcmp fast ogt float %1720, 0.000000e+00
  %1724 = fcmp fast ogt float %1721, 0.000000e+00
  %1725 = fcmp fast ogt float %1722, 0.000000e+00
  %1726 = call float @dx.op.unary.f32(i32 23, float %1720)  ; Log(value)
  %1727 = call float @dx.op.unary.f32(i32 23, float %1721)  ; Log(value)
  %1728 = call float @dx.op.unary.f32(i32 23, float %1722)  ; Log(value)
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = lshr i32 %1730, 7
  %1732 = and i32 %1731, 32752
  %1733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1732)  ; LegacyF16ToF32(value)
  %1734 = fmul fast float %1726, 0xBFE62E4300000000
  %1735 = fmul fast float %1734, %1733
  %1736 = fmul fast float %1727, 0xBFE62E4300000000
  %1737 = fmul fast float %1736, %1733
  %1738 = fmul fast float %1728, 0xBFE62E4300000000
  %1739 = fmul fast float %1738, %1733
  %1740 = select i1 %1723, float %1735, float 1.270000e+02
  %1741 = select i1 %1724, float %1737, float 1.270000e+02
  %1742 = select i1 %1725, float %1739, float 1.270000e+02
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 10240
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1767, label %1747

; <label>:1747                                    ; preds = %1719
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1749, 2048
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %1767, label %1752

; <label>:1752                                    ; preds = %1747
  %1753 = add i32 %55, 496
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = add i32 %1755, 0
  %1757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1757, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 3
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = shl i32 %1761, 4
  %1763 = and i32 %1762, 32752
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = fmul fast float %1764, %1759
  %1766 = call float @dx.op.binary.f32(i32 35, float %1765, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1767

; <label>:1767                                    ; preds = %1752, %1747, %1719
  %1768 = phi float [ %1766, %1752 ], [ 0x3F70101020000000, %1747 ], [ 0x3F70101020000000, %1719 ]
  %1769 = add i32 %55, 112
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 255
  %1773 = uitofp i32 %1772 to float
  %1774 = lshr i32 %1771, 8
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = fmul fast float %1776, %1777
  %1779 = fadd fast float %1778, %1773
  %1780 = fmul fast float %1779, 0x3F70101020000000
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  br i1 %1153, label %1782, label %1817

; <label>:1782                                    ; preds = %1767
  %1783 = fmul fast float %1768, 2.000000e+00
  %1784 = fcmp fast olt float %1740, 1.270000e+02
  %1785 = fcmp fast olt float %1741, 1.270000e+02
  %1786 = fcmp fast olt float %1742, 1.270000e+02
  %1787 = fmul fast float %1740, 0xBFF7154760000000
  %1788 = fmul fast float %1787, %1783
  %1789 = fmul fast float %1741, 0xBFF7154760000000
  %1790 = fmul fast float %1789, %1783
  %1791 = fmul fast float %1742, 0xBFF7154760000000
  %1792 = fmul fast float %1791, %1783
  %1793 = call float @dx.op.unary.f32(i32 21, float %1788)  ; Exp(value)
  %1794 = call float @dx.op.unary.f32(i32 21, float %1790)  ; Exp(value)
  %1795 = call float @dx.op.unary.f32(i32 21, float %1792)  ; Exp(value)
  %1796 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1797 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1798 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1799 = fadd fast float %1796, -1.000000e+00
  %1800 = select i1 %1784, float %1799, float -1.000000e+00
  %1801 = fadd fast float %1797, -1.000000e+00
  %1802 = select i1 %1785, float %1801, float -1.000000e+00
  %1803 = fadd fast float %1798, -1.000000e+00
  %1804 = select i1 %1786, float %1803, float -1.000000e+00
  %1805 = fmul fast float %1800, %1334
  %1806 = fmul fast float %1802, %1334
  %1807 = fmul fast float %1804, %1334
  %1808 = fadd fast float %1805, 1.000000e+00
  %1809 = fadd fast float %1806, 1.000000e+00
  %1810 = fadd fast float %1807, 1.000000e+00
  %1811 = fmul fast float %1808, %1137
  %1812 = fmul fast float %1809, %1138
  %1813 = fmul fast float %1810, %1139
  %1814 = fmul fast float %1808, %1140
  %1815 = fmul fast float %1809, %1141
  %1816 = fmul fast float %1810, %1142
  br label %1817

; <label>:1817                                    ; preds = %1782, %1767
  %1818 = phi float [ %1811, %1782 ], [ %1137, %1767 ]
  %1819 = phi float [ %1812, %1782 ], [ %1138, %1767 ]
  %1820 = phi float [ %1813, %1782 ], [ %1139, %1767 ]
  %1821 = phi float [ %1814, %1782 ], [ %1140, %1767 ]
  %1822 = phi float [ %1815, %1782 ], [ %1141, %1767 ]
  %1823 = phi float [ %1816, %1782 ], [ %1142, %1767 ]
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 3
  %1827 = icmp eq i32 %1826, 3
  br i1 %1827, label %1906, label %1828

; <label>:1828                                    ; preds = %1817
  %1829 = and i32 %1825, 16
  %1830 = icmp ne i32 %1829, 0
  %1831 = select i1 %1830, float %1334, float 0.000000e+00
  %1832 = icmp eq i32 %1826, 0
  br i1 %1832, label %1833, label %1861

; <label>:1833                                    ; preds = %1828
  %1834 = and i32 %1825, 64
  %1835 = icmp ne i32 %1834, 0
  %1836 = select i1 %1835, float %1334, float 0.000000e+00
  %1837 = fsub fast float %1554, %1818
  %1838 = fsub fast float %1555, %1819
  %1839 = fsub fast float %1556, %1820
  %1840 = fmul fast float %1831, %1837
  %1841 = fmul fast float %1831, %1838
  %1842 = fmul fast float %1831, %1839
  %1843 = fadd fast float %1840, %1818
  %1844 = fadd fast float %1841, %1819
  %1845 = fadd fast float %1842, %1820
  %1846 = fsub fast float %1540, %1146
  %1847 = fmul fast float %1831, %1846
  %1848 = fadd fast float %1847, %1146
  %1849 = fsub fast float %1682, %1821
  %1850 = fsub fast float %1683, %1822
  %1851 = fsub fast float %1684, %1823
  %1852 = fmul fast float %1836, %1849
  %1853 = fmul fast float %1836, %1850
  %1854 = fmul fast float %1836, %1851
  %1855 = fadd fast float %1852, %1821
  %1856 = fadd fast float %1853, %1822
  %1857 = fadd fast float %1854, %1823
  %1858 = fsub fast float %1781, %1151
  %1859 = fmul fast float %1831, %1858
  %1860 = fadd fast float %1859, %1151
  br label %1906

; <label>:1861                                    ; preds = %1828
  %1862 = icmp eq i32 %1826, 1
  br i1 %1862, label %1863, label %1876

; <label>:1863                                    ; preds = %1861
  %1864 = fadd fast float %1554, -1.000000e+00
  %1865 = fadd fast float %1555, -1.000000e+00
  %1866 = fadd fast float %1556, -1.000000e+00
  %1867 = fmul fast float %1831, %1864
  %1868 = fmul fast float %1831, %1865
  %1869 = fmul fast float %1831, %1866
  %1870 = fadd fast float %1867, 1.000000e+00
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fadd fast float %1869, 1.000000e+00
  %1873 = fmul fast float %1870, %1818
  %1874 = fmul fast float %1871, %1819
  %1875 = fmul fast float %1872, %1820
  br label %1906

; <label>:1876                                    ; preds = %1861
  %1877 = icmp eq i32 %1826, 2
  br i1 %1877, label %1878, label %1906

; <label>:1878                                    ; preds = %1876
  %1879 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1880 = call float @dx.op.unary.f32(i32 24, float %1555)  ; Sqrt(value)
  %1881 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1882 = fadd fast float %1879, -5.000000e-01
  %1883 = fadd fast float %1880, -5.000000e-01
  %1884 = fadd fast float %1881, -5.000000e-01
  %1885 = fmul fast float %1882, %1831
  %1886 = fmul fast float %1883, %1831
  %1887 = fmul fast float %1884, %1831
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = fmul fast float %1888, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1818
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1818
  %1896 = fmul fast float %1889, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1819
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1819
  %1901 = fmul fast float %1890, 2.000000e+00
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = fmul fast float %1902, %1820
  %1904 = fadd fast float %1903, %1901
  %1905 = fmul fast float %1904, %1820
  br label %1906

; <label>:1906                                    ; preds = %1878, %1876, %1863, %1833, %1817
  %1907 = phi float [ %1818, %1817 ], [ %1895, %1878 ], [ %1818, %1876 ], [ %1873, %1863 ], [ %1843, %1833 ]
  %1908 = phi float [ %1819, %1817 ], [ %1900, %1878 ], [ %1819, %1876 ], [ %1874, %1863 ], [ %1844, %1833 ]
  %1909 = phi float [ %1820, %1817 ], [ %1905, %1878 ], [ %1820, %1876 ], [ %1875, %1863 ], [ %1845, %1833 ]
  %1910 = phi float [ %1821, %1817 ], [ %1821, %1878 ], [ %1821, %1876 ], [ %1821, %1863 ], [ %1855, %1833 ]
  %1911 = phi float [ %1822, %1817 ], [ %1822, %1878 ], [ %1822, %1876 ], [ %1822, %1863 ], [ %1856, %1833 ]
  %1912 = phi float [ %1823, %1817 ], [ %1823, %1878 ], [ %1823, %1876 ], [ %1823, %1863 ], [ %1857, %1833 ]
  %1913 = phi float [ %1146, %1817 ], [ %1146, %1878 ], [ %1146, %1876 ], [ %1146, %1863 ], [ %1848, %1833 ]
  %1914 = phi float [ %1151, %1817 ], [ %1151, %1878 ], [ %1151, %1876 ], [ %1151, %1863 ], [ %1860, %1833 ]
  %1915 = and i32 %1825, 12
  %1916 = icmp eq i32 %1915, 12
  br i1 %1916, label %2023, label %1917

; <label>:1917                                    ; preds = %1906
  %1918 = and i32 %1825, 2097184
  %1919 = icmp eq i32 %1918, 2097184
  %1920 = select i1 %1919, float %1334, float 0.000000e+00
  %1921 = and i32 %1825, 4194336
  %1922 = icmp eq i32 %1921, 4194336
  %1923 = select i1 %1922, float %1334, float 0.000000e+00
  %1924 = and i32 %1825, 8388640
  %1925 = icmp eq i32 %1924, 8388640
  %1926 = select i1 %1925, float %1334, float 0.000000e+00
  %1927 = and i32 %1825, 1024
  %1928 = icmp ne i32 %1927, 0
  %1929 = select i1 %1928, float %1334, float 0.000000e+00
  %1930 = and i32 %1825, 2048
  %1931 = icmp ne i32 %1930, 0
  %1932 = select i1 %1931, float %1334, float 0.000000e+00
  %1933 = icmp eq i32 %1915, 0
  br i1 %1933, label %1934, label %1959

; <label>:1934                                    ; preds = %1917
  %1935 = fsub fast float %1635, %1135
  %1936 = fsub fast float %1636, %1136
  %1937 = fmul fast float %1920, %1935
  %1938 = fmul fast float %1920, %1936
  %1939 = fadd fast float %1937, %1135
  %1940 = fadd fast float %1938, %1136
  %1941 = fsub fast float %1637, %1149
  %1942 = fmul fast float %1923, %1941
  %1943 = fadd fast float %1942, %1149
  %1944 = fsub fast float %1634, %1148
  %1945 = fmul fast float %1926, %1944
  %1946 = fadd fast float %1945, %1148
  %1947 = fsub fast float %1740, %1143
  %1948 = fsub fast float %1741, %1144
  %1949 = fsub fast float %1742, %1145
  %1950 = fmul fast float %1929, %1947
  %1951 = fmul fast float %1929, %1948
  %1952 = fmul fast float %1929, %1949
  %1953 = fadd fast float %1950, %1143
  %1954 = fadd fast float %1951, %1144
  %1955 = fadd fast float %1952, %1145
  %1956 = fsub fast float %1768, %1150
  %1957 = fmul fast float %1932, %1956
  %1958 = fadd fast float %1957, %1150
  br label %2023

; <label>:1959                                    ; preds = %1917
  %1960 = icmp eq i32 %1915, 4
  br i1 %1960, label %1961, label %2001

; <label>:1961                                    ; preds = %1959
  %1962 = fmul fast float %1920, %1635
  %1963 = fmul fast float %1920, %1636
  %1964 = fadd fast float %1962, %1135
  %1965 = fadd fast float %1963, %1136
  %1966 = call float @dx.op.binary.f32(i32 36, float %1149, float %1637)  ; FMin(a,b)
  %1967 = fsub fast float %1966, %1149
  %1968 = fmul fast float %1967, %1923
  %1969 = fadd fast float %1968, %1149
  %1970 = fadd fast float %1634, %1148
  %1971 = fmul fast float %1970, 0x3FF337FAE0000000
  %1972 = fmul fast float %1148, %1148
  %1973 = fmul fast float %1634, %1634
  %1974 = fadd fast float %1973, %1972
  %1975 = fmul fast float %1974, 0x3FE5152B00000000
  %1976 = fmul fast float %1148, 0xBFCC1F85E0000000
  %1977 = fmul fast float %1976, %1634
  %1978 = fadd fast float %1977, 0xBFE1363700000000
  %1979 = fadd fast float %1978, %1971
  %1980 = fsub fast float %1979, %1975
  %1981 = fmul fast float %1970, 0x3FBA6F0D00000000
  %1982 = fmul fast float %1974, 0x3FD0432880000000
  %1983 = fmul fast float %1148, 0xBFEF110800000000
  %1984 = fmul fast float %1983, %1634
  %1985 = fadd fast float %1984, 1.000000e+00
  %1986 = fsub fast float %1985, %1981
  %1987 = fadd fast float %1986, %1982
  %1988 = fdiv fast float %1980, %1987
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float %1989, %1148
  %1991 = fmul fast float %1990, %1926
  %1992 = fadd fast float %1991, %1148
  %1993 = fmul fast float %1929, %1740
  %1994 = fmul fast float %1929, %1741
  %1995 = fmul fast float %1929, %1742
  %1996 = fadd fast float %1993, %1143
  %1997 = fadd fast float %1994, %1144
  %1998 = fadd fast float %1995, %1145
  %1999 = fmul fast float %1932, %1768
  %2000 = fadd fast float %1999, %1150
  br label %2023

; <label>:2001                                    ; preds = %1959
  %2002 = icmp eq i32 %1915, 8
  br i1 %2002, label %2003, label %2023

; <label>:2003                                    ; preds = %2001
  %2004 = fmul fast float %1920, %1635
  %2005 = fmul fast float %1920, %1636
  %2006 = fadd fast float %2004, %1135
  %2007 = fadd fast float %2005, %1136
  %2008 = call float @dx.op.binary.f32(i32 36, float %1149, float %1637)  ; FMin(a,b)
  %2009 = fsub fast float %2008, %1149
  %2010 = fmul fast float %2009, %1923
  %2011 = fadd fast float %2010, %1149
  %2012 = fsub fast float %1634, %1148
  %2013 = fmul fast float %1926, %2012
  %2014 = fadd fast float %2013, %1148
  %2015 = fmul fast float %1929, %1740
  %2016 = fmul fast float %1929, %1741
  %2017 = fmul fast float %1929, %1742
  %2018 = fadd fast float %2015, %1143
  %2019 = fadd fast float %2016, %1144
  %2020 = fadd fast float %2017, %1145
  %2021 = fmul fast float %1932, %1768
  %2022 = fadd fast float %2021, %1150
  br label %2023

; <label>:2023                                    ; preds = %2003, %2001, %1961, %1934, %1906, %1333, %1152, %1134
  %2024 = phi float [ %1135, %1906 ], [ %1135, %1333 ], [ %1135, %1134 ], [ %2006, %2003 ], [ %1135, %2001 ], [ %1964, %1961 ], [ %1939, %1934 ], [ %1135, %1152 ]
  %2025 = phi float [ %1136, %1906 ], [ %1136, %1333 ], [ %1136, %1134 ], [ %2007, %2003 ], [ %1136, %2001 ], [ %1965, %1961 ], [ %1940, %1934 ], [ %1136, %1152 ]
  %2026 = phi float [ %1907, %1906 ], [ %1137, %1333 ], [ %1137, %1134 ], [ %1907, %2003 ], [ %1907, %2001 ], [ %1907, %1961 ], [ %1907, %1934 ], [ %1137, %1152 ]
  %2027 = phi float [ %1908, %1906 ], [ %1138, %1333 ], [ %1138, %1134 ], [ %1908, %2003 ], [ %1908, %2001 ], [ %1908, %1961 ], [ %1908, %1934 ], [ %1138, %1152 ]
  %2028 = phi float [ %1909, %1906 ], [ %1139, %1333 ], [ %1139, %1134 ], [ %1909, %2003 ], [ %1909, %2001 ], [ %1909, %1961 ], [ %1909, %1934 ], [ %1139, %1152 ]
  %2029 = phi float [ %1910, %1906 ], [ %1140, %1333 ], [ %1140, %1134 ], [ %1910, %2003 ], [ %1910, %2001 ], [ %1910, %1961 ], [ %1910, %1934 ], [ %1140, %1152 ]
  %2030 = phi float [ %1911, %1906 ], [ %1141, %1333 ], [ %1141, %1134 ], [ %1911, %2003 ], [ %1911, %2001 ], [ %1911, %1961 ], [ %1911, %1934 ], [ %1141, %1152 ]
  %2031 = phi float [ %1912, %1906 ], [ %1142, %1333 ], [ %1142, %1134 ], [ %1912, %2003 ], [ %1912, %2001 ], [ %1912, %1961 ], [ %1912, %1934 ], [ %1142, %1152 ]
  %2032 = phi float [ %1143, %1906 ], [ %1143, %1333 ], [ %1143, %1134 ], [ %2018, %2003 ], [ %1143, %2001 ], [ %1996, %1961 ], [ %1953, %1934 ], [ %1143, %1152 ]
  %2033 = phi float [ %1144, %1906 ], [ %1144, %1333 ], [ %1144, %1134 ], [ %2019, %2003 ], [ %1144, %2001 ], [ %1997, %1961 ], [ %1954, %1934 ], [ %1144, %1152 ]
  %2034 = phi float [ %1145, %1906 ], [ %1145, %1333 ], [ %1145, %1134 ], [ %2020, %2003 ], [ %1145, %2001 ], [ %1998, %1961 ], [ %1955, %1934 ], [ %1145, %1152 ]
  %2035 = phi float [ %1913, %1906 ], [ %1146, %1333 ], [ %1146, %1134 ], [ %1913, %2003 ], [ %1913, %2001 ], [ %1913, %1961 ], [ %1913, %1934 ], [ %1146, %1152 ]
  %2036 = phi float [ %1148, %1906 ], [ %1148, %1333 ], [ %1148, %1134 ], [ %2014, %2003 ], [ %1148, %2001 ], [ %1992, %1961 ], [ %1946, %1934 ], [ %1148, %1152 ]
  %2037 = phi float [ %1149, %1906 ], [ %1149, %1333 ], [ %1149, %1134 ], [ %2011, %2003 ], [ %1149, %2001 ], [ %1969, %1961 ], [ %1943, %1934 ], [ %1149, %1152 ]
  %2038 = phi float [ %1150, %1906 ], [ %1150, %1333 ], [ %1150, %1134 ], [ %2022, %2003 ], [ %1150, %2001 ], [ %2000, %1961 ], [ %1958, %1934 ], [ %1150, %1152 ]
  %2039 = phi float [ %1914, %1906 ], [ %1151, %1333 ], [ %1151, %1134 ], [ %1914, %2003 ], [ %1914, %2001 ], [ %1914, %1961 ], [ %1914, %1934 ], [ %1151, %1152 ]
  br i1 %451, label %2911, label %2040

; <label>:2040                                    ; preds = %2023
  %2041 = icmp ult i32 %507, 3
  %2042 = add i32 %55, 56
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %55, 60
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = or i32 %2047, %2044
  %2049 = icmp eq i32 %2048, 0
  br i1 %2049, label %2911, label %2050

; <label>:2050                                    ; preds = %2040
  %2051 = and i32 %2044, 262144
  %2052 = icmp ne i32 %2051, 0
  %2053 = select i1 %2052, float %61, float 1.000000e+00
  %2054 = select i1 %2052, float %62, float 0.000000e+00
  %2055 = select i1 %2052, float %63, float 0.000000e+00
  %2056 = select i1 %2052, float %64, float 1.000000e+00
  %2057 = select i1 %2052, float %65, float %88
  %2058 = select i1 %2052, float %66, float %89
  %2059 = add i32 %55, 316
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = lshr i32 %2061, 16
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = fmul fast float %2063, 0x3F50624DE0000000
  %2065 = add i32 %55, 120
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = lshr i32 %2067, 16
  %2069 = and i32 %2068, 255
  %2070 = lshr i32 %2067, 24
  %2071 = add i32 %55, 324
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 65535
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2073, 16
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = add i32 %55, 64
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 22
  %2082 = shl nuw nsw i32 %2081, 5
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = shl i32 %2080, 4
  %2085 = and i32 %2084, 32752
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = lshr i32 %2080, 7
  %2088 = and i32 %2087, 32752
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2092 = fmul fast float %2091, 1.000000e+03
  %2093 = fmul fast float %401, %2092
  %2094 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2095 = fadd fast float %2094, %391
  %2096 = fmul fast float %402, %2092
  %2097 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2098 = fadd fast float %2097, %393
  %2099 = fmul fast float %2064, %2092
  %2100 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2101 = fmul fast float %2100, 0x401921FB60000000
  %2102 = fadd fast float %2101, %2083
  %2103 = call float @dx.op.unary.f32(i32 13, float %2102)  ; Sin(value)
  %2104 = call float @dx.op.unary.f32(i32 12, float %2102)  ; Cos(value)
  %2105 = fsub fast float -0.000000e+00, %2103
  %2106 = fadd fast float %2057, -5.000000e-01
  %2107 = fadd fast float %2058, -5.000000e-01
  %2108 = fmul fast float %2075, %2106
  %2109 = fmul fast float %2077, %2107
  %2110 = fadd fast float %2108, 5.000000e-01
  %2111 = fadd fast float %2109, 5.000000e-01
  %2112 = fmul fast float %2086, %2110
  %2113 = fmul fast float %2089, %2111
  %2114 = fmul fast float %2104, %2112
  %2115 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2113, float %2114)  ; FMad(a,b,c)
  %2116 = fmul fast float %2103, %2112
  %2117 = call float @dx.op.tertiary.f32(i32 46, float %2104, float %2113, float %2116)  ; FMad(a,b,c)
  %2118 = fadd fast float %2095, %2115
  %2119 = fadd fast float %2098, %2117
  %2120 = icmp ugt i32 %2069, 1
  %2121 = icmp ugt i32 %2067, 33554431
  %2122 = or i1 %2121, %2120
  br i1 %2122, label %2123, label %2148

; <label>:2123                                    ; preds = %2050
  %2124 = add i32 %55, 260
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = lshr i32 %2126, 16
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = fmul fast float %2091, %2128
  %2130 = call float @dx.op.unary.f32(i32 22, float %2129)  ; Frc(value)
  %2131 = mul nuw nsw i32 %2069, %2070
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2130, %2132
  %2134 = call float @dx.op.unary.f32(i32 27, float %2133)  ; Round_ni(value)
  %2135 = fptoui float %2134 to i32
  %2136 = urem i32 %2135, %2069
  %2137 = udiv i32 %2135, %2070
  %2138 = call float @dx.op.unary.f32(i32 22, float %2118)  ; Frc(value)
  %2139 = call float @dx.op.unary.f32(i32 22, float %2119)  ; Frc(value)
  %2140 = uitofp i32 %2136 to float
  %2141 = uitofp i32 %2137 to float
  %2142 = fadd fast float %2138, %2140
  %2143 = fadd fast float %2139, %2141
  %2144 = uitofp i32 %2069 to float
  %2145 = uitofp i32 %2070 to float
  %2146 = fdiv fast float %2142, %2144
  %2147 = fdiv fast float %2143, %2145
  br label %2148

; <label>:2148                                    ; preds = %2123, %2050
  %2149 = phi float [ %2146, %2123 ], [ %2118, %2050 ]
  %2150 = phi float [ %2147, %2123 ], [ %2119, %2050 ]
  %2151 = and i32 %2044, 256
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2199, label %2153

; <label>:2153                                    ; preds = %2148
  %2154 = add i32 %55, 448
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %2156, 0
  %2158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2158, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = add i32 %55, 132
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = shl i32 %2163, 4
  %2165 = and i32 %2164, 32752
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = lshr i32 %2163, 7
  %2168 = and i32 %2167, 32752
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = fsub fast float 1.000000e+00, %503
  %2171 = call float @dx.op.binary.f32(i32 35, float %2170, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2172 = bitcast float %503 to i32
  %2173 = sitofp i32 %2172 to float
  %2174 = fadd fast float %2173, 0xC1CFBF8940000000
  %2175 = fmul fast float %2169, %2174
  %2176 = fadd fast float %2175, 0x41CFBF8940000000
  %2177 = fptosi float %2176 to i32
  %2178 = bitcast i32 %2177 to float
  %2179 = bitcast float %2171 to i32
  %2180 = sitofp i32 %2179 to float
  %2181 = fadd fast float %2180, 0xC1CFBF8940000000
  %2182 = fmul fast float %2181, %2169
  %2183 = fadd fast float %2182, 0x41CFBF8940000000
  %2184 = fptosi float %2183 to i32
  %2185 = bitcast i32 %2184 to float
  %2186 = fmul fast float %2178, %2166
  %2187 = fmul fast float %2185, %2166
  %2188 = fsub fast float %2171, %2186
  %2189 = fadd fast float %2187, %2171
  %2190 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2192 = fsub fast float %2160, %2190
  %2193 = fsub fast float %2191, %2190
  %2194 = bitcast float %2193 to i32
  %2195 = sub nsw i32 2129859010, %2194
  %2196 = bitcast i32 %2195 to float
  %2197 = fmul fast float %2196, %2192
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  br label %2199

; <label>:2199                                    ; preds = %2153, %2148
  %2200 = phi float [ %2198, %2153 ], [ %503, %2148 ]
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 128
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2221, label %2205

; <label>:2205                                    ; preds = %2199
  %2206 = add i32 %55, 432
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = add i32 %2208, 0
  %2210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2210, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 524288
  %2216 = icmp ne i32 %2215, 0
  %2217 = fcmp fast ogt float %2212, 0x3FE0101020000000
  %2218 = select i1 %2217, float 1.000000e+00, float 0.000000e+00
  %2219 = select i1 %2216, float %2218, float %2212
  %2220 = fmul fast float %2219, %2200
  br label %2221

; <label>:2221                                    ; preds = %2205, %2199
  %2222 = phi float [ %2220, %2205 ], [ %2200, %2199 ]
  %2223 = fcmp fast ult float %2222, 0x3F70101020000000
  br i1 %2223, label %2911, label %2224

; <label>:2224                                    ; preds = %2221
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 16
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2427, label %2229

; <label>:2229                                    ; preds = %2224
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %55, 384
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = add i32 %2234, 0
  %2236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2236, %dx.types.Handle %102, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.ResRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.ResRet.f32 %2237, 2
  %2241 = extractvalue %dx.types.ResRet.f32 %2237, 3
  %2242 = and i32 %2231, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = lshr i32 %2231, 8
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2241, %2243
  %2248 = fadd fast float %2247, %2246
  %2249 = fmul fast float %2248, 0x3F70101000000000
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 512
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2262, label %2254

; <label>:2254                                    ; preds = %2229
  %2255 = add i32 %55, 468
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %2257, 0
  %2259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2259, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  br label %2262

; <label>:2262                                    ; preds = %2254, %2229
  %2263 = phi float [ %2261, %2254 ], [ 1.000000e+00, %2229 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 33554432
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2374, label %2268

; <label>:2268                                    ; preds = %2262
  %2269 = add i32 %55, 256
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 65535
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = lshr i32 %2271, 16
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = add i32 %55, 260
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 65535
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = lshr i32 %2282, 24
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101020000000
  %2286 = and i32 %2282, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = lshr i32 %2282, 8
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = lshr i32 %2282, 16
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = add i32 %55, 252
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = lshr i32 %2299, 24
  %2301 = uitofp i32 %2300 to float
  %2302 = fmul fast float %2301, 0x3F70101020000000
  %2303 = and i32 %2299, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = fmul fast float %2304, 0x3F70101020000000
  %2306 = lshr i32 %2299, 8
  %2307 = and i32 %2306, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101020000000
  %2310 = lshr i32 %2299, 16
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2312, 0x3F70101020000000
  %2314 = bitcast float %2238 to i32
  %2315 = ashr i32 %2314, 1
  %2316 = sub nsw i32 1597463174, %2315
  %2317 = bitcast i32 %2316 to float
  %2318 = fmul fast float %2238, 5.000000e-01
  %2319 = fmul fast float %2317, %2317
  %2320 = fmul fast float %2319, %2318
  %2321 = fsub fast float 1.500000e+00, %2320
  %2322 = fmul fast float %2317, %2238
  %2323 = fmul fast float %2322, %2321
  %2324 = bitcast float %2239 to i32
  %2325 = ashr i32 %2324, 1
  %2326 = sub nsw i32 1597463174, %2325
  %2327 = bitcast i32 %2326 to float
  %2328 = fmul fast float %2239, 5.000000e-01
  %2329 = fmul fast float %2327, %2327
  %2330 = fmul fast float %2329, %2328
  %2331 = fsub fast float 1.500000e+00, %2330
  %2332 = fmul fast float %2327, %2239
  %2333 = fmul fast float %2332, %2331
  %2334 = bitcast float %2240 to i32
  %2335 = ashr i32 %2334, 1
  %2336 = sub nsw i32 1597463174, %2335
  %2337 = bitcast i32 %2336 to float
  %2338 = fmul fast float %2240, 5.000000e-01
  %2339 = fmul fast float %2337, %2337
  %2340 = fmul fast float %2339, %2338
  %2341 = fsub fast float 1.500000e+00, %2340
  %2342 = fmul fast float %2337, %2240
  %2343 = fmul fast float %2342, %2341
  %2344 = fsub fast float %2323, %2305
  %2345 = fsub fast float %2333, %2309
  %2346 = fsub fast float %2343, %2313
  %2347 = fmul fast float %2344, %2273
  %2348 = fmul fast float %2345, %2275
  %2349 = fmul fast float %2346, %2280
  %2350 = fadd fast float %2347, %2288
  %2351 = fadd fast float %2348, %2292
  %2352 = fadd fast float %2349, %2296
  %2353 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2354 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2355 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2356 = fmul fast float %2353, %2353
  %2357 = fmul fast float %2354, %2354
  %2358 = fmul fast float %2355, %2355
  %2359 = fsub fast float %2356, %2238
  %2360 = fsub fast float %2357, %2239
  %2361 = fsub fast float %2358, %2240
  %2362 = fmul fast float %2359, %2263
  %2363 = fmul fast float %2360, %2263
  %2364 = fmul fast float %2361, %2263
  %2365 = fadd fast float %2362, %2238
  %2366 = fadd fast float %2363, %2239
  %2367 = fadd fast float %2364, %2240
  %2368 = fadd fast float %2285, %2249
  %2369 = fsub fast float %2368, %2302
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = fsub fast float %2370, %2249
  %2372 = fmul fast float %2371, %2263
  %2373 = fadd fast float %2372, %2249
  br label %2427

; <label>:2374                                    ; preds = %2262
  %2375 = and i32 %2265, 134217728
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %2411, label %2377

; <label>:2377                                    ; preds = %2374
  %2378 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2379 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2380 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2381 = fadd fast float %2378, -5.000000e-01
  %2382 = fadd fast float %2379, -5.000000e-01
  %2383 = fadd fast float %2380, -5.000000e-01
  %2384 = fmul fast float %2381, %2263
  %2385 = fmul fast float %2382, %2263
  %2386 = fmul fast float %2383, %2263
  %2387 = fadd fast float %2384, 5.000000e-01
  %2388 = fadd fast float %2385, 5.000000e-01
  %2389 = fadd fast float %2386, 5.000000e-01
  %2390 = call float @dx.op.unary.f32(i32 24, float %2238)  ; Sqrt(value)
  %2391 = call float @dx.op.unary.f32(i32 24, float %2239)  ; Sqrt(value)
  %2392 = call float @dx.op.unary.f32(i32 24, float %2240)  ; Sqrt(value)
  %2393 = fmul fast float %2387, 2.000000e+00
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2394, %2390
  %2396 = fadd fast float %2395, %2393
  %2397 = fmul fast float %2396, %2390
  %2398 = fmul fast float %2388, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2391
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2391
  %2403 = fmul fast float %2389, 2.000000e+00
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = fmul fast float %2404, %2392
  %2406 = fadd fast float %2405, %2403
  %2407 = fmul fast float %2406, %2392
  %2408 = fmul fast float %2397, %2397
  %2409 = fmul fast float %2402, %2402
  %2410 = fmul fast float %2407, %2407
  br label %2427

; <label>:2411                                    ; preds = %2374
  %2412 = fmul fast float %378, %378
  %2413 = fmul fast float %382, %382
  %2414 = fmul fast float %386, %386
  %2415 = fadd fast float %2412, -1.000000e+00
  %2416 = fadd fast float %2413, -1.000000e+00
  %2417 = fadd fast float %2414, -1.000000e+00
  %2418 = fmul fast float %2263, %2415
  %2419 = fmul fast float %2263, %2416
  %2420 = fmul fast float %2263, %2417
  %2421 = fadd fast float %2418, 1.000000e+00
  %2422 = fadd fast float %2419, 1.000000e+00
  %2423 = fadd fast float %2420, 1.000000e+00
  %2424 = fmul fast float %2421, %2238
  %2425 = fmul fast float %2422, %2239
  %2426 = fmul fast float %2423, %2240
  br label %2427

; <label>:2427                                    ; preds = %2411, %2377, %2268, %2224
  %2428 = phi float [ %2373, %2268 ], [ %2249, %2377 ], [ %2249, %2411 ], [ 0x3FA23C0BE0000000, %2224 ]
  %2429 = phi float [ %2365, %2268 ], [ %2408, %2377 ], [ %2424, %2411 ], [ 1.000000e+00, %2224 ]
  %2430 = phi float [ %2366, %2268 ], [ %2409, %2377 ], [ %2425, %2411 ], [ 1.000000e+00, %2224 ]
  %2431 = phi float [ %2367, %2268 ], [ %2410, %2377 ], [ %2426, %2411 ], [ 1.000000e+00, %2224 ]
  %2432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.i32 %2432, 1
  %2434 = and i32 %2433, 1
  %2435 = icmp ne i32 %2434, 0
  %2436 = add i32 %55, 356
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 32
  %2440 = icmp ne i32 %2439, 0
  %2441 = and i1 %2435, %2440
  %2442 = select i1 %2441, float 1.000000e+00, float %2429
  %2443 = select i1 %2441, float 0x3FD3333340000000, float %2430
  %2444 = select i1 %2441, float 0x3FD3333340000000, float %2431
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 32
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2521, label %2449

; <label>:2449                                    ; preds = %2427
  %2450 = add i32 %55, 124
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = add i32 %55, 400
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = add i32 %2455, 0
  %2457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2457, %dx.types.Handle %102, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = extractvalue %dx.types.ResRet.f32 %2458, 3
  %2463 = and i32 %2452, 255
  %2464 = uitofp i32 %2463 to float
  %2465 = lshr i32 %2452, 8
  %2466 = and i32 %2465, 255
  %2467 = uitofp i32 %2466 to float
  %2468 = lshr i32 %2452, 16
  %2469 = and i32 %2468, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F70101000000000
  %2472 = fmul fast float %2459, %2464
  %2473 = fadd fast float %2472, %2467
  %2474 = fmul fast float %2473, 0x3F70101000000000
  %2475 = fadd fast float %2460, -5.000000e-01
  %2476 = fadd fast float %2462, -5.000000e-01
  %2477 = fmul fast float %2475, %2471
  %2478 = fmul fast float %2476, %2471
  %2479 = fadd fast float %2477, 5.000000e-01
  %2480 = fadd fast float %2478, 5.000000e-01
  %2481 = fmul fast float %2479, 2.000000e+00
  %2482 = fadd fast float %2481, -1.000000e+00
  %2483 = fmul fast float %2480, 2.000000e+00
  %2484 = fadd fast float %2483, -1.000000e+00
  %2485 = fadd fast float %2482, %2484
  %2486 = fmul fast float %2485, 5.000000e-01
  %2487 = fsub fast float %2482, %2484
  %2488 = fmul fast float %2487, 5.000000e-01
  %2489 = call float @dx.op.unary.f32(i32 6, float %2486)  ; FAbs(value)
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = call float @dx.op.unary.f32(i32 6, float %2488)  ; FAbs(value)
  %2492 = fsub fast float %2490, %2491
  %2493 = call float @dx.op.dot3.f32(i32 55, float %2486, float %2488, float %2492, float %2486, float %2488, float %2492)  ; Dot3(ax,ay,az,bx,by,bz)
  %2494 = call float @dx.op.unary.f32(i32 25, float %2493)  ; Rsqrt(value)
  %2495 = fmul fast float %2486, %2494
  %2496 = fmul fast float %2488, %2494
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 67108864
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2517, label %2501

; <label>:2501                                    ; preds = %2449
  %2502 = add i32 %55, 312
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 65535
  %2506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2505)  ; LegacyF16ToF32(value)
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 65535
  %2510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2509)  ; LegacyF16ToF32(value)
  %2511 = lshr i32 %2504, 16
  %2512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2511)  ; LegacyF16ToF32(value)
  %2513 = fsub fast float %2474, %2512
  %2514 = fmul fast float %2513, %2506
  %2515 = fadd fast float %2514, %2510
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  br label %2517

; <label>:2517                                    ; preds = %2501, %2449
  %2518 = phi float [ %2516, %2501 ], [ %2474, %2449 ]
  %2519 = call float @dx.op.dot2.f32(i32 54, float %2495, float %2496, float %2053, float %2054)  ; Dot2(ax,ay,bx,by)
  %2520 = call float @dx.op.dot2.f32(i32 54, float %2495, float %2496, float %2055, float %2056)  ; Dot2(ax,ay,bx,by)
  br label %2521

; <label>:2521                                    ; preds = %2517, %2427
  %2522 = phi float [ %2518, %2517 ], [ 0x3FD6666660000000, %2427 ]
  %2523 = phi float [ %2519, %2517 ], [ 0.000000e+00, %2427 ]
  %2524 = phi float [ %2520, %2517 ], [ 0.000000e+00, %2427 ]
  %2525 = phi float [ %2461, %2517 ], [ 1.000000e+00, %2427 ]
  %2526 = add i32 %55, 192
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = lshr i32 %2528, 22
  %2530 = shl nuw nsw i32 %2529, 5
  %2531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2530)  ; LegacyF16ToF32(value)
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = and i32 %2533, 64
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %2569, label %2536

; <label>:2536                                    ; preds = %2521
  %2537 = add i32 %55, 416
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = add i32 %2539, 0
  %2541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 131072
  %2545 = icmp eq i32 %2544, 0
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2541, %dx.types.Handle %102, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = fmul fast float %2547, %366
  %2551 = fmul fast float %2548, %369
  %2552 = fmul fast float %2549, %372
  br i1 %2545, label %2559, label %2553

; <label>:2553                                    ; preds = %2536
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2556 = fmul fast float %2555, %2550
  %2557 = fmul fast float %2555, %2551
  %2558 = fmul fast float %2555, %2552
  br label %2559

; <label>:2559                                    ; preds = %2553, %2536
  %2560 = phi float [ %2556, %2553 ], [ %2550, %2536 ]
  %2561 = phi float [ %2557, %2553 ], [ %2551, %2536 ]
  %2562 = phi float [ %2558, %2553 ], [ %2552, %2536 ]
  %2563 = fmul fast float %2560, %2531
  %2564 = select i1 %265, float %2563, float %2560
  %2565 = call float @dx.op.dot3.f32(i32 55, float %2564, float %2561, float %2562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = select i1 %265, float 0.000000e+00, float %2560
  %2567 = select i1 %265, float %2565, float %2561
  %2568 = select i1 %265, float 0.000000e+00, float %2562
  br label %2569

; <label>:2569                                    ; preds = %2559, %2521
  %2570 = phi float [ %2566, %2559 ], [ 0.000000e+00, %2521 ]
  %2571 = phi float [ %2567, %2559 ], [ 0.000000e+00, %2521 ]
  %2572 = phi float [ %2568, %2559 ], [ 0.000000e+00, %2521 ]
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 1024
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2607, label %2577

; <label>:2577                                    ; preds = %2569
  %2578 = add i32 %55, 184
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 255
  %2582 = uitofp i32 %2581 to float
  %2583 = fmul fast float %2582, 0x3F70101020000000
  %2584 = lshr i32 %2580, 8
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = fmul fast float %2586, 0x3F70101020000000
  %2588 = lshr i32 %2580, 16
  %2589 = and i32 %2588, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = fmul fast float %2590, 0x3F70101020000000
  %2592 = fmul fast float %2583, %2583
  %2593 = fmul fast float %2587, %2587
  %2594 = fmul fast float %2591, %2591
  %2595 = add i32 %55, 484
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %2597, 0
  %2599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2599, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = fmul fast float %2592, %2601
  %2605 = fmul fast float %2593, %2602
  %2606 = fmul fast float %2594, %2603
  br label %2607

; <label>:2607                                    ; preds = %2577, %2569
  %2608 = phi float [ %2604, %2577 ], [ 0.000000e+00, %2569 ]
  %2609 = phi float [ %2605, %2577 ], [ 0.000000e+00, %2569 ]
  %2610 = phi float [ %2606, %2577 ], [ 0.000000e+00, %2569 ]
  %2611 = fcmp fast ogt float %2608, 0.000000e+00
  %2612 = fcmp fast ogt float %2609, 0.000000e+00
  %2613 = fcmp fast ogt float %2610, 0.000000e+00
  %2614 = call float @dx.op.unary.f32(i32 23, float %2608)  ; Log(value)
  %2615 = call float @dx.op.unary.f32(i32 23, float %2609)  ; Log(value)
  %2616 = call float @dx.op.unary.f32(i32 23, float %2610)  ; Log(value)
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = lshr i32 %2618, 7
  %2620 = and i32 %2619, 32752
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = fmul fast float %2614, 0xBFE62E4300000000
  %2623 = fmul fast float %2622, %2621
  %2624 = fmul fast float %2615, 0xBFE62E4300000000
  %2625 = fmul fast float %2624, %2621
  %2626 = fmul fast float %2616, 0xBFE62E4300000000
  %2627 = fmul fast float %2626, %2621
  %2628 = select i1 %2611, float %2623, float 1.270000e+02
  %2629 = select i1 %2612, float %2625, float 1.270000e+02
  %2630 = select i1 %2613, float %2627, float 1.270000e+02
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 10240
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2655, label %2635

; <label>:2635                                    ; preds = %2607
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 2048
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2655, label %2640

; <label>:2640                                    ; preds = %2635
  %2641 = add i32 %55, 500
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 3
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = shl i32 %2649, 4
  %2651 = and i32 %2650, 32752
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = fmul fast float %2652, %2647
  %2654 = call float @dx.op.binary.f32(i32 35, float %2653, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2655

; <label>:2655                                    ; preds = %2640, %2635, %2607
  %2656 = phi float [ %2654, %2640 ], [ 0x3F70101020000000, %2635 ], [ 0x3F70101020000000, %2607 ]
  %2657 = add i32 %55, 128
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = lshr i32 %2659, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2443, float %2444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2666 = fmul fast float %2664, %2665
  %2667 = fadd fast float %2666, %2661
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  br i1 %2041, label %2670, label %2705

; <label>:2670                                    ; preds = %2655
  %2671 = fmul fast float %2656, 2.000000e+00
  %2672 = fcmp fast olt float %2628, 1.270000e+02
  %2673 = fcmp fast olt float %2629, 1.270000e+02
  %2674 = fcmp fast olt float %2630, 1.270000e+02
  %2675 = fmul fast float %2628, 0xBFF7154760000000
  %2676 = fmul fast float %2675, %2671
  %2677 = fmul fast float %2629, 0xBFF7154760000000
  %2678 = fmul fast float %2677, %2671
  %2679 = fmul fast float %2630, 0xBFF7154760000000
  %2680 = fmul fast float %2679, %2671
  %2681 = call float @dx.op.unary.f32(i32 21, float %2676)  ; Exp(value)
  %2682 = call float @dx.op.unary.f32(i32 21, float %2678)  ; Exp(value)
  %2683 = call float @dx.op.unary.f32(i32 21, float %2680)  ; Exp(value)
  %2684 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2685 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2686 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2687 = fadd fast float %2684, -1.000000e+00
  %2688 = select i1 %2672, float %2687, float -1.000000e+00
  %2689 = fadd fast float %2685, -1.000000e+00
  %2690 = select i1 %2673, float %2689, float -1.000000e+00
  %2691 = fadd fast float %2686, -1.000000e+00
  %2692 = select i1 %2674, float %2691, float -1.000000e+00
  %2693 = fmul fast float %2688, %2222
  %2694 = fmul fast float %2690, %2222
  %2695 = fmul fast float %2692, %2222
  %2696 = fadd fast float %2693, 1.000000e+00
  %2697 = fadd fast float %2694, 1.000000e+00
  %2698 = fadd fast float %2695, 1.000000e+00
  %2699 = fmul fast float %2696, %2026
  %2700 = fmul fast float %2697, %2027
  %2701 = fmul fast float %2698, %2028
  %2702 = fmul fast float %2696, %2029
  %2703 = fmul fast float %2697, %2030
  %2704 = fmul fast float %2698, %2031
  br label %2705

; <label>:2705                                    ; preds = %2670, %2655
  %2706 = phi float [ %2699, %2670 ], [ %2026, %2655 ]
  %2707 = phi float [ %2700, %2670 ], [ %2027, %2655 ]
  %2708 = phi float [ %2701, %2670 ], [ %2028, %2655 ]
  %2709 = phi float [ %2702, %2670 ], [ %2029, %2655 ]
  %2710 = phi float [ %2703, %2670 ], [ %2030, %2655 ]
  %2711 = phi float [ %2704, %2670 ], [ %2031, %2655 ]
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 3
  %2715 = icmp eq i32 %2714, 3
  br i1 %2715, label %2794, label %2716

; <label>:2716                                    ; preds = %2705
  %2717 = and i32 %2713, 16
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2222, float 0.000000e+00
  %2720 = icmp eq i32 %2714, 0
  br i1 %2720, label %2721, label %2749

; <label>:2721                                    ; preds = %2716
  %2722 = and i32 %2713, 64
  %2723 = icmp ne i32 %2722, 0
  %2724 = select i1 %2723, float %2222, float 0.000000e+00
  %2725 = fsub fast float %2442, %2706
  %2726 = fsub fast float %2443, %2707
  %2727 = fsub fast float %2444, %2708
  %2728 = fmul fast float %2719, %2725
  %2729 = fmul fast float %2719, %2726
  %2730 = fmul fast float %2719, %2727
  %2731 = fadd fast float %2728, %2706
  %2732 = fadd fast float %2729, %2707
  %2733 = fadd fast float %2730, %2708
  %2734 = fsub fast float %2428, %2035
  %2735 = fmul fast float %2719, %2734
  %2736 = fadd fast float %2735, %2035
  %2737 = fsub fast float %2570, %2709
  %2738 = fsub fast float %2571, %2710
  %2739 = fsub fast float %2572, %2711
  %2740 = fmul fast float %2724, %2737
  %2741 = fmul fast float %2724, %2738
  %2742 = fmul fast float %2724, %2739
  %2743 = fadd fast float %2740, %2709
  %2744 = fadd fast float %2741, %2710
  %2745 = fadd fast float %2742, %2711
  %2746 = fsub fast float %2669, %2039
  %2747 = fmul fast float %2719, %2746
  %2748 = fadd fast float %2747, %2039
  br label %2794

; <label>:2749                                    ; preds = %2716
  %2750 = icmp eq i32 %2714, 1
  br i1 %2750, label %2751, label %2764

; <label>:2751                                    ; preds = %2749
  %2752 = fadd fast float %2442, -1.000000e+00
  %2753 = fadd fast float %2443, -1.000000e+00
  %2754 = fadd fast float %2444, -1.000000e+00
  %2755 = fmul fast float %2719, %2752
  %2756 = fmul fast float %2719, %2753
  %2757 = fmul fast float %2719, %2754
  %2758 = fadd fast float %2755, 1.000000e+00
  %2759 = fadd fast float %2756, 1.000000e+00
  %2760 = fadd fast float %2757, 1.000000e+00
  %2761 = fmul fast float %2758, %2706
  %2762 = fmul fast float %2759, %2707
  %2763 = fmul fast float %2760, %2708
  br label %2794

; <label>:2764                                    ; preds = %2749
  %2765 = icmp eq i32 %2714, 2
  br i1 %2765, label %2766, label %2794

; <label>:2766                                    ; preds = %2764
  %2767 = call float @dx.op.unary.f32(i32 24, float %2442)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %2443)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %2444)  ; Sqrt(value)
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fadd fast float %2768, -5.000000e-01
  %2772 = fadd fast float %2769, -5.000000e-01
  %2773 = fmul fast float %2770, %2719
  %2774 = fmul fast float %2771, %2719
  %2775 = fmul fast float %2772, %2719
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fmul fast float %2776, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2706
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2706
  %2784 = fmul fast float %2777, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2707
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2707
  %2789 = fmul fast float %2778, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2708
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2708
  br label %2794

; <label>:2794                                    ; preds = %2766, %2764, %2751, %2721, %2705
  %2795 = phi float [ %2706, %2705 ], [ %2783, %2766 ], [ %2706, %2764 ], [ %2761, %2751 ], [ %2731, %2721 ]
  %2796 = phi float [ %2707, %2705 ], [ %2788, %2766 ], [ %2707, %2764 ], [ %2762, %2751 ], [ %2732, %2721 ]
  %2797 = phi float [ %2708, %2705 ], [ %2793, %2766 ], [ %2708, %2764 ], [ %2763, %2751 ], [ %2733, %2721 ]
  %2798 = phi float [ %2709, %2705 ], [ %2709, %2766 ], [ %2709, %2764 ], [ %2709, %2751 ], [ %2743, %2721 ]
  %2799 = phi float [ %2710, %2705 ], [ %2710, %2766 ], [ %2710, %2764 ], [ %2710, %2751 ], [ %2744, %2721 ]
  %2800 = phi float [ %2711, %2705 ], [ %2711, %2766 ], [ %2711, %2764 ], [ %2711, %2751 ], [ %2745, %2721 ]
  %2801 = phi float [ %2035, %2705 ], [ %2035, %2766 ], [ %2035, %2764 ], [ %2035, %2751 ], [ %2736, %2721 ]
  %2802 = phi float [ %2039, %2705 ], [ %2039, %2766 ], [ %2039, %2764 ], [ %2039, %2751 ], [ %2748, %2721 ]
  %2803 = and i32 %2713, 12
  %2804 = icmp eq i32 %2803, 12
  br i1 %2804, label %2911, label %2805

; <label>:2805                                    ; preds = %2794
  %2806 = and i32 %2713, 2097184
  %2807 = icmp eq i32 %2806, 2097184
  %2808 = select i1 %2807, float %2222, float 0.000000e+00
  %2809 = and i32 %2713, 4194336
  %2810 = icmp eq i32 %2809, 4194336
  %2811 = select i1 %2810, float %2222, float 0.000000e+00
  %2812 = and i32 %2713, 8388640
  %2813 = icmp eq i32 %2812, 8388640
  %2814 = select i1 %2813, float %2222, float 0.000000e+00
  %2815 = and i32 %2713, 1024
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2222, float 0.000000e+00
  %2818 = and i32 %2713, 2048
  %2819 = icmp ne i32 %2818, 0
  %2820 = select i1 %2819, float %2222, float 0.000000e+00
  %2821 = icmp eq i32 %2803, 0
  br i1 %2821, label %2822, label %2847

; <label>:2822                                    ; preds = %2805
  %2823 = fsub fast float %2523, %2024
  %2824 = fsub fast float %2524, %2025
  %2825 = fmul fast float %2808, %2823
  %2826 = fmul fast float %2808, %2824
  %2827 = fadd fast float %2825, %2024
  %2828 = fadd fast float %2826, %2025
  %2829 = fsub fast float %2525, %2037
  %2830 = fmul fast float %2811, %2829
  %2831 = fadd fast float %2830, %2037
  %2832 = fsub fast float %2522, %2036
  %2833 = fmul fast float %2814, %2832
  %2834 = fadd fast float %2833, %2036
  %2835 = fsub fast float %2628, %2032
  %2836 = fsub fast float %2629, %2033
  %2837 = fsub fast float %2630, %2034
  %2838 = fmul fast float %2817, %2835
  %2839 = fmul fast float %2817, %2836
  %2840 = fmul fast float %2817, %2837
  %2841 = fadd fast float %2838, %2032
  %2842 = fadd fast float %2839, %2033
  %2843 = fadd fast float %2840, %2034
  %2844 = fsub fast float %2656, %2038
  %2845 = fmul fast float %2820, %2844
  %2846 = fadd fast float %2845, %2038
  br label %2911

; <label>:2847                                    ; preds = %2805
  %2848 = icmp eq i32 %2803, 4
  br i1 %2848, label %2849, label %2889

; <label>:2849                                    ; preds = %2847
  %2850 = fmul fast float %2808, %2523
  %2851 = fmul fast float %2808, %2524
  %2852 = fadd fast float %2850, %2024
  %2853 = fadd fast float %2851, %2025
  %2854 = call float @dx.op.binary.f32(i32 36, float %2037, float %2525)  ; FMin(a,b)
  %2855 = fsub fast float %2854, %2037
  %2856 = fmul fast float %2855, %2811
  %2857 = fadd fast float %2856, %2037
  %2858 = fadd fast float %2522, %2036
  %2859 = fmul fast float %2858, 0x3FF337FAE0000000
  %2860 = fmul fast float %2036, %2036
  %2861 = fmul fast float %2522, %2522
  %2862 = fadd fast float %2861, %2860
  %2863 = fmul fast float %2862, 0x3FE5152B00000000
  %2864 = fmul fast float %2036, 0xBFCC1F85E0000000
  %2865 = fmul fast float %2864, %2522
  %2866 = fadd fast float %2865, 0xBFE1363700000000
  %2867 = fadd fast float %2866, %2859
  %2868 = fsub fast float %2867, %2863
  %2869 = fmul fast float %2858, 0x3FBA6F0D00000000
  %2870 = fmul fast float %2862, 0x3FD0432880000000
  %2871 = fmul fast float %2036, 0xBFEF110800000000
  %2872 = fmul fast float %2871, %2522
  %2873 = fadd fast float %2872, 1.000000e+00
  %2874 = fsub fast float %2873, %2869
  %2875 = fadd fast float %2874, %2870
  %2876 = fdiv fast float %2868, %2875
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = fsub fast float %2877, %2036
  %2879 = fmul fast float %2878, %2814
  %2880 = fadd fast float %2879, %2036
  %2881 = fmul fast float %2817, %2628
  %2882 = fmul fast float %2817, %2629
  %2883 = fmul fast float %2817, %2630
  %2884 = fadd fast float %2881, %2032
  %2885 = fadd fast float %2882, %2033
  %2886 = fadd fast float %2883, %2034
  %2887 = fmul fast float %2820, %2656
  %2888 = fadd fast float %2887, %2038
  br label %2911

; <label>:2889                                    ; preds = %2847
  %2890 = icmp eq i32 %2803, 8
  br i1 %2890, label %2891, label %2911

; <label>:2891                                    ; preds = %2889
  %2892 = fmul fast float %2808, %2523
  %2893 = fmul fast float %2808, %2524
  %2894 = fadd fast float %2892, %2024
  %2895 = fadd fast float %2893, %2025
  %2896 = call float @dx.op.binary.f32(i32 36, float %2037, float %2525)  ; FMin(a,b)
  %2897 = fsub fast float %2896, %2037
  %2898 = fmul fast float %2897, %2811
  %2899 = fadd fast float %2898, %2037
  %2900 = fsub fast float %2522, %2036
  %2901 = fmul fast float %2814, %2900
  %2902 = fadd fast float %2901, %2036
  %2903 = fmul fast float %2817, %2628
  %2904 = fmul fast float %2817, %2629
  %2905 = fmul fast float %2817, %2630
  %2906 = fadd fast float %2903, %2032
  %2907 = fadd fast float %2904, %2033
  %2908 = fadd fast float %2905, %2034
  %2909 = fmul fast float %2820, %2656
  %2910 = fadd fast float %2909, %2038
  br label %2911

; <label>:2911                                    ; preds = %2891, %2889, %2849, %2822, %2794, %2221, %2040, %2023
  %2912 = phi float [ %2024, %2794 ], [ %2024, %2221 ], [ %2024, %2023 ], [ %2894, %2891 ], [ %2024, %2889 ], [ %2852, %2849 ], [ %2827, %2822 ], [ %2024, %2040 ]
  %2913 = phi float [ %2025, %2794 ], [ %2025, %2221 ], [ %2025, %2023 ], [ %2895, %2891 ], [ %2025, %2889 ], [ %2853, %2849 ], [ %2828, %2822 ], [ %2025, %2040 ]
  %2914 = phi float [ %2795, %2794 ], [ %2026, %2221 ], [ %2026, %2023 ], [ %2795, %2891 ], [ %2795, %2889 ], [ %2795, %2849 ], [ %2795, %2822 ], [ %2026, %2040 ]
  %2915 = phi float [ %2796, %2794 ], [ %2027, %2221 ], [ %2027, %2023 ], [ %2796, %2891 ], [ %2796, %2889 ], [ %2796, %2849 ], [ %2796, %2822 ], [ %2027, %2040 ]
  %2916 = phi float [ %2797, %2794 ], [ %2028, %2221 ], [ %2028, %2023 ], [ %2797, %2891 ], [ %2797, %2889 ], [ %2797, %2849 ], [ %2797, %2822 ], [ %2028, %2040 ]
  %2917 = phi float [ %2798, %2794 ], [ %2029, %2221 ], [ %2029, %2023 ], [ %2798, %2891 ], [ %2798, %2889 ], [ %2798, %2849 ], [ %2798, %2822 ], [ %2029, %2040 ]
  %2918 = phi float [ %2799, %2794 ], [ %2030, %2221 ], [ %2030, %2023 ], [ %2799, %2891 ], [ %2799, %2889 ], [ %2799, %2849 ], [ %2799, %2822 ], [ %2030, %2040 ]
  %2919 = phi float [ %2800, %2794 ], [ %2031, %2221 ], [ %2031, %2023 ], [ %2800, %2891 ], [ %2800, %2889 ], [ %2800, %2849 ], [ %2800, %2822 ], [ %2031, %2040 ]
  %2920 = phi float [ %2032, %2794 ], [ %2032, %2221 ], [ %2032, %2023 ], [ %2906, %2891 ], [ %2032, %2889 ], [ %2884, %2849 ], [ %2841, %2822 ], [ %2032, %2040 ]
  %2921 = phi float [ %2033, %2794 ], [ %2033, %2221 ], [ %2033, %2023 ], [ %2907, %2891 ], [ %2033, %2889 ], [ %2885, %2849 ], [ %2842, %2822 ], [ %2033, %2040 ]
  %2922 = phi float [ %2034, %2794 ], [ %2034, %2221 ], [ %2034, %2023 ], [ %2908, %2891 ], [ %2034, %2889 ], [ %2886, %2849 ], [ %2843, %2822 ], [ %2034, %2040 ]
  %2923 = phi float [ %2801, %2794 ], [ %2035, %2221 ], [ %2035, %2023 ], [ %2801, %2891 ], [ %2801, %2889 ], [ %2801, %2849 ], [ %2801, %2822 ], [ %2035, %2040 ]
  %2924 = phi float [ %2036, %2794 ], [ %2036, %2221 ], [ %2036, %2023 ], [ %2902, %2891 ], [ %2036, %2889 ], [ %2880, %2849 ], [ %2834, %2822 ], [ %2036, %2040 ]
  %2925 = phi float [ %2037, %2794 ], [ %2037, %2221 ], [ %2037, %2023 ], [ %2899, %2891 ], [ %2037, %2889 ], [ %2857, %2849 ], [ %2831, %2822 ], [ %2037, %2040 ]
  %2926 = phi float [ %2038, %2794 ], [ %2038, %2221 ], [ %2038, %2023 ], [ %2910, %2891 ], [ %2038, %2889 ], [ %2888, %2849 ], [ %2846, %2822 ], [ %2038, %2040 ]
  %2927 = phi float [ %2802, %2794 ], [ %2039, %2221 ], [ %2039, %2023 ], [ %2802, %2891 ], [ %2802, %2889 ], [ %2802, %2849 ], [ %2802, %2822 ], [ %2039, %2040 ]
  br i1 %453, label %3799, label %2928

; <label>:2928                                    ; preds = %2911
  %2929 = icmp ult i32 %507, 4
  %2930 = add i32 %55, 72
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = add i32 %55, 76
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = or i32 %2935, %2932
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %3799, label %2938

; <label>:2938                                    ; preds = %2928
  %2939 = and i32 %2932, 262144
  %2940 = icmp ne i32 %2939, 0
  %2941 = select i1 %2940, float %61, float 1.000000e+00
  %2942 = select i1 %2940, float %62, float 0.000000e+00
  %2943 = select i1 %2940, float %63, float 0.000000e+00
  %2944 = select i1 %2940, float %64, float 1.000000e+00
  %2945 = select i1 %2940, float %65, float %88
  %2946 = select i1 %2940, float %66, float %89
  %2947 = add i32 %55, 332
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = lshr i32 %2949, 16
  %2951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2950)  ; LegacyF16ToF32(value)
  %2952 = fmul fast float %2951, 0x3F50624DE0000000
  %2953 = add i32 %55, 136
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 16
  %2957 = and i32 %2956, 255
  %2958 = lshr i32 %2955, 24
  %2959 = add i32 %55, 340
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = lshr i32 %2961, 16
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = add i32 %55, 80
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = lshr i32 %2968, 22
  %2970 = shl nuw nsw i32 %2969, 5
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = shl i32 %2968, 4
  %2973 = and i32 %2972, 32752
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = lshr i32 %2968, 7
  %2976 = and i32 %2975, 32752
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2979 = extractvalue %dx.types.CBufRet.f32 %2978, 3
  %2980 = fmul fast float %2979, 1.000000e+03
  %2981 = fmul fast float %443, %2980
  %2982 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2983 = fadd fast float %2982, %433
  %2984 = fmul fast float %444, %2980
  %2985 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2986 = fadd fast float %2985, %435
  %2987 = fmul fast float %2952, %2980
  %2988 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2989 = fmul fast float %2988, 0x401921FB60000000
  %2990 = fadd fast float %2989, %2971
  %2991 = call float @dx.op.unary.f32(i32 13, float %2990)  ; Sin(value)
  %2992 = call float @dx.op.unary.f32(i32 12, float %2990)  ; Cos(value)
  %2993 = fsub fast float -0.000000e+00, %2991
  %2994 = fadd fast float %2945, -5.000000e-01
  %2995 = fadd fast float %2946, -5.000000e-01
  %2996 = fmul fast float %2963, %2994
  %2997 = fmul fast float %2965, %2995
  %2998 = fadd fast float %2996, 5.000000e-01
  %2999 = fadd fast float %2997, 5.000000e-01
  %3000 = fmul fast float %2974, %2998
  %3001 = fmul fast float %2977, %2999
  %3002 = fmul fast float %2992, %3000
  %3003 = call float @dx.op.tertiary.f32(i32 46, float %2993, float %3001, float %3002)  ; FMad(a,b,c)
  %3004 = fmul fast float %2991, %3000
  %3005 = call float @dx.op.tertiary.f32(i32 46, float %2992, float %3001, float %3004)  ; FMad(a,b,c)
  %3006 = fadd fast float %2983, %3003
  %3007 = fadd fast float %2986, %3005
  %3008 = icmp ugt i32 %2957, 1
  %3009 = icmp ugt i32 %2955, 33554431
  %3010 = or i1 %3009, %3008
  br i1 %3010, label %3011, label %3036

; <label>:3011                                    ; preds = %2938
  %3012 = add i32 %55, 276
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = lshr i32 %3014, 16
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = fmul fast float %2979, %3016
  %3018 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3019 = mul nuw nsw i32 %2957, %2958
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3018, %3020
  %3022 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3023 = fptoui float %3022 to i32
  %3024 = urem i32 %3023, %2957
  %3025 = udiv i32 %3023, %2958
  %3026 = call float @dx.op.unary.f32(i32 22, float %3006)  ; Frc(value)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3028 = uitofp i32 %3024 to float
  %3029 = uitofp i32 %3025 to float
  %3030 = fadd fast float %3026, %3028
  %3031 = fadd fast float %3027, %3029
  %3032 = uitofp i32 %2957 to float
  %3033 = uitofp i32 %2958 to float
  %3034 = fdiv fast float %3030, %3032
  %3035 = fdiv fast float %3031, %3033
  br label %3036

; <label>:3036                                    ; preds = %3011, %2938
  %3037 = phi float [ %3034, %3011 ], [ %3006, %2938 ]
  %3038 = phi float [ %3035, %3011 ], [ %3007, %2938 ]
  %3039 = and i32 %2932, 256
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3087, label %3041

; <label>:3041                                    ; preds = %3036
  %3042 = add i32 %55, 452
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = add i32 %3044, 0
  %3046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3046, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = add i32 %55, 148
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = shl i32 %3051, 4
  %3053 = and i32 %3052, 32752
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = lshr i32 %3051, 7
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fsub fast float 1.000000e+00, %502
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3060 = bitcast float %502 to i32
  %3061 = sitofp i32 %3060 to float
  %3062 = fadd fast float %3061, 0xC1CFBF8940000000
  %3063 = fmul fast float %3057, %3062
  %3064 = fadd fast float %3063, 0x41CFBF8940000000
  %3065 = fptosi float %3064 to i32
  %3066 = bitcast i32 %3065 to float
  %3067 = bitcast float %3059 to i32
  %3068 = sitofp i32 %3067 to float
  %3069 = fadd fast float %3068, 0xC1CFBF8940000000
  %3070 = fmul fast float %3069, %3057
  %3071 = fadd fast float %3070, 0x41CFBF8940000000
  %3072 = fptosi float %3071 to i32
  %3073 = bitcast i32 %3072 to float
  %3074 = fmul fast float %3066, %3054
  %3075 = fmul fast float %3073, %3054
  %3076 = fsub fast float %3059, %3074
  %3077 = fadd fast float %3075, %3059
  %3078 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3080 = fsub fast float %3048, %3078
  %3081 = fsub fast float %3079, %3078
  %3082 = bitcast float %3081 to i32
  %3083 = sub nsw i32 2129859010, %3082
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3084, %3080
  %3086 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  br label %3087

; <label>:3087                                    ; preds = %3041, %3036
  %3088 = phi float [ %3086, %3041 ], [ %502, %3036 ]
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 128
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3109, label %3093

; <label>:3093                                    ; preds = %3087
  %3094 = add i32 %55, 436
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3098, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 524288
  %3104 = icmp ne i32 %3103, 0
  %3105 = fcmp fast ogt float %3100, 0x3FE0101020000000
  %3106 = select i1 %3105, float 1.000000e+00, float 0.000000e+00
  %3107 = select i1 %3104, float %3106, float %3100
  %3108 = fmul fast float %3107, %3088
  br label %3109

; <label>:3109                                    ; preds = %3093, %3087
  %3110 = phi float [ %3108, %3093 ], [ %3088, %3087 ]
  %3111 = fcmp fast ult float %3110, 0x3F70101020000000
  br i1 %3111, label %3799, label %3112

; <label>:3112                                    ; preds = %3109
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 16
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3315, label %3117

; <label>:3117                                    ; preds = %3112
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %55, 388
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %3122, 0
  %3124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3124, %dx.types.Handle %102, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = extractvalue %dx.types.ResRet.f32 %3125, 1
  %3128 = extractvalue %dx.types.ResRet.f32 %3125, 2
  %3129 = extractvalue %dx.types.ResRet.f32 %3125, 3
  %3130 = and i32 %3119, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = lshr i32 %3119, 8
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fmul fast float %3129, %3131
  %3136 = fadd fast float %3135, %3134
  %3137 = fmul fast float %3136, 0x3F70101000000000
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 512
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3150, label %3142

; <label>:3142                                    ; preds = %3117
  %3143 = add i32 %55, 472
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %3145, 0
  %3147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3147, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  br label %3150

; <label>:3150                                    ; preds = %3142, %3117
  %3151 = phi float [ %3149, %3142 ], [ 1.000000e+00, %3117 ]
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 33554432
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3262, label %3156

; <label>:3156                                    ; preds = %3150
  %3157 = add i32 %55, 272
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 65535
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = lshr i32 %3159, 16
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = add i32 %55, 276
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 65535
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = lshr i32 %3170, 24
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = and i32 %3170, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = lshr i32 %3170, 8
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = lshr i32 %3170, 16
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = add i32 %55, 268
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = lshr i32 %3187, 24
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = and i32 %3187, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3187, 8
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = lshr i32 %3187, 16
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = bitcast float %3126 to i32
  %3203 = ashr i32 %3202, 1
  %3204 = sub nsw i32 1597463174, %3203
  %3205 = bitcast i32 %3204 to float
  %3206 = fmul fast float %3126, 5.000000e-01
  %3207 = fmul fast float %3205, %3205
  %3208 = fmul fast float %3207, %3206
  %3209 = fsub fast float 1.500000e+00, %3208
  %3210 = fmul fast float %3205, %3126
  %3211 = fmul fast float %3210, %3209
  %3212 = bitcast float %3127 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3127, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3127
  %3221 = fmul fast float %3220, %3219
  %3222 = bitcast float %3128 to i32
  %3223 = ashr i32 %3222, 1
  %3224 = sub nsw i32 1597463174, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3128, 5.000000e-01
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float 1.500000e+00, %3228
  %3230 = fmul fast float %3225, %3128
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float %3211, %3193
  %3233 = fsub fast float %3221, %3197
  %3234 = fsub fast float %3231, %3201
  %3235 = fmul fast float %3232, %3161
  %3236 = fmul fast float %3233, %3163
  %3237 = fmul fast float %3234, %3168
  %3238 = fadd fast float %3235, %3176
  %3239 = fadd fast float %3236, %3180
  %3240 = fadd fast float %3237, %3184
  %3241 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3242 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = fmul fast float %3241, %3241
  %3245 = fmul fast float %3242, %3242
  %3246 = fmul fast float %3243, %3243
  %3247 = fsub fast float %3244, %3126
  %3248 = fsub fast float %3245, %3127
  %3249 = fsub fast float %3246, %3128
  %3250 = fmul fast float %3247, %3151
  %3251 = fmul fast float %3248, %3151
  %3252 = fmul fast float %3249, %3151
  %3253 = fadd fast float %3250, %3126
  %3254 = fadd fast float %3251, %3127
  %3255 = fadd fast float %3252, %3128
  %3256 = fadd fast float %3173, %3137
  %3257 = fsub fast float %3256, %3190
  %3258 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3259 = fsub fast float %3258, %3137
  %3260 = fmul fast float %3259, %3151
  %3261 = fadd fast float %3260, %3137
  br label %3315

; <label>:3262                                    ; preds = %3150
  %3263 = and i32 %3153, 134217728
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3299, label %3265

; <label>:3265                                    ; preds = %3262
  %3266 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3267 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3268 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %3269 = fadd fast float %3266, -5.000000e-01
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fmul fast float %3269, %3151
  %3273 = fmul fast float %3270, %3151
  %3274 = fmul fast float %3271, %3151
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3281 = fmul fast float %3275, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3278
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3278
  %3286 = fmul fast float %3276, 2.000000e+00
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %3287, %3279
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3279
  %3291 = fmul fast float %3277, 2.000000e+00
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %3292, %3280
  %3294 = fadd fast float %3293, %3291
  %3295 = fmul fast float %3294, %3280
  %3296 = fmul fast float %3285, %3285
  %3297 = fmul fast float %3290, %3290
  %3298 = fmul fast float %3295, %3295
  br label %3315

; <label>:3299                                    ; preds = %3262
  %3300 = fmul fast float %420, %420
  %3301 = fmul fast float %424, %424
  %3302 = fmul fast float %428, %428
  %3303 = fadd fast float %3300, -1.000000e+00
  %3304 = fadd fast float %3301, -1.000000e+00
  %3305 = fadd fast float %3302, -1.000000e+00
  %3306 = fmul fast float %3151, %3303
  %3307 = fmul fast float %3151, %3304
  %3308 = fmul fast float %3151, %3305
  %3309 = fadd fast float %3306, 1.000000e+00
  %3310 = fadd fast float %3307, 1.000000e+00
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fmul fast float %3309, %3126
  %3313 = fmul fast float %3310, %3127
  %3314 = fmul fast float %3311, %3128
  br label %3315

; <label>:3315                                    ; preds = %3299, %3265, %3156, %3112
  %3316 = phi float [ %3261, %3156 ], [ %3137, %3265 ], [ %3137, %3299 ], [ 0x3FA23C0BE0000000, %3112 ]
  %3317 = phi float [ %3253, %3156 ], [ %3296, %3265 ], [ %3312, %3299 ], [ 1.000000e+00, %3112 ]
  %3318 = phi float [ %3254, %3156 ], [ %3297, %3265 ], [ %3313, %3299 ], [ 1.000000e+00, %3112 ]
  %3319 = phi float [ %3255, %3156 ], [ %3298, %3265 ], [ %3314, %3299 ], [ 1.000000e+00, %3112 ]
  %3320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.i32 %3320, 1
  %3322 = and i32 %3321, 1
  %3323 = icmp ne i32 %3322, 0
  %3324 = add i32 %55, 356
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 32
  %3328 = icmp ne i32 %3327, 0
  %3329 = and i1 %3323, %3328
  %3330 = select i1 %3329, float 1.000000e+00, float %3317
  %3331 = select i1 %3329, float 0x3FD3333340000000, float %3318
  %3332 = select i1 %3329, float 0x3FD3333340000000, float %3319
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 32
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3409, label %3337

; <label>:3337                                    ; preds = %3315
  %3338 = add i32 %55, 140
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %55, 404
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = add i32 %3343, 0
  %3345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3345, %dx.types.Handle %102, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.ResRet.f32 %3346, 3
  %3351 = and i32 %3340, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = lshr i32 %3340, 8
  %3354 = and i32 %3353, 255
  %3355 = uitofp i32 %3354 to float
  %3356 = lshr i32 %3340, 16
  %3357 = and i32 %3356, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3358, 0x3F70101000000000
  %3360 = fmul fast float %3347, %3352
  %3361 = fadd fast float %3360, %3355
  %3362 = fmul fast float %3361, 0x3F70101000000000
  %3363 = fadd fast float %3348, -5.000000e-01
  %3364 = fadd fast float %3350, -5.000000e-01
  %3365 = fmul fast float %3363, %3359
  %3366 = fmul fast float %3364, %3359
  %3367 = fadd fast float %3365, 5.000000e-01
  %3368 = fadd fast float %3366, 5.000000e-01
  %3369 = fmul fast float %3367, 2.000000e+00
  %3370 = fadd fast float %3369, -1.000000e+00
  %3371 = fmul fast float %3368, 2.000000e+00
  %3372 = fadd fast float %3371, -1.000000e+00
  %3373 = fadd fast float %3370, %3372
  %3374 = fmul fast float %3373, 5.000000e-01
  %3375 = fsub fast float %3370, %3372
  %3376 = fmul fast float %3375, 5.000000e-01
  %3377 = call float @dx.op.unary.f32(i32 6, float %3374)  ; FAbs(value)
  %3378 = fsub fast float 1.000000e+00, %3377
  %3379 = call float @dx.op.unary.f32(i32 6, float %3376)  ; FAbs(value)
  %3380 = fsub fast float %3378, %3379
  %3381 = call float @dx.op.dot3.f32(i32 55, float %3374, float %3376, float %3380, float %3374, float %3376, float %3380)  ; Dot3(ax,ay,az,bx,by,bz)
  %3382 = call float @dx.op.unary.f32(i32 25, float %3381)  ; Rsqrt(value)
  %3383 = fmul fast float %3374, %3382
  %3384 = fmul fast float %3376, %3382
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 67108864
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3405, label %3389

; <label>:3389                                    ; preds = %3337
  %3390 = add i32 %55, 328
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 65535
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = lshr i32 %3392, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = fsub fast float %3362, %3400
  %3402 = fmul fast float %3401, %3394
  %3403 = fadd fast float %3402, %3398
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  br label %3405

; <label>:3405                                    ; preds = %3389, %3337
  %3406 = phi float [ %3404, %3389 ], [ %3362, %3337 ]
  %3407 = call float @dx.op.dot2.f32(i32 54, float %3383, float %3384, float %2941, float %2942)  ; Dot2(ax,ay,bx,by)
  %3408 = call float @dx.op.dot2.f32(i32 54, float %3383, float %3384, float %2943, float %2944)  ; Dot2(ax,ay,bx,by)
  br label %3409

; <label>:3409                                    ; preds = %3405, %3315
  %3410 = phi float [ %3406, %3405 ], [ 0x3FD6666660000000, %3315 ]
  %3411 = phi float [ %3407, %3405 ], [ 0.000000e+00, %3315 ]
  %3412 = phi float [ %3408, %3405 ], [ 0.000000e+00, %3315 ]
  %3413 = phi float [ %3349, %3405 ], [ 1.000000e+00, %3315 ]
  %3414 = add i32 %55, 208
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = lshr i32 %3416, 22
  %3418 = shl nuw nsw i32 %3417, 5
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 64
  %3423 = icmp eq i32 %3422, 0
  br i1 %3423, label %3457, label %3424

; <label>:3424                                    ; preds = %3409
  %3425 = add i32 %55, 420
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = add i32 %3427, 0
  %3429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 131072
  %3433 = icmp eq i32 %3432, 0
  %3434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3429, %dx.types.Handle %102, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = fmul fast float %3435, %408
  %3439 = fmul fast float %3436, %411
  %3440 = fmul fast float %3437, %414
  br i1 %3433, label %3447, label %3441

; <label>:3441                                    ; preds = %3424
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = fmul fast float %3443, %3438
  %3445 = fmul fast float %3443, %3439
  %3446 = fmul fast float %3443, %3440
  br label %3447

; <label>:3447                                    ; preds = %3441, %3424
  %3448 = phi float [ %3444, %3441 ], [ %3438, %3424 ]
  %3449 = phi float [ %3445, %3441 ], [ %3439, %3424 ]
  %3450 = phi float [ %3446, %3441 ], [ %3440, %3424 ]
  %3451 = fmul fast float %3448, %3419
  %3452 = select i1 %265, float %3451, float %3448
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3449, float %3450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = select i1 %265, float 0.000000e+00, float %3448
  %3455 = select i1 %265, float %3453, float %3449
  %3456 = select i1 %265, float 0.000000e+00, float %3450
  br label %3457

; <label>:3457                                    ; preds = %3447, %3409
  %3458 = phi float [ %3454, %3447 ], [ 0.000000e+00, %3409 ]
  %3459 = phi float [ %3455, %3447 ], [ 0.000000e+00, %3409 ]
  %3460 = phi float [ %3456, %3447 ], [ 0.000000e+00, %3409 ]
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 1024
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3495, label %3465

; <label>:3465                                    ; preds = %3457
  %3466 = add i32 %55, 200
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 255
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3470, 0x3F70101020000000
  %3472 = lshr i32 %3468, 8
  %3473 = and i32 %3472, 255
  %3474 = uitofp i32 %3473 to float
  %3475 = fmul fast float %3474, 0x3F70101020000000
  %3476 = lshr i32 %3468, 16
  %3477 = and i32 %3476, 255
  %3478 = uitofp i32 %3477 to float
  %3479 = fmul fast float %3478, 0x3F70101020000000
  %3480 = fmul fast float %3471, %3471
  %3481 = fmul fast float %3475, %3475
  %3482 = fmul fast float %3479, %3479
  %3483 = add i32 %55, 488
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = add i32 %3485, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3487, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = fmul fast float %3480, %3489
  %3493 = fmul fast float %3481, %3490
  %3494 = fmul fast float %3482, %3491
  br label %3495

; <label>:3495                                    ; preds = %3465, %3457
  %3496 = phi float [ %3492, %3465 ], [ 0.000000e+00, %3457 ]
  %3497 = phi float [ %3493, %3465 ], [ 0.000000e+00, %3457 ]
  %3498 = phi float [ %3494, %3465 ], [ 0.000000e+00, %3457 ]
  %3499 = fcmp fast ogt float %3496, 0.000000e+00
  %3500 = fcmp fast ogt float %3497, 0.000000e+00
  %3501 = fcmp fast ogt float %3498, 0.000000e+00
  %3502 = call float @dx.op.unary.f32(i32 23, float %3496)  ; Log(value)
  %3503 = call float @dx.op.unary.f32(i32 23, float %3497)  ; Log(value)
  %3504 = call float @dx.op.unary.f32(i32 23, float %3498)  ; Log(value)
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = lshr i32 %3506, 7
  %3508 = and i32 %3507, 32752
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = fmul fast float %3502, 0xBFE62E4300000000
  %3511 = fmul fast float %3510, %3509
  %3512 = fmul fast float %3503, 0xBFE62E4300000000
  %3513 = fmul fast float %3512, %3509
  %3514 = fmul fast float %3504, 0xBFE62E4300000000
  %3515 = fmul fast float %3514, %3509
  %3516 = select i1 %3499, float %3511, float 1.270000e+02
  %3517 = select i1 %3500, float %3513, float 1.270000e+02
  %3518 = select i1 %3501, float %3515, float 1.270000e+02
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 10240
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3543, label %3523

; <label>:3523                                    ; preds = %3495
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = and i32 %3525, 2048
  %3527 = icmp eq i32 %3526, 0
  br i1 %3527, label %3543, label %3528

; <label>:3528                                    ; preds = %3523
  %3529 = add i32 %55, 504
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = add i32 %3531, 0
  %3533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3533, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 3
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = shl i32 %3537, 4
  %3539 = and i32 %3538, 32752
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = fmul fast float %3540, %3535
  %3542 = call float @dx.op.binary.f32(i32 35, float %3541, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3543

; <label>:3543                                    ; preds = %3528, %3523, %3495
  %3544 = phi float [ %3542, %3528 ], [ 0x3F70101020000000, %3523 ], [ 0x3F70101020000000, %3495 ]
  %3545 = add i32 %55, 144
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = and i32 %3547, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = lshr i32 %3547, 8
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = fmul fast float %3552, %3553
  %3555 = fadd fast float %3554, %3549
  %3556 = fmul fast float %3555, 0x3F70101020000000
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  br i1 %2929, label %3558, label %3593

; <label>:3558                                    ; preds = %3543
  %3559 = fmul fast float %3544, 2.000000e+00
  %3560 = fcmp fast olt float %3516, 1.270000e+02
  %3561 = fcmp fast olt float %3517, 1.270000e+02
  %3562 = fcmp fast olt float %3518, 1.270000e+02
  %3563 = fmul fast float %3516, 0xBFF7154760000000
  %3564 = fmul fast float %3563, %3559
  %3565 = fmul fast float %3517, 0xBFF7154760000000
  %3566 = fmul fast float %3565, %3559
  %3567 = fmul fast float %3518, 0xBFF7154760000000
  %3568 = fmul fast float %3567, %3559
  %3569 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3570 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3571 = call float @dx.op.unary.f32(i32 21, float %3568)  ; Exp(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = fadd fast float %3572, -1.000000e+00
  %3576 = select i1 %3560, float %3575, float -1.000000e+00
  %3577 = fadd fast float %3573, -1.000000e+00
  %3578 = select i1 %3561, float %3577, float -1.000000e+00
  %3579 = fadd fast float %3574, -1.000000e+00
  %3580 = select i1 %3562, float %3579, float -1.000000e+00
  %3581 = fmul fast float %3576, %3110
  %3582 = fmul fast float %3578, %3110
  %3583 = fmul fast float %3580, %3110
  %3584 = fadd fast float %3581, 1.000000e+00
  %3585 = fadd fast float %3582, 1.000000e+00
  %3586 = fadd fast float %3583, 1.000000e+00
  %3587 = fmul fast float %3584, %2914
  %3588 = fmul fast float %3585, %2915
  %3589 = fmul fast float %3586, %2916
  %3590 = fmul fast float %3584, %2917
  %3591 = fmul fast float %3585, %2918
  %3592 = fmul fast float %3586, %2919
  br label %3593

; <label>:3593                                    ; preds = %3558, %3543
  %3594 = phi float [ %3587, %3558 ], [ %2914, %3543 ]
  %3595 = phi float [ %3588, %3558 ], [ %2915, %3543 ]
  %3596 = phi float [ %3589, %3558 ], [ %2916, %3543 ]
  %3597 = phi float [ %3590, %3558 ], [ %2917, %3543 ]
  %3598 = phi float [ %3591, %3558 ], [ %2918, %3543 ]
  %3599 = phi float [ %3592, %3558 ], [ %2919, %3543 ]
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = and i32 %3601, 3
  %3603 = icmp eq i32 %3602, 3
  br i1 %3603, label %3682, label %3604

; <label>:3604                                    ; preds = %3593
  %3605 = and i32 %3601, 16
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3110, float 0.000000e+00
  %3608 = icmp eq i32 %3602, 0
  br i1 %3608, label %3609, label %3637

; <label>:3609                                    ; preds = %3604
  %3610 = and i32 %3601, 64
  %3611 = icmp ne i32 %3610, 0
  %3612 = select i1 %3611, float %3110, float 0.000000e+00
  %3613 = fsub fast float %3330, %3594
  %3614 = fsub fast float %3331, %3595
  %3615 = fsub fast float %3332, %3596
  %3616 = fmul fast float %3607, %3613
  %3617 = fmul fast float %3607, %3614
  %3618 = fmul fast float %3607, %3615
  %3619 = fadd fast float %3616, %3594
  %3620 = fadd fast float %3617, %3595
  %3621 = fadd fast float %3618, %3596
  %3622 = fsub fast float %3316, %2923
  %3623 = fmul fast float %3607, %3622
  %3624 = fadd fast float %3623, %2923
  %3625 = fsub fast float %3458, %3597
  %3626 = fsub fast float %3459, %3598
  %3627 = fsub fast float %3460, %3599
  %3628 = fmul fast float %3612, %3625
  %3629 = fmul fast float %3612, %3626
  %3630 = fmul fast float %3612, %3627
  %3631 = fadd fast float %3628, %3597
  %3632 = fadd fast float %3629, %3598
  %3633 = fadd fast float %3630, %3599
  %3634 = fsub fast float %3557, %2927
  %3635 = fmul fast float %3607, %3634
  %3636 = fadd fast float %3635, %2927
  br label %3682

; <label>:3637                                    ; preds = %3604
  %3638 = icmp eq i32 %3602, 1
  br i1 %3638, label %3639, label %3652

; <label>:3639                                    ; preds = %3637
  %3640 = fadd fast float %3330, -1.000000e+00
  %3641 = fadd fast float %3331, -1.000000e+00
  %3642 = fadd fast float %3332, -1.000000e+00
  %3643 = fmul fast float %3607, %3640
  %3644 = fmul fast float %3607, %3641
  %3645 = fmul fast float %3607, %3642
  %3646 = fadd fast float %3643, 1.000000e+00
  %3647 = fadd fast float %3644, 1.000000e+00
  %3648 = fadd fast float %3645, 1.000000e+00
  %3649 = fmul fast float %3646, %3594
  %3650 = fmul fast float %3647, %3595
  %3651 = fmul fast float %3648, %3596
  br label %3682

; <label>:3652                                    ; preds = %3637
  %3653 = icmp eq i32 %3602, 2
  br i1 %3653, label %3654, label %3682

; <label>:3654                                    ; preds = %3652
  %3655 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3656 = call float @dx.op.unary.f32(i32 24, float %3331)  ; Sqrt(value)
  %3657 = call float @dx.op.unary.f32(i32 24, float %3332)  ; Sqrt(value)
  %3658 = fadd fast float %3655, -5.000000e-01
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fmul fast float %3658, %3607
  %3662 = fmul fast float %3659, %3607
  %3663 = fmul fast float %3660, %3607
  %3664 = fadd fast float %3661, 5.000000e-01
  %3665 = fadd fast float %3662, 5.000000e-01
  %3666 = fadd fast float %3663, 5.000000e-01
  %3667 = fmul fast float %3664, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3594
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3594
  %3672 = fmul fast float %3665, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3595
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3595
  %3677 = fmul fast float %3666, 2.000000e+00
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = fmul fast float %3678, %3596
  %3680 = fadd fast float %3679, %3677
  %3681 = fmul fast float %3680, %3596
  br label %3682

; <label>:3682                                    ; preds = %3654, %3652, %3639, %3609, %3593
  %3683 = phi float [ %3594, %3593 ], [ %3671, %3654 ], [ %3594, %3652 ], [ %3649, %3639 ], [ %3619, %3609 ]
  %3684 = phi float [ %3595, %3593 ], [ %3676, %3654 ], [ %3595, %3652 ], [ %3650, %3639 ], [ %3620, %3609 ]
  %3685 = phi float [ %3596, %3593 ], [ %3681, %3654 ], [ %3596, %3652 ], [ %3651, %3639 ], [ %3621, %3609 ]
  %3686 = phi float [ %3597, %3593 ], [ %3597, %3654 ], [ %3597, %3652 ], [ %3597, %3639 ], [ %3631, %3609 ]
  %3687 = phi float [ %3598, %3593 ], [ %3598, %3654 ], [ %3598, %3652 ], [ %3598, %3639 ], [ %3632, %3609 ]
  %3688 = phi float [ %3599, %3593 ], [ %3599, %3654 ], [ %3599, %3652 ], [ %3599, %3639 ], [ %3633, %3609 ]
  %3689 = phi float [ %2923, %3593 ], [ %2923, %3654 ], [ %2923, %3652 ], [ %2923, %3639 ], [ %3624, %3609 ]
  %3690 = phi float [ %2927, %3593 ], [ %2927, %3654 ], [ %2927, %3652 ], [ %2927, %3639 ], [ %3636, %3609 ]
  %3691 = and i32 %3601, 12
  %3692 = icmp eq i32 %3691, 12
  br i1 %3692, label %3799, label %3693

; <label>:3693                                    ; preds = %3682
  %3694 = and i32 %3601, 2097184
  %3695 = icmp eq i32 %3694, 2097184
  %3696 = select i1 %3695, float %3110, float 0.000000e+00
  %3697 = and i32 %3601, 4194336
  %3698 = icmp eq i32 %3697, 4194336
  %3699 = select i1 %3698, float %3110, float 0.000000e+00
  %3700 = and i32 %3601, 8388640
  %3701 = icmp eq i32 %3700, 8388640
  %3702 = select i1 %3701, float %3110, float 0.000000e+00
  %3703 = and i32 %3601, 1024
  %3704 = icmp ne i32 %3703, 0
  %3705 = select i1 %3704, float %3110, float 0.000000e+00
  %3706 = and i32 %3601, 2048
  %3707 = icmp ne i32 %3706, 0
  %3708 = select i1 %3707, float %3110, float 0.000000e+00
  %3709 = icmp eq i32 %3691, 0
  br i1 %3709, label %3710, label %3735

; <label>:3710                                    ; preds = %3693
  %3711 = fsub fast float %3411, %2912
  %3712 = fsub fast float %3412, %2913
  %3713 = fmul fast float %3696, %3711
  %3714 = fmul fast float %3696, %3712
  %3715 = fadd fast float %3713, %2912
  %3716 = fadd fast float %3714, %2913
  %3717 = fsub fast float %3413, %2925
  %3718 = fmul fast float %3699, %3717
  %3719 = fadd fast float %3718, %2925
  %3720 = fsub fast float %3410, %2924
  %3721 = fmul fast float %3702, %3720
  %3722 = fadd fast float %3721, %2924
  %3723 = fsub fast float %3516, %2920
  %3724 = fsub fast float %3517, %2921
  %3725 = fsub fast float %3518, %2922
  %3726 = fmul fast float %3705, %3723
  %3727 = fmul fast float %3705, %3724
  %3728 = fmul fast float %3705, %3725
  %3729 = fadd fast float %3726, %2920
  %3730 = fadd fast float %3727, %2921
  %3731 = fadd fast float %3728, %2922
  %3732 = fsub fast float %3544, %2926
  %3733 = fmul fast float %3708, %3732
  %3734 = fadd fast float %3733, %2926
  br label %3799

; <label>:3735                                    ; preds = %3693
  %3736 = icmp eq i32 %3691, 4
  br i1 %3736, label %3737, label %3777

; <label>:3737                                    ; preds = %3735
  %3738 = fmul fast float %3696, %3411
  %3739 = fmul fast float %3696, %3412
  %3740 = fadd fast float %3738, %2912
  %3741 = fadd fast float %3739, %2913
  %3742 = call float @dx.op.binary.f32(i32 36, float %2925, float %3413)  ; FMin(a,b)
  %3743 = fsub fast float %3742, %2925
  %3744 = fmul fast float %3743, %3699
  %3745 = fadd fast float %3744, %2925
  %3746 = fadd fast float %3410, %2924
  %3747 = fmul fast float %3746, 0x3FF337FAE0000000
  %3748 = fmul fast float %2924, %2924
  %3749 = fmul fast float %3410, %3410
  %3750 = fadd fast float %3749, %3748
  %3751 = fmul fast float %3750, 0x3FE5152B00000000
  %3752 = fmul fast float %2924, 0xBFCC1F85E0000000
  %3753 = fmul fast float %3752, %3410
  %3754 = fadd fast float %3753, 0xBFE1363700000000
  %3755 = fadd fast float %3754, %3747
  %3756 = fsub fast float %3755, %3751
  %3757 = fmul fast float %3746, 0x3FBA6F0D00000000
  %3758 = fmul fast float %3750, 0x3FD0432880000000
  %3759 = fmul fast float %2924, 0xBFEF110800000000
  %3760 = fmul fast float %3759, %3410
  %3761 = fadd fast float %3760, 1.000000e+00
  %3762 = fsub fast float %3761, %3757
  %3763 = fadd fast float %3762, %3758
  %3764 = fdiv fast float %3756, %3763
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fsub fast float %3765, %2924
  %3767 = fmul fast float %3766, %3702
  %3768 = fadd fast float %3767, %2924
  %3769 = fmul fast float %3705, %3516
  %3770 = fmul fast float %3705, %3517
  %3771 = fmul fast float %3705, %3518
  %3772 = fadd fast float %3769, %2920
  %3773 = fadd fast float %3770, %2921
  %3774 = fadd fast float %3771, %2922
  %3775 = fmul fast float %3708, %3544
  %3776 = fadd fast float %3775, %2926
  br label %3799

; <label>:3777                                    ; preds = %3735
  %3778 = icmp eq i32 %3691, 8
  br i1 %3778, label %3779, label %3799

; <label>:3779                                    ; preds = %3777
  %3780 = fmul fast float %3696, %3411
  %3781 = fmul fast float %3696, %3412
  %3782 = fadd fast float %3780, %2912
  %3783 = fadd fast float %3781, %2913
  %3784 = call float @dx.op.binary.f32(i32 36, float %2925, float %3413)  ; FMin(a,b)
  %3785 = fsub fast float %3784, %2925
  %3786 = fmul fast float %3785, %3699
  %3787 = fadd fast float %3786, %2925
  %3788 = fsub fast float %3410, %2924
  %3789 = fmul fast float %3702, %3788
  %3790 = fadd fast float %3789, %2924
  %3791 = fmul fast float %3705, %3516
  %3792 = fmul fast float %3705, %3517
  %3793 = fmul fast float %3705, %3518
  %3794 = fadd fast float %3791, %2920
  %3795 = fadd fast float %3792, %2921
  %3796 = fadd fast float %3793, %2922
  %3797 = fmul fast float %3708, %3544
  %3798 = fadd fast float %3797, %2926
  br label %3799

; <label>:3799                                    ; preds = %3779, %3777, %3737, %3710, %3682, %3109, %2928, %2911
  %3800 = phi float [ %2912, %3682 ], [ %2912, %3109 ], [ %2912, %2911 ], [ %2912, %2928 ], [ %3715, %3710 ], [ %3740, %3737 ], [ %2912, %3777 ], [ %3782, %3779 ]
  %3801 = phi float [ %2913, %3682 ], [ %2913, %3109 ], [ %2913, %2911 ], [ %2913, %2928 ], [ %3716, %3710 ], [ %3741, %3737 ], [ %2913, %3777 ], [ %3783, %3779 ]
  %3802 = phi float [ %3683, %3682 ], [ %2914, %3109 ], [ %2914, %2911 ], [ %2914, %2928 ], [ %3683, %3710 ], [ %3683, %3737 ], [ %3683, %3777 ], [ %3683, %3779 ]
  %3803 = phi float [ %3684, %3682 ], [ %2915, %3109 ], [ %2915, %2911 ], [ %2915, %2928 ], [ %3684, %3710 ], [ %3684, %3737 ], [ %3684, %3777 ], [ %3684, %3779 ]
  %3804 = phi float [ %3685, %3682 ], [ %2916, %3109 ], [ %2916, %2911 ], [ %2916, %2928 ], [ %3685, %3710 ], [ %3685, %3737 ], [ %3685, %3777 ], [ %3685, %3779 ]
  %3805 = phi float [ %3686, %3682 ], [ %2917, %3109 ], [ %2917, %2911 ], [ %2917, %2928 ], [ %3686, %3710 ], [ %3686, %3737 ], [ %3686, %3777 ], [ %3686, %3779 ]
  %3806 = phi float [ %3687, %3682 ], [ %2918, %3109 ], [ %2918, %2911 ], [ %2918, %2928 ], [ %3687, %3710 ], [ %3687, %3737 ], [ %3687, %3777 ], [ %3687, %3779 ]
  %3807 = phi float [ %3688, %3682 ], [ %2919, %3109 ], [ %2919, %2911 ], [ %2919, %2928 ], [ %3688, %3710 ], [ %3688, %3737 ], [ %3688, %3777 ], [ %3688, %3779 ]
  %3808 = phi float [ %2920, %3682 ], [ %2920, %3109 ], [ %2920, %2911 ], [ %2920, %2928 ], [ %3729, %3710 ], [ %3772, %3737 ], [ %2920, %3777 ], [ %3794, %3779 ]
  %3809 = phi float [ %2921, %3682 ], [ %2921, %3109 ], [ %2921, %2911 ], [ %2921, %2928 ], [ %3730, %3710 ], [ %3773, %3737 ], [ %2921, %3777 ], [ %3795, %3779 ]
  %3810 = phi float [ %2922, %3682 ], [ %2922, %3109 ], [ %2922, %2911 ], [ %2922, %2928 ], [ %3731, %3710 ], [ %3774, %3737 ], [ %2922, %3777 ], [ %3796, %3779 ]
  %3811 = phi float [ %3689, %3682 ], [ %2923, %3109 ], [ %2923, %2911 ], [ %2923, %2928 ], [ %3689, %3710 ], [ %3689, %3737 ], [ %3689, %3777 ], [ %3689, %3779 ]
  %3812 = phi float [ %2924, %3682 ], [ %2924, %3109 ], [ %2924, %2911 ], [ %2924, %2928 ], [ %3722, %3710 ], [ %3768, %3737 ], [ %2924, %3777 ], [ %3790, %3779 ]
  %3813 = phi float [ %2925, %3682 ], [ %2925, %3109 ], [ %2925, %2911 ], [ %2925, %2928 ], [ %3719, %3710 ], [ %3745, %3737 ], [ %2925, %3777 ], [ %3787, %3779 ]
  %3814 = phi float [ %2926, %3682 ], [ %2926, %3109 ], [ %2926, %2911 ], [ %2926, %2928 ], [ %3734, %3710 ], [ %3776, %3737 ], [ %2926, %3777 ], [ %3798, %3779 ]
  %3815 = phi float [ %3690, %3682 ], [ %2927, %3109 ], [ %2927, %2911 ], [ %2927, %2928 ], [ %3690, %3710 ], [ %3690, %3737 ], [ %3690, %3777 ], [ %3690, %3779 ]
  %3816 = add i32 %55, 360
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.i32 %3817, 1
  %3820 = bitcast i32 %3818 to float
  %3821 = bitcast i32 %3819 to float
  %3822 = fcmp fast oge float %3820, 0.000000e+00
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3825 = select i1 %3822, float %3820, float %3824
  %3826 = fadd fast float %3825, %207
  %3827 = fmul fast float %3821, %208
  %3828 = add i32 %55, 456
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = add i32 %3830, 0
  %3832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3832, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = fmul fast float %3827, %3834
  %3836 = fadd fast float %3826, %3835
  %3837 = and i32 %199, 65535
  %3838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3837)  ; LegacyF16ToF32(value)
  %3839 = lshr i32 %199, 16
  %3840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3839)  ; LegacyF16ToF32(value)
  %3841 = and i32 %200, 65535
  %3842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3841)  ; LegacyF16ToF32(value)
  %3843 = fmul fast float %3838, %3802
  %3844 = fmul fast float %3840, %3803
  %3845 = fmul fast float %3842, %3804
  %3846 = shl i32 %201, 4
  %3847 = and i32 %3846, 32752
  %3848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3847)  ; LegacyF16ToF32(value)
  %3849 = lshr i32 %201, 7
  %3850 = and i32 %3849, 32752
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = lshr i32 %201, 22
  %3853 = shl nuw nsw i32 %3852, 5
  %3854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3853)  ; LegacyF16ToF32(value)
  %3855 = and i32 %202, 65535
  %3856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3855)  ; LegacyF16ToF32(value)
  %3857 = fmul fast float %3848, %3805
  %3858 = fmul fast float %3857, %3856
  %3859 = fmul fast float %3851, %3806
  %3860 = fmul fast float %3859, %3856
  %3861 = fmul fast float %3854, %3807
  %3862 = fmul fast float %3861, %3856
  %3863 = call float @dx.op.dot2.f32(i32 54, float %3800, float %3801, float %3800, float %3801)  ; Dot2(ax,ay,bx,by)
  %3864 = fmul fast float %3863, 0x3FE3333340000000
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3801, float %3865, float %3800, float %3801, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3867, %3800
  %3869 = fmul fast float %3867, %3801
  %3870 = fmul fast float %3865, %3867
  %3871 = fmul fast float %3870, %113
  %3872 = fmul fast float %3870, %114
  %3873 = fmul fast float %3870, %115
  %3874 = fmul fast float %3868, %81
  %3875 = fmul fast float %3868, %82
  %3876 = fmul fast float %3868, %83
  %3877 = fadd fast float %3871, %3874
  %3878 = fadd fast float %3872, %3875
  %3879 = fadd fast float %3873, %3876
  %3880 = fmul fast float %125, %3869
  %3881 = fmul fast float %126, %3869
  %3882 = fmul fast float %127, %3869
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3883, %3887
  %3889 = fmul fast float %3884, %3887
  %3890 = fmul fast float %3885, %3887
  %3891 = icmp eq i32 %57, 65535
  br i1 %3891, label %4441, label %3892

; <label>:3892                                    ; preds = %3799
  %3893 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3894 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3895 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3896 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3897 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3898 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3899 = fadd fast float %3893, %58
  %3900 = fadd fast float %3894, %59
  %3901 = fadd fast float %3895, %60
  %3902 = fadd fast float %3896, %58
  %3903 = fadd fast float %3897, %59
  %3904 = fadd fast float %3898, %60
  %3905 = mul i32 %57, 48
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = add i32 %3905, 16
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = add i32 %3905, 32
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.ResRet.f32 %3916, 3
  %3921 = bitcast float %3920 to i32
  %3922 = fmul fast float %3907, %58
  %3923 = fmul fast float %3908, %59
  %3924 = fmul fast float %3909, %60
  %3925 = fsub fast float %3922, %3912
  %3926 = fsub fast float %3923, %3913
  %3927 = fsub fast float %3924, %3914
  %3928 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3930 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3931 = fmul fast float %3928, %3917
  %3932 = fmul fast float %3929, %3918
  %3933 = fmul fast float %3930, %3919
  %3934 = fadd fast float %3917, -1.000000e+00
  %3935 = fadd fast float %3918, -1.000000e+00
  %3936 = fadd fast float %3919, -1.000000e+00
  %3937 = call float @dx.op.unary.f32(i32 27, float %3931)  ; Round_ni(value)
  %3938 = call float @dx.op.unary.f32(i32 27, float %3932)  ; Round_ni(value)
  %3939 = call float @dx.op.unary.f32(i32 27, float %3933)  ; Round_ni(value)
  %3940 = call float @dx.op.binary.f32(i32 36, float %3937, float %3934)  ; FMin(a,b)
  %3941 = call float @dx.op.binary.f32(i32 36, float %3938, float %3935)  ; FMin(a,b)
  %3942 = call float @dx.op.binary.f32(i32 36, float %3939, float %3936)  ; FMin(a,b)
  %3943 = fmul fast float %3942, %3918
  %3944 = fadd fast float %3943, %3941
  %3945 = fmul fast float %3944, %3917
  %3946 = fadd fast float %3945, %3940
  %3947 = fptosi float %3946 to i32
  %3948 = add nsw i32 %3947, %3921
  %3949 = shl nsw i32 %3948, 2
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = lshr i32 %3951, 16
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %4406, label %3954

; <label>:3954                                    ; preds = %3892
  br label %3955

; <label>:3955                                    ; preds = %4080, %3954
  %3956 = phi i32 [ %3982, %4080 ], [ %3952, %3954 ]
  %3957 = phi float [ %4081, %4080 ], [ 0.000000e+00, %3954 ]
  %3958 = phi float [ %4082, %4080 ], [ %1147, %3954 ]
  %3959 = phi float [ %4083, %4080 ], [ %3836, %3954 ]
  %3960 = phi float [ %4084, %4080 ], [ %3815, %3954 ]
  %3961 = phi float [ %4085, %4080 ], [ %3808, %3954 ]
  %3962 = phi float [ %4086, %4080 ], [ %3809, %3954 ]
  %3963 = phi float [ %4087, %4080 ], [ %3810, %3954 ]
  %3964 = phi float [ %4088, %4080 ], [ 0.000000e+00, %3954 ]
  %3965 = phi float [ %4089, %4080 ], [ 0.000000e+00, %3954 ]
  %3966 = phi float [ %4090, %4080 ], [ %3858, %3954 ]
  %3967 = phi float [ %4091, %4080 ], [ %3860, %3954 ]
  %3968 = phi float [ %4092, %4080 ], [ %3862, %3954 ]
  %3969 = phi float [ %4093, %4080 ], [ %3888, %3954 ]
  %3970 = phi float [ %4094, %4080 ], [ %3889, %3954 ]
  %3971 = phi float [ %4095, %4080 ], [ %3890, %3954 ]
  %3972 = phi float [ %4096, %4080 ], [ %3813, %3954 ]
  %3973 = phi float [ %4097, %4080 ], [ %3812, %3954 ]
  %3974 = phi float [ %4098, %4080 ], [ 0.000000e+00, %3954 ]
  %3975 = phi float [ %4099, %4080 ], [ %3811, %3954 ]
  %3976 = phi float [ %4100, %4080 ], [ %3843, %3954 ]
  %3977 = phi float [ %4101, %4080 ], [ %3844, %3954 ]
  %3978 = phi float [ %4102, %4080 ], [ %3845, %3954 ]
  %3979 = shl nuw nsw i32 %3956, 2
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = lshr i32 %3981, 16
  %3983 = shl i32 %3981, 8
  %3984 = and i32 %3983, 16776960
  %3985 = or i32 %3984, 48
  %3986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.ResRet.f32 %3986, 1
  %3989 = extractvalue %dx.types.ResRet.f32 %3986, 2
  %3990 = or i32 %3984, 64
  %3991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.i32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.i32 %3991, 1
  %3994 = or i32 %3984, 80
  %3995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 3
  %3998 = or i32 %3984, 96
  %3999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.ResRet.f32 %3999, 1
  %4002 = extractvalue %dx.types.ResRet.f32 %3999, 2
  %4003 = extractvalue %dx.types.ResRet.f32 %3999, 3
  %4004 = or i32 %3984, 112
  %4005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4007 = or i32 %3984, 128
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4013 = or i32 %3984, 144
  %4014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4018 = extractvalue %dx.types.ResRet.f32 %4014, 3
  %4019 = or i32 %3984, 160
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = extractvalue %dx.types.ResRet.f32 %4020, 3
  %4025 = or i32 %3984, 192
  %4026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.i32 %4026, 0
  %4028 = or i32 %3984, 208
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = or i32 %3984, 248
  %4032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3984, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = call float @dx.op.dot4.f32(i32 56, float %4036, float %4037, float %4038, float %4039, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4041 = or i32 %3984, 16
  %4042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.ResRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.ResRet.f32 %4042, 2
  %4046 = extractvalue %dx.types.ResRet.f32 %4042, 3
  %4047 = call float @dx.op.dot4.f32(i32 56, float %4043, float %4044, float %4045, float %4046, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4048 = or i32 %3984, 32
  %4049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.ResRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.ResRet.f32 %4049, 2
  %4053 = extractvalue %dx.types.ResRet.f32 %4049, 3
  %4054 = call float @dx.op.dot4.f32(i32 56, float %4050, float %4051, float %4052, float %4053, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4055 = call float @dx.op.unary.f32(i32 27, float %4040)  ; Round_ni(value)
  %4056 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4057 = call float @dx.op.unary.f32(i32 27, float %4047)  ; Round_ni(value)
  %4058 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4059 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4060 = call float @dx.op.unary.f32(i32 27, float %4059)  ; Round_ni(value)
  %4061 = fadd fast float %4058, %4056
  %4062 = fadd fast float %4061, %4060
  %4063 = fcmp fast oeq float %4062, 0.000000e+00
  %4064 = call float @dx.op.dot4.f32(i32 56, float %4036, float %4037, float %4038, float %4039, float %3899, float %3900, float %3901, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4065 = call float @dx.op.dot4.f32(i32 56, float %4043, float %4044, float %4045, float %4046, float %3899, float %3900, float %3901, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4066 = call float @dx.op.dot4.f32(i32 56, float %4036, float %4037, float %4038, float %4039, float %3902, float %3903, float %3904, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4067 = call float @dx.op.dot4.f32(i32 56, float %4043, float %4044, float %4045, float %4046, float %3902, float %3903, float %3904, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4068 = fsub fast float %4064, %4040
  %4069 = fsub fast float %4066, %4040
  %4070 = fsub fast float %4065, %4047
  %4071 = fsub fast float %4067, %4047
  %4072 = call float @dx.op.dot3.f32(i32 55, float %3987, float %3988, float %3989, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4075 = fadd fast float %4074, %4072
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4078 = fcmp fast ogt float %4076, %4077
  %4079 = and i1 %4063, %4078
  br i1 %4079, label %4104, label %4080

; <label>:4080                                    ; preds = %4392, %4187, %4104, %3955
  %4081 = phi float [ %3957, %4104 ], [ %4190, %4187 ], [ %4190, %4392 ], [ %3957, %3955 ]
  %4082 = phi float [ %3958, %4104 ], [ %3958, %4187 ], [ %4368, %4392 ], [ %3958, %3955 ]
  %4083 = phi float [ %3959, %4104 ], [ %3959, %4187 ], [ %4367, %4392 ], [ %3959, %3955 ]
  %4084 = phi float [ %3960, %4104 ], [ %3960, %4187 ], [ %4365, %4392 ], [ %3960, %3955 ]
  %4085 = phi float [ %3961, %4104 ], [ %3961, %4187 ], [ %4343, %4392 ], [ %3961, %3955 ]
  %4086 = phi float [ %3962, %4104 ], [ %3962, %4187 ], [ %4344, %4392 ], [ %3962, %3955 ]
  %4087 = phi float [ %3963, %4104 ], [ %3963, %4187 ], [ %4345, %4392 ], [ %3963, %3955 ]
  %4088 = phi float [ %3964, %4104 ], [ %3964, %4187 ], [ %4314, %4392 ], [ %3964, %3955 ]
  %4089 = phi float [ %3965, %4104 ], [ %3965, %4187 ], [ %4312, %4392 ], [ %3965, %3955 ]
  %4090 = phi float [ %3966, %4104 ], [ %3966, %4187 ], [ %4402, %4392 ], [ %3966, %3955 ]
  %4091 = phi float [ %3967, %4104 ], [ %3967, %4187 ], [ %4403, %4392 ], [ %3967, %3955 ]
  %4092 = phi float [ %3968, %4104 ], [ %3968, %4187 ], [ %4404, %4392 ], [ %3968, %3955 ]
  %4093 = phi float [ %3969, %4104 ], [ %3969, %4187 ], [ %4293, %4392 ], [ %3969, %3955 ]
  %4094 = phi float [ %3970, %4104 ], [ %3970, %4187 ], [ %4294, %4392 ], [ %3970, %3955 ]
  %4095 = phi float [ %3971, %4104 ], [ %3971, %4187 ], [ %4295, %4392 ], [ %3971, %3955 ]
  %4096 = phi float [ %3972, %4104 ], [ %3972, %4187 ], [ %4323, %4392 ], [ %3972, %3955 ]
  %4097 = phi float [ %3973, %4104 ], [ %3973, %4187 ], [ %4320, %4392 ], [ %3973, %3955 ]
  %4098 = phi float [ %3974, %4104 ], [ %3974, %4187 ], [ %4317, %4392 ], [ %3974, %3955 ]
  %4099 = phi float [ %3975, %4104 ], [ %3975, %4187 ], [ %4310, %4392 ], [ %3975, %3955 ]
  %4100 = phi float [ %3976, %4104 ], [ %3976, %4187 ], [ %4305, %4392 ], [ %3976, %3955 ]
  %4101 = phi float [ %3977, %4104 ], [ %3977, %4187 ], [ %4306, %4392 ], [ %3977, %3955 ]
  %4102 = phi float [ %3978, %4104 ], [ %3978, %4187 ], [ %4307, %4392 ], [ %3978, %3955 ]
  %4103 = icmp eq i32 %3982, 0
  br i1 %4103, label %4405, label %3955

; <label>:4104                                    ; preds = %3955
  %4105 = extractvalue %dx.types.ResRet.f32 %3986, 3
  %4106 = extractvalue %dx.types.ResRet.f32 %4005, 3
  %4107 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4109 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %4110 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %4111 = extractvalue %dx.types.ResRet.i32 %3991, 3
  %4112 = extractvalue %dx.types.ResRet.i32 %3991, 2
  %4113 = bitcast float %4105 to i32
  %4114 = add i32 %4111, 0
  %4115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4114, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4115, %dx.types.Handle %4116, float %4040, float %4047, float undef, float undef, i32 0, i32 0, i32 undef, float %4068, float %4070, float undef, float %4069, float %4071, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = fmul fast float %4118, %4110
  %4120 = fadd fast float %4119, %4109
  %4121 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4122 = fmul fast float %4040, %4000
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4001, float %4047, float %4122)  ; FMad(a,b,c)
  %4124 = fadd fast float %4123, %4108
  %4125 = fmul fast float %4040, %4002
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4047, float %4125)  ; FMad(a,b,c)
  %4127 = fadd fast float %4126, %4107
  %4128 = fmul fast float %4068, %4000
  %4129 = call float @dx.op.tertiary.f32(i32 46, float %4001, float %4070, float %4128)  ; FMad(a,b,c)
  %4130 = fmul fast float %4068, %4002
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4070, float %4130)  ; FMad(a,b,c)
  %4132 = fmul fast float %4069, %4000
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4001, float %4071, float %4132)  ; FMad(a,b,c)
  %4134 = fmul fast float %4069, %4002
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4071, float %4134)  ; FMad(a,b,c)
  %4136 = add i32 %4112, 0
  %4137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4136, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4137, %dx.types.Handle %4116, float %4124, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float %4129, float %4131, float undef, float %4133, float %4135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = and i32 %4113, 1024
  %4141 = icmp ne i32 %4140, 0
  %4142 = fcmp fast ogt float %4139, 0x3FE0101020000000
  %4143 = uitofp i1 %4142 to float
  %4144 = select i1 %4141, float %4143, float %4139
  %4145 = and i32 %4113, 8192
  %4146 = icmp ne i32 %4145, 0
  %4147 = select i1 %4146, float %4106, float 1.000000e+00
  %4148 = fmul fast float %4040, 2.000000e+00
  %4149 = fadd fast float %4148, -1.000000e+00
  %4150 = call float @dx.op.unary.f32(i32 6, float %4149)  ; FAbs(value)
  %4151 = fmul fast float %4150, %4033
  %4152 = fsub fast float %4151, %4033
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = fmul fast float %4047, 2.000000e+00
  %4155 = fadd fast float %4154, -1.000000e+00
  %4156 = call float @dx.op.unary.f32(i32 6, float %4155)  ; FAbs(value)
  %4157 = fmul fast float %4156, %4034
  %4158 = fsub fast float %4157, %4034
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = fmul fast float %4059, %3996
  %4161 = fsub fast float %4160, %3996
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = fmul fast float %4121, %4147
  %4164 = fmul fast float %4163, %4118
  %4165 = fmul fast float %4164, %4153
  %4166 = fmul fast float %4165, %4144
  %4167 = fmul fast float %4166, %4159
  %4168 = fmul fast float %4167, %4162
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4172 = fsub fast float %4076, %4171
  %4173 = fmul fast float %4172, %4170
  %4174 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4175 = fmul fast float %4168, %3997
  %4176 = fadd fast float %4168, %3997
  %4177 = fmul fast float %4176, %4006
  %4178 = fsub fast float %4177, %4006
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = and i32 %4113, 128
  %4181 = icmp ne i32 %4180, 0
  %4182 = select i1 %4181, float %4179, float %4175
  %4183 = fmul fast float %4182, %4174
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = fcmp fast ugt float %4183, %4185
  br i1 %4186, label %4187, label %4080

; <label>:4187                                    ; preds = %4104
  %4188 = select i1 %4146, float %4183, float 0.000000e+00
  %4189 = fadd fast float %4188, %3957
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  br i1 %4146, label %4080, label %4191

; <label>:4191                                    ; preds = %4187
  %4192 = and i32 %4113, 4
  %4193 = and i32 %4113, 8
  %4194 = add i32 %3992, 0
  %4195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4194, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4197 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4195, %dx.types.Handle %4196, float %4124, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float %4129, float %4131, float undef, float %4133, float %4135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.ResRet.f32 %4197, 3
  %4202 = bitcast float %4018 to i32
  %4203 = and i32 %4202, 255
  %4204 = uitofp i32 %4203 to float
  %4205 = lshr i32 %4202, 8
  %4206 = and i32 %4205, 255
  %4207 = uitofp i32 %4206 to float
  %4208 = fmul fast float %4201, %4204
  %4209 = fadd fast float %4208, %4207
  %4210 = fmul fast float %4209, 0x3F70101000000000
  %4211 = add i32 %3993, 0
  %4212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4211, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4212, %dx.types.Handle %4196, float %4124, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float %4129, float %4131, float undef, float %4133, float %4135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = bitcast float %4012 to i32
  %4219 = and i32 %4218, 255
  %4220 = uitofp i32 %4219 to float
  %4221 = lshr i32 %4218, 8
  %4222 = and i32 %4221, 255
  %4223 = uitofp i32 %4222 to float
  %4224 = lshr i32 %4218, 16
  %4225 = and i32 %4224, 255
  %4226 = uitofp i32 %4225 to float
  %4227 = fmul fast float %4226, 0x3F70101000000000
  %4228 = fmul fast float %4214, %4220
  %4229 = fadd fast float %4228, %4223
  %4230 = fmul fast float %4229, 0x3F70101000000000
  %4231 = fadd fast float %4215, -5.000000e-01
  %4232 = fadd fast float %4217, -5.000000e-01
  %4233 = fmul fast float %4231, %4227
  %4234 = fmul fast float %4232, %4227
  %4235 = fadd fast float %4233, 5.000000e-01
  %4236 = fadd fast float %4234, 5.000000e-01
  %4237 = fmul fast float %4198, %4021
  %4238 = fmul fast float %4199, %4022
  %4239 = fmul fast float %4200, %4023
  %4240 = fmul fast float %4235, 2.000000e+00
  %4241 = fadd fast float %4240, -1.000000e+00
  %4242 = fmul fast float %4236, 2.000000e+00
  %4243 = fadd fast float %4242, -1.000000e+00
  %4244 = fadd fast float %4241, %4243
  %4245 = fmul fast float %4244, 5.000000e-01
  %4246 = fsub fast float %4241, %4243
  %4247 = fmul fast float %4246, 5.000000e-01
  %4248 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4249 = fsub fast float 1.000000e+00, %4248
  %4250 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4251 = fsub fast float %4249, %4250
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4245, float %4247, float %4251, float %4245, float %4247, float %4251)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call float @dx.op.unary.f32(i32 25, float %4252)  ; Rsqrt(value)
  %4254 = fmul fast float %4245, %4253
  %4255 = fmul fast float %4247, %4253
  %4256 = fmul fast float %4253, %4251
  %4257 = fmul fast float %4256, %3987
  %4258 = fmul fast float %4256, %3988
  %4259 = fmul fast float %4256, %3989
  %4260 = fmul fast float %4254, %4009
  %4261 = fmul fast float %4254, %4010
  %4262 = fmul fast float %4254, %4011
  %4263 = fadd fast float %4260, %4257
  %4264 = fadd fast float %4261, %4258
  %4265 = fadd fast float %4262, %4259
  %4266 = fmul fast float %4255, %4015
  %4267 = fmul fast float %4255, %4016
  %4268 = fmul fast float %4255, %4017
  %4269 = fadd fast float %4263, %4266
  %4270 = fadd fast float %4264, %4267
  %4271 = fadd fast float %4265, %4268
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4269, float %4270, float %4271, float %4269, float %4270, float %4271)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call float @dx.op.unary.f32(i32 25, float %4272)  ; Rsqrt(value)
  %4274 = fmul fast float %4269, %4273
  %4275 = fmul fast float %4270, %4273
  %4276 = fmul fast float %4271, %4273
  %4277 = icmp ne i32 %4193, 0
  %4278 = select i1 %4277, float 1.000000e+00, float 0.000000e+00
  %4279 = fmul fast float %4183, %4278
  %4280 = and i32 %4113, 1
  %4281 = icmp eq i32 %4280, 0
  br i1 %4281, label %4282, label %4286

; <label>:4282                                    ; preds = %4191
  %4283 = fsub fast float %4274, %3969
  %4284 = fsub fast float %4275, %3970
  %4285 = fsub fast float %4276, %3971
  br label %4286

; <label>:4286                                    ; preds = %4282, %4191
  %4287 = phi float [ %4283, %4282 ], [ %4274, %4191 ]
  %4288 = phi float [ %4284, %4282 ], [ %4275, %4191 ]
  %4289 = phi float [ %4285, %4282 ], [ %4276, %4191 ]
  %4290 = fmul float %4289, %4279
  %4291 = fmul float %4288, %4279
  %4292 = fmul float %4287, %4279
  %4293 = fadd fast float %4292, %3969
  %4294 = fadd fast float %4291, %3970
  %4295 = fadd fast float %4290, %3971
  %4296 = icmp ne i32 %4192, 0
  %4297 = select i1 %4296, float 1.000000e+00, float 0.000000e+00
  %4298 = fmul fast float %4183, %4297
  %4299 = fsub fast float %4237, %3976
  %4300 = fsub fast float %4238, %3977
  %4301 = fsub fast float %4239, %3978
  %4302 = fmul fast float %4299, %4298
  %4303 = fmul fast float %4300, %4298
  %4304 = fmul fast float %4301, %4298
  %4305 = fadd fast float %4302, %3976
  %4306 = fadd fast float %4303, %3977
  %4307 = fadd fast float %4304, %3978
  %4308 = fsub fast float %4210, %3975
  %4309 = fmul fast float %4308, %4298
  %4310 = fadd fast float %4309, %3975
  %4311 = fmul fast float %4298, %3965
  %4312 = fsub fast float %3965, %4311
  %4313 = fmul fast float %4298, %3964
  %4314 = fsub fast float %3964, %4313
  %4315 = bitcast float %4030 to i32
  %4316 = fadd fast float %4183, %3974
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fsub fast float %4230, %3973
  %4319 = fmul fast float %4318, %4279
  %4320 = fadd fast float %4319, %3973
  %4321 = fsub fast float %4216, %3972
  %4322 = fmul fast float %4321, %4279
  %4323 = fadd fast float %4322, %3972
  br i1 %4281, label %4332, label %4324

; <label>:4324                                    ; preds = %4286
  %4325 = and i32 %4113, 32768
  %4326 = icmp eq i32 %4325, 0
  br i1 %4326, label %4342, label %4327

; <label>:4327                                    ; preds = %4324
  %4328 = fmul fast float %4279, 1.270000e+02
  %4329 = fadd fast float %4328, %3961
  %4330 = fadd fast float %4328, %3962
  %4331 = fadd fast float %4328, %3963
  br label %4342

; <label>:4332                                    ; preds = %4286
  %4333 = fsub fast float 1.270000e+02, %3961
  %4334 = fsub fast float 1.270000e+02, %3962
  %4335 = fsub fast float 1.270000e+02, %3963
  %4336 = fmul fast float %4279, %4333
  %4337 = fmul fast float %4279, %4334
  %4338 = fmul fast float %4279, %4335
  %4339 = fadd fast float %4336, %3961
  %4340 = fadd fast float %4337, %3962
  %4341 = fadd fast float %4338, %3963
  br label %4342

; <label>:4342                                    ; preds = %4332, %4327, %4324
  %4343 = phi float [ %4329, %4327 ], [ %3961, %4324 ], [ %4339, %4332 ]
  %4344 = phi float [ %4330, %4327 ], [ %3962, %4324 ], [ %4340, %4332 ]
  %4345 = phi float [ %4331, %4327 ], [ %3963, %4324 ], [ %4341, %4332 ]
  %4346 = call float @dx.op.dot3.f32(i32 55, float %4237, float %4238, float %4239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.CBufRet.f32 %4347, 1
  %4350 = fmul fast float %4349, %4346
  %4351 = fadd fast float %4350, %4348
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = bitcast float %4024 to i32
  %4354 = and i32 %4353, 65535
  %4355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4354)  ; LegacyF16ToF32(value)
  %4356 = lshr i32 %4353, 16
  %4357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4356)  ; LegacyF16ToF32(value)
  %4358 = fcmp fast oge float %4355, 0.000000e+00
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = select i1 %4358, float %4355, float %4360
  %4362 = fadd fast float %4361, %4357
  %4363 = fsub fast float %4352, %3960
  %4364 = fmul fast float %4363, %4183
  %4365 = fadd fast float %4364, %3960
  %4366 = fmul fast float %4362, %4183
  %4367 = call float @dx.op.binary.f32(i32 35, float %3959, float %4366)  ; FMax(a,b)
  %4368 = call float @dx.op.binary.f32(i32 35, float %3958, float %4183)  ; FMax(a,b)
  %4369 = and i32 %4113, 16
  %4370 = icmp eq i32 %4369, 0
  br i1 %4370, label %4392, label %4371

; <label>:4371                                    ; preds = %4342
  %4372 = add i32 %4027, 0
  %4373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4372, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4374 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4373, %dx.types.Handle %4196, float %4124, float %4127, float undef, float undef, i32 0, i32 0, i32 undef, float %4129, float %4131, float undef, float %4133, float %4135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.ResRet.f32 %4374, 1
  %4377 = extractvalue %dx.types.ResRet.f32 %4374, 2
  %4378 = and i32 %4315, 65535
  %4379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4378)  ; LegacyF16ToF32(value)
  %4380 = fmul fast float %4375, %4021
  %4381 = fmul fast float %4376, %4022
  %4382 = fmul fast float %4377, %4023
  %4383 = and i32 %4113, 16384
  %4384 = icmp ne i32 %4383, 0
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = select i1 %4384, float %4386, float 1.000000e+00
  %4388 = fmul fast float %4387, %4379
  %4389 = fmul fast float %4380, %4388
  %4390 = fmul fast float %4381, %4388
  %4391 = fmul fast float %4382, %4388
  br label %4392

; <label>:4392                                    ; preds = %4371, %4342
  %4393 = phi float [ %4389, %4371 ], [ 0.000000e+00, %4342 ]
  %4394 = phi float [ %4390, %4371 ], [ 0.000000e+00, %4342 ]
  %4395 = phi float [ %4391, %4371 ], [ 0.000000e+00, %4342 ]
  %4396 = fsub fast float %4393, %3966
  %4397 = fsub fast float %4394, %3967
  %4398 = fsub fast float %4395, %3968
  %4399 = fmul fast float %4396, %4183
  %4400 = fmul fast float %4397, %4183
  %4401 = fmul fast float %4398, %4183
  %4402 = fadd fast float %4399, %3966
  %4403 = fadd fast float %4400, %3967
  %4404 = fadd fast float %4401, %3968
  br label %4080

; <label>:4405                                    ; preds = %4080
  br label %4406

; <label>:4406                                    ; preds = %4405, %3892
  %4407 = phi float [ 0.000000e+00, %3892 ], [ %4081, %4405 ]
  %4408 = phi float [ %1147, %3892 ], [ %4082, %4405 ]
  %4409 = phi float [ %3836, %3892 ], [ %4083, %4405 ]
  %4410 = phi float [ %3815, %3892 ], [ %4084, %4405 ]
  %4411 = phi float [ %3808, %3892 ], [ %4085, %4405 ]
  %4412 = phi float [ %3809, %3892 ], [ %4086, %4405 ]
  %4413 = phi float [ %3810, %3892 ], [ %4087, %4405 ]
  %4414 = phi float [ 0.000000e+00, %3892 ], [ %4088, %4405 ]
  %4415 = phi float [ 0.000000e+00, %3892 ], [ %4089, %4405 ]
  %4416 = phi float [ %3858, %3892 ], [ %4090, %4405 ]
  %4417 = phi float [ %3860, %3892 ], [ %4091, %4405 ]
  %4418 = phi float [ %3862, %3892 ], [ %4092, %4405 ]
  %4419 = phi float [ %3888, %3892 ], [ %4093, %4405 ]
  %4420 = phi float [ %3889, %3892 ], [ %4094, %4405 ]
  %4421 = phi float [ %3890, %3892 ], [ %4095, %4405 ]
  %4422 = phi float [ %3813, %3892 ], [ %4096, %4405 ]
  %4423 = phi float [ %3812, %3892 ], [ %4097, %4405 ]
  %4424 = phi float [ 0.000000e+00, %3892 ], [ %4098, %4405 ]
  %4425 = phi float [ %3811, %3892 ], [ %4099, %4405 ]
  %4426 = phi float [ %3843, %3892 ], [ %4100, %4405 ]
  %4427 = phi float [ %3844, %3892 ], [ %4101, %4405 ]
  %4428 = phi float [ %3845, %3892 ], [ %4102, %4405 ]
  %4429 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4430 = call float @dx.op.unary.f32(i32 25, float %4429)  ; Rsqrt(value)
  %4431 = fmul fast float %4430, %4419
  %4432 = fmul fast float %4430, %4420
  %4433 = fmul fast float %4430, %4421
  %4434 = fadd fast float %4424, %1147
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4431, float %4432, float %4433, float %4431, float %4432, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 25, float %4436)  ; Rsqrt(value)
  %4438 = fmul fast float %4437, %4431
  %4439 = fmul fast float %4437, %4432
  %4440 = fmul fast float %4437, %4433
  br label %4441

; <label>:4441                                    ; preds = %4406, %3799
  %4442 = phi float [ %4438, %4406 ], [ %3888, %3799 ]
  %4443 = phi float [ %4439, %4406 ], [ %3889, %3799 ]
  %4444 = phi float [ %4440, %4406 ], [ %3890, %3799 ]
  %4445 = phi float [ %4426, %4406 ], [ %3843, %3799 ]
  %4446 = phi float [ %4427, %4406 ], [ %3844, %3799 ]
  %4447 = phi float [ %4428, %4406 ], [ %3845, %3799 ]
  %4448 = phi float [ %4416, %4406 ], [ %3858, %3799 ]
  %4449 = phi float [ %4417, %4406 ], [ %3860, %3799 ]
  %4450 = phi float [ %4418, %4406 ], [ %3862, %3799 ]
  %4451 = phi float [ %4411, %4406 ], [ %3808, %3799 ]
  %4452 = phi float [ %4412, %4406 ], [ %3809, %3799 ]
  %4453 = phi float [ %4413, %4406 ], [ %3810, %3799 ]
  %4454 = phi float [ %4425, %4406 ], [ %3811, %3799 ]
  %4455 = phi float [ %4435, %4406 ], [ %1147, %3799 ]
  %4456 = phi float [ %4423, %4406 ], [ %3812, %3799 ]
  %4457 = phi float [ %4422, %4406 ], [ %3813, %3799 ]
  %4458 = phi float [ %4415, %4406 ], [ 0.000000e+00, %3799 ]
  %4459 = phi float [ %4414, %4406 ], [ 0.000000e+00, %3799 ]
  %4460 = phi float [ %4407, %4406 ], [ 0.000000e+00, %3799 ]
  %4461 = phi float [ %4409, %4406 ], [ %3836, %3799 ]
  %4462 = phi float [ %4408, %4406 ], [ %1147, %3799 ]
  %4463 = phi float [ %4410, %4406 ], [ %3815, %3799 ]
  %4464 = fadd fast float %4454, 0xBFB99999A0000000
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4465, 0x3FF1C71C80000000
  %4467 = call float @dx.op.binary.f32(i32 36, float %4454, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4468 = fsub fast float 1.000000e+00, %4466
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4469, %4445
  %4471 = fmul fast float %4469, %4446
  %4472 = fmul fast float %4469, %4447
  %4473 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4475 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4476 = fmul fast float %4466, %4445
  %4477 = fmul fast float %4466, %4446
  %4478 = fmul fast float %4466, %4447
  %4479 = fadd fast float %4476, %4467
  %4480 = fadd fast float %4477, %4467
  %4481 = fadd fast float %4478, %4467
  %4482 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4486 = call float @dx.op.binary.f32(i32 36, float %4451, float 1.270000e+02)  ; FMin(a,b)
  %4487 = call float @dx.op.binary.f32(i32 36, float %4452, float 1.270000e+02)  ; FMin(a,b)
  %4488 = call float @dx.op.binary.f32(i32 36, float %4453, float 1.270000e+02)  ; FMin(a,b)
  %4489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.i32 %4489, 3
  %4491 = and i32 %4490, 8
  %4492 = icmp ne i32 %4491, 0
  %4493 = call float @dx.op.binary.f32(i32 35, float %4473, float %4445)  ; FMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4474, float %4445)  ; FMax(a,b)
  %4495 = call float @dx.op.binary.f32(i32 35, float %4475, float %4445)  ; FMax(a,b)
  %4496 = call float @dx.op.dot3.f32(i32 55, float %4473, float %4474, float %4475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4497 = select i1 %265, float %4445, float %4473
  %4498 = select i1 %265, float %4496, float %4474
  %4499 = select i1 %265, float 1.000000e+00, float %4475
  %4500 = select i1 %4492, float %4493, float %4497
  %4501 = select i1 %4492, float %4494, float %4498
  %4502 = select i1 %4492, float %4495, float %4499
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.CBufRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4507 = fadd fast float %4504, %193
  %4508 = fadd fast float %4505, %194
  %4509 = fadd fast float %4506, %195
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.CBufRet.f32 %4510, 1
  %4513 = fsub fast float %4507, %4511
  %4514 = fsub fast float %4508, %4512
  %4515 = fmul fast float %4513, %4513
  %4516 = fmul fast float %4514, %4514
  %4517 = fadd fast float %4515, %4516
  %4518 = call float @dx.op.unary.f32(i32 24, float %4517)  ; Sqrt(value)
  %4519 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4520 = fcmp fast olt float %4518, %4519
  br i1 %4520, label %4521, label %4588

; <label>:4521                                    ; preds = %4441
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4529 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4532 = extractvalue %dx.types.CBufRet.f32 %4524, 3
  %4533 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4534 = fadd fast float %4531, %4507
  %4535 = fadd fast float %4532, %4508
  %4536 = fadd fast float %4533, %4509
  %4537 = fmul fast float %4534, %4523
  %4538 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4525, float %4537)  ; FMad(a,b,c)
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4527, float %4538)  ; FMad(a,b,c)
  %4540 = fmul fast float %4534, %4528
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4529, float %4540)  ; FMad(a,b,c)
  %4542 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4530, float %4541)  ; FMad(a,b,c)
  %4543 = fsub fast float %4539, %4531
  %4544 = fsub fast float %4542, %4532
  %4545 = fsub fast float %4543, %4511
  %4546 = fadd fast float %4545, %4519
  %4547 = fsub fast float %4544, %4512
  %4548 = fadd fast float %4547, %4519
  %4549 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4550 = fmul fast float %4546, %4549
  %4551 = fmul fast float %4548, %4549
  %4552 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4553 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4554 = fsub fast float 1.000000e+00, %4552
  %4555 = fsub fast float 1.000000e+00, %4553
  %4556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4554, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4557 = extractvalue %dx.types.ResRet.f32 %4556, 0
  %4558 = fcmp fast ugt float %4557, 0.000000e+00
  br i1 %4558, label %4559, label %4862

; <label>:4559                                    ; preds = %4521
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4562 = fmul fast float %4561, %4557
  %4563 = extractvalue %dx.types.CBufRet.f32 %4560, 3
  %4564 = fadd fast float %4563, %4562
  %4565 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4566 = fadd fast float %4564, %4533
  %4567 = fmul fast float %4539, %4527
  %4568 = call float @dx.op.tertiary.f32(i32 46, float %4542, float %4530, float %4567)  ; FMad(a,b,c)
  %4569 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4565, float %4568)  ; FMad(a,b,c)
  %4570 = fsub fast float %4569, %4533
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4573 = fsub fast float %4570, %4572
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4554, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4554, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = fadd fast float %4579, %4575
  %4583 = fmul fast float %4582, 0x3F847AE140000000
  %4584 = fadd fast float %4580, %4576
  %4585 = fmul fast float %4584, 0x3F847AE140000000
  %4586 = fadd fast float %4581, %4577
  %4587 = fmul fast float %4586, 0x3F847AE140000000
  br label %4862

; <label>:4588                                    ; preds = %4441
  %4589 = and i32 %244, 1
  %4590 = icmp eq i32 %4589, 0
  br i1 %4590, label %4862, label %4591

; <label>:4591                                    ; preds = %4588
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 0
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.CBufRet.f32 %4592, 1
  %4599 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4600 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4592, 3
  %4602 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4603 = extractvalue %dx.types.CBufRet.f32 %4596, 3
  %4604 = fadd fast float %4601, %4507
  %4605 = fadd fast float %4602, %4508
  %4606 = fadd fast float %4603, %4509
  %4607 = fmul fast float %4604, %4593
  %4608 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4595, float %4607)  ; FMad(a,b,c)
  %4609 = call float @dx.op.tertiary.f32(i32 46, float %4606, float %4597, float %4608)  ; FMad(a,b,c)
  %4610 = fmul fast float %4604, %4598
  %4611 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4599, float %4610)  ; FMad(a,b,c)
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4606, float %4600, float %4611)  ; FMad(a,b,c)
  %4613 = fsub fast float %4609, %4601
  %4614 = fsub fast float %4612, %4602
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.i32 %4622, 0
  %4624 = extractvalue %dx.types.CBufRet.i32 %4622, 1
  %4625 = udiv i32 %4624, %4623
  %4626 = fsub fast float %4613, %4616
  %4627 = fsub fast float %4614, %4617
  %4628 = call float @dx.op.binary.f32(i32 35, float %4626, float 0.000000e+00)  ; FMax(a,b)
  %4629 = call float @dx.op.binary.f32(i32 35, float %4627, float 0.000000e+00)  ; FMax(a,b)
  %4630 = call float @dx.op.binary.f32(i32 36, float %4628, float %4618)  ; FMin(a,b)
  %4631 = call float @dx.op.binary.f32(i32 36, float %4629, float %4619)  ; FMin(a,b)
  %4632 = add i32 %4623, -1
  %4633 = add i32 %4625, -1
  %4634 = fmul fast float %4630, %4621
  %4635 = fmul fast float %4631, %4621
  %4636 = fptoui float %4634 to i32
  %4637 = fptoui float %4635 to i32
  %4638 = call i32 @dx.op.binary.i32(i32 40, i32 %4636, i32 %4632)  ; UMin(a,b)
  %4639 = call i32 @dx.op.binary.i32(i32 40, i32 %4637, i32 %4633)  ; UMin(a,b)
  %4640 = mul i32 %4639, %4623
  %4641 = add i32 %4640, %4638
  %4642 = shl i32 %4641, 2
  %4643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.i32 %4643, 0
  %4645 = icmp eq i32 %4644, -1
  br i1 %4645, label %4862, label %4646

; <label>:4646                                    ; preds = %4591
  %4647 = mul i32 %4644, 148
  %4648 = add i32 %4647, 4
  %4649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = add i32 %4647, 8
  %4652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = add i32 %4647, 36
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = add i32 %4647, 60
  %4658 = add i32 %4647, 92
  %4659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.i32 %4659, 0
  %4661 = add i32 %4647, 116
  %4662 = fsub fast float %4613, %4650
  %4663 = fsub fast float %4614, %4653
  %4664 = fmul fast float %4621, %4662
  %4665 = fmul fast float %4621, %4663
  %4666 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 2
  %4671 = call float @dx.op.unary.f32(i32 83, float %4666)  ; DerivCoarseX(value)
  %4672 = call float @dx.op.unary.f32(i32 83, float %4668)  ; DerivCoarseX(value)
  %4673 = call float @dx.op.unary.f32(i32 84, float %4666)  ; DerivCoarseY(value)
  %4674 = call float @dx.op.unary.f32(i32 84, float %4668)  ; DerivCoarseY(value)
  %4675 = fmul fast float %4671, %4670
  %4676 = fmul fast float %4672, %4670
  %4677 = fmul fast float %4673, %4670
  %4678 = fmul fast float %4674, %4670
  %4679 = call float @dx.op.dot2.f32(i32 54, float %4677, float %4678, float %4677, float %4678)  ; Dot2(ax,ay,bx,by)
  %4680 = call float @dx.op.dot2.f32(i32 54, float %4675, float %4676, float %4675, float %4676)  ; Dot2(ax,ay,bx,by)
  %4681 = call float @dx.op.binary.f32(i32 35, float %4680, float %4679)  ; FMax(a,b)
  %4682 = call float @dx.op.unary.f32(i32 23, float %4681)  ; Log(value)
  %4683 = fmul fast float %4682, 5.000000e-01
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 1
  %4686 = fadd fast float %4685, %4683
  %4687 = call float @dx.op.binary.f32(i32 35, float %4686, float 0.000000e+00)  ; FMax(a,b)
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 3
  %4690 = fadd fast float %4689, %4687
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %4693 = fadd fast float %4690, %4692
  %4694 = add i32 %4660, 0
  %4695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4694, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4696 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4695, i32 0)  ; GetDimensions(handle,mipLevel)
  %4697 = extractvalue %dx.types.Dimensions %4696, 0
  %4698 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4697)  ; FirstbitLo(value)
  %4699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.i32 %4699, 1
  %4701 = sub nsw i32 %4700, %4698
  %4702 = sitofp i32 %4701 to float
  %4703 = fsub fast float %4693, %4702
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float 0.000000e+00)  ; FMax(a,b)
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4695, %dx.types.Handle %47, float %4666, float %4668, float %4656, float undef, i32 0, i32 0, i32 undef, float %4704)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = fcmp ule float %4706, 0x3FE0101020000000
  %4708 = extractvalue %dx.types.CBufRet.i32 %4699, 0
  %4709 = and i32 %4708, 128
  %4710 = icmp ne i32 %4709, 0
  %4711 = and i1 %4707, %4710
  br i1 %4711, label %4862, label %4712

; <label>:4712                                    ; preds = %4646
  %4713 = add i32 %4647, 20
  %4714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4713, i32 undef)  ; BufferLoad(srv,index,wot)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = add i32 %4647, 24
  %4717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4716, i32 undef)  ; BufferLoad(srv,index,wot)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = add i32 %4647, 40
  %4720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4719, i32 undef)  ; BufferLoad(srv,index,wot)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = add i32 %4647, 96
  %4723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4722, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.i32 %4723, 0
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4727 = fmul fast float %4726, %4666
  %4728 = fmul fast float %4726, %4668
  %4729 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4730 = fadd fast float %4727, %4729
  %4731 = fadd fast float %4728, %4729
  %4732 = add i32 %4724, 0
  %4733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4734 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4733, i32 0)  ; GetDimensions(handle,mipLevel)
  %4735 = extractvalue %dx.types.Dimensions %4734, 0
  %4736 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4735)  ; FirstbitLo(value)
  %4737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.i32 %4737, 1
  %4739 = sub nsw i32 %4738, %4736
  %4740 = sitofp i32 %4739 to float
  %4741 = fsub fast float %4690, %4740
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4733, %dx.types.Handle %47, float %4730, float %4731, float %4721, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = fmul fast float %4744, %4715
  %4746 = fadd fast float %4745, %4718
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.CBufRet.f32 %4747, 2
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 3
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4755 = extractvalue %dx.types.CBufRet.f32 %4747, 3
  %4756 = fadd fast float %4752, %4613
  %4757 = fadd fast float %4754, %4614
  %4758 = fadd fast float %4746, %4755
  %4759 = fmul fast float %4756, %4748
  %4760 = call float @dx.op.tertiary.f32(i32 46, float %4757, float %4749, float %4759)  ; FMad(a,b,c)
  %4761 = call float @dx.op.tertiary.f32(i32 46, float %4758, float %4750, float %4760)  ; FMad(a,b,c)
  %4762 = fsub fast float %4761, %4755
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4765 = fsub fast float %4762, %4764
  %4766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.i32 %4766, 0
  %4768 = call i32 @dx.op.binary.i32(i32 40, i32 %4644, i32 %4767)  ; UMin(a,b)
  %4769 = mul i32 %4768, 36
  %4770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4769, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.i32 %4770, 0
  %4772 = add i32 %4769, 4
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = fmul fast float %4774, %4666
  %4776 = fmul fast float %4774, %4668
  %4777 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4778 = fadd fast float %4775, %4777
  %4779 = fadd fast float %4776, %4777
  %4780 = icmp eq i32 %4771, 0
  br i1 %4780, label %4849, label %4781

; <label>:4781                                    ; preds = %4712
  br label %4782

; <label>:4782                                    ; preds = %4839, %4781
  %4783 = phi float [ %4840, %4839 ], [ 0.000000e+00, %4781 ]
  %4784 = phi float [ %4841, %4839 ], [ 0.000000e+00, %4781 ]
  %4785 = phi float [ %4842, %4839 ], [ 0.000000e+00, %4781 ]
  %4786 = phi float [ %4843, %4839 ], [ 0.000000e+00, %4781 ]
  %4787 = phi float [ %4844, %4839 ], [ 0.000000e+00, %4781 ]
  %4788 = phi float [ %4845, %4839 ], [ 0.000000e+00, %4781 ]
  %4789 = phi i32 [ %4846, %4839 ], [ 0, %4781 ]
  %4790 = shl i32 %4789, 2
  %4791 = add i32 %4657, %4790
  %4792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4791, i32 undef)  ; BufferLoad(srv,index,wot)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = add i32 %4661, %4790
  %4795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4794, i32 undef)  ; BufferLoad(srv,index,wot)
  %4796 = extractvalue %dx.types.ResRet.i32 %4795, 0
  %4797 = add i32 %4796, 0
  %4798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4799 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4798, i32 0)  ; GetDimensions(handle,mipLevel)
  %4800 = extractvalue %dx.types.Dimensions %4799, 0
  %4801 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4800)  ; FirstbitLo(value)
  %4802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.i32 %4802, 1
  %4804 = sub nsw i32 %4803, %4801
  %4805 = sitofp i32 %4804 to float
  %4806 = fsub fast float %4690, %4805
  %4807 = call float @dx.op.binary.f32(i32 35, float %4806, float 0.000000e+00)  ; FMax(a,b)
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4798, %dx.types.Handle %47, float %4778, float %4779, float %4793, float undef, i32 0, i32 0, i32 undef, float %4807)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = fcmp fast ogt float %4809, 0.000000e+00
  br i1 %4810, label %4811, label %4839

; <label>:4811                                    ; preds = %4782
  %4812 = add i32 %4772, %4790
  %4813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4812, i32 undef)  ; BufferLoad(srv,index,wot)
  %4814 = extractvalue %dx.types.ResRet.i32 %4813, 0
  %4815 = and i32 %4814, 32767
  %4816 = mul nuw nsw i32 %4815, 928
  %4817 = add nuw nsw i32 %4816, 48
  %4818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.f32 %4818, 2
  %4822 = add nuw nsw i32 %4816, 60
  %4823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4822, i32 undef)  ; BufferLoad(srv,index,wot)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.f32 %4823, 2
  %4827 = fmul fast float %4819, %4809
  %4828 = fmul fast float %4820, %4809
  %4829 = fmul fast float %4821, %4809
  %4830 = fadd fast float %4827, %4783
  %4831 = fadd fast float %4828, %4784
  %4832 = fadd fast float %4829, %4785
  %4833 = fmul fast float %4824, %4809
  %4834 = fmul fast float %4825, %4809
  %4835 = fmul fast float %4826, %4809
  %4836 = fadd fast float %4833, %4786
  %4837 = fadd fast float %4834, %4787
  %4838 = fadd fast float %4835, %4788
  br label %4839

; <label>:4839                                    ; preds = %4811, %4782
  %4840 = phi float [ %4830, %4811 ], [ %4783, %4782 ]
  %4841 = phi float [ %4831, %4811 ], [ %4784, %4782 ]
  %4842 = phi float [ %4832, %4811 ], [ %4785, %4782 ]
  %4843 = phi float [ %4836, %4811 ], [ %4786, %4782 ]
  %4844 = phi float [ %4837, %4811 ], [ %4787, %4782 ]
  %4845 = phi float [ %4838, %4811 ], [ %4788, %4782 ]
  %4846 = add nuw i32 %4789, 1
  %4847 = icmp eq i32 %4846, %4771
  br i1 %4847, label %4848, label %4782

; <label>:4848                                    ; preds = %4839
  br label %4849

; <label>:4849                                    ; preds = %4848, %4712
  %4850 = phi float [ 0.000000e+00, %4712 ], [ %4840, %4848 ]
  %4851 = phi float [ 0.000000e+00, %4712 ], [ %4841, %4848 ]
  %4852 = phi float [ 0.000000e+00, %4712 ], [ %4842, %4848 ]
  %4853 = phi float [ 0.000000e+00, %4712 ], [ %4843, %4848 ]
  %4854 = phi float [ 0.000000e+00, %4712 ], [ %4844, %4848 ]
  %4855 = phi float [ 0.000000e+00, %4712 ], [ %4845, %4848 ]
  %4856 = fadd fast float %4853, %4850
  %4857 = fmul fast float %4856, 0x3F847AE140000000
  %4858 = fadd fast float %4854, %4851
  %4859 = fmul fast float %4858, 0x3F847AE140000000
  %4860 = fadd fast float %4855, %4852
  %4861 = fmul fast float %4860, 0x3F847AE140000000
  br label %4862

; <label>:4862                                    ; preds = %4849, %4646, %4591, %4588, %4559, %4521
  %4863 = phi float [ %4573, %4559 ], [ -1.310720e+05, %4521 ], [ %4765, %4849 ], [ -1.310720e+05, %4591 ], [ -1.310720e+05, %4646 ], [ -1.310720e+05, %4588 ]
  %4864 = phi float [ %4583, %4559 ], [ 0.000000e+00, %4521 ], [ %4857, %4849 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4646 ], [ 0.000000e+00, %4588 ]
  %4865 = phi float [ %4585, %4559 ], [ 0.000000e+00, %4521 ], [ %4859, %4849 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4646 ], [ 0.000000e+00, %4588 ]
  %4866 = phi float [ %4587, %4559 ], [ 0.000000e+00, %4521 ], [ %4861, %4849 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4646 ], [ 0.000000e+00, %4588 ]
  %4867 = phi i1 [ true, %4559 ], [ false, %4521 ], [ true, %4849 ], [ false, %4591 ], [ false, %4646 ], [ false, %4588 ]
  %4868 = and i32 %244, 3
  %4869 = icmp eq i32 %4868, 1
  %4870 = select i1 %4869, float 1.000000e+00, float 0.000000e+00
  %4871 = fsub fast float %4863, %195
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = select i1 %4867, float %4872, float 1.000000e+00
  %4874 = fmul fast float %4873, %4870
  %4875 = icmp eq i32 %4868, 3
  %4876 = select i1 %4875, float 1.000000e+00, float %4874
  %4877 = call float @dx.op.binary.f32(i32 35, float %4460, float %4876)  ; FMax(a,b)
  %4878 = fcmp fast olt float %4876, 1.000000e+00
  %4879 = fcmp uge float %71, 0.000000e+00
  %4880 = and i1 %4879, %4878
  br i1 %4880, label %4881, label %4891

; <label>:4881                                    ; preds = %4862
  %4882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.ResRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.ResRet.f32 %4882, 2
  %4886 = fadd fast float %4883, %4877
  %4887 = fcmp ule float %70, 0.000000e+00
  %4888 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = select i1 %4887, float %4888, float 1.000000e+00
  %4890 = fmul fast float %4889, %4885
  br label %4891

; <label>:4891                                    ; preds = %4881, %4862
  %4892 = phi float [ %4886, %4881 ], [ %4877, %4862 ]
  %4893 = phi float [ %4884, %4881 ], [ 0.000000e+00, %4862 ]
  %4894 = phi float [ %4890, %4881 ], [ 0.000000e+00, %4862 ]
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = fcmp fast une float %4896, 0.000000e+00
  %4899 = fcmp fast une float %4897, 0.000000e+00
  %4900 = or i1 %4898, %4899
  br i1 %4900, label %4901, label %5460

; <label>:4901                                    ; preds = %4891
  br i1 %4898, label %4902, label %5175

; <label>:4902                                    ; preds = %4901
  %4903 = call float @dx.op.unary.f32(i32 23, float %4457)  ; Log(value)
  %4904 = fmul fast float %4903, 4.000000e+00
  %4905 = call float @dx.op.unary.f32(i32 21, float %4904)  ; Exp(value)
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = fmul fast float %4907, %58
  %4909 = fmul fast float %4907, %59
  %4910 = fmul fast float %4907, %60
  %4911 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4912 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4913 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4914 = call float @dx.op.unary.f32(i32 23, float %4911)  ; Log(value)
  %4915 = call float @dx.op.unary.f32(i32 23, float %4912)  ; Log(value)
  %4916 = call float @dx.op.unary.f32(i32 23, float %4913)  ; Log(value)
  %4917 = fmul fast float %4914, 4.000000e+00
  %4918 = fmul fast float %4915, 4.000000e+00
  %4919 = fmul fast float %4916, 4.000000e+00
  %4920 = call float @dx.op.unary.f32(i32 21, float %4917)  ; Exp(value)
  %4921 = call float @dx.op.unary.f32(i32 21, float %4918)  ; Exp(value)
  %4922 = call float @dx.op.unary.f32(i32 21, float %4919)  ; Exp(value)
  %4923 = fadd fast float %4921, %4920
  %4924 = fadd fast float %4923, %4922
  %4925 = fdiv fast float 1.000000e+00, %4924
  %4926 = fmul fast float %4925, %4920
  %4927 = fcmp fast ogt float %67, 0.000000e+00
  %4928 = fcmp fast ogt float %68, 0.000000e+00
  %4929 = fcmp fast ogt float %69, 0.000000e+00
  %4930 = fcmp fast olt float %67, 0.000000e+00
  %4931 = fcmp fast olt float %68, 0.000000e+00
  %4932 = fcmp fast olt float %69, 0.000000e+00
  %4933 = zext i1 %4927 to i32
  %4934 = zext i1 %4928 to i32
  %4935 = zext i1 %4929 to i32
  %4936 = zext i1 %4930 to i32
  %4937 = zext i1 %4931 to i32
  %4938 = zext i1 %4932 to i32
  %4939 = sub nsw i32 %4933, %4936
  %4940 = sub nsw i32 %4934, %4937
  %4941 = sub nsw i32 %4935, %4938
  %4942 = call float @dx.op.unary.f32(i32 83, float %4908)  ; DerivCoarseX(value)
  %4943 = call float @dx.op.unary.f32(i32 83, float %4909)  ; DerivCoarseX(value)
  %4944 = call float @dx.op.unary.f32(i32 83, float %4910)  ; DerivCoarseX(value)
  %4945 = call float @dx.op.unary.f32(i32 84, float %4908)  ; DerivCoarseY(value)
  %4946 = call float @dx.op.unary.f32(i32 84, float %4909)  ; DerivCoarseY(value)
  %4947 = call float @dx.op.unary.f32(i32 84, float %4910)  ; DerivCoarseY(value)
  %4948 = fcmp fast ole float %276, %4926
  %4949 = fmul fast float %4925, %4923
  %4950 = fcmp fast ole float %276, %4949
  %4951 = select i1 %4950, float %4910, float %4908
  %4952 = select i1 %4950, float %4908, float %4909
  %4953 = select i1 %4948, float %4909, float %4951
  %4954 = select i1 %4948, float %4910, float %4952
  %4955 = select i1 %4950, float %4944, float %4942
  %4956 = select i1 %4950, float %4942, float %4943
  %4957 = select i1 %4948, float %4943, float %4955
  %4958 = select i1 %4948, float %4944, float %4956
  %4959 = select i1 %4950, float %4947, float %4945
  %4960 = select i1 %4950, float %4945, float %4946
  %4961 = select i1 %4948, float %4946, float %4959
  %4962 = select i1 %4948, float %4947, float %4960
  %4963 = call float @dx.op.unary.f32(i32 27, float %4953)  ; Round_ni(value)
  %4964 = call float @dx.op.unary.f32(i32 27, float %4954)  ; Round_ni(value)
  %4965 = fptosi float %4963 to i32
  %4966 = fptosi float %4964 to i32
  %4967 = xor i32 %4966, %4965
  %4968 = sitofp i32 %4967 to float
  %4969 = fptosi float %4968 to i32
  %4970 = sitofp i32 %4969 to float
  %4971 = fmul fast float %4970, 0x3FE3C6EF40000000
  %4972 = frem fast float %4963, 2.560000e+02
  %4973 = frem fast float %4964, 2.560000e+02
  %4974 = fptoui float %4972 to i32
  %4975 = fptoui float %4973 to i32
  %4976 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4974, i32 %4975, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4977 = extractvalue %dx.types.ResRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.ResRet.f32 %4976, 1
  %4979 = extractvalue %dx.types.ResRet.f32 %4976, 2
  %4980 = fadd fast float %4977, %4971
  %4981 = fadd fast float %4978, %4971
  %4982 = fadd fast float %4979, %4971
  %4983 = call float @dx.op.unary.f32(i32 22, float %4980)  ; Frc(value)
  %4984 = call float @dx.op.unary.f32(i32 22, float %4981)  ; Frc(value)
  %4985 = call float @dx.op.unary.f32(i32 22, float %4982)  ; Frc(value)
  %4986 = fmul fast float %4985, 0x401921FB60000000
  %4987 = call float @dx.op.unary.f32(i32 13, float %4986)  ; Sin(value)
  %4988 = call float @dx.op.unary.f32(i32 12, float %4986)  ; Cos(value)
  %4989 = fsub fast float -0.000000e+00, %4988
  %4990 = fmul fast float %4988, %4953
  %4991 = call float @dx.op.tertiary.f32(i32 46, float %4987, float %4954, float %4990)  ; FMad(a,b,c)
  %4992 = fmul fast float %4987, %4953
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4989, float %4954, float %4992)  ; FMad(a,b,c)
  %4994 = fadd fast float %4991, %4983
  %4995 = fadd fast float %4993, %4984
  %4996 = extractvalue %dx.types.CBufRet.f32 %4906, 3
  %4997 = bitcast float %4996 to i32
  %4998 = icmp eq i32 %4997, 0
  br i1 %4998, label %5037, label %4999

; <label>:4999                                    ; preds = %4902
  %5000 = add i32 %4997, 0
  %5001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5001, %dx.types.Handle %103, float %4994, float %4995, float undef, float undef, i32 0, i32 0, i32 undef, float %4957, float %4958, float undef, float %4961, float %4962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5007 = fsub fast float 1.000000e+00, %4896
  %5008 = call float @dx.op.binary.f32(i32 35, float %5007, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5009 = bitcast float %4896 to i32
  %5010 = sitofp i32 %5009 to float
  %5011 = fadd fast float %5010, 0xC1CFBF8940000000
  %5012 = fmul fast float %5006, %5011
  %5013 = fadd fast float %5012, 0x41CFBF8940000000
  %5014 = fptosi float %5013 to i32
  %5015 = bitcast i32 %5014 to float
  %5016 = bitcast float %5008 to i32
  %5017 = sitofp i32 %5016 to float
  %5018 = fadd fast float %5017, 0xC1CFBF8940000000
  %5019 = fmul fast float %5018, %5006
  %5020 = fadd fast float %5019, 0x41CFBF8940000000
  %5021 = fptosi float %5020 to i32
  %5022 = bitcast i32 %5021 to float
  %5023 = fmul fast float %5015, %5005
  %5024 = fmul fast float %5022, %5005
  %5025 = fsub fast float %5008, %5023
  %5026 = fadd fast float %5024, %5008
  %5027 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5028 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5029 = fsub fast float %5003, %5027
  %5030 = fsub fast float %5028, %5027
  %5031 = bitcast float %5030 to i32
  %5032 = sub nsw i32 2129859010, %5031
  %5033 = bitcast i32 %5032 to float
  %5034 = fmul fast float %5033, %5029
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fcmp fast olt float %5035, 0x3F70101020000000
  br i1 %5036, label %5175, label %5037

; <label>:5037                                    ; preds = %4999, %4902
  %5038 = phi float [ %5035, %4999 ], [ %4896, %4902 ]
  %5039 = fmul fast float %5038, %4905
  %5040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.i32 %5040, 1
  %5042 = extractvalue %dx.types.CBufRet.i32 %5040, 0
  %5043 = add i32 %5042, 0
  %5044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5044, %dx.types.Handle %102, float %4994, float %4995, float undef, float undef, i32 0, i32 0, i32 undef, float %4957, float %4958, float undef, float %4961, float %4962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 1
  %5048 = extractvalue %dx.types.ResRet.f32 %5045, 2
  %5049 = extractvalue %dx.types.ResRet.f32 %5045, 3
  %5050 = and i32 %5041, 255
  %5051 = uitofp i32 %5050 to float
  %5052 = lshr i32 %5041, 8
  %5053 = and i32 %5052, 255
  %5054 = uitofp i32 %5053 to float
  %5055 = fmul fast float %5049, %5051
  %5056 = fadd fast float %5055, %5054
  %5057 = fmul fast float %5056, 0x3F70101000000000
  %5058 = fadd fast float %5057, 0xBFB99999A0000000
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fmul fast float %5059, 0x3FF1C71C80000000
  %5061 = call float @dx.op.binary.f32(i32 36, float %5057, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5062 = fsub fast float 1.000000e+00, %5060
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fmul fast float %5063, %5046
  %5065 = fmul fast float %5063, %5047
  %5066 = fmul fast float %5063, %5048
  %5067 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = fmul fast float %5060, %5046
  %5071 = fmul fast float %5060, %5047
  %5072 = fmul fast float %5060, %5048
  %5073 = fadd fast float %5070, %5061
  %5074 = fadd fast float %5071, %5061
  %5075 = fadd fast float %5072, %5061
  %5076 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.i32 %5079, 3
  %5081 = extractvalue %dx.types.CBufRet.i32 %5079, 2
  %5082 = add i32 %5081, 0
  %5083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5084 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5083, %dx.types.Handle %102, float %4994, float %4995, float undef, float undef, i32 0, i32 0, i32 undef, float %4957, float %4958, float undef, float %4961, float %4962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5085 = extractvalue %dx.types.ResRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.ResRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.ResRet.f32 %5084, 2
  %5088 = extractvalue %dx.types.ResRet.f32 %5084, 3
  %5089 = and i32 %5080, 255
  %5090 = uitofp i32 %5089 to float
  %5091 = lshr i32 %5080, 8
  %5092 = and i32 %5091, 255
  %5093 = uitofp i32 %5092 to float
  %5094 = lshr i32 %5080, 16
  %5095 = and i32 %5094, 255
  %5096 = uitofp i32 %5095 to float
  %5097 = fmul fast float %5096, 0x3F70101000000000
  %5098 = fmul fast float %5085, %5090
  %5099 = fadd fast float %5098, %5093
  %5100 = fmul fast float %5099, 0x3F70101000000000
  %5101 = fadd fast float %5086, -5.000000e-01
  %5102 = fadd fast float %5088, -5.000000e-01
  %5103 = fmul fast float %5101, %5097
  %5104 = fmul fast float %5102, %5097
  %5105 = fadd fast float %5103, 5.000000e-01
  %5106 = fadd fast float %5104, 5.000000e-01
  %5107 = fmul fast float %5105, 2.000000e+00
  %5108 = fadd fast float %5107, -1.000000e+00
  %5109 = fmul fast float %5106, 2.000000e+00
  %5110 = fadd fast float %5109, -1.000000e+00
  %5111 = fadd fast float %5108, %5110
  %5112 = fmul fast float %5111, 5.000000e-01
  %5113 = fsub fast float %5108, %5110
  %5114 = fmul fast float %5113, 5.000000e-01
  %5115 = call float @dx.op.unary.f32(i32 6, float %5112)  ; FAbs(value)
  %5116 = fsub fast float 1.000000e+00, %5115
  %5117 = call float @dx.op.unary.f32(i32 6, float %5114)  ; FAbs(value)
  %5118 = fsub fast float %5116, %5117
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5114, float %5118, float %5112, float %5114, float %5118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.unary.f32(i32 25, float %5119)  ; Rsqrt(value)
  %5121 = fmul fast float %5112, %5120
  %5122 = fmul fast float %5114, %5120
  %5123 = select i1 %4950, i32 %4940, i32 %4941
  %5124 = select i1 %4948, i32 %4939, i32 %5123
  %5125 = sitofp i32 %5124 to float
  %5126 = fmul fast float %5118, %5125
  %5127 = fmul fast float %5126, %5120
  %5128 = select i1 %4950, float %5127, float %5122
  %5129 = select i1 %4950, float %5122, float %5127
  %5130 = select i1 %4948, float %5127, float %5121
  %5131 = select i1 %4948, float %5122, float %5128
  %5132 = select i1 %4948, float %5121, float %5129
  %5133 = fsub fast float %5067, %4500
  %5134 = fsub fast float %5068, %4501
  %5135 = fsub fast float %5069, %4502
  %5136 = fmul fast float %5133, %5039
  %5137 = fmul fast float %5134, %5039
  %5138 = fmul fast float %5135, %5039
  %5139 = fadd fast float %5136, %4500
  %5140 = fadd fast float %5137, %4501
  %5141 = fadd fast float %5138, %4502
  %5142 = fsub fast float %5076, %4482
  %5143 = fsub fast float %5077, %4483
  %5144 = fsub fast float %5078, %4484
  %5145 = fmul fast float %5142, %5039
  %5146 = fmul fast float %5143, %5039
  %5147 = fmul fast float %5144, %5039
  %5148 = fadd fast float %5145, %4482
  %5149 = fadd fast float %5146, %4483
  %5150 = fadd fast float %5147, %4484
  %5151 = fadd fast float %5130, %4442
  %5152 = fadd fast float %5131, %4443
  %5153 = fadd fast float %5132, %4444
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %5151, float %5152, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 25, float %5154)  ; Rsqrt(value)
  %5156 = fmul fast float %5151, %5155
  %5157 = fmul fast float %5152, %5155
  %5158 = fmul fast float %5153, %5155
  %5159 = fsub fast float %5156, %4442
  %5160 = fsub fast float %5157, %4443
  %5161 = fsub fast float %5158, %4444
  %5162 = fmul fast float %5159, %5039
  %5163 = fmul fast float %5160, %5039
  %5164 = fmul fast float %5161, %5039
  %5165 = fadd fast float %5162, %4442
  %5166 = fadd fast float %5163, %4443
  %5167 = fadd fast float %5164, %4444
  %5168 = call float @dx.op.binary.f32(i32 36, float %4457, float %5087)  ; FMin(a,b)
  %5169 = fsub fast float %5168, %4457
  %5170 = fmul fast float %5169, %5039
  %5171 = fadd fast float %5170, %4457
  %5172 = fsub fast float %5100, %4485
  %5173 = fmul fast float %5172, %5039
  %5174 = fadd fast float %5173, %4485
  br label %5175

; <label>:5175                                    ; preds = %5037, %4999, %4901
  %5176 = phi float [ %5148, %5037 ], [ %4482, %4999 ], [ %4482, %4901 ]
  %5177 = phi float [ %5149, %5037 ], [ %4483, %4999 ], [ %4483, %4901 ]
  %5178 = phi float [ %5150, %5037 ], [ %4484, %4999 ], [ %4484, %4901 ]
  %5179 = phi float [ %5165, %5037 ], [ %4442, %4999 ], [ %4442, %4901 ]
  %5180 = phi float [ %5166, %5037 ], [ %4443, %4999 ], [ %4443, %4901 ]
  %5181 = phi float [ %5167, %5037 ], [ %4444, %4999 ], [ %4444, %4901 ]
  %5182 = phi float [ %5139, %5037 ], [ %4500, %4999 ], [ %4500, %4901 ]
  %5183 = phi float [ %5140, %5037 ], [ %4501, %4999 ], [ %4501, %4901 ]
  %5184 = phi float [ %5141, %5037 ], [ %4502, %4999 ], [ %4502, %4901 ]
  %5185 = phi float [ %5174, %5037 ], [ %4485, %4999 ], [ %4485, %4901 ]
  %5186 = phi float [ %5171, %5037 ], [ %4457, %4999 ], [ %4457, %4901 ]
  br i1 %4899, label %5187, label %5460

; <label>:5187                                    ; preds = %5175
  %5188 = call float @dx.op.unary.f32(i32 23, float %5186)  ; Log(value)
  %5189 = fmul fast float %5188, 4.000000e+00
  %5190 = call float @dx.op.unary.f32(i32 21, float %5189)  ; Exp(value)
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 0
  %5193 = fmul fast float %5192, %58
  %5194 = fmul fast float %5192, %59
  %5195 = fmul fast float %5192, %60
  %5196 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5197 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5198 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5199 = call float @dx.op.unary.f32(i32 23, float %5196)  ; Log(value)
  %5200 = call float @dx.op.unary.f32(i32 23, float %5197)  ; Log(value)
  %5201 = call float @dx.op.unary.f32(i32 23, float %5198)  ; Log(value)
  %5202 = fmul fast float %5199, 4.000000e+00
  %5203 = fmul fast float %5200, 4.000000e+00
  %5204 = fmul fast float %5201, 4.000000e+00
  %5205 = call float @dx.op.unary.f32(i32 21, float %5202)  ; Exp(value)
  %5206 = call float @dx.op.unary.f32(i32 21, float %5203)  ; Exp(value)
  %5207 = call float @dx.op.unary.f32(i32 21, float %5204)  ; Exp(value)
  %5208 = fadd fast float %5206, %5205
  %5209 = fadd fast float %5208, %5207
  %5210 = fdiv fast float 1.000000e+00, %5209
  %5211 = fmul fast float %5210, %5205
  %5212 = fcmp fast ogt float %67, 0.000000e+00
  %5213 = fcmp fast ogt float %68, 0.000000e+00
  %5214 = fcmp fast ogt float %69, 0.000000e+00
  %5215 = fcmp fast olt float %67, 0.000000e+00
  %5216 = fcmp fast olt float %68, 0.000000e+00
  %5217 = fcmp fast olt float %69, 0.000000e+00
  %5218 = zext i1 %5212 to i32
  %5219 = zext i1 %5213 to i32
  %5220 = zext i1 %5214 to i32
  %5221 = zext i1 %5215 to i32
  %5222 = zext i1 %5216 to i32
  %5223 = zext i1 %5217 to i32
  %5224 = sub nsw i32 %5218, %5221
  %5225 = sub nsw i32 %5219, %5222
  %5226 = sub nsw i32 %5220, %5223
  %5227 = call float @dx.op.unary.f32(i32 83, float %5193)  ; DerivCoarseX(value)
  %5228 = call float @dx.op.unary.f32(i32 83, float %5194)  ; DerivCoarseX(value)
  %5229 = call float @dx.op.unary.f32(i32 83, float %5195)  ; DerivCoarseX(value)
  %5230 = call float @dx.op.unary.f32(i32 84, float %5193)  ; DerivCoarseY(value)
  %5231 = call float @dx.op.unary.f32(i32 84, float %5194)  ; DerivCoarseY(value)
  %5232 = call float @dx.op.unary.f32(i32 84, float %5195)  ; DerivCoarseY(value)
  %5233 = fcmp fast ole float %276, %5211
  %5234 = fmul fast float %5210, %5208
  %5235 = fcmp fast ole float %276, %5234
  %5236 = select i1 %5235, float %5195, float %5193
  %5237 = select i1 %5235, float %5193, float %5194
  %5238 = select i1 %5233, float %5194, float %5236
  %5239 = select i1 %5233, float %5195, float %5237
  %5240 = select i1 %5235, float %5229, float %5227
  %5241 = select i1 %5235, float %5227, float %5228
  %5242 = select i1 %5233, float %5228, float %5240
  %5243 = select i1 %5233, float %5229, float %5241
  %5244 = select i1 %5235, float %5232, float %5230
  %5245 = select i1 %5235, float %5230, float %5231
  %5246 = select i1 %5233, float %5231, float %5244
  %5247 = select i1 %5233, float %5232, float %5245
  %5248 = call float @dx.op.unary.f32(i32 27, float %5238)  ; Round_ni(value)
  %5249 = call float @dx.op.unary.f32(i32 27, float %5239)  ; Round_ni(value)
  %5250 = fptosi float %5248 to i32
  %5251 = fptosi float %5249 to i32
  %5252 = xor i32 %5251, %5250
  %5253 = sitofp i32 %5252 to float
  %5254 = fptosi float %5253 to i32
  %5255 = sitofp i32 %5254 to float
  %5256 = fmul fast float %5255, 0x3FE3C6EF40000000
  %5257 = frem fast float %5248, 2.560000e+02
  %5258 = frem fast float %5249, 2.560000e+02
  %5259 = fptoui float %5257 to i32
  %5260 = fptoui float %5258 to i32
  %5261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5259, i32 %5260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = fadd fast float %5262, %5256
  %5266 = fadd fast float %5263, %5256
  %5267 = fadd fast float %5264, %5256
  %5268 = call float @dx.op.unary.f32(i32 22, float %5265)  ; Frc(value)
  %5269 = call float @dx.op.unary.f32(i32 22, float %5266)  ; Frc(value)
  %5270 = call float @dx.op.unary.f32(i32 22, float %5267)  ; Frc(value)
  %5271 = fmul fast float %5270, 0x401921FB60000000
  %5272 = call float @dx.op.unary.f32(i32 13, float %5271)  ; Sin(value)
  %5273 = call float @dx.op.unary.f32(i32 12, float %5271)  ; Cos(value)
  %5274 = fsub fast float -0.000000e+00, %5273
  %5275 = fmul fast float %5273, %5238
  %5276 = call float @dx.op.tertiary.f32(i32 46, float %5272, float %5239, float %5275)  ; FMad(a,b,c)
  %5277 = fmul fast float %5272, %5238
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5239, float %5277)  ; FMad(a,b,c)
  %5279 = fadd fast float %5276, %5268
  %5280 = fadd fast float %5278, %5269
  %5281 = extractvalue %dx.types.CBufRet.f32 %5191, 3
  %5282 = bitcast float %5281 to i32
  %5283 = icmp eq i32 %5282, 0
  br i1 %5283, label %5322, label %5284

; <label>:5284                                    ; preds = %5187
  %5285 = add i32 %5282, 0
  %5286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5287 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5286, %dx.types.Handle %103, float %5279, float %5280, float undef, float undef, i32 0, i32 0, i32 undef, float %5242, float %5243, float undef, float %5246, float %5247, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5292 = fsub fast float 1.000000e+00, %4897
  %5293 = call float @dx.op.binary.f32(i32 35, float %5292, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5294 = bitcast float %4897 to i32
  %5295 = sitofp i32 %5294 to float
  %5296 = fadd fast float %5295, 0xC1CFBF8940000000
  %5297 = fmul fast float %5291, %5296
  %5298 = fadd fast float %5297, 0x41CFBF8940000000
  %5299 = fptosi float %5298 to i32
  %5300 = bitcast i32 %5299 to float
  %5301 = bitcast float %5293 to i32
  %5302 = sitofp i32 %5301 to float
  %5303 = fadd fast float %5302, 0xC1CFBF8940000000
  %5304 = fmul fast float %5303, %5291
  %5305 = fadd fast float %5304, 0x41CFBF8940000000
  %5306 = fptosi float %5305 to i32
  %5307 = bitcast i32 %5306 to float
  %5308 = fmul fast float %5300, %5290
  %5309 = fmul fast float %5307, %5290
  %5310 = fsub fast float %5293, %5308
  %5311 = fadd fast float %5309, %5293
  %5312 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5314 = fsub fast float %5288, %5312
  %5315 = fsub fast float %5313, %5312
  %5316 = bitcast float %5315 to i32
  %5317 = sub nsw i32 2129859010, %5316
  %5318 = bitcast i32 %5317 to float
  %5319 = fmul fast float %5318, %5314
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fcmp fast olt float %5320, 0x3F70101020000000
  br i1 %5321, label %5460, label %5322

; <label>:5322                                    ; preds = %5284, %5187
  %5323 = phi float [ %5320, %5284 ], [ %4897, %5187 ]
  %5324 = fmul fast float %5323, %5190
  %5325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.i32 %5325, 1
  %5327 = extractvalue %dx.types.CBufRet.i32 %5325, 0
  %5328 = add i32 %5327, 0
  %5329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5330 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5329, %dx.types.Handle %102, float %5279, float %5280, float undef, float undef, i32 0, i32 0, i32 undef, float %5242, float %5243, float undef, float %5246, float %5247, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5330, 2
  %5334 = extractvalue %dx.types.ResRet.f32 %5330, 3
  %5335 = and i32 %5326, 255
  %5336 = uitofp i32 %5335 to float
  %5337 = lshr i32 %5326, 8
  %5338 = and i32 %5337, 255
  %5339 = uitofp i32 %5338 to float
  %5340 = fmul fast float %5334, %5336
  %5341 = fadd fast float %5340, %5339
  %5342 = fmul fast float %5341, 0x3F70101000000000
  %5343 = fadd fast float %5342, 0xBFB99999A0000000
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, 0x3FF1C71C80000000
  %5346 = call float @dx.op.binary.f32(i32 36, float %5342, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5347 = fsub fast float 1.000000e+00, %5345
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = fmul fast float %5348, %5331
  %5350 = fmul fast float %5348, %5332
  %5351 = fmul fast float %5348, %5333
  %5352 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5353 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5354 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5355 = fmul fast float %5345, %5331
  %5356 = fmul fast float %5345, %5332
  %5357 = fmul fast float %5345, %5333
  %5358 = fadd fast float %5355, %5346
  %5359 = fadd fast float %5356, %5346
  %5360 = fadd fast float %5357, %5346
  %5361 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.i32 %5364, 3
  %5366 = extractvalue %dx.types.CBufRet.i32 %5364, 2
  %5367 = add i32 %5366, 0
  %5368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5367, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5368, %dx.types.Handle %102, float %5279, float %5280, float undef, float undef, i32 0, i32 0, i32 undef, float %5242, float %5243, float undef, float %5246, float %5247, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = extractvalue %dx.types.ResRet.f32 %5369, 3
  %5374 = and i32 %5365, 255
  %5375 = uitofp i32 %5374 to float
  %5376 = lshr i32 %5365, 8
  %5377 = and i32 %5376, 255
  %5378 = uitofp i32 %5377 to float
  %5379 = lshr i32 %5365, 16
  %5380 = and i32 %5379, 255
  %5381 = uitofp i32 %5380 to float
  %5382 = fmul fast float %5381, 0x3F70101000000000
  %5383 = fmul fast float %5370, %5375
  %5384 = fadd fast float %5383, %5378
  %5385 = fmul fast float %5384, 0x3F70101000000000
  %5386 = fadd fast float %5371, -5.000000e-01
  %5387 = fadd fast float %5373, -5.000000e-01
  %5388 = fmul fast float %5386, %5382
  %5389 = fmul fast float %5387, %5382
  %5390 = fadd fast float %5388, 5.000000e-01
  %5391 = fadd fast float %5389, 5.000000e-01
  %5392 = fmul fast float %5390, 2.000000e+00
  %5393 = fadd fast float %5392, -1.000000e+00
  %5394 = fmul fast float %5391, 2.000000e+00
  %5395 = fadd fast float %5394, -1.000000e+00
  %5396 = fadd fast float %5393, %5395
  %5397 = fmul fast float %5396, 5.000000e-01
  %5398 = fsub fast float %5393, %5395
  %5399 = fmul fast float %5398, 5.000000e-01
  %5400 = call float @dx.op.unary.f32(i32 6, float %5397)  ; FAbs(value)
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = call float @dx.op.unary.f32(i32 6, float %5399)  ; FAbs(value)
  %5403 = fsub fast float %5401, %5402
  %5404 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5399, float %5403, float %5397, float %5399, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5405 = call float @dx.op.unary.f32(i32 25, float %5404)  ; Rsqrt(value)
  %5406 = fmul fast float %5397, %5405
  %5407 = fmul fast float %5399, %5405
  %5408 = select i1 %5235, i32 %5225, i32 %5226
  %5409 = select i1 %5233, i32 %5224, i32 %5408
  %5410 = sitofp i32 %5409 to float
  %5411 = fmul fast float %5403, %5410
  %5412 = fmul fast float %5411, %5405
  %5413 = select i1 %5235, float %5412, float %5407
  %5414 = select i1 %5235, float %5407, float %5412
  %5415 = select i1 %5233, float %5412, float %5406
  %5416 = select i1 %5233, float %5407, float %5413
  %5417 = select i1 %5233, float %5406, float %5414
  %5418 = fsub fast float %5352, %5182
  %5419 = fsub fast float %5353, %5183
  %5420 = fsub fast float %5354, %5184
  %5421 = fmul fast float %5418, %5324
  %5422 = fmul fast float %5419, %5324
  %5423 = fmul fast float %5420, %5324
  %5424 = fadd fast float %5421, %5182
  %5425 = fadd fast float %5422, %5183
  %5426 = fadd fast float %5423, %5184
  %5427 = fsub fast float %5361, %5176
  %5428 = fsub fast float %5362, %5177
  %5429 = fsub fast float %5363, %5178
  %5430 = fmul fast float %5427, %5324
  %5431 = fmul fast float %5428, %5324
  %5432 = fmul fast float %5429, %5324
  %5433 = fadd fast float %5430, %5176
  %5434 = fadd fast float %5431, %5177
  %5435 = fadd fast float %5432, %5178
  %5436 = fadd fast float %5415, %5179
  %5437 = fadd fast float %5416, %5180
  %5438 = fadd fast float %5417, %5181
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = call float @dx.op.unary.f32(i32 25, float %5439)  ; Rsqrt(value)
  %5441 = fmul fast float %5436, %5440
  %5442 = fmul fast float %5437, %5440
  %5443 = fmul fast float %5438, %5440
  %5444 = fsub fast float %5441, %5179
  %5445 = fsub fast float %5442, %5180
  %5446 = fsub fast float %5443, %5181
  %5447 = fmul fast float %5444, %5324
  %5448 = fmul fast float %5445, %5324
  %5449 = fmul fast float %5446, %5324
  %5450 = fadd fast float %5447, %5179
  %5451 = fadd fast float %5448, %5180
  %5452 = fadd fast float %5449, %5181
  %5453 = call float @dx.op.binary.f32(i32 36, float %5186, float %5372)  ; FMin(a,b)
  %5454 = fsub fast float %5453, %5186
  %5455 = fmul fast float %5454, %5324
  %5456 = fadd fast float %5455, %5186
  %5457 = fsub fast float %5385, %5185
  %5458 = fmul fast float %5457, %5324
  %5459 = fadd fast float %5458, %5185
  br label %5460

; <label>:5460                                    ; preds = %5322, %5284, %5175, %4891
  %5461 = phi float [ %5433, %5322 ], [ %5176, %5284 ], [ %5176, %5175 ], [ %4482, %4891 ]
  %5462 = phi float [ %5434, %5322 ], [ %5177, %5284 ], [ %5177, %5175 ], [ %4483, %4891 ]
  %5463 = phi float [ %5435, %5322 ], [ %5178, %5284 ], [ %5178, %5175 ], [ %4484, %4891 ]
  %5464 = phi float [ %5450, %5322 ], [ %5179, %5284 ], [ %5179, %5175 ], [ %4442, %4891 ]
  %5465 = phi float [ %5451, %5322 ], [ %5180, %5284 ], [ %5180, %5175 ], [ %4443, %4891 ]
  %5466 = phi float [ %5452, %5322 ], [ %5181, %5284 ], [ %5181, %5175 ], [ %4444, %4891 ]
  %5467 = phi float [ %5424, %5322 ], [ %5182, %5284 ], [ %5182, %5175 ], [ %4500, %4891 ]
  %5468 = phi float [ %5425, %5322 ], [ %5183, %5284 ], [ %5183, %5175 ], [ %4501, %4891 ]
  %5469 = phi float [ %5426, %5322 ], [ %5184, %5284 ], [ %5184, %5175 ], [ %4502, %4891 ]
  %5470 = phi float [ %5459, %5322 ], [ %5185, %5284 ], [ %5185, %5175 ], [ %4485, %4891 ]
  %5471 = phi float [ %5456, %5322 ], [ %5186, %5284 ], [ %5186, %5175 ], [ %4457, %4891 ]
  %5472 = fcmp fast une float %4895, 0.000000e+00
  %5473 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 25, float %5473)  ; Rsqrt(value)
  br i1 %5472, label %5482, label %5475

; <label>:5475                                    ; preds = %5460
  %5476 = fmul fast float %5474, %193
  %5477 = fmul fast float %5474, %194
  %5478 = fmul fast float %5474, %195
  %5479 = fsub fast float -0.000000e+00, %5476
  %5480 = fsub fast float -0.000000e+00, %5477
  %5481 = fsub fast float -0.000000e+00, %5478
  br label %5649

; <label>:5482                                    ; preds = %5460
  %5483 = fmul fast float %193, %5474
  %5484 = fsub fast float -0.000000e+00, %5483
  %5485 = fmul fast float %194, %5474
  %5486 = fsub fast float -0.000000e+00, %5485
  %5487 = fmul fast float %195, %5474
  %5488 = fsub fast float -0.000000e+00, %5487
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5486, float %5488, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fmul fast float %4895, 2.500000e+00
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fmul fast float %4895, 0x4013FFFFE0000000
  %5493 = fadd fast float %5492, 0xBFFFFFFFE0000000
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %4895, 0x4004000020000000
  %5496 = fadd fast float %5495, 0xBFF8000040000000
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = fmul fast float %4464, 1.000000e+01
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fmul fast float %5499, 2.000000e+00
  %5501 = fsub fast float 3.000000e+00, %5500
  %5502 = fmul fast float %5499, %5499
  %5503 = fmul fast float %5502, %5501
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = fsub fast float 0x3FE3333340000000, %5470
  %5506 = fmul fast float %5505, 0x400AAAAAA0000000
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5508 = fmul fast float %5504, %5507
  %5509 = fmul fast float %5467, 0x3FEA2B8620000000
  %5510 = fmul fast float %5468, 0x3FEA2B8620000000
  %5511 = fmul fast float %5469, 0x3FEA2B8620000000
  %5512 = fadd fast float %5509, 0x3FC81DFBA0000000
  %5513 = fmul fast float %5512, %5467
  %5514 = fadd fast float %5513, 0x3F910E6020000000
  %5515 = fadd fast float %5510, 0x3FC81DFBA0000000
  %5516 = fmul fast float %5515, %5468
  %5517 = fadd fast float %5516, 0x3F910E6020000000
  %5518 = fadd fast float %5511, 0x3FC81DFBA0000000
  %5519 = fmul fast float %5518, %5469
  %5520 = fadd fast float %5519, 0x3F910E6020000000
  %5521 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5522 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5523 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5524 = fsub fast float %5521, %5467
  %5525 = fsub fast float %5522, %5468
  %5526 = fsub fast float %5523, %5469
  %5527 = fmul fast float %5524, %5491
  %5528 = fmul fast float %5527, %5508
  %5529 = fmul fast float %5525, %5491
  %5530 = fmul fast float %5529, %5508
  %5531 = fmul fast float %5526, %5491
  %5532 = fmul fast float %5531, %5508
  %5533 = fadd fast float %5528, %5467
  %5534 = fadd fast float %5530, %5468
  %5535 = fadd fast float %5532, %5469
  %5536 = fmul fast float %5471, %5471
  %5537 = fmul fast float %5536, %5536
  %5538 = fadd fast float %5494, 1.000000e+00
  %5539 = fsub fast float %5538, %5508
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = fsub fast float 1.000000e+00, %5537
  %5544 = call float @dx.op.binary.f32(i32 36, float %5540, float %5543)  ; FMin(a,b)
  %5545 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5546 = call float @dx.op.binary.f32(i32 35, float %5544, float %5545)  ; FMax(a,b)
  %5547 = fadd fast float %5542, 0xBFE4CCCCC0000000
  %5548 = fmul fast float %5547, 0x4006DB6DA0000000
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = fmul fast float %5549, 2.000000e+00
  %5551 = fsub fast float 3.000000e+00, %5550
  %5552 = bitcast float %5461 to i32
  %5553 = ashr i32 %5552, 1
  %5554 = add nsw i32 %5553, 532487669
  %5555 = bitcast i32 %5554 to float
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = bitcast float %5556 to i32
  %5558 = sub nsw i32 2129859010, %5557
  %5559 = bitcast i32 %5558 to float
  %5560 = fmul fast float %5559, 2.000000e+00
  %5561 = bitcast float %5462 to i32
  %5562 = ashr i32 %5561, 1
  %5563 = add nsw i32 %5562, 532487669
  %5564 = bitcast i32 %5563 to float
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = bitcast float %5565 to i32
  %5567 = sub nsw i32 2129859010, %5566
  %5568 = bitcast i32 %5567 to float
  %5569 = fmul fast float %5568, 2.000000e+00
  %5570 = bitcast float %5463 to i32
  %5571 = ashr i32 %5570, 1
  %5572 = add nsw i32 %5571, 532487669
  %5573 = bitcast i32 %5572 to float
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = bitcast float %5574 to i32
  %5576 = sub nsw i32 2129859010, %5575
  %5577 = bitcast i32 %5576 to float
  %5578 = fmul fast float %5577, 2.000000e+00
  %5579 = fsub fast float 0x4002A9FBE0000000, %5560
  %5580 = fadd fast float %5560, 0x3FD54FDF00000000
  %5581 = bitcast float %5580 to i32
  %5582 = sub nsw i32 2129859010, %5581
  %5583 = bitcast i32 %5582 to float
  %5584 = fmul fast float %5583, %5579
  %5585 = fmul fast float %5584, %5584
  %5586 = fsub fast float 0x4002A9FBE0000000, %5569
  %5587 = fadd fast float %5569, 0x3FD54FDF00000000
  %5588 = bitcast float %5587 to i32
  %5589 = sub nsw i32 2129859010, %5588
  %5590 = bitcast i32 %5589 to float
  %5591 = fmul fast float %5590, %5586
  %5592 = fmul fast float %5591, %5591
  %5593 = fsub fast float 0x4002A9FBE0000000, %5578
  %5594 = fadd fast float %5578, 0x3FD54FDF00000000
  %5595 = bitcast float %5594 to i32
  %5596 = sub nsw i32 2129859010, %5595
  %5597 = bitcast i32 %5596 to float
  %5598 = fmul fast float %5597, %5593
  %5599 = fmul fast float %5598, %5598
  %5600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5585)  ; FMax(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5592)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5599)  ; FMax(a,b)
  %5603 = fsub fast float 1.000000e+00, %5489
  %5604 = fadd fast float %5603, %5504
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fsub fast float 1.000000e+00, %4876
  %5607 = fmul fast float %5546, %5606
  %5608 = fmul fast float %5549, %5549
  %5609 = fmul fast float %5608, %5607
  %5610 = fmul fast float %5609, %5551
  %5611 = fmul fast float %5606, 0xBFE99999A0000000
  %5612 = fmul fast float %5611, %5491
  %5613 = fmul fast float %5612, %5508
  %5614 = fadd fast float %5613, 1.000000e+00
  %5615 = fadd fast float %5470, -1.000000e+00
  %5616 = fmul fast float %5614, %5615
  %5617 = fadd fast float %5616, 1.000000e+00
  %5618 = fsub fast float %5600, %5461
  %5619 = fsub fast float %5601, %5462
  %5620 = fsub fast float %5602, %5463
  %5621 = fmul fast float %5610, %5618
  %5622 = fmul fast float %5610, %5619
  %5623 = fmul fast float %5610, %5620
  %5624 = fadd fast float %5621, %5461
  %5625 = fadd fast float %5622, %5462
  %5626 = fadd fast float %5623, %5463
  %5627 = fsub fast float %113, %5464
  %5628 = fsub fast float %114, %5465
  %5629 = fsub fast float %115, %5466
  %5630 = fmul fast float %5610, %5627
  %5631 = fmul fast float %5610, %5628
  %5632 = fmul fast float %5610, %5629
  %5633 = fadd fast float %5630, %5464
  %5634 = fadd fast float %5631, %5465
  %5635 = fadd fast float %5632, %5466
  %5636 = fmul fast float %5610, %5605
  %5637 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5638 = fsub fast float 1.000000e+00, %5637
  %5639 = fmul fast float %5636, %5638
  %5640 = fadd fast float %5639, %5637
  %5641 = fsub fast float 1.000000e+00, %5471
  %5642 = fmul fast float %5610, %5641
  %5643 = fadd fast float %5642, %5471
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5634, float %5635, float %5633, float %5634, float %5635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.unary.f32(i32 25, float %5644)  ; Rsqrt(value)
  %5646 = fmul fast float %5633, %5645
  %5647 = fmul fast float %5634, %5645
  %5648 = fmul fast float %5635, %5645
  br label %5649

; <label>:5649                                    ; preds = %5482, %5475
  %5650 = phi float [ %5481, %5475 ], [ %5488, %5482 ]
  %5651 = phi float [ %5480, %5475 ], [ %5486, %5482 ]
  %5652 = phi float [ %5479, %5475 ], [ %5484, %5482 ]
  %5653 = phi float [ %5478, %5475 ], [ %5487, %5482 ]
  %5654 = phi float [ %5477, %5475 ], [ %5485, %5482 ]
  %5655 = phi float [ %5476, %5475 ], [ %5483, %5482 ]
  %5656 = phi float [ %5461, %5475 ], [ %5624, %5482 ]
  %5657 = phi float [ %5462, %5475 ], [ %5625, %5482 ]
  %5658 = phi float [ %5463, %5475 ], [ %5626, %5482 ]
  %5659 = phi float [ %5464, %5475 ], [ %5646, %5482 ]
  %5660 = phi float [ %5465, %5475 ], [ %5647, %5482 ]
  %5661 = phi float [ %5466, %5475 ], [ %5648, %5482 ]
  %5662 = phi float [ %5467, %5475 ], [ %5533, %5482 ]
  %5663 = phi float [ %5468, %5475 ], [ %5534, %5482 ]
  %5664 = phi float [ %5469, %5475 ], [ %5535, %5482 ]
  %5665 = phi float [ %5470, %5475 ], [ %5640, %5482 ]
  %5666 = phi float [ %5471, %5475 ], [ %5643, %5482 ]
  %5667 = fsub fast float -0.000000e+00, %195
  %5668 = select i1 %265, float 0.000000e+00, float %5658
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5652, float %5651, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5655, float %5654, float %5653, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = fmul fast float %5671, 2.000000e+00
  %5673 = fmul fast float %5672, %5659
  %5674 = fmul fast float %5672, %5660
  %5675 = fmul fast float %5672, %5661
  %5676 = fsub fast float %5655, %5673
  %5677 = fsub fast float %5654, %5674
  %5678 = fsub fast float %5653, %5675
  %5679 = call float @dx.op.binary.f32(i32 36, float %5666, float 1.000000e+00)  ; FMin(a,b)
  %5680 = fsub fast float 1.000000e+00, %5666
  %5681 = bitcast float %5680 to i32
  %5682 = sub nsw i32 2129859010, %5681
  %5683 = bitcast i32 %5682 to float
  %5684 = fsub fast float 1.000000e+00, %77
  %5685 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5685, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5687 = fdiv fast float %5684, %5686
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %5689, 5.000000e-01
  %5691 = fadd fast float %5690, 5.000000e-01
  %5692 = fmul fast float %5691, %77
  %5693 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5687
  %5696 = fadd fast float %5692, %5695
  %5697 = fsub fast float 5.000000e-01, %5690
  %5698 = fmul fast float %5697, %5662
  %5699 = fmul fast float %5697, %5663
  %5700 = fmul fast float %5697, %5664
  %5701 = fadd fast float %5696, %5698
  %5702 = fadd fast float %5696, %5699
  %5703 = fadd fast float %5696, %5700
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5677, float %5678, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fmul fast float %5705, 5.000000e-01
  %5707 = fadd fast float %5706, 5.000000e-01
  %5708 = fmul fast float %5707, %77
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5677, float %5678, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = fmul fast float %5710, %5687
  %5712 = fadd fast float %5708, %5711
  %5713 = fsub fast float 5.000000e-01, %5706
  %5714 = fmul fast float %5713, %5662
  %5715 = fmul fast float %5713, %5663
  %5716 = fmul fast float %5713, %5664
  %5717 = fadd fast float %5712, %5714
  %5718 = fadd fast float %5712, %5715
  %5719 = fadd fast float %5712, %5716
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = call float @dx.op.binary.f32(i32 36, float %5662, float %5721)  ; FMin(a,b)
  %5723 = fsub fast float 1.000000e+00, %5679
  %5724 = fmul fast float %5722, %5723
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = bitcast float %5725 to i32
  %5727 = sub nsw i32 2129859010, %5726
  %5728 = bitcast i32 %5727 to float
  %5729 = call float @dx.op.binary.f32(i32 36, float %5663, float %5721)  ; FMin(a,b)
  %5730 = fmul fast float %5729, %5723
  %5731 = fsub fast float 1.000000e+00, %5730
  %5732 = bitcast float %5731 to i32
  %5733 = sub nsw i32 2129859010, %5732
  %5734 = bitcast i32 %5733 to float
  %5735 = call float @dx.op.binary.f32(i32 36, float %5664, float %5721)  ; FMin(a,b)
  %5736 = fmul fast float %5735, %5723
  %5737 = fsub fast float 1.000000e+00, %5736
  %5738 = bitcast float %5737 to i32
  %5739 = sub nsw i32 2129859010, %5738
  %5740 = bitcast i32 %5739 to float
  %5741 = fmul fast float %5679, %78
  %5742 = fmul fast float %5741, %5701
  %5743 = fmul fast float %5742, %5728
  %5744 = fmul fast float %5679, %79
  %5745 = fmul fast float %5744, %5702
  %5746 = fmul fast float %5745, %5734
  %5747 = fmul fast float %5679, %80
  %5748 = fmul fast float %5747, %5703
  %5749 = fmul fast float %5748, %5740
  %5750 = call float @dx.op.binary.f32(i32 36, float %5656, float %5721)  ; FMin(a,b)
  %5751 = fmul fast float %5750, %5723
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = bitcast float %5752 to i32
  %5754 = sub nsw i32 2129859010, %5753
  %5755 = bitcast i32 %5754 to float
  %5756 = call float @dx.op.binary.f32(i32 36, float %5657, float %5721)  ; FMin(a,b)
  %5757 = fmul fast float %5756, %5723
  %5758 = fsub fast float 1.000000e+00, %5757
  %5759 = bitcast float %5758 to i32
  %5760 = sub nsw i32 2129859010, %5759
  %5761 = bitcast i32 %5760 to float
  %5762 = call float @dx.op.binary.f32(i32 36, float %5668, float %5721)  ; FMin(a,b)
  %5763 = fmul fast float %5762, %5723
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = bitcast float %5764 to i32
  %5766 = sub nsw i32 2129859010, %5765
  %5767 = bitcast i32 %5766 to float
  %5768 = fmul fast float %5741, %5717
  %5769 = fmul fast float %5768, %5755
  %5770 = fmul fast float %5744, %5718
  %5771 = fmul fast float %5770, %5761
  %5772 = fmul fast float %5747, %5719
  %5773 = fmul fast float %5772, %5767
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5743, float %5746, float %5749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = select i1 %265, float 0.000000e+00, float %5743
  %5776 = select i1 %265, float %5774, float %5746
  %5777 = select i1 %265, float 0.000000e+00, float %5749
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5771, float %5773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = select i1 %265, float 0.000000e+00, float %5769
  %5780 = select i1 %265, float %5778, float %5771
  %5781 = select i1 %265, float 0.000000e+00, float %5773
  %5782 = fmul fast float %3814, %3814
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = fmul fast float %5670, 9.843750e-01
  %5785 = fmul fast float %5665, 9.843750e-01
  %5786 = fadd fast float %5784, 7.812500e-03
  %5787 = fadd fast float %5785, 7.812500e-03
  %5788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5786, float %5787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5792 = extractvalue %dx.types.ResRet.f32 %5788, 3
  %5793 = fsub fast float 1.000000e+00, %5783
  %5794 = fsub fast float %5791, %5789
  %5795 = fsub fast float %5792, %5790
  %5796 = fmul fast float %5794, %5793
  %5797 = fmul fast float %5795, %5793
  %5798 = fadd fast float %5796, %5789
  %5799 = fadd fast float %5797, %5790
  %5800 = fmul fast float %5798, %5656
  %5801 = fmul fast float %5798, %5657
  %5802 = fmul fast float %5798, %5668
  %5803 = fadd fast float %5800, %5799
  %5804 = fadd fast float %5801, %5799
  %5805 = fadd fast float %5802, %5799
  %5806 = fcmp fast ogt float %4458, 0.000000e+00
  br i1 %5806, label %5807, label %5833

; <label>:5807                                    ; preds = %5649
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4458, float %5670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = fadd fast float %5809, -5.000000e-01
  %5813 = fadd fast float %5810, -5.000000e-01
  %5814 = fadd fast float %5811, -5.000000e-01
  %5815 = fsub fast float 1.000000e+00, %5656
  %5816 = fsub fast float 1.000000e+00, %5657
  %5817 = fsub fast float 1.000000e+00, %5668
  %5818 = fmul fast float %5656, 4.000000e+00
  %5819 = fmul fast float %5818, %5815
  %5820 = fmul fast float %5819, %5812
  %5821 = fmul fast float %5657, 4.000000e+00
  %5822 = fmul fast float %5821, %5816
  %5823 = fmul fast float %5822, %5813
  %5824 = fmul fast float %5668, 4.000000e+00
  %5825 = fmul fast float %5824, %5817
  %5826 = fmul fast float %5825, %5814
  %5827 = fadd fast float %5820, %5803
  %5828 = fadd fast float %5823, %5804
  %5829 = fadd fast float %5826, %5805
  %5830 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5831 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5832 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  br label %5833

; <label>:5833                                    ; preds = %5807, %5649
  %5834 = phi float [ %5830, %5807 ], [ %5803, %5649 ]
  %5835 = phi float [ %5831, %5807 ], [ %5804, %5649 ]
  %5836 = phi float [ %5832, %5807 ], [ %5805, %5649 ]
  %5837 = call float @dx.op.binary.f32(i32 35, float %5835, float %5836)  ; FMax(a,b)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5834, float %5837)  ; FMax(a,b)
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = fmul fast float %5839, %5775
  %5841 = fmul fast float %5839, %5776
  %5842 = fmul fast float %5839, %5777
  %5843 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %5664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5844 = fcmp fast ogt float %5843, 0x3E7FF19E20000000
  %5845 = fdiv fast float 1.000000e+00, %5843
  %5846 = select i1 %5844, float %5845, float 0.000000e+00
  %5847 = fmul fast float %5846, %5662
  %5848 = fmul fast float %5846, %5663
  %5849 = fmul fast float %5846, %5664
  %5850 = fadd fast float %5847, -1.000000e+00
  %5851 = fadd fast float %5848, -1.000000e+00
  %5852 = fadd fast float %5849, -1.000000e+00
  %5853 = fmul fast float %5850, 5.000000e-01
  %5854 = fmul fast float %5851, 5.000000e-01
  %5855 = fmul fast float %5852, 5.000000e-01
  %5856 = fadd fast float %5853, 1.000000e+00
  %5857 = fadd fast float %5854, 1.000000e+00
  %5858 = fadd fast float %5855, 1.000000e+00
  %5859 = call float @dx.op.binary.f32(i32 35, float %5670, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5860 = fdiv fast float %3814, %5859
  %5861 = fcmp fast olt float %4486, 1.270000e+02
  %5862 = fcmp fast olt float %4487, 1.270000e+02
  %5863 = fcmp fast olt float %4488, 1.270000e+02
  %5864 = fmul fast float %4486, 0xBFF7154760000000
  %5865 = fmul fast float %5864, %5860
  %5866 = fmul fast float %4487, 0xBFF7154760000000
  %5867 = fmul fast float %5866, %5860
  %5868 = fmul fast float %4488, 0xBFF7154760000000
  %5869 = fmul fast float %5868, %5860
  %5870 = call float @dx.op.unary.f32(i32 21, float %5865)  ; Exp(value)
  %5871 = call float @dx.op.unary.f32(i32 21, float %5867)  ; Exp(value)
  %5872 = call float @dx.op.unary.f32(i32 21, float %5869)  ; Exp(value)
  %5873 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5874 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5875 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5876 = select i1 %5861, float %5873, float 0.000000e+00
  %5877 = select i1 %5862, float %5874, float 0.000000e+00
  %5878 = select i1 %5863, float %5875, float 0.000000e+00
  %5879 = fmul fast float %5876, %5839
  %5880 = fmul fast float %5877, %5839
  %5881 = fmul fast float %5878, %5839
  %5882 = fadd fast float %5879, -1.000000e+00
  %5883 = fadd fast float %5880, -1.000000e+00
  %5884 = fadd fast float %5881, -1.000000e+00
  %5885 = fmul fast float %5834, %5779
  %5886 = fmul fast float %5835, %5780
  %5887 = fmul fast float %5836, %5781
  %5888 = fsub fast float 1.000000e+00, %5670
  %5889 = bitcast float %5888 to i32
  %5890 = sitofp i32 %5889 to float
  %5891 = fmul fast float %5890, 5.000000e+00
  %5892 = fadd fast float %5891, 0xC1EFBF8940000000
  %5893 = fptosi float %5892 to i32
  %5894 = bitcast i32 %5893 to float
  %5895 = fmul fast float %5894, %4459
  %5896 = fmul fast float %5775, %5895
  %5897 = fmul fast float %5896, %5839
  %5898 = fmul fast float %5897, %5856
  %5899 = fmul fast float %5776, %5895
  %5900 = fmul fast float %5899, %5839
  %5901 = fmul fast float %5900, %5857
  %5902 = fmul fast float %5777, %5895
  %5903 = fmul fast float %5902, %5839
  %5904 = fmul fast float %5903, %5858
  %5905 = fmul fast float %5840, %4455
  %5906 = fmul fast float %5841, %4455
  %5907 = fmul fast float %5842, %4455
  %5908 = fadd fast float %5885, %4448
  %5909 = fadd fast float %5908, %5898
  %5910 = fmul fast float %5909, %4455
  %5911 = fadd fast float %5886, %4449
  %5912 = fadd fast float %5911, %5901
  %5913 = fmul fast float %5912, %4455
  %5914 = fadd fast float %5887, %4450
  %5915 = fadd fast float %5914, %5904
  %5916 = fmul fast float %5915, %4455
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5919 = fcmp fast oeq float %5918, 0.000000e+00
  br i1 %5919, label %7016, label %5920

; <label>:5920                                    ; preds = %5833
  %5921 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5926, float %5927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = select i1 %265, float %5929, float %5925
  %5933 = select i1 %265, float %5931, float %5926
  %5934 = select i1 %265, float %5930, float %5927
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5937 = fmul fast float %5936, %113
  %5938 = fmul fast float %5936, %114
  %5939 = fmul fast float %5936, %115
  %5940 = fadd fast float %5937, %193
  %5941 = fadd fast float %5938, %194
  %5942 = fadd fast float %5939, %195
  %5943 = fcmp fast olt float %5918, 0.000000e+00
  br i1 %5943, label %6583, label %5944

; <label>:5944                                    ; preds = %5920
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.CBufRet.f32 %5955, 3
  %5960 = fmul fast float %5946, %5940
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %5947, float %5960)  ; FMad(a,b,c)
  %5962 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %5948, float %5961)  ; FMad(a,b,c)
  %5963 = fadd fast float %5962, %5949
  %5964 = fmul fast float %5951, %5940
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %5952, float %5964)  ; FMad(a,b,c)
  %5966 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %5953, float %5965)  ; FMad(a,b,c)
  %5967 = fadd fast float %5966, %5954
  %5968 = fmul fast float %5956, %5940
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %5957, float %5968)  ; FMad(a,b,c)
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %5958, float %5969)  ; FMad(a,b,c)
  %5971 = fadd fast float %5970, %5959
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = fcmp fast une float %5973, 0.000000e+00
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.CBufRet.f32 %5975, 3
  %5979 = fmul fast float %5978, %5963
  %5980 = fmul fast float %5978, %5967
  %5981 = fadd fast float %5979, %5976
  %5982 = fadd fast float %5980, %5977
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5987 = fmul fast float %5986, %5963
  %5988 = fmul fast float %5986, %5967
  %5989 = fadd fast float %5987, %5984
  %5990 = fadd fast float %5988, %5985
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5993 = fsub fast float %5992, %5971
  %5994 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5995 = fmul fast float %5993, %5994
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  br i1 %5974, label %6058, label %5998

; <label>:5998                                    ; preds = %5944
  %5999 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6002 = fadd fast float %6001, %5999
  %6003 = fcmp fast ogt float %6002, 0.000000e+00
  br i1 %6003, label %6004, label %6028

; <label>:6004                                    ; preds = %5998
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.CBufRet.f32 %6005, 1
  %6008 = fsub fast float %5989, %6006
  %6009 = fsub fast float %5990, %6007
  %6010 = fcmp fast olt float %6008, 0.000000e+00
  %6011 = fcmp fast olt float %6009, 0.000000e+00
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6016 = extractvalue %dx.types.CBufRet.f32 %6012, 3
  %6017 = select i1 %6010, float %6013, float %6015
  %6018 = select i1 %6011, float %6014, float %6016
  %6019 = fmul fast float %6017, %6008
  %6020 = fmul fast float %6018, %6009
  %6021 = call float @dx.op.unary.f32(i32 6, float %6019)  ; FAbs(value)
  %6022 = call float @dx.op.unary.f32(i32 6, float %6020)  ; FAbs(value)
  %6023 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %6024 = call float @dx.op.binary.f32(i32 35, float %6021, float %6022)  ; FMax(a,b)
  %6025 = fsub fast float %6023, %6024
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = fmul fast float %6026, %5997
  br label %6028

; <label>:6028                                    ; preds = %6004, %5998
  %6029 = phi float [ %6027, %6004 ], [ 0.000000e+00, %5998 ]
  %6030 = extractvalue %dx.types.CBufRet.f32 %5975, 2
  %6031 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6032 = fadd fast float %6031, %6030
  %6033 = fcmp fast ogt float %6032, 0.000000e+00
  br i1 %6033, label %6034, label %6058

; <label>:6034                                    ; preds = %6028
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = fsub fast float %5981, %6036
  %6039 = fsub fast float %5982, %6037
  %6040 = fcmp fast olt float %6038, 0.000000e+00
  %6041 = fcmp fast olt float %6039, 0.000000e+00
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6046 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6047 = select i1 %6040, float %6043, float %6045
  %6048 = select i1 %6041, float %6044, float %6046
  %6049 = fmul fast float %6047, %6038
  %6050 = fmul fast float %6048, %6039
  %6051 = call float @dx.op.unary.f32(i32 6, float %6049)  ; FAbs(value)
  %6052 = call float @dx.op.unary.f32(i32 6, float %6050)  ; FAbs(value)
  %6053 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %6054 = call float @dx.op.binary.f32(i32 35, float %6051, float %6052)  ; FMax(a,b)
  %6055 = fsub fast float %6053, %6054
  %6056 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6057 = fmul fast float %6056, %5997
  br label %6058

; <label>:6058                                    ; preds = %6034, %6028, %5944
  %6059 = phi float [ 0.000000e+00, %5944 ], [ %6057, %6034 ], [ 0.000000e+00, %6028 ]
  %6060 = phi float [ 0.000000e+00, %5944 ], [ %6029, %6034 ], [ %6029, %6028 ]
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 1
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = fsub fast float %5963, %6065
  %6068 = fsub fast float %5967, %6066
  %6069 = fcmp fast olt float %6067, 0.000000e+00
  %6070 = fcmp fast olt float %6068, 0.000000e+00
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6074 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6075 = extractvalue %dx.types.CBufRet.f32 %6071, 3
  %6076 = select i1 %6069, float %6072, float %6074
  %6077 = select i1 %6070, float %6073, float %6075
  %6078 = fmul fast float %6076, %6067
  %6079 = fmul fast float %6077, %6068
  %6080 = call float @dx.op.unary.f32(i32 6, float %6078)  ; FAbs(value)
  %6081 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6082 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %6083 = call float @dx.op.binary.f32(i32 35, float %6080, float %6081)  ; FMax(a,b)
  %6084 = fsub fast float %6082, %6083
  %6085 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6086 = call float @dx.op.binary.f32(i32 36, float %6085, float %6063)  ; FMin(a,b)
  %6087 = fmul fast float %6086, %5997
  %6088 = fsub fast float %6059, %6087
  %6089 = fsub fast float %6060, %6059
  %6090 = fsub fast float %6089, %6087
  %6091 = call float @dx.op.binary.f32(i32 35, float %6059, float %6060)  ; FMax(a,b)
  %6092 = call float @dx.op.binary.f32(i32 35, float %6087, float %6091)  ; FMax(a,b)
  %6093 = fcmp fast olt float %6092, 1.000000e+00
  br i1 %6093, label %6094, label %6492, !dx.controlflow.hints !96

; <label>:6094                                    ; preds = %6058
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = fcmp fast une float %6096, 0.000000e+00
  br i1 %6097, label %6098, label %6492, !dx.controlflow.hints !97

; <label>:6098                                    ; preds = %6094
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6108 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6113 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6114 = fmul fast float %6100, %5940
  %6115 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %6101, float %6114)  ; FMad(a,b,c)
  %6116 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %6102, float %6115)  ; FMad(a,b,c)
  %6117 = fadd fast float %6116, %6103
  %6118 = fmul fast float %6105, %5940
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %6106, float %6118)  ; FMad(a,b,c)
  %6120 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %6107, float %6119)  ; FMad(a,b,c)
  %6121 = fadd fast float %6120, %6108
  %6122 = fmul fast float %6110, %5940
  %6123 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %6111, float %6122)  ; FMad(a,b,c)
  %6124 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %6112, float %6123)  ; FMad(a,b,c)
  %6125 = fadd fast float %6124, %6113
  %6126 = fcmp fast oge float %6117, 1.000000e+00
  %6127 = fcmp fast oge float %6121, 1.000000e+00
  %6128 = or i1 %6126, %6127
  %6129 = fcmp fast olt float %6117, 0.000000e+00
  %6130 = fcmp fast olt float %6121, 0.000000e+00
  %6131 = or i1 %6129, %6130
  %6132 = or i1 %6128, %6131
  br i1 %6132, label %6492, label %6133, !dx.controlflow.hints !98

; <label>:6133                                    ; preds = %6098
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.CBufRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.CBufRet.f32 %6134, 2
  %6138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.i32 %6138, 2
  %6140 = uitofp i32 %6139 to float
  %6141 = extractvalue %dx.types.CBufRet.i32 %6138, 3
  %6142 = uitofp i32 %6141 to float
  %6143 = extractvalue %dx.types.CBufRet.f32 %6134, 3
  %6144 = fmul fast float %6143, 2.000000e+00
  %6145 = fsub fast float %6117, %6135
  %6146 = fsub fast float %6121, %6136
  %6147 = fmul fast float %6144, %6145
  %6148 = fmul fast float %6144, %6146
  %6149 = fdiv fast float 1.000000e+00, %5923
  %6150 = fmul fast float %6148, %6149
  %6151 = call float @dx.op.unary.f32(i32 6, float %6150)  ; FAbs(value)
  %6152 = fmul fast float %6137, %5942
  %6153 = fmul fast float %6152, %6144
  %6154 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6155 = call float @dx.op.unary.f32(i32 6, float %6147)  ; FAbs(value)
  %6156 = call float @dx.op.binary.f32(i32 35, float %6154, float %6151)  ; FMax(a,b)
  %6157 = call float @dx.op.binary.f32(i32 35, float %6155, float %6156)  ; FMax(a,b)
  %6158 = fmul fast float %6157, 2.000000e+00
  %6159 = call float @dx.op.unary.f32(i32 23, float %6158)  ; Log(value)
  %6160 = call float @dx.op.binary.f32(i32 35, float %6159, float %6140)  ; FMax(a,b)
  %6161 = call float @dx.op.unary.f32(i32 22, float %6160)  ; Frc(value)
  %6162 = fadd fast float %6161, 0xBFEA666660000000
  %6163 = fmul fast float %6162, 8.000000e+00
  %6164 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  %6165 = call float @dx.op.unary.f32(i32 27, float %6160)  ; Round_ni(value)
  %6166 = fadd fast float %6165, %6164
  %6167 = call float @dx.op.binary.f32(i32 36, float %6166, float %6142)  ; FMin(a,b)
  %6168 = call float @dx.op.unary.f32(i32 27, float %6167)  ; Round_ni(value)
  %6169 = fsub fast float -0.000000e+00, %6168
  %6170 = call float @dx.op.unary.f32(i32 21, float %6169)  ; Exp(value)
  %6171 = fmul fast float %6170, %6144
  %6172 = fmul fast float %6171, %6117
  %6173 = fmul fast float %6171, %6121
  %6174 = fmul fast float %6172, 2.500000e-01
  %6175 = fmul fast float %6173, 2.500000e-01
  %6176 = fadd fast float %6174, 5.000000e-01
  %6177 = fadd fast float %6175, 5.000000e-01
  %6178 = fsub fast float %6142, %6140
  %6179 = fptoui float %6178 to i32
  %6180 = add i32 %6179, 320
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6180)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = fcmp fast une float %6167, %6142
  %6185 = fsub fast float %6117, %6182
  %6186 = fsub fast float %6121, %6183
  %6187 = call float @dx.op.unary.f32(i32 6, float %6185)  ; FAbs(value)
  %6188 = call float @dx.op.unary.f32(i32 6, float %6186)  ; FAbs(value)
  %6189 = fmul fast float %6187, %6171
  %6190 = fmul fast float %6188, %6171
  %6191 = fcmp fast olt float %6189, 1.000000e+00
  %6192 = fcmp fast olt float %6190, 1.000000e+00
  %6193 = and i1 %6191, %6192
  %6194 = or i1 %6184, %6193
  br i1 %6194, label %6195, label %6492, !dx.controlflow.hints !99

; <label>:6195                                    ; preds = %6133
  %6196 = fmul fast float %6173, 5.000000e-01
  %6197 = fmul fast float %6172, 5.000000e-01
  %6198 = fadd fast float %6196, 5.000000e-01
  %6199 = fadd fast float %6197, 5.000000e-01
  %6200 = sitofp i32 %6139 to float
  %6201 = fsub fast float %6167, %6200
  %6202 = call float @dx.op.unary.f32(i32 27, float %6201)  ; Round_ni(value)
  %6203 = call float @dx.op.unary.f32(i32 22, float %6167)  ; Frc(value)
  %6204 = call float @dx.op.unary.f32(i32 22, float %6199)  ; Frc(value)
  %6205 = call float @dx.op.unary.f32(i32 22, float %6198)  ; Frc(value)
  %6206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6204, float %6205, float %6202, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = extractvalue %dx.types.ResRet.f32 %6206, 3
  %6211 = fcmp fast ogt float %6203, 0.000000e+00
  br i1 %6211, label %6212, label %6233, !dx.controlflow.hints !100

; <label>:6212                                    ; preds = %6195
  %6213 = fadd fast float %6202, 1.000000e+00
  %6214 = call float @dx.op.unary.f32(i32 22, float %6176)  ; Frc(value)
  %6215 = call float @dx.op.unary.f32(i32 22, float %6177)  ; Frc(value)
  %6216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6214, float %6215, float %6213, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6217 = extractvalue %dx.types.ResRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.ResRet.f32 %6216, 1
  %6219 = extractvalue %dx.types.ResRet.f32 %6216, 2
  %6220 = extractvalue %dx.types.ResRet.f32 %6216, 3
  %6221 = fsub fast float %6217, %6207
  %6222 = fsub fast float %6218, %6208
  %6223 = fsub fast float %6219, %6209
  %6224 = fsub fast float %6220, %6210
  %6225 = fmul fast float %6221, %6203
  %6226 = fmul fast float %6222, %6203
  %6227 = fmul fast float %6223, %6203
  %6228 = fmul fast float %6224, %6203
  %6229 = fadd fast float %6225, %6207
  %6230 = fadd fast float %6226, %6208
  %6231 = fadd fast float %6227, %6209
  %6232 = fadd fast float %6228, %6210
  br label %6233

; <label>:6233                                    ; preds = %6212, %6195
  %6234 = phi float [ %6229, %6212 ], [ %6207, %6195 ]
  %6235 = phi float [ %6230, %6212 ], [ %6208, %6195 ]
  %6236 = phi float [ %6231, %6212 ], [ %6209, %6195 ]
  %6237 = phi float [ %6232, %6212 ], [ %6210, %6195 ]
  %6238 = fadd fast float %6234, -5.000000e-01
  %6239 = fadd fast float %6236, -5.000000e-01
  %6240 = fmul fast float %6238, 0xBFD5555560000000
  %6241 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6239, float %6240)  ; FMad(a,b,c)
  %6242 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6235, float 0.000000e+00)  ; FMad(a,b,c)
  %6243 = fadd fast float %6242, %6237
  %6244 = fmul fast float %6238, -7.500000e-01
  %6245 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6239, float %6244)  ; FMad(a,b,c)
  %6246 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6235, float 0.000000e+00)  ; FMad(a,b,c)
  %6247 = fadd fast float %6246, %6237
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.CBufRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.CBufRet.f32 %6250, 2
  %6254 = extractvalue %dx.types.CBufRet.f32 %6250, 3
  %6255 = fsub fast float %6251, %6241
  %6256 = fsub fast float %6252, %6243
  %6257 = fsub fast float %6253, %6245
  %6258 = fsub fast float %6254, %6247
  %6259 = fmul fast float %6255, %6249
  %6260 = fmul fast float %6256, %6249
  %6261 = fmul fast float %6257, %6249
  %6262 = fmul fast float %6258, %6249
  %6263 = fadd fast float %6259, %6241
  %6264 = fadd fast float %6260, %6243
  %6265 = fadd fast float %6261, %6245
  %6266 = fadd fast float %6262, %6247
  %6267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.i32 %6267, 0
  %6269 = and i32 %6268, 536870911
  %6270 = uitofp i32 %6269 to float
  %6271 = fmul fast float %6270, %6117
  %6272 = fmul fast float %6270, %6121
  %6273 = fptoui float %6271 to i32
  %6274 = fptoui float %6272 to i32
  %6275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.i32 %6275, 0
  %6277 = and i32 %6276, 31
  %6278 = lshr i32 %6273, %6277
  %6279 = lshr i32 %6274, %6277
  %6280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6281 = extractvalue %dx.types.ResRet.i32 %6280, 0
  %6282 = and i32 %6281, 31
  %6283 = shl i32 1, %6282
  %6284 = call i32 @dx.op.binary.i32(i32 40, i32 %6283, i32 4)  ; UMin(a,b)
  %6285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.i32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.i32 %6285, 1
  %6288 = icmp eq i32 %6284, 0
  br i1 %6288, label %6330, label %6289

; <label>:6289                                    ; preds = %6233
  br label %6290

; <label>:6290                                    ; preds = %6318, %6289
  %6291 = phi i32 [ %6321, %6318 ], [ 0, %6289 ]
  %6292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6293 = extractvalue %dx.types.ResRet.i32 %6292, 0
  %6294 = lshr i32 %6293, 16
  %6295 = and i32 %6294, 31
  %6296 = shl i32 %6279, %6295
  %6297 = add i32 %6296, %6278
  %6298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.i32 %6298, 0
  %6300 = and i32 %6299, 31
  %6301 = shl i32 %6297, %6300
  %6302 = add i32 %6301, %6291
  %6303 = shl i32 %6302, 2
  %6304 = add i32 %6303, 32
  %6305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6304, i32 undef)  ; BufferLoad(srv,index,wot)
  %6306 = extractvalue %dx.types.ResRet.i32 %6305, 0
  %6307 = icmp slt i32 %6306, 0
  %6308 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6291
  %6309 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6291
  %6310 = bitcast float* %6308 to i32*
  %6311 = bitcast float* %6309 to i32*
  br i1 %6307, label %6312, label %6318

; <label>:6312                                    ; preds = %6290
  %6313 = and i32 %6306, 1073741823
  %6314 = add nuw nsw i32 %6313, 20
  %6315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6314, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.i32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.i32 %6315, 1
  br label %6318

; <label>:6318                                    ; preds = %6312, %6290
  %6319 = phi i32 [ %6316, %6312 ], [ %6286, %6290 ]
  %6320 = phi i32 [ %6317, %6312 ], [ %6287, %6290 ]
  store i32 %6319, i32* %6310, align 4
  store i32 %6320, i32* %6311, align 4
  %6321 = add nuw i32 %6291, 1
  %6322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.i32 %6322, 2
  %6324 = icmp eq i32 %6323, 0
  %6325 = icmp ugt i32 %6306, -1073741825
  %6326 = and i1 %6325, %6324
  %6327 = icmp ult i32 %6321, %6284
  %6328 = and i1 %6326, %6327
  br i1 %6328, label %6290, label %6329

; <label>:6329                                    ; preds = %6318
  br label %6330

; <label>:6330                                    ; preds = %6329, %6233
  %6331 = phi i32 [ 0, %6233 ], [ %6321, %6329 ]
  %6332 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6333 = fptoui float %6332 to i32
  %6334 = icmp eq i32 %6333, 0
  br i1 %6334, label %6386, label %6335

; <label>:6335                                    ; preds = %6330
  br label %6336

; <label>:6336                                    ; preds = %6381, %6335
  %6337 = phi i32 [ %6382, %6381 ], [ %6331, %6335 ]
  %6338 = phi i32 [ %6383, %6381 ], [ 0, %6335 ]
  %6339 = lshr i32 %6338, 2
  %6340 = and i32 %6338, 3
  %6341 = add nuw nsw i32 %6339, 83
  %6342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6341)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.i32 %6342, 0
  %6344 = extractvalue %dx.types.CBufRet.i32 %6342, 1
  %6345 = extractvalue %dx.types.CBufRet.i32 %6342, 2
  %6346 = extractvalue %dx.types.CBufRet.i32 %6342, 3
  %6347 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6343, i32* %6347, align 4
  %6348 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6344, i32* %6348, align 4
  %6349 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6345, i32* %6349, align 4
  %6350 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6346, i32* %6350, align 4
  %6351 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6340
  %6352 = load i32, i32* %6351, align 4, !tbaa !101, !noalias !105
  %6353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6354 = extractvalue %dx.types.ResRet.i32 %6353, 0
  %6355 = lshr i32 %6354, 16
  %6356 = and i32 %6355, 31
  %6357 = shl i32 %6279, %6356
  %6358 = add i32 %6357, %6278
  %6359 = shl i32 %6358, 2
  %6360 = add i32 %6359, %6352
  %6361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6360, i32 undef)  ; BufferLoad(srv,index,wot)
  %6362 = extractvalue %dx.types.ResRet.i32 %6361, 0
  %6363 = icmp eq i32 %6362, 0
  br i1 %6363, label %6381, label %6364

; <label>:6364                                    ; preds = %6336
  %6365 = icmp slt i32 %6362, 0
  %6366 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6337
  %6367 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6337
  %6368 = bitcast float* %6366 to i32*
  %6369 = bitcast float* %6367 to i32*
  br i1 %6365, label %6370, label %6377

; <label>:6370                                    ; preds = %6364
  %6371 = and i32 %6362, 1073741823
  %6372 = add i32 %6352, 20
  %6373 = add i32 %6372, %6371
  %6374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6373, i32 undef)  ; BufferLoad(srv,index,wot)
  %6375 = extractvalue %dx.types.ResRet.i32 %6374, 0
  %6376 = extractvalue %dx.types.ResRet.i32 %6374, 1
  br label %6377

; <label>:6377                                    ; preds = %6370, %6364
  %6378 = phi i32 [ %6375, %6370 ], [ %6286, %6364 ]
  %6379 = phi i32 [ %6376, %6370 ], [ %6287, %6364 ]
  store i32 %6378, i32* %6368, align 4
  store i32 %6379, i32* %6369, align 4
  %6380 = add i32 %6337, 1
  br label %6381

; <label>:6381                                    ; preds = %6377, %6336
  %6382 = phi i32 [ %6337, %6336 ], [ %6380, %6377 ]
  %6383 = add nuw i32 %6338, 1
  %6384 = icmp eq i32 %6383, %6333
  br i1 %6384, label %6385, label %6336

; <label>:6385                                    ; preds = %6381
  br label %6386

; <label>:6386                                    ; preds = %6385, %6330
  %6387 = phi i32 [ %6331, %6330 ], [ %6382, %6385 ]
  %6388 = icmp eq i32 %6387, 1
  %6389 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6390 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6388, label %6391, label %6394

; <label>:6391                                    ; preds = %6386
  %6392 = load float, float* %6389, align 4
  %6393 = load float, float* %6390, align 4
  br label %6421

; <label>:6394                                    ; preds = %6386
  %6395 = load float, float* %6389, align 4
  %6396 = load float, float* %6390, align 4
  %6397 = fdiv fast float 1.000000e+00, %6396
  %6398 = fsub fast float %6395, %6397
  %6399 = icmp ugt i32 %6387, 1
  br i1 %6399, label %6400, label %6416

; <label>:6400                                    ; preds = %6394
  br label %6401

; <label>:6401                                    ; preds = %6401, %6400
  %6402 = phi float [ %6411, %6401 ], [ %6398, %6400 ]
  %6403 = phi float [ %6412, %6401 ], [ %6395, %6400 ]
  %6404 = phi i32 [ %6413, %6401 ], [ 1, %6400 ]
  %6405 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6404
  %6406 = load float, float* %6405, align 4
  %6407 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6404
  %6408 = load float, float* %6407, align 4
  %6409 = fdiv fast float 1.000000e+00, %6408
  %6410 = fsub fast float %6406, %6409
  %6411 = call float @dx.op.binary.f32(i32 36, float %6402, float %6410)  ; FMin(a,b)
  %6412 = call float @dx.op.binary.f32(i32 35, float %6403, float %6406)  ; FMax(a,b)
  %6413 = add nuw i32 %6404, 1
  %6414 = icmp eq i32 %6413, %6387
  br i1 %6414, label %6415, label %6401

; <label>:6415                                    ; preds = %6401
  br label %6416

; <label>:6416                                    ; preds = %6415, %6394
  %6417 = phi float [ %6398, %6394 ], [ %6411, %6415 ]
  %6418 = phi float [ %6395, %6394 ], [ %6412, %6415 ]
  %6419 = fsub fast float %6418, %6417
  %6420 = fdiv fast float 1.000000e+00, %6419
  br label %6421

; <label>:6421                                    ; preds = %6416, %6391
  %6422 = phi float [ %6392, %6391 ], [ %6418, %6416 ]
  %6423 = phi float [ %6393, %6391 ], [ %6420, %6416 ]
  %6424 = fadd fast float %6125, %6422
  %6425 = fmul fast float %6424, %6423
  %6426 = call float @dx.op.unary.f32(i32 7, float %6425)  ; Saturate(value)
  %6427 = fmul fast float %6426, 2.000000e+00
  %6428 = fsub fast float 1.000000e+00, %6427
  %6429 = fmul fast float %6263, %6263
  %6430 = fsub fast float %6264, %6429
  %6431 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6430)  ; FMax(a,b)
  %6432 = fdiv fast float 1.000000e+00, %6431
  %6433 = fmul fast float %6264, %6263
  %6434 = fsub fast float %6265, %6433
  %6435 = fsub fast float %6428, %6263
  %6436 = fmul fast float %6428, %6428
  %6437 = fsub fast float %6436, %6264
  %6438 = fmul fast float %6432, %6434
  %6439 = fmul fast float %6438, %6435
  %6440 = fsub fast float %6437, %6439
  %6441 = fmul fast float %6264, %6264
  %6442 = fsub fast float %6266, %6441
  %6443 = fmul fast float %6434, %6434
  %6444 = fmul fast float %6443, %6432
  %6445 = fsub fast float %6442, %6444
  %6446 = fdiv fast float %6440, %6445
  %6447 = fmul fast float %6446, %6434
  %6448 = fsub fast float %6435, %6447
  %6449 = fmul fast float %6448, %6432
  %6450 = fmul fast float %6449, %6263
  %6451 = fsub fast float 1.000000e+00, %6450
  %6452 = fmul fast float %6446, %6264
  %6453 = fsub fast float %6451, %6452
  %6454 = fmul fast float %6449, %6449
  %6455 = fmul fast float %6446, 4.000000e+00
  %6456 = fmul fast float %6455, %6453
  %6457 = fsub fast float %6454, %6456
  %6458 = call float @dx.op.unary.f32(i32 24, float %6457)  ; Sqrt(value)
  %6459 = fcmp fast oge float %6449, 0.000000e+00
  %6460 = fsub fast float -0.000000e+00, %6458
  %6461 = select i1 %6459, float %6460, float %6458
  %6462 = fsub fast float %6461, %6449
  %6463 = fdiv fast float %6462, %6446
  %6464 = fdiv fast float %6453, %6462
  %6465 = fmul fast float %6463, 5.000000e-01
  %6466 = fmul fast float %6464, 2.000000e+00
  %6467 = select i1 %6459, float %6465, float %6466
  %6468 = select i1 %6459, float %6466, float %6465
  %6469 = call float @dx.op.binary.f32(i32 35, float %6467, float %6468)  ; FMax(a,b)
  %6470 = call float @dx.op.binary.f32(i32 36, float %6467, float %6468)  ; FMin(a,b)
  %6471 = fcmp fast ogt float %6428, %6469
  %6472 = fsub fast float %6428, %6470
  %6473 = fsub fast float %6428, %6469
  %6474 = fsub fast float %6469, %6470
  %6475 = select i1 %6471, float %6473, float %6474
  %6476 = fmul float %6472, %6475
  %6477 = select i1 %6471, float %6470, float %6428
  %6478 = fcmp fast ogt float %6428, %6470
  %6479 = fmul fast float %6477, %6469
  %6480 = fadd fast float %6477, %6469
  %6481 = fmul fast float %6480, %6263
  %6482 = fadd fast float %6479, %6264
  %6483 = fsub fast float %6482, %6481
  %6484 = fdiv fast float %6483, %6476
  %6485 = select i1 %6478, float %6484, float 0.000000e+00
  %6486 = fsub fast float 1.000000e+00, %6485
  %6487 = select i1 %6471, float %6486, float %6485
  %6488 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6248, 3
  %6490 = fmul fast float %6489, %6488
  %6491 = fsub fast float 1.000000e+00, %6490
  br label %6492

; <label>:6492                                    ; preds = %6421, %6133, %6098, %6094, %6058
  %6493 = phi float [ 1.000000e+00, %6058 ], [ %6491, %6421 ], [ 1.000000e+00, %6098 ], [ 1.000000e+00, %6133 ], [ 1.000000e+00, %6094 ]
  %6494 = fcmp fast ogt float %6090, 0.000000e+00
  br i1 %6494, label %6495, label %6503, !dx.controlflow.hints !114

; <label>:6495                                    ; preds = %6492
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6498 = fadd fast float %6497, %5971
  %6499 = call float @dx.op.binary.f32(i32 35, float %6498, float 0.000000e+00)  ; FMax(a,b)
  %6500 = fadd fast float %6499, 0x3F10000000000000
  %6501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5989, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float %6500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  br label %6503

; <label>:6503                                    ; preds = %6495, %6492
  %6504 = phi float [ %6502, %6495 ], [ 1.000000e+00, %6492 ]
  %6505 = fcmp fast ogt float %6088, 0.000000e+00
  br i1 %6505, label %6506, label %6514, !dx.controlflow.hints !115

; <label>:6506                                    ; preds = %6503
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6509 = fadd fast float %6508, %5971
  %6510 = call float @dx.op.binary.f32(i32 35, float %6509, float 0.000000e+00)  ; FMax(a,b)
  %6511 = fadd fast float %6510, 0x3F10000000000000
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5981, float %5982, float undef, float undef, i32 0, i32 0, i32 undef, float %6511)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  br label %6514

; <label>:6514                                    ; preds = %6506, %6503
  %6515 = phi float [ %6513, %6506 ], [ 1.000000e+00, %6503 ]
  %6516 = fcmp fast ogt float %6087, 0.000000e+00
  br i1 %6516, label %6517, label %6529, !dx.controlflow.hints !116

; <label>:6517                                    ; preds = %6514
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = fadd fast float %6519, %5971
  %6521 = call float @dx.op.binary.f32(i32 35, float %6520, float 0.000000e+00)  ; FMax(a,b)
  %6522 = fadd fast float %6521, 0x3F10000000000000
  br i1 %5974, label %6523, label %6526, !dx.controlflow.hints !117

; <label>:6523                                    ; preds = %6517
  %6524 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5963, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float %6522)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  br label %6529

; <label>:6526                                    ; preds = %6517
  %6527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5963, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float %6522)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6528 = extractvalue %dx.types.ResRet.f32 %6527, 0
  br label %6529

; <label>:6529                                    ; preds = %6526, %6523, %6514
  %6530 = phi float [ %6525, %6523 ], [ %6528, %6526 ], [ 1.000000e+00, %6514 ]
  %6531 = fsub fast float %6504, %6493
  %6532 = fmul fast float %6531, %6060
  %6533 = fadd fast float %6532, %6493
  %6534 = fsub fast float %6515, %6533
  %6535 = fmul fast float %6534, %6059
  %6536 = fadd fast float %6535, %6533
  %6537 = fsub fast float %6530, %6536
  %6538 = fmul fast float %6537, %6087
  %6539 = fadd fast float %6538, %6536
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6542 = fcmp fast ogt float %6541, 0.000000e+00
  br i1 %6542, label %6543, label %6583, !dx.controlflow.hints !118

; <label>:6543                                    ; preds = %6529
  %6544 = fcmp fast ugt float %6541, 0.000000e+00
  br i1 %6544, label %6545, label %6580

; <label>:6545                                    ; preds = %6543
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6548 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6549 = extractvalue %dx.types.CBufRet.f32 %6546, 2
  %6550 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6556 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6557 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6561 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6562 = fadd fast float %6559, %5940
  %6563 = fadd fast float %6560, %5941
  %6564 = fadd fast float %6561, %5942
  %6565 = fmul fast float %6562, %6547
  %6566 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6563, float %6565)  ; FMad(a,b,c)
  %6567 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6564, float %6566)  ; FMad(a,b,c)
  %6568 = fadd fast float %6567, %6550
  %6569 = fmul fast float %6562, %6552
  %6570 = call float @dx.op.tertiary.f32(i32 46, float %6553, float %6563, float %6569)  ; FMad(a,b,c)
  %6571 = call float @dx.op.tertiary.f32(i32 46, float %6554, float %6564, float %6570)  ; FMad(a,b,c)
  %6572 = fadd fast float %6571, %6555
  %6573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6568, float %6572, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6574 = extractvalue %dx.types.ResRet.f32 %6573, 0
  %6575 = fmul fast float %6574, %6557
  %6576 = fadd fast float %6575, %6556
  %6577 = call float @dx.op.unary.f32(i32 7, float %6576)  ; Saturate(value)
  %6578 = fmul fast float %6577, %6541
  %6579 = fsub fast float 1.000000e+00, %6578
  br label %6580

; <label>:6580                                    ; preds = %6545, %6543
  %6581 = phi float [ %6579, %6545 ], [ 1.000000e+00, %6543 ]
  %6582 = fmul fast float %6581, %6539
  br label %6583

; <label>:6583                                    ; preds = %6580, %6529, %5920
  %6584 = phi float [ 1.000000e+00, %5920 ], [ %6582, %6580 ], [ %6539, %6529 ]
  %6585 = call float @dx.op.binary.f32(i32 36, float %6584, float %6584)  ; FMin(a,b)
  %6586 = call float @dx.op.binary.f32(i32 36, float %6584, float %6585)  ; FMin(a,b)
  %6587 = fcmp fast ogt float %6586, 0.000000e+00
  br i1 %6587, label %6588, label %6748, !dx.controlflow.hints !119

; <label>:6588                                    ; preds = %6583
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.CBufRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6593 = extractvalue %dx.types.CBufRet.f32 %6589, 3
  %6594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.f32 %6594, 0
  %6596 = extractvalue %dx.types.CBufRet.f32 %6594, 1
  %6597 = extractvalue %dx.types.CBufRet.f32 %6594, 2
  %6598 = extractvalue %dx.types.CBufRet.f32 %6594, 3
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 0
  %6601 = extractvalue %dx.types.CBufRet.f32 %6599, 1
  %6602 = extractvalue %dx.types.CBufRet.f32 %6599, 2
  %6603 = extractvalue %dx.types.CBufRet.f32 %6599, 3
  %6604 = fmul fast float %6590, %5940
  %6605 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %6591, float %6604)  ; FMad(a,b,c)
  %6606 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %6592, float %6605)  ; FMad(a,b,c)
  %6607 = fadd fast float %6606, %6593
  %6608 = fmul fast float %6595, %5940
  %6609 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %6596, float %6608)  ; FMad(a,b,c)
  %6610 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %6597, float %6609)  ; FMad(a,b,c)
  %6611 = fadd fast float %6610, %6598
  %6612 = fmul fast float %6600, %5940
  %6613 = call float @dx.op.tertiary.f32(i32 46, float %5941, float %6601, float %6612)  ; FMad(a,b,c)
  %6614 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %6602, float %6613)  ; FMad(a,b,c)
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  %6617 = extractvalue %dx.types.CBufRet.f32 %6615, 1
  %6618 = extractvalue %dx.types.CBufRet.f32 %6615, 3
  %6619 = fmul fast float %6618, %6607
  %6620 = fmul fast float %6618, %6611
  %6621 = fadd fast float %6619, %6616
  %6622 = fadd fast float %6620, %6617
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = fsub fast float %6621, %6624
  %6627 = fsub fast float %6622, %6625
  %6628 = fcmp fast olt float %6626, 0.000000e+00
  %6629 = fcmp fast olt float %6627, 0.000000e+00
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6634 = extractvalue %dx.types.CBufRet.f32 %6630, 3
  %6635 = select i1 %6628, float %6631, float %6633
  %6636 = select i1 %6629, float %6632, float %6634
  %6637 = fmul fast float %6635, %6626
  %6638 = fmul fast float %6636, %6627
  %6639 = call float @dx.op.unary.f32(i32 6, float %6637)  ; FAbs(value)
  %6640 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6641 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %6642 = call float @dx.op.binary.f32(i32 35, float %6639, float %6640)  ; FMax(a,b)
  %6643 = fsub fast float %6641, %6642
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6645 = fcmp fast ogt float %6644, 0.000000e+00
  br i1 %6645, label %6646, label %6687, !dx.controlflow.hints !120

; <label>:6646                                    ; preds = %6588
  %6647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6621, float %6622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 1
  %6649 = fcmp fast ogt float %6648, 0.000000e+00
  br i1 %6649, label %6650, label %6682

; <label>:6650                                    ; preds = %6646
  %6651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6621, float %6622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6652 = extractvalue %dx.types.ResRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.ResRet.f32 %6651, 1
  %6654 = extractvalue %dx.types.ResRet.f32 %6651, 2
  %6655 = extractvalue %dx.types.ResRet.f32 %6651, 3
  %6656 = fsub fast float 1.000000e+00, %6603
  %6657 = fsub fast float %6656, %6614
  %6658 = fmul fast float %6657, 0x400921FB60000000
  %6659 = fadd fast float %6658, 0x3FF921FB60000000
  %6660 = call float @dx.op.unary.f32(i32 13, float %6659)  ; Sin(value)
  %6661 = fadd fast float %6660, -1.000000e+00
  %6662 = fmul fast float %6661, 0x3FD45F3060000000
  %6663 = fmul fast float %6657, 0x401921FB60000000
  %6664 = fadd fast float %6663, 0x400921FB60000000
  %6665 = call float @dx.op.unary.f32(i32 13, float %6664)  ; Sin(value)
  %6666 = fadd fast float %6665, 0x3E7777A5C0000000
  %6667 = fmul fast float %6666, 0x3FC45F3060000000
  %6668 = fmul fast float %6657, 0x4022D97C80000000
  %6669 = fadd fast float %6668, 0x4012D97C80000000
  %6670 = call float @dx.op.unary.f32(i32 13, float %6669)  ; Sin(value)
  %6671 = fadd fast float %6670, 1.000000e+00
  %6672 = fmul fast float %6671, 0x3FBB2995E0000000
  %6673 = fmul fast float %6657, 0x402921FB60000000
  %6674 = fadd fast float %6673, 0x401921FB60000000
  %6675 = call float @dx.op.unary.f32(i32 13, float %6674)  ; Sin(value)
  %6676 = fadd fast float %6675, 0xBE8777A5C0000000
  %6677 = fmul fast float %6676, 0x3FB45F3060000000
  %6678 = call float @dx.op.dot4.f32(i32 56, float %6652, float %6653, float %6654, float %6655, float %6662, float %6667, float %6672, float %6677)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6679 = fmul fast float %6678, 0xBFF7154760000000
  %6680 = call float @dx.op.unary.f32(i32 21, float %6679)  ; Exp(value)
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  br label %6682

; <label>:6682                                    ; preds = %6650, %6646
  %6683 = phi float [ %6681, %6650 ], [ 1.000000e+00, %6646 ]
  %6684 = fadd fast float %6683, -1.000000e+00
  %6685 = fmul fast float %6684, %6644
  %6686 = fadd fast float %6685, 1.000000e+00
  br label %6687

; <label>:6687                                    ; preds = %6682, %6588
  %6688 = phi float [ %6686, %6682 ], [ 1.000000e+00, %6588 ]
  %6689 = fmul fast float %6688, %6584
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = fadd fast float %6691, %193
  %6695 = fadd fast float %6692, %194
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6698 = fsub fast float -0.000000e+00, %6694
  %6699 = fsub fast float -0.000000e+00, %6695
  %6700 = fsub fast float %5667, %6693
  %6701 = fadd fast float %6700, %6697
  %6702 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6698, float %6699, float %6701)  ; Dot3(ax,ay,az,bx,by,bz)
  %6703 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5921, float %5922, float %5923)  ; Dot3(ax,ay,az,bx,by,bz)
  %6704 = fdiv fast float 1.000000e+00, %6703
  %6705 = fmul fast float %6704, %6702
  %6706 = fmul fast float %5921, %6705
  %6707 = fmul fast float %5922, %6705
  %6708 = fadd fast float %6706, %6694
  %6709 = fadd fast float %6707, %6695
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = fsub fast float %6708, %6711
  %6714 = fsub fast float %6709, %6712
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6718 = fmul fast float %6713, %6716
  %6719 = fmul fast float %6714, %6717
  %6720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.i32 %6720, 3
  %6722 = icmp eq i32 %6721, 0
  br i1 %6722, label %6728, label %6723

; <label>:6723                                    ; preds = %6687
  %6724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6718, float %6719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6725 = extractvalue %dx.types.ResRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.ResRet.f32 %6724, 1
  %6727 = extractvalue %dx.types.ResRet.f32 %6724, 2
  br label %6733

; <label>:6728                                    ; preds = %6687
  %6729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6718, float %6719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6730 = extractvalue %dx.types.ResRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.ResRet.f32 %6729, 1
  %6732 = extractvalue %dx.types.ResRet.f32 %6729, 2
  br label %6733

; <label>:6733                                    ; preds = %6728, %6723
  %6734 = phi float [ %6725, %6723 ], [ %6730, %6728 ]
  %6735 = phi float [ %6726, %6723 ], [ %6731, %6728 ]
  %6736 = phi float [ %6727, %6723 ], [ %6732, %6728 ]
  %6737 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6738 = fmul fast float %6737, %6734
  %6739 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6740 = fsub fast float %6705, %6739
  %6741 = fsub fast float %6740, %6738
  %6742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6741)  ; FMax(a,b)
  %6743 = fmul fast float %6742, %6735
  %6744 = call float @dx.op.binary.f32(i32 36, float %6736, float %6743)  ; FMin(a,b)
  %6745 = fmul fast float %6744, 0xBFF7154760000000
  %6746 = call float @dx.op.unary.f32(i32 21, float %6745)  ; Exp(value)
  %6747 = fmul fast float %6689, %6746
  br label %6748

; <label>:6748                                    ; preds = %6733, %6583
  %6749 = phi float [ %6747, %6733 ], [ %6584, %6583 ]
  %6750 = call float @dx.op.binary.f32(i32 36, float %6749, float %6749)  ; FMin(a,b)
  %6751 = call float @dx.op.binary.f32(i32 36, float %6749, float %6750)  ; FMin(a,b)
  %6752 = fcmp fast ogt float %6751, 0.000000e+00
  br i1 %6752, label %6753, label %7016, !dx.controlflow.hints !121

; <label>:6753                                    ; preds = %6748
  %6754 = fmul fast float %6749, %5932
  %6755 = fmul fast float %6749, %5933
  %6756 = fmul fast float %6749, %5934
  %6757 = fsub fast float %195, %4863
  %6758 = fcmp fast ogt float %6757, 0.000000e+00
  %6759 = fmul fast float %5921, 5.120000e+02
  %6760 = fmul fast float %5922, 5.120000e+02
  %6761 = fmul fast float %5923, 5.120000e+02
  %6762 = fadd fast float %6761, %195
  %6763 = fsub fast float %4863, %6762
  %6764 = fmul fast float %6763, 2.000000e+00
  %6765 = fadd fast float %6764, %6762
  %6766 = select i1 %6758, float %6765, float %6762
  %6767 = fsub fast float %6766, %195
  %6768 = call float @dx.op.dot3.f32(i32 55, float %6759, float %6760, float %6767, float %6759, float %6760, float %6767)  ; Dot3(ax,ay,az,bx,by,bz)
  %6769 = call float @dx.op.unary.f32(i32 25, float %6768)  ; Rsqrt(value)
  %6770 = fmul fast float %6769, %6759
  %6771 = fmul fast float %6769, %6760
  %6772 = fmul fast float %6769, %6767
  %6773 = fsub fast float %4863, %195
  %6774 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6773)  ; Dot3(ax,ay,az,bx,by,bz)
  %6775 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6770, float %6771, float %6772)  ; Dot3(ax,ay,az,bx,by,bz)
  %6776 = fdiv fast float 1.000000e+00, %6775
  %6777 = fmul fast float %6776, %6774
  %6778 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6757, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6779 = fcmp fast ogt float %6778, 0.000000e+00
  %6780 = fcmp fast olt float %6778, 0.000000e+00
  %6781 = zext i1 %6779 to i32
  %6782 = zext i1 %6780 to i32
  %6783 = sub nsw i32 %6781, %6782
  %6784 = sitofp i32 %6783 to float
  %6785 = fsub fast float %6766, %4863
  %6786 = call float @dx.op.dot3.f32(i32 55, float %6759, float %6760, float %6785, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6787 = fcmp fast ogt float %6786, 0.000000e+00
  %6788 = fcmp fast olt float %6786, 0.000000e+00
  %6789 = zext i1 %6787 to i32
  %6790 = zext i1 %6788 to i32
  %6791 = sub nsw i32 %6789, %6790
  %6792 = sitofp i32 %6791 to float
  %6793 = fcmp fast une float %6784, %6792
  br i1 %6793, label %6794, label %6804

; <label>:6794                                    ; preds = %6753
  %6795 = fmul fast float %6777, %6772
  %6796 = fmul fast float %6777, %6771
  %6797 = fmul fast float %6777, %6770
  %6798 = fmul fast float %6797, %6797
  %6799 = fmul fast float %6796, %6796
  %6800 = fadd fast float %6798, %6799
  %6801 = fmul fast float %6795, %6795
  %6802 = fadd fast float %6800, %6801
  %6803 = call float @dx.op.unary.f32(i32 24, float %6802)  ; Sqrt(value)
  br label %6814

; <label>:6804                                    ; preds = %6753
  %6805 = icmp slt i32 %6783, 0
  br i1 %6805, label %6806, label %6814

; <label>:6806                                    ; preds = %6804
  %6807 = fsub fast float %195, %6766
  %6808 = fmul fast float %6759, %6759
  %6809 = fmul fast float %6760, %6760
  %6810 = fadd fast float %6808, %6809
  %6811 = fmul fast float %6807, %6807
  %6812 = fadd fast float %6810, %6811
  %6813 = call float @dx.op.unary.f32(i32 24, float %6812)  ; Sqrt(value)
  br label %6814

; <label>:6814                                    ; preds = %6806, %6804, %6794
  %6815 = phi float [ %6803, %6794 ], [ %6813, %6806 ], [ 0.000000e+00, %6804 ]
  %6816 = fsub fast float -0.000000e+00, %6815
  %6817 = select i1 %6758, float -0.000000e+00, float %6816
  %6818 = fmul fast float %4864, 0x3FF7154760000000
  %6819 = fmul fast float %6818, %6817
  %6820 = fmul fast float %4865, 0x3FF7154760000000
  %6821 = fmul fast float %6820, %6817
  %6822 = fmul fast float %4866, 0x3FF7154760000000
  %6823 = fmul fast float %6822, %6817
  %6824 = call float @dx.op.unary.f32(i32 21, float %6819)  ; Exp(value)
  %6825 = call float @dx.op.unary.f32(i32 21, float %6821)  ; Exp(value)
  %6826 = call float @dx.op.unary.f32(i32 21, float %6823)  ; Exp(value)
  %6827 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6828 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6829 = call float @dx.op.unary.f32(i32 7, float %6826)  ; Saturate(value)
  %6830 = fmul fast float %6754, %6827
  %6831 = fmul fast float %6755, %6828
  %6832 = fmul fast float %6756, %6829
  %6833 = fsub fast float %5921, %5655
  %6834 = fsub fast float %5922, %5654
  %6835 = fsub fast float %5923, %5653
  %6836 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6833, float %6834, float %6835)  ; Dot3(ax,ay,az,bx,by,bz)
  %6837 = call float @dx.op.unary.f32(i32 25, float %6836)  ; Rsqrt(value)
  %6838 = fmul fast float %6837, %6833
  %6839 = fmul fast float %6837, %6834
  %6840 = fmul fast float %6837, %6835
  %6841 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %6842 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5651, float %5650, float %6838, float %6839, float %6840)  ; Dot3(ax,ay,az,bx,by,bz)
  %6843 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6844 = fmul fast float %6843, %6843
  %6845 = fmul fast float %6844, %5683
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6847 = fmul fast float %6846, %6843
  %6848 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %6838, float %6839, float %6840)  ; Dot3(ax,ay,az,bx,by,bz)
  %6849 = fmul fast float %6848, %6848
  %6850 = call float @dx.op.unary.f32(i32 6, float %6841)  ; FAbs(value)
  %6851 = fsub fast float 1.000000e+00, %5665
  %6852 = call float @dx.op.binary.f32(i32 35, float %6851, float 0x3F847AE140000000)  ; FMax(a,b)
  %6853 = fmul fast float %6852, %6852
  %6854 = fmul fast float %6853, %6853
  %6855 = fsub fast float 1.000000e+00, %6854
  %6856 = fmul fast float %5670, %5670
  %6857 = fmul fast float %6856, %6855
  %6858 = fadd fast float %6857, %6854
  %6859 = bitcast float %6858 to i32
  %6860 = ashr i32 %6859, 1
  %6861 = add nsw i32 %6860, 532487669
  %6862 = bitcast i32 %6861 to float
  %6863 = fadd fast float %6862, %5670
  %6864 = fmul fast float %6854, %6849
  %6865 = fsub fast float 1.000000e+00, %6849
  %6866 = fadd fast float %6865, %6864
  %6867 = fmul fast float %6850, %6850
  %6868 = fmul fast float %6867, %6855
  %6869 = fadd fast float %6868, %6854
  %6870 = bitcast float %6869 to i32
  %6871 = ashr i32 %6870, 1
  %6872 = add nsw i32 %6871, 532487669
  %6873 = bitcast i32 %6872 to float
  %6874 = fadd fast float %6873, %6850
  %6875 = fmul fast float %6866, %6866
  %6876 = fmul fast float %6875, %6863
  %6877 = fmul fast float %6876, %6874
  %6878 = fdiv fast float 0x3FF0A00000000000, %6877
  %6879 = fmul fast float %6878, %6854
  %6880 = fmul fast float %5783, 0x3FF9999980000000
  %6881 = fsub fast float 5.000000e+00, %6880
  %6882 = call float @dx.op.unary.f32(i32 6, float %6842)  ; FAbs(value)
  %6883 = fsub fast float 1.000000e+00, %6882
  %6884 = fmul fast float %5783, 0x41D9660740000000
  %6885 = fadd fast float %6884, 0xC1EFBF8940000000
  %6886 = bitcast float %6883 to i32
  %6887 = sitofp i32 %6886 to float
  %6888 = fmul fast float %6887, %6881
  %6889 = fadd fast float %6885, %6888
  %6890 = fptosi float %6889 to i32
  %6891 = bitcast i32 %6890 to float
  %6892 = fsub fast float 1.000000e+00, %5656
  %6893 = fsub fast float 1.000000e+00, %5657
  %6894 = fsub fast float 1.000000e+00, %5668
  %6895 = fmul fast float %6891, %6892
  %6896 = fmul fast float %6891, %6893
  %6897 = fmul fast float %6891, %6894
  %6898 = fadd fast float %6895, %5656
  %6899 = fadd fast float %6896, %5657
  %6900 = fadd fast float %6897, %5668
  br i1 %5806, label %6901, label %6924

; <label>:6901                                    ; preds = %6814
  %6902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4458, float %6882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6903 = extractvalue %dx.types.ResRet.f32 %6902, 0
  %6904 = extractvalue %dx.types.ResRet.f32 %6902, 1
  %6905 = extractvalue %dx.types.ResRet.f32 %6902, 2
  %6906 = fadd fast float %6903, -5.000000e-01
  %6907 = fadd fast float %6904, -5.000000e-01
  %6908 = fadd fast float %6905, -5.000000e-01
  %6909 = fmul fast float %5656, 4.000000e+00
  %6910 = fmul fast float %6909, %6892
  %6911 = fmul fast float %6910, %6906
  %6912 = fmul fast float %5657, 4.000000e+00
  %6913 = fmul fast float %6912, %6893
  %6914 = fmul fast float %6913, %6907
  %6915 = fmul fast float %5668, 4.000000e+00
  %6916 = fmul fast float %6915, %6894
  %6917 = fmul fast float %6916, %6908
  %6918 = fadd fast float %6911, %6898
  %6919 = fadd fast float %6914, %6899
  %6920 = fadd fast float %6917, %6900
  %6921 = call float @dx.op.unary.f32(i32 7, float %6918)  ; Saturate(value)
  %6922 = call float @dx.op.unary.f32(i32 7, float %6919)  ; Saturate(value)
  %6923 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  br label %6924

; <label>:6924                                    ; preds = %6901, %6814
  %6925 = phi float [ %6921, %6901 ], [ %6898, %6814 ]
  %6926 = phi float [ %6922, %6901 ], [ %6899, %6814 ]
  %6927 = phi float [ %6923, %6901 ], [ %6900, %6814 ]
  %6928 = fmul fast float %6841, 9.843750e-01
  %6929 = fadd fast float %6928, 7.812500e-03
  %6930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6929, float %5787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.f32 %6930, 1
  %6933 = extractvalue %dx.types.ResRet.f32 %6930, 2
  %6934 = extractvalue %dx.types.ResRet.f32 %6930, 3
  %6935 = fsub fast float %6933, %6931
  %6936 = fsub fast float %6934, %6932
  %6937 = fmul fast float %6935, %5793
  %6938 = fmul fast float %6936, %5793
  %6939 = fadd fast float %6937, %6931
  %6940 = fadd fast float %6938, %6932
  %6941 = fmul fast float %6939, %5656
  %6942 = fmul fast float %6939, %5657
  %6943 = fmul fast float %6939, %5668
  %6944 = fadd fast float %6941, %6940
  %6945 = fadd fast float %6942, %6940
  %6946 = fadd fast float %6943, %6940
  br i1 %5806, label %6947, label %6970

; <label>:6947                                    ; preds = %6924
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4458, float %6841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.ResRet.f32 %6948, 1
  %6951 = extractvalue %dx.types.ResRet.f32 %6948, 2
  %6952 = fadd fast float %6949, -5.000000e-01
  %6953 = fadd fast float %6950, -5.000000e-01
  %6954 = fadd fast float %6951, -5.000000e-01
  %6955 = fmul fast float %5656, 4.000000e+00
  %6956 = fmul fast float %6955, %6892
  %6957 = fmul fast float %6956, %6952
  %6958 = fmul fast float %5657, 4.000000e+00
  %6959 = fmul fast float %6958, %6893
  %6960 = fmul fast float %6959, %6953
  %6961 = fmul fast float %5668, 4.000000e+00
  %6962 = fmul fast float %6961, %6894
  %6963 = fmul fast float %6962, %6954
  %6964 = fadd fast float %6957, %6944
  %6965 = fadd fast float %6960, %6945
  %6966 = fadd fast float %6963, %6946
  %6967 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6968 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  %6969 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  br label %6970

; <label>:6970                                    ; preds = %6947, %6924
  %6971 = phi float [ %6967, %6947 ], [ %6944, %6924 ]
  %6972 = phi float [ %6968, %6947 ], [ %6945, %6924 ]
  %6973 = phi float [ %6969, %6947 ], [ %6946, %6924 ]
  %6974 = call float @dx.op.binary.f32(i32 35, float %6972, float %6973)  ; FMax(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6971, float %6974)  ; FMax(a,b)
  %6976 = fsub fast float 1.000000e+00, %6975
  %6977 = fmul fast float %6925, %6879
  %6978 = fmul fast float %6926, %6879
  %6979 = fmul fast float %6927, %6879
  %6980 = fsub fast float 1.000000e+00, %6842
  %6981 = bitcast float %6980 to i32
  %6982 = sitofp i32 %6981 to float
  %6983 = fmul fast float %6982, 5.000000e+00
  %6984 = fadd fast float %6983, 0xC1EFBF8940000000
  %6985 = fptosi float %6984 to i32
  %6986 = bitcast i32 %6985 to float
  %6987 = fmul fast float %6986, %4459
  %6988 = fmul fast float %6976, %6987
  %6989 = fmul fast float %6988, %5856
  %6990 = fmul fast float %6988, %5857
  %6991 = fmul fast float %6988, %5858
  %6992 = fadd fast float %6989, %6977
  %6993 = fadd fast float %6990, %6978
  %6994 = fadd fast float %6991, %6979
  %6995 = fmul fast float %6847, %6830
  %6996 = fmul fast float %6995, %6976
  %6997 = fmul fast float %6847, %6831
  %6998 = fmul fast float %6997, %6976
  %6999 = fmul fast float %6847, %6832
  %7000 = fmul fast float %6999, %6976
  %7001 = fmul fast float %6995, %6992
  %7002 = fmul fast float %6997, %6993
  %7003 = fmul fast float %6999, %6994
  %7004 = fadd fast float %6996, %5840
  %7005 = fmul fast float %7004, %4455
  %7006 = fadd fast float %6998, %5841
  %7007 = fmul fast float %7006, %4455
  %7008 = fadd fast float %7000, %5842
  %7009 = fmul fast float %7008, %4455
  %7010 = fadd fast float %7001, %5909
  %7011 = fmul fast float %7010, %4455
  %7012 = fadd fast float %7002, %5912
  %7013 = fmul fast float %7012, %4455
  %7014 = fadd fast float %7003, %5915
  %7015 = fmul fast float %7014, %4455
  br label %7016

; <label>:7016                                    ; preds = %6970, %6748, %5833
  %7017 = phi float [ %5910, %5833 ], [ %5910, %6748 ], [ %7011, %6970 ]
  %7018 = phi float [ %5913, %5833 ], [ %5913, %6748 ], [ %7013, %6970 ]
  %7019 = phi float [ %5916, %5833 ], [ %5916, %6748 ], [ %7015, %6970 ]
  %7020 = phi float [ %5905, %5833 ], [ %5905, %6748 ], [ %7005, %6970 ]
  %7021 = phi float [ %5906, %5833 ], [ %5906, %6748 ], [ %7007, %6970 ]
  %7022 = phi float [ %5907, %5833 ], [ %5907, %6748 ], [ %7009, %6970 ]
  %7023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.i32 %7023, 0
  %7025 = icmp eq i32 %7024, 0
  br i1 %7025, label %7658, label %7026

; <label>:7026                                    ; preds = %7016
  %7027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7028 = extractvalue %dx.types.CBufRet.f32 %7027, 2
  %7029 = extractvalue %dx.types.CBufRet.f32 %7027, 3
  %7030 = fmul fast float %7028, %106
  %7031 = fmul fast float %7029, %107
  %7032 = fptoui float %7030 to i32
  %7033 = fptoui float %7031 to i32
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7037 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7038 = fadd fast float %97, -4.000000e+00
  %7039 = call float @dx.op.binary.f32(i32 35, float %7038, float 0.000000e+00)  ; FMax(a,b)
  %7040 = fadd fast float %7039, %7035
  %7041 = fmul fast float %7040, %7036
  %7042 = call float @dx.op.unary.f32(i32 23, float %7041)  ; Log(value)
  %7043 = fmul fast float %7042, %7037
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7046 = fmul fast float %7043, %7045
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.i32 %7048, 1
  %7050 = add i32 %7049, -1
  %7051 = uitofp i32 %7049 to float
  %7052 = fmul fast float %7051, %7047
  %7053 = fptoui float %7052 to i32
  %7054 = call i32 @dx.op.binary.i32(i32 40, i32 %7053, i32 %7050)  ; UMin(a,b)
  %7055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.i32 %7055, 2
  %7057 = extractvalue %dx.types.CBufRet.i32 %7055, 3
  %7058 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7033, i32 %7056, i32 %7032)  ; UMad(a,b,c)
  %7059 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7054, i32 %7057, i32 %7058)  ; UMad(a,b,c)
  %7060 = add nsw i32 %7024, -1
  %7061 = call i32 @dx.op.binary.i32(i32 37, i32 %7060, i32 0)  ; IMax(a,b)
  %7062 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7063 = fptoui float %7062 to i32
  %7064 = lshr i32 %7063, 5
  %7065 = call i32 @dx.op.binary.i32(i32 40, i32 %7064, i32 8191)  ; UMin(a,b)
  %7066 = shl i32 %7065, 2
  %7067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7066, i32 undef)  ; BufferLoad(srv,index,wot)
  %7068 = extractvalue %dx.types.ResRet.i32 %7067, 0
  %7069 = lshr i32 %7068, 16
  %7070 = and i32 %7068, 65535
  %7071 = lshr i32 %7068, 21
  %7072 = lshr i32 %7070, 5
  %7073 = call i32 @dx.op.binary.i32(i32 40, i32 %7072, i32 %7061)  ; UMin(a,b)
  %7074 = icmp ugt i32 %7071, %7073
  br i1 %7074, label %7658, label %7075

; <label>:7075                                    ; preds = %7026
  br label %7076

; <label>:7076                                    ; preds = %7648, %7075
  %7077 = phi i32 [ %7655, %7648 ], [ %7071, %7075 ]
  %7078 = phi float [ %7649, %7648 ], [ %7017, %7075 ]
  %7079 = phi float [ %7650, %7648 ], [ %7018, %7075 ]
  %7080 = phi float [ %7651, %7648 ], [ %7019, %7075 ]
  %7081 = phi float [ %7652, %7648 ], [ %7020, %7075 ]
  %7082 = phi float [ %7653, %7648 ], [ %7021, %7075 ]
  %7083 = phi float [ %7654, %7648 ], [ %7022, %7075 ]
  %7084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.i32 %7084, 0
  %7086 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7059, i32 %7085, i32 %7077)  ; UMad(a,b,c)
  %7087 = shl i32 %7086, 2
  %7088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.i32 %7088, 0
  %7090 = shl i32 %7077, 5
  %7091 = sub nsw i32 %7069, %7090
  %7092 = call i32 @dx.op.binary.i32(i32 37, i32 %7091, i32 0)  ; IMax(a,b)
  %7093 = call i32 @dx.op.binary.i32(i32 38, i32 %7092, i32 31)  ; IMin(a,b)
  %7094 = sub nsw i32 1, %7069
  %7095 = add nsw i32 %7094, %7070
  %7096 = call i32 @dx.op.binary.i32(i32 37, i32 %7095, i32 0)  ; IMax(a,b)
  %7097 = call i32 @dx.op.binary.i32(i32 38, i32 %7096, i32 32)  ; IMin(a,b)
  %7098 = and i32 %7097, 31
  %7099 = shl i32 -1, %7098
  %7100 = xor i32 %7099, -1
  %7101 = and i32 %7093, 31
  %7102 = shl i32 %7100, %7101
  %7103 = icmp eq i32 %7097, 32
  %7104 = select i1 %7103, i32 -1, i32 %7102
  %7105 = and i32 %7104, %7089
  %7106 = icmp eq i32 %7105, 0
  br i1 %7106, label %7648, label %7107

; <label>:7107                                    ; preds = %7076
  br label %7108

; <label>:7108                                    ; preds = %7242, %7107
  %7109 = phi i32 [ %7120, %7242 ], [ %7105, %7107 ]
  %7110 = phi float [ %7243, %7242 ], [ %7078, %7107 ]
  %7111 = phi float [ %7244, %7242 ], [ %7079, %7107 ]
  %7112 = phi float [ %7245, %7242 ], [ %7080, %7107 ]
  %7113 = phi float [ %7246, %7242 ], [ %7081, %7107 ]
  %7114 = phi float [ %7247, %7242 ], [ %7082, %7107 ]
  %7115 = phi float [ %7248, %7242 ], [ %7083, %7107 ]
  %7116 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7109)  ; FirstbitLo(value)
  %7117 = add i32 %7116, %7090
  %7118 = and i32 %7116, 31
  %7119 = shl i32 1, %7118
  %7120 = xor i32 %7119, %7109
  %7121 = mul i32 %7117, 112
  %7122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7121, i32 undef)  ; BufferLoad(srv,index,wot)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.ResRet.f32 %7122, 1
  %7125 = extractvalue %dx.types.ResRet.f32 %7122, 2
  %7126 = or i32 %7121, 12
  %7127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7126, i32 undef)  ; BufferLoad(srv,index,wot)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = add i32 %7121, 16
  %7130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7129, i32 undef)  ; BufferLoad(srv,index,wot)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = add i32 %7121, 28
  %7135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7134, i32 undef)  ; BufferLoad(srv,index,wot)
  %7136 = extractvalue %dx.types.ResRet.i32 %7135, 0
  %7137 = add i32 %7121, 44
  %7138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7137, i32 undef)  ; BufferLoad(srv,index,wot)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = add i32 %7121, 48
  %7141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7140, i32 undef)  ; BufferLoad(srv,index,wot)
  %7142 = extractvalue %dx.types.ResRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.ResRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.ResRet.f32 %7141, 2
  %7145 = extractvalue %dx.types.ResRet.f32 %7141, 3
  %7146 = add i32 %7121, 64
  %7147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7146, i32 undef)  ; BufferLoad(srv,index,wot)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.ResRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.ResRet.f32 %7147, 2
  %7151 = extractvalue %dx.types.ResRet.f32 %7147, 3
  %7152 = add i32 %7121, 80
  %7153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7152, i32 undef)  ; BufferLoad(srv,index,wot)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7156 = add i32 %7121, 92
  %7157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7156, i32 undef)  ; BufferLoad(srv,index,wot)
  %7158 = extractvalue %dx.types.ResRet.i32 %7157, 0
  %7159 = call float @dx.op.dot3.f32(i32 55, float %7123, float %7124, float %7125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = select i1 %265, float %7154, float %7123
  %7161 = select i1 %265, float %7159, float %7124
  %7162 = select i1 %265, float %7155, float %7125
  %7163 = and i32 %7158, 65535
  %7164 = uitofp i32 %7163 to float
  %7165 = lshr i32 %7158, 16
  %7166 = uitofp i32 %7165 to float
  %7167 = and i32 %7136, 65535
  %7168 = and i32 %7136, 50331648
  %7169 = icmp eq i32 %7168, 33554432
  %7170 = fsub fast float %7142, %193
  %7171 = fsub fast float %7143, %194
  %7172 = fsub fast float %7144, %195
  %7173 = call float @dx.op.dot3.f32(i32 55, float %7170, float %7171, float %7172, float %7170, float %7171, float %7172)  ; Dot3(ax,ay,az,bx,by,bz)
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  %7175 = fdiv fast float 1.000000e+00, %7174
  %7176 = fmul fast float %7175, %7170
  %7177 = fmul fast float %7175, %7171
  %7178 = fmul fast float %7175, %7172
  %7179 = fadd fast float %7174, %7128
  %7180 = fdiv fast float 1.000000e+00, %7179
  %7181 = fmul float %7139, %7180
  %7182 = fmul float %7181, %7181
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  br i1 %7169, label %7184, label %7205

; <label>:7184                                    ; preds = %7108
  %7185 = fmul fast float %7150, %7131
  %7186 = fmul fast float %7150, %7132
  %7187 = fmul fast float %7150, %7133
  %7188 = fadd fast float %7170, %7185
  %7189 = fadd fast float %7171, %7186
  %7190 = fadd fast float %7172, %7187
  %7191 = call float @dx.op.dot3.f32(i32 55, float %7188, float %7189, float %7190, float %7188, float %7189, float %7190)  ; Dot3(ax,ay,az,bx,by,bz)
  %7192 = call float @dx.op.unary.f32(i32 25, float %7191)  ; Rsqrt(value)
  %7193 = fmul fast float %7192, %7188
  %7194 = fmul fast float %7192, %7189
  %7195 = fmul fast float %7192, %7190
  %7196 = fsub fast float %193, %7142
  %7197 = fsub fast float %194, %7143
  %7198 = fsub fast float %195, %7144
  %7199 = fsub fast float -0.000000e+00, %7196
  %7200 = fsub fast float -0.000000e+00, %7197
  %7201 = fsub fast float -0.000000e+00, %7198
  %7202 = call float @dx.op.dot3.f32(i32 55, float %7199, float %7200, float %7201, float %7131, float %7132, float %7133)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = fcmp fast ogt float %7202, 0.000000e+00
  %7204 = uitofp i1 %7203 to float
  br label %7205

; <label>:7205                                    ; preds = %7184, %7108
  %7206 = phi float [ %7204, %7184 ], [ 1.000000e+00, %7108 ]
  %7207 = phi float [ %7193, %7184 ], [ %7176, %7108 ]
  %7208 = phi float [ %7194, %7184 ], [ %7177, %7108 ]
  %7209 = phi float [ %7195, %7184 ], [ %7178, %7108 ]
  %7210 = call float @dx.op.dot3.f32(i32 55, float %7131, float %7132, float %7133, float %7207, float %7208, float %7209)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = fmul fast float %7210, %7210
  %7212 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  %7213 = fsub fast float 1.000000e+00, %7212
  %7214 = fmul fast float %7213, 5.000000e-01
  %7215 = fcmp fast ogt float %7210, 0.000000e+00
  %7216 = fsub fast float 1.000000e+00, %7214
  %7217 = select i1 %7215, float %7214, float %7216
  %7218 = fmul fast float %7217, %7166
  %7219 = fadd fast float %7218, %7164
  %7220 = fmul fast float %7219, 0x3EF0001000000000
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7220, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = fmul fast float %7210, %7148
  %7224 = fadd fast float %7223, %7149
  %7225 = call float @dx.op.unary.f32(i32 7, float %7224)  ; Saturate(value)
  %7226 = select i1 %7169, float 1.000000e+00, float %7225
  %7227 = select i1 %7169, float %7225, float 1.000000e+00
  %7228 = fmul fast float %7174, %7145
  %7229 = fsub fast float 1.000000e+00, %7228
  %7230 = fmul fast float %7229, %7151
  %7231 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7232 = fmul fast float %7231, %7227
  %7233 = fmul fast float %7232, 2.000000e+00
  %7234 = fsub fast float 3.000000e+00, %7233
  %7235 = fmul fast float %7222, %7206
  %7236 = fmul fast float %7232, %7232
  %7237 = fmul fast float %7236, %7235
  %7238 = fmul fast float %7237, %7234
  %7239 = call float @dx.op.binary.f32(i32 36, float %7238, float %7238)  ; FMin(a,b)
  %7240 = call float @dx.op.binary.f32(i32 36, float %7238, float %7239)  ; FMin(a,b)
  %7241 = fcmp fast ogt float %7240, 0.000000e+00
  br i1 %7241, label %7250, label %7242, !dx.controlflow.hints !122

; <label>:7242                                    ; preds = %7604, %7350, %7205
  %7243 = phi float [ %7110, %7350 ], [ %7110, %7205 ], [ %7644, %7604 ]
  %7244 = phi float [ %7111, %7350 ], [ %7111, %7205 ], [ %7645, %7604 ]
  %7245 = phi float [ %7112, %7350 ], [ %7112, %7205 ], [ %7646, %7604 ]
  %7246 = phi float [ %7113, %7350 ], [ %7113, %7205 ], [ %7638, %7604 ]
  %7247 = phi float [ %7114, %7350 ], [ %7114, %7205 ], [ %7639, %7604 ]
  %7248 = phi float [ %7115, %7350 ], [ %7115, %7205 ], [ %7640, %7604 ]
  %7249 = icmp eq i32 %7109, %7119
  br i1 %7249, label %7647, label %7108

; <label>:7250                                    ; preds = %7205
  %7251 = icmp eq i32 %7167, 255
  br i1 %7251, label %7350, label %7252, !dx.controlflow.hints !123

; <label>:7252                                    ; preds = %7250
  %7253 = mul nuw nsw i32 %7167, 176
  %7254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7253, i32 undef)  ; BufferLoad(srv,index,wot)
  %7255 = extractvalue %dx.types.ResRet.f32 %7254, 0
  %7256 = extractvalue %dx.types.ResRet.f32 %7254, 1
  %7257 = extractvalue %dx.types.ResRet.f32 %7254, 2
  %7258 = extractvalue %dx.types.ResRet.f32 %7254, 3
  %7259 = add nuw nsw i32 %7253, 16
  %7260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7259, i32 undef)  ; BufferLoad(srv,index,wot)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = add nuw nsw i32 %7253, 32
  %7264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7263, i32 undef)  ; BufferLoad(srv,index,wot)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.ResRet.f32 %7264, 1
  %7267 = extractvalue %dx.types.ResRet.f32 %7264, 2
  %7268 = add nuw nsw i32 %7253, 48
  %7269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7268, i32 undef)  ; BufferLoad(srv,index,wot)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = extractvalue %dx.types.ResRet.f32 %7269, 3
  %7274 = add nuw nsw i32 %7253, 64
  %7275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7274, i32 undef)  ; BufferLoad(srv,index,wot)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.ResRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.ResRet.f32 %7275, 2
  %7279 = extractvalue %dx.types.ResRet.f32 %7275, 3
  %7280 = add nuw nsw i32 %7253, 80
  %7281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7280, i32 undef)  ; BufferLoad(srv,index,wot)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.ResRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.ResRet.f32 %7281, 2
  %7285 = extractvalue %dx.types.ResRet.f32 %7281, 3
  %7286 = add nuw nsw i32 %7253, 96
  %7287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7286, i32 undef)  ; BufferLoad(srv,index,wot)
  %7288 = extractvalue %dx.types.ResRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.ResRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.ResRet.f32 %7287, 2
  %7291 = extractvalue %dx.types.ResRet.f32 %7287, 3
  %7292 = bitcast float %7262 to i32
  %7293 = fmul fast float %7267, %113
  %7294 = fmul fast float %7267, %114
  %7295 = fmul fast float %7267, %115
  %7296 = fadd fast float %7293, %193
  %7297 = fadd fast float %7294, %194
  %7298 = fadd fast float %7295, %195
  %7299 = fmul fast float %7296, %7270
  %7300 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7276, float %7299)  ; FMad(a,b,c)
  %7301 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7282, float %7300)  ; FMad(a,b,c)
  %7302 = fadd fast float %7301, %7288
  %7303 = fmul fast float %7296, %7271
  %7304 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7277, float %7303)  ; FMad(a,b,c)
  %7305 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7283, float %7304)  ; FMad(a,b,c)
  %7306 = fadd fast float %7305, %7289
  %7307 = fmul fast float %7296, %7272
  %7308 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7278, float %7307)  ; FMad(a,b,c)
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7284, float %7308)  ; FMad(a,b,c)
  %7310 = fadd fast float %7309, %7290
  %7311 = fmul fast float %7296, %7273
  %7312 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7279, float %7311)  ; FMad(a,b,c)
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7285, float %7312)  ; FMad(a,b,c)
  %7314 = fadd fast float %7313, %7291
  %7315 = fdiv fast float %7302, %7314
  %7316 = fdiv fast float %7306, %7314
  %7317 = fdiv fast float %7310, %7314
  %7318 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7317)  ; FMax(a,b)
  %7319 = fmul fast float %276, 0x401921FB60000000
  %7320 = call float @dx.op.unary.f32(i32 13, float %7319)  ; Sin(value)
  %7321 = call float @dx.op.unary.f32(i32 12, float %7319)  ; Cos(value)
  %7322 = fsub fast float -0.000000e+00, %7320
  %7323 = fmul fast float %7257, 5.000000e-01
  %7324 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7325 = call float @dx.op.unary.f32(i32 22, float %7324)  ; Frc(value)
  %7326 = fmul fast float %7325, 0x404A7DD040000000
  %7327 = call float @dx.op.unary.f32(i32 22, float %7326)  ; Frc(value)
  %7328 = fmul fast float %7327, %7266
  %7329 = fadd fast float %7328, %7323
  %7330 = call float @dx.op.tertiary.f32(i32 46, float %7329, float %7322, float 0.000000e+00)  ; FMad(a,b,c)
  %7331 = call float @dx.op.tertiary.f32(i32 46, float %7329, float %7321, float 0.000000e+00)  ; FMad(a,b,c)
  %7332 = fadd fast float %7330, %7315
  %7333 = fadd fast float %7331, %7316
  %7334 = fmul fast float %7332, %7261
  %7335 = fmul fast float %7333, %7261
  %7336 = call float @dx.op.binary.f32(i32 35, float %7334, float %7257)  ; FMax(a,b)
  %7337 = call float @dx.op.binary.f32(i32 35, float %7335, float %7257)  ; FMax(a,b)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7336, float %7258)  ; FMin(a,b)
  %7339 = call float @dx.op.binary.f32(i32 36, float %7337, float %7258)  ; FMin(a,b)
  %7340 = fadd fast float %7338, %7255
  %7341 = fadd fast float %7339, %7256
  %7342 = uitofp i32 %7292 to float
  %7343 = fadd fast float %7318, %7265
  %7344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7340, float %7341, float %7342, float undef, i32 0, i32 0, i32 undef, float %7343)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7345 = extractvalue %dx.types.ResRet.f32 %7344, 0
  %7346 = fadd fast float %7345, -1.000000e+00
  %7347 = fmul fast float %7346, %7226
  %7348 = fadd fast float %7347, 1.000000e+00
  %7349 = fmul fast float %7348, %7238
  br label %7350

; <label>:7350                                    ; preds = %7252, %7250
  %7351 = phi float [ %7349, %7252 ], [ %7238, %7250 ]
  %7352 = call float @dx.op.binary.f32(i32 36, float %7351, float %7351)  ; FMin(a,b)
  %7353 = call float @dx.op.binary.f32(i32 36, float %7351, float %7352)  ; FMin(a,b)
  %7354 = fcmp fast ogt float %7353, 0.000000e+00
  br i1 %7354, label %7355, label %7242, !dx.controlflow.hints !124

; <label>:7355                                    ; preds = %7350
  %7356 = fmul fast float %7351, %7160
  %7357 = fmul fast float %7351, %7161
  %7358 = fmul fast float %7351, %7162
  %7359 = fsub fast float %7144, %4863
  %7360 = fcmp fast ogt float %7359, 0.000000e+00
  %7361 = fsub fast float %195, %4863
  %7362 = fcmp fast ogt float %7361, 0.000000e+00
  %7363 = xor i1 %7362, %7360
  %7364 = fsub fast float %4863, %7144
  %7365 = fmul fast float %7364, 2.000000e+00
  %7366 = fadd fast float %7365, %7144
  %7367 = select i1 %7363, float %7144, float %7366
  %7368 = fsub fast float %7367, %195
  %7369 = call float @dx.op.dot3.f32(i32 55, float %7170, float %7171, float %7368, float %7170, float %7171, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = call float @dx.op.unary.f32(i32 25, float %7369)  ; Rsqrt(value)
  %7371 = fmul fast float %7370, %7170
  %7372 = fmul fast float %7370, %7171
  %7373 = fmul fast float %7370, %7368
  %7374 = fsub fast float %4863, %195
  %7375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7374)  ; Dot3(ax,ay,az,bx,by,bz)
  %7376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7371, float %7372, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = fdiv fast float 1.000000e+00, %7376
  %7378 = fmul fast float %7377, %7375
  %7379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7361, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = fcmp fast ogt float %7379, 0.000000e+00
  %7381 = fcmp fast olt float %7379, 0.000000e+00
  %7382 = zext i1 %7380 to i32
  %7383 = zext i1 %7381 to i32
  %7384 = sub nsw i32 %7382, %7383
  %7385 = sitofp i32 %7384 to float
  %7386 = fsub fast float %7367, %4863
  %7387 = call float @dx.op.dot3.f32(i32 55, float %7170, float %7171, float %7386, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7388 = fcmp fast ogt float %7387, 0.000000e+00
  %7389 = fcmp fast olt float %7387, 0.000000e+00
  %7390 = zext i1 %7388 to i32
  %7391 = zext i1 %7389 to i32
  %7392 = sub nsw i32 %7390, %7391
  %7393 = sitofp i32 %7392 to float
  %7394 = fcmp fast une float %7385, %7393
  br i1 %7394, label %7395, label %7405

; <label>:7395                                    ; preds = %7355
  %7396 = fmul fast float %7378, %7373
  %7397 = fmul fast float %7378, %7372
  %7398 = fmul fast float %7378, %7371
  %7399 = fmul fast float %7398, %7398
  %7400 = fmul fast float %7397, %7397
  %7401 = fadd fast float %7399, %7400
  %7402 = fmul fast float %7396, %7396
  %7403 = fadd fast float %7401, %7402
  %7404 = call float @dx.op.unary.f32(i32 24, float %7403)  ; Sqrt(value)
  br label %7417

; <label>:7405                                    ; preds = %7355
  %7406 = icmp slt i32 %7384, 0
  br i1 %7406, label %7407, label %7417

; <label>:7407                                    ; preds = %7405
  %7408 = fsub fast float %193, %7142
  %7409 = fsub fast float %194, %7143
  %7410 = fsub fast float %195, %7367
  %7411 = fmul fast float %7408, %7408
  %7412 = fmul fast float %7409, %7409
  %7413 = fadd fast float %7411, %7412
  %7414 = fmul fast float %7410, %7410
  %7415 = fadd fast float %7413, %7414
  %7416 = call float @dx.op.unary.f32(i32 24, float %7415)  ; Sqrt(value)
  br label %7417

; <label>:7417                                    ; preds = %7407, %7405, %7395
  %7418 = phi float [ %7404, %7395 ], [ %7416, %7407 ], [ 0.000000e+00, %7405 ]
  %7419 = and i1 %7362, %7360
  %7420 = fsub fast float -0.000000e+00, %7418
  %7421 = select i1 %7419, float -0.000000e+00, float %7420
  %7422 = fmul fast float %4864, 0x3FF7154760000000
  %7423 = fmul fast float %7422, %7421
  %7424 = fmul fast float %4865, 0x3FF7154760000000
  %7425 = fmul fast float %7424, %7421
  %7426 = fmul fast float %4866, 0x3FF7154760000000
  %7427 = fmul fast float %7426, %7421
  %7428 = call float @dx.op.unary.f32(i32 21, float %7423)  ; Exp(value)
  %7429 = call float @dx.op.unary.f32(i32 21, float %7425)  ; Exp(value)
  %7430 = call float @dx.op.unary.f32(i32 21, float %7427)  ; Exp(value)
  %7431 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7432 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7433 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7434 = fmul fast float %7356, %7431
  %7435 = fmul fast float %7357, %7432
  %7436 = fmul fast float %7358, %7433
  %7437 = fsub fast float %7176, %5655
  %7438 = fsub fast float %7177, %5654
  %7439 = fsub fast float %7178, %5653
  %7440 = call float @dx.op.dot3.f32(i32 55, float %7437, float %7438, float %7439, float %7437, float %7438, float %7439)  ; Dot3(ax,ay,az,bx,by,bz)
  %7441 = call float @dx.op.unary.f32(i32 25, float %7440)  ; Rsqrt(value)
  %7442 = fmul fast float %7441, %7437
  %7443 = fmul fast float %7441, %7438
  %7444 = fmul fast float %7441, %7439
  %7445 = call float @dx.op.dot3.f32(i32 55, float %7176, float %7177, float %7178, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5651, float %5650, float %7442, float %7443, float %7444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7447 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  %7448 = fmul fast float %7447, %7183
  %7449 = fmul fast float %7447, %7447
  %7450 = fmul fast float %7449, %5683
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = fmul fast float %7448, %7451
  %7453 = bitcast float %7173 to i32
  %7454 = ashr i32 %7453, 1
  %7455 = sub nsw i32 1597463007, %7454
  %7456 = bitcast i32 %7455 to float
  %7457 = fmul fast float %7456, %7170
  %7458 = fmul fast float %7456, %7171
  %7459 = fmul fast float %7456, %7172
  %7460 = fsub fast float %7457, %5655
  %7461 = fsub fast float %7458, %5654
  %7462 = fsub fast float %7459, %5653
  %7463 = call float @dx.op.dot3.f32(i32 55, float %7460, float %7461, float %7462, float %7460, float %7461, float %7462)  ; Dot3(ax,ay,az,bx,by,bz)
  %7464 = call float @dx.op.unary.f32(i32 25, float %7463)  ; Rsqrt(value)
  %7465 = fmul fast float %7460, %7464
  %7466 = fmul fast float %7461, %7464
  %7467 = fmul fast float %7462, %7464
  %7468 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %7465, float %7466, float %7467)  ; Dot3(ax,ay,az,bx,by,bz)
  %7469 = fmul fast float %7468, %7468
  %7470 = call float @dx.op.unary.f32(i32 6, float %7445)  ; FAbs(value)
  %7471 = fsub fast float 1.000000e+00, %5665
  %7472 = call float @dx.op.binary.f32(i32 35, float %7471, float 0x3F847AE140000000)  ; FMax(a,b)
  %7473 = fmul fast float %7472, %7472
  %7474 = fmul fast float %7473, %7473
  %7475 = fsub fast float 1.000000e+00, %7474
  %7476 = fmul fast float %5670, %5670
  %7477 = fmul fast float %7476, %7475
  %7478 = fadd fast float %7477, %7474
  %7479 = bitcast float %7478 to i32
  %7480 = ashr i32 %7479, 1
  %7481 = add nsw i32 %7480, 532487669
  %7482 = bitcast i32 %7481 to float
  %7483 = fadd fast float %7482, %5670
  %7484 = fmul fast float %7474, %7469
  %7485 = fsub fast float 1.000000e+00, %7469
  %7486 = fadd fast float %7485, %7484
  %7487 = fmul fast float %7470, %7470
  %7488 = fmul fast float %7487, %7475
  %7489 = fadd fast float %7488, %7474
  %7490 = bitcast float %7489 to i32
  %7491 = ashr i32 %7490, 1
  %7492 = add nsw i32 %7491, 532487669
  %7493 = bitcast i32 %7492 to float
  %7494 = fadd fast float %7493, %7470
  %7495 = fmul fast float %7486, %7486
  %7496 = fmul fast float %7495, %7483
  %7497 = fmul fast float %7496, %7494
  %7498 = fdiv fast float 1.000000e+00, %7497
  %7499 = bitcast float %7474 to i32
  %7500 = sitofp i32 %7499 to float
  %7501 = fmul fast float %7500, 0x3FE7F73180000000
  %7502 = fadd fast float %7501, 0x41AFE27C40000000
  %7503 = fptosi float %7502 to i32
  %7504 = bitcast i32 %7503 to float
  %7505 = fmul fast float %7139, 0x3FD80E9D60000000
  %7506 = fmul fast float %7505, %7456
  %7507 = fadd fast float %7504, %7506
  %7508 = bitcast float %7507 to i32
  %7509 = sub nsw i32 2129859010, %7508
  %7510 = bitcast i32 %7509 to float
  %7511 = fmul fast float %7474, %7498
  %7512 = fmul fast float %7511, %7504
  %7513 = fmul fast float %7512, %7510
  %7514 = fmul fast float %5783, 0x3FF9999980000000
  %7515 = fsub fast float 5.000000e+00, %7514
  %7516 = call float @dx.op.unary.f32(i32 6, float %7446)  ; FAbs(value)
  %7517 = fsub fast float 1.000000e+00, %7516
  %7518 = fmul fast float %5783, 0x41D9660740000000
  %7519 = fadd fast float %7518, 0xC1EFBF8940000000
  %7520 = bitcast float %7517 to i32
  %7521 = sitofp i32 %7520 to float
  %7522 = fmul fast float %7521, %7515
  %7523 = fadd fast float %7519, %7522
  %7524 = fptosi float %7523 to i32
  %7525 = bitcast i32 %7524 to float
  %7526 = fsub fast float 1.000000e+00, %5656
  %7527 = fsub fast float 1.000000e+00, %5657
  %7528 = fsub fast float 1.000000e+00, %5668
  %7529 = fmul fast float %7525, %7526
  %7530 = fmul fast float %7525, %7527
  %7531 = fmul fast float %7525, %7528
  %7532 = fadd fast float %7529, %5656
  %7533 = fadd fast float %7530, %5657
  %7534 = fadd fast float %7531, %5668
  br i1 %5806, label %7535, label %7558

; <label>:7535                                    ; preds = %7417
  %7536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4458, float %7516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7537 = extractvalue %dx.types.ResRet.f32 %7536, 0
  %7538 = extractvalue %dx.types.ResRet.f32 %7536, 1
  %7539 = extractvalue %dx.types.ResRet.f32 %7536, 2
  %7540 = fadd fast float %7537, -5.000000e-01
  %7541 = fadd fast float %7538, -5.000000e-01
  %7542 = fadd fast float %7539, -5.000000e-01
  %7543 = fmul fast float %5656, 4.000000e+00
  %7544 = fmul fast float %7543, %7526
  %7545 = fmul fast float %7544, %7540
  %7546 = fmul fast float %5657, 4.000000e+00
  %7547 = fmul fast float %7546, %7527
  %7548 = fmul fast float %7547, %7541
  %7549 = fmul fast float %5668, 4.000000e+00
  %7550 = fmul fast float %7549, %7528
  %7551 = fmul fast float %7550, %7542
  %7552 = fadd fast float %7545, %7532
  %7553 = fadd fast float %7548, %7533
  %7554 = fadd fast float %7551, %7534
  %7555 = call float @dx.op.unary.f32(i32 7, float %7552)  ; Saturate(value)
  %7556 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7557 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  br label %7558

; <label>:7558                                    ; preds = %7535, %7417
  %7559 = phi float [ %7555, %7535 ], [ %7532, %7417 ]
  %7560 = phi float [ %7556, %7535 ], [ %7533, %7417 ]
  %7561 = phi float [ %7557, %7535 ], [ %7534, %7417 ]
  %7562 = fmul fast float %7445, 9.843750e-01
  %7563 = fadd fast float %7562, 7.812500e-03
  %7564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7563, float %5787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7565 = extractvalue %dx.types.ResRet.f32 %7564, 0
  %7566 = extractvalue %dx.types.ResRet.f32 %7564, 1
  %7567 = extractvalue %dx.types.ResRet.f32 %7564, 2
  %7568 = extractvalue %dx.types.ResRet.f32 %7564, 3
  %7569 = fsub fast float %7567, %7565
  %7570 = fsub fast float %7568, %7566
  %7571 = fmul fast float %7569, %5793
  %7572 = fmul fast float %7570, %5793
  %7573 = fadd fast float %7571, %7565
  %7574 = fadd fast float %7572, %7566
  %7575 = fmul fast float %7573, %5656
  %7576 = fmul fast float %7573, %5657
  %7577 = fmul fast float %7573, %5668
  %7578 = fadd fast float %7575, %7574
  %7579 = fadd fast float %7576, %7574
  %7580 = fadd fast float %7577, %7574
  br i1 %5806, label %7581, label %7604

; <label>:7581                                    ; preds = %7558
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4458, float %7445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.ResRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.ResRet.f32 %7582, 2
  %7586 = fadd fast float %7583, -5.000000e-01
  %7587 = fadd fast float %7584, -5.000000e-01
  %7588 = fadd fast float %7585, -5.000000e-01
  %7589 = fmul fast float %5656, 4.000000e+00
  %7590 = fmul fast float %7589, %7526
  %7591 = fmul fast float %7590, %7586
  %7592 = fmul fast float %5657, 4.000000e+00
  %7593 = fmul fast float %7592, %7527
  %7594 = fmul fast float %7593, %7587
  %7595 = fmul fast float %5668, 4.000000e+00
  %7596 = fmul fast float %7595, %7528
  %7597 = fmul fast float %7596, %7588
  %7598 = fadd fast float %7591, %7578
  %7599 = fadd fast float %7594, %7579
  %7600 = fadd fast float %7597, %7580
  %7601 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7602 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7603 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  br label %7604

; <label>:7604                                    ; preds = %7581, %7558
  %7605 = phi float [ %7601, %7581 ], [ %7578, %7558 ]
  %7606 = phi float [ %7602, %7581 ], [ %7579, %7558 ]
  %7607 = phi float [ %7603, %7581 ], [ %7580, %7558 ]
  %7608 = call float @dx.op.binary.f32(i32 35, float %7606, float %7607)  ; FMax(a,b)
  %7609 = call float @dx.op.binary.f32(i32 35, float %7605, float %7608)  ; FMax(a,b)
  %7610 = fsub fast float 1.000000e+00, %7609
  %7611 = fmul fast float %7559, %7513
  %7612 = fmul fast float %7560, %7513
  %7613 = fmul fast float %7561, %7513
  %7614 = fsub fast float 1.000000e+00, %7446
  %7615 = bitcast float %7614 to i32
  %7616 = sitofp i32 %7615 to float
  %7617 = fmul fast float %7616, 5.000000e+00
  %7618 = fadd fast float %7617, 0xC1EFBF8940000000
  %7619 = fptosi float %7618 to i32
  %7620 = bitcast i32 %7619 to float
  %7621 = fmul fast float %7620, %4459
  %7622 = fmul fast float %7610, %7621
  %7623 = fmul fast float %7622, %5856
  %7624 = fmul fast float %7622, %5857
  %7625 = fmul fast float %7622, %5858
  %7626 = fadd fast float %7623, %7611
  %7627 = fadd fast float %7624, %7612
  %7628 = fadd fast float %7625, %7613
  %7629 = fmul fast float %7434, %4455
  %7630 = fmul fast float %7629, %7452
  %7631 = fmul fast float %7630, %7610
  %7632 = fmul fast float %7435, %4455
  %7633 = fmul fast float %7632, %7452
  %7634 = fmul fast float %7633, %7610
  %7635 = fmul fast float %7436, %4455
  %7636 = fmul fast float %7635, %7452
  %7637 = fmul fast float %7636, %7610
  %7638 = fadd fast float %7631, %7113
  %7639 = fadd fast float %7634, %7114
  %7640 = fadd fast float %7637, %7115
  %7641 = fmul fast float %7630, %7626
  %7642 = fmul fast float %7633, %7627
  %7643 = fmul fast float %7636, %7628
  %7644 = fadd fast float %7641, %7110
  %7645 = fadd fast float %7642, %7111
  %7646 = fadd fast float %7643, %7112
  br label %7242

; <label>:7647                                    ; preds = %7242
  br label %7648

; <label>:7648                                    ; preds = %7647, %7076
  %7649 = phi float [ %7078, %7076 ], [ %7243, %7647 ]
  %7650 = phi float [ %7079, %7076 ], [ %7244, %7647 ]
  %7651 = phi float [ %7080, %7076 ], [ %7245, %7647 ]
  %7652 = phi float [ %7081, %7076 ], [ %7246, %7647 ]
  %7653 = phi float [ %7082, %7076 ], [ %7247, %7647 ]
  %7654 = phi float [ %7083, %7076 ], [ %7248, %7647 ]
  %7655 = add i32 %7077, 1
  %7656 = icmp ugt i32 %7655, %7073
  br i1 %7656, label %7657, label %7076

; <label>:7657                                    ; preds = %7648
  br label %7658

; <label>:7658                                    ; preds = %7657, %7026, %7016
  %7659 = phi float [ %7017, %7016 ], [ %7017, %7026 ], [ %7649, %7657 ]
  %7660 = phi float [ %7018, %7016 ], [ %7018, %7026 ], [ %7650, %7657 ]
  %7661 = phi float [ %7019, %7016 ], [ %7019, %7026 ], [ %7651, %7657 ]
  %7662 = phi float [ %7020, %7016 ], [ %7020, %7026 ], [ %7652, %7657 ]
  %7663 = phi float [ %7021, %7016 ], [ %7021, %7026 ], [ %7653, %7657 ]
  %7664 = phi float [ %7022, %7016 ], [ %7022, %7026 ], [ %7654, %7657 ]
  %7665 = fmul fast float %4455, %4455
  %7666 = fmul fast float %7665, %5882
  %7667 = fmul fast float %7665, %5883
  %7668 = fmul fast float %7665, %5884
  %7669 = fadd fast float %7666, 1.000000e+00
  %7670 = fadd fast float %7667, 1.000000e+00
  %7671 = fadd fast float %7668, 1.000000e+00
  %7672 = call float @dx.op.dot3.f32(i32 55, float %7669, float %7670, float %7671, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7673 = fsub fast float 1.000000e+00, %7672
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 0
  %7676 = fmul fast float %7675, %5888
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7679 = fsub fast float 1.000000e+00, %4463
  %7680 = call float @dx.op.unary.f32(i32 7, float %7679)  ; Saturate(value)
  %7681 = fadd fast float %7664, %4461
  %7682 = fmul fast float %7681, %4463
  %7683 = fmul fast float %7680, %7678
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 3
  %7686 = fmul fast float %7662, %5662
  %7687 = fmul fast float %7663, %5663
  %7688 = fmul fast float %7664, %5664
  %7689 = fcmp fast ogt float %97, %228
  %7690 = and i1 %7689, %4869
  %7691 = or i1 %4875, %7690
  %7692 = icmp eq i32 %4868, 2
  %7693 = fcmp fast ole float %97, %228
  %7694 = and i1 %7693, %7692
  %7695 = or i1 %7694, %7691
  br i1 %7690, label %7696, label %7953

; <label>:7696                                    ; preds = %7658
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 2
  %7699 = extractvalue %dx.types.CBufRet.f32 %7697, 3
  %7700 = fmul fast float %7698, %106
  %7701 = fmul fast float %7699, %107
  %7702 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7703 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7704 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7702, float %7703, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7705 = extractvalue %dx.types.ResRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.ResRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.ResRet.f32 %7704, 2
  %7708 = extractvalue %dx.types.ResRet.f32 %7704, 3
  %7709 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7702, float %7703, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7710 = extractvalue %dx.types.ResRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.ResRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.ResRet.f32 %7709, 2
  %7713 = extractvalue %dx.types.ResRet.f32 %7709, 3
  %7714 = call float @dx.op.binary.f32(i32 35, float %7706, float %7707)  ; FMax(a,b)
  %7715 = call float @dx.op.binary.f32(i32 35, float %7705, float %7714)  ; FMax(a,b)
  %7716 = call float @dx.op.binary.f32(i32 35, float %7715, float %7708)  ; FMax(a,b)
  %7717 = call float @dx.op.binary.f32(i32 36, float %7711, float %7712)  ; FMin(a,b)
  %7718 = call float @dx.op.binary.f32(i32 36, float %7710, float %7717)  ; FMin(a,b)
  %7719 = call float @dx.op.binary.f32(i32 36, float %7718, float %7713)  ; FMin(a,b)
  %7720 = fmul fast float %7716, 2.550000e+02
  %7721 = fadd fast float %7720, 0x3F70101020000000
  %7722 = fptoui float %7721 to i32
  %7723 = fmul fast float %7719, 2.550000e+02
  %7724 = fadd fast float %7723, 0x3F70101020000000
  %7725 = fptoui float %7724 to i32
  %7726 = icmp ult i32 %7722, %7725
  br i1 %7726, label %7727, label %7895

; <label>:7727                                    ; preds = %7696
  %7728 = fcmp fast ogt float %96, 9.843750e-01
  %7729 = fadd fast float %97, -4.000000e+00
  %7730 = select i1 %7728, float -4.000000e+00, float %7729
  %7731 = call float @dx.op.binary.f32(i32 35, float %7730, float 0.000000e+00)  ; FMax(a,b)
  %7732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7732, 0
  %7734 = fadd fast float %7733, %7731
  %7735 = extractvalue %dx.types.CBufRet.f32 %7732, 2
  %7736 = fmul fast float %7734, %7735
  %7737 = call float @dx.op.unary.f32(i32 23, float %7736)  ; Log(value)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7732, 3
  %7739 = fmul fast float %7738, %7737
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 2
  %7742 = fmul fast float %7739, %7741
  %7743 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7744 = uitofp i32 %7722 to float
  %7745 = uitofp i32 %7725 to float
  %7746 = fadd fast float %7744, 5.000000e-01
  %7747 = fadd fast float %7745, 5.000000e-01
  %7748 = fmul fast float %7741, %7746
  %7749 = fmul fast float %7741, %7747
  %7750 = fadd fast float %7748, 0x3F0FFB4800000000
  %7751 = fadd fast float %7749, 0xBF0FFB4800000000
  %7752 = call float @dx.op.binary.f32(i32 35, float %7743, float %7750)  ; FMax(a,b)
  %7753 = call float @dx.op.binary.f32(i32 36, float %7752, float %7751)  ; FMin(a,b)
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7757 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7758 = fmul fast float %7755, %7753
  %7759 = fadd fast float %7757, %7758
  %7760 = fadd fast float %7757, %7756
  %7761 = fsub fast float %7755, %7756
  %7762 = fadd fast float %7761, %7757
  %7763 = call float @dx.op.binary.f32(i32 35, float %7759, float %7760)  ; FMax(a,b)
  %7764 = call float @dx.op.binary.f32(i32 36, float %7763, float %7762)  ; FMin(a,b)
  %7765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7702, float %7703, float %7764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.i32 %7769, 0
  %7771 = extractvalue %dx.types.CBufRet.i32 %7769, 1
  %7772 = uitofp i32 %7770 to float
  %7773 = uitofp i32 %7771 to float
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7777 = fmul fast float %7772, %7702
  %7778 = fmul fast float %7773, %7703
  %7779 = fadd fast float %7777, -5.000000e-01
  %7780 = fadd fast float %7778, -5.000000e-01
  %7781 = call float @dx.op.unary.f32(i32 22, float %7779)  ; Frc(value)
  %7782 = call float @dx.op.unary.f32(i32 22, float %7780)  ; Frc(value)
  %7783 = fmul fast float %7781, %7781
  %7784 = fmul fast float %7783, %7781
  %7785 = fsub fast float 3.000000e+00, %7781
  %7786 = fmul fast float %7783, %7785
  %7787 = fmul fast float %7781, 3.000000e+00
  %7788 = fmul fast float %7784, 3.000000e+00
  %7789 = fmul fast float %7783, 6.000000e+00
  %7790 = fsub fast float %7788, %7789
  %7791 = fadd fast float %7790, 4.000000e+00
  %7792 = fmul fast float %7791, 0x3FC5555560000000
  %7793 = fmul fast float %7784, -3.000000e+00
  %7794 = fadd fast float %7783, %7781
  %7795 = fmul fast float %7794, 3.000000e+00
  %7796 = fadd fast float %7793, 1.000000e+00
  %7797 = fadd fast float %7796, %7795
  %7798 = fmul fast float %7784, 0x3FC5555560000000
  %7799 = fmul fast float %7782, %7782
  %7800 = fmul fast float %7799, %7782
  %7801 = fsub fast float 3.000000e+00, %7782
  %7802 = fmul fast float %7799, %7801
  %7803 = fmul fast float %7782, 3.000000e+00
  %7804 = fmul fast float %7800, 3.000000e+00
  %7805 = fmul fast float %7799, 6.000000e+00
  %7806 = fsub fast float %7804, %7805
  %7807 = fadd fast float %7806, 4.000000e+00
  %7808 = fmul fast float %7807, 0x3FC5555560000000
  %7809 = fmul fast float %7800, -3.000000e+00
  %7810 = fadd fast float %7799, %7782
  %7811 = fmul fast float %7810, 3.000000e+00
  %7812 = fadd fast float %7809, 1.000000e+00
  %7813 = fadd fast float %7812, %7811
  %7814 = fmul fast float %7800, 0x3FC5555560000000
  %7815 = fadd fast float %7781, 1.000000e+00
  %7816 = fsub fast float 1.000000e+00, %7787
  %7817 = fadd fast float %7816, %7786
  %7818 = fadd fast float %7817, %7791
  %7819 = fmul fast float %7818, 0x3FC5555560000000
  %7820 = fdiv fast float %7792, %7819
  %7821 = fsub fast float %7815, %7820
  %7822 = fsub fast float 1.000000e+00, %7781
  %7823 = fadd fast float %7797, %7784
  %7824 = fmul fast float %7823, 0x3FC5555560000000
  %7825 = fdiv fast float %7798, %7824
  %7826 = fadd fast float %7822, %7825
  %7827 = fadd fast float %7782, 1.000000e+00
  %7828 = fsub fast float 1.000000e+00, %7803
  %7829 = fadd fast float %7828, %7802
  %7830 = fadd fast float %7829, %7807
  %7831 = fmul fast float %7830, 0x3FC5555560000000
  %7832 = fdiv fast float %7808, %7831
  %7833 = fsub fast float %7827, %7832
  %7834 = fsub fast float 1.000000e+00, %7782
  %7835 = fadd fast float %7813, %7800
  %7836 = fmul fast float %7835, 0x3FC5555560000000
  %7837 = fdiv fast float %7814, %7836
  %7838 = fadd fast float %7837, %7834
  %7839 = fmul fast float %7821, %7775
  %7840 = fsub fast float %7702, %7839
  %7841 = fmul fast float %7826, %7775
  %7842 = fadd fast float %7841, %7702
  %7843 = fmul fast float %7838, %7776
  %7844 = fadd fast float %7843, %7703
  %7845 = fmul fast float %7833, %7776
  %7846 = fsub fast float %7703, %7845
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7840, float %7846, float %7764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7842, float %7846, float %7764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7852 = extractvalue %dx.types.ResRet.f32 %7851, 0
  %7853 = extractvalue %dx.types.ResRet.f32 %7851, 1
  %7854 = extractvalue %dx.types.ResRet.f32 %7851, 2
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7840, float %7844, float %7764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7842, float %7844, float %7764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7860 = extractvalue %dx.types.ResRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.ResRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.ResRet.f32 %7859, 2
  %7863 = fsub fast float %7856, %7848
  %7864 = fsub fast float %7857, %7849
  %7865 = fsub fast float %7858, %7850
  %7866 = fmul fast float %7863, %7836
  %7867 = fmul fast float %7864, %7836
  %7868 = fmul fast float %7865, %7836
  %7869 = fadd fast float %7866, %7848
  %7870 = fadd fast float %7867, %7849
  %7871 = fadd fast float %7868, %7850
  %7872 = fsub fast float %7860, %7852
  %7873 = fsub fast float %7861, %7853
  %7874 = fsub fast float %7862, %7854
  %7875 = fmul fast float %7872, %7836
  %7876 = fmul fast float %7873, %7836
  %7877 = fmul fast float %7874, %7836
  %7878 = fsub fast float %7852, %7869
  %7879 = fadd fast float %7878, %7875
  %7880 = fsub fast float %7853, %7870
  %7881 = fadd fast float %7880, %7876
  %7882 = fsub fast float %7854, %7871
  %7883 = fadd fast float %7882, %7877
  %7884 = fmul fast float %7879, %7824
  %7885 = fmul fast float %7881, %7824
  %7886 = fmul fast float %7883, %7824
  %7887 = fadd fast float %7884, %7869
  %7888 = fadd fast float %7885, %7870
  %7889 = fadd fast float %7886, %7871
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7892 = fmul fast float %7887, %7891
  %7893 = fmul fast float %7888, %7891
  %7894 = fmul fast float %7889, %7891
  br label %7895

; <label>:7895                                    ; preds = %7727, %7696
  %7896 = phi float [ %7766, %7727 ], [ 1.000000e+00, %7696 ]
  %7897 = phi float [ %7767, %7727 ], [ 1.000000e+00, %7696 ]
  %7898 = phi float [ %7768, %7727 ], [ 1.000000e+00, %7696 ]
  %7899 = phi float [ %7892, %7727 ], [ 0.000000e+00, %7696 ]
  %7900 = phi float [ %7893, %7727 ], [ 0.000000e+00, %7696 ]
  %7901 = phi float [ %7894, %7727 ], [ 0.000000e+00, %7696 ]
  %7902 = fmul fast float %7899, %7673
  %7903 = fmul fast float %7900, %7673
  %7904 = fmul fast float %7901, %7673
  %7905 = call float @dx.op.dot3.f32(i32 55, float %7896, float %7897, float %7898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7906 = call float @dx.op.dot3.f32(i32 55, float %7902, float %7903, float %7904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7907 = select i1 %265, float %7905, float %7896
  %7908 = select i1 %265, float %7905, float %7897
  %7909 = select i1 %265, float 1.000000e+00, float %7898
  %7910 = select i1 %265, float %7906, float %7902
  %7911 = select i1 %265, float 0.000000e+00, float %7903
  %7912 = select i1 %265, float 0.000000e+00, float %7904
  %7913 = fmul fast float %7907, %7686
  %7914 = fmul fast float %7908, %7687
  %7915 = fmul fast float %7909, %7688
  %7916 = fadd fast float %7913, %7910
  %7917 = fadd fast float %7914, %7911
  %7918 = fadd fast float %7912, %7915
  %7919 = fmul fast float %7907, %7659
  %7920 = fmul fast float %7908, %7660
  %7921 = fmul fast float %7909, %7661
  %7922 = fmul fast float %142, %7698
  %7923 = fmul fast float %144, %7699
  %7924 = fsub fast float 1.000000e+00, %7922
  %7925 = fsub fast float 1.000000e+00, %7923
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = fmul fast float %7924, %7927
  %7931 = fmul fast float %7924, %7928
  %7932 = fmul fast float %7924, %7929
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 1
  %7936 = extractvalue %dx.types.CBufRet.f32 %7933, 2
  %7937 = fmul fast float %7925, %7934
  %7938 = fmul fast float %7925, %7935
  %7939 = fmul fast float %7925, %7936
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 0
  %7942 = extractvalue %dx.types.CBufRet.f32 %7940, 1
  %7943 = extractvalue %dx.types.CBufRet.f32 %7940, 2
  %7944 = fadd fast float %7937, %7941
  %7945 = fadd fast float %7944, %7930
  %7946 = fadd fast float %7938, %7942
  %7947 = fadd fast float %7946, %7931
  %7948 = fadd fast float %7939, %7943
  %7949 = fadd fast float %7948, %7932
  %7950 = fmul fast float %7945, %228
  %7951 = fmul fast float %7947, %228
  %7952 = fmul fast float %7949, %228
  br label %7953

; <label>:7953                                    ; preds = %7895, %7658
  %7954 = phi float [ %7950, %7895 ], [ %193, %7658 ]
  %7955 = phi float [ %7951, %7895 ], [ %194, %7658 ]
  %7956 = phi float [ %7952, %7895 ], [ %195, %7658 ]
  %7957 = phi float [ %228, %7895 ], [ %97, %7658 ]
  %7958 = phi float [ %7916, %7895 ], [ %7686, %7658 ]
  %7959 = phi float [ %7917, %7895 ], [ %7687, %7658 ]
  %7960 = phi float [ %7918, %7895 ], [ %7688, %7658 ]
  %7961 = phi float [ %7919, %7895 ], [ %7659, %7658 ]
  %7962 = phi float [ %7920, %7895 ], [ %7660, %7658 ]
  %7963 = phi float [ %7921, %7895 ], [ %7661, %7658 ]
  %7964 = phi float [ %7896, %7895 ], [ 1.000000e+00, %7658 ]
  br i1 %7695, label %9119, label %7965

; <label>:7965                                    ; preds = %7953
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 0
  %7968 = extractvalue %dx.types.CBufRet.f32 %7966, 1
  %7969 = extractvalue %dx.types.CBufRet.f32 %7966, 2
  %7970 = extractvalue %dx.types.CBufRet.f32 %7966, 3
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.CBufRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7975 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7980 = extractvalue %dx.types.CBufRet.f32 %7976, 3
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.CBufRet.f32 %7981, 1
  %7984 = extractvalue %dx.types.CBufRet.f32 %7981, 2
  %7985 = extractvalue %dx.types.CBufRet.f32 %7981, 3
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 3
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 3
  %7990 = extractvalue %dx.types.CBufRet.f32 %7988, 0
  %7991 = extractvalue %dx.types.CBufRet.f32 %7988, 1
  %7992 = extractvalue %dx.types.CBufRet.f32 %7988, 2
  %7993 = fcmp fast olt float %7992, -5.000000e-01
  %7994 = call float @dx.op.dot3.f32(i32 55, float %7954, float %7955, float %7956, float %7954, float %7955, float %7956)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = call float @dx.op.unary.f32(i32 25, float %7994)  ; Rsqrt(value)
  %7996 = fmul fast float %7995, %7994
  %7997 = fmul fast float %7995, %7954
  %7998 = fmul fast float %7995, %7955
  %7999 = fmul fast float %7995, %7956
  %8000 = fadd fast float %7996, %7970
  %8001 = call float @dx.op.dot3.f32(i32 55, float %7997, float %7998, float %7999, float %7967, float %7968, float %7969)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.i32 %8002, 1
  %8004 = and i32 %8003, 1
  %8005 = icmp ne i32 %8004, 0
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8008 = fcmp fast ogt float %8007, 0.000000e+00
  %8009 = and i1 %8005, %8008
  br i1 %8009, label %8010, label %8416, !dx.controlflow.hints !125

; <label>:8010                                    ; preds = %7965
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 3
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 2
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 2
  %8017 = fsub fast float %8014, %8016
  %8018 = and i32 %8003, 2
  %8019 = extractvalue %dx.types.CBufRet.i32 %8002, 0
  %8020 = call i32 @dx.op.binary.i32(i32 40, i32 %8019, i32 3)  ; UMin(a,b)
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.CBufRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.CBufRet.f32 %8015, 0
  %8025 = extractvalue %dx.types.CBufRet.f32 %8015, 1
  %8026 = fsub fast float %8022, %8024
  %8027 = fsub fast float %8023, %8025
  %8028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8029 = extractvalue %dx.types.CBufRet.f32 %8028, 0
  %8030 = fcmp fast ogt float %8029, 0.000000e+00
  %8031 = fsub fast float -0.000000e+00, %8026
  %8032 = fsub fast float -0.000000e+00, %8027
  %8033 = call float @dx.op.dot2.f32(i32 54, float %7997, float %7998, float %7997, float %7998)  ; Dot2(ax,ay,bx,by)
  %8034 = call float @dx.op.dot2.f32(i32 54, float %7997, float %7998, float %8031, float %8032)  ; Dot2(ax,ay,bx,by)
  %8035 = fmul fast float %8034, 2.000000e+00
  %8036 = call float @dx.op.dot2.f32(i32 54, float %8031, float %8032, float %8031, float %8032)  ; Dot2(ax,ay,bx,by)
  %8037 = fmul fast float %8029, %8029
  %8038 = fsub fast float %8036, %8037
  %8039 = fmul fast float %8035, %8035
  %8040 = fmul fast float %8033, 4.000000e+00
  %8041 = fmul fast float %8040, %8038
  %8042 = fsub fast float %8039, %8041
  %8043 = fcmp fast ogt float %8042, 0.000000e+00
  br i1 %8043, label %8044, label %8059

; <label>:8044                                    ; preds = %8010
  %8045 = fcmp fast ogt float %8035, 0.000000e+00
  %8046 = call float @dx.op.unary.f32(i32 24, float %8042)  ; Sqrt(value)
  %8047 = fsub fast float -0.000000e+00, %8046
  %8048 = select i1 %8045, float %8046, float %8047
  %8049 = fadd fast float %8048, %8035
  %8050 = fmul float %8049, -5.000000e-01
  %8051 = fdiv fast float %8050, %8033
  %8052 = call float @dx.op.binary.f32(i32 35, float %8051, float 0.000000e+00)  ; FMax(a,b)
  %8053 = call float @dx.op.binary.f32(i32 36, float %7996, float %8052)  ; FMin(a,b)
  %8054 = fdiv fast float %8038, %8050
  %8055 = call float @dx.op.binary.f32(i32 35, float %8054, float 0.000000e+00)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 36, float %7996, float %8055)  ; FMin(a,b)
  %8057 = call float @dx.op.binary.f32(i32 36, float %8053, float %8056)  ; FMin(a,b)
  %8058 = call float @dx.op.binary.f32(i32 35, float %8053, float %8056)  ; FMax(a,b)
  br label %8059

; <label>:8059                                    ; preds = %8044, %8010
  %8060 = phi float [ %8058, %8044 ], [ -1.000000e+00, %8010 ]
  %8061 = phi float [ %8057, %8044 ], [ -1.000000e+00, %8010 ]
  %8062 = phi i1 [ true, %8044 ], [ false, %8010 ]
  %8063 = and i1 %8030, %8062
  br i1 %8063, label %8064, label %8066

; <label>:8064                                    ; preds = %8059
  %8065 = fcmp fast oeq float %8061, %8060
  br i1 %8065, label %8369, label %8067

; <label>:8066                                    ; preds = %8059
  br i1 %8030, label %8369, label %8067

; <label>:8067                                    ; preds = %8066, %8064
  %8068 = phi float [ %7996, %8066 ], [ %8060, %8064 ]
  %8069 = phi float [ 0.000000e+00, %8066 ], [ %8061, %8064 ]
  %8070 = icmp ne i32 %8018, 0
  %8071 = fmul fast float %8068, %7999
  %8072 = fadd fast float %8071, %8012
  %8073 = fmul fast float %8072, %8068
  %8074 = select i1 %8070, float 0.000000e+00, float %8073
  %8075 = fcmp fast oeq float %7999, 0.000000e+00
  %8076 = fdiv fast float %8017, %7999
  %8077 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8076)  ; FMax(a,b)
  %8078 = select i1 %8075, float %8068, float %8077
  %8079 = call float @dx.op.binary.f32(i32 36, float %8068, float %8078)  ; FMin(a,b)
  %8080 = fcmp fast ogt float %7999, 0.000000e+00
  %8081 = fcmp fast olt float %8017, 0.000000e+00
  br i1 %8080, label %8082, label %8139

; <label>:8082                                    ; preds = %8067
  %8083 = icmp eq i32 %8018, 0
  br i1 %8081, label %8084, label %8128

; <label>:8084                                    ; preds = %8082
  %8085 = select i1 %8083, float %8068, float 0.000000e+00
  %8086 = fsub fast float -0.000000e+00, %8085
  %8087 = call float @dx.op.unary.f32(i32 6, float %8086)  ; FAbs(value)
  %8088 = fmul fast float %8085, %7999
  %8089 = fadd fast float %8088, %8012
  %8090 = fmul fast float %8087, %8089
  %8091 = fsub fast float %8074, %8090
  %8092 = fsub fast float %8068, %8087
  %8093 = select i1 %8083, float %8092, float 0.000000e+00
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = extractvalue %dx.types.CBufRet.f32 %8098, 3
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 3
  %8105 = call float @dx.op.binary.f32(i32 36, float %8091, float %8104)  ; FMin(a,b)
  %8106 = fmul fast float %8102, %8093
  %8107 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8108 = fsub fast float %8099, %8095
  %8109 = fsub fast float %8100, %8096
  %8110 = fsub fast float %8101, %8097
  %8111 = fmul fast float %8107, %8108
  %8112 = fmul fast float %8107, %8109
  %8113 = fmul fast float %8107, %8110
  %8114 = fadd fast float %8111, %8095
  %8115 = fadd fast float %8112, %8096
  %8116 = fadd fast float %8113, %8097
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.CBufRet.f32 %8117, 1
  %8120 = fadd fast float %8119, %8118
  %8121 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8123 = extractvalue %dx.types.CBufRet.f32 %8117, 3
  %8124 = fadd fast float %8123, %8122
  %8125 = call float @dx.op.unary.f32(i32 7, float %8124)  ; Saturate(value)
  %8126 = fmul fast float %8121, %8105
  %8127 = fmul fast float %8126, %8125
  br label %8369

; <label>:8128                                    ; preds = %8082
  br i1 %8083, label %8129, label %8150

; <label>:8129                                    ; preds = %8128
  %8130 = call float @dx.op.binary.f32(i32 36, float %8079, float %8069)  ; FMin(a,b)
  %8131 = fsub fast float %8079, %8130
  %8132 = fsub fast float %8131, %8068
  %8133 = call float @dx.op.unary.f32(i32 6, float %8132)  ; FAbs(value)
  %8134 = fadd fast float %8131, %8068
  %8135 = fmul fast float %8134, %7999
  %8136 = fadd fast float %8135, %8012
  %8137 = fmul fast float %8136, %8133
  %8138 = fsub fast float %8074, %8137
  br label %8150

; <label>:8139                                    ; preds = %8067
  br i1 %8081, label %8140, label %8150

; <label>:8140                                    ; preds = %8139
  %8141 = call float @dx.op.binary.f32(i32 35, float %8069, float %8079)  ; FMax(a,b)
  %8142 = icmp eq i32 %8018, 0
  %8143 = select i1 %8142, float %8079, float 0.000000e+00
  %8144 = fsub fast float -0.000000e+00, %8143
  %8145 = call float @dx.op.unary.f32(i32 6, float %8144)  ; FAbs(value)
  %8146 = fmul fast float %8143, %7999
  %8147 = fadd fast float %8146, %8012
  %8148 = fmul fast float %8145, %8147
  %8149 = fsub fast float %8074, %8148
  br label %8150

; <label>:8150                                    ; preds = %8140, %8139, %8129, %8128
  %8151 = phi float [ %8069, %8128 ], [ %8069, %8129 ], [ %8141, %8140 ], [ %8069, %8139 ]
  %8152 = phi float [ 0.000000e+00, %8128 ], [ %8133, %8129 ], [ %8145, %8140 ], [ 0.000000e+00, %8139 ]
  %8153 = phi float [ %8074, %8128 ], [ %8138, %8129 ], [ %8149, %8140 ], [ %8074, %8139 ]
  %8154 = phi float [ %8079, %8128 ], [ %8079, %8129 ], [ %8068, %8140 ], [ %8068, %8139 ]
  %8155 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8155, align 4, !tbaa !126, !noalias !128
  %8156 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8156, align 4, !tbaa !126, !noalias !128
  %8157 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8157, align 4, !tbaa !126, !noalias !128
  %8158 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8158, align 4, !tbaa !126, !noalias !128
  %8159 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8159, align 4, !tbaa !126, !noalias !128
  %8160 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8160, align 4, !tbaa !126, !noalias !128
  %8161 = icmp sgt i32 %8020, 0
  br i1 %8161, label %8162, label %8223

; <label>:8162                                    ; preds = %8150
  br label %8163

; <label>:8163                                    ; preds = %8212, %8162
  %8164 = phi i32 [ %8213, %8212 ], [ 0, %8162 ]
  %8165 = phi i32 [ %8214, %8212 ], [ 0, %8162 ]
  %8166 = add nuw i32 %8165, 171
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8166)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8169 = extractvalue %dx.types.CBufRet.f32 %8167, 1
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8173 = fsub fast float %8168, %8171
  %8174 = fsub fast float %8169, %8172
  %8175 = extractvalue %dx.types.CBufRet.f32 %8167, 2
  %8176 = fsub fast float -0.000000e+00, %8173
  %8177 = fsub fast float -0.000000e+00, %8174
  %8178 = call float @dx.op.dot2.f32(i32 54, float %7997, float %7998, float %8176, float %8177)  ; Dot2(ax,ay,bx,by)
  %8179 = fmul fast float %8178, 2.000000e+00
  %8180 = call float @dx.op.dot2.f32(i32 54, float %8176, float %8177, float %8176, float %8177)  ; Dot2(ax,ay,bx,by)
  %8181 = fmul fast float %8175, %8175
  %8182 = fsub fast float %8180, %8181
  %8183 = fmul fast float %8179, %8179
  %8184 = fmul fast float %8040, %8182
  %8185 = fsub fast float %8183, %8184
  %8186 = fcmp fast ogt float %8185, 0.000000e+00
  br i1 %8186, label %8187, label %8202

; <label>:8187                                    ; preds = %8163
  %8188 = fcmp fast ogt float %8179, 0.000000e+00
  %8189 = call float @dx.op.unary.f32(i32 24, float %8185)  ; Sqrt(value)
  %8190 = fsub fast float -0.000000e+00, %8189
  %8191 = select i1 %8188, float %8189, float %8190
  %8192 = fadd fast float %8191, %8179
  %8193 = fmul float %8192, -5.000000e-01
  %8194 = fdiv fast float %8193, %8033
  %8195 = call float @dx.op.binary.f32(i32 35, float %8194, float 0.000000e+00)  ; FMax(a,b)
  %8196 = call float @dx.op.binary.f32(i32 36, float %8068, float %8195)  ; FMin(a,b)
  %8197 = fdiv fast float %8182, %8193
  %8198 = call float @dx.op.binary.f32(i32 35, float %8197, float 0.000000e+00)  ; FMax(a,b)
  %8199 = call float @dx.op.binary.f32(i32 36, float %8068, float %8198)  ; FMin(a,b)
  %8200 = call float @dx.op.binary.f32(i32 36, float %8196, float %8199)  ; FMin(a,b)
  %8201 = call float @dx.op.binary.f32(i32 35, float %8196, float %8199)  ; FMax(a,b)
  br label %8202

; <label>:8202                                    ; preds = %8187, %8163
  %8203 = phi float [ %8201, %8187 ], [ -1.000000e+00, %8163 ]
  %8204 = phi float [ %8200, %8187 ], [ -1.000000e+00, %8163 ]
  %8205 = phi i1 [ true, %8187 ], [ false, %8163 ]
  br i1 %8205, label %8206, label %8212

; <label>:8206                                    ; preds = %8202
  %8207 = call float @dx.op.binary.f32(i32 35, float %8151, float %8204)  ; FMax(a,b)
  %8208 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8165
  store float %8207, float* %8208, align 4, !tbaa !126, !noalias !128
  %8209 = call float @dx.op.binary.f32(i32 35, float %8151, float %8203)  ; FMax(a,b)
  %8210 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8165
  store float %8209, float* %8210, align 4, !tbaa !126, !noalias !128
  %8211 = add nsw i32 %8164, 1
  br label %8212

; <label>:8212                                    ; preds = %8206, %8202
  %8213 = phi i32 [ %8211, %8206 ], [ %8164, %8202 ]
  %8214 = add nuw nsw i32 %8165, 1
  %8215 = icmp eq i32 %8214, %8020
  br i1 %8215, label %8216, label %8163

; <label>:8216                                    ; preds = %8212
  %8217 = load float, float* %8157, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8218 = load float, float* %8156, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8219 = load float, float* %8155, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8220 = load float, float* %8160, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8221 = load float, float* %8159, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8222 = load float, float* %8158, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8223

; <label>:8223                                    ; preds = %8216, %8150
  %8224 = phi float [ -1.000000e+00, %8150 ], [ %8222, %8216 ]
  %8225 = phi float [ -1.000000e+00, %8150 ], [ %8221, %8216 ]
  %8226 = phi float [ -1.000000e+00, %8150 ], [ %8220, %8216 ]
  %8227 = phi float [ -1.000000e+00, %8150 ], [ %8219, %8216 ]
  %8228 = phi float [ -1.000000e+00, %8150 ], [ %8218, %8216 ]
  %8229 = phi float [ -1.000000e+00, %8150 ], [ %8217, %8216 ]
  %8230 = phi i32 [ 0, %8150 ], [ %8213, %8216 ]
  %8231 = call float @dx.op.binary.f32(i32 36, float %8228, float %8229)  ; FMin(a,b)
  %8232 = call float @dx.op.binary.f32(i32 36, float %8227, float %8231)  ; FMin(a,b)
  %8233 = call float @dx.op.binary.f32(i32 35, float %8227, float %8228)  ; FMax(a,b)
  %8234 = call float @dx.op.binary.f32(i32 36, float %8233, float %8229)  ; FMin(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8227, float %8228)  ; FMin(a,b)
  %8236 = call float @dx.op.binary.f32(i32 35, float %8235, float %8234)  ; FMax(a,b)
  %8237 = call float @dx.op.binary.f32(i32 35, float %8228, float %8229)  ; FMax(a,b)
  %8238 = call float @dx.op.binary.f32(i32 35, float %8227, float %8237)  ; FMax(a,b)
  store float %8232, float* %8155, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8236, float* %8156, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8238, float* %8157, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8239 = call float @dx.op.binary.f32(i32 36, float %8225, float %8226)  ; FMin(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8224, float %8239)  ; FMin(a,b)
  %8241 = call float @dx.op.binary.f32(i32 35, float %8224, float %8225)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 36, float %8241, float %8226)  ; FMin(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8224, float %8225)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 35, float %8243, float %8242)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 35, float %8225, float %8226)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 35, float %8224, float %8245)  ; FMax(a,b)
  store float %8240, float* %8158, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8244, float* %8159, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8246, float* %8160, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8247 = sub nsw i32 3, %8230
  %8248 = icmp sgt i32 %8247, 2
  br i1 %8248, label %8249, label %8287

; <label>:8249                                    ; preds = %8223
  %8250 = icmp eq i32 %8018, 0
  %8251 = fsub fast float %8068, %8152
  %8252 = select i1 %8250, float %8251, float %8152
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.CBufRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.CBufRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.CBufRet.f32 %8257, 3
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 3
  %8264 = call float @dx.op.binary.f32(i32 36, float %8153, float %8263)  ; FMin(a,b)
  %8265 = fmul fast float %8261, %8252
  %8266 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8267 = fsub fast float %8258, %8254
  %8268 = fsub fast float %8259, %8255
  %8269 = fsub fast float %8260, %8256
  %8270 = fmul fast float %8266, %8267
  %8271 = fmul fast float %8266, %8268
  %8272 = fmul fast float %8266, %8269
  %8273 = fadd fast float %8270, %8254
  %8274 = fadd fast float %8271, %8255
  %8275 = fadd fast float %8272, %8256
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = fadd fast float %8278, %8277
  %8280 = call float @dx.op.unary.f32(i32 7, float %8279)  ; Saturate(value)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8282 = extractvalue %dx.types.CBufRet.f32 %8276, 3
  %8283 = fadd fast float %8282, %8281
  %8284 = call float @dx.op.unary.f32(i32 7, float %8283)  ; Saturate(value)
  %8285 = fmul fast float %8280, %8264
  %8286 = fmul fast float %8285, %8284
  br label %8369

; <label>:8287                                    ; preds = %8223
  %8288 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8247
  %8289 = load float, float* %8288, align 4, !tbaa !126, !noalias !128
  %8290 = fcmp fast olt float %8289, %8154
  %8291 = icmp sgt i32 %8230, 0
  %8292 = and i1 %8291, %8290
  br i1 %8292, label %8293, label %8330

; <label>:8293                                    ; preds = %8287
  br label %8294

; <label>:8294                                    ; preds = %8323, %8293
  %8295 = phi float [ %8324, %8323 ], [ %8152, %8293 ]
  %8296 = phi float [ %8325, %8323 ], [ %8153, %8293 ]
  %8297 = phi float [ %8305, %8323 ], [ %8289, %8293 ]
  %8298 = phi i32 [ %8302, %8323 ], [ %8247, %8293 ]
  %8299 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8298
  %8300 = load float, float* %8299, align 4, !tbaa !126, !noalias !128
  %8301 = icmp slt i32 %8298, 2
  %8302 = add nsw i32 %8298, 1
  %8303 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8302
  %8304 = load float, float* %8303, align 4, !tbaa !126, !noalias !128
  %8305 = select i1 %8301, float %8304, float %8068
  %8306 = call float @dx.op.binary.f32(i32 36, float %8305, float %8300)  ; FMin(a,b)
  %8307 = call float @dx.op.binary.f32(i32 36, float %8154, float %8306)  ; FMin(a,b)
  %8308 = icmp eq i32 %8018, 0
  %8309 = fadd fast float %8307, %8297
  %8310 = fmul fast float %8309, %7999
  %8311 = fadd fast float %8310, %8012
  br i1 %8308, label %8317, label %8312

; <label>:8312                                    ; preds = %8294
  %8313 = fsub fast float %8307, %8297
  %8314 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8313)  ; FMax(a,b)
  %8315 = fmul fast float %8314, %8311
  %8316 = fadd fast float %8315, %8296
  br label %8323

; <label>:8317                                    ; preds = %8294
  %8318 = fsub fast float %8297, %8307
  %8319 = call float @dx.op.unary.f32(i32 6, float %8318)  ; FAbs(value)
  %8320 = fadd fast float %8319, %8295
  %8321 = fmul fast float %8319, %8311
  %8322 = fsub fast float %8296, %8321
  br label %8323

; <label>:8323                                    ; preds = %8317, %8312
  %8324 = phi float [ %8314, %8312 ], [ %8320, %8317 ]
  %8325 = phi float [ %8316, %8312 ], [ %8322, %8317 ]
  %8326 = fcmp fast olt float %8305, %8154
  %8327 = icmp slt i32 %8302, 3
  %8328 = and i1 %8327, %8326
  br i1 %8328, label %8294, label %8329

; <label>:8329                                    ; preds = %8323
  br label %8330

; <label>:8330                                    ; preds = %8329, %8287
  %8331 = phi float [ %8152, %8287 ], [ %8324, %8329 ]
  %8332 = phi float [ %8153, %8287 ], [ %8325, %8329 ]
  %8333 = fsub fast float %8068, %8331
  %8334 = select i1 %8070, float %8331, float %8333
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 0
  %8337 = extractvalue %dx.types.CBufRet.f32 %8335, 1
  %8338 = extractvalue %dx.types.CBufRet.f32 %8335, 2
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.CBufRet.f32 %8339, 2
  %8343 = extractvalue %dx.types.CBufRet.f32 %8339, 3
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 3
  %8346 = call float @dx.op.binary.f32(i32 36, float %8332, float %8345)  ; FMin(a,b)
  %8347 = fmul fast float %8343, %8334
  %8348 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8349 = fsub fast float %8340, %8336
  %8350 = fsub fast float %8341, %8337
  %8351 = fsub fast float %8342, %8338
  %8352 = fmul fast float %8348, %8349
  %8353 = fmul fast float %8348, %8350
  %8354 = fmul fast float %8348, %8351
  %8355 = fadd fast float %8352, %8336
  %8356 = fadd fast float %8353, %8337
  %8357 = fadd fast float %8354, %8338
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8361 = fadd fast float %8360, %8359
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8364 = extractvalue %dx.types.CBufRet.f32 %8358, 3
  %8365 = fadd fast float %8364, %8363
  %8366 = call float @dx.op.unary.f32(i32 7, float %8365)  ; Saturate(value)
  %8367 = fmul fast float %8362, %8346
  %8368 = fmul fast float %8367, %8366
  br label %8369

; <label>:8369                                    ; preds = %8330, %8249, %8084, %8066, %8064
  %8370 = phi float [ %8093, %8084 ], [ %8252, %8249 ], [ %8334, %8330 ], [ 0.000000e+00, %8064 ], [ 0.000000e+00, %8066 ]
  %8371 = phi float [ %8127, %8084 ], [ %8286, %8249 ], [ %8368, %8330 ], [ 0.000000e+00, %8064 ], [ 0.000000e+00, %8066 ]
  %8372 = phi float [ %8114, %8084 ], [ %8273, %8249 ], [ %8355, %8330 ], [ 0.000000e+00, %8064 ], [ 0.000000e+00, %8066 ]
  %8373 = phi float [ %8115, %8084 ], [ %8274, %8249 ], [ %8356, %8330 ], [ 0.000000e+00, %8064 ], [ 0.000000e+00, %8066 ]
  %8374 = phi float [ %8116, %8084 ], [ %8275, %8249 ], [ %8357, %8330 ], [ 0.000000e+00, %8064 ], [ 0.000000e+00, %8066 ]
  %8375 = fmul fast float %8007, %8371
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 2
  %8378 = fsub fast float %8014, %8377
  %8379 = fcmp fast olt float %8375, -2.000000e+01
  %8380 = call float @dx.op.unary.f32(i32 21, float %8375)  ; Exp(value)
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8383 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8386 = fmul fast float %8383, %8378
  %8387 = call float @dx.op.unary.f32(i32 7, float %8386)  ; Saturate(value)
  %8388 = fsub fast float 1.000000e+00, %8387
  %8389 = fmul fast float %7999, 5.000000e-01
  %8390 = fadd fast float %8389, 5.000000e-01
  %8391 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8392 = fsub fast float 1.000000e+00, %8391
  %8393 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8388)  ; FMax(a,b)
  %8394 = fdiv fast float %8392, %8393
  %8395 = fsub fast float %8378, %7956
  %8396 = call float @dx.op.unary.f32(i32 6, float %8395)  ; FAbs(value)
  %8397 = fmul fast float %8396, %8382
  %8398 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8399 = fsub fast float 1.000000e+00, %8397
  %8400 = fmul fast float %8399, %8398
  %8401 = fadd fast float %8400, %8397
  %8402 = fmul fast float %8385, %8378
  %8403 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8404 = fsub fast float 1.000000e+00, %8401
  %8405 = fmul fast float %8404, %8403
  %8406 = fadd fast float %8405, %8401
  %8407 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  %8408 = fadd fast float %8380, -1.000000e+00
  %8409 = select i1 %8379, float -1.000000e+00, float %8408
  %8410 = fmul fast float %8407, %8409
  %8411 = fadd fast float %8410, 1.000000e+00
  %8412 = fsub fast float -0.000000e+00, %8410
  %8413 = fmul fast float %8372, %8412
  %8414 = fmul fast float %8373, %8412
  %8415 = fmul fast float %8374, %8412
  br label %8416

; <label>:8416                                    ; preds = %8369, %7965
  %8417 = phi float [ %8370, %8369 ], [ 0.000000e+00, %7965 ]
  %8418 = phi float [ %8411, %8369 ], [ 1.000000e+00, %7965 ]
  %8419 = phi float [ %8413, %8369 ], [ 0.000000e+00, %7965 ]
  %8420 = phi float [ %8414, %8369 ], [ 0.000000e+00, %7965 ]
  %8421 = phi float [ %8415, %8369 ], [ 0.000000e+00, %7965 ]
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8424 = fsub fast float 1.000000e+00, %8418
  %8425 = fmul fast float %8424, %8000
  %8426 = fmul fast float %8425, %8423
  %8427 = fsub fast float %8000, %8426
  br i1 %7993, label %8428, label %8457, !dx.controlflow.hints !164

; <label>:8428                                    ; preds = %8416
  %8429 = fmul fast float %8001, %7990
  %8430 = fadd fast float %8429, %7991
  %8431 = call float @dx.op.unary.f32(i32 7, float %8430)  ; Saturate(value)
  %8432 = fmul fast float %7972, %8427
  %8433 = fsub fast float -0.000000e+00, %8432
  %8434 = fmul fast float %7973, %8427
  %8435 = fsub fast float -0.000000e+00, %8434
  %8436 = call float @dx.op.unary.f32(i32 21, float %8433)  ; Exp(value)
  %8437 = call float @dx.op.unary.f32(i32 21, float %8435)  ; Exp(value)
  %8438 = call float @dx.op.binary.f32(i32 35, float %7980, float %8436)  ; FMax(a,b)
  %8439 = call float @dx.op.binary.f32(i32 35, float %7980, float %8437)  ; FMax(a,b)
  %8440 = fsub fast float %8439, %8438
  %8441 = fmul fast float %8440, %8431
  %8442 = fadd fast float %8441, %8438
  %8443 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8444 = fsub fast float %7977, %7982
  %8445 = fsub fast float %7978, %7983
  %8446 = fsub fast float %7979, %7984
  %8447 = fmul fast float %8431, %8444
  %8448 = fmul fast float %8431, %8445
  %8449 = fmul fast float %8431, %8446
  %8450 = fadd fast float %8447, %7982
  %8451 = fadd fast float %8448, %7983
  %8452 = fadd fast float %8449, %7984
  %8453 = fsub fast float 1.000000e+00, %8443
  %8454 = fmul fast float %8453, %8450
  %8455 = fmul fast float %8453, %8451
  %8456 = fmul fast float %8453, %8452
  br label %8516

; <label>:8457                                    ; preds = %8416
  %8458 = fmul fast float %8427, %7989
  %8459 = call float @dx.op.unary.f32(i32 7, float %8458)  ; Saturate(value)
  %8460 = fsub fast float 2.000000e+00, %8459
  %8461 = fmul fast float %8459, 9.921875e-01
  %8462 = fmul fast float %8461, %8460
  %8463 = fadd fast float %8462, 3.906250e-03
  %8464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8463, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8465 = extractvalue %dx.types.ResRet.f32 %8464, 0
  %8466 = fsub fast float %8459, %8465
  %8467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8466)  ; FMax(a,b)
  %8468 = fmul fast float %7975, %7956
  %8469 = call float @dx.op.unary.f32(i32 6, float %8468)  ; FAbs(value)
  %8470 = fcmp fast ogt float %8469, 0x3EB0C6F7A0000000
  br i1 %8470, label %8471, label %8477, !dx.controlflow.hints !165

; <label>:8471                                    ; preds = %8457
  %8472 = fmul fast float %8468, 0xBFF7154760000000
  %8473 = call float @dx.op.unary.f32(i32 21, float %8472)  ; Exp(value)
  %8474 = fsub fast float 1.000000e+00, %8473
  %8475 = fdiv fast float %8474, %8468
  %8476 = fmul fast float %8475, %7985
  br label %8477

; <label>:8477                                    ; preds = %8471, %8457
  %8478 = phi float [ %8476, %8471 ], [ %7985, %8457 ]
  %8479 = fadd fast float %8478, %7987
  %8480 = fmul fast float %8479, %8467
  %8481 = fmul fast float %7972, %8480
  %8482 = fsub fast float -0.000000e+00, %8481
  %8483 = fmul fast float %7973, %8480
  %8484 = fsub fast float -0.000000e+00, %8483
  %8485 = fmul fast float %7974, %8480
  %8486 = fsub fast float -0.000000e+00, %8485
  %8487 = call float @dx.op.unary.f32(i32 21, float %8482)  ; Exp(value)
  %8488 = call float @dx.op.unary.f32(i32 21, float %8484)  ; Exp(value)
  %8489 = call float @dx.op.unary.f32(i32 21, float %8486)  ; Exp(value)
  %8490 = fmul fast float %8001, %8001
  %8491 = fadd fast float %8490, 1.000000e+00
  %8492 = fmul fast float %8491, 0x3FAE8EC8A0000000
  %8493 = fmul fast float %8492, %7982
  %8494 = fmul fast float %8492, %7983
  %8495 = fmul fast float %8492, %7984
  %8496 = fmul fast float %8001, %7980
  %8497 = fsub fast float 1.000000e+00, %8496
  %8498 = fmul fast float %7980, %7980
  %8499 = fsub fast float 1.000000e+00, %8498
  %8500 = fmul fast float %8499, 0x3FB45F3060000000
  %8501 = fmul fast float %8497, %8497
  %8502 = fdiv fast float 1.000000e+00, %8501
  %8503 = fmul fast float %8500, %8502
  %8504 = fmul fast float %8503, %7977
  %8505 = fmul fast float %8503, %7978
  %8506 = fmul fast float %8503, %7979
  %8507 = fadd fast float %8504, %8493
  %8508 = fadd fast float %8505, %8494
  %8509 = fadd fast float %8506, %8495
  %8510 = fsub fast float 1.000000e+00, %8487
  %8511 = fsub fast float 1.000000e+00, %8488
  %8512 = fsub fast float 1.000000e+00, %8489
  %8513 = fmul fast float %8507, %8510
  %8514 = fmul fast float %8508, %8511
  %8515 = fmul fast float %8509, %8512
  br label %8516

; <label>:8516                                    ; preds = %8477, %8428
  %8517 = phi float [ %8454, %8428 ], [ %8513, %8477 ]
  %8518 = phi float [ %8455, %8428 ], [ %8514, %8477 ]
  %8519 = phi float [ %8456, %8428 ], [ %8515, %8477 ]
  %8520 = phi float [ %8443, %8428 ], [ %8487, %8477 ]
  %8521 = phi float [ %8443, %8428 ], [ %8488, %8477 ]
  %8522 = phi float [ %8443, %8428 ], [ %8489, %8477 ]
  br i1 %8009, label %8523, label %8721, !dx.controlflow.hints !166

; <label>:8523                                    ; preds = %8516
  %8524 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8525 = fmul fast float %8524, %8424
  %8526 = fsub fast float %8419, %8517
  %8527 = fsub fast float %8420, %8518
  %8528 = fsub fast float %8421, %8519
  %8529 = fmul fast float %8525, %8526
  %8530 = fmul fast float %8525, %8527
  %8531 = fmul fast float %8525, %8528
  %8532 = fadd fast float %8529, %8517
  %8533 = fadd fast float %8530, %8518
  %8534 = fadd fast float %8531, %8519
  %8535 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8520)  ; FMax(a,b)
  %8536 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8521)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8522)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8418)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 35, float %8417, float %8427)  ; FMax(a,b)
  %8540 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8539)  ; FMax(a,b)
  %8541 = fdiv fast float %8417, %8540
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = fdiv fast float %8427, %8540
  %8544 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8545 = fcmp fast une float %8538, 1.000000e+00
  br i1 %8545, label %8546, label %8559, !dx.controlflow.hints !167

; <label>:8546                                    ; preds = %8523
  %8547 = call float @dx.op.unary.f32(i32 23, float %8538)  ; Log(value)
  %8548 = fmul fast float %8547, 0x3FE62E4300000000
  %8549 = fmul fast float %8419, %8548
  %8550 = fsub fast float -0.000000e+00, %8549
  %8551 = fmul fast float %8420, %8548
  %8552 = fsub fast float -0.000000e+00, %8551
  %8553 = fmul fast float %8421, %8548
  %8554 = fsub fast float -0.000000e+00, %8553
  %8555 = fsub fast float 1.000000e+00, %8538
  %8556 = fdiv fast float %8550, %8555
  %8557 = fdiv fast float %8552, %8555
  %8558 = fdiv fast float %8554, %8555
  br label %8559

; <label>:8559                                    ; preds = %8546, %8523
  %8560 = phi float [ %8556, %8546 ], [ %8419, %8523 ]
  %8561 = phi float [ %8557, %8546 ], [ %8420, %8523 ]
  %8562 = phi float [ %8558, %8546 ], [ %8421, %8523 ]
  %8563 = phi float [ %8548, %8546 ], [ 0.000000e+00, %8523 ]
  %8564 = fcmp fast une float %8535, 1.000000e+00
  br i1 %8564, label %8565, label %8572, !dx.controlflow.hints !168

; <label>:8565                                    ; preds = %8559
  %8566 = call float @dx.op.unary.f32(i32 23, float %8535)  ; Log(value)
  %8567 = fmul fast float %8566, 0x3FE62E4300000000
  %8568 = fmul fast float %8532, %8567
  %8569 = fsub fast float -0.000000e+00, %8568
  %8570 = fsub fast float 1.000000e+00, %8535
  %8571 = fdiv fast float %8569, %8570
  br label %8572

; <label>:8572                                    ; preds = %8565, %8559
  %8573 = phi float [ %8571, %8565 ], [ %8532, %8559 ]
  %8574 = phi float [ %8567, %8565 ], [ 0.000000e+00, %8559 ]
  %8575 = fcmp fast une float %8536, 1.000000e+00
  br i1 %8575, label %8576, label %8583, !dx.controlflow.hints !168

; <label>:8576                                    ; preds = %8572
  %8577 = call float @dx.op.unary.f32(i32 23, float %8536)  ; Log(value)
  %8578 = fmul fast float %8577, 0x3FE62E4300000000
  %8579 = fmul fast float %8533, %8578
  %8580 = fsub fast float -0.000000e+00, %8579
  %8581 = fsub fast float 1.000000e+00, %8536
  %8582 = fdiv fast float %8580, %8581
  br label %8583

; <label>:8583                                    ; preds = %8576, %8572
  %8584 = phi float [ %8582, %8576 ], [ %8533, %8572 ]
  %8585 = phi float [ %8578, %8576 ], [ 0.000000e+00, %8572 ]
  %8586 = fcmp fast une float %8537, 1.000000e+00
  br i1 %8586, label %8587, label %8594, !dx.controlflow.hints !168

; <label>:8587                                    ; preds = %8583
  %8588 = call float @dx.op.unary.f32(i32 23, float %8537)  ; Log(value)
  %8589 = fmul fast float %8588, 0x3FE62E4300000000
  %8590 = fmul fast float %8534, %8589
  %8591 = fsub fast float -0.000000e+00, %8590
  %8592 = fsub fast float 1.000000e+00, %8537
  %8593 = fdiv fast float %8591, %8592
  br label %8594

; <label>:8594                                    ; preds = %8587, %8583
  %8595 = phi float [ %8593, %8587 ], [ %8534, %8583 ]
  %8596 = phi float [ %8589, %8587 ], [ 0.000000e+00, %8583 ]
  %8597 = fmul fast float %8560, %8544
  %8598 = fmul fast float %8561, %8544
  %8599 = fmul fast float %8562, %8544
  %8600 = fmul fast float %8563, %8544
  %8601 = fmul fast float %8573, %8542
  %8602 = fmul fast float %8584, %8542
  %8603 = fmul fast float %8595, %8542
  %8604 = fmul fast float %8574, %8542
  %8605 = fmul fast float %8585, %8542
  %8606 = fmul fast float %8596, %8542
  %8607 = fadd fast float %8601, %8597
  %8608 = fadd fast float %8602, %8598
  %8609 = fadd fast float %8603, %8599
  %8610 = fadd fast float %8604, %8600
  %8611 = fadd fast float %8605, %8600
  %8612 = fadd fast float %8606, %8600
  %8613 = fcmp fast une float %8610, 0.000000e+00
  br i1 %8613, label %8614, label %8621, !dx.controlflow.hints !169

; <label>:8614                                    ; preds = %8594
  %8615 = fmul fast float %8610, 0x3FF7154760000000
  %8616 = call float @dx.op.unary.f32(i32 21, float %8615)  ; Exp(value)
  %8617 = fsub fast float 1.000000e+00, %8616
  %8618 = fmul fast float %8607, %8617
  %8619 = fsub fast float -0.000000e+00, %8618
  %8620 = fdiv fast float %8619, %8610
  br label %8621

; <label>:8621                                    ; preds = %8614, %8594
  %8622 = phi float [ %8616, %8614 ], [ 1.000000e+00, %8594 ]
  %8623 = phi float [ %8620, %8614 ], [ %8607, %8594 ]
  %8624 = fcmp fast une float %8611, 0.000000e+00
  br i1 %8624, label %8625, label %8632, !dx.controlflow.hints !169

; <label>:8625                                    ; preds = %8621
  %8626 = fmul fast float %8611, 0x3FF7154760000000
  %8627 = call float @dx.op.unary.f32(i32 21, float %8626)  ; Exp(value)
  %8628 = fsub fast float 1.000000e+00, %8627
  %8629 = fmul fast float %8608, %8628
  %8630 = fsub fast float -0.000000e+00, %8629
  %8631 = fdiv fast float %8630, %8611
  br label %8632

; <label>:8632                                    ; preds = %8625, %8621
  %8633 = phi float [ %8627, %8625 ], [ 1.000000e+00, %8621 ]
  %8634 = phi float [ %8631, %8625 ], [ %8608, %8621 ]
  %8635 = fcmp fast une float %8612, 0.000000e+00
  br i1 %8635, label %8636, label %8643, !dx.controlflow.hints !169

; <label>:8636                                    ; preds = %8632
  %8637 = fmul fast float %8612, 0x3FF7154760000000
  %8638 = call float @dx.op.unary.f32(i32 21, float %8637)  ; Exp(value)
  %8639 = fsub fast float 1.000000e+00, %8638
  %8640 = fmul fast float %8609, %8639
  %8641 = fsub fast float -0.000000e+00, %8640
  %8642 = fdiv fast float %8641, %8612
  br label %8643

; <label>:8643                                    ; preds = %8636, %8632
  %8644 = phi float [ %8638, %8636 ], [ 1.000000e+00, %8632 ]
  %8645 = phi float [ %8642, %8636 ], [ %8609, %8632 ]
  %8646 = fcmp fast ogt float %8542, %8544
  br i1 %8646, label %8647, label %8667

; <label>:8647                                    ; preds = %8643
  %8648 = fsub fast float 1.000000e+00, %8544
  %8649 = fmul fast float %8560, %8648
  %8650 = fmul fast float %8561, %8648
  %8651 = fmul fast float %8562, %8648
  %8652 = fmul fast float %8563, %8648
  %8653 = fcmp fast une float %8652, 0.000000e+00
  br i1 %8653, label %8654, label %8705, !dx.controlflow.hints !170

; <label>:8654                                    ; preds = %8647
  %8655 = fmul fast float %8652, 0x3FF7154760000000
  %8656 = call float @dx.op.unary.f32(i32 21, float %8655)  ; Exp(value)
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = fmul fast float %8649, %8657
  %8659 = fsub fast float -0.000000e+00, %8658
  %8660 = fmul fast float %8650, %8657
  %8661 = fsub fast float -0.000000e+00, %8660
  %8662 = fmul fast float %8651, %8657
  %8663 = fsub fast float -0.000000e+00, %8662
  %8664 = fdiv fast float %8659, %8652
  %8665 = fdiv fast float %8661, %8652
  %8666 = fdiv fast float %8663, %8652
  br label %8705

; <label>:8667                                    ; preds = %8643
  %8668 = fsub fast float 1.000000e+00, %8542
  %8669 = fmul fast float %8573, %8668
  %8670 = fmul fast float %8584, %8668
  %8671 = fmul fast float %8595, %8668
  %8672 = fmul fast float %8574, %8668
  %8673 = fmul fast float %8585, %8668
  %8674 = fmul fast float %8596, %8668
  %8675 = fcmp fast une float %8672, 0.000000e+00
  br i1 %8675, label %8676, label %8683, !dx.controlflow.hints !169

; <label>:8676                                    ; preds = %8667
  %8677 = fmul fast float %8672, 0x3FF7154760000000
  %8678 = call float @dx.op.unary.f32(i32 21, float %8677)  ; Exp(value)
  %8679 = fsub fast float 1.000000e+00, %8678
  %8680 = fmul fast float %8669, %8679
  %8681 = fsub fast float -0.000000e+00, %8680
  %8682 = fdiv fast float %8681, %8672
  br label %8683

; <label>:8683                                    ; preds = %8676, %8667
  %8684 = phi float [ %8682, %8676 ], [ %8669, %8667 ]
  %8685 = phi float [ %8678, %8676 ], [ 1.000000e+00, %8667 ]
  %8686 = fcmp fast une float %8673, 0.000000e+00
  br i1 %8686, label %8687, label %8694, !dx.controlflow.hints !169

; <label>:8687                                    ; preds = %8683
  %8688 = fmul fast float %8673, 0x3FF7154760000000
  %8689 = call float @dx.op.unary.f32(i32 21, float %8688)  ; Exp(value)
  %8690 = fsub fast float 1.000000e+00, %8689
  %8691 = fmul fast float %8670, %8690
  %8692 = fsub fast float -0.000000e+00, %8691
  %8693 = fdiv fast float %8692, %8673
  br label %8694

; <label>:8694                                    ; preds = %8687, %8683
  %8695 = phi float [ %8693, %8687 ], [ %8670, %8683 ]
  %8696 = phi float [ %8689, %8687 ], [ 1.000000e+00, %8683 ]
  %8697 = fcmp fast une float %8674, 0.000000e+00
  br i1 %8697, label %8698, label %8705, !dx.controlflow.hints !169

; <label>:8698                                    ; preds = %8694
  %8699 = fmul fast float %8674, 0x3FF7154760000000
  %8700 = call float @dx.op.unary.f32(i32 21, float %8699)  ; Exp(value)
  %8701 = fsub fast float 1.000000e+00, %8700
  %8702 = fmul fast float %8671, %8701
  %8703 = fsub fast float -0.000000e+00, %8702
  %8704 = fdiv fast float %8703, %8674
  br label %8705

; <label>:8705                                    ; preds = %8698, %8694, %8654, %8647
  %8706 = phi float [ %8704, %8698 ], [ %8666, %8654 ], [ %8651, %8647 ], [ %8671, %8694 ]
  %8707 = phi float [ %8695, %8698 ], [ %8665, %8654 ], [ %8650, %8647 ], [ %8695, %8694 ]
  %8708 = phi float [ %8684, %8698 ], [ %8664, %8654 ], [ %8649, %8647 ], [ %8684, %8694 ]
  %8709 = phi float [ %8700, %8698 ], [ %8656, %8654 ], [ 1.000000e+00, %8647 ], [ 1.000000e+00, %8694 ]
  %8710 = phi float [ %8696, %8698 ], [ %8656, %8654 ], [ 1.000000e+00, %8647 ], [ %8696, %8694 ]
  %8711 = phi float [ %8685, %8698 ], [ %8656, %8654 ], [ 1.000000e+00, %8647 ], [ %8685, %8694 ]
  %8712 = fmul fast float %8711, %8623
  %8713 = fmul fast float %8710, %8634
  %8714 = fmul fast float %8709, %8645
  %8715 = fadd fast float %8712, %8708
  %8716 = fadd fast float %8713, %8707
  %8717 = fadd fast float %8714, %8706
  %8718 = fmul fast float %8711, %8622
  %8719 = fmul fast float %8710, %8633
  %8720 = fmul fast float %8709, %8644
  br label %8721

; <label>:8721                                    ; preds = %8705, %8516
  %8722 = phi float [ %8720, %8705 ], [ %8522, %8516 ]
  %8723 = phi float [ %8719, %8705 ], [ %8521, %8516 ]
  %8724 = phi float [ %8718, %8705 ], [ %8520, %8516 ]
  %8725 = phi float [ %8717, %8705 ], [ %8519, %8516 ]
  %8726 = phi float [ %8716, %8705 ], [ %8518, %8516 ]
  %8727 = phi float [ %8715, %8705 ], [ %8517, %8516 ]
  %8728 = fmul fast float %8727, %7673
  %8729 = fmul fast float %8726, %7673
  %8730 = fmul fast float %8725, %7673
  %8731 = fmul fast float %8724, %7964
  %8732 = call float @dx.op.dot3.f32(i32 55, float %8724, float %8723, float %8722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8733 = call float @dx.op.dot3.f32(i32 55, float %8728, float %8729, float %8730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8734 = select i1 %265, float %8732, float %8724
  %8735 = select i1 %265, float %8732, float %8723
  %8736 = select i1 %265, float 1.000000e+00, float %8722
  %8737 = select i1 %265, float %8733, float %8728
  %8738 = select i1 %265, float 0.000000e+00, float %8729
  %8739 = select i1 %265, float 0.000000e+00, float %8730
  %8740 = fmul fast float %8734, %7958
  %8741 = fmul fast float %8735, %7959
  %8742 = fmul fast float %8736, %7960
  %8743 = fadd fast float %8740, %8737
  %8744 = fadd fast float %8741, %8738
  %8745 = fadd fast float %8739, %8742
  %8746 = fmul fast float %8734, %7961
  %8747 = fmul fast float %8735, %7962
  %8748 = fmul fast float %8736, %7963
  %8749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8750 = extractvalue %dx.types.CBufRet.i32 %8749, 0
  %8751 = icmp eq i32 %8750, 0
  br i1 %8751, label %9119, label %8752, !dx.controlflow.hints !171

; <label>:8752                                    ; preds = %8721
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 3
  %8756 = fmul fast float %8754, %106
  %8757 = fmul fast float %8755, %107
  %8758 = fmul fast float %8756, 2.000000e+00
  %8759 = fmul fast float %8757, 2.000000e+00
  %8760 = fsub fast float 1.000000e+00, %8758
  %8761 = fsub fast float 1.000000e+00, %8759
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.CBufRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.CBufRet.f32 %8762, 2
  %8766 = fmul fast float %8760, %8763
  %8767 = fmul fast float %8760, %8764
  %8768 = fmul fast float %8760, %8765
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.CBufRet.f32 %8769, 2
  %8773 = fmul fast float %8761, %8770
  %8774 = fmul fast float %8761, %8771
  %8775 = fmul fast float %8761, %8772
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8779 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8780 = fadd fast float %8773, %8777
  %8781 = fadd fast float %8780, %8766
  %8782 = fadd fast float %8774, %8778
  %8783 = fadd fast float %8782, %8767
  %8784 = fadd fast float %8775, %8779
  %8785 = fadd fast float %8784, %8768
  %8786 = fmul fast float %8781, %7957
  %8787 = fmul fast float %8783, %7957
  %8788 = fmul fast float %8785, %7957
  %8789 = fmul fast float %8786, %8786
  %8790 = fmul fast float %8787, %8787
  %8791 = fadd fast float %8789, %8790
  %8792 = fmul fast float %8788, %8788
  %8793 = fadd fast float %8791, %8792
  %8794 = call float @dx.op.unary.f32(i32 24, float %8793)  ; Sqrt(value)
  %8795 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %8796 = fsub fast float %8794, %8795
  %8797 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %8798 = fmul fast float %8796, %8797
  %8799 = call float @dx.op.unary.f32(i32 7, float %8798)  ; Saturate(value)
  %8800 = fadd fast float %8799, -5.000000e-01
  %8801 = fmul fast float %8800, 2.000000e+00
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8804 = call float @dx.op.binary.f32(i32 36, float %8803, float %8801)  ; FMin(a,b)
  %8805 = fsub fast float -0.000000e+00, %8803
  %8806 = fcmp fast ogt float %8804, %8805
  br i1 %8806, label %8807, label %9119, !dx.controlflow.hints !172

; <label>:8807                                    ; preds = %8752
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 3
  %8810 = fcmp fast ogt float %8809, 0.000000e+00
  br i1 %8810, label %8811, label %8886, !dx.controlflow.hints !173

; <label>:8811                                    ; preds = %8807
  %8812 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8813 = extractvalue %dx.types.Dimensions %8812, 0
  %8814 = sitofp i32 %8813 to float
  %8815 = extractvalue %dx.types.Dimensions %8812, 1
  %8816 = sitofp i32 %8815 to float
  %8817 = fmul fast float %8756, %8814
  %8818 = fmul fast float %8757, %8816
  %8819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8820 = extractvalue %dx.types.CBufRet.f32 %8819, 1
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = fptoui float %8821 to i32
  %8823 = fptoui float %8817 to i32
  %8824 = fptoui float %8818 to i32
  %8825 = and i32 %8822, 31
  %8826 = lshr i32 %8823, %8825
  %8827 = lshr i32 %8824, %8825
  %8828 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8822, i32 %8826, i32 %8827, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8829 = extractvalue %dx.types.ResRet.f32 %8828, 0
  %8830 = fcmp fast olt float %8829, -1.000000e+00
  %8831 = fcmp fast ogt float %8829, -1.000000e+00
  %8832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8832, 1
  %8834 = select i1 %8831, float %8833, float 1.000000e+00
  %8835 = fadd fast float %8829, 1.000000e+00
  %8836 = fmul fast float %8834, %8835
  %8837 = call float @dx.op.unary.f32(i32 6, float %8836)  ; FAbs(value)
  %8838 = extractvalue %dx.types.CBufRet.f32 %8832, 3
  %8839 = fcmp fast oge float %8837, %8838
  %8840 = select i1 %8839, float 0x4197782600000000, float %8837
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 0
  %8843 = extractvalue %dx.types.CBufRet.f32 %8841, 1
  %8844 = extractvalue %dx.types.CBufRet.f32 %8841, 2
  %8845 = select i1 %8830, float %8842, float %8763
  %8846 = select i1 %8830, float %8843, float %8764
  %8847 = select i1 %8830, float %8844, float %8765
  %8848 = fmul fast float %8845, %8760
  %8849 = fmul fast float %8846, %8760
  %8850 = fmul fast float %8847, %8760
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 0
  %8853 = extractvalue %dx.types.CBufRet.f32 %8851, 1
  %8854 = extractvalue %dx.types.CBufRet.f32 %8851, 2
  %8855 = select i1 %8830, float %8852, float %8770
  %8856 = select i1 %8830, float %8853, float %8771
  %8857 = select i1 %8830, float %8854, float %8772
  %8858 = fmul fast float %8855, %8761
  %8859 = fmul fast float %8856, %8761
  %8860 = fmul fast float %8857, %8761
  %8861 = fadd fast float %8858, %8848
  %8862 = fadd fast float %8859, %8849
  %8863 = fadd fast float %8860, %8850
  %8864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8864, 0
  %8866 = extractvalue %dx.types.CBufRet.f32 %8864, 1
  %8867 = extractvalue %dx.types.CBufRet.f32 %8864, 2
  %8868 = select i1 %8830, float %8865, float %8777
  %8869 = select i1 %8830, float %8866, float %8778
  %8870 = select i1 %8830, float %8867, float %8779
  %8871 = fadd fast float %8861, %8868
  %8872 = fadd fast float %8862, %8869
  %8873 = fadd fast float %8863, %8870
  %8874 = fmul fast float %8871, %8840
  %8875 = fmul fast float %8872, %8840
  %8876 = fmul fast float %8873, %8840
  %8877 = fmul fast float %8874, %8874
  %8878 = fmul fast float %8875, %8875
  %8879 = fadd fast float %8877, %8878
  %8880 = fmul fast float %8876, %8876
  %8881 = fadd fast float %8879, %8880
  %8882 = call float @dx.op.unary.f32(i32 24, float %8881)  ; Sqrt(value)
  %8883 = fsub fast float %8882, %8795
  %8884 = fmul fast float %8883, %8797
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  br label %8886

; <label>:8886                                    ; preds = %8811, %8807
  %8887 = phi float [ %8885, %8811 ], [ 1.000000e+00, %8807 ]
  %8888 = fmul fast float %8804, 5.000000e-01
  %8889 = fadd fast float %8888, 5.000000e-01
  %8890 = call float @dx.op.unary.f32(i32 22, float %8889)  ; Frc(value)
  %8891 = call float @dx.op.unary.f32(i32 27, float %8890)  ; Round_ni(value)
  %8892 = call float @dx.op.unary.f32(i32 22, float %8890)  ; Frc(value)
  %8893 = fmul fast float %8892, 2.000000e+00
  %8894 = fadd fast float %8893, -1.000000e+00
  %8895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8756, float %8757, float %8891, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8896 = extractvalue %dx.types.ResRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.ResRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.ResRet.f32 %8895, 2
  %8899 = extractvalue %dx.types.ResRet.f32 %8895, 3
  %8900 = fadd fast float %8896, -5.000000e-01
  %8901 = fadd fast float %8898, -5.000000e-01
  %8902 = fmul fast float %8900, 0xBFD5555560000000
  %8903 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8901, float %8902)  ; FMad(a,b,c)
  %8904 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8897, float 0.000000e+00)  ; FMad(a,b,c)
  %8905 = fadd fast float %8904, %8899
  %8906 = fmul fast float %8900, -7.500000e-01
  %8907 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8901, float %8906)  ; FMad(a,b,c)
  %8908 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8897, float 0.000000e+00)  ; FMad(a,b,c)
  %8909 = fadd fast float %8908, %8899
  %8910 = call float @dx.op.binary.f32(i32 35, float %8903, float -1.000000e+00)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 35, float %8905, float -1.000000e+00)  ; FMax(a,b)
  %8912 = call float @dx.op.binary.f32(i32 35, float %8907, float -1.000000e+00)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float %8909, float -1.000000e+00)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 36, float %8910, float 1.000000e+00)  ; FMin(a,b)
  %8915 = call float @dx.op.binary.f32(i32 36, float %8911, float 1.000000e+00)  ; FMin(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8912, float 1.000000e+00)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8913, float 1.000000e+00)  ; FMin(a,b)
  %8918 = fcmp fast olt float %8914, 0x3FEFFF8020000000
  br i1 %8918, label %8919, label %9034, !dx.controlflow.hints !174

; <label>:8919                                    ; preds = %8886
  %8920 = extractvalue %dx.types.CBufRet.f32 %8802, 3
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 0
  %8923 = extractvalue %dx.types.CBufRet.f32 %8921, 1
  %8924 = extractvalue %dx.types.CBufRet.f32 %8921, 2
  %8925 = extractvalue %dx.types.CBufRet.f32 %8921, 3
  %8926 = fsub fast float %8922, %8914
  %8927 = fsub fast float %8923, %8915
  %8928 = fsub fast float %8924, %8916
  %8929 = fsub fast float %8925, %8917
  %8930 = fmul fast float %8926, %8920
  %8931 = fmul fast float %8927, %8920
  %8932 = fmul fast float %8928, %8920
  %8933 = fmul fast float %8929, %8920
  %8934 = fadd fast float %8930, %8914
  %8935 = fadd fast float %8931, %8915
  %8936 = fsub fast float -0.000000e+00, %8935
  %8937 = fadd fast float %8932, %8916
  %8938 = fadd fast float %8933, %8917
  %8939 = fmul fast float %8934, %8934
  %8940 = fsub fast float %8935, %8939
  %8941 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8940)  ; FMax(a,b)
  %8942 = fdiv fast float 1.000000e+00, %8941
  %8943 = fmul fast float %8935, %8934
  %8944 = fsub fast float %8937, %8943
  %8945 = fsub fast float %8894, %8934
  %8946 = fmul fast float %8894, %8894
  %8947 = fsub fast float %8946, %8935
  %8948 = fmul fast float %8945, %8942
  %8949 = fmul fast float %8948, %8944
  %8950 = fsub fast float %8947, %8949
  %8951 = fmul fast float %8935, %8935
  %8952 = fsub fast float %8938, %8951
  %8953 = fmul fast float %8944, %8944
  %8954 = fmul fast float %8953, %8942
  %8955 = fsub fast float %8952, %8954
  %8956 = fdiv fast float %8950, %8955
  %8957 = fmul fast float %8944, %8956
  %8958 = fsub fast float %8945, %8957
  %8959 = fmul fast float %8958, %8942
  %8960 = fmul fast float %8959, %8934
  %8961 = fsub fast float 1.000000e+00, %8960
  %8962 = fmul fast float %8935, %8956
  %8963 = fsub fast float %8961, %8962
  %8964 = fmul fast float %8959, %8959
  %8965 = fmul fast float %8956, 4.000000e+00
  %8966 = fmul fast float %8965, %8963
  %8967 = fsub fast float %8964, %8966
  %8968 = call float @dx.op.unary.f32(i32 24, float %8967)  ; Sqrt(value)
  %8969 = fcmp fast oge float %8959, 0.000000e+00
  %8970 = fsub fast float -0.000000e+00, %8968
  %8971 = select i1 %8969, float %8970, float %8968
  %8972 = fsub fast float %8971, %8959
  %8973 = fdiv fast float %8972, %8956
  %8974 = fdiv fast float %8963, %8972
  %8975 = fmul fast float %8973, 5.000000e-01
  %8976 = fmul fast float %8974, 2.000000e+00
  %8977 = select i1 %8969, float %8975, float %8976
  %8978 = select i1 %8969, float %8976, float %8975
  %8979 = call float @dx.op.binary.f32(i32 35, float %8977, float %8978)  ; FMax(a,b)
  %8980 = call float @dx.op.binary.f32(i32 36, float %8977, float %8978)  ; FMin(a,b)
  %8981 = fcmp fast ogt float %8894, %8980
  br i1 %8981, label %8982, label %8992

; <label>:8982                                    ; preds = %8919
  %8983 = fsub fast float %8894, %8980
  %8984 = fsub fast float %8979, %8980
  %8985 = fmul fast float %8983, %8984
  %8986 = fmul fast float %8979, %8894
  %8987 = fadd fast float %8979, %8894
  %8988 = fmul fast float %8987, %8934
  %8989 = fadd fast float %8986, %8935
  %8990 = fsub fast float %8989, %8988
  %8991 = fdiv fast float %8990, %8985
  br label %8992

; <label>:8992                                    ; preds = %8982, %8919
  %8993 = phi float [ %8991, %8982 ], [ 0.000000e+00, %8919 ]
  %8994 = fcmp fast ogt float %8894, %8979
  %8995 = fsub fast float %8894, %8979
  br i1 %8994, label %8996, label %9006

; <label>:8996                                    ; preds = %8992
  %8997 = fsub fast float %8979, %8980
  %8998 = fmul fast float %8997, %8995
  %8999 = fmul fast float %8980, %8894
  %9000 = fadd fast float %8980, %8894
  %9001 = fmul fast float %9000, %8934
  %9002 = fsub fast float %8936, %8999
  %9003 = fadd fast float %9002, %9001
  %9004 = fdiv fast float %9003, %8998
  %9005 = fadd fast float %9004, %8993
  br label %9006

; <label>:9006                                    ; preds = %8996, %8992
  %9007 = phi float [ %9005, %8996 ], [ %8993, %8992 ]
  %9008 = fsub fast float %8894, %8980
  %9009 = fmul fast float %9008, %8995
  %9010 = fmul fast float %8980, %8979
  %9011 = fadd fast float %8980, %8979
  %9012 = fmul fast float %9011, %8934
  %9013 = fadd fast float %9010, %8935
  %9014 = fsub fast float %9013, %9012
  %9015 = fdiv fast float %9014, %9009
  %9016 = call float @dx.op.unary.f32(i32 7, float %9007)  ; Saturate(value)
  %9017 = fcmp fast oeq float %7685, 0.000000e+00
  %9018 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %9019 = fcmp fast oeq float %9018, 0.000000e+00
  %9020 = or i1 %9017, %9019
  %9021 = fmul fast float %9018, 2.000000e+00
  %9022 = fadd fast float %8803, %8804
  %9023 = fdiv fast float %9022, %9021
  %9024 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9025 = fmul fast float %9024, 2.000000e+00
  %9026 = fsub fast float 3.000000e+00, %9025
  %9027 = fmul fast float %9024, %9024
  %9028 = fmul fast float %9027, %9026
  %9029 = select i1 %9020, float 1.000000e+00, float %9028
  %9030 = fmul fast float %9015, %7685
  %9031 = fadd fast float %9016, %9030
  %9032 = call float @dx.op.unary.f32(i32 7, float %9031)  ; Saturate(value)
  %9033 = fmul fast float %9029, %9032
  br label %9034

; <label>:9034                                    ; preds = %9006, %8886
  %9035 = phi float [ %9033, %9006 ], [ 0.000000e+00, %8886 ]
  %9036 = fsub fast float 1.000000e+00, %9035
  %9037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8756, float %8757, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9038 = extractvalue %dx.types.ResRet.f32 %9037, 0
  %9039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9040 = extractvalue %dx.types.CBufRet.i32 %9039, 2
  %9041 = icmp eq i32 %9040, 0
  br i1 %9041, label %9047, label %9042

; <label>:9042                                    ; preds = %9034
  %9043 = call float @dx.op.unary.f32(i32 7, float %9035)  ; Saturate(value)
  %9044 = fadd fast float %9038, -1.000000e+00
  %9045 = fmul fast float %9043, %9044
  %9046 = fadd fast float %9045, 1.000000e+00
  br label %9047

; <label>:9047                                    ; preds = %9042, %9034
  %9048 = phi float [ %9046, %9042 ], [ %9036, %9034 ]
  br i1 %8810, label %9049, label %9067

; <label>:9049                                    ; preds = %9047
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 1
  %9052 = fsub fast float %8887, %9051
  %9053 = call float @dx.op.unary.f32(i32 7, float %9052)  ; Saturate(value)
  %9054 = fsub fast float %8887, %8809
  %9055 = call float @dx.op.unary.f32(i32 7, float %9054)  ; Saturate(value)
  %9056 = fsub fast float %9053, %9055
  %9057 = fsub fast float %8889, %9055
  %9058 = fdiv fast float %9057, %9056
  %9059 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  %9060 = fmul fast float %9059, 2.000000e+00
  %9061 = fsub fast float 3.000000e+00, %9060
  %9062 = fsub fast float %9038, %9048
  %9063 = fmul fast float %9059, %9059
  %9064 = fmul fast float %9063, %9062
  %9065 = fmul fast float %9064, %9061
  %9066 = fadd fast float %9065, %9048
  br label %9067

; <label>:9067                                    ; preds = %9049, %9047
  %9068 = phi float [ %9066, %9049 ], [ %9048, %9047 ]
  %9069 = call float @dx.op.binary.f32(i32 35, float %9038, float %9068)  ; FMax(a,b)
  %9070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9071 = extractvalue %dx.types.CBufRet.i32 %9070, 2
  %9072 = and i32 %9071, 1
  %9073 = icmp eq i32 %9072, 0
  %9074 = fcmp fast une float %9069, 1.000000e+00
  %9075 = and i1 %9074, %9073
  br i1 %9075, label %9076, label %9095

; <label>:9076                                    ; preds = %9067
  %9077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8756, float %8757, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9078 = extractvalue %dx.types.ResRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.ResRet.f32 %9077, 1
  %9080 = extractvalue %dx.types.ResRet.f32 %9077, 2
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 1
  %9083 = fmul fast float %9082, %9078
  %9084 = fmul fast float %9082, %9079
  %9085 = fmul fast float %9082, %9080
  %9086 = fcmp fast ogt float %9038, 0x3FEFFF2E40000000
  %9087 = fsub fast float 1.000000e+00, %9069
  %9088 = fsub fast float 1.000000e+00, %9038
  %9089 = fdiv fast float %9087, %9088
  %9090 = call float @dx.op.unary.f32(i32 7, float %9089)  ; Saturate(value)
  %9091 = select i1 %9086, float 0.000000e+00, float %9090
  %9092 = fmul fast float %9083, %9091
  %9093 = fmul fast float %9084, %9091
  %9094 = fmul fast float %9085, %9091
  br label %9095

; <label>:9095                                    ; preds = %9076, %9067
  %9096 = phi float [ 0.000000e+00, %9067 ], [ %9092, %9076 ]
  %9097 = phi float [ 0.000000e+00, %9067 ], [ %9093, %9076 ]
  %9098 = phi float [ 0.000000e+00, %9067 ], [ %9094, %9076 ]
  %9099 = fmul fast float %9096, %7673
  %9100 = fmul fast float %9097, %7673
  %9101 = fmul fast float %9098, %7673
  %9102 = fmul fast float %9069, %8731
  %9103 = call float @dx.op.dot3.f32(i32 55, float %9069, float %9069, float %9069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9104 = call float @dx.op.dot3.f32(i32 55, float %9099, float %9100, float %9101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9105 = select i1 %265, float %9103, float %9069
  %9106 = select i1 %265, float 1.000000e+00, float %9069
  %9107 = select i1 %265, float %9104, float %9099
  %9108 = select i1 %265, float 0.000000e+00, float %9100
  %9109 = select i1 %265, float 0.000000e+00, float %9101
  %9110 = fmul fast float %9105, %8743
  %9111 = fmul fast float %9105, %8744
  %9112 = fmul fast float %9106, %8745
  %9113 = fadd fast float %9110, %9107
  %9114 = fadd fast float %9111, %9108
  %9115 = fadd fast float %9109, %9112
  %9116 = fmul fast float %9105, %8746
  %9117 = fmul fast float %9105, %8747
  %9118 = fmul fast float %9106, %8748
  br label %9119

; <label>:9119                                    ; preds = %9095, %8752, %8721, %7953
  %9120 = phi float [ %7958, %7953 ], [ %8743, %8721 ], [ %9113, %9095 ], [ %8743, %8752 ]
  %9121 = phi float [ %7959, %7953 ], [ %8744, %8721 ], [ %9114, %9095 ], [ %8744, %8752 ]
  %9122 = phi float [ %7960, %7953 ], [ %8745, %8721 ], [ %9115, %9095 ], [ %8745, %8752 ]
  %9123 = phi float [ %7961, %7953 ], [ %8746, %8721 ], [ %9116, %9095 ], [ %8746, %8752 ]
  %9124 = phi float [ %7962, %7953 ], [ %8747, %8721 ], [ %9117, %9095 ], [ %8747, %8752 ]
  %9125 = phi float [ %7963, %7953 ], [ %8748, %8721 ], [ %9118, %9095 ], [ %8748, %8752 ]
  %9126 = phi float [ %7964, %7953 ], [ %8731, %8721 ], [ %9102, %9095 ], [ %8731, %8752 ]
  %9127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9128 = extractvalue %dx.types.CBufRet.f32 %9127, 2
  %9129 = extractvalue %dx.types.CBufRet.f32 %9127, 3
  %9130 = fmul fast float %9128, %106
  %9131 = fmul fast float %9129, %107
  %9132 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  %9133 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9134 = select i1 %7695, i32 2, i32 0
  %9135 = or i32 %9134, 1
  %9136 = uitofp i32 %9135 to float
  %9137 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9132, float %9133, float %9136, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9138 = extractvalue %dx.types.ResRet.f32 %9137, 0
  %9139 = extractvalue %dx.types.ResRet.f32 %9137, 1
  %9140 = extractvalue %dx.types.ResRet.f32 %9137, 2
  %9141 = extractvalue %dx.types.ResRet.f32 %9137, 3
  %9142 = add nuw nsw i32 %9134, 2
  %9143 = uitofp i32 %9142 to float
  %9144 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9132, float %9133, float %9143, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9145 = extractvalue %dx.types.ResRet.f32 %9144, 0
  %9146 = extractvalue %dx.types.ResRet.f32 %9144, 1
  %9147 = extractvalue %dx.types.ResRet.f32 %9144, 2
  %9148 = extractvalue %dx.types.ResRet.f32 %9144, 3
  %9149 = call float @dx.op.binary.f32(i32 35, float %9139, float %9140)  ; FMax(a,b)
  %9150 = call float @dx.op.binary.f32(i32 35, float %9138, float %9149)  ; FMax(a,b)
  %9151 = call float @dx.op.binary.f32(i32 35, float %9150, float %9141)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 36, float %9146, float %9147)  ; FMin(a,b)
  %9153 = call float @dx.op.binary.f32(i32 36, float %9145, float %9152)  ; FMin(a,b)
  %9154 = call float @dx.op.binary.f32(i32 36, float %9153, float %9148)  ; FMin(a,b)
  %9155 = fmul fast float %9151, 2.550000e+02
  %9156 = fadd fast float %9155, 0x3F70101020000000
  %9157 = fptoui float %9156 to i32
  %9158 = fmul fast float %9154, 2.550000e+02
  %9159 = fadd fast float %9158, 0x3F70101020000000
  %9160 = fptoui float %9159 to i32
  %9161 = icmp ult i32 %9157, %9160
  br i1 %9161, label %9162, label %9331

; <label>:9162                                    ; preds = %9119
  %9163 = fcmp fast ogt float %96, 9.843750e-01
  %9164 = fadd fast float %7957, -4.000000e+00
  %9165 = select i1 %9163, float -4.000000e+00, float %9164
  %9166 = call float @dx.op.binary.f32(i32 35, float %9165, float 0.000000e+00)  ; FMax(a,b)
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 0
  %9169 = fadd fast float %9168, %9166
  %9170 = extractvalue %dx.types.CBufRet.f32 %9167, 2
  %9171 = fmul fast float %9169, %9170
  %9172 = call float @dx.op.unary.f32(i32 23, float %9171)  ; Log(value)
  %9173 = extractvalue %dx.types.CBufRet.f32 %9167, 3
  %9174 = fmul fast float %9173, %9172
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 2
  %9177 = fmul fast float %9174, %9176
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = uitofp i32 %9157 to float
  %9180 = uitofp i32 %9160 to float
  %9181 = fadd fast float %9179, 5.000000e-01
  %9182 = fadd fast float %9180, 5.000000e-01
  %9183 = fmul fast float %9176, %9181
  %9184 = fmul fast float %9176, %9182
  %9185 = fadd fast float %9183, 0x3F0FFB4800000000
  %9186 = fadd fast float %9184, 0xBF0FFB4800000000
  %9187 = call float @dx.op.binary.f32(i32 35, float %9178, float %9185)  ; FMax(a,b)
  %9188 = call float @dx.op.binary.f32(i32 36, float %9187, float %9186)  ; FMin(a,b)
  %9189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9189, 1
  %9191 = extractvalue %dx.types.CBufRet.f32 %9189, 2
  %9192 = extractvalue %dx.types.CBufRet.f32 %9189, 0
  %9193 = select i1 %7695, float %9192, float 0.000000e+00
  %9194 = fmul fast float %9190, %9188
  %9195 = fadd fast float %9193, %9194
  %9196 = fadd fast float %9193, %9191
  %9197 = fsub fast float %9190, %9191
  %9198 = fadd fast float %9197, %9193
  %9199 = call float @dx.op.binary.f32(i32 35, float %9195, float %9196)  ; FMax(a,b)
  %9200 = call float @dx.op.binary.f32(i32 36, float %9199, float %9198)  ; FMin(a,b)
  %9201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9132, float %9133, float %9200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9202 = extractvalue %dx.types.ResRet.f32 %9201, 0
  %9203 = extractvalue %dx.types.ResRet.f32 %9201, 1
  %9204 = extractvalue %dx.types.ResRet.f32 %9201, 2
  %9205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.i32 %9205, 0
  %9207 = extractvalue %dx.types.CBufRet.i32 %9205, 1
  %9208 = uitofp i32 %9206 to float
  %9209 = uitofp i32 %9207 to float
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9213 = fmul fast float %9208, %9132
  %9214 = fmul fast float %9209, %9133
  %9215 = fadd fast float %9213, -5.000000e-01
  %9216 = fadd fast float %9214, -5.000000e-01
  %9217 = call float @dx.op.unary.f32(i32 22, float %9215)  ; Frc(value)
  %9218 = call float @dx.op.unary.f32(i32 22, float %9216)  ; Frc(value)
  %9219 = fmul fast float %9217, %9217
  %9220 = fmul fast float %9219, %9217
  %9221 = fsub fast float 3.000000e+00, %9217
  %9222 = fmul fast float %9219, %9221
  %9223 = fmul fast float %9217, 3.000000e+00
  %9224 = fmul fast float %9220, 3.000000e+00
  %9225 = fmul fast float %9219, 6.000000e+00
  %9226 = fsub fast float %9224, %9225
  %9227 = fadd fast float %9226, 4.000000e+00
  %9228 = fmul fast float %9227, 0x3FC5555560000000
  %9229 = fmul fast float %9220, -3.000000e+00
  %9230 = fadd fast float %9219, %9217
  %9231 = fmul fast float %9230, 3.000000e+00
  %9232 = fadd fast float %9229, 1.000000e+00
  %9233 = fadd fast float %9232, %9231
  %9234 = fmul fast float %9220, 0x3FC5555560000000
  %9235 = fmul fast float %9218, %9218
  %9236 = fmul fast float %9235, %9218
  %9237 = fsub fast float 3.000000e+00, %9218
  %9238 = fmul fast float %9235, %9237
  %9239 = fmul fast float %9218, 3.000000e+00
  %9240 = fmul fast float %9236, 3.000000e+00
  %9241 = fmul fast float %9235, 6.000000e+00
  %9242 = fsub fast float %9240, %9241
  %9243 = fadd fast float %9242, 4.000000e+00
  %9244 = fmul fast float %9243, 0x3FC5555560000000
  %9245 = fmul fast float %9236, -3.000000e+00
  %9246 = fadd fast float %9235, %9218
  %9247 = fmul fast float %9246, 3.000000e+00
  %9248 = fadd fast float %9245, 1.000000e+00
  %9249 = fadd fast float %9248, %9247
  %9250 = fmul fast float %9236, 0x3FC5555560000000
  %9251 = fadd fast float %9217, 1.000000e+00
  %9252 = fsub fast float 1.000000e+00, %9223
  %9253 = fadd fast float %9252, %9222
  %9254 = fadd fast float %9253, %9227
  %9255 = fmul fast float %9254, 0x3FC5555560000000
  %9256 = fdiv fast float %9228, %9255
  %9257 = fsub fast float %9251, %9256
  %9258 = fsub fast float 1.000000e+00, %9217
  %9259 = fadd fast float %9233, %9220
  %9260 = fmul fast float %9259, 0x3FC5555560000000
  %9261 = fdiv fast float %9234, %9260
  %9262 = fadd fast float %9258, %9261
  %9263 = fadd fast float %9218, 1.000000e+00
  %9264 = fsub fast float 1.000000e+00, %9239
  %9265 = fadd fast float %9264, %9238
  %9266 = fadd fast float %9265, %9243
  %9267 = fmul fast float %9266, 0x3FC5555560000000
  %9268 = fdiv fast float %9244, %9267
  %9269 = fsub fast float %9263, %9268
  %9270 = fsub fast float 1.000000e+00, %9218
  %9271 = fadd fast float %9249, %9236
  %9272 = fmul fast float %9271, 0x3FC5555560000000
  %9273 = fdiv fast float %9250, %9272
  %9274 = fadd fast float %9273, %9270
  %9275 = fmul fast float %9257, %9211
  %9276 = fsub fast float %9132, %9275
  %9277 = fmul fast float %9262, %9211
  %9278 = fadd fast float %9277, %9132
  %9279 = fmul fast float %9274, %9212
  %9280 = fadd fast float %9279, %9133
  %9281 = fmul fast float %9269, %9212
  %9282 = fsub fast float %9133, %9281
  %9283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9276, float %9282, float %9200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9284 = extractvalue %dx.types.ResRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.ResRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.ResRet.f32 %9283, 2
  %9287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9278, float %9282, float %9200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9288 = extractvalue %dx.types.ResRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.ResRet.f32 %9287, 1
  %9290 = extractvalue %dx.types.ResRet.f32 %9287, 2
  %9291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9276, float %9280, float %9200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9292 = extractvalue %dx.types.ResRet.f32 %9291, 0
  %9293 = extractvalue %dx.types.ResRet.f32 %9291, 1
  %9294 = extractvalue %dx.types.ResRet.f32 %9291, 2
  %9295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9278, float %9280, float %9200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.ResRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.ResRet.f32 %9295, 2
  %9299 = fsub fast float %9292, %9284
  %9300 = fsub fast float %9293, %9285
  %9301 = fsub fast float %9294, %9286
  %9302 = fmul fast float %9299, %9272
  %9303 = fmul fast float %9300, %9272
  %9304 = fmul fast float %9301, %9272
  %9305 = fadd fast float %9302, %9284
  %9306 = fadd fast float %9303, %9285
  %9307 = fadd fast float %9304, %9286
  %9308 = fsub fast float %9296, %9288
  %9309 = fsub fast float %9297, %9289
  %9310 = fsub fast float %9298, %9290
  %9311 = fmul fast float %9308, %9272
  %9312 = fmul fast float %9309, %9272
  %9313 = fmul fast float %9310, %9272
  %9314 = fsub fast float %9288, %9305
  %9315 = fadd fast float %9314, %9311
  %9316 = fsub fast float %9289, %9306
  %9317 = fadd fast float %9316, %9312
  %9318 = fsub fast float %9290, %9307
  %9319 = fadd fast float %9318, %9313
  %9320 = fmul fast float %9315, %9260
  %9321 = fmul fast float %9317, %9260
  %9322 = fmul fast float %9319, %9260
  %9323 = fadd fast float %9320, %9305
  %9324 = fadd fast float %9321, %9306
  %9325 = fadd fast float %9322, %9307
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 1
  %9328 = fmul fast float %9323, %9327
  %9329 = fmul fast float %9324, %9327
  %9330 = fmul fast float %9325, %9327
  br label %9331

; <label>:9331                                    ; preds = %9162, %9119
  %9332 = phi float [ %9202, %9162 ], [ 1.000000e+00, %9119 ]
  %9333 = phi float [ %9203, %9162 ], [ 1.000000e+00, %9119 ]
  %9334 = phi float [ %9204, %9162 ], [ 1.000000e+00, %9119 ]
  %9335 = phi float [ %9328, %9162 ], [ 0.000000e+00, %9119 ]
  %9336 = phi float [ %9329, %9162 ], [ 0.000000e+00, %9119 ]
  %9337 = phi float [ %9330, %9162 ], [ 0.000000e+00, %9119 ]
  %9338 = fmul fast float %9335, %7673
  %9339 = fmul fast float %9336, %7673
  %9340 = fmul fast float %9337, %7673
  %9341 = fmul fast float %9332, %9126
  %9342 = call float @dx.op.dot3.f32(i32 55, float %9332, float %9333, float %9334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9343 = call float @dx.op.dot3.f32(i32 55, float %9338, float %9339, float %9340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9344 = select i1 %265, float %9342, float %9332
  %9345 = select i1 %265, float %9342, float %9333
  %9346 = select i1 %265, float 1.000000e+00, float %9334
  %9347 = select i1 %265, float %9343, float %9338
  %9348 = select i1 %265, float 0.000000e+00, float %9339
  %9349 = select i1 %265, float 0.000000e+00, float %9340
  %9350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9351 = extractvalue %dx.types.CBufRet.i32 %9350, 3
  %9352 = and i32 %9351, 3
  %9353 = icmp ne i32 %9352, 0
  %9354 = and i32 %9351, 4
  %9355 = icmp ne i32 %9354, 0
  %9356 = and i1 %9353, %9355
  %9357 = and i1 %265, %9356
  br i1 %9357, label %9358, label %9364

; <label>:9358                                    ; preds = %9331
  %9359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9360 = extractvalue %dx.types.CBufRet.f32 %9359, 1
  %9361 = fadd fast float %9341, -1.000000e+00
  %9362 = fmul fast float %9360, %9361
  %9363 = fadd fast float %9362, 1.000000e+00
  br label %9364

; <label>:9364                                    ; preds = %9358, %9331
  %9365 = phi float [ %9363, %9358 ], [ %9341, %9331 ]
  %9366 = fadd fast float %9123, %9120
  %9367 = fmul fast float %9344, %9366
  %9368 = fadd fast float %9367, %9347
  %9369 = fadd fast float %9124, %9121
  %9370 = fmul fast float %9345, %9369
  %9371 = fadd fast float %9370, %9348
  %9372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.f32 %9372, 0
  br i1 %265, label %9374, label %9398

; <label>:9374                                    ; preds = %9364
  %9375 = fadd fast float %9368, %9371
  %9376 = fmul fast float %9373, %9375
  %9377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9378 = extractvalue %dx.types.CBufRet.f32 %9377, 3
  %9379 = extractvalue %dx.types.CBufRet.f32 %7677, 1
  %9380 = fsub fast float %7682, %7676
  %9381 = fadd fast float %9380, %7683
  %9382 = fsub fast float %9381, %9379
  %9383 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %9384 = fmul fast float %9382, %9383
  %9385 = call float @dx.op.unary.f32(i32 7, float %9384)  ; Saturate(value)
  %9386 = fsub fast float %9385, %9378
  %9387 = fmul fast float %9386, %9365
  %9388 = fadd fast float %9387, %9378
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 0
  %9391 = fsub fast float %9388, %9390
  %9392 = fmul fast float %9391, 1.000000e+01
  %9393 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9394 = fsub fast float %4462, %7673
  %9395 = fmul fast float %9393, %9394
  %9396 = fadd fast float %9395, %7673
  %9397 = fmul fast float %9396, %9388
  br label %9422

; <label>:9398                                    ; preds = %9364
  %9399 = fadd fast float %9125, %9122
  %9400 = fmul fast float %9346, %9399
  %9401 = fadd fast float %9400, %9349
  %9402 = fmul fast float %9373, %9368
  %9403 = fmul fast float %9373, %9371
  %9404 = fmul fast float %9373, %9401
  %9405 = call float @dx.op.binary.f32(i32 35, float %9403, float %9404)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 35, float %9402, float %9405)  ; FMax(a,b)
  %9407 = call float @dx.op.binary.f32(i32 35, float %9406, float %7673)  ; FMax(a,b)
  %9408 = fcmp fast ugt float %9407, 0x3F10000000000000
  br i1 %9408, label %9410, label %9409

; <label>:9409                                    ; preds = %9398
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9410

; <label>:9410                                    ; preds = %9409, %9398
  %9411 = add i32 %55, 356
  %9412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9411, i32 undef)  ; BufferLoad(srv,index,wot)
  %9413 = extractvalue %dx.types.ResRet.i32 %9412, 0
  %9414 = and i32 %9413, 32
  %9415 = icmp eq i32 %9414, 0
  br i1 %9415, label %9422, label %9416

; <label>:9416                                    ; preds = %9410
  %9417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9418 = extractvalue %dx.types.CBufRet.f32 %9417, 0
  %9419 = fmul fast float %9418, 0x3FE99999A0000000
  %9420 = fadd fast float %9418, %9402
  %9421 = fadd fast float %9419, %9404
  br label %9422

; <label>:9422                                    ; preds = %9416, %9410, %9374
  %9423 = phi float [ %9376, %9374 ], [ %9420, %9416 ], [ %9402, %9410 ]
  %9424 = phi float [ %9397, %9374 ], [ %9403, %9416 ], [ %9403, %9410 ]
  %9425 = phi float [ %9396, %9374 ], [ %9421, %9416 ], [ %9404, %9410 ]
  %9426 = phi float [ %9396, %9374 ], [ %7673, %9416 ], [ %7673, %9410 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9427 = call float @dx.op.binary.f32(i32 36, float %9423, float 3.225500e+04)  ; FMin(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9424, float 3.225500e+04)  ; FMin(a,b)
  %9429 = call float @dx.op.binary.f32(i32 36, float %9425, float 3.225500e+04)  ; FMin(a,b)
  %9430 = call float @dx.op.binary.f32(i32 36, float %9426, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9428)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9429)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9430)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

