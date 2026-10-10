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
; shader hash: a445108f265f7de5bfe37d17c4d2fb46
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
  br i1 %4091, label %4641, label %4092

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
  br i1 %4153, label %4606, label %4154

; <label>:4154                                    ; preds = %4092
  br label %4155

; <label>:4155                                    ; preds = %4280, %4154
  %4156 = phi i32 [ %4182, %4280 ], [ %4152, %4154 ]
  %4157 = phi float [ %4281, %4280 ], [ 0.000000e+00, %4154 ]
  %4158 = phi float [ %4282, %4280 ], [ %1347, %4154 ]
  %4159 = phi float [ %4283, %4280 ], [ %4036, %4154 ]
  %4160 = phi float [ %4284, %4280 ], [ %4015, %4154 ]
  %4161 = phi float [ %4285, %4280 ], [ %4008, %4154 ]
  %4162 = phi float [ %4286, %4280 ], [ %4009, %4154 ]
  %4163 = phi float [ %4287, %4280 ], [ %4010, %4154 ]
  %4164 = phi float [ %4288, %4280 ], [ 0.000000e+00, %4154 ]
  %4165 = phi float [ %4289, %4280 ], [ 0.000000e+00, %4154 ]
  %4166 = phi float [ %4290, %4280 ], [ %4058, %4154 ]
  %4167 = phi float [ %4291, %4280 ], [ %4060, %4154 ]
  %4168 = phi float [ %4292, %4280 ], [ %4062, %4154 ]
  %4169 = phi float [ %4293, %4280 ], [ %4088, %4154 ]
  %4170 = phi float [ %4294, %4280 ], [ %4089, %4154 ]
  %4171 = phi float [ %4295, %4280 ], [ %4090, %4154 ]
  %4172 = phi float [ %4296, %4280 ], [ %4013, %4154 ]
  %4173 = phi float [ %4297, %4280 ], [ %4012, %4154 ]
  %4174 = phi float [ %4298, %4280 ], [ 0.000000e+00, %4154 ]
  %4175 = phi float [ %4299, %4280 ], [ %4011, %4154 ]
  %4176 = phi float [ %4300, %4280 ], [ %4043, %4154 ]
  %4177 = phi float [ %4301, %4280 ], [ %4044, %4154 ]
  %4178 = phi float [ %4302, %4280 ], [ %4045, %4154 ]
  %4179 = shl nuw nsw i32 %4156, 2
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = lshr i32 %4181, 16
  %4183 = shl i32 %4181, 8
  %4184 = and i32 %4183, 16776960
  %4185 = or i32 %4184, 48
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = or i32 %4184, 64
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.i32 %4191, 1
  %4194 = or i32 %4184, 80
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4198 = or i32 %4184, 96
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = or i32 %4184, 112
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4207 = or i32 %4184, 128
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = or i32 %4184, 144
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = or i32 %4184, 160
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = extractvalue %dx.types.ResRet.f32 %4220, 1
  %4223 = extractvalue %dx.types.ResRet.f32 %4220, 2
  %4224 = extractvalue %dx.types.ResRet.f32 %4220, 3
  %4225 = or i32 %4184, 192
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = or i32 %4184, 208
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = or i32 %4184, 248
  %4232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4231, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.ResRet.f32 %4232, 1
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4241 = or i32 %4184, 16
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.ResRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.ResRet.f32 %4242, 2
  %4246 = extractvalue %dx.types.ResRet.f32 %4242, 3
  %4247 = call float @dx.op.dot4.f32(i32 56, float %4243, float %4244, float %4245, float %4246, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4248 = or i32 %4184, 32
  %4249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.ResRet.f32 %4249, 2
  %4253 = extractvalue %dx.types.ResRet.f32 %4249, 3
  %4254 = call float @dx.op.dot4.f32(i32 56, float %4250, float %4251, float %4252, float %4253, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4255 = call float @dx.op.unary.f32(i32 27, float %4240)  ; Round_ni(value)
  %4256 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4257 = call float @dx.op.unary.f32(i32 27, float %4247)  ; Round_ni(value)
  %4258 = call float @dx.op.unary.f32(i32 6, float %4257)  ; FAbs(value)
  %4259 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4260 = call float @dx.op.unary.f32(i32 27, float %4259)  ; Round_ni(value)
  %4261 = fadd fast float %4258, %4256
  %4262 = fadd fast float %4261, %4260
  %4263 = fcmp fast oeq float %4262, 0.000000e+00
  %4264 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %4099, float %4100, float %4101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4243, float %4244, float %4245, float %4246, float %4099, float %4100, float %4101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %4102, float %4103, float %4104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4267 = call float @dx.op.dot4.f32(i32 56, float %4243, float %4244, float %4245, float %4246, float %4102, float %4103, float %4104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4268 = fsub fast float %4264, %4240
  %4269 = fsub fast float %4266, %4240
  %4270 = fsub fast float %4265, %4247
  %4271 = fsub fast float %4267, %4247
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4187, float %4188, float %4189, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4275 = fadd fast float %4274, %4272
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4278 = fcmp fast ogt float %4276, %4277
  %4279 = and i1 %4263, %4278
  br i1 %4279, label %4304, label %4280

; <label>:4280                                    ; preds = %4592, %4387, %4304, %4155
  %4281 = phi float [ %4157, %4304 ], [ %4390, %4387 ], [ %4390, %4592 ], [ %4157, %4155 ]
  %4282 = phi float [ %4158, %4304 ], [ %4158, %4387 ], [ %4568, %4592 ], [ %4158, %4155 ]
  %4283 = phi float [ %4159, %4304 ], [ %4159, %4387 ], [ %4567, %4592 ], [ %4159, %4155 ]
  %4284 = phi float [ %4160, %4304 ], [ %4160, %4387 ], [ %4565, %4592 ], [ %4160, %4155 ]
  %4285 = phi float [ %4161, %4304 ], [ %4161, %4387 ], [ %4543, %4592 ], [ %4161, %4155 ]
  %4286 = phi float [ %4162, %4304 ], [ %4162, %4387 ], [ %4544, %4592 ], [ %4162, %4155 ]
  %4287 = phi float [ %4163, %4304 ], [ %4163, %4387 ], [ %4545, %4592 ], [ %4163, %4155 ]
  %4288 = phi float [ %4164, %4304 ], [ %4164, %4387 ], [ %4514, %4592 ], [ %4164, %4155 ]
  %4289 = phi float [ %4165, %4304 ], [ %4165, %4387 ], [ %4512, %4592 ], [ %4165, %4155 ]
  %4290 = phi float [ %4166, %4304 ], [ %4166, %4387 ], [ %4602, %4592 ], [ %4166, %4155 ]
  %4291 = phi float [ %4167, %4304 ], [ %4167, %4387 ], [ %4603, %4592 ], [ %4167, %4155 ]
  %4292 = phi float [ %4168, %4304 ], [ %4168, %4387 ], [ %4604, %4592 ], [ %4168, %4155 ]
  %4293 = phi float [ %4169, %4304 ], [ %4169, %4387 ], [ %4493, %4592 ], [ %4169, %4155 ]
  %4294 = phi float [ %4170, %4304 ], [ %4170, %4387 ], [ %4494, %4592 ], [ %4170, %4155 ]
  %4295 = phi float [ %4171, %4304 ], [ %4171, %4387 ], [ %4495, %4592 ], [ %4171, %4155 ]
  %4296 = phi float [ %4172, %4304 ], [ %4172, %4387 ], [ %4523, %4592 ], [ %4172, %4155 ]
  %4297 = phi float [ %4173, %4304 ], [ %4173, %4387 ], [ %4520, %4592 ], [ %4173, %4155 ]
  %4298 = phi float [ %4174, %4304 ], [ %4174, %4387 ], [ %4517, %4592 ], [ %4174, %4155 ]
  %4299 = phi float [ %4175, %4304 ], [ %4175, %4387 ], [ %4510, %4592 ], [ %4175, %4155 ]
  %4300 = phi float [ %4176, %4304 ], [ %4176, %4387 ], [ %4505, %4592 ], [ %4176, %4155 ]
  %4301 = phi float [ %4177, %4304 ], [ %4177, %4387 ], [ %4506, %4592 ], [ %4177, %4155 ]
  %4302 = phi float [ %4178, %4304 ], [ %4178, %4387 ], [ %4507, %4592 ], [ %4178, %4155 ]
  %4303 = icmp eq i32 %4182, 0
  br i1 %4303, label %4605, label %4155

; <label>:4304                                    ; preds = %4155
  %4305 = extractvalue %dx.types.ResRet.f32 %4186, 3
  %4306 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4307 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4309 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4310 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4311 = extractvalue %dx.types.ResRet.i32 %4191, 3
  %4312 = extractvalue %dx.types.ResRet.i32 %4191, 2
  %4313 = bitcast float %4305 to i32
  %4314 = add i32 %4311, 0
  %4315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4314, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4315, %dx.types.Handle %4316, float %4240, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float %4268, float %4270, float undef, float %4269, float %4271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = fmul fast float %4318, %4310
  %4320 = fadd fast float %4319, %4309
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fmul fast float %4240, %4200
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4247, float %4322)  ; FMad(a,b,c)
  %4324 = fadd fast float %4323, %4308
  %4325 = fmul fast float %4240, %4202
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4203, float %4247, float %4325)  ; FMad(a,b,c)
  %4327 = fadd fast float %4326, %4307
  %4328 = fmul fast float %4268, %4200
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4270, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4268, %4202
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4203, float %4270, float %4330)  ; FMad(a,b,c)
  %4332 = fmul fast float %4269, %4200
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4271, float %4332)  ; FMad(a,b,c)
  %4334 = fmul fast float %4269, %4202
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4203, float %4271, float %4334)  ; FMad(a,b,c)
  %4336 = add i32 %4312, 0
  %4337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4337, %dx.types.Handle %4316, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = and i32 %4313, 1024
  %4341 = icmp ne i32 %4340, 0
  %4342 = fcmp fast ogt float %4339, 0x3FE0101020000000
  %4343 = uitofp i1 %4342 to float
  %4344 = select i1 %4341, float %4343, float %4339
  %4345 = and i32 %4313, 8192
  %4346 = icmp ne i32 %4345, 0
  %4347 = select i1 %4346, float %4306, float 1.000000e+00
  %4348 = fmul fast float %4240, 2.000000e+00
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4351 = fmul fast float %4350, %4233
  %4352 = fsub fast float %4351, %4233
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fmul fast float %4247, 2.000000e+00
  %4355 = fadd fast float %4354, -1.000000e+00
  %4356 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4357 = fmul fast float %4356, %4234
  %4358 = fsub fast float %4357, %4234
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = fmul fast float %4259, %4196
  %4361 = fsub fast float %4360, %4196
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fmul fast float %4321, %4347
  %4364 = fmul fast float %4363, %4318
  %4365 = fmul fast float %4364, %4353
  %4366 = fmul fast float %4365, %4344
  %4367 = fmul fast float %4366, %4359
  %4368 = fmul fast float %4367, %4362
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4371 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4372 = fsub fast float %4276, %4371
  %4373 = fmul fast float %4372, %4370
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4368, %4197
  %4376 = fadd fast float %4368, %4197
  %4377 = fmul fast float %4376, %4206
  %4378 = fsub fast float %4377, %4206
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = and i32 %4313, 128
  %4381 = icmp ne i32 %4380, 0
  %4382 = select i1 %4381, float %4379, float %4375
  %4383 = fmul fast float %4382, %4374
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = fcmp fast ugt float %4383, %4385
  br i1 %4386, label %4387, label %4280

; <label>:4387                                    ; preds = %4304
  %4388 = select i1 %4346, float %4383, float 0.000000e+00
  %4389 = fadd fast float %4388, %4157
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  br i1 %4346, label %4280, label %4391

; <label>:4391                                    ; preds = %4387
  %4392 = and i32 %4313, 4
  %4393 = and i32 %4313, 8
  %4394 = add i32 %4192, 0
  %4395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4394, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4395, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4402 = bitcast float %4218 to i32
  %4403 = and i32 %4402, 255
  %4404 = uitofp i32 %4403 to float
  %4405 = lshr i32 %4402, 8
  %4406 = and i32 %4405, 255
  %4407 = uitofp i32 %4406 to float
  %4408 = fmul fast float %4401, %4404
  %4409 = fadd fast float %4408, %4407
  %4410 = fmul fast float %4409, 0x3F70101000000000
  %4411 = add i32 %4193, 0
  %4412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4411, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4412, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.ResRet.f32 %4413, 3
  %4418 = bitcast float %4212 to i32
  %4419 = and i32 %4418, 255
  %4420 = uitofp i32 %4419 to float
  %4421 = lshr i32 %4418, 8
  %4422 = and i32 %4421, 255
  %4423 = uitofp i32 %4422 to float
  %4424 = lshr i32 %4418, 16
  %4425 = and i32 %4424, 255
  %4426 = uitofp i32 %4425 to float
  %4427 = fmul fast float %4426, 0x3F70101000000000
  %4428 = fmul fast float %4414, %4420
  %4429 = fadd fast float %4428, %4423
  %4430 = fmul fast float %4429, 0x3F70101000000000
  %4431 = fadd fast float %4415, -5.000000e-01
  %4432 = fadd fast float %4417, -5.000000e-01
  %4433 = fmul fast float %4431, %4427
  %4434 = fmul fast float %4432, %4427
  %4435 = fadd fast float %4433, 5.000000e-01
  %4436 = fadd fast float %4434, 5.000000e-01
  %4437 = fmul fast float %4398, %4221
  %4438 = fmul fast float %4399, %4222
  %4439 = fmul fast float %4400, %4223
  %4440 = fmul fast float %4435, 2.000000e+00
  %4441 = fadd fast float %4440, -1.000000e+00
  %4442 = fmul fast float %4436, 2.000000e+00
  %4443 = fadd fast float %4442, -1.000000e+00
  %4444 = fadd fast float %4441, %4443
  %4445 = fmul fast float %4444, 5.000000e-01
  %4446 = fsub fast float %4441, %4443
  %4447 = fmul fast float %4446, 5.000000e-01
  %4448 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = call float @dx.op.unary.f32(i32 6, float %4447)  ; FAbs(value)
  %4451 = fsub fast float %4449, %4450
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4447, float %4451, float %4445, float %4447, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = call float @dx.op.unary.f32(i32 25, float %4452)  ; Rsqrt(value)
  %4454 = fmul fast float %4445, %4453
  %4455 = fmul fast float %4447, %4453
  %4456 = fmul fast float %4453, %4451
  %4457 = fmul fast float %4456, %4187
  %4458 = fmul fast float %4456, %4188
  %4459 = fmul fast float %4456, %4189
  %4460 = fmul fast float %4454, %4209
  %4461 = fmul fast float %4454, %4210
  %4462 = fmul fast float %4454, %4211
  %4463 = fadd fast float %4460, %4457
  %4464 = fadd fast float %4461, %4458
  %4465 = fadd fast float %4462, %4459
  %4466 = fmul fast float %4455, %4215
  %4467 = fmul fast float %4455, %4216
  %4468 = fmul fast float %4455, %4217
  %4469 = fadd fast float %4463, %4466
  %4470 = fadd fast float %4464, %4467
  %4471 = fadd fast float %4465, %4468
  %4472 = call float @dx.op.dot3.f32(i32 55, float %4469, float %4470, float %4471, float %4469, float %4470, float %4471)  ; Dot3(ax,ay,az,bx,by,bz)
  %4473 = call float @dx.op.unary.f32(i32 25, float %4472)  ; Rsqrt(value)
  %4474 = fmul fast float %4469, %4473
  %4475 = fmul fast float %4470, %4473
  %4476 = fmul fast float %4471, %4473
  %4477 = icmp ne i32 %4393, 0
  %4478 = select i1 %4477, float 1.000000e+00, float 0.000000e+00
  %4479 = fmul fast float %4383, %4478
  %4480 = and i32 %4313, 1
  %4481 = icmp eq i32 %4480, 0
  br i1 %4481, label %4482, label %4486

; <label>:4482                                    ; preds = %4391
  %4483 = fsub fast float %4474, %4169
  %4484 = fsub fast float %4475, %4170
  %4485 = fsub fast float %4476, %4171
  br label %4486

; <label>:4486                                    ; preds = %4482, %4391
  %4487 = phi float [ %4483, %4482 ], [ %4474, %4391 ]
  %4488 = phi float [ %4484, %4482 ], [ %4475, %4391 ]
  %4489 = phi float [ %4485, %4482 ], [ %4476, %4391 ]
  %4490 = fmul float %4489, %4479
  %4491 = fmul float %4488, %4479
  %4492 = fmul float %4487, %4479
  %4493 = fadd fast float %4492, %4169
  %4494 = fadd fast float %4491, %4170
  %4495 = fadd fast float %4490, %4171
  %4496 = icmp ne i32 %4392, 0
  %4497 = select i1 %4496, float 1.000000e+00, float 0.000000e+00
  %4498 = fmul fast float %4383, %4497
  %4499 = fsub fast float %4437, %4176
  %4500 = fsub fast float %4438, %4177
  %4501 = fsub fast float %4439, %4178
  %4502 = fmul fast float %4499, %4498
  %4503 = fmul fast float %4500, %4498
  %4504 = fmul fast float %4501, %4498
  %4505 = fadd fast float %4502, %4176
  %4506 = fadd fast float %4503, %4177
  %4507 = fadd fast float %4504, %4178
  %4508 = fsub fast float %4410, %4175
  %4509 = fmul fast float %4508, %4498
  %4510 = fadd fast float %4509, %4175
  %4511 = fmul fast float %4498, %4165
  %4512 = fsub fast float %4165, %4511
  %4513 = fmul fast float %4498, %4164
  %4514 = fsub fast float %4164, %4513
  %4515 = bitcast float %4230 to i32
  %4516 = fadd fast float %4383, %4174
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fsub fast float %4430, %4173
  %4519 = fmul fast float %4518, %4479
  %4520 = fadd fast float %4519, %4173
  %4521 = fsub fast float %4416, %4172
  %4522 = fmul fast float %4521, %4479
  %4523 = fadd fast float %4522, %4172
  br i1 %4481, label %4532, label %4524

; <label>:4524                                    ; preds = %4486
  %4525 = and i32 %4313, 32768
  %4526 = icmp eq i32 %4525, 0
  br i1 %4526, label %4542, label %4527

; <label>:4527                                    ; preds = %4524
  %4528 = fmul fast float %4479, 1.270000e+02
  %4529 = fadd fast float %4528, %4161
  %4530 = fadd fast float %4528, %4162
  %4531 = fadd fast float %4528, %4163
  br label %4542

; <label>:4532                                    ; preds = %4486
  %4533 = fsub fast float 1.270000e+02, %4161
  %4534 = fsub fast float 1.270000e+02, %4162
  %4535 = fsub fast float 1.270000e+02, %4163
  %4536 = fmul fast float %4479, %4533
  %4537 = fmul fast float %4479, %4534
  %4538 = fmul fast float %4479, %4535
  %4539 = fadd fast float %4536, %4161
  %4540 = fadd fast float %4537, %4162
  %4541 = fadd fast float %4538, %4163
  br label %4542

; <label>:4542                                    ; preds = %4532, %4527, %4524
  %4543 = phi float [ %4529, %4527 ], [ %4161, %4524 ], [ %4539, %4532 ]
  %4544 = phi float [ %4530, %4527 ], [ %4162, %4524 ], [ %4540, %4532 ]
  %4545 = phi float [ %4531, %4527 ], [ %4163, %4524 ], [ %4541, %4532 ]
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4437, float %4438, float %4439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4550 = fmul fast float %4549, %4546
  %4551 = fadd fast float %4550, %4548
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = bitcast float %4224 to i32
  %4554 = and i32 %4553, 65535
  %4555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4554)  ; LegacyF16ToF32(value)
  %4556 = lshr i32 %4553, 16
  %4557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4556)  ; LegacyF16ToF32(value)
  %4558 = fcmp fast oge float %4555, 0.000000e+00
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = select i1 %4558, float %4555, float %4560
  %4562 = fadd fast float %4561, %4557
  %4563 = fsub fast float %4552, %4160
  %4564 = fmul fast float %4563, %4383
  %4565 = fadd fast float %4564, %4160
  %4566 = fmul fast float %4562, %4383
  %4567 = call float @dx.op.binary.f32(i32 35, float %4159, float %4566)  ; FMax(a,b)
  %4568 = call float @dx.op.binary.f32(i32 35, float %4158, float %4383)  ; FMax(a,b)
  %4569 = and i32 %4313, 16
  %4570 = icmp eq i32 %4569, 0
  br i1 %4570, label %4592, label %4571

; <label>:4571                                    ; preds = %4542
  %4572 = add i32 %4227, 0
  %4573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4572, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4573, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = and i32 %4515, 65535
  %4579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4578)  ; LegacyF16ToF32(value)
  %4580 = fmul fast float %4575, %4221
  %4581 = fmul fast float %4576, %4222
  %4582 = fmul fast float %4577, %4223
  %4583 = and i32 %4313, 16384
  %4584 = icmp ne i32 %4583, 0
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = select i1 %4584, float %4586, float 1.000000e+00
  %4588 = fmul fast float %4587, %4579
  %4589 = fmul fast float %4580, %4588
  %4590 = fmul fast float %4581, %4588
  %4591 = fmul fast float %4582, %4588
  br label %4592

; <label>:4592                                    ; preds = %4571, %4542
  %4593 = phi float [ %4589, %4571 ], [ 0.000000e+00, %4542 ]
  %4594 = phi float [ %4590, %4571 ], [ 0.000000e+00, %4542 ]
  %4595 = phi float [ %4591, %4571 ], [ 0.000000e+00, %4542 ]
  %4596 = fsub fast float %4593, %4166
  %4597 = fsub fast float %4594, %4167
  %4598 = fsub fast float %4595, %4168
  %4599 = fmul fast float %4596, %4383
  %4600 = fmul fast float %4597, %4383
  %4601 = fmul fast float %4598, %4383
  %4602 = fadd fast float %4599, %4166
  %4603 = fadd fast float %4600, %4167
  %4604 = fadd fast float %4601, %4168
  br label %4280

; <label>:4605                                    ; preds = %4280
  br label %4606

; <label>:4606                                    ; preds = %4605, %4092
  %4607 = phi float [ 0.000000e+00, %4092 ], [ %4281, %4605 ]
  %4608 = phi float [ %1347, %4092 ], [ %4282, %4605 ]
  %4609 = phi float [ %4036, %4092 ], [ %4283, %4605 ]
  %4610 = phi float [ %4015, %4092 ], [ %4284, %4605 ]
  %4611 = phi float [ %4008, %4092 ], [ %4285, %4605 ]
  %4612 = phi float [ %4009, %4092 ], [ %4286, %4605 ]
  %4613 = phi float [ %4010, %4092 ], [ %4287, %4605 ]
  %4614 = phi float [ 0.000000e+00, %4092 ], [ %4288, %4605 ]
  %4615 = phi float [ 0.000000e+00, %4092 ], [ %4289, %4605 ]
  %4616 = phi float [ %4058, %4092 ], [ %4290, %4605 ]
  %4617 = phi float [ %4060, %4092 ], [ %4291, %4605 ]
  %4618 = phi float [ %4062, %4092 ], [ %4292, %4605 ]
  %4619 = phi float [ %4088, %4092 ], [ %4293, %4605 ]
  %4620 = phi float [ %4089, %4092 ], [ %4294, %4605 ]
  %4621 = phi float [ %4090, %4092 ], [ %4295, %4605 ]
  %4622 = phi float [ %4013, %4092 ], [ %4296, %4605 ]
  %4623 = phi float [ %4012, %4092 ], [ %4297, %4605 ]
  %4624 = phi float [ 0.000000e+00, %4092 ], [ %4298, %4605 ]
  %4625 = phi float [ %4011, %4092 ], [ %4299, %4605 ]
  %4626 = phi float [ %4043, %4092 ], [ %4300, %4605 ]
  %4627 = phi float [ %4044, %4092 ], [ %4301, %4605 ]
  %4628 = phi float [ %4045, %4092 ], [ %4302, %4605 ]
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4620, float %4621, float %4619, float %4620, float %4621)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 25, float %4629)  ; Rsqrt(value)
  %4631 = fmul fast float %4630, %4619
  %4632 = fmul fast float %4630, %4620
  %4633 = fmul fast float %4630, %4621
  %4634 = fadd fast float %4624, %1347
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4632, float %4633, float %4631, float %4632, float %4633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 25, float %4636)  ; Rsqrt(value)
  %4638 = fmul fast float %4637, %4631
  %4639 = fmul fast float %4637, %4632
  %4640 = fmul fast float %4637, %4633
  br label %4641

; <label>:4641                                    ; preds = %4606, %3999
  %4642 = phi float [ %4638, %4606 ], [ %4088, %3999 ]
  %4643 = phi float [ %4639, %4606 ], [ %4089, %3999 ]
  %4644 = phi float [ %4640, %4606 ], [ %4090, %3999 ]
  %4645 = phi float [ %4626, %4606 ], [ %4043, %3999 ]
  %4646 = phi float [ %4627, %4606 ], [ %4044, %3999 ]
  %4647 = phi float [ %4628, %4606 ], [ %4045, %3999 ]
  %4648 = phi float [ %4616, %4606 ], [ %4058, %3999 ]
  %4649 = phi float [ %4617, %4606 ], [ %4060, %3999 ]
  %4650 = phi float [ %4618, %4606 ], [ %4062, %3999 ]
  %4651 = phi float [ %4611, %4606 ], [ %4008, %3999 ]
  %4652 = phi float [ %4612, %4606 ], [ %4009, %3999 ]
  %4653 = phi float [ %4613, %4606 ], [ %4010, %3999 ]
  %4654 = phi float [ %4625, %4606 ], [ %4011, %3999 ]
  %4655 = phi float [ %4635, %4606 ], [ %1347, %3999 ]
  %4656 = phi float [ %4623, %4606 ], [ %4012, %3999 ]
  %4657 = phi float [ %4622, %4606 ], [ %4013, %3999 ]
  %4658 = phi float [ %4615, %4606 ], [ 0.000000e+00, %3999 ]
  %4659 = phi float [ %4614, %4606 ], [ 0.000000e+00, %3999 ]
  %4660 = phi float [ %4607, %4606 ], [ 0.000000e+00, %3999 ]
  %4661 = phi float [ %4609, %4606 ], [ %4036, %3999 ]
  %4662 = phi float [ %4608, %4606 ], [ %1347, %3999 ]
  %4663 = phi float [ %4610, %4606 ], [ %4015, %3999 ]
  %4664 = fadd fast float %4654, 0xBFB99999A0000000
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fmul fast float %4665, 0x3FF1C71C80000000
  %4667 = call float @dx.op.binary.f32(i32 36, float %4654, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4668 = fsub fast float 1.000000e+00, %4666
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fmul fast float %4669, %4645
  %4671 = fmul fast float %4669, %4646
  %4672 = fmul fast float %4669, %4647
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4676 = fmul fast float %4666, %4645
  %4677 = fmul fast float %4666, %4646
  %4678 = fmul fast float %4666, %4647
  %4679 = fadd fast float %4676, %4667
  %4680 = fadd fast float %4677, %4667
  %4681 = fadd fast float %4678, %4667
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4686 = call float @dx.op.binary.f32(i32 36, float %4651, float 1.270000e+02)  ; FMin(a,b)
  %4687 = call float @dx.op.binary.f32(i32 36, float %4652, float 1.270000e+02)  ; FMin(a,b)
  %4688 = call float @dx.op.binary.f32(i32 36, float %4653, float 1.270000e+02)  ; FMin(a,b)
  %4689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.i32 %4689, 3
  %4691 = and i32 %4690, 8
  %4692 = icmp ne i32 %4691, 0
  %4693 = call float @dx.op.binary.f32(i32 35, float %4673, float %4645)  ; FMax(a,b)
  %4694 = call float @dx.op.binary.f32(i32 35, float %4674, float %4645)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 35, float %4675, float %4645)  ; FMax(a,b)
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4674, float %4675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = select i1 %269, float %4645, float %4673
  %4698 = select i1 %269, float %4696, float %4674
  %4699 = select i1 %269, float 1.000000e+00, float %4675
  %4700 = select i1 %4692, float %4693, float %4697
  %4701 = select i1 %4692, float %4694, float %4698
  %4702 = select i1 %4692, float %4695, float %4699
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4707 = fadd fast float %4704, %197
  %4708 = fadd fast float %4705, %198
  %4709 = fadd fast float %4706, %199
  %4710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.f32 %4710, 0
  %4712 = extractvalue %dx.types.CBufRet.f32 %4710, 1
  %4713 = fsub fast float %4707, %4711
  %4714 = fsub fast float %4708, %4712
  %4715 = fmul fast float %4713, %4713
  %4716 = fmul fast float %4714, %4714
  %4717 = fadd fast float %4715, %4716
  %4718 = call float @dx.op.unary.f32(i32 24, float %4717)  ; Sqrt(value)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4710, 2
  %4720 = fcmp fast olt float %4718, %4719
  br i1 %4720, label %4721, label %4788

; <label>:4721                                    ; preds = %4641
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 0
  %4728 = extractvalue %dx.types.CBufRet.f32 %4722, 1
  %4729 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4730 = extractvalue %dx.types.CBufRet.f32 %4726, 1
  %4731 = extractvalue %dx.types.CBufRet.f32 %4722, 3
  %4732 = extractvalue %dx.types.CBufRet.f32 %4724, 3
  %4733 = extractvalue %dx.types.CBufRet.f32 %4726, 3
  %4734 = fadd fast float %4731, %4707
  %4735 = fadd fast float %4732, %4708
  %4736 = fadd fast float %4733, %4709
  %4737 = fmul fast float %4734, %4723
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4725, float %4737)  ; FMad(a,b,c)
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4727, float %4738)  ; FMad(a,b,c)
  %4740 = fmul fast float %4734, %4728
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4729, float %4740)  ; FMad(a,b,c)
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4730, float %4741)  ; FMad(a,b,c)
  %4743 = fsub fast float %4739, %4731
  %4744 = fsub fast float %4742, %4732
  %4745 = fsub fast float %4743, %4711
  %4746 = fadd fast float %4745, %4719
  %4747 = fsub fast float %4744, %4712
  %4748 = fadd fast float %4747, %4719
  %4749 = extractvalue %dx.types.CBufRet.f32 %4710, 3
  %4750 = fmul fast float %4746, %4749
  %4751 = fmul fast float %4748, %4749
  %4752 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4754 = fsub fast float 1.000000e+00, %4752
  %4755 = fsub fast float 1.000000e+00, %4753
  %4756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4754, float %4755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = fcmp fast ugt float %4757, 0.000000e+00
  br i1 %4758, label %4759, label %5062

; <label>:4759                                    ; preds = %4721
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 2
  %4762 = fmul fast float %4761, %4757
  %4763 = extractvalue %dx.types.CBufRet.f32 %4760, 3
  %4764 = fadd fast float %4763, %4762
  %4765 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4766 = fadd fast float %4764, %4733
  %4767 = fmul fast float %4739, %4727
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4742, float %4730, float %4767)  ; FMad(a,b,c)
  %4769 = call float @dx.op.tertiary.f32(i32 46, float %4766, float %4765, float %4768)  ; FMad(a,b,c)
  %4770 = fsub fast float %4769, %4733
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 2
  %4773 = fsub fast float %4770, %4772
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4754, float %4755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4754, float %4755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.ResRet.f32 %4778, 1
  %4781 = extractvalue %dx.types.ResRet.f32 %4778, 2
  %4782 = fadd fast float %4779, %4775
  %4783 = fmul fast float %4782, 0x3F847AE140000000
  %4784 = fadd fast float %4780, %4776
  %4785 = fmul fast float %4784, 0x3F847AE140000000
  %4786 = fadd fast float %4781, %4777
  %4787 = fmul fast float %4786, 0x3F847AE140000000
  br label %5062

; <label>:4788                                    ; preds = %4641
  %4789 = and i32 %248, 1
  %4790 = icmp eq i32 %4789, 0
  br i1 %4790, label %5062, label %4791

; <label>:4791                                    ; preds = %4788
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4799 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4802 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4803 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4804 = fadd fast float %4801, %4707
  %4805 = fadd fast float %4802, %4708
  %4806 = fadd fast float %4803, %4709
  %4807 = fmul fast float %4804, %4793
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4805, float %4795, float %4807)  ; FMad(a,b,c)
  %4809 = call float @dx.op.tertiary.f32(i32 46, float %4806, float %4797, float %4808)  ; FMad(a,b,c)
  %4810 = fmul fast float %4804, %4798
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4805, float %4799, float %4810)  ; FMad(a,b,c)
  %4812 = call float @dx.op.tertiary.f32(i32 46, float %4806, float %4800, float %4811)  ; FMad(a,b,c)
  %4813 = fsub fast float %4809, %4801
  %4814 = fsub fast float %4812, %4802
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.i32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.i32 %4822, 1
  %4825 = udiv i32 %4824, %4823
  %4826 = fsub fast float %4813, %4816
  %4827 = fsub fast float %4814, %4817
  %4828 = call float @dx.op.binary.f32(i32 35, float %4826, float 0.000000e+00)  ; FMax(a,b)
  %4829 = call float @dx.op.binary.f32(i32 35, float %4827, float 0.000000e+00)  ; FMax(a,b)
  %4830 = call float @dx.op.binary.f32(i32 36, float %4828, float %4818)  ; FMin(a,b)
  %4831 = call float @dx.op.binary.f32(i32 36, float %4829, float %4819)  ; FMin(a,b)
  %4832 = add i32 %4823, -1
  %4833 = add i32 %4825, -1
  %4834 = fmul fast float %4830, %4821
  %4835 = fmul fast float %4831, %4821
  %4836 = fptoui float %4834 to i32
  %4837 = fptoui float %4835 to i32
  %4838 = call i32 @dx.op.binary.i32(i32 40, i32 %4836, i32 %4832)  ; UMin(a,b)
  %4839 = call i32 @dx.op.binary.i32(i32 40, i32 %4837, i32 %4833)  ; UMin(a,b)
  %4840 = mul i32 %4839, %4823
  %4841 = add i32 %4840, %4838
  %4842 = shl i32 %4841, 2
  %4843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4842, i32 undef)  ; BufferLoad(srv,index,wot)
  %4844 = extractvalue %dx.types.ResRet.i32 %4843, 0
  %4845 = icmp eq i32 %4844, -1
  br i1 %4845, label %5062, label %4846

; <label>:4846                                    ; preds = %4791
  %4847 = mul i32 %4844, 148
  %4848 = add i32 %4847, 4
  %4849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4848, i32 undef)  ; BufferLoad(srv,index,wot)
  %4850 = extractvalue %dx.types.ResRet.f32 %4849, 0
  %4851 = add i32 %4847, 8
  %4852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4851, i32 undef)  ; BufferLoad(srv,index,wot)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = add i32 %4847, 36
  %4855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4854, i32 undef)  ; BufferLoad(srv,index,wot)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = add i32 %4847, 60
  %4858 = add i32 %4847, 92
  %4859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4858, i32 undef)  ; BufferLoad(srv,index,wot)
  %4860 = extractvalue %dx.types.ResRet.i32 %4859, 0
  %4861 = add i32 %4847, 116
  %4862 = fsub fast float %4813, %4850
  %4863 = fsub fast float %4814, %4853
  %4864 = fmul fast float %4821, %4862
  %4865 = fmul fast float %4821, %4863
  %4866 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4871 = call float @dx.op.unary.f32(i32 83, float %4866)  ; DerivCoarseX(value)
  %4872 = call float @dx.op.unary.f32(i32 83, float %4868)  ; DerivCoarseX(value)
  %4873 = call float @dx.op.unary.f32(i32 84, float %4866)  ; DerivCoarseY(value)
  %4874 = call float @dx.op.unary.f32(i32 84, float %4868)  ; DerivCoarseY(value)
  %4875 = fmul fast float %4871, %4870
  %4876 = fmul fast float %4872, %4870
  %4877 = fmul fast float %4873, %4870
  %4878 = fmul fast float %4874, %4870
  %4879 = call float @dx.op.dot2.f32(i32 54, float %4877, float %4878, float %4877, float %4878)  ; Dot2(ax,ay,bx,by)
  %4880 = call float @dx.op.dot2.f32(i32 54, float %4875, float %4876, float %4875, float %4876)  ; Dot2(ax,ay,bx,by)
  %4881 = call float @dx.op.binary.f32(i32 35, float %4880, float %4879)  ; FMax(a,b)
  %4882 = call float @dx.op.unary.f32(i32 23, float %4881)  ; Log(value)
  %4883 = fmul fast float %4882, 5.000000e-01
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4886 = fadd fast float %4885, %4883
  %4887 = call float @dx.op.binary.f32(i32 35, float %4886, float 0.000000e+00)  ; FMax(a,b)
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 3
  %4890 = fadd fast float %4889, %4887
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4893 = fadd fast float %4890, %4892
  %4894 = add i32 %4860, 0
  %4895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4894, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4896 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4895, i32 0)  ; GetDimensions(handle,mipLevel)
  %4897 = extractvalue %dx.types.Dimensions %4896, 0
  %4898 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4897)  ; FirstbitLo(value)
  %4899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.i32 %4899, 1
  %4901 = sub nsw i32 %4900, %4898
  %4902 = sitofp i32 %4901 to float
  %4903 = fsub fast float %4893, %4902
  %4904 = call float @dx.op.binary.f32(i32 35, float %4903, float 0.000000e+00)  ; FMax(a,b)
  %4905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4895, %dx.types.Handle %48, float %4866, float %4868, float %4856, float undef, i32 0, i32 0, i32 undef, float %4904)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4906 = extractvalue %dx.types.ResRet.f32 %4905, 0
  %4907 = fcmp ule float %4906, 0x3FE0101020000000
  %4908 = extractvalue %dx.types.CBufRet.i32 %4899, 0
  %4909 = and i32 %4908, 128
  %4910 = icmp ne i32 %4909, 0
  %4911 = and i1 %4907, %4910
  br i1 %4911, label %5062, label %4912

