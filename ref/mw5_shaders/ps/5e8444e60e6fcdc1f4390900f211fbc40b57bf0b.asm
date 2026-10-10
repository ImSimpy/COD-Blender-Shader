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
;
; shader hash: c52fbc74f9eda7120737318e3283c402
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
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
  %1253 = phi float [ 0.000000e+00, %701 ], [ %1106, %1233 ]
  %1254 = phi float [ 0.000000e+00, %701 ], [ %1107, %1233 ]
  %1255 = phi float [ 0.000000e+00, %701 ], [ %1108, %1233 ]
  %1256 = phi float [ 0.000000e+00, %701 ], [ %1234, %1233 ]
  %1257 = phi float [ 0.000000e+00, %701 ], [ %1235, %1233 ]
  %1258 = phi float [ 0.000000e+00, %701 ], [ %1236, %1233 ]
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
  %1812 = fmul fast float %1811, %1253
  %1813 = fmul fast float %1811, %1254
  %1814 = fmul fast float %1811, %1255
  %1815 = fmul fast float %1811, %1256
  %1816 = fmul fast float %1811, %1257
  %1817 = fmul fast float %1811, %1258
  br label %1818

; <label>:1818                                    ; preds = %1810, %1793
  %1819 = phi float [ %1812, %1810 ], [ %1253, %1793 ]
  %1820 = phi float [ %1813, %1810 ], [ %1254, %1793 ]
  %1821 = phi float [ %1814, %1810 ], [ %1255, %1793 ]
  %1822 = phi float [ %1815, %1810 ], [ %1256, %1793 ]
  %1823 = phi float [ %1816, %1810 ], [ %1257, %1793 ]
  %1824 = phi float [ %1817, %1810 ], [ %1258, %1793 ]
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
  %1838 = fsub fast float %1666, %1819
  %1839 = fsub fast float %1667, %1820
  %1840 = fsub fast float %1668, %1821
  %1841 = fmul fast float %1832, %1838
  %1842 = fmul fast float %1832, %1839
  %1843 = fmul fast float %1832, %1840
  %1844 = fadd fast float %1841, %1819
  %1845 = fadd fast float %1842, %1820
  %1846 = fadd fast float %1843, %1821
  %1847 = fsub fast float %1652, %1259
  %1848 = fmul fast float %1832, %1847
  %1849 = fadd fast float %1848, %1259
  %1850 = fsub fast float %1794, %1822
  %1851 = fsub fast float %1795, %1823
  %1852 = fsub fast float %1796, %1824
  %1853 = fmul fast float %1837, %1850
  %1854 = fmul fast float %1837, %1851
  %1855 = fmul fast float %1837, %1852
  %1856 = fadd fast float %1853, %1822
  %1857 = fadd fast float %1854, %1823
  %1858 = fadd fast float %1855, %1824
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
  %1874 = fmul fast float %1871, %1819
  %1875 = fmul fast float %1872, %1820
  %1876 = fmul fast float %1873, %1821
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
  %1894 = fmul fast float %1893, %1819
  %1895 = fadd fast float %1894, %1892
  %1896 = fmul fast float %1895, %1819
  %1897 = fmul fast float %1890, 2.000000e+00
  %1898 = fsub fast float 1.000000e+00, %1897
  %1899 = fmul fast float %1898, %1820
  %1900 = fadd fast float %1899, %1897
  %1901 = fmul fast float %1900, %1820
  %1902 = fmul fast float %1891, 2.000000e+00
  %1903 = fsub fast float 1.000000e+00, %1902
  %1904 = fmul fast float %1903, %1821
  %1905 = fadd fast float %1904, %1902
  %1906 = fmul fast float %1905, %1821
  br label %1907

; <label>:1907                                    ; preds = %1879, %1877, %1864, %1834, %1818
  %1908 = phi float [ %1819, %1818 ], [ %1896, %1879 ], [ %1819, %1877 ], [ %1874, %1864 ], [ %1844, %1834 ]
  %1909 = phi float [ %1820, %1818 ], [ %1901, %1879 ], [ %1820, %1877 ], [ %1875, %1864 ], [ %1845, %1834 ]
  %1910 = phi float [ %1821, %1818 ], [ %1906, %1879 ], [ %1821, %1877 ], [ %1876, %1864 ], [ %1846, %1834 ]
  %1911 = phi float [ %1822, %1818 ], [ %1822, %1879 ], [ %1822, %1877 ], [ %1822, %1864 ], [ %1856, %1834 ]
  %1912 = phi float [ %1823, %1818 ], [ %1823, %1879 ], [ %1823, %1877 ], [ %1823, %1864 ], [ %1857, %1834 ]
  %1913 = phi float [ %1824, %1818 ], [ %1824, %1879 ], [ %1824, %1877 ], [ %1824, %1864 ], [ %1858, %1834 ]
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
  %2551 = fmul fast float %2550, %1993
  %2552 = fmul fast float %2550, %1994
  %2553 = fmul fast float %2550, %1995
  %2554 = fmul fast float %2550, %1996
  %2555 = fmul fast float %2550, %1997
  %2556 = fmul fast float %2550, %1998
  br label %2557

; <label>:2557                                    ; preds = %2549, %2532
  %2558 = phi float [ %2551, %2549 ], [ %1993, %2532 ]
  %2559 = phi float [ %2552, %2549 ], [ %1994, %2532 ]
  %2560 = phi float [ %2553, %2549 ], [ %1995, %2532 ]
  %2561 = phi float [ %2554, %2549 ], [ %1996, %2532 ]
  %2562 = phi float [ %2555, %2549 ], [ %1997, %2532 ]
  %2563 = phi float [ %2556, %2549 ], [ %1998, %2532 ]
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
  %2577 = fsub fast float %2405, %2558
  %2578 = fsub fast float %2406, %2559
  %2579 = fsub fast float %2407, %2560
  %2580 = fmul fast float %2571, %2577
  %2581 = fmul fast float %2571, %2578
  %2582 = fmul fast float %2571, %2579
  %2583 = fadd fast float %2580, %2558
  %2584 = fadd fast float %2581, %2559
  %2585 = fadd fast float %2582, %2560
  %2586 = fsub fast float %2391, %1999
  %2587 = fmul fast float %2571, %2586
  %2588 = fadd fast float %2587, %1999
  %2589 = fsub fast float %2533, %2561
  %2590 = fsub fast float %2534, %2562
  %2591 = fsub fast float %2535, %2563
  %2592 = fmul fast float %2576, %2589
  %2593 = fmul fast float %2576, %2590
  %2594 = fmul fast float %2576, %2591
  %2595 = fadd fast float %2592, %2561
  %2596 = fadd fast float %2593, %2562
  %2597 = fadd fast float %2594, %2563
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
  %2613 = fmul fast float %2610, %2558
  %2614 = fmul fast float %2611, %2559
  %2615 = fmul fast float %2612, %2560
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
  %2633 = fmul fast float %2632, %2558
  %2634 = fadd fast float %2633, %2631
  %2635 = fmul fast float %2634, %2558
  %2636 = fmul fast float %2629, 2.000000e+00
  %2637 = fsub fast float 1.000000e+00, %2636
  %2638 = fmul fast float %2637, %2559
  %2639 = fadd fast float %2638, %2636
  %2640 = fmul fast float %2639, %2559
  %2641 = fmul fast float %2630, 2.000000e+00
  %2642 = fsub fast float 1.000000e+00, %2641
  %2643 = fmul fast float %2642, %2560
  %2644 = fadd fast float %2643, %2641
  %2645 = fmul fast float %2644, %2560
  br label %2646

; <label>:2646                                    ; preds = %2618, %2616, %2603, %2573, %2557
  %2647 = phi float [ %2558, %2557 ], [ %2635, %2618 ], [ %2558, %2616 ], [ %2613, %2603 ], [ %2583, %2573 ]
  %2648 = phi float [ %2559, %2557 ], [ %2640, %2618 ], [ %2559, %2616 ], [ %2614, %2603 ], [ %2584, %2573 ]
  %2649 = phi float [ %2560, %2557 ], [ %2645, %2618 ], [ %2560, %2616 ], [ %2615, %2603 ], [ %2585, %2573 ]
  %2650 = phi float [ %2561, %2557 ], [ %2561, %2618 ], [ %2561, %2616 ], [ %2561, %2603 ], [ %2595, %2573 ]
  %2651 = phi float [ %2562, %2557 ], [ %2562, %2618 ], [ %2562, %2616 ], [ %2562, %2603 ], [ %2596, %2573 ]
  %2652 = phi float [ %2563, %2557 ], [ %2563, %2618 ], [ %2563, %2616 ], [ %2563, %2603 ], [ %2597, %2573 ]
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
  %3290 = fmul fast float %3289, %2732
  %3291 = fmul fast float %3289, %2733
  %3292 = fmul fast float %3289, %2734
  %3293 = fmul fast float %3289, %2735
  %3294 = fmul fast float %3289, %2736
  %3295 = fmul fast float %3289, %2737
  br label %3296

; <label>:3296                                    ; preds = %3288, %3271
  %3297 = phi float [ %3290, %3288 ], [ %2732, %3271 ]
  %3298 = phi float [ %3291, %3288 ], [ %2733, %3271 ]
  %3299 = phi float [ %3292, %3288 ], [ %2734, %3271 ]
  %3300 = phi float [ %3293, %3288 ], [ %2735, %3271 ]
  %3301 = phi float [ %3294, %3288 ], [ %2736, %3271 ]
  %3302 = phi float [ %3295, %3288 ], [ %2737, %3271 ]
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
  %3316 = fsub fast float %3144, %3297
  %3317 = fsub fast float %3145, %3298
  %3318 = fsub fast float %3146, %3299
  %3319 = fmul fast float %3310, %3316
  %3320 = fmul fast float %3310, %3317
  %3321 = fmul fast float %3310, %3318
  %3322 = fadd fast float %3319, %3297
  %3323 = fadd fast float %3320, %3298
  %3324 = fadd fast float %3321, %3299
  %3325 = fsub fast float %3130, %2738
  %3326 = fmul fast float %3310, %3325
  %3327 = fadd fast float %3326, %2738
  %3328 = fsub fast float %3272, %3300
  %3329 = fsub fast float %3273, %3301
  %3330 = fsub fast float %3274, %3302
  %3331 = fmul fast float %3315, %3328
  %3332 = fmul fast float %3315, %3329
  %3333 = fmul fast float %3315, %3330
  %3334 = fadd fast float %3331, %3300
  %3335 = fadd fast float %3332, %3301
  %3336 = fadd fast float %3333, %3302
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
  %3352 = fmul fast float %3349, %3297
  %3353 = fmul fast float %3350, %3298
  %3354 = fmul fast float %3351, %3299
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
  %3372 = fmul fast float %3371, %3297
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3297
  %3375 = fmul fast float %3368, 2.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3376, %3298
  %3378 = fadd fast float %3377, %3375
  %3379 = fmul fast float %3378, %3298
  %3380 = fmul fast float %3369, 2.000000e+00
  %3381 = fsub fast float 1.000000e+00, %3380
  %3382 = fmul fast float %3381, %3299
  %3383 = fadd fast float %3382, %3380
  %3384 = fmul fast float %3383, %3299
  br label %3385

; <label>:3385                                    ; preds = %3357, %3355, %3342, %3312, %3296
  %3386 = phi float [ %3297, %3296 ], [ %3374, %3357 ], [ %3297, %3355 ], [ %3352, %3342 ], [ %3322, %3312 ]
  %3387 = phi float [ %3298, %3296 ], [ %3379, %3357 ], [ %3298, %3355 ], [ %3353, %3342 ], [ %3323, %3312 ]
  %3388 = phi float [ %3299, %3296 ], [ %3384, %3357 ], [ %3299, %3355 ], [ %3354, %3342 ], [ %3324, %3312 ]
  %3389 = phi float [ %3300, %3296 ], [ %3300, %3357 ], [ %3300, %3355 ], [ %3300, %3342 ], [ %3334, %3312 ]
  %3390 = phi float [ %3301, %3296 ], [ %3301, %3357 ], [ %3301, %3355 ], [ %3301, %3342 ], [ %3335, %3312 ]
  %3391 = phi float [ %3302, %3296 ], [ %3302, %3357 ], [ %3302, %3355 ], [ %3302, %3342 ], [ %3336, %3312 ]
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
  %3508 = fmul fast float %3503, %3471
  %3509 = fmul fast float %3505, %3472
  %3510 = fmul fast float %3507, %3473
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
  %3522 = fmul fast float %3513, %3474
  %3523 = fmul fast float %3522, %3521
  %3524 = fmul fast float %3516, %3475
  %3525 = fmul fast float %3524, %3521
  %3526 = fmul fast float %3519, %3476
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
  %4075 = phi float [ %4056, %4040 ], [ %3508, %3468 ]
  %4076 = phi float [ %4057, %4040 ], [ %3509, %3468 ]
  %4077 = phi float [ %4058, %4040 ], [ %3510, %3468 ]
  %4078 = phi float [ %4046, %4040 ], [ %3523, %3468 ]
  %4079 = phi float [ %4047, %4040 ], [ %3525, %3468 ]
  %4080 = phi float [ %4048, %4040 ], [ %3527, %3468 ]
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
  %4096 = fmul fast float %4095, %4075
  %4097 = fmul fast float %4095, %4076
  %4098 = fmul fast float %4095, %4077
  %4099 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4100 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4102 = fmul fast float %4092, %4075
  %4103 = fmul fast float %4092, %4076
  %4104 = fmul fast float %4092, %4077
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
  %4116 = call float @dx.op.binary.f32(i32 35, float %4099, float %4075)  ; FMax(a,b)
  %4117 = call float @dx.op.binary.f32(i32 35, float %4100, float %4075)  ; FMax(a,b)
  %4118 = call float @dx.op.binary.f32(i32 35, float %4101, float %4075)  ; FMax(a,b)
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4099, float %4100, float %4101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = select i1 %269, float %4075, float %4099
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
  %4799 = phi float [ %4771, %4660 ], [ %4108, %4622 ], [ %4108, %4524 ]
  %4800 = phi float [ %4772, %4660 ], [ %4109, %4622 ], [ %4109, %4524 ]
  %4801 = phi float [ %4773, %4660 ], [ %4110, %4622 ], [ %4110, %4524 ]
  %4802 = phi float [ %4788, %4660 ], [ %4072, %4622 ], [ %4072, %4524 ]
  %4803 = phi float [ %4789, %4660 ], [ %4073, %4622 ], [ %4073, %4524 ]
  %4804 = phi float [ %4790, %4660 ], [ %4074, %4622 ], [ %4074, %4524 ]
  %4805 = phi float [ %4762, %4660 ], [ %4123, %4622 ], [ %4123, %4524 ]
  %4806 = phi float [ %4763, %4660 ], [ %4124, %4622 ], [ %4124, %4524 ]
  %4807 = phi float [ %4764, %4660 ], [ %4125, %4622 ], [ %4125, %4524 ]
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
  %5041 = fsub fast float %4975, %4805
  %5042 = fsub fast float %4976, %4806
  %5043 = fsub fast float %4977, %4807
  %5044 = fmul fast float %5041, %4947
  %5045 = fmul fast float %5042, %4947
  %5046 = fmul fast float %5043, %4947
  %5047 = fadd fast float %5044, %4805
  %5048 = fadd fast float %5045, %4806
  %5049 = fadd fast float %5046, %4807
  %5050 = fsub fast float %4984, %4799
  %5051 = fsub fast float %4985, %4800
  %5052 = fsub fast float %4986, %4801
  %5053 = fmul fast float %5050, %4947
  %5054 = fmul fast float %5051, %4947
  %5055 = fmul fast float %5052, %4947
  %5056 = fadd fast float %5053, %4799
  %5057 = fadd fast float %5054, %4800
  %5058 = fadd fast float %5055, %4801
  %5059 = fadd fast float %5038, %4802
  %5060 = fadd fast float %5039, %4803
  %5061 = fadd fast float %5040, %4804
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = call float @dx.op.unary.f32(i32 25, float %5062)  ; Rsqrt(value)
  %5064 = fmul fast float %5059, %5063
  %5065 = fmul fast float %5060, %5063
  %5066 = fmul fast float %5061, %5063
  %5067 = fsub fast float %5064, %4802
  %5068 = fsub fast float %5065, %4803
  %5069 = fsub fast float %5066, %4804
  %5070 = fmul fast float %5067, %4947
  %5071 = fmul fast float %5068, %4947
  %5072 = fmul fast float %5069, %4947
  %5073 = fadd fast float %5070, %4802
  %5074 = fadd fast float %5071, %4803
  %5075 = fadd fast float %5072, %4804
  %5076 = call float @dx.op.binary.f32(i32 36, float %4809, float %4995)  ; FMin(a,b)
  %5077 = fsub fast float %5076, %4809
  %5078 = fmul fast float %5077, %4947
  %5079 = fadd fast float %5078, %4809
  %5080 = fsub fast float %5008, %4808
  %5081 = fmul fast float %5080, %4947
  %5082 = fadd fast float %5081, %4808
  br label %5083

; <label>:5083                                    ; preds = %4945, %4907, %4798, %4514
  %5084 = phi float [ %5056, %4945 ], [ %4799, %4907 ], [ %4799, %4798 ], [ %4108, %4514 ]
  %5085 = phi float [ %5057, %4945 ], [ %4800, %4907 ], [ %4800, %4798 ], [ %4109, %4514 ]
  %5086 = phi float [ %5058, %4945 ], [ %4801, %4907 ], [ %4801, %4798 ], [ %4110, %4514 ]
  %5087 = phi float [ %5073, %4945 ], [ %4802, %4907 ], [ %4802, %4798 ], [ %4072, %4514 ]
  %5088 = phi float [ %5074, %4945 ], [ %4803, %4907 ], [ %4803, %4798 ], [ %4073, %4514 ]
  %5089 = phi float [ %5075, %4945 ], [ %4804, %4907 ], [ %4804, %4798 ], [ %4074, %4514 ]
  %5090 = phi float [ %5047, %4945 ], [ %4805, %4907 ], [ %4805, %4798 ], [ %4123, %4514 ]
  %5091 = phi float [ %5048, %4945 ], [ %4806, %4907 ], [ %4806, %4798 ], [ %4124, %4514 ]
  %5092 = phi float [ %5049, %4945 ], [ %4807, %4907 ], [ %4807, %4798 ], [ %4125, %4514 ]
  %5093 = phi float [ %5082, %4945 ], [ %4808, %4907 ], [ %4808, %4798 ], [ %4111, %4514 ]
  %5094 = phi float [ %5079, %4945 ], [ %4809, %4907 ], [ %4809, %4798 ], [ %4084, %4514 ]
  %5095 = fcmp fast une float %4518, 0.000000e+00
  %5096 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = call float @dx.op.unary.f32(i32 25, float %5096)  ; Rsqrt(value)
  br i1 %5095, label %5105, label %5098

; <label>:5098                                    ; preds = %5083
  %5099 = fmul fast float %5097, %197
  %5100 = fmul fast float %5097, %198
  %5101 = fmul fast float %5097, %199
  %5102 = fsub fast float -0.000000e+00, %5099
  %5103 = fsub fast float -0.000000e+00, %5100
  %5104 = fsub fast float -0.000000e+00, %5101
  br label %5272

; <label>:5105                                    ; preds = %5083
  %5106 = fmul fast float %197, %5097
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fmul fast float %198, %5097
  %5109 = fsub fast float -0.000000e+00, %5108
  %5110 = fmul fast float %199, %5097
  %5111 = fsub fast float -0.000000e+00, %5110
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5109, float %5111, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %4518, 2.500000e+00
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %4518, 0x4013FFFFE0000000
  %5116 = fadd fast float %5115, 0xBFFFFFFFE0000000
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %4518, 0x4004000020000000
  %5119 = fadd fast float %5118, 0xBFF8000040000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %4090, 1.000000e+01
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = fsub fast float 3.000000e+00, %5123
  %5125 = fmul fast float %5122, %5122
  %5126 = fmul fast float %5125, %5124
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fsub fast float 0x3FE3333340000000, %5093
  %5129 = fmul fast float %5128, 0x400AAAAAA0000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5127, %5130
  %5132 = fmul fast float %5090, 0x3FEA2B8620000000
  %5133 = fmul fast float %5091, 0x3FEA2B8620000000
  %5134 = fmul fast float %5092, 0x3FEA2B8620000000
  %5135 = fadd fast float %5132, 0x3FC81DFBA0000000
  %5136 = fmul fast float %5135, %5090
  %5137 = fadd fast float %5136, 0x3F910E6020000000
  %5138 = fadd fast float %5133, 0x3FC81DFBA0000000
  %5139 = fmul fast float %5138, %5091
  %5140 = fadd fast float %5139, 0x3F910E6020000000
  %5141 = fadd fast float %5134, 0x3FC81DFBA0000000
  %5142 = fmul fast float %5141, %5092
  %5143 = fadd fast float %5142, 0x3F910E6020000000
  %5144 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = fsub fast float %5144, %5090
  %5148 = fsub fast float %5145, %5091
  %5149 = fsub fast float %5146, %5092
  %5150 = fmul fast float %5147, %5114
  %5151 = fmul fast float %5150, %5131
  %5152 = fmul fast float %5148, %5114
  %5153 = fmul fast float %5152, %5131
  %5154 = fmul fast float %5149, %5114
  %5155 = fmul fast float %5154, %5131
  %5156 = fadd fast float %5151, %5090
  %5157 = fadd fast float %5153, %5091
  %5158 = fadd fast float %5155, %5092
  %5159 = fmul fast float %5094, %5094
  %5160 = fmul fast float %5159, %5159
  %5161 = fadd fast float %5117, 1.000000e+00
  %5162 = fsub fast float %5161, %5131
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fsub fast float 1.000000e+00, %5160
  %5167 = call float @dx.op.binary.f32(i32 36, float %5163, float %5166)  ; FMin(a,b)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5167, float %5168)  ; FMax(a,b)
  %5170 = fadd fast float %5165, 0xBFE4CCCCC0000000
  %5171 = fmul fast float %5170, 0x4006DB6DA0000000
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5172, 2.000000e+00
  %5174 = fsub fast float 3.000000e+00, %5173
  %5175 = bitcast float %5084 to i32
  %5176 = ashr i32 %5175, 1
  %5177 = add nsw i32 %5176, 532487669
  %5178 = bitcast i32 %5177 to float
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = bitcast float %5085 to i32
  %5185 = ashr i32 %5184, 1
  %5186 = add nsw i32 %5185, 532487669
  %5187 = bitcast i32 %5186 to float
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = bitcast float %5086 to i32
  %5194 = ashr i32 %5193, 1
  %5195 = add nsw i32 %5194, 532487669
  %5196 = bitcast i32 %5195 to float
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5200, 2.000000e+00
  %5202 = fsub fast float 0x4002A9FBE0000000, %5183
  %5203 = fadd fast float %5183, 0x3FD54FDF00000000
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5207, %5207
  %5209 = fsub fast float 0x4002A9FBE0000000, %5192
  %5210 = fadd fast float %5192, 0x3FD54FDF00000000
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, %5214
  %5216 = fsub fast float 0x4002A9FBE0000000, %5201
  %5217 = fadd fast float %5201, 0x3FD54FDF00000000
  %5218 = bitcast float %5217 to i32
  %5219 = sub nsw i32 2129859010, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %5216
  %5222 = fmul fast float %5221, %5221
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5208)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5215)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5222)  ; FMax(a,b)
  %5226 = fsub fast float 1.000000e+00, %5112
  %5227 = fadd fast float %5226, %5127
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fsub fast float 1.000000e+00, %4499
  %5230 = fmul fast float %5169, %5229
  %5231 = fmul fast float %5172, %5172
  %5232 = fmul fast float %5231, %5230
  %5233 = fmul fast float %5232, %5174
  %5234 = fmul fast float %5229, 0xBFE99999A0000000
  %5235 = fmul fast float %5234, %5114
  %5236 = fmul fast float %5235, %5131
  %5237 = fadd fast float %5236, 1.000000e+00
  %5238 = fadd fast float %5093, -1.000000e+00
  %5239 = fmul fast float %5237, %5238
  %5240 = fadd fast float %5239, 1.000000e+00
  %5241 = fsub fast float %5223, %5084
  %5242 = fsub fast float %5224, %5085
  %5243 = fsub fast float %5225, %5086
  %5244 = fmul fast float %5233, %5241
  %5245 = fmul fast float %5233, %5242
  %5246 = fmul fast float %5233, %5243
  %5247 = fadd fast float %5244, %5084
  %5248 = fadd fast float %5245, %5085
  %5249 = fadd fast float %5246, %5086
  %5250 = fsub fast float %117, %5087
  %5251 = fsub fast float %118, %5088
  %5252 = fsub fast float %119, %5089
  %5253 = fmul fast float %5233, %5250
  %5254 = fmul fast float %5233, %5251
  %5255 = fmul fast float %5233, %5252
  %5256 = fadd fast float %5253, %5087
  %5257 = fadd fast float %5254, %5088
  %5258 = fadd fast float %5255, %5089
  %5259 = fmul fast float %5233, %5228
  %5260 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5259, %5261
  %5263 = fadd fast float %5262, %5260
  %5264 = fsub fast float 1.000000e+00, %5094
  %5265 = fmul fast float %5233, %5264
  %5266 = fadd fast float %5265, %5094
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.unary.f32(i32 25, float %5267)  ; Rsqrt(value)
  %5269 = fmul fast float %5256, %5268
  %5270 = fmul fast float %5257, %5268
  %5271 = fmul fast float %5258, %5268
  br label %5272

