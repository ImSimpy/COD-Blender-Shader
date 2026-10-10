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
; shader hash: f77b523888e7fde28e2b120fcaca7cf1
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
  br i1 %3556, label %4075, label %3557

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
  br i1 %3618, label %4043, label %3619

; <label>:3619                                    ; preds = %3557
  br label %3620

; <label>:3620                                    ; preds = %3742, %3619
  %3621 = phi i32 [ %3644, %3742 ], [ %3617, %3619 ]
  %3622 = phi float [ %3743, %3742 ], [ 0.000000e+00, %3619 ]
  %3623 = phi float [ %3744, %3742 ], [ %1260, %3619 ]
  %3624 = phi float [ %3745, %3742 ], [ %3501, %3619 ]
  %3625 = phi float [ %3746, %3742 ], [ %3480, %3619 ]
  %3626 = phi float [ %3747, %3742 ], [ 0.000000e+00, %3619 ]
  %3627 = phi float [ %3748, %3742 ], [ 0.000000e+00, %3619 ]
  %3628 = phi float [ %3749, %3742 ], [ %3523, %3619 ]
  %3629 = phi float [ %3750, %3742 ], [ %3525, %3619 ]
  %3630 = phi float [ %3751, %3742 ], [ %3527, %3619 ]
  %3631 = phi float [ %3752, %3742 ], [ %3553, %3619 ]
  %3632 = phi float [ %3753, %3742 ], [ %3554, %3619 ]
  %3633 = phi float [ %3754, %3742 ], [ %3555, %3619 ]
  %3634 = phi float [ %3755, %3742 ], [ %3479, %3619 ]
  %3635 = phi float [ %3756, %3742 ], [ %3478, %3619 ]
  %3636 = phi float [ %3757, %3742 ], [ 0.000000e+00, %3619 ]
  %3637 = phi float [ %3758, %3742 ], [ %3477, %3619 ]
  %3638 = phi float [ %3759, %3742 ], [ %3508, %3619 ]
  %3639 = phi float [ %3760, %3742 ], [ %3509, %3619 ]
  %3640 = phi float [ %3761, %3742 ], [ %3510, %3619 ]
  %3641 = shl nuw nsw i32 %3621, 2
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = lshr i32 %3643, 16
  %3645 = shl i32 %3643, 8
  %3646 = and i32 %3645, 16776960
  %3647 = or i32 %3646, 48
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = or i32 %3646, 64
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.i32 %3653, 1
  %3656 = or i32 %3646, 80
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3660 = or i32 %3646, 96
  %3661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = extractvalue %dx.types.ResRet.f32 %3661, 3
  %3666 = or i32 %3646, 112
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3669 = or i32 %3646, 128
  %3670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.f32 %3670, 0
  %3672 = extractvalue %dx.types.ResRet.f32 %3670, 1
  %3673 = extractvalue %dx.types.ResRet.f32 %3670, 2
  %3674 = extractvalue %dx.types.ResRet.f32 %3670, 3
  %3675 = or i32 %3646, 144
  %3676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3680 = extractvalue %dx.types.ResRet.f32 %3676, 3
  %3681 = or i32 %3646, 160
  %3682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3681, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = extractvalue %dx.types.ResRet.f32 %3682, 3
  %3687 = or i32 %3646, 192
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = or i32 %3646, 208
  %3691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = or i32 %3646, 248
  %3694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.ResRet.f32 %3694, 1
  %3697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.f32 %3697, 0
  %3699 = extractvalue %dx.types.ResRet.f32 %3697, 1
  %3700 = extractvalue %dx.types.ResRet.f32 %3697, 2
  %3701 = extractvalue %dx.types.ResRet.f32 %3697, 3
  %3702 = call float @dx.op.dot4.f32(i32 56, float %3698, float %3699, float %3700, float %3701, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3703 = or i32 %3646, 16
  %3704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = extractvalue %dx.types.ResRet.f32 %3704, 3
  %3709 = call float @dx.op.dot4.f32(i32 56, float %3705, float %3706, float %3707, float %3708, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3710 = or i32 %3646, 32
  %3711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.ResRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.ResRet.f32 %3711, 2
  %3715 = extractvalue %dx.types.ResRet.f32 %3711, 3
  %3716 = call float @dx.op.dot4.f32(i32 56, float %3712, float %3713, float %3714, float %3715, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3717 = call float @dx.op.unary.f32(i32 27, float %3702)  ; Round_ni(value)
  %3718 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3719 = call float @dx.op.unary.f32(i32 27, float %3709)  ; Round_ni(value)
  %3720 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3721 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3722 = call float @dx.op.unary.f32(i32 27, float %3721)  ; Round_ni(value)
  %3723 = fadd fast float %3720, %3718
  %3724 = fadd fast float %3723, %3722
  %3725 = fcmp fast oeq float %3724, 0.000000e+00
  %3726 = call float @dx.op.dot4.f32(i32 56, float %3698, float %3699, float %3700, float %3701, float %3564, float %3565, float %3566, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3727 = call float @dx.op.dot4.f32(i32 56, float %3705, float %3706, float %3707, float %3708, float %3564, float %3565, float %3566, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3728 = call float @dx.op.dot4.f32(i32 56, float %3698, float %3699, float %3700, float %3701, float %3567, float %3568, float %3569, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3729 = call float @dx.op.dot4.f32(i32 56, float %3705, float %3706, float %3707, float %3708, float %3567, float %3568, float %3569, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3730 = fsub fast float %3726, %3702
  %3731 = fsub fast float %3728, %3702
  %3732 = fsub fast float %3727, %3709
  %3733 = fsub fast float %3729, %3709
  %3734 = call float @dx.op.dot3.f32(i32 55, float %3649, float %3650, float %3651, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 2
  %3737 = fadd fast float %3736, %3734
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3735, 0
  %3740 = fcmp fast ogt float %3738, %3739
  %3741 = and i1 %3725, %3740
  br i1 %3741, label %3763, label %3742

; <label>:3742                                    ; preds = %4029, %3846, %3763, %3620
  %3743 = phi float [ %3622, %3763 ], [ %3849, %3846 ], [ %3849, %4029 ], [ %3622, %3620 ]
  %3744 = phi float [ %3623, %3763 ], [ %3623, %3846 ], [ %4004, %4029 ], [ %3623, %3620 ]
  %3745 = phi float [ %3624, %3763 ], [ %3624, %3846 ], [ %4003, %4029 ], [ %3624, %3620 ]
  %3746 = phi float [ %3625, %3763 ], [ %3625, %3846 ], [ %4001, %4029 ], [ %3625, %3620 ]
  %3747 = phi float [ %3626, %3763 ], [ %3626, %3846 ], [ %3973, %4029 ], [ %3626, %3620 ]
  %3748 = phi float [ %3627, %3763 ], [ %3627, %3846 ], [ %3971, %4029 ], [ %3627, %3620 ]
  %3749 = phi float [ %3628, %3763 ], [ %3628, %3846 ], [ %4039, %4029 ], [ %3628, %3620 ]
  %3750 = phi float [ %3629, %3763 ], [ %3629, %3846 ], [ %4040, %4029 ], [ %3629, %3620 ]
  %3751 = phi float [ %3630, %3763 ], [ %3630, %3846 ], [ %4041, %4029 ], [ %3630, %3620 ]
  %3752 = phi float [ %3631, %3763 ], [ %3631, %3846 ], [ %3952, %4029 ], [ %3631, %3620 ]
  %3753 = phi float [ %3632, %3763 ], [ %3632, %3846 ], [ %3953, %4029 ], [ %3632, %3620 ]
  %3754 = phi float [ %3633, %3763 ], [ %3633, %3846 ], [ %3954, %4029 ], [ %3633, %3620 ]
  %3755 = phi float [ %3634, %3763 ], [ %3634, %3846 ], [ %3981, %4029 ], [ %3634, %3620 ]
  %3756 = phi float [ %3635, %3763 ], [ %3635, %3846 ], [ %3978, %4029 ], [ %3635, %3620 ]
  %3757 = phi float [ %3636, %3763 ], [ %3636, %3846 ], [ %3975, %4029 ], [ %3636, %3620 ]
  %3758 = phi float [ %3637, %3763 ], [ %3637, %3846 ], [ %3969, %4029 ], [ %3637, %3620 ]
  %3759 = phi float [ %3638, %3763 ], [ %3638, %3846 ], [ %3964, %4029 ], [ %3638, %3620 ]
  %3760 = phi float [ %3639, %3763 ], [ %3639, %3846 ], [ %3965, %4029 ], [ %3639, %3620 ]
  %3761 = phi float [ %3640, %3763 ], [ %3640, %3846 ], [ %3966, %4029 ], [ %3640, %3620 ]
  %3762 = icmp eq i32 %3644, 0
  br i1 %3762, label %4042, label %3620

; <label>:3763                                    ; preds = %3620
  %3764 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3765 = extractvalue %dx.types.ResRet.f32 %3667, 3
  %3766 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3770 = extractvalue %dx.types.ResRet.i32 %3653, 3
  %3771 = extractvalue %dx.types.ResRet.i32 %3653, 2
  %3772 = bitcast float %3764 to i32
  %3773 = add i32 %3770, 0
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3773, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3774, %dx.types.Handle %3775, float %3702, float %3709, float undef, float undef, i32 0, i32 0, i32 undef, float %3730, float %3732, float undef, float %3731, float %3733, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = fmul fast float %3777, %3769
  %3779 = fadd fast float %3778, %3768
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fmul fast float %3702, %3662
  %3782 = call float @dx.op.tertiary.f32(i32 46, float %3663, float %3709, float %3781)  ; FMad(a,b,c)
  %3783 = fadd fast float %3782, %3767
  %3784 = fmul fast float %3702, %3664
  %3785 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3709, float %3784)  ; FMad(a,b,c)
  %3786 = fadd fast float %3785, %3766
  %3787 = fmul fast float %3730, %3662
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3663, float %3732, float %3787)  ; FMad(a,b,c)
  %3789 = fmul fast float %3730, %3664
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3732, float %3789)  ; FMad(a,b,c)
  %3791 = fmul fast float %3731, %3662
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3663, float %3733, float %3791)  ; FMad(a,b,c)
  %3793 = fmul fast float %3731, %3664
  %3794 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3733, float %3793)  ; FMad(a,b,c)
  %3795 = add i32 %3771, 0
  %3796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3795, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3796, %dx.types.Handle %3775, float %3783, float %3786, float undef, float undef, i32 0, i32 0, i32 undef, float %3788, float %3790, float undef, float %3792, float %3794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = and i32 %3772, 1024
  %3800 = icmp ne i32 %3799, 0
  %3801 = fcmp fast ogt float %3798, 0x3FE0101020000000
  %3802 = uitofp i1 %3801 to float
  %3803 = select i1 %3800, float %3802, float %3798
  %3804 = and i32 %3772, 8192
  %3805 = icmp ne i32 %3804, 0
  %3806 = select i1 %3805, float %3765, float 1.000000e+00
  %3807 = fmul fast float %3702, 2.000000e+00
  %3808 = fadd fast float %3807, -1.000000e+00
  %3809 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3810 = fmul fast float %3809, %3695
  %3811 = fsub fast float %3810, %3695
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = fmul fast float %3709, 2.000000e+00
  %3814 = fadd fast float %3813, -1.000000e+00
  %3815 = call float @dx.op.unary.f32(i32 6, float %3814)  ; FAbs(value)
  %3816 = fmul fast float %3815, %3696
  %3817 = fsub fast float %3816, %3696
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = fmul fast float %3721, %3658
  %3820 = fsub fast float %3819, %3658
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = fmul fast float %3780, %3806
  %3823 = fmul fast float %3822, %3777
  %3824 = fmul fast float %3823, %3812
  %3825 = fmul fast float %3824, %3803
  %3826 = fmul fast float %3825, %3818
  %3827 = fmul fast float %3826, %3821
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3830 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3831 = fsub fast float %3738, %3830
  %3832 = fmul fast float %3831, %3829
  %3833 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3834 = fmul fast float %3827, %3659
  %3835 = fadd fast float %3827, %3659
  %3836 = fmul fast float %3835, %3668
  %3837 = fsub fast float %3836, %3668
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = and i32 %3772, 128
  %3840 = icmp ne i32 %3839, 0
  %3841 = select i1 %3840, float %3838, float %3834
  %3842 = fmul fast float %3841, %3833
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 0
  %3845 = fcmp fast ugt float %3842, %3844
  br i1 %3845, label %3846, label %3742

; <label>:3846                                    ; preds = %3763
  %3847 = select i1 %3805, float %3842, float 0.000000e+00
  %3848 = fadd fast float %3847, %3622
  %3849 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  br i1 %3805, label %3742, label %3850

; <label>:3850                                    ; preds = %3846
  %3851 = and i32 %3772, 4
  %3852 = and i32 %3772, 8
  %3853 = add i32 %3654, 0
  %3854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3853, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3856 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3854, %dx.types.Handle %3855, float %3783, float %3786, float undef, float undef, i32 0, i32 0, i32 undef, float %3788, float %3790, float undef, float %3792, float %3794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = bitcast float %3680 to i32
  %3862 = and i32 %3861, 255
  %3863 = uitofp i32 %3862 to float
  %3864 = lshr i32 %3861, 8
  %3865 = and i32 %3864, 255
  %3866 = uitofp i32 %3865 to float
  %3867 = fmul fast float %3860, %3863
  %3868 = fadd fast float %3867, %3866
  %3869 = fmul fast float %3868, 0x3F70101000000000
  %3870 = add i32 %3655, 0
  %3871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3870, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3872 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3871, %dx.types.Handle %3855, float %3783, float %3786, float undef, float undef, i32 0, i32 0, i32 undef, float %3788, float %3790, float undef, float %3792, float %3794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = bitcast float %3674 to i32
  %3878 = and i32 %3877, 255
  %3879 = uitofp i32 %3878 to float
  %3880 = lshr i32 %3877, 8
  %3881 = and i32 %3880, 255
  %3882 = uitofp i32 %3881 to float
  %3883 = lshr i32 %3877, 16
  %3884 = and i32 %3883, 255
  %3885 = uitofp i32 %3884 to float
  %3886 = fmul fast float %3885, 0x3F70101000000000
  %3887 = fmul fast float %3873, %3879
  %3888 = fadd fast float %3887, %3882
  %3889 = fmul fast float %3888, 0x3F70101000000000
  %3890 = fadd fast float %3874, -5.000000e-01
  %3891 = fadd fast float %3876, -5.000000e-01
  %3892 = fmul fast float %3890, %3886
  %3893 = fmul fast float %3891, %3886
  %3894 = fadd fast float %3892, 5.000000e-01
  %3895 = fadd fast float %3893, 5.000000e-01
  %3896 = fmul fast float %3857, %3683
  %3897 = fmul fast float %3858, %3684
  %3898 = fmul fast float %3859, %3685
  %3899 = fmul fast float %3894, 2.000000e+00
  %3900 = fadd fast float %3899, -1.000000e+00
  %3901 = fmul fast float %3895, 2.000000e+00
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = fadd fast float %3900, %3902
  %3904 = fmul fast float %3903, 5.000000e-01
  %3905 = fsub fast float %3900, %3902
  %3906 = fmul fast float %3905, 5.000000e-01
  %3907 = call float @dx.op.unary.f32(i32 6, float %3904)  ; FAbs(value)
  %3908 = fsub fast float 1.000000e+00, %3907
  %3909 = call float @dx.op.unary.f32(i32 6, float %3906)  ; FAbs(value)
  %3910 = fsub fast float %3908, %3909
  %3911 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3906, float %3910, float %3904, float %3906, float %3910)  ; Dot3(ax,ay,az,bx,by,bz)
  %3912 = call float @dx.op.unary.f32(i32 25, float %3911)  ; Rsqrt(value)
  %3913 = fmul fast float %3904, %3912
  %3914 = fmul fast float %3906, %3912
  %3915 = fmul fast float %3912, %3910
  %3916 = fmul fast float %3915, %3649
  %3917 = fmul fast float %3915, %3650
  %3918 = fmul fast float %3915, %3651
  %3919 = fmul fast float %3913, %3671
  %3920 = fmul fast float %3913, %3672
  %3921 = fmul fast float %3913, %3673
  %3922 = fadd fast float %3919, %3916
  %3923 = fadd fast float %3920, %3917
  %3924 = fadd fast float %3921, %3918
  %3925 = fmul fast float %3914, %3677
  %3926 = fmul fast float %3914, %3678
  %3927 = fmul fast float %3914, %3679
  %3928 = fadd fast float %3922, %3925
  %3929 = fadd fast float %3923, %3926
  %3930 = fadd fast float %3924, %3927
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3928, float %3929, float %3930, float %3928, float %3929, float %3930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3928, %3932
  %3934 = fmul fast float %3929, %3932
  %3935 = fmul fast float %3930, %3932
  %3936 = icmp ne i32 %3852, 0
  %3937 = select i1 %3936, float 1.000000e+00, float 0.000000e+00
  %3938 = fmul fast float %3842, %3937
  %3939 = and i32 %3772, 1
  %3940 = icmp eq i32 %3939, 0
  br i1 %3940, label %3941, label %3945

; <label>:3941                                    ; preds = %3850
  %3942 = fsub fast float %3933, %3631
  %3943 = fsub fast float %3934, %3632
  %3944 = fsub fast float %3935, %3633
  br label %3945

; <label>:3945                                    ; preds = %3941, %3850
  %3946 = phi float [ %3942, %3941 ], [ %3933, %3850 ]
  %3947 = phi float [ %3943, %3941 ], [ %3934, %3850 ]
  %3948 = phi float [ %3944, %3941 ], [ %3935, %3850 ]
  %3949 = fmul float %3948, %3938
  %3950 = fmul float %3947, %3938
  %3951 = fmul float %3946, %3938
  %3952 = fadd fast float %3951, %3631
  %3953 = fadd fast float %3950, %3632
  %3954 = fadd fast float %3949, %3633
  %3955 = icmp ne i32 %3851, 0
  %3956 = select i1 %3955, float 1.000000e+00, float 0.000000e+00
  %3957 = fmul fast float %3842, %3956
  %3958 = fsub fast float %3896, %3638
  %3959 = fsub fast float %3897, %3639
  %3960 = fsub fast float %3898, %3640
  %3961 = fmul fast float %3958, %3957
  %3962 = fmul fast float %3959, %3957
  %3963 = fmul fast float %3960, %3957
  %3964 = fadd fast float %3961, %3638
  %3965 = fadd fast float %3962, %3639
  %3966 = fadd fast float %3963, %3640
  %3967 = fsub fast float %3869, %3637
  %3968 = fmul fast float %3967, %3957
  %3969 = fadd fast float %3968, %3637
  %3970 = fmul fast float %3957, %3627
  %3971 = fsub fast float %3627, %3970
  %3972 = fmul fast float %3957, %3626
  %3973 = fsub fast float %3626, %3972
  %3974 = fadd fast float %3842, %3636
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3976 = fsub fast float %3889, %3635
  %3977 = fmul fast float %3976, %3938
  %3978 = fadd fast float %3977, %3635
  %3979 = fsub fast float %3875, %3634
  %3980 = fmul fast float %3979, %3938
  %3981 = fadd fast float %3980, %3634
  %3982 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3897, float %3898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3986 = fmul fast float %3985, %3982
  %3987 = fadd fast float %3986, %3984
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = bitcast float %3686 to i32
  %3990 = and i32 %3989, 65535
  %3991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3990)  ; LegacyF16ToF32(value)
  %3992 = lshr i32 %3989, 16
  %3993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3992)  ; LegacyF16ToF32(value)
  %3994 = fcmp fast oge float %3991, 0.000000e+00
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = select i1 %3994, float %3991, float %3996
  %3998 = fadd fast float %3997, %3993
  %3999 = fsub fast float %3988, %3625
  %4000 = fmul fast float %3999, %3842
  %4001 = fadd fast float %4000, %3625
  %4002 = fmul fast float %3998, %3842
  %4003 = call float @dx.op.binary.f32(i32 35, float %3624, float %4002)  ; FMax(a,b)
  %4004 = call float @dx.op.binary.f32(i32 35, float %3623, float %3842)  ; FMax(a,b)
  %4005 = and i32 %3772, 16
  %4006 = icmp eq i32 %4005, 0
  br i1 %4006, label %4029, label %4007

; <label>:4007                                    ; preds = %3945
  %4008 = bitcast float %3692 to i32
  %4009 = add i32 %3689, 0
  %4010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4009, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4011 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4010, %dx.types.Handle %3855, float %3783, float %3786, float undef, float undef, i32 0, i32 0, i32 undef, float %3788, float %3790, float undef, float %3792, float %3794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = and i32 %4008, 65535
  %4016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4015)  ; LegacyF16ToF32(value)
  %4017 = fmul fast float %4012, %3683
  %4018 = fmul fast float %4013, %3684
  %4019 = fmul fast float %4014, %3685
  %4020 = and i32 %3772, 16384
  %4021 = icmp ne i32 %4020, 0
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = select i1 %4021, float %4023, float 1.000000e+00
  %4025 = fmul fast float %4024, %4016
  %4026 = fmul fast float %4017, %4025
  %4027 = fmul fast float %4018, %4025
  %4028 = fmul fast float %4019, %4025
  br label %4029

; <label>:4029                                    ; preds = %4007, %3945
  %4030 = phi float [ %4026, %4007 ], [ 0.000000e+00, %3945 ]
  %4031 = phi float [ %4027, %4007 ], [ 0.000000e+00, %3945 ]
  %4032 = phi float [ %4028, %4007 ], [ 0.000000e+00, %3945 ]
  %4033 = fsub fast float %4030, %3628
  %4034 = fsub fast float %4031, %3629
  %4035 = fsub fast float %4032, %3630
  %4036 = fmul fast float %4033, %3842
  %4037 = fmul fast float %4034, %3842
  %4038 = fmul fast float %4035, %3842
  %4039 = fadd fast float %4036, %3628
  %4040 = fadd fast float %4037, %3629
  %4041 = fadd fast float %4038, %3630
  br label %3742

; <label>:4042                                    ; preds = %3742
  br label %4043

; <label>:4043                                    ; preds = %4042, %3557
  %4044 = phi float [ 0.000000e+00, %3557 ], [ %3743, %4042 ]
  %4045 = phi float [ %1260, %3557 ], [ %3744, %4042 ]
  %4046 = phi float [ %3501, %3557 ], [ %3745, %4042 ]
  %4047 = phi float [ %3480, %3557 ], [ %3746, %4042 ]
  %4048 = phi float [ 0.000000e+00, %3557 ], [ %3747, %4042 ]
  %4049 = phi float [ 0.000000e+00, %3557 ], [ %3748, %4042 ]
  %4050 = phi float [ %3523, %3557 ], [ %3749, %4042 ]
  %4051 = phi float [ %3525, %3557 ], [ %3750, %4042 ]
  %4052 = phi float [ %3527, %3557 ], [ %3751, %4042 ]
  %4053 = phi float [ %3553, %3557 ], [ %3752, %4042 ]
  %4054 = phi float [ %3554, %3557 ], [ %3753, %4042 ]
  %4055 = phi float [ %3555, %3557 ], [ %3754, %4042 ]
  %4056 = phi float [ %3479, %3557 ], [ %3755, %4042 ]
  %4057 = phi float [ %3478, %3557 ], [ %3756, %4042 ]
  %4058 = phi float [ 0.000000e+00, %3557 ], [ %3757, %4042 ]
  %4059 = phi float [ %3477, %3557 ], [ %3758, %4042 ]
  %4060 = phi float [ %3508, %3557 ], [ %3759, %4042 ]
  %4061 = phi float [ %3509, %3557 ], [ %3760, %4042 ]
  %4062 = phi float [ %3510, %3557 ], [ %3761, %4042 ]
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4053, float %4054, float %4055, float %4053, float %4054, float %4055)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = call float @dx.op.unary.f32(i32 25, float %4063)  ; Rsqrt(value)
  %4065 = fmul fast float %4064, %4053
  %4066 = fmul fast float %4064, %4054
  %4067 = fmul fast float %4064, %4055
  %4068 = fadd fast float %4058, %1260
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4066, float %4067, float %4065, float %4066, float %4067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.unary.f32(i32 25, float %4070)  ; Rsqrt(value)
  %4072 = fmul fast float %4071, %4065
  %4073 = fmul fast float %4071, %4066
  %4074 = fmul fast float %4071, %4067
  br label %4075

; <label>:4075                                    ; preds = %4043, %3468
  %4076 = phi float [ %4072, %4043 ], [ %3553, %3468 ]
  %4077 = phi float [ %4073, %4043 ], [ %3554, %3468 ]
  %4078 = phi float [ %4074, %4043 ], [ %3555, %3468 ]
  %4079 = phi float [ %4060, %4043 ], [ %3508, %3468 ]
  %4080 = phi float [ %4061, %4043 ], [ %3509, %3468 ]
  %4081 = phi float [ %4062, %4043 ], [ %3510, %3468 ]
  %4082 = phi float [ %4050, %4043 ], [ %3523, %3468 ]
  %4083 = phi float [ %4051, %4043 ], [ %3525, %3468 ]
  %4084 = phi float [ %4052, %4043 ], [ %3527, %3468 ]
  %4085 = phi float [ %4059, %4043 ], [ %3477, %3468 ]
  %4086 = phi float [ %4069, %4043 ], [ %1260, %3468 ]
  %4087 = phi float [ %4057, %4043 ], [ %3478, %3468 ]
  %4088 = phi float [ %4056, %4043 ], [ %3479, %3468 ]
  %4089 = phi float [ %4049, %4043 ], [ 0.000000e+00, %3468 ]
  %4090 = phi float [ %4048, %4043 ], [ 0.000000e+00, %3468 ]
  %4091 = phi float [ %4044, %4043 ], [ 0.000000e+00, %3468 ]
  %4092 = phi float [ %4046, %4043 ], [ %3501, %3468 ]
  %4093 = phi float [ %4045, %4043 ], [ %1260, %3468 ]
  %4094 = phi float [ %4047, %4043 ], [ %3480, %3468 ]
  %4095 = fadd fast float %4085, 0xBFB99999A0000000
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, 0x3FF1C71C80000000
  %4098 = call float @dx.op.binary.f32(i32 36, float %4085, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4099 = fsub fast float 1.000000e+00, %4097
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4100, %4079
  %4102 = fmul fast float %4100, %4080
  %4103 = fmul fast float %4100, %4081
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = fmul fast float %4097, %4079
  %4108 = fmul fast float %4097, %4080
  %4109 = fmul fast float %4097, %4081
  %4110 = fadd fast float %4107, %4098
  %4111 = fadd fast float %4108, %4098
  %4112 = fadd fast float %4109, %4098
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.i32 %4117, 3
  %4119 = and i32 %4118, 8
  %4120 = icmp ne i32 %4119, 0
  %4121 = call float @dx.op.binary.f32(i32 35, float %4104, float %4079)  ; FMax(a,b)
  %4122 = call float @dx.op.binary.f32(i32 35, float %4105, float %4079)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float %4106, float %4079)  ; FMax(a,b)
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4105, float %4106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = select i1 %269, float %4079, float %4104
  %4126 = select i1 %269, float %4124, float %4105
  %4127 = select i1 %269, float 1.000000e+00, float %4106
  %4128 = select i1 %4120, float %4121, float %4125
  %4129 = select i1 %4120, float %4122, float %4126
  %4130 = select i1 %4120, float %4123, float %4127
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4135 = fadd fast float %4132, %197
  %4136 = fadd fast float %4133, %198
  %4137 = fadd fast float %4134, %199
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = fsub fast float %4135, %4139
  %4142 = fsub fast float %4136, %4140
  %4143 = fmul fast float %4141, %4141
  %4144 = fmul fast float %4142, %4142
  %4145 = fadd fast float %4143, %4144
  %4146 = call float @dx.op.unary.f32(i32 24, float %4145)  ; Sqrt(value)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4148 = fcmp fast olt float %4146, %4147
  br i1 %4148, label %4149, label %4216

; <label>:4149                                    ; preds = %4075
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4160 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4161 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4162 = fadd fast float %4159, %4135
  %4163 = fadd fast float %4160, %4136
  %4164 = fadd fast float %4161, %4137
  %4165 = fmul fast float %4162, %4151
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4153, float %4165)  ; FMad(a,b,c)
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4162, %4156
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4158, float %4169)  ; FMad(a,b,c)
  %4171 = fsub fast float %4167, %4159
  %4172 = fsub fast float %4170, %4160
  %4173 = fsub fast float %4171, %4139
  %4174 = fadd fast float %4173, %4147
  %4175 = fsub fast float %4172, %4140
  %4176 = fadd fast float %4175, %4147
  %4177 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4178 = fmul fast float %4174, %4177
  %4179 = fmul fast float %4176, %4177
  %4180 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4182 = fsub fast float 1.000000e+00, %4180
  %4183 = fsub fast float 1.000000e+00, %4181
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fcmp fast ugt float %4185, 0.000000e+00
  br i1 %4186, label %4187, label %4490

; <label>:4187                                    ; preds = %4149
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4190 = fmul fast float %4189, %4185
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4192 = fadd fast float %4191, %4190
  %4193 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4194 = fadd fast float %4192, %4161
  %4195 = fmul fast float %4167, %4155
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4158, float %4195)  ; FMad(a,b,c)
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4193, float %4196)  ; FMad(a,b,c)
  %4198 = fsub fast float %4197, %4161
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4201 = fsub fast float %4198, %4200
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = fadd fast float %4207, %4203
  %4211 = fmul fast float %4210, 0x3F847AE140000000
  %4212 = fadd fast float %4208, %4204
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  %4214 = fadd fast float %4209, %4205
  %4215 = fmul fast float %4214, 0x3F847AE140000000
  br label %4490

; <label>:4216                                    ; preds = %4075
  %4217 = and i32 %248, 1
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4490, label %4219

; <label>:4219                                    ; preds = %4216
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4227 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4230 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4231 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4232 = fadd fast float %4229, %4135
  %4233 = fadd fast float %4230, %4136
  %4234 = fadd fast float %4231, %4137
  %4235 = fmul fast float %4232, %4221
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4223, float %4235)  ; FMad(a,b,c)
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4225, float %4236)  ; FMad(a,b,c)
  %4238 = fmul fast float %4232, %4226
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4228, float %4239)  ; FMad(a,b,c)
  %4241 = fsub fast float %4237, %4229
  %4242 = fsub fast float %4240, %4230
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4246 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4247 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 0
  %4252 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4253 = udiv i32 %4252, %4251
  %4254 = fsub fast float %4241, %4244
  %4255 = fsub fast float %4242, %4245
  %4256 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4257 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 36, float %4256, float %4246)  ; FMin(a,b)
  %4259 = call float @dx.op.binary.f32(i32 36, float %4257, float %4247)  ; FMin(a,b)
  %4260 = add i32 %4251, -1
  %4261 = add i32 %4253, -1
  %4262 = fmul fast float %4258, %4249
  %4263 = fmul fast float %4259, %4249
  %4264 = fptoui float %4262 to i32
  %4265 = fptoui float %4263 to i32
  %4266 = call i32 @dx.op.binary.i32(i32 40, i32 %4264, i32 %4260)  ; UMin(a,b)
  %4267 = call i32 @dx.op.binary.i32(i32 40, i32 %4265, i32 %4261)  ; UMin(a,b)
  %4268 = mul i32 %4267, %4251
  %4269 = add i32 %4268, %4266
  %4270 = shl i32 %4269, 2
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = icmp eq i32 %4272, -1
  br i1 %4273, label %4490, label %4274

; <label>:4274                                    ; preds = %4219
  %4275 = mul i32 %4272, 148
  %4276 = add i32 %4275, 4
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4275, 8
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4275, 36
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4275, 60
  %4286 = add i32 %4275, 92
  %4287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.i32 %4287, 0
  %4289 = add i32 %4275, 116
  %4290 = fsub fast float %4241, %4278
  %4291 = fsub fast float %4242, %4281
  %4292 = fmul fast float %4249, %4290
  %4293 = fmul fast float %4249, %4291
  %4294 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4299 = call float @dx.op.unary.f32(i32 83, float %4294)  ; DerivCoarseX(value)
  %4300 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4301 = call float @dx.op.unary.f32(i32 84, float %4294)  ; DerivCoarseY(value)
  %4302 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4303 = fmul fast float %4299, %4298
  %4304 = fmul fast float %4300, %4298
  %4305 = fmul fast float %4301, %4298
  %4306 = fmul fast float %4302, %4298
  %4307 = call float @dx.op.dot2.f32(i32 54, float %4305, float %4306, float %4305, float %4306)  ; Dot2(ax,ay,bx,by)
  %4308 = call float @dx.op.dot2.f32(i32 54, float %4303, float %4304, float %4303, float %4304)  ; Dot2(ax,ay,bx,by)
  %4309 = call float @dx.op.binary.f32(i32 35, float %4308, float %4307)  ; FMax(a,b)
  %4310 = call float @dx.op.unary.f32(i32 23, float %4309)  ; Log(value)
  %4311 = fmul fast float %4310, 5.000000e-01
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4314 = fadd fast float %4313, %4311
  %4315 = call float @dx.op.binary.f32(i32 35, float %4314, float 0.000000e+00)  ; FMax(a,b)
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4318 = fadd fast float %4317, %4315
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4321 = fadd fast float %4318, %4320
  %4322 = add i32 %4288, 0
  %4323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4323, i32 0)  ; GetDimensions(handle,mipLevel)
  %4325 = extractvalue %dx.types.Dimensions %4324, 0
  %4326 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4325)  ; FirstbitLo(value)
  %4327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.i32 %4327, 1
  %4329 = sub nsw i32 %4328, %4326
  %4330 = sitofp i32 %4329 to float
  %4331 = fsub fast float %4321, %4330
  %4332 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4323, %dx.types.Handle %48, float %4294, float %4296, float %4284, float undef, i32 0, i32 0, i32 undef, float %4332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = fcmp ule float %4334, 0x3FE0101020000000
  %4336 = extractvalue %dx.types.CBufRet.i32 %4327, 0
  %4337 = and i32 %4336, 128
  %4338 = icmp ne i32 %4337, 0
  %4339 = and i1 %4335, %4338
  br i1 %4339, label %4490, label %4340

; <label>:4340                                    ; preds = %4274
  %4341 = add i32 %4275, 20
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = add i32 %4275, 24
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = add i32 %4275, 40
  %4348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = add i32 %4275, 96
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4355 = fmul fast float %4354, %4294
  %4356 = fmul fast float %4354, %4296
  %4357 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4358 = fadd fast float %4355, %4357
  %4359 = fadd fast float %4356, %4357
  %4360 = add i32 %4352, 0
  %4361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4361, i32 0)  ; GetDimensions(handle,mipLevel)
  %4363 = extractvalue %dx.types.Dimensions %4362, 0
  %4364 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4363)  ; FirstbitLo(value)
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 1
  %4367 = sub nsw i32 %4366, %4364
  %4368 = sitofp i32 %4367 to float
  %4369 = fsub fast float %4318, %4368
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4361, %dx.types.Handle %48, float %4358, float %4359, float %4349, float undef, i32 0, i32 0, i32 undef, float %4370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = fmul fast float %4372, %4343
  %4374 = fadd fast float %4373, %4346
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4384 = fadd fast float %4380, %4241
  %4385 = fadd fast float %4382, %4242
  %4386 = fadd fast float %4374, %4383
  %4387 = fmul fast float %4384, %4376
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4377, float %4387)  ; FMad(a,b,c)
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4378, float %4388)  ; FMad(a,b,c)
  %4390 = fsub fast float %4389, %4383
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 2
  %4393 = fsub fast float %4390, %4392
  %4394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.i32 %4394, 0
  %4396 = call i32 @dx.op.binary.i32(i32 40, i32 %4272, i32 %4395)  ; UMin(a,b)
  %4397 = mul i32 %4396, 36
  %4398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.i32 %4398, 0
  %4400 = add i32 %4397, 4
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = fmul fast float %4402, %4294
  %4404 = fmul fast float %4402, %4296
  %4405 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4406 = fadd fast float %4403, %4405
  %4407 = fadd fast float %4404, %4405
  %4408 = icmp eq i32 %4399, 0
  br i1 %4408, label %4477, label %4409

; <label>:4409                                    ; preds = %4340
  br label %4410

