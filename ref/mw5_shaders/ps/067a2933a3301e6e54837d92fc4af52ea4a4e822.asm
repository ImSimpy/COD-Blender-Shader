;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint    yz 
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
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
; shader hash: f05327c12ff83f26b5303916395aed6c
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
; COMP_FACTOR              0                 linear       
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 4 depends on inputs: { 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
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
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = alloca [12 x float], align 4
  %103 = alloca [12 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %109, %98
  %111 = fmul fast float %109, %99
  %112 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %113 = bitcast float %112 to i32
  %114 = ashr i32 %113, 1
  %115 = sub nsw i32 1597250115, %114
  %116 = bitcast i32 %115 to float
  %117 = fmul fast float %116, %89
  %118 = fmul fast float %116, %90
  %119 = fmul fast float %116, %91
  %120 = fmul fast float %90, %87
  %121 = fmul fast float %91, %86
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %91, %85
  %124 = fmul fast float %89, %87
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %89, %86
  %127 = fmul fast float %90, %85
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %122, %88
  %130 = fmul fast float %125, %88
  %131 = fmul fast float %128, %88
  %132 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = bitcast float %132 to i32
  %134 = ashr i32 %133, 1
  %135 = sub nsw i32 1597250115, %134
  %136 = bitcast i32 %135 to float
  %137 = fmul fast float %136, %78
  %138 = fmul fast float %136, %79
  %139 = fmul fast float %136, %80
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fcmp fast une float %141, 0.000000e+00
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %110, 2.000000e+00
  %147 = fmul fast float %146, %144
  %148 = fmul fast float %111, 2.000000e+00
  %149 = fmul fast float %148, %145
  %150 = fsub fast float 1.000000e+00, %147
  %151 = fsub fast float 1.000000e+00, %149
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = select i1 %142, float %153, float %157
  %161 = select i1 %142, float %154, float %158
  %162 = select i1 %142, float %155, float %159
  %163 = fmul fast float %160, %150
  %164 = fmul fast float %161, %150
  %165 = fmul fast float %162, %150
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = select i1 %142, float %167, float %171
  %175 = select i1 %142, float %168, float %172
  %176 = select i1 %142, float %169, float %173
  %177 = fmul fast float %174, %151
  %178 = fmul fast float %175, %151
  %179 = fmul fast float %176, %151
  %180 = fadd fast float %177, %163
  %181 = fadd fast float %178, %164
  %182 = fadd fast float %179, %165
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = select i1 %142, float %184, float %188
  %192 = select i1 %142, float %185, float %189
  %193 = select i1 %142, float %186, float %190
  %194 = fadd fast float %180, %191
  %195 = fadd fast float %181, %192
  %196 = fadd fast float %182, %193
  %197 = fmul fast float %194, %101
  %198 = fmul fast float %195, %101
  %199 = fmul fast float %196, %101
  %200 = shl i32 %57, 5
  %201 = add i32 %200, 4194304
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = extractvalue %dx.types.ResRet.i32 %202, 1
  %205 = extractvalue %dx.types.ResRet.i32 %202, 2
  %206 = extractvalue %dx.types.ResRet.i32 %202, 3
  %207 = add i32 %200, 4194320
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = bitcast i32 %209 to float
  %212 = bitcast i32 %210 to float
  %213 = fmul fast float %110, 5.000000e-01
  %214 = fmul fast float %111, 5.000000e-01
  %215 = fptosi float %213 to i32
  %216 = fptosi float %214 to i32
  %217 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = lshr i32 %218, 18
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F4C00EBA0000000
  %222 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %223 = fadd fast float %222, -1.000000e+00
  %224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %225 = extractvalue %dx.types.Dimensions %224, 0
  %226 = sitofp i32 %225 to float
  %227 = extractvalue %dx.types.Dimensions %224, 1
  %228 = sitofp i32 %227 to float
  %229 = fcmp fast oge float %213, %226
  %230 = fcmp fast oge float %214, %228
  %231 = or i1 %229, %230
  %232 = select i1 %231, float 0x4197782600000000, float %223
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %236 = fmul fast float %234, %110
  %237 = fmul fast float %235, %111
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 114688
  %241 = icmp ne i32 %240, 0
  %242 = select i1 %241, float %236, float 0.000000e+00
  %243 = select i1 %241, float %237, float 0.000000e+00
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %242, float %243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fmul fast float %245, 2.550000e+02
  %247 = fptoui float %246 to i32
  %248 = select i1 %241, i32 %247, i32 0
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 3
  %251 = and i32 %250, 3
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %250, 4
  %254 = icmp ne i32 %253, 0
  %255 = and i1 %252, %254
  br i1 %255, label %256, label %265

; <label>:256                                     ; preds = %0
  %257 = fmul fast float %145, %111
  %258 = fmul fast float %144, %110
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %258, float %257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fsub fast float 1.000000e+00, %260
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = fcmp fast olt float %261, %263
  br label %268

; <label>:265                                     ; preds = %0
  %266 = icmp eq i32 %253, 0
  %267 = and i1 %252, %266
  br label %268

; <label>:268                                     ; preds = %265, %256
  %269 = phi i1 [ %264, %256 ], [ %267, %265 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fmul fast float %271, 0x3FE3C6EF40000000
  %273 = frem fast float %110, 2.560000e+02
  %274 = frem fast float %111, 2.560000e+02
  %275 = fptoui float %273 to i32
  %276 = fptoui float %274 to i32
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fadd fast float %278, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = add i32 %56, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %293 = add i32 %56, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %307 = add i32 %56, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %56, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = mul i32 %58, 100
  %324 = add i32 %323, 28
  %325 = add i32 %323, 40
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %56, 172
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %340 = add i32 %56, 232
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %354 = add i32 %56, 52
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %56, 304
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = fmul fast float %386, %381
  %388 = fmul fast float %386, %382
  %389 = fmul fast float %386, %383
  %390 = add i32 %323, 48
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %56, 188
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
  %447 = add i32 %56, 248
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
  %461 = add i32 %56, 68
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = add i32 %56, 320
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fmul fast float %493, %488
  %495 = fmul fast float %493, %489
  %496 = fmul fast float %493, %490
  %497 = add i32 %323, 68
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %56, 204
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %554 = add i32 %56, 264
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %568 = add i32 %56, 84
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = add i32 %56, 336
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fmul fast float %600, %595
  %602 = fmul fast float %600, %596
  %603 = fmul fast float %600, %597
  %604 = add i32 %323, 88
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %645 = add i32 %56, 348
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 32
  %649 = icmp eq i32 %648, 0
  %650 = and i32 %647, 64
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %647, 128
  %653 = icmp eq i32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 2
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %673, label %658

; <label>:658                                     ; preds = %268
  %659 = add i32 %56, 524
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  %669 = fmul fast float %668, %94
  %670 = fmul fast float %665, %95
  %671 = fmul fast float %666, %96
  %672 = fmul fast float %667, %97
  br label %673

; <label>:673                                     ; preds = %658, %268
  %674 = phi float [ %97, %268 ], [ %672, %658 ]
  %675 = phi float [ %96, %268 ], [ %671, %658 ]
  %676 = phi float [ %95, %268 ], [ %670, %658 ]
  %677 = phi float [ %94, %268 ], [ %669, %658 ]
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 2
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %701, label %682

; <label>:682                                     ; preds = %673
  %683 = add i32 %56, 44
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 1
  %687 = icmp ne i32 %686, 0
  %688 = select i1 %687, float %676, float 1.000000e+00
  %689 = add i32 %56, 60
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %675, float 1.000000e+00
  %695 = add i32 %56, 76
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %708 = add i32 %56, 24
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %56, 28
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = or i32 %713, %710
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %1250, label %716

; <label>:716                                     ; preds = %701
  %717 = and i32 %710, 262144
  %718 = icmp ne i32 %717, 0
  %719 = select i1 %718, float %64, float 1.000000e+00
  %720 = select i1 %718, float %65, float 0.000000e+00
  %721 = select i1 %718, float %66, float 0.000000e+00
  %722 = select i1 %718, float %67, float 1.000000e+00
  %723 = select i1 %718, float %68, float %92
  %724 = select i1 %718, float %69, float %93
  %725 = add i32 %56, 284
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 16
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = fmul fast float %729, 0x3F50624DE0000000
  %731 = add i32 %56, 88
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 16
  %735 = and i32 %734, 255
  %736 = lshr i32 %733, 24
  %737 = add i32 %56, 292
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %56, 32
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %790 = add i32 %56, 228
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %820 = add i32 %56, 472
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %822, 0
  %824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %824, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = add i32 %56, 100
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 128
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %887, label %871

; <label>:871                                     ; preds = %865
  %872 = add i32 %56, 456
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 16
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %1091, label %893

; <label>:893                                     ; preds = %887
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %56, 408
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %898, 0
  %900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %900, %dx.types.Handle %106, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 512
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %926, label %918

; <label>:918                                     ; preds = %893
  %919 = add i32 %56, 492
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  br label %926

; <label>:926                                     ; preds = %918, %893
  %927 = phi float [ %925, %918 ], [ 1.000000e+00, %893 ]
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 33554432
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1038, label %932

; <label>:932                                     ; preds = %926
  %933 = add i32 %56, 224
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %935, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = add i32 %56, 228
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %961 = add i32 %56, 220
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 1
  %1098 = and i32 %1097, 1
  %1099 = icmp ne i32 %1098, 0
  %1100 = add i32 %56, 356
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 32
  %1104 = icmp ne i32 %1103, 0
  %1105 = and i1 %1099, %1104
  %1106 = select i1 %1105, float 1.000000e+00, float %1093
  %1107 = select i1 %1105, float 0x3FD3333340000000, float %1094
  %1108 = select i1 %1105, float 0x3FD3333340000000, float %1095
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 32
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1185, label %1113

; <label>:1113                                    ; preds = %1091
  %1114 = add i32 %56, 92
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %56, 424
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %106, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 67108864
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1181, label %1165

; <label>:1165                                    ; preds = %1113
  %1166 = add i32 %56, 280
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1190 = add i32 %56, 160
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 64
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1233, label %1200

; <label>:1200                                    ; preds = %1185
  %1201 = add i32 %56, 440
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 131072
  %1209 = icmp eq i32 %1208, 0
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %106, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = fmul fast float %1211, %286
  %1215 = fmul fast float %1212, %289
  %1216 = fmul fast float %1213, %292
  br i1 %1209, label %1223, label %1217

; <label>:1217                                    ; preds = %1200
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1228 = select i1 %269, float %1227, float %1224
  %1229 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = select i1 %269, float 0.000000e+00, float %1224
  %1231 = select i1 %269, float %1229, float %1225
  %1232 = select i1 %269, float 0.000000e+00, float %1226
  br label %1233

; <label>:1233                                    ; preds = %1223, %1185
  %1234 = phi float [ %1230, %1223 ], [ 0.000000e+00, %1185 ]
  %1235 = phi float [ %1231, %1223 ], [ 0.000000e+00, %1185 ]
  %1236 = phi float [ %1232, %1223 ], [ 0.000000e+00, %1185 ]
  %1237 = add i32 %56, 96
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = lshr i32 %1239, 8
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1246 = fmul fast float %1244, %1245
  %1247 = fadd fast float %1246, %1241
  %1248 = fmul fast float %1247, 0x3F70101020000000
  %1249 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  br label %1250

; <label>:1250                                    ; preds = %1233, %701
  %1251 = phi float [ 0.000000e+00, %701 ], [ %1187, %1233 ]
  %1252 = phi float [ 0.000000e+00, %701 ], [ %1188, %1233 ]
  %1253 = phi float [ 0.000000e+00, %701 ], [ %1234, %1233 ]
  %1254 = phi float [ 0.000000e+00, %701 ], [ %1235, %1233 ]
  %1255 = phi float [ 0.000000e+00, %701 ], [ %1236, %1233 ]
  %1256 = phi float [ 0.000000e+00, %701 ], [ %1106, %1233 ]
  %1257 = phi float [ 0.000000e+00, %701 ], [ %1107, %1233 ]
  %1258 = phi float [ 0.000000e+00, %701 ], [ %1108, %1233 ]
  %1259 = phi float [ 0.000000e+00, %701 ], [ %1092, %1233 ]
  %1260 = phi float [ 0.000000e+00, %701 ], [ %888, %1233 ]
  %1261 = phi float [ 0.000000e+00, %701 ], [ %1186, %1233 ]
  %1262 = phi float [ 0.000000e+00, %701 ], [ %1189, %1233 ]
  %1263 = phi float [ 0.000000e+00, %701 ], [ %1249, %1233 ]
  br i1 %649, label %1990, label %1264

; <label>:1264                                    ; preds = %1250
  %1265 = icmp ult i32 %707, 2
  %1266 = add i32 %56, 40
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %56, 44
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = or i32 %1271, %1268
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1990, label %1274

; <label>:1274                                    ; preds = %1264
  %1275 = and i32 %1268, 262144
  %1276 = icmp ne i32 %1275, 0
  %1277 = select i1 %1276, float %64, float 1.000000e+00
  %1278 = select i1 %1276, float %65, float 0.000000e+00
  %1279 = select i1 %1276, float %66, float 0.000000e+00
  %1280 = select i1 %1276, float %67, float 1.000000e+00
  %1281 = select i1 %1276, float %68, float %92
  %1282 = select i1 %1276, float %69, float %93
  %1283 = add i32 %56, 300
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = lshr i32 %1285, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = fmul fast float %1287, 0x3F50624DE0000000
  %1289 = add i32 %56, 104
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 16
  %1293 = and i32 %1292, 255
  %1294 = lshr i32 %1291, 24
  %1295 = add i32 %56, 308
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = lshr i32 %1297, 16
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = add i32 %56, 48
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 22
  %1306 = shl nuw nsw i32 %1305, 5
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = shl i32 %1304, 4
  %1309 = and i32 %1308, 32752
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = lshr i32 %1304, 7
  %1312 = and i32 %1311, 32752
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1316 = fmul fast float %1315, 1.000000e+03
  %1317 = fmul fast float %1316, %428
  %1318 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1319 = fadd fast float %1318, %416
  %1320 = fmul fast float %1316, %430
  %1321 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1322 = fadd fast float %1321, %417
  %1323 = fmul fast float %1288, %1316
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = fmul fast float %1324, 0x401921FB60000000
  %1326 = fadd fast float %1325, %1307
  %1327 = call float @dx.op.unary.f32(i32 13, float %1326)  ; Sin(value)
  %1328 = call float @dx.op.unary.f32(i32 12, float %1326)  ; Cos(value)
  %1329 = fsub fast float -0.000000e+00, %1327
  %1330 = fadd fast float %1281, -5.000000e-01
  %1331 = fadd fast float %1282, -5.000000e-01
  %1332 = fmul fast float %1299, %1330
  %1333 = fmul fast float %1301, %1331
  %1334 = fadd fast float %1332, 5.000000e-01
  %1335 = fadd fast float %1333, 5.000000e-01
  %1336 = fmul fast float %1310, %1334
  %1337 = fmul fast float %1313, %1335
  %1338 = fmul fast float %1328, %1336
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1337, float %1338)  ; FMad(a,b,c)
  %1340 = fmul fast float %1327, %1336
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1337, float %1340)  ; FMad(a,b,c)
  %1342 = fadd fast float %1319, %1339
  %1343 = fadd fast float %1322, %1341
  %1344 = icmp ugt i32 %1293, 1
  %1345 = icmp ugt i32 %1291, 33554431
  %1346 = or i1 %1345, %1344
  br i1 %1346, label %1347, label %1372

; <label>:1347                                    ; preds = %1274
  %1348 = add i32 %56, 244
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = lshr i32 %1350, 16
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = fmul fast float %1315, %1352
  %1354 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1355 = mul nuw nsw i32 %1293, %1294
  %1356 = uitofp i32 %1355 to float
  %1357 = fmul fast float %1354, %1356
  %1358 = call float @dx.op.unary.f32(i32 27, float %1357)  ; Round_ni(value)
  %1359 = fptoui float %1358 to i32
  %1360 = urem i32 %1359, %1293
  %1361 = udiv i32 %1359, %1294
  %1362 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1363 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1364 = uitofp i32 %1360 to float
  %1365 = uitofp i32 %1361 to float
  %1366 = fadd fast float %1362, %1364
  %1367 = fadd fast float %1363, %1365
  %1368 = uitofp i32 %1293 to float
  %1369 = uitofp i32 %1294 to float
  %1370 = fdiv fast float %1366, %1368
  %1371 = fdiv fast float %1367, %1369
  br label %1372

; <label>:1372                                    ; preds = %1347, %1274
  %1373 = phi float [ %1370, %1347 ], [ %1342, %1274 ]
  %1374 = phi float [ %1371, %1347 ], [ %1343, %1274 ]
  %1375 = and i32 %1268, 256
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1423, label %1377

; <label>:1377                                    ; preds = %1372
  %1378 = add i32 %56, 476
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = add i32 %1380, 0
  %1382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1382, %dx.types.Handle %107, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = add i32 %56, 116
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = shl i32 %1387, 4
  %1389 = and i32 %1388, 32752
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = lshr i32 %1387, 7
  %1392 = and i32 %1391, 32752
  %1393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1392)  ; LegacyF16ToF32(value)
  %1394 = fsub fast float 1.000000e+00, %704
  %1395 = call float @dx.op.binary.f32(i32 35, float %1394, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1396 = bitcast float %704 to i32
  %1397 = sitofp i32 %1396 to float
  %1398 = fadd fast float %1397, 0xC1CFBF8940000000
  %1399 = fmul fast float %1393, %1398
  %1400 = fadd fast float %1399, 0x41CFBF8940000000
  %1401 = fptosi float %1400 to i32
  %1402 = bitcast i32 %1401 to float
  %1403 = bitcast float %1395 to i32
  %1404 = sitofp i32 %1403 to float
  %1405 = fadd fast float %1404, 0xC1CFBF8940000000
  %1406 = fmul fast float %1405, %1393
  %1407 = fadd fast float %1406, 0x41CFBF8940000000
  %1408 = fptosi float %1407 to i32
  %1409 = bitcast i32 %1408 to float
  %1410 = fmul fast float %1402, %1390
  %1411 = fmul fast float %1409, %1390
  %1412 = fsub fast float %1395, %1410
  %1413 = fadd fast float %1411, %1395
  %1414 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1415 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1416 = fsub fast float %1384, %1414
  %1417 = fsub fast float %1415, %1414
  %1418 = bitcast float %1417 to i32
  %1419 = sub nsw i32 2129859010, %1418
  %1420 = bitcast i32 %1419 to float
  %1421 = fmul fast float %1420, %1416
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  br label %1423

; <label>:1423                                    ; preds = %1377, %1372
  %1424 = phi float [ %1422, %1377 ], [ %704, %1372 ]
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 128
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1445, label %1429

; <label>:1429                                    ; preds = %1423
  %1430 = add i32 %56, 460
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = add i32 %1432, 0
  %1434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1434, %dx.types.Handle %107, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 524288
  %1440 = icmp ne i32 %1439, 0
  %1441 = fcmp fast ogt float %1436, 0x3FE0101020000000
  %1442 = select i1 %1441, float 1.000000e+00, float 0.000000e+00
  %1443 = select i1 %1440, float %1442, float %1436
  %1444 = fmul fast float %1443, %1424
  br label %1445

; <label>:1445                                    ; preds = %1429, %1423
  %1446 = phi float [ %1444, %1429 ], [ %1424, %1423 ]
  %1447 = fcmp fast ult float %1446, 0x3F70101020000000
  br i1 %1447, label %1990, label %1448

; <label>:1448                                    ; preds = %1445
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 16
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1651, label %1453

; <label>:1453                                    ; preds = %1448
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %56, 412
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1458, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1460, %dx.types.Handle %106, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.ResRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.ResRet.f32 %1461, 2
  %1465 = extractvalue %dx.types.ResRet.f32 %1461, 3
  %1466 = and i32 %1455, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = lshr i32 %1455, 8
  %1469 = and i32 %1468, 255
  %1470 = uitofp i32 %1469 to float
  %1471 = fmul fast float %1465, %1467
  %1472 = fadd fast float %1471, %1470
  %1473 = fmul fast float %1472, 0x3F70101000000000
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 512
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1486, label %1478

; <label>:1478                                    ; preds = %1453
  %1479 = add i32 %56, 496
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %107, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  br label %1486

; <label>:1486                                    ; preds = %1478, %1453
  %1487 = phi float [ %1485, %1478 ], [ 1.000000e+00, %1453 ]
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 33554432
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1598, label %1492

; <label>:1492                                    ; preds = %1486
  %1493 = add i32 %56, 240
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = lshr i32 %1495, 16
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = add i32 %56, 244
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 65535
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = lshr i32 %1506, 24
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1508, 0x3F70101020000000
  %1510 = and i32 %1506, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101020000000
  %1513 = lshr i32 %1506, 8
  %1514 = and i32 %1513, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = lshr i32 %1506, 16
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = add i32 %56, 236
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = lshr i32 %1523, 24
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = and i32 %1523, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1523, 8
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = lshr i32 %1523, 16
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = bitcast float %1462 to i32
  %1539 = ashr i32 %1538, 1
  %1540 = sub nsw i32 1597463174, %1539
  %1541 = bitcast i32 %1540 to float
  %1542 = fmul fast float %1462, 5.000000e-01
  %1543 = fmul fast float %1541, %1541
  %1544 = fmul fast float %1543, %1542
  %1545 = fsub fast float 1.500000e+00, %1544
  %1546 = fmul fast float %1541, %1462
  %1547 = fmul fast float %1546, %1545
  %1548 = bitcast float %1463 to i32
  %1549 = ashr i32 %1548, 1
  %1550 = sub nsw i32 1597463174, %1549
  %1551 = bitcast i32 %1550 to float
  %1552 = fmul fast float %1463, 5.000000e-01
  %1553 = fmul fast float %1551, %1551
  %1554 = fmul fast float %1553, %1552
  %1555 = fsub fast float 1.500000e+00, %1554
  %1556 = fmul fast float %1551, %1463
  %1557 = fmul fast float %1556, %1555
  %1558 = bitcast float %1464 to i32
  %1559 = ashr i32 %1558, 1
  %1560 = sub nsw i32 1597463174, %1559
  %1561 = bitcast i32 %1560 to float
  %1562 = fmul fast float %1464, 5.000000e-01
  %1563 = fmul fast float %1561, %1561
  %1564 = fmul fast float %1563, %1562
  %1565 = fsub fast float 1.500000e+00, %1564
  %1566 = fmul fast float %1561, %1464
  %1567 = fmul fast float %1566, %1565
  %1568 = fsub fast float %1547, %1529
  %1569 = fsub fast float %1557, %1533
  %1570 = fsub fast float %1567, %1537
  %1571 = fmul fast float %1568, %1497
  %1572 = fmul fast float %1569, %1499
  %1573 = fmul fast float %1570, %1504
  %1574 = fadd fast float %1571, %1512
  %1575 = fadd fast float %1572, %1516
  %1576 = fadd fast float %1573, %1520
  %1577 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1578 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1579 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1580 = fmul fast float %1577, %1577
  %1581 = fmul fast float %1578, %1578
  %1582 = fmul fast float %1579, %1579
  %1583 = fsub fast float %1580, %1462
  %1584 = fsub fast float %1581, %1463
  %1585 = fsub fast float %1582, %1464
  %1586 = fmul fast float %1583, %1487
  %1587 = fmul fast float %1584, %1487
  %1588 = fmul fast float %1585, %1487
  %1589 = fadd fast float %1586, %1462
  %1590 = fadd fast float %1587, %1463
  %1591 = fadd fast float %1588, %1464
  %1592 = fadd fast float %1509, %1473
  %1593 = fsub fast float %1592, %1526
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = fsub fast float %1594, %1473
  %1596 = fmul fast float %1595, %1487
  %1597 = fadd fast float %1596, %1473
  br label %1651

; <label>:1598                                    ; preds = %1486
  %1599 = and i32 %1489, 134217728
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1635, label %1601

; <label>:1601                                    ; preds = %1598
  %1602 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1603 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1604 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fadd fast float %1603, -5.000000e-01
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fmul fast float %1605, %1487
  %1609 = fmul fast float %1606, %1487
  %1610 = fmul fast float %1607, %1487
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = fadd fast float %1609, 5.000000e-01
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %1463)  ; Sqrt(value)
  %1616 = call float @dx.op.unary.f32(i32 24, float %1464)  ; Sqrt(value)
  %1617 = fmul fast float %1611, 2.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1618, %1614
  %1620 = fadd fast float %1619, %1617
  %1621 = fmul fast float %1620, %1614
  %1622 = fmul fast float %1612, 2.000000e+00
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = fmul fast float %1623, %1615
  %1625 = fadd fast float %1624, %1622
  %1626 = fmul fast float %1625, %1615
  %1627 = fmul fast float %1613, 2.000000e+00
  %1628 = fsub fast float 1.000000e+00, %1627
  %1629 = fmul fast float %1628, %1616
  %1630 = fadd fast float %1629, %1627
  %1631 = fmul fast float %1630, %1616
  %1632 = fmul fast float %1621, %1621
  %1633 = fmul fast float %1626, %1626
  %1634 = fmul fast float %1631, %1631
  br label %1651

; <label>:1635                                    ; preds = %1598
  %1636 = fmul fast float %404, %404
  %1637 = fmul fast float %405, %405
  %1638 = fmul fast float %406, %406
  %1639 = fadd fast float %1636, -1.000000e+00
  %1640 = fadd fast float %1637, -1.000000e+00
  %1641 = fadd fast float %1638, -1.000000e+00
  %1642 = fmul fast float %1487, %1639
  %1643 = fmul fast float %1487, %1640
  %1644 = fmul fast float %1487, %1641
  %1645 = fadd fast float %1642, 1.000000e+00
  %1646 = fadd fast float %1643, 1.000000e+00
  %1647 = fadd fast float %1644, 1.000000e+00
  %1648 = fmul fast float %1645, %1462
  %1649 = fmul fast float %1646, %1463
  %1650 = fmul fast float %1647, %1464
  br label %1651

; <label>:1651                                    ; preds = %1635, %1601, %1492, %1448
  %1652 = phi float [ %1597, %1492 ], [ %1473, %1601 ], [ %1473, %1635 ], [ 0x3FA23C0BE0000000, %1448 ]
  %1653 = phi float [ %1589, %1492 ], [ %1632, %1601 ], [ %1648, %1635 ], [ 1.000000e+00, %1448 ]
  %1654 = phi float [ %1590, %1492 ], [ %1633, %1601 ], [ %1649, %1635 ], [ 1.000000e+00, %1448 ]
  %1655 = phi float [ %1591, %1492 ], [ %1634, %1601 ], [ %1650, %1635 ], [ 1.000000e+00, %1448 ]
  %1656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.i32 %1656, 1
  %1658 = and i32 %1657, 1
  %1659 = icmp ne i32 %1658, 0
  %1660 = add i32 %56, 356
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = and i32 %1662, 32
  %1664 = icmp ne i32 %1663, 0
  %1665 = and i1 %1659, %1664
  %1666 = select i1 %1665, float 1.000000e+00, float %1653
  %1667 = select i1 %1665, float 0x3FD3333340000000, float %1654
  %1668 = select i1 %1665, float 0x3FD3333340000000, float %1655
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 32
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %1745, label %1673

; <label>:1673                                    ; preds = %1651
  %1674 = add i32 %56, 108
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = add i32 %56, 428
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = add i32 %1679, 0
  %1681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1681, %dx.types.Handle %106, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.ResRet.f32 %1682, 1
  %1685 = extractvalue %dx.types.ResRet.f32 %1682, 2
  %1686 = extractvalue %dx.types.ResRet.f32 %1682, 3
  %1687 = and i32 %1676, 255
  %1688 = uitofp i32 %1687 to float
  %1689 = lshr i32 %1676, 8
  %1690 = and i32 %1689, 255
  %1691 = uitofp i32 %1690 to float
  %1692 = lshr i32 %1676, 16
  %1693 = and i32 %1692, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = fmul fast float %1694, 0x3F70101000000000
  %1696 = fmul fast float %1683, %1688
  %1697 = fadd fast float %1696, %1691
  %1698 = fmul fast float %1697, 0x3F70101000000000
  %1699 = fadd fast float %1684, -5.000000e-01
  %1700 = fadd fast float %1686, -5.000000e-01
  %1701 = fmul fast float %1699, %1695
  %1702 = fmul fast float %1700, %1695
  %1703 = fadd fast float %1701, 5.000000e-01
  %1704 = fadd fast float %1702, 5.000000e-01
  %1705 = fmul fast float %1703, 2.000000e+00
  %1706 = fadd fast float %1705, -1.000000e+00
  %1707 = fmul fast float %1704, 2.000000e+00
  %1708 = fadd fast float %1707, -1.000000e+00
  %1709 = fadd fast float %1706, %1708
  %1710 = fmul fast float %1709, 5.000000e-01
  %1711 = fsub fast float %1706, %1708
  %1712 = fmul fast float %1711, 5.000000e-01
  %1713 = call float @dx.op.unary.f32(i32 6, float %1710)  ; FAbs(value)
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = call float @dx.op.unary.f32(i32 6, float %1712)  ; FAbs(value)
  %1716 = fsub fast float %1714, %1715
  %1717 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1712, float %1716, float %1710, float %1712, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %1718 = call float @dx.op.unary.f32(i32 25, float %1717)  ; Rsqrt(value)
  %1719 = fmul fast float %1710, %1718
  %1720 = fmul fast float %1712, %1718
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = and i32 %1722, 67108864
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1741, label %1725

; <label>:1725                                    ; preds = %1673
  %1726 = add i32 %56, 296
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 65535
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.i32 %1731, 0
  %1733 = and i32 %1732, 65535
  %1734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1733)  ; LegacyF16ToF32(value)
  %1735 = lshr i32 %1728, 16
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = fsub fast float %1698, %1736
  %1738 = fmul fast float %1737, %1730
  %1739 = fadd fast float %1738, %1734
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  br label %1741

; <label>:1741                                    ; preds = %1725, %1673
  %1742 = phi float [ %1740, %1725 ], [ %1698, %1673 ]
  %1743 = call float @dx.op.dot2.f32(i32 54, float %1719, float %1720, float %1277, float %1278)  ; Dot2(ax,ay,bx,by)
  %1744 = call float @dx.op.dot2.f32(i32 54, float %1719, float %1720, float %1279, float %1280)  ; Dot2(ax,ay,bx,by)
  br label %1745

; <label>:1745                                    ; preds = %1741, %1651
  %1746 = phi float [ %1742, %1741 ], [ 0x3FD6666660000000, %1651 ]
  %1747 = phi float [ %1743, %1741 ], [ 0.000000e+00, %1651 ]
  %1748 = phi float [ %1744, %1741 ], [ 0.000000e+00, %1651 ]
  %1749 = phi float [ %1685, %1741 ], [ 1.000000e+00, %1651 ]
  %1750 = add i32 %56, 176
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = lshr i32 %1752, 22
  %1754 = shl nuw nsw i32 %1753, 5
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 64
  %1759 = icmp eq i32 %1758, 0
  br i1 %1759, label %1793, label %1760

; <label>:1760                                    ; preds = %1745
  %1761 = add i32 %56, 444
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = add i32 %1763, 0
  %1765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 131072
  %1769 = icmp eq i32 %1768, 0
  %1770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1765, %dx.types.Handle %106, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = fmul fast float %387, %1771
  %1775 = fmul fast float %388, %1772
  %1776 = fmul fast float %389, %1773
  br i1 %1769, label %1783, label %1777

; <label>:1777                                    ; preds = %1760
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = fmul fast float %1779, %1774
  %1781 = fmul fast float %1779, %1775
  %1782 = fmul fast float %1779, %1776
  br label %1783

; <label>:1783                                    ; preds = %1777, %1760
  %1784 = phi float [ %1780, %1777 ], [ %1774, %1760 ]
  %1785 = phi float [ %1781, %1777 ], [ %1775, %1760 ]
  %1786 = phi float [ %1782, %1777 ], [ %1776, %1760 ]
  %1787 = fmul fast float %1784, %1755
  %1788 = select i1 %269, float %1787, float %1784
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1788, float %1785, float %1786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = select i1 %269, float 0.000000e+00, float %1784
  %1791 = select i1 %269, float %1789, float %1785
  %1792 = select i1 %269, float 0.000000e+00, float %1786
  br label %1793

; <label>:1793                                    ; preds = %1783, %1745
  %1794 = phi float [ %1790, %1783 ], [ 0.000000e+00, %1745 ]
  %1795 = phi float [ %1791, %1783 ], [ 0.000000e+00, %1745 ]
  %1796 = phi float [ %1792, %1783 ], [ 0.000000e+00, %1745 ]
  %1797 = add i32 %56, 112
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = and i32 %1799, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = lshr i32 %1799, 8
  %1803 = and i32 %1802, 255
  %1804 = uitofp i32 %1803 to float
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1666, float %1667, float %1668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = fmul fast float %1804, %1805
  %1807 = fadd fast float %1806, %1801
  %1808 = fmul fast float %1807, 0x3F70101020000000
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  br i1 %1265, label %1810, label %1818

; <label>:1810                                    ; preds = %1793
  %1811 = fsub fast float 1.000000e+00, %1446
  %1812 = fmul fast float %1811, %1256
  %1813 = fmul fast float %1811, %1257
  %1814 = fmul fast float %1811, %1258
  %1815 = fmul fast float %1811, %1253
  %1816 = fmul fast float %1811, %1254
  %1817 = fmul fast float %1811, %1255
  br label %1818

; <label>:1818                                    ; preds = %1810, %1793
  %1819 = phi float [ %1815, %1810 ], [ %1253, %1793 ]
  %1820 = phi float [ %1816, %1810 ], [ %1254, %1793 ]
  %1821 = phi float [ %1817, %1810 ], [ %1255, %1793 ]
  %1822 = phi float [ %1812, %1810 ], [ %1256, %1793 ]
  %1823 = phi float [ %1813, %1810 ], [ %1257, %1793 ]
  %1824 = phi float [ %1814, %1810 ], [ %1258, %1793 ]
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 3
  %1828 = icmp eq i32 %1827, 3
  br i1 %1828, label %1907, label %1829

; <label>:1829                                    ; preds = %1818
  %1830 = and i32 %1826, 16
  %1831 = icmp ne i32 %1830, 0
  %1832 = select i1 %1831, float %1446, float 0.000000e+00
  %1833 = icmp eq i32 %1827, 0
  br i1 %1833, label %1834, label %1862

; <label>:1834                                    ; preds = %1829
  %1835 = and i32 %1826, 64
  %1836 = icmp ne i32 %1835, 0
  %1837 = select i1 %1836, float %1446, float 0.000000e+00
  %1838 = fsub fast float %1666, %1822
  %1839 = fsub fast float %1667, %1823
  %1840 = fsub fast float %1668, %1824
  %1841 = fmul fast float %1832, %1838
  %1842 = fmul fast float %1832, %1839
  %1843 = fmul fast float %1832, %1840
  %1844 = fadd fast float %1841, %1822
  %1845 = fadd fast float %1842, %1823
  %1846 = fadd fast float %1843, %1824
  %1847 = fsub fast float %1652, %1259
  %1848 = fmul fast float %1832, %1847
  %1849 = fadd fast float %1848, %1259
  %1850 = fsub fast float %1794, %1819
  %1851 = fsub fast float %1795, %1820
  %1852 = fsub fast float %1796, %1821
  %1853 = fmul fast float %1837, %1850
  %1854 = fmul fast float %1837, %1851
  %1855 = fmul fast float %1837, %1852
  %1856 = fadd fast float %1853, %1819
  %1857 = fadd fast float %1854, %1820
  %1858 = fadd fast float %1855, %1821
  %1859 = fsub fast float %1809, %1263
  %1860 = fmul fast float %1832, %1859
  %1861 = fadd fast float %1860, %1263
  br label %1907

; <label>:1862                                    ; preds = %1829
  %1863 = icmp eq i32 %1827, 1
  br i1 %1863, label %1864, label %1877

; <label>:1864                                    ; preds = %1862
  %1865 = fadd fast float %1666, -1.000000e+00
  %1866 = fadd fast float %1667, -1.000000e+00
  %1867 = fadd fast float %1668, -1.000000e+00
  %1868 = fmul fast float %1832, %1865
  %1869 = fmul fast float %1832, %1866
  %1870 = fmul fast float %1832, %1867
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fadd fast float %1869, 1.000000e+00
  %1873 = fadd fast float %1870, 1.000000e+00
  %1874 = fmul fast float %1871, %1822
  %1875 = fmul fast float %1872, %1823
  %1876 = fmul fast float %1873, %1824
  br label %1907

; <label>:1877                                    ; preds = %1862
  %1878 = icmp eq i32 %1827, 2
  br i1 %1878, label %1879, label %1907

; <label>:1879                                    ; preds = %1877
  %1880 = call float @dx.op.unary.f32(i32 24, float %1666)  ; Sqrt(value)
  %1881 = call float @dx.op.unary.f32(i32 24, float %1667)  ; Sqrt(value)
  %1882 = call float @dx.op.unary.f32(i32 24, float %1668)  ; Sqrt(value)
  %1883 = fadd fast float %1880, -5.000000e-01
  %1884 = fadd fast float %1881, -5.000000e-01
  %1885 = fadd fast float %1882, -5.000000e-01
  %1886 = fmul fast float %1883, %1832
  %1887 = fmul fast float %1884, %1832
  %1888 = fmul fast float %1885, %1832
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fmul fast float %1889, 2.000000e+00
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = fmul fast float %1893, %1822
  %1895 = fadd fast float %1894, %1892
  %1896 = fmul fast float %1895, %1822
  %1897 = fmul fast float %1890, 2.000000e+00
  %1898 = fsub fast float 1.000000e+00, %1897
  %1899 = fmul fast float %1898, %1823
  %1900 = fadd fast float %1899, %1897
  %1901 = fmul fast float %1900, %1823
  %1902 = fmul fast float %1891, 2.000000e+00
  %1903 = fsub fast float 1.000000e+00, %1902
  %1904 = fmul fast float %1903, %1824
  %1905 = fadd fast float %1904, %1902
  %1906 = fmul fast float %1905, %1824
  br label %1907

; <label>:1907                                    ; preds = %1879, %1877, %1864, %1834, %1818
  %1908 = phi float [ %1819, %1818 ], [ %1819, %1879 ], [ %1819, %1877 ], [ %1819, %1864 ], [ %1856, %1834 ]
  %1909 = phi float [ %1820, %1818 ], [ %1820, %1879 ], [ %1820, %1877 ], [ %1820, %1864 ], [ %1857, %1834 ]
  %1910 = phi float [ %1821, %1818 ], [ %1821, %1879 ], [ %1821, %1877 ], [ %1821, %1864 ], [ %1858, %1834 ]
  %1911 = phi float [ %1822, %1818 ], [ %1896, %1879 ], [ %1822, %1877 ], [ %1874, %1864 ], [ %1844, %1834 ]
  %1912 = phi float [ %1823, %1818 ], [ %1901, %1879 ], [ %1823, %1877 ], [ %1875, %1864 ], [ %1845, %1834 ]
  %1913 = phi float [ %1824, %1818 ], [ %1906, %1879 ], [ %1824, %1877 ], [ %1876, %1864 ], [ %1846, %1834 ]
  %1914 = phi float [ %1259, %1818 ], [ %1259, %1879 ], [ %1259, %1877 ], [ %1259, %1864 ], [ %1849, %1834 ]
  %1915 = phi float [ %1263, %1818 ], [ %1263, %1879 ], [ %1263, %1877 ], [ %1263, %1864 ], [ %1861, %1834 ]
  %1916 = and i32 %1826, 12
  %1917 = icmp eq i32 %1916, 12
  br i1 %1917, label %1990, label %1918

; <label>:1918                                    ; preds = %1907
  %1919 = and i32 %1826, 2097184
  %1920 = icmp eq i32 %1919, 2097184
  %1921 = select i1 %1920, float %1446, float 0.000000e+00
  %1922 = and i32 %1826, 4194336
  %1923 = icmp eq i32 %1922, 4194336
  %1924 = select i1 %1923, float %1446, float 0.000000e+00
  %1925 = and i32 %1826, 8388640
  %1926 = icmp eq i32 %1925, 8388640
  %1927 = select i1 %1926, float %1446, float 0.000000e+00
  %1928 = icmp eq i32 %1916, 0
  br i1 %1928, label %1929, label %1942

; <label>:1929                                    ; preds = %1918
  %1930 = fsub fast float %1747, %1251
  %1931 = fsub fast float %1748, %1252
  %1932 = fmul fast float %1921, %1930
  %1933 = fmul fast float %1921, %1931
  %1934 = fadd fast float %1932, %1251
  %1935 = fadd fast float %1933, %1252
  %1936 = fsub fast float %1749, %1262
  %1937 = fmul fast float %1924, %1936
  %1938 = fadd fast float %1937, %1262
  %1939 = fsub fast float %1746, %1261
  %1940 = fmul fast float %1927, %1939
  %1941 = fadd fast float %1940, %1261
  br label %1990

; <label>:1942                                    ; preds = %1918
  %1943 = icmp eq i32 %1916, 4
  br i1 %1943, label %1944, label %1976

; <label>:1944                                    ; preds = %1942
  %1945 = fmul fast float %1921, %1747
  %1946 = fmul fast float %1921, %1748
  %1947 = fadd fast float %1945, %1251
  %1948 = fadd fast float %1946, %1252
  %1949 = call float @dx.op.binary.f32(i32 36, float %1262, float %1749)  ; FMin(a,b)
  %1950 = fsub fast float %1949, %1262
  %1951 = fmul fast float %1950, %1924
  %1952 = fadd fast float %1951, %1262
  %1953 = fadd fast float %1746, %1261
  %1954 = fmul fast float %1953, 0x3FF337FAE0000000
  %1955 = fmul fast float %1261, %1261
  %1956 = fmul fast float %1746, %1746
  %1957 = fadd fast float %1956, %1955
  %1958 = fmul fast float %1957, 0x3FE5152B00000000
  %1959 = fmul fast float %1261, 0xBFCC1F85E0000000
  %1960 = fmul fast float %1959, %1746
  %1961 = fadd fast float %1960, 0xBFE1363700000000
  %1962 = fadd fast float %1961, %1954
  %1963 = fsub fast float %1962, %1958
  %1964 = fmul fast float %1953, 0x3FBA6F0D00000000
  %1965 = fmul fast float %1957, 0x3FD0432880000000
  %1966 = fmul fast float %1261, 0xBFEF110800000000
  %1967 = fmul fast float %1966, %1746
  %1968 = fadd fast float %1967, 1.000000e+00
  %1969 = fsub fast float %1968, %1964
  %1970 = fadd fast float %1969, %1965
  %1971 = fdiv fast float %1963, %1970
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = fsub fast float %1972, %1261
  %1974 = fmul fast float %1973, %1927
  %1975 = fadd fast float %1974, %1261
  br label %1990

; <label>:1976                                    ; preds = %1942
  %1977 = icmp eq i32 %1916, 8
  br i1 %1977, label %1978, label %1990

; <label>:1978                                    ; preds = %1976
  %1979 = fmul fast float %1921, %1747
  %1980 = fmul fast float %1921, %1748
  %1981 = fadd fast float %1979, %1251
  %1982 = fadd fast float %1980, %1252
  %1983 = call float @dx.op.binary.f32(i32 36, float %1262, float %1749)  ; FMin(a,b)
  %1984 = fsub fast float %1983, %1262
  %1985 = fmul fast float %1984, %1924
  %1986 = fadd fast float %1985, %1262
  %1987 = fsub fast float %1746, %1261
  %1988 = fmul fast float %1927, %1987
  %1989 = fadd fast float %1988, %1261
  br label %1990

; <label>:1990                                    ; preds = %1978, %1976, %1944, %1929, %1907, %1445, %1264, %1250
  %1991 = phi float [ %1251, %1907 ], [ %1251, %1445 ], [ %1251, %1250 ], [ %1981, %1978 ], [ %1251, %1976 ], [ %1947, %1944 ], [ %1934, %1929 ], [ %1251, %1264 ]
  %1992 = phi float [ %1252, %1907 ], [ %1252, %1445 ], [ %1252, %1250 ], [ %1982, %1978 ], [ %1252, %1976 ], [ %1948, %1944 ], [ %1935, %1929 ], [ %1252, %1264 ]
  %1993 = phi float [ %1908, %1907 ], [ %1253, %1445 ], [ %1253, %1250 ], [ %1908, %1978 ], [ %1908, %1976 ], [ %1908, %1944 ], [ %1908, %1929 ], [ %1253, %1264 ]
  %1994 = phi float [ %1909, %1907 ], [ %1254, %1445 ], [ %1254, %1250 ], [ %1909, %1978 ], [ %1909, %1976 ], [ %1909, %1944 ], [ %1909, %1929 ], [ %1254, %1264 ]
  %1995 = phi float [ %1910, %1907 ], [ %1255, %1445 ], [ %1255, %1250 ], [ %1910, %1978 ], [ %1910, %1976 ], [ %1910, %1944 ], [ %1910, %1929 ], [ %1255, %1264 ]
  %1996 = phi float [ %1911, %1907 ], [ %1256, %1445 ], [ %1256, %1250 ], [ %1911, %1978 ], [ %1911, %1976 ], [ %1911, %1944 ], [ %1911, %1929 ], [ %1256, %1264 ]
  %1997 = phi float [ %1912, %1907 ], [ %1257, %1445 ], [ %1257, %1250 ], [ %1912, %1978 ], [ %1912, %1976 ], [ %1912, %1944 ], [ %1912, %1929 ], [ %1257, %1264 ]
  %1998 = phi float [ %1913, %1907 ], [ %1258, %1445 ], [ %1258, %1250 ], [ %1913, %1978 ], [ %1913, %1976 ], [ %1913, %1944 ], [ %1913, %1929 ], [ %1258, %1264 ]
  %1999 = phi float [ %1914, %1907 ], [ %1259, %1445 ], [ %1259, %1250 ], [ %1914, %1978 ], [ %1914, %1976 ], [ %1914, %1944 ], [ %1914, %1929 ], [ %1259, %1264 ]
  %2000 = phi float [ %1261, %1907 ], [ %1261, %1445 ], [ %1261, %1250 ], [ %1989, %1978 ], [ %1261, %1976 ], [ %1975, %1944 ], [ %1941, %1929 ], [ %1261, %1264 ]
  %2001 = phi float [ %1262, %1907 ], [ %1262, %1445 ], [ %1262, %1250 ], [ %1986, %1978 ], [ %1262, %1976 ], [ %1952, %1944 ], [ %1938, %1929 ], [ %1262, %1264 ]
  %2002 = phi float [ %1915, %1907 ], [ %1263, %1445 ], [ %1263, %1250 ], [ %1915, %1978 ], [ %1915, %1976 ], [ %1915, %1944 ], [ %1915, %1929 ], [ %1263, %1264 ]
  br i1 %651, label %2729, label %2003

; <label>:2003                                    ; preds = %1990
  %2004 = icmp ult i32 %707, 3
  %2005 = add i32 %56, 56
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = add i32 %56, 60
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = or i32 %2010, %2007
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2729, label %2013

; <label>:2013                                    ; preds = %2003
  %2014 = and i32 %2007, 262144
  %2015 = icmp ne i32 %2014, 0
  %2016 = select i1 %2015, float %64, float 1.000000e+00
  %2017 = select i1 %2015, float %65, float 0.000000e+00
  %2018 = select i1 %2015, float %66, float 0.000000e+00
  %2019 = select i1 %2015, float %67, float 1.000000e+00
  %2020 = select i1 %2015, float %68, float %92
  %2021 = select i1 %2015, float %69, float %93
  %2022 = add i32 %56, 316
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = lshr i32 %2024, 16
  %2026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2025)  ; LegacyF16ToF32(value)
  %2027 = fmul fast float %2026, 0x3F50624DE0000000
  %2028 = add i32 %56, 120
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 16
  %2032 = and i32 %2031, 255
  %2033 = lshr i32 %2030, 24
  %2034 = add i32 %56, 324
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 65535
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = lshr i32 %2036, 16
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = add i32 %56, 64
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = lshr i32 %2043, 22
  %2045 = shl nuw nsw i32 %2044, 5
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = shl i32 %2043, 4
  %2048 = and i32 %2047, 32752
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = lshr i32 %2043, 7
  %2051 = and i32 %2050, 32752
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2055 = fmul fast float %2054, 1.000000e+03
  %2056 = fmul fast float %2055, %535
  %2057 = call float @dx.op.unary.f32(i32 22, float %2056)  ; Frc(value)
  %2058 = fadd fast float %2057, %523
  %2059 = fmul fast float %2055, %537
  %2060 = call float @dx.op.unary.f32(i32 22, float %2059)  ; Frc(value)
  %2061 = fadd fast float %2060, %524
  %2062 = fmul fast float %2027, %2055
  %2063 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2064 = fmul fast float %2063, 0x401921FB60000000
  %2065 = fadd fast float %2064, %2046
  %2066 = call float @dx.op.unary.f32(i32 13, float %2065)  ; Sin(value)
  %2067 = call float @dx.op.unary.f32(i32 12, float %2065)  ; Cos(value)
  %2068 = fsub fast float -0.000000e+00, %2066
  %2069 = fadd fast float %2020, -5.000000e-01
  %2070 = fadd fast float %2021, -5.000000e-01
  %2071 = fmul fast float %2038, %2069
  %2072 = fmul fast float %2040, %2070
  %2073 = fadd fast float %2071, 5.000000e-01
  %2074 = fadd fast float %2072, 5.000000e-01
  %2075 = fmul fast float %2049, %2073
  %2076 = fmul fast float %2052, %2074
  %2077 = fmul fast float %2067, %2075
  %2078 = call float @dx.op.tertiary.f32(i32 46, float %2068, float %2076, float %2077)  ; FMad(a,b,c)
  %2079 = fmul fast float %2066, %2075
  %2080 = call float @dx.op.tertiary.f32(i32 46, float %2067, float %2076, float %2079)  ; FMad(a,b,c)
  %2081 = fadd fast float %2058, %2078
  %2082 = fadd fast float %2061, %2080
  %2083 = icmp ugt i32 %2032, 1
  %2084 = icmp ugt i32 %2030, 33554431
  %2085 = or i1 %2084, %2083
  br i1 %2085, label %2086, label %2111

; <label>:2086                                    ; preds = %2013
  %2087 = add i32 %56, 260
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = lshr i32 %2089, 16
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = fmul fast float %2054, %2091
  %2093 = call float @dx.op.unary.f32(i32 22, float %2092)  ; Frc(value)
  %2094 = mul nuw nsw i32 %2032, %2033
  %2095 = uitofp i32 %2094 to float
  %2096 = fmul fast float %2093, %2095
  %2097 = call float @dx.op.unary.f32(i32 27, float %2096)  ; Round_ni(value)
  %2098 = fptoui float %2097 to i32
  %2099 = urem i32 %2098, %2032
  %2100 = udiv i32 %2098, %2033
  %2101 = call float @dx.op.unary.f32(i32 22, float %2081)  ; Frc(value)
  %2102 = call float @dx.op.unary.f32(i32 22, float %2082)  ; Frc(value)
  %2103 = uitofp i32 %2099 to float
  %2104 = uitofp i32 %2100 to float
  %2105 = fadd fast float %2101, %2103
  %2106 = fadd fast float %2102, %2104
  %2107 = uitofp i32 %2032 to float
  %2108 = uitofp i32 %2033 to float
  %2109 = fdiv fast float %2105, %2107
  %2110 = fdiv fast float %2106, %2108
  br label %2111

; <label>:2111                                    ; preds = %2086, %2013
  %2112 = phi float [ %2109, %2086 ], [ %2081, %2013 ]
  %2113 = phi float [ %2110, %2086 ], [ %2082, %2013 ]
  %2114 = and i32 %2007, 256
  %2115 = icmp eq i32 %2114, 0
  br i1 %2115, label %2162, label %2116

; <label>:2116                                    ; preds = %2111
  %2117 = add i32 %56, 480
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = add i32 %2119, 0
  %2121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2121, %dx.types.Handle %107, float %2112, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = add i32 %56, 132
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = shl i32 %2126, 4
  %2128 = and i32 %2127, 32752
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = lshr i32 %2126, 7
  %2131 = and i32 %2130, 32752
  %2132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2131)  ; LegacyF16ToF32(value)
  %2133 = fsub fast float 1.000000e+00, %703
  %2134 = call float @dx.op.binary.f32(i32 35, float %2133, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2135 = bitcast float %703 to i32
  %2136 = sitofp i32 %2135 to float
  %2137 = fadd fast float %2136, 0xC1CFBF8940000000
  %2138 = fmul fast float %2132, %2137
  %2139 = fadd fast float %2138, 0x41CFBF8940000000
  %2140 = fptosi float %2139 to i32
  %2141 = bitcast i32 %2140 to float
  %2142 = bitcast float %2134 to i32
  %2143 = sitofp i32 %2142 to float
  %2144 = fadd fast float %2143, 0xC1CFBF8940000000
  %2145 = fmul fast float %2144, %2132
  %2146 = fadd fast float %2145, 0x41CFBF8940000000
  %2147 = fptosi float %2146 to i32
  %2148 = bitcast i32 %2147 to float
  %2149 = fmul fast float %2141, %2129
  %2150 = fmul fast float %2148, %2129
  %2151 = fsub fast float %2134, %2149
  %2152 = fadd fast float %2150, %2134
  %2153 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2154 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2155 = fsub fast float %2123, %2153
  %2156 = fsub fast float %2154, %2153
  %2157 = bitcast float %2156 to i32
  %2158 = sub nsw i32 2129859010, %2157
  %2159 = bitcast i32 %2158 to float
  %2160 = fmul fast float %2159, %2155
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  br label %2162

; <label>:2162                                    ; preds = %2116, %2111
  %2163 = phi float [ %2161, %2116 ], [ %703, %2111 ]
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = and i32 %2165, 128
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2184, label %2168

; <label>:2168                                    ; preds = %2162
  %2169 = add i32 %56, 464
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %2171, 0
  %2173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2173, %dx.types.Handle %107, float %2112, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, 524288
  %2179 = icmp ne i32 %2178, 0
  %2180 = fcmp fast ogt float %2175, 0x3FE0101020000000
  %2181 = select i1 %2180, float 1.000000e+00, float 0.000000e+00
  %2182 = select i1 %2179, float %2181, float %2175
  %2183 = fmul fast float %2182, %2163
  br label %2184

; <label>:2184                                    ; preds = %2168, %2162
  %2185 = phi float [ %2183, %2168 ], [ %2163, %2162 ]
  %2186 = fcmp fast ult float %2185, 0x3F70101020000000
  br i1 %2186, label %2729, label %2187

; <label>:2187                                    ; preds = %2184
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 16
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2390, label %2192

; <label>:2192                                    ; preds = %2187
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = add i32 %56, 416
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %2197, 0
  %2199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2199, %dx.types.Handle %106, float %2112, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.ResRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.ResRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.ResRet.f32 %2200, 3
  %2205 = and i32 %2194, 255
  %2206 = uitofp i32 %2205 to float
  %2207 = lshr i32 %2194, 8
  %2208 = and i32 %2207, 255
  %2209 = uitofp i32 %2208 to float
  %2210 = fmul fast float %2204, %2206
  %2211 = fadd fast float %2210, %2209
  %2212 = fmul fast float %2211, 0x3F70101000000000
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 512
  %2216 = icmp eq i32 %2215, 0
  br i1 %2216, label %2225, label %2217

; <label>:2217                                    ; preds = %2192
  %2218 = add i32 %56, 500
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = add i32 %2220, 0
  %2222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2222, %dx.types.Handle %107, float %2112, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  br label %2225

; <label>:2225                                    ; preds = %2217, %2192
  %2226 = phi float [ %2224, %2217 ], [ 1.000000e+00, %2192 ]
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 33554432
  %2230 = icmp eq i32 %2229, 0
  br i1 %2230, label %2337, label %2231

; <label>:2231                                    ; preds = %2225
  %2232 = add i32 %56, 256
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 65535
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = lshr i32 %2234, 16
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = add i32 %56, 260
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %2241, 65535
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = lshr i32 %2245, 24
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = and i32 %2245, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = lshr i32 %2245, 8
  %2253 = and i32 %2252, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = lshr i32 %2245, 16
  %2257 = and i32 %2256, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = add i32 %56, 252
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = lshr i32 %2262, 24
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = and i32 %2262, 255
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2267, 0x3F70101020000000
  %2269 = lshr i32 %2262, 8
  %2270 = and i32 %2269, 255
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101020000000
  %2273 = lshr i32 %2262, 16
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101020000000
  %2277 = bitcast float %2201 to i32
  %2278 = ashr i32 %2277, 1
  %2279 = sub nsw i32 1597463174, %2278
  %2280 = bitcast i32 %2279 to float
  %2281 = fmul fast float %2201, 5.000000e-01
  %2282 = fmul fast float %2280, %2280
  %2283 = fmul fast float %2282, %2281
  %2284 = fsub fast float 1.500000e+00, %2283
  %2285 = fmul fast float %2280, %2201
  %2286 = fmul fast float %2285, %2284
  %2287 = bitcast float %2202 to i32
  %2288 = ashr i32 %2287, 1
  %2289 = sub nsw i32 1597463174, %2288
  %2290 = bitcast i32 %2289 to float
  %2291 = fmul fast float %2202, 5.000000e-01
  %2292 = fmul fast float %2290, %2290
  %2293 = fmul fast float %2292, %2291
  %2294 = fsub fast float 1.500000e+00, %2293
  %2295 = fmul fast float %2290, %2202
  %2296 = fmul fast float %2295, %2294
  %2297 = bitcast float %2203 to i32
  %2298 = ashr i32 %2297, 1
  %2299 = sub nsw i32 1597463174, %2298
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2203, 5.000000e-01
  %2302 = fmul fast float %2300, %2300
  %2303 = fmul fast float %2302, %2301
  %2304 = fsub fast float 1.500000e+00, %2303
  %2305 = fmul fast float %2300, %2203
  %2306 = fmul fast float %2305, %2304
  %2307 = fsub fast float %2286, %2268
  %2308 = fsub fast float %2296, %2272
  %2309 = fsub fast float %2306, %2276
  %2310 = fmul fast float %2307, %2236
  %2311 = fmul fast float %2308, %2238
  %2312 = fmul fast float %2309, %2243
  %2313 = fadd fast float %2310, %2251
  %2314 = fadd fast float %2311, %2255
  %2315 = fadd fast float %2312, %2259
  %2316 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2317 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2318 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2319 = fmul fast float %2316, %2316
  %2320 = fmul fast float %2317, %2317
  %2321 = fmul fast float %2318, %2318
  %2322 = fsub fast float %2319, %2201
  %2323 = fsub fast float %2320, %2202
  %2324 = fsub fast float %2321, %2203
  %2325 = fmul fast float %2322, %2226
  %2326 = fmul fast float %2323, %2226
  %2327 = fmul fast float %2324, %2226
  %2328 = fadd fast float %2325, %2201
  %2329 = fadd fast float %2326, %2202
  %2330 = fadd fast float %2327, %2203
  %2331 = fadd fast float %2248, %2212
  %2332 = fsub fast float %2331, %2265
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = fsub fast float %2333, %2212
  %2335 = fmul fast float %2334, %2226
  %2336 = fadd fast float %2335, %2212
  br label %2390

; <label>:2337                                    ; preds = %2225
  %2338 = and i32 %2228, 134217728
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2374, label %2340

; <label>:2340                                    ; preds = %2337
  %2341 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2342 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2343 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2344 = fadd fast float %2341, -5.000000e-01
  %2345 = fadd fast float %2342, -5.000000e-01
  %2346 = fadd fast float %2343, -5.000000e-01
  %2347 = fmul fast float %2344, %2226
  %2348 = fmul fast float %2345, %2226
  %2349 = fmul fast float %2346, %2226
  %2350 = fadd fast float %2347, 5.000000e-01
  %2351 = fadd fast float %2348, 5.000000e-01
  %2352 = fadd fast float %2349, 5.000000e-01
  %2353 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2354 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2355 = call float @dx.op.unary.f32(i32 24, float %2203)  ; Sqrt(value)
  %2356 = fmul fast float %2350, 2.000000e+00
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = fmul fast float %2357, %2353
  %2359 = fadd fast float %2358, %2356
  %2360 = fmul fast float %2359, %2353
  %2361 = fmul fast float %2351, 2.000000e+00
  %2362 = fsub fast float 1.000000e+00, %2361
  %2363 = fmul fast float %2362, %2354
  %2364 = fadd fast float %2363, %2361
  %2365 = fmul fast float %2364, %2354
  %2366 = fmul fast float %2352, 2.000000e+00
  %2367 = fsub fast float 1.000000e+00, %2366
  %2368 = fmul fast float %2367, %2355
  %2369 = fadd fast float %2368, %2366
  %2370 = fmul fast float %2369, %2355
  %2371 = fmul fast float %2360, %2360
  %2372 = fmul fast float %2365, %2365
  %2373 = fmul fast float %2370, %2370
  br label %2390

; <label>:2374                                    ; preds = %2337
  %2375 = fmul fast float %511, %511
  %2376 = fmul fast float %512, %512
  %2377 = fmul fast float %513, %513
  %2378 = fadd fast float %2375, -1.000000e+00
  %2379 = fadd fast float %2376, -1.000000e+00
  %2380 = fadd fast float %2377, -1.000000e+00
  %2381 = fmul fast float %2226, %2378
  %2382 = fmul fast float %2226, %2379
  %2383 = fmul fast float %2226, %2380
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fadd fast float %2382, 1.000000e+00
  %2386 = fadd fast float %2383, 1.000000e+00
  %2387 = fmul fast float %2384, %2201
  %2388 = fmul fast float %2385, %2202
  %2389 = fmul fast float %2386, %2203
  br label %2390

; <label>:2390                                    ; preds = %2374, %2340, %2231, %2187
  %2391 = phi float [ %2336, %2231 ], [ %2212, %2340 ], [ %2212, %2374 ], [ 0x3FA23C0BE0000000, %2187 ]
  %2392 = phi float [ %2328, %2231 ], [ %2371, %2340 ], [ %2387, %2374 ], [ 1.000000e+00, %2187 ]
  %2393 = phi float [ %2329, %2231 ], [ %2372, %2340 ], [ %2388, %2374 ], [ 1.000000e+00, %2187 ]
  %2394 = phi float [ %2330, %2231 ], [ %2373, %2340 ], [ %2389, %2374 ], [ 1.000000e+00, %2187 ]
  %2395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.i32 %2395, 1
  %2397 = and i32 %2396, 1
  %2398 = icmp ne i32 %2397, 0
  %2399 = add i32 %56, 356
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 32
  %2403 = icmp ne i32 %2402, 0
  %2404 = and i1 %2398, %2403
  %2405 = select i1 %2404, float 1.000000e+00, float %2392
  %2406 = select i1 %2404, float 0x3FD3333340000000, float %2393
  %2407 = select i1 %2404, float 0x3FD3333340000000, float %2394
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 32
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2484, label %2412

; <label>:2412                                    ; preds = %2390
  %2413 = add i32 %56, 124
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = add i32 %56, 432
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = add i32 %2418, 0
  %2420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2420, %dx.types.Handle %106, float %2112, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2422 = extractvalue %dx.types.ResRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.ResRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.ResRet.f32 %2421, 2
  %2425 = extractvalue %dx.types.ResRet.f32 %2421, 3
  %2426 = and i32 %2415, 255
  %2427 = uitofp i32 %2426 to float
  %2428 = lshr i32 %2415, 8
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = lshr i32 %2415, 16
  %2432 = and i32 %2431, 255
  %2433 = uitofp i32 %2432 to float
  %2434 = fmul fast float %2433, 0x3F70101000000000
  %2435 = fmul fast float %2422, %2427
  %2436 = fadd fast float %2435, %2430
  %2437 = fmul fast float %2436, 0x3F70101000000000
  %2438 = fadd fast float %2423, -5.000000e-01
  %2439 = fadd fast float %2425, -5.000000e-01
  %2440 = fmul fast float %2438, %2434
  %2441 = fmul fast float %2439, %2434
  %2442 = fadd fast float %2440, 5.000000e-01
  %2443 = fadd fast float %2441, 5.000000e-01
  %2444 = fmul fast float %2442, 2.000000e+00
  %2445 = fadd fast float %2444, -1.000000e+00
  %2446 = fmul fast float %2443, 2.000000e+00
  %2447 = fadd fast float %2446, -1.000000e+00
  %2448 = fadd fast float %2445, %2447
  %2449 = fmul fast float %2448, 5.000000e-01
  %2450 = fsub fast float %2445, %2447
  %2451 = fmul fast float %2450, 5.000000e-01
  %2452 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2453 = fsub fast float 1.000000e+00, %2452
  %2454 = call float @dx.op.unary.f32(i32 6, float %2451)  ; FAbs(value)
  %2455 = fsub fast float %2453, %2454
  %2456 = call float @dx.op.dot3.f32(i32 55, float %2449, float %2451, float %2455, float %2449, float %2451, float %2455)  ; Dot3(ax,ay,az,bx,by,bz)
  %2457 = call float @dx.op.unary.f32(i32 25, float %2456)  ; Rsqrt(value)
  %2458 = fmul fast float %2449, %2457
  %2459 = fmul fast float %2451, %2457
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 67108864
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2480, label %2464

; <label>:2464                                    ; preds = %2412
  %2465 = add i32 %56, 312
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 65535
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 65535
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = lshr i32 %2467, 16
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = fsub fast float %2437, %2475
  %2477 = fmul fast float %2476, %2469
  %2478 = fadd fast float %2477, %2473
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  br label %2480

; <label>:2480                                    ; preds = %2464, %2412
  %2481 = phi float [ %2479, %2464 ], [ %2437, %2412 ]
  %2482 = call float @dx.op.dot2.f32(i32 54, float %2458, float %2459, float %2016, float %2017)  ; Dot2(ax,ay,bx,by)
  %2483 = call float @dx.op.dot2.f32(i32 54, float %2458, float %2459, float %2018, float %2019)  ; Dot2(ax,ay,bx,by)
  br label %2484

; <label>:2484                                    ; preds = %2480, %2390
  %2485 = phi float [ %2481, %2480 ], [ 0x3FD6666660000000, %2390 ]
  %2486 = phi float [ %2482, %2480 ], [ 0.000000e+00, %2390 ]
  %2487 = phi float [ %2483, %2480 ], [ 0.000000e+00, %2390 ]
  %2488 = phi float [ %2424, %2480 ], [ 1.000000e+00, %2390 ]
  %2489 = add i32 %56, 192
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = lshr i32 %2491, 22
  %2493 = shl nuw nsw i32 %2492, 5
  %2494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2493)  ; LegacyF16ToF32(value)
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 64
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2532, label %2499

; <label>:2499                                    ; preds = %2484
  %2500 = add i32 %56, 448
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = add i32 %2502, 0
  %2504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = and i32 %2506, 131072
  %2508 = icmp eq i32 %2507, 0
  %2509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2504, %dx.types.Handle %106, float %2112, float %2113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.ResRet.f32 %2509, 1
  %2512 = extractvalue %dx.types.ResRet.f32 %2509, 2
  %2513 = fmul fast float %494, %2510
  %2514 = fmul fast float %495, %2511
  %2515 = fmul fast float %496, %2512
  br i1 %2508, label %2522, label %2516

; <label>:2516                                    ; preds = %2499
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = fmul fast float %2518, %2513
  %2520 = fmul fast float %2518, %2514
  %2521 = fmul fast float %2518, %2515
  br label %2522

; <label>:2522                                    ; preds = %2516, %2499
  %2523 = phi float [ %2519, %2516 ], [ %2513, %2499 ]
  %2524 = phi float [ %2520, %2516 ], [ %2514, %2499 ]
  %2525 = phi float [ %2521, %2516 ], [ %2515, %2499 ]
  %2526 = fmul fast float %2523, %2494
  %2527 = select i1 %269, float %2526, float %2523
  %2528 = call float @dx.op.dot3.f32(i32 55, float %2527, float %2524, float %2525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2529 = select i1 %269, float 0.000000e+00, float %2523
  %2530 = select i1 %269, float %2528, float %2524
  %2531 = select i1 %269, float 0.000000e+00, float %2525
  br label %2532

; <label>:2532                                    ; preds = %2522, %2484
  %2533 = phi float [ %2529, %2522 ], [ 0.000000e+00, %2484 ]
  %2534 = phi float [ %2530, %2522 ], [ 0.000000e+00, %2484 ]
  %2535 = phi float [ %2531, %2522 ], [ 0.000000e+00, %2484 ]
  %2536 = add i32 %56, 128
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = lshr i32 %2538, 8
  %2542 = and i32 %2541, 255
  %2543 = uitofp i32 %2542 to float
  %2544 = call float @dx.op.dot3.f32(i32 55, float %2405, float %2406, float %2407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2545 = fmul fast float %2543, %2544
  %2546 = fadd fast float %2545, %2540
  %2547 = fmul fast float %2546, 0x3F70101020000000
  %2548 = call float @dx.op.unary.f32(i32 7, float %2547)  ; Saturate(value)
  br i1 %2004, label %2549, label %2557

; <label>:2549                                    ; preds = %2532
  %2550 = fsub fast float 1.000000e+00, %2185
  %2551 = fmul fast float %2550, %1996
  %2552 = fmul fast float %2550, %1997
  %2553 = fmul fast float %2550, %1998
  %2554 = fmul fast float %2550, %1993
  %2555 = fmul fast float %2550, %1994
  %2556 = fmul fast float %2550, %1995
  br label %2557

; <label>:2557                                    ; preds = %2549, %2532
  %2558 = phi float [ %2554, %2549 ], [ %1993, %2532 ]
  %2559 = phi float [ %2555, %2549 ], [ %1994, %2532 ]
  %2560 = phi float [ %2556, %2549 ], [ %1995, %2532 ]
  %2561 = phi float [ %2551, %2549 ], [ %1996, %2532 ]
  %2562 = phi float [ %2552, %2549 ], [ %1997, %2532 ]
  %2563 = phi float [ %2553, %2549 ], [ %1998, %2532 ]
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 3
  %2567 = icmp eq i32 %2566, 3
  br i1 %2567, label %2646, label %2568

; <label>:2568                                    ; preds = %2557
  %2569 = and i32 %2565, 16
  %2570 = icmp ne i32 %2569, 0
  %2571 = select i1 %2570, float %2185, float 0.000000e+00
  %2572 = icmp eq i32 %2566, 0
  br i1 %2572, label %2573, label %2601

; <label>:2573                                    ; preds = %2568
  %2574 = and i32 %2565, 64
  %2575 = icmp ne i32 %2574, 0
  %2576 = select i1 %2575, float %2185, float 0.000000e+00
  %2577 = fsub fast float %2405, %2561
  %2578 = fsub fast float %2406, %2562
  %2579 = fsub fast float %2407, %2563
  %2580 = fmul fast float %2571, %2577
  %2581 = fmul fast float %2571, %2578
  %2582 = fmul fast float %2571, %2579
  %2583 = fadd fast float %2580, %2561
  %2584 = fadd fast float %2581, %2562
  %2585 = fadd fast float %2582, %2563
  %2586 = fsub fast float %2391, %1999
  %2587 = fmul fast float %2571, %2586
  %2588 = fadd fast float %2587, %1999
  %2589 = fsub fast float %2533, %2558
  %2590 = fsub fast float %2534, %2559
  %2591 = fsub fast float %2535, %2560
  %2592 = fmul fast float %2576, %2589
  %2593 = fmul fast float %2576, %2590
  %2594 = fmul fast float %2576, %2591
  %2595 = fadd fast float %2592, %2558
  %2596 = fadd fast float %2593, %2559
  %2597 = fadd fast float %2594, %2560
  %2598 = fsub fast float %2548, %2002
  %2599 = fmul fast float %2571, %2598
  %2600 = fadd fast float %2599, %2002
  br label %2646

; <label>:2601                                    ; preds = %2568
  %2602 = icmp eq i32 %2566, 1
  br i1 %2602, label %2603, label %2616

; <label>:2603                                    ; preds = %2601
  %2604 = fadd fast float %2405, -1.000000e+00
  %2605 = fadd fast float %2406, -1.000000e+00
  %2606 = fadd fast float %2407, -1.000000e+00
  %2607 = fmul fast float %2571, %2604
  %2608 = fmul fast float %2571, %2605
  %2609 = fmul fast float %2571, %2606
  %2610 = fadd fast float %2607, 1.000000e+00
  %2611 = fadd fast float %2608, 1.000000e+00
  %2612 = fadd fast float %2609, 1.000000e+00
  %2613 = fmul fast float %2610, %2561
  %2614 = fmul fast float %2611, %2562
  %2615 = fmul fast float %2612, %2563
  br label %2646

; <label>:2616                                    ; preds = %2601
  %2617 = icmp eq i32 %2566, 2
  br i1 %2617, label %2618, label %2646

; <label>:2618                                    ; preds = %2616
  %2619 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2620 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2621 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2622 = fadd fast float %2619, -5.000000e-01
  %2623 = fadd fast float %2620, -5.000000e-01
  %2624 = fadd fast float %2621, -5.000000e-01
  %2625 = fmul fast float %2622, %2571
  %2626 = fmul fast float %2623, %2571
  %2627 = fmul fast float %2624, %2571
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fadd fast float %2626, 5.000000e-01
  %2630 = fadd fast float %2627, 5.000000e-01
  %2631 = fmul fast float %2628, 2.000000e+00
  %2632 = fsub fast float 1.000000e+00, %2631
  %2633 = fmul fast float %2632, %2561
  %2634 = fadd fast float %2633, %2631
  %2635 = fmul fast float %2634, %2561
  %2636 = fmul fast float %2629, 2.000000e+00
  %2637 = fsub fast float 1.000000e+00, %2636
  %2638 = fmul fast float %2637, %2562
  %2639 = fadd fast float %2638, %2636
  %2640 = fmul fast float %2639, %2562
  %2641 = fmul fast float %2630, 2.000000e+00
  %2642 = fsub fast float 1.000000e+00, %2641
  %2643 = fmul fast float %2642, %2563
  %2644 = fadd fast float %2643, %2641
  %2645 = fmul fast float %2644, %2563
  br label %2646

; <label>:2646                                    ; preds = %2618, %2616, %2603, %2573, %2557
  %2647 = phi float [ %2558, %2557 ], [ %2558, %2618 ], [ %2558, %2616 ], [ %2558, %2603 ], [ %2595, %2573 ]
  %2648 = phi float [ %2559, %2557 ], [ %2559, %2618 ], [ %2559, %2616 ], [ %2559, %2603 ], [ %2596, %2573 ]
  %2649 = phi float [ %2560, %2557 ], [ %2560, %2618 ], [ %2560, %2616 ], [ %2560, %2603 ], [ %2597, %2573 ]
  %2650 = phi float [ %2561, %2557 ], [ %2635, %2618 ], [ %2561, %2616 ], [ %2613, %2603 ], [ %2583, %2573 ]
  %2651 = phi float [ %2562, %2557 ], [ %2640, %2618 ], [ %2562, %2616 ], [ %2614, %2603 ], [ %2584, %2573 ]
  %2652 = phi float [ %2563, %2557 ], [ %2645, %2618 ], [ %2563, %2616 ], [ %2615, %2603 ], [ %2585, %2573 ]
  %2653 = phi float [ %1999, %2557 ], [ %1999, %2618 ], [ %1999, %2616 ], [ %1999, %2603 ], [ %2588, %2573 ]
  %2654 = phi float [ %2002, %2557 ], [ %2002, %2618 ], [ %2002, %2616 ], [ %2002, %2603 ], [ %2600, %2573 ]
  %2655 = and i32 %2565, 12
  %2656 = icmp eq i32 %2655, 12
  br i1 %2656, label %2729, label %2657

; <label>:2657                                    ; preds = %2646
  %2658 = and i32 %2565, 2097184
  %2659 = icmp eq i32 %2658, 2097184
  %2660 = select i1 %2659, float %2185, float 0.000000e+00
  %2661 = and i32 %2565, 4194336
  %2662 = icmp eq i32 %2661, 4194336
  %2663 = select i1 %2662, float %2185, float 0.000000e+00
  %2664 = and i32 %2565, 8388640
  %2665 = icmp eq i32 %2664, 8388640
  %2666 = select i1 %2665, float %2185, float 0.000000e+00
  %2667 = icmp eq i32 %2655, 0
  br i1 %2667, label %2668, label %2681

; <label>:2668                                    ; preds = %2657
  %2669 = fsub fast float %2486, %1991
  %2670 = fsub fast float %2487, %1992
  %2671 = fmul fast float %2660, %2669
  %2672 = fmul fast float %2660, %2670
  %2673 = fadd fast float %2671, %1991
  %2674 = fadd fast float %2672, %1992
  %2675 = fsub fast float %2488, %2001
  %2676 = fmul fast float %2663, %2675
  %2677 = fadd fast float %2676, %2001
  %2678 = fsub fast float %2485, %2000
  %2679 = fmul fast float %2666, %2678
  %2680 = fadd fast float %2679, %2000
  br label %2729

; <label>:2681                                    ; preds = %2657
  %2682 = icmp eq i32 %2655, 4
  br i1 %2682, label %2683, label %2715

; <label>:2683                                    ; preds = %2681
  %2684 = fmul fast float %2660, %2486
  %2685 = fmul fast float %2660, %2487
  %2686 = fadd fast float %2684, %1991
  %2687 = fadd fast float %2685, %1992
  %2688 = call float @dx.op.binary.f32(i32 36, float %2001, float %2488)  ; FMin(a,b)
  %2689 = fsub fast float %2688, %2001
  %2690 = fmul fast float %2689, %2663
  %2691 = fadd fast float %2690, %2001
  %2692 = fadd fast float %2485, %2000
  %2693 = fmul fast float %2692, 0x3FF337FAE0000000
  %2694 = fmul fast float %2000, %2000
  %2695 = fmul fast float %2485, %2485
  %2696 = fadd fast float %2695, %2694
  %2697 = fmul fast float %2696, 0x3FE5152B00000000
  %2698 = fmul fast float %2000, 0xBFCC1F85E0000000
  %2699 = fmul fast float %2698, %2485
  %2700 = fadd fast float %2699, 0xBFE1363700000000
  %2701 = fadd fast float %2700, %2693
  %2702 = fsub fast float %2701, %2697
  %2703 = fmul fast float %2692, 0x3FBA6F0D00000000
  %2704 = fmul fast float %2696, 0x3FD0432880000000
  %2705 = fmul fast float %2000, 0xBFEF110800000000
  %2706 = fmul fast float %2705, %2485
  %2707 = fadd fast float %2706, 1.000000e+00
  %2708 = fsub fast float %2707, %2703
  %2709 = fadd fast float %2708, %2704
  %2710 = fdiv fast float %2702, %2709
  %2711 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2712 = fsub fast float %2711, %2000
  %2713 = fmul fast float %2712, %2666
  %2714 = fadd fast float %2713, %2000
  br label %2729

; <label>:2715                                    ; preds = %2681
  %2716 = icmp eq i32 %2655, 8
  br i1 %2716, label %2717, label %2729

; <label>:2717                                    ; preds = %2715
  %2718 = fmul fast float %2660, %2486
  %2719 = fmul fast float %2660, %2487
  %2720 = fadd fast float %2718, %1991
  %2721 = fadd fast float %2719, %1992
  %2722 = call float @dx.op.binary.f32(i32 36, float %2001, float %2488)  ; FMin(a,b)
  %2723 = fsub fast float %2722, %2001
  %2724 = fmul fast float %2723, %2663
  %2725 = fadd fast float %2724, %2001
  %2726 = fsub fast float %2485, %2000
  %2727 = fmul fast float %2666, %2726
  %2728 = fadd fast float %2727, %2000
  br label %2729

; <label>:2729                                    ; preds = %2717, %2715, %2683, %2668, %2646, %2184, %2003, %1990
  %2730 = phi float [ %1991, %2646 ], [ %1991, %2184 ], [ %1991, %1990 ], [ %2720, %2717 ], [ %1991, %2715 ], [ %2686, %2683 ], [ %2673, %2668 ], [ %1991, %2003 ]
  %2731 = phi float [ %1992, %2646 ], [ %1992, %2184 ], [ %1992, %1990 ], [ %2721, %2717 ], [ %1992, %2715 ], [ %2687, %2683 ], [ %2674, %2668 ], [ %1992, %2003 ]
  %2732 = phi float [ %2647, %2646 ], [ %1993, %2184 ], [ %1993, %1990 ], [ %2647, %2717 ], [ %2647, %2715 ], [ %2647, %2683 ], [ %2647, %2668 ], [ %1993, %2003 ]
  %2733 = phi float [ %2648, %2646 ], [ %1994, %2184 ], [ %1994, %1990 ], [ %2648, %2717 ], [ %2648, %2715 ], [ %2648, %2683 ], [ %2648, %2668 ], [ %1994, %2003 ]
  %2734 = phi float [ %2649, %2646 ], [ %1995, %2184 ], [ %1995, %1990 ], [ %2649, %2717 ], [ %2649, %2715 ], [ %2649, %2683 ], [ %2649, %2668 ], [ %1995, %2003 ]
  %2735 = phi float [ %2650, %2646 ], [ %1996, %2184 ], [ %1996, %1990 ], [ %2650, %2717 ], [ %2650, %2715 ], [ %2650, %2683 ], [ %2650, %2668 ], [ %1996, %2003 ]
  %2736 = phi float [ %2651, %2646 ], [ %1997, %2184 ], [ %1997, %1990 ], [ %2651, %2717 ], [ %2651, %2715 ], [ %2651, %2683 ], [ %2651, %2668 ], [ %1997, %2003 ]
  %2737 = phi float [ %2652, %2646 ], [ %1998, %2184 ], [ %1998, %1990 ], [ %2652, %2717 ], [ %2652, %2715 ], [ %2652, %2683 ], [ %2652, %2668 ], [ %1998, %2003 ]
  %2738 = phi float [ %2653, %2646 ], [ %1999, %2184 ], [ %1999, %1990 ], [ %2653, %2717 ], [ %2653, %2715 ], [ %2653, %2683 ], [ %2653, %2668 ], [ %1999, %2003 ]
  %2739 = phi float [ %2000, %2646 ], [ %2000, %2184 ], [ %2000, %1990 ], [ %2728, %2717 ], [ %2000, %2715 ], [ %2714, %2683 ], [ %2680, %2668 ], [ %2000, %2003 ]
  %2740 = phi float [ %2001, %2646 ], [ %2001, %2184 ], [ %2001, %1990 ], [ %2725, %2717 ], [ %2001, %2715 ], [ %2691, %2683 ], [ %2677, %2668 ], [ %2001, %2003 ]
  %2741 = phi float [ %2654, %2646 ], [ %2002, %2184 ], [ %2002, %1990 ], [ %2654, %2717 ], [ %2654, %2715 ], [ %2654, %2683 ], [ %2654, %2668 ], [ %2002, %2003 ]
  br i1 %653, label %3468, label %2742

; <label>:2742                                    ; preds = %2729
  %2743 = icmp ult i32 %707, 4
  %2744 = add i32 %56, 72
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = add i32 %56, 76
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = or i32 %2749, %2746
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %3468, label %2752

; <label>:2752                                    ; preds = %2742
  %2753 = and i32 %2746, 262144
  %2754 = icmp ne i32 %2753, 0
  %2755 = select i1 %2754, float %64, float 1.000000e+00
  %2756 = select i1 %2754, float %65, float 0.000000e+00
  %2757 = select i1 %2754, float %66, float 0.000000e+00
  %2758 = select i1 %2754, float %67, float 1.000000e+00
  %2759 = select i1 %2754, float %68, float %92
  %2760 = select i1 %2754, float %69, float %93
  %2761 = add i32 %56, 332
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = lshr i32 %2763, 16
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = fmul fast float %2765, 0x3F50624DE0000000
  %2767 = add i32 %56, 136
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = lshr i32 %2769, 16
  %2771 = and i32 %2770, 255
  %2772 = lshr i32 %2769, 24
  %2773 = add i32 %56, 340
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 65535
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = lshr i32 %2775, 16
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = add i32 %56, 80
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = lshr i32 %2782, 22
  %2784 = shl nuw nsw i32 %2783, 5
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = shl i32 %2782, 4
  %2787 = and i32 %2786, 32752
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = lshr i32 %2782, 7
  %2790 = and i32 %2789, 32752
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2794 = fmul fast float %2793, 1.000000e+03
  %2795 = fmul fast float %2794, %642
  %2796 = call float @dx.op.unary.f32(i32 22, float %2795)  ; Frc(value)
  %2797 = fadd fast float %2796, %630
  %2798 = fmul fast float %2794, %644
  %2799 = call float @dx.op.unary.f32(i32 22, float %2798)  ; Frc(value)
  %2800 = fadd fast float %2799, %631
  %2801 = fmul fast float %2766, %2794
  %2802 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2803 = fmul fast float %2802, 0x401921FB60000000
  %2804 = fadd fast float %2803, %2785
  %2805 = call float @dx.op.unary.f32(i32 13, float %2804)  ; Sin(value)
  %2806 = call float @dx.op.unary.f32(i32 12, float %2804)  ; Cos(value)
  %2807 = fsub fast float -0.000000e+00, %2805
  %2808 = fadd fast float %2759, -5.000000e-01
  %2809 = fadd fast float %2760, -5.000000e-01
  %2810 = fmul fast float %2777, %2808
  %2811 = fmul fast float %2779, %2809
  %2812 = fadd fast float %2810, 5.000000e-01
  %2813 = fadd fast float %2811, 5.000000e-01
  %2814 = fmul fast float %2788, %2812
  %2815 = fmul fast float %2791, %2813
  %2816 = fmul fast float %2806, %2814
  %2817 = call float @dx.op.tertiary.f32(i32 46, float %2807, float %2815, float %2816)  ; FMad(a,b,c)
  %2818 = fmul fast float %2805, %2814
  %2819 = call float @dx.op.tertiary.f32(i32 46, float %2806, float %2815, float %2818)  ; FMad(a,b,c)
  %2820 = fadd fast float %2797, %2817
  %2821 = fadd fast float %2800, %2819
  %2822 = icmp ugt i32 %2771, 1
  %2823 = icmp ugt i32 %2769, 33554431
  %2824 = or i1 %2823, %2822
  br i1 %2824, label %2825, label %2850

; <label>:2825                                    ; preds = %2752
  %2826 = add i32 %56, 276
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = lshr i32 %2828, 16
  %2830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2829)  ; LegacyF16ToF32(value)
  %2831 = fmul fast float %2793, %2830
  %2832 = call float @dx.op.unary.f32(i32 22, float %2831)  ; Frc(value)
  %2833 = mul nuw nsw i32 %2771, %2772
  %2834 = uitofp i32 %2833 to float
  %2835 = fmul fast float %2832, %2834
  %2836 = call float @dx.op.unary.f32(i32 27, float %2835)  ; Round_ni(value)
  %2837 = fptoui float %2836 to i32
  %2838 = urem i32 %2837, %2771
  %2839 = udiv i32 %2837, %2772
  %2840 = call float @dx.op.unary.f32(i32 22, float %2820)  ; Frc(value)
  %2841 = call float @dx.op.unary.f32(i32 22, float %2821)  ; Frc(value)
  %2842 = uitofp i32 %2838 to float
  %2843 = uitofp i32 %2839 to float
  %2844 = fadd fast float %2840, %2842
  %2845 = fadd fast float %2841, %2843
  %2846 = uitofp i32 %2771 to float
  %2847 = uitofp i32 %2772 to float
  %2848 = fdiv fast float %2844, %2846
  %2849 = fdiv fast float %2845, %2847
  br label %2850

; <label>:2850                                    ; preds = %2825, %2752
  %2851 = phi float [ %2848, %2825 ], [ %2820, %2752 ]
  %2852 = phi float [ %2849, %2825 ], [ %2821, %2752 ]
  %2853 = and i32 %2746, 256
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2901, label %2855

; <label>:2855                                    ; preds = %2850
  %2856 = add i32 %56, 484
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = add i32 %2858, 0
  %2860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2860, %dx.types.Handle %107, float %2851, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = add i32 %56, 148
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = shl i32 %2865, 4
  %2867 = and i32 %2866, 32752
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = lshr i32 %2865, 7
  %2870 = and i32 %2869, 32752
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = fsub fast float 1.000000e+00, %702
  %2873 = call float @dx.op.binary.f32(i32 35, float %2872, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2874 = bitcast float %702 to i32
  %2875 = sitofp i32 %2874 to float
  %2876 = fadd fast float %2875, 0xC1CFBF8940000000
  %2877 = fmul fast float %2871, %2876
  %2878 = fadd fast float %2877, 0x41CFBF8940000000
  %2879 = fptosi float %2878 to i32
  %2880 = bitcast i32 %2879 to float
  %2881 = bitcast float %2873 to i32
  %2882 = sitofp i32 %2881 to float
  %2883 = fadd fast float %2882, 0xC1CFBF8940000000
  %2884 = fmul fast float %2883, %2871
  %2885 = fadd fast float %2884, 0x41CFBF8940000000
  %2886 = fptosi float %2885 to i32
  %2887 = bitcast i32 %2886 to float
  %2888 = fmul fast float %2880, %2868
  %2889 = fmul fast float %2887, %2868
  %2890 = fsub fast float %2873, %2888
  %2891 = fadd fast float %2889, %2873
  %2892 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  %2893 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2894 = fsub fast float %2862, %2892
  %2895 = fsub fast float %2893, %2892
  %2896 = bitcast float %2895 to i32
  %2897 = sub nsw i32 2129859010, %2896
  %2898 = bitcast i32 %2897 to float
  %2899 = fmul fast float %2898, %2894
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  br label %2901

; <label>:2901                                    ; preds = %2855, %2850
  %2902 = phi float [ %2900, %2855 ], [ %702, %2850 ]
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 128
  %2906 = icmp eq i32 %2905, 0
  br i1 %2906, label %2923, label %2907

; <label>:2907                                    ; preds = %2901
  %2908 = add i32 %56, 468
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %2910, 0
  %2912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2912, %dx.types.Handle %107, float %2851, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 524288
  %2918 = icmp ne i32 %2917, 0
  %2919 = fcmp fast ogt float %2914, 0x3FE0101020000000
  %2920 = select i1 %2919, float 1.000000e+00, float 0.000000e+00
  %2921 = select i1 %2918, float %2920, float %2914
  %2922 = fmul fast float %2921, %2902
  br label %2923

; <label>:2923                                    ; preds = %2907, %2901
  %2924 = phi float [ %2922, %2907 ], [ %2902, %2901 ]
  %2925 = fcmp fast ult float %2924, 0x3F70101020000000
  br i1 %2925, label %3468, label %2926

; <label>:2926                                    ; preds = %2923
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 16
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %3129, label %2931

; <label>:2931                                    ; preds = %2926
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = add i32 %56, 420
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = add i32 %2936, 0
  %2938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2938, %dx.types.Handle %106, float %2851, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2940 = extractvalue %dx.types.ResRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.ResRet.f32 %2939, 1
  %2942 = extractvalue %dx.types.ResRet.f32 %2939, 2
  %2943 = extractvalue %dx.types.ResRet.f32 %2939, 3
  %2944 = and i32 %2933, 255
  %2945 = uitofp i32 %2944 to float
  %2946 = lshr i32 %2933, 8
  %2947 = and i32 %2946, 255
  %2948 = uitofp i32 %2947 to float
  %2949 = fmul fast float %2943, %2945
  %2950 = fadd fast float %2949, %2948
  %2951 = fmul fast float %2950, 0x3F70101000000000
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 512
  %2955 = icmp eq i32 %2954, 0
  br i1 %2955, label %2964, label %2956

; <label>:2956                                    ; preds = %2931
  %2957 = add i32 %56, 504
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = add i32 %2959, 0
  %2961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2960, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2961, %dx.types.Handle %107, float %2851, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  br label %2964

; <label>:2964                                    ; preds = %2956, %2931
  %2965 = phi float [ %2963, %2956 ], [ 1.000000e+00, %2931 ]
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 33554432
  %2969 = icmp eq i32 %2968, 0
  br i1 %2969, label %3076, label %2970

; <label>:2970                                    ; preds = %2964
  %2971 = add i32 %56, 272
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 65535
  %2975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2974)  ; LegacyF16ToF32(value)
  %2976 = lshr i32 %2973, 16
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = add i32 %56, 276
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 65535
  %2982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2981)  ; LegacyF16ToF32(value)
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = lshr i32 %2984, 24
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2986, 0x3F70101020000000
  %2988 = and i32 %2984, 255
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101020000000
  %2991 = lshr i32 %2984, 8
  %2992 = and i32 %2991, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = lshr i32 %2984, 16
  %2996 = and i32 %2995, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = add i32 %56, 268
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = lshr i32 %3001, 24
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = and i32 %3001, 255
  %3006 = uitofp i32 %3005 to float
  %3007 = fmul fast float %3006, 0x3F70101020000000
  %3008 = lshr i32 %3001, 8
  %3009 = and i32 %3008, 255
  %3010 = uitofp i32 %3009 to float
  %3011 = fmul fast float %3010, 0x3F70101020000000
  %3012 = lshr i32 %3001, 16
  %3013 = and i32 %3012, 255
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3014, 0x3F70101020000000
  %3016 = bitcast float %2940 to i32
  %3017 = ashr i32 %3016, 1
  %3018 = sub nsw i32 1597463174, %3017
  %3019 = bitcast i32 %3018 to float
  %3020 = fmul fast float %2940, 5.000000e-01
  %3021 = fmul fast float %3019, %3019
  %3022 = fmul fast float %3021, %3020
  %3023 = fsub fast float 1.500000e+00, %3022
  %3024 = fmul fast float %3019, %2940
  %3025 = fmul fast float %3024, %3023
  %3026 = bitcast float %2941 to i32
  %3027 = ashr i32 %3026, 1
  %3028 = sub nsw i32 1597463174, %3027
  %3029 = bitcast i32 %3028 to float
  %3030 = fmul fast float %2941, 5.000000e-01
  %3031 = fmul fast float %3029, %3029
  %3032 = fmul fast float %3031, %3030
  %3033 = fsub fast float 1.500000e+00, %3032
  %3034 = fmul fast float %3029, %2941
  %3035 = fmul fast float %3034, %3033
  %3036 = bitcast float %2942 to i32
  %3037 = ashr i32 %3036, 1
  %3038 = sub nsw i32 1597463174, %3037
  %3039 = bitcast i32 %3038 to float
  %3040 = fmul fast float %2942, 5.000000e-01
  %3041 = fmul fast float %3039, %3039
  %3042 = fmul fast float %3041, %3040
  %3043 = fsub fast float 1.500000e+00, %3042
  %3044 = fmul fast float %3039, %2942
  %3045 = fmul fast float %3044, %3043
  %3046 = fsub fast float %3025, %3007
  %3047 = fsub fast float %3035, %3011
  %3048 = fsub fast float %3045, %3015
  %3049 = fmul fast float %3046, %2975
  %3050 = fmul fast float %3047, %2977
  %3051 = fmul fast float %3048, %2982
  %3052 = fadd fast float %3049, %2990
  %3053 = fadd fast float %3050, %2994
  %3054 = fadd fast float %3051, %2998
  %3055 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3056 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3057 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3058 = fmul fast float %3055, %3055
  %3059 = fmul fast float %3056, %3056
  %3060 = fmul fast float %3057, %3057
  %3061 = fsub fast float %3058, %2940
  %3062 = fsub fast float %3059, %2941
  %3063 = fsub fast float %3060, %2942
  %3064 = fmul fast float %3061, %2965
  %3065 = fmul fast float %3062, %2965
  %3066 = fmul fast float %3063, %2965
  %3067 = fadd fast float %3064, %2940
  %3068 = fadd fast float %3065, %2941
  %3069 = fadd fast float %3066, %2942
  %3070 = fadd fast float %2987, %2951
  %3071 = fsub fast float %3070, %3004
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3073 = fsub fast float %3072, %2951
  %3074 = fmul fast float %3073, %2965
  %3075 = fadd fast float %3074, %2951
  br label %3129

; <label>:3076                                    ; preds = %2964
  %3077 = and i32 %2967, 134217728
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3113, label %3079

; <label>:3079                                    ; preds = %3076
  %3080 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3081 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3082 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3083 = fadd fast float %3080, -5.000000e-01
  %3084 = fadd fast float %3081, -5.000000e-01
  %3085 = fadd fast float %3082, -5.000000e-01
  %3086 = fmul fast float %3083, %2965
  %3087 = fmul fast float %3084, %2965
  %3088 = fmul fast float %3085, %2965
  %3089 = fadd fast float %3086, 5.000000e-01
  %3090 = fadd fast float %3087, 5.000000e-01
  %3091 = fadd fast float %3088, 5.000000e-01
  %3092 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %3093 = call float @dx.op.unary.f32(i32 24, float %2941)  ; Sqrt(value)
  %3094 = call float @dx.op.unary.f32(i32 24, float %2942)  ; Sqrt(value)
  %3095 = fmul fast float %3089, 2.000000e+00
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = fmul fast float %3096, %3092
  %3098 = fadd fast float %3097, %3095
  %3099 = fmul fast float %3098, %3092
  %3100 = fmul fast float %3090, 2.000000e+00
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = fmul fast float %3101, %3093
  %3103 = fadd fast float %3102, %3100
  %3104 = fmul fast float %3103, %3093
  %3105 = fmul fast float %3091, 2.000000e+00
  %3106 = fsub fast float 1.000000e+00, %3105
  %3107 = fmul fast float %3106, %3094
  %3108 = fadd fast float %3107, %3105
  %3109 = fmul fast float %3108, %3094
  %3110 = fmul fast float %3099, %3099
  %3111 = fmul fast float %3104, %3104
  %3112 = fmul fast float %3109, %3109
  br label %3129

; <label>:3113                                    ; preds = %3076
  %3114 = fmul fast float %618, %618
  %3115 = fmul fast float %619, %619
  %3116 = fmul fast float %620, %620
  %3117 = fadd fast float %3114, -1.000000e+00
  %3118 = fadd fast float %3115, -1.000000e+00
  %3119 = fadd fast float %3116, -1.000000e+00
  %3120 = fmul fast float %2965, %3117
  %3121 = fmul fast float %2965, %3118
  %3122 = fmul fast float %2965, %3119
  %3123 = fadd fast float %3120, 1.000000e+00
  %3124 = fadd fast float %3121, 1.000000e+00
  %3125 = fadd fast float %3122, 1.000000e+00
  %3126 = fmul fast float %3123, %2940
  %3127 = fmul fast float %3124, %2941
  %3128 = fmul fast float %3125, %2942
  br label %3129

; <label>:3129                                    ; preds = %3113, %3079, %2970, %2926
  %3130 = phi float [ %3075, %2970 ], [ %2951, %3079 ], [ %2951, %3113 ], [ 0x3FA23C0BE0000000, %2926 ]
  %3131 = phi float [ %3067, %2970 ], [ %3110, %3079 ], [ %3126, %3113 ], [ 1.000000e+00, %2926 ]
  %3132 = phi float [ %3068, %2970 ], [ %3111, %3079 ], [ %3127, %3113 ], [ 1.000000e+00, %2926 ]
  %3133 = phi float [ %3069, %2970 ], [ %3112, %3079 ], [ %3128, %3113 ], [ 1.000000e+00, %2926 ]
  %3134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3135 = extractvalue %dx.types.CBufRet.i32 %3134, 1
  %3136 = and i32 %3135, 1
  %3137 = icmp ne i32 %3136, 0
  %3138 = add i32 %56, 356
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, 32
  %3142 = icmp ne i32 %3141, 0
  %3143 = and i1 %3137, %3142
  %3144 = select i1 %3143, float 1.000000e+00, float %3131
  %3145 = select i1 %3143, float 0x3FD3333340000000, float %3132
  %3146 = select i1 %3143, float 0x3FD3333340000000, float %3133
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 32
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3223, label %3151

; <label>:3151                                    ; preds = %3129
  %3152 = add i32 %56, 140
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = add i32 %56, 436
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %3157, 0
  %3159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3159, %dx.types.Handle %106, float %2851, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  %3164 = extractvalue %dx.types.ResRet.f32 %3160, 3
  %3165 = and i32 %3154, 255
  %3166 = uitofp i32 %3165 to float
  %3167 = lshr i32 %3154, 8
  %3168 = and i32 %3167, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = lshr i32 %3154, 16
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101000000000
  %3174 = fmul fast float %3161, %3166
  %3175 = fadd fast float %3174, %3169
  %3176 = fmul fast float %3175, 0x3F70101000000000
  %3177 = fadd fast float %3162, -5.000000e-01
  %3178 = fadd fast float %3164, -5.000000e-01
  %3179 = fmul fast float %3177, %3173
  %3180 = fmul fast float %3178, %3173
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = fadd fast float %3180, 5.000000e-01
  %3183 = fmul fast float %3181, 2.000000e+00
  %3184 = fadd fast float %3183, -1.000000e+00
  %3185 = fmul fast float %3182, 2.000000e+00
  %3186 = fadd fast float %3185, -1.000000e+00
  %3187 = fadd fast float %3184, %3186
  %3188 = fmul fast float %3187, 5.000000e-01
  %3189 = fsub fast float %3184, %3186
  %3190 = fmul fast float %3189, 5.000000e-01
  %3191 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3192 = fsub fast float 1.000000e+00, %3191
  %3193 = call float @dx.op.unary.f32(i32 6, float %3190)  ; FAbs(value)
  %3194 = fsub fast float %3192, %3193
  %3195 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3190, float %3194, float %3188, float %3190, float %3194)  ; Dot3(ax,ay,az,bx,by,bz)
  %3196 = call float @dx.op.unary.f32(i32 25, float %3195)  ; Rsqrt(value)
  %3197 = fmul fast float %3188, %3196
  %3198 = fmul fast float %3190, %3196
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 67108864
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3219, label %3203

; <label>:3203                                    ; preds = %3151
  %3204 = add i32 %56, 328
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 65535
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = lshr i32 %3206, 16
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = fsub fast float %3176, %3214
  %3216 = fmul fast float %3215, %3208
  %3217 = fadd fast float %3216, %3212
  %3218 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  br label %3219

; <label>:3219                                    ; preds = %3203, %3151
  %3220 = phi float [ %3218, %3203 ], [ %3176, %3151 ]
  %3221 = call float @dx.op.dot2.f32(i32 54, float %3197, float %3198, float %2755, float %2756)  ; Dot2(ax,ay,bx,by)
  %3222 = call float @dx.op.dot2.f32(i32 54, float %3197, float %3198, float %2757, float %2758)  ; Dot2(ax,ay,bx,by)
  br label %3223

; <label>:3223                                    ; preds = %3219, %3129
  %3224 = phi float [ %3220, %3219 ], [ 0x3FD6666660000000, %3129 ]
  %3225 = phi float [ %3221, %3219 ], [ 0.000000e+00, %3129 ]
  %3226 = phi float [ %3222, %3219 ], [ 0.000000e+00, %3129 ]
  %3227 = phi float [ %3163, %3219 ], [ 1.000000e+00, %3129 ]
  %3228 = add i32 %56, 208
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = lshr i32 %3230, 22
  %3232 = shl nuw nsw i32 %3231, 5
  %3233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3232)  ; LegacyF16ToF32(value)
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, 64
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3271, label %3238

; <label>:3238                                    ; preds = %3223
  %3239 = add i32 %56, 452
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = add i32 %3241, 0
  %3243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = and i32 %3245, 131072
  %3247 = icmp eq i32 %3246, 0
  %3248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3243, %dx.types.Handle %106, float %2851, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3249 = extractvalue %dx.types.ResRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.ResRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.ResRet.f32 %3248, 2
  %3252 = fmul fast float %601, %3249
  %3253 = fmul fast float %602, %3250
  %3254 = fmul fast float %603, %3251
  br i1 %3247, label %3261, label %3255

; <label>:3255                                    ; preds = %3238
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = fmul fast float %3257, %3252
  %3259 = fmul fast float %3257, %3253
  %3260 = fmul fast float %3257, %3254
  br label %3261

; <label>:3261                                    ; preds = %3255, %3238
  %3262 = phi float [ %3258, %3255 ], [ %3252, %3238 ]
  %3263 = phi float [ %3259, %3255 ], [ %3253, %3238 ]
  %3264 = phi float [ %3260, %3255 ], [ %3254, %3238 ]
  %3265 = fmul fast float %3262, %3233
  %3266 = select i1 %269, float %3265, float %3262
  %3267 = call float @dx.op.dot3.f32(i32 55, float %3266, float %3263, float %3264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3268 = select i1 %269, float 0.000000e+00, float %3262
  %3269 = select i1 %269, float %3267, float %3263
  %3270 = select i1 %269, float 0.000000e+00, float %3264
  br label %3271

; <label>:3271                                    ; preds = %3261, %3223
  %3272 = phi float [ %3268, %3261 ], [ 0.000000e+00, %3223 ]
  %3273 = phi float [ %3269, %3261 ], [ 0.000000e+00, %3223 ]
  %3274 = phi float [ %3270, %3261 ], [ 0.000000e+00, %3223 ]
  %3275 = add i32 %56, 144
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = and i32 %3277, 255
  %3279 = uitofp i32 %3278 to float
  %3280 = lshr i32 %3277, 8
  %3281 = and i32 %3280, 255
  %3282 = uitofp i32 %3281 to float
  %3283 = call float @dx.op.dot3.f32(i32 55, float %3144, float %3145, float %3146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3284 = fmul fast float %3282, %3283
  %3285 = fadd fast float %3284, %3279
  %3286 = fmul fast float %3285, 0x3F70101020000000
  %3287 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  br i1 %2743, label %3288, label %3296

; <label>:3288                                    ; preds = %3271
  %3289 = fsub fast float 1.000000e+00, %2924
  %3290 = fmul fast float %3289, %2735
  %3291 = fmul fast float %3289, %2736
  %3292 = fmul fast float %3289, %2737
  %3293 = fmul fast float %3289, %2732
  %3294 = fmul fast float %3289, %2733
  %3295 = fmul fast float %3289, %2734
  br label %3296

; <label>:3296                                    ; preds = %3288, %3271
  %3297 = phi float [ %3293, %3288 ], [ %2732, %3271 ]
  %3298 = phi float [ %3294, %3288 ], [ %2733, %3271 ]
  %3299 = phi float [ %3295, %3288 ], [ %2734, %3271 ]
  %3300 = phi float [ %3290, %3288 ], [ %2735, %3271 ]
  %3301 = phi float [ %3291, %3288 ], [ %2736, %3271 ]
  %3302 = phi float [ %3292, %3288 ], [ %2737, %3271 ]
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = and i32 %3304, 3
  %3306 = icmp eq i32 %3305, 3
  br i1 %3306, label %3385, label %3307

; <label>:3307                                    ; preds = %3296
  %3308 = and i32 %3304, 16
  %3309 = icmp ne i32 %3308, 0
  %3310 = select i1 %3309, float %2924, float 0.000000e+00
  %3311 = icmp eq i32 %3305, 0
  br i1 %3311, label %3312, label %3340

; <label>:3312                                    ; preds = %3307
  %3313 = and i32 %3304, 64
  %3314 = icmp ne i32 %3313, 0
  %3315 = select i1 %3314, float %2924, float 0.000000e+00
  %3316 = fsub fast float %3144, %3300
  %3317 = fsub fast float %3145, %3301
  %3318 = fsub fast float %3146, %3302
  %3319 = fmul fast float %3310, %3316
  %3320 = fmul fast float %3310, %3317
  %3321 = fmul fast float %3310, %3318
  %3322 = fadd fast float %3319, %3300
  %3323 = fadd fast float %3320, %3301
  %3324 = fadd fast float %3321, %3302
  %3325 = fsub fast float %3130, %2738
  %3326 = fmul fast float %3310, %3325
  %3327 = fadd fast float %3326, %2738
  %3328 = fsub fast float %3272, %3297
  %3329 = fsub fast float %3273, %3298
  %3330 = fsub fast float %3274, %3299
  %3331 = fmul fast float %3315, %3328
  %3332 = fmul fast float %3315, %3329
  %3333 = fmul fast float %3315, %3330
  %3334 = fadd fast float %3331, %3297
  %3335 = fadd fast float %3332, %3298
  %3336 = fadd fast float %3333, %3299
  %3337 = fsub fast float %3287, %2741
  %3338 = fmul fast float %3310, %3337
  %3339 = fadd fast float %3338, %2741
  br label %3385

; <label>:3340                                    ; preds = %3307
  %3341 = icmp eq i32 %3305, 1
  br i1 %3341, label %3342, label %3355

; <label>:3342                                    ; preds = %3340
  %3343 = fadd fast float %3144, -1.000000e+00
  %3344 = fadd fast float %3145, -1.000000e+00
  %3345 = fadd fast float %3146, -1.000000e+00
  %3346 = fmul fast float %3310, %3343
  %3347 = fmul fast float %3310, %3344
  %3348 = fmul fast float %3310, %3345
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fadd fast float %3347, 1.000000e+00
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fmul fast float %3349, %3300
  %3353 = fmul fast float %3350, %3301
  %3354 = fmul fast float %3351, %3302
  br label %3385

; <label>:3355                                    ; preds = %3340
  %3356 = icmp eq i32 %3305, 2
  br i1 %3356, label %3357, label %3385

; <label>:3357                                    ; preds = %3355
  %3358 = call float @dx.op.unary.f32(i32 24, float %3144)  ; Sqrt(value)
  %3359 = call float @dx.op.unary.f32(i32 24, float %3145)  ; Sqrt(value)
  %3360 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3361 = fadd fast float %3358, -5.000000e-01
  %3362 = fadd fast float %3359, -5.000000e-01
  %3363 = fadd fast float %3360, -5.000000e-01
  %3364 = fmul fast float %3361, %3310
  %3365 = fmul fast float %3362, %3310
  %3366 = fmul fast float %3363, %3310
  %3367 = fadd fast float %3364, 5.000000e-01
  %3368 = fadd fast float %3365, 5.000000e-01
  %3369 = fadd fast float %3366, 5.000000e-01
  %3370 = fmul fast float %3367, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3300
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3300
  %3375 = fmul fast float %3368, 2.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3376, %3301
  %3378 = fadd fast float %3377, %3375
  %3379 = fmul fast float %3378, %3301
  %3380 = fmul fast float %3369, 2.000000e+00
  %3381 = fsub fast float 1.000000e+00, %3380
  %3382 = fmul fast float %3381, %3302
  %3383 = fadd fast float %3382, %3380
  %3384 = fmul fast float %3383, %3302
  br label %3385

; <label>:3385                                    ; preds = %3357, %3355, %3342, %3312, %3296
  %3386 = phi float [ %3297, %3296 ], [ %3297, %3357 ], [ %3297, %3355 ], [ %3297, %3342 ], [ %3334, %3312 ]
  %3387 = phi float [ %3298, %3296 ], [ %3298, %3357 ], [ %3298, %3355 ], [ %3298, %3342 ], [ %3335, %3312 ]
  %3388 = phi float [ %3299, %3296 ], [ %3299, %3357 ], [ %3299, %3355 ], [ %3299, %3342 ], [ %3336, %3312 ]
  %3389 = phi float [ %3300, %3296 ], [ %3374, %3357 ], [ %3300, %3355 ], [ %3352, %3342 ], [ %3322, %3312 ]
  %3390 = phi float [ %3301, %3296 ], [ %3379, %3357 ], [ %3301, %3355 ], [ %3353, %3342 ], [ %3323, %3312 ]
  %3391 = phi float [ %3302, %3296 ], [ %3384, %3357 ], [ %3302, %3355 ], [ %3354, %3342 ], [ %3324, %3312 ]
  %3392 = phi float [ %2738, %3296 ], [ %2738, %3357 ], [ %2738, %3355 ], [ %2738, %3342 ], [ %3327, %3312 ]
  %3393 = phi float [ %2741, %3296 ], [ %2741, %3357 ], [ %2741, %3355 ], [ %2741, %3342 ], [ %3339, %3312 ]
  %3394 = and i32 %3304, 12
  %3395 = icmp eq i32 %3394, 12
  br i1 %3395, label %3468, label %3396

; <label>:3396                                    ; preds = %3385
  %3397 = and i32 %3304, 2097184
  %3398 = icmp eq i32 %3397, 2097184
  %3399 = select i1 %3398, float %2924, float 0.000000e+00
  %3400 = and i32 %3304, 4194336
  %3401 = icmp eq i32 %3400, 4194336
  %3402 = select i1 %3401, float %2924, float 0.000000e+00
  %3403 = and i32 %3304, 8388640
  %3404 = icmp eq i32 %3403, 8388640
  %3405 = select i1 %3404, float %2924, float 0.000000e+00
  %3406 = icmp eq i32 %3394, 0
  br i1 %3406, label %3407, label %3420

; <label>:3407                                    ; preds = %3396
  %3408 = fsub fast float %3225, %2730
  %3409 = fsub fast float %3226, %2731
  %3410 = fmul fast float %3399, %3408
  %3411 = fmul fast float %3399, %3409
  %3412 = fadd fast float %3410, %2730
  %3413 = fadd fast float %3411, %2731
  %3414 = fsub fast float %3227, %2740
  %3415 = fmul fast float %3402, %3414
  %3416 = fadd fast float %3415, %2740
  %3417 = fsub fast float %3224, %2739
  %3418 = fmul fast float %3405, %3417
  %3419 = fadd fast float %3418, %2739
  br label %3468

; <label>:3420                                    ; preds = %3396
  %3421 = icmp eq i32 %3394, 4
  br i1 %3421, label %3422, label %3454

; <label>:3422                                    ; preds = %3420
  %3423 = fmul fast float %3399, %3225
  %3424 = fmul fast float %3399, %3226
  %3425 = fadd fast float %3423, %2730
  %3426 = fadd fast float %3424, %2731
  %3427 = call float @dx.op.binary.f32(i32 36, float %2740, float %3227)  ; FMin(a,b)
  %3428 = fsub fast float %3427, %2740
  %3429 = fmul fast float %3428, %3402
  %3430 = fadd fast float %3429, %2740
  %3431 = fadd fast float %3224, %2739
  %3432 = fmul fast float %3431, 0x3FF337FAE0000000
  %3433 = fmul fast float %2739, %2739
  %3434 = fmul fast float %3224, %3224
  %3435 = fadd fast float %3434, %3433
  %3436 = fmul fast float %3435, 0x3FE5152B00000000
  %3437 = fmul fast float %2739, 0xBFCC1F85E0000000
  %3438 = fmul fast float %3437, %3224
  %3439 = fadd fast float %3438, 0xBFE1363700000000
  %3440 = fadd fast float %3439, %3432
  %3441 = fsub fast float %3440, %3436
  %3442 = fmul fast float %3431, 0x3FBA6F0D00000000
  %3443 = fmul fast float %3435, 0x3FD0432880000000
  %3444 = fmul fast float %2739, 0xBFEF110800000000
  %3445 = fmul fast float %3444, %3224
  %3446 = fadd fast float %3445, 1.000000e+00
  %3447 = fsub fast float %3446, %3442
  %3448 = fadd fast float %3447, %3443
  %3449 = fdiv fast float %3441, %3448
  %3450 = call float @dx.op.unary.f32(i32 7, float %3449)  ; Saturate(value)
  %3451 = fsub fast float %3450, %2739
  %3452 = fmul fast float %3451, %3405
  %3453 = fadd fast float %3452, %2739
  br label %3468

; <label>:3454                                    ; preds = %3420
  %3455 = icmp eq i32 %3394, 8
  br i1 %3455, label %3456, label %3468

; <label>:3456                                    ; preds = %3454
  %3457 = fmul fast float %3399, %3225
  %3458 = fmul fast float %3399, %3226
  %3459 = fadd fast float %3457, %2730
  %3460 = fadd fast float %3458, %2731
  %3461 = call float @dx.op.binary.f32(i32 36, float %2740, float %3227)  ; FMin(a,b)
  %3462 = fsub fast float %3461, %2740
  %3463 = fmul fast float %3462, %3402
  %3464 = fadd fast float %3463, %2740
  %3465 = fsub fast float %3224, %2739
  %3466 = fmul fast float %3405, %3465
  %3467 = fadd fast float %3466, %2739
  br label %3468

; <label>:3468                                    ; preds = %3456, %3454, %3422, %3407, %3385, %2923, %2742, %2729
  %3469 = phi float [ %2730, %3385 ], [ %2730, %2923 ], [ %2730, %2729 ], [ %2730, %2742 ], [ %3412, %3407 ], [ %3425, %3422 ], [ %2730, %3454 ], [ %3459, %3456 ]
  %3470 = phi float [ %2731, %3385 ], [ %2731, %2923 ], [ %2731, %2729 ], [ %2731, %2742 ], [ %3413, %3407 ], [ %3426, %3422 ], [ %2731, %3454 ], [ %3460, %3456 ]
  %3471 = phi float [ %3386, %3385 ], [ %2732, %2923 ], [ %2732, %2729 ], [ %2732, %2742 ], [ %3386, %3407 ], [ %3386, %3422 ], [ %3386, %3454 ], [ %3386, %3456 ]
  %3472 = phi float [ %3387, %3385 ], [ %2733, %2923 ], [ %2733, %2729 ], [ %2733, %2742 ], [ %3387, %3407 ], [ %3387, %3422 ], [ %3387, %3454 ], [ %3387, %3456 ]
  %3473 = phi float [ %3388, %3385 ], [ %2734, %2923 ], [ %2734, %2729 ], [ %2734, %2742 ], [ %3388, %3407 ], [ %3388, %3422 ], [ %3388, %3454 ], [ %3388, %3456 ]
  %3474 = phi float [ %3389, %3385 ], [ %2735, %2923 ], [ %2735, %2729 ], [ %2735, %2742 ], [ %3389, %3407 ], [ %3389, %3422 ], [ %3389, %3454 ], [ %3389, %3456 ]
  %3475 = phi float [ %3390, %3385 ], [ %2736, %2923 ], [ %2736, %2729 ], [ %2736, %2742 ], [ %3390, %3407 ], [ %3390, %3422 ], [ %3390, %3454 ], [ %3390, %3456 ]
  %3476 = phi float [ %3391, %3385 ], [ %2737, %2923 ], [ %2737, %2729 ], [ %2737, %2742 ], [ %3391, %3407 ], [ %3391, %3422 ], [ %3391, %3454 ], [ %3391, %3456 ]
  %3477 = phi float [ %3392, %3385 ], [ %2738, %2923 ], [ %2738, %2729 ], [ %2738, %2742 ], [ %3392, %3407 ], [ %3392, %3422 ], [ %3392, %3454 ], [ %3392, %3456 ]
  %3478 = phi float [ %2739, %3385 ], [ %2739, %2923 ], [ %2739, %2729 ], [ %2739, %2742 ], [ %3419, %3407 ], [ %3453, %3422 ], [ %2739, %3454 ], [ %3467, %3456 ]
  %3479 = phi float [ %2740, %3385 ], [ %2740, %2923 ], [ %2740, %2729 ], [ %2740, %2742 ], [ %3416, %3407 ], [ %3430, %3422 ], [ %2740, %3454 ], [ %3464, %3456 ]
  %3480 = phi float [ %3393, %3385 ], [ %2741, %2923 ], [ %2741, %2729 ], [ %2741, %2742 ], [ %3393, %3407 ], [ %3393, %3422 ], [ %3393, %3454 ], [ %3393, %3456 ]
  %3481 = add i32 %56, 360
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.i32 %3482, 1
  %3485 = bitcast i32 %3483 to float
  %3486 = bitcast i32 %3484 to float
  %3487 = fcmp fast oge float %3485, 0.000000e+00
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 0
  %3490 = select i1 %3487, float %3485, float %3489
  %3491 = fadd fast float %3490, %211
  %3492 = fmul fast float %3486, %212
  %3493 = add i32 %56, 488
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = add i32 %3495, 0
  %3497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3497, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = fmul fast float %3492, %3499
  %3501 = fadd fast float %3491, %3500
  %3502 = and i32 %203, 65535
  %3503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3502)  ; LegacyF16ToF32(value)
  %3504 = lshr i32 %203, 16
  %3505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3504)  ; LegacyF16ToF32(value)
  %3506 = and i32 %204, 65535
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = fmul fast float %3503, %3474
  %3509 = fmul fast float %3505, %3475
  %3510 = fmul fast float %3507, %3476
  %3511 = shl i32 %205, 4
  %3512 = and i32 %3511, 32752
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = lshr i32 %205, 7
  %3515 = and i32 %3514, 32752
  %3516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3515)  ; LegacyF16ToF32(value)
  %3517 = lshr i32 %205, 22
  %3518 = shl nuw nsw i32 %3517, 5
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = and i32 %206, 65535
  %3521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3520)  ; LegacyF16ToF32(value)
  %3522 = fmul fast float %3513, %3471
  %3523 = fmul fast float %3522, %3521
  %3524 = fmul fast float %3516, %3472
  %3525 = fmul fast float %3524, %3521
  %3526 = fmul fast float %3519, %3473
  %3527 = fmul fast float %3526, %3521
  %3528 = call float @dx.op.dot2.f32(i32 54, float %3469, float %3470, float %3469, float %3470)  ; Dot2(ax,ay,bx,by)
  %3529 = fmul fast float %3528, 0x3FE3333340000000
  %3530 = fsub fast float 1.000000e+00, %3529
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3469, float %3470, float %3530, float %3469, float %3470, float %3530)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3532, %3469
  %3534 = fmul fast float %3532, %3470
  %3535 = fmul fast float %3530, %3532
  %3536 = fmul fast float %3535, %117
  %3537 = fmul fast float %3535, %118
  %3538 = fmul fast float %3535, %119
  %3539 = fmul fast float %3533, %85
  %3540 = fmul fast float %3533, %86
  %3541 = fmul fast float %3533, %87
  %3542 = fadd fast float %3536, %3539
  %3543 = fadd fast float %3537, %3540
  %3544 = fadd fast float %3538, %3541
  %3545 = fmul fast float %129, %3534
  %3546 = fmul fast float %130, %3534
  %3547 = fmul fast float %131, %3534
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3548, float %3549, float %3550)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = call float @dx.op.unary.f32(i32 25, float %3551)  ; Rsqrt(value)
  %3553 = fmul fast float %3548, %3552
  %3554 = fmul fast float %3549, %3552
  %3555 = fmul fast float %3550, %3552
  %3556 = icmp eq i32 %59, 65535
  br i1 %3556, label %4071, label %3557

; <label>:3557                                    ; preds = %3468
  %3558 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3559 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3560 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3561 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3562 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3563 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3564 = fadd fast float %3558, %60
  %3565 = fadd fast float %3559, %61
  %3566 = fadd fast float %3560, %62
  %3567 = fadd fast float %3561, %60
  %3568 = fadd fast float %3562, %61
  %3569 = fadd fast float %3563, %62
  %3570 = mul i32 %59, 48
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = add i32 %3570, 16
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = add i32 %3570, 32
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3586 = bitcast float %3585 to i32
  %3587 = fmul fast float %3572, %60
  %3588 = fmul fast float %3573, %61
  %3589 = fmul fast float %3574, %62
  %3590 = fsub fast float %3587, %3577
  %3591 = fsub fast float %3588, %3578
  %3592 = fsub fast float %3589, %3579
  %3593 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3594 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3595 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3596 = fmul fast float %3593, %3582
  %3597 = fmul fast float %3594, %3583
  %3598 = fmul fast float %3595, %3584
  %3599 = fadd fast float %3582, -1.000000e+00
  %3600 = fadd fast float %3583, -1.000000e+00
  %3601 = fadd fast float %3584, -1.000000e+00
  %3602 = call float @dx.op.unary.f32(i32 27, float %3596)  ; Round_ni(value)
  %3603 = call float @dx.op.unary.f32(i32 27, float %3597)  ; Round_ni(value)
  %3604 = call float @dx.op.unary.f32(i32 27, float %3598)  ; Round_ni(value)
  %3605 = call float @dx.op.binary.f32(i32 36, float %3602, float %3599)  ; FMin(a,b)
  %3606 = call float @dx.op.binary.f32(i32 36, float %3603, float %3600)  ; FMin(a,b)
  %3607 = call float @dx.op.binary.f32(i32 36, float %3604, float %3601)  ; FMin(a,b)
  %3608 = fmul fast float %3607, %3583
  %3609 = fadd fast float %3608, %3606
  %3610 = fmul fast float %3609, %3582
  %3611 = fadd fast float %3610, %3605
  %3612 = fptosi float %3611 to i32
  %3613 = add nsw i32 %3612, %3586
  %3614 = shl nsw i32 %3613, 2
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = lshr i32 %3616, 16
  %3618 = icmp eq i32 %3617, 0
  br i1 %3618, label %4040, label %3619

; <label>:3619                                    ; preds = %3557
  br label %3620

; <label>:3620                                    ; preds = %3741, %3619
  %3621 = phi i32 [ %3643, %3741 ], [ %3617, %3619 ]
  %3622 = phi float [ %3742, %3741 ], [ 0.000000e+00, %3619 ]
  %3623 = phi float [ %3743, %3741 ], [ %3501, %3619 ]
  %3624 = phi float [ %3744, %3741 ], [ %3480, %3619 ]
  %3625 = phi float [ %3745, %3741 ], [ 0.000000e+00, %3619 ]
  %3626 = phi float [ %3746, %3741 ], [ 0.000000e+00, %3619 ]
  %3627 = phi float [ %3747, %3741 ], [ %3523, %3619 ]
  %3628 = phi float [ %3748, %3741 ], [ %3525, %3619 ]
  %3629 = phi float [ %3749, %3741 ], [ %3527, %3619 ]
  %3630 = phi float [ %3750, %3741 ], [ %3553, %3619 ]
  %3631 = phi float [ %3751, %3741 ], [ %3554, %3619 ]
  %3632 = phi float [ %3752, %3741 ], [ %3555, %3619 ]
  %3633 = phi float [ %3753, %3741 ], [ %3479, %3619 ]
  %3634 = phi float [ %3754, %3741 ], [ %3478, %3619 ]
  %3635 = phi float [ %3755, %3741 ], [ 0.000000e+00, %3619 ]
  %3636 = phi float [ %3756, %3741 ], [ %3477, %3619 ]
  %3637 = phi float [ %3757, %3741 ], [ %3508, %3619 ]
  %3638 = phi float [ %3758, %3741 ], [ %3509, %3619 ]
  %3639 = phi float [ %3759, %3741 ], [ %3510, %3619 ]
  %3640 = shl nuw nsw i32 %3621, 2
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = lshr i32 %3642, 16
  %3644 = shl i32 %3642, 8
  %3645 = and i32 %3644, 16776960
  %3646 = or i32 %3645, 48
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = or i32 %3645, 64
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.i32 %3652, 1
  %3655 = or i32 %3645, 80
  %3656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 3
  %3659 = or i32 %3645, 96
  %3660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.ResRet.f32 %3660, 2
  %3664 = extractvalue %dx.types.ResRet.f32 %3660, 3
  %3665 = or i32 %3645, 112
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3668 = or i32 %3645, 128
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = extractvalue %dx.types.ResRet.f32 %3669, 3
  %3674 = or i32 %3645, 144
  %3675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = or i32 %3645, 160
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3686 = or i32 %3645, 192
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = or i32 %3645, 208
  %3690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = or i32 %3645, 248
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3693, 1
  %3696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3700 = extractvalue %dx.types.ResRet.f32 %3696, 3
  %3701 = call float @dx.op.dot4.f32(i32 56, float %3697, float %3698, float %3699, float %3700, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3702 = or i32 %3645, 16
  %3703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.ResRet.f32 %3703, 3
  %3708 = call float @dx.op.dot4.f32(i32 56, float %3704, float %3705, float %3706, float %3707, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3709 = or i32 %3645, 32
  %3710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3710, 2
  %3714 = extractvalue %dx.types.ResRet.f32 %3710, 3
  %3715 = call float @dx.op.dot4.f32(i32 56, float %3711, float %3712, float %3713, float %3714, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3716 = call float @dx.op.unary.f32(i32 27, float %3701)  ; Round_ni(value)
  %3717 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3718 = call float @dx.op.unary.f32(i32 27, float %3708)  ; Round_ni(value)
  %3719 = call float @dx.op.unary.f32(i32 6, float %3718)  ; FAbs(value)
  %3720 = call float @dx.op.unary.f32(i32 6, float %3715)  ; FAbs(value)
  %3721 = call float @dx.op.unary.f32(i32 27, float %3720)  ; Round_ni(value)
  %3722 = fadd fast float %3719, %3717
  %3723 = fadd fast float %3722, %3721
  %3724 = fcmp fast oeq float %3723, 0.000000e+00
  %3725 = call float @dx.op.dot4.f32(i32 56, float %3697, float %3698, float %3699, float %3700, float %3564, float %3565, float %3566, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3726 = call float @dx.op.dot4.f32(i32 56, float %3704, float %3705, float %3706, float %3707, float %3564, float %3565, float %3566, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3727 = call float @dx.op.dot4.f32(i32 56, float %3697, float %3698, float %3699, float %3700, float %3567, float %3568, float %3569, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3728 = call float @dx.op.dot4.f32(i32 56, float %3704, float %3705, float %3706, float %3707, float %3567, float %3568, float %3569, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3729 = fsub fast float %3725, %3701
  %3730 = fsub fast float %3727, %3701
  %3731 = fsub fast float %3726, %3708
  %3732 = fsub fast float %3728, %3708
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3734, 2
  %3736 = fadd fast float %3735, %3733
  %3737 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3734, 0
  %3739 = fcmp fast ogt float %3737, %3738
  %3740 = and i1 %3724, %3739
  br i1 %3740, label %3761, label %3741

; <label>:3741                                    ; preds = %4026, %3844, %3761, %3620
  %3742 = phi float [ %3622, %3761 ], [ %3847, %3844 ], [ %3847, %4026 ], [ %3622, %3620 ]
  %3743 = phi float [ %3623, %3761 ], [ %3623, %3844 ], [ %4001, %4026 ], [ %3623, %3620 ]
  %3744 = phi float [ %3624, %3761 ], [ %3624, %3844 ], [ %3999, %4026 ], [ %3624, %3620 ]
  %3745 = phi float [ %3625, %3761 ], [ %3625, %3844 ], [ %3971, %4026 ], [ %3625, %3620 ]
  %3746 = phi float [ %3626, %3761 ], [ %3626, %3844 ], [ %3969, %4026 ], [ %3626, %3620 ]
  %3747 = phi float [ %3627, %3761 ], [ %3627, %3844 ], [ %4036, %4026 ], [ %3627, %3620 ]
  %3748 = phi float [ %3628, %3761 ], [ %3628, %3844 ], [ %4037, %4026 ], [ %3628, %3620 ]
  %3749 = phi float [ %3629, %3761 ], [ %3629, %3844 ], [ %4038, %4026 ], [ %3629, %3620 ]
  %3750 = phi float [ %3630, %3761 ], [ %3630, %3844 ], [ %3950, %4026 ], [ %3630, %3620 ]
  %3751 = phi float [ %3631, %3761 ], [ %3631, %3844 ], [ %3951, %4026 ], [ %3631, %3620 ]
  %3752 = phi float [ %3632, %3761 ], [ %3632, %3844 ], [ %3952, %4026 ], [ %3632, %3620 ]
  %3753 = phi float [ %3633, %3761 ], [ %3633, %3844 ], [ %3979, %4026 ], [ %3633, %3620 ]
  %3754 = phi float [ %3634, %3761 ], [ %3634, %3844 ], [ %3976, %4026 ], [ %3634, %3620 ]
  %3755 = phi float [ %3635, %3761 ], [ %3635, %3844 ], [ %3973, %4026 ], [ %3635, %3620 ]
  %3756 = phi float [ %3636, %3761 ], [ %3636, %3844 ], [ %3967, %4026 ], [ %3636, %3620 ]
  %3757 = phi float [ %3637, %3761 ], [ %3637, %3844 ], [ %3962, %4026 ], [ %3637, %3620 ]
  %3758 = phi float [ %3638, %3761 ], [ %3638, %3844 ], [ %3963, %4026 ], [ %3638, %3620 ]
  %3759 = phi float [ %3639, %3761 ], [ %3639, %3844 ], [ %3964, %4026 ], [ %3639, %3620 ]
  %3760 = icmp eq i32 %3643, 0
  br i1 %3760, label %4039, label %3620

; <label>:3761                                    ; preds = %3620
  %3762 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3763 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3764 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3768 = extractvalue %dx.types.ResRet.i32 %3652, 3
  %3769 = extractvalue %dx.types.ResRet.i32 %3652, 2
  %3770 = bitcast float %3762 to i32
  %3771 = add i32 %3768, 0
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3771, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3772, %dx.types.Handle %3773, float %3701, float %3708, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = fmul fast float %3775, %3767
  %3777 = fadd fast float %3776, %3766
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = fmul fast float %3701, %3661
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3708, float %3779)  ; FMad(a,b,c)
  %3781 = fadd fast float %3780, %3765
  %3782 = fmul fast float %3701, %3663
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3708, float %3782)  ; FMad(a,b,c)
  %3784 = fadd fast float %3783, %3764
  %3785 = fmul fast float %3729, %3661
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3731, float %3785)  ; FMad(a,b,c)
  %3787 = fmul fast float %3729, %3663
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3731, float %3787)  ; FMad(a,b,c)
  %3789 = fmul fast float %3730, %3661
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3732, float %3789)  ; FMad(a,b,c)
  %3791 = fmul fast float %3730, %3663
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3732, float %3791)  ; FMad(a,b,c)
  %3793 = add i32 %3769, 0
  %3794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3794, %dx.types.Handle %3773, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = and i32 %3770, 1024
  %3798 = icmp ne i32 %3797, 0
  %3799 = fcmp fast ogt float %3796, 0x3FE0101020000000
  %3800 = uitofp i1 %3799 to float
  %3801 = select i1 %3798, float %3800, float %3796
  %3802 = and i32 %3770, 8192
  %3803 = icmp ne i32 %3802, 0
  %3804 = select i1 %3803, float %3763, float 1.000000e+00
  %3805 = fmul fast float %3701, 2.000000e+00
  %3806 = fadd fast float %3805, -1.000000e+00
  %3807 = call float @dx.op.unary.f32(i32 6, float %3806)  ; FAbs(value)
  %3808 = fmul fast float %3807, %3694
  %3809 = fsub fast float %3808, %3694
  %3810 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3811 = fmul fast float %3708, 2.000000e+00
  %3812 = fadd fast float %3811, -1.000000e+00
  %3813 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3814 = fmul fast float %3813, %3695
  %3815 = fsub fast float %3814, %3695
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fmul fast float %3720, %3657
  %3818 = fsub fast float %3817, %3657
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = fmul fast float %3778, %3804
  %3821 = fmul fast float %3820, %3775
  %3822 = fmul fast float %3821, %3810
  %3823 = fmul fast float %3822, %3801
  %3824 = fmul fast float %3823, %3816
  %3825 = fmul fast float %3824, %3819
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 1
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3829 = fsub fast float %3737, %3828
  %3830 = fmul fast float %3829, %3827
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = fmul fast float %3825, %3658
  %3833 = fadd fast float %3825, %3658
  %3834 = fmul fast float %3833, %3667
  %3835 = fsub fast float %3834, %3667
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = and i32 %3770, 128
  %3838 = icmp ne i32 %3837, 0
  %3839 = select i1 %3838, float %3836, float %3832
  %3840 = fmul fast float %3839, %3831
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = fcmp fast ugt float %3840, %3842
  br i1 %3843, label %3844, label %3741

; <label>:3844                                    ; preds = %3761
  %3845 = select i1 %3803, float %3840, float 0.000000e+00
  %3846 = fadd fast float %3845, %3622
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  br i1 %3803, label %3741, label %3848

; <label>:3848                                    ; preds = %3844
  %3849 = and i32 %3770, 4
  %3850 = and i32 %3770, 8
  %3851 = add i32 %3653, 0
  %3852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3851, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3852, %dx.types.Handle %3853, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = bitcast float %3679 to i32
  %3860 = and i32 %3859, 255
  %3861 = uitofp i32 %3860 to float
  %3862 = lshr i32 %3859, 8
  %3863 = and i32 %3862, 255
  %3864 = uitofp i32 %3863 to float
  %3865 = fmul fast float %3858, %3861
  %3866 = fadd fast float %3865, %3864
  %3867 = fmul fast float %3866, 0x3F70101000000000
  %3868 = add i32 %3654, 0
  %3869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3868, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3870 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3869, %dx.types.Handle %3853, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = bitcast float %3673 to i32
  %3876 = and i32 %3875, 255
  %3877 = uitofp i32 %3876 to float
  %3878 = lshr i32 %3875, 8
  %3879 = and i32 %3878, 255
  %3880 = uitofp i32 %3879 to float
  %3881 = lshr i32 %3875, 16
  %3882 = and i32 %3881, 255
  %3883 = uitofp i32 %3882 to float
  %3884 = fmul fast float %3883, 0x3F70101000000000
  %3885 = fmul fast float %3871, %3877
  %3886 = fadd fast float %3885, %3880
  %3887 = fmul fast float %3886, 0x3F70101000000000
  %3888 = fadd fast float %3872, -5.000000e-01
  %3889 = fadd fast float %3874, -5.000000e-01
  %3890 = fmul fast float %3888, %3884
  %3891 = fmul fast float %3889, %3884
  %3892 = fadd fast float %3890, 5.000000e-01
  %3893 = fadd fast float %3891, 5.000000e-01
  %3894 = fmul fast float %3855, %3682
  %3895 = fmul fast float %3856, %3683
  %3896 = fmul fast float %3857, %3684
  %3897 = fmul fast float %3892, 2.000000e+00
  %3898 = fadd fast float %3897, -1.000000e+00
  %3899 = fmul fast float %3893, 2.000000e+00
  %3900 = fadd fast float %3899, -1.000000e+00
  %3901 = fadd fast float %3898, %3900
  %3902 = fmul fast float %3901, 5.000000e-01
  %3903 = fsub fast float %3898, %3900
  %3904 = fmul fast float %3903, 5.000000e-01
  %3905 = call float @dx.op.unary.f32(i32 6, float %3902)  ; FAbs(value)
  %3906 = fsub fast float 1.000000e+00, %3905
  %3907 = call float @dx.op.unary.f32(i32 6, float %3904)  ; FAbs(value)
  %3908 = fsub fast float %3906, %3907
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3902, float %3904, float %3908, float %3902, float %3904, float %3908)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = call float @dx.op.unary.f32(i32 25, float %3909)  ; Rsqrt(value)
  %3911 = fmul fast float %3902, %3910
  %3912 = fmul fast float %3904, %3910
  %3913 = fmul fast float %3910, %3908
  %3914 = fmul fast float %3913, %3648
  %3915 = fmul fast float %3913, %3649
  %3916 = fmul fast float %3913, %3650
  %3917 = fmul fast float %3911, %3670
  %3918 = fmul fast float %3911, %3671
  %3919 = fmul fast float %3911, %3672
  %3920 = fadd fast float %3917, %3914
  %3921 = fadd fast float %3918, %3915
  %3922 = fadd fast float %3919, %3916
  %3923 = fmul fast float %3912, %3676
  %3924 = fmul fast float %3912, %3677
  %3925 = fmul fast float %3912, %3678
  %3926 = fadd fast float %3920, %3923
  %3927 = fadd fast float %3921, %3924
  %3928 = fadd fast float %3922, %3925
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float %3926, float %3927, float %3928)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = call float @dx.op.unary.f32(i32 25, float %3929)  ; Rsqrt(value)
  %3931 = fmul fast float %3926, %3930
  %3932 = fmul fast float %3927, %3930
  %3933 = fmul fast float %3928, %3930
  %3934 = icmp ne i32 %3850, 0
  %3935 = select i1 %3934, float 1.000000e+00, float 0.000000e+00
  %3936 = fmul fast float %3840, %3935
  %3937 = and i32 %3770, 1
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3939, label %3943

; <label>:3939                                    ; preds = %3848
  %3940 = fsub fast float %3931, %3630
  %3941 = fsub fast float %3932, %3631
  %3942 = fsub fast float %3933, %3632
  br label %3943

; <label>:3943                                    ; preds = %3939, %3848
  %3944 = phi float [ %3940, %3939 ], [ %3931, %3848 ]
  %3945 = phi float [ %3941, %3939 ], [ %3932, %3848 ]
  %3946 = phi float [ %3942, %3939 ], [ %3933, %3848 ]
  %3947 = fmul float %3946, %3936
  %3948 = fmul float %3945, %3936
  %3949 = fmul float %3944, %3936
  %3950 = fadd fast float %3949, %3630
  %3951 = fadd fast float %3948, %3631
  %3952 = fadd fast float %3947, %3632
  %3953 = icmp ne i32 %3849, 0
  %3954 = select i1 %3953, float 1.000000e+00, float 0.000000e+00
  %3955 = fmul fast float %3840, %3954
  %3956 = fsub fast float %3894, %3637
  %3957 = fsub fast float %3895, %3638
  %3958 = fsub fast float %3896, %3639
  %3959 = fmul fast float %3956, %3955
  %3960 = fmul fast float %3957, %3955
  %3961 = fmul fast float %3958, %3955
  %3962 = fadd fast float %3959, %3637
  %3963 = fadd fast float %3960, %3638
  %3964 = fadd fast float %3961, %3639
  %3965 = fsub fast float %3867, %3636
  %3966 = fmul fast float %3965, %3955
  %3967 = fadd fast float %3966, %3636
  %3968 = fmul fast float %3955, %3626
  %3969 = fsub fast float %3626, %3968
  %3970 = fmul fast float %3955, %3625
  %3971 = fsub fast float %3625, %3970
  %3972 = fadd fast float %3840, %3635
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fsub fast float %3887, %3634
  %3975 = fmul fast float %3974, %3936
  %3976 = fadd fast float %3975, %3634
  %3977 = fsub fast float %3873, %3633
  %3978 = fmul fast float %3977, %3936
  %3979 = fadd fast float %3978, %3633
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3984 = fmul fast float %3983, %3980
  %3985 = fadd fast float %3984, %3982
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = bitcast float %3685 to i32
  %3988 = and i32 %3987, 65535
  %3989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3988)  ; LegacyF16ToF32(value)
  %3990 = lshr i32 %3987, 16
  %3991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3990)  ; LegacyF16ToF32(value)
  %3992 = fcmp fast oge float %3989, 0.000000e+00
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = select i1 %3992, float %3989, float %3994
  %3996 = fadd fast float %3995, %3991
  %3997 = fsub fast float %3986, %3624
  %3998 = fmul fast float %3997, %3840
  %3999 = fadd fast float %3998, %3624
  %4000 = fmul fast float %3996, %3840
  %4001 = call float @dx.op.binary.f32(i32 35, float %3623, float %4000)  ; FMax(a,b)
  %4002 = and i32 %3770, 16
  %4003 = icmp eq i32 %4002, 0
  br i1 %4003, label %4026, label %4004

; <label>:4004                                    ; preds = %3943
  %4005 = bitcast float %3691 to i32
  %4006 = add i32 %3688, 0
  %4007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4006, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4008 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4007, %dx.types.Handle %3853, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = and i32 %4005, 65535
  %4013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4012)  ; LegacyF16ToF32(value)
  %4014 = fmul fast float %4009, %3682
  %4015 = fmul fast float %4010, %3683
  %4016 = fmul fast float %4011, %3684
  %4017 = and i32 %3770, 16384
  %4018 = icmp ne i32 %4017, 0
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = select i1 %4018, float %4020, float 1.000000e+00
  %4022 = fmul fast float %4021, %4013
  %4023 = fmul fast float %4014, %4022
  %4024 = fmul fast float %4015, %4022
  %4025 = fmul fast float %4016, %4022
  br label %4026

; <label>:4026                                    ; preds = %4004, %3943
  %4027 = phi float [ %4023, %4004 ], [ 0.000000e+00, %3943 ]
  %4028 = phi float [ %4024, %4004 ], [ 0.000000e+00, %3943 ]
  %4029 = phi float [ %4025, %4004 ], [ 0.000000e+00, %3943 ]
  %4030 = fsub fast float %4027, %3627
  %4031 = fsub fast float %4028, %3628
  %4032 = fsub fast float %4029, %3629
  %4033 = fmul fast float %4030, %3840
  %4034 = fmul fast float %4031, %3840
  %4035 = fmul fast float %4032, %3840
  %4036 = fadd fast float %4033, %3627
  %4037 = fadd fast float %4034, %3628
  %4038 = fadd fast float %4035, %3629
  br label %3741

; <label>:4039                                    ; preds = %3741
  br label %4040

; <label>:4040                                    ; preds = %4039, %3557
  %4041 = phi float [ 0.000000e+00, %3557 ], [ %3742, %4039 ]
  %4042 = phi float [ %3501, %3557 ], [ %3743, %4039 ]
  %4043 = phi float [ %3480, %3557 ], [ %3744, %4039 ]
  %4044 = phi float [ 0.000000e+00, %3557 ], [ %3745, %4039 ]
  %4045 = phi float [ 0.000000e+00, %3557 ], [ %3746, %4039 ]
  %4046 = phi float [ %3523, %3557 ], [ %3747, %4039 ]
  %4047 = phi float [ %3525, %3557 ], [ %3748, %4039 ]
  %4048 = phi float [ %3527, %3557 ], [ %3749, %4039 ]
  %4049 = phi float [ %3553, %3557 ], [ %3750, %4039 ]
  %4050 = phi float [ %3554, %3557 ], [ %3751, %4039 ]
  %4051 = phi float [ %3555, %3557 ], [ %3752, %4039 ]
  %4052 = phi float [ %3479, %3557 ], [ %3753, %4039 ]
  %4053 = phi float [ %3478, %3557 ], [ %3754, %4039 ]
  %4054 = phi float [ 0.000000e+00, %3557 ], [ %3755, %4039 ]
  %4055 = phi float [ %3477, %3557 ], [ %3756, %4039 ]
  %4056 = phi float [ %3508, %3557 ], [ %3757, %4039 ]
  %4057 = phi float [ %3509, %3557 ], [ %3758, %4039 ]
  %4058 = phi float [ %3510, %3557 ], [ %3759, %4039 ]
  %4059 = call float @dx.op.dot3.f32(i32 55, float %4049, float %4050, float %4051, float %4049, float %4050, float %4051)  ; Dot3(ax,ay,az,bx,by,bz)
  %4060 = call float @dx.op.unary.f32(i32 25, float %4059)  ; Rsqrt(value)
  %4061 = fmul fast float %4060, %4049
  %4062 = fmul fast float %4060, %4050
  %4063 = fmul fast float %4060, %4051
  %4064 = fadd fast float %4054, %1260
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4066 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float %4061, float %4062, float %4063)  ; Dot3(ax,ay,az,bx,by,bz)
  %4067 = call float @dx.op.unary.f32(i32 25, float %4066)  ; Rsqrt(value)
  %4068 = fmul fast float %4067, %4061
  %4069 = fmul fast float %4067, %4062
  %4070 = fmul fast float %4067, %4063
  br label %4071

; <label>:4071                                    ; preds = %4040, %3468
  %4072 = phi float [ %4068, %4040 ], [ %3553, %3468 ]
  %4073 = phi float [ %4069, %4040 ], [ %3554, %3468 ]
  %4074 = phi float [ %4070, %4040 ], [ %3555, %3468 ]
  %4075 = phi float [ %4046, %4040 ], [ %3523, %3468 ]
  %4076 = phi float [ %4047, %4040 ], [ %3525, %3468 ]
  %4077 = phi float [ %4048, %4040 ], [ %3527, %3468 ]
  %4078 = phi float [ %4056, %4040 ], [ %3508, %3468 ]
  %4079 = phi float [ %4057, %4040 ], [ %3509, %3468 ]
  %4080 = phi float [ %4058, %4040 ], [ %3510, %3468 ]
  %4081 = phi float [ %4055, %4040 ], [ %3477, %3468 ]
  %4082 = phi float [ %4065, %4040 ], [ %1260, %3468 ]
  %4083 = phi float [ %4053, %4040 ], [ %3478, %3468 ]
  %4084 = phi float [ %4052, %4040 ], [ %3479, %3468 ]
  %4085 = phi float [ %4045, %4040 ], [ 0.000000e+00, %3468 ]
  %4086 = phi float [ %4044, %4040 ], [ 0.000000e+00, %3468 ]
  %4087 = phi float [ %4041, %4040 ], [ 0.000000e+00, %3468 ]
  %4088 = phi float [ %4042, %4040 ], [ %3501, %3468 ]
  %4089 = phi float [ %4043, %4040 ], [ %3480, %3468 ]
  %4090 = fadd fast float %4081, 0xBFB99999A0000000
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %4091, 0x3FF1C71C80000000
  %4093 = call float @dx.op.binary.f32(i32 36, float %4081, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4094 = fsub fast float 1.000000e+00, %4092
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4096 = fmul fast float %4095, %4078
  %4097 = fmul fast float %4095, %4079
  %4098 = fmul fast float %4095, %4080
  %4099 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4100 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4102 = fmul fast float %4092, %4078
  %4103 = fmul fast float %4092, %4079
  %4104 = fmul fast float %4092, %4080
  %4105 = fadd fast float %4102, %4093
  %4106 = fadd fast float %4103, %4093
  %4107 = fadd fast float %4104, %4093
  %4108 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4109 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.i32 %4112, 3
  %4114 = and i32 %4113, 8
  %4115 = icmp ne i32 %4114, 0
  %4116 = call float @dx.op.binary.f32(i32 35, float %4099, float %4078)  ; FMax(a,b)
  %4117 = call float @dx.op.binary.f32(i32 35, float %4100, float %4078)  ; FMax(a,b)
  %4118 = call float @dx.op.binary.f32(i32 35, float %4101, float %4078)  ; FMax(a,b)
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4099, float %4100, float %4101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = select i1 %269, float %4078, float %4099
  %4121 = select i1 %269, float %4119, float %4100
  %4122 = select i1 %269, float 1.000000e+00, float %4101
  %4123 = select i1 %4115, float %4116, float %4120
  %4124 = select i1 %4115, float %4117, float %4121
  %4125 = select i1 %4115, float %4118, float %4122
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %4130 = fadd fast float %4127, %197
  %4131 = fadd fast float %4128, %198
  %4132 = fadd fast float %4129, %199
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = fsub fast float %4130, %4134
  %4137 = fsub fast float %4131, %4135
  %4138 = fmul fast float %4136, %4136
  %4139 = fmul fast float %4137, %4137
  %4140 = fadd fast float %4138, %4139
  %4141 = call float @dx.op.unary.f32(i32 24, float %4140)  ; Sqrt(value)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4143 = fcmp fast olt float %4141, %4142
  br i1 %4143, label %4144, label %4211

; <label>:4144                                    ; preds = %4071
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4153 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4155 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4156 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4157 = fadd fast float %4154, %4130
  %4158 = fadd fast float %4155, %4131
  %4159 = fadd fast float %4156, %4132
  %4160 = fmul fast float %4157, %4146
  %4161 = call float @dx.op.tertiary.f32(i32 46, float %4158, float %4148, float %4160)  ; FMad(a,b,c)
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4159, float %4150, float %4161)  ; FMad(a,b,c)
  %4163 = fmul fast float %4157, %4151
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4158, float %4152, float %4163)  ; FMad(a,b,c)
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4159, float %4153, float %4164)  ; FMad(a,b,c)
  %4166 = fsub fast float %4162, %4154
  %4167 = fsub fast float %4165, %4155
  %4168 = fsub fast float %4166, %4134
  %4169 = fadd fast float %4168, %4142
  %4170 = fsub fast float %4167, %4135
  %4171 = fadd fast float %4170, %4142
  %4172 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4173 = fmul fast float %4169, %4172
  %4174 = fmul fast float %4171, %4172
  %4175 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4176 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4177 = fsub fast float 1.000000e+00, %4175
  %4178 = fsub fast float 1.000000e+00, %4176
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4177, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = fcmp fast ugt float %4180, 0.000000e+00
  br i1 %4181, label %4182, label %4485

; <label>:4182                                    ; preds = %4144
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4185 = fmul fast float %4184, %4180
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4187 = fadd fast float %4186, %4185
  %4188 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4189 = fadd fast float %4187, %4156
  %4190 = fmul fast float %4162, %4150
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4153, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4188, float %4191)  ; FMad(a,b,c)
  %4193 = fsub fast float %4192, %4156
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4196 = fsub fast float %4193, %4195
  %4197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4177, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4177, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4205 = fadd fast float %4202, %4198
  %4206 = fmul fast float %4205, 0x3F847AE140000000
  %4207 = fadd fast float %4203, %4199
  %4208 = fmul fast float %4207, 0x3F847AE140000000
  %4209 = fadd fast float %4204, %4200
  %4210 = fmul fast float %4209, 0x3F847AE140000000
  br label %4485

; <label>:4211                                    ; preds = %4071
  %4212 = and i32 %248, 1
  %4213 = icmp eq i32 %4212, 0
  br i1 %4213, label %4485, label %4214

; <label>:4214                                    ; preds = %4211
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4224 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4225 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4226 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4227 = fadd fast float %4224, %4130
  %4228 = fadd fast float %4225, %4131
  %4229 = fadd fast float %4226, %4132
  %4230 = fmul fast float %4227, %4216
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4218, float %4230)  ; FMad(a,b,c)
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4220, float %4231)  ; FMad(a,b,c)
  %4233 = fmul fast float %4227, %4221
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4222, float %4233)  ; FMad(a,b,c)
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4223, float %4234)  ; FMad(a,b,c)
  %4236 = fsub fast float %4232, %4224
  %4237 = fsub fast float %4235, %4225
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.CBufRet.f32 %4238, 1
  %4241 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4242 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.i32 %4245, 0
  %4247 = extractvalue %dx.types.CBufRet.i32 %4245, 1
  %4248 = udiv i32 %4247, %4246
  %4249 = fsub fast float %4236, %4239
  %4250 = fsub fast float %4237, %4240
  %4251 = call float @dx.op.binary.f32(i32 35, float %4249, float 0.000000e+00)  ; FMax(a,b)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4250, float 0.000000e+00)  ; FMax(a,b)
  %4253 = call float @dx.op.binary.f32(i32 36, float %4251, float %4241)  ; FMin(a,b)
  %4254 = call float @dx.op.binary.f32(i32 36, float %4252, float %4242)  ; FMin(a,b)
  %4255 = add i32 %4246, -1
  %4256 = add i32 %4248, -1
  %4257 = fmul fast float %4253, %4244
  %4258 = fmul fast float %4254, %4244
  %4259 = fptoui float %4257 to i32
  %4260 = fptoui float %4258 to i32
  %4261 = call i32 @dx.op.binary.i32(i32 40, i32 %4259, i32 %4255)  ; UMin(a,b)
  %4262 = call i32 @dx.op.binary.i32(i32 40, i32 %4260, i32 %4256)  ; UMin(a,b)
  %4263 = mul i32 %4262, %4246
  %4264 = add i32 %4263, %4261
  %4265 = shl i32 %4264, 2
  %4266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4265, i32 undef)  ; BufferLoad(srv,index,wot)
  %4267 = extractvalue %dx.types.ResRet.i32 %4266, 0
  %4268 = icmp eq i32 %4267, -1
  br i1 %4268, label %4485, label %4269

; <label>:4269                                    ; preds = %4214
  %4270 = mul i32 %4267, 148
  %4271 = add i32 %4270, 4
  %4272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = add i32 %4270, 8
  %4275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4274, i32 undef)  ; BufferLoad(srv,index,wot)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = add i32 %4270, 36
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = add i32 %4270, 60
  %4281 = add i32 %4270, 92
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = add i32 %4270, 116
  %4285 = fsub fast float %4236, %4273
  %4286 = fsub fast float %4237, %4276
  %4287 = fmul fast float %4244, %4285
  %4288 = fmul fast float %4244, %4286
  %4289 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4291 = fsub fast float 1.000000e+00, %4290
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 2
  %4294 = call float @dx.op.unary.f32(i32 83, float %4289)  ; DerivCoarseX(value)
  %4295 = call float @dx.op.unary.f32(i32 83, float %4291)  ; DerivCoarseX(value)
  %4296 = call float @dx.op.unary.f32(i32 84, float %4289)  ; DerivCoarseY(value)
  %4297 = call float @dx.op.unary.f32(i32 84, float %4291)  ; DerivCoarseY(value)
  %4298 = fmul fast float %4294, %4293
  %4299 = fmul fast float %4295, %4293
  %4300 = fmul fast float %4296, %4293
  %4301 = fmul fast float %4297, %4293
  %4302 = call float @dx.op.dot2.f32(i32 54, float %4300, float %4301, float %4300, float %4301)  ; Dot2(ax,ay,bx,by)
  %4303 = call float @dx.op.dot2.f32(i32 54, float %4298, float %4299, float %4298, float %4299)  ; Dot2(ax,ay,bx,by)
  %4304 = call float @dx.op.binary.f32(i32 35, float %4303, float %4302)  ; FMax(a,b)
  %4305 = call float @dx.op.unary.f32(i32 23, float %4304)  ; Log(value)
  %4306 = fmul fast float %4305, 5.000000e-01
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4309 = fadd fast float %4308, %4306
  %4310 = call float @dx.op.binary.f32(i32 35, float %4309, float 0.000000e+00)  ; FMax(a,b)
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4313 = fadd fast float %4312, %4310
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4316 = fadd fast float %4313, %4315
  %4317 = add i32 %4283, 0
  %4318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4317, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4319 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4318, i32 0)  ; GetDimensions(handle,mipLevel)
  %4320 = extractvalue %dx.types.Dimensions %4319, 0
  %4321 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4320)  ; FirstbitLo(value)
  %4322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.i32 %4322, 1
  %4324 = sub nsw i32 %4323, %4321
  %4325 = sitofp i32 %4324 to float
  %4326 = fsub fast float %4316, %4325
  %4327 = call float @dx.op.binary.f32(i32 35, float %4326, float 0.000000e+00)  ; FMax(a,b)
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4318, %dx.types.Handle %48, float %4289, float %4291, float %4279, float undef, i32 0, i32 0, i32 undef, float %4327)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = fcmp ule float %4329, 0x3FE0101020000000
  %4331 = extractvalue %dx.types.CBufRet.i32 %4322, 0
  %4332 = and i32 %4331, 128
  %4333 = icmp ne i32 %4332, 0
  %4334 = and i1 %4330, %4333
  br i1 %4334, label %4485, label %4335

; <label>:4335                                    ; preds = %4269
  %4336 = add i32 %4270, 20
  %4337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4336, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = add i32 %4270, 24
  %4340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.f32 %4340, 0
  %4342 = add i32 %4270, 40
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = add i32 %4270, 96
  %4346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.i32 %4346, 0
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4350 = fmul fast float %4349, %4289
  %4351 = fmul fast float %4349, %4291
  %4352 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4353 = fadd fast float %4350, %4352
  %4354 = fadd fast float %4351, %4352
  %4355 = add i32 %4347, 0
  %4356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4355, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4357 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4356, i32 0)  ; GetDimensions(handle,mipLevel)
  %4358 = extractvalue %dx.types.Dimensions %4357, 0
  %4359 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4358)  ; FirstbitLo(value)
  %4360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.i32 %4360, 1
  %4362 = sub nsw i32 %4361, %4359
  %4363 = sitofp i32 %4362 to float
  %4364 = fsub fast float %4313, %4363
  %4365 = call float @dx.op.binary.f32(i32 35, float %4364, float 0.000000e+00)  ; FMax(a,b)
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4356, %dx.types.Handle %48, float %4353, float %4354, float %4344, float undef, i32 0, i32 0, i32 undef, float %4365)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = fmul fast float %4367, %4338
  %4369 = fadd fast float %4368, %4341
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4373 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4378 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4379 = fadd fast float %4375, %4236
  %4380 = fadd fast float %4377, %4237
  %4381 = fadd fast float %4369, %4378
  %4382 = fmul fast float %4379, %4371
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4372, float %4382)  ; FMad(a,b,c)
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4373, float %4383)  ; FMad(a,b,c)
  %4385 = fsub fast float %4384, %4378
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 2
  %4388 = fsub fast float %4385, %4387
  %4389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.i32 %4389, 0
  %4391 = call i32 @dx.op.binary.i32(i32 40, i32 %4267, i32 %4390)  ; UMin(a,b)
  %4392 = mul i32 %4391, 36
  %4393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.i32 %4393, 0
  %4395 = add i32 %4392, 4
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = fmul fast float %4397, %4289
  %4399 = fmul fast float %4397, %4291
  %4400 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4401 = fadd fast float %4398, %4400
  %4402 = fadd fast float %4399, %4400
  %4403 = icmp eq i32 %4394, 0
  br i1 %4403, label %4472, label %4404

; <label>:4404                                    ; preds = %4335
  br label %4405

; <label>:4405                                    ; preds = %4462, %4404
  %4406 = phi float [ %4463, %4462 ], [ 0.000000e+00, %4404 ]
  %4407 = phi float [ %4464, %4462 ], [ 0.000000e+00, %4404 ]
  %4408 = phi float [ %4465, %4462 ], [ 0.000000e+00, %4404 ]
  %4409 = phi float [ %4466, %4462 ], [ 0.000000e+00, %4404 ]
  %4410 = phi float [ %4467, %4462 ], [ 0.000000e+00, %4404 ]
  %4411 = phi float [ %4468, %4462 ], [ 0.000000e+00, %4404 ]
  %4412 = phi i32 [ %4469, %4462 ], [ 0, %4404 ]
  %4413 = shl i32 %4412, 2
  %4414 = add i32 %4280, %4413
  %4415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = add i32 %4284, %4413
  %4418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.i32 %4418, 0
  %4420 = add i32 %4419, 0
  %4421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4420, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4422 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4421, i32 0)  ; GetDimensions(handle,mipLevel)
  %4423 = extractvalue %dx.types.Dimensions %4422, 0
  %4424 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4423)  ; FirstbitLo(value)
  %4425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.i32 %4425, 1
  %4427 = sub nsw i32 %4426, %4424
  %4428 = sitofp i32 %4427 to float
  %4429 = fsub fast float %4313, %4428
  %4430 = call float @dx.op.binary.f32(i32 35, float %4429, float 0.000000e+00)  ; FMax(a,b)
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4421, %dx.types.Handle %48, float %4401, float %4402, float %4416, float undef, i32 0, i32 0, i32 undef, float %4430)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = fcmp fast ogt float %4432, 0.000000e+00
  br i1 %4433, label %4434, label %4462

; <label>:4434                                    ; preds = %4405
  %4435 = add i32 %4395, %4413
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = and i32 %4437, 32767
  %4439 = mul nuw nsw i32 %4438, 928
  %4440 = add nuw nsw i32 %4439, 48
  %4441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.f32 %4441, 0
  %4443 = extractvalue %dx.types.ResRet.f32 %4441, 1
  %4444 = extractvalue %dx.types.ResRet.f32 %4441, 2
  %4445 = add nuw nsw i32 %4439, 60
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = fmul fast float %4442, %4432
  %4451 = fmul fast float %4443, %4432
  %4452 = fmul fast float %4444, %4432
  %4453 = fadd fast float %4450, %4406
  %4454 = fadd fast float %4451, %4407
  %4455 = fadd fast float %4452, %4408
  %4456 = fmul fast float %4447, %4432
  %4457 = fmul fast float %4448, %4432
  %4458 = fmul fast float %4449, %4432
  %4459 = fadd fast float %4456, %4409
  %4460 = fadd fast float %4457, %4410
  %4461 = fadd fast float %4458, %4411
  br label %4462

; <label>:4462                                    ; preds = %4434, %4405
  %4463 = phi float [ %4453, %4434 ], [ %4406, %4405 ]
  %4464 = phi float [ %4454, %4434 ], [ %4407, %4405 ]
  %4465 = phi float [ %4455, %4434 ], [ %4408, %4405 ]
  %4466 = phi float [ %4459, %4434 ], [ %4409, %4405 ]
  %4467 = phi float [ %4460, %4434 ], [ %4410, %4405 ]
  %4468 = phi float [ %4461, %4434 ], [ %4411, %4405 ]
  %4469 = add nuw i32 %4412, 1
  %4470 = icmp eq i32 %4469, %4394
  br i1 %4470, label %4471, label %4405

; <label>:4471                                    ; preds = %4462
  br label %4472

; <label>:4472                                    ; preds = %4471, %4335
  %4473 = phi float [ 0.000000e+00, %4335 ], [ %4463, %4471 ]
  %4474 = phi float [ 0.000000e+00, %4335 ], [ %4464, %4471 ]
  %4475 = phi float [ 0.000000e+00, %4335 ], [ %4465, %4471 ]
  %4476 = phi float [ 0.000000e+00, %4335 ], [ %4466, %4471 ]
  %4477 = phi float [ 0.000000e+00, %4335 ], [ %4467, %4471 ]
  %4478 = phi float [ 0.000000e+00, %4335 ], [ %4468, %4471 ]
  %4479 = fadd fast float %4476, %4473
  %4480 = fmul fast float %4479, 0x3F847AE140000000
  %4481 = fadd fast float %4477, %4474
  %4482 = fmul fast float %4481, 0x3F847AE140000000
  %4483 = fadd fast float %4478, %4475
  %4484 = fmul fast float %4483, 0x3F847AE140000000
  br label %4485

; <label>:4485                                    ; preds = %4472, %4269, %4214, %4211, %4182, %4144
  %4486 = phi float [ %4196, %4182 ], [ -1.310720e+05, %4144 ], [ %4388, %4472 ], [ -1.310720e+05, %4214 ], [ -1.310720e+05, %4269 ], [ -1.310720e+05, %4211 ]
  %4487 = phi float [ %4206, %4182 ], [ 0.000000e+00, %4144 ], [ %4480, %4472 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4269 ], [ 0.000000e+00, %4211 ]
  %4488 = phi float [ %4208, %4182 ], [ 0.000000e+00, %4144 ], [ %4482, %4472 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4269 ], [ 0.000000e+00, %4211 ]
  %4489 = phi float [ %4210, %4182 ], [ 0.000000e+00, %4144 ], [ %4484, %4472 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4269 ], [ 0.000000e+00, %4211 ]
  %4490 = phi i1 [ true, %4182 ], [ false, %4144 ], [ true, %4472 ], [ false, %4214 ], [ false, %4269 ], [ false, %4211 ]
  %4491 = and i32 %248, 3
  %4492 = icmp eq i32 %4491, 1
  %4493 = select i1 %4492, float 1.000000e+00, float 0.000000e+00
  %4494 = fsub fast float %4486, %199
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = select i1 %4490, float %4495, float 1.000000e+00
  %4497 = fmul fast float %4496, %4493
  %4498 = icmp eq i32 %4491, 3
  %4499 = select i1 %4498, float 1.000000e+00, float %4497
  %4500 = call float @dx.op.binary.f32(i32 35, float %4087, float %4499)  ; FMax(a,b)
  %4501 = fcmp fast olt float %4499, 1.000000e+00
  %4502 = fcmp uge float %74, 0.000000e+00
  %4503 = and i1 %4502, %4501
  br i1 %4503, label %4504, label %4514

; <label>:4504                                    ; preds = %4485
  %4505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = extractvalue %dx.types.ResRet.f32 %4505, 1
  %4508 = extractvalue %dx.types.ResRet.f32 %4505, 2
  %4509 = fadd fast float %4506, %4500
  %4510 = fcmp ule float %73, 0.000000e+00
  %4511 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4512 = select i1 %4510, float %4511, float 1.000000e+00
  %4513 = fmul fast float %4512, %4508
  br label %4514

; <label>:4514                                    ; preds = %4504, %4485
  %4515 = phi float [ %4509, %4504 ], [ %4500, %4485 ]
  %4516 = phi float [ %4507, %4504 ], [ 0.000000e+00, %4485 ]
  %4517 = phi float [ %4513, %4504 ], [ 0.000000e+00, %4485 ]
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = fcmp fast une float %4519, 0.000000e+00
  %4522 = fcmp fast une float %4520, 0.000000e+00
  %4523 = or i1 %4521, %4522
  br i1 %4523, label %4524, label %5083

; <label>:4524                                    ; preds = %4514
  br i1 %4521, label %4525, label %4798

; <label>:4525                                    ; preds = %4524
  %4526 = call float @dx.op.unary.f32(i32 23, float %4084)  ; Log(value)
  %4527 = fmul fast float %4526, 4.000000e+00
  %4528 = call float @dx.op.unary.f32(i32 21, float %4527)  ; Exp(value)
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = fmul fast float %4530, %60
  %4532 = fmul fast float %4530, %61
  %4533 = fmul fast float %4530, %62
  %4534 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4535 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4536 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4537 = call float @dx.op.unary.f32(i32 23, float %4534)  ; Log(value)
  %4538 = call float @dx.op.unary.f32(i32 23, float %4535)  ; Log(value)
  %4539 = call float @dx.op.unary.f32(i32 23, float %4536)  ; Log(value)
  %4540 = fmul fast float %4537, 4.000000e+00
  %4541 = fmul fast float %4538, 4.000000e+00
  %4542 = fmul fast float %4539, 4.000000e+00
  %4543 = call float @dx.op.unary.f32(i32 21, float %4540)  ; Exp(value)
  %4544 = call float @dx.op.unary.f32(i32 21, float %4541)  ; Exp(value)
  %4545 = call float @dx.op.unary.f32(i32 21, float %4542)  ; Exp(value)
  %4546 = fadd fast float %4544, %4543
  %4547 = fadd fast float %4546, %4545
  %4548 = fdiv fast float 1.000000e+00, %4547
  %4549 = fmul fast float %4548, %4543
  %4550 = fcmp fast ogt float %70, 0.000000e+00
  %4551 = fcmp fast ogt float %71, 0.000000e+00
  %4552 = fcmp fast ogt float %72, 0.000000e+00
  %4553 = fcmp fast olt float %70, 0.000000e+00
  %4554 = fcmp fast olt float %71, 0.000000e+00
  %4555 = fcmp fast olt float %72, 0.000000e+00
  %4556 = zext i1 %4550 to i32
  %4557 = zext i1 %4551 to i32
  %4558 = zext i1 %4552 to i32
  %4559 = zext i1 %4553 to i32
  %4560 = zext i1 %4554 to i32
  %4561 = zext i1 %4555 to i32
  %4562 = sub nsw i32 %4556, %4559
  %4563 = sub nsw i32 %4557, %4560
  %4564 = sub nsw i32 %4558, %4561
  %4565 = call float @dx.op.unary.f32(i32 83, float %4531)  ; DerivCoarseX(value)
  %4566 = call float @dx.op.unary.f32(i32 83, float %4532)  ; DerivCoarseX(value)
  %4567 = call float @dx.op.unary.f32(i32 83, float %4533)  ; DerivCoarseX(value)
  %4568 = call float @dx.op.unary.f32(i32 84, float %4531)  ; DerivCoarseY(value)
  %4569 = call float @dx.op.unary.f32(i32 84, float %4532)  ; DerivCoarseY(value)
  %4570 = call float @dx.op.unary.f32(i32 84, float %4533)  ; DerivCoarseY(value)
  %4571 = fcmp fast ole float %280, %4549
  %4572 = fmul fast float %4548, %4546
  %4573 = fcmp fast ole float %280, %4572
  %4574 = select i1 %4573, float %4533, float %4531
  %4575 = select i1 %4573, float %4531, float %4532
  %4576 = select i1 %4571, float %4532, float %4574
  %4577 = select i1 %4571, float %4533, float %4575
  %4578 = select i1 %4573, float %4567, float %4565
  %4579 = select i1 %4573, float %4565, float %4566
  %4580 = select i1 %4571, float %4566, float %4578
  %4581 = select i1 %4571, float %4567, float %4579
  %4582 = select i1 %4573, float %4570, float %4568
  %4583 = select i1 %4573, float %4568, float %4569
  %4584 = select i1 %4571, float %4569, float %4582
  %4585 = select i1 %4571, float %4570, float %4583
  %4586 = call float @dx.op.unary.f32(i32 27, float %4576)  ; Round_ni(value)
  %4587 = call float @dx.op.unary.f32(i32 27, float %4577)  ; Round_ni(value)
  %4588 = fptosi float %4586 to i32
  %4589 = fptosi float %4587 to i32
  %4590 = xor i32 %4589, %4588
  %4591 = sitofp i32 %4590 to float
  %4592 = fptosi float %4591 to i32
  %4593 = sitofp i32 %4592 to float
  %4594 = fmul fast float %4593, 0x3FE3C6EF40000000
  %4595 = frem fast float %4586, 2.560000e+02
  %4596 = frem fast float %4587, 2.560000e+02
  %4597 = fptoui float %4595 to i32
  %4598 = fptoui float %4596 to i32
  %4599 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4597, i32 %4598, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = fadd fast float %4600, %4594
  %4604 = fadd fast float %4601, %4594
  %4605 = fadd fast float %4602, %4594
  %4606 = call float @dx.op.unary.f32(i32 22, float %4603)  ; Frc(value)
  %4607 = call float @dx.op.unary.f32(i32 22, float %4604)  ; Frc(value)
  %4608 = call float @dx.op.unary.f32(i32 22, float %4605)  ; Frc(value)
  %4609 = fmul fast float %4608, 0x401921FB60000000
  %4610 = call float @dx.op.unary.f32(i32 13, float %4609)  ; Sin(value)
  %4611 = call float @dx.op.unary.f32(i32 12, float %4609)  ; Cos(value)
  %4612 = fsub fast float -0.000000e+00, %4611
  %4613 = fmul fast float %4611, %4576
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4577, float %4613)  ; FMad(a,b,c)
  %4615 = fmul fast float %4610, %4576
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4577, float %4615)  ; FMad(a,b,c)
  %4617 = fadd fast float %4614, %4606
  %4618 = fadd fast float %4616, %4607
  %4619 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4620 = bitcast float %4619 to i32
  %4621 = icmp eq i32 %4620, 0
  br i1 %4621, label %4660, label %4622

; <label>:4622                                    ; preds = %4525
  %4623 = add i32 %4620, 0
  %4624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4625 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4624, %dx.types.Handle %107, float %4617, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float %4580, float %4581, float undef, float %4584, float %4585, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 1
  %4629 = extractvalue %dx.types.CBufRet.f32 %4627, 2
  %4630 = fsub fast float 1.000000e+00, %4519
  %4631 = call float @dx.op.binary.f32(i32 35, float %4630, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4632 = bitcast float %4519 to i32
  %4633 = sitofp i32 %4632 to float
  %4634 = fadd fast float %4633, 0xC1CFBF8940000000
  %4635 = fmul fast float %4629, %4634
  %4636 = fadd fast float %4635, 0x41CFBF8940000000
  %4637 = fptosi float %4636 to i32
  %4638 = bitcast i32 %4637 to float
  %4639 = bitcast float %4631 to i32
  %4640 = sitofp i32 %4639 to float
  %4641 = fadd fast float %4640, 0xC1CFBF8940000000
  %4642 = fmul fast float %4641, %4629
  %4643 = fadd fast float %4642, 0x41CFBF8940000000
  %4644 = fptosi float %4643 to i32
  %4645 = bitcast i32 %4644 to float
  %4646 = fmul fast float %4638, %4628
  %4647 = fmul fast float %4645, %4628
  %4648 = fsub fast float %4631, %4646
  %4649 = fadd fast float %4647, %4631
  %4650 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4652 = fsub fast float %4626, %4650
  %4653 = fsub fast float %4651, %4650
  %4654 = bitcast float %4653 to i32
  %4655 = sub nsw i32 2129859010, %4654
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4656, %4652
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fcmp fast olt float %4658, 0x3F70101020000000
  br i1 %4659, label %4798, label %4660

; <label>:4660                                    ; preds = %4622, %4525
  %4661 = phi float [ %4658, %4622 ], [ %4519, %4525 ]
  %4662 = fmul fast float %4661, %4528
  %4663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.i32 %4663, 1
  %4665 = extractvalue %dx.types.CBufRet.i32 %4663, 0
  %4666 = add i32 %4665, 0
  %4667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4668 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4667, %dx.types.Handle %106, float %4617, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float %4580, float %4581, float undef, float %4584, float %4585, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4668, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4668, 3
  %4673 = and i32 %4664, 255
  %4674 = uitofp i32 %4673 to float
  %4675 = lshr i32 %4664, 8
  %4676 = and i32 %4675, 255
  %4677 = uitofp i32 %4676 to float
  %4678 = fmul fast float %4672, %4674
  %4679 = fadd fast float %4678, %4677
  %4680 = fmul fast float %4679, 0x3F70101000000000
  %4681 = fadd fast float %4680, 0xBFB99999A0000000
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4682, 0x3FF1C71C80000000
  %4684 = call float @dx.op.binary.f32(i32 36, float %4680, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4685 = fsub fast float 1.000000e+00, %4683
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fmul fast float %4686, %4669
  %4688 = fmul fast float %4686, %4670
  %4689 = fmul fast float %4686, %4671
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4692 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4693 = fmul fast float %4683, %4669
  %4694 = fmul fast float %4683, %4670
  %4695 = fmul fast float %4683, %4671
  %4696 = fadd fast float %4693, %4684
  %4697 = fadd fast float %4694, %4684
  %4698 = fadd fast float %4695, %4684
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4701 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.i32 %4702, 3
  %4704 = extractvalue %dx.types.CBufRet.i32 %4702, 2
  %4705 = add i32 %4704, 0
  %4706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4706, %dx.types.Handle %106, float %4617, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float %4580, float %4581, float undef, float %4584, float %4585, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = extractvalue %dx.types.ResRet.f32 %4707, 3
  %4712 = and i32 %4703, 255
  %4713 = uitofp i32 %4712 to float
  %4714 = lshr i32 %4703, 8
  %4715 = and i32 %4714, 255
  %4716 = uitofp i32 %4715 to float
  %4717 = lshr i32 %4703, 16
  %4718 = and i32 %4717, 255
  %4719 = uitofp i32 %4718 to float
  %4720 = fmul fast float %4719, 0x3F70101000000000
  %4721 = fmul fast float %4708, %4713
  %4722 = fadd fast float %4721, %4716
  %4723 = fmul fast float %4722, 0x3F70101000000000
  %4724 = fadd fast float %4709, -5.000000e-01
  %4725 = fadd fast float %4711, -5.000000e-01
  %4726 = fmul fast float %4724, %4720
  %4727 = fmul fast float %4725, %4720
  %4728 = fadd fast float %4726, 5.000000e-01
  %4729 = fadd fast float %4727, 5.000000e-01
  %4730 = fmul fast float %4728, 2.000000e+00
  %4731 = fadd fast float %4730, -1.000000e+00
  %4732 = fmul fast float %4729, 2.000000e+00
  %4733 = fadd fast float %4732, -1.000000e+00
  %4734 = fadd fast float %4731, %4733
  %4735 = fmul fast float %4734, 5.000000e-01
  %4736 = fsub fast float %4731, %4733
  %4737 = fmul fast float %4736, 5.000000e-01
  %4738 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4739 = fsub fast float 1.000000e+00, %4738
  %4740 = call float @dx.op.unary.f32(i32 6, float %4737)  ; FAbs(value)
  %4741 = fsub fast float %4739, %4740
  %4742 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4737, float %4741, float %4735, float %4737, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = call float @dx.op.unary.f32(i32 25, float %4742)  ; Rsqrt(value)
  %4744 = fmul fast float %4735, %4743
  %4745 = fmul fast float %4737, %4743
  %4746 = select i1 %4573, i32 %4563, i32 %4564
  %4747 = select i1 %4571, i32 %4562, i32 %4746
  %4748 = sitofp i32 %4747 to float
  %4749 = fmul fast float %4741, %4748
  %4750 = fmul fast float %4749, %4743
  %4751 = select i1 %4573, float %4750, float %4745
  %4752 = select i1 %4573, float %4745, float %4750
  %4753 = select i1 %4571, float %4750, float %4744
  %4754 = select i1 %4571, float %4745, float %4751
  %4755 = select i1 %4571, float %4744, float %4752
  %4756 = fsub fast float %4690, %4123
  %4757 = fsub fast float %4691, %4124
  %4758 = fsub fast float %4692, %4125
  %4759 = fmul fast float %4756, %4662
  %4760 = fmul fast float %4757, %4662
  %4761 = fmul fast float %4758, %4662
  %4762 = fadd fast float %4759, %4123
  %4763 = fadd fast float %4760, %4124
  %4764 = fadd fast float %4761, %4125
  %4765 = fsub fast float %4699, %4108
  %4766 = fsub fast float %4700, %4109
  %4767 = fsub fast float %4701, %4110
  %4768 = fmul fast float %4765, %4662
  %4769 = fmul fast float %4766, %4662
  %4770 = fmul fast float %4767, %4662
  %4771 = fadd fast float %4768, %4108
  %4772 = fadd fast float %4769, %4109
  %4773 = fadd fast float %4770, %4110
  %4774 = fadd fast float %4753, %4072
  %4775 = fadd fast float %4754, %4073
  %4776 = fadd fast float %4755, %4074
  %4777 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4775, float %4776, float %4774, float %4775, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  %4779 = fmul fast float %4774, %4778
  %4780 = fmul fast float %4775, %4778
  %4781 = fmul fast float %4776, %4778
  %4782 = fsub fast float %4779, %4072
  %4783 = fsub fast float %4780, %4073
  %4784 = fsub fast float %4781, %4074
  %4785 = fmul fast float %4782, %4662
  %4786 = fmul fast float %4783, %4662
  %4787 = fmul fast float %4784, %4662
  %4788 = fadd fast float %4785, %4072
  %4789 = fadd fast float %4786, %4073
  %4790 = fadd fast float %4787, %4074
  %4791 = call float @dx.op.binary.f32(i32 36, float %4084, float %4710)  ; FMin(a,b)
  %4792 = fsub fast float %4791, %4084
  %4793 = fmul fast float %4792, %4662
  %4794 = fadd fast float %4793, %4084
  %4795 = fsub fast float %4723, %4111
  %4796 = fmul fast float %4795, %4662
  %4797 = fadd fast float %4796, %4111
  br label %4798

; <label>:4798                                    ; preds = %4660, %4622, %4524
  %4799 = phi float [ %4762, %4660 ], [ %4123, %4622 ], [ %4123, %4524 ]
  %4800 = phi float [ %4763, %4660 ], [ %4124, %4622 ], [ %4124, %4524 ]
  %4801 = phi float [ %4764, %4660 ], [ %4125, %4622 ], [ %4125, %4524 ]
  %4802 = phi float [ %4771, %4660 ], [ %4108, %4622 ], [ %4108, %4524 ]
  %4803 = phi float [ %4772, %4660 ], [ %4109, %4622 ], [ %4109, %4524 ]
  %4804 = phi float [ %4773, %4660 ], [ %4110, %4622 ], [ %4110, %4524 ]
  %4805 = phi float [ %4788, %4660 ], [ %4072, %4622 ], [ %4072, %4524 ]
  %4806 = phi float [ %4789, %4660 ], [ %4073, %4622 ], [ %4073, %4524 ]
  %4807 = phi float [ %4790, %4660 ], [ %4074, %4622 ], [ %4074, %4524 ]
  %4808 = phi float [ %4797, %4660 ], [ %4111, %4622 ], [ %4111, %4524 ]
  %4809 = phi float [ %4794, %4660 ], [ %4084, %4622 ], [ %4084, %4524 ]
  br i1 %4522, label %4810, label %5083

; <label>:4810                                    ; preds = %4798
  %4811 = call float @dx.op.unary.f32(i32 23, float %4809)  ; Log(value)
  %4812 = fmul fast float %4811, 4.000000e+00
  %4813 = call float @dx.op.unary.f32(i32 21, float %4812)  ; Exp(value)
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = fmul fast float %4815, %60
  %4817 = fmul fast float %4815, %61
  %4818 = fmul fast float %4815, %62
  %4819 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4820 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4821 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4822 = call float @dx.op.unary.f32(i32 23, float %4819)  ; Log(value)
  %4823 = call float @dx.op.unary.f32(i32 23, float %4820)  ; Log(value)
  %4824 = call float @dx.op.unary.f32(i32 23, float %4821)  ; Log(value)
  %4825 = fmul fast float %4822, 4.000000e+00
  %4826 = fmul fast float %4823, 4.000000e+00
  %4827 = fmul fast float %4824, 4.000000e+00
  %4828 = call float @dx.op.unary.f32(i32 21, float %4825)  ; Exp(value)
  %4829 = call float @dx.op.unary.f32(i32 21, float %4826)  ; Exp(value)
  %4830 = call float @dx.op.unary.f32(i32 21, float %4827)  ; Exp(value)
  %4831 = fadd fast float %4829, %4828
  %4832 = fadd fast float %4831, %4830
  %4833 = fdiv fast float 1.000000e+00, %4832
  %4834 = fmul fast float %4833, %4828
  %4835 = fcmp fast ogt float %70, 0.000000e+00
  %4836 = fcmp fast ogt float %71, 0.000000e+00
  %4837 = fcmp fast ogt float %72, 0.000000e+00
  %4838 = fcmp fast olt float %70, 0.000000e+00
  %4839 = fcmp fast olt float %71, 0.000000e+00
  %4840 = fcmp fast olt float %72, 0.000000e+00
  %4841 = zext i1 %4835 to i32
  %4842 = zext i1 %4836 to i32
  %4843 = zext i1 %4837 to i32
  %4844 = zext i1 %4838 to i32
  %4845 = zext i1 %4839 to i32
  %4846 = zext i1 %4840 to i32
  %4847 = sub nsw i32 %4841, %4844
  %4848 = sub nsw i32 %4842, %4845
  %4849 = sub nsw i32 %4843, %4846
  %4850 = call float @dx.op.unary.f32(i32 83, float %4816)  ; DerivCoarseX(value)
  %4851 = call float @dx.op.unary.f32(i32 83, float %4817)  ; DerivCoarseX(value)
  %4852 = call float @dx.op.unary.f32(i32 83, float %4818)  ; DerivCoarseX(value)
  %4853 = call float @dx.op.unary.f32(i32 84, float %4816)  ; DerivCoarseY(value)
  %4854 = call float @dx.op.unary.f32(i32 84, float %4817)  ; DerivCoarseY(value)
  %4855 = call float @dx.op.unary.f32(i32 84, float %4818)  ; DerivCoarseY(value)
  %4856 = fcmp fast ole float %280, %4834
  %4857 = fmul fast float %4833, %4831
  %4858 = fcmp fast ole float %280, %4857
  %4859 = select i1 %4858, float %4818, float %4816
  %4860 = select i1 %4858, float %4816, float %4817
  %4861 = select i1 %4856, float %4817, float %4859
  %4862 = select i1 %4856, float %4818, float %4860
  %4863 = select i1 %4858, float %4852, float %4850
  %4864 = select i1 %4858, float %4850, float %4851
  %4865 = select i1 %4856, float %4851, float %4863
  %4866 = select i1 %4856, float %4852, float %4864
  %4867 = select i1 %4858, float %4855, float %4853
  %4868 = select i1 %4858, float %4853, float %4854
  %4869 = select i1 %4856, float %4854, float %4867
  %4870 = select i1 %4856, float %4855, float %4868
  %4871 = call float @dx.op.unary.f32(i32 27, float %4861)  ; Round_ni(value)
  %4872 = call float @dx.op.unary.f32(i32 27, float %4862)  ; Round_ni(value)
  %4873 = fptosi float %4871 to i32
  %4874 = fptosi float %4872 to i32
  %4875 = xor i32 %4874, %4873
  %4876 = sitofp i32 %4875 to float
  %4877 = fptosi float %4876 to i32
  %4878 = sitofp i32 %4877 to float
  %4879 = fmul fast float %4878, 0x3FE3C6EF40000000
  %4880 = frem fast float %4871, 2.560000e+02
  %4881 = frem fast float %4872, 2.560000e+02
  %4882 = fptoui float %4880 to i32
  %4883 = fptoui float %4881 to i32
  %4884 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4882, i32 %4883, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4888 = fadd fast float %4885, %4879
  %4889 = fadd fast float %4886, %4879
  %4890 = fadd fast float %4887, %4879
  %4891 = call float @dx.op.unary.f32(i32 22, float %4888)  ; Frc(value)
  %4892 = call float @dx.op.unary.f32(i32 22, float %4889)  ; Frc(value)
  %4893 = call float @dx.op.unary.f32(i32 22, float %4890)  ; Frc(value)
  %4894 = fmul fast float %4893, 0x401921FB60000000
  %4895 = call float @dx.op.unary.f32(i32 13, float %4894)  ; Sin(value)
  %4896 = call float @dx.op.unary.f32(i32 12, float %4894)  ; Cos(value)
  %4897 = fsub fast float -0.000000e+00, %4896
  %4898 = fmul fast float %4896, %4861
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4895, float %4862, float %4898)  ; FMad(a,b,c)
  %4900 = fmul fast float %4895, %4861
  %4901 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4862, float %4900)  ; FMad(a,b,c)
  %4902 = fadd fast float %4899, %4891
  %4903 = fadd fast float %4901, %4892
  %4904 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4905 = bitcast float %4904 to i32
  %4906 = icmp eq i32 %4905, 0
  br i1 %4906, label %4945, label %4907

; <label>:4907                                    ; preds = %4810
  %4908 = add i32 %4905, 0
  %4909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4910 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4909, %dx.types.Handle %107, float %4902, float %4903, float undef, float undef, i32 0, i32 0, i32 undef, float %4865, float %4866, float undef, float %4869, float %4870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %4915 = fsub fast float 1.000000e+00, %4520
  %4916 = call float @dx.op.binary.f32(i32 35, float %4915, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4917 = bitcast float %4520 to i32
  %4918 = sitofp i32 %4917 to float
  %4919 = fadd fast float %4918, 0xC1CFBF8940000000
  %4920 = fmul fast float %4914, %4919
  %4921 = fadd fast float %4920, 0x41CFBF8940000000
  %4922 = fptosi float %4921 to i32
  %4923 = bitcast i32 %4922 to float
  %4924 = bitcast float %4916 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fadd fast float %4925, 0xC1CFBF8940000000
  %4927 = fmul fast float %4926, %4914
  %4928 = fadd fast float %4927, 0x41CFBF8940000000
  %4929 = fptosi float %4928 to i32
  %4930 = bitcast i32 %4929 to float
  %4931 = fmul fast float %4923, %4913
  %4932 = fmul fast float %4930, %4913
  %4933 = fsub fast float %4916, %4931
  %4934 = fadd fast float %4932, %4916
  %4935 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4937 = fsub fast float %4911, %4935
  %4938 = fsub fast float %4936, %4935
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4941, %4937
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fcmp fast olt float %4943, 0x3F70101020000000
  br i1 %4944, label %5083, label %4945

; <label>:4945                                    ; preds = %4907, %4810
  %4946 = phi float [ %4943, %4907 ], [ %4520, %4810 ]
  %4947 = fmul fast float %4946, %4813
  %4948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.i32 %4948, 1
  %4950 = extractvalue %dx.types.CBufRet.i32 %4948, 0
  %4951 = add i32 %4950, 0
  %4952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4952, %dx.types.Handle %106, float %4902, float %4903, float undef, float undef, i32 0, i32 0, i32 undef, float %4865, float %4866, float undef, float %4869, float %4870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.ResRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.ResRet.f32 %4953, 2
  %4957 = extractvalue %dx.types.ResRet.f32 %4953, 3
  %4958 = and i32 %4949, 255
  %4959 = uitofp i32 %4958 to float
  %4960 = lshr i32 %4949, 8
  %4961 = and i32 %4960, 255
  %4962 = uitofp i32 %4961 to float
  %4963 = fmul fast float %4957, %4959
  %4964 = fadd fast float %4963, %4962
  %4965 = fmul fast float %4964, 0x3F70101000000000
  %4966 = fadd fast float %4965, 0xBFB99999A0000000
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %4967, 0x3FF1C71C80000000
  %4969 = call float @dx.op.binary.f32(i32 36, float %4965, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4970 = fsub fast float 1.000000e+00, %4968
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = fmul fast float %4971, %4954
  %4973 = fmul fast float %4971, %4955
  %4974 = fmul fast float %4971, %4956
  %4975 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4977 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4978 = fmul fast float %4968, %4954
  %4979 = fmul fast float %4968, %4955
  %4980 = fmul fast float %4968, %4956
  %4981 = fadd fast float %4978, %4969
  %4982 = fadd fast float %4979, %4969
  %4983 = fadd fast float %4980, %4969
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.i32 %4987, 3
  %4989 = extractvalue %dx.types.CBufRet.i32 %4987, 2
  %4990 = add i32 %4989, 0
  %4991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4991, %dx.types.Handle %106, float %4902, float %4903, float undef, float undef, i32 0, i32 0, i32 undef, float %4865, float %4866, float undef, float %4869, float %4870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 1
  %4995 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4996 = extractvalue %dx.types.ResRet.f32 %4992, 3
  %4997 = and i32 %4988, 255
  %4998 = uitofp i32 %4997 to float
  %4999 = lshr i32 %4988, 8
  %5000 = and i32 %4999, 255
  %5001 = uitofp i32 %5000 to float
  %5002 = lshr i32 %4988, 16
  %5003 = and i32 %5002, 255
  %5004 = uitofp i32 %5003 to float
  %5005 = fmul fast float %5004, 0x3F70101000000000
  %5006 = fmul fast float %4993, %4998
  %5007 = fadd fast float %5006, %5001
  %5008 = fmul fast float %5007, 0x3F70101000000000
  %5009 = fadd fast float %4994, -5.000000e-01
  %5010 = fadd fast float %4996, -5.000000e-01
  %5011 = fmul fast float %5009, %5005
  %5012 = fmul fast float %5010, %5005
  %5013 = fadd fast float %5011, 5.000000e-01
  %5014 = fadd fast float %5012, 5.000000e-01
  %5015 = fmul fast float %5013, 2.000000e+00
  %5016 = fadd fast float %5015, -1.000000e+00
  %5017 = fmul fast float %5014, 2.000000e+00
  %5018 = fadd fast float %5017, -1.000000e+00
  %5019 = fadd fast float %5016, %5018
  %5020 = fmul fast float %5019, 5.000000e-01
  %5021 = fsub fast float %5016, %5018
  %5022 = fmul fast float %5021, 5.000000e-01
  %5023 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = call float @dx.op.unary.f32(i32 6, float %5022)  ; FAbs(value)
  %5026 = fsub fast float %5024, %5025
  %5027 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5022, float %5026, float %5020, float %5022, float %5026)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = call float @dx.op.unary.f32(i32 25, float %5027)  ; Rsqrt(value)
  %5029 = fmul fast float %5020, %5028
  %5030 = fmul fast float %5022, %5028
  %5031 = select i1 %4858, i32 %4848, i32 %4849
  %5032 = select i1 %4856, i32 %4847, i32 %5031
  %5033 = sitofp i32 %5032 to float
  %5034 = fmul fast float %5026, %5033
  %5035 = fmul fast float %5034, %5028
  %5036 = select i1 %4858, float %5035, float %5030
  %5037 = select i1 %4858, float %5030, float %5035
  %5038 = select i1 %4856, float %5035, float %5029
  %5039 = select i1 %4856, float %5030, float %5036
  %5040 = select i1 %4856, float %5029, float %5037
  %5041 = fsub fast float %4975, %4799
  %5042 = fsub fast float %4976, %4800
  %5043 = fsub fast float %4977, %4801
  %5044 = fmul fast float %5041, %4947
  %5045 = fmul fast float %5042, %4947
  %5046 = fmul fast float %5043, %4947
  %5047 = fadd fast float %5044, %4799
  %5048 = fadd fast float %5045, %4800
  %5049 = fadd fast float %5046, %4801
  %5050 = fsub fast float %4984, %4802
  %5051 = fsub fast float %4985, %4803
  %5052 = fsub fast float %4986, %4804
  %5053 = fmul fast float %5050, %4947
  %5054 = fmul fast float %5051, %4947
  %5055 = fmul fast float %5052, %4947
  %5056 = fadd fast float %5053, %4802
  %5057 = fadd fast float %5054, %4803
  %5058 = fadd fast float %5055, %4804
  %5059 = fadd fast float %5038, %4805
  %5060 = fadd fast float %5039, %4806
  %5061 = fadd fast float %5040, %4807
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = call float @dx.op.unary.f32(i32 25, float %5062)  ; Rsqrt(value)
  %5064 = fmul fast float %5059, %5063
  %5065 = fmul fast float %5060, %5063
  %5066 = fmul fast float %5061, %5063
  %5067 = fsub fast float %5064, %4805
  %5068 = fsub fast float %5065, %4806
  %5069 = fsub fast float %5066, %4807
  %5070 = fmul fast float %5067, %4947
  %5071 = fmul fast float %5068, %4947
  %5072 = fmul fast float %5069, %4947
  %5073 = fadd fast float %5070, %4805
  %5074 = fadd fast float %5071, %4806
  %5075 = fadd fast float %5072, %4807
  %5076 = call float @dx.op.binary.f32(i32 36, float %4809, float %4995)  ; FMin(a,b)
  %5077 = fsub fast float %5076, %4809
  %5078 = fmul fast float %5077, %4947
  %5079 = fadd fast float %5078, %4809
  %5080 = fsub fast float %5008, %4808
  %5081 = fmul fast float %5080, %4947
  %5082 = fadd fast float %5081, %4808
  br label %5083

; <label>:5083                                    ; preds = %4945, %4907, %4798, %4514
  %5084 = phi float [ %5047, %4945 ], [ %4799, %4907 ], [ %4799, %4798 ], [ %4123, %4514 ]
  %5085 = phi float [ %5048, %4945 ], [ %4800, %4907 ], [ %4800, %4798 ], [ %4124, %4514 ]
  %5086 = phi float [ %5049, %4945 ], [ %4801, %4907 ], [ %4801, %4798 ], [ %4125, %4514 ]
  %5087 = phi float [ %5056, %4945 ], [ %4802, %4907 ], [ %4802, %4798 ], [ %4108, %4514 ]
  %5088 = phi float [ %5057, %4945 ], [ %4803, %4907 ], [ %4803, %4798 ], [ %4109, %4514 ]
  %5089 = phi float [ %5058, %4945 ], [ %4804, %4907 ], [ %4804, %4798 ], [ %4110, %4514 ]
  %5090 = phi float [ %5073, %4945 ], [ %4805, %4907 ], [ %4805, %4798 ], [ %4072, %4514 ]
  %5091 = phi float [ %5074, %4945 ], [ %4806, %4907 ], [ %4806, %4798 ], [ %4073, %4514 ]
  %5092 = phi float [ %5075, %4945 ], [ %4807, %4907 ], [ %4807, %4798 ], [ %4074, %4514 ]
  %5093 = phi float [ %5082, %4945 ], [ %4808, %4907 ], [ %4808, %4798 ], [ %4111, %4514 ]
  %5094 = phi float [ %5079, %4945 ], [ %4809, %4907 ], [ %4809, %4798 ], [ %4084, %4514 ]
  %5095 = fcmp fast une float %4518, 0.000000e+00
  br i1 %5095, label %5096, label %5265

; <label>:5096                                    ; preds = %5083
  %5097 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = call float @dx.op.unary.f32(i32 25, float %5097)  ; Rsqrt(value)
  %5099 = fmul fast float %197, %5098
  %5100 = fsub fast float -0.000000e+00, %5099
  %5101 = fmul fast float %198, %5098
  %5102 = fsub fast float -0.000000e+00, %5101
  %5103 = fmul fast float %199, %5098
  %5104 = fsub fast float -0.000000e+00, %5103
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5102, float %5104, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = fmul fast float %4518, 2.500000e+00
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5108 = fmul fast float %4518, 0x4013FFFFE0000000
  %5109 = fadd fast float %5108, 0xBFFFFFFFE0000000
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %4518, 0x4004000020000000
  %5112 = fadd fast float %5111, 0xBFF8000040000000
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %4090, 1.000000e+01
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fmul fast float %5115, 2.000000e+00
  %5117 = fsub fast float 3.000000e+00, %5116
  %5118 = fmul fast float %5115, %5115
  %5119 = fmul fast float %5118, %5117
  %5120 = fsub fast float 1.000000e+00, %5119
  %5121 = fsub fast float 0x3FE3333340000000, %5093
  %5122 = fmul fast float %5121, 0x400AAAAAA0000000
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %5120, %5123
  %5125 = fmul fast float %5084, 0x3FEA2B8620000000
  %5126 = fmul fast float %5085, 0x3FEA2B8620000000
  %5127 = fmul fast float %5086, 0x3FEA2B8620000000
  %5128 = fadd fast float %5125, 0x3FC81DFBA0000000
  %5129 = fmul fast float %5128, %5084
  %5130 = fadd fast float %5129, 0x3F910E6020000000
  %5131 = fadd fast float %5126, 0x3FC81DFBA0000000
  %5132 = fmul fast float %5131, %5085
  %5133 = fadd fast float %5132, 0x3F910E6020000000
  %5134 = fadd fast float %5127, 0x3FC81DFBA0000000
  %5135 = fmul fast float %5134, %5086
  %5136 = fadd fast float %5135, 0x3F910E6020000000
  %5137 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = fsub fast float %5137, %5084
  %5141 = fsub fast float %5138, %5085
  %5142 = fsub fast float %5139, %5086
  %5143 = fmul fast float %5140, %5107
  %5144 = fmul fast float %5143, %5124
  %5145 = fmul fast float %5141, %5107
  %5146 = fmul fast float %5145, %5124
  %5147 = fmul fast float %5142, %5107
  %5148 = fmul fast float %5147, %5124
  %5149 = fadd fast float %5144, %5084
  %5150 = fadd fast float %5146, %5085
  %5151 = fadd fast float %5148, %5086
  %5152 = fmul fast float %5094, %5094
  %5153 = fmul fast float %5152, %5152
  %5154 = fadd fast float %5110, 1.000000e+00
  %5155 = fsub fast float %5154, %5124
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = fsub fast float 1.000000e+00, %5153
  %5160 = call float @dx.op.binary.f32(i32 36, float %5156, float %5159)  ; FMin(a,b)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5162 = call float @dx.op.binary.f32(i32 35, float %5160, float %5161)  ; FMax(a,b)
  %5163 = fadd fast float %5158, 0xBFE4CCCCC0000000
  %5164 = fmul fast float %5163, 0x4006DB6DA0000000
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fmul fast float %5165, 2.000000e+00
  %5167 = fsub fast float 3.000000e+00, %5166
  %5168 = bitcast float %5087 to i32
  %5169 = ashr i32 %5168, 1
  %5170 = add nsw i32 %5169, 532487669
  %5171 = bitcast i32 %5170 to float
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = bitcast float %5172 to i32
  %5174 = sub nsw i32 2129859010, %5173
  %5175 = bitcast i32 %5174 to float
  %5176 = fmul fast float %5175, 2.000000e+00
  %5177 = bitcast float %5088 to i32
  %5178 = ashr i32 %5177, 1
  %5179 = add nsw i32 %5178, 532487669
  %5180 = bitcast i32 %5179 to float
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = bitcast float %5181 to i32
  %5183 = sub nsw i32 2129859010, %5182
  %5184 = bitcast i32 %5183 to float
  %5185 = fmul fast float %5184, 2.000000e+00
  %5186 = bitcast float %5089 to i32
  %5187 = ashr i32 %5186, 1
  %5188 = add nsw i32 %5187, 532487669
  %5189 = bitcast i32 %5188 to float
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = bitcast float %5190 to i32
  %5192 = sub nsw i32 2129859010, %5191
  %5193 = bitcast i32 %5192 to float
  %5194 = fmul fast float %5193, 2.000000e+00
  %5195 = fsub fast float 0x4002A9FBE0000000, %5176
  %5196 = fadd fast float %5176, 0x3FD54FDF00000000
  %5197 = bitcast float %5196 to i32
  %5198 = sub nsw i32 2129859010, %5197
  %5199 = bitcast i32 %5198 to float
  %5200 = fmul fast float %5199, %5195
  %5201 = fmul fast float %5200, %5200
  %5202 = fsub fast float 0x4002A9FBE0000000, %5185
  %5203 = fadd fast float %5185, 0x3FD54FDF00000000
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5207, %5207
  %5209 = fsub fast float 0x4002A9FBE0000000, %5194
  %5210 = fadd fast float %5194, 0x3FD54FDF00000000
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, %5214
  %5216 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5201)  ; FMax(a,b)
  %5217 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5208)  ; FMax(a,b)
  %5218 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5215)  ; FMax(a,b)
  %5219 = fsub fast float 1.000000e+00, %5105
  %5220 = fadd fast float %5219, %5120
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5222 = fsub fast float 1.000000e+00, %4499
  %5223 = fmul fast float %5162, %5222
  %5224 = fmul fast float %5165, %5165
  %5225 = fmul fast float %5224, %5223
  %5226 = fmul fast float %5225, %5167
  %5227 = fmul fast float %5222, 0xBFE99999A0000000
  %5228 = fmul fast float %5227, %5107
  %5229 = fmul fast float %5228, %5124
  %5230 = fadd fast float %5229, 1.000000e+00
  %5231 = fadd fast float %5093, -1.000000e+00
  %5232 = fmul fast float %5230, %5231
  %5233 = fadd fast float %5232, 1.000000e+00
  %5234 = fsub fast float %5216, %5087
  %5235 = fsub fast float %5217, %5088
  %5236 = fsub fast float %5218, %5089
  %5237 = fmul fast float %5226, %5234
  %5238 = fmul fast float %5226, %5235
  %5239 = fmul fast float %5226, %5236
  %5240 = fadd fast float %5237, %5087
  %5241 = fadd fast float %5238, %5088
  %5242 = fadd fast float %5239, %5089
  %5243 = fsub fast float %117, %5090
  %5244 = fsub fast float %118, %5091
  %5245 = fsub fast float %119, %5092
  %5246 = fmul fast float %5226, %5243
  %5247 = fmul fast float %5226, %5244
  %5248 = fmul fast float %5226, %5245
  %5249 = fadd fast float %5246, %5090
  %5250 = fadd fast float %5247, %5091
  %5251 = fadd fast float %5248, %5092
  %5252 = fmul fast float %5226, %5221
  %5253 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5254 = fsub fast float 1.000000e+00, %5253
  %5255 = fmul fast float %5252, %5254
  %5256 = fadd fast float %5255, %5253
  %5257 = fsub fast float 1.000000e+00, %5094
  %5258 = fmul fast float %5226, %5257
  %5259 = fadd fast float %5258, %5094
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %5249, float %5250, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = call float @dx.op.unary.f32(i32 25, float %5260)  ; Rsqrt(value)
  %5262 = fmul fast float %5249, %5261
  %5263 = fmul fast float %5250, %5261
  %5264 = fmul fast float %5251, %5261
  br label %5265

; <label>:5265                                    ; preds = %5096, %5083
  %5266 = phi float [ %5149, %5096 ], [ %5084, %5083 ]
  %5267 = phi float [ %5150, %5096 ], [ %5085, %5083 ]
  %5268 = phi float [ %5151, %5096 ], [ %5086, %5083 ]
  %5269 = phi float [ %5240, %5096 ], [ %5087, %5083 ]
  %5270 = phi float [ %5241, %5096 ], [ %5088, %5083 ]
  %5271 = phi float [ %5242, %5096 ], [ %5089, %5083 ]
  %5272 = phi float [ %5262, %5096 ], [ %5090, %5083 ]
  %5273 = phi float [ %5263, %5096 ], [ %5091, %5083 ]
  %5274 = phi float [ %5264, %5096 ], [ %5092, %5083 ]
  %5275 = phi float [ %5256, %5096 ], [ %5093, %5083 ]
  %5276 = phi float [ %5259, %5096 ], [ %5094, %5083 ]
  %5277 = icmp eq i32 %58, 0
  br i1 %5277, label %5308, label %5278

; <label>:5278                                    ; preds = %5265
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5282 = fmul fast float %5280, %110
  %5283 = fmul fast float %5281, %111
  %5284 = fmul fast float %5282, 1.024000e+03
  %5285 = fmul fast float %5283, 1.024000e+03
  %5286 = fadd fast float %5284, -5.120000e+02
  %5287 = fadd fast float %5285, -5.120000e+02
  %5288 = fmul fast float %5282, 0x4081BEDF00000000
  %5289 = fadd fast float %5288, 0xC071BEDF00000000
  %5290 = call float @dx.op.unary.f32(i32 22, float %5289)  ; Frc(value)
  %5291 = fmul fast float %5286, %5290
  %5292 = fadd fast float %5291, %5287
  %5293 = fmul fast float %5283, 0x4073BEBE20000000
  %5294 = fadd fast float %5293, 0xC063BEBE20000000
  %5295 = call float @dx.op.unary.f32(i32 22, float %5294)  ; Frc(value)
  %5296 = fmul fast float %5287, %5295
  %5297 = fadd fast float %5296, %5286
  %5298 = fmul fast float %5292, %5297
  %5299 = call float @dx.op.unary.f32(i32 22, float %5298)  ; Frc(value)
  %5300 = add i32 %323, 12
  %5301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.i32 %5301, 0
  %5303 = and i32 %5302, 255
  %5304 = uitofp i32 %5303 to float
  %5305 = fmul fast float %5304, 0x3F70101020000000
  %5306 = fcmp fast olt float %5299, %5305
  br i1 %5306, label %5307, label %5308

; <label>:5307                                    ; preds = %5278
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5308

; <label>:5308                                    ; preds = %5307, %5278, %5265
  %5309 = fsub fast float -0.000000e+00, %199
  %5310 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = call float @dx.op.unary.f32(i32 25, float %5310)  ; Rsqrt(value)
  %5312 = fmul fast float %5311, %197
  %5313 = fmul fast float %5311, %198
  %5314 = fmul fast float %5311, %199
  %5315 = fsub fast float -0.000000e+00, %5312
  %5316 = fsub fast float -0.000000e+00, %5313
  %5317 = fsub fast float -0.000000e+00, %5314
  %5318 = select i1 %269, float 0.000000e+00, float %5271
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5272, float %5273, float %5274)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = fmul fast float %5321, 2.000000e+00
  %5323 = fmul fast float %5322, %5272
  %5324 = fmul fast float %5322, %5273
  %5325 = fmul fast float %5322, %5274
  %5326 = fsub fast float %5312, %5323
  %5327 = fsub fast float %5313, %5324
  %5328 = fsub fast float %5314, %5325
  %5329 = call float @dx.op.binary.f32(i32 36, float %5276, float 1.000000e+00)  ; FMin(a,b)
  %5330 = fsub fast float 1.000000e+00, %5276
  %5331 = bitcast float %5330 to i32
  %5332 = sub nsw i32 2129859010, %5331
  %5333 = bitcast i32 %5332 to float
  %5334 = fsub fast float 1.000000e+00, %81
  %5335 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.binary.f32(i32 35, float %5335, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5337 = fdiv fast float %5334, %5336
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fmul fast float %5339, 5.000000e-01
  %5341 = fadd fast float %5340, 5.000000e-01
  %5342 = fmul fast float %5341, %81
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, %5337
  %5346 = fadd fast float %5342, %5345
  %5347 = fsub fast float 5.000000e-01, %5340
  %5348 = fmul fast float %5347, %5266
  %5349 = fmul fast float %5347, %5267
  %5350 = fmul fast float %5347, %5268
  %5351 = fadd fast float %5346, %5348
  %5352 = fadd fast float %5346, %5349
  %5353 = fadd fast float %5346, %5350
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fmul fast float %5355, 5.000000e-01
  %5357 = fadd fast float %5356, 5.000000e-01
  %5358 = fmul fast float %5357, %81
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5360, %5337
  %5362 = fadd fast float %5358, %5361
  %5363 = fsub fast float 5.000000e-01, %5356
  %5364 = fmul fast float %5363, %5266
  %5365 = fmul fast float %5363, %5267
  %5366 = fmul fast float %5363, %5268
  %5367 = fadd fast float %5362, %5364
  %5368 = fadd fast float %5362, %5365
  %5369 = fadd fast float %5362, %5366
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = call float @dx.op.binary.f32(i32 36, float %5266, float %5371)  ; FMin(a,b)
  %5373 = fsub fast float 1.000000e+00, %5329
  %5374 = fmul fast float %5372, %5373
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = call float @dx.op.binary.f32(i32 36, float %5267, float %5371)  ; FMin(a,b)
  %5380 = fmul fast float %5379, %5373
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = bitcast float %5381 to i32
  %5383 = sub nsw i32 2129859010, %5382
  %5384 = bitcast i32 %5383 to float
  %5385 = call float @dx.op.binary.f32(i32 36, float %5268, float %5371)  ; FMin(a,b)
  %5386 = fmul fast float %5385, %5373
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5329, %82
  %5392 = fmul fast float %5391, %5351
  %5393 = fmul fast float %5392, %5378
  %5394 = fmul fast float %5329, %83
  %5395 = fmul fast float %5394, %5352
  %5396 = fmul fast float %5395, %5384
  %5397 = fmul fast float %5329, %84
  %5398 = fmul fast float %5397, %5353
  %5399 = fmul fast float %5398, %5390
  %5400 = call float @dx.op.binary.f32(i32 36, float %5269, float %5371)  ; FMin(a,b)
  %5401 = fmul fast float %5400, %5373
  %5402 = fsub fast float 1.000000e+00, %5401
  %5403 = bitcast float %5402 to i32
  %5404 = sub nsw i32 2129859010, %5403
  %5405 = bitcast i32 %5404 to float
  %5406 = call float @dx.op.binary.f32(i32 36, float %5270, float %5371)  ; FMin(a,b)
  %5407 = fmul fast float %5406, %5373
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = bitcast float %5408 to i32
  %5410 = sub nsw i32 2129859010, %5409
  %5411 = bitcast i32 %5410 to float
  %5412 = call float @dx.op.binary.f32(i32 36, float %5318, float %5371)  ; FMin(a,b)
  %5413 = fmul fast float %5412, %5373
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = bitcast float %5414 to i32
  %5416 = sub nsw i32 2129859010, %5415
  %5417 = bitcast i32 %5416 to float
  %5418 = fmul fast float %5391, %5367
  %5419 = fmul fast float %5418, %5405
  %5420 = fmul fast float %5394, %5368
  %5421 = fmul fast float %5420, %5411
  %5422 = fmul fast float %5397, %5369
  %5423 = fmul fast float %5422, %5417
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5396, float %5399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = select i1 %269, float 0.000000e+00, float %5393
  %5426 = select i1 %269, float %5424, float %5396
  %5427 = select i1 %269, float 0.000000e+00, float %5399
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5421, float %5423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = select i1 %269, float 0.000000e+00, float %5419
  %5430 = select i1 %269, float %5428, float %5421
  %5431 = select i1 %269, float 0.000000e+00, float %5423
  %5432 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5433 = fmul fast float %5432, %5425
  %5434 = fmul fast float %5432, %5426
  %5435 = fmul fast float %5427, %5432
  %5436 = fmul fast float %5320, 9.843750e-01
  %5437 = fmul fast float %5275, 9.843750e-01
  %5438 = fadd fast float %5436, 7.812500e-03
  %5439 = fadd fast float %5437, 7.812500e-03
  %5440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5438, float %5439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 3
  %5443 = fmul fast float %5441, %5269
  %5444 = fmul fast float %5441, %5270
  %5445 = fmul fast float %5441, %5318
  %5446 = fadd fast float %5443, %5442
  %5447 = fadd fast float %5444, %5442
  %5448 = fadd fast float %5445, %5442
  %5449 = fcmp fast ogt float %4085, 0.000000e+00
  br i1 %5449, label %5450, label %5476

; <label>:5450                                    ; preds = %5308
  %5451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %5320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = fadd fast float %5452, -5.000000e-01
  %5456 = fadd fast float %5453, -5.000000e-01
  %5457 = fadd fast float %5454, -5.000000e-01
  %5458 = fsub fast float 1.000000e+00, %5269
  %5459 = fsub fast float 1.000000e+00, %5270
  %5460 = fsub fast float 1.000000e+00, %5318
  %5461 = fmul fast float %5269, 4.000000e+00
  %5462 = fmul fast float %5461, %5458
  %5463 = fmul fast float %5462, %5455
  %5464 = fmul fast float %5270, 4.000000e+00
  %5465 = fmul fast float %5464, %5459
  %5466 = fmul fast float %5465, %5456
  %5467 = fmul fast float %5318, 4.000000e+00
  %5468 = fmul fast float %5467, %5460
  %5469 = fmul fast float %5468, %5457
  %5470 = fadd fast float %5463, %5446
  %5471 = fadd fast float %5466, %5447
  %5472 = fadd fast float %5469, %5448
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5475 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  br label %5476

; <label>:5476                                    ; preds = %5450, %5308
  %5477 = phi float [ %5473, %5450 ], [ %5446, %5308 ]
  %5478 = phi float [ %5474, %5450 ], [ %5447, %5308 ]
  %5479 = phi float [ %5475, %5450 ], [ %5448, %5308 ]
  %5480 = call float @dx.op.binary.f32(i32 35, float %5478, float %5479)  ; FMax(a,b)
  %5481 = call float @dx.op.binary.f32(i32 35, float %5477, float %5480)  ; FMax(a,b)
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = fmul fast float %197, %197
  %5484 = fmul fast float %198, %198
  %5485 = fadd fast float %5484, %5483
  %5486 = fmul fast float %199, %199
  %5487 = fadd fast float %5485, %5486
  %5488 = call float @dx.op.unary.f32(i32 24, float %5487)  ; Sqrt(value)
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5491 = fsub fast float %5488, %5490
  %5492 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5493 = fmul fast float %5491, %5492
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5496 = extractvalue %dx.types.CBufRet.f32 %5489, 3
  %5497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5498 = extractvalue %dx.types.ResRet.i32 %5497, 0
  %5499 = and i32 %5498, 4194304
  %5500 = icmp ne i32 %5499, 0
  %5501 = and i32 %5498, 8388608
  %5502 = icmp ne i32 %5501, 0
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.CBufRet.f32 %5503, 2
  %5507 = extractvalue %dx.types.CBufRet.f32 %5503, 3
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5512 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5513 = select i1 %5500, float %5504, float %5509
  %5514 = select i1 %5500, float %5505, float %5510
  %5515 = select i1 %5500, float %5506, float %5511
  %5516 = select i1 %5500, float %5507, float %5512
  %5517 = select i1 %5502, float 0.000000e+00, float %5516
  %5518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.CBufRet.f32 %5518, 1
  %5521 = select i1 %5500, float %5519, float %5520
  %5522 = select i1 %5502, float 0.000000e+00, float %5521
  %5523 = extractvalue %dx.types.CBufRet.f32 %5518, 2
  %5524 = extractvalue %dx.types.CBufRet.f32 %5518, 3
  %5525 = select i1 %5500, float %5523, float %5524
  %5526 = select i1 %5502, float 0.000000e+00, float %5525
  %5527 = fmul fast float %5494, %63
  %5528 = fmul fast float %5527, %5495
  %5529 = fmul fast float %5528, %5522
  %5530 = fmul fast float %5527, %5496
  %5531 = fmul fast float %5530, %5526
  %5532 = fadd fast float %5531, 1.000000e+00
  %5533 = fmul fast float %5482, %5433
  %5534 = fmul fast float %5533, %5532
  %5535 = fmul fast float %5482, %5434
  %5536 = fmul fast float %5535, %5532
  %5537 = fmul fast float %5482, %5435
  %5538 = fmul fast float %5537, %5532
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = fcmp fast ogt float %5539, 0x3E7FF19E20000000
  %5541 = fdiv fast float 1.000000e+00, %5539
  %5542 = select i1 %5540, float %5541, float 0.000000e+00
  %5543 = fmul fast float %5542, %5266
  %5544 = fmul fast float %5542, %5267
  %5545 = fmul fast float %5542, %5268
  %5546 = fadd fast float %5543, -1.000000e+00
  %5547 = fadd fast float %5544, -1.000000e+00
  %5548 = fadd fast float %5545, -1.000000e+00
  %5549 = fmul fast float %5546, 5.000000e-01
  %5550 = fmul fast float %5547, 5.000000e-01
  %5551 = fmul fast float %5548, 5.000000e-01
  %5552 = fadd fast float %5549, 1.000000e+00
  %5553 = fadd fast float %5550, 1.000000e+00
  %5554 = fadd fast float %5551, 1.000000e+00
  %5555 = fadd fast float %5529, %4086
  %5556 = fsub fast float %5513, %5552
  %5557 = fsub fast float %5514, %5553
  %5558 = fsub fast float %5515, %5554
  %5559 = fmul fast float %5556, %5517
  %5560 = fmul fast float %5557, %5517
  %5561 = fmul fast float %5558, %5517
  %5562 = fadd fast float %5559, %5552
  %5563 = fadd fast float %5560, %5553
  %5564 = fadd fast float %5561, %5554
  %5565 = fmul fast float %5477, %5429
  %5566 = fmul fast float %5478, %5430
  %5567 = fmul fast float %5479, %5431
  %5568 = fsub fast float 1.000000e+00, %5320
  %5569 = bitcast float %5568 to i32
  %5570 = sitofp i32 %5569 to float
  %5571 = fmul fast float %5570, 5.000000e+00
  %5572 = fadd fast float %5571, 0xC1EFBF8940000000
  %5573 = fptosi float %5572 to i32
  %5574 = bitcast i32 %5573 to float
  %5575 = fmul fast float %5555, %5574
  %5576 = fmul fast float %5533, %5575
  %5577 = fmul fast float %5576, %5562
  %5578 = fmul fast float %5535, %5575
  %5579 = fmul fast float %5578, %5563
  %5580 = fmul fast float %5537, %5575
  %5581 = fmul fast float %5580, %5564
  %5582 = fmul fast float %5534, %4082
  %5583 = fmul fast float %5536, %4082
  %5584 = fmul fast float %5538, %4082
  %5585 = fadd fast float %5565, %4075
  %5586 = fadd fast float %5585, %5577
  %5587 = fmul fast float %5586, %4082
  %5588 = fadd fast float %5566, %4076
  %5589 = fadd fast float %5588, %5579
  %5590 = fmul fast float %5589, %4082
  %5591 = fadd fast float %5567, %4077
  %5592 = fadd fast float %5591, %5581
  %5593 = fmul fast float %5592, %4082
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 3
  %5596 = fcmp fast oeq float %5595, 0.000000e+00
  br i1 %5596, label %6681, label %5597

; <label>:5597                                    ; preds = %5476
  %5598 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5599 = extractvalue %dx.types.CBufRet.f32 %5594, 1
  %5600 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.CBufRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.CBufRet.f32 %5601, 2
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = select i1 %269, float %5606, float %5602
  %5610 = select i1 %269, float %5608, float %5603
  %5611 = select i1 %269, float %5607, float %5604
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 2
  %5614 = fmul fast float %5613, %117
  %5615 = fmul fast float %5613, %118
  %5616 = fmul fast float %5613, %119
  %5617 = fadd fast float %5614, %197
  %5618 = fadd fast float %5615, %198
  %5619 = fadd fast float %5616, %199
  %5620 = fcmp fast olt float %5595, 0.000000e+00
  br i1 %5620, label %6260, label %5621

; <label>:5621                                    ; preds = %5597
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5636 = extractvalue %dx.types.CBufRet.f32 %5632, 3
  %5637 = fmul fast float %5623, %5617
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5624, float %5637)  ; FMad(a,b,c)
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5625, float %5638)  ; FMad(a,b,c)
  %5640 = fadd fast float %5639, %5626
  %5641 = fmul fast float %5628, %5617
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5629, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5630, float %5642)  ; FMad(a,b,c)
  %5644 = fadd fast float %5643, %5631
  %5645 = fmul fast float %5633, %5617
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5634, float %5645)  ; FMad(a,b,c)
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5635, float %5646)  ; FMad(a,b,c)
  %5648 = fadd fast float %5647, %5636
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = fcmp fast une float %5650, 0.000000e+00
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5656 = fmul fast float %5655, %5640
  %5657 = fmul fast float %5655, %5644
  %5658 = fadd fast float %5656, %5653
  %5659 = fadd fast float %5657, %5654
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 3
  %5664 = fmul fast float %5663, %5640
  %5665 = fmul fast float %5663, %5644
  %5666 = fadd fast float %5664, %5661
  %5667 = fadd fast float %5665, %5662
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5670 = fsub fast float %5669, %5648
  %5671 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5672 = fmul fast float %5670, %5671
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  br i1 %5651, label %5735, label %5675

; <label>:5675                                    ; preds = %5621
  %5676 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5679 = fadd fast float %5678, %5676
  %5680 = fcmp fast ogt float %5679, 0.000000e+00
  br i1 %5680, label %5681, label %5705

; <label>:5681                                    ; preds = %5675
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = fsub fast float %5666, %5683
  %5686 = fsub fast float %5667, %5684
  %5687 = fcmp fast olt float %5685, 0.000000e+00
  %5688 = fcmp fast olt float %5686, 0.000000e+00
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5692 = extractvalue %dx.types.CBufRet.f32 %5689, 2
  %5693 = extractvalue %dx.types.CBufRet.f32 %5689, 3
  %5694 = select i1 %5687, float %5690, float %5692
  %5695 = select i1 %5688, float %5691, float %5693
  %5696 = fmul fast float %5694, %5685
  %5697 = fmul fast float %5695, %5686
  %5698 = call float @dx.op.unary.f32(i32 6, float %5696)  ; FAbs(value)
  %5699 = call float @dx.op.unary.f32(i32 6, float %5697)  ; FAbs(value)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5701 = call float @dx.op.binary.f32(i32 35, float %5698, float %5699)  ; FMax(a,b)
  %5702 = fsub fast float %5700, %5701
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = fmul fast float %5703, %5674
  br label %5705

; <label>:5705                                    ; preds = %5681, %5675
  %5706 = phi float [ %5704, %5681 ], [ 0.000000e+00, %5675 ]
  %5707 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5708 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5709 = fadd fast float %5708, %5707
  %5710 = fcmp fast ogt float %5709, 0.000000e+00
  br i1 %5710, label %5711, label %5735

; <label>:5711                                    ; preds = %5705
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 1
  %5715 = fsub fast float %5658, %5713
  %5716 = fsub fast float %5659, %5714
  %5717 = fcmp fast olt float %5715, 0.000000e+00
  %5718 = fcmp fast olt float %5716, 0.000000e+00
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = extractvalue %dx.types.CBufRet.f32 %5719, 3
  %5724 = select i1 %5717, float %5720, float %5722
  %5725 = select i1 %5718, float %5721, float %5723
  %5726 = fmul fast float %5724, %5715
  %5727 = fmul fast float %5725, %5716
  %5728 = call float @dx.op.unary.f32(i32 6, float %5726)  ; FAbs(value)
  %5729 = call float @dx.op.unary.f32(i32 6, float %5727)  ; FAbs(value)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5731 = call float @dx.op.binary.f32(i32 35, float %5728, float %5729)  ; FMax(a,b)
  %5732 = fsub fast float %5730, %5731
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = fmul fast float %5733, %5674
  br label %5735

; <label>:5735                                    ; preds = %5711, %5705, %5621
  %5736 = phi float [ 0.000000e+00, %5621 ], [ %5734, %5711 ], [ 0.000000e+00, %5705 ]
  %5737 = phi float [ 0.000000e+00, %5621 ], [ %5706, %5711 ], [ %5706, %5705 ]
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5740 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5741, 1
  %5744 = fsub fast float %5640, %5742
  %5745 = fsub fast float %5644, %5743
  %5746 = fcmp fast olt float %5744, 0.000000e+00
  %5747 = fcmp fast olt float %5745, 0.000000e+00
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5752 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5753 = select i1 %5746, float %5749, float %5751
  %5754 = select i1 %5747, float %5750, float %5752
  %5755 = fmul fast float %5753, %5744
  %5756 = fmul fast float %5754, %5745
  %5757 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5758 = call float @dx.op.unary.f32(i32 6, float %5756)  ; FAbs(value)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5760 = call float @dx.op.binary.f32(i32 35, float %5757, float %5758)  ; FMax(a,b)
  %5761 = fsub fast float %5759, %5760
  %5762 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5763 = call float @dx.op.binary.f32(i32 36, float %5762, float %5740)  ; FMin(a,b)
  %5764 = fmul fast float %5763, %5674
  %5765 = fsub fast float %5736, %5764
  %5766 = fsub fast float %5737, %5736
  %5767 = fsub fast float %5766, %5764
  %5768 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5769 = call float @dx.op.binary.f32(i32 35, float %5764, float %5768)  ; FMax(a,b)
  %5770 = fcmp fast olt float %5769, 1.000000e+00
  br i1 %5770, label %5771, label %6169, !dx.controlflow.hints !100

; <label>:5771                                    ; preds = %5735
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = fcmp fast une float %5773, 0.000000e+00
  br i1 %5774, label %5775, label %6169, !dx.controlflow.hints !101

; <label>:5775                                    ; preds = %5771
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.CBufRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %5780 = extractvalue %dx.types.CBufRet.f32 %5776, 3
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5791 = fmul fast float %5777, %5617
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5778, float %5791)  ; FMad(a,b,c)
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5779, float %5792)  ; FMad(a,b,c)
  %5794 = fadd fast float %5793, %5780
  %5795 = fmul fast float %5782, %5617
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5783, float %5795)  ; FMad(a,b,c)
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5784, float %5796)  ; FMad(a,b,c)
  %5798 = fadd fast float %5797, %5785
  %5799 = fmul fast float %5787, %5617
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5788, float %5799)  ; FMad(a,b,c)
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5789, float %5800)  ; FMad(a,b,c)
  %5802 = fadd fast float %5801, %5790
  %5803 = fcmp fast oge float %5794, 1.000000e+00
  %5804 = fcmp fast oge float %5798, 1.000000e+00
  %5805 = or i1 %5803, %5804
  %5806 = fcmp fast olt float %5794, 0.000000e+00
  %5807 = fcmp fast olt float %5798, 0.000000e+00
  %5808 = or i1 %5806, %5807
  %5809 = or i1 %5805, %5808
  br i1 %5809, label %6169, label %5810, !dx.controlflow.hints !102

; <label>:5810                                    ; preds = %5775
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.i32 %5815, 2
  %5817 = uitofp i32 %5816 to float
  %5818 = extractvalue %dx.types.CBufRet.i32 %5815, 3
  %5819 = uitofp i32 %5818 to float
  %5820 = extractvalue %dx.types.CBufRet.f32 %5811, 3
  %5821 = fmul fast float %5820, 2.000000e+00
  %5822 = fsub fast float %5794, %5812
  %5823 = fsub fast float %5798, %5813
  %5824 = fmul fast float %5821, %5822
  %5825 = fmul fast float %5821, %5823
  %5826 = fdiv fast float 1.000000e+00, %5600
  %5827 = fmul fast float %5825, %5826
  %5828 = call float @dx.op.unary.f32(i32 6, float %5827)  ; FAbs(value)
  %5829 = fmul fast float %5814, %5619
  %5830 = fmul fast float %5829, %5821
  %5831 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5832 = call float @dx.op.unary.f32(i32 6, float %5824)  ; FAbs(value)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5831, float %5828)  ; FMax(a,b)
  %5834 = call float @dx.op.binary.f32(i32 35, float %5832, float %5833)  ; FMax(a,b)
  %5835 = fmul fast float %5834, 2.000000e+00
  %5836 = call float @dx.op.unary.f32(i32 23, float %5835)  ; Log(value)
  %5837 = call float @dx.op.binary.f32(i32 35, float %5836, float %5817)  ; FMax(a,b)
  %5838 = call float @dx.op.unary.f32(i32 22, float %5837)  ; Frc(value)
  %5839 = fadd fast float %5838, 0xBFEA666660000000
  %5840 = fmul fast float %5839, 8.000000e+00
  %5841 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5842 = call float @dx.op.unary.f32(i32 27, float %5837)  ; Round_ni(value)
  %5843 = fadd fast float %5842, %5841
  %5844 = call float @dx.op.binary.f32(i32 36, float %5843, float %5819)  ; FMin(a,b)
  %5845 = call float @dx.op.unary.f32(i32 27, float %5844)  ; Round_ni(value)
  %5846 = fsub fast float -0.000000e+00, %5845
  %5847 = call float @dx.op.unary.f32(i32 21, float %5846)  ; Exp(value)
  %5848 = fmul fast float %5847, %5821
  %5849 = fmul fast float %5848, %5794
  %5850 = fmul fast float %5848, %5798
  %5851 = fmul fast float %5849, 2.500000e-01
  %5852 = fmul fast float %5850, 2.500000e-01
  %5853 = fadd fast float %5851, 5.000000e-01
  %5854 = fadd fast float %5852, 5.000000e-01
  %5855 = fsub fast float %5819, %5817
  %5856 = fptoui float %5855 to i32
  %5857 = add i32 %5856, 320
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5857)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = fcmp fast une float %5844, %5819
  %5862 = fsub fast float %5794, %5859
  %5863 = fsub fast float %5798, %5860
  %5864 = call float @dx.op.unary.f32(i32 6, float %5862)  ; FAbs(value)
  %5865 = call float @dx.op.unary.f32(i32 6, float %5863)  ; FAbs(value)
  %5866 = fmul fast float %5864, %5848
  %5867 = fmul fast float %5865, %5848
  %5868 = fcmp fast olt float %5866, 1.000000e+00
  %5869 = fcmp fast olt float %5867, 1.000000e+00
  %5870 = and i1 %5868, %5869
  %5871 = or i1 %5861, %5870
  br i1 %5871, label %5872, label %6169, !dx.controlflow.hints !103

; <label>:5872                                    ; preds = %5810
  %5873 = fmul fast float %5850, 5.000000e-01
  %5874 = fmul fast float %5849, 5.000000e-01
  %5875 = fadd fast float %5873, 5.000000e-01
  %5876 = fadd fast float %5874, 5.000000e-01
  %5877 = sitofp i32 %5816 to float
  %5878 = fsub fast float %5844, %5877
  %5879 = call float @dx.op.unary.f32(i32 27, float %5878)  ; Round_ni(value)
  %5880 = call float @dx.op.unary.f32(i32 22, float %5844)  ; Frc(value)
  %5881 = call float @dx.op.unary.f32(i32 22, float %5876)  ; Frc(value)
  %5882 = call float @dx.op.unary.f32(i32 22, float %5875)  ; Frc(value)
  %5883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5881, float %5882, float %5879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.ResRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.ResRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.ResRet.f32 %5883, 3
  %5888 = fcmp fast ogt float %5880, 0.000000e+00
  br i1 %5888, label %5889, label %5910, !dx.controlflow.hints !104

; <label>:5889                                    ; preds = %5872
  %5890 = fadd fast float %5879, 1.000000e+00
  %5891 = call float @dx.op.unary.f32(i32 22, float %5853)  ; Frc(value)
  %5892 = call float @dx.op.unary.f32(i32 22, float %5854)  ; Frc(value)
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5891, float %5892, float %5890, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = extractvalue %dx.types.ResRet.f32 %5893, 3
  %5898 = fsub fast float %5894, %5884
  %5899 = fsub fast float %5895, %5885
  %5900 = fsub fast float %5896, %5886
  %5901 = fsub fast float %5897, %5887
  %5902 = fmul fast float %5898, %5880
  %5903 = fmul fast float %5899, %5880
  %5904 = fmul fast float %5900, %5880
  %5905 = fmul fast float %5901, %5880
  %5906 = fadd fast float %5902, %5884
  %5907 = fadd fast float %5903, %5885
  %5908 = fadd fast float %5904, %5886
  %5909 = fadd fast float %5905, %5887
  br label %5910

; <label>:5910                                    ; preds = %5889, %5872
  %5911 = phi float [ %5906, %5889 ], [ %5884, %5872 ]
  %5912 = phi float [ %5907, %5889 ], [ %5885, %5872 ]
  %5913 = phi float [ %5908, %5889 ], [ %5886, %5872 ]
  %5914 = phi float [ %5909, %5889 ], [ %5887, %5872 ]
  %5915 = fadd fast float %5911, -5.000000e-01
  %5916 = fadd fast float %5913, -5.000000e-01
  %5917 = fmul fast float %5915, 0xBFD5555560000000
  %5918 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5916, float %5917)  ; FMad(a,b,c)
  %5919 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5912, float 0.000000e+00)  ; FMad(a,b,c)
  %5920 = fadd fast float %5919, %5914
  %5921 = fmul fast float %5915, -7.500000e-01
  %5922 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5916, float %5921)  ; FMad(a,b,c)
  %5923 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5912, float 0.000000e+00)  ; FMad(a,b,c)
  %5924 = fadd fast float %5923, %5914
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5930 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %5931 = extractvalue %dx.types.CBufRet.f32 %5927, 3
  %5932 = fsub fast float %5928, %5918
  %5933 = fsub fast float %5929, %5920
  %5934 = fsub fast float %5930, %5922
  %5935 = fsub fast float %5931, %5924
  %5936 = fmul fast float %5932, %5926
  %5937 = fmul fast float %5933, %5926
  %5938 = fmul fast float %5934, %5926
  %5939 = fmul fast float %5935, %5926
  %5940 = fadd fast float %5936, %5918
  %5941 = fadd fast float %5937, %5920
  %5942 = fadd fast float %5938, %5922
  %5943 = fadd fast float %5939, %5924
  %5944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5945 = extractvalue %dx.types.ResRet.i32 %5944, 0
  %5946 = and i32 %5945, 536870911
  %5947 = uitofp i32 %5946 to float
  %5948 = fmul fast float %5947, %5794
  %5949 = fmul fast float %5947, %5798
  %5950 = fptoui float %5948 to i32
  %5951 = fptoui float %5949 to i32
  %5952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.i32 %5952, 0
  %5954 = and i32 %5953, 31
  %5955 = lshr i32 %5950, %5954
  %5956 = lshr i32 %5951, %5954
  %5957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5958 = extractvalue %dx.types.ResRet.i32 %5957, 0
  %5959 = and i32 %5958, 31
  %5960 = shl i32 1, %5959
  %5961 = call i32 @dx.op.binary.i32(i32 40, i32 %5960, i32 4)  ; UMin(a,b)
  %5962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5963 = extractvalue %dx.types.ResRet.i32 %5962, 0
  %5964 = extractvalue %dx.types.ResRet.i32 %5962, 1
  %5965 = icmp eq i32 %5961, 0
  br i1 %5965, label %6007, label %5966

; <label>:5966                                    ; preds = %5910
  br label %5967

; <label>:5967                                    ; preds = %5995, %5966
  %5968 = phi i32 [ %5998, %5995 ], [ 0, %5966 ]
  %5969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.i32 %5969, 0
  %5971 = lshr i32 %5970, 16
  %5972 = and i32 %5971, 31
  %5973 = shl i32 %5956, %5972
  %5974 = add i32 %5973, %5955
  %5975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5976 = extractvalue %dx.types.ResRet.i32 %5975, 0
  %5977 = and i32 %5976, 31
  %5978 = shl i32 %5974, %5977
  %5979 = add i32 %5978, %5968
  %5980 = shl i32 %5979, 2
  %5981 = add i32 %5980, 32
  %5982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5981, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.i32 %5982, 0
  %5984 = icmp slt i32 %5983, 0
  %5985 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5968
  %5986 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5968
  %5987 = bitcast float* %5985 to i32*
  %5988 = bitcast float* %5986 to i32*
  br i1 %5984, label %5989, label %5995

; <label>:5989                                    ; preds = %5967
  %5990 = and i32 %5983, 1073741823
  %5991 = add nuw nsw i32 %5990, 20
  %5992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5991, i32 undef)  ; BufferLoad(srv,index,wot)
  %5993 = extractvalue %dx.types.ResRet.i32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.i32 %5992, 1
  br label %5995

; <label>:5995                                    ; preds = %5989, %5967
  %5996 = phi i32 [ %5993, %5989 ], [ %5963, %5967 ]
  %5997 = phi i32 [ %5994, %5989 ], [ %5964, %5967 ]
  store i32 %5996, i32* %5987, align 4
  store i32 %5997, i32* %5988, align 4
  %5998 = add nuw i32 %5968, 1
  %5999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.i32 %5999, 2
  %6001 = icmp eq i32 %6000, 0
  %6002 = icmp ugt i32 %5983, -1073741825
  %6003 = and i1 %6002, %6001
  %6004 = icmp ult i32 %5998, %5961
  %6005 = and i1 %6003, %6004
  br i1 %6005, label %5967, label %6006

; <label>:6006                                    ; preds = %5995
  br label %6007

; <label>:6007                                    ; preds = %6006, %5910
  %6008 = phi i32 [ 0, %5910 ], [ %5998, %6006 ]
  %6009 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %6010 = fptoui float %6009 to i32
  %6011 = icmp eq i32 %6010, 0
  br i1 %6011, label %6063, label %6012

; <label>:6012                                    ; preds = %6007
  br label %6013

; <label>:6013                                    ; preds = %6058, %6012
  %6014 = phi i32 [ %6059, %6058 ], [ %6008, %6012 ]
  %6015 = phi i32 [ %6060, %6058 ], [ 0, %6012 ]
  %6016 = lshr i32 %6015, 2
  %6017 = and i32 %6015, 3
  %6018 = add nuw nsw i32 %6016, 83
  %6019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6018)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.i32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.i32 %6019, 1
  %6022 = extractvalue %dx.types.CBufRet.i32 %6019, 2
  %6023 = extractvalue %dx.types.CBufRet.i32 %6019, 3
  %6024 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6020, i32* %6024, align 4
  %6025 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6021, i32* %6025, align 4
  %6026 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6022, i32* %6026, align 4
  %6027 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6023, i32* %6027, align 4
  %6028 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6017
  %6029 = load i32, i32* %6028, align 4, !tbaa !105, !noalias !109
  %6030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6031 = extractvalue %dx.types.ResRet.i32 %6030, 0
  %6032 = lshr i32 %6031, 16
  %6033 = and i32 %6032, 31
  %6034 = shl i32 %5956, %6033
  %6035 = add i32 %6034, %5955
  %6036 = shl i32 %6035, 2
  %6037 = add i32 %6036, %6029
  %6038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6037, i32 undef)  ; BufferLoad(srv,index,wot)
  %6039 = extractvalue %dx.types.ResRet.i32 %6038, 0
  %6040 = icmp eq i32 %6039, 0
  br i1 %6040, label %6058, label %6041

; <label>:6041                                    ; preds = %6013
  %6042 = icmp slt i32 %6039, 0
  %6043 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6014
  %6044 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6014
  %6045 = bitcast float* %6043 to i32*
  %6046 = bitcast float* %6044 to i32*
  br i1 %6042, label %6047, label %6054

; <label>:6047                                    ; preds = %6041
  %6048 = and i32 %6039, 1073741823
  %6049 = add i32 %6029, 20
  %6050 = add i32 %6049, %6048
  %6051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6050, i32 undef)  ; BufferLoad(srv,index,wot)
  %6052 = extractvalue %dx.types.ResRet.i32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.i32 %6051, 1
  br label %6054

; <label>:6054                                    ; preds = %6047, %6041
  %6055 = phi i32 [ %6052, %6047 ], [ %5963, %6041 ]
  %6056 = phi i32 [ %6053, %6047 ], [ %5964, %6041 ]
  store i32 %6055, i32* %6045, align 4
  store i32 %6056, i32* %6046, align 4
  %6057 = add i32 %6014, 1
  br label %6058

; <label>:6058                                    ; preds = %6054, %6013
  %6059 = phi i32 [ %6014, %6013 ], [ %6057, %6054 ]
  %6060 = add nuw i32 %6015, 1
  %6061 = icmp eq i32 %6060, %6010
  br i1 %6061, label %6062, label %6013

; <label>:6062                                    ; preds = %6058
  br label %6063

; <label>:6063                                    ; preds = %6062, %6007
  %6064 = phi i32 [ %6008, %6007 ], [ %6059, %6062 ]
  %6065 = icmp eq i32 %6064, 1
  %6066 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6067 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6065, label %6068, label %6071

; <label>:6068                                    ; preds = %6063
  %6069 = load float, float* %6066, align 4
  %6070 = load float, float* %6067, align 4
  br label %6098

; <label>:6071                                    ; preds = %6063
  %6072 = load float, float* %6066, align 4
  %6073 = load float, float* %6067, align 4
  %6074 = fdiv fast float 1.000000e+00, %6073
  %6075 = fsub fast float %6072, %6074
  %6076 = icmp ugt i32 %6064, 1
  br i1 %6076, label %6077, label %6093

; <label>:6077                                    ; preds = %6071
  br label %6078

; <label>:6078                                    ; preds = %6078, %6077
  %6079 = phi float [ %6088, %6078 ], [ %6075, %6077 ]
  %6080 = phi float [ %6089, %6078 ], [ %6072, %6077 ]
  %6081 = phi i32 [ %6090, %6078 ], [ 1, %6077 ]
  %6082 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6081
  %6083 = load float, float* %6082, align 4
  %6084 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6081
  %6085 = load float, float* %6084, align 4
  %6086 = fdiv fast float 1.000000e+00, %6085
  %6087 = fsub fast float %6083, %6086
  %6088 = call float @dx.op.binary.f32(i32 36, float %6079, float %6087)  ; FMin(a,b)
  %6089 = call float @dx.op.binary.f32(i32 35, float %6080, float %6083)  ; FMax(a,b)
  %6090 = add nuw i32 %6081, 1
  %6091 = icmp eq i32 %6090, %6064
  br i1 %6091, label %6092, label %6078

; <label>:6092                                    ; preds = %6078
  br label %6093

; <label>:6093                                    ; preds = %6092, %6071
  %6094 = phi float [ %6075, %6071 ], [ %6088, %6092 ]
  %6095 = phi float [ %6072, %6071 ], [ %6089, %6092 ]
  %6096 = fsub fast float %6095, %6094
  %6097 = fdiv fast float 1.000000e+00, %6096
  br label %6098

; <label>:6098                                    ; preds = %6093, %6068
  %6099 = phi float [ %6069, %6068 ], [ %6095, %6093 ]
  %6100 = phi float [ %6070, %6068 ], [ %6097, %6093 ]
  %6101 = fadd fast float %5802, %6099
  %6102 = fmul fast float %6101, %6100
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = fmul fast float %6103, 2.000000e+00
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = fmul fast float %5940, %5940
  %6107 = fsub fast float %5941, %6106
  %6108 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6107)  ; FMax(a,b)
  %6109 = fdiv fast float 1.000000e+00, %6108
  %6110 = fmul fast float %5941, %5940
  %6111 = fsub fast float %5942, %6110
  %6112 = fsub fast float %6105, %5940
  %6113 = fmul fast float %6105, %6105
  %6114 = fsub fast float %6113, %5941
  %6115 = fmul fast float %6109, %6111
  %6116 = fmul fast float %6115, %6112
  %6117 = fsub fast float %6114, %6116
  %6118 = fmul fast float %5941, %5941
  %6119 = fsub fast float %5943, %6118
  %6120 = fmul fast float %6111, %6111
  %6121 = fmul fast float %6120, %6109
  %6122 = fsub fast float %6119, %6121
  %6123 = fdiv fast float %6117, %6122
  %6124 = fmul fast float %6123, %6111
  %6125 = fsub fast float %6112, %6124
  %6126 = fmul fast float %6125, %6109
  %6127 = fmul fast float %6126, %5940
  %6128 = fsub fast float 1.000000e+00, %6127
  %6129 = fmul fast float %6123, %5941
  %6130 = fsub fast float %6128, %6129
  %6131 = fmul fast float %6126, %6126
  %6132 = fmul fast float %6123, 4.000000e+00
  %6133 = fmul fast float %6132, %6130
  %6134 = fsub fast float %6131, %6133
  %6135 = call float @dx.op.unary.f32(i32 24, float %6134)  ; Sqrt(value)
  %6136 = fcmp fast oge float %6126, 0.000000e+00
  %6137 = fsub fast float -0.000000e+00, %6135
  %6138 = select i1 %6136, float %6137, float %6135
  %6139 = fsub fast float %6138, %6126
  %6140 = fdiv fast float %6139, %6123
  %6141 = fdiv fast float %6130, %6139
  %6142 = fmul fast float %6140, 5.000000e-01
  %6143 = fmul fast float %6141, 2.000000e+00
  %6144 = select i1 %6136, float %6142, float %6143
  %6145 = select i1 %6136, float %6143, float %6142
  %6146 = call float @dx.op.binary.f32(i32 35, float %6144, float %6145)  ; FMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 36, float %6144, float %6145)  ; FMin(a,b)
  %6148 = fcmp fast ogt float %6105, %6146
  %6149 = fsub fast float %6105, %6147
  %6150 = fsub fast float %6105, %6146
  %6151 = fsub fast float %6146, %6147
  %6152 = select i1 %6148, float %6150, float %6151
  %6153 = fmul float %6149, %6152
  %6154 = select i1 %6148, float %6147, float %6105
  %6155 = fcmp fast ogt float %6105, %6147
  %6156 = fmul fast float %6154, %6146
  %6157 = fadd fast float %6154, %6146
  %6158 = fmul fast float %6157, %5940
  %6159 = fadd fast float %6156, %5941
  %6160 = fsub fast float %6159, %6158
  %6161 = fdiv fast float %6160, %6153
  %6162 = select i1 %6155, float %6161, float 0.000000e+00
  %6163 = fsub fast float 1.000000e+00, %6162
  %6164 = select i1 %6148, float %6163, float %6162
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6166 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %6167 = fmul fast float %6166, %6165
  %6168 = fsub fast float 1.000000e+00, %6167
  br label %6169

; <label>:6169                                    ; preds = %6098, %5810, %5775, %5771, %5735
  %6170 = phi float [ 1.000000e+00, %5735 ], [ %6168, %6098 ], [ 1.000000e+00, %5775 ], [ 1.000000e+00, %5810 ], [ 1.000000e+00, %5771 ]
  %6171 = fcmp fast ogt float %5767, 0.000000e+00
  br i1 %6171, label %6172, label %6180, !dx.controlflow.hints !118

; <label>:6172                                    ; preds = %6169
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6175 = fadd fast float %6174, %5648
  %6176 = call float @dx.op.binary.f32(i32 35, float %6175, float 0.000000e+00)  ; FMax(a,b)
  %6177 = fadd fast float %6176, 0x3F10000000000000
  %6178 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5666, float %5667, float undef, float undef, i32 0, i32 0, i32 undef, float %6177)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6179 = extractvalue %dx.types.ResRet.f32 %6178, 0
  br label %6180

; <label>:6180                                    ; preds = %6172, %6169
  %6181 = phi float [ %6179, %6172 ], [ 1.000000e+00, %6169 ]
  %6182 = fcmp fast ogt float %5765, 0.000000e+00
  br i1 %6182, label %6183, label %6191, !dx.controlflow.hints !119

; <label>:6183                                    ; preds = %6180
  %6184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.f32 %6184, 1
  %6186 = fadd fast float %6185, %5648
  %6187 = call float @dx.op.binary.f32(i32 35, float %6186, float 0.000000e+00)  ; FMax(a,b)
  %6188 = fadd fast float %6187, 0x3F10000000000000
  %6189 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5658, float %5659, float undef, float undef, i32 0, i32 0, i32 undef, float %6188)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  br label %6191

; <label>:6191                                    ; preds = %6183, %6180
  %6192 = phi float [ %6190, %6183 ], [ 1.000000e+00, %6180 ]
  %6193 = fcmp fast ogt float %5764, 0.000000e+00
  br i1 %6193, label %6194, label %6206, !dx.controlflow.hints !120

; <label>:6194                                    ; preds = %6191
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = fadd fast float %6196, %5648
  %6198 = call float @dx.op.binary.f32(i32 35, float %6197, float 0.000000e+00)  ; FMax(a,b)
  %6199 = fadd fast float %6198, 0x3F10000000000000
  br i1 %5651, label %6200, label %6203, !dx.controlflow.hints !121

; <label>:6200                                    ; preds = %6194
  %6201 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5640, float %5644, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  br label %6206

; <label>:6203                                    ; preds = %6194
  %6204 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5640, float %5644, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  br label %6206

; <label>:6206                                    ; preds = %6203, %6200, %6191
  %6207 = phi float [ %6202, %6200 ], [ %6205, %6203 ], [ 1.000000e+00, %6191 ]
  %6208 = fsub fast float %6181, %6170
  %6209 = fmul fast float %6208, %5737
  %6210 = fadd fast float %6209, %6170
  %6211 = fsub fast float %6192, %6210
  %6212 = fmul fast float %6211, %5736
  %6213 = fadd fast float %6212, %6210
  %6214 = fsub fast float %6207, %6213
  %6215 = fmul fast float %6214, %5764
  %6216 = fadd fast float %6215, %6213
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 2
  %6219 = fcmp fast ogt float %6218, 0.000000e+00
  br i1 %6219, label %6220, label %6260, !dx.controlflow.hints !122

; <label>:6220                                    ; preds = %6206
  %6221 = fcmp fast ugt float %6218, 0.000000e+00
  br i1 %6221, label %6222, label %6257

; <label>:6222                                    ; preds = %6220
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.CBufRet.f32 %6223, 3
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6233 = extractvalue %dx.types.CBufRet.f32 %6217, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = fadd fast float %6236, %5617
  %6240 = fadd fast float %6237, %5618
  %6241 = fadd fast float %6238, %5619
  %6242 = fmul fast float %6239, %6224
  %6243 = call float @dx.op.tertiary.f32(i32 46, float %6225, float %6240, float %6242)  ; FMad(a,b,c)
  %6244 = call float @dx.op.tertiary.f32(i32 46, float %6226, float %6241, float %6243)  ; FMad(a,b,c)
  %6245 = fadd fast float %6244, %6227
  %6246 = fmul fast float %6239, %6229
  %6247 = call float @dx.op.tertiary.f32(i32 46, float %6230, float %6240, float %6246)  ; FMad(a,b,c)
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6231, float %6241, float %6247)  ; FMad(a,b,c)
  %6249 = fadd fast float %6248, %6232
  %6250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6245, float %6249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = fmul fast float %6251, %6234
  %6253 = fadd fast float %6252, %6233
  %6254 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  %6255 = fmul fast float %6254, %6218
  %6256 = fsub fast float 1.000000e+00, %6255
  br label %6257

; <label>:6257                                    ; preds = %6222, %6220
  %6258 = phi float [ %6256, %6222 ], [ 1.000000e+00, %6220 ]
  %6259 = fmul fast float %6258, %6216
  br label %6260

; <label>:6260                                    ; preds = %6257, %6206, %5597
  %6261 = phi float [ 1.000000e+00, %5597 ], [ %6259, %6257 ], [ %6216, %6206 ]
  %6262 = call float @dx.op.binary.f32(i32 36, float %6261, float %6261)  ; FMin(a,b)
  %6263 = call float @dx.op.binary.f32(i32 36, float %6261, float %6262)  ; FMin(a,b)
  %6264 = fcmp fast ogt float %6263, 0.000000e+00
  br i1 %6264, label %6265, label %6425, !dx.controlflow.hints !123

; <label>:6265                                    ; preds = %6260
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6270 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6280 = extractvalue %dx.types.CBufRet.f32 %6276, 3
  %6281 = fmul fast float %6267, %5617
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %6268, float %6281)  ; FMad(a,b,c)
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %6269, float %6282)  ; FMad(a,b,c)
  %6284 = fadd fast float %6283, %6270
  %6285 = fmul fast float %6272, %5617
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %6273, float %6285)  ; FMad(a,b,c)
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %6274, float %6286)  ; FMad(a,b,c)
  %6288 = fadd fast float %6287, %6275
  %6289 = fmul fast float %6277, %5617
  %6290 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %6278, float %6289)  ; FMad(a,b,c)
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %6279, float %6290)  ; FMad(a,b,c)
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.CBufRet.f32 %6292, 3
  %6296 = fmul fast float %6295, %6284
  %6297 = fmul fast float %6295, %6288
  %6298 = fadd fast float %6296, %6293
  %6299 = fadd fast float %6297, %6294
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = fsub fast float %6298, %6301
  %6304 = fsub fast float %6299, %6302
  %6305 = fcmp fast olt float %6303, 0.000000e+00
  %6306 = fcmp fast olt float %6304, 0.000000e+00
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6312 = select i1 %6305, float %6308, float %6310
  %6313 = select i1 %6306, float %6309, float %6311
  %6314 = fmul fast float %6312, %6303
  %6315 = fmul fast float %6313, %6304
  %6316 = call float @dx.op.unary.f32(i32 6, float %6314)  ; FAbs(value)
  %6317 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6318 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %6319 = call float @dx.op.binary.f32(i32 35, float %6316, float %6317)  ; FMax(a,b)
  %6320 = fsub fast float %6318, %6319
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fcmp fast ogt float %6321, 0.000000e+00
  br i1 %6322, label %6323, label %6364, !dx.controlflow.hints !124

; <label>:6323                                    ; preds = %6265
  %6324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6298, float %6299, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6325 = extractvalue %dx.types.ResRet.f32 %6324, 1
  %6326 = fcmp fast ogt float %6325, 0.000000e+00
  br i1 %6326, label %6327, label %6359

; <label>:6327                                    ; preds = %6323
  %6328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6298, float %6299, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6329 = extractvalue %dx.types.ResRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.ResRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.ResRet.f32 %6328, 2
  %6332 = extractvalue %dx.types.ResRet.f32 %6328, 3
  %6333 = fsub fast float 1.000000e+00, %6280
  %6334 = fsub fast float %6333, %6291
  %6335 = fmul fast float %6334, 0x400921FB60000000
  %6336 = fadd fast float %6335, 0x3FF921FB60000000
  %6337 = call float @dx.op.unary.f32(i32 13, float %6336)  ; Sin(value)
  %6338 = fadd fast float %6337, -1.000000e+00
  %6339 = fmul fast float %6338, 0x3FD45F3060000000
  %6340 = fmul fast float %6334, 0x401921FB60000000
  %6341 = fadd fast float %6340, 0x400921FB60000000
  %6342 = call float @dx.op.unary.f32(i32 13, float %6341)  ; Sin(value)
  %6343 = fadd fast float %6342, 0x3E7777A5C0000000
  %6344 = fmul fast float %6343, 0x3FC45F3060000000
  %6345 = fmul fast float %6334, 0x4022D97C80000000
  %6346 = fadd fast float %6345, 0x4012D97C80000000
  %6347 = call float @dx.op.unary.f32(i32 13, float %6346)  ; Sin(value)
  %6348 = fadd fast float %6347, 1.000000e+00
  %6349 = fmul fast float %6348, 0x3FBB2995E0000000
  %6350 = fmul fast float %6334, 0x402921FB60000000
  %6351 = fadd fast float %6350, 0x401921FB60000000
  %6352 = call float @dx.op.unary.f32(i32 13, float %6351)  ; Sin(value)
  %6353 = fadd fast float %6352, 0xBE8777A5C0000000
  %6354 = fmul fast float %6353, 0x3FB45F3060000000
  %6355 = call float @dx.op.dot4.f32(i32 56, float %6329, float %6330, float %6331, float %6332, float %6339, float %6344, float %6349, float %6354)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6356 = fmul fast float %6355, 0xBFF7154760000000
  %6357 = call float @dx.op.unary.f32(i32 21, float %6356)  ; Exp(value)
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  br label %6359

; <label>:6359                                    ; preds = %6327, %6323
  %6360 = phi float [ %6358, %6327 ], [ 1.000000e+00, %6323 ]
  %6361 = fadd fast float %6360, -1.000000e+00
  %6362 = fmul fast float %6361, %6321
  %6363 = fadd fast float %6362, 1.000000e+00
  br label %6364

; <label>:6364                                    ; preds = %6359, %6265
  %6365 = phi float [ %6363, %6359 ], [ 1.000000e+00, %6265 ]
  %6366 = fmul fast float %6365, %6261
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6371 = fadd fast float %6368, %197
  %6372 = fadd fast float %6369, %198
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6375 = fsub fast float -0.000000e+00, %6371
  %6376 = fsub fast float -0.000000e+00, %6372
  %6377 = fsub fast float %5309, %6370
  %6378 = fadd fast float %6377, %6374
  %6379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6375, float %6376, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %6380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5598, float %5599, float %5600)  ; Dot3(ax,ay,az,bx,by,bz)
  %6381 = fdiv fast float 1.000000e+00, %6380
  %6382 = fmul fast float %6381, %6379
  %6383 = fmul fast float %5598, %6382
  %6384 = fmul fast float %5599, %6382
  %6385 = fadd fast float %6383, %6371
  %6386 = fadd fast float %6384, %6372
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = fsub fast float %6385, %6388
  %6391 = fsub fast float %6386, %6389
  %6392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6393 = extractvalue %dx.types.CBufRet.f32 %6392, 2
  %6394 = extractvalue %dx.types.CBufRet.f32 %6392, 3
  %6395 = fmul fast float %6390, %6393
  %6396 = fmul fast float %6391, %6394
  %6397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.i32 %6397, 3
  %6399 = icmp eq i32 %6398, 0
  br i1 %6399, label %6405, label %6400

; <label>:6400                                    ; preds = %6364
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6395, float %6396, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.ResRet.f32 %6401, 2
  br label %6410

; <label>:6405                                    ; preds = %6364
  %6406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6395, float %6396, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.ResRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.ResRet.f32 %6406, 2
  br label %6410

; <label>:6410                                    ; preds = %6405, %6400
  %6411 = phi float [ %6402, %6400 ], [ %6407, %6405 ]
  %6412 = phi float [ %6403, %6400 ], [ %6408, %6405 ]
  %6413 = phi float [ %6404, %6400 ], [ %6409, %6405 ]
  %6414 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6415 = fmul fast float %6414, %6411
  %6416 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6417 = fsub fast float %6382, %6416
  %6418 = fsub fast float %6417, %6415
  %6419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6418)  ; FMax(a,b)
  %6420 = fmul fast float %6419, %6412
  %6421 = call float @dx.op.binary.f32(i32 36, float %6413, float %6420)  ; FMin(a,b)
  %6422 = fmul fast float %6421, 0xBFF7154760000000
  %6423 = call float @dx.op.unary.f32(i32 21, float %6422)  ; Exp(value)
  %6424 = fmul fast float %6366, %6423
  br label %6425

; <label>:6425                                    ; preds = %6410, %6260
  %6426 = phi float [ %6424, %6410 ], [ %6261, %6260 ]
  %6427 = call float @dx.op.binary.f32(i32 36, float %6426, float %6426)  ; FMin(a,b)
  %6428 = call float @dx.op.binary.f32(i32 36, float %6426, float %6427)  ; FMin(a,b)
  %6429 = fcmp fast ogt float %6428, 0.000000e+00
  br i1 %6429, label %6430, label %6681, !dx.controlflow.hints !125

; <label>:6430                                    ; preds = %6425
  %6431 = fmul fast float %6426, %5609
  %6432 = fmul fast float %6426, %5610
  %6433 = fmul fast float %6426, %5611
  %6434 = fsub fast float %199, %4486
  %6435 = fcmp fast ogt float %6434, 0.000000e+00
  %6436 = fmul fast float %5598, 5.120000e+02
  %6437 = fmul fast float %5599, 5.120000e+02
  %6438 = fmul fast float %5600, 5.120000e+02
  %6439 = fadd fast float %6438, %199
  %6440 = fsub fast float %4486, %6439
  %6441 = fmul fast float %6440, 2.000000e+00
  %6442 = fadd fast float %6441, %6439
  %6443 = select i1 %6435, float %6442, float %6439
  %6444 = fsub fast float %6443, %199
  %6445 = call float @dx.op.dot3.f32(i32 55, float %6436, float %6437, float %6444, float %6436, float %6437, float %6444)  ; Dot3(ax,ay,az,bx,by,bz)
  %6446 = call float @dx.op.unary.f32(i32 25, float %6445)  ; Rsqrt(value)
  %6447 = fmul fast float %6446, %6436
  %6448 = fmul fast float %6446, %6437
  %6449 = fmul fast float %6446, %6444
  %6450 = fsub fast float %4486, %199
  %6451 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6450)  ; Dot3(ax,ay,az,bx,by,bz)
  %6452 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6447, float %6448, float %6449)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = fdiv fast float 1.000000e+00, %6452
  %6454 = fmul fast float %6453, %6451
  %6455 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6434, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = fcmp fast ogt float %6455, 0.000000e+00
  %6457 = fcmp fast olt float %6455, 0.000000e+00
  %6458 = zext i1 %6456 to i32
  %6459 = zext i1 %6457 to i32
  %6460 = sub nsw i32 %6458, %6459
  %6461 = sitofp i32 %6460 to float
  %6462 = fsub fast float %6443, %4486
  %6463 = call float @dx.op.dot3.f32(i32 55, float %6436, float %6437, float %6462, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6464 = fcmp fast ogt float %6463, 0.000000e+00
  %6465 = fcmp fast olt float %6463, 0.000000e+00
  %6466 = zext i1 %6464 to i32
  %6467 = zext i1 %6465 to i32
  %6468 = sub nsw i32 %6466, %6467
  %6469 = sitofp i32 %6468 to float
  %6470 = fcmp fast une float %6461, %6469
  br i1 %6470, label %6471, label %6481

; <label>:6471                                    ; preds = %6430
  %6472 = fmul fast float %6454, %6449
  %6473 = fmul fast float %6454, %6448
  %6474 = fmul fast float %6454, %6447
  %6475 = fmul fast float %6474, %6474
  %6476 = fmul fast float %6473, %6473
  %6477 = fadd fast float %6475, %6476
  %6478 = fmul fast float %6472, %6472
  %6479 = fadd fast float %6477, %6478
  %6480 = call float @dx.op.unary.f32(i32 24, float %6479)  ; Sqrt(value)
  br label %6491

; <label>:6481                                    ; preds = %6430
  %6482 = icmp slt i32 %6460, 0
  br i1 %6482, label %6483, label %6491

; <label>:6483                                    ; preds = %6481
  %6484 = fsub fast float %199, %6443
  %6485 = fmul fast float %6436, %6436
  %6486 = fmul fast float %6437, %6437
  %6487 = fadd fast float %6485, %6486
  %6488 = fmul fast float %6484, %6484
  %6489 = fadd fast float %6487, %6488
  %6490 = call float @dx.op.unary.f32(i32 24, float %6489)  ; Sqrt(value)
  br label %6491

; <label>:6491                                    ; preds = %6483, %6481, %6471
  %6492 = phi float [ %6480, %6471 ], [ %6490, %6483 ], [ 0.000000e+00, %6481 ]
  %6493 = fsub fast float -0.000000e+00, %6492
  %6494 = select i1 %6435, float -0.000000e+00, float %6493
  %6495 = fmul fast float %4487, 0x3FF7154760000000
  %6496 = fmul fast float %6495, %6494
  %6497 = fmul fast float %4488, 0x3FF7154760000000
  %6498 = fmul fast float %6497, %6494
  %6499 = fmul fast float %4489, 0x3FF7154760000000
  %6500 = fmul fast float %6499, %6494
  %6501 = call float @dx.op.unary.f32(i32 21, float %6496)  ; Exp(value)
  %6502 = call float @dx.op.unary.f32(i32 21, float %6498)  ; Exp(value)
  %6503 = call float @dx.op.unary.f32(i32 21, float %6500)  ; Exp(value)
  %6504 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6505 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6506 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6507 = fmul fast float %6431, %6504
  %6508 = fmul fast float %6432, %6505
  %6509 = fmul fast float %6433, %6506
  %6510 = fsub fast float %5598, %5312
  %6511 = fsub fast float %5599, %5313
  %6512 = fsub fast float %5600, %5314
  %6513 = call float @dx.op.dot3.f32(i32 55, float %6510, float %6511, float %6512, float %6510, float %6511, float %6512)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = call float @dx.op.unary.f32(i32 25, float %6513)  ; Rsqrt(value)
  %6515 = fmul fast float %6514, %6510
  %6516 = fmul fast float %6514, %6511
  %6517 = fmul fast float %6514, %6512
  %6518 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5272, float %5273, float %5274)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %6515, float %6516, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6521 = fmul fast float %6520, %6520
  %6522 = fmul fast float %6521, %5333
  %6523 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6524 = fmul fast float %6523, %6520
  %6525 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float %6515, float %6516, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6526 = fmul fast float %6525, %6525
  %6527 = call float @dx.op.unary.f32(i32 6, float %6518)  ; FAbs(value)
  %6528 = fsub fast float 1.000000e+00, %5275
  %6529 = call float @dx.op.binary.f32(i32 35, float %6528, float 0x3F847AE140000000)  ; FMax(a,b)
  %6530 = fmul fast float %6529, %6529
  %6531 = fmul fast float %6530, %6530
  %6532 = fsub fast float 1.000000e+00, %6531
  %6533 = fmul fast float %5320, %5320
  %6534 = fmul fast float %6533, %6532
  %6535 = fadd fast float %6534, %6531
  %6536 = bitcast float %6535 to i32
  %6537 = ashr i32 %6536, 1
  %6538 = add nsw i32 %6537, 532487669
  %6539 = bitcast i32 %6538 to float
  %6540 = fadd fast float %6539, %5320
  %6541 = fmul fast float %6531, %6526
  %6542 = fsub fast float 1.000000e+00, %6526
  %6543 = fadd fast float %6542, %6541
  %6544 = fmul fast float %6527, %6527
  %6545 = fmul fast float %6544, %6532
  %6546 = fadd fast float %6545, %6531
  %6547 = bitcast float %6546 to i32
  %6548 = ashr i32 %6547, 1
  %6549 = add nsw i32 %6548, 532487669
  %6550 = bitcast i32 %6549 to float
  %6551 = fadd fast float %6550, %6527
  %6552 = fmul fast float %6543, %6543
  %6553 = fmul fast float %6552, %6540
  %6554 = fmul fast float %6553, %6551
  %6555 = fdiv fast float 0x3FF0A00000000000, %6554
  %6556 = fmul fast float %6555, %6531
  %6557 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = bitcast float %6558 to i32
  %6560 = sitofp i32 %6559 to float
  %6561 = fmul fast float %6560, 5.000000e+00
  %6562 = fadd fast float %6561, 0xC1EFBF8940000000
  %6563 = fptosi float %6562 to i32
  %6564 = bitcast i32 %6563 to float
  %6565 = fsub fast float 1.000000e+00, %5269
  %6566 = fsub fast float 1.000000e+00, %5270
  %6567 = fsub fast float 1.000000e+00, %5318
  %6568 = fmul fast float %6564, %6565
  %6569 = fmul fast float %6564, %6566
  %6570 = fmul fast float %6564, %6567
  %6571 = fadd fast float %6568, %5269
  %6572 = fadd fast float %6569, %5270
  %6573 = fadd fast float %6570, %5318
  br i1 %5449, label %6574, label %6597

; <label>:6574                                    ; preds = %6491
  %6575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %6557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6576 = extractvalue %dx.types.ResRet.f32 %6575, 0
  %6577 = extractvalue %dx.types.ResRet.f32 %6575, 1
  %6578 = extractvalue %dx.types.ResRet.f32 %6575, 2
  %6579 = fadd fast float %6576, -5.000000e-01
  %6580 = fadd fast float %6577, -5.000000e-01
  %6581 = fadd fast float %6578, -5.000000e-01
  %6582 = fmul fast float %5269, 4.000000e+00
  %6583 = fmul fast float %6582, %6565
  %6584 = fmul fast float %6583, %6579
  %6585 = fmul fast float %5270, 4.000000e+00
  %6586 = fmul fast float %6585, %6566
  %6587 = fmul fast float %6586, %6580
  %6588 = fmul fast float %5318, 4.000000e+00
  %6589 = fmul fast float %6588, %6567
  %6590 = fmul fast float %6589, %6581
  %6591 = fadd fast float %6584, %6571
  %6592 = fadd fast float %6587, %6572
  %6593 = fadd fast float %6590, %6573
  %6594 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6595 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6596 = call float @dx.op.unary.f32(i32 7, float %6593)  ; Saturate(value)
  br label %6597

; <label>:6597                                    ; preds = %6574, %6491
  %6598 = phi float [ %6594, %6574 ], [ %6571, %6491 ]
  %6599 = phi float [ %6595, %6574 ], [ %6572, %6491 ]
  %6600 = phi float [ %6596, %6574 ], [ %6573, %6491 ]
  %6601 = fmul fast float %6518, 9.843750e-01
  %6602 = fadd fast float %6601, 7.812500e-03
  %6603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6602, float %5439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6604 = extractvalue %dx.types.ResRet.f32 %6603, 2
  %6605 = extractvalue %dx.types.ResRet.f32 %6603, 3
  %6606 = fmul fast float %6604, %5269
  %6607 = fmul fast float %6604, %5270
  %6608 = fmul fast float %6604, %5318
  %6609 = fadd fast float %6606, %6605
  %6610 = fadd fast float %6607, %6605
  %6611 = fadd fast float %6608, %6605
  br i1 %5449, label %6612, label %6635

; <label>:6612                                    ; preds = %6597
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %6518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.ResRet.f32 %6613, 1
  %6616 = extractvalue %dx.types.ResRet.f32 %6613, 2
  %6617 = fadd fast float %6614, -5.000000e-01
  %6618 = fadd fast float %6615, -5.000000e-01
  %6619 = fadd fast float %6616, -5.000000e-01
  %6620 = fmul fast float %5269, 4.000000e+00
  %6621 = fmul fast float %6620, %6565
  %6622 = fmul fast float %6621, %6617
  %6623 = fmul fast float %5270, 4.000000e+00
  %6624 = fmul fast float %6623, %6566
  %6625 = fmul fast float %6624, %6618
  %6626 = fmul fast float %5318, 4.000000e+00
  %6627 = fmul fast float %6626, %6567
  %6628 = fmul fast float %6627, %6619
  %6629 = fadd fast float %6622, %6609
  %6630 = fadd fast float %6625, %6610
  %6631 = fadd fast float %6628, %6611
  %6632 = call float @dx.op.unary.f32(i32 7, float %6629)  ; Saturate(value)
  %6633 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6634 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  br label %6635

; <label>:6635                                    ; preds = %6612, %6597
  %6636 = phi float [ %6632, %6612 ], [ %6609, %6597 ]
  %6637 = phi float [ %6633, %6612 ], [ %6610, %6597 ]
  %6638 = phi float [ %6634, %6612 ], [ %6611, %6597 ]
  %6639 = call float @dx.op.binary.f32(i32 35, float %6637, float %6638)  ; FMax(a,b)
  %6640 = call float @dx.op.binary.f32(i32 35, float %6636, float %6639)  ; FMax(a,b)
  %6641 = fsub fast float 1.000000e+00, %6640
  %6642 = fmul fast float %6598, %6556
  %6643 = fmul fast float %6599, %6556
  %6644 = fmul fast float %6600, %6556
  %6645 = fsub fast float 1.000000e+00, %6519
  %6646 = bitcast float %6645 to i32
  %6647 = sitofp i32 %6646 to float
  %6648 = fmul fast float %6647, 5.000000e+00
  %6649 = fadd fast float %6648, 0xC1EFBF8940000000
  %6650 = fptosi float %6649 to i32
  %6651 = bitcast i32 %6650 to float
  %6652 = fmul fast float %6651, %4086
  %6653 = fmul fast float %6641, %6652
  %6654 = fmul fast float %6653, %5552
  %6655 = fmul fast float %6653, %5553
  %6656 = fmul fast float %6653, %5554
  %6657 = fadd fast float %6654, %6642
  %6658 = fadd fast float %6655, %6643
  %6659 = fadd fast float %6656, %6644
  %6660 = fmul fast float %6524, %6507
  %6661 = fmul fast float %6660, %6641
  %6662 = fmul fast float %6524, %6508
  %6663 = fmul fast float %6662, %6641
  %6664 = fmul fast float %6524, %6509
  %6665 = fmul fast float %6664, %6641
  %6666 = fmul fast float %6660, %6657
  %6667 = fmul fast float %6662, %6658
  %6668 = fmul fast float %6664, %6659
  %6669 = fadd fast float %6661, %5534
  %6670 = fmul fast float %6669, %4082
  %6671 = fadd fast float %6663, %5536
  %6672 = fmul fast float %6671, %4082
  %6673 = fadd fast float %6665, %5538
  %6674 = fmul fast float %6673, %4082
  %6675 = fadd fast float %6666, %5586
  %6676 = fmul fast float %6675, %4082
  %6677 = fadd fast float %6667, %5589
  %6678 = fmul fast float %6677, %4082
  %6679 = fadd fast float %6668, %5592
  %6680 = fmul fast float %6679, %4082
  br label %6681

; <label>:6681                                    ; preds = %6635, %6425, %5476
  %6682 = phi float [ %5587, %5476 ], [ %5587, %6425 ], [ %6676, %6635 ]
  %6683 = phi float [ %5590, %5476 ], [ %5590, %6425 ], [ %6678, %6635 ]
  %6684 = phi float [ %5593, %5476 ], [ %5593, %6425 ], [ %6680, %6635 ]
  %6685 = phi float [ %5582, %5476 ], [ %5582, %6425 ], [ %6670, %6635 ]
  %6686 = phi float [ %5583, %5476 ], [ %5583, %6425 ], [ %6672, %6635 ]
  %6687 = phi float [ %5584, %5476 ], [ %5584, %6425 ], [ %6674, %6635 ]
  %6688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.i32 %6688, 0
  %6690 = icmp eq i32 %6689, 0
  br i1 %6690, label %7311, label %6691

; <label>:6691                                    ; preds = %6681
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6692, 3
  %6695 = fmul fast float %6693, %110
  %6696 = fmul fast float %6694, %111
  %6697 = fptoui float %6695 to i32
  %6698 = fptoui float %6696 to i32
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6702 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6703 = fadd fast float %101, -4.000000e+00
  %6704 = call float @dx.op.binary.f32(i32 35, float %6703, float 0.000000e+00)  ; FMax(a,b)
  %6705 = fadd fast float %6704, %6700
  %6706 = fmul fast float %6705, %6701
  %6707 = call float @dx.op.unary.f32(i32 23, float %6706)  ; Log(value)
  %6708 = fmul fast float %6707, %6702
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6711 = fmul fast float %6708, %6710
  %6712 = call float @dx.op.unary.f32(i32 7, float %6711)  ; Saturate(value)
  %6713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.i32 %6713, 1
  %6715 = add i32 %6714, -1
  %6716 = uitofp i32 %6714 to float
  %6717 = fmul fast float %6716, %6712
  %6718 = fptoui float %6717 to i32
  %6719 = call i32 @dx.op.binary.i32(i32 40, i32 %6718, i32 %6715)  ; UMin(a,b)
  %6720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.i32 %6720, 2
  %6722 = extractvalue %dx.types.CBufRet.i32 %6720, 3
  %6723 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6698, i32 %6721, i32 %6697)  ; UMad(a,b,c)
  %6724 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6719, i32 %6722, i32 %6723)  ; UMad(a,b,c)
  %6725 = add nsw i32 %6689, -1
  %6726 = call i32 @dx.op.binary.i32(i32 37, i32 %6725, i32 0)  ; IMax(a,b)
  %6727 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6728 = fptoui float %6727 to i32
  %6729 = lshr i32 %6728, 5
  %6730 = call i32 @dx.op.binary.i32(i32 40, i32 %6729, i32 8191)  ; UMin(a,b)
  %6731 = shl i32 %6730, 2
  %6732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6731, i32 undef)  ; BufferLoad(srv,index,wot)
  %6733 = extractvalue %dx.types.ResRet.i32 %6732, 0
  %6734 = lshr i32 %6733, 16
  %6735 = and i32 %6733, 65535
  %6736 = lshr i32 %6733, 21
  %6737 = lshr i32 %6735, 5
  %6738 = call i32 @dx.op.binary.i32(i32 40, i32 %6737, i32 %6726)  ; UMin(a,b)
  %6739 = icmp ugt i32 %6736, %6738
  br i1 %6739, label %7311, label %6740

; <label>:6740                                    ; preds = %6691
  br label %6741

; <label>:6741                                    ; preds = %7301, %6740
  %6742 = phi i32 [ %7308, %7301 ], [ %6736, %6740 ]
  %6743 = phi float [ %7302, %7301 ], [ %6682, %6740 ]
  %6744 = phi float [ %7303, %7301 ], [ %6683, %6740 ]
  %6745 = phi float [ %7304, %7301 ], [ %6684, %6740 ]
  %6746 = phi float [ %7305, %7301 ], [ %6685, %6740 ]
  %6747 = phi float [ %7306, %7301 ], [ %6686, %6740 ]
  %6748 = phi float [ %7307, %7301 ], [ %6687, %6740 ]
  %6749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.i32 %6749, 0
  %6751 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6724, i32 %6750, i32 %6742)  ; UMad(a,b,c)
  %6752 = shl i32 %6751, 2
  %6753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6752, i32 undef)  ; BufferLoad(srv,index,wot)
  %6754 = extractvalue %dx.types.ResRet.i32 %6753, 0
  %6755 = shl i32 %6742, 5
  %6756 = sub nsw i32 %6734, %6755
  %6757 = call i32 @dx.op.binary.i32(i32 37, i32 %6756, i32 0)  ; IMax(a,b)
  %6758 = call i32 @dx.op.binary.i32(i32 38, i32 %6757, i32 31)  ; IMin(a,b)
  %6759 = sub nsw i32 1, %6734
  %6760 = add nsw i32 %6759, %6735
  %6761 = call i32 @dx.op.binary.i32(i32 37, i32 %6760, i32 0)  ; IMax(a,b)
  %6762 = call i32 @dx.op.binary.i32(i32 38, i32 %6761, i32 32)  ; IMin(a,b)
  %6763 = and i32 %6762, 31
  %6764 = shl i32 -1, %6763
  %6765 = xor i32 %6764, -1
  %6766 = and i32 %6758, 31
  %6767 = shl i32 %6765, %6766
  %6768 = icmp eq i32 %6762, 32
  %6769 = select i1 %6768, i32 -1, i32 %6767
  %6770 = and i32 %6769, %6754
  %6771 = icmp eq i32 %6770, 0
  br i1 %6771, label %7301, label %6772

; <label>:6772                                    ; preds = %6741
  br label %6773

; <label>:6773                                    ; preds = %6907, %6772
  %6774 = phi i32 [ %6785, %6907 ], [ %6770, %6772 ]
  %6775 = phi float [ %6908, %6907 ], [ %6743, %6772 ]
  %6776 = phi float [ %6909, %6907 ], [ %6744, %6772 ]
  %6777 = phi float [ %6910, %6907 ], [ %6745, %6772 ]
  %6778 = phi float [ %6911, %6907 ], [ %6746, %6772 ]
  %6779 = phi float [ %6912, %6907 ], [ %6747, %6772 ]
  %6780 = phi float [ %6913, %6907 ], [ %6748, %6772 ]
  %6781 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6774)  ; FirstbitLo(value)
  %6782 = add i32 %6781, %6755
  %6783 = and i32 %6781, 31
  %6784 = shl i32 1, %6783
  %6785 = xor i32 %6784, %6774
  %6786 = mul i32 %6782, 112
  %6787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6786, i32 undef)  ; BufferLoad(srv,index,wot)
  %6788 = extractvalue %dx.types.ResRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.ResRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.ResRet.f32 %6787, 2
  %6791 = or i32 %6786, 12
  %6792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6791, i32 undef)  ; BufferLoad(srv,index,wot)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = add i32 %6786, 16
  %6795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6794, i32 undef)  ; BufferLoad(srv,index,wot)
  %6796 = extractvalue %dx.types.ResRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.ResRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.ResRet.f32 %6795, 2
  %6799 = add i32 %6786, 28
  %6800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6799, i32 undef)  ; BufferLoad(srv,index,wot)
  %6801 = extractvalue %dx.types.ResRet.i32 %6800, 0
  %6802 = add i32 %6786, 44
  %6803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6802, i32 undef)  ; BufferLoad(srv,index,wot)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = add i32 %6786, 48
  %6806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6805, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.ResRet.f32 %6806, 1
  %6809 = extractvalue %dx.types.ResRet.f32 %6806, 2
  %6810 = extractvalue %dx.types.ResRet.f32 %6806, 3
  %6811 = add i32 %6786, 64
  %6812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6811, i32 undef)  ; BufferLoad(srv,index,wot)
  %6813 = extractvalue %dx.types.ResRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.ResRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.ResRet.f32 %6812, 2
  %6816 = extractvalue %dx.types.ResRet.f32 %6812, 3
  %6817 = add i32 %6786, 80
  %6818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6817, i32 undef)  ; BufferLoad(srv,index,wot)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 1
  %6820 = extractvalue %dx.types.ResRet.f32 %6818, 2
  %6821 = add i32 %6786, 92
  %6822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6821, i32 undef)  ; BufferLoad(srv,index,wot)
  %6823 = extractvalue %dx.types.ResRet.i32 %6822, 0
  %6824 = call float @dx.op.dot3.f32(i32 55, float %6788, float %6789, float %6790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6825 = select i1 %269, float %6819, float %6788
  %6826 = select i1 %269, float %6824, float %6789
  %6827 = select i1 %269, float %6820, float %6790
  %6828 = and i32 %6823, 65535
  %6829 = uitofp i32 %6828 to float
  %6830 = lshr i32 %6823, 16
  %6831 = uitofp i32 %6830 to float
  %6832 = and i32 %6801, 65535
  %6833 = and i32 %6801, 50331648
  %6834 = icmp eq i32 %6833, 33554432
  %6835 = fsub fast float %6807, %197
  %6836 = fsub fast float %6808, %198
  %6837 = fsub fast float %6809, %199
  %6838 = call float @dx.op.dot3.f32(i32 55, float %6835, float %6836, float %6837, float %6835, float %6836, float %6837)  ; Dot3(ax,ay,az,bx,by,bz)
  %6839 = call float @dx.op.unary.f32(i32 24, float %6838)  ; Sqrt(value)
  %6840 = fdiv fast float 1.000000e+00, %6839
  %6841 = fmul fast float %6840, %6835
  %6842 = fmul fast float %6840, %6836
  %6843 = fmul fast float %6840, %6837
  %6844 = fadd fast float %6839, %6793
  %6845 = fdiv fast float 1.000000e+00, %6844
  %6846 = fmul float %6804, %6845
  %6847 = fmul float %6846, %6846
  %6848 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  br i1 %6834, label %6849, label %6870

; <label>:6849                                    ; preds = %6773
  %6850 = fmul fast float %6815, %6796
  %6851 = fmul fast float %6815, %6797
  %6852 = fmul fast float %6815, %6798
  %6853 = fadd fast float %6835, %6850
  %6854 = fadd fast float %6836, %6851
  %6855 = fadd fast float %6837, %6852
  %6856 = call float @dx.op.dot3.f32(i32 55, float %6853, float %6854, float %6855, float %6853, float %6854, float %6855)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = call float @dx.op.unary.f32(i32 25, float %6856)  ; Rsqrt(value)
  %6858 = fmul fast float %6857, %6853
  %6859 = fmul fast float %6857, %6854
  %6860 = fmul fast float %6857, %6855
  %6861 = fsub fast float %197, %6807
  %6862 = fsub fast float %198, %6808
  %6863 = fsub fast float %199, %6809
  %6864 = fsub fast float -0.000000e+00, %6861
  %6865 = fsub fast float -0.000000e+00, %6862
  %6866 = fsub fast float -0.000000e+00, %6863
  %6867 = call float @dx.op.dot3.f32(i32 55, float %6864, float %6865, float %6866, float %6796, float %6797, float %6798)  ; Dot3(ax,ay,az,bx,by,bz)
  %6868 = fcmp fast ogt float %6867, 0.000000e+00
  %6869 = uitofp i1 %6868 to float
  br label %6870

; <label>:6870                                    ; preds = %6849, %6773
  %6871 = phi float [ %6869, %6849 ], [ 1.000000e+00, %6773 ]
  %6872 = phi float [ %6858, %6849 ], [ %6841, %6773 ]
  %6873 = phi float [ %6859, %6849 ], [ %6842, %6773 ]
  %6874 = phi float [ %6860, %6849 ], [ %6843, %6773 ]
  %6875 = call float @dx.op.dot3.f32(i32 55, float %6796, float %6797, float %6798, float %6872, float %6873, float %6874)  ; Dot3(ax,ay,az,bx,by,bz)
  %6876 = fmul fast float %6875, %6875
  %6877 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6878 = fsub fast float 1.000000e+00, %6877
  %6879 = fmul fast float %6878, 5.000000e-01
  %6880 = fcmp fast ogt float %6875, 0.000000e+00
  %6881 = fsub fast float 1.000000e+00, %6879
  %6882 = select i1 %6880, float %6879, float %6881
  %6883 = fmul fast float %6882, %6831
  %6884 = fadd fast float %6883, %6829
  %6885 = fmul fast float %6884, 0x3EF0001000000000
  %6886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6885, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6887 = extractvalue %dx.types.ResRet.f32 %6886, 0
  %6888 = fmul fast float %6875, %6813
  %6889 = fadd fast float %6888, %6814
  %6890 = call float @dx.op.unary.f32(i32 7, float %6889)  ; Saturate(value)
  %6891 = select i1 %6834, float 1.000000e+00, float %6890
  %6892 = select i1 %6834, float %6890, float 1.000000e+00
  %6893 = fmul fast float %6839, %6810
  %6894 = fsub fast float 1.000000e+00, %6893
  %6895 = fmul fast float %6894, %6816
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = fmul fast float %6896, %6892
  %6898 = fmul fast float %6897, 2.000000e+00
  %6899 = fsub fast float 3.000000e+00, %6898
  %6900 = fmul fast float %6887, %6871
  %6901 = fmul fast float %6897, %6897
  %6902 = fmul fast float %6901, %6900
  %6903 = fmul fast float %6902, %6899
  %6904 = call float @dx.op.binary.f32(i32 36, float %6903, float %6903)  ; FMin(a,b)
  %6905 = call float @dx.op.binary.f32(i32 36, float %6903, float %6904)  ; FMin(a,b)
  %6906 = fcmp fast ogt float %6905, 0.000000e+00
  br i1 %6906, label %6915, label %6907, !dx.controlflow.hints !126

; <label>:6907                                    ; preds = %7257, %7015, %6870
  %6908 = phi float [ %6775, %7015 ], [ %6775, %6870 ], [ %7297, %7257 ]
  %6909 = phi float [ %6776, %7015 ], [ %6776, %6870 ], [ %7298, %7257 ]
  %6910 = phi float [ %6777, %7015 ], [ %6777, %6870 ], [ %7299, %7257 ]
  %6911 = phi float [ %6778, %7015 ], [ %6778, %6870 ], [ %7291, %7257 ]
  %6912 = phi float [ %6779, %7015 ], [ %6779, %6870 ], [ %7292, %7257 ]
  %6913 = phi float [ %6780, %7015 ], [ %6780, %6870 ], [ %7293, %7257 ]
  %6914 = icmp eq i32 %6774, %6784
  br i1 %6914, label %7300, label %6773

; <label>:6915                                    ; preds = %6870
  %6916 = icmp eq i32 %6832, 255
  br i1 %6916, label %7015, label %6917, !dx.controlflow.hints !127

; <label>:6917                                    ; preds = %6915
  %6918 = mul nuw nsw i32 %6832, 176
  %6919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6918, i32 undef)  ; BufferLoad(srv,index,wot)
  %6920 = extractvalue %dx.types.ResRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.ResRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.ResRet.f32 %6919, 2
  %6923 = extractvalue %dx.types.ResRet.f32 %6919, 3
  %6924 = add nuw nsw i32 %6918, 16
  %6925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.ResRet.f32 %6925, 1
  %6928 = add nuw nsw i32 %6918, 32
  %6929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6928, i32 undef)  ; BufferLoad(srv,index,wot)
  %6930 = extractvalue %dx.types.ResRet.f32 %6929, 0
  %6931 = extractvalue %dx.types.ResRet.f32 %6929, 1
  %6932 = extractvalue %dx.types.ResRet.f32 %6929, 2
  %6933 = add nuw nsw i32 %6918, 48
  %6934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6933, i32 undef)  ; BufferLoad(srv,index,wot)
  %6935 = extractvalue %dx.types.ResRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.ResRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.ResRet.f32 %6934, 2
  %6938 = extractvalue %dx.types.ResRet.f32 %6934, 3
  %6939 = add nuw nsw i32 %6918, 64
  %6940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6939, i32 undef)  ; BufferLoad(srv,index,wot)
  %6941 = extractvalue %dx.types.ResRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.ResRet.f32 %6940, 1
  %6943 = extractvalue %dx.types.ResRet.f32 %6940, 2
  %6944 = extractvalue %dx.types.ResRet.f32 %6940, 3
  %6945 = add nuw nsw i32 %6918, 80
  %6946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6945, i32 undef)  ; BufferLoad(srv,index,wot)
  %6947 = extractvalue %dx.types.ResRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.ResRet.f32 %6946, 1
  %6949 = extractvalue %dx.types.ResRet.f32 %6946, 2
  %6950 = extractvalue %dx.types.ResRet.f32 %6946, 3
  %6951 = add nuw nsw i32 %6918, 96
  %6952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6951, i32 undef)  ; BufferLoad(srv,index,wot)
  %6953 = extractvalue %dx.types.ResRet.f32 %6952, 0
  %6954 = extractvalue %dx.types.ResRet.f32 %6952, 1
  %6955 = extractvalue %dx.types.ResRet.f32 %6952, 2
  %6956 = extractvalue %dx.types.ResRet.f32 %6952, 3
  %6957 = bitcast float %6927 to i32
  %6958 = fmul fast float %6932, %117
  %6959 = fmul fast float %6932, %118
  %6960 = fmul fast float %6932, %119
  %6961 = fadd fast float %6958, %197
  %6962 = fadd fast float %6959, %198
  %6963 = fadd fast float %6960, %199
  %6964 = fmul fast float %6961, %6935
  %6965 = call float @dx.op.tertiary.f32(i32 46, float %6962, float %6941, float %6964)  ; FMad(a,b,c)
  %6966 = call float @dx.op.tertiary.f32(i32 46, float %6963, float %6947, float %6965)  ; FMad(a,b,c)
  %6967 = fadd fast float %6966, %6953
  %6968 = fmul fast float %6961, %6936
  %6969 = call float @dx.op.tertiary.f32(i32 46, float %6962, float %6942, float %6968)  ; FMad(a,b,c)
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6963, float %6948, float %6969)  ; FMad(a,b,c)
  %6971 = fadd fast float %6970, %6954
  %6972 = fmul fast float %6961, %6937
  %6973 = call float @dx.op.tertiary.f32(i32 46, float %6962, float %6943, float %6972)  ; FMad(a,b,c)
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6963, float %6949, float %6973)  ; FMad(a,b,c)
  %6975 = fadd fast float %6974, %6955
  %6976 = fmul fast float %6961, %6938
  %6977 = call float @dx.op.tertiary.f32(i32 46, float %6962, float %6944, float %6976)  ; FMad(a,b,c)
  %6978 = call float @dx.op.tertiary.f32(i32 46, float %6963, float %6950, float %6977)  ; FMad(a,b,c)
  %6979 = fadd fast float %6978, %6956
  %6980 = fdiv fast float %6967, %6979
  %6981 = fdiv fast float %6971, %6979
  %6982 = fdiv fast float %6975, %6979
  %6983 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6982)  ; FMax(a,b)
  %6984 = fmul fast float %280, 0x401921FB60000000
  %6985 = call float @dx.op.unary.f32(i32 13, float %6984)  ; Sin(value)
  %6986 = call float @dx.op.unary.f32(i32 12, float %6984)  ; Cos(value)
  %6987 = fsub fast float -0.000000e+00, %6985
  %6988 = fmul fast float %6922, 5.000000e-01
  %6989 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6990 = call float @dx.op.unary.f32(i32 22, float %6989)  ; Frc(value)
  %6991 = fmul fast float %6990, 0x404A7DD040000000
  %6992 = call float @dx.op.unary.f32(i32 22, float %6991)  ; Frc(value)
  %6993 = fmul fast float %6992, %6931
  %6994 = fadd fast float %6993, %6988
  %6995 = call float @dx.op.tertiary.f32(i32 46, float %6994, float %6987, float 0.000000e+00)  ; FMad(a,b,c)
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6994, float %6986, float 0.000000e+00)  ; FMad(a,b,c)
  %6997 = fadd fast float %6995, %6980
  %6998 = fadd fast float %6996, %6981
  %6999 = fmul fast float %6997, %6926
  %7000 = fmul fast float %6998, %6926
  %7001 = call float @dx.op.binary.f32(i32 35, float %6999, float %6922)  ; FMax(a,b)
  %7002 = call float @dx.op.binary.f32(i32 35, float %7000, float %6922)  ; FMax(a,b)
  %7003 = call float @dx.op.binary.f32(i32 36, float %7001, float %6923)  ; FMin(a,b)
  %7004 = call float @dx.op.binary.f32(i32 36, float %7002, float %6923)  ; FMin(a,b)
  %7005 = fadd fast float %7003, %6920
  %7006 = fadd fast float %7004, %6921
  %7007 = uitofp i32 %6957 to float
  %7008 = fadd fast float %6983, %6930
  %7009 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7005, float %7006, float %7007, float undef, i32 0, i32 0, i32 undef, float %7008)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7010 = extractvalue %dx.types.ResRet.f32 %7009, 0
  %7011 = fadd fast float %7010, -1.000000e+00
  %7012 = fmul fast float %7011, %6891
  %7013 = fadd fast float %7012, 1.000000e+00
  %7014 = fmul fast float %7013, %6903
  br label %7015

; <label>:7015                                    ; preds = %6917, %6915
  %7016 = phi float [ %7014, %6917 ], [ %6903, %6915 ]
  %7017 = call float @dx.op.binary.f32(i32 36, float %7016, float %7016)  ; FMin(a,b)
  %7018 = call float @dx.op.binary.f32(i32 36, float %7016, float %7017)  ; FMin(a,b)
  %7019 = fcmp fast ogt float %7018, 0.000000e+00
  br i1 %7019, label %7020, label %6907, !dx.controlflow.hints !128

; <label>:7020                                    ; preds = %7015
  %7021 = fmul fast float %7016, %6825
  %7022 = fmul fast float %7016, %6826
  %7023 = fmul fast float %7016, %6827
  %7024 = fsub fast float %6809, %4486
  %7025 = fcmp fast ogt float %7024, 0.000000e+00
  %7026 = fsub fast float %199, %4486
  %7027 = fcmp fast ogt float %7026, 0.000000e+00
  %7028 = xor i1 %7027, %7025
  %7029 = fsub fast float %4486, %6809
  %7030 = fmul fast float %7029, 2.000000e+00
  %7031 = fadd fast float %7030, %6809
  %7032 = select i1 %7028, float %6809, float %7031
  %7033 = fsub fast float %7032, %199
  %7034 = call float @dx.op.dot3.f32(i32 55, float %6835, float %6836, float %7033, float %6835, float %6836, float %7033)  ; Dot3(ax,ay,az,bx,by,bz)
  %7035 = call float @dx.op.unary.f32(i32 25, float %7034)  ; Rsqrt(value)
  %7036 = fmul fast float %7035, %6835
  %7037 = fmul fast float %7035, %6836
  %7038 = fmul fast float %7035, %7033
  %7039 = fsub fast float %4486, %199
  %7040 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7039)  ; Dot3(ax,ay,az,bx,by,bz)
  %7041 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7036, float %7037, float %7038)  ; Dot3(ax,ay,az,bx,by,bz)
  %7042 = fdiv fast float 1.000000e+00, %7041
  %7043 = fmul fast float %7042, %7040
  %7044 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7026, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7045 = fcmp fast ogt float %7044, 0.000000e+00
  %7046 = fcmp fast olt float %7044, 0.000000e+00
  %7047 = zext i1 %7045 to i32
  %7048 = zext i1 %7046 to i32
  %7049 = sub nsw i32 %7047, %7048
  %7050 = sitofp i32 %7049 to float
  %7051 = fsub fast float %7032, %4486
  %7052 = call float @dx.op.dot3.f32(i32 55, float %6835, float %6836, float %7051, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7053 = fcmp fast ogt float %7052, 0.000000e+00
  %7054 = fcmp fast olt float %7052, 0.000000e+00
  %7055 = zext i1 %7053 to i32
  %7056 = zext i1 %7054 to i32
  %7057 = sub nsw i32 %7055, %7056
  %7058 = sitofp i32 %7057 to float
  %7059 = fcmp fast une float %7050, %7058
  br i1 %7059, label %7060, label %7070

; <label>:7060                                    ; preds = %7020
  %7061 = fmul fast float %7043, %7038
  %7062 = fmul fast float %7043, %7037
  %7063 = fmul fast float %7043, %7036
  %7064 = fmul fast float %7063, %7063
  %7065 = fmul fast float %7062, %7062
  %7066 = fadd fast float %7064, %7065
  %7067 = fmul fast float %7061, %7061
  %7068 = fadd fast float %7066, %7067
  %7069 = call float @dx.op.unary.f32(i32 24, float %7068)  ; Sqrt(value)
  br label %7082

; <label>:7070                                    ; preds = %7020
  %7071 = icmp slt i32 %7049, 0
  br i1 %7071, label %7072, label %7082

; <label>:7072                                    ; preds = %7070
  %7073 = fsub fast float %197, %6807
  %7074 = fsub fast float %198, %6808
  %7075 = fsub fast float %199, %7032
  %7076 = fmul fast float %7073, %7073
  %7077 = fmul fast float %7074, %7074
  %7078 = fadd fast float %7076, %7077
  %7079 = fmul fast float %7075, %7075
  %7080 = fadd fast float %7078, %7079
  %7081 = call float @dx.op.unary.f32(i32 24, float %7080)  ; Sqrt(value)
  br label %7082

; <label>:7082                                    ; preds = %7072, %7070, %7060
  %7083 = phi float [ %7069, %7060 ], [ %7081, %7072 ], [ 0.000000e+00, %7070 ]
  %7084 = and i1 %7027, %7025
  %7085 = fsub fast float -0.000000e+00, %7083
  %7086 = select i1 %7084, float -0.000000e+00, float %7085
  %7087 = fmul fast float %4487, 0x3FF7154760000000
  %7088 = fmul fast float %7087, %7086
  %7089 = fmul fast float %4488, 0x3FF7154760000000
  %7090 = fmul fast float %7089, %7086
  %7091 = fmul fast float %4489, 0x3FF7154760000000
  %7092 = fmul fast float %7091, %7086
  %7093 = call float @dx.op.unary.f32(i32 21, float %7088)  ; Exp(value)
  %7094 = call float @dx.op.unary.f32(i32 21, float %7090)  ; Exp(value)
  %7095 = call float @dx.op.unary.f32(i32 21, float %7092)  ; Exp(value)
  %7096 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7097 = call float @dx.op.unary.f32(i32 7, float %7094)  ; Saturate(value)
  %7098 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  %7099 = fmul fast float %7021, %7096
  %7100 = fmul fast float %7022, %7097
  %7101 = fmul fast float %7023, %7098
  %7102 = fsub fast float %6841, %5312
  %7103 = fsub fast float %6842, %5313
  %7104 = fsub fast float %6843, %5314
  %7105 = call float @dx.op.dot3.f32(i32 55, float %7102, float %7103, float %7104, float %7102, float %7103, float %7104)  ; Dot3(ax,ay,az,bx,by,bz)
  %7106 = call float @dx.op.unary.f32(i32 25, float %7105)  ; Rsqrt(value)
  %7107 = fmul fast float %7106, %7102
  %7108 = fmul fast float %7106, %7103
  %7109 = fmul fast float %7106, %7104
  %7110 = call float @dx.op.dot3.f32(i32 55, float %6841, float %6842, float %6843, float %5272, float %5273, float %5274)  ; Dot3(ax,ay,az,bx,by,bz)
  %7111 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %7107, float %7108, float %7109)  ; Dot3(ax,ay,az,bx,by,bz)
  %7112 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  %7113 = fmul fast float %7112, %6848
  %7114 = fmul fast float %7112, %7112
  %7115 = fmul fast float %7114, %5333
  %7116 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7117 = fmul fast float %7113, %7116
  %7118 = bitcast float %6838 to i32
  %7119 = ashr i32 %7118, 1
  %7120 = sub nsw i32 1597463007, %7119
  %7121 = bitcast i32 %7120 to float
  %7122 = fmul fast float %7121, %6835
  %7123 = fmul fast float %7121, %6836
  %7124 = fmul fast float %7121, %6837
  %7125 = fsub fast float %7122, %5312
  %7126 = fsub fast float %7123, %5313
  %7127 = fsub fast float %7124, %5314
  %7128 = call float @dx.op.dot3.f32(i32 55, float %7125, float %7126, float %7127, float %7125, float %7126, float %7127)  ; Dot3(ax,ay,az,bx,by,bz)
  %7129 = call float @dx.op.unary.f32(i32 25, float %7128)  ; Rsqrt(value)
  %7130 = fmul fast float %7125, %7129
  %7131 = fmul fast float %7126, %7129
  %7132 = fmul fast float %7127, %7129
  %7133 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float %7130, float %7131, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = fmul fast float %7133, %7133
  %7135 = call float @dx.op.unary.f32(i32 6, float %7110)  ; FAbs(value)
  %7136 = fsub fast float 1.000000e+00, %5275
  %7137 = call float @dx.op.binary.f32(i32 35, float %7136, float 0x3F847AE140000000)  ; FMax(a,b)
  %7138 = fmul fast float %7137, %7137
  %7139 = fmul fast float %7138, %7138
  %7140 = fsub fast float 1.000000e+00, %7139
  %7141 = fmul fast float %5320, %5320
  %7142 = fmul fast float %7141, %7140
  %7143 = fadd fast float %7142, %7139
  %7144 = bitcast float %7143 to i32
  %7145 = ashr i32 %7144, 1
  %7146 = add nsw i32 %7145, 532487669
  %7147 = bitcast i32 %7146 to float
  %7148 = fadd fast float %7147, %5320
  %7149 = fmul fast float %7139, %7134
  %7150 = fsub fast float 1.000000e+00, %7134
  %7151 = fadd fast float %7150, %7149
  %7152 = fmul fast float %7135, %7135
  %7153 = fmul fast float %7152, %7140
  %7154 = fadd fast float %7153, %7139
  %7155 = bitcast float %7154 to i32
  %7156 = ashr i32 %7155, 1
  %7157 = add nsw i32 %7156, 532487669
  %7158 = bitcast i32 %7157 to float
  %7159 = fadd fast float %7158, %7135
  %7160 = fmul fast float %7151, %7151
  %7161 = fmul fast float %7160, %7148
  %7162 = fmul fast float %7161, %7159
  %7163 = fdiv fast float 1.000000e+00, %7162
  %7164 = bitcast float %7139 to i32
  %7165 = sitofp i32 %7164 to float
  %7166 = fmul fast float %7165, 0x3FE7F73180000000
  %7167 = fadd fast float %7166, 0x41AFE27C40000000
  %7168 = fptosi float %7167 to i32
  %7169 = bitcast i32 %7168 to float
  %7170 = fmul fast float %6804, 0x3FD80E9D60000000
  %7171 = fmul fast float %7170, %7121
  %7172 = fadd fast float %7169, %7171
  %7173 = bitcast float %7172 to i32
  %7174 = sub nsw i32 2129859010, %7173
  %7175 = bitcast i32 %7174 to float
  %7176 = fmul fast float %7139, %7163
  %7177 = fmul fast float %7176, %7169
  %7178 = fmul fast float %7177, %7175
  %7179 = call float @dx.op.unary.f32(i32 6, float %7111)  ; FAbs(value)
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = bitcast float %7180 to i32
  %7182 = sitofp i32 %7181 to float
  %7183 = fmul fast float %7182, 5.000000e+00
  %7184 = fadd fast float %7183, 0xC1EFBF8940000000
  %7185 = fptosi float %7184 to i32
  %7186 = bitcast i32 %7185 to float
  %7187 = fsub fast float 1.000000e+00, %5269
  %7188 = fsub fast float 1.000000e+00, %5270
  %7189 = fsub fast float 1.000000e+00, %5318
  %7190 = fmul fast float %7186, %7187
  %7191 = fmul fast float %7186, %7188
  %7192 = fmul fast float %7186, %7189
  %7193 = fadd fast float %7190, %5269
  %7194 = fadd fast float %7191, %5270
  %7195 = fadd fast float %7192, %5318
  br i1 %5449, label %7196, label %7219

; <label>:7196                                    ; preds = %7082
  %7197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %7179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7198 = extractvalue %dx.types.ResRet.f32 %7197, 0
  %7199 = extractvalue %dx.types.ResRet.f32 %7197, 1
  %7200 = extractvalue %dx.types.ResRet.f32 %7197, 2
  %7201 = fadd fast float %7198, -5.000000e-01
  %7202 = fadd fast float %7199, -5.000000e-01
  %7203 = fadd fast float %7200, -5.000000e-01
  %7204 = fmul fast float %5269, 4.000000e+00
  %7205 = fmul fast float %7204, %7187
  %7206 = fmul fast float %7205, %7201
  %7207 = fmul fast float %5270, 4.000000e+00
  %7208 = fmul fast float %7207, %7188
  %7209 = fmul fast float %7208, %7202
  %7210 = fmul fast float %5318, 4.000000e+00
  %7211 = fmul fast float %7210, %7189
  %7212 = fmul fast float %7211, %7203
  %7213 = fadd fast float %7206, %7193
  %7214 = fadd fast float %7209, %7194
  %7215 = fadd fast float %7212, %7195
  %7216 = call float @dx.op.unary.f32(i32 7, float %7213)  ; Saturate(value)
  %7217 = call float @dx.op.unary.f32(i32 7, float %7214)  ; Saturate(value)
  %7218 = call float @dx.op.unary.f32(i32 7, float %7215)  ; Saturate(value)
  br label %7219

; <label>:7219                                    ; preds = %7196, %7082
  %7220 = phi float [ %7216, %7196 ], [ %7193, %7082 ]
  %7221 = phi float [ %7217, %7196 ], [ %7194, %7082 ]
  %7222 = phi float [ %7218, %7196 ], [ %7195, %7082 ]
  %7223 = fmul fast float %7110, 9.843750e-01
  %7224 = fadd fast float %7223, 7.812500e-03
  %7225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7224, float %5439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 2
  %7227 = extractvalue %dx.types.ResRet.f32 %7225, 3
  %7228 = fmul fast float %7226, %5269
  %7229 = fmul fast float %7226, %5270
  %7230 = fmul fast float %7226, %5318
  %7231 = fadd fast float %7228, %7227
  %7232 = fadd fast float %7229, %7227
  %7233 = fadd fast float %7230, %7227
  br i1 %5449, label %7234, label %7257

; <label>:7234                                    ; preds = %7219
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %7110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 0
  %7237 = extractvalue %dx.types.ResRet.f32 %7235, 1
  %7238 = extractvalue %dx.types.ResRet.f32 %7235, 2
  %7239 = fadd fast float %7236, -5.000000e-01
  %7240 = fadd fast float %7237, -5.000000e-01
  %7241 = fadd fast float %7238, -5.000000e-01
  %7242 = fmul fast float %5269, 4.000000e+00
  %7243 = fmul fast float %7242, %7187
  %7244 = fmul fast float %7243, %7239
  %7245 = fmul fast float %5270, 4.000000e+00
  %7246 = fmul fast float %7245, %7188
  %7247 = fmul fast float %7246, %7240
  %7248 = fmul fast float %5318, 4.000000e+00
  %7249 = fmul fast float %7248, %7189
  %7250 = fmul fast float %7249, %7241
  %7251 = fadd fast float %7244, %7231
  %7252 = fadd fast float %7247, %7232
  %7253 = fadd fast float %7250, %7233
  %7254 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7255 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7256 = call float @dx.op.unary.f32(i32 7, float %7253)  ; Saturate(value)
  br label %7257

; <label>:7257                                    ; preds = %7234, %7219
  %7258 = phi float [ %7254, %7234 ], [ %7231, %7219 ]
  %7259 = phi float [ %7255, %7234 ], [ %7232, %7219 ]
  %7260 = phi float [ %7256, %7234 ], [ %7233, %7219 ]
  %7261 = call float @dx.op.binary.f32(i32 35, float %7259, float %7260)  ; FMax(a,b)
  %7262 = call float @dx.op.binary.f32(i32 35, float %7258, float %7261)  ; FMax(a,b)
  %7263 = fsub fast float 1.000000e+00, %7262
  %7264 = fmul fast float %7220, %7178
  %7265 = fmul fast float %7221, %7178
  %7266 = fmul fast float %7222, %7178
  %7267 = fsub fast float 1.000000e+00, %7111
  %7268 = bitcast float %7267 to i32
  %7269 = sitofp i32 %7268 to float
  %7270 = fmul fast float %7269, 5.000000e+00
  %7271 = fadd fast float %7270, 0xC1EFBF8940000000
  %7272 = fptosi float %7271 to i32
  %7273 = bitcast i32 %7272 to float
  %7274 = fmul fast float %7273, %4086
  %7275 = fmul fast float %7263, %7274
  %7276 = fmul fast float %7275, %5552
  %7277 = fmul fast float %7275, %5553
  %7278 = fmul fast float %7275, %5554
  %7279 = fadd fast float %7276, %7264
  %7280 = fadd fast float %7277, %7265
  %7281 = fadd fast float %7278, %7266
  %7282 = fmul fast float %7099, %4082
  %7283 = fmul fast float %7282, %7117
  %7284 = fmul fast float %7283, %7263
  %7285 = fmul fast float %7100, %4082
  %7286 = fmul fast float %7285, %7117
  %7287 = fmul fast float %7286, %7263
  %7288 = fmul fast float %7101, %4082
  %7289 = fmul fast float %7288, %7117
  %7290 = fmul fast float %7289, %7263
  %7291 = fadd fast float %7284, %6778
  %7292 = fadd fast float %7287, %6779
  %7293 = fadd fast float %7290, %6780
  %7294 = fmul fast float %7283, %7279
  %7295 = fmul fast float %7286, %7280
  %7296 = fmul fast float %7289, %7281
  %7297 = fadd fast float %7294, %6775
  %7298 = fadd fast float %7295, %6776
  %7299 = fadd fast float %7296, %6777
  br label %6907

; <label>:7300                                    ; preds = %6907
  br label %7301

; <label>:7301                                    ; preds = %7300, %6741
  %7302 = phi float [ %6743, %6741 ], [ %6908, %7300 ]
  %7303 = phi float [ %6744, %6741 ], [ %6909, %7300 ]
  %7304 = phi float [ %6745, %6741 ], [ %6910, %7300 ]
  %7305 = phi float [ %6746, %6741 ], [ %6911, %7300 ]
  %7306 = phi float [ %6747, %6741 ], [ %6912, %7300 ]
  %7307 = phi float [ %6748, %6741 ], [ %6913, %7300 ]
  %7308 = add i32 %6742, 1
  %7309 = icmp ugt i32 %7308, %6738
  br i1 %7309, label %7310, label %6741

; <label>:7310                                    ; preds = %7301
  br label %7311

; <label>:7311                                    ; preds = %7310, %6691, %6681
  %7312 = phi float [ %6682, %6681 ], [ %6682, %6691 ], [ %7302, %7310 ]
  %7313 = phi float [ %6683, %6681 ], [ %6683, %6691 ], [ %7303, %7310 ]
  %7314 = phi float [ %6684, %6681 ], [ %6684, %6691 ], [ %7304, %7310 ]
  %7315 = phi float [ %6685, %6681 ], [ %6685, %6691 ], [ %7305, %7310 ]
  %7316 = phi float [ %6686, %6681 ], [ %6686, %6691 ], [ %7306, %7310 ]
  %7317 = phi float [ %6687, %6681 ], [ %6687, %6691 ], [ %7307, %7310 ]
  %7318 = fmul fast float %4082, %4082
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = fmul fast float %7320, %5568
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 3
  %7324 = fsub fast float 1.000000e+00, %4089
  %7325 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  %7326 = fadd fast float %7317, %4088
  %7327 = fmul fast float %7326, %4089
  %7328 = fmul fast float %7325, %7323
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 3
  %7331 = fmul fast float %7315, %5266
  %7332 = fmul fast float %7316, %5267
  %7333 = fmul fast float %7317, %5268
  %7334 = fcmp fast ogt float %101, %232
  %7335 = and i1 %7334, %4492
  %7336 = or i1 %4498, %7335
  %7337 = icmp eq i32 %4491, 2
  %7338 = fcmp fast ole float %101, %232
  %7339 = and i1 %7338, %7337
  %7340 = or i1 %7339, %7336
  br i1 %7335, label %7341, label %7598

; <label>:7341                                    ; preds = %7311
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 2
  %7344 = extractvalue %dx.types.CBufRet.f32 %7342, 3
  %7345 = fmul fast float %7343, %110
  %7346 = fmul fast float %7344, %111
  %7347 = call float @dx.op.unary.f32(i32 7, float %7345)  ; Saturate(value)
  %7348 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7349 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7347, float %7348, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7350 = extractvalue %dx.types.ResRet.f32 %7349, 0
  %7351 = extractvalue %dx.types.ResRet.f32 %7349, 1
  %7352 = extractvalue %dx.types.ResRet.f32 %7349, 2
  %7353 = extractvalue %dx.types.ResRet.f32 %7349, 3
  %7354 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7347, float %7348, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7355 = extractvalue %dx.types.ResRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.ResRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.ResRet.f32 %7354, 2
  %7358 = extractvalue %dx.types.ResRet.f32 %7354, 3
  %7359 = call float @dx.op.binary.f32(i32 35, float %7351, float %7352)  ; FMax(a,b)
  %7360 = call float @dx.op.binary.f32(i32 35, float %7350, float %7359)  ; FMax(a,b)
  %7361 = call float @dx.op.binary.f32(i32 35, float %7360, float %7353)  ; FMax(a,b)
  %7362 = call float @dx.op.binary.f32(i32 36, float %7356, float %7357)  ; FMin(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7355, float %7362)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7363, float %7358)  ; FMin(a,b)
  %7365 = fmul fast float %7361, 2.550000e+02
  %7366 = fadd fast float %7365, 0x3F70101020000000
  %7367 = fptoui float %7366 to i32
  %7368 = fmul fast float %7364, 2.550000e+02
  %7369 = fadd fast float %7368, 0x3F70101020000000
  %7370 = fptoui float %7369 to i32
  %7371 = icmp ult i32 %7367, %7370
  br i1 %7371, label %7372, label %7540

; <label>:7372                                    ; preds = %7341
  %7373 = fcmp fast ogt float %100, 9.843750e-01
  %7374 = fadd fast float %101, -4.000000e+00
  %7375 = select i1 %7373, float -4.000000e+00, float %7374
  %7376 = call float @dx.op.binary.f32(i32 35, float %7375, float 0.000000e+00)  ; FMax(a,b)
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = fadd fast float %7378, %7376
  %7380 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7381 = fmul fast float %7379, %7380
  %7382 = call float @dx.op.unary.f32(i32 23, float %7381)  ; Log(value)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7377, 3
  %7384 = fmul fast float %7383, %7382
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7387 = fmul fast float %7384, %7386
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = uitofp i32 %7367 to float
  %7390 = uitofp i32 %7370 to float
  %7391 = fadd fast float %7389, 5.000000e-01
  %7392 = fadd fast float %7390, 5.000000e-01
  %7393 = fmul fast float %7386, %7391
  %7394 = fmul fast float %7386, %7392
  %7395 = fadd fast float %7393, 0x3F0FFB4800000000
  %7396 = fadd fast float %7394, 0xBF0FFB4800000000
  %7397 = call float @dx.op.binary.f32(i32 35, float %7388, float %7395)  ; FMax(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7397, float %7396)  ; FMin(a,b)
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 1
  %7401 = extractvalue %dx.types.CBufRet.f32 %7399, 2
  %7402 = extractvalue %dx.types.CBufRet.f32 %7399, 0
  %7403 = fmul fast float %7400, %7398
  %7404 = fadd fast float %7402, %7403
  %7405 = fadd fast float %7402, %7401
  %7406 = fsub fast float %7400, %7401
  %7407 = fadd fast float %7406, %7402
  %7408 = call float @dx.op.binary.f32(i32 35, float %7404, float %7405)  ; FMax(a,b)
  %7409 = call float @dx.op.binary.f32(i32 36, float %7408, float %7407)  ; FMin(a,b)
  %7410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7347, float %7348, float %7409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7411 = extractvalue %dx.types.ResRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.ResRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.ResRet.f32 %7410, 2
  %7414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.i32 %7414, 0
  %7416 = extractvalue %dx.types.CBufRet.i32 %7414, 1
  %7417 = uitofp i32 %7415 to float
  %7418 = uitofp i32 %7416 to float
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.CBufRet.f32 %7419, 1
  %7422 = fmul fast float %7417, %7347
  %7423 = fmul fast float %7418, %7348
  %7424 = fadd fast float %7422, -5.000000e-01
  %7425 = fadd fast float %7423, -5.000000e-01
  %7426 = call float @dx.op.unary.f32(i32 22, float %7424)  ; Frc(value)
  %7427 = call float @dx.op.unary.f32(i32 22, float %7425)  ; Frc(value)
  %7428 = fmul fast float %7426, %7426
  %7429 = fmul fast float %7428, %7426
  %7430 = fsub fast float 3.000000e+00, %7426
  %7431 = fmul fast float %7428, %7430
  %7432 = fmul fast float %7426, 3.000000e+00
  %7433 = fmul fast float %7429, 3.000000e+00
  %7434 = fmul fast float %7428, 6.000000e+00
  %7435 = fsub fast float %7433, %7434
  %7436 = fadd fast float %7435, 4.000000e+00
  %7437 = fmul fast float %7436, 0x3FC5555560000000
  %7438 = fmul fast float %7429, -3.000000e+00
  %7439 = fadd fast float %7428, %7426
  %7440 = fmul fast float %7439, 3.000000e+00
  %7441 = fadd fast float %7438, 1.000000e+00
  %7442 = fadd fast float %7441, %7440
  %7443 = fmul fast float %7429, 0x3FC5555560000000
  %7444 = fmul fast float %7427, %7427
  %7445 = fmul fast float %7444, %7427
  %7446 = fsub fast float 3.000000e+00, %7427
  %7447 = fmul fast float %7444, %7446
  %7448 = fmul fast float %7427, 3.000000e+00
  %7449 = fmul fast float %7445, 3.000000e+00
  %7450 = fmul fast float %7444, 6.000000e+00
  %7451 = fsub fast float %7449, %7450
  %7452 = fadd fast float %7451, 4.000000e+00
  %7453 = fmul fast float %7452, 0x3FC5555560000000
  %7454 = fmul fast float %7445, -3.000000e+00
  %7455 = fadd fast float %7444, %7427
  %7456 = fmul fast float %7455, 3.000000e+00
  %7457 = fadd fast float %7454, 1.000000e+00
  %7458 = fadd fast float %7457, %7456
  %7459 = fmul fast float %7445, 0x3FC5555560000000
  %7460 = fadd fast float %7426, 1.000000e+00
  %7461 = fsub fast float 1.000000e+00, %7432
  %7462 = fadd fast float %7461, %7431
  %7463 = fadd fast float %7462, %7436
  %7464 = fmul fast float %7463, 0x3FC5555560000000
  %7465 = fdiv fast float %7437, %7464
  %7466 = fsub fast float %7460, %7465
  %7467 = fsub fast float 1.000000e+00, %7426
  %7468 = fadd fast float %7442, %7429
  %7469 = fmul fast float %7468, 0x3FC5555560000000
  %7470 = fdiv fast float %7443, %7469
  %7471 = fadd fast float %7467, %7470
  %7472 = fadd fast float %7427, 1.000000e+00
  %7473 = fsub fast float 1.000000e+00, %7448
  %7474 = fadd fast float %7473, %7447
  %7475 = fadd fast float %7474, %7452
  %7476 = fmul fast float %7475, 0x3FC5555560000000
  %7477 = fdiv fast float %7453, %7476
  %7478 = fsub fast float %7472, %7477
  %7479 = fsub fast float 1.000000e+00, %7427
  %7480 = fadd fast float %7458, %7445
  %7481 = fmul fast float %7480, 0x3FC5555560000000
  %7482 = fdiv fast float %7459, %7481
  %7483 = fadd fast float %7482, %7479
  %7484 = fmul fast float %7466, %7420
  %7485 = fsub fast float %7347, %7484
  %7486 = fmul fast float %7471, %7420
  %7487 = fadd fast float %7486, %7347
  %7488 = fmul fast float %7483, %7421
  %7489 = fadd fast float %7488, %7348
  %7490 = fmul fast float %7478, %7421
  %7491 = fsub fast float %7348, %7490
  %7492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7485, float %7491, float %7409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7493 = extractvalue %dx.types.ResRet.f32 %7492, 0
  %7494 = extractvalue %dx.types.ResRet.f32 %7492, 1
  %7495 = extractvalue %dx.types.ResRet.f32 %7492, 2
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7487, float %7491, float %7409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.ResRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.ResRet.f32 %7496, 2
  %7500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7485, float %7489, float %7409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7501 = extractvalue %dx.types.ResRet.f32 %7500, 0
  %7502 = extractvalue %dx.types.ResRet.f32 %7500, 1
  %7503 = extractvalue %dx.types.ResRet.f32 %7500, 2
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7487, float %7489, float %7409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.ResRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.ResRet.f32 %7504, 2
  %7508 = fsub fast float %7501, %7493
  %7509 = fsub fast float %7502, %7494
  %7510 = fsub fast float %7503, %7495
  %7511 = fmul fast float %7508, %7481
  %7512 = fmul fast float %7509, %7481
  %7513 = fmul fast float %7510, %7481
  %7514 = fadd fast float %7511, %7493
  %7515 = fadd fast float %7512, %7494
  %7516 = fadd fast float %7513, %7495
  %7517 = fsub fast float %7505, %7497
  %7518 = fsub fast float %7506, %7498
  %7519 = fsub fast float %7507, %7499
  %7520 = fmul fast float %7517, %7481
  %7521 = fmul fast float %7518, %7481
  %7522 = fmul fast float %7519, %7481
  %7523 = fsub fast float %7497, %7514
  %7524 = fadd fast float %7523, %7520
  %7525 = fsub fast float %7498, %7515
  %7526 = fadd fast float %7525, %7521
  %7527 = fsub fast float %7499, %7516
  %7528 = fadd fast float %7527, %7522
  %7529 = fmul fast float %7524, %7469
  %7530 = fmul fast float %7526, %7469
  %7531 = fmul fast float %7528, %7469
  %7532 = fadd fast float %7529, %7514
  %7533 = fadd fast float %7530, %7515
  %7534 = fadd fast float %7531, %7516
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7537 = fmul fast float %7532, %7536
  %7538 = fmul fast float %7533, %7536
  %7539 = fmul fast float %7534, %7536
  br label %7540

; <label>:7540                                    ; preds = %7372, %7341
  %7541 = phi float [ %7411, %7372 ], [ 1.000000e+00, %7341 ]
  %7542 = phi float [ %7412, %7372 ], [ 1.000000e+00, %7341 ]
  %7543 = phi float [ %7413, %7372 ], [ 1.000000e+00, %7341 ]
  %7544 = phi float [ %7537, %7372 ], [ 0.000000e+00, %7341 ]
  %7545 = phi float [ %7538, %7372 ], [ 0.000000e+00, %7341 ]
  %7546 = phi float [ %7539, %7372 ], [ 0.000000e+00, %7341 ]
  %7547 = fmul fast float %7544, %7318
  %7548 = fmul fast float %7545, %7318
  %7549 = fmul fast float %7546, %7318
  %7550 = call float @dx.op.dot3.f32(i32 55, float %7541, float %7542, float %7543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7551 = call float @dx.op.dot3.f32(i32 55, float %7547, float %7548, float %7549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7552 = select i1 %269, float %7550, float %7541
  %7553 = select i1 %269, float %7550, float %7542
  %7554 = select i1 %269, float 1.000000e+00, float %7543
  %7555 = select i1 %269, float %7551, float %7547
  %7556 = select i1 %269, float 0.000000e+00, float %7548
  %7557 = select i1 %269, float 0.000000e+00, float %7549
  %7558 = fmul fast float %7552, %7331
  %7559 = fmul fast float %7553, %7332
  %7560 = fmul fast float %7554, %7333
  %7561 = fadd fast float %7558, %7555
  %7562 = fadd fast float %7559, %7556
  %7563 = fadd fast float %7557, %7560
  %7564 = fmul fast float %7552, %7312
  %7565 = fmul fast float %7553, %7313
  %7566 = fmul fast float %7554, %7314
  %7567 = fmul fast float %146, %7343
  %7568 = fmul fast float %148, %7344
  %7569 = fsub fast float 1.000000e+00, %7567
  %7570 = fsub fast float 1.000000e+00, %7568
  %7571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7572 = extractvalue %dx.types.CBufRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.CBufRet.f32 %7571, 1
  %7574 = extractvalue %dx.types.CBufRet.f32 %7571, 2
  %7575 = fmul fast float %7569, %7572
  %7576 = fmul fast float %7569, %7573
  %7577 = fmul fast float %7569, %7574
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.CBufRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7582 = fmul fast float %7570, %7579
  %7583 = fmul fast float %7570, %7580
  %7584 = fmul fast float %7570, %7581
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7587 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7588 = extractvalue %dx.types.CBufRet.f32 %7585, 2
  %7589 = fadd fast float %7582, %7586
  %7590 = fadd fast float %7589, %7575
  %7591 = fadd fast float %7583, %7587
  %7592 = fadd fast float %7591, %7576
  %7593 = fadd fast float %7584, %7588
  %7594 = fadd fast float %7593, %7577
  %7595 = fmul fast float %7590, %232
  %7596 = fmul fast float %7592, %232
  %7597 = fmul fast float %7594, %232
  br label %7598

; <label>:7598                                    ; preds = %7540, %7311
  %7599 = phi float [ %7595, %7540 ], [ %197, %7311 ]
  %7600 = phi float [ %7596, %7540 ], [ %198, %7311 ]
  %7601 = phi float [ %7597, %7540 ], [ %199, %7311 ]
  %7602 = phi float [ %232, %7540 ], [ %101, %7311 ]
  %7603 = phi float [ %7561, %7540 ], [ %7331, %7311 ]
  %7604 = phi float [ %7562, %7540 ], [ %7332, %7311 ]
  %7605 = phi float [ %7563, %7540 ], [ %7333, %7311 ]
  %7606 = phi float [ %7564, %7540 ], [ %7312, %7311 ]
  %7607 = phi float [ %7565, %7540 ], [ %7313, %7311 ]
  %7608 = phi float [ %7566, %7540 ], [ %7314, %7311 ]
  %7609 = phi float [ %7541, %7540 ], [ 1.000000e+00, %7311 ]
  br i1 %7340, label %8764, label %7610

; <label>:7610                                    ; preds = %7598
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7615 = extractvalue %dx.types.CBufRet.f32 %7611, 3
  %7616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7617 = extractvalue %dx.types.CBufRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.CBufRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.CBufRet.f32 %7616, 2
  %7620 = extractvalue %dx.types.CBufRet.f32 %7616, 3
  %7621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.CBufRet.f32 %7621, 1
  %7624 = extractvalue %dx.types.CBufRet.f32 %7621, 2
  %7625 = extractvalue %dx.types.CBufRet.f32 %7621, 3
  %7626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7627 = extractvalue %dx.types.CBufRet.f32 %7626, 0
  %7628 = extractvalue %dx.types.CBufRet.f32 %7626, 1
  %7629 = extractvalue %dx.types.CBufRet.f32 %7626, 2
  %7630 = extractvalue %dx.types.CBufRet.f32 %7626, 3
  %7631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7632 = extractvalue %dx.types.CBufRet.f32 %7631, 3
  %7633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.f32 %7633, 3
  %7635 = extractvalue %dx.types.CBufRet.f32 %7633, 0
  %7636 = extractvalue %dx.types.CBufRet.f32 %7633, 1
  %7637 = extractvalue %dx.types.CBufRet.f32 %7633, 2
  %7638 = fcmp fast olt float %7637, -5.000000e-01
  %7639 = call float @dx.op.dot3.f32(i32 55, float %7599, float %7600, float %7601, float %7599, float %7600, float %7601)  ; Dot3(ax,ay,az,bx,by,bz)
  %7640 = call float @dx.op.unary.f32(i32 25, float %7639)  ; Rsqrt(value)
  %7641 = fmul fast float %7640, %7639
  %7642 = fmul fast float %7640, %7599
  %7643 = fmul fast float %7640, %7600
  %7644 = fmul fast float %7640, %7601
  %7645 = fadd fast float %7641, %7615
  %7646 = call float @dx.op.dot3.f32(i32 55, float %7642, float %7643, float %7644, float %7612, float %7613, float %7614)  ; Dot3(ax,ay,az,bx,by,bz)
  %7647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.i32 %7647, 1
  %7649 = and i32 %7648, 1
  %7650 = icmp ne i32 %7649, 0
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 2
  %7653 = fcmp fast ogt float %7652, 0.000000e+00
  %7654 = and i1 %7650, %7653
  br i1 %7654, label %7655, label %8061, !dx.controlflow.hints !129

; <label>:7655                                    ; preds = %7610
  %7656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7656, 3
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 2
  %7662 = fsub fast float %7659, %7661
  %7663 = and i32 %7648, 2
  %7664 = extractvalue %dx.types.CBufRet.i32 %7647, 0
  %7665 = call i32 @dx.op.binary.i32(i32 40, i32 %7664, i32 3)  ; UMin(a,b)
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.CBufRet.f32 %7660, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %7671 = fsub fast float %7667, %7669
  %7672 = fsub fast float %7668, %7670
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = fcmp fast ogt float %7674, 0.000000e+00
  %7676 = fsub fast float -0.000000e+00, %7671
  %7677 = fsub fast float -0.000000e+00, %7672
  %7678 = call float @dx.op.dot2.f32(i32 54, float %7642, float %7643, float %7642, float %7643)  ; Dot2(ax,ay,bx,by)
  %7679 = call float @dx.op.dot2.f32(i32 54, float %7642, float %7643, float %7676, float %7677)  ; Dot2(ax,ay,bx,by)
  %7680 = fmul fast float %7679, 2.000000e+00
  %7681 = call float @dx.op.dot2.f32(i32 54, float %7676, float %7677, float %7676, float %7677)  ; Dot2(ax,ay,bx,by)
  %7682 = fmul fast float %7674, %7674
  %7683 = fsub fast float %7681, %7682
  %7684 = fmul fast float %7680, %7680
  %7685 = fmul fast float %7678, 4.000000e+00
  %7686 = fmul fast float %7685, %7683
  %7687 = fsub fast float %7684, %7686
  %7688 = fcmp fast ogt float %7687, 0.000000e+00
  br i1 %7688, label %7689, label %7704

; <label>:7689                                    ; preds = %7655
  %7690 = fcmp fast ogt float %7680, 0.000000e+00
  %7691 = call float @dx.op.unary.f32(i32 24, float %7687)  ; Sqrt(value)
  %7692 = fsub fast float -0.000000e+00, %7691
  %7693 = select i1 %7690, float %7691, float %7692
  %7694 = fadd fast float %7693, %7680
  %7695 = fmul float %7694, -5.000000e-01
  %7696 = fdiv fast float %7695, %7678
  %7697 = call float @dx.op.binary.f32(i32 35, float %7696, float 0.000000e+00)  ; FMax(a,b)
  %7698 = call float @dx.op.binary.f32(i32 36, float %7641, float %7697)  ; FMin(a,b)
  %7699 = fdiv fast float %7683, %7695
  %7700 = call float @dx.op.binary.f32(i32 35, float %7699, float 0.000000e+00)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 36, float %7641, float %7700)  ; FMin(a,b)
  %7702 = call float @dx.op.binary.f32(i32 36, float %7698, float %7701)  ; FMin(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float %7698, float %7701)  ; FMax(a,b)
  br label %7704

; <label>:7704                                    ; preds = %7689, %7655
  %7705 = phi float [ %7703, %7689 ], [ -1.000000e+00, %7655 ]
  %7706 = phi float [ %7702, %7689 ], [ -1.000000e+00, %7655 ]
  %7707 = phi i1 [ true, %7689 ], [ false, %7655 ]
  %7708 = and i1 %7675, %7707
  br i1 %7708, label %7709, label %7711

; <label>:7709                                    ; preds = %7704
  %7710 = fcmp fast oeq float %7706, %7705
  br i1 %7710, label %8014, label %7712

; <label>:7711                                    ; preds = %7704
  br i1 %7675, label %8014, label %7712

; <label>:7712                                    ; preds = %7711, %7709
  %7713 = phi float [ %7641, %7711 ], [ %7705, %7709 ]
  %7714 = phi float [ 0.000000e+00, %7711 ], [ %7706, %7709 ]
  %7715 = icmp ne i32 %7663, 0
  %7716 = fmul fast float %7713, %7644
  %7717 = fadd fast float %7716, %7657
  %7718 = fmul fast float %7717, %7713
  %7719 = select i1 %7715, float 0.000000e+00, float %7718
  %7720 = fcmp fast oeq float %7644, 0.000000e+00
  %7721 = fdiv fast float %7662, %7644
  %7722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7721)  ; FMax(a,b)
  %7723 = select i1 %7720, float %7713, float %7722
  %7724 = call float @dx.op.binary.f32(i32 36, float %7713, float %7723)  ; FMin(a,b)
  %7725 = fcmp fast ogt float %7644, 0.000000e+00
  %7726 = fcmp fast olt float %7662, 0.000000e+00
  br i1 %7725, label %7727, label %7784

; <label>:7727                                    ; preds = %7712
  %7728 = icmp eq i32 %7663, 0
  br i1 %7726, label %7729, label %7773

; <label>:7729                                    ; preds = %7727
  %7730 = select i1 %7728, float %7713, float 0.000000e+00
  %7731 = fsub fast float -0.000000e+00, %7730
  %7732 = call float @dx.op.unary.f32(i32 6, float %7731)  ; FAbs(value)
  %7733 = fmul fast float %7730, %7644
  %7734 = fadd fast float %7733, %7657
  %7735 = fmul fast float %7732, %7734
  %7736 = fsub fast float %7719, %7735
  %7737 = fsub fast float %7713, %7732
  %7738 = select i1 %7728, float %7737, float 0.000000e+00
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 0
  %7741 = extractvalue %dx.types.CBufRet.f32 %7739, 1
  %7742 = extractvalue %dx.types.CBufRet.f32 %7739, 2
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7746 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7747 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %8014

; <label>:7773                                    ; preds = %7727
  br i1 %7728, label %7774, label %7795

; <label>:7774                                    ; preds = %7773
  %7775 = call float @dx.op.binary.f32(i32 36, float %7724, float %7714)  ; FMin(a,b)
  %7776 = fsub fast float %7724, %7775
  %7777 = fsub fast float %7776, %7713
  %7778 = call float @dx.op.unary.f32(i32 6, float %7777)  ; FAbs(value)
  %7779 = fadd fast float %7776, %7713
  %7780 = fmul fast float %7779, %7644
  %7781 = fadd fast float %7780, %7657
  %7782 = fmul fast float %7781, %7778
  %7783 = fsub fast float %7719, %7782
  br label %7795

; <label>:7784                                    ; preds = %7712
  br i1 %7726, label %7785, label %7795

; <label>:7785                                    ; preds = %7784
  %7786 = call float @dx.op.binary.f32(i32 35, float %7714, float %7724)  ; FMax(a,b)
  %7787 = icmp eq i32 %7663, 0
  %7788 = select i1 %7787, float %7724, float 0.000000e+00
  %7789 = fsub fast float -0.000000e+00, %7788
  %7790 = call float @dx.op.unary.f32(i32 6, float %7789)  ; FAbs(value)
  %7791 = fmul fast float %7788, %7644
  %7792 = fadd fast float %7791, %7657
  %7793 = fmul fast float %7790, %7792
  %7794 = fsub fast float %7719, %7793
  br label %7795

; <label>:7795                                    ; preds = %7785, %7784, %7774, %7773
  %7796 = phi float [ %7714, %7773 ], [ %7714, %7774 ], [ %7786, %7785 ], [ %7714, %7784 ]
  %7797 = phi float [ 0.000000e+00, %7773 ], [ %7778, %7774 ], [ %7790, %7785 ], [ 0.000000e+00, %7784 ]
  %7798 = phi float [ %7719, %7773 ], [ %7783, %7774 ], [ %7794, %7785 ], [ %7719, %7784 ]
  %7799 = phi float [ %7724, %7773 ], [ %7724, %7774 ], [ %7713, %7785 ], [ %7713, %7784 ]
  %7800 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7800, align 4, !tbaa !130, !noalias !132
  %7801 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7801, align 4, !tbaa !130, !noalias !132
  %7802 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7802, align 4, !tbaa !130, !noalias !132
  %7803 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7803, align 4, !tbaa !130, !noalias !132
  %7804 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7804, align 4, !tbaa !130, !noalias !132
  %7805 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7805, align 4, !tbaa !130, !noalias !132
  %7806 = icmp sgt i32 %7665, 0
  br i1 %7806, label %7807, label %7868

; <label>:7807                                    ; preds = %7795
  br label %7808

; <label>:7808                                    ; preds = %7857, %7807
  %7809 = phi i32 [ %7858, %7857 ], [ 0, %7807 ]
  %7810 = phi i32 [ %7859, %7857 ], [ 0, %7807 ]
  %7811 = add nuw i32 %7810, 171
  %7812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7811)  ; CBufferLoadLegacy(handle,regIndex)
  %7813 = extractvalue %dx.types.CBufRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.CBufRet.f32 %7812, 1
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 1
  %7818 = fsub fast float %7813, %7816
  %7819 = fsub fast float %7814, %7817
  %7820 = extractvalue %dx.types.CBufRet.f32 %7812, 2
  %7821 = fsub fast float -0.000000e+00, %7818
  %7822 = fsub fast float -0.000000e+00, %7819
  %7823 = call float @dx.op.dot2.f32(i32 54, float %7642, float %7643, float %7821, float %7822)  ; Dot2(ax,ay,bx,by)
  %7824 = fmul fast float %7823, 2.000000e+00
  %7825 = call float @dx.op.dot2.f32(i32 54, float %7821, float %7822, float %7821, float %7822)  ; Dot2(ax,ay,bx,by)
  %7826 = fmul fast float %7820, %7820
  %7827 = fsub fast float %7825, %7826
  %7828 = fmul fast float %7824, %7824
  %7829 = fmul fast float %7685, %7827
  %7830 = fsub fast float %7828, %7829
  %7831 = fcmp fast ogt float %7830, 0.000000e+00
  br i1 %7831, label %7832, label %7847

; <label>:7832                                    ; preds = %7808
  %7833 = fcmp fast ogt float %7824, 0.000000e+00
  %7834 = call float @dx.op.unary.f32(i32 24, float %7830)  ; Sqrt(value)
  %7835 = fsub fast float -0.000000e+00, %7834
  %7836 = select i1 %7833, float %7834, float %7835
  %7837 = fadd fast float %7836, %7824
  %7838 = fmul float %7837, -5.000000e-01
  %7839 = fdiv fast float %7838, %7678
  %7840 = call float @dx.op.binary.f32(i32 35, float %7839, float 0.000000e+00)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 36, float %7713, float %7840)  ; FMin(a,b)
  %7842 = fdiv fast float %7827, %7838
  %7843 = call float @dx.op.binary.f32(i32 35, float %7842, float 0.000000e+00)  ; FMax(a,b)
  %7844 = call float @dx.op.binary.f32(i32 36, float %7713, float %7843)  ; FMin(a,b)
  %7845 = call float @dx.op.binary.f32(i32 36, float %7841, float %7844)  ; FMin(a,b)
  %7846 = call float @dx.op.binary.f32(i32 35, float %7841, float %7844)  ; FMax(a,b)
  br label %7847

; <label>:7847                                    ; preds = %7832, %7808
  %7848 = phi float [ %7846, %7832 ], [ -1.000000e+00, %7808 ]
  %7849 = phi float [ %7845, %7832 ], [ -1.000000e+00, %7808 ]
  %7850 = phi i1 [ true, %7832 ], [ false, %7808 ]
  br i1 %7850, label %7851, label %7857

; <label>:7851                                    ; preds = %7847
  %7852 = call float @dx.op.binary.f32(i32 35, float %7796, float %7849)  ; FMax(a,b)
  %7853 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7810
  store float %7852, float* %7853, align 4, !tbaa !130, !noalias !132
  %7854 = call float @dx.op.binary.f32(i32 35, float %7796, float %7848)  ; FMax(a,b)
  %7855 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7810
  store float %7854, float* %7855, align 4, !tbaa !130, !noalias !132
  %7856 = add nsw i32 %7809, 1
  br label %7857

; <label>:7857                                    ; preds = %7851, %7847
  %7858 = phi i32 [ %7856, %7851 ], [ %7809, %7847 ]
  %7859 = add nuw nsw i32 %7810, 1
  %7860 = icmp eq i32 %7859, %7665
  br i1 %7860, label %7861, label %7808

; <label>:7861                                    ; preds = %7857
  %7862 = load float, float* %7802, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %7863 = load float, float* %7801, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  %7864 = load float, float* %7800, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  %7865 = load float, float* %7805, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %7866 = load float, float* %7804, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  %7867 = load float, float* %7803, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  br label %7868

; <label>:7868                                    ; preds = %7861, %7795
  %7869 = phi float [ -1.000000e+00, %7795 ], [ %7867, %7861 ]
  %7870 = phi float [ -1.000000e+00, %7795 ], [ %7866, %7861 ]
  %7871 = phi float [ -1.000000e+00, %7795 ], [ %7865, %7861 ]
  %7872 = phi float [ -1.000000e+00, %7795 ], [ %7864, %7861 ]
  %7873 = phi float [ -1.000000e+00, %7795 ], [ %7863, %7861 ]
  %7874 = phi float [ -1.000000e+00, %7795 ], [ %7862, %7861 ]
  %7875 = phi i32 [ 0, %7795 ], [ %7858, %7861 ]
  %7876 = call float @dx.op.binary.f32(i32 36, float %7873, float %7874)  ; FMin(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7872, float %7876)  ; FMin(a,b)
  %7878 = call float @dx.op.binary.f32(i32 35, float %7872, float %7873)  ; FMax(a,b)
  %7879 = call float @dx.op.binary.f32(i32 36, float %7878, float %7874)  ; FMin(a,b)
  %7880 = call float @dx.op.binary.f32(i32 36, float %7872, float %7873)  ; FMin(a,b)
  %7881 = call float @dx.op.binary.f32(i32 35, float %7880, float %7879)  ; FMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 35, float %7873, float %7874)  ; FMax(a,b)
  %7883 = call float @dx.op.binary.f32(i32 35, float %7872, float %7882)  ; FMax(a,b)
  store float %7877, float* %7800, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  store float %7881, float* %7801, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  store float %7883, float* %7802, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %7884 = call float @dx.op.binary.f32(i32 36, float %7870, float %7871)  ; FMin(a,b)
  %7885 = call float @dx.op.binary.f32(i32 36, float %7869, float %7884)  ; FMin(a,b)
  %7886 = call float @dx.op.binary.f32(i32 35, float %7869, float %7870)  ; FMax(a,b)
  %7887 = call float @dx.op.binary.f32(i32 36, float %7886, float %7871)  ; FMin(a,b)
  %7888 = call float @dx.op.binary.f32(i32 36, float %7869, float %7870)  ; FMin(a,b)
  %7889 = call float @dx.op.binary.f32(i32 35, float %7888, float %7887)  ; FMax(a,b)
  %7890 = call float @dx.op.binary.f32(i32 35, float %7870, float %7871)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 35, float %7869, float %7890)  ; FMax(a,b)
  store float %7885, float* %7803, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %7889, float* %7804, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  store float %7891, float* %7805, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %7892 = sub nsw i32 3, %7875
  %7893 = icmp sgt i32 %7892, 2
  br i1 %7893, label %7894, label %7932

; <label>:7894                                    ; preds = %7868
  %7895 = icmp eq i32 %7663, 0
  %7896 = fsub fast float %7713, %7797
  %7897 = select i1 %7895, float %7896, float %7797
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7901 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.CBufRet.f32 %7902, 2
  %7906 = extractvalue %dx.types.CBufRet.f32 %7902, 3
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7909 = call float @dx.op.binary.f32(i32 36, float %7798, float %7908)  ; FMin(a,b)
  %7910 = fmul fast float %7906, %7897
  %7911 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  %7912 = fsub fast float %7903, %7899
  %7913 = fsub fast float %7904, %7900
  %7914 = fsub fast float %7905, %7901
  %7915 = fmul fast float %7911, %7912
  %7916 = fmul fast float %7911, %7913
  %7917 = fmul fast float %7911, %7914
  %7918 = fadd fast float %7915, %7899
  %7919 = fadd fast float %7916, %7900
  %7920 = fadd fast float %7917, %7901
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 0
  %7923 = extractvalue %dx.types.CBufRet.f32 %7921, 1
  %7924 = fadd fast float %7923, %7922
  %7925 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7927 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7928 = fadd fast float %7927, %7926
  %7929 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  %7930 = fmul fast float %7925, %7909
  %7931 = fmul fast float %7930, %7929
  br label %8014

; <label>:7932                                    ; preds = %7868
  %7933 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7892
  %7934 = load float, float* %7933, align 4, !tbaa !130, !noalias !132
  %7935 = fcmp fast olt float %7934, %7799
  %7936 = icmp sgt i32 %7875, 0
  %7937 = and i1 %7936, %7935
  br i1 %7937, label %7938, label %7975

; <label>:7938                                    ; preds = %7932
  br label %7939

; <label>:7939                                    ; preds = %7968, %7938
  %7940 = phi float [ %7969, %7968 ], [ %7797, %7938 ]
  %7941 = phi float [ %7970, %7968 ], [ %7798, %7938 ]
  %7942 = phi float [ %7950, %7968 ], [ %7934, %7938 ]
  %7943 = phi i32 [ %7947, %7968 ], [ %7892, %7938 ]
  %7944 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7943
  %7945 = load float, float* %7944, align 4, !tbaa !130, !noalias !132
  %7946 = icmp slt i32 %7943, 2
  %7947 = add nsw i32 %7943, 1
  %7948 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7947
  %7949 = load float, float* %7948, align 4, !tbaa !130, !noalias !132
  %7950 = select i1 %7946, float %7949, float %7713
  %7951 = call float @dx.op.binary.f32(i32 36, float %7950, float %7945)  ; FMin(a,b)
  %7952 = call float @dx.op.binary.f32(i32 36, float %7799, float %7951)  ; FMin(a,b)
  %7953 = icmp eq i32 %7663, 0
  %7954 = fadd fast float %7952, %7942
  %7955 = fmul fast float %7954, %7644
  %7956 = fadd fast float %7955, %7657
  br i1 %7953, label %7962, label %7957

; <label>:7957                                    ; preds = %7939
  %7958 = fsub fast float %7952, %7942
  %7959 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7958)  ; FMax(a,b)
  %7960 = fmul fast float %7959, %7956
  %7961 = fadd fast float %7960, %7941
  br label %7968

; <label>:7962                                    ; preds = %7939
  %7963 = fsub fast float %7942, %7952
  %7964 = call float @dx.op.unary.f32(i32 6, float %7963)  ; FAbs(value)
  %7965 = fadd fast float %7964, %7940
  %7966 = fmul fast float %7964, %7956
  %7967 = fsub fast float %7941, %7966
  br label %7968

; <label>:7968                                    ; preds = %7962, %7957
  %7969 = phi float [ %7959, %7957 ], [ %7965, %7962 ]
  %7970 = phi float [ %7961, %7957 ], [ %7967, %7962 ]
  %7971 = fcmp fast olt float %7950, %7799
  %7972 = icmp slt i32 %7947, 3
  %7973 = and i1 %7972, %7971
  br i1 %7973, label %7939, label %7974

; <label>:7974                                    ; preds = %7968
  br label %7975

; <label>:7975                                    ; preds = %7974, %7932
  %7976 = phi float [ %7797, %7932 ], [ %7969, %7974 ]
  %7977 = phi float [ %7798, %7932 ], [ %7970, %7974 ]
  %7978 = fsub fast float %7713, %7976
  %7979 = select i1 %7715, float %7976, float %7978
  %7980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7981 = extractvalue %dx.types.CBufRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.CBufRet.f32 %7980, 1
  %7983 = extractvalue %dx.types.CBufRet.f32 %7980, 2
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7988 = extractvalue %dx.types.CBufRet.f32 %7984, 3
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %7991 = call float @dx.op.binary.f32(i32 36, float %7977, float %7990)  ; FMin(a,b)
  %7992 = fmul fast float %7988, %7979
  %7993 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7994 = fsub fast float %7985, %7981
  %7995 = fsub fast float %7986, %7982
  %7996 = fsub fast float %7987, %7983
  %7997 = fmul fast float %7993, %7994
  %7998 = fmul fast float %7993, %7995
  %7999 = fmul fast float %7993, %7996
  %8000 = fadd fast float %7997, %7981
  %8001 = fadd fast float %7998, %7982
  %8002 = fadd fast float %7999, %7983
  %8003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8004 = extractvalue %dx.types.CBufRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.CBufRet.f32 %8003, 1
  %8006 = fadd fast float %8005, %8004
  %8007 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8003, 2
  %8009 = extractvalue %dx.types.CBufRet.f32 %8003, 3
  %8010 = fadd fast float %8009, %8008
  %8011 = call float @dx.op.unary.f32(i32 7, float %8010)  ; Saturate(value)
  %8012 = fmul fast float %8007, %7991
  %8013 = fmul fast float %8012, %8011
  br label %8014

; <label>:8014                                    ; preds = %7975, %7894, %7729, %7711, %7709
  %8015 = phi float [ %7738, %7729 ], [ %7897, %7894 ], [ %7979, %7975 ], [ 0.000000e+00, %7709 ], [ 0.000000e+00, %7711 ]
  %8016 = phi float [ %7772, %7729 ], [ %7931, %7894 ], [ %8013, %7975 ], [ 0.000000e+00, %7709 ], [ 0.000000e+00, %7711 ]
  %8017 = phi float [ %7759, %7729 ], [ %7918, %7894 ], [ %8000, %7975 ], [ 0.000000e+00, %7709 ], [ 0.000000e+00, %7711 ]
  %8018 = phi float [ %7760, %7729 ], [ %7919, %7894 ], [ %8001, %7975 ], [ 0.000000e+00, %7709 ], [ 0.000000e+00, %7711 ]
  %8019 = phi float [ %7761, %7729 ], [ %7920, %7894 ], [ %8002, %7975 ], [ 0.000000e+00, %7709 ], [ 0.000000e+00, %7711 ]
  %8020 = fmul fast float %7652, %8016
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8023 = fsub fast float %7659, %8022
  %8024 = fcmp fast olt float %8020, -2.000000e+01
  %8025 = call float @dx.op.unary.f32(i32 21, float %8020)  ; Exp(value)
  %8026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8027 = extractvalue %dx.types.CBufRet.f32 %8026, 2
  %8028 = extractvalue %dx.types.CBufRet.f32 %8026, 3
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8031 = fmul fast float %8028, %8023
  %8032 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8033 = fsub fast float 1.000000e+00, %8032
  %8034 = fmul fast float %7644, 5.000000e-01
  %8035 = fadd fast float %8034, 5.000000e-01
  %8036 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8037 = fsub fast float 1.000000e+00, %8036
  %8038 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8033)  ; FMax(a,b)
  %8039 = fdiv fast float %8037, %8038
  %8040 = fsub fast float %8023, %7601
  %8041 = call float @dx.op.unary.f32(i32 6, float %8040)  ; FAbs(value)
  %8042 = fmul fast float %8041, %8027
  %8043 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8044 = fsub fast float 1.000000e+00, %8042
  %8045 = fmul fast float %8044, %8043
  %8046 = fadd fast float %8045, %8042
  %8047 = fmul fast float %8030, %8023
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = fsub fast float 1.000000e+00, %8046
  %8050 = fmul fast float %8049, %8048
  %8051 = fadd fast float %8050, %8046
  %8052 = call float @dx.op.unary.f32(i32 7, float %8051)  ; Saturate(value)
  %8053 = fadd fast float %8025, -1.000000e+00
  %8054 = select i1 %8024, float -1.000000e+00, float %8053
  %8055 = fmul fast float %8052, %8054
  %8056 = fadd fast float %8055, 1.000000e+00
  %8057 = fsub fast float -0.000000e+00, %8055
  %8058 = fmul fast float %8017, %8057
  %8059 = fmul fast float %8018, %8057
  %8060 = fmul fast float %8019, %8057
  br label %8061

; <label>:8061                                    ; preds = %8014, %7610
  %8062 = phi float [ %8015, %8014 ], [ 0.000000e+00, %7610 ]
  %8063 = phi float [ %8056, %8014 ], [ 1.000000e+00, %7610 ]
  %8064 = phi float [ %8058, %8014 ], [ 0.000000e+00, %7610 ]
  %8065 = phi float [ %8059, %8014 ], [ 0.000000e+00, %7610 ]
  %8066 = phi float [ %8060, %8014 ], [ 0.000000e+00, %7610 ]
  %8067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8068 = extractvalue %dx.types.CBufRet.f32 %8067, 1
  %8069 = fsub fast float 1.000000e+00, %8063
  %8070 = fmul fast float %8069, %7645
  %8071 = fmul fast float %8070, %8068
  %8072 = fsub fast float %7645, %8071
  br i1 %7638, label %8073, label %8102, !dx.controlflow.hints !168

; <label>:8073                                    ; preds = %8061
  %8074 = fmul fast float %7646, %7635
  %8075 = fadd fast float %8074, %7636
  %8076 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8077 = fmul fast float %7617, %8072
  %8078 = fsub fast float -0.000000e+00, %8077
  %8079 = fmul fast float %7618, %8072
  %8080 = fsub fast float -0.000000e+00, %8079
  %8081 = call float @dx.op.unary.f32(i32 21, float %8078)  ; Exp(value)
  %8082 = call float @dx.op.unary.f32(i32 21, float %8080)  ; Exp(value)
  %8083 = call float @dx.op.binary.f32(i32 35, float %7625, float %8081)  ; FMax(a,b)
  %8084 = call float @dx.op.binary.f32(i32 35, float %7625, float %8082)  ; FMax(a,b)
  %8085 = fsub fast float %8084, %8083
  %8086 = fmul fast float %8085, %8076
  %8087 = fadd fast float %8086, %8083
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8089 = fsub fast float %7622, %7627
  %8090 = fsub fast float %7623, %7628
  %8091 = fsub fast float %7624, %7629
  %8092 = fmul fast float %8076, %8089
  %8093 = fmul fast float %8076, %8090
  %8094 = fmul fast float %8076, %8091
  %8095 = fadd fast float %8092, %7627
  %8096 = fadd fast float %8093, %7628
  %8097 = fadd fast float %8094, %7629
  %8098 = fsub fast float 1.000000e+00, %8088
  %8099 = fmul fast float %8098, %8095
  %8100 = fmul fast float %8098, %8096
  %8101 = fmul fast float %8098, %8097
  br label %8161

; <label>:8102                                    ; preds = %8061
  %8103 = fmul fast float %8072, %7634
  %8104 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  %8105 = fsub fast float 2.000000e+00, %8104
  %8106 = fmul fast float %8104, 9.921875e-01
  %8107 = fmul fast float %8106, %8105
  %8108 = fadd fast float %8107, 3.906250e-03
  %8109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8108, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8110 = extractvalue %dx.types.ResRet.f32 %8109, 0
  %8111 = fsub fast float %8104, %8110
  %8112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8111)  ; FMax(a,b)
  %8113 = fmul fast float %7620, %7601
  %8114 = call float @dx.op.unary.f32(i32 6, float %8113)  ; FAbs(value)
  %8115 = fcmp fast ogt float %8114, 0x3EB0C6F7A0000000
  br i1 %8115, label %8116, label %8122, !dx.controlflow.hints !169

; <label>:8116                                    ; preds = %8102
  %8117 = fmul fast float %8113, 0xBFF7154760000000
  %8118 = call float @dx.op.unary.f32(i32 21, float %8117)  ; Exp(value)
  %8119 = fsub fast float 1.000000e+00, %8118
  %8120 = fdiv fast float %8119, %8113
  %8121 = fmul fast float %8120, %7630
  br label %8122

; <label>:8122                                    ; preds = %8116, %8102
  %8123 = phi float [ %8121, %8116 ], [ %7630, %8102 ]
  %8124 = fadd fast float %8123, %7632
  %8125 = fmul fast float %8124, %8112
  %8126 = fmul fast float %7617, %8125
  %8127 = fsub fast float -0.000000e+00, %8126
  %8128 = fmul fast float %7618, %8125
  %8129 = fsub fast float -0.000000e+00, %8128
  %8130 = fmul fast float %7619, %8125
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = call float @dx.op.unary.f32(i32 21, float %8127)  ; Exp(value)
  %8133 = call float @dx.op.unary.f32(i32 21, float %8129)  ; Exp(value)
  %8134 = call float @dx.op.unary.f32(i32 21, float %8131)  ; Exp(value)
  %8135 = fmul fast float %7646, %7646
  %8136 = fadd fast float %8135, 1.000000e+00
  %8137 = fmul fast float %8136, 0x3FAE8EC8A0000000
  %8138 = fmul fast float %8137, %7627
  %8139 = fmul fast float %8137, %7628
  %8140 = fmul fast float %8137, %7629
  %8141 = fmul fast float %7646, %7625
  %8142 = fsub fast float 1.000000e+00, %8141
  %8143 = fmul fast float %7625, %7625
  %8144 = fsub fast float 1.000000e+00, %8143
  %8145 = fmul fast float %8144, 0x3FB45F3060000000
  %8146 = fmul fast float %8142, %8142
  %8147 = fdiv fast float 1.000000e+00, %8146
  %8148 = fmul fast float %8145, %8147
  %8149 = fmul fast float %8148, %7622
  %8150 = fmul fast float %8148, %7623
  %8151 = fmul fast float %8148, %7624
  %8152 = fadd fast float %8149, %8138
  %8153 = fadd fast float %8150, %8139
  %8154 = fadd fast float %8151, %8140
  %8155 = fsub fast float 1.000000e+00, %8132
  %8156 = fsub fast float 1.000000e+00, %8133
  %8157 = fsub fast float 1.000000e+00, %8134
  %8158 = fmul fast float %8152, %8155
  %8159 = fmul fast float %8153, %8156
  %8160 = fmul fast float %8154, %8157
  br label %8161

; <label>:8161                                    ; preds = %8122, %8073
  %8162 = phi float [ %8099, %8073 ], [ %8158, %8122 ]
  %8163 = phi float [ %8100, %8073 ], [ %8159, %8122 ]
  %8164 = phi float [ %8101, %8073 ], [ %8160, %8122 ]
  %8165 = phi float [ %8088, %8073 ], [ %8132, %8122 ]
  %8166 = phi float [ %8088, %8073 ], [ %8133, %8122 ]
  %8167 = phi float [ %8088, %8073 ], [ %8134, %8122 ]
  br i1 %7654, label %8168, label %8366, !dx.controlflow.hints !170

; <label>:8168                                    ; preds = %8161
  %8169 = extractvalue %dx.types.CBufRet.f32 %8067, 0
  %8170 = fmul fast float %8169, %8069
  %8171 = fsub fast float %8064, %8162
  %8172 = fsub fast float %8065, %8163
  %8173 = fsub fast float %8066, %8164
  %8174 = fmul fast float %8170, %8171
  %8175 = fmul fast float %8170, %8172
  %8176 = fmul fast float %8170, %8173
  %8177 = fadd fast float %8174, %8162
  %8178 = fadd fast float %8175, %8163
  %8179 = fadd fast float %8176, %8164
  %8180 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8165)  ; FMax(a,b)
  %8181 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8166)  ; FMax(a,b)
  %8182 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8167)  ; FMax(a,b)
  %8183 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8063)  ; FMax(a,b)
  %8184 = call float @dx.op.binary.f32(i32 35, float %8062, float %8072)  ; FMax(a,b)
  %8185 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8184)  ; FMax(a,b)
  %8186 = fdiv fast float %8062, %8185
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8188 = fdiv fast float %8072, %8185
  %8189 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  %8190 = fcmp fast une float %8183, 1.000000e+00
  br i1 %8190, label %8191, label %8204, !dx.controlflow.hints !171

; <label>:8191                                    ; preds = %8168
  %8192 = call float @dx.op.unary.f32(i32 23, float %8183)  ; Log(value)
  %8193 = fmul fast float %8192, 0x3FE62E4300000000
  %8194 = fmul fast float %8064, %8193
  %8195 = fsub fast float -0.000000e+00, %8194
  %8196 = fmul fast float %8065, %8193
  %8197 = fsub fast float -0.000000e+00, %8196
  %8198 = fmul fast float %8066, %8193
  %8199 = fsub fast float -0.000000e+00, %8198
  %8200 = fsub fast float 1.000000e+00, %8183
  %8201 = fdiv fast float %8195, %8200
  %8202 = fdiv fast float %8197, %8200
  %8203 = fdiv fast float %8199, %8200
  br label %8204

; <label>:8204                                    ; preds = %8191, %8168
  %8205 = phi float [ %8201, %8191 ], [ %8064, %8168 ]
  %8206 = phi float [ %8202, %8191 ], [ %8065, %8168 ]
  %8207 = phi float [ %8203, %8191 ], [ %8066, %8168 ]
  %8208 = phi float [ %8193, %8191 ], [ 0.000000e+00, %8168 ]
  %8209 = fcmp fast une float %8180, 1.000000e+00
  br i1 %8209, label %8210, label %8217, !dx.controlflow.hints !172

; <label>:8210                                    ; preds = %8204
  %8211 = call float @dx.op.unary.f32(i32 23, float %8180)  ; Log(value)
  %8212 = fmul fast float %8211, 0x3FE62E4300000000
  %8213 = fmul fast float %8177, %8212
  %8214 = fsub fast float -0.000000e+00, %8213
  %8215 = fsub fast float 1.000000e+00, %8180
  %8216 = fdiv fast float %8214, %8215
  br label %8217

; <label>:8217                                    ; preds = %8210, %8204
  %8218 = phi float [ %8216, %8210 ], [ %8177, %8204 ]
  %8219 = phi float [ %8212, %8210 ], [ 0.000000e+00, %8204 ]
  %8220 = fcmp fast une float %8181, 1.000000e+00
  br i1 %8220, label %8221, label %8228, !dx.controlflow.hints !172

; <label>:8221                                    ; preds = %8217
  %8222 = call float @dx.op.unary.f32(i32 23, float %8181)  ; Log(value)
  %8223 = fmul fast float %8222, 0x3FE62E4300000000
  %8224 = fmul fast float %8178, %8223
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = fsub fast float 1.000000e+00, %8181
  %8227 = fdiv fast float %8225, %8226
  br label %8228

; <label>:8228                                    ; preds = %8221, %8217
  %8229 = phi float [ %8227, %8221 ], [ %8178, %8217 ]
  %8230 = phi float [ %8223, %8221 ], [ 0.000000e+00, %8217 ]
  %8231 = fcmp fast une float %8182, 1.000000e+00
  br i1 %8231, label %8232, label %8239, !dx.controlflow.hints !172

; <label>:8232                                    ; preds = %8228
  %8233 = call float @dx.op.unary.f32(i32 23, float %8182)  ; Log(value)
  %8234 = fmul fast float %8233, 0x3FE62E4300000000
  %8235 = fmul fast float %8179, %8234
  %8236 = fsub fast float -0.000000e+00, %8235
  %8237 = fsub fast float 1.000000e+00, %8182
  %8238 = fdiv fast float %8236, %8237
  br label %8239

; <label>:8239                                    ; preds = %8232, %8228
  %8240 = phi float [ %8238, %8232 ], [ %8179, %8228 ]
  %8241 = phi float [ %8234, %8232 ], [ 0.000000e+00, %8228 ]
  %8242 = fmul fast float %8205, %8189
  %8243 = fmul fast float %8206, %8189
  %8244 = fmul fast float %8207, %8189
  %8245 = fmul fast float %8208, %8189
  %8246 = fmul fast float %8218, %8187
  %8247 = fmul fast float %8229, %8187
  %8248 = fmul fast float %8240, %8187
  %8249 = fmul fast float %8219, %8187
  %8250 = fmul fast float %8230, %8187
  %8251 = fmul fast float %8241, %8187
  %8252 = fadd fast float %8246, %8242
  %8253 = fadd fast float %8247, %8243
  %8254 = fadd fast float %8248, %8244
  %8255 = fadd fast float %8249, %8245
  %8256 = fadd fast float %8250, %8245
  %8257 = fadd fast float %8251, %8245
  %8258 = fcmp fast une float %8255, 0.000000e+00
  br i1 %8258, label %8259, label %8266, !dx.controlflow.hints !173

; <label>:8259                                    ; preds = %8239
  %8260 = fmul fast float %8255, 0x3FF7154760000000
  %8261 = call float @dx.op.unary.f32(i32 21, float %8260)  ; Exp(value)
  %8262 = fsub fast float 1.000000e+00, %8261
  %8263 = fmul fast float %8252, %8262
  %8264 = fsub fast float -0.000000e+00, %8263
  %8265 = fdiv fast float %8264, %8255
  br label %8266

; <label>:8266                                    ; preds = %8259, %8239
  %8267 = phi float [ %8261, %8259 ], [ 1.000000e+00, %8239 ]
  %8268 = phi float [ %8265, %8259 ], [ %8252, %8239 ]
  %8269 = fcmp fast une float %8256, 0.000000e+00
  br i1 %8269, label %8270, label %8277, !dx.controlflow.hints !173

; <label>:8270                                    ; preds = %8266
  %8271 = fmul fast float %8256, 0x3FF7154760000000
  %8272 = call float @dx.op.unary.f32(i32 21, float %8271)  ; Exp(value)
  %8273 = fsub fast float 1.000000e+00, %8272
  %8274 = fmul fast float %8253, %8273
  %8275 = fsub fast float -0.000000e+00, %8274
  %8276 = fdiv fast float %8275, %8256
  br label %8277

; <label>:8277                                    ; preds = %8270, %8266
  %8278 = phi float [ %8272, %8270 ], [ 1.000000e+00, %8266 ]
  %8279 = phi float [ %8276, %8270 ], [ %8253, %8266 ]
  %8280 = fcmp fast une float %8257, 0.000000e+00
  br i1 %8280, label %8281, label %8288, !dx.controlflow.hints !173

; <label>:8281                                    ; preds = %8277
  %8282 = fmul fast float %8257, 0x3FF7154760000000
  %8283 = call float @dx.op.unary.f32(i32 21, float %8282)  ; Exp(value)
  %8284 = fsub fast float 1.000000e+00, %8283
  %8285 = fmul fast float %8254, %8284
  %8286 = fsub fast float -0.000000e+00, %8285
  %8287 = fdiv fast float %8286, %8257
  br label %8288

; <label>:8288                                    ; preds = %8281, %8277
  %8289 = phi float [ %8283, %8281 ], [ 1.000000e+00, %8277 ]
  %8290 = phi float [ %8287, %8281 ], [ %8254, %8277 ]
  %8291 = fcmp fast ogt float %8187, %8189
  br i1 %8291, label %8292, label %8312

; <label>:8292                                    ; preds = %8288
  %8293 = fsub fast float 1.000000e+00, %8189
  %8294 = fmul fast float %8205, %8293
  %8295 = fmul fast float %8206, %8293
  %8296 = fmul fast float %8207, %8293
  %8297 = fmul fast float %8208, %8293
  %8298 = fcmp fast une float %8297, 0.000000e+00
  br i1 %8298, label %8299, label %8350, !dx.controlflow.hints !174

; <label>:8299                                    ; preds = %8292
  %8300 = fmul fast float %8297, 0x3FF7154760000000
  %8301 = call float @dx.op.unary.f32(i32 21, float %8300)  ; Exp(value)
  %8302 = fsub fast float 1.000000e+00, %8301
  %8303 = fmul fast float %8294, %8302
  %8304 = fsub fast float -0.000000e+00, %8303
  %8305 = fmul fast float %8295, %8302
  %8306 = fsub fast float -0.000000e+00, %8305
  %8307 = fmul fast float %8296, %8302
  %8308 = fsub fast float -0.000000e+00, %8307
  %8309 = fdiv fast float %8304, %8297
  %8310 = fdiv fast float %8306, %8297
  %8311 = fdiv fast float %8308, %8297
  br label %8350

; <label>:8312                                    ; preds = %8288
  %8313 = fsub fast float 1.000000e+00, %8187
  %8314 = fmul fast float %8218, %8313
  %8315 = fmul fast float %8229, %8313
  %8316 = fmul fast float %8240, %8313
  %8317 = fmul fast float %8219, %8313
  %8318 = fmul fast float %8230, %8313
  %8319 = fmul fast float %8241, %8313
  %8320 = fcmp fast une float %8317, 0.000000e+00
  br i1 %8320, label %8321, label %8328, !dx.controlflow.hints !173

; <label>:8321                                    ; preds = %8312
  %8322 = fmul fast float %8317, 0x3FF7154760000000
  %8323 = call float @dx.op.unary.f32(i32 21, float %8322)  ; Exp(value)
  %8324 = fsub fast float 1.000000e+00, %8323
  %8325 = fmul fast float %8314, %8324
  %8326 = fsub fast float -0.000000e+00, %8325
  %8327 = fdiv fast float %8326, %8317
  br label %8328

; <label>:8328                                    ; preds = %8321, %8312
  %8329 = phi float [ %8327, %8321 ], [ %8314, %8312 ]
  %8330 = phi float [ %8323, %8321 ], [ 1.000000e+00, %8312 ]
  %8331 = fcmp fast une float %8318, 0.000000e+00
  br i1 %8331, label %8332, label %8339, !dx.controlflow.hints !173

; <label>:8332                                    ; preds = %8328
  %8333 = fmul fast float %8318, 0x3FF7154760000000
  %8334 = call float @dx.op.unary.f32(i32 21, float %8333)  ; Exp(value)
  %8335 = fsub fast float 1.000000e+00, %8334
  %8336 = fmul fast float %8315, %8335
  %8337 = fsub fast float -0.000000e+00, %8336
  %8338 = fdiv fast float %8337, %8318
  br label %8339

; <label>:8339                                    ; preds = %8332, %8328
  %8340 = phi float [ %8338, %8332 ], [ %8315, %8328 ]
  %8341 = phi float [ %8334, %8332 ], [ 1.000000e+00, %8328 ]
  %8342 = fcmp fast une float %8319, 0.000000e+00
  br i1 %8342, label %8343, label %8350, !dx.controlflow.hints !173

; <label>:8343                                    ; preds = %8339
  %8344 = fmul fast float %8319, 0x3FF7154760000000
  %8345 = call float @dx.op.unary.f32(i32 21, float %8344)  ; Exp(value)
  %8346 = fsub fast float 1.000000e+00, %8345
  %8347 = fmul fast float %8316, %8346
  %8348 = fsub fast float -0.000000e+00, %8347
  %8349 = fdiv fast float %8348, %8319
  br label %8350

; <label>:8350                                    ; preds = %8343, %8339, %8299, %8292
  %8351 = phi float [ %8349, %8343 ], [ %8311, %8299 ], [ %8296, %8292 ], [ %8316, %8339 ]
  %8352 = phi float [ %8340, %8343 ], [ %8310, %8299 ], [ %8295, %8292 ], [ %8340, %8339 ]
  %8353 = phi float [ %8329, %8343 ], [ %8309, %8299 ], [ %8294, %8292 ], [ %8329, %8339 ]
  %8354 = phi float [ %8345, %8343 ], [ %8301, %8299 ], [ 1.000000e+00, %8292 ], [ 1.000000e+00, %8339 ]
  %8355 = phi float [ %8341, %8343 ], [ %8301, %8299 ], [ 1.000000e+00, %8292 ], [ %8341, %8339 ]
  %8356 = phi float [ %8330, %8343 ], [ %8301, %8299 ], [ 1.000000e+00, %8292 ], [ %8330, %8339 ]
  %8357 = fmul fast float %8356, %8268
  %8358 = fmul fast float %8355, %8279
  %8359 = fmul fast float %8354, %8290
  %8360 = fadd fast float %8357, %8353
  %8361 = fadd fast float %8358, %8352
  %8362 = fadd fast float %8359, %8351
  %8363 = fmul fast float %8356, %8267
  %8364 = fmul fast float %8355, %8278
  %8365 = fmul fast float %8354, %8289
  br label %8366

; <label>:8366                                    ; preds = %8350, %8161
  %8367 = phi float [ %8365, %8350 ], [ %8167, %8161 ]
  %8368 = phi float [ %8364, %8350 ], [ %8166, %8161 ]
  %8369 = phi float [ %8363, %8350 ], [ %8165, %8161 ]
  %8370 = phi float [ %8362, %8350 ], [ %8164, %8161 ]
  %8371 = phi float [ %8361, %8350 ], [ %8163, %8161 ]
  %8372 = phi float [ %8360, %8350 ], [ %8162, %8161 ]
  %8373 = fmul fast float %8372, %7318
  %8374 = fmul fast float %8371, %7318
  %8375 = fmul fast float %8370, %7318
  %8376 = fmul fast float %8369, %7609
  %8377 = call float @dx.op.dot3.f32(i32 55, float %8369, float %8368, float %8367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8378 = call float @dx.op.dot3.f32(i32 55, float %8373, float %8374, float %8375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8379 = select i1 %269, float %8377, float %8369
  %8380 = select i1 %269, float %8377, float %8368
  %8381 = select i1 %269, float 1.000000e+00, float %8367
  %8382 = select i1 %269, float %8378, float %8373
  %8383 = select i1 %269, float 0.000000e+00, float %8374
  %8384 = select i1 %269, float 0.000000e+00, float %8375
  %8385 = fmul fast float %8379, %7603
  %8386 = fmul fast float %8380, %7604
  %8387 = fmul fast float %8381, %7605
  %8388 = fadd fast float %8385, %8382
  %8389 = fadd fast float %8386, %8383
  %8390 = fadd fast float %8384, %8387
  %8391 = fmul fast float %8379, %7606
  %8392 = fmul fast float %8380, %7607
  %8393 = fmul fast float %8381, %7608
  %8394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.i32 %8394, 0
  %8396 = icmp eq i32 %8395, 0
  br i1 %8396, label %8764, label %8397, !dx.controlflow.hints !175

; <label>:8397                                    ; preds = %8366
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 2
  %8400 = extractvalue %dx.types.CBufRet.f32 %8398, 3
  %8401 = fmul fast float %8399, %110
  %8402 = fmul fast float %8400, %111
  %8403 = fmul fast float %8401, 2.000000e+00
  %8404 = fmul fast float %8402, 2.000000e+00
  %8405 = fsub fast float 1.000000e+00, %8403
  %8406 = fsub fast float 1.000000e+00, %8404
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.CBufRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.CBufRet.f32 %8407, 2
  %8411 = fmul fast float %8405, %8408
  %8412 = fmul fast float %8405, %8409
  %8413 = fmul fast float %8405, %8410
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 0
  %8416 = extractvalue %dx.types.CBufRet.f32 %8414, 1
  %8417 = extractvalue %dx.types.CBufRet.f32 %8414, 2
  %8418 = fmul fast float %8406, %8415
  %8419 = fmul fast float %8406, %8416
  %8420 = fmul fast float %8406, %8417
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.CBufRet.f32 %8421, 2
  %8425 = fadd fast float %8418, %8422
  %8426 = fadd fast float %8425, %8411
  %8427 = fadd fast float %8419, %8423
  %8428 = fadd fast float %8427, %8412
  %8429 = fadd fast float %8420, %8424
  %8430 = fadd fast float %8429, %8413
  %8431 = fmul fast float %8426, %7602
  %8432 = fmul fast float %8428, %7602
  %8433 = fmul fast float %8430, %7602
  %8434 = fmul fast float %8431, %8431
  %8435 = fmul fast float %8432, %8432
  %8436 = fadd fast float %8434, %8435
  %8437 = fmul fast float %8433, %8433
  %8438 = fadd fast float %8436, %8437
  %8439 = call float @dx.op.unary.f32(i32 24, float %8438)  ; Sqrt(value)
  %8440 = extractvalue %dx.types.CBufRet.f32 %7329, 0
  %8441 = fsub fast float %8439, %8440
  %8442 = extractvalue %dx.types.CBufRet.f32 %7329, 2
  %8443 = fmul fast float %8441, %8442
  %8444 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8445 = fadd fast float %8444, -5.000000e-01
  %8446 = fmul fast float %8445, 2.000000e+00
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8449 = call float @dx.op.binary.f32(i32 36, float %8448, float %8446)  ; FMin(a,b)
  %8450 = fsub fast float -0.000000e+00, %8448
  %8451 = fcmp fast ogt float %8449, %8450
  br i1 %8451, label %8452, label %8764, !dx.controlflow.hints !176

; <label>:8452                                    ; preds = %8397
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 3
  %8455 = fcmp fast ogt float %8454, 0.000000e+00
  br i1 %8455, label %8456, label %8531, !dx.controlflow.hints !177

; <label>:8456                                    ; preds = %8452
  %8457 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8458 = extractvalue %dx.types.Dimensions %8457, 0
  %8459 = sitofp i32 %8458 to float
  %8460 = extractvalue %dx.types.Dimensions %8457, 1
  %8461 = sitofp i32 %8460 to float
  %8462 = fmul fast float %8401, %8459
  %8463 = fmul fast float %8402, %8461
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 1
  %8466 = fsub fast float -0.000000e+00, %8465
  %8467 = fptoui float %8466 to i32
  %8468 = fptoui float %8462 to i32
  %8469 = fptoui float %8463 to i32
  %8470 = and i32 %8467, 31
  %8471 = lshr i32 %8468, %8470
  %8472 = lshr i32 %8469, %8470
  %8473 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8467, i32 %8471, i32 %8472, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8474 = extractvalue %dx.types.ResRet.f32 %8473, 0
  %8475 = fcmp fast olt float %8474, -1.000000e+00
  %8476 = fcmp fast ogt float %8474, -1.000000e+00
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8479 = select i1 %8476, float %8478, float 1.000000e+00
  %8480 = fadd fast float %8474, 1.000000e+00
  %8481 = fmul fast float %8479, %8480
  %8482 = call float @dx.op.unary.f32(i32 6, float %8481)  ; FAbs(value)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8477, 3
  %8484 = fcmp fast oge float %8482, %8483
  %8485 = select i1 %8484, float 0x4197782600000000, float %8482
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.CBufRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8490 = select i1 %8475, float %8487, float %8408
  %8491 = select i1 %8475, float %8488, float %8409
  %8492 = select i1 %8475, float %8489, float %8410
  %8493 = fmul fast float %8490, %8405
  %8494 = fmul fast float %8491, %8405
  %8495 = fmul fast float %8492, %8405
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.CBufRet.f32 %8496, 1
  %8499 = extractvalue %dx.types.CBufRet.f32 %8496, 2
  %8500 = select i1 %8475, float %8497, float %8415
  %8501 = select i1 %8475, float %8498, float %8416
  %8502 = select i1 %8475, float %8499, float %8417
  %8503 = fmul fast float %8500, %8406
  %8504 = fmul fast float %8501, %8406
  %8505 = fmul fast float %8502, %8406
  %8506 = fadd fast float %8503, %8493
  %8507 = fadd fast float %8504, %8494
  %8508 = fadd fast float %8505, %8495
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8512 = extractvalue %dx.types.CBufRet.f32 %8509, 2
  %8513 = select i1 %8475, float %8510, float %8422
  %8514 = select i1 %8475, float %8511, float %8423
  %8515 = select i1 %8475, float %8512, float %8424
  %8516 = fadd fast float %8506, %8513
  %8517 = fadd fast float %8507, %8514
  %8518 = fadd fast float %8508, %8515
  %8519 = fmul fast float %8516, %8485
  %8520 = fmul fast float %8517, %8485
  %8521 = fmul fast float %8518, %8485
  %8522 = fmul fast float %8519, %8519
  %8523 = fmul fast float %8520, %8520
  %8524 = fadd fast float %8522, %8523
  %8525 = fmul fast float %8521, %8521
  %8526 = fadd fast float %8524, %8525
  %8527 = call float @dx.op.unary.f32(i32 24, float %8526)  ; Sqrt(value)
  %8528 = fsub fast float %8527, %8440
  %8529 = fmul fast float %8528, %8442
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  br label %8531

; <label>:8531                                    ; preds = %8456, %8452
  %8532 = phi float [ %8530, %8456 ], [ 1.000000e+00, %8452 ]
  %8533 = fmul fast float %8449, 5.000000e-01
  %8534 = fadd fast float %8533, 5.000000e-01
  %8535 = call float @dx.op.unary.f32(i32 22, float %8534)  ; Frc(value)
  %8536 = call float @dx.op.unary.f32(i32 27, float %8535)  ; Round_ni(value)
  %8537 = call float @dx.op.unary.f32(i32 22, float %8535)  ; Frc(value)
  %8538 = fmul fast float %8537, 2.000000e+00
  %8539 = fadd fast float %8538, -1.000000e+00
  %8540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8401, float %8402, float %8536, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8541 = extractvalue %dx.types.ResRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.ResRet.f32 %8540, 1
  %8543 = extractvalue %dx.types.ResRet.f32 %8540, 2
  %8544 = extractvalue %dx.types.ResRet.f32 %8540, 3
  %8545 = fadd fast float %8541, -5.000000e-01
  %8546 = fadd fast float %8543, -5.000000e-01
  %8547 = fmul fast float %8545, 0xBFD5555560000000
  %8548 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8546, float %8547)  ; FMad(a,b,c)
  %8549 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8542, float 0.000000e+00)  ; FMad(a,b,c)
  %8550 = fadd fast float %8549, %8544
  %8551 = fmul fast float %8545, -7.500000e-01
  %8552 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8546, float %8551)  ; FMad(a,b,c)
  %8553 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8542, float 0.000000e+00)  ; FMad(a,b,c)
  %8554 = fadd fast float %8553, %8544
  %8555 = call float @dx.op.binary.f32(i32 35, float %8548, float -1.000000e+00)  ; FMax(a,b)
  %8556 = call float @dx.op.binary.f32(i32 35, float %8550, float -1.000000e+00)  ; FMax(a,b)
  %8557 = call float @dx.op.binary.f32(i32 35, float %8552, float -1.000000e+00)  ; FMax(a,b)
  %8558 = call float @dx.op.binary.f32(i32 35, float %8554, float -1.000000e+00)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 36, float %8555, float 1.000000e+00)  ; FMin(a,b)
  %8560 = call float @dx.op.binary.f32(i32 36, float %8556, float 1.000000e+00)  ; FMin(a,b)
  %8561 = call float @dx.op.binary.f32(i32 36, float %8557, float 1.000000e+00)  ; FMin(a,b)
  %8562 = call float @dx.op.binary.f32(i32 36, float %8558, float 1.000000e+00)  ; FMin(a,b)
  %8563 = fcmp fast olt float %8559, 0x3FEFFF8020000000
  br i1 %8563, label %8564, label %8679, !dx.controlflow.hints !178

; <label>:8564                                    ; preds = %8531
  %8565 = extractvalue %dx.types.CBufRet.f32 %8447, 3
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8569 = extractvalue %dx.types.CBufRet.f32 %8566, 2
  %8570 = extractvalue %dx.types.CBufRet.f32 %8566, 3
  %8571 = fsub fast float %8567, %8559
  %8572 = fsub fast float %8568, %8560
  %8573 = fsub fast float %8569, %8561
  %8574 = fsub fast float %8570, %8562
  %8575 = fmul fast float %8571, %8565
  %8576 = fmul fast float %8572, %8565
  %8577 = fmul fast float %8573, %8565
  %8578 = fmul fast float %8574, %8565
  %8579 = fadd fast float %8575, %8559
  %8580 = fadd fast float %8576, %8560
  %8581 = fsub fast float -0.000000e+00, %8580
  %8582 = fadd fast float %8577, %8561
  %8583 = fadd fast float %8578, %8562
  %8584 = fmul fast float %8579, %8579
  %8585 = fsub fast float %8580, %8584
  %8586 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8585)  ; FMax(a,b)
  %8587 = fdiv fast float 1.000000e+00, %8586
  %8588 = fmul fast float %8580, %8579
  %8589 = fsub fast float %8582, %8588
  %8590 = fsub fast float %8539, %8579
  %8591 = fmul fast float %8539, %8539
  %8592 = fsub fast float %8591, %8580
  %8593 = fmul fast float %8590, %8587
  %8594 = fmul fast float %8593, %8589
  %8595 = fsub fast float %8592, %8594
  %8596 = fmul fast float %8580, %8580
  %8597 = fsub fast float %8583, %8596
  %8598 = fmul fast float %8589, %8589
  %8599 = fmul fast float %8598, %8587
  %8600 = fsub fast float %8597, %8599
  %8601 = fdiv fast float %8595, %8600
  %8602 = fmul fast float %8589, %8601
  %8603 = fsub fast float %8590, %8602
  %8604 = fmul fast float %8603, %8587
  %8605 = fmul fast float %8604, %8579
  %8606 = fsub fast float 1.000000e+00, %8605
  %8607 = fmul fast float %8580, %8601
  %8608 = fsub fast float %8606, %8607
  %8609 = fmul fast float %8604, %8604
  %8610 = fmul fast float %8601, 4.000000e+00
  %8611 = fmul fast float %8610, %8608
  %8612 = fsub fast float %8609, %8611
  %8613 = call float @dx.op.unary.f32(i32 24, float %8612)  ; Sqrt(value)
  %8614 = fcmp fast oge float %8604, 0.000000e+00
  %8615 = fsub fast float -0.000000e+00, %8613
  %8616 = select i1 %8614, float %8615, float %8613
  %8617 = fsub fast float %8616, %8604
  %8618 = fdiv fast float %8617, %8601
  %8619 = fdiv fast float %8608, %8617
  %8620 = fmul fast float %8618, 5.000000e-01
  %8621 = fmul fast float %8619, 2.000000e+00
  %8622 = select i1 %8614, float %8620, float %8621
  %8623 = select i1 %8614, float %8621, float %8620
  %8624 = call float @dx.op.binary.f32(i32 35, float %8622, float %8623)  ; FMax(a,b)
  %8625 = call float @dx.op.binary.f32(i32 36, float %8622, float %8623)  ; FMin(a,b)
  %8626 = fcmp fast ogt float %8539, %8625
  br i1 %8626, label %8627, label %8637

; <label>:8627                                    ; preds = %8564
  %8628 = fsub fast float %8539, %8625
  %8629 = fsub fast float %8624, %8625
  %8630 = fmul fast float %8628, %8629
  %8631 = fmul fast float %8624, %8539
  %8632 = fadd fast float %8624, %8539
  %8633 = fmul fast float %8632, %8579
  %8634 = fadd fast float %8631, %8580
  %8635 = fsub fast float %8634, %8633
  %8636 = fdiv fast float %8635, %8630
  br label %8637

; <label>:8637                                    ; preds = %8627, %8564
  %8638 = phi float [ %8636, %8627 ], [ 0.000000e+00, %8564 ]
  %8639 = fcmp fast ogt float %8539, %8624
  %8640 = fsub fast float %8539, %8624
  br i1 %8639, label %8641, label %8651

; <label>:8641                                    ; preds = %8637
  %8642 = fsub fast float %8624, %8625
  %8643 = fmul fast float %8642, %8640
  %8644 = fmul fast float %8625, %8539
  %8645 = fadd fast float %8625, %8539
  %8646 = fmul fast float %8645, %8579
  %8647 = fsub fast float %8581, %8644
  %8648 = fadd fast float %8647, %8646
  %8649 = fdiv fast float %8648, %8643
  %8650 = fadd fast float %8649, %8638
  br label %8651

; <label>:8651                                    ; preds = %8641, %8637
  %8652 = phi float [ %8650, %8641 ], [ %8638, %8637 ]
  %8653 = fsub fast float %8539, %8625
  %8654 = fmul fast float %8653, %8640
  %8655 = fmul fast float %8625, %8624
  %8656 = fadd fast float %8625, %8624
  %8657 = fmul fast float %8656, %8579
  %8658 = fadd fast float %8655, %8580
  %8659 = fsub fast float %8658, %8657
  %8660 = fdiv fast float %8659, %8654
  %8661 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8662 = fcmp fast oeq float %7330, 0.000000e+00
  %8663 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8664 = fcmp fast oeq float %8663, 0.000000e+00
  %8665 = or i1 %8662, %8664
  %8666 = fmul fast float %8663, 2.000000e+00
  %8667 = fadd fast float %8448, %8449
  %8668 = fdiv fast float %8667, %8666
  %8669 = call float @dx.op.unary.f32(i32 7, float %8668)  ; Saturate(value)
  %8670 = fmul fast float %8669, 2.000000e+00
  %8671 = fsub fast float 3.000000e+00, %8670
  %8672 = fmul fast float %8669, %8669
  %8673 = fmul fast float %8672, %8671
  %8674 = select i1 %8665, float 1.000000e+00, float %8673
  %8675 = fmul fast float %8660, %7330
  %8676 = fadd fast float %8661, %8675
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = fmul fast float %8674, %8677
  br label %8679

; <label>:8679                                    ; preds = %8651, %8531
  %8680 = phi float [ %8678, %8651 ], [ 0.000000e+00, %8531 ]
  %8681 = fsub fast float 1.000000e+00, %8680
  %8682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8401, float %8402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8683 = extractvalue %dx.types.ResRet.f32 %8682, 0
  %8684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.i32 %8684, 2
  %8686 = icmp eq i32 %8685, 0
  br i1 %8686, label %8692, label %8687

; <label>:8687                                    ; preds = %8679
  %8688 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8689 = fadd fast float %8683, -1.000000e+00
  %8690 = fmul fast float %8688, %8689
  %8691 = fadd fast float %8690, 1.000000e+00
  br label %8692

; <label>:8692                                    ; preds = %8687, %8679
  %8693 = phi float [ %8691, %8687 ], [ %8681, %8679 ]
  br i1 %8455, label %8694, label %8712

; <label>:8694                                    ; preds = %8692
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8697 = fsub fast float %8532, %8696
  %8698 = call float @dx.op.unary.f32(i32 7, float %8697)  ; Saturate(value)
  %8699 = fsub fast float %8532, %8454
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = fsub fast float %8698, %8700
  %8702 = fsub fast float %8534, %8700
  %8703 = fdiv fast float %8702, %8701
  %8704 = call float @dx.op.unary.f32(i32 7, float %8703)  ; Saturate(value)
  %8705 = fmul fast float %8704, 2.000000e+00
  %8706 = fsub fast float 3.000000e+00, %8705
  %8707 = fsub fast float %8683, %8693
  %8708 = fmul fast float %8704, %8704
  %8709 = fmul fast float %8708, %8707
  %8710 = fmul fast float %8709, %8706
  %8711 = fadd fast float %8710, %8693
  br label %8712

; <label>:8712                                    ; preds = %8694, %8692
  %8713 = phi float [ %8711, %8694 ], [ %8693, %8692 ]
  %8714 = call float @dx.op.binary.f32(i32 35, float %8683, float %8713)  ; FMax(a,b)
  %8715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.i32 %8715, 2
  %8717 = and i32 %8716, 1
  %8718 = icmp eq i32 %8717, 0
  %8719 = fcmp fast une float %8714, 1.000000e+00
  %8720 = and i1 %8719, %8718
  br i1 %8720, label %8721, label %8740

; <label>:8721                                    ; preds = %8712
  %8722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8401, float %8402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8723 = extractvalue %dx.types.ResRet.f32 %8722, 0
  %8724 = extractvalue %dx.types.ResRet.f32 %8722, 1
  %8725 = extractvalue %dx.types.ResRet.f32 %8722, 2
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8728 = fmul fast float %8727, %8723
  %8729 = fmul fast float %8727, %8724
  %8730 = fmul fast float %8727, %8725
  %8731 = fcmp fast ogt float %8683, 0x3FEFFF2E40000000
  %8732 = fsub fast float 1.000000e+00, %8714
  %8733 = fsub fast float 1.000000e+00, %8683
  %8734 = fdiv fast float %8732, %8733
  %8735 = call float @dx.op.unary.f32(i32 7, float %8734)  ; Saturate(value)
  %8736 = select i1 %8731, float 0.000000e+00, float %8735
  %8737 = fmul fast float %8728, %8736
  %8738 = fmul fast float %8729, %8736
  %8739 = fmul fast float %8730, %8736
  br label %8740

; <label>:8740                                    ; preds = %8721, %8712
  %8741 = phi float [ 0.000000e+00, %8712 ], [ %8737, %8721 ]
  %8742 = phi float [ 0.000000e+00, %8712 ], [ %8738, %8721 ]
  %8743 = phi float [ 0.000000e+00, %8712 ], [ %8739, %8721 ]
  %8744 = fmul fast float %8741, %7318
  %8745 = fmul fast float %8742, %7318
  %8746 = fmul fast float %8743, %7318
  %8747 = fmul fast float %8714, %8376
  %8748 = call float @dx.op.dot3.f32(i32 55, float %8714, float %8714, float %8714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8749 = call float @dx.op.dot3.f32(i32 55, float %8744, float %8745, float %8746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8750 = select i1 %269, float %8748, float %8714
  %8751 = select i1 %269, float 1.000000e+00, float %8714
  %8752 = select i1 %269, float %8749, float %8744
  %8753 = select i1 %269, float 0.000000e+00, float %8745
  %8754 = select i1 %269, float 0.000000e+00, float %8746
  %8755 = fmul fast float %8750, %8388
  %8756 = fmul fast float %8750, %8389
  %8757 = fmul fast float %8751, %8390
  %8758 = fadd fast float %8755, %8752
  %8759 = fadd fast float %8756, %8753
  %8760 = fadd fast float %8754, %8757
  %8761 = fmul fast float %8750, %8391
  %8762 = fmul fast float %8750, %8392
  %8763 = fmul fast float %8751, %8393
  br label %8764

; <label>:8764                                    ; preds = %8740, %8397, %8366, %7598
  %8765 = phi float [ %7603, %7598 ], [ %8388, %8366 ], [ %8758, %8740 ], [ %8388, %8397 ]
  %8766 = phi float [ %7604, %7598 ], [ %8389, %8366 ], [ %8759, %8740 ], [ %8389, %8397 ]
  %8767 = phi float [ %7605, %7598 ], [ %8390, %8366 ], [ %8760, %8740 ], [ %8390, %8397 ]
  %8768 = phi float [ %7606, %7598 ], [ %8391, %8366 ], [ %8761, %8740 ], [ %8391, %8397 ]
  %8769 = phi float [ %7607, %7598 ], [ %8392, %8366 ], [ %8762, %8740 ], [ %8392, %8397 ]
  %8770 = phi float [ %7608, %7598 ], [ %8393, %8366 ], [ %8763, %8740 ], [ %8393, %8397 ]
  %8771 = phi float [ %7609, %7598 ], [ %8376, %8366 ], [ %8747, %8740 ], [ %8376, %8397 ]
  %8772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.f32 %8772, 2
  %8774 = extractvalue %dx.types.CBufRet.f32 %8772, 3
  %8775 = fmul fast float %8773, %110
  %8776 = fmul fast float %8774, %111
  %8777 = call float @dx.op.unary.f32(i32 7, float %8775)  ; Saturate(value)
  %8778 = call float @dx.op.unary.f32(i32 7, float %8776)  ; Saturate(value)
  %8779 = select i1 %7340, i32 2, i32 0
  %8780 = or i32 %8779, 1
  %8781 = uitofp i32 %8780 to float
  %8782 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8777, float %8778, float %8781, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8783 = extractvalue %dx.types.ResRet.f32 %8782, 0
  %8784 = extractvalue %dx.types.ResRet.f32 %8782, 1
  %8785 = extractvalue %dx.types.ResRet.f32 %8782, 2
  %8786 = extractvalue %dx.types.ResRet.f32 %8782, 3
  %8787 = add nuw nsw i32 %8779, 2
  %8788 = uitofp i32 %8787 to float
  %8789 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8777, float %8778, float %8788, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8790 = extractvalue %dx.types.ResRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.ResRet.f32 %8789, 1
  %8792 = extractvalue %dx.types.ResRet.f32 %8789, 2
  %8793 = extractvalue %dx.types.ResRet.f32 %8789, 3
  %8794 = call float @dx.op.binary.f32(i32 35, float %8784, float %8785)  ; FMax(a,b)
  %8795 = call float @dx.op.binary.f32(i32 35, float %8783, float %8794)  ; FMax(a,b)
  %8796 = call float @dx.op.binary.f32(i32 35, float %8795, float %8786)  ; FMax(a,b)
  %8797 = call float @dx.op.binary.f32(i32 36, float %8791, float %8792)  ; FMin(a,b)
  %8798 = call float @dx.op.binary.f32(i32 36, float %8790, float %8797)  ; FMin(a,b)
  %8799 = call float @dx.op.binary.f32(i32 36, float %8798, float %8793)  ; FMin(a,b)
  %8800 = fmul fast float %8796, 2.550000e+02
  %8801 = fadd fast float %8800, 0x3F70101020000000
  %8802 = fptoui float %8801 to i32
  %8803 = fmul fast float %8799, 2.550000e+02
  %8804 = fadd fast float %8803, 0x3F70101020000000
  %8805 = fptoui float %8804 to i32
  %8806 = icmp ult i32 %8802, %8805
  br i1 %8806, label %8807, label %8976

; <label>:8807                                    ; preds = %8764
  %8808 = fcmp fast ogt float %100, 9.843750e-01
  %8809 = fadd fast float %7602, -4.000000e+00
  %8810 = select i1 %8808, float -4.000000e+00, float %8809
  %8811 = call float @dx.op.binary.f32(i32 35, float %8810, float 0.000000e+00)  ; FMax(a,b)
  %8812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8812, 0
  %8814 = fadd fast float %8813, %8811
  %8815 = extractvalue %dx.types.CBufRet.f32 %8812, 2
  %8816 = fmul fast float %8814, %8815
  %8817 = call float @dx.op.unary.f32(i32 23, float %8816)  ; Log(value)
  %8818 = extractvalue %dx.types.CBufRet.f32 %8812, 3
  %8819 = fmul fast float %8818, %8817
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 2
  %8822 = fmul fast float %8819, %8821
  %8823 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8824 = uitofp i32 %8802 to float
  %8825 = uitofp i32 %8805 to float
  %8826 = fadd fast float %8824, 5.000000e-01
  %8827 = fadd fast float %8825, 5.000000e-01
  %8828 = fmul fast float %8821, %8826
  %8829 = fmul fast float %8821, %8827
  %8830 = fadd fast float %8828, 0x3F0FFB4800000000
  %8831 = fadd fast float %8829, 0xBF0FFB4800000000
  %8832 = call float @dx.op.binary.f32(i32 35, float %8823, float %8830)  ; FMax(a,b)
  %8833 = call float @dx.op.binary.f32(i32 36, float %8832, float %8831)  ; FMin(a,b)
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 1
  %8836 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8837 = extractvalue %dx.types.CBufRet.f32 %8834, 0
  %8838 = select i1 %7340, float %8837, float 0.000000e+00
  %8839 = fmul fast float %8835, %8833
  %8840 = fadd fast float %8838, %8839
  %8841 = fadd fast float %8838, %8836
  %8842 = fsub fast float %8835, %8836
  %8843 = fadd fast float %8842, %8838
  %8844 = call float @dx.op.binary.f32(i32 35, float %8840, float %8841)  ; FMax(a,b)
  %8845 = call float @dx.op.binary.f32(i32 36, float %8844, float %8843)  ; FMin(a,b)
  %8846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8777, float %8778, float %8845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8847 = extractvalue %dx.types.ResRet.f32 %8846, 0
  %8848 = extractvalue %dx.types.ResRet.f32 %8846, 1
  %8849 = extractvalue %dx.types.ResRet.f32 %8846, 2
  %8850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.i32 %8850, 0
  %8852 = extractvalue %dx.types.CBufRet.i32 %8850, 1
  %8853 = uitofp i32 %8851 to float
  %8854 = uitofp i32 %8852 to float
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 0
  %8857 = extractvalue %dx.types.CBufRet.f32 %8855, 1
  %8858 = fmul fast float %8853, %8777
  %8859 = fmul fast float %8854, %8778
  %8860 = fadd fast float %8858, -5.000000e-01
  %8861 = fadd fast float %8859, -5.000000e-01
  %8862 = call float @dx.op.unary.f32(i32 22, float %8860)  ; Frc(value)
  %8863 = call float @dx.op.unary.f32(i32 22, float %8861)  ; Frc(value)
  %8864 = fmul fast float %8862, %8862
  %8865 = fmul fast float %8864, %8862
  %8866 = fsub fast float 3.000000e+00, %8862
  %8867 = fmul fast float %8864, %8866
  %8868 = fmul fast float %8862, 3.000000e+00
  %8869 = fmul fast float %8865, 3.000000e+00
  %8870 = fmul fast float %8864, 6.000000e+00
  %8871 = fsub fast float %8869, %8870
  %8872 = fadd fast float %8871, 4.000000e+00
  %8873 = fmul fast float %8872, 0x3FC5555560000000
  %8874 = fmul fast float %8865, -3.000000e+00
  %8875 = fadd fast float %8864, %8862
  %8876 = fmul fast float %8875, 3.000000e+00
  %8877 = fadd fast float %8874, 1.000000e+00
  %8878 = fadd fast float %8877, %8876
  %8879 = fmul fast float %8865, 0x3FC5555560000000
  %8880 = fmul fast float %8863, %8863
  %8881 = fmul fast float %8880, %8863
  %8882 = fsub fast float 3.000000e+00, %8863
  %8883 = fmul fast float %8880, %8882
  %8884 = fmul fast float %8863, 3.000000e+00
  %8885 = fmul fast float %8881, 3.000000e+00
  %8886 = fmul fast float %8880, 6.000000e+00
  %8887 = fsub fast float %8885, %8886
  %8888 = fadd fast float %8887, 4.000000e+00
  %8889 = fmul fast float %8888, 0x3FC5555560000000
  %8890 = fmul fast float %8881, -3.000000e+00
  %8891 = fadd fast float %8880, %8863
  %8892 = fmul fast float %8891, 3.000000e+00
  %8893 = fadd fast float %8890, 1.000000e+00
  %8894 = fadd fast float %8893, %8892
  %8895 = fmul fast float %8881, 0x3FC5555560000000
  %8896 = fadd fast float %8862, 1.000000e+00
  %8897 = fsub fast float 1.000000e+00, %8868
  %8898 = fadd fast float %8897, %8867
  %8899 = fadd fast float %8898, %8872
  %8900 = fmul fast float %8899, 0x3FC5555560000000
  %8901 = fdiv fast float %8873, %8900
  %8902 = fsub fast float %8896, %8901
  %8903 = fsub fast float 1.000000e+00, %8862
  %8904 = fadd fast float %8878, %8865
  %8905 = fmul fast float %8904, 0x3FC5555560000000
  %8906 = fdiv fast float %8879, %8905
  %8907 = fadd fast float %8903, %8906
  %8908 = fadd fast float %8863, 1.000000e+00
  %8909 = fsub fast float 1.000000e+00, %8884
  %8910 = fadd fast float %8909, %8883
  %8911 = fadd fast float %8910, %8888
  %8912 = fmul fast float %8911, 0x3FC5555560000000
  %8913 = fdiv fast float %8889, %8912
  %8914 = fsub fast float %8908, %8913
  %8915 = fsub fast float 1.000000e+00, %8863
  %8916 = fadd fast float %8894, %8881
  %8917 = fmul fast float %8916, 0x3FC5555560000000
  %8918 = fdiv fast float %8895, %8917
  %8919 = fadd fast float %8918, %8915
  %8920 = fmul fast float %8902, %8856
  %8921 = fsub fast float %8777, %8920
  %8922 = fmul fast float %8907, %8856
  %8923 = fadd fast float %8922, %8777
  %8924 = fmul fast float %8919, %8857
  %8925 = fadd fast float %8924, %8778
  %8926 = fmul fast float %8914, %8857
  %8927 = fsub fast float %8778, %8926
  %8928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8921, float %8927, float %8845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8929 = extractvalue %dx.types.ResRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.ResRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.ResRet.f32 %8928, 2
  %8932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8923, float %8927, float %8845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8933 = extractvalue %dx.types.ResRet.f32 %8932, 0
  %8934 = extractvalue %dx.types.ResRet.f32 %8932, 1
  %8935 = extractvalue %dx.types.ResRet.f32 %8932, 2
  %8936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8921, float %8925, float %8845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8937 = extractvalue %dx.types.ResRet.f32 %8936, 0
  %8938 = extractvalue %dx.types.ResRet.f32 %8936, 1
  %8939 = extractvalue %dx.types.ResRet.f32 %8936, 2
  %8940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8923, float %8925, float %8845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8941 = extractvalue %dx.types.ResRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.ResRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.ResRet.f32 %8940, 2
  %8944 = fsub fast float %8937, %8929
  %8945 = fsub fast float %8938, %8930
  %8946 = fsub fast float %8939, %8931
  %8947 = fmul fast float %8944, %8917
  %8948 = fmul fast float %8945, %8917
  %8949 = fmul fast float %8946, %8917
  %8950 = fadd fast float %8947, %8929
  %8951 = fadd fast float %8948, %8930
  %8952 = fadd fast float %8949, %8931
  %8953 = fsub fast float %8941, %8933
  %8954 = fsub fast float %8942, %8934
  %8955 = fsub fast float %8943, %8935
  %8956 = fmul fast float %8953, %8917
  %8957 = fmul fast float %8954, %8917
  %8958 = fmul fast float %8955, %8917
  %8959 = fsub fast float %8933, %8950
  %8960 = fadd fast float %8959, %8956
  %8961 = fsub fast float %8934, %8951
  %8962 = fadd fast float %8961, %8957
  %8963 = fsub fast float %8935, %8952
  %8964 = fadd fast float %8963, %8958
  %8965 = fmul fast float %8960, %8905
  %8966 = fmul fast float %8962, %8905
  %8967 = fmul fast float %8964, %8905
  %8968 = fadd fast float %8965, %8950
  %8969 = fadd fast float %8966, %8951
  %8970 = fadd fast float %8967, %8952
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 1
  %8973 = fmul fast float %8968, %8972
  %8974 = fmul fast float %8969, %8972
  %8975 = fmul fast float %8970, %8972
  br label %8976

; <label>:8976                                    ; preds = %8807, %8764
  %8977 = phi float [ %8847, %8807 ], [ 1.000000e+00, %8764 ]
  %8978 = phi float [ %8848, %8807 ], [ 1.000000e+00, %8764 ]
  %8979 = phi float [ %8849, %8807 ], [ 1.000000e+00, %8764 ]
  %8980 = phi float [ %8973, %8807 ], [ 0.000000e+00, %8764 ]
  %8981 = phi float [ %8974, %8807 ], [ 0.000000e+00, %8764 ]
  %8982 = phi float [ %8975, %8807 ], [ 0.000000e+00, %8764 ]
  %8983 = fmul fast float %8980, %7318
  %8984 = fmul fast float %8981, %7318
  %8985 = fmul fast float %8982, %7318
  %8986 = fmul fast float %8977, %8771
  %8987 = call float @dx.op.dot3.f32(i32 55, float %8977, float %8978, float %8979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8988 = call float @dx.op.dot3.f32(i32 55, float %8983, float %8984, float %8985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8989 = select i1 %269, float %8987, float %8977
  %8990 = select i1 %269, float %8987, float %8978
  %8991 = select i1 %269, float 1.000000e+00, float %8979
  %8992 = select i1 %269, float %8988, float %8983
  %8993 = select i1 %269, float 0.000000e+00, float %8984
  %8994 = select i1 %269, float 0.000000e+00, float %8985
  %8995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.i32 %8995, 3
  %8997 = and i32 %8996, 3
  %8998 = icmp ne i32 %8997, 0
  %8999 = and i32 %8996, 4
  %9000 = icmp ne i32 %8999, 0
  %9001 = and i1 %8998, %9000
  %9002 = and i1 %269, %9001
  br i1 %9002, label %9003, label %9009

; <label>:9003                                    ; preds = %8976
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 1
  %9006 = fadd fast float %8986, -1.000000e+00
  %9007 = fmul fast float %9005, %9006
  %9008 = fadd fast float %9007, 1.000000e+00
  br label %9009

; <label>:9009                                    ; preds = %9003, %8976
  %9010 = phi float [ %9008, %9003 ], [ %8986, %8976 ]
  %9011 = fadd fast float %8768, %8765
  %9012 = fmul fast float %8989, %9011
  %9013 = fadd fast float %9012, %8992
  %9014 = fadd fast float %8769, %8766
  %9015 = fmul fast float %8990, %9014
  %9016 = fadd fast float %9015, %8993
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 0
  br i1 %269, label %9019, label %9034

; <label>:9019                                    ; preds = %9009
  %9020 = fadd fast float %9013, %9016
  %9021 = fmul fast float %9018, %9020
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 3
  %9024 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %9025 = fsub fast float %7327, %7321
  %9026 = fadd fast float %9025, %7328
  %9027 = fsub fast float %9026, %9024
  %9028 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %9029 = fmul fast float %9027, %9028
  %9030 = call float @dx.op.unary.f32(i32 7, float %9029)  ; Saturate(value)
  %9031 = fsub fast float %9030, %9023
  %9032 = fmul fast float %9031, %9010
  %9033 = fadd fast float %9032, %9023
  br label %9060

; <label>:9034                                    ; preds = %9009
  %9035 = fadd fast float %8770, %8767
  %9036 = fmul fast float %8991, %9035
  %9037 = fadd fast float %9036, %8994
  %9038 = fmul fast float %9018, %9013
  %9039 = fmul fast float %9018, %9016
  %9040 = fmul fast float %9018, %9037
  %9041 = call float @dx.op.binary.f32(i32 35, float %9039, float %9040)  ; FMax(a,b)
  %9042 = call float @dx.op.binary.f32(i32 35, float %9038, float %9041)  ; FMax(a,b)
  %9043 = call float @dx.op.binary.f32(i32 35, float %7318, float %7318)  ; FMax(a,b)
  %9044 = call float @dx.op.binary.f32(i32 35, float %7318, float %9043)  ; FMax(a,b)
  %9045 = call float @dx.op.binary.f32(i32 35, float %9042, float %9044)  ; FMax(a,b)
  %9046 = fcmp fast ugt float %9045, 0x3F10000000000000
  br i1 %9046, label %9048, label %9047

; <label>:9047                                    ; preds = %9034
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9048

; <label>:9048                                    ; preds = %9047, %9034
  %9049 = add i32 %56, 356
  %9050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9049, i32 undef)  ; BufferLoad(srv,index,wot)
  %9051 = extractvalue %dx.types.ResRet.i32 %9050, 0
  %9052 = and i32 %9051, 32
  %9053 = icmp eq i32 %9052, 0
  br i1 %9053, label %9060, label %9054

; <label>:9054                                    ; preds = %9048
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 0
  %9057 = fmul fast float %9056, 0x3FE99999A0000000
  %9058 = fadd fast float %9056, %9038
  %9059 = fadd fast float %9057, %9040
  br label %9060

; <label>:9060                                    ; preds = %9054, %9048, %9019
  %9061 = phi float [ 1.000000e+00, %9019 ], [ %7318, %9054 ], [ %7318, %9048 ]
  %9062 = phi float [ %9021, %9019 ], [ %9058, %9054 ], [ %9038, %9048 ]
  %9063 = phi float [ %9033, %9019 ], [ %9039, %9054 ], [ %9039, %9048 ]
  %9064 = phi float [ 1.000000e+00, %9019 ], [ %9059, %9054 ], [ %9040, %9048 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9065 = call float @dx.op.binary.f32(i32 36, float %9062, float 3.225500e+04)  ; FMin(a,b)
  %9066 = call float @dx.op.binary.f32(i32 36, float %9063, float 3.225500e+04)  ; FMin(a,b)
  %9067 = call float @dx.op.binary.f32(i32 36, float %9064, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9065)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9066)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9067)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9068 = call float @dx.op.binary.f32(i32 36, float %7318, float 3.225500e+04)  ; FMin(a,b)
  %9069 = call float @dx.op.binary.f32(i32 36, float %9061, float 3.225500e+04)  ; FMin(a,b)
  %9070 = call float @dx.op.binary.f32(i32 36, float %9061, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9068)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9069)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9070)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[58 x i32] [i32 56, i32 8, i32 103, i32 103, i32 7, i32 7, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 7, i32 119, i32 7, i32 7, i32 0, i32 119, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !99}
!71 = !{!72, !95, null}
!72 = !{!73, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"COLOR", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 1, i8 0, !75}
!77 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 2, i8 0, !78}
!78 = !{i32 3, i32 3}
!79 = !{i32 3, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 3, i8 0, !80}
!80 = !{i32 3, i32 7}
!81 = !{i32 4, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 4, i8 0, !75}
!82 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 5, i8 0, !80}
!83 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 6, i8 0, !75}
!84 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !74, i8 2, i32 1, i8 1, i32 3, i8 3, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 7, i8 0, !80}
!87 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 8, i8 0, !75}
!88 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 9, i8 0, !78}
!89 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 10, i8 0, !75}
!90 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 11, i8 0, !75}
!91 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !74, i8 1, i32 1, i8 1, i32 12, i8 0, !85}
!92 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !74, i8 1, i32 1, i8 2, i32 12, i8 1, !78}
!93 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !74, i8 1, i32 1, i8 4, i32 13, i8 0, !85}
!94 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96, !97}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!97 = !{i32 1, !"SV_Target", i8 9, i8 16, !98, i8 0, i32 1, i8 4, i32 1, i8 0, !75}
!98 = !{i32 1}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!110, !112, !114, !116}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = !{!131, !131, i64 0}
!131 = !{!"float", !107, i64 0}
!132 = !{!133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!133 = distinct !{!133, !134, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!134 = distinct !{!134, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!135 = distinct !{!135, !136, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!136 = distinct !{!136, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!137 = distinct !{!137, !136, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!147 = distinct !{!147, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"\01?sort@@YAXAIAM00@Z: %c"}
!150 = distinct !{!150, !"\01?sort@@YAXAIAM00@Z"}
!151 = !{!152, !153, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!152 = distinct !{!152, !150, !"\01?sort@@YAXAIAM00@Z: %a"}
!153 = distinct !{!153, !150, !"\01?sort@@YAXAIAM00@Z: %b"}
!154 = !{!153}
!155 = !{!152, !149, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!156 = !{!152}
!157 = !{!153, !149, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!158 = !{!159}
!159 = distinct !{!159, !160, !"\01?sort@@YAXAIAM00@Z: %c"}
!160 = distinct !{!160, !"\01?sort@@YAXAIAM00@Z"}
!161 = !{!162, !163, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!162 = distinct !{!162, !160, !"\01?sort@@YAXAIAM00@Z: %a"}
!163 = distinct !{!163, !160, !"\01?sort@@YAXAIAM00@Z: %b"}
!164 = !{!163}
!165 = !{!162, !159, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!166 = !{!162}
!167 = !{!163, !159, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 2}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}