; <label>:4912                                    ; preds = %4846
  %4913 = add i32 %4847, 20
  %4914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4913, i32 undef)  ; BufferLoad(srv,index,wot)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 0
  %4916 = add i32 %4847, 24
  %4917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4916, i32 undef)  ; BufferLoad(srv,index,wot)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = add i32 %4847, 40
  %4920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4919, i32 undef)  ; BufferLoad(srv,index,wot)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 0
  %4922 = add i32 %4847, 96
  %4923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4922, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.i32 %4923, 0
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 2
  %4927 = fmul fast float %4926, %4866
  %4928 = fmul fast float %4926, %4868
  %4929 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %4930 = fadd fast float %4927, %4929
  %4931 = fadd fast float %4928, %4929
  %4932 = add i32 %4924, 0
  %4933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4934 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4933, i32 0)  ; GetDimensions(handle,mipLevel)
  %4935 = extractvalue %dx.types.Dimensions %4934, 0
  %4936 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4935)  ; FirstbitLo(value)
  %4937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.i32 %4937, 1
  %4939 = sub nsw i32 %4938, %4936
  %4940 = sitofp i32 %4939 to float
  %4941 = fsub fast float %4890, %4940
  %4942 = call float @dx.op.binary.f32(i32 35, float %4941, float 0.000000e+00)  ; FMax(a,b)
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4933, %dx.types.Handle %48, float %4930, float %4931, float %4921, float undef, i32 0, i32 0, i32 undef, float %4942)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = fmul fast float %4944, %4915
  %4946 = fadd fast float %4945, %4918
  %4947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4948 = extractvalue %dx.types.CBufRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.CBufRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.CBufRet.f32 %4947, 2
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 3
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 3
  %4955 = extractvalue %dx.types.CBufRet.f32 %4947, 3
  %4956 = fadd fast float %4952, %4813
  %4957 = fadd fast float %4954, %4814
  %4958 = fadd fast float %4946, %4955
  %4959 = fmul fast float %4956, %4948
  %4960 = call float @dx.op.tertiary.f32(i32 46, float %4957, float %4949, float %4959)  ; FMad(a,b,c)
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4950, float %4960)  ; FMad(a,b,c)
  %4962 = fsub fast float %4961, %4955
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4965 = fsub fast float %4962, %4964
  %4966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.i32 %4966, 0
  %4968 = call i32 @dx.op.binary.i32(i32 40, i32 %4844, i32 %4967)  ; UMin(a,b)
  %4969 = mul i32 %4968, 36
  %4970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4969, i32 undef)  ; BufferLoad(srv,index,wot)
  %4971 = extractvalue %dx.types.ResRet.i32 %4970, 0
  %4972 = add i32 %4969, 4
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4975 = fmul fast float %4974, %4866
  %4976 = fmul fast float %4974, %4868
  %4977 = extractvalue %dx.types.CBufRet.f32 %4973, 1
  %4978 = fadd fast float %4975, %4977
  %4979 = fadd fast float %4976, %4977
  %4980 = icmp eq i32 %4971, 0
  br i1 %4980, label %5049, label %4981

; <label>:4981                                    ; preds = %4912
  br label %4982

; <label>:4982                                    ; preds = %5039, %4981
  %4983 = phi float [ %5040, %5039 ], [ 0.000000e+00, %4981 ]
  %4984 = phi float [ %5041, %5039 ], [ 0.000000e+00, %4981 ]
  %4985 = phi float [ %5042, %5039 ], [ 0.000000e+00, %4981 ]
  %4986 = phi float [ %5043, %5039 ], [ 0.000000e+00, %4981 ]
  %4987 = phi float [ %5044, %5039 ], [ 0.000000e+00, %4981 ]
  %4988 = phi float [ %5045, %5039 ], [ 0.000000e+00, %4981 ]
  %4989 = phi i32 [ %5046, %5039 ], [ 0, %4981 ]
  %4990 = shl i32 %4989, 2
  %4991 = add i32 %4857, %4990
  %4992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4991, i32 undef)  ; BufferLoad(srv,index,wot)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = add i32 %4861, %4990
  %4995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4994, i32 undef)  ; BufferLoad(srv,index,wot)
  %4996 = extractvalue %dx.types.ResRet.i32 %4995, 0
  %4997 = add i32 %4996, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4997, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4998, i32 0)  ; GetDimensions(handle,mipLevel)
  %5000 = extractvalue %dx.types.Dimensions %4999, 0
  %5001 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5000)  ; FirstbitLo(value)
  %5002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.i32 %5002, 1
  %5004 = sub nsw i32 %5003, %5001
  %5005 = sitofp i32 %5004 to float
  %5006 = fsub fast float %4890, %5005
  %5007 = call float @dx.op.binary.f32(i32 35, float %5006, float 0.000000e+00)  ; FMax(a,b)
  %5008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4998, %dx.types.Handle %48, float %4978, float %4979, float %4993, float undef, i32 0, i32 0, i32 undef, float %5007)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 0
  %5010 = fcmp fast ogt float %5009, 0.000000e+00
  br i1 %5010, label %5011, label %5039

; <label>:5011                                    ; preds = %4982
  %5012 = add i32 %4972, %4990
  %5013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5012, i32 undef)  ; BufferLoad(srv,index,wot)
  %5014 = extractvalue %dx.types.ResRet.i32 %5013, 0
  %5015 = and i32 %5014, 32767
  %5016 = mul nuw nsw i32 %5015, 928
  %5017 = add nuw nsw i32 %5016, 48
  %5018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5017, i32 undef)  ; BufferLoad(srv,index,wot)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.ResRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.ResRet.f32 %5018, 2
  %5022 = add nuw nsw i32 %5016, 60
  %5023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5022, i32 undef)  ; BufferLoad(srv,index,wot)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5027 = fmul fast float %5019, %5009
  %5028 = fmul fast float %5020, %5009
  %5029 = fmul fast float %5021, %5009
  %5030 = fadd fast float %5027, %4983
  %5031 = fadd fast float %5028, %4984
  %5032 = fadd fast float %5029, %4985
  %5033 = fmul fast float %5024, %5009
  %5034 = fmul fast float %5025, %5009
  %5035 = fmul fast float %5026, %5009
  %5036 = fadd fast float %5033, %4986
  %5037 = fadd fast float %5034, %4987
  %5038 = fadd fast float %5035, %4988
  br label %5039

; <label>:5039                                    ; preds = %5011, %4982
  %5040 = phi float [ %5030, %5011 ], [ %4983, %4982 ]
  %5041 = phi float [ %5031, %5011 ], [ %4984, %4982 ]
  %5042 = phi float [ %5032, %5011 ], [ %4985, %4982 ]
  %5043 = phi float [ %5036, %5011 ], [ %4986, %4982 ]
  %5044 = phi float [ %5037, %5011 ], [ %4987, %4982 ]
  %5045 = phi float [ %5038, %5011 ], [ %4988, %4982 ]
  %5046 = add nuw i32 %4989, 1
  %5047 = icmp eq i32 %5046, %4971
  br i1 %5047, label %5048, label %4982

; <label>:5048                                    ; preds = %5039
  br label %5049

; <label>:5049                                    ; preds = %5048, %4912
  %5050 = phi float [ 0.000000e+00, %4912 ], [ %5040, %5048 ]
  %5051 = phi float [ 0.000000e+00, %4912 ], [ %5041, %5048 ]
  %5052 = phi float [ 0.000000e+00, %4912 ], [ %5042, %5048 ]
  %5053 = phi float [ 0.000000e+00, %4912 ], [ %5043, %5048 ]
  %5054 = phi float [ 0.000000e+00, %4912 ], [ %5044, %5048 ]
  %5055 = phi float [ 0.000000e+00, %4912 ], [ %5045, %5048 ]
  %5056 = fadd fast float %5053, %5050
  %5057 = fmul fast float %5056, 0x3F847AE140000000
  %5058 = fadd fast float %5054, %5051
  %5059 = fmul fast float %5058, 0x3F847AE140000000
  %5060 = fadd fast float %5055, %5052
  %5061 = fmul fast float %5060, 0x3F847AE140000000
  br label %5062

; <label>:5062                                    ; preds = %5049, %4846, %4791, %4788, %4759, %4721
  %5063 = phi float [ %4773, %4759 ], [ -1.310720e+05, %4721 ], [ %4965, %5049 ], [ -1.310720e+05, %4791 ], [ -1.310720e+05, %4846 ], [ -1.310720e+05, %4788 ]
  %5064 = phi float [ %4783, %4759 ], [ 0.000000e+00, %4721 ], [ %5057, %5049 ], [ 0.000000e+00, %4791 ], [ 0.000000e+00, %4846 ], [ 0.000000e+00, %4788 ]
  %5065 = phi float [ %4785, %4759 ], [ 0.000000e+00, %4721 ], [ %5059, %5049 ], [ 0.000000e+00, %4791 ], [ 0.000000e+00, %4846 ], [ 0.000000e+00, %4788 ]
  %5066 = phi float [ %4787, %4759 ], [ 0.000000e+00, %4721 ], [ %5061, %5049 ], [ 0.000000e+00, %4791 ], [ 0.000000e+00, %4846 ], [ 0.000000e+00, %4788 ]
  %5067 = phi i1 [ true, %4759 ], [ false, %4721 ], [ true, %5049 ], [ false, %4791 ], [ false, %4846 ], [ false, %4788 ]
  %5068 = and i32 %248, 3
  %5069 = icmp eq i32 %5068, 1
  %5070 = select i1 %5069, float 1.000000e+00, float 0.000000e+00
  %5071 = fsub fast float %5063, %199
  %5072 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5073 = select i1 %5067, float %5072, float 1.000000e+00
  %5074 = fmul fast float %5073, %5070
  %5075 = icmp eq i32 %5068, 3
  %5076 = select i1 %5075, float 1.000000e+00, float %5074
  %5077 = call float @dx.op.binary.f32(i32 35, float %4660, float %5076)  ; FMax(a,b)
  %5078 = fcmp fast olt float %5076, 1.000000e+00
  %5079 = fcmp uge float %74, 0.000000e+00
  %5080 = and i1 %5079, %5078
  br i1 %5080, label %5081, label %5091

; <label>:5081                                    ; preds = %5062
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.ResRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5082, 2
  %5086 = fadd fast float %5083, %5077
  %5087 = fcmp ule float %73, 0.000000e+00
  %5088 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = select i1 %5087, float %5088, float 1.000000e+00
  %5090 = fmul fast float %5089, %5085
  br label %5091

; <label>:5091                                    ; preds = %5081, %5062
  %5092 = phi float [ %5086, %5081 ], [ %5077, %5062 ]
  %5093 = phi float [ %5084, %5081 ], [ 0.000000e+00, %5062 ]
  %5094 = phi float [ %5090, %5081 ], [ 0.000000e+00, %5062 ]
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = fcmp fast une float %5096, 0.000000e+00
  %5099 = fcmp fast une float %5097, 0.000000e+00
  %5100 = or i1 %5098, %5099
  br i1 %5100, label %5101, label %5660

; <label>:5101                                    ; preds = %5091
  br i1 %5098, label %5102, label %5375

; <label>:5102                                    ; preds = %5101
  %5103 = call float @dx.op.unary.f32(i32 23, float %4657)  ; Log(value)
  %5104 = fmul fast float %5103, 4.000000e+00
  %5105 = call float @dx.op.unary.f32(i32 21, float %5104)  ; Exp(value)
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5108 = fmul fast float %5107, %60
  %5109 = fmul fast float %5107, %61
  %5110 = fmul fast float %5107, %62
  %5111 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5112 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5113 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5114 = call float @dx.op.unary.f32(i32 23, float %5111)  ; Log(value)
  %5115 = call float @dx.op.unary.f32(i32 23, float %5112)  ; Log(value)
  %5116 = call float @dx.op.unary.f32(i32 23, float %5113)  ; Log(value)
  %5117 = fmul fast float %5114, 4.000000e+00
  %5118 = fmul fast float %5115, 4.000000e+00
  %5119 = fmul fast float %5116, 4.000000e+00
  %5120 = call float @dx.op.unary.f32(i32 21, float %5117)  ; Exp(value)
  %5121 = call float @dx.op.unary.f32(i32 21, float %5118)  ; Exp(value)
  %5122 = call float @dx.op.unary.f32(i32 21, float %5119)  ; Exp(value)
  %5123 = fadd fast float %5121, %5120
  %5124 = fadd fast float %5123, %5122
  %5125 = fdiv fast float 1.000000e+00, %5124
  %5126 = fmul fast float %5125, %5120
  %5127 = fcmp fast ogt float %70, 0.000000e+00
  %5128 = fcmp fast ogt float %71, 0.000000e+00
  %5129 = fcmp fast ogt float %72, 0.000000e+00
  %5130 = fcmp fast olt float %70, 0.000000e+00
  %5131 = fcmp fast olt float %71, 0.000000e+00
  %5132 = fcmp fast olt float %72, 0.000000e+00
  %5133 = zext i1 %5127 to i32
  %5134 = zext i1 %5128 to i32
  %5135 = zext i1 %5129 to i32
  %5136 = zext i1 %5130 to i32
  %5137 = zext i1 %5131 to i32
  %5138 = zext i1 %5132 to i32
  %5139 = sub nsw i32 %5133, %5136
  %5140 = sub nsw i32 %5134, %5137
  %5141 = sub nsw i32 %5135, %5138
  %5142 = call float @dx.op.unary.f32(i32 83, float %5108)  ; DerivCoarseX(value)
  %5143 = call float @dx.op.unary.f32(i32 83, float %5109)  ; DerivCoarseX(value)
  %5144 = call float @dx.op.unary.f32(i32 83, float %5110)  ; DerivCoarseX(value)
  %5145 = call float @dx.op.unary.f32(i32 84, float %5108)  ; DerivCoarseY(value)
  %5146 = call float @dx.op.unary.f32(i32 84, float %5109)  ; DerivCoarseY(value)
  %5147 = call float @dx.op.unary.f32(i32 84, float %5110)  ; DerivCoarseY(value)
  %5148 = fcmp fast ole float %280, %5126
  %5149 = fmul fast float %5125, %5123
  %5150 = fcmp fast ole float %280, %5149
  %5151 = select i1 %5150, float %5110, float %5108
  %5152 = select i1 %5150, float %5108, float %5109
  %5153 = select i1 %5148, float %5109, float %5151
  %5154 = select i1 %5148, float %5110, float %5152
  %5155 = select i1 %5150, float %5144, float %5142
  %5156 = select i1 %5150, float %5142, float %5143
  %5157 = select i1 %5148, float %5143, float %5155
  %5158 = select i1 %5148, float %5144, float %5156
  %5159 = select i1 %5150, float %5147, float %5145
  %5160 = select i1 %5150, float %5145, float %5146
  %5161 = select i1 %5148, float %5146, float %5159
  %5162 = select i1 %5148, float %5147, float %5160
  %5163 = call float @dx.op.unary.f32(i32 27, float %5153)  ; Round_ni(value)
  %5164 = call float @dx.op.unary.f32(i32 27, float %5154)  ; Round_ni(value)
  %5165 = fptosi float %5163 to i32
  %5166 = fptosi float %5164 to i32
  %5167 = xor i32 %5166, %5165
  %5168 = sitofp i32 %5167 to float
  %5169 = fptosi float %5168 to i32
  %5170 = sitofp i32 %5169 to float
  %5171 = fmul fast float %5170, 0x3FE3C6EF40000000
  %5172 = frem fast float %5163, 2.560000e+02
  %5173 = frem fast float %5164, 2.560000e+02
  %5174 = fptoui float %5172 to i32
  %5175 = fptoui float %5173 to i32
  %5176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5174, i32 %5175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5180 = fadd fast float %5177, %5171
  %5181 = fadd fast float %5178, %5171
  %5182 = fadd fast float %5179, %5171
  %5183 = call float @dx.op.unary.f32(i32 22, float %5180)  ; Frc(value)
  %5184 = call float @dx.op.unary.f32(i32 22, float %5181)  ; Frc(value)
  %5185 = call float @dx.op.unary.f32(i32 22, float %5182)  ; Frc(value)
  %5186 = fmul fast float %5185, 0x401921FB60000000
  %5187 = call float @dx.op.unary.f32(i32 13, float %5186)  ; Sin(value)
  %5188 = call float @dx.op.unary.f32(i32 12, float %5186)  ; Cos(value)
  %5189 = fsub fast float -0.000000e+00, %5188
  %5190 = fmul fast float %5188, %5153
  %5191 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5154, float %5190)  ; FMad(a,b,c)
  %5192 = fmul fast float %5187, %5153
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5154, float %5192)  ; FMad(a,b,c)
  %5194 = fadd fast float %5191, %5183
  %5195 = fadd fast float %5193, %5184
  %5196 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5197 = bitcast float %5196 to i32
  %5198 = icmp eq i32 %5197, 0
  br i1 %5198, label %5237, label %5199

; <label>:5199                                    ; preds = %5102
  %5200 = add i32 %5197, 0
  %5201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5201, %dx.types.Handle %107, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5207 = fsub fast float 1.000000e+00, %5096
  %5208 = call float @dx.op.binary.f32(i32 35, float %5207, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5209 = bitcast float %5096 to i32
  %5210 = sitofp i32 %5209 to float
  %5211 = fadd fast float %5210, 0xC1CFBF8940000000
  %5212 = fmul fast float %5206, %5211
  %5213 = fadd fast float %5212, 0x41CFBF8940000000
  %5214 = fptosi float %5213 to i32
  %5215 = bitcast i32 %5214 to float
  %5216 = bitcast float %5208 to i32
  %5217 = sitofp i32 %5216 to float
  %5218 = fadd fast float %5217, 0xC1CFBF8940000000
  %5219 = fmul fast float %5218, %5206
  %5220 = fadd fast float %5219, 0x41CFBF8940000000
  %5221 = fptosi float %5220 to i32
  %5222 = bitcast i32 %5221 to float
  %5223 = fmul fast float %5215, %5205
  %5224 = fmul fast float %5222, %5205
  %5225 = fsub fast float %5208, %5223
  %5226 = fadd fast float %5224, %5208
  %5227 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5228 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5229 = fsub fast float %5203, %5227
  %5230 = fsub fast float %5228, %5227
  %5231 = bitcast float %5230 to i32
  %5232 = sub nsw i32 2129859010, %5231
  %5233 = bitcast i32 %5232 to float
  %5234 = fmul fast float %5233, %5229
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fcmp fast olt float %5235, 0x3F70101020000000
  br i1 %5236, label %5375, label %5237

; <label>:5237                                    ; preds = %5199, %5102
  %5238 = phi float [ %5235, %5199 ], [ %5096, %5102 ]
  %5239 = fmul fast float %5238, %5105
  %5240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.i32 %5240, 1
  %5242 = extractvalue %dx.types.CBufRet.i32 %5240, 0
  %5243 = add i32 %5242, 0
  %5244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5245 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5244, %dx.types.Handle %106, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = extractvalue %dx.types.ResRet.f32 %5245, 3
  %5250 = and i32 %5241, 255
  %5251 = uitofp i32 %5250 to float
  %5252 = lshr i32 %5241, 8
  %5253 = and i32 %5252, 255
  %5254 = uitofp i32 %5253 to float
  %5255 = fmul fast float %5249, %5251
  %5256 = fadd fast float %5255, %5254
  %5257 = fmul fast float %5256, 0x3F70101000000000
  %5258 = fadd fast float %5257, 0xBFB99999A0000000
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %5259, 0x3FF1C71C80000000
  %5261 = call float @dx.op.binary.f32(i32 36, float %5257, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5262 = fsub fast float 1.000000e+00, %5260
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fmul fast float %5263, %5246
  %5265 = fmul fast float %5263, %5247
  %5266 = fmul fast float %5263, %5248
  %5267 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = fmul fast float %5260, %5246
  %5271 = fmul fast float %5260, %5247
  %5272 = fmul fast float %5260, %5248
  %5273 = fadd fast float %5270, %5261
  %5274 = fadd fast float %5271, %5261
  %5275 = fadd fast float %5272, %5261
  %5276 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.i32 %5279, 3
  %5281 = extractvalue %dx.types.CBufRet.i32 %5279, 2
  %5282 = add i32 %5281, 0
  %5283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5284 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5283, %dx.types.Handle %106, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5288 = extractvalue %dx.types.ResRet.f32 %5284, 3
  %5289 = and i32 %5280, 255
  %5290 = uitofp i32 %5289 to float
  %5291 = lshr i32 %5280, 8
  %5292 = and i32 %5291, 255
  %5293 = uitofp i32 %5292 to float
  %5294 = lshr i32 %5280, 16
  %5295 = and i32 %5294, 255
  %5296 = uitofp i32 %5295 to float
  %5297 = fmul fast float %5296, 0x3F70101000000000
  %5298 = fmul fast float %5285, %5290
  %5299 = fadd fast float %5298, %5293
  %5300 = fmul fast float %5299, 0x3F70101000000000
  %5301 = fadd fast float %5286, -5.000000e-01
  %5302 = fadd fast float %5288, -5.000000e-01
  %5303 = fmul fast float %5301, %5297
  %5304 = fmul fast float %5302, %5297
  %5305 = fadd fast float %5303, 5.000000e-01
  %5306 = fadd fast float %5304, 5.000000e-01
  %5307 = fmul fast float %5305, 2.000000e+00
  %5308 = fadd fast float %5307, -1.000000e+00
  %5309 = fmul fast float %5306, 2.000000e+00
  %5310 = fadd fast float %5309, -1.000000e+00
  %5311 = fadd fast float %5308, %5310
  %5312 = fmul fast float %5311, 5.000000e-01
  %5313 = fsub fast float %5308, %5310
  %5314 = fmul fast float %5313, 5.000000e-01
  %5315 = call float @dx.op.unary.f32(i32 6, float %5312)  ; FAbs(value)
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5318 = fsub fast float %5316, %5317
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5314, float %5318, float %5312, float %5314, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 25, float %5319)  ; Rsqrt(value)
  %5321 = fmul fast float %5312, %5320
  %5322 = fmul fast float %5314, %5320
  %5323 = select i1 %5150, i32 %5140, i32 %5141
  %5324 = select i1 %5148, i32 %5139, i32 %5323
  %5325 = sitofp i32 %5324 to float
  %5326 = fmul fast float %5318, %5325
  %5327 = fmul fast float %5326, %5320
  %5328 = select i1 %5150, float %5327, float %5322
  %5329 = select i1 %5150, float %5322, float %5327
  %5330 = select i1 %5148, float %5327, float %5321
  %5331 = select i1 %5148, float %5322, float %5328
  %5332 = select i1 %5148, float %5321, float %5329
  %5333 = fsub fast float %5267, %4700
  %5334 = fsub fast float %5268, %4701
  %5335 = fsub fast float %5269, %4702
  %5336 = fmul fast float %5333, %5239
  %5337 = fmul fast float %5334, %5239
  %5338 = fmul fast float %5335, %5239
  %5339 = fadd fast float %5336, %4700
  %5340 = fadd fast float %5337, %4701
  %5341 = fadd fast float %5338, %4702
  %5342 = fsub fast float %5276, %4682
  %5343 = fsub fast float %5277, %4683
  %5344 = fsub fast float %5278, %4684
  %5345 = fmul fast float %5342, %5239
  %5346 = fmul fast float %5343, %5239
  %5347 = fmul fast float %5344, %5239
  %5348 = fadd fast float %5345, %4682
  %5349 = fadd fast float %5346, %4683
  %5350 = fadd fast float %5347, %4684
  %5351 = fadd fast float %5330, %4642
  %5352 = fadd fast float %5331, %4643
  %5353 = fadd fast float %5332, %4644
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5353, float %5351, float %5352, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = call float @dx.op.unary.f32(i32 25, float %5354)  ; Rsqrt(value)
  %5356 = fmul fast float %5351, %5355
  %5357 = fmul fast float %5352, %5355
  %5358 = fmul fast float %5353, %5355
  %5359 = fsub fast float %5356, %4642
  %5360 = fsub fast float %5357, %4643
  %5361 = fsub fast float %5358, %4644
  %5362 = fmul fast float %5359, %5239
  %5363 = fmul fast float %5360, %5239
  %5364 = fmul fast float %5361, %5239
  %5365 = fadd fast float %5362, %4642
  %5366 = fadd fast float %5363, %4643
  %5367 = fadd fast float %5364, %4644
  %5368 = call float @dx.op.binary.f32(i32 36, float %4657, float %5287)  ; FMin(a,b)
  %5369 = fsub fast float %5368, %4657
  %5370 = fmul fast float %5369, %5239
  %5371 = fadd fast float %5370, %4657
  %5372 = fsub fast float %5300, %4685
  %5373 = fmul fast float %5372, %5239
  %5374 = fadd fast float %5373, %4685
  br label %5375

; <label>:5375                                    ; preds = %5237, %5199, %5101
  %5376 = phi float [ %5348, %5237 ], [ %4682, %5199 ], [ %4682, %5101 ]
  %5377 = phi float [ %5349, %5237 ], [ %4683, %5199 ], [ %4683, %5101 ]
  %5378 = phi float [ %5350, %5237 ], [ %4684, %5199 ], [ %4684, %5101 ]
  %5379 = phi float [ %5365, %5237 ], [ %4642, %5199 ], [ %4642, %5101 ]
  %5380 = phi float [ %5366, %5237 ], [ %4643, %5199 ], [ %4643, %5101 ]
  %5381 = phi float [ %5367, %5237 ], [ %4644, %5199 ], [ %4644, %5101 ]
  %5382 = phi float [ %5339, %5237 ], [ %4700, %5199 ], [ %4700, %5101 ]
  %5383 = phi float [ %5340, %5237 ], [ %4701, %5199 ], [ %4701, %5101 ]
  %5384 = phi float [ %5341, %5237 ], [ %4702, %5199 ], [ %4702, %5101 ]
  %5385 = phi float [ %5374, %5237 ], [ %4685, %5199 ], [ %4685, %5101 ]
  %5386 = phi float [ %5371, %5237 ], [ %4657, %5199 ], [ %4657, %5101 ]
  br i1 %5099, label %5387, label %5660

; <label>:5387                                    ; preds = %5375
  %5388 = call float @dx.op.unary.f32(i32 23, float %5386)  ; Log(value)
  %5389 = fmul fast float %5388, 4.000000e+00
  %5390 = call float @dx.op.unary.f32(i32 21, float %5389)  ; Exp(value)
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 0
  %5393 = fmul fast float %5392, %60
  %5394 = fmul fast float %5392, %61
  %5395 = fmul fast float %5392, %62
  %5396 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5397 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5398 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5399 = call float @dx.op.unary.f32(i32 23, float %5396)  ; Log(value)
  %5400 = call float @dx.op.unary.f32(i32 23, float %5397)  ; Log(value)
  %5401 = call float @dx.op.unary.f32(i32 23, float %5398)  ; Log(value)
  %5402 = fmul fast float %5399, 4.000000e+00
  %5403 = fmul fast float %5400, 4.000000e+00
  %5404 = fmul fast float %5401, 4.000000e+00
  %5405 = call float @dx.op.unary.f32(i32 21, float %5402)  ; Exp(value)
  %5406 = call float @dx.op.unary.f32(i32 21, float %5403)  ; Exp(value)
  %5407 = call float @dx.op.unary.f32(i32 21, float %5404)  ; Exp(value)
  %5408 = fadd fast float %5406, %5405
  %5409 = fadd fast float %5408, %5407
  %5410 = fdiv fast float 1.000000e+00, %5409
  %5411 = fmul fast float %5410, %5405
  %5412 = fcmp fast ogt float %70, 0.000000e+00
  %5413 = fcmp fast ogt float %71, 0.000000e+00
  %5414 = fcmp fast ogt float %72, 0.000000e+00
  %5415 = fcmp fast olt float %70, 0.000000e+00
  %5416 = fcmp fast olt float %71, 0.000000e+00
  %5417 = fcmp fast olt float %72, 0.000000e+00
  %5418 = zext i1 %5412 to i32
  %5419 = zext i1 %5413 to i32
  %5420 = zext i1 %5414 to i32
  %5421 = zext i1 %5415 to i32
  %5422 = zext i1 %5416 to i32
  %5423 = zext i1 %5417 to i32
  %5424 = sub nsw i32 %5418, %5421
  %5425 = sub nsw i32 %5419, %5422
  %5426 = sub nsw i32 %5420, %5423
  %5427 = call float @dx.op.unary.f32(i32 83, float %5393)  ; DerivCoarseX(value)
  %5428 = call float @dx.op.unary.f32(i32 83, float %5394)  ; DerivCoarseX(value)
  %5429 = call float @dx.op.unary.f32(i32 83, float %5395)  ; DerivCoarseX(value)
  %5430 = call float @dx.op.unary.f32(i32 84, float %5393)  ; DerivCoarseY(value)
  %5431 = call float @dx.op.unary.f32(i32 84, float %5394)  ; DerivCoarseY(value)
  %5432 = call float @dx.op.unary.f32(i32 84, float %5395)  ; DerivCoarseY(value)
  %5433 = fcmp fast ole float %280, %5411
  %5434 = fmul fast float %5410, %5408
  %5435 = fcmp fast ole float %280, %5434
  %5436 = select i1 %5435, float %5395, float %5393
  %5437 = select i1 %5435, float %5393, float %5394
  %5438 = select i1 %5433, float %5394, float %5436
  %5439 = select i1 %5433, float %5395, float %5437
  %5440 = select i1 %5435, float %5429, float %5427
  %5441 = select i1 %5435, float %5427, float %5428
  %5442 = select i1 %5433, float %5428, float %5440
  %5443 = select i1 %5433, float %5429, float %5441
  %5444 = select i1 %5435, float %5432, float %5430
  %5445 = select i1 %5435, float %5430, float %5431
  %5446 = select i1 %5433, float %5431, float %5444
  %5447 = select i1 %5433, float %5432, float %5445
  %5448 = call float @dx.op.unary.f32(i32 27, float %5438)  ; Round_ni(value)
  %5449 = call float @dx.op.unary.f32(i32 27, float %5439)  ; Round_ni(value)
  %5450 = fptosi float %5448 to i32
  %5451 = fptosi float %5449 to i32
  %5452 = xor i32 %5451, %5450
  %5453 = sitofp i32 %5452 to float
  %5454 = fptosi float %5453 to i32
  %5455 = sitofp i32 %5454 to float
  %5456 = fmul fast float %5455, 0x3FE3C6EF40000000
  %5457 = frem fast float %5448, 2.560000e+02
  %5458 = frem fast float %5449, 2.560000e+02
  %5459 = fptoui float %5457 to i32
  %5460 = fptoui float %5458 to i32
  %5461 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5459, i32 %5460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5465 = fadd fast float %5462, %5456
  %5466 = fadd fast float %5463, %5456
  %5467 = fadd fast float %5464, %5456
  %5468 = call float @dx.op.unary.f32(i32 22, float %5465)  ; Frc(value)
  %5469 = call float @dx.op.unary.f32(i32 22, float %5466)  ; Frc(value)
  %5470 = call float @dx.op.unary.f32(i32 22, float %5467)  ; Frc(value)
  %5471 = fmul fast float %5470, 0x401921FB60000000
  %5472 = call float @dx.op.unary.f32(i32 13, float %5471)  ; Sin(value)
  %5473 = call float @dx.op.unary.f32(i32 12, float %5471)  ; Cos(value)
  %5474 = fsub fast float -0.000000e+00, %5473
  %5475 = fmul fast float %5473, %5438
  %5476 = call float @dx.op.tertiary.f32(i32 46, float %5472, float %5439, float %5475)  ; FMad(a,b,c)
  %5477 = fmul fast float %5472, %5438
  %5478 = call float @dx.op.tertiary.f32(i32 46, float %5474, float %5439, float %5477)  ; FMad(a,b,c)
  %5479 = fadd fast float %5476, %5468
  %5480 = fadd fast float %5478, %5469
  %5481 = extractvalue %dx.types.CBufRet.f32 %5391, 3
  %5482 = bitcast float %5481 to i32
  %5483 = icmp eq i32 %5482, 0
  br i1 %5483, label %5522, label %5484

; <label>:5484                                    ; preds = %5387
  %5485 = add i32 %5482, 0
  %5486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5486, %dx.types.Handle %107, float %5479, float %5480, float undef, float undef, i32 0, i32 0, i32 undef, float %5442, float %5443, float undef, float %5446, float %5447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5492 = fsub fast float 1.000000e+00, %5097
  %5493 = call float @dx.op.binary.f32(i32 35, float %5492, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5494 = bitcast float %5097 to i32
  %5495 = sitofp i32 %5494 to float
  %5496 = fadd fast float %5495, 0xC1CFBF8940000000
  %5497 = fmul fast float %5491, %5496
  %5498 = fadd fast float %5497, 0x41CFBF8940000000
  %5499 = fptosi float %5498 to i32
  %5500 = bitcast i32 %5499 to float
  %5501 = bitcast float %5493 to i32
  %5502 = sitofp i32 %5501 to float
  %5503 = fadd fast float %5502, 0xC1CFBF8940000000
  %5504 = fmul fast float %5503, %5491
  %5505 = fadd fast float %5504, 0x41CFBF8940000000
  %5506 = fptosi float %5505 to i32
  %5507 = bitcast i32 %5506 to float
  %5508 = fmul fast float %5500, %5490
  %5509 = fmul fast float %5507, %5490
  %5510 = fsub fast float %5493, %5508
  %5511 = fadd fast float %5509, %5493
  %5512 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5513 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5514 = fsub fast float %5488, %5512
  %5515 = fsub fast float %5513, %5512
  %5516 = bitcast float %5515 to i32
  %5517 = sub nsw i32 2129859010, %5516
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5518, %5514
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fcmp fast olt float %5520, 0x3F70101020000000
  br i1 %5521, label %5660, label %5522

; <label>:5522                                    ; preds = %5484, %5387
  %5523 = phi float [ %5520, %5484 ], [ %5097, %5387 ]
  %5524 = fmul fast float %5523, %5390
  %5525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.i32 %5525, 1
  %5527 = extractvalue %dx.types.CBufRet.i32 %5525, 0
  %5528 = add i32 %5527, 0
  %5529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5529, %dx.types.Handle %106, float %5479, float %5480, float undef, float undef, i32 0, i32 0, i32 undef, float %5442, float %5443, float undef, float %5446, float %5447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = extractvalue %dx.types.ResRet.f32 %5530, 3
  %5535 = and i32 %5526, 255
  %5536 = uitofp i32 %5535 to float
  %5537 = lshr i32 %5526, 8
  %5538 = and i32 %5537, 255
  %5539 = uitofp i32 %5538 to float
  %5540 = fmul fast float %5534, %5536
  %5541 = fadd fast float %5540, %5539
  %5542 = fmul fast float %5541, 0x3F70101000000000
  %5543 = fadd fast float %5542, 0xBFB99999A0000000
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5544, 0x3FF1C71C80000000
  %5546 = call float @dx.op.binary.f32(i32 36, float %5542, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5547 = fsub fast float 1.000000e+00, %5545
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = fmul fast float %5548, %5531
  %5550 = fmul fast float %5548, %5532
  %5551 = fmul fast float %5548, %5533
  %5552 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5553 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5554 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5555 = fmul fast float %5545, %5531
  %5556 = fmul fast float %5545, %5532
  %5557 = fmul fast float %5545, %5533
  %5558 = fadd fast float %5555, %5546
  %5559 = fadd fast float %5556, %5546
  %5560 = fadd fast float %5557, %5546
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5562 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5563 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.i32 %5564, 3
  %5566 = extractvalue %dx.types.CBufRet.i32 %5564, 2
  %5567 = add i32 %5566, 0
  %5568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5568, %dx.types.Handle %106, float %5479, float %5480, float undef, float undef, i32 0, i32 0, i32 undef, float %5442, float %5443, float undef, float %5446, float %5447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  %5573 = extractvalue %dx.types.ResRet.f32 %5569, 3
  %5574 = and i32 %5565, 255
  %5575 = uitofp i32 %5574 to float
  %5576 = lshr i32 %5565, 8
  %5577 = and i32 %5576, 255
  %5578 = uitofp i32 %5577 to float
  %5579 = lshr i32 %5565, 16
  %5580 = and i32 %5579, 255
  %5581 = uitofp i32 %5580 to float
  %5582 = fmul fast float %5581, 0x3F70101000000000
  %5583 = fmul fast float %5570, %5575
  %5584 = fadd fast float %5583, %5578
  %5585 = fmul fast float %5584, 0x3F70101000000000
  %5586 = fadd fast float %5571, -5.000000e-01
  %5587 = fadd fast float %5573, -5.000000e-01
  %5588 = fmul fast float %5586, %5582
  %5589 = fmul fast float %5587, %5582
  %5590 = fadd fast float %5588, 5.000000e-01
  %5591 = fadd fast float %5589, 5.000000e-01
  %5592 = fmul fast float %5590, 2.000000e+00
  %5593 = fadd fast float %5592, -1.000000e+00
  %5594 = fmul fast float %5591, 2.000000e+00
  %5595 = fadd fast float %5594, -1.000000e+00
  %5596 = fadd fast float %5593, %5595
  %5597 = fmul fast float %5596, 5.000000e-01
  %5598 = fsub fast float %5593, %5595
  %5599 = fmul fast float %5598, 5.000000e-01
  %5600 = call float @dx.op.unary.f32(i32 6, float %5597)  ; FAbs(value)
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5603 = fsub fast float %5601, %5602
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5599, float %5603, float %5597, float %5599, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 25, float %5604)  ; Rsqrt(value)
  %5606 = fmul fast float %5597, %5605
  %5607 = fmul fast float %5599, %5605
  %5608 = select i1 %5435, i32 %5425, i32 %5426
  %5609 = select i1 %5433, i32 %5424, i32 %5608
  %5610 = sitofp i32 %5609 to float
  %5611 = fmul fast float %5603, %5610
  %5612 = fmul fast float %5611, %5605
  %5613 = select i1 %5435, float %5612, float %5607
  %5614 = select i1 %5435, float %5607, float %5612
  %5615 = select i1 %5433, float %5612, float %5606
  %5616 = select i1 %5433, float %5607, float %5613
  %5617 = select i1 %5433, float %5606, float %5614
  %5618 = fsub fast float %5552, %5382
  %5619 = fsub fast float %5553, %5383
  %5620 = fsub fast float %5554, %5384
  %5621 = fmul fast float %5618, %5524
  %5622 = fmul fast float %5619, %5524
  %5623 = fmul fast float %5620, %5524
  %5624 = fadd fast float %5621, %5382
  %5625 = fadd fast float %5622, %5383
  %5626 = fadd fast float %5623, %5384
  %5627 = fsub fast float %5561, %5376
  %5628 = fsub fast float %5562, %5377
  %5629 = fsub fast float %5563, %5378
  %5630 = fmul fast float %5627, %5524
  %5631 = fmul fast float %5628, %5524
  %5632 = fmul fast float %5629, %5524
  %5633 = fadd fast float %5630, %5376
  %5634 = fadd fast float %5631, %5377
  %5635 = fadd fast float %5632, %5378
  %5636 = fadd fast float %5615, %5379
  %5637 = fadd fast float %5616, %5380
  %5638 = fadd fast float %5617, %5381
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 25, float %5639)  ; Rsqrt(value)
  %5641 = fmul fast float %5636, %5640
  %5642 = fmul fast float %5637, %5640
  %5643 = fmul fast float %5638, %5640
  %5644 = fsub fast float %5641, %5379
  %5645 = fsub fast float %5642, %5380
  %5646 = fsub fast float %5643, %5381
  %5647 = fmul fast float %5644, %5524
  %5648 = fmul fast float %5645, %5524
  %5649 = fmul fast float %5646, %5524
  %5650 = fadd fast float %5647, %5379
  %5651 = fadd fast float %5648, %5380
  %5652 = fadd fast float %5649, %5381
  %5653 = call float @dx.op.binary.f32(i32 36, float %5386, float %5572)  ; FMin(a,b)
  %5654 = fsub fast float %5653, %5386
  %5655 = fmul fast float %5654, %5524
  %5656 = fadd fast float %5655, %5386
  %5657 = fsub fast float %5585, %5385
  %5658 = fmul fast float %5657, %5524
  %5659 = fadd fast float %5658, %5385
  br label %5660

; <label>:5660                                    ; preds = %5522, %5484, %5375, %5091
  %5661 = phi float [ %5633, %5522 ], [ %5376, %5484 ], [ %5376, %5375 ], [ %4682, %5091 ]
  %5662 = phi float [ %5634, %5522 ], [ %5377, %5484 ], [ %5377, %5375 ], [ %4683, %5091 ]
  %5663 = phi float [ %5635, %5522 ], [ %5378, %5484 ], [ %5378, %5375 ], [ %4684, %5091 ]
  %5664 = phi float [ %5650, %5522 ], [ %5379, %5484 ], [ %5379, %5375 ], [ %4642, %5091 ]
  %5665 = phi float [ %5651, %5522 ], [ %5380, %5484 ], [ %5380, %5375 ], [ %4643, %5091 ]
  %5666 = phi float [ %5652, %5522 ], [ %5381, %5484 ], [ %5381, %5375 ], [ %4644, %5091 ]
  %5667 = phi float [ %5624, %5522 ], [ %5382, %5484 ], [ %5382, %5375 ], [ %4700, %5091 ]
  %5668 = phi float [ %5625, %5522 ], [ %5383, %5484 ], [ %5383, %5375 ], [ %4701, %5091 ]
  %5669 = phi float [ %5626, %5522 ], [ %5384, %5484 ], [ %5384, %5375 ], [ %4702, %5091 ]
  %5670 = phi float [ %5659, %5522 ], [ %5385, %5484 ], [ %5385, %5375 ], [ %4685, %5091 ]
  %5671 = phi float [ %5656, %5522 ], [ %5386, %5484 ], [ %5386, %5375 ], [ %4657, %5091 ]
  %5672 = fcmp fast une float %5095, 0.000000e+00
  br i1 %5672, label %5673, label %5842

; <label>:5673                                    ; preds = %5660
  %5674 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.unary.f32(i32 25, float %5674)  ; Rsqrt(value)
  %5676 = fmul fast float %197, %5675
  %5677 = fsub fast float -0.000000e+00, %5676
  %5678 = fmul fast float %198, %5675
  %5679 = fsub fast float -0.000000e+00, %5678
  %5680 = fmul fast float %199, %5675
  %5681 = fsub fast float -0.000000e+00, %5680
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5679, float %5681, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = fmul fast float %5095, 2.500000e+00
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5095, 0x4013FFFFE0000000
  %5686 = fadd fast float %5685, 0xBFFFFFFFE0000000
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = fmul fast float %5095, 0x4004000020000000
  %5689 = fadd fast float %5688, 0xBFF8000040000000
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = fmul fast float %4664, 1.000000e+01
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5692, 2.000000e+00
  %5694 = fsub fast float 3.000000e+00, %5693
  %5695 = fmul fast float %5692, %5692
  %5696 = fmul fast float %5695, %5694
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = fsub fast float 0x3FE3333340000000, %5670
  %5699 = fmul fast float %5698, 0x400AAAAAA0000000
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = fmul fast float %5697, %5700
  %5702 = fmul fast float %5667, 0x3FEA2B8620000000
  %5703 = fmul fast float %5668, 0x3FEA2B8620000000
  %5704 = fmul fast float %5669, 0x3FEA2B8620000000
  %5705 = fadd fast float %5702, 0x3FC81DFBA0000000
  %5706 = fmul fast float %5705, %5667
  %5707 = fadd fast float %5706, 0x3F910E6020000000
  %5708 = fadd fast float %5703, 0x3FC81DFBA0000000
  %5709 = fmul fast float %5708, %5668
  %5710 = fadd fast float %5709, 0x3F910E6020000000
  %5711 = fadd fast float %5704, 0x3FC81DFBA0000000
  %5712 = fmul fast float %5711, %5669
  %5713 = fadd fast float %5712, 0x3F910E6020000000
  %5714 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5715 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5716 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5717 = fsub fast float %5714, %5667
  %5718 = fsub fast float %5715, %5668
  %5719 = fsub fast float %5716, %5669
  %5720 = fmul fast float %5717, %5684
  %5721 = fmul fast float %5720, %5701
  %5722 = fmul fast float %5718, %5684
  %5723 = fmul fast float %5722, %5701
  %5724 = fmul fast float %5719, %5684
  %5725 = fmul fast float %5724, %5701
  %5726 = fadd fast float %5721, %5667
  %5727 = fadd fast float %5723, %5668
  %5728 = fadd fast float %5725, %5669
  %5729 = fmul fast float %5671, %5671
  %5730 = fmul fast float %5729, %5729
  %5731 = fadd fast float %5687, 1.000000e+00
  %5732 = fsub fast float %5731, %5701
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fsub fast float 1.000000e+00, %5730
  %5737 = call float @dx.op.binary.f32(i32 36, float %5733, float %5736)  ; FMin(a,b)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5740 = fadd fast float %5735, 0xBFE4CCCCC0000000
  %5741 = fmul fast float %5740, 0x4006DB6DA0000000
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fmul fast float %5742, 2.000000e+00
  %5744 = fsub fast float 3.000000e+00, %5743
  %5745 = bitcast float %5661 to i32
  %5746 = ashr i32 %5745, 1
  %5747 = add nsw i32 %5746, 532487669
  %5748 = bitcast i32 %5747 to float
  %5749 = fsub fast float 1.000000e+00, %5748
  %5750 = bitcast float %5749 to i32
  %5751 = sub nsw i32 2129859010, %5750
  %5752 = bitcast i32 %5751 to float
  %5753 = fmul fast float %5752, 2.000000e+00
  %5754 = bitcast float %5662 to i32
  %5755 = ashr i32 %5754, 1
  %5756 = add nsw i32 %5755, 532487669
  %5757 = bitcast i32 %5756 to float
  %5758 = fsub fast float 1.000000e+00, %5757
  %5759 = bitcast float %5758 to i32
  %5760 = sub nsw i32 2129859010, %5759
  %5761 = bitcast i32 %5760 to float
  %5762 = fmul fast float %5761, 2.000000e+00
  %5763 = bitcast float %5663 to i32
  %5764 = ashr i32 %5763, 1
  %5765 = add nsw i32 %5764, 532487669
  %5766 = bitcast i32 %5765 to float
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = bitcast float %5767 to i32
  %5769 = sub nsw i32 2129859010, %5768
  %5770 = bitcast i32 %5769 to float
  %5771 = fmul fast float %5770, 2.000000e+00
  %5772 = fsub fast float 0x4002A9FBE0000000, %5753
  %5773 = fadd fast float %5753, 0x3FD54FDF00000000
  %5774 = bitcast float %5773 to i32
  %5775 = sub nsw i32 2129859010, %5774
  %5776 = bitcast i32 %5775 to float
  %5777 = fmul fast float %5776, %5772
  %5778 = fmul fast float %5777, %5777
  %5779 = fsub fast float 0x4002A9FBE0000000, %5762
  %5780 = fadd fast float %5762, 0x3FD54FDF00000000
  %5781 = bitcast float %5780 to i32
  %5782 = sub nsw i32 2129859010, %5781
  %5783 = bitcast i32 %5782 to float
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5784
  %5786 = fsub fast float 0x4002A9FBE0000000, %5771
  %5787 = fadd fast float %5771, 0x3FD54FDF00000000
  %5788 = bitcast float %5787 to i32
  %5789 = sub nsw i32 2129859010, %5788
  %5790 = bitcast i32 %5789 to float
  %5791 = fmul fast float %5790, %5786
  %5792 = fmul fast float %5791, %5791
  %5793 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5778)  ; FMax(a,b)
  %5794 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5785)  ; FMax(a,b)
  %5795 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5792)  ; FMax(a,b)
  %5796 = fsub fast float 1.000000e+00, %5682
  %5797 = fadd fast float %5796, %5697
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = fsub fast float 1.000000e+00, %5076
  %5800 = fmul fast float %5739, %5799
  %5801 = fmul fast float %5742, %5742
  %5802 = fmul fast float %5801, %5800
  %5803 = fmul fast float %5802, %5744
  %5804 = fmul fast float %5799, 0xBFE99999A0000000
  %5805 = fmul fast float %5804, %5684
  %5806 = fmul fast float %5805, %5701
  %5807 = fadd fast float %5806, 1.000000e+00
  %5808 = fadd fast float %5670, -1.000000e+00
  %5809 = fmul fast float %5807, %5808
  %5810 = fadd fast float %5809, 1.000000e+00
  %5811 = fsub fast float %5793, %5661
  %5812 = fsub fast float %5794, %5662
  %5813 = fsub fast float %5795, %5663
  %5814 = fmul fast float %5803, %5811
  %5815 = fmul fast float %5803, %5812
  %5816 = fmul fast float %5803, %5813
  %5817 = fadd fast float %5814, %5661
  %5818 = fadd fast float %5815, %5662
  %5819 = fadd fast float %5816, %5663
  %5820 = fsub fast float %117, %5664
  %5821 = fsub fast float %118, %5665
  %5822 = fsub fast float %119, %5666
  %5823 = fmul fast float %5803, %5820
  %5824 = fmul fast float %5803, %5821
  %5825 = fmul fast float %5803, %5822
  %5826 = fadd fast float %5823, %5664
  %5827 = fadd fast float %5824, %5665
  %5828 = fadd fast float %5825, %5666
  %5829 = fmul fast float %5803, %5798
  %5830 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5831 = fsub fast float 1.000000e+00, %5830
  %5832 = fmul fast float %5829, %5831
  %5833 = fadd fast float %5832, %5830
  %5834 = fsub fast float 1.000000e+00, %5671
  %5835 = fmul fast float %5803, %5834
  %5836 = fadd fast float %5835, %5671
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5826, float %5827, float %5828)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = call float @dx.op.unary.f32(i32 25, float %5837)  ; Rsqrt(value)
  %5839 = fmul fast float %5826, %5838
  %5840 = fmul fast float %5827, %5838
  %5841 = fmul fast float %5828, %5838
  br label %5842