; <label>:4410                                    ; preds = %4467, %4409
  %4411 = phi float [ %4468, %4467 ], [ 0.000000e+00, %4409 ]
  %4412 = phi float [ %4469, %4467 ], [ 0.000000e+00, %4409 ]
  %4413 = phi float [ %4470, %4467 ], [ 0.000000e+00, %4409 ]
  %4414 = phi float [ %4471, %4467 ], [ 0.000000e+00, %4409 ]
  %4415 = phi float [ %4472, %4467 ], [ 0.000000e+00, %4409 ]
  %4416 = phi float [ %4473, %4467 ], [ 0.000000e+00, %4409 ]
  %4417 = phi i32 [ %4474, %4467 ], [ 0, %4409 ]
  %4418 = shl i32 %4417, 2
  %4419 = add i32 %4285, %4418
  %4420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = add i32 %4289, %4418
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = add i32 %4424, 0
  %4426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4425, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4427 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4426, i32 0)  ; GetDimensions(handle,mipLevel)
  %4428 = extractvalue %dx.types.Dimensions %4427, 0
  %4429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4428)  ; FirstbitLo(value)
  %4430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.i32 %4430, 1
  %4432 = sub nsw i32 %4431, %4429
  %4433 = sitofp i32 %4432 to float
  %4434 = fsub fast float %4318, %4433
  %4435 = call float @dx.op.binary.f32(i32 35, float %4434, float 0.000000e+00)  ; FMax(a,b)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4426, %dx.types.Handle %48, float %4406, float %4407, float %4421, float undef, i32 0, i32 0, i32 undef, float %4435)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = fcmp fast ogt float %4437, 0.000000e+00
  br i1 %4438, label %4439, label %4467

; <label>:4439                                    ; preds = %4410
  %4440 = add i32 %4400, %4418
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = and i32 %4442, 32767
  %4444 = mul nuw nsw i32 %4443, 928
  %4445 = add nuw nsw i32 %4444, 48
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = add nuw nsw i32 %4444, 60
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = fmul fast float %4447, %4437
  %4456 = fmul fast float %4448, %4437
  %4457 = fmul fast float %4449, %4437
  %4458 = fadd fast float %4455, %4411
  %4459 = fadd fast float %4456, %4412
  %4460 = fadd fast float %4457, %4413
  %4461 = fmul fast float %4452, %4437
  %4462 = fmul fast float %4453, %4437
  %4463 = fmul fast float %4454, %4437
  %4464 = fadd fast float %4461, %4414
  %4465 = fadd fast float %4462, %4415
  %4466 = fadd fast float %4463, %4416
  br label %4467

; <label>:4467                                    ; preds = %4439, %4410
  %4468 = phi float [ %4458, %4439 ], [ %4411, %4410 ]
  %4469 = phi float [ %4459, %4439 ], [ %4412, %4410 ]
  %4470 = phi float [ %4460, %4439 ], [ %4413, %4410 ]
  %4471 = phi float [ %4464, %4439 ], [ %4414, %4410 ]
  %4472 = phi float [ %4465, %4439 ], [ %4415, %4410 ]
  %4473 = phi float [ %4466, %4439 ], [ %4416, %4410 ]
  %4474 = add nuw i32 %4417, 1
  %4475 = icmp eq i32 %4474, %4399
  br i1 %4475, label %4476, label %4410

; <label>:4476                                    ; preds = %4467
  br label %4477

; <label>:4477                                    ; preds = %4476, %4340
  %4478 = phi float [ 0.000000e+00, %4340 ], [ %4468, %4476 ]
  %4479 = phi float [ 0.000000e+00, %4340 ], [ %4469, %4476 ]
  %4480 = phi float [ 0.000000e+00, %4340 ], [ %4470, %4476 ]
  %4481 = phi float [ 0.000000e+00, %4340 ], [ %4471, %4476 ]
  %4482 = phi float [ 0.000000e+00, %4340 ], [ %4472, %4476 ]
  %4483 = phi float [ 0.000000e+00, %4340 ], [ %4473, %4476 ]
  %4484 = fadd fast float %4481, %4478
  %4485 = fmul fast float %4484, 0x3F847AE140000000
  %4486 = fadd fast float %4482, %4479
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  %4488 = fadd fast float %4483, %4480
  %4489 = fmul fast float %4488, 0x3F847AE140000000
  br label %4490

; <label>:4490                                    ; preds = %4477, %4274, %4219, %4216, %4187, %4149
  %4491 = phi float [ %4201, %4187 ], [ -1.310720e+05, %4149 ], [ %4393, %4477 ], [ -1.310720e+05, %4219 ], [ -1.310720e+05, %4274 ], [ -1.310720e+05, %4216 ]
  %4492 = phi float [ %4211, %4187 ], [ 0.000000e+00, %4149 ], [ %4485, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4493 = phi float [ %4213, %4187 ], [ 0.000000e+00, %4149 ], [ %4487, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4494 = phi float [ %4215, %4187 ], [ 0.000000e+00, %4149 ], [ %4489, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4495 = phi i1 [ true, %4187 ], [ false, %4149 ], [ true, %4477 ], [ false, %4219 ], [ false, %4274 ], [ false, %4216 ]
  %4496 = and i32 %248, 3
  %4497 = icmp eq i32 %4496, 1
  %4498 = select i1 %4497, float 1.000000e+00, float 0.000000e+00
  %4499 = fsub fast float %4491, %199
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = select i1 %4495, float %4500, float 1.000000e+00
  %4502 = fmul fast float %4501, %4498
  %4503 = icmp eq i32 %4496, 3
  %4504 = select i1 %4503, float 1.000000e+00, float %4502
  %4505 = call float @dx.op.binary.f32(i32 35, float %4091, float %4504)  ; FMax(a,b)
  %4506 = fcmp fast olt float %4504, 1.000000e+00
  %4507 = fcmp uge float %74, 0.000000e+00
  %4508 = and i1 %4507, %4506
  br i1 %4508, label %4509, label %4519

; <label>:4509                                    ; preds = %4490
  %4510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.ResRet.f32 %4510, 1
  %4513 = extractvalue %dx.types.ResRet.f32 %4510, 2
  %4514 = fadd fast float %4511, %4505
  %4515 = fcmp ule float %73, 0.000000e+00
  %4516 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = select i1 %4515, float %4516, float 1.000000e+00
  %4518 = fmul fast float %4517, %4513
  br label %4519

; <label>:4519                                    ; preds = %4509, %4490
  %4520 = phi float [ %4514, %4509 ], [ %4505, %4490 ]
  %4521 = phi float [ %4512, %4509 ], [ 0.000000e+00, %4490 ]
  %4522 = phi float [ %4518, %4509 ], [ 0.000000e+00, %4490 ]
  %4523 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = fcmp fast une float %4524, 0.000000e+00
  %4527 = fcmp fast une float %4525, 0.000000e+00
  %4528 = or i1 %4526, %4527
  br i1 %4528, label %4529, label %5088

; <label>:4529                                    ; preds = %4519
  br i1 %4526, label %4530, label %4803

; <label>:4530                                    ; preds = %4529
  %4531 = call float @dx.op.unary.f32(i32 23, float %4088)  ; Log(value)
  %4532 = fmul fast float %4531, 4.000000e+00
  %4533 = call float @dx.op.unary.f32(i32 21, float %4532)  ; Exp(value)
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4536 = fmul fast float %4535, %60
  %4537 = fmul fast float %4535, %61
  %4538 = fmul fast float %4535, %62
  %4539 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4540 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4541 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4542 = call float @dx.op.unary.f32(i32 23, float %4539)  ; Log(value)
  %4543 = call float @dx.op.unary.f32(i32 23, float %4540)  ; Log(value)
  %4544 = call float @dx.op.unary.f32(i32 23, float %4541)  ; Log(value)
  %4545 = fmul fast float %4542, 4.000000e+00
  %4546 = fmul fast float %4543, 4.000000e+00
  %4547 = fmul fast float %4544, 4.000000e+00
  %4548 = call float @dx.op.unary.f32(i32 21, float %4545)  ; Exp(value)
  %4549 = call float @dx.op.unary.f32(i32 21, float %4546)  ; Exp(value)
  %4550 = call float @dx.op.unary.f32(i32 21, float %4547)  ; Exp(value)
  %4551 = fadd fast float %4549, %4548
  %4552 = fadd fast float %4551, %4550
  %4553 = fdiv fast float 1.000000e+00, %4552
  %4554 = fmul fast float %4553, %4548
  %4555 = fcmp fast ogt float %70, 0.000000e+00
  %4556 = fcmp fast ogt float %71, 0.000000e+00
  %4557 = fcmp fast ogt float %72, 0.000000e+00
  %4558 = fcmp fast olt float %70, 0.000000e+00
  %4559 = fcmp fast olt float %71, 0.000000e+00
  %4560 = fcmp fast olt float %72, 0.000000e+00
  %4561 = zext i1 %4555 to i32
  %4562 = zext i1 %4556 to i32
  %4563 = zext i1 %4557 to i32
  %4564 = zext i1 %4558 to i32
  %4565 = zext i1 %4559 to i32
  %4566 = zext i1 %4560 to i32
  %4567 = sub nsw i32 %4561, %4564
  %4568 = sub nsw i32 %4562, %4565
  %4569 = sub nsw i32 %4563, %4566
  %4570 = call float @dx.op.unary.f32(i32 83, float %4536)  ; DerivCoarseX(value)
  %4571 = call float @dx.op.unary.f32(i32 83, float %4537)  ; DerivCoarseX(value)
  %4572 = call float @dx.op.unary.f32(i32 83, float %4538)  ; DerivCoarseX(value)
  %4573 = call float @dx.op.unary.f32(i32 84, float %4536)  ; DerivCoarseY(value)
  %4574 = call float @dx.op.unary.f32(i32 84, float %4537)  ; DerivCoarseY(value)
  %4575 = call float @dx.op.unary.f32(i32 84, float %4538)  ; DerivCoarseY(value)
  %4576 = fcmp fast ole float %280, %4554
  %4577 = fmul fast float %4553, %4551
  %4578 = fcmp fast ole float %280, %4577
  %4579 = select i1 %4578, float %4538, float %4536
  %4580 = select i1 %4578, float %4536, float %4537
  %4581 = select i1 %4576, float %4537, float %4579
  %4582 = select i1 %4576, float %4538, float %4580
  %4583 = select i1 %4578, float %4572, float %4570
  %4584 = select i1 %4578, float %4570, float %4571
  %4585 = select i1 %4576, float %4571, float %4583
  %4586 = select i1 %4576, float %4572, float %4584
  %4587 = select i1 %4578, float %4575, float %4573
  %4588 = select i1 %4578, float %4573, float %4574
  %4589 = select i1 %4576, float %4574, float %4587
  %4590 = select i1 %4576, float %4575, float %4588
  %4591 = call float @dx.op.unary.f32(i32 27, float %4581)  ; Round_ni(value)
  %4592 = call float @dx.op.unary.f32(i32 27, float %4582)  ; Round_ni(value)
  %4593 = fptosi float %4591 to i32
  %4594 = fptosi float %4592 to i32
  %4595 = xor i32 %4594, %4593
  %4596 = sitofp i32 %4595 to float
  %4597 = fptosi float %4596 to i32
  %4598 = sitofp i32 %4597 to float
  %4599 = fmul fast float %4598, 0x3FE3C6EF40000000
  %4600 = frem fast float %4591, 2.560000e+02
  %4601 = frem fast float %4592, 2.560000e+02
  %4602 = fptoui float %4600 to i32
  %4603 = fptoui float %4601 to i32
  %4604 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4602, i32 %4603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = fadd fast float %4605, %4599
  %4609 = fadd fast float %4606, %4599
  %4610 = fadd fast float %4607, %4599
  %4611 = call float @dx.op.unary.f32(i32 22, float %4608)  ; Frc(value)
  %4612 = call float @dx.op.unary.f32(i32 22, float %4609)  ; Frc(value)
  %4613 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4614 = fmul fast float %4613, 0x401921FB60000000
  %4615 = call float @dx.op.unary.f32(i32 13, float %4614)  ; Sin(value)
  %4616 = call float @dx.op.unary.f32(i32 12, float %4614)  ; Cos(value)
  %4617 = fsub fast float -0.000000e+00, %4616
  %4618 = fmul fast float %4616, %4581
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4582, float %4618)  ; FMad(a,b,c)
  %4620 = fmul fast float %4615, %4581
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4582, float %4620)  ; FMad(a,b,c)
  %4622 = fadd fast float %4619, %4611
  %4623 = fadd fast float %4621, %4612
  %4624 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4625 = bitcast float %4624 to i32
  %4626 = icmp eq i32 %4625, 0
  br i1 %4626, label %4665, label %4627

; <label>:4627                                    ; preds = %4530
  %4628 = add i32 %4625, 0
  %4629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4629, %dx.types.Handle %107, float %4622, float %4623, float undef, float undef, i32 0, i32 0, i32 undef, float %4585, float %4586, float undef, float %4589, float %4590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4635 = fsub fast float 1.000000e+00, %4524
  %4636 = call float @dx.op.binary.f32(i32 35, float %4635, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4637 = bitcast float %4524 to i32
  %4638 = sitofp i32 %4637 to float
  %4639 = fadd fast float %4638, 0xC1CFBF8940000000
  %4640 = fmul fast float %4634, %4639
  %4641 = fadd fast float %4640, 0x41CFBF8940000000
  %4642 = fptosi float %4641 to i32
  %4643 = bitcast i32 %4642 to float
  %4644 = bitcast float %4636 to i32
  %4645 = sitofp i32 %4644 to float
  %4646 = fadd fast float %4645, 0xC1CFBF8940000000
  %4647 = fmul fast float %4646, %4634
  %4648 = fadd fast float %4647, 0x41CFBF8940000000
  %4649 = fptosi float %4648 to i32
  %4650 = bitcast i32 %4649 to float
  %4651 = fmul fast float %4643, %4633
  %4652 = fmul fast float %4650, %4633
  %4653 = fsub fast float %4636, %4651
  %4654 = fadd fast float %4652, %4636
  %4655 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4657 = fsub fast float %4631, %4655
  %4658 = fsub fast float %4656, %4655
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4661, %4657
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fcmp fast olt float %4663, 0x3F70101020000000
  br i1 %4664, label %4803, label %4665

; <label>:4665                                    ; preds = %4627, %4530
  %4666 = phi float [ %4663, %4627 ], [ %4524, %4530 ]
  %4667 = fmul fast float %4666, %4533
  %4668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.i32 %4668, 1
  %4670 = extractvalue %dx.types.CBufRet.i32 %4668, 0
  %4671 = add i32 %4670, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %106, float %4622, float %4623, float undef, float undef, i32 0, i32 0, i32 undef, float %4585, float %4586, float undef, float %4589, float %4590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4673, 3
  %4678 = and i32 %4669, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = lshr i32 %4669, 8
  %4681 = and i32 %4680, 255
  %4682 = uitofp i32 %4681 to float
  %4683 = fmul fast float %4677, %4679
  %4684 = fadd fast float %4683, %4682
  %4685 = fmul fast float %4684, 0x3F70101000000000
  %4686 = fadd fast float %4685, 0xBFB99999A0000000
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fmul fast float %4687, 0x3FF1C71C80000000
  %4689 = call float @dx.op.binary.f32(i32 36, float %4685, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4690 = fsub fast float 1.000000e+00, %4688
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fmul fast float %4691, %4674
  %4693 = fmul fast float %4691, %4675
  %4694 = fmul fast float %4691, %4676
  %4695 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = fmul fast float %4688, %4674
  %4699 = fmul fast float %4688, %4675
  %4700 = fmul fast float %4688, %4676
  %4701 = fadd fast float %4698, %4689
  %4702 = fadd fast float %4699, %4689
  %4703 = fadd fast float %4700, %4689
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.i32 %4707, 3
  %4709 = extractvalue %dx.types.CBufRet.i32 %4707, 2
  %4710 = add i32 %4709, 0
  %4711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4712 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4711, %dx.types.Handle %106, float %4622, float %4623, float undef, float undef, i32 0, i32 0, i32 undef, float %4585, float %4586, float undef, float %4589, float %4590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4716 = extractvalue %dx.types.ResRet.f32 %4712, 3
  %4717 = and i32 %4708, 255
  %4718 = uitofp i32 %4717 to float
  %4719 = lshr i32 %4708, 8
  %4720 = and i32 %4719, 255
  %4721 = uitofp i32 %4720 to float
  %4722 = lshr i32 %4708, 16
  %4723 = and i32 %4722, 255
  %4724 = uitofp i32 %4723 to float
  %4725 = fmul fast float %4724, 0x3F70101000000000
  %4726 = fmul fast float %4713, %4718
  %4727 = fadd fast float %4726, %4721
  %4728 = fmul fast float %4727, 0x3F70101000000000
  %4729 = fadd fast float %4714, -5.000000e-01
  %4730 = fadd fast float %4716, -5.000000e-01
  %4731 = fmul fast float %4729, %4725
  %4732 = fmul fast float %4730, %4725
  %4733 = fadd fast float %4731, 5.000000e-01
  %4734 = fadd fast float %4732, 5.000000e-01
  %4735 = fmul fast float %4733, 2.000000e+00
  %4736 = fadd fast float %4735, -1.000000e+00
  %4737 = fmul fast float %4734, 2.000000e+00
  %4738 = fadd fast float %4737, -1.000000e+00
  %4739 = fadd fast float %4736, %4738
  %4740 = fmul fast float %4739, 5.000000e-01
  %4741 = fsub fast float %4736, %4738
  %4742 = fmul fast float %4741, 5.000000e-01
  %4743 = call float @dx.op.unary.f32(i32 6, float %4740)  ; FAbs(value)
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4746 = fsub fast float %4744, %4745
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4742, float %4746, float %4740, float %4742, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = call float @dx.op.unary.f32(i32 25, float %4747)  ; Rsqrt(value)
  %4749 = fmul fast float %4740, %4748
  %4750 = fmul fast float %4742, %4748
  %4751 = select i1 %4578, i32 %4568, i32 %4569
  %4752 = select i1 %4576, i32 %4567, i32 %4751
  %4753 = sitofp i32 %4752 to float
  %4754 = fmul fast float %4746, %4753
  %4755 = fmul fast float %4754, %4748
  %4756 = select i1 %4578, float %4755, float %4750
  %4757 = select i1 %4578, float %4750, float %4755
  %4758 = select i1 %4576, float %4755, float %4749
  %4759 = select i1 %4576, float %4750, float %4756
  %4760 = select i1 %4576, float %4749, float %4757
  %4761 = fsub fast float %4695, %4128
  %4762 = fsub fast float %4696, %4129
  %4763 = fsub fast float %4697, %4130
  %4764 = fmul fast float %4761, %4667
  %4765 = fmul fast float %4762, %4667
  %4766 = fmul fast float %4763, %4667
  %4767 = fadd fast float %4764, %4128
  %4768 = fadd fast float %4765, %4129
  %4769 = fadd fast float %4766, %4130
  %4770 = fsub fast float %4704, %4113
  %4771 = fsub fast float %4705, %4114
  %4772 = fsub fast float %4706, %4115
  %4773 = fmul fast float %4770, %4667
  %4774 = fmul fast float %4771, %4667
  %4775 = fmul fast float %4772, %4667
  %4776 = fadd fast float %4773, %4113
  %4777 = fadd fast float %4774, %4114
  %4778 = fadd fast float %4775, %4115
  %4779 = fadd fast float %4758, %4076
  %4780 = fadd fast float %4759, %4077
  %4781 = fadd fast float %4760, %4078
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %4779, float %4780, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 25, float %4782)  ; Rsqrt(value)
  %4784 = fmul fast float %4779, %4783
  %4785 = fmul fast float %4780, %4783
  %4786 = fmul fast float %4781, %4783
  %4787 = fsub fast float %4784, %4076
  %4788 = fsub fast float %4785, %4077
  %4789 = fsub fast float %4786, %4078
  %4790 = fmul fast float %4787, %4667
  %4791 = fmul fast float %4788, %4667
  %4792 = fmul fast float %4789, %4667
  %4793 = fadd fast float %4790, %4076
  %4794 = fadd fast float %4791, %4077
  %4795 = fadd fast float %4792, %4078
  %4796 = call float @dx.op.binary.f32(i32 36, float %4088, float %4715)  ; FMin(a,b)
  %4797 = fsub fast float %4796, %4088
  %4798 = fmul fast float %4797, %4667
  %4799 = fadd fast float %4798, %4088
  %4800 = fsub fast float %4728, %4116
  %4801 = fmul fast float %4800, %4667
  %4802 = fadd fast float %4801, %4116
  br label %4803

; <label>:4803                                    ; preds = %4665, %4627, %4529
  %4804 = phi float [ %4767, %4665 ], [ %4128, %4627 ], [ %4128, %4529 ]
  %4805 = phi float [ %4768, %4665 ], [ %4129, %4627 ], [ %4129, %4529 ]
  %4806 = phi float [ %4769, %4665 ], [ %4130, %4627 ], [ %4130, %4529 ]
  %4807 = phi float [ %4776, %4665 ], [ %4113, %4627 ], [ %4113, %4529 ]
  %4808 = phi float [ %4777, %4665 ], [ %4114, %4627 ], [ %4114, %4529 ]
  %4809 = phi float [ %4778, %4665 ], [ %4115, %4627 ], [ %4115, %4529 ]
  %4810 = phi float [ %4793, %4665 ], [ %4076, %4627 ], [ %4076, %4529 ]
  %4811 = phi float [ %4794, %4665 ], [ %4077, %4627 ], [ %4077, %4529 ]
  %4812 = phi float [ %4795, %4665 ], [ %4078, %4627 ], [ %4078, %4529 ]
  %4813 = phi float [ %4802, %4665 ], [ %4116, %4627 ], [ %4116, %4529 ]
  %4814 = phi float [ %4799, %4665 ], [ %4088, %4627 ], [ %4088, %4529 ]
  br i1 %4527, label %4815, label %5088

; <label>:4815                                    ; preds = %4803
  %4816 = call float @dx.op.unary.f32(i32 23, float %4814)  ; Log(value)
  %4817 = fmul fast float %4816, 4.000000e+00
  %4818 = call float @dx.op.unary.f32(i32 21, float %4817)  ; Exp(value)
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = fmul fast float %4820, %60
  %4822 = fmul fast float %4820, %61
  %4823 = fmul fast float %4820, %62
  %4824 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4825 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4826 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4827 = call float @dx.op.unary.f32(i32 23, float %4824)  ; Log(value)
  %4828 = call float @dx.op.unary.f32(i32 23, float %4825)  ; Log(value)
  %4829 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4830 = fmul fast float %4827, 4.000000e+00
  %4831 = fmul fast float %4828, 4.000000e+00
  %4832 = fmul fast float %4829, 4.000000e+00
  %4833 = call float @dx.op.unary.f32(i32 21, float %4830)  ; Exp(value)
  %4834 = call float @dx.op.unary.f32(i32 21, float %4831)  ; Exp(value)
  %4835 = call float @dx.op.unary.f32(i32 21, float %4832)  ; Exp(value)
  %4836 = fadd fast float %4834, %4833
  %4837 = fadd fast float %4836, %4835
  %4838 = fdiv fast float 1.000000e+00, %4837
  %4839 = fmul fast float %4838, %4833
  %4840 = fcmp fast ogt float %70, 0.000000e+00
  %4841 = fcmp fast ogt float %71, 0.000000e+00
  %4842 = fcmp fast ogt float %72, 0.000000e+00
  %4843 = fcmp fast olt float %70, 0.000000e+00
  %4844 = fcmp fast olt float %71, 0.000000e+00
  %4845 = fcmp fast olt float %72, 0.000000e+00
  %4846 = zext i1 %4840 to i32
  %4847 = zext i1 %4841 to i32
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = zext i1 %4844 to i32
  %4851 = zext i1 %4845 to i32
  %4852 = sub nsw i32 %4846, %4849
  %4853 = sub nsw i32 %4847, %4850
  %4854 = sub nsw i32 %4848, %4851
  %4855 = call float @dx.op.unary.f32(i32 83, float %4821)  ; DerivCoarseX(value)
  %4856 = call float @dx.op.unary.f32(i32 83, float %4822)  ; DerivCoarseX(value)
  %4857 = call float @dx.op.unary.f32(i32 83, float %4823)  ; DerivCoarseX(value)
  %4858 = call float @dx.op.unary.f32(i32 84, float %4821)  ; DerivCoarseY(value)
  %4859 = call float @dx.op.unary.f32(i32 84, float %4822)  ; DerivCoarseY(value)
  %4860 = call float @dx.op.unary.f32(i32 84, float %4823)  ; DerivCoarseY(value)
  %4861 = fcmp fast ole float %280, %4839
  %4862 = fmul fast float %4838, %4836
  %4863 = fcmp fast ole float %280, %4862
  %4864 = select i1 %4863, float %4823, float %4821
  %4865 = select i1 %4863, float %4821, float %4822
  %4866 = select i1 %4861, float %4822, float %4864
  %4867 = select i1 %4861, float %4823, float %4865
  %4868 = select i1 %4863, float %4857, float %4855
  %4869 = select i1 %4863, float %4855, float %4856
  %4870 = select i1 %4861, float %4856, float %4868
  %4871 = select i1 %4861, float %4857, float %4869
  %4872 = select i1 %4863, float %4860, float %4858
  %4873 = select i1 %4863, float %4858, float %4859
  %4874 = select i1 %4861, float %4859, float %4872
  %4875 = select i1 %4861, float %4860, float %4873
  %4876 = call float @dx.op.unary.f32(i32 27, float %4866)  ; Round_ni(value)
  %4877 = call float @dx.op.unary.f32(i32 27, float %4867)  ; Round_ni(value)
  %4878 = fptosi float %4876 to i32
  %4879 = fptosi float %4877 to i32
  %4880 = xor i32 %4879, %4878
  %4881 = sitofp i32 %4880 to float
  %4882 = fptosi float %4881 to i32
  %4883 = sitofp i32 %4882 to float
  %4884 = fmul fast float %4883, 0x3FE3C6EF40000000
  %4885 = frem fast float %4876, 2.560000e+02
  %4886 = frem fast float %4877, 2.560000e+02
  %4887 = fptoui float %4885 to i32
  %4888 = fptoui float %4886 to i32
  %4889 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4887, i32 %4888, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.ResRet.f32 %4889, 1
  %4892 = extractvalue %dx.types.ResRet.f32 %4889, 2
  %4893 = fadd fast float %4890, %4884
  %4894 = fadd fast float %4891, %4884
  %4895 = fadd fast float %4892, %4884
  %4896 = call float @dx.op.unary.f32(i32 22, float %4893)  ; Frc(value)
  %4897 = call float @dx.op.unary.f32(i32 22, float %4894)  ; Frc(value)
  %4898 = call float @dx.op.unary.f32(i32 22, float %4895)  ; Frc(value)
  %4899 = fmul fast float %4898, 0x401921FB60000000
  %4900 = call float @dx.op.unary.f32(i32 13, float %4899)  ; Sin(value)
  %4901 = call float @dx.op.unary.f32(i32 12, float %4899)  ; Cos(value)
  %4902 = fsub fast float -0.000000e+00, %4901
  %4903 = fmul fast float %4901, %4866
  %4904 = call float @dx.op.tertiary.f32(i32 46, float %4900, float %4867, float %4903)  ; FMad(a,b,c)
  %4905 = fmul fast float %4900, %4866
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4867, float %4905)  ; FMad(a,b,c)
  %4907 = fadd fast float %4904, %4896
  %4908 = fadd fast float %4906, %4897
  %4909 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4910 = bitcast float %4909 to i32
  %4911 = icmp eq i32 %4910, 0
  br i1 %4911, label %4950, label %4912

; <label>:4912                                    ; preds = %4815
  %4913 = add i32 %4910, 0
  %4914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4915 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4914, %dx.types.Handle %107, float %4907, float %4908, float undef, float undef, i32 0, i32 0, i32 undef, float %4870, float %4871, float undef, float %4874, float %4875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 0
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 1
  %4919 = extractvalue %dx.types.CBufRet.f32 %4917, 2
  %4920 = fsub fast float 1.000000e+00, %4525
  %4921 = call float @dx.op.binary.f32(i32 35, float %4920, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4922 = bitcast float %4525 to i32
  %4923 = sitofp i32 %4922 to float
  %4924 = fadd fast float %4923, 0xC1CFBF8940000000
  %4925 = fmul fast float %4919, %4924
  %4926 = fadd fast float %4925, 0x41CFBF8940000000
  %4927 = fptosi float %4926 to i32
  %4928 = bitcast i32 %4927 to float
  %4929 = bitcast float %4921 to i32
  %4930 = sitofp i32 %4929 to float
  %4931 = fadd fast float %4930, 0xC1CFBF8940000000
  %4932 = fmul fast float %4931, %4919
  %4933 = fadd fast float %4932, 0x41CFBF8940000000
  %4934 = fptosi float %4933 to i32
  %4935 = bitcast i32 %4934 to float
  %4936 = fmul fast float %4928, %4918
  %4937 = fmul fast float %4935, %4918
  %4938 = fsub fast float %4921, %4936
  %4939 = fadd fast float %4937, %4921
  %4940 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4942 = fsub fast float %4916, %4940
  %4943 = fsub fast float %4941, %4940
  %4944 = bitcast float %4943 to i32
  %4945 = sub nsw i32 2129859010, %4944
  %4946 = bitcast i32 %4945 to float
  %4947 = fmul fast float %4946, %4942
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fcmp fast olt float %4948, 0x3F70101020000000
  br i1 %4949, label %5088, label %4950

; <label>:4950                                    ; preds = %4912, %4815
  %4951 = phi float [ %4948, %4912 ], [ %4525, %4815 ]
  %4952 = fmul fast float %4951, %4818
  %4953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.i32 %4953, 1
  %4955 = extractvalue %dx.types.CBufRet.i32 %4953, 0
  %4956 = add i32 %4955, 0
  %4957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4957, %dx.types.Handle %106, float %4907, float %4908, float undef, float undef, i32 0, i32 0, i32 undef, float %4870, float %4871, float undef, float %4874, float %4875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = extractvalue %dx.types.ResRet.f32 %4958, 1
  %4961 = extractvalue %dx.types.ResRet.f32 %4958, 2
  %4962 = extractvalue %dx.types.ResRet.f32 %4958, 3
  %4963 = and i32 %4954, 255
  %4964 = uitofp i32 %4963 to float
  %4965 = lshr i32 %4954, 8
  %4966 = and i32 %4965, 255
  %4967 = uitofp i32 %4966 to float
  %4968 = fmul fast float %4962, %4964
  %4969 = fadd fast float %4968, %4967
  %4970 = fmul fast float %4969, 0x3F70101000000000
  %4971 = fadd fast float %4970, 0xBFB99999A0000000
  %4972 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4973 = fmul fast float %4972, 0x3FF1C71C80000000
  %4974 = call float @dx.op.binary.f32(i32 36, float %4970, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4975 = fsub fast float 1.000000e+00, %4973
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4976, %4959
  %4978 = fmul fast float %4976, %4960
  %4979 = fmul fast float %4976, %4961
  %4980 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = fmul fast float %4973, %4959
  %4984 = fmul fast float %4973, %4960
  %4985 = fmul fast float %4973, %4961
  %4986 = fadd fast float %4983, %4974
  %4987 = fadd fast float %4984, %4974
  %4988 = fadd fast float %4985, %4974
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.i32 %4992, 3
  %4994 = extractvalue %dx.types.CBufRet.i32 %4992, 2
  %4995 = add i32 %4994, 0
  %4996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4996, %dx.types.Handle %106, float %4907, float %4908, float undef, float undef, i32 0, i32 0, i32 undef, float %4870, float %4871, float undef, float %4874, float %4875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.ResRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.ResRet.f32 %4997, 2
  %5001 = extractvalue %dx.types.ResRet.f32 %4997, 3
  %5002 = and i32 %4993, 255
  %5003 = uitofp i32 %5002 to float
  %5004 = lshr i32 %4993, 8
  %5005 = and i32 %5004, 255
  %5006 = uitofp i32 %5005 to float
  %5007 = lshr i32 %4993, 16
  %5008 = and i32 %5007, 255
  %5009 = uitofp i32 %5008 to float
  %5010 = fmul fast float %5009, 0x3F70101000000000
  %5011 = fmul fast float %4998, %5003
  %5012 = fadd fast float %5011, %5006
  %5013 = fmul fast float %5012, 0x3F70101000000000
  %5014 = fadd fast float %4999, -5.000000e-01
  %5015 = fadd fast float %5001, -5.000000e-01
  %5016 = fmul fast float %5014, %5010
  %5017 = fmul fast float %5015, %5010
  %5018 = fadd fast float %5016, 5.000000e-01
  %5019 = fadd fast float %5017, 5.000000e-01
  %5020 = fmul fast float %5018, 2.000000e+00
  %5021 = fadd fast float %5020, -1.000000e+00
  %5022 = fmul fast float %5019, 2.000000e+00
  %5023 = fadd fast float %5022, -1.000000e+00
  %5024 = fadd fast float %5021, %5023
  %5025 = fmul fast float %5024, 5.000000e-01
  %5026 = fsub fast float %5021, %5023
  %5027 = fmul fast float %5026, 5.000000e-01
  %5028 = call float @dx.op.unary.f32(i32 6, float %5025)  ; FAbs(value)
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5031 = fsub fast float %5029, %5030
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5027, float %5031, float %5025, float %5027, float %5031)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 25, float %5032)  ; Rsqrt(value)
  %5034 = fmul fast float %5025, %5033
  %5035 = fmul fast float %5027, %5033
  %5036 = select i1 %4863, i32 %4853, i32 %4854
  %5037 = select i1 %4861, i32 %4852, i32 %5036
  %5038 = sitofp i32 %5037 to float
  %5039 = fmul fast float %5031, %5038
  %5040 = fmul fast float %5039, %5033
  %5041 = select i1 %4863, float %5040, float %5035
  %5042 = select i1 %4863, float %5035, float %5040
  %5043 = select i1 %4861, float %5040, float %5034
  %5044 = select i1 %4861, float %5035, float %5041
  %5045 = select i1 %4861, float %5034, float %5042
  %5046 = fsub fast float %4980, %4804
  %5047 = fsub fast float %4981, %4805
  %5048 = fsub fast float %4982, %4806
  %5049 = fmul fast float %5046, %4952
  %5050 = fmul fast float %5047, %4952
  %5051 = fmul fast float %5048, %4952
  %5052 = fadd fast float %5049, %4804
  %5053 = fadd fast float %5050, %4805
  %5054 = fadd fast float %5051, %4806
  %5055 = fsub fast float %4989, %4807
  %5056 = fsub fast float %4990, %4808
  %5057 = fsub fast float %4991, %4809
  %5058 = fmul fast float %5055, %4952
  %5059 = fmul fast float %5056, %4952
  %5060 = fmul fast float %5057, %4952
  %5061 = fadd fast float %5058, %4807
  %5062 = fadd fast float %5059, %4808
  %5063 = fadd fast float %5060, %4809
  %5064 = fadd fast float %5043, %4810
  %5065 = fadd fast float %5044, %4811
  %5066 = fadd fast float %5045, %4812
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 25, float %5067)  ; Rsqrt(value)
  %5069 = fmul fast float %5064, %5068
  %5070 = fmul fast float %5065, %5068
  %5071 = fmul fast float %5066, %5068
  %5072 = fsub fast float %5069, %4810
  %5073 = fsub fast float %5070, %4811
  %5074 = fsub fast float %5071, %4812
  %5075 = fmul fast float %5072, %4952
  %5076 = fmul fast float %5073, %4952
  %5077 = fmul fast float %5074, %4952
  %5078 = fadd fast float %5075, %4810
  %5079 = fadd fast float %5076, %4811
  %5080 = fadd fast float %5077, %4812
  %5081 = call float @dx.op.binary.f32(i32 36, float %4814, float %5000)  ; FMin(a,b)
  %5082 = fsub fast float %5081, %4814
  %5083 = fmul fast float %5082, %4952
  %5084 = fadd fast float %5083, %4814
  %5085 = fsub fast float %5013, %4813
  %5086 = fmul fast float %5085, %4952
  %5087 = fadd fast float %5086, %4813
  br label %5088