; <label>:5272                                    ; preds = %5105, %5098
  %5273 = phi float [ %5104, %5098 ], [ %5111, %5105 ]
  %5274 = phi float [ %5103, %5098 ], [ %5109, %5105 ]
  %5275 = phi float [ %5102, %5098 ], [ %5107, %5105 ]
  %5276 = phi float [ %5101, %5098 ], [ %5110, %5105 ]
  %5277 = phi float [ %5100, %5098 ], [ %5108, %5105 ]
  %5278 = phi float [ %5099, %5098 ], [ %5106, %5105 ]
  %5279 = phi float [ %5084, %5098 ], [ %5247, %5105 ]
  %5280 = phi float [ %5085, %5098 ], [ %5248, %5105 ]
  %5281 = phi float [ %5086, %5098 ], [ %5249, %5105 ]
  %5282 = phi float [ %5087, %5098 ], [ %5269, %5105 ]
  %5283 = phi float [ %5088, %5098 ], [ %5270, %5105 ]
  %5284 = phi float [ %5089, %5098 ], [ %5271, %5105 ]
  %5285 = phi float [ %5090, %5098 ], [ %5156, %5105 ]
  %5286 = phi float [ %5091, %5098 ], [ %5157, %5105 ]
  %5287 = phi float [ %5092, %5098 ], [ %5158, %5105 ]
  %5288 = phi float [ %5093, %5098 ], [ %5263, %5105 ]
  %5289 = phi float [ %5094, %5098 ], [ %5266, %5105 ]
  %5290 = fsub fast float -0.000000e+00, %199
  %5291 = select i1 %269, float 0.000000e+00, float %5281
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %5275, float %5274, float %5273)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5277, float %5276, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = fmul fast float %5294, 2.000000e+00
  %5296 = fmul fast float %5295, %5282
  %5297 = fmul fast float %5295, %5283
  %5298 = fmul fast float %5295, %5284
  %5299 = fsub fast float %5278, %5296
  %5300 = fsub fast float %5277, %5297
  %5301 = fsub fast float %5276, %5298
  %5302 = call float @dx.op.binary.f32(i32 36, float %5289, float 1.000000e+00)  ; FMin(a,b)
  %5303 = fsub fast float 1.000000e+00, %5289
  %5304 = bitcast float %5303 to i32
  %5305 = sub nsw i32 2129859010, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fsub fast float 1.000000e+00, %81
  %5308 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.binary.f32(i32 35, float %5308, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5310 = fdiv fast float %5307, %5309
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = fmul fast float %5312, 5.000000e-01
  %5314 = fadd fast float %5313, 5.000000e-01
  %5315 = fmul fast float %5314, %81
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fmul fast float %5317, %5310
  %5319 = fadd fast float %5315, %5318
  %5320 = fsub fast float 5.000000e-01, %5313
  %5321 = fmul fast float %5320, %5285
  %5322 = fmul fast float %5320, %5286
  %5323 = fmul fast float %5320, %5287
  %5324 = fadd fast float %5319, %5321
  %5325 = fadd fast float %5319, %5322
  %5326 = fadd fast float %5319, %5323
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fmul fast float %5328, 5.000000e-01
  %5330 = fadd fast float %5329, 5.000000e-01
  %5331 = fmul fast float %5330, %81
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fmul fast float %5333, %5310
  %5335 = fadd fast float %5331, %5334
  %5336 = fsub fast float 5.000000e-01, %5329
  %5337 = fmul fast float %5336, %5285
  %5338 = fmul fast float %5336, %5286
  %5339 = fmul fast float %5336, %5287
  %5340 = fadd fast float %5335, %5337
  %5341 = fadd fast float %5335, %5338
  %5342 = fadd fast float %5335, %5339
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 0
  %5345 = call float @dx.op.binary.f32(i32 36, float %5285, float %5344)  ; FMin(a,b)
  %5346 = fsub fast float 1.000000e+00, %5302
  %5347 = fmul fast float %5345, %5346
  %5348 = fsub fast float 1.000000e+00, %5347
  %5349 = bitcast float %5348 to i32
  %5350 = sub nsw i32 2129859010, %5349
  %5351 = bitcast i32 %5350 to float
  %5352 = call float @dx.op.binary.f32(i32 36, float %5286, float %5344)  ; FMin(a,b)
  %5353 = fmul fast float %5352, %5346
  %5354 = fsub fast float 1.000000e+00, %5353
  %5355 = bitcast float %5354 to i32
  %5356 = sub nsw i32 2129859010, %5355
  %5357 = bitcast i32 %5356 to float
  %5358 = call float @dx.op.binary.f32(i32 36, float %5287, float %5344)  ; FMin(a,b)
  %5359 = fmul fast float %5358, %5346
  %5360 = fsub fast float 1.000000e+00, %5359
  %5361 = bitcast float %5360 to i32
  %5362 = sub nsw i32 2129859010, %5361
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5302, %82
  %5365 = fmul fast float %5364, %5324
  %5366 = fmul fast float %5365, %5351
  %5367 = fmul fast float %5302, %83
  %5368 = fmul fast float %5367, %5325
  %5369 = fmul fast float %5368, %5357
  %5370 = fmul fast float %5302, %84
  %5371 = fmul fast float %5370, %5326
  %5372 = fmul fast float %5371, %5363
  %5373 = call float @dx.op.binary.f32(i32 36, float %5279, float %5344)  ; FMin(a,b)
  %5374 = fmul fast float %5373, %5346
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = call float @dx.op.binary.f32(i32 36, float %5280, float %5344)  ; FMin(a,b)
  %5380 = fmul fast float %5379, %5346
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = bitcast float %5381 to i32
  %5383 = sub nsw i32 2129859010, %5382
  %5384 = bitcast i32 %5383 to float
  %5385 = call float @dx.op.binary.f32(i32 36, float %5291, float %5344)  ; FMin(a,b)
  %5386 = fmul fast float %5385, %5346
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5364, %5340
  %5392 = fmul fast float %5391, %5378
  %5393 = fmul fast float %5367, %5341
  %5394 = fmul fast float %5393, %5384
  %5395 = fmul fast float %5370, %5342
  %5396 = fmul fast float %5395, %5390
  %5397 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5369, float %5372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = select i1 %269, float 0.000000e+00, float %5366
  %5399 = select i1 %269, float %5397, float %5369
  %5400 = select i1 %269, float 0.000000e+00, float %5372
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5394, float %5396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = select i1 %269, float 0.000000e+00, float %5392
  %5403 = select i1 %269, float %5401, float %5394
  %5404 = select i1 %269, float 0.000000e+00, float %5396
  %5405 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5406 = fmul fast float %5405, %5398
  %5407 = fmul fast float %5405, %5399
  %5408 = fmul fast float %5400, %5405
  %5409 = fmul fast float %5293, 9.843750e-01
  %5410 = fmul fast float %5288, 9.843750e-01
  %5411 = fadd fast float %5409, 7.812500e-03
  %5412 = fadd fast float %5410, 7.812500e-03
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5411, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 3
  %5416 = fmul fast float %5414, %5279
  %5417 = fmul fast float %5414, %5280
  %5418 = fmul fast float %5414, %5291
  %5419 = fadd fast float %5416, %5415
  %5420 = fadd fast float %5417, %5415
  %5421 = fadd fast float %5418, %5415
  %5422 = fcmp fast ogt float %4085, 0.000000e+00
  br i1 %5422, label %5423, label %5449

; <label>:5423                                    ; preds = %5272
  %5424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %5293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.ResRet.f32 %5424, 2
  %5428 = fadd fast float %5425, -5.000000e-01
  %5429 = fadd fast float %5426, -5.000000e-01
  %5430 = fadd fast float %5427, -5.000000e-01
  %5431 = fsub fast float 1.000000e+00, %5279
  %5432 = fsub fast float 1.000000e+00, %5280
  %5433 = fsub fast float 1.000000e+00, %5291
  %5434 = fmul fast float %5279, 4.000000e+00
  %5435 = fmul fast float %5434, %5431
  %5436 = fmul fast float %5435, %5428
  %5437 = fmul fast float %5280, 4.000000e+00
  %5438 = fmul fast float %5437, %5432
  %5439 = fmul fast float %5438, %5429
  %5440 = fmul fast float %5291, 4.000000e+00
  %5441 = fmul fast float %5440, %5433
  %5442 = fmul fast float %5441, %5430
  %5443 = fadd fast float %5436, %5419
  %5444 = fadd fast float %5439, %5420
  %5445 = fadd fast float %5442, %5421
  %5446 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5448 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  br label %5449

; <label>:5449                                    ; preds = %5423, %5272
  %5450 = phi float [ %5446, %5423 ], [ %5419, %5272 ]
  %5451 = phi float [ %5447, %5423 ], [ %5420, %5272 ]
  %5452 = phi float [ %5448, %5423 ], [ %5421, %5272 ]
  %5453 = call float @dx.op.binary.f32(i32 35, float %5451, float %5452)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5450, float %5453)  ; FMax(a,b)
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = fmul fast float %197, %197
  %5457 = fmul fast float %198, %198
  %5458 = fadd fast float %5457, %5456
  %5459 = fmul fast float %199, %199
  %5460 = fadd fast float %5458, %5459
  %5461 = call float @dx.op.unary.f32(i32 24, float %5460)  ; Sqrt(value)
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5464 = fsub fast float %5461, %5463
  %5465 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5466 = fmul fast float %5464, %5465
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5469 = extractvalue %dx.types.CBufRet.f32 %5462, 3
  %5470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.i32 %5470, 0
  %5472 = and i32 %5471, 4194304
  %5473 = icmp ne i32 %5472, 0
  %5474 = and i32 %5471, 8388608
  %5475 = icmp ne i32 %5474, 0
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = extractvalue %dx.types.CBufRet.f32 %5476, 3
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5486 = select i1 %5473, float %5477, float %5482
  %5487 = select i1 %5473, float %5478, float %5483
  %5488 = select i1 %5473, float %5479, float %5484
  %5489 = select i1 %5473, float %5480, float %5485
  %5490 = select i1 %5475, float 0.000000e+00, float %5489
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.CBufRet.f32 %5491, 1
  %5494 = select i1 %5473, float %5492, float %5493
  %5495 = select i1 %5475, float 0.000000e+00, float %5494
  %5496 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5497 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5498 = select i1 %5473, float %5496, float %5497
  %5499 = select i1 %5475, float 0.000000e+00, float %5498
  %5500 = fmul fast float %5467, %63
  %5501 = fmul fast float %5500, %5468
  %5502 = fmul fast float %5501, %5495
  %5503 = fmul fast float %5500, %5469
  %5504 = fmul fast float %5503, %5499
  %5505 = fadd fast float %5504, 1.000000e+00
  %5506 = fmul fast float %5455, %5406
  %5507 = fmul fast float %5506, %5505
  %5508 = fmul fast float %5455, %5407
  %5509 = fmul fast float %5508, %5505
  %5510 = fmul fast float %5455, %5408
  %5511 = fmul fast float %5510, %5505
  %5512 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = fcmp fast ogt float %5512, 0x3E7FF19E20000000
  %5514 = fdiv fast float 1.000000e+00, %5512
  %5515 = select i1 %5513, float %5514, float 0.000000e+00
  %5516 = fmul fast float %5515, %5285
  %5517 = fmul fast float %5515, %5286
  %5518 = fmul fast float %5515, %5287
  %5519 = fadd fast float %5516, -1.000000e+00
  %5520 = fadd fast float %5517, -1.000000e+00
  %5521 = fadd fast float %5518, -1.000000e+00
  %5522 = fmul fast float %5519, 5.000000e-01
  %5523 = fmul fast float %5520, 5.000000e-01
  %5524 = fmul fast float %5521, 5.000000e-01
  %5525 = fadd fast float %5522, 1.000000e+00
  %5526 = fadd fast float %5523, 1.000000e+00
  %5527 = fadd fast float %5524, 1.000000e+00
  %5528 = fadd fast float %5502, %4086
  %5529 = fsub fast float %5486, %5525
  %5530 = fsub fast float %5487, %5526
  %5531 = fsub fast float %5488, %5527
  %5532 = fmul fast float %5529, %5490
  %5533 = fmul fast float %5530, %5490
  %5534 = fmul fast float %5531, %5490
  %5535 = fadd fast float %5532, %5525
  %5536 = fadd fast float %5533, %5526
  %5537 = fadd fast float %5534, %5527
  %5538 = fmul fast float %5450, %5402
  %5539 = fmul fast float %5451, %5403
  %5540 = fmul fast float %5452, %5404
  %5541 = fsub fast float 1.000000e+00, %5293
  %5542 = bitcast float %5541 to i32
  %5543 = sitofp i32 %5542 to float
  %5544 = fmul fast float %5543, 5.000000e+00
  %5545 = fadd fast float %5544, 0xC1EFBF8940000000
  %5546 = fptosi float %5545 to i32
  %5547 = bitcast i32 %5546 to float
  %5548 = fmul fast float %5528, %5547
  %5549 = fmul fast float %5506, %5548
  %5550 = fmul fast float %5549, %5535
  %5551 = fmul fast float %5508, %5548
  %5552 = fmul fast float %5551, %5536
  %5553 = fmul fast float %5510, %5548
  %5554 = fmul fast float %5553, %5537
  %5555 = fmul fast float %5507, %4082
  %5556 = fmul fast float %5509, %4082
  %5557 = fmul fast float %5511, %4082
  %5558 = fadd fast float %5538, %4078
  %5559 = fadd fast float %5558, %5550
  %5560 = fmul fast float %5559, %4082
  %5561 = fadd fast float %5539, %4079
  %5562 = fadd fast float %5561, %5552
  %5563 = fmul fast float %5562, %4082
  %5564 = fadd fast float %5540, %4080
  %5565 = fadd fast float %5564, %5554
  %5566 = fmul fast float %5565, %4082
  %5567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5567, 3
  %5569 = fcmp fast oeq float %5568, 0.000000e+00
  br i1 %5569, label %6654, label %5570

; <label>:5570                                    ; preds = %5449
  %5571 = extractvalue %dx.types.CBufRet.f32 %5567, 0
  %5572 = extractvalue %dx.types.CBufRet.f32 %5567, 1
  %5573 = extractvalue %dx.types.CBufRet.f32 %5567, 2
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.CBufRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.CBufRet.f32 %5574, 2
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5582 = select i1 %269, float %5579, float %5575
  %5583 = select i1 %269, float %5581, float %5576
  %5584 = select i1 %269, float %5580, float %5577
  %5585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5586 = extractvalue %dx.types.CBufRet.f32 %5585, 2
  %5587 = fmul fast float %5586, %117
  %5588 = fmul fast float %5586, %118
  %5589 = fmul fast float %5586, %119
  %5590 = fadd fast float %5587, %197
  %5591 = fadd fast float %5588, %198
  %5592 = fadd fast float %5589, %199
  %5593 = fcmp fast olt float %5568, 0.000000e+00
  br i1 %5593, label %6233, label %5594

; <label>:5594                                    ; preds = %5570
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5599 = extractvalue %dx.types.CBufRet.f32 %5595, 3
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5610 = fmul fast float %5596, %5590
  %5611 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %5597, float %5610)  ; FMad(a,b,c)
  %5612 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %5598, float %5611)  ; FMad(a,b,c)
  %5613 = fadd fast float %5612, %5599
  %5614 = fmul fast float %5601, %5590
  %5615 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %5602, float %5614)  ; FMad(a,b,c)
  %5616 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %5603, float %5615)  ; FMad(a,b,c)
  %5617 = fadd fast float %5616, %5604
  %5618 = fmul fast float %5606, %5590
  %5619 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %5607, float %5618)  ; FMad(a,b,c)
  %5620 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %5608, float %5619)  ; FMad(a,b,c)
  %5621 = fadd fast float %5620, %5609
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = fcmp fast une float %5623, 0.000000e+00
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5629 = fmul fast float %5628, %5613
  %5630 = fmul fast float %5628, %5617
  %5631 = fadd fast float %5629, %5626
  %5632 = fadd fast float %5630, %5627
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 3
  %5637 = fmul fast float %5636, %5613
  %5638 = fmul fast float %5636, %5617
  %5639 = fadd fast float %5637, %5634
  %5640 = fadd fast float %5638, %5635
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5643 = fsub fast float %5642, %5621
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = fmul fast float %5643, %5644
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  br i1 %5624, label %5708, label %5648

; <label>:5648                                    ; preds = %5594
  %5649 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5652 = fadd fast float %5651, %5649
  %5653 = fcmp fast ogt float %5652, 0.000000e+00
  br i1 %5653, label %5654, label %5678

; <label>:5654                                    ; preds = %5648
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5658 = fsub fast float %5639, %5656
  %5659 = fsub fast float %5640, %5657
  %5660 = fcmp fast olt float %5658, 0.000000e+00
  %5661 = fcmp fast olt float %5659, 0.000000e+00
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 1
  %5665 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5666 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5667 = select i1 %5660, float %5663, float %5665
  %5668 = select i1 %5661, float %5664, float %5666
  %5669 = fmul fast float %5667, %5658
  %5670 = fmul fast float %5668, %5659
  %5671 = call float @dx.op.unary.f32(i32 6, float %5669)  ; FAbs(value)
  %5672 = call float @dx.op.unary.f32(i32 6, float %5670)  ; FAbs(value)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5585, 0
  %5674 = call float @dx.op.binary.f32(i32 35, float %5671, float %5672)  ; FMax(a,b)
  %5675 = fsub fast float %5673, %5674
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = fmul fast float %5676, %5647
  br label %5678

; <label>:5678                                    ; preds = %5654, %5648
  %5679 = phi float [ %5677, %5654 ], [ 0.000000e+00, %5648 ]
  %5680 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5681 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5682 = fadd fast float %5681, %5680
  %5683 = fcmp fast ogt float %5682, 0.000000e+00
  br i1 %5683, label %5684, label %5708

; <label>:5684                                    ; preds = %5678
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = fsub fast float %5631, %5686
  %5689 = fsub fast float %5632, %5687
  %5690 = fcmp fast olt float %5688, 0.000000e+00
  %5691 = fcmp fast olt float %5689, 0.000000e+00
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.CBufRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.CBufRet.f32 %5692, 2
  %5696 = extractvalue %dx.types.CBufRet.f32 %5692, 3
  %5697 = select i1 %5690, float %5693, float %5695
  %5698 = select i1 %5691, float %5694, float %5696
  %5699 = fmul fast float %5697, %5688
  %5700 = fmul fast float %5698, %5689
  %5701 = call float @dx.op.unary.f32(i32 6, float %5699)  ; FAbs(value)
  %5702 = call float @dx.op.unary.f32(i32 6, float %5700)  ; FAbs(value)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5585, 0
  %5704 = call float @dx.op.binary.f32(i32 35, float %5701, float %5702)  ; FMax(a,b)
  %5705 = fsub fast float %5703, %5704
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = fmul fast float %5706, %5647
  br label %5708

; <label>:5708                                    ; preds = %5684, %5678, %5594
  %5709 = phi float [ 0.000000e+00, %5594 ], [ %5707, %5684 ], [ 0.000000e+00, %5678 ]
  %5710 = phi float [ 0.000000e+00, %5594 ], [ %5679, %5684 ], [ %5679, %5678 ]
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 1
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.CBufRet.f32 %5714, 1
  %5717 = fsub fast float %5613, %5715
  %5718 = fsub fast float %5617, %5716
  %5719 = fcmp fast olt float %5717, 0.000000e+00
  %5720 = fcmp fast olt float %5718, 0.000000e+00
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.CBufRet.f32 %5721, 1
  %5724 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5725 = extractvalue %dx.types.CBufRet.f32 %5721, 3
  %5726 = select i1 %5719, float %5722, float %5724
  %5727 = select i1 %5720, float %5723, float %5725
  %5728 = fmul fast float %5726, %5717
  %5729 = fmul fast float %5727, %5718
  %5730 = call float @dx.op.unary.f32(i32 6, float %5728)  ; FAbs(value)
  %5731 = call float @dx.op.unary.f32(i32 6, float %5729)  ; FAbs(value)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5585, 0
  %5733 = call float @dx.op.binary.f32(i32 35, float %5730, float %5731)  ; FMax(a,b)
  %5734 = fsub fast float %5732, %5733
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = call float @dx.op.binary.f32(i32 36, float %5735, float %5713)  ; FMin(a,b)
  %5737 = fmul fast float %5736, %5647
  %5738 = fsub fast float %5709, %5737
  %5739 = fsub fast float %5710, %5709
  %5740 = fsub fast float %5739, %5737
  %5741 = call float @dx.op.binary.f32(i32 35, float %5709, float %5710)  ; FMax(a,b)
  %5742 = call float @dx.op.binary.f32(i32 35, float %5737, float %5741)  ; FMax(a,b)
  %5743 = fcmp fast olt float %5742, 1.000000e+00
  br i1 %5743, label %5744, label %6142, !dx.controlflow.hints !98

; <label>:5744                                    ; preds = %5708
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = fcmp fast une float %5746, 0.000000e+00
  br i1 %5747, label %5748, label %6142, !dx.controlflow.hints !99

; <label>:5748                                    ; preds = %5744
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5753 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.CBufRet.f32 %5754, 2
  %5758 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5763 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5764 = fmul fast float %5750, %5590
  %5765 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %5751, float %5764)  ; FMad(a,b,c)
  %5766 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %5752, float %5765)  ; FMad(a,b,c)
  %5767 = fadd fast float %5766, %5753
  %5768 = fmul fast float %5755, %5590
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %5756, float %5768)  ; FMad(a,b,c)
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %5757, float %5769)  ; FMad(a,b,c)
  %5771 = fadd fast float %5770, %5758
  %5772 = fmul fast float %5760, %5590
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %5761, float %5772)  ; FMad(a,b,c)
  %5774 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %5762, float %5773)  ; FMad(a,b,c)
  %5775 = fadd fast float %5774, %5763
  %5776 = fcmp fast oge float %5767, 1.000000e+00
  %5777 = fcmp fast oge float %5771, 1.000000e+00
  %5778 = or i1 %5776, %5777
  %5779 = fcmp fast olt float %5767, 0.000000e+00
  %5780 = fcmp fast olt float %5771, 0.000000e+00
  %5781 = or i1 %5779, %5780
  %5782 = or i1 %5778, %5781
  br i1 %5782, label %6142, label %5783, !dx.controlflow.hints !100

; <label>:5783                                    ; preds = %5748
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5784, 2
  %5788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.i32 %5788, 2
  %5790 = uitofp i32 %5789 to float
  %5791 = extractvalue %dx.types.CBufRet.i32 %5788, 3
  %5792 = uitofp i32 %5791 to float
  %5793 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5794 = fmul fast float %5793, 2.000000e+00
  %5795 = fsub fast float %5767, %5785
  %5796 = fsub fast float %5771, %5786
  %5797 = fmul fast float %5794, %5795
  %5798 = fmul fast float %5794, %5796
  %5799 = fdiv fast float 1.000000e+00, %5573
  %5800 = fmul fast float %5798, %5799
  %5801 = call float @dx.op.unary.f32(i32 6, float %5800)  ; FAbs(value)
  %5802 = fmul fast float %5787, %5592
  %5803 = fmul fast float %5802, %5794
  %5804 = call float @dx.op.unary.f32(i32 6, float %5803)  ; FAbs(value)
  %5805 = call float @dx.op.unary.f32(i32 6, float %5797)  ; FAbs(value)
  %5806 = call float @dx.op.binary.f32(i32 35, float %5804, float %5801)  ; FMax(a,b)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5805, float %5806)  ; FMax(a,b)
  %5808 = fmul fast float %5807, 2.000000e+00
  %5809 = call float @dx.op.unary.f32(i32 23, float %5808)  ; Log(value)
  %5810 = call float @dx.op.binary.f32(i32 35, float %5809, float %5790)  ; FMax(a,b)
  %5811 = call float @dx.op.unary.f32(i32 22, float %5810)  ; Frc(value)
  %5812 = fadd fast float %5811, 0xBFEA666660000000
  %5813 = fmul fast float %5812, 8.000000e+00
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = call float @dx.op.unary.f32(i32 27, float %5810)  ; Round_ni(value)
  %5816 = fadd fast float %5815, %5814
  %5817 = call float @dx.op.binary.f32(i32 36, float %5816, float %5792)  ; FMin(a,b)
  %5818 = call float @dx.op.unary.f32(i32 27, float %5817)  ; Round_ni(value)
  %5819 = fsub fast float -0.000000e+00, %5818
  %5820 = call float @dx.op.unary.f32(i32 21, float %5819)  ; Exp(value)
  %5821 = fmul fast float %5820, %5794
  %5822 = fmul fast float %5821, %5767
  %5823 = fmul fast float %5821, %5771
  %5824 = fmul fast float %5822, 2.500000e-01
  %5825 = fmul fast float %5823, 2.500000e-01
  %5826 = fadd fast float %5824, 5.000000e-01
  %5827 = fadd fast float %5825, 5.000000e-01
  %5828 = fsub fast float %5792, %5790
  %5829 = fptoui float %5828 to i32
  %5830 = add i32 %5829, 320
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5830)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5834 = fcmp fast une float %5817, %5792
  %5835 = fsub fast float %5767, %5832
  %5836 = fsub fast float %5771, %5833
  %5837 = call float @dx.op.unary.f32(i32 6, float %5835)  ; FAbs(value)
  %5838 = call float @dx.op.unary.f32(i32 6, float %5836)  ; FAbs(value)
  %5839 = fmul fast float %5837, %5821
  %5840 = fmul fast float %5838, %5821
  %5841 = fcmp fast olt float %5839, 1.000000e+00
  %5842 = fcmp fast olt float %5840, 1.000000e+00
  %5843 = and i1 %5841, %5842
  %5844 = or i1 %5834, %5843
  br i1 %5844, label %5845, label %6142, !dx.controlflow.hints !101

; <label>:5845                                    ; preds = %5783
  %5846 = fmul fast float %5823, 5.000000e-01
  %5847 = fmul fast float %5822, 5.000000e-01
  %5848 = fadd fast float %5846, 5.000000e-01
  %5849 = fadd fast float %5847, 5.000000e-01
  %5850 = sitofp i32 %5789 to float
  %5851 = fsub fast float %5817, %5850
  %5852 = call float @dx.op.unary.f32(i32 27, float %5851)  ; Round_ni(value)
  %5853 = call float @dx.op.unary.f32(i32 22, float %5817)  ; Frc(value)
  %5854 = call float @dx.op.unary.f32(i32 22, float %5849)  ; Frc(value)
  %5855 = call float @dx.op.unary.f32(i32 22, float %5848)  ; Frc(value)
  %5856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5854, float %5855, float %5852, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5857 = extractvalue %dx.types.ResRet.f32 %5856, 0
  %5858 = extractvalue %dx.types.ResRet.f32 %5856, 1
  %5859 = extractvalue %dx.types.ResRet.f32 %5856, 2
  %5860 = extractvalue %dx.types.ResRet.f32 %5856, 3
  %5861 = fcmp fast ogt float %5853, 0.000000e+00
  br i1 %5861, label %5862, label %5883, !dx.controlflow.hints !102

; <label>:5862                                    ; preds = %5845
  %5863 = fadd fast float %5852, 1.000000e+00
  %5864 = call float @dx.op.unary.f32(i32 22, float %5826)  ; Frc(value)
  %5865 = call float @dx.op.unary.f32(i32 22, float %5827)  ; Frc(value)
  %5866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5864, float %5865, float %5863, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5867 = extractvalue %dx.types.ResRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.ResRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.ResRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.ResRet.f32 %5866, 3
  %5871 = fsub fast float %5867, %5857
  %5872 = fsub fast float %5868, %5858
  %5873 = fsub fast float %5869, %5859
  %5874 = fsub fast float %5870, %5860
  %5875 = fmul fast float %5871, %5853
  %5876 = fmul fast float %5872, %5853
  %5877 = fmul fast float %5873, %5853
  %5878 = fmul fast float %5874, %5853
  %5879 = fadd fast float %5875, %5857
  %5880 = fadd fast float %5876, %5858
  %5881 = fadd fast float %5877, %5859
  %5882 = fadd fast float %5878, %5860
  br label %5883

; <label>:5883                                    ; preds = %5862, %5845
  %5884 = phi float [ %5879, %5862 ], [ %5857, %5845 ]
  %5885 = phi float [ %5880, %5862 ], [ %5858, %5845 ]
  %5886 = phi float [ %5881, %5862 ], [ %5859, %5845 ]
  %5887 = phi float [ %5882, %5862 ], [ %5860, %5845 ]
  %5888 = fadd fast float %5884, -5.000000e-01
  %5889 = fadd fast float %5886, -5.000000e-01
  %5890 = fmul fast float %5888, 0xBFD5555560000000
  %5891 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5889, float %5890)  ; FMad(a,b,c)
  %5892 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5885, float 0.000000e+00)  ; FMad(a,b,c)
  %5893 = fadd fast float %5892, %5887
  %5894 = fmul fast float %5888, -7.500000e-01
  %5895 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5889, float %5894)  ; FMad(a,b,c)
  %5896 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5885, float 0.000000e+00)  ; FMad(a,b,c)
  %5897 = fadd fast float %5896, %5887
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 0
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5904 = extractvalue %dx.types.CBufRet.f32 %5900, 3
  %5905 = fsub fast float %5901, %5891
  %5906 = fsub fast float %5902, %5893
  %5907 = fsub fast float %5903, %5895
  %5908 = fsub fast float %5904, %5897
  %5909 = fmul fast float %5905, %5899
  %5910 = fmul fast float %5906, %5899
  %5911 = fmul fast float %5907, %5899
  %5912 = fmul fast float %5908, %5899
  %5913 = fadd fast float %5909, %5891
  %5914 = fadd fast float %5910, %5893
  %5915 = fadd fast float %5911, %5895
  %5916 = fadd fast float %5912, %5897
  %5917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.i32 %5917, 0
  %5919 = and i32 %5918, 536870911
  %5920 = uitofp i32 %5919 to float
  %5921 = fmul fast float %5920, %5767
  %5922 = fmul fast float %5920, %5771
  %5923 = fptoui float %5921 to i32
  %5924 = fptoui float %5922 to i32
  %5925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.i32 %5925, 0
  %5927 = and i32 %5926, 31
  %5928 = lshr i32 %5923, %5927
  %5929 = lshr i32 %5924, %5927
  %5930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.i32 %5930, 0
  %5932 = and i32 %5931, 31
  %5933 = shl i32 1, %5932
  %5934 = call i32 @dx.op.binary.i32(i32 40, i32 %5933, i32 4)  ; UMin(a,b)
  %5935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5936 = extractvalue %dx.types.ResRet.i32 %5935, 0
  %5937 = extractvalue %dx.types.ResRet.i32 %5935, 1
  %5938 = icmp eq i32 %5934, 0
  br i1 %5938, label %5980, label %5939

; <label>:5939                                    ; preds = %5883
  br label %5940

; <label>:5940                                    ; preds = %5968, %5939
  %5941 = phi i32 [ %5971, %5968 ], [ 0, %5939 ]
  %5942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5943 = extractvalue %dx.types.ResRet.i32 %5942, 0
  %5944 = lshr i32 %5943, 16
  %5945 = and i32 %5944, 31
  %5946 = shl i32 %5929, %5945
  %5947 = add i32 %5946, %5928
  %5948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5949 = extractvalue %dx.types.ResRet.i32 %5948, 0
  %5950 = and i32 %5949, 31
  %5951 = shl i32 %5947, %5950
  %5952 = add i32 %5951, %5941
  %5953 = shl i32 %5952, 2
  %5954 = add i32 %5953, 32
  %5955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.i32 %5955, 0
  %5957 = icmp slt i32 %5956, 0
  %5958 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5941
  %5959 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5941
  %5960 = bitcast float* %5958 to i32*
  %5961 = bitcast float* %5959 to i32*
  br i1 %5957, label %5962, label %5968

; <label>:5962                                    ; preds = %5940
  %5963 = and i32 %5956, 1073741823
  %5964 = add nuw nsw i32 %5963, 20
  %5965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.i32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.i32 %5965, 1
  br label %5968

; <label>:5968                                    ; preds = %5962, %5940
  %5969 = phi i32 [ %5966, %5962 ], [ %5936, %5940 ]
  %5970 = phi i32 [ %5967, %5962 ], [ %5937, %5940 ]
  store i32 %5969, i32* %5960, align 4
  store i32 %5970, i32* %5961, align 4
  %5971 = add nuw i32 %5941, 1
  %5972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.i32 %5972, 2
  %5974 = icmp eq i32 %5973, 0
  %5975 = icmp ugt i32 %5956, -1073741825
  %5976 = and i1 %5975, %5974
  %5977 = icmp ult i32 %5971, %5934
  %5978 = and i1 %5976, %5977
  br i1 %5978, label %5940, label %5979

; <label>:5979                                    ; preds = %5968
  br label %5980

; <label>:5980                                    ; preds = %5979, %5883
  %5981 = phi i32 [ 0, %5883 ], [ %5971, %5979 ]
  %5982 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5983 = fptoui float %5982 to i32
  %5984 = icmp eq i32 %5983, 0
  br i1 %5984, label %6036, label %5985

; <label>:5985                                    ; preds = %5980
  br label %5986