; <label>:5842                                    ; preds = %5673, %5660
  %5843 = phi float [ %5817, %5673 ], [ %5661, %5660 ]
  %5844 = phi float [ %5818, %5673 ], [ %5662, %5660 ]
  %5845 = phi float [ %5819, %5673 ], [ %5663, %5660 ]
  %5846 = phi float [ %5839, %5673 ], [ %5664, %5660 ]
  %5847 = phi float [ %5840, %5673 ], [ %5665, %5660 ]
  %5848 = phi float [ %5841, %5673 ], [ %5666, %5660 ]
  %5849 = phi float [ %5726, %5673 ], [ %5667, %5660 ]
  %5850 = phi float [ %5727, %5673 ], [ %5668, %5660 ]
  %5851 = phi float [ %5728, %5673 ], [ %5669, %5660 ]
  %5852 = phi float [ %5833, %5673 ], [ %5670, %5660 ]
  %5853 = phi float [ %5836, %5673 ], [ %5671, %5660 ]
  %5854 = icmp eq i32 %58, 0
  br i1 %5854, label %5885, label %5855

; <label>:5855                                    ; preds = %5842
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 2
  %5858 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5859 = fmul fast float %5857, %110
  %5860 = fmul fast float %5858, %111
  %5861 = fmul fast float %5859, 1.024000e+03
  %5862 = fmul fast float %5860, 1.024000e+03
  %5863 = fadd fast float %5861, -5.120000e+02
  %5864 = fadd fast float %5862, -5.120000e+02
  %5865 = fmul fast float %5859, 0x4081BEDF00000000
  %5866 = fadd fast float %5865, 0xC071BEDF00000000
  %5867 = call float @dx.op.unary.f32(i32 22, float %5866)  ; Frc(value)
  %5868 = fmul fast float %5863, %5867
  %5869 = fadd fast float %5868, %5864
  %5870 = fmul fast float %5860, 0x4073BEBE20000000
  %5871 = fadd fast float %5870, 0xC063BEBE20000000
  %5872 = call float @dx.op.unary.f32(i32 22, float %5871)  ; Frc(value)
  %5873 = fmul fast float %5864, %5872
  %5874 = fadd fast float %5873, %5863
  %5875 = fmul fast float %5869, %5874
  %5876 = call float @dx.op.unary.f32(i32 22, float %5875)  ; Frc(value)
  %5877 = add i32 %323, 12
  %5878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5877, i32 undef)  ; BufferLoad(srv,index,wot)
  %5879 = extractvalue %dx.types.ResRet.i32 %5878, 0
  %5880 = and i32 %5879, 255
  %5881 = uitofp i32 %5880 to float
  %5882 = fmul fast float %5881, 0x3F70101020000000
  %5883 = fcmp fast olt float %5876, %5882
  br i1 %5883, label %5884, label %5885

; <label>:5884                                    ; preds = %5855
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5885

; <label>:5885                                    ; preds = %5884, %5855, %5842
  %5886 = fsub fast float -0.000000e+00, %199
  %5887 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = call float @dx.op.unary.f32(i32 25, float %5887)  ; Rsqrt(value)
  %5889 = fmul fast float %5888, %197
  %5890 = fmul fast float %5888, %198
  %5891 = fmul fast float %5888, %199
  %5892 = fsub fast float -0.000000e+00, %5889
  %5893 = fsub fast float -0.000000e+00, %5890
  %5894 = fsub fast float -0.000000e+00, %5891
  %5895 = select i1 %269, float 0.000000e+00, float %5845
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %5892, float %5893, float %5894)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = fmul fast float %5898, 2.000000e+00
  %5900 = fmul fast float %5899, %5846
  %5901 = fmul fast float %5899, %5847
  %5902 = fmul fast float %5899, %5848
  %5903 = fsub fast float %5889, %5900
  %5904 = fsub fast float %5890, %5901
  %5905 = fsub fast float %5891, %5902
  %5906 = call float @dx.op.binary.f32(i32 36, float %5853, float 1.000000e+00)  ; FMin(a,b)
  %5907 = fsub fast float 1.000000e+00, %5853
  %5908 = bitcast float %5907 to i32
  %5909 = sub nsw i32 2129859010, %5908
  %5910 = bitcast i32 %5909 to float
  %5911 = fsub fast float 1.000000e+00, %81
  %5912 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.binary.f32(i32 35, float %5912, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5914 = fdiv fast float %5911, %5913
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fmul fast float %5916, 5.000000e-01
  %5918 = fadd fast float %5917, 5.000000e-01
  %5919 = fmul fast float %5918, %81
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5922 = fmul fast float %5921, %5914
  %5923 = fadd fast float %5919, %5922
  %5924 = fsub fast float 5.000000e-01, %5917
  %5925 = fmul fast float %5924, %5849
  %5926 = fmul fast float %5924, %5850
  %5927 = fmul fast float %5924, %5851
  %5928 = fadd fast float %5923, %5925
  %5929 = fadd fast float %5923, %5926
  %5930 = fadd fast float %5923, %5927
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5905, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5932, 5.000000e-01
  %5934 = fadd fast float %5933, 5.000000e-01
  %5935 = fmul fast float %5934, %81
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5905, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = call float @dx.op.unary.f32(i32 7, float %5936)  ; Saturate(value)
  %5938 = fmul fast float %5937, %5914
  %5939 = fadd fast float %5935, %5938
  %5940 = fsub fast float 5.000000e-01, %5933
  %5941 = fmul fast float %5940, %5849
  %5942 = fmul fast float %5940, %5850
  %5943 = fmul fast float %5940, %5851
  %5944 = fadd fast float %5939, %5941
  %5945 = fadd fast float %5939, %5942
  %5946 = fadd fast float %5939, %5943
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = call float @dx.op.binary.f32(i32 36, float %5849, float %5948)  ; FMin(a,b)
  %5950 = fsub fast float 1.000000e+00, %5906
  %5951 = fmul fast float %5949, %5950
  %5952 = fsub fast float 1.000000e+00, %5951
  %5953 = bitcast float %5952 to i32
  %5954 = sub nsw i32 2129859010, %5953
  %5955 = bitcast i32 %5954 to float
  %5956 = call float @dx.op.binary.f32(i32 36, float %5850, float %5948)  ; FMin(a,b)
  %5957 = fmul fast float %5956, %5950
  %5958 = fsub fast float 1.000000e+00, %5957
  %5959 = bitcast float %5958 to i32
  %5960 = sub nsw i32 2129859010, %5959
  %5961 = bitcast i32 %5960 to float
  %5962 = call float @dx.op.binary.f32(i32 36, float %5851, float %5948)  ; FMin(a,b)
  %5963 = fmul fast float %5962, %5950
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = bitcast float %5964 to i32
  %5966 = sub nsw i32 2129859010, %5965
  %5967 = bitcast i32 %5966 to float
  %5968 = fmul fast float %5906, %82
  %5969 = fmul fast float %5968, %5928
  %5970 = fmul fast float %5969, %5955
  %5971 = fmul fast float %5906, %83
  %5972 = fmul fast float %5971, %5929
  %5973 = fmul fast float %5972, %5961
  %5974 = fmul fast float %5906, %84
  %5975 = fmul fast float %5974, %5930
  %5976 = fmul fast float %5975, %5967
  %5977 = call float @dx.op.binary.f32(i32 36, float %5843, float %5948)  ; FMin(a,b)
  %5978 = fmul fast float %5977, %5950
  %5979 = fsub fast float 1.000000e+00, %5978
  %5980 = bitcast float %5979 to i32
  %5981 = sub nsw i32 2129859010, %5980
  %5982 = bitcast i32 %5981 to float
  %5983 = call float @dx.op.binary.f32(i32 36, float %5844, float %5948)  ; FMin(a,b)
  %5984 = fmul fast float %5983, %5950
  %5985 = fsub fast float 1.000000e+00, %5984
  %5986 = bitcast float %5985 to i32
  %5987 = sub nsw i32 2129859010, %5986
  %5988 = bitcast i32 %5987 to float
  %5989 = call float @dx.op.binary.f32(i32 36, float %5895, float %5948)  ; FMin(a,b)
  %5990 = fmul fast float %5989, %5950
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = bitcast float %5991 to i32
  %5993 = sub nsw i32 2129859010, %5992
  %5994 = bitcast i32 %5993 to float
  %5995 = fmul fast float %5968, %5944
  %5996 = fmul fast float %5995, %5982
  %5997 = fmul fast float %5971, %5945
  %5998 = fmul fast float %5997, %5988
  %5999 = fmul fast float %5974, %5946
  %6000 = fmul fast float %5999, %5994
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5970, float %5973, float %5976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = select i1 %269, float 0.000000e+00, float %5970
  %6003 = select i1 %269, float %6001, float %5973
  %6004 = select i1 %269, float 0.000000e+00, float %5976
  %6005 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5998, float %6000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6006 = select i1 %269, float 0.000000e+00, float %5996
  %6007 = select i1 %269, float %6005, float %5998
  %6008 = select i1 %269, float 0.000000e+00, float %6000
  %6009 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %6010 = fmul fast float %6009, %6002
  %6011 = fmul fast float %6009, %6003
  %6012 = fmul fast float %6004, %6009
  %6013 = fmul fast float %4014, %4014
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = fmul fast float %5897, 9.843750e-01
  %6016 = fmul fast float %5852, 9.843750e-01
  %6017 = fadd fast float %6015, 7.812500e-03
  %6018 = fadd fast float %6016, 7.812500e-03
  %6019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6017, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = extractvalue %dx.types.ResRet.f32 %6019, 3
  %6024 = fsub fast float 1.000000e+00, %6014
  %6025 = fsub fast float %6022, %6020
  %6026 = fsub fast float %6023, %6021
  %6027 = fmul fast float %6025, %6024
  %6028 = fmul fast float %6026, %6024
  %6029 = fadd fast float %6027, %6020
  %6030 = fadd fast float %6028, %6021
  %6031 = fmul fast float %6029, %5843
  %6032 = fmul fast float %6029, %5844
  %6033 = fmul fast float %6029, %5895
  %6034 = fadd fast float %6031, %6030
  %6035 = fadd fast float %6032, %6030
  %6036 = fadd fast float %6033, %6030
  %6037 = fcmp fast ogt float %4658, 0.000000e+00
  br i1 %6037, label %6038, label %6064

; <label>:6038                                    ; preds = %5885
  %6039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4658, float %5897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6040 = extractvalue %dx.types.ResRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.ResRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.ResRet.f32 %6039, 2
  %6043 = fadd fast float %6040, -5.000000e-01
  %6044 = fadd fast float %6041, -5.000000e-01
  %6045 = fadd fast float %6042, -5.000000e-01
  %6046 = fsub fast float 1.000000e+00, %5843
  %6047 = fsub fast float 1.000000e+00, %5844
  %6048 = fsub fast float 1.000000e+00, %5895
  %6049 = fmul fast float %5843, 4.000000e+00
  %6050 = fmul fast float %6049, %6046
  %6051 = fmul fast float %6050, %6043
  %6052 = fmul fast float %5844, 4.000000e+00
  %6053 = fmul fast float %6052, %6047
  %6054 = fmul fast float %6053, %6044
  %6055 = fmul fast float %5895, 4.000000e+00
  %6056 = fmul fast float %6055, %6048
  %6057 = fmul fast float %6056, %6045
  %6058 = fadd fast float %6051, %6034
  %6059 = fadd fast float %6054, %6035
  %6060 = fadd fast float %6057, %6036
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  br label %6064

; <label>:6064                                    ; preds = %6038, %5885
  %6065 = phi float [ %6061, %6038 ], [ %6034, %5885 ]
  %6066 = phi float [ %6062, %6038 ], [ %6035, %5885 ]
  %6067 = phi float [ %6063, %6038 ], [ %6036, %5885 ]
  %6068 = call float @dx.op.binary.f32(i32 35, float %6066, float %6067)  ; FMax(a,b)
  %6069 = call float @dx.op.binary.f32(i32 35, float %6065, float %6068)  ; FMax(a,b)
  %6070 = fsub fast float 1.000000e+00, %6069
  %6071 = fmul fast float %197, %197
  %6072 = fmul fast float %198, %198
  %6073 = fadd fast float %6072, %6071
  %6074 = fmul fast float %199, %199
  %6075 = fadd fast float %6073, %6074
  %6076 = call float @dx.op.unary.f32(i32 24, float %6075)  ; Sqrt(value)
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6079 = fsub fast float %6076, %6078
  %6080 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6081 = fmul fast float %6079, %6080
  %6082 = call float @dx.op.unary.f32(i32 7, float %6081)  ; Saturate(value)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.i32 %6085, 0
  %6087 = and i32 %6086, 4194304
  %6088 = icmp ne i32 %6087, 0
  %6089 = and i32 %6086, 8388608
  %6090 = icmp ne i32 %6089, 0
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6095 = extractvalue %dx.types.CBufRet.f32 %6091, 3
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.CBufRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.CBufRet.f32 %6096, 2
  %6100 = extractvalue %dx.types.CBufRet.f32 %6096, 3
  %6101 = select i1 %6088, float %6092, float %6097
  %6102 = select i1 %6088, float %6093, float %6098
  %6103 = select i1 %6088, float %6094, float %6099
  %6104 = select i1 %6088, float %6095, float %6100
  %6105 = select i1 %6090, float 0.000000e+00, float %6104
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6109 = select i1 %6088, float %6107, float %6108
  %6110 = select i1 %6090, float 0.000000e+00, float %6109
  %6111 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6112 = extractvalue %dx.types.CBufRet.f32 %6106, 3
  %6113 = select i1 %6088, float %6111, float %6112
  %6114 = select i1 %6090, float 0.000000e+00, float %6113
  %6115 = fmul fast float %6082, %63
  %6116 = fmul fast float %6115, %6083
  %6117 = fmul fast float %6116, %6110
  %6118 = fmul fast float %6115, %6084
  %6119 = fmul fast float %6118, %6114
  %6120 = fadd fast float %6119, 1.000000e+00
  %6121 = fmul fast float %6070, %6010
  %6122 = fmul fast float %6121, %6120
  %6123 = fmul fast float %6070, %6011
  %6124 = fmul fast float %6123, %6120
  %6125 = fmul fast float %6070, %6012
  %6126 = fmul fast float %6125, %6120
  %6127 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %5851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = fcmp fast ogt float %6127, 0x3E7FF19E20000000
  %6129 = fdiv fast float 1.000000e+00, %6127
  %6130 = select i1 %6128, float %6129, float 0.000000e+00
  %6131 = fmul fast float %6130, %5849
  %6132 = fmul fast float %6130, %5850
  %6133 = fmul fast float %6130, %5851
  %6134 = fadd fast float %6131, -1.000000e+00
  %6135 = fadd fast float %6132, -1.000000e+00
  %6136 = fadd fast float %6133, -1.000000e+00
  %6137 = fmul fast float %6134, 5.000000e-01
  %6138 = fmul fast float %6135, 5.000000e-01
  %6139 = fmul fast float %6136, 5.000000e-01
  %6140 = fadd fast float %6137, 1.000000e+00
  %6141 = fadd fast float %6138, 1.000000e+00
  %6142 = fadd fast float %6139, 1.000000e+00
  %6143 = fadd fast float %6117, %4659
  %6144 = fsub fast float %6101, %6140
  %6145 = fsub fast float %6102, %6141
  %6146 = fsub fast float %6103, %6142
  %6147 = fmul fast float %6144, %6105
  %6148 = fmul fast float %6145, %6105
  %6149 = fmul fast float %6146, %6105
  %6150 = fadd fast float %6147, %6140
  %6151 = fadd fast float %6148, %6141
  %6152 = fadd fast float %6149, %6142
  %6153 = call float @dx.op.binary.f32(i32 35, float %5897, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6154 = fdiv fast float %4014, %6153
  %6155 = fcmp fast olt float %4686, 1.270000e+02
  %6156 = fcmp fast olt float %4687, 1.270000e+02
  %6157 = fcmp fast olt float %4688, 1.270000e+02
  %6158 = fmul fast float %4686, 0xBFF7154760000000
  %6159 = fmul fast float %6158, %6154
  %6160 = fmul fast float %4687, 0xBFF7154760000000
  %6161 = fmul fast float %6160, %6154
  %6162 = fmul fast float %4688, 0xBFF7154760000000
  %6163 = fmul fast float %6162, %6154
  %6164 = call float @dx.op.unary.f32(i32 21, float %6159)  ; Exp(value)
  %6165 = call float @dx.op.unary.f32(i32 21, float %6161)  ; Exp(value)
  %6166 = call float @dx.op.unary.f32(i32 21, float %6163)  ; Exp(value)
  %6167 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6168 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6169 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6170 = select i1 %6155, float %6167, float 0.000000e+00
  %6171 = select i1 %6156, float %6168, float 0.000000e+00
  %6172 = select i1 %6157, float %6169, float 0.000000e+00
  %6173 = fmul fast float %6170, %6070
  %6174 = fmul fast float %6171, %6070
  %6175 = fmul fast float %6172, %6070
  %6176 = fadd fast float %6173, -1.000000e+00
  %6177 = fadd fast float %6174, -1.000000e+00
  %6178 = fadd fast float %6175, -1.000000e+00
  %6179 = fmul fast float %6065, %6006
  %6180 = fmul fast float %6066, %6007
  %6181 = fmul fast float %6067, %6008
  %6182 = fsub fast float 1.000000e+00, %5897
  %6183 = bitcast float %6182 to i32
  %6184 = sitofp i32 %6183 to float
  %6185 = fmul fast float %6184, 5.000000e+00
  %6186 = fadd fast float %6185, 0xC1EFBF8940000000
  %6187 = fptosi float %6186 to i32
  %6188 = bitcast i32 %6187 to float
  %6189 = fmul fast float %6143, %6188
  %6190 = fmul fast float %6121, %6189
  %6191 = fmul fast float %6190, %6150
  %6192 = fmul fast float %6123, %6189
  %6193 = fmul fast float %6192, %6151
  %6194 = fmul fast float %6125, %6189
  %6195 = fmul fast float %6194, %6152
  %6196 = fmul fast float %6122, %4655
  %6197 = fmul fast float %6124, %4655
  %6198 = fmul fast float %6126, %4655
  %6199 = fadd fast float %6179, %4648
  %6200 = fadd fast float %6199, %6191
  %6201 = fmul fast float %6200, %4655
  %6202 = fadd fast float %6180, %4649
  %6203 = fadd fast float %6202, %6193
  %6204 = fmul fast float %6203, %4655
  %6205 = fadd fast float %6181, %4650
  %6206 = fadd fast float %6205, %6195
  %6207 = fmul fast float %6206, %4655
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 3
  %6210 = fcmp fast oeq float %6209, 0.000000e+00
  br i1 %6210, label %7307, label %6211

; <label>:6211                                    ; preds = %6064
  %6212 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6213 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = select i1 %269, float %6220, float %6216
  %6224 = select i1 %269, float %6222, float %6217
  %6225 = select i1 %269, float %6221, float %6218
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6228 = fmul fast float %6227, %117
  %6229 = fmul fast float %6227, %118
  %6230 = fmul fast float %6227, %119
  %6231 = fadd fast float %6228, %197
  %6232 = fadd fast float %6229, %198
  %6233 = fadd fast float %6230, %199
  %6234 = fcmp fast olt float %6209, 0.000000e+00
  br i1 %6234, label %6874, label %6235

; <label>:6235                                    ; preds = %6211
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = fmul fast float %6237, %6231
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6238, float %6251)  ; FMad(a,b,c)
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6239, float %6252)  ; FMad(a,b,c)
  %6254 = fadd fast float %6253, %6240
  %6255 = fmul fast float %6242, %6231
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6243, float %6255)  ; FMad(a,b,c)
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6244, float %6256)  ; FMad(a,b,c)
  %6258 = fadd fast float %6257, %6245
  %6259 = fmul fast float %6247, %6231
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6248, float %6259)  ; FMad(a,b,c)
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6249, float %6260)  ; FMad(a,b,c)
  %6262 = fadd fast float %6261, %6250
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = fcmp fast une float %6264, 0.000000e+00
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6270 = fmul fast float %6269, %6254
  %6271 = fmul fast float %6269, %6258
  %6272 = fadd fast float %6270, %6267
  %6273 = fadd fast float %6271, %6268
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 3
  %6278 = fmul fast float %6277, %6254
  %6279 = fmul fast float %6277, %6258
  %6280 = fadd fast float %6278, %6275
  %6281 = fadd fast float %6279, %6276
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6284 = fsub fast float %6283, %6262
  %6285 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6286 = fmul fast float %6284, %6285
  %6287 = fsub fast float 1.000000e+00, %6286
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  br i1 %6265, label %6349, label %6289

; <label>:6289                                    ; preds = %6235
  %6290 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6293 = fadd fast float %6292, %6290
  %6294 = fcmp fast ogt float %6293, 0.000000e+00
  br i1 %6294, label %6295, label %6319

; <label>:6295                                    ; preds = %6289
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6299 = fsub fast float %6280, %6297
  %6300 = fsub fast float %6281, %6298
  %6301 = fcmp fast olt float %6299, 0.000000e+00
  %6302 = fcmp fast olt float %6300, 0.000000e+00
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.CBufRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.CBufRet.f32 %6303, 2
  %6307 = extractvalue %dx.types.CBufRet.f32 %6303, 3
  %6308 = select i1 %6301, float %6304, float %6306
  %6309 = select i1 %6302, float %6305, float %6307
  %6310 = fmul fast float %6308, %6299
  %6311 = fmul fast float %6309, %6300
  %6312 = call float @dx.op.unary.f32(i32 6, float %6310)  ; FAbs(value)
  %6313 = call float @dx.op.unary.f32(i32 6, float %6311)  ; FAbs(value)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6315 = call float @dx.op.binary.f32(i32 35, float %6312, float %6313)  ; FMax(a,b)
  %6316 = fsub fast float %6314, %6315
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = fmul fast float %6317, %6288
  br label %6319

; <label>:6319                                    ; preds = %6295, %6289
  %6320 = phi float [ %6318, %6295 ], [ 0.000000e+00, %6289 ]
  %6321 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6322 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6323 = fadd fast float %6322, %6321
  %6324 = fcmp fast ogt float %6323, 0.000000e+00
  br i1 %6324, label %6325, label %6349

; <label>:6325                                    ; preds = %6319
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = fsub fast float %6272, %6327
  %6330 = fsub fast float %6273, %6328
  %6331 = fcmp fast olt float %6329, 0.000000e+00
  %6332 = fcmp fast olt float %6330, 0.000000e+00
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.CBufRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.CBufRet.f32 %6333, 2
  %6337 = extractvalue %dx.types.CBufRet.f32 %6333, 3
  %6338 = select i1 %6331, float %6334, float %6336
  %6339 = select i1 %6332, float %6335, float %6337
  %6340 = fmul fast float %6338, %6329
  %6341 = fmul fast float %6339, %6330
  %6342 = call float @dx.op.unary.f32(i32 6, float %6340)  ; FAbs(value)
  %6343 = call float @dx.op.unary.f32(i32 6, float %6341)  ; FAbs(value)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6345 = call float @dx.op.binary.f32(i32 35, float %6342, float %6343)  ; FMax(a,b)
  %6346 = fsub fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6348 = fmul fast float %6347, %6288
  br label %6349

; <label>:6349                                    ; preds = %6325, %6319, %6235
  %6350 = phi float [ 0.000000e+00, %6235 ], [ %6348, %6325 ], [ 0.000000e+00, %6319 ]
  %6351 = phi float [ 0.000000e+00, %6235 ], [ %6320, %6325 ], [ %6320, %6319 ]
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6354 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = fsub fast float %6254, %6356
  %6359 = fsub fast float %6258, %6357
  %6360 = fcmp fast olt float %6358, 0.000000e+00
  %6361 = fcmp fast olt float %6359, 0.000000e+00
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = select i1 %6360, float %6363, float %6365
  %6368 = select i1 %6361, float %6364, float %6366
  %6369 = fmul fast float %6367, %6358
  %6370 = fmul fast float %6368, %6359
  %6371 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6372 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6374 = call float @dx.op.binary.f32(i32 35, float %6371, float %6372)  ; FMax(a,b)
  %6375 = fsub fast float %6373, %6374
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = call float @dx.op.binary.f32(i32 36, float %6376, float %6354)  ; FMin(a,b)
  %6378 = fmul fast float %6377, %6288
  %6379 = fsub fast float %6350, %6378
  %6380 = fsub fast float %6351, %6350
  %6381 = fsub fast float %6380, %6378
  %6382 = call float @dx.op.binary.f32(i32 35, float %6350, float %6351)  ; FMax(a,b)
  %6383 = call float @dx.op.binary.f32(i32 35, float %6378, float %6382)  ; FMax(a,b)
  %6384 = fcmp fast olt float %6383, 1.000000e+00
  br i1 %6384, label %6385, label %6783, !dx.controlflow.hints !100

; <label>:6385                                    ; preds = %6349
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = fcmp fast une float %6387, 0.000000e+00
  br i1 %6388, label %6389, label %6783, !dx.controlflow.hints !101

; <label>:6389                                    ; preds = %6385
  %6390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.CBufRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.CBufRet.f32 %6390, 2
  %6394 = extractvalue %dx.types.CBufRet.f32 %6390, 3
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6398 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6399 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6404 = extractvalue %dx.types.CBufRet.f32 %6400, 3
  %6405 = fmul fast float %6391, %6231
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6392, float %6405)  ; FMad(a,b,c)
  %6407 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6393, float %6406)  ; FMad(a,b,c)
  %6408 = fadd fast float %6407, %6394
  %6409 = fmul fast float %6396, %6231
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6397, float %6409)  ; FMad(a,b,c)
  %6411 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6398, float %6410)  ; FMad(a,b,c)
  %6412 = fadd fast float %6411, %6399
  %6413 = fmul fast float %6401, %6231
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6402, float %6413)  ; FMad(a,b,c)
  %6415 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6403, float %6414)  ; FMad(a,b,c)
  %6416 = fadd fast float %6415, %6404
  %6417 = fcmp fast oge float %6408, 1.000000e+00
  %6418 = fcmp fast oge float %6412, 1.000000e+00
  %6419 = or i1 %6417, %6418
  %6420 = fcmp fast olt float %6408, 0.000000e+00
  %6421 = fcmp fast olt float %6412, 0.000000e+00
  %6422 = or i1 %6420, %6421
  %6423 = or i1 %6419, %6422
  br i1 %6423, label %6783, label %6424, !dx.controlflow.hints !102