; <label>:5088                                    ; preds = %4950, %4912, %4803, %4519
  %5089 = phi float [ %5052, %4950 ], [ %4804, %4912 ], [ %4804, %4803 ], [ %4128, %4519 ]
  %5090 = phi float [ %5053, %4950 ], [ %4805, %4912 ], [ %4805, %4803 ], [ %4129, %4519 ]
  %5091 = phi float [ %5054, %4950 ], [ %4806, %4912 ], [ %4806, %4803 ], [ %4130, %4519 ]
  %5092 = phi float [ %5061, %4950 ], [ %4807, %4912 ], [ %4807, %4803 ], [ %4113, %4519 ]
  %5093 = phi float [ %5062, %4950 ], [ %4808, %4912 ], [ %4808, %4803 ], [ %4114, %4519 ]
  %5094 = phi float [ %5063, %4950 ], [ %4809, %4912 ], [ %4809, %4803 ], [ %4115, %4519 ]
  %5095 = phi float [ %5078, %4950 ], [ %4810, %4912 ], [ %4810, %4803 ], [ %4076, %4519 ]
  %5096 = phi float [ %5079, %4950 ], [ %4811, %4912 ], [ %4811, %4803 ], [ %4077, %4519 ]
  %5097 = phi float [ %5080, %4950 ], [ %4812, %4912 ], [ %4812, %4803 ], [ %4078, %4519 ]
  %5098 = phi float [ %5087, %4950 ], [ %4813, %4912 ], [ %4813, %4803 ], [ %4116, %4519 ]
  %5099 = phi float [ %5084, %4950 ], [ %4814, %4912 ], [ %4814, %4803 ], [ %4088, %4519 ]
  %5100 = fcmp fast une float %4523, 0.000000e+00
  br i1 %5100, label %5101, label %5270

; <label>:5101                                    ; preds = %5088
  %5102 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.unary.f32(i32 25, float %5102)  ; Rsqrt(value)
  %5104 = fmul fast float %197, %5103
  %5105 = fsub fast float -0.000000e+00, %5104
  %5106 = fmul fast float %198, %5103
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fmul fast float %199, %5103
  %5109 = fsub fast float -0.000000e+00, %5108
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5107, float %5109, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = fmul fast float %4523, 2.500000e+00
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = fmul fast float %4523, 0x4013FFFFE0000000
  %5114 = fadd fast float %5113, 0xBFFFFFFFE0000000
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fmul fast float %4523, 0x4004000020000000
  %5117 = fadd fast float %5116, 0xBFF8000040000000
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = fmul fast float %4095, 1.000000e+01
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %5120, 2.000000e+00
  %5122 = fsub fast float 3.000000e+00, %5121
  %5123 = fmul fast float %5120, %5120
  %5124 = fmul fast float %5123, %5122
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = fsub fast float 0x3FE3333340000000, %5098
  %5127 = fmul fast float %5126, 0x400AAAAAA0000000
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = fmul fast float %5125, %5128
  %5130 = fmul fast float %5089, 0x3FEA2B8620000000
  %5131 = fmul fast float %5090, 0x3FEA2B8620000000
  %5132 = fmul fast float %5091, 0x3FEA2B8620000000
  %5133 = fadd fast float %5130, 0x3FC81DFBA0000000
  %5134 = fmul fast float %5133, %5089
  %5135 = fadd fast float %5134, 0x3F910E6020000000
  %5136 = fadd fast float %5131, 0x3FC81DFBA0000000
  %5137 = fmul fast float %5136, %5090
  %5138 = fadd fast float %5137, 0x3F910E6020000000
  %5139 = fadd fast float %5132, 0x3FC81DFBA0000000
  %5140 = fmul fast float %5139, %5091
  %5141 = fadd fast float %5140, 0x3F910E6020000000
  %5142 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5145 = fsub fast float %5142, %5089
  %5146 = fsub fast float %5143, %5090
  %5147 = fsub fast float %5144, %5091
  %5148 = fmul fast float %5145, %5112
  %5149 = fmul fast float %5148, %5129
  %5150 = fmul fast float %5146, %5112
  %5151 = fmul fast float %5150, %5129
  %5152 = fmul fast float %5147, %5112
  %5153 = fmul fast float %5152, %5129
  %5154 = fadd fast float %5149, %5089
  %5155 = fadd fast float %5151, %5090
  %5156 = fadd fast float %5153, %5091
  %5157 = fmul fast float %5099, %5099
  %5158 = fmul fast float %5157, %5157
  %5159 = fadd fast float %5115, 1.000000e+00
  %5160 = fsub fast float %5159, %5129
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = fsub fast float 1.000000e+00, %5158
  %5165 = call float @dx.op.binary.f32(i32 36, float %5161, float %5164)  ; FMin(a,b)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5167 = call float @dx.op.binary.f32(i32 35, float %5165, float %5166)  ; FMax(a,b)
  %5168 = fadd fast float %5163, 0xBFE4CCCCC0000000
  %5169 = fmul fast float %5168, 0x4006DB6DA0000000
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fmul fast float %5170, 2.000000e+00
  %5172 = fsub fast float 3.000000e+00, %5171
  %5173 = bitcast float %5092 to i32
  %5174 = ashr i32 %5173, 1
  %5175 = add nsw i32 %5174, 532487669
  %5176 = bitcast i32 %5175 to float
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = bitcast float %5177 to i32
  %5179 = sub nsw i32 2129859010, %5178
  %5180 = bitcast i32 %5179 to float
  %5181 = fmul fast float %5180, 2.000000e+00
  %5182 = bitcast float %5093 to i32
  %5183 = ashr i32 %5182, 1
  %5184 = add nsw i32 %5183, 532487669
  %5185 = bitcast i32 %5184 to float
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = bitcast i32 %5188 to float
  %5190 = fmul fast float %5189, 2.000000e+00
  %5191 = bitcast float %5094 to i32
  %5192 = ashr i32 %5191, 1
  %5193 = add nsw i32 %5192, 532487669
  %5194 = bitcast i32 %5193 to float
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = bitcast float %5195 to i32
  %5197 = sub nsw i32 2129859010, %5196
  %5198 = bitcast i32 %5197 to float
  %5199 = fmul fast float %5198, 2.000000e+00
  %5200 = fsub fast float 0x4002A9FBE0000000, %5181
  %5201 = fadd fast float %5181, 0x3FD54FDF00000000
  %5202 = bitcast float %5201 to i32
  %5203 = sub nsw i32 2129859010, %5202
  %5204 = bitcast i32 %5203 to float
  %5205 = fmul fast float %5204, %5200
  %5206 = fmul fast float %5205, %5205
  %5207 = fsub fast float 0x4002A9FBE0000000, %5190
  %5208 = fadd fast float %5190, 0x3FD54FDF00000000
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = fmul fast float %5211, %5207
  %5213 = fmul fast float %5212, %5212
  %5214 = fsub fast float 0x4002A9FBE0000000, %5199
  %5215 = fadd fast float %5199, 0x3FD54FDF00000000
  %5216 = bitcast float %5215 to i32
  %5217 = sub nsw i32 2129859010, %5216
  %5218 = bitcast i32 %5217 to float
  %5219 = fmul fast float %5218, %5214
  %5220 = fmul fast float %5219, %5219
  %5221 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5206)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5213)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5220)  ; FMax(a,b)
  %5224 = fsub fast float 1.000000e+00, %5110
  %5225 = fadd fast float %5224, %5125
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = fsub fast float 1.000000e+00, %4504
  %5228 = fmul fast float %5167, %5227
  %5229 = fmul fast float %5170, %5170
  %5230 = fmul fast float %5229, %5228
  %5231 = fmul fast float %5230, %5172
  %5232 = fmul fast float %5227, 0xBFE99999A0000000
  %5233 = fmul fast float %5232, %5112
  %5234 = fmul fast float %5233, %5129
  %5235 = fadd fast float %5234, 1.000000e+00
  %5236 = fadd fast float %5098, -1.000000e+00
  %5237 = fmul fast float %5235, %5236
  %5238 = fadd fast float %5237, 1.000000e+00
  %5239 = fsub fast float %5221, %5092
  %5240 = fsub fast float %5222, %5093
  %5241 = fsub fast float %5223, %5094
  %5242 = fmul fast float %5231, %5239
  %5243 = fmul fast float %5231, %5240
  %5244 = fmul fast float %5231, %5241
  %5245 = fadd fast float %5242, %5092
  %5246 = fadd fast float %5243, %5093
  %5247 = fadd fast float %5244, %5094
  %5248 = fsub fast float %117, %5095
  %5249 = fsub fast float %118, %5096
  %5250 = fsub fast float %119, %5097
  %5251 = fmul fast float %5231, %5248
  %5252 = fmul fast float %5231, %5249
  %5253 = fmul fast float %5231, %5250
  %5254 = fadd fast float %5251, %5095
  %5255 = fadd fast float %5252, %5096
  %5256 = fadd fast float %5253, %5097
  %5257 = fmul fast float %5231, %5226
  %5258 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5259 = fsub fast float 1.000000e+00, %5258
  %5260 = fmul fast float %5257, %5259
  %5261 = fadd fast float %5260, %5258
  %5262 = fsub fast float 1.000000e+00, %5099
  %5263 = fmul fast float %5231, %5262
  %5264 = fadd fast float %5263, %5099
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5254, float %5255, float %5256, float %5254, float %5255, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 25, float %5265)  ; Rsqrt(value)
  %5267 = fmul fast float %5254, %5266
  %5268 = fmul fast float %5255, %5266
  %5269 = fmul fast float %5256, %5266
  br label %5270

; <label>:5270                                    ; preds = %5101, %5088
  %5271 = phi float [ %5154, %5101 ], [ %5089, %5088 ]
  %5272 = phi float [ %5155, %5101 ], [ %5090, %5088 ]
  %5273 = phi float [ %5156, %5101 ], [ %5091, %5088 ]
  %5274 = phi float [ %5245, %5101 ], [ %5092, %5088 ]
  %5275 = phi float [ %5246, %5101 ], [ %5093, %5088 ]
  %5276 = phi float [ %5247, %5101 ], [ %5094, %5088 ]
  %5277 = phi float [ %5267, %5101 ], [ %5095, %5088 ]
  %5278 = phi float [ %5268, %5101 ], [ %5096, %5088 ]
  %5279 = phi float [ %5269, %5101 ], [ %5097, %5088 ]
  %5280 = phi float [ %5261, %5101 ], [ %5098, %5088 ]
  %5281 = phi float [ %5264, %5101 ], [ %5099, %5088 ]
  %5282 = icmp eq i32 %58, 0
  br i1 %5282, label %5313, label %5283

; <label>:5283                                    ; preds = %5270
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 3
  %5287 = fmul fast float %5285, %110
  %5288 = fmul fast float %5286, %111
  %5289 = fmul fast float %5287, 1.024000e+03
  %5290 = fmul fast float %5288, 1.024000e+03
  %5291 = fadd fast float %5289, -5.120000e+02
  %5292 = fadd fast float %5290, -5.120000e+02
  %5293 = fmul fast float %5287, 0x4081BEDF00000000
  %5294 = fadd fast float %5293, 0xC071BEDF00000000
  %5295 = call float @dx.op.unary.f32(i32 22, float %5294)  ; Frc(value)
  %5296 = fmul fast float %5291, %5295
  %5297 = fadd fast float %5296, %5292
  %5298 = fmul fast float %5288, 0x4073BEBE20000000
  %5299 = fadd fast float %5298, 0xC063BEBE20000000
  %5300 = call float @dx.op.unary.f32(i32 22, float %5299)  ; Frc(value)
  %5301 = fmul fast float %5292, %5300
  %5302 = fadd fast float %5301, %5291
  %5303 = fmul fast float %5297, %5302
  %5304 = call float @dx.op.unary.f32(i32 22, float %5303)  ; Frc(value)
  %5305 = add i32 %323, 12
  %5306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.i32 %5306, 0
  %5308 = and i32 %5307, 255
  %5309 = uitofp i32 %5308 to float
  %5310 = fmul fast float %5309, 0x3F70101020000000
  %5311 = fcmp fast olt float %5304, %5310
  br i1 %5311, label %5312, label %5313

; <label>:5312                                    ; preds = %5283
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5313

; <label>:5313                                    ; preds = %5312, %5283, %5270
  %5314 = fsub fast float -0.000000e+00, %199
  %5315 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 25, float %5315)  ; Rsqrt(value)
  %5317 = fmul fast float %5316, %197
  %5318 = fmul fast float %5316, %198
  %5319 = fmul fast float %5316, %199
  %5320 = fsub fast float -0.000000e+00, %5317
  %5321 = fsub fast float -0.000000e+00, %5318
  %5322 = fsub fast float -0.000000e+00, %5319
  %5323 = select i1 %269, float 0.000000e+00, float %5276
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5318, float %5319, float %5277, float %5278, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = fmul fast float %5326, 2.000000e+00
  %5328 = fmul fast float %5327, %5277
  %5329 = fmul fast float %5327, %5278
  %5330 = fmul fast float %5327, %5279
  %5331 = fsub fast float %5317, %5328
  %5332 = fsub fast float %5318, %5329
  %5333 = fsub fast float %5319, %5330
  %5334 = call float @dx.op.binary.f32(i32 36, float %5281, float 1.000000e+00)  ; FMin(a,b)
  %5335 = fsub fast float 1.000000e+00, %5281
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fsub fast float 1.000000e+00, %81
  %5340 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = call float @dx.op.binary.f32(i32 35, float %5340, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5342 = fdiv fast float %5339, %5341
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, 5.000000e-01
  %5346 = fadd fast float %5345, 5.000000e-01
  %5347 = fmul fast float %5346, %81
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fmul fast float %5349, %5342
  %5351 = fadd fast float %5347, %5350
  %5352 = fsub fast float 5.000000e-01, %5345
  %5353 = fmul fast float %5352, %5271
  %5354 = fmul fast float %5352, %5272
  %5355 = fmul fast float %5352, %5273
  %5356 = fadd fast float %5351, %5353
  %5357 = fadd fast float %5351, %5354
  %5358 = fadd fast float %5351, %5355
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5360, 5.000000e-01
  %5362 = fadd fast float %5361, 5.000000e-01
  %5363 = fmul fast float %5362, %81
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5366 = fmul fast float %5365, %5342
  %5367 = fadd fast float %5363, %5366
  %5368 = fsub fast float 5.000000e-01, %5361
  %5369 = fmul fast float %5368, %5271
  %5370 = fmul fast float %5368, %5272
  %5371 = fmul fast float %5368, %5273
  %5372 = fadd fast float %5367, %5369
  %5373 = fadd fast float %5367, %5370
  %5374 = fadd fast float %5367, %5371
  %5375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5375, 0
  %5377 = call float @dx.op.binary.f32(i32 36, float %5271, float %5376)  ; FMin(a,b)
  %5378 = fsub fast float 1.000000e+00, %5334
  %5379 = fmul fast float %5377, %5378
  %5380 = fsub fast float 1.000000e+00, %5379
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = call float @dx.op.binary.f32(i32 36, float %5272, float %5376)  ; FMin(a,b)
  %5385 = fmul fast float %5384, %5378
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = bitcast float %5386 to i32
  %5388 = sub nsw i32 2129859010, %5387
  %5389 = bitcast i32 %5388 to float
  %5390 = call float @dx.op.binary.f32(i32 36, float %5273, float %5376)  ; FMin(a,b)
  %5391 = fmul fast float %5390, %5378
  %5392 = fsub fast float 1.000000e+00, %5391
  %5393 = bitcast float %5392 to i32
  %5394 = sub nsw i32 2129859010, %5393
  %5395 = bitcast i32 %5394 to float
  %5396 = fmul fast float %5334, %82
  %5397 = fmul fast float %5396, %5356
  %5398 = fmul fast float %5397, %5383
  %5399 = fmul fast float %5334, %83
  %5400 = fmul fast float %5399, %5357
  %5401 = fmul fast float %5400, %5389
  %5402 = fmul fast float %5334, %84
  %5403 = fmul fast float %5402, %5358
  %5404 = fmul fast float %5403, %5395
  %5405 = call float @dx.op.binary.f32(i32 36, float %5274, float %5376)  ; FMin(a,b)
  %5406 = fmul fast float %5405, %5378
  %5407 = fsub fast float 1.000000e+00, %5406
  %5408 = bitcast float %5407 to i32
  %5409 = sub nsw i32 2129859010, %5408
  %5410 = bitcast i32 %5409 to float
  %5411 = call float @dx.op.binary.f32(i32 36, float %5275, float %5376)  ; FMin(a,b)
  %5412 = fmul fast float %5411, %5378
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = bitcast float %5413 to i32
  %5415 = sub nsw i32 2129859010, %5414
  %5416 = bitcast i32 %5415 to float
  %5417 = call float @dx.op.binary.f32(i32 36, float %5323, float %5376)  ; FMin(a,b)
  %5418 = fmul fast float %5417, %5378
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = bitcast float %5419 to i32
  %5421 = sub nsw i32 2129859010, %5420
  %5422 = bitcast i32 %5421 to float
  %5423 = fmul fast float %5396, %5372
  %5424 = fmul fast float %5423, %5410
  %5425 = fmul fast float %5399, %5373
  %5426 = fmul fast float %5425, %5416
  %5427 = fmul fast float %5402, %5374
  %5428 = fmul fast float %5427, %5422
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5401, float %5404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = select i1 %269, float 0.000000e+00, float %5398
  %5431 = select i1 %269, float %5429, float %5401
  %5432 = select i1 %269, float 0.000000e+00, float %5404
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5426, float %5428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = select i1 %269, float 0.000000e+00, float %5424
  %5435 = select i1 %269, float %5433, float %5426
  %5436 = select i1 %269, float 0.000000e+00, float %5428
  %5437 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5438 = fmul fast float %5437, %5430
  %5439 = fmul fast float %5437, %5431
  %5440 = fmul fast float %5432, %5437
  %5441 = fmul fast float %5325, 9.843750e-01
  %5442 = fmul fast float %5280, 9.843750e-01
  %5443 = fadd fast float %5441, 7.812500e-03
  %5444 = fadd fast float %5442, 7.812500e-03
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5443, float %5444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 3
  %5448 = fmul fast float %5446, %5274
  %5449 = fmul fast float %5446, %5275
  %5450 = fmul fast float %5446, %5323
  %5451 = fadd fast float %5448, %5447
  %5452 = fadd fast float %5449, %5447
  %5453 = fadd fast float %5450, %5447
  %5454 = fcmp fast ogt float %4089, 0.000000e+00
  br i1 %5454, label %5455, label %5481

; <label>:5455                                    ; preds = %5313
  %5456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %5325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5460 = fadd fast float %5457, -5.000000e-01
  %5461 = fadd fast float %5458, -5.000000e-01
  %5462 = fadd fast float %5459, -5.000000e-01
  %5463 = fsub fast float 1.000000e+00, %5274
  %5464 = fsub fast float 1.000000e+00, %5275
  %5465 = fsub fast float 1.000000e+00, %5323
  %5466 = fmul fast float %5274, 4.000000e+00
  %5467 = fmul fast float %5466, %5463
  %5468 = fmul fast float %5467, %5460
  %5469 = fmul fast float %5275, 4.000000e+00
  %5470 = fmul fast float %5469, %5464
  %5471 = fmul fast float %5470, %5461
  %5472 = fmul fast float %5323, 4.000000e+00
  %5473 = fmul fast float %5472, %5465
  %5474 = fmul fast float %5473, %5462
  %5475 = fadd fast float %5468, %5451
  %5476 = fadd fast float %5471, %5452
  %5477 = fadd fast float %5474, %5453
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  br label %5481

; <label>:5481                                    ; preds = %5455, %5313
  %5482 = phi float [ %5478, %5455 ], [ %5451, %5313 ]
  %5483 = phi float [ %5479, %5455 ], [ %5452, %5313 ]
  %5484 = phi float [ %5480, %5455 ], [ %5453, %5313 ]
  %5485 = call float @dx.op.binary.f32(i32 35, float %5483, float %5484)  ; FMax(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5482, float %5485)  ; FMax(a,b)
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = fmul fast float %197, %197
  %5489 = fmul fast float %198, %198
  %5490 = fadd fast float %5489, %5488
  %5491 = fmul fast float %199, %199
  %5492 = fadd fast float %5490, %5491
  %5493 = call float @dx.op.unary.f32(i32 24, float %5492)  ; Sqrt(value)
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 1
  %5496 = fsub fast float %5493, %5495
  %5497 = extractvalue %dx.types.CBufRet.f32 %5494, 2
  %5498 = fmul fast float %5496, %5497
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5501 = extractvalue %dx.types.CBufRet.f32 %5494, 3
  %5502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5503 = extractvalue %dx.types.ResRet.i32 %5502, 0
  %5504 = and i32 %5503, 4194304
  %5505 = icmp ne i32 %5504, 0
  %5506 = and i32 %5503, 8388608
  %5507 = icmp ne i32 %5506, 0
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5512 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.CBufRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.CBufRet.f32 %5513, 2
  %5517 = extractvalue %dx.types.CBufRet.f32 %5513, 3
  %5518 = select i1 %5505, float %5509, float %5514
  %5519 = select i1 %5505, float %5510, float %5515
  %5520 = select i1 %5505, float %5511, float %5516
  %5521 = select i1 %5505, float %5512, float %5517
  %5522 = select i1 %5507, float 0.000000e+00, float %5521
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5526 = select i1 %5505, float %5524, float %5525
  %5527 = select i1 %5507, float 0.000000e+00, float %5526
  %5528 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5529 = extractvalue %dx.types.CBufRet.f32 %5523, 3
  %5530 = select i1 %5505, float %5528, float %5529
  %5531 = select i1 %5507, float 0.000000e+00, float %5530
  %5532 = fmul fast float %5499, %63
  %5533 = fmul fast float %5532, %5500
  %5534 = fmul fast float %5533, %5527
  %5535 = fmul fast float %5532, %5501
  %5536 = fmul fast float %5535, %5531
  %5537 = fadd fast float %5536, 1.000000e+00
  %5538 = fmul fast float %5487, %5438
  %5539 = fmul fast float %5538, %5537
  %5540 = fmul fast float %5487, %5439
  %5541 = fmul fast float %5540, %5537
  %5542 = fmul fast float %5487, %5440
  %5543 = fmul fast float %5542, %5537
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5272, float %5273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fcmp fast ogt float %5544, 0x3E7FF19E20000000
  %5546 = fdiv fast float 1.000000e+00, %5544
  %5547 = select i1 %5545, float %5546, float 0.000000e+00
  %5548 = fmul fast float %5547, %5271
  %5549 = fmul fast float %5547, %5272
  %5550 = fmul fast float %5547, %5273
  %5551 = fadd fast float %5548, -1.000000e+00
  %5552 = fadd fast float %5549, -1.000000e+00
  %5553 = fadd fast float %5550, -1.000000e+00
  %5554 = fmul fast float %5551, 5.000000e-01
  %5555 = fmul fast float %5552, 5.000000e-01
  %5556 = fmul fast float %5553, 5.000000e-01
  %5557 = fadd fast float %5554, 1.000000e+00
  %5558 = fadd fast float %5555, 1.000000e+00
  %5559 = fadd fast float %5556, 1.000000e+00
  %5560 = fadd fast float %5534, %4090
  %5561 = fsub fast float %5518, %5557
  %5562 = fsub fast float %5519, %5558
  %5563 = fsub fast float %5520, %5559
  %5564 = fmul fast float %5561, %5522
  %5565 = fmul fast float %5562, %5522
  %5566 = fmul fast float %5563, %5522
  %5567 = fadd fast float %5564, %5557
  %5568 = fadd fast float %5565, %5558
  %5569 = fadd fast float %5566, %5559
  %5570 = fmul fast float %5482, %5434
  %5571 = fmul fast float %5483, %5435
  %5572 = fmul fast float %5484, %5436
  %5573 = fsub fast float 1.000000e+00, %5325
  %5574 = bitcast float %5573 to i32
  %5575 = sitofp i32 %5574 to float
  %5576 = fmul fast float %5575, 5.000000e+00
  %5577 = fadd fast float %5576, 0xC1EFBF8940000000
  %5578 = fptosi float %5577 to i32
  %5579 = bitcast i32 %5578 to float
  %5580 = fmul fast float %5560, %5579
  %5581 = fmul fast float %5538, %5580
  %5582 = fmul fast float %5581, %5567
  %5583 = fmul fast float %5540, %5580
  %5584 = fmul fast float %5583, %5568
  %5585 = fmul fast float %5542, %5580
  %5586 = fmul fast float %5585, %5569
  %5587 = fmul fast float %5539, %4086
  %5588 = fmul fast float %5541, %4086
  %5589 = fmul fast float %5543, %4086
  %5590 = fadd fast float %5570, %4082
  %5591 = fadd fast float %5590, %5582
  %5592 = fmul fast float %5591, %4086
  %5593 = fadd fast float %5571, %4083
  %5594 = fadd fast float %5593, %5584
  %5595 = fmul fast float %5594, %4086
  %5596 = fadd fast float %5572, %4084
  %5597 = fadd fast float %5596, %5586
  %5598 = fmul fast float %5597, %4086
  %5599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.f32 %5599, 3
  %5601 = fcmp fast oeq float %5600, 0.000000e+00
  br i1 %5601, label %6686, label %5602

; <label>:5602                                    ; preds = %5481
  %5603 = extractvalue %dx.types.CBufRet.f32 %5599, 0
  %5604 = extractvalue %dx.types.CBufRet.f32 %5599, 1
  %5605 = extractvalue %dx.types.CBufRet.f32 %5599, 2
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = select i1 %269, float %5611, float %5607
  %5615 = select i1 %269, float %5613, float %5608
  %5616 = select i1 %269, float %5612, float %5609
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5619 = fmul fast float %5618, %117
  %5620 = fmul fast float %5618, %118
  %5621 = fmul fast float %5618, %119
  %5622 = fadd fast float %5619, %197
  %5623 = fadd fast float %5620, %198
  %5624 = fadd fast float %5621, %199
  %5625 = fcmp fast olt float %5600, 0.000000e+00
  br i1 %5625, label %6265, label %5626

; <label>:5626                                    ; preds = %5602
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5636 = extractvalue %dx.types.CBufRet.f32 %5632, 3
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5640 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5641 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5642 = fmul fast float %5628, %5622
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %5629, float %5642)  ; FMad(a,b,c)
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %5630, float %5643)  ; FMad(a,b,c)
  %5645 = fadd fast float %5644, %5631
  %5646 = fmul fast float %5633, %5622
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %5634, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %5635, float %5647)  ; FMad(a,b,c)
  %5649 = fadd fast float %5648, %5636
  %5650 = fmul fast float %5638, %5622
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %5639, float %5650)  ; FMad(a,b,c)
  %5652 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %5640, float %5651)  ; FMad(a,b,c)
  %5653 = fadd fast float %5652, %5641
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5656 = fcmp fast une float %5655, 0.000000e+00
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.CBufRet.f32 %5657, 3
  %5661 = fmul fast float %5660, %5645
  %5662 = fmul fast float %5660, %5649
  %5663 = fadd fast float %5661, %5658
  %5664 = fadd fast float %5662, %5659
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.CBufRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5669 = fmul fast float %5668, %5645
  %5670 = fmul fast float %5668, %5649
  %5671 = fadd fast float %5669, %5666
  %5672 = fadd fast float %5670, %5667
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5675 = fsub fast float %5674, %5653
  %5676 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5677 = fmul fast float %5675, %5676
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  br i1 %5656, label %5740, label %5680

; <label>:5680                                    ; preds = %5626
  %5681 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5684 = fadd fast float %5683, %5681
  %5685 = fcmp fast ogt float %5684, 0.000000e+00
  br i1 %5685, label %5686, label %5710

; <label>:5686                                    ; preds = %5680
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.CBufRet.f32 %5687, 1
  %5690 = fsub fast float %5671, %5688
  %5691 = fsub fast float %5672, %5689
  %5692 = fcmp fast olt float %5690, 0.000000e+00
  %5693 = fcmp fast olt float %5691, 0.000000e+00
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5698 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5699 = select i1 %5692, float %5695, float %5697
  %5700 = select i1 %5693, float %5696, float %5698
  %5701 = fmul fast float %5699, %5690
  %5702 = fmul fast float %5700, %5691
  %5703 = call float @dx.op.unary.f32(i32 6, float %5701)  ; FAbs(value)
  %5704 = call float @dx.op.unary.f32(i32 6, float %5702)  ; FAbs(value)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5706 = call float @dx.op.binary.f32(i32 35, float %5703, float %5704)  ; FMax(a,b)
  %5707 = fsub fast float %5705, %5706
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5709 = fmul fast float %5708, %5679
  br label %5710

; <label>:5710                                    ; preds = %5686, %5680
  %5711 = phi float [ %5709, %5686 ], [ 0.000000e+00, %5680 ]
  %5712 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5713 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5714 = fadd fast float %5713, %5712
  %5715 = fcmp fast ogt float %5714, 0.000000e+00
  br i1 %5715, label %5716, label %5740

; <label>:5716                                    ; preds = %5710
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.CBufRet.f32 %5717, 1
  %5720 = fsub fast float %5663, %5718
  %5721 = fsub fast float %5664, %5719
  %5722 = fcmp fast olt float %5720, 0.000000e+00
  %5723 = fcmp fast olt float %5721, 0.000000e+00
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5728 = extractvalue %dx.types.CBufRet.f32 %5724, 3
  %5729 = select i1 %5722, float %5725, float %5727
  %5730 = select i1 %5723, float %5726, float %5728
  %5731 = fmul fast float %5729, %5720
  %5732 = fmul fast float %5730, %5721
  %5733 = call float @dx.op.unary.f32(i32 6, float %5731)  ; FAbs(value)
  %5734 = call float @dx.op.unary.f32(i32 6, float %5732)  ; FAbs(value)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5736 = call float @dx.op.binary.f32(i32 35, float %5733, float %5734)  ; FMax(a,b)
  %5737 = fsub fast float %5735, %5736
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = fmul fast float %5738, %5679
  br label %5740

; <label>:5740                                    ; preds = %5716, %5710, %5626
  %5741 = phi float [ 0.000000e+00, %5626 ], [ %5739, %5716 ], [ 0.000000e+00, %5710 ]
  %5742 = phi float [ 0.000000e+00, %5626 ], [ %5711, %5716 ], [ %5711, %5710 ]
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = fsub fast float %5645, %5747
  %5750 = fsub fast float %5649, %5748
  %5751 = fcmp fast olt float %5749, 0.000000e+00
  %5752 = fcmp fast olt float %5750, 0.000000e+00
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5758 = select i1 %5751, float %5754, float %5756
  %5759 = select i1 %5752, float %5755, float %5757
  %5760 = fmul fast float %5758, %5749
  %5761 = fmul fast float %5759, %5750
  %5762 = call float @dx.op.unary.f32(i32 6, float %5760)  ; FAbs(value)
  %5763 = call float @dx.op.unary.f32(i32 6, float %5761)  ; FAbs(value)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5765 = call float @dx.op.binary.f32(i32 35, float %5762, float %5763)  ; FMax(a,b)
  %5766 = fsub fast float %5764, %5765
  %5767 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5768 = call float @dx.op.binary.f32(i32 36, float %5767, float %5745)  ; FMin(a,b)
  %5769 = fmul fast float %5768, %5679
  %5770 = fsub fast float %5741, %5769
  %5771 = fsub fast float %5742, %5741
  %5772 = fsub fast float %5771, %5769
  %5773 = call float @dx.op.binary.f32(i32 35, float %5741, float %5742)  ; FMax(a,b)
  %5774 = call float @dx.op.binary.f32(i32 35, float %5769, float %5773)  ; FMax(a,b)
  %5775 = fcmp fast olt float %5774, 1.000000e+00
  br i1 %5775, label %5776, label %6174, !dx.controlflow.hints !98

; <label>:5776                                    ; preds = %5740
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = fcmp fast une float %5778, 0.000000e+00
  br i1 %5779, label %5780, label %6174, !dx.controlflow.hints !99

; <label>:5780                                    ; preds = %5776
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5796 = fmul fast float %5782, %5622
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %5783, float %5796)  ; FMad(a,b,c)
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %5784, float %5797)  ; FMad(a,b,c)
  %5799 = fadd fast float %5798, %5785
  %5800 = fmul fast float %5787, %5622
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %5788, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %5789, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5790
  %5804 = fmul fast float %5792, %5622
  %5805 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %5793, float %5804)  ; FMad(a,b,c)
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %5794, float %5805)  ; FMad(a,b,c)
  %5807 = fadd fast float %5806, %5795
  %5808 = fcmp fast oge float %5799, 1.000000e+00
  %5809 = fcmp fast oge float %5803, 1.000000e+00
  %5810 = or i1 %5808, %5809
  %5811 = fcmp fast olt float %5799, 0.000000e+00
  %5812 = fcmp fast olt float %5803, 0.000000e+00
  %5813 = or i1 %5811, %5812
  %5814 = or i1 %5810, %5813
  br i1 %5814, label %6174, label %5815, !dx.controlflow.hints !100

; <label>:5815                                    ; preds = %5780
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.CBufRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.i32 %5820, 2
  %5822 = uitofp i32 %5821 to float
  %5823 = extractvalue %dx.types.CBufRet.i32 %5820, 3
  %5824 = uitofp i32 %5823 to float
  %5825 = extractvalue %dx.types.CBufRet.f32 %5816, 3
  %5826 = fmul fast float %5825, 2.000000e+00
  %5827 = fsub fast float %5799, %5817
  %5828 = fsub fast float %5803, %5818
  %5829 = fmul fast float %5826, %5827
  %5830 = fmul fast float %5826, %5828
  %5831 = fdiv fast float 1.000000e+00, %5605
  %5832 = fmul fast float %5830, %5831
  %5833 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %5834 = fmul fast float %5819, %5624
  %5835 = fmul fast float %5834, %5826
  %5836 = call float @dx.op.unary.f32(i32 6, float %5835)  ; FAbs(value)
  %5837 = call float @dx.op.unary.f32(i32 6, float %5829)  ; FAbs(value)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5836, float %5833)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5837, float %5838)  ; FMax(a,b)
  %5840 = fmul fast float %5839, 2.000000e+00
  %5841 = call float @dx.op.unary.f32(i32 23, float %5840)  ; Log(value)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5841, float %5822)  ; FMax(a,b)
  %5843 = call float @dx.op.unary.f32(i32 22, float %5842)  ; Frc(value)
  %5844 = fadd fast float %5843, 0xBFEA666660000000
  %5845 = fmul fast float %5844, 8.000000e+00
  %5846 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5847 = call float @dx.op.unary.f32(i32 27, float %5842)  ; Round_ni(value)
  %5848 = fadd fast float %5847, %5846
  %5849 = call float @dx.op.binary.f32(i32 36, float %5848, float %5824)  ; FMin(a,b)
  %5850 = call float @dx.op.unary.f32(i32 27, float %5849)  ; Round_ni(value)
  %5851 = fsub fast float -0.000000e+00, %5850
  %5852 = call float @dx.op.unary.f32(i32 21, float %5851)  ; Exp(value)
  %5853 = fmul fast float %5852, %5826
  %5854 = fmul fast float %5853, %5799
  %5855 = fmul fast float %5853, %5803
  %5856 = fmul fast float %5854, 2.500000e-01
  %5857 = fmul fast float %5855, 2.500000e-01
  %5858 = fadd fast float %5856, 5.000000e-01
  %5859 = fadd fast float %5857, 5.000000e-01
  %5860 = fsub fast float %5824, %5822
  %5861 = fptoui float %5860 to i32
  %5862 = add i32 %5861, 320
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5862)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = fcmp fast une float %5849, %5824
  %5867 = fsub fast float %5799, %5864
  %5868 = fsub fast float %5803, %5865
  %5869 = call float @dx.op.unary.f32(i32 6, float %5867)  ; FAbs(value)
  %5870 = call float @dx.op.unary.f32(i32 6, float %5868)  ; FAbs(value)
  %5871 = fmul fast float %5869, %5853
  %5872 = fmul fast float %5870, %5853
  %5873 = fcmp fast olt float %5871, 1.000000e+00
  %5874 = fcmp fast olt float %5872, 1.000000e+00
  %5875 = and i1 %5873, %5874
  %5876 = or i1 %5866, %5875
  br i1 %5876, label %5877, label %6174, !dx.controlflow.hints !101

; <label>:5877                                    ; preds = %5815
  %5878 = fmul fast float %5855, 5.000000e-01
  %5879 = fmul fast float %5854, 5.000000e-01
  %5880 = fadd fast float %5878, 5.000000e-01
  %5881 = fadd fast float %5879, 5.000000e-01
  %5882 = sitofp i32 %5821 to float
  %5883 = fsub fast float %5849, %5882
  %5884 = call float @dx.op.unary.f32(i32 27, float %5883)  ; Round_ni(value)
  %5885 = call float @dx.op.unary.f32(i32 22, float %5849)  ; Frc(value)
  %5886 = call float @dx.op.unary.f32(i32 22, float %5881)  ; Frc(value)
  %5887 = call float @dx.op.unary.f32(i32 22, float %5880)  ; Frc(value)
  %5888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5886, float %5887, float %5884, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5889 = extractvalue %dx.types.ResRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.ResRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.ResRet.f32 %5888, 2
  %5892 = extractvalue %dx.types.ResRet.f32 %5888, 3
  %5893 = fcmp fast ogt float %5885, 0.000000e+00
  br i1 %5893, label %5894, label %5915, !dx.controlflow.hints !102