; <label>:5986                                    ; preds = %6031, %5985
  %5987 = phi i32 [ %6032, %6031 ], [ %5981, %5985 ]
  %5988 = phi i32 [ %6033, %6031 ], [ 0, %5985 ]
  %5989 = lshr i32 %5988, 2
  %5990 = and i32 %5988, 3
  %5991 = add nuw nsw i32 %5989, 83
  %5992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %5991)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.i32 %5992, 0
  %5994 = extractvalue %dx.types.CBufRet.i32 %5992, 1
  %5995 = extractvalue %dx.types.CBufRet.i32 %5992, 2
  %5996 = extractvalue %dx.types.CBufRet.i32 %5992, 3
  %5997 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %5993, i32* %5997, align 4
  %5998 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %5994, i32* %5998, align 4
  %5999 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %5995, i32* %5999, align 4
  %6000 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %5996, i32* %6000, align 4
  %6001 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5990
  %6002 = load i32, i32* %6001, align 4, !tbaa !103, !noalias !107
  %6003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6004 = extractvalue %dx.types.ResRet.i32 %6003, 0
  %6005 = lshr i32 %6004, 16
  %6006 = and i32 %6005, 31
  %6007 = shl i32 %5929, %6006
  %6008 = add i32 %6007, %5928
  %6009 = shl i32 %6008, 2
  %6010 = add i32 %6009, %6002
  %6011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.i32 %6011, 0
  %6013 = icmp eq i32 %6012, 0
  br i1 %6013, label %6031, label %6014

; <label>:6014                                    ; preds = %5986
  %6015 = icmp slt i32 %6012, 0
  %6016 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5987
  %6017 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5987
  %6018 = bitcast float* %6016 to i32*
  %6019 = bitcast float* %6017 to i32*
  br i1 %6015, label %6020, label %6027

; <label>:6020                                    ; preds = %6014
  %6021 = and i32 %6012, 1073741823
  %6022 = add i32 %6002, 20
  %6023 = add i32 %6022, %6021
  %6024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6023, i32 undef)  ; BufferLoad(srv,index,wot)
  %6025 = extractvalue %dx.types.ResRet.i32 %6024, 0
  %6026 = extractvalue %dx.types.ResRet.i32 %6024, 1
  br label %6027

; <label>:6027                                    ; preds = %6020, %6014
  %6028 = phi i32 [ %6025, %6020 ], [ %5936, %6014 ]
  %6029 = phi i32 [ %6026, %6020 ], [ %5937, %6014 ]
  store i32 %6028, i32* %6018, align 4
  store i32 %6029, i32* %6019, align 4
  %6030 = add i32 %5987, 1
  br label %6031

; <label>:6031                                    ; preds = %6027, %5986
  %6032 = phi i32 [ %5987, %5986 ], [ %6030, %6027 ]
  %6033 = add nuw i32 %5988, 1
  %6034 = icmp eq i32 %6033, %5983
  br i1 %6034, label %6035, label %5986

; <label>:6035                                    ; preds = %6031
  br label %6036

; <label>:6036                                    ; preds = %6035, %5980
  %6037 = phi i32 [ %5981, %5980 ], [ %6032, %6035 ]
  %6038 = icmp eq i32 %6037, 1
  %6039 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6040 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6038, label %6041, label %6044

; <label>:6041                                    ; preds = %6036
  %6042 = load float, float* %6039, align 4
  %6043 = load float, float* %6040, align 4
  br label %6071

; <label>:6044                                    ; preds = %6036
  %6045 = load float, float* %6039, align 4
  %6046 = load float, float* %6040, align 4
  %6047 = fdiv fast float 1.000000e+00, %6046
  %6048 = fsub fast float %6045, %6047
  %6049 = icmp ugt i32 %6037, 1
  br i1 %6049, label %6050, label %6066

; <label>:6050                                    ; preds = %6044
  br label %6051

; <label>:6051                                    ; preds = %6051, %6050
  %6052 = phi float [ %6061, %6051 ], [ %6048, %6050 ]
  %6053 = phi float [ %6062, %6051 ], [ %6045, %6050 ]
  %6054 = phi i32 [ %6063, %6051 ], [ 1, %6050 ]
  %6055 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6054
  %6056 = load float, float* %6055, align 4
  %6057 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6054
  %6058 = load float, float* %6057, align 4
  %6059 = fdiv fast float 1.000000e+00, %6058
  %6060 = fsub fast float %6056, %6059
  %6061 = call float @dx.op.binary.f32(i32 36, float %6052, float %6060)  ; FMin(a,b)
  %6062 = call float @dx.op.binary.f32(i32 35, float %6053, float %6056)  ; FMax(a,b)
  %6063 = add nuw i32 %6054, 1
  %6064 = icmp eq i32 %6063, %6037
  br i1 %6064, label %6065, label %6051

; <label>:6065                                    ; preds = %6051
  br label %6066

; <label>:6066                                    ; preds = %6065, %6044
  %6067 = phi float [ %6048, %6044 ], [ %6061, %6065 ]
  %6068 = phi float [ %6045, %6044 ], [ %6062, %6065 ]
  %6069 = fsub fast float %6068, %6067
  %6070 = fdiv fast float 1.000000e+00, %6069
  br label %6071

; <label>:6071                                    ; preds = %6066, %6041
  %6072 = phi float [ %6042, %6041 ], [ %6068, %6066 ]
  %6073 = phi float [ %6043, %6041 ], [ %6070, %6066 ]
  %6074 = fadd fast float %5775, %6072
  %6075 = fmul fast float %6074, %6073
  %6076 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6077 = fmul fast float %6076, 2.000000e+00
  %6078 = fsub fast float 1.000000e+00, %6077
  %6079 = fmul fast float %5913, %5913
  %6080 = fsub fast float %5914, %6079
  %6081 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6080)  ; FMax(a,b)
  %6082 = fdiv fast float 1.000000e+00, %6081
  %6083 = fmul fast float %5914, %5913
  %6084 = fsub fast float %5915, %6083
  %6085 = fsub fast float %6078, %5913
  %6086 = fmul fast float %6078, %6078
  %6087 = fsub fast float %6086, %5914
  %6088 = fmul fast float %6082, %6084
  %6089 = fmul fast float %6088, %6085
  %6090 = fsub fast float %6087, %6089
  %6091 = fmul fast float %5914, %5914
  %6092 = fsub fast float %5916, %6091
  %6093 = fmul fast float %6084, %6084
  %6094 = fmul fast float %6093, %6082
  %6095 = fsub fast float %6092, %6094
  %6096 = fdiv fast float %6090, %6095
  %6097 = fmul fast float %6096, %6084
  %6098 = fsub fast float %6085, %6097
  %6099 = fmul fast float %6098, %6082
  %6100 = fmul fast float %6099, %5913
  %6101 = fsub fast float 1.000000e+00, %6100
  %6102 = fmul fast float %6096, %5914
  %6103 = fsub fast float %6101, %6102
  %6104 = fmul fast float %6099, %6099
  %6105 = fmul fast float %6096, 4.000000e+00
  %6106 = fmul fast float %6105, %6103
  %6107 = fsub fast float %6104, %6106
  %6108 = call float @dx.op.unary.f32(i32 24, float %6107)  ; Sqrt(value)
  %6109 = fcmp fast oge float %6099, 0.000000e+00
  %6110 = fsub fast float -0.000000e+00, %6108
  %6111 = select i1 %6109, float %6110, float %6108
  %6112 = fsub fast float %6111, %6099
  %6113 = fdiv fast float %6112, %6096
  %6114 = fdiv fast float %6103, %6112
  %6115 = fmul fast float %6113, 5.000000e-01
  %6116 = fmul fast float %6114, 2.000000e+00
  %6117 = select i1 %6109, float %6115, float %6116
  %6118 = select i1 %6109, float %6116, float %6115
  %6119 = call float @dx.op.binary.f32(i32 35, float %6117, float %6118)  ; FMax(a,b)
  %6120 = call float @dx.op.binary.f32(i32 36, float %6117, float %6118)  ; FMin(a,b)
  %6121 = fcmp fast ogt float %6078, %6119
  %6122 = fsub fast float %6078, %6120
  %6123 = fsub fast float %6078, %6119
  %6124 = fsub fast float %6119, %6120
  %6125 = select i1 %6121, float %6123, float %6124
  %6126 = fmul float %6122, %6125
  %6127 = select i1 %6121, float %6120, float %6078
  %6128 = fcmp fast ogt float %6078, %6120
  %6129 = fmul fast float %6127, %6119
  %6130 = fadd fast float %6127, %6119
  %6131 = fmul fast float %6130, %5913
  %6132 = fadd fast float %6129, %5914
  %6133 = fsub fast float %6132, %6131
  %6134 = fdiv fast float %6133, %6126
  %6135 = select i1 %6128, float %6134, float 0.000000e+00
  %6136 = fsub fast float 1.000000e+00, %6135
  %6137 = select i1 %6121, float %6136, float %6135
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = extractvalue %dx.types.CBufRet.f32 %5898, 3
  %6140 = fmul fast float %6139, %6138
  %6141 = fsub fast float 1.000000e+00, %6140
  br label %6142

; <label>:6142                                    ; preds = %6071, %5783, %5748, %5744, %5708
  %6143 = phi float [ 1.000000e+00, %5708 ], [ %6141, %6071 ], [ 1.000000e+00, %5748 ], [ 1.000000e+00, %5783 ], [ 1.000000e+00, %5744 ]
  %6144 = fcmp fast ogt float %5740, 0.000000e+00
  br i1 %6144, label %6145, label %6153, !dx.controlflow.hints !116

; <label>:6145                                    ; preds = %6142
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6148 = fadd fast float %6147, %5621
  %6149 = call float @dx.op.binary.f32(i32 35, float %6148, float 0.000000e+00)  ; FMax(a,b)
  %6150 = fadd fast float %6149, 0x3F10000000000000
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5639, float %5640, float undef, float undef, i32 0, i32 0, i32 undef, float %6150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  br label %6153

; <label>:6153                                    ; preds = %6145, %6142
  %6154 = phi float [ %6152, %6145 ], [ 1.000000e+00, %6142 ]
  %6155 = fcmp fast ogt float %5738, 0.000000e+00
  br i1 %6155, label %6156, label %6164, !dx.controlflow.hints !117

; <label>:6156                                    ; preds = %6153
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6159 = fadd fast float %6158, %5621
  %6160 = call float @dx.op.binary.f32(i32 35, float %6159, float 0.000000e+00)  ; FMax(a,b)
  %6161 = fadd fast float %6160, 0x3F10000000000000
  %6162 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5631, float %5632, float undef, float undef, i32 0, i32 0, i32 undef, float %6161)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6163 = extractvalue %dx.types.ResRet.f32 %6162, 0
  br label %6164

; <label>:6164                                    ; preds = %6156, %6153
  %6165 = phi float [ %6163, %6156 ], [ 1.000000e+00, %6153 ]
  %6166 = fcmp fast ogt float %5737, 0.000000e+00
  br i1 %6166, label %6167, label %6179, !dx.controlflow.hints !118

; <label>:6167                                    ; preds = %6164
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6170 = fadd fast float %6169, %5621
  %6171 = call float @dx.op.binary.f32(i32 35, float %6170, float 0.000000e+00)  ; FMax(a,b)
  %6172 = fadd fast float %6171, 0x3F10000000000000
  br i1 %5624, label %6173, label %6176, !dx.controlflow.hints !119

; <label>:6173                                    ; preds = %6167
  %6174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5613, float %5617, float undef, float undef, i32 0, i32 0, i32 undef, float %6172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6175 = extractvalue %dx.types.ResRet.f32 %6174, 0
  br label %6179

; <label>:6176                                    ; preds = %6167
  %6177 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5613, float %5617, float undef, float undef, i32 0, i32 0, i32 undef, float %6172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  br label %6179

; <label>:6179                                    ; preds = %6176, %6173, %6164
  %6180 = phi float [ %6175, %6173 ], [ %6178, %6176 ], [ 1.000000e+00, %6164 ]
  %6181 = fsub fast float %6154, %6143
  %6182 = fmul fast float %6181, %5710
  %6183 = fadd fast float %6182, %6143
  %6184 = fsub fast float %6165, %6183
  %6185 = fmul fast float %6184, %5709
  %6186 = fadd fast float %6185, %6183
  %6187 = fsub fast float %6180, %6186
  %6188 = fmul fast float %6187, %5737
  %6189 = fadd fast float %6188, %6186
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6192 = fcmp fast ogt float %6191, 0.000000e+00
  br i1 %6192, label %6193, label %6233, !dx.controlflow.hints !120

; <label>:6193                                    ; preds = %6179
  %6194 = fcmp fast ugt float %6191, 0.000000e+00
  br i1 %6194, label %6195, label %6230

; <label>:6195                                    ; preds = %6193
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6200 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6206 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6212 = fadd fast float %6209, %5590
  %6213 = fadd fast float %6210, %5591
  %6214 = fadd fast float %6211, %5592
  %6215 = fmul fast float %6212, %6197
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6198, float %6213, float %6215)  ; FMad(a,b,c)
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6199, float %6214, float %6216)  ; FMad(a,b,c)
  %6218 = fadd fast float %6217, %6200
  %6219 = fmul fast float %6212, %6202
  %6220 = call float @dx.op.tertiary.f32(i32 46, float %6203, float %6213, float %6219)  ; FMad(a,b,c)
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6204, float %6214, float %6220)  ; FMad(a,b,c)
  %6222 = fadd fast float %6221, %6205
  %6223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6218, float %6222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6224 = extractvalue %dx.types.ResRet.f32 %6223, 0
  %6225 = fmul fast float %6224, %6207
  %6226 = fadd fast float %6225, %6206
  %6227 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6228 = fmul fast float %6227, %6191
  %6229 = fsub fast float 1.000000e+00, %6228
  br label %6230

; <label>:6230                                    ; preds = %6195, %6193
  %6231 = phi float [ %6229, %6195 ], [ 1.000000e+00, %6193 ]
  %6232 = fmul fast float %6231, %6189
  br label %6233

; <label>:6233                                    ; preds = %6230, %6179, %5570
  %6234 = phi float [ 1.000000e+00, %5570 ], [ %6232, %6230 ], [ %6189, %6179 ]
  %6235 = call float @dx.op.binary.f32(i32 36, float %6234, float %6234)  ; FMin(a,b)
  %6236 = call float @dx.op.binary.f32(i32 36, float %6234, float %6235)  ; FMin(a,b)
  %6237 = fcmp fast ogt float %6236, 0.000000e+00
  br i1 %6237, label %6238, label %6398, !dx.controlflow.hints !121

; <label>:6238                                    ; preds = %6233
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6243 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6248 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6254 = fmul fast float %6240, %5590
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %6241, float %6254)  ; FMad(a,b,c)
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %6242, float %6255)  ; FMad(a,b,c)
  %6257 = fadd fast float %6256, %6243
  %6258 = fmul fast float %6245, %5590
  %6259 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %6246, float %6258)  ; FMad(a,b,c)
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %6247, float %6259)  ; FMad(a,b,c)
  %6261 = fadd fast float %6260, %6248
  %6262 = fmul fast float %6250, %5590
  %6263 = call float @dx.op.tertiary.f32(i32 46, float %5591, float %6251, float %6262)  ; FMad(a,b,c)
  %6264 = call float @dx.op.tertiary.f32(i32 46, float %5592, float %6252, float %6263)  ; FMad(a,b,c)
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6268 = extractvalue %dx.types.CBufRet.f32 %6265, 3
  %6269 = fmul fast float %6268, %6257
  %6270 = fmul fast float %6268, %6261
  %6271 = fadd fast float %6269, %6266
  %6272 = fadd fast float %6270, %6267
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = fsub fast float %6271, %6274
  %6277 = fsub fast float %6272, %6275
  %6278 = fcmp fast olt float %6276, 0.000000e+00
  %6279 = fcmp fast olt float %6277, 0.000000e+00
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6284 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6285 = select i1 %6278, float %6281, float %6283
  %6286 = select i1 %6279, float %6282, float %6284
  %6287 = fmul fast float %6285, %6276
  %6288 = fmul fast float %6286, %6277
  %6289 = call float @dx.op.unary.f32(i32 6, float %6287)  ; FAbs(value)
  %6290 = call float @dx.op.unary.f32(i32 6, float %6288)  ; FAbs(value)
  %6291 = extractvalue %dx.types.CBufRet.f32 %5585, 0
  %6292 = call float @dx.op.binary.f32(i32 35, float %6289, float %6290)  ; FMax(a,b)
  %6293 = fsub fast float %6291, %6292
  %6294 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6295 = fcmp fast ogt float %6294, 0.000000e+00
  br i1 %6295, label %6296, label %6337, !dx.controlflow.hints !122

; <label>:6296                                    ; preds = %6238
  %6297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6271, float %6272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 1
  %6299 = fcmp fast ogt float %6298, 0.000000e+00
  br i1 %6299, label %6300, label %6332

; <label>:6300                                    ; preds = %6296
  %6301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6271, float %6272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6302 = extractvalue %dx.types.ResRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.ResRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.ResRet.f32 %6301, 2
  %6305 = extractvalue %dx.types.ResRet.f32 %6301, 3
  %6306 = fsub fast float 1.000000e+00, %6253
  %6307 = fsub fast float %6306, %6264
  %6308 = fmul fast float %6307, 0x400921FB60000000
  %6309 = fadd fast float %6308, 0x3FF921FB60000000
  %6310 = call float @dx.op.unary.f32(i32 13, float %6309)  ; Sin(value)
  %6311 = fadd fast float %6310, -1.000000e+00
  %6312 = fmul fast float %6311, 0x3FD45F3060000000
  %6313 = fmul fast float %6307, 0x401921FB60000000
  %6314 = fadd fast float %6313, 0x400921FB60000000
  %6315 = call float @dx.op.unary.f32(i32 13, float %6314)  ; Sin(value)
  %6316 = fadd fast float %6315, 0x3E7777A5C0000000
  %6317 = fmul fast float %6316, 0x3FC45F3060000000
  %6318 = fmul fast float %6307, 0x4022D97C80000000
  %6319 = fadd fast float %6318, 0x4012D97C80000000
  %6320 = call float @dx.op.unary.f32(i32 13, float %6319)  ; Sin(value)
  %6321 = fadd fast float %6320, 1.000000e+00
  %6322 = fmul fast float %6321, 0x3FBB2995E0000000
  %6323 = fmul fast float %6307, 0x402921FB60000000
  %6324 = fadd fast float %6323, 0x401921FB60000000
  %6325 = call float @dx.op.unary.f32(i32 13, float %6324)  ; Sin(value)
  %6326 = fadd fast float %6325, 0xBE8777A5C0000000
  %6327 = fmul fast float %6326, 0x3FB45F3060000000
  %6328 = call float @dx.op.dot4.f32(i32 56, float %6302, float %6303, float %6304, float %6305, float %6312, float %6317, float %6322, float %6327)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6329 = fmul fast float %6328, 0xBFF7154760000000
  %6330 = call float @dx.op.unary.f32(i32 21, float %6329)  ; Exp(value)
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  br label %6332

; <label>:6332                                    ; preds = %6300, %6296
  %6333 = phi float [ %6331, %6300 ], [ 1.000000e+00, %6296 ]
  %6334 = fadd fast float %6333, -1.000000e+00
  %6335 = fmul fast float %6334, %6294
  %6336 = fadd fast float %6335, 1.000000e+00
  br label %6337

; <label>:6337                                    ; preds = %6332, %6238
  %6338 = phi float [ %6336, %6332 ], [ 1.000000e+00, %6238 ]
  %6339 = fmul fast float %6338, %6234
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.CBufRet.f32 %6340, 2
  %6344 = fadd fast float %6341, %197
  %6345 = fadd fast float %6342, %198
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6348 = fsub fast float -0.000000e+00, %6344
  %6349 = fsub fast float -0.000000e+00, %6345
  %6350 = fsub fast float %5290, %6343
  %6351 = fadd fast float %6350, %6347
  %6352 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6348, float %6349, float %6351)  ; Dot3(ax,ay,az,bx,by,bz)
  %6353 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5571, float %5572, float %5573)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = fdiv fast float 1.000000e+00, %6353
  %6355 = fmul fast float %6354, %6352
  %6356 = fmul fast float %5571, %6355
  %6357 = fmul fast float %5572, %6355
  %6358 = fadd fast float %6356, %6344
  %6359 = fadd fast float %6357, %6345
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6363 = fsub fast float %6358, %6361
  %6364 = fsub fast float %6359, %6362
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 2
  %6367 = extractvalue %dx.types.CBufRet.f32 %6365, 3
  %6368 = fmul fast float %6363, %6366
  %6369 = fmul fast float %6364, %6367
  %6370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.i32 %6370, 3
  %6372 = icmp eq i32 %6371, 0
  br i1 %6372, label %6378, label %6373

; <label>:6373                                    ; preds = %6337
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6368, float %6369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.ResRet.f32 %6374, 1
  %6377 = extractvalue %dx.types.ResRet.f32 %6374, 2
  br label %6383

; <label>:6378                                    ; preds = %6337
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6368, float %6369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.ResRet.f32 %6379, 2
  br label %6383

; <label>:6383                                    ; preds = %6378, %6373
  %6384 = phi float [ %6375, %6373 ], [ %6380, %6378 ]
  %6385 = phi float [ %6376, %6373 ], [ %6381, %6378 ]
  %6386 = phi float [ %6377, %6373 ], [ %6382, %6378 ]
  %6387 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6388 = fmul fast float %6387, %6384
  %6389 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6390 = fsub fast float %6355, %6389
  %6391 = fsub fast float %6390, %6388
  %6392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6391)  ; FMax(a,b)
  %6393 = fmul fast float %6392, %6385
  %6394 = call float @dx.op.binary.f32(i32 36, float %6386, float %6393)  ; FMin(a,b)
  %6395 = fmul fast float %6394, 0xBFF7154760000000
  %6396 = call float @dx.op.unary.f32(i32 21, float %6395)  ; Exp(value)
  %6397 = fmul fast float %6339, %6396
  br label %6398

; <label>:6398                                    ; preds = %6383, %6233
  %6399 = phi float [ %6397, %6383 ], [ %6234, %6233 ]
  %6400 = call float @dx.op.binary.f32(i32 36, float %6399, float %6399)  ; FMin(a,b)
  %6401 = call float @dx.op.binary.f32(i32 36, float %6399, float %6400)  ; FMin(a,b)
  %6402 = fcmp fast ogt float %6401, 0.000000e+00
  br i1 %6402, label %6403, label %6654, !dx.controlflow.hints !123

; <label>:6403                                    ; preds = %6398
  %6404 = fmul fast float %6399, %5582
  %6405 = fmul fast float %6399, %5583
  %6406 = fmul fast float %6399, %5584
  %6407 = fsub fast float %199, %4486
  %6408 = fcmp fast ogt float %6407, 0.000000e+00
  %6409 = fmul fast float %5571, 5.120000e+02
  %6410 = fmul fast float %5572, 5.120000e+02
  %6411 = fmul fast float %5573, 5.120000e+02
  %6412 = fadd fast float %6411, %199
  %6413 = fsub fast float %4486, %6412
  %6414 = fmul fast float %6413, 2.000000e+00
  %6415 = fadd fast float %6414, %6412
  %6416 = select i1 %6408, float %6415, float %6412
  %6417 = fsub fast float %6416, %199
  %6418 = call float @dx.op.dot3.f32(i32 55, float %6409, float %6410, float %6417, float %6409, float %6410, float %6417)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = call float @dx.op.unary.f32(i32 25, float %6418)  ; Rsqrt(value)
  %6420 = fmul fast float %6419, %6409
  %6421 = fmul fast float %6419, %6410
  %6422 = fmul fast float %6419, %6417
  %6423 = fsub fast float %4486, %199
  %6424 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6423)  ; Dot3(ax,ay,az,bx,by,bz)
  %6425 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6420, float %6421, float %6422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6426 = fdiv fast float 1.000000e+00, %6425
  %6427 = fmul fast float %6426, %6424
  %6428 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6407, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6429 = fcmp fast ogt float %6428, 0.000000e+00
  %6430 = fcmp fast olt float %6428, 0.000000e+00
  %6431 = zext i1 %6429 to i32
  %6432 = zext i1 %6430 to i32
  %6433 = sub nsw i32 %6431, %6432
  %6434 = sitofp i32 %6433 to float
  %6435 = fsub fast float %6416, %4486
  %6436 = call float @dx.op.dot3.f32(i32 55, float %6409, float %6410, float %6435, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6437 = fcmp fast ogt float %6436, 0.000000e+00
  %6438 = fcmp fast olt float %6436, 0.000000e+00
  %6439 = zext i1 %6437 to i32
  %6440 = zext i1 %6438 to i32
  %6441 = sub nsw i32 %6439, %6440
  %6442 = sitofp i32 %6441 to float
  %6443 = fcmp fast une float %6434, %6442
  br i1 %6443, label %6444, label %6454

; <label>:6444                                    ; preds = %6403
  %6445 = fmul fast float %6427, %6422
  %6446 = fmul fast float %6427, %6421
  %6447 = fmul fast float %6427, %6420
  %6448 = fmul fast float %6447, %6447
  %6449 = fmul fast float %6446, %6446
  %6450 = fadd fast float %6448, %6449
  %6451 = fmul fast float %6445, %6445
  %6452 = fadd fast float %6450, %6451
  %6453 = call float @dx.op.unary.f32(i32 24, float %6452)  ; Sqrt(value)
  br label %6464

; <label>:6454                                    ; preds = %6403
  %6455 = icmp slt i32 %6433, 0
  br i1 %6455, label %6456, label %6464

; <label>:6456                                    ; preds = %6454
  %6457 = fsub fast float %199, %6416
  %6458 = fmul fast float %6409, %6409
  %6459 = fmul fast float %6410, %6410
  %6460 = fadd fast float %6458, %6459
  %6461 = fmul fast float %6457, %6457
  %6462 = fadd fast float %6460, %6461
  %6463 = call float @dx.op.unary.f32(i32 24, float %6462)  ; Sqrt(value)
  br label %6464

; <label>:6464                                    ; preds = %6456, %6454, %6444
  %6465 = phi float [ %6453, %6444 ], [ %6463, %6456 ], [ 0.000000e+00, %6454 ]
  %6466 = fsub fast float -0.000000e+00, %6465
  %6467 = select i1 %6408, float -0.000000e+00, float %6466
  %6468 = fmul fast float %4487, 0x3FF7154760000000
  %6469 = fmul fast float %6468, %6467
  %6470 = fmul fast float %4488, 0x3FF7154760000000
  %6471 = fmul fast float %6470, %6467
  %6472 = fmul fast float %4489, 0x3FF7154760000000
  %6473 = fmul fast float %6472, %6467
  %6474 = call float @dx.op.unary.f32(i32 21, float %6469)  ; Exp(value)
  %6475 = call float @dx.op.unary.f32(i32 21, float %6471)  ; Exp(value)
  %6476 = call float @dx.op.unary.f32(i32 21, float %6473)  ; Exp(value)
  %6477 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6478 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6479 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  %6480 = fmul fast float %6404, %6477
  %6481 = fmul fast float %6405, %6478
  %6482 = fmul fast float %6406, %6479
  %6483 = fsub fast float %5571, %5278
  %6484 = fsub fast float %5572, %5277
  %6485 = fsub fast float %5573, %5276
  %6486 = call float @dx.op.dot3.f32(i32 55, float %6483, float %6484, float %6485, float %6483, float %6484, float %6485)  ; Dot3(ax,ay,az,bx,by,bz)
  %6487 = call float @dx.op.unary.f32(i32 25, float %6486)  ; Rsqrt(value)
  %6488 = fmul fast float %6487, %6483
  %6489 = fmul fast float %6487, %6484
  %6490 = fmul fast float %6487, %6485
  %6491 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %5573, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5274, float %5273, float %6488, float %6489, float %6490)  ; Dot3(ax,ay,az,bx,by,bz)
  %6493 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6494 = fmul fast float %6493, %6493
  %6495 = fmul fast float %6494, %5306
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = fmul fast float %6496, %6493
  %6498 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %6488, float %6489, float %6490)  ; Dot3(ax,ay,az,bx,by,bz)
  %6499 = fmul fast float %6498, %6498
  %6500 = call float @dx.op.unary.f32(i32 6, float %6491)  ; FAbs(value)
  %6501 = fsub fast float 1.000000e+00, %5288
  %6502 = call float @dx.op.binary.f32(i32 35, float %6501, float 0x3F847AE140000000)  ; FMax(a,b)
  %6503 = fmul fast float %6502, %6502
  %6504 = fmul fast float %6503, %6503
  %6505 = fsub fast float 1.000000e+00, %6504
  %6506 = fmul fast float %5293, %5293
  %6507 = fmul fast float %6506, %6505
  %6508 = fadd fast float %6507, %6504
  %6509 = bitcast float %6508 to i32
  %6510 = ashr i32 %6509, 1
  %6511 = add nsw i32 %6510, 532487669
  %6512 = bitcast i32 %6511 to float
  %6513 = fadd fast float %6512, %5293
  %6514 = fmul fast float %6504, %6499
  %6515 = fsub fast float 1.000000e+00, %6499
  %6516 = fadd fast float %6515, %6514
  %6517 = fmul fast float %6500, %6500
  %6518 = fmul fast float %6517, %6505
  %6519 = fadd fast float %6518, %6504
  %6520 = bitcast float %6519 to i32
  %6521 = ashr i32 %6520, 1
  %6522 = add nsw i32 %6521, 532487669
  %6523 = bitcast i32 %6522 to float
  %6524 = fadd fast float %6523, %6500
  %6525 = fmul fast float %6516, %6516
  %6526 = fmul fast float %6525, %6513
  %6527 = fmul fast float %6526, %6524
  %6528 = fdiv fast float 0x3FF0A00000000000, %6527
  %6529 = fmul fast float %6528, %6504
  %6530 = call float @dx.op.unary.f32(i32 6, float %6492)  ; FAbs(value)
  %6531 = fsub fast float 1.000000e+00, %6530
  %6532 = bitcast float %6531 to i32
  %6533 = sitofp i32 %6532 to float
  %6534 = fmul fast float %6533, 5.000000e+00
  %6535 = fadd fast float %6534, 0xC1EFBF8940000000
  %6536 = fptosi float %6535 to i32
  %6537 = bitcast i32 %6536 to float
  %6538 = fsub fast float 1.000000e+00, %5279
  %6539 = fsub fast float 1.000000e+00, %5280
  %6540 = fsub fast float 1.000000e+00, %5291
  %6541 = fmul fast float %6537, %6538
  %6542 = fmul fast float %6537, %6539
  %6543 = fmul fast float %6537, %6540
  %6544 = fadd fast float %6541, %5279
  %6545 = fadd fast float %6542, %5280
  %6546 = fadd fast float %6543, %5291
  br i1 %5422, label %6547, label %6570