; <label>:6424                                    ; preds = %6389
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.i32 %6429, 2
  %6431 = uitofp i32 %6430 to float
  %6432 = extractvalue %dx.types.CBufRet.i32 %6429, 3
  %6433 = uitofp i32 %6432 to float
  %6434 = extractvalue %dx.types.CBufRet.f32 %6425, 3
  %6435 = fmul fast float %6434, 2.000000e+00
  %6436 = fsub fast float %6408, %6426
  %6437 = fsub fast float %6412, %6427
  %6438 = fmul fast float %6435, %6436
  %6439 = fmul fast float %6435, %6437
  %6440 = fdiv fast float 1.000000e+00, %6214
  %6441 = fmul fast float %6439, %6440
  %6442 = call float @dx.op.unary.f32(i32 6, float %6441)  ; FAbs(value)
  %6443 = fmul fast float %6428, %6233
  %6444 = fmul fast float %6443, %6435
  %6445 = call float @dx.op.unary.f32(i32 6, float %6444)  ; FAbs(value)
  %6446 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6447 = call float @dx.op.binary.f32(i32 35, float %6445, float %6442)  ; FMax(a,b)
  %6448 = call float @dx.op.binary.f32(i32 35, float %6446, float %6447)  ; FMax(a,b)
  %6449 = fmul fast float %6448, 2.000000e+00
  %6450 = call float @dx.op.unary.f32(i32 23, float %6449)  ; Log(value)
  %6451 = call float @dx.op.binary.f32(i32 35, float %6450, float %6431)  ; FMax(a,b)
  %6452 = call float @dx.op.unary.f32(i32 22, float %6451)  ; Frc(value)
  %6453 = fadd fast float %6452, 0xBFEA666660000000
  %6454 = fmul fast float %6453, 8.000000e+00
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = call float @dx.op.unary.f32(i32 27, float %6451)  ; Round_ni(value)
  %6457 = fadd fast float %6456, %6455
  %6458 = call float @dx.op.binary.f32(i32 36, float %6457, float %6433)  ; FMin(a,b)
  %6459 = call float @dx.op.unary.f32(i32 27, float %6458)  ; Round_ni(value)
  %6460 = fsub fast float -0.000000e+00, %6459
  %6461 = call float @dx.op.unary.f32(i32 21, float %6460)  ; Exp(value)
  %6462 = fmul fast float %6461, %6435
  %6463 = fmul fast float %6462, %6408
  %6464 = fmul fast float %6462, %6412
  %6465 = fmul fast float %6463, 2.500000e-01
  %6466 = fmul fast float %6464, 2.500000e-01
  %6467 = fadd fast float %6465, 5.000000e-01
  %6468 = fadd fast float %6466, 5.000000e-01
  %6469 = fsub fast float %6433, %6431
  %6470 = fptoui float %6469 to i32
  %6471 = add i32 %6470, 320
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6471)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = fcmp fast une float %6458, %6433
  %6476 = fsub fast float %6408, %6473
  %6477 = fsub fast float %6412, %6474
  %6478 = call float @dx.op.unary.f32(i32 6, float %6476)  ; FAbs(value)
  %6479 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6480 = fmul fast float %6478, %6462
  %6481 = fmul fast float %6479, %6462
  %6482 = fcmp fast olt float %6480, 1.000000e+00
  %6483 = fcmp fast olt float %6481, 1.000000e+00
  %6484 = and i1 %6482, %6483
  %6485 = or i1 %6475, %6484
  br i1 %6485, label %6486, label %6783, !dx.controlflow.hints !103

; <label>:6486                                    ; preds = %6424
  %6487 = fmul fast float %6464, 5.000000e-01
  %6488 = fmul fast float %6463, 5.000000e-01
  %6489 = fadd fast float %6487, 5.000000e-01
  %6490 = fadd fast float %6488, 5.000000e-01
  %6491 = sitofp i32 %6430 to float
  %6492 = fsub fast float %6458, %6491
  %6493 = call float @dx.op.unary.f32(i32 27, float %6492)  ; Round_ni(value)
  %6494 = call float @dx.op.unary.f32(i32 22, float %6458)  ; Frc(value)
  %6495 = call float @dx.op.unary.f32(i32 22, float %6490)  ; Frc(value)
  %6496 = call float @dx.op.unary.f32(i32 22, float %6489)  ; Frc(value)
  %6497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6495, float %6496, float %6493, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6498 = extractvalue %dx.types.ResRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.ResRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.ResRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.ResRet.f32 %6497, 3
  %6502 = fcmp fast ogt float %6494, 0.000000e+00
  br i1 %6502, label %6503, label %6524, !dx.controlflow.hints !104

; <label>:6503                                    ; preds = %6486
  %6504 = fadd fast float %6493, 1.000000e+00
  %6505 = call float @dx.op.unary.f32(i32 22, float %6467)  ; Frc(value)
  %6506 = call float @dx.op.unary.f32(i32 22, float %6468)  ; Frc(value)
  %6507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6505, float %6506, float %6504, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6508 = extractvalue %dx.types.ResRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.ResRet.f32 %6507, 1
  %6510 = extractvalue %dx.types.ResRet.f32 %6507, 2
  %6511 = extractvalue %dx.types.ResRet.f32 %6507, 3
  %6512 = fsub fast float %6508, %6498
  %6513 = fsub fast float %6509, %6499
  %6514 = fsub fast float %6510, %6500
  %6515 = fsub fast float %6511, %6501
  %6516 = fmul fast float %6512, %6494
  %6517 = fmul fast float %6513, %6494
  %6518 = fmul fast float %6514, %6494
  %6519 = fmul fast float %6515, %6494
  %6520 = fadd fast float %6516, %6498
  %6521 = fadd fast float %6517, %6499
  %6522 = fadd fast float %6518, %6500
  %6523 = fadd fast float %6519, %6501
  br label %6524

; <label>:6524                                    ; preds = %6503, %6486
  %6525 = phi float [ %6520, %6503 ], [ %6498, %6486 ]
  %6526 = phi float [ %6521, %6503 ], [ %6499, %6486 ]
  %6527 = phi float [ %6522, %6503 ], [ %6500, %6486 ]
  %6528 = phi float [ %6523, %6503 ], [ %6501, %6486 ]
  %6529 = fadd fast float %6525, -5.000000e-01
  %6530 = fadd fast float %6527, -5.000000e-01
  %6531 = fmul fast float %6529, 0xBFD5555560000000
  %6532 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6530, float %6531)  ; FMad(a,b,c)
  %6533 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6526, float 0.000000e+00)  ; FMad(a,b,c)
  %6534 = fadd fast float %6533, %6528
  %6535 = fmul fast float %6529, -7.500000e-01
  %6536 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6530, float %6535)  ; FMad(a,b,c)
  %6537 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6526, float 0.000000e+00)  ; FMad(a,b,c)
  %6538 = fadd fast float %6537, %6528
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 0
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6546 = fsub fast float %6542, %6532
  %6547 = fsub fast float %6543, %6534
  %6548 = fsub fast float %6544, %6536
  %6549 = fsub fast float %6545, %6538
  %6550 = fmul fast float %6546, %6540
  %6551 = fmul fast float %6547, %6540
  %6552 = fmul fast float %6548, %6540
  %6553 = fmul fast float %6549, %6540
  %6554 = fadd fast float %6550, %6532
  %6555 = fadd fast float %6551, %6534
  %6556 = fadd fast float %6552, %6536
  %6557 = fadd fast float %6553, %6538
  %6558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6559 = extractvalue %dx.types.ResRet.i32 %6558, 0
  %6560 = and i32 %6559, 536870911
  %6561 = uitofp i32 %6560 to float
  %6562 = fmul fast float %6561, %6408
  %6563 = fmul fast float %6561, %6412
  %6564 = fptoui float %6562 to i32
  %6565 = fptoui float %6563 to i32
  %6566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6567 = extractvalue %dx.types.ResRet.i32 %6566, 0
  %6568 = and i32 %6567, 31
  %6569 = lshr i32 %6564, %6568
  %6570 = lshr i32 %6565, %6568
  %6571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6572 = extractvalue %dx.types.ResRet.i32 %6571, 0
  %6573 = and i32 %6572, 31
  %6574 = shl i32 1, %6573
  %6575 = call i32 @dx.op.binary.i32(i32 40, i32 %6574, i32 4)  ; UMin(a,b)
  %6576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6577 = extractvalue %dx.types.ResRet.i32 %6576, 0
  %6578 = extractvalue %dx.types.ResRet.i32 %6576, 1
  %6579 = icmp eq i32 %6575, 0
  br i1 %6579, label %6621, label %6580

; <label>:6580                                    ; preds = %6524
  br label %6581

; <label>:6581                                    ; preds = %6609, %6580
  %6582 = phi i32 [ %6612, %6609 ], [ 0, %6580 ]
  %6583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6584 = extractvalue %dx.types.ResRet.i32 %6583, 0
  %6585 = lshr i32 %6584, 16
  %6586 = and i32 %6585, 31
  %6587 = shl i32 %6570, %6586
  %6588 = add i32 %6587, %6569
  %6589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.i32 %6589, 0
  %6591 = and i32 %6590, 31
  %6592 = shl i32 %6588, %6591
  %6593 = add i32 %6592, %6582
  %6594 = shl i32 %6593, 2
  %6595 = add i32 %6594, 32
  %6596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6595, i32 undef)  ; BufferLoad(srv,index,wot)
  %6597 = extractvalue %dx.types.ResRet.i32 %6596, 0
  %6598 = icmp slt i32 %6597, 0
  %6599 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6582
  %6600 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6582
  %6601 = bitcast float* %6599 to i32*
  %6602 = bitcast float* %6600 to i32*
  br i1 %6598, label %6603, label %6609

; <label>:6603                                    ; preds = %6581
  %6604 = and i32 %6597, 1073741823
  %6605 = add nuw nsw i32 %6604, 20
  %6606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6605, i32 undef)  ; BufferLoad(srv,index,wot)
  %6607 = extractvalue %dx.types.ResRet.i32 %6606, 0
  %6608 = extractvalue %dx.types.ResRet.i32 %6606, 1
  br label %6609

; <label>:6609                                    ; preds = %6603, %6581
  %6610 = phi i32 [ %6607, %6603 ], [ %6577, %6581 ]
  %6611 = phi i32 [ %6608, %6603 ], [ %6578, %6581 ]
  store i32 %6610, i32* %6601, align 4
  store i32 %6611, i32* %6602, align 4
  %6612 = add nuw i32 %6582, 1
  %6613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.i32 %6613, 2
  %6615 = icmp eq i32 %6614, 0
  %6616 = icmp ugt i32 %6597, -1073741825
  %6617 = and i1 %6616, %6615
  %6618 = icmp ult i32 %6612, %6575
  %6619 = and i1 %6617, %6618
  br i1 %6619, label %6581, label %6620

; <label>:6620                                    ; preds = %6609
  br label %6621

; <label>:6621                                    ; preds = %6620, %6524
  %6622 = phi i32 [ 0, %6524 ], [ %6612, %6620 ]
  %6623 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6624 = fptoui float %6623 to i32
  %6625 = icmp eq i32 %6624, 0
  br i1 %6625, label %6677, label %6626

; <label>:6626                                    ; preds = %6621
  br label %6627

; <label>:6627                                    ; preds = %6672, %6626
  %6628 = phi i32 [ %6673, %6672 ], [ %6622, %6626 ]
  %6629 = phi i32 [ %6674, %6672 ], [ 0, %6626 ]
  %6630 = lshr i32 %6629, 2
  %6631 = and i32 %6629, 3
  %6632 = add nuw nsw i32 %6630, 83
  %6633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6632)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.i32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.i32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.i32 %6633, 2
  %6637 = extractvalue %dx.types.CBufRet.i32 %6633, 3
  %6638 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6634, i32* %6638, align 4
  %6639 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6635, i32* %6639, align 4
  %6640 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6636, i32* %6640, align 4
  %6641 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6637, i32* %6641, align 4
  %6642 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6631
  %6643 = load i32, i32* %6642, align 4, !tbaa !105, !noalias !109
  %6644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6645 = extractvalue %dx.types.ResRet.i32 %6644, 0
  %6646 = lshr i32 %6645, 16
  %6647 = and i32 %6646, 31
  %6648 = shl i32 %6570, %6647
  %6649 = add i32 %6648, %6569
  %6650 = shl i32 %6649, 2
  %6651 = add i32 %6650, %6643
  %6652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6651, i32 undef)  ; BufferLoad(srv,index,wot)
  %6653 = extractvalue %dx.types.ResRet.i32 %6652, 0
  %6654 = icmp eq i32 %6653, 0
  br i1 %6654, label %6672, label %6655

; <label>:6655                                    ; preds = %6627
  %6656 = icmp slt i32 %6653, 0
  %6657 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6628
  %6658 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6628
  %6659 = bitcast float* %6657 to i32*
  %6660 = bitcast float* %6658 to i32*
  br i1 %6656, label %6661, label %6668

; <label>:6661                                    ; preds = %6655
  %6662 = and i32 %6653, 1073741823
  %6663 = add i32 %6643, 20
  %6664 = add i32 %6663, %6662
  %6665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6664, i32 undef)  ; BufferLoad(srv,index,wot)
  %6666 = extractvalue %dx.types.ResRet.i32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.i32 %6665, 1
  br label %6668

; <label>:6668                                    ; preds = %6661, %6655
  %6669 = phi i32 [ %6666, %6661 ], [ %6577, %6655 ]
  %6670 = phi i32 [ %6667, %6661 ], [ %6578, %6655 ]
  store i32 %6669, i32* %6659, align 4
  store i32 %6670, i32* %6660, align 4
  %6671 = add i32 %6628, 1
  br label %6672

; <label>:6672                                    ; preds = %6668, %6627
  %6673 = phi i32 [ %6628, %6627 ], [ %6671, %6668 ]
  %6674 = add nuw i32 %6629, 1
  %6675 = icmp eq i32 %6674, %6624
  br i1 %6675, label %6676, label %6627

; <label>:6676                                    ; preds = %6672
  br label %6677

; <label>:6677                                    ; preds = %6676, %6621
  %6678 = phi i32 [ %6622, %6621 ], [ %6673, %6676 ]
  %6679 = icmp eq i32 %6678, 1
  %6680 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6681 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6679, label %6682, label %6685

; <label>:6682                                    ; preds = %6677
  %6683 = load float, float* %6680, align 4
  %6684 = load float, float* %6681, align 4
  br label %6712

; <label>:6685                                    ; preds = %6677
  %6686 = load float, float* %6680, align 4
  %6687 = load float, float* %6681, align 4
  %6688 = fdiv fast float 1.000000e+00, %6687
  %6689 = fsub fast float %6686, %6688
  %6690 = icmp ugt i32 %6678, 1
  br i1 %6690, label %6691, label %6707

; <label>:6691                                    ; preds = %6685
  br label %6692

; <label>:6692                                    ; preds = %6692, %6691
  %6693 = phi float [ %6702, %6692 ], [ %6689, %6691 ]
  %6694 = phi float [ %6703, %6692 ], [ %6686, %6691 ]
  %6695 = phi i32 [ %6704, %6692 ], [ 1, %6691 ]
  %6696 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6695
  %6697 = load float, float* %6696, align 4
  %6698 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6695
  %6699 = load float, float* %6698, align 4
  %6700 = fdiv fast float 1.000000e+00, %6699
  %6701 = fsub fast float %6697, %6700
  %6702 = call float @dx.op.binary.f32(i32 36, float %6693, float %6701)  ; FMin(a,b)
  %6703 = call float @dx.op.binary.f32(i32 35, float %6694, float %6697)  ; FMax(a,b)
  %6704 = add nuw i32 %6695, 1
  %6705 = icmp eq i32 %6704, %6678
  br i1 %6705, label %6706, label %6692

; <label>:6706                                    ; preds = %6692
  br label %6707

; <label>:6707                                    ; preds = %6706, %6685
  %6708 = phi float [ %6689, %6685 ], [ %6702, %6706 ]
  %6709 = phi float [ %6686, %6685 ], [ %6703, %6706 ]
  %6710 = fsub fast float %6709, %6708
  %6711 = fdiv fast float 1.000000e+00, %6710
  br label %6712

; <label>:6712                                    ; preds = %6707, %6682
  %6713 = phi float [ %6683, %6682 ], [ %6709, %6707 ]
  %6714 = phi float [ %6684, %6682 ], [ %6711, %6707 ]
  %6715 = fadd fast float %6416, %6713
  %6716 = fmul fast float %6715, %6714
  %6717 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6718 = fmul fast float %6717, 2.000000e+00
  %6719 = fsub fast float 1.000000e+00, %6718
  %6720 = fmul fast float %6554, %6554
  %6721 = fsub fast float %6555, %6720
  %6722 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6721)  ; FMax(a,b)
  %6723 = fdiv fast float 1.000000e+00, %6722
  %6724 = fmul fast float %6555, %6554
  %6725 = fsub fast float %6556, %6724
  %6726 = fsub fast float %6719, %6554
  %6727 = fmul fast float %6719, %6719
  %6728 = fsub fast float %6727, %6555
  %6729 = fmul fast float %6723, %6725
  %6730 = fmul fast float %6729, %6726
  %6731 = fsub fast float %6728, %6730
  %6732 = fmul fast float %6555, %6555
  %6733 = fsub fast float %6557, %6732
  %6734 = fmul fast float %6725, %6725
  %6735 = fmul fast float %6734, %6723
  %6736 = fsub fast float %6733, %6735
  %6737 = fdiv fast float %6731, %6736
  %6738 = fmul fast float %6737, %6725
  %6739 = fsub fast float %6726, %6738
  %6740 = fmul fast float %6739, %6723
  %6741 = fmul fast float %6740, %6554
  %6742 = fsub fast float 1.000000e+00, %6741
  %6743 = fmul fast float %6737, %6555
  %6744 = fsub fast float %6742, %6743
  %6745 = fmul fast float %6740, %6740
  %6746 = fmul fast float %6737, 4.000000e+00
  %6747 = fmul fast float %6746, %6744
  %6748 = fsub fast float %6745, %6747
  %6749 = call float @dx.op.unary.f32(i32 24, float %6748)  ; Sqrt(value)
  %6750 = fcmp fast oge float %6740, 0.000000e+00
  %6751 = fsub fast float -0.000000e+00, %6749
  %6752 = select i1 %6750, float %6751, float %6749
  %6753 = fsub fast float %6752, %6740
  %6754 = fdiv fast float %6753, %6737
  %6755 = fdiv fast float %6744, %6753
  %6756 = fmul fast float %6754, 5.000000e-01
  %6757 = fmul fast float %6755, 2.000000e+00
  %6758 = select i1 %6750, float %6756, float %6757
  %6759 = select i1 %6750, float %6757, float %6756
  %6760 = call float @dx.op.binary.f32(i32 35, float %6758, float %6759)  ; FMax(a,b)
  %6761 = call float @dx.op.binary.f32(i32 36, float %6758, float %6759)  ; FMin(a,b)
  %6762 = fcmp fast ogt float %6719, %6760
  %6763 = fsub fast float %6719, %6761
  %6764 = fsub fast float %6719, %6760
  %6765 = fsub fast float %6760, %6761
  %6766 = select i1 %6762, float %6764, float %6765
  %6767 = fmul float %6763, %6766
  %6768 = select i1 %6762, float %6761, float %6719
  %6769 = fcmp fast ogt float %6719, %6761
  %6770 = fmul fast float %6768, %6760
  %6771 = fadd fast float %6768, %6760
  %6772 = fmul fast float %6771, %6554
  %6773 = fadd fast float %6770, %6555
  %6774 = fsub fast float %6773, %6772
  %6775 = fdiv fast float %6774, %6767
  %6776 = select i1 %6769, float %6775, float 0.000000e+00
  %6777 = fsub fast float 1.000000e+00, %6776
  %6778 = select i1 %6762, float %6777, float %6776
  %6779 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6539, 3
  %6781 = fmul fast float %6780, %6779
  %6782 = fsub fast float 1.000000e+00, %6781
  br label %6783

; <label>:6783                                    ; preds = %6712, %6424, %6389, %6385, %6349
  %6784 = phi float [ 1.000000e+00, %6349 ], [ %6782, %6712 ], [ 1.000000e+00, %6389 ], [ 1.000000e+00, %6424 ], [ 1.000000e+00, %6385 ]
  %6785 = fcmp fast ogt float %6381, 0.000000e+00
  br i1 %6785, label %6786, label %6794, !dx.controlflow.hints !118

; <label>:6786                                    ; preds = %6783
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6789 = fadd fast float %6788, %6262
  %6790 = call float @dx.op.binary.f32(i32 35, float %6789, float 0.000000e+00)  ; FMax(a,b)
  %6791 = fadd fast float %6790, 0x3F10000000000000
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6280, float %6281, float undef, float undef, i32 0, i32 0, i32 undef, float %6791)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  br label %6794

; <label>:6794                                    ; preds = %6786, %6783
  %6795 = phi float [ %6793, %6786 ], [ 1.000000e+00, %6783 ]
  %6796 = fcmp fast ogt float %6379, 0.000000e+00
  br i1 %6796, label %6797, label %6805, !dx.controlflow.hints !119

; <label>:6797                                    ; preds = %6794
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6800 = fadd fast float %6799, %6262
  %6801 = call float @dx.op.binary.f32(i32 35, float %6800, float 0.000000e+00)  ; FMax(a,b)
  %6802 = fadd fast float %6801, 0x3F10000000000000
  %6803 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6272, float %6273, float undef, float undef, i32 0, i32 0, i32 undef, float %6802)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  br label %6805

; <label>:6805                                    ; preds = %6797, %6794
  %6806 = phi float [ %6804, %6797 ], [ 1.000000e+00, %6794 ]
  %6807 = fcmp fast ogt float %6378, 0.000000e+00
  br i1 %6807, label %6808, label %6820, !dx.controlflow.hints !120

; <label>:6808                                    ; preds = %6805
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = fadd fast float %6810, %6262
  %6812 = call float @dx.op.binary.f32(i32 35, float %6811, float 0.000000e+00)  ; FMax(a,b)
  %6813 = fadd fast float %6812, 0x3F10000000000000
  br i1 %6265, label %6814, label %6817, !dx.controlflow.hints !121

; <label>:6814                                    ; preds = %6808
  %6815 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6254, float %6258, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6816 = extractvalue %dx.types.ResRet.f32 %6815, 0
  br label %6820

; <label>:6817                                    ; preds = %6808
  %6818 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6254, float %6258, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 0
  br label %6820

; <label>:6820                                    ; preds = %6817, %6814, %6805
  %6821 = phi float [ %6816, %6814 ], [ %6819, %6817 ], [ 1.000000e+00, %6805 ]
  %6822 = fsub fast float %6795, %6784
  %6823 = fmul fast float %6822, %6351
  %6824 = fadd fast float %6823, %6784
  %6825 = fsub fast float %6806, %6824
  %6826 = fmul fast float %6825, %6350
  %6827 = fadd fast float %6826, %6824
  %6828 = fsub fast float %6821, %6827
  %6829 = fmul fast float %6828, %6378
  %6830 = fadd fast float %6829, %6827
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6833 = fcmp fast ogt float %6832, 0.000000e+00
  br i1 %6833, label %6834, label %6874, !dx.controlflow.hints !122

; <label>:6834                                    ; preds = %6820
  %6835 = fcmp fast ugt float %6832, 0.000000e+00
  br i1 %6835, label %6836, label %6871

; <label>:6836                                    ; preds = %6834
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.CBufRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6846 = extractvalue %dx.types.CBufRet.f32 %6842, 3
  %6847 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6848 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6853 = fadd fast float %6850, %6231
  %6854 = fadd fast float %6851, %6232
  %6855 = fadd fast float %6852, %6233
  %6856 = fmul fast float %6853, %6838
  %6857 = call float @dx.op.tertiary.f32(i32 46, float %6839, float %6854, float %6856)  ; FMad(a,b,c)
  %6858 = call float @dx.op.tertiary.f32(i32 46, float %6840, float %6855, float %6857)  ; FMad(a,b,c)
  %6859 = fadd fast float %6858, %6841
  %6860 = fmul fast float %6853, %6843
  %6861 = call float @dx.op.tertiary.f32(i32 46, float %6844, float %6854, float %6860)  ; FMad(a,b,c)
  %6862 = call float @dx.op.tertiary.f32(i32 46, float %6845, float %6855, float %6861)  ; FMad(a,b,c)
  %6863 = fadd fast float %6862, %6846
  %6864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6859, float %6863, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6865 = extractvalue %dx.types.ResRet.f32 %6864, 0
  %6866 = fmul fast float %6865, %6848
  %6867 = fadd fast float %6866, %6847
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = fmul fast float %6868, %6832
  %6870 = fsub fast float 1.000000e+00, %6869
  br label %6871

; <label>:6871                                    ; preds = %6836, %6834
  %6872 = phi float [ %6870, %6836 ], [ 1.000000e+00, %6834 ]
  %6873 = fmul fast float %6872, %6830
  br label %6874

; <label>:6874                                    ; preds = %6871, %6820, %6211
  %6875 = phi float [ 1.000000e+00, %6211 ], [ %6873, %6871 ], [ %6830, %6820 ]
  %6876 = call float @dx.op.binary.f32(i32 36, float %6875, float %6875)  ; FMin(a,b)
  %6877 = call float @dx.op.binary.f32(i32 36, float %6875, float %6876)  ; FMin(a,b)
  %6878 = fcmp fast ogt float %6877, 0.000000e+00
  br i1 %6878, label %6879, label %7039, !dx.controlflow.hints !123

; <label>:6879                                    ; preds = %6874
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6891 = extractvalue %dx.types.CBufRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.CBufRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.CBufRet.f32 %6890, 2
  %6894 = extractvalue %dx.types.CBufRet.f32 %6890, 3
  %6895 = fmul fast float %6881, %6231
  %6896 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6882, float %6895)  ; FMad(a,b,c)
  %6897 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6883, float %6896)  ; FMad(a,b,c)
  %6898 = fadd fast float %6897, %6884
  %6899 = fmul fast float %6886, %6231
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6887, float %6899)  ; FMad(a,b,c)
  %6901 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6888, float %6900)  ; FMad(a,b,c)
  %6902 = fadd fast float %6901, %6889
  %6903 = fmul fast float %6891, %6231
  %6904 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6892, float %6903)  ; FMad(a,b,c)
  %6905 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6893, float %6904)  ; FMad(a,b,c)
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6908 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6909 = extractvalue %dx.types.CBufRet.f32 %6906, 3
  %6910 = fmul fast float %6909, %6898
  %6911 = fmul fast float %6909, %6902
  %6912 = fadd fast float %6910, %6907
  %6913 = fadd fast float %6911, %6908
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6916 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6917 = fsub fast float %6912, %6915
  %6918 = fsub fast float %6913, %6916
  %6919 = fcmp fast olt float %6917, 0.000000e+00
  %6920 = fcmp fast olt float %6918, 0.000000e+00
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6924 = extractvalue %dx.types.CBufRet.f32 %6921, 2
  %6925 = extractvalue %dx.types.CBufRet.f32 %6921, 3
  %6926 = select i1 %6919, float %6922, float %6924
  %6927 = select i1 %6920, float %6923, float %6925
  %6928 = fmul fast float %6926, %6917
  %6929 = fmul fast float %6927, %6918
  %6930 = call float @dx.op.unary.f32(i32 6, float %6928)  ; FAbs(value)
  %6931 = call float @dx.op.unary.f32(i32 6, float %6929)  ; FAbs(value)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6933 = call float @dx.op.binary.f32(i32 35, float %6930, float %6931)  ; FMax(a,b)
  %6934 = fsub fast float %6932, %6933
  %6935 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  %6936 = fcmp fast ogt float %6935, 0.000000e+00
  br i1 %6936, label %6937, label %6978, !dx.controlflow.hints !124

; <label>:6937                                    ; preds = %6879
  %6938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6912, float %6913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6939 = extractvalue %dx.types.ResRet.f32 %6938, 1
  %6940 = fcmp fast ogt float %6939, 0.000000e+00
  br i1 %6940, label %6941, label %6973

; <label>:6941                                    ; preds = %6937
  %6942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6912, float %6913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 0
  %6944 = extractvalue %dx.types.ResRet.f32 %6942, 1
  %6945 = extractvalue %dx.types.ResRet.f32 %6942, 2
  %6946 = extractvalue %dx.types.ResRet.f32 %6942, 3
  %6947 = fsub fast float 1.000000e+00, %6894
  %6948 = fsub fast float %6947, %6905
  %6949 = fmul fast float %6948, 0x400921FB60000000
  %6950 = fadd fast float %6949, 0x3FF921FB60000000
  %6951 = call float @dx.op.unary.f32(i32 13, float %6950)  ; Sin(value)
  %6952 = fadd fast float %6951, -1.000000e+00
  %6953 = fmul fast float %6952, 0x3FD45F3060000000
  %6954 = fmul fast float %6948, 0x401921FB60000000
  %6955 = fadd fast float %6954, 0x400921FB60000000
  %6956 = call float @dx.op.unary.f32(i32 13, float %6955)  ; Sin(value)
  %6957 = fadd fast float %6956, 0x3E7777A5C0000000
  %6958 = fmul fast float %6957, 0x3FC45F3060000000
  %6959 = fmul fast float %6948, 0x4022D97C80000000
  %6960 = fadd fast float %6959, 0x4012D97C80000000
  %6961 = call float @dx.op.unary.f32(i32 13, float %6960)  ; Sin(value)
  %6962 = fadd fast float %6961, 1.000000e+00
  %6963 = fmul fast float %6962, 0x3FBB2995E0000000
  %6964 = fmul fast float %6948, 0x402921FB60000000
  %6965 = fadd fast float %6964, 0x401921FB60000000
  %6966 = call float @dx.op.unary.f32(i32 13, float %6965)  ; Sin(value)
  %6967 = fadd fast float %6966, 0xBE8777A5C0000000
  %6968 = fmul fast float %6967, 0x3FB45F3060000000
  %6969 = call float @dx.op.dot4.f32(i32 56, float %6943, float %6944, float %6945, float %6946, float %6953, float %6958, float %6963, float %6968)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6970 = fmul fast float %6969, 0xBFF7154760000000
  %6971 = call float @dx.op.unary.f32(i32 21, float %6970)  ; Exp(value)
  %6972 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  br label %6973

; <label>:6973                                    ; preds = %6941, %6937
  %6974 = phi float [ %6972, %6941 ], [ 1.000000e+00, %6937 ]
  %6975 = fadd fast float %6974, -1.000000e+00
  %6976 = fmul fast float %6975, %6935
  %6977 = fadd fast float %6976, 1.000000e+00
  br label %6978

; <label>:6978                                    ; preds = %6973, %6879
  %6979 = phi float [ %6977, %6973 ], [ 1.000000e+00, %6879 ]
  %6980 = fmul fast float %6979, %6875
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %6985 = fadd fast float %6982, %197
  %6986 = fadd fast float %6983, %198
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6989 = fsub fast float -0.000000e+00, %6985
  %6990 = fsub fast float -0.000000e+00, %6986
  %6991 = fsub fast float %5886, %6984
  %6992 = fadd fast float %6991, %6988
  %6993 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6989, float %6990, float %6992)  ; Dot3(ax,ay,az,bx,by,bz)
  %6994 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6212, float %6213, float %6214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6995 = fdiv fast float 1.000000e+00, %6994
  %6996 = fmul fast float %6995, %6993
  %6997 = fmul fast float %6212, %6996
  %6998 = fmul fast float %6213, %6996
  %6999 = fadd fast float %6997, %6985
  %7000 = fadd fast float %6998, %6986
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 1
  %7004 = fsub fast float %6999, %7002
  %7005 = fsub fast float %7000, %7003
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %7008 = extractvalue %dx.types.CBufRet.f32 %7006, 3
  %7009 = fmul fast float %7004, %7007
  %7010 = fmul fast float %7005, %7008
  %7011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.i32 %7011, 3
  %7013 = icmp eq i32 %7012, 0
  br i1 %7013, label %7019, label %7014

; <label>:7014                                    ; preds = %6978
  %7015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7009, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.ResRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.ResRet.f32 %7015, 2
  br label %7024

; <label>:7019                                    ; preds = %6978
  %7020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7009, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7021 = extractvalue %dx.types.ResRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.ResRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.ResRet.f32 %7020, 2
  br label %7024

; <label>:7024                                    ; preds = %7019, %7014
  %7025 = phi float [ %7016, %7014 ], [ %7021, %7019 ]
  %7026 = phi float [ %7017, %7014 ], [ %7022, %7019 ]
  %7027 = phi float [ %7018, %7014 ], [ %7023, %7019 ]
  %7028 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %7029 = fmul fast float %7028, %7025
  %7030 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %7031 = fsub fast float %6996, %7030
  %7032 = fsub fast float %7031, %7029
  %7033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7032)  ; FMax(a,b)
  %7034 = fmul fast float %7033, %7026
  %7035 = call float @dx.op.binary.f32(i32 36, float %7027, float %7034)  ; FMin(a,b)
  %7036 = fmul fast float %7035, 0xBFF7154760000000
  %7037 = call float @dx.op.unary.f32(i32 21, float %7036)  ; Exp(value)
  %7038 = fmul fast float %6980, %7037
  br label %7039

; <label>:7039                                    ; preds = %7024, %6874
  %7040 = phi float [ %7038, %7024 ], [ %6875, %6874 ]
  %7041 = call float @dx.op.binary.f32(i32 36, float %7040, float %7040)  ; FMin(a,b)
  %7042 = call float @dx.op.binary.f32(i32 36, float %7040, float %7041)  ; FMin(a,b)
  %7043 = fcmp fast ogt float %7042, 0.000000e+00
  br i1 %7043, label %7044, label %7307, !dx.controlflow.hints !125