; <label>:5894                                    ; preds = %5877
  %5895 = fadd fast float %5884, 1.000000e+00
  %5896 = call float @dx.op.unary.f32(i32 22, float %5858)  ; Frc(value)
  %5897 = call float @dx.op.unary.f32(i32 22, float %5859)  ; Frc(value)
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5896, float %5897, float %5895, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.ResRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.ResRet.f32 %5898, 2
  %5902 = extractvalue %dx.types.ResRet.f32 %5898, 3
  %5903 = fsub fast float %5899, %5889
  %5904 = fsub fast float %5900, %5890
  %5905 = fsub fast float %5901, %5891
  %5906 = fsub fast float %5902, %5892
  %5907 = fmul fast float %5903, %5885
  %5908 = fmul fast float %5904, %5885
  %5909 = fmul fast float %5905, %5885
  %5910 = fmul fast float %5906, %5885
  %5911 = fadd fast float %5907, %5889
  %5912 = fadd fast float %5908, %5890
  %5913 = fadd fast float %5909, %5891
  %5914 = fadd fast float %5910, %5892
  br label %5915

; <label>:5915                                    ; preds = %5894, %5877
  %5916 = phi float [ %5911, %5894 ], [ %5889, %5877 ]
  %5917 = phi float [ %5912, %5894 ], [ %5890, %5877 ]
  %5918 = phi float [ %5913, %5894 ], [ %5891, %5877 ]
  %5919 = phi float [ %5914, %5894 ], [ %5892, %5877 ]
  %5920 = fadd fast float %5916, -5.000000e-01
  %5921 = fadd fast float %5918, -5.000000e-01
  %5922 = fmul fast float %5920, 0xBFD5555560000000
  %5923 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5921, float %5922)  ; FMad(a,b,c)
  %5924 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5917, float 0.000000e+00)  ; FMad(a,b,c)
  %5925 = fadd fast float %5924, %5919
  %5926 = fmul fast float %5920, -7.500000e-01
  %5927 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5921, float %5926)  ; FMad(a,b,c)
  %5928 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5917, float 0.000000e+00)  ; FMad(a,b,c)
  %5929 = fadd fast float %5928, %5919
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5936 = extractvalue %dx.types.CBufRet.f32 %5932, 3
  %5937 = fsub fast float %5933, %5923
  %5938 = fsub fast float %5934, %5925
  %5939 = fsub fast float %5935, %5927
  %5940 = fsub fast float %5936, %5929
  %5941 = fmul fast float %5937, %5931
  %5942 = fmul fast float %5938, %5931
  %5943 = fmul fast float %5939, %5931
  %5944 = fmul fast float %5940, %5931
  %5945 = fadd fast float %5941, %5923
  %5946 = fadd fast float %5942, %5925
  %5947 = fadd fast float %5943, %5927
  %5948 = fadd fast float %5944, %5929
  %5949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5950 = extractvalue %dx.types.ResRet.i32 %5949, 0
  %5951 = and i32 %5950, 536870911
  %5952 = uitofp i32 %5951 to float
  %5953 = fmul fast float %5952, %5799
  %5954 = fmul fast float %5952, %5803
  %5955 = fptoui float %5953 to i32
  %5956 = fptoui float %5954 to i32
  %5957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5958 = extractvalue %dx.types.ResRet.i32 %5957, 0
  %5959 = and i32 %5958, 31
  %5960 = lshr i32 %5955, %5959
  %5961 = lshr i32 %5956, %5959
  %5962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5963 = extractvalue %dx.types.ResRet.i32 %5962, 0
  %5964 = and i32 %5963, 31
  %5965 = shl i32 1, %5964
  %5966 = call i32 @dx.op.binary.i32(i32 40, i32 %5965, i32 4)  ; UMin(a,b)
  %5967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5968 = extractvalue %dx.types.ResRet.i32 %5967, 0
  %5969 = extractvalue %dx.types.ResRet.i32 %5967, 1
  %5970 = icmp eq i32 %5966, 0
  br i1 %5970, label %6012, label %5971

; <label>:5971                                    ; preds = %5915
  br label %5972

; <label>:5972                                    ; preds = %6000, %5971
  %5973 = phi i32 [ %6003, %6000 ], [ 0, %5971 ]
  %5974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5975 = extractvalue %dx.types.ResRet.i32 %5974, 0
  %5976 = lshr i32 %5975, 16
  %5977 = and i32 %5976, 31
  %5978 = shl i32 %5961, %5977
  %5979 = add i32 %5978, %5960
  %5980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.i32 %5980, 0
  %5982 = and i32 %5981, 31
  %5983 = shl i32 %5979, %5982
  %5984 = add i32 %5983, %5973
  %5985 = shl i32 %5984, 2
  %5986 = add i32 %5985, 32
  %5987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5986, i32 undef)  ; BufferLoad(srv,index,wot)
  %5988 = extractvalue %dx.types.ResRet.i32 %5987, 0
  %5989 = icmp slt i32 %5988, 0
  %5990 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5973
  %5991 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5973
  %5992 = bitcast float* %5990 to i32*
  %5993 = bitcast float* %5991 to i32*
  br i1 %5989, label %5994, label %6000

; <label>:5994                                    ; preds = %5972
  %5995 = and i32 %5988, 1073741823
  %5996 = add nuw nsw i32 %5995, 20
  %5997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5996, i32 undef)  ; BufferLoad(srv,index,wot)
  %5998 = extractvalue %dx.types.ResRet.i32 %5997, 0
  %5999 = extractvalue %dx.types.ResRet.i32 %5997, 1
  br label %6000

; <label>:6000                                    ; preds = %5994, %5972
  %6001 = phi i32 [ %5998, %5994 ], [ %5968, %5972 ]
  %6002 = phi i32 [ %5999, %5994 ], [ %5969, %5972 ]
  store i32 %6001, i32* %5992, align 4
  store i32 %6002, i32* %5993, align 4
  %6003 = add nuw i32 %5973, 1
  %6004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.i32 %6004, 2
  %6006 = icmp eq i32 %6005, 0
  %6007 = icmp ugt i32 %5988, -1073741825
  %6008 = and i1 %6007, %6006
  %6009 = icmp ult i32 %6003, %5966
  %6010 = and i1 %6008, %6009
  br i1 %6010, label %5972, label %6011

; <label>:6011                                    ; preds = %6000
  br label %6012

; <label>:6012                                    ; preds = %6011, %5915
  %6013 = phi i32 [ 0, %5915 ], [ %6003, %6011 ]
  %6014 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %6015 = fptoui float %6014 to i32
  %6016 = icmp eq i32 %6015, 0
  br i1 %6016, label %6068, label %6017

; <label>:6017                                    ; preds = %6012
  br label %6018

; <label>:6018                                    ; preds = %6063, %6017
  %6019 = phi i32 [ %6064, %6063 ], [ %6013, %6017 ]
  %6020 = phi i32 [ %6065, %6063 ], [ 0, %6017 ]
  %6021 = lshr i32 %6020, 2
  %6022 = and i32 %6020, 3
  %6023 = add nuw nsw i32 %6021, 83
  %6024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6023)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.i32 %6024, 0
  %6026 = extractvalue %dx.types.CBufRet.i32 %6024, 1
  %6027 = extractvalue %dx.types.CBufRet.i32 %6024, 2
  %6028 = extractvalue %dx.types.CBufRet.i32 %6024, 3
  %6029 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6025, i32* %6029, align 4
  %6030 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6026, i32* %6030, align 4
  %6031 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6027, i32* %6031, align 4
  %6032 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6028, i32* %6032, align 4
  %6033 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6022
  %6034 = load i32, i32* %6033, align 4, !tbaa !103, !noalias !107
  %6035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6036 = extractvalue %dx.types.ResRet.i32 %6035, 0
  %6037 = lshr i32 %6036, 16
  %6038 = and i32 %6037, 31
  %6039 = shl i32 %5961, %6038
  %6040 = add i32 %6039, %5960
  %6041 = shl i32 %6040, 2
  %6042 = add i32 %6041, %6034
  %6043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6042, i32 undef)  ; BufferLoad(srv,index,wot)
  %6044 = extractvalue %dx.types.ResRet.i32 %6043, 0
  %6045 = icmp eq i32 %6044, 0
  br i1 %6045, label %6063, label %6046

; <label>:6046                                    ; preds = %6018
  %6047 = icmp slt i32 %6044, 0
  %6048 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6019
  %6049 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6019
  %6050 = bitcast float* %6048 to i32*
  %6051 = bitcast float* %6049 to i32*
  br i1 %6047, label %6052, label %6059

; <label>:6052                                    ; preds = %6046
  %6053 = and i32 %6044, 1073741823
  %6054 = add i32 %6034, 20
  %6055 = add i32 %6054, %6053
  %6056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.i32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.i32 %6056, 1
  br label %6059

; <label>:6059                                    ; preds = %6052, %6046
  %6060 = phi i32 [ %6057, %6052 ], [ %5968, %6046 ]
  %6061 = phi i32 [ %6058, %6052 ], [ %5969, %6046 ]
  store i32 %6060, i32* %6050, align 4
  store i32 %6061, i32* %6051, align 4
  %6062 = add i32 %6019, 1
  br label %6063

; <label>:6063                                    ; preds = %6059, %6018
  %6064 = phi i32 [ %6019, %6018 ], [ %6062, %6059 ]
  %6065 = add nuw i32 %6020, 1
  %6066 = icmp eq i32 %6065, %6015
  br i1 %6066, label %6067, label %6018

; <label>:6067                                    ; preds = %6063
  br label %6068

; <label>:6068                                    ; preds = %6067, %6012
  %6069 = phi i32 [ %6013, %6012 ], [ %6064, %6067 ]
  %6070 = icmp eq i32 %6069, 1
  %6071 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6072 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6070, label %6073, label %6076

; <label>:6073                                    ; preds = %6068
  %6074 = load float, float* %6071, align 4
  %6075 = load float, float* %6072, align 4
  br label %6103

; <label>:6076                                    ; preds = %6068
  %6077 = load float, float* %6071, align 4
  %6078 = load float, float* %6072, align 4
  %6079 = fdiv fast float 1.000000e+00, %6078
  %6080 = fsub fast float %6077, %6079
  %6081 = icmp ugt i32 %6069, 1
  br i1 %6081, label %6082, label %6098

; <label>:6082                                    ; preds = %6076
  br label %6083

; <label>:6083                                    ; preds = %6083, %6082
  %6084 = phi float [ %6093, %6083 ], [ %6080, %6082 ]
  %6085 = phi float [ %6094, %6083 ], [ %6077, %6082 ]
  %6086 = phi i32 [ %6095, %6083 ], [ 1, %6082 ]
  %6087 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6086
  %6088 = load float, float* %6087, align 4
  %6089 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6086
  %6090 = load float, float* %6089, align 4
  %6091 = fdiv fast float 1.000000e+00, %6090
  %6092 = fsub fast float %6088, %6091
  %6093 = call float @dx.op.binary.f32(i32 36, float %6084, float %6092)  ; FMin(a,b)
  %6094 = call float @dx.op.binary.f32(i32 35, float %6085, float %6088)  ; FMax(a,b)
  %6095 = add nuw i32 %6086, 1
  %6096 = icmp eq i32 %6095, %6069
  br i1 %6096, label %6097, label %6083

; <label>:6097                                    ; preds = %6083
  br label %6098

; <label>:6098                                    ; preds = %6097, %6076
  %6099 = phi float [ %6080, %6076 ], [ %6093, %6097 ]
  %6100 = phi float [ %6077, %6076 ], [ %6094, %6097 ]
  %6101 = fsub fast float %6100, %6099
  %6102 = fdiv fast float 1.000000e+00, %6101
  br label %6103

; <label>:6103                                    ; preds = %6098, %6073
  %6104 = phi float [ %6074, %6073 ], [ %6100, %6098 ]
  %6105 = phi float [ %6075, %6073 ], [ %6102, %6098 ]
  %6106 = fadd fast float %5807, %6104
  %6107 = fmul fast float %6106, %6105
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fmul fast float %6108, 2.000000e+00
  %6110 = fsub fast float 1.000000e+00, %6109
  %6111 = fmul fast float %5945, %5945
  %6112 = fsub fast float %5946, %6111
  %6113 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6112)  ; FMax(a,b)
  %6114 = fdiv fast float 1.000000e+00, %6113
  %6115 = fmul fast float %5946, %5945
  %6116 = fsub fast float %5947, %6115
  %6117 = fsub fast float %6110, %5945
  %6118 = fmul fast float %6110, %6110
  %6119 = fsub fast float %6118, %5946
  %6120 = fmul fast float %6114, %6116
  %6121 = fmul fast float %6120, %6117
  %6122 = fsub fast float %6119, %6121
  %6123 = fmul fast float %5946, %5946
  %6124 = fsub fast float %5948, %6123
  %6125 = fmul fast float %6116, %6116
  %6126 = fmul fast float %6125, %6114
  %6127 = fsub fast float %6124, %6126
  %6128 = fdiv fast float %6122, %6127
  %6129 = fmul fast float %6128, %6116
  %6130 = fsub fast float %6117, %6129
  %6131 = fmul fast float %6130, %6114
  %6132 = fmul fast float %6131, %5945
  %6133 = fsub fast float 1.000000e+00, %6132
  %6134 = fmul fast float %6128, %5946
  %6135 = fsub fast float %6133, %6134
  %6136 = fmul fast float %6131, %6131
  %6137 = fmul fast float %6128, 4.000000e+00
  %6138 = fmul fast float %6137, %6135
  %6139 = fsub fast float %6136, %6138
  %6140 = call float @dx.op.unary.f32(i32 24, float %6139)  ; Sqrt(value)
  %6141 = fcmp fast oge float %6131, 0.000000e+00
  %6142 = fsub fast float -0.000000e+00, %6140
  %6143 = select i1 %6141, float %6142, float %6140
  %6144 = fsub fast float %6143, %6131
  %6145 = fdiv fast float %6144, %6128
  %6146 = fdiv fast float %6135, %6144
  %6147 = fmul fast float %6145, 5.000000e-01
  %6148 = fmul fast float %6146, 2.000000e+00
  %6149 = select i1 %6141, float %6147, float %6148
  %6150 = select i1 %6141, float %6148, float %6147
  %6151 = call float @dx.op.binary.f32(i32 35, float %6149, float %6150)  ; FMax(a,b)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6149, float %6150)  ; FMin(a,b)
  %6153 = fcmp fast ogt float %6110, %6151
  %6154 = fsub fast float %6110, %6152
  %6155 = fsub fast float %6110, %6151
  %6156 = fsub fast float %6151, %6152
  %6157 = select i1 %6153, float %6155, float %6156
  %6158 = fmul float %6154, %6157
  %6159 = select i1 %6153, float %6152, float %6110
  %6160 = fcmp fast ogt float %6110, %6152
  %6161 = fmul fast float %6159, %6151
  %6162 = fadd fast float %6159, %6151
  %6163 = fmul fast float %6162, %5945
  %6164 = fadd fast float %6161, %5946
  %6165 = fsub fast float %6164, %6163
  %6166 = fdiv fast float %6165, %6158
  %6167 = select i1 %6160, float %6166, float 0.000000e+00
  %6168 = fsub fast float 1.000000e+00, %6167
  %6169 = select i1 %6153, float %6168, float %6167
  %6170 = call float @dx.op.unary.f32(i32 7, float %6169)  ; Saturate(value)
  %6171 = extractvalue %dx.types.CBufRet.f32 %5930, 3
  %6172 = fmul fast float %6171, %6170
  %6173 = fsub fast float 1.000000e+00, %6172
  br label %6174

; <label>:6174                                    ; preds = %6103, %5815, %5780, %5776, %5740
  %6175 = phi float [ 1.000000e+00, %5740 ], [ %6173, %6103 ], [ 1.000000e+00, %5780 ], [ 1.000000e+00, %5815 ], [ 1.000000e+00, %5776 ]
  %6176 = fcmp fast ogt float %5772, 0.000000e+00
  br i1 %6176, label %6177, label %6185, !dx.controlflow.hints !116

; <label>:6177                                    ; preds = %6174
  %6178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.f32 %6178, 2
  %6180 = fadd fast float %6179, %5653
  %6181 = call float @dx.op.binary.f32(i32 35, float %6180, float 0.000000e+00)  ; FMax(a,b)
  %6182 = fadd fast float %6181, 0x3F10000000000000
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5671, float %5672, float undef, float undef, i32 0, i32 0, i32 undef, float %6182)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  br label %6185

; <label>:6185                                    ; preds = %6177, %6174
  %6186 = phi float [ %6184, %6177 ], [ 1.000000e+00, %6174 ]
  %6187 = fcmp fast ogt float %5770, 0.000000e+00
  br i1 %6187, label %6188, label %6196, !dx.controlflow.hints !117

; <label>:6188                                    ; preds = %6185
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 1
  %6191 = fadd fast float %6190, %5653
  %6192 = call float @dx.op.binary.f32(i32 35, float %6191, float 0.000000e+00)  ; FMax(a,b)
  %6193 = fadd fast float %6192, 0x3F10000000000000
  %6194 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5663, float %5664, float undef, float undef, i32 0, i32 0, i32 undef, float %6193)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  br label %6196

; <label>:6196                                    ; preds = %6188, %6185
  %6197 = phi float [ %6195, %6188 ], [ 1.000000e+00, %6185 ]
  %6198 = fcmp fast ogt float %5769, 0.000000e+00
  br i1 %6198, label %6199, label %6211, !dx.controlflow.hints !118

; <label>:6199                                    ; preds = %6196
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = fadd fast float %6201, %5653
  %6203 = call float @dx.op.binary.f32(i32 35, float %6202, float 0.000000e+00)  ; FMax(a,b)
  %6204 = fadd fast float %6203, 0x3F10000000000000
  br i1 %5656, label %6205, label %6208, !dx.controlflow.hints !119

; <label>:6205                                    ; preds = %6199
  %6206 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5645, float %5649, float undef, float undef, i32 0, i32 0, i32 undef, float %6204)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  br label %6211

; <label>:6208                                    ; preds = %6199
  %6209 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5645, float %5649, float undef, float undef, i32 0, i32 0, i32 undef, float %6204)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  br label %6211

; <label>:6211                                    ; preds = %6208, %6205, %6196
  %6212 = phi float [ %6207, %6205 ], [ %6210, %6208 ], [ 1.000000e+00, %6196 ]
  %6213 = fsub fast float %6186, %6175
  %6214 = fmul fast float %6213, %5742
  %6215 = fadd fast float %6214, %6175
  %6216 = fsub fast float %6197, %6215
  %6217 = fmul fast float %6216, %5741
  %6218 = fadd fast float %6217, %6215
  %6219 = fsub fast float %6212, %6218
  %6220 = fmul fast float %6219, %5769
  %6221 = fadd fast float %6220, %6218
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6224 = fcmp fast ogt float %6223, 0.000000e+00
  br i1 %6224, label %6225, label %6265, !dx.controlflow.hints !120

; <label>:6225                                    ; preds = %6211
  %6226 = fcmp fast ugt float %6223, 0.000000e+00
  br i1 %6226, label %6227, label %6262

; <label>:6227                                    ; preds = %6225
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.CBufRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6237 = extractvalue %dx.types.CBufRet.f32 %6233, 3
  %6238 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6239 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.CBufRet.f32 %6240, 2
  %6244 = fadd fast float %6241, %5622
  %6245 = fadd fast float %6242, %5623
  %6246 = fadd fast float %6243, %5624
  %6247 = fmul fast float %6244, %6229
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6230, float %6245, float %6247)  ; FMad(a,b,c)
  %6249 = call float @dx.op.tertiary.f32(i32 46, float %6231, float %6246, float %6248)  ; FMad(a,b,c)
  %6250 = fadd fast float %6249, %6232
  %6251 = fmul fast float %6244, %6234
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6235, float %6245, float %6251)  ; FMad(a,b,c)
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6236, float %6246, float %6252)  ; FMad(a,b,c)
  %6254 = fadd fast float %6253, %6237
  %6255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6250, float %6254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = fmul fast float %6256, %6239
  %6258 = fadd fast float %6257, %6238
  %6259 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6260 = fmul fast float %6259, %6223
  %6261 = fsub fast float 1.000000e+00, %6260
  br label %6262

; <label>:6262                                    ; preds = %6227, %6225
  %6263 = phi float [ %6261, %6227 ], [ 1.000000e+00, %6225 ]
  %6264 = fmul fast float %6263, %6221
  br label %6265

; <label>:6265                                    ; preds = %6262, %6211, %5602
  %6266 = phi float [ 1.000000e+00, %5602 ], [ %6264, %6262 ], [ %6221, %6211 ]
  %6267 = call float @dx.op.binary.f32(i32 36, float %6266, float %6266)  ; FMin(a,b)
  %6268 = call float @dx.op.binary.f32(i32 36, float %6266, float %6267)  ; FMin(a,b)
  %6269 = fcmp fast ogt float %6268, 0.000000e+00
  br i1 %6269, label %6270, label %6430, !dx.controlflow.hints !121

; <label>:6270                                    ; preds = %6265
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6280 = extractvalue %dx.types.CBufRet.f32 %6276, 3
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.CBufRet.f32 %6281, 2
  %6285 = extractvalue %dx.types.CBufRet.f32 %6281, 3
  %6286 = fmul fast float %6272, %5622
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %6273, float %6286)  ; FMad(a,b,c)
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %6274, float %6287)  ; FMad(a,b,c)
  %6289 = fadd fast float %6288, %6275
  %6290 = fmul fast float %6277, %5622
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %6278, float %6290)  ; FMad(a,b,c)
  %6292 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %6279, float %6291)  ; FMad(a,b,c)
  %6293 = fadd fast float %6292, %6280
  %6294 = fmul fast float %6282, %5622
  %6295 = call float @dx.op.tertiary.f32(i32 46, float %5623, float %6283, float %6294)  ; FMad(a,b,c)
  %6296 = call float @dx.op.tertiary.f32(i32 46, float %5624, float %6284, float %6295)  ; FMad(a,b,c)
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6301 = fmul fast float %6300, %6289
  %6302 = fmul fast float %6300, %6293
  %6303 = fadd fast float %6301, %6298
  %6304 = fadd fast float %6302, %6299
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6308 = fsub fast float %6303, %6306
  %6309 = fsub fast float %6304, %6307
  %6310 = fcmp fast olt float %6308, 0.000000e+00
  %6311 = fcmp fast olt float %6309, 0.000000e+00
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6316 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6317 = select i1 %6310, float %6313, float %6315
  %6318 = select i1 %6311, float %6314, float %6316
  %6319 = fmul fast float %6317, %6308
  %6320 = fmul fast float %6318, %6309
  %6321 = call float @dx.op.unary.f32(i32 6, float %6319)  ; FAbs(value)
  %6322 = call float @dx.op.unary.f32(i32 6, float %6320)  ; FAbs(value)
  %6323 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %6324 = call float @dx.op.binary.f32(i32 35, float %6321, float %6322)  ; FMax(a,b)
  %6325 = fsub fast float %6323, %6324
  %6326 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6327 = fcmp fast ogt float %6326, 0.000000e+00
  br i1 %6327, label %6328, label %6369, !dx.controlflow.hints !122

; <label>:6328                                    ; preds = %6270
  %6329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6303, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6330 = extractvalue %dx.types.ResRet.f32 %6329, 1
  %6331 = fcmp fast ogt float %6330, 0.000000e+00
  br i1 %6331, label %6332, label %6364

; <label>:6332                                    ; preds = %6328
  %6333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6303, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6337 = extractvalue %dx.types.ResRet.f32 %6333, 3
  %6338 = fsub fast float 1.000000e+00, %6285
  %6339 = fsub fast float %6338, %6296
  %6340 = fmul fast float %6339, 0x400921FB60000000
  %6341 = fadd fast float %6340, 0x3FF921FB60000000
  %6342 = call float @dx.op.unary.f32(i32 13, float %6341)  ; Sin(value)
  %6343 = fadd fast float %6342, -1.000000e+00
  %6344 = fmul fast float %6343, 0x3FD45F3060000000
  %6345 = fmul fast float %6339, 0x401921FB60000000
  %6346 = fadd fast float %6345, 0x400921FB60000000
  %6347 = call float @dx.op.unary.f32(i32 13, float %6346)  ; Sin(value)
  %6348 = fadd fast float %6347, 0x3E7777A5C0000000
  %6349 = fmul fast float %6348, 0x3FC45F3060000000
  %6350 = fmul fast float %6339, 0x4022D97C80000000
  %6351 = fadd fast float %6350, 0x4012D97C80000000
  %6352 = call float @dx.op.unary.f32(i32 13, float %6351)  ; Sin(value)
  %6353 = fadd fast float %6352, 1.000000e+00
  %6354 = fmul fast float %6353, 0x3FBB2995E0000000
  %6355 = fmul fast float %6339, 0x402921FB60000000
  %6356 = fadd fast float %6355, 0x401921FB60000000
  %6357 = call float @dx.op.unary.f32(i32 13, float %6356)  ; Sin(value)
  %6358 = fadd fast float %6357, 0xBE8777A5C0000000
  %6359 = fmul fast float %6358, 0x3FB45F3060000000
  %6360 = call float @dx.op.dot4.f32(i32 56, float %6334, float %6335, float %6336, float %6337, float %6344, float %6349, float %6354, float %6359)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6361 = fmul fast float %6360, 0xBFF7154760000000
  %6362 = call float @dx.op.unary.f32(i32 21, float %6361)  ; Exp(value)
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  br label %6364

; <label>:6364                                    ; preds = %6332, %6328
  %6365 = phi float [ %6363, %6332 ], [ 1.000000e+00, %6328 ]
  %6366 = fadd fast float %6365, -1.000000e+00
  %6367 = fmul fast float %6366, %6326
  %6368 = fadd fast float %6367, 1.000000e+00
  br label %6369

; <label>:6369                                    ; preds = %6364, %6270
  %6370 = phi float [ %6368, %6364 ], [ 1.000000e+00, %6270 ]
  %6371 = fmul fast float %6370, %6266
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = fadd fast float %6373, %197
  %6377 = fadd fast float %6374, %198
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6380 = fsub fast float -0.000000e+00, %6376
  %6381 = fsub fast float -0.000000e+00, %6377
  %6382 = fsub fast float %5314, %6375
  %6383 = fadd fast float %6382, %6379
  %6384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6380, float %6381, float %6383)  ; Dot3(ax,ay,az,bx,by,bz)
  %6385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6386 = fdiv fast float 1.000000e+00, %6385
  %6387 = fmul fast float %6386, %6384
  %6388 = fmul fast float %5603, %6387
  %6389 = fmul fast float %5604, %6387
  %6390 = fadd fast float %6388, %6376
  %6391 = fadd fast float %6389, %6377
  %6392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6393 = extractvalue %dx.types.CBufRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.CBufRet.f32 %6392, 1
  %6395 = fsub fast float %6390, %6393
  %6396 = fsub fast float %6391, %6394
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6399 = extractvalue %dx.types.CBufRet.f32 %6397, 3
  %6400 = fmul fast float %6395, %6398
  %6401 = fmul fast float %6396, %6399
  %6402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.i32 %6402, 3
  %6404 = icmp eq i32 %6403, 0
  br i1 %6404, label %6410, label %6405

; <label>:6405                                    ; preds = %6369
  %6406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6400, float %6401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.ResRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.ResRet.f32 %6406, 2
  br label %6415

; <label>:6410                                    ; preds = %6369
  %6411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6400, float %6401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6412 = extractvalue %dx.types.ResRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.ResRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.ResRet.f32 %6411, 2
  br label %6415

; <label>:6415                                    ; preds = %6410, %6405
  %6416 = phi float [ %6407, %6405 ], [ %6412, %6410 ]
  %6417 = phi float [ %6408, %6405 ], [ %6413, %6410 ]
  %6418 = phi float [ %6409, %6405 ], [ %6414, %6410 ]
  %6419 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6420 = fmul fast float %6419, %6416
  %6421 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6422 = fsub fast float %6387, %6421
  %6423 = fsub fast float %6422, %6420
  %6424 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6423)  ; FMax(a,b)
  %6425 = fmul fast float %6424, %6417
  %6426 = call float @dx.op.binary.f32(i32 36, float %6418, float %6425)  ; FMin(a,b)
  %6427 = fmul fast float %6426, 0xBFF7154760000000
  %6428 = call float @dx.op.unary.f32(i32 21, float %6427)  ; Exp(value)
  %6429 = fmul fast float %6371, %6428
  br label %6430

; <label>:6430                                    ; preds = %6415, %6265
  %6431 = phi float [ %6429, %6415 ], [ %6266, %6265 ]
  %6432 = call float @dx.op.binary.f32(i32 36, float %6431, float %6431)  ; FMin(a,b)
  %6433 = call float @dx.op.binary.f32(i32 36, float %6431, float %6432)  ; FMin(a,b)
  %6434 = fcmp fast ogt float %6433, 0.000000e+00
  br i1 %6434, label %6435, label %6686, !dx.controlflow.hints !123

; <label>:6435                                    ; preds = %6430
  %6436 = fmul fast float %6431, %5614
  %6437 = fmul fast float %6431, %5615
  %6438 = fmul fast float %6431, %5616
  %6439 = fsub fast float %199, %4491
  %6440 = fcmp fast ogt float %6439, 0.000000e+00
  %6441 = fmul fast float %5603, 5.120000e+02
  %6442 = fmul fast float %5604, 5.120000e+02
  %6443 = fmul fast float %5605, 5.120000e+02
  %6444 = fadd fast float %6443, %199
  %6445 = fsub fast float %4491, %6444
  %6446 = fmul fast float %6445, 2.000000e+00
  %6447 = fadd fast float %6446, %6444
  %6448 = select i1 %6440, float %6447, float %6444
  %6449 = fsub fast float %6448, %199
  %6450 = call float @dx.op.dot3.f32(i32 55, float %6441, float %6442, float %6449, float %6441, float %6442, float %6449)  ; Dot3(ax,ay,az,bx,by,bz)
  %6451 = call float @dx.op.unary.f32(i32 25, float %6450)  ; Rsqrt(value)
  %6452 = fmul fast float %6451, %6441
  %6453 = fmul fast float %6451, %6442
  %6454 = fmul fast float %6451, %6449
  %6455 = fsub fast float %4491, %199
  %6456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6455)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6452, float %6453, float %6454)  ; Dot3(ax,ay,az,bx,by,bz)
  %6458 = fdiv fast float 1.000000e+00, %6457
  %6459 = fmul fast float %6458, %6456
  %6460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6439, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  %6462 = fcmp fast olt float %6460, 0.000000e+00
  %6463 = zext i1 %6461 to i32
  %6464 = zext i1 %6462 to i32
  %6465 = sub nsw i32 %6463, %6464
  %6466 = sitofp i32 %6465 to float
  %6467 = fsub fast float %6448, %4491
  %6468 = call float @dx.op.dot3.f32(i32 55, float %6441, float %6442, float %6467, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = fcmp fast ogt float %6468, 0.000000e+00
  %6470 = fcmp fast olt float %6468, 0.000000e+00
  %6471 = zext i1 %6469 to i32
  %6472 = zext i1 %6470 to i32
  %6473 = sub nsw i32 %6471, %6472
  %6474 = sitofp i32 %6473 to float
  %6475 = fcmp fast une float %6466, %6474
  br i1 %6475, label %6476, label %6486

; <label>:6476                                    ; preds = %6435
  %6477 = fmul fast float %6459, %6454
  %6478 = fmul fast float %6459, %6453
  %6479 = fmul fast float %6459, %6452
  %6480 = fmul fast float %6479, %6479
  %6481 = fmul fast float %6478, %6478
  %6482 = fadd fast float %6480, %6481
  %6483 = fmul fast float %6477, %6477
  %6484 = fadd fast float %6482, %6483
  %6485 = call float @dx.op.unary.f32(i32 24, float %6484)  ; Sqrt(value)
  br label %6496

; <label>:6486                                    ; preds = %6435
  %6487 = icmp slt i32 %6465, 0
  br i1 %6487, label %6488, label %6496

; <label>:6488                                    ; preds = %6486
  %6489 = fsub fast float %199, %6448
  %6490 = fmul fast float %6441, %6441
  %6491 = fmul fast float %6442, %6442
  %6492 = fadd fast float %6490, %6491
  %6493 = fmul fast float %6489, %6489
  %6494 = fadd fast float %6492, %6493
  %6495 = call float @dx.op.unary.f32(i32 24, float %6494)  ; Sqrt(value)
  br label %6496

; <label>:6496                                    ; preds = %6488, %6486, %6476
  %6497 = phi float [ %6485, %6476 ], [ %6495, %6488 ], [ 0.000000e+00, %6486 ]
  %6498 = fsub fast float -0.000000e+00, %6497
  %6499 = select i1 %6440, float -0.000000e+00, float %6498
  %6500 = fmul fast float %4492, 0x3FF7154760000000
  %6501 = fmul fast float %6500, %6499
  %6502 = fmul fast float %4493, 0x3FF7154760000000
  %6503 = fmul fast float %6502, %6499
  %6504 = fmul fast float %4494, 0x3FF7154760000000
  %6505 = fmul fast float %6504, %6499
  %6506 = call float @dx.op.unary.f32(i32 21, float %6501)  ; Exp(value)
  %6507 = call float @dx.op.unary.f32(i32 21, float %6503)  ; Exp(value)
  %6508 = call float @dx.op.unary.f32(i32 21, float %6505)  ; Exp(value)
  %6509 = call float @dx.op.unary.f32(i32 7, float %6506)  ; Saturate(value)
  %6510 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6511 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6512 = fmul fast float %6436, %6509
  %6513 = fmul fast float %6437, %6510
  %6514 = fmul fast float %6438, %6511
  %6515 = fsub fast float %5603, %5317
  %6516 = fsub fast float %5604, %5318
  %6517 = fsub fast float %5605, %5319
  %6518 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6517, float %6515, float %6516, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = call float @dx.op.unary.f32(i32 25, float %6518)  ; Rsqrt(value)
  %6520 = fmul fast float %6519, %6515
  %6521 = fmul fast float %6519, %6516
  %6522 = fmul fast float %6519, %6517
  %6523 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5277, float %5278, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %6524 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %6520, float %6521, float %6522)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6526 = fmul fast float %6525, %6525
  %6527 = fmul fast float %6526, %5338
  %6528 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6529 = fmul fast float %6528, %6525
  %6530 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %6520, float %6521, float %6522)  ; Dot3(ax,ay,az,bx,by,bz)
  %6531 = fmul fast float %6530, %6530
  %6532 = call float @dx.op.unary.f32(i32 6, float %6523)  ; FAbs(value)
  %6533 = fsub fast float 1.000000e+00, %5280
  %6534 = call float @dx.op.binary.f32(i32 35, float %6533, float 0x3F847AE140000000)  ; FMax(a,b)
  %6535 = fmul fast float %6534, %6534
  %6536 = fmul fast float %6535, %6535
  %6537 = fsub fast float 1.000000e+00, %6536
  %6538 = fmul fast float %5325, %5325
  %6539 = fmul fast float %6538, %6537
  %6540 = fadd fast float %6539, %6536
  %6541 = bitcast float %6540 to i32
  %6542 = ashr i32 %6541, 1
  %6543 = add nsw i32 %6542, 532487669
  %6544 = bitcast i32 %6543 to float
  %6545 = fadd fast float %6544, %5325
  %6546 = fmul fast float %6536, %6531
  %6547 = fsub fast float 1.000000e+00, %6531
  %6548 = fadd fast float %6547, %6546
  %6549 = fmul fast float %6532, %6532
  %6550 = fmul fast float %6549, %6537
  %6551 = fadd fast float %6550, %6536
  %6552 = bitcast float %6551 to i32
  %6553 = ashr i32 %6552, 1
  %6554 = add nsw i32 %6553, 532487669
  %6555 = bitcast i32 %6554 to float
  %6556 = fadd fast float %6555, %6532
  %6557 = fmul fast float %6548, %6548
  %6558 = fmul fast float %6557, %6545
  %6559 = fmul fast float %6558, %6556
  %6560 = fdiv fast float 0x3FF0A00000000000, %6559
  %6561 = fmul fast float %6560, %6536
  %6562 = call float @dx.op.unary.f32(i32 6, float %6524)  ; FAbs(value)
  %6563 = fsub fast float 1.000000e+00, %6562
  %6564 = bitcast float %6563 to i32
  %6565 = sitofp i32 %6564 to float
  %6566 = fmul fast float %6565, 5.000000e+00
  %6567 = fadd fast float %6566, 0xC1EFBF8940000000
  %6568 = fptosi float %6567 to i32
  %6569 = bitcast i32 %6568 to float
  %6570 = fsub fast float 1.000000e+00, %5274
  %6571 = fsub fast float 1.000000e+00, %5275
  %6572 = fsub fast float 1.000000e+00, %5323
  %6573 = fmul fast float %6569, %6570
  %6574 = fmul fast float %6569, %6571
  %6575 = fmul fast float %6569, %6572
  %6576 = fadd fast float %6573, %5274
  %6577 = fadd fast float %6574, %5275
  %6578 = fadd fast float %6575, %5323
  br i1 %5454, label %6579, label %6602