; <label>:6547                                    ; preds = %6464
  %6548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %6530, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6552 = fadd fast float %6549, -5.000000e-01
  %6553 = fadd fast float %6550, -5.000000e-01
  %6554 = fadd fast float %6551, -5.000000e-01
  %6555 = fmul fast float %5279, 4.000000e+00
  %6556 = fmul fast float %6555, %6538
  %6557 = fmul fast float %6556, %6552
  %6558 = fmul fast float %5280, 4.000000e+00
  %6559 = fmul fast float %6558, %6539
  %6560 = fmul fast float %6559, %6553
  %6561 = fmul fast float %5291, 4.000000e+00
  %6562 = fmul fast float %6561, %6540
  %6563 = fmul fast float %6562, %6554
  %6564 = fadd fast float %6557, %6544
  %6565 = fadd fast float %6560, %6545
  %6566 = fadd fast float %6563, %6546
  %6567 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6568 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6569 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  br label %6570

; <label>:6570                                    ; preds = %6547, %6464
  %6571 = phi float [ %6567, %6547 ], [ %6544, %6464 ]
  %6572 = phi float [ %6568, %6547 ], [ %6545, %6464 ]
  %6573 = phi float [ %6569, %6547 ], [ %6546, %6464 ]
  %6574 = fmul fast float %6491, 9.843750e-01
  %6575 = fadd fast float %6574, 7.812500e-03
  %6576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6575, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6577 = extractvalue %dx.types.ResRet.f32 %6576, 2
  %6578 = extractvalue %dx.types.ResRet.f32 %6576, 3
  %6579 = fmul fast float %6577, %5279
  %6580 = fmul fast float %6577, %5280
  %6581 = fmul fast float %6577, %5291
  %6582 = fadd fast float %6579, %6578
  %6583 = fadd fast float %6580, %6578
  %6584 = fadd fast float %6581, %6578
  br i1 %5422, label %6585, label %6608

; <label>:6585                                    ; preds = %6570
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  %6590 = fadd fast float %6587, -5.000000e-01
  %6591 = fadd fast float %6588, -5.000000e-01
  %6592 = fadd fast float %6589, -5.000000e-01
  %6593 = fmul fast float %5279, 4.000000e+00
  %6594 = fmul fast float %6593, %6538
  %6595 = fmul fast float %6594, %6590
  %6596 = fmul fast float %5280, 4.000000e+00
  %6597 = fmul fast float %6596, %6539
  %6598 = fmul fast float %6597, %6591
  %6599 = fmul fast float %5291, 4.000000e+00
  %6600 = fmul fast float %6599, %6540
  %6601 = fmul fast float %6600, %6592
  %6602 = fadd fast float %6595, %6582
  %6603 = fadd fast float %6598, %6583
  %6604 = fadd fast float %6601, %6584
  %6605 = call float @dx.op.unary.f32(i32 7, float %6602)  ; Saturate(value)
  %6606 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6607 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  br label %6608

; <label>:6608                                    ; preds = %6585, %6570
  %6609 = phi float [ %6605, %6585 ], [ %6582, %6570 ]
  %6610 = phi float [ %6606, %6585 ], [ %6583, %6570 ]
  %6611 = phi float [ %6607, %6585 ], [ %6584, %6570 ]
  %6612 = call float @dx.op.binary.f32(i32 35, float %6610, float %6611)  ; FMax(a,b)
  %6613 = call float @dx.op.binary.f32(i32 35, float %6609, float %6612)  ; FMax(a,b)
  %6614 = fsub fast float 1.000000e+00, %6613
  %6615 = fmul fast float %6571, %6529
  %6616 = fmul fast float %6572, %6529
  %6617 = fmul fast float %6573, %6529
  %6618 = fsub fast float 1.000000e+00, %6492
  %6619 = bitcast float %6618 to i32
  %6620 = sitofp i32 %6619 to float
  %6621 = fmul fast float %6620, 5.000000e+00
  %6622 = fadd fast float %6621, 0xC1EFBF8940000000
  %6623 = fptosi float %6622 to i32
  %6624 = bitcast i32 %6623 to float
  %6625 = fmul fast float %6624, %4086
  %6626 = fmul fast float %6614, %6625
  %6627 = fmul fast float %6626, %5525
  %6628 = fmul fast float %6626, %5526
  %6629 = fmul fast float %6626, %5527
  %6630 = fadd fast float %6627, %6615
  %6631 = fadd fast float %6628, %6616
  %6632 = fadd fast float %6629, %6617
  %6633 = fmul fast float %6497, %6480
  %6634 = fmul fast float %6633, %6614
  %6635 = fmul fast float %6497, %6481
  %6636 = fmul fast float %6635, %6614
  %6637 = fmul fast float %6497, %6482
  %6638 = fmul fast float %6637, %6614
  %6639 = fmul fast float %6633, %6630
  %6640 = fmul fast float %6635, %6631
  %6641 = fmul fast float %6637, %6632
  %6642 = fadd fast float %6634, %5507
  %6643 = fmul fast float %6642, %4082
  %6644 = fadd fast float %6636, %5509
  %6645 = fmul fast float %6644, %4082
  %6646 = fadd fast float %6638, %5511
  %6647 = fmul fast float %6646, %4082
  %6648 = fadd fast float %6639, %5559
  %6649 = fmul fast float %6648, %4082
  %6650 = fadd fast float %6640, %5562
  %6651 = fmul fast float %6650, %4082
  %6652 = fadd fast float %6641, %5565
  %6653 = fmul fast float %6652, %4082
  br label %6654

; <label>:6654                                    ; preds = %6608, %6398, %5449
  %6655 = phi float [ %5560, %5449 ], [ %5560, %6398 ], [ %6649, %6608 ]
  %6656 = phi float [ %5563, %5449 ], [ %5563, %6398 ], [ %6651, %6608 ]
  %6657 = phi float [ %5566, %5449 ], [ %5566, %6398 ], [ %6653, %6608 ]
  %6658 = phi float [ %5555, %5449 ], [ %5555, %6398 ], [ %6643, %6608 ]
  %6659 = phi float [ %5556, %5449 ], [ %5556, %6398 ], [ %6645, %6608 ]
  %6660 = phi float [ %5557, %5449 ], [ %5557, %6398 ], [ %6647, %6608 ]
  %6661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.i32 %6661, 0
  %6663 = icmp eq i32 %6662, 0
  br i1 %6663, label %7284, label %6664

; <label>:6664                                    ; preds = %6654
  %6665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.f32 %6665, 2
  %6667 = extractvalue %dx.types.CBufRet.f32 %6665, 3
  %6668 = fmul fast float %6666, %110
  %6669 = fmul fast float %6667, %111
  %6670 = fptoui float %6668 to i32
  %6671 = fptoui float %6669 to i32
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 0
  %6674 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6675 = extractvalue %dx.types.CBufRet.f32 %6672, 3
  %6676 = fadd fast float %101, -4.000000e+00
  %6677 = call float @dx.op.binary.f32(i32 35, float %6676, float 0.000000e+00)  ; FMax(a,b)
  %6678 = fadd fast float %6677, %6673
  %6679 = fmul fast float %6678, %6674
  %6680 = call float @dx.op.unary.f32(i32 23, float %6679)  ; Log(value)
  %6681 = fmul fast float %6680, %6675
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 2
  %6684 = fmul fast float %6681, %6683
  %6685 = call float @dx.op.unary.f32(i32 7, float %6684)  ; Saturate(value)
  %6686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.i32 %6686, 1
  %6688 = add i32 %6687, -1
  %6689 = uitofp i32 %6687 to float
  %6690 = fmul fast float %6689, %6685
  %6691 = fptoui float %6690 to i32
  %6692 = call i32 @dx.op.binary.i32(i32 40, i32 %6691, i32 %6688)  ; UMin(a,b)
  %6693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.i32 %6693, 2
  %6695 = extractvalue %dx.types.CBufRet.i32 %6693, 3
  %6696 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6671, i32 %6694, i32 %6670)  ; UMad(a,b,c)
  %6697 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6692, i32 %6695, i32 %6696)  ; UMad(a,b,c)
  %6698 = add nsw i32 %6662, -1
  %6699 = call i32 @dx.op.binary.i32(i32 37, i32 %6698, i32 0)  ; IMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6701 = fptoui float %6700 to i32
  %6702 = lshr i32 %6701, 5
  %6703 = call i32 @dx.op.binary.i32(i32 40, i32 %6702, i32 8191)  ; UMin(a,b)
  %6704 = shl i32 %6703, 2
  %6705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6704, i32 undef)  ; BufferLoad(srv,index,wot)
  %6706 = extractvalue %dx.types.ResRet.i32 %6705, 0
  %6707 = lshr i32 %6706, 16
  %6708 = and i32 %6706, 65535
  %6709 = lshr i32 %6706, 21
  %6710 = lshr i32 %6708, 5
  %6711 = call i32 @dx.op.binary.i32(i32 40, i32 %6710, i32 %6699)  ; UMin(a,b)
  %6712 = icmp ugt i32 %6709, %6711
  br i1 %6712, label %7284, label %6713

; <label>:6713                                    ; preds = %6664
  br label %6714

; <label>:6714                                    ; preds = %7274, %6713
  %6715 = phi i32 [ %7281, %7274 ], [ %6709, %6713 ]
  %6716 = phi float [ %7275, %7274 ], [ %6655, %6713 ]
  %6717 = phi float [ %7276, %7274 ], [ %6656, %6713 ]
  %6718 = phi float [ %7277, %7274 ], [ %6657, %6713 ]
  %6719 = phi float [ %7278, %7274 ], [ %6658, %6713 ]
  %6720 = phi float [ %7279, %7274 ], [ %6659, %6713 ]
  %6721 = phi float [ %7280, %7274 ], [ %6660, %6713 ]
  %6722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.i32 %6722, 0
  %6724 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6697, i32 %6723, i32 %6715)  ; UMad(a,b,c)
  %6725 = shl i32 %6724, 2
  %6726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6725, i32 undef)  ; BufferLoad(srv,index,wot)
  %6727 = extractvalue %dx.types.ResRet.i32 %6726, 0
  %6728 = shl i32 %6715, 5
  %6729 = sub nsw i32 %6707, %6728
  %6730 = call i32 @dx.op.binary.i32(i32 37, i32 %6729, i32 0)  ; IMax(a,b)
  %6731 = call i32 @dx.op.binary.i32(i32 38, i32 %6730, i32 31)  ; IMin(a,b)
  %6732 = sub nsw i32 1, %6707
  %6733 = add nsw i32 %6732, %6708
  %6734 = call i32 @dx.op.binary.i32(i32 37, i32 %6733, i32 0)  ; IMax(a,b)
  %6735 = call i32 @dx.op.binary.i32(i32 38, i32 %6734, i32 32)  ; IMin(a,b)
  %6736 = and i32 %6735, 31
  %6737 = shl i32 -1, %6736
  %6738 = xor i32 %6737, -1
  %6739 = and i32 %6731, 31
  %6740 = shl i32 %6738, %6739
  %6741 = icmp eq i32 %6735, 32
  %6742 = select i1 %6741, i32 -1, i32 %6740
  %6743 = and i32 %6742, %6727
  %6744 = icmp eq i32 %6743, 0
  br i1 %6744, label %7274, label %6745

; <label>:6745                                    ; preds = %6714
  br label %6746

; <label>:6746                                    ; preds = %6880, %6745
  %6747 = phi i32 [ %6758, %6880 ], [ %6743, %6745 ]
  %6748 = phi float [ %6881, %6880 ], [ %6716, %6745 ]
  %6749 = phi float [ %6882, %6880 ], [ %6717, %6745 ]
  %6750 = phi float [ %6883, %6880 ], [ %6718, %6745 ]
  %6751 = phi float [ %6884, %6880 ], [ %6719, %6745 ]
  %6752 = phi float [ %6885, %6880 ], [ %6720, %6745 ]
  %6753 = phi float [ %6886, %6880 ], [ %6721, %6745 ]
  %6754 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6747)  ; FirstbitLo(value)
  %6755 = add i32 %6754, %6728
  %6756 = and i32 %6754, 31
  %6757 = shl i32 1, %6756
  %6758 = xor i32 %6757, %6747
  %6759 = mul i32 %6755, 112
  %6760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6759, i32 undef)  ; BufferLoad(srv,index,wot)
  %6761 = extractvalue %dx.types.ResRet.f32 %6760, 0
  %6762 = extractvalue %dx.types.ResRet.f32 %6760, 1
  %6763 = extractvalue %dx.types.ResRet.f32 %6760, 2
  %6764 = or i32 %6759, 12
  %6765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6764, i32 undef)  ; BufferLoad(srv,index,wot)
  %6766 = extractvalue %dx.types.ResRet.f32 %6765, 0
  %6767 = add i32 %6759, 16
  %6768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6767, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.ResRet.f32 %6768, 2
  %6772 = add i32 %6759, 28
  %6773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6772, i32 undef)  ; BufferLoad(srv,index,wot)
  %6774 = extractvalue %dx.types.ResRet.i32 %6773, 0
  %6775 = add i32 %6759, 44
  %6776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6775, i32 undef)  ; BufferLoad(srv,index,wot)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  %6778 = add i32 %6759, 48
  %6779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6778, i32 undef)  ; BufferLoad(srv,index,wot)
  %6780 = extractvalue %dx.types.ResRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.ResRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.ResRet.f32 %6779, 2
  %6783 = extractvalue %dx.types.ResRet.f32 %6779, 3
  %6784 = add i32 %6759, 64
  %6785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6784, i32 undef)  ; BufferLoad(srv,index,wot)
  %6786 = extractvalue %dx.types.ResRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.ResRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.ResRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.ResRet.f32 %6785, 3
  %6790 = add i32 %6759, 80
  %6791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6790, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 1
  %6793 = extractvalue %dx.types.ResRet.f32 %6791, 2
  %6794 = add i32 %6759, 92
  %6795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6794, i32 undef)  ; BufferLoad(srv,index,wot)
  %6796 = extractvalue %dx.types.ResRet.i32 %6795, 0
  %6797 = call float @dx.op.dot3.f32(i32 55, float %6761, float %6762, float %6763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6798 = select i1 %269, float %6792, float %6761
  %6799 = select i1 %269, float %6797, float %6762
  %6800 = select i1 %269, float %6793, float %6763
  %6801 = and i32 %6796, 65535
  %6802 = uitofp i32 %6801 to float
  %6803 = lshr i32 %6796, 16
  %6804 = uitofp i32 %6803 to float
  %6805 = and i32 %6774, 65535
  %6806 = and i32 %6774, 50331648
  %6807 = icmp eq i32 %6806, 33554432
  %6808 = fsub fast float %6780, %197
  %6809 = fsub fast float %6781, %198
  %6810 = fsub fast float %6782, %199
  %6811 = call float @dx.op.dot3.f32(i32 55, float %6808, float %6809, float %6810, float %6808, float %6809, float %6810)  ; Dot3(ax,ay,az,bx,by,bz)
  %6812 = call float @dx.op.unary.f32(i32 24, float %6811)  ; Sqrt(value)
  %6813 = fdiv fast float 1.000000e+00, %6812
  %6814 = fmul fast float %6813, %6808
  %6815 = fmul fast float %6813, %6809
  %6816 = fmul fast float %6813, %6810
  %6817 = fadd fast float %6812, %6766
  %6818 = fdiv fast float 1.000000e+00, %6817
  %6819 = fmul float %6777, %6818
  %6820 = fmul float %6819, %6819
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  br i1 %6807, label %6822, label %6843

; <label>:6822                                    ; preds = %6746
  %6823 = fmul fast float %6788, %6769
  %6824 = fmul fast float %6788, %6770
  %6825 = fmul fast float %6788, %6771
  %6826 = fadd fast float %6808, %6823
  %6827 = fadd fast float %6809, %6824
  %6828 = fadd fast float %6810, %6825
  %6829 = call float @dx.op.dot3.f32(i32 55, float %6826, float %6827, float %6828, float %6826, float %6827, float %6828)  ; Dot3(ax,ay,az,bx,by,bz)
  %6830 = call float @dx.op.unary.f32(i32 25, float %6829)  ; Rsqrt(value)
  %6831 = fmul fast float %6830, %6826
  %6832 = fmul fast float %6830, %6827
  %6833 = fmul fast float %6830, %6828
  %6834 = fsub fast float %197, %6780
  %6835 = fsub fast float %198, %6781
  %6836 = fsub fast float %199, %6782
  %6837 = fsub fast float -0.000000e+00, %6834
  %6838 = fsub fast float -0.000000e+00, %6835
  %6839 = fsub fast float -0.000000e+00, %6836
  %6840 = call float @dx.op.dot3.f32(i32 55, float %6837, float %6838, float %6839, float %6769, float %6770, float %6771)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = fcmp fast ogt float %6840, 0.000000e+00
  %6842 = uitofp i1 %6841 to float
  br label %6843

; <label>:6843                                    ; preds = %6822, %6746
  %6844 = phi float [ %6842, %6822 ], [ 1.000000e+00, %6746 ]
  %6845 = phi float [ %6831, %6822 ], [ %6814, %6746 ]
  %6846 = phi float [ %6832, %6822 ], [ %6815, %6746 ]
  %6847 = phi float [ %6833, %6822 ], [ %6816, %6746 ]
  %6848 = call float @dx.op.dot3.f32(i32 55, float %6769, float %6770, float %6771, float %6845, float %6846, float %6847)  ; Dot3(ax,ay,az,bx,by,bz)
  %6849 = fmul fast float %6848, %6848
  %6850 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6851 = fsub fast float 1.000000e+00, %6850
  %6852 = fmul fast float %6851, 5.000000e-01
  %6853 = fcmp fast ogt float %6848, 0.000000e+00
  %6854 = fsub fast float 1.000000e+00, %6852
  %6855 = select i1 %6853, float %6852, float %6854
  %6856 = fmul fast float %6855, %6804
  %6857 = fadd fast float %6856, %6802
  %6858 = fmul fast float %6857, 0x3EF0001000000000
  %6859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6858, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6860 = extractvalue %dx.types.ResRet.f32 %6859, 0
  %6861 = fmul fast float %6848, %6786
  %6862 = fadd fast float %6861, %6787
  %6863 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6864 = select i1 %6807, float 1.000000e+00, float %6863
  %6865 = select i1 %6807, float %6863, float 1.000000e+00
  %6866 = fmul fast float %6812, %6783
  %6867 = fsub fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6867, %6789
  %6869 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6870 = fmul fast float %6869, %6865
  %6871 = fmul fast float %6870, 2.000000e+00
  %6872 = fsub fast float 3.000000e+00, %6871
  %6873 = fmul fast float %6860, %6844
  %6874 = fmul fast float %6870, %6870
  %6875 = fmul fast float %6874, %6873
  %6876 = fmul fast float %6875, %6872
  %6877 = call float @dx.op.binary.f32(i32 36, float %6876, float %6876)  ; FMin(a,b)
  %6878 = call float @dx.op.binary.f32(i32 36, float %6876, float %6877)  ; FMin(a,b)
  %6879 = fcmp fast ogt float %6878, 0.000000e+00
  br i1 %6879, label %6888, label %6880, !dx.controlflow.hints !124

; <label>:6880                                    ; preds = %7230, %6988, %6843
  %6881 = phi float [ %6748, %6988 ], [ %6748, %6843 ], [ %7270, %7230 ]
  %6882 = phi float [ %6749, %6988 ], [ %6749, %6843 ], [ %7271, %7230 ]
  %6883 = phi float [ %6750, %6988 ], [ %6750, %6843 ], [ %7272, %7230 ]
  %6884 = phi float [ %6751, %6988 ], [ %6751, %6843 ], [ %7264, %7230 ]
  %6885 = phi float [ %6752, %6988 ], [ %6752, %6843 ], [ %7265, %7230 ]
  %6886 = phi float [ %6753, %6988 ], [ %6753, %6843 ], [ %7266, %7230 ]
  %6887 = icmp eq i32 %6747, %6757
  br i1 %6887, label %7273, label %6746

; <label>:6888                                    ; preds = %6843
  %6889 = icmp eq i32 %6805, 255
  br i1 %6889, label %6988, label %6890, !dx.controlflow.hints !125

; <label>:6890                                    ; preds = %6888
  %6891 = mul nuw nsw i32 %6805, 176
  %6892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6891, i32 undef)  ; BufferLoad(srv,index,wot)
  %6893 = extractvalue %dx.types.ResRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.ResRet.f32 %6892, 1
  %6895 = extractvalue %dx.types.ResRet.f32 %6892, 2
  %6896 = extractvalue %dx.types.ResRet.f32 %6892, 3
  %6897 = add nuw nsw i32 %6891, 16
  %6898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6897, i32 undef)  ; BufferLoad(srv,index,wot)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  %6900 = extractvalue %dx.types.ResRet.f32 %6898, 1
  %6901 = add nuw nsw i32 %6891, 32
  %6902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6901, i32 undef)  ; BufferLoad(srv,index,wot)
  %6903 = extractvalue %dx.types.ResRet.f32 %6902, 0
  %6904 = extractvalue %dx.types.ResRet.f32 %6902, 1
  %6905 = extractvalue %dx.types.ResRet.f32 %6902, 2
  %6906 = add nuw nsw i32 %6891, 48
  %6907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6906, i32 undef)  ; BufferLoad(srv,index,wot)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.ResRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.ResRet.f32 %6907, 2
  %6911 = extractvalue %dx.types.ResRet.f32 %6907, 3
  %6912 = add nuw nsw i32 %6891, 64
  %6913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6912, i32 undef)  ; BufferLoad(srv,index,wot)
  %6914 = extractvalue %dx.types.ResRet.f32 %6913, 0
  %6915 = extractvalue %dx.types.ResRet.f32 %6913, 1
  %6916 = extractvalue %dx.types.ResRet.f32 %6913, 2
  %6917 = extractvalue %dx.types.ResRet.f32 %6913, 3
  %6918 = add nuw nsw i32 %6891, 80
  %6919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6918, i32 undef)  ; BufferLoad(srv,index,wot)
  %6920 = extractvalue %dx.types.ResRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.ResRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.ResRet.f32 %6919, 2
  %6923 = extractvalue %dx.types.ResRet.f32 %6919, 3
  %6924 = add nuw nsw i32 %6891, 96
  %6925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.ResRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.ResRet.f32 %6925, 2
  %6929 = extractvalue %dx.types.ResRet.f32 %6925, 3
  %6930 = bitcast float %6900 to i32
  %6931 = fmul fast float %6905, %117
  %6932 = fmul fast float %6905, %118
  %6933 = fmul fast float %6905, %119
  %6934 = fadd fast float %6931, %197
  %6935 = fadd fast float %6932, %198
  %6936 = fadd fast float %6933, %199
  %6937 = fmul fast float %6934, %6908
  %6938 = call float @dx.op.tertiary.f32(i32 46, float %6935, float %6914, float %6937)  ; FMad(a,b,c)
  %6939 = call float @dx.op.tertiary.f32(i32 46, float %6936, float %6920, float %6938)  ; FMad(a,b,c)
  %6940 = fadd fast float %6939, %6926
  %6941 = fmul fast float %6934, %6909
  %6942 = call float @dx.op.tertiary.f32(i32 46, float %6935, float %6915, float %6941)  ; FMad(a,b,c)
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6936, float %6921, float %6942)  ; FMad(a,b,c)
  %6944 = fadd fast float %6943, %6927
  %6945 = fmul fast float %6934, %6910
  %6946 = call float @dx.op.tertiary.f32(i32 46, float %6935, float %6916, float %6945)  ; FMad(a,b,c)
  %6947 = call float @dx.op.tertiary.f32(i32 46, float %6936, float %6922, float %6946)  ; FMad(a,b,c)
  %6948 = fadd fast float %6947, %6928
  %6949 = fmul fast float %6934, %6911
  %6950 = call float @dx.op.tertiary.f32(i32 46, float %6935, float %6917, float %6949)  ; FMad(a,b,c)
  %6951 = call float @dx.op.tertiary.f32(i32 46, float %6936, float %6923, float %6950)  ; FMad(a,b,c)
  %6952 = fadd fast float %6951, %6929
  %6953 = fdiv fast float %6940, %6952
  %6954 = fdiv fast float %6944, %6952
  %6955 = fdiv fast float %6948, %6952
  %6956 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6955)  ; FMax(a,b)
  %6957 = fmul fast float %280, 0x401921FB60000000
  %6958 = call float @dx.op.unary.f32(i32 13, float %6957)  ; Sin(value)
  %6959 = call float @dx.op.unary.f32(i32 12, float %6957)  ; Cos(value)
  %6960 = fsub fast float -0.000000e+00, %6958
  %6961 = fmul fast float %6895, 5.000000e-01
  %6962 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6963 = call float @dx.op.unary.f32(i32 22, float %6962)  ; Frc(value)
  %6964 = fmul fast float %6963, 0x404A7DD040000000
  %6965 = call float @dx.op.unary.f32(i32 22, float %6964)  ; Frc(value)
  %6966 = fmul fast float %6965, %6904
  %6967 = fadd fast float %6966, %6961
  %6968 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6960, float 0.000000e+00)  ; FMad(a,b,c)
  %6969 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6959, float 0.000000e+00)  ; FMad(a,b,c)
  %6970 = fadd fast float %6968, %6953
  %6971 = fadd fast float %6969, %6954
  %6972 = fmul fast float %6970, %6899
  %6973 = fmul fast float %6971, %6899
  %6974 = call float @dx.op.binary.f32(i32 35, float %6972, float %6895)  ; FMax(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6973, float %6895)  ; FMax(a,b)
  %6976 = call float @dx.op.binary.f32(i32 36, float %6974, float %6896)  ; FMin(a,b)
  %6977 = call float @dx.op.binary.f32(i32 36, float %6975, float %6896)  ; FMin(a,b)
  %6978 = fadd fast float %6976, %6893
  %6979 = fadd fast float %6977, %6894
  %6980 = uitofp i32 %6930 to float
  %6981 = fadd fast float %6956, %6903
  %6982 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %6978, float %6979, float %6980, float undef, i32 0, i32 0, i32 undef, float %6981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = fadd fast float %6983, -1.000000e+00
  %6985 = fmul fast float %6984, %6864
  %6986 = fadd fast float %6985, 1.000000e+00
  %6987 = fmul fast float %6986, %6876
  br label %6988

; <label>:6988                                    ; preds = %6890, %6888
  %6989 = phi float [ %6987, %6890 ], [ %6876, %6888 ]
  %6990 = call float @dx.op.binary.f32(i32 36, float %6989, float %6989)  ; FMin(a,b)
  %6991 = call float @dx.op.binary.f32(i32 36, float %6989, float %6990)  ; FMin(a,b)
  %6992 = fcmp fast ogt float %6991, 0.000000e+00
  br i1 %6992, label %6993, label %6880, !dx.controlflow.hints !126