; <label>:7044                                    ; preds = %7039
  %7045 = fmul fast float %7040, %6223
  %7046 = fmul fast float %7040, %6224
  %7047 = fmul fast float %7040, %6225
  %7048 = fsub fast float %199, %5063
  %7049 = fcmp fast ogt float %7048, 0.000000e+00
  %7050 = fmul fast float %6212, 5.120000e+02
  %7051 = fmul fast float %6213, 5.120000e+02
  %7052 = fmul fast float %6214, 5.120000e+02
  %7053 = fadd fast float %7052, %199
  %7054 = fsub fast float %5063, %7053
  %7055 = fmul fast float %7054, 2.000000e+00
  %7056 = fadd fast float %7055, %7053
  %7057 = select i1 %7049, float %7056, float %7053
  %7058 = fsub fast float %7057, %199
  %7059 = call float @dx.op.dot3.f32(i32 55, float %7050, float %7051, float %7058, float %7050, float %7051, float %7058)  ; Dot3(ax,ay,az,bx,by,bz)
  %7060 = call float @dx.op.unary.f32(i32 25, float %7059)  ; Rsqrt(value)
  %7061 = fmul fast float %7060, %7050
  %7062 = fmul fast float %7060, %7051
  %7063 = fmul fast float %7060, %7058
  %7064 = fsub fast float %5063, %199
  %7065 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7064)  ; Dot3(ax,ay,az,bx,by,bz)
  %7066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7061, float %7062, float %7063)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = fdiv fast float 1.000000e+00, %7066
  %7068 = fmul fast float %7067, %7065
  %7069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7048, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7070 = fcmp fast ogt float %7069, 0.000000e+00
  %7071 = fcmp fast olt float %7069, 0.000000e+00
  %7072 = zext i1 %7070 to i32
  %7073 = zext i1 %7071 to i32
  %7074 = sub nsw i32 %7072, %7073
  %7075 = sitofp i32 %7074 to float
  %7076 = fsub fast float %7057, %5063
  %7077 = call float @dx.op.dot3.f32(i32 55, float %7050, float %7051, float %7076, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7078 = fcmp fast ogt float %7077, 0.000000e+00
  %7079 = fcmp fast olt float %7077, 0.000000e+00
  %7080 = zext i1 %7078 to i32
  %7081 = zext i1 %7079 to i32
  %7082 = sub nsw i32 %7080, %7081
  %7083 = sitofp i32 %7082 to float
  %7084 = fcmp fast une float %7075, %7083
  br i1 %7084, label %7085, label %7095

; <label>:7085                                    ; preds = %7044
  %7086 = fmul fast float %7068, %7063
  %7087 = fmul fast float %7068, %7062
  %7088 = fmul fast float %7068, %7061
  %7089 = fmul fast float %7088, %7088
  %7090 = fmul fast float %7087, %7087
  %7091 = fadd fast float %7089, %7090
  %7092 = fmul fast float %7086, %7086
  %7093 = fadd fast float %7091, %7092
  %7094 = call float @dx.op.unary.f32(i32 24, float %7093)  ; Sqrt(value)
  br label %7105

; <label>:7095                                    ; preds = %7044
  %7096 = icmp slt i32 %7074, 0
  br i1 %7096, label %7097, label %7105

; <label>:7097                                    ; preds = %7095
  %7098 = fsub fast float %199, %7057
  %7099 = fmul fast float %7050, %7050
  %7100 = fmul fast float %7051, %7051
  %7101 = fadd fast float %7099, %7100
  %7102 = fmul fast float %7098, %7098
  %7103 = fadd fast float %7101, %7102
  %7104 = call float @dx.op.unary.f32(i32 24, float %7103)  ; Sqrt(value)
  br label %7105

; <label>:7105                                    ; preds = %7097, %7095, %7085
  %7106 = phi float [ %7094, %7085 ], [ %7104, %7097 ], [ 0.000000e+00, %7095 ]
  %7107 = fsub fast float -0.000000e+00, %7106
  %7108 = select i1 %7049, float -0.000000e+00, float %7107
  %7109 = fmul fast float %5064, 0x3FF7154760000000
  %7110 = fmul fast float %7109, %7108
  %7111 = fmul fast float %5065, 0x3FF7154760000000
  %7112 = fmul fast float %7111, %7108
  %7113 = fmul fast float %5066, 0x3FF7154760000000
  %7114 = fmul fast float %7113, %7108
  %7115 = call float @dx.op.unary.f32(i32 21, float %7110)  ; Exp(value)
  %7116 = call float @dx.op.unary.f32(i32 21, float %7112)  ; Exp(value)
  %7117 = call float @dx.op.unary.f32(i32 21, float %7114)  ; Exp(value)
  %7118 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7119 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  %7120 = call float @dx.op.unary.f32(i32 7, float %7117)  ; Saturate(value)
  %7121 = fmul fast float %7045, %7118
  %7122 = fmul fast float %7046, %7119
  %7123 = fmul fast float %7047, %7120
  %7124 = fsub fast float %6212, %5889
  %7125 = fsub fast float %6213, %5890
  %7126 = fsub fast float %6214, %5891
  %7127 = call float @dx.op.dot3.f32(i32 55, float %7124, float %7125, float %7126, float %7124, float %7125, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7128 = call float @dx.op.unary.f32(i32 25, float %7127)  ; Rsqrt(value)
  %7129 = fmul fast float %7128, %7124
  %7130 = fmul fast float %7128, %7125
  %7131 = fmul fast float %7128, %7126
  %7132 = call float @dx.op.dot3.f32(i32 55, float %6212, float %6213, float %6214, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %7133 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.unary.f32(i32 7, float %7132)  ; Saturate(value)
  %7135 = fmul fast float %7134, %7134
  %7136 = fmul fast float %7135, %5910
  %7137 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7138 = fmul fast float %7137, %7134
  %7139 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = fmul fast float %7139, %7139
  %7141 = call float @dx.op.unary.f32(i32 6, float %7132)  ; FAbs(value)
  %7142 = fsub fast float 1.000000e+00, %5852
  %7143 = call float @dx.op.binary.f32(i32 35, float %7142, float 0x3F847AE140000000)  ; FMax(a,b)
  %7144 = fmul fast float %7143, %7143
  %7145 = fmul fast float %7144, %7144
  %7146 = fsub fast float 1.000000e+00, %7145
  %7147 = fmul fast float %5897, %5897
  %7148 = fmul fast float %7147, %7146
  %7149 = fadd fast float %7148, %7145
  %7150 = bitcast float %7149 to i32
  %7151 = ashr i32 %7150, 1
  %7152 = add nsw i32 %7151, 532487669
  %7153 = bitcast i32 %7152 to float
  %7154 = fadd fast float %7153, %5897
  %7155 = fmul fast float %7145, %7140
  %7156 = fsub fast float 1.000000e+00, %7140
  %7157 = fadd fast float %7156, %7155
  %7158 = fmul fast float %7141, %7141
  %7159 = fmul fast float %7158, %7146
  %7160 = fadd fast float %7159, %7145
  %7161 = bitcast float %7160 to i32
  %7162 = ashr i32 %7161, 1
  %7163 = add nsw i32 %7162, 532487669
  %7164 = bitcast i32 %7163 to float
  %7165 = fadd fast float %7164, %7141
  %7166 = fmul fast float %7157, %7157
  %7167 = fmul fast float %7166, %7154
  %7168 = fmul fast float %7167, %7165
  %7169 = fdiv fast float 0x3FF0A00000000000, %7168
  %7170 = fmul fast float %7169, %7145
  %7171 = fmul fast float %6014, 0x3FF9999980000000
  %7172 = fsub fast float 5.000000e+00, %7171
  %7173 = call float @dx.op.unary.f32(i32 6, float %7133)  ; FAbs(value)
  %7174 = fsub fast float 1.000000e+00, %7173
  %7175 = fmul fast float %6014, 0x41D9660740000000
  %7176 = fadd fast float %7175, 0xC1EFBF8940000000
  %7177 = bitcast float %7174 to i32
  %7178 = sitofp i32 %7177 to float
  %7179 = fmul fast float %7178, %7172
  %7180 = fadd fast float %7176, %7179
  %7181 = fptosi float %7180 to i32
  %7182 = bitcast i32 %7181 to float
  %7183 = fsub fast float 1.000000e+00, %5843
  %7184 = fsub fast float 1.000000e+00, %5844
  %7185 = fsub fast float 1.000000e+00, %5895
  %7186 = fmul fast float %7182, %7183
  %7187 = fmul fast float %7182, %7184
  %7188 = fmul fast float %7182, %7185
  %7189 = fadd fast float %7186, %5843
  %7190 = fadd fast float %7187, %5844
  %7191 = fadd fast float %7188, %5895
  br i1 %6037, label %7192, label %7215

; <label>:7192                                    ; preds = %7105
  %7193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4658, float %7173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7194 = extractvalue %dx.types.ResRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.ResRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.ResRet.f32 %7193, 2
  %7197 = fadd fast float %7194, -5.000000e-01
  %7198 = fadd fast float %7195, -5.000000e-01
  %7199 = fadd fast float %7196, -5.000000e-01
  %7200 = fmul fast float %5843, 4.000000e+00
  %7201 = fmul fast float %7200, %7183
  %7202 = fmul fast float %7201, %7197
  %7203 = fmul fast float %5844, 4.000000e+00
  %7204 = fmul fast float %7203, %7184
  %7205 = fmul fast float %7204, %7198
  %7206 = fmul fast float %5895, 4.000000e+00
  %7207 = fmul fast float %7206, %7185
  %7208 = fmul fast float %7207, %7199
  %7209 = fadd fast float %7202, %7189
  %7210 = fadd fast float %7205, %7190
  %7211 = fadd fast float %7208, %7191
  %7212 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7213 = call float @dx.op.unary.f32(i32 7, float %7210)  ; Saturate(value)
  %7214 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  br label %7215

; <label>:7215                                    ; preds = %7192, %7105
  %7216 = phi float [ %7212, %7192 ], [ %7189, %7105 ]
  %7217 = phi float [ %7213, %7192 ], [ %7190, %7105 ]
  %7218 = phi float [ %7214, %7192 ], [ %7191, %7105 ]
  %7219 = fmul fast float %7132, 9.843750e-01
  %7220 = fadd fast float %7219, 7.812500e-03
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7220, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.ResRet.f32 %7221, 1
  %7224 = extractvalue %dx.types.ResRet.f32 %7221, 2
  %7225 = extractvalue %dx.types.ResRet.f32 %7221, 3
  %7226 = fsub fast float %7224, %7222
  %7227 = fsub fast float %7225, %7223
  %7228 = fmul fast float %7226, %6024
  %7229 = fmul fast float %7227, %6024
  %7230 = fadd fast float %7228, %7222
  %7231 = fadd fast float %7229, %7223
  %7232 = fmul fast float %7230, %5843
  %7233 = fmul fast float %7230, %5844
  %7234 = fmul fast float %7230, %5895
  %7235 = fadd fast float %7232, %7231
  %7236 = fadd fast float %7233, %7231
  %7237 = fadd fast float %7234, %7231
  br i1 %6037, label %7238, label %7261

; <label>:7238                                    ; preds = %7215
  %7239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4658, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = fadd fast float %7240, -5.000000e-01
  %7244 = fadd fast float %7241, -5.000000e-01
  %7245 = fadd fast float %7242, -5.000000e-01
  %7246 = fmul fast float %5843, 4.000000e+00
  %7247 = fmul fast float %7246, %7183
  %7248 = fmul fast float %7247, %7243
  %7249 = fmul fast float %5844, 4.000000e+00
  %7250 = fmul fast float %7249, %7184
  %7251 = fmul fast float %7250, %7244
  %7252 = fmul fast float %5895, 4.000000e+00
  %7253 = fmul fast float %7252, %7185
  %7254 = fmul fast float %7253, %7245
  %7255 = fadd fast float %7248, %7235
  %7256 = fadd fast float %7251, %7236
  %7257 = fadd fast float %7254, %7237
  %7258 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7259 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7260 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  br label %7261

; <label>:7261                                    ; preds = %7238, %7215
  %7262 = phi float [ %7258, %7238 ], [ %7235, %7215 ]
  %7263 = phi float [ %7259, %7238 ], [ %7236, %7215 ]
  %7264 = phi float [ %7260, %7238 ], [ %7237, %7215 ]
  %7265 = call float @dx.op.binary.f32(i32 35, float %7263, float %7264)  ; FMax(a,b)
  %7266 = call float @dx.op.binary.f32(i32 35, float %7262, float %7265)  ; FMax(a,b)
  %7267 = fsub fast float 1.000000e+00, %7266
  %7268 = fmul fast float %7216, %7170
  %7269 = fmul fast float %7217, %7170
  %7270 = fmul fast float %7218, %7170
  %7271 = fsub fast float 1.000000e+00, %7133
  %7272 = bitcast float %7271 to i32
  %7273 = sitofp i32 %7272 to float
  %7274 = fmul fast float %7273, 5.000000e+00
  %7275 = fadd fast float %7274, 0xC1EFBF8940000000
  %7276 = fptosi float %7275 to i32
  %7277 = bitcast i32 %7276 to float
  %7278 = fmul fast float %7277, %4659
  %7279 = fmul fast float %7267, %7278
  %7280 = fmul fast float %7279, %6140
  %7281 = fmul fast float %7279, %6141
  %7282 = fmul fast float %7279, %6142
  %7283 = fadd fast float %7280, %7268
  %7284 = fadd fast float %7281, %7269
  %7285 = fadd fast float %7282, %7270
  %7286 = fmul fast float %7138, %7121
  %7287 = fmul fast float %7286, %7267
  %7288 = fmul fast float %7138, %7122
  %7289 = fmul fast float %7288, %7267
  %7290 = fmul fast float %7138, %7123
  %7291 = fmul fast float %7290, %7267
  %7292 = fmul fast float %7286, %7283
  %7293 = fmul fast float %7288, %7284
  %7294 = fmul fast float %7290, %7285
  %7295 = fadd fast float %7287, %6122
  %7296 = fmul fast float %7295, %4655
  %7297 = fadd fast float %7289, %6124
  %7298 = fmul fast float %7297, %4655
  %7299 = fadd fast float %7291, %6126
  %7300 = fmul fast float %7299, %4655
  %7301 = fadd fast float %7292, %6200
  %7302 = fmul fast float %7301, %4655
  %7303 = fadd fast float %7293, %6203
  %7304 = fmul fast float %7303, %4655
  %7305 = fadd fast float %7294, %6206
  %7306 = fmul fast float %7305, %4655
  br label %7307

; <label>:7307                                    ; preds = %7261, %7039, %6064
  %7308 = phi float [ %6201, %6064 ], [ %6201, %7039 ], [ %7302, %7261 ]
  %7309 = phi float [ %6204, %6064 ], [ %6204, %7039 ], [ %7304, %7261 ]
  %7310 = phi float [ %6207, %6064 ], [ %6207, %7039 ], [ %7306, %7261 ]
  %7311 = phi float [ %6196, %6064 ], [ %6196, %7039 ], [ %7296, %7261 ]
  %7312 = phi float [ %6197, %6064 ], [ %6197, %7039 ], [ %7298, %7261 ]
  %7313 = phi float [ %6198, %6064 ], [ %6198, %7039 ], [ %7300, %7261 ]
  %7314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.i32 %7314, 0
  %7316 = icmp eq i32 %7315, 0
  br i1 %7316, label %7949, label %7317

; <label>:7317                                    ; preds = %7307
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 3
  %7321 = fmul fast float %7319, %110
  %7322 = fmul fast float %7320, %111
  %7323 = fptoui float %7321 to i32
  %7324 = fptoui float %7322 to i32
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7328 = extractvalue %dx.types.CBufRet.f32 %7325, 3
  %7329 = fadd fast float %101, -4.000000e+00
  %7330 = call float @dx.op.binary.f32(i32 35, float %7329, float 0.000000e+00)  ; FMax(a,b)
  %7331 = fadd fast float %7330, %7326
  %7332 = fmul fast float %7331, %7327
  %7333 = call float @dx.op.unary.f32(i32 23, float %7332)  ; Log(value)
  %7334 = fmul fast float %7333, %7328
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 2
  %7337 = fmul fast float %7334, %7336
  %7338 = call float @dx.op.unary.f32(i32 7, float %7337)  ; Saturate(value)
  %7339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.i32 %7339, 1
  %7341 = add i32 %7340, -1
  %7342 = uitofp i32 %7340 to float
  %7343 = fmul fast float %7342, %7338
  %7344 = fptoui float %7343 to i32
  %7345 = call i32 @dx.op.binary.i32(i32 40, i32 %7344, i32 %7341)  ; UMin(a,b)
  %7346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.i32 %7346, 2
  %7348 = extractvalue %dx.types.CBufRet.i32 %7346, 3
  %7349 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7324, i32 %7347, i32 %7323)  ; UMad(a,b,c)
  %7350 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7345, i32 %7348, i32 %7349)  ; UMad(a,b,c)
  %7351 = add nsw i32 %7315, -1
  %7352 = call i32 @dx.op.binary.i32(i32 37, i32 %7351, i32 0)  ; IMax(a,b)
  %7353 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7354 = fptoui float %7353 to i32
  %7355 = lshr i32 %7354, 5
  %7356 = call i32 @dx.op.binary.i32(i32 40, i32 %7355, i32 8191)  ; UMin(a,b)
  %7357 = shl i32 %7356, 2
  %7358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7357, i32 undef)  ; BufferLoad(srv,index,wot)
  %7359 = extractvalue %dx.types.ResRet.i32 %7358, 0
  %7360 = lshr i32 %7359, 16
  %7361 = and i32 %7359, 65535
  %7362 = lshr i32 %7359, 21
  %7363 = lshr i32 %7361, 5
  %7364 = call i32 @dx.op.binary.i32(i32 40, i32 %7363, i32 %7352)  ; UMin(a,b)
  %7365 = icmp ugt i32 %7362, %7364
  br i1 %7365, label %7949, label %7366

; <label>:7366                                    ; preds = %7317
  br label %7367

; <label>:7367                                    ; preds = %7939, %7366
  %7368 = phi i32 [ %7946, %7939 ], [ %7362, %7366 ]
  %7369 = phi float [ %7940, %7939 ], [ %7308, %7366 ]
  %7370 = phi float [ %7941, %7939 ], [ %7309, %7366 ]
  %7371 = phi float [ %7942, %7939 ], [ %7310, %7366 ]
  %7372 = phi float [ %7943, %7939 ], [ %7311, %7366 ]
  %7373 = phi float [ %7944, %7939 ], [ %7312, %7366 ]
  %7374 = phi float [ %7945, %7939 ], [ %7313, %7366 ]
  %7375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.i32 %7375, 0
  %7377 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7350, i32 %7376, i32 %7368)  ; UMad(a,b,c)
  %7378 = shl i32 %7377, 2
  %7379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7378, i32 undef)  ; BufferLoad(srv,index,wot)
  %7380 = extractvalue %dx.types.ResRet.i32 %7379, 0
  %7381 = shl i32 %7368, 5
  %7382 = sub nsw i32 %7360, %7381
  %7383 = call i32 @dx.op.binary.i32(i32 37, i32 %7382, i32 0)  ; IMax(a,b)
  %7384 = call i32 @dx.op.binary.i32(i32 38, i32 %7383, i32 31)  ; IMin(a,b)
  %7385 = sub nsw i32 1, %7360
  %7386 = add nsw i32 %7385, %7361
  %7387 = call i32 @dx.op.binary.i32(i32 37, i32 %7386, i32 0)  ; IMax(a,b)
  %7388 = call i32 @dx.op.binary.i32(i32 38, i32 %7387, i32 32)  ; IMin(a,b)
  %7389 = and i32 %7388, 31
  %7390 = shl i32 -1, %7389
  %7391 = xor i32 %7390, -1
  %7392 = and i32 %7384, 31
  %7393 = shl i32 %7391, %7392
  %7394 = icmp eq i32 %7388, 32
  %7395 = select i1 %7394, i32 -1, i32 %7393
  %7396 = and i32 %7395, %7380
  %7397 = icmp eq i32 %7396, 0
  br i1 %7397, label %7939, label %7398

; <label>:7398                                    ; preds = %7367
  br label %7399

; <label>:7399                                    ; preds = %7533, %7398
  %7400 = phi i32 [ %7411, %7533 ], [ %7396, %7398 ]
  %7401 = phi float [ %7534, %7533 ], [ %7369, %7398 ]
  %7402 = phi float [ %7535, %7533 ], [ %7370, %7398 ]
  %7403 = phi float [ %7536, %7533 ], [ %7371, %7398 ]
  %7404 = phi float [ %7537, %7533 ], [ %7372, %7398 ]
  %7405 = phi float [ %7538, %7533 ], [ %7373, %7398 ]
  %7406 = phi float [ %7539, %7533 ], [ %7374, %7398 ]
  %7407 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7400)  ; FirstbitLo(value)
  %7408 = add i32 %7407, %7381
  %7409 = and i32 %7407, 31
  %7410 = shl i32 1, %7409
  %7411 = xor i32 %7410, %7400
  %7412 = mul i32 %7408, 112
  %7413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7412, i32 undef)  ; BufferLoad(srv,index,wot)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.ResRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.ResRet.f32 %7413, 2
  %7417 = or i32 %7412, 12
  %7418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7417, i32 undef)  ; BufferLoad(srv,index,wot)
  %7419 = extractvalue %dx.types.ResRet.f32 %7418, 0
  %7420 = add i32 %7412, 16
  %7421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7420, i32 undef)  ; BufferLoad(srv,index,wot)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = add i32 %7412, 28
  %7426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7425, i32 undef)  ; BufferLoad(srv,index,wot)
  %7427 = extractvalue %dx.types.ResRet.i32 %7426, 0
  %7428 = add i32 %7412, 44
  %7429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7428, i32 undef)  ; BufferLoad(srv,index,wot)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = add i32 %7412, 48
  %7432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7431, i32 undef)  ; BufferLoad(srv,index,wot)
  %7433 = extractvalue %dx.types.ResRet.f32 %7432, 0
  %7434 = extractvalue %dx.types.ResRet.f32 %7432, 1
  %7435 = extractvalue %dx.types.ResRet.f32 %7432, 2
  %7436 = extractvalue %dx.types.ResRet.f32 %7432, 3
  %7437 = add i32 %7412, 64
  %7438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7437, i32 undef)  ; BufferLoad(srv,index,wot)
  %7439 = extractvalue %dx.types.ResRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.ResRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.ResRet.f32 %7438, 2
  %7442 = extractvalue %dx.types.ResRet.f32 %7438, 3
  %7443 = add i32 %7412, 80
  %7444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7447 = add i32 %7412, 92
  %7448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7447, i32 undef)  ; BufferLoad(srv,index,wot)
  %7449 = extractvalue %dx.types.ResRet.i32 %7448, 0
  %7450 = call float @dx.op.dot3.f32(i32 55, float %7414, float %7415, float %7416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7451 = select i1 %269, float %7445, float %7414
  %7452 = select i1 %269, float %7450, float %7415
  %7453 = select i1 %269, float %7446, float %7416
  %7454 = and i32 %7449, 65535
  %7455 = uitofp i32 %7454 to float
  %7456 = lshr i32 %7449, 16
  %7457 = uitofp i32 %7456 to float
  %7458 = and i32 %7427, 65535
  %7459 = and i32 %7427, 50331648
  %7460 = icmp eq i32 %7459, 33554432
  %7461 = fsub fast float %7433, %197
  %7462 = fsub fast float %7434, %198
  %7463 = fsub fast float %7435, %199
  %7464 = call float @dx.op.dot3.f32(i32 55, float %7461, float %7462, float %7463, float %7461, float %7462, float %7463)  ; Dot3(ax,ay,az,bx,by,bz)
  %7465 = call float @dx.op.unary.f32(i32 24, float %7464)  ; Sqrt(value)
  %7466 = fdiv fast float 1.000000e+00, %7465
  %7467 = fmul fast float %7466, %7461
  %7468 = fmul fast float %7466, %7462
  %7469 = fmul fast float %7466, %7463
  %7470 = fadd fast float %7465, %7419
  %7471 = fdiv fast float 1.000000e+00, %7470
  %7472 = fmul float %7430, %7471
  %7473 = fmul float %7472, %7472
  %7474 = call float @dx.op.unary.f32(i32 7, float %7473)  ; Saturate(value)
  br i1 %7460, label %7475, label %7496

; <label>:7475                                    ; preds = %7399
  %7476 = fmul fast float %7441, %7422
  %7477 = fmul fast float %7441, %7423
  %7478 = fmul fast float %7441, %7424
  %7479 = fadd fast float %7461, %7476
  %7480 = fadd fast float %7462, %7477
  %7481 = fadd fast float %7463, %7478
  %7482 = call float @dx.op.dot3.f32(i32 55, float %7479, float %7480, float %7481, float %7479, float %7480, float %7481)  ; Dot3(ax,ay,az,bx,by,bz)
  %7483 = call float @dx.op.unary.f32(i32 25, float %7482)  ; Rsqrt(value)
  %7484 = fmul fast float %7483, %7479
  %7485 = fmul fast float %7483, %7480
  %7486 = fmul fast float %7483, %7481
  %7487 = fsub fast float %197, %7433
  %7488 = fsub fast float %198, %7434
  %7489 = fsub fast float %199, %7435
  %7490 = fsub fast float -0.000000e+00, %7487
  %7491 = fsub fast float -0.000000e+00, %7488
  %7492 = fsub fast float -0.000000e+00, %7489
  %7493 = call float @dx.op.dot3.f32(i32 55, float %7490, float %7491, float %7492, float %7422, float %7423, float %7424)  ; Dot3(ax,ay,az,bx,by,bz)
  %7494 = fcmp fast ogt float %7493, 0.000000e+00
  %7495 = uitofp i1 %7494 to float
  br label %7496

; <label>:7496                                    ; preds = %7475, %7399
  %7497 = phi float [ %7495, %7475 ], [ 1.000000e+00, %7399 ]
  %7498 = phi float [ %7484, %7475 ], [ %7467, %7399 ]
  %7499 = phi float [ %7485, %7475 ], [ %7468, %7399 ]
  %7500 = phi float [ %7486, %7475 ], [ %7469, %7399 ]
  %7501 = call float @dx.op.dot3.f32(i32 55, float %7422, float %7423, float %7424, float %7498, float %7499, float %7500)  ; Dot3(ax,ay,az,bx,by,bz)
  %7502 = fmul fast float %7501, %7501
  %7503 = call float @dx.op.unary.f32(i32 7, float %7502)  ; Saturate(value)
  %7504 = fsub fast float 1.000000e+00, %7503
  %7505 = fmul fast float %7504, 5.000000e-01
  %7506 = fcmp fast ogt float %7501, 0.000000e+00
  %7507 = fsub fast float 1.000000e+00, %7505
  %7508 = select i1 %7506, float %7505, float %7507
  %7509 = fmul fast float %7508, %7457
  %7510 = fadd fast float %7509, %7455
  %7511 = fmul fast float %7510, 0x3EF0001000000000
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7511, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = fmul fast float %7501, %7439
  %7515 = fadd fast float %7514, %7440
  %7516 = call float @dx.op.unary.f32(i32 7, float %7515)  ; Saturate(value)
  %7517 = select i1 %7460, float 1.000000e+00, float %7516
  %7518 = select i1 %7460, float %7516, float 1.000000e+00
  %7519 = fmul fast float %7465, %7436
  %7520 = fsub fast float 1.000000e+00, %7519
  %7521 = fmul fast float %7520, %7442
  %7522 = call float @dx.op.unary.f32(i32 7, float %7521)  ; Saturate(value)
  %7523 = fmul fast float %7522, %7518
  %7524 = fmul fast float %7523, 2.000000e+00
  %7525 = fsub fast float 3.000000e+00, %7524
  %7526 = fmul fast float %7513, %7497
  %7527 = fmul fast float %7523, %7523
  %7528 = fmul fast float %7527, %7526
  %7529 = fmul fast float %7528, %7525
  %7530 = call float @dx.op.binary.f32(i32 36, float %7529, float %7529)  ; FMin(a,b)
  %7531 = call float @dx.op.binary.f32(i32 36, float %7529, float %7530)  ; FMin(a,b)
  %7532 = fcmp fast ogt float %7531, 0.000000e+00
  br i1 %7532, label %7541, label %7533, !dx.controlflow.hints !126

; <label>:7533                                    ; preds = %7895, %7641, %7496
  %7534 = phi float [ %7401, %7641 ], [ %7401, %7496 ], [ %7935, %7895 ]
  %7535 = phi float [ %7402, %7641 ], [ %7402, %7496 ], [ %7936, %7895 ]
  %7536 = phi float [ %7403, %7641 ], [ %7403, %7496 ], [ %7937, %7895 ]
  %7537 = phi float [ %7404, %7641 ], [ %7404, %7496 ], [ %7929, %7895 ]
  %7538 = phi float [ %7405, %7641 ], [ %7405, %7496 ], [ %7930, %7895 ]
  %7539 = phi float [ %7406, %7641 ], [ %7406, %7496 ], [ %7931, %7895 ]
  %7540 = icmp eq i32 %7400, %7410
  br i1 %7540, label %7938, label %7399

; <label>:7541                                    ; preds = %7496
  %7542 = icmp eq i32 %7458, 255
  br i1 %7542, label %7641, label %7543, !dx.controlflow.hints !127

; <label>:7543                                    ; preds = %7541
  %7544 = mul nuw nsw i32 %7458, 176
  %7545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7544, i32 undef)  ; BufferLoad(srv,index,wot)
  %7546 = extractvalue %dx.types.ResRet.f32 %7545, 0
  %7547 = extractvalue %dx.types.ResRet.f32 %7545, 1
  %7548 = extractvalue %dx.types.ResRet.f32 %7545, 2
  %7549 = extractvalue %dx.types.ResRet.f32 %7545, 3
  %7550 = add nuw nsw i32 %7544, 16
  %7551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7550, i32 undef)  ; BufferLoad(srv,index,wot)
  %7552 = extractvalue %dx.types.ResRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.ResRet.f32 %7551, 1
  %7554 = add nuw nsw i32 %7544, 32
  %7555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7554, i32 undef)  ; BufferLoad(srv,index,wot)
  %7556 = extractvalue %dx.types.ResRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.ResRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.ResRet.f32 %7555, 2
  %7559 = add nuw nsw i32 %7544, 48
  %7560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7559, i32 undef)  ; BufferLoad(srv,index,wot)
  %7561 = extractvalue %dx.types.ResRet.f32 %7560, 0
  %7562 = extractvalue %dx.types.ResRet.f32 %7560, 1
  %7563 = extractvalue %dx.types.ResRet.f32 %7560, 2
  %7564 = extractvalue %dx.types.ResRet.f32 %7560, 3
  %7565 = add nuw nsw i32 %7544, 64
  %7566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7565, i32 undef)  ; BufferLoad(srv,index,wot)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.ResRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.ResRet.f32 %7566, 2
  %7570 = extractvalue %dx.types.ResRet.f32 %7566, 3
  %7571 = add nuw nsw i32 %7544, 80
  %7572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7571, i32 undef)  ; BufferLoad(srv,index,wot)
  %7573 = extractvalue %dx.types.ResRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.ResRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.ResRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.ResRet.f32 %7572, 3
  %7577 = add nuw nsw i32 %7544, 96
  %7578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7577, i32 undef)  ; BufferLoad(srv,index,wot)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.ResRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.ResRet.f32 %7578, 2
  %7582 = extractvalue %dx.types.ResRet.f32 %7578, 3
  %7583 = bitcast float %7553 to i32
  %7584 = fmul fast float %7558, %117
  %7585 = fmul fast float %7558, %118
  %7586 = fmul fast float %7558, %119
  %7587 = fadd fast float %7584, %197
  %7588 = fadd fast float %7585, %198
  %7589 = fadd fast float %7586, %199
  %7590 = fmul fast float %7587, %7561
  %7591 = call float @dx.op.tertiary.f32(i32 46, float %7588, float %7567, float %7590)  ; FMad(a,b,c)
  %7592 = call float @dx.op.tertiary.f32(i32 46, float %7589, float %7573, float %7591)  ; FMad(a,b,c)
  %7593 = fadd fast float %7592, %7579
  %7594 = fmul fast float %7587, %7562
  %7595 = call float @dx.op.tertiary.f32(i32 46, float %7588, float %7568, float %7594)  ; FMad(a,b,c)
  %7596 = call float @dx.op.tertiary.f32(i32 46, float %7589, float %7574, float %7595)  ; FMad(a,b,c)
  %7597 = fadd fast float %7596, %7580
  %7598 = fmul fast float %7587, %7563
  %7599 = call float @dx.op.tertiary.f32(i32 46, float %7588, float %7569, float %7598)  ; FMad(a,b,c)
  %7600 = call float @dx.op.tertiary.f32(i32 46, float %7589, float %7575, float %7599)  ; FMad(a,b,c)
  %7601 = fadd fast float %7600, %7581
  %7602 = fmul fast float %7587, %7564
  %7603 = call float @dx.op.tertiary.f32(i32 46, float %7588, float %7570, float %7602)  ; FMad(a,b,c)
  %7604 = call float @dx.op.tertiary.f32(i32 46, float %7589, float %7576, float %7603)  ; FMad(a,b,c)
  %7605 = fadd fast float %7604, %7582
  %7606 = fdiv fast float %7593, %7605
  %7607 = fdiv fast float %7597, %7605
  %7608 = fdiv fast float %7601, %7605
  %7609 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7608)  ; FMax(a,b)
  %7610 = fmul fast float %280, 0x401921FB60000000
  %7611 = call float @dx.op.unary.f32(i32 13, float %7610)  ; Sin(value)
  %7612 = call float @dx.op.unary.f32(i32 12, float %7610)  ; Cos(value)
  %7613 = fsub fast float -0.000000e+00, %7611
  %7614 = fmul fast float %7548, 5.000000e-01
  %7615 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7616 = call float @dx.op.unary.f32(i32 22, float %7615)  ; Frc(value)
  %7617 = fmul fast float %7616, 0x404A7DD040000000
  %7618 = call float @dx.op.unary.f32(i32 22, float %7617)  ; Frc(value)
  %7619 = fmul fast float %7618, %7557
  %7620 = fadd fast float %7619, %7614
  %7621 = call float @dx.op.tertiary.f32(i32 46, float %7620, float %7613, float 0.000000e+00)  ; FMad(a,b,c)
  %7622 = call float @dx.op.tertiary.f32(i32 46, float %7620, float %7612, float 0.000000e+00)  ; FMad(a,b,c)
  %7623 = fadd fast float %7621, %7606
  %7624 = fadd fast float %7622, %7607
  %7625 = fmul fast float %7623, %7552
  %7626 = fmul fast float %7624, %7552
  %7627 = call float @dx.op.binary.f32(i32 35, float %7625, float %7548)  ; FMax(a,b)
  %7628 = call float @dx.op.binary.f32(i32 35, float %7626, float %7548)  ; FMax(a,b)
  %7629 = call float @dx.op.binary.f32(i32 36, float %7627, float %7549)  ; FMin(a,b)
  %7630 = call float @dx.op.binary.f32(i32 36, float %7628, float %7549)  ; FMin(a,b)
  %7631 = fadd fast float %7629, %7546
  %7632 = fadd fast float %7630, %7547
  %7633 = uitofp i32 %7583 to float
  %7634 = fadd fast float %7609, %7556
  %7635 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7631, float %7632, float %7633, float undef, i32 0, i32 0, i32 undef, float %7634)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7636 = extractvalue %dx.types.ResRet.f32 %7635, 0
  %7637 = fadd fast float %7636, -1.000000e+00
  %7638 = fmul fast float %7637, %7517
  %7639 = fadd fast float %7638, 1.000000e+00
  %7640 = fmul fast float %7639, %7529
  br label %7641

; <label>:7641                                    ; preds = %7543, %7541
  %7642 = phi float [ %7640, %7543 ], [ %7529, %7541 ]
  %7643 = call float @dx.op.binary.f32(i32 36, float %7642, float %7642)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7642, float %7643)  ; FMin(a,b)
  %7645 = fcmp fast ogt float %7644, 0.000000e+00
  br i1 %7645, label %7646, label %7533, !dx.controlflow.hints !128

; <label>:7646                                    ; preds = %7641
  %7647 = fmul fast float %7642, %7451
  %7648 = fmul fast float %7642, %7452
  %7649 = fmul fast float %7642, %7453
  %7650 = fsub fast float %7435, %5063
  %7651 = fcmp fast ogt float %7650, 0.000000e+00
  %7652 = fsub fast float %199, %5063
  %7653 = fcmp fast ogt float %7652, 0.000000e+00
  %7654 = xor i1 %7653, %7651
  %7655 = fsub fast float %5063, %7435
  %7656 = fmul fast float %7655, 2.000000e+00
  %7657 = fadd fast float %7656, %7435
  %7658 = select i1 %7654, float %7435, float %7657
  %7659 = fsub fast float %7658, %199
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7461, float %7462, float %7659, float %7461, float %7462, float %7659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.unary.f32(i32 25, float %7660)  ; Rsqrt(value)
  %7662 = fmul fast float %7661, %7461
  %7663 = fmul fast float %7661, %7462
  %7664 = fmul fast float %7661, %7659
  %7665 = fsub fast float %5063, %199
  %7666 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7665)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7662, float %7663, float %7664)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = fdiv fast float 1.000000e+00, %7667
  %7669 = fmul fast float %7668, %7666
  %7670 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7652, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7671 = fcmp fast ogt float %7670, 0.000000e+00
  %7672 = fcmp fast olt float %7670, 0.000000e+00
  %7673 = zext i1 %7671 to i32
  %7674 = zext i1 %7672 to i32
  %7675 = sub nsw i32 %7673, %7674
  %7676 = sitofp i32 %7675 to float
  %7677 = fsub fast float %7658, %5063
  %7678 = call float @dx.op.dot3.f32(i32 55, float %7461, float %7462, float %7677, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7679 = fcmp fast ogt float %7678, 0.000000e+00
  %7680 = fcmp fast olt float %7678, 0.000000e+00
  %7681 = zext i1 %7679 to i32
  %7682 = zext i1 %7680 to i32
  %7683 = sub nsw i32 %7681, %7682
  %7684 = sitofp i32 %7683 to float
  %7685 = fcmp fast une float %7676, %7684
  br i1 %7685, label %7686, label %7696

; <label>:7686                                    ; preds = %7646
  %7687 = fmul fast float %7669, %7664
  %7688 = fmul fast float %7669, %7663
  %7689 = fmul fast float %7669, %7662
  %7690 = fmul fast float %7689, %7689
  %7691 = fmul fast float %7688, %7688
  %7692 = fadd fast float %7690, %7691
  %7693 = fmul fast float %7687, %7687
  %7694 = fadd fast float %7692, %7693
  %7695 = call float @dx.op.unary.f32(i32 24, float %7694)  ; Sqrt(value)
  br label %7708

; <label>:7696                                    ; preds = %7646
  %7697 = icmp slt i32 %7675, 0
  br i1 %7697, label %7698, label %7708

; <label>:7698                                    ; preds = %7696
  %7699 = fsub fast float %197, %7433
  %7700 = fsub fast float %198, %7434
  %7701 = fsub fast float %199, %7658
  %7702 = fmul fast float %7699, %7699
  %7703 = fmul fast float %7700, %7700
  %7704 = fadd fast float %7702, %7703
  %7705 = fmul fast float %7701, %7701
  %7706 = fadd fast float %7704, %7705
  %7707 = call float @dx.op.unary.f32(i32 24, float %7706)  ; Sqrt(value)
  br label %7708

; <label>:7708                                    ; preds = %7698, %7696, %7686
  %7709 = phi float [ %7695, %7686 ], [ %7707, %7698 ], [ 0.000000e+00, %7696 ]
  %7710 = and i1 %7653, %7651
  %7711 = fsub fast float -0.000000e+00, %7709
  %7712 = select i1 %7710, float -0.000000e+00, float %7711
  %7713 = fmul fast float %5064, 0x3FF7154760000000
  %7714 = fmul fast float %7713, %7712
  %7715 = fmul fast float %5065, 0x3FF7154760000000
  %7716 = fmul fast float %7715, %7712
  %7717 = fmul fast float %5066, 0x3FF7154760000000
  %7718 = fmul fast float %7717, %7712
  %7719 = call float @dx.op.unary.f32(i32 21, float %7714)  ; Exp(value)
  %7720 = call float @dx.op.unary.f32(i32 21, float %7716)  ; Exp(value)
  %7721 = call float @dx.op.unary.f32(i32 21, float %7718)  ; Exp(value)
  %7722 = call float @dx.op.unary.f32(i32 7, float %7719)  ; Saturate(value)
  %7723 = call float @dx.op.unary.f32(i32 7, float %7720)  ; Saturate(value)
  %7724 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7725 = fmul fast float %7647, %7722
  %7726 = fmul fast float %7648, %7723
  %7727 = fmul fast float %7649, %7724
  %7728 = fsub fast float %7467, %5889
  %7729 = fsub fast float %7468, %5890
  %7730 = fsub fast float %7469, %5891
  %7731 = call float @dx.op.dot3.f32(i32 55, float %7728, float %7729, float %7730, float %7728, float %7729, float %7730)  ; Dot3(ax,ay,az,bx,by,bz)
  %7732 = call float @dx.op.unary.f32(i32 25, float %7731)  ; Rsqrt(value)
  %7733 = fmul fast float %7732, %7728
  %7734 = fmul fast float %7732, %7729
  %7735 = fmul fast float %7732, %7730
  %7736 = call float @dx.op.dot3.f32(i32 55, float %7467, float %7468, float %7469, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %7737 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %7733, float %7734, float %7735)  ; Dot3(ax,ay,az,bx,by,bz)
  %7738 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7739 = fmul fast float %7738, %7474
  %7740 = fmul fast float %7738, %7738
  %7741 = fmul fast float %7740, %5910
  %7742 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7743 = fmul fast float %7739, %7742
  %7744 = bitcast float %7464 to i32
  %7745 = ashr i32 %7744, 1
  %7746 = sub nsw i32 1597463007, %7745
  %7747 = bitcast i32 %7746 to float
  %7748 = fmul fast float %7747, %7461
  %7749 = fmul fast float %7747, %7462
  %7750 = fmul fast float %7747, %7463
  %7751 = fsub fast float %7748, %5889
  %7752 = fsub fast float %7749, %5890
  %7753 = fsub fast float %7750, %5891
  %7754 = call float @dx.op.dot3.f32(i32 55, float %7751, float %7752, float %7753, float %7751, float %7752, float %7753)  ; Dot3(ax,ay,az,bx,by,bz)
  %7755 = call float @dx.op.unary.f32(i32 25, float %7754)  ; Rsqrt(value)
  %7756 = fmul fast float %7751, %7755
  %7757 = fmul fast float %7752, %7755
  %7758 = fmul fast float %7753, %7755
  %7759 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %7756, float %7757, float %7758)  ; Dot3(ax,ay,az,bx,by,bz)
  %7760 = fmul fast float %7759, %7759
  %7761 = call float @dx.op.unary.f32(i32 6, float %7736)  ; FAbs(value)
  %7762 = fsub fast float 1.000000e+00, %5852
  %7763 = call float @dx.op.binary.f32(i32 35, float %7762, float 0x3F847AE140000000)  ; FMax(a,b)
  %7764 = fmul fast float %7763, %7763
  %7765 = fmul fast float %7764, %7764
  %7766 = fsub fast float 1.000000e+00, %7765
  %7767 = fmul fast float %5897, %5897
  %7768 = fmul fast float %7767, %7766
  %7769 = fadd fast float %7768, %7765
  %7770 = bitcast float %7769 to i32
  %7771 = ashr i32 %7770, 1
  %7772 = add nsw i32 %7771, 532487669
  %7773 = bitcast i32 %7772 to float
  %7774 = fadd fast float %7773, %5897
  %7775 = fmul fast float %7765, %7760
  %7776 = fsub fast float 1.000000e+00, %7760
  %7777 = fadd fast float %7776, %7775
  %7778 = fmul fast float %7761, %7761
  %7779 = fmul fast float %7778, %7766
  %7780 = fadd fast float %7779, %7765
  %7781 = bitcast float %7780 to i32
  %7782 = ashr i32 %7781, 1
  %7783 = add nsw i32 %7782, 532487669
  %7784 = bitcast i32 %7783 to float
  %7785 = fadd fast float %7784, %7761
  %7786 = fmul fast float %7777, %7777
  %7787 = fmul fast float %7786, %7774
  %7788 = fmul fast float %7787, %7785
  %7789 = fdiv fast float 1.000000e+00, %7788
  %7790 = bitcast float %7765 to i32
  %7791 = sitofp i32 %7790 to float
  %7792 = fmul fast float %7791, 0x3FE7F73180000000
  %7793 = fadd fast float %7792, 0x41AFE27C40000000
  %7794 = fptosi float %7793 to i32
  %7795 = bitcast i32 %7794 to float
  %7796 = fmul fast float %7430, 0x3FD80E9D60000000
  %7797 = fmul fast float %7796, %7747
  %7798 = fadd fast float %7795, %7797
  %7799 = bitcast float %7798 to i32
  %7800 = sub nsw i32 2129859010, %7799
  %7801 = bitcast i32 %7800 to float
  %7802 = fmul fast float %7765, %7789
  %7803 = fmul fast float %7802, %7795
  %7804 = fmul fast float %7803, %7801
  %7805 = fmul fast float %6014, 0x3FF9999980000000
  %7806 = fsub fast float 5.000000e+00, %7805
  %7807 = call float @dx.op.unary.f32(i32 6, float %7737)  ; FAbs(value)
  %7808 = fsub fast float 1.000000e+00, %7807
  %7809 = fmul fast float %6014, 0x41D9660740000000
  %7810 = fadd fast float %7809, 0xC1EFBF8940000000
  %7811 = bitcast float %7808 to i32
  %7812 = sitofp i32 %7811 to float
  %7813 = fmul fast float %7812, %7806
  %7814 = fadd fast float %7810, %7813
  %7815 = fptosi float %7814 to i32
  %7816 = bitcast i32 %7815 to float
  %7817 = fsub fast float 1.000000e+00, %5843
  %7818 = fsub fast float 1.000000e+00, %5844
  %7819 = fsub fast float 1.000000e+00, %5895
  %7820 = fmul fast float %7816, %7817
  %7821 = fmul fast float %7816, %7818
  %7822 = fmul fast float %7816, %7819
  %7823 = fadd fast float %7820, %5843
  %7824 = fadd fast float %7821, %5844
  %7825 = fadd fast float %7822, %5895
  br i1 %6037, label %7826, label %7849