; <label>:6579                                    ; preds = %6496
  %6580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %6562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6581 = extractvalue %dx.types.ResRet.f32 %6580, 0
  %6582 = extractvalue %dx.types.ResRet.f32 %6580, 1
  %6583 = extractvalue %dx.types.ResRet.f32 %6580, 2
  %6584 = fadd fast float %6581, -5.000000e-01
  %6585 = fadd fast float %6582, -5.000000e-01
  %6586 = fadd fast float %6583, -5.000000e-01
  %6587 = fmul fast float %5274, 4.000000e+00
  %6588 = fmul fast float %6587, %6570
  %6589 = fmul fast float %6588, %6584
  %6590 = fmul fast float %5275, 4.000000e+00
  %6591 = fmul fast float %6590, %6571
  %6592 = fmul fast float %6591, %6585
  %6593 = fmul fast float %5323, 4.000000e+00
  %6594 = fmul fast float %6593, %6572
  %6595 = fmul fast float %6594, %6586
  %6596 = fadd fast float %6589, %6576
  %6597 = fadd fast float %6592, %6577
  %6598 = fadd fast float %6595, %6578
  %6599 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6600 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  %6601 = call float @dx.op.unary.f32(i32 7, float %6598)  ; Saturate(value)
  br label %6602

; <label>:6602                                    ; preds = %6579, %6496
  %6603 = phi float [ %6599, %6579 ], [ %6576, %6496 ]
  %6604 = phi float [ %6600, %6579 ], [ %6577, %6496 ]
  %6605 = phi float [ %6601, %6579 ], [ %6578, %6496 ]
  %6606 = fmul fast float %6523, 9.843750e-01
  %6607 = fadd fast float %6606, 7.812500e-03
  %6608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6607, float %5444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 2
  %6610 = extractvalue %dx.types.ResRet.f32 %6608, 3
  %6611 = fmul fast float %6609, %5274
  %6612 = fmul fast float %6609, %5275
  %6613 = fmul fast float %6609, %5323
  %6614 = fadd fast float %6611, %6610
  %6615 = fadd fast float %6612, %6610
  %6616 = fadd fast float %6613, %6610
  br i1 %5454, label %6617, label %6640

; <label>:6617                                    ; preds = %6602
  %6618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %6523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6619 = extractvalue %dx.types.ResRet.f32 %6618, 0
  %6620 = extractvalue %dx.types.ResRet.f32 %6618, 1
  %6621 = extractvalue %dx.types.ResRet.f32 %6618, 2
  %6622 = fadd fast float %6619, -5.000000e-01
  %6623 = fadd fast float %6620, -5.000000e-01
  %6624 = fadd fast float %6621, -5.000000e-01
  %6625 = fmul fast float %5274, 4.000000e+00
  %6626 = fmul fast float %6625, %6570
  %6627 = fmul fast float %6626, %6622
  %6628 = fmul fast float %5275, 4.000000e+00
  %6629 = fmul fast float %6628, %6571
  %6630 = fmul fast float %6629, %6623
  %6631 = fmul fast float %5323, 4.000000e+00
  %6632 = fmul fast float %6631, %6572
  %6633 = fmul fast float %6632, %6624
  %6634 = fadd fast float %6627, %6614
  %6635 = fadd fast float %6630, %6615
  %6636 = fadd fast float %6633, %6616
  %6637 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6638 = call float @dx.op.unary.f32(i32 7, float %6635)  ; Saturate(value)
  %6639 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  br label %6640

; <label>:6640                                    ; preds = %6617, %6602
  %6641 = phi float [ %6637, %6617 ], [ %6614, %6602 ]
  %6642 = phi float [ %6638, %6617 ], [ %6615, %6602 ]
  %6643 = phi float [ %6639, %6617 ], [ %6616, %6602 ]
  %6644 = call float @dx.op.binary.f32(i32 35, float %6642, float %6643)  ; FMax(a,b)
  %6645 = call float @dx.op.binary.f32(i32 35, float %6641, float %6644)  ; FMax(a,b)
  %6646 = fsub fast float 1.000000e+00, %6645
  %6647 = fmul fast float %6603, %6561
  %6648 = fmul fast float %6604, %6561
  %6649 = fmul fast float %6605, %6561
  %6650 = fsub fast float 1.000000e+00, %6524
  %6651 = bitcast float %6650 to i32
  %6652 = sitofp i32 %6651 to float
  %6653 = fmul fast float %6652, 5.000000e+00
  %6654 = fadd fast float %6653, 0xC1EFBF8940000000
  %6655 = fptosi float %6654 to i32
  %6656 = bitcast i32 %6655 to float
  %6657 = fmul fast float %6656, %4090
  %6658 = fmul fast float %6646, %6657
  %6659 = fmul fast float %6658, %5557
  %6660 = fmul fast float %6658, %5558
  %6661 = fmul fast float %6658, %5559
  %6662 = fadd fast float %6659, %6647
  %6663 = fadd fast float %6660, %6648
  %6664 = fadd fast float %6661, %6649
  %6665 = fmul fast float %6529, %6512
  %6666 = fmul fast float %6665, %6646
  %6667 = fmul fast float %6529, %6513
  %6668 = fmul fast float %6667, %6646
  %6669 = fmul fast float %6529, %6514
  %6670 = fmul fast float %6669, %6646
  %6671 = fmul fast float %6665, %6662
  %6672 = fmul fast float %6667, %6663
  %6673 = fmul fast float %6669, %6664
  %6674 = fadd fast float %6666, %5539
  %6675 = fmul fast float %6674, %4086
  %6676 = fadd fast float %6668, %5541
  %6677 = fmul fast float %6676, %4086
  %6678 = fadd fast float %6670, %5543
  %6679 = fmul fast float %6678, %4086
  %6680 = fadd fast float %6671, %5591
  %6681 = fmul fast float %6680, %4086
  %6682 = fadd fast float %6672, %5594
  %6683 = fmul fast float %6682, %4086
  %6684 = fadd fast float %6673, %5597
  %6685 = fmul fast float %6684, %4086
  br label %6686

; <label>:6686                                    ; preds = %6640, %6430, %5481
  %6687 = phi float [ %5592, %5481 ], [ %5592, %6430 ], [ %6681, %6640 ]
  %6688 = phi float [ %5595, %5481 ], [ %5595, %6430 ], [ %6683, %6640 ]
  %6689 = phi float [ %5598, %5481 ], [ %5598, %6430 ], [ %6685, %6640 ]
  %6690 = phi float [ %5587, %5481 ], [ %5587, %6430 ], [ %6675, %6640 ]
  %6691 = phi float [ %5588, %5481 ], [ %5588, %6430 ], [ %6677, %6640 ]
  %6692 = phi float [ %5589, %5481 ], [ %5589, %6430 ], [ %6679, %6640 ]
  %6693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.i32 %6693, 0
  %6695 = icmp eq i32 %6694, 0
  br i1 %6695, label %7316, label %6696

; <label>:6696                                    ; preds = %6686
  %6697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6697, 2
  %6699 = extractvalue %dx.types.CBufRet.f32 %6697, 3
  %6700 = fmul fast float %6698, %110
  %6701 = fmul fast float %6699, %111
  %6702 = fptoui float %6700 to i32
  %6703 = fptoui float %6701 to i32
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6706 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6707 = extractvalue %dx.types.CBufRet.f32 %6704, 3
  %6708 = fadd fast float %101, -4.000000e+00
  %6709 = call float @dx.op.binary.f32(i32 35, float %6708, float 0.000000e+00)  ; FMax(a,b)
  %6710 = fadd fast float %6709, %6705
  %6711 = fmul fast float %6710, %6706
  %6712 = call float @dx.op.unary.f32(i32 23, float %6711)  ; Log(value)
  %6713 = fmul fast float %6712, %6707
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6716 = fmul fast float %6713, %6715
  %6717 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.i32 %6718, 1
  %6720 = add i32 %6719, -1
  %6721 = uitofp i32 %6719 to float
  %6722 = fmul fast float %6721, %6717
  %6723 = fptoui float %6722 to i32
  %6724 = call i32 @dx.op.binary.i32(i32 40, i32 %6723, i32 %6720)  ; UMin(a,b)
  %6725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.i32 %6725, 2
  %6727 = extractvalue %dx.types.CBufRet.i32 %6725, 3
  %6728 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6703, i32 %6726, i32 %6702)  ; UMad(a,b,c)
  %6729 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6724, i32 %6727, i32 %6728)  ; UMad(a,b,c)
  %6730 = add nsw i32 %6694, -1
  %6731 = call i32 @dx.op.binary.i32(i32 37, i32 %6730, i32 0)  ; IMax(a,b)
  %6732 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6733 = fptoui float %6732 to i32
  %6734 = lshr i32 %6733, 5
  %6735 = call i32 @dx.op.binary.i32(i32 40, i32 %6734, i32 8191)  ; UMin(a,b)
  %6736 = shl i32 %6735, 2
  %6737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6736, i32 undef)  ; BufferLoad(srv,index,wot)
  %6738 = extractvalue %dx.types.ResRet.i32 %6737, 0
  %6739 = lshr i32 %6738, 16
  %6740 = and i32 %6738, 65535
  %6741 = lshr i32 %6738, 21
  %6742 = lshr i32 %6740, 5
  %6743 = call i32 @dx.op.binary.i32(i32 40, i32 %6742, i32 %6731)  ; UMin(a,b)
  %6744 = icmp ugt i32 %6741, %6743
  br i1 %6744, label %7316, label %6745

; <label>:6745                                    ; preds = %6696
  br label %6746

; <label>:6746                                    ; preds = %7306, %6745
  %6747 = phi i32 [ %7313, %7306 ], [ %6741, %6745 ]
  %6748 = phi float [ %7307, %7306 ], [ %6687, %6745 ]
  %6749 = phi float [ %7308, %7306 ], [ %6688, %6745 ]
  %6750 = phi float [ %7309, %7306 ], [ %6689, %6745 ]
  %6751 = phi float [ %7310, %7306 ], [ %6690, %6745 ]
  %6752 = phi float [ %7311, %7306 ], [ %6691, %6745 ]
  %6753 = phi float [ %7312, %7306 ], [ %6692, %6745 ]
  %6754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.i32 %6754, 0
  %6756 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6729, i32 %6755, i32 %6747)  ; UMad(a,b,c)
  %6757 = shl i32 %6756, 2
  %6758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6757, i32 undef)  ; BufferLoad(srv,index,wot)
  %6759 = extractvalue %dx.types.ResRet.i32 %6758, 0
  %6760 = shl i32 %6747, 5
  %6761 = sub nsw i32 %6739, %6760
  %6762 = call i32 @dx.op.binary.i32(i32 37, i32 %6761, i32 0)  ; IMax(a,b)
  %6763 = call i32 @dx.op.binary.i32(i32 38, i32 %6762, i32 31)  ; IMin(a,b)
  %6764 = sub nsw i32 1, %6739
  %6765 = add nsw i32 %6764, %6740
  %6766 = call i32 @dx.op.binary.i32(i32 37, i32 %6765, i32 0)  ; IMax(a,b)
  %6767 = call i32 @dx.op.binary.i32(i32 38, i32 %6766, i32 32)  ; IMin(a,b)
  %6768 = and i32 %6767, 31
  %6769 = shl i32 -1, %6768
  %6770 = xor i32 %6769, -1
  %6771 = and i32 %6763, 31
  %6772 = shl i32 %6770, %6771
  %6773 = icmp eq i32 %6767, 32
  %6774 = select i1 %6773, i32 -1, i32 %6772
  %6775 = and i32 %6774, %6759
  %6776 = icmp eq i32 %6775, 0
  br i1 %6776, label %7306, label %6777

; <label>:6777                                    ; preds = %6746
  br label %6778

; <label>:6778                                    ; preds = %6912, %6777
  %6779 = phi i32 [ %6790, %6912 ], [ %6775, %6777 ]
  %6780 = phi float [ %6913, %6912 ], [ %6748, %6777 ]
  %6781 = phi float [ %6914, %6912 ], [ %6749, %6777 ]
  %6782 = phi float [ %6915, %6912 ], [ %6750, %6777 ]
  %6783 = phi float [ %6916, %6912 ], [ %6751, %6777 ]
  %6784 = phi float [ %6917, %6912 ], [ %6752, %6777 ]
  %6785 = phi float [ %6918, %6912 ], [ %6753, %6777 ]
  %6786 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6779)  ; FirstbitLo(value)
  %6787 = add i32 %6786, %6760
  %6788 = and i32 %6786, 31
  %6789 = shl i32 1, %6788
  %6790 = xor i32 %6789, %6779
  %6791 = mul i32 %6787, 112
  %6792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6791, i32 undef)  ; BufferLoad(srv,index,wot)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = or i32 %6791, 12
  %6797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6796, i32 undef)  ; BufferLoad(srv,index,wot)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = add i32 %6791, 16
  %6800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6799, i32 undef)  ; BufferLoad(srv,index,wot)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.ResRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.ResRet.f32 %6800, 2
  %6804 = add i32 %6791, 28
  %6805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6804, i32 undef)  ; BufferLoad(srv,index,wot)
  %6806 = extractvalue %dx.types.ResRet.i32 %6805, 0
  %6807 = add i32 %6791, 44
  %6808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6807, i32 undef)  ; BufferLoad(srv,index,wot)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  %6810 = add i32 %6791, 48
  %6811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6810, i32 undef)  ; BufferLoad(srv,index,wot)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.ResRet.f32 %6811, 3
  %6816 = add i32 %6791, 64
  %6817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6816, i32 undef)  ; BufferLoad(srv,index,wot)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.ResRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.ResRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.ResRet.f32 %6817, 3
  %6822 = add i32 %6791, 80
  %6823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6822, i32 undef)  ; BufferLoad(srv,index,wot)
  %6824 = extractvalue %dx.types.ResRet.f32 %6823, 1
  %6825 = extractvalue %dx.types.ResRet.f32 %6823, 2
  %6826 = add i32 %6791, 92
  %6827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6826, i32 undef)  ; BufferLoad(srv,index,wot)
  %6828 = extractvalue %dx.types.ResRet.i32 %6827, 0
  %6829 = call float @dx.op.dot3.f32(i32 55, float %6793, float %6794, float %6795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6830 = select i1 %269, float %6824, float %6793
  %6831 = select i1 %269, float %6829, float %6794
  %6832 = select i1 %269, float %6825, float %6795
  %6833 = and i32 %6828, 65535
  %6834 = uitofp i32 %6833 to float
  %6835 = lshr i32 %6828, 16
  %6836 = uitofp i32 %6835 to float
  %6837 = and i32 %6806, 65535
  %6838 = and i32 %6806, 50331648
  %6839 = icmp eq i32 %6838, 33554432
  %6840 = fsub fast float %6812, %197
  %6841 = fsub fast float %6813, %198
  %6842 = fsub fast float %6814, %199
  %6843 = call float @dx.op.dot3.f32(i32 55, float %6840, float %6841, float %6842, float %6840, float %6841, float %6842)  ; Dot3(ax,ay,az,bx,by,bz)
  %6844 = call float @dx.op.unary.f32(i32 24, float %6843)  ; Sqrt(value)
  %6845 = fdiv fast float 1.000000e+00, %6844
  %6846 = fmul fast float %6845, %6840
  %6847 = fmul fast float %6845, %6841
  %6848 = fmul fast float %6845, %6842
  %6849 = fadd fast float %6844, %6798
  %6850 = fdiv fast float 1.000000e+00, %6849
  %6851 = fmul float %6809, %6850
  %6852 = fmul float %6851, %6851
  %6853 = call float @dx.op.unary.f32(i32 7, float %6852)  ; Saturate(value)
  br i1 %6839, label %6854, label %6875

; <label>:6854                                    ; preds = %6778
  %6855 = fmul fast float %6820, %6801
  %6856 = fmul fast float %6820, %6802
  %6857 = fmul fast float %6820, %6803
  %6858 = fadd fast float %6840, %6855
  %6859 = fadd fast float %6841, %6856
  %6860 = fadd fast float %6842, %6857
  %6861 = call float @dx.op.dot3.f32(i32 55, float %6858, float %6859, float %6860, float %6858, float %6859, float %6860)  ; Dot3(ax,ay,az,bx,by,bz)
  %6862 = call float @dx.op.unary.f32(i32 25, float %6861)  ; Rsqrt(value)
  %6863 = fmul fast float %6862, %6858
  %6864 = fmul fast float %6862, %6859
  %6865 = fmul fast float %6862, %6860
  %6866 = fsub fast float %197, %6812
  %6867 = fsub fast float %198, %6813
  %6868 = fsub fast float %199, %6814
  %6869 = fsub fast float -0.000000e+00, %6866
  %6870 = fsub fast float -0.000000e+00, %6867
  %6871 = fsub fast float -0.000000e+00, %6868
  %6872 = call float @dx.op.dot3.f32(i32 55, float %6869, float %6870, float %6871, float %6801, float %6802, float %6803)  ; Dot3(ax,ay,az,bx,by,bz)
  %6873 = fcmp fast ogt float %6872, 0.000000e+00
  %6874 = uitofp i1 %6873 to float
  br label %6875

; <label>:6875                                    ; preds = %6854, %6778
  %6876 = phi float [ %6874, %6854 ], [ 1.000000e+00, %6778 ]
  %6877 = phi float [ %6863, %6854 ], [ %6846, %6778 ]
  %6878 = phi float [ %6864, %6854 ], [ %6847, %6778 ]
  %6879 = phi float [ %6865, %6854 ], [ %6848, %6778 ]
  %6880 = call float @dx.op.dot3.f32(i32 55, float %6801, float %6802, float %6803, float %6877, float %6878, float %6879)  ; Dot3(ax,ay,az,bx,by,bz)
  %6881 = fmul fast float %6880, %6880
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6883 = fsub fast float 1.000000e+00, %6882
  %6884 = fmul fast float %6883, 5.000000e-01
  %6885 = fcmp fast ogt float %6880, 0.000000e+00
  %6886 = fsub fast float 1.000000e+00, %6884
  %6887 = select i1 %6885, float %6884, float %6886
  %6888 = fmul fast float %6887, %6836
  %6889 = fadd fast float %6888, %6834
  %6890 = fmul fast float %6889, 0x3EF0001000000000
  %6891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6890, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6892 = extractvalue %dx.types.ResRet.f32 %6891, 0
  %6893 = fmul fast float %6880, %6818
  %6894 = fadd fast float %6893, %6819
  %6895 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  %6896 = select i1 %6839, float 1.000000e+00, float %6895
  %6897 = select i1 %6839, float %6895, float 1.000000e+00
  %6898 = fmul fast float %6844, %6815
  %6899 = fsub fast float 1.000000e+00, %6898
  %6900 = fmul fast float %6899, %6821
  %6901 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6902 = fmul fast float %6901, %6897
  %6903 = fmul fast float %6902, 2.000000e+00
  %6904 = fsub fast float 3.000000e+00, %6903
  %6905 = fmul fast float %6892, %6876
  %6906 = fmul fast float %6902, %6902
  %6907 = fmul fast float %6906, %6905
  %6908 = fmul fast float %6907, %6904
  %6909 = call float @dx.op.binary.f32(i32 36, float %6908, float %6908)  ; FMin(a,b)
  %6910 = call float @dx.op.binary.f32(i32 36, float %6908, float %6909)  ; FMin(a,b)
  %6911 = fcmp fast ogt float %6910, 0.000000e+00
  br i1 %6911, label %6920, label %6912, !dx.controlflow.hints !124

; <label>:6912                                    ; preds = %7262, %7020, %6875
  %6913 = phi float [ %6780, %7020 ], [ %6780, %6875 ], [ %7302, %7262 ]
  %6914 = phi float [ %6781, %7020 ], [ %6781, %6875 ], [ %7303, %7262 ]
  %6915 = phi float [ %6782, %7020 ], [ %6782, %6875 ], [ %7304, %7262 ]
  %6916 = phi float [ %6783, %7020 ], [ %6783, %6875 ], [ %7296, %7262 ]
  %6917 = phi float [ %6784, %7020 ], [ %6784, %6875 ], [ %7297, %7262 ]
  %6918 = phi float [ %6785, %7020 ], [ %6785, %6875 ], [ %7298, %7262 ]
  %6919 = icmp eq i32 %6779, %6789
  br i1 %6919, label %7305, label %6778

; <label>:6920                                    ; preds = %6875
  %6921 = icmp eq i32 %6837, 255
  br i1 %6921, label %7020, label %6922, !dx.controlflow.hints !125

; <label>:6922                                    ; preds = %6920
  %6923 = mul nuw nsw i32 %6837, 176
  %6924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6923, i32 undef)  ; BufferLoad(srv,index,wot)
  %6925 = extractvalue %dx.types.ResRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.ResRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.ResRet.f32 %6924, 2
  %6928 = extractvalue %dx.types.ResRet.f32 %6924, 3
  %6929 = add nuw nsw i32 %6923, 16
  %6930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6929, i32 undef)  ; BufferLoad(srv,index,wot)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.f32 %6930, 1
  %6933 = add nuw nsw i32 %6923, 32
  %6934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6933, i32 undef)  ; BufferLoad(srv,index,wot)
  %6935 = extractvalue %dx.types.ResRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.ResRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.ResRet.f32 %6934, 2
  %6938 = add nuw nsw i32 %6923, 48
  %6939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6938, i32 undef)  ; BufferLoad(srv,index,wot)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = extractvalue %dx.types.ResRet.f32 %6939, 1
  %6942 = extractvalue %dx.types.ResRet.f32 %6939, 2
  %6943 = extractvalue %dx.types.ResRet.f32 %6939, 3
  %6944 = add nuw nsw i32 %6923, 64
  %6945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6944, i32 undef)  ; BufferLoad(srv,index,wot)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.ResRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.ResRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.ResRet.f32 %6945, 3
  %6950 = add nuw nsw i32 %6923, 80
  %6951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6950, i32 undef)  ; BufferLoad(srv,index,wot)
  %6952 = extractvalue %dx.types.ResRet.f32 %6951, 0
  %6953 = extractvalue %dx.types.ResRet.f32 %6951, 1
  %6954 = extractvalue %dx.types.ResRet.f32 %6951, 2
  %6955 = extractvalue %dx.types.ResRet.f32 %6951, 3
  %6956 = add nuw nsw i32 %6923, 96
  %6957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6956, i32 undef)  ; BufferLoad(srv,index,wot)
  %6958 = extractvalue %dx.types.ResRet.f32 %6957, 0
  %6959 = extractvalue %dx.types.ResRet.f32 %6957, 1
  %6960 = extractvalue %dx.types.ResRet.f32 %6957, 2
  %6961 = extractvalue %dx.types.ResRet.f32 %6957, 3
  %6962 = bitcast float %6932 to i32
  %6963 = fmul fast float %6937, %117
  %6964 = fmul fast float %6937, %118
  %6965 = fmul fast float %6937, %119
  %6966 = fadd fast float %6963, %197
  %6967 = fadd fast float %6964, %198
  %6968 = fadd fast float %6965, %199
  %6969 = fmul fast float %6966, %6940
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6946, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6952, float %6970)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6958
  %6973 = fmul fast float %6966, %6941
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6947, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6953, float %6974)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6959
  %6977 = fmul fast float %6966, %6942
  %6978 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6948, float %6977)  ; FMad(a,b,c)
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6954, float %6978)  ; FMad(a,b,c)
  %6980 = fadd fast float %6979, %6960
  %6981 = fmul fast float %6966, %6943
  %6982 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6949, float %6981)  ; FMad(a,b,c)
  %6983 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6955, float %6982)  ; FMad(a,b,c)
  %6984 = fadd fast float %6983, %6961
  %6985 = fdiv fast float %6972, %6984
  %6986 = fdiv fast float %6976, %6984
  %6987 = fdiv fast float %6980, %6984
  %6988 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6987)  ; FMax(a,b)
  %6989 = fmul fast float %280, 0x401921FB60000000
  %6990 = call float @dx.op.unary.f32(i32 13, float %6989)  ; Sin(value)
  %6991 = call float @dx.op.unary.f32(i32 12, float %6989)  ; Cos(value)
  %6992 = fsub fast float -0.000000e+00, %6990
  %6993 = fmul fast float %6927, 5.000000e-01
  %6994 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6995 = call float @dx.op.unary.f32(i32 22, float %6994)  ; Frc(value)
  %6996 = fmul fast float %6995, 0x404A7DD040000000
  %6997 = call float @dx.op.unary.f32(i32 22, float %6996)  ; Frc(value)
  %6998 = fmul fast float %6997, %6936
  %6999 = fadd fast float %6998, %6993
  %7000 = call float @dx.op.tertiary.f32(i32 46, float %6999, float %6992, float 0.000000e+00)  ; FMad(a,b,c)
  %7001 = call float @dx.op.tertiary.f32(i32 46, float %6999, float %6991, float 0.000000e+00)  ; FMad(a,b,c)
  %7002 = fadd fast float %7000, %6985
  %7003 = fadd fast float %7001, %6986
  %7004 = fmul fast float %7002, %6931
  %7005 = fmul fast float %7003, %6931
  %7006 = call float @dx.op.binary.f32(i32 35, float %7004, float %6927)  ; FMax(a,b)
  %7007 = call float @dx.op.binary.f32(i32 35, float %7005, float %6927)  ; FMax(a,b)
  %7008 = call float @dx.op.binary.f32(i32 36, float %7006, float %6928)  ; FMin(a,b)
  %7009 = call float @dx.op.binary.f32(i32 36, float %7007, float %6928)  ; FMin(a,b)
  %7010 = fadd fast float %7008, %6925
  %7011 = fadd fast float %7009, %6926
  %7012 = uitofp i32 %6962 to float
  %7013 = fadd fast float %6988, %6935
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7010, float %7011, float %7012, float undef, i32 0, i32 0, i32 undef, float %7013)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = fadd fast float %7015, -1.000000e+00
  %7017 = fmul fast float %7016, %6896
  %7018 = fadd fast float %7017, 1.000000e+00
  %7019 = fmul fast float %7018, %6908
  br label %7020

; <label>:7020                                    ; preds = %6922, %6920
  %7021 = phi float [ %7019, %6922 ], [ %6908, %6920 ]
  %7022 = call float @dx.op.binary.f32(i32 36, float %7021, float %7021)  ; FMin(a,b)
  %7023 = call float @dx.op.binary.f32(i32 36, float %7021, float %7022)  ; FMin(a,b)
  %7024 = fcmp fast ogt float %7023, 0.000000e+00
  br i1 %7024, label %7025, label %6912, !dx.controlflow.hints !126

; <label>:7025                                    ; preds = %7020
  %7026 = fmul fast float %7021, %6830
  %7027 = fmul fast float %7021, %6831
  %7028 = fmul fast float %7021, %6832
  %7029 = fsub fast float %6814, %4491
  %7030 = fcmp fast ogt float %7029, 0.000000e+00
  %7031 = fsub fast float %199, %4491
  %7032 = fcmp fast ogt float %7031, 0.000000e+00
  %7033 = xor i1 %7032, %7030
  %7034 = fsub fast float %4491, %6814
  %7035 = fmul fast float %7034, 2.000000e+00
  %7036 = fadd fast float %7035, %6814
  %7037 = select i1 %7033, float %6814, float %7036
  %7038 = fsub fast float %7037, %199
  %7039 = call float @dx.op.dot3.f32(i32 55, float %6840, float %6841, float %7038, float %6840, float %6841, float %7038)  ; Dot3(ax,ay,az,bx,by,bz)
  %7040 = call float @dx.op.unary.f32(i32 25, float %7039)  ; Rsqrt(value)
  %7041 = fmul fast float %7040, %6840
  %7042 = fmul fast float %7040, %6841
  %7043 = fmul fast float %7040, %7038
  %7044 = fsub fast float %4491, %199
  %7045 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7044)  ; Dot3(ax,ay,az,bx,by,bz)
  %7046 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7041, float %7042, float %7043)  ; Dot3(ax,ay,az,bx,by,bz)
  %7047 = fdiv fast float 1.000000e+00, %7046
  %7048 = fmul fast float %7047, %7045
  %7049 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7031, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7050 = fcmp fast ogt float %7049, 0.000000e+00
  %7051 = fcmp fast olt float %7049, 0.000000e+00
  %7052 = zext i1 %7050 to i32
  %7053 = zext i1 %7051 to i32
  %7054 = sub nsw i32 %7052, %7053
  %7055 = sitofp i32 %7054 to float
  %7056 = fsub fast float %7037, %4491
  %7057 = call float @dx.op.dot3.f32(i32 55, float %6840, float %6841, float %7056, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7058 = fcmp fast ogt float %7057, 0.000000e+00
  %7059 = fcmp fast olt float %7057, 0.000000e+00
  %7060 = zext i1 %7058 to i32
  %7061 = zext i1 %7059 to i32
  %7062 = sub nsw i32 %7060, %7061
  %7063 = sitofp i32 %7062 to float
  %7064 = fcmp fast une float %7055, %7063
  br i1 %7064, label %7065, label %7075

; <label>:7065                                    ; preds = %7025
  %7066 = fmul fast float %7048, %7043
  %7067 = fmul fast float %7048, %7042
  %7068 = fmul fast float %7048, %7041
  %7069 = fmul fast float %7068, %7068
  %7070 = fmul fast float %7067, %7067
  %7071 = fadd fast float %7069, %7070
  %7072 = fmul fast float %7066, %7066
  %7073 = fadd fast float %7071, %7072
  %7074 = call float @dx.op.unary.f32(i32 24, float %7073)  ; Sqrt(value)
  br label %7087

; <label>:7075                                    ; preds = %7025
  %7076 = icmp slt i32 %7054, 0
  br i1 %7076, label %7077, label %7087

; <label>:7077                                    ; preds = %7075
  %7078 = fsub fast float %197, %6812
  %7079 = fsub fast float %198, %6813
  %7080 = fsub fast float %199, %7037
  %7081 = fmul fast float %7078, %7078
  %7082 = fmul fast float %7079, %7079
  %7083 = fadd fast float %7081, %7082
  %7084 = fmul fast float %7080, %7080
  %7085 = fadd fast float %7083, %7084
  %7086 = call float @dx.op.unary.f32(i32 24, float %7085)  ; Sqrt(value)
  br label %7087

; <label>:7087                                    ; preds = %7077, %7075, %7065
  %7088 = phi float [ %7074, %7065 ], [ %7086, %7077 ], [ 0.000000e+00, %7075 ]
  %7089 = and i1 %7032, %7030
  %7090 = fsub fast float -0.000000e+00, %7088
  %7091 = select i1 %7089, float -0.000000e+00, float %7090
  %7092 = fmul fast float %4492, 0x3FF7154760000000
  %7093 = fmul fast float %7092, %7091
  %7094 = fmul fast float %4493, 0x3FF7154760000000
  %7095 = fmul fast float %7094, %7091
  %7096 = fmul fast float %4494, 0x3FF7154760000000
  %7097 = fmul fast float %7096, %7091
  %7098 = call float @dx.op.unary.f32(i32 21, float %7093)  ; Exp(value)
  %7099 = call float @dx.op.unary.f32(i32 21, float %7095)  ; Exp(value)
  %7100 = call float @dx.op.unary.f32(i32 21, float %7097)  ; Exp(value)
  %7101 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  %7102 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7103 = call float @dx.op.unary.f32(i32 7, float %7100)  ; Saturate(value)
  %7104 = fmul fast float %7026, %7101
  %7105 = fmul fast float %7027, %7102
  %7106 = fmul fast float %7028, %7103
  %7107 = fsub fast float %6846, %5317
  %7108 = fsub fast float %6847, %5318
  %7109 = fsub fast float %6848, %5319
  %7110 = call float @dx.op.dot3.f32(i32 55, float %7107, float %7108, float %7109, float %7107, float %7108, float %7109)  ; Dot3(ax,ay,az,bx,by,bz)
  %7111 = call float @dx.op.unary.f32(i32 25, float %7110)  ; Rsqrt(value)
  %7112 = fmul fast float %7111, %7107
  %7113 = fmul fast float %7111, %7108
  %7114 = fmul fast float %7111, %7109
  %7115 = call float @dx.op.dot3.f32(i32 55, float %6846, float %6847, float %6848, float %5277, float %5278, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %7116 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %7112, float %7113, float %7114)  ; Dot3(ax,ay,az,bx,by,bz)
  %7117 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7118 = fmul fast float %7117, %6853
  %7119 = fmul fast float %7117, %7117
  %7120 = fmul fast float %7119, %5338
  %7121 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  %7122 = fmul fast float %7118, %7121
  %7123 = bitcast float %6843 to i32
  %7124 = ashr i32 %7123, 1
  %7125 = sub nsw i32 1597463007, %7124
  %7126 = bitcast i32 %7125 to float
  %7127 = fmul fast float %7126, %6840
  %7128 = fmul fast float %7126, %6841
  %7129 = fmul fast float %7126, %6842
  %7130 = fsub fast float %7127, %5317
  %7131 = fsub fast float %7128, %5318
  %7132 = fsub fast float %7129, %5319
  %7133 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7132, float %7130, float %7131, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.unary.f32(i32 25, float %7133)  ; Rsqrt(value)
  %7135 = fmul fast float %7130, %7134
  %7136 = fmul fast float %7131, %7134
  %7137 = fmul fast float %7132, %7134
  %7138 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %7135, float %7136, float %7137)  ; Dot3(ax,ay,az,bx,by,bz)
  %7139 = fmul fast float %7138, %7138
  %7140 = call float @dx.op.unary.f32(i32 6, float %7115)  ; FAbs(value)
  %7141 = fsub fast float 1.000000e+00, %5280
  %7142 = call float @dx.op.binary.f32(i32 35, float %7141, float 0x3F847AE140000000)  ; FMax(a,b)
  %7143 = fmul fast float %7142, %7142
  %7144 = fmul fast float %7143, %7143
  %7145 = fsub fast float 1.000000e+00, %7144
  %7146 = fmul fast float %5325, %5325
  %7147 = fmul fast float %7146, %7145
  %7148 = fadd fast float %7147, %7144
  %7149 = bitcast float %7148 to i32
  %7150 = ashr i32 %7149, 1
  %7151 = add nsw i32 %7150, 532487669
  %7152 = bitcast i32 %7151 to float
  %7153 = fadd fast float %7152, %5325
  %7154 = fmul fast float %7144, %7139
  %7155 = fsub fast float 1.000000e+00, %7139
  %7156 = fadd fast float %7155, %7154
  %7157 = fmul fast float %7140, %7140
  %7158 = fmul fast float %7157, %7145
  %7159 = fadd fast float %7158, %7144
  %7160 = bitcast float %7159 to i32
  %7161 = ashr i32 %7160, 1
  %7162 = add nsw i32 %7161, 532487669
  %7163 = bitcast i32 %7162 to float
  %7164 = fadd fast float %7163, %7140
  %7165 = fmul fast float %7156, %7156
  %7166 = fmul fast float %7165, %7153
  %7167 = fmul fast float %7166, %7164
  %7168 = fdiv fast float 1.000000e+00, %7167
  %7169 = bitcast float %7144 to i32
  %7170 = sitofp i32 %7169 to float
  %7171 = fmul fast float %7170, 0x3FE7F73180000000
  %7172 = fadd fast float %7171, 0x41AFE27C40000000
  %7173 = fptosi float %7172 to i32
  %7174 = bitcast i32 %7173 to float
  %7175 = fmul fast float %6809, 0x3FD80E9D60000000
  %7176 = fmul fast float %7175, %7126
  %7177 = fadd fast float %7174, %7176
  %7178 = bitcast float %7177 to i32
  %7179 = sub nsw i32 2129859010, %7178
  %7180 = bitcast i32 %7179 to float
  %7181 = fmul fast float %7144, %7168
  %7182 = fmul fast float %7181, %7174
  %7183 = fmul fast float %7182, %7180
  %7184 = call float @dx.op.unary.f32(i32 6, float %7116)  ; FAbs(value)
  %7185 = fsub fast float 1.000000e+00, %7184
  %7186 = bitcast float %7185 to i32
  %7187 = sitofp i32 %7186 to float
  %7188 = fmul fast float %7187, 5.000000e+00
  %7189 = fadd fast float %7188, 0xC1EFBF8940000000
  %7190 = fptosi float %7189 to i32
  %7191 = bitcast i32 %7190 to float
  %7192 = fsub fast float 1.000000e+00, %5274
  %7193 = fsub fast float 1.000000e+00, %5275
  %7194 = fsub fast float 1.000000e+00, %5323
  %7195 = fmul fast float %7191, %7192
  %7196 = fmul fast float %7191, %7193
  %7197 = fmul fast float %7191, %7194
  %7198 = fadd fast float %7195, %5274
  %7199 = fadd fast float %7196, %5275
  %7200 = fadd fast float %7197, %5323
  br i1 %5454, label %7201, label %7224