; <label>:6993                                    ; preds = %6988
  %6994 = fmul fast float %6989, %6798
  %6995 = fmul fast float %6989, %6799
  %6996 = fmul fast float %6989, %6800
  %6997 = fsub fast float %6782, %4486
  %6998 = fcmp fast ogt float %6997, 0.000000e+00
  %6999 = fsub fast float %199, %4486
  %7000 = fcmp fast ogt float %6999, 0.000000e+00
  %7001 = xor i1 %7000, %6998
  %7002 = fsub fast float %4486, %6782
  %7003 = fmul fast float %7002, 2.000000e+00
  %7004 = fadd fast float %7003, %6782
  %7005 = select i1 %7001, float %6782, float %7004
  %7006 = fsub fast float %7005, %199
  %7007 = call float @dx.op.dot3.f32(i32 55, float %6808, float %6809, float %7006, float %6808, float %6809, float %7006)  ; Dot3(ax,ay,az,bx,by,bz)
  %7008 = call float @dx.op.unary.f32(i32 25, float %7007)  ; Rsqrt(value)
  %7009 = fmul fast float %7008, %6808
  %7010 = fmul fast float %7008, %6809
  %7011 = fmul fast float %7008, %7006
  %7012 = fsub fast float %4486, %199
  %7013 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7012)  ; Dot3(ax,ay,az,bx,by,bz)
  %7014 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7009, float %7010, float %7011)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = fdiv fast float 1.000000e+00, %7014
  %7016 = fmul fast float %7015, %7013
  %7017 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6999, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fcmp fast ogt float %7017, 0.000000e+00
  %7019 = fcmp fast olt float %7017, 0.000000e+00
  %7020 = zext i1 %7018 to i32
  %7021 = zext i1 %7019 to i32
  %7022 = sub nsw i32 %7020, %7021
  %7023 = sitofp i32 %7022 to float
  %7024 = fsub fast float %7005, %4486
  %7025 = call float @dx.op.dot3.f32(i32 55, float %6808, float %6809, float %7024, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7026 = fcmp fast ogt float %7025, 0.000000e+00
  %7027 = fcmp fast olt float %7025, 0.000000e+00
  %7028 = zext i1 %7026 to i32
  %7029 = zext i1 %7027 to i32
  %7030 = sub nsw i32 %7028, %7029
  %7031 = sitofp i32 %7030 to float
  %7032 = fcmp fast une float %7023, %7031
  br i1 %7032, label %7033, label %7043

; <label>:7033                                    ; preds = %6993
  %7034 = fmul fast float %7016, %7011
  %7035 = fmul fast float %7016, %7010
  %7036 = fmul fast float %7016, %7009
  %7037 = fmul fast float %7036, %7036
  %7038 = fmul fast float %7035, %7035
  %7039 = fadd fast float %7037, %7038
  %7040 = fmul fast float %7034, %7034
  %7041 = fadd fast float %7039, %7040
  %7042 = call float @dx.op.unary.f32(i32 24, float %7041)  ; Sqrt(value)
  br label %7055

; <label>:7043                                    ; preds = %6993
  %7044 = icmp slt i32 %7022, 0
  br i1 %7044, label %7045, label %7055

; <label>:7045                                    ; preds = %7043
  %7046 = fsub fast float %197, %6780
  %7047 = fsub fast float %198, %6781
  %7048 = fsub fast float %199, %7005
  %7049 = fmul fast float %7046, %7046
  %7050 = fmul fast float %7047, %7047
  %7051 = fadd fast float %7049, %7050
  %7052 = fmul fast float %7048, %7048
  %7053 = fadd fast float %7051, %7052
  %7054 = call float @dx.op.unary.f32(i32 24, float %7053)  ; Sqrt(value)
  br label %7055

; <label>:7055                                    ; preds = %7045, %7043, %7033
  %7056 = phi float [ %7042, %7033 ], [ %7054, %7045 ], [ 0.000000e+00, %7043 ]
  %7057 = and i1 %7000, %6998
  %7058 = fsub fast float -0.000000e+00, %7056
  %7059 = select i1 %7057, float -0.000000e+00, float %7058
  %7060 = fmul fast float %4487, 0x3FF7154760000000
  %7061 = fmul fast float %7060, %7059
  %7062 = fmul fast float %4488, 0x3FF7154760000000
  %7063 = fmul fast float %7062, %7059
  %7064 = fmul fast float %4489, 0x3FF7154760000000
  %7065 = fmul fast float %7064, %7059
  %7066 = call float @dx.op.unary.f32(i32 21, float %7061)  ; Exp(value)
  %7067 = call float @dx.op.unary.f32(i32 21, float %7063)  ; Exp(value)
  %7068 = call float @dx.op.unary.f32(i32 21, float %7065)  ; Exp(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7071 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7072 = fmul fast float %6994, %7069
  %7073 = fmul fast float %6995, %7070
  %7074 = fmul fast float %6996, %7071
  %7075 = fsub fast float %6814, %5278
  %7076 = fsub fast float %6815, %5277
  %7077 = fsub fast float %6816, %5276
  %7078 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.unary.f32(i32 25, float %7078)  ; Rsqrt(value)
  %7080 = fmul fast float %7079, %7075
  %7081 = fmul fast float %7079, %7076
  %7082 = fmul fast float %7079, %7077
  %7083 = call float @dx.op.dot3.f32(i32 55, float %6814, float %6815, float %6816, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %7084 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5274, float %5273, float %7080, float %7081, float %7082)  ; Dot3(ax,ay,az,bx,by,bz)
  %7085 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7086 = fmul fast float %7085, %6821
  %7087 = fmul fast float %7085, %7085
  %7088 = fmul fast float %7087, %5306
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = fmul fast float %7086, %7089
  %7091 = bitcast float %6811 to i32
  %7092 = ashr i32 %7091, 1
  %7093 = sub nsw i32 1597463007, %7092
  %7094 = bitcast i32 %7093 to float
  %7095 = fmul fast float %7094, %6808
  %7096 = fmul fast float %7094, %6809
  %7097 = fmul fast float %7094, %6810
  %7098 = fsub fast float %7095, %5278
  %7099 = fsub fast float %7096, %5277
  %7100 = fsub fast float %7097, %5276
  %7101 = call float @dx.op.dot3.f32(i32 55, float %7098, float %7099, float %7100, float %7098, float %7099, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = call float @dx.op.unary.f32(i32 25, float %7101)  ; Rsqrt(value)
  %7103 = fmul fast float %7098, %7102
  %7104 = fmul fast float %7099, %7102
  %7105 = fmul fast float %7100, %7102
  %7106 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %7103, float %7104, float %7105)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = fmul fast float %7106, %7106
  %7108 = call float @dx.op.unary.f32(i32 6, float %7083)  ; FAbs(value)
  %7109 = fsub fast float 1.000000e+00, %5288
  %7110 = call float @dx.op.binary.f32(i32 35, float %7109, float 0x3F847AE140000000)  ; FMax(a,b)
  %7111 = fmul fast float %7110, %7110
  %7112 = fmul fast float %7111, %7111
  %7113 = fsub fast float 1.000000e+00, %7112
  %7114 = fmul fast float %5293, %5293
  %7115 = fmul fast float %7114, %7113
  %7116 = fadd fast float %7115, %7112
  %7117 = bitcast float %7116 to i32
  %7118 = ashr i32 %7117, 1
  %7119 = add nsw i32 %7118, 532487669
  %7120 = bitcast i32 %7119 to float
  %7121 = fadd fast float %7120, %5293
  %7122 = fmul fast float %7112, %7107
  %7123 = fsub fast float 1.000000e+00, %7107
  %7124 = fadd fast float %7123, %7122
  %7125 = fmul fast float %7108, %7108
  %7126 = fmul fast float %7125, %7113
  %7127 = fadd fast float %7126, %7112
  %7128 = bitcast float %7127 to i32
  %7129 = ashr i32 %7128, 1
  %7130 = add nsw i32 %7129, 532487669
  %7131 = bitcast i32 %7130 to float
  %7132 = fadd fast float %7131, %7108
  %7133 = fmul fast float %7124, %7124
  %7134 = fmul fast float %7133, %7121
  %7135 = fmul fast float %7134, %7132
  %7136 = fdiv fast float 1.000000e+00, %7135
  %7137 = bitcast float %7112 to i32
  %7138 = sitofp i32 %7137 to float
  %7139 = fmul fast float %7138, 0x3FE7F73180000000
  %7140 = fadd fast float %7139, 0x41AFE27C40000000
  %7141 = fptosi float %7140 to i32
  %7142 = bitcast i32 %7141 to float
  %7143 = fmul fast float %6777, 0x3FD80E9D60000000
  %7144 = fmul fast float %7143, %7094
  %7145 = fadd fast float %7142, %7144
  %7146 = bitcast float %7145 to i32
  %7147 = sub nsw i32 2129859010, %7146
  %7148 = bitcast i32 %7147 to float
  %7149 = fmul fast float %7112, %7136
  %7150 = fmul fast float %7149, %7142
  %7151 = fmul fast float %7150, %7148
  %7152 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7153 = fsub fast float 1.000000e+00, %7152
  %7154 = bitcast float %7153 to i32
  %7155 = sitofp i32 %7154 to float
  %7156 = fmul fast float %7155, 5.000000e+00
  %7157 = fadd fast float %7156, 0xC1EFBF8940000000
  %7158 = fptosi float %7157 to i32
  %7159 = bitcast i32 %7158 to float
  %7160 = fsub fast float 1.000000e+00, %5279
  %7161 = fsub fast float 1.000000e+00, %5280
  %7162 = fsub fast float 1.000000e+00, %5291
  %7163 = fmul fast float %7159, %7160
  %7164 = fmul fast float %7159, %7161
  %7165 = fmul fast float %7159, %7162
  %7166 = fadd fast float %7163, %5279
  %7167 = fadd fast float %7164, %5280
  %7168 = fadd fast float %7165, %5291
  br i1 %5422, label %7169, label %7192

; <label>:7169                                    ; preds = %7055
  %7170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %7152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  %7174 = fadd fast float %7171, -5.000000e-01
  %7175 = fadd fast float %7172, -5.000000e-01
  %7176 = fadd fast float %7173, -5.000000e-01
  %7177 = fmul fast float %5279, 4.000000e+00
  %7178 = fmul fast float %7177, %7160
  %7179 = fmul fast float %7178, %7174
  %7180 = fmul fast float %5280, 4.000000e+00
  %7181 = fmul fast float %7180, %7161
  %7182 = fmul fast float %7181, %7175
  %7183 = fmul fast float %5291, 4.000000e+00
  %7184 = fmul fast float %7183, %7162
  %7185 = fmul fast float %7184, %7176
  %7186 = fadd fast float %7179, %7166
  %7187 = fadd fast float %7182, %7167
  %7188 = fadd fast float %7185, %7168
  %7189 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7190 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  %7191 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  br label %7192

; <label>:7192                                    ; preds = %7169, %7055
  %7193 = phi float [ %7189, %7169 ], [ %7166, %7055 ]
  %7194 = phi float [ %7190, %7169 ], [ %7167, %7055 ]
  %7195 = phi float [ %7191, %7169 ], [ %7168, %7055 ]
  %7196 = fmul fast float %7083, 9.843750e-01
  %7197 = fadd fast float %7196, 7.812500e-03
  %7198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7197, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7199 = extractvalue %dx.types.ResRet.f32 %7198, 2
  %7200 = extractvalue %dx.types.ResRet.f32 %7198, 3
  %7201 = fmul fast float %7199, %5279
  %7202 = fmul fast float %7199, %5280
  %7203 = fmul fast float %7199, %5291
  %7204 = fadd fast float %7201, %7200
  %7205 = fadd fast float %7202, %7200
  %7206 = fadd fast float %7203, %7200
  br i1 %5422, label %7207, label %7230

; <label>:7207                                    ; preds = %7192
  %7208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4085, float %7083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7209 = extractvalue %dx.types.ResRet.f32 %7208, 0
  %7210 = extractvalue %dx.types.ResRet.f32 %7208, 1
  %7211 = extractvalue %dx.types.ResRet.f32 %7208, 2
  %7212 = fadd fast float %7209, -5.000000e-01
  %7213 = fadd fast float %7210, -5.000000e-01
  %7214 = fadd fast float %7211, -5.000000e-01
  %7215 = fmul fast float %5279, 4.000000e+00
  %7216 = fmul fast float %7215, %7160
  %7217 = fmul fast float %7216, %7212
  %7218 = fmul fast float %5280, 4.000000e+00
  %7219 = fmul fast float %7218, %7161
  %7220 = fmul fast float %7219, %7213
  %7221 = fmul fast float %5291, 4.000000e+00
  %7222 = fmul fast float %7221, %7162
  %7223 = fmul fast float %7222, %7214
  %7224 = fadd fast float %7217, %7204
  %7225 = fadd fast float %7220, %7205
  %7226 = fadd fast float %7223, %7206
  %7227 = call float @dx.op.unary.f32(i32 7, float %7224)  ; Saturate(value)
  %7228 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  %7229 = call float @dx.op.unary.f32(i32 7, float %7226)  ; Saturate(value)
  br label %7230

; <label>:7230                                    ; preds = %7207, %7192
  %7231 = phi float [ %7227, %7207 ], [ %7204, %7192 ]
  %7232 = phi float [ %7228, %7207 ], [ %7205, %7192 ]
  %7233 = phi float [ %7229, %7207 ], [ %7206, %7192 ]
  %7234 = call float @dx.op.binary.f32(i32 35, float %7232, float %7233)  ; FMax(a,b)
  %7235 = call float @dx.op.binary.f32(i32 35, float %7231, float %7234)  ; FMax(a,b)
  %7236 = fsub fast float 1.000000e+00, %7235
  %7237 = fmul fast float %7193, %7151
  %7238 = fmul fast float %7194, %7151
  %7239 = fmul fast float %7195, %7151
  %7240 = fsub fast float 1.000000e+00, %7084
  %7241 = bitcast float %7240 to i32
  %7242 = sitofp i32 %7241 to float
  %7243 = fmul fast float %7242, 5.000000e+00
  %7244 = fadd fast float %7243, 0xC1EFBF8940000000
  %7245 = fptosi float %7244 to i32
  %7246 = bitcast i32 %7245 to float
  %7247 = fmul fast float %7246, %4086
  %7248 = fmul fast float %7236, %7247
  %7249 = fmul fast float %7248, %5525
  %7250 = fmul fast float %7248, %5526
  %7251 = fmul fast float %7248, %5527
  %7252 = fadd fast float %7249, %7237
  %7253 = fadd fast float %7250, %7238
  %7254 = fadd fast float %7251, %7239
  %7255 = fmul fast float %7072, %4082
  %7256 = fmul fast float %7255, %7090
  %7257 = fmul fast float %7256, %7236
  %7258 = fmul fast float %7073, %4082
  %7259 = fmul fast float %7258, %7090
  %7260 = fmul fast float %7259, %7236
  %7261 = fmul fast float %7074, %4082
  %7262 = fmul fast float %7261, %7090
  %7263 = fmul fast float %7262, %7236
  %7264 = fadd fast float %7257, %6751
  %7265 = fadd fast float %7260, %6752
  %7266 = fadd fast float %7263, %6753
  %7267 = fmul fast float %7256, %7252
  %7268 = fmul fast float %7259, %7253
  %7269 = fmul fast float %7262, %7254
  %7270 = fadd fast float %7267, %6748
  %7271 = fadd fast float %7268, %6749
  %7272 = fadd fast float %7269, %6750
  br label %6880

; <label>:7273                                    ; preds = %6880
  br label %7274

; <label>:7274                                    ; preds = %7273, %6714
  %7275 = phi float [ %6716, %6714 ], [ %6881, %7273 ]
  %7276 = phi float [ %6717, %6714 ], [ %6882, %7273 ]
  %7277 = phi float [ %6718, %6714 ], [ %6883, %7273 ]
  %7278 = phi float [ %6719, %6714 ], [ %6884, %7273 ]
  %7279 = phi float [ %6720, %6714 ], [ %6885, %7273 ]
  %7280 = phi float [ %6721, %6714 ], [ %6886, %7273 ]
  %7281 = add i32 %6715, 1
  %7282 = icmp ugt i32 %7281, %6711
  br i1 %7282, label %7283, label %6714

; <label>:7283                                    ; preds = %7274
  br label %7284

; <label>:7284                                    ; preds = %7283, %6664, %6654
  %7285 = phi float [ %6655, %6654 ], [ %6655, %6664 ], [ %7275, %7283 ]
  %7286 = phi float [ %6656, %6654 ], [ %6656, %6664 ], [ %7276, %7283 ]
  %7287 = phi float [ %6657, %6654 ], [ %6657, %6664 ], [ %7277, %7283 ]
  %7288 = phi float [ %6658, %6654 ], [ %6658, %6664 ], [ %7278, %7283 ]
  %7289 = phi float [ %6659, %6654 ], [ %6659, %6664 ], [ %7279, %7283 ]
  %7290 = phi float [ %6660, %6654 ], [ %6660, %6664 ], [ %7280, %7283 ]
  %7291 = fmul fast float %4082, %4082
  %7292 = fsub fast float 1.000000e+00, %7291
  %7293 = call float @dx.op.dot3.f32(i32 55, float %7292, float %7292, float %7292, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7294 = fsub fast float 1.000000e+00, %7293
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = fmul fast float %7296, %5541
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7300 = fsub fast float 1.000000e+00, %4089
  %7301 = call float @dx.op.unary.f32(i32 7, float %7300)  ; Saturate(value)
  %7302 = fadd fast float %7290, %4088
  %7303 = fmul fast float %7302, %4089
  %7304 = fmul fast float %7301, %7299
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7307 = fmul fast float %7288, %5285
  %7308 = fmul fast float %7289, %5286
  %7309 = fmul fast float %7290, %5287
  %7310 = fcmp fast ogt float %101, %232
  %7311 = and i1 %7310, %4492
  %7312 = or i1 %4498, %7311
  %7313 = icmp eq i32 %4491, 2
  %7314 = fcmp fast ole float %101, %232
  %7315 = and i1 %7314, %7313
  %7316 = or i1 %7315, %7312
  br i1 %7311, label %7317, label %7574

; <label>:7317                                    ; preds = %7284
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 3
  %7321 = fmul fast float %7319, %110
  %7322 = fmul fast float %7320, %111
  %7323 = call float @dx.op.unary.f32(i32 7, float %7321)  ; Saturate(value)
  %7324 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7325 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7323, float %7324, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = extractvalue %dx.types.ResRet.f32 %7325, 3
  %7330 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7323, float %7324, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7334 = extractvalue %dx.types.ResRet.f32 %7330, 3
  %7335 = call float @dx.op.binary.f32(i32 35, float %7327, float %7328)  ; FMax(a,b)
  %7336 = call float @dx.op.binary.f32(i32 35, float %7326, float %7335)  ; FMax(a,b)
  %7337 = call float @dx.op.binary.f32(i32 35, float %7336, float %7329)  ; FMax(a,b)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7332, float %7333)  ; FMin(a,b)
  %7339 = call float @dx.op.binary.f32(i32 36, float %7331, float %7338)  ; FMin(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7339, float %7334)  ; FMin(a,b)
  %7341 = fmul fast float %7337, 2.550000e+02
  %7342 = fadd fast float %7341, 0x3F70101020000000
  %7343 = fptoui float %7342 to i32
  %7344 = fmul fast float %7340, 2.550000e+02
  %7345 = fadd fast float %7344, 0x3F70101020000000
  %7346 = fptoui float %7345 to i32
  %7347 = icmp ult i32 %7343, %7346
  br i1 %7347, label %7348, label %7516

; <label>:7348                                    ; preds = %7317
  %7349 = fcmp fast ogt float %100, 9.843750e-01
  %7350 = fadd fast float %101, -4.000000e+00
  %7351 = select i1 %7349, float -4.000000e+00, float %7350
  %7352 = call float @dx.op.binary.f32(i32 35, float %7351, float 0.000000e+00)  ; FMax(a,b)
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 0
  %7355 = fadd fast float %7354, %7352
  %7356 = extractvalue %dx.types.CBufRet.f32 %7353, 2
  %7357 = fmul fast float %7355, %7356
  %7358 = call float @dx.op.unary.f32(i32 23, float %7357)  ; Log(value)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7353, 3
  %7360 = fmul fast float %7359, %7358
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7363 = fmul fast float %7360, %7362
  %7364 = call float @dx.op.unary.f32(i32 7, float %7363)  ; Saturate(value)
  %7365 = uitofp i32 %7343 to float
  %7366 = uitofp i32 %7346 to float
  %7367 = fadd fast float %7365, 5.000000e-01
  %7368 = fadd fast float %7366, 5.000000e-01
  %7369 = fmul fast float %7362, %7367
  %7370 = fmul fast float %7362, %7368
  %7371 = fadd fast float %7369, 0x3F0FFB4800000000
  %7372 = fadd fast float %7370, 0xBF0FFB4800000000
  %7373 = call float @dx.op.binary.f32(i32 35, float %7364, float %7371)  ; FMax(a,b)
  %7374 = call float @dx.op.binary.f32(i32 36, float %7373, float %7372)  ; FMin(a,b)
  %7375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.f32 %7375, 1
  %7377 = extractvalue %dx.types.CBufRet.f32 %7375, 2
  %7378 = extractvalue %dx.types.CBufRet.f32 %7375, 0
  %7379 = fmul fast float %7376, %7374
  %7380 = fadd fast float %7378, %7379
  %7381 = fadd fast float %7378, %7377
  %7382 = fsub fast float %7376, %7377
  %7383 = fadd fast float %7382, %7378
  %7384 = call float @dx.op.binary.f32(i32 35, float %7380, float %7381)  ; FMax(a,b)
  %7385 = call float @dx.op.binary.f32(i32 36, float %7384, float %7383)  ; FMin(a,b)
  %7386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7323, float %7324, float %7385, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.i32 %7390, 0
  %7392 = extractvalue %dx.types.CBufRet.i32 %7390, 1
  %7393 = uitofp i32 %7391 to float
  %7394 = uitofp i32 %7392 to float
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7398 = fmul fast float %7393, %7323
  %7399 = fmul fast float %7394, %7324
  %7400 = fadd fast float %7398, -5.000000e-01
  %7401 = fadd fast float %7399, -5.000000e-01
  %7402 = call float @dx.op.unary.f32(i32 22, float %7400)  ; Frc(value)
  %7403 = call float @dx.op.unary.f32(i32 22, float %7401)  ; Frc(value)
  %7404 = fmul fast float %7402, %7402
  %7405 = fmul fast float %7404, %7402
  %7406 = fsub fast float 3.000000e+00, %7402
  %7407 = fmul fast float %7404, %7406
  %7408 = fmul fast float %7402, 3.000000e+00
  %7409 = fmul fast float %7405, 3.000000e+00
  %7410 = fmul fast float %7404, 6.000000e+00
  %7411 = fsub fast float %7409, %7410
  %7412 = fadd fast float %7411, 4.000000e+00
  %7413 = fmul fast float %7412, 0x3FC5555560000000
  %7414 = fmul fast float %7405, -3.000000e+00
  %7415 = fadd fast float %7404, %7402
  %7416 = fmul fast float %7415, 3.000000e+00
  %7417 = fadd fast float %7414, 1.000000e+00
  %7418 = fadd fast float %7417, %7416
  %7419 = fmul fast float %7405, 0x3FC5555560000000
  %7420 = fmul fast float %7403, %7403
  %7421 = fmul fast float %7420, %7403
  %7422 = fsub fast float 3.000000e+00, %7403
  %7423 = fmul fast float %7420, %7422
  %7424 = fmul fast float %7403, 3.000000e+00
  %7425 = fmul fast float %7421, 3.000000e+00
  %7426 = fmul fast float %7420, 6.000000e+00
  %7427 = fsub fast float %7425, %7426
  %7428 = fadd fast float %7427, 4.000000e+00
  %7429 = fmul fast float %7428, 0x3FC5555560000000
  %7430 = fmul fast float %7421, -3.000000e+00
  %7431 = fadd fast float %7420, %7403
  %7432 = fmul fast float %7431, 3.000000e+00
  %7433 = fadd fast float %7430, 1.000000e+00
  %7434 = fadd fast float %7433, %7432
  %7435 = fmul fast float %7421, 0x3FC5555560000000
  %7436 = fadd fast float %7402, 1.000000e+00
  %7437 = fsub fast float 1.000000e+00, %7408
  %7438 = fadd fast float %7437, %7407
  %7439 = fadd fast float %7438, %7412
  %7440 = fmul fast float %7439, 0x3FC5555560000000
  %7441 = fdiv fast float %7413, %7440
  %7442 = fsub fast float %7436, %7441
  %7443 = fsub fast float 1.000000e+00, %7402
  %7444 = fadd fast float %7418, %7405
  %7445 = fmul fast float %7444, 0x3FC5555560000000
  %7446 = fdiv fast float %7419, %7445
  %7447 = fadd fast float %7443, %7446
  %7448 = fadd fast float %7403, 1.000000e+00
  %7449 = fsub fast float 1.000000e+00, %7424
  %7450 = fadd fast float %7449, %7423
  %7451 = fadd fast float %7450, %7428
  %7452 = fmul fast float %7451, 0x3FC5555560000000
  %7453 = fdiv fast float %7429, %7452
  %7454 = fsub fast float %7448, %7453
  %7455 = fsub fast float 1.000000e+00, %7403
  %7456 = fadd fast float %7434, %7421
  %7457 = fmul fast float %7456, 0x3FC5555560000000
  %7458 = fdiv fast float %7435, %7457
  %7459 = fadd fast float %7458, %7455
  %7460 = fmul fast float %7442, %7396
  %7461 = fsub fast float %7323, %7460
  %7462 = fmul fast float %7447, %7396
  %7463 = fadd fast float %7462, %7323
  %7464 = fmul fast float %7459, %7397
  %7465 = fadd fast float %7464, %7324
  %7466 = fmul fast float %7454, %7397
  %7467 = fsub fast float %7324, %7466
  %7468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7461, float %7467, float %7385, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7469 = extractvalue %dx.types.ResRet.f32 %7468, 0
  %7470 = extractvalue %dx.types.ResRet.f32 %7468, 1
  %7471 = extractvalue %dx.types.ResRet.f32 %7468, 2
  %7472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7463, float %7467, float %7385, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7473 = extractvalue %dx.types.ResRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.ResRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.ResRet.f32 %7472, 2
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7461, float %7465, float %7385, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.ResRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7476, 2
  %7480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7463, float %7465, float %7385, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.ResRet.f32 %7480, 2
  %7484 = fsub fast float %7477, %7469
  %7485 = fsub fast float %7478, %7470
  %7486 = fsub fast float %7479, %7471
  %7487 = fmul fast float %7484, %7457
  %7488 = fmul fast float %7485, %7457
  %7489 = fmul fast float %7486, %7457
  %7490 = fadd fast float %7487, %7469
  %7491 = fadd fast float %7488, %7470
  %7492 = fadd fast float %7489, %7471
  %7493 = fsub fast float %7481, %7473
  %7494 = fsub fast float %7482, %7474
  %7495 = fsub fast float %7483, %7475
  %7496 = fmul fast float %7493, %7457
  %7497 = fmul fast float %7494, %7457
  %7498 = fmul fast float %7495, %7457
  %7499 = fsub fast float %7473, %7490
  %7500 = fadd fast float %7499, %7496
  %7501 = fsub fast float %7474, %7491
  %7502 = fadd fast float %7501, %7497
  %7503 = fsub fast float %7475, %7492
  %7504 = fadd fast float %7503, %7498
  %7505 = fmul fast float %7500, %7445
  %7506 = fmul fast float %7502, %7445
  %7507 = fmul fast float %7504, %7445
  %7508 = fadd fast float %7505, %7490
  %7509 = fadd fast float %7506, %7491
  %7510 = fadd fast float %7507, %7492
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 1
  %7513 = fmul fast float %7508, %7512
  %7514 = fmul fast float %7509, %7512
  %7515 = fmul fast float %7510, %7512
  br label %7516

; <label>:7516                                    ; preds = %7348, %7317
  %7517 = phi float [ %7387, %7348 ], [ 1.000000e+00, %7317 ]
  %7518 = phi float [ %7388, %7348 ], [ 1.000000e+00, %7317 ]
  %7519 = phi float [ %7389, %7348 ], [ 1.000000e+00, %7317 ]
  %7520 = phi float [ %7513, %7348 ], [ 0.000000e+00, %7317 ]
  %7521 = phi float [ %7514, %7348 ], [ 0.000000e+00, %7317 ]
  %7522 = phi float [ %7515, %7348 ], [ 0.000000e+00, %7317 ]
  %7523 = fmul fast float %7520, %7294
  %7524 = fmul fast float %7521, %7294
  %7525 = fmul fast float %7522, %7294
  %7526 = call float @dx.op.dot3.f32(i32 55, float %7517, float %7518, float %7519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7527 = call float @dx.op.dot3.f32(i32 55, float %7523, float %7524, float %7525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = select i1 %269, float %7526, float %7517
  %7529 = select i1 %269, float %7526, float %7518
  %7530 = select i1 %269, float 1.000000e+00, float %7519
  %7531 = select i1 %269, float %7527, float %7523
  %7532 = select i1 %269, float 0.000000e+00, float %7524
  %7533 = select i1 %269, float 0.000000e+00, float %7525
  %7534 = fmul fast float %7528, %7307
  %7535 = fmul fast float %7529, %7308
  %7536 = fmul fast float %7530, %7309
  %7537 = fadd fast float %7534, %7531
  %7538 = fadd fast float %7535, %7532
  %7539 = fadd fast float %7533, %7536
  %7540 = fmul fast float %7528, %7285
  %7541 = fmul fast float %7529, %7286
  %7542 = fmul fast float %7530, %7287
  %7543 = fmul fast float %146, %7319
  %7544 = fmul fast float %148, %7320
  %7545 = fsub fast float 1.000000e+00, %7543
  %7546 = fsub fast float 1.000000e+00, %7544
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.CBufRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7551 = fmul fast float %7545, %7548
  %7552 = fmul fast float %7545, %7549
  %7553 = fmul fast float %7545, %7550
  %7554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7555 = extractvalue %dx.types.CBufRet.f32 %7554, 0
  %7556 = extractvalue %dx.types.CBufRet.f32 %7554, 1
  %7557 = extractvalue %dx.types.CBufRet.f32 %7554, 2
  %7558 = fmul fast float %7546, %7555
  %7559 = fmul fast float %7546, %7556
  %7560 = fmul fast float %7546, %7557
  %7561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.CBufRet.f32 %7561, 1
  %7564 = extractvalue %dx.types.CBufRet.f32 %7561, 2
  %7565 = fadd fast float %7558, %7562
  %7566 = fadd fast float %7565, %7551
  %7567 = fadd fast float %7559, %7563
  %7568 = fadd fast float %7567, %7552
  %7569 = fadd fast float %7560, %7564
  %7570 = fadd fast float %7569, %7553
  %7571 = fmul fast float %7566, %232
  %7572 = fmul fast float %7568, %232
  %7573 = fmul fast float %7570, %232
  br label %7574

; <label>:7574                                    ; preds = %7516, %7284
  %7575 = phi float [ %7571, %7516 ], [ %197, %7284 ]
  %7576 = phi float [ %7572, %7516 ], [ %198, %7284 ]
  %7577 = phi float [ %7573, %7516 ], [ %199, %7284 ]
  %7578 = phi float [ %232, %7516 ], [ %101, %7284 ]
  %7579 = phi float [ %7537, %7516 ], [ %7307, %7284 ]
  %7580 = phi float [ %7538, %7516 ], [ %7308, %7284 ]
  %7581 = phi float [ %7539, %7516 ], [ %7309, %7284 ]
  %7582 = phi float [ %7540, %7516 ], [ %7285, %7284 ]
  %7583 = phi float [ %7541, %7516 ], [ %7286, %7284 ]
  %7584 = phi float [ %7542, %7516 ], [ %7287, %7284 ]
  %7585 = phi float [ %7517, %7516 ], [ 1.000000e+00, %7284 ]
  br i1 %7316, label %8740, label %7586

; <label>:7586                                    ; preds = %7574
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7589 = extractvalue %dx.types.CBufRet.f32 %7587, 1
  %7590 = extractvalue %dx.types.CBufRet.f32 %7587, 2
  %7591 = extractvalue %dx.types.CBufRet.f32 %7587, 3
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7596 = extractvalue %dx.types.CBufRet.f32 %7592, 3
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7601 = extractvalue %dx.types.CBufRet.f32 %7597, 3
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7605 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7606 = extractvalue %dx.types.CBufRet.f32 %7602, 3
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 3
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 3
  %7611 = extractvalue %dx.types.CBufRet.f32 %7609, 0
  %7612 = extractvalue %dx.types.CBufRet.f32 %7609, 1
  %7613 = extractvalue %dx.types.CBufRet.f32 %7609, 2
  %7614 = fcmp fast olt float %7613, -5.000000e-01
  %7615 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7576, float %7577, float %7575, float %7576, float %7577)  ; Dot3(ax,ay,az,bx,by,bz)
  %7616 = call float @dx.op.unary.f32(i32 25, float %7615)  ; Rsqrt(value)
  %7617 = fmul fast float %7616, %7615
  %7618 = fmul fast float %7616, %7575
  %7619 = fmul fast float %7616, %7576
  %7620 = fmul fast float %7616, %7577
  %7621 = fadd fast float %7617, %7591
  %7622 = call float @dx.op.dot3.f32(i32 55, float %7618, float %7619, float %7620, float %7588, float %7589, float %7590)  ; Dot3(ax,ay,az,bx,by,bz)
  %7623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.i32 %7623, 1
  %7625 = and i32 %7624, 1
  %7626 = icmp ne i32 %7625, 0
  %7627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.f32 %7627, 2
  %7629 = fcmp fast ogt float %7628, 0.000000e+00
  %7630 = and i1 %7626, %7629
  br i1 %7630, label %7631, label %8037, !dx.controlflow.hints !127

; <label>:7631                                    ; preds = %7586
  %7632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.f32 %7632, 3
  %7634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7635 = extractvalue %dx.types.CBufRet.f32 %7634, 2
  %7636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.f32 %7636, 2
  %7638 = fsub fast float %7635, %7637
  %7639 = and i32 %7624, 2
  %7640 = extractvalue %dx.types.CBufRet.i32 %7623, 0
  %7641 = call i32 @dx.op.binary.i32(i32 40, i32 %7640, i32 3)  ; UMin(a,b)
  %7642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7643 = extractvalue %dx.types.CBufRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.CBufRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.CBufRet.f32 %7636, 0
  %7646 = extractvalue %dx.types.CBufRet.f32 %7636, 1
  %7647 = fsub fast float %7643, %7645
  %7648 = fsub fast float %7644, %7646
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7651 = fcmp fast ogt float %7650, 0.000000e+00
  %7652 = fsub fast float -0.000000e+00, %7647
  %7653 = fsub fast float -0.000000e+00, %7648
  %7654 = call float @dx.op.dot2.f32(i32 54, float %7618, float %7619, float %7618, float %7619)  ; Dot2(ax,ay,bx,by)
  %7655 = call float @dx.op.dot2.f32(i32 54, float %7618, float %7619, float %7652, float %7653)  ; Dot2(ax,ay,bx,by)
  %7656 = fmul fast float %7655, 2.000000e+00
  %7657 = call float @dx.op.dot2.f32(i32 54, float %7652, float %7653, float %7652, float %7653)  ; Dot2(ax,ay,bx,by)
  %7658 = fmul fast float %7650, %7650
  %7659 = fsub fast float %7657, %7658
  %7660 = fmul fast float %7656, %7656
  %7661 = fmul fast float %7654, 4.000000e+00
  %7662 = fmul fast float %7661, %7659
  %7663 = fsub fast float %7660, %7662
  %7664 = fcmp fast ogt float %7663, 0.000000e+00
  br i1 %7664, label %7665, label %7680

; <label>:7665                                    ; preds = %7631
  %7666 = fcmp fast ogt float %7656, 0.000000e+00
  %7667 = call float @dx.op.unary.f32(i32 24, float %7663)  ; Sqrt(value)
  %7668 = fsub fast float -0.000000e+00, %7667
  %7669 = select i1 %7666, float %7667, float %7668
  %7670 = fadd fast float %7669, %7656
  %7671 = fmul float %7670, -5.000000e-01
  %7672 = fdiv fast float %7671, %7654
  %7673 = call float @dx.op.binary.f32(i32 35, float %7672, float 0.000000e+00)  ; FMax(a,b)
  %7674 = call float @dx.op.binary.f32(i32 36, float %7617, float %7673)  ; FMin(a,b)
  %7675 = fdiv fast float %7659, %7671
  %7676 = call float @dx.op.binary.f32(i32 35, float %7675, float 0.000000e+00)  ; FMax(a,b)
  %7677 = call float @dx.op.binary.f32(i32 36, float %7617, float %7676)  ; FMin(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7674, float %7677)  ; FMin(a,b)
  %7679 = call float @dx.op.binary.f32(i32 35, float %7674, float %7677)  ; FMax(a,b)
  br label %7680

; <label>:7680                                    ; preds = %7665, %7631
  %7681 = phi float [ %7679, %7665 ], [ -1.000000e+00, %7631 ]
  %7682 = phi float [ %7678, %7665 ], [ -1.000000e+00, %7631 ]
  %7683 = phi i1 [ true, %7665 ], [ false, %7631 ]
  %7684 = and i1 %7651, %7683
  br i1 %7684, label %7685, label %7687

; <label>:7685                                    ; preds = %7680
  %7686 = fcmp fast oeq float %7682, %7681
  br i1 %7686, label %7990, label %7688

; <label>:7687                                    ; preds = %7680
  br i1 %7651, label %7990, label %7688

; <label>:7688                                    ; preds = %7687, %7685
  %7689 = phi float [ %7617, %7687 ], [ %7681, %7685 ]
  %7690 = phi float [ 0.000000e+00, %7687 ], [ %7682, %7685 ]
  %7691 = icmp ne i32 %7639, 0
  %7692 = fmul fast float %7689, %7620
  %7693 = fadd fast float %7692, %7633
  %7694 = fmul fast float %7693, %7689
  %7695 = select i1 %7691, float 0.000000e+00, float %7694
  %7696 = fcmp fast oeq float %7620, 0.000000e+00
  %7697 = fdiv fast float %7638, %7620
  %7698 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7697)  ; FMax(a,b)
  %7699 = select i1 %7696, float %7689, float %7698
  %7700 = call float @dx.op.binary.f32(i32 36, float %7689, float %7699)  ; FMin(a,b)
  %7701 = fcmp fast ogt float %7620, 0.000000e+00
  %7702 = fcmp fast olt float %7638, 0.000000e+00
  br i1 %7701, label %7703, label %7760

; <label>:7703                                    ; preds = %7688
  %7704 = icmp eq i32 %7639, 0
  br i1 %7702, label %7705, label %7749

; <label>:7705                                    ; preds = %7703
  %7706 = select i1 %7704, float %7689, float 0.000000e+00
  %7707 = fsub fast float -0.000000e+00, %7706
  %7708 = call float @dx.op.unary.f32(i32 6, float %7707)  ; FAbs(value)
  %7709 = fmul fast float %7706, %7620
  %7710 = fadd fast float %7709, %7633
  %7711 = fmul fast float %7708, %7710
  %7712 = fsub fast float %7695, %7711
  %7713 = fsub fast float %7689, %7708
  %7714 = select i1 %7704, float %7713, float 0.000000e+00
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.CBufRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.CBufRet.f32 %7715, 2
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7721 = extractvalue %dx.types.CBufRet.f32 %7719, 1
  %7722 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7723 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 3
  %7726 = call float @dx.op.binary.f32(i32 36, float %7712, float %7725)  ; FMin(a,b)
  %7727 = fmul fast float %7723, %7714
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = fsub fast float %7720, %7716
  %7730 = fsub fast float %7721, %7717
  %7731 = fsub fast float %7722, %7718
  %7732 = fmul fast float %7728, %7729
  %7733 = fmul fast float %7728, %7730
  %7734 = fmul fast float %7728, %7731
  %7735 = fadd fast float %7732, %7716
  %7736 = fadd fast float %7733, %7717
  %7737 = fadd fast float %7734, %7718
  %7738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7739 = extractvalue %dx.types.CBufRet.f32 %7738, 0
  %7740 = extractvalue %dx.types.CBufRet.f32 %7738, 1
  %7741 = fadd fast float %7740, %7739
  %7742 = call float @dx.op.unary.f32(i32 7, float %7741)  ; Saturate(value)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7738, 2
  %7744 = extractvalue %dx.types.CBufRet.f32 %7738, 3
  %7745 = fadd fast float %7744, %7743
  %7746 = call float @dx.op.unary.f32(i32 7, float %7745)  ; Saturate(value)
  %7747 = fmul fast float %7742, %7726
  %7748 = fmul fast float %7747, %7746
  br label %7990

; <label>:7749                                    ; preds = %7703
  br i1 %7704, label %7750, label %7771

; <label>:7750                                    ; preds = %7749
  %7751 = call float @dx.op.binary.f32(i32 36, float %7700, float %7690)  ; FMin(a,b)
  %7752 = fsub fast float %7700, %7751
  %7753 = fsub fast float %7752, %7689
  %7754 = call float @dx.op.unary.f32(i32 6, float %7753)  ; FAbs(value)
  %7755 = fadd fast float %7752, %7689
  %7756 = fmul fast float %7755, %7620
  %7757 = fadd fast float %7756, %7633
  %7758 = fmul fast float %7757, %7754
  %7759 = fsub fast float %7695, %7758
  br label %7771

; <label>:7760                                    ; preds = %7688
  br i1 %7702, label %7761, label %7771

; <label>:7761                                    ; preds = %7760
  %7762 = call float @dx.op.binary.f32(i32 35, float %7690, float %7700)  ; FMax(a,b)
  %7763 = icmp eq i32 %7639, 0
  %7764 = select i1 %7763, float %7700, float 0.000000e+00
  %7765 = fsub fast float -0.000000e+00, %7764
  %7766 = call float @dx.op.unary.f32(i32 6, float %7765)  ; FAbs(value)
  %7767 = fmul fast float %7764, %7620
  %7768 = fadd fast float %7767, %7633
  %7769 = fmul fast float %7766, %7768
  %7770 = fsub fast float %7695, %7769
  br label %7771

; <label>:7771                                    ; preds = %7761, %7760, %7750, %7749
  %7772 = phi float [ %7690, %7749 ], [ %7690, %7750 ], [ %7762, %7761 ], [ %7690, %7760 ]
  %7773 = phi float [ 0.000000e+00, %7749 ], [ %7754, %7750 ], [ %7766, %7761 ], [ 0.000000e+00, %7760 ]
  %7774 = phi float [ %7695, %7749 ], [ %7759, %7750 ], [ %7770, %7761 ], [ %7695, %7760 ]
  %7775 = phi float [ %7700, %7749 ], [ %7700, %7750 ], [ %7689, %7761 ], [ %7689, %7760 ]
  %7776 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7776, align 4, !tbaa !128, !noalias !130
  %7777 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7777, align 4, !tbaa !128, !noalias !130
  %7778 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7778, align 4, !tbaa !128, !noalias !130
  %7779 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7779, align 4, !tbaa !128, !noalias !130
  %7780 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7780, align 4, !tbaa !128, !noalias !130
  %7781 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7781, align 4, !tbaa !128, !noalias !130
  %7782 = icmp sgt i32 %7641, 0
  br i1 %7782, label %7783, label %7844

; <label>:7783                                    ; preds = %7771
  br label %7784

; <label>:7784                                    ; preds = %7833, %7783
  %7785 = phi i32 [ %7834, %7833 ], [ 0, %7783 ]
  %7786 = phi i32 [ %7835, %7833 ], [ 0, %7783 ]
  %7787 = add nuw i32 %7786, 171
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7787)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.CBufRet.f32 %7788, 1
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 1
  %7794 = fsub fast float %7789, %7792
  %7795 = fsub fast float %7790, %7793
  %7796 = extractvalue %dx.types.CBufRet.f32 %7788, 2
  %7797 = fsub fast float -0.000000e+00, %7794
  %7798 = fsub fast float -0.000000e+00, %7795
  %7799 = call float @dx.op.dot2.f32(i32 54, float %7618, float %7619, float %7797, float %7798)  ; Dot2(ax,ay,bx,by)
  %7800 = fmul fast float %7799, 2.000000e+00
  %7801 = call float @dx.op.dot2.f32(i32 54, float %7797, float %7798, float %7797, float %7798)  ; Dot2(ax,ay,bx,by)
  %7802 = fmul fast float %7796, %7796
  %7803 = fsub fast float %7801, %7802
  %7804 = fmul fast float %7800, %7800
  %7805 = fmul fast float %7661, %7803
  %7806 = fsub fast float %7804, %7805
  %7807 = fcmp fast ogt float %7806, 0.000000e+00
  br i1 %7807, label %7808, label %7823

; <label>:7808                                    ; preds = %7784
  %7809 = fcmp fast ogt float %7800, 0.000000e+00
  %7810 = call float @dx.op.unary.f32(i32 24, float %7806)  ; Sqrt(value)
  %7811 = fsub fast float -0.000000e+00, %7810
  %7812 = select i1 %7809, float %7810, float %7811
  %7813 = fadd fast float %7812, %7800
  %7814 = fmul float %7813, -5.000000e-01
  %7815 = fdiv fast float %7814, %7654
  %7816 = call float @dx.op.binary.f32(i32 35, float %7815, float 0.000000e+00)  ; FMax(a,b)
  %7817 = call float @dx.op.binary.f32(i32 36, float %7689, float %7816)  ; FMin(a,b)
  %7818 = fdiv fast float %7803, %7814
  %7819 = call float @dx.op.binary.f32(i32 35, float %7818, float 0.000000e+00)  ; FMax(a,b)
  %7820 = call float @dx.op.binary.f32(i32 36, float %7689, float %7819)  ; FMin(a,b)
  %7821 = call float @dx.op.binary.f32(i32 36, float %7817, float %7820)  ; FMin(a,b)
  %7822 = call float @dx.op.binary.f32(i32 35, float %7817, float %7820)  ; FMax(a,b)
  br label %7823

; <label>:7823                                    ; preds = %7808, %7784
  %7824 = phi float [ %7822, %7808 ], [ -1.000000e+00, %7784 ]
  %7825 = phi float [ %7821, %7808 ], [ -1.000000e+00, %7784 ]
  %7826 = phi i1 [ true, %7808 ], [ false, %7784 ]
  br i1 %7826, label %7827, label %7833

; <label>:7827                                    ; preds = %7823
  %7828 = call float @dx.op.binary.f32(i32 35, float %7772, float %7825)  ; FMax(a,b)
  %7829 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7786
  store float %7828, float* %7829, align 4, !tbaa !128, !noalias !130
  %7830 = call float @dx.op.binary.f32(i32 35, float %7772, float %7824)  ; FMax(a,b)
  %7831 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7786
  store float %7830, float* %7831, align 4, !tbaa !128, !noalias !130
  %7832 = add nsw i32 %7785, 1
  br label %7833

; <label>:7833                                    ; preds = %7827, %7823
  %7834 = phi i32 [ %7832, %7827 ], [ %7785, %7823 ]
  %7835 = add nuw nsw i32 %7786, 1
  %7836 = icmp eq i32 %7835, %7641
  br i1 %7836, label %7837, label %7784

; <label>:7837                                    ; preds = %7833
  %7838 = load float, float* %7778, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7839 = load float, float* %7777, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %7840 = load float, float* %7776, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %7841 = load float, float* %7781, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7842 = load float, float* %7780, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %7843 = load float, float* %7779, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %7844

; <label>:7844                                    ; preds = %7837, %7771
  %7845 = phi float [ -1.000000e+00, %7771 ], [ %7843, %7837 ]
  %7846 = phi float [ -1.000000e+00, %7771 ], [ %7842, %7837 ]
  %7847 = phi float [ -1.000000e+00, %7771 ], [ %7841, %7837 ]
  %7848 = phi float [ -1.000000e+00, %7771 ], [ %7840, %7837 ]
  %7849 = phi float [ -1.000000e+00, %7771 ], [ %7839, %7837 ]
  %7850 = phi float [ -1.000000e+00, %7771 ], [ %7838, %7837 ]
  %7851 = phi i32 [ 0, %7771 ], [ %7834, %7837 ]
  %7852 = call float @dx.op.binary.f32(i32 36, float %7849, float %7850)  ; FMin(a,b)
  %7853 = call float @dx.op.binary.f32(i32 36, float %7848, float %7852)  ; FMin(a,b)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7848, float %7849)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 36, float %7854, float %7850)  ; FMin(a,b)
  %7856 = call float @dx.op.binary.f32(i32 36, float %7848, float %7849)  ; FMin(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float %7856, float %7855)  ; FMax(a,b)
  %7858 = call float @dx.op.binary.f32(i32 35, float %7849, float %7850)  ; FMax(a,b)
  %7859 = call float @dx.op.binary.f32(i32 35, float %7848, float %7858)  ; FMax(a,b)
  store float %7853, float* %7776, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %7857, float* %7777, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %7859, float* %7778, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7860 = call float @dx.op.binary.f32(i32 36, float %7846, float %7847)  ; FMin(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7845, float %7860)  ; FMin(a,b)
  %7862 = call float @dx.op.binary.f32(i32 35, float %7845, float %7846)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 36, float %7862, float %7847)  ; FMin(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7845, float %7846)  ; FMin(a,b)
  %7865 = call float @dx.op.binary.f32(i32 35, float %7864, float %7863)  ; FMax(a,b)
  %7866 = call float @dx.op.binary.f32(i32 35, float %7846, float %7847)  ; FMax(a,b)
  %7867 = call float @dx.op.binary.f32(i32 35, float %7845, float %7866)  ; FMax(a,b)
  store float %7861, float* %7779, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %7865, float* %7780, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %7867, float* %7781, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7868 = sub nsw i32 3, %7851
  %7869 = icmp sgt i32 %7868, 2
  br i1 %7869, label %7870, label %7908

