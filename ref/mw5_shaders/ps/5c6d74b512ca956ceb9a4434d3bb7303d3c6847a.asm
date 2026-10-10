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
; shader hash: 8bf7bc09fd807f69dc5553414422d661
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
  br i1 %715, label %1351, label %716

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
  %1297 = and i32 %1296, 26624
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1335, label %1299

; <label>:1299                                    ; preds = %1271
  %1300 = add i32 %56, 524
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %1302, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1304, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = and i32 %1308, 1048576
  %1310 = icmp ne i32 %1309, 0
  %1311 = and i32 %1308, 2048
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1322, label %1313

; <label>:1313                                    ; preds = %1299
  %1314 = extractvalue %dx.types.ResRet.f32 %1305, 3
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = shl i32 %1316, 4
  %1318 = and i32 %1317, 32752
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = fmul fast float %1319, %1314
  %1321 = call float @dx.op.binary.f32(i32 35, float %1320, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1322

; <label>:1322                                    ; preds = %1313, %1299
  %1323 = phi float [ %1321, %1313 ], [ 0x3F70101020000000, %1299 ]
  %1324 = and i32 %1308, 16384
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1335, label %1326

; <label>:1326                                    ; preds = %1322
  %1327 = add i32 %56, 96
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = lshr i32 %1329, 24
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1306, 0x3F70101020000000
  %1333 = select i1 %1310, float 0x3F70101020000000, float %1332
  %1334 = fmul fast float %1333, %1331
  br label %1335

; <label>:1335                                    ; preds = %1326, %1322, %1271
  %1336 = phi float [ %1323, %1326 ], [ %1323, %1322 ], [ 0x3F70101020000000, %1271 ]
  %1337 = phi float [ %1334, %1326 ], [ 0.000000e+00, %1322 ], [ 0.000000e+00, %1271 ]
  %1338 = add i32 %56, 96
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = and i32 %1340, 255
  %1342 = uitofp i32 %1341 to float
  %1343 = lshr i32 %1340, 8
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1347 = fmul fast float %1345, %1346
  %1348 = fadd fast float %1347, %1342
  %1349 = fmul fast float %1348, 0x3F70101020000000
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  br label %1351

; <label>:1351                                    ; preds = %1335, %701
  %1352 = phi float [ 0.000000e+00, %701 ], [ %1187, %1335 ]
  %1353 = phi float [ 0.000000e+00, %701 ], [ %1188, %1335 ]
  %1354 = phi float [ 0.000000e+00, %701 ], [ %1106, %1335 ]
  %1355 = phi float [ 0.000000e+00, %701 ], [ %1107, %1335 ]
  %1356 = phi float [ 0.000000e+00, %701 ], [ %1108, %1335 ]
  %1357 = phi float [ 0.000000e+00, %701 ], [ %1234, %1335 ]
  %1358 = phi float [ 0.000000e+00, %701 ], [ %1235, %1335 ]
  %1359 = phi float [ 0.000000e+00, %701 ], [ %1236, %1335 ]
  %1360 = phi float [ 0.000000e+00, %701 ], [ %1292, %1335 ]
  %1361 = phi float [ 0.000000e+00, %701 ], [ %1293, %1335 ]
  %1362 = phi float [ 0.000000e+00, %701 ], [ %1294, %1335 ]
  %1363 = phi float [ 0.000000e+00, %701 ], [ %1092, %1335 ]
  %1364 = phi float [ 0.000000e+00, %701 ], [ %888, %1335 ]
  %1365 = phi float [ 0.000000e+00, %701 ], [ %1186, %1335 ]
  %1366 = phi float [ 0.000000e+00, %701 ], [ %1189, %1335 ]
  %1367 = phi float [ 0.000000e+00, %701 ], [ %1336, %1335 ]
  %1368 = phi float [ 0.000000e+00, %701 ], [ %1337, %1335 ]
  %1369 = phi float [ 0.000000e+00, %701 ], [ %1350, %1335 ]
  br i1 %649, label %2268, label %1370

; <label>:1370                                    ; preds = %1351
  %1371 = icmp ult i32 %707, 2
  %1372 = add i32 %56, 40
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = add i32 %56, 44
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = or i32 %1377, %1374
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %2268, label %1380

; <label>:1380                                    ; preds = %1370
  %1381 = and i32 %1374, 262144
  %1382 = icmp ne i32 %1381, 0
  %1383 = select i1 %1382, float %64, float 1.000000e+00
  %1384 = select i1 %1382, float %65, float 0.000000e+00
  %1385 = select i1 %1382, float %66, float 0.000000e+00
  %1386 = select i1 %1382, float %67, float 1.000000e+00
  %1387 = select i1 %1382, float %68, float %92
  %1388 = select i1 %1382, float %69, float %93
  %1389 = add i32 %56, 300
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = lshr i32 %1391, 16
  %1393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1392)  ; LegacyF16ToF32(value)
  %1394 = fmul fast float %1393, 0x3F50624DE0000000
  %1395 = add i32 %56, 104
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = lshr i32 %1397, 16
  %1399 = and i32 %1398, 255
  %1400 = lshr i32 %1397, 24
  %1401 = add i32 %56, 308
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 65535
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = lshr i32 %1403, 16
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = add i32 %56, 48
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = lshr i32 %1410, 22
  %1412 = shl nuw nsw i32 %1411, 5
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = shl i32 %1410, 4
  %1415 = and i32 %1414, 32752
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = lshr i32 %1410, 7
  %1418 = and i32 %1417, 32752
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 3
  %1422 = fmul fast float %1421, 1.000000e+03
  %1423 = fmul fast float %1422, %428
  %1424 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1425 = fadd fast float %1424, %416
  %1426 = fmul fast float %1422, %430
  %1427 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1428 = fadd fast float %1427, %417
  %1429 = fmul fast float %1394, %1422
  %1430 = call float @dx.op.unary.f32(i32 22, float %1429)  ; Frc(value)
  %1431 = fmul fast float %1430, 0x401921FB60000000
  %1432 = fadd fast float %1431, %1413
  %1433 = call float @dx.op.unary.f32(i32 13, float %1432)  ; Sin(value)
  %1434 = call float @dx.op.unary.f32(i32 12, float %1432)  ; Cos(value)
  %1435 = fsub fast float -0.000000e+00, %1433
  %1436 = fadd fast float %1387, -5.000000e-01
  %1437 = fadd fast float %1388, -5.000000e-01
  %1438 = fmul fast float %1405, %1436
  %1439 = fmul fast float %1407, %1437
  %1440 = fadd fast float %1438, 5.000000e-01
  %1441 = fadd fast float %1439, 5.000000e-01
  %1442 = fmul fast float %1416, %1440
  %1443 = fmul fast float %1419, %1441
  %1444 = fmul fast float %1434, %1442
  %1445 = call float @dx.op.tertiary.f32(i32 46, float %1435, float %1443, float %1444)  ; FMad(a,b,c)
  %1446 = fmul fast float %1433, %1442
  %1447 = call float @dx.op.tertiary.f32(i32 46, float %1434, float %1443, float %1446)  ; FMad(a,b,c)
  %1448 = fadd fast float %1425, %1445
  %1449 = fadd fast float %1428, %1447
  %1450 = icmp ugt i32 %1399, 1
  %1451 = icmp ugt i32 %1397, 33554431
  %1452 = or i1 %1451, %1450
  br i1 %1452, label %1453, label %1478

; <label>:1453                                    ; preds = %1380
  %1454 = add i32 %56, 244
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = lshr i32 %1456, 16
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = fmul fast float %1421, %1458
  %1460 = call float @dx.op.unary.f32(i32 22, float %1459)  ; Frc(value)
  %1461 = mul nuw nsw i32 %1399, %1400
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1460, %1462
  %1464 = call float @dx.op.unary.f32(i32 27, float %1463)  ; Round_ni(value)
  %1465 = fptoui float %1464 to i32
  %1466 = urem i32 %1465, %1399
  %1467 = udiv i32 %1465, %1400
  %1468 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1469 = call float @dx.op.unary.f32(i32 22, float %1449)  ; Frc(value)
  %1470 = uitofp i32 %1466 to float
  %1471 = uitofp i32 %1467 to float
  %1472 = fadd fast float %1468, %1470
  %1473 = fadd fast float %1469, %1471
  %1474 = uitofp i32 %1399 to float
  %1475 = uitofp i32 %1400 to float
  %1476 = fdiv fast float %1472, %1474
  %1477 = fdiv fast float %1473, %1475
  br label %1478

; <label>:1478                                    ; preds = %1453, %1380
  %1479 = phi float [ %1476, %1453 ], [ %1448, %1380 ]
  %1480 = phi float [ %1477, %1453 ], [ %1449, %1380 ]
  %1481 = and i32 %1374, 256
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1529, label %1483

; <label>:1483                                    ; preds = %1478
  %1484 = add i32 %56, 476
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %107, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = add i32 %56, 116
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = shl i32 %1493, 4
  %1495 = and i32 %1494, 32752
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = lshr i32 %1493, 7
  %1498 = and i32 %1497, 32752
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = fsub fast float 1.000000e+00, %704
  %1501 = call float @dx.op.binary.f32(i32 35, float %1500, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1502 = bitcast float %704 to i32
  %1503 = sitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 0xC1CFBF8940000000
  %1505 = fmul fast float %1499, %1504
  %1506 = fadd fast float %1505, 0x41CFBF8940000000
  %1507 = fptosi float %1506 to i32
  %1508 = bitcast i32 %1507 to float
  %1509 = bitcast float %1501 to i32
  %1510 = sitofp i32 %1509 to float
  %1511 = fadd fast float %1510, 0xC1CFBF8940000000
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, 0x41CFBF8940000000
  %1514 = fptosi float %1513 to i32
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1508, %1496
  %1517 = fmul fast float %1515, %1496
  %1518 = fsub fast float %1501, %1516
  %1519 = fadd fast float %1517, %1501
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1522 = fsub fast float %1490, %1520
  %1523 = fsub fast float %1521, %1520
  %1524 = bitcast float %1523 to i32
  %1525 = sub nsw i32 2129859010, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1483, %1478
  %1530 = phi float [ %1528, %1483 ], [ %704, %1478 ]
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 128
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1551, label %1535

; <label>:1535                                    ; preds = %1529
  %1536 = add i32 %56, 460
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %107, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 524288
  %1546 = icmp ne i32 %1545, 0
  %1547 = fcmp fast ogt float %1542, 0x3FE0101020000000
  %1548 = select i1 %1547, float 1.000000e+00, float 0.000000e+00
  %1549 = select i1 %1546, float %1548, float %1542
  %1550 = fmul fast float %1549, %1530
  br label %1551

; <label>:1551                                    ; preds = %1535, %1529
  %1552 = phi float [ %1550, %1535 ], [ %1530, %1529 ]
  %1553 = fcmp fast ult float %1552, 0x3F70101020000000
  br i1 %1553, label %2268, label %1554

; <label>:1554                                    ; preds = %1551
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 16
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1757, label %1559

; <label>:1559                                    ; preds = %1554
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %56, 412
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %106, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.ResRet.f32 %1567, 2
  %1571 = extractvalue %dx.types.ResRet.f32 %1567, 3
  %1572 = and i32 %1561, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = lshr i32 %1561, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1571, %1573
  %1578 = fadd fast float %1577, %1576
  %1579 = fmul fast float %1578, 0x3F70101000000000
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 512
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1592, label %1584

; <label>:1584                                    ; preds = %1559
  %1585 = add i32 %56, 496
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1589, %dx.types.Handle %107, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  br label %1592

; <label>:1592                                    ; preds = %1584, %1559
  %1593 = phi float [ %1591, %1584 ], [ 1.000000e+00, %1559 ]
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 33554432
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1704, label %1598

; <label>:1598                                    ; preds = %1592
  %1599 = add i32 %56, 240
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = lshr i32 %1601, 16
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = add i32 %56, 244
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = lshr i32 %1612, 24
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = and i32 %1612, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = lshr i32 %1612, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = lshr i32 %1612, 16
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = add i32 %56, 236
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = lshr i32 %1629, 24
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = and i32 %1629, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = lshr i32 %1629, 8
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = lshr i32 %1629, 16
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = bitcast float %1568 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = sub nsw i32 1597463174, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1568, 5.000000e-01
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1649, %1648
  %1651 = fsub fast float 1.500000e+00, %1650
  %1652 = fmul fast float %1647, %1568
  %1653 = fmul fast float %1652, %1651
  %1654 = bitcast float %1569 to i32
  %1655 = ashr i32 %1654, 1
  %1656 = sub nsw i32 1597463174, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1569, 5.000000e-01
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1659, %1658
  %1661 = fsub fast float 1.500000e+00, %1660
  %1662 = fmul fast float %1657, %1569
  %1663 = fmul fast float %1662, %1661
  %1664 = bitcast float %1570 to i32
  %1665 = ashr i32 %1664, 1
  %1666 = sub nsw i32 1597463174, %1665
  %1667 = bitcast i32 %1666 to float
  %1668 = fmul fast float %1570, 5.000000e-01
  %1669 = fmul fast float %1667, %1667
  %1670 = fmul fast float %1669, %1668
  %1671 = fsub fast float 1.500000e+00, %1670
  %1672 = fmul fast float %1667, %1570
  %1673 = fmul fast float %1672, %1671
  %1674 = fsub fast float %1653, %1635
  %1675 = fsub fast float %1663, %1639
  %1676 = fsub fast float %1673, %1643
  %1677 = fmul fast float %1674, %1603
  %1678 = fmul fast float %1675, %1605
  %1679 = fmul fast float %1676, %1610
  %1680 = fadd fast float %1677, %1618
  %1681 = fadd fast float %1678, %1622
  %1682 = fadd fast float %1679, %1626
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fmul fast float %1685, %1685
  %1689 = fsub fast float %1686, %1568
  %1690 = fsub fast float %1687, %1569
  %1691 = fsub fast float %1688, %1570
  %1692 = fmul fast float %1689, %1593
  %1693 = fmul fast float %1690, %1593
  %1694 = fmul fast float %1691, %1593
  %1695 = fadd fast float %1692, %1568
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1694, %1570
  %1698 = fadd fast float %1615, %1579
  %1699 = fsub fast float %1698, %1632
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fsub fast float %1700, %1579
  %1702 = fmul fast float %1701, %1593
  %1703 = fadd fast float %1702, %1579
  br label %1757

; <label>:1704                                    ; preds = %1592
  %1705 = and i32 %1595, 134217728
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1741, label %1707

; <label>:1707                                    ; preds = %1704
  %1708 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1710 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fmul fast float %1711, %1593
  %1715 = fmul fast float %1712, %1593
  %1716 = fmul fast float %1713, %1593
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1723 = fmul fast float %1717, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1720
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1720
  %1728 = fmul fast float %1718, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1721
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1721
  %1733 = fmul fast float %1719, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1722
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1722
  %1738 = fmul fast float %1727, %1727
  %1739 = fmul fast float %1732, %1732
  %1740 = fmul fast float %1737, %1737
  br label %1757

; <label>:1741                                    ; preds = %1704
  %1742 = fmul fast float %404, %404
  %1743 = fmul fast float %405, %405
  %1744 = fmul fast float %406, %406
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = fmul fast float %1593, %1745
  %1749 = fmul fast float %1593, %1746
  %1750 = fmul fast float %1593, %1747
  %1751 = fadd fast float %1748, 1.000000e+00
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fadd fast float %1750, 1.000000e+00
  %1754 = fmul fast float %1751, %1568
  %1755 = fmul fast float %1752, %1569
  %1756 = fmul fast float %1753, %1570
  br label %1757

; <label>:1757                                    ; preds = %1741, %1707, %1598, %1554
  %1758 = phi float [ %1703, %1598 ], [ %1579, %1707 ], [ %1579, %1741 ], [ 0x3FA23C0BE0000000, %1554 ]
  %1759 = phi float [ %1695, %1598 ], [ %1738, %1707 ], [ %1754, %1741 ], [ 1.000000e+00, %1554 ]
  %1760 = phi float [ %1696, %1598 ], [ %1739, %1707 ], [ %1755, %1741 ], [ 1.000000e+00, %1554 ]
  %1761 = phi float [ %1697, %1598 ], [ %1740, %1707 ], [ %1756, %1741 ], [ 1.000000e+00, %1554 ]
  %1762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.i32 %1762, 1
  %1764 = and i32 %1763, 1
  %1765 = icmp ne i32 %1764, 0
  %1766 = add i32 %56, 356
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 32
  %1770 = icmp ne i32 %1769, 0
  %1771 = and i1 %1765, %1770
  %1772 = select i1 %1771, float 1.000000e+00, float %1759
  %1773 = select i1 %1771, float 0x3FD3333340000000, float %1760
  %1774 = select i1 %1771, float 0x3FD3333340000000, float %1761
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 32
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1851, label %1779

; <label>:1779                                    ; preds = %1757
  %1780 = add i32 %56, 108
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %56, 428
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = add i32 %1785, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1787, %dx.types.Handle %106, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = and i32 %1782, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1782, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1782, 16
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = fmul fast float %1800, 0x3F70101000000000
  %1802 = fmul fast float %1789, %1794
  %1803 = fadd fast float %1802, %1797
  %1804 = fmul fast float %1803, 0x3F70101000000000
  %1805 = fadd fast float %1790, -5.000000e-01
  %1806 = fadd fast float %1792, -5.000000e-01
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1806, %1801
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fmul fast float %1809, 2.000000e+00
  %1812 = fadd fast float %1811, -1.000000e+00
  %1813 = fmul fast float %1810, 2.000000e+00
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = fadd fast float %1812, %1814
  %1816 = fmul fast float %1815, 5.000000e-01
  %1817 = fsub fast float %1812, %1814
  %1818 = fmul fast float %1817, 5.000000e-01
  %1819 = call float @dx.op.unary.f32(i32 6, float %1816)  ; FAbs(value)
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1822 = fsub fast float %1820, %1821
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1818, float %1822, float %1816, float %1818, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1816, %1824
  %1826 = fmul fast float %1818, %1824
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 67108864
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1847, label %1831

; <label>:1831                                    ; preds = %1779
  %1832 = add i32 %56, 296
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = and i32 %1834, 65535
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = lshr i32 %1834, 16
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = fsub fast float %1804, %1842
  %1844 = fmul fast float %1843, %1836
  %1845 = fadd fast float %1844, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  br label %1847

; <label>:1847                                    ; preds = %1831, %1779
  %1848 = phi float [ %1846, %1831 ], [ %1804, %1779 ]
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1383, float %1384)  ; Dot2(ax,ay,bx,by)
  %1850 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1385, float %1386)  ; Dot2(ax,ay,bx,by)
  br label %1851

; <label>:1851                                    ; preds = %1847, %1757
  %1852 = phi float [ %1848, %1847 ], [ 0x3FD6666660000000, %1757 ]
  %1853 = phi float [ %1849, %1847 ], [ 0.000000e+00, %1757 ]
  %1854 = phi float [ %1850, %1847 ], [ 0.000000e+00, %1757 ]
  %1855 = phi float [ %1791, %1847 ], [ 1.000000e+00, %1757 ]
  %1856 = add i32 %56, 176
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 22
  %1860 = shl nuw nsw i32 %1859, 5
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 64
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1899, label %1866

; <label>:1866                                    ; preds = %1851
  %1867 = add i32 %56, 444
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = add i32 %1869, 0
  %1871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 131072
  %1875 = icmp eq i32 %1874, 0
  %1876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1871, %dx.types.Handle %106, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = fmul fast float %387, %1877
  %1881 = fmul fast float %388, %1878
  %1882 = fmul fast float %389, %1879
  br i1 %1875, label %1889, label %1883

; <label>:1883                                    ; preds = %1866
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = fmul fast float %1885, %1880
  %1887 = fmul fast float %1885, %1881
  %1888 = fmul fast float %1885, %1882
  br label %1889

; <label>:1889                                    ; preds = %1883, %1866
  %1890 = phi float [ %1886, %1883 ], [ %1880, %1866 ]
  %1891 = phi float [ %1887, %1883 ], [ %1881, %1866 ]
  %1892 = phi float [ %1888, %1883 ], [ %1882, %1866 ]
  %1893 = fmul fast float %1890, %1861
  %1894 = select i1 %269, float %1893, float %1890
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1894, float %1891, float %1892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = select i1 %269, float 0.000000e+00, float %1890
  %1897 = select i1 %269, float %1895, float %1891
  %1898 = select i1 %269, float 0.000000e+00, float %1892
  br label %1899

; <label>:1899                                    ; preds = %1889, %1851
  %1900 = phi float [ %1896, %1889 ], [ 0.000000e+00, %1851 ]
  %1901 = phi float [ %1897, %1889 ], [ 0.000000e+00, %1851 ]
  %1902 = phi float [ %1898, %1889 ], [ 0.000000e+00, %1851 ]
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 1024
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1937, label %1907

; <label>:1907                                    ; preds = %1899
  %1908 = add i32 %56, 168
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1910, 8
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1910, 16
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = fmul fast float %1913, %1913
  %1923 = fmul fast float %1917, %1917
  %1924 = fmul fast float %1921, %1921
  %1925 = add i32 %56, 512
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %1927, 0
  %1929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1929, %dx.types.Handle %107, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = fmul fast float %1922, %1931
  %1935 = fmul fast float %1923, %1932
  %1936 = fmul fast float %1924, %1933
  br label %1937

; <label>:1937                                    ; preds = %1907, %1899
  %1938 = phi float [ %1934, %1907 ], [ 0.000000e+00, %1899 ]
  %1939 = phi float [ %1935, %1907 ], [ 0.000000e+00, %1899 ]
  %1940 = phi float [ %1936, %1907 ], [ 0.000000e+00, %1899 ]
  %1941 = fcmp fast ogt float %1938, 0.000000e+00
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = fcmp fast ogt float %1940, 0.000000e+00
  %1944 = call float @dx.op.unary.f32(i32 23, float %1938)  ; Log(value)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call float @dx.op.unary.f32(i32 23, float %1940)  ; Log(value)
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 7
  %1950 = and i32 %1949, 32752
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = fmul fast float %1944, 0xBFE62E4300000000
  %1953 = fmul fast float %1952, %1951
  %1954 = fmul fast float %1945, 0xBFE62E4300000000
  %1955 = fmul fast float %1954, %1951
  %1956 = fmul fast float %1946, 0xBFE62E4300000000
  %1957 = fmul fast float %1956, %1951
  %1958 = select i1 %1941, float %1953, float 1.270000e+02
  %1959 = select i1 %1942, float %1955, float 1.270000e+02
  %1960 = select i1 %1943, float %1957, float 1.270000e+02
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 26624
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2001, label %1965

; <label>:1965                                    ; preds = %1937
  %1966 = add i32 %56, 528
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1970, %dx.types.Handle %107, float %1479, float %1480, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 1048576
  %1976 = icmp ne i32 %1975, 0
  %1977 = and i32 %1974, 2048
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %1988, label %1979

; <label>:1979                                    ; preds = %1965
  %1980 = extractvalue %dx.types.ResRet.f32 %1971, 3
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = shl i32 %1982, 4
  %1984 = and i32 %1983, 32752
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = fmul fast float %1985, %1980
  %1987 = call float @dx.op.binary.f32(i32 35, float %1986, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1988

; <label>:1988                                    ; preds = %1979, %1965
  %1989 = phi float [ %1987, %1979 ], [ 0x3F70101020000000, %1965 ]
  %1990 = and i32 %1974, 16384
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2001, label %1992

; <label>:1992                                    ; preds = %1988
  %1993 = add i32 %56, 112
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = lshr i32 %1995, 24
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1972, 0x3F70101020000000
  %1999 = select i1 %1976, float 0x3F70101020000000, float %1998
  %2000 = fmul fast float %1999, %1997
  br label %2001

; <label>:2001                                    ; preds = %1992, %1988, %1937
  %2002 = phi float [ %1989, %1992 ], [ %1989, %1988 ], [ 0x3F70101020000000, %1937 ]
  %2003 = phi float [ %2000, %1992 ], [ 0.000000e+00, %1988 ], [ 0.000000e+00, %1937 ]
  %2004 = add i32 %56, 112
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 255
  %2008 = uitofp i32 %2007 to float
  %2009 = lshr i32 %2006, 8
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = fmul fast float %2011, %2012
  %2014 = fadd fast float %2013, %2008
  %2015 = fmul fast float %2014, 0x3F70101020000000
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  br i1 %1371, label %2017, label %2052

; <label>:2017                                    ; preds = %2001
  %2018 = fmul fast float %2002, 2.000000e+00
  %2019 = fcmp fast olt float %1958, 1.270000e+02
  %2020 = fcmp fast olt float %1959, 1.270000e+02
  %2021 = fcmp fast olt float %1960, 1.270000e+02
  %2022 = fmul fast float %1958, 0xBFF7154760000000
  %2023 = fmul fast float %2022, %2018
  %2024 = fmul fast float %1959, 0xBFF7154760000000
  %2025 = fmul fast float %2024, %2018
  %2026 = fmul fast float %1960, 0xBFF7154760000000
  %2027 = fmul fast float %2026, %2018
  %2028 = call float @dx.op.unary.f32(i32 21, float %2023)  ; Exp(value)
  %2029 = call float @dx.op.unary.f32(i32 21, float %2025)  ; Exp(value)
  %2030 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2031 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2032 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2033 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2034 = fadd fast float %2031, -1.000000e+00
  %2035 = select i1 %2019, float %2034, float -1.000000e+00
  %2036 = fadd fast float %2032, -1.000000e+00
  %2037 = select i1 %2020, float %2036, float -1.000000e+00
  %2038 = fadd fast float %2033, -1.000000e+00
  %2039 = select i1 %2021, float %2038, float -1.000000e+00
  %2040 = fmul fast float %2035, %1552
  %2041 = fmul fast float %2037, %1552
  %2042 = fmul fast float %2039, %1552
  %2043 = fadd fast float %2040, 1.000000e+00
  %2044 = fadd fast float %2041, 1.000000e+00
  %2045 = fadd fast float %2042, 1.000000e+00
  %2046 = fmul fast float %2043, %1354
  %2047 = fmul fast float %2044, %1355
  %2048 = fmul fast float %2045, %1356
  %2049 = fmul fast float %2043, %1357
  %2050 = fmul fast float %2044, %1358
  %2051 = fmul fast float %2045, %1359
  br label %2052

; <label>:2052                                    ; preds = %2017, %2001
  %2053 = phi float [ %2046, %2017 ], [ %1354, %2001 ]
  %2054 = phi float [ %2047, %2017 ], [ %1355, %2001 ]
  %2055 = phi float [ %2048, %2017 ], [ %1356, %2001 ]
  %2056 = phi float [ %2049, %2017 ], [ %1357, %2001 ]
  %2057 = phi float [ %2050, %2017 ], [ %1358, %2001 ]
  %2058 = phi float [ %2051, %2017 ], [ %1359, %2001 ]
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 3
  %2062 = icmp eq i32 %2061, 3
  br i1 %2062, label %2141, label %2063

; <label>:2063                                    ; preds = %2052
  %2064 = and i32 %2060, 16
  %2065 = icmp ne i32 %2064, 0
  %2066 = select i1 %2065, float %1552, float 0.000000e+00
  %2067 = icmp eq i32 %2061, 0
  br i1 %2067, label %2068, label %2096

; <label>:2068                                    ; preds = %2063
  %2069 = and i32 %2060, 64
  %2070 = icmp ne i32 %2069, 0
  %2071 = select i1 %2070, float %1552, float 0.000000e+00
  %2072 = fsub fast float %1772, %2053
  %2073 = fsub fast float %1773, %2054
  %2074 = fsub fast float %1774, %2055
  %2075 = fmul fast float %2066, %2072
  %2076 = fmul fast float %2066, %2073
  %2077 = fmul fast float %2066, %2074
  %2078 = fadd fast float %2075, %2053
  %2079 = fadd fast float %2076, %2054
  %2080 = fadd fast float %2077, %2055
  %2081 = fsub fast float %1758, %1363
  %2082 = fmul fast float %2066, %2081
  %2083 = fadd fast float %2082, %1363
  %2084 = fsub fast float %1900, %2056
  %2085 = fsub fast float %1901, %2057
  %2086 = fsub fast float %1902, %2058
  %2087 = fmul fast float %2071, %2084
  %2088 = fmul fast float %2071, %2085
  %2089 = fmul fast float %2071, %2086
  %2090 = fadd fast float %2087, %2056
  %2091 = fadd fast float %2088, %2057
  %2092 = fadd fast float %2089, %2058
  %2093 = fsub fast float %2016, %1369
  %2094 = fmul fast float %2066, %2093
  %2095 = fadd fast float %2094, %1369
  br label %2141

; <label>:2096                                    ; preds = %2063
  %2097 = icmp eq i32 %2061, 1
  br i1 %2097, label %2098, label %2111

; <label>:2098                                    ; preds = %2096
  %2099 = fadd fast float %1772, -1.000000e+00
  %2100 = fadd fast float %1773, -1.000000e+00
  %2101 = fadd fast float %1774, -1.000000e+00
  %2102 = fmul fast float %2066, %2099
  %2103 = fmul fast float %2066, %2100
  %2104 = fmul fast float %2066, %2101
  %2105 = fadd fast float %2102, 1.000000e+00
  %2106 = fadd fast float %2103, 1.000000e+00
  %2107 = fadd fast float %2104, 1.000000e+00
  %2108 = fmul fast float %2105, %2053
  %2109 = fmul fast float %2106, %2054
  %2110 = fmul fast float %2107, %2055
  br label %2141

; <label>:2111                                    ; preds = %2096
  %2112 = icmp eq i32 %2061, 2
  br i1 %2112, label %2113, label %2141

; <label>:2113                                    ; preds = %2111
  %2114 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2115 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2116 = call float @dx.op.unary.f32(i32 24, float %1774)  ; Sqrt(value)
  %2117 = fadd fast float %2114, -5.000000e-01
  %2118 = fadd fast float %2115, -5.000000e-01
  %2119 = fadd fast float %2116, -5.000000e-01
  %2120 = fmul fast float %2117, %2066
  %2121 = fmul fast float %2118, %2066
  %2122 = fmul fast float %2119, %2066
  %2123 = fadd fast float %2120, 5.000000e-01
  %2124 = fadd fast float %2121, 5.000000e-01
  %2125 = fadd fast float %2122, 5.000000e-01
  %2126 = fmul fast float %2123, 2.000000e+00
  %2127 = fsub fast float 1.000000e+00, %2126
  %2128 = fmul fast float %2127, %2053
  %2129 = fadd fast float %2128, %2126
  %2130 = fmul fast float %2129, %2053
  %2131 = fmul fast float %2124, 2.000000e+00
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2132, %2054
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2054
  %2136 = fmul fast float %2125, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2055
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2055
  br label %2141

; <label>:2141                                    ; preds = %2113, %2111, %2098, %2068, %2052
  %2142 = phi float [ %2053, %2052 ], [ %2130, %2113 ], [ %2053, %2111 ], [ %2108, %2098 ], [ %2078, %2068 ]
  %2143 = phi float [ %2054, %2052 ], [ %2135, %2113 ], [ %2054, %2111 ], [ %2109, %2098 ], [ %2079, %2068 ]
  %2144 = phi float [ %2055, %2052 ], [ %2140, %2113 ], [ %2055, %2111 ], [ %2110, %2098 ], [ %2080, %2068 ]
  %2145 = phi float [ %2056, %2052 ], [ %2056, %2113 ], [ %2056, %2111 ], [ %2056, %2098 ], [ %2090, %2068 ]
  %2146 = phi float [ %2057, %2052 ], [ %2057, %2113 ], [ %2057, %2111 ], [ %2057, %2098 ], [ %2091, %2068 ]
  %2147 = phi float [ %2058, %2052 ], [ %2058, %2113 ], [ %2058, %2111 ], [ %2058, %2098 ], [ %2092, %2068 ]
  %2148 = phi float [ %1363, %2052 ], [ %1363, %2113 ], [ %1363, %2111 ], [ %1363, %2098 ], [ %2083, %2068 ]
  %2149 = phi float [ %1369, %2052 ], [ %1369, %2113 ], [ %1369, %2111 ], [ %1369, %2098 ], [ %2095, %2068 ]
  %2150 = and i32 %2060, 12
  %2151 = icmp eq i32 %2150, 12
  br i1 %2151, label %2268, label %2152

; <label>:2152                                    ; preds = %2141
  %2153 = and i32 %2060, 2097184
  %2154 = icmp eq i32 %2153, 2097184
  %2155 = select i1 %2154, float %1552, float 0.000000e+00
  %2156 = and i32 %2060, 4194336
  %2157 = icmp eq i32 %2156, 4194336
  %2158 = select i1 %2157, float %1552, float 0.000000e+00
  %2159 = and i32 %2060, 8388640
  %2160 = icmp eq i32 %2159, 8388640
  %2161 = select i1 %2160, float %1552, float 0.000000e+00
  %2162 = and i32 %2060, 1024
  %2163 = icmp ne i32 %2162, 0
  %2164 = select i1 %2163, float %1552, float 0.000000e+00
  %2165 = and i32 %2060, 2048
  %2166 = icmp ne i32 %2165, 0
  %2167 = select i1 %2166, float %1552, float 0.000000e+00
  %2168 = and i32 %2060, 16384
  %2169 = icmp ne i32 %2168, 0
  %2170 = select i1 %2169, float %1552, float 0.000000e+00
  %2171 = icmp eq i32 %2150, 0
  br i1 %2171, label %2172, label %2200

; <label>:2172                                    ; preds = %2152
  %2173 = fsub fast float %1853, %1352
  %2174 = fsub fast float %1854, %1353
  %2175 = fmul fast float %2155, %2173
  %2176 = fmul fast float %2155, %2174
  %2177 = fadd fast float %2175, %1352
  %2178 = fadd fast float %2176, %1353
  %2179 = fsub fast float %1855, %1366
  %2180 = fmul fast float %2158, %2179
  %2181 = fadd fast float %2180, %1366
  %2182 = fsub fast float %1852, %1365
  %2183 = fmul fast float %2161, %2182
  %2184 = fadd fast float %2183, %1365
  %2185 = fsub fast float %1958, %1360
  %2186 = fsub fast float %1959, %1361
  %2187 = fsub fast float %1960, %1362
  %2188 = fmul fast float %2164, %2185
  %2189 = fmul fast float %2164, %2186
  %2190 = fmul fast float %2164, %2187
  %2191 = fadd fast float %2188, %1360
  %2192 = fadd fast float %2189, %1361
  %2193 = fadd fast float %2190, %1362
  %2194 = fsub fast float %2002, %1367
  %2195 = fmul fast float %2167, %2194
  %2196 = fadd fast float %2195, %1367
  %2197 = fsub fast float %2003, %1368
  %2198 = fmul fast float %2170, %2197
  %2199 = fadd fast float %2198, %1368
  br label %2268

; <label>:2200                                    ; preds = %2152
  %2201 = icmp eq i32 %2150, 4
  br i1 %2201, label %2202, label %2244

; <label>:2202                                    ; preds = %2200
  %2203 = fmul fast float %2155, %1853
  %2204 = fmul fast float %2155, %1854
  %2205 = fadd fast float %2203, %1352
  %2206 = fadd fast float %2204, %1353
  %2207 = call float @dx.op.binary.f32(i32 36, float %1366, float %1855)  ; FMin(a,b)
  %2208 = fsub fast float %2207, %1366
  %2209 = fmul fast float %2208, %2158
  %2210 = fadd fast float %2209, %1366
  %2211 = fadd fast float %1852, %1365
  %2212 = fmul fast float %2211, 0x3FF337FAE0000000
  %2213 = fmul fast float %1365, %1365
  %2214 = fmul fast float %1852, %1852
  %2215 = fadd fast float %2214, %2213
  %2216 = fmul fast float %2215, 0x3FE5152B00000000
  %2217 = fmul fast float %1365, 0xBFCC1F85E0000000
  %2218 = fmul fast float %2217, %1852
  %2219 = fadd fast float %2218, 0xBFE1363700000000
  %2220 = fadd fast float %2219, %2212
  %2221 = fsub fast float %2220, %2216
  %2222 = fmul fast float %2211, 0x3FBA6F0D00000000
  %2223 = fmul fast float %2215, 0x3FD0432880000000
  %2224 = fmul fast float %1365, 0xBFEF110800000000
  %2225 = fmul fast float %2224, %1852
  %2226 = fadd fast float %2225, 1.000000e+00
  %2227 = fsub fast float %2226, %2222
  %2228 = fadd fast float %2227, %2223
  %2229 = fdiv fast float %2221, %2228
  %2230 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2231 = fsub fast float %2230, %1365
  %2232 = fmul fast float %2231, %2161
  %2233 = fadd fast float %2232, %1365
  %2234 = fmul fast float %2164, %1958
  %2235 = fmul fast float %2164, %1959
  %2236 = fmul fast float %2164, %1960
  %2237 = fadd fast float %2234, %1360
  %2238 = fadd fast float %2235, %1361
  %2239 = fadd fast float %2236, %1362
  %2240 = fmul fast float %2167, %2002
  %2241 = fadd fast float %2240, %1367
  %2242 = fmul fast float %2170, %2003
  %2243 = fadd fast float %2242, %1368
  br label %2268

; <label>:2244                                    ; preds = %2200
  %2245 = icmp eq i32 %2150, 8
  br i1 %2245, label %2246, label %2268

; <label>:2246                                    ; preds = %2244
  %2247 = fmul fast float %2155, %1853
  %2248 = fmul fast float %2155, %1854
  %2249 = fadd fast float %2247, %1352
  %2250 = fadd fast float %2248, %1353
  %2251 = call float @dx.op.binary.f32(i32 36, float %1366, float %1855)  ; FMin(a,b)
  %2252 = fsub fast float %2251, %1366
  %2253 = fmul fast float %2252, %2158
  %2254 = fadd fast float %2253, %1366
  %2255 = fsub fast float %1852, %1365
  %2256 = fmul fast float %2161, %2255
  %2257 = fadd fast float %2256, %1365
  %2258 = fmul fast float %2164, %1958
  %2259 = fmul fast float %2164, %1959
  %2260 = fmul fast float %2164, %1960
  %2261 = fadd fast float %2258, %1360
  %2262 = fadd fast float %2259, %1361
  %2263 = fadd fast float %2260, %1362
  %2264 = fmul fast float %2167, %2002
  %2265 = fadd fast float %2264, %1367
  %2266 = fmul fast float %2170, %2003
  %2267 = fadd fast float %2266, %1368
  br label %2268

; <label>:2268                                    ; preds = %2246, %2244, %2202, %2172, %2141, %1551, %1370, %1351
  %2269 = phi float [ %1352, %2141 ], [ %1352, %1551 ], [ %1352, %1351 ], [ %2249, %2246 ], [ %1352, %2244 ], [ %2205, %2202 ], [ %2177, %2172 ], [ %1352, %1370 ]
  %2270 = phi float [ %1353, %2141 ], [ %1353, %1551 ], [ %1353, %1351 ], [ %2250, %2246 ], [ %1353, %2244 ], [ %2206, %2202 ], [ %2178, %2172 ], [ %1353, %1370 ]
  %2271 = phi float [ %2142, %2141 ], [ %1354, %1551 ], [ %1354, %1351 ], [ %2142, %2246 ], [ %2142, %2244 ], [ %2142, %2202 ], [ %2142, %2172 ], [ %1354, %1370 ]
  %2272 = phi float [ %2143, %2141 ], [ %1355, %1551 ], [ %1355, %1351 ], [ %2143, %2246 ], [ %2143, %2244 ], [ %2143, %2202 ], [ %2143, %2172 ], [ %1355, %1370 ]
  %2273 = phi float [ %2144, %2141 ], [ %1356, %1551 ], [ %1356, %1351 ], [ %2144, %2246 ], [ %2144, %2244 ], [ %2144, %2202 ], [ %2144, %2172 ], [ %1356, %1370 ]
  %2274 = phi float [ %2145, %2141 ], [ %1357, %1551 ], [ %1357, %1351 ], [ %2145, %2246 ], [ %2145, %2244 ], [ %2145, %2202 ], [ %2145, %2172 ], [ %1357, %1370 ]
  %2275 = phi float [ %2146, %2141 ], [ %1358, %1551 ], [ %1358, %1351 ], [ %2146, %2246 ], [ %2146, %2244 ], [ %2146, %2202 ], [ %2146, %2172 ], [ %1358, %1370 ]
  %2276 = phi float [ %2147, %2141 ], [ %1359, %1551 ], [ %1359, %1351 ], [ %2147, %2246 ], [ %2147, %2244 ], [ %2147, %2202 ], [ %2147, %2172 ], [ %1359, %1370 ]
  %2277 = phi float [ %1360, %2141 ], [ %1360, %1551 ], [ %1360, %1351 ], [ %2261, %2246 ], [ %1360, %2244 ], [ %2237, %2202 ], [ %2191, %2172 ], [ %1360, %1370 ]
  %2278 = phi float [ %1361, %2141 ], [ %1361, %1551 ], [ %1361, %1351 ], [ %2262, %2246 ], [ %1361, %2244 ], [ %2238, %2202 ], [ %2192, %2172 ], [ %1361, %1370 ]
  %2279 = phi float [ %1362, %2141 ], [ %1362, %1551 ], [ %1362, %1351 ], [ %2263, %2246 ], [ %1362, %2244 ], [ %2239, %2202 ], [ %2193, %2172 ], [ %1362, %1370 ]
  %2280 = phi float [ %2148, %2141 ], [ %1363, %1551 ], [ %1363, %1351 ], [ %2148, %2246 ], [ %2148, %2244 ], [ %2148, %2202 ], [ %2148, %2172 ], [ %1363, %1370 ]
  %2281 = phi float [ %1365, %2141 ], [ %1365, %1551 ], [ %1365, %1351 ], [ %2257, %2246 ], [ %1365, %2244 ], [ %2233, %2202 ], [ %2184, %2172 ], [ %1365, %1370 ]
  %2282 = phi float [ %1366, %2141 ], [ %1366, %1551 ], [ %1366, %1351 ], [ %2254, %2246 ], [ %1366, %2244 ], [ %2210, %2202 ], [ %2181, %2172 ], [ %1366, %1370 ]
  %2283 = phi float [ %1367, %2141 ], [ %1367, %1551 ], [ %1367, %1351 ], [ %2265, %2246 ], [ %1367, %2244 ], [ %2241, %2202 ], [ %2196, %2172 ], [ %1367, %1370 ]
  %2284 = phi float [ %1368, %2141 ], [ %1368, %1551 ], [ %1368, %1351 ], [ %2267, %2246 ], [ %1368, %2244 ], [ %2243, %2202 ], [ %2199, %2172 ], [ %1368, %1370 ]
  %2285 = phi float [ %2149, %2141 ], [ %1369, %1551 ], [ %1369, %1351 ], [ %2149, %2246 ], [ %2149, %2244 ], [ %2149, %2202 ], [ %2149, %2172 ], [ %1369, %1370 ]
  br i1 %651, label %3184, label %2286

; <label>:2286                                    ; preds = %2268
  %2287 = icmp ult i32 %707, 3
  %2288 = add i32 %56, 56
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %56, 60
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = or i32 %2293, %2290
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %3184, label %2296

; <label>:2296                                    ; preds = %2286
  %2297 = and i32 %2290, 262144
  %2298 = icmp ne i32 %2297, 0
  %2299 = select i1 %2298, float %64, float 1.000000e+00
  %2300 = select i1 %2298, float %65, float 0.000000e+00
  %2301 = select i1 %2298, float %66, float 0.000000e+00
  %2302 = select i1 %2298, float %67, float 1.000000e+00
  %2303 = select i1 %2298, float %68, float %92
  %2304 = select i1 %2298, float %69, float %93
  %2305 = add i32 %56, 316
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = lshr i32 %2307, 16
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = fmul fast float %2309, 0x3F50624DE0000000
  %2311 = add i32 %56, 120
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = lshr i32 %2313, 16
  %2315 = and i32 %2314, 255
  %2316 = lshr i32 %2313, 24
  %2317 = add i32 %56, 324
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = lshr i32 %2319, 16
  %2323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2322)  ; LegacyF16ToF32(value)
  %2324 = add i32 %56, 64
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 22
  %2328 = shl nuw nsw i32 %2327, 5
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = shl i32 %2326, 4
  %2331 = and i32 %2330, 32752
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = lshr i32 %2326, 7
  %2334 = and i32 %2333, 32752
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2338 = fmul fast float %2337, 1.000000e+03
  %2339 = fmul fast float %2338, %535
  %2340 = call float @dx.op.unary.f32(i32 22, float %2339)  ; Frc(value)
  %2341 = fadd fast float %2340, %523
  %2342 = fmul fast float %2338, %537
  %2343 = call float @dx.op.unary.f32(i32 22, float %2342)  ; Frc(value)
  %2344 = fadd fast float %2343, %524
  %2345 = fmul fast float %2310, %2338
  %2346 = call float @dx.op.unary.f32(i32 22, float %2345)  ; Frc(value)
  %2347 = fmul fast float %2346, 0x401921FB60000000
  %2348 = fadd fast float %2347, %2329
  %2349 = call float @dx.op.unary.f32(i32 13, float %2348)  ; Sin(value)
  %2350 = call float @dx.op.unary.f32(i32 12, float %2348)  ; Cos(value)
  %2351 = fsub fast float -0.000000e+00, %2349
  %2352 = fadd fast float %2303, -5.000000e-01
  %2353 = fadd fast float %2304, -5.000000e-01
  %2354 = fmul fast float %2321, %2352
  %2355 = fmul fast float %2323, %2353
  %2356 = fadd fast float %2354, 5.000000e-01
  %2357 = fadd fast float %2355, 5.000000e-01
  %2358 = fmul fast float %2332, %2356
  %2359 = fmul fast float %2335, %2357
  %2360 = fmul fast float %2350, %2358
  %2361 = call float @dx.op.tertiary.f32(i32 46, float %2351, float %2359, float %2360)  ; FMad(a,b,c)
  %2362 = fmul fast float %2349, %2358
  %2363 = call float @dx.op.tertiary.f32(i32 46, float %2350, float %2359, float %2362)  ; FMad(a,b,c)
  %2364 = fadd fast float %2341, %2361
  %2365 = fadd fast float %2344, %2363
  %2366 = icmp ugt i32 %2315, 1
  %2367 = icmp ugt i32 %2313, 33554431
  %2368 = or i1 %2367, %2366
  br i1 %2368, label %2369, label %2394

; <label>:2369                                    ; preds = %2296
  %2370 = add i32 %56, 260
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = lshr i32 %2372, 16
  %2374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2373)  ; LegacyF16ToF32(value)
  %2375 = fmul fast float %2337, %2374
  %2376 = call float @dx.op.unary.f32(i32 22, float %2375)  ; Frc(value)
  %2377 = mul nuw nsw i32 %2315, %2316
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2376, %2378
  %2380 = call float @dx.op.unary.f32(i32 27, float %2379)  ; Round_ni(value)
  %2381 = fptoui float %2380 to i32
  %2382 = urem i32 %2381, %2315
  %2383 = udiv i32 %2381, %2316
  %2384 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2385 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2386 = uitofp i32 %2382 to float
  %2387 = uitofp i32 %2383 to float
  %2388 = fadd fast float %2384, %2386
  %2389 = fadd fast float %2385, %2387
  %2390 = uitofp i32 %2315 to float
  %2391 = uitofp i32 %2316 to float
  %2392 = fdiv fast float %2388, %2390
  %2393 = fdiv fast float %2389, %2391
  br label %2394

; <label>:2394                                    ; preds = %2369, %2296
  %2395 = phi float [ %2392, %2369 ], [ %2364, %2296 ]
  %2396 = phi float [ %2393, %2369 ], [ %2365, %2296 ]
  %2397 = and i32 %2290, 256
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2445, label %2399

; <label>:2399                                    ; preds = %2394
  %2400 = add i32 %56, 480
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = add i32 %2402, 0
  %2404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2404, %dx.types.Handle %107, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2406 = extractvalue %dx.types.ResRet.f32 %2405, 0
  %2407 = add i32 %56, 132
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = shl i32 %2409, 4
  %2411 = and i32 %2410, 32752
  %2412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2411)  ; LegacyF16ToF32(value)
  %2413 = lshr i32 %2409, 7
  %2414 = and i32 %2413, 32752
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = fsub fast float 1.000000e+00, %703
  %2417 = call float @dx.op.binary.f32(i32 35, float %2416, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2418 = bitcast float %703 to i32
  %2419 = sitofp i32 %2418 to float
  %2420 = fadd fast float %2419, 0xC1CFBF8940000000
  %2421 = fmul fast float %2415, %2420
  %2422 = fadd fast float %2421, 0x41CFBF8940000000
  %2423 = fptosi float %2422 to i32
  %2424 = bitcast i32 %2423 to float
  %2425 = bitcast float %2417 to i32
  %2426 = sitofp i32 %2425 to float
  %2427 = fadd fast float %2426, 0xC1CFBF8940000000
  %2428 = fmul fast float %2427, %2415
  %2429 = fadd fast float %2428, 0x41CFBF8940000000
  %2430 = fptosi float %2429 to i32
  %2431 = bitcast i32 %2430 to float
  %2432 = fmul fast float %2424, %2412
  %2433 = fmul fast float %2431, %2412
  %2434 = fsub fast float %2417, %2432
  %2435 = fadd fast float %2433, %2417
  %2436 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2437 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2438 = fsub fast float %2406, %2436
  %2439 = fsub fast float %2437, %2436
  %2440 = bitcast float %2439 to i32
  %2441 = sub nsw i32 2129859010, %2440
  %2442 = bitcast i32 %2441 to float
  %2443 = fmul fast float %2442, %2438
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  br label %2445

; <label>:2445                                    ; preds = %2399, %2394
  %2446 = phi float [ %2444, %2399 ], [ %703, %2394 ]
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 128
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2467, label %2451

; <label>:2451                                    ; preds = %2445
  %2452 = add i32 %56, 464
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = add i32 %2454, 0
  %2456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2456, %dx.types.Handle %107, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 524288
  %2462 = icmp ne i32 %2461, 0
  %2463 = fcmp fast ogt float %2458, 0x3FE0101020000000
  %2464 = select i1 %2463, float 1.000000e+00, float 0.000000e+00
  %2465 = select i1 %2462, float %2464, float %2458
  %2466 = fmul fast float %2465, %2446
  br label %2467

; <label>:2467                                    ; preds = %2451, %2445
  %2468 = phi float [ %2466, %2451 ], [ %2446, %2445 ]
  %2469 = fcmp fast ult float %2468, 0x3F70101020000000
  br i1 %2469, label %3184, label %2470

; <label>:2470                                    ; preds = %2467
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 16
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2673, label %2475

; <label>:2475                                    ; preds = %2470
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = add i32 %56, 416
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = add i32 %2480, 0
  %2482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2482, %dx.types.Handle %106, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = extractvalue %dx.types.ResRet.f32 %2483, 3
  %2488 = and i32 %2477, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = lshr i32 %2477, 8
  %2491 = and i32 %2490, 255
  %2492 = uitofp i32 %2491 to float
  %2493 = fmul fast float %2487, %2489
  %2494 = fadd fast float %2493, %2492
  %2495 = fmul fast float %2494, 0x3F70101000000000
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 512
  %2499 = icmp eq i32 %2498, 0
  br i1 %2499, label %2508, label %2500

; <label>:2500                                    ; preds = %2475
  %2501 = add i32 %56, 500
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = add i32 %2503, 0
  %2505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2505, %dx.types.Handle %107, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2507 = extractvalue %dx.types.ResRet.f32 %2506, 0
  br label %2508

; <label>:2508                                    ; preds = %2500, %2475
  %2509 = phi float [ %2507, %2500 ], [ 1.000000e+00, %2475 ]
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 33554432
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2620, label %2514

; <label>:2514                                    ; preds = %2508
  %2515 = add i32 %56, 256
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 65535
  %2519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2518)  ; LegacyF16ToF32(value)
  %2520 = lshr i32 %2517, 16
  %2521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2520)  ; LegacyF16ToF32(value)
  %2522 = add i32 %56, 260
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = and i32 %2524, 65535
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = lshr i32 %2528, 24
  %2530 = uitofp i32 %2529 to float
  %2531 = fmul fast float %2530, 0x3F70101020000000
  %2532 = and i32 %2528, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = fmul fast float %2533, 0x3F70101020000000
  %2535 = lshr i32 %2528, 8
  %2536 = and i32 %2535, 255
  %2537 = uitofp i32 %2536 to float
  %2538 = fmul fast float %2537, 0x3F70101020000000
  %2539 = lshr i32 %2528, 16
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = fmul fast float %2541, 0x3F70101020000000
  %2543 = add i32 %56, 252
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = lshr i32 %2545, 24
  %2547 = uitofp i32 %2546 to float
  %2548 = fmul fast float %2547, 0x3F70101020000000
  %2549 = and i32 %2545, 255
  %2550 = uitofp i32 %2549 to float
  %2551 = fmul fast float %2550, 0x3F70101020000000
  %2552 = lshr i32 %2545, 8
  %2553 = and i32 %2552, 255
  %2554 = uitofp i32 %2553 to float
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = lshr i32 %2545, 16
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101020000000
  %2560 = bitcast float %2484 to i32
  %2561 = ashr i32 %2560, 1
  %2562 = sub nsw i32 1597463174, %2561
  %2563 = bitcast i32 %2562 to float
  %2564 = fmul fast float %2484, 5.000000e-01
  %2565 = fmul fast float %2563, %2563
  %2566 = fmul fast float %2565, %2564
  %2567 = fsub fast float 1.500000e+00, %2566
  %2568 = fmul fast float %2563, %2484
  %2569 = fmul fast float %2568, %2567
  %2570 = bitcast float %2485 to i32
  %2571 = ashr i32 %2570, 1
  %2572 = sub nsw i32 1597463174, %2571
  %2573 = bitcast i32 %2572 to float
  %2574 = fmul fast float %2485, 5.000000e-01
  %2575 = fmul fast float %2573, %2573
  %2576 = fmul fast float %2575, %2574
  %2577 = fsub fast float 1.500000e+00, %2576
  %2578 = fmul fast float %2573, %2485
  %2579 = fmul fast float %2578, %2577
  %2580 = bitcast float %2486 to i32
  %2581 = ashr i32 %2580, 1
  %2582 = sub nsw i32 1597463174, %2581
  %2583 = bitcast i32 %2582 to float
  %2584 = fmul fast float %2486, 5.000000e-01
  %2585 = fmul fast float %2583, %2583
  %2586 = fmul fast float %2585, %2584
  %2587 = fsub fast float 1.500000e+00, %2586
  %2588 = fmul fast float %2583, %2486
  %2589 = fmul fast float %2588, %2587
  %2590 = fsub fast float %2569, %2551
  %2591 = fsub fast float %2579, %2555
  %2592 = fsub fast float %2589, %2559
  %2593 = fmul fast float %2590, %2519
  %2594 = fmul fast float %2591, %2521
  %2595 = fmul fast float %2592, %2526
  %2596 = fadd fast float %2593, %2534
  %2597 = fadd fast float %2594, %2538
  %2598 = fadd fast float %2595, %2542
  %2599 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2600 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2601 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2602 = fmul fast float %2599, %2599
  %2603 = fmul fast float %2600, %2600
  %2604 = fmul fast float %2601, %2601
  %2605 = fsub fast float %2602, %2484
  %2606 = fsub fast float %2603, %2485
  %2607 = fsub fast float %2604, %2486
  %2608 = fmul fast float %2605, %2509
  %2609 = fmul fast float %2606, %2509
  %2610 = fmul fast float %2607, %2509
  %2611 = fadd fast float %2608, %2484
  %2612 = fadd fast float %2609, %2485
  %2613 = fadd fast float %2610, %2486
  %2614 = fadd fast float %2531, %2495
  %2615 = fsub fast float %2614, %2548
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = fsub fast float %2616, %2495
  %2618 = fmul fast float %2617, %2509
  %2619 = fadd fast float %2618, %2495
  br label %2673

; <label>:2620                                    ; preds = %2508
  %2621 = and i32 %2511, 134217728
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %2657, label %2623

; <label>:2623                                    ; preds = %2620
  %2624 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2625 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2626 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2627 = fadd fast float %2624, -5.000000e-01
  %2628 = fadd fast float %2625, -5.000000e-01
  %2629 = fadd fast float %2626, -5.000000e-01
  %2630 = fmul fast float %2627, %2509
  %2631 = fmul fast float %2628, %2509
  %2632 = fmul fast float %2629, %2509
  %2633 = fadd fast float %2630, 5.000000e-01
  %2634 = fadd fast float %2631, 5.000000e-01
  %2635 = fadd fast float %2632, 5.000000e-01
  %2636 = call float @dx.op.unary.f32(i32 24, float %2484)  ; Sqrt(value)
  %2637 = call float @dx.op.unary.f32(i32 24, float %2485)  ; Sqrt(value)
  %2638 = call float @dx.op.unary.f32(i32 24, float %2486)  ; Sqrt(value)
  %2639 = fmul fast float %2633, 2.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2640, %2636
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, %2636
  %2644 = fmul fast float %2634, 2.000000e+00
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = fmul fast float %2645, %2637
  %2647 = fadd fast float %2646, %2644
  %2648 = fmul fast float %2647, %2637
  %2649 = fmul fast float %2635, 2.000000e+00
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = fmul fast float %2650, %2638
  %2652 = fadd fast float %2651, %2649
  %2653 = fmul fast float %2652, %2638
  %2654 = fmul fast float %2643, %2643
  %2655 = fmul fast float %2648, %2648
  %2656 = fmul fast float %2653, %2653
  br label %2673

; <label>:2657                                    ; preds = %2620
  %2658 = fmul fast float %511, %511
  %2659 = fmul fast float %512, %512
  %2660 = fmul fast float %513, %513
  %2661 = fadd fast float %2658, -1.000000e+00
  %2662 = fadd fast float %2659, -1.000000e+00
  %2663 = fadd fast float %2660, -1.000000e+00
  %2664 = fmul fast float %2509, %2661
  %2665 = fmul fast float %2509, %2662
  %2666 = fmul fast float %2509, %2663
  %2667 = fadd fast float %2664, 1.000000e+00
  %2668 = fadd fast float %2665, 1.000000e+00
  %2669 = fadd fast float %2666, 1.000000e+00
  %2670 = fmul fast float %2667, %2484
  %2671 = fmul fast float %2668, %2485
  %2672 = fmul fast float %2669, %2486
  br label %2673

; <label>:2673                                    ; preds = %2657, %2623, %2514, %2470
  %2674 = phi float [ %2619, %2514 ], [ %2495, %2623 ], [ %2495, %2657 ], [ 0x3FA23C0BE0000000, %2470 ]
  %2675 = phi float [ %2611, %2514 ], [ %2654, %2623 ], [ %2670, %2657 ], [ 1.000000e+00, %2470 ]
  %2676 = phi float [ %2612, %2514 ], [ %2655, %2623 ], [ %2671, %2657 ], [ 1.000000e+00, %2470 ]
  %2677 = phi float [ %2613, %2514 ], [ %2656, %2623 ], [ %2672, %2657 ], [ 1.000000e+00, %2470 ]
  %2678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.i32 %2678, 1
  %2680 = and i32 %2679, 1
  %2681 = icmp ne i32 %2680, 0
  %2682 = add i32 %56, 356
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 32
  %2686 = icmp ne i32 %2685, 0
  %2687 = and i1 %2681, %2686
  %2688 = select i1 %2687, float 1.000000e+00, float %2675
  %2689 = select i1 %2687, float 0x3FD3333340000000, float %2676
  %2690 = select i1 %2687, float 0x3FD3333340000000, float %2677
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 32
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2767, label %2695

; <label>:2695                                    ; preds = %2673
  %2696 = add i32 %56, 124
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = add i32 %56, 432
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = add i32 %2701, 0
  %2703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2703, %dx.types.Handle %106, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.ResRet.f32 %2704, 2
  %2708 = extractvalue %dx.types.ResRet.f32 %2704, 3
  %2709 = and i32 %2698, 255
  %2710 = uitofp i32 %2709 to float
  %2711 = lshr i32 %2698, 8
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = lshr i32 %2698, 16
  %2715 = and i32 %2714, 255
  %2716 = uitofp i32 %2715 to float
  %2717 = fmul fast float %2716, 0x3F70101000000000
  %2718 = fmul fast float %2705, %2710
  %2719 = fadd fast float %2718, %2713
  %2720 = fmul fast float %2719, 0x3F70101000000000
  %2721 = fadd fast float %2706, -5.000000e-01
  %2722 = fadd fast float %2708, -5.000000e-01
  %2723 = fmul fast float %2721, %2717
  %2724 = fmul fast float %2722, %2717
  %2725 = fadd fast float %2723, 5.000000e-01
  %2726 = fadd fast float %2724, 5.000000e-01
  %2727 = fmul fast float %2725, 2.000000e+00
  %2728 = fadd fast float %2727, -1.000000e+00
  %2729 = fmul fast float %2726, 2.000000e+00
  %2730 = fadd fast float %2729, -1.000000e+00
  %2731 = fadd fast float %2728, %2730
  %2732 = fmul fast float %2731, 5.000000e-01
  %2733 = fsub fast float %2728, %2730
  %2734 = fmul fast float %2733, 5.000000e-01
  %2735 = call float @dx.op.unary.f32(i32 6, float %2732)  ; FAbs(value)
  %2736 = fsub fast float 1.000000e+00, %2735
  %2737 = call float @dx.op.unary.f32(i32 6, float %2734)  ; FAbs(value)
  %2738 = fsub fast float %2736, %2737
  %2739 = call float @dx.op.dot3.f32(i32 55, float %2732, float %2734, float %2738, float %2732, float %2734, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2740 = call float @dx.op.unary.f32(i32 25, float %2739)  ; Rsqrt(value)
  %2741 = fmul fast float %2732, %2740
  %2742 = fmul fast float %2734, %2740
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = and i32 %2744, 67108864
  %2746 = icmp eq i32 %2745, 0
  br i1 %2746, label %2763, label %2747

; <label>:2747                                    ; preds = %2695
  %2748 = add i32 %56, 312
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = and i32 %2750, 65535
  %2752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2751)  ; LegacyF16ToF32(value)
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = and i32 %2754, 65535
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = lshr i32 %2750, 16
  %2758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2757)  ; LegacyF16ToF32(value)
  %2759 = fsub fast float %2720, %2758
  %2760 = fmul fast float %2759, %2752
  %2761 = fadd fast float %2760, %2756
  %2762 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  br label %2763

; <label>:2763                                    ; preds = %2747, %2695
  %2764 = phi float [ %2762, %2747 ], [ %2720, %2695 ]
  %2765 = call float @dx.op.dot2.f32(i32 54, float %2741, float %2742, float %2299, float %2300)  ; Dot2(ax,ay,bx,by)
  %2766 = call float @dx.op.dot2.f32(i32 54, float %2741, float %2742, float %2301, float %2302)  ; Dot2(ax,ay,bx,by)
  br label %2767

; <label>:2767                                    ; preds = %2763, %2673
  %2768 = phi float [ %2764, %2763 ], [ 0x3FD6666660000000, %2673 ]
  %2769 = phi float [ %2765, %2763 ], [ 0.000000e+00, %2673 ]
  %2770 = phi float [ %2766, %2763 ], [ 0.000000e+00, %2673 ]
  %2771 = phi float [ %2707, %2763 ], [ 1.000000e+00, %2673 ]
  %2772 = add i32 %56, 192
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = lshr i32 %2774, 22
  %2776 = shl nuw nsw i32 %2775, 5
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 64
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2815, label %2782

; <label>:2782                                    ; preds = %2767
  %2783 = add i32 %56, 448
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = add i32 %2785, 0
  %2787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = and i32 %2789, 131072
  %2791 = icmp eq i32 %2790, 0
  %2792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2787, %dx.types.Handle %106, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2796 = fmul fast float %494, %2793
  %2797 = fmul fast float %495, %2794
  %2798 = fmul fast float %496, %2795
  br i1 %2791, label %2805, label %2799

; <label>:2799                                    ; preds = %2782
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = fmul fast float %2801, %2796
  %2803 = fmul fast float %2801, %2797
  %2804 = fmul fast float %2801, %2798
  br label %2805

; <label>:2805                                    ; preds = %2799, %2782
  %2806 = phi float [ %2802, %2799 ], [ %2796, %2782 ]
  %2807 = phi float [ %2803, %2799 ], [ %2797, %2782 ]
  %2808 = phi float [ %2804, %2799 ], [ %2798, %2782 ]
  %2809 = fmul fast float %2806, %2777
  %2810 = select i1 %269, float %2809, float %2806
  %2811 = call float @dx.op.dot3.f32(i32 55, float %2810, float %2807, float %2808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2812 = select i1 %269, float 0.000000e+00, float %2806
  %2813 = select i1 %269, float %2811, float %2807
  %2814 = select i1 %269, float 0.000000e+00, float %2808
  br label %2815

; <label>:2815                                    ; preds = %2805, %2767
  %2816 = phi float [ %2812, %2805 ], [ 0.000000e+00, %2767 ]
  %2817 = phi float [ %2813, %2805 ], [ 0.000000e+00, %2767 ]
  %2818 = phi float [ %2814, %2805 ], [ 0.000000e+00, %2767 ]
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 1024
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %2853, label %2823

; <label>:2823                                    ; preds = %2815
  %2824 = add i32 %56, 184
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 255
  %2828 = uitofp i32 %2827 to float
  %2829 = fmul fast float %2828, 0x3F70101020000000
  %2830 = lshr i32 %2826, 8
  %2831 = and i32 %2830, 255
  %2832 = uitofp i32 %2831 to float
  %2833 = fmul fast float %2832, 0x3F70101020000000
  %2834 = lshr i32 %2826, 16
  %2835 = and i32 %2834, 255
  %2836 = uitofp i32 %2835 to float
  %2837 = fmul fast float %2836, 0x3F70101020000000
  %2838 = fmul fast float %2829, %2829
  %2839 = fmul fast float %2833, %2833
  %2840 = fmul fast float %2837, %2837
  %2841 = add i32 %56, 516
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %107, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = fmul fast float %2838, %2847
  %2851 = fmul fast float %2839, %2848
  %2852 = fmul fast float %2840, %2849
  br label %2853

; <label>:2853                                    ; preds = %2823, %2815
  %2854 = phi float [ %2850, %2823 ], [ 0.000000e+00, %2815 ]
  %2855 = phi float [ %2851, %2823 ], [ 0.000000e+00, %2815 ]
  %2856 = phi float [ %2852, %2823 ], [ 0.000000e+00, %2815 ]
  %2857 = fcmp fast ogt float %2854, 0.000000e+00
  %2858 = fcmp fast ogt float %2855, 0.000000e+00
  %2859 = fcmp fast ogt float %2856, 0.000000e+00
  %2860 = call float @dx.op.unary.f32(i32 23, float %2854)  ; Log(value)
  %2861 = call float @dx.op.unary.f32(i32 23, float %2855)  ; Log(value)
  %2862 = call float @dx.op.unary.f32(i32 23, float %2856)  ; Log(value)
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = lshr i32 %2864, 7
  %2866 = and i32 %2865, 32752
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = fmul fast float %2860, 0xBFE62E4300000000
  %2869 = fmul fast float %2868, %2867
  %2870 = fmul fast float %2861, 0xBFE62E4300000000
  %2871 = fmul fast float %2870, %2867
  %2872 = fmul fast float %2862, 0xBFE62E4300000000
  %2873 = fmul fast float %2872, %2867
  %2874 = select i1 %2857, float %2869, float 1.270000e+02
  %2875 = select i1 %2858, float %2871, float 1.270000e+02
  %2876 = select i1 %2859, float %2873, float 1.270000e+02
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 26624
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2917, label %2881

; <label>:2881                                    ; preds = %2853
  %2882 = add i32 %56, 532
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = add i32 %2884, 0
  %2886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2886, %dx.types.Handle %107, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 1048576
  %2892 = icmp ne i32 %2891, 0
  %2893 = and i32 %2890, 2048
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2904, label %2895

; <label>:2895                                    ; preds = %2881
  %2896 = extractvalue %dx.types.ResRet.f32 %2887, 3
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = shl i32 %2898, 4
  %2900 = and i32 %2899, 32752
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = fmul fast float %2901, %2896
  %2903 = call float @dx.op.binary.f32(i32 35, float %2902, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2904

; <label>:2904                                    ; preds = %2895, %2881
  %2905 = phi float [ %2903, %2895 ], [ 0x3F70101020000000, %2881 ]
  %2906 = and i32 %2890, 16384
  %2907 = icmp eq i32 %2906, 0
  br i1 %2907, label %2917, label %2908

; <label>:2908                                    ; preds = %2904
  %2909 = add i32 %56, 128
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = lshr i32 %2911, 24
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2888, 0x3F70101020000000
  %2915 = select i1 %2892, float 0x3F70101020000000, float %2914
  %2916 = fmul fast float %2915, %2913
  br label %2917

; <label>:2917                                    ; preds = %2908, %2904, %2853
  %2918 = phi float [ %2905, %2908 ], [ %2905, %2904 ], [ 0x3F70101020000000, %2853 ]
  %2919 = phi float [ %2916, %2908 ], [ 0.000000e+00, %2904 ], [ 0.000000e+00, %2853 ]
  %2920 = add i32 %56, 128
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 255
  %2924 = uitofp i32 %2923 to float
  %2925 = lshr i32 %2922, 8
  %2926 = and i32 %2925, 255
  %2927 = uitofp i32 %2926 to float
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2688, float %2689, float %2690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = fmul fast float %2927, %2928
  %2930 = fadd fast float %2929, %2924
  %2931 = fmul fast float %2930, 0x3F70101020000000
  %2932 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  br i1 %2287, label %2933, label %2968

; <label>:2933                                    ; preds = %2917
  %2934 = fmul fast float %2918, 2.000000e+00
  %2935 = fcmp fast olt float %2874, 1.270000e+02
  %2936 = fcmp fast olt float %2875, 1.270000e+02
  %2937 = fcmp fast olt float %2876, 1.270000e+02
  %2938 = fmul fast float %2874, 0xBFF7154760000000
  %2939 = fmul fast float %2938, %2934
  %2940 = fmul fast float %2875, 0xBFF7154760000000
  %2941 = fmul fast float %2940, %2934
  %2942 = fmul fast float %2876, 0xBFF7154760000000
  %2943 = fmul fast float %2942, %2934
  %2944 = call float @dx.op.unary.f32(i32 21, float %2939)  ; Exp(value)
  %2945 = call float @dx.op.unary.f32(i32 21, float %2941)  ; Exp(value)
  %2946 = call float @dx.op.unary.f32(i32 21, float %2943)  ; Exp(value)
  %2947 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2948 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2949 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2950 = fadd fast float %2947, -1.000000e+00
  %2951 = select i1 %2935, float %2950, float -1.000000e+00
  %2952 = fadd fast float %2948, -1.000000e+00
  %2953 = select i1 %2936, float %2952, float -1.000000e+00
  %2954 = fadd fast float %2949, -1.000000e+00
  %2955 = select i1 %2937, float %2954, float -1.000000e+00
  %2956 = fmul fast float %2951, %2468
  %2957 = fmul fast float %2953, %2468
  %2958 = fmul fast float %2955, %2468
  %2959 = fadd fast float %2956, 1.000000e+00
  %2960 = fadd fast float %2957, 1.000000e+00
  %2961 = fadd fast float %2958, 1.000000e+00
  %2962 = fmul fast float %2959, %2271
  %2963 = fmul fast float %2960, %2272
  %2964 = fmul fast float %2961, %2273
  %2965 = fmul fast float %2959, %2274
  %2966 = fmul fast float %2960, %2275
  %2967 = fmul fast float %2961, %2276
  br label %2968

; <label>:2968                                    ; preds = %2933, %2917
  %2969 = phi float [ %2962, %2933 ], [ %2271, %2917 ]
  %2970 = phi float [ %2963, %2933 ], [ %2272, %2917 ]
  %2971 = phi float [ %2964, %2933 ], [ %2273, %2917 ]
  %2972 = phi float [ %2965, %2933 ], [ %2274, %2917 ]
  %2973 = phi float [ %2966, %2933 ], [ %2275, %2917 ]
  %2974 = phi float [ %2967, %2933 ], [ %2276, %2917 ]
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = and i32 %2976, 3
  %2978 = icmp eq i32 %2977, 3
  br i1 %2978, label %3057, label %2979

; <label>:2979                                    ; preds = %2968
  %2980 = and i32 %2976, 16
  %2981 = icmp ne i32 %2980, 0
  %2982 = select i1 %2981, float %2468, float 0.000000e+00
  %2983 = icmp eq i32 %2977, 0
  br i1 %2983, label %2984, label %3012

; <label>:2984                                    ; preds = %2979
  %2985 = and i32 %2976, 64
  %2986 = icmp ne i32 %2985, 0
  %2987 = select i1 %2986, float %2468, float 0.000000e+00
  %2988 = fsub fast float %2688, %2969
  %2989 = fsub fast float %2689, %2970
  %2990 = fsub fast float %2690, %2971
  %2991 = fmul fast float %2982, %2988
  %2992 = fmul fast float %2982, %2989
  %2993 = fmul fast float %2982, %2990
  %2994 = fadd fast float %2991, %2969
  %2995 = fadd fast float %2992, %2970
  %2996 = fadd fast float %2993, %2971
  %2997 = fsub fast float %2674, %2280
  %2998 = fmul fast float %2982, %2997
  %2999 = fadd fast float %2998, %2280
  %3000 = fsub fast float %2816, %2972
  %3001 = fsub fast float %2817, %2973
  %3002 = fsub fast float %2818, %2974
  %3003 = fmul fast float %2987, %3000
  %3004 = fmul fast float %2987, %3001
  %3005 = fmul fast float %2987, %3002
  %3006 = fadd fast float %3003, %2972
  %3007 = fadd fast float %3004, %2973
  %3008 = fadd fast float %3005, %2974
  %3009 = fsub fast float %2932, %2285
  %3010 = fmul fast float %2982, %3009
  %3011 = fadd fast float %3010, %2285
  br label %3057

; <label>:3012                                    ; preds = %2979
  %3013 = icmp eq i32 %2977, 1
  br i1 %3013, label %3014, label %3027

; <label>:3014                                    ; preds = %3012
  %3015 = fadd fast float %2688, -1.000000e+00
  %3016 = fadd fast float %2689, -1.000000e+00
  %3017 = fadd fast float %2690, -1.000000e+00
  %3018 = fmul fast float %2982, %3015
  %3019 = fmul fast float %2982, %3016
  %3020 = fmul fast float %2982, %3017
  %3021 = fadd fast float %3018, 1.000000e+00
  %3022 = fadd fast float %3019, 1.000000e+00
  %3023 = fadd fast float %3020, 1.000000e+00
  %3024 = fmul fast float %3021, %2969
  %3025 = fmul fast float %3022, %2970
  %3026 = fmul fast float %3023, %2971
  br label %3057

; <label>:3027                                    ; preds = %3012
  %3028 = icmp eq i32 %2977, 2
  br i1 %3028, label %3029, label %3057

; <label>:3029                                    ; preds = %3027
  %3030 = call float @dx.op.unary.f32(i32 24, float %2688)  ; Sqrt(value)
  %3031 = call float @dx.op.unary.f32(i32 24, float %2689)  ; Sqrt(value)
  %3032 = call float @dx.op.unary.f32(i32 24, float %2690)  ; Sqrt(value)
  %3033 = fadd fast float %3030, -5.000000e-01
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fadd fast float %3032, -5.000000e-01
  %3036 = fmul fast float %3033, %2982
  %3037 = fmul fast float %3034, %2982
  %3038 = fmul fast float %3035, %2982
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fmul fast float %3039, 2.000000e+00
  %3043 = fsub fast float 1.000000e+00, %3042
  %3044 = fmul fast float %3043, %2969
  %3045 = fadd fast float %3044, %3042
  %3046 = fmul fast float %3045, %2969
  %3047 = fmul fast float %3040, 2.000000e+00
  %3048 = fsub fast float 1.000000e+00, %3047
  %3049 = fmul fast float %3048, %2970
  %3050 = fadd fast float %3049, %3047
  %3051 = fmul fast float %3050, %2970
  %3052 = fmul fast float %3041, 2.000000e+00
  %3053 = fsub fast float 1.000000e+00, %3052
  %3054 = fmul fast float %3053, %2971
  %3055 = fadd fast float %3054, %3052
  %3056 = fmul fast float %3055, %2971
  br label %3057

; <label>:3057                                    ; preds = %3029, %3027, %3014, %2984, %2968
  %3058 = phi float [ %2969, %2968 ], [ %3046, %3029 ], [ %2969, %3027 ], [ %3024, %3014 ], [ %2994, %2984 ]
  %3059 = phi float [ %2970, %2968 ], [ %3051, %3029 ], [ %2970, %3027 ], [ %3025, %3014 ], [ %2995, %2984 ]
  %3060 = phi float [ %2971, %2968 ], [ %3056, %3029 ], [ %2971, %3027 ], [ %3026, %3014 ], [ %2996, %2984 ]
  %3061 = phi float [ %2972, %2968 ], [ %2972, %3029 ], [ %2972, %3027 ], [ %2972, %3014 ], [ %3006, %2984 ]
  %3062 = phi float [ %2973, %2968 ], [ %2973, %3029 ], [ %2973, %3027 ], [ %2973, %3014 ], [ %3007, %2984 ]
  %3063 = phi float [ %2974, %2968 ], [ %2974, %3029 ], [ %2974, %3027 ], [ %2974, %3014 ], [ %3008, %2984 ]
  %3064 = phi float [ %2280, %2968 ], [ %2280, %3029 ], [ %2280, %3027 ], [ %2280, %3014 ], [ %2999, %2984 ]
  %3065 = phi float [ %2285, %2968 ], [ %2285, %3029 ], [ %2285, %3027 ], [ %2285, %3014 ], [ %3011, %2984 ]
  %3066 = and i32 %2976, 12
  %3067 = icmp eq i32 %3066, 12
  br i1 %3067, label %3184, label %3068

; <label>:3068                                    ; preds = %3057
  %3069 = and i32 %2976, 2097184
  %3070 = icmp eq i32 %3069, 2097184
  %3071 = select i1 %3070, float %2468, float 0.000000e+00
  %3072 = and i32 %2976, 4194336
  %3073 = icmp eq i32 %3072, 4194336
  %3074 = select i1 %3073, float %2468, float 0.000000e+00
  %3075 = and i32 %2976, 8388640
  %3076 = icmp eq i32 %3075, 8388640
  %3077 = select i1 %3076, float %2468, float 0.000000e+00
  %3078 = and i32 %2976, 1024
  %3079 = icmp ne i32 %3078, 0
  %3080 = select i1 %3079, float %2468, float 0.000000e+00
  %3081 = and i32 %2976, 2048
  %3082 = icmp ne i32 %3081, 0
  %3083 = select i1 %3082, float %2468, float 0.000000e+00
  %3084 = and i32 %2976, 16384
  %3085 = icmp ne i32 %3084, 0
  %3086 = select i1 %3085, float %2468, float 0.000000e+00
  %3087 = icmp eq i32 %3066, 0
  br i1 %3087, label %3088, label %3116

; <label>:3088                                    ; preds = %3068
  %3089 = fsub fast float %2769, %2269
  %3090 = fsub fast float %2770, %2270
  %3091 = fmul fast float %3071, %3089
  %3092 = fmul fast float %3071, %3090
  %3093 = fadd fast float %3091, %2269
  %3094 = fadd fast float %3092, %2270
  %3095 = fsub fast float %2771, %2282
  %3096 = fmul fast float %3074, %3095
  %3097 = fadd fast float %3096, %2282
  %3098 = fsub fast float %2768, %2281
  %3099 = fmul fast float %3077, %3098
  %3100 = fadd fast float %3099, %2281
  %3101 = fsub fast float %2874, %2277
  %3102 = fsub fast float %2875, %2278
  %3103 = fsub fast float %2876, %2279
  %3104 = fmul fast float %3080, %3101
  %3105 = fmul fast float %3080, %3102
  %3106 = fmul fast float %3080, %3103
  %3107 = fadd fast float %3104, %2277
  %3108 = fadd fast float %3105, %2278
  %3109 = fadd fast float %3106, %2279
  %3110 = fsub fast float %2918, %2283
  %3111 = fmul fast float %3083, %3110
  %3112 = fadd fast float %3111, %2283
  %3113 = fsub fast float %2919, %2284
  %3114 = fmul fast float %3086, %3113
  %3115 = fadd fast float %3114, %2284
  br label %3184

; <label>:3116                                    ; preds = %3068
  %3117 = icmp eq i32 %3066, 4
  br i1 %3117, label %3118, label %3160

; <label>:3118                                    ; preds = %3116
  %3119 = fmul fast float %3071, %2769
  %3120 = fmul fast float %3071, %2770
  %3121 = fadd fast float %3119, %2269
  %3122 = fadd fast float %3120, %2270
  %3123 = call float @dx.op.binary.f32(i32 36, float %2282, float %2771)  ; FMin(a,b)
  %3124 = fsub fast float %3123, %2282
  %3125 = fmul fast float %3124, %3074
  %3126 = fadd fast float %3125, %2282
  %3127 = fadd fast float %2768, %2281
  %3128 = fmul fast float %3127, 0x3FF337FAE0000000
  %3129 = fmul fast float %2281, %2281
  %3130 = fmul fast float %2768, %2768
  %3131 = fadd fast float %3130, %3129
  %3132 = fmul fast float %3131, 0x3FE5152B00000000
  %3133 = fmul fast float %2281, 0xBFCC1F85E0000000
  %3134 = fmul fast float %3133, %2768
  %3135 = fadd fast float %3134, 0xBFE1363700000000
  %3136 = fadd fast float %3135, %3128
  %3137 = fsub fast float %3136, %3132
  %3138 = fmul fast float %3127, 0x3FBA6F0D00000000
  %3139 = fmul fast float %3131, 0x3FD0432880000000
  %3140 = fmul fast float %2281, 0xBFEF110800000000
  %3141 = fmul fast float %3140, %2768
  %3142 = fadd fast float %3141, 1.000000e+00
  %3143 = fsub fast float %3142, %3138
  %3144 = fadd fast float %3143, %3139
  %3145 = fdiv fast float %3137, %3144
  %3146 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3147 = fsub fast float %3146, %2281
  %3148 = fmul fast float %3147, %3077
  %3149 = fadd fast float %3148, %2281
  %3150 = fmul fast float %3080, %2874
  %3151 = fmul fast float %3080, %2875
  %3152 = fmul fast float %3080, %2876
  %3153 = fadd fast float %3150, %2277
  %3154 = fadd fast float %3151, %2278
  %3155 = fadd fast float %3152, %2279
  %3156 = fmul fast float %3083, %2918
  %3157 = fadd fast float %3156, %2283
  %3158 = fmul fast float %3086, %2919
  %3159 = fadd fast float %3158, %2284
  br label %3184

; <label>:3160                                    ; preds = %3116
  %3161 = icmp eq i32 %3066, 8
  br i1 %3161, label %3162, label %3184

; <label>:3162                                    ; preds = %3160
  %3163 = fmul fast float %3071, %2769
  %3164 = fmul fast float %3071, %2770
  %3165 = fadd fast float %3163, %2269
  %3166 = fadd fast float %3164, %2270
  %3167 = call float @dx.op.binary.f32(i32 36, float %2282, float %2771)  ; FMin(a,b)
  %3168 = fsub fast float %3167, %2282
  %3169 = fmul fast float %3168, %3074
  %3170 = fadd fast float %3169, %2282
  %3171 = fsub fast float %2768, %2281
  %3172 = fmul fast float %3077, %3171
  %3173 = fadd fast float %3172, %2281
  %3174 = fmul fast float %3080, %2874
  %3175 = fmul fast float %3080, %2875
  %3176 = fmul fast float %3080, %2876
  %3177 = fadd fast float %3174, %2277
  %3178 = fadd fast float %3175, %2278
  %3179 = fadd fast float %3176, %2279
  %3180 = fmul fast float %3083, %2918
  %3181 = fadd fast float %3180, %2283
  %3182 = fmul fast float %3086, %2919
  %3183 = fadd fast float %3182, %2284
  br label %3184

; <label>:3184                                    ; preds = %3162, %3160, %3118, %3088, %3057, %2467, %2286, %2268
  %3185 = phi float [ %2269, %3057 ], [ %2269, %2467 ], [ %2269, %2268 ], [ %3165, %3162 ], [ %2269, %3160 ], [ %3121, %3118 ], [ %3093, %3088 ], [ %2269, %2286 ]
  %3186 = phi float [ %2270, %3057 ], [ %2270, %2467 ], [ %2270, %2268 ], [ %3166, %3162 ], [ %2270, %3160 ], [ %3122, %3118 ], [ %3094, %3088 ], [ %2270, %2286 ]
  %3187 = phi float [ %3058, %3057 ], [ %2271, %2467 ], [ %2271, %2268 ], [ %3058, %3162 ], [ %3058, %3160 ], [ %3058, %3118 ], [ %3058, %3088 ], [ %2271, %2286 ]
  %3188 = phi float [ %3059, %3057 ], [ %2272, %2467 ], [ %2272, %2268 ], [ %3059, %3162 ], [ %3059, %3160 ], [ %3059, %3118 ], [ %3059, %3088 ], [ %2272, %2286 ]
  %3189 = phi float [ %3060, %3057 ], [ %2273, %2467 ], [ %2273, %2268 ], [ %3060, %3162 ], [ %3060, %3160 ], [ %3060, %3118 ], [ %3060, %3088 ], [ %2273, %2286 ]
  %3190 = phi float [ %3061, %3057 ], [ %2274, %2467 ], [ %2274, %2268 ], [ %3061, %3162 ], [ %3061, %3160 ], [ %3061, %3118 ], [ %3061, %3088 ], [ %2274, %2286 ]
  %3191 = phi float [ %3062, %3057 ], [ %2275, %2467 ], [ %2275, %2268 ], [ %3062, %3162 ], [ %3062, %3160 ], [ %3062, %3118 ], [ %3062, %3088 ], [ %2275, %2286 ]
  %3192 = phi float [ %3063, %3057 ], [ %2276, %2467 ], [ %2276, %2268 ], [ %3063, %3162 ], [ %3063, %3160 ], [ %3063, %3118 ], [ %3063, %3088 ], [ %2276, %2286 ]
  %3193 = phi float [ %2277, %3057 ], [ %2277, %2467 ], [ %2277, %2268 ], [ %3177, %3162 ], [ %2277, %3160 ], [ %3153, %3118 ], [ %3107, %3088 ], [ %2277, %2286 ]
  %3194 = phi float [ %2278, %3057 ], [ %2278, %2467 ], [ %2278, %2268 ], [ %3178, %3162 ], [ %2278, %3160 ], [ %3154, %3118 ], [ %3108, %3088 ], [ %2278, %2286 ]
  %3195 = phi float [ %2279, %3057 ], [ %2279, %2467 ], [ %2279, %2268 ], [ %3179, %3162 ], [ %2279, %3160 ], [ %3155, %3118 ], [ %3109, %3088 ], [ %2279, %2286 ]
  %3196 = phi float [ %3064, %3057 ], [ %2280, %2467 ], [ %2280, %2268 ], [ %3064, %3162 ], [ %3064, %3160 ], [ %3064, %3118 ], [ %3064, %3088 ], [ %2280, %2286 ]
  %3197 = phi float [ %2281, %3057 ], [ %2281, %2467 ], [ %2281, %2268 ], [ %3173, %3162 ], [ %2281, %3160 ], [ %3149, %3118 ], [ %3100, %3088 ], [ %2281, %2286 ]
  %3198 = phi float [ %2282, %3057 ], [ %2282, %2467 ], [ %2282, %2268 ], [ %3170, %3162 ], [ %2282, %3160 ], [ %3126, %3118 ], [ %3097, %3088 ], [ %2282, %2286 ]
  %3199 = phi float [ %2283, %3057 ], [ %2283, %2467 ], [ %2283, %2268 ], [ %3181, %3162 ], [ %2283, %3160 ], [ %3157, %3118 ], [ %3112, %3088 ], [ %2283, %2286 ]
  %3200 = phi float [ %2284, %3057 ], [ %2284, %2467 ], [ %2284, %2268 ], [ %3183, %3162 ], [ %2284, %3160 ], [ %3159, %3118 ], [ %3115, %3088 ], [ %2284, %2286 ]
  %3201 = phi float [ %3065, %3057 ], [ %2285, %2467 ], [ %2285, %2268 ], [ %3065, %3162 ], [ %3065, %3160 ], [ %3065, %3118 ], [ %3065, %3088 ], [ %2285, %2286 ]
  br i1 %653, label %4100, label %3202

; <label>:3202                                    ; preds = %3184
  %3203 = icmp ult i32 %707, 4
  %3204 = add i32 %56, 72
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %56, 76
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = or i32 %3209, %3206
  %3211 = icmp eq i32 %3210, 0
  br i1 %3211, label %4100, label %3212

; <label>:3212                                    ; preds = %3202
  %3213 = and i32 %3206, 262144
  %3214 = icmp ne i32 %3213, 0
  %3215 = select i1 %3214, float %64, float 1.000000e+00
  %3216 = select i1 %3214, float %65, float 0.000000e+00
  %3217 = select i1 %3214, float %66, float 0.000000e+00
  %3218 = select i1 %3214, float %67, float 1.000000e+00
  %3219 = select i1 %3214, float %68, float %92
  %3220 = select i1 %3214, float %69, float %93
  %3221 = add i32 %56, 332
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = lshr i32 %3223, 16
  %3225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3224)  ; LegacyF16ToF32(value)
  %3226 = fmul fast float %3225, 0x3F50624DE0000000
  %3227 = add i32 %56, 136
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = lshr i32 %3229, 16
  %3231 = and i32 %3230, 255
  %3232 = lshr i32 %3229, 24
  %3233 = add i32 %56, 340
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, 65535
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = lshr i32 %3235, 16
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = add i32 %56, 80
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = lshr i32 %3242, 22
  %3244 = shl nuw nsw i32 %3243, 5
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = shl i32 %3242, 4
  %3247 = and i32 %3246, 32752
  %3248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3247)  ; LegacyF16ToF32(value)
  %3249 = lshr i32 %3242, 7
  %3250 = and i32 %3249, 32752
  %3251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3250)  ; LegacyF16ToF32(value)
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 3
  %3254 = fmul fast float %3253, 1.000000e+03
  %3255 = fmul fast float %3254, %642
  %3256 = call float @dx.op.unary.f32(i32 22, float %3255)  ; Frc(value)
  %3257 = fadd fast float %3256, %630
  %3258 = fmul fast float %3254, %644
  %3259 = call float @dx.op.unary.f32(i32 22, float %3258)  ; Frc(value)
  %3260 = fadd fast float %3259, %631
  %3261 = fmul fast float %3226, %3254
  %3262 = call float @dx.op.unary.f32(i32 22, float %3261)  ; Frc(value)
  %3263 = fmul fast float %3262, 0x401921FB60000000
  %3264 = fadd fast float %3263, %3245
  %3265 = call float @dx.op.unary.f32(i32 13, float %3264)  ; Sin(value)
  %3266 = call float @dx.op.unary.f32(i32 12, float %3264)  ; Cos(value)
  %3267 = fsub fast float -0.000000e+00, %3265
  %3268 = fadd fast float %3219, -5.000000e-01
  %3269 = fadd fast float %3220, -5.000000e-01
  %3270 = fmul fast float %3237, %3268
  %3271 = fmul fast float %3239, %3269
  %3272 = fadd fast float %3270, 5.000000e-01
  %3273 = fadd fast float %3271, 5.000000e-01
  %3274 = fmul fast float %3248, %3272
  %3275 = fmul fast float %3251, %3273
  %3276 = fmul fast float %3266, %3274
  %3277 = call float @dx.op.tertiary.f32(i32 46, float %3267, float %3275, float %3276)  ; FMad(a,b,c)
  %3278 = fmul fast float %3265, %3274
  %3279 = call float @dx.op.tertiary.f32(i32 46, float %3266, float %3275, float %3278)  ; FMad(a,b,c)
  %3280 = fadd fast float %3257, %3277
  %3281 = fadd fast float %3260, %3279
  %3282 = icmp ugt i32 %3231, 1
  %3283 = icmp ugt i32 %3229, 33554431
  %3284 = or i1 %3283, %3282
  br i1 %3284, label %3285, label %3310

; <label>:3285                                    ; preds = %3212
  %3286 = add i32 %56, 276
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = lshr i32 %3288, 16
  %3290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3289)  ; LegacyF16ToF32(value)
  %3291 = fmul fast float %3253, %3290
  %3292 = call float @dx.op.unary.f32(i32 22, float %3291)  ; Frc(value)
  %3293 = mul nuw nsw i32 %3231, %3232
  %3294 = uitofp i32 %3293 to float
  %3295 = fmul fast float %3292, %3294
  %3296 = call float @dx.op.unary.f32(i32 27, float %3295)  ; Round_ni(value)
  %3297 = fptoui float %3296 to i32
  %3298 = urem i32 %3297, %3231
  %3299 = udiv i32 %3297, %3232
  %3300 = call float @dx.op.unary.f32(i32 22, float %3280)  ; Frc(value)
  %3301 = call float @dx.op.unary.f32(i32 22, float %3281)  ; Frc(value)
  %3302 = uitofp i32 %3298 to float
  %3303 = uitofp i32 %3299 to float
  %3304 = fadd fast float %3300, %3302
  %3305 = fadd fast float %3301, %3303
  %3306 = uitofp i32 %3231 to float
  %3307 = uitofp i32 %3232 to float
  %3308 = fdiv fast float %3304, %3306
  %3309 = fdiv fast float %3305, %3307
  br label %3310

; <label>:3310                                    ; preds = %3285, %3212
  %3311 = phi float [ %3308, %3285 ], [ %3280, %3212 ]
  %3312 = phi float [ %3309, %3285 ], [ %3281, %3212 ]
  %3313 = and i32 %3206, 256
  %3314 = icmp eq i32 %3313, 0
  br i1 %3314, label %3361, label %3315

; <label>:3315                                    ; preds = %3310
  %3316 = add i32 %56, 484
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = add i32 %3318, 0
  %3320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3320, %dx.types.Handle %107, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = add i32 %56, 148
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = shl i32 %3325, 4
  %3327 = and i32 %3326, 32752
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = lshr i32 %3325, 7
  %3330 = and i32 %3329, 32752
  %3331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3330)  ; LegacyF16ToF32(value)
  %3332 = fsub fast float 1.000000e+00, %702
  %3333 = call float @dx.op.binary.f32(i32 35, float %3332, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3334 = bitcast float %702 to i32
  %3335 = sitofp i32 %3334 to float
  %3336 = fadd fast float %3335, 0xC1CFBF8940000000
  %3337 = fmul fast float %3331, %3336
  %3338 = fadd fast float %3337, 0x41CFBF8940000000
  %3339 = fptosi float %3338 to i32
  %3340 = bitcast i32 %3339 to float
  %3341 = bitcast float %3333 to i32
  %3342 = sitofp i32 %3341 to float
  %3343 = fadd fast float %3342, 0xC1CFBF8940000000
  %3344 = fmul fast float %3343, %3331
  %3345 = fadd fast float %3344, 0x41CFBF8940000000
  %3346 = fptosi float %3345 to i32
  %3347 = bitcast i32 %3346 to float
  %3348 = fmul fast float %3340, %3328
  %3349 = fmul fast float %3347, %3328
  %3350 = fsub fast float %3333, %3348
  %3351 = fadd fast float %3349, %3333
  %3352 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3353 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  %3354 = fsub fast float %3322, %3352
  %3355 = fsub fast float %3353, %3352
  %3356 = bitcast float %3355 to i32
  %3357 = sub nsw i32 2129859010, %3356
  %3358 = bitcast i32 %3357 to float
  %3359 = fmul fast float %3358, %3354
  %3360 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  br label %3361

; <label>:3361                                    ; preds = %3315, %3310
  %3362 = phi float [ %3360, %3315 ], [ %702, %3310 ]
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = and i32 %3364, 128
  %3366 = icmp eq i32 %3365, 0
  br i1 %3366, label %3383, label %3367

; <label>:3367                                    ; preds = %3361
  %3368 = add i32 %56, 468
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = add i32 %3370, 0
  %3372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3372, %dx.types.Handle %107, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3374 = extractvalue %dx.types.ResRet.f32 %3373, 0
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 524288
  %3378 = icmp ne i32 %3377, 0
  %3379 = fcmp fast ogt float %3374, 0x3FE0101020000000
  %3380 = select i1 %3379, float 1.000000e+00, float 0.000000e+00
  %3381 = select i1 %3378, float %3380, float %3374
  %3382 = fmul fast float %3381, %3362
  br label %3383

; <label>:3383                                    ; preds = %3367, %3361
  %3384 = phi float [ %3382, %3367 ], [ %3362, %3361 ]
  %3385 = fcmp fast ult float %3384, 0x3F70101020000000
  br i1 %3385, label %4100, label %3386

; <label>:3386                                    ; preds = %3383
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 16
  %3390 = icmp eq i32 %3389, 0
  br i1 %3390, label %3589, label %3391

; <label>:3391                                    ; preds = %3386
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = add i32 %56, 420
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = add i32 %3396, 0
  %3398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3398, %dx.types.Handle %106, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = and i32 %3393, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = lshr i32 %3393, 8
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = fmul fast float %3403, %3405
  %3410 = fadd fast float %3409, %3408
  %3411 = fmul fast float %3410, 0x3F70101000000000
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 512
  %3415 = icmp eq i32 %3414, 0
  br i1 %3415, label %3424, label %3416

; <label>:3416                                    ; preds = %3391
  %3417 = add i32 %56, 504
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = add i32 %3419, 0
  %3421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3421, %dx.types.Handle %107, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  br label %3424

; <label>:3424                                    ; preds = %3416, %3391
  %3425 = phi float [ %3423, %3416 ], [ 1.000000e+00, %3391 ]
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 33554432
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %3536, label %3430

; <label>:3430                                    ; preds = %3424
  %3431 = add i32 %56, 272
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 65535
  %3435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3434)  ; LegacyF16ToF32(value)
  %3436 = lshr i32 %3433, 16
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = add i32 %56, 276
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = and i32 %3440, 65535
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = lshr i32 %3444, 24
  %3446 = uitofp i32 %3445 to float
  %3447 = fmul fast float %3446, 0x3F70101020000000
  %3448 = and i32 %3444, 255
  %3449 = uitofp i32 %3448 to float
  %3450 = fmul fast float %3449, 0x3F70101020000000
  %3451 = lshr i32 %3444, 8
  %3452 = and i32 %3451, 255
  %3453 = uitofp i32 %3452 to float
  %3454 = fmul fast float %3453, 0x3F70101020000000
  %3455 = lshr i32 %3444, 16
  %3456 = and i32 %3455, 255
  %3457 = uitofp i32 %3456 to float
  %3458 = fmul fast float %3457, 0x3F70101020000000
  %3459 = add i32 %56, 268
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = lshr i32 %3461, 24
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3463, 0x3F70101020000000
  %3465 = and i32 %3461, 255
  %3466 = uitofp i32 %3465 to float
  %3467 = fmul fast float %3466, 0x3F70101020000000
  %3468 = lshr i32 %3461, 8
  %3469 = and i32 %3468, 255
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3470, 0x3F70101020000000
  %3472 = lshr i32 %3461, 16
  %3473 = and i32 %3472, 255
  %3474 = uitofp i32 %3473 to float
  %3475 = fmul fast float %3474, 0x3F70101020000000
  %3476 = bitcast float %3400 to i32
  %3477 = ashr i32 %3476, 1
  %3478 = sub nsw i32 1597463174, %3477
  %3479 = bitcast i32 %3478 to float
  %3480 = fmul fast float %3400, 5.000000e-01
  %3481 = fmul fast float %3479, %3479
  %3482 = fmul fast float %3481, %3480
  %3483 = fsub fast float 1.500000e+00, %3482
  %3484 = fmul fast float %3479, %3400
  %3485 = fmul fast float %3484, %3483
  %3486 = bitcast float %3401 to i32
  %3487 = ashr i32 %3486, 1
  %3488 = sub nsw i32 1597463174, %3487
  %3489 = bitcast i32 %3488 to float
  %3490 = fmul fast float %3401, 5.000000e-01
  %3491 = fmul fast float %3489, %3489
  %3492 = fmul fast float %3491, %3490
  %3493 = fsub fast float 1.500000e+00, %3492
  %3494 = fmul fast float %3489, %3401
  %3495 = fmul fast float %3494, %3493
  %3496 = bitcast float %3402 to i32
  %3497 = ashr i32 %3496, 1
  %3498 = sub nsw i32 1597463174, %3497
  %3499 = bitcast i32 %3498 to float
  %3500 = fmul fast float %3402, 5.000000e-01
  %3501 = fmul fast float %3499, %3499
  %3502 = fmul fast float %3501, %3500
  %3503 = fsub fast float 1.500000e+00, %3502
  %3504 = fmul fast float %3499, %3402
  %3505 = fmul fast float %3504, %3503
  %3506 = fsub fast float %3485, %3467
  %3507 = fsub fast float %3495, %3471
  %3508 = fsub fast float %3505, %3475
  %3509 = fmul fast float %3506, %3435
  %3510 = fmul fast float %3507, %3437
  %3511 = fmul fast float %3508, %3442
  %3512 = fadd fast float %3509, %3450
  %3513 = fadd fast float %3510, %3454
  %3514 = fadd fast float %3511, %3458
  %3515 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3516 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3517 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3518 = fmul fast float %3515, %3515
  %3519 = fmul fast float %3516, %3516
  %3520 = fmul fast float %3517, %3517
  %3521 = fsub fast float %3518, %3400
  %3522 = fsub fast float %3519, %3401
  %3523 = fsub fast float %3520, %3402
  %3524 = fmul fast float %3521, %3425
  %3525 = fmul fast float %3522, %3425
  %3526 = fmul fast float %3523, %3425
  %3527 = fadd fast float %3524, %3400
  %3528 = fadd fast float %3525, %3401
  %3529 = fadd fast float %3526, %3402
  %3530 = fadd fast float %3447, %3411
  %3531 = fsub fast float %3530, %3464
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3533 = fsub fast float %3532, %3411
  %3534 = fmul fast float %3533, %3425
  %3535 = fadd fast float %3534, %3411
  br label %3589

; <label>:3536                                    ; preds = %3424
  %3537 = and i32 %3427, 134217728
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3573, label %3539

; <label>:3539                                    ; preds = %3536
  %3540 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3541 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3542 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3543 = fadd fast float %3540, -5.000000e-01
  %3544 = fadd fast float %3541, -5.000000e-01
  %3545 = fadd fast float %3542, -5.000000e-01
  %3546 = fmul fast float %3543, %3425
  %3547 = fmul fast float %3544, %3425
  %3548 = fmul fast float %3545, %3425
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = call float @dx.op.unary.f32(i32 24, float %3400)  ; Sqrt(value)
  %3553 = call float @dx.op.unary.f32(i32 24, float %3401)  ; Sqrt(value)
  %3554 = call float @dx.op.unary.f32(i32 24, float %3402)  ; Sqrt(value)
  %3555 = fmul fast float %3549, 2.000000e+00
  %3556 = fsub fast float 1.000000e+00, %3555
  %3557 = fmul fast float %3556, %3552
  %3558 = fadd fast float %3557, %3555
  %3559 = fmul fast float %3558, %3552
  %3560 = fmul fast float %3550, 2.000000e+00
  %3561 = fsub fast float 1.000000e+00, %3560
  %3562 = fmul fast float %3561, %3553
  %3563 = fadd fast float %3562, %3560
  %3564 = fmul fast float %3563, %3553
  %3565 = fmul fast float %3551, 2.000000e+00
  %3566 = fsub fast float 1.000000e+00, %3565
  %3567 = fmul fast float %3566, %3554
  %3568 = fadd fast float %3567, %3565
  %3569 = fmul fast float %3568, %3554
  %3570 = fmul fast float %3559, %3559
  %3571 = fmul fast float %3564, %3564
  %3572 = fmul fast float %3569, %3569
  br label %3589

; <label>:3573                                    ; preds = %3536
  %3574 = fmul fast float %618, %618
  %3575 = fmul fast float %619, %619
  %3576 = fmul fast float %620, %620
  %3577 = fadd fast float %3574, -1.000000e+00
  %3578 = fadd fast float %3575, -1.000000e+00
  %3579 = fadd fast float %3576, -1.000000e+00
  %3580 = fmul fast float %3425, %3577
  %3581 = fmul fast float %3425, %3578
  %3582 = fmul fast float %3425, %3579
  %3583 = fadd fast float %3580, 1.000000e+00
  %3584 = fadd fast float %3581, 1.000000e+00
  %3585 = fadd fast float %3582, 1.000000e+00
  %3586 = fmul fast float %3583, %3400
  %3587 = fmul fast float %3584, %3401
  %3588 = fmul fast float %3585, %3402
  br label %3589

; <label>:3589                                    ; preds = %3573, %3539, %3430, %3386
  %3590 = phi float [ %3535, %3430 ], [ %3411, %3539 ], [ %3411, %3573 ], [ 0x3FA23C0BE0000000, %3386 ]
  %3591 = phi float [ %3527, %3430 ], [ %3570, %3539 ], [ %3586, %3573 ], [ 1.000000e+00, %3386 ]
  %3592 = phi float [ %3528, %3430 ], [ %3571, %3539 ], [ %3587, %3573 ], [ 1.000000e+00, %3386 ]
  %3593 = phi float [ %3529, %3430 ], [ %3572, %3539 ], [ %3588, %3573 ], [ 1.000000e+00, %3386 ]
  %3594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.i32 %3594, 1
  %3596 = and i32 %3595, 1
  %3597 = icmp ne i32 %3596, 0
  %3598 = add i32 %56, 356
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 32
  %3602 = icmp ne i32 %3601, 0
  %3603 = and i1 %3597, %3602
  %3604 = select i1 %3603, float 1.000000e+00, float %3591
  %3605 = select i1 %3603, float 0x3FD3333340000000, float %3592
  %3606 = select i1 %3603, float 0x3FD3333340000000, float %3593
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 32
  %3610 = icmp eq i32 %3609, 0
  br i1 %3610, label %3683, label %3611

; <label>:3611                                    ; preds = %3589
  %3612 = add i32 %56, 140
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = add i32 %56, 436
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = add i32 %3617, 0
  %3619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3619, %dx.types.Handle %106, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = and i32 %3614, 255
  %3626 = uitofp i32 %3625 to float
  %3627 = lshr i32 %3614, 8
  %3628 = and i32 %3627, 255
  %3629 = uitofp i32 %3628 to float
  %3630 = lshr i32 %3614, 16
  %3631 = and i32 %3630, 255
  %3632 = uitofp i32 %3631 to float
  %3633 = fmul fast float %3632, 0x3F70101000000000
  %3634 = fmul fast float %3621, %3626
  %3635 = fadd fast float %3634, %3629
  %3636 = fmul fast float %3635, 0x3F70101000000000
  %3637 = fadd fast float %3622, -5.000000e-01
  %3638 = fadd fast float %3624, -5.000000e-01
  %3639 = fmul fast float %3637, %3633
  %3640 = fmul fast float %3638, %3633
  %3641 = fadd fast float %3639, 5.000000e-01
  %3642 = fadd fast float %3640, 5.000000e-01
  %3643 = fmul fast float %3641, 2.000000e+00
  %3644 = fadd fast float %3643, -1.000000e+00
  %3645 = fmul fast float %3642, 2.000000e+00
  %3646 = fadd fast float %3645, -1.000000e+00
  %3647 = fadd fast float %3644, %3646
  %3648 = fmul fast float %3647, 5.000000e-01
  %3649 = fsub fast float %3644, %3646
  %3650 = fmul fast float %3649, 5.000000e-01
  %3651 = call float @dx.op.unary.f32(i32 6, float %3648)  ; FAbs(value)
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3654 = fsub fast float %3652, %3653
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3650, float %3654, float %3648, float %3650, float %3654)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call float @dx.op.unary.f32(i32 25, float %3655)  ; Rsqrt(value)
  %3657 = fmul fast float %3648, %3656
  %3658 = fmul fast float %3650, %3656
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 67108864
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3679, label %3663

; <label>:3663                                    ; preds = %3611
  %3664 = add i32 %56, 328
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = and i32 %3666, 65535
  %3668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3667)  ; LegacyF16ToF32(value)
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 65535
  %3672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3671)  ; LegacyF16ToF32(value)
  %3673 = lshr i32 %3666, 16
  %3674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3673)  ; LegacyF16ToF32(value)
  %3675 = fsub fast float %3636, %3674
  %3676 = fmul fast float %3675, %3668
  %3677 = fadd fast float %3676, %3672
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  br label %3679

; <label>:3679                                    ; preds = %3663, %3611
  %3680 = phi float [ %3678, %3663 ], [ %3636, %3611 ]
  %3681 = call float @dx.op.dot2.f32(i32 54, float %3657, float %3658, float %3215, float %3216)  ; Dot2(ax,ay,bx,by)
  %3682 = call float @dx.op.dot2.f32(i32 54, float %3657, float %3658, float %3217, float %3218)  ; Dot2(ax,ay,bx,by)
  br label %3683

; <label>:3683                                    ; preds = %3679, %3589
  %3684 = phi float [ %3680, %3679 ], [ 0x3FD6666660000000, %3589 ]
  %3685 = phi float [ %3681, %3679 ], [ 0.000000e+00, %3589 ]
  %3686 = phi float [ %3682, %3679 ], [ 0.000000e+00, %3589 ]
  %3687 = phi float [ %3623, %3679 ], [ 1.000000e+00, %3589 ]
  %3688 = add i32 %56, 208
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = lshr i32 %3690, 22
  %3692 = shl nuw nsw i32 %3691, 5
  %3693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3692)  ; LegacyF16ToF32(value)
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 64
  %3697 = icmp eq i32 %3696, 0
  br i1 %3697, label %3731, label %3698

; <label>:3698                                    ; preds = %3683
  %3699 = add i32 %56, 452
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = add i32 %3701, 0
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 131072
  %3707 = icmp eq i32 %3706, 0
  %3708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3703, %dx.types.Handle %106, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = fmul fast float %601, %3709
  %3713 = fmul fast float %602, %3710
  %3714 = fmul fast float %603, %3711
  br i1 %3707, label %3721, label %3715

; <label>:3715                                    ; preds = %3698
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = fmul fast float %3717, %3712
  %3719 = fmul fast float %3717, %3713
  %3720 = fmul fast float %3717, %3714
  br label %3721

; <label>:3721                                    ; preds = %3715, %3698
  %3722 = phi float [ %3718, %3715 ], [ %3712, %3698 ]
  %3723 = phi float [ %3719, %3715 ], [ %3713, %3698 ]
  %3724 = phi float [ %3720, %3715 ], [ %3714, %3698 ]
  %3725 = fmul fast float %3722, %3693
  %3726 = select i1 %269, float %3725, float %3722
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3726, float %3723, float %3724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = select i1 %269, float 0.000000e+00, float %3722
  %3729 = select i1 %269, float %3727, float %3723
  %3730 = select i1 %269, float 0.000000e+00, float %3724
  br label %3731

; <label>:3731                                    ; preds = %3721, %3683
  %3732 = phi float [ %3728, %3721 ], [ 0.000000e+00, %3683 ]
  %3733 = phi float [ %3729, %3721 ], [ 0.000000e+00, %3683 ]
  %3734 = phi float [ %3730, %3721 ], [ 0.000000e+00, %3683 ]
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = and i32 %3736, 1024
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %3769, label %3739

; <label>:3739                                    ; preds = %3731
  %3740 = add i32 %56, 200
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = and i32 %3742, 255
  %3744 = uitofp i32 %3743 to float
  %3745 = fmul fast float %3744, 0x3F70101020000000
  %3746 = lshr i32 %3742, 8
  %3747 = and i32 %3746, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = fmul fast float %3748, 0x3F70101020000000
  %3750 = lshr i32 %3742, 16
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = fmul fast float %3752, 0x3F70101020000000
  %3754 = fmul fast float %3745, %3745
  %3755 = fmul fast float %3749, %3749
  %3756 = fmul fast float %3753, %3753
  %3757 = add i32 %56, 520
  %3758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.i32 %3758, 0
  %3760 = add i32 %3759, 0
  %3761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3761, %dx.types.Handle %107, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = fmul fast float %3754, %3763
  %3767 = fmul fast float %3755, %3764
  %3768 = fmul fast float %3756, %3765
  br label %3769

; <label>:3769                                    ; preds = %3739, %3731
  %3770 = phi float [ %3766, %3739 ], [ 0.000000e+00, %3731 ]
  %3771 = phi float [ %3767, %3739 ], [ 0.000000e+00, %3731 ]
  %3772 = phi float [ %3768, %3739 ], [ 0.000000e+00, %3731 ]
  %3773 = fcmp fast ogt float %3770, 0.000000e+00
  %3774 = fcmp fast ogt float %3771, 0.000000e+00
  %3775 = fcmp fast ogt float %3772, 0.000000e+00
  %3776 = call float @dx.op.unary.f32(i32 23, float %3770)  ; Log(value)
  %3777 = call float @dx.op.unary.f32(i32 23, float %3771)  ; Log(value)
  %3778 = call float @dx.op.unary.f32(i32 23, float %3772)  ; Log(value)
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = lshr i32 %3780, 7
  %3782 = and i32 %3781, 32752
  %3783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3782)  ; LegacyF16ToF32(value)
  %3784 = fmul fast float %3776, 0xBFE62E4300000000
  %3785 = fmul fast float %3784, %3783
  %3786 = fmul fast float %3777, 0xBFE62E4300000000
  %3787 = fmul fast float %3786, %3783
  %3788 = fmul fast float %3778, 0xBFE62E4300000000
  %3789 = fmul fast float %3788, %3783
  %3790 = select i1 %3773, float %3785, float 1.270000e+02
  %3791 = select i1 %3774, float %3787, float 1.270000e+02
  %3792 = select i1 %3775, float %3789, float 1.270000e+02
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = and i32 %3794, 26624
  %3796 = icmp eq i32 %3795, 0
  br i1 %3796, label %3833, label %3797

; <label>:3797                                    ; preds = %3769
  %3798 = add i32 %56, 536
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = add i32 %3800, 0
  %3802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3802, %dx.types.Handle %107, float %3311, float %3312, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = and i32 %3806, 1048576
  %3808 = icmp ne i32 %3807, 0
  %3809 = and i32 %3806, 2048
  %3810 = icmp eq i32 %3809, 0
  br i1 %3810, label %3820, label %3811

; <label>:3811                                    ; preds = %3797
  %3812 = extractvalue %dx.types.ResRet.f32 %3803, 3
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = shl i32 %3814, 4
  %3816 = and i32 %3815, 32752
  %3817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3816)  ; LegacyF16ToF32(value)
  %3818 = fmul fast float %3817, %3812
  %3819 = call float @dx.op.binary.f32(i32 35, float %3818, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3820

; <label>:3820                                    ; preds = %3811, %3797
  %3821 = phi float [ %3819, %3811 ], [ 0x3F70101020000000, %3797 ]
  %3822 = and i32 %3806, 16384
  %3823 = icmp eq i32 %3822, 0
  br i1 %3823, label %3833, label %3824

; <label>:3824                                    ; preds = %3820
  %3825 = add i32 %56, 144
  %3826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.i32 %3826, 0
  %3828 = lshr i32 %3827, 24
  %3829 = uitofp i32 %3828 to float
  %3830 = fmul fast float %3804, 0x3F70101020000000
  %3831 = select i1 %3808, float 0x3F70101020000000, float %3830
  %3832 = fmul fast float %3831, %3829
  br label %3833

; <label>:3833                                    ; preds = %3824, %3820, %3769
  %3834 = phi float [ %3821, %3824 ], [ %3821, %3820 ], [ 0x3F70101020000000, %3769 ]
  %3835 = phi float [ %3832, %3824 ], [ 0.000000e+00, %3820 ], [ 0.000000e+00, %3769 ]
  %3836 = add i32 %56, 144
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = and i32 %3838, 255
  %3840 = uitofp i32 %3839 to float
  %3841 = lshr i32 %3838, 8
  %3842 = and i32 %3841, 255
  %3843 = uitofp i32 %3842 to float
  %3844 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3605, float %3606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3845 = fmul fast float %3843, %3844
  %3846 = fadd fast float %3845, %3840
  %3847 = fmul fast float %3846, 0x3F70101020000000
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  br i1 %3203, label %3849, label %3884

; <label>:3849                                    ; preds = %3833
  %3850 = fmul fast float %3834, 2.000000e+00
  %3851 = fcmp fast olt float %3790, 1.270000e+02
  %3852 = fcmp fast olt float %3791, 1.270000e+02
  %3853 = fcmp fast olt float %3792, 1.270000e+02
  %3854 = fmul fast float %3790, 0xBFF7154760000000
  %3855 = fmul fast float %3854, %3850
  %3856 = fmul fast float %3791, 0xBFF7154760000000
  %3857 = fmul fast float %3856, %3850
  %3858 = fmul fast float %3792, 0xBFF7154760000000
  %3859 = fmul fast float %3858, %3850
  %3860 = call float @dx.op.unary.f32(i32 21, float %3855)  ; Exp(value)
  %3861 = call float @dx.op.unary.f32(i32 21, float %3857)  ; Exp(value)
  %3862 = call float @dx.op.unary.f32(i32 21, float %3859)  ; Exp(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = fadd fast float %3863, -1.000000e+00
  %3867 = select i1 %3851, float %3866, float -1.000000e+00
  %3868 = fadd fast float %3864, -1.000000e+00
  %3869 = select i1 %3852, float %3868, float -1.000000e+00
  %3870 = fadd fast float %3865, -1.000000e+00
  %3871 = select i1 %3853, float %3870, float -1.000000e+00
  %3872 = fmul fast float %3867, %3384
  %3873 = fmul fast float %3869, %3384
  %3874 = fmul fast float %3871, %3384
  %3875 = fadd fast float %3872, 1.000000e+00
  %3876 = fadd fast float %3873, 1.000000e+00
  %3877 = fadd fast float %3874, 1.000000e+00
  %3878 = fmul fast float %3875, %3187
  %3879 = fmul fast float %3876, %3188
  %3880 = fmul fast float %3877, %3189
  %3881 = fmul fast float %3875, %3190
  %3882 = fmul fast float %3876, %3191
  %3883 = fmul fast float %3877, %3192
  br label %3884

; <label>:3884                                    ; preds = %3849, %3833
  %3885 = phi float [ %3878, %3849 ], [ %3187, %3833 ]
  %3886 = phi float [ %3879, %3849 ], [ %3188, %3833 ]
  %3887 = phi float [ %3880, %3849 ], [ %3189, %3833 ]
  %3888 = phi float [ %3881, %3849 ], [ %3190, %3833 ]
  %3889 = phi float [ %3882, %3849 ], [ %3191, %3833 ]
  %3890 = phi float [ %3883, %3849 ], [ %3192, %3833 ]
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = and i32 %3892, 3
  %3894 = icmp eq i32 %3893, 3
  br i1 %3894, label %3973, label %3895

; <label>:3895                                    ; preds = %3884
  %3896 = and i32 %3892, 16
  %3897 = icmp ne i32 %3896, 0
  %3898 = select i1 %3897, float %3384, float 0.000000e+00
  %3899 = icmp eq i32 %3893, 0
  br i1 %3899, label %3900, label %3928

; <label>:3900                                    ; preds = %3895
  %3901 = and i32 %3892, 64
  %3902 = icmp ne i32 %3901, 0
  %3903 = select i1 %3902, float %3384, float 0.000000e+00
  %3904 = fsub fast float %3604, %3885
  %3905 = fsub fast float %3605, %3886
  %3906 = fsub fast float %3606, %3887
  %3907 = fmul fast float %3898, %3904
  %3908 = fmul fast float %3898, %3905
  %3909 = fmul fast float %3898, %3906
  %3910 = fadd fast float %3907, %3885
  %3911 = fadd fast float %3908, %3886
  %3912 = fadd fast float %3909, %3887
  %3913 = fsub fast float %3590, %3196
  %3914 = fmul fast float %3898, %3913
  %3915 = fadd fast float %3914, %3196
  %3916 = fsub fast float %3732, %3888
  %3917 = fsub fast float %3733, %3889
  %3918 = fsub fast float %3734, %3890
  %3919 = fmul fast float %3903, %3916
  %3920 = fmul fast float %3903, %3917
  %3921 = fmul fast float %3903, %3918
  %3922 = fadd fast float %3919, %3888
  %3923 = fadd fast float %3920, %3889
  %3924 = fadd fast float %3921, %3890
  %3925 = fsub fast float %3848, %3201
  %3926 = fmul fast float %3898, %3925
  %3927 = fadd fast float %3926, %3201
  br label %3973

; <label>:3928                                    ; preds = %3895
  %3929 = icmp eq i32 %3893, 1
  br i1 %3929, label %3930, label %3943

; <label>:3930                                    ; preds = %3928
  %3931 = fadd fast float %3604, -1.000000e+00
  %3932 = fadd fast float %3605, -1.000000e+00
  %3933 = fadd fast float %3606, -1.000000e+00
  %3934 = fmul fast float %3898, %3931
  %3935 = fmul fast float %3898, %3932
  %3936 = fmul fast float %3898, %3933
  %3937 = fadd fast float %3934, 1.000000e+00
  %3938 = fadd fast float %3935, 1.000000e+00
  %3939 = fadd fast float %3936, 1.000000e+00
  %3940 = fmul fast float %3937, %3885
  %3941 = fmul fast float %3938, %3886
  %3942 = fmul fast float %3939, %3887
  br label %3973

; <label>:3943                                    ; preds = %3928
  %3944 = icmp eq i32 %3893, 2
  br i1 %3944, label %3945, label %3973

; <label>:3945                                    ; preds = %3943
  %3946 = call float @dx.op.unary.f32(i32 24, float %3604)  ; Sqrt(value)
  %3947 = call float @dx.op.unary.f32(i32 24, float %3605)  ; Sqrt(value)
  %3948 = call float @dx.op.unary.f32(i32 24, float %3606)  ; Sqrt(value)
  %3949 = fadd fast float %3946, -5.000000e-01
  %3950 = fadd fast float %3947, -5.000000e-01
  %3951 = fadd fast float %3948, -5.000000e-01
  %3952 = fmul fast float %3949, %3898
  %3953 = fmul fast float %3950, %3898
  %3954 = fmul fast float %3951, %3898
  %3955 = fadd fast float %3952, 5.000000e-01
  %3956 = fadd fast float %3953, 5.000000e-01
  %3957 = fadd fast float %3954, 5.000000e-01
  %3958 = fmul fast float %3955, 2.000000e+00
  %3959 = fsub fast float 1.000000e+00, %3958
  %3960 = fmul fast float %3959, %3885
  %3961 = fadd fast float %3960, %3958
  %3962 = fmul fast float %3961, %3885
  %3963 = fmul fast float %3956, 2.000000e+00
  %3964 = fsub fast float 1.000000e+00, %3963
  %3965 = fmul fast float %3964, %3886
  %3966 = fadd fast float %3965, %3963
  %3967 = fmul fast float %3966, %3886
  %3968 = fmul fast float %3957, 2.000000e+00
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = fmul fast float %3969, %3887
  %3971 = fadd fast float %3970, %3968
  %3972 = fmul fast float %3971, %3887
  br label %3973

; <label>:3973                                    ; preds = %3945, %3943, %3930, %3900, %3884
  %3974 = phi float [ %3885, %3884 ], [ %3962, %3945 ], [ %3885, %3943 ], [ %3940, %3930 ], [ %3910, %3900 ]
  %3975 = phi float [ %3886, %3884 ], [ %3967, %3945 ], [ %3886, %3943 ], [ %3941, %3930 ], [ %3911, %3900 ]
  %3976 = phi float [ %3887, %3884 ], [ %3972, %3945 ], [ %3887, %3943 ], [ %3942, %3930 ], [ %3912, %3900 ]
  %3977 = phi float [ %3888, %3884 ], [ %3888, %3945 ], [ %3888, %3943 ], [ %3888, %3930 ], [ %3922, %3900 ]
  %3978 = phi float [ %3889, %3884 ], [ %3889, %3945 ], [ %3889, %3943 ], [ %3889, %3930 ], [ %3923, %3900 ]
  %3979 = phi float [ %3890, %3884 ], [ %3890, %3945 ], [ %3890, %3943 ], [ %3890, %3930 ], [ %3924, %3900 ]
  %3980 = phi float [ %3196, %3884 ], [ %3196, %3945 ], [ %3196, %3943 ], [ %3196, %3930 ], [ %3915, %3900 ]
  %3981 = phi float [ %3201, %3884 ], [ %3201, %3945 ], [ %3201, %3943 ], [ %3201, %3930 ], [ %3927, %3900 ]
  %3982 = and i32 %3892, 12
  %3983 = icmp eq i32 %3982, 12
  br i1 %3983, label %4100, label %3984

; <label>:3984                                    ; preds = %3973
  %3985 = and i32 %3892, 2097184
  %3986 = icmp eq i32 %3985, 2097184
  %3987 = select i1 %3986, float %3384, float 0.000000e+00
  %3988 = and i32 %3892, 4194336
  %3989 = icmp eq i32 %3988, 4194336
  %3990 = select i1 %3989, float %3384, float 0.000000e+00
  %3991 = and i32 %3892, 8388640
  %3992 = icmp eq i32 %3991, 8388640
  %3993 = select i1 %3992, float %3384, float 0.000000e+00
  %3994 = and i32 %3892, 1024
  %3995 = icmp ne i32 %3994, 0
  %3996 = select i1 %3995, float %3384, float 0.000000e+00
  %3997 = and i32 %3892, 2048
  %3998 = icmp ne i32 %3997, 0
  %3999 = select i1 %3998, float %3384, float 0.000000e+00
  %4000 = and i32 %3892, 16384
  %4001 = icmp ne i32 %4000, 0
  %4002 = select i1 %4001, float %3384, float 0.000000e+00
  %4003 = icmp eq i32 %3982, 0
  br i1 %4003, label %4004, label %4032

; <label>:4004                                    ; preds = %3984
  %4005 = fsub fast float %3685, %3185
  %4006 = fsub fast float %3686, %3186
  %4007 = fmul fast float %3987, %4005
  %4008 = fmul fast float %3987, %4006
  %4009 = fadd fast float %4007, %3185
  %4010 = fadd fast float %4008, %3186
  %4011 = fsub fast float %3687, %3198
  %4012 = fmul fast float %3990, %4011
  %4013 = fadd fast float %4012, %3198
  %4014 = fsub fast float %3684, %3197
  %4015 = fmul fast float %3993, %4014
  %4016 = fadd fast float %4015, %3197
  %4017 = fsub fast float %3790, %3193
  %4018 = fsub fast float %3791, %3194
  %4019 = fsub fast float %3792, %3195
  %4020 = fmul fast float %3996, %4017
  %4021 = fmul fast float %3996, %4018
  %4022 = fmul fast float %3996, %4019
  %4023 = fadd fast float %4020, %3193
  %4024 = fadd fast float %4021, %3194
  %4025 = fadd fast float %4022, %3195
  %4026 = fsub fast float %3834, %3199
  %4027 = fmul fast float %3999, %4026
  %4028 = fadd fast float %4027, %3199
  %4029 = fsub fast float %3835, %3200
  %4030 = fmul fast float %4002, %4029
  %4031 = fadd fast float %4030, %3200
  br label %4100

; <label>:4032                                    ; preds = %3984
  %4033 = icmp eq i32 %3982, 4
  br i1 %4033, label %4034, label %4076

; <label>:4034                                    ; preds = %4032
  %4035 = fmul fast float %3987, %3685
  %4036 = fmul fast float %3987, %3686
  %4037 = fadd fast float %4035, %3185
  %4038 = fadd fast float %4036, %3186
  %4039 = call float @dx.op.binary.f32(i32 36, float %3198, float %3687)  ; FMin(a,b)
  %4040 = fsub fast float %4039, %3198
  %4041 = fmul fast float %4040, %3990
  %4042 = fadd fast float %4041, %3198
  %4043 = fadd fast float %3684, %3197
  %4044 = fmul fast float %4043, 0x3FF337FAE0000000
  %4045 = fmul fast float %3197, %3197
  %4046 = fmul fast float %3684, %3684
  %4047 = fadd fast float %4046, %4045
  %4048 = fmul fast float %4047, 0x3FE5152B00000000
  %4049 = fmul fast float %3197, 0xBFCC1F85E0000000
  %4050 = fmul fast float %4049, %3684
  %4051 = fadd fast float %4050, 0xBFE1363700000000
  %4052 = fadd fast float %4051, %4044
  %4053 = fsub fast float %4052, %4048
  %4054 = fmul fast float %4043, 0x3FBA6F0D00000000
  %4055 = fmul fast float %4047, 0x3FD0432880000000
  %4056 = fmul fast float %3197, 0xBFEF110800000000
  %4057 = fmul fast float %4056, %3684
  %4058 = fadd fast float %4057, 1.000000e+00
  %4059 = fsub fast float %4058, %4054
  %4060 = fadd fast float %4059, %4055
  %4061 = fdiv fast float %4053, %4060
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fsub fast float %4062, %3197
  %4064 = fmul fast float %4063, %3993
  %4065 = fadd fast float %4064, %3197
  %4066 = fmul fast float %3996, %3790
  %4067 = fmul fast float %3996, %3791
  %4068 = fmul fast float %3996, %3792
  %4069 = fadd fast float %4066, %3193
  %4070 = fadd fast float %4067, %3194
  %4071 = fadd fast float %4068, %3195
  %4072 = fmul fast float %3999, %3834
  %4073 = fadd fast float %4072, %3199
  %4074 = fmul fast float %4002, %3835
  %4075 = fadd fast float %4074, %3200
  br label %4100

; <label>:4076                                    ; preds = %4032
  %4077 = icmp eq i32 %3982, 8
  br i1 %4077, label %4078, label %4100

; <label>:4078                                    ; preds = %4076
  %4079 = fmul fast float %3987, %3685
  %4080 = fmul fast float %3987, %3686
  %4081 = fadd fast float %4079, %3185
  %4082 = fadd fast float %4080, %3186
  %4083 = call float @dx.op.binary.f32(i32 36, float %3198, float %3687)  ; FMin(a,b)
  %4084 = fsub fast float %4083, %3198
  %4085 = fmul fast float %4084, %3990
  %4086 = fadd fast float %4085, %3198
  %4087 = fsub fast float %3684, %3197
  %4088 = fmul fast float %3993, %4087
  %4089 = fadd fast float %4088, %3197
  %4090 = fmul fast float %3996, %3790
  %4091 = fmul fast float %3996, %3791
  %4092 = fmul fast float %3996, %3792
  %4093 = fadd fast float %4090, %3193
  %4094 = fadd fast float %4091, %3194
  %4095 = fadd fast float %4092, %3195
  %4096 = fmul fast float %3999, %3834
  %4097 = fadd fast float %4096, %3199
  %4098 = fmul fast float %4002, %3835
  %4099 = fadd fast float %4098, %3200
  br label %4100

; <label>:4100                                    ; preds = %4078, %4076, %4034, %4004, %3973, %3383, %3202, %3184
  %4101 = phi float [ %3185, %3973 ], [ %3185, %3383 ], [ %3185, %3184 ], [ %3185, %3202 ], [ %4009, %4004 ], [ %4037, %4034 ], [ %3185, %4076 ], [ %4081, %4078 ]
  %4102 = phi float [ %3186, %3973 ], [ %3186, %3383 ], [ %3186, %3184 ], [ %3186, %3202 ], [ %4010, %4004 ], [ %4038, %4034 ], [ %3186, %4076 ], [ %4082, %4078 ]
  %4103 = phi float [ %3974, %3973 ], [ %3187, %3383 ], [ %3187, %3184 ], [ %3187, %3202 ], [ %3974, %4004 ], [ %3974, %4034 ], [ %3974, %4076 ], [ %3974, %4078 ]
  %4104 = phi float [ %3975, %3973 ], [ %3188, %3383 ], [ %3188, %3184 ], [ %3188, %3202 ], [ %3975, %4004 ], [ %3975, %4034 ], [ %3975, %4076 ], [ %3975, %4078 ]
  %4105 = phi float [ %3976, %3973 ], [ %3189, %3383 ], [ %3189, %3184 ], [ %3189, %3202 ], [ %3976, %4004 ], [ %3976, %4034 ], [ %3976, %4076 ], [ %3976, %4078 ]
  %4106 = phi float [ %3977, %3973 ], [ %3190, %3383 ], [ %3190, %3184 ], [ %3190, %3202 ], [ %3977, %4004 ], [ %3977, %4034 ], [ %3977, %4076 ], [ %3977, %4078 ]
  %4107 = phi float [ %3978, %3973 ], [ %3191, %3383 ], [ %3191, %3184 ], [ %3191, %3202 ], [ %3978, %4004 ], [ %3978, %4034 ], [ %3978, %4076 ], [ %3978, %4078 ]
  %4108 = phi float [ %3979, %3973 ], [ %3192, %3383 ], [ %3192, %3184 ], [ %3192, %3202 ], [ %3979, %4004 ], [ %3979, %4034 ], [ %3979, %4076 ], [ %3979, %4078 ]
  %4109 = phi float [ %3193, %3973 ], [ %3193, %3383 ], [ %3193, %3184 ], [ %3193, %3202 ], [ %4023, %4004 ], [ %4069, %4034 ], [ %3193, %4076 ], [ %4093, %4078 ]
  %4110 = phi float [ %3194, %3973 ], [ %3194, %3383 ], [ %3194, %3184 ], [ %3194, %3202 ], [ %4024, %4004 ], [ %4070, %4034 ], [ %3194, %4076 ], [ %4094, %4078 ]
  %4111 = phi float [ %3195, %3973 ], [ %3195, %3383 ], [ %3195, %3184 ], [ %3195, %3202 ], [ %4025, %4004 ], [ %4071, %4034 ], [ %3195, %4076 ], [ %4095, %4078 ]
  %4112 = phi float [ %3980, %3973 ], [ %3196, %3383 ], [ %3196, %3184 ], [ %3196, %3202 ], [ %3980, %4004 ], [ %3980, %4034 ], [ %3980, %4076 ], [ %3980, %4078 ]
  %4113 = phi float [ %3197, %3973 ], [ %3197, %3383 ], [ %3197, %3184 ], [ %3197, %3202 ], [ %4016, %4004 ], [ %4065, %4034 ], [ %3197, %4076 ], [ %4089, %4078 ]
  %4114 = phi float [ %3198, %3973 ], [ %3198, %3383 ], [ %3198, %3184 ], [ %3198, %3202 ], [ %4013, %4004 ], [ %4042, %4034 ], [ %3198, %4076 ], [ %4086, %4078 ]
  %4115 = phi float [ %3199, %3973 ], [ %3199, %3383 ], [ %3199, %3184 ], [ %3199, %3202 ], [ %4028, %4004 ], [ %4073, %4034 ], [ %3199, %4076 ], [ %4097, %4078 ]
  %4116 = phi float [ %3200, %3973 ], [ %3200, %3383 ], [ %3200, %3184 ], [ %3200, %3202 ], [ %4031, %4004 ], [ %4075, %4034 ], [ %3200, %4076 ], [ %4099, %4078 ]
  %4117 = phi float [ %3981, %3973 ], [ %3201, %3383 ], [ %3201, %3184 ], [ %3201, %3202 ], [ %3981, %4004 ], [ %3981, %4034 ], [ %3981, %4076 ], [ %3981, %4078 ]
  %4118 = add i32 %56, 360
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = extractvalue %dx.types.ResRet.i32 %4119, 1
  %4122 = bitcast i32 %4120 to float
  %4123 = bitcast i32 %4121 to float
  %4124 = fcmp fast oge float %4122, 0.000000e+00
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = select i1 %4124, float %4122, float %4126
  %4128 = fadd fast float %4127, %211
  %4129 = fmul fast float %4123, %212
  %4130 = add i32 %56, 488
  %4131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.i32 %4131, 0
  %4133 = add i32 %4132, 0
  %4134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4134, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = fmul fast float %4129, %4136
  %4138 = fadd fast float %4128, %4137
  %4139 = and i32 %203, 65535
  %4140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4139)  ; LegacyF16ToF32(value)
  %4141 = lshr i32 %203, 16
  %4142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4141)  ; LegacyF16ToF32(value)
  %4143 = and i32 %204, 65535
  %4144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4143)  ; LegacyF16ToF32(value)
  %4145 = fmul fast float %4140, %4103
  %4146 = fmul fast float %4142, %4104
  %4147 = fmul fast float %4144, %4105
  %4148 = shl i32 %205, 4
  %4149 = and i32 %4148, 32752
  %4150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4149)  ; LegacyF16ToF32(value)
  %4151 = lshr i32 %205, 7
  %4152 = and i32 %4151, 32752
  %4153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4152)  ; LegacyF16ToF32(value)
  %4154 = lshr i32 %205, 22
  %4155 = shl nuw nsw i32 %4154, 5
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = and i32 %206, 65535
  %4158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4157)  ; LegacyF16ToF32(value)
  %4159 = fmul fast float %4150, %4106
  %4160 = fmul fast float %4159, %4158
  %4161 = fmul fast float %4153, %4107
  %4162 = fmul fast float %4161, %4158
  %4163 = fmul fast float %4156, %4108
  %4164 = fmul fast float %4163, %4158
  %4165 = call float @dx.op.dot2.f32(i32 54, float %4101, float %4102, float %4101, float %4102)  ; Dot2(ax,ay,bx,by)
  %4166 = fmul fast float %4165, 0x3FE3333340000000
  %4167 = fsub fast float 1.000000e+00, %4166
  %4168 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4102, float %4167, float %4101, float %4102, float %4167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4169 = call float @dx.op.unary.f32(i32 25, float %4168)  ; Rsqrt(value)
  %4170 = fmul fast float %4169, %4101
  %4171 = fmul fast float %4169, %4102
  %4172 = fmul fast float %4167, %4169
  %4173 = fmul fast float %4172, %117
  %4174 = fmul fast float %4172, %118
  %4175 = fmul fast float %4172, %119
  %4176 = fmul fast float %4170, %85
  %4177 = fmul fast float %4170, %86
  %4178 = fmul fast float %4170, %87
  %4179 = fadd fast float %4173, %4176
  %4180 = fadd fast float %4174, %4177
  %4181 = fadd fast float %4175, %4178
  %4182 = fmul fast float %129, %4171
  %4183 = fmul fast float %130, %4171
  %4184 = fmul fast float %131, %4171
  %4185 = fadd fast float %4179, %4182
  %4186 = fadd fast float %4180, %4183
  %4187 = fadd fast float %4181, %4184
  %4188 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float %4185, float %4186, float %4187)  ; Dot3(ax,ay,az,bx,by,bz)
  %4189 = call float @dx.op.unary.f32(i32 25, float %4188)  ; Rsqrt(value)
  %4190 = fmul fast float %4185, %4189
  %4191 = fmul fast float %4186, %4189
  %4192 = fmul fast float %4187, %4189
  %4193 = icmp eq i32 %59, 65535
  br i1 %4193, label %4739, label %4194

; <label>:4194                                    ; preds = %4100
  %4195 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4196 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %4197 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4198 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4199 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %4200 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4201 = fadd fast float %4195, %60
  %4202 = fadd fast float %4196, %61
  %4203 = fadd fast float %4197, %62
  %4204 = fadd fast float %4198, %60
  %4205 = fadd fast float %4199, %61
  %4206 = fadd fast float %4200, %62
  %4207 = mul i32 %59, 48
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = add i32 %4207, 16
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = add i32 %4207, 32
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = extractvalue %dx.types.ResRet.f32 %4218, 3
  %4223 = bitcast float %4222 to i32
  %4224 = fmul fast float %4209, %60
  %4225 = fmul fast float %4210, %61
  %4226 = fmul fast float %4211, %62
  %4227 = fsub fast float %4224, %4214
  %4228 = fsub fast float %4225, %4215
  %4229 = fsub fast float %4226, %4216
  %4230 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4231 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4233 = fmul fast float %4230, %4219
  %4234 = fmul fast float %4231, %4220
  %4235 = fmul fast float %4232, %4221
  %4236 = fadd fast float %4219, -1.000000e+00
  %4237 = fadd fast float %4220, -1.000000e+00
  %4238 = fadd fast float %4221, -1.000000e+00
  %4239 = call float @dx.op.unary.f32(i32 27, float %4233)  ; Round_ni(value)
  %4240 = call float @dx.op.unary.f32(i32 27, float %4234)  ; Round_ni(value)
  %4241 = call float @dx.op.unary.f32(i32 27, float %4235)  ; Round_ni(value)
  %4242 = call float @dx.op.binary.f32(i32 36, float %4239, float %4236)  ; FMin(a,b)
  %4243 = call float @dx.op.binary.f32(i32 36, float %4240, float %4237)  ; FMin(a,b)
  %4244 = call float @dx.op.binary.f32(i32 36, float %4241, float %4238)  ; FMin(a,b)
  %4245 = fmul fast float %4244, %4220
  %4246 = fadd fast float %4245, %4243
  %4247 = fmul fast float %4246, %4219
  %4248 = fadd fast float %4247, %4242
  %4249 = fptosi float %4248 to i32
  %4250 = add nsw i32 %4249, %4223
  %4251 = shl nsw i32 %4250, 2
  %4252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.i32 %4252, 0
  %4254 = lshr i32 %4253, 16
  %4255 = icmp eq i32 %4254, 0
  br i1 %4255, label %4705, label %4256

; <label>:4256                                    ; preds = %4194
  br label %4257

; <label>:4257                                    ; preds = %4381, %4256
  %4258 = phi i32 [ %4283, %4381 ], [ %4254, %4256 ]
  %4259 = phi float [ %4382, %4381 ], [ 0.000000e+00, %4256 ]
  %4260 = phi float [ %4383, %4381 ], [ %4138, %4256 ]
  %4261 = phi float [ %4384, %4381 ], [ %4117, %4256 ]
  %4262 = phi float [ %4385, %4381 ], [ %4109, %4256 ]
  %4263 = phi float [ %4386, %4381 ], [ %4110, %4256 ]
  %4264 = phi float [ %4387, %4381 ], [ %4111, %4256 ]
  %4265 = phi float [ %4388, %4381 ], [ %4116, %4256 ]
  %4266 = phi float [ %4389, %4381 ], [ 0.000000e+00, %4256 ]
  %4267 = phi float [ %4390, %4381 ], [ %4160, %4256 ]
  %4268 = phi float [ %4391, %4381 ], [ %4162, %4256 ]
  %4269 = phi float [ %4392, %4381 ], [ %4164, %4256 ]
  %4270 = phi float [ %4393, %4381 ], [ %4190, %4256 ]
  %4271 = phi float [ %4394, %4381 ], [ %4191, %4256 ]
  %4272 = phi float [ %4395, %4381 ], [ %4192, %4256 ]
  %4273 = phi float [ %4396, %4381 ], [ %4114, %4256 ]
  %4274 = phi float [ %4397, %4381 ], [ %4113, %4256 ]
  %4275 = phi float [ %4398, %4381 ], [ 0.000000e+00, %4256 ]
  %4276 = phi float [ %4399, %4381 ], [ %4112, %4256 ]
  %4277 = phi float [ %4400, %4381 ], [ %4145, %4256 ]
  %4278 = phi float [ %4401, %4381 ], [ %4146, %4256 ]
  %4279 = phi float [ %4402, %4381 ], [ %4147, %4256 ]
  %4280 = shl nuw nsw i32 %4258, 2
  %4281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.i32 %4281, 0
  %4283 = lshr i32 %4282, 16
  %4284 = shl i32 %4282, 8
  %4285 = and i32 %4284, 16776960
  %4286 = or i32 %4285, 48
  %4287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.ResRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.ResRet.f32 %4287, 2
  %4291 = or i32 %4285, 64
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.i32 %4292, 1
  %4295 = or i32 %4285, 80
  %4296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 2
  %4298 = extractvalue %dx.types.ResRet.f32 %4296, 3
  %4299 = or i32 %4285, 96
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = extractvalue %dx.types.ResRet.f32 %4300, 3
  %4305 = or i32 %4285, 112
  %4306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 2
  %4308 = or i32 %4285, 128
  %4309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = extractvalue %dx.types.ResRet.f32 %4309, 1
  %4312 = extractvalue %dx.types.ResRet.f32 %4309, 2
  %4313 = extractvalue %dx.types.ResRet.f32 %4309, 3
  %4314 = or i32 %4285, 144
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = extractvalue %dx.types.ResRet.f32 %4315, 3
  %4320 = or i32 %4285, 160
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = extractvalue %dx.types.ResRet.f32 %4321, 3
  %4326 = or i32 %4285, 192
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = or i32 %4285, 208
  %4330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4329, i32 undef)  ; BufferLoad(srv,index,wot)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = or i32 %4285, 248
  %4333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = extractvalue %dx.types.ResRet.f32 %4336, 1
  %4339 = extractvalue %dx.types.ResRet.f32 %4336, 2
  %4340 = extractvalue %dx.types.ResRet.f32 %4336, 3
  %4341 = call float @dx.op.dot4.f32(i32 56, float %4337, float %4338, float %4339, float %4340, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4342 = or i32 %4285, 16
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = extractvalue %dx.types.ResRet.f32 %4343, 1
  %4346 = extractvalue %dx.types.ResRet.f32 %4343, 2
  %4347 = extractvalue %dx.types.ResRet.f32 %4343, 3
  %4348 = call float @dx.op.dot4.f32(i32 56, float %4344, float %4345, float %4346, float %4347, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4349 = or i32 %4285, 32
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = extractvalue %dx.types.ResRet.f32 %4350, 3
  %4355 = call float @dx.op.dot4.f32(i32 56, float %4351, float %4352, float %4353, float %4354, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4356 = call float @dx.op.unary.f32(i32 27, float %4341)  ; Round_ni(value)
  %4357 = call float @dx.op.unary.f32(i32 6, float %4356)  ; FAbs(value)
  %4358 = call float @dx.op.unary.f32(i32 27, float %4348)  ; Round_ni(value)
  %4359 = call float @dx.op.unary.f32(i32 6, float %4358)  ; FAbs(value)
  %4360 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4361 = call float @dx.op.unary.f32(i32 27, float %4360)  ; Round_ni(value)
  %4362 = fadd fast float %4359, %4357
  %4363 = fadd fast float %4362, %4361
  %4364 = fcmp fast oeq float %4363, 0.000000e+00
  %4365 = call float @dx.op.dot4.f32(i32 56, float %4337, float %4338, float %4339, float %4340, float %4201, float %4202, float %4203, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4366 = call float @dx.op.dot4.f32(i32 56, float %4344, float %4345, float %4346, float %4347, float %4201, float %4202, float %4203, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4367 = call float @dx.op.dot4.f32(i32 56, float %4337, float %4338, float %4339, float %4340, float %4204, float %4205, float %4206, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4368 = call float @dx.op.dot4.f32(i32 56, float %4344, float %4345, float %4346, float %4347, float %4204, float %4205, float %4206, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4369 = fsub fast float %4365, %4341
  %4370 = fsub fast float %4367, %4341
  %4371 = fsub fast float %4366, %4348
  %4372 = fsub fast float %4368, %4348
  %4373 = call float @dx.op.dot3.f32(i32 55, float %4288, float %4289, float %4290, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 2
  %4376 = fadd fast float %4375, %4373
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4379 = fcmp fast ogt float %4377, %4378
  %4380 = and i1 %4364, %4379
  br i1 %4380, label %4404, label %4381

; <label>:4381                                    ; preds = %4691, %4487, %4404, %4257
  %4382 = phi float [ %4259, %4404 ], [ %4490, %4487 ], [ %4490, %4691 ], [ %4259, %4257 ]
  %4383 = phi float [ %4260, %4404 ], [ %4260, %4487 ], [ %4667, %4691 ], [ %4260, %4257 ]
  %4384 = phi float [ %4261, %4404 ], [ %4261, %4487 ], [ %4665, %4691 ], [ %4261, %4257 ]
  %4385 = phi float [ %4262, %4404 ], [ %4262, %4487 ], [ %4643, %4691 ], [ %4262, %4257 ]
  %4386 = phi float [ %4263, %4404 ], [ %4263, %4487 ], [ %4644, %4691 ], [ %4263, %4257 ]
  %4387 = phi float [ %4264, %4404 ], [ %4264, %4487 ], [ %4645, %4691 ], [ %4264, %4257 ]
  %4388 = phi float [ %4265, %4404 ], [ %4265, %4487 ], [ %4614, %4691 ], [ %4265, %4257 ]
  %4389 = phi float [ %4266, %4404 ], [ %4266, %4487 ], [ %4612, %4691 ], [ %4266, %4257 ]
  %4390 = phi float [ %4267, %4404 ], [ %4267, %4487 ], [ %4701, %4691 ], [ %4267, %4257 ]
  %4391 = phi float [ %4268, %4404 ], [ %4268, %4487 ], [ %4702, %4691 ], [ %4268, %4257 ]
  %4392 = phi float [ %4269, %4404 ], [ %4269, %4487 ], [ %4703, %4691 ], [ %4269, %4257 ]
  %4393 = phi float [ %4270, %4404 ], [ %4270, %4487 ], [ %4593, %4691 ], [ %4270, %4257 ]
  %4394 = phi float [ %4271, %4404 ], [ %4271, %4487 ], [ %4594, %4691 ], [ %4271, %4257 ]
  %4395 = phi float [ %4272, %4404 ], [ %4272, %4487 ], [ %4595, %4691 ], [ %4272, %4257 ]
  %4396 = phi float [ %4273, %4404 ], [ %4273, %4487 ], [ %4623, %4691 ], [ %4273, %4257 ]
  %4397 = phi float [ %4274, %4404 ], [ %4274, %4487 ], [ %4620, %4691 ], [ %4274, %4257 ]
  %4398 = phi float [ %4275, %4404 ], [ %4275, %4487 ], [ %4617, %4691 ], [ %4275, %4257 ]
  %4399 = phi float [ %4276, %4404 ], [ %4276, %4487 ], [ %4610, %4691 ], [ %4276, %4257 ]
  %4400 = phi float [ %4277, %4404 ], [ %4277, %4487 ], [ %4605, %4691 ], [ %4277, %4257 ]
  %4401 = phi float [ %4278, %4404 ], [ %4278, %4487 ], [ %4606, %4691 ], [ %4278, %4257 ]
  %4402 = phi float [ %4279, %4404 ], [ %4279, %4487 ], [ %4607, %4691 ], [ %4279, %4257 ]
  %4403 = icmp eq i32 %4283, 0
  br i1 %4403, label %4704, label %4257

; <label>:4404                                    ; preds = %4257
  %4405 = extractvalue %dx.types.ResRet.f32 %4287, 3
  %4406 = extractvalue %dx.types.ResRet.f32 %4306, 3
  %4407 = extractvalue %dx.types.ResRet.f32 %4306, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4296, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4411 = extractvalue %dx.types.ResRet.i32 %4292, 3
  %4412 = extractvalue %dx.types.ResRet.i32 %4292, 2
  %4413 = bitcast float %4405 to i32
  %4414 = add i32 %4411, 0
  %4415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4414, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4417 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4415, %dx.types.Handle %4416, float %4341, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float %4369, float %4371, float undef, float %4370, float %4372, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = fmul fast float %4418, %4410
  %4420 = fadd fast float %4419, %4409
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fmul fast float %4341, %4301
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4348, float %4422)  ; FMad(a,b,c)
  %4424 = fadd fast float %4423, %4408
  %4425 = fmul fast float %4341, %4303
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4304, float %4348, float %4425)  ; FMad(a,b,c)
  %4427 = fadd fast float %4426, %4407
  %4428 = fmul fast float %4369, %4301
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4371, float %4428)  ; FMad(a,b,c)
  %4430 = fmul fast float %4369, %4303
  %4431 = call float @dx.op.tertiary.f32(i32 46, float %4304, float %4371, float %4430)  ; FMad(a,b,c)
  %4432 = fmul fast float %4370, %4301
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4372, float %4432)  ; FMad(a,b,c)
  %4434 = fmul fast float %4370, %4303
  %4435 = call float @dx.op.tertiary.f32(i32 46, float %4304, float %4372, float %4434)  ; FMad(a,b,c)
  %4436 = add i32 %4412, 0
  %4437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4436, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4437, %dx.types.Handle %4416, float %4424, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float %4429, float %4431, float undef, float %4433, float %4435, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = and i32 %4413, 1024
  %4441 = icmp ne i32 %4440, 0
  %4442 = fcmp fast ogt float %4439, 0x3FE0101020000000
  %4443 = uitofp i1 %4442 to float
  %4444 = select i1 %4441, float %4443, float %4439
  %4445 = and i32 %4413, 8192
  %4446 = icmp ne i32 %4445, 0
  %4447 = select i1 %4446, float %4406, float 1.000000e+00
  %4448 = fmul fast float %4341, 2.000000e+00
  %4449 = fadd fast float %4448, -1.000000e+00
  %4450 = call float @dx.op.unary.f32(i32 6, float %4449)  ; FAbs(value)
  %4451 = fmul fast float %4450, %4334
  %4452 = fsub fast float %4451, %4334
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = fmul fast float %4348, 2.000000e+00
  %4455 = fadd fast float %4454, -1.000000e+00
  %4456 = call float @dx.op.unary.f32(i32 6, float %4455)  ; FAbs(value)
  %4457 = fmul fast float %4456, %4335
  %4458 = fsub fast float %4457, %4335
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fmul fast float %4360, %4297
  %4461 = fsub fast float %4460, %4297
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4421, %4447
  %4464 = fmul fast float %4463, %4418
  %4465 = fmul fast float %4464, %4453
  %4466 = fmul fast float %4465, %4444
  %4467 = fmul fast float %4466, %4459
  %4468 = fmul fast float %4467, %4462
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4472 = fsub fast float %4377, %4471
  %4473 = fmul fast float %4472, %4470
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fmul fast float %4468, %4298
  %4476 = fadd fast float %4468, %4298
  %4477 = fmul fast float %4476, %4307
  %4478 = fsub fast float %4477, %4307
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = and i32 %4413, 128
  %4481 = icmp ne i32 %4480, 0
  %4482 = select i1 %4481, float %4479, float %4475
  %4483 = fmul fast float %4482, %4474
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 0
  %4486 = fcmp fast ugt float %4483, %4485
  br i1 %4486, label %4487, label %4381

; <label>:4487                                    ; preds = %4404
  %4488 = select i1 %4446, float %4483, float 0.000000e+00
  %4489 = fadd fast float %4488, %4259
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  br i1 %4446, label %4381, label %4491

; <label>:4491                                    ; preds = %4487
  %4492 = and i32 %4413, 4
  %4493 = and i32 %4413, 8
  %4494 = add i32 %4293, 0
  %4495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4494, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4495, %dx.types.Handle %4496, float %4424, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float %4429, float %4431, float undef, float %4433, float %4435, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.ResRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.ResRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.ResRet.f32 %4497, 3
  %4502 = bitcast float %4319 to i32
  %4503 = and i32 %4502, 255
  %4504 = uitofp i32 %4503 to float
  %4505 = lshr i32 %4502, 8
  %4506 = and i32 %4505, 255
  %4507 = uitofp i32 %4506 to float
  %4508 = fmul fast float %4501, %4504
  %4509 = fadd fast float %4508, %4507
  %4510 = fmul fast float %4509, 0x3F70101000000000
  %4511 = add i32 %4294, 0
  %4512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4511, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4513 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4512, %dx.types.Handle %4496, float %4424, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float %4429, float %4431, float undef, float %4433, float %4435, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = extractvalue %dx.types.ResRet.f32 %4513, 3
  %4518 = bitcast float %4313 to i32
  %4519 = and i32 %4518, 255
  %4520 = uitofp i32 %4519 to float
  %4521 = lshr i32 %4518, 8
  %4522 = and i32 %4521, 255
  %4523 = uitofp i32 %4522 to float
  %4524 = lshr i32 %4518, 16
  %4525 = and i32 %4524, 255
  %4526 = uitofp i32 %4525 to float
  %4527 = fmul fast float %4526, 0x3F70101000000000
  %4528 = fmul fast float %4514, %4520
  %4529 = fadd fast float %4528, %4523
  %4530 = fmul fast float %4529, 0x3F70101000000000
  %4531 = fadd fast float %4515, -5.000000e-01
  %4532 = fadd fast float %4517, -5.000000e-01
  %4533 = fmul fast float %4531, %4527
  %4534 = fmul fast float %4532, %4527
  %4535 = fadd fast float %4533, 5.000000e-01
  %4536 = fadd fast float %4534, 5.000000e-01
  %4537 = fmul fast float %4498, %4322
  %4538 = fmul fast float %4499, %4323
  %4539 = fmul fast float %4500, %4324
  %4540 = fmul fast float %4535, 2.000000e+00
  %4541 = fadd fast float %4540, -1.000000e+00
  %4542 = fmul fast float %4536, 2.000000e+00
  %4543 = fadd fast float %4542, -1.000000e+00
  %4544 = fadd fast float %4541, %4543
  %4545 = fmul fast float %4544, 5.000000e-01
  %4546 = fsub fast float %4541, %4543
  %4547 = fmul fast float %4546, 5.000000e-01
  %4548 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4549 = fsub fast float 1.000000e+00, %4548
  %4550 = call float @dx.op.unary.f32(i32 6, float %4547)  ; FAbs(value)
  %4551 = fsub fast float %4549, %4550
  %4552 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4547, float %4551, float %4545, float %4547, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = call float @dx.op.unary.f32(i32 25, float %4552)  ; Rsqrt(value)
  %4554 = fmul fast float %4545, %4553
  %4555 = fmul fast float %4547, %4553
  %4556 = fmul fast float %4553, %4551
  %4557 = fmul fast float %4556, %4288
  %4558 = fmul fast float %4556, %4289
  %4559 = fmul fast float %4556, %4290
  %4560 = fmul fast float %4554, %4310
  %4561 = fmul fast float %4554, %4311
  %4562 = fmul fast float %4554, %4312
  %4563 = fadd fast float %4560, %4557
  %4564 = fadd fast float %4561, %4558
  %4565 = fadd fast float %4562, %4559
  %4566 = fmul fast float %4555, %4316
  %4567 = fmul fast float %4555, %4317
  %4568 = fmul fast float %4555, %4318
  %4569 = fadd fast float %4563, %4566
  %4570 = fadd fast float %4564, %4567
  %4571 = fadd fast float %4565, %4568
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4569, float %4570, float %4571, float %4569, float %4570, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4569, %4573
  %4575 = fmul fast float %4570, %4573
  %4576 = fmul fast float %4571, %4573
  %4577 = icmp ne i32 %4493, 0
  %4578 = select i1 %4577, float 1.000000e+00, float 0.000000e+00
  %4579 = fmul fast float %4483, %4578
  %4580 = and i32 %4413, 1
  %4581 = icmp eq i32 %4580, 0
  br i1 %4581, label %4582, label %4586

; <label>:4582                                    ; preds = %4491
  %4583 = fsub fast float %4574, %4270
  %4584 = fsub fast float %4575, %4271
  %4585 = fsub fast float %4576, %4272
  br label %4586

; <label>:4586                                    ; preds = %4582, %4491
  %4587 = phi float [ %4583, %4582 ], [ %4574, %4491 ]
  %4588 = phi float [ %4584, %4582 ], [ %4575, %4491 ]
  %4589 = phi float [ %4585, %4582 ], [ %4576, %4491 ]
  %4590 = fmul float %4589, %4579
  %4591 = fmul float %4588, %4579
  %4592 = fmul float %4587, %4579
  %4593 = fadd fast float %4592, %4270
  %4594 = fadd fast float %4591, %4271
  %4595 = fadd fast float %4590, %4272
  %4596 = icmp ne i32 %4492, 0
  %4597 = select i1 %4596, float 1.000000e+00, float 0.000000e+00
  %4598 = fmul fast float %4483, %4597
  %4599 = fsub fast float %4537, %4277
  %4600 = fsub fast float %4538, %4278
  %4601 = fsub fast float %4539, %4279
  %4602 = fmul fast float %4599, %4598
  %4603 = fmul fast float %4600, %4598
  %4604 = fmul fast float %4601, %4598
  %4605 = fadd fast float %4602, %4277
  %4606 = fadd fast float %4603, %4278
  %4607 = fadd fast float %4604, %4279
  %4608 = fsub fast float %4510, %4276
  %4609 = fmul fast float %4608, %4598
  %4610 = fadd fast float %4609, %4276
  %4611 = fmul fast float %4598, %4266
  %4612 = fsub fast float %4266, %4611
  %4613 = fmul fast float %4598, %4265
  %4614 = fsub fast float %4265, %4613
  %4615 = bitcast float %4331 to i32
  %4616 = fadd fast float %4483, %4275
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fsub fast float %4530, %4274
  %4619 = fmul fast float %4618, %4579
  %4620 = fadd fast float %4619, %4274
  %4621 = fsub fast float %4516, %4273
  %4622 = fmul fast float %4621, %4579
  %4623 = fadd fast float %4622, %4273
  br i1 %4581, label %4632, label %4624

; <label>:4624                                    ; preds = %4586
  %4625 = and i32 %4413, 32768
  %4626 = icmp eq i32 %4625, 0
  br i1 %4626, label %4642, label %4627

; <label>:4627                                    ; preds = %4624
  %4628 = fmul fast float %4579, 1.270000e+02
  %4629 = fadd fast float %4628, %4262
  %4630 = fadd fast float %4628, %4263
  %4631 = fadd fast float %4628, %4264
  br label %4642

; <label>:4632                                    ; preds = %4586
  %4633 = fsub fast float 1.270000e+02, %4262
  %4634 = fsub fast float 1.270000e+02, %4263
  %4635 = fsub fast float 1.270000e+02, %4264
  %4636 = fmul fast float %4579, %4633
  %4637 = fmul fast float %4579, %4634
  %4638 = fmul fast float %4579, %4635
  %4639 = fadd fast float %4636, %4262
  %4640 = fadd fast float %4637, %4263
  %4641 = fadd fast float %4638, %4264
  br label %4642

; <label>:4642                                    ; preds = %4632, %4627, %4624
  %4643 = phi float [ %4629, %4627 ], [ %4262, %4624 ], [ %4639, %4632 ]
  %4644 = phi float [ %4630, %4627 ], [ %4263, %4624 ], [ %4640, %4632 ]
  %4645 = phi float [ %4631, %4627 ], [ %4264, %4624 ], [ %4641, %4632 ]
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4537, float %4538, float %4539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.CBufRet.f32 %4647, 1
  %4650 = fmul fast float %4649, %4646
  %4651 = fadd fast float %4650, %4648
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = bitcast float %4325 to i32
  %4654 = and i32 %4653, 65535
  %4655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4654)  ; LegacyF16ToF32(value)
  %4656 = lshr i32 %4653, 16
  %4657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4656)  ; LegacyF16ToF32(value)
  %4658 = fcmp fast oge float %4655, 0.000000e+00
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = select i1 %4658, float %4655, float %4660
  %4662 = fadd fast float %4661, %4657
  %4663 = fsub fast float %4652, %4261
  %4664 = fmul fast float %4663, %4483
  %4665 = fadd fast float %4664, %4261
  %4666 = fmul fast float %4662, %4483
  %4667 = call float @dx.op.binary.f32(i32 35, float %4260, float %4666)  ; FMax(a,b)
  %4668 = and i32 %4413, 16
  %4669 = icmp eq i32 %4668, 0
  br i1 %4669, label %4691, label %4670

; <label>:4670                                    ; preds = %4642
  %4671 = add i32 %4328, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %4496, float %4424, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float %4429, float %4431, float undef, float %4433, float %4435, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4677 = and i32 %4615, 65535
  %4678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4677)  ; LegacyF16ToF32(value)
  %4679 = fmul fast float %4674, %4322
  %4680 = fmul fast float %4675, %4323
  %4681 = fmul fast float %4676, %4324
  %4682 = and i32 %4413, 16384
  %4683 = icmp ne i32 %4682, 0
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4686 = select i1 %4683, float %4685, float 1.000000e+00
  %4687 = fmul fast float %4686, %4678
  %4688 = fmul fast float %4679, %4687
  %4689 = fmul fast float %4680, %4687
  %4690 = fmul fast float %4681, %4687
  br label %4691

; <label>:4691                                    ; preds = %4670, %4642
  %4692 = phi float [ %4688, %4670 ], [ 0.000000e+00, %4642 ]
  %4693 = phi float [ %4689, %4670 ], [ 0.000000e+00, %4642 ]
  %4694 = phi float [ %4690, %4670 ], [ 0.000000e+00, %4642 ]
  %4695 = fsub fast float %4692, %4267
  %4696 = fsub fast float %4693, %4268
  %4697 = fsub fast float %4694, %4269
  %4698 = fmul fast float %4695, %4483
  %4699 = fmul fast float %4696, %4483
  %4700 = fmul fast float %4697, %4483
  %4701 = fadd fast float %4698, %4267
  %4702 = fadd fast float %4699, %4268
  %4703 = fadd fast float %4700, %4269
  br label %4381

; <label>:4704                                    ; preds = %4381
  br label %4705

; <label>:4705                                    ; preds = %4704, %4194
  %4706 = phi float [ 0.000000e+00, %4194 ], [ %4382, %4704 ]
  %4707 = phi float [ %4138, %4194 ], [ %4383, %4704 ]
  %4708 = phi float [ %4117, %4194 ], [ %4384, %4704 ]
  %4709 = phi float [ %4109, %4194 ], [ %4385, %4704 ]
  %4710 = phi float [ %4110, %4194 ], [ %4386, %4704 ]
  %4711 = phi float [ %4111, %4194 ], [ %4387, %4704 ]
  %4712 = phi float [ %4116, %4194 ], [ %4388, %4704 ]
  %4713 = phi float [ 0.000000e+00, %4194 ], [ %4389, %4704 ]
  %4714 = phi float [ %4160, %4194 ], [ %4390, %4704 ]
  %4715 = phi float [ %4162, %4194 ], [ %4391, %4704 ]
  %4716 = phi float [ %4164, %4194 ], [ %4392, %4704 ]
  %4717 = phi float [ %4190, %4194 ], [ %4393, %4704 ]
  %4718 = phi float [ %4191, %4194 ], [ %4394, %4704 ]
  %4719 = phi float [ %4192, %4194 ], [ %4395, %4704 ]
  %4720 = phi float [ %4114, %4194 ], [ %4396, %4704 ]
  %4721 = phi float [ %4113, %4194 ], [ %4397, %4704 ]
  %4722 = phi float [ 0.000000e+00, %4194 ], [ %4398, %4704 ]
  %4723 = phi float [ %4112, %4194 ], [ %4399, %4704 ]
  %4724 = phi float [ %4145, %4194 ], [ %4400, %4704 ]
  %4725 = phi float [ %4146, %4194 ], [ %4401, %4704 ]
  %4726 = phi float [ %4147, %4194 ], [ %4402, %4704 ]
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %4717, float %4718, float %4719)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 25, float %4727)  ; Rsqrt(value)
  %4729 = fmul fast float %4728, %4717
  %4730 = fmul fast float %4728, %4718
  %4731 = fmul fast float %4728, %4719
  %4732 = fadd fast float %4722, %1364
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4729, float %4730, float %4731)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = call float @dx.op.unary.f32(i32 25, float %4734)  ; Rsqrt(value)
  %4736 = fmul fast float %4735, %4729
  %4737 = fmul fast float %4735, %4730
  %4738 = fmul fast float %4735, %4731
  br label %4739

; <label>:4739                                    ; preds = %4705, %4100
  %4740 = phi float [ %4709, %4705 ], [ %4109, %4100 ]
  %4741 = phi float [ %4710, %4705 ], [ %4110, %4100 ]
  %4742 = phi float [ %4711, %4705 ], [ %4111, %4100 ]
  %4743 = phi float [ %4736, %4705 ], [ %4190, %4100 ]
  %4744 = phi float [ %4737, %4705 ], [ %4191, %4100 ]
  %4745 = phi float [ %4738, %4705 ], [ %4192, %4100 ]
  %4746 = phi float [ %4724, %4705 ], [ %4145, %4100 ]
  %4747 = phi float [ %4725, %4705 ], [ %4146, %4100 ]
  %4748 = phi float [ %4726, %4705 ], [ %4147, %4100 ]
  %4749 = phi float [ %4714, %4705 ], [ %4160, %4100 ]
  %4750 = phi float [ %4715, %4705 ], [ %4162, %4100 ]
  %4751 = phi float [ %4716, %4705 ], [ %4164, %4100 ]
  %4752 = phi float [ %4723, %4705 ], [ %4112, %4100 ]
  %4753 = phi float [ %4733, %4705 ], [ %1364, %4100 ]
  %4754 = phi float [ %4721, %4705 ], [ %4113, %4100 ]
  %4755 = phi float [ %4720, %4705 ], [ %4114, %4100 ]
  %4756 = phi float [ %4713, %4705 ], [ 0.000000e+00, %4100 ]
  %4757 = phi float [ %4712, %4705 ], [ %4116, %4100 ]
  %4758 = phi float [ %4706, %4705 ], [ 0.000000e+00, %4100 ]
  %4759 = phi float [ %4707, %4705 ], [ %4138, %4100 ]
  %4760 = phi float [ %4708, %4705 ], [ %4117, %4100 ]
  %4761 = fadd fast float %4752, 0xBFB99999A0000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4762, 0x3FF1C71C80000000
  %4764 = call float @dx.op.binary.f32(i32 36, float %4752, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4765 = fsub fast float 1.000000e+00, %4763
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fmul fast float %4766, %4746
  %4768 = fmul fast float %4766, %4747
  %4769 = fmul fast float %4766, %4748
  %4770 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4773 = fmul fast float %4763, %4746
  %4774 = fmul fast float %4763, %4747
  %4775 = fmul fast float %4763, %4748
  %4776 = fadd fast float %4773, %4764
  %4777 = fadd fast float %4774, %4764
  %4778 = fadd fast float %4775, %4764
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4783 = call float @dx.op.binary.f32(i32 36, float %4740, float 1.270000e+02)  ; FMin(a,b)
  %4784 = call float @dx.op.binary.f32(i32 36, float %4741, float 1.270000e+02)  ; FMin(a,b)
  %4785 = call float @dx.op.binary.f32(i32 36, float %4742, float 1.270000e+02)  ; FMin(a,b)
  %4786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.i32 %4786, 3
  %4788 = and i32 %4787, 8
  %4789 = icmp ne i32 %4788, 0
  %4790 = call float @dx.op.binary.f32(i32 35, float %4770, float %4746)  ; FMax(a,b)
  %4791 = call float @dx.op.binary.f32(i32 35, float %4771, float %4746)  ; FMax(a,b)
  %4792 = call float @dx.op.binary.f32(i32 35, float %4772, float %4746)  ; FMax(a,b)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = select i1 %269, float %4746, float %4770
  %4795 = select i1 %269, float %4793, float %4771
  %4796 = select i1 %269, float 1.000000e+00, float %4772
  %4797 = select i1 %4789, float %4790, float %4794
  %4798 = select i1 %4789, float %4791, float %4795
  %4799 = select i1 %4789, float %4792, float %4796
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4804 = fadd fast float %4801, %197
  %4805 = fadd fast float %4802, %198
  %4806 = fadd fast float %4803, %199
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.CBufRet.f32 %4807, 1
  %4810 = fsub fast float %4804, %4808
  %4811 = fsub fast float %4805, %4809
  %4812 = fmul fast float %4810, %4810
  %4813 = fmul fast float %4811, %4811
  %4814 = fadd fast float %4812, %4813
  %4815 = call float @dx.op.unary.f32(i32 24, float %4814)  ; Sqrt(value)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4817 = fcmp fast olt float %4815, %4816
  br i1 %4817, label %4818, label %4885

; <label>:4818                                    ; preds = %4739
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4826 = extractvalue %dx.types.CBufRet.f32 %4821, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4823, 1
  %4828 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4829 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4830 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4831 = fadd fast float %4828, %4804
  %4832 = fadd fast float %4829, %4805
  %4833 = fadd fast float %4830, %4806
  %4834 = fmul fast float %4831, %4820
  %4835 = call float @dx.op.tertiary.f32(i32 46, float %4832, float %4822, float %4834)  ; FMad(a,b,c)
  %4836 = call float @dx.op.tertiary.f32(i32 46, float %4833, float %4824, float %4835)  ; FMad(a,b,c)
  %4837 = fmul fast float %4831, %4825
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4832, float %4826, float %4837)  ; FMad(a,b,c)
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4833, float %4827, float %4838)  ; FMad(a,b,c)
  %4840 = fsub fast float %4836, %4828
  %4841 = fsub fast float %4839, %4829
  %4842 = fsub fast float %4840, %4808
  %4843 = fadd fast float %4842, %4816
  %4844 = fsub fast float %4841, %4809
  %4845 = fadd fast float %4844, %4816
  %4846 = extractvalue %dx.types.CBufRet.f32 %4807, 3
  %4847 = fmul fast float %4843, %4846
  %4848 = fmul fast float %4845, %4846
  %4849 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4851 = fsub fast float 1.000000e+00, %4849
  %4852 = fsub fast float 1.000000e+00, %4850
  %4853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4851, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = fcmp fast ugt float %4854, 0.000000e+00
  br i1 %4855, label %4856, label %5159

; <label>:4856                                    ; preds = %4818
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 2
  %4859 = fmul fast float %4858, %4854
  %4860 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4861 = fadd fast float %4860, %4859
  %4862 = extractvalue %dx.types.CBufRet.f32 %4823, 2
  %4863 = fadd fast float %4861, %4830
  %4864 = fmul fast float %4836, %4824
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4839, float %4827, float %4864)  ; FMad(a,b,c)
  %4866 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4862, float %4865)  ; FMad(a,b,c)
  %4867 = fsub fast float %4866, %4830
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4870 = fsub fast float %4867, %4869
  %4871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4851, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4872 = extractvalue %dx.types.ResRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.ResRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.ResRet.f32 %4871, 2
  %4875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4851, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4876 = extractvalue %dx.types.ResRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.ResRet.f32 %4875, 1
  %4878 = extractvalue %dx.types.ResRet.f32 %4875, 2
  %4879 = fadd fast float %4876, %4872
  %4880 = fmul fast float %4879, 0x3F847AE140000000
  %4881 = fadd fast float %4877, %4873
  %4882 = fmul fast float %4881, 0x3F847AE140000000
  %4883 = fadd fast float %4878, %4874
  %4884 = fmul fast float %4883, 0x3F847AE140000000
  br label %5159

; <label>:4885                                    ; preds = %4739
  %4886 = and i32 %248, 1
  %4887 = icmp eq i32 %4886, 0
  br i1 %4887, label %5159, label %4888

; <label>:4888                                    ; preds = %4885
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4899 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4900 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4901 = fadd fast float %4898, %4804
  %4902 = fadd fast float %4899, %4805
  %4903 = fadd fast float %4900, %4806
  %4904 = fmul fast float %4901, %4890
  %4905 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4892, float %4904)  ; FMad(a,b,c)
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4894, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4901, %4895
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4896, float %4907)  ; FMad(a,b,c)
  %4909 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4897, float %4908)  ; FMad(a,b,c)
  %4910 = fsub fast float %4906, %4898
  %4911 = fsub fast float %4909, %4899
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %4916 = extractvalue %dx.types.CBufRet.f32 %4912, 3
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 3
  %4919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.i32 %4919, 0
  %4921 = extractvalue %dx.types.CBufRet.i32 %4919, 1
  %4922 = udiv i32 %4921, %4920
  %4923 = fsub fast float %4910, %4913
  %4924 = fsub fast float %4911, %4914
  %4925 = call float @dx.op.binary.f32(i32 35, float %4923, float 0.000000e+00)  ; FMax(a,b)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4924, float 0.000000e+00)  ; FMax(a,b)
  %4927 = call float @dx.op.binary.f32(i32 36, float %4925, float %4915)  ; FMin(a,b)
  %4928 = call float @dx.op.binary.f32(i32 36, float %4926, float %4916)  ; FMin(a,b)
  %4929 = add i32 %4920, -1
  %4930 = add i32 %4922, -1
  %4931 = fmul fast float %4927, %4918
  %4932 = fmul fast float %4928, %4918
  %4933 = fptoui float %4931 to i32
  %4934 = fptoui float %4932 to i32
  %4935 = call i32 @dx.op.binary.i32(i32 40, i32 %4933, i32 %4929)  ; UMin(a,b)
  %4936 = call i32 @dx.op.binary.i32(i32 40, i32 %4934, i32 %4930)  ; UMin(a,b)
  %4937 = mul i32 %4936, %4920
  %4938 = add i32 %4937, %4935
  %4939 = shl i32 %4938, 2
  %4940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4941 = extractvalue %dx.types.ResRet.i32 %4940, 0
  %4942 = icmp eq i32 %4941, -1
  br i1 %4942, label %5159, label %4943

; <label>:4943                                    ; preds = %4888
  %4944 = mul i32 %4941, 148
  %4945 = add i32 %4944, 4
  %4946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4945, i32 undef)  ; BufferLoad(srv,index,wot)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = add i32 %4944, 8
  %4949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4948, i32 undef)  ; BufferLoad(srv,index,wot)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = add i32 %4944, 36
  %4952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4951, i32 undef)  ; BufferLoad(srv,index,wot)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = add i32 %4944, 60
  %4955 = add i32 %4944, 92
  %4956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4955, i32 undef)  ; BufferLoad(srv,index,wot)
  %4957 = extractvalue %dx.types.ResRet.i32 %4956, 0
  %4958 = add i32 %4944, 116
  %4959 = fsub fast float %4910, %4947
  %4960 = fsub fast float %4911, %4950
  %4961 = fmul fast float %4918, %4959
  %4962 = fmul fast float %4918, %4960
  %4963 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 2
  %4968 = call float @dx.op.unary.f32(i32 83, float %4963)  ; DerivCoarseX(value)
  %4969 = call float @dx.op.unary.f32(i32 83, float %4965)  ; DerivCoarseX(value)
  %4970 = call float @dx.op.unary.f32(i32 84, float %4963)  ; DerivCoarseY(value)
  %4971 = call float @dx.op.unary.f32(i32 84, float %4965)  ; DerivCoarseY(value)
  %4972 = fmul fast float %4968, %4967
  %4973 = fmul fast float %4969, %4967
  %4974 = fmul fast float %4970, %4967
  %4975 = fmul fast float %4971, %4967
  %4976 = call float @dx.op.dot2.f32(i32 54, float %4974, float %4975, float %4974, float %4975)  ; Dot2(ax,ay,bx,by)
  %4977 = call float @dx.op.dot2.f32(i32 54, float %4972, float %4973, float %4972, float %4973)  ; Dot2(ax,ay,bx,by)
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float %4976)  ; FMax(a,b)
  %4979 = call float @dx.op.unary.f32(i32 23, float %4978)  ; Log(value)
  %4980 = fmul fast float %4979, 5.000000e-01
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4983 = fadd fast float %4982, %4980
  %4984 = call float @dx.op.binary.f32(i32 35, float %4983, float 0.000000e+00)  ; FMax(a,b)
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 3
  %4987 = fadd fast float %4986, %4984
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4990 = fadd fast float %4987, %4989
  %4991 = add i32 %4957, 0
  %4992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4991, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4993 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4992, i32 0)  ; GetDimensions(handle,mipLevel)
  %4994 = extractvalue %dx.types.Dimensions %4993, 0
  %4995 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4994)  ; FirstbitLo(value)
  %4996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.i32 %4996, 1
  %4998 = sub nsw i32 %4997, %4995
  %4999 = sitofp i32 %4998 to float
  %5000 = fsub fast float %4990, %4999
  %5001 = call float @dx.op.binary.f32(i32 35, float %5000, float 0.000000e+00)  ; FMax(a,b)
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4992, %dx.types.Handle %48, float %4963, float %4965, float %4953, float undef, i32 0, i32 0, i32 undef, float %5001)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = fcmp ule float %5003, 0x3FE0101020000000
  %5005 = extractvalue %dx.types.CBufRet.i32 %4996, 0
  %5006 = and i32 %5005, 128
  %5007 = icmp ne i32 %5006, 0
  %5008 = and i1 %5004, %5007
  br i1 %5008, label %5159, label %5009

; <label>:5009                                    ; preds = %4943
  %5010 = add i32 %4944, 20
  %5011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5010, i32 undef)  ; BufferLoad(srv,index,wot)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 0
  %5013 = add i32 %4944, 24
  %5014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5013, i32 undef)  ; BufferLoad(srv,index,wot)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = add i32 %4944, 40
  %5017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5016, i32 undef)  ; BufferLoad(srv,index,wot)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = add i32 %4944, 96
  %5020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5019, i32 undef)  ; BufferLoad(srv,index,wot)
  %5021 = extractvalue %dx.types.ResRet.i32 %5020, 0
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 2
  %5024 = fmul fast float %5023, %4963
  %5025 = fmul fast float %5023, %4965
  %5026 = extractvalue %dx.types.CBufRet.f32 %5022, 3
  %5027 = fadd fast float %5024, %5026
  %5028 = fadd fast float %5025, %5026
  %5029 = add i32 %5021, 0
  %5030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5031 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5030, i32 0)  ; GetDimensions(handle,mipLevel)
  %5032 = extractvalue %dx.types.Dimensions %5031, 0
  %5033 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5032)  ; FirstbitLo(value)
  %5034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.i32 %5034, 1
  %5036 = sub nsw i32 %5035, %5033
  %5037 = sitofp i32 %5036 to float
  %5038 = fsub fast float %4987, %5037
  %5039 = call float @dx.op.binary.f32(i32 35, float %5038, float 0.000000e+00)  ; FMax(a,b)
  %5040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5030, %dx.types.Handle %48, float %5027, float %5028, float %5018, float undef, i32 0, i32 0, i32 undef, float %5039)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = fmul fast float %5041, %5012
  %5043 = fadd fast float %5042, %5015
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %5047 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5052 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5053 = fadd fast float %5049, %4910
  %5054 = fadd fast float %5051, %4911
  %5055 = fadd fast float %5043, %5052
  %5056 = fmul fast float %5053, %5045
  %5057 = call float @dx.op.tertiary.f32(i32 46, float %5054, float %5046, float %5056)  ; FMad(a,b,c)
  %5058 = call float @dx.op.tertiary.f32(i32 46, float %5055, float %5047, float %5057)  ; FMad(a,b,c)
  %5059 = fsub fast float %5058, %5052
  %5060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.f32 %5060, 2
  %5062 = fsub fast float %5059, %5061
  %5063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.i32 %5063, 0
  %5065 = call i32 @dx.op.binary.i32(i32 40, i32 %4941, i32 %5064)  ; UMin(a,b)
  %5066 = mul i32 %5065, 36
  %5067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5066, i32 undef)  ; BufferLoad(srv,index,wot)
  %5068 = extractvalue %dx.types.ResRet.i32 %5067, 0
  %5069 = add i32 %5066, 4
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 0
  %5072 = fmul fast float %5071, %4963
  %5073 = fmul fast float %5071, %4965
  %5074 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5075 = fadd fast float %5072, %5074
  %5076 = fadd fast float %5073, %5074
  %5077 = icmp eq i32 %5068, 0
  br i1 %5077, label %5146, label %5078

; <label>:5078                                    ; preds = %5009
  br label %5079

; <label>:5079                                    ; preds = %5136, %5078
  %5080 = phi float [ %5137, %5136 ], [ 0.000000e+00, %5078 ]
  %5081 = phi float [ %5138, %5136 ], [ 0.000000e+00, %5078 ]
  %5082 = phi float [ %5139, %5136 ], [ 0.000000e+00, %5078 ]
  %5083 = phi float [ %5140, %5136 ], [ 0.000000e+00, %5078 ]
  %5084 = phi float [ %5141, %5136 ], [ 0.000000e+00, %5078 ]
  %5085 = phi float [ %5142, %5136 ], [ 0.000000e+00, %5078 ]
  %5086 = phi i32 [ %5143, %5136 ], [ 0, %5078 ]
  %5087 = shl i32 %5086, 2
  %5088 = add i32 %4954, %5087
  %5089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5088, i32 undef)  ; BufferLoad(srv,index,wot)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = add i32 %4958, %5087
  %5092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.i32 %5092, 0
  %5094 = add i32 %5093, 0
  %5095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5094, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5096 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5095, i32 0)  ; GetDimensions(handle,mipLevel)
  %5097 = extractvalue %dx.types.Dimensions %5096, 0
  %5098 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5097)  ; FirstbitLo(value)
  %5099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.i32 %5099, 1
  %5101 = sub nsw i32 %5100, %5098
  %5102 = sitofp i32 %5101 to float
  %5103 = fsub fast float %4987, %5102
  %5104 = call float @dx.op.binary.f32(i32 35, float %5103, float 0.000000e+00)  ; FMax(a,b)
  %5105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5095, %dx.types.Handle %48, float %5075, float %5076, float %5090, float undef, i32 0, i32 0, i32 undef, float %5104)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = fcmp fast ogt float %5106, 0.000000e+00
  br i1 %5107, label %5108, label %5136

; <label>:5108                                    ; preds = %5079
  %5109 = add i32 %5069, %5087
  %5110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5109, i32 undef)  ; BufferLoad(srv,index,wot)
  %5111 = extractvalue %dx.types.ResRet.i32 %5110, 0
  %5112 = and i32 %5111, 32767
  %5113 = mul nuw nsw i32 %5112, 928
  %5114 = add nuw nsw i32 %5113, 48
  %5115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5114, i32 undef)  ; BufferLoad(srv,index,wot)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.ResRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.ResRet.f32 %5115, 2
  %5119 = add nuw nsw i32 %5113, 60
  %5120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5119, i32 undef)  ; BufferLoad(srv,index,wot)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = extractvalue %dx.types.ResRet.f32 %5120, 1
  %5123 = extractvalue %dx.types.ResRet.f32 %5120, 2
  %5124 = fmul fast float %5116, %5106
  %5125 = fmul fast float %5117, %5106
  %5126 = fmul fast float %5118, %5106
  %5127 = fadd fast float %5124, %5080
  %5128 = fadd fast float %5125, %5081
  %5129 = fadd fast float %5126, %5082
  %5130 = fmul fast float %5121, %5106
  %5131 = fmul fast float %5122, %5106
  %5132 = fmul fast float %5123, %5106
  %5133 = fadd fast float %5130, %5083
  %5134 = fadd fast float %5131, %5084
  %5135 = fadd fast float %5132, %5085
  br label %5136

; <label>:5136                                    ; preds = %5108, %5079
  %5137 = phi float [ %5127, %5108 ], [ %5080, %5079 ]
  %5138 = phi float [ %5128, %5108 ], [ %5081, %5079 ]
  %5139 = phi float [ %5129, %5108 ], [ %5082, %5079 ]
  %5140 = phi float [ %5133, %5108 ], [ %5083, %5079 ]
  %5141 = phi float [ %5134, %5108 ], [ %5084, %5079 ]
  %5142 = phi float [ %5135, %5108 ], [ %5085, %5079 ]
  %5143 = add nuw i32 %5086, 1
  %5144 = icmp eq i32 %5143, %5068
  br i1 %5144, label %5145, label %5079

; <label>:5145                                    ; preds = %5136
  br label %5146

; <label>:5146                                    ; preds = %5145, %5009
  %5147 = phi float [ 0.000000e+00, %5009 ], [ %5137, %5145 ]
  %5148 = phi float [ 0.000000e+00, %5009 ], [ %5138, %5145 ]
  %5149 = phi float [ 0.000000e+00, %5009 ], [ %5139, %5145 ]
  %5150 = phi float [ 0.000000e+00, %5009 ], [ %5140, %5145 ]
  %5151 = phi float [ 0.000000e+00, %5009 ], [ %5141, %5145 ]
  %5152 = phi float [ 0.000000e+00, %5009 ], [ %5142, %5145 ]
  %5153 = fadd fast float %5150, %5147
  %5154 = fmul fast float %5153, 0x3F847AE140000000
  %5155 = fadd fast float %5151, %5148
  %5156 = fmul fast float %5155, 0x3F847AE140000000
  %5157 = fadd fast float %5152, %5149
  %5158 = fmul fast float %5157, 0x3F847AE140000000
  br label %5159

; <label>:5159                                    ; preds = %5146, %4943, %4888, %4885, %4856, %4818
  %5160 = phi float [ %4870, %4856 ], [ -1.310720e+05, %4818 ], [ %5062, %5146 ], [ -1.310720e+05, %4888 ], [ -1.310720e+05, %4943 ], [ -1.310720e+05, %4885 ]
  %5161 = phi float [ %4880, %4856 ], [ 0.000000e+00, %4818 ], [ %5154, %5146 ], [ 0.000000e+00, %4888 ], [ 0.000000e+00, %4943 ], [ 0.000000e+00, %4885 ]
  %5162 = phi float [ %4882, %4856 ], [ 0.000000e+00, %4818 ], [ %5156, %5146 ], [ 0.000000e+00, %4888 ], [ 0.000000e+00, %4943 ], [ 0.000000e+00, %4885 ]
  %5163 = phi float [ %4884, %4856 ], [ 0.000000e+00, %4818 ], [ %5158, %5146 ], [ 0.000000e+00, %4888 ], [ 0.000000e+00, %4943 ], [ 0.000000e+00, %4885 ]
  %5164 = phi i1 [ true, %4856 ], [ false, %4818 ], [ true, %5146 ], [ false, %4888 ], [ false, %4943 ], [ false, %4885 ]
  %5165 = and i32 %248, 3
  %5166 = icmp eq i32 %5165, 1
  %5167 = select i1 %5166, float 1.000000e+00, float 0.000000e+00
  %5168 = fsub fast float %5160, %199
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = select i1 %5164, float %5169, float 1.000000e+00
  %5171 = fmul fast float %5170, %5167
  %5172 = icmp eq i32 %5165, 3
  %5173 = select i1 %5172, float 1.000000e+00, float %5171
  %5174 = call float @dx.op.binary.f32(i32 35, float %4758, float %5173)  ; FMax(a,b)
  %5175 = fcmp fast olt float %5173, 1.000000e+00
  %5176 = fcmp uge float %74, 0.000000e+00
  %5177 = and i1 %5176, %5175
  br i1 %5177, label %5178, label %5188

; <label>:5178                                    ; preds = %5159
  %5179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.ResRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5179, 2
  %5183 = fadd fast float %5180, %5174
  %5184 = fcmp ule float %73, 0.000000e+00
  %5185 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = select i1 %5184, float %5185, float 1.000000e+00
  %5187 = fmul fast float %5186, %5182
  br label %5188

; <label>:5188                                    ; preds = %5178, %5159
  %5189 = phi float [ %5183, %5178 ], [ %5174, %5159 ]
  %5190 = phi float [ %5181, %5178 ], [ 0.000000e+00, %5159 ]
  %5191 = phi float [ %5187, %5178 ], [ 0.000000e+00, %5159 ]
  %5192 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5195 = fcmp fast une float %5193, 0.000000e+00
  %5196 = fcmp fast une float %5194, 0.000000e+00
  %5197 = or i1 %5195, %5196
  br i1 %5197, label %5198, label %5757

; <label>:5198                                    ; preds = %5188
  br i1 %5195, label %5199, label %5472

; <label>:5199                                    ; preds = %5198
  %5200 = call float @dx.op.unary.f32(i32 23, float %4755)  ; Log(value)
  %5201 = fmul fast float %5200, 4.000000e+00
  %5202 = call float @dx.op.unary.f32(i32 21, float %5201)  ; Exp(value)
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = fmul fast float %5204, %60
  %5206 = fmul fast float %5204, %61
  %5207 = fmul fast float %5204, %62
  %5208 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5209 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5210 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5211 = call float @dx.op.unary.f32(i32 23, float %5208)  ; Log(value)
  %5212 = call float @dx.op.unary.f32(i32 23, float %5209)  ; Log(value)
  %5213 = call float @dx.op.unary.f32(i32 23, float %5210)  ; Log(value)
  %5214 = fmul fast float %5211, 4.000000e+00
  %5215 = fmul fast float %5212, 4.000000e+00
  %5216 = fmul fast float %5213, 4.000000e+00
  %5217 = call float @dx.op.unary.f32(i32 21, float %5214)  ; Exp(value)
  %5218 = call float @dx.op.unary.f32(i32 21, float %5215)  ; Exp(value)
  %5219 = call float @dx.op.unary.f32(i32 21, float %5216)  ; Exp(value)
  %5220 = fadd fast float %5218, %5217
  %5221 = fadd fast float %5220, %5219
  %5222 = fdiv fast float 1.000000e+00, %5221
  %5223 = fmul fast float %5222, %5217
  %5224 = fcmp fast ogt float %70, 0.000000e+00
  %5225 = fcmp fast ogt float %71, 0.000000e+00
  %5226 = fcmp fast ogt float %72, 0.000000e+00
  %5227 = fcmp fast olt float %70, 0.000000e+00
  %5228 = fcmp fast olt float %71, 0.000000e+00
  %5229 = fcmp fast olt float %72, 0.000000e+00
  %5230 = zext i1 %5224 to i32
  %5231 = zext i1 %5225 to i32
  %5232 = zext i1 %5226 to i32
  %5233 = zext i1 %5227 to i32
  %5234 = zext i1 %5228 to i32
  %5235 = zext i1 %5229 to i32
  %5236 = sub nsw i32 %5230, %5233
  %5237 = sub nsw i32 %5231, %5234
  %5238 = sub nsw i32 %5232, %5235
  %5239 = call float @dx.op.unary.f32(i32 83, float %5205)  ; DerivCoarseX(value)
  %5240 = call float @dx.op.unary.f32(i32 83, float %5206)  ; DerivCoarseX(value)
  %5241 = call float @dx.op.unary.f32(i32 83, float %5207)  ; DerivCoarseX(value)
  %5242 = call float @dx.op.unary.f32(i32 84, float %5205)  ; DerivCoarseY(value)
  %5243 = call float @dx.op.unary.f32(i32 84, float %5206)  ; DerivCoarseY(value)
  %5244 = call float @dx.op.unary.f32(i32 84, float %5207)  ; DerivCoarseY(value)
  %5245 = fcmp fast ole float %280, %5223
  %5246 = fmul fast float %5222, %5220
  %5247 = fcmp fast ole float %280, %5246
  %5248 = select i1 %5247, float %5207, float %5205
  %5249 = select i1 %5247, float %5205, float %5206
  %5250 = select i1 %5245, float %5206, float %5248
  %5251 = select i1 %5245, float %5207, float %5249
  %5252 = select i1 %5247, float %5241, float %5239
  %5253 = select i1 %5247, float %5239, float %5240
  %5254 = select i1 %5245, float %5240, float %5252
  %5255 = select i1 %5245, float %5241, float %5253
  %5256 = select i1 %5247, float %5244, float %5242
  %5257 = select i1 %5247, float %5242, float %5243
  %5258 = select i1 %5245, float %5243, float %5256
  %5259 = select i1 %5245, float %5244, float %5257
  %5260 = call float @dx.op.unary.f32(i32 27, float %5250)  ; Round_ni(value)
  %5261 = call float @dx.op.unary.f32(i32 27, float %5251)  ; Round_ni(value)
  %5262 = fptosi float %5260 to i32
  %5263 = fptosi float %5261 to i32
  %5264 = xor i32 %5263, %5262
  %5265 = sitofp i32 %5264 to float
  %5266 = fptosi float %5265 to i32
  %5267 = sitofp i32 %5266 to float
  %5268 = fmul fast float %5267, 0x3FE3C6EF40000000
  %5269 = frem fast float %5260, 2.560000e+02
  %5270 = frem fast float %5261, 2.560000e+02
  %5271 = fptoui float %5269 to i32
  %5272 = fptoui float %5270 to i32
  %5273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5271, i32 %5272, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = fadd fast float %5274, %5268
  %5278 = fadd fast float %5275, %5268
  %5279 = fadd fast float %5276, %5268
  %5280 = call float @dx.op.unary.f32(i32 22, float %5277)  ; Frc(value)
  %5281 = call float @dx.op.unary.f32(i32 22, float %5278)  ; Frc(value)
  %5282 = call float @dx.op.unary.f32(i32 22, float %5279)  ; Frc(value)
  %5283 = fmul fast float %5282, 0x401921FB60000000
  %5284 = call float @dx.op.unary.f32(i32 13, float %5283)  ; Sin(value)
  %5285 = call float @dx.op.unary.f32(i32 12, float %5283)  ; Cos(value)
  %5286 = fsub fast float -0.000000e+00, %5285
  %5287 = fmul fast float %5285, %5250
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5284, float %5251, float %5287)  ; FMad(a,b,c)
  %5289 = fmul fast float %5284, %5250
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5251, float %5289)  ; FMad(a,b,c)
  %5291 = fadd fast float %5288, %5280
  %5292 = fadd fast float %5290, %5281
  %5293 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5294 = bitcast float %5293 to i32
  %5295 = icmp eq i32 %5294, 0
  br i1 %5295, label %5334, label %5296

; <label>:5296                                    ; preds = %5199
  %5297 = add i32 %5294, 0
  %5298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5299 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5298, %dx.types.Handle %107, float %5291, float %5292, float undef, float undef, i32 0, i32 0, i32 undef, float %5254, float %5255, float undef, float %5258, float %5259, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5304 = fsub fast float 1.000000e+00, %5193
  %5305 = call float @dx.op.binary.f32(i32 35, float %5304, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5306 = bitcast float %5193 to i32
  %5307 = sitofp i32 %5306 to float
  %5308 = fadd fast float %5307, 0xC1CFBF8940000000
  %5309 = fmul fast float %5303, %5308
  %5310 = fadd fast float %5309, 0x41CFBF8940000000
  %5311 = fptosi float %5310 to i32
  %5312 = bitcast i32 %5311 to float
  %5313 = bitcast float %5305 to i32
  %5314 = sitofp i32 %5313 to float
  %5315 = fadd fast float %5314, 0xC1CFBF8940000000
  %5316 = fmul fast float %5315, %5303
  %5317 = fadd fast float %5316, 0x41CFBF8940000000
  %5318 = fptosi float %5317 to i32
  %5319 = bitcast i32 %5318 to float
  %5320 = fmul fast float %5312, %5302
  %5321 = fmul fast float %5319, %5302
  %5322 = fsub fast float %5305, %5320
  %5323 = fadd fast float %5321, %5305
  %5324 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5326 = fsub fast float %5300, %5324
  %5327 = fsub fast float %5325, %5324
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, %5326
  %5332 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5333 = fcmp fast olt float %5332, 0x3F70101020000000
  br i1 %5333, label %5472, label %5334

; <label>:5334                                    ; preds = %5296, %5199
  %5335 = phi float [ %5332, %5296 ], [ %5193, %5199 ]
  %5336 = fmul fast float %5335, %5202
  %5337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.i32 %5337, 1
  %5339 = extractvalue %dx.types.CBufRet.i32 %5337, 0
  %5340 = add i32 %5339, 0
  %5341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5341, %dx.types.Handle %106, float %5291, float %5292, float undef, float undef, i32 0, i32 0, i32 undef, float %5254, float %5255, float undef, float %5258, float %5259, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.ResRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.ResRet.f32 %5342, 2
  %5346 = extractvalue %dx.types.ResRet.f32 %5342, 3
  %5347 = and i32 %5338, 255
  %5348 = uitofp i32 %5347 to float
  %5349 = lshr i32 %5338, 8
  %5350 = and i32 %5349, 255
  %5351 = uitofp i32 %5350 to float
  %5352 = fmul fast float %5346, %5348
  %5353 = fadd fast float %5352, %5351
  %5354 = fmul fast float %5353, 0x3F70101000000000
  %5355 = fadd fast float %5354, 0xBFB99999A0000000
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = fmul fast float %5356, 0x3FF1C71C80000000
  %5358 = call float @dx.op.binary.f32(i32 36, float %5354, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5359 = fsub fast float 1.000000e+00, %5357
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5360, %5343
  %5362 = fmul fast float %5360, %5344
  %5363 = fmul fast float %5360, %5345
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5367 = fmul fast float %5357, %5343
  %5368 = fmul fast float %5357, %5344
  %5369 = fmul fast float %5357, %5345
  %5370 = fadd fast float %5367, %5358
  %5371 = fadd fast float %5368, %5358
  %5372 = fadd fast float %5369, %5358
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5375 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.i32 %5376, 3
  %5378 = extractvalue %dx.types.CBufRet.i32 %5376, 2
  %5379 = add i32 %5378, 0
  %5380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5381 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5380, %dx.types.Handle %106, float %5291, float %5292, float undef, float undef, i32 0, i32 0, i32 undef, float %5254, float %5255, float undef, float %5258, float %5259, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  %5385 = extractvalue %dx.types.ResRet.f32 %5381, 3
  %5386 = and i32 %5377, 255
  %5387 = uitofp i32 %5386 to float
  %5388 = lshr i32 %5377, 8
  %5389 = and i32 %5388, 255
  %5390 = uitofp i32 %5389 to float
  %5391 = lshr i32 %5377, 16
  %5392 = and i32 %5391, 255
  %5393 = uitofp i32 %5392 to float
  %5394 = fmul fast float %5393, 0x3F70101000000000
  %5395 = fmul fast float %5382, %5387
  %5396 = fadd fast float %5395, %5390
  %5397 = fmul fast float %5396, 0x3F70101000000000
  %5398 = fadd fast float %5383, -5.000000e-01
  %5399 = fadd fast float %5385, -5.000000e-01
  %5400 = fmul fast float %5398, %5394
  %5401 = fmul fast float %5399, %5394
  %5402 = fadd fast float %5400, 5.000000e-01
  %5403 = fadd fast float %5401, 5.000000e-01
  %5404 = fmul fast float %5402, 2.000000e+00
  %5405 = fadd fast float %5404, -1.000000e+00
  %5406 = fmul fast float %5403, 2.000000e+00
  %5407 = fadd fast float %5406, -1.000000e+00
  %5408 = fadd fast float %5405, %5407
  %5409 = fmul fast float %5408, 5.000000e-01
  %5410 = fsub fast float %5405, %5407
  %5411 = fmul fast float %5410, 5.000000e-01
  %5412 = call float @dx.op.unary.f32(i32 6, float %5409)  ; FAbs(value)
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = call float @dx.op.unary.f32(i32 6, float %5411)  ; FAbs(value)
  %5415 = fsub fast float %5413, %5414
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5411, float %5415, float %5409, float %5411, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = call float @dx.op.unary.f32(i32 25, float %5416)  ; Rsqrt(value)
  %5418 = fmul fast float %5409, %5417
  %5419 = fmul fast float %5411, %5417
  %5420 = select i1 %5247, i32 %5237, i32 %5238
  %5421 = select i1 %5245, i32 %5236, i32 %5420
  %5422 = sitofp i32 %5421 to float
  %5423 = fmul fast float %5415, %5422
  %5424 = fmul fast float %5423, %5417
  %5425 = select i1 %5247, float %5424, float %5419
  %5426 = select i1 %5247, float %5419, float %5424
  %5427 = select i1 %5245, float %5424, float %5418
  %5428 = select i1 %5245, float %5419, float %5425
  %5429 = select i1 %5245, float %5418, float %5426
  %5430 = fsub fast float %5364, %4797
  %5431 = fsub fast float %5365, %4798
  %5432 = fsub fast float %5366, %4799
  %5433 = fmul fast float %5430, %5336
  %5434 = fmul fast float %5431, %5336
  %5435 = fmul fast float %5432, %5336
  %5436 = fadd fast float %5433, %4797
  %5437 = fadd fast float %5434, %4798
  %5438 = fadd fast float %5435, %4799
  %5439 = fsub fast float %5373, %4779
  %5440 = fsub fast float %5374, %4780
  %5441 = fsub fast float %5375, %4781
  %5442 = fmul fast float %5439, %5336
  %5443 = fmul fast float %5440, %5336
  %5444 = fmul fast float %5441, %5336
  %5445 = fadd fast float %5442, %4779
  %5446 = fadd fast float %5443, %4780
  %5447 = fadd fast float %5444, %4781
  %5448 = fadd fast float %5427, %4743
  %5449 = fadd fast float %5428, %4744
  %5450 = fadd fast float %5429, %4745
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.unary.f32(i32 25, float %5451)  ; Rsqrt(value)
  %5453 = fmul fast float %5448, %5452
  %5454 = fmul fast float %5449, %5452
  %5455 = fmul fast float %5450, %5452
  %5456 = fsub fast float %5453, %4743
  %5457 = fsub fast float %5454, %4744
  %5458 = fsub fast float %5455, %4745
  %5459 = fmul fast float %5456, %5336
  %5460 = fmul fast float %5457, %5336
  %5461 = fmul fast float %5458, %5336
  %5462 = fadd fast float %5459, %4743
  %5463 = fadd fast float %5460, %4744
  %5464 = fadd fast float %5461, %4745
  %5465 = call float @dx.op.binary.f32(i32 36, float %4755, float %5384)  ; FMin(a,b)
  %5466 = fsub fast float %5465, %4755
  %5467 = fmul fast float %5466, %5336
  %5468 = fadd fast float %5467, %4755
  %5469 = fsub fast float %5397, %4782
  %5470 = fmul fast float %5469, %5336
  %5471 = fadd fast float %5470, %4782
  br label %5472

; <label>:5472                                    ; preds = %5334, %5296, %5198
  %5473 = phi float [ %5436, %5334 ], [ %4797, %5296 ], [ %4797, %5198 ]
  %5474 = phi float [ %5437, %5334 ], [ %4798, %5296 ], [ %4798, %5198 ]
  %5475 = phi float [ %5438, %5334 ], [ %4799, %5296 ], [ %4799, %5198 ]
  %5476 = phi float [ %5445, %5334 ], [ %4779, %5296 ], [ %4779, %5198 ]
  %5477 = phi float [ %5446, %5334 ], [ %4780, %5296 ], [ %4780, %5198 ]
  %5478 = phi float [ %5447, %5334 ], [ %4781, %5296 ], [ %4781, %5198 ]
  %5479 = phi float [ %5462, %5334 ], [ %4743, %5296 ], [ %4743, %5198 ]
  %5480 = phi float [ %5463, %5334 ], [ %4744, %5296 ], [ %4744, %5198 ]
  %5481 = phi float [ %5464, %5334 ], [ %4745, %5296 ], [ %4745, %5198 ]
  %5482 = phi float [ %5471, %5334 ], [ %4782, %5296 ], [ %4782, %5198 ]
  %5483 = phi float [ %5468, %5334 ], [ %4755, %5296 ], [ %4755, %5198 ]
  br i1 %5196, label %5484, label %5757

; <label>:5484                                    ; preds = %5472
  %5485 = call float @dx.op.unary.f32(i32 23, float %5483)  ; Log(value)
  %5486 = fmul fast float %5485, 4.000000e+00
  %5487 = call float @dx.op.unary.f32(i32 21, float %5486)  ; Exp(value)
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %5490 = fmul fast float %5489, %60
  %5491 = fmul fast float %5489, %61
  %5492 = fmul fast float %5489, %62
  %5493 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5494 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5495 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5496 = call float @dx.op.unary.f32(i32 23, float %5493)  ; Log(value)
  %5497 = call float @dx.op.unary.f32(i32 23, float %5494)  ; Log(value)
  %5498 = call float @dx.op.unary.f32(i32 23, float %5495)  ; Log(value)
  %5499 = fmul fast float %5496, 4.000000e+00
  %5500 = fmul fast float %5497, 4.000000e+00
  %5501 = fmul fast float %5498, 4.000000e+00
  %5502 = call float @dx.op.unary.f32(i32 21, float %5499)  ; Exp(value)
  %5503 = call float @dx.op.unary.f32(i32 21, float %5500)  ; Exp(value)
  %5504 = call float @dx.op.unary.f32(i32 21, float %5501)  ; Exp(value)
  %5505 = fadd fast float %5503, %5502
  %5506 = fadd fast float %5505, %5504
  %5507 = fdiv fast float 1.000000e+00, %5506
  %5508 = fmul fast float %5507, %5502
  %5509 = fcmp fast ogt float %70, 0.000000e+00
  %5510 = fcmp fast ogt float %71, 0.000000e+00
  %5511 = fcmp fast ogt float %72, 0.000000e+00
  %5512 = fcmp fast olt float %70, 0.000000e+00
  %5513 = fcmp fast olt float %71, 0.000000e+00
  %5514 = fcmp fast olt float %72, 0.000000e+00
  %5515 = zext i1 %5509 to i32
  %5516 = zext i1 %5510 to i32
  %5517 = zext i1 %5511 to i32
  %5518 = zext i1 %5512 to i32
  %5519 = zext i1 %5513 to i32
  %5520 = zext i1 %5514 to i32
  %5521 = sub nsw i32 %5515, %5518
  %5522 = sub nsw i32 %5516, %5519
  %5523 = sub nsw i32 %5517, %5520
  %5524 = call float @dx.op.unary.f32(i32 83, float %5490)  ; DerivCoarseX(value)
  %5525 = call float @dx.op.unary.f32(i32 83, float %5491)  ; DerivCoarseX(value)
  %5526 = call float @dx.op.unary.f32(i32 83, float %5492)  ; DerivCoarseX(value)
  %5527 = call float @dx.op.unary.f32(i32 84, float %5490)  ; DerivCoarseY(value)
  %5528 = call float @dx.op.unary.f32(i32 84, float %5491)  ; DerivCoarseY(value)
  %5529 = call float @dx.op.unary.f32(i32 84, float %5492)  ; DerivCoarseY(value)
  %5530 = fcmp fast ole float %280, %5508
  %5531 = fmul fast float %5507, %5505
  %5532 = fcmp fast ole float %280, %5531
  %5533 = select i1 %5532, float %5492, float %5490
  %5534 = select i1 %5532, float %5490, float %5491
  %5535 = select i1 %5530, float %5491, float %5533
  %5536 = select i1 %5530, float %5492, float %5534
  %5537 = select i1 %5532, float %5526, float %5524
  %5538 = select i1 %5532, float %5524, float %5525
  %5539 = select i1 %5530, float %5525, float %5537
  %5540 = select i1 %5530, float %5526, float %5538
  %5541 = select i1 %5532, float %5529, float %5527
  %5542 = select i1 %5532, float %5527, float %5528
  %5543 = select i1 %5530, float %5528, float %5541
  %5544 = select i1 %5530, float %5529, float %5542
  %5545 = call float @dx.op.unary.f32(i32 27, float %5535)  ; Round_ni(value)
  %5546 = call float @dx.op.unary.f32(i32 27, float %5536)  ; Round_ni(value)
  %5547 = fptosi float %5545 to i32
  %5548 = fptosi float %5546 to i32
  %5549 = xor i32 %5548, %5547
  %5550 = sitofp i32 %5549 to float
  %5551 = fptosi float %5550 to i32
  %5552 = sitofp i32 %5551 to float
  %5553 = fmul fast float %5552, 0x3FE3C6EF40000000
  %5554 = frem fast float %5545, 2.560000e+02
  %5555 = frem fast float %5546, 2.560000e+02
  %5556 = fptoui float %5554 to i32
  %5557 = fptoui float %5555 to i32
  %5558 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5556, i32 %5557, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = fadd fast float %5559, %5553
  %5563 = fadd fast float %5560, %5553
  %5564 = fadd fast float %5561, %5553
  %5565 = call float @dx.op.unary.f32(i32 22, float %5562)  ; Frc(value)
  %5566 = call float @dx.op.unary.f32(i32 22, float %5563)  ; Frc(value)
  %5567 = call float @dx.op.unary.f32(i32 22, float %5564)  ; Frc(value)
  %5568 = fmul fast float %5567, 0x401921FB60000000
  %5569 = call float @dx.op.unary.f32(i32 13, float %5568)  ; Sin(value)
  %5570 = call float @dx.op.unary.f32(i32 12, float %5568)  ; Cos(value)
  %5571 = fsub fast float -0.000000e+00, %5570
  %5572 = fmul fast float %5570, %5535
  %5573 = call float @dx.op.tertiary.f32(i32 46, float %5569, float %5536, float %5572)  ; FMad(a,b,c)
  %5574 = fmul fast float %5569, %5535
  %5575 = call float @dx.op.tertiary.f32(i32 46, float %5571, float %5536, float %5574)  ; FMad(a,b,c)
  %5576 = fadd fast float %5573, %5565
  %5577 = fadd fast float %5575, %5566
  %5578 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5579 = bitcast float %5578 to i32
  %5580 = icmp eq i32 %5579, 0
  br i1 %5580, label %5619, label %5581

; <label>:5581                                    ; preds = %5484
  %5582 = add i32 %5579, 0
  %5583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5584 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5583, %dx.types.Handle %107, float %5576, float %5577, float undef, float undef, i32 0, i32 0, i32 undef, float %5539, float %5540, float undef, float %5543, float %5544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5585 = extractvalue %dx.types.ResRet.f32 %5584, 0
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 1
  %5588 = extractvalue %dx.types.CBufRet.f32 %5586, 2
  %5589 = fsub fast float 1.000000e+00, %5194
  %5590 = call float @dx.op.binary.f32(i32 35, float %5589, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5591 = bitcast float %5194 to i32
  %5592 = sitofp i32 %5591 to float
  %5593 = fadd fast float %5592, 0xC1CFBF8940000000
  %5594 = fmul fast float %5588, %5593
  %5595 = fadd fast float %5594, 0x41CFBF8940000000
  %5596 = fptosi float %5595 to i32
  %5597 = bitcast i32 %5596 to float
  %5598 = bitcast float %5590 to i32
  %5599 = sitofp i32 %5598 to float
  %5600 = fadd fast float %5599, 0xC1CFBF8940000000
  %5601 = fmul fast float %5600, %5588
  %5602 = fadd fast float %5601, 0x41CFBF8940000000
  %5603 = fptosi float %5602 to i32
  %5604 = bitcast i32 %5603 to float
  %5605 = fmul fast float %5597, %5587
  %5606 = fmul fast float %5604, %5587
  %5607 = fsub fast float %5590, %5605
  %5608 = fadd fast float %5606, %5590
  %5609 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5611 = fsub fast float %5585, %5609
  %5612 = fsub fast float %5610, %5609
  %5613 = bitcast float %5612 to i32
  %5614 = sub nsw i32 2129859010, %5613
  %5615 = bitcast i32 %5614 to float
  %5616 = fmul fast float %5615, %5611
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fcmp fast olt float %5617, 0x3F70101020000000
  br i1 %5618, label %5757, label %5619

; <label>:5619                                    ; preds = %5581, %5484
  %5620 = phi float [ %5617, %5581 ], [ %5194, %5484 ]
  %5621 = fmul fast float %5620, %5487
  %5622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.i32 %5622, 1
  %5624 = extractvalue %dx.types.CBufRet.i32 %5622, 0
  %5625 = add i32 %5624, 0
  %5626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5627 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5626, %dx.types.Handle %106, float %5576, float %5577, float undef, float undef, i32 0, i32 0, i32 undef, float %5539, float %5540, float undef, float %5543, float %5544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.ResRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.ResRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.ResRet.f32 %5627, 3
  %5632 = and i32 %5623, 255
  %5633 = uitofp i32 %5632 to float
  %5634 = lshr i32 %5623, 8
  %5635 = and i32 %5634, 255
  %5636 = uitofp i32 %5635 to float
  %5637 = fmul fast float %5631, %5633
  %5638 = fadd fast float %5637, %5636
  %5639 = fmul fast float %5638, 0x3F70101000000000
  %5640 = fadd fast float %5639, 0xBFB99999A0000000
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = fmul fast float %5641, 0x3FF1C71C80000000
  %5643 = call float @dx.op.binary.f32(i32 36, float %5639, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5644 = fsub fast float 1.000000e+00, %5642
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5645, %5628
  %5647 = fmul fast float %5645, %5629
  %5648 = fmul fast float %5645, %5630
  %5649 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5652 = fmul fast float %5642, %5628
  %5653 = fmul fast float %5642, %5629
  %5654 = fmul fast float %5642, %5630
  %5655 = fadd fast float %5652, %5643
  %5656 = fadd fast float %5653, %5643
  %5657 = fadd fast float %5654, %5643
  %5658 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5659 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5660 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.i32 %5661, 3
  %5663 = extractvalue %dx.types.CBufRet.i32 %5661, 2
  %5664 = add i32 %5663, 0
  %5665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5666 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5665, %dx.types.Handle %106, float %5576, float %5577, float undef, float undef, i32 0, i32 0, i32 undef, float %5539, float %5540, float undef, float %5543, float %5544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.ResRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.ResRet.f32 %5666, 2
  %5670 = extractvalue %dx.types.ResRet.f32 %5666, 3
  %5671 = and i32 %5662, 255
  %5672 = uitofp i32 %5671 to float
  %5673 = lshr i32 %5662, 8
  %5674 = and i32 %5673, 255
  %5675 = uitofp i32 %5674 to float
  %5676 = lshr i32 %5662, 16
  %5677 = and i32 %5676, 255
  %5678 = uitofp i32 %5677 to float
  %5679 = fmul fast float %5678, 0x3F70101000000000
  %5680 = fmul fast float %5667, %5672
  %5681 = fadd fast float %5680, %5675
  %5682 = fmul fast float %5681, 0x3F70101000000000
  %5683 = fadd fast float %5668, -5.000000e-01
  %5684 = fadd fast float %5670, -5.000000e-01
  %5685 = fmul fast float %5683, %5679
  %5686 = fmul fast float %5684, %5679
  %5687 = fadd fast float %5685, 5.000000e-01
  %5688 = fadd fast float %5686, 5.000000e-01
  %5689 = fmul fast float %5687, 2.000000e+00
  %5690 = fadd fast float %5689, -1.000000e+00
  %5691 = fmul fast float %5688, 2.000000e+00
  %5692 = fadd fast float %5691, -1.000000e+00
  %5693 = fadd fast float %5690, %5692
  %5694 = fmul fast float %5693, 5.000000e-01
  %5695 = fsub fast float %5690, %5692
  %5696 = fmul fast float %5695, 5.000000e-01
  %5697 = call float @dx.op.unary.f32(i32 6, float %5694)  ; FAbs(value)
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = call float @dx.op.unary.f32(i32 6, float %5696)  ; FAbs(value)
  %5700 = fsub fast float %5698, %5699
  %5701 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5696, float %5700, float %5694, float %5696, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.unary.f32(i32 25, float %5701)  ; Rsqrt(value)
  %5703 = fmul fast float %5694, %5702
  %5704 = fmul fast float %5696, %5702
  %5705 = select i1 %5532, i32 %5522, i32 %5523
  %5706 = select i1 %5530, i32 %5521, i32 %5705
  %5707 = sitofp i32 %5706 to float
  %5708 = fmul fast float %5700, %5707
  %5709 = fmul fast float %5708, %5702
  %5710 = select i1 %5532, float %5709, float %5704
  %5711 = select i1 %5532, float %5704, float %5709
  %5712 = select i1 %5530, float %5709, float %5703
  %5713 = select i1 %5530, float %5704, float %5710
  %5714 = select i1 %5530, float %5703, float %5711
  %5715 = fsub fast float %5649, %5473
  %5716 = fsub fast float %5650, %5474
  %5717 = fsub fast float %5651, %5475
  %5718 = fmul fast float %5715, %5621
  %5719 = fmul fast float %5716, %5621
  %5720 = fmul fast float %5717, %5621
  %5721 = fadd fast float %5718, %5473
  %5722 = fadd fast float %5719, %5474
  %5723 = fadd fast float %5720, %5475
  %5724 = fsub fast float %5658, %5476
  %5725 = fsub fast float %5659, %5477
  %5726 = fsub fast float %5660, %5478
  %5727 = fmul fast float %5724, %5621
  %5728 = fmul fast float %5725, %5621
  %5729 = fmul fast float %5726, %5621
  %5730 = fadd fast float %5727, %5476
  %5731 = fadd fast float %5728, %5477
  %5732 = fadd fast float %5729, %5478
  %5733 = fadd fast float %5712, %5479
  %5734 = fadd fast float %5713, %5480
  %5735 = fadd fast float %5714, %5481
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5734, float %5735, float %5733, float %5734, float %5735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = call float @dx.op.unary.f32(i32 25, float %5736)  ; Rsqrt(value)
  %5738 = fmul fast float %5733, %5737
  %5739 = fmul fast float %5734, %5737
  %5740 = fmul fast float %5735, %5737
  %5741 = fsub fast float %5738, %5479
  %5742 = fsub fast float %5739, %5480
  %5743 = fsub fast float %5740, %5481
  %5744 = fmul fast float %5741, %5621
  %5745 = fmul fast float %5742, %5621
  %5746 = fmul fast float %5743, %5621
  %5747 = fadd fast float %5744, %5479
  %5748 = fadd fast float %5745, %5480
  %5749 = fadd fast float %5746, %5481
  %5750 = call float @dx.op.binary.f32(i32 36, float %5483, float %5669)  ; FMin(a,b)
  %5751 = fsub fast float %5750, %5483
  %5752 = fmul fast float %5751, %5621
  %5753 = fadd fast float %5752, %5483
  %5754 = fsub fast float %5682, %5482
  %5755 = fmul fast float %5754, %5621
  %5756 = fadd fast float %5755, %5482
  br label %5757

; <label>:5757                                    ; preds = %5619, %5581, %5472, %5188
  %5758 = phi float [ %5721, %5619 ], [ %5473, %5581 ], [ %5473, %5472 ], [ %4797, %5188 ]
  %5759 = phi float [ %5722, %5619 ], [ %5474, %5581 ], [ %5474, %5472 ], [ %4798, %5188 ]
  %5760 = phi float [ %5723, %5619 ], [ %5475, %5581 ], [ %5475, %5472 ], [ %4799, %5188 ]
  %5761 = phi float [ %5730, %5619 ], [ %5476, %5581 ], [ %5476, %5472 ], [ %4779, %5188 ]
  %5762 = phi float [ %5731, %5619 ], [ %5477, %5581 ], [ %5477, %5472 ], [ %4780, %5188 ]
  %5763 = phi float [ %5732, %5619 ], [ %5478, %5581 ], [ %5478, %5472 ], [ %4781, %5188 ]
  %5764 = phi float [ %5747, %5619 ], [ %5479, %5581 ], [ %5479, %5472 ], [ %4743, %5188 ]
  %5765 = phi float [ %5748, %5619 ], [ %5480, %5581 ], [ %5480, %5472 ], [ %4744, %5188 ]
  %5766 = phi float [ %5749, %5619 ], [ %5481, %5581 ], [ %5481, %5472 ], [ %4745, %5188 ]
  %5767 = phi float [ %5756, %5619 ], [ %5482, %5581 ], [ %5482, %5472 ], [ %4782, %5188 ]
  %5768 = phi float [ %5753, %5619 ], [ %5483, %5581 ], [ %5483, %5472 ], [ %4755, %5188 ]
  %5769 = fcmp fast une float %5192, 0.000000e+00
  %5770 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  br i1 %5769, label %5779, label %5772

; <label>:5772                                    ; preds = %5757
  %5773 = fmul fast float %5771, %197
  %5774 = fmul fast float %5771, %198
  %5775 = fmul fast float %5771, %199
  %5776 = fsub fast float -0.000000e+00, %5773
  %5777 = fsub fast float -0.000000e+00, %5774
  %5778 = fsub fast float -0.000000e+00, %5775
  br label %5946

; <label>:5779                                    ; preds = %5757
  %5780 = fmul fast float %197, %5771
  %5781 = fsub fast float -0.000000e+00, %5780
  %5782 = fmul fast float %198, %5771
  %5783 = fsub fast float -0.000000e+00, %5782
  %5784 = fmul fast float %199, %5771
  %5785 = fsub fast float -0.000000e+00, %5784
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5783, float %5785, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fmul fast float %5192, 2.500000e+00
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fmul fast float %5192, 0x4013FFFFE0000000
  %5790 = fadd fast float %5789, 0xBFFFFFFFE0000000
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fmul fast float %5192, 0x4004000020000000
  %5793 = fadd fast float %5792, 0xBFF8000040000000
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = fmul fast float %4761, 1.000000e+01
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fmul fast float %5796, 2.000000e+00
  %5798 = fsub fast float 3.000000e+00, %5797
  %5799 = fmul fast float %5796, %5796
  %5800 = fmul fast float %5799, %5798
  %5801 = fsub fast float 1.000000e+00, %5800
  %5802 = fsub fast float 0x3FE3333340000000, %5767
  %5803 = fmul fast float %5802, 0x400AAAAAA0000000
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fmul fast float %5801, %5804
  %5806 = fmul fast float %5758, 0x3FEA2B8620000000
  %5807 = fmul fast float %5759, 0x3FEA2B8620000000
  %5808 = fmul fast float %5760, 0x3FEA2B8620000000
  %5809 = fadd fast float %5806, 0x3FC81DFBA0000000
  %5810 = fmul fast float %5809, %5758
  %5811 = fadd fast float %5810, 0x3F910E6020000000
  %5812 = fadd fast float %5807, 0x3FC81DFBA0000000
  %5813 = fmul fast float %5812, %5759
  %5814 = fadd fast float %5813, 0x3F910E6020000000
  %5815 = fadd fast float %5808, 0x3FC81DFBA0000000
  %5816 = fmul fast float %5815, %5760
  %5817 = fadd fast float %5816, 0x3F910E6020000000
  %5818 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5819 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5820 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5821 = fsub fast float %5818, %5758
  %5822 = fsub fast float %5819, %5759
  %5823 = fsub fast float %5820, %5760
  %5824 = fmul fast float %5821, %5788
  %5825 = fmul fast float %5824, %5805
  %5826 = fmul fast float %5822, %5788
  %5827 = fmul fast float %5826, %5805
  %5828 = fmul fast float %5823, %5788
  %5829 = fmul fast float %5828, %5805
  %5830 = fadd fast float %5825, %5758
  %5831 = fadd fast float %5827, %5759
  %5832 = fadd fast float %5829, %5760
  %5833 = fmul fast float %5768, %5768
  %5834 = fmul fast float %5833, %5833
  %5835 = fadd fast float %5791, 1.000000e+00
  %5836 = fsub fast float %5835, %5805
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5838 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = fsub fast float 1.000000e+00, %5834
  %5841 = call float @dx.op.binary.f32(i32 36, float %5837, float %5840)  ; FMin(a,b)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5841, float %5842)  ; FMax(a,b)
  %5844 = fadd fast float %5839, 0xBFE4CCCCC0000000
  %5845 = fmul fast float %5844, 0x4006DB6DA0000000
  %5846 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5847 = fmul fast float %5846, 2.000000e+00
  %5848 = fsub fast float 3.000000e+00, %5847
  %5849 = bitcast float %5761 to i32
  %5850 = ashr i32 %5849, 1
  %5851 = add nsw i32 %5850, 532487669
  %5852 = bitcast i32 %5851 to float
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = bitcast float %5853 to i32
  %5855 = sub nsw i32 2129859010, %5854
  %5856 = bitcast i32 %5855 to float
  %5857 = fmul fast float %5856, 2.000000e+00
  %5858 = bitcast float %5762 to i32
  %5859 = ashr i32 %5858, 1
  %5860 = add nsw i32 %5859, 532487669
  %5861 = bitcast i32 %5860 to float
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = bitcast float %5862 to i32
  %5864 = sub nsw i32 2129859010, %5863
  %5865 = bitcast i32 %5864 to float
  %5866 = fmul fast float %5865, 2.000000e+00
  %5867 = bitcast float %5763 to i32
  %5868 = ashr i32 %5867, 1
  %5869 = add nsw i32 %5868, 532487669
  %5870 = bitcast i32 %5869 to float
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = bitcast float %5871 to i32
  %5873 = sub nsw i32 2129859010, %5872
  %5874 = bitcast i32 %5873 to float
  %5875 = fmul fast float %5874, 2.000000e+00
  %5876 = fsub fast float 0x4002A9FBE0000000, %5857
  %5877 = fadd fast float %5857, 0x3FD54FDF00000000
  %5878 = bitcast float %5877 to i32
  %5879 = sub nsw i32 2129859010, %5878
  %5880 = bitcast i32 %5879 to float
  %5881 = fmul fast float %5880, %5876
  %5882 = fmul fast float %5881, %5881
  %5883 = fsub fast float 0x4002A9FBE0000000, %5866
  %5884 = fadd fast float %5866, 0x3FD54FDF00000000
  %5885 = bitcast float %5884 to i32
  %5886 = sub nsw i32 2129859010, %5885
  %5887 = bitcast i32 %5886 to float
  %5888 = fmul fast float %5887, %5883
  %5889 = fmul fast float %5888, %5888
  %5890 = fsub fast float 0x4002A9FBE0000000, %5875
  %5891 = fadd fast float %5875, 0x3FD54FDF00000000
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = fmul fast float %5894, %5890
  %5896 = fmul fast float %5895, %5895
  %5897 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5882)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5889)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5896)  ; FMax(a,b)
  %5900 = fsub fast float 1.000000e+00, %5786
  %5901 = fadd fast float %5900, %5801
  %5902 = call float @dx.op.unary.f32(i32 7, float %5901)  ; Saturate(value)
  %5903 = fsub fast float 1.000000e+00, %5173
  %5904 = fmul fast float %5843, %5903
  %5905 = fmul fast float %5846, %5846
  %5906 = fmul fast float %5905, %5904
  %5907 = fmul fast float %5906, %5848
  %5908 = fmul fast float %5903, 0xBFE99999A0000000
  %5909 = fmul fast float %5908, %5788
  %5910 = fmul fast float %5909, %5805
  %5911 = fadd fast float %5910, 1.000000e+00
  %5912 = fadd fast float %5767, -1.000000e+00
  %5913 = fmul fast float %5911, %5912
  %5914 = fadd fast float %5913, 1.000000e+00
  %5915 = fsub fast float %5897, %5761
  %5916 = fsub fast float %5898, %5762
  %5917 = fsub fast float %5899, %5763
  %5918 = fmul fast float %5907, %5915
  %5919 = fmul fast float %5907, %5916
  %5920 = fmul fast float %5907, %5917
  %5921 = fadd fast float %5918, %5761
  %5922 = fadd fast float %5919, %5762
  %5923 = fadd fast float %5920, %5763
  %5924 = fsub fast float %117, %5764
  %5925 = fsub fast float %118, %5765
  %5926 = fsub fast float %119, %5766
  %5927 = fmul fast float %5907, %5924
  %5928 = fmul fast float %5907, %5925
  %5929 = fmul fast float %5907, %5926
  %5930 = fadd fast float %5927, %5764
  %5931 = fadd fast float %5928, %5765
  %5932 = fadd fast float %5929, %5766
  %5933 = fmul fast float %5907, %5902
  %5934 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5935 = fsub fast float 1.000000e+00, %5934
  %5936 = fmul fast float %5933, %5935
  %5937 = fadd fast float %5936, %5934
  %5938 = fsub fast float 1.000000e+00, %5768
  %5939 = fmul fast float %5907, %5938
  %5940 = fadd fast float %5939, %5768
  %5941 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5931, float %5932, float %5930, float %5931, float %5932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = call float @dx.op.unary.f32(i32 25, float %5941)  ; Rsqrt(value)
  %5943 = fmul fast float %5930, %5942
  %5944 = fmul fast float %5931, %5942
  %5945 = fmul fast float %5932, %5942
  br label %5946

; <label>:5946                                    ; preds = %5779, %5772
  %5947 = phi float [ %5778, %5772 ], [ %5785, %5779 ]
  %5948 = phi float [ %5777, %5772 ], [ %5783, %5779 ]
  %5949 = phi float [ %5776, %5772 ], [ %5781, %5779 ]
  %5950 = phi float [ %5775, %5772 ], [ %5784, %5779 ]
  %5951 = phi float [ %5774, %5772 ], [ %5782, %5779 ]
  %5952 = phi float [ %5773, %5772 ], [ %5780, %5779 ]
  %5953 = phi float [ %5758, %5772 ], [ %5830, %5779 ]
  %5954 = phi float [ %5759, %5772 ], [ %5831, %5779 ]
  %5955 = phi float [ %5760, %5772 ], [ %5832, %5779 ]
  %5956 = phi float [ %5761, %5772 ], [ %5921, %5779 ]
  %5957 = phi float [ %5762, %5772 ], [ %5922, %5779 ]
  %5958 = phi float [ %5763, %5772 ], [ %5923, %5779 ]
  %5959 = phi float [ %5764, %5772 ], [ %5943, %5779 ]
  %5960 = phi float [ %5765, %5772 ], [ %5944, %5779 ]
  %5961 = phi float [ %5766, %5772 ], [ %5945, %5779 ]
  %5962 = phi float [ %5767, %5772 ], [ %5937, %5779 ]
  %5963 = phi float [ %5768, %5772 ], [ %5940, %5779 ]
  %5964 = fsub fast float -0.000000e+00, %199
  %5965 = select i1 %269, float 0.000000e+00, float %5958
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5959, float %5960, float %5961, float %5949, float %5948, float %5947)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5952, float %5951, float %5950, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fmul fast float %5968, 2.000000e+00
  %5970 = fmul fast float %5969, %5959
  %5971 = fmul fast float %5969, %5960
  %5972 = fmul fast float %5969, %5961
  %5973 = fsub fast float %5952, %5970
  %5974 = fsub fast float %5951, %5971
  %5975 = fsub fast float %5950, %5972
  %5976 = call float @dx.op.binary.f32(i32 36, float %5963, float 1.000000e+00)  ; FMin(a,b)
  %5977 = fsub fast float 1.000000e+00, %5963
  %5978 = bitcast float %5977 to i32
  %5979 = sub nsw i32 2129859010, %5978
  %5980 = bitcast i32 %5979 to float
  %5981 = fsub fast float 1.000000e+00, %81
  %5982 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = call float @dx.op.binary.f32(i32 35, float %5982, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5984 = fdiv fast float %5981, %5983
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5959, float %5960, float %5961, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5987 = fmul fast float %5986, 5.000000e-01
  %5988 = fadd fast float %5987, 5.000000e-01
  %5989 = fmul fast float %5988, %81
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5959, float %5960, float %5961, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5992 = fmul fast float %5991, %5984
  %5993 = fadd fast float %5989, %5992
  %5994 = fsub fast float 5.000000e-01, %5987
  %5995 = fmul fast float %5994, %5953
  %5996 = fmul fast float %5994, %5954
  %5997 = fmul fast float %5994, %5955
  %5998 = fadd fast float %5993, %5995
  %5999 = fadd fast float %5993, %5996
  %6000 = fadd fast float %5993, %5997
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fmul fast float %6002, 5.000000e-01
  %6004 = fadd fast float %6003, 5.000000e-01
  %6005 = fmul fast float %6004, %81
  %6006 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fmul fast float %6007, %5984
  %6009 = fadd fast float %6005, %6008
  %6010 = fsub fast float 5.000000e-01, %6003
  %6011 = fmul fast float %6010, %5953
  %6012 = fmul fast float %6010, %5954
  %6013 = fmul fast float %6010, %5955
  %6014 = fadd fast float %6009, %6011
  %6015 = fadd fast float %6009, %6012
  %6016 = fadd fast float %6009, %6013
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = call float @dx.op.binary.f32(i32 36, float %5953, float %6018)  ; FMin(a,b)
  %6020 = fsub fast float 1.000000e+00, %5976
  %6021 = fmul fast float %6019, %6020
  %6022 = fsub fast float 1.000000e+00, %6021
  %6023 = bitcast float %6022 to i32
  %6024 = sub nsw i32 2129859010, %6023
  %6025 = bitcast i32 %6024 to float
  %6026 = call float @dx.op.binary.f32(i32 36, float %5954, float %6018)  ; FMin(a,b)
  %6027 = fmul fast float %6026, %6020
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = bitcast float %6028 to i32
  %6030 = sub nsw i32 2129859010, %6029
  %6031 = bitcast i32 %6030 to float
  %6032 = call float @dx.op.binary.f32(i32 36, float %5955, float %6018)  ; FMin(a,b)
  %6033 = fmul fast float %6032, %6020
  %6034 = fsub fast float 1.000000e+00, %6033
  %6035 = bitcast float %6034 to i32
  %6036 = sub nsw i32 2129859010, %6035
  %6037 = bitcast i32 %6036 to float
  %6038 = fmul fast float %5976, %82
  %6039 = fmul fast float %6038, %5998
  %6040 = fmul fast float %6039, %6025
  %6041 = fmul fast float %5976, %83
  %6042 = fmul fast float %6041, %5999
  %6043 = fmul fast float %6042, %6031
  %6044 = fmul fast float %5976, %84
  %6045 = fmul fast float %6044, %6000
  %6046 = fmul fast float %6045, %6037
  %6047 = call float @dx.op.binary.f32(i32 36, float %5956, float %6018)  ; FMin(a,b)
  %6048 = fmul fast float %6047, %6020
  %6049 = fsub fast float 1.000000e+00, %6048
  %6050 = bitcast float %6049 to i32
  %6051 = sub nsw i32 2129859010, %6050
  %6052 = bitcast i32 %6051 to float
  %6053 = call float @dx.op.binary.f32(i32 36, float %5957, float %6018)  ; FMin(a,b)
  %6054 = fmul fast float %6053, %6020
  %6055 = fsub fast float 1.000000e+00, %6054
  %6056 = bitcast float %6055 to i32
  %6057 = sub nsw i32 2129859010, %6056
  %6058 = bitcast i32 %6057 to float
  %6059 = call float @dx.op.binary.f32(i32 36, float %5965, float %6018)  ; FMin(a,b)
  %6060 = fmul fast float %6059, %6020
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = bitcast float %6061 to i32
  %6063 = sub nsw i32 2129859010, %6062
  %6064 = bitcast i32 %6063 to float
  %6065 = fmul fast float %6038, %6014
  %6066 = fmul fast float %6065, %6052
  %6067 = fmul fast float %6041, %6015
  %6068 = fmul fast float %6067, %6058
  %6069 = fmul fast float %6044, %6016
  %6070 = fmul fast float %6069, %6064
  %6071 = call float @dx.op.dot3.f32(i32 55, float %6040, float %6043, float %6046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = select i1 %269, float 0.000000e+00, float %6040
  %6073 = select i1 %269, float %6071, float %6043
  %6074 = select i1 %269, float 0.000000e+00, float %6046
  %6075 = call float @dx.op.dot3.f32(i32 55, float %6066, float %6068, float %6070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6076 = select i1 %269, float 0.000000e+00, float %6066
  %6077 = select i1 %269, float %6075, float %6068
  %6078 = select i1 %269, float 0.000000e+00, float %6070
  %6079 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %6080 = fmul fast float %6079, %6072
  %6081 = fmul fast float %6079, %6073
  %6082 = fmul fast float %6074, %6079
  %6083 = fmul fast float %4115, %4115
  %6084 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6085 = fmul fast float %5967, 9.843750e-01
  %6086 = fmul fast float %5962, 9.843750e-01
  %6087 = fadd fast float %6085, 7.812500e-03
  %6088 = fadd fast float %6086, 7.812500e-03
  %6089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6087, float %6088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.ResRet.f32 %6089, 2
  %6093 = extractvalue %dx.types.ResRet.f32 %6089, 3
  %6094 = fsub fast float 1.000000e+00, %6084
  %6095 = fsub fast float %6092, %6090
  %6096 = fsub fast float %6093, %6091
  %6097 = fmul fast float %6095, %6094
  %6098 = fmul fast float %6096, %6094
  %6099 = fadd fast float %6097, %6090
  %6100 = fadd fast float %6098, %6091
  %6101 = fmul fast float %6099, %5956
  %6102 = fmul fast float %6099, %5957
  %6103 = fmul fast float %6099, %5965
  %6104 = fadd fast float %6101, %6100
  %6105 = fadd fast float %6102, %6100
  %6106 = fadd fast float %6103, %6100
  %6107 = fcmp fast ogt float %4756, 0.000000e+00
  br i1 %6107, label %6108, label %6134

; <label>:6108                                    ; preds = %5946
  %6109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4756, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = fadd fast float %6110, -5.000000e-01
  %6114 = fadd fast float %6111, -5.000000e-01
  %6115 = fadd fast float %6112, -5.000000e-01
  %6116 = fsub fast float 1.000000e+00, %5956
  %6117 = fsub fast float 1.000000e+00, %5957
  %6118 = fsub fast float 1.000000e+00, %5965
  %6119 = fmul fast float %5956, 4.000000e+00
  %6120 = fmul fast float %6119, %6116
  %6121 = fmul fast float %6120, %6113
  %6122 = fmul fast float %5957, 4.000000e+00
  %6123 = fmul fast float %6122, %6117
  %6124 = fmul fast float %6123, %6114
  %6125 = fmul fast float %5965, 4.000000e+00
  %6126 = fmul fast float %6125, %6118
  %6127 = fmul fast float %6126, %6115
  %6128 = fadd fast float %6121, %6104
  %6129 = fadd fast float %6124, %6105
  %6130 = fadd fast float %6127, %6106
  %6131 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6132 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6133 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  br label %6134

; <label>:6134                                    ; preds = %6108, %5946
  %6135 = phi float [ %6131, %6108 ], [ %6104, %5946 ]
  %6136 = phi float [ %6132, %6108 ], [ %6105, %5946 ]
  %6137 = phi float [ %6133, %6108 ], [ %6106, %5946 ]
  %6138 = call float @dx.op.binary.f32(i32 35, float %6136, float %6137)  ; FMax(a,b)
  %6139 = call float @dx.op.binary.f32(i32 35, float %6135, float %6138)  ; FMax(a,b)
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = fmul fast float %197, %197
  %6142 = fmul fast float %198, %198
  %6143 = fadd fast float %6142, %6141
  %6144 = fmul fast float %199, %199
  %6145 = fadd fast float %6143, %6144
  %6146 = call float @dx.op.unary.f32(i32 24, float %6145)  ; Sqrt(value)
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6149 = fsub fast float %6146, %6148
  %6150 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6151 = fmul fast float %6149, %6150
  %6152 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %6156 = extractvalue %dx.types.ResRet.i32 %6155, 0
  %6157 = and i32 %6156, 4194304
  %6158 = icmp ne i32 %6157, 0
  %6159 = and i32 %6156, 8388608
  %6160 = icmp ne i32 %6159, 0
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.CBufRet.f32 %6161, 2
  %6165 = extractvalue %dx.types.CBufRet.f32 %6161, 3
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6171 = select i1 %6158, float %6162, float %6167
  %6172 = select i1 %6158, float %6163, float %6168
  %6173 = select i1 %6158, float %6164, float %6169
  %6174 = select i1 %6158, float %6165, float %6170
  %6175 = select i1 %6160, float 0.000000e+00, float %6174
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = select i1 %6158, float %6177, float %6178
  %6180 = select i1 %6160, float 0.000000e+00, float %6179
  %6181 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6182 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6183 = select i1 %6158, float %6181, float %6182
  %6184 = select i1 %6160, float 0.000000e+00, float %6183
  %6185 = fmul fast float %6152, %63
  %6186 = fmul fast float %6185, %6153
  %6187 = fmul fast float %6186, %6180
  %6188 = fmul fast float %6185, %6154
  %6189 = fmul fast float %6188, %6184
  %6190 = fadd fast float %6189, 1.000000e+00
  %6191 = fmul fast float %6140, %6080
  %6192 = fmul fast float %6191, %6190
  %6193 = fmul fast float %6140, %6081
  %6194 = fmul fast float %6193, %6190
  %6195 = fmul fast float %6140, %6082
  %6196 = fmul fast float %6195, %6190
  %6197 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5954, float %5955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = fcmp fast ogt float %6197, 0x3E7FF19E20000000
  %6199 = fdiv fast float 1.000000e+00, %6197
  %6200 = select i1 %6198, float %6199, float 0.000000e+00
  %6201 = fmul fast float %6200, %5953
  %6202 = fmul fast float %6200, %5954
  %6203 = fmul fast float %6200, %5955
  %6204 = fadd fast float %6201, -1.000000e+00
  %6205 = fadd fast float %6202, -1.000000e+00
  %6206 = fadd fast float %6203, -1.000000e+00
  %6207 = fmul fast float %6204, 5.000000e-01
  %6208 = fmul fast float %6205, 5.000000e-01
  %6209 = fmul fast float %6206, 5.000000e-01
  %6210 = fadd fast float %6207, 1.000000e+00
  %6211 = fadd fast float %6208, 1.000000e+00
  %6212 = fadd fast float %6209, 1.000000e+00
  %6213 = fadd fast float %6187, %4757
  %6214 = fsub fast float %6171, %6210
  %6215 = fsub fast float %6172, %6211
  %6216 = fsub fast float %6173, %6212
  %6217 = fmul fast float %6214, %6175
  %6218 = fmul fast float %6215, %6175
  %6219 = fmul fast float %6216, %6175
  %6220 = fadd fast float %6217, %6210
  %6221 = fadd fast float %6218, %6211
  %6222 = fadd fast float %6219, %6212
  %6223 = call float @dx.op.binary.f32(i32 35, float %5967, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6224 = fdiv fast float %4115, %6223
  %6225 = fcmp fast olt float %4783, 1.270000e+02
  %6226 = fcmp fast olt float %4784, 1.270000e+02
  %6227 = fcmp fast olt float %4785, 1.270000e+02
  %6228 = fmul fast float %4783, 0xBFF7154760000000
  %6229 = fmul fast float %6228, %6224
  %6230 = fmul fast float %4784, 0xBFF7154760000000
  %6231 = fmul fast float %6230, %6224
  %6232 = fmul fast float %4785, 0xBFF7154760000000
  %6233 = fmul fast float %6232, %6224
  %6234 = call float @dx.op.unary.f32(i32 21, float %6229)  ; Exp(value)
  %6235 = call float @dx.op.unary.f32(i32 21, float %6231)  ; Exp(value)
  %6236 = call float @dx.op.unary.f32(i32 21, float %6233)  ; Exp(value)
  %6237 = call float @dx.op.unary.f32(i32 7, float %6234)  ; Saturate(value)
  %6238 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6239 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6240 = select i1 %6225, float %6237, float 0.000000e+00
  %6241 = select i1 %6226, float %6238, float 0.000000e+00
  %6242 = select i1 %6227, float %6239, float 0.000000e+00
  %6243 = fmul fast float %6240, %6140
  %6244 = fmul fast float %6241, %6140
  %6245 = fmul fast float %6242, %6140
  %6246 = fadd fast float %6243, -1.000000e+00
  %6247 = fadd fast float %6244, -1.000000e+00
  %6248 = fadd fast float %6245, -1.000000e+00
  %6249 = fmul fast float %6135, %6076
  %6250 = fmul fast float %6136, %6077
  %6251 = fmul fast float %6137, %6078
  %6252 = fsub fast float 1.000000e+00, %5967
  %6253 = bitcast float %6252 to i32
  %6254 = sitofp i32 %6253 to float
  %6255 = fmul fast float %6254, 5.000000e+00
  %6256 = fadd fast float %6255, 0xC1EFBF8940000000
  %6257 = fptosi float %6256 to i32
  %6258 = bitcast i32 %6257 to float
  %6259 = fmul fast float %6213, %6258
  %6260 = fmul fast float %6191, %6259
  %6261 = fmul fast float %6260, %6220
  %6262 = fmul fast float %6193, %6259
  %6263 = fmul fast float %6262, %6221
  %6264 = fmul fast float %6195, %6259
  %6265 = fmul fast float %6264, %6222
  %6266 = fmul fast float %6192, %4753
  %6267 = fmul fast float %6194, %4753
  %6268 = fmul fast float %6196, %4753
  %6269 = fadd fast float %6249, %4749
  %6270 = fadd fast float %6269, %6261
  %6271 = fmul fast float %6270, %4753
  %6272 = fadd fast float %6250, %4750
  %6273 = fadd fast float %6272, %6263
  %6274 = fmul fast float %6273, %4753
  %6275 = fadd fast float %6251, %4751
  %6276 = fadd fast float %6275, %6265
  %6277 = fmul fast float %6276, %4753
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 3
  %6280 = fcmp fast oeq float %6279, 0.000000e+00
  br i1 %6280, label %7377, label %6281

; <label>:6281                                    ; preds = %6134
  %6282 = extractvalue %dx.types.CBufRet.f32 %6278, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6284 = extractvalue %dx.types.CBufRet.f32 %6278, 2
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = call float @dx.op.dot3.f32(i32 55, float %6286, float %6287, float %6288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = select i1 %269, float %6290, float %6286
  %6294 = select i1 %269, float %6292, float %6287
  %6295 = select i1 %269, float %6291, float %6288
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6298 = fmul fast float %6297, %117
  %6299 = fmul fast float %6297, %118
  %6300 = fmul fast float %6297, %119
  %6301 = fadd fast float %6298, %197
  %6302 = fadd fast float %6299, %198
  %6303 = fadd fast float %6300, %199
  %6304 = fcmp fast olt float %6279, 0.000000e+00
  br i1 %6304, label %6944, label %6305

; <label>:6305                                    ; preds = %6281
  %6306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6306, 0
  %6308 = extractvalue %dx.types.CBufRet.f32 %6306, 1
  %6309 = extractvalue %dx.types.CBufRet.f32 %6306, 2
  %6310 = extractvalue %dx.types.CBufRet.f32 %6306, 3
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6315 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = extractvalue %dx.types.CBufRet.f32 %6316, 3
  %6321 = fmul fast float %6307, %6301
  %6322 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6308, float %6321)  ; FMad(a,b,c)
  %6323 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6309, float %6322)  ; FMad(a,b,c)
  %6324 = fadd fast float %6323, %6310
  %6325 = fmul fast float %6312, %6301
  %6326 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6313, float %6325)  ; FMad(a,b,c)
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6314, float %6326)  ; FMad(a,b,c)
  %6328 = fadd fast float %6327, %6315
  %6329 = fmul fast float %6317, %6301
  %6330 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6318, float %6329)  ; FMad(a,b,c)
  %6331 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6319, float %6330)  ; FMad(a,b,c)
  %6332 = fadd fast float %6331, %6320
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 0
  %6335 = fcmp fast une float %6334, 0.000000e+00
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6340 = fmul fast float %6339, %6324
  %6341 = fmul fast float %6339, %6328
  %6342 = fadd fast float %6340, %6337
  %6343 = fadd fast float %6341, %6338
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6347 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6348 = fmul fast float %6347, %6324
  %6349 = fmul fast float %6347, %6328
  %6350 = fadd fast float %6348, %6345
  %6351 = fadd fast float %6349, %6346
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6354 = fsub fast float %6353, %6332
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = fmul fast float %6354, %6355
  %6357 = fsub fast float 1.000000e+00, %6356
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  br i1 %6335, label %6419, label %6359

; <label>:6359                                    ; preds = %6305
  %6360 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6363 = fadd fast float %6362, %6360
  %6364 = fcmp fast ogt float %6363, 0.000000e+00
  br i1 %6364, label %6365, label %6389

; <label>:6365                                    ; preds = %6359
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6369 = fsub fast float %6350, %6367
  %6370 = fsub fast float %6351, %6368
  %6371 = fcmp fast olt float %6369, 0.000000e+00
  %6372 = fcmp fast olt float %6370, 0.000000e+00
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6378 = select i1 %6371, float %6374, float %6376
  %6379 = select i1 %6372, float %6375, float %6377
  %6380 = fmul fast float %6378, %6369
  %6381 = fmul fast float %6379, %6370
  %6382 = call float @dx.op.unary.f32(i32 6, float %6380)  ; FAbs(value)
  %6383 = call float @dx.op.unary.f32(i32 6, float %6381)  ; FAbs(value)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6385 = call float @dx.op.binary.f32(i32 35, float %6382, float %6383)  ; FMax(a,b)
  %6386 = fsub fast float %6384, %6385
  %6387 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6388 = fmul fast float %6387, %6358
  br label %6389

; <label>:6389                                    ; preds = %6365, %6359
  %6390 = phi float [ %6388, %6365 ], [ 0.000000e+00, %6359 ]
  %6391 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6392 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6393 = fadd fast float %6392, %6391
  %6394 = fcmp fast ogt float %6393, 0.000000e+00
  br i1 %6394, label %6395, label %6419

; <label>:6395                                    ; preds = %6389
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = fsub fast float %6342, %6397
  %6400 = fsub fast float %6343, %6398
  %6401 = fcmp fast olt float %6399, 0.000000e+00
  %6402 = fcmp fast olt float %6400, 0.000000e+00
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = select i1 %6401, float %6404, float %6406
  %6409 = select i1 %6402, float %6405, float %6407
  %6410 = fmul fast float %6408, %6399
  %6411 = fmul fast float %6409, %6400
  %6412 = call float @dx.op.unary.f32(i32 6, float %6410)  ; FAbs(value)
  %6413 = call float @dx.op.unary.f32(i32 6, float %6411)  ; FAbs(value)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6415 = call float @dx.op.binary.f32(i32 35, float %6412, float %6413)  ; FMax(a,b)
  %6416 = fsub fast float %6414, %6415
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6418 = fmul fast float %6417, %6358
  br label %6419

; <label>:6419                                    ; preds = %6395, %6389, %6305
  %6420 = phi float [ 0.000000e+00, %6305 ], [ %6418, %6395 ], [ 0.000000e+00, %6389 ]
  %6421 = phi float [ 0.000000e+00, %6305 ], [ %6390, %6395 ], [ %6390, %6389 ]
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 1
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = fsub fast float %6324, %6426
  %6429 = fsub fast float %6328, %6427
  %6430 = fcmp fast olt float %6428, 0.000000e+00
  %6431 = fcmp fast olt float %6429, 0.000000e+00
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = extractvalue %dx.types.CBufRet.f32 %6432, 3
  %6437 = select i1 %6430, float %6433, float %6435
  %6438 = select i1 %6431, float %6434, float %6436
  %6439 = fmul fast float %6437, %6428
  %6440 = fmul fast float %6438, %6429
  %6441 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6442 = call float @dx.op.unary.f32(i32 6, float %6440)  ; FAbs(value)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6444 = call float @dx.op.binary.f32(i32 35, float %6441, float %6442)  ; FMax(a,b)
  %6445 = fsub fast float %6443, %6444
  %6446 = call float @dx.op.unary.f32(i32 7, float %6445)  ; Saturate(value)
  %6447 = call float @dx.op.binary.f32(i32 36, float %6446, float %6424)  ; FMin(a,b)
  %6448 = fmul fast float %6447, %6358
  %6449 = fsub fast float %6420, %6448
  %6450 = fsub fast float %6421, %6420
  %6451 = fsub fast float %6450, %6448
  %6452 = call float @dx.op.binary.f32(i32 35, float %6420, float %6421)  ; FMax(a,b)
  %6453 = call float @dx.op.binary.f32(i32 35, float %6448, float %6452)  ; FMax(a,b)
  %6454 = fcmp fast olt float %6453, 1.000000e+00
  br i1 %6454, label %6455, label %6853, !dx.controlflow.hints !100

; <label>:6455                                    ; preds = %6419
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = fcmp fast une float %6457, 0.000000e+00
  br i1 %6458, label %6459, label %6853, !dx.controlflow.hints !101

; <label>:6459                                    ; preds = %6455
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.CBufRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.CBufRet.f32 %6460, 3
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.CBufRet.f32 %6465, 2
  %6469 = extractvalue %dx.types.CBufRet.f32 %6465, 3
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6475 = fmul fast float %6461, %6301
  %6476 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6462, float %6475)  ; FMad(a,b,c)
  %6477 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6463, float %6476)  ; FMad(a,b,c)
  %6478 = fadd fast float %6477, %6464
  %6479 = fmul fast float %6466, %6301
  %6480 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6467, float %6479)  ; FMad(a,b,c)
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6468, float %6480)  ; FMad(a,b,c)
  %6482 = fadd fast float %6481, %6469
  %6483 = fmul fast float %6471, %6301
  %6484 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6472, float %6483)  ; FMad(a,b,c)
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6473, float %6484)  ; FMad(a,b,c)
  %6486 = fadd fast float %6485, %6474
  %6487 = fcmp fast oge float %6478, 1.000000e+00
  %6488 = fcmp fast oge float %6482, 1.000000e+00
  %6489 = or i1 %6487, %6488
  %6490 = fcmp fast olt float %6478, 0.000000e+00
  %6491 = fcmp fast olt float %6482, 0.000000e+00
  %6492 = or i1 %6490, %6491
  %6493 = or i1 %6489, %6492
  br i1 %6493, label %6853, label %6494, !dx.controlflow.hints !102

; <label>:6494                                    ; preds = %6459
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.i32 %6499, 2
  %6501 = uitofp i32 %6500 to float
  %6502 = extractvalue %dx.types.CBufRet.i32 %6499, 3
  %6503 = uitofp i32 %6502 to float
  %6504 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6505 = fmul fast float %6504, 2.000000e+00
  %6506 = fsub fast float %6478, %6496
  %6507 = fsub fast float %6482, %6497
  %6508 = fmul fast float %6505, %6506
  %6509 = fmul fast float %6505, %6507
  %6510 = fdiv fast float 1.000000e+00, %6284
  %6511 = fmul fast float %6509, %6510
  %6512 = call float @dx.op.unary.f32(i32 6, float %6511)  ; FAbs(value)
  %6513 = fmul fast float %6498, %6303
  %6514 = fmul fast float %6513, %6505
  %6515 = call float @dx.op.unary.f32(i32 6, float %6514)  ; FAbs(value)
  %6516 = call float @dx.op.unary.f32(i32 6, float %6508)  ; FAbs(value)
  %6517 = call float @dx.op.binary.f32(i32 35, float %6515, float %6512)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 35, float %6516, float %6517)  ; FMax(a,b)
  %6519 = fmul fast float %6518, 2.000000e+00
  %6520 = call float @dx.op.unary.f32(i32 23, float %6519)  ; Log(value)
  %6521 = call float @dx.op.binary.f32(i32 35, float %6520, float %6501)  ; FMax(a,b)
  %6522 = call float @dx.op.unary.f32(i32 22, float %6521)  ; Frc(value)
  %6523 = fadd fast float %6522, 0xBFEA666660000000
  %6524 = fmul fast float %6523, 8.000000e+00
  %6525 = call float @dx.op.unary.f32(i32 7, float %6524)  ; Saturate(value)
  %6526 = call float @dx.op.unary.f32(i32 27, float %6521)  ; Round_ni(value)
  %6527 = fadd fast float %6526, %6525
  %6528 = call float @dx.op.binary.f32(i32 36, float %6527, float %6503)  ; FMin(a,b)
  %6529 = call float @dx.op.unary.f32(i32 27, float %6528)  ; Round_ni(value)
  %6530 = fsub fast float -0.000000e+00, %6529
  %6531 = call float @dx.op.unary.f32(i32 21, float %6530)  ; Exp(value)
  %6532 = fmul fast float %6531, %6505
  %6533 = fmul fast float %6532, %6478
  %6534 = fmul fast float %6532, %6482
  %6535 = fmul fast float %6533, 2.500000e-01
  %6536 = fmul fast float %6534, 2.500000e-01
  %6537 = fadd fast float %6535, 5.000000e-01
  %6538 = fadd fast float %6536, 5.000000e-01
  %6539 = fsub fast float %6503, %6501
  %6540 = fptoui float %6539 to i32
  %6541 = add i32 %6540, 320
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6541)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = fcmp fast une float %6528, %6503
  %6546 = fsub fast float %6478, %6543
  %6547 = fsub fast float %6482, %6544
  %6548 = call float @dx.op.unary.f32(i32 6, float %6546)  ; FAbs(value)
  %6549 = call float @dx.op.unary.f32(i32 6, float %6547)  ; FAbs(value)
  %6550 = fmul fast float %6548, %6532
  %6551 = fmul fast float %6549, %6532
  %6552 = fcmp fast olt float %6550, 1.000000e+00
  %6553 = fcmp fast olt float %6551, 1.000000e+00
  %6554 = and i1 %6552, %6553
  %6555 = or i1 %6545, %6554
  br i1 %6555, label %6556, label %6853, !dx.controlflow.hints !103

; <label>:6556                                    ; preds = %6494
  %6557 = fmul fast float %6534, 5.000000e-01
  %6558 = fmul fast float %6533, 5.000000e-01
  %6559 = fadd fast float %6557, 5.000000e-01
  %6560 = fadd fast float %6558, 5.000000e-01
  %6561 = sitofp i32 %6500 to float
  %6562 = fsub fast float %6528, %6561
  %6563 = call float @dx.op.unary.f32(i32 27, float %6562)  ; Round_ni(value)
  %6564 = call float @dx.op.unary.f32(i32 22, float %6528)  ; Frc(value)
  %6565 = call float @dx.op.unary.f32(i32 22, float %6560)  ; Frc(value)
  %6566 = call float @dx.op.unary.f32(i32 22, float %6559)  ; Frc(value)
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6565, float %6566, float %6563, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.ResRet.f32 %6567, 1
  %6570 = extractvalue %dx.types.ResRet.f32 %6567, 2
  %6571 = extractvalue %dx.types.ResRet.f32 %6567, 3
  %6572 = fcmp fast ogt float %6564, 0.000000e+00
  br i1 %6572, label %6573, label %6594, !dx.controlflow.hints !104

; <label>:6573                                    ; preds = %6556
  %6574 = fadd fast float %6563, 1.000000e+00
  %6575 = call float @dx.op.unary.f32(i32 22, float %6537)  ; Frc(value)
  %6576 = call float @dx.op.unary.f32(i32 22, float %6538)  ; Frc(value)
  %6577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6575, float %6576, float %6574, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6578 = extractvalue %dx.types.ResRet.f32 %6577, 0
  %6579 = extractvalue %dx.types.ResRet.f32 %6577, 1
  %6580 = extractvalue %dx.types.ResRet.f32 %6577, 2
  %6581 = extractvalue %dx.types.ResRet.f32 %6577, 3
  %6582 = fsub fast float %6578, %6568
  %6583 = fsub fast float %6579, %6569
  %6584 = fsub fast float %6580, %6570
  %6585 = fsub fast float %6581, %6571
  %6586 = fmul fast float %6582, %6564
  %6587 = fmul fast float %6583, %6564
  %6588 = fmul fast float %6584, %6564
  %6589 = fmul fast float %6585, %6564
  %6590 = fadd fast float %6586, %6568
  %6591 = fadd fast float %6587, %6569
  %6592 = fadd fast float %6588, %6570
  %6593 = fadd fast float %6589, %6571
  br label %6594

; <label>:6594                                    ; preds = %6573, %6556
  %6595 = phi float [ %6590, %6573 ], [ %6568, %6556 ]
  %6596 = phi float [ %6591, %6573 ], [ %6569, %6556 ]
  %6597 = phi float [ %6592, %6573 ], [ %6570, %6556 ]
  %6598 = phi float [ %6593, %6573 ], [ %6571, %6556 ]
  %6599 = fadd fast float %6595, -5.000000e-01
  %6600 = fadd fast float %6597, -5.000000e-01
  %6601 = fmul fast float %6599, 0xBFD5555560000000
  %6602 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6600, float %6601)  ; FMad(a,b,c)
  %6603 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6596, float 0.000000e+00)  ; FMad(a,b,c)
  %6604 = fadd fast float %6603, %6598
  %6605 = fmul fast float %6599, -7.500000e-01
  %6606 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6600, float %6605)  ; FMad(a,b,c)
  %6607 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6596, float 0.000000e+00)  ; FMad(a,b,c)
  %6608 = fadd fast float %6607, %6598
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.CBufRet.f32 %6611, 1
  %6614 = extractvalue %dx.types.CBufRet.f32 %6611, 2
  %6615 = extractvalue %dx.types.CBufRet.f32 %6611, 3
  %6616 = fsub fast float %6612, %6602
  %6617 = fsub fast float %6613, %6604
  %6618 = fsub fast float %6614, %6606
  %6619 = fsub fast float %6615, %6608
  %6620 = fmul fast float %6616, %6610
  %6621 = fmul fast float %6617, %6610
  %6622 = fmul fast float %6618, %6610
  %6623 = fmul fast float %6619, %6610
  %6624 = fadd fast float %6620, %6602
  %6625 = fadd fast float %6621, %6604
  %6626 = fadd fast float %6622, %6606
  %6627 = fadd fast float %6623, %6608
  %6628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6629 = extractvalue %dx.types.ResRet.i32 %6628, 0
  %6630 = and i32 %6629, 536870911
  %6631 = uitofp i32 %6630 to float
  %6632 = fmul fast float %6631, %6478
  %6633 = fmul fast float %6631, %6482
  %6634 = fptoui float %6632 to i32
  %6635 = fptoui float %6633 to i32
  %6636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6637 = extractvalue %dx.types.ResRet.i32 %6636, 0
  %6638 = and i32 %6637, 31
  %6639 = lshr i32 %6634, %6638
  %6640 = lshr i32 %6635, %6638
  %6641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6642 = extractvalue %dx.types.ResRet.i32 %6641, 0
  %6643 = and i32 %6642, 31
  %6644 = shl i32 1, %6643
  %6645 = call i32 @dx.op.binary.i32(i32 40, i32 %6644, i32 4)  ; UMin(a,b)
  %6646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6647 = extractvalue %dx.types.ResRet.i32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.i32 %6646, 1
  %6649 = icmp eq i32 %6645, 0
  br i1 %6649, label %6691, label %6650

; <label>:6650                                    ; preds = %6594
  br label %6651

; <label>:6651                                    ; preds = %6679, %6650
  %6652 = phi i32 [ %6682, %6679 ], [ 0, %6650 ]
  %6653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6654 = extractvalue %dx.types.ResRet.i32 %6653, 0
  %6655 = lshr i32 %6654, 16
  %6656 = and i32 %6655, 31
  %6657 = shl i32 %6640, %6656
  %6658 = add i32 %6657, %6639
  %6659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6660 = extractvalue %dx.types.ResRet.i32 %6659, 0
  %6661 = and i32 %6660, 31
  %6662 = shl i32 %6658, %6661
  %6663 = add i32 %6662, %6652
  %6664 = shl i32 %6663, 2
  %6665 = add i32 %6664, 32
  %6666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6665, i32 undef)  ; BufferLoad(srv,index,wot)
  %6667 = extractvalue %dx.types.ResRet.i32 %6666, 0
  %6668 = icmp slt i32 %6667, 0
  %6669 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6652
  %6670 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6652
  %6671 = bitcast float* %6669 to i32*
  %6672 = bitcast float* %6670 to i32*
  br i1 %6668, label %6673, label %6679

; <label>:6673                                    ; preds = %6651
  %6674 = and i32 %6667, 1073741823
  %6675 = add nuw nsw i32 %6674, 20
  %6676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6675, i32 undef)  ; BufferLoad(srv,index,wot)
  %6677 = extractvalue %dx.types.ResRet.i32 %6676, 0
  %6678 = extractvalue %dx.types.ResRet.i32 %6676, 1
  br label %6679

; <label>:6679                                    ; preds = %6673, %6651
  %6680 = phi i32 [ %6677, %6673 ], [ %6647, %6651 ]
  %6681 = phi i32 [ %6678, %6673 ], [ %6648, %6651 ]
  store i32 %6680, i32* %6671, align 4
  store i32 %6681, i32* %6672, align 4
  %6682 = add nuw i32 %6652, 1
  %6683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.i32 %6683, 2
  %6685 = icmp eq i32 %6684, 0
  %6686 = icmp ugt i32 %6667, -1073741825
  %6687 = and i1 %6686, %6685
  %6688 = icmp ult i32 %6682, %6645
  %6689 = and i1 %6687, %6688
  br i1 %6689, label %6651, label %6690

; <label>:6690                                    ; preds = %6679
  br label %6691

; <label>:6691                                    ; preds = %6690, %6594
  %6692 = phi i32 [ 0, %6594 ], [ %6682, %6690 ]
  %6693 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6694 = fptoui float %6693 to i32
  %6695 = icmp eq i32 %6694, 0
  br i1 %6695, label %6747, label %6696

; <label>:6696                                    ; preds = %6691
  br label %6697

; <label>:6697                                    ; preds = %6742, %6696
  %6698 = phi i32 [ %6743, %6742 ], [ %6692, %6696 ]
  %6699 = phi i32 [ %6744, %6742 ], [ 0, %6696 ]
  %6700 = lshr i32 %6699, 2
  %6701 = and i32 %6699, 3
  %6702 = add nuw nsw i32 %6700, 83
  %6703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6702)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.i32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.i32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.i32 %6703, 2
  %6707 = extractvalue %dx.types.CBufRet.i32 %6703, 3
  %6708 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6704, i32* %6708, align 4
  %6709 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6705, i32* %6709, align 4
  %6710 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6706, i32* %6710, align 4
  %6711 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6707, i32* %6711, align 4
  %6712 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6701
  %6713 = load i32, i32* %6712, align 4, !tbaa !105, !noalias !109
  %6714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6715 = extractvalue %dx.types.ResRet.i32 %6714, 0
  %6716 = lshr i32 %6715, 16
  %6717 = and i32 %6716, 31
  %6718 = shl i32 %6640, %6717
  %6719 = add i32 %6718, %6639
  %6720 = shl i32 %6719, 2
  %6721 = add i32 %6720, %6713
  %6722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6721, i32 undef)  ; BufferLoad(srv,index,wot)
  %6723 = extractvalue %dx.types.ResRet.i32 %6722, 0
  %6724 = icmp eq i32 %6723, 0
  br i1 %6724, label %6742, label %6725

; <label>:6725                                    ; preds = %6697
  %6726 = icmp slt i32 %6723, 0
  %6727 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6698
  %6728 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6698
  %6729 = bitcast float* %6727 to i32*
  %6730 = bitcast float* %6728 to i32*
  br i1 %6726, label %6731, label %6738

; <label>:6731                                    ; preds = %6725
  %6732 = and i32 %6723, 1073741823
  %6733 = add i32 %6713, 20
  %6734 = add i32 %6733, %6732
  %6735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6734, i32 undef)  ; BufferLoad(srv,index,wot)
  %6736 = extractvalue %dx.types.ResRet.i32 %6735, 0
  %6737 = extractvalue %dx.types.ResRet.i32 %6735, 1
  br label %6738

; <label>:6738                                    ; preds = %6731, %6725
  %6739 = phi i32 [ %6736, %6731 ], [ %6647, %6725 ]
  %6740 = phi i32 [ %6737, %6731 ], [ %6648, %6725 ]
  store i32 %6739, i32* %6729, align 4
  store i32 %6740, i32* %6730, align 4
  %6741 = add i32 %6698, 1
  br label %6742

; <label>:6742                                    ; preds = %6738, %6697
  %6743 = phi i32 [ %6698, %6697 ], [ %6741, %6738 ]
  %6744 = add nuw i32 %6699, 1
  %6745 = icmp eq i32 %6744, %6694
  br i1 %6745, label %6746, label %6697

; <label>:6746                                    ; preds = %6742
  br label %6747

; <label>:6747                                    ; preds = %6746, %6691
  %6748 = phi i32 [ %6692, %6691 ], [ %6743, %6746 ]
  %6749 = icmp eq i32 %6748, 1
  %6750 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6751 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6749, label %6752, label %6755

; <label>:6752                                    ; preds = %6747
  %6753 = load float, float* %6750, align 4
  %6754 = load float, float* %6751, align 4
  br label %6782

; <label>:6755                                    ; preds = %6747
  %6756 = load float, float* %6750, align 4
  %6757 = load float, float* %6751, align 4
  %6758 = fdiv fast float 1.000000e+00, %6757
  %6759 = fsub fast float %6756, %6758
  %6760 = icmp ugt i32 %6748, 1
  br i1 %6760, label %6761, label %6777

; <label>:6761                                    ; preds = %6755
  br label %6762

; <label>:6762                                    ; preds = %6762, %6761
  %6763 = phi float [ %6772, %6762 ], [ %6759, %6761 ]
  %6764 = phi float [ %6773, %6762 ], [ %6756, %6761 ]
  %6765 = phi i32 [ %6774, %6762 ], [ 1, %6761 ]
  %6766 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6765
  %6767 = load float, float* %6766, align 4
  %6768 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6765
  %6769 = load float, float* %6768, align 4
  %6770 = fdiv fast float 1.000000e+00, %6769
  %6771 = fsub fast float %6767, %6770
  %6772 = call float @dx.op.binary.f32(i32 36, float %6763, float %6771)  ; FMin(a,b)
  %6773 = call float @dx.op.binary.f32(i32 35, float %6764, float %6767)  ; FMax(a,b)
  %6774 = add nuw i32 %6765, 1
  %6775 = icmp eq i32 %6774, %6748
  br i1 %6775, label %6776, label %6762

; <label>:6776                                    ; preds = %6762
  br label %6777

; <label>:6777                                    ; preds = %6776, %6755
  %6778 = phi float [ %6759, %6755 ], [ %6772, %6776 ]
  %6779 = phi float [ %6756, %6755 ], [ %6773, %6776 ]
  %6780 = fsub fast float %6779, %6778
  %6781 = fdiv fast float 1.000000e+00, %6780
  br label %6782

; <label>:6782                                    ; preds = %6777, %6752
  %6783 = phi float [ %6753, %6752 ], [ %6779, %6777 ]
  %6784 = phi float [ %6754, %6752 ], [ %6781, %6777 ]
  %6785 = fadd fast float %6486, %6783
  %6786 = fmul fast float %6785, %6784
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6787, 2.000000e+00
  %6789 = fsub fast float 1.000000e+00, %6788
  %6790 = fmul fast float %6624, %6624
  %6791 = fsub fast float %6625, %6790
  %6792 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6791)  ; FMax(a,b)
  %6793 = fdiv fast float 1.000000e+00, %6792
  %6794 = fmul fast float %6625, %6624
  %6795 = fsub fast float %6626, %6794
  %6796 = fsub fast float %6789, %6624
  %6797 = fmul fast float %6789, %6789
  %6798 = fsub fast float %6797, %6625
  %6799 = fmul fast float %6793, %6795
  %6800 = fmul fast float %6799, %6796
  %6801 = fsub fast float %6798, %6800
  %6802 = fmul fast float %6625, %6625
  %6803 = fsub fast float %6627, %6802
  %6804 = fmul fast float %6795, %6795
  %6805 = fmul fast float %6804, %6793
  %6806 = fsub fast float %6803, %6805
  %6807 = fdiv fast float %6801, %6806
  %6808 = fmul fast float %6807, %6795
  %6809 = fsub fast float %6796, %6808
  %6810 = fmul fast float %6809, %6793
  %6811 = fmul fast float %6810, %6624
  %6812 = fsub fast float 1.000000e+00, %6811
  %6813 = fmul fast float %6807, %6625
  %6814 = fsub fast float %6812, %6813
  %6815 = fmul fast float %6810, %6810
  %6816 = fmul fast float %6807, 4.000000e+00
  %6817 = fmul fast float %6816, %6814
  %6818 = fsub fast float %6815, %6817
  %6819 = call float @dx.op.unary.f32(i32 24, float %6818)  ; Sqrt(value)
  %6820 = fcmp fast oge float %6810, 0.000000e+00
  %6821 = fsub fast float -0.000000e+00, %6819
  %6822 = select i1 %6820, float %6821, float %6819
  %6823 = fsub fast float %6822, %6810
  %6824 = fdiv fast float %6823, %6807
  %6825 = fdiv fast float %6814, %6823
  %6826 = fmul fast float %6824, 5.000000e-01
  %6827 = fmul fast float %6825, 2.000000e+00
  %6828 = select i1 %6820, float %6826, float %6827
  %6829 = select i1 %6820, float %6827, float %6826
  %6830 = call float @dx.op.binary.f32(i32 35, float %6828, float %6829)  ; FMax(a,b)
  %6831 = call float @dx.op.binary.f32(i32 36, float %6828, float %6829)  ; FMin(a,b)
  %6832 = fcmp fast ogt float %6789, %6830
  %6833 = fsub fast float %6789, %6831
  %6834 = fsub fast float %6789, %6830
  %6835 = fsub fast float %6830, %6831
  %6836 = select i1 %6832, float %6834, float %6835
  %6837 = fmul float %6833, %6836
  %6838 = select i1 %6832, float %6831, float %6789
  %6839 = fcmp fast ogt float %6789, %6831
  %6840 = fmul fast float %6838, %6830
  %6841 = fadd fast float %6838, %6830
  %6842 = fmul fast float %6841, %6624
  %6843 = fadd fast float %6840, %6625
  %6844 = fsub fast float %6843, %6842
  %6845 = fdiv fast float %6844, %6837
  %6846 = select i1 %6839, float %6845, float 0.000000e+00
  %6847 = fsub fast float 1.000000e+00, %6846
  %6848 = select i1 %6832, float %6847, float %6846
  %6849 = call float @dx.op.unary.f32(i32 7, float %6848)  ; Saturate(value)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6609, 3
  %6851 = fmul fast float %6850, %6849
  %6852 = fsub fast float 1.000000e+00, %6851
  br label %6853

; <label>:6853                                    ; preds = %6782, %6494, %6459, %6455, %6419
  %6854 = phi float [ 1.000000e+00, %6419 ], [ %6852, %6782 ], [ 1.000000e+00, %6459 ], [ 1.000000e+00, %6494 ], [ 1.000000e+00, %6455 ]
  %6855 = fcmp fast ogt float %6451, 0.000000e+00
  br i1 %6855, label %6856, label %6864, !dx.controlflow.hints !118

; <label>:6856                                    ; preds = %6853
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 2
  %6859 = fadd fast float %6858, %6332
  %6860 = call float @dx.op.binary.f32(i32 35, float %6859, float 0.000000e+00)  ; FMax(a,b)
  %6861 = fadd fast float %6860, 0x3F10000000000000
  %6862 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6350, float %6351, float undef, float undef, i32 0, i32 0, i32 undef, float %6861)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6863 = extractvalue %dx.types.ResRet.f32 %6862, 0
  br label %6864

; <label>:6864                                    ; preds = %6856, %6853
  %6865 = phi float [ %6863, %6856 ], [ 1.000000e+00, %6853 ]
  %6866 = fcmp fast ogt float %6449, 0.000000e+00
  br i1 %6866, label %6867, label %6875, !dx.controlflow.hints !119

; <label>:6867                                    ; preds = %6864
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6870 = fadd fast float %6869, %6332
  %6871 = call float @dx.op.binary.f32(i32 35, float %6870, float 0.000000e+00)  ; FMax(a,b)
  %6872 = fadd fast float %6871, 0x3F10000000000000
  %6873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6342, float %6343, float undef, float undef, i32 0, i32 0, i32 undef, float %6872)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  br label %6875

; <label>:6875                                    ; preds = %6867, %6864
  %6876 = phi float [ %6874, %6867 ], [ 1.000000e+00, %6864 ]
  %6877 = fcmp fast ogt float %6448, 0.000000e+00
  br i1 %6877, label %6878, label %6890, !dx.controlflow.hints !120

; <label>:6878                                    ; preds = %6875
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6881 = fadd fast float %6880, %6332
  %6882 = call float @dx.op.binary.f32(i32 35, float %6881, float 0.000000e+00)  ; FMax(a,b)
  %6883 = fadd fast float %6882, 0x3F10000000000000
  br i1 %6335, label %6884, label %6887, !dx.controlflow.hints !121

; <label>:6884                                    ; preds = %6878
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6324, float %6328, float undef, float undef, i32 0, i32 0, i32 undef, float %6883)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  br label %6890

; <label>:6887                                    ; preds = %6878
  %6888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6324, float %6328, float undef, float undef, i32 0, i32 0, i32 undef, float %6883)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6889 = extractvalue %dx.types.ResRet.f32 %6888, 0
  br label %6890

; <label>:6890                                    ; preds = %6887, %6884, %6875
  %6891 = phi float [ %6886, %6884 ], [ %6889, %6887 ], [ 1.000000e+00, %6875 ]
  %6892 = fsub fast float %6865, %6854
  %6893 = fmul fast float %6892, %6421
  %6894 = fadd fast float %6893, %6854
  %6895 = fsub fast float %6876, %6894
  %6896 = fmul fast float %6895, %6420
  %6897 = fadd fast float %6896, %6894
  %6898 = fsub fast float %6891, %6897
  %6899 = fmul fast float %6898, %6448
  %6900 = fadd fast float %6899, %6897
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6903 = fcmp fast ogt float %6902, 0.000000e+00
  br i1 %6903, label %6904, label %6944, !dx.controlflow.hints !122

; <label>:6904                                    ; preds = %6890
  %6905 = fcmp fast ugt float %6902, 0.000000e+00
  br i1 %6905, label %6906, label %6941

; <label>:6906                                    ; preds = %6904
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.CBufRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.CBufRet.f32 %6907, 2
  %6911 = extractvalue %dx.types.CBufRet.f32 %6907, 3
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6917 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.CBufRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %6923 = fadd fast float %6920, %6301
  %6924 = fadd fast float %6921, %6302
  %6925 = fadd fast float %6922, %6303
  %6926 = fmul fast float %6923, %6908
  %6927 = call float @dx.op.tertiary.f32(i32 46, float %6909, float %6924, float %6926)  ; FMad(a,b,c)
  %6928 = call float @dx.op.tertiary.f32(i32 46, float %6910, float %6925, float %6927)  ; FMad(a,b,c)
  %6929 = fadd fast float %6928, %6911
  %6930 = fmul fast float %6923, %6913
  %6931 = call float @dx.op.tertiary.f32(i32 46, float %6914, float %6924, float %6930)  ; FMad(a,b,c)
  %6932 = call float @dx.op.tertiary.f32(i32 46, float %6915, float %6925, float %6931)  ; FMad(a,b,c)
  %6933 = fadd fast float %6932, %6916
  %6934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6929, float %6933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6935 = extractvalue %dx.types.ResRet.f32 %6934, 0
  %6936 = fmul fast float %6935, %6918
  %6937 = fadd fast float %6936, %6917
  %6938 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6939 = fmul fast float %6938, %6902
  %6940 = fsub fast float 1.000000e+00, %6939
  br label %6941

; <label>:6941                                    ; preds = %6906, %6904
  %6942 = phi float [ %6940, %6906 ], [ 1.000000e+00, %6904 ]
  %6943 = fmul fast float %6942, %6900
  br label %6944

; <label>:6944                                    ; preds = %6941, %6890, %6281
  %6945 = phi float [ 1.000000e+00, %6281 ], [ %6943, %6941 ], [ %6900, %6890 ]
  %6946 = call float @dx.op.binary.f32(i32 36, float %6945, float %6945)  ; FMin(a,b)
  %6947 = call float @dx.op.binary.f32(i32 36, float %6945, float %6946)  ; FMin(a,b)
  %6948 = fcmp fast ogt float %6947, 0.000000e+00
  br i1 %6948, label %6949, label %7109, !dx.controlflow.hints !123

; <label>:6949                                    ; preds = %6944
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.CBufRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6950, 3
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = fmul fast float %6951, %6301
  %6966 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6952, float %6965)  ; FMad(a,b,c)
  %6967 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6953, float %6966)  ; FMad(a,b,c)
  %6968 = fadd fast float %6967, %6954
  %6969 = fmul fast float %6956, %6301
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6957, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6958, float %6970)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6959
  %6973 = fmul fast float %6961, %6301
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6962, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6963, float %6974)  ; FMad(a,b,c)
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.CBufRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6976, 3
  %6980 = fmul fast float %6979, %6968
  %6981 = fmul fast float %6979, %6972
  %6982 = fadd fast float %6980, %6977
  %6983 = fadd fast float %6981, %6978
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %6986 = extractvalue %dx.types.CBufRet.f32 %6984, 1
  %6987 = fsub fast float %6982, %6985
  %6988 = fsub fast float %6983, %6986
  %6989 = fcmp fast olt float %6987, 0.000000e+00
  %6990 = fcmp fast olt float %6988, 0.000000e+00
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.CBufRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.CBufRet.f32 %6991, 2
  %6995 = extractvalue %dx.types.CBufRet.f32 %6991, 3
  %6996 = select i1 %6989, float %6992, float %6994
  %6997 = select i1 %6990, float %6993, float %6995
  %6998 = fmul fast float %6996, %6987
  %6999 = fmul fast float %6997, %6988
  %7000 = call float @dx.op.unary.f32(i32 6, float %6998)  ; FAbs(value)
  %7001 = call float @dx.op.unary.f32(i32 6, float %6999)  ; FAbs(value)
  %7002 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %7003 = call float @dx.op.binary.f32(i32 35, float %7000, float %7001)  ; FMax(a,b)
  %7004 = fsub fast float %7002, %7003
  %7005 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  %7006 = fcmp fast ogt float %7005, 0.000000e+00
  br i1 %7006, label %7007, label %7048, !dx.controlflow.hints !124

; <label>:7007                                    ; preds = %6949
  %7008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6982, float %6983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7010 = fcmp fast ogt float %7009, 0.000000e+00
  br i1 %7010, label %7011, label %7043

; <label>:7011                                    ; preds = %7007
  %7012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6982, float %6983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 0
  %7014 = extractvalue %dx.types.ResRet.f32 %7012, 1
  %7015 = extractvalue %dx.types.ResRet.f32 %7012, 2
  %7016 = extractvalue %dx.types.ResRet.f32 %7012, 3
  %7017 = fsub fast float 1.000000e+00, %6964
  %7018 = fsub fast float %7017, %6975
  %7019 = fmul fast float %7018, 0x400921FB60000000
  %7020 = fadd fast float %7019, 0x3FF921FB60000000
  %7021 = call float @dx.op.unary.f32(i32 13, float %7020)  ; Sin(value)
  %7022 = fadd fast float %7021, -1.000000e+00
  %7023 = fmul fast float %7022, 0x3FD45F3060000000
  %7024 = fmul fast float %7018, 0x401921FB60000000
  %7025 = fadd fast float %7024, 0x400921FB60000000
  %7026 = call float @dx.op.unary.f32(i32 13, float %7025)  ; Sin(value)
  %7027 = fadd fast float %7026, 0x3E7777A5C0000000
  %7028 = fmul fast float %7027, 0x3FC45F3060000000
  %7029 = fmul fast float %7018, 0x4022D97C80000000
  %7030 = fadd fast float %7029, 0x4012D97C80000000
  %7031 = call float @dx.op.unary.f32(i32 13, float %7030)  ; Sin(value)
  %7032 = fadd fast float %7031, 1.000000e+00
  %7033 = fmul fast float %7032, 0x3FBB2995E0000000
  %7034 = fmul fast float %7018, 0x402921FB60000000
  %7035 = fadd fast float %7034, 0x401921FB60000000
  %7036 = call float @dx.op.unary.f32(i32 13, float %7035)  ; Sin(value)
  %7037 = fadd fast float %7036, 0xBE8777A5C0000000
  %7038 = fmul fast float %7037, 0x3FB45F3060000000
  %7039 = call float @dx.op.dot4.f32(i32 56, float %7013, float %7014, float %7015, float %7016, float %7023, float %7028, float %7033, float %7038)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7040 = fmul fast float %7039, 0xBFF7154760000000
  %7041 = call float @dx.op.unary.f32(i32 21, float %7040)  ; Exp(value)
  %7042 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  br label %7043

; <label>:7043                                    ; preds = %7011, %7007
  %7044 = phi float [ %7042, %7011 ], [ 1.000000e+00, %7007 ]
  %7045 = fadd fast float %7044, -1.000000e+00
  %7046 = fmul fast float %7045, %7005
  %7047 = fadd fast float %7046, 1.000000e+00
  br label %7048

; <label>:7048                                    ; preds = %7043, %6949
  %7049 = phi float [ %7047, %7043 ], [ 1.000000e+00, %6949 ]
  %7050 = fmul fast float %7049, %6945
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7055 = fadd fast float %7052, %197
  %7056 = fadd fast float %7053, %198
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7059 = fsub fast float -0.000000e+00, %7055
  %7060 = fsub fast float -0.000000e+00, %7056
  %7061 = fsub fast float %5964, %7054
  %7062 = fadd fast float %7061, %7058
  %7063 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7059, float %7060, float %7062)  ; Dot3(ax,ay,az,bx,by,bz)
  %7064 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6282, float %6283, float %6284)  ; Dot3(ax,ay,az,bx,by,bz)
  %7065 = fdiv fast float 1.000000e+00, %7064
  %7066 = fmul fast float %7065, %7063
  %7067 = fmul fast float %6282, %7066
  %7068 = fmul fast float %6283, %7066
  %7069 = fadd fast float %7067, %7055
  %7070 = fadd fast float %7068, %7056
  %7071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.f32 %7071, 1
  %7074 = fsub fast float %7069, %7072
  %7075 = fsub fast float %7070, %7073
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 2
  %7078 = extractvalue %dx.types.CBufRet.f32 %7076, 3
  %7079 = fmul fast float %7074, %7077
  %7080 = fmul fast float %7075, %7078
  %7081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.i32 %7081, 3
  %7083 = icmp eq i32 %7082, 0
  br i1 %7083, label %7089, label %7084

; <label>:7084                                    ; preds = %7048
  %7085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7079, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7086 = extractvalue %dx.types.ResRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.ResRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.ResRet.f32 %7085, 2
  br label %7094

; <label>:7089                                    ; preds = %7048
  %7090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7079, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7091 = extractvalue %dx.types.ResRet.f32 %7090, 0
  %7092 = extractvalue %dx.types.ResRet.f32 %7090, 1
  %7093 = extractvalue %dx.types.ResRet.f32 %7090, 2
  br label %7094

; <label>:7094                                    ; preds = %7089, %7084
  %7095 = phi float [ %7086, %7084 ], [ %7091, %7089 ]
  %7096 = phi float [ %7087, %7084 ], [ %7092, %7089 ]
  %7097 = phi float [ %7088, %7084 ], [ %7093, %7089 ]
  %7098 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7099 = fmul fast float %7098, %7095
  %7100 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7101 = fsub fast float %7066, %7100
  %7102 = fsub fast float %7101, %7099
  %7103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7102)  ; FMax(a,b)
  %7104 = fmul fast float %7103, %7096
  %7105 = call float @dx.op.binary.f32(i32 36, float %7097, float %7104)  ; FMin(a,b)
  %7106 = fmul fast float %7105, 0xBFF7154760000000
  %7107 = call float @dx.op.unary.f32(i32 21, float %7106)  ; Exp(value)
  %7108 = fmul fast float %7050, %7107
  br label %7109

; <label>:7109                                    ; preds = %7094, %6944
  %7110 = phi float [ %7108, %7094 ], [ %6945, %6944 ]
  %7111 = call float @dx.op.binary.f32(i32 36, float %7110, float %7110)  ; FMin(a,b)
  %7112 = call float @dx.op.binary.f32(i32 36, float %7110, float %7111)  ; FMin(a,b)
  %7113 = fcmp fast ogt float %7112, 0.000000e+00
  br i1 %7113, label %7114, label %7377, !dx.controlflow.hints !125

; <label>:7114                                    ; preds = %7109
  %7115 = fmul fast float %7110, %6293
  %7116 = fmul fast float %7110, %6294
  %7117 = fmul fast float %7110, %6295
  %7118 = fsub fast float %199, %5160
  %7119 = fcmp fast ogt float %7118, 0.000000e+00
  %7120 = fmul fast float %6282, 5.120000e+02
  %7121 = fmul fast float %6283, 5.120000e+02
  %7122 = fmul fast float %6284, 5.120000e+02
  %7123 = fadd fast float %7122, %199
  %7124 = fsub fast float %5160, %7123
  %7125 = fmul fast float %7124, 2.000000e+00
  %7126 = fadd fast float %7125, %7123
  %7127 = select i1 %7119, float %7126, float %7123
  %7128 = fsub fast float %7127, %199
  %7129 = call float @dx.op.dot3.f32(i32 55, float %7120, float %7121, float %7128, float %7120, float %7121, float %7128)  ; Dot3(ax,ay,az,bx,by,bz)
  %7130 = call float @dx.op.unary.f32(i32 25, float %7129)  ; Rsqrt(value)
  %7131 = fmul fast float %7130, %7120
  %7132 = fmul fast float %7130, %7121
  %7133 = fmul fast float %7130, %7128
  %7134 = fsub fast float %5160, %199
  %7135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7134)  ; Dot3(ax,ay,az,bx,by,bz)
  %7136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7131, float %7132, float %7133)  ; Dot3(ax,ay,az,bx,by,bz)
  %7137 = fdiv fast float 1.000000e+00, %7136
  %7138 = fmul fast float %7137, %7135
  %7139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = fcmp fast ogt float %7139, 0.000000e+00
  %7141 = fcmp fast olt float %7139, 0.000000e+00
  %7142 = zext i1 %7140 to i32
  %7143 = zext i1 %7141 to i32
  %7144 = sub nsw i32 %7142, %7143
  %7145 = sitofp i32 %7144 to float
  %7146 = fsub fast float %7127, %5160
  %7147 = call float @dx.op.dot3.f32(i32 55, float %7120, float %7121, float %7146, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7148 = fcmp fast ogt float %7147, 0.000000e+00
  %7149 = fcmp fast olt float %7147, 0.000000e+00
  %7150 = zext i1 %7148 to i32
  %7151 = zext i1 %7149 to i32
  %7152 = sub nsw i32 %7150, %7151
  %7153 = sitofp i32 %7152 to float
  %7154 = fcmp fast une float %7145, %7153
  br i1 %7154, label %7155, label %7165

; <label>:7155                                    ; preds = %7114
  %7156 = fmul fast float %7138, %7133
  %7157 = fmul fast float %7138, %7132
  %7158 = fmul fast float %7138, %7131
  %7159 = fmul fast float %7158, %7158
  %7160 = fmul fast float %7157, %7157
  %7161 = fadd fast float %7159, %7160
  %7162 = fmul fast float %7156, %7156
  %7163 = fadd fast float %7161, %7162
  %7164 = call float @dx.op.unary.f32(i32 24, float %7163)  ; Sqrt(value)
  br label %7175

; <label>:7165                                    ; preds = %7114
  %7166 = icmp slt i32 %7144, 0
  br i1 %7166, label %7167, label %7175

; <label>:7167                                    ; preds = %7165
  %7168 = fsub fast float %199, %7127
  %7169 = fmul fast float %7120, %7120
  %7170 = fmul fast float %7121, %7121
  %7171 = fadd fast float %7169, %7170
  %7172 = fmul fast float %7168, %7168
  %7173 = fadd fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  br label %7175

; <label>:7175                                    ; preds = %7167, %7165, %7155
  %7176 = phi float [ %7164, %7155 ], [ %7174, %7167 ], [ 0.000000e+00, %7165 ]
  %7177 = fsub fast float -0.000000e+00, %7176
  %7178 = select i1 %7119, float -0.000000e+00, float %7177
  %7179 = fmul fast float %5161, 0x3FF7154760000000
  %7180 = fmul fast float %7179, %7178
  %7181 = fmul fast float %5162, 0x3FF7154760000000
  %7182 = fmul fast float %7181, %7178
  %7183 = fmul fast float %5163, 0x3FF7154760000000
  %7184 = fmul fast float %7183, %7178
  %7185 = call float @dx.op.unary.f32(i32 21, float %7180)  ; Exp(value)
  %7186 = call float @dx.op.unary.f32(i32 21, float %7182)  ; Exp(value)
  %7187 = call float @dx.op.unary.f32(i32 21, float %7184)  ; Exp(value)
  %7188 = call float @dx.op.unary.f32(i32 7, float %7185)  ; Saturate(value)
  %7189 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7190 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  %7191 = fmul fast float %7115, %7188
  %7192 = fmul fast float %7116, %7189
  %7193 = fmul fast float %7117, %7190
  %7194 = fsub fast float %6282, %5952
  %7195 = fsub fast float %6283, %5951
  %7196 = fsub fast float %6284, %5950
  %7197 = call float @dx.op.dot3.f32(i32 55, float %7194, float %7195, float %7196, float %7194, float %7195, float %7196)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = call float @dx.op.unary.f32(i32 25, float %7197)  ; Rsqrt(value)
  %7199 = fmul fast float %7198, %7194
  %7200 = fmul fast float %7198, %7195
  %7201 = fmul fast float %7198, %7196
  %7202 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5948, float %5947, float %7199, float %7200, float %7201)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = call float @dx.op.unary.f32(i32 7, float %7202)  ; Saturate(value)
  %7205 = fmul fast float %7204, %7204
  %7206 = fmul fast float %7205, %5980
  %7207 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7208 = fmul fast float %7207, %7204
  %7209 = call float @dx.op.dot3.f32(i32 55, float %5959, float %5960, float %5961, float %7199, float %7200, float %7201)  ; Dot3(ax,ay,az,bx,by,bz)
  %7210 = fmul fast float %7209, %7209
  %7211 = call float @dx.op.unary.f32(i32 6, float %7202)  ; FAbs(value)
  %7212 = fsub fast float 1.000000e+00, %5962
  %7213 = call float @dx.op.binary.f32(i32 35, float %7212, float 0x3F847AE140000000)  ; FMax(a,b)
  %7214 = fmul fast float %7213, %7213
  %7215 = fmul fast float %7214, %7214
  %7216 = fsub fast float 1.000000e+00, %7215
  %7217 = fmul fast float %5967, %5967
  %7218 = fmul fast float %7217, %7216
  %7219 = fadd fast float %7218, %7215
  %7220 = bitcast float %7219 to i32
  %7221 = ashr i32 %7220, 1
  %7222 = add nsw i32 %7221, 532487669
  %7223 = bitcast i32 %7222 to float
  %7224 = fadd fast float %7223, %5967
  %7225 = fmul fast float %7215, %7210
  %7226 = fsub fast float 1.000000e+00, %7210
  %7227 = fadd fast float %7226, %7225
  %7228 = fmul fast float %7211, %7211
  %7229 = fmul fast float %7228, %7216
  %7230 = fadd fast float %7229, %7215
  %7231 = bitcast float %7230 to i32
  %7232 = ashr i32 %7231, 1
  %7233 = add nsw i32 %7232, 532487669
  %7234 = bitcast i32 %7233 to float
  %7235 = fadd fast float %7234, %7211
  %7236 = fmul fast float %7227, %7227
  %7237 = fmul fast float %7236, %7224
  %7238 = fmul fast float %7237, %7235
  %7239 = fdiv fast float 0x3FF0A00000000000, %7238
  %7240 = fmul fast float %7239, %7215
  %7241 = fmul fast float %6084, 0x3FF9999980000000
  %7242 = fsub fast float 5.000000e+00, %7241
  %7243 = call float @dx.op.unary.f32(i32 6, float %7203)  ; FAbs(value)
  %7244 = fsub fast float 1.000000e+00, %7243
  %7245 = fmul fast float %6084, 0x41D9660740000000
  %7246 = fadd fast float %7245, 0xC1EFBF8940000000
  %7247 = bitcast float %7244 to i32
  %7248 = sitofp i32 %7247 to float
  %7249 = fmul fast float %7248, %7242
  %7250 = fadd fast float %7246, %7249
  %7251 = fptosi float %7250 to i32
  %7252 = bitcast i32 %7251 to float
  %7253 = fsub fast float 1.000000e+00, %5956
  %7254 = fsub fast float 1.000000e+00, %5957
  %7255 = fsub fast float 1.000000e+00, %5965
  %7256 = fmul fast float %7252, %7253
  %7257 = fmul fast float %7252, %7254
  %7258 = fmul fast float %7252, %7255
  %7259 = fadd fast float %7256, %5956
  %7260 = fadd fast float %7257, %5957
  %7261 = fadd fast float %7258, %5965
  br i1 %6107, label %7262, label %7285

; <label>:7262                                    ; preds = %7175
  %7263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4756, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7264 = extractvalue %dx.types.ResRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.ResRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.ResRet.f32 %7263, 2
  %7267 = fadd fast float %7264, -5.000000e-01
  %7268 = fadd fast float %7265, -5.000000e-01
  %7269 = fadd fast float %7266, -5.000000e-01
  %7270 = fmul fast float %5956, 4.000000e+00
  %7271 = fmul fast float %7270, %7253
  %7272 = fmul fast float %7271, %7267
  %7273 = fmul fast float %5957, 4.000000e+00
  %7274 = fmul fast float %7273, %7254
  %7275 = fmul fast float %7274, %7268
  %7276 = fmul fast float %5965, 4.000000e+00
  %7277 = fmul fast float %7276, %7255
  %7278 = fmul fast float %7277, %7269
  %7279 = fadd fast float %7272, %7259
  %7280 = fadd fast float %7275, %7260
  %7281 = fadd fast float %7278, %7261
  %7282 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7283 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7284 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  br label %7285

; <label>:7285                                    ; preds = %7262, %7175
  %7286 = phi float [ %7282, %7262 ], [ %7259, %7175 ]
  %7287 = phi float [ %7283, %7262 ], [ %7260, %7175 ]
  %7288 = phi float [ %7284, %7262 ], [ %7261, %7175 ]
  %7289 = fmul fast float %7202, 9.843750e-01
  %7290 = fadd fast float %7289, 7.812500e-03
  %7291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7290, float %6088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.ResRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.ResRet.f32 %7291, 2
  %7295 = extractvalue %dx.types.ResRet.f32 %7291, 3
  %7296 = fsub fast float %7294, %7292
  %7297 = fsub fast float %7295, %7293
  %7298 = fmul fast float %7296, %6094
  %7299 = fmul fast float %7297, %6094
  %7300 = fadd fast float %7298, %7292
  %7301 = fadd fast float %7299, %7293
  %7302 = fmul fast float %7300, %5956
  %7303 = fmul fast float %7300, %5957
  %7304 = fmul fast float %7300, %5965
  %7305 = fadd fast float %7302, %7301
  %7306 = fadd fast float %7303, %7301
  %7307 = fadd fast float %7304, %7301
  br i1 %6107, label %7308, label %7331

; <label>:7308                                    ; preds = %7285
  %7309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4756, float %7202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 0
  %7311 = extractvalue %dx.types.ResRet.f32 %7309, 1
  %7312 = extractvalue %dx.types.ResRet.f32 %7309, 2
  %7313 = fadd fast float %7310, -5.000000e-01
  %7314 = fadd fast float %7311, -5.000000e-01
  %7315 = fadd fast float %7312, -5.000000e-01
  %7316 = fmul fast float %5956, 4.000000e+00
  %7317 = fmul fast float %7316, %7253
  %7318 = fmul fast float %7317, %7313
  %7319 = fmul fast float %5957, 4.000000e+00
  %7320 = fmul fast float %7319, %7254
  %7321 = fmul fast float %7320, %7314
  %7322 = fmul fast float %5965, 4.000000e+00
  %7323 = fmul fast float %7322, %7255
  %7324 = fmul fast float %7323, %7315
  %7325 = fadd fast float %7318, %7305
  %7326 = fadd fast float %7321, %7306
  %7327 = fadd fast float %7324, %7307
  %7328 = call float @dx.op.unary.f32(i32 7, float %7325)  ; Saturate(value)
  %7329 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7330 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  br label %7331

; <label>:7331                                    ; preds = %7308, %7285
  %7332 = phi float [ %7328, %7308 ], [ %7305, %7285 ]
  %7333 = phi float [ %7329, %7308 ], [ %7306, %7285 ]
  %7334 = phi float [ %7330, %7308 ], [ %7307, %7285 ]
  %7335 = call float @dx.op.binary.f32(i32 35, float %7333, float %7334)  ; FMax(a,b)
  %7336 = call float @dx.op.binary.f32(i32 35, float %7332, float %7335)  ; FMax(a,b)
  %7337 = fsub fast float 1.000000e+00, %7336
  %7338 = fmul fast float %7286, %7240
  %7339 = fmul fast float %7287, %7240
  %7340 = fmul fast float %7288, %7240
  %7341 = fsub fast float 1.000000e+00, %7203
  %7342 = bitcast float %7341 to i32
  %7343 = sitofp i32 %7342 to float
  %7344 = fmul fast float %7343, 5.000000e+00
  %7345 = fadd fast float %7344, 0xC1EFBF8940000000
  %7346 = fptosi float %7345 to i32
  %7347 = bitcast i32 %7346 to float
  %7348 = fmul fast float %7347, %4757
  %7349 = fmul fast float %7337, %7348
  %7350 = fmul fast float %7349, %6210
  %7351 = fmul fast float %7349, %6211
  %7352 = fmul fast float %7349, %6212
  %7353 = fadd fast float %7350, %7338
  %7354 = fadd fast float %7351, %7339
  %7355 = fadd fast float %7352, %7340
  %7356 = fmul fast float %7208, %7191
  %7357 = fmul fast float %7356, %7337
  %7358 = fmul fast float %7208, %7192
  %7359 = fmul fast float %7358, %7337
  %7360 = fmul fast float %7208, %7193
  %7361 = fmul fast float %7360, %7337
  %7362 = fmul fast float %7356, %7353
  %7363 = fmul fast float %7358, %7354
  %7364 = fmul fast float %7360, %7355
  %7365 = fadd fast float %7357, %6192
  %7366 = fmul fast float %7365, %4753
  %7367 = fadd fast float %7359, %6194
  %7368 = fmul fast float %7367, %4753
  %7369 = fadd fast float %7361, %6196
  %7370 = fmul fast float %7369, %4753
  %7371 = fadd fast float %7362, %6270
  %7372 = fmul fast float %7371, %4753
  %7373 = fadd fast float %7363, %6273
  %7374 = fmul fast float %7373, %4753
  %7375 = fadd fast float %7364, %6276
  %7376 = fmul fast float %7375, %4753
  br label %7377

; <label>:7377                                    ; preds = %7331, %7109, %6134
  %7378 = phi float [ %6271, %6134 ], [ %6271, %7109 ], [ %7372, %7331 ]
  %7379 = phi float [ %6274, %6134 ], [ %6274, %7109 ], [ %7374, %7331 ]
  %7380 = phi float [ %6277, %6134 ], [ %6277, %7109 ], [ %7376, %7331 ]
  %7381 = phi float [ %6266, %6134 ], [ %6266, %7109 ], [ %7366, %7331 ]
  %7382 = phi float [ %6267, %6134 ], [ %6267, %7109 ], [ %7368, %7331 ]
  %7383 = phi float [ %6268, %6134 ], [ %6268, %7109 ], [ %7370, %7331 ]
  %7384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7385 = extractvalue %dx.types.CBufRet.i32 %7384, 0
  %7386 = icmp eq i32 %7385, 0
  br i1 %7386, label %8019, label %7387

; <label>:7387                                    ; preds = %7377
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 2
  %7390 = extractvalue %dx.types.CBufRet.f32 %7388, 3
  %7391 = fmul fast float %7389, %110
  %7392 = fmul fast float %7390, %111
  %7393 = fptoui float %7391 to i32
  %7394 = fptoui float %7392 to i32
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.CBufRet.f32 %7395, 2
  %7398 = extractvalue %dx.types.CBufRet.f32 %7395, 3
  %7399 = fadd fast float %101, -4.000000e+00
  %7400 = call float @dx.op.binary.f32(i32 35, float %7399, float 0.000000e+00)  ; FMax(a,b)
  %7401 = fadd fast float %7400, %7396
  %7402 = fmul fast float %7401, %7397
  %7403 = call float @dx.op.unary.f32(i32 23, float %7402)  ; Log(value)
  %7404 = fmul fast float %7403, %7398
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 2
  %7407 = fmul fast float %7404, %7406
  %7408 = call float @dx.op.unary.f32(i32 7, float %7407)  ; Saturate(value)
  %7409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7410 = extractvalue %dx.types.CBufRet.i32 %7409, 1
  %7411 = add i32 %7410, -1
  %7412 = uitofp i32 %7410 to float
  %7413 = fmul fast float %7412, %7408
  %7414 = fptoui float %7413 to i32
  %7415 = call i32 @dx.op.binary.i32(i32 40, i32 %7414, i32 %7411)  ; UMin(a,b)
  %7416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.i32 %7416, 2
  %7418 = extractvalue %dx.types.CBufRet.i32 %7416, 3
  %7419 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7394, i32 %7417, i32 %7393)  ; UMad(a,b,c)
  %7420 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7415, i32 %7418, i32 %7419)  ; UMad(a,b,c)
  %7421 = add nsw i32 %7385, -1
  %7422 = call i32 @dx.op.binary.i32(i32 37, i32 %7421, i32 0)  ; IMax(a,b)
  %7423 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7424 = fptoui float %7423 to i32
  %7425 = lshr i32 %7424, 5
  %7426 = call i32 @dx.op.binary.i32(i32 40, i32 %7425, i32 8191)  ; UMin(a,b)
  %7427 = shl i32 %7426, 2
  %7428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7427, i32 undef)  ; BufferLoad(srv,index,wot)
  %7429 = extractvalue %dx.types.ResRet.i32 %7428, 0
  %7430 = lshr i32 %7429, 16
  %7431 = and i32 %7429, 65535
  %7432 = lshr i32 %7429, 21
  %7433 = lshr i32 %7431, 5
  %7434 = call i32 @dx.op.binary.i32(i32 40, i32 %7433, i32 %7422)  ; UMin(a,b)
  %7435 = icmp ugt i32 %7432, %7434
  br i1 %7435, label %8019, label %7436

; <label>:7436                                    ; preds = %7387
  br label %7437

; <label>:7437                                    ; preds = %8009, %7436
  %7438 = phi i32 [ %8016, %8009 ], [ %7432, %7436 ]
  %7439 = phi float [ %8010, %8009 ], [ %7378, %7436 ]
  %7440 = phi float [ %8011, %8009 ], [ %7379, %7436 ]
  %7441 = phi float [ %8012, %8009 ], [ %7380, %7436 ]
  %7442 = phi float [ %8013, %8009 ], [ %7381, %7436 ]
  %7443 = phi float [ %8014, %8009 ], [ %7382, %7436 ]
  %7444 = phi float [ %8015, %8009 ], [ %7383, %7436 ]
  %7445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.i32 %7445, 0
  %7447 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7420, i32 %7446, i32 %7438)  ; UMad(a,b,c)
  %7448 = shl i32 %7447, 2
  %7449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7448, i32 undef)  ; BufferLoad(srv,index,wot)
  %7450 = extractvalue %dx.types.ResRet.i32 %7449, 0
  %7451 = shl i32 %7438, 5
  %7452 = sub nsw i32 %7430, %7451
  %7453 = call i32 @dx.op.binary.i32(i32 37, i32 %7452, i32 0)  ; IMax(a,b)
  %7454 = call i32 @dx.op.binary.i32(i32 38, i32 %7453, i32 31)  ; IMin(a,b)
  %7455 = sub nsw i32 1, %7430
  %7456 = add nsw i32 %7455, %7431
  %7457 = call i32 @dx.op.binary.i32(i32 37, i32 %7456, i32 0)  ; IMax(a,b)
  %7458 = call i32 @dx.op.binary.i32(i32 38, i32 %7457, i32 32)  ; IMin(a,b)
  %7459 = and i32 %7458, 31
  %7460 = shl i32 -1, %7459
  %7461 = xor i32 %7460, -1
  %7462 = and i32 %7454, 31
  %7463 = shl i32 %7461, %7462
  %7464 = icmp eq i32 %7458, 32
  %7465 = select i1 %7464, i32 -1, i32 %7463
  %7466 = and i32 %7465, %7450
  %7467 = icmp eq i32 %7466, 0
  br i1 %7467, label %8009, label %7468

; <label>:7468                                    ; preds = %7437
  br label %7469

; <label>:7469                                    ; preds = %7603, %7468
  %7470 = phi i32 [ %7481, %7603 ], [ %7466, %7468 ]
  %7471 = phi float [ %7604, %7603 ], [ %7439, %7468 ]
  %7472 = phi float [ %7605, %7603 ], [ %7440, %7468 ]
  %7473 = phi float [ %7606, %7603 ], [ %7441, %7468 ]
  %7474 = phi float [ %7607, %7603 ], [ %7442, %7468 ]
  %7475 = phi float [ %7608, %7603 ], [ %7443, %7468 ]
  %7476 = phi float [ %7609, %7603 ], [ %7444, %7468 ]
  %7477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7470)  ; FirstbitLo(value)
  %7478 = add i32 %7477, %7451
  %7479 = and i32 %7477, 31
  %7480 = shl i32 1, %7479
  %7481 = xor i32 %7480, %7470
  %7482 = mul i32 %7478, 112
  %7483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7482, i32 undef)  ; BufferLoad(srv,index,wot)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 0
  %7485 = extractvalue %dx.types.ResRet.f32 %7483, 1
  %7486 = extractvalue %dx.types.ResRet.f32 %7483, 2
  %7487 = or i32 %7482, 12
  %7488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7487, i32 undef)  ; BufferLoad(srv,index,wot)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = add i32 %7482, 16
  %7491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7490, i32 undef)  ; BufferLoad(srv,index,wot)
  %7492 = extractvalue %dx.types.ResRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.ResRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.ResRet.f32 %7491, 2
  %7495 = add i32 %7482, 28
  %7496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7495, i32 undef)  ; BufferLoad(srv,index,wot)
  %7497 = extractvalue %dx.types.ResRet.i32 %7496, 0
  %7498 = add i32 %7482, 44
  %7499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7498, i32 undef)  ; BufferLoad(srv,index,wot)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = add i32 %7482, 48
  %7502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7501, i32 undef)  ; BufferLoad(srv,index,wot)
  %7503 = extractvalue %dx.types.ResRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.ResRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.ResRet.f32 %7502, 2
  %7506 = extractvalue %dx.types.ResRet.f32 %7502, 3
  %7507 = add i32 %7482, 64
  %7508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7507, i32 undef)  ; BufferLoad(srv,index,wot)
  %7509 = extractvalue %dx.types.ResRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.ResRet.f32 %7508, 1
  %7511 = extractvalue %dx.types.ResRet.f32 %7508, 2
  %7512 = extractvalue %dx.types.ResRet.f32 %7508, 3
  %7513 = add i32 %7482, 80
  %7514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7513, i32 undef)  ; BufferLoad(srv,index,wot)
  %7515 = extractvalue %dx.types.ResRet.f32 %7514, 1
  %7516 = extractvalue %dx.types.ResRet.f32 %7514, 2
  %7517 = add i32 %7482, 92
  %7518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7517, i32 undef)  ; BufferLoad(srv,index,wot)
  %7519 = extractvalue %dx.types.ResRet.i32 %7518, 0
  %7520 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7521 = select i1 %269, float %7515, float %7484
  %7522 = select i1 %269, float %7520, float %7485
  %7523 = select i1 %269, float %7516, float %7486
  %7524 = and i32 %7519, 65535
  %7525 = uitofp i32 %7524 to float
  %7526 = lshr i32 %7519, 16
  %7527 = uitofp i32 %7526 to float
  %7528 = and i32 %7497, 65535
  %7529 = and i32 %7497, 50331648
  %7530 = icmp eq i32 %7529, 33554432
  %7531 = fsub fast float %7503, %197
  %7532 = fsub fast float %7504, %198
  %7533 = fsub fast float %7505, %199
  %7534 = call float @dx.op.dot3.f32(i32 55, float %7531, float %7532, float %7533, float %7531, float %7532, float %7533)  ; Dot3(ax,ay,az,bx,by,bz)
  %7535 = call float @dx.op.unary.f32(i32 24, float %7534)  ; Sqrt(value)
  %7536 = fdiv fast float 1.000000e+00, %7535
  %7537 = fmul fast float %7536, %7531
  %7538 = fmul fast float %7536, %7532
  %7539 = fmul fast float %7536, %7533
  %7540 = fadd fast float %7535, %7489
  %7541 = fdiv fast float 1.000000e+00, %7540
  %7542 = fmul float %7500, %7541
  %7543 = fmul float %7542, %7542
  %7544 = call float @dx.op.unary.f32(i32 7, float %7543)  ; Saturate(value)
  br i1 %7530, label %7545, label %7566

; <label>:7545                                    ; preds = %7469
  %7546 = fmul fast float %7511, %7492
  %7547 = fmul fast float %7511, %7493
  %7548 = fmul fast float %7511, %7494
  %7549 = fadd fast float %7531, %7546
  %7550 = fadd fast float %7532, %7547
  %7551 = fadd fast float %7533, %7548
  %7552 = call float @dx.op.dot3.f32(i32 55, float %7549, float %7550, float %7551, float %7549, float %7550, float %7551)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = call float @dx.op.unary.f32(i32 25, float %7552)  ; Rsqrt(value)
  %7554 = fmul fast float %7553, %7549
  %7555 = fmul fast float %7553, %7550
  %7556 = fmul fast float %7553, %7551
  %7557 = fsub fast float %197, %7503
  %7558 = fsub fast float %198, %7504
  %7559 = fsub fast float %199, %7505
  %7560 = fsub fast float -0.000000e+00, %7557
  %7561 = fsub fast float -0.000000e+00, %7558
  %7562 = fsub fast float -0.000000e+00, %7559
  %7563 = call float @dx.op.dot3.f32(i32 55, float %7560, float %7561, float %7562, float %7492, float %7493, float %7494)  ; Dot3(ax,ay,az,bx,by,bz)
  %7564 = fcmp fast ogt float %7563, 0.000000e+00
  %7565 = uitofp i1 %7564 to float
  br label %7566

; <label>:7566                                    ; preds = %7545, %7469
  %7567 = phi float [ %7565, %7545 ], [ 1.000000e+00, %7469 ]
  %7568 = phi float [ %7554, %7545 ], [ %7537, %7469 ]
  %7569 = phi float [ %7555, %7545 ], [ %7538, %7469 ]
  %7570 = phi float [ %7556, %7545 ], [ %7539, %7469 ]
  %7571 = call float @dx.op.dot3.f32(i32 55, float %7492, float %7493, float %7494, float %7568, float %7569, float %7570)  ; Dot3(ax,ay,az,bx,by,bz)
  %7572 = fmul fast float %7571, %7571
  %7573 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7574 = fsub fast float 1.000000e+00, %7573
  %7575 = fmul fast float %7574, 5.000000e-01
  %7576 = fcmp fast ogt float %7571, 0.000000e+00
  %7577 = fsub fast float 1.000000e+00, %7575
  %7578 = select i1 %7576, float %7575, float %7577
  %7579 = fmul fast float %7578, %7527
  %7580 = fadd fast float %7579, %7525
  %7581 = fmul fast float %7580, 0x3EF0001000000000
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7581, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = fmul fast float %7571, %7509
  %7585 = fadd fast float %7584, %7510
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = select i1 %7530, float 1.000000e+00, float %7586
  %7588 = select i1 %7530, float %7586, float 1.000000e+00
  %7589 = fmul fast float %7535, %7506
  %7590 = fsub fast float 1.000000e+00, %7589
  %7591 = fmul fast float %7590, %7512
  %7592 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7593 = fmul fast float %7592, %7588
  %7594 = fmul fast float %7593, 2.000000e+00
  %7595 = fsub fast float 3.000000e+00, %7594
  %7596 = fmul fast float %7583, %7567
  %7597 = fmul fast float %7593, %7593
  %7598 = fmul fast float %7597, %7596
  %7599 = fmul fast float %7598, %7595
  %7600 = call float @dx.op.binary.f32(i32 36, float %7599, float %7599)  ; FMin(a,b)
  %7601 = call float @dx.op.binary.f32(i32 36, float %7599, float %7600)  ; FMin(a,b)
  %7602 = fcmp fast ogt float %7601, 0.000000e+00
  br i1 %7602, label %7611, label %7603, !dx.controlflow.hints !126

; <label>:7603                                    ; preds = %7965, %7711, %7566
  %7604 = phi float [ %7471, %7711 ], [ %7471, %7566 ], [ %8005, %7965 ]
  %7605 = phi float [ %7472, %7711 ], [ %7472, %7566 ], [ %8006, %7965 ]
  %7606 = phi float [ %7473, %7711 ], [ %7473, %7566 ], [ %8007, %7965 ]
  %7607 = phi float [ %7474, %7711 ], [ %7474, %7566 ], [ %7999, %7965 ]
  %7608 = phi float [ %7475, %7711 ], [ %7475, %7566 ], [ %8000, %7965 ]
  %7609 = phi float [ %7476, %7711 ], [ %7476, %7566 ], [ %8001, %7965 ]
  %7610 = icmp eq i32 %7470, %7480
  br i1 %7610, label %8008, label %7469

; <label>:7611                                    ; preds = %7566
  %7612 = icmp eq i32 %7528, 255
  br i1 %7612, label %7711, label %7613, !dx.controlflow.hints !127

; <label>:7613                                    ; preds = %7611
  %7614 = mul nuw nsw i32 %7528, 176
  %7615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7614, i32 undef)  ; BufferLoad(srv,index,wot)
  %7616 = extractvalue %dx.types.ResRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.ResRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.ResRet.f32 %7615, 2
  %7619 = extractvalue %dx.types.ResRet.f32 %7615, 3
  %7620 = add nuw nsw i32 %7614, 16
  %7621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7620, i32 undef)  ; BufferLoad(srv,index,wot)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.ResRet.f32 %7621, 1
  %7624 = add nuw nsw i32 %7614, 32
  %7625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7624, i32 undef)  ; BufferLoad(srv,index,wot)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.ResRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.ResRet.f32 %7625, 2
  %7629 = add nuw nsw i32 %7614, 48
  %7630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7629, i32 undef)  ; BufferLoad(srv,index,wot)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.ResRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.ResRet.f32 %7630, 2
  %7634 = extractvalue %dx.types.ResRet.f32 %7630, 3
  %7635 = add nuw nsw i32 %7614, 64
  %7636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7635, i32 undef)  ; BufferLoad(srv,index,wot)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.ResRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.ResRet.f32 %7636, 2
  %7640 = extractvalue %dx.types.ResRet.f32 %7636, 3
  %7641 = add nuw nsw i32 %7614, 80
  %7642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = extractvalue %dx.types.ResRet.f32 %7642, 3
  %7647 = add nuw nsw i32 %7614, 96
  %7648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7647, i32 undef)  ; BufferLoad(srv,index,wot)
  %7649 = extractvalue %dx.types.ResRet.f32 %7648, 0
  %7650 = extractvalue %dx.types.ResRet.f32 %7648, 1
  %7651 = extractvalue %dx.types.ResRet.f32 %7648, 2
  %7652 = extractvalue %dx.types.ResRet.f32 %7648, 3
  %7653 = bitcast float %7623 to i32
  %7654 = fmul fast float %7628, %117
  %7655 = fmul fast float %7628, %118
  %7656 = fmul fast float %7628, %119
  %7657 = fadd fast float %7654, %197
  %7658 = fadd fast float %7655, %198
  %7659 = fadd fast float %7656, %199
  %7660 = fmul fast float %7657, %7631
  %7661 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7637, float %7660)  ; FMad(a,b,c)
  %7662 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7643, float %7661)  ; FMad(a,b,c)
  %7663 = fadd fast float %7662, %7649
  %7664 = fmul fast float %7657, %7632
  %7665 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7638, float %7664)  ; FMad(a,b,c)
  %7666 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7644, float %7665)  ; FMad(a,b,c)
  %7667 = fadd fast float %7666, %7650
  %7668 = fmul fast float %7657, %7633
  %7669 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7639, float %7668)  ; FMad(a,b,c)
  %7670 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7645, float %7669)  ; FMad(a,b,c)
  %7671 = fadd fast float %7670, %7651
  %7672 = fmul fast float %7657, %7634
  %7673 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7640, float %7672)  ; FMad(a,b,c)
  %7674 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7646, float %7673)  ; FMad(a,b,c)
  %7675 = fadd fast float %7674, %7652
  %7676 = fdiv fast float %7663, %7675
  %7677 = fdiv fast float %7667, %7675
  %7678 = fdiv fast float %7671, %7675
  %7679 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7678)  ; FMax(a,b)
  %7680 = fmul fast float %280, 0x401921FB60000000
  %7681 = call float @dx.op.unary.f32(i32 13, float %7680)  ; Sin(value)
  %7682 = call float @dx.op.unary.f32(i32 12, float %7680)  ; Cos(value)
  %7683 = fsub fast float -0.000000e+00, %7681
  %7684 = fmul fast float %7618, 5.000000e-01
  %7685 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7686 = call float @dx.op.unary.f32(i32 22, float %7685)  ; Frc(value)
  %7687 = fmul fast float %7686, 0x404A7DD040000000
  %7688 = call float @dx.op.unary.f32(i32 22, float %7687)  ; Frc(value)
  %7689 = fmul fast float %7688, %7627
  %7690 = fadd fast float %7689, %7684
  %7691 = call float @dx.op.tertiary.f32(i32 46, float %7690, float %7683, float 0.000000e+00)  ; FMad(a,b,c)
  %7692 = call float @dx.op.tertiary.f32(i32 46, float %7690, float %7682, float 0.000000e+00)  ; FMad(a,b,c)
  %7693 = fadd fast float %7691, %7676
  %7694 = fadd fast float %7692, %7677
  %7695 = fmul fast float %7693, %7622
  %7696 = fmul fast float %7694, %7622
  %7697 = call float @dx.op.binary.f32(i32 35, float %7695, float %7618)  ; FMax(a,b)
  %7698 = call float @dx.op.binary.f32(i32 35, float %7696, float %7618)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7697, float %7619)  ; FMin(a,b)
  %7700 = call float @dx.op.binary.f32(i32 36, float %7698, float %7619)  ; FMin(a,b)
  %7701 = fadd fast float %7699, %7616
  %7702 = fadd fast float %7700, %7617
  %7703 = uitofp i32 %7653 to float
  %7704 = fadd fast float %7679, %7626
  %7705 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7701, float %7702, float %7703, float undef, i32 0, i32 0, i32 undef, float %7704)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7706 = extractvalue %dx.types.ResRet.f32 %7705, 0
  %7707 = fadd fast float %7706, -1.000000e+00
  %7708 = fmul fast float %7707, %7587
  %7709 = fadd fast float %7708, 1.000000e+00
  %7710 = fmul fast float %7709, %7599
  br label %7711

; <label>:7711                                    ; preds = %7613, %7611
  %7712 = phi float [ %7710, %7613 ], [ %7599, %7611 ]
  %7713 = call float @dx.op.binary.f32(i32 36, float %7712, float %7712)  ; FMin(a,b)
  %7714 = call float @dx.op.binary.f32(i32 36, float %7712, float %7713)  ; FMin(a,b)
  %7715 = fcmp fast ogt float %7714, 0.000000e+00
  br i1 %7715, label %7716, label %7603, !dx.controlflow.hints !128

; <label>:7716                                    ; preds = %7711
  %7717 = fmul fast float %7712, %7521
  %7718 = fmul fast float %7712, %7522
  %7719 = fmul fast float %7712, %7523
  %7720 = fsub fast float %7505, %5160
  %7721 = fcmp fast ogt float %7720, 0.000000e+00
  %7722 = fsub fast float %199, %5160
  %7723 = fcmp fast ogt float %7722, 0.000000e+00
  %7724 = xor i1 %7723, %7721
  %7725 = fsub fast float %5160, %7505
  %7726 = fmul fast float %7725, 2.000000e+00
  %7727 = fadd fast float %7726, %7505
  %7728 = select i1 %7724, float %7505, float %7727
  %7729 = fsub fast float %7728, %199
  %7730 = call float @dx.op.dot3.f32(i32 55, float %7531, float %7532, float %7729, float %7531, float %7532, float %7729)  ; Dot3(ax,ay,az,bx,by,bz)
  %7731 = call float @dx.op.unary.f32(i32 25, float %7730)  ; Rsqrt(value)
  %7732 = fmul fast float %7731, %7531
  %7733 = fmul fast float %7731, %7532
  %7734 = fmul fast float %7731, %7729
  %7735 = fsub fast float %5160, %199
  %7736 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7735)  ; Dot3(ax,ay,az,bx,by,bz)
  %7737 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7732, float %7733, float %7734)  ; Dot3(ax,ay,az,bx,by,bz)
  %7738 = fdiv fast float 1.000000e+00, %7737
  %7739 = fmul fast float %7738, %7736
  %7740 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7722, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7741 = fcmp fast ogt float %7740, 0.000000e+00
  %7742 = fcmp fast olt float %7740, 0.000000e+00
  %7743 = zext i1 %7741 to i32
  %7744 = zext i1 %7742 to i32
  %7745 = sub nsw i32 %7743, %7744
  %7746 = sitofp i32 %7745 to float
  %7747 = fsub fast float %7728, %5160
  %7748 = call float @dx.op.dot3.f32(i32 55, float %7531, float %7532, float %7747, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7749 = fcmp fast ogt float %7748, 0.000000e+00
  %7750 = fcmp fast olt float %7748, 0.000000e+00
  %7751 = zext i1 %7749 to i32
  %7752 = zext i1 %7750 to i32
  %7753 = sub nsw i32 %7751, %7752
  %7754 = sitofp i32 %7753 to float
  %7755 = fcmp fast une float %7746, %7754
  br i1 %7755, label %7756, label %7766

; <label>:7756                                    ; preds = %7716
  %7757 = fmul fast float %7739, %7734
  %7758 = fmul fast float %7739, %7733
  %7759 = fmul fast float %7739, %7732
  %7760 = fmul fast float %7759, %7759
  %7761 = fmul fast float %7758, %7758
  %7762 = fadd fast float %7760, %7761
  %7763 = fmul fast float %7757, %7757
  %7764 = fadd fast float %7762, %7763
  %7765 = call float @dx.op.unary.f32(i32 24, float %7764)  ; Sqrt(value)
  br label %7778

; <label>:7766                                    ; preds = %7716
  %7767 = icmp slt i32 %7745, 0
  br i1 %7767, label %7768, label %7778

; <label>:7768                                    ; preds = %7766
  %7769 = fsub fast float %197, %7503
  %7770 = fsub fast float %198, %7504
  %7771 = fsub fast float %199, %7728
  %7772 = fmul fast float %7769, %7769
  %7773 = fmul fast float %7770, %7770
  %7774 = fadd fast float %7772, %7773
  %7775 = fmul fast float %7771, %7771
  %7776 = fadd fast float %7774, %7775
  %7777 = call float @dx.op.unary.f32(i32 24, float %7776)  ; Sqrt(value)
  br label %7778

; <label>:7778                                    ; preds = %7768, %7766, %7756
  %7779 = phi float [ %7765, %7756 ], [ %7777, %7768 ], [ 0.000000e+00, %7766 ]
  %7780 = and i1 %7723, %7721
  %7781 = fsub fast float -0.000000e+00, %7779
  %7782 = select i1 %7780, float -0.000000e+00, float %7781
  %7783 = fmul fast float %5161, 0x3FF7154760000000
  %7784 = fmul fast float %7783, %7782
  %7785 = fmul fast float %5162, 0x3FF7154760000000
  %7786 = fmul fast float %7785, %7782
  %7787 = fmul fast float %5163, 0x3FF7154760000000
  %7788 = fmul fast float %7787, %7782
  %7789 = call float @dx.op.unary.f32(i32 21, float %7784)  ; Exp(value)
  %7790 = call float @dx.op.unary.f32(i32 21, float %7786)  ; Exp(value)
  %7791 = call float @dx.op.unary.f32(i32 21, float %7788)  ; Exp(value)
  %7792 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7793 = call float @dx.op.unary.f32(i32 7, float %7790)  ; Saturate(value)
  %7794 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7795 = fmul fast float %7717, %7792
  %7796 = fmul fast float %7718, %7793
  %7797 = fmul fast float %7719, %7794
  %7798 = fsub fast float %7537, %5952
  %7799 = fsub fast float %7538, %5951
  %7800 = fsub fast float %7539, %5950
  %7801 = call float @dx.op.dot3.f32(i32 55, float %7798, float %7799, float %7800, float %7798, float %7799, float %7800)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = call float @dx.op.unary.f32(i32 25, float %7801)  ; Rsqrt(value)
  %7803 = fmul fast float %7802, %7798
  %7804 = fmul fast float %7802, %7799
  %7805 = fmul fast float %7802, %7800
  %7806 = call float @dx.op.dot3.f32(i32 55, float %7537, float %7538, float %7539, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %7807 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5948, float %5947, float %7803, float %7804, float %7805)  ; Dot3(ax,ay,az,bx,by,bz)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7809 = fmul fast float %7808, %7544
  %7810 = fmul fast float %7808, %7808
  %7811 = fmul fast float %7810, %5980
  %7812 = call float @dx.op.unary.f32(i32 7, float %7811)  ; Saturate(value)
  %7813 = fmul fast float %7809, %7812
  %7814 = bitcast float %7534 to i32
  %7815 = ashr i32 %7814, 1
  %7816 = sub nsw i32 1597463007, %7815
  %7817 = bitcast i32 %7816 to float
  %7818 = fmul fast float %7817, %7531
  %7819 = fmul fast float %7817, %7532
  %7820 = fmul fast float %7817, %7533
  %7821 = fsub fast float %7818, %5952
  %7822 = fsub fast float %7819, %5951
  %7823 = fsub fast float %7820, %5950
  %7824 = call float @dx.op.dot3.f32(i32 55, float %7821, float %7822, float %7823, float %7821, float %7822, float %7823)  ; Dot3(ax,ay,az,bx,by,bz)
  %7825 = call float @dx.op.unary.f32(i32 25, float %7824)  ; Rsqrt(value)
  %7826 = fmul fast float %7821, %7825
  %7827 = fmul fast float %7822, %7825
  %7828 = fmul fast float %7823, %7825
  %7829 = call float @dx.op.dot3.f32(i32 55, float %5959, float %5960, float %5961, float %7826, float %7827, float %7828)  ; Dot3(ax,ay,az,bx,by,bz)
  %7830 = fmul fast float %7829, %7829
  %7831 = call float @dx.op.unary.f32(i32 6, float %7806)  ; FAbs(value)
  %7832 = fsub fast float 1.000000e+00, %5962
  %7833 = call float @dx.op.binary.f32(i32 35, float %7832, float 0x3F847AE140000000)  ; FMax(a,b)
  %7834 = fmul fast float %7833, %7833
  %7835 = fmul fast float %7834, %7834
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fmul fast float %5967, %5967
  %7838 = fmul fast float %7837, %7836
  %7839 = fadd fast float %7838, %7835
  %7840 = bitcast float %7839 to i32
  %7841 = ashr i32 %7840, 1
  %7842 = add nsw i32 %7841, 532487669
  %7843 = bitcast i32 %7842 to float
  %7844 = fadd fast float %7843, %5967
  %7845 = fmul fast float %7835, %7830
  %7846 = fsub fast float 1.000000e+00, %7830
  %7847 = fadd fast float %7846, %7845
  %7848 = fmul fast float %7831, %7831
  %7849 = fmul fast float %7848, %7836
  %7850 = fadd fast float %7849, %7835
  %7851 = bitcast float %7850 to i32
  %7852 = ashr i32 %7851, 1
  %7853 = add nsw i32 %7852, 532487669
  %7854 = bitcast i32 %7853 to float
  %7855 = fadd fast float %7854, %7831
  %7856 = fmul fast float %7847, %7847
  %7857 = fmul fast float %7856, %7844
  %7858 = fmul fast float %7857, %7855
  %7859 = fdiv fast float 1.000000e+00, %7858
  %7860 = bitcast float %7835 to i32
  %7861 = sitofp i32 %7860 to float
  %7862 = fmul fast float %7861, 0x3FE7F73180000000
  %7863 = fadd fast float %7862, 0x41AFE27C40000000
  %7864 = fptosi float %7863 to i32
  %7865 = bitcast i32 %7864 to float
  %7866 = fmul fast float %7500, 0x3FD80E9D60000000
  %7867 = fmul fast float %7866, %7817
  %7868 = fadd fast float %7865, %7867
  %7869 = bitcast float %7868 to i32
  %7870 = sub nsw i32 2129859010, %7869
  %7871 = bitcast i32 %7870 to float
  %7872 = fmul fast float %7835, %7859
  %7873 = fmul fast float %7872, %7865
  %7874 = fmul fast float %7873, %7871
  %7875 = fmul fast float %6084, 0x3FF9999980000000
  %7876 = fsub fast float 5.000000e+00, %7875
  %7877 = call float @dx.op.unary.f32(i32 6, float %7807)  ; FAbs(value)
  %7878 = fsub fast float 1.000000e+00, %7877
  %7879 = fmul fast float %6084, 0x41D9660740000000
  %7880 = fadd fast float %7879, 0xC1EFBF8940000000
  %7881 = bitcast float %7878 to i32
  %7882 = sitofp i32 %7881 to float
  %7883 = fmul fast float %7882, %7876
  %7884 = fadd fast float %7880, %7883
  %7885 = fptosi float %7884 to i32
  %7886 = bitcast i32 %7885 to float
  %7887 = fsub fast float 1.000000e+00, %5956
  %7888 = fsub fast float 1.000000e+00, %5957
  %7889 = fsub fast float 1.000000e+00, %5965
  %7890 = fmul fast float %7886, %7887
  %7891 = fmul fast float %7886, %7888
  %7892 = fmul fast float %7886, %7889
  %7893 = fadd fast float %7890, %5956
  %7894 = fadd fast float %7891, %5957
  %7895 = fadd fast float %7892, %5965
  br i1 %6107, label %7896, label %7919

; <label>:7896                                    ; preds = %7778
  %7897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4756, float %7877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7898 = extractvalue %dx.types.ResRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.ResRet.f32 %7897, 1
  %7900 = extractvalue %dx.types.ResRet.f32 %7897, 2
  %7901 = fadd fast float %7898, -5.000000e-01
  %7902 = fadd fast float %7899, -5.000000e-01
  %7903 = fadd fast float %7900, -5.000000e-01
  %7904 = fmul fast float %5956, 4.000000e+00
  %7905 = fmul fast float %7904, %7887
  %7906 = fmul fast float %7905, %7901
  %7907 = fmul fast float %5957, 4.000000e+00
  %7908 = fmul fast float %7907, %7888
  %7909 = fmul fast float %7908, %7902
  %7910 = fmul fast float %5965, 4.000000e+00
  %7911 = fmul fast float %7910, %7889
  %7912 = fmul fast float %7911, %7903
  %7913 = fadd fast float %7906, %7893
  %7914 = fadd fast float %7909, %7894
  %7915 = fadd fast float %7912, %7895
  %7916 = call float @dx.op.unary.f32(i32 7, float %7913)  ; Saturate(value)
  %7917 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7918 = call float @dx.op.unary.f32(i32 7, float %7915)  ; Saturate(value)
  br label %7919

; <label>:7919                                    ; preds = %7896, %7778
  %7920 = phi float [ %7916, %7896 ], [ %7893, %7778 ]
  %7921 = phi float [ %7917, %7896 ], [ %7894, %7778 ]
  %7922 = phi float [ %7918, %7896 ], [ %7895, %7778 ]
  %7923 = fmul fast float %7806, 9.843750e-01
  %7924 = fadd fast float %7923, 7.812500e-03
  %7925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7924, float %6088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.ResRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.ResRet.f32 %7925, 2
  %7929 = extractvalue %dx.types.ResRet.f32 %7925, 3
  %7930 = fsub fast float %7928, %7926
  %7931 = fsub fast float %7929, %7927
  %7932 = fmul fast float %7930, %6094
  %7933 = fmul fast float %7931, %6094
  %7934 = fadd fast float %7932, %7926
  %7935 = fadd fast float %7933, %7927
  %7936 = fmul fast float %7934, %5956
  %7937 = fmul fast float %7934, %5957
  %7938 = fmul fast float %7934, %5965
  %7939 = fadd fast float %7936, %7935
  %7940 = fadd fast float %7937, %7935
  %7941 = fadd fast float %7938, %7935
  br i1 %6107, label %7942, label %7965

; <label>:7942                                    ; preds = %7919
  %7943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4756, float %7806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7944 = extractvalue %dx.types.ResRet.f32 %7943, 0
  %7945 = extractvalue %dx.types.ResRet.f32 %7943, 1
  %7946 = extractvalue %dx.types.ResRet.f32 %7943, 2
  %7947 = fadd fast float %7944, -5.000000e-01
  %7948 = fadd fast float %7945, -5.000000e-01
  %7949 = fadd fast float %7946, -5.000000e-01
  %7950 = fmul fast float %5956, 4.000000e+00
  %7951 = fmul fast float %7950, %7887
  %7952 = fmul fast float %7951, %7947
  %7953 = fmul fast float %5957, 4.000000e+00
  %7954 = fmul fast float %7953, %7888
  %7955 = fmul fast float %7954, %7948
  %7956 = fmul fast float %5965, 4.000000e+00
  %7957 = fmul fast float %7956, %7889
  %7958 = fmul fast float %7957, %7949
  %7959 = fadd fast float %7952, %7939
  %7960 = fadd fast float %7955, %7940
  %7961 = fadd fast float %7958, %7941
  %7962 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7963 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7964 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  br label %7965

; <label>:7965                                    ; preds = %7942, %7919
  %7966 = phi float [ %7962, %7942 ], [ %7939, %7919 ]
  %7967 = phi float [ %7963, %7942 ], [ %7940, %7919 ]
  %7968 = phi float [ %7964, %7942 ], [ %7941, %7919 ]
  %7969 = call float @dx.op.binary.f32(i32 35, float %7967, float %7968)  ; FMax(a,b)
  %7970 = call float @dx.op.binary.f32(i32 35, float %7966, float %7969)  ; FMax(a,b)
  %7971 = fsub fast float 1.000000e+00, %7970
  %7972 = fmul fast float %7920, %7874
  %7973 = fmul fast float %7921, %7874
  %7974 = fmul fast float %7922, %7874
  %7975 = fsub fast float 1.000000e+00, %7807
  %7976 = bitcast float %7975 to i32
  %7977 = sitofp i32 %7976 to float
  %7978 = fmul fast float %7977, 5.000000e+00
  %7979 = fadd fast float %7978, 0xC1EFBF8940000000
  %7980 = fptosi float %7979 to i32
  %7981 = bitcast i32 %7980 to float
  %7982 = fmul fast float %7981, %4757
  %7983 = fmul fast float %7971, %7982
  %7984 = fmul fast float %7983, %6210
  %7985 = fmul fast float %7983, %6211
  %7986 = fmul fast float %7983, %6212
  %7987 = fadd fast float %7984, %7972
  %7988 = fadd fast float %7985, %7973
  %7989 = fadd fast float %7986, %7974
  %7990 = fmul fast float %7795, %4753
  %7991 = fmul fast float %7990, %7813
  %7992 = fmul fast float %7991, %7971
  %7993 = fmul fast float %7796, %4753
  %7994 = fmul fast float %7993, %7813
  %7995 = fmul fast float %7994, %7971
  %7996 = fmul fast float %7797, %4753
  %7997 = fmul fast float %7996, %7813
  %7998 = fmul fast float %7997, %7971
  %7999 = fadd fast float %7992, %7474
  %8000 = fadd fast float %7995, %7475
  %8001 = fadd fast float %7998, %7476
  %8002 = fmul fast float %7991, %7987
  %8003 = fmul fast float %7994, %7988
  %8004 = fmul fast float %7997, %7989
  %8005 = fadd fast float %8002, %7471
  %8006 = fadd fast float %8003, %7472
  %8007 = fadd fast float %8004, %7473
  br label %7603

; <label>:8008                                    ; preds = %7603
  br label %8009

; <label>:8009                                    ; preds = %8008, %7437
  %8010 = phi float [ %7439, %7437 ], [ %7604, %8008 ]
  %8011 = phi float [ %7440, %7437 ], [ %7605, %8008 ]
  %8012 = phi float [ %7441, %7437 ], [ %7606, %8008 ]
  %8013 = phi float [ %7442, %7437 ], [ %7607, %8008 ]
  %8014 = phi float [ %7443, %7437 ], [ %7608, %8008 ]
  %8015 = phi float [ %7444, %7437 ], [ %7609, %8008 ]
  %8016 = add i32 %7438, 1
  %8017 = icmp ugt i32 %8016, %7434
  br i1 %8017, label %8018, label %7437

; <label>:8018                                    ; preds = %8009
  br label %8019

; <label>:8019                                    ; preds = %8018, %7387, %7377
  %8020 = phi float [ %7378, %7377 ], [ %7378, %7387 ], [ %8010, %8018 ]
  %8021 = phi float [ %7379, %7377 ], [ %7379, %7387 ], [ %8011, %8018 ]
  %8022 = phi float [ %7380, %7377 ], [ %7380, %7387 ], [ %8012, %8018 ]
  %8023 = phi float [ %7381, %7377 ], [ %7381, %7387 ], [ %8013, %8018 ]
  %8024 = phi float [ %7382, %7377 ], [ %7382, %7387 ], [ %8014, %8018 ]
  %8025 = phi float [ %7383, %7377 ], [ %7383, %7387 ], [ %8015, %8018 ]
  %8026 = fmul fast float %4753, %4753
  %8027 = fmul fast float %8026, %6246
  %8028 = fsub fast float -0.000000e+00, %8027
  %8029 = fmul fast float %8026, %6247
  %8030 = fsub fast float -0.000000e+00, %8029
  %8031 = fmul fast float %8026, %6248
  %8032 = fsub fast float -0.000000e+00, %8031
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 0
  %8035 = fmul fast float %8034, %6252
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 3
  %8038 = fsub fast float 1.000000e+00, %4760
  %8039 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8040 = fadd fast float %8025, %4759
  %8041 = fmul fast float %8040, %4760
  %8042 = fmul fast float %8039, %8037
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 3
  %8045 = fmul fast float %8023, %5953
  %8046 = fmul fast float %8024, %5954
  %8047 = fmul fast float %8025, %5955
  %8048 = fcmp fast ogt float %101, %232
  %8049 = and i1 %8048, %5166
  %8050 = or i1 %5172, %8049
  %8051 = icmp eq i32 %5165, 2
  %8052 = fcmp fast ole float %101, %232
  %8053 = and i1 %8052, %8051
  %8054 = or i1 %8053, %8050
  br i1 %8049, label %8055, label %8312

; <label>:8055                                    ; preds = %8019
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 2
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 3
  %8059 = fmul fast float %8057, %110
  %8060 = fmul fast float %8058, %111
  %8061 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8062 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8063 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8061, float %8062, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8064 = extractvalue %dx.types.ResRet.f32 %8063, 0
  %8065 = extractvalue %dx.types.ResRet.f32 %8063, 1
  %8066 = extractvalue %dx.types.ResRet.f32 %8063, 2
  %8067 = extractvalue %dx.types.ResRet.f32 %8063, 3
  %8068 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8061, float %8062, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8069 = extractvalue %dx.types.ResRet.f32 %8068, 0
  %8070 = extractvalue %dx.types.ResRet.f32 %8068, 1
  %8071 = extractvalue %dx.types.ResRet.f32 %8068, 2
  %8072 = extractvalue %dx.types.ResRet.f32 %8068, 3
  %8073 = call float @dx.op.binary.f32(i32 35, float %8065, float %8066)  ; FMax(a,b)
  %8074 = call float @dx.op.binary.f32(i32 35, float %8064, float %8073)  ; FMax(a,b)
  %8075 = call float @dx.op.binary.f32(i32 35, float %8074, float %8067)  ; FMax(a,b)
  %8076 = call float @dx.op.binary.f32(i32 36, float %8070, float %8071)  ; FMin(a,b)
  %8077 = call float @dx.op.binary.f32(i32 36, float %8069, float %8076)  ; FMin(a,b)
  %8078 = call float @dx.op.binary.f32(i32 36, float %8077, float %8072)  ; FMin(a,b)
  %8079 = fmul fast float %8075, 2.550000e+02
  %8080 = fadd fast float %8079, 0x3F70101020000000
  %8081 = fptoui float %8080 to i32
  %8082 = fmul fast float %8078, 2.550000e+02
  %8083 = fadd fast float %8082, 0x3F70101020000000
  %8084 = fptoui float %8083 to i32
  %8085 = icmp ult i32 %8081, %8084
  br i1 %8085, label %8086, label %8254

; <label>:8086                                    ; preds = %8055
  %8087 = fcmp fast ogt float %100, 9.843750e-01
  %8088 = fadd fast float %101, -4.000000e+00
  %8089 = select i1 %8087, float -4.000000e+00, float %8088
  %8090 = call float @dx.op.binary.f32(i32 35, float %8089, float 0.000000e+00)  ; FMax(a,b)
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = fadd fast float %8092, %8090
  %8094 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8095 = fmul fast float %8093, %8094
  %8096 = call float @dx.op.unary.f32(i32 23, float %8095)  ; Log(value)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8091, 3
  %8098 = fmul fast float %8097, %8096
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8101 = fmul fast float %8098, %8100
  %8102 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8103 = uitofp i32 %8081 to float
  %8104 = uitofp i32 %8084 to float
  %8105 = fadd fast float %8103, 5.000000e-01
  %8106 = fadd fast float %8104, 5.000000e-01
  %8107 = fmul fast float %8100, %8105
  %8108 = fmul fast float %8100, %8106
  %8109 = fadd fast float %8107, 0x3F0FFB4800000000
  %8110 = fadd fast float %8108, 0xBF0FFB4800000000
  %8111 = call float @dx.op.binary.f32(i32 35, float %8102, float %8109)  ; FMax(a,b)
  %8112 = call float @dx.op.binary.f32(i32 36, float %8111, float %8110)  ; FMin(a,b)
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8116 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8117 = fmul fast float %8114, %8112
  %8118 = fadd fast float %8116, %8117
  %8119 = fadd fast float %8116, %8115
  %8120 = fsub fast float %8114, %8115
  %8121 = fadd fast float %8120, %8116
  %8122 = call float @dx.op.binary.f32(i32 35, float %8118, float %8119)  ; FMax(a,b)
  %8123 = call float @dx.op.binary.f32(i32 36, float %8122, float %8121)  ; FMin(a,b)
  %8124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8061, float %8062, float %8123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8125 = extractvalue %dx.types.ResRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.ResRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.ResRet.f32 %8124, 2
  %8128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.i32 %8128, 0
  %8130 = extractvalue %dx.types.CBufRet.i32 %8128, 1
  %8131 = uitofp i32 %8129 to float
  %8132 = uitofp i32 %8130 to float
  %8133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8134 = extractvalue %dx.types.CBufRet.f32 %8133, 0
  %8135 = extractvalue %dx.types.CBufRet.f32 %8133, 1
  %8136 = fmul fast float %8131, %8061
  %8137 = fmul fast float %8132, %8062
  %8138 = fadd fast float %8136, -5.000000e-01
  %8139 = fadd fast float %8137, -5.000000e-01
  %8140 = call float @dx.op.unary.f32(i32 22, float %8138)  ; Frc(value)
  %8141 = call float @dx.op.unary.f32(i32 22, float %8139)  ; Frc(value)
  %8142 = fmul fast float %8140, %8140
  %8143 = fmul fast float %8142, %8140
  %8144 = fsub fast float 3.000000e+00, %8140
  %8145 = fmul fast float %8142, %8144
  %8146 = fmul fast float %8140, 3.000000e+00
  %8147 = fmul fast float %8143, 3.000000e+00
  %8148 = fmul fast float %8142, 6.000000e+00
  %8149 = fsub fast float %8147, %8148
  %8150 = fadd fast float %8149, 4.000000e+00
  %8151 = fmul fast float %8150, 0x3FC5555560000000
  %8152 = fmul fast float %8143, -3.000000e+00
  %8153 = fadd fast float %8142, %8140
  %8154 = fmul fast float %8153, 3.000000e+00
  %8155 = fadd fast float %8152, 1.000000e+00
  %8156 = fadd fast float %8155, %8154
  %8157 = fmul fast float %8143, 0x3FC5555560000000
  %8158 = fmul fast float %8141, %8141
  %8159 = fmul fast float %8158, %8141
  %8160 = fsub fast float 3.000000e+00, %8141
  %8161 = fmul fast float %8158, %8160
  %8162 = fmul fast float %8141, 3.000000e+00
  %8163 = fmul fast float %8159, 3.000000e+00
  %8164 = fmul fast float %8158, 6.000000e+00
  %8165 = fsub fast float %8163, %8164
  %8166 = fadd fast float %8165, 4.000000e+00
  %8167 = fmul fast float %8166, 0x3FC5555560000000
  %8168 = fmul fast float %8159, -3.000000e+00
  %8169 = fadd fast float %8158, %8141
  %8170 = fmul fast float %8169, 3.000000e+00
  %8171 = fadd fast float %8168, 1.000000e+00
  %8172 = fadd fast float %8171, %8170
  %8173 = fmul fast float %8159, 0x3FC5555560000000
  %8174 = fadd fast float %8140, 1.000000e+00
  %8175 = fsub fast float 1.000000e+00, %8146
  %8176 = fadd fast float %8175, %8145
  %8177 = fadd fast float %8176, %8150
  %8178 = fmul fast float %8177, 0x3FC5555560000000
  %8179 = fdiv fast float %8151, %8178
  %8180 = fsub fast float %8174, %8179
  %8181 = fsub fast float 1.000000e+00, %8140
  %8182 = fadd fast float %8156, %8143
  %8183 = fmul fast float %8182, 0x3FC5555560000000
  %8184 = fdiv fast float %8157, %8183
  %8185 = fadd fast float %8181, %8184
  %8186 = fadd fast float %8141, 1.000000e+00
  %8187 = fsub fast float 1.000000e+00, %8162
  %8188 = fadd fast float %8187, %8161
  %8189 = fadd fast float %8188, %8166
  %8190 = fmul fast float %8189, 0x3FC5555560000000
  %8191 = fdiv fast float %8167, %8190
  %8192 = fsub fast float %8186, %8191
  %8193 = fsub fast float 1.000000e+00, %8141
  %8194 = fadd fast float %8172, %8159
  %8195 = fmul fast float %8194, 0x3FC5555560000000
  %8196 = fdiv fast float %8173, %8195
  %8197 = fadd fast float %8196, %8193
  %8198 = fmul fast float %8180, %8134
  %8199 = fsub fast float %8061, %8198
  %8200 = fmul fast float %8185, %8134
  %8201 = fadd fast float %8200, %8061
  %8202 = fmul fast float %8197, %8135
  %8203 = fadd fast float %8202, %8062
  %8204 = fmul fast float %8192, %8135
  %8205 = fsub fast float %8062, %8204
  %8206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8199, float %8205, float %8123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.ResRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.ResRet.f32 %8206, 2
  %8210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8201, float %8205, float %8123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.ResRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.ResRet.f32 %8210, 2
  %8214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8199, float %8203, float %8123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8215 = extractvalue %dx.types.ResRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.ResRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.ResRet.f32 %8214, 2
  %8218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8201, float %8203, float %8123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8219 = extractvalue %dx.types.ResRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.ResRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.ResRet.f32 %8218, 2
  %8222 = fsub fast float %8215, %8207
  %8223 = fsub fast float %8216, %8208
  %8224 = fsub fast float %8217, %8209
  %8225 = fmul fast float %8222, %8195
  %8226 = fmul fast float %8223, %8195
  %8227 = fmul fast float %8224, %8195
  %8228 = fadd fast float %8225, %8207
  %8229 = fadd fast float %8226, %8208
  %8230 = fadd fast float %8227, %8209
  %8231 = fsub fast float %8219, %8211
  %8232 = fsub fast float %8220, %8212
  %8233 = fsub fast float %8221, %8213
  %8234 = fmul fast float %8231, %8195
  %8235 = fmul fast float %8232, %8195
  %8236 = fmul fast float %8233, %8195
  %8237 = fsub fast float %8211, %8228
  %8238 = fadd fast float %8237, %8234
  %8239 = fsub fast float %8212, %8229
  %8240 = fadd fast float %8239, %8235
  %8241 = fsub fast float %8213, %8230
  %8242 = fadd fast float %8241, %8236
  %8243 = fmul fast float %8238, %8183
  %8244 = fmul fast float %8240, %8183
  %8245 = fmul fast float %8242, %8183
  %8246 = fadd fast float %8243, %8228
  %8247 = fadd fast float %8244, %8229
  %8248 = fadd fast float %8245, %8230
  %8249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8249, 1
  %8251 = fmul fast float %8246, %8250
  %8252 = fmul fast float %8247, %8250
  %8253 = fmul fast float %8248, %8250
  br label %8254

; <label>:8254                                    ; preds = %8086, %8055
  %8255 = phi float [ %8125, %8086 ], [ 1.000000e+00, %8055 ]
  %8256 = phi float [ %8126, %8086 ], [ 1.000000e+00, %8055 ]
  %8257 = phi float [ %8127, %8086 ], [ 1.000000e+00, %8055 ]
  %8258 = phi float [ %8251, %8086 ], [ 0.000000e+00, %8055 ]
  %8259 = phi float [ %8252, %8086 ], [ 0.000000e+00, %8055 ]
  %8260 = phi float [ %8253, %8086 ], [ 0.000000e+00, %8055 ]
  %8261 = fmul fast float %8258, %8028
  %8262 = fmul fast float %8259, %8030
  %8263 = fmul fast float %8260, %8032
  %8264 = call float @dx.op.dot3.f32(i32 55, float %8255, float %8256, float %8257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8265 = call float @dx.op.dot3.f32(i32 55, float %8261, float %8262, float %8263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8266 = select i1 %269, float %8264, float %8255
  %8267 = select i1 %269, float %8264, float %8256
  %8268 = select i1 %269, float 1.000000e+00, float %8257
  %8269 = select i1 %269, float %8265, float %8261
  %8270 = select i1 %269, float 0.000000e+00, float %8262
  %8271 = select i1 %269, float 0.000000e+00, float %8263
  %8272 = fmul fast float %8266, %8045
  %8273 = fmul fast float %8267, %8046
  %8274 = fmul fast float %8268, %8047
  %8275 = fadd fast float %8272, %8269
  %8276 = fadd fast float %8273, %8270
  %8277 = fadd fast float %8271, %8274
  %8278 = fmul fast float %8266, %8020
  %8279 = fmul fast float %8267, %8021
  %8280 = fmul fast float %8268, %8022
  %8281 = fmul fast float %146, %8057
  %8282 = fmul fast float %148, %8058
  %8283 = fsub fast float 1.000000e+00, %8281
  %8284 = fsub fast float 1.000000e+00, %8282
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 0
  %8287 = extractvalue %dx.types.CBufRet.f32 %8285, 1
  %8288 = extractvalue %dx.types.CBufRet.f32 %8285, 2
  %8289 = fmul fast float %8283, %8286
  %8290 = fmul fast float %8283, %8287
  %8291 = fmul fast float %8283, %8288
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 0
  %8294 = extractvalue %dx.types.CBufRet.f32 %8292, 1
  %8295 = extractvalue %dx.types.CBufRet.f32 %8292, 2
  %8296 = fmul fast float %8284, %8293
  %8297 = fmul fast float %8284, %8294
  %8298 = fmul fast float %8284, %8295
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8302 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8303 = fadd fast float %8296, %8300
  %8304 = fadd fast float %8303, %8289
  %8305 = fadd fast float %8297, %8301
  %8306 = fadd fast float %8305, %8290
  %8307 = fadd fast float %8298, %8302
  %8308 = fadd fast float %8307, %8291
  %8309 = fmul fast float %8304, %232
  %8310 = fmul fast float %8306, %232
  %8311 = fmul fast float %8308, %232
  br label %8312

; <label>:8312                                    ; preds = %8254, %8019
  %8313 = phi float [ %8309, %8254 ], [ %197, %8019 ]
  %8314 = phi float [ %8310, %8254 ], [ %198, %8019 ]
  %8315 = phi float [ %8311, %8254 ], [ %199, %8019 ]
  %8316 = phi float [ %232, %8254 ], [ %101, %8019 ]
  %8317 = phi float [ %8275, %8254 ], [ %8045, %8019 ]
  %8318 = phi float [ %8276, %8254 ], [ %8046, %8019 ]
  %8319 = phi float [ %8277, %8254 ], [ %8047, %8019 ]
  %8320 = phi float [ %8278, %8254 ], [ %8020, %8019 ]
  %8321 = phi float [ %8279, %8254 ], [ %8021, %8019 ]
  %8322 = phi float [ %8280, %8254 ], [ %8022, %8019 ]
  %8323 = phi float [ %8255, %8254 ], [ 1.000000e+00, %8019 ]
  br i1 %8054, label %9478, label %8324

; <label>:8324                                    ; preds = %8312
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.CBufRet.f32 %8325, 1
  %8328 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8329 = extractvalue %dx.types.CBufRet.f32 %8325, 3
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %8333 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8334 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 0
  %8337 = extractvalue %dx.types.CBufRet.f32 %8335, 1
  %8338 = extractvalue %dx.types.CBufRet.f32 %8335, 2
  %8339 = extractvalue %dx.types.CBufRet.f32 %8335, 3
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 0
  %8342 = extractvalue %dx.types.CBufRet.f32 %8340, 1
  %8343 = extractvalue %dx.types.CBufRet.f32 %8340, 2
  %8344 = extractvalue %dx.types.CBufRet.f32 %8340, 3
  %8345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8345, 3
  %8347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8348 = extractvalue %dx.types.CBufRet.f32 %8347, 3
  %8349 = extractvalue %dx.types.CBufRet.f32 %8347, 0
  %8350 = extractvalue %dx.types.CBufRet.f32 %8347, 1
  %8351 = extractvalue %dx.types.CBufRet.f32 %8347, 2
  %8352 = fcmp fast olt float %8351, -5.000000e-01
  %8353 = call float @dx.op.dot3.f32(i32 55, float %8313, float %8314, float %8315, float %8313, float %8314, float %8315)  ; Dot3(ax,ay,az,bx,by,bz)
  %8354 = call float @dx.op.unary.f32(i32 25, float %8353)  ; Rsqrt(value)
  %8355 = fmul fast float %8354, %8353
  %8356 = fmul fast float %8354, %8313
  %8357 = fmul fast float %8354, %8314
  %8358 = fmul fast float %8354, %8315
  %8359 = fadd fast float %8355, %8329
  %8360 = call float @dx.op.dot3.f32(i32 55, float %8356, float %8357, float %8358, float %8326, float %8327, float %8328)  ; Dot3(ax,ay,az,bx,by,bz)
  %8361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.i32 %8361, 1
  %8363 = and i32 %8362, 1
  %8364 = icmp ne i32 %8363, 0
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 2
  %8367 = fcmp fast ogt float %8366, 0.000000e+00
  %8368 = and i1 %8364, %8367
  br i1 %8368, label %8369, label %8775, !dx.controlflow.hints !129

; <label>:8369                                    ; preds = %8324
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 3
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %8376 = fsub fast float %8373, %8375
  %8377 = and i32 %8362, 2
  %8378 = extractvalue %dx.types.CBufRet.i32 %8361, 0
  %8379 = call i32 @dx.op.binary.i32(i32 40, i32 %8378, i32 3)  ; UMin(a,b)
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 1
  %8383 = extractvalue %dx.types.CBufRet.f32 %8374, 0
  %8384 = extractvalue %dx.types.CBufRet.f32 %8374, 1
  %8385 = fsub fast float %8381, %8383
  %8386 = fsub fast float %8382, %8384
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = fcmp fast ogt float %8388, 0.000000e+00
  %8390 = fsub fast float -0.000000e+00, %8385
  %8391 = fsub fast float -0.000000e+00, %8386
  %8392 = call float @dx.op.dot2.f32(i32 54, float %8356, float %8357, float %8356, float %8357)  ; Dot2(ax,ay,bx,by)
  %8393 = call float @dx.op.dot2.f32(i32 54, float %8356, float %8357, float %8390, float %8391)  ; Dot2(ax,ay,bx,by)
  %8394 = fmul fast float %8393, 2.000000e+00
  %8395 = call float @dx.op.dot2.f32(i32 54, float %8390, float %8391, float %8390, float %8391)  ; Dot2(ax,ay,bx,by)
  %8396 = fmul fast float %8388, %8388
  %8397 = fsub fast float %8395, %8396
  %8398 = fmul fast float %8394, %8394
  %8399 = fmul fast float %8392, 4.000000e+00
  %8400 = fmul fast float %8399, %8397
  %8401 = fsub fast float %8398, %8400
  %8402 = fcmp fast ogt float %8401, 0.000000e+00
  br i1 %8402, label %8403, label %8418

; <label>:8403                                    ; preds = %8369
  %8404 = fcmp fast ogt float %8394, 0.000000e+00
  %8405 = call float @dx.op.unary.f32(i32 24, float %8401)  ; Sqrt(value)
  %8406 = fsub fast float -0.000000e+00, %8405
  %8407 = select i1 %8404, float %8405, float %8406
  %8408 = fadd fast float %8407, %8394
  %8409 = fmul float %8408, -5.000000e-01
  %8410 = fdiv fast float %8409, %8392
  %8411 = call float @dx.op.binary.f32(i32 35, float %8410, float 0.000000e+00)  ; FMax(a,b)
  %8412 = call float @dx.op.binary.f32(i32 36, float %8355, float %8411)  ; FMin(a,b)
  %8413 = fdiv fast float %8397, %8409
  %8414 = call float @dx.op.binary.f32(i32 35, float %8413, float 0.000000e+00)  ; FMax(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8355, float %8414)  ; FMin(a,b)
  %8416 = call float @dx.op.binary.f32(i32 36, float %8412, float %8415)  ; FMin(a,b)
  %8417 = call float @dx.op.binary.f32(i32 35, float %8412, float %8415)  ; FMax(a,b)
  br label %8418

; <label>:8418                                    ; preds = %8403, %8369
  %8419 = phi float [ %8417, %8403 ], [ -1.000000e+00, %8369 ]
  %8420 = phi float [ %8416, %8403 ], [ -1.000000e+00, %8369 ]
  %8421 = phi i1 [ true, %8403 ], [ false, %8369 ]
  %8422 = and i1 %8389, %8421
  br i1 %8422, label %8423, label %8425

; <label>:8423                                    ; preds = %8418
  %8424 = fcmp fast oeq float %8420, %8419
  br i1 %8424, label %8728, label %8426

; <label>:8425                                    ; preds = %8418
  br i1 %8389, label %8728, label %8426

; <label>:8426                                    ; preds = %8425, %8423
  %8427 = phi float [ %8355, %8425 ], [ %8419, %8423 ]
  %8428 = phi float [ 0.000000e+00, %8425 ], [ %8420, %8423 ]
  %8429 = icmp ne i32 %8377, 0
  %8430 = fmul fast float %8427, %8358
  %8431 = fadd fast float %8430, %8371
  %8432 = fmul fast float %8431, %8427
  %8433 = select i1 %8429, float 0.000000e+00, float %8432
  %8434 = fcmp fast oeq float %8358, 0.000000e+00
  %8435 = fdiv fast float %8376, %8358
  %8436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8435)  ; FMax(a,b)
  %8437 = select i1 %8434, float %8427, float %8436
  %8438 = call float @dx.op.binary.f32(i32 36, float %8427, float %8437)  ; FMin(a,b)
  %8439 = fcmp fast ogt float %8358, 0.000000e+00
  %8440 = fcmp fast olt float %8376, 0.000000e+00
  br i1 %8439, label %8441, label %8498

; <label>:8441                                    ; preds = %8426
  %8442 = icmp eq i32 %8377, 0
  br i1 %8440, label %8443, label %8487

; <label>:8443                                    ; preds = %8441
  %8444 = select i1 %8442, float %8427, float 0.000000e+00
  %8445 = fsub fast float -0.000000e+00, %8444
  %8446 = call float @dx.op.unary.f32(i32 6, float %8445)  ; FAbs(value)
  %8447 = fmul fast float %8444, %8358
  %8448 = fadd fast float %8447, %8371
  %8449 = fmul fast float %8446, %8448
  %8450 = fsub fast float %8433, %8449
  %8451 = fsub fast float %8427, %8446
  %8452 = select i1 %8442, float %8451, float 0.000000e+00
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.CBufRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.CBufRet.f32 %8453, 2
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 0
  %8459 = extractvalue %dx.types.CBufRet.f32 %8457, 1
  %8460 = extractvalue %dx.types.CBufRet.f32 %8457, 2
  %8461 = extractvalue %dx.types.CBufRet.f32 %8457, 3
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 3
  %8464 = call float @dx.op.binary.f32(i32 36, float %8450, float %8463)  ; FMin(a,b)
  %8465 = fmul fast float %8461, %8452
  %8466 = call float @dx.op.unary.f32(i32 7, float %8465)  ; Saturate(value)
  %8467 = fsub fast float %8458, %8454
  %8468 = fsub fast float %8459, %8455
  %8469 = fsub fast float %8460, %8456
  %8470 = fmul fast float %8466, %8467
  %8471 = fmul fast float %8466, %8468
  %8472 = fmul fast float %8466, %8469
  %8473 = fadd fast float %8470, %8454
  %8474 = fadd fast float %8471, %8455
  %8475 = fadd fast float %8472, %8456
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 0
  %8478 = extractvalue %dx.types.CBufRet.f32 %8476, 1
  %8479 = fadd fast float %8478, %8477
  %8480 = call float @dx.op.unary.f32(i32 7, float %8479)  ; Saturate(value)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8476, 3
  %8483 = fadd fast float %8482, %8481
  %8484 = call float @dx.op.unary.f32(i32 7, float %8483)  ; Saturate(value)
  %8485 = fmul fast float %8480, %8464
  %8486 = fmul fast float %8485, %8484
  br label %8728

; <label>:8487                                    ; preds = %8441
  br i1 %8442, label %8488, label %8509

; <label>:8488                                    ; preds = %8487
  %8489 = call float @dx.op.binary.f32(i32 36, float %8438, float %8428)  ; FMin(a,b)
  %8490 = fsub fast float %8438, %8489
  %8491 = fsub fast float %8490, %8427
  %8492 = call float @dx.op.unary.f32(i32 6, float %8491)  ; FAbs(value)
  %8493 = fadd fast float %8490, %8427
  %8494 = fmul fast float %8493, %8358
  %8495 = fadd fast float %8494, %8371
  %8496 = fmul fast float %8495, %8492
  %8497 = fsub fast float %8433, %8496
  br label %8509

; <label>:8498                                    ; preds = %8426
  br i1 %8440, label %8499, label %8509

; <label>:8499                                    ; preds = %8498
  %8500 = call float @dx.op.binary.f32(i32 35, float %8428, float %8438)  ; FMax(a,b)
  %8501 = icmp eq i32 %8377, 0
  %8502 = select i1 %8501, float %8438, float 0.000000e+00
  %8503 = fsub fast float -0.000000e+00, %8502
  %8504 = call float @dx.op.unary.f32(i32 6, float %8503)  ; FAbs(value)
  %8505 = fmul fast float %8502, %8358
  %8506 = fadd fast float %8505, %8371
  %8507 = fmul fast float %8504, %8506
  %8508 = fsub fast float %8433, %8507
  br label %8509

; <label>:8509                                    ; preds = %8499, %8498, %8488, %8487
  %8510 = phi float [ %8428, %8487 ], [ %8428, %8488 ], [ %8500, %8499 ], [ %8428, %8498 ]
  %8511 = phi float [ 0.000000e+00, %8487 ], [ %8492, %8488 ], [ %8504, %8499 ], [ 0.000000e+00, %8498 ]
  %8512 = phi float [ %8433, %8487 ], [ %8497, %8488 ], [ %8508, %8499 ], [ %8433, %8498 ]
  %8513 = phi float [ %8438, %8487 ], [ %8438, %8488 ], [ %8427, %8499 ], [ %8427, %8498 ]
  %8514 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8514, align 4, !tbaa !130, !noalias !132
  %8515 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8515, align 4, !tbaa !130, !noalias !132
  %8516 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8516, align 4, !tbaa !130, !noalias !132
  %8517 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8517, align 4, !tbaa !130, !noalias !132
  %8518 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8518, align 4, !tbaa !130, !noalias !132
  %8519 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8519, align 4, !tbaa !130, !noalias !132
  %8520 = icmp sgt i32 %8379, 0
  br i1 %8520, label %8521, label %8582

; <label>:8521                                    ; preds = %8509
  br label %8522

; <label>:8522                                    ; preds = %8571, %8521
  %8523 = phi i32 [ %8572, %8571 ], [ 0, %8521 ]
  %8524 = phi i32 [ %8573, %8571 ], [ 0, %8521 ]
  %8525 = add nuw i32 %8524, 171
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8525)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 0
  %8528 = extractvalue %dx.types.CBufRet.f32 %8526, 1
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.CBufRet.f32 %8529, 1
  %8532 = fsub fast float %8527, %8530
  %8533 = fsub fast float %8528, %8531
  %8534 = extractvalue %dx.types.CBufRet.f32 %8526, 2
  %8535 = fsub fast float -0.000000e+00, %8532
  %8536 = fsub fast float -0.000000e+00, %8533
  %8537 = call float @dx.op.dot2.f32(i32 54, float %8356, float %8357, float %8535, float %8536)  ; Dot2(ax,ay,bx,by)
  %8538 = fmul fast float %8537, 2.000000e+00
  %8539 = call float @dx.op.dot2.f32(i32 54, float %8535, float %8536, float %8535, float %8536)  ; Dot2(ax,ay,bx,by)
  %8540 = fmul fast float %8534, %8534
  %8541 = fsub fast float %8539, %8540
  %8542 = fmul fast float %8538, %8538
  %8543 = fmul fast float %8399, %8541
  %8544 = fsub fast float %8542, %8543
  %8545 = fcmp fast ogt float %8544, 0.000000e+00
  br i1 %8545, label %8546, label %8561

; <label>:8546                                    ; preds = %8522
  %8547 = fcmp fast ogt float %8538, 0.000000e+00
  %8548 = call float @dx.op.unary.f32(i32 24, float %8544)  ; Sqrt(value)
  %8549 = fsub fast float -0.000000e+00, %8548
  %8550 = select i1 %8547, float %8548, float %8549
  %8551 = fadd fast float %8550, %8538
  %8552 = fmul float %8551, -5.000000e-01
  %8553 = fdiv fast float %8552, %8392
  %8554 = call float @dx.op.binary.f32(i32 35, float %8553, float 0.000000e+00)  ; FMax(a,b)
  %8555 = call float @dx.op.binary.f32(i32 36, float %8427, float %8554)  ; FMin(a,b)
  %8556 = fdiv fast float %8541, %8552
  %8557 = call float @dx.op.binary.f32(i32 35, float %8556, float 0.000000e+00)  ; FMax(a,b)
  %8558 = call float @dx.op.binary.f32(i32 36, float %8427, float %8557)  ; FMin(a,b)
  %8559 = call float @dx.op.binary.f32(i32 36, float %8555, float %8558)  ; FMin(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float %8555, float %8558)  ; FMax(a,b)
  br label %8561

; <label>:8561                                    ; preds = %8546, %8522
  %8562 = phi float [ %8560, %8546 ], [ -1.000000e+00, %8522 ]
  %8563 = phi float [ %8559, %8546 ], [ -1.000000e+00, %8522 ]
  %8564 = phi i1 [ true, %8546 ], [ false, %8522 ]
  br i1 %8564, label %8565, label %8571

; <label>:8565                                    ; preds = %8561
  %8566 = call float @dx.op.binary.f32(i32 35, float %8510, float %8563)  ; FMax(a,b)
  %8567 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8524
  store float %8566, float* %8567, align 4, !tbaa !130, !noalias !132
  %8568 = call float @dx.op.binary.f32(i32 35, float %8510, float %8562)  ; FMax(a,b)
  %8569 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8524
  store float %8568, float* %8569, align 4, !tbaa !130, !noalias !132
  %8570 = add nsw i32 %8523, 1
  br label %8571

; <label>:8571                                    ; preds = %8565, %8561
  %8572 = phi i32 [ %8570, %8565 ], [ %8523, %8561 ]
  %8573 = add nuw nsw i32 %8524, 1
  %8574 = icmp eq i32 %8573, %8379
  br i1 %8574, label %8575, label %8522

; <label>:8575                                    ; preds = %8571
  %8576 = load float, float* %8516, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8577 = load float, float* %8515, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  %8578 = load float, float* %8514, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  %8579 = load float, float* %8519, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8580 = load float, float* %8518, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  %8581 = load float, float* %8517, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  br label %8582

; <label>:8582                                    ; preds = %8575, %8509
  %8583 = phi float [ -1.000000e+00, %8509 ], [ %8581, %8575 ]
  %8584 = phi float [ -1.000000e+00, %8509 ], [ %8580, %8575 ]
  %8585 = phi float [ -1.000000e+00, %8509 ], [ %8579, %8575 ]
  %8586 = phi float [ -1.000000e+00, %8509 ], [ %8578, %8575 ]
  %8587 = phi float [ -1.000000e+00, %8509 ], [ %8577, %8575 ]
  %8588 = phi float [ -1.000000e+00, %8509 ], [ %8576, %8575 ]
  %8589 = phi i32 [ 0, %8509 ], [ %8572, %8575 ]
  %8590 = call float @dx.op.binary.f32(i32 36, float %8587, float %8588)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8586, float %8590)  ; FMin(a,b)
  %8592 = call float @dx.op.binary.f32(i32 35, float %8586, float %8587)  ; FMax(a,b)
  %8593 = call float @dx.op.binary.f32(i32 36, float %8592, float %8588)  ; FMin(a,b)
  %8594 = call float @dx.op.binary.f32(i32 36, float %8586, float %8587)  ; FMin(a,b)
  %8595 = call float @dx.op.binary.f32(i32 35, float %8594, float %8593)  ; FMax(a,b)
  %8596 = call float @dx.op.binary.f32(i32 35, float %8587, float %8588)  ; FMax(a,b)
  %8597 = call float @dx.op.binary.f32(i32 35, float %8586, float %8596)  ; FMax(a,b)
  store float %8591, float* %8514, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  store float %8595, float* %8515, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  store float %8597, float* %8516, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8598 = call float @dx.op.binary.f32(i32 36, float %8584, float %8585)  ; FMin(a,b)
  %8599 = call float @dx.op.binary.f32(i32 36, float %8583, float %8598)  ; FMin(a,b)
  %8600 = call float @dx.op.binary.f32(i32 35, float %8583, float %8584)  ; FMax(a,b)
  %8601 = call float @dx.op.binary.f32(i32 36, float %8600, float %8585)  ; FMin(a,b)
  %8602 = call float @dx.op.binary.f32(i32 36, float %8583, float %8584)  ; FMin(a,b)
  %8603 = call float @dx.op.binary.f32(i32 35, float %8602, float %8601)  ; FMax(a,b)
  %8604 = call float @dx.op.binary.f32(i32 35, float %8584, float %8585)  ; FMax(a,b)
  %8605 = call float @dx.op.binary.f32(i32 35, float %8583, float %8604)  ; FMax(a,b)
  store float %8599, float* %8517, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %8603, float* %8518, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  store float %8605, float* %8519, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8606 = sub nsw i32 3, %8589
  %8607 = icmp sgt i32 %8606, 2
  br i1 %8607, label %8608, label %8646

; <label>:8608                                    ; preds = %8582
  %8609 = icmp eq i32 %8377, 0
  %8610 = fsub fast float %8427, %8511
  %8611 = select i1 %8609, float %8610, float %8511
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.CBufRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.CBufRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.CBufRet.f32 %8616, 2
  %8620 = extractvalue %dx.types.CBufRet.f32 %8616, 3
  %8621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8621, 3
  %8623 = call float @dx.op.binary.f32(i32 36, float %8512, float %8622)  ; FMin(a,b)
  %8624 = fmul fast float %8620, %8611
  %8625 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8626 = fsub fast float %8617, %8613
  %8627 = fsub fast float %8618, %8614
  %8628 = fsub fast float %8619, %8615
  %8629 = fmul fast float %8625, %8626
  %8630 = fmul fast float %8625, %8627
  %8631 = fmul fast float %8625, %8628
  %8632 = fadd fast float %8629, %8613
  %8633 = fadd fast float %8630, %8614
  %8634 = fadd fast float %8631, %8615
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 0
  %8637 = extractvalue %dx.types.CBufRet.f32 %8635, 1
  %8638 = fadd fast float %8637, %8636
  %8639 = call float @dx.op.unary.f32(i32 7, float %8638)  ; Saturate(value)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8635, 2
  %8641 = extractvalue %dx.types.CBufRet.f32 %8635, 3
  %8642 = fadd fast float %8641, %8640
  %8643 = call float @dx.op.unary.f32(i32 7, float %8642)  ; Saturate(value)
  %8644 = fmul fast float %8639, %8623
  %8645 = fmul fast float %8644, %8643
  br label %8728

; <label>:8646                                    ; preds = %8582
  %8647 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8606
  %8648 = load float, float* %8647, align 4, !tbaa !130, !noalias !132
  %8649 = fcmp fast olt float %8648, %8513
  %8650 = icmp sgt i32 %8589, 0
  %8651 = and i1 %8650, %8649
  br i1 %8651, label %8652, label %8689

; <label>:8652                                    ; preds = %8646
  br label %8653

; <label>:8653                                    ; preds = %8682, %8652
  %8654 = phi float [ %8683, %8682 ], [ %8511, %8652 ]
  %8655 = phi float [ %8684, %8682 ], [ %8512, %8652 ]
  %8656 = phi float [ %8664, %8682 ], [ %8648, %8652 ]
  %8657 = phi i32 [ %8661, %8682 ], [ %8606, %8652 ]
  %8658 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8657
  %8659 = load float, float* %8658, align 4, !tbaa !130, !noalias !132
  %8660 = icmp slt i32 %8657, 2
  %8661 = add nsw i32 %8657, 1
  %8662 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8661
  %8663 = load float, float* %8662, align 4, !tbaa !130, !noalias !132
  %8664 = select i1 %8660, float %8663, float %8427
  %8665 = call float @dx.op.binary.f32(i32 36, float %8664, float %8659)  ; FMin(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8513, float %8665)  ; FMin(a,b)
  %8667 = icmp eq i32 %8377, 0
  %8668 = fadd fast float %8666, %8656
  %8669 = fmul fast float %8668, %8358
  %8670 = fadd fast float %8669, %8371
  br i1 %8667, label %8676, label %8671

; <label>:8671                                    ; preds = %8653
  %8672 = fsub fast float %8666, %8656
  %8673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8672)  ; FMax(a,b)
  %8674 = fmul fast float %8673, %8670
  %8675 = fadd fast float %8674, %8655
  br label %8682

; <label>:8676                                    ; preds = %8653
  %8677 = fsub fast float %8656, %8666
  %8678 = call float @dx.op.unary.f32(i32 6, float %8677)  ; FAbs(value)
  %8679 = fadd fast float %8678, %8654
  %8680 = fmul fast float %8678, %8670
  %8681 = fsub fast float %8655, %8680
  br label %8682

; <label>:8682                                    ; preds = %8676, %8671
  %8683 = phi float [ %8673, %8671 ], [ %8679, %8676 ]
  %8684 = phi float [ %8675, %8671 ], [ %8681, %8676 ]
  %8685 = fcmp fast olt float %8664, %8513
  %8686 = icmp slt i32 %8661, 3
  %8687 = and i1 %8686, %8685
  br i1 %8687, label %8653, label %8688

; <label>:8688                                    ; preds = %8682
  br label %8689

; <label>:8689                                    ; preds = %8688, %8646
  %8690 = phi float [ %8511, %8646 ], [ %8683, %8688 ]
  %8691 = phi float [ %8512, %8646 ], [ %8684, %8688 ]
  %8692 = fsub fast float %8427, %8690
  %8693 = select i1 %8429, float %8690, float %8692
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8697 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.CBufRet.f32 %8698, 2
  %8702 = extractvalue %dx.types.CBufRet.f32 %8698, 3
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 3
  %8705 = call float @dx.op.binary.f32(i32 36, float %8691, float %8704)  ; FMin(a,b)
  %8706 = fmul fast float %8702, %8693
  %8707 = call float @dx.op.unary.f32(i32 7, float %8706)  ; Saturate(value)
  %8708 = fsub fast float %8699, %8695
  %8709 = fsub fast float %8700, %8696
  %8710 = fsub fast float %8701, %8697
  %8711 = fmul fast float %8707, %8708
  %8712 = fmul fast float %8707, %8709
  %8713 = fmul fast float %8707, %8710
  %8714 = fadd fast float %8711, %8695
  %8715 = fadd fast float %8712, %8696
  %8716 = fadd fast float %8713, %8697
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.CBufRet.f32 %8717, 1
  %8720 = fadd fast float %8719, %8718
  %8721 = call float @dx.op.unary.f32(i32 7, float %8720)  ; Saturate(value)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8717, 2
  %8723 = extractvalue %dx.types.CBufRet.f32 %8717, 3
  %8724 = fadd fast float %8723, %8722
  %8725 = call float @dx.op.unary.f32(i32 7, float %8724)  ; Saturate(value)
  %8726 = fmul fast float %8721, %8705
  %8727 = fmul fast float %8726, %8725
  br label %8728

; <label>:8728                                    ; preds = %8689, %8608, %8443, %8425, %8423
  %8729 = phi float [ %8452, %8443 ], [ %8611, %8608 ], [ %8693, %8689 ], [ 0.000000e+00, %8423 ], [ 0.000000e+00, %8425 ]
  %8730 = phi float [ %8486, %8443 ], [ %8645, %8608 ], [ %8727, %8689 ], [ 0.000000e+00, %8423 ], [ 0.000000e+00, %8425 ]
  %8731 = phi float [ %8473, %8443 ], [ %8632, %8608 ], [ %8714, %8689 ], [ 0.000000e+00, %8423 ], [ 0.000000e+00, %8425 ]
  %8732 = phi float [ %8474, %8443 ], [ %8633, %8608 ], [ %8715, %8689 ], [ 0.000000e+00, %8423 ], [ 0.000000e+00, %8425 ]
  %8733 = phi float [ %8475, %8443 ], [ %8634, %8608 ], [ %8716, %8689 ], [ 0.000000e+00, %8423 ], [ 0.000000e+00, %8425 ]
  %8734 = fmul fast float %8366, %8730
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 2
  %8737 = fsub fast float %8373, %8736
  %8738 = fcmp fast olt float %8734, -2.000000e+01
  %8739 = call float @dx.op.unary.f32(i32 21, float %8734)  ; Exp(value)
  %8740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8740, 2
  %8742 = extractvalue %dx.types.CBufRet.f32 %8740, 3
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8745 = fmul fast float %8742, %8737
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = fsub fast float 1.000000e+00, %8746
  %8748 = fmul fast float %8358, 5.000000e-01
  %8749 = fadd fast float %8748, 5.000000e-01
  %8750 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8751 = fsub fast float 1.000000e+00, %8750
  %8752 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8747)  ; FMax(a,b)
  %8753 = fdiv fast float %8751, %8752
  %8754 = fsub fast float %8737, %8315
  %8755 = call float @dx.op.unary.f32(i32 6, float %8754)  ; FAbs(value)
  %8756 = fmul fast float %8755, %8741
  %8757 = call float @dx.op.unary.f32(i32 7, float %8753)  ; Saturate(value)
  %8758 = fsub fast float 1.000000e+00, %8756
  %8759 = fmul fast float %8758, %8757
  %8760 = fadd fast float %8759, %8756
  %8761 = fmul fast float %8744, %8737
  %8762 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8763 = fsub fast float 1.000000e+00, %8760
  %8764 = fmul fast float %8763, %8762
  %8765 = fadd fast float %8764, %8760
  %8766 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8767 = fadd fast float %8739, -1.000000e+00
  %8768 = select i1 %8738, float -1.000000e+00, float %8767
  %8769 = fmul fast float %8766, %8768
  %8770 = fadd fast float %8769, 1.000000e+00
  %8771 = fsub fast float -0.000000e+00, %8769
  %8772 = fmul fast float %8731, %8771
  %8773 = fmul fast float %8732, %8771
  %8774 = fmul fast float %8733, %8771
  br label %8775

; <label>:8775                                    ; preds = %8728, %8324
  %8776 = phi float [ %8729, %8728 ], [ 0.000000e+00, %8324 ]
  %8777 = phi float [ %8770, %8728 ], [ 1.000000e+00, %8324 ]
  %8778 = phi float [ %8772, %8728 ], [ 0.000000e+00, %8324 ]
  %8779 = phi float [ %8773, %8728 ], [ 0.000000e+00, %8324 ]
  %8780 = phi float [ %8774, %8728 ], [ 0.000000e+00, %8324 ]
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 1
  %8783 = fsub fast float 1.000000e+00, %8777
  %8784 = fmul fast float %8783, %8359
  %8785 = fmul fast float %8784, %8782
  %8786 = fsub fast float %8359, %8785
  br i1 %8352, label %8787, label %8816, !dx.controlflow.hints !168

; <label>:8787                                    ; preds = %8775
  %8788 = fmul fast float %8360, %8349
  %8789 = fadd fast float %8788, %8350
  %8790 = call float @dx.op.unary.f32(i32 7, float %8789)  ; Saturate(value)
  %8791 = fmul fast float %8331, %8786
  %8792 = fsub fast float -0.000000e+00, %8791
  %8793 = fmul fast float %8332, %8786
  %8794 = fsub fast float -0.000000e+00, %8793
  %8795 = call float @dx.op.unary.f32(i32 21, float %8792)  ; Exp(value)
  %8796 = call float @dx.op.unary.f32(i32 21, float %8794)  ; Exp(value)
  %8797 = call float @dx.op.binary.f32(i32 35, float %8339, float %8795)  ; FMax(a,b)
  %8798 = call float @dx.op.binary.f32(i32 35, float %8339, float %8796)  ; FMax(a,b)
  %8799 = fsub fast float %8798, %8797
  %8800 = fmul fast float %8799, %8790
  %8801 = fadd fast float %8800, %8797
  %8802 = call float @dx.op.unary.f32(i32 7, float %8801)  ; Saturate(value)
  %8803 = fsub fast float %8336, %8341
  %8804 = fsub fast float %8337, %8342
  %8805 = fsub fast float %8338, %8343
  %8806 = fmul fast float %8790, %8803
  %8807 = fmul fast float %8790, %8804
  %8808 = fmul fast float %8790, %8805
  %8809 = fadd fast float %8806, %8341
  %8810 = fadd fast float %8807, %8342
  %8811 = fadd fast float %8808, %8343
  %8812 = fsub fast float 1.000000e+00, %8802
  %8813 = fmul fast float %8812, %8809
  %8814 = fmul fast float %8812, %8810
  %8815 = fmul fast float %8812, %8811
  br label %8875

; <label>:8816                                    ; preds = %8775
  %8817 = fmul fast float %8786, %8348
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8819 = fsub fast float 2.000000e+00, %8818
  %8820 = fmul fast float %8818, 9.921875e-01
  %8821 = fmul fast float %8820, %8819
  %8822 = fadd fast float %8821, 3.906250e-03
  %8823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8822, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8824 = extractvalue %dx.types.ResRet.f32 %8823, 0
  %8825 = fsub fast float %8818, %8824
  %8826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8825)  ; FMax(a,b)
  %8827 = fmul fast float %8334, %8315
  %8828 = call float @dx.op.unary.f32(i32 6, float %8827)  ; FAbs(value)
  %8829 = fcmp fast ogt float %8828, 0x3EB0C6F7A0000000
  br i1 %8829, label %8830, label %8836, !dx.controlflow.hints !169

; <label>:8830                                    ; preds = %8816
  %8831 = fmul fast float %8827, 0xBFF7154760000000
  %8832 = call float @dx.op.unary.f32(i32 21, float %8831)  ; Exp(value)
  %8833 = fsub fast float 1.000000e+00, %8832
  %8834 = fdiv fast float %8833, %8827
  %8835 = fmul fast float %8834, %8344
  br label %8836

; <label>:8836                                    ; preds = %8830, %8816
  %8837 = phi float [ %8835, %8830 ], [ %8344, %8816 ]
  %8838 = fadd fast float %8837, %8346
  %8839 = fmul fast float %8838, %8826
  %8840 = fmul fast float %8331, %8839
  %8841 = fsub fast float -0.000000e+00, %8840
  %8842 = fmul fast float %8332, %8839
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fmul fast float %8333, %8839
  %8845 = fsub fast float -0.000000e+00, %8844
  %8846 = call float @dx.op.unary.f32(i32 21, float %8841)  ; Exp(value)
  %8847 = call float @dx.op.unary.f32(i32 21, float %8843)  ; Exp(value)
  %8848 = call float @dx.op.unary.f32(i32 21, float %8845)  ; Exp(value)
  %8849 = fmul fast float %8360, %8360
  %8850 = fadd fast float %8849, 1.000000e+00
  %8851 = fmul fast float %8850, 0x3FAE8EC8A0000000
  %8852 = fmul fast float %8851, %8341
  %8853 = fmul fast float %8851, %8342
  %8854 = fmul fast float %8851, %8343
  %8855 = fmul fast float %8360, %8339
  %8856 = fsub fast float 1.000000e+00, %8855
  %8857 = fmul fast float %8339, %8339
  %8858 = fsub fast float 1.000000e+00, %8857
  %8859 = fmul fast float %8858, 0x3FB45F3060000000
  %8860 = fmul fast float %8856, %8856
  %8861 = fdiv fast float 1.000000e+00, %8860
  %8862 = fmul fast float %8859, %8861
  %8863 = fmul fast float %8862, %8336
  %8864 = fmul fast float %8862, %8337
  %8865 = fmul fast float %8862, %8338
  %8866 = fadd fast float %8863, %8852
  %8867 = fadd fast float %8864, %8853
  %8868 = fadd fast float %8865, %8854
  %8869 = fsub fast float 1.000000e+00, %8846
  %8870 = fsub fast float 1.000000e+00, %8847
  %8871 = fsub fast float 1.000000e+00, %8848
  %8872 = fmul fast float %8866, %8869
  %8873 = fmul fast float %8867, %8870
  %8874 = fmul fast float %8868, %8871
  br label %8875

; <label>:8875                                    ; preds = %8836, %8787
  %8876 = phi float [ %8813, %8787 ], [ %8872, %8836 ]
  %8877 = phi float [ %8814, %8787 ], [ %8873, %8836 ]
  %8878 = phi float [ %8815, %8787 ], [ %8874, %8836 ]
  %8879 = phi float [ %8802, %8787 ], [ %8846, %8836 ]
  %8880 = phi float [ %8802, %8787 ], [ %8847, %8836 ]
  %8881 = phi float [ %8802, %8787 ], [ %8848, %8836 ]
  br i1 %8368, label %8882, label %9080, !dx.controlflow.hints !170

; <label>:8882                                    ; preds = %8875
  %8883 = extractvalue %dx.types.CBufRet.f32 %8781, 0
  %8884 = fmul fast float %8883, %8783
  %8885 = fsub fast float %8778, %8876
  %8886 = fsub fast float %8779, %8877
  %8887 = fsub fast float %8780, %8878
  %8888 = fmul fast float %8884, %8885
  %8889 = fmul fast float %8884, %8886
  %8890 = fmul fast float %8884, %8887
  %8891 = fadd fast float %8888, %8876
  %8892 = fadd fast float %8889, %8877
  %8893 = fadd fast float %8890, %8878
  %8894 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8879)  ; FMax(a,b)
  %8895 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8880)  ; FMax(a,b)
  %8896 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8881)  ; FMax(a,b)
  %8897 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8777)  ; FMax(a,b)
  %8898 = call float @dx.op.binary.f32(i32 35, float %8776, float %8786)  ; FMax(a,b)
  %8899 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8898)  ; FMax(a,b)
  %8900 = fdiv fast float %8776, %8899
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = fdiv fast float %8786, %8899
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fcmp fast une float %8897, 1.000000e+00
  br i1 %8904, label %8905, label %8918, !dx.controlflow.hints !171

; <label>:8905                                    ; preds = %8882
  %8906 = call float @dx.op.unary.f32(i32 23, float %8897)  ; Log(value)
  %8907 = fmul fast float %8906, 0x3FE62E4300000000
  %8908 = fmul fast float %8778, %8907
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = fmul fast float %8779, %8907
  %8911 = fsub fast float -0.000000e+00, %8910
  %8912 = fmul fast float %8780, %8907
  %8913 = fsub fast float -0.000000e+00, %8912
  %8914 = fsub fast float 1.000000e+00, %8897
  %8915 = fdiv fast float %8909, %8914
  %8916 = fdiv fast float %8911, %8914
  %8917 = fdiv fast float %8913, %8914
  br label %8918

; <label>:8918                                    ; preds = %8905, %8882
  %8919 = phi float [ %8915, %8905 ], [ %8778, %8882 ]
  %8920 = phi float [ %8916, %8905 ], [ %8779, %8882 ]
  %8921 = phi float [ %8917, %8905 ], [ %8780, %8882 ]
  %8922 = phi float [ %8907, %8905 ], [ 0.000000e+00, %8882 ]
  %8923 = fcmp fast une float %8894, 1.000000e+00
  br i1 %8923, label %8924, label %8931, !dx.controlflow.hints !172

; <label>:8924                                    ; preds = %8918
  %8925 = call float @dx.op.unary.f32(i32 23, float %8894)  ; Log(value)
  %8926 = fmul fast float %8925, 0x3FE62E4300000000
  %8927 = fmul fast float %8891, %8926
  %8928 = fsub fast float -0.000000e+00, %8927
  %8929 = fsub fast float 1.000000e+00, %8894
  %8930 = fdiv fast float %8928, %8929
  br label %8931

; <label>:8931                                    ; preds = %8924, %8918
  %8932 = phi float [ %8930, %8924 ], [ %8891, %8918 ]
  %8933 = phi float [ %8926, %8924 ], [ 0.000000e+00, %8918 ]
  %8934 = fcmp fast une float %8895, 1.000000e+00
  br i1 %8934, label %8935, label %8942, !dx.controlflow.hints !172

; <label>:8935                                    ; preds = %8931
  %8936 = call float @dx.op.unary.f32(i32 23, float %8895)  ; Log(value)
  %8937 = fmul fast float %8936, 0x3FE62E4300000000
  %8938 = fmul fast float %8892, %8937
  %8939 = fsub fast float -0.000000e+00, %8938
  %8940 = fsub fast float 1.000000e+00, %8895
  %8941 = fdiv fast float %8939, %8940
  br label %8942

; <label>:8942                                    ; preds = %8935, %8931
  %8943 = phi float [ %8941, %8935 ], [ %8892, %8931 ]
  %8944 = phi float [ %8937, %8935 ], [ 0.000000e+00, %8931 ]
  %8945 = fcmp fast une float %8896, 1.000000e+00
  br i1 %8945, label %8946, label %8953, !dx.controlflow.hints !172

; <label>:8946                                    ; preds = %8942
  %8947 = call float @dx.op.unary.f32(i32 23, float %8896)  ; Log(value)
  %8948 = fmul fast float %8947, 0x3FE62E4300000000
  %8949 = fmul fast float %8893, %8948
  %8950 = fsub fast float -0.000000e+00, %8949
  %8951 = fsub fast float 1.000000e+00, %8896
  %8952 = fdiv fast float %8950, %8951
  br label %8953

; <label>:8953                                    ; preds = %8946, %8942
  %8954 = phi float [ %8952, %8946 ], [ %8893, %8942 ]
  %8955 = phi float [ %8948, %8946 ], [ 0.000000e+00, %8942 ]
  %8956 = fmul fast float %8919, %8903
  %8957 = fmul fast float %8920, %8903
  %8958 = fmul fast float %8921, %8903
  %8959 = fmul fast float %8922, %8903
  %8960 = fmul fast float %8932, %8901
  %8961 = fmul fast float %8943, %8901
  %8962 = fmul fast float %8954, %8901
  %8963 = fmul fast float %8933, %8901
  %8964 = fmul fast float %8944, %8901
  %8965 = fmul fast float %8955, %8901
  %8966 = fadd fast float %8960, %8956
  %8967 = fadd fast float %8961, %8957
  %8968 = fadd fast float %8962, %8958
  %8969 = fadd fast float %8963, %8959
  %8970 = fadd fast float %8964, %8959
  %8971 = fadd fast float %8965, %8959
  %8972 = fcmp fast une float %8969, 0.000000e+00
  br i1 %8972, label %8973, label %8980, !dx.controlflow.hints !173

; <label>:8973                                    ; preds = %8953
  %8974 = fmul fast float %8969, 0x3FF7154760000000
  %8975 = call float @dx.op.unary.f32(i32 21, float %8974)  ; Exp(value)
  %8976 = fsub fast float 1.000000e+00, %8975
  %8977 = fmul fast float %8966, %8976
  %8978 = fsub fast float -0.000000e+00, %8977
  %8979 = fdiv fast float %8978, %8969
  br label %8980

; <label>:8980                                    ; preds = %8973, %8953
  %8981 = phi float [ %8975, %8973 ], [ 1.000000e+00, %8953 ]
  %8982 = phi float [ %8979, %8973 ], [ %8966, %8953 ]
  %8983 = fcmp fast une float %8970, 0.000000e+00
  br i1 %8983, label %8984, label %8991, !dx.controlflow.hints !173

; <label>:8984                                    ; preds = %8980
  %8985 = fmul fast float %8970, 0x3FF7154760000000
  %8986 = call float @dx.op.unary.f32(i32 21, float %8985)  ; Exp(value)
  %8987 = fsub fast float 1.000000e+00, %8986
  %8988 = fmul fast float %8967, %8987
  %8989 = fsub fast float -0.000000e+00, %8988
  %8990 = fdiv fast float %8989, %8970
  br label %8991

; <label>:8991                                    ; preds = %8984, %8980
  %8992 = phi float [ %8986, %8984 ], [ 1.000000e+00, %8980 ]
  %8993 = phi float [ %8990, %8984 ], [ %8967, %8980 ]
  %8994 = fcmp fast une float %8971, 0.000000e+00
  br i1 %8994, label %8995, label %9002, !dx.controlflow.hints !173

; <label>:8995                                    ; preds = %8991
  %8996 = fmul fast float %8971, 0x3FF7154760000000
  %8997 = call float @dx.op.unary.f32(i32 21, float %8996)  ; Exp(value)
  %8998 = fsub fast float 1.000000e+00, %8997
  %8999 = fmul fast float %8968, %8998
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = fdiv fast float %9000, %8971
  br label %9002

; <label>:9002                                    ; preds = %8995, %8991
  %9003 = phi float [ %8997, %8995 ], [ 1.000000e+00, %8991 ]
  %9004 = phi float [ %9001, %8995 ], [ %8968, %8991 ]
  %9005 = fcmp fast ogt float %8901, %8903
  br i1 %9005, label %9006, label %9026

; <label>:9006                                    ; preds = %9002
  %9007 = fsub fast float 1.000000e+00, %8903
  %9008 = fmul fast float %8919, %9007
  %9009 = fmul fast float %8920, %9007
  %9010 = fmul fast float %8921, %9007
  %9011 = fmul fast float %8922, %9007
  %9012 = fcmp fast une float %9011, 0.000000e+00
  br i1 %9012, label %9013, label %9064, !dx.controlflow.hints !174

; <label>:9013                                    ; preds = %9006
  %9014 = fmul fast float %9011, 0x3FF7154760000000
  %9015 = call float @dx.op.unary.f32(i32 21, float %9014)  ; Exp(value)
  %9016 = fsub fast float 1.000000e+00, %9015
  %9017 = fmul fast float %9008, %9016
  %9018 = fsub fast float -0.000000e+00, %9017
  %9019 = fmul fast float %9009, %9016
  %9020 = fsub fast float -0.000000e+00, %9019
  %9021 = fmul fast float %9010, %9016
  %9022 = fsub fast float -0.000000e+00, %9021
  %9023 = fdiv fast float %9018, %9011
  %9024 = fdiv fast float %9020, %9011
  %9025 = fdiv fast float %9022, %9011
  br label %9064

; <label>:9026                                    ; preds = %9002
  %9027 = fsub fast float 1.000000e+00, %8901
  %9028 = fmul fast float %8932, %9027
  %9029 = fmul fast float %8943, %9027
  %9030 = fmul fast float %8954, %9027
  %9031 = fmul fast float %8933, %9027
  %9032 = fmul fast float %8944, %9027
  %9033 = fmul fast float %8955, %9027
  %9034 = fcmp fast une float %9031, 0.000000e+00
  br i1 %9034, label %9035, label %9042, !dx.controlflow.hints !173

; <label>:9035                                    ; preds = %9026
  %9036 = fmul fast float %9031, 0x3FF7154760000000
  %9037 = call float @dx.op.unary.f32(i32 21, float %9036)  ; Exp(value)
  %9038 = fsub fast float 1.000000e+00, %9037
  %9039 = fmul fast float %9028, %9038
  %9040 = fsub fast float -0.000000e+00, %9039
  %9041 = fdiv fast float %9040, %9031
  br label %9042

; <label>:9042                                    ; preds = %9035, %9026
  %9043 = phi float [ %9041, %9035 ], [ %9028, %9026 ]
  %9044 = phi float [ %9037, %9035 ], [ 1.000000e+00, %9026 ]
  %9045 = fcmp fast une float %9032, 0.000000e+00
  br i1 %9045, label %9046, label %9053, !dx.controlflow.hints !173

; <label>:9046                                    ; preds = %9042
  %9047 = fmul fast float %9032, 0x3FF7154760000000
  %9048 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9049 = fsub fast float 1.000000e+00, %9048
  %9050 = fmul fast float %9029, %9049
  %9051 = fsub fast float -0.000000e+00, %9050
  %9052 = fdiv fast float %9051, %9032
  br label %9053

; <label>:9053                                    ; preds = %9046, %9042
  %9054 = phi float [ %9052, %9046 ], [ %9029, %9042 ]
  %9055 = phi float [ %9048, %9046 ], [ 1.000000e+00, %9042 ]
  %9056 = fcmp fast une float %9033, 0.000000e+00
  br i1 %9056, label %9057, label %9064, !dx.controlflow.hints !173

; <label>:9057                                    ; preds = %9053
  %9058 = fmul fast float %9033, 0x3FF7154760000000
  %9059 = call float @dx.op.unary.f32(i32 21, float %9058)  ; Exp(value)
  %9060 = fsub fast float 1.000000e+00, %9059
  %9061 = fmul fast float %9030, %9060
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fdiv fast float %9062, %9033
  br label %9064

; <label>:9064                                    ; preds = %9057, %9053, %9013, %9006
  %9065 = phi float [ %9063, %9057 ], [ %9025, %9013 ], [ %9010, %9006 ], [ %9030, %9053 ]
  %9066 = phi float [ %9054, %9057 ], [ %9024, %9013 ], [ %9009, %9006 ], [ %9054, %9053 ]
  %9067 = phi float [ %9043, %9057 ], [ %9023, %9013 ], [ %9008, %9006 ], [ %9043, %9053 ]
  %9068 = phi float [ %9059, %9057 ], [ %9015, %9013 ], [ 1.000000e+00, %9006 ], [ 1.000000e+00, %9053 ]
  %9069 = phi float [ %9055, %9057 ], [ %9015, %9013 ], [ 1.000000e+00, %9006 ], [ %9055, %9053 ]
  %9070 = phi float [ %9044, %9057 ], [ %9015, %9013 ], [ 1.000000e+00, %9006 ], [ %9044, %9053 ]
  %9071 = fmul fast float %9070, %8982
  %9072 = fmul fast float %9069, %8993
  %9073 = fmul fast float %9068, %9004
  %9074 = fadd fast float %9071, %9067
  %9075 = fadd fast float %9072, %9066
  %9076 = fadd fast float %9073, %9065
  %9077 = fmul fast float %9070, %8981
  %9078 = fmul fast float %9069, %8992
  %9079 = fmul fast float %9068, %9003
  br label %9080

; <label>:9080                                    ; preds = %9064, %8875
  %9081 = phi float [ %9079, %9064 ], [ %8881, %8875 ]
  %9082 = phi float [ %9078, %9064 ], [ %8880, %8875 ]
  %9083 = phi float [ %9077, %9064 ], [ %8879, %8875 ]
  %9084 = phi float [ %9076, %9064 ], [ %8878, %8875 ]
  %9085 = phi float [ %9075, %9064 ], [ %8877, %8875 ]
  %9086 = phi float [ %9074, %9064 ], [ %8876, %8875 ]
  %9087 = fmul fast float %9086, %8028
  %9088 = fmul fast float %9085, %8030
  %9089 = fmul fast float %9084, %8032
  %9090 = fmul fast float %9083, %8323
  %9091 = call float @dx.op.dot3.f32(i32 55, float %9083, float %9082, float %9081, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9092 = call float @dx.op.dot3.f32(i32 55, float %9087, float %9088, float %9089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9093 = select i1 %269, float %9091, float %9083
  %9094 = select i1 %269, float %9091, float %9082
  %9095 = select i1 %269, float 1.000000e+00, float %9081
  %9096 = select i1 %269, float %9092, float %9087
  %9097 = select i1 %269, float 0.000000e+00, float %9088
  %9098 = select i1 %269, float 0.000000e+00, float %9089
  %9099 = fmul fast float %9093, %8317
  %9100 = fmul fast float %9094, %8318
  %9101 = fmul fast float %9095, %8319
  %9102 = fadd fast float %9099, %9096
  %9103 = fadd fast float %9100, %9097
  %9104 = fadd fast float %9098, %9101
  %9105 = fmul fast float %9093, %8320
  %9106 = fmul fast float %9094, %8321
  %9107 = fmul fast float %9095, %8322
  %9108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.i32 %9108, 0
  %9110 = icmp eq i32 %9109, 0
  br i1 %9110, label %9478, label %9111, !dx.controlflow.hints !175

; <label>:9111                                    ; preds = %9080
  %9112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9113 = extractvalue %dx.types.CBufRet.f32 %9112, 2
  %9114 = extractvalue %dx.types.CBufRet.f32 %9112, 3
  %9115 = fmul fast float %9113, %110
  %9116 = fmul fast float %9114, %111
  %9117 = fmul fast float %9115, 2.000000e+00
  %9118 = fmul fast float %9116, 2.000000e+00
  %9119 = fsub fast float 1.000000e+00, %9117
  %9120 = fsub fast float 1.000000e+00, %9118
  %9121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9121, 0
  %9123 = extractvalue %dx.types.CBufRet.f32 %9121, 1
  %9124 = extractvalue %dx.types.CBufRet.f32 %9121, 2
  %9125 = fmul fast float %9119, %9122
  %9126 = fmul fast float %9119, %9123
  %9127 = fmul fast float %9119, %9124
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 0
  %9130 = extractvalue %dx.types.CBufRet.f32 %9128, 1
  %9131 = extractvalue %dx.types.CBufRet.f32 %9128, 2
  %9132 = fmul fast float %9120, %9129
  %9133 = fmul fast float %9120, %9130
  %9134 = fmul fast float %9120, %9131
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9137 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9138 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9139 = fadd fast float %9132, %9136
  %9140 = fadd fast float %9139, %9125
  %9141 = fadd fast float %9133, %9137
  %9142 = fadd fast float %9141, %9126
  %9143 = fadd fast float %9134, %9138
  %9144 = fadd fast float %9143, %9127
  %9145 = fmul fast float %9140, %8316
  %9146 = fmul fast float %9142, %8316
  %9147 = fmul fast float %9144, %8316
  %9148 = fmul fast float %9145, %9145
  %9149 = fmul fast float %9146, %9146
  %9150 = fadd fast float %9148, %9149
  %9151 = fmul fast float %9147, %9147
  %9152 = fadd fast float %9150, %9151
  %9153 = call float @dx.op.unary.f32(i32 24, float %9152)  ; Sqrt(value)
  %9154 = extractvalue %dx.types.CBufRet.f32 %8043, 0
  %9155 = fsub fast float %9153, %9154
  %9156 = extractvalue %dx.types.CBufRet.f32 %8043, 2
  %9157 = fmul fast float %9155, %9156
  %9158 = call float @dx.op.unary.f32(i32 7, float %9157)  ; Saturate(value)
  %9159 = fadd fast float %9158, -5.000000e-01
  %9160 = fmul fast float %9159, 2.000000e+00
  %9161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9162 = extractvalue %dx.types.CBufRet.f32 %9161, 2
  %9163 = call float @dx.op.binary.f32(i32 36, float %9162, float %9160)  ; FMin(a,b)
  %9164 = fsub fast float -0.000000e+00, %9162
  %9165 = fcmp fast ogt float %9163, %9164
  br i1 %9165, label %9166, label %9478, !dx.controlflow.hints !176

; <label>:9166                                    ; preds = %9111
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 3
  %9169 = fcmp fast ogt float %9168, 0.000000e+00
  br i1 %9169, label %9170, label %9245, !dx.controlflow.hints !177

; <label>:9170                                    ; preds = %9166
  %9171 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9172 = extractvalue %dx.types.Dimensions %9171, 0
  %9173 = sitofp i32 %9172 to float
  %9174 = extractvalue %dx.types.Dimensions %9171, 1
  %9175 = sitofp i32 %9174 to float
  %9176 = fmul fast float %9115, %9173
  %9177 = fmul fast float %9116, %9175
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 1
  %9180 = fsub fast float -0.000000e+00, %9179
  %9181 = fptoui float %9180 to i32
  %9182 = fptoui float %9176 to i32
  %9183 = fptoui float %9177 to i32
  %9184 = and i32 %9181, 31
  %9185 = lshr i32 %9182, %9184
  %9186 = lshr i32 %9183, %9184
  %9187 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9181, i32 %9185, i32 %9186, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9188 = extractvalue %dx.types.ResRet.f32 %9187, 0
  %9189 = fcmp fast olt float %9188, -1.000000e+00
  %9190 = fcmp fast ogt float %9188, -1.000000e+00
  %9191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9192 = extractvalue %dx.types.CBufRet.f32 %9191, 1
  %9193 = select i1 %9190, float %9192, float 1.000000e+00
  %9194 = fadd fast float %9188, 1.000000e+00
  %9195 = fmul fast float %9193, %9194
  %9196 = call float @dx.op.unary.f32(i32 6, float %9195)  ; FAbs(value)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9191, 3
  %9198 = fcmp fast oge float %9196, %9197
  %9199 = select i1 %9198, float 0x4197782600000000, float %9196
  %9200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9201 = extractvalue %dx.types.CBufRet.f32 %9200, 0
  %9202 = extractvalue %dx.types.CBufRet.f32 %9200, 1
  %9203 = extractvalue %dx.types.CBufRet.f32 %9200, 2
  %9204 = select i1 %9189, float %9201, float %9122
  %9205 = select i1 %9189, float %9202, float %9123
  %9206 = select i1 %9189, float %9203, float %9124
  %9207 = fmul fast float %9204, %9119
  %9208 = fmul fast float %9205, %9119
  %9209 = fmul fast float %9206, %9119
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9213 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9214 = select i1 %9189, float %9211, float %9129
  %9215 = select i1 %9189, float %9212, float %9130
  %9216 = select i1 %9189, float %9213, float %9131
  %9217 = fmul fast float %9214, %9120
  %9218 = fmul fast float %9215, %9120
  %9219 = fmul fast float %9216, %9120
  %9220 = fadd fast float %9217, %9207
  %9221 = fadd fast float %9218, %9208
  %9222 = fadd fast float %9219, %9209
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 0
  %9225 = extractvalue %dx.types.CBufRet.f32 %9223, 1
  %9226 = extractvalue %dx.types.CBufRet.f32 %9223, 2
  %9227 = select i1 %9189, float %9224, float %9136
  %9228 = select i1 %9189, float %9225, float %9137
  %9229 = select i1 %9189, float %9226, float %9138
  %9230 = fadd fast float %9220, %9227
  %9231 = fadd fast float %9221, %9228
  %9232 = fadd fast float %9222, %9229
  %9233 = fmul fast float %9230, %9199
  %9234 = fmul fast float %9231, %9199
  %9235 = fmul fast float %9232, %9199
  %9236 = fmul fast float %9233, %9233
  %9237 = fmul fast float %9234, %9234
  %9238 = fadd fast float %9236, %9237
  %9239 = fmul fast float %9235, %9235
  %9240 = fadd fast float %9238, %9239
  %9241 = call float @dx.op.unary.f32(i32 24, float %9240)  ; Sqrt(value)
  %9242 = fsub fast float %9241, %9154
  %9243 = fmul fast float %9242, %9156
  %9244 = call float @dx.op.unary.f32(i32 7, float %9243)  ; Saturate(value)
  br label %9245

; <label>:9245                                    ; preds = %9170, %9166
  %9246 = phi float [ %9244, %9170 ], [ 1.000000e+00, %9166 ]
  %9247 = fmul fast float %9163, 5.000000e-01
  %9248 = fadd fast float %9247, 5.000000e-01
  %9249 = call float @dx.op.unary.f32(i32 22, float %9248)  ; Frc(value)
  %9250 = call float @dx.op.unary.f32(i32 27, float %9249)  ; Round_ni(value)
  %9251 = call float @dx.op.unary.f32(i32 22, float %9249)  ; Frc(value)
  %9252 = fmul fast float %9251, 2.000000e+00
  %9253 = fadd fast float %9252, -1.000000e+00
  %9254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9115, float %9116, float %9250, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9255 = extractvalue %dx.types.ResRet.f32 %9254, 0
  %9256 = extractvalue %dx.types.ResRet.f32 %9254, 1
  %9257 = extractvalue %dx.types.ResRet.f32 %9254, 2
  %9258 = extractvalue %dx.types.ResRet.f32 %9254, 3
  %9259 = fadd fast float %9255, -5.000000e-01
  %9260 = fadd fast float %9257, -5.000000e-01
  %9261 = fmul fast float %9259, 0xBFD5555560000000
  %9262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9260, float %9261)  ; FMad(a,b,c)
  %9263 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9256, float 0.000000e+00)  ; FMad(a,b,c)
  %9264 = fadd fast float %9263, %9258
  %9265 = fmul fast float %9259, -7.500000e-01
  %9266 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9260, float %9265)  ; FMad(a,b,c)
  %9267 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9256, float 0.000000e+00)  ; FMad(a,b,c)
  %9268 = fadd fast float %9267, %9258
  %9269 = call float @dx.op.binary.f32(i32 35, float %9262, float -1.000000e+00)  ; FMax(a,b)
  %9270 = call float @dx.op.binary.f32(i32 35, float %9264, float -1.000000e+00)  ; FMax(a,b)
  %9271 = call float @dx.op.binary.f32(i32 35, float %9266, float -1.000000e+00)  ; FMax(a,b)
  %9272 = call float @dx.op.binary.f32(i32 35, float %9268, float -1.000000e+00)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 36, float %9269, float 1.000000e+00)  ; FMin(a,b)
  %9274 = call float @dx.op.binary.f32(i32 36, float %9270, float 1.000000e+00)  ; FMin(a,b)
  %9275 = call float @dx.op.binary.f32(i32 36, float %9271, float 1.000000e+00)  ; FMin(a,b)
  %9276 = call float @dx.op.binary.f32(i32 36, float %9272, float 1.000000e+00)  ; FMin(a,b)
  %9277 = fcmp fast olt float %9273, 0x3FEFFF8020000000
  br i1 %9277, label %9278, label %9393, !dx.controlflow.hints !178

; <label>:9278                                    ; preds = %9245
  %9279 = extractvalue %dx.types.CBufRet.f32 %9161, 3
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.CBufRet.f32 %9280, 1
  %9283 = extractvalue %dx.types.CBufRet.f32 %9280, 2
  %9284 = extractvalue %dx.types.CBufRet.f32 %9280, 3
  %9285 = fsub fast float %9281, %9273
  %9286 = fsub fast float %9282, %9274
  %9287 = fsub fast float %9283, %9275
  %9288 = fsub fast float %9284, %9276
  %9289 = fmul fast float %9285, %9279
  %9290 = fmul fast float %9286, %9279
  %9291 = fmul fast float %9287, %9279
  %9292 = fmul fast float %9288, %9279
  %9293 = fadd fast float %9289, %9273
  %9294 = fadd fast float %9290, %9274
  %9295 = fsub fast float -0.000000e+00, %9294
  %9296 = fadd fast float %9291, %9275
  %9297 = fadd fast float %9292, %9276
  %9298 = fmul fast float %9293, %9293
  %9299 = fsub fast float %9294, %9298
  %9300 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9299)  ; FMax(a,b)
  %9301 = fdiv fast float 1.000000e+00, %9300
  %9302 = fmul fast float %9294, %9293
  %9303 = fsub fast float %9296, %9302
  %9304 = fsub fast float %9253, %9293
  %9305 = fmul fast float %9253, %9253
  %9306 = fsub fast float %9305, %9294
  %9307 = fmul fast float %9304, %9301
  %9308 = fmul fast float %9307, %9303
  %9309 = fsub fast float %9306, %9308
  %9310 = fmul fast float %9294, %9294
  %9311 = fsub fast float %9297, %9310
  %9312 = fmul fast float %9303, %9303
  %9313 = fmul fast float %9312, %9301
  %9314 = fsub fast float %9311, %9313
  %9315 = fdiv fast float %9309, %9314
  %9316 = fmul fast float %9303, %9315
  %9317 = fsub fast float %9304, %9316
  %9318 = fmul fast float %9317, %9301
  %9319 = fmul fast float %9318, %9293
  %9320 = fsub fast float 1.000000e+00, %9319
  %9321 = fmul fast float %9294, %9315
  %9322 = fsub fast float %9320, %9321
  %9323 = fmul fast float %9318, %9318
  %9324 = fmul fast float %9315, 4.000000e+00
  %9325 = fmul fast float %9324, %9322
  %9326 = fsub fast float %9323, %9325
  %9327 = call float @dx.op.unary.f32(i32 24, float %9326)  ; Sqrt(value)
  %9328 = fcmp fast oge float %9318, 0.000000e+00
  %9329 = fsub fast float -0.000000e+00, %9327
  %9330 = select i1 %9328, float %9329, float %9327
  %9331 = fsub fast float %9330, %9318
  %9332 = fdiv fast float %9331, %9315
  %9333 = fdiv fast float %9322, %9331
  %9334 = fmul fast float %9332, 5.000000e-01
  %9335 = fmul fast float %9333, 2.000000e+00
  %9336 = select i1 %9328, float %9334, float %9335
  %9337 = select i1 %9328, float %9335, float %9334
  %9338 = call float @dx.op.binary.f32(i32 35, float %9336, float %9337)  ; FMax(a,b)
  %9339 = call float @dx.op.binary.f32(i32 36, float %9336, float %9337)  ; FMin(a,b)
  %9340 = fcmp fast ogt float %9253, %9339
  br i1 %9340, label %9341, label %9351

; <label>:9341                                    ; preds = %9278
  %9342 = fsub fast float %9253, %9339
  %9343 = fsub fast float %9338, %9339
  %9344 = fmul fast float %9342, %9343
  %9345 = fmul fast float %9338, %9253
  %9346 = fadd fast float %9338, %9253
  %9347 = fmul fast float %9346, %9293
  %9348 = fadd fast float %9345, %9294
  %9349 = fsub fast float %9348, %9347
  %9350 = fdiv fast float %9349, %9344
  br label %9351

; <label>:9351                                    ; preds = %9341, %9278
  %9352 = phi float [ %9350, %9341 ], [ 0.000000e+00, %9278 ]
  %9353 = fcmp fast ogt float %9253, %9338
  %9354 = fsub fast float %9253, %9338
  br i1 %9353, label %9355, label %9365

; <label>:9355                                    ; preds = %9351
  %9356 = fsub fast float %9338, %9339
  %9357 = fmul fast float %9356, %9354
  %9358 = fmul fast float %9339, %9253
  %9359 = fadd fast float %9339, %9253
  %9360 = fmul fast float %9359, %9293
  %9361 = fsub fast float %9295, %9358
  %9362 = fadd fast float %9361, %9360
  %9363 = fdiv fast float %9362, %9357
  %9364 = fadd fast float %9363, %9352
  br label %9365

; <label>:9365                                    ; preds = %9355, %9351
  %9366 = phi float [ %9364, %9355 ], [ %9352, %9351 ]
  %9367 = fsub fast float %9253, %9339
  %9368 = fmul fast float %9367, %9354
  %9369 = fmul fast float %9339, %9338
  %9370 = fadd fast float %9339, %9338
  %9371 = fmul fast float %9370, %9293
  %9372 = fadd fast float %9369, %9294
  %9373 = fsub fast float %9372, %9371
  %9374 = fdiv fast float %9373, %9368
  %9375 = call float @dx.op.unary.f32(i32 7, float %9366)  ; Saturate(value)
  %9376 = fcmp fast oeq float %8044, 0.000000e+00
  %9377 = extractvalue %dx.types.CBufRet.f32 %9161, 0
  %9378 = fcmp fast oeq float %9377, 0.000000e+00
  %9379 = or i1 %9376, %9378
  %9380 = fmul fast float %9377, 2.000000e+00
  %9381 = fadd fast float %9162, %9163
  %9382 = fdiv fast float %9381, %9380
  %9383 = call float @dx.op.unary.f32(i32 7, float %9382)  ; Saturate(value)
  %9384 = fmul fast float %9383, 2.000000e+00
  %9385 = fsub fast float 3.000000e+00, %9384
  %9386 = fmul fast float %9383, %9383
  %9387 = fmul fast float %9386, %9385
  %9388 = select i1 %9379, float 1.000000e+00, float %9387
  %9389 = fmul fast float %9374, %8044
  %9390 = fadd fast float %9375, %9389
  %9391 = call float @dx.op.unary.f32(i32 7, float %9390)  ; Saturate(value)
  %9392 = fmul fast float %9388, %9391
  br label %9393

; <label>:9393                                    ; preds = %9365, %9245
  %9394 = phi float [ %9392, %9365 ], [ 0.000000e+00, %9245 ]
  %9395 = fsub fast float 1.000000e+00, %9394
  %9396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9115, float %9116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9397 = extractvalue %dx.types.ResRet.f32 %9396, 0
  %9398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.i32 %9398, 2
  %9400 = icmp eq i32 %9399, 0
  br i1 %9400, label %9406, label %9401

; <label>:9401                                    ; preds = %9393
  %9402 = call float @dx.op.unary.f32(i32 7, float %9394)  ; Saturate(value)
  %9403 = fadd fast float %9397, -1.000000e+00
  %9404 = fmul fast float %9402, %9403
  %9405 = fadd fast float %9404, 1.000000e+00
  br label %9406

; <label>:9406                                    ; preds = %9401, %9393
  %9407 = phi float [ %9405, %9401 ], [ %9395, %9393 ]
  br i1 %9169, label %9408, label %9426

; <label>:9408                                    ; preds = %9406
  %9409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9410 = extractvalue %dx.types.CBufRet.f32 %9409, 1
  %9411 = fsub fast float %9246, %9410
  %9412 = call float @dx.op.unary.f32(i32 7, float %9411)  ; Saturate(value)
  %9413 = fsub fast float %9246, %9168
  %9414 = call float @dx.op.unary.f32(i32 7, float %9413)  ; Saturate(value)
  %9415 = fsub fast float %9412, %9414
  %9416 = fsub fast float %9248, %9414
  %9417 = fdiv fast float %9416, %9415
  %9418 = call float @dx.op.unary.f32(i32 7, float %9417)  ; Saturate(value)
  %9419 = fmul fast float %9418, 2.000000e+00
  %9420 = fsub fast float 3.000000e+00, %9419
  %9421 = fsub fast float %9397, %9407
  %9422 = fmul fast float %9418, %9418
  %9423 = fmul fast float %9422, %9421
  %9424 = fmul fast float %9423, %9420
  %9425 = fadd fast float %9424, %9407
  br label %9426

; <label>:9426                                    ; preds = %9408, %9406
  %9427 = phi float [ %9425, %9408 ], [ %9407, %9406 ]
  %9428 = call float @dx.op.binary.f32(i32 35, float %9397, float %9427)  ; FMax(a,b)
  %9429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9430 = extractvalue %dx.types.CBufRet.i32 %9429, 2
  %9431 = and i32 %9430, 1
  %9432 = icmp eq i32 %9431, 0
  %9433 = fcmp fast une float %9428, 1.000000e+00
  %9434 = and i1 %9433, %9432
  br i1 %9434, label %9435, label %9454

; <label>:9435                                    ; preds = %9426
  %9436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9115, float %9116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9437 = extractvalue %dx.types.ResRet.f32 %9436, 0
  %9438 = extractvalue %dx.types.ResRet.f32 %9436, 1
  %9439 = extractvalue %dx.types.ResRet.f32 %9436, 2
  %9440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.f32 %9440, 1
  %9442 = fmul fast float %9441, %9437
  %9443 = fmul fast float %9441, %9438
  %9444 = fmul fast float %9441, %9439
  %9445 = fcmp fast ogt float %9397, 0x3FEFFF2E40000000
  %9446 = fsub fast float 1.000000e+00, %9428
  %9447 = fsub fast float 1.000000e+00, %9397
  %9448 = fdiv fast float %9446, %9447
  %9449 = call float @dx.op.unary.f32(i32 7, float %9448)  ; Saturate(value)
  %9450 = select i1 %9445, float 0.000000e+00, float %9449
  %9451 = fmul fast float %9442, %9450
  %9452 = fmul fast float %9443, %9450
  %9453 = fmul fast float %9444, %9450
  br label %9454

; <label>:9454                                    ; preds = %9435, %9426
  %9455 = phi float [ 0.000000e+00, %9426 ], [ %9451, %9435 ]
  %9456 = phi float [ 0.000000e+00, %9426 ], [ %9452, %9435 ]
  %9457 = phi float [ 0.000000e+00, %9426 ], [ %9453, %9435 ]
  %9458 = fmul fast float %9455, %8028
  %9459 = fmul fast float %9456, %8030
  %9460 = fmul fast float %9457, %8032
  %9461 = fmul fast float %9428, %9090
  %9462 = call float @dx.op.dot3.f32(i32 55, float %9428, float %9428, float %9428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9463 = call float @dx.op.dot3.f32(i32 55, float %9458, float %9459, float %9460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9464 = select i1 %269, float %9462, float %9428
  %9465 = select i1 %269, float 1.000000e+00, float %9428
  %9466 = select i1 %269, float %9463, float %9458
  %9467 = select i1 %269, float 0.000000e+00, float %9459
  %9468 = select i1 %269, float 0.000000e+00, float %9460
  %9469 = fmul fast float %9464, %9102
  %9470 = fmul fast float %9464, %9103
  %9471 = fmul fast float %9465, %9104
  %9472 = fadd fast float %9469, %9466
  %9473 = fadd fast float %9470, %9467
  %9474 = fadd fast float %9468, %9471
  %9475 = fmul fast float %9464, %9105
  %9476 = fmul fast float %9464, %9106
  %9477 = fmul fast float %9465, %9107
  br label %9478

; <label>:9478                                    ; preds = %9454, %9111, %9080, %8312
  %9479 = phi float [ %8317, %8312 ], [ %9102, %9080 ], [ %9472, %9454 ], [ %9102, %9111 ]
  %9480 = phi float [ %8318, %8312 ], [ %9103, %9080 ], [ %9473, %9454 ], [ %9103, %9111 ]
  %9481 = phi float [ %8319, %8312 ], [ %9104, %9080 ], [ %9474, %9454 ], [ %9104, %9111 ]
  %9482 = phi float [ %8320, %8312 ], [ %9105, %9080 ], [ %9475, %9454 ], [ %9105, %9111 ]
  %9483 = phi float [ %8321, %8312 ], [ %9106, %9080 ], [ %9476, %9454 ], [ %9106, %9111 ]
  %9484 = phi float [ %8322, %8312 ], [ %9107, %9080 ], [ %9477, %9454 ], [ %9107, %9111 ]
  %9485 = phi float [ %8323, %8312 ], [ %9090, %9080 ], [ %9461, %9454 ], [ %9090, %9111 ]
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 3
  %9489 = fmul fast float %9487, %110
  %9490 = fmul fast float %9488, %111
  %9491 = call float @dx.op.unary.f32(i32 7, float %9489)  ; Saturate(value)
  %9492 = call float @dx.op.unary.f32(i32 7, float %9490)  ; Saturate(value)
  %9493 = select i1 %8054, i32 2, i32 0
  %9494 = or i32 %9493, 1
  %9495 = uitofp i32 %9494 to float
  %9496 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9491, float %9492, float %9495, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9497 = extractvalue %dx.types.ResRet.f32 %9496, 0
  %9498 = extractvalue %dx.types.ResRet.f32 %9496, 1
  %9499 = extractvalue %dx.types.ResRet.f32 %9496, 2
  %9500 = extractvalue %dx.types.ResRet.f32 %9496, 3
  %9501 = add nuw nsw i32 %9493, 2
  %9502 = uitofp i32 %9501 to float
  %9503 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9491, float %9492, float %9502, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9504 = extractvalue %dx.types.ResRet.f32 %9503, 0
  %9505 = extractvalue %dx.types.ResRet.f32 %9503, 1
  %9506 = extractvalue %dx.types.ResRet.f32 %9503, 2
  %9507 = extractvalue %dx.types.ResRet.f32 %9503, 3
  %9508 = call float @dx.op.binary.f32(i32 35, float %9498, float %9499)  ; FMax(a,b)
  %9509 = call float @dx.op.binary.f32(i32 35, float %9497, float %9508)  ; FMax(a,b)
  %9510 = call float @dx.op.binary.f32(i32 35, float %9509, float %9500)  ; FMax(a,b)
  %9511 = call float @dx.op.binary.f32(i32 36, float %9505, float %9506)  ; FMin(a,b)
  %9512 = call float @dx.op.binary.f32(i32 36, float %9504, float %9511)  ; FMin(a,b)
  %9513 = call float @dx.op.binary.f32(i32 36, float %9512, float %9507)  ; FMin(a,b)
  %9514 = fmul fast float %9510, 2.550000e+02
  %9515 = fadd fast float %9514, 0x3F70101020000000
  %9516 = fptoui float %9515 to i32
  %9517 = fmul fast float %9513, 2.550000e+02
  %9518 = fadd fast float %9517, 0x3F70101020000000
  %9519 = fptoui float %9518 to i32
  %9520 = icmp ult i32 %9516, %9519
  br i1 %9520, label %9521, label %9690

; <label>:9521                                    ; preds = %9478
  %9522 = fcmp fast ogt float %100, 9.843750e-01
  %9523 = fadd fast float %8316, -4.000000e+00
  %9524 = select i1 %9522, float -4.000000e+00, float %9523
  %9525 = call float @dx.op.binary.f32(i32 35, float %9524, float 0.000000e+00)  ; FMax(a,b)
  %9526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9527 = extractvalue %dx.types.CBufRet.f32 %9526, 0
  %9528 = fadd fast float %9527, %9525
  %9529 = extractvalue %dx.types.CBufRet.f32 %9526, 2
  %9530 = fmul fast float %9528, %9529
  %9531 = call float @dx.op.unary.f32(i32 23, float %9530)  ; Log(value)
  %9532 = extractvalue %dx.types.CBufRet.f32 %9526, 3
  %9533 = fmul fast float %9532, %9531
  %9534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9534, 2
  %9536 = fmul fast float %9533, %9535
  %9537 = call float @dx.op.unary.f32(i32 7, float %9536)  ; Saturate(value)
  %9538 = uitofp i32 %9516 to float
  %9539 = uitofp i32 %9519 to float
  %9540 = fadd fast float %9538, 5.000000e-01
  %9541 = fadd fast float %9539, 5.000000e-01
  %9542 = fmul fast float %9535, %9540
  %9543 = fmul fast float %9535, %9541
  %9544 = fadd fast float %9542, 0x3F0FFB4800000000
  %9545 = fadd fast float %9543, 0xBF0FFB4800000000
  %9546 = call float @dx.op.binary.f32(i32 35, float %9537, float %9544)  ; FMax(a,b)
  %9547 = call float @dx.op.binary.f32(i32 36, float %9546, float %9545)  ; FMin(a,b)
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9550 = extractvalue %dx.types.CBufRet.f32 %9548, 2
  %9551 = extractvalue %dx.types.CBufRet.f32 %9548, 0
  %9552 = select i1 %8054, float %9551, float 0.000000e+00
  %9553 = fmul fast float %9549, %9547
  %9554 = fadd fast float %9552, %9553
  %9555 = fadd fast float %9552, %9550
  %9556 = fsub fast float %9549, %9550
  %9557 = fadd fast float %9556, %9552
  %9558 = call float @dx.op.binary.f32(i32 35, float %9554, float %9555)  ; FMax(a,b)
  %9559 = call float @dx.op.binary.f32(i32 36, float %9558, float %9557)  ; FMin(a,b)
  %9560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9491, float %9492, float %9559, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9561 = extractvalue %dx.types.ResRet.f32 %9560, 0
  %9562 = extractvalue %dx.types.ResRet.f32 %9560, 1
  %9563 = extractvalue %dx.types.ResRet.f32 %9560, 2
  %9564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9565 = extractvalue %dx.types.CBufRet.i32 %9564, 0
  %9566 = extractvalue %dx.types.CBufRet.i32 %9564, 1
  %9567 = uitofp i32 %9565 to float
  %9568 = uitofp i32 %9566 to float
  %9569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9570 = extractvalue %dx.types.CBufRet.f32 %9569, 0
  %9571 = extractvalue %dx.types.CBufRet.f32 %9569, 1
  %9572 = fmul fast float %9567, %9491
  %9573 = fmul fast float %9568, %9492
  %9574 = fadd fast float %9572, -5.000000e-01
  %9575 = fadd fast float %9573, -5.000000e-01
  %9576 = call float @dx.op.unary.f32(i32 22, float %9574)  ; Frc(value)
  %9577 = call float @dx.op.unary.f32(i32 22, float %9575)  ; Frc(value)
  %9578 = fmul fast float %9576, %9576
  %9579 = fmul fast float %9578, %9576
  %9580 = fsub fast float 3.000000e+00, %9576
  %9581 = fmul fast float %9578, %9580
  %9582 = fmul fast float %9576, 3.000000e+00
  %9583 = fmul fast float %9579, 3.000000e+00
  %9584 = fmul fast float %9578, 6.000000e+00
  %9585 = fsub fast float %9583, %9584
  %9586 = fadd fast float %9585, 4.000000e+00
  %9587 = fmul fast float %9586, 0x3FC5555560000000
  %9588 = fmul fast float %9579, -3.000000e+00
  %9589 = fadd fast float %9578, %9576
  %9590 = fmul fast float %9589, 3.000000e+00
  %9591 = fadd fast float %9588, 1.000000e+00
  %9592 = fadd fast float %9591, %9590
  %9593 = fmul fast float %9579, 0x3FC5555560000000
  %9594 = fmul fast float %9577, %9577
  %9595 = fmul fast float %9594, %9577
  %9596 = fsub fast float 3.000000e+00, %9577
  %9597 = fmul fast float %9594, %9596
  %9598 = fmul fast float %9577, 3.000000e+00
  %9599 = fmul fast float %9595, 3.000000e+00
  %9600 = fmul fast float %9594, 6.000000e+00
  %9601 = fsub fast float %9599, %9600
  %9602 = fadd fast float %9601, 4.000000e+00
  %9603 = fmul fast float %9602, 0x3FC5555560000000
  %9604 = fmul fast float %9595, -3.000000e+00
  %9605 = fadd fast float %9594, %9577
  %9606 = fmul fast float %9605, 3.000000e+00
  %9607 = fadd fast float %9604, 1.000000e+00
  %9608 = fadd fast float %9607, %9606
  %9609 = fmul fast float %9595, 0x3FC5555560000000
  %9610 = fadd fast float %9576, 1.000000e+00
  %9611 = fsub fast float 1.000000e+00, %9582
  %9612 = fadd fast float %9611, %9581
  %9613 = fadd fast float %9612, %9586
  %9614 = fmul fast float %9613, 0x3FC5555560000000
  %9615 = fdiv fast float %9587, %9614
  %9616 = fsub fast float %9610, %9615
  %9617 = fsub fast float 1.000000e+00, %9576
  %9618 = fadd fast float %9592, %9579
  %9619 = fmul fast float %9618, 0x3FC5555560000000
  %9620 = fdiv fast float %9593, %9619
  %9621 = fadd fast float %9617, %9620
  %9622 = fadd fast float %9577, 1.000000e+00
  %9623 = fsub fast float 1.000000e+00, %9598
  %9624 = fadd fast float %9623, %9597
  %9625 = fadd fast float %9624, %9602
  %9626 = fmul fast float %9625, 0x3FC5555560000000
  %9627 = fdiv fast float %9603, %9626
  %9628 = fsub fast float %9622, %9627
  %9629 = fsub fast float 1.000000e+00, %9577
  %9630 = fadd fast float %9608, %9595
  %9631 = fmul fast float %9630, 0x3FC5555560000000
  %9632 = fdiv fast float %9609, %9631
  %9633 = fadd fast float %9632, %9629
  %9634 = fmul fast float %9616, %9570
  %9635 = fsub fast float %9491, %9634
  %9636 = fmul fast float %9621, %9570
  %9637 = fadd fast float %9636, %9491
  %9638 = fmul fast float %9633, %9571
  %9639 = fadd fast float %9638, %9492
  %9640 = fmul fast float %9628, %9571
  %9641 = fsub fast float %9492, %9640
  %9642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9635, float %9641, float %9559, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9643 = extractvalue %dx.types.ResRet.f32 %9642, 0
  %9644 = extractvalue %dx.types.ResRet.f32 %9642, 1
  %9645 = extractvalue %dx.types.ResRet.f32 %9642, 2
  %9646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9637, float %9641, float %9559, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9647 = extractvalue %dx.types.ResRet.f32 %9646, 0
  %9648 = extractvalue %dx.types.ResRet.f32 %9646, 1
  %9649 = extractvalue %dx.types.ResRet.f32 %9646, 2
  %9650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9635, float %9639, float %9559, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9651 = extractvalue %dx.types.ResRet.f32 %9650, 0
  %9652 = extractvalue %dx.types.ResRet.f32 %9650, 1
  %9653 = extractvalue %dx.types.ResRet.f32 %9650, 2
  %9654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9637, float %9639, float %9559, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9655 = extractvalue %dx.types.ResRet.f32 %9654, 0
  %9656 = extractvalue %dx.types.ResRet.f32 %9654, 1
  %9657 = extractvalue %dx.types.ResRet.f32 %9654, 2
  %9658 = fsub fast float %9651, %9643
  %9659 = fsub fast float %9652, %9644
  %9660 = fsub fast float %9653, %9645
  %9661 = fmul fast float %9658, %9631
  %9662 = fmul fast float %9659, %9631
  %9663 = fmul fast float %9660, %9631
  %9664 = fadd fast float %9661, %9643
  %9665 = fadd fast float %9662, %9644
  %9666 = fadd fast float %9663, %9645
  %9667 = fsub fast float %9655, %9647
  %9668 = fsub fast float %9656, %9648
  %9669 = fsub fast float %9657, %9649
  %9670 = fmul fast float %9667, %9631
  %9671 = fmul fast float %9668, %9631
  %9672 = fmul fast float %9669, %9631
  %9673 = fsub fast float %9647, %9664
  %9674 = fadd fast float %9673, %9670
  %9675 = fsub fast float %9648, %9665
  %9676 = fadd fast float %9675, %9671
  %9677 = fsub fast float %9649, %9666
  %9678 = fadd fast float %9677, %9672
  %9679 = fmul fast float %9674, %9619
  %9680 = fmul fast float %9676, %9619
  %9681 = fmul fast float %9678, %9619
  %9682 = fadd fast float %9679, %9664
  %9683 = fadd fast float %9680, %9665
  %9684 = fadd fast float %9681, %9666
  %9685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9686 = extractvalue %dx.types.CBufRet.f32 %9685, 1
  %9687 = fmul fast float %9682, %9686
  %9688 = fmul fast float %9683, %9686
  %9689 = fmul fast float %9684, %9686
  br label %9690

; <label>:9690                                    ; preds = %9521, %9478
  %9691 = phi float [ %9561, %9521 ], [ 1.000000e+00, %9478 ]
  %9692 = phi float [ %9562, %9521 ], [ 1.000000e+00, %9478 ]
  %9693 = phi float [ %9563, %9521 ], [ 1.000000e+00, %9478 ]
  %9694 = phi float [ %9687, %9521 ], [ 0.000000e+00, %9478 ]
  %9695 = phi float [ %9688, %9521 ], [ 0.000000e+00, %9478 ]
  %9696 = phi float [ %9689, %9521 ], [ 0.000000e+00, %9478 ]
  %9697 = fmul fast float %9694, %8028
  %9698 = fmul fast float %9695, %8030
  %9699 = fmul fast float %9696, %8032
  %9700 = fmul fast float %9691, %9485
  %9701 = call float @dx.op.dot3.f32(i32 55, float %9691, float %9692, float %9693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9702 = call float @dx.op.dot3.f32(i32 55, float %9697, float %9698, float %9699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9703 = select i1 %269, float %9701, float %9691
  %9704 = select i1 %269, float %9701, float %9692
  %9705 = select i1 %269, float 1.000000e+00, float %9693
  %9706 = select i1 %269, float %9702, float %9697
  %9707 = select i1 %269, float 0.000000e+00, float %9698
  %9708 = select i1 %269, float 0.000000e+00, float %9699
  %9709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9710 = extractvalue %dx.types.CBufRet.i32 %9709, 3
  %9711 = and i32 %9710, 3
  %9712 = icmp ne i32 %9711, 0
  %9713 = and i32 %9710, 4
  %9714 = icmp ne i32 %9713, 0
  %9715 = and i1 %9712, %9714
  %9716 = and i1 %269, %9715
  br i1 %9716, label %9717, label %9723

; <label>:9717                                    ; preds = %9690
  %9718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.f32 %9718, 1
  %9720 = fadd fast float %9700, -1.000000e+00
  %9721 = fmul fast float %9719, %9720
  %9722 = fadd fast float %9721, 1.000000e+00
  br label %9723

; <label>:9723                                    ; preds = %9717, %9690
  %9724 = phi float [ %9722, %9717 ], [ %9700, %9690 ]
  %9725 = fadd fast float %9482, %9479
  %9726 = fmul fast float %9703, %9725
  %9727 = fadd fast float %9726, %9706
  %9728 = fadd fast float %9483, %9480
  %9729 = fmul fast float %9704, %9728
  %9730 = fadd fast float %9729, %9707
  %9731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9732 = extractvalue %dx.types.CBufRet.f32 %9731, 0
  br i1 %269, label %9733, label %9748

; <label>:9733                                    ; preds = %9723
  %9734 = fadd fast float %9727, %9730
  %9735 = fmul fast float %9732, %9734
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 3
  %9738 = extractvalue %dx.types.CBufRet.f32 %8036, 1
  %9739 = fsub fast float %8041, %8035
  %9740 = fadd fast float %9739, %8042
  %9741 = fsub fast float %9740, %9738
  %9742 = extractvalue %dx.types.CBufRet.f32 %8036, 2
  %9743 = fmul fast float %9741, %9742
  %9744 = call float @dx.op.unary.f32(i32 7, float %9743)  ; Saturate(value)
  %9745 = fsub fast float %9744, %9737
  %9746 = fmul fast float %9745, %9724
  %9747 = fadd fast float %9746, %9737
  br label %9774

; <label>:9748                                    ; preds = %9723
  %9749 = fadd fast float %9484, %9481
  %9750 = fmul fast float %9705, %9749
  %9751 = fadd fast float %9750, %9708
  %9752 = fmul fast float %9732, %9727
  %9753 = fmul fast float %9732, %9730
  %9754 = fmul fast float %9732, %9751
  %9755 = call float @dx.op.binary.f32(i32 35, float %9753, float %9754)  ; FMax(a,b)
  %9756 = call float @dx.op.binary.f32(i32 35, float %9752, float %9755)  ; FMax(a,b)
  %9757 = call float @dx.op.binary.f32(i32 35, float %8030, float %8032)  ; FMax(a,b)
  %9758 = call float @dx.op.binary.f32(i32 35, float %8028, float %9757)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 35, float %9756, float %9758)  ; FMax(a,b)
  %9760 = fcmp fast ugt float %9759, 0x3F10000000000000
  br i1 %9760, label %9762, label %9761

; <label>:9761                                    ; preds = %9748
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9762

; <label>:9762                                    ; preds = %9761, %9748
  %9763 = add i32 %56, 356
  %9764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9763, i32 undef)  ; BufferLoad(srv,index,wot)
  %9765 = extractvalue %dx.types.ResRet.i32 %9764, 0
  %9766 = and i32 %9765, 32
  %9767 = icmp eq i32 %9766, 0
  br i1 %9767, label %9774, label %9768

; <label>:9768                                    ; preds = %9762
  %9769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9770 = extractvalue %dx.types.CBufRet.f32 %9769, 0
  %9771 = fmul fast float %9770, 0x3FE99999A0000000
  %9772 = fadd fast float %9770, %9752
  %9773 = fadd fast float %9771, %9754
  br label %9774

; <label>:9774                                    ; preds = %9768, %9762, %9733
  %9775 = phi float [ 1.000000e+00, %9733 ], [ %8030, %9768 ], [ %8030, %9762 ]
  %9776 = phi float [ 1.000000e+00, %9733 ], [ %8032, %9768 ], [ %8032, %9762 ]
  %9777 = phi float [ %9735, %9733 ], [ %9772, %9768 ], [ %9752, %9762 ]
  %9778 = phi float [ %9747, %9733 ], [ %9753, %9768 ], [ %9753, %9762 ]
  %9779 = phi float [ 1.000000e+00, %9733 ], [ %9773, %9768 ], [ %9754, %9762 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9777, float 3.225500e+04)  ; FMin(a,b)
  %9781 = call float @dx.op.binary.f32(i32 36, float %9778, float 3.225500e+04)  ; FMin(a,b)
  %9782 = call float @dx.op.binary.f32(i32 36, float %9779, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9780)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9781)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9783 = call float @dx.op.binary.f32(i32 36, float %8028, float 3.225500e+04)  ; FMin(a,b)
  %9784 = call float @dx.op.binary.f32(i32 36, float %9775, float 3.225500e+04)  ; FMin(a,b)
  %9785 = call float @dx.op.binary.f32(i32 36, float %9776, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9785)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