; <label>:7201                                    ; preds = %7087
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %7184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = extractvalue %dx.types.ResRet.f32 %7202, 1
  %7205 = extractvalue %dx.types.ResRet.f32 %7202, 2
  %7206 = fadd fast float %7203, -5.000000e-01
  %7207 = fadd fast float %7204, -5.000000e-01
  %7208 = fadd fast float %7205, -5.000000e-01
  %7209 = fmul fast float %5274, 4.000000e+00
  %7210 = fmul fast float %7209, %7192
  %7211 = fmul fast float %7210, %7206
  %7212 = fmul fast float %5275, 4.000000e+00
  %7213 = fmul fast float %7212, %7193
  %7214 = fmul fast float %7213, %7207
  %7215 = fmul fast float %5323, 4.000000e+00
  %7216 = fmul fast float %7215, %7194
  %7217 = fmul fast float %7216, %7208
  %7218 = fadd fast float %7211, %7198
  %7219 = fadd fast float %7214, %7199
  %7220 = fadd fast float %7217, %7200
  %7221 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7223 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  br label %7224

; <label>:7224                                    ; preds = %7201, %7087
  %7225 = phi float [ %7221, %7201 ], [ %7198, %7087 ]
  %7226 = phi float [ %7222, %7201 ], [ %7199, %7087 ]
  %7227 = phi float [ %7223, %7201 ], [ %7200, %7087 ]
  %7228 = fmul fast float %7115, 9.843750e-01
  %7229 = fadd fast float %7228, 7.812500e-03
  %7230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7229, float %5444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7231 = extractvalue %dx.types.ResRet.f32 %7230, 2
  %7232 = extractvalue %dx.types.ResRet.f32 %7230, 3
  %7233 = fmul fast float %7231, %5274
  %7234 = fmul fast float %7231, %5275
  %7235 = fmul fast float %7231, %5323
  %7236 = fadd fast float %7233, %7232
  %7237 = fadd fast float %7234, %7232
  %7238 = fadd fast float %7235, %7232
  br i1 %5454, label %7239, label %7262

; <label>:7239                                    ; preds = %7224
  %7240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %7115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = extractvalue %dx.types.ResRet.f32 %7240, 1
  %7243 = extractvalue %dx.types.ResRet.f32 %7240, 2
  %7244 = fadd fast float %7241, -5.000000e-01
  %7245 = fadd fast float %7242, -5.000000e-01
  %7246 = fadd fast float %7243, -5.000000e-01
  %7247 = fmul fast float %5274, 4.000000e+00
  %7248 = fmul fast float %7247, %7192
  %7249 = fmul fast float %7248, %7244
  %7250 = fmul fast float %5275, 4.000000e+00
  %7251 = fmul fast float %7250, %7193
  %7252 = fmul fast float %7251, %7245
  %7253 = fmul fast float %5323, 4.000000e+00
  %7254 = fmul fast float %7253, %7194
  %7255 = fmul fast float %7254, %7246
  %7256 = fadd fast float %7249, %7236
  %7257 = fadd fast float %7252, %7237
  %7258 = fadd fast float %7255, %7238
  %7259 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7260 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  %7261 = call float @dx.op.unary.f32(i32 7, float %7258)  ; Saturate(value)
  br label %7262

; <label>:7262                                    ; preds = %7239, %7224
  %7263 = phi float [ %7259, %7239 ], [ %7236, %7224 ]
  %7264 = phi float [ %7260, %7239 ], [ %7237, %7224 ]
  %7265 = phi float [ %7261, %7239 ], [ %7238, %7224 ]
  %7266 = call float @dx.op.binary.f32(i32 35, float %7264, float %7265)  ; FMax(a,b)
  %7267 = call float @dx.op.binary.f32(i32 35, float %7263, float %7266)  ; FMax(a,b)
  %7268 = fsub fast float 1.000000e+00, %7267
  %7269 = fmul fast float %7225, %7183
  %7270 = fmul fast float %7226, %7183
  %7271 = fmul fast float %7227, %7183
  %7272 = fsub fast float 1.000000e+00, %7116
  %7273 = bitcast float %7272 to i32
  %7274 = sitofp i32 %7273 to float
  %7275 = fmul fast float %7274, 5.000000e+00
  %7276 = fadd fast float %7275, 0xC1EFBF8940000000
  %7277 = fptosi float %7276 to i32
  %7278 = bitcast i32 %7277 to float
  %7279 = fmul fast float %7278, %4090
  %7280 = fmul fast float %7268, %7279
  %7281 = fmul fast float %7280, %5557
  %7282 = fmul fast float %7280, %5558
  %7283 = fmul fast float %7280, %5559
  %7284 = fadd fast float %7281, %7269
  %7285 = fadd fast float %7282, %7270
  %7286 = fadd fast float %7283, %7271
  %7287 = fmul fast float %7104, %4086
  %7288 = fmul fast float %7287, %7122
  %7289 = fmul fast float %7288, %7268
  %7290 = fmul fast float %7105, %4086
  %7291 = fmul fast float %7290, %7122
  %7292 = fmul fast float %7291, %7268
  %7293 = fmul fast float %7106, %4086
  %7294 = fmul fast float %7293, %7122
  %7295 = fmul fast float %7294, %7268
  %7296 = fadd fast float %7289, %6783
  %7297 = fadd fast float %7292, %6784
  %7298 = fadd fast float %7295, %6785
  %7299 = fmul fast float %7288, %7284
  %7300 = fmul fast float %7291, %7285
  %7301 = fmul fast float %7294, %7286
  %7302 = fadd fast float %7299, %6780
  %7303 = fadd fast float %7300, %6781
  %7304 = fadd fast float %7301, %6782
  br label %6912

; <label>:7305                                    ; preds = %6912
  br label %7306

; <label>:7306                                    ; preds = %7305, %6746
  %7307 = phi float [ %6748, %6746 ], [ %6913, %7305 ]
  %7308 = phi float [ %6749, %6746 ], [ %6914, %7305 ]
  %7309 = phi float [ %6750, %6746 ], [ %6915, %7305 ]
  %7310 = phi float [ %6751, %6746 ], [ %6916, %7305 ]
  %7311 = phi float [ %6752, %6746 ], [ %6917, %7305 ]
  %7312 = phi float [ %6753, %6746 ], [ %6918, %7305 ]
  %7313 = add i32 %6747, 1
  %7314 = icmp ugt i32 %7313, %6743
  br i1 %7314, label %7315, label %6746

; <label>:7315                                    ; preds = %7306
  br label %7316

; <label>:7316                                    ; preds = %7315, %6696, %6686
  %7317 = phi float [ %6687, %6686 ], [ %6687, %6696 ], [ %7307, %7315 ]
  %7318 = phi float [ %6688, %6686 ], [ %6688, %6696 ], [ %7308, %7315 ]
  %7319 = phi float [ %6689, %6686 ], [ %6689, %6696 ], [ %7309, %7315 ]
  %7320 = phi float [ %6690, %6686 ], [ %6690, %6696 ], [ %7310, %7315 ]
  %7321 = phi float [ %6691, %6686 ], [ %6691, %6696 ], [ %7311, %7315 ]
  %7322 = phi float [ %6692, %6686 ], [ %6692, %6696 ], [ %7312, %7315 ]
  %7323 = fmul fast float %4086, %4086
  %7324 = fsub fast float 1.000000e+00, %7323
  %7325 = call float @dx.op.dot3.f32(i32 55, float %7324, float %7324, float %7324, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7326 = fsub fast float 1.000000e+00, %7325
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7329 = fmul fast float %7328, %5573
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 3
  %7332 = fsub fast float 1.000000e+00, %4094
  %7333 = call float @dx.op.unary.f32(i32 7, float %7332)  ; Saturate(value)
  %7334 = fadd fast float %7322, %4092
  %7335 = fmul fast float %7334, %4094
  %7336 = fmul fast float %7333, %7331
  %7337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.f32 %7337, 3
  %7339 = fmul fast float %7320, %5271
  %7340 = fmul fast float %7321, %5272
  %7341 = fmul fast float %7322, %5273
  %7342 = fcmp fast ogt float %101, %232
  %7343 = and i1 %7342, %4497
  %7344 = or i1 %4503, %7343
  %7345 = icmp eq i32 %4496, 2
  %7346 = fcmp fast ole float %101, %232
  %7347 = and i1 %7346, %7345
  %7348 = or i1 %7347, %7344
  br i1 %7343, label %7349, label %7606

; <label>:7349                                    ; preds = %7316
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = extractvalue %dx.types.CBufRet.f32 %7350, 3
  %7353 = fmul fast float %7351, %110
  %7354 = fmul fast float %7352, %111
  %7355 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7356 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7357 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7355, float %7356, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7358 = extractvalue %dx.types.ResRet.f32 %7357, 0
  %7359 = extractvalue %dx.types.ResRet.f32 %7357, 1
  %7360 = extractvalue %dx.types.ResRet.f32 %7357, 2
  %7361 = extractvalue %dx.types.ResRet.f32 %7357, 3
  %7362 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7355, float %7356, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.ResRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.ResRet.f32 %7362, 2
  %7366 = extractvalue %dx.types.ResRet.f32 %7362, 3
  %7367 = call float @dx.op.binary.f32(i32 35, float %7359, float %7360)  ; FMax(a,b)
  %7368 = call float @dx.op.binary.f32(i32 35, float %7358, float %7367)  ; FMax(a,b)
  %7369 = call float @dx.op.binary.f32(i32 35, float %7368, float %7361)  ; FMax(a,b)
  %7370 = call float @dx.op.binary.f32(i32 36, float %7364, float %7365)  ; FMin(a,b)
  %7371 = call float @dx.op.binary.f32(i32 36, float %7363, float %7370)  ; FMin(a,b)
  %7372 = call float @dx.op.binary.f32(i32 36, float %7371, float %7366)  ; FMin(a,b)
  %7373 = fmul fast float %7369, 2.550000e+02
  %7374 = fadd fast float %7373, 0x3F70101020000000
  %7375 = fptoui float %7374 to i32
  %7376 = fmul fast float %7372, 2.550000e+02
  %7377 = fadd fast float %7376, 0x3F70101020000000
  %7378 = fptoui float %7377 to i32
  %7379 = icmp ult i32 %7375, %7378
  br i1 %7379, label %7380, label %7548

; <label>:7380                                    ; preds = %7349
  %7381 = fcmp fast ogt float %100, 9.843750e-01
  %7382 = fadd fast float %101, -4.000000e+00
  %7383 = select i1 %7381, float -4.000000e+00, float %7382
  %7384 = call float @dx.op.binary.f32(i32 35, float %7383, float 0.000000e+00)  ; FMax(a,b)
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = fadd fast float %7386, %7384
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7389 = fmul fast float %7387, %7388
  %7390 = call float @dx.op.unary.f32(i32 23, float %7389)  ; Log(value)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7385, 3
  %7392 = fmul fast float %7391, %7390
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7395 = fmul fast float %7392, %7394
  %7396 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7397 = uitofp i32 %7375 to float
  %7398 = uitofp i32 %7378 to float
  %7399 = fadd fast float %7397, 5.000000e-01
  %7400 = fadd fast float %7398, 5.000000e-01
  %7401 = fmul fast float %7394, %7399
  %7402 = fmul fast float %7394, %7400
  %7403 = fadd fast float %7401, 0x3F0FFB4800000000
  %7404 = fadd fast float %7402, 0xBF0FFB4800000000
  %7405 = call float @dx.op.binary.f32(i32 35, float %7396, float %7403)  ; FMax(a,b)
  %7406 = call float @dx.op.binary.f32(i32 36, float %7405, float %7404)  ; FMin(a,b)
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7409 = extractvalue %dx.types.CBufRet.f32 %7407, 2
  %7410 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7411 = fmul fast float %7408, %7406
  %7412 = fadd fast float %7410, %7411
  %7413 = fadd fast float %7410, %7409
  %7414 = fsub fast float %7408, %7409
  %7415 = fadd fast float %7414, %7410
  %7416 = call float @dx.op.binary.f32(i32 35, float %7412, float %7413)  ; FMax(a,b)
  %7417 = call float @dx.op.binary.f32(i32 36, float %7416, float %7415)  ; FMin(a,b)
  %7418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7355, float %7356, float %7417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7419 = extractvalue %dx.types.ResRet.f32 %7418, 0
  %7420 = extractvalue %dx.types.ResRet.f32 %7418, 1
  %7421 = extractvalue %dx.types.ResRet.f32 %7418, 2
  %7422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.i32 %7422, 0
  %7424 = extractvalue %dx.types.CBufRet.i32 %7422, 1
  %7425 = uitofp i32 %7423 to float
  %7426 = uitofp i32 %7424 to float
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7430 = fmul fast float %7425, %7355
  %7431 = fmul fast float %7426, %7356
  %7432 = fadd fast float %7430, -5.000000e-01
  %7433 = fadd fast float %7431, -5.000000e-01
  %7434 = call float @dx.op.unary.f32(i32 22, float %7432)  ; Frc(value)
  %7435 = call float @dx.op.unary.f32(i32 22, float %7433)  ; Frc(value)
  %7436 = fmul fast float %7434, %7434
  %7437 = fmul fast float %7436, %7434
  %7438 = fsub fast float 3.000000e+00, %7434
  %7439 = fmul fast float %7436, %7438
  %7440 = fmul fast float %7434, 3.000000e+00
  %7441 = fmul fast float %7437, 3.000000e+00
  %7442 = fmul fast float %7436, 6.000000e+00
  %7443 = fsub fast float %7441, %7442
  %7444 = fadd fast float %7443, 4.000000e+00
  %7445 = fmul fast float %7444, 0x3FC5555560000000
  %7446 = fmul fast float %7437, -3.000000e+00
  %7447 = fadd fast float %7436, %7434
  %7448 = fmul fast float %7447, 3.000000e+00
  %7449 = fadd fast float %7446, 1.000000e+00
  %7450 = fadd fast float %7449, %7448
  %7451 = fmul fast float %7437, 0x3FC5555560000000
  %7452 = fmul fast float %7435, %7435
  %7453 = fmul fast float %7452, %7435
  %7454 = fsub fast float 3.000000e+00, %7435
  %7455 = fmul fast float %7452, %7454
  %7456 = fmul fast float %7435, 3.000000e+00
  %7457 = fmul fast float %7453, 3.000000e+00
  %7458 = fmul fast float %7452, 6.000000e+00
  %7459 = fsub fast float %7457, %7458
  %7460 = fadd fast float %7459, 4.000000e+00
  %7461 = fmul fast float %7460, 0x3FC5555560000000
  %7462 = fmul fast float %7453, -3.000000e+00
  %7463 = fadd fast float %7452, %7435
  %7464 = fmul fast float %7463, 3.000000e+00
  %7465 = fadd fast float %7462, 1.000000e+00
  %7466 = fadd fast float %7465, %7464
  %7467 = fmul fast float %7453, 0x3FC5555560000000
  %7468 = fadd fast float %7434, 1.000000e+00
  %7469 = fsub fast float 1.000000e+00, %7440
  %7470 = fadd fast float %7469, %7439
  %7471 = fadd fast float %7470, %7444
  %7472 = fmul fast float %7471, 0x3FC5555560000000
  %7473 = fdiv fast float %7445, %7472
  %7474 = fsub fast float %7468, %7473
  %7475 = fsub fast float 1.000000e+00, %7434
  %7476 = fadd fast float %7450, %7437
  %7477 = fmul fast float %7476, 0x3FC5555560000000
  %7478 = fdiv fast float %7451, %7477
  %7479 = fadd fast float %7475, %7478
  %7480 = fadd fast float %7435, 1.000000e+00
  %7481 = fsub fast float 1.000000e+00, %7456
  %7482 = fadd fast float %7481, %7455
  %7483 = fadd fast float %7482, %7460
  %7484 = fmul fast float %7483, 0x3FC5555560000000
  %7485 = fdiv fast float %7461, %7484
  %7486 = fsub fast float %7480, %7485
  %7487 = fsub fast float 1.000000e+00, %7435
  %7488 = fadd fast float %7466, %7453
  %7489 = fmul fast float %7488, 0x3FC5555560000000
  %7490 = fdiv fast float %7467, %7489
  %7491 = fadd fast float %7490, %7487
  %7492 = fmul fast float %7474, %7428
  %7493 = fsub fast float %7355, %7492
  %7494 = fmul fast float %7479, %7428
  %7495 = fadd fast float %7494, %7355
  %7496 = fmul fast float %7491, %7429
  %7497 = fadd fast float %7496, %7356
  %7498 = fmul fast float %7486, %7429
  %7499 = fsub fast float %7356, %7498
  %7500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7493, float %7499, float %7417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7501 = extractvalue %dx.types.ResRet.f32 %7500, 0
  %7502 = extractvalue %dx.types.ResRet.f32 %7500, 1
  %7503 = extractvalue %dx.types.ResRet.f32 %7500, 2
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7495, float %7499, float %7417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.ResRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.ResRet.f32 %7504, 2
  %7508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7493, float %7497, float %7417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7509 = extractvalue %dx.types.ResRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.ResRet.f32 %7508, 1
  %7511 = extractvalue %dx.types.ResRet.f32 %7508, 2
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7495, float %7497, float %7417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.ResRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7512, 2
  %7516 = fsub fast float %7509, %7501
  %7517 = fsub fast float %7510, %7502
  %7518 = fsub fast float %7511, %7503
  %7519 = fmul fast float %7516, %7489
  %7520 = fmul fast float %7517, %7489
  %7521 = fmul fast float %7518, %7489
  %7522 = fadd fast float %7519, %7501
  %7523 = fadd fast float %7520, %7502
  %7524 = fadd fast float %7521, %7503
  %7525 = fsub fast float %7513, %7505
  %7526 = fsub fast float %7514, %7506
  %7527 = fsub fast float %7515, %7507
  %7528 = fmul fast float %7525, %7489
  %7529 = fmul fast float %7526, %7489
  %7530 = fmul fast float %7527, %7489
  %7531 = fsub fast float %7505, %7522
  %7532 = fadd fast float %7531, %7528
  %7533 = fsub fast float %7506, %7523
  %7534 = fadd fast float %7533, %7529
  %7535 = fsub fast float %7507, %7524
  %7536 = fadd fast float %7535, %7530
  %7537 = fmul fast float %7532, %7477
  %7538 = fmul fast float %7534, %7477
  %7539 = fmul fast float %7536, %7477
  %7540 = fadd fast float %7537, %7522
  %7541 = fadd fast float %7538, %7523
  %7542 = fadd fast float %7539, %7524
  %7543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7543, 1
  %7545 = fmul fast float %7540, %7544
  %7546 = fmul fast float %7541, %7544
  %7547 = fmul fast float %7542, %7544
  br label %7548

; <label>:7548                                    ; preds = %7380, %7349
  %7549 = phi float [ %7419, %7380 ], [ 1.000000e+00, %7349 ]
  %7550 = phi float [ %7420, %7380 ], [ 1.000000e+00, %7349 ]
  %7551 = phi float [ %7421, %7380 ], [ 1.000000e+00, %7349 ]
  %7552 = phi float [ %7545, %7380 ], [ 0.000000e+00, %7349 ]
  %7553 = phi float [ %7546, %7380 ], [ 0.000000e+00, %7349 ]
  %7554 = phi float [ %7547, %7380 ], [ 0.000000e+00, %7349 ]
  %7555 = fmul fast float %7552, %7326
  %7556 = fmul fast float %7553, %7326
  %7557 = fmul fast float %7554, %7326
  %7558 = call float @dx.op.dot3.f32(i32 55, float %7549, float %7550, float %7551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7559 = call float @dx.op.dot3.f32(i32 55, float %7555, float %7556, float %7557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7560 = select i1 %269, float %7558, float %7549
  %7561 = select i1 %269, float %7558, float %7550
  %7562 = select i1 %269, float 1.000000e+00, float %7551
  %7563 = select i1 %269, float %7559, float %7555
  %7564 = select i1 %269, float 0.000000e+00, float %7556
  %7565 = select i1 %269, float 0.000000e+00, float %7557
  %7566 = fmul fast float %7560, %7339
  %7567 = fmul fast float %7561, %7340
  %7568 = fmul fast float %7562, %7341
  %7569 = fadd fast float %7566, %7563
  %7570 = fadd fast float %7567, %7564
  %7571 = fadd fast float %7565, %7568
  %7572 = fmul fast float %7560, %7317
  %7573 = fmul fast float %7561, %7318
  %7574 = fmul fast float %7562, %7319
  %7575 = fmul fast float %146, %7351
  %7576 = fmul fast float %148, %7352
  %7577 = fsub fast float 1.000000e+00, %7575
  %7578 = fsub fast float 1.000000e+00, %7576
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 0
  %7581 = extractvalue %dx.types.CBufRet.f32 %7579, 1
  %7582 = extractvalue %dx.types.CBufRet.f32 %7579, 2
  %7583 = fmul fast float %7577, %7580
  %7584 = fmul fast float %7577, %7581
  %7585 = fmul fast float %7577, %7582
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.CBufRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.CBufRet.f32 %7586, 2
  %7590 = fmul fast float %7578, %7587
  %7591 = fmul fast float %7578, %7588
  %7592 = fmul fast float %7578, %7589
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7595 = extractvalue %dx.types.CBufRet.f32 %7593, 1
  %7596 = extractvalue %dx.types.CBufRet.f32 %7593, 2
  %7597 = fadd fast float %7590, %7594
  %7598 = fadd fast float %7597, %7583
  %7599 = fadd fast float %7591, %7595
  %7600 = fadd fast float %7599, %7584
  %7601 = fadd fast float %7592, %7596
  %7602 = fadd fast float %7601, %7585
  %7603 = fmul fast float %7598, %232
  %7604 = fmul fast float %7600, %232
  %7605 = fmul fast float %7602, %232
  br label %7606

; <label>:7606                                    ; preds = %7548, %7316
  %7607 = phi float [ %7603, %7548 ], [ %197, %7316 ]
  %7608 = phi float [ %7604, %7548 ], [ %198, %7316 ]
  %7609 = phi float [ %7605, %7548 ], [ %199, %7316 ]
  %7610 = phi float [ %232, %7548 ], [ %101, %7316 ]
  %7611 = phi float [ %7569, %7548 ], [ %7339, %7316 ]
  %7612 = phi float [ %7570, %7548 ], [ %7340, %7316 ]
  %7613 = phi float [ %7571, %7548 ], [ %7341, %7316 ]
  %7614 = phi float [ %7572, %7548 ], [ %7317, %7316 ]
  %7615 = phi float [ %7573, %7548 ], [ %7318, %7316 ]
  %7616 = phi float [ %7574, %7548 ], [ %7319, %7316 ]
  %7617 = phi float [ %7549, %7548 ], [ 1.000000e+00, %7316 ]
  br i1 %7348, label %8772, label %7618

; <label>:7618                                    ; preds = %7606
  %7619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7620 = extractvalue %dx.types.CBufRet.f32 %7619, 0
  %7621 = extractvalue %dx.types.CBufRet.f32 %7619, 1
  %7622 = extractvalue %dx.types.CBufRet.f32 %7619, 2
  %7623 = extractvalue %dx.types.CBufRet.f32 %7619, 3
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 0
  %7626 = extractvalue %dx.types.CBufRet.f32 %7624, 1
  %7627 = extractvalue %dx.types.CBufRet.f32 %7624, 2
  %7628 = extractvalue %dx.types.CBufRet.f32 %7624, 3
  %7629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7630 = extractvalue %dx.types.CBufRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.CBufRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.CBufRet.f32 %7629, 2
  %7633 = extractvalue %dx.types.CBufRet.f32 %7629, 3
  %7634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7635 = extractvalue %dx.types.CBufRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.CBufRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.CBufRet.f32 %7634, 2
  %7638 = extractvalue %dx.types.CBufRet.f32 %7634, 3
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 3
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7643 = extractvalue %dx.types.CBufRet.f32 %7641, 0
  %7644 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7645 = extractvalue %dx.types.CBufRet.f32 %7641, 2
  %7646 = fcmp fast olt float %7645, -5.000000e-01
  %7647 = call float @dx.op.dot3.f32(i32 55, float %7607, float %7608, float %7609, float %7607, float %7608, float %7609)  ; Dot3(ax,ay,az,bx,by,bz)
  %7648 = call float @dx.op.unary.f32(i32 25, float %7647)  ; Rsqrt(value)
  %7649 = fmul fast float %7648, %7647
  %7650 = fmul fast float %7648, %7607
  %7651 = fmul fast float %7648, %7608
  %7652 = fmul fast float %7648, %7609
  %7653 = fadd fast float %7649, %7623
  %7654 = call float @dx.op.dot3.f32(i32 55, float %7650, float %7651, float %7652, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.i32 %7655, 1
  %7657 = and i32 %7656, 1
  %7658 = icmp ne i32 %7657, 0
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7661 = fcmp fast ogt float %7660, 0.000000e+00
  %7662 = and i1 %7658, %7661
  br i1 %7662, label %7663, label %8069, !dx.controlflow.hints !127

; <label>:7663                                    ; preds = %7618
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 3
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 2
  %7670 = fsub fast float %7667, %7669
  %7671 = and i32 %7656, 2
  %7672 = extractvalue %dx.types.CBufRet.i32 %7655, 0
  %7673 = call i32 @dx.op.binary.i32(i32 40, i32 %7672, i32 3)  ; UMin(a,b)
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.CBufRet.f32 %7674, 1
  %7677 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7678 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7679 = fsub fast float %7675, %7677
  %7680 = fsub fast float %7676, %7678
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 0
  %7683 = fcmp fast ogt float %7682, 0.000000e+00
  %7684 = fsub fast float -0.000000e+00, %7679
  %7685 = fsub fast float -0.000000e+00, %7680
  %7686 = call float @dx.op.dot2.f32(i32 54, float %7650, float %7651, float %7650, float %7651)  ; Dot2(ax,ay,bx,by)
  %7687 = call float @dx.op.dot2.f32(i32 54, float %7650, float %7651, float %7684, float %7685)  ; Dot2(ax,ay,bx,by)
  %7688 = fmul fast float %7687, 2.000000e+00
  %7689 = call float @dx.op.dot2.f32(i32 54, float %7684, float %7685, float %7684, float %7685)  ; Dot2(ax,ay,bx,by)
  %7690 = fmul fast float %7682, %7682
  %7691 = fsub fast float %7689, %7690
  %7692 = fmul fast float %7688, %7688
  %7693 = fmul fast float %7686, 4.000000e+00
  %7694 = fmul fast float %7693, %7691
  %7695 = fsub fast float %7692, %7694
  %7696 = fcmp fast ogt float %7695, 0.000000e+00
  br i1 %7696, label %7697, label %7712

; <label>:7697                                    ; preds = %7663
  %7698 = fcmp fast ogt float %7688, 0.000000e+00
  %7699 = call float @dx.op.unary.f32(i32 24, float %7695)  ; Sqrt(value)
  %7700 = fsub fast float -0.000000e+00, %7699
  %7701 = select i1 %7698, float %7699, float %7700
  %7702 = fadd fast float %7701, %7688
  %7703 = fmul float %7702, -5.000000e-01
  %7704 = fdiv fast float %7703, %7686
  %7705 = call float @dx.op.binary.f32(i32 35, float %7704, float 0.000000e+00)  ; FMax(a,b)
  %7706 = call float @dx.op.binary.f32(i32 36, float %7649, float %7705)  ; FMin(a,b)
  %7707 = fdiv fast float %7691, %7703
  %7708 = call float @dx.op.binary.f32(i32 35, float %7707, float 0.000000e+00)  ; FMax(a,b)
  %7709 = call float @dx.op.binary.f32(i32 36, float %7649, float %7708)  ; FMin(a,b)
  %7710 = call float @dx.op.binary.f32(i32 36, float %7706, float %7709)  ; FMin(a,b)
  %7711 = call float @dx.op.binary.f32(i32 35, float %7706, float %7709)  ; FMax(a,b)
  br label %7712

; <label>:7712                                    ; preds = %7697, %7663
  %7713 = phi float [ %7711, %7697 ], [ -1.000000e+00, %7663 ]
  %7714 = phi float [ %7710, %7697 ], [ -1.000000e+00, %7663 ]
  %7715 = phi i1 [ true, %7697 ], [ false, %7663 ]
  %7716 = and i1 %7683, %7715
  br i1 %7716, label %7717, label %7719

; <label>:7717                                    ; preds = %7712
  %7718 = fcmp fast oeq float %7714, %7713
  br i1 %7718, label %8022, label %7720

; <label>:7719                                    ; preds = %7712
  br i1 %7683, label %8022, label %7720

; <label>:7720                                    ; preds = %7719, %7717
  %7721 = phi float [ %7649, %7719 ], [ %7713, %7717 ]
  %7722 = phi float [ 0.000000e+00, %7719 ], [ %7714, %7717 ]
  %7723 = icmp ne i32 %7671, 0
  %7724 = fmul fast float %7721, %7652
  %7725 = fadd fast float %7724, %7665
  %7726 = fmul fast float %7725, %7721
  %7727 = select i1 %7723, float 0.000000e+00, float %7726
  %7728 = fcmp fast oeq float %7652, 0.000000e+00
  %7729 = fdiv fast float %7670, %7652
  %7730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7729)  ; FMax(a,b)
  %7731 = select i1 %7728, float %7721, float %7730
  %7732 = call float @dx.op.binary.f32(i32 36, float %7721, float %7731)  ; FMin(a,b)
  %7733 = fcmp fast ogt float %7652, 0.000000e+00
  %7734 = fcmp fast olt float %7670, 0.000000e+00
  br i1 %7733, label %7735, label %7792

; <label>:7735                                    ; preds = %7720
  %7736 = icmp eq i32 %7671, 0
  br i1 %7734, label %7737, label %7781

; <label>:7737                                    ; preds = %7735
  %7738 = select i1 %7736, float %7721, float 0.000000e+00
  %7739 = fsub fast float -0.000000e+00, %7738
  %7740 = call float @dx.op.unary.f32(i32 6, float %7739)  ; FAbs(value)
  %7741 = fmul fast float %7738, %7652
  %7742 = fadd fast float %7741, %7665
  %7743 = fmul fast float %7740, %7742
  %7744 = fsub fast float %7727, %7743
  %7745 = fsub fast float %7721, %7740
  %7746 = select i1 %7736, float %7745, float 0.000000e+00
  %7747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7747, 0
  %7749 = extractvalue %dx.types.CBufRet.f32 %7747, 1
  %7750 = extractvalue %dx.types.CBufRet.f32 %7747, 2
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.CBufRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7755 = extractvalue %dx.types.CBufRet.f32 %7751, 3
  %7756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7757 = extractvalue %dx.types.CBufRet.f32 %7756, 3
  %7758 = call float @dx.op.binary.f32(i32 36, float %7744, float %7757)  ; FMin(a,b)
  %7759 = fmul fast float %7755, %7746
  %7760 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7761 = fsub fast float %7752, %7748
  %7762 = fsub fast float %7753, %7749
  %7763 = fsub fast float %7754, %7750
  %7764 = fmul fast float %7760, %7761
  %7765 = fmul fast float %7760, %7762
  %7766 = fmul fast float %7760, %7763
  %7767 = fadd fast float %7764, %7748
  %7768 = fadd fast float %7765, %7749
  %7769 = fadd fast float %7766, %7750
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = fadd fast float %7772, %7771
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7776 = extractvalue %dx.types.CBufRet.f32 %7770, 3
  %7777 = fadd fast float %7776, %7775
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fmul fast float %7774, %7758
  %7780 = fmul fast float %7779, %7778
  br label %8022

; <label>:7781                                    ; preds = %7735
  br i1 %7736, label %7782, label %7803

; <label>:7782                                    ; preds = %7781
  %7783 = call float @dx.op.binary.f32(i32 36, float %7732, float %7722)  ; FMin(a,b)
  %7784 = fsub fast float %7732, %7783
  %7785 = fsub fast float %7784, %7721
  %7786 = call float @dx.op.unary.f32(i32 6, float %7785)  ; FAbs(value)
  %7787 = fadd fast float %7784, %7721
  %7788 = fmul fast float %7787, %7652
  %7789 = fadd fast float %7788, %7665
  %7790 = fmul fast float %7789, %7786
  %7791 = fsub fast float %7727, %7790
  br label %7803

; <label>:7792                                    ; preds = %7720
  br i1 %7734, label %7793, label %7803

; <label>:7793                                    ; preds = %7792
  %7794 = call float @dx.op.binary.f32(i32 35, float %7722, float %7732)  ; FMax(a,b)
  %7795 = icmp eq i32 %7671, 0
  %7796 = select i1 %7795, float %7732, float 0.000000e+00
  %7797 = fsub fast float -0.000000e+00, %7796
  %7798 = call float @dx.op.unary.f32(i32 6, float %7797)  ; FAbs(value)
  %7799 = fmul fast float %7796, %7652
  %7800 = fadd fast float %7799, %7665
  %7801 = fmul fast float %7798, %7800
  %7802 = fsub fast float %7727, %7801
  br label %7803

; <label>:7803                                    ; preds = %7793, %7792, %7782, %7781
  %7804 = phi float [ %7722, %7781 ], [ %7722, %7782 ], [ %7794, %7793 ], [ %7722, %7792 ]
  %7805 = phi float [ 0.000000e+00, %7781 ], [ %7786, %7782 ], [ %7798, %7793 ], [ 0.000000e+00, %7792 ]
  %7806 = phi float [ %7727, %7781 ], [ %7791, %7782 ], [ %7802, %7793 ], [ %7727, %7792 ]
  %7807 = phi float [ %7732, %7781 ], [ %7732, %7782 ], [ %7721, %7793 ], [ %7721, %7792 ]
  %7808 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7808, align 4, !tbaa !128, !noalias !130
  %7809 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7809, align 4, !tbaa !128, !noalias !130
  %7810 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7810, align 4, !tbaa !128, !noalias !130
  %7811 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7811, align 4, !tbaa !128, !noalias !130
  %7812 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7812, align 4, !tbaa !128, !noalias !130
  %7813 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7813, align 4, !tbaa !128, !noalias !130
  %7814 = icmp sgt i32 %7673, 0
  br i1 %7814, label %7815, label %7876

; <label>:7815                                    ; preds = %7803
  br label %7816

; <label>:7816                                    ; preds = %7865, %7815
  %7817 = phi i32 [ %7866, %7865 ], [ 0, %7815 ]
  %7818 = phi i32 [ %7867, %7865 ], [ 0, %7815 ]
  %7819 = add nuw i32 %7818, 171
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7819)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 0
  %7822 = extractvalue %dx.types.CBufRet.f32 %7820, 1
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %7825 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %7826 = fsub fast float %7821, %7824
  %7827 = fsub fast float %7822, %7825
  %7828 = extractvalue %dx.types.CBufRet.f32 %7820, 2
  %7829 = fsub fast float -0.000000e+00, %7826
  %7830 = fsub fast float -0.000000e+00, %7827
  %7831 = call float @dx.op.dot2.f32(i32 54, float %7650, float %7651, float %7829, float %7830)  ; Dot2(ax,ay,bx,by)
  %7832 = fmul fast float %7831, 2.000000e+00
  %7833 = call float @dx.op.dot2.f32(i32 54, float %7829, float %7830, float %7829, float %7830)  ; Dot2(ax,ay,bx,by)
  %7834 = fmul fast float %7828, %7828
  %7835 = fsub fast float %7833, %7834
  %7836 = fmul fast float %7832, %7832
  %7837 = fmul fast float %7693, %7835
  %7838 = fsub fast float %7836, %7837
  %7839 = fcmp fast ogt float %7838, 0.000000e+00
  br i1 %7839, label %7840, label %7855

; <label>:7840                                    ; preds = %7816
  %7841 = fcmp fast ogt float %7832, 0.000000e+00
  %7842 = call float @dx.op.unary.f32(i32 24, float %7838)  ; Sqrt(value)
  %7843 = fsub fast float -0.000000e+00, %7842
  %7844 = select i1 %7841, float %7842, float %7843
  %7845 = fadd fast float %7844, %7832
  %7846 = fmul float %7845, -5.000000e-01
  %7847 = fdiv fast float %7846, %7686
  %7848 = call float @dx.op.binary.f32(i32 35, float %7847, float 0.000000e+00)  ; FMax(a,b)
  %7849 = call float @dx.op.binary.f32(i32 36, float %7721, float %7848)  ; FMin(a,b)
  %7850 = fdiv fast float %7835, %7846
  %7851 = call float @dx.op.binary.f32(i32 35, float %7850, float 0.000000e+00)  ; FMax(a,b)
  %7852 = call float @dx.op.binary.f32(i32 36, float %7721, float %7851)  ; FMin(a,b)
  %7853 = call float @dx.op.binary.f32(i32 36, float %7849, float %7852)  ; FMin(a,b)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7849, float %7852)  ; FMax(a,b)
  br label %7855

; <label>:7855                                    ; preds = %7840, %7816
  %7856 = phi float [ %7854, %7840 ], [ -1.000000e+00, %7816 ]
  %7857 = phi float [ %7853, %7840 ], [ -1.000000e+00, %7816 ]
  %7858 = phi i1 [ true, %7840 ], [ false, %7816 ]
  br i1 %7858, label %7859, label %7865

; <label>:7859                                    ; preds = %7855
  %7860 = call float @dx.op.binary.f32(i32 35, float %7804, float %7857)  ; FMax(a,b)
  %7861 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7818
  store float %7860, float* %7861, align 4, !tbaa !128, !noalias !130
  %7862 = call float @dx.op.binary.f32(i32 35, float %7804, float %7856)  ; FMax(a,b)
  %7863 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7818
  store float %7862, float* %7863, align 4, !tbaa !128, !noalias !130
  %7864 = add nsw i32 %7817, 1
  br label %7865

; <label>:7865                                    ; preds = %7859, %7855
  %7866 = phi i32 [ %7864, %7859 ], [ %7817, %7855 ]
  %7867 = add nuw nsw i32 %7818, 1
  %7868 = icmp eq i32 %7867, %7673
  br i1 %7868, label %7869, label %7816

; <label>:7869                                    ; preds = %7865
  %7870 = load float, float* %7810, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7871 = load float, float* %7809, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %7872 = load float, float* %7808, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %7873 = load float, float* %7813, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7874 = load float, float* %7812, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %7875 = load float, float* %7811, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %7876

; <label>:7876                                    ; preds = %7869, %7803
  %7877 = phi float [ -1.000000e+00, %7803 ], [ %7875, %7869 ]
  %7878 = phi float [ -1.000000e+00, %7803 ], [ %7874, %7869 ]
  %7879 = phi float [ -1.000000e+00, %7803 ], [ %7873, %7869 ]
  %7880 = phi float [ -1.000000e+00, %7803 ], [ %7872, %7869 ]
  %7881 = phi float [ -1.000000e+00, %7803 ], [ %7871, %7869 ]
  %7882 = phi float [ -1.000000e+00, %7803 ], [ %7870, %7869 ]
  %7883 = phi i32 [ 0, %7803 ], [ %7866, %7869 ]
  %7884 = call float @dx.op.binary.f32(i32 36, float %7881, float %7882)  ; FMin(a,b)
  %7885 = call float @dx.op.binary.f32(i32 36, float %7880, float %7884)  ; FMin(a,b)
  %7886 = call float @dx.op.binary.f32(i32 35, float %7880, float %7881)  ; FMax(a,b)
  %7887 = call float @dx.op.binary.f32(i32 36, float %7886, float %7882)  ; FMin(a,b)
  %7888 = call float @dx.op.binary.f32(i32 36, float %7880, float %7881)  ; FMin(a,b)
  %7889 = call float @dx.op.binary.f32(i32 35, float %7888, float %7887)  ; FMax(a,b)
  %7890 = call float @dx.op.binary.f32(i32 35, float %7881, float %7882)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 35, float %7880, float %7890)  ; FMax(a,b)
  store float %7885, float* %7808, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %7889, float* %7809, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %7891, float* %7810, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7892 = call float @dx.op.binary.f32(i32 36, float %7878, float %7879)  ; FMin(a,b)
  %7893 = call float @dx.op.binary.f32(i32 36, float %7877, float %7892)  ; FMin(a,b)
  %7894 = call float @dx.op.binary.f32(i32 35, float %7877, float %7878)  ; FMax(a,b)
  %7895 = call float @dx.op.binary.f32(i32 36, float %7894, float %7879)  ; FMin(a,b)
  %7896 = call float @dx.op.binary.f32(i32 36, float %7877, float %7878)  ; FMin(a,b)
  %7897 = call float @dx.op.binary.f32(i32 35, float %7896, float %7895)  ; FMax(a,b)
  %7898 = call float @dx.op.binary.f32(i32 35, float %7878, float %7879)  ; FMax(a,b)
  %7899 = call float @dx.op.binary.f32(i32 35, float %7877, float %7898)  ; FMax(a,b)
  store float %7893, float* %7811, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %7897, float* %7812, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %7899, float* %7813, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7900 = sub nsw i32 3, %7883
  %7901 = icmp sgt i32 %7900, 2
  br i1 %7901, label %7902, label %7940