; <label>:7826                                    ; preds = %7708
  %7827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4658, float %7807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7828 = extractvalue %dx.types.ResRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.ResRet.f32 %7827, 1
  %7830 = extractvalue %dx.types.ResRet.f32 %7827, 2
  %7831 = fadd fast float %7828, -5.000000e-01
  %7832 = fadd fast float %7829, -5.000000e-01
  %7833 = fadd fast float %7830, -5.000000e-01
  %7834 = fmul fast float %5843, 4.000000e+00
  %7835 = fmul fast float %7834, %7817
  %7836 = fmul fast float %7835, %7831
  %7837 = fmul fast float %5844, 4.000000e+00
  %7838 = fmul fast float %7837, %7818
  %7839 = fmul fast float %7838, %7832
  %7840 = fmul fast float %5895, 4.000000e+00
  %7841 = fmul fast float %7840, %7819
  %7842 = fmul fast float %7841, %7833
  %7843 = fadd fast float %7836, %7823
  %7844 = fadd fast float %7839, %7824
  %7845 = fadd fast float %7842, %7825
  %7846 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  %7847 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7848 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  br label %7849

; <label>:7849                                    ; preds = %7826, %7708
  %7850 = phi float [ %7846, %7826 ], [ %7823, %7708 ]
  %7851 = phi float [ %7847, %7826 ], [ %7824, %7708 ]
  %7852 = phi float [ %7848, %7826 ], [ %7825, %7708 ]
  %7853 = fmul fast float %7736, 9.843750e-01
  %7854 = fadd fast float %7853, 7.812500e-03
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7854, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = extractvalue %dx.types.ResRet.f32 %7855, 3
  %7860 = fsub fast float %7858, %7856
  %7861 = fsub fast float %7859, %7857
  %7862 = fmul fast float %7860, %6024
  %7863 = fmul fast float %7861, %6024
  %7864 = fadd fast float %7862, %7856
  %7865 = fadd fast float %7863, %7857
  %7866 = fmul fast float %7864, %5843
  %7867 = fmul fast float %7864, %5844
  %7868 = fmul fast float %7864, %5895
  %7869 = fadd fast float %7866, %7865
  %7870 = fadd fast float %7867, %7865
  %7871 = fadd fast float %7868, %7865
  br i1 %6037, label %7872, label %7895

; <label>:7872                                    ; preds = %7849
  %7873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4658, float %7736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 0
  %7875 = extractvalue %dx.types.ResRet.f32 %7873, 1
  %7876 = extractvalue %dx.types.ResRet.f32 %7873, 2
  %7877 = fadd fast float %7874, -5.000000e-01
  %7878 = fadd fast float %7875, -5.000000e-01
  %7879 = fadd fast float %7876, -5.000000e-01
  %7880 = fmul fast float %5843, 4.000000e+00
  %7881 = fmul fast float %7880, %7817
  %7882 = fmul fast float %7881, %7877
  %7883 = fmul fast float %5844, 4.000000e+00
  %7884 = fmul fast float %7883, %7818
  %7885 = fmul fast float %7884, %7878
  %7886 = fmul fast float %5895, 4.000000e+00
  %7887 = fmul fast float %7886, %7819
  %7888 = fmul fast float %7887, %7879
  %7889 = fadd fast float %7882, %7869
  %7890 = fadd fast float %7885, %7870
  %7891 = fadd fast float %7888, %7871
  %7892 = call float @dx.op.unary.f32(i32 7, float %7889)  ; Saturate(value)
  %7893 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7894 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  br label %7895

; <label>:7895                                    ; preds = %7872, %7849
  %7896 = phi float [ %7892, %7872 ], [ %7869, %7849 ]
  %7897 = phi float [ %7893, %7872 ], [ %7870, %7849 ]
  %7898 = phi float [ %7894, %7872 ], [ %7871, %7849 ]
  %7899 = call float @dx.op.binary.f32(i32 35, float %7897, float %7898)  ; FMax(a,b)
  %7900 = call float @dx.op.binary.f32(i32 35, float %7896, float %7899)  ; FMax(a,b)
  %7901 = fsub fast float 1.000000e+00, %7900
  %7902 = fmul fast float %7850, %7804
  %7903 = fmul fast float %7851, %7804
  %7904 = fmul fast float %7852, %7804
  %7905 = fsub fast float 1.000000e+00, %7737
  %7906 = bitcast float %7905 to i32
  %7907 = sitofp i32 %7906 to float
  %7908 = fmul fast float %7907, 5.000000e+00
  %7909 = fadd fast float %7908, 0xC1EFBF8940000000
  %7910 = fptosi float %7909 to i32
  %7911 = bitcast i32 %7910 to float
  %7912 = fmul fast float %7911, %4659
  %7913 = fmul fast float %7901, %7912
  %7914 = fmul fast float %7913, %6140
  %7915 = fmul fast float %7913, %6141
  %7916 = fmul fast float %7913, %6142
  %7917 = fadd fast float %7914, %7902
  %7918 = fadd fast float %7915, %7903
  %7919 = fadd fast float %7916, %7904
  %7920 = fmul fast float %7725, %4655
  %7921 = fmul fast float %7920, %7743
  %7922 = fmul fast float %7921, %7901
  %7923 = fmul fast float %7726, %4655
  %7924 = fmul fast float %7923, %7743
  %7925 = fmul fast float %7924, %7901
  %7926 = fmul fast float %7727, %4655
  %7927 = fmul fast float %7926, %7743
  %7928 = fmul fast float %7927, %7901
  %7929 = fadd fast float %7922, %7404
  %7930 = fadd fast float %7925, %7405
  %7931 = fadd fast float %7928, %7406
  %7932 = fmul fast float %7921, %7917
  %7933 = fmul fast float %7924, %7918
  %7934 = fmul fast float %7927, %7919
  %7935 = fadd fast float %7932, %7401
  %7936 = fadd fast float %7933, %7402
  %7937 = fadd fast float %7934, %7403
  br label %7533

; <label>:7938                                    ; preds = %7533
  br label %7939

; <label>:7939                                    ; preds = %7938, %7367
  %7940 = phi float [ %7369, %7367 ], [ %7534, %7938 ]
  %7941 = phi float [ %7370, %7367 ], [ %7535, %7938 ]
  %7942 = phi float [ %7371, %7367 ], [ %7536, %7938 ]
  %7943 = phi float [ %7372, %7367 ], [ %7537, %7938 ]
  %7944 = phi float [ %7373, %7367 ], [ %7538, %7938 ]
  %7945 = phi float [ %7374, %7367 ], [ %7539, %7938 ]
  %7946 = add i32 %7368, 1
  %7947 = icmp ugt i32 %7946, %7364
  br i1 %7947, label %7948, label %7367

; <label>:7948                                    ; preds = %7939
  br label %7949

; <label>:7949                                    ; preds = %7948, %7317, %7307
  %7950 = phi float [ %7308, %7307 ], [ %7308, %7317 ], [ %7940, %7948 ]
  %7951 = phi float [ %7309, %7307 ], [ %7309, %7317 ], [ %7941, %7948 ]
  %7952 = phi float [ %7310, %7307 ], [ %7310, %7317 ], [ %7942, %7948 ]
  %7953 = phi float [ %7311, %7307 ], [ %7311, %7317 ], [ %7943, %7948 ]
  %7954 = phi float [ %7312, %7307 ], [ %7312, %7317 ], [ %7944, %7948 ]
  %7955 = phi float [ %7313, %7307 ], [ %7313, %7317 ], [ %7945, %7948 ]
  %7956 = fmul fast float %4655, %4655
  %7957 = fmul fast float %7956, %6176
  %7958 = fsub fast float -0.000000e+00, %7957
  %7959 = fmul fast float %7956, %6177
  %7960 = fsub fast float -0.000000e+00, %7959
  %7961 = fmul fast float %7956, %6178
  %7962 = fsub fast float -0.000000e+00, %7961
  %7963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.f32 %7963, 0
  %7965 = fmul fast float %7964, %6182
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 3
  %7968 = fsub fast float 1.000000e+00, %4663
  %7969 = call float @dx.op.unary.f32(i32 7, float %7968)  ; Saturate(value)
  %7970 = fadd fast float %7955, %4661
  %7971 = fmul fast float %7970, %4663
  %7972 = fmul fast float %7969, %7967
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 3
  %7975 = fmul fast float %7953, %5849
  %7976 = fmul fast float %7954, %5850
  %7977 = fmul fast float %7955, %5851
  %7978 = fcmp fast ogt float %101, %232
  %7979 = and i1 %7978, %5069
  %7980 = or i1 %5075, %7979
  %7981 = icmp eq i32 %5068, 2
  %7982 = fcmp fast ole float %101, %232
  %7983 = and i1 %7982, %7981
  %7984 = or i1 %7983, %7980
  br i1 %7979, label %7985, label %8242

; <label>:7985                                    ; preds = %7949
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7988 = extractvalue %dx.types.CBufRet.f32 %7986, 3
  %7989 = fmul fast float %7987, %110
  %7990 = fmul fast float %7988, %111
  %7991 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7992 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7991, float %7992, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.ResRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.ResRet.f32 %7993, 2
  %7997 = extractvalue %dx.types.ResRet.f32 %7993, 3
  %7998 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7991, float %7992, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  %8002 = extractvalue %dx.types.ResRet.f32 %7998, 3
  %8003 = call float @dx.op.binary.f32(i32 35, float %7995, float %7996)  ; FMax(a,b)
  %8004 = call float @dx.op.binary.f32(i32 35, float %7994, float %8003)  ; FMax(a,b)
  %8005 = call float @dx.op.binary.f32(i32 35, float %8004, float %7997)  ; FMax(a,b)
  %8006 = call float @dx.op.binary.f32(i32 36, float %8000, float %8001)  ; FMin(a,b)
  %8007 = call float @dx.op.binary.f32(i32 36, float %7999, float %8006)  ; FMin(a,b)
  %8008 = call float @dx.op.binary.f32(i32 36, float %8007, float %8002)  ; FMin(a,b)
  %8009 = fmul fast float %8005, 2.550000e+02
  %8010 = fadd fast float %8009, 0x3F70101020000000
  %8011 = fptoui float %8010 to i32
  %8012 = fmul fast float %8008, 2.550000e+02
  %8013 = fadd fast float %8012, 0x3F70101020000000
  %8014 = fptoui float %8013 to i32
  %8015 = icmp ult i32 %8011, %8014
  br i1 %8015, label %8016, label %8184

; <label>:8016                                    ; preds = %7985
  %8017 = fcmp fast ogt float %100, 9.843750e-01
  %8018 = fadd fast float %101, -4.000000e+00
  %8019 = select i1 %8017, float -4.000000e+00, float %8018
  %8020 = call float @dx.op.binary.f32(i32 35, float %8019, float 0.000000e+00)  ; FMax(a,b)
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 0
  %8023 = fadd fast float %8022, %8020
  %8024 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8025 = fmul fast float %8023, %8024
  %8026 = call float @dx.op.unary.f32(i32 23, float %8025)  ; Log(value)
  %8027 = extractvalue %dx.types.CBufRet.f32 %8021, 3
  %8028 = fmul fast float %8027, %8026
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8031 = fmul fast float %8028, %8030
  %8032 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8033 = uitofp i32 %8011 to float
  %8034 = uitofp i32 %8014 to float
  %8035 = fadd fast float %8033, 5.000000e-01
  %8036 = fadd fast float %8034, 5.000000e-01
  %8037 = fmul fast float %8030, %8035
  %8038 = fmul fast float %8030, %8036
  %8039 = fadd fast float %8037, 0x3F0FFB4800000000
  %8040 = fadd fast float %8038, 0xBF0FFB4800000000
  %8041 = call float @dx.op.binary.f32(i32 35, float %8032, float %8039)  ; FMax(a,b)
  %8042 = call float @dx.op.binary.f32(i32 36, float %8041, float %8040)  ; FMin(a,b)
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 1
  %8045 = extractvalue %dx.types.CBufRet.f32 %8043, 2
  %8046 = extractvalue %dx.types.CBufRet.f32 %8043, 0
  %8047 = fmul fast float %8044, %8042
  %8048 = fadd fast float %8046, %8047
  %8049 = fadd fast float %8046, %8045
  %8050 = fsub fast float %8044, %8045
  %8051 = fadd fast float %8050, %8046
  %8052 = call float @dx.op.binary.f32(i32 35, float %8048, float %8049)  ; FMax(a,b)
  %8053 = call float @dx.op.binary.f32(i32 36, float %8052, float %8051)  ; FMin(a,b)
  %8054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7991, float %7992, float %8053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.ResRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.ResRet.f32 %8054, 2
  %8058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.i32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.i32 %8058, 1
  %8061 = uitofp i32 %8059 to float
  %8062 = uitofp i32 %8060 to float
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 0
  %8065 = extractvalue %dx.types.CBufRet.f32 %8063, 1
  %8066 = fmul fast float %8061, %7991
  %8067 = fmul fast float %8062, %7992
  %8068 = fadd fast float %8066, -5.000000e-01
  %8069 = fadd fast float %8067, -5.000000e-01
  %8070 = call float @dx.op.unary.f32(i32 22, float %8068)  ; Frc(value)
  %8071 = call float @dx.op.unary.f32(i32 22, float %8069)  ; Frc(value)
  %8072 = fmul fast float %8070, %8070
  %8073 = fmul fast float %8072, %8070
  %8074 = fsub fast float 3.000000e+00, %8070
  %8075 = fmul fast float %8072, %8074
  %8076 = fmul fast float %8070, 3.000000e+00
  %8077 = fmul fast float %8073, 3.000000e+00
  %8078 = fmul fast float %8072, 6.000000e+00
  %8079 = fsub fast float %8077, %8078
  %8080 = fadd fast float %8079, 4.000000e+00
  %8081 = fmul fast float %8080, 0x3FC5555560000000
  %8082 = fmul fast float %8073, -3.000000e+00
  %8083 = fadd fast float %8072, %8070
  %8084 = fmul fast float %8083, 3.000000e+00
  %8085 = fadd fast float %8082, 1.000000e+00
  %8086 = fadd fast float %8085, %8084
  %8087 = fmul fast float %8073, 0x3FC5555560000000
  %8088 = fmul fast float %8071, %8071
  %8089 = fmul fast float %8088, %8071
  %8090 = fsub fast float 3.000000e+00, %8071
  %8091 = fmul fast float %8088, %8090
  %8092 = fmul fast float %8071, 3.000000e+00
  %8093 = fmul fast float %8089, 3.000000e+00
  %8094 = fmul fast float %8088, 6.000000e+00
  %8095 = fsub fast float %8093, %8094
  %8096 = fadd fast float %8095, 4.000000e+00
  %8097 = fmul fast float %8096, 0x3FC5555560000000
  %8098 = fmul fast float %8089, -3.000000e+00
  %8099 = fadd fast float %8088, %8071
  %8100 = fmul fast float %8099, 3.000000e+00
  %8101 = fadd fast float %8098, 1.000000e+00
  %8102 = fadd fast float %8101, %8100
  %8103 = fmul fast float %8089, 0x3FC5555560000000
  %8104 = fadd fast float %8070, 1.000000e+00
  %8105 = fsub fast float 1.000000e+00, %8076
  %8106 = fadd fast float %8105, %8075
  %8107 = fadd fast float %8106, %8080
  %8108 = fmul fast float %8107, 0x3FC5555560000000
  %8109 = fdiv fast float %8081, %8108
  %8110 = fsub fast float %8104, %8109
  %8111 = fsub fast float 1.000000e+00, %8070
  %8112 = fadd fast float %8086, %8073
  %8113 = fmul fast float %8112, 0x3FC5555560000000
  %8114 = fdiv fast float %8087, %8113
  %8115 = fadd fast float %8111, %8114
  %8116 = fadd fast float %8071, 1.000000e+00
  %8117 = fsub fast float 1.000000e+00, %8092
  %8118 = fadd fast float %8117, %8091
  %8119 = fadd fast float %8118, %8096
  %8120 = fmul fast float %8119, 0x3FC5555560000000
  %8121 = fdiv fast float %8097, %8120
  %8122 = fsub fast float %8116, %8121
  %8123 = fsub fast float 1.000000e+00, %8071
  %8124 = fadd fast float %8102, %8089
  %8125 = fmul fast float %8124, 0x3FC5555560000000
  %8126 = fdiv fast float %8103, %8125
  %8127 = fadd fast float %8126, %8123
  %8128 = fmul fast float %8110, %8064
  %8129 = fsub fast float %7991, %8128
  %8130 = fmul fast float %8115, %8064
  %8131 = fadd fast float %8130, %7991
  %8132 = fmul fast float %8127, %8065
  %8133 = fadd fast float %8132, %7992
  %8134 = fmul fast float %8122, %8065
  %8135 = fsub fast float %7992, %8134
  %8136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8129, float %8135, float %8053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8137 = extractvalue %dx.types.ResRet.f32 %8136, 0
  %8138 = extractvalue %dx.types.ResRet.f32 %8136, 1
  %8139 = extractvalue %dx.types.ResRet.f32 %8136, 2
  %8140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8131, float %8135, float %8053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.ResRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.ResRet.f32 %8140, 2
  %8144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8129, float %8133, float %8053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8145 = extractvalue %dx.types.ResRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.ResRet.f32 %8144, 1
  %8147 = extractvalue %dx.types.ResRet.f32 %8144, 2
  %8148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8131, float %8133, float %8053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8149 = extractvalue %dx.types.ResRet.f32 %8148, 0
  %8150 = extractvalue %dx.types.ResRet.f32 %8148, 1
  %8151 = extractvalue %dx.types.ResRet.f32 %8148, 2
  %8152 = fsub fast float %8145, %8137
  %8153 = fsub fast float %8146, %8138
  %8154 = fsub fast float %8147, %8139
  %8155 = fmul fast float %8152, %8125
  %8156 = fmul fast float %8153, %8125
  %8157 = fmul fast float %8154, %8125
  %8158 = fadd fast float %8155, %8137
  %8159 = fadd fast float %8156, %8138
  %8160 = fadd fast float %8157, %8139
  %8161 = fsub fast float %8149, %8141
  %8162 = fsub fast float %8150, %8142
  %8163 = fsub fast float %8151, %8143
  %8164 = fmul fast float %8161, %8125
  %8165 = fmul fast float %8162, %8125
  %8166 = fmul fast float %8163, %8125
  %8167 = fsub fast float %8141, %8158
  %8168 = fadd fast float %8167, %8164
  %8169 = fsub fast float %8142, %8159
  %8170 = fadd fast float %8169, %8165
  %8171 = fsub fast float %8143, %8160
  %8172 = fadd fast float %8171, %8166
  %8173 = fmul fast float %8168, %8113
  %8174 = fmul fast float %8170, %8113
  %8175 = fmul fast float %8172, %8113
  %8176 = fadd fast float %8173, %8158
  %8177 = fadd fast float %8174, %8159
  %8178 = fadd fast float %8175, %8160
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8181 = fmul fast float %8176, %8180
  %8182 = fmul fast float %8177, %8180
  %8183 = fmul fast float %8178, %8180
  br label %8184

; <label>:8184                                    ; preds = %8016, %7985
  %8185 = phi float [ %8055, %8016 ], [ 1.000000e+00, %7985 ]
  %8186 = phi float [ %8056, %8016 ], [ 1.000000e+00, %7985 ]
  %8187 = phi float [ %8057, %8016 ], [ 1.000000e+00, %7985 ]
  %8188 = phi float [ %8181, %8016 ], [ 0.000000e+00, %7985 ]
  %8189 = phi float [ %8182, %8016 ], [ 0.000000e+00, %7985 ]
  %8190 = phi float [ %8183, %8016 ], [ 0.000000e+00, %7985 ]
  %8191 = fmul fast float %8188, %7958
  %8192 = fmul fast float %8189, %7960
  %8193 = fmul fast float %8190, %7962
  %8194 = call float @dx.op.dot3.f32(i32 55, float %8185, float %8186, float %8187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8195 = call float @dx.op.dot3.f32(i32 55, float %8191, float %8192, float %8193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8196 = select i1 %269, float %8194, float %8185
  %8197 = select i1 %269, float %8194, float %8186
  %8198 = select i1 %269, float 1.000000e+00, float %8187
  %8199 = select i1 %269, float %8195, float %8191
  %8200 = select i1 %269, float 0.000000e+00, float %8192
  %8201 = select i1 %269, float 0.000000e+00, float %8193
  %8202 = fmul fast float %8196, %7975
  %8203 = fmul fast float %8197, %7976
  %8204 = fmul fast float %8198, %7977
  %8205 = fadd fast float %8202, %8199
  %8206 = fadd fast float %8203, %8200
  %8207 = fadd fast float %8201, %8204
  %8208 = fmul fast float %8196, %7950
  %8209 = fmul fast float %8197, %7951
  %8210 = fmul fast float %8198, %7952
  %8211 = fmul fast float %146, %7987
  %8212 = fmul fast float %148, %7988
  %8213 = fsub fast float 1.000000e+00, %8211
  %8214 = fsub fast float 1.000000e+00, %8212
  %8215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8216 = extractvalue %dx.types.CBufRet.f32 %8215, 0
  %8217 = extractvalue %dx.types.CBufRet.f32 %8215, 1
  %8218 = extractvalue %dx.types.CBufRet.f32 %8215, 2
  %8219 = fmul fast float %8213, %8216
  %8220 = fmul fast float %8213, %8217
  %8221 = fmul fast float %8213, %8218
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.CBufRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8226 = fmul fast float %8214, %8223
  %8227 = fmul fast float %8214, %8224
  %8228 = fmul fast float %8214, %8225
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 0
  %8231 = extractvalue %dx.types.CBufRet.f32 %8229, 1
  %8232 = extractvalue %dx.types.CBufRet.f32 %8229, 2
  %8233 = fadd fast float %8226, %8230
  %8234 = fadd fast float %8233, %8219
  %8235 = fadd fast float %8227, %8231
  %8236 = fadd fast float %8235, %8220
  %8237 = fadd fast float %8228, %8232
  %8238 = fadd fast float %8237, %8221
  %8239 = fmul fast float %8234, %232
  %8240 = fmul fast float %8236, %232
  %8241 = fmul fast float %8238, %232
  br label %8242

; <label>:8242                                    ; preds = %8184, %7949
  %8243 = phi float [ %8239, %8184 ], [ %197, %7949 ]
  %8244 = phi float [ %8240, %8184 ], [ %198, %7949 ]
  %8245 = phi float [ %8241, %8184 ], [ %199, %7949 ]
  %8246 = phi float [ %232, %8184 ], [ %101, %7949 ]
  %8247 = phi float [ %8205, %8184 ], [ %7975, %7949 ]
  %8248 = phi float [ %8206, %8184 ], [ %7976, %7949 ]
  %8249 = phi float [ %8207, %8184 ], [ %7977, %7949 ]
  %8250 = phi float [ %8208, %8184 ], [ %7950, %7949 ]
  %8251 = phi float [ %8209, %8184 ], [ %7951, %7949 ]
  %8252 = phi float [ %8210, %8184 ], [ %7952, %7949 ]
  %8253 = phi float [ %8185, %8184 ], [ 1.000000e+00, %7949 ]
  br i1 %7984, label %9408, label %8254

; <label>:8254                                    ; preds = %8242
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8264 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8273 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8274 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 3
  %8279 = extractvalue %dx.types.CBufRet.f32 %8277, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8277, 1
  %8281 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8282 = fcmp fast olt float %8281, -5.000000e-01
  %8283 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8245, float %8243, float %8244, float %8245)  ; Dot3(ax,ay,az,bx,by,bz)
  %8284 = call float @dx.op.unary.f32(i32 25, float %8283)  ; Rsqrt(value)
  %8285 = fmul fast float %8284, %8283
  %8286 = fmul fast float %8284, %8243
  %8287 = fmul fast float %8284, %8244
  %8288 = fmul fast float %8284, %8245
  %8289 = fadd fast float %8285, %8259
  %8290 = call float @dx.op.dot3.f32(i32 55, float %8286, float %8287, float %8288, float %8256, float %8257, float %8258)  ; Dot3(ax,ay,az,bx,by,bz)
  %8291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.i32 %8291, 1
  %8293 = and i32 %8292, 1
  %8294 = icmp ne i32 %8293, 0
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 2
  %8297 = fcmp fast ogt float %8296, 0.000000e+00
  %8298 = and i1 %8294, %8297
  br i1 %8298, label %8299, label %8705, !dx.controlflow.hints !129

; <label>:8299                                    ; preds = %8254
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 3
  %8302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8303 = extractvalue %dx.types.CBufRet.f32 %8302, 2
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 2
  %8306 = fsub fast float %8303, %8305
  %8307 = and i32 %8292, 2
  %8308 = extractvalue %dx.types.CBufRet.i32 %8291, 0
  %8309 = call i32 @dx.op.binary.i32(i32 40, i32 %8308, i32 3)  ; UMin(a,b)
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.CBufRet.f32 %8304, 0
  %8314 = extractvalue %dx.types.CBufRet.f32 %8304, 1
  %8315 = fsub fast float %8311, %8313
  %8316 = fsub fast float %8312, %8314
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 0
  %8319 = fcmp fast ogt float %8318, 0.000000e+00
  %8320 = fsub fast float -0.000000e+00, %8315
  %8321 = fsub fast float -0.000000e+00, %8316
  %8322 = call float @dx.op.dot2.f32(i32 54, float %8286, float %8287, float %8286, float %8287)  ; Dot2(ax,ay,bx,by)
  %8323 = call float @dx.op.dot2.f32(i32 54, float %8286, float %8287, float %8320, float %8321)  ; Dot2(ax,ay,bx,by)
  %8324 = fmul fast float %8323, 2.000000e+00
  %8325 = call float @dx.op.dot2.f32(i32 54, float %8320, float %8321, float %8320, float %8321)  ; Dot2(ax,ay,bx,by)
  %8326 = fmul fast float %8318, %8318
  %8327 = fsub fast float %8325, %8326
  %8328 = fmul fast float %8324, %8324
  %8329 = fmul fast float %8322, 4.000000e+00
  %8330 = fmul fast float %8329, %8327
  %8331 = fsub fast float %8328, %8330
  %8332 = fcmp fast ogt float %8331, 0.000000e+00
  br i1 %8332, label %8333, label %8348

; <label>:8333                                    ; preds = %8299
  %8334 = fcmp fast ogt float %8324, 0.000000e+00
  %8335 = call float @dx.op.unary.f32(i32 24, float %8331)  ; Sqrt(value)
  %8336 = fsub fast float -0.000000e+00, %8335
  %8337 = select i1 %8334, float %8335, float %8336
  %8338 = fadd fast float %8337, %8324
  %8339 = fmul float %8338, -5.000000e-01
  %8340 = fdiv fast float %8339, %8322
  %8341 = call float @dx.op.binary.f32(i32 35, float %8340, float 0.000000e+00)  ; FMax(a,b)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8285, float %8341)  ; FMin(a,b)
  %8343 = fdiv fast float %8327, %8339
  %8344 = call float @dx.op.binary.f32(i32 35, float %8343, float 0.000000e+00)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8285, float %8344)  ; FMin(a,b)
  %8346 = call float @dx.op.binary.f32(i32 36, float %8342, float %8345)  ; FMin(a,b)
  %8347 = call float @dx.op.binary.f32(i32 35, float %8342, float %8345)  ; FMax(a,b)
  br label %8348

; <label>:8348                                    ; preds = %8333, %8299
  %8349 = phi float [ %8347, %8333 ], [ -1.000000e+00, %8299 ]
  %8350 = phi float [ %8346, %8333 ], [ -1.000000e+00, %8299 ]
  %8351 = phi i1 [ true, %8333 ], [ false, %8299 ]
  %8352 = and i1 %8319, %8351
  br i1 %8352, label %8353, label %8355

; <label>:8353                                    ; preds = %8348
  %8354 = fcmp fast oeq float %8350, %8349
  br i1 %8354, label %8658, label %8356

; <label>:8355                                    ; preds = %8348
  br i1 %8319, label %8658, label %8356

; <label>:8356                                    ; preds = %8355, %8353
  %8357 = phi float [ %8285, %8355 ], [ %8349, %8353 ]
  %8358 = phi float [ 0.000000e+00, %8355 ], [ %8350, %8353 ]
  %8359 = icmp ne i32 %8307, 0
  %8360 = fmul fast float %8357, %8288
  %8361 = fadd fast float %8360, %8301
  %8362 = fmul fast float %8361, %8357
  %8363 = select i1 %8359, float 0.000000e+00, float %8362
  %8364 = fcmp fast oeq float %8288, 0.000000e+00
  %8365 = fdiv fast float %8306, %8288
  %8366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8365)  ; FMax(a,b)
  %8367 = select i1 %8364, float %8357, float %8366
  %8368 = call float @dx.op.binary.f32(i32 36, float %8357, float %8367)  ; FMin(a,b)
  %8369 = fcmp fast ogt float %8288, 0.000000e+00
  %8370 = fcmp fast olt float %8306, 0.000000e+00
  br i1 %8369, label %8371, label %8428

; <label>:8371                                    ; preds = %8356
  %8372 = icmp eq i32 %8307, 0
  br i1 %8370, label %8373, label %8417

; <label>:8373                                    ; preds = %8371
  %8374 = select i1 %8372, float %8357, float 0.000000e+00
  %8375 = fsub fast float -0.000000e+00, %8374
  %8376 = call float @dx.op.unary.f32(i32 6, float %8375)  ; FAbs(value)
  %8377 = fmul fast float %8374, %8288
  %8378 = fadd fast float %8377, %8301
  %8379 = fmul fast float %8376, %8378
  %8380 = fsub fast float %8363, %8379
  %8381 = fsub fast float %8357, %8376
  %8382 = select i1 %8372, float %8381, float 0.000000e+00
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.CBufRet.f32 %8383, 2
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %8391 = extractvalue %dx.types.CBufRet.f32 %8387, 3
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 3
  %8394 = call float @dx.op.binary.f32(i32 36, float %8380, float %8393)  ; FMin(a,b)
  %8395 = fmul fast float %8391, %8382
  %8396 = call float @dx.op.unary.f32(i32 7, float %8395)  ; Saturate(value)
  %8397 = fsub fast float %8388, %8384
  %8398 = fsub fast float %8389, %8385
  %8399 = fsub fast float %8390, %8386
  %8400 = fmul fast float %8396, %8397
  %8401 = fmul fast float %8396, %8398
  %8402 = fmul fast float %8396, %8399
  %8403 = fadd fast float %8400, %8384
  %8404 = fadd fast float %8401, %8385
  %8405 = fadd fast float %8402, %8386
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.CBufRet.f32 %8406, 1
  %8409 = fadd fast float %8408, %8407
  %8410 = call float @dx.op.unary.f32(i32 7, float %8409)  ; Saturate(value)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8412 = extractvalue %dx.types.CBufRet.f32 %8406, 3
  %8413 = fadd fast float %8412, %8411
  %8414 = call float @dx.op.unary.f32(i32 7, float %8413)  ; Saturate(value)
  %8415 = fmul fast float %8410, %8394
  %8416 = fmul fast float %8415, %8414
  br label %8658

; <label>:8417                                    ; preds = %8371
  br i1 %8372, label %8418, label %8439

; <label>:8418                                    ; preds = %8417
  %8419 = call float @dx.op.binary.f32(i32 36, float %8368, float %8358)  ; FMin(a,b)
  %8420 = fsub fast float %8368, %8419
  %8421 = fsub fast float %8420, %8357
  %8422 = call float @dx.op.unary.f32(i32 6, float %8421)  ; FAbs(value)
  %8423 = fadd fast float %8420, %8357
  %8424 = fmul fast float %8423, %8288
  %8425 = fadd fast float %8424, %8301
  %8426 = fmul fast float %8425, %8422
  %8427 = fsub fast float %8363, %8426
  br label %8439

; <label>:8428                                    ; preds = %8356
  br i1 %8370, label %8429, label %8439

; <label>:8429                                    ; preds = %8428
  %8430 = call float @dx.op.binary.f32(i32 35, float %8358, float %8368)  ; FMax(a,b)
  %8431 = icmp eq i32 %8307, 0
  %8432 = select i1 %8431, float %8368, float 0.000000e+00
  %8433 = fsub fast float -0.000000e+00, %8432
  %8434 = call float @dx.op.unary.f32(i32 6, float %8433)  ; FAbs(value)
  %8435 = fmul fast float %8432, %8288
  %8436 = fadd fast float %8435, %8301
  %8437 = fmul fast float %8434, %8436
  %8438 = fsub fast float %8363, %8437
  br label %8439

; <label>:8439                                    ; preds = %8429, %8428, %8418, %8417
  %8440 = phi float [ %8358, %8417 ], [ %8358, %8418 ], [ %8430, %8429 ], [ %8358, %8428 ]
  %8441 = phi float [ 0.000000e+00, %8417 ], [ %8422, %8418 ], [ %8434, %8429 ], [ 0.000000e+00, %8428 ]
  %8442 = phi float [ %8363, %8417 ], [ %8427, %8418 ], [ %8438, %8429 ], [ %8363, %8428 ]
  %8443 = phi float [ %8368, %8417 ], [ %8368, %8418 ], [ %8357, %8429 ], [ %8357, %8428 ]
  %8444 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8444, align 4, !tbaa !130, !noalias !132
  %8445 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8445, align 4, !tbaa !130, !noalias !132
  %8446 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8446, align 4, !tbaa !130, !noalias !132
  %8447 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8447, align 4, !tbaa !130, !noalias !132
  %8448 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8448, align 4, !tbaa !130, !noalias !132
  %8449 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8449, align 4, !tbaa !130, !noalias !132
  %8450 = icmp sgt i32 %8309, 0
  br i1 %8450, label %8451, label %8512

; <label>:8451                                    ; preds = %8439
  br label %8452