; <label>:7870                                    ; preds = %7844
  %7871 = icmp eq i32 %7639, 0
  %7872 = fsub fast float %7689, %7773
  %7873 = select i1 %7871, float %7872, float %7773
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7882 = extractvalue %dx.types.CBufRet.f32 %7878, 3
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 3
  %7885 = call float @dx.op.binary.f32(i32 36, float %7774, float %7884)  ; FMin(a,b)
  %7886 = fmul fast float %7882, %7873
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = fsub fast float %7879, %7875
  %7889 = fsub fast float %7880, %7876
  %7890 = fsub fast float %7881, %7877
  %7891 = fmul fast float %7887, %7888
  %7892 = fmul fast float %7887, %7889
  %7893 = fmul fast float %7887, %7890
  %7894 = fadd fast float %7891, %7875
  %7895 = fadd fast float %7892, %7876
  %7896 = fadd fast float %7893, %7877
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7900 = fadd fast float %7899, %7898
  %7901 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7897, 2
  %7903 = extractvalue %dx.types.CBufRet.f32 %7897, 3
  %7904 = fadd fast float %7903, %7902
  %7905 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7906 = fmul fast float %7901, %7885
  %7907 = fmul fast float %7906, %7905
  br label %7990

; <label>:7908                                    ; preds = %7844
  %7909 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7868
  %7910 = load float, float* %7909, align 4, !tbaa !128, !noalias !130
  %7911 = fcmp fast olt float %7910, %7775
  %7912 = icmp sgt i32 %7851, 0
  %7913 = and i1 %7912, %7911
  br i1 %7913, label %7914, label %7951

; <label>:7914                                    ; preds = %7908
  br label %7915

; <label>:7915                                    ; preds = %7944, %7914
  %7916 = phi float [ %7945, %7944 ], [ %7773, %7914 ]
  %7917 = phi float [ %7946, %7944 ], [ %7774, %7914 ]
  %7918 = phi float [ %7926, %7944 ], [ %7910, %7914 ]
  %7919 = phi i32 [ %7923, %7944 ], [ %7868, %7914 ]
  %7920 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7919
  %7921 = load float, float* %7920, align 4, !tbaa !128, !noalias !130
  %7922 = icmp slt i32 %7919, 2
  %7923 = add nsw i32 %7919, 1
  %7924 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7923
  %7925 = load float, float* %7924, align 4, !tbaa !128, !noalias !130
  %7926 = select i1 %7922, float %7925, float %7689
  %7927 = call float @dx.op.binary.f32(i32 36, float %7926, float %7921)  ; FMin(a,b)
  %7928 = call float @dx.op.binary.f32(i32 36, float %7775, float %7927)  ; FMin(a,b)
  %7929 = icmp eq i32 %7639, 0
  %7930 = fadd fast float %7928, %7918
  %7931 = fmul fast float %7930, %7620
  %7932 = fadd fast float %7931, %7633
  br i1 %7929, label %7938, label %7933

; <label>:7933                                    ; preds = %7915
  %7934 = fsub fast float %7928, %7918
  %7935 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7934)  ; FMax(a,b)
  %7936 = fmul fast float %7935, %7932
  %7937 = fadd fast float %7936, %7917
  br label %7944

; <label>:7938                                    ; preds = %7915
  %7939 = fsub fast float %7918, %7928
  %7940 = call float @dx.op.unary.f32(i32 6, float %7939)  ; FAbs(value)
  %7941 = fadd fast float %7940, %7916
  %7942 = fmul fast float %7940, %7932
  %7943 = fsub fast float %7917, %7942
  br label %7944

; <label>:7944                                    ; preds = %7938, %7933
  %7945 = phi float [ %7935, %7933 ], [ %7941, %7938 ]
  %7946 = phi float [ %7937, %7933 ], [ %7943, %7938 ]
  %7947 = fcmp fast olt float %7926, %7775
  %7948 = icmp slt i32 %7923, 3
  %7949 = and i1 %7948, %7947
  br i1 %7949, label %7915, label %7950

; <label>:7950                                    ; preds = %7944
  br label %7951

; <label>:7951                                    ; preds = %7950, %7908
  %7952 = phi float [ %7773, %7908 ], [ %7945, %7950 ]
  %7953 = phi float [ %7774, %7908 ], [ %7946, %7950 ]
  %7954 = fsub fast float %7689, %7952
  %7955 = select i1 %7691, float %7952, float %7954
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 0
  %7958 = extractvalue %dx.types.CBufRet.f32 %7956, 1
  %7959 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 1
  %7963 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7964 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 3
  %7967 = call float @dx.op.binary.f32(i32 36, float %7953, float %7966)  ; FMin(a,b)
  %7968 = fmul fast float %7964, %7955
  %7969 = call float @dx.op.unary.f32(i32 7, float %7968)  ; Saturate(value)
  %7970 = fsub fast float %7961, %7957
  %7971 = fsub fast float %7962, %7958
  %7972 = fsub fast float %7963, %7959
  %7973 = fmul fast float %7969, %7970
  %7974 = fmul fast float %7969, %7971
  %7975 = fmul fast float %7969, %7972
  %7976 = fadd fast float %7973, %7957
  %7977 = fadd fast float %7974, %7958
  %7978 = fadd fast float %7975, %7959
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7982 = fadd fast float %7981, %7980
  %7983 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7979, 2
  %7985 = extractvalue %dx.types.CBufRet.f32 %7979, 3
  %7986 = fadd fast float %7985, %7984
  %7987 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7988 = fmul fast float %7983, %7967
  %7989 = fmul fast float %7988, %7987
  br label %7990

; <label>:7990                                    ; preds = %7951, %7870, %7705, %7687, %7685
  %7991 = phi float [ %7714, %7705 ], [ %7873, %7870 ], [ %7955, %7951 ], [ 0.000000e+00, %7685 ], [ 0.000000e+00, %7687 ]
  %7992 = phi float [ %7748, %7705 ], [ %7907, %7870 ], [ %7989, %7951 ], [ 0.000000e+00, %7685 ], [ 0.000000e+00, %7687 ]
  %7993 = phi float [ %7735, %7705 ], [ %7894, %7870 ], [ %7976, %7951 ], [ 0.000000e+00, %7685 ], [ 0.000000e+00, %7687 ]
  %7994 = phi float [ %7736, %7705 ], [ %7895, %7870 ], [ %7977, %7951 ], [ 0.000000e+00, %7685 ], [ 0.000000e+00, %7687 ]
  %7995 = phi float [ %7737, %7705 ], [ %7896, %7870 ], [ %7978, %7951 ], [ 0.000000e+00, %7685 ], [ 0.000000e+00, %7687 ]
  %7996 = fmul fast float %7628, %7992
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 2
  %7999 = fsub fast float %7635, %7998
  %8000 = fcmp fast olt float %7996, -2.000000e+01
  %8001 = call float @dx.op.unary.f32(i32 21, float %7996)  ; Exp(value)
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8004 = extractvalue %dx.types.CBufRet.f32 %8002, 3
  %8005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8005, 2
  %8007 = fmul fast float %8004, %7999
  %8008 = call float @dx.op.unary.f32(i32 7, float %8007)  ; Saturate(value)
  %8009 = fsub fast float 1.000000e+00, %8008
  %8010 = fmul fast float %7620, 5.000000e-01
  %8011 = fadd fast float %8010, 5.000000e-01
  %8012 = call float @dx.op.unary.f32(i32 7, float %8011)  ; Saturate(value)
  %8013 = fsub fast float 1.000000e+00, %8012
  %8014 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8009)  ; FMax(a,b)
  %8015 = fdiv fast float %8013, %8014
  %8016 = fsub fast float %7999, %7577
  %8017 = call float @dx.op.unary.f32(i32 6, float %8016)  ; FAbs(value)
  %8018 = fmul fast float %8017, %8003
  %8019 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8020 = fsub fast float 1.000000e+00, %8018
  %8021 = fmul fast float %8020, %8019
  %8022 = fadd fast float %8021, %8018
  %8023 = fmul fast float %8006, %7999
  %8024 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8025 = fsub fast float 1.000000e+00, %8022
  %8026 = fmul fast float %8025, %8024
  %8027 = fadd fast float %8026, %8022
  %8028 = call float @dx.op.unary.f32(i32 7, float %8027)  ; Saturate(value)
  %8029 = fadd fast float %8001, -1.000000e+00
  %8030 = select i1 %8000, float -1.000000e+00, float %8029
  %8031 = fmul fast float %8028, %8030
  %8032 = fadd fast float %8031, 1.000000e+00
  %8033 = fsub fast float -0.000000e+00, %8031
  %8034 = fmul fast float %7993, %8033
  %8035 = fmul fast float %7994, %8033
  %8036 = fmul fast float %7995, %8033
  br label %8037

; <label>:8037                                    ; preds = %7990, %7586
  %8038 = phi float [ %7991, %7990 ], [ 0.000000e+00, %7586 ]
  %8039 = phi float [ %8032, %7990 ], [ 1.000000e+00, %7586 ]
  %8040 = phi float [ %8034, %7990 ], [ 0.000000e+00, %7586 ]
  %8041 = phi float [ %8035, %7990 ], [ 0.000000e+00, %7586 ]
  %8042 = phi float [ %8036, %7990 ], [ 0.000000e+00, %7586 ]
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 1
  %8045 = fsub fast float 1.000000e+00, %8039
  %8046 = fmul fast float %8045, %7621
  %8047 = fmul fast float %8046, %8044
  %8048 = fsub fast float %7621, %8047
  br i1 %7614, label %8049, label %8078, !dx.controlflow.hints !166