; <label>:7902                                    ; preds = %7876
  %7903 = icmp eq i32 %7671, 0
  %7904 = fsub fast float %7721, %7805
  %7905 = select i1 %7903, float %7904, float %7805
  %7906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7906, 0
  %7908 = extractvalue %dx.types.CBufRet.f32 %7906, 1
  %7909 = extractvalue %dx.types.CBufRet.f32 %7906, 2
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.CBufRet.f32 %7910, 1
  %7913 = extractvalue %dx.types.CBufRet.f32 %7910, 2
  %7914 = extractvalue %dx.types.CBufRet.f32 %7910, 3
  %7915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.f32 %7915, 3
  %7917 = call float @dx.op.binary.f32(i32 36, float %7806, float %7916)  ; FMin(a,b)
  %7918 = fmul fast float %7914, %7905
  %7919 = call float @dx.op.unary.f32(i32 7, float %7918)  ; Saturate(value)
  %7920 = fsub fast float %7911, %7907
  %7921 = fsub fast float %7912, %7908
  %7922 = fsub fast float %7913, %7909
  %7923 = fmul fast float %7919, %7920
  %7924 = fmul fast float %7919, %7921
  %7925 = fmul fast float %7919, %7922
  %7926 = fadd fast float %7923, %7907
  %7927 = fadd fast float %7924, %7908
  %7928 = fadd fast float %7925, %7909
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7932 = fadd fast float %7931, %7930
  %7933 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7935 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7936 = fadd fast float %7935, %7934
  %7937 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  %7938 = fmul fast float %7933, %7917
  %7939 = fmul fast float %7938, %7937
  br label %8022

; <label>:7940                                    ; preds = %7876
  %7941 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7900
  %7942 = load float, float* %7941, align 4, !tbaa !128, !noalias !130
  %7943 = fcmp fast olt float %7942, %7807
  %7944 = icmp sgt i32 %7883, 0
  %7945 = and i1 %7944, %7943
  br i1 %7945, label %7946, label %7983

; <label>:7946                                    ; preds = %7940
  br label %7947

; <label>:7947                                    ; preds = %7976, %7946
  %7948 = phi float [ %7977, %7976 ], [ %7805, %7946 ]
  %7949 = phi float [ %7978, %7976 ], [ %7806, %7946 ]
  %7950 = phi float [ %7958, %7976 ], [ %7942, %7946 ]
  %7951 = phi i32 [ %7955, %7976 ], [ %7900, %7946 ]
  %7952 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7951
  %7953 = load float, float* %7952, align 4, !tbaa !128, !noalias !130
  %7954 = icmp slt i32 %7951, 2
  %7955 = add nsw i32 %7951, 1
  %7956 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7955
  %7957 = load float, float* %7956, align 4, !tbaa !128, !noalias !130
  %7958 = select i1 %7954, float %7957, float %7721
  %7959 = call float @dx.op.binary.f32(i32 36, float %7958, float %7953)  ; FMin(a,b)
  %7960 = call float @dx.op.binary.f32(i32 36, float %7807, float %7959)  ; FMin(a,b)
  %7961 = icmp eq i32 %7671, 0
  %7962 = fadd fast float %7960, %7950
  %7963 = fmul fast float %7962, %7652
  %7964 = fadd fast float %7963, %7665
  br i1 %7961, label %7970, label %7965

; <label>:7965                                    ; preds = %7947
  %7966 = fsub fast float %7960, %7950
  %7967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7966)  ; FMax(a,b)
  %7968 = fmul fast float %7967, %7964
  %7969 = fadd fast float %7968, %7949
  br label %7976

; <label>:7970                                    ; preds = %7947
  %7971 = fsub fast float %7950, %7960
  %7972 = call float @dx.op.unary.f32(i32 6, float %7971)  ; FAbs(value)
  %7973 = fadd fast float %7972, %7948
  %7974 = fmul fast float %7972, %7964
  %7975 = fsub fast float %7949, %7974
  br label %7976

; <label>:7976                                    ; preds = %7970, %7965
  %7977 = phi float [ %7967, %7965 ], [ %7973, %7970 ]
  %7978 = phi float [ %7969, %7965 ], [ %7975, %7970 ]
  %7979 = fcmp fast olt float %7958, %7807
  %7980 = icmp slt i32 %7955, 3
  %7981 = and i1 %7980, %7979
  br i1 %7981, label %7947, label %7982

; <label>:7982                                    ; preds = %7976
  br label %7983

; <label>:7983                                    ; preds = %7982, %7940
  %7984 = phi float [ %7805, %7940 ], [ %7977, %7982 ]
  %7985 = phi float [ %7806, %7940 ], [ %7978, %7982 ]
  %7986 = fsub fast float %7721, %7984
  %7987 = select i1 %7723, float %7984, float %7986
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.CBufRet.f32 %7988, 1
  %7991 = extractvalue %dx.types.CBufRet.f32 %7988, 2
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %7996 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %7999 = call float @dx.op.binary.f32(i32 36, float %7985, float %7998)  ; FMin(a,b)
  %8000 = fmul fast float %7996, %7987
  %8001 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8002 = fsub fast float %7993, %7989
  %8003 = fsub fast float %7994, %7990
  %8004 = fsub fast float %7995, %7991
  %8005 = fmul fast float %8001, %8002
  %8006 = fmul fast float %8001, %8003
  %8007 = fmul fast float %8001, %8004
  %8008 = fadd fast float %8005, %7989
  %8009 = fadd fast float %8006, %7990
  %8010 = fadd fast float %8007, %7991
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 0
  %8013 = extractvalue %dx.types.CBufRet.f32 %8011, 1
  %8014 = fadd fast float %8013, %8012
  %8015 = call float @dx.op.unary.f32(i32 7, float %8014)  ; Saturate(value)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8011, 2
  %8017 = extractvalue %dx.types.CBufRet.f32 %8011, 3
  %8018 = fadd fast float %8017, %8016
  %8019 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8020 = fmul fast float %8015, %7999
  %8021 = fmul fast float %8020, %8019
  br label %8022

; <label>:8022                                    ; preds = %7983, %7902, %7737, %7719, %7717
  %8023 = phi float [ %7746, %7737 ], [ %7905, %7902 ], [ %7987, %7983 ], [ 0.000000e+00, %7717 ], [ 0.000000e+00, %7719 ]
  %8024 = phi float [ %7780, %7737 ], [ %7939, %7902 ], [ %8021, %7983 ], [ 0.000000e+00, %7717 ], [ 0.000000e+00, %7719 ]
  %8025 = phi float [ %7767, %7737 ], [ %7926, %7902 ], [ %8008, %7983 ], [ 0.000000e+00, %7717 ], [ 0.000000e+00, %7719 ]
  %8026 = phi float [ %7768, %7737 ], [ %7927, %7902 ], [ %8009, %7983 ], [ 0.000000e+00, %7717 ], [ 0.000000e+00, %7719 ]
  %8027 = phi float [ %7769, %7737 ], [ %7928, %7902 ], [ %8010, %7983 ], [ 0.000000e+00, %7717 ], [ 0.000000e+00, %7719 ]
  %8028 = fmul fast float %7660, %8024
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8031 = fsub fast float %7667, %8030
  %8032 = fcmp fast olt float %8028, -2.000000e+01
  %8033 = call float @dx.op.unary.f32(i32 21, float %8028)  ; Exp(value)
  %8034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8035 = extractvalue %dx.types.CBufRet.f32 %8034, 2
  %8036 = extractvalue %dx.types.CBufRet.f32 %8034, 3
  %8037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8037, 2
  %8039 = fmul fast float %8036, %8031
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = fsub fast float 1.000000e+00, %8040
  %8042 = fmul fast float %7652, 5.000000e-01
  %8043 = fadd fast float %8042, 5.000000e-01
  %8044 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8045 = fsub fast float 1.000000e+00, %8044
  %8046 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8041)  ; FMax(a,b)
  %8047 = fdiv fast float %8045, %8046
  %8048 = fsub fast float %8031, %7609
  %8049 = call float @dx.op.unary.f32(i32 6, float %8048)  ; FAbs(value)
  %8050 = fmul fast float %8049, %8035
  %8051 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8052 = fsub fast float 1.000000e+00, %8050
  %8053 = fmul fast float %8052, %8051
  %8054 = fadd fast float %8053, %8050
  %8055 = fmul fast float %8038, %8031
  %8056 = call float @dx.op.unary.f32(i32 7, float %8055)  ; Saturate(value)
  %8057 = fsub fast float 1.000000e+00, %8054
  %8058 = fmul fast float %8057, %8056
  %8059 = fadd fast float %8058, %8054
  %8060 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8061 = fadd fast float %8033, -1.000000e+00
  %8062 = select i1 %8032, float -1.000000e+00, float %8061
  %8063 = fmul fast float %8060, %8062
  %8064 = fadd fast float %8063, 1.000000e+00
  %8065 = fsub fast float -0.000000e+00, %8063
  %8066 = fmul fast float %8025, %8065
  %8067 = fmul fast float %8026, %8065
  %8068 = fmul fast float %8027, %8065
  br label %8069

; <label>:8069                                    ; preds = %8022, %7618
  %8070 = phi float [ %8023, %8022 ], [ 0.000000e+00, %7618 ]
  %8071 = phi float [ %8064, %8022 ], [ 1.000000e+00, %7618 ]
  %8072 = phi float [ %8066, %8022 ], [ 0.000000e+00, %7618 ]
  %8073 = phi float [ %8067, %8022 ], [ 0.000000e+00, %7618 ]
  %8074 = phi float [ %8068, %8022 ], [ 0.000000e+00, %7618 ]
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8077 = fsub fast float 1.000000e+00, %8071
  %8078 = fmul fast float %8077, %7653
  %8079 = fmul fast float %8078, %8076
  %8080 = fsub fast float %7653, %8079
  br i1 %7646, label %8081, label %8110, !dx.controlflow.hints !166

; <label>:8081                                    ; preds = %8069
  %8082 = fmul fast float %7654, %7643
  %8083 = fadd fast float %8082, %7644
  %8084 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  %8085 = fmul fast float %7625, %8080
  %8086 = fsub fast float -0.000000e+00, %8085
  %8087 = fmul fast float %7626, %8080
  %8088 = fsub fast float -0.000000e+00, %8087
  %8089 = call float @dx.op.unary.f32(i32 21, float %8086)  ; Exp(value)
  %8090 = call float @dx.op.unary.f32(i32 21, float %8088)  ; Exp(value)
  %8091 = call float @dx.op.binary.f32(i32 35, float %7633, float %8089)  ; FMax(a,b)
  %8092 = call float @dx.op.binary.f32(i32 35, float %7633, float %8090)  ; FMax(a,b)
  %8093 = fsub fast float %8092, %8091
  %8094 = fmul fast float %8093, %8084
  %8095 = fadd fast float %8094, %8091
  %8096 = call float @dx.op.unary.f32(i32 7, float %8095)  ; Saturate(value)
  %8097 = fsub fast float %7630, %7635
  %8098 = fsub fast float %7631, %7636
  %8099 = fsub fast float %7632, %7637
  %8100 = fmul fast float %8084, %8097
  %8101 = fmul fast float %8084, %8098
  %8102 = fmul fast float %8084, %8099
  %8103 = fadd fast float %8100, %7635
  %8104 = fadd fast float %8101, %7636
  %8105 = fadd fast float %8102, %7637
  %8106 = fsub fast float 1.000000e+00, %8096
  %8107 = fmul fast float %8106, %8103
  %8108 = fmul fast float %8106, %8104
  %8109 = fmul fast float %8106, %8105
  br label %8169

; <label>:8110                                    ; preds = %8069
  %8111 = fmul fast float %8080, %7642
  %8112 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8113 = fsub fast float 2.000000e+00, %8112
  %8114 = fmul fast float %8112, 9.921875e-01
  %8115 = fmul fast float %8114, %8113
  %8116 = fadd fast float %8115, 3.906250e-03
  %8117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8116, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 0
  %8119 = fsub fast float %8112, %8118
  %8120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8119)  ; FMax(a,b)
  %8121 = fmul fast float %7628, %7609
  %8122 = call float @dx.op.unary.f32(i32 6, float %8121)  ; FAbs(value)
  %8123 = fcmp fast ogt float %8122, 0x3EB0C6F7A0000000
  br i1 %8123, label %8124, label %8130, !dx.controlflow.hints !167

; <label>:8124                                    ; preds = %8110
  %8125 = fmul fast float %8121, 0xBFF7154760000000
  %8126 = call float @dx.op.unary.f32(i32 21, float %8125)  ; Exp(value)
  %8127 = fsub fast float 1.000000e+00, %8126
  %8128 = fdiv fast float %8127, %8121
  %8129 = fmul fast float %8128, %7638
  br label %8130

; <label>:8130                                    ; preds = %8124, %8110
  %8131 = phi float [ %8129, %8124 ], [ %7638, %8110 ]
  %8132 = fadd fast float %8131, %7640
  %8133 = fmul fast float %8132, %8120
  %8134 = fmul fast float %7625, %8133
  %8135 = fsub fast float -0.000000e+00, %8134
  %8136 = fmul fast float %7626, %8133
  %8137 = fsub fast float -0.000000e+00, %8136
  %8138 = fmul fast float %7627, %8133
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = call float @dx.op.unary.f32(i32 21, float %8135)  ; Exp(value)
  %8141 = call float @dx.op.unary.f32(i32 21, float %8137)  ; Exp(value)
  %8142 = call float @dx.op.unary.f32(i32 21, float %8139)  ; Exp(value)
  %8143 = fmul fast float %7654, %7654
  %8144 = fadd fast float %8143, 1.000000e+00
  %8145 = fmul fast float %8144, 0x3FAE8EC8A0000000
  %8146 = fmul fast float %8145, %7635
  %8147 = fmul fast float %8145, %7636
  %8148 = fmul fast float %8145, %7637
  %8149 = fmul fast float %7654, %7633
  %8150 = fsub fast float 1.000000e+00, %8149
  %8151 = fmul fast float %7633, %7633
  %8152 = fsub fast float 1.000000e+00, %8151
  %8153 = fmul fast float %8152, 0x3FB45F3060000000
  %8154 = fmul fast float %8150, %8150
  %8155 = fdiv fast float 1.000000e+00, %8154
  %8156 = fmul fast float %8153, %8155
  %8157 = fmul fast float %8156, %7630
  %8158 = fmul fast float %8156, %7631
  %8159 = fmul fast float %8156, %7632
  %8160 = fadd fast float %8157, %8146
  %8161 = fadd fast float %8158, %8147
  %8162 = fadd fast float %8159, %8148
  %8163 = fsub fast float 1.000000e+00, %8140
  %8164 = fsub fast float 1.000000e+00, %8141
  %8165 = fsub fast float 1.000000e+00, %8142
  %8166 = fmul fast float %8160, %8163
  %8167 = fmul fast float %8161, %8164
  %8168 = fmul fast float %8162, %8165
  br label %8169

; <label>:8169                                    ; preds = %8130, %8081
  %8170 = phi float [ %8107, %8081 ], [ %8166, %8130 ]
  %8171 = phi float [ %8108, %8081 ], [ %8167, %8130 ]
  %8172 = phi float [ %8109, %8081 ], [ %8168, %8130 ]
  %8173 = phi float [ %8096, %8081 ], [ %8140, %8130 ]
  %8174 = phi float [ %8096, %8081 ], [ %8141, %8130 ]
  %8175 = phi float [ %8096, %8081 ], [ %8142, %8130 ]
  br i1 %7662, label %8176, label %8374, !dx.controlflow.hints !168

; <label>:8176                                    ; preds = %8169
  %8177 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8178 = fmul fast float %8177, %8077
  %8179 = fsub fast float %8072, %8170
  %8180 = fsub fast float %8073, %8171
  %8181 = fsub fast float %8074, %8172
  %8182 = fmul fast float %8178, %8179
  %8183 = fmul fast float %8178, %8180
  %8184 = fmul fast float %8178, %8181
  %8185 = fadd fast float %8182, %8170
  %8186 = fadd fast float %8183, %8171
  %8187 = fadd fast float %8184, %8172
  %8188 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8173)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8174)  ; FMax(a,b)
  %8190 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8175)  ; FMax(a,b)
  %8191 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8071)  ; FMax(a,b)
  %8192 = call float @dx.op.binary.f32(i32 35, float %8070, float %8080)  ; FMax(a,b)
  %8193 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8192)  ; FMax(a,b)
  %8194 = fdiv fast float %8070, %8193
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fdiv fast float %8080, %8193
  %8197 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8198 = fcmp fast une float %8191, 1.000000e+00
  br i1 %8198, label %8199, label %8212, !dx.controlflow.hints !169

; <label>:8199                                    ; preds = %8176
  %8200 = call float @dx.op.unary.f32(i32 23, float %8191)  ; Log(value)
  %8201 = fmul fast float %8200, 0x3FE62E4300000000
  %8202 = fmul fast float %8072, %8201
  %8203 = fsub fast float -0.000000e+00, %8202
  %8204 = fmul fast float %8073, %8201
  %8205 = fsub fast float -0.000000e+00, %8204
  %8206 = fmul fast float %8074, %8201
  %8207 = fsub fast float -0.000000e+00, %8206
  %8208 = fsub fast float 1.000000e+00, %8191
  %8209 = fdiv fast float %8203, %8208
  %8210 = fdiv fast float %8205, %8208
  %8211 = fdiv fast float %8207, %8208
  br label %8212

; <label>:8212                                    ; preds = %8199, %8176
  %8213 = phi float [ %8209, %8199 ], [ %8072, %8176 ]
  %8214 = phi float [ %8210, %8199 ], [ %8073, %8176 ]
  %8215 = phi float [ %8211, %8199 ], [ %8074, %8176 ]
  %8216 = phi float [ %8201, %8199 ], [ 0.000000e+00, %8176 ]
  %8217 = fcmp fast une float %8188, 1.000000e+00
  br i1 %8217, label %8218, label %8225, !dx.controlflow.hints !170

; <label>:8218                                    ; preds = %8212
  %8219 = call float @dx.op.unary.f32(i32 23, float %8188)  ; Log(value)
  %8220 = fmul fast float %8219, 0x3FE62E4300000000
  %8221 = fmul fast float %8185, %8220
  %8222 = fsub fast float -0.000000e+00, %8221
  %8223 = fsub fast float 1.000000e+00, %8188
  %8224 = fdiv fast float %8222, %8223
  br label %8225

; <label>:8225                                    ; preds = %8218, %8212
  %8226 = phi float [ %8224, %8218 ], [ %8185, %8212 ]
  %8227 = phi float [ %8220, %8218 ], [ 0.000000e+00, %8212 ]
  %8228 = fcmp fast une float %8189, 1.000000e+00
  br i1 %8228, label %8229, label %8236, !dx.controlflow.hints !170

; <label>:8229                                    ; preds = %8225
  %8230 = call float @dx.op.unary.f32(i32 23, float %8189)  ; Log(value)
  %8231 = fmul fast float %8230, 0x3FE62E4300000000
  %8232 = fmul fast float %8186, %8231
  %8233 = fsub fast float -0.000000e+00, %8232
  %8234 = fsub fast float 1.000000e+00, %8189
  %8235 = fdiv fast float %8233, %8234
  br label %8236

; <label>:8236                                    ; preds = %8229, %8225
  %8237 = phi float [ %8235, %8229 ], [ %8186, %8225 ]
  %8238 = phi float [ %8231, %8229 ], [ 0.000000e+00, %8225 ]
  %8239 = fcmp fast une float %8190, 1.000000e+00
  br i1 %8239, label %8240, label %8247, !dx.controlflow.hints !170

; <label>:8240                                    ; preds = %8236
  %8241 = call float @dx.op.unary.f32(i32 23, float %8190)  ; Log(value)
  %8242 = fmul fast float %8241, 0x3FE62E4300000000
  %8243 = fmul fast float %8187, %8242
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = fsub fast float 1.000000e+00, %8190
  %8246 = fdiv fast float %8244, %8245
  br label %8247

; <label>:8247                                    ; preds = %8240, %8236
  %8248 = phi float [ %8246, %8240 ], [ %8187, %8236 ]
  %8249 = phi float [ %8242, %8240 ], [ 0.000000e+00, %8236 ]
  %8250 = fmul fast float %8213, %8197
  %8251 = fmul fast float %8214, %8197
  %8252 = fmul fast float %8215, %8197
  %8253 = fmul fast float %8216, %8197
  %8254 = fmul fast float %8226, %8195
  %8255 = fmul fast float %8237, %8195
  %8256 = fmul fast float %8248, %8195
  %8257 = fmul fast float %8227, %8195
  %8258 = fmul fast float %8238, %8195
  %8259 = fmul fast float %8249, %8195
  %8260 = fadd fast float %8254, %8250
  %8261 = fadd fast float %8255, %8251
  %8262 = fadd fast float %8256, %8252
  %8263 = fadd fast float %8257, %8253
  %8264 = fadd fast float %8258, %8253
  %8265 = fadd fast float %8259, %8253
  %8266 = fcmp fast une float %8263, 0.000000e+00
  br i1 %8266, label %8267, label %8274, !dx.controlflow.hints !171

; <label>:8267                                    ; preds = %8247
  %8268 = fmul fast float %8263, 0x3FF7154760000000
  %8269 = call float @dx.op.unary.f32(i32 21, float %8268)  ; Exp(value)
  %8270 = fsub fast float 1.000000e+00, %8269
  %8271 = fmul fast float %8260, %8270
  %8272 = fsub fast float -0.000000e+00, %8271
  %8273 = fdiv fast float %8272, %8263
  br label %8274

; <label>:8274                                    ; preds = %8267, %8247
  %8275 = phi float [ %8269, %8267 ], [ 1.000000e+00, %8247 ]
  %8276 = phi float [ %8273, %8267 ], [ %8260, %8247 ]
  %8277 = fcmp fast une float %8264, 0.000000e+00
  br i1 %8277, label %8278, label %8285, !dx.controlflow.hints !171

; <label>:8278                                    ; preds = %8274
  %8279 = fmul fast float %8264, 0x3FF7154760000000
  %8280 = call float @dx.op.unary.f32(i32 21, float %8279)  ; Exp(value)
  %8281 = fsub fast float 1.000000e+00, %8280
  %8282 = fmul fast float %8261, %8281
  %8283 = fsub fast float -0.000000e+00, %8282
  %8284 = fdiv fast float %8283, %8264
  br label %8285

; <label>:8285                                    ; preds = %8278, %8274
  %8286 = phi float [ %8280, %8278 ], [ 1.000000e+00, %8274 ]
  %8287 = phi float [ %8284, %8278 ], [ %8261, %8274 ]
  %8288 = fcmp fast une float %8265, 0.000000e+00
  br i1 %8288, label %8289, label %8296, !dx.controlflow.hints !171

; <label>:8289                                    ; preds = %8285
  %8290 = fmul fast float %8265, 0x3FF7154760000000
  %8291 = call float @dx.op.unary.f32(i32 21, float %8290)  ; Exp(value)
  %8292 = fsub fast float 1.000000e+00, %8291
  %8293 = fmul fast float %8262, %8292
  %8294 = fsub fast float -0.000000e+00, %8293
  %8295 = fdiv fast float %8294, %8265
  br label %8296

; <label>:8296                                    ; preds = %8289, %8285
  %8297 = phi float [ %8291, %8289 ], [ 1.000000e+00, %8285 ]
  %8298 = phi float [ %8295, %8289 ], [ %8262, %8285 ]
  %8299 = fcmp fast ogt float %8195, %8197
  br i1 %8299, label %8300, label %8320

; <label>:8300                                    ; preds = %8296
  %8301 = fsub fast float 1.000000e+00, %8197
  %8302 = fmul fast float %8213, %8301
  %8303 = fmul fast float %8214, %8301
  %8304 = fmul fast float %8215, %8301
  %8305 = fmul fast float %8216, %8301
  %8306 = fcmp fast une float %8305, 0.000000e+00
  br i1 %8306, label %8307, label %8358, !dx.controlflow.hints !172

; <label>:8307                                    ; preds = %8300
  %8308 = fmul fast float %8305, 0x3FF7154760000000
  %8309 = call float @dx.op.unary.f32(i32 21, float %8308)  ; Exp(value)
  %8310 = fsub fast float 1.000000e+00, %8309
  %8311 = fmul fast float %8302, %8310
  %8312 = fsub fast float -0.000000e+00, %8311
  %8313 = fmul fast float %8303, %8310
  %8314 = fsub fast float -0.000000e+00, %8313
  %8315 = fmul fast float %8304, %8310
  %8316 = fsub fast float -0.000000e+00, %8315
  %8317 = fdiv fast float %8312, %8305
  %8318 = fdiv fast float %8314, %8305
  %8319 = fdiv fast float %8316, %8305
  br label %8358

; <label>:8320                                    ; preds = %8296
  %8321 = fsub fast float 1.000000e+00, %8195
  %8322 = fmul fast float %8226, %8321
  %8323 = fmul fast float %8237, %8321
  %8324 = fmul fast float %8248, %8321
  %8325 = fmul fast float %8227, %8321
  %8326 = fmul fast float %8238, %8321
  %8327 = fmul fast float %8249, %8321
  %8328 = fcmp fast une float %8325, 0.000000e+00
  br i1 %8328, label %8329, label %8336, !dx.controlflow.hints !171

; <label>:8329                                    ; preds = %8320
  %8330 = fmul fast float %8325, 0x3FF7154760000000
  %8331 = call float @dx.op.unary.f32(i32 21, float %8330)  ; Exp(value)
  %8332 = fsub fast float 1.000000e+00, %8331
  %8333 = fmul fast float %8322, %8332
  %8334 = fsub fast float -0.000000e+00, %8333
  %8335 = fdiv fast float %8334, %8325
  br label %8336

; <label>:8336                                    ; preds = %8329, %8320
  %8337 = phi float [ %8335, %8329 ], [ %8322, %8320 ]
  %8338 = phi float [ %8331, %8329 ], [ 1.000000e+00, %8320 ]
  %8339 = fcmp fast une float %8326, 0.000000e+00
  br i1 %8339, label %8340, label %8347, !dx.controlflow.hints !171

; <label>:8340                                    ; preds = %8336
  %8341 = fmul fast float %8326, 0x3FF7154760000000
  %8342 = call float @dx.op.unary.f32(i32 21, float %8341)  ; Exp(value)
  %8343 = fsub fast float 1.000000e+00, %8342
  %8344 = fmul fast float %8323, %8343
  %8345 = fsub fast float -0.000000e+00, %8344
  %8346 = fdiv fast float %8345, %8326
  br label %8347

; <label>:8347                                    ; preds = %8340, %8336
  %8348 = phi float [ %8346, %8340 ], [ %8323, %8336 ]
  %8349 = phi float [ %8342, %8340 ], [ 1.000000e+00, %8336 ]
  %8350 = fcmp fast une float %8327, 0.000000e+00
  br i1 %8350, label %8351, label %8358, !dx.controlflow.hints !171

; <label>:8351                                    ; preds = %8347
  %8352 = fmul fast float %8327, 0x3FF7154760000000
  %8353 = call float @dx.op.unary.f32(i32 21, float %8352)  ; Exp(value)
  %8354 = fsub fast float 1.000000e+00, %8353
  %8355 = fmul fast float %8324, %8354
  %8356 = fsub fast float -0.000000e+00, %8355
  %8357 = fdiv fast float %8356, %8327
  br label %8358

; <label>:8358                                    ; preds = %8351, %8347, %8307, %8300
  %8359 = phi float [ %8357, %8351 ], [ %8319, %8307 ], [ %8304, %8300 ], [ %8324, %8347 ]
  %8360 = phi float [ %8348, %8351 ], [ %8318, %8307 ], [ %8303, %8300 ], [ %8348, %8347 ]
  %8361 = phi float [ %8337, %8351 ], [ %8317, %8307 ], [ %8302, %8300 ], [ %8337, %8347 ]
  %8362 = phi float [ %8353, %8351 ], [ %8309, %8307 ], [ 1.000000e+00, %8300 ], [ 1.000000e+00, %8347 ]
  %8363 = phi float [ %8349, %8351 ], [ %8309, %8307 ], [ 1.000000e+00, %8300 ], [ %8349, %8347 ]
  %8364 = phi float [ %8338, %8351 ], [ %8309, %8307 ], [ 1.000000e+00, %8300 ], [ %8338, %8347 ]
  %8365 = fmul fast float %8364, %8276
  %8366 = fmul fast float %8363, %8287
  %8367 = fmul fast float %8362, %8298
  %8368 = fadd fast float %8365, %8361
  %8369 = fadd fast float %8366, %8360
  %8370 = fadd fast float %8367, %8359
  %8371 = fmul fast float %8364, %8275
  %8372 = fmul fast float %8363, %8286
  %8373 = fmul fast float %8362, %8297
  br label %8374