; <label>:8452                                    ; preds = %8501, %8451
  %8453 = phi i32 [ %8502, %8501 ], [ 0, %8451 ]
  %8454 = phi i32 [ %8503, %8501 ], [ 0, %8451 ]
  %8455 = add nuw i32 %8454, 171
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8455)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8462 = fsub fast float %8457, %8460
  %8463 = fsub fast float %8458, %8461
  %8464 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8465 = fsub fast float -0.000000e+00, %8462
  %8466 = fsub fast float -0.000000e+00, %8463
  %8467 = call float @dx.op.dot2.f32(i32 54, float %8286, float %8287, float %8465, float %8466)  ; Dot2(ax,ay,bx,by)
  %8468 = fmul fast float %8467, 2.000000e+00
  %8469 = call float @dx.op.dot2.f32(i32 54, float %8465, float %8466, float %8465, float %8466)  ; Dot2(ax,ay,bx,by)
  %8470 = fmul fast float %8464, %8464
  %8471 = fsub fast float %8469, %8470
  %8472 = fmul fast float %8468, %8468
  %8473 = fmul fast float %8329, %8471
  %8474 = fsub fast float %8472, %8473
  %8475 = fcmp fast ogt float %8474, 0.000000e+00
  br i1 %8475, label %8476, label %8491

; <label>:8476                                    ; preds = %8452
  %8477 = fcmp fast ogt float %8468, 0.000000e+00
  %8478 = call float @dx.op.unary.f32(i32 24, float %8474)  ; Sqrt(value)
  %8479 = fsub fast float -0.000000e+00, %8478
  %8480 = select i1 %8477, float %8478, float %8479
  %8481 = fadd fast float %8480, %8468
  %8482 = fmul float %8481, -5.000000e-01
  %8483 = fdiv fast float %8482, %8322
  %8484 = call float @dx.op.binary.f32(i32 35, float %8483, float 0.000000e+00)  ; FMax(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8357, float %8484)  ; FMin(a,b)
  %8486 = fdiv fast float %8471, %8482
  %8487 = call float @dx.op.binary.f32(i32 35, float %8486, float 0.000000e+00)  ; FMax(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8357, float %8487)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8485, float %8488)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 35, float %8485, float %8488)  ; FMax(a,b)
  br label %8491

; <label>:8491                                    ; preds = %8476, %8452
  %8492 = phi float [ %8490, %8476 ], [ -1.000000e+00, %8452 ]
  %8493 = phi float [ %8489, %8476 ], [ -1.000000e+00, %8452 ]
  %8494 = phi i1 [ true, %8476 ], [ false, %8452 ]
  br i1 %8494, label %8495, label %8501

; <label>:8495                                    ; preds = %8491
  %8496 = call float @dx.op.binary.f32(i32 35, float %8440, float %8493)  ; FMax(a,b)
  %8497 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8454
  store float %8496, float* %8497, align 4, !tbaa !130, !noalias !132
  %8498 = call float @dx.op.binary.f32(i32 35, float %8440, float %8492)  ; FMax(a,b)
  %8499 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8454
  store float %8498, float* %8499, align 4, !tbaa !130, !noalias !132
  %8500 = add nsw i32 %8453, 1
  br label %8501

; <label>:8501                                    ; preds = %8495, %8491
  %8502 = phi i32 [ %8500, %8495 ], [ %8453, %8491 ]
  %8503 = add nuw nsw i32 %8454, 1
  %8504 = icmp eq i32 %8503, %8309
  br i1 %8504, label %8505, label %8452

; <label>:8505                                    ; preds = %8501
  %8506 = load float, float* %8446, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8507 = load float, float* %8445, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  %8508 = load float, float* %8444, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  %8509 = load float, float* %8449, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8510 = load float, float* %8448, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  %8511 = load float, float* %8447, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  br label %8512

; <label>:8512                                    ; preds = %8505, %8439
  %8513 = phi float [ -1.000000e+00, %8439 ], [ %8511, %8505 ]
  %8514 = phi float [ -1.000000e+00, %8439 ], [ %8510, %8505 ]
  %8515 = phi float [ -1.000000e+00, %8439 ], [ %8509, %8505 ]
  %8516 = phi float [ -1.000000e+00, %8439 ], [ %8508, %8505 ]
  %8517 = phi float [ -1.000000e+00, %8439 ], [ %8507, %8505 ]
  %8518 = phi float [ -1.000000e+00, %8439 ], [ %8506, %8505 ]
  %8519 = phi i32 [ 0, %8439 ], [ %8502, %8505 ]
  %8520 = call float @dx.op.binary.f32(i32 36, float %8517, float %8518)  ; FMin(a,b)
  %8521 = call float @dx.op.binary.f32(i32 36, float %8516, float %8520)  ; FMin(a,b)
  %8522 = call float @dx.op.binary.f32(i32 35, float %8516, float %8517)  ; FMax(a,b)
  %8523 = call float @dx.op.binary.f32(i32 36, float %8522, float %8518)  ; FMin(a,b)
  %8524 = call float @dx.op.binary.f32(i32 36, float %8516, float %8517)  ; FMin(a,b)
  %8525 = call float @dx.op.binary.f32(i32 35, float %8524, float %8523)  ; FMax(a,b)
  %8526 = call float @dx.op.binary.f32(i32 35, float %8517, float %8518)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 35, float %8516, float %8526)  ; FMax(a,b)
  store float %8521, float* %8444, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  store float %8525, float* %8445, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  store float %8527, float* %8446, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8528 = call float @dx.op.binary.f32(i32 36, float %8514, float %8515)  ; FMin(a,b)
  %8529 = call float @dx.op.binary.f32(i32 36, float %8513, float %8528)  ; FMin(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float %8513, float %8514)  ; FMax(a,b)
  %8531 = call float @dx.op.binary.f32(i32 36, float %8530, float %8515)  ; FMin(a,b)
  %8532 = call float @dx.op.binary.f32(i32 36, float %8513, float %8514)  ; FMin(a,b)
  %8533 = call float @dx.op.binary.f32(i32 35, float %8532, float %8531)  ; FMax(a,b)
  %8534 = call float @dx.op.binary.f32(i32 35, float %8514, float %8515)  ; FMax(a,b)
  %8535 = call float @dx.op.binary.f32(i32 35, float %8513, float %8534)  ; FMax(a,b)
  store float %8529, float* %8447, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %8533, float* %8448, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  store float %8535, float* %8449, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8536 = sub nsw i32 3, %8519
  %8537 = icmp sgt i32 %8536, 2
  br i1 %8537, label %8538, label %8576

; <label>:8538                                    ; preds = %8512
  %8539 = icmp eq i32 %8307, 0
  %8540 = fsub fast float %8357, %8441
  %8541 = select i1 %8539, float %8540, float %8441
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %8550 = extractvalue %dx.types.CBufRet.f32 %8546, 3
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 3
  %8553 = call float @dx.op.binary.f32(i32 36, float %8442, float %8552)  ; FMin(a,b)
  %8554 = fmul fast float %8550, %8541
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = fsub fast float %8547, %8543
  %8557 = fsub fast float %8548, %8544
  %8558 = fsub fast float %8549, %8545
  %8559 = fmul fast float %8555, %8556
  %8560 = fmul fast float %8555, %8557
  %8561 = fmul fast float %8555, %8558
  %8562 = fadd fast float %8559, %8543
  %8563 = fadd fast float %8560, %8544
  %8564 = fadd fast float %8561, %8545
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = extractvalue %dx.types.CBufRet.f32 %8565, 1
  %8568 = fadd fast float %8567, %8566
  %8569 = call float @dx.op.unary.f32(i32 7, float %8568)  ; Saturate(value)
  %8570 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8571 = extractvalue %dx.types.CBufRet.f32 %8565, 3
  %8572 = fadd fast float %8571, %8570
  %8573 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  %8574 = fmul fast float %8569, %8553
  %8575 = fmul fast float %8574, %8573
  br label %8658

; <label>:8576                                    ; preds = %8512
  %8577 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8536
  %8578 = load float, float* %8577, align 4, !tbaa !130, !noalias !132
  %8579 = fcmp fast olt float %8578, %8443
  %8580 = icmp sgt i32 %8519, 0
  %8581 = and i1 %8580, %8579
  br i1 %8581, label %8582, label %8619

; <label>:8582                                    ; preds = %8576
  br label %8583

; <label>:8583                                    ; preds = %8612, %8582
  %8584 = phi float [ %8613, %8612 ], [ %8441, %8582 ]
  %8585 = phi float [ %8614, %8612 ], [ %8442, %8582 ]
  %8586 = phi float [ %8594, %8612 ], [ %8578, %8582 ]
  %8587 = phi i32 [ %8591, %8612 ], [ %8536, %8582 ]
  %8588 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8587
  %8589 = load float, float* %8588, align 4, !tbaa !130, !noalias !132
  %8590 = icmp slt i32 %8587, 2
  %8591 = add nsw i32 %8587, 1
  %8592 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8591
  %8593 = load float, float* %8592, align 4, !tbaa !130, !noalias !132
  %8594 = select i1 %8590, float %8593, float %8357
  %8595 = call float @dx.op.binary.f32(i32 36, float %8594, float %8589)  ; FMin(a,b)
  %8596 = call float @dx.op.binary.f32(i32 36, float %8443, float %8595)  ; FMin(a,b)
  %8597 = icmp eq i32 %8307, 0
  %8598 = fadd fast float %8596, %8586
  %8599 = fmul fast float %8598, %8288
  %8600 = fadd fast float %8599, %8301
  br i1 %8597, label %8606, label %8601

; <label>:8601                                    ; preds = %8583
  %8602 = fsub fast float %8596, %8586
  %8603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8602)  ; FMax(a,b)
  %8604 = fmul fast float %8603, %8600
  %8605 = fadd fast float %8604, %8585
  br label %8612

; <label>:8606                                    ; preds = %8583
  %8607 = fsub fast float %8586, %8596
  %8608 = call float @dx.op.unary.f32(i32 6, float %8607)  ; FAbs(value)
  %8609 = fadd fast float %8608, %8584
  %8610 = fmul fast float %8608, %8600
  %8611 = fsub fast float %8585, %8610
  br label %8612

; <label>:8612                                    ; preds = %8606, %8601
  %8613 = phi float [ %8603, %8601 ], [ %8609, %8606 ]
  %8614 = phi float [ %8605, %8601 ], [ %8611, %8606 ]
  %8615 = fcmp fast olt float %8594, %8443
  %8616 = icmp slt i32 %8591, 3
  %8617 = and i1 %8616, %8615
  br i1 %8617, label %8583, label %8618

; <label>:8618                                    ; preds = %8612
  br label %8619

; <label>:8619                                    ; preds = %8618, %8576
  %8620 = phi float [ %8441, %8576 ], [ %8613, %8618 ]
  %8621 = phi float [ %8442, %8576 ], [ %8614, %8618 ]
  %8622 = fsub fast float %8357, %8620
  %8623 = select i1 %8359, float %8620, float %8622
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8627 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.CBufRet.f32 %8628, 2
  %8632 = extractvalue %dx.types.CBufRet.f32 %8628, 3
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 3
  %8635 = call float @dx.op.binary.f32(i32 36, float %8621, float %8634)  ; FMin(a,b)
  %8636 = fmul fast float %8632, %8623
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fsub fast float %8629, %8625
  %8639 = fsub fast float %8630, %8626
  %8640 = fsub fast float %8631, %8627
  %8641 = fmul fast float %8637, %8638
  %8642 = fmul fast float %8637, %8639
  %8643 = fmul fast float %8637, %8640
  %8644 = fadd fast float %8641, %8625
  %8645 = fadd fast float %8642, %8626
  %8646 = fadd fast float %8643, %8627
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = fadd fast float %8649, %8648
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8653 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8654 = fadd fast float %8653, %8652
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = fmul fast float %8651, %8635
  %8657 = fmul fast float %8656, %8655
  br label %8658

; <label>:8658                                    ; preds = %8619, %8538, %8373, %8355, %8353
  %8659 = phi float [ %8382, %8373 ], [ %8541, %8538 ], [ %8623, %8619 ], [ 0.000000e+00, %8353 ], [ 0.000000e+00, %8355 ]
  %8660 = phi float [ %8416, %8373 ], [ %8575, %8538 ], [ %8657, %8619 ], [ 0.000000e+00, %8353 ], [ 0.000000e+00, %8355 ]
  %8661 = phi float [ %8403, %8373 ], [ %8562, %8538 ], [ %8644, %8619 ], [ 0.000000e+00, %8353 ], [ 0.000000e+00, %8355 ]
  %8662 = phi float [ %8404, %8373 ], [ %8563, %8538 ], [ %8645, %8619 ], [ 0.000000e+00, %8353 ], [ 0.000000e+00, %8355 ]
  %8663 = phi float [ %8405, %8373 ], [ %8564, %8538 ], [ %8646, %8619 ], [ 0.000000e+00, %8353 ], [ 0.000000e+00, %8355 ]
  %8664 = fmul fast float %8296, %8660
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8667 = fsub fast float %8303, %8666
  %8668 = fcmp fast olt float %8664, -2.000000e+01
  %8669 = call float @dx.op.unary.f32(i32 21, float %8664)  ; Exp(value)
  %8670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.f32 %8670, 2
  %8672 = extractvalue %dx.types.CBufRet.f32 %8670, 3
  %8673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8674 = extractvalue %dx.types.CBufRet.f32 %8673, 2
  %8675 = fmul fast float %8672, %8667
  %8676 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  %8677 = fsub fast float 1.000000e+00, %8676
  %8678 = fmul fast float %8288, 5.000000e-01
  %8679 = fadd fast float %8678, 5.000000e-01
  %8680 = call float @dx.op.unary.f32(i32 7, float %8679)  ; Saturate(value)
  %8681 = fsub fast float 1.000000e+00, %8680
  %8682 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8677)  ; FMax(a,b)
  %8683 = fdiv fast float %8681, %8682
  %8684 = fsub fast float %8667, %8245
  %8685 = call float @dx.op.unary.f32(i32 6, float %8684)  ; FAbs(value)
  %8686 = fmul fast float %8685, %8671
  %8687 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8688 = fsub fast float 1.000000e+00, %8686
  %8689 = fmul fast float %8688, %8687
  %8690 = fadd fast float %8689, %8686
  %8691 = fmul fast float %8674, %8667
  %8692 = call float @dx.op.unary.f32(i32 7, float %8691)  ; Saturate(value)
  %8693 = fsub fast float 1.000000e+00, %8690
  %8694 = fmul fast float %8693, %8692
  %8695 = fadd fast float %8694, %8690
  %8696 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8697 = fadd fast float %8669, -1.000000e+00
  %8698 = select i1 %8668, float -1.000000e+00, float %8697
  %8699 = fmul fast float %8696, %8698
  %8700 = fadd fast float %8699, 1.000000e+00
  %8701 = fsub fast float -0.000000e+00, %8699
  %8702 = fmul fast float %8661, %8701
  %8703 = fmul fast float %8662, %8701
  %8704 = fmul fast float %8663, %8701
  br label %8705

; <label>:8705                                    ; preds = %8658, %8254
  %8706 = phi float [ %8659, %8658 ], [ 0.000000e+00, %8254 ]
  %8707 = phi float [ %8700, %8658 ], [ 1.000000e+00, %8254 ]
  %8708 = phi float [ %8702, %8658 ], [ 0.000000e+00, %8254 ]
  %8709 = phi float [ %8703, %8658 ], [ 0.000000e+00, %8254 ]
  %8710 = phi float [ %8704, %8658 ], [ 0.000000e+00, %8254 ]
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8713 = fsub fast float 1.000000e+00, %8707
  %8714 = fmul fast float %8713, %8289
  %8715 = fmul fast float %8714, %8712
  %8716 = fsub fast float %8289, %8715
  br i1 %8282, label %8717, label %8746, !dx.controlflow.hints !168

; <label>:8717                                    ; preds = %8705
  %8718 = fmul fast float %8290, %8279
  %8719 = fadd fast float %8718, %8280
  %8720 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8721 = fmul fast float %8261, %8716
  %8722 = fsub fast float -0.000000e+00, %8721
  %8723 = fmul fast float %8262, %8716
  %8724 = fsub fast float -0.000000e+00, %8723
  %8725 = call float @dx.op.unary.f32(i32 21, float %8722)  ; Exp(value)
  %8726 = call float @dx.op.unary.f32(i32 21, float %8724)  ; Exp(value)
  %8727 = call float @dx.op.binary.f32(i32 35, float %8269, float %8725)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 35, float %8269, float %8726)  ; FMax(a,b)
  %8729 = fsub fast float %8728, %8727
  %8730 = fmul fast float %8729, %8720
  %8731 = fadd fast float %8730, %8727
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = fsub fast float %8266, %8271
  %8734 = fsub fast float %8267, %8272
  %8735 = fsub fast float %8268, %8273
  %8736 = fmul fast float %8720, %8733
  %8737 = fmul fast float %8720, %8734
  %8738 = fmul fast float %8720, %8735
  %8739 = fadd fast float %8736, %8271
  %8740 = fadd fast float %8737, %8272
  %8741 = fadd fast float %8738, %8273
  %8742 = fsub fast float 1.000000e+00, %8732
  %8743 = fmul fast float %8742, %8739
  %8744 = fmul fast float %8742, %8740
  %8745 = fmul fast float %8742, %8741
  br label %8805

; <label>:8746                                    ; preds = %8705
  %8747 = fmul fast float %8716, %8278
  %8748 = call float @dx.op.unary.f32(i32 7, float %8747)  ; Saturate(value)
  %8749 = fsub fast float 2.000000e+00, %8748
  %8750 = fmul fast float %8748, 9.921875e-01
  %8751 = fmul fast float %8750, %8749
  %8752 = fadd fast float %8751, 3.906250e-03
  %8753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8752, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8754 = extractvalue %dx.types.ResRet.f32 %8753, 0
  %8755 = fsub fast float %8748, %8754
  %8756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8755)  ; FMax(a,b)
  %8757 = fmul fast float %8264, %8245
  %8758 = call float @dx.op.unary.f32(i32 6, float %8757)  ; FAbs(value)
  %8759 = fcmp fast ogt float %8758, 0x3EB0C6F7A0000000
  br i1 %8759, label %8760, label %8766, !dx.controlflow.hints !169

; <label>:8760                                    ; preds = %8746
  %8761 = fmul fast float %8757, 0xBFF7154760000000
  %8762 = call float @dx.op.unary.f32(i32 21, float %8761)  ; Exp(value)
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fdiv fast float %8763, %8757
  %8765 = fmul fast float %8764, %8274
  br label %8766

; <label>:8766                                    ; preds = %8760, %8746
  %8767 = phi float [ %8765, %8760 ], [ %8274, %8746 ]
  %8768 = fadd fast float %8767, %8276
  %8769 = fmul fast float %8768, %8756
  %8770 = fmul fast float %8261, %8769
  %8771 = fsub fast float -0.000000e+00, %8770
  %8772 = fmul fast float %8262, %8769
  %8773 = fsub fast float -0.000000e+00, %8772
  %8774 = fmul fast float %8263, %8769
  %8775 = fsub fast float -0.000000e+00, %8774
  %8776 = call float @dx.op.unary.f32(i32 21, float %8771)  ; Exp(value)
  %8777 = call float @dx.op.unary.f32(i32 21, float %8773)  ; Exp(value)
  %8778 = call float @dx.op.unary.f32(i32 21, float %8775)  ; Exp(value)
  %8779 = fmul fast float %8290, %8290
  %8780 = fadd fast float %8779, 1.000000e+00
  %8781 = fmul fast float %8780, 0x3FAE8EC8A0000000
  %8782 = fmul fast float %8781, %8271
  %8783 = fmul fast float %8781, %8272
  %8784 = fmul fast float %8781, %8273
  %8785 = fmul fast float %8290, %8269
  %8786 = fsub fast float 1.000000e+00, %8785
  %8787 = fmul fast float %8269, %8269
  %8788 = fsub fast float 1.000000e+00, %8787
  %8789 = fmul fast float %8788, 0x3FB45F3060000000
  %8790 = fmul fast float %8786, %8786
  %8791 = fdiv fast float 1.000000e+00, %8790
  %8792 = fmul fast float %8789, %8791
  %8793 = fmul fast float %8792, %8266
  %8794 = fmul fast float %8792, %8267
  %8795 = fmul fast float %8792, %8268
  %8796 = fadd fast float %8793, %8782
  %8797 = fadd fast float %8794, %8783
  %8798 = fadd fast float %8795, %8784
  %8799 = fsub fast float 1.000000e+00, %8776
  %8800 = fsub fast float 1.000000e+00, %8777
  %8801 = fsub fast float 1.000000e+00, %8778
  %8802 = fmul fast float %8796, %8799
  %8803 = fmul fast float %8797, %8800
  %8804 = fmul fast float %8798, %8801
  br label %8805

; <label>:8805                                    ; preds = %8766, %8717
  %8806 = phi float [ %8743, %8717 ], [ %8802, %8766 ]
  %8807 = phi float [ %8744, %8717 ], [ %8803, %8766 ]
  %8808 = phi float [ %8745, %8717 ], [ %8804, %8766 ]
  %8809 = phi float [ %8732, %8717 ], [ %8776, %8766 ]
  %8810 = phi float [ %8732, %8717 ], [ %8777, %8766 ]
  %8811 = phi float [ %8732, %8717 ], [ %8778, %8766 ]
  br i1 %8298, label %8812, label %9010, !dx.controlflow.hints !170

; <label>:8812                                    ; preds = %8805
  %8813 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %8814 = fmul fast float %8813, %8713
  %8815 = fsub fast float %8708, %8806
  %8816 = fsub fast float %8709, %8807
  %8817 = fsub fast float %8710, %8808
  %8818 = fmul fast float %8814, %8815
  %8819 = fmul fast float %8814, %8816
  %8820 = fmul fast float %8814, %8817
  %8821 = fadd fast float %8818, %8806
  %8822 = fadd fast float %8819, %8807
  %8823 = fadd fast float %8820, %8808
  %8824 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8809)  ; FMax(a,b)
  %8825 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8810)  ; FMax(a,b)
  %8826 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8811)  ; FMax(a,b)
  %8827 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8707)  ; FMax(a,b)
  %8828 = call float @dx.op.binary.f32(i32 35, float %8706, float %8716)  ; FMax(a,b)
  %8829 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8828)  ; FMax(a,b)
  %8830 = fdiv fast float %8706, %8829
  %8831 = call float @dx.op.unary.f32(i32 7, float %8830)  ; Saturate(value)
  %8832 = fdiv fast float %8716, %8829
  %8833 = call float @dx.op.unary.f32(i32 7, float %8832)  ; Saturate(value)
  %8834 = fcmp fast une float %8827, 1.000000e+00
  br i1 %8834, label %8835, label %8848, !dx.controlflow.hints !171

; <label>:8835                                    ; preds = %8812
  %8836 = call float @dx.op.unary.f32(i32 23, float %8827)  ; Log(value)
  %8837 = fmul fast float %8836, 0x3FE62E4300000000
  %8838 = fmul fast float %8708, %8837
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fmul fast float %8709, %8837
  %8841 = fsub fast float -0.000000e+00, %8840
  %8842 = fmul fast float %8710, %8837
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fsub fast float 1.000000e+00, %8827
  %8845 = fdiv fast float %8839, %8844
  %8846 = fdiv fast float %8841, %8844
  %8847 = fdiv fast float %8843, %8844
  br label %8848

; <label>:8848                                    ; preds = %8835, %8812
  %8849 = phi float [ %8845, %8835 ], [ %8708, %8812 ]
  %8850 = phi float [ %8846, %8835 ], [ %8709, %8812 ]
  %8851 = phi float [ %8847, %8835 ], [ %8710, %8812 ]
  %8852 = phi float [ %8837, %8835 ], [ 0.000000e+00, %8812 ]
  %8853 = fcmp fast une float %8824, 1.000000e+00
  br i1 %8853, label %8854, label %8861, !dx.controlflow.hints !172

; <label>:8854                                    ; preds = %8848
  %8855 = call float @dx.op.unary.f32(i32 23, float %8824)  ; Log(value)
  %8856 = fmul fast float %8855, 0x3FE62E4300000000
  %8857 = fmul fast float %8821, %8856
  %8858 = fsub fast float -0.000000e+00, %8857
  %8859 = fsub fast float 1.000000e+00, %8824
  %8860 = fdiv fast float %8858, %8859
  br label %8861

; <label>:8861                                    ; preds = %8854, %8848
  %8862 = phi float [ %8860, %8854 ], [ %8821, %8848 ]
  %8863 = phi float [ %8856, %8854 ], [ 0.000000e+00, %8848 ]
  %8864 = fcmp fast une float %8825, 1.000000e+00
  br i1 %8864, label %8865, label %8872, !dx.controlflow.hints !172

; <label>:8865                                    ; preds = %8861
  %8866 = call float @dx.op.unary.f32(i32 23, float %8825)  ; Log(value)
  %8867 = fmul fast float %8866, 0x3FE62E4300000000
  %8868 = fmul fast float %8822, %8867
  %8869 = fsub fast float -0.000000e+00, %8868
  %8870 = fsub fast float 1.000000e+00, %8825
  %8871 = fdiv fast float %8869, %8870
  br label %8872

; <label>:8872                                    ; preds = %8865, %8861
  %8873 = phi float [ %8871, %8865 ], [ %8822, %8861 ]
  %8874 = phi float [ %8867, %8865 ], [ 0.000000e+00, %8861 ]
  %8875 = fcmp fast une float %8826, 1.000000e+00
  br i1 %8875, label %8876, label %8883, !dx.controlflow.hints !172

; <label>:8876                                    ; preds = %8872
  %8877 = call float @dx.op.unary.f32(i32 23, float %8826)  ; Log(value)
  %8878 = fmul fast float %8877, 0x3FE62E4300000000
  %8879 = fmul fast float %8823, %8878
  %8880 = fsub fast float -0.000000e+00, %8879
  %8881 = fsub fast float 1.000000e+00, %8826
  %8882 = fdiv fast float %8880, %8881
  br label %8883

; <label>:8883                                    ; preds = %8876, %8872
  %8884 = phi float [ %8882, %8876 ], [ %8823, %8872 ]
  %8885 = phi float [ %8878, %8876 ], [ 0.000000e+00, %8872 ]
  %8886 = fmul fast float %8849, %8833
  %8887 = fmul fast float %8850, %8833
  %8888 = fmul fast float %8851, %8833
  %8889 = fmul fast float %8852, %8833
  %8890 = fmul fast float %8862, %8831
  %8891 = fmul fast float %8873, %8831
  %8892 = fmul fast float %8884, %8831
  %8893 = fmul fast float %8863, %8831
  %8894 = fmul fast float %8874, %8831
  %8895 = fmul fast float %8885, %8831
  %8896 = fadd fast float %8890, %8886
  %8897 = fadd fast float %8891, %8887
  %8898 = fadd fast float %8892, %8888
  %8899 = fadd fast float %8893, %8889
  %8900 = fadd fast float %8894, %8889
  %8901 = fadd fast float %8895, %8889
  %8902 = fcmp fast une float %8899, 0.000000e+00
  br i1 %8902, label %8903, label %8910, !dx.controlflow.hints !173

; <label>:8903                                    ; preds = %8883
  %8904 = fmul fast float %8899, 0x3FF7154760000000
  %8905 = call float @dx.op.unary.f32(i32 21, float %8904)  ; Exp(value)
  %8906 = fsub fast float 1.000000e+00, %8905
  %8907 = fmul fast float %8896, %8906
  %8908 = fsub fast float -0.000000e+00, %8907
  %8909 = fdiv fast float %8908, %8899
  br label %8910

; <label>:8910                                    ; preds = %8903, %8883
  %8911 = phi float [ %8905, %8903 ], [ 1.000000e+00, %8883 ]
  %8912 = phi float [ %8909, %8903 ], [ %8896, %8883 ]
  %8913 = fcmp fast une float %8900, 0.000000e+00
  br i1 %8913, label %8914, label %8921, !dx.controlflow.hints !173

; <label>:8914                                    ; preds = %8910
  %8915 = fmul fast float %8900, 0x3FF7154760000000
  %8916 = call float @dx.op.unary.f32(i32 21, float %8915)  ; Exp(value)
  %8917 = fsub fast float 1.000000e+00, %8916
  %8918 = fmul fast float %8897, %8917
  %8919 = fsub fast float -0.000000e+00, %8918
  %8920 = fdiv fast float %8919, %8900
  br label %8921

; <label>:8921                                    ; preds = %8914, %8910
  %8922 = phi float [ %8916, %8914 ], [ 1.000000e+00, %8910 ]
  %8923 = phi float [ %8920, %8914 ], [ %8897, %8910 ]
  %8924 = fcmp fast une float %8901, 0.000000e+00
  br i1 %8924, label %8925, label %8932, !dx.controlflow.hints !173

; <label>:8925                                    ; preds = %8921
  %8926 = fmul fast float %8901, 0x3FF7154760000000
  %8927 = call float @dx.op.unary.f32(i32 21, float %8926)  ; Exp(value)
  %8928 = fsub fast float 1.000000e+00, %8927
  %8929 = fmul fast float %8898, %8928
  %8930 = fsub fast float -0.000000e+00, %8929
  %8931 = fdiv fast float %8930, %8901
  br label %8932

; <label>:8932                                    ; preds = %8925, %8921
  %8933 = phi float [ %8927, %8925 ], [ 1.000000e+00, %8921 ]
  %8934 = phi float [ %8931, %8925 ], [ %8898, %8921 ]
  %8935 = fcmp fast ogt float %8831, %8833
  br i1 %8935, label %8936, label %8956

; <label>:8936                                    ; preds = %8932
  %8937 = fsub fast float 1.000000e+00, %8833
  %8938 = fmul fast float %8849, %8937
  %8939 = fmul fast float %8850, %8937
  %8940 = fmul fast float %8851, %8937
  %8941 = fmul fast float %8852, %8937
  %8942 = fcmp fast une float %8941, 0.000000e+00
  br i1 %8942, label %8943, label %8994, !dx.controlflow.hints !174

; <label>:8943                                    ; preds = %8936
  %8944 = fmul fast float %8941, 0x3FF7154760000000
  %8945 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8946 = fsub fast float 1.000000e+00, %8945
  %8947 = fmul fast float %8938, %8946
  %8948 = fsub fast float -0.000000e+00, %8947
  %8949 = fmul fast float %8939, %8946
  %8950 = fsub fast float -0.000000e+00, %8949
  %8951 = fmul fast float %8940, %8946
  %8952 = fsub fast float -0.000000e+00, %8951
  %8953 = fdiv fast float %8948, %8941
  %8954 = fdiv fast float %8950, %8941
  %8955 = fdiv fast float %8952, %8941
  br label %8994

; <label>:8956                                    ; preds = %8932
  %8957 = fsub fast float 1.000000e+00, %8831
  %8958 = fmul fast float %8862, %8957
  %8959 = fmul fast float %8873, %8957
  %8960 = fmul fast float %8884, %8957
  %8961 = fmul fast float %8863, %8957
  %8962 = fmul fast float %8874, %8957
  %8963 = fmul fast float %8885, %8957
  %8964 = fcmp fast une float %8961, 0.000000e+00
  br i1 %8964, label %8965, label %8972, !dx.controlflow.hints !173

; <label>:8965                                    ; preds = %8956
  %8966 = fmul fast float %8961, 0x3FF7154760000000
  %8967 = call float @dx.op.unary.f32(i32 21, float %8966)  ; Exp(value)
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = fmul fast float %8958, %8968
  %8970 = fsub fast float -0.000000e+00, %8969
  %8971 = fdiv fast float %8970, %8961
  br label %8972

; <label>:8972                                    ; preds = %8965, %8956
  %8973 = phi float [ %8971, %8965 ], [ %8958, %8956 ]
  %8974 = phi float [ %8967, %8965 ], [ 1.000000e+00, %8956 ]
  %8975 = fcmp fast une float %8962, 0.000000e+00
  br i1 %8975, label %8976, label %8983, !dx.controlflow.hints !173

; <label>:8976                                    ; preds = %8972
  %8977 = fmul fast float %8962, 0x3FF7154760000000
  %8978 = call float @dx.op.unary.f32(i32 21, float %8977)  ; Exp(value)
  %8979 = fsub fast float 1.000000e+00, %8978
  %8980 = fmul fast float %8959, %8979
  %8981 = fsub fast float -0.000000e+00, %8980
  %8982 = fdiv fast float %8981, %8962
  br label %8983

; <label>:8983                                    ; preds = %8976, %8972
  %8984 = phi float [ %8982, %8976 ], [ %8959, %8972 ]
  %8985 = phi float [ %8978, %8976 ], [ 1.000000e+00, %8972 ]
  %8986 = fcmp fast une float %8963, 0.000000e+00
  br i1 %8986, label %8987, label %8994, !dx.controlflow.hints !173

; <label>:8987                                    ; preds = %8983
  %8988 = fmul fast float %8963, 0x3FF7154760000000
  %8989 = call float @dx.op.unary.f32(i32 21, float %8988)  ; Exp(value)
  %8990 = fsub fast float 1.000000e+00, %8989
  %8991 = fmul fast float %8960, %8990
  %8992 = fsub fast float -0.000000e+00, %8991
  %8993 = fdiv fast float %8992, %8963
  br label %8994

; <label>:8994                                    ; preds = %8987, %8983, %8943, %8936
  %8995 = phi float [ %8993, %8987 ], [ %8955, %8943 ], [ %8940, %8936 ], [ %8960, %8983 ]
  %8996 = phi float [ %8984, %8987 ], [ %8954, %8943 ], [ %8939, %8936 ], [ %8984, %8983 ]
  %8997 = phi float [ %8973, %8987 ], [ %8953, %8943 ], [ %8938, %8936 ], [ %8973, %8983 ]
  %8998 = phi float [ %8989, %8987 ], [ %8945, %8943 ], [ 1.000000e+00, %8936 ], [ 1.000000e+00, %8983 ]
  %8999 = phi float [ %8985, %8987 ], [ %8945, %8943 ], [ 1.000000e+00, %8936 ], [ %8985, %8983 ]
  %9000 = phi float [ %8974, %8987 ], [ %8945, %8943 ], [ 1.000000e+00, %8936 ], [ %8974, %8983 ]
  %9001 = fmul fast float %9000, %8912
  %9002 = fmul fast float %8999, %8923
  %9003 = fmul fast float %8998, %8934
  %9004 = fadd fast float %9001, %8997
  %9005 = fadd fast float %9002, %8996
  %9006 = fadd fast float %9003, %8995
  %9007 = fmul fast float %9000, %8911
  %9008 = fmul fast float %8999, %8922
  %9009 = fmul fast float %8998, %8933
  br label %9010

