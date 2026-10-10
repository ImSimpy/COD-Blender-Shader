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
; shader hash: db29c602bbb0be25c467b46e95c589b0
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
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %659 = add i32 %56, 540
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
  br i1 %715, label %1334, label %716

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
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 1024
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1271, label %1241

; <label>:1241                                    ; preds = %1233
  %1242 = add i32 %56, 152
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1244, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1244, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = fmul fast float %1247, %1247
  %1257 = fmul fast float %1251, %1251
  %1258 = fmul fast float %1255, %1255
  %1259 = add i32 %56, 508
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1261, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1263, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = fmul fast float %1256, %1265
  %1269 = fmul fast float %1257, %1266
  %1270 = fmul fast float %1258, %1267
  br label %1271

; <label>:1271                                    ; preds = %1241, %1233
  %1272 = phi float [ %1268, %1241 ], [ 0.000000e+00, %1233 ]
  %1273 = phi float [ %1269, %1241 ], [ 0.000000e+00, %1233 ]
  %1274 = phi float [ %1270, %1241 ], [ 0.000000e+00, %1233 ]
  %1275 = fcmp fast ogt float %1272, 0.000000e+00
  %1276 = fcmp fast ogt float %1273, 0.000000e+00
  %1277 = fcmp fast ogt float %1274, 0.000000e+00
  %1278 = call float @dx.op.unary.f32(i32 23, float %1272)  ; Log(value)
  %1279 = call float @dx.op.unary.f32(i32 23, float %1273)  ; Log(value)
  %1280 = call float @dx.op.unary.f32(i32 23, float %1274)  ; Log(value)
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 7
  %1284 = and i32 %1283, 32752
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = fmul fast float %1278, 0xBFE62E4300000000
  %1287 = fmul fast float %1286, %1285
  %1288 = fmul fast float %1279, 0xBFE62E4300000000
  %1289 = fmul fast float %1288, %1285
  %1290 = fmul fast float %1280, 0xBFE62E4300000000
  %1291 = fmul fast float %1290, %1285
  %1292 = select i1 %1275, float %1287, float 1.270000e+02
  %1293 = select i1 %1276, float %1289, float 1.270000e+02
  %1294 = select i1 %1277, float %1291, float 1.270000e+02
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 10240
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1319, label %1299

; <label>:1299                                    ; preds = %1271
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 2048
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1319, label %1304

; <label>:1304                                    ; preds = %1299
  %1305 = add i32 %56, 524
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %1307, 0
  %1309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1309, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 3
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = shl i32 %1313, 4
  %1315 = and i32 %1314, 32752
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = fmul fast float %1316, %1311
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1319

; <label>:1319                                    ; preds = %1304, %1299, %1271
  %1320 = phi float [ %1318, %1304 ], [ 0x3F70101020000000, %1299 ], [ 0x3F70101020000000, %1271 ]
  %1321 = add i32 %56, 96
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = lshr i32 %1323, 8
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = fmul fast float %1328, %1329
  %1331 = fadd fast float %1330, %1325
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  br label %1334

; <label>:1334                                    ; preds = %1319, %701
  %1335 = phi float [ 0.000000e+00, %701 ], [ %1187, %1319 ]
  %1336 = phi float [ 0.000000e+00, %701 ], [ %1188, %1319 ]
  %1337 = phi float [ 0.000000e+00, %701 ], [ %1106, %1319 ]
  %1338 = phi float [ 0.000000e+00, %701 ], [ %1107, %1319 ]
  %1339 = phi float [ 0.000000e+00, %701 ], [ %1108, %1319 ]
  %1340 = phi float [ 0.000000e+00, %701 ], [ %1234, %1319 ]
  %1341 = phi float [ 0.000000e+00, %701 ], [ %1235, %1319 ]
  %1342 = phi float [ 0.000000e+00, %701 ], [ %1236, %1319 ]
  %1343 = phi float [ 0.000000e+00, %701 ], [ %1292, %1319 ]
  %1344 = phi float [ 0.000000e+00, %701 ], [ %1293, %1319 ]
  %1345 = phi float [ 0.000000e+00, %701 ], [ %1294, %1319 ]
  %1346 = phi float [ 0.000000e+00, %701 ], [ %1092, %1319 ]
  %1347 = phi float [ 0.000000e+00, %701 ], [ %888, %1319 ]
  %1348 = phi float [ 0.000000e+00, %701 ], [ %1186, %1319 ]
  %1349 = phi float [ 0.000000e+00, %701 ], [ %1189, %1319 ]
  %1350 = phi float [ 0.000000e+00, %701 ], [ %1320, %1319 ]
  %1351 = phi float [ 0.000000e+00, %701 ], [ %1333, %1319 ]
  br i1 %649, label %2223, label %1352

; <label>:1352                                    ; preds = %1334
  %1353 = icmp ult i32 %707, 2
  %1354 = add i32 %56, 40
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %56, 44
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = or i32 %1359, %1356
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %2223, label %1362

; <label>:1362                                    ; preds = %1352
  %1363 = and i32 %1356, 262144
  %1364 = icmp ne i32 %1363, 0
  %1365 = select i1 %1364, float %64, float 1.000000e+00
  %1366 = select i1 %1364, float %65, float 0.000000e+00
  %1367 = select i1 %1364, float %66, float 0.000000e+00
  %1368 = select i1 %1364, float %67, float 1.000000e+00
  %1369 = select i1 %1364, float %68, float %92
  %1370 = select i1 %1364, float %69, float %93
  %1371 = add i32 %56, 300
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = lshr i32 %1373, 16
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = fmul fast float %1375, 0x3F50624DE0000000
  %1377 = add i32 %56, 104
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = lshr i32 %1379, 16
  %1381 = and i32 %1380, 255
  %1382 = lshr i32 %1379, 24
  %1383 = add i32 %56, 308
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = lshr i32 %1385, 16
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = add i32 %56, 48
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = lshr i32 %1392, 22
  %1394 = shl nuw nsw i32 %1393, 5
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = shl i32 %1392, 4
  %1397 = and i32 %1396, 32752
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1392, 7
  %1400 = and i32 %1399, 32752
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1404 = fmul fast float %1403, 1.000000e+03
  %1405 = fmul fast float %1404, %428
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = fadd fast float %1406, %416
  %1408 = fmul fast float %1404, %430
  %1409 = call float @dx.op.unary.f32(i32 22, float %1408)  ; Frc(value)
  %1410 = fadd fast float %1409, %417
  %1411 = fmul fast float %1376, %1404
  %1412 = call float @dx.op.unary.f32(i32 22, float %1411)  ; Frc(value)
  %1413 = fmul fast float %1412, 0x401921FB60000000
  %1414 = fadd fast float %1413, %1395
  %1415 = call float @dx.op.unary.f32(i32 13, float %1414)  ; Sin(value)
  %1416 = call float @dx.op.unary.f32(i32 12, float %1414)  ; Cos(value)
  %1417 = fsub fast float -0.000000e+00, %1415
  %1418 = fadd fast float %1369, -5.000000e-01
  %1419 = fadd fast float %1370, -5.000000e-01
  %1420 = fmul fast float %1387, %1418
  %1421 = fmul fast float %1389, %1419
  %1422 = fadd fast float %1420, 5.000000e-01
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fmul fast float %1398, %1422
  %1425 = fmul fast float %1401, %1423
  %1426 = fmul fast float %1416, %1424
  %1427 = call float @dx.op.tertiary.f32(i32 46, float %1417, float %1425, float %1426)  ; FMad(a,b,c)
  %1428 = fmul fast float %1415, %1424
  %1429 = call float @dx.op.tertiary.f32(i32 46, float %1416, float %1425, float %1428)  ; FMad(a,b,c)
  %1430 = fadd fast float %1407, %1427
  %1431 = fadd fast float %1410, %1429
  %1432 = icmp ugt i32 %1381, 1
  %1433 = icmp ugt i32 %1379, 33554431
  %1434 = or i1 %1433, %1432
  br i1 %1434, label %1435, label %1460

; <label>:1435                                    ; preds = %1362
  %1436 = add i32 %56, 244
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = lshr i32 %1438, 16
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fmul fast float %1403, %1440
  %1442 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1443 = mul nuw nsw i32 %1381, %1382
  %1444 = uitofp i32 %1443 to float
  %1445 = fmul fast float %1442, %1444
  %1446 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1447 = fptoui float %1446 to i32
  %1448 = urem i32 %1447, %1381
  %1449 = udiv i32 %1447, %1382
  %1450 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1451 = call float @dx.op.unary.f32(i32 22, float %1431)  ; Frc(value)
  %1452 = uitofp i32 %1448 to float
  %1453 = uitofp i32 %1449 to float
  %1454 = fadd fast float %1450, %1452
  %1455 = fadd fast float %1451, %1453
  %1456 = uitofp i32 %1381 to float
  %1457 = uitofp i32 %1382 to float
  %1458 = fdiv fast float %1454, %1456
  %1459 = fdiv fast float %1455, %1457
  br label %1460

; <label>:1460                                    ; preds = %1435, %1362
  %1461 = phi float [ %1458, %1435 ], [ %1430, %1362 ]
  %1462 = phi float [ %1459, %1435 ], [ %1431, %1362 ]
  %1463 = and i32 %1356, 256
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1511, label %1465

; <label>:1465                                    ; preds = %1460
  %1466 = add i32 %56, 476
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %107, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = add i32 %56, 116
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = shl i32 %1475, 4
  %1477 = and i32 %1476, 32752
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = lshr i32 %1475, 7
  %1480 = and i32 %1479, 32752
  %1481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1480)  ; LegacyF16ToF32(value)
  %1482 = fsub fast float 1.000000e+00, %704
  %1483 = call float @dx.op.binary.f32(i32 35, float %1482, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1484 = bitcast float %704 to i32
  %1485 = sitofp i32 %1484 to float
  %1486 = fadd fast float %1485, 0xC1CFBF8940000000
  %1487 = fmul fast float %1481, %1486
  %1488 = fadd fast float %1487, 0x41CFBF8940000000
  %1489 = fptosi float %1488 to i32
  %1490 = bitcast i32 %1489 to float
  %1491 = bitcast float %1483 to i32
  %1492 = sitofp i32 %1491 to float
  %1493 = fadd fast float %1492, 0xC1CFBF8940000000
  %1494 = fmul fast float %1493, %1481
  %1495 = fadd fast float %1494, 0x41CFBF8940000000
  %1496 = fptosi float %1495 to i32
  %1497 = bitcast i32 %1496 to float
  %1498 = fmul fast float %1490, %1478
  %1499 = fmul fast float %1497, %1478
  %1500 = fsub fast float %1483, %1498
  %1501 = fadd fast float %1499, %1483
  %1502 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1504 = fsub fast float %1472, %1502
  %1505 = fsub fast float %1503, %1502
  %1506 = bitcast float %1505 to i32
  %1507 = sub nsw i32 2129859010, %1506
  %1508 = bitcast i32 %1507 to float
  %1509 = fmul fast float %1508, %1504
  %1510 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  br label %1511

; <label>:1511                                    ; preds = %1465, %1460
  %1512 = phi float [ %1510, %1465 ], [ %704, %1460 ]
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 128
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1533, label %1517

; <label>:1517                                    ; preds = %1511
  %1518 = add i32 %56, 460
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1522, %dx.types.Handle %107, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 524288
  %1528 = icmp ne i32 %1527, 0
  %1529 = fcmp fast ogt float %1524, 0x3FE0101020000000
  %1530 = select i1 %1529, float 1.000000e+00, float 0.000000e+00
  %1531 = select i1 %1528, float %1530, float %1524
  %1532 = fmul fast float %1531, %1512
  br label %1533

; <label>:1533                                    ; preds = %1517, %1511
  %1534 = phi float [ %1532, %1517 ], [ %1512, %1511 ]
  %1535 = fcmp fast ult float %1534, 0x3F70101020000000
  br i1 %1535, label %2223, label %1536

; <label>:1536                                    ; preds = %1533
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 16
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1739, label %1541

; <label>:1541                                    ; preds = %1536
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = add i32 %56, 412
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = add i32 %1546, 0
  %1548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1548, %dx.types.Handle %106, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = extractvalue %dx.types.ResRet.f32 %1549, 3
  %1554 = and i32 %1543, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = lshr i32 %1543, 8
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1553, %1555
  %1560 = fadd fast float %1559, %1558
  %1561 = fmul fast float %1560, 0x3F70101000000000
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 512
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1574, label %1566

; <label>:1566                                    ; preds = %1541
  %1567 = add i32 %56, 496
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %1569, 0
  %1571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1571, %dx.types.Handle %107, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  br label %1574

; <label>:1574                                    ; preds = %1566, %1541
  %1575 = phi float [ %1573, %1566 ], [ 1.000000e+00, %1541 ]
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 33554432
  %1579 = icmp eq i32 %1578, 0
  br i1 %1579, label %1686, label %1580

; <label>:1580                                    ; preds = %1574
  %1581 = add i32 %56, 240
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 65535
  %1585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1584)  ; LegacyF16ToF32(value)
  %1586 = lshr i32 %1583, 16
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = add i32 %56, 244
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 65535
  %1592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1591)  ; LegacyF16ToF32(value)
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = lshr i32 %1594, 24
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = and i32 %1594, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = lshr i32 %1594, 8
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = lshr i32 %1594, 16
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = add i32 %56, 236
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = lshr i32 %1611, 24
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101020000000
  %1615 = and i32 %1611, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1611, 8
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = lshr i32 %1611, 16
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = bitcast float %1550 to i32
  %1627 = ashr i32 %1626, 1
  %1628 = sub nsw i32 1597463174, %1627
  %1629 = bitcast i32 %1628 to float
  %1630 = fmul fast float %1550, 5.000000e-01
  %1631 = fmul fast float %1629, %1629
  %1632 = fmul fast float %1631, %1630
  %1633 = fsub fast float 1.500000e+00, %1632
  %1634 = fmul fast float %1629, %1550
  %1635 = fmul fast float %1634, %1633
  %1636 = bitcast float %1551 to i32
  %1637 = ashr i32 %1636, 1
  %1638 = sub nsw i32 1597463174, %1637
  %1639 = bitcast i32 %1638 to float
  %1640 = fmul fast float %1551, 5.000000e-01
  %1641 = fmul fast float %1639, %1639
  %1642 = fmul fast float %1641, %1640
  %1643 = fsub fast float 1.500000e+00, %1642
  %1644 = fmul fast float %1639, %1551
  %1645 = fmul fast float %1644, %1643
  %1646 = bitcast float %1552 to i32
  %1647 = ashr i32 %1646, 1
  %1648 = sub nsw i32 1597463174, %1647
  %1649 = bitcast i32 %1648 to float
  %1650 = fmul fast float %1552, 5.000000e-01
  %1651 = fmul fast float %1649, %1649
  %1652 = fmul fast float %1651, %1650
  %1653 = fsub fast float 1.500000e+00, %1652
  %1654 = fmul fast float %1649, %1552
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float %1635, %1617
  %1657 = fsub fast float %1645, %1621
  %1658 = fsub fast float %1655, %1625
  %1659 = fmul fast float %1656, %1585
  %1660 = fmul fast float %1657, %1587
  %1661 = fmul fast float %1658, %1592
  %1662 = fadd fast float %1659, %1600
  %1663 = fadd fast float %1660, %1604
  %1664 = fadd fast float %1661, %1608
  %1665 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1668 = fmul fast float %1665, %1665
  %1669 = fmul fast float %1666, %1666
  %1670 = fmul fast float %1667, %1667
  %1671 = fsub fast float %1668, %1550
  %1672 = fsub fast float %1669, %1551
  %1673 = fsub fast float %1670, %1552
  %1674 = fmul fast float %1671, %1575
  %1675 = fmul fast float %1672, %1575
  %1676 = fmul fast float %1673, %1575
  %1677 = fadd fast float %1674, %1550
  %1678 = fadd fast float %1675, %1551
  %1679 = fadd fast float %1676, %1552
  %1680 = fadd fast float %1597, %1561
  %1681 = fsub fast float %1680, %1614
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = fsub fast float %1682, %1561
  %1684 = fmul fast float %1683, %1575
  %1685 = fadd fast float %1684, %1561
  br label %1739

; <label>:1686                                    ; preds = %1574
  %1687 = and i32 %1577, 134217728
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1723, label %1689

; <label>:1689                                    ; preds = %1686
  %1690 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1692 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fadd fast float %1691, -5.000000e-01
  %1695 = fadd fast float %1692, -5.000000e-01
  %1696 = fmul fast float %1693, %1575
  %1697 = fmul fast float %1694, %1575
  %1698 = fmul fast float %1695, %1575
  %1699 = fadd fast float %1696, 5.000000e-01
  %1700 = fadd fast float %1697, 5.000000e-01
  %1701 = fadd fast float %1698, 5.000000e-01
  %1702 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1705 = fmul fast float %1699, 2.000000e+00
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1706, %1702
  %1708 = fadd fast float %1707, %1705
  %1709 = fmul fast float %1708, %1702
  %1710 = fmul fast float %1700, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1703
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1703
  %1715 = fmul fast float %1701, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1704
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1704
  %1720 = fmul fast float %1709, %1709
  %1721 = fmul fast float %1714, %1714
  %1722 = fmul fast float %1719, %1719
  br label %1739

; <label>:1723                                    ; preds = %1686
  %1724 = fmul fast float %404, %404
  %1725 = fmul fast float %405, %405
  %1726 = fmul fast float %406, %406
  %1727 = fadd fast float %1724, -1.000000e+00
  %1728 = fadd fast float %1725, -1.000000e+00
  %1729 = fadd fast float %1726, -1.000000e+00
  %1730 = fmul fast float %1575, %1727
  %1731 = fmul fast float %1575, %1728
  %1732 = fmul fast float %1575, %1729
  %1733 = fadd fast float %1730, 1.000000e+00
  %1734 = fadd fast float %1731, 1.000000e+00
  %1735 = fadd fast float %1732, 1.000000e+00
  %1736 = fmul fast float %1733, %1550
  %1737 = fmul fast float %1734, %1551
  %1738 = fmul fast float %1735, %1552
  br label %1739

; <label>:1739                                    ; preds = %1723, %1689, %1580, %1536
  %1740 = phi float [ %1685, %1580 ], [ %1561, %1689 ], [ %1561, %1723 ], [ 0x3FA23C0BE0000000, %1536 ]
  %1741 = phi float [ %1677, %1580 ], [ %1720, %1689 ], [ %1736, %1723 ], [ 1.000000e+00, %1536 ]
  %1742 = phi float [ %1678, %1580 ], [ %1721, %1689 ], [ %1737, %1723 ], [ 1.000000e+00, %1536 ]
  %1743 = phi float [ %1679, %1580 ], [ %1722, %1689 ], [ %1738, %1723 ], [ 1.000000e+00, %1536 ]
  %1744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.i32 %1744, 1
  %1746 = and i32 %1745, 1
  %1747 = icmp ne i32 %1746, 0
  %1748 = add i32 %56, 356
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 32
  %1752 = icmp ne i32 %1751, 0
  %1753 = and i1 %1747, %1752
  %1754 = select i1 %1753, float 1.000000e+00, float %1741
  %1755 = select i1 %1753, float 0x3FD3333340000000, float %1742
  %1756 = select i1 %1753, float 0x3FD3333340000000, float %1743
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 32
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %1833, label %1761

; <label>:1761                                    ; preds = %1739
  %1762 = add i32 %56, 108
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %56, 428
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %1767, 0
  %1769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1769, %dx.types.Handle %106, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = and i32 %1764, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = lshr i32 %1764, 8
  %1778 = and i32 %1777, 255
  %1779 = uitofp i32 %1778 to float
  %1780 = lshr i32 %1764, 16
  %1781 = and i32 %1780, 255
  %1782 = uitofp i32 %1781 to float
  %1783 = fmul fast float %1782, 0x3F70101000000000
  %1784 = fmul fast float %1771, %1776
  %1785 = fadd fast float %1784, %1779
  %1786 = fmul fast float %1785, 0x3F70101000000000
  %1787 = fadd fast float %1772, -5.000000e-01
  %1788 = fadd fast float %1774, -5.000000e-01
  %1789 = fmul fast float %1787, %1783
  %1790 = fmul fast float %1788, %1783
  %1791 = fadd fast float %1789, 5.000000e-01
  %1792 = fadd fast float %1790, 5.000000e-01
  %1793 = fmul fast float %1791, 2.000000e+00
  %1794 = fadd fast float %1793, -1.000000e+00
  %1795 = fmul fast float %1792, 2.000000e+00
  %1796 = fadd fast float %1795, -1.000000e+00
  %1797 = fadd fast float %1794, %1796
  %1798 = fmul fast float %1797, 5.000000e-01
  %1799 = fsub fast float %1794, %1796
  %1800 = fmul fast float %1799, 5.000000e-01
  %1801 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1802 = fsub fast float 1.000000e+00, %1801
  %1803 = call float @dx.op.unary.f32(i32 6, float %1800)  ; FAbs(value)
  %1804 = fsub fast float %1802, %1803
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1798, float %1800, float %1804, float %1798, float %1800, float %1804)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = call float @dx.op.unary.f32(i32 25, float %1805)  ; Rsqrt(value)
  %1807 = fmul fast float %1798, %1806
  %1808 = fmul fast float %1800, %1806
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 67108864
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1829, label %1813

; <label>:1813                                    ; preds = %1761
  %1814 = add i32 %56, 296
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 65535
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 65535
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = lshr i32 %1816, 16
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = fsub fast float %1786, %1824
  %1826 = fmul fast float %1825, %1818
  %1827 = fadd fast float %1826, %1822
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  br label %1829

; <label>:1829                                    ; preds = %1813, %1761
  %1830 = phi float [ %1828, %1813 ], [ %1786, %1761 ]
  %1831 = call float @dx.op.dot2.f32(i32 54, float %1807, float %1808, float %1365, float %1366)  ; Dot2(ax,ay,bx,by)
  %1832 = call float @dx.op.dot2.f32(i32 54, float %1807, float %1808, float %1367, float %1368)  ; Dot2(ax,ay,bx,by)
  br label %1833

; <label>:1833                                    ; preds = %1829, %1739
  %1834 = phi float [ %1830, %1829 ], [ 0x3FD6666660000000, %1739 ]
  %1835 = phi float [ %1831, %1829 ], [ 0.000000e+00, %1739 ]
  %1836 = phi float [ %1832, %1829 ], [ 0.000000e+00, %1739 ]
  %1837 = phi float [ %1773, %1829 ], [ 1.000000e+00, %1739 ]
  %1838 = add i32 %56, 176
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = lshr i32 %1840, 22
  %1842 = shl nuw nsw i32 %1841, 5
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 64
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1881, label %1848

; <label>:1848                                    ; preds = %1833
  %1849 = add i32 %56, 444
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 131072
  %1857 = icmp eq i32 %1856, 0
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1853, %dx.types.Handle %106, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.ResRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.ResRet.f32 %1858, 2
  %1862 = fmul fast float %387, %1859
  %1863 = fmul fast float %388, %1860
  %1864 = fmul fast float %389, %1861
  br i1 %1857, label %1871, label %1865

; <label>:1865                                    ; preds = %1848
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = fmul fast float %1867, %1862
  %1869 = fmul fast float %1867, %1863
  %1870 = fmul fast float %1867, %1864
  br label %1871

; <label>:1871                                    ; preds = %1865, %1848
  %1872 = phi float [ %1868, %1865 ], [ %1862, %1848 ]
  %1873 = phi float [ %1869, %1865 ], [ %1863, %1848 ]
  %1874 = phi float [ %1870, %1865 ], [ %1864, %1848 ]
  %1875 = fmul fast float %1872, %1843
  %1876 = select i1 %269, float %1875, float %1872
  %1877 = call float @dx.op.dot3.f32(i32 55, float %1876, float %1873, float %1874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1878 = select i1 %269, float 0.000000e+00, float %1872
  %1879 = select i1 %269, float %1877, float %1873
  %1880 = select i1 %269, float 0.000000e+00, float %1874
  br label %1881

; <label>:1881                                    ; preds = %1871, %1833
  %1882 = phi float [ %1878, %1871 ], [ 0.000000e+00, %1833 ]
  %1883 = phi float [ %1879, %1871 ], [ 0.000000e+00, %1833 ]
  %1884 = phi float [ %1880, %1871 ], [ 0.000000e+00, %1833 ]
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 1024
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1919, label %1889

; <label>:1889                                    ; preds = %1881
  %1890 = add i32 %56, 168
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 255
  %1894 = uitofp i32 %1893 to float
  %1895 = fmul fast float %1894, 0x3F70101020000000
  %1896 = lshr i32 %1892, 8
  %1897 = and i32 %1896, 255
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1898, 0x3F70101020000000
  %1900 = lshr i32 %1892, 16
  %1901 = and i32 %1900, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = fmul fast float %1902, 0x3F70101020000000
  %1904 = fmul fast float %1895, %1895
  %1905 = fmul fast float %1899, %1899
  %1906 = fmul fast float %1903, %1903
  %1907 = add i32 %56, 512
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = add i32 %1909, 0
  %1911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1911, %dx.types.Handle %107, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = fmul fast float %1904, %1913
  %1917 = fmul fast float %1905, %1914
  %1918 = fmul fast float %1906, %1915
  br label %1919

; <label>:1919                                    ; preds = %1889, %1881
  %1920 = phi float [ %1916, %1889 ], [ 0.000000e+00, %1881 ]
  %1921 = phi float [ %1917, %1889 ], [ 0.000000e+00, %1881 ]
  %1922 = phi float [ %1918, %1889 ], [ 0.000000e+00, %1881 ]
  %1923 = fcmp fast ogt float %1920, 0.000000e+00
  %1924 = fcmp fast ogt float %1921, 0.000000e+00
  %1925 = fcmp fast ogt float %1922, 0.000000e+00
  %1926 = call float @dx.op.unary.f32(i32 23, float %1920)  ; Log(value)
  %1927 = call float @dx.op.unary.f32(i32 23, float %1921)  ; Log(value)
  %1928 = call float @dx.op.unary.f32(i32 23, float %1922)  ; Log(value)
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = lshr i32 %1930, 7
  %1932 = and i32 %1931, 32752
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1926, 0xBFE62E4300000000
  %1935 = fmul fast float %1934, %1933
  %1936 = fmul fast float %1927, 0xBFE62E4300000000
  %1937 = fmul fast float %1936, %1933
  %1938 = fmul fast float %1928, 0xBFE62E4300000000
  %1939 = fmul fast float %1938, %1933
  %1940 = select i1 %1923, float %1935, float 1.270000e+02
  %1941 = select i1 %1924, float %1937, float 1.270000e+02
  %1942 = select i1 %1925, float %1939, float 1.270000e+02
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, 10240
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %1967, label %1947

; <label>:1947                                    ; preds = %1919
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = and i32 %1949, 2048
  %1951 = icmp eq i32 %1950, 0
  br i1 %1951, label %1967, label %1952

; <label>:1952                                    ; preds = %1947
  %1953 = add i32 %56, 528
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = add i32 %1955, 0
  %1957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1957, %dx.types.Handle %107, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 3
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = shl i32 %1961, 4
  %1963 = and i32 %1962, 32752
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = fmul fast float %1964, %1959
  %1966 = call float @dx.op.binary.f32(i32 35, float %1965, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1967

; <label>:1967                                    ; preds = %1952, %1947, %1919
  %1968 = phi float [ %1966, %1952 ], [ 0x3F70101020000000, %1947 ], [ 0x3F70101020000000, %1919 ]
  %1969 = add i32 %56, 112
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 255
  %1973 = uitofp i32 %1972 to float
  %1974 = lshr i32 %1971, 8
  %1975 = and i32 %1974, 255
  %1976 = uitofp i32 %1975 to float
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = fmul fast float %1976, %1977
  %1979 = fadd fast float %1978, %1973
  %1980 = fmul fast float %1979, 0x3F70101020000000
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  br i1 %1353, label %1982, label %2017

; <label>:1982                                    ; preds = %1967
  %1983 = fmul fast float %1968, 2.000000e+00
  %1984 = fcmp fast olt float %1940, 1.270000e+02
  %1985 = fcmp fast olt float %1941, 1.270000e+02
  %1986 = fcmp fast olt float %1942, 1.270000e+02
  %1987 = fmul fast float %1940, 0xBFF7154760000000
  %1988 = fmul fast float %1987, %1983
  %1989 = fmul fast float %1941, 0xBFF7154760000000
  %1990 = fmul fast float %1989, %1983
  %1991 = fmul fast float %1942, 0xBFF7154760000000
  %1992 = fmul fast float %1991, %1983
  %1993 = call float @dx.op.unary.f32(i32 21, float %1988)  ; Exp(value)
  %1994 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1995 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1999 = fadd fast float %1996, -1.000000e+00
  %2000 = select i1 %1984, float %1999, float -1.000000e+00
  %2001 = fadd fast float %1997, -1.000000e+00
  %2002 = select i1 %1985, float %2001, float -1.000000e+00
  %2003 = fadd fast float %1998, -1.000000e+00
  %2004 = select i1 %1986, float %2003, float -1.000000e+00
  %2005 = fmul fast float %2000, %1534
  %2006 = fmul fast float %2002, %1534
  %2007 = fmul fast float %2004, %1534
  %2008 = fadd fast float %2005, 1.000000e+00
  %2009 = fadd fast float %2006, 1.000000e+00
  %2010 = fadd fast float %2007, 1.000000e+00
  %2011 = fmul fast float %2008, %1337
  %2012 = fmul fast float %2009, %1338
  %2013 = fmul fast float %2010, %1339
  %2014 = fmul fast float %2008, %1340
  %2015 = fmul fast float %2009, %1341
  %2016 = fmul fast float %2010, %1342
  br label %2017

; <label>:2017                                    ; preds = %1982, %1967
  %2018 = phi float [ %2011, %1982 ], [ %1337, %1967 ]
  %2019 = phi float [ %2012, %1982 ], [ %1338, %1967 ]
  %2020 = phi float [ %2013, %1982 ], [ %1339, %1967 ]
  %2021 = phi float [ %2014, %1982 ], [ %1340, %1967 ]
  %2022 = phi float [ %2015, %1982 ], [ %1341, %1967 ]
  %2023 = phi float [ %2016, %1982 ], [ %1342, %1967 ]
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 3
  %2027 = icmp eq i32 %2026, 3
  br i1 %2027, label %2106, label %2028

; <label>:2028                                    ; preds = %2017
  %2029 = and i32 %2025, 16
  %2030 = icmp ne i32 %2029, 0
  %2031 = select i1 %2030, float %1534, float 0.000000e+00
  %2032 = icmp eq i32 %2026, 0
  br i1 %2032, label %2033, label %2061

; <label>:2033                                    ; preds = %2028
  %2034 = and i32 %2025, 64
  %2035 = icmp ne i32 %2034, 0
  %2036 = select i1 %2035, float %1534, float 0.000000e+00
  %2037 = fsub fast float %1754, %2018
  %2038 = fsub fast float %1755, %2019
  %2039 = fsub fast float %1756, %2020
  %2040 = fmul fast float %2031, %2037
  %2041 = fmul fast float %2031, %2038
  %2042 = fmul fast float %2031, %2039
  %2043 = fadd fast float %2040, %2018
  %2044 = fadd fast float %2041, %2019
  %2045 = fadd fast float %2042, %2020
  %2046 = fsub fast float %1740, %1346
  %2047 = fmul fast float %2031, %2046
  %2048 = fadd fast float %2047, %1346
  %2049 = fsub fast float %1882, %2021
  %2050 = fsub fast float %1883, %2022
  %2051 = fsub fast float %1884, %2023
  %2052 = fmul fast float %2036, %2049
  %2053 = fmul fast float %2036, %2050
  %2054 = fmul fast float %2036, %2051
  %2055 = fadd fast float %2052, %2021
  %2056 = fadd fast float %2053, %2022
  %2057 = fadd fast float %2054, %2023
  %2058 = fsub fast float %1981, %1351
  %2059 = fmul fast float %2031, %2058
  %2060 = fadd fast float %2059, %1351
  br label %2106

; <label>:2061                                    ; preds = %2028
  %2062 = icmp eq i32 %2026, 1
  br i1 %2062, label %2063, label %2076

; <label>:2063                                    ; preds = %2061
  %2064 = fadd fast float %1754, -1.000000e+00
  %2065 = fadd fast float %1755, -1.000000e+00
  %2066 = fadd fast float %1756, -1.000000e+00
  %2067 = fmul fast float %2031, %2064
  %2068 = fmul fast float %2031, %2065
  %2069 = fmul fast float %2031, %2066
  %2070 = fadd fast float %2067, 1.000000e+00
  %2071 = fadd fast float %2068, 1.000000e+00
  %2072 = fadd fast float %2069, 1.000000e+00
  %2073 = fmul fast float %2070, %2018
  %2074 = fmul fast float %2071, %2019
  %2075 = fmul fast float %2072, %2020
  br label %2106

; <label>:2076                                    ; preds = %2061
  %2077 = icmp eq i32 %2026, 2
  br i1 %2077, label %2078, label %2106

; <label>:2078                                    ; preds = %2076
  %2079 = call float @dx.op.unary.f32(i32 24, float %1754)  ; Sqrt(value)
  %2080 = call float @dx.op.unary.f32(i32 24, float %1755)  ; Sqrt(value)
  %2081 = call float @dx.op.unary.f32(i32 24, float %1756)  ; Sqrt(value)
  %2082 = fadd fast float %2079, -5.000000e-01
  %2083 = fadd fast float %2080, -5.000000e-01
  %2084 = fadd fast float %2081, -5.000000e-01
  %2085 = fmul fast float %2082, %2031
  %2086 = fmul fast float %2083, %2031
  %2087 = fmul fast float %2084, %2031
  %2088 = fadd fast float %2085, 5.000000e-01
  %2089 = fadd fast float %2086, 5.000000e-01
  %2090 = fadd fast float %2087, 5.000000e-01
  %2091 = fmul fast float %2088, 2.000000e+00
  %2092 = fsub fast float 1.000000e+00, %2091
  %2093 = fmul fast float %2092, %2018
  %2094 = fadd fast float %2093, %2091
  %2095 = fmul fast float %2094, %2018
  %2096 = fmul fast float %2089, 2.000000e+00
  %2097 = fsub fast float 1.000000e+00, %2096
  %2098 = fmul fast float %2097, %2019
  %2099 = fadd fast float %2098, %2096
  %2100 = fmul fast float %2099, %2019
  %2101 = fmul fast float %2090, 2.000000e+00
  %2102 = fsub fast float 1.000000e+00, %2101
  %2103 = fmul fast float %2102, %2020
  %2104 = fadd fast float %2103, %2101
  %2105 = fmul fast float %2104, %2020
  br label %2106

; <label>:2106                                    ; preds = %2078, %2076, %2063, %2033, %2017
  %2107 = phi float [ %2018, %2017 ], [ %2095, %2078 ], [ %2018, %2076 ], [ %2073, %2063 ], [ %2043, %2033 ]
  %2108 = phi float [ %2019, %2017 ], [ %2100, %2078 ], [ %2019, %2076 ], [ %2074, %2063 ], [ %2044, %2033 ]
  %2109 = phi float [ %2020, %2017 ], [ %2105, %2078 ], [ %2020, %2076 ], [ %2075, %2063 ], [ %2045, %2033 ]
  %2110 = phi float [ %2021, %2017 ], [ %2021, %2078 ], [ %2021, %2076 ], [ %2021, %2063 ], [ %2055, %2033 ]
  %2111 = phi float [ %2022, %2017 ], [ %2022, %2078 ], [ %2022, %2076 ], [ %2022, %2063 ], [ %2056, %2033 ]
  %2112 = phi float [ %2023, %2017 ], [ %2023, %2078 ], [ %2023, %2076 ], [ %2023, %2063 ], [ %2057, %2033 ]
  %2113 = phi float [ %1346, %2017 ], [ %1346, %2078 ], [ %1346, %2076 ], [ %1346, %2063 ], [ %2048, %2033 ]
  %2114 = phi float [ %1351, %2017 ], [ %1351, %2078 ], [ %1351, %2076 ], [ %1351, %2063 ], [ %2060, %2033 ]
  %2115 = and i32 %2025, 12
  %2116 = icmp eq i32 %2115, 12
  br i1 %2116, label %2223, label %2117

; <label>:2117                                    ; preds = %2106
  %2118 = and i32 %2025, 2097184
  %2119 = icmp eq i32 %2118, 2097184
  %2120 = select i1 %2119, float %1534, float 0.000000e+00
  %2121 = and i32 %2025, 4194336
  %2122 = icmp eq i32 %2121, 4194336
  %2123 = select i1 %2122, float %1534, float 0.000000e+00
  %2124 = and i32 %2025, 8388640
  %2125 = icmp eq i32 %2124, 8388640
  %2126 = select i1 %2125, float %1534, float 0.000000e+00
  %2127 = and i32 %2025, 1024
  %2128 = icmp ne i32 %2127, 0
  %2129 = select i1 %2128, float %1534, float 0.000000e+00
  %2130 = and i32 %2025, 2048
  %2131 = icmp ne i32 %2130, 0
  %2132 = select i1 %2131, float %1534, float 0.000000e+00
  %2133 = icmp eq i32 %2115, 0
  br i1 %2133, label %2134, label %2159

; <label>:2134                                    ; preds = %2117
  %2135 = fsub fast float %1835, %1335
  %2136 = fsub fast float %1836, %1336
  %2137 = fmul fast float %2120, %2135
  %2138 = fmul fast float %2120, %2136
  %2139 = fadd fast float %2137, %1335
  %2140 = fadd fast float %2138, %1336
  %2141 = fsub fast float %1837, %1349
  %2142 = fmul fast float %2123, %2141
  %2143 = fadd fast float %2142, %1349
  %2144 = fsub fast float %1834, %1348
  %2145 = fmul fast float %2126, %2144
  %2146 = fadd fast float %2145, %1348
  %2147 = fsub fast float %1940, %1343
  %2148 = fsub fast float %1941, %1344
  %2149 = fsub fast float %1942, %1345
  %2150 = fmul fast float %2129, %2147
  %2151 = fmul fast float %2129, %2148
  %2152 = fmul fast float %2129, %2149
  %2153 = fadd fast float %2150, %1343
  %2154 = fadd fast float %2151, %1344
  %2155 = fadd fast float %2152, %1345
  %2156 = fsub fast float %1968, %1350
  %2157 = fmul fast float %2132, %2156
  %2158 = fadd fast float %2157, %1350
  br label %2223

; <label>:2159                                    ; preds = %2117
  %2160 = icmp eq i32 %2115, 4
  br i1 %2160, label %2161, label %2201

; <label>:2161                                    ; preds = %2159
  %2162 = fmul fast float %2120, %1835
  %2163 = fmul fast float %2120, %1836
  %2164 = fadd fast float %2162, %1335
  %2165 = fadd fast float %2163, %1336
  %2166 = call float @dx.op.binary.f32(i32 36, float %1349, float %1837)  ; FMin(a,b)
  %2167 = fsub fast float %2166, %1349
  %2168 = fmul fast float %2167, %2123
  %2169 = fadd fast float %2168, %1349
  %2170 = fadd fast float %1834, %1348
  %2171 = fmul fast float %2170, 0x3FF337FAE0000000
  %2172 = fmul fast float %1348, %1348
  %2173 = fmul fast float %1834, %1834
  %2174 = fadd fast float %2173, %2172
  %2175 = fmul fast float %2174, 0x3FE5152B00000000
  %2176 = fmul fast float %1348, 0xBFCC1F85E0000000
  %2177 = fmul fast float %2176, %1834
  %2178 = fadd fast float %2177, 0xBFE1363700000000
  %2179 = fadd fast float %2178, %2171
  %2180 = fsub fast float %2179, %2175
  %2181 = fmul fast float %2170, 0x3FBA6F0D00000000
  %2182 = fmul fast float %2174, 0x3FD0432880000000
  %2183 = fmul fast float %1348, 0xBFEF110800000000
  %2184 = fmul fast float %2183, %1834
  %2185 = fadd fast float %2184, 1.000000e+00
  %2186 = fsub fast float %2185, %2181
  %2187 = fadd fast float %2186, %2182
  %2188 = fdiv fast float %2180, %2187
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fsub fast float %2189, %1348
  %2191 = fmul fast float %2190, %2126
  %2192 = fadd fast float %2191, %1348
  %2193 = fmul fast float %2129, %1940
  %2194 = fmul fast float %2129, %1941
  %2195 = fmul fast float %2129, %1942
  %2196 = fadd fast float %2193, %1343
  %2197 = fadd fast float %2194, %1344
  %2198 = fadd fast float %2195, %1345
  %2199 = fmul fast float %2132, %1968
  %2200 = fadd fast float %2199, %1350
  br label %2223

; <label>:2201                                    ; preds = %2159
  %2202 = icmp eq i32 %2115, 8
  br i1 %2202, label %2203, label %2223

; <label>:2203                                    ; preds = %2201
  %2204 = fmul fast float %2120, %1835
  %2205 = fmul fast float %2120, %1836
  %2206 = fadd fast float %2204, %1335
  %2207 = fadd fast float %2205, %1336
  %2208 = call float @dx.op.binary.f32(i32 36, float %1349, float %1837)  ; FMin(a,b)
  %2209 = fsub fast float %2208, %1349
  %2210 = fmul fast float %2209, %2123
  %2211 = fadd fast float %2210, %1349
  %2212 = fsub fast float %1834, %1348
  %2213 = fmul fast float %2126, %2212
  %2214 = fadd fast float %2213, %1348
  %2215 = fmul fast float %2129, %1940
  %2216 = fmul fast float %2129, %1941
  %2217 = fmul fast float %2129, %1942
  %2218 = fadd fast float %2215, %1343
  %2219 = fadd fast float %2216, %1344
  %2220 = fadd fast float %2217, %1345
  %2221 = fmul fast float %2132, %1968
  %2222 = fadd fast float %2221, %1350
  br label %2223

; <label>:2223                                    ; preds = %2203, %2201, %2161, %2134, %2106, %1533, %1352, %1334
  %2224 = phi float [ %1335, %2106 ], [ %1335, %1533 ], [ %1335, %1334 ], [ %2206, %2203 ], [ %1335, %2201 ], [ %2164, %2161 ], [ %2139, %2134 ], [ %1335, %1352 ]
  %2225 = phi float [ %1336, %2106 ], [ %1336, %1533 ], [ %1336, %1334 ], [ %2207, %2203 ], [ %1336, %2201 ], [ %2165, %2161 ], [ %2140, %2134 ], [ %1336, %1352 ]
  %2226 = phi float [ %2107, %2106 ], [ %1337, %1533 ], [ %1337, %1334 ], [ %2107, %2203 ], [ %2107, %2201 ], [ %2107, %2161 ], [ %2107, %2134 ], [ %1337, %1352 ]
  %2227 = phi float [ %2108, %2106 ], [ %1338, %1533 ], [ %1338, %1334 ], [ %2108, %2203 ], [ %2108, %2201 ], [ %2108, %2161 ], [ %2108, %2134 ], [ %1338, %1352 ]
  %2228 = phi float [ %2109, %2106 ], [ %1339, %1533 ], [ %1339, %1334 ], [ %2109, %2203 ], [ %2109, %2201 ], [ %2109, %2161 ], [ %2109, %2134 ], [ %1339, %1352 ]
  %2229 = phi float [ %2110, %2106 ], [ %1340, %1533 ], [ %1340, %1334 ], [ %2110, %2203 ], [ %2110, %2201 ], [ %2110, %2161 ], [ %2110, %2134 ], [ %1340, %1352 ]
  %2230 = phi float [ %2111, %2106 ], [ %1341, %1533 ], [ %1341, %1334 ], [ %2111, %2203 ], [ %2111, %2201 ], [ %2111, %2161 ], [ %2111, %2134 ], [ %1341, %1352 ]
  %2231 = phi float [ %2112, %2106 ], [ %1342, %1533 ], [ %1342, %1334 ], [ %2112, %2203 ], [ %2112, %2201 ], [ %2112, %2161 ], [ %2112, %2134 ], [ %1342, %1352 ]
  %2232 = phi float [ %1343, %2106 ], [ %1343, %1533 ], [ %1343, %1334 ], [ %2218, %2203 ], [ %1343, %2201 ], [ %2196, %2161 ], [ %2153, %2134 ], [ %1343, %1352 ]
  %2233 = phi float [ %1344, %2106 ], [ %1344, %1533 ], [ %1344, %1334 ], [ %2219, %2203 ], [ %1344, %2201 ], [ %2197, %2161 ], [ %2154, %2134 ], [ %1344, %1352 ]
  %2234 = phi float [ %1345, %2106 ], [ %1345, %1533 ], [ %1345, %1334 ], [ %2220, %2203 ], [ %1345, %2201 ], [ %2198, %2161 ], [ %2155, %2134 ], [ %1345, %1352 ]
  %2235 = phi float [ %2113, %2106 ], [ %1346, %1533 ], [ %1346, %1334 ], [ %2113, %2203 ], [ %2113, %2201 ], [ %2113, %2161 ], [ %2113, %2134 ], [ %1346, %1352 ]
  %2236 = phi float [ %1348, %2106 ], [ %1348, %1533 ], [ %1348, %1334 ], [ %2214, %2203 ], [ %1348, %2201 ], [ %2192, %2161 ], [ %2146, %2134 ], [ %1348, %1352 ]
  %2237 = phi float [ %1349, %2106 ], [ %1349, %1533 ], [ %1349, %1334 ], [ %2211, %2203 ], [ %1349, %2201 ], [ %2169, %2161 ], [ %2143, %2134 ], [ %1349, %1352 ]
  %2238 = phi float [ %1350, %2106 ], [ %1350, %1533 ], [ %1350, %1334 ], [ %2222, %2203 ], [ %1350, %2201 ], [ %2200, %2161 ], [ %2158, %2134 ], [ %1350, %1352 ]
  %2239 = phi float [ %2114, %2106 ], [ %1351, %1533 ], [ %1351, %1334 ], [ %2114, %2203 ], [ %2114, %2201 ], [ %2114, %2161 ], [ %2114, %2134 ], [ %1351, %1352 ]
  br i1 %651, label %3111, label %2240

; <label>:2240                                    ; preds = %2223
  %2241 = icmp ult i32 %707, 3
  %2242 = add i32 %56, 56
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = add i32 %56, 60
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = or i32 %2247, %2244
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %3111, label %2250

; <label>:2250                                    ; preds = %2240
  %2251 = and i32 %2244, 262144
  %2252 = icmp ne i32 %2251, 0
  %2253 = select i1 %2252, float %64, float 1.000000e+00
  %2254 = select i1 %2252, float %65, float 0.000000e+00
  %2255 = select i1 %2252, float %66, float 0.000000e+00
  %2256 = select i1 %2252, float %67, float 1.000000e+00
  %2257 = select i1 %2252, float %68, float %92
  %2258 = select i1 %2252, float %69, float %93
  %2259 = add i32 %56, 316
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = lshr i32 %2261, 16
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = fmul fast float %2263, 0x3F50624DE0000000
  %2265 = add i32 %56, 120
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 16
  %2269 = and i32 %2268, 255
  %2270 = lshr i32 %2267, 24
  %2271 = add i32 %56, 324
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2273, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = add i32 %56, 64
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = lshr i32 %2280, 22
  %2282 = shl nuw nsw i32 %2281, 5
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = shl i32 %2280, 4
  %2285 = and i32 %2284, 32752
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = lshr i32 %2280, 7
  %2288 = and i32 %2287, 32752
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 3
  %2292 = fmul fast float %2291, 1.000000e+03
  %2293 = fmul fast float %2292, %535
  %2294 = call float @dx.op.unary.f32(i32 22, float %2293)  ; Frc(value)
  %2295 = fadd fast float %2294, %523
  %2296 = fmul fast float %2292, %537
  %2297 = call float @dx.op.unary.f32(i32 22, float %2296)  ; Frc(value)
  %2298 = fadd fast float %2297, %524
  %2299 = fmul fast float %2264, %2292
  %2300 = call float @dx.op.unary.f32(i32 22, float %2299)  ; Frc(value)
  %2301 = fmul fast float %2300, 0x401921FB60000000
  %2302 = fadd fast float %2301, %2283
  %2303 = call float @dx.op.unary.f32(i32 13, float %2302)  ; Sin(value)
  %2304 = call float @dx.op.unary.f32(i32 12, float %2302)  ; Cos(value)
  %2305 = fsub fast float -0.000000e+00, %2303
  %2306 = fadd fast float %2257, -5.000000e-01
  %2307 = fadd fast float %2258, -5.000000e-01
  %2308 = fmul fast float %2275, %2306
  %2309 = fmul fast float %2277, %2307
  %2310 = fadd fast float %2308, 5.000000e-01
  %2311 = fadd fast float %2309, 5.000000e-01
  %2312 = fmul fast float %2286, %2310
  %2313 = fmul fast float %2289, %2311
  %2314 = fmul fast float %2304, %2312
  %2315 = call float @dx.op.tertiary.f32(i32 46, float %2305, float %2313, float %2314)  ; FMad(a,b,c)
  %2316 = fmul fast float %2303, %2312
  %2317 = call float @dx.op.tertiary.f32(i32 46, float %2304, float %2313, float %2316)  ; FMad(a,b,c)
  %2318 = fadd fast float %2295, %2315
  %2319 = fadd fast float %2298, %2317
  %2320 = icmp ugt i32 %2269, 1
  %2321 = icmp ugt i32 %2267, 33554431
  %2322 = or i1 %2321, %2320
  br i1 %2322, label %2323, label %2348

; <label>:2323                                    ; preds = %2250
  %2324 = add i32 %56, 260
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 16
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = fmul fast float %2291, %2328
  %2330 = call float @dx.op.unary.f32(i32 22, float %2329)  ; Frc(value)
  %2331 = mul nuw nsw i32 %2269, %2270
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2330, %2332
  %2334 = call float @dx.op.unary.f32(i32 27, float %2333)  ; Round_ni(value)
  %2335 = fptoui float %2334 to i32
  %2336 = urem i32 %2335, %2269
  %2337 = udiv i32 %2335, %2270
  %2338 = call float @dx.op.unary.f32(i32 22, float %2318)  ; Frc(value)
  %2339 = call float @dx.op.unary.f32(i32 22, float %2319)  ; Frc(value)
  %2340 = uitofp i32 %2336 to float
  %2341 = uitofp i32 %2337 to float
  %2342 = fadd fast float %2338, %2340
  %2343 = fadd fast float %2339, %2341
  %2344 = uitofp i32 %2269 to float
  %2345 = uitofp i32 %2270 to float
  %2346 = fdiv fast float %2342, %2344
  %2347 = fdiv fast float %2343, %2345
  br label %2348

; <label>:2348                                    ; preds = %2323, %2250
  %2349 = phi float [ %2346, %2323 ], [ %2318, %2250 ]
  %2350 = phi float [ %2347, %2323 ], [ %2319, %2250 ]
  %2351 = and i32 %2244, 256
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %2399, label %2353

; <label>:2353                                    ; preds = %2348
  %2354 = add i32 %56, 480
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = add i32 %2356, 0
  %2358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2358, %dx.types.Handle %107, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = add i32 %56, 132
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = shl i32 %2363, 4
  %2365 = and i32 %2364, 32752
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = lshr i32 %2363, 7
  %2368 = and i32 %2367, 32752
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = fsub fast float 1.000000e+00, %703
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2372 = bitcast float %703 to i32
  %2373 = sitofp i32 %2372 to float
  %2374 = fadd fast float %2373, 0xC1CFBF8940000000
  %2375 = fmul fast float %2369, %2374
  %2376 = fadd fast float %2375, 0x41CFBF8940000000
  %2377 = fptosi float %2376 to i32
  %2378 = bitcast i32 %2377 to float
  %2379 = bitcast float %2371 to i32
  %2380 = sitofp i32 %2379 to float
  %2381 = fadd fast float %2380, 0xC1CFBF8940000000
  %2382 = fmul fast float %2381, %2369
  %2383 = fadd fast float %2382, 0x41CFBF8940000000
  %2384 = fptosi float %2383 to i32
  %2385 = bitcast i32 %2384 to float
  %2386 = fmul fast float %2378, %2366
  %2387 = fmul fast float %2385, %2366
  %2388 = fsub fast float %2371, %2386
  %2389 = fadd fast float %2387, %2371
  %2390 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2391 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2392 = fsub fast float %2360, %2390
  %2393 = fsub fast float %2391, %2390
  %2394 = bitcast float %2393 to i32
  %2395 = sub nsw i32 2129859010, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = fmul fast float %2396, %2392
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  br label %2399

; <label>:2399                                    ; preds = %2353, %2348
  %2400 = phi float [ %2398, %2353 ], [ %703, %2348 ]
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 128
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2421, label %2405

; <label>:2405                                    ; preds = %2399
  %2406 = add i32 %56, 464
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %2408, 0
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2410, %dx.types.Handle %107, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 524288
  %2416 = icmp ne i32 %2415, 0
  %2417 = fcmp fast ogt float %2412, 0x3FE0101020000000
  %2418 = select i1 %2417, float 1.000000e+00, float 0.000000e+00
  %2419 = select i1 %2416, float %2418, float %2412
  %2420 = fmul fast float %2419, %2400
  br label %2421

; <label>:2421                                    ; preds = %2405, %2399
  %2422 = phi float [ %2420, %2405 ], [ %2400, %2399 ]
  %2423 = fcmp fast ult float %2422, 0x3F70101020000000
  br i1 %2423, label %3111, label %2424

; <label>:2424                                    ; preds = %2421
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 16
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2627, label %2429

; <label>:2429                                    ; preds = %2424
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %56, 416
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %2434, 0
  %2436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2436, %dx.types.Handle %106, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.ResRet.f32 %2437, 3
  %2442 = and i32 %2431, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = lshr i32 %2431, 8
  %2445 = and i32 %2444, 255
  %2446 = uitofp i32 %2445 to float
  %2447 = fmul fast float %2441, %2443
  %2448 = fadd fast float %2447, %2446
  %2449 = fmul fast float %2448, 0x3F70101000000000
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 512
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2462, label %2454

; <label>:2454                                    ; preds = %2429
  %2455 = add i32 %56, 500
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %107, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  br label %2462

; <label>:2462                                    ; preds = %2454, %2429
  %2463 = phi float [ %2461, %2454 ], [ 1.000000e+00, %2429 ]
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 33554432
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2574, label %2468

; <label>:2468                                    ; preds = %2462
  %2469 = add i32 %56, 256
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 65535
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = lshr i32 %2471, 16
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = add i32 %56, 260
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 65535
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 24
  %2484 = uitofp i32 %2483 to float
  %2485 = fmul fast float %2484, 0x3F70101020000000
  %2486 = and i32 %2482, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = fmul fast float %2487, 0x3F70101020000000
  %2489 = lshr i32 %2482, 8
  %2490 = and i32 %2489, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2482, 16
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = add i32 %56, 252
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 24
  %2501 = uitofp i32 %2500 to float
  %2502 = fmul fast float %2501, 0x3F70101020000000
  %2503 = and i32 %2499, 255
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = lshr i32 %2499, 8
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = lshr i32 %2499, 16
  %2511 = and i32 %2510, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = fmul fast float %2512, 0x3F70101020000000
  %2514 = bitcast float %2438 to i32
  %2515 = ashr i32 %2514, 1
  %2516 = sub nsw i32 1597463174, %2515
  %2517 = bitcast i32 %2516 to float
  %2518 = fmul fast float %2438, 5.000000e-01
  %2519 = fmul fast float %2517, %2517
  %2520 = fmul fast float %2519, %2518
  %2521 = fsub fast float 1.500000e+00, %2520
  %2522 = fmul fast float %2517, %2438
  %2523 = fmul fast float %2522, %2521
  %2524 = bitcast float %2439 to i32
  %2525 = ashr i32 %2524, 1
  %2526 = sub nsw i32 1597463174, %2525
  %2527 = bitcast i32 %2526 to float
  %2528 = fmul fast float %2439, 5.000000e-01
  %2529 = fmul fast float %2527, %2527
  %2530 = fmul fast float %2529, %2528
  %2531 = fsub fast float 1.500000e+00, %2530
  %2532 = fmul fast float %2527, %2439
  %2533 = fmul fast float %2532, %2531
  %2534 = bitcast float %2440 to i32
  %2535 = ashr i32 %2534, 1
  %2536 = sub nsw i32 1597463174, %2535
  %2537 = bitcast i32 %2536 to float
  %2538 = fmul fast float %2440, 5.000000e-01
  %2539 = fmul fast float %2537, %2537
  %2540 = fmul fast float %2539, %2538
  %2541 = fsub fast float 1.500000e+00, %2540
  %2542 = fmul fast float %2537, %2440
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float %2523, %2505
  %2545 = fsub fast float %2533, %2509
  %2546 = fsub fast float %2543, %2513
  %2547 = fmul fast float %2544, %2473
  %2548 = fmul fast float %2545, %2475
  %2549 = fmul fast float %2546, %2480
  %2550 = fadd fast float %2547, %2488
  %2551 = fadd fast float %2548, %2492
  %2552 = fadd fast float %2549, %2496
  %2553 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2554 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2556 = fmul fast float %2553, %2553
  %2557 = fmul fast float %2554, %2554
  %2558 = fmul fast float %2555, %2555
  %2559 = fsub fast float %2556, %2438
  %2560 = fsub fast float %2557, %2439
  %2561 = fsub fast float %2558, %2440
  %2562 = fmul fast float %2559, %2463
  %2563 = fmul fast float %2560, %2463
  %2564 = fmul fast float %2561, %2463
  %2565 = fadd fast float %2562, %2438
  %2566 = fadd fast float %2563, %2439
  %2567 = fadd fast float %2564, %2440
  %2568 = fadd fast float %2485, %2449
  %2569 = fsub fast float %2568, %2502
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fsub fast float %2570, %2449
  %2572 = fmul fast float %2571, %2463
  %2573 = fadd fast float %2572, %2449
  br label %2627

; <label>:2574                                    ; preds = %2462
  %2575 = and i32 %2465, 134217728
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2611, label %2577

; <label>:2577                                    ; preds = %2574
  %2578 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2579 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2580 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fadd fast float %2579, -5.000000e-01
  %2583 = fadd fast float %2580, -5.000000e-01
  %2584 = fmul fast float %2581, %2463
  %2585 = fmul fast float %2582, %2463
  %2586 = fmul fast float %2583, %2463
  %2587 = fadd fast float %2584, 5.000000e-01
  %2588 = fadd fast float %2585, 5.000000e-01
  %2589 = fadd fast float %2586, 5.000000e-01
  %2590 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2593 = fmul fast float %2587, 2.000000e+00
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = fmul fast float %2594, %2590
  %2596 = fadd fast float %2595, %2593
  %2597 = fmul fast float %2596, %2590
  %2598 = fmul fast float %2588, 2.000000e+00
  %2599 = fsub fast float 1.000000e+00, %2598
  %2600 = fmul fast float %2599, %2591
  %2601 = fadd fast float %2600, %2598
  %2602 = fmul fast float %2601, %2591
  %2603 = fmul fast float %2589, 2.000000e+00
  %2604 = fsub fast float 1.000000e+00, %2603
  %2605 = fmul fast float %2604, %2592
  %2606 = fadd fast float %2605, %2603
  %2607 = fmul fast float %2606, %2592
  %2608 = fmul fast float %2597, %2597
  %2609 = fmul fast float %2602, %2602
  %2610 = fmul fast float %2607, %2607
  br label %2627

; <label>:2611                                    ; preds = %2574
  %2612 = fmul fast float %511, %511
  %2613 = fmul fast float %512, %512
  %2614 = fmul fast float %513, %513
  %2615 = fadd fast float %2612, -1.000000e+00
  %2616 = fadd fast float %2613, -1.000000e+00
  %2617 = fadd fast float %2614, -1.000000e+00
  %2618 = fmul fast float %2463, %2615
  %2619 = fmul fast float %2463, %2616
  %2620 = fmul fast float %2463, %2617
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fadd fast float %2620, 1.000000e+00
  %2624 = fmul fast float %2621, %2438
  %2625 = fmul fast float %2622, %2439
  %2626 = fmul fast float %2623, %2440
  br label %2627

; <label>:2627                                    ; preds = %2611, %2577, %2468, %2424
  %2628 = phi float [ %2573, %2468 ], [ %2449, %2577 ], [ %2449, %2611 ], [ 0x3FA23C0BE0000000, %2424 ]
  %2629 = phi float [ %2565, %2468 ], [ %2608, %2577 ], [ %2624, %2611 ], [ 1.000000e+00, %2424 ]
  %2630 = phi float [ %2566, %2468 ], [ %2609, %2577 ], [ %2625, %2611 ], [ 1.000000e+00, %2424 ]
  %2631 = phi float [ %2567, %2468 ], [ %2610, %2577 ], [ %2626, %2611 ], [ 1.000000e+00, %2424 ]
  %2632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.i32 %2632, 1
  %2634 = and i32 %2633, 1
  %2635 = icmp ne i32 %2634, 0
  %2636 = add i32 %56, 356
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 32
  %2640 = icmp ne i32 %2639, 0
  %2641 = and i1 %2635, %2640
  %2642 = select i1 %2641, float 1.000000e+00, float %2629
  %2643 = select i1 %2641, float 0x3FD3333340000000, float %2630
  %2644 = select i1 %2641, float 0x3FD3333340000000, float %2631
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 32
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2721, label %2649

; <label>:2649                                    ; preds = %2627
  %2650 = add i32 %56, 124
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %56, 432
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = add i32 %2655, 0
  %2657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2657, %dx.types.Handle %106, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = extractvalue %dx.types.ResRet.f32 %2658, 3
  %2663 = and i32 %2652, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = lshr i32 %2652, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = lshr i32 %2652, 16
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101000000000
  %2672 = fmul fast float %2659, %2664
  %2673 = fadd fast float %2672, %2667
  %2674 = fmul fast float %2673, 0x3F70101000000000
  %2675 = fadd fast float %2660, -5.000000e-01
  %2676 = fadd fast float %2662, -5.000000e-01
  %2677 = fmul fast float %2675, %2671
  %2678 = fmul fast float %2676, %2671
  %2679 = fadd fast float %2677, 5.000000e-01
  %2680 = fadd fast float %2678, 5.000000e-01
  %2681 = fmul fast float %2679, 2.000000e+00
  %2682 = fadd fast float %2681, -1.000000e+00
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fadd fast float %2683, -1.000000e+00
  %2685 = fadd fast float %2682, %2684
  %2686 = fmul fast float %2685, 5.000000e-01
  %2687 = fsub fast float %2682, %2684
  %2688 = fmul fast float %2687, 5.000000e-01
  %2689 = call float @dx.op.unary.f32(i32 6, float %2686)  ; FAbs(value)
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = call float @dx.op.unary.f32(i32 6, float %2688)  ; FAbs(value)
  %2692 = fsub fast float %2690, %2691
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2688, float %2692, float %2686, float %2688, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.unary.f32(i32 25, float %2693)  ; Rsqrt(value)
  %2695 = fmul fast float %2686, %2694
  %2696 = fmul fast float %2688, %2694
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 67108864
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2717, label %2701

; <label>:2701                                    ; preds = %2649
  %2702 = add i32 %56, 312
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = and i32 %2704, 65535
  %2706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2705)  ; LegacyF16ToF32(value)
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 65535
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = lshr i32 %2704, 16
  %2712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2711)  ; LegacyF16ToF32(value)
  %2713 = fsub fast float %2674, %2712
  %2714 = fmul fast float %2713, %2706
  %2715 = fadd fast float %2714, %2710
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  br label %2717

; <label>:2717                                    ; preds = %2701, %2649
  %2718 = phi float [ %2716, %2701 ], [ %2674, %2649 ]
  %2719 = call float @dx.op.dot2.f32(i32 54, float %2695, float %2696, float %2253, float %2254)  ; Dot2(ax,ay,bx,by)
  %2720 = call float @dx.op.dot2.f32(i32 54, float %2695, float %2696, float %2255, float %2256)  ; Dot2(ax,ay,bx,by)
  br label %2721

; <label>:2721                                    ; preds = %2717, %2627
  %2722 = phi float [ %2718, %2717 ], [ 0x3FD6666660000000, %2627 ]
  %2723 = phi float [ %2719, %2717 ], [ 0.000000e+00, %2627 ]
  %2724 = phi float [ %2720, %2717 ], [ 0.000000e+00, %2627 ]
  %2725 = phi float [ %2661, %2717 ], [ 1.000000e+00, %2627 ]
  %2726 = add i32 %56, 192
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = lshr i32 %2728, 22
  %2730 = shl nuw nsw i32 %2729, 5
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 64
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %2769, label %2736

; <label>:2736                                    ; preds = %2721
  %2737 = add i32 %56, 448
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = add i32 %2739, 0
  %2741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 131072
  %2745 = icmp eq i32 %2744, 0
  %2746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2741, %dx.types.Handle %106, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.ResRet.f32 %2746, 1
  %2749 = extractvalue %dx.types.ResRet.f32 %2746, 2
  %2750 = fmul fast float %494, %2747
  %2751 = fmul fast float %495, %2748
  %2752 = fmul fast float %496, %2749
  br i1 %2745, label %2759, label %2753

; <label>:2753                                    ; preds = %2736
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = fmul fast float %2755, %2750
  %2757 = fmul fast float %2755, %2751
  %2758 = fmul fast float %2755, %2752
  br label %2759

; <label>:2759                                    ; preds = %2753, %2736
  %2760 = phi float [ %2756, %2753 ], [ %2750, %2736 ]
  %2761 = phi float [ %2757, %2753 ], [ %2751, %2736 ]
  %2762 = phi float [ %2758, %2753 ], [ %2752, %2736 ]
  %2763 = fmul fast float %2760, %2731
  %2764 = select i1 %269, float %2763, float %2760
  %2765 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2761, float %2762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2766 = select i1 %269, float 0.000000e+00, float %2760
  %2767 = select i1 %269, float %2765, float %2761
  %2768 = select i1 %269, float 0.000000e+00, float %2762
  br label %2769

; <label>:2769                                    ; preds = %2759, %2721
  %2770 = phi float [ %2766, %2759 ], [ 0.000000e+00, %2721 ]
  %2771 = phi float [ %2767, %2759 ], [ 0.000000e+00, %2721 ]
  %2772 = phi float [ %2768, %2759 ], [ 0.000000e+00, %2721 ]
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 1024
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2807, label %2777

; <label>:2777                                    ; preds = %2769
  %2778 = add i32 %56, 184
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = lshr i32 %2780, 8
  %2785 = and i32 %2784, 255
  %2786 = uitofp i32 %2785 to float
  %2787 = fmul fast float %2786, 0x3F70101020000000
  %2788 = lshr i32 %2780, 16
  %2789 = and i32 %2788, 255
  %2790 = uitofp i32 %2789 to float
  %2791 = fmul fast float %2790, 0x3F70101020000000
  %2792 = fmul fast float %2783, %2783
  %2793 = fmul fast float %2787, %2787
  %2794 = fmul fast float %2791, %2791
  %2795 = add i32 %56, 516
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = add i32 %2797, 0
  %2799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2799, %dx.types.Handle %107, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2801 = extractvalue %dx.types.ResRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.ResRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.ResRet.f32 %2800, 2
  %2804 = fmul fast float %2792, %2801
  %2805 = fmul fast float %2793, %2802
  %2806 = fmul fast float %2794, %2803
  br label %2807

; <label>:2807                                    ; preds = %2777, %2769
  %2808 = phi float [ %2804, %2777 ], [ 0.000000e+00, %2769 ]
  %2809 = phi float [ %2805, %2777 ], [ 0.000000e+00, %2769 ]
  %2810 = phi float [ %2806, %2777 ], [ 0.000000e+00, %2769 ]
  %2811 = fcmp fast ogt float %2808, 0.000000e+00
  %2812 = fcmp fast ogt float %2809, 0.000000e+00
  %2813 = fcmp fast ogt float %2810, 0.000000e+00
  %2814 = call float @dx.op.unary.f32(i32 23, float %2808)  ; Log(value)
  %2815 = call float @dx.op.unary.f32(i32 23, float %2809)  ; Log(value)
  %2816 = call float @dx.op.unary.f32(i32 23, float %2810)  ; Log(value)
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = lshr i32 %2818, 7
  %2820 = and i32 %2819, 32752
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = fmul fast float %2814, 0xBFE62E4300000000
  %2823 = fmul fast float %2822, %2821
  %2824 = fmul fast float %2815, 0xBFE62E4300000000
  %2825 = fmul fast float %2824, %2821
  %2826 = fmul fast float %2816, 0xBFE62E4300000000
  %2827 = fmul fast float %2826, %2821
  %2828 = select i1 %2811, float %2823, float 1.270000e+02
  %2829 = select i1 %2812, float %2825, float 1.270000e+02
  %2830 = select i1 %2813, float %2827, float 1.270000e+02
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 10240
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %2855, label %2835

; <label>:2835                                    ; preds = %2807
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 2048
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2855, label %2840

; <label>:2840                                    ; preds = %2835
  %2841 = add i32 %56, 532
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %107, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = shl i32 %2849, 4
  %2851 = and i32 %2850, 32752
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = fmul fast float %2852, %2847
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2855

; <label>:2855                                    ; preds = %2840, %2835, %2807
  %2856 = phi float [ %2854, %2840 ], [ 0x3F70101020000000, %2835 ], [ 0x3F70101020000000, %2807 ]
  %2857 = add i32 %56, 128
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = lshr i32 %2859, 8
  %2863 = and i32 %2862, 255
  %2864 = uitofp i32 %2863 to float
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %2644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = fmul fast float %2864, %2865
  %2867 = fadd fast float %2866, %2861
  %2868 = fmul fast float %2867, 0x3F70101020000000
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  br i1 %2241, label %2870, label %2905

; <label>:2870                                    ; preds = %2855
  %2871 = fmul fast float %2856, 2.000000e+00
  %2872 = fcmp fast olt float %2828, 1.270000e+02
  %2873 = fcmp fast olt float %2829, 1.270000e+02
  %2874 = fcmp fast olt float %2830, 1.270000e+02
  %2875 = fmul fast float %2828, 0xBFF7154760000000
  %2876 = fmul fast float %2875, %2871
  %2877 = fmul fast float %2829, 0xBFF7154760000000
  %2878 = fmul fast float %2877, %2871
  %2879 = fmul fast float %2830, 0xBFF7154760000000
  %2880 = fmul fast float %2879, %2871
  %2881 = call float @dx.op.unary.f32(i32 21, float %2876)  ; Exp(value)
  %2882 = call float @dx.op.unary.f32(i32 21, float %2878)  ; Exp(value)
  %2883 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2885 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2886 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2887 = fadd fast float %2884, -1.000000e+00
  %2888 = select i1 %2872, float %2887, float -1.000000e+00
  %2889 = fadd fast float %2885, -1.000000e+00
  %2890 = select i1 %2873, float %2889, float -1.000000e+00
  %2891 = fadd fast float %2886, -1.000000e+00
  %2892 = select i1 %2874, float %2891, float -1.000000e+00
  %2893 = fmul fast float %2888, %2422
  %2894 = fmul fast float %2890, %2422
  %2895 = fmul fast float %2892, %2422
  %2896 = fadd fast float %2893, 1.000000e+00
  %2897 = fadd fast float %2894, 1.000000e+00
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fmul fast float %2896, %2226
  %2900 = fmul fast float %2897, %2227
  %2901 = fmul fast float %2898, %2228
  %2902 = fmul fast float %2896, %2229
  %2903 = fmul fast float %2897, %2230
  %2904 = fmul fast float %2898, %2231
  br label %2905

; <label>:2905                                    ; preds = %2870, %2855
  %2906 = phi float [ %2899, %2870 ], [ %2226, %2855 ]
  %2907 = phi float [ %2900, %2870 ], [ %2227, %2855 ]
  %2908 = phi float [ %2901, %2870 ], [ %2228, %2855 ]
  %2909 = phi float [ %2902, %2870 ], [ %2229, %2855 ]
  %2910 = phi float [ %2903, %2870 ], [ %2230, %2855 ]
  %2911 = phi float [ %2904, %2870 ], [ %2231, %2855 ]
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 3
  %2915 = icmp eq i32 %2914, 3
  br i1 %2915, label %2994, label %2916

; <label>:2916                                    ; preds = %2905
  %2917 = and i32 %2913, 16
  %2918 = icmp ne i32 %2917, 0
  %2919 = select i1 %2918, float %2422, float 0.000000e+00
  %2920 = icmp eq i32 %2914, 0
  br i1 %2920, label %2921, label %2949

; <label>:2921                                    ; preds = %2916
  %2922 = and i32 %2913, 64
  %2923 = icmp ne i32 %2922, 0
  %2924 = select i1 %2923, float %2422, float 0.000000e+00
  %2925 = fsub fast float %2642, %2906
  %2926 = fsub fast float %2643, %2907
  %2927 = fsub fast float %2644, %2908
  %2928 = fmul fast float %2919, %2925
  %2929 = fmul fast float %2919, %2926
  %2930 = fmul fast float %2919, %2927
  %2931 = fadd fast float %2928, %2906
  %2932 = fadd fast float %2929, %2907
  %2933 = fadd fast float %2930, %2908
  %2934 = fsub fast float %2628, %2235
  %2935 = fmul fast float %2919, %2934
  %2936 = fadd fast float %2935, %2235
  %2937 = fsub fast float %2770, %2909
  %2938 = fsub fast float %2771, %2910
  %2939 = fsub fast float %2772, %2911
  %2940 = fmul fast float %2924, %2937
  %2941 = fmul fast float %2924, %2938
  %2942 = fmul fast float %2924, %2939
  %2943 = fadd fast float %2940, %2909
  %2944 = fadd fast float %2941, %2910
  %2945 = fadd fast float %2942, %2911
  %2946 = fsub fast float %2869, %2239
  %2947 = fmul fast float %2919, %2946
  %2948 = fadd fast float %2947, %2239
  br label %2994

; <label>:2949                                    ; preds = %2916
  %2950 = icmp eq i32 %2914, 1
  br i1 %2950, label %2951, label %2964

; <label>:2951                                    ; preds = %2949
  %2952 = fadd fast float %2642, -1.000000e+00
  %2953 = fadd fast float %2643, -1.000000e+00
  %2954 = fadd fast float %2644, -1.000000e+00
  %2955 = fmul fast float %2919, %2952
  %2956 = fmul fast float %2919, %2953
  %2957 = fmul fast float %2919, %2954
  %2958 = fadd fast float %2955, 1.000000e+00
  %2959 = fadd fast float %2956, 1.000000e+00
  %2960 = fadd fast float %2957, 1.000000e+00
  %2961 = fmul fast float %2958, %2906
  %2962 = fmul fast float %2959, %2907
  %2963 = fmul fast float %2960, %2908
  br label %2994

; <label>:2964                                    ; preds = %2949
  %2965 = icmp eq i32 %2914, 2
  br i1 %2965, label %2966, label %2994

; <label>:2966                                    ; preds = %2964
  %2967 = call float @dx.op.unary.f32(i32 24, float %2642)  ; Sqrt(value)
  %2968 = call float @dx.op.unary.f32(i32 24, float %2643)  ; Sqrt(value)
  %2969 = call float @dx.op.unary.f32(i32 24, float %2644)  ; Sqrt(value)
  %2970 = fadd fast float %2967, -5.000000e-01
  %2971 = fadd fast float %2968, -5.000000e-01
  %2972 = fadd fast float %2969, -5.000000e-01
  %2973 = fmul fast float %2970, %2919
  %2974 = fmul fast float %2971, %2919
  %2975 = fmul fast float %2972, %2919
  %2976 = fadd fast float %2973, 5.000000e-01
  %2977 = fadd fast float %2974, 5.000000e-01
  %2978 = fadd fast float %2975, 5.000000e-01
  %2979 = fmul fast float %2976, 2.000000e+00
  %2980 = fsub fast float 1.000000e+00, %2979
  %2981 = fmul fast float %2980, %2906
  %2982 = fadd fast float %2981, %2979
  %2983 = fmul fast float %2982, %2906
  %2984 = fmul fast float %2977, 2.000000e+00
  %2985 = fsub fast float 1.000000e+00, %2984
  %2986 = fmul fast float %2985, %2907
  %2987 = fadd fast float %2986, %2984
  %2988 = fmul fast float %2987, %2907
  %2989 = fmul fast float %2978, 2.000000e+00
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2990, %2908
  %2992 = fadd fast float %2991, %2989
  %2993 = fmul fast float %2992, %2908
  br label %2994

; <label>:2994                                    ; preds = %2966, %2964, %2951, %2921, %2905
  %2995 = phi float [ %2906, %2905 ], [ %2983, %2966 ], [ %2906, %2964 ], [ %2961, %2951 ], [ %2931, %2921 ]
  %2996 = phi float [ %2907, %2905 ], [ %2988, %2966 ], [ %2907, %2964 ], [ %2962, %2951 ], [ %2932, %2921 ]
  %2997 = phi float [ %2908, %2905 ], [ %2993, %2966 ], [ %2908, %2964 ], [ %2963, %2951 ], [ %2933, %2921 ]
  %2998 = phi float [ %2909, %2905 ], [ %2909, %2966 ], [ %2909, %2964 ], [ %2909, %2951 ], [ %2943, %2921 ]
  %2999 = phi float [ %2910, %2905 ], [ %2910, %2966 ], [ %2910, %2964 ], [ %2910, %2951 ], [ %2944, %2921 ]
  %3000 = phi float [ %2911, %2905 ], [ %2911, %2966 ], [ %2911, %2964 ], [ %2911, %2951 ], [ %2945, %2921 ]
  %3001 = phi float [ %2235, %2905 ], [ %2235, %2966 ], [ %2235, %2964 ], [ %2235, %2951 ], [ %2936, %2921 ]
  %3002 = phi float [ %2239, %2905 ], [ %2239, %2966 ], [ %2239, %2964 ], [ %2239, %2951 ], [ %2948, %2921 ]
  %3003 = and i32 %2913, 12
  %3004 = icmp eq i32 %3003, 12
  br i1 %3004, label %3111, label %3005

; <label>:3005                                    ; preds = %2994
  %3006 = and i32 %2913, 2097184
  %3007 = icmp eq i32 %3006, 2097184
  %3008 = select i1 %3007, float %2422, float 0.000000e+00
  %3009 = and i32 %2913, 4194336
  %3010 = icmp eq i32 %3009, 4194336
  %3011 = select i1 %3010, float %2422, float 0.000000e+00
  %3012 = and i32 %2913, 8388640
  %3013 = icmp eq i32 %3012, 8388640
  %3014 = select i1 %3013, float %2422, float 0.000000e+00
  %3015 = and i32 %2913, 1024
  %3016 = icmp ne i32 %3015, 0
  %3017 = select i1 %3016, float %2422, float 0.000000e+00
  %3018 = and i32 %2913, 2048
  %3019 = icmp ne i32 %3018, 0
  %3020 = select i1 %3019, float %2422, float 0.000000e+00
  %3021 = icmp eq i32 %3003, 0
  br i1 %3021, label %3022, label %3047

; <label>:3022                                    ; preds = %3005
  %3023 = fsub fast float %2723, %2224
  %3024 = fsub fast float %2724, %2225
  %3025 = fmul fast float %3008, %3023
  %3026 = fmul fast float %3008, %3024
  %3027 = fadd fast float %3025, %2224
  %3028 = fadd fast float %3026, %2225
  %3029 = fsub fast float %2725, %2237
  %3030 = fmul fast float %3011, %3029
  %3031 = fadd fast float %3030, %2237
  %3032 = fsub fast float %2722, %2236
  %3033 = fmul fast float %3014, %3032
  %3034 = fadd fast float %3033, %2236
  %3035 = fsub fast float %2828, %2232
  %3036 = fsub fast float %2829, %2233
  %3037 = fsub fast float %2830, %2234
  %3038 = fmul fast float %3017, %3035
  %3039 = fmul fast float %3017, %3036
  %3040 = fmul fast float %3017, %3037
  %3041 = fadd fast float %3038, %2232
  %3042 = fadd fast float %3039, %2233
  %3043 = fadd fast float %3040, %2234
  %3044 = fsub fast float %2856, %2238
  %3045 = fmul fast float %3020, %3044
  %3046 = fadd fast float %3045, %2238
  br label %3111

; <label>:3047                                    ; preds = %3005
  %3048 = icmp eq i32 %3003, 4
  br i1 %3048, label %3049, label %3089

; <label>:3049                                    ; preds = %3047
  %3050 = fmul fast float %3008, %2723
  %3051 = fmul fast float %3008, %2724
  %3052 = fadd fast float %3050, %2224
  %3053 = fadd fast float %3051, %2225
  %3054 = call float @dx.op.binary.f32(i32 36, float %2237, float %2725)  ; FMin(a,b)
  %3055 = fsub fast float %3054, %2237
  %3056 = fmul fast float %3055, %3011
  %3057 = fadd fast float %3056, %2237
  %3058 = fadd fast float %2722, %2236
  %3059 = fmul fast float %3058, 0x3FF337FAE0000000
  %3060 = fmul fast float %2236, %2236
  %3061 = fmul fast float %2722, %2722
  %3062 = fadd fast float %3061, %3060
  %3063 = fmul fast float %3062, 0x3FE5152B00000000
  %3064 = fmul fast float %2236, 0xBFCC1F85E0000000
  %3065 = fmul fast float %3064, %2722
  %3066 = fadd fast float %3065, 0xBFE1363700000000
  %3067 = fadd fast float %3066, %3059
  %3068 = fsub fast float %3067, %3063
  %3069 = fmul fast float %3058, 0x3FBA6F0D00000000
  %3070 = fmul fast float %3062, 0x3FD0432880000000
  %3071 = fmul fast float %2236, 0xBFEF110800000000
  %3072 = fmul fast float %3071, %2722
  %3073 = fadd fast float %3072, 1.000000e+00
  %3074 = fsub fast float %3073, %3069
  %3075 = fadd fast float %3074, %3070
  %3076 = fdiv fast float %3068, %3075
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3078 = fsub fast float %3077, %2236
  %3079 = fmul fast float %3078, %3014
  %3080 = fadd fast float %3079, %2236
  %3081 = fmul fast float %3017, %2828
  %3082 = fmul fast float %3017, %2829
  %3083 = fmul fast float %3017, %2830
  %3084 = fadd fast float %3081, %2232
  %3085 = fadd fast float %3082, %2233
  %3086 = fadd fast float %3083, %2234
  %3087 = fmul fast float %3020, %2856
  %3088 = fadd fast float %3087, %2238
  br label %3111

; <label>:3089                                    ; preds = %3047
  %3090 = icmp eq i32 %3003, 8
  br i1 %3090, label %3091, label %3111

; <label>:3091                                    ; preds = %3089
  %3092 = fmul fast float %3008, %2723
  %3093 = fmul fast float %3008, %2724
  %3094 = fadd fast float %3092, %2224
  %3095 = fadd fast float %3093, %2225
  %3096 = call float @dx.op.binary.f32(i32 36, float %2237, float %2725)  ; FMin(a,b)
  %3097 = fsub fast float %3096, %2237
  %3098 = fmul fast float %3097, %3011
  %3099 = fadd fast float %3098, %2237
  %3100 = fsub fast float %2722, %2236
  %3101 = fmul fast float %3014, %3100
  %3102 = fadd fast float %3101, %2236
  %3103 = fmul fast float %3017, %2828
  %3104 = fmul fast float %3017, %2829
  %3105 = fmul fast float %3017, %2830
  %3106 = fadd fast float %3103, %2232
  %3107 = fadd fast float %3104, %2233
  %3108 = fadd fast float %3105, %2234
  %3109 = fmul fast float %3020, %2856
  %3110 = fadd fast float %3109, %2238
  br label %3111

; <label>:3111                                    ; preds = %3091, %3089, %3049, %3022, %2994, %2421, %2240, %2223
  %3112 = phi float [ %2224, %2994 ], [ %2224, %2421 ], [ %2224, %2223 ], [ %3094, %3091 ], [ %2224, %3089 ], [ %3052, %3049 ], [ %3027, %3022 ], [ %2224, %2240 ]
  %3113 = phi float [ %2225, %2994 ], [ %2225, %2421 ], [ %2225, %2223 ], [ %3095, %3091 ], [ %2225, %3089 ], [ %3053, %3049 ], [ %3028, %3022 ], [ %2225, %2240 ]
  %3114 = phi float [ %2995, %2994 ], [ %2226, %2421 ], [ %2226, %2223 ], [ %2995, %3091 ], [ %2995, %3089 ], [ %2995, %3049 ], [ %2995, %3022 ], [ %2226, %2240 ]
  %3115 = phi float [ %2996, %2994 ], [ %2227, %2421 ], [ %2227, %2223 ], [ %2996, %3091 ], [ %2996, %3089 ], [ %2996, %3049 ], [ %2996, %3022 ], [ %2227, %2240 ]
  %3116 = phi float [ %2997, %2994 ], [ %2228, %2421 ], [ %2228, %2223 ], [ %2997, %3091 ], [ %2997, %3089 ], [ %2997, %3049 ], [ %2997, %3022 ], [ %2228, %2240 ]
  %3117 = phi float [ %2998, %2994 ], [ %2229, %2421 ], [ %2229, %2223 ], [ %2998, %3091 ], [ %2998, %3089 ], [ %2998, %3049 ], [ %2998, %3022 ], [ %2229, %2240 ]
  %3118 = phi float [ %2999, %2994 ], [ %2230, %2421 ], [ %2230, %2223 ], [ %2999, %3091 ], [ %2999, %3089 ], [ %2999, %3049 ], [ %2999, %3022 ], [ %2230, %2240 ]
  %3119 = phi float [ %3000, %2994 ], [ %2231, %2421 ], [ %2231, %2223 ], [ %3000, %3091 ], [ %3000, %3089 ], [ %3000, %3049 ], [ %3000, %3022 ], [ %2231, %2240 ]
  %3120 = phi float [ %2232, %2994 ], [ %2232, %2421 ], [ %2232, %2223 ], [ %3106, %3091 ], [ %2232, %3089 ], [ %3084, %3049 ], [ %3041, %3022 ], [ %2232, %2240 ]
  %3121 = phi float [ %2233, %2994 ], [ %2233, %2421 ], [ %2233, %2223 ], [ %3107, %3091 ], [ %2233, %3089 ], [ %3085, %3049 ], [ %3042, %3022 ], [ %2233, %2240 ]
  %3122 = phi float [ %2234, %2994 ], [ %2234, %2421 ], [ %2234, %2223 ], [ %3108, %3091 ], [ %2234, %3089 ], [ %3086, %3049 ], [ %3043, %3022 ], [ %2234, %2240 ]
  %3123 = phi float [ %3001, %2994 ], [ %2235, %2421 ], [ %2235, %2223 ], [ %3001, %3091 ], [ %3001, %3089 ], [ %3001, %3049 ], [ %3001, %3022 ], [ %2235, %2240 ]
  %3124 = phi float [ %2236, %2994 ], [ %2236, %2421 ], [ %2236, %2223 ], [ %3102, %3091 ], [ %2236, %3089 ], [ %3080, %3049 ], [ %3034, %3022 ], [ %2236, %2240 ]
  %3125 = phi float [ %2237, %2994 ], [ %2237, %2421 ], [ %2237, %2223 ], [ %3099, %3091 ], [ %2237, %3089 ], [ %3057, %3049 ], [ %3031, %3022 ], [ %2237, %2240 ]
  %3126 = phi float [ %2238, %2994 ], [ %2238, %2421 ], [ %2238, %2223 ], [ %3110, %3091 ], [ %2238, %3089 ], [ %3088, %3049 ], [ %3046, %3022 ], [ %2238, %2240 ]
  %3127 = phi float [ %3002, %2994 ], [ %2239, %2421 ], [ %2239, %2223 ], [ %3002, %3091 ], [ %3002, %3089 ], [ %3002, %3049 ], [ %3002, %3022 ], [ %2239, %2240 ]
  br i1 %653, label %3999, label %3128

; <label>:3128                                    ; preds = %3111
  %3129 = icmp ult i32 %707, 4
  %3130 = add i32 %56, 72
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %56, 76
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = or i32 %3135, %3132
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3999, label %3138

; <label>:3138                                    ; preds = %3128
  %3139 = and i32 %3132, 262144
  %3140 = icmp ne i32 %3139, 0
  %3141 = select i1 %3140, float %64, float 1.000000e+00
  %3142 = select i1 %3140, float %65, float 0.000000e+00
  %3143 = select i1 %3140, float %66, float 0.000000e+00
  %3144 = select i1 %3140, float %67, float 1.000000e+00
  %3145 = select i1 %3140, float %68, float %92
  %3146 = select i1 %3140, float %69, float %93
  %3147 = add i32 %56, 332
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = lshr i32 %3149, 16
  %3151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3150)  ; LegacyF16ToF32(value)
  %3152 = fmul fast float %3151, 0x3F50624DE0000000
  %3153 = add i32 %56, 136
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = lshr i32 %3155, 16
  %3157 = and i32 %3156, 255
  %3158 = lshr i32 %3155, 24
  %3159 = add i32 %56, 340
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %3161, 16
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = add i32 %56, 80
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = lshr i32 %3168, 22
  %3170 = shl nuw nsw i32 %3169, 5
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = shl i32 %3168, 4
  %3173 = and i32 %3172, 32752
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %3168, 7
  %3176 = and i32 %3175, 32752
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 3
  %3180 = fmul fast float %3179, 1.000000e+03
  %3181 = fmul fast float %3180, %642
  %3182 = call float @dx.op.unary.f32(i32 22, float %3181)  ; Frc(value)
  %3183 = fadd fast float %3182, %630
  %3184 = fmul fast float %3180, %644
  %3185 = call float @dx.op.unary.f32(i32 22, float %3184)  ; Frc(value)
  %3186 = fadd fast float %3185, %631
  %3187 = fmul fast float %3152, %3180
  %3188 = call float @dx.op.unary.f32(i32 22, float %3187)  ; Frc(value)
  %3189 = fmul fast float %3188, 0x401921FB60000000
  %3190 = fadd fast float %3189, %3171
  %3191 = call float @dx.op.unary.f32(i32 13, float %3190)  ; Sin(value)
  %3192 = call float @dx.op.unary.f32(i32 12, float %3190)  ; Cos(value)
  %3193 = fsub fast float -0.000000e+00, %3191
  %3194 = fadd fast float %3145, -5.000000e-01
  %3195 = fadd fast float %3146, -5.000000e-01
  %3196 = fmul fast float %3163, %3194
  %3197 = fmul fast float %3165, %3195
  %3198 = fadd fast float %3196, 5.000000e-01
  %3199 = fadd fast float %3197, 5.000000e-01
  %3200 = fmul fast float %3174, %3198
  %3201 = fmul fast float %3177, %3199
  %3202 = fmul fast float %3192, %3200
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3193, float %3201, float %3202)  ; FMad(a,b,c)
  %3204 = fmul fast float %3191, %3200
  %3205 = call float @dx.op.tertiary.f32(i32 46, float %3192, float %3201, float %3204)  ; FMad(a,b,c)
  %3206 = fadd fast float %3183, %3203
  %3207 = fadd fast float %3186, %3205
  %3208 = icmp ugt i32 %3157, 1
  %3209 = icmp ugt i32 %3155, 33554431
  %3210 = or i1 %3209, %3208
  br i1 %3210, label %3211, label %3236

; <label>:3211                                    ; preds = %3138
  %3212 = add i32 %56, 276
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = lshr i32 %3214, 16
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = fmul fast float %3179, %3216
  %3218 = call float @dx.op.unary.f32(i32 22, float %3217)  ; Frc(value)
  %3219 = mul nuw nsw i32 %3157, %3158
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3218, %3220
  %3222 = call float @dx.op.unary.f32(i32 27, float %3221)  ; Round_ni(value)
  %3223 = fptoui float %3222 to i32
  %3224 = urem i32 %3223, %3157
  %3225 = udiv i32 %3223, %3158
  %3226 = call float @dx.op.unary.f32(i32 22, float %3206)  ; Frc(value)
  %3227 = call float @dx.op.unary.f32(i32 22, float %3207)  ; Frc(value)
  %3228 = uitofp i32 %3224 to float
  %3229 = uitofp i32 %3225 to float
  %3230 = fadd fast float %3226, %3228
  %3231 = fadd fast float %3227, %3229
  %3232 = uitofp i32 %3157 to float
  %3233 = uitofp i32 %3158 to float
  %3234 = fdiv fast float %3230, %3232
  %3235 = fdiv fast float %3231, %3233
  br label %3236

; <label>:3236                                    ; preds = %3211, %3138
  %3237 = phi float [ %3234, %3211 ], [ %3206, %3138 ]
  %3238 = phi float [ %3235, %3211 ], [ %3207, %3138 ]
  %3239 = and i32 %3132, 256
  %3240 = icmp eq i32 %3239, 0
  br i1 %3240, label %3287, label %3241

; <label>:3241                                    ; preds = %3236
  %3242 = add i32 %56, 484
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = add i32 %3244, 0
  %3246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3246, %dx.types.Handle %107, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3248 = extractvalue %dx.types.ResRet.f32 %3247, 0
  %3249 = add i32 %56, 148
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = shl i32 %3251, 4
  %3253 = and i32 %3252, 32752
  %3254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3253)  ; LegacyF16ToF32(value)
  %3255 = lshr i32 %3251, 7
  %3256 = and i32 %3255, 32752
  %3257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3256)  ; LegacyF16ToF32(value)
  %3258 = fsub fast float 1.000000e+00, %702
  %3259 = call float @dx.op.binary.f32(i32 35, float %3258, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3260 = bitcast float %702 to i32
  %3261 = sitofp i32 %3260 to float
  %3262 = fadd fast float %3261, 0xC1CFBF8940000000
  %3263 = fmul fast float %3257, %3262
  %3264 = fadd fast float %3263, 0x41CFBF8940000000
  %3265 = fptosi float %3264 to i32
  %3266 = bitcast i32 %3265 to float
  %3267 = bitcast float %3259 to i32
  %3268 = sitofp i32 %3267 to float
  %3269 = fadd fast float %3268, 0xC1CFBF8940000000
  %3270 = fmul fast float %3269, %3257
  %3271 = fadd fast float %3270, 0x41CFBF8940000000
  %3272 = fptosi float %3271 to i32
  %3273 = bitcast i32 %3272 to float
  %3274 = fmul fast float %3266, %3254
  %3275 = fmul fast float %3273, %3254
  %3276 = fsub fast float %3259, %3274
  %3277 = fadd fast float %3275, %3259
  %3278 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3279 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3280 = fsub fast float %3248, %3278
  %3281 = fsub fast float %3279, %3278
  %3282 = bitcast float %3281 to i32
  %3283 = sub nsw i32 2129859010, %3282
  %3284 = bitcast i32 %3283 to float
  %3285 = fmul fast float %3284, %3280
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  br label %3287

; <label>:3287                                    ; preds = %3241, %3236
  %3288 = phi float [ %3286, %3241 ], [ %702, %3236 ]
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 128
  %3292 = icmp eq i32 %3291, 0
  br i1 %3292, label %3309, label %3293

; <label>:3293                                    ; preds = %3287
  %3294 = add i32 %56, 468
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = add i32 %3296, 0
  %3298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3298, %dx.types.Handle %107, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 524288
  %3304 = icmp ne i32 %3303, 0
  %3305 = fcmp fast ogt float %3300, 0x3FE0101020000000
  %3306 = select i1 %3305, float 1.000000e+00, float 0.000000e+00
  %3307 = select i1 %3304, float %3306, float %3300
  %3308 = fmul fast float %3307, %3288
  br label %3309

; <label>:3309                                    ; preds = %3293, %3287
  %3310 = phi float [ %3308, %3293 ], [ %3288, %3287 ]
  %3311 = fcmp fast ult float %3310, 0x3F70101020000000
  br i1 %3311, label %3999, label %3312

; <label>:3312                                    ; preds = %3309
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = and i32 %3314, 16
  %3316 = icmp eq i32 %3315, 0
  br i1 %3316, label %3515, label %3317

; <label>:3317                                    ; preds = %3312
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = add i32 %56, 420
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = add i32 %3322, 0
  %3324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3324, %dx.types.Handle %106, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = and i32 %3319, 255
  %3331 = uitofp i32 %3330 to float
  %3332 = lshr i32 %3319, 8
  %3333 = and i32 %3332, 255
  %3334 = uitofp i32 %3333 to float
  %3335 = fmul fast float %3329, %3331
  %3336 = fadd fast float %3335, %3334
  %3337 = fmul fast float %3336, 0x3F70101000000000
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %3339, 512
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3350, label %3342

; <label>:3342                                    ; preds = %3317
  %3343 = add i32 %56, 504
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = add i32 %3345, 0
  %3347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3347, %dx.types.Handle %107, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  br label %3350

; <label>:3350                                    ; preds = %3342, %3317
  %3351 = phi float [ %3349, %3342 ], [ 1.000000e+00, %3317 ]
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = and i32 %3353, 33554432
  %3355 = icmp eq i32 %3354, 0
  br i1 %3355, label %3462, label %3356

; <label>:3356                                    ; preds = %3350
  %3357 = add i32 %56, 272
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 65535
  %3361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3360)  ; LegacyF16ToF32(value)
  %3362 = lshr i32 %3359, 16
  %3363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3362)  ; LegacyF16ToF32(value)
  %3364 = add i32 %56, 276
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 65535
  %3368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3367)  ; LegacyF16ToF32(value)
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = lshr i32 %3370, 24
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F70101020000000
  %3374 = and i32 %3370, 255
  %3375 = uitofp i32 %3374 to float
  %3376 = fmul fast float %3375, 0x3F70101020000000
  %3377 = lshr i32 %3370, 8
  %3378 = and i32 %3377, 255
  %3379 = uitofp i32 %3378 to float
  %3380 = fmul fast float %3379, 0x3F70101020000000
  %3381 = lshr i32 %3370, 16
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101020000000
  %3385 = add i32 %56, 268
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = lshr i32 %3387, 24
  %3389 = uitofp i32 %3388 to float
  %3390 = fmul fast float %3389, 0x3F70101020000000
  %3391 = and i32 %3387, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = fmul fast float %3392, 0x3F70101020000000
  %3394 = lshr i32 %3387, 8
  %3395 = and i32 %3394, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = fmul fast float %3396, 0x3F70101020000000
  %3398 = lshr i32 %3387, 16
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3400, 0x3F70101020000000
  %3402 = bitcast float %3326 to i32
  %3403 = ashr i32 %3402, 1
  %3404 = sub nsw i32 1597463174, %3403
  %3405 = bitcast i32 %3404 to float
  %3406 = fmul fast float %3326, 5.000000e-01
  %3407 = fmul fast float %3405, %3405
  %3408 = fmul fast float %3407, %3406
  %3409 = fsub fast float 1.500000e+00, %3408
  %3410 = fmul fast float %3405, %3326
  %3411 = fmul fast float %3410, %3409
  %3412 = bitcast float %3327 to i32
  %3413 = ashr i32 %3412, 1
  %3414 = sub nsw i32 1597463174, %3413
  %3415 = bitcast i32 %3414 to float
  %3416 = fmul fast float %3327, 5.000000e-01
  %3417 = fmul fast float %3415, %3415
  %3418 = fmul fast float %3417, %3416
  %3419 = fsub fast float 1.500000e+00, %3418
  %3420 = fmul fast float %3415, %3327
  %3421 = fmul fast float %3420, %3419
  %3422 = bitcast float %3328 to i32
  %3423 = ashr i32 %3422, 1
  %3424 = sub nsw i32 1597463174, %3423
  %3425 = bitcast i32 %3424 to float
  %3426 = fmul fast float %3328, 5.000000e-01
  %3427 = fmul fast float %3425, %3425
  %3428 = fmul fast float %3427, %3426
  %3429 = fsub fast float 1.500000e+00, %3428
  %3430 = fmul fast float %3425, %3328
  %3431 = fmul fast float %3430, %3429
  %3432 = fsub fast float %3411, %3393
  %3433 = fsub fast float %3421, %3397
  %3434 = fsub fast float %3431, %3401
  %3435 = fmul fast float %3432, %3361
  %3436 = fmul fast float %3433, %3363
  %3437 = fmul fast float %3434, %3368
  %3438 = fadd fast float %3435, %3376
  %3439 = fadd fast float %3436, %3380
  %3440 = fadd fast float %3437, %3384
  %3441 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3443 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3444 = fmul fast float %3441, %3441
  %3445 = fmul fast float %3442, %3442
  %3446 = fmul fast float %3443, %3443
  %3447 = fsub fast float %3444, %3326
  %3448 = fsub fast float %3445, %3327
  %3449 = fsub fast float %3446, %3328
  %3450 = fmul fast float %3447, %3351
  %3451 = fmul fast float %3448, %3351
  %3452 = fmul fast float %3449, %3351
  %3453 = fadd fast float %3450, %3326
  %3454 = fadd fast float %3451, %3327
  %3455 = fadd fast float %3452, %3328
  %3456 = fadd fast float %3373, %3337
  %3457 = fsub fast float %3456, %3390
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fsub fast float %3458, %3337
  %3460 = fmul fast float %3459, %3351
  %3461 = fadd fast float %3460, %3337
  br label %3515

; <label>:3462                                    ; preds = %3350
  %3463 = and i32 %3353, 134217728
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3499, label %3465

; <label>:3465                                    ; preds = %3462
  %3466 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3467 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3468 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3469 = fadd fast float %3466, -5.000000e-01
  %3470 = fadd fast float %3467, -5.000000e-01
  %3471 = fadd fast float %3468, -5.000000e-01
  %3472 = fmul fast float %3469, %3351
  %3473 = fmul fast float %3470, %3351
  %3474 = fmul fast float %3471, %3351
  %3475 = fadd fast float %3472, 5.000000e-01
  %3476 = fadd fast float %3473, 5.000000e-01
  %3477 = fadd fast float %3474, 5.000000e-01
  %3478 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3479 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3480 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3481 = fmul fast float %3475, 2.000000e+00
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = fmul fast float %3482, %3478
  %3484 = fadd fast float %3483, %3481
  %3485 = fmul fast float %3484, %3478
  %3486 = fmul fast float %3476, 2.000000e+00
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %3487, %3479
  %3489 = fadd fast float %3488, %3486
  %3490 = fmul fast float %3489, %3479
  %3491 = fmul fast float %3477, 2.000000e+00
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3492, %3480
  %3494 = fadd fast float %3493, %3491
  %3495 = fmul fast float %3494, %3480
  %3496 = fmul fast float %3485, %3485
  %3497 = fmul fast float %3490, %3490
  %3498 = fmul fast float %3495, %3495
  br label %3515

; <label>:3499                                    ; preds = %3462
  %3500 = fmul fast float %618, %618
  %3501 = fmul fast float %619, %619
  %3502 = fmul fast float %620, %620
  %3503 = fadd fast float %3500, -1.000000e+00
  %3504 = fadd fast float %3501, -1.000000e+00
  %3505 = fadd fast float %3502, -1.000000e+00
  %3506 = fmul fast float %3351, %3503
  %3507 = fmul fast float %3351, %3504
  %3508 = fmul fast float %3351, %3505
  %3509 = fadd fast float %3506, 1.000000e+00
  %3510 = fadd fast float %3507, 1.000000e+00
  %3511 = fadd fast float %3508, 1.000000e+00
  %3512 = fmul fast float %3509, %3326
  %3513 = fmul fast float %3510, %3327
  %3514 = fmul fast float %3511, %3328
  br label %3515

; <label>:3515                                    ; preds = %3499, %3465, %3356, %3312
  %3516 = phi float [ %3461, %3356 ], [ %3337, %3465 ], [ %3337, %3499 ], [ 0x3FA23C0BE0000000, %3312 ]
  %3517 = phi float [ %3453, %3356 ], [ %3496, %3465 ], [ %3512, %3499 ], [ 1.000000e+00, %3312 ]
  %3518 = phi float [ %3454, %3356 ], [ %3497, %3465 ], [ %3513, %3499 ], [ 1.000000e+00, %3312 ]
  %3519 = phi float [ %3455, %3356 ], [ %3498, %3465 ], [ %3514, %3499 ], [ 1.000000e+00, %3312 ]
  %3520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.i32 %3520, 1
  %3522 = and i32 %3521, 1
  %3523 = icmp ne i32 %3522, 0
  %3524 = add i32 %56, 356
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 32
  %3528 = icmp ne i32 %3527, 0
  %3529 = and i1 %3523, %3528
  %3530 = select i1 %3529, float 1.000000e+00, float %3517
  %3531 = select i1 %3529, float 0x3FD3333340000000, float %3518
  %3532 = select i1 %3529, float 0x3FD3333340000000, float %3519
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 32
  %3536 = icmp eq i32 %3535, 0
  br i1 %3536, label %3609, label %3537

; <label>:3537                                    ; preds = %3515
  %3538 = add i32 %56, 140
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = add i32 %56, 436
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = add i32 %3543, 0
  %3545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3545, %dx.types.Handle %106, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = extractvalue %dx.types.ResRet.f32 %3546, 3
  %3551 = and i32 %3540, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = lshr i32 %3540, 8
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = lshr i32 %3540, 16
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = fmul fast float %3558, 0x3F70101000000000
  %3560 = fmul fast float %3547, %3552
  %3561 = fadd fast float %3560, %3555
  %3562 = fmul fast float %3561, 0x3F70101000000000
  %3563 = fadd fast float %3548, -5.000000e-01
  %3564 = fadd fast float %3550, -5.000000e-01
  %3565 = fmul fast float %3563, %3559
  %3566 = fmul fast float %3564, %3559
  %3567 = fadd fast float %3565, 5.000000e-01
  %3568 = fadd fast float %3566, 5.000000e-01
  %3569 = fmul fast float %3567, 2.000000e+00
  %3570 = fadd fast float %3569, -1.000000e+00
  %3571 = fmul fast float %3568, 2.000000e+00
  %3572 = fadd fast float %3571, -1.000000e+00
  %3573 = fadd fast float %3570, %3572
  %3574 = fmul fast float %3573, 5.000000e-01
  %3575 = fsub fast float %3570, %3572
  %3576 = fmul fast float %3575, 5.000000e-01
  %3577 = call float @dx.op.unary.f32(i32 6, float %3574)  ; FAbs(value)
  %3578 = fsub fast float 1.000000e+00, %3577
  %3579 = call float @dx.op.unary.f32(i32 6, float %3576)  ; FAbs(value)
  %3580 = fsub fast float %3578, %3579
  %3581 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3576, float %3580, float %3574, float %3576, float %3580)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = call float @dx.op.unary.f32(i32 25, float %3581)  ; Rsqrt(value)
  %3583 = fmul fast float %3574, %3582
  %3584 = fmul fast float %3576, %3582
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 67108864
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3605, label %3589

; <label>:3589                                    ; preds = %3537
  %3590 = add i32 %56, 328
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 65535
  %3594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3593)  ; LegacyF16ToF32(value)
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 65535
  %3598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3597)  ; LegacyF16ToF32(value)
  %3599 = lshr i32 %3592, 16
  %3600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3599)  ; LegacyF16ToF32(value)
  %3601 = fsub fast float %3562, %3600
  %3602 = fmul fast float %3601, %3594
  %3603 = fadd fast float %3602, %3598
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  br label %3605

; <label>:3605                                    ; preds = %3589, %3537
  %3606 = phi float [ %3604, %3589 ], [ %3562, %3537 ]
  %3607 = call float @dx.op.dot2.f32(i32 54, float %3583, float %3584, float %3141, float %3142)  ; Dot2(ax,ay,bx,by)
  %3608 = call float @dx.op.dot2.f32(i32 54, float %3583, float %3584, float %3143, float %3144)  ; Dot2(ax,ay,bx,by)
  br label %3609

; <label>:3609                                    ; preds = %3605, %3515
  %3610 = phi float [ %3606, %3605 ], [ 0x3FD6666660000000, %3515 ]
  %3611 = phi float [ %3607, %3605 ], [ 0.000000e+00, %3515 ]
  %3612 = phi float [ %3608, %3605 ], [ 0.000000e+00, %3515 ]
  %3613 = phi float [ %3549, %3605 ], [ 1.000000e+00, %3515 ]
  %3614 = add i32 %56, 208
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = lshr i32 %3616, 22
  %3618 = shl nuw nsw i32 %3617, 5
  %3619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3618)  ; LegacyF16ToF32(value)
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = and i32 %3621, 64
  %3623 = icmp eq i32 %3622, 0
  br i1 %3623, label %3657, label %3624

; <label>:3624                                    ; preds = %3609
  %3625 = add i32 %56, 452
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = add i32 %3627, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = and i32 %3631, 131072
  %3633 = icmp eq i32 %3632, 0
  %3634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3629, %dx.types.Handle %106, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = fmul fast float %601, %3635
  %3639 = fmul fast float %602, %3636
  %3640 = fmul fast float %603, %3637
  br i1 %3633, label %3647, label %3641

; <label>:3641                                    ; preds = %3624
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = fmul fast float %3643, %3638
  %3645 = fmul fast float %3643, %3639
  %3646 = fmul fast float %3643, %3640
  br label %3647

; <label>:3647                                    ; preds = %3641, %3624
  %3648 = phi float [ %3644, %3641 ], [ %3638, %3624 ]
  %3649 = phi float [ %3645, %3641 ], [ %3639, %3624 ]
  %3650 = phi float [ %3646, %3641 ], [ %3640, %3624 ]
  %3651 = fmul fast float %3648, %3619
  %3652 = select i1 %269, float %3651, float %3648
  %3653 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3649, float %3650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3654 = select i1 %269, float 0.000000e+00, float %3648
  %3655 = select i1 %269, float %3653, float %3649
  %3656 = select i1 %269, float 0.000000e+00, float %3650
  br label %3657

; <label>:3657                                    ; preds = %3647, %3609
  %3658 = phi float [ %3654, %3647 ], [ 0.000000e+00, %3609 ]
  %3659 = phi float [ %3655, %3647 ], [ 0.000000e+00, %3609 ]
  %3660 = phi float [ %3656, %3647 ], [ 0.000000e+00, %3609 ]
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 1024
  %3664 = icmp eq i32 %3663, 0
  br i1 %3664, label %3695, label %3665

; <label>:3665                                    ; preds = %3657
  %3666 = add i32 %56, 200
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 255
  %3670 = uitofp i32 %3669 to float
  %3671 = fmul fast float %3670, 0x3F70101020000000
  %3672 = lshr i32 %3668, 8
  %3673 = and i32 %3672, 255
  %3674 = uitofp i32 %3673 to float
  %3675 = fmul fast float %3674, 0x3F70101020000000
  %3676 = lshr i32 %3668, 16
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = fmul fast float %3678, 0x3F70101020000000
  %3680 = fmul fast float %3671, %3671
  %3681 = fmul fast float %3675, %3675
  %3682 = fmul fast float %3679, %3679
  %3683 = add i32 %56, 520
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = add i32 %3685, 0
  %3687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3687, %dx.types.Handle %107, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  %3692 = fmul fast float %3680, %3689
  %3693 = fmul fast float %3681, %3690
  %3694 = fmul fast float %3682, %3691
  br label %3695

; <label>:3695                                    ; preds = %3665, %3657
  %3696 = phi float [ %3692, %3665 ], [ 0.000000e+00, %3657 ]
  %3697 = phi float [ %3693, %3665 ], [ 0.000000e+00, %3657 ]
  %3698 = phi float [ %3694, %3665 ], [ 0.000000e+00, %3657 ]
  %3699 = fcmp fast ogt float %3696, 0.000000e+00
  %3700 = fcmp fast ogt float %3697, 0.000000e+00
  %3701 = fcmp fast ogt float %3698, 0.000000e+00
  %3702 = call float @dx.op.unary.f32(i32 23, float %3696)  ; Log(value)
  %3703 = call float @dx.op.unary.f32(i32 23, float %3697)  ; Log(value)
  %3704 = call float @dx.op.unary.f32(i32 23, float %3698)  ; Log(value)
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = lshr i32 %3706, 7
  %3708 = and i32 %3707, 32752
  %3709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3708)  ; LegacyF16ToF32(value)
  %3710 = fmul fast float %3702, 0xBFE62E4300000000
  %3711 = fmul fast float %3710, %3709
  %3712 = fmul fast float %3703, 0xBFE62E4300000000
  %3713 = fmul fast float %3712, %3709
  %3714 = fmul fast float %3704, 0xBFE62E4300000000
  %3715 = fmul fast float %3714, %3709
  %3716 = select i1 %3699, float %3711, float 1.270000e+02
  %3717 = select i1 %3700, float %3713, float 1.270000e+02
  %3718 = select i1 %3701, float %3715, float 1.270000e+02
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = and i32 %3720, 10240
  %3722 = icmp eq i32 %3721, 0
  br i1 %3722, label %3743, label %3723

; <label>:3723                                    ; preds = %3695
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = and i32 %3725, 2048
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3743, label %3728

; <label>:3728                                    ; preds = %3723
  %3729 = add i32 %56, 536
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = add i32 %3731, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3733, %dx.types.Handle %107, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 3
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = shl i32 %3737, 4
  %3739 = and i32 %3738, 32752
  %3740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3739)  ; LegacyF16ToF32(value)
  %3741 = fmul fast float %3740, %3735
  %3742 = call float @dx.op.binary.f32(i32 35, float %3741, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3743

; <label>:3743                                    ; preds = %3728, %3723, %3695
  %3744 = phi float [ %3742, %3728 ], [ 0x3F70101020000000, %3723 ], [ 0x3F70101020000000, %3695 ]
  %3745 = add i32 %56, 144
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = lshr i32 %3747, 8
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3530, float %3531, float %3532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = fmul fast float %3752, %3753
  %3755 = fadd fast float %3754, %3749
  %3756 = fmul fast float %3755, 0x3F70101020000000
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  br i1 %3129, label %3758, label %3793

; <label>:3758                                    ; preds = %3743
  %3759 = fmul fast float %3744, 2.000000e+00
  %3760 = fcmp fast olt float %3716, 1.270000e+02
  %3761 = fcmp fast olt float %3717, 1.270000e+02
  %3762 = fcmp fast olt float %3718, 1.270000e+02
  %3763 = fmul fast float %3716, 0xBFF7154760000000
  %3764 = fmul fast float %3763, %3759
  %3765 = fmul fast float %3717, 0xBFF7154760000000
  %3766 = fmul fast float %3765, %3759
  %3767 = fmul fast float %3718, 0xBFF7154760000000
  %3768 = fmul fast float %3767, %3759
  %3769 = call float @dx.op.unary.f32(i32 21, float %3764)  ; Exp(value)
  %3770 = call float @dx.op.unary.f32(i32 21, float %3766)  ; Exp(value)
  %3771 = call float @dx.op.unary.f32(i32 21, float %3768)  ; Exp(value)
  %3772 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3773 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3774 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3775 = fadd fast float %3772, -1.000000e+00
  %3776 = select i1 %3760, float %3775, float -1.000000e+00
  %3777 = fadd fast float %3773, -1.000000e+00
  %3778 = select i1 %3761, float %3777, float -1.000000e+00
  %3779 = fadd fast float %3774, -1.000000e+00
  %3780 = select i1 %3762, float %3779, float -1.000000e+00
  %3781 = fmul fast float %3776, %3310
  %3782 = fmul fast float %3778, %3310
  %3783 = fmul fast float %3780, %3310
  %3784 = fadd fast float %3781, 1.000000e+00
  %3785 = fadd fast float %3782, 1.000000e+00
  %3786 = fadd fast float %3783, 1.000000e+00
  %3787 = fmul fast float %3784, %3114
  %3788 = fmul fast float %3785, %3115
  %3789 = fmul fast float %3786, %3116
  %3790 = fmul fast float %3784, %3117
  %3791 = fmul fast float %3785, %3118
  %3792 = fmul fast float %3786, %3119
  br label %3793

; <label>:3793                                    ; preds = %3758, %3743
  %3794 = phi float [ %3787, %3758 ], [ %3114, %3743 ]
  %3795 = phi float [ %3788, %3758 ], [ %3115, %3743 ]
  %3796 = phi float [ %3789, %3758 ], [ %3116, %3743 ]
  %3797 = phi float [ %3790, %3758 ], [ %3117, %3743 ]
  %3798 = phi float [ %3791, %3758 ], [ %3118, %3743 ]
  %3799 = phi float [ %3792, %3758 ], [ %3119, %3743 ]
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = and i32 %3801, 3
  %3803 = icmp eq i32 %3802, 3
  br i1 %3803, label %3882, label %3804

; <label>:3804                                    ; preds = %3793
  %3805 = and i32 %3801, 16
  %3806 = icmp ne i32 %3805, 0
  %3807 = select i1 %3806, float %3310, float 0.000000e+00
  %3808 = icmp eq i32 %3802, 0
  br i1 %3808, label %3809, label %3837

; <label>:3809                                    ; preds = %3804
  %3810 = and i32 %3801, 64
  %3811 = icmp ne i32 %3810, 0
  %3812 = select i1 %3811, float %3310, float 0.000000e+00
  %3813 = fsub fast float %3530, %3794
  %3814 = fsub fast float %3531, %3795
  %3815 = fsub fast float %3532, %3796
  %3816 = fmul fast float %3807, %3813
  %3817 = fmul fast float %3807, %3814
  %3818 = fmul fast float %3807, %3815
  %3819 = fadd fast float %3816, %3794
  %3820 = fadd fast float %3817, %3795
  %3821 = fadd fast float %3818, %3796
  %3822 = fsub fast float %3516, %3123
  %3823 = fmul fast float %3807, %3822
  %3824 = fadd fast float %3823, %3123
  %3825 = fsub fast float %3658, %3797
  %3826 = fsub fast float %3659, %3798
  %3827 = fsub fast float %3660, %3799
  %3828 = fmul fast float %3812, %3825
  %3829 = fmul fast float %3812, %3826
  %3830 = fmul fast float %3812, %3827
  %3831 = fadd fast float %3828, %3797
  %3832 = fadd fast float %3829, %3798
  %3833 = fadd fast float %3830, %3799
  %3834 = fsub fast float %3757, %3127
  %3835 = fmul fast float %3807, %3834
  %3836 = fadd fast float %3835, %3127
  br label %3882

; <label>:3837                                    ; preds = %3804
  %3838 = icmp eq i32 %3802, 1
  br i1 %3838, label %3839, label %3852

; <label>:3839                                    ; preds = %3837
  %3840 = fadd fast float %3530, -1.000000e+00
  %3841 = fadd fast float %3531, -1.000000e+00
  %3842 = fadd fast float %3532, -1.000000e+00
  %3843 = fmul fast float %3807, %3840
  %3844 = fmul fast float %3807, %3841
  %3845 = fmul fast float %3807, %3842
  %3846 = fadd fast float %3843, 1.000000e+00
  %3847 = fadd fast float %3844, 1.000000e+00
  %3848 = fadd fast float %3845, 1.000000e+00
  %3849 = fmul fast float %3846, %3794
  %3850 = fmul fast float %3847, %3795
  %3851 = fmul fast float %3848, %3796
  br label %3882

; <label>:3852                                    ; preds = %3837
  %3853 = icmp eq i32 %3802, 2
  br i1 %3853, label %3854, label %3882

; <label>:3854                                    ; preds = %3852
  %3855 = call float @dx.op.unary.f32(i32 24, float %3530)  ; Sqrt(value)
  %3856 = call float @dx.op.unary.f32(i32 24, float %3531)  ; Sqrt(value)
  %3857 = call float @dx.op.unary.f32(i32 24, float %3532)  ; Sqrt(value)
  %3858 = fadd fast float %3855, -5.000000e-01
  %3859 = fadd fast float %3856, -5.000000e-01
  %3860 = fadd fast float %3857, -5.000000e-01
  %3861 = fmul fast float %3858, %3807
  %3862 = fmul fast float %3859, %3807
  %3863 = fmul fast float %3860, %3807
  %3864 = fadd fast float %3861, 5.000000e-01
  %3865 = fadd fast float %3862, 5.000000e-01
  %3866 = fadd fast float %3863, 5.000000e-01
  %3867 = fmul fast float %3864, 2.000000e+00
  %3868 = fsub fast float 1.000000e+00, %3867
  %3869 = fmul fast float %3868, %3794
  %3870 = fadd fast float %3869, %3867
  %3871 = fmul fast float %3870, %3794
  %3872 = fmul fast float %3865, 2.000000e+00
  %3873 = fsub fast float 1.000000e+00, %3872
  %3874 = fmul fast float %3873, %3795
  %3875 = fadd fast float %3874, %3872
  %3876 = fmul fast float %3875, %3795
  %3877 = fmul fast float %3866, 2.000000e+00
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3878, %3796
  %3880 = fadd fast float %3879, %3877
  %3881 = fmul fast float %3880, %3796
  br label %3882

; <label>:3882                                    ; preds = %3854, %3852, %3839, %3809, %3793
  %3883 = phi float [ %3794, %3793 ], [ %3871, %3854 ], [ %3794, %3852 ], [ %3849, %3839 ], [ %3819, %3809 ]
  %3884 = phi float [ %3795, %3793 ], [ %3876, %3854 ], [ %3795, %3852 ], [ %3850, %3839 ], [ %3820, %3809 ]
  %3885 = phi float [ %3796, %3793 ], [ %3881, %3854 ], [ %3796, %3852 ], [ %3851, %3839 ], [ %3821, %3809 ]
  %3886 = phi float [ %3797, %3793 ], [ %3797, %3854 ], [ %3797, %3852 ], [ %3797, %3839 ], [ %3831, %3809 ]
  %3887 = phi float [ %3798, %3793 ], [ %3798, %3854 ], [ %3798, %3852 ], [ %3798, %3839 ], [ %3832, %3809 ]
  %3888 = phi float [ %3799, %3793 ], [ %3799, %3854 ], [ %3799, %3852 ], [ %3799, %3839 ], [ %3833, %3809 ]
  %3889 = phi float [ %3123, %3793 ], [ %3123, %3854 ], [ %3123, %3852 ], [ %3123, %3839 ], [ %3824, %3809 ]
  %3890 = phi float [ %3127, %3793 ], [ %3127, %3854 ], [ %3127, %3852 ], [ %3127, %3839 ], [ %3836, %3809 ]
  %3891 = and i32 %3801, 12
  %3892 = icmp eq i32 %3891, 12
  br i1 %3892, label %3999, label %3893

; <label>:3893                                    ; preds = %3882
  %3894 = and i32 %3801, 2097184
  %3895 = icmp eq i32 %3894, 2097184
  %3896 = select i1 %3895, float %3310, float 0.000000e+00
  %3897 = and i32 %3801, 4194336
  %3898 = icmp eq i32 %3897, 4194336
  %3899 = select i1 %3898, float %3310, float 0.000000e+00
  %3900 = and i32 %3801, 8388640
  %3901 = icmp eq i32 %3900, 8388640
  %3902 = select i1 %3901, float %3310, float 0.000000e+00
  %3903 = and i32 %3801, 1024
  %3904 = icmp ne i32 %3903, 0
  %3905 = select i1 %3904, float %3310, float 0.000000e+00
  %3906 = and i32 %3801, 2048
  %3907 = icmp ne i32 %3906, 0
  %3908 = select i1 %3907, float %3310, float 0.000000e+00
  %3909 = icmp eq i32 %3891, 0
  br i1 %3909, label %3910, label %3935

; <label>:3910                                    ; preds = %3893
  %3911 = fsub fast float %3611, %3112
  %3912 = fsub fast float %3612, %3113
  %3913 = fmul fast float %3896, %3911
  %3914 = fmul fast float %3896, %3912
  %3915 = fadd fast float %3913, %3112
  %3916 = fadd fast float %3914, %3113
  %3917 = fsub fast float %3613, %3125
  %3918 = fmul fast float %3899, %3917
  %3919 = fadd fast float %3918, %3125
  %3920 = fsub fast float %3610, %3124
  %3921 = fmul fast float %3902, %3920
  %3922 = fadd fast float %3921, %3124
  %3923 = fsub fast float %3716, %3120
  %3924 = fsub fast float %3717, %3121
  %3925 = fsub fast float %3718, %3122
  %3926 = fmul fast float %3905, %3923
  %3927 = fmul fast float %3905, %3924
  %3928 = fmul fast float %3905, %3925
  %3929 = fadd fast float %3926, %3120
  %3930 = fadd fast float %3927, %3121
  %3931 = fadd fast float %3928, %3122
  %3932 = fsub fast float %3744, %3126
  %3933 = fmul fast float %3908, %3932
  %3934 = fadd fast float %3933, %3126
  br label %3999

; <label>:3935                                    ; preds = %3893
  %3936 = icmp eq i32 %3891, 4
  br i1 %3936, label %3937, label %3977

; <label>:3937                                    ; preds = %3935
  %3938 = fmul fast float %3896, %3611
  %3939 = fmul fast float %3896, %3612
  %3940 = fadd fast float %3938, %3112
  %3941 = fadd fast float %3939, %3113
  %3942 = call float @dx.op.binary.f32(i32 36, float %3125, float %3613)  ; FMin(a,b)
  %3943 = fsub fast float %3942, %3125
  %3944 = fmul fast float %3943, %3899
  %3945 = fadd fast float %3944, %3125
  %3946 = fadd fast float %3610, %3124
  %3947 = fmul fast float %3946, 0x3FF337FAE0000000
  %3948 = fmul fast float %3124, %3124
  %3949 = fmul fast float %3610, %3610
  %3950 = fadd fast float %3949, %3948
  %3951 = fmul fast float %3950, 0x3FE5152B00000000
  %3952 = fmul fast float %3124, 0xBFCC1F85E0000000
  %3953 = fmul fast float %3952, %3610
  %3954 = fadd fast float %3953, 0xBFE1363700000000
  %3955 = fadd fast float %3954, %3947
  %3956 = fsub fast float %3955, %3951
  %3957 = fmul fast float %3946, 0x3FBA6F0D00000000
  %3958 = fmul fast float %3950, 0x3FD0432880000000
  %3959 = fmul fast float %3124, 0xBFEF110800000000
  %3960 = fmul fast float %3959, %3610
  %3961 = fadd fast float %3960, 1.000000e+00
  %3962 = fsub fast float %3961, %3957
  %3963 = fadd fast float %3962, %3958
  %3964 = fdiv fast float %3956, %3963
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = fsub fast float %3965, %3124
  %3967 = fmul fast float %3966, %3902
  %3968 = fadd fast float %3967, %3124
  %3969 = fmul fast float %3905, %3716
  %3970 = fmul fast float %3905, %3717
  %3971 = fmul fast float %3905, %3718
  %3972 = fadd fast float %3969, %3120
  %3973 = fadd fast float %3970, %3121
  %3974 = fadd fast float %3971, %3122
  %3975 = fmul fast float %3908, %3744
  %3976 = fadd fast float %3975, %3126
  br label %3999

; <label>:3977                                    ; preds = %3935
  %3978 = icmp eq i32 %3891, 8
  br i1 %3978, label %3979, label %3999

; <label>:3979                                    ; preds = %3977
  %3980 = fmul fast float %3896, %3611
  %3981 = fmul fast float %3896, %3612
  %3982 = fadd fast float %3980, %3112
  %3983 = fadd fast float %3981, %3113
  %3984 = call float @dx.op.binary.f32(i32 36, float %3125, float %3613)  ; FMin(a,b)
  %3985 = fsub fast float %3984, %3125
  %3986 = fmul fast float %3985, %3899
  %3987 = fadd fast float %3986, %3125
  %3988 = fsub fast float %3610, %3124
  %3989 = fmul fast float %3902, %3988
  %3990 = fadd fast float %3989, %3124
  %3991 = fmul fast float %3905, %3716
  %3992 = fmul fast float %3905, %3717
  %3993 = fmul fast float %3905, %3718
  %3994 = fadd fast float %3991, %3120
  %3995 = fadd fast float %3992, %3121
  %3996 = fadd fast float %3993, %3122
  %3997 = fmul fast float %3908, %3744
  %3998 = fadd fast float %3997, %3126
  br label %3999

; <label>:3999                                    ; preds = %3979, %3977, %3937, %3910, %3882, %3309, %3128, %3111
  %4000 = phi float [ %3112, %3882 ], [ %3112, %3309 ], [ %3112, %3111 ], [ %3112, %3128 ], [ %3915, %3910 ], [ %3940, %3937 ], [ %3112, %3977 ], [ %3982, %3979 ]
  %4001 = phi float [ %3113, %3882 ], [ %3113, %3309 ], [ %3113, %3111 ], [ %3113, %3128 ], [ %3916, %3910 ], [ %3941, %3937 ], [ %3113, %3977 ], [ %3983, %3979 ]
  %4002 = phi float [ %3883, %3882 ], [ %3114, %3309 ], [ %3114, %3111 ], [ %3114, %3128 ], [ %3883, %3910 ], [ %3883, %3937 ], [ %3883, %3977 ], [ %3883, %3979 ]
  %4003 = phi float [ %3884, %3882 ], [ %3115, %3309 ], [ %3115, %3111 ], [ %3115, %3128 ], [ %3884, %3910 ], [ %3884, %3937 ], [ %3884, %3977 ], [ %3884, %3979 ]
  %4004 = phi float [ %3885, %3882 ], [ %3116, %3309 ], [ %3116, %3111 ], [ %3116, %3128 ], [ %3885, %3910 ], [ %3885, %3937 ], [ %3885, %3977 ], [ %3885, %3979 ]
  %4005 = phi float [ %3886, %3882 ], [ %3117, %3309 ], [ %3117, %3111 ], [ %3117, %3128 ], [ %3886, %3910 ], [ %3886, %3937 ], [ %3886, %3977 ], [ %3886, %3979 ]
  %4006 = phi float [ %3887, %3882 ], [ %3118, %3309 ], [ %3118, %3111 ], [ %3118, %3128 ], [ %3887, %3910 ], [ %3887, %3937 ], [ %3887, %3977 ], [ %3887, %3979 ]
  %4007 = phi float [ %3888, %3882 ], [ %3119, %3309 ], [ %3119, %3111 ], [ %3119, %3128 ], [ %3888, %3910 ], [ %3888, %3937 ], [ %3888, %3977 ], [ %3888, %3979 ]
  %4008 = phi float [ %3120, %3882 ], [ %3120, %3309 ], [ %3120, %3111 ], [ %3120, %3128 ], [ %3929, %3910 ], [ %3972, %3937 ], [ %3120, %3977 ], [ %3994, %3979 ]
  %4009 = phi float [ %3121, %3882 ], [ %3121, %3309 ], [ %3121, %3111 ], [ %3121, %3128 ], [ %3930, %3910 ], [ %3973, %3937 ], [ %3121, %3977 ], [ %3995, %3979 ]
  %4010 = phi float [ %3122, %3882 ], [ %3122, %3309 ], [ %3122, %3111 ], [ %3122, %3128 ], [ %3931, %3910 ], [ %3974, %3937 ], [ %3122, %3977 ], [ %3996, %3979 ]
  %4011 = phi float [ %3889, %3882 ], [ %3123, %3309 ], [ %3123, %3111 ], [ %3123, %3128 ], [ %3889, %3910 ], [ %3889, %3937 ], [ %3889, %3977 ], [ %3889, %3979 ]
  %4012 = phi float [ %3124, %3882 ], [ %3124, %3309 ], [ %3124, %3111 ], [ %3124, %3128 ], [ %3922, %3910 ], [ %3968, %3937 ], [ %3124, %3977 ], [ %3990, %3979 ]
  %4013 = phi float [ %3125, %3882 ], [ %3125, %3309 ], [ %3125, %3111 ], [ %3125, %3128 ], [ %3919, %3910 ], [ %3945, %3937 ], [ %3125, %3977 ], [ %3987, %3979 ]
  %4014 = phi float [ %3126, %3882 ], [ %3126, %3309 ], [ %3126, %3111 ], [ %3126, %3128 ], [ %3934, %3910 ], [ %3976, %3937 ], [ %3126, %3977 ], [ %3998, %3979 ]
  %4015 = phi float [ %3890, %3882 ], [ %3127, %3309 ], [ %3127, %3111 ], [ %3127, %3128 ], [ %3890, %3910 ], [ %3890, %3937 ], [ %3890, %3977 ], [ %3890, %3979 ]
  %4016 = add i32 %56, 360
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.i32 %4017, 1
  %4020 = bitcast i32 %4018 to float
  %4021 = bitcast i32 %4019 to float
  %4022 = fcmp fast oge float %4020, 0.000000e+00
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = select i1 %4022, float %4020, float %4024
  %4026 = fadd fast float %4025, %211
  %4027 = fmul fast float %4021, %212
  %4028 = add i32 %56, 488
  %4029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.i32 %4029, 0
  %4031 = add i32 %4030, 0
  %4032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4032, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = fmul fast float %4027, %4034
  %4036 = fadd fast float %4026, %4035
  %4037 = and i32 %203, 65535
  %4038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4037)  ; LegacyF16ToF32(value)
  %4039 = lshr i32 %203, 16
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = and i32 %204, 65535
  %4042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4041)  ; LegacyF16ToF32(value)
  %4043 = fmul fast float %4038, %4002
  %4044 = fmul fast float %4040, %4003
  %4045 = fmul fast float %4042, %4004
  %4046 = shl i32 %205, 4
  %4047 = and i32 %4046, 32752
  %4048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4047)  ; LegacyF16ToF32(value)
  %4049 = lshr i32 %205, 7
  %4050 = and i32 %4049, 32752
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = lshr i32 %205, 22
  %4053 = shl nuw nsw i32 %4052, 5
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = and i32 %206, 65535
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = fmul fast float %4048, %4005
  %4058 = fmul fast float %4057, %4056
  %4059 = fmul fast float %4051, %4006
  %4060 = fmul fast float %4059, %4056
  %4061 = fmul fast float %4054, %4007
  %4062 = fmul fast float %4061, %4056
  %4063 = call float @dx.op.dot2.f32(i32 54, float %4000, float %4001, float %4000, float %4001)  ; Dot2(ax,ay,bx,by)
  %4064 = fmul fast float %4063, 0x3FE3333340000000
  %4065 = fsub fast float 1.000000e+00, %4064
  %4066 = call float @dx.op.dot3.f32(i32 55, float %4000, float %4001, float %4065, float %4000, float %4001, float %4065)  ; Dot3(ax,ay,az,bx,by,bz)
  %4067 = call float @dx.op.unary.f32(i32 25, float %4066)  ; Rsqrt(value)
  %4068 = fmul fast float %4067, %4000
  %4069 = fmul fast float %4067, %4001
  %4070 = fmul fast float %4065, %4067
  %4071 = fmul fast float %4070, %117
  %4072 = fmul fast float %4070, %118
  %4073 = fmul fast float %4070, %119
  %4074 = fmul fast float %4068, %85
  %4075 = fmul fast float %4068, %86
  %4076 = fmul fast float %4068, %87
  %4077 = fadd fast float %4071, %4074
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = fmul fast float %129, %4069
  %4081 = fmul fast float %130, %4069
  %4082 = fmul fast float %131, %4069
  %4083 = fadd fast float %4077, %4080
  %4084 = fadd fast float %4078, %4081
  %4085 = fadd fast float %4079, %4082
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4083, float %4084, float %4085)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = call float @dx.op.unary.f32(i32 25, float %4086)  ; Rsqrt(value)
  %4088 = fmul fast float %4083, %4087
  %4089 = fmul fast float %4084, %4087
  %4090 = fmul fast float %4085, %4087
  %4091 = icmp eq i32 %59, 65535
  br i1 %4091, label %4637, label %4092

; <label>:4092                                    ; preds = %3999
  %4093 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4094 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %4095 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4096 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4097 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %4098 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4099 = fadd fast float %4093, %60
  %4100 = fadd fast float %4094, %61
  %4101 = fadd fast float %4095, %62
  %4102 = fadd fast float %4096, %60
  %4103 = fadd fast float %4097, %61
  %4104 = fadd fast float %4098, %62
  %4105 = mul i32 %59, 48
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = add i32 %4105, 16
  %4111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.ResRet.f32 %4111, 1
  %4114 = extractvalue %dx.types.ResRet.f32 %4111, 2
  %4115 = add i32 %4105, 32
  %4116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4120 = extractvalue %dx.types.ResRet.f32 %4116, 3
  %4121 = bitcast float %4120 to i32
  %4122 = fmul fast float %4107, %60
  %4123 = fmul fast float %4108, %61
  %4124 = fmul fast float %4109, %62
  %4125 = fsub fast float %4122, %4112
  %4126 = fsub fast float %4123, %4113
  %4127 = fsub fast float %4124, %4114
  %4128 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4129 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4130 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4131 = fmul fast float %4128, %4117
  %4132 = fmul fast float %4129, %4118
  %4133 = fmul fast float %4130, %4119
  %4134 = fadd fast float %4117, -1.000000e+00
  %4135 = fadd fast float %4118, -1.000000e+00
  %4136 = fadd fast float %4119, -1.000000e+00
  %4137 = call float @dx.op.unary.f32(i32 27, float %4131)  ; Round_ni(value)
  %4138 = call float @dx.op.unary.f32(i32 27, float %4132)  ; Round_ni(value)
  %4139 = call float @dx.op.unary.f32(i32 27, float %4133)  ; Round_ni(value)
  %4140 = call float @dx.op.binary.f32(i32 36, float %4137, float %4134)  ; FMin(a,b)
  %4141 = call float @dx.op.binary.f32(i32 36, float %4138, float %4135)  ; FMin(a,b)
  %4142 = call float @dx.op.binary.f32(i32 36, float %4139, float %4136)  ; FMin(a,b)
  %4143 = fmul fast float %4142, %4118
  %4144 = fadd fast float %4143, %4141
  %4145 = fmul fast float %4144, %4117
  %4146 = fadd fast float %4145, %4140
  %4147 = fptosi float %4146 to i32
  %4148 = add nsw i32 %4147, %4121
  %4149 = shl nsw i32 %4148, 2
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = lshr i32 %4151, 16
  %4153 = icmp eq i32 %4152, 0
  br i1 %4153, label %4603, label %4154

; <label>:4154                                    ; preds = %4092
  br label %4155

; <label>:4155                                    ; preds = %4279, %4154
  %4156 = phi i32 [ %4181, %4279 ], [ %4152, %4154 ]
  %4157 = phi float [ %4280, %4279 ], [ 0.000000e+00, %4154 ]
  %4158 = phi float [ %4281, %4279 ], [ %4036, %4154 ]
  %4159 = phi float [ %4282, %4279 ], [ %4015, %4154 ]
  %4160 = phi float [ %4283, %4279 ], [ %4008, %4154 ]
  %4161 = phi float [ %4284, %4279 ], [ %4009, %4154 ]
  %4162 = phi float [ %4285, %4279 ], [ %4010, %4154 ]
  %4163 = phi float [ %4286, %4279 ], [ 0.000000e+00, %4154 ]
  %4164 = phi float [ %4287, %4279 ], [ 0.000000e+00, %4154 ]
  %4165 = phi float [ %4288, %4279 ], [ %4058, %4154 ]
  %4166 = phi float [ %4289, %4279 ], [ %4060, %4154 ]
  %4167 = phi float [ %4290, %4279 ], [ %4062, %4154 ]
  %4168 = phi float [ %4291, %4279 ], [ %4088, %4154 ]
  %4169 = phi float [ %4292, %4279 ], [ %4089, %4154 ]
  %4170 = phi float [ %4293, %4279 ], [ %4090, %4154 ]
  %4171 = phi float [ %4294, %4279 ], [ %4013, %4154 ]
  %4172 = phi float [ %4295, %4279 ], [ %4012, %4154 ]
  %4173 = phi float [ %4296, %4279 ], [ 0.000000e+00, %4154 ]
  %4174 = phi float [ %4297, %4279 ], [ %4011, %4154 ]
  %4175 = phi float [ %4298, %4279 ], [ %4043, %4154 ]
  %4176 = phi float [ %4299, %4279 ], [ %4044, %4154 ]
  %4177 = phi float [ %4300, %4279 ], [ %4045, %4154 ]
  %4178 = shl nuw nsw i32 %4156, 2
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = lshr i32 %4180, 16
  %4182 = shl i32 %4180, 8
  %4183 = and i32 %4182, 16776960
  %4184 = or i32 %4183, 48
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = or i32 %4183, 64
  %4190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.i32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.i32 %4190, 1
  %4193 = or i32 %4183, 80
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 3
  %4197 = or i32 %4183, 96
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4203 = or i32 %4183, 112
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4206 = or i32 %4183, 128
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = or i32 %4183, 144
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = or i32 %4183, 160
  %4219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.ResRet.f32 %4219, 3
  %4224 = or i32 %4183, 192
  %4225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.i32 %4225, 0
  %4227 = or i32 %4183, 208
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = or i32 %4183, 248
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4240 = or i32 %4183, 16
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4245 = extractvalue %dx.types.ResRet.f32 %4241, 3
  %4246 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4247 = or i32 %4183, 32
  %4248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = extractvalue %dx.types.ResRet.f32 %4248, 3
  %4253 = call float @dx.op.dot4.f32(i32 56, float %4249, float %4250, float %4251, float %4252, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4254 = call float @dx.op.unary.f32(i32 27, float %4239)  ; Round_ni(value)
  %4255 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4256 = call float @dx.op.unary.f32(i32 27, float %4246)  ; Round_ni(value)
  %4257 = call float @dx.op.unary.f32(i32 6, float %4256)  ; FAbs(value)
  %4258 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4259 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4260 = fadd fast float %4257, %4255
  %4261 = fadd fast float %4260, %4259
  %4262 = fcmp fast oeq float %4261, 0.000000e+00
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %4099, float %4100, float %4101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %4099, float %4100, float %4101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %4102, float %4103, float %4104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %4102, float %4103, float %4104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4267 = fsub fast float %4263, %4239
  %4268 = fsub fast float %4265, %4239
  %4269 = fsub fast float %4264, %4246
  %4270 = fsub fast float %4266, %4246
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4186, float %4187, float %4188, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4274 = fadd fast float %4273, %4271
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4277 = fcmp fast ogt float %4275, %4276
  %4278 = and i1 %4262, %4277
  br i1 %4278, label %4302, label %4279

; <label>:4279                                    ; preds = %4589, %4385, %4302, %4155
  %4280 = phi float [ %4157, %4302 ], [ %4388, %4385 ], [ %4388, %4589 ], [ %4157, %4155 ]
  %4281 = phi float [ %4158, %4302 ], [ %4158, %4385 ], [ %4565, %4589 ], [ %4158, %4155 ]
  %4282 = phi float [ %4159, %4302 ], [ %4159, %4385 ], [ %4563, %4589 ], [ %4159, %4155 ]
  %4283 = phi float [ %4160, %4302 ], [ %4160, %4385 ], [ %4541, %4589 ], [ %4160, %4155 ]
  %4284 = phi float [ %4161, %4302 ], [ %4161, %4385 ], [ %4542, %4589 ], [ %4161, %4155 ]
  %4285 = phi float [ %4162, %4302 ], [ %4162, %4385 ], [ %4543, %4589 ], [ %4162, %4155 ]
  %4286 = phi float [ %4163, %4302 ], [ %4163, %4385 ], [ %4512, %4589 ], [ %4163, %4155 ]
  %4287 = phi float [ %4164, %4302 ], [ %4164, %4385 ], [ %4510, %4589 ], [ %4164, %4155 ]
  %4288 = phi float [ %4165, %4302 ], [ %4165, %4385 ], [ %4599, %4589 ], [ %4165, %4155 ]
  %4289 = phi float [ %4166, %4302 ], [ %4166, %4385 ], [ %4600, %4589 ], [ %4166, %4155 ]
  %4290 = phi float [ %4167, %4302 ], [ %4167, %4385 ], [ %4601, %4589 ], [ %4167, %4155 ]
  %4291 = phi float [ %4168, %4302 ], [ %4168, %4385 ], [ %4491, %4589 ], [ %4168, %4155 ]
  %4292 = phi float [ %4169, %4302 ], [ %4169, %4385 ], [ %4492, %4589 ], [ %4169, %4155 ]
  %4293 = phi float [ %4170, %4302 ], [ %4170, %4385 ], [ %4493, %4589 ], [ %4170, %4155 ]
  %4294 = phi float [ %4171, %4302 ], [ %4171, %4385 ], [ %4521, %4589 ], [ %4171, %4155 ]
  %4295 = phi float [ %4172, %4302 ], [ %4172, %4385 ], [ %4518, %4589 ], [ %4172, %4155 ]
  %4296 = phi float [ %4173, %4302 ], [ %4173, %4385 ], [ %4515, %4589 ], [ %4173, %4155 ]
  %4297 = phi float [ %4174, %4302 ], [ %4174, %4385 ], [ %4508, %4589 ], [ %4174, %4155 ]
  %4298 = phi float [ %4175, %4302 ], [ %4175, %4385 ], [ %4503, %4589 ], [ %4175, %4155 ]
  %4299 = phi float [ %4176, %4302 ], [ %4176, %4385 ], [ %4504, %4589 ], [ %4176, %4155 ]
  %4300 = phi float [ %4177, %4302 ], [ %4177, %4385 ], [ %4505, %4589 ], [ %4177, %4155 ]
  %4301 = icmp eq i32 %4181, 0
  br i1 %4301, label %4602, label %4155

; <label>:4302                                    ; preds = %4155
  %4303 = extractvalue %dx.types.ResRet.f32 %4185, 3
  %4304 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4305 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4309 = extractvalue %dx.types.ResRet.i32 %4190, 3
  %4310 = extractvalue %dx.types.ResRet.i32 %4190, 2
  %4311 = bitcast float %4303 to i32
  %4312 = add i32 %4309, 0
  %4313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4312, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4313, %dx.types.Handle %4314, float %4239, float %4246, float undef, float undef, i32 0, i32 0, i32 undef, float %4267, float %4269, float undef, float %4268, float %4270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = fmul fast float %4316, %4308
  %4318 = fadd fast float %4317, %4307
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4239, %4199
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4246, float %4320)  ; FMad(a,b,c)
  %4322 = fadd fast float %4321, %4306
  %4323 = fmul fast float %4239, %4201
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4246, float %4323)  ; FMad(a,b,c)
  %4325 = fadd fast float %4324, %4305
  %4326 = fmul fast float %4267, %4199
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4269, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4267, %4201
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4269, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4268, %4199
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4270, float %4330)  ; FMad(a,b,c)
  %4332 = fmul fast float %4268, %4201
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4270, float %4332)  ; FMad(a,b,c)
  %4334 = add i32 %4310, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4335, %dx.types.Handle %4314, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = and i32 %4311, 1024
  %4339 = icmp ne i32 %4338, 0
  %4340 = fcmp fast ogt float %4337, 0x3FE0101020000000
  %4341 = uitofp i1 %4340 to float
  %4342 = select i1 %4339, float %4341, float %4337
  %4343 = and i32 %4311, 8192
  %4344 = icmp ne i32 %4343, 0
  %4345 = select i1 %4344, float %4304, float 1.000000e+00
  %4346 = fmul fast float %4239, 2.000000e+00
  %4347 = fadd fast float %4346, -1.000000e+00
  %4348 = call float @dx.op.unary.f32(i32 6, float %4347)  ; FAbs(value)
  %4349 = fmul fast float %4348, %4232
  %4350 = fsub fast float %4349, %4232
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fmul fast float %4246, 2.000000e+00
  %4353 = fadd fast float %4352, -1.000000e+00
  %4354 = call float @dx.op.unary.f32(i32 6, float %4353)  ; FAbs(value)
  %4355 = fmul fast float %4354, %4233
  %4356 = fsub fast float %4355, %4233
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fmul fast float %4258, %4195
  %4359 = fsub fast float %4358, %4195
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4319, %4345
  %4362 = fmul fast float %4361, %4316
  %4363 = fmul fast float %4362, %4351
  %4364 = fmul fast float %4363, %4342
  %4365 = fmul fast float %4364, %4357
  %4366 = fmul fast float %4365, %4360
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4369 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4370 = fsub fast float %4275, %4369
  %4371 = fmul fast float %4370, %4368
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4366, %4196
  %4374 = fadd fast float %4366, %4196
  %4375 = fmul fast float %4374, %4205
  %4376 = fsub fast float %4375, %4205
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = and i32 %4311, 128
  %4379 = icmp ne i32 %4378, 0
  %4380 = select i1 %4379, float %4377, float %4373
  %4381 = fmul fast float %4380, %4372
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = fcmp fast ugt float %4381, %4383
  br i1 %4384, label %4385, label %4279

; <label>:4385                                    ; preds = %4302
  %4386 = select i1 %4344, float %4381, float 0.000000e+00
  %4387 = fadd fast float %4386, %4157
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  br i1 %4344, label %4279, label %4389

; <label>:4389                                    ; preds = %4385
  %4390 = and i32 %4311, 4
  %4391 = and i32 %4311, 8
  %4392 = add i32 %4191, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4393, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4395, 3
  %4400 = bitcast float %4217 to i32
  %4401 = and i32 %4400, 255
  %4402 = uitofp i32 %4401 to float
  %4403 = lshr i32 %4400, 8
  %4404 = and i32 %4403, 255
  %4405 = uitofp i32 %4404 to float
  %4406 = fmul fast float %4399, %4402
  %4407 = fadd fast float %4406, %4405
  %4408 = fmul fast float %4407, 0x3F70101000000000
  %4409 = add i32 %4192, 0
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4410, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = bitcast float %4211 to i32
  %4417 = and i32 %4416, 255
  %4418 = uitofp i32 %4417 to float
  %4419 = lshr i32 %4416, 8
  %4420 = and i32 %4419, 255
  %4421 = uitofp i32 %4420 to float
  %4422 = lshr i32 %4416, 16
  %4423 = and i32 %4422, 255
  %4424 = uitofp i32 %4423 to float
  %4425 = fmul fast float %4424, 0x3F70101000000000
  %4426 = fmul fast float %4412, %4418
  %4427 = fadd fast float %4426, %4421
  %4428 = fmul fast float %4427, 0x3F70101000000000
  %4429 = fadd fast float %4413, -5.000000e-01
  %4430 = fadd fast float %4415, -5.000000e-01
  %4431 = fmul fast float %4429, %4425
  %4432 = fmul fast float %4430, %4425
  %4433 = fadd fast float %4431, 5.000000e-01
  %4434 = fadd fast float %4432, 5.000000e-01
  %4435 = fmul fast float %4396, %4220
  %4436 = fmul fast float %4397, %4221
  %4437 = fmul fast float %4398, %4222
  %4438 = fmul fast float %4433, 2.000000e+00
  %4439 = fadd fast float %4438, -1.000000e+00
  %4440 = fmul fast float %4434, 2.000000e+00
  %4441 = fadd fast float %4440, -1.000000e+00
  %4442 = fadd fast float %4439, %4441
  %4443 = fmul fast float %4442, 5.000000e-01
  %4444 = fsub fast float %4439, %4441
  %4445 = fmul fast float %4444, 5.000000e-01
  %4446 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4447 = fsub fast float 1.000000e+00, %4446
  %4448 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4449 = fsub fast float %4447, %4448
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4445, float %4449, float %4443, float %4445, float %4449)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = call float @dx.op.unary.f32(i32 25, float %4450)  ; Rsqrt(value)
  %4452 = fmul fast float %4443, %4451
  %4453 = fmul fast float %4445, %4451
  %4454 = fmul fast float %4451, %4449
  %4455 = fmul fast float %4454, %4186
  %4456 = fmul fast float %4454, %4187
  %4457 = fmul fast float %4454, %4188
  %4458 = fmul fast float %4452, %4208
  %4459 = fmul fast float %4452, %4209
  %4460 = fmul fast float %4452, %4210
  %4461 = fadd fast float %4458, %4455
  %4462 = fadd fast float %4459, %4456
  %4463 = fadd fast float %4460, %4457
  %4464 = fmul fast float %4453, %4214
  %4465 = fmul fast float %4453, %4215
  %4466 = fmul fast float %4453, %4216
  %4467 = fadd fast float %4461, %4464
  %4468 = fadd fast float %4462, %4465
  %4469 = fadd fast float %4463, %4466
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = call float @dx.op.unary.f32(i32 25, float %4470)  ; Rsqrt(value)
  %4472 = fmul fast float %4467, %4471
  %4473 = fmul fast float %4468, %4471
  %4474 = fmul fast float %4469, %4471
  %4475 = icmp ne i32 %4391, 0
  %4476 = select i1 %4475, float 1.000000e+00, float 0.000000e+00
  %4477 = fmul fast float %4381, %4476
  %4478 = and i32 %4311, 1
  %4479 = icmp eq i32 %4478, 0
  br i1 %4479, label %4480, label %4484

; <label>:4480                                    ; preds = %4389
  %4481 = fsub fast float %4472, %4168
  %4482 = fsub fast float %4473, %4169
  %4483 = fsub fast float %4474, %4170
  br label %4484

; <label>:4484                                    ; preds = %4480, %4389
  %4485 = phi float [ %4481, %4480 ], [ %4472, %4389 ]
  %4486 = phi float [ %4482, %4480 ], [ %4473, %4389 ]
  %4487 = phi float [ %4483, %4480 ], [ %4474, %4389 ]
  %4488 = fmul float %4487, %4477
  %4489 = fmul float %4486, %4477
  %4490 = fmul float %4485, %4477
  %4491 = fadd fast float %4490, %4168
  %4492 = fadd fast float %4489, %4169
  %4493 = fadd fast float %4488, %4170
  %4494 = icmp ne i32 %4390, 0
  %4495 = select i1 %4494, float 1.000000e+00, float 0.000000e+00
  %4496 = fmul fast float %4381, %4495
  %4497 = fsub fast float %4435, %4175
  %4498 = fsub fast float %4436, %4176
  %4499 = fsub fast float %4437, %4177
  %4500 = fmul fast float %4497, %4496
  %4501 = fmul fast float %4498, %4496
  %4502 = fmul fast float %4499, %4496
  %4503 = fadd fast float %4500, %4175
  %4504 = fadd fast float %4501, %4176
  %4505 = fadd fast float %4502, %4177
  %4506 = fsub fast float %4408, %4174
  %4507 = fmul fast float %4506, %4496
  %4508 = fadd fast float %4507, %4174
  %4509 = fmul fast float %4496, %4164
  %4510 = fsub fast float %4164, %4509
  %4511 = fmul fast float %4496, %4163
  %4512 = fsub fast float %4163, %4511
  %4513 = bitcast float %4229 to i32
  %4514 = fadd fast float %4381, %4173
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fsub fast float %4428, %4172
  %4517 = fmul fast float %4516, %4477
  %4518 = fadd fast float %4517, %4172
  %4519 = fsub fast float %4414, %4171
  %4520 = fmul fast float %4519, %4477
  %4521 = fadd fast float %4520, %4171
  br i1 %4479, label %4530, label %4522

; <label>:4522                                    ; preds = %4484
  %4523 = and i32 %4311, 32768
  %4524 = icmp eq i32 %4523, 0
  br i1 %4524, label %4540, label %4525

; <label>:4525                                    ; preds = %4522
  %4526 = fmul fast float %4477, 1.270000e+02
  %4527 = fadd fast float %4526, %4160
  %4528 = fadd fast float %4526, %4161
  %4529 = fadd fast float %4526, %4162
  br label %4540

; <label>:4530                                    ; preds = %4484
  %4531 = fsub fast float 1.270000e+02, %4160
  %4532 = fsub fast float 1.270000e+02, %4161
  %4533 = fsub fast float 1.270000e+02, %4162
  %4534 = fmul fast float %4477, %4531
  %4535 = fmul fast float %4477, %4532
  %4536 = fmul fast float %4477, %4533
  %4537 = fadd fast float %4534, %4160
  %4538 = fadd fast float %4535, %4161
  %4539 = fadd fast float %4536, %4162
  br label %4540

; <label>:4540                                    ; preds = %4530, %4525, %4522
  %4541 = phi float [ %4527, %4525 ], [ %4160, %4522 ], [ %4537, %4530 ]
  %4542 = phi float [ %4528, %4525 ], [ %4161, %4522 ], [ %4538, %4530 ]
  %4543 = phi float [ %4529, %4525 ], [ %4162, %4522 ], [ %4539, %4530 ]
  %4544 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4436, float %4437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4548 = fmul fast float %4547, %4544
  %4549 = fadd fast float %4548, %4546
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = bitcast float %4223 to i32
  %4552 = and i32 %4551, 65535
  %4553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4552)  ; LegacyF16ToF32(value)
  %4554 = lshr i32 %4551, 16
  %4555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4554)  ; LegacyF16ToF32(value)
  %4556 = fcmp fast oge float %4553, 0.000000e+00
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = select i1 %4556, float %4553, float %4558
  %4560 = fadd fast float %4559, %4555
  %4561 = fsub fast float %4550, %4159
  %4562 = fmul fast float %4561, %4381
  %4563 = fadd fast float %4562, %4159
  %4564 = fmul fast float %4560, %4381
  %4565 = call float @dx.op.binary.f32(i32 35, float %4158, float %4564)  ; FMax(a,b)
  %4566 = and i32 %4311, 16
  %4567 = icmp eq i32 %4566, 0
  br i1 %4567, label %4589, label %4568

; <label>:4568                                    ; preds = %4540
  %4569 = add i32 %4226, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4569, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4570, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = and i32 %4513, 65535
  %4576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4575)  ; LegacyF16ToF32(value)
  %4577 = fmul fast float %4572, %4220
  %4578 = fmul fast float %4573, %4221
  %4579 = fmul fast float %4574, %4222
  %4580 = and i32 %4311, 16384
  %4581 = icmp ne i32 %4580, 0
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 0
  %4584 = select i1 %4581, float %4583, float 1.000000e+00
  %4585 = fmul fast float %4584, %4576
  %4586 = fmul fast float %4577, %4585
  %4587 = fmul fast float %4578, %4585
  %4588 = fmul fast float %4579, %4585
  br label %4589

; <label>:4589                                    ; preds = %4568, %4540
  %4590 = phi float [ %4586, %4568 ], [ 0.000000e+00, %4540 ]
  %4591 = phi float [ %4587, %4568 ], [ 0.000000e+00, %4540 ]
  %4592 = phi float [ %4588, %4568 ], [ 0.000000e+00, %4540 ]
  %4593 = fsub fast float %4590, %4165
  %4594 = fsub fast float %4591, %4166
  %4595 = fsub fast float %4592, %4167
  %4596 = fmul fast float %4593, %4381
  %4597 = fmul fast float %4594, %4381
  %4598 = fmul fast float %4595, %4381
  %4599 = fadd fast float %4596, %4165
  %4600 = fadd fast float %4597, %4166
  %4601 = fadd fast float %4598, %4167
  br label %4279

; <label>:4602                                    ; preds = %4279
  br label %4603

; <label>:4603                                    ; preds = %4602, %4092
  %4604 = phi float [ 0.000000e+00, %4092 ], [ %4280, %4602 ]
  %4605 = phi float [ %4036, %4092 ], [ %4281, %4602 ]
  %4606 = phi float [ %4015, %4092 ], [ %4282, %4602 ]
  %4607 = phi float [ %4008, %4092 ], [ %4283, %4602 ]
  %4608 = phi float [ %4009, %4092 ], [ %4284, %4602 ]
  %4609 = phi float [ %4010, %4092 ], [ %4285, %4602 ]
  %4610 = phi float [ 0.000000e+00, %4092 ], [ %4286, %4602 ]
  %4611 = phi float [ 0.000000e+00, %4092 ], [ %4287, %4602 ]
  %4612 = phi float [ %4058, %4092 ], [ %4288, %4602 ]
  %4613 = phi float [ %4060, %4092 ], [ %4289, %4602 ]
  %4614 = phi float [ %4062, %4092 ], [ %4290, %4602 ]
  %4615 = phi float [ %4088, %4092 ], [ %4291, %4602 ]
  %4616 = phi float [ %4089, %4092 ], [ %4292, %4602 ]
  %4617 = phi float [ %4090, %4092 ], [ %4293, %4602 ]
  %4618 = phi float [ %4013, %4092 ], [ %4294, %4602 ]
  %4619 = phi float [ %4012, %4092 ], [ %4295, %4602 ]
  %4620 = phi float [ 0.000000e+00, %4092 ], [ %4296, %4602 ]
  %4621 = phi float [ %4011, %4092 ], [ %4297, %4602 ]
  %4622 = phi float [ %4043, %4092 ], [ %4298, %4602 ]
  %4623 = phi float [ %4044, %4092 ], [ %4299, %4602 ]
  %4624 = phi float [ %4045, %4092 ], [ %4300, %4602 ]
  %4625 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.unary.f32(i32 25, float %4625)  ; Rsqrt(value)
  %4627 = fmul fast float %4626, %4615
  %4628 = fmul fast float %4626, %4616
  %4629 = fmul fast float %4626, %4617
  %4630 = fadd fast float %4620, %1347
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %4627, float %4628, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 25, float %4632)  ; Rsqrt(value)
  %4634 = fmul fast float %4633, %4627
  %4635 = fmul fast float %4633, %4628
  %4636 = fmul fast float %4633, %4629
  br label %4637

; <label>:4637                                    ; preds = %4603, %3999
  %4638 = phi float [ %4634, %4603 ], [ %4088, %3999 ]
  %4639 = phi float [ %4635, %4603 ], [ %4089, %3999 ]
  %4640 = phi float [ %4636, %4603 ], [ %4090, %3999 ]
  %4641 = phi float [ %4622, %4603 ], [ %4043, %3999 ]
  %4642 = phi float [ %4623, %4603 ], [ %4044, %3999 ]
  %4643 = phi float [ %4624, %4603 ], [ %4045, %3999 ]
  %4644 = phi float [ %4612, %4603 ], [ %4058, %3999 ]
  %4645 = phi float [ %4613, %4603 ], [ %4060, %3999 ]
  %4646 = phi float [ %4614, %4603 ], [ %4062, %3999 ]
  %4647 = phi float [ %4607, %4603 ], [ %4008, %3999 ]
  %4648 = phi float [ %4608, %4603 ], [ %4009, %3999 ]
  %4649 = phi float [ %4609, %4603 ], [ %4010, %3999 ]
  %4650 = phi float [ %4621, %4603 ], [ %4011, %3999 ]
  %4651 = phi float [ %4631, %4603 ], [ %1347, %3999 ]
  %4652 = phi float [ %4619, %4603 ], [ %4012, %3999 ]
  %4653 = phi float [ %4618, %4603 ], [ %4013, %3999 ]
  %4654 = phi float [ %4611, %4603 ], [ 0.000000e+00, %3999 ]
  %4655 = phi float [ %4610, %4603 ], [ 0.000000e+00, %3999 ]
  %4656 = phi float [ %4604, %4603 ], [ 0.000000e+00, %3999 ]
  %4657 = phi float [ %4605, %4603 ], [ %4036, %3999 ]
  %4658 = phi float [ %4606, %4603 ], [ %4015, %3999 ]
  %4659 = fadd fast float %4650, 0xBFB99999A0000000
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fmul fast float %4660, 0x3FF1C71C80000000
  %4662 = call float @dx.op.binary.f32(i32 36, float %4650, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4663 = fsub fast float 1.000000e+00, %4661
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fmul fast float %4664, %4641
  %4666 = fmul fast float %4664, %4642
  %4667 = fmul fast float %4664, %4643
  %4668 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = fmul fast float %4661, %4641
  %4672 = fmul fast float %4661, %4642
  %4673 = fmul fast float %4661, %4643
  %4674 = fadd fast float %4671, %4662
  %4675 = fadd fast float %4672, %4662
  %4676 = fadd fast float %4673, %4662
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4681 = call float @dx.op.binary.f32(i32 36, float %4647, float 1.270000e+02)  ; FMin(a,b)
  %4682 = call float @dx.op.binary.f32(i32 36, float %4648, float 1.270000e+02)  ; FMin(a,b)
  %4683 = call float @dx.op.binary.f32(i32 36, float %4649, float 1.270000e+02)  ; FMin(a,b)
  %4684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.i32 %4684, 3
  %4686 = and i32 %4685, 8
  %4687 = icmp ne i32 %4686, 0
  %4688 = call float @dx.op.binary.f32(i32 35, float %4668, float %4641)  ; FMax(a,b)
  %4689 = call float @dx.op.binary.f32(i32 35, float %4669, float %4641)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4670, float %4641)  ; FMax(a,b)
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = select i1 %269, float %4641, float %4668
  %4693 = select i1 %269, float %4691, float %4669
  %4694 = select i1 %269, float 1.000000e+00, float %4670
  %4695 = select i1 %4687, float %4688, float %4692
  %4696 = select i1 %4687, float %4689, float %4693
  %4697 = select i1 %4687, float %4690, float %4694
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4702 = fadd fast float %4699, %197
  %4703 = fadd fast float %4700, %198
  %4704 = fadd fast float %4701, %199
  %4705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.CBufRet.f32 %4705, 1
  %4708 = fsub fast float %4702, %4706
  %4709 = fsub fast float %4703, %4707
  %4710 = fmul fast float %4708, %4708
  %4711 = fmul fast float %4709, %4709
  %4712 = fadd fast float %4710, %4711
  %4713 = call float @dx.op.unary.f32(i32 24, float %4712)  ; Sqrt(value)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4705, 2
  %4715 = fcmp fast olt float %4713, %4714
  br i1 %4715, label %4716, label %4783

; <label>:4716                                    ; preds = %4637
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4724 = extractvalue %dx.types.CBufRet.f32 %4719, 1
  %4725 = extractvalue %dx.types.CBufRet.f32 %4721, 1
  %4726 = extractvalue %dx.types.CBufRet.f32 %4717, 3
  %4727 = extractvalue %dx.types.CBufRet.f32 %4719, 3
  %4728 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4729 = fadd fast float %4726, %4702
  %4730 = fadd fast float %4727, %4703
  %4731 = fadd fast float %4728, %4704
  %4732 = fmul fast float %4729, %4718
  %4733 = call float @dx.op.tertiary.f32(i32 46, float %4730, float %4720, float %4732)  ; FMad(a,b,c)
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4731, float %4722, float %4733)  ; FMad(a,b,c)
  %4735 = fmul fast float %4729, %4723
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4730, float %4724, float %4735)  ; FMad(a,b,c)
  %4737 = call float @dx.op.tertiary.f32(i32 46, float %4731, float %4725, float %4736)  ; FMad(a,b,c)
  %4738 = fsub fast float %4734, %4726
  %4739 = fsub fast float %4737, %4727
  %4740 = fsub fast float %4738, %4706
  %4741 = fadd fast float %4740, %4714
  %4742 = fsub fast float %4739, %4707
  %4743 = fadd fast float %4742, %4714
  %4744 = extractvalue %dx.types.CBufRet.f32 %4705, 3
  %4745 = fmul fast float %4741, %4744
  %4746 = fmul fast float %4743, %4744
  %4747 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4749 = fsub fast float 1.000000e+00, %4747
  %4750 = fsub fast float 1.000000e+00, %4748
  %4751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4749, float %4750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = fcmp fast ugt float %4752, 0.000000e+00
  br i1 %4753, label %4754, label %5057

; <label>:4754                                    ; preds = %4716
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 2
  %4757 = fmul fast float %4756, %4752
  %4758 = extractvalue %dx.types.CBufRet.f32 %4755, 3
  %4759 = fadd fast float %4758, %4757
  %4760 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %4761 = fadd fast float %4759, %4728
  %4762 = fmul fast float %4734, %4722
  %4763 = call float @dx.op.tertiary.f32(i32 46, float %4737, float %4725, float %4762)  ; FMad(a,b,c)
  %4764 = call float @dx.op.tertiary.f32(i32 46, float %4761, float %4760, float %4763)  ; FMad(a,b,c)
  %4765 = fsub fast float %4764, %4728
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %4768 = fsub fast float %4765, %4767
  %4769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4749, float %4750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 0
  %4771 = extractvalue %dx.types.ResRet.f32 %4769, 1
  %4772 = extractvalue %dx.types.ResRet.f32 %4769, 2
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4749, float %4750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = fadd fast float %4774, %4770
  %4778 = fmul fast float %4777, 0x3F847AE140000000
  %4779 = fadd fast float %4775, %4771
  %4780 = fmul fast float %4779, 0x3F847AE140000000
  %4781 = fadd fast float %4776, %4772
  %4782 = fmul fast float %4781, 0x3F847AE140000000
  br label %5057

; <label>:4783                                    ; preds = %4637
  %4784 = and i32 %248, 1
  %4785 = icmp eq i32 %4784, 0
  br i1 %4785, label %5057, label %4786

; <label>:4786                                    ; preds = %4783
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4795 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4796 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4797 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4798 = extractvalue %dx.types.CBufRet.f32 %4791, 3
  %4799 = fadd fast float %4796, %4702
  %4800 = fadd fast float %4797, %4703
  %4801 = fadd fast float %4798, %4704
  %4802 = fmul fast float %4799, %4788
  %4803 = call float @dx.op.tertiary.f32(i32 46, float %4800, float %4790, float %4802)  ; FMad(a,b,c)
  %4804 = call float @dx.op.tertiary.f32(i32 46, float %4801, float %4792, float %4803)  ; FMad(a,b,c)
  %4805 = fmul fast float %4799, %4793
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4800, float %4794, float %4805)  ; FMad(a,b,c)
  %4807 = call float @dx.op.tertiary.f32(i32 46, float %4801, float %4795, float %4806)  ; FMad(a,b,c)
  %4808 = fsub fast float %4804, %4796
  %4809 = fsub fast float %4807, %4797
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.CBufRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.CBufRet.f32 %4810, 3
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.i32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.i32 %4817, 1
  %4820 = udiv i32 %4819, %4818
  %4821 = fsub fast float %4808, %4811
  %4822 = fsub fast float %4809, %4812
  %4823 = call float @dx.op.binary.f32(i32 35, float %4821, float 0.000000e+00)  ; FMax(a,b)
  %4824 = call float @dx.op.binary.f32(i32 35, float %4822, float 0.000000e+00)  ; FMax(a,b)
  %4825 = call float @dx.op.binary.f32(i32 36, float %4823, float %4813)  ; FMin(a,b)
  %4826 = call float @dx.op.binary.f32(i32 36, float %4824, float %4814)  ; FMin(a,b)
  %4827 = add i32 %4818, -1
  %4828 = add i32 %4820, -1
  %4829 = fmul fast float %4825, %4816
  %4830 = fmul fast float %4826, %4816
  %4831 = fptoui float %4829 to i32
  %4832 = fptoui float %4830 to i32
  %4833 = call i32 @dx.op.binary.i32(i32 40, i32 %4831, i32 %4827)  ; UMin(a,b)
  %4834 = call i32 @dx.op.binary.i32(i32 40, i32 %4832, i32 %4828)  ; UMin(a,b)
  %4835 = mul i32 %4834, %4818
  %4836 = add i32 %4835, %4833
  %4837 = shl i32 %4836, 2
  %4838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4839 = extractvalue %dx.types.ResRet.i32 %4838, 0
  %4840 = icmp eq i32 %4839, -1
  br i1 %4840, label %5057, label %4841

; <label>:4841                                    ; preds = %4786
  %4842 = mul i32 %4839, 148
  %4843 = add i32 %4842, 4
  %4844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4843, i32 undef)  ; BufferLoad(srv,index,wot)
  %4845 = extractvalue %dx.types.ResRet.f32 %4844, 0
  %4846 = add i32 %4842, 8
  %4847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4846, i32 undef)  ; BufferLoad(srv,index,wot)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = add i32 %4842, 36
  %4850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4849, i32 undef)  ; BufferLoad(srv,index,wot)
  %4851 = extractvalue %dx.types.ResRet.f32 %4850, 0
  %4852 = add i32 %4842, 60
  %4853 = add i32 %4842, 92
  %4854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4853, i32 undef)  ; BufferLoad(srv,index,wot)
  %4855 = extractvalue %dx.types.ResRet.i32 %4854, 0
  %4856 = add i32 %4842, 116
  %4857 = fsub fast float %4808, %4845
  %4858 = fsub fast float %4809, %4848
  %4859 = fmul fast float %4816, %4857
  %4860 = fmul fast float %4816, %4858
  %4861 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4862 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.f32 %4864, 2
  %4866 = call float @dx.op.unary.f32(i32 83, float %4861)  ; DerivCoarseX(value)
  %4867 = call float @dx.op.unary.f32(i32 83, float %4863)  ; DerivCoarseX(value)
  %4868 = call float @dx.op.unary.f32(i32 84, float %4861)  ; DerivCoarseY(value)
  %4869 = call float @dx.op.unary.f32(i32 84, float %4863)  ; DerivCoarseY(value)
  %4870 = fmul fast float %4866, %4865
  %4871 = fmul fast float %4867, %4865
  %4872 = fmul fast float %4868, %4865
  %4873 = fmul fast float %4869, %4865
  %4874 = call float @dx.op.dot2.f32(i32 54, float %4872, float %4873, float %4872, float %4873)  ; Dot2(ax,ay,bx,by)
  %4875 = call float @dx.op.dot2.f32(i32 54, float %4870, float %4871, float %4870, float %4871)  ; Dot2(ax,ay,bx,by)
  %4876 = call float @dx.op.binary.f32(i32 35, float %4875, float %4874)  ; FMax(a,b)
  %4877 = call float @dx.op.unary.f32(i32 23, float %4876)  ; Log(value)
  %4878 = fmul fast float %4877, 5.000000e-01
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4881 = fadd fast float %4880, %4878
  %4882 = call float @dx.op.binary.f32(i32 35, float %4881, float 0.000000e+00)  ; FMax(a,b)
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 3
  %4885 = fadd fast float %4884, %4882
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4888 = fadd fast float %4885, %4887
  %4889 = add i32 %4855, 0
  %4890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4889, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4891 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4890, i32 0)  ; GetDimensions(handle,mipLevel)
  %4892 = extractvalue %dx.types.Dimensions %4891, 0
  %4893 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4892)  ; FirstbitLo(value)
  %4894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.i32 %4894, 1
  %4896 = sub nsw i32 %4895, %4893
  %4897 = sitofp i32 %4896 to float
  %4898 = fsub fast float %4888, %4897
  %4899 = call float @dx.op.binary.f32(i32 35, float %4898, float 0.000000e+00)  ; FMax(a,b)
  %4900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4890, %dx.types.Handle %48, float %4861, float %4863, float %4851, float undef, i32 0, i32 0, i32 undef, float %4899)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4901 = extractvalue %dx.types.ResRet.f32 %4900, 0
  %4902 = fcmp ule float %4901, 0x3FE0101020000000
  %4903 = extractvalue %dx.types.CBufRet.i32 %4894, 0
  %4904 = and i32 %4903, 128
  %4905 = icmp ne i32 %4904, 0
  %4906 = and i1 %4902, %4905
  br i1 %4906, label %5057, label %4907

; <label>:4907                                    ; preds = %4841
  %4908 = add i32 %4842, 20
  %4909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = add i32 %4842, 24
  %4912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = add i32 %4842, 40
  %4915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4914, i32 undef)  ; BufferLoad(srv,index,wot)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 0
  %4917 = add i32 %4842, 96
  %4918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.f32 %4920, 2
  %4922 = fmul fast float %4921, %4861
  %4923 = fmul fast float %4921, %4863
  %4924 = extractvalue %dx.types.CBufRet.f32 %4920, 3
  %4925 = fadd fast float %4922, %4924
  %4926 = fadd fast float %4923, %4924
  %4927 = add i32 %4919, 0
  %4928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4929 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4928, i32 0)  ; GetDimensions(handle,mipLevel)
  %4930 = extractvalue %dx.types.Dimensions %4929, 0
  %4931 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4930)  ; FirstbitLo(value)
  %4932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.i32 %4932, 1
  %4934 = sub nsw i32 %4933, %4931
  %4935 = sitofp i32 %4934 to float
  %4936 = fsub fast float %4885, %4935
  %4937 = call float @dx.op.binary.f32(i32 35, float %4936, float 0.000000e+00)  ; FMax(a,b)
  %4938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4928, %dx.types.Handle %48, float %4925, float %4926, float %4916, float undef, i32 0, i32 0, i32 undef, float %4937)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 0
  %4940 = fmul fast float %4939, %4910
  %4941 = fadd fast float %4940, %4913
  %4942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4943 = extractvalue %dx.types.CBufRet.f32 %4942, 0
  %4944 = extractvalue %dx.types.CBufRet.f32 %4942, 1
  %4945 = extractvalue %dx.types.CBufRet.f32 %4942, 2
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 3
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4950 = extractvalue %dx.types.CBufRet.f32 %4942, 3
  %4951 = fadd fast float %4947, %4808
  %4952 = fadd fast float %4949, %4809
  %4953 = fadd fast float %4941, %4950
  %4954 = fmul fast float %4951, %4943
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4944, float %4954)  ; FMad(a,b,c)
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4953, float %4945, float %4955)  ; FMad(a,b,c)
  %4957 = fsub fast float %4956, %4950
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 2
  %4960 = fsub fast float %4957, %4959
  %4961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.i32 %4961, 0
  %4963 = call i32 @dx.op.binary.i32(i32 40, i32 %4839, i32 %4962)  ; UMin(a,b)
  %4964 = mul i32 %4963, 36
  %4965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4966 = extractvalue %dx.types.ResRet.i32 %4965, 0
  %4967 = add i32 %4964, 4
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4970 = fmul fast float %4969, %4861
  %4971 = fmul fast float %4969, %4863
  %4972 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4973 = fadd fast float %4970, %4972
  %4974 = fadd fast float %4971, %4972
  %4975 = icmp eq i32 %4966, 0
  br i1 %4975, label %5044, label %4976

; <label>:4976                                    ; preds = %4907
  br label %4977

; <label>:4977                                    ; preds = %5034, %4976
  %4978 = phi float [ %5035, %5034 ], [ 0.000000e+00, %4976 ]
  %4979 = phi float [ %5036, %5034 ], [ 0.000000e+00, %4976 ]
  %4980 = phi float [ %5037, %5034 ], [ 0.000000e+00, %4976 ]
  %4981 = phi float [ %5038, %5034 ], [ 0.000000e+00, %4976 ]
  %4982 = phi float [ %5039, %5034 ], [ 0.000000e+00, %4976 ]
  %4983 = phi float [ %5040, %5034 ], [ 0.000000e+00, %4976 ]
  %4984 = phi i32 [ %5041, %5034 ], [ 0, %4976 ]
  %4985 = shl i32 %4984, 2
  %4986 = add i32 %4852, %4985
  %4987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4986, i32 undef)  ; BufferLoad(srv,index,wot)
  %4988 = extractvalue %dx.types.ResRet.f32 %4987, 0
  %4989 = add i32 %4856, %4985
  %4990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4989, i32 undef)  ; BufferLoad(srv,index,wot)
  %4991 = extractvalue %dx.types.ResRet.i32 %4990, 0
  %4992 = add i32 %4991, 0
  %4993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4992, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4994 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4993, i32 0)  ; GetDimensions(handle,mipLevel)
  %4995 = extractvalue %dx.types.Dimensions %4994, 0
  %4996 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4995)  ; FirstbitLo(value)
  %4997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.i32 %4997, 1
  %4999 = sub nsw i32 %4998, %4996
  %5000 = sitofp i32 %4999 to float
  %5001 = fsub fast float %4885, %5000
  %5002 = call float @dx.op.binary.f32(i32 35, float %5001, float 0.000000e+00)  ; FMax(a,b)
  %5003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4993, %dx.types.Handle %48, float %4973, float %4974, float %4988, float undef, i32 0, i32 0, i32 undef, float %5002)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 0
  %5005 = fcmp fast ogt float %5004, 0.000000e+00
  br i1 %5005, label %5006, label %5034

; <label>:5006                                    ; preds = %4977
  %5007 = add i32 %4967, %4985
  %5008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5007, i32 undef)  ; BufferLoad(srv,index,wot)
  %5009 = extractvalue %dx.types.ResRet.i32 %5008, 0
  %5010 = and i32 %5009, 32767
  %5011 = mul nuw nsw i32 %5010, 928
  %5012 = add nuw nsw i32 %5011, 48
  %5013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5012, i32 undef)  ; BufferLoad(srv,index,wot)
  %5014 = extractvalue %dx.types.ResRet.f32 %5013, 0
  %5015 = extractvalue %dx.types.ResRet.f32 %5013, 1
  %5016 = extractvalue %dx.types.ResRet.f32 %5013, 2
  %5017 = add nuw nsw i32 %5011, 60
  %5018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5017, i32 undef)  ; BufferLoad(srv,index,wot)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.ResRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.ResRet.f32 %5018, 2
  %5022 = fmul fast float %5014, %5004
  %5023 = fmul fast float %5015, %5004
  %5024 = fmul fast float %5016, %5004
  %5025 = fadd fast float %5022, %4978
  %5026 = fadd fast float %5023, %4979
  %5027 = fadd fast float %5024, %4980
  %5028 = fmul fast float %5019, %5004
  %5029 = fmul fast float %5020, %5004
  %5030 = fmul fast float %5021, %5004
  %5031 = fadd fast float %5028, %4981
  %5032 = fadd fast float %5029, %4982
  %5033 = fadd fast float %5030, %4983
  br label %5034

; <label>:5034                                    ; preds = %5006, %4977
  %5035 = phi float [ %5025, %5006 ], [ %4978, %4977 ]
  %5036 = phi float [ %5026, %5006 ], [ %4979, %4977 ]
  %5037 = phi float [ %5027, %5006 ], [ %4980, %4977 ]
  %5038 = phi float [ %5031, %5006 ], [ %4981, %4977 ]
  %5039 = phi float [ %5032, %5006 ], [ %4982, %4977 ]
  %5040 = phi float [ %5033, %5006 ], [ %4983, %4977 ]
  %5041 = add nuw i32 %4984, 1
  %5042 = icmp eq i32 %5041, %4966
  br i1 %5042, label %5043, label %4977

; <label>:5043                                    ; preds = %5034
  br label %5044

; <label>:5044                                    ; preds = %5043, %4907
  %5045 = phi float [ 0.000000e+00, %4907 ], [ %5035, %5043 ]
  %5046 = phi float [ 0.000000e+00, %4907 ], [ %5036, %5043 ]
  %5047 = phi float [ 0.000000e+00, %4907 ], [ %5037, %5043 ]
  %5048 = phi float [ 0.000000e+00, %4907 ], [ %5038, %5043 ]
  %5049 = phi float [ 0.000000e+00, %4907 ], [ %5039, %5043 ]
  %5050 = phi float [ 0.000000e+00, %4907 ], [ %5040, %5043 ]
  %5051 = fadd fast float %5048, %5045
  %5052 = fmul fast float %5051, 0x3F847AE140000000
  %5053 = fadd fast float %5049, %5046
  %5054 = fmul fast float %5053, 0x3F847AE140000000
  %5055 = fadd fast float %5050, %5047
  %5056 = fmul fast float %5055, 0x3F847AE140000000
  br label %5057

; <label>:5057                                    ; preds = %5044, %4841, %4786, %4783, %4754, %4716
  %5058 = phi float [ %4768, %4754 ], [ -1.310720e+05, %4716 ], [ %4960, %5044 ], [ -1.310720e+05, %4786 ], [ -1.310720e+05, %4841 ], [ -1.310720e+05, %4783 ]
  %5059 = phi float [ %4778, %4754 ], [ 0.000000e+00, %4716 ], [ %5052, %5044 ], [ 0.000000e+00, %4786 ], [ 0.000000e+00, %4841 ], [ 0.000000e+00, %4783 ]
  %5060 = phi float [ %4780, %4754 ], [ 0.000000e+00, %4716 ], [ %5054, %5044 ], [ 0.000000e+00, %4786 ], [ 0.000000e+00, %4841 ], [ 0.000000e+00, %4783 ]
  %5061 = phi float [ %4782, %4754 ], [ 0.000000e+00, %4716 ], [ %5056, %5044 ], [ 0.000000e+00, %4786 ], [ 0.000000e+00, %4841 ], [ 0.000000e+00, %4783 ]
  %5062 = phi i1 [ true, %4754 ], [ false, %4716 ], [ true, %5044 ], [ false, %4786 ], [ false, %4841 ], [ false, %4783 ]
  %5063 = and i32 %248, 3
  %5064 = icmp eq i32 %5063, 1
  %5065 = select i1 %5064, float 1.000000e+00, float 0.000000e+00
  %5066 = fsub fast float %5058, %199
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = select i1 %5062, float %5067, float 1.000000e+00
  %5069 = fmul fast float %5068, %5065
  %5070 = icmp eq i32 %5063, 3
  %5071 = select i1 %5070, float 1.000000e+00, float %5069
  %5072 = call float @dx.op.binary.f32(i32 35, float %4656, float %5071)  ; FMax(a,b)
  %5073 = fcmp fast olt float %5071, 1.000000e+00
  %5074 = fcmp uge float %74, 0.000000e+00
  %5075 = and i1 %5074, %5073
  br i1 %5075, label %5076, label %5086

; <label>:5076                                    ; preds = %5057
  %5077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.f32 %5077, 2
  %5081 = fadd fast float %5078, %5072
  %5082 = fcmp ule float %73, 0.000000e+00
  %5083 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = select i1 %5082, float %5083, float 1.000000e+00
  %5085 = fmul fast float %5084, %5080
  br label %5086

; <label>:5086                                    ; preds = %5076, %5057
  %5087 = phi float [ %5081, %5076 ], [ %5072, %5057 ]
  %5088 = phi float [ %5079, %5076 ], [ 0.000000e+00, %5057 ]
  %5089 = phi float [ %5085, %5076 ], [ 0.000000e+00, %5057 ]
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = fcmp fast une float %5091, 0.000000e+00
  %5094 = fcmp fast une float %5092, 0.000000e+00
  %5095 = or i1 %5093, %5094
  br i1 %5095, label %5096, label %5655

; <label>:5096                                    ; preds = %5086
  br i1 %5093, label %5097, label %5370

; <label>:5097                                    ; preds = %5096
  %5098 = call float @dx.op.unary.f32(i32 23, float %4653)  ; Log(value)
  %5099 = fmul fast float %5098, 4.000000e+00
  %5100 = call float @dx.op.unary.f32(i32 21, float %5099)  ; Exp(value)
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 0
  %5103 = fmul fast float %5102, %60
  %5104 = fmul fast float %5102, %61
  %5105 = fmul fast float %5102, %62
  %5106 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5107 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5108 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5109 = call float @dx.op.unary.f32(i32 23, float %5106)  ; Log(value)
  %5110 = call float @dx.op.unary.f32(i32 23, float %5107)  ; Log(value)
  %5111 = call float @dx.op.unary.f32(i32 23, float %5108)  ; Log(value)
  %5112 = fmul fast float %5109, 4.000000e+00
  %5113 = fmul fast float %5110, 4.000000e+00
  %5114 = fmul fast float %5111, 4.000000e+00
  %5115 = call float @dx.op.unary.f32(i32 21, float %5112)  ; Exp(value)
  %5116 = call float @dx.op.unary.f32(i32 21, float %5113)  ; Exp(value)
  %5117 = call float @dx.op.unary.f32(i32 21, float %5114)  ; Exp(value)
  %5118 = fadd fast float %5116, %5115
  %5119 = fadd fast float %5118, %5117
  %5120 = fdiv fast float 1.000000e+00, %5119
  %5121 = fmul fast float %5120, %5115
  %5122 = fcmp fast ogt float %70, 0.000000e+00
  %5123 = fcmp fast ogt float %71, 0.000000e+00
  %5124 = fcmp fast ogt float %72, 0.000000e+00
  %5125 = fcmp fast olt float %70, 0.000000e+00
  %5126 = fcmp fast olt float %71, 0.000000e+00
  %5127 = fcmp fast olt float %72, 0.000000e+00
  %5128 = zext i1 %5122 to i32
  %5129 = zext i1 %5123 to i32
  %5130 = zext i1 %5124 to i32
  %5131 = zext i1 %5125 to i32
  %5132 = zext i1 %5126 to i32
  %5133 = zext i1 %5127 to i32
  %5134 = sub nsw i32 %5128, %5131
  %5135 = sub nsw i32 %5129, %5132
  %5136 = sub nsw i32 %5130, %5133
  %5137 = call float @dx.op.unary.f32(i32 83, float %5103)  ; DerivCoarseX(value)
  %5138 = call float @dx.op.unary.f32(i32 83, float %5104)  ; DerivCoarseX(value)
  %5139 = call float @dx.op.unary.f32(i32 83, float %5105)  ; DerivCoarseX(value)
  %5140 = call float @dx.op.unary.f32(i32 84, float %5103)  ; DerivCoarseY(value)
  %5141 = call float @dx.op.unary.f32(i32 84, float %5104)  ; DerivCoarseY(value)
  %5142 = call float @dx.op.unary.f32(i32 84, float %5105)  ; DerivCoarseY(value)
  %5143 = fcmp fast ole float %280, %5121
  %5144 = fmul fast float %5120, %5118
  %5145 = fcmp fast ole float %280, %5144
  %5146 = select i1 %5145, float %5105, float %5103
  %5147 = select i1 %5145, float %5103, float %5104
  %5148 = select i1 %5143, float %5104, float %5146
  %5149 = select i1 %5143, float %5105, float %5147
  %5150 = select i1 %5145, float %5139, float %5137
  %5151 = select i1 %5145, float %5137, float %5138
  %5152 = select i1 %5143, float %5138, float %5150
  %5153 = select i1 %5143, float %5139, float %5151
  %5154 = select i1 %5145, float %5142, float %5140
  %5155 = select i1 %5145, float %5140, float %5141
  %5156 = select i1 %5143, float %5141, float %5154
  %5157 = select i1 %5143, float %5142, float %5155
  %5158 = call float @dx.op.unary.f32(i32 27, float %5148)  ; Round_ni(value)
  %5159 = call float @dx.op.unary.f32(i32 27, float %5149)  ; Round_ni(value)
  %5160 = fptosi float %5158 to i32
  %5161 = fptosi float %5159 to i32
  %5162 = xor i32 %5161, %5160
  %5163 = sitofp i32 %5162 to float
  %5164 = fptosi float %5163 to i32
  %5165 = sitofp i32 %5164 to float
  %5166 = fmul fast float %5165, 0x3FE3C6EF40000000
  %5167 = frem fast float %5158, 2.560000e+02
  %5168 = frem fast float %5159, 2.560000e+02
  %5169 = fptoui float %5167 to i32
  %5170 = fptoui float %5168 to i32
  %5171 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5169, i32 %5170, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5175 = fadd fast float %5172, %5166
  %5176 = fadd fast float %5173, %5166
  %5177 = fadd fast float %5174, %5166
  %5178 = call float @dx.op.unary.f32(i32 22, float %5175)  ; Frc(value)
  %5179 = call float @dx.op.unary.f32(i32 22, float %5176)  ; Frc(value)
  %5180 = call float @dx.op.unary.f32(i32 22, float %5177)  ; Frc(value)
  %5181 = fmul fast float %5180, 0x401921FB60000000
  %5182 = call float @dx.op.unary.f32(i32 13, float %5181)  ; Sin(value)
  %5183 = call float @dx.op.unary.f32(i32 12, float %5181)  ; Cos(value)
  %5184 = fsub fast float -0.000000e+00, %5183
  %5185 = fmul fast float %5183, %5148
  %5186 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5149, float %5185)  ; FMad(a,b,c)
  %5187 = fmul fast float %5182, %5148
  %5188 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5149, float %5187)  ; FMad(a,b,c)
  %5189 = fadd fast float %5186, %5178
  %5190 = fadd fast float %5188, %5179
  %5191 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5192 = bitcast float %5191 to i32
  %5193 = icmp eq i32 %5192, 0
  br i1 %5193, label %5232, label %5194

; <label>:5194                                    ; preds = %5097
  %5195 = add i32 %5192, 0
  %5196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5196, %dx.types.Handle %107, float %5189, float %5190, float undef, float undef, i32 0, i32 0, i32 undef, float %5152, float %5153, float undef, float %5156, float %5157, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5202 = fsub fast float 1.000000e+00, %5091
  %5203 = call float @dx.op.binary.f32(i32 35, float %5202, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5204 = bitcast float %5091 to i32
  %5205 = sitofp i32 %5204 to float
  %5206 = fadd fast float %5205, 0xC1CFBF8940000000
  %5207 = fmul fast float %5201, %5206
  %5208 = fadd fast float %5207, 0x41CFBF8940000000
  %5209 = fptosi float %5208 to i32
  %5210 = bitcast i32 %5209 to float
  %5211 = bitcast float %5203 to i32
  %5212 = sitofp i32 %5211 to float
  %5213 = fadd fast float %5212, 0xC1CFBF8940000000
  %5214 = fmul fast float %5213, %5201
  %5215 = fadd fast float %5214, 0x41CFBF8940000000
  %5216 = fptosi float %5215 to i32
  %5217 = bitcast i32 %5216 to float
  %5218 = fmul fast float %5210, %5200
  %5219 = fmul fast float %5217, %5200
  %5220 = fsub fast float %5203, %5218
  %5221 = fadd fast float %5219, %5203
  %5222 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5223 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5224 = fsub fast float %5198, %5222
  %5225 = fsub fast float %5223, %5222
  %5226 = bitcast float %5225 to i32
  %5227 = sub nsw i32 2129859010, %5226
  %5228 = bitcast i32 %5227 to float
  %5229 = fmul fast float %5228, %5224
  %5230 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5231 = fcmp fast olt float %5230, 0x3F70101020000000
  br i1 %5231, label %5370, label %5232

; <label>:5232                                    ; preds = %5194, %5097
  %5233 = phi float [ %5230, %5194 ], [ %5091, %5097 ]
  %5234 = fmul fast float %5233, %5100
  %5235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.i32 %5235, 1
  %5237 = extractvalue %dx.types.CBufRet.i32 %5235, 0
  %5238 = add i32 %5237, 0
  %5239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5240 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5239, %dx.types.Handle %106, float %5189, float %5190, float undef, float undef, i32 0, i32 0, i32 undef, float %5152, float %5153, float undef, float %5156, float %5157, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 0
  %5242 = extractvalue %dx.types.ResRet.f32 %5240, 1
  %5243 = extractvalue %dx.types.ResRet.f32 %5240, 2
  %5244 = extractvalue %dx.types.ResRet.f32 %5240, 3
  %5245 = and i32 %5236, 255
  %5246 = uitofp i32 %5245 to float
  %5247 = lshr i32 %5236, 8
  %5248 = and i32 %5247, 255
  %5249 = uitofp i32 %5248 to float
  %5250 = fmul fast float %5244, %5246
  %5251 = fadd fast float %5250, %5249
  %5252 = fmul fast float %5251, 0x3F70101000000000
  %5253 = fadd fast float %5252, 0xBFB99999A0000000
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = fmul fast float %5254, 0x3FF1C71C80000000
  %5256 = call float @dx.op.binary.f32(i32 36, float %5252, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5257 = fsub fast float 1.000000e+00, %5255
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = fmul fast float %5258, %5241
  %5260 = fmul fast float %5258, %5242
  %5261 = fmul fast float %5258, %5243
  %5262 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5265 = fmul fast float %5255, %5241
  %5266 = fmul fast float %5255, %5242
  %5267 = fmul fast float %5255, %5243
  %5268 = fadd fast float %5265, %5256
  %5269 = fadd fast float %5266, %5256
  %5270 = fadd fast float %5267, %5256
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.i32 %5274, 3
  %5276 = extractvalue %dx.types.CBufRet.i32 %5274, 2
  %5277 = add i32 %5276, 0
  %5278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5277, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5279 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5278, %dx.types.Handle %106, float %5189, float %5190, float undef, float undef, i32 0, i32 0, i32 undef, float %5152, float %5153, float undef, float %5156, float %5157, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = extractvalue %dx.types.ResRet.f32 %5279, 3
  %5284 = and i32 %5275, 255
  %5285 = uitofp i32 %5284 to float
  %5286 = lshr i32 %5275, 8
  %5287 = and i32 %5286, 255
  %5288 = uitofp i32 %5287 to float
  %5289 = lshr i32 %5275, 16
  %5290 = and i32 %5289, 255
  %5291 = uitofp i32 %5290 to float
  %5292 = fmul fast float %5291, 0x3F70101000000000
  %5293 = fmul fast float %5280, %5285
  %5294 = fadd fast float %5293, %5288
  %5295 = fmul fast float %5294, 0x3F70101000000000
  %5296 = fadd fast float %5281, -5.000000e-01
  %5297 = fadd fast float %5283, -5.000000e-01
  %5298 = fmul fast float %5296, %5292
  %5299 = fmul fast float %5297, %5292
  %5300 = fadd fast float %5298, 5.000000e-01
  %5301 = fadd fast float %5299, 5.000000e-01
  %5302 = fmul fast float %5300, 2.000000e+00
  %5303 = fadd fast float %5302, -1.000000e+00
  %5304 = fmul fast float %5301, 2.000000e+00
  %5305 = fadd fast float %5304, -1.000000e+00
  %5306 = fadd fast float %5303, %5305
  %5307 = fmul fast float %5306, 5.000000e-01
  %5308 = fsub fast float %5303, %5305
  %5309 = fmul fast float %5308, 5.000000e-01
  %5310 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = call float @dx.op.unary.f32(i32 6, float %5309)  ; FAbs(value)
  %5313 = fsub fast float %5311, %5312
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5307, float %5309, float %5313, float %5307, float %5309, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 25, float %5314)  ; Rsqrt(value)
  %5316 = fmul fast float %5307, %5315
  %5317 = fmul fast float %5309, %5315
  %5318 = select i1 %5145, i32 %5135, i32 %5136
  %5319 = select i1 %5143, i32 %5134, i32 %5318
  %5320 = sitofp i32 %5319 to float
  %5321 = fmul fast float %5313, %5320
  %5322 = fmul fast float %5321, %5315
  %5323 = select i1 %5145, float %5322, float %5317
  %5324 = select i1 %5145, float %5317, float %5322
  %5325 = select i1 %5143, float %5322, float %5316
  %5326 = select i1 %5143, float %5317, float %5323
  %5327 = select i1 %5143, float %5316, float %5324
  %5328 = fsub fast float %5262, %4695
  %5329 = fsub fast float %5263, %4696
  %5330 = fsub fast float %5264, %4697
  %5331 = fmul fast float %5328, %5234
  %5332 = fmul fast float %5329, %5234
  %5333 = fmul fast float %5330, %5234
  %5334 = fadd fast float %5331, %4695
  %5335 = fadd fast float %5332, %4696
  %5336 = fadd fast float %5333, %4697
  %5337 = fsub fast float %5271, %4677
  %5338 = fsub fast float %5272, %4678
  %5339 = fsub fast float %5273, %4679
  %5340 = fmul fast float %5337, %5234
  %5341 = fmul fast float %5338, %5234
  %5342 = fmul fast float %5339, %5234
  %5343 = fadd fast float %5340, %4677
  %5344 = fadd fast float %5341, %4678
  %5345 = fadd fast float %5342, %4679
  %5346 = fadd fast float %5325, %4638
  %5347 = fadd fast float %5326, %4639
  %5348 = fadd fast float %5327, %4640
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.unary.f32(i32 25, float %5349)  ; Rsqrt(value)
  %5351 = fmul fast float %5346, %5350
  %5352 = fmul fast float %5347, %5350
  %5353 = fmul fast float %5348, %5350
  %5354 = fsub fast float %5351, %4638
  %5355 = fsub fast float %5352, %4639
  %5356 = fsub fast float %5353, %4640
  %5357 = fmul fast float %5354, %5234
  %5358 = fmul fast float %5355, %5234
  %5359 = fmul fast float %5356, %5234
  %5360 = fadd fast float %5357, %4638
  %5361 = fadd fast float %5358, %4639
  %5362 = fadd fast float %5359, %4640
  %5363 = call float @dx.op.binary.f32(i32 36, float %4653, float %5282)  ; FMin(a,b)
  %5364 = fsub fast float %5363, %4653
  %5365 = fmul fast float %5364, %5234
  %5366 = fadd fast float %5365, %4653
  %5367 = fsub fast float %5295, %4680
  %5368 = fmul fast float %5367, %5234
  %5369 = fadd fast float %5368, %4680
  br label %5370

; <label>:5370                                    ; preds = %5232, %5194, %5096
  %5371 = phi float [ %5343, %5232 ], [ %4677, %5194 ], [ %4677, %5096 ]
  %5372 = phi float [ %5344, %5232 ], [ %4678, %5194 ], [ %4678, %5096 ]
  %5373 = phi float [ %5345, %5232 ], [ %4679, %5194 ], [ %4679, %5096 ]
  %5374 = phi float [ %5360, %5232 ], [ %4638, %5194 ], [ %4638, %5096 ]
  %5375 = phi float [ %5361, %5232 ], [ %4639, %5194 ], [ %4639, %5096 ]
  %5376 = phi float [ %5362, %5232 ], [ %4640, %5194 ], [ %4640, %5096 ]
  %5377 = phi float [ %5334, %5232 ], [ %4695, %5194 ], [ %4695, %5096 ]
  %5378 = phi float [ %5335, %5232 ], [ %4696, %5194 ], [ %4696, %5096 ]
  %5379 = phi float [ %5336, %5232 ], [ %4697, %5194 ], [ %4697, %5096 ]
  %5380 = phi float [ %5369, %5232 ], [ %4680, %5194 ], [ %4680, %5096 ]
  %5381 = phi float [ %5366, %5232 ], [ %4653, %5194 ], [ %4653, %5096 ]
  br i1 %5094, label %5382, label %5655

; <label>:5382                                    ; preds = %5370
  %5383 = call float @dx.op.unary.f32(i32 23, float %5381)  ; Log(value)
  %5384 = fmul fast float %5383, 4.000000e+00
  %5385 = call float @dx.op.unary.f32(i32 21, float %5384)  ; Exp(value)
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5388 = fmul fast float %5387, %60
  %5389 = fmul fast float %5387, %61
  %5390 = fmul fast float %5387, %62
  %5391 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5392 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5393 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5394 = call float @dx.op.unary.f32(i32 23, float %5391)  ; Log(value)
  %5395 = call float @dx.op.unary.f32(i32 23, float %5392)  ; Log(value)
  %5396 = call float @dx.op.unary.f32(i32 23, float %5393)  ; Log(value)
  %5397 = fmul fast float %5394, 4.000000e+00
  %5398 = fmul fast float %5395, 4.000000e+00
  %5399 = fmul fast float %5396, 4.000000e+00
  %5400 = call float @dx.op.unary.f32(i32 21, float %5397)  ; Exp(value)
  %5401 = call float @dx.op.unary.f32(i32 21, float %5398)  ; Exp(value)
  %5402 = call float @dx.op.unary.f32(i32 21, float %5399)  ; Exp(value)
  %5403 = fadd fast float %5401, %5400
  %5404 = fadd fast float %5403, %5402
  %5405 = fdiv fast float 1.000000e+00, %5404
  %5406 = fmul fast float %5405, %5400
  %5407 = fcmp fast ogt float %70, 0.000000e+00
  %5408 = fcmp fast ogt float %71, 0.000000e+00
  %5409 = fcmp fast ogt float %72, 0.000000e+00
  %5410 = fcmp fast olt float %70, 0.000000e+00
  %5411 = fcmp fast olt float %71, 0.000000e+00
  %5412 = fcmp fast olt float %72, 0.000000e+00
  %5413 = zext i1 %5407 to i32
  %5414 = zext i1 %5408 to i32
  %5415 = zext i1 %5409 to i32
  %5416 = zext i1 %5410 to i32
  %5417 = zext i1 %5411 to i32
  %5418 = zext i1 %5412 to i32
  %5419 = sub nsw i32 %5413, %5416
  %5420 = sub nsw i32 %5414, %5417
  %5421 = sub nsw i32 %5415, %5418
  %5422 = call float @dx.op.unary.f32(i32 83, float %5388)  ; DerivCoarseX(value)
  %5423 = call float @dx.op.unary.f32(i32 83, float %5389)  ; DerivCoarseX(value)
  %5424 = call float @dx.op.unary.f32(i32 83, float %5390)  ; DerivCoarseX(value)
  %5425 = call float @dx.op.unary.f32(i32 84, float %5388)  ; DerivCoarseY(value)
  %5426 = call float @dx.op.unary.f32(i32 84, float %5389)  ; DerivCoarseY(value)
  %5427 = call float @dx.op.unary.f32(i32 84, float %5390)  ; DerivCoarseY(value)
  %5428 = fcmp fast ole float %280, %5406
  %5429 = fmul fast float %5405, %5403
  %5430 = fcmp fast ole float %280, %5429
  %5431 = select i1 %5430, float %5390, float %5388
  %5432 = select i1 %5430, float %5388, float %5389
  %5433 = select i1 %5428, float %5389, float %5431
  %5434 = select i1 %5428, float %5390, float %5432
  %5435 = select i1 %5430, float %5424, float %5422
  %5436 = select i1 %5430, float %5422, float %5423
  %5437 = select i1 %5428, float %5423, float %5435
  %5438 = select i1 %5428, float %5424, float %5436
  %5439 = select i1 %5430, float %5427, float %5425
  %5440 = select i1 %5430, float %5425, float %5426
  %5441 = select i1 %5428, float %5426, float %5439
  %5442 = select i1 %5428, float %5427, float %5440
  %5443 = call float @dx.op.unary.f32(i32 27, float %5433)  ; Round_ni(value)
  %5444 = call float @dx.op.unary.f32(i32 27, float %5434)  ; Round_ni(value)
  %5445 = fptosi float %5443 to i32
  %5446 = fptosi float %5444 to i32
  %5447 = xor i32 %5446, %5445
  %5448 = sitofp i32 %5447 to float
  %5449 = fptosi float %5448 to i32
  %5450 = sitofp i32 %5449 to float
  %5451 = fmul fast float %5450, 0x3FE3C6EF40000000
  %5452 = frem fast float %5443, 2.560000e+02
  %5453 = frem fast float %5444, 2.560000e+02
  %5454 = fptoui float %5452 to i32
  %5455 = fptoui float %5453 to i32
  %5456 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5454, i32 %5455, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5460 = fadd fast float %5457, %5451
  %5461 = fadd fast float %5458, %5451
  %5462 = fadd fast float %5459, %5451
  %5463 = call float @dx.op.unary.f32(i32 22, float %5460)  ; Frc(value)
  %5464 = call float @dx.op.unary.f32(i32 22, float %5461)  ; Frc(value)
  %5465 = call float @dx.op.unary.f32(i32 22, float %5462)  ; Frc(value)
  %5466 = fmul fast float %5465, 0x401921FB60000000
  %5467 = call float @dx.op.unary.f32(i32 13, float %5466)  ; Sin(value)
  %5468 = call float @dx.op.unary.f32(i32 12, float %5466)  ; Cos(value)
  %5469 = fsub fast float -0.000000e+00, %5468
  %5470 = fmul fast float %5468, %5433
  %5471 = call float @dx.op.tertiary.f32(i32 46, float %5467, float %5434, float %5470)  ; FMad(a,b,c)
  %5472 = fmul fast float %5467, %5433
  %5473 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5434, float %5472)  ; FMad(a,b,c)
  %5474 = fadd fast float %5471, %5463
  %5475 = fadd fast float %5473, %5464
  %5476 = extractvalue %dx.types.CBufRet.f32 %5386, 3
  %5477 = bitcast float %5476 to i32
  %5478 = icmp eq i32 %5477, 0
  br i1 %5478, label %5517, label %5479

; <label>:5479                                    ; preds = %5382
  %5480 = add i32 %5477, 0
  %5481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5482 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5481, %dx.types.Handle %107, float %5474, float %5475, float undef, float undef, i32 0, i32 0, i32 undef, float %5437, float %5438, float undef, float %5441, float %5442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5487 = fsub fast float 1.000000e+00, %5092
  %5488 = call float @dx.op.binary.f32(i32 35, float %5487, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5489 = bitcast float %5092 to i32
  %5490 = sitofp i32 %5489 to float
  %5491 = fadd fast float %5490, 0xC1CFBF8940000000
  %5492 = fmul fast float %5486, %5491
  %5493 = fadd fast float %5492, 0x41CFBF8940000000
  %5494 = fptosi float %5493 to i32
  %5495 = bitcast i32 %5494 to float
  %5496 = bitcast float %5488 to i32
  %5497 = sitofp i32 %5496 to float
  %5498 = fadd fast float %5497, 0xC1CFBF8940000000
  %5499 = fmul fast float %5498, %5486
  %5500 = fadd fast float %5499, 0x41CFBF8940000000
  %5501 = fptosi float %5500 to i32
  %5502 = bitcast i32 %5501 to float
  %5503 = fmul fast float %5495, %5485
  %5504 = fmul fast float %5502, %5485
  %5505 = fsub fast float %5488, %5503
  %5506 = fadd fast float %5504, %5488
  %5507 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5509 = fsub fast float %5483, %5507
  %5510 = fsub fast float %5508, %5507
  %5511 = bitcast float %5510 to i32
  %5512 = sub nsw i32 2129859010, %5511
  %5513 = bitcast i32 %5512 to float
  %5514 = fmul fast float %5513, %5509
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fcmp fast olt float %5515, 0x3F70101020000000
  br i1 %5516, label %5655, label %5517

; <label>:5517                                    ; preds = %5479, %5382
  %5518 = phi float [ %5515, %5479 ], [ %5092, %5382 ]
  %5519 = fmul fast float %5518, %5385
  %5520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.i32 %5520, 1
  %5522 = extractvalue %dx.types.CBufRet.i32 %5520, 0
  %5523 = add i32 %5522, 0
  %5524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5524, %dx.types.Handle %106, float %5474, float %5475, float undef, float undef, i32 0, i32 0, i32 undef, float %5437, float %5438, float undef, float %5441, float %5442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = extractvalue %dx.types.ResRet.f32 %5525, 3
  %5530 = and i32 %5521, 255
  %5531 = uitofp i32 %5530 to float
  %5532 = lshr i32 %5521, 8
  %5533 = and i32 %5532, 255
  %5534 = uitofp i32 %5533 to float
  %5535 = fmul fast float %5529, %5531
  %5536 = fadd fast float %5535, %5534
  %5537 = fmul fast float %5536, 0x3F70101000000000
  %5538 = fadd fast float %5537, 0xBFB99999A0000000
  %5539 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5540 = fmul fast float %5539, 0x3FF1C71C80000000
  %5541 = call float @dx.op.binary.f32(i32 36, float %5537, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5542 = fsub fast float 1.000000e+00, %5540
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5543, %5526
  %5545 = fmul fast float %5543, %5527
  %5546 = fmul fast float %5543, %5528
  %5547 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5550 = fmul fast float %5540, %5526
  %5551 = fmul fast float %5540, %5527
  %5552 = fmul fast float %5540, %5528
  %5553 = fadd fast float %5550, %5541
  %5554 = fadd fast float %5551, %5541
  %5555 = fadd fast float %5552, %5541
  %5556 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.i32 %5559, 3
  %5561 = extractvalue %dx.types.CBufRet.i32 %5559, 2
  %5562 = add i32 %5561, 0
  %5563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5564 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5563, %dx.types.Handle %106, float %5474, float %5475, float undef, float undef, i32 0, i32 0, i32 undef, float %5437, float %5438, float undef, float %5441, float %5442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5565 = extractvalue %dx.types.ResRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.ResRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.ResRet.f32 %5564, 2
  %5568 = extractvalue %dx.types.ResRet.f32 %5564, 3
  %5569 = and i32 %5560, 255
  %5570 = uitofp i32 %5569 to float
  %5571 = lshr i32 %5560, 8
  %5572 = and i32 %5571, 255
  %5573 = uitofp i32 %5572 to float
  %5574 = lshr i32 %5560, 16
  %5575 = and i32 %5574, 255
  %5576 = uitofp i32 %5575 to float
  %5577 = fmul fast float %5576, 0x3F70101000000000
  %5578 = fmul fast float %5565, %5570
  %5579 = fadd fast float %5578, %5573
  %5580 = fmul fast float %5579, 0x3F70101000000000
  %5581 = fadd fast float %5566, -5.000000e-01
  %5582 = fadd fast float %5568, -5.000000e-01
  %5583 = fmul fast float %5581, %5577
  %5584 = fmul fast float %5582, %5577
  %5585 = fadd fast float %5583, 5.000000e-01
  %5586 = fadd fast float %5584, 5.000000e-01
  %5587 = fmul fast float %5585, 2.000000e+00
  %5588 = fadd fast float %5587, -1.000000e+00
  %5589 = fmul fast float %5586, 2.000000e+00
  %5590 = fadd fast float %5589, -1.000000e+00
  %5591 = fadd fast float %5588, %5590
  %5592 = fmul fast float %5591, 5.000000e-01
  %5593 = fsub fast float %5588, %5590
  %5594 = fmul fast float %5593, 5.000000e-01
  %5595 = call float @dx.op.unary.f32(i32 6, float %5592)  ; FAbs(value)
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = call float @dx.op.unary.f32(i32 6, float %5594)  ; FAbs(value)
  %5598 = fsub fast float %5596, %5597
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5594, float %5598, float %5592, float %5594, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.unary.f32(i32 25, float %5599)  ; Rsqrt(value)
  %5601 = fmul fast float %5592, %5600
  %5602 = fmul fast float %5594, %5600
  %5603 = select i1 %5430, i32 %5420, i32 %5421
  %5604 = select i1 %5428, i32 %5419, i32 %5603
  %5605 = sitofp i32 %5604 to float
  %5606 = fmul fast float %5598, %5605
  %5607 = fmul fast float %5606, %5600
  %5608 = select i1 %5430, float %5607, float %5602
  %5609 = select i1 %5430, float %5602, float %5607
  %5610 = select i1 %5428, float %5607, float %5601
  %5611 = select i1 %5428, float %5602, float %5608
  %5612 = select i1 %5428, float %5601, float %5609
  %5613 = fsub fast float %5547, %5377
  %5614 = fsub fast float %5548, %5378
  %5615 = fsub fast float %5549, %5379
  %5616 = fmul fast float %5613, %5519
  %5617 = fmul fast float %5614, %5519
  %5618 = fmul fast float %5615, %5519
  %5619 = fadd fast float %5616, %5377
  %5620 = fadd fast float %5617, %5378
  %5621 = fadd fast float %5618, %5379
  %5622 = fsub fast float %5556, %5371
  %5623 = fsub fast float %5557, %5372
  %5624 = fsub fast float %5558, %5373
  %5625 = fmul fast float %5622, %5519
  %5626 = fmul fast float %5623, %5519
  %5627 = fmul fast float %5624, %5519
  %5628 = fadd fast float %5625, %5371
  %5629 = fadd fast float %5626, %5372
  %5630 = fadd fast float %5627, %5373
  %5631 = fadd fast float %5610, %5374
  %5632 = fadd fast float %5611, %5375
  %5633 = fadd fast float %5612, %5376
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.unary.f32(i32 25, float %5634)  ; Rsqrt(value)
  %5636 = fmul fast float %5631, %5635
  %5637 = fmul fast float %5632, %5635
  %5638 = fmul fast float %5633, %5635
  %5639 = fsub fast float %5636, %5374
  %5640 = fsub fast float %5637, %5375
  %5641 = fsub fast float %5638, %5376
  %5642 = fmul fast float %5639, %5519
  %5643 = fmul fast float %5640, %5519
  %5644 = fmul fast float %5641, %5519
  %5645 = fadd fast float %5642, %5374
  %5646 = fadd fast float %5643, %5375
  %5647 = fadd fast float %5644, %5376
  %5648 = call float @dx.op.binary.f32(i32 36, float %5381, float %5567)  ; FMin(a,b)
  %5649 = fsub fast float %5648, %5381
  %5650 = fmul fast float %5649, %5519
  %5651 = fadd fast float %5650, %5381
  %5652 = fsub fast float %5580, %5380
  %5653 = fmul fast float %5652, %5519
  %5654 = fadd fast float %5653, %5380
  br label %5655

; <label>:5655                                    ; preds = %5517, %5479, %5370, %5086
  %5656 = phi float [ %5628, %5517 ], [ %5371, %5479 ], [ %5371, %5370 ], [ %4677, %5086 ]
  %5657 = phi float [ %5629, %5517 ], [ %5372, %5479 ], [ %5372, %5370 ], [ %4678, %5086 ]
  %5658 = phi float [ %5630, %5517 ], [ %5373, %5479 ], [ %5373, %5370 ], [ %4679, %5086 ]
  %5659 = phi float [ %5645, %5517 ], [ %5374, %5479 ], [ %5374, %5370 ], [ %4638, %5086 ]
  %5660 = phi float [ %5646, %5517 ], [ %5375, %5479 ], [ %5375, %5370 ], [ %4639, %5086 ]
  %5661 = phi float [ %5647, %5517 ], [ %5376, %5479 ], [ %5376, %5370 ], [ %4640, %5086 ]
  %5662 = phi float [ %5619, %5517 ], [ %5377, %5479 ], [ %5377, %5370 ], [ %4695, %5086 ]
  %5663 = phi float [ %5620, %5517 ], [ %5378, %5479 ], [ %5378, %5370 ], [ %4696, %5086 ]
  %5664 = phi float [ %5621, %5517 ], [ %5379, %5479 ], [ %5379, %5370 ], [ %4697, %5086 ]
  %5665 = phi float [ %5654, %5517 ], [ %5380, %5479 ], [ %5380, %5370 ], [ %4680, %5086 ]
  %5666 = phi float [ %5651, %5517 ], [ %5381, %5479 ], [ %5381, %5370 ], [ %4653, %5086 ]
  %5667 = fcmp fast une float %5090, 0.000000e+00
  br i1 %5667, label %5668, label %5837

; <label>:5668                                    ; preds = %5655
  %5669 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.unary.f32(i32 25, float %5669)  ; Rsqrt(value)
  %5671 = fmul fast float %197, %5670
  %5672 = fsub fast float -0.000000e+00, %5671
  %5673 = fmul fast float %198, %5670
  %5674 = fsub fast float -0.000000e+00, %5673
  %5675 = fmul fast float %199, %5670
  %5676 = fsub fast float -0.000000e+00, %5675
  %5677 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5674, float %5676, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5678 = fmul fast float %5090, 2.500000e+00
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fmul fast float %5090, 0x4013FFFFE0000000
  %5681 = fadd fast float %5680, 0xBFFFFFFFE0000000
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fmul fast float %5090, 0x4004000020000000
  %5684 = fadd fast float %5683, 0xBFF8000040000000
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = fmul fast float %4659, 1.000000e+01
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = fmul fast float %5687, 2.000000e+00
  %5689 = fsub fast float 3.000000e+00, %5688
  %5690 = fmul fast float %5687, %5687
  %5691 = fmul fast float %5690, %5689
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fsub fast float 0x3FE3333340000000, %5665
  %5694 = fmul fast float %5693, 0x400AAAAAA0000000
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5696 = fmul fast float %5692, %5695
  %5697 = fmul fast float %5662, 0x3FEA2B8620000000
  %5698 = fmul fast float %5663, 0x3FEA2B8620000000
  %5699 = fmul fast float %5664, 0x3FEA2B8620000000
  %5700 = fadd fast float %5697, 0x3FC81DFBA0000000
  %5701 = fmul fast float %5700, %5662
  %5702 = fadd fast float %5701, 0x3F910E6020000000
  %5703 = fadd fast float %5698, 0x3FC81DFBA0000000
  %5704 = fmul fast float %5703, %5663
  %5705 = fadd fast float %5704, 0x3F910E6020000000
  %5706 = fadd fast float %5699, 0x3FC81DFBA0000000
  %5707 = fmul fast float %5706, %5664
  %5708 = fadd fast float %5707, 0x3F910E6020000000
  %5709 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = fsub fast float %5709, %5662
  %5713 = fsub fast float %5710, %5663
  %5714 = fsub fast float %5711, %5664
  %5715 = fmul fast float %5712, %5679
  %5716 = fmul fast float %5715, %5696
  %5717 = fmul fast float %5713, %5679
  %5718 = fmul fast float %5717, %5696
  %5719 = fmul fast float %5714, %5679
  %5720 = fmul fast float %5719, %5696
  %5721 = fadd fast float %5716, %5662
  %5722 = fadd fast float %5718, %5663
  %5723 = fadd fast float %5720, %5664
  %5724 = fmul fast float %5666, %5666
  %5725 = fmul fast float %5724, %5724
  %5726 = fadd fast float %5682, 1.000000e+00
  %5727 = fsub fast float %5726, %5696
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = fsub fast float 1.000000e+00, %5725
  %5732 = call float @dx.op.binary.f32(i32 36, float %5728, float %5731)  ; FMin(a,b)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5734 = call float @dx.op.binary.f32(i32 35, float %5732, float %5733)  ; FMax(a,b)
  %5735 = fadd fast float %5730, 0xBFE4CCCCC0000000
  %5736 = fmul fast float %5735, 0x4006DB6DA0000000
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = fmul fast float %5737, 2.000000e+00
  %5739 = fsub fast float 3.000000e+00, %5738
  %5740 = bitcast float %5656 to i32
  %5741 = ashr i32 %5740, 1
  %5742 = add nsw i32 %5741, 532487669
  %5743 = bitcast i32 %5742 to float
  %5744 = fsub fast float 1.000000e+00, %5743
  %5745 = bitcast float %5744 to i32
  %5746 = sub nsw i32 2129859010, %5745
  %5747 = bitcast i32 %5746 to float
  %5748 = fmul fast float %5747, 2.000000e+00
  %5749 = bitcast float %5657 to i32
  %5750 = ashr i32 %5749, 1
  %5751 = add nsw i32 %5750, 532487669
  %5752 = bitcast i32 %5751 to float
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = bitcast float %5753 to i32
  %5755 = sub nsw i32 2129859010, %5754
  %5756 = bitcast i32 %5755 to float
  %5757 = fmul fast float %5756, 2.000000e+00
  %5758 = bitcast float %5658 to i32
  %5759 = ashr i32 %5758, 1
  %5760 = add nsw i32 %5759, 532487669
  %5761 = bitcast i32 %5760 to float
  %5762 = fsub fast float 1.000000e+00, %5761
  %5763 = bitcast float %5762 to i32
  %5764 = sub nsw i32 2129859010, %5763
  %5765 = bitcast i32 %5764 to float
  %5766 = fmul fast float %5765, 2.000000e+00
  %5767 = fsub fast float 0x4002A9FBE0000000, %5748
  %5768 = fadd fast float %5748, 0x3FD54FDF00000000
  %5769 = bitcast float %5768 to i32
  %5770 = sub nsw i32 2129859010, %5769
  %5771 = bitcast i32 %5770 to float
  %5772 = fmul fast float %5771, %5767
  %5773 = fmul fast float %5772, %5772
  %5774 = fsub fast float 0x4002A9FBE0000000, %5757
  %5775 = fadd fast float %5757, 0x3FD54FDF00000000
  %5776 = bitcast float %5775 to i32
  %5777 = sub nsw i32 2129859010, %5776
  %5778 = bitcast i32 %5777 to float
  %5779 = fmul fast float %5778, %5774
  %5780 = fmul fast float %5779, %5779
  %5781 = fsub fast float 0x4002A9FBE0000000, %5766
  %5782 = fadd fast float %5766, 0x3FD54FDF00000000
  %5783 = bitcast float %5782 to i32
  %5784 = sub nsw i32 2129859010, %5783
  %5785 = bitcast i32 %5784 to float
  %5786 = fmul fast float %5785, %5781
  %5787 = fmul fast float %5786, %5786
  %5788 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5773)  ; FMax(a,b)
  %5789 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5780)  ; FMax(a,b)
  %5790 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5787)  ; FMax(a,b)
  %5791 = fsub fast float 1.000000e+00, %5677
  %5792 = fadd fast float %5791, %5692
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fsub fast float 1.000000e+00, %5071
  %5795 = fmul fast float %5734, %5794
  %5796 = fmul fast float %5737, %5737
  %5797 = fmul fast float %5796, %5795
  %5798 = fmul fast float %5797, %5739
  %5799 = fmul fast float %5794, 0xBFE99999A0000000
  %5800 = fmul fast float %5799, %5679
  %5801 = fmul fast float %5800, %5696
  %5802 = fadd fast float %5801, 1.000000e+00
  %5803 = fadd fast float %5665, -1.000000e+00
  %5804 = fmul fast float %5802, %5803
  %5805 = fadd fast float %5804, 1.000000e+00
  %5806 = fsub fast float %5788, %5656
  %5807 = fsub fast float %5789, %5657
  %5808 = fsub fast float %5790, %5658
  %5809 = fmul fast float %5798, %5806
  %5810 = fmul fast float %5798, %5807
  %5811 = fmul fast float %5798, %5808
  %5812 = fadd fast float %5809, %5656
  %5813 = fadd fast float %5810, %5657
  %5814 = fadd fast float %5811, %5658
  %5815 = fsub fast float %117, %5659
  %5816 = fsub fast float %118, %5660
  %5817 = fsub fast float %119, %5661
  %5818 = fmul fast float %5798, %5815
  %5819 = fmul fast float %5798, %5816
  %5820 = fmul fast float %5798, %5817
  %5821 = fadd fast float %5818, %5659
  %5822 = fadd fast float %5819, %5660
  %5823 = fadd fast float %5820, %5661
  %5824 = fmul fast float %5798, %5793
  %5825 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5826 = fsub fast float 1.000000e+00, %5825
  %5827 = fmul fast float %5824, %5826
  %5828 = fadd fast float %5827, %5825
  %5829 = fsub fast float 1.000000e+00, %5666
  %5830 = fmul fast float %5798, %5829
  %5831 = fadd fast float %5830, %5666
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5821, float %5822, float %5823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = call float @dx.op.unary.f32(i32 25, float %5832)  ; Rsqrt(value)
  %5834 = fmul fast float %5821, %5833
  %5835 = fmul fast float %5822, %5833
  %5836 = fmul fast float %5823, %5833
  br label %5837

; <label>:5837                                    ; preds = %5668, %5655
  %5838 = phi float [ %5812, %5668 ], [ %5656, %5655 ]
  %5839 = phi float [ %5813, %5668 ], [ %5657, %5655 ]
  %5840 = phi float [ %5814, %5668 ], [ %5658, %5655 ]
  %5841 = phi float [ %5834, %5668 ], [ %5659, %5655 ]
  %5842 = phi float [ %5835, %5668 ], [ %5660, %5655 ]
  %5843 = phi float [ %5836, %5668 ], [ %5661, %5655 ]
  %5844 = phi float [ %5721, %5668 ], [ %5662, %5655 ]
  %5845 = phi float [ %5722, %5668 ], [ %5663, %5655 ]
  %5846 = phi float [ %5723, %5668 ], [ %5664, %5655 ]
  %5847 = phi float [ %5828, %5668 ], [ %5665, %5655 ]
  %5848 = phi float [ %5831, %5668 ], [ %5666, %5655 ]
  %5849 = icmp eq i32 %58, 0
  br i1 %5849, label %5880, label %5850

; <label>:5850                                    ; preds = %5837
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 3
  %5854 = fmul fast float %5852, %110
  %5855 = fmul fast float %5853, %111
  %5856 = fmul fast float %5854, 1.024000e+03
  %5857 = fmul fast float %5855, 1.024000e+03
  %5858 = fadd fast float %5856, -5.120000e+02
  %5859 = fadd fast float %5857, -5.120000e+02
  %5860 = fmul fast float %5854, 0x4081BEDF00000000
  %5861 = fadd fast float %5860, 0xC071BEDF00000000
  %5862 = call float @dx.op.unary.f32(i32 22, float %5861)  ; Frc(value)
  %5863 = fmul fast float %5858, %5862
  %5864 = fadd fast float %5863, %5859
  %5865 = fmul fast float %5855, 0x4073BEBE20000000
  %5866 = fadd fast float %5865, 0xC063BEBE20000000
  %5867 = call float @dx.op.unary.f32(i32 22, float %5866)  ; Frc(value)
  %5868 = fmul fast float %5859, %5867
  %5869 = fadd fast float %5868, %5858
  %5870 = fmul fast float %5864, %5869
  %5871 = call float @dx.op.unary.f32(i32 22, float %5870)  ; Frc(value)
  %5872 = add i32 %323, 12
  %5873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5872, i32 undef)  ; BufferLoad(srv,index,wot)
  %5874 = extractvalue %dx.types.ResRet.i32 %5873, 0
  %5875 = and i32 %5874, 255
  %5876 = uitofp i32 %5875 to float
  %5877 = fmul fast float %5876, 0x3F70101020000000
  %5878 = fcmp fast olt float %5871, %5877
  br i1 %5878, label %5879, label %5880

; <label>:5879                                    ; preds = %5850
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5880

; <label>:5880                                    ; preds = %5879, %5850, %5837
  %5881 = fsub fast float -0.000000e+00, %199
  %5882 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.unary.f32(i32 25, float %5882)  ; Rsqrt(value)
  %5884 = fmul fast float %5883, %197
  %5885 = fmul fast float %5883, %198
  %5886 = fmul fast float %5883, %199
  %5887 = fsub fast float -0.000000e+00, %5884
  %5888 = fsub fast float -0.000000e+00, %5885
  %5889 = fsub fast float -0.000000e+00, %5886
  %5890 = select i1 %269, float 0.000000e+00, float %5840
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %5887, float %5888, float %5889)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.unary.f32(i32 7, float %5891)  ; Saturate(value)
  %5893 = call float @dx.op.dot3.f32(i32 55, float %5884, float %5885, float %5886, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = fmul fast float %5893, 2.000000e+00
  %5895 = fmul fast float %5894, %5841
  %5896 = fmul fast float %5894, %5842
  %5897 = fmul fast float %5894, %5843
  %5898 = fsub fast float %5884, %5895
  %5899 = fsub fast float %5885, %5896
  %5900 = fsub fast float %5886, %5897
  %5901 = call float @dx.op.binary.f32(i32 36, float %5848, float 1.000000e+00)  ; FMin(a,b)
  %5902 = fsub fast float 1.000000e+00, %5848
  %5903 = bitcast float %5902 to i32
  %5904 = sub nsw i32 2129859010, %5903
  %5905 = bitcast i32 %5904 to float
  %5906 = fsub fast float 1.000000e+00, %81
  %5907 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5909 = fdiv fast float %5906, %5908
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5912 = fmul fast float %5911, 5.000000e-01
  %5913 = fadd fast float %5912, 5.000000e-01
  %5914 = fmul fast float %5913, %81
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fmul fast float %5916, %5909
  %5918 = fadd fast float %5914, %5917
  %5919 = fsub fast float 5.000000e-01, %5912
  %5920 = fmul fast float %5919, %5844
  %5921 = fmul fast float %5919, %5845
  %5922 = fmul fast float %5919, %5846
  %5923 = fadd fast float %5918, %5920
  %5924 = fadd fast float %5918, %5921
  %5925 = fadd fast float %5918, %5922
  %5926 = call float @dx.op.dot3.f32(i32 55, float %5898, float %5899, float %5900, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = fmul fast float %5927, 5.000000e-01
  %5929 = fadd fast float %5928, 5.000000e-01
  %5930 = fmul fast float %5929, %81
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5898, float %5899, float %5900, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5932, %5909
  %5934 = fadd fast float %5930, %5933
  %5935 = fsub fast float 5.000000e-01, %5928
  %5936 = fmul fast float %5935, %5844
  %5937 = fmul fast float %5935, %5845
  %5938 = fmul fast float %5935, %5846
  %5939 = fadd fast float %5934, %5936
  %5940 = fadd fast float %5934, %5937
  %5941 = fadd fast float %5934, %5938
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = call float @dx.op.binary.f32(i32 36, float %5844, float %5943)  ; FMin(a,b)
  %5945 = fsub fast float 1.000000e+00, %5901
  %5946 = fmul fast float %5944, %5945
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = call float @dx.op.binary.f32(i32 36, float %5845, float %5943)  ; FMin(a,b)
  %5952 = fmul fast float %5951, %5945
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = call float @dx.op.binary.f32(i32 36, float %5846, float %5943)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5945
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = bitcast float %5959 to i32
  %5961 = sub nsw i32 2129859010, %5960
  %5962 = bitcast i32 %5961 to float
  %5963 = fmul fast float %5901, %82
  %5964 = fmul fast float %5963, %5923
  %5965 = fmul fast float %5964, %5950
  %5966 = fmul fast float %5901, %83
  %5967 = fmul fast float %5966, %5924
  %5968 = fmul fast float %5967, %5956
  %5969 = fmul fast float %5901, %84
  %5970 = fmul fast float %5969, %5925
  %5971 = fmul fast float %5970, %5962
  %5972 = call float @dx.op.binary.f32(i32 36, float %5838, float %5943)  ; FMin(a,b)
  %5973 = fmul fast float %5972, %5945
  %5974 = fsub fast float 1.000000e+00, %5973
  %5975 = bitcast float %5974 to i32
  %5976 = sub nsw i32 2129859010, %5975
  %5977 = bitcast i32 %5976 to float
  %5978 = call float @dx.op.binary.f32(i32 36, float %5839, float %5943)  ; FMin(a,b)
  %5979 = fmul fast float %5978, %5945
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = bitcast float %5980 to i32
  %5982 = sub nsw i32 2129859010, %5981
  %5983 = bitcast i32 %5982 to float
  %5984 = call float @dx.op.binary.f32(i32 36, float %5890, float %5943)  ; FMin(a,b)
  %5985 = fmul fast float %5984, %5945
  %5986 = fsub fast float 1.000000e+00, %5985
  %5987 = bitcast float %5986 to i32
  %5988 = sub nsw i32 2129859010, %5987
  %5989 = bitcast i32 %5988 to float
  %5990 = fmul fast float %5963, %5939
  %5991 = fmul fast float %5990, %5977
  %5992 = fmul fast float %5966, %5940
  %5993 = fmul fast float %5992, %5983
  %5994 = fmul fast float %5969, %5941
  %5995 = fmul fast float %5994, %5989
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5965, float %5968, float %5971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = select i1 %269, float 0.000000e+00, float %5965
  %5998 = select i1 %269, float %5996, float %5968
  %5999 = select i1 %269, float 0.000000e+00, float %5971
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5991, float %5993, float %5995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = select i1 %269, float 0.000000e+00, float %5991
  %6002 = select i1 %269, float %6000, float %5993
  %6003 = select i1 %269, float 0.000000e+00, float %5995
  %6004 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %6005 = fmul fast float %6004, %5997
  %6006 = fmul fast float %6004, %5998
  %6007 = fmul fast float %5999, %6004
  %6008 = fmul fast float %4014, %4014
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = fmul fast float %5892, 9.843750e-01
  %6011 = fmul fast float %5847, 9.843750e-01
  %6012 = fadd fast float %6010, 7.812500e-03
  %6013 = fadd fast float %6011, 7.812500e-03
  %6014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6012, float %6013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.ResRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.ResRet.f32 %6014, 3
  %6019 = fsub fast float 1.000000e+00, %6009
  %6020 = fsub fast float %6017, %6015
  %6021 = fsub fast float %6018, %6016
  %6022 = fmul fast float %6020, %6019
  %6023 = fmul fast float %6021, %6019
  %6024 = fadd fast float %6022, %6015
  %6025 = fadd fast float %6023, %6016
  %6026 = fmul fast float %6024, %5838
  %6027 = fmul fast float %6024, %5839
  %6028 = fmul fast float %6024, %5890
  %6029 = fadd fast float %6026, %6025
  %6030 = fadd fast float %6027, %6025
  %6031 = fadd fast float %6028, %6025
  %6032 = fcmp fast ogt float %4654, 0.000000e+00
  br i1 %6032, label %6033, label %6059

; <label>:6033                                    ; preds = %5880
  %6034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4654, float %5892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6035 = extractvalue %dx.types.ResRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.ResRet.f32 %6034, 1
  %6037 = extractvalue %dx.types.ResRet.f32 %6034, 2
  %6038 = fadd fast float %6035, -5.000000e-01
  %6039 = fadd fast float %6036, -5.000000e-01
  %6040 = fadd fast float %6037, -5.000000e-01
  %6041 = fsub fast float 1.000000e+00, %5838
  %6042 = fsub fast float 1.000000e+00, %5839
  %6043 = fsub fast float 1.000000e+00, %5890
  %6044 = fmul fast float %5838, 4.000000e+00
  %6045 = fmul fast float %6044, %6041
  %6046 = fmul fast float %6045, %6038
  %6047 = fmul fast float %5839, 4.000000e+00
  %6048 = fmul fast float %6047, %6042
  %6049 = fmul fast float %6048, %6039
  %6050 = fmul fast float %5890, 4.000000e+00
  %6051 = fmul fast float %6050, %6043
  %6052 = fmul fast float %6051, %6040
  %6053 = fadd fast float %6046, %6029
  %6054 = fadd fast float %6049, %6030
  %6055 = fadd fast float %6052, %6031
  %6056 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6057 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  %6058 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  br label %6059

; <label>:6059                                    ; preds = %6033, %5880
  %6060 = phi float [ %6056, %6033 ], [ %6029, %5880 ]
  %6061 = phi float [ %6057, %6033 ], [ %6030, %5880 ]
  %6062 = phi float [ %6058, %6033 ], [ %6031, %5880 ]
  %6063 = call float @dx.op.binary.f32(i32 35, float %6061, float %6062)  ; FMax(a,b)
  %6064 = call float @dx.op.binary.f32(i32 35, float %6060, float %6063)  ; FMax(a,b)
  %6065 = fsub fast float 1.000000e+00, %6064
  %6066 = fmul fast float %197, %197
  %6067 = fmul fast float %198, %198
  %6068 = fadd fast float %6067, %6066
  %6069 = fmul fast float %199, %199
  %6070 = fadd fast float %6068, %6069
  %6071 = call float @dx.op.unary.f32(i32 24, float %6070)  ; Sqrt(value)
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6074 = fsub fast float %6071, %6073
  %6075 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6076 = fmul fast float %6074, %6075
  %6077 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %6081 = extractvalue %dx.types.ResRet.i32 %6080, 0
  %6082 = and i32 %6081, 4194304
  %6083 = icmp ne i32 %6082, 0
  %6084 = and i32 %6081, 8388608
  %6085 = icmp ne i32 %6084, 0
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.CBufRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.CBufRet.f32 %6086, 2
  %6090 = extractvalue %dx.types.CBufRet.f32 %6086, 3
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6095 = extractvalue %dx.types.CBufRet.f32 %6091, 3
  %6096 = select i1 %6083, float %6087, float %6092
  %6097 = select i1 %6083, float %6088, float %6093
  %6098 = select i1 %6083, float %6089, float %6094
  %6099 = select i1 %6083, float %6090, float %6095
  %6100 = select i1 %6085, float 0.000000e+00, float %6099
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.CBufRet.f32 %6101, 1
  %6104 = select i1 %6083, float %6102, float %6103
  %6105 = select i1 %6085, float 0.000000e+00, float %6104
  %6106 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6107 = extractvalue %dx.types.CBufRet.f32 %6101, 3
  %6108 = select i1 %6083, float %6106, float %6107
  %6109 = select i1 %6085, float 0.000000e+00, float %6108
  %6110 = fmul fast float %6077, %63
  %6111 = fmul fast float %6110, %6078
  %6112 = fmul fast float %6111, %6105
  %6113 = fmul fast float %6110, %6079
  %6114 = fmul fast float %6113, %6109
  %6115 = fadd fast float %6114, 1.000000e+00
  %6116 = fmul fast float %6065, %6005
  %6117 = fmul fast float %6116, %6115
  %6118 = fmul fast float %6065, %6006
  %6119 = fmul fast float %6118, %6115
  %6120 = fmul fast float %6065, %6007
  %6121 = fmul fast float %6120, %6115
  %6122 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6123 = fcmp fast ogt float %6122, 0x3E7FF19E20000000
  %6124 = fdiv fast float 1.000000e+00, %6122
  %6125 = select i1 %6123, float %6124, float 0.000000e+00
  %6126 = fmul fast float %6125, %5844
  %6127 = fmul fast float %6125, %5845
  %6128 = fmul fast float %6125, %5846
  %6129 = fadd fast float %6126, -1.000000e+00
  %6130 = fadd fast float %6127, -1.000000e+00
  %6131 = fadd fast float %6128, -1.000000e+00
  %6132 = fmul fast float %6129, 5.000000e-01
  %6133 = fmul fast float %6130, 5.000000e-01
  %6134 = fmul fast float %6131, 5.000000e-01
  %6135 = fadd fast float %6132, 1.000000e+00
  %6136 = fadd fast float %6133, 1.000000e+00
  %6137 = fadd fast float %6134, 1.000000e+00
  %6138 = fadd fast float %6112, %4655
  %6139 = fsub fast float %6096, %6135
  %6140 = fsub fast float %6097, %6136
  %6141 = fsub fast float %6098, %6137
  %6142 = fmul fast float %6139, %6100
  %6143 = fmul fast float %6140, %6100
  %6144 = fmul fast float %6141, %6100
  %6145 = fadd fast float %6142, %6135
  %6146 = fadd fast float %6143, %6136
  %6147 = fadd fast float %6144, %6137
  %6148 = call float @dx.op.binary.f32(i32 35, float %5892, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6149 = fdiv fast float %4014, %6148
  %6150 = fcmp fast olt float %4681, 1.270000e+02
  %6151 = fcmp fast olt float %4682, 1.270000e+02
  %6152 = fcmp fast olt float %4683, 1.270000e+02
  %6153 = fmul fast float %4681, 0xBFF7154760000000
  %6154 = fmul fast float %6153, %6149
  %6155 = fmul fast float %4682, 0xBFF7154760000000
  %6156 = fmul fast float %6155, %6149
  %6157 = fmul fast float %4683, 0xBFF7154760000000
  %6158 = fmul fast float %6157, %6149
  %6159 = call float @dx.op.unary.f32(i32 21, float %6154)  ; Exp(value)
  %6160 = call float @dx.op.unary.f32(i32 21, float %6156)  ; Exp(value)
  %6161 = call float @dx.op.unary.f32(i32 21, float %6158)  ; Exp(value)
  %6162 = call float @dx.op.unary.f32(i32 7, float %6159)  ; Saturate(value)
  %6163 = call float @dx.op.unary.f32(i32 7, float %6160)  ; Saturate(value)
  %6164 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6165 = select i1 %6150, float %6162, float 0.000000e+00
  %6166 = select i1 %6151, float %6163, float 0.000000e+00
  %6167 = select i1 %6152, float %6164, float 0.000000e+00
  %6168 = fmul fast float %6165, %6065
  %6169 = fmul fast float %6166, %6065
  %6170 = fmul fast float %6167, %6065
  %6171 = fadd fast float %6168, -1.000000e+00
  %6172 = fadd fast float %6169, -1.000000e+00
  %6173 = fadd fast float %6170, -1.000000e+00
  %6174 = fmul fast float %6060, %6001
  %6175 = fmul fast float %6061, %6002
  %6176 = fmul fast float %6062, %6003
  %6177 = fsub fast float 1.000000e+00, %5892
  %6178 = bitcast float %6177 to i32
  %6179 = sitofp i32 %6178 to float
  %6180 = fmul fast float %6179, 5.000000e+00
  %6181 = fadd fast float %6180, 0xC1EFBF8940000000
  %6182 = fptosi float %6181 to i32
  %6183 = bitcast i32 %6182 to float
  %6184 = fmul fast float %6138, %6183
  %6185 = fmul fast float %6116, %6184
  %6186 = fmul fast float %6185, %6145
  %6187 = fmul fast float %6118, %6184
  %6188 = fmul fast float %6187, %6146
  %6189 = fmul fast float %6120, %6184
  %6190 = fmul fast float %6189, %6147
  %6191 = fmul fast float %6117, %4651
  %6192 = fmul fast float %6119, %4651
  %6193 = fmul fast float %6121, %4651
  %6194 = fadd fast float %6174, %4644
  %6195 = fadd fast float %6194, %6186
  %6196 = fmul fast float %6195, %4651
  %6197 = fadd fast float %6175, %4645
  %6198 = fadd fast float %6197, %6188
  %6199 = fmul fast float %6198, %4651
  %6200 = fadd fast float %6176, %4646
  %6201 = fadd fast float %6200, %6190
  %6202 = fmul fast float %6201, %4651
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 3
  %6205 = fcmp fast oeq float %6204, 0.000000e+00
  br i1 %6205, label %7302, label %6206

; <label>:6206                                    ; preds = %6059
  %6207 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6208 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6216 = extractvalue %dx.types.CBufRet.f32 %6214, 1
  %6217 = call float @dx.op.dot3.f32(i32 55, float %6211, float %6212, float %6213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6218 = select i1 %269, float %6215, float %6211
  %6219 = select i1 %269, float %6217, float %6212
  %6220 = select i1 %269, float %6216, float %6213
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6223 = fmul fast float %6222, %117
  %6224 = fmul fast float %6222, %118
  %6225 = fmul fast float %6222, %119
  %6226 = fadd fast float %6223, %197
  %6227 = fadd fast float %6224, %198
  %6228 = fadd fast float %6225, %199
  %6229 = fcmp fast olt float %6204, 0.000000e+00
  br i1 %6229, label %6869, label %6230

; <label>:6230                                    ; preds = %6206
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6235 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = fmul fast float %6232, %6226
  %6247 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6233, float %6246)  ; FMad(a,b,c)
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6234, float %6247)  ; FMad(a,b,c)
  %6249 = fadd fast float %6248, %6235
  %6250 = fmul fast float %6237, %6226
  %6251 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6238, float %6250)  ; FMad(a,b,c)
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6239, float %6251)  ; FMad(a,b,c)
  %6253 = fadd fast float %6252, %6240
  %6254 = fmul fast float %6242, %6226
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6243, float %6254)  ; FMad(a,b,c)
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6244, float %6255)  ; FMad(a,b,c)
  %6257 = fadd fast float %6256, %6245
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = fcmp fast une float %6259, 0.000000e+00
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 3
  %6265 = fmul fast float %6264, %6249
  %6266 = fmul fast float %6264, %6253
  %6267 = fadd fast float %6265, %6262
  %6268 = fadd fast float %6266, %6263
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6269, 3
  %6273 = fmul fast float %6272, %6249
  %6274 = fmul fast float %6272, %6253
  %6275 = fadd fast float %6273, %6270
  %6276 = fadd fast float %6274, %6271
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 1
  %6279 = fsub fast float %6278, %6257
  %6280 = extractvalue %dx.types.CBufRet.f32 %6277, 2
  %6281 = fmul fast float %6279, %6280
  %6282 = fsub fast float 1.000000e+00, %6281
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  br i1 %6260, label %6344, label %6284

; <label>:6284                                    ; preds = %6230
  %6285 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 2
  %6288 = fadd fast float %6287, %6285
  %6289 = fcmp fast ogt float %6288, 0.000000e+00
  br i1 %6289, label %6290, label %6314

; <label>:6290                                    ; preds = %6284
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = fsub fast float %6275, %6292
  %6295 = fsub fast float %6276, %6293
  %6296 = fcmp fast olt float %6294, 0.000000e+00
  %6297 = fcmp fast olt float %6295, 0.000000e+00
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6302 = extractvalue %dx.types.CBufRet.f32 %6298, 3
  %6303 = select i1 %6296, float %6299, float %6301
  %6304 = select i1 %6297, float %6300, float %6302
  %6305 = fmul fast float %6303, %6294
  %6306 = fmul fast float %6304, %6295
  %6307 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6308 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6310 = call float @dx.op.binary.f32(i32 35, float %6307, float %6308)  ; FMax(a,b)
  %6311 = fsub fast float %6309, %6310
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fmul fast float %6312, %6283
  br label %6314

; <label>:6314                                    ; preds = %6290, %6284
  %6315 = phi float [ %6313, %6290 ], [ 0.000000e+00, %6284 ]
  %6316 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6317 = extractvalue %dx.types.CBufRet.f32 %6286, 1
  %6318 = fadd fast float %6317, %6316
  %6319 = fcmp fast ogt float %6318, 0.000000e+00
  br i1 %6319, label %6320, label %6344

; <label>:6320                                    ; preds = %6314
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6324 = fsub fast float %6267, %6322
  %6325 = fsub fast float %6268, %6323
  %6326 = fcmp fast olt float %6324, 0.000000e+00
  %6327 = fcmp fast olt float %6325, 0.000000e+00
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.CBufRet.f32 %6328, 2
  %6332 = extractvalue %dx.types.CBufRet.f32 %6328, 3
  %6333 = select i1 %6326, float %6329, float %6331
  %6334 = select i1 %6327, float %6330, float %6332
  %6335 = fmul fast float %6333, %6324
  %6336 = fmul fast float %6334, %6325
  %6337 = call float @dx.op.unary.f32(i32 6, float %6335)  ; FAbs(value)
  %6338 = call float @dx.op.unary.f32(i32 6, float %6336)  ; FAbs(value)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6340 = call float @dx.op.binary.f32(i32 35, float %6337, float %6338)  ; FMax(a,b)
  %6341 = fsub fast float %6339, %6340
  %6342 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6343 = fmul fast float %6342, %6283
  br label %6344

; <label>:6344                                    ; preds = %6320, %6314, %6230
  %6345 = phi float [ 0.000000e+00, %6230 ], [ %6343, %6320 ], [ 0.000000e+00, %6314 ]
  %6346 = phi float [ 0.000000e+00, %6230 ], [ %6315, %6320 ], [ %6315, %6314 ]
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = fsub fast float %6249, %6351
  %6354 = fsub fast float %6253, %6352
  %6355 = fcmp fast olt float %6353, 0.000000e+00
  %6356 = fcmp fast olt float %6354, 0.000000e+00
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.CBufRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.CBufRet.f32 %6357, 2
  %6361 = extractvalue %dx.types.CBufRet.f32 %6357, 3
  %6362 = select i1 %6355, float %6358, float %6360
  %6363 = select i1 %6356, float %6359, float %6361
  %6364 = fmul fast float %6362, %6353
  %6365 = fmul fast float %6363, %6354
  %6366 = call float @dx.op.unary.f32(i32 6, float %6364)  ; FAbs(value)
  %6367 = call float @dx.op.unary.f32(i32 6, float %6365)  ; FAbs(value)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6369 = call float @dx.op.binary.f32(i32 35, float %6366, float %6367)  ; FMax(a,b)
  %6370 = fsub fast float %6368, %6369
  %6371 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6371, float %6349)  ; FMin(a,b)
  %6373 = fmul fast float %6372, %6283
  %6374 = fsub fast float %6345, %6373
  %6375 = fsub fast float %6346, %6345
  %6376 = fsub fast float %6375, %6373
  %6377 = call float @dx.op.binary.f32(i32 35, float %6345, float %6346)  ; FMax(a,b)
  %6378 = call float @dx.op.binary.f32(i32 35, float %6373, float %6377)  ; FMax(a,b)
  %6379 = fcmp fast olt float %6378, 1.000000e+00
  br i1 %6379, label %6380, label %6778, !dx.controlflow.hints !100

; <label>:6380                                    ; preds = %6344
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = fcmp fast une float %6382, 0.000000e+00
  br i1 %6383, label %6384, label %6778, !dx.controlflow.hints !101

; <label>:6384                                    ; preds = %6380
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6388 = extractvalue %dx.types.CBufRet.f32 %6385, 2
  %6389 = extractvalue %dx.types.CBufRet.f32 %6385, 3
  %6390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.CBufRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.CBufRet.f32 %6390, 2
  %6394 = extractvalue %dx.types.CBufRet.f32 %6390, 3
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6398 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6399 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6400 = fmul fast float %6386, %6226
  %6401 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6387, float %6400)  ; FMad(a,b,c)
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6388, float %6401)  ; FMad(a,b,c)
  %6403 = fadd fast float %6402, %6389
  %6404 = fmul fast float %6391, %6226
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6392, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6393, float %6405)  ; FMad(a,b,c)
  %6407 = fadd fast float %6406, %6394
  %6408 = fmul fast float %6396, %6226
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6397, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6398, float %6409)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6399
  %6412 = fcmp fast oge float %6403, 1.000000e+00
  %6413 = fcmp fast oge float %6407, 1.000000e+00
  %6414 = or i1 %6412, %6413
  %6415 = fcmp fast olt float %6403, 0.000000e+00
  %6416 = fcmp fast olt float %6407, 0.000000e+00
  %6417 = or i1 %6415, %6416
  %6418 = or i1 %6414, %6417
  br i1 %6418, label %6778, label %6419, !dx.controlflow.hints !102

; <label>:6419                                    ; preds = %6384
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.i32 %6424, 2
  %6426 = uitofp i32 %6425 to float
  %6427 = extractvalue %dx.types.CBufRet.i32 %6424, 3
  %6428 = uitofp i32 %6427 to float
  %6429 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6430 = fmul fast float %6429, 2.000000e+00
  %6431 = fsub fast float %6403, %6421
  %6432 = fsub fast float %6407, %6422
  %6433 = fmul fast float %6430, %6431
  %6434 = fmul fast float %6430, %6432
  %6435 = fdiv fast float 1.000000e+00, %6209
  %6436 = fmul fast float %6434, %6435
  %6437 = call float @dx.op.unary.f32(i32 6, float %6436)  ; FAbs(value)
  %6438 = fmul fast float %6423, %6228
  %6439 = fmul fast float %6438, %6430
  %6440 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6441 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6442 = call float @dx.op.binary.f32(i32 35, float %6440, float %6437)  ; FMax(a,b)
  %6443 = call float @dx.op.binary.f32(i32 35, float %6441, float %6442)  ; FMax(a,b)
  %6444 = fmul fast float %6443, 2.000000e+00
  %6445 = call float @dx.op.unary.f32(i32 23, float %6444)  ; Log(value)
  %6446 = call float @dx.op.binary.f32(i32 35, float %6445, float %6426)  ; FMax(a,b)
  %6447 = call float @dx.op.unary.f32(i32 22, float %6446)  ; Frc(value)
  %6448 = fadd fast float %6447, 0xBFEA666660000000
  %6449 = fmul fast float %6448, 8.000000e+00
  %6450 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  %6451 = call float @dx.op.unary.f32(i32 27, float %6446)  ; Round_ni(value)
  %6452 = fadd fast float %6451, %6450
  %6453 = call float @dx.op.binary.f32(i32 36, float %6452, float %6428)  ; FMin(a,b)
  %6454 = call float @dx.op.unary.f32(i32 27, float %6453)  ; Round_ni(value)
  %6455 = fsub fast float -0.000000e+00, %6454
  %6456 = call float @dx.op.unary.f32(i32 21, float %6455)  ; Exp(value)
  %6457 = fmul fast float %6456, %6430
  %6458 = fmul fast float %6457, %6403
  %6459 = fmul fast float %6457, %6407
  %6460 = fmul fast float %6458, 2.500000e-01
  %6461 = fmul fast float %6459, 2.500000e-01
  %6462 = fadd fast float %6460, 5.000000e-01
  %6463 = fadd fast float %6461, 5.000000e-01
  %6464 = fsub fast float %6428, %6426
  %6465 = fptoui float %6464 to i32
  %6466 = add i32 %6465, 320
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6466)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6470 = fcmp fast une float %6453, %6428
  %6471 = fsub fast float %6403, %6468
  %6472 = fsub fast float %6407, %6469
  %6473 = call float @dx.op.unary.f32(i32 6, float %6471)  ; FAbs(value)
  %6474 = call float @dx.op.unary.f32(i32 6, float %6472)  ; FAbs(value)
  %6475 = fmul fast float %6473, %6457
  %6476 = fmul fast float %6474, %6457
  %6477 = fcmp fast olt float %6475, 1.000000e+00
  %6478 = fcmp fast olt float %6476, 1.000000e+00
  %6479 = and i1 %6477, %6478
  %6480 = or i1 %6470, %6479
  br i1 %6480, label %6481, label %6778, !dx.controlflow.hints !103

; <label>:6481                                    ; preds = %6419
  %6482 = fmul fast float %6459, 5.000000e-01
  %6483 = fmul fast float %6458, 5.000000e-01
  %6484 = fadd fast float %6482, 5.000000e-01
  %6485 = fadd fast float %6483, 5.000000e-01
  %6486 = sitofp i32 %6425 to float
  %6487 = fsub fast float %6453, %6486
  %6488 = call float @dx.op.unary.f32(i32 27, float %6487)  ; Round_ni(value)
  %6489 = call float @dx.op.unary.f32(i32 22, float %6453)  ; Frc(value)
  %6490 = call float @dx.op.unary.f32(i32 22, float %6485)  ; Frc(value)
  %6491 = call float @dx.op.unary.f32(i32 22, float %6484)  ; Frc(value)
  %6492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6490, float %6491, float %6488, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.ResRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.ResRet.f32 %6492, 2
  %6496 = extractvalue %dx.types.ResRet.f32 %6492, 3
  %6497 = fcmp fast ogt float %6489, 0.000000e+00
  br i1 %6497, label %6498, label %6519, !dx.controlflow.hints !104

; <label>:6498                                    ; preds = %6481
  %6499 = fadd fast float %6488, 1.000000e+00
  %6500 = call float @dx.op.unary.f32(i32 22, float %6462)  ; Frc(value)
  %6501 = call float @dx.op.unary.f32(i32 22, float %6463)  ; Frc(value)
  %6502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6500, float %6501, float %6499, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.ResRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.ResRet.f32 %6502, 2
  %6506 = extractvalue %dx.types.ResRet.f32 %6502, 3
  %6507 = fsub fast float %6503, %6493
  %6508 = fsub fast float %6504, %6494
  %6509 = fsub fast float %6505, %6495
  %6510 = fsub fast float %6506, %6496
  %6511 = fmul fast float %6507, %6489
  %6512 = fmul fast float %6508, %6489
  %6513 = fmul fast float %6509, %6489
  %6514 = fmul fast float %6510, %6489
  %6515 = fadd fast float %6511, %6493
  %6516 = fadd fast float %6512, %6494
  %6517 = fadd fast float %6513, %6495
  %6518 = fadd fast float %6514, %6496
  br label %6519

; <label>:6519                                    ; preds = %6498, %6481
  %6520 = phi float [ %6515, %6498 ], [ %6493, %6481 ]
  %6521 = phi float [ %6516, %6498 ], [ %6494, %6481 ]
  %6522 = phi float [ %6517, %6498 ], [ %6495, %6481 ]
  %6523 = phi float [ %6518, %6498 ], [ %6496, %6481 ]
  %6524 = fadd fast float %6520, -5.000000e-01
  %6525 = fadd fast float %6522, -5.000000e-01
  %6526 = fmul fast float %6524, 0xBFD5555560000000
  %6527 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6525, float %6526)  ; FMad(a,b,c)
  %6528 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6521, float 0.000000e+00)  ; FMad(a,b,c)
  %6529 = fadd fast float %6528, %6523
  %6530 = fmul fast float %6524, -7.500000e-01
  %6531 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6525, float %6530)  ; FMad(a,b,c)
  %6532 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6521, float 0.000000e+00)  ; FMad(a,b,c)
  %6533 = fadd fast float %6532, %6523
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.CBufRet.f32 %6536, 2
  %6540 = extractvalue %dx.types.CBufRet.f32 %6536, 3
  %6541 = fsub fast float %6537, %6527
  %6542 = fsub fast float %6538, %6529
  %6543 = fsub fast float %6539, %6531
  %6544 = fsub fast float %6540, %6533
  %6545 = fmul fast float %6541, %6535
  %6546 = fmul fast float %6542, %6535
  %6547 = fmul fast float %6543, %6535
  %6548 = fmul fast float %6544, %6535
  %6549 = fadd fast float %6545, %6527
  %6550 = fadd fast float %6546, %6529
  %6551 = fadd fast float %6547, %6531
  %6552 = fadd fast float %6548, %6533
  %6553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6554 = extractvalue %dx.types.ResRet.i32 %6553, 0
  %6555 = and i32 %6554, 536870911
  %6556 = uitofp i32 %6555 to float
  %6557 = fmul fast float %6556, %6403
  %6558 = fmul fast float %6556, %6407
  %6559 = fptoui float %6557 to i32
  %6560 = fptoui float %6558 to i32
  %6561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6562 = extractvalue %dx.types.ResRet.i32 %6561, 0
  %6563 = and i32 %6562, 31
  %6564 = lshr i32 %6559, %6563
  %6565 = lshr i32 %6560, %6563
  %6566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6567 = extractvalue %dx.types.ResRet.i32 %6566, 0
  %6568 = and i32 %6567, 31
  %6569 = shl i32 1, %6568
  %6570 = call i32 @dx.op.binary.i32(i32 40, i32 %6569, i32 4)  ; UMin(a,b)
  %6571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6572 = extractvalue %dx.types.ResRet.i32 %6571, 0
  %6573 = extractvalue %dx.types.ResRet.i32 %6571, 1
  %6574 = icmp eq i32 %6570, 0
  br i1 %6574, label %6616, label %6575

; <label>:6575                                    ; preds = %6519
  br label %6576

; <label>:6576                                    ; preds = %6604, %6575
  %6577 = phi i32 [ %6607, %6604 ], [ 0, %6575 ]
  %6578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.i32 %6578, 0
  %6580 = lshr i32 %6579, 16
  %6581 = and i32 %6580, 31
  %6582 = shl i32 %6565, %6581
  %6583 = add i32 %6582, %6564
  %6584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6585 = extractvalue %dx.types.ResRet.i32 %6584, 0
  %6586 = and i32 %6585, 31
  %6587 = shl i32 %6583, %6586
  %6588 = add i32 %6587, %6577
  %6589 = shl i32 %6588, 2
  %6590 = add i32 %6589, 32
  %6591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6590, i32 undef)  ; BufferLoad(srv,index,wot)
  %6592 = extractvalue %dx.types.ResRet.i32 %6591, 0
  %6593 = icmp slt i32 %6592, 0
  %6594 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6577
  %6595 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6577
  %6596 = bitcast float* %6594 to i32*
  %6597 = bitcast float* %6595 to i32*
  br i1 %6593, label %6598, label %6604

; <label>:6598                                    ; preds = %6576
  %6599 = and i32 %6592, 1073741823
  %6600 = add nuw nsw i32 %6599, 20
  %6601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6600, i32 undef)  ; BufferLoad(srv,index,wot)
  %6602 = extractvalue %dx.types.ResRet.i32 %6601, 0
  %6603 = extractvalue %dx.types.ResRet.i32 %6601, 1
  br label %6604

; <label>:6604                                    ; preds = %6598, %6576
  %6605 = phi i32 [ %6602, %6598 ], [ %6572, %6576 ]
  %6606 = phi i32 [ %6603, %6598 ], [ %6573, %6576 ]
  store i32 %6605, i32* %6596, align 4
  store i32 %6606, i32* %6597, align 4
  %6607 = add nuw i32 %6577, 1
  %6608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.i32 %6608, 2
  %6610 = icmp eq i32 %6609, 0
  %6611 = icmp ugt i32 %6592, -1073741825
  %6612 = and i1 %6611, %6610
  %6613 = icmp ult i32 %6607, %6570
  %6614 = and i1 %6612, %6613
  br i1 %6614, label %6576, label %6615

; <label>:6615                                    ; preds = %6604
  br label %6616

; <label>:6616                                    ; preds = %6615, %6519
  %6617 = phi i32 [ 0, %6519 ], [ %6607, %6615 ]
  %6618 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6619 = fptoui float %6618 to i32
  %6620 = icmp eq i32 %6619, 0
  br i1 %6620, label %6672, label %6621

; <label>:6621                                    ; preds = %6616
  br label %6622

; <label>:6622                                    ; preds = %6667, %6621
  %6623 = phi i32 [ %6668, %6667 ], [ %6617, %6621 ]
  %6624 = phi i32 [ %6669, %6667 ], [ 0, %6621 ]
  %6625 = lshr i32 %6624, 2
  %6626 = and i32 %6624, 3
  %6627 = add nuw nsw i32 %6625, 83
  %6628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6627)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.i32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.i32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.i32 %6628, 2
  %6632 = extractvalue %dx.types.CBufRet.i32 %6628, 3
  %6633 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6629, i32* %6633, align 4
  %6634 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6630, i32* %6634, align 4
  %6635 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6631, i32* %6635, align 4
  %6636 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6632, i32* %6636, align 4
  %6637 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6626
  %6638 = load i32, i32* %6637, align 4, !tbaa !105, !noalias !109
  %6639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6640 = extractvalue %dx.types.ResRet.i32 %6639, 0
  %6641 = lshr i32 %6640, 16
  %6642 = and i32 %6641, 31
  %6643 = shl i32 %6565, %6642
  %6644 = add i32 %6643, %6564
  %6645 = shl i32 %6644, 2
  %6646 = add i32 %6645, %6638
  %6647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6646, i32 undef)  ; BufferLoad(srv,index,wot)
  %6648 = extractvalue %dx.types.ResRet.i32 %6647, 0
  %6649 = icmp eq i32 %6648, 0
  br i1 %6649, label %6667, label %6650

; <label>:6650                                    ; preds = %6622
  %6651 = icmp slt i32 %6648, 0
  %6652 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6623
  %6653 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6623
  %6654 = bitcast float* %6652 to i32*
  %6655 = bitcast float* %6653 to i32*
  br i1 %6651, label %6656, label %6663

; <label>:6656                                    ; preds = %6650
  %6657 = and i32 %6648, 1073741823
  %6658 = add i32 %6638, 20
  %6659 = add i32 %6658, %6657
  %6660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6659, i32 undef)  ; BufferLoad(srv,index,wot)
  %6661 = extractvalue %dx.types.ResRet.i32 %6660, 0
  %6662 = extractvalue %dx.types.ResRet.i32 %6660, 1
  br label %6663

; <label>:6663                                    ; preds = %6656, %6650
  %6664 = phi i32 [ %6661, %6656 ], [ %6572, %6650 ]
  %6665 = phi i32 [ %6662, %6656 ], [ %6573, %6650 ]
  store i32 %6664, i32* %6654, align 4
  store i32 %6665, i32* %6655, align 4
  %6666 = add i32 %6623, 1
  br label %6667

; <label>:6667                                    ; preds = %6663, %6622
  %6668 = phi i32 [ %6623, %6622 ], [ %6666, %6663 ]
  %6669 = add nuw i32 %6624, 1
  %6670 = icmp eq i32 %6669, %6619
  br i1 %6670, label %6671, label %6622

; <label>:6671                                    ; preds = %6667
  br label %6672

; <label>:6672                                    ; preds = %6671, %6616
  %6673 = phi i32 [ %6617, %6616 ], [ %6668, %6671 ]
  %6674 = icmp eq i32 %6673, 1
  %6675 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6676 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6674, label %6677, label %6680

; <label>:6677                                    ; preds = %6672
  %6678 = load float, float* %6675, align 4
  %6679 = load float, float* %6676, align 4
  br label %6707

; <label>:6680                                    ; preds = %6672
  %6681 = load float, float* %6675, align 4
  %6682 = load float, float* %6676, align 4
  %6683 = fdiv fast float 1.000000e+00, %6682
  %6684 = fsub fast float %6681, %6683
  %6685 = icmp ugt i32 %6673, 1
  br i1 %6685, label %6686, label %6702

; <label>:6686                                    ; preds = %6680
  br label %6687

; <label>:6687                                    ; preds = %6687, %6686
  %6688 = phi float [ %6697, %6687 ], [ %6684, %6686 ]
  %6689 = phi float [ %6698, %6687 ], [ %6681, %6686 ]
  %6690 = phi i32 [ %6699, %6687 ], [ 1, %6686 ]
  %6691 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6690
  %6692 = load float, float* %6691, align 4
  %6693 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6690
  %6694 = load float, float* %6693, align 4
  %6695 = fdiv fast float 1.000000e+00, %6694
  %6696 = fsub fast float %6692, %6695
  %6697 = call float @dx.op.binary.f32(i32 36, float %6688, float %6696)  ; FMin(a,b)
  %6698 = call float @dx.op.binary.f32(i32 35, float %6689, float %6692)  ; FMax(a,b)
  %6699 = add nuw i32 %6690, 1
  %6700 = icmp eq i32 %6699, %6673
  br i1 %6700, label %6701, label %6687

; <label>:6701                                    ; preds = %6687
  br label %6702

; <label>:6702                                    ; preds = %6701, %6680
  %6703 = phi float [ %6684, %6680 ], [ %6697, %6701 ]
  %6704 = phi float [ %6681, %6680 ], [ %6698, %6701 ]
  %6705 = fsub fast float %6704, %6703
  %6706 = fdiv fast float 1.000000e+00, %6705
  br label %6707

; <label>:6707                                    ; preds = %6702, %6677
  %6708 = phi float [ %6678, %6677 ], [ %6704, %6702 ]
  %6709 = phi float [ %6679, %6677 ], [ %6706, %6702 ]
  %6710 = fadd fast float %6411, %6708
  %6711 = fmul fast float %6710, %6709
  %6712 = call float @dx.op.unary.f32(i32 7, float %6711)  ; Saturate(value)
  %6713 = fmul fast float %6712, 2.000000e+00
  %6714 = fsub fast float 1.000000e+00, %6713
  %6715 = fmul fast float %6549, %6549
  %6716 = fsub fast float %6550, %6715
  %6717 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6716)  ; FMax(a,b)
  %6718 = fdiv fast float 1.000000e+00, %6717
  %6719 = fmul fast float %6550, %6549
  %6720 = fsub fast float %6551, %6719
  %6721 = fsub fast float %6714, %6549
  %6722 = fmul fast float %6714, %6714
  %6723 = fsub fast float %6722, %6550
  %6724 = fmul fast float %6718, %6720
  %6725 = fmul fast float %6724, %6721
  %6726 = fsub fast float %6723, %6725
  %6727 = fmul fast float %6550, %6550
  %6728 = fsub fast float %6552, %6727
  %6729 = fmul fast float %6720, %6720
  %6730 = fmul fast float %6729, %6718
  %6731 = fsub fast float %6728, %6730
  %6732 = fdiv fast float %6726, %6731
  %6733 = fmul fast float %6732, %6720
  %6734 = fsub fast float %6721, %6733
  %6735 = fmul fast float %6734, %6718
  %6736 = fmul fast float %6735, %6549
  %6737 = fsub fast float 1.000000e+00, %6736
  %6738 = fmul fast float %6732, %6550
  %6739 = fsub fast float %6737, %6738
  %6740 = fmul fast float %6735, %6735
  %6741 = fmul fast float %6732, 4.000000e+00
  %6742 = fmul fast float %6741, %6739
  %6743 = fsub fast float %6740, %6742
  %6744 = call float @dx.op.unary.f32(i32 24, float %6743)  ; Sqrt(value)
  %6745 = fcmp fast oge float %6735, 0.000000e+00
  %6746 = fsub fast float -0.000000e+00, %6744
  %6747 = select i1 %6745, float %6746, float %6744
  %6748 = fsub fast float %6747, %6735
  %6749 = fdiv fast float %6748, %6732
  %6750 = fdiv fast float %6739, %6748
  %6751 = fmul fast float %6749, 5.000000e-01
  %6752 = fmul fast float %6750, 2.000000e+00
  %6753 = select i1 %6745, float %6751, float %6752
  %6754 = select i1 %6745, float %6752, float %6751
  %6755 = call float @dx.op.binary.f32(i32 35, float %6753, float %6754)  ; FMax(a,b)
  %6756 = call float @dx.op.binary.f32(i32 36, float %6753, float %6754)  ; FMin(a,b)
  %6757 = fcmp fast ogt float %6714, %6755
  %6758 = fsub fast float %6714, %6756
  %6759 = fsub fast float %6714, %6755
  %6760 = fsub fast float %6755, %6756
  %6761 = select i1 %6757, float %6759, float %6760
  %6762 = fmul float %6758, %6761
  %6763 = select i1 %6757, float %6756, float %6714
  %6764 = fcmp fast ogt float %6714, %6756
  %6765 = fmul fast float %6763, %6755
  %6766 = fadd fast float %6763, %6755
  %6767 = fmul fast float %6766, %6549
  %6768 = fadd fast float %6765, %6550
  %6769 = fsub fast float %6768, %6767
  %6770 = fdiv fast float %6769, %6762
  %6771 = select i1 %6764, float %6770, float 0.000000e+00
  %6772 = fsub fast float 1.000000e+00, %6771
  %6773 = select i1 %6757, float %6772, float %6771
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6776 = fmul fast float %6775, %6774
  %6777 = fsub fast float 1.000000e+00, %6776
  br label %6778

; <label>:6778                                    ; preds = %6707, %6419, %6384, %6380, %6344
  %6779 = phi float [ 1.000000e+00, %6344 ], [ %6777, %6707 ], [ 1.000000e+00, %6384 ], [ 1.000000e+00, %6419 ], [ 1.000000e+00, %6380 ]
  %6780 = fcmp fast ogt float %6376, 0.000000e+00
  br i1 %6780, label %6781, label %6789, !dx.controlflow.hints !118

; <label>:6781                                    ; preds = %6778
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 2
  %6784 = fadd fast float %6783, %6257
  %6785 = call float @dx.op.binary.f32(i32 35, float %6784, float 0.000000e+00)  ; FMax(a,b)
  %6786 = fadd fast float %6785, 0x3F10000000000000
  %6787 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6275, float %6276, float undef, float undef, i32 0, i32 0, i32 undef, float %6786)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6788 = extractvalue %dx.types.ResRet.f32 %6787, 0
  br label %6789

; <label>:6789                                    ; preds = %6781, %6778
  %6790 = phi float [ %6788, %6781 ], [ 1.000000e+00, %6778 ]
  %6791 = fcmp fast ogt float %6374, 0.000000e+00
  br i1 %6791, label %6792, label %6800, !dx.controlflow.hints !119

; <label>:6792                                    ; preds = %6789
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6795 = fadd fast float %6794, %6257
  %6796 = call float @dx.op.binary.f32(i32 35, float %6795, float 0.000000e+00)  ; FMax(a,b)
  %6797 = fadd fast float %6796, 0x3F10000000000000
  %6798 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6267, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float %6797)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6799 = extractvalue %dx.types.ResRet.f32 %6798, 0
  br label %6800

; <label>:6800                                    ; preds = %6792, %6789
  %6801 = phi float [ %6799, %6792 ], [ 1.000000e+00, %6789 ]
  %6802 = fcmp fast ogt float %6373, 0.000000e+00
  br i1 %6802, label %6803, label %6815, !dx.controlflow.hints !120

; <label>:6803                                    ; preds = %6800
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = fadd fast float %6805, %6257
  %6807 = call float @dx.op.binary.f32(i32 35, float %6806, float 0.000000e+00)  ; FMax(a,b)
  %6808 = fadd fast float %6807, 0x3F10000000000000
  br i1 %6260, label %6809, label %6812, !dx.controlflow.hints !121

; <label>:6809                                    ; preds = %6803
  %6810 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6249, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float %6808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  br label %6815

; <label>:6812                                    ; preds = %6803
  %6813 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6249, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float %6808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6814 = extractvalue %dx.types.ResRet.f32 %6813, 0
  br label %6815

; <label>:6815                                    ; preds = %6812, %6809, %6800
  %6816 = phi float [ %6811, %6809 ], [ %6814, %6812 ], [ 1.000000e+00, %6800 ]
  %6817 = fsub fast float %6790, %6779
  %6818 = fmul fast float %6817, %6346
  %6819 = fadd fast float %6818, %6779
  %6820 = fsub fast float %6801, %6819
  %6821 = fmul fast float %6820, %6345
  %6822 = fadd fast float %6821, %6819
  %6823 = fsub fast float %6816, %6822
  %6824 = fmul fast float %6823, %6373
  %6825 = fadd fast float %6824, %6822
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6828 = fcmp fast ogt float %6827, 0.000000e+00
  br i1 %6828, label %6829, label %6869, !dx.controlflow.hints !122

; <label>:6829                                    ; preds = %6815
  %6830 = fcmp fast ugt float %6827, 0.000000e+00
  br i1 %6830, label %6831, label %6866

; <label>:6831                                    ; preds = %6829
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.CBufRet.f32 %6832, 1
  %6835 = extractvalue %dx.types.CBufRet.f32 %6832, 2
  %6836 = extractvalue %dx.types.CBufRet.f32 %6832, 3
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6842 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = fadd fast float %6845, %6226
  %6849 = fadd fast float %6846, %6227
  %6850 = fadd fast float %6847, %6228
  %6851 = fmul fast float %6848, %6833
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6834, float %6849, float %6851)  ; FMad(a,b,c)
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %6835, float %6850, float %6852)  ; FMad(a,b,c)
  %6854 = fadd fast float %6853, %6836
  %6855 = fmul fast float %6848, %6838
  %6856 = call float @dx.op.tertiary.f32(i32 46, float %6839, float %6849, float %6855)  ; FMad(a,b,c)
  %6857 = call float @dx.op.tertiary.f32(i32 46, float %6840, float %6850, float %6856)  ; FMad(a,b,c)
  %6858 = fadd fast float %6857, %6841
  %6859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6854, float %6858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6860 = extractvalue %dx.types.ResRet.f32 %6859, 0
  %6861 = fmul fast float %6860, %6843
  %6862 = fadd fast float %6861, %6842
  %6863 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6864 = fmul fast float %6863, %6827
  %6865 = fsub fast float 1.000000e+00, %6864
  br label %6866

; <label>:6866                                    ; preds = %6831, %6829
  %6867 = phi float [ %6865, %6831 ], [ 1.000000e+00, %6829 ]
  %6868 = fmul fast float %6867, %6825
  br label %6869

; <label>:6869                                    ; preds = %6866, %6815, %6206
  %6870 = phi float [ 1.000000e+00, %6206 ], [ %6868, %6866 ], [ %6825, %6815 ]
  %6871 = call float @dx.op.binary.f32(i32 36, float %6870, float %6870)  ; FMin(a,b)
  %6872 = call float @dx.op.binary.f32(i32 36, float %6870, float %6871)  ; FMin(a,b)
  %6873 = fcmp fast ogt float %6872, 0.000000e+00
  br i1 %6873, label %6874, label %7034, !dx.controlflow.hints !123

; <label>:6874                                    ; preds = %6869
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6875, 3
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6890 = fmul fast float %6876, %6226
  %6891 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6877, float %6890)  ; FMad(a,b,c)
  %6892 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6878, float %6891)  ; FMad(a,b,c)
  %6893 = fadd fast float %6892, %6879
  %6894 = fmul fast float %6881, %6226
  %6895 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6882, float %6894)  ; FMad(a,b,c)
  %6896 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6883, float %6895)  ; FMad(a,b,c)
  %6897 = fadd fast float %6896, %6884
  %6898 = fmul fast float %6886, %6226
  %6899 = call float @dx.op.tertiary.f32(i32 46, float %6227, float %6887, float %6898)  ; FMad(a,b,c)
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6228, float %6888, float %6899)  ; FMad(a,b,c)
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6904 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %6905 = fmul fast float %6904, %6893
  %6906 = fmul fast float %6904, %6897
  %6907 = fadd fast float %6905, %6902
  %6908 = fadd fast float %6906, %6903
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.CBufRet.f32 %6909, 1
  %6912 = fsub fast float %6907, %6910
  %6913 = fsub fast float %6908, %6911
  %6914 = fcmp fast olt float %6912, 0.000000e+00
  %6915 = fcmp fast olt float %6913, 0.000000e+00
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6920 = extractvalue %dx.types.CBufRet.f32 %6916, 3
  %6921 = select i1 %6914, float %6917, float %6919
  %6922 = select i1 %6915, float %6918, float %6920
  %6923 = fmul fast float %6921, %6912
  %6924 = fmul fast float %6922, %6913
  %6925 = call float @dx.op.unary.f32(i32 6, float %6923)  ; FAbs(value)
  %6926 = call float @dx.op.unary.f32(i32 6, float %6924)  ; FAbs(value)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6928 = call float @dx.op.binary.f32(i32 35, float %6925, float %6926)  ; FMax(a,b)
  %6929 = fsub fast float %6927, %6928
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = fcmp fast ogt float %6930, 0.000000e+00
  br i1 %6931, label %6932, label %6973, !dx.controlflow.hints !124

; <label>:6932                                    ; preds = %6874
  %6933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6907, float %6908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6934 = extractvalue %dx.types.ResRet.f32 %6933, 1
  %6935 = fcmp fast ogt float %6934, 0.000000e+00
  br i1 %6935, label %6936, label %6968

; <label>:6936                                    ; preds = %6932
  %6937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6907, float %6908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6938 = extractvalue %dx.types.ResRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.ResRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.ResRet.f32 %6937, 2
  %6941 = extractvalue %dx.types.ResRet.f32 %6937, 3
  %6942 = fsub fast float 1.000000e+00, %6889
  %6943 = fsub fast float %6942, %6900
  %6944 = fmul fast float %6943, 0x400921FB60000000
  %6945 = fadd fast float %6944, 0x3FF921FB60000000
  %6946 = call float @dx.op.unary.f32(i32 13, float %6945)  ; Sin(value)
  %6947 = fadd fast float %6946, -1.000000e+00
  %6948 = fmul fast float %6947, 0x3FD45F3060000000
  %6949 = fmul fast float %6943, 0x401921FB60000000
  %6950 = fadd fast float %6949, 0x400921FB60000000
  %6951 = call float @dx.op.unary.f32(i32 13, float %6950)  ; Sin(value)
  %6952 = fadd fast float %6951, 0x3E7777A5C0000000
  %6953 = fmul fast float %6952, 0x3FC45F3060000000
  %6954 = fmul fast float %6943, 0x4022D97C80000000
  %6955 = fadd fast float %6954, 0x4012D97C80000000
  %6956 = call float @dx.op.unary.f32(i32 13, float %6955)  ; Sin(value)
  %6957 = fadd fast float %6956, 1.000000e+00
  %6958 = fmul fast float %6957, 0x3FBB2995E0000000
  %6959 = fmul fast float %6943, 0x402921FB60000000
  %6960 = fadd fast float %6959, 0x401921FB60000000
  %6961 = call float @dx.op.unary.f32(i32 13, float %6960)  ; Sin(value)
  %6962 = fadd fast float %6961, 0xBE8777A5C0000000
  %6963 = fmul fast float %6962, 0x3FB45F3060000000
  %6964 = call float @dx.op.dot4.f32(i32 56, float %6938, float %6939, float %6940, float %6941, float %6948, float %6953, float %6958, float %6963)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6965 = fmul fast float %6964, 0xBFF7154760000000
  %6966 = call float @dx.op.unary.f32(i32 21, float %6965)  ; Exp(value)
  %6967 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  br label %6968

; <label>:6968                                    ; preds = %6936, %6932
  %6969 = phi float [ %6967, %6936 ], [ 1.000000e+00, %6932 ]
  %6970 = fadd fast float %6969, -1.000000e+00
  %6971 = fmul fast float %6970, %6930
  %6972 = fadd fast float %6971, 1.000000e+00
  br label %6973

; <label>:6973                                    ; preds = %6968, %6874
  %6974 = phi float [ %6972, %6968 ], [ 1.000000e+00, %6874 ]
  %6975 = fmul fast float %6974, %6870
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.CBufRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6976, 2
  %6980 = fadd fast float %6977, %197
  %6981 = fadd fast float %6978, %198
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 1
  %6984 = fsub fast float -0.000000e+00, %6980
  %6985 = fsub fast float -0.000000e+00, %6981
  %6986 = fsub fast float %5881, %6979
  %6987 = fadd fast float %6986, %6983
  %6988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6984, float %6985, float %6987)  ; Dot3(ax,ay,az,bx,by,bz)
  %6989 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6207, float %6208, float %6209)  ; Dot3(ax,ay,az,bx,by,bz)
  %6990 = fdiv fast float 1.000000e+00, %6989
  %6991 = fmul fast float %6990, %6988
  %6992 = fmul fast float %6207, %6991
  %6993 = fmul fast float %6208, %6991
  %6994 = fadd fast float %6992, %6980
  %6995 = fadd fast float %6993, %6981
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = fsub fast float %6994, %6997
  %7000 = fsub fast float %6995, %6998
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 2
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 3
  %7004 = fmul fast float %6999, %7002
  %7005 = fmul fast float %7000, %7003
  %7006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.i32 %7006, 3
  %7008 = icmp eq i32 %7007, 0
  br i1 %7008, label %7014, label %7009

; <label>:7009                                    ; preds = %6973
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7004, float %7005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  br label %7019

; <label>:7014                                    ; preds = %6973
  %7015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7004, float %7005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.ResRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.ResRet.f32 %7015, 2
  br label %7019

; <label>:7019                                    ; preds = %7014, %7009
  %7020 = phi float [ %7011, %7009 ], [ %7016, %7014 ]
  %7021 = phi float [ %7012, %7009 ], [ %7017, %7014 ]
  %7022 = phi float [ %7013, %7009 ], [ %7018, %7014 ]
  %7023 = extractvalue %dx.types.CBufRet.f32 %6982, 2
  %7024 = fmul fast float %7023, %7020
  %7025 = extractvalue %dx.types.CBufRet.f32 %6982, 0
  %7026 = fsub fast float %6991, %7025
  %7027 = fsub fast float %7026, %7024
  %7028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7027)  ; FMax(a,b)
  %7029 = fmul fast float %7028, %7021
  %7030 = call float @dx.op.binary.f32(i32 36, float %7022, float %7029)  ; FMin(a,b)
  %7031 = fmul fast float %7030, 0xBFF7154760000000
  %7032 = call float @dx.op.unary.f32(i32 21, float %7031)  ; Exp(value)
  %7033 = fmul fast float %6975, %7032
  br label %7034

; <label>:7034                                    ; preds = %7019, %6869
  %7035 = phi float [ %7033, %7019 ], [ %6870, %6869 ]
  %7036 = call float @dx.op.binary.f32(i32 36, float %7035, float %7035)  ; FMin(a,b)
  %7037 = call float @dx.op.binary.f32(i32 36, float %7035, float %7036)  ; FMin(a,b)
  %7038 = fcmp fast ogt float %7037, 0.000000e+00
  br i1 %7038, label %7039, label %7302, !dx.controlflow.hints !125

; <label>:7039                                    ; preds = %7034
  %7040 = fmul fast float %7035, %6218
  %7041 = fmul fast float %7035, %6219
  %7042 = fmul fast float %7035, %6220
  %7043 = fsub fast float %199, %5058
  %7044 = fcmp fast ogt float %7043, 0.000000e+00
  %7045 = fmul fast float %6207, 5.120000e+02
  %7046 = fmul fast float %6208, 5.120000e+02
  %7047 = fmul fast float %6209, 5.120000e+02
  %7048 = fadd fast float %7047, %199
  %7049 = fsub fast float %5058, %7048
  %7050 = fmul fast float %7049, 2.000000e+00
  %7051 = fadd fast float %7050, %7048
  %7052 = select i1 %7044, float %7051, float %7048
  %7053 = fsub fast float %7052, %199
  %7054 = call float @dx.op.dot3.f32(i32 55, float %7045, float %7046, float %7053, float %7045, float %7046, float %7053)  ; Dot3(ax,ay,az,bx,by,bz)
  %7055 = call float @dx.op.unary.f32(i32 25, float %7054)  ; Rsqrt(value)
  %7056 = fmul fast float %7055, %7045
  %7057 = fmul fast float %7055, %7046
  %7058 = fmul fast float %7055, %7053
  %7059 = fsub fast float %5058, %199
  %7060 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7059)  ; Dot3(ax,ay,az,bx,by,bz)
  %7061 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7056, float %7057, float %7058)  ; Dot3(ax,ay,az,bx,by,bz)
  %7062 = fdiv fast float 1.000000e+00, %7061
  %7063 = fmul fast float %7062, %7060
  %7064 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7043, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7065 = fcmp fast ogt float %7064, 0.000000e+00
  %7066 = fcmp fast olt float %7064, 0.000000e+00
  %7067 = zext i1 %7065 to i32
  %7068 = zext i1 %7066 to i32
  %7069 = sub nsw i32 %7067, %7068
  %7070 = sitofp i32 %7069 to float
  %7071 = fsub fast float %7052, %5058
  %7072 = call float @dx.op.dot3.f32(i32 55, float %7045, float %7046, float %7071, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7073 = fcmp fast ogt float %7072, 0.000000e+00
  %7074 = fcmp fast olt float %7072, 0.000000e+00
  %7075 = zext i1 %7073 to i32
  %7076 = zext i1 %7074 to i32
  %7077 = sub nsw i32 %7075, %7076
  %7078 = sitofp i32 %7077 to float
  %7079 = fcmp fast une float %7070, %7078
  br i1 %7079, label %7080, label %7090

; <label>:7080                                    ; preds = %7039
  %7081 = fmul fast float %7063, %7058
  %7082 = fmul fast float %7063, %7057
  %7083 = fmul fast float %7063, %7056
  %7084 = fmul fast float %7083, %7083
  %7085 = fmul fast float %7082, %7082
  %7086 = fadd fast float %7084, %7085
  %7087 = fmul fast float %7081, %7081
  %7088 = fadd fast float %7086, %7087
  %7089 = call float @dx.op.unary.f32(i32 24, float %7088)  ; Sqrt(value)
  br label %7100

; <label>:7090                                    ; preds = %7039
  %7091 = icmp slt i32 %7069, 0
  br i1 %7091, label %7092, label %7100

; <label>:7092                                    ; preds = %7090
  %7093 = fsub fast float %199, %7052
  %7094 = fmul fast float %7045, %7045
  %7095 = fmul fast float %7046, %7046
  %7096 = fadd fast float %7094, %7095
  %7097 = fmul fast float %7093, %7093
  %7098 = fadd fast float %7096, %7097
  %7099 = call float @dx.op.unary.f32(i32 24, float %7098)  ; Sqrt(value)
  br label %7100

; <label>:7100                                    ; preds = %7092, %7090, %7080
  %7101 = phi float [ %7089, %7080 ], [ %7099, %7092 ], [ 0.000000e+00, %7090 ]
  %7102 = fsub fast float -0.000000e+00, %7101
  %7103 = select i1 %7044, float -0.000000e+00, float %7102
  %7104 = fmul fast float %5059, 0x3FF7154760000000
  %7105 = fmul fast float %7104, %7103
  %7106 = fmul fast float %5060, 0x3FF7154760000000
  %7107 = fmul fast float %7106, %7103
  %7108 = fmul fast float %5061, 0x3FF7154760000000
  %7109 = fmul fast float %7108, %7103
  %7110 = call float @dx.op.unary.f32(i32 21, float %7105)  ; Exp(value)
  %7111 = call float @dx.op.unary.f32(i32 21, float %7107)  ; Exp(value)
  %7112 = call float @dx.op.unary.f32(i32 21, float %7109)  ; Exp(value)
  %7113 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  %7114 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  %7115 = call float @dx.op.unary.f32(i32 7, float %7112)  ; Saturate(value)
  %7116 = fmul fast float %7040, %7113
  %7117 = fmul fast float %7041, %7114
  %7118 = fmul fast float %7042, %7115
  %7119 = fsub fast float %6207, %5884
  %7120 = fsub fast float %6208, %5885
  %7121 = fsub fast float %6209, %5886
  %7122 = call float @dx.op.dot3.f32(i32 55, float %7119, float %7120, float %7121, float %7119, float %7120, float %7121)  ; Dot3(ax,ay,az,bx,by,bz)
  %7123 = call float @dx.op.unary.f32(i32 25, float %7122)  ; Rsqrt(value)
  %7124 = fmul fast float %7123, %7119
  %7125 = fmul fast float %7123, %7120
  %7126 = fmul fast float %7123, %7121
  %7127 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6208, float %6209, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7128 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %7124, float %7125, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7129 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  %7130 = fmul fast float %7129, %7129
  %7131 = fmul fast float %7130, %5905
  %7132 = call float @dx.op.unary.f32(i32 7, float %7131)  ; Saturate(value)
  %7133 = fmul fast float %7132, %7129
  %7134 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %7124, float %7125, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7135 = fmul fast float %7134, %7134
  %7136 = call float @dx.op.unary.f32(i32 6, float %7127)  ; FAbs(value)
  %7137 = fsub fast float 1.000000e+00, %5847
  %7138 = call float @dx.op.binary.f32(i32 35, float %7137, float 0x3F847AE140000000)  ; FMax(a,b)
  %7139 = fmul fast float %7138, %7138
  %7140 = fmul fast float %7139, %7139
  %7141 = fsub fast float 1.000000e+00, %7140
  %7142 = fmul fast float %5892, %5892
  %7143 = fmul fast float %7142, %7141
  %7144 = fadd fast float %7143, %7140
  %7145 = bitcast float %7144 to i32
  %7146 = ashr i32 %7145, 1
  %7147 = add nsw i32 %7146, 532487669
  %7148 = bitcast i32 %7147 to float
  %7149 = fadd fast float %7148, %5892
  %7150 = fmul fast float %7140, %7135
  %7151 = fsub fast float 1.000000e+00, %7135
  %7152 = fadd fast float %7151, %7150
  %7153 = fmul fast float %7136, %7136
  %7154 = fmul fast float %7153, %7141
  %7155 = fadd fast float %7154, %7140
  %7156 = bitcast float %7155 to i32
  %7157 = ashr i32 %7156, 1
  %7158 = add nsw i32 %7157, 532487669
  %7159 = bitcast i32 %7158 to float
  %7160 = fadd fast float %7159, %7136
  %7161 = fmul fast float %7152, %7152
  %7162 = fmul fast float %7161, %7149
  %7163 = fmul fast float %7162, %7160
  %7164 = fdiv fast float 0x3FF0A00000000000, %7163
  %7165 = fmul fast float %7164, %7140
  %7166 = fmul fast float %6009, 0x3FF9999980000000
  %7167 = fsub fast float 5.000000e+00, %7166
  %7168 = call float @dx.op.unary.f32(i32 6, float %7128)  ; FAbs(value)
  %7169 = fsub fast float 1.000000e+00, %7168
  %7170 = fmul fast float %6009, 0x41D9660740000000
  %7171 = fadd fast float %7170, 0xC1EFBF8940000000
  %7172 = bitcast float %7169 to i32
  %7173 = sitofp i32 %7172 to float
  %7174 = fmul fast float %7173, %7167
  %7175 = fadd fast float %7171, %7174
  %7176 = fptosi float %7175 to i32
  %7177 = bitcast i32 %7176 to float
  %7178 = fsub fast float 1.000000e+00, %5838
  %7179 = fsub fast float 1.000000e+00, %5839
  %7180 = fsub fast float 1.000000e+00, %5890
  %7181 = fmul fast float %7177, %7178
  %7182 = fmul fast float %7177, %7179
  %7183 = fmul fast float %7177, %7180
  %7184 = fadd fast float %7181, %5838
  %7185 = fadd fast float %7182, %5839
  %7186 = fadd fast float %7183, %5890
  br i1 %6032, label %7187, label %7210

; <label>:7187                                    ; preds = %7100
  %7188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4654, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7189 = extractvalue %dx.types.ResRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.ResRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.ResRet.f32 %7188, 2
  %7192 = fadd fast float %7189, -5.000000e-01
  %7193 = fadd fast float %7190, -5.000000e-01
  %7194 = fadd fast float %7191, -5.000000e-01
  %7195 = fmul fast float %5838, 4.000000e+00
  %7196 = fmul fast float %7195, %7178
  %7197 = fmul fast float %7196, %7192
  %7198 = fmul fast float %5839, 4.000000e+00
  %7199 = fmul fast float %7198, %7179
  %7200 = fmul fast float %7199, %7193
  %7201 = fmul fast float %5890, 4.000000e+00
  %7202 = fmul fast float %7201, %7180
  %7203 = fmul fast float %7202, %7194
  %7204 = fadd fast float %7197, %7184
  %7205 = fadd fast float %7200, %7185
  %7206 = fadd fast float %7203, %7186
  %7207 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  %7208 = call float @dx.op.unary.f32(i32 7, float %7205)  ; Saturate(value)
  %7209 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  br label %7210

; <label>:7210                                    ; preds = %7187, %7100
  %7211 = phi float [ %7207, %7187 ], [ %7184, %7100 ]
  %7212 = phi float [ %7208, %7187 ], [ %7185, %7100 ]
  %7213 = phi float [ %7209, %7187 ], [ %7186, %7100 ]
  %7214 = fmul fast float %7127, 9.843750e-01
  %7215 = fadd fast float %7214, 7.812500e-03
  %7216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7215, float %6013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = extractvalue %dx.types.ResRet.f32 %7216, 3
  %7221 = fsub fast float %7219, %7217
  %7222 = fsub fast float %7220, %7218
  %7223 = fmul fast float %7221, %6019
  %7224 = fmul fast float %7222, %6019
  %7225 = fadd fast float %7223, %7217
  %7226 = fadd fast float %7224, %7218
  %7227 = fmul fast float %7225, %5838
  %7228 = fmul fast float %7225, %5839
  %7229 = fmul fast float %7225, %5890
  %7230 = fadd fast float %7227, %7226
  %7231 = fadd fast float %7228, %7226
  %7232 = fadd fast float %7229, %7226
  br i1 %6032, label %7233, label %7256

; <label>:7233                                    ; preds = %7210
  %7234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4654, float %7127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7235 = extractvalue %dx.types.ResRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.ResRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.ResRet.f32 %7234, 2
  %7238 = fadd fast float %7235, -5.000000e-01
  %7239 = fadd fast float %7236, -5.000000e-01
  %7240 = fadd fast float %7237, -5.000000e-01
  %7241 = fmul fast float %5838, 4.000000e+00
  %7242 = fmul fast float %7241, %7178
  %7243 = fmul fast float %7242, %7238
  %7244 = fmul fast float %5839, 4.000000e+00
  %7245 = fmul fast float %7244, %7179
  %7246 = fmul fast float %7245, %7239
  %7247 = fmul fast float %5890, 4.000000e+00
  %7248 = fmul fast float %7247, %7180
  %7249 = fmul fast float %7248, %7240
  %7250 = fadd fast float %7243, %7230
  %7251 = fadd fast float %7246, %7231
  %7252 = fadd fast float %7249, %7232
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  %7254 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7255 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  br label %7256

; <label>:7256                                    ; preds = %7233, %7210
  %7257 = phi float [ %7253, %7233 ], [ %7230, %7210 ]
  %7258 = phi float [ %7254, %7233 ], [ %7231, %7210 ]
  %7259 = phi float [ %7255, %7233 ], [ %7232, %7210 ]
  %7260 = call float @dx.op.binary.f32(i32 35, float %7258, float %7259)  ; FMax(a,b)
  %7261 = call float @dx.op.binary.f32(i32 35, float %7257, float %7260)  ; FMax(a,b)
  %7262 = fsub fast float 1.000000e+00, %7261
  %7263 = fmul fast float %7211, %7165
  %7264 = fmul fast float %7212, %7165
  %7265 = fmul fast float %7213, %7165
  %7266 = fsub fast float 1.000000e+00, %7128
  %7267 = bitcast float %7266 to i32
  %7268 = sitofp i32 %7267 to float
  %7269 = fmul fast float %7268, 5.000000e+00
  %7270 = fadd fast float %7269, 0xC1EFBF8940000000
  %7271 = fptosi float %7270 to i32
  %7272 = bitcast i32 %7271 to float
  %7273 = fmul fast float %7272, %4655
  %7274 = fmul fast float %7262, %7273
  %7275 = fmul fast float %7274, %6135
  %7276 = fmul fast float %7274, %6136
  %7277 = fmul fast float %7274, %6137
  %7278 = fadd fast float %7275, %7263
  %7279 = fadd fast float %7276, %7264
  %7280 = fadd fast float %7277, %7265
  %7281 = fmul fast float %7133, %7116
  %7282 = fmul fast float %7281, %7262
  %7283 = fmul fast float %7133, %7117
  %7284 = fmul fast float %7283, %7262
  %7285 = fmul fast float %7133, %7118
  %7286 = fmul fast float %7285, %7262
  %7287 = fmul fast float %7281, %7278
  %7288 = fmul fast float %7283, %7279
  %7289 = fmul fast float %7285, %7280
  %7290 = fadd fast float %7282, %6117
  %7291 = fmul fast float %7290, %4651
  %7292 = fadd fast float %7284, %6119
  %7293 = fmul fast float %7292, %4651
  %7294 = fadd fast float %7286, %6121
  %7295 = fmul fast float %7294, %4651
  %7296 = fadd fast float %7287, %6195
  %7297 = fmul fast float %7296, %4651
  %7298 = fadd fast float %7288, %6198
  %7299 = fmul fast float %7298, %4651
  %7300 = fadd fast float %7289, %6201
  %7301 = fmul fast float %7300, %4651
  br label %7302

; <label>:7302                                    ; preds = %7256, %7034, %6059
  %7303 = phi float [ %6196, %6059 ], [ %6196, %7034 ], [ %7297, %7256 ]
  %7304 = phi float [ %6199, %6059 ], [ %6199, %7034 ], [ %7299, %7256 ]
  %7305 = phi float [ %6202, %6059 ], [ %6202, %7034 ], [ %7301, %7256 ]
  %7306 = phi float [ %6191, %6059 ], [ %6191, %7034 ], [ %7291, %7256 ]
  %7307 = phi float [ %6192, %6059 ], [ %6192, %7034 ], [ %7293, %7256 ]
  %7308 = phi float [ %6193, %6059 ], [ %6193, %7034 ], [ %7295, %7256 ]
  %7309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.i32 %7309, 0
  %7311 = icmp eq i32 %7310, 0
  br i1 %7311, label %7944, label %7312

; <label>:7312                                    ; preds = %7302
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 2
  %7315 = extractvalue %dx.types.CBufRet.f32 %7313, 3
  %7316 = fmul fast float %7314, %110
  %7317 = fmul fast float %7315, %111
  %7318 = fptoui float %7316 to i32
  %7319 = fptoui float %7317 to i32
  %7320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.CBufRet.f32 %7320, 2
  %7323 = extractvalue %dx.types.CBufRet.f32 %7320, 3
  %7324 = fadd fast float %101, -4.000000e+00
  %7325 = call float @dx.op.binary.f32(i32 35, float %7324, float 0.000000e+00)  ; FMax(a,b)
  %7326 = fadd fast float %7325, %7321
  %7327 = fmul fast float %7326, %7322
  %7328 = call float @dx.op.unary.f32(i32 23, float %7327)  ; Log(value)
  %7329 = fmul fast float %7328, %7323
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7332 = fmul fast float %7329, %7331
  %7333 = call float @dx.op.unary.f32(i32 7, float %7332)  ; Saturate(value)
  %7334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.i32 %7334, 1
  %7336 = add i32 %7335, -1
  %7337 = uitofp i32 %7335 to float
  %7338 = fmul fast float %7337, %7333
  %7339 = fptoui float %7338 to i32
  %7340 = call i32 @dx.op.binary.i32(i32 40, i32 %7339, i32 %7336)  ; UMin(a,b)
  %7341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.i32 %7341, 2
  %7343 = extractvalue %dx.types.CBufRet.i32 %7341, 3
  %7344 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7319, i32 %7342, i32 %7318)  ; UMad(a,b,c)
  %7345 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7340, i32 %7343, i32 %7344)  ; UMad(a,b,c)
  %7346 = add nsw i32 %7310, -1
  %7347 = call i32 @dx.op.binary.i32(i32 37, i32 %7346, i32 0)  ; IMax(a,b)
  %7348 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7349 = fptoui float %7348 to i32
  %7350 = lshr i32 %7349, 5
  %7351 = call i32 @dx.op.binary.i32(i32 40, i32 %7350, i32 8191)  ; UMin(a,b)
  %7352 = shl i32 %7351, 2
  %7353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7352, i32 undef)  ; BufferLoad(srv,index,wot)
  %7354 = extractvalue %dx.types.ResRet.i32 %7353, 0
  %7355 = lshr i32 %7354, 16
  %7356 = and i32 %7354, 65535
  %7357 = lshr i32 %7354, 21
  %7358 = lshr i32 %7356, 5
  %7359 = call i32 @dx.op.binary.i32(i32 40, i32 %7358, i32 %7347)  ; UMin(a,b)
  %7360 = icmp ugt i32 %7357, %7359
  br i1 %7360, label %7944, label %7361

; <label>:7361                                    ; preds = %7312
  br label %7362

; <label>:7362                                    ; preds = %7934, %7361
  %7363 = phi i32 [ %7941, %7934 ], [ %7357, %7361 ]
  %7364 = phi float [ %7935, %7934 ], [ %7303, %7361 ]
  %7365 = phi float [ %7936, %7934 ], [ %7304, %7361 ]
  %7366 = phi float [ %7937, %7934 ], [ %7305, %7361 ]
  %7367 = phi float [ %7938, %7934 ], [ %7306, %7361 ]
  %7368 = phi float [ %7939, %7934 ], [ %7307, %7361 ]
  %7369 = phi float [ %7940, %7934 ], [ %7308, %7361 ]
  %7370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.i32 %7370, 0
  %7372 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7345, i32 %7371, i32 %7363)  ; UMad(a,b,c)
  %7373 = shl i32 %7372, 2
  %7374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7373, i32 undef)  ; BufferLoad(srv,index,wot)
  %7375 = extractvalue %dx.types.ResRet.i32 %7374, 0
  %7376 = shl i32 %7363, 5
  %7377 = sub nsw i32 %7355, %7376
  %7378 = call i32 @dx.op.binary.i32(i32 37, i32 %7377, i32 0)  ; IMax(a,b)
  %7379 = call i32 @dx.op.binary.i32(i32 38, i32 %7378, i32 31)  ; IMin(a,b)
  %7380 = sub nsw i32 1, %7355
  %7381 = add nsw i32 %7380, %7356
  %7382 = call i32 @dx.op.binary.i32(i32 37, i32 %7381, i32 0)  ; IMax(a,b)
  %7383 = call i32 @dx.op.binary.i32(i32 38, i32 %7382, i32 32)  ; IMin(a,b)
  %7384 = and i32 %7383, 31
  %7385 = shl i32 -1, %7384
  %7386 = xor i32 %7385, -1
  %7387 = and i32 %7379, 31
  %7388 = shl i32 %7386, %7387
  %7389 = icmp eq i32 %7383, 32
  %7390 = select i1 %7389, i32 -1, i32 %7388
  %7391 = and i32 %7390, %7375
  %7392 = icmp eq i32 %7391, 0
  br i1 %7392, label %7934, label %7393

; <label>:7393                                    ; preds = %7362
  br label %7394

; <label>:7394                                    ; preds = %7528, %7393
  %7395 = phi i32 [ %7406, %7528 ], [ %7391, %7393 ]
  %7396 = phi float [ %7529, %7528 ], [ %7364, %7393 ]
  %7397 = phi float [ %7530, %7528 ], [ %7365, %7393 ]
  %7398 = phi float [ %7531, %7528 ], [ %7366, %7393 ]
  %7399 = phi float [ %7532, %7528 ], [ %7367, %7393 ]
  %7400 = phi float [ %7533, %7528 ], [ %7368, %7393 ]
  %7401 = phi float [ %7534, %7528 ], [ %7369, %7393 ]
  %7402 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7395)  ; FirstbitLo(value)
  %7403 = add i32 %7402, %7376
  %7404 = and i32 %7402, 31
  %7405 = shl i32 1, %7404
  %7406 = xor i32 %7405, %7395
  %7407 = mul i32 %7403, 112
  %7408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7407, i32 undef)  ; BufferLoad(srv,index,wot)
  %7409 = extractvalue %dx.types.ResRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.ResRet.f32 %7408, 1
  %7411 = extractvalue %dx.types.ResRet.f32 %7408, 2
  %7412 = or i32 %7407, 12
  %7413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7412, i32 undef)  ; BufferLoad(srv,index,wot)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = add i32 %7407, 16
  %7416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7415, i32 undef)  ; BufferLoad(srv,index,wot)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.ResRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.ResRet.f32 %7416, 2
  %7420 = add i32 %7407, 28
  %7421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7420, i32 undef)  ; BufferLoad(srv,index,wot)
  %7422 = extractvalue %dx.types.ResRet.i32 %7421, 0
  %7423 = add i32 %7407, 44
  %7424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7423, i32 undef)  ; BufferLoad(srv,index,wot)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = add i32 %7407, 48
  %7427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7426, i32 undef)  ; BufferLoad(srv,index,wot)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = extractvalue %dx.types.ResRet.f32 %7427, 3
  %7432 = add i32 %7407, 64
  %7433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7432, i32 undef)  ; BufferLoad(srv,index,wot)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.ResRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.ResRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.ResRet.f32 %7433, 3
  %7438 = add i32 %7407, 80
  %7439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7438, i32 undef)  ; BufferLoad(srv,index,wot)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7442 = add i32 %7407, 92
  %7443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7442, i32 undef)  ; BufferLoad(srv,index,wot)
  %7444 = extractvalue %dx.types.ResRet.i32 %7443, 0
  %7445 = call float @dx.op.dot3.f32(i32 55, float %7409, float %7410, float %7411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = select i1 %269, float %7440, float %7409
  %7447 = select i1 %269, float %7445, float %7410
  %7448 = select i1 %269, float %7441, float %7411
  %7449 = and i32 %7444, 65535
  %7450 = uitofp i32 %7449 to float
  %7451 = lshr i32 %7444, 16
  %7452 = uitofp i32 %7451 to float
  %7453 = and i32 %7422, 65535
  %7454 = and i32 %7422, 50331648
  %7455 = icmp eq i32 %7454, 33554432
  %7456 = fsub fast float %7428, %197
  %7457 = fsub fast float %7429, %198
  %7458 = fsub fast float %7430, %199
  %7459 = call float @dx.op.dot3.f32(i32 55, float %7456, float %7457, float %7458, float %7456, float %7457, float %7458)  ; Dot3(ax,ay,az,bx,by,bz)
  %7460 = call float @dx.op.unary.f32(i32 24, float %7459)  ; Sqrt(value)
  %7461 = fdiv fast float 1.000000e+00, %7460
  %7462 = fmul fast float %7461, %7456
  %7463 = fmul fast float %7461, %7457
  %7464 = fmul fast float %7461, %7458
  %7465 = fadd fast float %7460, %7414
  %7466 = fdiv fast float 1.000000e+00, %7465
  %7467 = fmul float %7425, %7466
  %7468 = fmul float %7467, %7467
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  br i1 %7455, label %7470, label %7491

; <label>:7470                                    ; preds = %7394
  %7471 = fmul fast float %7436, %7417
  %7472 = fmul fast float %7436, %7418
  %7473 = fmul fast float %7436, %7419
  %7474 = fadd fast float %7456, %7471
  %7475 = fadd fast float %7457, %7472
  %7476 = fadd fast float %7458, %7473
  %7477 = call float @dx.op.dot3.f32(i32 55, float %7474, float %7475, float %7476, float %7474, float %7475, float %7476)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = call float @dx.op.unary.f32(i32 25, float %7477)  ; Rsqrt(value)
  %7479 = fmul fast float %7478, %7474
  %7480 = fmul fast float %7478, %7475
  %7481 = fmul fast float %7478, %7476
  %7482 = fsub fast float %197, %7428
  %7483 = fsub fast float %198, %7429
  %7484 = fsub fast float %199, %7430
  %7485 = fsub fast float -0.000000e+00, %7482
  %7486 = fsub fast float -0.000000e+00, %7483
  %7487 = fsub fast float -0.000000e+00, %7484
  %7488 = call float @dx.op.dot3.f32(i32 55, float %7485, float %7486, float %7487, float %7417, float %7418, float %7419)  ; Dot3(ax,ay,az,bx,by,bz)
  %7489 = fcmp fast ogt float %7488, 0.000000e+00
  %7490 = uitofp i1 %7489 to float
  br label %7491

; <label>:7491                                    ; preds = %7470, %7394
  %7492 = phi float [ %7490, %7470 ], [ 1.000000e+00, %7394 ]
  %7493 = phi float [ %7479, %7470 ], [ %7462, %7394 ]
  %7494 = phi float [ %7480, %7470 ], [ %7463, %7394 ]
  %7495 = phi float [ %7481, %7470 ], [ %7464, %7394 ]
  %7496 = call float @dx.op.dot3.f32(i32 55, float %7417, float %7418, float %7419, float %7493, float %7494, float %7495)  ; Dot3(ax,ay,az,bx,by,bz)
  %7497 = fmul fast float %7496, %7496
  %7498 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7499 = fsub fast float 1.000000e+00, %7498
  %7500 = fmul fast float %7499, 5.000000e-01
  %7501 = fcmp fast ogt float %7496, 0.000000e+00
  %7502 = fsub fast float 1.000000e+00, %7500
  %7503 = select i1 %7501, float %7500, float %7502
  %7504 = fmul fast float %7503, %7452
  %7505 = fadd fast float %7504, %7450
  %7506 = fmul fast float %7505, 0x3EF0001000000000
  %7507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7506, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = fmul fast float %7496, %7434
  %7510 = fadd fast float %7509, %7435
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = select i1 %7455, float 1.000000e+00, float %7511
  %7513 = select i1 %7455, float %7511, float 1.000000e+00
  %7514 = fmul fast float %7460, %7431
  %7515 = fsub fast float 1.000000e+00, %7514
  %7516 = fmul fast float %7515, %7437
  %7517 = call float @dx.op.unary.f32(i32 7, float %7516)  ; Saturate(value)
  %7518 = fmul fast float %7517, %7513
  %7519 = fmul fast float %7518, 2.000000e+00
  %7520 = fsub fast float 3.000000e+00, %7519
  %7521 = fmul fast float %7508, %7492
  %7522 = fmul fast float %7518, %7518
  %7523 = fmul fast float %7522, %7521
  %7524 = fmul fast float %7523, %7520
  %7525 = call float @dx.op.binary.f32(i32 36, float %7524, float %7524)  ; FMin(a,b)
  %7526 = call float @dx.op.binary.f32(i32 36, float %7524, float %7525)  ; FMin(a,b)
  %7527 = fcmp fast ogt float %7526, 0.000000e+00
  br i1 %7527, label %7536, label %7528, !dx.controlflow.hints !126

; <label>:7528                                    ; preds = %7890, %7636, %7491
  %7529 = phi float [ %7396, %7636 ], [ %7396, %7491 ], [ %7930, %7890 ]
  %7530 = phi float [ %7397, %7636 ], [ %7397, %7491 ], [ %7931, %7890 ]
  %7531 = phi float [ %7398, %7636 ], [ %7398, %7491 ], [ %7932, %7890 ]
  %7532 = phi float [ %7399, %7636 ], [ %7399, %7491 ], [ %7924, %7890 ]
  %7533 = phi float [ %7400, %7636 ], [ %7400, %7491 ], [ %7925, %7890 ]
  %7534 = phi float [ %7401, %7636 ], [ %7401, %7491 ], [ %7926, %7890 ]
  %7535 = icmp eq i32 %7395, %7405
  br i1 %7535, label %7933, label %7394

; <label>:7536                                    ; preds = %7491
  %7537 = icmp eq i32 %7453, 255
  br i1 %7537, label %7636, label %7538, !dx.controlflow.hints !127

; <label>:7538                                    ; preds = %7536
  %7539 = mul nuw nsw i32 %7453, 176
  %7540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7539, i32 undef)  ; BufferLoad(srv,index,wot)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7544 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7545 = add nuw nsw i32 %7539, 16
  %7546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7545, i32 undef)  ; BufferLoad(srv,index,wot)
  %7547 = extractvalue %dx.types.ResRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.ResRet.f32 %7546, 1
  %7549 = add nuw nsw i32 %7539, 32
  %7550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7549, i32 undef)  ; BufferLoad(srv,index,wot)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  %7554 = add nuw nsw i32 %7539, 48
  %7555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7554, i32 undef)  ; BufferLoad(srv,index,wot)
  %7556 = extractvalue %dx.types.ResRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.ResRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.ResRet.f32 %7555, 2
  %7559 = extractvalue %dx.types.ResRet.f32 %7555, 3
  %7560 = add nuw nsw i32 %7539, 64
  %7561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7560, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.ResRet.f32 %7561, 1
  %7564 = extractvalue %dx.types.ResRet.f32 %7561, 2
  %7565 = extractvalue %dx.types.ResRet.f32 %7561, 3
  %7566 = add nuw nsw i32 %7539, 80
  %7567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7566, i32 undef)  ; BufferLoad(srv,index,wot)
  %7568 = extractvalue %dx.types.ResRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.ResRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.ResRet.f32 %7567, 2
  %7571 = extractvalue %dx.types.ResRet.f32 %7567, 3
  %7572 = add nuw nsw i32 %7539, 96
  %7573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7572, i32 undef)  ; BufferLoad(srv,index,wot)
  %7574 = extractvalue %dx.types.ResRet.f32 %7573, 0
  %7575 = extractvalue %dx.types.ResRet.f32 %7573, 1
  %7576 = extractvalue %dx.types.ResRet.f32 %7573, 2
  %7577 = extractvalue %dx.types.ResRet.f32 %7573, 3
  %7578 = bitcast float %7548 to i32
  %7579 = fmul fast float %7553, %117
  %7580 = fmul fast float %7553, %118
  %7581 = fmul fast float %7553, %119
  %7582 = fadd fast float %7579, %197
  %7583 = fadd fast float %7580, %198
  %7584 = fadd fast float %7581, %199
  %7585 = fmul fast float %7582, %7556
  %7586 = call float @dx.op.tertiary.f32(i32 46, float %7583, float %7562, float %7585)  ; FMad(a,b,c)
  %7587 = call float @dx.op.tertiary.f32(i32 46, float %7584, float %7568, float %7586)  ; FMad(a,b,c)
  %7588 = fadd fast float %7587, %7574
  %7589 = fmul fast float %7582, %7557
  %7590 = call float @dx.op.tertiary.f32(i32 46, float %7583, float %7563, float %7589)  ; FMad(a,b,c)
  %7591 = call float @dx.op.tertiary.f32(i32 46, float %7584, float %7569, float %7590)  ; FMad(a,b,c)
  %7592 = fadd fast float %7591, %7575
  %7593 = fmul fast float %7582, %7558
  %7594 = call float @dx.op.tertiary.f32(i32 46, float %7583, float %7564, float %7593)  ; FMad(a,b,c)
  %7595 = call float @dx.op.tertiary.f32(i32 46, float %7584, float %7570, float %7594)  ; FMad(a,b,c)
  %7596 = fadd fast float %7595, %7576
  %7597 = fmul fast float %7582, %7559
  %7598 = call float @dx.op.tertiary.f32(i32 46, float %7583, float %7565, float %7597)  ; FMad(a,b,c)
  %7599 = call float @dx.op.tertiary.f32(i32 46, float %7584, float %7571, float %7598)  ; FMad(a,b,c)
  %7600 = fadd fast float %7599, %7577
  %7601 = fdiv fast float %7588, %7600
  %7602 = fdiv fast float %7592, %7600
  %7603 = fdiv fast float %7596, %7600
  %7604 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7603)  ; FMax(a,b)
  %7605 = fmul fast float %280, 0x401921FB60000000
  %7606 = call float @dx.op.unary.f32(i32 13, float %7605)  ; Sin(value)
  %7607 = call float @dx.op.unary.f32(i32 12, float %7605)  ; Cos(value)
  %7608 = fsub fast float -0.000000e+00, %7606
  %7609 = fmul fast float %7543, 5.000000e-01
  %7610 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7611 = call float @dx.op.unary.f32(i32 22, float %7610)  ; Frc(value)
  %7612 = fmul fast float %7611, 0x404A7DD040000000
  %7613 = call float @dx.op.unary.f32(i32 22, float %7612)  ; Frc(value)
  %7614 = fmul fast float %7613, %7552
  %7615 = fadd fast float %7614, %7609
  %7616 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7608, float 0.000000e+00)  ; FMad(a,b,c)
  %7617 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7607, float 0.000000e+00)  ; FMad(a,b,c)
  %7618 = fadd fast float %7616, %7601
  %7619 = fadd fast float %7617, %7602
  %7620 = fmul fast float %7618, %7547
  %7621 = fmul fast float %7619, %7547
  %7622 = call float @dx.op.binary.f32(i32 35, float %7620, float %7543)  ; FMax(a,b)
  %7623 = call float @dx.op.binary.f32(i32 35, float %7621, float %7543)  ; FMax(a,b)
  %7624 = call float @dx.op.binary.f32(i32 36, float %7622, float %7544)  ; FMin(a,b)
  %7625 = call float @dx.op.binary.f32(i32 36, float %7623, float %7544)  ; FMin(a,b)
  %7626 = fadd fast float %7624, %7541
  %7627 = fadd fast float %7625, %7542
  %7628 = uitofp i32 %7578 to float
  %7629 = fadd fast float %7604, %7551
  %7630 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7626, float %7627, float %7628, float undef, i32 0, i32 0, i32 undef, float %7629)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = fadd fast float %7631, -1.000000e+00
  %7633 = fmul fast float %7632, %7512
  %7634 = fadd fast float %7633, 1.000000e+00
  %7635 = fmul fast float %7634, %7524
  br label %7636

; <label>:7636                                    ; preds = %7538, %7536
  %7637 = phi float [ %7635, %7538 ], [ %7524, %7536 ]
  %7638 = call float @dx.op.binary.f32(i32 36, float %7637, float %7637)  ; FMin(a,b)
  %7639 = call float @dx.op.binary.f32(i32 36, float %7637, float %7638)  ; FMin(a,b)
  %7640 = fcmp fast ogt float %7639, 0.000000e+00
  br i1 %7640, label %7641, label %7528, !dx.controlflow.hints !128

; <label>:7641                                    ; preds = %7636
  %7642 = fmul fast float %7637, %7446
  %7643 = fmul fast float %7637, %7447
  %7644 = fmul fast float %7637, %7448
  %7645 = fsub fast float %7430, %5058
  %7646 = fcmp fast ogt float %7645, 0.000000e+00
  %7647 = fsub fast float %199, %5058
  %7648 = fcmp fast ogt float %7647, 0.000000e+00
  %7649 = xor i1 %7648, %7646
  %7650 = fsub fast float %5058, %7430
  %7651 = fmul fast float %7650, 2.000000e+00
  %7652 = fadd fast float %7651, %7430
  %7653 = select i1 %7649, float %7430, float %7652
  %7654 = fsub fast float %7653, %199
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7456, float %7457, float %7654, float %7456, float %7457, float %7654)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = call float @dx.op.unary.f32(i32 25, float %7655)  ; Rsqrt(value)
  %7657 = fmul fast float %7656, %7456
  %7658 = fmul fast float %7656, %7457
  %7659 = fmul fast float %7656, %7654
  %7660 = fsub fast float %5058, %199
  %7661 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7660)  ; Dot3(ax,ay,az,bx,by,bz)
  %7662 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7657, float %7658, float %7659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = fdiv fast float 1.000000e+00, %7662
  %7664 = fmul fast float %7663, %7661
  %7665 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7647, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = fcmp fast ogt float %7665, 0.000000e+00
  %7667 = fcmp fast olt float %7665, 0.000000e+00
  %7668 = zext i1 %7666 to i32
  %7669 = zext i1 %7667 to i32
  %7670 = sub nsw i32 %7668, %7669
  %7671 = sitofp i32 %7670 to float
  %7672 = fsub fast float %7653, %5058
  %7673 = call float @dx.op.dot3.f32(i32 55, float %7456, float %7457, float %7672, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7674 = fcmp fast ogt float %7673, 0.000000e+00
  %7675 = fcmp fast olt float %7673, 0.000000e+00
  %7676 = zext i1 %7674 to i32
  %7677 = zext i1 %7675 to i32
  %7678 = sub nsw i32 %7676, %7677
  %7679 = sitofp i32 %7678 to float
  %7680 = fcmp fast une float %7671, %7679
  br i1 %7680, label %7681, label %7691

; <label>:7681                                    ; preds = %7641
  %7682 = fmul fast float %7664, %7659
  %7683 = fmul fast float %7664, %7658
  %7684 = fmul fast float %7664, %7657
  %7685 = fmul fast float %7684, %7684
  %7686 = fmul fast float %7683, %7683
  %7687 = fadd fast float %7685, %7686
  %7688 = fmul fast float %7682, %7682
  %7689 = fadd fast float %7687, %7688
  %7690 = call float @dx.op.unary.f32(i32 24, float %7689)  ; Sqrt(value)
  br label %7703

; <label>:7691                                    ; preds = %7641
  %7692 = icmp slt i32 %7670, 0
  br i1 %7692, label %7693, label %7703

; <label>:7693                                    ; preds = %7691
  %7694 = fsub fast float %197, %7428
  %7695 = fsub fast float %198, %7429
  %7696 = fsub fast float %199, %7653
  %7697 = fmul fast float %7694, %7694
  %7698 = fmul fast float %7695, %7695
  %7699 = fadd fast float %7697, %7698
  %7700 = fmul fast float %7696, %7696
  %7701 = fadd fast float %7699, %7700
  %7702 = call float @dx.op.unary.f32(i32 24, float %7701)  ; Sqrt(value)
  br label %7703

; <label>:7703                                    ; preds = %7693, %7691, %7681
  %7704 = phi float [ %7690, %7681 ], [ %7702, %7693 ], [ 0.000000e+00, %7691 ]
  %7705 = and i1 %7648, %7646
  %7706 = fsub fast float -0.000000e+00, %7704
  %7707 = select i1 %7705, float -0.000000e+00, float %7706
  %7708 = fmul fast float %5059, 0x3FF7154760000000
  %7709 = fmul fast float %7708, %7707
  %7710 = fmul fast float %5060, 0x3FF7154760000000
  %7711 = fmul fast float %7710, %7707
  %7712 = fmul fast float %5061, 0x3FF7154760000000
  %7713 = fmul fast float %7712, %7707
  %7714 = call float @dx.op.unary.f32(i32 21, float %7709)  ; Exp(value)
  %7715 = call float @dx.op.unary.f32(i32 21, float %7711)  ; Exp(value)
  %7716 = call float @dx.op.unary.f32(i32 21, float %7713)  ; Exp(value)
  %7717 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7718 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7719 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7720 = fmul fast float %7642, %7717
  %7721 = fmul fast float %7643, %7718
  %7722 = fmul fast float %7644, %7719
  %7723 = fsub fast float %7462, %5884
  %7724 = fsub fast float %7463, %5885
  %7725 = fsub fast float %7464, %5886
  %7726 = call float @dx.op.dot3.f32(i32 55, float %7723, float %7724, float %7725, float %7723, float %7724, float %7725)  ; Dot3(ax,ay,az,bx,by,bz)
  %7727 = call float @dx.op.unary.f32(i32 25, float %7726)  ; Rsqrt(value)
  %7728 = fmul fast float %7727, %7723
  %7729 = fmul fast float %7727, %7724
  %7730 = fmul fast float %7727, %7725
  %7731 = call float @dx.op.dot3.f32(i32 55, float %7462, float %7463, float %7464, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7732 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %7728, float %7729, float %7730)  ; Dot3(ax,ay,az,bx,by,bz)
  %7733 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7734 = fmul fast float %7733, %7469
  %7735 = fmul fast float %7733, %7733
  %7736 = fmul fast float %7735, %5905
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = fmul fast float %7734, %7737
  %7739 = bitcast float %7459 to i32
  %7740 = ashr i32 %7739, 1
  %7741 = sub nsw i32 1597463007, %7740
  %7742 = bitcast i32 %7741 to float
  %7743 = fmul fast float %7742, %7456
  %7744 = fmul fast float %7742, %7457
  %7745 = fmul fast float %7742, %7458
  %7746 = fsub fast float %7743, %5884
  %7747 = fsub fast float %7744, %5885
  %7748 = fsub fast float %7745, %5886
  %7749 = call float @dx.op.dot3.f32(i32 55, float %7746, float %7747, float %7748, float %7746, float %7747, float %7748)  ; Dot3(ax,ay,az,bx,by,bz)
  %7750 = call float @dx.op.unary.f32(i32 25, float %7749)  ; Rsqrt(value)
  %7751 = fmul fast float %7746, %7750
  %7752 = fmul fast float %7747, %7750
  %7753 = fmul fast float %7748, %7750
  %7754 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %7751, float %7752, float %7753)  ; Dot3(ax,ay,az,bx,by,bz)
  %7755 = fmul fast float %7754, %7754
  %7756 = call float @dx.op.unary.f32(i32 6, float %7731)  ; FAbs(value)
  %7757 = fsub fast float 1.000000e+00, %5847
  %7758 = call float @dx.op.binary.f32(i32 35, float %7757, float 0x3F847AE140000000)  ; FMax(a,b)
  %7759 = fmul fast float %7758, %7758
  %7760 = fmul fast float %7759, %7759
  %7761 = fsub fast float 1.000000e+00, %7760
  %7762 = fmul fast float %5892, %5892
  %7763 = fmul fast float %7762, %7761
  %7764 = fadd fast float %7763, %7760
  %7765 = bitcast float %7764 to i32
  %7766 = ashr i32 %7765, 1
  %7767 = add nsw i32 %7766, 532487669
  %7768 = bitcast i32 %7767 to float
  %7769 = fadd fast float %7768, %5892
  %7770 = fmul fast float %7760, %7755
  %7771 = fsub fast float 1.000000e+00, %7755
  %7772 = fadd fast float %7771, %7770
  %7773 = fmul fast float %7756, %7756
  %7774 = fmul fast float %7773, %7761
  %7775 = fadd fast float %7774, %7760
  %7776 = bitcast float %7775 to i32
  %7777 = ashr i32 %7776, 1
  %7778 = add nsw i32 %7777, 532487669
  %7779 = bitcast i32 %7778 to float
  %7780 = fadd fast float %7779, %7756
  %7781 = fmul fast float %7772, %7772
  %7782 = fmul fast float %7781, %7769
  %7783 = fmul fast float %7782, %7780
  %7784 = fdiv fast float 1.000000e+00, %7783
  %7785 = bitcast float %7760 to i32
  %7786 = sitofp i32 %7785 to float
  %7787 = fmul fast float %7786, 0x3FE7F73180000000
  %7788 = fadd fast float %7787, 0x41AFE27C40000000
  %7789 = fptosi float %7788 to i32
  %7790 = bitcast i32 %7789 to float
  %7791 = fmul fast float %7425, 0x3FD80E9D60000000
  %7792 = fmul fast float %7791, %7742
  %7793 = fadd fast float %7790, %7792
  %7794 = bitcast float %7793 to i32
  %7795 = sub nsw i32 2129859010, %7794
  %7796 = bitcast i32 %7795 to float
  %7797 = fmul fast float %7760, %7784
  %7798 = fmul fast float %7797, %7790
  %7799 = fmul fast float %7798, %7796
  %7800 = fmul fast float %6009, 0x3FF9999980000000
  %7801 = fsub fast float 5.000000e+00, %7800
  %7802 = call float @dx.op.unary.f32(i32 6, float %7732)  ; FAbs(value)
  %7803 = fsub fast float 1.000000e+00, %7802
  %7804 = fmul fast float %6009, 0x41D9660740000000
  %7805 = fadd fast float %7804, 0xC1EFBF8940000000
  %7806 = bitcast float %7803 to i32
  %7807 = sitofp i32 %7806 to float
  %7808 = fmul fast float %7807, %7801
  %7809 = fadd fast float %7805, %7808
  %7810 = fptosi float %7809 to i32
  %7811 = bitcast i32 %7810 to float
  %7812 = fsub fast float 1.000000e+00, %5838
  %7813 = fsub fast float 1.000000e+00, %5839
  %7814 = fsub fast float 1.000000e+00, %5890
  %7815 = fmul fast float %7811, %7812
  %7816 = fmul fast float %7811, %7813
  %7817 = fmul fast float %7811, %7814
  %7818 = fadd fast float %7815, %5838
  %7819 = fadd fast float %7816, %5839
  %7820 = fadd fast float %7817, %5890
  br i1 %6032, label %7821, label %7844

; <label>:7821                                    ; preds = %7703
  %7822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4654, float %7802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7823 = extractvalue %dx.types.ResRet.f32 %7822, 0
  %7824 = extractvalue %dx.types.ResRet.f32 %7822, 1
  %7825 = extractvalue %dx.types.ResRet.f32 %7822, 2
  %7826 = fadd fast float %7823, -5.000000e-01
  %7827 = fadd fast float %7824, -5.000000e-01
  %7828 = fadd fast float %7825, -5.000000e-01
  %7829 = fmul fast float %5838, 4.000000e+00
  %7830 = fmul fast float %7829, %7812
  %7831 = fmul fast float %7830, %7826
  %7832 = fmul fast float %5839, 4.000000e+00
  %7833 = fmul fast float %7832, %7813
  %7834 = fmul fast float %7833, %7827
  %7835 = fmul fast float %5890, 4.000000e+00
  %7836 = fmul fast float %7835, %7814
  %7837 = fmul fast float %7836, %7828
  %7838 = fadd fast float %7831, %7818
  %7839 = fadd fast float %7834, %7819
  %7840 = fadd fast float %7837, %7820
  %7841 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7842 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7843 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  br label %7844

; <label>:7844                                    ; preds = %7821, %7703
  %7845 = phi float [ %7841, %7821 ], [ %7818, %7703 ]
  %7846 = phi float [ %7842, %7821 ], [ %7819, %7703 ]
  %7847 = phi float [ %7843, %7821 ], [ %7820, %7703 ]
  %7848 = fmul fast float %7731, 9.843750e-01
  %7849 = fadd fast float %7848, 7.812500e-03
  %7850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7849, float %6013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7851 = extractvalue %dx.types.ResRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.ResRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.ResRet.f32 %7850, 2
  %7854 = extractvalue %dx.types.ResRet.f32 %7850, 3
  %7855 = fsub fast float %7853, %7851
  %7856 = fsub fast float %7854, %7852
  %7857 = fmul fast float %7855, %6019
  %7858 = fmul fast float %7856, %6019
  %7859 = fadd fast float %7857, %7851
  %7860 = fadd fast float %7858, %7852
  %7861 = fmul fast float %7859, %5838
  %7862 = fmul fast float %7859, %5839
  %7863 = fmul fast float %7859, %5890
  %7864 = fadd fast float %7861, %7860
  %7865 = fadd fast float %7862, %7860
  %7866 = fadd fast float %7863, %7860
  br i1 %6032, label %7867, label %7890

; <label>:7867                                    ; preds = %7844
  %7868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4654, float %7731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.ResRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.ResRet.f32 %7868, 2
  %7872 = fadd fast float %7869, -5.000000e-01
  %7873 = fadd fast float %7870, -5.000000e-01
  %7874 = fadd fast float %7871, -5.000000e-01
  %7875 = fmul fast float %5838, 4.000000e+00
  %7876 = fmul fast float %7875, %7812
  %7877 = fmul fast float %7876, %7872
  %7878 = fmul fast float %5839, 4.000000e+00
  %7879 = fmul fast float %7878, %7813
  %7880 = fmul fast float %7879, %7873
  %7881 = fmul fast float %5890, 4.000000e+00
  %7882 = fmul fast float %7881, %7814
  %7883 = fmul fast float %7882, %7874
  %7884 = fadd fast float %7877, %7864
  %7885 = fadd fast float %7880, %7865
  %7886 = fadd fast float %7883, %7866
  %7887 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  %7888 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7889 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  br label %7890

; <label>:7890                                    ; preds = %7867, %7844
  %7891 = phi float [ %7887, %7867 ], [ %7864, %7844 ]
  %7892 = phi float [ %7888, %7867 ], [ %7865, %7844 ]
  %7893 = phi float [ %7889, %7867 ], [ %7866, %7844 ]
  %7894 = call float @dx.op.binary.f32(i32 35, float %7892, float %7893)  ; FMax(a,b)
  %7895 = call float @dx.op.binary.f32(i32 35, float %7891, float %7894)  ; FMax(a,b)
  %7896 = fsub fast float 1.000000e+00, %7895
  %7897 = fmul fast float %7845, %7799
  %7898 = fmul fast float %7846, %7799
  %7899 = fmul fast float %7847, %7799
  %7900 = fsub fast float 1.000000e+00, %7732
  %7901 = bitcast float %7900 to i32
  %7902 = sitofp i32 %7901 to float
  %7903 = fmul fast float %7902, 5.000000e+00
  %7904 = fadd fast float %7903, 0xC1EFBF8940000000
  %7905 = fptosi float %7904 to i32
  %7906 = bitcast i32 %7905 to float
  %7907 = fmul fast float %7906, %4655
  %7908 = fmul fast float %7896, %7907
  %7909 = fmul fast float %7908, %6135
  %7910 = fmul fast float %7908, %6136
  %7911 = fmul fast float %7908, %6137
  %7912 = fadd fast float %7909, %7897
  %7913 = fadd fast float %7910, %7898
  %7914 = fadd fast float %7911, %7899
  %7915 = fmul fast float %7720, %4651
  %7916 = fmul fast float %7915, %7738
  %7917 = fmul fast float %7916, %7896
  %7918 = fmul fast float %7721, %4651
  %7919 = fmul fast float %7918, %7738
  %7920 = fmul fast float %7919, %7896
  %7921 = fmul fast float %7722, %4651
  %7922 = fmul fast float %7921, %7738
  %7923 = fmul fast float %7922, %7896
  %7924 = fadd fast float %7917, %7399
  %7925 = fadd fast float %7920, %7400
  %7926 = fadd fast float %7923, %7401
  %7927 = fmul fast float %7916, %7912
  %7928 = fmul fast float %7919, %7913
  %7929 = fmul fast float %7922, %7914
  %7930 = fadd fast float %7927, %7396
  %7931 = fadd fast float %7928, %7397
  %7932 = fadd fast float %7929, %7398
  br label %7528

; <label>:7933                                    ; preds = %7528
  br label %7934

; <label>:7934                                    ; preds = %7933, %7362
  %7935 = phi float [ %7364, %7362 ], [ %7529, %7933 ]
  %7936 = phi float [ %7365, %7362 ], [ %7530, %7933 ]
  %7937 = phi float [ %7366, %7362 ], [ %7531, %7933 ]
  %7938 = phi float [ %7367, %7362 ], [ %7532, %7933 ]
  %7939 = phi float [ %7368, %7362 ], [ %7533, %7933 ]
  %7940 = phi float [ %7369, %7362 ], [ %7534, %7933 ]
  %7941 = add i32 %7363, 1
  %7942 = icmp ugt i32 %7941, %7359
  br i1 %7942, label %7943, label %7362

; <label>:7943                                    ; preds = %7934
  br label %7944

; <label>:7944                                    ; preds = %7943, %7312, %7302
  %7945 = phi float [ %7303, %7302 ], [ %7303, %7312 ], [ %7935, %7943 ]
  %7946 = phi float [ %7304, %7302 ], [ %7304, %7312 ], [ %7936, %7943 ]
  %7947 = phi float [ %7305, %7302 ], [ %7305, %7312 ], [ %7937, %7943 ]
  %7948 = phi float [ %7306, %7302 ], [ %7306, %7312 ], [ %7938, %7943 ]
  %7949 = phi float [ %7307, %7302 ], [ %7307, %7312 ], [ %7939, %7943 ]
  %7950 = phi float [ %7308, %7302 ], [ %7308, %7312 ], [ %7940, %7943 ]
  %7951 = fmul fast float %4651, %4651
  %7952 = fmul fast float %7951, %6171
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fmul fast float %7951, %6172
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = fmul fast float %7951, %6173
  %7957 = fsub fast float -0.000000e+00, %7956
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 0
  %7960 = fmul fast float %7959, %6177
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 3
  %7963 = fsub fast float 1.000000e+00, %4658
  %7964 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7965 = fadd fast float %7950, %4657
  %7966 = fmul fast float %7965, %4658
  %7967 = fmul fast float %7964, %7962
  %7968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7969 = extractvalue %dx.types.CBufRet.f32 %7968, 3
  %7970 = fmul fast float %7948, %5844
  %7971 = fmul fast float %7949, %5845
  %7972 = fmul fast float %7950, %5846
  %7973 = fcmp fast ogt float %101, %232
  %7974 = and i1 %7973, %5064
  %7975 = or i1 %5070, %7974
  %7976 = icmp eq i32 %5063, 2
  %7977 = fcmp fast ole float %101, %232
  %7978 = and i1 %7977, %7976
  %7979 = or i1 %7978, %7975
  br i1 %7974, label %7980, label %8237

; <label>:7980                                    ; preds = %7944
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 2
  %7983 = extractvalue %dx.types.CBufRet.f32 %7981, 3
  %7984 = fmul fast float %7982, %110
  %7985 = fmul fast float %7983, %111
  %7986 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7987 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7988 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7986, float %7987, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7989 = extractvalue %dx.types.ResRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.ResRet.f32 %7988, 1
  %7991 = extractvalue %dx.types.ResRet.f32 %7988, 2
  %7992 = extractvalue %dx.types.ResRet.f32 %7988, 3
  %7993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7986, float %7987, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.ResRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.ResRet.f32 %7993, 2
  %7997 = extractvalue %dx.types.ResRet.f32 %7993, 3
  %7998 = call float @dx.op.binary.f32(i32 35, float %7990, float %7991)  ; FMax(a,b)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7989, float %7998)  ; FMax(a,b)
  %8000 = call float @dx.op.binary.f32(i32 35, float %7999, float %7992)  ; FMax(a,b)
  %8001 = call float @dx.op.binary.f32(i32 36, float %7995, float %7996)  ; FMin(a,b)
  %8002 = call float @dx.op.binary.f32(i32 36, float %7994, float %8001)  ; FMin(a,b)
  %8003 = call float @dx.op.binary.f32(i32 36, float %8002, float %7997)  ; FMin(a,b)
  %8004 = fmul fast float %8000, 2.550000e+02
  %8005 = fadd fast float %8004, 0x3F70101020000000
  %8006 = fptoui float %8005 to i32
  %8007 = fmul fast float %8003, 2.550000e+02
  %8008 = fadd fast float %8007, 0x3F70101020000000
  %8009 = fptoui float %8008 to i32
  %8010 = icmp ult i32 %8006, %8009
  br i1 %8010, label %8011, label %8179

; <label>:8011                                    ; preds = %7980
  %8012 = fcmp fast ogt float %100, 9.843750e-01
  %8013 = fadd fast float %101, -4.000000e+00
  %8014 = select i1 %8012, float -4.000000e+00, float %8013
  %8015 = call float @dx.op.binary.f32(i32 35, float %8014, float 0.000000e+00)  ; FMax(a,b)
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 0
  %8018 = fadd fast float %8017, %8015
  %8019 = extractvalue %dx.types.CBufRet.f32 %8016, 2
  %8020 = fmul fast float %8018, %8019
  %8021 = call float @dx.op.unary.f32(i32 23, float %8020)  ; Log(value)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8016, 3
  %8023 = fmul fast float %8022, %8021
  %8024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.f32 %8024, 2
  %8026 = fmul fast float %8023, %8025
  %8027 = call float @dx.op.unary.f32(i32 7, float %8026)  ; Saturate(value)
  %8028 = uitofp i32 %8006 to float
  %8029 = uitofp i32 %8009 to float
  %8030 = fadd fast float %8028, 5.000000e-01
  %8031 = fadd fast float %8029, 5.000000e-01
  %8032 = fmul fast float %8025, %8030
  %8033 = fmul fast float %8025, %8031
  %8034 = fadd fast float %8032, 0x3F0FFB4800000000
  %8035 = fadd fast float %8033, 0xBF0FFB4800000000
  %8036 = call float @dx.op.binary.f32(i32 35, float %8027, float %8034)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 36, float %8036, float %8035)  ; FMin(a,b)
  %8038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8039 = extractvalue %dx.types.CBufRet.f32 %8038, 1
  %8040 = extractvalue %dx.types.CBufRet.f32 %8038, 2
  %8041 = extractvalue %dx.types.CBufRet.f32 %8038, 0
  %8042 = fmul fast float %8039, %8037
  %8043 = fadd fast float %8041, %8042
  %8044 = fadd fast float %8041, %8040
  %8045 = fsub fast float %8039, %8040
  %8046 = fadd fast float %8045, %8041
  %8047 = call float @dx.op.binary.f32(i32 35, float %8043, float %8044)  ; FMax(a,b)
  %8048 = call float @dx.op.binary.f32(i32 36, float %8047, float %8046)  ; FMin(a,b)
  %8049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7986, float %7987, float %8048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 0
  %8051 = extractvalue %dx.types.ResRet.f32 %8049, 1
  %8052 = extractvalue %dx.types.ResRet.f32 %8049, 2
  %8053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.i32 %8053, 0
  %8055 = extractvalue %dx.types.CBufRet.i32 %8053, 1
  %8056 = uitofp i32 %8054 to float
  %8057 = uitofp i32 %8055 to float
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = fmul fast float %8056, %7986
  %8062 = fmul fast float %8057, %7987
  %8063 = fadd fast float %8061, -5.000000e-01
  %8064 = fadd fast float %8062, -5.000000e-01
  %8065 = call float @dx.op.unary.f32(i32 22, float %8063)  ; Frc(value)
  %8066 = call float @dx.op.unary.f32(i32 22, float %8064)  ; Frc(value)
  %8067 = fmul fast float %8065, %8065
  %8068 = fmul fast float %8067, %8065
  %8069 = fsub fast float 3.000000e+00, %8065
  %8070 = fmul fast float %8067, %8069
  %8071 = fmul fast float %8065, 3.000000e+00
  %8072 = fmul fast float %8068, 3.000000e+00
  %8073 = fmul fast float %8067, 6.000000e+00
  %8074 = fsub fast float %8072, %8073
  %8075 = fadd fast float %8074, 4.000000e+00
  %8076 = fmul fast float %8075, 0x3FC5555560000000
  %8077 = fmul fast float %8068, -3.000000e+00
  %8078 = fadd fast float %8067, %8065
  %8079 = fmul fast float %8078, 3.000000e+00
  %8080 = fadd fast float %8077, 1.000000e+00
  %8081 = fadd fast float %8080, %8079
  %8082 = fmul fast float %8068, 0x3FC5555560000000
  %8083 = fmul fast float %8066, %8066
  %8084 = fmul fast float %8083, %8066
  %8085 = fsub fast float 3.000000e+00, %8066
  %8086 = fmul fast float %8083, %8085
  %8087 = fmul fast float %8066, 3.000000e+00
  %8088 = fmul fast float %8084, 3.000000e+00
  %8089 = fmul fast float %8083, 6.000000e+00
  %8090 = fsub fast float %8088, %8089
  %8091 = fadd fast float %8090, 4.000000e+00
  %8092 = fmul fast float %8091, 0x3FC5555560000000
  %8093 = fmul fast float %8084, -3.000000e+00
  %8094 = fadd fast float %8083, %8066
  %8095 = fmul fast float %8094, 3.000000e+00
  %8096 = fadd fast float %8093, 1.000000e+00
  %8097 = fadd fast float %8096, %8095
  %8098 = fmul fast float %8084, 0x3FC5555560000000
  %8099 = fadd fast float %8065, 1.000000e+00
  %8100 = fsub fast float 1.000000e+00, %8071
  %8101 = fadd fast float %8100, %8070
  %8102 = fadd fast float %8101, %8075
  %8103 = fmul fast float %8102, 0x3FC5555560000000
  %8104 = fdiv fast float %8076, %8103
  %8105 = fsub fast float %8099, %8104
  %8106 = fsub fast float 1.000000e+00, %8065
  %8107 = fadd fast float %8081, %8068
  %8108 = fmul fast float %8107, 0x3FC5555560000000
  %8109 = fdiv fast float %8082, %8108
  %8110 = fadd fast float %8106, %8109
  %8111 = fadd fast float %8066, 1.000000e+00
  %8112 = fsub fast float 1.000000e+00, %8087
  %8113 = fadd fast float %8112, %8086
  %8114 = fadd fast float %8113, %8091
  %8115 = fmul fast float %8114, 0x3FC5555560000000
  %8116 = fdiv fast float %8092, %8115
  %8117 = fsub fast float %8111, %8116
  %8118 = fsub fast float 1.000000e+00, %8066
  %8119 = fadd fast float %8097, %8084
  %8120 = fmul fast float %8119, 0x3FC5555560000000
  %8121 = fdiv fast float %8098, %8120
  %8122 = fadd fast float %8121, %8118
  %8123 = fmul fast float %8105, %8059
  %8124 = fsub fast float %7986, %8123
  %8125 = fmul fast float %8110, %8059
  %8126 = fadd fast float %8125, %7986
  %8127 = fmul fast float %8122, %8060
  %8128 = fadd fast float %8127, %7987
  %8129 = fmul fast float %8117, %8060
  %8130 = fsub fast float %7987, %8129
  %8131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8124, float %8130, float %8048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8132 = extractvalue %dx.types.ResRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.ResRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.ResRet.f32 %8131, 2
  %8135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8126, float %8130, float %8048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8136 = extractvalue %dx.types.ResRet.f32 %8135, 0
  %8137 = extractvalue %dx.types.ResRet.f32 %8135, 1
  %8138 = extractvalue %dx.types.ResRet.f32 %8135, 2
  %8139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8124, float %8128, float %8048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8140 = extractvalue %dx.types.ResRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.ResRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.ResRet.f32 %8139, 2
  %8143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8126, float %8128, float %8048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8144 = extractvalue %dx.types.ResRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.ResRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.ResRet.f32 %8143, 2
  %8147 = fsub fast float %8140, %8132
  %8148 = fsub fast float %8141, %8133
  %8149 = fsub fast float %8142, %8134
  %8150 = fmul fast float %8147, %8120
  %8151 = fmul fast float %8148, %8120
  %8152 = fmul fast float %8149, %8120
  %8153 = fadd fast float %8150, %8132
  %8154 = fadd fast float %8151, %8133
  %8155 = fadd fast float %8152, %8134
  %8156 = fsub fast float %8144, %8136
  %8157 = fsub fast float %8145, %8137
  %8158 = fsub fast float %8146, %8138
  %8159 = fmul fast float %8156, %8120
  %8160 = fmul fast float %8157, %8120
  %8161 = fmul fast float %8158, %8120
  %8162 = fsub fast float %8136, %8153
  %8163 = fadd fast float %8162, %8159
  %8164 = fsub fast float %8137, %8154
  %8165 = fadd fast float %8164, %8160
  %8166 = fsub fast float %8138, %8155
  %8167 = fadd fast float %8166, %8161
  %8168 = fmul fast float %8163, %8108
  %8169 = fmul fast float %8165, %8108
  %8170 = fmul fast float %8167, %8108
  %8171 = fadd fast float %8168, %8153
  %8172 = fadd fast float %8169, %8154
  %8173 = fadd fast float %8170, %8155
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 1
  %8176 = fmul fast float %8171, %8175
  %8177 = fmul fast float %8172, %8175
  %8178 = fmul fast float %8173, %8175
  br label %8179

; <label>:8179                                    ; preds = %8011, %7980
  %8180 = phi float [ %8050, %8011 ], [ 1.000000e+00, %7980 ]
  %8181 = phi float [ %8051, %8011 ], [ 1.000000e+00, %7980 ]
  %8182 = phi float [ %8052, %8011 ], [ 1.000000e+00, %7980 ]
  %8183 = phi float [ %8176, %8011 ], [ 0.000000e+00, %7980 ]
  %8184 = phi float [ %8177, %8011 ], [ 0.000000e+00, %7980 ]
  %8185 = phi float [ %8178, %8011 ], [ 0.000000e+00, %7980 ]
  %8186 = fmul fast float %8183, %7953
  %8187 = fmul fast float %8184, %7955
  %8188 = fmul fast float %8185, %7957
  %8189 = call float @dx.op.dot3.f32(i32 55, float %8180, float %8181, float %8182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8190 = call float @dx.op.dot3.f32(i32 55, float %8186, float %8187, float %8188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8191 = select i1 %269, float %8189, float %8180
  %8192 = select i1 %269, float %8189, float %8181
  %8193 = select i1 %269, float 1.000000e+00, float %8182
  %8194 = select i1 %269, float %8190, float %8186
  %8195 = select i1 %269, float 0.000000e+00, float %8187
  %8196 = select i1 %269, float 0.000000e+00, float %8188
  %8197 = fmul fast float %8191, %7970
  %8198 = fmul fast float %8192, %7971
  %8199 = fmul fast float %8193, %7972
  %8200 = fadd fast float %8197, %8194
  %8201 = fadd fast float %8198, %8195
  %8202 = fadd fast float %8196, %8199
  %8203 = fmul fast float %8191, %7945
  %8204 = fmul fast float %8192, %7946
  %8205 = fmul fast float %8193, %7947
  %8206 = fmul fast float %146, %7982
  %8207 = fmul fast float %148, %7983
  %8208 = fsub fast float 1.000000e+00, %8206
  %8209 = fsub fast float 1.000000e+00, %8207
  %8210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.CBufRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.CBufRet.f32 %8210, 2
  %8214 = fmul fast float %8208, %8211
  %8215 = fmul fast float %8208, %8212
  %8216 = fmul fast float %8208, %8213
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8221 = fmul fast float %8209, %8218
  %8222 = fmul fast float %8209, %8219
  %8223 = fmul fast float %8209, %8220
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 0
  %8226 = extractvalue %dx.types.CBufRet.f32 %8224, 1
  %8227 = extractvalue %dx.types.CBufRet.f32 %8224, 2
  %8228 = fadd fast float %8221, %8225
  %8229 = fadd fast float %8228, %8214
  %8230 = fadd fast float %8222, %8226
  %8231 = fadd fast float %8230, %8215
  %8232 = fadd fast float %8223, %8227
  %8233 = fadd fast float %8232, %8216
  %8234 = fmul fast float %8229, %232
  %8235 = fmul fast float %8231, %232
  %8236 = fmul fast float %8233, %232
  br label %8237

; <label>:8237                                    ; preds = %8179, %7944
  %8238 = phi float [ %8234, %8179 ], [ %197, %7944 ]
  %8239 = phi float [ %8235, %8179 ], [ %198, %7944 ]
  %8240 = phi float [ %8236, %8179 ], [ %199, %7944 ]
  %8241 = phi float [ %232, %8179 ], [ %101, %7944 ]
  %8242 = phi float [ %8200, %8179 ], [ %7970, %7944 ]
  %8243 = phi float [ %8201, %8179 ], [ %7971, %7944 ]
  %8244 = phi float [ %8202, %8179 ], [ %7972, %7944 ]
  %8245 = phi float [ %8203, %8179 ], [ %7945, %7944 ]
  %8246 = phi float [ %8204, %8179 ], [ %7946, %7944 ]
  %8247 = phi float [ %8205, %8179 ], [ %7947, %7944 ]
  %8248 = phi float [ %8180, %8179 ], [ 1.000000e+00, %7944 ]
  br i1 %7979, label %9403, label %8249

; <label>:8249                                    ; preds = %8237
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8253 = extractvalue %dx.types.CBufRet.f32 %8250, 2
  %8254 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8264 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 3
  %8274 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8275 = extractvalue %dx.types.CBufRet.f32 %8272, 1
  %8276 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8277 = fcmp fast olt float %8276, -5.000000e-01
  %8278 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8239, float %8240, float %8238, float %8239, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8279 = call float @dx.op.unary.f32(i32 25, float %8278)  ; Rsqrt(value)
  %8280 = fmul fast float %8279, %8278
  %8281 = fmul fast float %8279, %8238
  %8282 = fmul fast float %8279, %8239
  %8283 = fmul fast float %8279, %8240
  %8284 = fadd fast float %8280, %8254
  %8285 = call float @dx.op.dot3.f32(i32 55, float %8281, float %8282, float %8283, float %8251, float %8252, float %8253)  ; Dot3(ax,ay,az,bx,by,bz)
  %8286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.i32 %8286, 1
  %8288 = and i32 %8287, 1
  %8289 = icmp ne i32 %8288, 0
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 2
  %8292 = fcmp fast ogt float %8291, 0.000000e+00
  %8293 = and i1 %8289, %8292
  br i1 %8293, label %8294, label %8700, !dx.controlflow.hints !129

; <label>:8294                                    ; preds = %8249
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 3
  %8297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8298 = extractvalue %dx.types.CBufRet.f32 %8297, 2
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8301 = fsub fast float %8298, %8300
  %8302 = and i32 %8287, 2
  %8303 = extractvalue %dx.types.CBufRet.i32 %8286, 0
  %8304 = call i32 @dx.op.binary.i32(i32 40, i32 %8303, i32 3)  ; UMin(a,b)
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.CBufRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8309 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8310 = fsub fast float %8306, %8308
  %8311 = fsub fast float %8307, %8309
  %8312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8312, 0
  %8314 = fcmp fast ogt float %8313, 0.000000e+00
  %8315 = fsub fast float -0.000000e+00, %8310
  %8316 = fsub fast float -0.000000e+00, %8311
  %8317 = call float @dx.op.dot2.f32(i32 54, float %8281, float %8282, float %8281, float %8282)  ; Dot2(ax,ay,bx,by)
  %8318 = call float @dx.op.dot2.f32(i32 54, float %8281, float %8282, float %8315, float %8316)  ; Dot2(ax,ay,bx,by)
  %8319 = fmul fast float %8318, 2.000000e+00
  %8320 = call float @dx.op.dot2.f32(i32 54, float %8315, float %8316, float %8315, float %8316)  ; Dot2(ax,ay,bx,by)
  %8321 = fmul fast float %8313, %8313
  %8322 = fsub fast float %8320, %8321
  %8323 = fmul fast float %8319, %8319
  %8324 = fmul fast float %8317, 4.000000e+00
  %8325 = fmul fast float %8324, %8322
  %8326 = fsub fast float %8323, %8325
  %8327 = fcmp fast ogt float %8326, 0.000000e+00
  br i1 %8327, label %8328, label %8343

; <label>:8328                                    ; preds = %8294
  %8329 = fcmp fast ogt float %8319, 0.000000e+00
  %8330 = call float @dx.op.unary.f32(i32 24, float %8326)  ; Sqrt(value)
  %8331 = fsub fast float -0.000000e+00, %8330
  %8332 = select i1 %8329, float %8330, float %8331
  %8333 = fadd fast float %8332, %8319
  %8334 = fmul float %8333, -5.000000e-01
  %8335 = fdiv fast float %8334, %8317
  %8336 = call float @dx.op.binary.f32(i32 35, float %8335, float 0.000000e+00)  ; FMax(a,b)
  %8337 = call float @dx.op.binary.f32(i32 36, float %8280, float %8336)  ; FMin(a,b)
  %8338 = fdiv fast float %8322, %8334
  %8339 = call float @dx.op.binary.f32(i32 35, float %8338, float 0.000000e+00)  ; FMax(a,b)
  %8340 = call float @dx.op.binary.f32(i32 36, float %8280, float %8339)  ; FMin(a,b)
  %8341 = call float @dx.op.binary.f32(i32 36, float %8337, float %8340)  ; FMin(a,b)
  %8342 = call float @dx.op.binary.f32(i32 35, float %8337, float %8340)  ; FMax(a,b)
  br label %8343

; <label>:8343                                    ; preds = %8328, %8294
  %8344 = phi float [ %8342, %8328 ], [ -1.000000e+00, %8294 ]
  %8345 = phi float [ %8341, %8328 ], [ -1.000000e+00, %8294 ]
  %8346 = phi i1 [ true, %8328 ], [ false, %8294 ]
  %8347 = and i1 %8314, %8346
  br i1 %8347, label %8348, label %8350

; <label>:8348                                    ; preds = %8343
  %8349 = fcmp fast oeq float %8345, %8344
  br i1 %8349, label %8653, label %8351

; <label>:8350                                    ; preds = %8343
  br i1 %8314, label %8653, label %8351

; <label>:8351                                    ; preds = %8350, %8348
  %8352 = phi float [ %8280, %8350 ], [ %8344, %8348 ]
  %8353 = phi float [ 0.000000e+00, %8350 ], [ %8345, %8348 ]
  %8354 = icmp ne i32 %8302, 0
  %8355 = fmul fast float %8352, %8283
  %8356 = fadd fast float %8355, %8296
  %8357 = fmul fast float %8356, %8352
  %8358 = select i1 %8354, float 0.000000e+00, float %8357
  %8359 = fcmp fast oeq float %8283, 0.000000e+00
  %8360 = fdiv fast float %8301, %8283
  %8361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8360)  ; FMax(a,b)
  %8362 = select i1 %8359, float %8352, float %8361
  %8363 = call float @dx.op.binary.f32(i32 36, float %8352, float %8362)  ; FMin(a,b)
  %8364 = fcmp fast ogt float %8283, 0.000000e+00
  %8365 = fcmp fast olt float %8301, 0.000000e+00
  br i1 %8364, label %8366, label %8423

; <label>:8366                                    ; preds = %8351
  %8367 = icmp eq i32 %8302, 0
  br i1 %8365, label %8368, label %8412

; <label>:8368                                    ; preds = %8366
  %8369 = select i1 %8367, float %8352, float 0.000000e+00
  %8370 = fsub fast float -0.000000e+00, %8369
  %8371 = call float @dx.op.unary.f32(i32 6, float %8370)  ; FAbs(value)
  %8372 = fmul fast float %8369, %8283
  %8373 = fadd fast float %8372, %8296
  %8374 = fmul fast float %8371, %8373
  %8375 = fsub fast float %8358, %8374
  %8376 = fsub fast float %8352, %8371
  %8377 = select i1 %8367, float %8376, float 0.000000e+00
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.CBufRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.CBufRet.f32 %8378, 2
  %8382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8383 = extractvalue %dx.types.CBufRet.f32 %8382, 0
  %8384 = extractvalue %dx.types.CBufRet.f32 %8382, 1
  %8385 = extractvalue %dx.types.CBufRet.f32 %8382, 2
  %8386 = extractvalue %dx.types.CBufRet.f32 %8382, 3
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 3
  %8389 = call float @dx.op.binary.f32(i32 36, float %8375, float %8388)  ; FMin(a,b)
  %8390 = fmul fast float %8386, %8377
  %8391 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8392 = fsub fast float %8383, %8379
  %8393 = fsub fast float %8384, %8380
  %8394 = fsub fast float %8385, %8381
  %8395 = fmul fast float %8391, %8392
  %8396 = fmul fast float %8391, %8393
  %8397 = fmul fast float %8391, %8394
  %8398 = fadd fast float %8395, %8379
  %8399 = fadd fast float %8396, %8380
  %8400 = fadd fast float %8397, %8381
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.CBufRet.f32 %8401, 1
  %8404 = fadd fast float %8403, %8402
  %8405 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8401, 2
  %8407 = extractvalue %dx.types.CBufRet.f32 %8401, 3
  %8408 = fadd fast float %8407, %8406
  %8409 = call float @dx.op.unary.f32(i32 7, float %8408)  ; Saturate(value)
  %8410 = fmul fast float %8405, %8389
  %8411 = fmul fast float %8410, %8409
  br label %8653

; <label>:8412                                    ; preds = %8366
  br i1 %8367, label %8413, label %8434

; <label>:8413                                    ; preds = %8412
  %8414 = call float @dx.op.binary.f32(i32 36, float %8363, float %8353)  ; FMin(a,b)
  %8415 = fsub fast float %8363, %8414
  %8416 = fsub fast float %8415, %8352
  %8417 = call float @dx.op.unary.f32(i32 6, float %8416)  ; FAbs(value)
  %8418 = fadd fast float %8415, %8352
  %8419 = fmul fast float %8418, %8283
  %8420 = fadd fast float %8419, %8296
  %8421 = fmul fast float %8420, %8417
  %8422 = fsub fast float %8358, %8421
  br label %8434

; <label>:8423                                    ; preds = %8351
  br i1 %8365, label %8424, label %8434

; <label>:8424                                    ; preds = %8423
  %8425 = call float @dx.op.binary.f32(i32 35, float %8353, float %8363)  ; FMax(a,b)
  %8426 = icmp eq i32 %8302, 0
  %8427 = select i1 %8426, float %8363, float 0.000000e+00
  %8428 = fsub fast float -0.000000e+00, %8427
  %8429 = call float @dx.op.unary.f32(i32 6, float %8428)  ; FAbs(value)
  %8430 = fmul fast float %8427, %8283
  %8431 = fadd fast float %8430, %8296
  %8432 = fmul fast float %8429, %8431
  %8433 = fsub fast float %8358, %8432
  br label %8434

; <label>:8434                                    ; preds = %8424, %8423, %8413, %8412
  %8435 = phi float [ %8353, %8412 ], [ %8353, %8413 ], [ %8425, %8424 ], [ %8353, %8423 ]
  %8436 = phi float [ 0.000000e+00, %8412 ], [ %8417, %8413 ], [ %8429, %8424 ], [ 0.000000e+00, %8423 ]
  %8437 = phi float [ %8358, %8412 ], [ %8422, %8413 ], [ %8433, %8424 ], [ %8358, %8423 ]
  %8438 = phi float [ %8363, %8412 ], [ %8363, %8413 ], [ %8352, %8424 ], [ %8352, %8423 ]
  %8439 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8439, align 4, !tbaa !130, !noalias !132
  %8440 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8440, align 4, !tbaa !130, !noalias !132
  %8441 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8441, align 4, !tbaa !130, !noalias !132
  %8442 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8442, align 4, !tbaa !130, !noalias !132
  %8443 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8443, align 4, !tbaa !130, !noalias !132
  %8444 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8444, align 4, !tbaa !130, !noalias !132
  %8445 = icmp sgt i32 %8304, 0
  br i1 %8445, label %8446, label %8507

; <label>:8446                                    ; preds = %8434
  br label %8447

; <label>:8447                                    ; preds = %8496, %8446
  %8448 = phi i32 [ %8497, %8496 ], [ 0, %8446 ]
  %8449 = phi i32 [ %8498, %8496 ], [ 0, %8446 ]
  %8450 = add nuw i32 %8449, 171
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8450)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8455 = extractvalue %dx.types.CBufRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.CBufRet.f32 %8454, 1
  %8457 = fsub fast float %8452, %8455
  %8458 = fsub fast float %8453, %8456
  %8459 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8460 = fsub fast float -0.000000e+00, %8457
  %8461 = fsub fast float -0.000000e+00, %8458
  %8462 = call float @dx.op.dot2.f32(i32 54, float %8281, float %8282, float %8460, float %8461)  ; Dot2(ax,ay,bx,by)
  %8463 = fmul fast float %8462, 2.000000e+00
  %8464 = call float @dx.op.dot2.f32(i32 54, float %8460, float %8461, float %8460, float %8461)  ; Dot2(ax,ay,bx,by)
  %8465 = fmul fast float %8459, %8459
  %8466 = fsub fast float %8464, %8465
  %8467 = fmul fast float %8463, %8463
  %8468 = fmul fast float %8324, %8466
  %8469 = fsub fast float %8467, %8468
  %8470 = fcmp fast ogt float %8469, 0.000000e+00
  br i1 %8470, label %8471, label %8486

; <label>:8471                                    ; preds = %8447
  %8472 = fcmp fast ogt float %8463, 0.000000e+00
  %8473 = call float @dx.op.unary.f32(i32 24, float %8469)  ; Sqrt(value)
  %8474 = fsub fast float -0.000000e+00, %8473
  %8475 = select i1 %8472, float %8473, float %8474
  %8476 = fadd fast float %8475, %8463
  %8477 = fmul float %8476, -5.000000e-01
  %8478 = fdiv fast float %8477, %8317
  %8479 = call float @dx.op.binary.f32(i32 35, float %8478, float 0.000000e+00)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 36, float %8352, float %8479)  ; FMin(a,b)
  %8481 = fdiv fast float %8466, %8477
  %8482 = call float @dx.op.binary.f32(i32 35, float %8481, float 0.000000e+00)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 36, float %8352, float %8482)  ; FMin(a,b)
  %8484 = call float @dx.op.binary.f32(i32 36, float %8480, float %8483)  ; FMin(a,b)
  %8485 = call float @dx.op.binary.f32(i32 35, float %8480, float %8483)  ; FMax(a,b)
  br label %8486

; <label>:8486                                    ; preds = %8471, %8447
  %8487 = phi float [ %8485, %8471 ], [ -1.000000e+00, %8447 ]
  %8488 = phi float [ %8484, %8471 ], [ -1.000000e+00, %8447 ]
  %8489 = phi i1 [ true, %8471 ], [ false, %8447 ]
  br i1 %8489, label %8490, label %8496

; <label>:8490                                    ; preds = %8486
  %8491 = call float @dx.op.binary.f32(i32 35, float %8435, float %8488)  ; FMax(a,b)
  %8492 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8449
  store float %8491, float* %8492, align 4, !tbaa !130, !noalias !132
  %8493 = call float @dx.op.binary.f32(i32 35, float %8435, float %8487)  ; FMax(a,b)
  %8494 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8449
  store float %8493, float* %8494, align 4, !tbaa !130, !noalias !132
  %8495 = add nsw i32 %8448, 1
  br label %8496

; <label>:8496                                    ; preds = %8490, %8486
  %8497 = phi i32 [ %8495, %8490 ], [ %8448, %8486 ]
  %8498 = add nuw nsw i32 %8449, 1
  %8499 = icmp eq i32 %8498, %8304
  br i1 %8499, label %8500, label %8447

; <label>:8500                                    ; preds = %8496
  %8501 = load float, float* %8441, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8502 = load float, float* %8440, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  %8503 = load float, float* %8439, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  %8504 = load float, float* %8444, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8505 = load float, float* %8443, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  %8506 = load float, float* %8442, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  br label %8507

; <label>:8507                                    ; preds = %8500, %8434
  %8508 = phi float [ -1.000000e+00, %8434 ], [ %8506, %8500 ]
  %8509 = phi float [ -1.000000e+00, %8434 ], [ %8505, %8500 ]
  %8510 = phi float [ -1.000000e+00, %8434 ], [ %8504, %8500 ]
  %8511 = phi float [ -1.000000e+00, %8434 ], [ %8503, %8500 ]
  %8512 = phi float [ -1.000000e+00, %8434 ], [ %8502, %8500 ]
  %8513 = phi float [ -1.000000e+00, %8434 ], [ %8501, %8500 ]
  %8514 = phi i32 [ 0, %8434 ], [ %8497, %8500 ]
  %8515 = call float @dx.op.binary.f32(i32 36, float %8512, float %8513)  ; FMin(a,b)
  %8516 = call float @dx.op.binary.f32(i32 36, float %8511, float %8515)  ; FMin(a,b)
  %8517 = call float @dx.op.binary.f32(i32 35, float %8511, float %8512)  ; FMax(a,b)
  %8518 = call float @dx.op.binary.f32(i32 36, float %8517, float %8513)  ; FMin(a,b)
  %8519 = call float @dx.op.binary.f32(i32 36, float %8511, float %8512)  ; FMin(a,b)
  %8520 = call float @dx.op.binary.f32(i32 35, float %8519, float %8518)  ; FMax(a,b)
  %8521 = call float @dx.op.binary.f32(i32 35, float %8512, float %8513)  ; FMax(a,b)
  %8522 = call float @dx.op.binary.f32(i32 35, float %8511, float %8521)  ; FMax(a,b)
  store float %8516, float* %8439, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  store float %8520, float* %8440, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  store float %8522, float* %8441, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8523 = call float @dx.op.binary.f32(i32 36, float %8509, float %8510)  ; FMin(a,b)
  %8524 = call float @dx.op.binary.f32(i32 36, float %8508, float %8523)  ; FMin(a,b)
  %8525 = call float @dx.op.binary.f32(i32 35, float %8508, float %8509)  ; FMax(a,b)
  %8526 = call float @dx.op.binary.f32(i32 36, float %8525, float %8510)  ; FMin(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8508, float %8509)  ; FMin(a,b)
  %8528 = call float @dx.op.binary.f32(i32 35, float %8527, float %8526)  ; FMax(a,b)
  %8529 = call float @dx.op.binary.f32(i32 35, float %8509, float %8510)  ; FMax(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float %8508, float %8529)  ; FMax(a,b)
  store float %8524, float* %8442, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %8528, float* %8443, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  store float %8530, float* %8444, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8531 = sub nsw i32 3, %8514
  %8532 = icmp sgt i32 %8531, 2
  br i1 %8532, label %8533, label %8571

; <label>:8533                                    ; preds = %8507
  %8534 = icmp eq i32 %8302, 0
  %8535 = fsub fast float %8352, %8436
  %8536 = select i1 %8534, float %8535, float %8436
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.CBufRet.f32 %8537, 2
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.CBufRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.CBufRet.f32 %8541, 2
  %8545 = extractvalue %dx.types.CBufRet.f32 %8541, 3
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 3
  %8548 = call float @dx.op.binary.f32(i32 36, float %8437, float %8547)  ; FMin(a,b)
  %8549 = fmul fast float %8545, %8536
  %8550 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8551 = fsub fast float %8542, %8538
  %8552 = fsub fast float %8543, %8539
  %8553 = fsub fast float %8544, %8540
  %8554 = fmul fast float %8550, %8551
  %8555 = fmul fast float %8550, %8552
  %8556 = fmul fast float %8550, %8553
  %8557 = fadd fast float %8554, %8538
  %8558 = fadd fast float %8555, %8539
  %8559 = fadd fast float %8556, %8540
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 0
  %8562 = extractvalue %dx.types.CBufRet.f32 %8560, 1
  %8563 = fadd fast float %8562, %8561
  %8564 = call float @dx.op.unary.f32(i32 7, float %8563)  ; Saturate(value)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8560, 2
  %8566 = extractvalue %dx.types.CBufRet.f32 %8560, 3
  %8567 = fadd fast float %8566, %8565
  %8568 = call float @dx.op.unary.f32(i32 7, float %8567)  ; Saturate(value)
  %8569 = fmul fast float %8564, %8548
  %8570 = fmul fast float %8569, %8568
  br label %8653

; <label>:8571                                    ; preds = %8507
  %8572 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8531
  %8573 = load float, float* %8572, align 4, !tbaa !130, !noalias !132
  %8574 = fcmp fast olt float %8573, %8438
  %8575 = icmp sgt i32 %8514, 0
  %8576 = and i1 %8575, %8574
  br i1 %8576, label %8577, label %8614

; <label>:8577                                    ; preds = %8571
  br label %8578

; <label>:8578                                    ; preds = %8607, %8577
  %8579 = phi float [ %8608, %8607 ], [ %8436, %8577 ]
  %8580 = phi float [ %8609, %8607 ], [ %8437, %8577 ]
  %8581 = phi float [ %8589, %8607 ], [ %8573, %8577 ]
  %8582 = phi i32 [ %8586, %8607 ], [ %8531, %8577 ]
  %8583 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8582
  %8584 = load float, float* %8583, align 4, !tbaa !130, !noalias !132
  %8585 = icmp slt i32 %8582, 2
  %8586 = add nsw i32 %8582, 1
  %8587 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8586
  %8588 = load float, float* %8587, align 4, !tbaa !130, !noalias !132
  %8589 = select i1 %8585, float %8588, float %8352
  %8590 = call float @dx.op.binary.f32(i32 36, float %8589, float %8584)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8438, float %8590)  ; FMin(a,b)
  %8592 = icmp eq i32 %8302, 0
  %8593 = fadd fast float %8591, %8581
  %8594 = fmul fast float %8593, %8283
  %8595 = fadd fast float %8594, %8296
  br i1 %8592, label %8601, label %8596

; <label>:8596                                    ; preds = %8578
  %8597 = fsub fast float %8591, %8581
  %8598 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8597)  ; FMax(a,b)
  %8599 = fmul fast float %8598, %8595
  %8600 = fadd fast float %8599, %8580
  br label %8607

; <label>:8601                                    ; preds = %8578
  %8602 = fsub fast float %8581, %8591
  %8603 = call float @dx.op.unary.f32(i32 6, float %8602)  ; FAbs(value)
  %8604 = fadd fast float %8603, %8579
  %8605 = fmul fast float %8603, %8595
  %8606 = fsub fast float %8580, %8605
  br label %8607

; <label>:8607                                    ; preds = %8601, %8596
  %8608 = phi float [ %8598, %8596 ], [ %8604, %8601 ]
  %8609 = phi float [ %8600, %8596 ], [ %8606, %8601 ]
  %8610 = fcmp fast olt float %8589, %8438
  %8611 = icmp slt i32 %8586, 3
  %8612 = and i1 %8611, %8610
  br i1 %8612, label %8578, label %8613

; <label>:8613                                    ; preds = %8607
  br label %8614

; <label>:8614                                    ; preds = %8613, %8571
  %8615 = phi float [ %8436, %8571 ], [ %8608, %8613 ]
  %8616 = phi float [ %8437, %8571 ], [ %8609, %8613 ]
  %8617 = fsub fast float %8352, %8615
  %8618 = select i1 %8354, float %8615, float %8617
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 0
  %8621 = extractvalue %dx.types.CBufRet.f32 %8619, 1
  %8622 = extractvalue %dx.types.CBufRet.f32 %8619, 2
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 3
  %8630 = call float @dx.op.binary.f32(i32 36, float %8616, float %8629)  ; FMin(a,b)
  %8631 = fmul fast float %8627, %8618
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fsub fast float %8624, %8620
  %8634 = fsub fast float %8625, %8621
  %8635 = fsub fast float %8626, %8622
  %8636 = fmul fast float %8632, %8633
  %8637 = fmul fast float %8632, %8634
  %8638 = fmul fast float %8632, %8635
  %8639 = fadd fast float %8636, %8620
  %8640 = fadd fast float %8637, %8621
  %8641 = fadd fast float %8638, %8622
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8645 = fadd fast float %8644, %8643
  %8646 = call float @dx.op.unary.f32(i32 7, float %8645)  ; Saturate(value)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8648 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8649 = fadd fast float %8648, %8647
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = fmul fast float %8646, %8630
  %8652 = fmul fast float %8651, %8650
  br label %8653

; <label>:8653                                    ; preds = %8614, %8533, %8368, %8350, %8348
  %8654 = phi float [ %8377, %8368 ], [ %8536, %8533 ], [ %8618, %8614 ], [ 0.000000e+00, %8348 ], [ 0.000000e+00, %8350 ]
  %8655 = phi float [ %8411, %8368 ], [ %8570, %8533 ], [ %8652, %8614 ], [ 0.000000e+00, %8348 ], [ 0.000000e+00, %8350 ]
  %8656 = phi float [ %8398, %8368 ], [ %8557, %8533 ], [ %8639, %8614 ], [ 0.000000e+00, %8348 ], [ 0.000000e+00, %8350 ]
  %8657 = phi float [ %8399, %8368 ], [ %8558, %8533 ], [ %8640, %8614 ], [ 0.000000e+00, %8348 ], [ 0.000000e+00, %8350 ]
  %8658 = phi float [ %8400, %8368 ], [ %8559, %8533 ], [ %8641, %8614 ], [ 0.000000e+00, %8348 ], [ 0.000000e+00, %8350 ]
  %8659 = fmul fast float %8291, %8655
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 2
  %8662 = fsub fast float %8298, %8661
  %8663 = fcmp fast olt float %8659, -2.000000e+01
  %8664 = call float @dx.op.unary.f32(i32 21, float %8659)  ; Exp(value)
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 3
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8670 = fmul fast float %8667, %8662
  %8671 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  %8672 = fsub fast float 1.000000e+00, %8671
  %8673 = fmul fast float %8283, 5.000000e-01
  %8674 = fadd fast float %8673, 5.000000e-01
  %8675 = call float @dx.op.unary.f32(i32 7, float %8674)  ; Saturate(value)
  %8676 = fsub fast float 1.000000e+00, %8675
  %8677 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8672)  ; FMax(a,b)
  %8678 = fdiv fast float %8676, %8677
  %8679 = fsub fast float %8662, %8240
  %8680 = call float @dx.op.unary.f32(i32 6, float %8679)  ; FAbs(value)
  %8681 = fmul fast float %8680, %8666
  %8682 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8683 = fsub fast float 1.000000e+00, %8681
  %8684 = fmul fast float %8683, %8682
  %8685 = fadd fast float %8684, %8681
  %8686 = fmul fast float %8669, %8662
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = fsub fast float 1.000000e+00, %8685
  %8689 = fmul fast float %8688, %8687
  %8690 = fadd fast float %8689, %8685
  %8691 = call float @dx.op.unary.f32(i32 7, float %8690)  ; Saturate(value)
  %8692 = fadd fast float %8664, -1.000000e+00
  %8693 = select i1 %8663, float -1.000000e+00, float %8692
  %8694 = fmul fast float %8691, %8693
  %8695 = fadd fast float %8694, 1.000000e+00
  %8696 = fsub fast float -0.000000e+00, %8694
  %8697 = fmul fast float %8656, %8696
  %8698 = fmul fast float %8657, %8696
  %8699 = fmul fast float %8658, %8696
  br label %8700

; <label>:8700                                    ; preds = %8653, %8249
  %8701 = phi float [ %8654, %8653 ], [ 0.000000e+00, %8249 ]
  %8702 = phi float [ %8695, %8653 ], [ 1.000000e+00, %8249 ]
  %8703 = phi float [ %8697, %8653 ], [ 0.000000e+00, %8249 ]
  %8704 = phi float [ %8698, %8653 ], [ 0.000000e+00, %8249 ]
  %8705 = phi float [ %8699, %8653 ], [ 0.000000e+00, %8249 ]
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 1
  %8708 = fsub fast float 1.000000e+00, %8702
  %8709 = fmul fast float %8708, %8284
  %8710 = fmul fast float %8709, %8707
  %8711 = fsub fast float %8284, %8710
  br i1 %8277, label %8712, label %8741, !dx.controlflow.hints !168

; <label>:8712                                    ; preds = %8700
  %8713 = fmul fast float %8285, %8274
  %8714 = fadd fast float %8713, %8275
  %8715 = call float @dx.op.unary.f32(i32 7, float %8714)  ; Saturate(value)
  %8716 = fmul fast float %8256, %8711
  %8717 = fsub fast float -0.000000e+00, %8716
  %8718 = fmul fast float %8257, %8711
  %8719 = fsub fast float -0.000000e+00, %8718
  %8720 = call float @dx.op.unary.f32(i32 21, float %8717)  ; Exp(value)
  %8721 = call float @dx.op.unary.f32(i32 21, float %8719)  ; Exp(value)
  %8722 = call float @dx.op.binary.f32(i32 35, float %8264, float %8720)  ; FMax(a,b)
  %8723 = call float @dx.op.binary.f32(i32 35, float %8264, float %8721)  ; FMax(a,b)
  %8724 = fsub fast float %8723, %8722
  %8725 = fmul fast float %8724, %8715
  %8726 = fadd fast float %8725, %8722
  %8727 = call float @dx.op.unary.f32(i32 7, float %8726)  ; Saturate(value)
  %8728 = fsub fast float %8261, %8266
  %8729 = fsub fast float %8262, %8267
  %8730 = fsub fast float %8263, %8268
  %8731 = fmul fast float %8715, %8728
  %8732 = fmul fast float %8715, %8729
  %8733 = fmul fast float %8715, %8730
  %8734 = fadd fast float %8731, %8266
  %8735 = fadd fast float %8732, %8267
  %8736 = fadd fast float %8733, %8268
  %8737 = fsub fast float 1.000000e+00, %8727
  %8738 = fmul fast float %8737, %8734
  %8739 = fmul fast float %8737, %8735
  %8740 = fmul fast float %8737, %8736
  br label %8800

; <label>:8741                                    ; preds = %8700
  %8742 = fmul fast float %8711, %8273
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = fsub fast float 2.000000e+00, %8743
  %8745 = fmul fast float %8743, 9.921875e-01
  %8746 = fmul fast float %8745, %8744
  %8747 = fadd fast float %8746, 3.906250e-03
  %8748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8747, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8749 = extractvalue %dx.types.ResRet.f32 %8748, 0
  %8750 = fsub fast float %8743, %8749
  %8751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8750)  ; FMax(a,b)
  %8752 = fmul fast float %8259, %8240
  %8753 = call float @dx.op.unary.f32(i32 6, float %8752)  ; FAbs(value)
  %8754 = fcmp fast ogt float %8753, 0x3EB0C6F7A0000000
  br i1 %8754, label %8755, label %8761, !dx.controlflow.hints !169

; <label>:8755                                    ; preds = %8741
  %8756 = fmul fast float %8752, 0xBFF7154760000000
  %8757 = call float @dx.op.unary.f32(i32 21, float %8756)  ; Exp(value)
  %8758 = fsub fast float 1.000000e+00, %8757
  %8759 = fdiv fast float %8758, %8752
  %8760 = fmul fast float %8759, %8269
  br label %8761

; <label>:8761                                    ; preds = %8755, %8741
  %8762 = phi float [ %8760, %8755 ], [ %8269, %8741 ]
  %8763 = fadd fast float %8762, %8271
  %8764 = fmul fast float %8763, %8751
  %8765 = fmul fast float %8256, %8764
  %8766 = fsub fast float -0.000000e+00, %8765
  %8767 = fmul fast float %8257, %8764
  %8768 = fsub fast float -0.000000e+00, %8767
  %8769 = fmul fast float %8258, %8764
  %8770 = fsub fast float -0.000000e+00, %8769
  %8771 = call float @dx.op.unary.f32(i32 21, float %8766)  ; Exp(value)
  %8772 = call float @dx.op.unary.f32(i32 21, float %8768)  ; Exp(value)
  %8773 = call float @dx.op.unary.f32(i32 21, float %8770)  ; Exp(value)
  %8774 = fmul fast float %8285, %8285
  %8775 = fadd fast float %8774, 1.000000e+00
  %8776 = fmul fast float %8775, 0x3FAE8EC8A0000000
  %8777 = fmul fast float %8776, %8266
  %8778 = fmul fast float %8776, %8267
  %8779 = fmul fast float %8776, %8268
  %8780 = fmul fast float %8285, %8264
  %8781 = fsub fast float 1.000000e+00, %8780
  %8782 = fmul fast float %8264, %8264
  %8783 = fsub fast float 1.000000e+00, %8782
  %8784 = fmul fast float %8783, 0x3FB45F3060000000
  %8785 = fmul fast float %8781, %8781
  %8786 = fdiv fast float 1.000000e+00, %8785
  %8787 = fmul fast float %8784, %8786
  %8788 = fmul fast float %8787, %8261
  %8789 = fmul fast float %8787, %8262
  %8790 = fmul fast float %8787, %8263
  %8791 = fadd fast float %8788, %8777
  %8792 = fadd fast float %8789, %8778
  %8793 = fadd fast float %8790, %8779
  %8794 = fsub fast float 1.000000e+00, %8771
  %8795 = fsub fast float 1.000000e+00, %8772
  %8796 = fsub fast float 1.000000e+00, %8773
  %8797 = fmul fast float %8791, %8794
  %8798 = fmul fast float %8792, %8795
  %8799 = fmul fast float %8793, %8796
  br label %8800

; <label>:8800                                    ; preds = %8761, %8712
  %8801 = phi float [ %8738, %8712 ], [ %8797, %8761 ]
  %8802 = phi float [ %8739, %8712 ], [ %8798, %8761 ]
  %8803 = phi float [ %8740, %8712 ], [ %8799, %8761 ]
  %8804 = phi float [ %8727, %8712 ], [ %8771, %8761 ]
  %8805 = phi float [ %8727, %8712 ], [ %8772, %8761 ]
  %8806 = phi float [ %8727, %8712 ], [ %8773, %8761 ]
  br i1 %8293, label %8807, label %9005, !dx.controlflow.hints !170

; <label>:8807                                    ; preds = %8800
  %8808 = extractvalue %dx.types.CBufRet.f32 %8706, 0
  %8809 = fmul fast float %8808, %8708
  %8810 = fsub fast float %8703, %8801
  %8811 = fsub fast float %8704, %8802
  %8812 = fsub fast float %8705, %8803
  %8813 = fmul fast float %8809, %8810
  %8814 = fmul fast float %8809, %8811
  %8815 = fmul fast float %8809, %8812
  %8816 = fadd fast float %8813, %8801
  %8817 = fadd fast float %8814, %8802
  %8818 = fadd fast float %8815, %8803
  %8819 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8804)  ; FMax(a,b)
  %8820 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8805)  ; FMax(a,b)
  %8821 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8806)  ; FMax(a,b)
  %8822 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8702)  ; FMax(a,b)
  %8823 = call float @dx.op.binary.f32(i32 35, float %8701, float %8711)  ; FMax(a,b)
  %8824 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8823)  ; FMax(a,b)
  %8825 = fdiv fast float %8701, %8824
  %8826 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  %8827 = fdiv fast float %8711, %8824
  %8828 = call float @dx.op.unary.f32(i32 7, float %8827)  ; Saturate(value)
  %8829 = fcmp fast une float %8822, 1.000000e+00
  br i1 %8829, label %8830, label %8843, !dx.controlflow.hints !171

; <label>:8830                                    ; preds = %8807
  %8831 = call float @dx.op.unary.f32(i32 23, float %8822)  ; Log(value)
  %8832 = fmul fast float %8831, 0x3FE62E4300000000
  %8833 = fmul fast float %8703, %8832
  %8834 = fsub fast float -0.000000e+00, %8833
  %8835 = fmul fast float %8704, %8832
  %8836 = fsub fast float -0.000000e+00, %8835
  %8837 = fmul fast float %8705, %8832
  %8838 = fsub fast float -0.000000e+00, %8837
  %8839 = fsub fast float 1.000000e+00, %8822
  %8840 = fdiv fast float %8834, %8839
  %8841 = fdiv fast float %8836, %8839
  %8842 = fdiv fast float %8838, %8839
  br label %8843

; <label>:8843                                    ; preds = %8830, %8807
  %8844 = phi float [ %8840, %8830 ], [ %8703, %8807 ]
  %8845 = phi float [ %8841, %8830 ], [ %8704, %8807 ]
  %8846 = phi float [ %8842, %8830 ], [ %8705, %8807 ]
  %8847 = phi float [ %8832, %8830 ], [ 0.000000e+00, %8807 ]
  %8848 = fcmp fast une float %8819, 1.000000e+00
  br i1 %8848, label %8849, label %8856, !dx.controlflow.hints !172

; <label>:8849                                    ; preds = %8843
  %8850 = call float @dx.op.unary.f32(i32 23, float %8819)  ; Log(value)
  %8851 = fmul fast float %8850, 0x3FE62E4300000000
  %8852 = fmul fast float %8816, %8851
  %8853 = fsub fast float -0.000000e+00, %8852
  %8854 = fsub fast float 1.000000e+00, %8819
  %8855 = fdiv fast float %8853, %8854
  br label %8856

; <label>:8856                                    ; preds = %8849, %8843
  %8857 = phi float [ %8855, %8849 ], [ %8816, %8843 ]
  %8858 = phi float [ %8851, %8849 ], [ 0.000000e+00, %8843 ]
  %8859 = fcmp fast une float %8820, 1.000000e+00
  br i1 %8859, label %8860, label %8867, !dx.controlflow.hints !172

; <label>:8860                                    ; preds = %8856
  %8861 = call float @dx.op.unary.f32(i32 23, float %8820)  ; Log(value)
  %8862 = fmul fast float %8861, 0x3FE62E4300000000
  %8863 = fmul fast float %8817, %8862
  %8864 = fsub fast float -0.000000e+00, %8863
  %8865 = fsub fast float 1.000000e+00, %8820
  %8866 = fdiv fast float %8864, %8865
  br label %8867

; <label>:8867                                    ; preds = %8860, %8856
  %8868 = phi float [ %8866, %8860 ], [ %8817, %8856 ]
  %8869 = phi float [ %8862, %8860 ], [ 0.000000e+00, %8856 ]
  %8870 = fcmp fast une float %8821, 1.000000e+00
  br i1 %8870, label %8871, label %8878, !dx.controlflow.hints !172

; <label>:8871                                    ; preds = %8867
  %8872 = call float @dx.op.unary.f32(i32 23, float %8821)  ; Log(value)
  %8873 = fmul fast float %8872, 0x3FE62E4300000000
  %8874 = fmul fast float %8818, %8873
  %8875 = fsub fast float -0.000000e+00, %8874
  %8876 = fsub fast float 1.000000e+00, %8821
  %8877 = fdiv fast float %8875, %8876
  br label %8878

; <label>:8878                                    ; preds = %8871, %8867
  %8879 = phi float [ %8877, %8871 ], [ %8818, %8867 ]
  %8880 = phi float [ %8873, %8871 ], [ 0.000000e+00, %8867 ]
  %8881 = fmul fast float %8844, %8828
  %8882 = fmul fast float %8845, %8828
  %8883 = fmul fast float %8846, %8828
  %8884 = fmul fast float %8847, %8828
  %8885 = fmul fast float %8857, %8826
  %8886 = fmul fast float %8868, %8826
  %8887 = fmul fast float %8879, %8826
  %8888 = fmul fast float %8858, %8826
  %8889 = fmul fast float %8869, %8826
  %8890 = fmul fast float %8880, %8826
  %8891 = fadd fast float %8885, %8881
  %8892 = fadd fast float %8886, %8882
  %8893 = fadd fast float %8887, %8883
  %8894 = fadd fast float %8888, %8884
  %8895 = fadd fast float %8889, %8884
  %8896 = fadd fast float %8890, %8884
  %8897 = fcmp fast une float %8894, 0.000000e+00
  br i1 %8897, label %8898, label %8905, !dx.controlflow.hints !173

; <label>:8898                                    ; preds = %8878
  %8899 = fmul fast float %8894, 0x3FF7154760000000
  %8900 = call float @dx.op.unary.f32(i32 21, float %8899)  ; Exp(value)
  %8901 = fsub fast float 1.000000e+00, %8900
  %8902 = fmul fast float %8891, %8901
  %8903 = fsub fast float -0.000000e+00, %8902
  %8904 = fdiv fast float %8903, %8894
  br label %8905

; <label>:8905                                    ; preds = %8898, %8878
  %8906 = phi float [ %8900, %8898 ], [ 1.000000e+00, %8878 ]
  %8907 = phi float [ %8904, %8898 ], [ %8891, %8878 ]
  %8908 = fcmp fast une float %8895, 0.000000e+00
  br i1 %8908, label %8909, label %8916, !dx.controlflow.hints !173

; <label>:8909                                    ; preds = %8905
  %8910 = fmul fast float %8895, 0x3FF7154760000000
  %8911 = call float @dx.op.unary.f32(i32 21, float %8910)  ; Exp(value)
  %8912 = fsub fast float 1.000000e+00, %8911
  %8913 = fmul fast float %8892, %8912
  %8914 = fsub fast float -0.000000e+00, %8913
  %8915 = fdiv fast float %8914, %8895
  br label %8916

; <label>:8916                                    ; preds = %8909, %8905
  %8917 = phi float [ %8911, %8909 ], [ 1.000000e+00, %8905 ]
  %8918 = phi float [ %8915, %8909 ], [ %8892, %8905 ]
  %8919 = fcmp fast une float %8896, 0.000000e+00
  br i1 %8919, label %8920, label %8927, !dx.controlflow.hints !173

; <label>:8920                                    ; preds = %8916
  %8921 = fmul fast float %8896, 0x3FF7154760000000
  %8922 = call float @dx.op.unary.f32(i32 21, float %8921)  ; Exp(value)
  %8923 = fsub fast float 1.000000e+00, %8922
  %8924 = fmul fast float %8893, %8923
  %8925 = fsub fast float -0.000000e+00, %8924
  %8926 = fdiv fast float %8925, %8896
  br label %8927

; <label>:8927                                    ; preds = %8920, %8916
  %8928 = phi float [ %8922, %8920 ], [ 1.000000e+00, %8916 ]
  %8929 = phi float [ %8926, %8920 ], [ %8893, %8916 ]
  %8930 = fcmp fast ogt float %8826, %8828
  br i1 %8930, label %8931, label %8951

; <label>:8931                                    ; preds = %8927
  %8932 = fsub fast float 1.000000e+00, %8828
  %8933 = fmul fast float %8844, %8932
  %8934 = fmul fast float %8845, %8932
  %8935 = fmul fast float %8846, %8932
  %8936 = fmul fast float %8847, %8932
  %8937 = fcmp fast une float %8936, 0.000000e+00
  br i1 %8937, label %8938, label %8989, !dx.controlflow.hints !174

; <label>:8938                                    ; preds = %8931
  %8939 = fmul fast float %8936, 0x3FF7154760000000
  %8940 = call float @dx.op.unary.f32(i32 21, float %8939)  ; Exp(value)
  %8941 = fsub fast float 1.000000e+00, %8940
  %8942 = fmul fast float %8933, %8941
  %8943 = fsub fast float -0.000000e+00, %8942
  %8944 = fmul fast float %8934, %8941
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fmul fast float %8935, %8941
  %8947 = fsub fast float -0.000000e+00, %8946
  %8948 = fdiv fast float %8943, %8936
  %8949 = fdiv fast float %8945, %8936
  %8950 = fdiv fast float %8947, %8936
  br label %8989

; <label>:8951                                    ; preds = %8927
  %8952 = fsub fast float 1.000000e+00, %8826
  %8953 = fmul fast float %8857, %8952
  %8954 = fmul fast float %8868, %8952
  %8955 = fmul fast float %8879, %8952
  %8956 = fmul fast float %8858, %8952
  %8957 = fmul fast float %8869, %8952
  %8958 = fmul fast float %8880, %8952
  %8959 = fcmp fast une float %8956, 0.000000e+00
  br i1 %8959, label %8960, label %8967, !dx.controlflow.hints !173

; <label>:8960                                    ; preds = %8951
  %8961 = fmul fast float %8956, 0x3FF7154760000000
  %8962 = call float @dx.op.unary.f32(i32 21, float %8961)  ; Exp(value)
  %8963 = fsub fast float 1.000000e+00, %8962
  %8964 = fmul fast float %8953, %8963
  %8965 = fsub fast float -0.000000e+00, %8964
  %8966 = fdiv fast float %8965, %8956
  br label %8967

; <label>:8967                                    ; preds = %8960, %8951
  %8968 = phi float [ %8966, %8960 ], [ %8953, %8951 ]
  %8969 = phi float [ %8962, %8960 ], [ 1.000000e+00, %8951 ]
  %8970 = fcmp fast une float %8957, 0.000000e+00
  br i1 %8970, label %8971, label %8978, !dx.controlflow.hints !173

; <label>:8971                                    ; preds = %8967
  %8972 = fmul fast float %8957, 0x3FF7154760000000
  %8973 = call float @dx.op.unary.f32(i32 21, float %8972)  ; Exp(value)
  %8974 = fsub fast float 1.000000e+00, %8973
  %8975 = fmul fast float %8954, %8974
  %8976 = fsub fast float -0.000000e+00, %8975
  %8977 = fdiv fast float %8976, %8957
  br label %8978

; <label>:8978                                    ; preds = %8971, %8967
  %8979 = phi float [ %8977, %8971 ], [ %8954, %8967 ]
  %8980 = phi float [ %8973, %8971 ], [ 1.000000e+00, %8967 ]
  %8981 = fcmp fast une float %8958, 0.000000e+00
  br i1 %8981, label %8982, label %8989, !dx.controlflow.hints !173

; <label>:8982                                    ; preds = %8978
  %8983 = fmul fast float %8958, 0x3FF7154760000000
  %8984 = call float @dx.op.unary.f32(i32 21, float %8983)  ; Exp(value)
  %8985 = fsub fast float 1.000000e+00, %8984
  %8986 = fmul fast float %8955, %8985
  %8987 = fsub fast float -0.000000e+00, %8986
  %8988 = fdiv fast float %8987, %8958
  br label %8989

; <label>:8989                                    ; preds = %8982, %8978, %8938, %8931
  %8990 = phi float [ %8988, %8982 ], [ %8950, %8938 ], [ %8935, %8931 ], [ %8955, %8978 ]
  %8991 = phi float [ %8979, %8982 ], [ %8949, %8938 ], [ %8934, %8931 ], [ %8979, %8978 ]
  %8992 = phi float [ %8968, %8982 ], [ %8948, %8938 ], [ %8933, %8931 ], [ %8968, %8978 ]
  %8993 = phi float [ %8984, %8982 ], [ %8940, %8938 ], [ 1.000000e+00, %8931 ], [ 1.000000e+00, %8978 ]
  %8994 = phi float [ %8980, %8982 ], [ %8940, %8938 ], [ 1.000000e+00, %8931 ], [ %8980, %8978 ]
  %8995 = phi float [ %8969, %8982 ], [ %8940, %8938 ], [ 1.000000e+00, %8931 ], [ %8969, %8978 ]
  %8996 = fmul fast float %8995, %8907
  %8997 = fmul fast float %8994, %8918
  %8998 = fmul fast float %8993, %8929
  %8999 = fadd fast float %8996, %8992
  %9000 = fadd fast float %8997, %8991
  %9001 = fadd fast float %8998, %8990
  %9002 = fmul fast float %8995, %8906
  %9003 = fmul fast float %8994, %8917
  %9004 = fmul fast float %8993, %8928
  br label %9005

; <label>:9005                                    ; preds = %8989, %8800
  %9006 = phi float [ %9004, %8989 ], [ %8806, %8800 ]
  %9007 = phi float [ %9003, %8989 ], [ %8805, %8800 ]
  %9008 = phi float [ %9002, %8989 ], [ %8804, %8800 ]
  %9009 = phi float [ %9001, %8989 ], [ %8803, %8800 ]
  %9010 = phi float [ %9000, %8989 ], [ %8802, %8800 ]
  %9011 = phi float [ %8999, %8989 ], [ %8801, %8800 ]
  %9012 = fmul fast float %9011, %7953
  %9013 = fmul fast float %9010, %7955
  %9014 = fmul fast float %9009, %7957
  %9015 = fmul fast float %9008, %8248
  %9016 = call float @dx.op.dot3.f32(i32 55, float %9008, float %9007, float %9006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9017 = call float @dx.op.dot3.f32(i32 55, float %9012, float %9013, float %9014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9018 = select i1 %269, float %9016, float %9008
  %9019 = select i1 %269, float %9016, float %9007
  %9020 = select i1 %269, float 1.000000e+00, float %9006
  %9021 = select i1 %269, float %9017, float %9012
  %9022 = select i1 %269, float 0.000000e+00, float %9013
  %9023 = select i1 %269, float 0.000000e+00, float %9014
  %9024 = fmul fast float %9018, %8242
  %9025 = fmul fast float %9019, %8243
  %9026 = fmul fast float %9020, %8244
  %9027 = fadd fast float %9024, %9021
  %9028 = fadd fast float %9025, %9022
  %9029 = fadd fast float %9023, %9026
  %9030 = fmul fast float %9018, %8245
  %9031 = fmul fast float %9019, %8246
  %9032 = fmul fast float %9020, %8247
  %9033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.i32 %9033, 0
  %9035 = icmp eq i32 %9034, 0
  br i1 %9035, label %9403, label %9036, !dx.controlflow.hints !175

; <label>:9036                                    ; preds = %9005
  %9037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9038 = extractvalue %dx.types.CBufRet.f32 %9037, 2
  %9039 = extractvalue %dx.types.CBufRet.f32 %9037, 3
  %9040 = fmul fast float %9038, %110
  %9041 = fmul fast float %9039, %111
  %9042 = fmul fast float %9040, 2.000000e+00
  %9043 = fmul fast float %9041, 2.000000e+00
  %9044 = fsub fast float 1.000000e+00, %9042
  %9045 = fsub fast float 1.000000e+00, %9043
  %9046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9047 = extractvalue %dx.types.CBufRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.CBufRet.f32 %9046, 1
  %9049 = extractvalue %dx.types.CBufRet.f32 %9046, 2
  %9050 = fmul fast float %9044, %9047
  %9051 = fmul fast float %9044, %9048
  %9052 = fmul fast float %9044, %9049
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.CBufRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9057 = fmul fast float %9045, %9054
  %9058 = fmul fast float %9045, %9055
  %9059 = fmul fast float %9045, %9056
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 0
  %9062 = extractvalue %dx.types.CBufRet.f32 %9060, 1
  %9063 = extractvalue %dx.types.CBufRet.f32 %9060, 2
  %9064 = fadd fast float %9057, %9061
  %9065 = fadd fast float %9064, %9050
  %9066 = fadd fast float %9058, %9062
  %9067 = fadd fast float %9066, %9051
  %9068 = fadd fast float %9059, %9063
  %9069 = fadd fast float %9068, %9052
  %9070 = fmul fast float %9065, %8241
  %9071 = fmul fast float %9067, %8241
  %9072 = fmul fast float %9069, %8241
  %9073 = fmul fast float %9070, %9070
  %9074 = fmul fast float %9071, %9071
  %9075 = fadd fast float %9073, %9074
  %9076 = fmul fast float %9072, %9072
  %9077 = fadd fast float %9075, %9076
  %9078 = call float @dx.op.unary.f32(i32 24, float %9077)  ; Sqrt(value)
  %9079 = extractvalue %dx.types.CBufRet.f32 %7968, 0
  %9080 = fsub fast float %9078, %9079
  %9081 = extractvalue %dx.types.CBufRet.f32 %7968, 2
  %9082 = fmul fast float %9080, %9081
  %9083 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9084 = fadd fast float %9083, -5.000000e-01
  %9085 = fmul fast float %9084, 2.000000e+00
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 2
  %9088 = call float @dx.op.binary.f32(i32 36, float %9087, float %9085)  ; FMin(a,b)
  %9089 = fsub fast float -0.000000e+00, %9087
  %9090 = fcmp fast ogt float %9088, %9089
  br i1 %9090, label %9091, label %9403, !dx.controlflow.hints !176

; <label>:9091                                    ; preds = %9036
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 3
  %9094 = fcmp fast ogt float %9093, 0.000000e+00
  br i1 %9094, label %9095, label %9170, !dx.controlflow.hints !177

; <label>:9095                                    ; preds = %9091
  %9096 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9097 = extractvalue %dx.types.Dimensions %9096, 0
  %9098 = sitofp i32 %9097 to float
  %9099 = extractvalue %dx.types.Dimensions %9096, 1
  %9100 = sitofp i32 %9099 to float
  %9101 = fmul fast float %9040, %9098
  %9102 = fmul fast float %9041, %9100
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 1
  %9105 = fsub fast float -0.000000e+00, %9104
  %9106 = fptoui float %9105 to i32
  %9107 = fptoui float %9101 to i32
  %9108 = fptoui float %9102 to i32
  %9109 = and i32 %9106, 31
  %9110 = lshr i32 %9107, %9109
  %9111 = lshr i32 %9108, %9109
  %9112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9106, i32 %9110, i32 %9111, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9113 = extractvalue %dx.types.ResRet.f32 %9112, 0
  %9114 = fcmp fast olt float %9113, -1.000000e+00
  %9115 = fcmp fast ogt float %9113, -1.000000e+00
  %9116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9117 = extractvalue %dx.types.CBufRet.f32 %9116, 1
  %9118 = select i1 %9115, float %9117, float 1.000000e+00
  %9119 = fadd fast float %9113, 1.000000e+00
  %9120 = fmul fast float %9118, %9119
  %9121 = call float @dx.op.unary.f32(i32 6, float %9120)  ; FAbs(value)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9116, 3
  %9123 = fcmp fast oge float %9121, %9122
  %9124 = select i1 %9123, float 0x4197782600000000, float %9121
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.CBufRet.f32 %9125, 2
  %9129 = select i1 %9114, float %9126, float %9047
  %9130 = select i1 %9114, float %9127, float %9048
  %9131 = select i1 %9114, float %9128, float %9049
  %9132 = fmul fast float %9129, %9044
  %9133 = fmul fast float %9130, %9044
  %9134 = fmul fast float %9131, %9044
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9137 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9138 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9139 = select i1 %9114, float %9136, float %9054
  %9140 = select i1 %9114, float %9137, float %9055
  %9141 = select i1 %9114, float %9138, float %9056
  %9142 = fmul fast float %9139, %9045
  %9143 = fmul fast float %9140, %9045
  %9144 = fmul fast float %9141, %9045
  %9145 = fadd fast float %9142, %9132
  %9146 = fadd fast float %9143, %9133
  %9147 = fadd fast float %9144, %9134
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 0
  %9150 = extractvalue %dx.types.CBufRet.f32 %9148, 1
  %9151 = extractvalue %dx.types.CBufRet.f32 %9148, 2
  %9152 = select i1 %9114, float %9149, float %9061
  %9153 = select i1 %9114, float %9150, float %9062
  %9154 = select i1 %9114, float %9151, float %9063
  %9155 = fadd fast float %9145, %9152
  %9156 = fadd fast float %9146, %9153
  %9157 = fadd fast float %9147, %9154
  %9158 = fmul fast float %9155, %9124
  %9159 = fmul fast float %9156, %9124
  %9160 = fmul fast float %9157, %9124
  %9161 = fmul fast float %9158, %9158
  %9162 = fmul fast float %9159, %9159
  %9163 = fadd fast float %9161, %9162
  %9164 = fmul fast float %9160, %9160
  %9165 = fadd fast float %9163, %9164
  %9166 = call float @dx.op.unary.f32(i32 24, float %9165)  ; Sqrt(value)
  %9167 = fsub fast float %9166, %9079
  %9168 = fmul fast float %9167, %9081
  %9169 = call float @dx.op.unary.f32(i32 7, float %9168)  ; Saturate(value)
  br label %9170

; <label>:9170                                    ; preds = %9095, %9091
  %9171 = phi float [ %9169, %9095 ], [ 1.000000e+00, %9091 ]
  %9172 = fmul fast float %9088, 5.000000e-01
  %9173 = fadd fast float %9172, 5.000000e-01
  %9174 = call float @dx.op.unary.f32(i32 22, float %9173)  ; Frc(value)
  %9175 = call float @dx.op.unary.f32(i32 27, float %9174)  ; Round_ni(value)
  %9176 = call float @dx.op.unary.f32(i32 22, float %9174)  ; Frc(value)
  %9177 = fmul fast float %9176, 2.000000e+00
  %9178 = fadd fast float %9177, -1.000000e+00
  %9179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9040, float %9041, float %9175, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9180 = extractvalue %dx.types.ResRet.f32 %9179, 0
  %9181 = extractvalue %dx.types.ResRet.f32 %9179, 1
  %9182 = extractvalue %dx.types.ResRet.f32 %9179, 2
  %9183 = extractvalue %dx.types.ResRet.f32 %9179, 3
  %9184 = fadd fast float %9180, -5.000000e-01
  %9185 = fadd fast float %9182, -5.000000e-01
  %9186 = fmul fast float %9184, 0xBFD5555560000000
  %9187 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9185, float %9186)  ; FMad(a,b,c)
  %9188 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9181, float 0.000000e+00)  ; FMad(a,b,c)
  %9189 = fadd fast float %9188, %9183
  %9190 = fmul fast float %9184, -7.500000e-01
  %9191 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9185, float %9190)  ; FMad(a,b,c)
  %9192 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9181, float 0.000000e+00)  ; FMad(a,b,c)
  %9193 = fadd fast float %9192, %9183
  %9194 = call float @dx.op.binary.f32(i32 35, float %9187, float -1.000000e+00)  ; FMax(a,b)
  %9195 = call float @dx.op.binary.f32(i32 35, float %9189, float -1.000000e+00)  ; FMax(a,b)
  %9196 = call float @dx.op.binary.f32(i32 35, float %9191, float -1.000000e+00)  ; FMax(a,b)
  %9197 = call float @dx.op.binary.f32(i32 35, float %9193, float -1.000000e+00)  ; FMax(a,b)
  %9198 = call float @dx.op.binary.f32(i32 36, float %9194, float 1.000000e+00)  ; FMin(a,b)
  %9199 = call float @dx.op.binary.f32(i32 36, float %9195, float 1.000000e+00)  ; FMin(a,b)
  %9200 = call float @dx.op.binary.f32(i32 36, float %9196, float 1.000000e+00)  ; FMin(a,b)
  %9201 = call float @dx.op.binary.f32(i32 36, float %9197, float 1.000000e+00)  ; FMin(a,b)
  %9202 = fcmp fast olt float %9198, 0x3FEFFF8020000000
  br i1 %9202, label %9203, label %9318, !dx.controlflow.hints !178

; <label>:9203                                    ; preds = %9170
  %9204 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 0
  %9207 = extractvalue %dx.types.CBufRet.f32 %9205, 1
  %9208 = extractvalue %dx.types.CBufRet.f32 %9205, 2
  %9209 = extractvalue %dx.types.CBufRet.f32 %9205, 3
  %9210 = fsub fast float %9206, %9198
  %9211 = fsub fast float %9207, %9199
  %9212 = fsub fast float %9208, %9200
  %9213 = fsub fast float %9209, %9201
  %9214 = fmul fast float %9210, %9204
  %9215 = fmul fast float %9211, %9204
  %9216 = fmul fast float %9212, %9204
  %9217 = fmul fast float %9213, %9204
  %9218 = fadd fast float %9214, %9198
  %9219 = fadd fast float %9215, %9199
  %9220 = fsub fast float -0.000000e+00, %9219
  %9221 = fadd fast float %9216, %9200
  %9222 = fadd fast float %9217, %9201
  %9223 = fmul fast float %9218, %9218
  %9224 = fsub fast float %9219, %9223
  %9225 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9224)  ; FMax(a,b)
  %9226 = fdiv fast float 1.000000e+00, %9225
  %9227 = fmul fast float %9219, %9218
  %9228 = fsub fast float %9221, %9227
  %9229 = fsub fast float %9178, %9218
  %9230 = fmul fast float %9178, %9178
  %9231 = fsub fast float %9230, %9219
  %9232 = fmul fast float %9229, %9226
  %9233 = fmul fast float %9232, %9228
  %9234 = fsub fast float %9231, %9233
  %9235 = fmul fast float %9219, %9219
  %9236 = fsub fast float %9222, %9235
  %9237 = fmul fast float %9228, %9228
  %9238 = fmul fast float %9237, %9226
  %9239 = fsub fast float %9236, %9238
  %9240 = fdiv fast float %9234, %9239
  %9241 = fmul fast float %9228, %9240
  %9242 = fsub fast float %9229, %9241
  %9243 = fmul fast float %9242, %9226
  %9244 = fmul fast float %9243, %9218
  %9245 = fsub fast float 1.000000e+00, %9244
  %9246 = fmul fast float %9219, %9240
  %9247 = fsub fast float %9245, %9246
  %9248 = fmul fast float %9243, %9243
  %9249 = fmul fast float %9240, 4.000000e+00
  %9250 = fmul fast float %9249, %9247
  %9251 = fsub fast float %9248, %9250
  %9252 = call float @dx.op.unary.f32(i32 24, float %9251)  ; Sqrt(value)
  %9253 = fcmp fast oge float %9243, 0.000000e+00
  %9254 = fsub fast float -0.000000e+00, %9252
  %9255 = select i1 %9253, float %9254, float %9252
  %9256 = fsub fast float %9255, %9243
  %9257 = fdiv fast float %9256, %9240
  %9258 = fdiv fast float %9247, %9256
  %9259 = fmul fast float %9257, 5.000000e-01
  %9260 = fmul fast float %9258, 2.000000e+00
  %9261 = select i1 %9253, float %9259, float %9260
  %9262 = select i1 %9253, float %9260, float %9259
  %9263 = call float @dx.op.binary.f32(i32 35, float %9261, float %9262)  ; FMax(a,b)
  %9264 = call float @dx.op.binary.f32(i32 36, float %9261, float %9262)  ; FMin(a,b)
  %9265 = fcmp fast ogt float %9178, %9264
  br i1 %9265, label %9266, label %9276

; <label>:9266                                    ; preds = %9203
  %9267 = fsub fast float %9178, %9264
  %9268 = fsub fast float %9263, %9264
  %9269 = fmul fast float %9267, %9268
  %9270 = fmul fast float %9263, %9178
  %9271 = fadd fast float %9263, %9178
  %9272 = fmul fast float %9271, %9218
  %9273 = fadd fast float %9270, %9219
  %9274 = fsub fast float %9273, %9272
  %9275 = fdiv fast float %9274, %9269
  br label %9276

; <label>:9276                                    ; preds = %9266, %9203
  %9277 = phi float [ %9275, %9266 ], [ 0.000000e+00, %9203 ]
  %9278 = fcmp fast ogt float %9178, %9263
  %9279 = fsub fast float %9178, %9263
  br i1 %9278, label %9280, label %9290

; <label>:9280                                    ; preds = %9276
  %9281 = fsub fast float %9263, %9264
  %9282 = fmul fast float %9281, %9279
  %9283 = fmul fast float %9264, %9178
  %9284 = fadd fast float %9264, %9178
  %9285 = fmul fast float %9284, %9218
  %9286 = fsub fast float %9220, %9283
  %9287 = fadd fast float %9286, %9285
  %9288 = fdiv fast float %9287, %9282
  %9289 = fadd fast float %9288, %9277
  br label %9290

; <label>:9290                                    ; preds = %9280, %9276
  %9291 = phi float [ %9289, %9280 ], [ %9277, %9276 ]
  %9292 = fsub fast float %9178, %9264
  %9293 = fmul fast float %9292, %9279
  %9294 = fmul fast float %9264, %9263
  %9295 = fadd fast float %9264, %9263
  %9296 = fmul fast float %9295, %9218
  %9297 = fadd fast float %9294, %9219
  %9298 = fsub fast float %9297, %9296
  %9299 = fdiv fast float %9298, %9293
  %9300 = call float @dx.op.unary.f32(i32 7, float %9291)  ; Saturate(value)
  %9301 = fcmp fast oeq float %7969, 0.000000e+00
  %9302 = extractvalue %dx.types.CBufRet.f32 %9086, 0
  %9303 = fcmp fast oeq float %9302, 0.000000e+00
  %9304 = or i1 %9301, %9303
  %9305 = fmul fast float %9302, 2.000000e+00
  %9306 = fadd fast float %9087, %9088
  %9307 = fdiv fast float %9306, %9305
  %9308 = call float @dx.op.unary.f32(i32 7, float %9307)  ; Saturate(value)
  %9309 = fmul fast float %9308, 2.000000e+00
  %9310 = fsub fast float 3.000000e+00, %9309
  %9311 = fmul fast float %9308, %9308
  %9312 = fmul fast float %9311, %9310
  %9313 = select i1 %9304, float 1.000000e+00, float %9312
  %9314 = fmul fast float %9299, %7969
  %9315 = fadd fast float %9300, %9314
  %9316 = call float @dx.op.unary.f32(i32 7, float %9315)  ; Saturate(value)
  %9317 = fmul fast float %9313, %9316
  br label %9318

; <label>:9318                                    ; preds = %9290, %9170
  %9319 = phi float [ %9317, %9290 ], [ 0.000000e+00, %9170 ]
  %9320 = fsub fast float 1.000000e+00, %9319
  %9321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9040, float %9041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9322 = extractvalue %dx.types.ResRet.f32 %9321, 0
  %9323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.i32 %9323, 2
  %9325 = icmp eq i32 %9324, 0
  br i1 %9325, label %9331, label %9326

; <label>:9326                                    ; preds = %9318
  %9327 = call float @dx.op.unary.f32(i32 7, float %9319)  ; Saturate(value)
  %9328 = fadd fast float %9322, -1.000000e+00
  %9329 = fmul fast float %9327, %9328
  %9330 = fadd fast float %9329, 1.000000e+00
  br label %9331

; <label>:9331                                    ; preds = %9326, %9318
  %9332 = phi float [ %9330, %9326 ], [ %9320, %9318 ]
  br i1 %9094, label %9333, label %9351

; <label>:9333                                    ; preds = %9331
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 1
  %9336 = fsub fast float %9171, %9335
  %9337 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9338 = fsub fast float %9171, %9093
  %9339 = call float @dx.op.unary.f32(i32 7, float %9338)  ; Saturate(value)
  %9340 = fsub fast float %9337, %9339
  %9341 = fsub fast float %9173, %9339
  %9342 = fdiv fast float %9341, %9340
  %9343 = call float @dx.op.unary.f32(i32 7, float %9342)  ; Saturate(value)
  %9344 = fmul fast float %9343, 2.000000e+00
  %9345 = fsub fast float 3.000000e+00, %9344
  %9346 = fsub fast float %9322, %9332
  %9347 = fmul fast float %9343, %9343
  %9348 = fmul fast float %9347, %9346
  %9349 = fmul fast float %9348, %9345
  %9350 = fadd fast float %9349, %9332
  br label %9351

; <label>:9351                                    ; preds = %9333, %9331
  %9352 = phi float [ %9350, %9333 ], [ %9332, %9331 ]
  %9353 = call float @dx.op.binary.f32(i32 35, float %9322, float %9352)  ; FMax(a,b)
  %9354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9355 = extractvalue %dx.types.CBufRet.i32 %9354, 2
  %9356 = and i32 %9355, 1
  %9357 = icmp eq i32 %9356, 0
  %9358 = fcmp fast une float %9353, 1.000000e+00
  %9359 = and i1 %9358, %9357
  br i1 %9359, label %9360, label %9379

; <label>:9360                                    ; preds = %9351
  %9361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9040, float %9041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9362 = extractvalue %dx.types.ResRet.f32 %9361, 0
  %9363 = extractvalue %dx.types.ResRet.f32 %9361, 1
  %9364 = extractvalue %dx.types.ResRet.f32 %9361, 2
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 1
  %9367 = fmul fast float %9366, %9362
  %9368 = fmul fast float %9366, %9363
  %9369 = fmul fast float %9366, %9364
  %9370 = fcmp fast ogt float %9322, 0x3FEFFF2E40000000
  %9371 = fsub fast float 1.000000e+00, %9353
  %9372 = fsub fast float 1.000000e+00, %9322
  %9373 = fdiv fast float %9371, %9372
  %9374 = call float @dx.op.unary.f32(i32 7, float %9373)  ; Saturate(value)
  %9375 = select i1 %9370, float 0.000000e+00, float %9374
  %9376 = fmul fast float %9367, %9375
  %9377 = fmul fast float %9368, %9375
  %9378 = fmul fast float %9369, %9375
  br label %9379

; <label>:9379                                    ; preds = %9360, %9351
  %9380 = phi float [ 0.000000e+00, %9351 ], [ %9376, %9360 ]
  %9381 = phi float [ 0.000000e+00, %9351 ], [ %9377, %9360 ]
  %9382 = phi float [ 0.000000e+00, %9351 ], [ %9378, %9360 ]
  %9383 = fmul fast float %9380, %7953
  %9384 = fmul fast float %9381, %7955
  %9385 = fmul fast float %9382, %7957
  %9386 = fmul fast float %9353, %9015
  %9387 = call float @dx.op.dot3.f32(i32 55, float %9353, float %9353, float %9353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9388 = call float @dx.op.dot3.f32(i32 55, float %9383, float %9384, float %9385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9389 = select i1 %269, float %9387, float %9353
  %9390 = select i1 %269, float 1.000000e+00, float %9353
  %9391 = select i1 %269, float %9388, float %9383
  %9392 = select i1 %269, float 0.000000e+00, float %9384
  %9393 = select i1 %269, float 0.000000e+00, float %9385
  %9394 = fmul fast float %9389, %9027
  %9395 = fmul fast float %9389, %9028
  %9396 = fmul fast float %9390, %9029
  %9397 = fadd fast float %9394, %9391
  %9398 = fadd fast float %9395, %9392
  %9399 = fadd fast float %9393, %9396
  %9400 = fmul fast float %9389, %9030
  %9401 = fmul fast float %9389, %9031
  %9402 = fmul fast float %9390, %9032
  br label %9403

; <label>:9403                                    ; preds = %9379, %9036, %9005, %8237
  %9404 = phi float [ %8242, %8237 ], [ %9027, %9005 ], [ %9397, %9379 ], [ %9027, %9036 ]
  %9405 = phi float [ %8243, %8237 ], [ %9028, %9005 ], [ %9398, %9379 ], [ %9028, %9036 ]
  %9406 = phi float [ %8244, %8237 ], [ %9029, %9005 ], [ %9399, %9379 ], [ %9029, %9036 ]
  %9407 = phi float [ %8245, %8237 ], [ %9030, %9005 ], [ %9400, %9379 ], [ %9030, %9036 ]
  %9408 = phi float [ %8246, %8237 ], [ %9031, %9005 ], [ %9401, %9379 ], [ %9031, %9036 ]
  %9409 = phi float [ %8247, %8237 ], [ %9032, %9005 ], [ %9402, %9379 ], [ %9032, %9036 ]
  %9410 = phi float [ %8248, %8237 ], [ %9015, %9005 ], [ %9386, %9379 ], [ %9015, %9036 ]
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 2
  %9413 = extractvalue %dx.types.CBufRet.f32 %9411, 3
  %9414 = fmul fast float %9412, %110
  %9415 = fmul fast float %9413, %111
  %9416 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9417 = call float @dx.op.unary.f32(i32 7, float %9415)  ; Saturate(value)
  %9418 = select i1 %7979, i32 2, i32 0
  %9419 = or i32 %9418, 1
  %9420 = uitofp i32 %9419 to float
  %9421 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9416, float %9417, float %9420, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9422 = extractvalue %dx.types.ResRet.f32 %9421, 0
  %9423 = extractvalue %dx.types.ResRet.f32 %9421, 1
  %9424 = extractvalue %dx.types.ResRet.f32 %9421, 2
  %9425 = extractvalue %dx.types.ResRet.f32 %9421, 3
  %9426 = add nuw nsw i32 %9418, 2
  %9427 = uitofp i32 %9426 to float
  %9428 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9416, float %9417, float %9427, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9429 = extractvalue %dx.types.ResRet.f32 %9428, 0
  %9430 = extractvalue %dx.types.ResRet.f32 %9428, 1
  %9431 = extractvalue %dx.types.ResRet.f32 %9428, 2
  %9432 = extractvalue %dx.types.ResRet.f32 %9428, 3
  %9433 = call float @dx.op.binary.f32(i32 35, float %9423, float %9424)  ; FMax(a,b)
  %9434 = call float @dx.op.binary.f32(i32 35, float %9422, float %9433)  ; FMax(a,b)
  %9435 = call float @dx.op.binary.f32(i32 35, float %9434, float %9425)  ; FMax(a,b)
  %9436 = call float @dx.op.binary.f32(i32 36, float %9430, float %9431)  ; FMin(a,b)
  %9437 = call float @dx.op.binary.f32(i32 36, float %9429, float %9436)  ; FMin(a,b)
  %9438 = call float @dx.op.binary.f32(i32 36, float %9437, float %9432)  ; FMin(a,b)
  %9439 = fmul fast float %9435, 2.550000e+02
  %9440 = fadd fast float %9439, 0x3F70101020000000
  %9441 = fptoui float %9440 to i32
  %9442 = fmul fast float %9438, 2.550000e+02
  %9443 = fadd fast float %9442, 0x3F70101020000000
  %9444 = fptoui float %9443 to i32
  %9445 = icmp ult i32 %9441, %9444
  br i1 %9445, label %9446, label %9615

; <label>:9446                                    ; preds = %9403
  %9447 = fcmp fast ogt float %100, 9.843750e-01
  %9448 = fadd fast float %8241, -4.000000e+00
  %9449 = select i1 %9447, float -4.000000e+00, float %9448
  %9450 = call float @dx.op.binary.f32(i32 35, float %9449, float 0.000000e+00)  ; FMax(a,b)
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 0
  %9453 = fadd fast float %9452, %9450
  %9454 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9455 = fmul fast float %9453, %9454
  %9456 = call float @dx.op.unary.f32(i32 23, float %9455)  ; Log(value)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9451, 3
  %9458 = fmul fast float %9457, %9456
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 2
  %9461 = fmul fast float %9458, %9460
  %9462 = call float @dx.op.unary.f32(i32 7, float %9461)  ; Saturate(value)
  %9463 = uitofp i32 %9441 to float
  %9464 = uitofp i32 %9444 to float
  %9465 = fadd fast float %9463, 5.000000e-01
  %9466 = fadd fast float %9464, 5.000000e-01
  %9467 = fmul fast float %9460, %9465
  %9468 = fmul fast float %9460, %9466
  %9469 = fadd fast float %9467, 0x3F0FFB4800000000
  %9470 = fadd fast float %9468, 0xBF0FFB4800000000
  %9471 = call float @dx.op.binary.f32(i32 35, float %9462, float %9469)  ; FMax(a,b)
  %9472 = call float @dx.op.binary.f32(i32 36, float %9471, float %9470)  ; FMin(a,b)
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 1
  %9475 = extractvalue %dx.types.CBufRet.f32 %9473, 2
  %9476 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9477 = select i1 %7979, float %9476, float 0.000000e+00
  %9478 = fmul fast float %9474, %9472
  %9479 = fadd fast float %9477, %9478
  %9480 = fadd fast float %9477, %9475
  %9481 = fsub fast float %9474, %9475
  %9482 = fadd fast float %9481, %9477
  %9483 = call float @dx.op.binary.f32(i32 35, float %9479, float %9480)  ; FMax(a,b)
  %9484 = call float @dx.op.binary.f32(i32 36, float %9483, float %9482)  ; FMin(a,b)
  %9485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9416, float %9417, float %9484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9486 = extractvalue %dx.types.ResRet.f32 %9485, 0
  %9487 = extractvalue %dx.types.ResRet.f32 %9485, 1
  %9488 = extractvalue %dx.types.ResRet.f32 %9485, 2
  %9489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9490 = extractvalue %dx.types.CBufRet.i32 %9489, 0
  %9491 = extractvalue %dx.types.CBufRet.i32 %9489, 1
  %9492 = uitofp i32 %9490 to float
  %9493 = uitofp i32 %9491 to float
  %9494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9495 = extractvalue %dx.types.CBufRet.f32 %9494, 0
  %9496 = extractvalue %dx.types.CBufRet.f32 %9494, 1
  %9497 = fmul fast float %9492, %9416
  %9498 = fmul fast float %9493, %9417
  %9499 = fadd fast float %9497, -5.000000e-01
  %9500 = fadd fast float %9498, -5.000000e-01
  %9501 = call float @dx.op.unary.f32(i32 22, float %9499)  ; Frc(value)
  %9502 = call float @dx.op.unary.f32(i32 22, float %9500)  ; Frc(value)
  %9503 = fmul fast float %9501, %9501
  %9504 = fmul fast float %9503, %9501
  %9505 = fsub fast float 3.000000e+00, %9501
  %9506 = fmul fast float %9503, %9505
  %9507 = fmul fast float %9501, 3.000000e+00
  %9508 = fmul fast float %9504, 3.000000e+00
  %9509 = fmul fast float %9503, 6.000000e+00
  %9510 = fsub fast float %9508, %9509
  %9511 = fadd fast float %9510, 4.000000e+00
  %9512 = fmul fast float %9511, 0x3FC5555560000000
  %9513 = fmul fast float %9504, -3.000000e+00
  %9514 = fadd fast float %9503, %9501
  %9515 = fmul fast float %9514, 3.000000e+00
  %9516 = fadd fast float %9513, 1.000000e+00
  %9517 = fadd fast float %9516, %9515
  %9518 = fmul fast float %9504, 0x3FC5555560000000
  %9519 = fmul fast float %9502, %9502
  %9520 = fmul fast float %9519, %9502
  %9521 = fsub fast float 3.000000e+00, %9502
  %9522 = fmul fast float %9519, %9521
  %9523 = fmul fast float %9502, 3.000000e+00
  %9524 = fmul fast float %9520, 3.000000e+00
  %9525 = fmul fast float %9519, 6.000000e+00
  %9526 = fsub fast float %9524, %9525
  %9527 = fadd fast float %9526, 4.000000e+00
  %9528 = fmul fast float %9527, 0x3FC5555560000000
  %9529 = fmul fast float %9520, -3.000000e+00
  %9530 = fadd fast float %9519, %9502
  %9531 = fmul fast float %9530, 3.000000e+00
  %9532 = fadd fast float %9529, 1.000000e+00
  %9533 = fadd fast float %9532, %9531
  %9534 = fmul fast float %9520, 0x3FC5555560000000
  %9535 = fadd fast float %9501, 1.000000e+00
  %9536 = fsub fast float 1.000000e+00, %9507
  %9537 = fadd fast float %9536, %9506
  %9538 = fadd fast float %9537, %9511
  %9539 = fmul fast float %9538, 0x3FC5555560000000
  %9540 = fdiv fast float %9512, %9539
  %9541 = fsub fast float %9535, %9540
  %9542 = fsub fast float 1.000000e+00, %9501
  %9543 = fadd fast float %9517, %9504
  %9544 = fmul fast float %9543, 0x3FC5555560000000
  %9545 = fdiv fast float %9518, %9544
  %9546 = fadd fast float %9542, %9545
  %9547 = fadd fast float %9502, 1.000000e+00
  %9548 = fsub fast float 1.000000e+00, %9523
  %9549 = fadd fast float %9548, %9522
  %9550 = fadd fast float %9549, %9527
  %9551 = fmul fast float %9550, 0x3FC5555560000000
  %9552 = fdiv fast float %9528, %9551
  %9553 = fsub fast float %9547, %9552
  %9554 = fsub fast float 1.000000e+00, %9502
  %9555 = fadd fast float %9533, %9520
  %9556 = fmul fast float %9555, 0x3FC5555560000000
  %9557 = fdiv fast float %9534, %9556
  %9558 = fadd fast float %9557, %9554
  %9559 = fmul fast float %9541, %9495
  %9560 = fsub fast float %9416, %9559
  %9561 = fmul fast float %9546, %9495
  %9562 = fadd fast float %9561, %9416
  %9563 = fmul fast float %9558, %9496
  %9564 = fadd fast float %9563, %9417
  %9565 = fmul fast float %9553, %9496
  %9566 = fsub fast float %9417, %9565
  %9567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9560, float %9566, float %9484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9568 = extractvalue %dx.types.ResRet.f32 %9567, 0
  %9569 = extractvalue %dx.types.ResRet.f32 %9567, 1
  %9570 = extractvalue %dx.types.ResRet.f32 %9567, 2
  %9571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9562, float %9566, float %9484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9572 = extractvalue %dx.types.ResRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.ResRet.f32 %9571, 1
  %9574 = extractvalue %dx.types.ResRet.f32 %9571, 2
  %9575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9560, float %9564, float %9484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9576 = extractvalue %dx.types.ResRet.f32 %9575, 0
  %9577 = extractvalue %dx.types.ResRet.f32 %9575, 1
  %9578 = extractvalue %dx.types.ResRet.f32 %9575, 2
  %9579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9562, float %9564, float %9484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9580 = extractvalue %dx.types.ResRet.f32 %9579, 0
  %9581 = extractvalue %dx.types.ResRet.f32 %9579, 1
  %9582 = extractvalue %dx.types.ResRet.f32 %9579, 2
  %9583 = fsub fast float %9576, %9568
  %9584 = fsub fast float %9577, %9569
  %9585 = fsub fast float %9578, %9570
  %9586 = fmul fast float %9583, %9556
  %9587 = fmul fast float %9584, %9556
  %9588 = fmul fast float %9585, %9556
  %9589 = fadd fast float %9586, %9568
  %9590 = fadd fast float %9587, %9569
  %9591 = fadd fast float %9588, %9570
  %9592 = fsub fast float %9580, %9572
  %9593 = fsub fast float %9581, %9573
  %9594 = fsub fast float %9582, %9574
  %9595 = fmul fast float %9592, %9556
  %9596 = fmul fast float %9593, %9556
  %9597 = fmul fast float %9594, %9556
  %9598 = fsub fast float %9572, %9589
  %9599 = fadd fast float %9598, %9595
  %9600 = fsub fast float %9573, %9590
  %9601 = fadd fast float %9600, %9596
  %9602 = fsub fast float %9574, %9591
  %9603 = fadd fast float %9602, %9597
  %9604 = fmul fast float %9599, %9544
  %9605 = fmul fast float %9601, %9544
  %9606 = fmul fast float %9603, %9544
  %9607 = fadd fast float %9604, %9589
  %9608 = fadd fast float %9605, %9590
  %9609 = fadd fast float %9606, %9591
  %9610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9611 = extractvalue %dx.types.CBufRet.f32 %9610, 1
  %9612 = fmul fast float %9607, %9611
  %9613 = fmul fast float %9608, %9611
  %9614 = fmul fast float %9609, %9611
  br label %9615

; <label>:9615                                    ; preds = %9446, %9403
  %9616 = phi float [ %9486, %9446 ], [ 1.000000e+00, %9403 ]
  %9617 = phi float [ %9487, %9446 ], [ 1.000000e+00, %9403 ]
  %9618 = phi float [ %9488, %9446 ], [ 1.000000e+00, %9403 ]
  %9619 = phi float [ %9612, %9446 ], [ 0.000000e+00, %9403 ]
  %9620 = phi float [ %9613, %9446 ], [ 0.000000e+00, %9403 ]
  %9621 = phi float [ %9614, %9446 ], [ 0.000000e+00, %9403 ]
  %9622 = fmul fast float %9619, %7953
  %9623 = fmul fast float %9620, %7955
  %9624 = fmul fast float %9621, %7957
  %9625 = fmul fast float %9616, %9410
  %9626 = call float @dx.op.dot3.f32(i32 55, float %9616, float %9617, float %9618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9627 = call float @dx.op.dot3.f32(i32 55, float %9622, float %9623, float %9624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9628 = select i1 %269, float %9626, float %9616
  %9629 = select i1 %269, float %9626, float %9617
  %9630 = select i1 %269, float 1.000000e+00, float %9618
  %9631 = select i1 %269, float %9627, float %9622
  %9632 = select i1 %269, float 0.000000e+00, float %9623
  %9633 = select i1 %269, float 0.000000e+00, float %9624
  %9634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9635 = extractvalue %dx.types.CBufRet.i32 %9634, 3
  %9636 = and i32 %9635, 3
  %9637 = icmp ne i32 %9636, 0
  %9638 = and i32 %9635, 4
  %9639 = icmp ne i32 %9638, 0
  %9640 = and i1 %9637, %9639
  %9641 = and i1 %269, %9640
  br i1 %9641, label %9642, label %9648

; <label>:9642                                    ; preds = %9615
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 1
  %9645 = fadd fast float %9625, -1.000000e+00
  %9646 = fmul fast float %9644, %9645
  %9647 = fadd fast float %9646, 1.000000e+00
  br label %9648

; <label>:9648                                    ; preds = %9642, %9615
  %9649 = phi float [ %9647, %9642 ], [ %9625, %9615 ]
  %9650 = fadd fast float %9407, %9404
  %9651 = fmul fast float %9628, %9650
  %9652 = fadd fast float %9651, %9631
  %9653 = fadd fast float %9408, %9405
  %9654 = fmul fast float %9629, %9653
  %9655 = fadd fast float %9654, %9632
  %9656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9657 = extractvalue %dx.types.CBufRet.f32 %9656, 0
  br i1 %269, label %9658, label %9673

; <label>:9658                                    ; preds = %9648
  %9659 = fadd fast float %9652, %9655
  %9660 = fmul fast float %9657, %9659
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 3
  %9663 = extractvalue %dx.types.CBufRet.f32 %7961, 1
  %9664 = fsub fast float %7966, %7960
  %9665 = fadd fast float %9664, %7967
  %9666 = fsub fast float %9665, %9663
  %9667 = extractvalue %dx.types.CBufRet.f32 %7961, 2
  %9668 = fmul fast float %9666, %9667
  %9669 = call float @dx.op.unary.f32(i32 7, float %9668)  ; Saturate(value)
  %9670 = fsub fast float %9669, %9662
  %9671 = fmul fast float %9670, %9649
  %9672 = fadd fast float %9671, %9662
  br label %9699

; <label>:9673                                    ; preds = %9648
  %9674 = fadd fast float %9409, %9406
  %9675 = fmul fast float %9630, %9674
  %9676 = fadd fast float %9675, %9633
  %9677 = fmul fast float %9657, %9652
  %9678 = fmul fast float %9657, %9655
  %9679 = fmul fast float %9657, %9676
  %9680 = call float @dx.op.binary.f32(i32 35, float %9678, float %9679)  ; FMax(a,b)
  %9681 = call float @dx.op.binary.f32(i32 35, float %9677, float %9680)  ; FMax(a,b)
  %9682 = call float @dx.op.binary.f32(i32 35, float %7955, float %7957)  ; FMax(a,b)
  %9683 = call float @dx.op.binary.f32(i32 35, float %7953, float %9682)  ; FMax(a,b)
  %9684 = call float @dx.op.binary.f32(i32 35, float %9681, float %9683)  ; FMax(a,b)
  %9685 = fcmp fast ugt float %9684, 0x3F10000000000000
  br i1 %9685, label %9687, label %9686

; <label>:9686                                    ; preds = %9673
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9687

; <label>:9687                                    ; preds = %9686, %9673
  %9688 = add i32 %56, 356
  %9689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9688, i32 undef)  ; BufferLoad(srv,index,wot)
  %9690 = extractvalue %dx.types.ResRet.i32 %9689, 0
  %9691 = and i32 %9690, 32
  %9692 = icmp eq i32 %9691, 0
  br i1 %9692, label %9699, label %9693

; <label>:9693                                    ; preds = %9687
  %9694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9695 = extractvalue %dx.types.CBufRet.f32 %9694, 0
  %9696 = fmul fast float %9695, 0x3FE99999A0000000
  %9697 = fadd fast float %9695, %9677
  %9698 = fadd fast float %9696, %9679
  br label %9699

; <label>:9699                                    ; preds = %9693, %9687, %9658
  %9700 = phi float [ 1.000000e+00, %9658 ], [ %7955, %9693 ], [ %7955, %9687 ]
  %9701 = phi float [ 1.000000e+00, %9658 ], [ %7957, %9693 ], [ %7957, %9687 ]
  %9702 = phi float [ %9660, %9658 ], [ %9697, %9693 ], [ %9677, %9687 ]
  %9703 = phi float [ %9672, %9658 ], [ %9678, %9693 ], [ %9678, %9687 ]
  %9704 = phi float [ 1.000000e+00, %9658 ], [ %9698, %9693 ], [ %9679, %9687 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9705 = call float @dx.op.binary.f32(i32 36, float %9702, float 3.225500e+04)  ; FMin(a,b)
  %9706 = call float @dx.op.binary.f32(i32 36, float %9703, float 3.225500e+04)  ; FMin(a,b)
  %9707 = call float @dx.op.binary.f32(i32 36, float %9704, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9705)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9706)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9707)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9708 = call float @dx.op.binary.f32(i32 36, float %7953, float 3.225500e+04)  ; FMin(a,b)
  %9709 = call float @dx.op.binary.f32(i32 36, float %9700, float 3.225500e+04)  ; FMin(a,b)
  %9710 = call float @dx.op.binary.f32(i32 36, float %9701, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9708)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9709)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9710)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
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