; <label>:8049                                    ; preds = %8037
  %8050 = fmul fast float %7622, %7611
  %8051 = fadd fast float %8050, %7612
  %8052 = call float @dx.op.unary.f32(i32 7, float %8051)  ; Saturate(value)
  %8053 = fmul fast float %7593, %8048
  %8054 = fsub fast float -0.000000e+00, %8053
  %8055 = fmul fast float %7594, %8048
  %8056 = fsub fast float -0.000000e+00, %8055
  %8057 = call float @dx.op.unary.f32(i32 21, float %8054)  ; Exp(value)
  %8058 = call float @dx.op.unary.f32(i32 21, float %8056)  ; Exp(value)
  %8059 = call float @dx.op.binary.f32(i32 35, float %7601, float %8057)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 35, float %7601, float %8058)  ; FMax(a,b)
  %8061 = fsub fast float %8060, %8059
  %8062 = fmul fast float %8061, %8052
  %8063 = fadd fast float %8062, %8059
  %8064 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8065 = fsub fast float %7598, %7603
  %8066 = fsub fast float %7599, %7604
  %8067 = fsub fast float %7600, %7605
  %8068 = fmul fast float %8052, %8065
  %8069 = fmul fast float %8052, %8066
  %8070 = fmul fast float %8052, %8067
  %8071 = fadd fast float %8068, %7603
  %8072 = fadd fast float %8069, %7604
  %8073 = fadd fast float %8070, %7605
  %8074 = fsub fast float 1.000000e+00, %8064
  %8075 = fmul fast float %8074, %8071
  %8076 = fmul fast float %8074, %8072
  %8077 = fmul fast float %8074, %8073
  br label %8137

; <label>:8078                                    ; preds = %8037
  %8079 = fmul fast float %8048, %7610
  %8080 = call float @dx.op.unary.f32(i32 7, float %8079)  ; Saturate(value)
  %8081 = fsub fast float 2.000000e+00, %8080
  %8082 = fmul fast float %8080, 9.921875e-01
  %8083 = fmul fast float %8082, %8081
  %8084 = fadd fast float %8083, 3.906250e-03
  %8085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8084, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = fsub fast float %8080, %8086
  %8088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8087)  ; FMax(a,b)
  %8089 = fmul fast float %7596, %7577
  %8090 = call float @dx.op.unary.f32(i32 6, float %8089)  ; FAbs(value)
  %8091 = fcmp fast ogt float %8090, 0x3EB0C6F7A0000000
  br i1 %8091, label %8092, label %8098, !dx.controlflow.hints !167

; <label>:8092                                    ; preds = %8078
  %8093 = fmul fast float %8089, 0xBFF7154760000000
  %8094 = call float @dx.op.unary.f32(i32 21, float %8093)  ; Exp(value)
  %8095 = fsub fast float 1.000000e+00, %8094
  %8096 = fdiv fast float %8095, %8089
  %8097 = fmul fast float %8096, %7606
  br label %8098

; <label>:8098                                    ; preds = %8092, %8078
  %8099 = phi float [ %8097, %8092 ], [ %7606, %8078 ]
  %8100 = fadd fast float %8099, %7608
  %8101 = fmul fast float %8100, %8088
  %8102 = fmul fast float %7593, %8101
  %8103 = fsub fast float -0.000000e+00, %8102
  %8104 = fmul fast float %7594, %8101
  %8105 = fsub fast float -0.000000e+00, %8104
  %8106 = fmul fast float %7595, %8101
  %8107 = fsub fast float -0.000000e+00, %8106
  %8108 = call float @dx.op.unary.f32(i32 21, float %8103)  ; Exp(value)
  %8109 = call float @dx.op.unary.f32(i32 21, float %8105)  ; Exp(value)
  %8110 = call float @dx.op.unary.f32(i32 21, float %8107)  ; Exp(value)
  %8111 = fmul fast float %7622, %7622
  %8112 = fadd fast float %8111, 1.000000e+00
  %8113 = fmul fast float %8112, 0x3FAE8EC8A0000000
  %8114 = fmul fast float %8113, %7603
  %8115 = fmul fast float %8113, %7604
  %8116 = fmul fast float %8113, %7605
  %8117 = fmul fast float %7622, %7601
  %8118 = fsub fast float 1.000000e+00, %8117
  %8119 = fmul fast float %7601, %7601
  %8120 = fsub fast float 1.000000e+00, %8119
  %8121 = fmul fast float %8120, 0x3FB45F3060000000
  %8122 = fmul fast float %8118, %8118
  %8123 = fdiv fast float 1.000000e+00, %8122
  %8124 = fmul fast float %8121, %8123
  %8125 = fmul fast float %8124, %7598
  %8126 = fmul fast float %8124, %7599
  %8127 = fmul fast float %8124, %7600
  %8128 = fadd fast float %8125, %8114
  %8129 = fadd fast float %8126, %8115
  %8130 = fadd fast float %8127, %8116
  %8131 = fsub fast float 1.000000e+00, %8108
  %8132 = fsub fast float 1.000000e+00, %8109
  %8133 = fsub fast float 1.000000e+00, %8110
  %8134 = fmul fast float %8128, %8131
  %8135 = fmul fast float %8129, %8132
  %8136 = fmul fast float %8130, %8133
  br label %8137

; <label>:8137                                    ; preds = %8098, %8049
  %8138 = phi float [ %8075, %8049 ], [ %8134, %8098 ]
  %8139 = phi float [ %8076, %8049 ], [ %8135, %8098 ]
  %8140 = phi float [ %8077, %8049 ], [ %8136, %8098 ]
  %8141 = phi float [ %8064, %8049 ], [ %8108, %8098 ]
  %8142 = phi float [ %8064, %8049 ], [ %8109, %8098 ]
  %8143 = phi float [ %8064, %8049 ], [ %8110, %8098 ]
  br i1 %7630, label %8144, label %8342, !dx.controlflow.hints !168

; <label>:8144                                    ; preds = %8137
  %8145 = extractvalue %dx.types.CBufRet.f32 %8043, 0
  %8146 = fmul fast float %8145, %8045
  %8147 = fsub fast float %8040, %8138
  %8148 = fsub fast float %8041, %8139
  %8149 = fsub fast float %8042, %8140
  %8150 = fmul fast float %8146, %8147
  %8151 = fmul fast float %8146, %8148
  %8152 = fmul fast float %8146, %8149
  %8153 = fadd fast float %8150, %8138
  %8154 = fadd fast float %8151, %8139
  %8155 = fadd fast float %8152, %8140
  %8156 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8141)  ; FMax(a,b)
  %8157 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8142)  ; FMax(a,b)
  %8158 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8143)  ; FMax(a,b)
  %8159 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8039)  ; FMax(a,b)
  %8160 = call float @dx.op.binary.f32(i32 35, float %8038, float %8048)  ; FMax(a,b)
  %8161 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8160)  ; FMax(a,b)
  %8162 = fdiv fast float %8038, %8161
  %8163 = call float @dx.op.unary.f32(i32 7, float %8162)  ; Saturate(value)
  %8164 = fdiv fast float %8048, %8161
  %8165 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8166 = fcmp fast une float %8159, 1.000000e+00
  br i1 %8166, label %8167, label %8180, !dx.controlflow.hints !169

; <label>:8167                                    ; preds = %8144
  %8168 = call float @dx.op.unary.f32(i32 23, float %8159)  ; Log(value)
  %8169 = fmul fast float %8168, 0x3FE62E4300000000
  %8170 = fmul fast float %8040, %8169
  %8171 = fsub fast float -0.000000e+00, %8170
  %8172 = fmul fast float %8041, %8169
  %8173 = fsub fast float -0.000000e+00, %8172
  %8174 = fmul fast float %8042, %8169
  %8175 = fsub fast float -0.000000e+00, %8174
  %8176 = fsub fast float 1.000000e+00, %8159
  %8177 = fdiv fast float %8171, %8176
  %8178 = fdiv fast float %8173, %8176
  %8179 = fdiv fast float %8175, %8176
  br label %8180

; <label>:8180                                    ; preds = %8167, %8144
  %8181 = phi float [ %8177, %8167 ], [ %8040, %8144 ]
  %8182 = phi float [ %8178, %8167 ], [ %8041, %8144 ]
  %8183 = phi float [ %8179, %8167 ], [ %8042, %8144 ]
  %8184 = phi float [ %8169, %8167 ], [ 0.000000e+00, %8144 ]
  %8185 = fcmp fast une float %8156, 1.000000e+00
  br i1 %8185, label %8186, label %8193, !dx.controlflow.hints !170

; <label>:8186                                    ; preds = %8180
  %8187 = call float @dx.op.unary.f32(i32 23, float %8156)  ; Log(value)
  %8188 = fmul fast float %8187, 0x3FE62E4300000000
  %8189 = fmul fast float %8153, %8188
  %8190 = fsub fast float -0.000000e+00, %8189
  %8191 = fsub fast float 1.000000e+00, %8156
  %8192 = fdiv fast float %8190, %8191
  br label %8193

; <label>:8193                                    ; preds = %8186, %8180
  %8194 = phi float [ %8192, %8186 ], [ %8153, %8180 ]
  %8195 = phi float [ %8188, %8186 ], [ 0.000000e+00, %8180 ]
  %8196 = fcmp fast une float %8157, 1.000000e+00
  br i1 %8196, label %8197, label %8204, !dx.controlflow.hints !170

; <label>:8197                                    ; preds = %8193
  %8198 = call float @dx.op.unary.f32(i32 23, float %8157)  ; Log(value)
  %8199 = fmul fast float %8198, 0x3FE62E4300000000
  %8200 = fmul fast float %8154, %8199
  %8201 = fsub fast float -0.000000e+00, %8200
  %8202 = fsub fast float 1.000000e+00, %8157
  %8203 = fdiv fast float %8201, %8202
  br label %8204

; <label>:8204                                    ; preds = %8197, %8193
  %8205 = phi float [ %8203, %8197 ], [ %8154, %8193 ]
  %8206 = phi float [ %8199, %8197 ], [ 0.000000e+00, %8193 ]
  %8207 = fcmp fast une float %8158, 1.000000e+00
  br i1 %8207, label %8208, label %8215, !dx.controlflow.hints !170

; <label>:8208                                    ; preds = %8204
  %8209 = call float @dx.op.unary.f32(i32 23, float %8158)  ; Log(value)
  %8210 = fmul fast float %8209, 0x3FE62E4300000000
  %8211 = fmul fast float %8155, %8210
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = fsub fast float 1.000000e+00, %8158
  %8214 = fdiv fast float %8212, %8213
  br label %8215

; <label>:8215                                    ; preds = %8208, %8204
  %8216 = phi float [ %8214, %8208 ], [ %8155, %8204 ]
  %8217 = phi float [ %8210, %8208 ], [ 0.000000e+00, %8204 ]
  %8218 = fmul fast float %8181, %8165
  %8219 = fmul fast float %8182, %8165
  %8220 = fmul fast float %8183, %8165
  %8221 = fmul fast float %8184, %8165
  %8222 = fmul fast float %8194, %8163
  %8223 = fmul fast float %8205, %8163
  %8224 = fmul fast float %8216, %8163
  %8225 = fmul fast float %8195, %8163
  %8226 = fmul fast float %8206, %8163
  %8227 = fmul fast float %8217, %8163
  %8228 = fadd fast float %8222, %8218
  %8229 = fadd fast float %8223, %8219
  %8230 = fadd fast float %8224, %8220
  %8231 = fadd fast float %8225, %8221
  %8232 = fadd fast float %8226, %8221
  %8233 = fadd fast float %8227, %8221
  %8234 = fcmp fast une float %8231, 0.000000e+00
  br i1 %8234, label %8235, label %8242, !dx.controlflow.hints !171

; <label>:8235                                    ; preds = %8215
  %8236 = fmul fast float %8231, 0x3FF7154760000000
  %8237 = call float @dx.op.unary.f32(i32 21, float %8236)  ; Exp(value)
  %8238 = fsub fast float 1.000000e+00, %8237
  %8239 = fmul fast float %8228, %8238
  %8240 = fsub fast float -0.000000e+00, %8239
  %8241 = fdiv fast float %8240, %8231
  br label %8242

; <label>:8242                                    ; preds = %8235, %8215
  %8243 = phi float [ %8237, %8235 ], [ 1.000000e+00, %8215 ]
  %8244 = phi float [ %8241, %8235 ], [ %8228, %8215 ]
  %8245 = fcmp fast une float %8232, 0.000000e+00
  br i1 %8245, label %8246, label %8253, !dx.controlflow.hints !171

; <label>:8246                                    ; preds = %8242
  %8247 = fmul fast float %8232, 0x3FF7154760000000
  %8248 = call float @dx.op.unary.f32(i32 21, float %8247)  ; Exp(value)
  %8249 = fsub fast float 1.000000e+00, %8248
  %8250 = fmul fast float %8229, %8249
  %8251 = fsub fast float -0.000000e+00, %8250
  %8252 = fdiv fast float %8251, %8232
  br label %8253

; <label>:8253                                    ; preds = %8246, %8242
  %8254 = phi float [ %8248, %8246 ], [ 1.000000e+00, %8242 ]
  %8255 = phi float [ %8252, %8246 ], [ %8229, %8242 ]
  %8256 = fcmp fast une float %8233, 0.000000e+00
  br i1 %8256, label %8257, label %8264, !dx.controlflow.hints !171

; <label>:8257                                    ; preds = %8253
  %8258 = fmul fast float %8233, 0x3FF7154760000000
  %8259 = call float @dx.op.unary.f32(i32 21, float %8258)  ; Exp(value)
  %8260 = fsub fast float 1.000000e+00, %8259
  %8261 = fmul fast float %8230, %8260
  %8262 = fsub fast float -0.000000e+00, %8261
  %8263 = fdiv fast float %8262, %8233
  br label %8264

; <label>:8264                                    ; preds = %8257, %8253
  %8265 = phi float [ %8259, %8257 ], [ 1.000000e+00, %8253 ]
  %8266 = phi float [ %8263, %8257 ], [ %8230, %8253 ]
  %8267 = fcmp fast ogt float %8163, %8165
  br i1 %8267, label %8268, label %8288

; <label>:8268                                    ; preds = %8264
  %8269 = fsub fast float 1.000000e+00, %8165
  %8270 = fmul fast float %8181, %8269
  %8271 = fmul fast float %8182, %8269
  %8272 = fmul fast float %8183, %8269
  %8273 = fmul fast float %8184, %8269
  %8274 = fcmp fast une float %8273, 0.000000e+00
  br i1 %8274, label %8275, label %8326, !dx.controlflow.hints !172

; <label>:8275                                    ; preds = %8268
  %8276 = fmul fast float %8273, 0x3FF7154760000000
  %8277 = call float @dx.op.unary.f32(i32 21, float %8276)  ; Exp(value)
  %8278 = fsub fast float 1.000000e+00, %8277
  %8279 = fmul fast float %8270, %8278
  %8280 = fsub fast float -0.000000e+00, %8279
  %8281 = fmul fast float %8271, %8278
  %8282 = fsub fast float -0.000000e+00, %8281
  %8283 = fmul fast float %8272, %8278
  %8284 = fsub fast float -0.000000e+00, %8283
  %8285 = fdiv fast float %8280, %8273
  %8286 = fdiv fast float %8282, %8273
  %8287 = fdiv fast float %8284, %8273
  br label %8326

; <label>:8288                                    ; preds = %8264
  %8289 = fsub fast float 1.000000e+00, %8163
  %8290 = fmul fast float %8194, %8289
  %8291 = fmul fast float %8205, %8289
  %8292 = fmul fast float %8216, %8289
  %8293 = fmul fast float %8195, %8289
  %8294 = fmul fast float %8206, %8289
  %8295 = fmul fast float %8217, %8289
  %8296 = fcmp fast une float %8293, 0.000000e+00
  br i1 %8296, label %8297, label %8304, !dx.controlflow.hints !171

; <label>:8297                                    ; preds = %8288
  %8298 = fmul fast float %8293, 0x3FF7154760000000
  %8299 = call float @dx.op.unary.f32(i32 21, float %8298)  ; Exp(value)
  %8300 = fsub fast float 1.000000e+00, %8299
  %8301 = fmul fast float %8290, %8300
  %8302 = fsub fast float -0.000000e+00, %8301
  %8303 = fdiv fast float %8302, %8293
  br label %8304

; <label>:8304                                    ; preds = %8297, %8288
  %8305 = phi float [ %8303, %8297 ], [ %8290, %8288 ]
  %8306 = phi float [ %8299, %8297 ], [ 1.000000e+00, %8288 ]
  %8307 = fcmp fast une float %8294, 0.000000e+00
  br i1 %8307, label %8308, label %8315, !dx.controlflow.hints !171

; <label>:8308                                    ; preds = %8304
  %8309 = fmul fast float %8294, 0x3FF7154760000000
  %8310 = call float @dx.op.unary.f32(i32 21, float %8309)  ; Exp(value)
  %8311 = fsub fast float 1.000000e+00, %8310
  %8312 = fmul fast float %8291, %8311
  %8313 = fsub fast float -0.000000e+00, %8312
  %8314 = fdiv fast float %8313, %8294
  br label %8315

; <label>:8315                                    ; preds = %8308, %8304
  %8316 = phi float [ %8314, %8308 ], [ %8291, %8304 ]
  %8317 = phi float [ %8310, %8308 ], [ 1.000000e+00, %8304 ]
  %8318 = fcmp fast une float %8295, 0.000000e+00
  br i1 %8318, label %8319, label %8326, !dx.controlflow.hints !171

; <label>:8319                                    ; preds = %8315
  %8320 = fmul fast float %8295, 0x3FF7154760000000
  %8321 = call float @dx.op.unary.f32(i32 21, float %8320)  ; Exp(value)
  %8322 = fsub fast float 1.000000e+00, %8321
  %8323 = fmul fast float %8292, %8322
  %8324 = fsub fast float -0.000000e+00, %8323
  %8325 = fdiv fast float %8324, %8295
  br label %8326

; <label>:8326                                    ; preds = %8319, %8315, %8275, %8268
  %8327 = phi float [ %8325, %8319 ], [ %8287, %8275 ], [ %8272, %8268 ], [ %8292, %8315 ]
  %8328 = phi float [ %8316, %8319 ], [ %8286, %8275 ], [ %8271, %8268 ], [ %8316, %8315 ]
  %8329 = phi float [ %8305, %8319 ], [ %8285, %8275 ], [ %8270, %8268 ], [ %8305, %8315 ]
  %8330 = phi float [ %8321, %8319 ], [ %8277, %8275 ], [ 1.000000e+00, %8268 ], [ 1.000000e+00, %8315 ]
  %8331 = phi float [ %8317, %8319 ], [ %8277, %8275 ], [ 1.000000e+00, %8268 ], [ %8317, %8315 ]
  %8332 = phi float [ %8306, %8319 ], [ %8277, %8275 ], [ 1.000000e+00, %8268 ], [ %8306, %8315 ]
  %8333 = fmul fast float %8332, %8244
  %8334 = fmul fast float %8331, %8255
  %8335 = fmul fast float %8330, %8266
  %8336 = fadd fast float %8333, %8329
  %8337 = fadd fast float %8334, %8328
  %8338 = fadd fast float %8335, %8327
  %8339 = fmul fast float %8332, %8243
  %8340 = fmul fast float %8331, %8254
  %8341 = fmul fast float %8330, %8265
  br label %8342

; <label>:8342                                    ; preds = %8326, %8137
  %8343 = phi float [ %8341, %8326 ], [ %8143, %8137 ]
  %8344 = phi float [ %8340, %8326 ], [ %8142, %8137 ]
  %8345 = phi float [ %8339, %8326 ], [ %8141, %8137 ]
  %8346 = phi float [ %8338, %8326 ], [ %8140, %8137 ]
  %8347 = phi float [ %8337, %8326 ], [ %8139, %8137 ]
  %8348 = phi float [ %8336, %8326 ], [ %8138, %8137 ]
  %8349 = fmul fast float %8348, %7294
  %8350 = fmul fast float %8347, %7294
  %8351 = fmul fast float %8346, %7294
  %8352 = fmul fast float %8345, %7585
  %8353 = call float @dx.op.dot3.f32(i32 55, float %8345, float %8344, float %8343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8354 = call float @dx.op.dot3.f32(i32 55, float %8349, float %8350, float %8351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8355 = select i1 %269, float %8353, float %8345
  %8356 = select i1 %269, float %8353, float %8344
  %8357 = select i1 %269, float 1.000000e+00, float %8343
  %8358 = select i1 %269, float %8354, float %8349
  %8359 = select i1 %269, float 0.000000e+00, float %8350
  %8360 = select i1 %269, float 0.000000e+00, float %8351
  %8361 = fmul fast float %8355, %7579
  %8362 = fmul fast float %8356, %7580
  %8363 = fmul fast float %8357, %7581
  %8364 = fadd fast float %8361, %8358
  %8365 = fadd fast float %8362, %8359
  %8366 = fadd fast float %8360, %8363
  %8367 = fmul fast float %8355, %7582
  %8368 = fmul fast float %8356, %7583
  %8369 = fmul fast float %8357, %7584
  %8370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.i32 %8370, 0
  %8372 = icmp eq i32 %8371, 0
  br i1 %8372, label %8740, label %8373, !dx.controlflow.hints !173

; <label>:8373                                    ; preds = %8342
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %8376 = extractvalue %dx.types.CBufRet.f32 %8374, 3
  %8377 = fmul fast float %8375, %110
  %8378 = fmul fast float %8376, %111
  %8379 = fmul fast float %8377, 2.000000e+00
  %8380 = fmul fast float %8378, 2.000000e+00
  %8381 = fsub fast float 1.000000e+00, %8379
  %8382 = fsub fast float 1.000000e+00, %8380
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.CBufRet.f32 %8383, 2
  %8387 = fmul fast float %8381, %8384
  %8388 = fmul fast float %8381, %8385
  %8389 = fmul fast float %8381, %8386
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 0
  %8392 = extractvalue %dx.types.CBufRet.f32 %8390, 1
  %8393 = extractvalue %dx.types.CBufRet.f32 %8390, 2
  %8394 = fmul fast float %8382, %8391
  %8395 = fmul fast float %8382, %8392
  %8396 = fmul fast float %8382, %8393
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.CBufRet.f32 %8397, 1
  %8400 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8401 = fadd fast float %8394, %8398
  %8402 = fadd fast float %8401, %8387
  %8403 = fadd fast float %8395, %8399
  %8404 = fadd fast float %8403, %8388
  %8405 = fadd fast float %8396, %8400
  %8406 = fadd fast float %8405, %8389
  %8407 = fmul fast float %8402, %7578
  %8408 = fmul fast float %8404, %7578
  %8409 = fmul fast float %8406, %7578
  %8410 = fmul fast float %8407, %8407
  %8411 = fmul fast float %8408, %8408
  %8412 = fadd fast float %8410, %8411
  %8413 = fmul fast float %8409, %8409
  %8414 = fadd fast float %8412, %8413
  %8415 = call float @dx.op.unary.f32(i32 24, float %8414)  ; Sqrt(value)
  %8416 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %8417 = fsub fast float %8415, %8416
  %8418 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %8419 = fmul fast float %8417, %8418
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = fadd fast float %8420, -5.000000e-01
  %8422 = fmul fast float %8421, 2.000000e+00
  %8423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.f32 %8423, 2
  %8425 = call float @dx.op.binary.f32(i32 36, float %8424, float %8422)  ; FMin(a,b)
  %8426 = fsub fast float -0.000000e+00, %8424
  %8427 = fcmp fast ogt float %8425, %8426
  br i1 %8427, label %8428, label %8740, !dx.controlflow.hints !174

; <label>:8428                                    ; preds = %8373
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8431 = fcmp fast ogt float %8430, 0.000000e+00
  br i1 %8431, label %8432, label %8507, !dx.controlflow.hints !175

; <label>:8432                                    ; preds = %8428
  %8433 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8434 = extractvalue %dx.types.Dimensions %8433, 0
  %8435 = sitofp i32 %8434 to float
  %8436 = extractvalue %dx.types.Dimensions %8433, 1
  %8437 = sitofp i32 %8436 to float
  %8438 = fmul fast float %8377, %8435
  %8439 = fmul fast float %8378, %8437
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 1
  %8442 = fsub fast float -0.000000e+00, %8441
  %8443 = fptoui float %8442 to i32
  %8444 = fptoui float %8438 to i32
  %8445 = fptoui float %8439 to i32
  %8446 = and i32 %8443, 31
  %8447 = lshr i32 %8444, %8446
  %8448 = lshr i32 %8445, %8446
  %8449 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8443, i32 %8447, i32 %8448, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = fcmp fast olt float %8450, -1.000000e+00
  %8452 = fcmp fast ogt float %8450, -1.000000e+00
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 1
  %8455 = select i1 %8452, float %8454, float 1.000000e+00
  %8456 = fadd fast float %8450, 1.000000e+00
  %8457 = fmul fast float %8455, %8456
  %8458 = call float @dx.op.unary.f32(i32 6, float %8457)  ; FAbs(value)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8453, 3
  %8460 = fcmp fast oge float %8458, %8459
  %8461 = select i1 %8460, float 0x4197782600000000, float %8458
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 0
  %8464 = extractvalue %dx.types.CBufRet.f32 %8462, 1
  %8465 = extractvalue %dx.types.CBufRet.f32 %8462, 2
  %8466 = select i1 %8451, float %8463, float %8384
  %8467 = select i1 %8451, float %8464, float %8385
  %8468 = select i1 %8451, float %8465, float %8386
  %8469 = fmul fast float %8466, %8381
  %8470 = fmul fast float %8467, %8381
  %8471 = fmul fast float %8468, %8381
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.CBufRet.f32 %8472, 1
  %8475 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8476 = select i1 %8451, float %8473, float %8391
  %8477 = select i1 %8451, float %8474, float %8392
  %8478 = select i1 %8451, float %8475, float %8393
  %8479 = fmul fast float %8476, %8382
  %8480 = fmul fast float %8477, %8382
  %8481 = fmul fast float %8478, %8382
  %8482 = fadd fast float %8479, %8469
  %8483 = fadd fast float %8480, %8470
  %8484 = fadd fast float %8481, %8471
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.CBufRet.f32 %8485, 2
  %8489 = select i1 %8451, float %8486, float %8398
  %8490 = select i1 %8451, float %8487, float %8399
  %8491 = select i1 %8451, float %8488, float %8400
  %8492 = fadd fast float %8482, %8489
  %8493 = fadd fast float %8483, %8490
  %8494 = fadd fast float %8484, %8491
  %8495 = fmul fast float %8492, %8461
  %8496 = fmul fast float %8493, %8461
  %8497 = fmul fast float %8494, %8461
  %8498 = fmul fast float %8495, %8495
  %8499 = fmul fast float %8496, %8496
  %8500 = fadd fast float %8498, %8499
  %8501 = fmul fast float %8497, %8497
  %8502 = fadd fast float %8500, %8501
  %8503 = call float @dx.op.unary.f32(i32 24, float %8502)  ; Sqrt(value)
  %8504 = fsub fast float %8503, %8416
  %8505 = fmul fast float %8504, %8418
  %8506 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  br label %8507

; <label>:8507                                    ; preds = %8432, %8428
  %8508 = phi float [ %8506, %8432 ], [ 1.000000e+00, %8428 ]
  %8509 = fmul fast float %8425, 5.000000e-01
  %8510 = fadd fast float %8509, 5.000000e-01
  %8511 = call float @dx.op.unary.f32(i32 22, float %8510)  ; Frc(value)
  %8512 = call float @dx.op.unary.f32(i32 27, float %8511)  ; Round_ni(value)
  %8513 = call float @dx.op.unary.f32(i32 22, float %8511)  ; Frc(value)
  %8514 = fmul fast float %8513, 2.000000e+00
  %8515 = fadd fast float %8514, -1.000000e+00
  %8516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8377, float %8378, float %8512, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8517 = extractvalue %dx.types.ResRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.ResRet.f32 %8516, 1
  %8519 = extractvalue %dx.types.ResRet.f32 %8516, 2
  %8520 = extractvalue %dx.types.ResRet.f32 %8516, 3
  %8521 = fadd fast float %8517, -5.000000e-01
  %8522 = fadd fast float %8519, -5.000000e-01
  %8523 = fmul fast float %8521, 0xBFD5555560000000
  %8524 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8522, float %8523)  ; FMad(a,b,c)
  %8525 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8518, float 0.000000e+00)  ; FMad(a,b,c)
  %8526 = fadd fast float %8525, %8520
  %8527 = fmul fast float %8521, -7.500000e-01
  %8528 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8522, float %8527)  ; FMad(a,b,c)
  %8529 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8518, float 0.000000e+00)  ; FMad(a,b,c)
  %8530 = fadd fast float %8529, %8520
  %8531 = call float @dx.op.binary.f32(i32 35, float %8524, float -1.000000e+00)  ; FMax(a,b)
  %8532 = call float @dx.op.binary.f32(i32 35, float %8526, float -1.000000e+00)  ; FMax(a,b)
  %8533 = call float @dx.op.binary.f32(i32 35, float %8528, float -1.000000e+00)  ; FMax(a,b)
  %8534 = call float @dx.op.binary.f32(i32 35, float %8530, float -1.000000e+00)  ; FMax(a,b)
  %8535 = call float @dx.op.binary.f32(i32 36, float %8531, float 1.000000e+00)  ; FMin(a,b)
  %8536 = call float @dx.op.binary.f32(i32 36, float %8532, float 1.000000e+00)  ; FMin(a,b)
  %8537 = call float @dx.op.binary.f32(i32 36, float %8533, float 1.000000e+00)  ; FMin(a,b)
  %8538 = call float @dx.op.binary.f32(i32 36, float %8534, float 1.000000e+00)  ; FMin(a,b)
  %8539 = fcmp fast olt float %8535, 0x3FEFFF8020000000
  br i1 %8539, label %8540, label %8655, !dx.controlflow.hints !176