; <label>:9010                                    ; preds = %8994, %8805
  %9011 = phi float [ %9009, %8994 ], [ %8811, %8805 ]
  %9012 = phi float [ %9008, %8994 ], [ %8810, %8805 ]
  %9013 = phi float [ %9007, %8994 ], [ %8809, %8805 ]
  %9014 = phi float [ %9006, %8994 ], [ %8808, %8805 ]
  %9015 = phi float [ %9005, %8994 ], [ %8807, %8805 ]
  %9016 = phi float [ %9004, %8994 ], [ %8806, %8805 ]
  %9017 = fmul fast float %9016, %7958
  %9018 = fmul fast float %9015, %7960
  %9019 = fmul fast float %9014, %7962
  %9020 = fmul fast float %9013, %8253
  %9021 = call float @dx.op.dot3.f32(i32 55, float %9013, float %9012, float %9011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9022 = call float @dx.op.dot3.f32(i32 55, float %9017, float %9018, float %9019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9023 = select i1 %269, float %9021, float %9013
  %9024 = select i1 %269, float %9021, float %9012
  %9025 = select i1 %269, float 1.000000e+00, float %9011
  %9026 = select i1 %269, float %9022, float %9017
  %9027 = select i1 %269, float 0.000000e+00, float %9018
  %9028 = select i1 %269, float 0.000000e+00, float %9019
  %9029 = fmul fast float %9023, %8247
  %9030 = fmul fast float %9024, %8248
  %9031 = fmul fast float %9025, %8249
  %9032 = fadd fast float %9029, %9026
  %9033 = fadd fast float %9030, %9027
  %9034 = fadd fast float %9028, %9031
  %9035 = fmul fast float %9023, %8250
  %9036 = fmul fast float %9024, %8251
  %9037 = fmul fast float %9025, %8252
  %9038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.i32 %9038, 0
  %9040 = icmp eq i32 %9039, 0
  br i1 %9040, label %9408, label %9041, !dx.controlflow.hints !175

; <label>:9041                                    ; preds = %9010
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 3
  %9045 = fmul fast float %9043, %110
  %9046 = fmul fast float %9044, %111
  %9047 = fmul fast float %9045, 2.000000e+00
  %9048 = fmul fast float %9046, 2.000000e+00
  %9049 = fsub fast float 1.000000e+00, %9047
  %9050 = fsub fast float 1.000000e+00, %9048
  %9051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9052 = extractvalue %dx.types.CBufRet.f32 %9051, 0
  %9053 = extractvalue %dx.types.CBufRet.f32 %9051, 1
  %9054 = extractvalue %dx.types.CBufRet.f32 %9051, 2
  %9055 = fmul fast float %9049, %9052
  %9056 = fmul fast float %9049, %9053
  %9057 = fmul fast float %9049, %9054
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 0
  %9060 = extractvalue %dx.types.CBufRet.f32 %9058, 1
  %9061 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9062 = fmul fast float %9050, %9059
  %9063 = fmul fast float %9050, %9060
  %9064 = fmul fast float %9050, %9061
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.CBufRet.f32 %9065, 1
  %9068 = extractvalue %dx.types.CBufRet.f32 %9065, 2
  %9069 = fadd fast float %9062, %9066
  %9070 = fadd fast float %9069, %9055
  %9071 = fadd fast float %9063, %9067
  %9072 = fadd fast float %9071, %9056
  %9073 = fadd fast float %9064, %9068
  %9074 = fadd fast float %9073, %9057
  %9075 = fmul fast float %9070, %8246
  %9076 = fmul fast float %9072, %8246
  %9077 = fmul fast float %9074, %8246
  %9078 = fmul fast float %9075, %9075
  %9079 = fmul fast float %9076, %9076
  %9080 = fadd fast float %9078, %9079
  %9081 = fmul fast float %9077, %9077
  %9082 = fadd fast float %9080, %9081
  %9083 = call float @dx.op.unary.f32(i32 24, float %9082)  ; Sqrt(value)
  %9084 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %9085 = fsub fast float %9083, %9084
  %9086 = extractvalue %dx.types.CBufRet.f32 %7973, 2
  %9087 = fmul fast float %9085, %9086
  %9088 = call float @dx.op.unary.f32(i32 7, float %9087)  ; Saturate(value)
  %9089 = fadd fast float %9088, -5.000000e-01
  %9090 = fmul fast float %9089, 2.000000e+00
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9093 = call float @dx.op.binary.f32(i32 36, float %9092, float %9090)  ; FMin(a,b)
  %9094 = fsub fast float -0.000000e+00, %9092
  %9095 = fcmp fast ogt float %9093, %9094
  br i1 %9095, label %9096, label %9408, !dx.controlflow.hints !176

; <label>:9096                                    ; preds = %9041
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9099 = fcmp fast ogt float %9098, 0.000000e+00
  br i1 %9099, label %9100, label %9175, !dx.controlflow.hints !177

; <label>:9100                                    ; preds = %9096
  %9101 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9102 = extractvalue %dx.types.Dimensions %9101, 0
  %9103 = sitofp i32 %9102 to float
  %9104 = extractvalue %dx.types.Dimensions %9101, 1
  %9105 = sitofp i32 %9104 to float
  %9106 = fmul fast float %9045, %9103
  %9107 = fmul fast float %9046, %9105
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 1
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fptoui float %9110 to i32
  %9112 = fptoui float %9106 to i32
  %9113 = fptoui float %9107 to i32
  %9114 = and i32 %9111, 31
  %9115 = lshr i32 %9112, %9114
  %9116 = lshr i32 %9113, %9114
  %9117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9111, i32 %9115, i32 %9116, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9118 = extractvalue %dx.types.ResRet.f32 %9117, 0
  %9119 = fcmp fast olt float %9118, -1.000000e+00
  %9120 = fcmp fast ogt float %9118, -1.000000e+00
  %9121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9121, 1
  %9123 = select i1 %9120, float %9122, float 1.000000e+00
  %9124 = fadd fast float %9118, 1.000000e+00
  %9125 = fmul fast float %9123, %9124
  %9126 = call float @dx.op.unary.f32(i32 6, float %9125)  ; FAbs(value)
  %9127 = extractvalue %dx.types.CBufRet.f32 %9121, 3
  %9128 = fcmp fast oge float %9126, %9127
  %9129 = select i1 %9128, float 0x4197782600000000, float %9126
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9134 = select i1 %9119, float %9131, float %9052
  %9135 = select i1 %9119, float %9132, float %9053
  %9136 = select i1 %9119, float %9133, float %9054
  %9137 = fmul fast float %9134, %9049
  %9138 = fmul fast float %9135, %9049
  %9139 = fmul fast float %9136, %9049
  %9140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9141 = extractvalue %dx.types.CBufRet.f32 %9140, 0
  %9142 = extractvalue %dx.types.CBufRet.f32 %9140, 1
  %9143 = extractvalue %dx.types.CBufRet.f32 %9140, 2
  %9144 = select i1 %9119, float %9141, float %9059
  %9145 = select i1 %9119, float %9142, float %9060
  %9146 = select i1 %9119, float %9143, float %9061
  %9147 = fmul fast float %9144, %9050
  %9148 = fmul fast float %9145, %9050
  %9149 = fmul fast float %9146, %9050
  %9150 = fadd fast float %9147, %9137
  %9151 = fadd fast float %9148, %9138
  %9152 = fadd fast float %9149, %9139
  %9153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9153, 0
  %9155 = extractvalue %dx.types.CBufRet.f32 %9153, 1
  %9156 = extractvalue %dx.types.CBufRet.f32 %9153, 2
  %9157 = select i1 %9119, float %9154, float %9066
  %9158 = select i1 %9119, float %9155, float %9067
  %9159 = select i1 %9119, float %9156, float %9068
  %9160 = fadd fast float %9150, %9157
  %9161 = fadd fast float %9151, %9158
  %9162 = fadd fast float %9152, %9159
  %9163 = fmul fast float %9160, %9129
  %9164 = fmul fast float %9161, %9129
  %9165 = fmul fast float %9162, %9129
  %9166 = fmul fast float %9163, %9163
  %9167 = fmul fast float %9164, %9164
  %9168 = fadd fast float %9166, %9167
  %9169 = fmul fast float %9165, %9165
  %9170 = fadd fast float %9168, %9169
  %9171 = call float @dx.op.unary.f32(i32 24, float %9170)  ; Sqrt(value)
  %9172 = fsub fast float %9171, %9084
  %9173 = fmul fast float %9172, %9086
  %9174 = call float @dx.op.unary.f32(i32 7, float %9173)  ; Saturate(value)
  br label %9175

; <label>:9175                                    ; preds = %9100, %9096
  %9176 = phi float [ %9174, %9100 ], [ 1.000000e+00, %9096 ]
  %9177 = fmul fast float %9093, 5.000000e-01
  %9178 = fadd fast float %9177, 5.000000e-01
  %9179 = call float @dx.op.unary.f32(i32 22, float %9178)  ; Frc(value)
  %9180 = call float @dx.op.unary.f32(i32 27, float %9179)  ; Round_ni(value)
  %9181 = call float @dx.op.unary.f32(i32 22, float %9179)  ; Frc(value)
  %9182 = fmul fast float %9181, 2.000000e+00
  %9183 = fadd fast float %9182, -1.000000e+00
  %9184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9045, float %9046, float %9180, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9185 = extractvalue %dx.types.ResRet.f32 %9184, 0
  %9186 = extractvalue %dx.types.ResRet.f32 %9184, 1
  %9187 = extractvalue %dx.types.ResRet.f32 %9184, 2
  %9188 = extractvalue %dx.types.ResRet.f32 %9184, 3
  %9189 = fadd fast float %9185, -5.000000e-01
  %9190 = fadd fast float %9187, -5.000000e-01
  %9191 = fmul fast float %9189, 0xBFD5555560000000
  %9192 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9190, float %9191)  ; FMad(a,b,c)
  %9193 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9186, float 0.000000e+00)  ; FMad(a,b,c)
  %9194 = fadd fast float %9193, %9188
  %9195 = fmul fast float %9189, -7.500000e-01
  %9196 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9190, float %9195)  ; FMad(a,b,c)
  %9197 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9186, float 0.000000e+00)  ; FMad(a,b,c)
  %9198 = fadd fast float %9197, %9188
  %9199 = call float @dx.op.binary.f32(i32 35, float %9192, float -1.000000e+00)  ; FMax(a,b)
  %9200 = call float @dx.op.binary.f32(i32 35, float %9194, float -1.000000e+00)  ; FMax(a,b)
  %9201 = call float @dx.op.binary.f32(i32 35, float %9196, float -1.000000e+00)  ; FMax(a,b)
  %9202 = call float @dx.op.binary.f32(i32 35, float %9198, float -1.000000e+00)  ; FMax(a,b)
  %9203 = call float @dx.op.binary.f32(i32 36, float %9199, float 1.000000e+00)  ; FMin(a,b)
  %9204 = call float @dx.op.binary.f32(i32 36, float %9200, float 1.000000e+00)  ; FMin(a,b)
  %9205 = call float @dx.op.binary.f32(i32 36, float %9201, float 1.000000e+00)  ; FMin(a,b)
  %9206 = call float @dx.op.binary.f32(i32 36, float %9202, float 1.000000e+00)  ; FMin(a,b)
  %9207 = fcmp fast olt float %9203, 0x3FEFFF8020000000
  br i1 %9207, label %9208, label %9323, !dx.controlflow.hints !178

; <label>:9208                                    ; preds = %9175
  %9209 = extractvalue %dx.types.CBufRet.f32 %9091, 3
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9213 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9214 = extractvalue %dx.types.CBufRet.f32 %9210, 3
  %9215 = fsub fast float %9211, %9203
  %9216 = fsub fast float %9212, %9204
  %9217 = fsub fast float %9213, %9205
  %9218 = fsub fast float %9214, %9206
  %9219 = fmul fast float %9215, %9209
  %9220 = fmul fast float %9216, %9209
  %9221 = fmul fast float %9217, %9209
  %9222 = fmul fast float %9218, %9209
  %9223 = fadd fast float %9219, %9203
  %9224 = fadd fast float %9220, %9204
  %9225 = fsub fast float -0.000000e+00, %9224
  %9226 = fadd fast float %9221, %9205
  %9227 = fadd fast float %9222, %9206
  %9228 = fmul fast float %9223, %9223
  %9229 = fsub fast float %9224, %9228
  %9230 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9229)  ; FMax(a,b)
  %9231 = fdiv fast float 1.000000e+00, %9230
  %9232 = fmul fast float %9224, %9223
  %9233 = fsub fast float %9226, %9232
  %9234 = fsub fast float %9183, %9223
  %9235 = fmul fast float %9183, %9183
  %9236 = fsub fast float %9235, %9224
  %9237 = fmul fast float %9234, %9231
  %9238 = fmul fast float %9237, %9233
  %9239 = fsub fast float %9236, %9238
  %9240 = fmul fast float %9224, %9224
  %9241 = fsub fast float %9227, %9240
  %9242 = fmul fast float %9233, %9233
  %9243 = fmul fast float %9242, %9231
  %9244 = fsub fast float %9241, %9243
  %9245 = fdiv fast float %9239, %9244
  %9246 = fmul fast float %9233, %9245
  %9247 = fsub fast float %9234, %9246
  %9248 = fmul fast float %9247, %9231
  %9249 = fmul fast float %9248, %9223
  %9250 = fsub fast float 1.000000e+00, %9249
  %9251 = fmul fast float %9224, %9245
  %9252 = fsub fast float %9250, %9251
  %9253 = fmul fast float %9248, %9248
  %9254 = fmul fast float %9245, 4.000000e+00
  %9255 = fmul fast float %9254, %9252
  %9256 = fsub fast float %9253, %9255
  %9257 = call float @dx.op.unary.f32(i32 24, float %9256)  ; Sqrt(value)
  %9258 = fcmp fast oge float %9248, 0.000000e+00
  %9259 = fsub fast float -0.000000e+00, %9257
  %9260 = select i1 %9258, float %9259, float %9257
  %9261 = fsub fast float %9260, %9248
  %9262 = fdiv fast float %9261, %9245
  %9263 = fdiv fast float %9252, %9261
  %9264 = fmul fast float %9262, 5.000000e-01
  %9265 = fmul fast float %9263, 2.000000e+00
  %9266 = select i1 %9258, float %9264, float %9265
  %9267 = select i1 %9258, float %9265, float %9264
  %9268 = call float @dx.op.binary.f32(i32 35, float %9266, float %9267)  ; FMax(a,b)
  %9269 = call float @dx.op.binary.f32(i32 36, float %9266, float %9267)  ; FMin(a,b)
  %9270 = fcmp fast ogt float %9183, %9269
  br i1 %9270, label %9271, label %9281

; <label>:9271                                    ; preds = %9208
  %9272 = fsub fast float %9183, %9269
  %9273 = fsub fast float %9268, %9269
  %9274 = fmul fast float %9272, %9273
  %9275 = fmul fast float %9268, %9183
  %9276 = fadd fast float %9268, %9183
  %9277 = fmul fast float %9276, %9223
  %9278 = fadd fast float %9275, %9224
  %9279 = fsub fast float %9278, %9277
  %9280 = fdiv fast float %9279, %9274
  br label %9281

; <label>:9281                                    ; preds = %9271, %9208
  %9282 = phi float [ %9280, %9271 ], [ 0.000000e+00, %9208 ]
  %9283 = fcmp fast ogt float %9183, %9268
  %9284 = fsub fast float %9183, %9268
  br i1 %9283, label %9285, label %9295

; <label>:9285                                    ; preds = %9281
  %9286 = fsub fast float %9268, %9269
  %9287 = fmul fast float %9286, %9284
  %9288 = fmul fast float %9269, %9183
  %9289 = fadd fast float %9269, %9183
  %9290 = fmul fast float %9289, %9223
  %9291 = fsub fast float %9225, %9288
  %9292 = fadd fast float %9291, %9290
  %9293 = fdiv fast float %9292, %9287
  %9294 = fadd fast float %9293, %9282
  br label %9295

; <label>:9295                                    ; preds = %9285, %9281
  %9296 = phi float [ %9294, %9285 ], [ %9282, %9281 ]
  %9297 = fsub fast float %9183, %9269
  %9298 = fmul fast float %9297, %9284
  %9299 = fmul fast float %9269, %9268
  %9300 = fadd fast float %9269, %9268
  %9301 = fmul fast float %9300, %9223
  %9302 = fadd fast float %9299, %9224
  %9303 = fsub fast float %9302, %9301
  %9304 = fdiv fast float %9303, %9298
  %9305 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9306 = fcmp fast oeq float %7974, 0.000000e+00
  %9307 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9308 = fcmp fast oeq float %9307, 0.000000e+00
  %9309 = or i1 %9306, %9308
  %9310 = fmul fast float %9307, 2.000000e+00
  %9311 = fadd fast float %9092, %9093
  %9312 = fdiv fast float %9311, %9310
  %9313 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9314 = fmul fast float %9313, 2.000000e+00
  %9315 = fsub fast float 3.000000e+00, %9314
  %9316 = fmul fast float %9313, %9313
  %9317 = fmul fast float %9316, %9315
  %9318 = select i1 %9309, float 1.000000e+00, float %9317
  %9319 = fmul fast float %9304, %7974
  %9320 = fadd fast float %9305, %9319
  %9321 = call float @dx.op.unary.f32(i32 7, float %9320)  ; Saturate(value)
  %9322 = fmul fast float %9318, %9321
  br label %9323

; <label>:9323                                    ; preds = %9295, %9175
  %9324 = phi float [ %9322, %9295 ], [ 0.000000e+00, %9175 ]
  %9325 = fsub fast float 1.000000e+00, %9324
  %9326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9045, float %9046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9327 = extractvalue %dx.types.ResRet.f32 %9326, 0
  %9328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.i32 %9328, 2
  %9330 = icmp eq i32 %9329, 0
  br i1 %9330, label %9336, label %9331

; <label>:9331                                    ; preds = %9323
  %9332 = call float @dx.op.unary.f32(i32 7, float %9324)  ; Saturate(value)
  %9333 = fadd fast float %9327, -1.000000e+00
  %9334 = fmul fast float %9332, %9333
  %9335 = fadd fast float %9334, 1.000000e+00
  br label %9336

; <label>:9336                                    ; preds = %9331, %9323
  %9337 = phi float [ %9335, %9331 ], [ %9325, %9323 ]
  br i1 %9099, label %9338, label %9356

; <label>:9338                                    ; preds = %9336
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 1
  %9341 = fsub fast float %9176, %9340
  %9342 = call float @dx.op.unary.f32(i32 7, float %9341)  ; Saturate(value)
  %9343 = fsub fast float %9176, %9098
  %9344 = call float @dx.op.unary.f32(i32 7, float %9343)  ; Saturate(value)
  %9345 = fsub fast float %9342, %9344
  %9346 = fsub fast float %9178, %9344
  %9347 = fdiv fast float %9346, %9345
  %9348 = call float @dx.op.unary.f32(i32 7, float %9347)  ; Saturate(value)
  %9349 = fmul fast float %9348, 2.000000e+00
  %9350 = fsub fast float 3.000000e+00, %9349
  %9351 = fsub fast float %9327, %9337
  %9352 = fmul fast float %9348, %9348
  %9353 = fmul fast float %9352, %9351
  %9354 = fmul fast float %9353, %9350
  %9355 = fadd fast float %9354, %9337
  br label %9356

; <label>:9356                                    ; preds = %9338, %9336
  %9357 = phi float [ %9355, %9338 ], [ %9337, %9336 ]
  %9358 = call float @dx.op.binary.f32(i32 35, float %9327, float %9357)  ; FMax(a,b)
  %9359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9360 = extractvalue %dx.types.CBufRet.i32 %9359, 2
  %9361 = and i32 %9360, 1
  %9362 = icmp eq i32 %9361, 0
  %9363 = fcmp fast une float %9358, 1.000000e+00
  %9364 = and i1 %9363, %9362
  br i1 %9364, label %9365, label %9384

; <label>:9365                                    ; preds = %9356
  %9366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9045, float %9046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9367 = extractvalue %dx.types.ResRet.f32 %9366, 0
  %9368 = extractvalue %dx.types.ResRet.f32 %9366, 1
  %9369 = extractvalue %dx.types.ResRet.f32 %9366, 2
  %9370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9370, 1
  %9372 = fmul fast float %9371, %9367
  %9373 = fmul fast float %9371, %9368
  %9374 = fmul fast float %9371, %9369
  %9375 = fcmp fast ogt float %9327, 0x3FEFFF2E40000000
  %9376 = fsub fast float 1.000000e+00, %9358
  %9377 = fsub fast float 1.000000e+00, %9327
  %9378 = fdiv fast float %9376, %9377
  %9379 = call float @dx.op.unary.f32(i32 7, float %9378)  ; Saturate(value)
  %9380 = select i1 %9375, float 0.000000e+00, float %9379
  %9381 = fmul fast float %9372, %9380
  %9382 = fmul fast float %9373, %9380
  %9383 = fmul fast float %9374, %9380
  br label %9384

; <label>:9384                                    ; preds = %9365, %9356
  %9385 = phi float [ 0.000000e+00, %9356 ], [ %9381, %9365 ]
  %9386 = phi float [ 0.000000e+00, %9356 ], [ %9382, %9365 ]
  %9387 = phi float [ 0.000000e+00, %9356 ], [ %9383, %9365 ]
  %9388 = fmul fast float %9385, %7958
  %9389 = fmul fast float %9386, %7960
  %9390 = fmul fast float %9387, %7962
  %9391 = fmul fast float %9358, %9020
  %9392 = call float @dx.op.dot3.f32(i32 55, float %9358, float %9358, float %9358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9393 = call float @dx.op.dot3.f32(i32 55, float %9388, float %9389, float %9390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9394 = select i1 %269, float %9392, float %9358
  %9395 = select i1 %269, float 1.000000e+00, float %9358
  %9396 = select i1 %269, float %9393, float %9388
  %9397 = select i1 %269, float 0.000000e+00, float %9389
  %9398 = select i1 %269, float 0.000000e+00, float %9390
  %9399 = fmul fast float %9394, %9032
  %9400 = fmul fast float %9394, %9033
  %9401 = fmul fast float %9395, %9034
  %9402 = fadd fast float %9399, %9396
  %9403 = fadd fast float %9400, %9397
  %9404 = fadd fast float %9398, %9401
  %9405 = fmul fast float %9394, %9035
  %9406 = fmul fast float %9394, %9036
  %9407 = fmul fast float %9395, %9037
  br label %9408

; <label>:9408                                    ; preds = %9384, %9041, %9010, %8242
  %9409 = phi float [ %8247, %8242 ], [ %9032, %9010 ], [ %9402, %9384 ], [ %9032, %9041 ]
  %9410 = phi float [ %8248, %8242 ], [ %9033, %9010 ], [ %9403, %9384 ], [ %9033, %9041 ]
  %9411 = phi float [ %8249, %8242 ], [ %9034, %9010 ], [ %9404, %9384 ], [ %9034, %9041 ]
  %9412 = phi float [ %8250, %8242 ], [ %9035, %9010 ], [ %9405, %9384 ], [ %9035, %9041 ]
  %9413 = phi float [ %8251, %8242 ], [ %9036, %9010 ], [ %9406, %9384 ], [ %9036, %9041 ]
  %9414 = phi float [ %8252, %8242 ], [ %9037, %9010 ], [ %9407, %9384 ], [ %9037, %9041 ]
  %9415 = phi float [ %8253, %8242 ], [ %9020, %9010 ], [ %9391, %9384 ], [ %9020, %9041 ]
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 2
  %9418 = extractvalue %dx.types.CBufRet.f32 %9416, 3
  %9419 = fmul fast float %9417, %110
  %9420 = fmul fast float %9418, %111
  %9421 = call float @dx.op.unary.f32(i32 7, float %9419)  ; Saturate(value)
  %9422 = call float @dx.op.unary.f32(i32 7, float %9420)  ; Saturate(value)
  %9423 = select i1 %7984, i32 2, i32 0
  %9424 = or i32 %9423, 1
  %9425 = uitofp i32 %9424 to float
  %9426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9421, float %9422, float %9425, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9427 = extractvalue %dx.types.ResRet.f32 %9426, 0
  %9428 = extractvalue %dx.types.ResRet.f32 %9426, 1
  %9429 = extractvalue %dx.types.ResRet.f32 %9426, 2
  %9430 = extractvalue %dx.types.ResRet.f32 %9426, 3
  %9431 = add nuw nsw i32 %9423, 2
  %9432 = uitofp i32 %9431 to float
  %9433 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9421, float %9422, float %9432, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9434 = extractvalue %dx.types.ResRet.f32 %9433, 0
  %9435 = extractvalue %dx.types.ResRet.f32 %9433, 1
  %9436 = extractvalue %dx.types.ResRet.f32 %9433, 2
  %9437 = extractvalue %dx.types.ResRet.f32 %9433, 3
  %9438 = call float @dx.op.binary.f32(i32 35, float %9428, float %9429)  ; FMax(a,b)
  %9439 = call float @dx.op.binary.f32(i32 35, float %9427, float %9438)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 35, float %9439, float %9430)  ; FMax(a,b)
  %9441 = call float @dx.op.binary.f32(i32 36, float %9435, float %9436)  ; FMin(a,b)
  %9442 = call float @dx.op.binary.f32(i32 36, float %9434, float %9441)  ; FMin(a,b)
  %9443 = call float @dx.op.binary.f32(i32 36, float %9442, float %9437)  ; FMin(a,b)
  %9444 = fmul fast float %9440, 2.550000e+02
  %9445 = fadd fast float %9444, 0x3F70101020000000
  %9446 = fptoui float %9445 to i32
  %9447 = fmul fast float %9443, 2.550000e+02
  %9448 = fadd fast float %9447, 0x3F70101020000000
  %9449 = fptoui float %9448 to i32
  %9450 = icmp ult i32 %9446, %9449
  br i1 %9450, label %9451, label %9620

; <label>:9451                                    ; preds = %9408
  %9452 = fcmp fast ogt float %100, 9.843750e-01
  %9453 = fadd fast float %8246, -4.000000e+00
  %9454 = select i1 %9452, float -4.000000e+00, float %9453
  %9455 = call float @dx.op.binary.f32(i32 35, float %9454, float 0.000000e+00)  ; FMax(a,b)
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 0
  %9458 = fadd fast float %9457, %9455
  %9459 = extractvalue %dx.types.CBufRet.f32 %9456, 2
  %9460 = fmul fast float %9458, %9459
  %9461 = call float @dx.op.unary.f32(i32 23, float %9460)  ; Log(value)
  %9462 = extractvalue %dx.types.CBufRet.f32 %9456, 3
  %9463 = fmul fast float %9462, %9461
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 2
  %9466 = fmul fast float %9463, %9465
  %9467 = call float @dx.op.unary.f32(i32 7, float %9466)  ; Saturate(value)
  %9468 = uitofp i32 %9446 to float
  %9469 = uitofp i32 %9449 to float
  %9470 = fadd fast float %9468, 5.000000e-01
  %9471 = fadd fast float %9469, 5.000000e-01
  %9472 = fmul fast float %9465, %9470
  %9473 = fmul fast float %9465, %9471
  %9474 = fadd fast float %9472, 0x3F0FFB4800000000
  %9475 = fadd fast float %9473, 0xBF0FFB4800000000
  %9476 = call float @dx.op.binary.f32(i32 35, float %9467, float %9474)  ; FMax(a,b)
  %9477 = call float @dx.op.binary.f32(i32 36, float %9476, float %9475)  ; FMin(a,b)
  %9478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9478, 1
  %9480 = extractvalue %dx.types.CBufRet.f32 %9478, 2
  %9481 = extractvalue %dx.types.CBufRet.f32 %9478, 0
  %9482 = select i1 %7984, float %9481, float 0.000000e+00
  %9483 = fmul fast float %9479, %9477
  %9484 = fadd fast float %9482, %9483
  %9485 = fadd fast float %9482, %9480
  %9486 = fsub fast float %9479, %9480
  %9487 = fadd fast float %9486, %9482
  %9488 = call float @dx.op.binary.f32(i32 35, float %9484, float %9485)  ; FMax(a,b)
  %9489 = call float @dx.op.binary.f32(i32 36, float %9488, float %9487)  ; FMin(a,b)
  %9490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9421, float %9422, float %9489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9491 = extractvalue %dx.types.ResRet.f32 %9490, 0
  %9492 = extractvalue %dx.types.ResRet.f32 %9490, 1
  %9493 = extractvalue %dx.types.ResRet.f32 %9490, 2
  %9494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9495 = extractvalue %dx.types.CBufRet.i32 %9494, 0
  %9496 = extractvalue %dx.types.CBufRet.i32 %9494, 1
  %9497 = uitofp i32 %9495 to float
  %9498 = uitofp i32 %9496 to float
  %9499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9500 = extractvalue %dx.types.CBufRet.f32 %9499, 0
  %9501 = extractvalue %dx.types.CBufRet.f32 %9499, 1
  %9502 = fmul fast float %9497, %9421
  %9503 = fmul fast float %9498, %9422
  %9504 = fadd fast float %9502, -5.000000e-01
  %9505 = fadd fast float %9503, -5.000000e-01
  %9506 = call float @dx.op.unary.f32(i32 22, float %9504)  ; Frc(value)
  %9507 = call float @dx.op.unary.f32(i32 22, float %9505)  ; Frc(value)
  %9508 = fmul fast float %9506, %9506
  %9509 = fmul fast float %9508, %9506
  %9510 = fsub fast float 3.000000e+00, %9506
  %9511 = fmul fast float %9508, %9510
  %9512 = fmul fast float %9506, 3.000000e+00
  %9513 = fmul fast float %9509, 3.000000e+00
  %9514 = fmul fast float %9508, 6.000000e+00
  %9515 = fsub fast float %9513, %9514
  %9516 = fadd fast float %9515, 4.000000e+00
  %9517 = fmul fast float %9516, 0x3FC5555560000000
  %9518 = fmul fast float %9509, -3.000000e+00
  %9519 = fadd fast float %9508, %9506
  %9520 = fmul fast float %9519, 3.000000e+00
  %9521 = fadd fast float %9518, 1.000000e+00
  %9522 = fadd fast float %9521, %9520
  %9523 = fmul fast float %9509, 0x3FC5555560000000
  %9524 = fmul fast float %9507, %9507
  %9525 = fmul fast float %9524, %9507
  %9526 = fsub fast float 3.000000e+00, %9507
  %9527 = fmul fast float %9524, %9526
  %9528 = fmul fast float %9507, 3.000000e+00
  %9529 = fmul fast float %9525, 3.000000e+00
  %9530 = fmul fast float %9524, 6.000000e+00
  %9531 = fsub fast float %9529, %9530
  %9532 = fadd fast float %9531, 4.000000e+00
  %9533 = fmul fast float %9532, 0x3FC5555560000000
  %9534 = fmul fast float %9525, -3.000000e+00
  %9535 = fadd fast float %9524, %9507
  %9536 = fmul fast float %9535, 3.000000e+00
  %9537 = fadd fast float %9534, 1.000000e+00
  %9538 = fadd fast float %9537, %9536
  %9539 = fmul fast float %9525, 0x3FC5555560000000
  %9540 = fadd fast float %9506, 1.000000e+00
  %9541 = fsub fast float 1.000000e+00, %9512
  %9542 = fadd fast float %9541, %9511
  %9543 = fadd fast float %9542, %9516
  %9544 = fmul fast float %9543, 0x3FC5555560000000
  %9545 = fdiv fast float %9517, %9544
  %9546 = fsub fast float %9540, %9545
  %9547 = fsub fast float 1.000000e+00, %9506
  %9548 = fadd fast float %9522, %9509
  %9549 = fmul fast float %9548, 0x3FC5555560000000
  %9550 = fdiv fast float %9523, %9549
  %9551 = fadd fast float %9547, %9550
  %9552 = fadd fast float %9507, 1.000000e+00
  %9553 = fsub fast float 1.000000e+00, %9528
  %9554 = fadd fast float %9553, %9527
  %9555 = fadd fast float %9554, %9532
  %9556 = fmul fast float %9555, 0x3FC5555560000000
  %9557 = fdiv fast float %9533, %9556
  %9558 = fsub fast float %9552, %9557
  %9559 = fsub fast float 1.000000e+00, %9507
  %9560 = fadd fast float %9538, %9525
  %9561 = fmul fast float %9560, 0x3FC5555560000000
  %9562 = fdiv fast float %9539, %9561
  %9563 = fadd fast float %9562, %9559
  %9564 = fmul fast float %9546, %9500
  %9565 = fsub fast float %9421, %9564
  %9566 = fmul fast float %9551, %9500
  %9567 = fadd fast float %9566, %9421
  %9568 = fmul fast float %9563, %9501
  %9569 = fadd fast float %9568, %9422
  %9570 = fmul fast float %9558, %9501
  %9571 = fsub fast float %9422, %9570
  %9572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9565, float %9571, float %9489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9573 = extractvalue %dx.types.ResRet.f32 %9572, 0
  %9574 = extractvalue %dx.types.ResRet.f32 %9572, 1
  %9575 = extractvalue %dx.types.ResRet.f32 %9572, 2
  %9576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9567, float %9571, float %9489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9577 = extractvalue %dx.types.ResRet.f32 %9576, 0
  %9578 = extractvalue %dx.types.ResRet.f32 %9576, 1
  %9579 = extractvalue %dx.types.ResRet.f32 %9576, 2
  %9580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9565, float %9569, float %9489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9581 = extractvalue %dx.types.ResRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.ResRet.f32 %9580, 1
  %9583 = extractvalue %dx.types.ResRet.f32 %9580, 2
  %9584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9567, float %9569, float %9489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9585 = extractvalue %dx.types.ResRet.f32 %9584, 0
  %9586 = extractvalue %dx.types.ResRet.f32 %9584, 1
  %9587 = extractvalue %dx.types.ResRet.f32 %9584, 2
  %9588 = fsub fast float %9581, %9573
  %9589 = fsub fast float %9582, %9574
  %9590 = fsub fast float %9583, %9575
  %9591 = fmul fast float %9588, %9561
  %9592 = fmul fast float %9589, %9561
  %9593 = fmul fast float %9590, %9561
  %9594 = fadd fast float %9591, %9573
  %9595 = fadd fast float %9592, %9574
  %9596 = fadd fast float %9593, %9575
  %9597 = fsub fast float %9585, %9577
  %9598 = fsub fast float %9586, %9578
  %9599 = fsub fast float %9587, %9579
  %9600 = fmul fast float %9597, %9561
  %9601 = fmul fast float %9598, %9561
  %9602 = fmul fast float %9599, %9561
  %9603 = fsub fast float %9577, %9594
  %9604 = fadd fast float %9603, %9600
  %9605 = fsub fast float %9578, %9595
  %9606 = fadd fast float %9605, %9601
  %9607 = fsub fast float %9579, %9596
  %9608 = fadd fast float %9607, %9602
  %9609 = fmul fast float %9604, %9549
  %9610 = fmul fast float %9606, %9549
  %9611 = fmul fast float %9608, %9549
  %9612 = fadd fast float %9609, %9594
  %9613 = fadd fast float %9610, %9595
  %9614 = fadd fast float %9611, %9596
  %9615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9616 = extractvalue %dx.types.CBufRet.f32 %9615, 1
  %9617 = fmul fast float %9612, %9616
  %9618 = fmul fast float %9613, %9616
  %9619 = fmul fast float %9614, %9616
  br label %9620

; <label>:9620                                    ; preds = %9451, %9408
  %9621 = phi float [ %9491, %9451 ], [ 1.000000e+00, %9408 ]
  %9622 = phi float [ %9492, %9451 ], [ 1.000000e+00, %9408 ]
  %9623 = phi float [ %9493, %9451 ], [ 1.000000e+00, %9408 ]
  %9624 = phi float [ %9617, %9451 ], [ 0.000000e+00, %9408 ]
  %9625 = phi float [ %9618, %9451 ], [ 0.000000e+00, %9408 ]
  %9626 = phi float [ %9619, %9451 ], [ 0.000000e+00, %9408 ]
  %9627 = fmul fast float %9624, %7958
  %9628 = fmul fast float %9625, %7960
  %9629 = fmul fast float %9626, %7962
  %9630 = fmul fast float %9621, %9415
  %9631 = call float @dx.op.dot3.f32(i32 55, float %9621, float %9622, float %9623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9632 = call float @dx.op.dot3.f32(i32 55, float %9627, float %9628, float %9629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9633 = select i1 %269, float %9631, float %9621
  %9634 = select i1 %269, float %9631, float %9622
  %9635 = select i1 %269, float 1.000000e+00, float %9623
  %9636 = select i1 %269, float %9632, float %9627
  %9637 = select i1 %269, float 0.000000e+00, float %9628
  %9638 = select i1 %269, float 0.000000e+00, float %9629
  %9639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.i32 %9639, 3
  %9641 = and i32 %9640, 3
  %9642 = icmp ne i32 %9641, 0
  %9643 = and i32 %9640, 4
  %9644 = icmp ne i32 %9643, 0
  %9645 = and i1 %9642, %9644
  %9646 = and i1 %269, %9645
  br i1 %9646, label %9647, label %9653

; <label>:9647                                    ; preds = %9620
  %9648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9649 = extractvalue %dx.types.CBufRet.f32 %9648, 1
  %9650 = fadd fast float %9630, -1.000000e+00
  %9651 = fmul fast float %9649, %9650
  %9652 = fadd fast float %9651, 1.000000e+00
  br label %9653

; <label>:9653                                    ; preds = %9647, %9620
  %9654 = phi float [ %9652, %9647 ], [ %9630, %9620 ]
  %9655 = fadd fast float %9412, %9409
  %9656 = fmul fast float %9633, %9655
  %9657 = fadd fast float %9656, %9636
  %9658 = fadd fast float %9413, %9410
  %9659 = fmul fast float %9634, %9658
  %9660 = fadd fast float %9659, %9637
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 0
  br i1 %269, label %9663, label %9679

; <label>:9663                                    ; preds = %9653
  %9664 = fadd fast float %9657, %9660
  %9665 = fmul fast float %9662, %9664
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 3
  %9668 = extractvalue %dx.types.CBufRet.f32 %7966, 1
  %9669 = fsub fast float %7971, %7965
  %9670 = fadd fast float %9669, %7972
  %9671 = fsub fast float %9670, %9668
  %9672 = extractvalue %dx.types.CBufRet.f32 %7966, 2
  %9673 = fmul fast float %9671, %9672
  %9674 = call float @dx.op.unary.f32(i32 7, float %9673)  ; Saturate(value)
  %9675 = fsub fast float %9674, %9667
  %9676 = fmul fast float %9675, %9654
  %9677 = fadd fast float %9676, %9667
  %9678 = fmul fast float %9677, %4662
  br label %9705

; <label>:9679                                    ; preds = %9653
  %9680 = fadd fast float %9414, %9411
  %9681 = fmul fast float %9635, %9680
  %9682 = fadd fast float %9681, %9638
  %9683 = fmul fast float %9662, %9657
  %9684 = fmul fast float %9662, %9660
  %9685 = fmul fast float %9662, %9682
  %9686 = call float @dx.op.binary.f32(i32 35, float %9684, float %9685)  ; FMax(a,b)
  %9687 = call float @dx.op.binary.f32(i32 35, float %9683, float %9686)  ; FMax(a,b)
  %9688 = call float @dx.op.binary.f32(i32 35, float %7960, float %7962)  ; FMax(a,b)
  %9689 = call float @dx.op.binary.f32(i32 35, float %7958, float %9688)  ; FMax(a,b)
  %9690 = call float @dx.op.binary.f32(i32 35, float %9687, float %9689)  ; FMax(a,b)
  %9691 = fcmp fast ugt float %9690, 0x3F10000000000000
  br i1 %9691, label %9693, label %9692

; <label>:9692                                    ; preds = %9679
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9693

; <label>:9693                                    ; preds = %9692, %9679
  %9694 = add i32 %56, 356
  %9695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9694, i32 undef)  ; BufferLoad(srv,index,wot)
  %9696 = extractvalue %dx.types.ResRet.i32 %9695, 0
  %9697 = and i32 %9696, 32
  %9698 = icmp eq i32 %9697, 0
  br i1 %9698, label %9705, label %9699

; <label>:9699                                    ; preds = %9693
  %9700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9701 = extractvalue %dx.types.CBufRet.f32 %9700, 0
  %9702 = fmul fast float %9701, 0x3FE99999A0000000
  %9703 = fadd fast float %9701, %9683
  %9704 = fadd fast float %9702, %9685
  br label %9705

; <label>:9705                                    ; preds = %9699, %9693, %9663
  %9706 = phi float [ %4662, %9663 ], [ %7960, %9699 ], [ %7960, %9693 ]
  %9707 = phi float [ %4662, %9663 ], [ %7962, %9699 ], [ %7962, %9693 ]
  %9708 = phi float [ %9665, %9663 ], [ %9703, %9699 ], [ %9683, %9693 ]
  %9709 = phi float [ %9678, %9663 ], [ %9684, %9699 ], [ %9684, %9693 ]
  %9710 = phi float [ %4662, %9663 ], [ %9704, %9699 ], [ %9685, %9693 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9711 = call float @dx.op.binary.f32(i32 36, float %9708, float 3.225500e+04)  ; FMin(a,b)
  %9712 = call float @dx.op.binary.f32(i32 36, float %9709, float 3.225500e+04)  ; FMin(a,b)
  %9713 = call float @dx.op.binary.f32(i32 36, float %9710, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9711)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9712)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9713)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9714 = call float @dx.op.binary.f32(i32 36, float %7958, float 3.225500e+04)  ; FMin(a,b)
  %9715 = call float @dx.op.binary.f32(i32 36, float %9706, float 3.225500e+04)  ; FMin(a,b)
  %9716 = call float @dx.op.binary.f32(i32 36, float %9707, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9714)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9715)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9716)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