; <label>:8374                                    ; preds = %8358, %8169
  %8375 = phi float [ %8373, %8358 ], [ %8175, %8169 ]
  %8376 = phi float [ %8372, %8358 ], [ %8174, %8169 ]
  %8377 = phi float [ %8371, %8358 ], [ %8173, %8169 ]
  %8378 = phi float [ %8370, %8358 ], [ %8172, %8169 ]
  %8379 = phi float [ %8369, %8358 ], [ %8171, %8169 ]
  %8380 = phi float [ %8368, %8358 ], [ %8170, %8169 ]
  %8381 = fmul fast float %8380, %7326
  %8382 = fmul fast float %8379, %7326
  %8383 = fmul fast float %8378, %7326
  %8384 = fmul fast float %8377, %7617
  %8385 = call float @dx.op.dot3.f32(i32 55, float %8377, float %8376, float %8375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8386 = call float @dx.op.dot3.f32(i32 55, float %8381, float %8382, float %8383, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8387 = select i1 %269, float %8385, float %8377
  %8388 = select i1 %269, float %8385, float %8376
  %8389 = select i1 %269, float 1.000000e+00, float %8375
  %8390 = select i1 %269, float %8386, float %8381
  %8391 = select i1 %269, float 0.000000e+00, float %8382
  %8392 = select i1 %269, float 0.000000e+00, float %8383
  %8393 = fmul fast float %8387, %7611
  %8394 = fmul fast float %8388, %7612
  %8395 = fmul fast float %8389, %7613
  %8396 = fadd fast float %8393, %8390
  %8397 = fadd fast float %8394, %8391
  %8398 = fadd fast float %8392, %8395
  %8399 = fmul fast float %8387, %7614
  %8400 = fmul fast float %8388, %7615
  %8401 = fmul fast float %8389, %7616
  %8402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.i32 %8402, 0
  %8404 = icmp eq i32 %8403, 0
  br i1 %8404, label %8772, label %8405, !dx.controlflow.hints !173

; <label>:8405                                    ; preds = %8374
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8406, 3
  %8409 = fmul fast float %8407, %110
  %8410 = fmul fast float %8408, %111
  %8411 = fmul fast float %8409, 2.000000e+00
  %8412 = fmul fast float %8410, 2.000000e+00
  %8413 = fsub fast float 1.000000e+00, %8411
  %8414 = fsub fast float 1.000000e+00, %8412
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = fmul fast float %8413, %8416
  %8420 = fmul fast float %8413, %8417
  %8421 = fmul fast float %8413, %8418
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8425 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8426 = fmul fast float %8414, %8423
  %8427 = fmul fast float %8414, %8424
  %8428 = fmul fast float %8414, %8425
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 0
  %8431 = extractvalue %dx.types.CBufRet.f32 %8429, 1
  %8432 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8433 = fadd fast float %8426, %8430
  %8434 = fadd fast float %8433, %8419
  %8435 = fadd fast float %8427, %8431
  %8436 = fadd fast float %8435, %8420
  %8437 = fadd fast float %8428, %8432
  %8438 = fadd fast float %8437, %8421
  %8439 = fmul fast float %8434, %7610
  %8440 = fmul fast float %8436, %7610
  %8441 = fmul fast float %8438, %7610
  %8442 = fmul fast float %8439, %8439
  %8443 = fmul fast float %8440, %8440
  %8444 = fadd fast float %8442, %8443
  %8445 = fmul fast float %8441, %8441
  %8446 = fadd fast float %8444, %8445
  %8447 = call float @dx.op.unary.f32(i32 24, float %8446)  ; Sqrt(value)
  %8448 = extractvalue %dx.types.CBufRet.f32 %7337, 0
  %8449 = fsub fast float %8447, %8448
  %8450 = extractvalue %dx.types.CBufRet.f32 %7337, 2
  %8451 = fmul fast float %8449, %8450
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fadd fast float %8452, -5.000000e-01
  %8454 = fmul fast float %8453, 2.000000e+00
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 2
  %8457 = call float @dx.op.binary.f32(i32 36, float %8456, float %8454)  ; FMin(a,b)
  %8458 = fsub fast float -0.000000e+00, %8456
  %8459 = fcmp fast ogt float %8457, %8458
  br i1 %8459, label %8460, label %8772, !dx.controlflow.hints !174

; <label>:8460                                    ; preds = %8405
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 3
  %8463 = fcmp fast ogt float %8462, 0.000000e+00
  br i1 %8463, label %8464, label %8539, !dx.controlflow.hints !175

; <label>:8464                                    ; preds = %8460
  %8465 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8466 = extractvalue %dx.types.Dimensions %8465, 0
  %8467 = sitofp i32 %8466 to float
  %8468 = extractvalue %dx.types.Dimensions %8465, 1
  %8469 = sitofp i32 %8468 to float
  %8470 = fmul fast float %8409, %8467
  %8471 = fmul fast float %8410, %8469
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 1
  %8474 = fsub fast float -0.000000e+00, %8473
  %8475 = fptoui float %8474 to i32
  %8476 = fptoui float %8470 to i32
  %8477 = fptoui float %8471 to i32
  %8478 = and i32 %8475, 31
  %8479 = lshr i32 %8476, %8478
  %8480 = lshr i32 %8477, %8478
  %8481 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8475, i32 %8479, i32 %8480, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = fcmp fast olt float %8482, -1.000000e+00
  %8484 = fcmp fast ogt float %8482, -1.000000e+00
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8487 = select i1 %8484, float %8486, float 1.000000e+00
  %8488 = fadd fast float %8482, 1.000000e+00
  %8489 = fmul fast float %8487, %8488
  %8490 = call float @dx.op.unary.f32(i32 6, float %8489)  ; FAbs(value)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8485, 3
  %8492 = fcmp fast oge float %8490, %8491
  %8493 = select i1 %8492, float 0x4197782600000000, float %8490
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8498 = select i1 %8483, float %8495, float %8416
  %8499 = select i1 %8483, float %8496, float %8417
  %8500 = select i1 %8483, float %8497, float %8418
  %8501 = fmul fast float %8498, %8413
  %8502 = fmul fast float %8499, %8413
  %8503 = fmul fast float %8500, %8413
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8508 = select i1 %8483, float %8505, float %8423
  %8509 = select i1 %8483, float %8506, float %8424
  %8510 = select i1 %8483, float %8507, float %8425
  %8511 = fmul fast float %8508, %8414
  %8512 = fmul fast float %8509, %8414
  %8513 = fmul fast float %8510, %8414
  %8514 = fadd fast float %8511, %8501
  %8515 = fadd fast float %8512, %8502
  %8516 = fadd fast float %8513, %8503
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8520 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8521 = select i1 %8483, float %8518, float %8430
  %8522 = select i1 %8483, float %8519, float %8431
  %8523 = select i1 %8483, float %8520, float %8432
  %8524 = fadd fast float %8514, %8521
  %8525 = fadd fast float %8515, %8522
  %8526 = fadd fast float %8516, %8523
  %8527 = fmul fast float %8524, %8493
  %8528 = fmul fast float %8525, %8493
  %8529 = fmul fast float %8526, %8493
  %8530 = fmul fast float %8527, %8527
  %8531 = fmul fast float %8528, %8528
  %8532 = fadd fast float %8530, %8531
  %8533 = fmul fast float %8529, %8529
  %8534 = fadd fast float %8532, %8533
  %8535 = call float @dx.op.unary.f32(i32 24, float %8534)  ; Sqrt(value)
  %8536 = fsub fast float %8535, %8448
  %8537 = fmul fast float %8536, %8450
  %8538 = call float @dx.op.unary.f32(i32 7, float %8537)  ; Saturate(value)
  br label %8539

; <label>:8539                                    ; preds = %8464, %8460
  %8540 = phi float [ %8538, %8464 ], [ 1.000000e+00, %8460 ]
  %8541 = fmul fast float %8457, 5.000000e-01
  %8542 = fadd fast float %8541, 5.000000e-01
  %8543 = call float @dx.op.unary.f32(i32 22, float %8542)  ; Frc(value)
  %8544 = call float @dx.op.unary.f32(i32 27, float %8543)  ; Round_ni(value)
  %8545 = call float @dx.op.unary.f32(i32 22, float %8543)  ; Frc(value)
  %8546 = fmul fast float %8545, 2.000000e+00
  %8547 = fadd fast float %8546, -1.000000e+00
  %8548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8409, float %8410, float %8544, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8549 = extractvalue %dx.types.ResRet.f32 %8548, 0
  %8550 = extractvalue %dx.types.ResRet.f32 %8548, 1
  %8551 = extractvalue %dx.types.ResRet.f32 %8548, 2
  %8552 = extractvalue %dx.types.ResRet.f32 %8548, 3
  %8553 = fadd fast float %8549, -5.000000e-01
  %8554 = fadd fast float %8551, -5.000000e-01
  %8555 = fmul fast float %8553, 0xBFD5555560000000
  %8556 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8554, float %8555)  ; FMad(a,b,c)
  %8557 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8550, float 0.000000e+00)  ; FMad(a,b,c)
  %8558 = fadd fast float %8557, %8552
  %8559 = fmul fast float %8553, -7.500000e-01
  %8560 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8554, float %8559)  ; FMad(a,b,c)
  %8561 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8550, float 0.000000e+00)  ; FMad(a,b,c)
  %8562 = fadd fast float %8561, %8552
  %8563 = call float @dx.op.binary.f32(i32 35, float %8556, float -1.000000e+00)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 35, float %8558, float -1.000000e+00)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 35, float %8560, float -1.000000e+00)  ; FMax(a,b)
  %8566 = call float @dx.op.binary.f32(i32 35, float %8562, float -1.000000e+00)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 36, float %8563, float 1.000000e+00)  ; FMin(a,b)
  %8568 = call float @dx.op.binary.f32(i32 36, float %8564, float 1.000000e+00)  ; FMin(a,b)
  %8569 = call float @dx.op.binary.f32(i32 36, float %8565, float 1.000000e+00)  ; FMin(a,b)
  %8570 = call float @dx.op.binary.f32(i32 36, float %8566, float 1.000000e+00)  ; FMin(a,b)
  %8571 = fcmp fast olt float %8567, 0x3FEFFF8020000000
  br i1 %8571, label %8572, label %8687, !dx.controlflow.hints !176

; <label>:8572                                    ; preds = %8539
  %8573 = extractvalue %dx.types.CBufRet.f32 %8455, 3
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 0
  %8576 = extractvalue %dx.types.CBufRet.f32 %8574, 1
  %8577 = extractvalue %dx.types.CBufRet.f32 %8574, 2
  %8578 = extractvalue %dx.types.CBufRet.f32 %8574, 3
  %8579 = fsub fast float %8575, %8567
  %8580 = fsub fast float %8576, %8568
  %8581 = fsub fast float %8577, %8569
  %8582 = fsub fast float %8578, %8570
  %8583 = fmul fast float %8579, %8573
  %8584 = fmul fast float %8580, %8573
  %8585 = fmul fast float %8581, %8573
  %8586 = fmul fast float %8582, %8573
  %8587 = fadd fast float %8583, %8567
  %8588 = fadd fast float %8584, %8568
  %8589 = fsub fast float -0.000000e+00, %8588
  %8590 = fadd fast float %8585, %8569
  %8591 = fadd fast float %8586, %8570
  %8592 = fmul fast float %8587, %8587
  %8593 = fsub fast float %8588, %8592
  %8594 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8593)  ; FMax(a,b)
  %8595 = fdiv fast float 1.000000e+00, %8594
  %8596 = fmul fast float %8588, %8587
  %8597 = fsub fast float %8590, %8596
  %8598 = fsub fast float %8547, %8587
  %8599 = fmul fast float %8547, %8547
  %8600 = fsub fast float %8599, %8588
  %8601 = fmul fast float %8598, %8595
  %8602 = fmul fast float %8601, %8597
  %8603 = fsub fast float %8600, %8602
  %8604 = fmul fast float %8588, %8588
  %8605 = fsub fast float %8591, %8604
  %8606 = fmul fast float %8597, %8597
  %8607 = fmul fast float %8606, %8595
  %8608 = fsub fast float %8605, %8607
  %8609 = fdiv fast float %8603, %8608
  %8610 = fmul fast float %8597, %8609
  %8611 = fsub fast float %8598, %8610
  %8612 = fmul fast float %8611, %8595
  %8613 = fmul fast float %8612, %8587
  %8614 = fsub fast float 1.000000e+00, %8613
  %8615 = fmul fast float %8588, %8609
  %8616 = fsub fast float %8614, %8615
  %8617 = fmul fast float %8612, %8612
  %8618 = fmul fast float %8609, 4.000000e+00
  %8619 = fmul fast float %8618, %8616
  %8620 = fsub fast float %8617, %8619
  %8621 = call float @dx.op.unary.f32(i32 24, float %8620)  ; Sqrt(value)
  %8622 = fcmp fast oge float %8612, 0.000000e+00
  %8623 = fsub fast float -0.000000e+00, %8621
  %8624 = select i1 %8622, float %8623, float %8621
  %8625 = fsub fast float %8624, %8612
  %8626 = fdiv fast float %8625, %8609
  %8627 = fdiv fast float %8616, %8625
  %8628 = fmul fast float %8626, 5.000000e-01
  %8629 = fmul fast float %8627, 2.000000e+00
  %8630 = select i1 %8622, float %8628, float %8629
  %8631 = select i1 %8622, float %8629, float %8628
  %8632 = call float @dx.op.binary.f32(i32 35, float %8630, float %8631)  ; FMax(a,b)
  %8633 = call float @dx.op.binary.f32(i32 36, float %8630, float %8631)  ; FMin(a,b)
  %8634 = fcmp fast ogt float %8547, %8633
  br i1 %8634, label %8635, label %8645

; <label>:8635                                    ; preds = %8572
  %8636 = fsub fast float %8547, %8633
  %8637 = fsub fast float %8632, %8633
  %8638 = fmul fast float %8636, %8637
  %8639 = fmul fast float %8632, %8547
  %8640 = fadd fast float %8632, %8547
  %8641 = fmul fast float %8640, %8587
  %8642 = fadd fast float %8639, %8588
  %8643 = fsub fast float %8642, %8641
  %8644 = fdiv fast float %8643, %8638
  br label %8645

; <label>:8645                                    ; preds = %8635, %8572
  %8646 = phi float [ %8644, %8635 ], [ 0.000000e+00, %8572 ]
  %8647 = fcmp fast ogt float %8547, %8632
  %8648 = fsub fast float %8547, %8632
  br i1 %8647, label %8649, label %8659

; <label>:8649                                    ; preds = %8645
  %8650 = fsub fast float %8632, %8633
  %8651 = fmul fast float %8650, %8648
  %8652 = fmul fast float %8633, %8547
  %8653 = fadd fast float %8633, %8547
  %8654 = fmul fast float %8653, %8587
  %8655 = fsub fast float %8589, %8652
  %8656 = fadd fast float %8655, %8654
  %8657 = fdiv fast float %8656, %8651
  %8658 = fadd fast float %8657, %8646
  br label %8659

; <label>:8659                                    ; preds = %8649, %8645
  %8660 = phi float [ %8658, %8649 ], [ %8646, %8645 ]
  %8661 = fsub fast float %8547, %8633
  %8662 = fmul fast float %8661, %8648
  %8663 = fmul fast float %8633, %8632
  %8664 = fadd fast float %8633, %8632
  %8665 = fmul fast float %8664, %8587
  %8666 = fadd fast float %8663, %8588
  %8667 = fsub fast float %8666, %8665
  %8668 = fdiv fast float %8667, %8662
  %8669 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8670 = fcmp fast oeq float %7338, 0.000000e+00
  %8671 = extractvalue %dx.types.CBufRet.f32 %8455, 0
  %8672 = fcmp fast oeq float %8671, 0.000000e+00
  %8673 = or i1 %8670, %8672
  %8674 = fmul fast float %8671, 2.000000e+00
  %8675 = fadd fast float %8456, %8457
  %8676 = fdiv fast float %8675, %8674
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = fmul fast float %8677, 2.000000e+00
  %8679 = fsub fast float 3.000000e+00, %8678
  %8680 = fmul fast float %8677, %8677
  %8681 = fmul fast float %8680, %8679
  %8682 = select i1 %8673, float 1.000000e+00, float %8681
  %8683 = fmul fast float %8668, %7338
  %8684 = fadd fast float %8669, %8683
  %8685 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8686 = fmul fast float %8682, %8685
  br label %8687

; <label>:8687                                    ; preds = %8659, %8539
  %8688 = phi float [ %8686, %8659 ], [ 0.000000e+00, %8539 ]
  %8689 = fsub fast float 1.000000e+00, %8688
  %8690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8409, float %8410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8691 = extractvalue %dx.types.ResRet.f32 %8690, 0
  %8692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.i32 %8692, 2
  %8694 = icmp eq i32 %8693, 0
  br i1 %8694, label %8700, label %8695

; <label>:8695                                    ; preds = %8687
  %8696 = call float @dx.op.unary.f32(i32 7, float %8688)  ; Saturate(value)
  %8697 = fadd fast float %8691, -1.000000e+00
  %8698 = fmul fast float %8696, %8697
  %8699 = fadd fast float %8698, 1.000000e+00
  br label %8700

; <label>:8700                                    ; preds = %8695, %8687
  %8701 = phi float [ %8699, %8695 ], [ %8689, %8687 ]
  br i1 %8463, label %8702, label %8720

; <label>:8702                                    ; preds = %8700
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8705 = fsub fast float %8540, %8704
  %8706 = call float @dx.op.unary.f32(i32 7, float %8705)  ; Saturate(value)
  %8707 = fsub fast float %8540, %8462
  %8708 = call float @dx.op.unary.f32(i32 7, float %8707)  ; Saturate(value)
  %8709 = fsub fast float %8706, %8708
  %8710 = fsub fast float %8542, %8708
  %8711 = fdiv fast float %8710, %8709
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fmul fast float %8712, 2.000000e+00
  %8714 = fsub fast float 3.000000e+00, %8713
  %8715 = fsub fast float %8691, %8701
  %8716 = fmul fast float %8712, %8712
  %8717 = fmul fast float %8716, %8715
  %8718 = fmul fast float %8717, %8714
  %8719 = fadd fast float %8718, %8701
  br label %8720

; <label>:8720                                    ; preds = %8702, %8700
  %8721 = phi float [ %8719, %8702 ], [ %8701, %8700 ]
  %8722 = call float @dx.op.binary.f32(i32 35, float %8691, float %8721)  ; FMax(a,b)
  %8723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.i32 %8723, 2
  %8725 = and i32 %8724, 1
  %8726 = icmp eq i32 %8725, 0
  %8727 = fcmp fast une float %8722, 1.000000e+00
  %8728 = and i1 %8727, %8726
  br i1 %8728, label %8729, label %8748

; <label>:8729                                    ; preds = %8720
  %8730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8409, float %8410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8731 = extractvalue %dx.types.ResRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.ResRet.f32 %8730, 1
  %8733 = extractvalue %dx.types.ResRet.f32 %8730, 2
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 1
  %8736 = fmul fast float %8735, %8731
  %8737 = fmul fast float %8735, %8732
  %8738 = fmul fast float %8735, %8733
  %8739 = fcmp fast ogt float %8691, 0x3FEFFF2E40000000
  %8740 = fsub fast float 1.000000e+00, %8722
  %8741 = fsub fast float 1.000000e+00, %8691
  %8742 = fdiv fast float %8740, %8741
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = select i1 %8739, float 0.000000e+00, float %8743
  %8745 = fmul fast float %8736, %8744
  %8746 = fmul fast float %8737, %8744
  %8747 = fmul fast float %8738, %8744
  br label %8748

; <label>:8748                                    ; preds = %8729, %8720
  %8749 = phi float [ 0.000000e+00, %8720 ], [ %8745, %8729 ]
  %8750 = phi float [ 0.000000e+00, %8720 ], [ %8746, %8729 ]
  %8751 = phi float [ 0.000000e+00, %8720 ], [ %8747, %8729 ]
  %8752 = fmul fast float %8749, %7326
  %8753 = fmul fast float %8750, %7326
  %8754 = fmul fast float %8751, %7326
  %8755 = fmul fast float %8722, %8384
  %8756 = call float @dx.op.dot3.f32(i32 55, float %8722, float %8722, float %8722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8757 = call float @dx.op.dot3.f32(i32 55, float %8752, float %8753, float %8754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8758 = select i1 %269, float %8756, float %8722
  %8759 = select i1 %269, float 1.000000e+00, float %8722
  %8760 = select i1 %269, float %8757, float %8752
  %8761 = select i1 %269, float 0.000000e+00, float %8753
  %8762 = select i1 %269, float 0.000000e+00, float %8754
  %8763 = fmul fast float %8758, %8396
  %8764 = fmul fast float %8758, %8397
  %8765 = fmul fast float %8759, %8398
  %8766 = fadd fast float %8763, %8760
  %8767 = fadd fast float %8764, %8761
  %8768 = fadd fast float %8762, %8765
  %8769 = fmul fast float %8758, %8399
  %8770 = fmul fast float %8758, %8400
  %8771 = fmul fast float %8759, %8401
  br label %8772

; <label>:8772                                    ; preds = %8748, %8405, %8374, %7606
  %8773 = phi float [ %7611, %7606 ], [ %8396, %8374 ], [ %8766, %8748 ], [ %8396, %8405 ]
  %8774 = phi float [ %7612, %7606 ], [ %8397, %8374 ], [ %8767, %8748 ], [ %8397, %8405 ]
  %8775 = phi float [ %7613, %7606 ], [ %8398, %8374 ], [ %8768, %8748 ], [ %8398, %8405 ]
  %8776 = phi float [ %7614, %7606 ], [ %8399, %8374 ], [ %8769, %8748 ], [ %8399, %8405 ]
  %8777 = phi float [ %7615, %7606 ], [ %8400, %8374 ], [ %8770, %8748 ], [ %8400, %8405 ]
  %8778 = phi float [ %7616, %7606 ], [ %8401, %8374 ], [ %8771, %8748 ], [ %8401, %8405 ]
  %8779 = phi float [ %7617, %7606 ], [ %8384, %8374 ], [ %8755, %8748 ], [ %8384, %8405 ]
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 2
  %8782 = extractvalue %dx.types.CBufRet.f32 %8780, 3
  %8783 = fmul fast float %8781, %110
  %8784 = fmul fast float %8782, %111
  %8785 = call float @dx.op.unary.f32(i32 7, float %8783)  ; Saturate(value)
  %8786 = call float @dx.op.unary.f32(i32 7, float %8784)  ; Saturate(value)
  %8787 = select i1 %7348, i32 2, i32 0
  %8788 = or i32 %8787, 1
  %8789 = uitofp i32 %8788 to float
  %8790 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8785, float %8786, float %8789, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8791 = extractvalue %dx.types.ResRet.f32 %8790, 0
  %8792 = extractvalue %dx.types.ResRet.f32 %8790, 1
  %8793 = extractvalue %dx.types.ResRet.f32 %8790, 2
  %8794 = extractvalue %dx.types.ResRet.f32 %8790, 3
  %8795 = add nuw nsw i32 %8787, 2
  %8796 = uitofp i32 %8795 to float
  %8797 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8785, float %8786, float %8796, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8798 = extractvalue %dx.types.ResRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.ResRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.ResRet.f32 %8797, 2
  %8801 = extractvalue %dx.types.ResRet.f32 %8797, 3
  %8802 = call float @dx.op.binary.f32(i32 35, float %8792, float %8793)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float %8791, float %8802)  ; FMax(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float %8803, float %8794)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 36, float %8799, float %8800)  ; FMin(a,b)
  %8806 = call float @dx.op.binary.f32(i32 36, float %8798, float %8805)  ; FMin(a,b)
  %8807 = call float @dx.op.binary.f32(i32 36, float %8806, float %8801)  ; FMin(a,b)
  %8808 = fmul fast float %8804, 2.550000e+02
  %8809 = fadd fast float %8808, 0x3F70101020000000
  %8810 = fptoui float %8809 to i32
  %8811 = fmul fast float %8807, 2.550000e+02
  %8812 = fadd fast float %8811, 0x3F70101020000000
  %8813 = fptoui float %8812 to i32
  %8814 = icmp ult i32 %8810, %8813
  br i1 %8814, label %8815, label %8984

; <label>:8815                                    ; preds = %8772
  %8816 = fcmp fast ogt float %100, 9.843750e-01
  %8817 = fadd fast float %7610, -4.000000e+00
  %8818 = select i1 %8816, float -4.000000e+00, float %8817
  %8819 = call float @dx.op.binary.f32(i32 35, float %8818, float 0.000000e+00)  ; FMax(a,b)
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 0
  %8822 = fadd fast float %8821, %8819
  %8823 = extractvalue %dx.types.CBufRet.f32 %8820, 2
  %8824 = fmul fast float %8822, %8823
  %8825 = call float @dx.op.unary.f32(i32 23, float %8824)  ; Log(value)
  %8826 = extractvalue %dx.types.CBufRet.f32 %8820, 3
  %8827 = fmul fast float %8826, %8825
  %8828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.f32 %8828, 2
  %8830 = fmul fast float %8827, %8829
  %8831 = call float @dx.op.unary.f32(i32 7, float %8830)  ; Saturate(value)
  %8832 = uitofp i32 %8810 to float
  %8833 = uitofp i32 %8813 to float
  %8834 = fadd fast float %8832, 5.000000e-01
  %8835 = fadd fast float %8833, 5.000000e-01
  %8836 = fmul fast float %8829, %8834
  %8837 = fmul fast float %8829, %8835
  %8838 = fadd fast float %8836, 0x3F0FFB4800000000
  %8839 = fadd fast float %8837, 0xBF0FFB4800000000
  %8840 = call float @dx.op.binary.f32(i32 35, float %8831, float %8838)  ; FMax(a,b)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8840, float %8839)  ; FMin(a,b)
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %8845 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8846 = select i1 %7348, float %8845, float 0.000000e+00
  %8847 = fmul fast float %8843, %8841
  %8848 = fadd fast float %8846, %8847
  %8849 = fadd fast float %8846, %8844
  %8850 = fsub fast float %8843, %8844
  %8851 = fadd fast float %8850, %8846
  %8852 = call float @dx.op.binary.f32(i32 35, float %8848, float %8849)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 36, float %8852, float %8851)  ; FMin(a,b)
  %8854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8785, float %8786, float %8853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8855 = extractvalue %dx.types.ResRet.f32 %8854, 0
  %8856 = extractvalue %dx.types.ResRet.f32 %8854, 1
  %8857 = extractvalue %dx.types.ResRet.f32 %8854, 2
  %8858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.i32 %8858, 0
  %8860 = extractvalue %dx.types.CBufRet.i32 %8858, 1
  %8861 = uitofp i32 %8859 to float
  %8862 = uitofp i32 %8860 to float
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 1
  %8866 = fmul fast float %8861, %8785
  %8867 = fmul fast float %8862, %8786
  %8868 = fadd fast float %8866, -5.000000e-01
  %8869 = fadd fast float %8867, -5.000000e-01
  %8870 = call float @dx.op.unary.f32(i32 22, float %8868)  ; Frc(value)
  %8871 = call float @dx.op.unary.f32(i32 22, float %8869)  ; Frc(value)
  %8872 = fmul fast float %8870, %8870
  %8873 = fmul fast float %8872, %8870
  %8874 = fsub fast float 3.000000e+00, %8870
  %8875 = fmul fast float %8872, %8874
  %8876 = fmul fast float %8870, 3.000000e+00
  %8877 = fmul fast float %8873, 3.000000e+00
  %8878 = fmul fast float %8872, 6.000000e+00
  %8879 = fsub fast float %8877, %8878
  %8880 = fadd fast float %8879, 4.000000e+00
  %8881 = fmul fast float %8880, 0x3FC5555560000000
  %8882 = fmul fast float %8873, -3.000000e+00
  %8883 = fadd fast float %8872, %8870
  %8884 = fmul fast float %8883, 3.000000e+00
  %8885 = fadd fast float %8882, 1.000000e+00
  %8886 = fadd fast float %8885, %8884
  %8887 = fmul fast float %8873, 0x3FC5555560000000
  %8888 = fmul fast float %8871, %8871
  %8889 = fmul fast float %8888, %8871
  %8890 = fsub fast float 3.000000e+00, %8871
  %8891 = fmul fast float %8888, %8890
  %8892 = fmul fast float %8871, 3.000000e+00
  %8893 = fmul fast float %8889, 3.000000e+00
  %8894 = fmul fast float %8888, 6.000000e+00
  %8895 = fsub fast float %8893, %8894
  %8896 = fadd fast float %8895, 4.000000e+00
  %8897 = fmul fast float %8896, 0x3FC5555560000000
  %8898 = fmul fast float %8889, -3.000000e+00
  %8899 = fadd fast float %8888, %8871
  %8900 = fmul fast float %8899, 3.000000e+00
  %8901 = fadd fast float %8898, 1.000000e+00
  %8902 = fadd fast float %8901, %8900
  %8903 = fmul fast float %8889, 0x3FC5555560000000
  %8904 = fadd fast float %8870, 1.000000e+00
  %8905 = fsub fast float 1.000000e+00, %8876
  %8906 = fadd fast float %8905, %8875
  %8907 = fadd fast float %8906, %8880
  %8908 = fmul fast float %8907, 0x3FC5555560000000
  %8909 = fdiv fast float %8881, %8908
  %8910 = fsub fast float %8904, %8909
  %8911 = fsub fast float 1.000000e+00, %8870
  %8912 = fadd fast float %8886, %8873
  %8913 = fmul fast float %8912, 0x3FC5555560000000
  %8914 = fdiv fast float %8887, %8913
  %8915 = fadd fast float %8911, %8914
  %8916 = fadd fast float %8871, 1.000000e+00
  %8917 = fsub fast float 1.000000e+00, %8892
  %8918 = fadd fast float %8917, %8891
  %8919 = fadd fast float %8918, %8896
  %8920 = fmul fast float %8919, 0x3FC5555560000000
  %8921 = fdiv fast float %8897, %8920
  %8922 = fsub fast float %8916, %8921
  %8923 = fsub fast float 1.000000e+00, %8871
  %8924 = fadd fast float %8902, %8889
  %8925 = fmul fast float %8924, 0x3FC5555560000000
  %8926 = fdiv fast float %8903, %8925
  %8927 = fadd fast float %8926, %8923
  %8928 = fmul fast float %8910, %8864
  %8929 = fsub fast float %8785, %8928
  %8930 = fmul fast float %8915, %8864
  %8931 = fadd fast float %8930, %8785
  %8932 = fmul fast float %8927, %8865
  %8933 = fadd fast float %8932, %8786
  %8934 = fmul fast float %8922, %8865
  %8935 = fsub fast float %8786, %8934
  %8936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8929, float %8935, float %8853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8937 = extractvalue %dx.types.ResRet.f32 %8936, 0
  %8938 = extractvalue %dx.types.ResRet.f32 %8936, 1
  %8939 = extractvalue %dx.types.ResRet.f32 %8936, 2
  %8940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8931, float %8935, float %8853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8941 = extractvalue %dx.types.ResRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.ResRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.ResRet.f32 %8940, 2
  %8944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8929, float %8933, float %8853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8945 = extractvalue %dx.types.ResRet.f32 %8944, 0
  %8946 = extractvalue %dx.types.ResRet.f32 %8944, 1
  %8947 = extractvalue %dx.types.ResRet.f32 %8944, 2
  %8948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8931, float %8933, float %8853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8949 = extractvalue %dx.types.ResRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.ResRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.ResRet.f32 %8948, 2
  %8952 = fsub fast float %8945, %8937
  %8953 = fsub fast float %8946, %8938
  %8954 = fsub fast float %8947, %8939
  %8955 = fmul fast float %8952, %8925
  %8956 = fmul fast float %8953, %8925
  %8957 = fmul fast float %8954, %8925
  %8958 = fadd fast float %8955, %8937
  %8959 = fadd fast float %8956, %8938
  %8960 = fadd fast float %8957, %8939
  %8961 = fsub fast float %8949, %8941
  %8962 = fsub fast float %8950, %8942
  %8963 = fsub fast float %8951, %8943
  %8964 = fmul fast float %8961, %8925
  %8965 = fmul fast float %8962, %8925
  %8966 = fmul fast float %8963, %8925
  %8967 = fsub fast float %8941, %8958
  %8968 = fadd fast float %8967, %8964
  %8969 = fsub fast float %8942, %8959
  %8970 = fadd fast float %8969, %8965
  %8971 = fsub fast float %8943, %8960
  %8972 = fadd fast float %8971, %8966
  %8973 = fmul fast float %8968, %8913
  %8974 = fmul fast float %8970, %8913
  %8975 = fmul fast float %8972, %8913
  %8976 = fadd fast float %8973, %8958
  %8977 = fadd fast float %8974, %8959
  %8978 = fadd fast float %8975, %8960
  %8979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8980 = extractvalue %dx.types.CBufRet.f32 %8979, 1
  %8981 = fmul fast float %8976, %8980
  %8982 = fmul fast float %8977, %8980
  %8983 = fmul fast float %8978, %8980
  br label %8984

; <label>:8984                                    ; preds = %8815, %8772
  %8985 = phi float [ %8855, %8815 ], [ 1.000000e+00, %8772 ]
  %8986 = phi float [ %8856, %8815 ], [ 1.000000e+00, %8772 ]
  %8987 = phi float [ %8857, %8815 ], [ 1.000000e+00, %8772 ]
  %8988 = phi float [ %8981, %8815 ], [ 0.000000e+00, %8772 ]
  %8989 = phi float [ %8982, %8815 ], [ 0.000000e+00, %8772 ]
  %8990 = phi float [ %8983, %8815 ], [ 0.000000e+00, %8772 ]
  %8991 = fmul fast float %8988, %7326
  %8992 = fmul fast float %8989, %7326
  %8993 = fmul fast float %8990, %7326
  %8994 = fmul fast float %8985, %8779
  %8995 = call float @dx.op.dot3.f32(i32 55, float %8985, float %8986, float %8987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8996 = call float @dx.op.dot3.f32(i32 55, float %8991, float %8992, float %8993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8997 = select i1 %269, float %8995, float %8985
  %8998 = select i1 %269, float %8995, float %8986
  %8999 = select i1 %269, float 1.000000e+00, float %8987
  %9000 = select i1 %269, float %8996, float %8991
  %9001 = select i1 %269, float 0.000000e+00, float %8992
  %9002 = select i1 %269, float 0.000000e+00, float %8993
  %9003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.i32 %9003, 3
  %9005 = and i32 %9004, 3
  %9006 = icmp ne i32 %9005, 0
  %9007 = and i32 %9004, 4
  %9008 = icmp ne i32 %9007, 0
  %9009 = and i1 %9006, %9008
  %9010 = and i1 %269, %9009
  br i1 %9010, label %9011, label %9017

; <label>:9011                                    ; preds = %8984
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9014 = fadd fast float %8994, -1.000000e+00
  %9015 = fmul fast float %9013, %9014
  %9016 = fadd fast float %9015, 1.000000e+00
  br label %9017

; <label>:9017                                    ; preds = %9011, %8984
  %9018 = phi float [ %9016, %9011 ], [ %8994, %8984 ]
  %9019 = fadd fast float %8776, %8773
  %9020 = fmul fast float %8997, %9019
  %9021 = fadd fast float %9020, %9000
  %9022 = fadd fast float %8777, %8774
  %9023 = fmul fast float %8998, %9022
  %9024 = fadd fast float %9023, %9001
  %9025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9026 = extractvalue %dx.types.CBufRet.f32 %9025, 0
  br i1 %269, label %9027, label %9051

; <label>:9027                                    ; preds = %9017
  %9028 = fadd fast float %9021, %9024
  %9029 = fmul fast float %9026, %9028
  %9030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9031 = extractvalue %dx.types.CBufRet.f32 %9030, 3
  %9032 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %9033 = fsub fast float %7335, %7329
  %9034 = fadd fast float %9033, %7336
  %9035 = fsub fast float %9034, %9032
  %9036 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %9037 = fmul fast float %9035, %9036
  %9038 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9039 = fsub fast float %9038, %9031
  %9040 = fmul fast float %9039, %9018
  %9041 = fadd fast float %9040, %9031
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = fsub fast float %9041, %9043
  %9045 = fmul fast float %9044, 1.000000e+01
  %9046 = call float @dx.op.unary.f32(i32 7, float %9045)  ; Saturate(value)
  %9047 = fsub fast float %4093, %7326
  %9048 = fmul fast float %9046, %9047
  %9049 = fadd fast float %9048, %7326
  %9050 = fmul fast float %9049, %9041
  br label %9075

; <label>:9051                                    ; preds = %9017
  %9052 = fadd fast float %8778, %8775
  %9053 = fmul fast float %8999, %9052
  %9054 = fadd fast float %9053, %9002
  %9055 = fmul fast float %9026, %9021
  %9056 = fmul fast float %9026, %9024
  %9057 = fmul fast float %9026, %9054
  %9058 = call float @dx.op.binary.f32(i32 35, float %9056, float %9057)  ; FMax(a,b)
  %9059 = call float @dx.op.binary.f32(i32 35, float %9055, float %9058)  ; FMax(a,b)
  %9060 = call float @dx.op.binary.f32(i32 35, float %9059, float %7326)  ; FMax(a,b)
  %9061 = fcmp fast ugt float %9060, 0x3F10000000000000
  br i1 %9061, label %9063, label %9062

; <label>:9062                                    ; preds = %9051
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9063

; <label>:9063                                    ; preds = %9062, %9051
  %9064 = add i32 %56, 356
  %9065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9064, i32 undef)  ; BufferLoad(srv,index,wot)
  %9066 = extractvalue %dx.types.ResRet.i32 %9065, 0
  %9067 = and i32 %9066, 32
  %9068 = icmp eq i32 %9067, 0
  br i1 %9068, label %9075, label %9069

; <label>:9069                                    ; preds = %9063
  %9070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9071 = extractvalue %dx.types.CBufRet.f32 %9070, 0
  %9072 = fmul fast float %9071, 0x3FE99999A0000000
  %9073 = fadd fast float %9071, %9055
  %9074 = fadd fast float %9072, %9057
  br label %9075

; <label>:9075                                    ; preds = %9069, %9063, %9027
  %9076 = phi float [ %9029, %9027 ], [ %9073, %9069 ], [ %9055, %9063 ]
  %9077 = phi float [ %9050, %9027 ], [ %9056, %9069 ], [ %9056, %9063 ]
  %9078 = phi float [ %9049, %9027 ], [ %9074, %9069 ], [ %9057, %9063 ]
  %9079 = phi float [ %9049, %9027 ], [ %7326, %9069 ], [ %7326, %9063 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9080 = call float @dx.op.binary.f32(i32 36, float %9076, float 3.225500e+04)  ; FMin(a,b)
  %9081 = call float @dx.op.binary.f32(i32 36, float %9077, float 3.225500e+04)  ; FMin(a,b)
  %9082 = call float @dx.op.binary.f32(i32 36, float %9078, float 3.225500e+04)  ; FMin(a,b)
  %9083 = call float @dx.op.binary.f32(i32 36, float %9079, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9081)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9082)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9083)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