; <label>:8540                                    ; preds = %8507
  %8541 = extractvalue %dx.types.CBufRet.f32 %8423, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8546 = extractvalue %dx.types.CBufRet.f32 %8542, 3
  %8547 = fsub fast float %8543, %8535
  %8548 = fsub fast float %8544, %8536
  %8549 = fsub fast float %8545, %8537
  %8550 = fsub fast float %8546, %8538
  %8551 = fmul fast float %8547, %8541
  %8552 = fmul fast float %8548, %8541
  %8553 = fmul fast float %8549, %8541
  %8554 = fmul fast float %8550, %8541
  %8555 = fadd fast float %8551, %8535
  %8556 = fadd fast float %8552, %8536
  %8557 = fsub fast float -0.000000e+00, %8556
  %8558 = fadd fast float %8553, %8537
  %8559 = fadd fast float %8554, %8538
  %8560 = fmul fast float %8555, %8555
  %8561 = fsub fast float %8556, %8560
  %8562 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8561)  ; FMax(a,b)
  %8563 = fdiv fast float 1.000000e+00, %8562
  %8564 = fmul fast float %8556, %8555
  %8565 = fsub fast float %8558, %8564
  %8566 = fsub fast float %8515, %8555
  %8567 = fmul fast float %8515, %8515
  %8568 = fsub fast float %8567, %8556
  %8569 = fmul fast float %8566, %8563
  %8570 = fmul fast float %8569, %8565
  %8571 = fsub fast float %8568, %8570
  %8572 = fmul fast float %8556, %8556
  %8573 = fsub fast float %8559, %8572
  %8574 = fmul fast float %8565, %8565
  %8575 = fmul fast float %8574, %8563
  %8576 = fsub fast float %8573, %8575
  %8577 = fdiv fast float %8571, %8576
  %8578 = fmul fast float %8565, %8577
  %8579 = fsub fast float %8566, %8578
  %8580 = fmul fast float %8579, %8563
  %8581 = fmul fast float %8580, %8555
  %8582 = fsub fast float 1.000000e+00, %8581
  %8583 = fmul fast float %8556, %8577
  %8584 = fsub fast float %8582, %8583
  %8585 = fmul fast float %8580, %8580
  %8586 = fmul fast float %8577, 4.000000e+00
  %8587 = fmul fast float %8586, %8584
  %8588 = fsub fast float %8585, %8587
  %8589 = call float @dx.op.unary.f32(i32 24, float %8588)  ; Sqrt(value)
  %8590 = fcmp fast oge float %8580, 0.000000e+00
  %8591 = fsub fast float -0.000000e+00, %8589
  %8592 = select i1 %8590, float %8591, float %8589
  %8593 = fsub fast float %8592, %8580
  %8594 = fdiv fast float %8593, %8577
  %8595 = fdiv fast float %8584, %8593
  %8596 = fmul fast float %8594, 5.000000e-01
  %8597 = fmul fast float %8595, 2.000000e+00
  %8598 = select i1 %8590, float %8596, float %8597
  %8599 = select i1 %8590, float %8597, float %8596
  %8600 = call float @dx.op.binary.f32(i32 35, float %8598, float %8599)  ; FMax(a,b)
  %8601 = call float @dx.op.binary.f32(i32 36, float %8598, float %8599)  ; FMin(a,b)
  %8602 = fcmp fast ogt float %8515, %8601
  br i1 %8602, label %8603, label %8613

; <label>:8603                                    ; preds = %8540
  %8604 = fsub fast float %8515, %8601
  %8605 = fsub fast float %8600, %8601
  %8606 = fmul fast float %8604, %8605
  %8607 = fmul fast float %8600, %8515
  %8608 = fadd fast float %8600, %8515
  %8609 = fmul fast float %8608, %8555
  %8610 = fadd fast float %8607, %8556
  %8611 = fsub fast float %8610, %8609
  %8612 = fdiv fast float %8611, %8606
  br label %8613

; <label>:8613                                    ; preds = %8603, %8540
  %8614 = phi float [ %8612, %8603 ], [ 0.000000e+00, %8540 ]
  %8615 = fcmp fast ogt float %8515, %8600
  %8616 = fsub fast float %8515, %8600
  br i1 %8615, label %8617, label %8627

; <label>:8617                                    ; preds = %8613
  %8618 = fsub fast float %8600, %8601
  %8619 = fmul fast float %8618, %8616
  %8620 = fmul fast float %8601, %8515
  %8621 = fadd fast float %8601, %8515
  %8622 = fmul fast float %8621, %8555
  %8623 = fsub fast float %8557, %8620
  %8624 = fadd fast float %8623, %8622
  %8625 = fdiv fast float %8624, %8619
  %8626 = fadd fast float %8625, %8614
  br label %8627

; <label>:8627                                    ; preds = %8617, %8613
  %8628 = phi float [ %8626, %8617 ], [ %8614, %8613 ]
  %8629 = fsub fast float %8515, %8601
  %8630 = fmul fast float %8629, %8616
  %8631 = fmul fast float %8601, %8600
  %8632 = fadd fast float %8601, %8600
  %8633 = fmul fast float %8632, %8555
  %8634 = fadd fast float %8631, %8556
  %8635 = fsub fast float %8634, %8633
  %8636 = fdiv fast float %8635, %8630
  %8637 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8638 = fcmp fast oeq float %7306, 0.000000e+00
  %8639 = extractvalue %dx.types.CBufRet.f32 %8423, 0
  %8640 = fcmp fast oeq float %8639, 0.000000e+00
  %8641 = or i1 %8638, %8640
  %8642 = fmul fast float %8639, 2.000000e+00
  %8643 = fadd fast float %8424, %8425
  %8644 = fdiv fast float %8643, %8642
  %8645 = call float @dx.op.unary.f32(i32 7, float %8644)  ; Saturate(value)
  %8646 = fmul fast float %8645, 2.000000e+00
  %8647 = fsub fast float 3.000000e+00, %8646
  %8648 = fmul fast float %8645, %8645
  %8649 = fmul fast float %8648, %8647
  %8650 = select i1 %8641, float 1.000000e+00, float %8649
  %8651 = fmul fast float %8636, %7306
  %8652 = fadd fast float %8637, %8651
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = fmul fast float %8650, %8653
  br label %8655

; <label>:8655                                    ; preds = %8627, %8507
  %8656 = phi float [ %8654, %8627 ], [ 0.000000e+00, %8507 ]
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8377, float %8378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8659 = extractvalue %dx.types.ResRet.f32 %8658, 0
  %8660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.i32 %8660, 2
  %8662 = icmp eq i32 %8661, 0
  br i1 %8662, label %8668, label %8663

; <label>:8663                                    ; preds = %8655
  %8664 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8665 = fadd fast float %8659, -1.000000e+00
  %8666 = fmul fast float %8664, %8665
  %8667 = fadd fast float %8666, 1.000000e+00
  br label %8668

; <label>:8668                                    ; preds = %8663, %8655
  %8669 = phi float [ %8667, %8663 ], [ %8657, %8655 ]
  br i1 %8431, label %8670, label %8688

; <label>:8670                                    ; preds = %8668
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 1
  %8673 = fsub fast float %8508, %8672
  %8674 = call float @dx.op.unary.f32(i32 7, float %8673)  ; Saturate(value)
  %8675 = fsub fast float %8508, %8430
  %8676 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  %8677 = fsub fast float %8674, %8676
  %8678 = fsub fast float %8510, %8676
  %8679 = fdiv fast float %8678, %8677
  %8680 = call float @dx.op.unary.f32(i32 7, float %8679)  ; Saturate(value)
  %8681 = fmul fast float %8680, 2.000000e+00
  %8682 = fsub fast float 3.000000e+00, %8681
  %8683 = fsub fast float %8659, %8669
  %8684 = fmul fast float %8680, %8680
  %8685 = fmul fast float %8684, %8683
  %8686 = fmul fast float %8685, %8682
  %8687 = fadd fast float %8686, %8669
  br label %8688

; <label>:8688                                    ; preds = %8670, %8668
  %8689 = phi float [ %8687, %8670 ], [ %8669, %8668 ]
  %8690 = call float @dx.op.binary.f32(i32 35, float %8659, float %8689)  ; FMax(a,b)
  %8691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.i32 %8691, 2
  %8693 = and i32 %8692, 1
  %8694 = icmp eq i32 %8693, 0
  %8695 = fcmp fast une float %8690, 1.000000e+00
  %8696 = and i1 %8695, %8694
  br i1 %8696, label %8697, label %8716

; <label>:8697                                    ; preds = %8688
  %8698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8377, float %8378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8699 = extractvalue %dx.types.ResRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.ResRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.ResRet.f32 %8698, 2
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 1
  %8704 = fmul fast float %8703, %8699
  %8705 = fmul fast float %8703, %8700
  %8706 = fmul fast float %8703, %8701
  %8707 = fcmp fast ogt float %8659, 0x3FEFFF2E40000000
  %8708 = fsub fast float 1.000000e+00, %8690
  %8709 = fsub fast float 1.000000e+00, %8659
  %8710 = fdiv fast float %8708, %8709
  %8711 = call float @dx.op.unary.f32(i32 7, float %8710)  ; Saturate(value)
  %8712 = select i1 %8707, float 0.000000e+00, float %8711
  %8713 = fmul fast float %8704, %8712
  %8714 = fmul fast float %8705, %8712
  %8715 = fmul fast float %8706, %8712
  br label %8716

; <label>:8716                                    ; preds = %8697, %8688
  %8717 = phi float [ 0.000000e+00, %8688 ], [ %8713, %8697 ]
  %8718 = phi float [ 0.000000e+00, %8688 ], [ %8714, %8697 ]
  %8719 = phi float [ 0.000000e+00, %8688 ], [ %8715, %8697 ]
  %8720 = fmul fast float %8717, %7294
  %8721 = fmul fast float %8718, %7294
  %8722 = fmul fast float %8719, %7294
  %8723 = fmul fast float %8690, %8352
  %8724 = call float @dx.op.dot3.f32(i32 55, float %8690, float %8690, float %8690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8725 = call float @dx.op.dot3.f32(i32 55, float %8720, float %8721, float %8722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8726 = select i1 %269, float %8724, float %8690
  %8727 = select i1 %269, float 1.000000e+00, float %8690
  %8728 = select i1 %269, float %8725, float %8720
  %8729 = select i1 %269, float 0.000000e+00, float %8721
  %8730 = select i1 %269, float 0.000000e+00, float %8722
  %8731 = fmul fast float %8726, %8364
  %8732 = fmul fast float %8726, %8365
  %8733 = fmul fast float %8727, %8366
  %8734 = fadd fast float %8731, %8728
  %8735 = fadd fast float %8732, %8729
  %8736 = fadd fast float %8730, %8733
  %8737 = fmul fast float %8726, %8367
  %8738 = fmul fast float %8726, %8368
  %8739 = fmul fast float %8727, %8369
  br label %8740

; <label>:8740                                    ; preds = %8716, %8373, %8342, %7574
  %8741 = phi float [ %7579, %7574 ], [ %8364, %8342 ], [ %8734, %8716 ], [ %8364, %8373 ]
  %8742 = phi float [ %7580, %7574 ], [ %8365, %8342 ], [ %8735, %8716 ], [ %8365, %8373 ]
  %8743 = phi float [ %7581, %7574 ], [ %8366, %8342 ], [ %8736, %8716 ], [ %8366, %8373 ]
  %8744 = phi float [ %7582, %7574 ], [ %8367, %8342 ], [ %8737, %8716 ], [ %8367, %8373 ]
  %8745 = phi float [ %7583, %7574 ], [ %8368, %8342 ], [ %8738, %8716 ], [ %8368, %8373 ]
  %8746 = phi float [ %7584, %7574 ], [ %8369, %8342 ], [ %8739, %8716 ], [ %8369, %8373 ]
  %8747 = phi float [ %7585, %7574 ], [ %8352, %8342 ], [ %8723, %8716 ], [ %8352, %8373 ]
  %8748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8749 = extractvalue %dx.types.CBufRet.f32 %8748, 2
  %8750 = extractvalue %dx.types.CBufRet.f32 %8748, 3
  %8751 = fmul fast float %8749, %110
  %8752 = fmul fast float %8750, %111
  %8753 = call float @dx.op.unary.f32(i32 7, float %8751)  ; Saturate(value)
  %8754 = call float @dx.op.unary.f32(i32 7, float %8752)  ; Saturate(value)
  %8755 = select i1 %7316, i32 2, i32 0
  %8756 = or i32 %8755, 1
  %8757 = uitofp i32 %8756 to float
  %8758 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8753, float %8754, float %8757, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8759 = extractvalue %dx.types.ResRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.ResRet.f32 %8758, 1
  %8761 = extractvalue %dx.types.ResRet.f32 %8758, 2
  %8762 = extractvalue %dx.types.ResRet.f32 %8758, 3
  %8763 = add nuw nsw i32 %8755, 2
  %8764 = uitofp i32 %8763 to float
  %8765 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8753, float %8754, float %8764, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8766 = extractvalue %dx.types.ResRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.ResRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.ResRet.f32 %8765, 2
  %8769 = extractvalue %dx.types.ResRet.f32 %8765, 3
  %8770 = call float @dx.op.binary.f32(i32 35, float %8760, float %8761)  ; FMax(a,b)
  %8771 = call float @dx.op.binary.f32(i32 35, float %8759, float %8770)  ; FMax(a,b)
  %8772 = call float @dx.op.binary.f32(i32 35, float %8771, float %8762)  ; FMax(a,b)
  %8773 = call float @dx.op.binary.f32(i32 36, float %8767, float %8768)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8766, float %8773)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8774, float %8769)  ; FMin(a,b)
  %8776 = fmul fast float %8772, 2.550000e+02
  %8777 = fadd fast float %8776, 0x3F70101020000000
  %8778 = fptoui float %8777 to i32
  %8779 = fmul fast float %8775, 2.550000e+02
  %8780 = fadd fast float %8779, 0x3F70101020000000
  %8781 = fptoui float %8780 to i32
  %8782 = icmp ult i32 %8778, %8781
  br i1 %8782, label %8783, label %8952

; <label>:8783                                    ; preds = %8740
  %8784 = fcmp fast ogt float %100, 9.843750e-01
  %8785 = fadd fast float %7578, -4.000000e+00
  %8786 = select i1 %8784, float -4.000000e+00, float %8785
  %8787 = call float @dx.op.binary.f32(i32 35, float %8786, float 0.000000e+00)  ; FMax(a,b)
  %8788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8789 = extractvalue %dx.types.CBufRet.f32 %8788, 0
  %8790 = fadd fast float %8789, %8787
  %8791 = extractvalue %dx.types.CBufRet.f32 %8788, 2
  %8792 = fmul fast float %8790, %8791
  %8793 = call float @dx.op.unary.f32(i32 23, float %8792)  ; Log(value)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8788, 3
  %8795 = fmul fast float %8794, %8793
  %8796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8796, 2
  %8798 = fmul fast float %8795, %8797
  %8799 = call float @dx.op.unary.f32(i32 7, float %8798)  ; Saturate(value)
  %8800 = uitofp i32 %8778 to float
  %8801 = uitofp i32 %8781 to float
  %8802 = fadd fast float %8800, 5.000000e-01
  %8803 = fadd fast float %8801, 5.000000e-01
  %8804 = fmul fast float %8797, %8802
  %8805 = fmul fast float %8797, %8803
  %8806 = fadd fast float %8804, 0x3F0FFB4800000000
  %8807 = fadd fast float %8805, 0xBF0FFB4800000000
  %8808 = call float @dx.op.binary.f32(i32 35, float %8799, float %8806)  ; FMax(a,b)
  %8809 = call float @dx.op.binary.f32(i32 36, float %8808, float %8807)  ; FMin(a,b)
  %8810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8811 = extractvalue %dx.types.CBufRet.f32 %8810, 1
  %8812 = extractvalue %dx.types.CBufRet.f32 %8810, 2
  %8813 = extractvalue %dx.types.CBufRet.f32 %8810, 0
  %8814 = select i1 %7316, float %8813, float 0.000000e+00
  %8815 = fmul fast float %8811, %8809
  %8816 = fadd fast float %8814, %8815
  %8817 = fadd fast float %8814, %8812
  %8818 = fsub fast float %8811, %8812
  %8819 = fadd fast float %8818, %8814
  %8820 = call float @dx.op.binary.f32(i32 35, float %8816, float %8817)  ; FMax(a,b)
  %8821 = call float @dx.op.binary.f32(i32 36, float %8820, float %8819)  ; FMin(a,b)
  %8822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8753, float %8754, float %8821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8823 = extractvalue %dx.types.ResRet.f32 %8822, 0
  %8824 = extractvalue %dx.types.ResRet.f32 %8822, 1
  %8825 = extractvalue %dx.types.ResRet.f32 %8822, 2
  %8826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8827 = extractvalue %dx.types.CBufRet.i32 %8826, 0
  %8828 = extractvalue %dx.types.CBufRet.i32 %8826, 1
  %8829 = uitofp i32 %8827 to float
  %8830 = uitofp i32 %8828 to float
  %8831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8831, 0
  %8833 = extractvalue %dx.types.CBufRet.f32 %8831, 1
  %8834 = fmul fast float %8829, %8753
  %8835 = fmul fast float %8830, %8754
  %8836 = fadd fast float %8834, -5.000000e-01
  %8837 = fadd fast float %8835, -5.000000e-01
  %8838 = call float @dx.op.unary.f32(i32 22, float %8836)  ; Frc(value)
  %8839 = call float @dx.op.unary.f32(i32 22, float %8837)  ; Frc(value)
  %8840 = fmul fast float %8838, %8838
  %8841 = fmul fast float %8840, %8838
  %8842 = fsub fast float 3.000000e+00, %8838
  %8843 = fmul fast float %8840, %8842
  %8844 = fmul fast float %8838, 3.000000e+00
  %8845 = fmul fast float %8841, 3.000000e+00
  %8846 = fmul fast float %8840, 6.000000e+00
  %8847 = fsub fast float %8845, %8846
  %8848 = fadd fast float %8847, 4.000000e+00
  %8849 = fmul fast float %8848, 0x3FC5555560000000
  %8850 = fmul fast float %8841, -3.000000e+00
  %8851 = fadd fast float %8840, %8838
  %8852 = fmul fast float %8851, 3.000000e+00
  %8853 = fadd fast float %8850, 1.000000e+00
  %8854 = fadd fast float %8853, %8852
  %8855 = fmul fast float %8841, 0x3FC5555560000000
  %8856 = fmul fast float %8839, %8839
  %8857 = fmul fast float %8856, %8839
  %8858 = fsub fast float 3.000000e+00, %8839
  %8859 = fmul fast float %8856, %8858
  %8860 = fmul fast float %8839, 3.000000e+00
  %8861 = fmul fast float %8857, 3.000000e+00
  %8862 = fmul fast float %8856, 6.000000e+00
  %8863 = fsub fast float %8861, %8862
  %8864 = fadd fast float %8863, 4.000000e+00
  %8865 = fmul fast float %8864, 0x3FC5555560000000
  %8866 = fmul fast float %8857, -3.000000e+00
  %8867 = fadd fast float %8856, %8839
  %8868 = fmul fast float %8867, 3.000000e+00
  %8869 = fadd fast float %8866, 1.000000e+00
  %8870 = fadd fast float %8869, %8868
  %8871 = fmul fast float %8857, 0x3FC5555560000000
  %8872 = fadd fast float %8838, 1.000000e+00
  %8873 = fsub fast float 1.000000e+00, %8844
  %8874 = fadd fast float %8873, %8843
  %8875 = fadd fast float %8874, %8848
  %8876 = fmul fast float %8875, 0x3FC5555560000000
  %8877 = fdiv fast float %8849, %8876
  %8878 = fsub fast float %8872, %8877
  %8879 = fsub fast float 1.000000e+00, %8838
  %8880 = fadd fast float %8854, %8841
  %8881 = fmul fast float %8880, 0x3FC5555560000000
  %8882 = fdiv fast float %8855, %8881
  %8883 = fadd fast float %8879, %8882
  %8884 = fadd fast float %8839, 1.000000e+00
  %8885 = fsub fast float 1.000000e+00, %8860
  %8886 = fadd fast float %8885, %8859
  %8887 = fadd fast float %8886, %8864
  %8888 = fmul fast float %8887, 0x3FC5555560000000
  %8889 = fdiv fast float %8865, %8888
  %8890 = fsub fast float %8884, %8889
  %8891 = fsub fast float 1.000000e+00, %8839
  %8892 = fadd fast float %8870, %8857
  %8893 = fmul fast float %8892, 0x3FC5555560000000
  %8894 = fdiv fast float %8871, %8893
  %8895 = fadd fast float %8894, %8891
  %8896 = fmul fast float %8878, %8832
  %8897 = fsub fast float %8753, %8896
  %8898 = fmul fast float %8883, %8832
  %8899 = fadd fast float %8898, %8753
  %8900 = fmul fast float %8895, %8833
  %8901 = fadd fast float %8900, %8754
  %8902 = fmul fast float %8890, %8833
  %8903 = fsub fast float %8754, %8902
  %8904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8897, float %8903, float %8821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8905 = extractvalue %dx.types.ResRet.f32 %8904, 0
  %8906 = extractvalue %dx.types.ResRet.f32 %8904, 1
  %8907 = extractvalue %dx.types.ResRet.f32 %8904, 2
  %8908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8899, float %8903, float %8821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8909 = extractvalue %dx.types.ResRet.f32 %8908, 0
  %8910 = extractvalue %dx.types.ResRet.f32 %8908, 1
  %8911 = extractvalue %dx.types.ResRet.f32 %8908, 2
  %8912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8897, float %8901, float %8821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8913 = extractvalue %dx.types.ResRet.f32 %8912, 0
  %8914 = extractvalue %dx.types.ResRet.f32 %8912, 1
  %8915 = extractvalue %dx.types.ResRet.f32 %8912, 2
  %8916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8899, float %8901, float %8821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8917 = extractvalue %dx.types.ResRet.f32 %8916, 0
  %8918 = extractvalue %dx.types.ResRet.f32 %8916, 1
  %8919 = extractvalue %dx.types.ResRet.f32 %8916, 2
  %8920 = fsub fast float %8913, %8905
  %8921 = fsub fast float %8914, %8906
  %8922 = fsub fast float %8915, %8907
  %8923 = fmul fast float %8920, %8893
  %8924 = fmul fast float %8921, %8893
  %8925 = fmul fast float %8922, %8893
  %8926 = fadd fast float %8923, %8905
  %8927 = fadd fast float %8924, %8906
  %8928 = fadd fast float %8925, %8907
  %8929 = fsub fast float %8917, %8909
  %8930 = fsub fast float %8918, %8910
  %8931 = fsub fast float %8919, %8911
  %8932 = fmul fast float %8929, %8893
  %8933 = fmul fast float %8930, %8893
  %8934 = fmul fast float %8931, %8893
  %8935 = fsub fast float %8909, %8926
  %8936 = fadd fast float %8935, %8932
  %8937 = fsub fast float %8910, %8927
  %8938 = fadd fast float %8937, %8933
  %8939 = fsub fast float %8911, %8928
  %8940 = fadd fast float %8939, %8934
  %8941 = fmul fast float %8936, %8881
  %8942 = fmul fast float %8938, %8881
  %8943 = fmul fast float %8940, %8881
  %8944 = fadd fast float %8941, %8926
  %8945 = fadd fast float %8942, %8927
  %8946 = fadd fast float %8943, %8928
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 1
  %8949 = fmul fast float %8944, %8948
  %8950 = fmul fast float %8945, %8948
  %8951 = fmul fast float %8946, %8948
  br label %8952

; <label>:8952                                    ; preds = %8783, %8740
  %8953 = phi float [ %8823, %8783 ], [ 1.000000e+00, %8740 ]
  %8954 = phi float [ %8824, %8783 ], [ 1.000000e+00, %8740 ]
  %8955 = phi float [ %8825, %8783 ], [ 1.000000e+00, %8740 ]
  %8956 = phi float [ %8949, %8783 ], [ 0.000000e+00, %8740 ]
  %8957 = phi float [ %8950, %8783 ], [ 0.000000e+00, %8740 ]
  %8958 = phi float [ %8951, %8783 ], [ 0.000000e+00, %8740 ]
  %8959 = fmul fast float %8956, %7294
  %8960 = fmul fast float %8957, %7294
  %8961 = fmul fast float %8958, %7294
  %8962 = fmul fast float %8953, %8747
  %8963 = call float @dx.op.dot3.f32(i32 55, float %8953, float %8954, float %8955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8964 = call float @dx.op.dot3.f32(i32 55, float %8959, float %8960, float %8961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8965 = select i1 %269, float %8963, float %8953
  %8966 = select i1 %269, float %8963, float %8954
  %8967 = select i1 %269, float 1.000000e+00, float %8955
  %8968 = select i1 %269, float %8964, float %8959
  %8969 = select i1 %269, float 0.000000e+00, float %8960
  %8970 = select i1 %269, float 0.000000e+00, float %8961
  %8971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.i32 %8971, 3
  %8973 = and i32 %8972, 3
  %8974 = icmp ne i32 %8973, 0
  %8975 = and i32 %8972, 4
  %8976 = icmp ne i32 %8975, 0
  %8977 = and i1 %8974, %8976
  %8978 = and i1 %269, %8977
  br i1 %8978, label %8979, label %8985

; <label>:8979                                    ; preds = %8952
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 1
  %8982 = fadd fast float %8962, -1.000000e+00
  %8983 = fmul fast float %8981, %8982
  %8984 = fadd fast float %8983, 1.000000e+00
  br label %8985

; <label>:8985                                    ; preds = %8979, %8952
  %8986 = phi float [ %8984, %8979 ], [ %8962, %8952 ]
  %8987 = fadd fast float %8744, %8741
  %8988 = fmul fast float %8965, %8987
  %8989 = fadd fast float %8988, %8968
  %8990 = fadd fast float %8745, %8742
  %8991 = fmul fast float %8966, %8990
  %8992 = fadd fast float %8991, %8969
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 0
  br i1 %269, label %8995, label %9018

; <label>:8995                                    ; preds = %8985
  %8996 = fadd fast float %8989, %8992
  %8997 = fmul fast float %8994, %8996
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 3
  %9000 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %9001 = fsub fast float %7303, %7297
  %9002 = fadd fast float %9001, %7304
  %9003 = fsub fast float %9002, %9000
  %9004 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %9005 = fmul fast float %9003, %9004
  %9006 = call float @dx.op.unary.f32(i32 7, float %9005)  ; Saturate(value)
  %9007 = fsub fast float %9006, %8999
  %9008 = fmul fast float %9007, %8986
  %9009 = fadd fast float %9008, %8999
  %9010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9011 = extractvalue %dx.types.CBufRet.f32 %9010, 0
  %9012 = fsub fast float %9009, %9011
  %9013 = fmul fast float %9012, 1.000000e+01
  %9014 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9015 = fmul fast float %9014, %7293
  %9016 = fadd fast float %9015, %7294
  %9017 = fmul fast float %9016, %9009
  br label %9042

; <label>:9018                                    ; preds = %8985
  %9019 = fadd fast float %8746, %8743
  %9020 = fmul fast float %8967, %9019
  %9021 = fadd fast float %9020, %8970
  %9022 = fmul fast float %8994, %8989
  %9023 = fmul fast float %8994, %8992
  %9024 = fmul fast float %8994, %9021
  %9025 = call float @dx.op.binary.f32(i32 35, float %9023, float %9024)  ; FMax(a,b)
  %9026 = call float @dx.op.binary.f32(i32 35, float %9022, float %9025)  ; FMax(a,b)
  %9027 = call float @dx.op.binary.f32(i32 35, float %9026, float %7294)  ; FMax(a,b)
  %9028 = fcmp fast ugt float %9027, 0x3F10000000000000
  br i1 %9028, label %9030, label %9029

; <label>:9029                                    ; preds = %9018
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9030

; <label>:9030                                    ; preds = %9029, %9018
  %9031 = add i32 %56, 356
  %9032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9031, i32 undef)  ; BufferLoad(srv,index,wot)
  %9033 = extractvalue %dx.types.ResRet.i32 %9032, 0
  %9034 = and i32 %9033, 32
  %9035 = icmp eq i32 %9034, 0
  br i1 %9035, label %9042, label %9036

; <label>:9036                                    ; preds = %9030
  %9037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9038 = extractvalue %dx.types.CBufRet.f32 %9037, 0
  %9039 = fmul fast float %9038, 0x3FE99999A0000000
  %9040 = fadd fast float %9038, %9022
  %9041 = fadd fast float %9039, %9024
  br label %9042

; <label>:9042                                    ; preds = %9036, %9030, %8995
  %9043 = phi float [ %8997, %8995 ], [ %9040, %9036 ], [ %9022, %9030 ]
  %9044 = phi float [ %9017, %8995 ], [ %9023, %9036 ], [ %9023, %9030 ]
  %9045 = phi float [ %9016, %8995 ], [ %9041, %9036 ], [ %9024, %9030 ]
  %9046 = phi float [ %9016, %8995 ], [ %7294, %9036 ], [ %7294, %9030 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9047 = call float @dx.op.binary.f32(i32 36, float %9043, float 3.225500e+04)  ; FMin(a,b)
  %9048 = call float @dx.op.binary.f32(i32 36, float %9044, float 3.225500e+04)  ; FMin(a,b)
  %9049 = call float @dx.op.binary.f32(i32 36, float %9045, float 3.225500e+04)  ; FMin(a,b)
  %9050 = call float @dx.op.binary.f32(i32 36, float %9046, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9047)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9048)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9049)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9050)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !97}
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
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
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

