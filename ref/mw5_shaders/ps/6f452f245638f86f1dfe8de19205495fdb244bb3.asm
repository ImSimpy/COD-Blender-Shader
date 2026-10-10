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
; shader hash: eb2a6de923c0e268ca8591b0863884f8
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = alloca [12 x float], align 4
  %101 = alloca [12 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fmul fast float %107, %96
  %109 = fmul fast float %107, %97
  %110 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %111 = bitcast float %110 to i32
  %112 = ashr i32 %111, 1
  %113 = sub nsw i32 1597250115, %112
  %114 = bitcast i32 %113 to float
  %115 = fmul fast float %114, %87
  %116 = fmul fast float %114, %88
  %117 = fmul fast float %114, %89
  %118 = fmul fast float %88, %85
  %119 = fmul fast float %89, %84
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %89, %83
  %122 = fmul fast float %87, %85
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %87, %84
  %125 = fmul fast float %88, %83
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %120, %86
  %128 = fmul fast float %123, %86
  %129 = fmul fast float %126, %86
  %130 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %131 = bitcast float %130 to i32
  %132 = ashr i32 %131, 1
  %133 = sub nsw i32 1597250115, %132
  %134 = bitcast i32 %133 to float
  %135 = fmul fast float %134, %76
  %136 = fmul fast float %134, %77
  %137 = fmul fast float %134, %78
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = fcmp fast une float %139, 0.000000e+00
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %108, 2.000000e+00
  %145 = fmul fast float %144, %142
  %146 = fmul fast float %109, 2.000000e+00
  %147 = fmul fast float %146, %143
  %148 = fsub fast float 1.000000e+00, %145
  %149 = fsub fast float 1.000000e+00, %147
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %140, float %151, float %155
  %159 = select i1 %140, float %152, float %156
  %160 = select i1 %140, float %153, float %157
  %161 = fmul fast float %158, %148
  %162 = fmul fast float %159, %148
  %163 = fmul fast float %160, %148
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = select i1 %140, float %165, float %169
  %173 = select i1 %140, float %166, float %170
  %174 = select i1 %140, float %167, float %171
  %175 = fmul fast float %172, %149
  %176 = fmul fast float %173, %149
  %177 = fmul fast float %174, %149
  %178 = fadd fast float %175, %161
  %179 = fadd fast float %176, %162
  %180 = fadd fast float %177, %163
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = select i1 %140, float %182, float %186
  %190 = select i1 %140, float %183, float %187
  %191 = select i1 %140, float %184, float %188
  %192 = fadd fast float %178, %189
  %193 = fadd fast float %179, %190
  %194 = fadd fast float %180, %191
  %195 = fmul fast float %192, %99
  %196 = fmul fast float %193, %99
  %197 = fmul fast float %194, %99
  %198 = shl i32 %57, 5
  %199 = add i32 %198, 4194304
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = extractvalue %dx.types.ResRet.i32 %200, 1
  %203 = extractvalue %dx.types.ResRet.i32 %200, 2
  %204 = extractvalue %dx.types.ResRet.i32 %200, 3
  %205 = add i32 %198, 4194320
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.ResRet.i32 %206, 1
  %209 = bitcast i32 %207 to float
  %210 = bitcast i32 %208 to float
  %211 = fmul fast float %108, 5.000000e-01
  %212 = fmul fast float %109, 5.000000e-01
  %213 = fptosi float %211 to i32
  %214 = fptosi float %212 to i32
  %215 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = lshr i32 %216, 18
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F4C00EBA0000000
  %220 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %223 = extractvalue %dx.types.Dimensions %222, 0
  %224 = sitofp i32 %223 to float
  %225 = extractvalue %dx.types.Dimensions %222, 1
  %226 = sitofp i32 %225 to float
  %227 = fcmp fast oge float %211, %224
  %228 = fcmp fast oge float %212, %226
  %229 = or i1 %227, %228
  %230 = select i1 %229, float 0x4197782600000000, float %221
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %108
  %235 = fmul fast float %233, %109
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 114688
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float %234, float 0.000000e+00
  %241 = select i1 %239, float %235, float 0.000000e+00
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %240, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fmul fast float %243, 2.550000e+02
  %245 = fptoui float %244 to i32
  %246 = select i1 %239, i32 %245, i32 0
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 3
  %249 = and i32 %248, 3
  %250 = icmp ne i32 %249, 0
  %251 = and i32 %248, 4
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %250, %252
  br i1 %253, label %254, label %263

; <label>:254                                     ; preds = %0
  %255 = fmul fast float %143, %109
  %256 = fmul fast float %142, %108
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %256, float %255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fsub fast float 1.000000e+00, %258
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = fcmp fast olt float %259, %261
  br label %266

; <label>:263                                     ; preds = %0
  %264 = icmp eq i32 %251, 0
  %265 = and i1 %250, %264
  br label %266

; <label>:266                                     ; preds = %263, %254
  %267 = phi i1 [ %262, %254 ], [ %265, %263 ]
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %270 = fmul fast float %269, 0x3FE3C6EF40000000
  %271 = frem fast float %108, 2.560000e+02
  %272 = frem fast float %109, 2.560000e+02
  %273 = fptoui float %271 to i32
  %274 = fptoui float %272 to i32
  %275 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %273, i32 %274, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fadd fast float %276, %270
  %278 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %279 = add i32 %56, 156
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = shl i32 %281, 4
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %281, 7
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %281, 22
  %289 = shl nuw nsw i32 %288, 5
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %56, 216
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %293, 8
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %293, 16
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = add i32 %56, 36
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %56, 288
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = fmul fast float %316, 0x3F50624DE0000000
  %320 = fmul fast float %318, 0x3F50624DE0000000
  %321 = mul i32 %58, 100
  %322 = add i32 %321, 28
  %323 = add i32 %321, 40
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = add i32 %56, 172
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %56, 232
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %56, 52
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %56, 304
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = shl i32 %367, 4
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %367, 7
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %367, 22
  %375 = shl nuw nsw i32 %374, 5
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = and i32 %325, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %370, float %331
  %380 = select i1 %378, float %373, float %334
  %381 = select i1 %378, float %376, float %337
  %382 = add i32 %321, 44
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = fmul fast float %384, %379
  %386 = fmul fast float %384, %380
  %387 = fmul fast float %384, %381
  %388 = add i32 %321, 48
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = and i32 %325, 8
  %401 = icmp ne i32 %400, 0
  %402 = select i1 %401, float %393, float %343
  %403 = select i1 %401, float %396, float %347
  %404 = select i1 %401, float %399, float %351
  %405 = add i32 %321, 52
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 65535
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %407, 16
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = and i32 %325, 2
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %409, float %356
  %415 = select i1 %413, float %411, float %358
  %416 = add i32 %321, 56
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = and i32 %325, 4
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %420, float %363
  %426 = fmul float %425, 0x3F50624DE0000000
  %427 = select i1 %424, float %422, float %365
  %428 = fmul float %427, 0x3F50624DE0000000
  %429 = add i32 %321, 60
  %430 = add i32 %321, 32
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = add i32 %56, 188
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = shl i32 %435, 4
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %435, 7
  %440 = and i32 %439, 32752
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %435, 22
  %443 = shl nuw nsw i32 %442, 5
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = add i32 %56, 248
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 255
  %449 = uitofp i32 %448 to float
  %450 = fmul fast float %449, 0x3F70101020000000
  %451 = lshr i32 %447, 8
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = lshr i32 %447, 16
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = add i32 %56, 68
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 65535
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %461, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = add i32 %56, 320
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = shl i32 %474, 4
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %474, 7
  %479 = and i32 %478, 32752
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = lshr i32 %474, 22
  %482 = shl nuw nsw i32 %481, 5
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = and i32 %432, 1
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %477, float %438
  %487 = select i1 %485, float %480, float %441
  %488 = select i1 %485, float %483, float %444
  %489 = add i32 %321, 64
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = fmul fast float %491, %486
  %493 = fmul fast float %491, %487
  %494 = fmul fast float %491, %488
  %495 = add i32 %321, 68
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = shl i32 %497, 4
  %499 = and i32 %498, 32752
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %497, 7
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %497, 22
  %505 = shl nuw nsw i32 %504, 5
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = and i32 %432, 8
  %508 = icmp ne i32 %507, 0
  %509 = select i1 %508, float %500, float %450
  %510 = select i1 %508, float %503, float %454
  %511 = select i1 %508, float %506, float %458
  %512 = add i32 %321, 72
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 65535
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = lshr i32 %514, 16
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = and i32 %432, 2
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %516, float %463
  %522 = select i1 %520, float %518, float %465
  %523 = add i32 %321, 76
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = and i32 %525, 65535
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = lshr i32 %525, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = and i32 %432, 4
  %531 = icmp ne i32 %530, 0
  %532 = select i1 %531, float %527, float %470
  %533 = fmul float %532, 0x3F50624DE0000000
  %534 = select i1 %531, float %529, float %472
  %535 = fmul float %534, 0x3F50624DE0000000
  %536 = add i32 %321, 80
  %537 = add i32 %321, 36
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %56, 204
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = shl i32 %542, 4
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %542, 7
  %547 = and i32 %546, 32752
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = lshr i32 %542, 22
  %550 = shl nuw nsw i32 %549, 5
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = add i32 %56, 264
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = lshr i32 %554, 8
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = lshr i32 %554, 16
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = add i32 %56, 84
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %56, 336
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %575, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = shl i32 %581, 4
  %583 = and i32 %582, 32752
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %581, 7
  %586 = and i32 %585, 32752
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %581, 22
  %589 = shl nuw nsw i32 %588, 5
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = and i32 %539, 1
  %592 = icmp ne i32 %591, 0
  %593 = select i1 %592, float %584, float %545
  %594 = select i1 %592, float %587, float %548
  %595 = select i1 %592, float %590, float %551
  %596 = add i32 %321, 84
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = fmul fast float %598, %593
  %600 = fmul fast float %598, %594
  %601 = fmul fast float %598, %595
  %602 = add i32 %321, 88
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = shl i32 %604, 4
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %604, 7
  %609 = and i32 %608, 32752
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %604, 22
  %612 = shl nuw nsw i32 %611, 5
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = and i32 %539, 8
  %615 = icmp ne i32 %614, 0
  %616 = select i1 %615, float %607, float %557
  %617 = select i1 %615, float %610, float %561
  %618 = select i1 %615, float %613, float %565
  %619 = add i32 %321, 92
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = and i32 %621, 65535
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = lshr i32 %621, 16
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = and i32 %539, 2
  %627 = icmp ne i32 %626, 0
  %628 = select i1 %627, float %623, float %570
  %629 = select i1 %627, float %625, float %572
  %630 = add i32 %321, 96
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 65535
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %632, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = and i32 %539, 4
  %638 = icmp ne i32 %637, 0
  %639 = select i1 %638, float %634, float %577
  %640 = fmul float %639, 0x3F50624DE0000000
  %641 = select i1 %638, float %636, float %579
  %642 = fmul float %641, 0x3F50624DE0000000
  %643 = add i32 %56, 348
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 32
  %647 = icmp eq i32 %646, 0
  %648 = and i32 %645, 64
  %649 = icmp eq i32 %648, 0
  %650 = and i32 %645, 128
  %651 = icmp eq i32 %650, 0
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 2
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %671, label %656

; <label>:656                                     ; preds = %266
  %657 = add i32 %56, 492
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %105, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = extractvalue %dx.types.ResRet.f32 %662, 1
  %665 = extractvalue %dx.types.ResRet.f32 %662, 2
  %666 = extractvalue %dx.types.ResRet.f32 %662, 3
  %667 = fmul fast float %666, %92
  %668 = fmul fast float %663, %93
  %669 = fmul fast float %664, %94
  %670 = fmul fast float %665, %95
  br label %671

; <label>:671                                     ; preds = %656, %266
  %672 = phi float [ %95, %266 ], [ %670, %656 ]
  %673 = phi float [ %94, %266 ], [ %669, %656 ]
  %674 = phi float [ %93, %266 ], [ %668, %656 ]
  %675 = phi float [ %92, %266 ], [ %667, %656 ]
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 2
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %699, label %680

; <label>:680                                     ; preds = %671
  %681 = add i32 %56, 44
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 1
  %685 = icmp ne i32 %684, 0
  %686 = select i1 %685, float %674, float 1.000000e+00
  %687 = add i32 %56, 60
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 1
  %691 = icmp ne i32 %690, 0
  %692 = select i1 %691, float %673, float 1.000000e+00
  %693 = add i32 %56, 76
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 1
  %697 = icmp ne i32 %696, 0
  %698 = select i1 %697, float %672, float 1.000000e+00
  br label %699

; <label>:699                                     ; preds = %680, %671
  %700 = phi float [ %672, %671 ], [ %698, %680 ]
  %701 = phi float [ %673, %671 ], [ %692, %680 ]
  %702 = phi float [ %674, %671 ], [ %686, %680 ]
  %703 = lshr i32 %677, 20
  %704 = and i32 %703, 3
  %705 = add nuw nsw i32 %704, 1
  %706 = add i32 %56, 24
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %56, 28
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = or i32 %711, %708
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %1248, label %714

; <label>:714                                     ; preds = %699
  %715 = and i32 %708, 262144
  %716 = icmp ne i32 %715, 0
  %717 = select i1 %716, float %63, float 1.000000e+00
  %718 = select i1 %716, float %64, float 0.000000e+00
  %719 = select i1 %716, float %65, float 0.000000e+00
  %720 = select i1 %716, float %66, float 1.000000e+00
  %721 = select i1 %716, float %67, float %90
  %722 = select i1 %716, float %68, float %91
  %723 = add i32 %56, 284
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = lshr i32 %725, 16
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = fmul fast float %727, 0x3F50624DE0000000
  %729 = add i32 %56, 88
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 16
  %733 = and i32 %732, 255
  %734 = lshr i32 %731, 24
  %735 = add i32 %56, 292
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = lshr i32 %737, 16
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = add i32 %56, 32
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = lshr i32 %744, 22
  %746 = shl nuw nsw i32 %745, 5
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = shl i32 %744, 4
  %749 = and i32 %748, 32752
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = lshr i32 %744, 7
  %752 = and i32 %751, 32752
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %756 = fmul fast float %755, 1.000000e+03
  %757 = fmul fast float %319, %756
  %758 = call float @dx.op.unary.f32(i32 22, float %757)  ; Frc(value)
  %759 = fadd fast float %758, %309
  %760 = fmul fast float %320, %756
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fadd fast float %761, %311
  %763 = fmul fast float %728, %756
  %764 = call float @dx.op.unary.f32(i32 22, float %763)  ; Frc(value)
  %765 = fmul fast float %764, 0x401921FB60000000
  %766 = fadd fast float %765, %747
  %767 = call float @dx.op.unary.f32(i32 13, float %766)  ; Sin(value)
  %768 = call float @dx.op.unary.f32(i32 12, float %766)  ; Cos(value)
  %769 = fsub fast float -0.000000e+00, %767
  %770 = fadd fast float %721, -5.000000e-01
  %771 = fadd fast float %722, -5.000000e-01
  %772 = fmul fast float %739, %770
  %773 = fmul fast float %741, %771
  %774 = fadd fast float %772, 5.000000e-01
  %775 = fadd fast float %773, 5.000000e-01
  %776 = fmul fast float %750, %774
  %777 = fmul fast float %753, %775
  %778 = fmul fast float %768, %776
  %779 = call float @dx.op.tertiary.f32(i32 46, float %769, float %777, float %778)  ; FMad(a,b,c)
  %780 = fmul fast float %767, %776
  %781 = call float @dx.op.tertiary.f32(i32 46, float %768, float %777, float %780)  ; FMad(a,b,c)
  %782 = fadd fast float %759, %779
  %783 = fadd fast float %762, %781
  %784 = icmp ugt i32 %733, 1
  %785 = icmp ugt i32 %731, 33554431
  %786 = or i1 %785, %784
  br i1 %786, label %787, label %812

; <label>:787                                     ; preds = %714
  %788 = add i32 %56, 228
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = lshr i32 %790, 16
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = fmul fast float %755, %792
  %794 = call float @dx.op.unary.f32(i32 22, float %793)  ; Frc(value)
  %795 = mul nuw nsw i32 %733, %734
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %794, %796
  %798 = call float @dx.op.unary.f32(i32 27, float %797)  ; Round_ni(value)
  %799 = fptoui float %798 to i32
  %800 = urem i32 %799, %733
  %801 = udiv i32 %799, %734
  %802 = call float @dx.op.unary.f32(i32 22, float %782)  ; Frc(value)
  %803 = call float @dx.op.unary.f32(i32 22, float %783)  ; Frc(value)
  %804 = uitofp i32 %800 to float
  %805 = uitofp i32 %801 to float
  %806 = fadd fast float %802, %804
  %807 = fadd fast float %803, %805
  %808 = uitofp i32 %733 to float
  %809 = uitofp i32 %734 to float
  %810 = fdiv fast float %806, %808
  %811 = fdiv fast float %807, %809
  br label %812

; <label>:812                                     ; preds = %787, %714
  %813 = phi float [ %810, %787 ], [ %782, %714 ]
  %814 = phi float [ %811, %787 ], [ %783, %714 ]
  %815 = and i32 %708, 256
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %863, label %817

; <label>:817                                     ; preds = %812
  %818 = add i32 %56, 440
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %105, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = add i32 %56, 100
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = shl i32 %827, 4
  %829 = and i32 %828, 32752
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = lshr i32 %827, 7
  %832 = and i32 %831, 32752
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = fsub fast float 1.000000e+00, %675
  %835 = call float @dx.op.binary.f32(i32 35, float %834, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %836 = bitcast float %675 to i32
  %837 = sitofp i32 %836 to float
  %838 = fadd fast float %837, 0xC1CFBF8940000000
  %839 = fmul fast float %833, %838
  %840 = fadd fast float %839, 0x41CFBF8940000000
  %841 = fptosi float %840 to i32
  %842 = bitcast i32 %841 to float
  %843 = bitcast float %835 to i32
  %844 = sitofp i32 %843 to float
  %845 = fadd fast float %844, 0xC1CFBF8940000000
  %846 = fmul fast float %845, %833
  %847 = fadd fast float %846, 0x41CFBF8940000000
  %848 = fptosi float %847 to i32
  %849 = bitcast i32 %848 to float
  %850 = fmul fast float %842, %830
  %851 = fmul fast float %849, %830
  %852 = fsub fast float %835, %850
  %853 = fadd fast float %851, %835
  %854 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %855 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %856 = fsub fast float %824, %854
  %857 = fsub fast float %855, %854
  %858 = bitcast float %857 to i32
  %859 = sub nsw i32 2129859010, %858
  %860 = bitcast i32 %859 to float
  %861 = fmul fast float %860, %856
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  br label %863

; <label>:863                                     ; preds = %817, %812
  %864 = phi float [ %862, %817 ], [ %675, %812 ]
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 128
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %885, label %869

; <label>:869                                     ; preds = %863
  %870 = add i32 %56, 424
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = add i32 %872, 0
  %874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %874, %dx.types.Handle %105, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 524288
  %880 = icmp ne i32 %879, 0
  %881 = fcmp fast ogt float %876, 0x3FE0101020000000
  %882 = select i1 %881, float 1.000000e+00, float 0.000000e+00
  %883 = select i1 %880, float %882, float %876
  %884 = fmul fast float %883, %864
  br label %885

; <label>:885                                     ; preds = %869, %863
  %886 = phi float [ %884, %869 ], [ %864, %863 ]
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 16
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %1089, label %891

; <label>:891                                     ; preds = %885
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = add i32 %56, 376
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = add i32 %896, 0
  %898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %898, %dx.types.Handle %104, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = extractvalue %dx.types.ResRet.f32 %899, 3
  %904 = and i32 %893, 255
  %905 = uitofp i32 %904 to float
  %906 = lshr i32 %893, 8
  %907 = and i32 %906, 255
  %908 = uitofp i32 %907 to float
  %909 = fmul fast float %903, %905
  %910 = fadd fast float %909, %908
  %911 = fmul fast float %910, 0x3F70101000000000
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 512
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %924, label %916

; <label>:916                                     ; preds = %891
  %917 = add i32 %56, 460
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %919, 0
  %921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %921, %dx.types.Handle %105, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  br label %924

; <label>:924                                     ; preds = %916, %891
  %925 = phi float [ %923, %916 ], [ 1.000000e+00, %891 ]
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 33554432
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1036, label %930

; <label>:930                                     ; preds = %924
  %931 = add i32 %56, 224
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = and i32 %933, 65535
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = lshr i32 %933, 16
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = add i32 %56, 228
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 65535
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 24
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = and i32 %944, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = lshr i32 %944, 8
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %944, 16
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = add i32 %56, 220
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 24
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = and i32 %961, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = lshr i32 %961, 8
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = lshr i32 %961, 16
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = bitcast float %900 to i32
  %977 = ashr i32 %976, 1
  %978 = sub nsw i32 1597463174, %977
  %979 = bitcast i32 %978 to float
  %980 = fmul fast float %900, 5.000000e-01
  %981 = fmul fast float %979, %979
  %982 = fmul fast float %981, %980
  %983 = fsub fast float 1.500000e+00, %982
  %984 = fmul fast float %979, %900
  %985 = fmul fast float %984, %983
  %986 = bitcast float %901 to i32
  %987 = ashr i32 %986, 1
  %988 = sub nsw i32 1597463174, %987
  %989 = bitcast i32 %988 to float
  %990 = fmul fast float %901, 5.000000e-01
  %991 = fmul fast float %989, %989
  %992 = fmul fast float %991, %990
  %993 = fsub fast float 1.500000e+00, %992
  %994 = fmul fast float %989, %901
  %995 = fmul fast float %994, %993
  %996 = bitcast float %902 to i32
  %997 = ashr i32 %996, 1
  %998 = sub nsw i32 1597463174, %997
  %999 = bitcast i32 %998 to float
  %1000 = fmul fast float %902, 5.000000e-01
  %1001 = fmul fast float %999, %999
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float 1.500000e+00, %1002
  %1004 = fmul fast float %999, %902
  %1005 = fmul fast float %1004, %1003
  %1006 = fsub fast float %985, %967
  %1007 = fsub fast float %995, %971
  %1008 = fsub fast float %1005, %975
  %1009 = fmul fast float %1006, %935
  %1010 = fmul fast float %1007, %937
  %1011 = fmul fast float %1008, %942
  %1012 = fadd fast float %1009, %950
  %1013 = fadd fast float %1010, %954
  %1014 = fadd fast float %1011, %958
  %1015 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1016 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1017 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1018 = fmul fast float %1015, %1015
  %1019 = fmul fast float %1016, %1016
  %1020 = fmul fast float %1017, %1017
  %1021 = fsub fast float %1018, %900
  %1022 = fsub fast float %1019, %901
  %1023 = fsub fast float %1020, %902
  %1024 = fmul fast float %1021, %925
  %1025 = fmul fast float %1022, %925
  %1026 = fmul fast float %1023, %925
  %1027 = fadd fast float %1024, %900
  %1028 = fadd fast float %1025, %901
  %1029 = fadd fast float %1026, %902
  %1030 = fadd fast float %947, %911
  %1031 = fsub fast float %1030, %964
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  %1033 = fsub fast float %1032, %911
  %1034 = fmul fast float %1033, %925
  %1035 = fadd fast float %1034, %911
  br label %1089

; <label>:1036                                    ; preds = %924
  %1037 = and i32 %927, 134217728
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1073, label %1039

; <label>:1039                                    ; preds = %1036
  %1040 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1041 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1042 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1043 = fadd fast float %1040, -5.000000e-01
  %1044 = fadd fast float %1041, -5.000000e-01
  %1045 = fadd fast float %1042, -5.000000e-01
  %1046 = fmul fast float %1043, %925
  %1047 = fmul fast float %1044, %925
  %1048 = fmul fast float %1045, %925
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = fadd fast float %1047, 5.000000e-01
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = call float @dx.op.unary.f32(i32 24, float %900)  ; Sqrt(value)
  %1053 = call float @dx.op.unary.f32(i32 24, float %901)  ; Sqrt(value)
  %1054 = call float @dx.op.unary.f32(i32 24, float %902)  ; Sqrt(value)
  %1055 = fmul fast float %1049, 2.000000e+00
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = fmul fast float %1056, %1052
  %1058 = fadd fast float %1057, %1055
  %1059 = fmul fast float %1058, %1052
  %1060 = fmul fast float %1050, 2.000000e+00
  %1061 = fsub fast float 1.000000e+00, %1060
  %1062 = fmul fast float %1061, %1053
  %1063 = fadd fast float %1062, %1060
  %1064 = fmul fast float %1063, %1053
  %1065 = fmul fast float %1051, 2.000000e+00
  %1066 = fsub fast float 1.000000e+00, %1065
  %1067 = fmul fast float %1066, %1054
  %1068 = fadd fast float %1067, %1065
  %1069 = fmul fast float %1068, %1054
  %1070 = fmul fast float %1059, %1059
  %1071 = fmul fast float %1064, %1064
  %1072 = fmul fast float %1069, %1069
  br label %1089

; <label>:1073                                    ; preds = %1036
  %1074 = fmul fast float %296, %296
  %1075 = fmul fast float %300, %300
  %1076 = fmul fast float %304, %304
  %1077 = fadd fast float %1074, -1.000000e+00
  %1078 = fadd fast float %1075, -1.000000e+00
  %1079 = fadd fast float %1076, -1.000000e+00
  %1080 = fmul fast float %925, %1077
  %1081 = fmul fast float %925, %1078
  %1082 = fmul fast float %925, %1079
  %1083 = fadd fast float %1080, 1.000000e+00
  %1084 = fadd fast float %1081, 1.000000e+00
  %1085 = fadd fast float %1082, 1.000000e+00
  %1086 = fmul fast float %1083, %900
  %1087 = fmul fast float %1084, %901
  %1088 = fmul fast float %1085, %902
  br label %1089

; <label>:1089                                    ; preds = %1073, %1039, %930, %885
  %1090 = phi float [ %1035, %930 ], [ %911, %1039 ], [ %911, %1073 ], [ 0x3FA23C0BE0000000, %885 ]
  %1091 = phi float [ %1027, %930 ], [ %1070, %1039 ], [ %1086, %1073 ], [ 1.000000e+00, %885 ]
  %1092 = phi float [ %1028, %930 ], [ %1071, %1039 ], [ %1087, %1073 ], [ 1.000000e+00, %885 ]
  %1093 = phi float [ %1029, %930 ], [ %1072, %1039 ], [ %1088, %1073 ], [ 1.000000e+00, %885 ]
  %1094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.i32 %1094, 1
  %1096 = and i32 %1095, 1
  %1097 = icmp ne i32 %1096, 0
  %1098 = add i32 %56, 356
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 32
  %1102 = icmp ne i32 %1101, 0
  %1103 = and i1 %1097, %1102
  %1104 = select i1 %1103, float 1.000000e+00, float %1091
  %1105 = select i1 %1103, float 0x3FD3333340000000, float %1092
  %1106 = select i1 %1103, float 0x3FD3333340000000, float %1093
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 32
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1183, label %1111

; <label>:1111                                    ; preds = %1089
  %1112 = add i32 %56, 92
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %56, 392
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1119, %dx.types.Handle %104, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1125 = and i32 %1114, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = lshr i32 %1114, 8
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = lshr i32 %1114, 16
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1132, 0x3F70101000000000
  %1134 = fmul fast float %1121, %1126
  %1135 = fadd fast float %1134, %1129
  %1136 = fmul fast float %1135, 0x3F70101000000000
  %1137 = fadd fast float %1122, -5.000000e-01
  %1138 = fadd fast float %1124, -5.000000e-01
  %1139 = fmul fast float %1137, %1133
  %1140 = fmul fast float %1138, %1133
  %1141 = fadd fast float %1139, 5.000000e-01
  %1142 = fadd fast float %1140, 5.000000e-01
  %1143 = fmul fast float %1141, 2.000000e+00
  %1144 = fadd fast float %1143, -1.000000e+00
  %1145 = fmul fast float %1142, 2.000000e+00
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = fadd fast float %1144, %1146
  %1148 = fmul fast float %1147, 5.000000e-01
  %1149 = fsub fast float %1144, %1146
  %1150 = fmul fast float %1149, 5.000000e-01
  %1151 = call float @dx.op.unary.f32(i32 6, float %1148)  ; FAbs(value)
  %1152 = fsub fast float 1.000000e+00, %1151
  %1153 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1154 = fsub fast float %1152, %1153
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1148, float %1150, float %1154, float %1148, float %1150, float %1154)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.unary.f32(i32 25, float %1155)  ; Rsqrt(value)
  %1157 = fmul fast float %1148, %1156
  %1158 = fmul fast float %1150, %1156
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 67108864
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1179, label %1163

; <label>:1163                                    ; preds = %1111
  %1164 = add i32 %56, 280
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 65535
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = lshr i32 %1166, 16
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = fsub fast float %1136, %1174
  %1176 = fmul fast float %1175, %1168
  %1177 = fadd fast float %1176, %1172
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  br label %1179

; <label>:1179                                    ; preds = %1163, %1111
  %1180 = phi float [ %1178, %1163 ], [ %1136, %1111 ]
  %1181 = call float @dx.op.dot2.f32(i32 54, float %1157, float %1158, float %717, float %718)  ; Dot2(ax,ay,bx,by)
  %1182 = call float @dx.op.dot2.f32(i32 54, float %1157, float %1158, float %719, float %720)  ; Dot2(ax,ay,bx,by)
  br label %1183

; <label>:1183                                    ; preds = %1179, %1089
  %1184 = phi float [ %1180, %1179 ], [ 0x3FD6666660000000, %1089 ]
  %1185 = phi float [ %1181, %1179 ], [ 0.000000e+00, %1089 ]
  %1186 = phi float [ %1182, %1179 ], [ 0.000000e+00, %1089 ]
  %1187 = phi float [ %1123, %1179 ], [ 1.000000e+00, %1089 ]
  %1188 = add i32 %56, 160
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = lshr i32 %1190, 22
  %1192 = shl nuw nsw i32 %1191, 5
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 64
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1231, label %1198

; <label>:1198                                    ; preds = %1183
  %1199 = add i32 %56, 408
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = add i32 %1201, 0
  %1203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 131072
  %1207 = icmp eq i32 %1206, 0
  %1208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1203, %dx.types.Handle %104, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = fmul fast float %1209, %284
  %1213 = fmul fast float %1210, %287
  %1214 = fmul fast float %1211, %290
  br i1 %1207, label %1221, label %1215

; <label>:1215                                    ; preds = %1198
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = fmul fast float %1217, %1212
  %1219 = fmul fast float %1217, %1213
  %1220 = fmul fast float %1217, %1214
  br label %1221

; <label>:1221                                    ; preds = %1215, %1198
  %1222 = phi float [ %1218, %1215 ], [ %1212, %1198 ]
  %1223 = phi float [ %1219, %1215 ], [ %1213, %1198 ]
  %1224 = phi float [ %1220, %1215 ], [ %1214, %1198 ]
  %1225 = fmul fast float %1222, %1193
  %1226 = select i1 %267, float %1225, float %1222
  %1227 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1223, float %1224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = select i1 %267, float 0.000000e+00, float %1222
  %1229 = select i1 %267, float %1227, float %1223
  %1230 = select i1 %267, float 0.000000e+00, float %1224
  br label %1231

; <label>:1231                                    ; preds = %1221, %1183
  %1232 = phi float [ %1228, %1221 ], [ 0.000000e+00, %1183 ]
  %1233 = phi float [ %1229, %1221 ], [ 0.000000e+00, %1183 ]
  %1234 = phi float [ %1230, %1221 ], [ 0.000000e+00, %1183 ]
  %1235 = add i32 %56, 96
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = lshr i32 %1237, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fmul fast float %1242, %1243
  %1245 = fadd fast float %1244, %1239
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  br label %1248

; <label>:1248                                    ; preds = %1231, %699
  %1249 = phi float [ 0.000000e+00, %699 ], [ %1185, %1231 ]
  %1250 = phi float [ 0.000000e+00, %699 ], [ %1186, %1231 ]
  %1251 = phi float [ 0.000000e+00, %699 ], [ %1104, %1231 ]
  %1252 = phi float [ 0.000000e+00, %699 ], [ %1105, %1231 ]
  %1253 = phi float [ 0.000000e+00, %699 ], [ %1106, %1231 ]
  %1254 = phi float [ 0.000000e+00, %699 ], [ %1232, %1231 ]
  %1255 = phi float [ 0.000000e+00, %699 ], [ %1233, %1231 ]
  %1256 = phi float [ 0.000000e+00, %699 ], [ %1234, %1231 ]
  %1257 = phi float [ 0.000000e+00, %699 ], [ %1090, %1231 ]
  %1258 = phi float [ 0.000000e+00, %699 ], [ %886, %1231 ]
  %1259 = phi float [ 0.000000e+00, %699 ], [ %1184, %1231 ]
  %1260 = phi float [ 0.000000e+00, %699 ], [ %1187, %1231 ]
  %1261 = phi float [ 0.000000e+00, %699 ], [ %1247, %1231 ]
  br i1 %647, label %1988, label %1262

; <label>:1262                                    ; preds = %1248
  %1263 = icmp ult i32 %705, 2
  %1264 = add i32 %56, 40
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %56, 44
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = or i32 %1269, %1266
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1988, label %1272

; <label>:1272                                    ; preds = %1262
  %1273 = and i32 %1266, 262144
  %1274 = icmp ne i32 %1273, 0
  %1275 = select i1 %1274, float %63, float 1.000000e+00
  %1276 = select i1 %1274, float %64, float 0.000000e+00
  %1277 = select i1 %1274, float %65, float 0.000000e+00
  %1278 = select i1 %1274, float %66, float 1.000000e+00
  %1279 = select i1 %1274, float %67, float %90
  %1280 = select i1 %1274, float %68, float %91
  %1281 = add i32 %56, 300
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = lshr i32 %1283, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = fmul fast float %1285, 0x3F50624DE0000000
  %1287 = add i32 %56, 104
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 16
  %1291 = and i32 %1290, 255
  %1292 = lshr i32 %1289, 24
  %1293 = add i32 %56, 308
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 65535
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = lshr i32 %1295, 16
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = add i32 %56, 48
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = lshr i32 %1302, 22
  %1304 = shl nuw nsw i32 %1303, 5
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = shl i32 %1302, 4
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = lshr i32 %1302, 7
  %1310 = and i32 %1309, 32752
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 3
  %1314 = fmul fast float %1313, 1.000000e+03
  %1315 = fmul fast float %1314, %426
  %1316 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  %1317 = fadd fast float %1316, %414
  %1318 = fmul fast float %1314, %428
  %1319 = call float @dx.op.unary.f32(i32 22, float %1318)  ; Frc(value)
  %1320 = fadd fast float %1319, %415
  %1321 = fmul fast float %1286, %1314
  %1322 = call float @dx.op.unary.f32(i32 22, float %1321)  ; Frc(value)
  %1323 = fmul fast float %1322, 0x401921FB60000000
  %1324 = fadd fast float %1323, %1305
  %1325 = call float @dx.op.unary.f32(i32 13, float %1324)  ; Sin(value)
  %1326 = call float @dx.op.unary.f32(i32 12, float %1324)  ; Cos(value)
  %1327 = fsub fast float -0.000000e+00, %1325
  %1328 = fadd fast float %1279, -5.000000e-01
  %1329 = fadd fast float %1280, -5.000000e-01
  %1330 = fmul fast float %1297, %1328
  %1331 = fmul fast float %1299, %1329
  %1332 = fadd fast float %1330, 5.000000e-01
  %1333 = fadd fast float %1331, 5.000000e-01
  %1334 = fmul fast float %1308, %1332
  %1335 = fmul fast float %1311, %1333
  %1336 = fmul fast float %1326, %1334
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1335, float %1336)  ; FMad(a,b,c)
  %1338 = fmul fast float %1325, %1334
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1335, float %1338)  ; FMad(a,b,c)
  %1340 = fadd fast float %1317, %1337
  %1341 = fadd fast float %1320, %1339
  %1342 = icmp ugt i32 %1291, 1
  %1343 = icmp ugt i32 %1289, 33554431
  %1344 = or i1 %1343, %1342
  br i1 %1344, label %1345, label %1370

; <label>:1345                                    ; preds = %1272
  %1346 = add i32 %56, 244
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = lshr i32 %1348, 16
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = fmul fast float %1313, %1350
  %1352 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1353 = mul nuw nsw i32 %1291, %1292
  %1354 = uitofp i32 %1353 to float
  %1355 = fmul fast float %1352, %1354
  %1356 = call float @dx.op.unary.f32(i32 27, float %1355)  ; Round_ni(value)
  %1357 = fptoui float %1356 to i32
  %1358 = urem i32 %1357, %1291
  %1359 = udiv i32 %1357, %1292
  %1360 = call float @dx.op.unary.f32(i32 22, float %1340)  ; Frc(value)
  %1361 = call float @dx.op.unary.f32(i32 22, float %1341)  ; Frc(value)
  %1362 = uitofp i32 %1358 to float
  %1363 = uitofp i32 %1359 to float
  %1364 = fadd fast float %1360, %1362
  %1365 = fadd fast float %1361, %1363
  %1366 = uitofp i32 %1291 to float
  %1367 = uitofp i32 %1292 to float
  %1368 = fdiv fast float %1364, %1366
  %1369 = fdiv fast float %1365, %1367
  br label %1370

; <label>:1370                                    ; preds = %1345, %1272
  %1371 = phi float [ %1368, %1345 ], [ %1340, %1272 ]
  %1372 = phi float [ %1369, %1345 ], [ %1341, %1272 ]
  %1373 = and i32 %1266, 256
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1421, label %1375

; <label>:1375                                    ; preds = %1370
  %1376 = add i32 %56, 444
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = add i32 %1378, 0
  %1380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1380, %dx.types.Handle %105, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = add i32 %56, 116
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = shl i32 %1385, 4
  %1387 = and i32 %1386, 32752
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = lshr i32 %1385, 7
  %1390 = and i32 %1389, 32752
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = fsub fast float 1.000000e+00, %702
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1394 = bitcast float %702 to i32
  %1395 = sitofp i32 %1394 to float
  %1396 = fadd fast float %1395, 0xC1CFBF8940000000
  %1397 = fmul fast float %1391, %1396
  %1398 = fadd fast float %1397, 0x41CFBF8940000000
  %1399 = fptosi float %1398 to i32
  %1400 = bitcast i32 %1399 to float
  %1401 = bitcast float %1393 to i32
  %1402 = sitofp i32 %1401 to float
  %1403 = fadd fast float %1402, 0xC1CFBF8940000000
  %1404 = fmul fast float %1403, %1391
  %1405 = fadd fast float %1404, 0x41CFBF8940000000
  %1406 = fptosi float %1405 to i32
  %1407 = bitcast i32 %1406 to float
  %1408 = fmul fast float %1400, %1388
  %1409 = fmul fast float %1407, %1388
  %1410 = fsub fast float %1393, %1408
  %1411 = fadd fast float %1409, %1393
  %1412 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1413 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1414 = fsub fast float %1382, %1412
  %1415 = fsub fast float %1413, %1412
  %1416 = bitcast float %1415 to i32
  %1417 = sub nsw i32 2129859010, %1416
  %1418 = bitcast i32 %1417 to float
  %1419 = fmul fast float %1418, %1414
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  br label %1421

; <label>:1421                                    ; preds = %1375, %1370
  %1422 = phi float [ %1420, %1375 ], [ %702, %1370 ]
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 128
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1443, label %1427

; <label>:1427                                    ; preds = %1421
  %1428 = add i32 %56, 428
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %1430, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1432, %dx.types.Handle %105, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 524288
  %1438 = icmp ne i32 %1437, 0
  %1439 = fcmp fast ogt float %1434, 0x3FE0101020000000
  %1440 = select i1 %1439, float 1.000000e+00, float 0.000000e+00
  %1441 = select i1 %1438, float %1440, float %1434
  %1442 = fmul fast float %1441, %1422
  br label %1443

; <label>:1443                                    ; preds = %1427, %1421
  %1444 = phi float [ %1442, %1427 ], [ %1422, %1421 ]
  %1445 = fcmp fast ult float %1444, 0x3F70101020000000
  br i1 %1445, label %1988, label %1446

; <label>:1446                                    ; preds = %1443
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 16
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1649, label %1451

; <label>:1451                                    ; preds = %1446
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %56, 380
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = add i32 %1456, 0
  %1458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1458, %dx.types.Handle %104, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = extractvalue %dx.types.ResRet.f32 %1459, 3
  %1464 = and i32 %1453, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = lshr i32 %1453, 8
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1463, %1465
  %1470 = fadd fast float %1469, %1468
  %1471 = fmul fast float %1470, 0x3F70101000000000
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 512
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1484, label %1476

; <label>:1476                                    ; preds = %1451
  %1477 = add i32 %56, 464
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %105, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  br label %1484

; <label>:1484                                    ; preds = %1476, %1451
  %1485 = phi float [ %1483, %1476 ], [ 1.000000e+00, %1451 ]
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 33554432
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1596, label %1490

; <label>:1490                                    ; preds = %1484
  %1491 = add i32 %56, 240
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = lshr i32 %1493, 16
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = add i32 %56, 244
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 65535
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = lshr i32 %1504, 24
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = and i32 %1504, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1504, 8
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1504, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = add i32 %56, 236
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = lshr i32 %1521, 24
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = and i32 %1521, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = lshr i32 %1521, 8
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = lshr i32 %1521, 16
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = bitcast float %1460 to i32
  %1537 = ashr i32 %1536, 1
  %1538 = sub nsw i32 1597463174, %1537
  %1539 = bitcast i32 %1538 to float
  %1540 = fmul fast float %1460, 5.000000e-01
  %1541 = fmul fast float %1539, %1539
  %1542 = fmul fast float %1541, %1540
  %1543 = fsub fast float 1.500000e+00, %1542
  %1544 = fmul fast float %1539, %1460
  %1545 = fmul fast float %1544, %1543
  %1546 = bitcast float %1461 to i32
  %1547 = ashr i32 %1546, 1
  %1548 = sub nsw i32 1597463174, %1547
  %1549 = bitcast i32 %1548 to float
  %1550 = fmul fast float %1461, 5.000000e-01
  %1551 = fmul fast float %1549, %1549
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float 1.500000e+00, %1552
  %1554 = fmul fast float %1549, %1461
  %1555 = fmul fast float %1554, %1553
  %1556 = bitcast float %1462 to i32
  %1557 = ashr i32 %1556, 1
  %1558 = sub nsw i32 1597463174, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = fmul fast float %1462, 5.000000e-01
  %1561 = fmul fast float %1559, %1559
  %1562 = fmul fast float %1561, %1560
  %1563 = fsub fast float 1.500000e+00, %1562
  %1564 = fmul fast float %1559, %1462
  %1565 = fmul fast float %1564, %1563
  %1566 = fsub fast float %1545, %1527
  %1567 = fsub fast float %1555, %1531
  %1568 = fsub fast float %1565, %1535
  %1569 = fmul fast float %1566, %1495
  %1570 = fmul fast float %1567, %1497
  %1571 = fmul fast float %1568, %1502
  %1572 = fadd fast float %1569, %1510
  %1573 = fadd fast float %1570, %1514
  %1574 = fadd fast float %1571, %1518
  %1575 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1576 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1577 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1578 = fmul fast float %1575, %1575
  %1579 = fmul fast float %1576, %1576
  %1580 = fmul fast float %1577, %1577
  %1581 = fsub fast float %1578, %1460
  %1582 = fsub fast float %1579, %1461
  %1583 = fsub fast float %1580, %1462
  %1584 = fmul fast float %1581, %1485
  %1585 = fmul fast float %1582, %1485
  %1586 = fmul fast float %1583, %1485
  %1587 = fadd fast float %1584, %1460
  %1588 = fadd fast float %1585, %1461
  %1589 = fadd fast float %1586, %1462
  %1590 = fadd fast float %1507, %1471
  %1591 = fsub fast float %1590, %1524
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = fsub fast float %1592, %1471
  %1594 = fmul fast float %1593, %1485
  %1595 = fadd fast float %1594, %1471
  br label %1649

; <label>:1596                                    ; preds = %1484
  %1597 = and i32 %1487, 134217728
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1633, label %1599

; <label>:1599                                    ; preds = %1596
  %1600 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fadd fast float %1601, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fmul fast float %1603, %1485
  %1607 = fmul fast float %1604, %1485
  %1608 = fmul fast float %1605, %1485
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = fadd fast float %1607, 5.000000e-01
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1613 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1615 = fmul fast float %1609, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1612
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1612
  %1620 = fmul fast float %1610, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1613
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1613
  %1625 = fmul fast float %1611, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1614
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1614
  %1630 = fmul fast float %1619, %1619
  %1631 = fmul fast float %1624, %1624
  %1632 = fmul fast float %1629, %1629
  br label %1649

; <label>:1633                                    ; preds = %1596
  %1634 = fmul fast float %402, %402
  %1635 = fmul fast float %403, %403
  %1636 = fmul fast float %404, %404
  %1637 = fadd fast float %1634, -1.000000e+00
  %1638 = fadd fast float %1635, -1.000000e+00
  %1639 = fadd fast float %1636, -1.000000e+00
  %1640 = fmul fast float %1485, %1637
  %1641 = fmul fast float %1485, %1638
  %1642 = fmul fast float %1485, %1639
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fadd fast float %1641, 1.000000e+00
  %1645 = fadd fast float %1642, 1.000000e+00
  %1646 = fmul fast float %1643, %1460
  %1647 = fmul fast float %1644, %1461
  %1648 = fmul fast float %1645, %1462
  br label %1649

; <label>:1649                                    ; preds = %1633, %1599, %1490, %1446
  %1650 = phi float [ %1595, %1490 ], [ %1471, %1599 ], [ %1471, %1633 ], [ 0x3FA23C0BE0000000, %1446 ]
  %1651 = phi float [ %1587, %1490 ], [ %1630, %1599 ], [ %1646, %1633 ], [ 1.000000e+00, %1446 ]
  %1652 = phi float [ %1588, %1490 ], [ %1631, %1599 ], [ %1647, %1633 ], [ 1.000000e+00, %1446 ]
  %1653 = phi float [ %1589, %1490 ], [ %1632, %1599 ], [ %1648, %1633 ], [ 1.000000e+00, %1446 ]
  %1654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.i32 %1654, 1
  %1656 = and i32 %1655, 1
  %1657 = icmp ne i32 %1656, 0
  %1658 = add i32 %56, 356
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 32
  %1662 = icmp ne i32 %1661, 0
  %1663 = and i1 %1657, %1662
  %1664 = select i1 %1663, float 1.000000e+00, float %1651
  %1665 = select i1 %1663, float 0x3FD3333340000000, float %1652
  %1666 = select i1 %1663, float 0x3FD3333340000000, float %1653
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 32
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %1743, label %1671

; <label>:1671                                    ; preds = %1649
  %1672 = add i32 %56, 108
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = add i32 %56, 396
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = add i32 %1677, 0
  %1679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1679, %dx.types.Handle %104, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = extractvalue %dx.types.ResRet.f32 %1680, 3
  %1685 = and i32 %1674, 255
  %1686 = uitofp i32 %1685 to float
  %1687 = lshr i32 %1674, 8
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = lshr i32 %1674, 16
  %1691 = and i32 %1690, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = fmul fast float %1692, 0x3F70101000000000
  %1694 = fmul fast float %1681, %1686
  %1695 = fadd fast float %1694, %1689
  %1696 = fmul fast float %1695, 0x3F70101000000000
  %1697 = fadd fast float %1682, -5.000000e-01
  %1698 = fadd fast float %1684, -5.000000e-01
  %1699 = fmul fast float %1697, %1693
  %1700 = fmul fast float %1698, %1693
  %1701 = fadd fast float %1699, 5.000000e-01
  %1702 = fadd fast float %1700, 5.000000e-01
  %1703 = fmul fast float %1701, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fmul fast float %1702, 2.000000e+00
  %1706 = fadd fast float %1705, -1.000000e+00
  %1707 = fadd fast float %1704, %1706
  %1708 = fmul fast float %1707, 5.000000e-01
  %1709 = fsub fast float %1704, %1706
  %1710 = fmul fast float %1709, 5.000000e-01
  %1711 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = call float @dx.op.unary.f32(i32 6, float %1710)  ; FAbs(value)
  %1714 = fsub fast float %1712, %1713
  %1715 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1710, float %1714, float %1708, float %1710, float %1714)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.unary.f32(i32 25, float %1715)  ; Rsqrt(value)
  %1717 = fmul fast float %1708, %1716
  %1718 = fmul fast float %1710, %1716
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 67108864
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1739, label %1723

; <label>:1723                                    ; preds = %1671
  %1724 = add i32 %56, 296
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 65535
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 65535
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = lshr i32 %1726, 16
  %1734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1733)  ; LegacyF16ToF32(value)
  %1735 = fsub fast float %1696, %1734
  %1736 = fmul fast float %1735, %1728
  %1737 = fadd fast float %1736, %1732
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  br label %1739

; <label>:1739                                    ; preds = %1723, %1671
  %1740 = phi float [ %1738, %1723 ], [ %1696, %1671 ]
  %1741 = call float @dx.op.dot2.f32(i32 54, float %1717, float %1718, float %1275, float %1276)  ; Dot2(ax,ay,bx,by)
  %1742 = call float @dx.op.dot2.f32(i32 54, float %1717, float %1718, float %1277, float %1278)  ; Dot2(ax,ay,bx,by)
  br label %1743

; <label>:1743                                    ; preds = %1739, %1649
  %1744 = phi float [ %1740, %1739 ], [ 0x3FD6666660000000, %1649 ]
  %1745 = phi float [ %1741, %1739 ], [ 0.000000e+00, %1649 ]
  %1746 = phi float [ %1742, %1739 ], [ 0.000000e+00, %1649 ]
  %1747 = phi float [ %1683, %1739 ], [ 1.000000e+00, %1649 ]
  %1748 = add i32 %56, 176
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = lshr i32 %1750, 22
  %1752 = shl nuw nsw i32 %1751, 5
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, 64
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1791, label %1758

; <label>:1758                                    ; preds = %1743
  %1759 = add i32 %56, 412
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = add i32 %1761, 0
  %1763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 131072
  %1767 = icmp eq i32 %1766, 0
  %1768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1763, %dx.types.Handle %104, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = fmul fast float %385, %1769
  %1773 = fmul fast float %386, %1770
  %1774 = fmul fast float %387, %1771
  br i1 %1767, label %1781, label %1775

; <label>:1775                                    ; preds = %1758
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1778 = fmul fast float %1777, %1772
  %1779 = fmul fast float %1777, %1773
  %1780 = fmul fast float %1777, %1774
  br label %1781

; <label>:1781                                    ; preds = %1775, %1758
  %1782 = phi float [ %1778, %1775 ], [ %1772, %1758 ]
  %1783 = phi float [ %1779, %1775 ], [ %1773, %1758 ]
  %1784 = phi float [ %1780, %1775 ], [ %1774, %1758 ]
  %1785 = fmul fast float %1782, %1753
  %1786 = select i1 %267, float %1785, float %1782
  %1787 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1783, float %1784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1788 = select i1 %267, float 0.000000e+00, float %1782
  %1789 = select i1 %267, float %1787, float %1783
  %1790 = select i1 %267, float 0.000000e+00, float %1784
  br label %1791

; <label>:1791                                    ; preds = %1781, %1743
  %1792 = phi float [ %1788, %1781 ], [ 0.000000e+00, %1743 ]
  %1793 = phi float [ %1789, %1781 ], [ 0.000000e+00, %1743 ]
  %1794 = phi float [ %1790, %1781 ], [ 0.000000e+00, %1743 ]
  %1795 = add i32 %56, 112
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = lshr i32 %1797, 8
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1665, float %1666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = fmul fast float %1802, %1803
  %1805 = fadd fast float %1804, %1799
  %1806 = fmul fast float %1805, 0x3F70101020000000
  %1807 = call float @dx.op.unary.f32(i32 7, float %1806)  ; Saturate(value)
  br i1 %1263, label %1808, label %1816

; <label>:1808                                    ; preds = %1791
  %1809 = fsub fast float 1.000000e+00, %1444
  %1810 = fmul fast float %1809, %1251
  %1811 = fmul fast float %1809, %1252
  %1812 = fmul fast float %1809, %1253
  %1813 = fmul fast float %1809, %1254
  %1814 = fmul fast float %1809, %1255
  %1815 = fmul fast float %1809, %1256
  br label %1816

; <label>:1816                                    ; preds = %1808, %1791
  %1817 = phi float [ %1810, %1808 ], [ %1251, %1791 ]
  %1818 = phi float [ %1811, %1808 ], [ %1252, %1791 ]
  %1819 = phi float [ %1812, %1808 ], [ %1253, %1791 ]
  %1820 = phi float [ %1813, %1808 ], [ %1254, %1791 ]
  %1821 = phi float [ %1814, %1808 ], [ %1255, %1791 ]
  %1822 = phi float [ %1815, %1808 ], [ %1256, %1791 ]
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 3
  %1826 = icmp eq i32 %1825, 3
  br i1 %1826, label %1905, label %1827

; <label>:1827                                    ; preds = %1816
  %1828 = and i32 %1824, 16
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1444, float 0.000000e+00
  %1831 = icmp eq i32 %1825, 0
  br i1 %1831, label %1832, label %1860

; <label>:1832                                    ; preds = %1827
  %1833 = and i32 %1824, 64
  %1834 = icmp ne i32 %1833, 0
  %1835 = select i1 %1834, float %1444, float 0.000000e+00
  %1836 = fsub fast float %1664, %1817
  %1837 = fsub fast float %1665, %1818
  %1838 = fsub fast float %1666, %1819
  %1839 = fmul fast float %1830, %1836
  %1840 = fmul fast float %1830, %1837
  %1841 = fmul fast float %1830, %1838
  %1842 = fadd fast float %1839, %1817
  %1843 = fadd fast float %1840, %1818
  %1844 = fadd fast float %1841, %1819
  %1845 = fsub fast float %1650, %1257
  %1846 = fmul fast float %1830, %1845
  %1847 = fadd fast float %1846, %1257
  %1848 = fsub fast float %1792, %1820
  %1849 = fsub fast float %1793, %1821
  %1850 = fsub fast float %1794, %1822
  %1851 = fmul fast float %1835, %1848
  %1852 = fmul fast float %1835, %1849
  %1853 = fmul fast float %1835, %1850
  %1854 = fadd fast float %1851, %1820
  %1855 = fadd fast float %1852, %1821
  %1856 = fadd fast float %1853, %1822
  %1857 = fsub fast float %1807, %1261
  %1858 = fmul fast float %1830, %1857
  %1859 = fadd fast float %1858, %1261
  br label %1905

; <label>:1860                                    ; preds = %1827
  %1861 = icmp eq i32 %1825, 1
  br i1 %1861, label %1862, label %1875

; <label>:1862                                    ; preds = %1860
  %1863 = fadd fast float %1664, -1.000000e+00
  %1864 = fadd fast float %1665, -1.000000e+00
  %1865 = fadd fast float %1666, -1.000000e+00
  %1866 = fmul fast float %1830, %1863
  %1867 = fmul fast float %1830, %1864
  %1868 = fmul fast float %1830, %1865
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fadd fast float %1867, 1.000000e+00
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fmul fast float %1869, %1817
  %1873 = fmul fast float %1870, %1818
  %1874 = fmul fast float %1871, %1819
  br label %1905

; <label>:1875                                    ; preds = %1860
  %1876 = icmp eq i32 %1825, 2
  br i1 %1876, label %1877, label %1905

; <label>:1877                                    ; preds = %1875
  %1878 = call float @dx.op.unary.f32(i32 24, float %1664)  ; Sqrt(value)
  %1879 = call float @dx.op.unary.f32(i32 24, float %1665)  ; Sqrt(value)
  %1880 = call float @dx.op.unary.f32(i32 24, float %1666)  ; Sqrt(value)
  %1881 = fadd fast float %1878, -5.000000e-01
  %1882 = fadd fast float %1879, -5.000000e-01
  %1883 = fadd fast float %1880, -5.000000e-01
  %1884 = fmul fast float %1881, %1830
  %1885 = fmul fast float %1882, %1830
  %1886 = fmul fast float %1883, %1830
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fmul fast float %1887, 2.000000e+00
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1817
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1817
  %1895 = fmul fast float %1888, 2.000000e+00
  %1896 = fsub fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1896, %1818
  %1898 = fadd fast float %1897, %1895
  %1899 = fmul fast float %1898, %1818
  %1900 = fmul fast float %1889, 2.000000e+00
  %1901 = fsub fast float 1.000000e+00, %1900
  %1902 = fmul fast float %1901, %1819
  %1903 = fadd fast float %1902, %1900
  %1904 = fmul fast float %1903, %1819
  br label %1905

; <label>:1905                                    ; preds = %1877, %1875, %1862, %1832, %1816
  %1906 = phi float [ %1817, %1816 ], [ %1894, %1877 ], [ %1817, %1875 ], [ %1872, %1862 ], [ %1842, %1832 ]
  %1907 = phi float [ %1818, %1816 ], [ %1899, %1877 ], [ %1818, %1875 ], [ %1873, %1862 ], [ %1843, %1832 ]
  %1908 = phi float [ %1819, %1816 ], [ %1904, %1877 ], [ %1819, %1875 ], [ %1874, %1862 ], [ %1844, %1832 ]
  %1909 = phi float [ %1820, %1816 ], [ %1820, %1877 ], [ %1820, %1875 ], [ %1820, %1862 ], [ %1854, %1832 ]
  %1910 = phi float [ %1821, %1816 ], [ %1821, %1877 ], [ %1821, %1875 ], [ %1821, %1862 ], [ %1855, %1832 ]
  %1911 = phi float [ %1822, %1816 ], [ %1822, %1877 ], [ %1822, %1875 ], [ %1822, %1862 ], [ %1856, %1832 ]
  %1912 = phi float [ %1257, %1816 ], [ %1257, %1877 ], [ %1257, %1875 ], [ %1257, %1862 ], [ %1847, %1832 ]
  %1913 = phi float [ %1261, %1816 ], [ %1261, %1877 ], [ %1261, %1875 ], [ %1261, %1862 ], [ %1859, %1832 ]
  %1914 = and i32 %1824, 12
  %1915 = icmp eq i32 %1914, 12
  br i1 %1915, label %1988, label %1916

; <label>:1916                                    ; preds = %1905
  %1917 = and i32 %1824, 2097184
  %1918 = icmp eq i32 %1917, 2097184
  %1919 = select i1 %1918, float %1444, float 0.000000e+00
  %1920 = and i32 %1824, 4194336
  %1921 = icmp eq i32 %1920, 4194336
  %1922 = select i1 %1921, float %1444, float 0.000000e+00
  %1923 = and i32 %1824, 8388640
  %1924 = icmp eq i32 %1923, 8388640
  %1925 = select i1 %1924, float %1444, float 0.000000e+00
  %1926 = icmp eq i32 %1914, 0
  br i1 %1926, label %1927, label %1940

; <label>:1927                                    ; preds = %1916
  %1928 = fsub fast float %1745, %1249
  %1929 = fsub fast float %1746, %1250
  %1930 = fmul fast float %1919, %1928
  %1931 = fmul fast float %1919, %1929
  %1932 = fadd fast float %1930, %1249
  %1933 = fadd fast float %1931, %1250
  %1934 = fsub fast float %1747, %1260
  %1935 = fmul fast float %1922, %1934
  %1936 = fadd fast float %1935, %1260
  %1937 = fsub fast float %1744, %1259
  %1938 = fmul fast float %1925, %1937
  %1939 = fadd fast float %1938, %1259
  br label %1988

; <label>:1940                                    ; preds = %1916
  %1941 = icmp eq i32 %1914, 4
  br i1 %1941, label %1942, label %1974

; <label>:1942                                    ; preds = %1940
  %1943 = fmul fast float %1919, %1745
  %1944 = fmul fast float %1919, %1746
  %1945 = fadd fast float %1943, %1249
  %1946 = fadd fast float %1944, %1250
  %1947 = call float @dx.op.binary.f32(i32 36, float %1260, float %1747)  ; FMin(a,b)
  %1948 = fsub fast float %1947, %1260
  %1949 = fmul fast float %1948, %1922
  %1950 = fadd fast float %1949, %1260
  %1951 = fadd fast float %1744, %1259
  %1952 = fmul fast float %1951, 0x3FF337FAE0000000
  %1953 = fmul fast float %1259, %1259
  %1954 = fmul fast float %1744, %1744
  %1955 = fadd fast float %1954, %1953
  %1956 = fmul fast float %1955, 0x3FE5152B00000000
  %1957 = fmul fast float %1259, 0xBFCC1F85E0000000
  %1958 = fmul fast float %1957, %1744
  %1959 = fadd fast float %1958, 0xBFE1363700000000
  %1960 = fadd fast float %1959, %1952
  %1961 = fsub fast float %1960, %1956
  %1962 = fmul fast float %1951, 0x3FBA6F0D00000000
  %1963 = fmul fast float %1955, 0x3FD0432880000000
  %1964 = fmul fast float %1259, 0xBFEF110800000000
  %1965 = fmul fast float %1964, %1744
  %1966 = fadd fast float %1965, 1.000000e+00
  %1967 = fsub fast float %1966, %1962
  %1968 = fadd fast float %1967, %1963
  %1969 = fdiv fast float %1961, %1968
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fsub fast float %1970, %1259
  %1972 = fmul fast float %1971, %1925
  %1973 = fadd fast float %1972, %1259
  br label %1988

; <label>:1974                                    ; preds = %1940
  %1975 = icmp eq i32 %1914, 8
  br i1 %1975, label %1976, label %1988

; <label>:1976                                    ; preds = %1974
  %1977 = fmul fast float %1919, %1745
  %1978 = fmul fast float %1919, %1746
  %1979 = fadd fast float %1977, %1249
  %1980 = fadd fast float %1978, %1250
  %1981 = call float @dx.op.binary.f32(i32 36, float %1260, float %1747)  ; FMin(a,b)
  %1982 = fsub fast float %1981, %1260
  %1983 = fmul fast float %1982, %1922
  %1984 = fadd fast float %1983, %1260
  %1985 = fsub fast float %1744, %1259
  %1986 = fmul fast float %1925, %1985
  %1987 = fadd fast float %1986, %1259
  br label %1988

; <label>:1988                                    ; preds = %1976, %1974, %1942, %1927, %1905, %1443, %1262, %1248
  %1989 = phi float [ %1249, %1905 ], [ %1249, %1443 ], [ %1249, %1248 ], [ %1979, %1976 ], [ %1249, %1974 ], [ %1945, %1942 ], [ %1932, %1927 ], [ %1249, %1262 ]
  %1990 = phi float [ %1250, %1905 ], [ %1250, %1443 ], [ %1250, %1248 ], [ %1980, %1976 ], [ %1250, %1974 ], [ %1946, %1942 ], [ %1933, %1927 ], [ %1250, %1262 ]
  %1991 = phi float [ %1906, %1905 ], [ %1251, %1443 ], [ %1251, %1248 ], [ %1906, %1976 ], [ %1906, %1974 ], [ %1906, %1942 ], [ %1906, %1927 ], [ %1251, %1262 ]
  %1992 = phi float [ %1907, %1905 ], [ %1252, %1443 ], [ %1252, %1248 ], [ %1907, %1976 ], [ %1907, %1974 ], [ %1907, %1942 ], [ %1907, %1927 ], [ %1252, %1262 ]
  %1993 = phi float [ %1908, %1905 ], [ %1253, %1443 ], [ %1253, %1248 ], [ %1908, %1976 ], [ %1908, %1974 ], [ %1908, %1942 ], [ %1908, %1927 ], [ %1253, %1262 ]
  %1994 = phi float [ %1909, %1905 ], [ %1254, %1443 ], [ %1254, %1248 ], [ %1909, %1976 ], [ %1909, %1974 ], [ %1909, %1942 ], [ %1909, %1927 ], [ %1254, %1262 ]
  %1995 = phi float [ %1910, %1905 ], [ %1255, %1443 ], [ %1255, %1248 ], [ %1910, %1976 ], [ %1910, %1974 ], [ %1910, %1942 ], [ %1910, %1927 ], [ %1255, %1262 ]
  %1996 = phi float [ %1911, %1905 ], [ %1256, %1443 ], [ %1256, %1248 ], [ %1911, %1976 ], [ %1911, %1974 ], [ %1911, %1942 ], [ %1911, %1927 ], [ %1256, %1262 ]
  %1997 = phi float [ %1912, %1905 ], [ %1257, %1443 ], [ %1257, %1248 ], [ %1912, %1976 ], [ %1912, %1974 ], [ %1912, %1942 ], [ %1912, %1927 ], [ %1257, %1262 ]
  %1998 = phi float [ %1259, %1905 ], [ %1259, %1443 ], [ %1259, %1248 ], [ %1987, %1976 ], [ %1259, %1974 ], [ %1973, %1942 ], [ %1939, %1927 ], [ %1259, %1262 ]
  %1999 = phi float [ %1260, %1905 ], [ %1260, %1443 ], [ %1260, %1248 ], [ %1984, %1976 ], [ %1260, %1974 ], [ %1950, %1942 ], [ %1936, %1927 ], [ %1260, %1262 ]
  %2000 = phi float [ %1913, %1905 ], [ %1261, %1443 ], [ %1261, %1248 ], [ %1913, %1976 ], [ %1913, %1974 ], [ %1913, %1942 ], [ %1913, %1927 ], [ %1261, %1262 ]
  br i1 %649, label %2727, label %2001

; <label>:2001                                    ; preds = %1988
  %2002 = icmp ult i32 %705, 3
  %2003 = add i32 %56, 56
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %56, 60
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = or i32 %2008, %2005
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2727, label %2011

; <label>:2011                                    ; preds = %2001
  %2012 = and i32 %2005, 262144
  %2013 = icmp ne i32 %2012, 0
  %2014 = select i1 %2013, float %63, float 1.000000e+00
  %2015 = select i1 %2013, float %64, float 0.000000e+00
  %2016 = select i1 %2013, float %65, float 0.000000e+00
  %2017 = select i1 %2013, float %66, float 1.000000e+00
  %2018 = select i1 %2013, float %67, float %90
  %2019 = select i1 %2013, float %68, float %91
  %2020 = add i32 %56, 316
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = lshr i32 %2022, 16
  %2024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2023)  ; LegacyF16ToF32(value)
  %2025 = fmul fast float %2024, 0x3F50624DE0000000
  %2026 = add i32 %56, 120
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = lshr i32 %2028, 16
  %2030 = and i32 %2029, 255
  %2031 = lshr i32 %2028, 24
  %2032 = add i32 %56, 324
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 65535
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = lshr i32 %2034, 16
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = add i32 %56, 64
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 22
  %2043 = shl nuw nsw i32 %2042, 5
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = shl i32 %2041, 4
  %2046 = and i32 %2045, 32752
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = lshr i32 %2041, 7
  %2049 = and i32 %2048, 32752
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.f32 %2051, 3
  %2053 = fmul fast float %2052, 1.000000e+03
  %2054 = fmul fast float %2053, %533
  %2055 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2056 = fadd fast float %2055, %521
  %2057 = fmul fast float %2053, %535
  %2058 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2059 = fadd fast float %2058, %522
  %2060 = fmul fast float %2025, %2053
  %2061 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2062 = fmul fast float %2061, 0x401921FB60000000
  %2063 = fadd fast float %2062, %2044
  %2064 = call float @dx.op.unary.f32(i32 13, float %2063)  ; Sin(value)
  %2065 = call float @dx.op.unary.f32(i32 12, float %2063)  ; Cos(value)
  %2066 = fsub fast float -0.000000e+00, %2064
  %2067 = fadd fast float %2018, -5.000000e-01
  %2068 = fadd fast float %2019, -5.000000e-01
  %2069 = fmul fast float %2036, %2067
  %2070 = fmul fast float %2038, %2068
  %2071 = fadd fast float %2069, 5.000000e-01
  %2072 = fadd fast float %2070, 5.000000e-01
  %2073 = fmul fast float %2047, %2071
  %2074 = fmul fast float %2050, %2072
  %2075 = fmul fast float %2065, %2073
  %2076 = call float @dx.op.tertiary.f32(i32 46, float %2066, float %2074, float %2075)  ; FMad(a,b,c)
  %2077 = fmul fast float %2064, %2073
  %2078 = call float @dx.op.tertiary.f32(i32 46, float %2065, float %2074, float %2077)  ; FMad(a,b,c)
  %2079 = fadd fast float %2056, %2076
  %2080 = fadd fast float %2059, %2078
  %2081 = icmp ugt i32 %2030, 1
  %2082 = icmp ugt i32 %2028, 33554431
  %2083 = or i1 %2082, %2081
  br i1 %2083, label %2084, label %2109

; <label>:2084                                    ; preds = %2011
  %2085 = add i32 %56, 260
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 16
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = fmul fast float %2052, %2089
  %2091 = call float @dx.op.unary.f32(i32 22, float %2090)  ; Frc(value)
  %2092 = mul nuw nsw i32 %2030, %2031
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2091, %2093
  %2095 = call float @dx.op.unary.f32(i32 27, float %2094)  ; Round_ni(value)
  %2096 = fptoui float %2095 to i32
  %2097 = urem i32 %2096, %2030
  %2098 = udiv i32 %2096, %2031
  %2099 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2100 = call float @dx.op.unary.f32(i32 22, float %2080)  ; Frc(value)
  %2101 = uitofp i32 %2097 to float
  %2102 = uitofp i32 %2098 to float
  %2103 = fadd fast float %2099, %2101
  %2104 = fadd fast float %2100, %2102
  %2105 = uitofp i32 %2030 to float
  %2106 = uitofp i32 %2031 to float
  %2107 = fdiv fast float %2103, %2105
  %2108 = fdiv fast float %2104, %2106
  br label %2109

; <label>:2109                                    ; preds = %2084, %2011
  %2110 = phi float [ %2107, %2084 ], [ %2079, %2011 ]
  %2111 = phi float [ %2108, %2084 ], [ %2080, %2011 ]
  %2112 = and i32 %2005, 256
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2160, label %2114

; <label>:2114                                    ; preds = %2109
  %2115 = add i32 %56, 448
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2119, %dx.types.Handle %105, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = add i32 %56, 132
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = shl i32 %2124, 4
  %2126 = and i32 %2125, 32752
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = lshr i32 %2124, 7
  %2129 = and i32 %2128, 32752
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = fsub fast float 1.000000e+00, %701
  %2132 = call float @dx.op.binary.f32(i32 35, float %2131, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2133 = bitcast float %701 to i32
  %2134 = sitofp i32 %2133 to float
  %2135 = fadd fast float %2134, 0xC1CFBF8940000000
  %2136 = fmul fast float %2130, %2135
  %2137 = fadd fast float %2136, 0x41CFBF8940000000
  %2138 = fptosi float %2137 to i32
  %2139 = bitcast i32 %2138 to float
  %2140 = bitcast float %2132 to i32
  %2141 = sitofp i32 %2140 to float
  %2142 = fadd fast float %2141, 0xC1CFBF8940000000
  %2143 = fmul fast float %2142, %2130
  %2144 = fadd fast float %2143, 0x41CFBF8940000000
  %2145 = fptosi float %2144 to i32
  %2146 = bitcast i32 %2145 to float
  %2147 = fmul fast float %2139, %2127
  %2148 = fmul fast float %2146, %2127
  %2149 = fsub fast float %2132, %2147
  %2150 = fadd fast float %2148, %2132
  %2151 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2152 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2153 = fsub fast float %2121, %2151
  %2154 = fsub fast float %2152, %2151
  %2155 = bitcast float %2154 to i32
  %2156 = sub nsw i32 2129859010, %2155
  %2157 = bitcast i32 %2156 to float
  %2158 = fmul fast float %2157, %2153
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  br label %2160

; <label>:2160                                    ; preds = %2114, %2109
  %2161 = phi float [ %2159, %2114 ], [ %701, %2109 ]
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 128
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2182, label %2166

; <label>:2166                                    ; preds = %2160
  %2167 = add i32 %56, 432
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2171, %dx.types.Handle %105, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = and i32 %2175, 524288
  %2177 = icmp ne i32 %2176, 0
  %2178 = fcmp fast ogt float %2173, 0x3FE0101020000000
  %2179 = select i1 %2178, float 1.000000e+00, float 0.000000e+00
  %2180 = select i1 %2177, float %2179, float %2173
  %2181 = fmul fast float %2180, %2161
  br label %2182

; <label>:2182                                    ; preds = %2166, %2160
  %2183 = phi float [ %2181, %2166 ], [ %2161, %2160 ]
  %2184 = fcmp fast ult float %2183, 0x3F70101020000000
  br i1 %2184, label %2727, label %2185

; <label>:2185                                    ; preds = %2182
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 16
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2388, label %2190

; <label>:2190                                    ; preds = %2185
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %56, 384
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = add i32 %2195, 0
  %2197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2197, %dx.types.Handle %104, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.ResRet.f32 %2198, 3
  %2203 = and i32 %2192, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = lshr i32 %2192, 8
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2202, %2204
  %2209 = fadd fast float %2208, %2207
  %2210 = fmul fast float %2209, 0x3F70101000000000
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 512
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2223, label %2215

; <label>:2215                                    ; preds = %2190
  %2216 = add i32 %56, 468
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %2218, 0
  %2220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2220, %dx.types.Handle %105, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  br label %2223

; <label>:2223                                    ; preds = %2215, %2190
  %2224 = phi float [ %2222, %2215 ], [ 1.000000e+00, %2190 ]
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 33554432
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2335, label %2229

; <label>:2229                                    ; preds = %2223
  %2230 = add i32 %56, 256
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = lshr i32 %2232, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = add i32 %56, 260
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 65535
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = lshr i32 %2243, 24
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = and i32 %2243, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = lshr i32 %2243, 8
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2243, 16
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = add i32 %56, 252
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = lshr i32 %2260, 24
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = and i32 %2260, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = lshr i32 %2260, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2260, 16
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = bitcast float %2199 to i32
  %2276 = ashr i32 %2275, 1
  %2277 = sub nsw i32 1597463174, %2276
  %2278 = bitcast i32 %2277 to float
  %2279 = fmul fast float %2199, 5.000000e-01
  %2280 = fmul fast float %2278, %2278
  %2281 = fmul fast float %2280, %2279
  %2282 = fsub fast float 1.500000e+00, %2281
  %2283 = fmul fast float %2278, %2199
  %2284 = fmul fast float %2283, %2282
  %2285 = bitcast float %2200 to i32
  %2286 = ashr i32 %2285, 1
  %2287 = sub nsw i32 1597463174, %2286
  %2288 = bitcast i32 %2287 to float
  %2289 = fmul fast float %2200, 5.000000e-01
  %2290 = fmul fast float %2288, %2288
  %2291 = fmul fast float %2290, %2289
  %2292 = fsub fast float 1.500000e+00, %2291
  %2293 = fmul fast float %2288, %2200
  %2294 = fmul fast float %2293, %2292
  %2295 = bitcast float %2201 to i32
  %2296 = ashr i32 %2295, 1
  %2297 = sub nsw i32 1597463174, %2296
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2201, 5.000000e-01
  %2300 = fmul fast float %2298, %2298
  %2301 = fmul fast float %2300, %2299
  %2302 = fsub fast float 1.500000e+00, %2301
  %2303 = fmul fast float %2298, %2201
  %2304 = fmul fast float %2303, %2302
  %2305 = fsub fast float %2284, %2266
  %2306 = fsub fast float %2294, %2270
  %2307 = fsub fast float %2304, %2274
  %2308 = fmul fast float %2305, %2234
  %2309 = fmul fast float %2306, %2236
  %2310 = fmul fast float %2307, %2241
  %2311 = fadd fast float %2308, %2249
  %2312 = fadd fast float %2309, %2253
  %2313 = fadd fast float %2310, %2257
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2316 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2317 = fmul fast float %2314, %2314
  %2318 = fmul fast float %2315, %2315
  %2319 = fmul fast float %2316, %2316
  %2320 = fsub fast float %2317, %2199
  %2321 = fsub fast float %2318, %2200
  %2322 = fsub fast float %2319, %2201
  %2323 = fmul fast float %2320, %2224
  %2324 = fmul fast float %2321, %2224
  %2325 = fmul fast float %2322, %2224
  %2326 = fadd fast float %2323, %2199
  %2327 = fadd fast float %2324, %2200
  %2328 = fadd fast float %2325, %2201
  %2329 = fadd fast float %2246, %2210
  %2330 = fsub fast float %2329, %2263
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float %2331, %2210
  %2333 = fmul fast float %2332, %2224
  %2334 = fadd fast float %2333, %2210
  br label %2388

; <label>:2335                                    ; preds = %2223
  %2336 = and i32 %2226, 134217728
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2372, label %2338

; <label>:2338                                    ; preds = %2335
  %2339 = call float @dx.op.unary.f32(i32 24, float %509)  ; Sqrt(value)
  %2340 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %2341 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2342 = fadd fast float %2339, -5.000000e-01
  %2343 = fadd fast float %2340, -5.000000e-01
  %2344 = fadd fast float %2341, -5.000000e-01
  %2345 = fmul fast float %2342, %2224
  %2346 = fmul fast float %2343, %2224
  %2347 = fmul fast float %2344, %2224
  %2348 = fadd fast float %2345, 5.000000e-01
  %2349 = fadd fast float %2346, 5.000000e-01
  %2350 = fadd fast float %2347, 5.000000e-01
  %2351 = call float @dx.op.unary.f32(i32 24, float %2199)  ; Sqrt(value)
  %2352 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2353 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2354 = fmul fast float %2348, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2351
  %2357 = fadd fast float %2356, %2354
  %2358 = fmul fast float %2357, %2351
  %2359 = fmul fast float %2349, 2.000000e+00
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2360, %2352
  %2362 = fadd fast float %2361, %2359
  %2363 = fmul fast float %2362, %2352
  %2364 = fmul fast float %2350, 2.000000e+00
  %2365 = fsub fast float 1.000000e+00, %2364
  %2366 = fmul fast float %2365, %2353
  %2367 = fadd fast float %2366, %2364
  %2368 = fmul fast float %2367, %2353
  %2369 = fmul fast float %2358, %2358
  %2370 = fmul fast float %2363, %2363
  %2371 = fmul fast float %2368, %2368
  br label %2388

; <label>:2372                                    ; preds = %2335
  %2373 = fmul fast float %509, %509
  %2374 = fmul fast float %510, %510
  %2375 = fmul fast float %511, %511
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fadd fast float %2374, -1.000000e+00
  %2378 = fadd fast float %2375, -1.000000e+00
  %2379 = fmul fast float %2224, %2376
  %2380 = fmul fast float %2224, %2377
  %2381 = fmul fast float %2224, %2378
  %2382 = fadd fast float %2379, 1.000000e+00
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fmul fast float %2382, %2199
  %2386 = fmul fast float %2383, %2200
  %2387 = fmul fast float %2384, %2201
  br label %2388

; <label>:2388                                    ; preds = %2372, %2338, %2229, %2185
  %2389 = phi float [ %2334, %2229 ], [ %2210, %2338 ], [ %2210, %2372 ], [ 0x3FA23C0BE0000000, %2185 ]
  %2390 = phi float [ %2326, %2229 ], [ %2369, %2338 ], [ %2385, %2372 ], [ 1.000000e+00, %2185 ]
  %2391 = phi float [ %2327, %2229 ], [ %2370, %2338 ], [ %2386, %2372 ], [ 1.000000e+00, %2185 ]
  %2392 = phi float [ %2328, %2229 ], [ %2371, %2338 ], [ %2387, %2372 ], [ 1.000000e+00, %2185 ]
  %2393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.i32 %2393, 1
  %2395 = and i32 %2394, 1
  %2396 = icmp ne i32 %2395, 0
  %2397 = add i32 %56, 356
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 32
  %2401 = icmp ne i32 %2400, 0
  %2402 = and i1 %2396, %2401
  %2403 = select i1 %2402, float 1.000000e+00, float %2390
  %2404 = select i1 %2402, float 0x3FD3333340000000, float %2391
  %2405 = select i1 %2402, float 0x3FD3333340000000, float %2392
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 32
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2482, label %2410

; <label>:2410                                    ; preds = %2388
  %2411 = add i32 %56, 124
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %56, 400
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %2416, 0
  %2418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2418, %dx.types.Handle %104, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = extractvalue %dx.types.ResRet.f32 %2419, 3
  %2424 = and i32 %2413, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = lshr i32 %2413, 8
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = lshr i32 %2413, 16
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101000000000
  %2433 = fmul fast float %2420, %2425
  %2434 = fadd fast float %2433, %2428
  %2435 = fmul fast float %2434, 0x3F70101000000000
  %2436 = fadd fast float %2421, -5.000000e-01
  %2437 = fadd fast float %2423, -5.000000e-01
  %2438 = fmul fast float %2436, %2432
  %2439 = fmul fast float %2437, %2432
  %2440 = fadd fast float %2438, 5.000000e-01
  %2441 = fadd fast float %2439, 5.000000e-01
  %2442 = fmul fast float %2440, 2.000000e+00
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fadd fast float %2444, -1.000000e+00
  %2446 = fadd fast float %2443, %2445
  %2447 = fmul fast float %2446, 5.000000e-01
  %2448 = fsub fast float %2443, %2445
  %2449 = fmul fast float %2448, 5.000000e-01
  %2450 = call float @dx.op.unary.f32(i32 6, float %2447)  ; FAbs(value)
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2453 = fsub fast float %2451, %2452
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2449, float %2453, float %2447, float %2449, float %2453)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = call float @dx.op.unary.f32(i32 25, float %2454)  ; Rsqrt(value)
  %2456 = fmul fast float %2447, %2455
  %2457 = fmul fast float %2449, %2455
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 67108864
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2478, label %2462

; <label>:2462                                    ; preds = %2410
  %2463 = add i32 %56, 312
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 65535
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = lshr i32 %2465, 16
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = fsub fast float %2435, %2473
  %2475 = fmul fast float %2474, %2467
  %2476 = fadd fast float %2475, %2471
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  br label %2478

; <label>:2478                                    ; preds = %2462, %2410
  %2479 = phi float [ %2477, %2462 ], [ %2435, %2410 ]
  %2480 = call float @dx.op.dot2.f32(i32 54, float %2456, float %2457, float %2014, float %2015)  ; Dot2(ax,ay,bx,by)
  %2481 = call float @dx.op.dot2.f32(i32 54, float %2456, float %2457, float %2016, float %2017)  ; Dot2(ax,ay,bx,by)
  br label %2482

; <label>:2482                                    ; preds = %2478, %2388
  %2483 = phi float [ %2479, %2478 ], [ 0x3FD6666660000000, %2388 ]
  %2484 = phi float [ %2480, %2478 ], [ 0.000000e+00, %2388 ]
  %2485 = phi float [ %2481, %2478 ], [ 0.000000e+00, %2388 ]
  %2486 = phi float [ %2422, %2478 ], [ 1.000000e+00, %2388 ]
  %2487 = add i32 %56, 192
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = lshr i32 %2489, 22
  %2491 = shl nuw nsw i32 %2490, 5
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 64
  %2496 = icmp eq i32 %2495, 0
  br i1 %2496, label %2530, label %2497

; <label>:2497                                    ; preds = %2482
  %2498 = add i32 %56, 416
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = add i32 %2500, 0
  %2502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 131072
  %2506 = icmp eq i32 %2505, 0
  %2507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2502, %dx.types.Handle %104, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = fmul fast float %492, %2508
  %2512 = fmul fast float %493, %2509
  %2513 = fmul fast float %494, %2510
  br i1 %2506, label %2520, label %2514

; <label>:2514                                    ; preds = %2497
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = fmul fast float %2516, %2511
  %2518 = fmul fast float %2516, %2512
  %2519 = fmul fast float %2516, %2513
  br label %2520

; <label>:2520                                    ; preds = %2514, %2497
  %2521 = phi float [ %2517, %2514 ], [ %2511, %2497 ]
  %2522 = phi float [ %2518, %2514 ], [ %2512, %2497 ]
  %2523 = phi float [ %2519, %2514 ], [ %2513, %2497 ]
  %2524 = fmul fast float %2521, %2492
  %2525 = select i1 %267, float %2524, float %2521
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2522, float %2523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = select i1 %267, float 0.000000e+00, float %2521
  %2528 = select i1 %267, float %2526, float %2522
  %2529 = select i1 %267, float 0.000000e+00, float %2523
  br label %2530

; <label>:2530                                    ; preds = %2520, %2482
  %2531 = phi float [ %2527, %2520 ], [ 0.000000e+00, %2482 ]
  %2532 = phi float [ %2528, %2520 ], [ 0.000000e+00, %2482 ]
  %2533 = phi float [ %2529, %2520 ], [ 0.000000e+00, %2482 ]
  %2534 = add i32 %56, 128
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2536, 8
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2403, float %2404, float %2405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = fmul fast float %2541, %2542
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  br i1 %2002, label %2547, label %2555

; <label>:2547                                    ; preds = %2530
  %2548 = fsub fast float 1.000000e+00, %2183
  %2549 = fmul fast float %2548, %1991
  %2550 = fmul fast float %2548, %1992
  %2551 = fmul fast float %2548, %1993
  %2552 = fmul fast float %2548, %1994
  %2553 = fmul fast float %2548, %1995
  %2554 = fmul fast float %2548, %1996
  br label %2555

; <label>:2555                                    ; preds = %2547, %2530
  %2556 = phi float [ %2549, %2547 ], [ %1991, %2530 ]
  %2557 = phi float [ %2550, %2547 ], [ %1992, %2530 ]
  %2558 = phi float [ %2551, %2547 ], [ %1993, %2530 ]
  %2559 = phi float [ %2552, %2547 ], [ %1994, %2530 ]
  %2560 = phi float [ %2553, %2547 ], [ %1995, %2530 ]
  %2561 = phi float [ %2554, %2547 ], [ %1996, %2530 ]
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 3
  %2565 = icmp eq i32 %2564, 3
  br i1 %2565, label %2644, label %2566

; <label>:2566                                    ; preds = %2555
  %2567 = and i32 %2563, 16
  %2568 = icmp ne i32 %2567, 0
  %2569 = select i1 %2568, float %2183, float 0.000000e+00
  %2570 = icmp eq i32 %2564, 0
  br i1 %2570, label %2571, label %2599

; <label>:2571                                    ; preds = %2566
  %2572 = and i32 %2563, 64
  %2573 = icmp ne i32 %2572, 0
  %2574 = select i1 %2573, float %2183, float 0.000000e+00
  %2575 = fsub fast float %2403, %2556
  %2576 = fsub fast float %2404, %2557
  %2577 = fsub fast float %2405, %2558
  %2578 = fmul fast float %2569, %2575
  %2579 = fmul fast float %2569, %2576
  %2580 = fmul fast float %2569, %2577
  %2581 = fadd fast float %2578, %2556
  %2582 = fadd fast float %2579, %2557
  %2583 = fadd fast float %2580, %2558
  %2584 = fsub fast float %2389, %1997
  %2585 = fmul fast float %2569, %2584
  %2586 = fadd fast float %2585, %1997
  %2587 = fsub fast float %2531, %2559
  %2588 = fsub fast float %2532, %2560
  %2589 = fsub fast float %2533, %2561
  %2590 = fmul fast float %2574, %2587
  %2591 = fmul fast float %2574, %2588
  %2592 = fmul fast float %2574, %2589
  %2593 = fadd fast float %2590, %2559
  %2594 = fadd fast float %2591, %2560
  %2595 = fadd fast float %2592, %2561
  %2596 = fsub fast float %2546, %2000
  %2597 = fmul fast float %2569, %2596
  %2598 = fadd fast float %2597, %2000
  br label %2644

; <label>:2599                                    ; preds = %2566
  %2600 = icmp eq i32 %2564, 1
  br i1 %2600, label %2601, label %2614

; <label>:2601                                    ; preds = %2599
  %2602 = fadd fast float %2403, -1.000000e+00
  %2603 = fadd fast float %2404, -1.000000e+00
  %2604 = fadd fast float %2405, -1.000000e+00
  %2605 = fmul fast float %2569, %2602
  %2606 = fmul fast float %2569, %2603
  %2607 = fmul fast float %2569, %2604
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fadd fast float %2606, 1.000000e+00
  %2610 = fadd fast float %2607, 1.000000e+00
  %2611 = fmul fast float %2608, %2556
  %2612 = fmul fast float %2609, %2557
  %2613 = fmul fast float %2610, %2558
  br label %2644

; <label>:2614                                    ; preds = %2599
  %2615 = icmp eq i32 %2564, 2
  br i1 %2615, label %2616, label %2644

; <label>:2616                                    ; preds = %2614
  %2617 = call float @dx.op.unary.f32(i32 24, float %2403)  ; Sqrt(value)
  %2618 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2619 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2620 = fadd fast float %2617, -5.000000e-01
  %2621 = fadd fast float %2618, -5.000000e-01
  %2622 = fadd fast float %2619, -5.000000e-01
  %2623 = fmul fast float %2620, %2569
  %2624 = fmul fast float %2621, %2569
  %2625 = fmul fast float %2622, %2569
  %2626 = fadd fast float %2623, 5.000000e-01
  %2627 = fadd fast float %2624, 5.000000e-01
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fmul fast float %2626, 2.000000e+00
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2556
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2556
  %2634 = fmul fast float %2627, 2.000000e+00
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = fmul fast float %2635, %2557
  %2637 = fadd fast float %2636, %2634
  %2638 = fmul fast float %2637, %2557
  %2639 = fmul fast float %2628, 2.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2640, %2558
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, %2558
  br label %2644

; <label>:2644                                    ; preds = %2616, %2614, %2601, %2571, %2555
  %2645 = phi float [ %2556, %2555 ], [ %2633, %2616 ], [ %2556, %2614 ], [ %2611, %2601 ], [ %2581, %2571 ]
  %2646 = phi float [ %2557, %2555 ], [ %2638, %2616 ], [ %2557, %2614 ], [ %2612, %2601 ], [ %2582, %2571 ]
  %2647 = phi float [ %2558, %2555 ], [ %2643, %2616 ], [ %2558, %2614 ], [ %2613, %2601 ], [ %2583, %2571 ]
  %2648 = phi float [ %2559, %2555 ], [ %2559, %2616 ], [ %2559, %2614 ], [ %2559, %2601 ], [ %2593, %2571 ]
  %2649 = phi float [ %2560, %2555 ], [ %2560, %2616 ], [ %2560, %2614 ], [ %2560, %2601 ], [ %2594, %2571 ]
  %2650 = phi float [ %2561, %2555 ], [ %2561, %2616 ], [ %2561, %2614 ], [ %2561, %2601 ], [ %2595, %2571 ]
  %2651 = phi float [ %1997, %2555 ], [ %1997, %2616 ], [ %1997, %2614 ], [ %1997, %2601 ], [ %2586, %2571 ]
  %2652 = phi float [ %2000, %2555 ], [ %2000, %2616 ], [ %2000, %2614 ], [ %2000, %2601 ], [ %2598, %2571 ]
  %2653 = and i32 %2563, 12
  %2654 = icmp eq i32 %2653, 12
  br i1 %2654, label %2727, label %2655

; <label>:2655                                    ; preds = %2644
  %2656 = and i32 %2563, 2097184
  %2657 = icmp eq i32 %2656, 2097184
  %2658 = select i1 %2657, float %2183, float 0.000000e+00
  %2659 = and i32 %2563, 4194336
  %2660 = icmp eq i32 %2659, 4194336
  %2661 = select i1 %2660, float %2183, float 0.000000e+00
  %2662 = and i32 %2563, 8388640
  %2663 = icmp eq i32 %2662, 8388640
  %2664 = select i1 %2663, float %2183, float 0.000000e+00
  %2665 = icmp eq i32 %2653, 0
  br i1 %2665, label %2666, label %2679

; <label>:2666                                    ; preds = %2655
  %2667 = fsub fast float %2484, %1989
  %2668 = fsub fast float %2485, %1990
  %2669 = fmul fast float %2658, %2667
  %2670 = fmul fast float %2658, %2668
  %2671 = fadd fast float %2669, %1989
  %2672 = fadd fast float %2670, %1990
  %2673 = fsub fast float %2486, %1999
  %2674 = fmul fast float %2661, %2673
  %2675 = fadd fast float %2674, %1999
  %2676 = fsub fast float %2483, %1998
  %2677 = fmul fast float %2664, %2676
  %2678 = fadd fast float %2677, %1998
  br label %2727

; <label>:2679                                    ; preds = %2655
  %2680 = icmp eq i32 %2653, 4
  br i1 %2680, label %2681, label %2713

; <label>:2681                                    ; preds = %2679
  %2682 = fmul fast float %2658, %2484
  %2683 = fmul fast float %2658, %2485
  %2684 = fadd fast float %2682, %1989
  %2685 = fadd fast float %2683, %1990
  %2686 = call float @dx.op.binary.f32(i32 36, float %1999, float %2486)  ; FMin(a,b)
  %2687 = fsub fast float %2686, %1999
  %2688 = fmul fast float %2687, %2661
  %2689 = fadd fast float %2688, %1999
  %2690 = fadd fast float %2483, %1998
  %2691 = fmul fast float %2690, 0x3FF337FAE0000000
  %2692 = fmul fast float %1998, %1998
  %2693 = fmul fast float %2483, %2483
  %2694 = fadd fast float %2693, %2692
  %2695 = fmul fast float %2694, 0x3FE5152B00000000
  %2696 = fmul fast float %1998, 0xBFCC1F85E0000000
  %2697 = fmul fast float %2696, %2483
  %2698 = fadd fast float %2697, 0xBFE1363700000000
  %2699 = fadd fast float %2698, %2691
  %2700 = fsub fast float %2699, %2695
  %2701 = fmul fast float %2690, 0x3FBA6F0D00000000
  %2702 = fmul fast float %2694, 0x3FD0432880000000
  %2703 = fmul fast float %1998, 0xBFEF110800000000
  %2704 = fmul fast float %2703, %2483
  %2705 = fadd fast float %2704, 1.000000e+00
  %2706 = fsub fast float %2705, %2701
  %2707 = fadd fast float %2706, %2702
  %2708 = fdiv fast float %2700, %2707
  %2709 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2710 = fsub fast float %2709, %1998
  %2711 = fmul fast float %2710, %2664
  %2712 = fadd fast float %2711, %1998
  br label %2727

; <label>:2713                                    ; preds = %2679
  %2714 = icmp eq i32 %2653, 8
  br i1 %2714, label %2715, label %2727

; <label>:2715                                    ; preds = %2713
  %2716 = fmul fast float %2658, %2484
  %2717 = fmul fast float %2658, %2485
  %2718 = fadd fast float %2716, %1989
  %2719 = fadd fast float %2717, %1990
  %2720 = call float @dx.op.binary.f32(i32 36, float %1999, float %2486)  ; FMin(a,b)
  %2721 = fsub fast float %2720, %1999
  %2722 = fmul fast float %2721, %2661
  %2723 = fadd fast float %2722, %1999
  %2724 = fsub fast float %2483, %1998
  %2725 = fmul fast float %2664, %2724
  %2726 = fadd fast float %2725, %1998
  br label %2727

; <label>:2727                                    ; preds = %2715, %2713, %2681, %2666, %2644, %2182, %2001, %1988
  %2728 = phi float [ %1989, %2644 ], [ %1989, %2182 ], [ %1989, %1988 ], [ %2718, %2715 ], [ %1989, %2713 ], [ %2684, %2681 ], [ %2671, %2666 ], [ %1989, %2001 ]
  %2729 = phi float [ %1990, %2644 ], [ %1990, %2182 ], [ %1990, %1988 ], [ %2719, %2715 ], [ %1990, %2713 ], [ %2685, %2681 ], [ %2672, %2666 ], [ %1990, %2001 ]
  %2730 = phi float [ %2645, %2644 ], [ %1991, %2182 ], [ %1991, %1988 ], [ %2645, %2715 ], [ %2645, %2713 ], [ %2645, %2681 ], [ %2645, %2666 ], [ %1991, %2001 ]
  %2731 = phi float [ %2646, %2644 ], [ %1992, %2182 ], [ %1992, %1988 ], [ %2646, %2715 ], [ %2646, %2713 ], [ %2646, %2681 ], [ %2646, %2666 ], [ %1992, %2001 ]
  %2732 = phi float [ %2647, %2644 ], [ %1993, %2182 ], [ %1993, %1988 ], [ %2647, %2715 ], [ %2647, %2713 ], [ %2647, %2681 ], [ %2647, %2666 ], [ %1993, %2001 ]
  %2733 = phi float [ %2648, %2644 ], [ %1994, %2182 ], [ %1994, %1988 ], [ %2648, %2715 ], [ %2648, %2713 ], [ %2648, %2681 ], [ %2648, %2666 ], [ %1994, %2001 ]
  %2734 = phi float [ %2649, %2644 ], [ %1995, %2182 ], [ %1995, %1988 ], [ %2649, %2715 ], [ %2649, %2713 ], [ %2649, %2681 ], [ %2649, %2666 ], [ %1995, %2001 ]
  %2735 = phi float [ %2650, %2644 ], [ %1996, %2182 ], [ %1996, %1988 ], [ %2650, %2715 ], [ %2650, %2713 ], [ %2650, %2681 ], [ %2650, %2666 ], [ %1996, %2001 ]
  %2736 = phi float [ %2651, %2644 ], [ %1997, %2182 ], [ %1997, %1988 ], [ %2651, %2715 ], [ %2651, %2713 ], [ %2651, %2681 ], [ %2651, %2666 ], [ %1997, %2001 ]
  %2737 = phi float [ %1998, %2644 ], [ %1998, %2182 ], [ %1998, %1988 ], [ %2726, %2715 ], [ %1998, %2713 ], [ %2712, %2681 ], [ %2678, %2666 ], [ %1998, %2001 ]
  %2738 = phi float [ %1999, %2644 ], [ %1999, %2182 ], [ %1999, %1988 ], [ %2723, %2715 ], [ %1999, %2713 ], [ %2689, %2681 ], [ %2675, %2666 ], [ %1999, %2001 ]
  %2739 = phi float [ %2652, %2644 ], [ %2000, %2182 ], [ %2000, %1988 ], [ %2652, %2715 ], [ %2652, %2713 ], [ %2652, %2681 ], [ %2652, %2666 ], [ %2000, %2001 ]
  br i1 %651, label %3466, label %2740

; <label>:2740                                    ; preds = %2727
  %2741 = icmp ult i32 %705, 4
  %2742 = add i32 %56, 72
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = add i32 %56, 76
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = or i32 %2747, %2744
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %3466, label %2750

; <label>:2750                                    ; preds = %2740
  %2751 = and i32 %2744, 262144
  %2752 = icmp ne i32 %2751, 0
  %2753 = select i1 %2752, float %63, float 1.000000e+00
  %2754 = select i1 %2752, float %64, float 0.000000e+00
  %2755 = select i1 %2752, float %65, float 0.000000e+00
  %2756 = select i1 %2752, float %66, float 1.000000e+00
  %2757 = select i1 %2752, float %67, float %90
  %2758 = select i1 %2752, float %68, float %91
  %2759 = add i32 %56, 332
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = lshr i32 %2761, 16
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = fmul fast float %2763, 0x3F50624DE0000000
  %2765 = add i32 %56, 136
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = lshr i32 %2767, 16
  %2769 = and i32 %2768, 255
  %2770 = lshr i32 %2767, 24
  %2771 = add i32 %56, 340
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 65535
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = lshr i32 %2773, 16
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = add i32 %56, 80
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = lshr i32 %2780, 22
  %2782 = shl nuw nsw i32 %2781, 5
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = shl i32 %2780, 4
  %2785 = and i32 %2784, 32752
  %2786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2785)  ; LegacyF16ToF32(value)
  %2787 = lshr i32 %2780, 7
  %2788 = and i32 %2787, 32752
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 3
  %2792 = fmul fast float %2791, 1.000000e+03
  %2793 = fmul fast float %2792, %640
  %2794 = call float @dx.op.unary.f32(i32 22, float %2793)  ; Frc(value)
  %2795 = fadd fast float %2794, %628
  %2796 = fmul fast float %2792, %642
  %2797 = call float @dx.op.unary.f32(i32 22, float %2796)  ; Frc(value)
  %2798 = fadd fast float %2797, %629
  %2799 = fmul fast float %2764, %2792
  %2800 = call float @dx.op.unary.f32(i32 22, float %2799)  ; Frc(value)
  %2801 = fmul fast float %2800, 0x401921FB60000000
  %2802 = fadd fast float %2801, %2783
  %2803 = call float @dx.op.unary.f32(i32 13, float %2802)  ; Sin(value)
  %2804 = call float @dx.op.unary.f32(i32 12, float %2802)  ; Cos(value)
  %2805 = fsub fast float -0.000000e+00, %2803
  %2806 = fadd fast float %2757, -5.000000e-01
  %2807 = fadd fast float %2758, -5.000000e-01
  %2808 = fmul fast float %2775, %2806
  %2809 = fmul fast float %2777, %2807
  %2810 = fadd fast float %2808, 5.000000e-01
  %2811 = fadd fast float %2809, 5.000000e-01
  %2812 = fmul fast float %2786, %2810
  %2813 = fmul fast float %2789, %2811
  %2814 = fmul fast float %2804, %2812
  %2815 = call float @dx.op.tertiary.f32(i32 46, float %2805, float %2813, float %2814)  ; FMad(a,b,c)
  %2816 = fmul fast float %2803, %2812
  %2817 = call float @dx.op.tertiary.f32(i32 46, float %2804, float %2813, float %2816)  ; FMad(a,b,c)
  %2818 = fadd fast float %2795, %2815
  %2819 = fadd fast float %2798, %2817
  %2820 = icmp ugt i32 %2769, 1
  %2821 = icmp ugt i32 %2767, 33554431
  %2822 = or i1 %2821, %2820
  br i1 %2822, label %2823, label %2848

; <label>:2823                                    ; preds = %2750
  %2824 = add i32 %56, 276
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 16
  %2828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2827)  ; LegacyF16ToF32(value)
  %2829 = fmul fast float %2791, %2828
  %2830 = call float @dx.op.unary.f32(i32 22, float %2829)  ; Frc(value)
  %2831 = mul nuw nsw i32 %2769, %2770
  %2832 = uitofp i32 %2831 to float
  %2833 = fmul fast float %2830, %2832
  %2834 = call float @dx.op.unary.f32(i32 27, float %2833)  ; Round_ni(value)
  %2835 = fptoui float %2834 to i32
  %2836 = urem i32 %2835, %2769
  %2837 = udiv i32 %2835, %2770
  %2838 = call float @dx.op.unary.f32(i32 22, float %2818)  ; Frc(value)
  %2839 = call float @dx.op.unary.f32(i32 22, float %2819)  ; Frc(value)
  %2840 = uitofp i32 %2836 to float
  %2841 = uitofp i32 %2837 to float
  %2842 = fadd fast float %2838, %2840
  %2843 = fadd fast float %2839, %2841
  %2844 = uitofp i32 %2769 to float
  %2845 = uitofp i32 %2770 to float
  %2846 = fdiv fast float %2842, %2844
  %2847 = fdiv fast float %2843, %2845
  br label %2848

; <label>:2848                                    ; preds = %2823, %2750
  %2849 = phi float [ %2846, %2823 ], [ %2818, %2750 ]
  %2850 = phi float [ %2847, %2823 ], [ %2819, %2750 ]
  %2851 = and i32 %2744, 256
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2899, label %2853

; <label>:2853                                    ; preds = %2848
  %2854 = add i32 %56, 452
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = add i32 %2856, 0
  %2858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2858, %dx.types.Handle %105, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = add i32 %56, 148
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = shl i32 %2863, 4
  %2865 = and i32 %2864, 32752
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = lshr i32 %2863, 7
  %2868 = and i32 %2867, 32752
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = fsub fast float 1.000000e+00, %700
  %2871 = call float @dx.op.binary.f32(i32 35, float %2870, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2872 = bitcast float %700 to i32
  %2873 = sitofp i32 %2872 to float
  %2874 = fadd fast float %2873, 0xC1CFBF8940000000
  %2875 = fmul fast float %2869, %2874
  %2876 = fadd fast float %2875, 0x41CFBF8940000000
  %2877 = fptosi float %2876 to i32
  %2878 = bitcast i32 %2877 to float
  %2879 = bitcast float %2871 to i32
  %2880 = sitofp i32 %2879 to float
  %2881 = fadd fast float %2880, 0xC1CFBF8940000000
  %2882 = fmul fast float %2881, %2869
  %2883 = fadd fast float %2882, 0x41CFBF8940000000
  %2884 = fptosi float %2883 to i32
  %2885 = bitcast i32 %2884 to float
  %2886 = fmul fast float %2878, %2866
  %2887 = fmul fast float %2885, %2866
  %2888 = fsub fast float %2871, %2886
  %2889 = fadd fast float %2887, %2871
  %2890 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2891 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  %2892 = fsub fast float %2860, %2890
  %2893 = fsub fast float %2891, %2890
  %2894 = bitcast float %2893 to i32
  %2895 = sub nsw i32 2129859010, %2894
  %2896 = bitcast i32 %2895 to float
  %2897 = fmul fast float %2896, %2892
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  br label %2899

; <label>:2899                                    ; preds = %2853, %2848
  %2900 = phi float [ %2898, %2853 ], [ %700, %2848 ]
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 128
  %2904 = icmp eq i32 %2903, 0
  br i1 %2904, label %2921, label %2905

; <label>:2905                                    ; preds = %2899
  %2906 = add i32 %56, 436
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = add i32 %2908, 0
  %2910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2910, %dx.types.Handle %105, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 524288
  %2916 = icmp ne i32 %2915, 0
  %2917 = fcmp fast ogt float %2912, 0x3FE0101020000000
  %2918 = select i1 %2917, float 1.000000e+00, float 0.000000e+00
  %2919 = select i1 %2916, float %2918, float %2912
  %2920 = fmul fast float %2919, %2900
  br label %2921

; <label>:2921                                    ; preds = %2905, %2899
  %2922 = phi float [ %2920, %2905 ], [ %2900, %2899 ]
  %2923 = fcmp fast ult float %2922, 0x3F70101020000000
  br i1 %2923, label %3466, label %2924

; <label>:2924                                    ; preds = %2921
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 16
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %3127, label %2929

; <label>:2929                                    ; preds = %2924
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %56, 388
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %2934, 0
  %2936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2936, %dx.types.Handle %104, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = extractvalue %dx.types.ResRet.f32 %2937, 3
  %2942 = and i32 %2931, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = lshr i32 %2931, 8
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2941, %2943
  %2948 = fadd fast float %2947, %2946
  %2949 = fmul fast float %2948, 0x3F70101000000000
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 512
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %2962, label %2954

; <label>:2954                                    ; preds = %2929
  %2955 = add i32 %56, 472
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %105, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  br label %2962

; <label>:2962                                    ; preds = %2954, %2929
  %2963 = phi float [ %2961, %2954 ], [ 1.000000e+00, %2929 ]
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 33554432
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3074, label %2968

; <label>:2968                                    ; preds = %2962
  %2969 = add i32 %56, 272
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = lshr i32 %2971, 16
  %2975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2974)  ; LegacyF16ToF32(value)
  %2976 = add i32 %56, 276
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = and i32 %2978, 65535
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = lshr i32 %2982, 24
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = and i32 %2982, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2982, 8
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2982, 16
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = add i32 %56, 268
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 24
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = and i32 %2999, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = lshr i32 %2999, 8
  %3007 = and i32 %3006, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = lshr i32 %2999, 16
  %3011 = and i32 %3010, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = bitcast float %2938 to i32
  %3015 = ashr i32 %3014, 1
  %3016 = sub nsw i32 1597463174, %3015
  %3017 = bitcast i32 %3016 to float
  %3018 = fmul fast float %2938, 5.000000e-01
  %3019 = fmul fast float %3017, %3017
  %3020 = fmul fast float %3019, %3018
  %3021 = fsub fast float 1.500000e+00, %3020
  %3022 = fmul fast float %3017, %2938
  %3023 = fmul fast float %3022, %3021
  %3024 = bitcast float %2939 to i32
  %3025 = ashr i32 %3024, 1
  %3026 = sub nsw i32 1597463174, %3025
  %3027 = bitcast i32 %3026 to float
  %3028 = fmul fast float %2939, 5.000000e-01
  %3029 = fmul fast float %3027, %3027
  %3030 = fmul fast float %3029, %3028
  %3031 = fsub fast float 1.500000e+00, %3030
  %3032 = fmul fast float %3027, %2939
  %3033 = fmul fast float %3032, %3031
  %3034 = bitcast float %2940 to i32
  %3035 = ashr i32 %3034, 1
  %3036 = sub nsw i32 1597463174, %3035
  %3037 = bitcast i32 %3036 to float
  %3038 = fmul fast float %2940, 5.000000e-01
  %3039 = fmul fast float %3037, %3037
  %3040 = fmul fast float %3039, %3038
  %3041 = fsub fast float 1.500000e+00, %3040
  %3042 = fmul fast float %3037, %2940
  %3043 = fmul fast float %3042, %3041
  %3044 = fsub fast float %3023, %3005
  %3045 = fsub fast float %3033, %3009
  %3046 = fsub fast float %3043, %3013
  %3047 = fmul fast float %3044, %2973
  %3048 = fmul fast float %3045, %2975
  %3049 = fmul fast float %3046, %2980
  %3050 = fadd fast float %3047, %2988
  %3051 = fadd fast float %3048, %2992
  %3052 = fadd fast float %3049, %2996
  %3053 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3054 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3055 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3056 = fmul fast float %3053, %3053
  %3057 = fmul fast float %3054, %3054
  %3058 = fmul fast float %3055, %3055
  %3059 = fsub fast float %3056, %2938
  %3060 = fsub fast float %3057, %2939
  %3061 = fsub fast float %3058, %2940
  %3062 = fmul fast float %3059, %2963
  %3063 = fmul fast float %3060, %2963
  %3064 = fmul fast float %3061, %2963
  %3065 = fadd fast float %3062, %2938
  %3066 = fadd fast float %3063, %2939
  %3067 = fadd fast float %3064, %2940
  %3068 = fadd fast float %2985, %2949
  %3069 = fsub fast float %3068, %3002
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  %3071 = fsub fast float %3070, %2949
  %3072 = fmul fast float %3071, %2963
  %3073 = fadd fast float %3072, %2949
  br label %3127

; <label>:3074                                    ; preds = %2962
  %3075 = and i32 %2965, 134217728
  %3076 = icmp eq i32 %3075, 0
  br i1 %3076, label %3111, label %3077

; <label>:3077                                    ; preds = %3074
  %3078 = call float @dx.op.unary.f32(i32 24, float %616)  ; Sqrt(value)
  %3079 = call float @dx.op.unary.f32(i32 24, float %617)  ; Sqrt(value)
  %3080 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3081 = fadd fast float %3078, -5.000000e-01
  %3082 = fadd fast float %3079, -5.000000e-01
  %3083 = fadd fast float %3080, -5.000000e-01
  %3084 = fmul fast float %3081, %2963
  %3085 = fmul fast float %3082, %2963
  %3086 = fmul fast float %3083, %2963
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = fadd fast float %3085, 5.000000e-01
  %3089 = fadd fast float %3086, 5.000000e-01
  %3090 = call float @dx.op.unary.f32(i32 24, float %2938)  ; Sqrt(value)
  %3091 = call float @dx.op.unary.f32(i32 24, float %2939)  ; Sqrt(value)
  %3092 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %3093 = fmul fast float %3087, 2.000000e+00
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3094, %3090
  %3096 = fadd fast float %3095, %3093
  %3097 = fmul fast float %3096, %3090
  %3098 = fmul fast float %3088, 2.000000e+00
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %3099, %3091
  %3101 = fadd fast float %3100, %3098
  %3102 = fmul fast float %3101, %3091
  %3103 = fmul fast float %3089, 2.000000e+00
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = fmul fast float %3104, %3092
  %3106 = fadd fast float %3105, %3103
  %3107 = fmul fast float %3106, %3092
  %3108 = fmul fast float %3097, %3097
  %3109 = fmul fast float %3102, %3102
  %3110 = fmul fast float %3107, %3107
  br label %3127

; <label>:3111                                    ; preds = %3074
  %3112 = fmul fast float %616, %616
  %3113 = fmul fast float %617, %617
  %3114 = fmul fast float %618, %618
  %3115 = fadd fast float %3112, -1.000000e+00
  %3116 = fadd fast float %3113, -1.000000e+00
  %3117 = fadd fast float %3114, -1.000000e+00
  %3118 = fmul fast float %2963, %3115
  %3119 = fmul fast float %2963, %3116
  %3120 = fmul fast float %2963, %3117
  %3121 = fadd fast float %3118, 1.000000e+00
  %3122 = fadd fast float %3119, 1.000000e+00
  %3123 = fadd fast float %3120, 1.000000e+00
  %3124 = fmul fast float %3121, %2938
  %3125 = fmul fast float %3122, %2939
  %3126 = fmul fast float %3123, %2940
  br label %3127

; <label>:3127                                    ; preds = %3111, %3077, %2968, %2924
  %3128 = phi float [ %3073, %2968 ], [ %2949, %3077 ], [ %2949, %3111 ], [ 0x3FA23C0BE0000000, %2924 ]
  %3129 = phi float [ %3065, %2968 ], [ %3108, %3077 ], [ %3124, %3111 ], [ 1.000000e+00, %2924 ]
  %3130 = phi float [ %3066, %2968 ], [ %3109, %3077 ], [ %3125, %3111 ], [ 1.000000e+00, %2924 ]
  %3131 = phi float [ %3067, %2968 ], [ %3110, %3077 ], [ %3126, %3111 ], [ 1.000000e+00, %2924 ]
  %3132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.i32 %3132, 1
  %3134 = and i32 %3133, 1
  %3135 = icmp ne i32 %3134, 0
  %3136 = add i32 %56, 356
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 32
  %3140 = icmp ne i32 %3139, 0
  %3141 = and i1 %3135, %3140
  %3142 = select i1 %3141, float 1.000000e+00, float %3129
  %3143 = select i1 %3141, float 0x3FD3333340000000, float %3130
  %3144 = select i1 %3141, float 0x3FD3333340000000, float %3131
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 32
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3221, label %3149

; <label>:3149                                    ; preds = %3127
  %3150 = add i32 %56, 140
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %56, 404
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %104, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 1
  %3161 = extractvalue %dx.types.ResRet.f32 %3158, 2
  %3162 = extractvalue %dx.types.ResRet.f32 %3158, 3
  %3163 = and i32 %3152, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = lshr i32 %3152, 8
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = lshr i32 %3152, 16
  %3169 = and i32 %3168, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101000000000
  %3172 = fmul fast float %3159, %3164
  %3173 = fadd fast float %3172, %3167
  %3174 = fmul fast float %3173, 0x3F70101000000000
  %3175 = fadd fast float %3160, -5.000000e-01
  %3176 = fadd fast float %3162, -5.000000e-01
  %3177 = fmul fast float %3175, %3171
  %3178 = fmul fast float %3176, %3171
  %3179 = fadd fast float %3177, 5.000000e-01
  %3180 = fadd fast float %3178, 5.000000e-01
  %3181 = fmul fast float %3179, 2.000000e+00
  %3182 = fadd fast float %3181, -1.000000e+00
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fadd fast float %3183, -1.000000e+00
  %3185 = fadd fast float %3182, %3184
  %3186 = fmul fast float %3185, 5.000000e-01
  %3187 = fsub fast float %3182, %3184
  %3188 = fmul fast float %3187, 5.000000e-01
  %3189 = call float @dx.op.unary.f32(i32 6, float %3186)  ; FAbs(value)
  %3190 = fsub fast float 1.000000e+00, %3189
  %3191 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3192 = fsub fast float %3190, %3191
  %3193 = call float @dx.op.dot3.f32(i32 55, float %3186, float %3188, float %3192, float %3186, float %3188, float %3192)  ; Dot3(ax,ay,az,bx,by,bz)
  %3194 = call float @dx.op.unary.f32(i32 25, float %3193)  ; Rsqrt(value)
  %3195 = fmul fast float %3186, %3194
  %3196 = fmul fast float %3188, %3194
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 67108864
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3217, label %3201

; <label>:3201                                    ; preds = %3149
  %3202 = add i32 %56, 328
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 65535
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = lshr i32 %3204, 16
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = fsub fast float %3174, %3212
  %3214 = fmul fast float %3213, %3206
  %3215 = fadd fast float %3214, %3210
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  br label %3217

; <label>:3217                                    ; preds = %3201, %3149
  %3218 = phi float [ %3216, %3201 ], [ %3174, %3149 ]
  %3219 = call float @dx.op.dot2.f32(i32 54, float %3195, float %3196, float %2753, float %2754)  ; Dot2(ax,ay,bx,by)
  %3220 = call float @dx.op.dot2.f32(i32 54, float %3195, float %3196, float %2755, float %2756)  ; Dot2(ax,ay,bx,by)
  br label %3221

; <label>:3221                                    ; preds = %3217, %3127
  %3222 = phi float [ %3218, %3217 ], [ 0x3FD6666660000000, %3127 ]
  %3223 = phi float [ %3219, %3217 ], [ 0.000000e+00, %3127 ]
  %3224 = phi float [ %3220, %3217 ], [ 0.000000e+00, %3127 ]
  %3225 = phi float [ %3161, %3217 ], [ 1.000000e+00, %3127 ]
  %3226 = add i32 %56, 208
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = lshr i32 %3228, 22
  %3230 = shl nuw nsw i32 %3229, 5
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = and i32 %3233, 64
  %3235 = icmp eq i32 %3234, 0
  br i1 %3235, label %3269, label %3236

; <label>:3236                                    ; preds = %3221
  %3237 = add i32 %56, 420
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = add i32 %3239, 0
  %3241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 131072
  %3245 = icmp eq i32 %3244, 0
  %3246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3241, %dx.types.Handle %104, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.ResRet.f32 %3246, 1
  %3249 = extractvalue %dx.types.ResRet.f32 %3246, 2
  %3250 = fmul fast float %599, %3247
  %3251 = fmul fast float %600, %3248
  %3252 = fmul fast float %601, %3249
  br i1 %3245, label %3259, label %3253

; <label>:3253                                    ; preds = %3236
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = fmul fast float %3255, %3250
  %3257 = fmul fast float %3255, %3251
  %3258 = fmul fast float %3255, %3252
  br label %3259

; <label>:3259                                    ; preds = %3253, %3236
  %3260 = phi float [ %3256, %3253 ], [ %3250, %3236 ]
  %3261 = phi float [ %3257, %3253 ], [ %3251, %3236 ]
  %3262 = phi float [ %3258, %3253 ], [ %3252, %3236 ]
  %3263 = fmul fast float %3260, %3231
  %3264 = select i1 %267, float %3263, float %3260
  %3265 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3261, float %3262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3266 = select i1 %267, float 0.000000e+00, float %3260
  %3267 = select i1 %267, float %3265, float %3261
  %3268 = select i1 %267, float 0.000000e+00, float %3262
  br label %3269

; <label>:3269                                    ; preds = %3259, %3221
  %3270 = phi float [ %3266, %3259 ], [ 0.000000e+00, %3221 ]
  %3271 = phi float [ %3267, %3259 ], [ 0.000000e+00, %3221 ]
  %3272 = phi float [ %3268, %3259 ], [ 0.000000e+00, %3221 ]
  %3273 = add i32 %56, 144
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = lshr i32 %3275, 8
  %3279 = and i32 %3278, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3143, float %3144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = fmul fast float %3280, %3281
  %3283 = fadd fast float %3282, %3277
  %3284 = fmul fast float %3283, 0x3F70101020000000
  %3285 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  br i1 %2741, label %3286, label %3294

; <label>:3286                                    ; preds = %3269
  %3287 = fsub fast float 1.000000e+00, %2922
  %3288 = fmul fast float %3287, %2730
  %3289 = fmul fast float %3287, %2731
  %3290 = fmul fast float %3287, %2732
  %3291 = fmul fast float %3287, %2733
  %3292 = fmul fast float %3287, %2734
  %3293 = fmul fast float %3287, %2735
  br label %3294

; <label>:3294                                    ; preds = %3286, %3269
  %3295 = phi float [ %3288, %3286 ], [ %2730, %3269 ]
  %3296 = phi float [ %3289, %3286 ], [ %2731, %3269 ]
  %3297 = phi float [ %3290, %3286 ], [ %2732, %3269 ]
  %3298 = phi float [ %3291, %3286 ], [ %2733, %3269 ]
  %3299 = phi float [ %3292, %3286 ], [ %2734, %3269 ]
  %3300 = phi float [ %3293, %3286 ], [ %2735, %3269 ]
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 3
  %3304 = icmp eq i32 %3303, 3
  br i1 %3304, label %3383, label %3305

; <label>:3305                                    ; preds = %3294
  %3306 = and i32 %3302, 16
  %3307 = icmp ne i32 %3306, 0
  %3308 = select i1 %3307, float %2922, float 0.000000e+00
  %3309 = icmp eq i32 %3303, 0
  br i1 %3309, label %3310, label %3338

; <label>:3310                                    ; preds = %3305
  %3311 = and i32 %3302, 64
  %3312 = icmp ne i32 %3311, 0
  %3313 = select i1 %3312, float %2922, float 0.000000e+00
  %3314 = fsub fast float %3142, %3295
  %3315 = fsub fast float %3143, %3296
  %3316 = fsub fast float %3144, %3297
  %3317 = fmul fast float %3308, %3314
  %3318 = fmul fast float %3308, %3315
  %3319 = fmul fast float %3308, %3316
  %3320 = fadd fast float %3317, %3295
  %3321 = fadd fast float %3318, %3296
  %3322 = fadd fast float %3319, %3297
  %3323 = fsub fast float %3128, %2736
  %3324 = fmul fast float %3308, %3323
  %3325 = fadd fast float %3324, %2736
  %3326 = fsub fast float %3270, %3298
  %3327 = fsub fast float %3271, %3299
  %3328 = fsub fast float %3272, %3300
  %3329 = fmul fast float %3313, %3326
  %3330 = fmul fast float %3313, %3327
  %3331 = fmul fast float %3313, %3328
  %3332 = fadd fast float %3329, %3298
  %3333 = fadd fast float %3330, %3299
  %3334 = fadd fast float %3331, %3300
  %3335 = fsub fast float %3285, %2739
  %3336 = fmul fast float %3308, %3335
  %3337 = fadd fast float %3336, %2739
  br label %3383

; <label>:3338                                    ; preds = %3305
  %3339 = icmp eq i32 %3303, 1
  br i1 %3339, label %3340, label %3353

; <label>:3340                                    ; preds = %3338
  %3341 = fadd fast float %3142, -1.000000e+00
  %3342 = fadd fast float %3143, -1.000000e+00
  %3343 = fadd fast float %3144, -1.000000e+00
  %3344 = fmul fast float %3308, %3341
  %3345 = fmul fast float %3308, %3342
  %3346 = fmul fast float %3308, %3343
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fmul fast float %3347, %3295
  %3351 = fmul fast float %3348, %3296
  %3352 = fmul fast float %3349, %3297
  br label %3383

; <label>:3353                                    ; preds = %3338
  %3354 = icmp eq i32 %3303, 2
  br i1 %3354, label %3355, label %3383

; <label>:3355                                    ; preds = %3353
  %3356 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3357 = call float @dx.op.unary.f32(i32 24, float %3143)  ; Sqrt(value)
  %3358 = call float @dx.op.unary.f32(i32 24, float %3144)  ; Sqrt(value)
  %3359 = fadd fast float %3356, -5.000000e-01
  %3360 = fadd fast float %3357, -5.000000e-01
  %3361 = fadd fast float %3358, -5.000000e-01
  %3362 = fmul fast float %3359, %3308
  %3363 = fmul fast float %3360, %3308
  %3364 = fmul fast float %3361, %3308
  %3365 = fadd fast float %3362, 5.000000e-01
  %3366 = fadd fast float %3363, 5.000000e-01
  %3367 = fadd fast float %3364, 5.000000e-01
  %3368 = fmul fast float %3365, 2.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3295
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3295
  %3373 = fmul fast float %3366, 2.000000e+00
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = fmul fast float %3374, %3296
  %3376 = fadd fast float %3375, %3373
  %3377 = fmul fast float %3376, %3296
  %3378 = fmul fast float %3367, 2.000000e+00
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = fmul fast float %3379, %3297
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3297
  br label %3383

; <label>:3383                                    ; preds = %3355, %3353, %3340, %3310, %3294
  %3384 = phi float [ %3295, %3294 ], [ %3372, %3355 ], [ %3295, %3353 ], [ %3350, %3340 ], [ %3320, %3310 ]
  %3385 = phi float [ %3296, %3294 ], [ %3377, %3355 ], [ %3296, %3353 ], [ %3351, %3340 ], [ %3321, %3310 ]
  %3386 = phi float [ %3297, %3294 ], [ %3382, %3355 ], [ %3297, %3353 ], [ %3352, %3340 ], [ %3322, %3310 ]
  %3387 = phi float [ %3298, %3294 ], [ %3298, %3355 ], [ %3298, %3353 ], [ %3298, %3340 ], [ %3332, %3310 ]
  %3388 = phi float [ %3299, %3294 ], [ %3299, %3355 ], [ %3299, %3353 ], [ %3299, %3340 ], [ %3333, %3310 ]
  %3389 = phi float [ %3300, %3294 ], [ %3300, %3355 ], [ %3300, %3353 ], [ %3300, %3340 ], [ %3334, %3310 ]
  %3390 = phi float [ %2736, %3294 ], [ %2736, %3355 ], [ %2736, %3353 ], [ %2736, %3340 ], [ %3325, %3310 ]
  %3391 = phi float [ %2739, %3294 ], [ %2739, %3355 ], [ %2739, %3353 ], [ %2739, %3340 ], [ %3337, %3310 ]
  %3392 = and i32 %3302, 12
  %3393 = icmp eq i32 %3392, 12
  br i1 %3393, label %3466, label %3394

; <label>:3394                                    ; preds = %3383
  %3395 = and i32 %3302, 2097184
  %3396 = icmp eq i32 %3395, 2097184
  %3397 = select i1 %3396, float %2922, float 0.000000e+00
  %3398 = and i32 %3302, 4194336
  %3399 = icmp eq i32 %3398, 4194336
  %3400 = select i1 %3399, float %2922, float 0.000000e+00
  %3401 = and i32 %3302, 8388640
  %3402 = icmp eq i32 %3401, 8388640
  %3403 = select i1 %3402, float %2922, float 0.000000e+00
  %3404 = icmp eq i32 %3392, 0
  br i1 %3404, label %3405, label %3418

; <label>:3405                                    ; preds = %3394
  %3406 = fsub fast float %3223, %2728
  %3407 = fsub fast float %3224, %2729
  %3408 = fmul fast float %3397, %3406
  %3409 = fmul fast float %3397, %3407
  %3410 = fadd fast float %3408, %2728
  %3411 = fadd fast float %3409, %2729
  %3412 = fsub fast float %3225, %2738
  %3413 = fmul fast float %3400, %3412
  %3414 = fadd fast float %3413, %2738
  %3415 = fsub fast float %3222, %2737
  %3416 = fmul fast float %3403, %3415
  %3417 = fadd fast float %3416, %2737
  br label %3466

; <label>:3418                                    ; preds = %3394
  %3419 = icmp eq i32 %3392, 4
  br i1 %3419, label %3420, label %3452

; <label>:3420                                    ; preds = %3418
  %3421 = fmul fast float %3397, %3223
  %3422 = fmul fast float %3397, %3224
  %3423 = fadd fast float %3421, %2728
  %3424 = fadd fast float %3422, %2729
  %3425 = call float @dx.op.binary.f32(i32 36, float %2738, float %3225)  ; FMin(a,b)
  %3426 = fsub fast float %3425, %2738
  %3427 = fmul fast float %3426, %3400
  %3428 = fadd fast float %3427, %2738
  %3429 = fadd fast float %3222, %2737
  %3430 = fmul fast float %3429, 0x3FF337FAE0000000
  %3431 = fmul fast float %2737, %2737
  %3432 = fmul fast float %3222, %3222
  %3433 = fadd fast float %3432, %3431
  %3434 = fmul fast float %3433, 0x3FE5152B00000000
  %3435 = fmul fast float %2737, 0xBFCC1F85E0000000
  %3436 = fmul fast float %3435, %3222
  %3437 = fadd fast float %3436, 0xBFE1363700000000
  %3438 = fadd fast float %3437, %3430
  %3439 = fsub fast float %3438, %3434
  %3440 = fmul fast float %3429, 0x3FBA6F0D00000000
  %3441 = fmul fast float %3433, 0x3FD0432880000000
  %3442 = fmul fast float %2737, 0xBFEF110800000000
  %3443 = fmul fast float %3442, %3222
  %3444 = fadd fast float %3443, 1.000000e+00
  %3445 = fsub fast float %3444, %3440
  %3446 = fadd fast float %3445, %3441
  %3447 = fdiv fast float %3439, %3446
  %3448 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3449 = fsub fast float %3448, %2737
  %3450 = fmul fast float %3449, %3403
  %3451 = fadd fast float %3450, %2737
  br label %3466

; <label>:3452                                    ; preds = %3418
  %3453 = icmp eq i32 %3392, 8
  br i1 %3453, label %3454, label %3466

; <label>:3454                                    ; preds = %3452
  %3455 = fmul fast float %3397, %3223
  %3456 = fmul fast float %3397, %3224
  %3457 = fadd fast float %3455, %2728
  %3458 = fadd fast float %3456, %2729
  %3459 = call float @dx.op.binary.f32(i32 36, float %2738, float %3225)  ; FMin(a,b)
  %3460 = fsub fast float %3459, %2738
  %3461 = fmul fast float %3460, %3400
  %3462 = fadd fast float %3461, %2738
  %3463 = fsub fast float %3222, %2737
  %3464 = fmul fast float %3403, %3463
  %3465 = fadd fast float %3464, %2737
  br label %3466

; <label>:3466                                    ; preds = %3454, %3452, %3420, %3405, %3383, %2921, %2740, %2727
  %3467 = phi float [ %2728, %3383 ], [ %2728, %2921 ], [ %2728, %2727 ], [ %2728, %2740 ], [ %3410, %3405 ], [ %3423, %3420 ], [ %2728, %3452 ], [ %3457, %3454 ]
  %3468 = phi float [ %2729, %3383 ], [ %2729, %2921 ], [ %2729, %2727 ], [ %2729, %2740 ], [ %3411, %3405 ], [ %3424, %3420 ], [ %2729, %3452 ], [ %3458, %3454 ]
  %3469 = phi float [ %3384, %3383 ], [ %2730, %2921 ], [ %2730, %2727 ], [ %2730, %2740 ], [ %3384, %3405 ], [ %3384, %3420 ], [ %3384, %3452 ], [ %3384, %3454 ]
  %3470 = phi float [ %3385, %3383 ], [ %2731, %2921 ], [ %2731, %2727 ], [ %2731, %2740 ], [ %3385, %3405 ], [ %3385, %3420 ], [ %3385, %3452 ], [ %3385, %3454 ]
  %3471 = phi float [ %3386, %3383 ], [ %2732, %2921 ], [ %2732, %2727 ], [ %2732, %2740 ], [ %3386, %3405 ], [ %3386, %3420 ], [ %3386, %3452 ], [ %3386, %3454 ]
  %3472 = phi float [ %3387, %3383 ], [ %2733, %2921 ], [ %2733, %2727 ], [ %2733, %2740 ], [ %3387, %3405 ], [ %3387, %3420 ], [ %3387, %3452 ], [ %3387, %3454 ]
  %3473 = phi float [ %3388, %3383 ], [ %2734, %2921 ], [ %2734, %2727 ], [ %2734, %2740 ], [ %3388, %3405 ], [ %3388, %3420 ], [ %3388, %3452 ], [ %3388, %3454 ]
  %3474 = phi float [ %3389, %3383 ], [ %2735, %2921 ], [ %2735, %2727 ], [ %2735, %2740 ], [ %3389, %3405 ], [ %3389, %3420 ], [ %3389, %3452 ], [ %3389, %3454 ]
  %3475 = phi float [ %3390, %3383 ], [ %2736, %2921 ], [ %2736, %2727 ], [ %2736, %2740 ], [ %3390, %3405 ], [ %3390, %3420 ], [ %3390, %3452 ], [ %3390, %3454 ]
  %3476 = phi float [ %2737, %3383 ], [ %2737, %2921 ], [ %2737, %2727 ], [ %2737, %2740 ], [ %3417, %3405 ], [ %3451, %3420 ], [ %2737, %3452 ], [ %3465, %3454 ]
  %3477 = phi float [ %2738, %3383 ], [ %2738, %2921 ], [ %2738, %2727 ], [ %2738, %2740 ], [ %3414, %3405 ], [ %3428, %3420 ], [ %2738, %3452 ], [ %3462, %3454 ]
  %3478 = phi float [ %3391, %3383 ], [ %2739, %2921 ], [ %2739, %2727 ], [ %2739, %2740 ], [ %3391, %3405 ], [ %3391, %3420 ], [ %3391, %3452 ], [ %3391, %3454 ]
  %3479 = add i32 %56, 360
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.i32 %3480, 1
  %3483 = bitcast i32 %3481 to float
  %3484 = bitcast i32 %3482 to float
  %3485 = fcmp fast oge float %3483, 0.000000e+00
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = select i1 %3485, float %3483, float %3487
  %3489 = fadd fast float %3488, %209
  %3490 = fmul fast float %3484, %210
  %3491 = add i32 %56, 456
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = add i32 %3493, 0
  %3495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3495, %dx.types.Handle %105, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = fmul fast float %3490, %3497
  %3499 = fadd fast float %3489, %3498
  %3500 = and i32 %201, 65535
  %3501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3500)  ; LegacyF16ToF32(value)
  %3502 = lshr i32 %201, 16
  %3503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3502)  ; LegacyF16ToF32(value)
  %3504 = and i32 %202, 65535
  %3505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3504)  ; LegacyF16ToF32(value)
  %3506 = fmul fast float %3501, %3469
  %3507 = fmul fast float %3503, %3470
  %3508 = fmul fast float %3505, %3471
  %3509 = shl i32 %203, 4
  %3510 = and i32 %3509, 32752
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = lshr i32 %203, 7
  %3513 = and i32 %3512, 32752
  %3514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3513)  ; LegacyF16ToF32(value)
  %3515 = lshr i32 %203, 22
  %3516 = shl nuw nsw i32 %3515, 5
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = and i32 %204, 65535
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = fmul fast float %3511, %3472
  %3521 = fmul fast float %3520, %3519
  %3522 = fmul fast float %3514, %3473
  %3523 = fmul fast float %3522, %3519
  %3524 = fmul fast float %3517, %3474
  %3525 = fmul fast float %3524, %3519
  %3526 = call float @dx.op.dot2.f32(i32 54, float %3467, float %3468, float %3467, float %3468)  ; Dot2(ax,ay,bx,by)
  %3527 = fmul fast float %3526, 0x3FE3333340000000
  %3528 = fsub fast float 1.000000e+00, %3527
  %3529 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3528, float %3467, float %3468, float %3528)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = call float @dx.op.unary.f32(i32 25, float %3529)  ; Rsqrt(value)
  %3531 = fmul fast float %3530, %3467
  %3532 = fmul fast float %3530, %3468
  %3533 = fmul fast float %3528, %3530
  %3534 = fmul fast float %3533, %115
  %3535 = fmul fast float %3533, %116
  %3536 = fmul fast float %3533, %117
  %3537 = fmul fast float %3531, %83
  %3538 = fmul fast float %3531, %84
  %3539 = fmul fast float %3531, %85
  %3540 = fadd fast float %3534, %3537
  %3541 = fadd fast float %3535, %3538
  %3542 = fadd fast float %3536, %3539
  %3543 = fmul fast float %127, %3532
  %3544 = fmul fast float %128, %3532
  %3545 = fmul fast float %129, %3532
  %3546 = fadd fast float %3540, %3543
  %3547 = fadd fast float %3541, %3544
  %3548 = fadd fast float %3542, %3545
  %3549 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3546, float %3547, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %3550 = call float @dx.op.unary.f32(i32 25, float %3549)  ; Rsqrt(value)
  %3551 = fmul fast float %3546, %3550
  %3552 = fmul fast float %3547, %3550
  %3553 = fmul fast float %3548, %3550
  %3554 = icmp eq i32 %59, 65535
  br i1 %3554, label %4073, label %3555

; <label>:3555                                    ; preds = %3466
  %3556 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3557 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3558 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3559 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3560 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3561 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3562 = fadd fast float %3556, %60
  %3563 = fadd fast float %3557, %61
  %3564 = fadd fast float %3558, %62
  %3565 = fadd fast float %3559, %60
  %3566 = fadd fast float %3560, %61
  %3567 = fadd fast float %3561, %62
  %3568 = mul i32 %59, 48
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = add i32 %3568, 16
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = add i32 %3568, 32
  %3579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3579, 3
  %3584 = bitcast float %3583 to i32
  %3585 = fmul fast float %3570, %60
  %3586 = fmul fast float %3571, %61
  %3587 = fmul fast float %3572, %62
  %3588 = fsub fast float %3585, %3575
  %3589 = fsub fast float %3586, %3576
  %3590 = fsub fast float %3587, %3577
  %3591 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3592 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3593 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3594 = fmul fast float %3591, %3580
  %3595 = fmul fast float %3592, %3581
  %3596 = fmul fast float %3593, %3582
  %3597 = fadd fast float %3580, -1.000000e+00
  %3598 = fadd fast float %3581, -1.000000e+00
  %3599 = fadd fast float %3582, -1.000000e+00
  %3600 = call float @dx.op.unary.f32(i32 27, float %3594)  ; Round_ni(value)
  %3601 = call float @dx.op.unary.f32(i32 27, float %3595)  ; Round_ni(value)
  %3602 = call float @dx.op.unary.f32(i32 27, float %3596)  ; Round_ni(value)
  %3603 = call float @dx.op.binary.f32(i32 36, float %3600, float %3597)  ; FMin(a,b)
  %3604 = call float @dx.op.binary.f32(i32 36, float %3601, float %3598)  ; FMin(a,b)
  %3605 = call float @dx.op.binary.f32(i32 36, float %3602, float %3599)  ; FMin(a,b)
  %3606 = fmul fast float %3605, %3581
  %3607 = fadd fast float %3606, %3604
  %3608 = fmul fast float %3607, %3580
  %3609 = fadd fast float %3608, %3603
  %3610 = fptosi float %3609 to i32
  %3611 = add nsw i32 %3610, %3584
  %3612 = shl nsw i32 %3611, 2
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = lshr i32 %3614, 16
  %3616 = icmp eq i32 %3615, 0
  br i1 %3616, label %4041, label %3617

; <label>:3617                                    ; preds = %3555
  br label %3618

; <label>:3618                                    ; preds = %3740, %3617
  %3619 = phi i32 [ %3642, %3740 ], [ %3615, %3617 ]
  %3620 = phi float [ %3741, %3740 ], [ 0.000000e+00, %3617 ]
  %3621 = phi float [ %3742, %3740 ], [ %1258, %3617 ]
  %3622 = phi float [ %3743, %3740 ], [ %3499, %3617 ]
  %3623 = phi float [ %3744, %3740 ], [ %3478, %3617 ]
  %3624 = phi float [ %3745, %3740 ], [ 0.000000e+00, %3617 ]
  %3625 = phi float [ %3746, %3740 ], [ 0.000000e+00, %3617 ]
  %3626 = phi float [ %3747, %3740 ], [ %3521, %3617 ]
  %3627 = phi float [ %3748, %3740 ], [ %3523, %3617 ]
  %3628 = phi float [ %3749, %3740 ], [ %3525, %3617 ]
  %3629 = phi float [ %3750, %3740 ], [ %3551, %3617 ]
  %3630 = phi float [ %3751, %3740 ], [ %3552, %3617 ]
  %3631 = phi float [ %3752, %3740 ], [ %3553, %3617 ]
  %3632 = phi float [ %3753, %3740 ], [ %3477, %3617 ]
  %3633 = phi float [ %3754, %3740 ], [ %3476, %3617 ]
  %3634 = phi float [ %3755, %3740 ], [ 0.000000e+00, %3617 ]
  %3635 = phi float [ %3756, %3740 ], [ %3475, %3617 ]
  %3636 = phi float [ %3757, %3740 ], [ %3506, %3617 ]
  %3637 = phi float [ %3758, %3740 ], [ %3507, %3617 ]
  %3638 = phi float [ %3759, %3740 ], [ %3508, %3617 ]
  %3639 = shl nuw nsw i32 %3619, 2
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = lshr i32 %3641, 16
  %3643 = shl i32 %3641, 8
  %3644 = and i32 %3643, 16776960
  %3645 = or i32 %3644, 48
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.ResRet.f32 %3646, 2
  %3650 = or i32 %3644, 64
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.i32 %3651, 1
  %3654 = or i32 %3644, 80
  %3655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 3
  %3658 = or i32 %3644, 96
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = or i32 %3644, 112
  %3665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 2
  %3667 = or i32 %3644, 128
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3673 = or i32 %3644, 144
  %3674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3678 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3679 = or i32 %3644, 160
  %3680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3685 = or i32 %3644, 192
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = or i32 %3644, 208
  %3689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = or i32 %3644, 248
  %3692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = extractvalue %dx.types.ResRet.f32 %3692, 1
  %3695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.ResRet.f32 %3695, 1
  %3698 = extractvalue %dx.types.ResRet.f32 %3695, 2
  %3699 = extractvalue %dx.types.ResRet.f32 %3695, 3
  %3700 = call float @dx.op.dot4.f32(i32 56, float %3696, float %3697, float %3698, float %3699, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3701 = or i32 %3644, 16
  %3702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3702, 2
  %3706 = extractvalue %dx.types.ResRet.f32 %3702, 3
  %3707 = call float @dx.op.dot4.f32(i32 56, float %3703, float %3704, float %3705, float %3706, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3708 = or i32 %3644, 32
  %3709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = extractvalue %dx.types.ResRet.f32 %3709, 3
  %3714 = call float @dx.op.dot4.f32(i32 56, float %3710, float %3711, float %3712, float %3713, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3715 = call float @dx.op.unary.f32(i32 27, float %3700)  ; Round_ni(value)
  %3716 = call float @dx.op.unary.f32(i32 6, float %3715)  ; FAbs(value)
  %3717 = call float @dx.op.unary.f32(i32 27, float %3707)  ; Round_ni(value)
  %3718 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3719 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3720 = call float @dx.op.unary.f32(i32 27, float %3719)  ; Round_ni(value)
  %3721 = fadd fast float %3718, %3716
  %3722 = fadd fast float %3721, %3720
  %3723 = fcmp fast oeq float %3722, 0.000000e+00
  %3724 = call float @dx.op.dot4.f32(i32 56, float %3696, float %3697, float %3698, float %3699, float %3562, float %3563, float %3564, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3725 = call float @dx.op.dot4.f32(i32 56, float %3703, float %3704, float %3705, float %3706, float %3562, float %3563, float %3564, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3726 = call float @dx.op.dot4.f32(i32 56, float %3696, float %3697, float %3698, float %3699, float %3565, float %3566, float %3567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3727 = call float @dx.op.dot4.f32(i32 56, float %3703, float %3704, float %3705, float %3706, float %3565, float %3566, float %3567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3728 = fsub fast float %3724, %3700
  %3729 = fsub fast float %3726, %3700
  %3730 = fsub fast float %3725, %3707
  %3731 = fsub fast float %3727, %3707
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3735 = fadd fast float %3734, %3732
  %3736 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3738 = fcmp fast ogt float %3736, %3737
  %3739 = and i1 %3723, %3738
  br i1 %3739, label %3761, label %3740

; <label>:3740                                    ; preds = %4027, %3844, %3761, %3618
  %3741 = phi float [ %3620, %3761 ], [ %3847, %3844 ], [ %3847, %4027 ], [ %3620, %3618 ]
  %3742 = phi float [ %3621, %3761 ], [ %3621, %3844 ], [ %4002, %4027 ], [ %3621, %3618 ]
  %3743 = phi float [ %3622, %3761 ], [ %3622, %3844 ], [ %4001, %4027 ], [ %3622, %3618 ]
  %3744 = phi float [ %3623, %3761 ], [ %3623, %3844 ], [ %3999, %4027 ], [ %3623, %3618 ]
  %3745 = phi float [ %3624, %3761 ], [ %3624, %3844 ], [ %3971, %4027 ], [ %3624, %3618 ]
  %3746 = phi float [ %3625, %3761 ], [ %3625, %3844 ], [ %3969, %4027 ], [ %3625, %3618 ]
  %3747 = phi float [ %3626, %3761 ], [ %3626, %3844 ], [ %4037, %4027 ], [ %3626, %3618 ]
  %3748 = phi float [ %3627, %3761 ], [ %3627, %3844 ], [ %4038, %4027 ], [ %3627, %3618 ]
  %3749 = phi float [ %3628, %3761 ], [ %3628, %3844 ], [ %4039, %4027 ], [ %3628, %3618 ]
  %3750 = phi float [ %3629, %3761 ], [ %3629, %3844 ], [ %3950, %4027 ], [ %3629, %3618 ]
  %3751 = phi float [ %3630, %3761 ], [ %3630, %3844 ], [ %3951, %4027 ], [ %3630, %3618 ]
  %3752 = phi float [ %3631, %3761 ], [ %3631, %3844 ], [ %3952, %4027 ], [ %3631, %3618 ]
  %3753 = phi float [ %3632, %3761 ], [ %3632, %3844 ], [ %3979, %4027 ], [ %3632, %3618 ]
  %3754 = phi float [ %3633, %3761 ], [ %3633, %3844 ], [ %3976, %4027 ], [ %3633, %3618 ]
  %3755 = phi float [ %3634, %3761 ], [ %3634, %3844 ], [ %3973, %4027 ], [ %3634, %3618 ]
  %3756 = phi float [ %3635, %3761 ], [ %3635, %3844 ], [ %3967, %4027 ], [ %3635, %3618 ]
  %3757 = phi float [ %3636, %3761 ], [ %3636, %3844 ], [ %3962, %4027 ], [ %3636, %3618 ]
  %3758 = phi float [ %3637, %3761 ], [ %3637, %3844 ], [ %3963, %4027 ], [ %3637, %3618 ]
  %3759 = phi float [ %3638, %3761 ], [ %3638, %3844 ], [ %3964, %4027 ], [ %3638, %3618 ]
  %3760 = icmp eq i32 %3642, 0
  br i1 %3760, label %4040, label %3618

; <label>:3761                                    ; preds = %3618
  %3762 = extractvalue %dx.types.ResRet.f32 %3646, 3
  %3763 = extractvalue %dx.types.ResRet.f32 %3665, 3
  %3764 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3768 = extractvalue %dx.types.ResRet.i32 %3651, 3
  %3769 = extractvalue %dx.types.ResRet.i32 %3651, 2
  %3770 = bitcast float %3762 to i32
  %3771 = add i32 %3768, 0
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3771, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3772, %dx.types.Handle %3773, float %3700, float %3707, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = fmul fast float %3775, %3767
  %3777 = fadd fast float %3776, %3766
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = fmul fast float %3700, %3660
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3661, float %3707, float %3779)  ; FMad(a,b,c)
  %3781 = fadd fast float %3780, %3765
  %3782 = fmul fast float %3700, %3662
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3663, float %3707, float %3782)  ; FMad(a,b,c)
  %3784 = fadd fast float %3783, %3764
  %3785 = fmul fast float %3728, %3660
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3661, float %3730, float %3785)  ; FMad(a,b,c)
  %3787 = fmul fast float %3728, %3662
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3663, float %3730, float %3787)  ; FMad(a,b,c)
  %3789 = fmul fast float %3729, %3660
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3661, float %3731, float %3789)  ; FMad(a,b,c)
  %3791 = fmul fast float %3729, %3662
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3663, float %3731, float %3791)  ; FMad(a,b,c)
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
  %3805 = fmul fast float %3700, 2.000000e+00
  %3806 = fadd fast float %3805, -1.000000e+00
  %3807 = call float @dx.op.unary.f32(i32 6, float %3806)  ; FAbs(value)
  %3808 = fmul fast float %3807, %3693
  %3809 = fsub fast float %3808, %3693
  %3810 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3811 = fmul fast float %3707, 2.000000e+00
  %3812 = fadd fast float %3811, -1.000000e+00
  %3813 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3814 = fmul fast float %3813, %3694
  %3815 = fsub fast float %3814, %3694
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fmul fast float %3719, %3656
  %3818 = fsub fast float %3817, %3656
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
  %3829 = fsub fast float %3736, %3828
  %3830 = fmul fast float %3829, %3827
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = fmul fast float %3825, %3657
  %3833 = fadd fast float %3825, %3657
  %3834 = fmul fast float %3833, %3666
  %3835 = fsub fast float %3834, %3666
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = and i32 %3770, 128
  %3838 = icmp ne i32 %3837, 0
  %3839 = select i1 %3838, float %3836, float %3832
  %3840 = fmul fast float %3839, %3831
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = fcmp fast ugt float %3840, %3842
  br i1 %3843, label %3844, label %3740

; <label>:3844                                    ; preds = %3761
  %3845 = select i1 %3803, float %3840, float 0.000000e+00
  %3846 = fadd fast float %3845, %3620
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  br i1 %3803, label %3740, label %3848

; <label>:3848                                    ; preds = %3844
  %3849 = and i32 %3770, 4
  %3850 = and i32 %3770, 8
  %3851 = add i32 %3652, 0
  %3852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3851, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3852, %dx.types.Handle %3853, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = bitcast float %3678 to i32
  %3860 = and i32 %3859, 255
  %3861 = uitofp i32 %3860 to float
  %3862 = lshr i32 %3859, 8
  %3863 = and i32 %3862, 255
  %3864 = uitofp i32 %3863 to float
  %3865 = fmul fast float %3858, %3861
  %3866 = fadd fast float %3865, %3864
  %3867 = fmul fast float %3866, 0x3F70101000000000
  %3868 = add i32 %3653, 0
  %3869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3868, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3870 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3869, %dx.types.Handle %3853, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = bitcast float %3672 to i32
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
  %3894 = fmul fast float %3855, %3681
  %3895 = fmul fast float %3856, %3682
  %3896 = fmul fast float %3857, %3683
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
  %3914 = fmul fast float %3913, %3647
  %3915 = fmul fast float %3913, %3648
  %3916 = fmul fast float %3913, %3649
  %3917 = fmul fast float %3911, %3669
  %3918 = fmul fast float %3911, %3670
  %3919 = fmul fast float %3911, %3671
  %3920 = fadd fast float %3917, %3914
  %3921 = fadd fast float %3918, %3915
  %3922 = fadd fast float %3919, %3916
  %3923 = fmul fast float %3912, %3675
  %3924 = fmul fast float %3912, %3676
  %3925 = fmul fast float %3912, %3677
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
  %3940 = fsub fast float %3931, %3629
  %3941 = fsub fast float %3932, %3630
  %3942 = fsub fast float %3933, %3631
  br label %3943

; <label>:3943                                    ; preds = %3939, %3848
  %3944 = phi float [ %3940, %3939 ], [ %3931, %3848 ]
  %3945 = phi float [ %3941, %3939 ], [ %3932, %3848 ]
  %3946 = phi float [ %3942, %3939 ], [ %3933, %3848 ]
  %3947 = fmul float %3946, %3936
  %3948 = fmul float %3945, %3936
  %3949 = fmul float %3944, %3936
  %3950 = fadd fast float %3949, %3629
  %3951 = fadd fast float %3948, %3630
  %3952 = fadd fast float %3947, %3631
  %3953 = icmp ne i32 %3849, 0
  %3954 = select i1 %3953, float 1.000000e+00, float 0.000000e+00
  %3955 = fmul fast float %3840, %3954
  %3956 = fsub fast float %3894, %3636
  %3957 = fsub fast float %3895, %3637
  %3958 = fsub fast float %3896, %3638
  %3959 = fmul fast float %3956, %3955
  %3960 = fmul fast float %3957, %3955
  %3961 = fmul fast float %3958, %3955
  %3962 = fadd fast float %3959, %3636
  %3963 = fadd fast float %3960, %3637
  %3964 = fadd fast float %3961, %3638
  %3965 = fsub fast float %3867, %3635
  %3966 = fmul fast float %3965, %3955
  %3967 = fadd fast float %3966, %3635
  %3968 = fmul fast float %3955, %3625
  %3969 = fsub fast float %3625, %3968
  %3970 = fmul fast float %3955, %3624
  %3971 = fsub fast float %3624, %3970
  %3972 = fadd fast float %3840, %3634
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fsub fast float %3887, %3633
  %3975 = fmul fast float %3974, %3936
  %3976 = fadd fast float %3975, %3633
  %3977 = fsub fast float %3873, %3632
  %3978 = fmul fast float %3977, %3936
  %3979 = fadd fast float %3978, %3632
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3984 = fmul fast float %3983, %3980
  %3985 = fadd fast float %3984, %3982
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = bitcast float %3684 to i32
  %3988 = and i32 %3987, 65535
  %3989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3988)  ; LegacyF16ToF32(value)
  %3990 = lshr i32 %3987, 16
  %3991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3990)  ; LegacyF16ToF32(value)
  %3992 = fcmp fast oge float %3989, 0.000000e+00
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = select i1 %3992, float %3989, float %3994
  %3996 = fadd fast float %3995, %3991
  %3997 = fsub fast float %3986, %3623
  %3998 = fmul fast float %3997, %3840
  %3999 = fadd fast float %3998, %3623
  %4000 = fmul fast float %3996, %3840
  %4001 = call float @dx.op.binary.f32(i32 35, float %3622, float %4000)  ; FMax(a,b)
  %4002 = call float @dx.op.binary.f32(i32 35, float %3621, float %3840)  ; FMax(a,b)
  %4003 = and i32 %3770, 16
  %4004 = icmp eq i32 %4003, 0
  br i1 %4004, label %4027, label %4005

; <label>:4005                                    ; preds = %3943
  %4006 = bitcast float %3690 to i32
  %4007 = add i32 %3687, 0
  %4008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4007, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4008, %dx.types.Handle %3853, float %3781, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3786, float %3788, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = and i32 %4006, 65535
  %4014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4013)  ; LegacyF16ToF32(value)
  %4015 = fmul fast float %4010, %3681
  %4016 = fmul fast float %4011, %3682
  %4017 = fmul fast float %4012, %3683
  %4018 = and i32 %3770, 16384
  %4019 = icmp ne i32 %4018, 0
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = select i1 %4019, float %4021, float 1.000000e+00
  %4023 = fmul fast float %4022, %4014
  %4024 = fmul fast float %4015, %4023
  %4025 = fmul fast float %4016, %4023
  %4026 = fmul fast float %4017, %4023
  br label %4027

; <label>:4027                                    ; preds = %4005, %3943
  %4028 = phi float [ %4024, %4005 ], [ 0.000000e+00, %3943 ]
  %4029 = phi float [ %4025, %4005 ], [ 0.000000e+00, %3943 ]
  %4030 = phi float [ %4026, %4005 ], [ 0.000000e+00, %3943 ]
  %4031 = fsub fast float %4028, %3626
  %4032 = fsub fast float %4029, %3627
  %4033 = fsub fast float %4030, %3628
  %4034 = fmul fast float %4031, %3840
  %4035 = fmul fast float %4032, %3840
  %4036 = fmul fast float %4033, %3840
  %4037 = fadd fast float %4034, %3626
  %4038 = fadd fast float %4035, %3627
  %4039 = fadd fast float %4036, %3628
  br label %3740

; <label>:4040                                    ; preds = %3740
  br label %4041

; <label>:4041                                    ; preds = %4040, %3555
  %4042 = phi float [ 0.000000e+00, %3555 ], [ %3741, %4040 ]
  %4043 = phi float [ %1258, %3555 ], [ %3742, %4040 ]
  %4044 = phi float [ %3499, %3555 ], [ %3743, %4040 ]
  %4045 = phi float [ %3478, %3555 ], [ %3744, %4040 ]
  %4046 = phi float [ 0.000000e+00, %3555 ], [ %3745, %4040 ]
  %4047 = phi float [ 0.000000e+00, %3555 ], [ %3746, %4040 ]
  %4048 = phi float [ %3521, %3555 ], [ %3747, %4040 ]
  %4049 = phi float [ %3523, %3555 ], [ %3748, %4040 ]
  %4050 = phi float [ %3525, %3555 ], [ %3749, %4040 ]
  %4051 = phi float [ %3551, %3555 ], [ %3750, %4040 ]
  %4052 = phi float [ %3552, %3555 ], [ %3751, %4040 ]
  %4053 = phi float [ %3553, %3555 ], [ %3752, %4040 ]
  %4054 = phi float [ %3477, %3555 ], [ %3753, %4040 ]
  %4055 = phi float [ %3476, %3555 ], [ %3754, %4040 ]
  %4056 = phi float [ 0.000000e+00, %3555 ], [ %3755, %4040 ]
  %4057 = phi float [ %3475, %3555 ], [ %3756, %4040 ]
  %4058 = phi float [ %3506, %3555 ], [ %3757, %4040 ]
  %4059 = phi float [ %3507, %3555 ], [ %3758, %4040 ]
  %4060 = phi float [ %3508, %3555 ], [ %3759, %4040 ]
  %4061 = call float @dx.op.dot3.f32(i32 55, float %4051, float %4052, float %4053, float %4051, float %4052, float %4053)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = call float @dx.op.unary.f32(i32 25, float %4061)  ; Rsqrt(value)
  %4063 = fmul fast float %4062, %4051
  %4064 = fmul fast float %4062, %4052
  %4065 = fmul fast float %4062, %4053
  %4066 = fadd fast float %4056, %1258
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = call float @dx.op.dot3.f32(i32 55, float %4063, float %4064, float %4065, float %4063, float %4064, float %4065)  ; Dot3(ax,ay,az,bx,by,bz)
  %4069 = call float @dx.op.unary.f32(i32 25, float %4068)  ; Rsqrt(value)
  %4070 = fmul fast float %4069, %4063
  %4071 = fmul fast float %4069, %4064
  %4072 = fmul fast float %4069, %4065
  br label %4073

; <label>:4073                                    ; preds = %4041, %3466
  %4074 = phi float [ %4058, %4041 ], [ %3506, %3466 ]
  %4075 = phi float [ %4059, %4041 ], [ %3507, %3466 ]
  %4076 = phi float [ %4060, %4041 ], [ %3508, %3466 ]
  %4077 = phi float [ %4048, %4041 ], [ %3521, %3466 ]
  %4078 = phi float [ %4049, %4041 ], [ %3523, %3466 ]
  %4079 = phi float [ %4050, %4041 ], [ %3525, %3466 ]
  %4080 = phi float [ %4070, %4041 ], [ %3551, %3466 ]
  %4081 = phi float [ %4071, %4041 ], [ %3552, %3466 ]
  %4082 = phi float [ %4072, %4041 ], [ %3553, %3466 ]
  %4083 = phi float [ %4057, %4041 ], [ %3475, %3466 ]
  %4084 = phi float [ %4067, %4041 ], [ %1258, %3466 ]
  %4085 = phi float [ %4055, %4041 ], [ %3476, %3466 ]
  %4086 = phi float [ %4054, %4041 ], [ %3477, %3466 ]
  %4087 = phi float [ %4047, %4041 ], [ 0.000000e+00, %3466 ]
  %4088 = phi float [ %4046, %4041 ], [ 0.000000e+00, %3466 ]
  %4089 = phi float [ %4042, %4041 ], [ 0.000000e+00, %3466 ]
  %4090 = phi float [ %4044, %4041 ], [ %3499, %3466 ]
  %4091 = phi float [ %4043, %4041 ], [ %1258, %3466 ]
  %4092 = phi float [ %4045, %4041 ], [ %3478, %3466 ]
  %4093 = fadd fast float %4083, 0xBFB99999A0000000
  %4094 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4095 = fmul fast float %4094, 0x3FF1C71C80000000
  %4096 = call float @dx.op.binary.f32(i32 36, float %4083, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4097 = fsub fast float 1.000000e+00, %4095
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = fmul fast float %4098, %4074
  %4100 = fmul fast float %4098, %4075
  %4101 = fmul fast float %4098, %4076
  %4102 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4103 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = fmul fast float %4095, %4074
  %4106 = fmul fast float %4095, %4075
  %4107 = fmul fast float %4095, %4076
  %4108 = fadd fast float %4105, %4096
  %4109 = fadd fast float %4106, %4096
  %4110 = fadd fast float %4107, %4096
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.i32 %4115, 3
  %4117 = and i32 %4116, 8
  %4118 = icmp ne i32 %4117, 0
  %4119 = call float @dx.op.binary.f32(i32 35, float %4102, float %4074)  ; FMax(a,b)
  %4120 = call float @dx.op.binary.f32(i32 35, float %4103, float %4074)  ; FMax(a,b)
  %4121 = call float @dx.op.binary.f32(i32 35, float %4104, float %4074)  ; FMax(a,b)
  %4122 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = select i1 %267, float %4074, float %4102
  %4124 = select i1 %267, float %4122, float %4103
  %4125 = select i1 %267, float 1.000000e+00, float %4104
  %4126 = select i1 %4118, float %4119, float %4123
  %4127 = select i1 %4118, float %4120, float %4124
  %4128 = select i1 %4118, float %4121, float %4125
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4133 = fadd fast float %4130, %195
  %4134 = fadd fast float %4131, %196
  %4135 = fadd fast float %4132, %197
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4139 = fsub fast float %4133, %4137
  %4140 = fsub fast float %4134, %4138
  %4141 = fmul fast float %4139, %4139
  %4142 = fmul fast float %4140, %4140
  %4143 = fadd fast float %4141, %4142
  %4144 = call float @dx.op.unary.f32(i32 24, float %4143)  ; Sqrt(value)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4136, 2
  %4146 = fcmp fast olt float %4144, %4145
  br i1 %4146, label %4147, label %4214

; <label>:4147                                    ; preds = %4073
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4155 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4156 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4158 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4159 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4160 = fadd fast float %4157, %4133
  %4161 = fadd fast float %4158, %4134
  %4162 = fadd fast float %4159, %4135
  %4163 = fmul fast float %4160, %4149
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4151, float %4163)  ; FMad(a,b,c)
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4153, float %4164)  ; FMad(a,b,c)
  %4166 = fmul fast float %4160, %4154
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4156, float %4167)  ; FMad(a,b,c)
  %4169 = fsub fast float %4165, %4157
  %4170 = fsub fast float %4168, %4158
  %4171 = fsub fast float %4169, %4137
  %4172 = fadd fast float %4171, %4145
  %4173 = fsub fast float %4170, %4138
  %4174 = fadd fast float %4173, %4145
  %4175 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4176 = fmul fast float %4172, %4175
  %4177 = fmul fast float %4174, %4175
  %4178 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4180 = fsub fast float 1.000000e+00, %4178
  %4181 = fsub fast float 1.000000e+00, %4179
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4180, float %4181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = fcmp fast ugt float %4183, 0.000000e+00
  br i1 %4184, label %4185, label %4488

; <label>:4185                                    ; preds = %4147
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4188 = fmul fast float %4187, %4183
  %4189 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4190 = fadd fast float %4189, %4188
  %4191 = extractvalue %dx.types.CBufRet.f32 %4152, 2
  %4192 = fadd fast float %4190, %4159
  %4193 = fmul fast float %4165, %4153
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4156, float %4193)  ; FMad(a,b,c)
  %4195 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4191, float %4194)  ; FMad(a,b,c)
  %4196 = fsub fast float %4195, %4159
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 2
  %4199 = fsub fast float %4196, %4198
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4180, float %4181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4180, float %4181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = fadd fast float %4205, %4201
  %4209 = fmul fast float %4208, 0x3F847AE140000000
  %4210 = fadd fast float %4206, %4202
  %4211 = fmul fast float %4210, 0x3F847AE140000000
  %4212 = fadd fast float %4207, %4203
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  br label %4488

; <label>:4214                                    ; preds = %4073
  %4215 = and i32 %246, 1
  %4216 = icmp eq i32 %4215, 0
  br i1 %4216, label %4488, label %4217

; <label>:4217                                    ; preds = %4214
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4225 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4226 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4227 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4228 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4229 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4230 = fadd fast float %4227, %4133
  %4231 = fadd fast float %4228, %4134
  %4232 = fadd fast float %4229, %4135
  %4233 = fmul fast float %4230, %4219
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4221, float %4233)  ; FMad(a,b,c)
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4232, float %4223, float %4234)  ; FMad(a,b,c)
  %4236 = fmul fast float %4230, %4224
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4225, float %4236)  ; FMad(a,b,c)
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4232, float %4226, float %4237)  ; FMad(a,b,c)
  %4239 = fsub fast float %4235, %4227
  %4240 = fsub fast float %4238, %4228
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.CBufRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.CBufRet.f32 %4241, 2
  %4245 = extractvalue %dx.types.CBufRet.f32 %4241, 3
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 3
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 0
  %4250 = extractvalue %dx.types.CBufRet.i32 %4248, 1
  %4251 = udiv i32 %4250, %4249
  %4252 = fsub fast float %4239, %4242
  %4253 = fsub fast float %4240, %4243
  %4254 = call float @dx.op.binary.f32(i32 35, float %4252, float 0.000000e+00)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4253, float 0.000000e+00)  ; FMax(a,b)
  %4256 = call float @dx.op.binary.f32(i32 36, float %4254, float %4244)  ; FMin(a,b)
  %4257 = call float @dx.op.binary.f32(i32 36, float %4255, float %4245)  ; FMin(a,b)
  %4258 = add i32 %4249, -1
  %4259 = add i32 %4251, -1
  %4260 = fmul fast float %4256, %4247
  %4261 = fmul fast float %4257, %4247
  %4262 = fptoui float %4260 to i32
  %4263 = fptoui float %4261 to i32
  %4264 = call i32 @dx.op.binary.i32(i32 40, i32 %4262, i32 %4258)  ; UMin(a,b)
  %4265 = call i32 @dx.op.binary.i32(i32 40, i32 %4263, i32 %4259)  ; UMin(a,b)
  %4266 = mul i32 %4265, %4249
  %4267 = add i32 %4266, %4264
  %4268 = shl i32 %4267, 2
  %4269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.i32 %4269, 0
  %4271 = icmp eq i32 %4270, -1
  br i1 %4271, label %4488, label %4272

; <label>:4272                                    ; preds = %4217
  %4273 = mul i32 %4270, 148
  %4274 = add i32 %4273, 4
  %4275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4274, i32 undef)  ; BufferLoad(srv,index,wot)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = add i32 %4273, 8
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = add i32 %4273, 36
  %4281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = add i32 %4273, 60
  %4284 = add i32 %4273, 92
  %4285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.i32 %4285, 0
  %4287 = add i32 %4273, 116
  %4288 = fsub fast float %4239, %4276
  %4289 = fsub fast float %4240, %4279
  %4290 = fmul fast float %4247, %4288
  %4291 = fmul fast float %4247, %4289
  %4292 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4294 = fsub fast float 1.000000e+00, %4293
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 2
  %4297 = call float @dx.op.unary.f32(i32 83, float %4292)  ; DerivCoarseX(value)
  %4298 = call float @dx.op.unary.f32(i32 83, float %4294)  ; DerivCoarseX(value)
  %4299 = call float @dx.op.unary.f32(i32 84, float %4292)  ; DerivCoarseY(value)
  %4300 = call float @dx.op.unary.f32(i32 84, float %4294)  ; DerivCoarseY(value)
  %4301 = fmul fast float %4297, %4296
  %4302 = fmul fast float %4298, %4296
  %4303 = fmul fast float %4299, %4296
  %4304 = fmul fast float %4300, %4296
  %4305 = call float @dx.op.dot2.f32(i32 54, float %4303, float %4304, float %4303, float %4304)  ; Dot2(ax,ay,bx,by)
  %4306 = call float @dx.op.dot2.f32(i32 54, float %4301, float %4302, float %4301, float %4302)  ; Dot2(ax,ay,bx,by)
  %4307 = call float @dx.op.binary.f32(i32 35, float %4306, float %4305)  ; FMax(a,b)
  %4308 = call float @dx.op.unary.f32(i32 23, float %4307)  ; Log(value)
  %4309 = fmul fast float %4308, 5.000000e-01
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4312 = fadd fast float %4311, %4309
  %4313 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4316 = fadd fast float %4315, %4313
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4319 = fadd fast float %4316, %4318
  %4320 = add i32 %4286, 0
  %4321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4320, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4322 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4321, i32 0)  ; GetDimensions(handle,mipLevel)
  %4323 = extractvalue %dx.types.Dimensions %4322, 0
  %4324 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4323)  ; FirstbitLo(value)
  %4325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.i32 %4325, 1
  %4327 = sub nsw i32 %4326, %4324
  %4328 = sitofp i32 %4327 to float
  %4329 = fsub fast float %4319, %4328
  %4330 = call float @dx.op.binary.f32(i32 35, float %4329, float 0.000000e+00)  ; FMax(a,b)
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4321, %dx.types.Handle %48, float %4292, float %4294, float %4282, float undef, i32 0, i32 0, i32 undef, float %4330)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = fcmp ule float %4332, 0x3FE0101020000000
  %4334 = extractvalue %dx.types.CBufRet.i32 %4325, 0
  %4335 = and i32 %4334, 128
  %4336 = icmp ne i32 %4335, 0
  %4337 = and i1 %4333, %4336
  br i1 %4337, label %4488, label %4338

; <label>:4338                                    ; preds = %4272
  %4339 = add i32 %4273, 20
  %4340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.f32 %4340, 0
  %4342 = add i32 %4273, 24
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = add i32 %4273, 40
  %4346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = add i32 %4273, 96
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 2
  %4353 = fmul fast float %4352, %4292
  %4354 = fmul fast float %4352, %4294
  %4355 = extractvalue %dx.types.CBufRet.f32 %4351, 3
  %4356 = fadd fast float %4353, %4355
  %4357 = fadd fast float %4354, %4355
  %4358 = add i32 %4350, 0
  %4359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4359, i32 0)  ; GetDimensions(handle,mipLevel)
  %4361 = extractvalue %dx.types.Dimensions %4360, 0
  %4362 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4361)  ; FirstbitLo(value)
  %4363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.i32 %4363, 1
  %4365 = sub nsw i32 %4364, %4362
  %4366 = sitofp i32 %4365 to float
  %4367 = fsub fast float %4316, %4366
  %4368 = call float @dx.op.binary.f32(i32 35, float %4367, float 0.000000e+00)  ; FMax(a,b)
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4359, %dx.types.Handle %48, float %4356, float %4357, float %4347, float undef, i32 0, i32 0, i32 undef, float %4368)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = fmul fast float %4370, %4341
  %4372 = fadd fast float %4371, %4344
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4376 = extractvalue %dx.types.CBufRet.f32 %4373, 2
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = extractvalue %dx.types.CBufRet.f32 %4373, 3
  %4382 = fadd fast float %4378, %4239
  %4383 = fadd fast float %4380, %4240
  %4384 = fadd fast float %4372, %4381
  %4385 = fmul fast float %4382, %4374
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4375, float %4385)  ; FMad(a,b,c)
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4376, float %4386)  ; FMad(a,b,c)
  %4388 = fsub fast float %4387, %4381
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4391 = fsub fast float %4388, %4390
  %4392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.i32 %4392, 0
  %4394 = call i32 @dx.op.binary.i32(i32 40, i32 %4270, i32 %4393)  ; UMin(a,b)
  %4395 = mul i32 %4394, 36
  %4396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.i32 %4396, 0
  %4398 = add i32 %4395, 4
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = fmul fast float %4400, %4292
  %4402 = fmul fast float %4400, %4294
  %4403 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4404 = fadd fast float %4401, %4403
  %4405 = fadd fast float %4402, %4403
  %4406 = icmp eq i32 %4397, 0
  br i1 %4406, label %4475, label %4407

; <label>:4407                                    ; preds = %4338
  br label %4408

; <label>:4408                                    ; preds = %4465, %4407
  %4409 = phi float [ %4466, %4465 ], [ 0.000000e+00, %4407 ]
  %4410 = phi float [ %4467, %4465 ], [ 0.000000e+00, %4407 ]
  %4411 = phi float [ %4468, %4465 ], [ 0.000000e+00, %4407 ]
  %4412 = phi float [ %4469, %4465 ], [ 0.000000e+00, %4407 ]
  %4413 = phi float [ %4470, %4465 ], [ 0.000000e+00, %4407 ]
  %4414 = phi float [ %4471, %4465 ], [ 0.000000e+00, %4407 ]
  %4415 = phi i32 [ %4472, %4465 ], [ 0, %4407 ]
  %4416 = shl i32 %4415, 2
  %4417 = add i32 %4283, %4416
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = add i32 %4287, %4416
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = add i32 %4422, 0
  %4424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4423, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4425 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4424, i32 0)  ; GetDimensions(handle,mipLevel)
  %4426 = extractvalue %dx.types.Dimensions %4425, 0
  %4427 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4426)  ; FirstbitLo(value)
  %4428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.i32 %4428, 1
  %4430 = sub nsw i32 %4429, %4427
  %4431 = sitofp i32 %4430 to float
  %4432 = fsub fast float %4316, %4431
  %4433 = call float @dx.op.binary.f32(i32 35, float %4432, float 0.000000e+00)  ; FMax(a,b)
  %4434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4424, %dx.types.Handle %48, float %4404, float %4405, float %4419, float undef, i32 0, i32 0, i32 undef, float %4433)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = fcmp fast ogt float %4435, 0.000000e+00
  br i1 %4436, label %4437, label %4465

; <label>:4437                                    ; preds = %4408
  %4438 = add i32 %4398, %4416
  %4439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.i32 %4439, 0
  %4441 = and i32 %4440, 32767
  %4442 = mul nuw nsw i32 %4441, 928
  %4443 = add nuw nsw i32 %4442, 48
  %4444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.ResRet.f32 %4444, 1
  %4447 = extractvalue %dx.types.ResRet.f32 %4444, 2
  %4448 = add nuw nsw i32 %4442, 60
  %4449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.ResRet.f32 %4449, 1
  %4452 = extractvalue %dx.types.ResRet.f32 %4449, 2
  %4453 = fmul fast float %4445, %4435
  %4454 = fmul fast float %4446, %4435
  %4455 = fmul fast float %4447, %4435
  %4456 = fadd fast float %4453, %4409
  %4457 = fadd fast float %4454, %4410
  %4458 = fadd fast float %4455, %4411
  %4459 = fmul fast float %4450, %4435
  %4460 = fmul fast float %4451, %4435
  %4461 = fmul fast float %4452, %4435
  %4462 = fadd fast float %4459, %4412
  %4463 = fadd fast float %4460, %4413
  %4464 = fadd fast float %4461, %4414
  br label %4465

; <label>:4465                                    ; preds = %4437, %4408
  %4466 = phi float [ %4456, %4437 ], [ %4409, %4408 ]
  %4467 = phi float [ %4457, %4437 ], [ %4410, %4408 ]
  %4468 = phi float [ %4458, %4437 ], [ %4411, %4408 ]
  %4469 = phi float [ %4462, %4437 ], [ %4412, %4408 ]
  %4470 = phi float [ %4463, %4437 ], [ %4413, %4408 ]
  %4471 = phi float [ %4464, %4437 ], [ %4414, %4408 ]
  %4472 = add nuw i32 %4415, 1
  %4473 = icmp eq i32 %4472, %4397
  br i1 %4473, label %4474, label %4408

; <label>:4474                                    ; preds = %4465
  br label %4475

; <label>:4475                                    ; preds = %4474, %4338
  %4476 = phi float [ 0.000000e+00, %4338 ], [ %4466, %4474 ]
  %4477 = phi float [ 0.000000e+00, %4338 ], [ %4467, %4474 ]
  %4478 = phi float [ 0.000000e+00, %4338 ], [ %4468, %4474 ]
  %4479 = phi float [ 0.000000e+00, %4338 ], [ %4469, %4474 ]
  %4480 = phi float [ 0.000000e+00, %4338 ], [ %4470, %4474 ]
  %4481 = phi float [ 0.000000e+00, %4338 ], [ %4471, %4474 ]
  %4482 = fadd fast float %4479, %4476
  %4483 = fmul fast float %4482, 0x3F847AE140000000
  %4484 = fadd fast float %4480, %4477
  %4485 = fmul fast float %4484, 0x3F847AE140000000
  %4486 = fadd fast float %4481, %4478
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  br label %4488

; <label>:4488                                    ; preds = %4475, %4272, %4217, %4214, %4185, %4147
  %4489 = phi float [ %4199, %4185 ], [ -1.310720e+05, %4147 ], [ %4391, %4475 ], [ -1.310720e+05, %4217 ], [ -1.310720e+05, %4272 ], [ -1.310720e+05, %4214 ]
  %4490 = phi float [ %4209, %4185 ], [ 0.000000e+00, %4147 ], [ %4483, %4475 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4272 ], [ 0.000000e+00, %4214 ]
  %4491 = phi float [ %4211, %4185 ], [ 0.000000e+00, %4147 ], [ %4485, %4475 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4272 ], [ 0.000000e+00, %4214 ]
  %4492 = phi float [ %4213, %4185 ], [ 0.000000e+00, %4147 ], [ %4487, %4475 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4272 ], [ 0.000000e+00, %4214 ]
  %4493 = phi i1 [ true, %4185 ], [ false, %4147 ], [ true, %4475 ], [ false, %4217 ], [ false, %4272 ], [ false, %4214 ]
  %4494 = and i32 %246, 3
  %4495 = icmp eq i32 %4494, 1
  %4496 = select i1 %4495, float 1.000000e+00, float 0.000000e+00
  %4497 = fsub fast float %4489, %197
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = select i1 %4493, float %4498, float 1.000000e+00
  %4500 = fmul fast float %4499, %4496
  %4501 = icmp eq i32 %4494, 3
  %4502 = select i1 %4501, float 1.000000e+00, float %4500
  %4503 = call float @dx.op.binary.f32(i32 35, float %4089, float %4502)  ; FMax(a,b)
  %4504 = fcmp fast olt float %4502, 1.000000e+00
  %4505 = fcmp uge float %73, 0.000000e+00
  %4506 = and i1 %4505, %4504
  br i1 %4506, label %4507, label %4517

; <label>:4507                                    ; preds = %4488
  %4508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.ResRet.f32 %4508, 1
  %4511 = extractvalue %dx.types.ResRet.f32 %4508, 2
  %4512 = fadd fast float %4509, %4503
  %4513 = fcmp ule float %72, 0.000000e+00
  %4514 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = select i1 %4513, float %4514, float 1.000000e+00
  %4516 = fmul fast float %4515, %4511
  br label %4517

; <label>:4517                                    ; preds = %4507, %4488
  %4518 = phi float [ %4512, %4507 ], [ %4503, %4488 ]
  %4519 = phi float [ %4510, %4507 ], [ 0.000000e+00, %4488 ]
  %4520 = phi float [ %4516, %4507 ], [ 0.000000e+00, %4488 ]
  %4521 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4524 = fcmp fast une float %4522, 0.000000e+00
  %4525 = fcmp fast une float %4523, 0.000000e+00
  %4526 = or i1 %4524, %4525
  br i1 %4526, label %4527, label %5086

; <label>:4527                                    ; preds = %4517
  br i1 %4524, label %4528, label %4801

; <label>:4528                                    ; preds = %4527
  %4529 = call float @dx.op.unary.f32(i32 23, float %4086)  ; Log(value)
  %4530 = fmul fast float %4529, 4.000000e+00
  %4531 = call float @dx.op.unary.f32(i32 21, float %4530)  ; Exp(value)
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = fmul fast float %4533, %60
  %4535 = fmul fast float %4533, %61
  %4536 = fmul fast float %4533, %62
  %4537 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4538 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4539 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4540 = call float @dx.op.unary.f32(i32 23, float %4537)  ; Log(value)
  %4541 = call float @dx.op.unary.f32(i32 23, float %4538)  ; Log(value)
  %4542 = call float @dx.op.unary.f32(i32 23, float %4539)  ; Log(value)
  %4543 = fmul fast float %4540, 4.000000e+00
  %4544 = fmul fast float %4541, 4.000000e+00
  %4545 = fmul fast float %4542, 4.000000e+00
  %4546 = call float @dx.op.unary.f32(i32 21, float %4543)  ; Exp(value)
  %4547 = call float @dx.op.unary.f32(i32 21, float %4544)  ; Exp(value)
  %4548 = call float @dx.op.unary.f32(i32 21, float %4545)  ; Exp(value)
  %4549 = fadd fast float %4547, %4546
  %4550 = fadd fast float %4549, %4548
  %4551 = fdiv fast float 1.000000e+00, %4550
  %4552 = fmul fast float %4551, %4546
  %4553 = fcmp fast ogt float %69, 0.000000e+00
  %4554 = fcmp fast ogt float %70, 0.000000e+00
  %4555 = fcmp fast ogt float %71, 0.000000e+00
  %4556 = fcmp fast olt float %69, 0.000000e+00
  %4557 = fcmp fast olt float %70, 0.000000e+00
  %4558 = fcmp fast olt float %71, 0.000000e+00
  %4559 = zext i1 %4553 to i32
  %4560 = zext i1 %4554 to i32
  %4561 = zext i1 %4555 to i32
  %4562 = zext i1 %4556 to i32
  %4563 = zext i1 %4557 to i32
  %4564 = zext i1 %4558 to i32
  %4565 = sub nsw i32 %4559, %4562
  %4566 = sub nsw i32 %4560, %4563
  %4567 = sub nsw i32 %4561, %4564
  %4568 = call float @dx.op.unary.f32(i32 83, float %4534)  ; DerivCoarseX(value)
  %4569 = call float @dx.op.unary.f32(i32 83, float %4535)  ; DerivCoarseX(value)
  %4570 = call float @dx.op.unary.f32(i32 83, float %4536)  ; DerivCoarseX(value)
  %4571 = call float @dx.op.unary.f32(i32 84, float %4534)  ; DerivCoarseY(value)
  %4572 = call float @dx.op.unary.f32(i32 84, float %4535)  ; DerivCoarseY(value)
  %4573 = call float @dx.op.unary.f32(i32 84, float %4536)  ; DerivCoarseY(value)
  %4574 = fcmp fast ole float %278, %4552
  %4575 = fmul fast float %4551, %4549
  %4576 = fcmp fast ole float %278, %4575
  %4577 = select i1 %4576, float %4536, float %4534
  %4578 = select i1 %4576, float %4534, float %4535
  %4579 = select i1 %4574, float %4535, float %4577
  %4580 = select i1 %4574, float %4536, float %4578
  %4581 = select i1 %4576, float %4570, float %4568
  %4582 = select i1 %4576, float %4568, float %4569
  %4583 = select i1 %4574, float %4569, float %4581
  %4584 = select i1 %4574, float %4570, float %4582
  %4585 = select i1 %4576, float %4573, float %4571
  %4586 = select i1 %4576, float %4571, float %4572
  %4587 = select i1 %4574, float %4572, float %4585
  %4588 = select i1 %4574, float %4573, float %4586
  %4589 = call float @dx.op.unary.f32(i32 27, float %4579)  ; Round_ni(value)
  %4590 = call float @dx.op.unary.f32(i32 27, float %4580)  ; Round_ni(value)
  %4591 = fptosi float %4589 to i32
  %4592 = fptosi float %4590 to i32
  %4593 = xor i32 %4592, %4591
  %4594 = sitofp i32 %4593 to float
  %4595 = fptosi float %4594 to i32
  %4596 = sitofp i32 %4595 to float
  %4597 = fmul fast float %4596, 0x3FE3C6EF40000000
  %4598 = frem fast float %4589, 2.560000e+02
  %4599 = frem fast float %4590, 2.560000e+02
  %4600 = fptoui float %4598 to i32
  %4601 = fptoui float %4599 to i32
  %4602 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4600, i32 %4601, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = fadd fast float %4603, %4597
  %4607 = fadd fast float %4604, %4597
  %4608 = fadd fast float %4605, %4597
  %4609 = call float @dx.op.unary.f32(i32 22, float %4606)  ; Frc(value)
  %4610 = call float @dx.op.unary.f32(i32 22, float %4607)  ; Frc(value)
  %4611 = call float @dx.op.unary.f32(i32 22, float %4608)  ; Frc(value)
  %4612 = fmul fast float %4611, 0x401921FB60000000
  %4613 = call float @dx.op.unary.f32(i32 13, float %4612)  ; Sin(value)
  %4614 = call float @dx.op.unary.f32(i32 12, float %4612)  ; Cos(value)
  %4615 = fsub fast float -0.000000e+00, %4614
  %4616 = fmul fast float %4614, %4579
  %4617 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4580, float %4616)  ; FMad(a,b,c)
  %4618 = fmul fast float %4613, %4579
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4580, float %4618)  ; FMad(a,b,c)
  %4620 = fadd fast float %4617, %4609
  %4621 = fadd fast float %4619, %4610
  %4622 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4623 = bitcast float %4622 to i32
  %4624 = icmp eq i32 %4623, 0
  br i1 %4624, label %4663, label %4625

; <label>:4625                                    ; preds = %4528
  %4626 = add i32 %4623, 0
  %4627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4628 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4627, %dx.types.Handle %105, float %4620, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float %4583, float %4584, float undef, float %4587, float %4588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4629 = extractvalue %dx.types.ResRet.f32 %4628, 0
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4632 = extractvalue %dx.types.CBufRet.f32 %4630, 2
  %4633 = fsub fast float 1.000000e+00, %4522
  %4634 = call float @dx.op.binary.f32(i32 35, float %4633, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4635 = bitcast float %4522 to i32
  %4636 = sitofp i32 %4635 to float
  %4637 = fadd fast float %4636, 0xC1CFBF8940000000
  %4638 = fmul fast float %4632, %4637
  %4639 = fadd fast float %4638, 0x41CFBF8940000000
  %4640 = fptosi float %4639 to i32
  %4641 = bitcast i32 %4640 to float
  %4642 = bitcast float %4634 to i32
  %4643 = sitofp i32 %4642 to float
  %4644 = fadd fast float %4643, 0xC1CFBF8940000000
  %4645 = fmul fast float %4644, %4632
  %4646 = fadd fast float %4645, 0x41CFBF8940000000
  %4647 = fptosi float %4646 to i32
  %4648 = bitcast i32 %4647 to float
  %4649 = fmul fast float %4641, %4631
  %4650 = fmul fast float %4648, %4631
  %4651 = fsub fast float %4634, %4649
  %4652 = fadd fast float %4650, %4634
  %4653 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4655 = fsub fast float %4629, %4653
  %4656 = fsub fast float %4654, %4653
  %4657 = bitcast float %4656 to i32
  %4658 = sub nsw i32 2129859010, %4657
  %4659 = bitcast i32 %4658 to float
  %4660 = fmul fast float %4659, %4655
  %4661 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4662 = fcmp fast olt float %4661, 0x3F70101020000000
  br i1 %4662, label %4801, label %4663

; <label>:4663                                    ; preds = %4625, %4528
  %4664 = phi float [ %4661, %4625 ], [ %4522, %4528 ]
  %4665 = fmul fast float %4664, %4531
  %4666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.i32 %4666, 1
  %4668 = extractvalue %dx.types.CBufRet.i32 %4666, 0
  %4669 = add i32 %4668, 0
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4670, %dx.types.Handle %104, float %4620, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float %4583, float %4584, float undef, float %4587, float %4588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4671, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4671, 2
  %4675 = extractvalue %dx.types.ResRet.f32 %4671, 3
  %4676 = and i32 %4667, 255
  %4677 = uitofp i32 %4676 to float
  %4678 = lshr i32 %4667, 8
  %4679 = and i32 %4678, 255
  %4680 = uitofp i32 %4679 to float
  %4681 = fmul fast float %4675, %4677
  %4682 = fadd fast float %4681, %4680
  %4683 = fmul fast float %4682, 0x3F70101000000000
  %4684 = fadd fast float %4683, 0xBFB99999A0000000
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4685, 0x3FF1C71C80000000
  %4687 = call float @dx.op.binary.f32(i32 36, float %4683, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4688 = fsub fast float 1.000000e+00, %4686
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, %4672
  %4691 = fmul fast float %4689, %4673
  %4692 = fmul fast float %4689, %4674
  %4693 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4695 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4696 = fmul fast float %4686, %4672
  %4697 = fmul fast float %4686, %4673
  %4698 = fmul fast float %4686, %4674
  %4699 = fadd fast float %4696, %4687
  %4700 = fadd fast float %4697, %4687
  %4701 = fadd fast float %4698, %4687
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.i32 %4705, 3
  %4707 = extractvalue %dx.types.CBufRet.i32 %4705, 2
  %4708 = add i32 %4707, 0
  %4709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4710 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4709, %dx.types.Handle %104, float %4620, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float %4583, float %4584, float undef, float %4587, float %4588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4711 = extractvalue %dx.types.ResRet.f32 %4710, 0
  %4712 = extractvalue %dx.types.ResRet.f32 %4710, 1
  %4713 = extractvalue %dx.types.ResRet.f32 %4710, 2
  %4714 = extractvalue %dx.types.ResRet.f32 %4710, 3
  %4715 = and i32 %4706, 255
  %4716 = uitofp i32 %4715 to float
  %4717 = lshr i32 %4706, 8
  %4718 = and i32 %4717, 255
  %4719 = uitofp i32 %4718 to float
  %4720 = lshr i32 %4706, 16
  %4721 = and i32 %4720, 255
  %4722 = uitofp i32 %4721 to float
  %4723 = fmul fast float %4722, 0x3F70101000000000
  %4724 = fmul fast float %4711, %4716
  %4725 = fadd fast float %4724, %4719
  %4726 = fmul fast float %4725, 0x3F70101000000000
  %4727 = fadd fast float %4712, -5.000000e-01
  %4728 = fadd fast float %4714, -5.000000e-01
  %4729 = fmul fast float %4727, %4723
  %4730 = fmul fast float %4728, %4723
  %4731 = fadd fast float %4729, 5.000000e-01
  %4732 = fadd fast float %4730, 5.000000e-01
  %4733 = fmul fast float %4731, 2.000000e+00
  %4734 = fadd fast float %4733, -1.000000e+00
  %4735 = fmul fast float %4732, 2.000000e+00
  %4736 = fadd fast float %4735, -1.000000e+00
  %4737 = fadd fast float %4734, %4736
  %4738 = fmul fast float %4737, 5.000000e-01
  %4739 = fsub fast float %4734, %4736
  %4740 = fmul fast float %4739, 5.000000e-01
  %4741 = call float @dx.op.unary.f32(i32 6, float %4738)  ; FAbs(value)
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = call float @dx.op.unary.f32(i32 6, float %4740)  ; FAbs(value)
  %4744 = fsub fast float %4742, %4743
  %4745 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4740, float %4744, float %4738, float %4740, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = call float @dx.op.unary.f32(i32 25, float %4745)  ; Rsqrt(value)
  %4747 = fmul fast float %4738, %4746
  %4748 = fmul fast float %4740, %4746
  %4749 = select i1 %4576, i32 %4566, i32 %4567
  %4750 = select i1 %4574, i32 %4565, i32 %4749
  %4751 = sitofp i32 %4750 to float
  %4752 = fmul fast float %4744, %4751
  %4753 = fmul fast float %4752, %4746
  %4754 = select i1 %4576, float %4753, float %4748
  %4755 = select i1 %4576, float %4748, float %4753
  %4756 = select i1 %4574, float %4753, float %4747
  %4757 = select i1 %4574, float %4748, float %4754
  %4758 = select i1 %4574, float %4747, float %4755
  %4759 = fsub fast float %4693, %4126
  %4760 = fsub fast float %4694, %4127
  %4761 = fsub fast float %4695, %4128
  %4762 = fmul fast float %4759, %4665
  %4763 = fmul fast float %4760, %4665
  %4764 = fmul fast float %4761, %4665
  %4765 = fadd fast float %4762, %4126
  %4766 = fadd fast float %4763, %4127
  %4767 = fadd fast float %4764, %4128
  %4768 = fsub fast float %4702, %4111
  %4769 = fsub fast float %4703, %4112
  %4770 = fsub fast float %4704, %4113
  %4771 = fmul fast float %4768, %4665
  %4772 = fmul fast float %4769, %4665
  %4773 = fmul fast float %4770, %4665
  %4774 = fadd fast float %4771, %4111
  %4775 = fadd fast float %4772, %4112
  %4776 = fadd fast float %4773, %4113
  %4777 = fadd fast float %4756, %4080
  %4778 = fadd fast float %4757, %4081
  %4779 = fadd fast float %4758, %4082
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4777, float %4778, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.unary.f32(i32 25, float %4780)  ; Rsqrt(value)
  %4782 = fmul fast float %4777, %4781
  %4783 = fmul fast float %4778, %4781
  %4784 = fmul fast float %4779, %4781
  %4785 = fsub fast float %4782, %4080
  %4786 = fsub fast float %4783, %4081
  %4787 = fsub fast float %4784, %4082
  %4788 = fmul fast float %4785, %4665
  %4789 = fmul fast float %4786, %4665
  %4790 = fmul fast float %4787, %4665
  %4791 = fadd fast float %4788, %4080
  %4792 = fadd fast float %4789, %4081
  %4793 = fadd fast float %4790, %4082
  %4794 = call float @dx.op.binary.f32(i32 36, float %4086, float %4713)  ; FMin(a,b)
  %4795 = fsub fast float %4794, %4086
  %4796 = fmul fast float %4795, %4665
  %4797 = fadd fast float %4796, %4086
  %4798 = fsub fast float %4726, %4114
  %4799 = fmul fast float %4798, %4665
  %4800 = fadd fast float %4799, %4114
  br label %4801

; <label>:4801                                    ; preds = %4663, %4625, %4527
  %4802 = phi float [ %4765, %4663 ], [ %4126, %4625 ], [ %4126, %4527 ]
  %4803 = phi float [ %4766, %4663 ], [ %4127, %4625 ], [ %4127, %4527 ]
  %4804 = phi float [ %4767, %4663 ], [ %4128, %4625 ], [ %4128, %4527 ]
  %4805 = phi float [ %4774, %4663 ], [ %4111, %4625 ], [ %4111, %4527 ]
  %4806 = phi float [ %4775, %4663 ], [ %4112, %4625 ], [ %4112, %4527 ]
  %4807 = phi float [ %4776, %4663 ], [ %4113, %4625 ], [ %4113, %4527 ]
  %4808 = phi float [ %4791, %4663 ], [ %4080, %4625 ], [ %4080, %4527 ]
  %4809 = phi float [ %4792, %4663 ], [ %4081, %4625 ], [ %4081, %4527 ]
  %4810 = phi float [ %4793, %4663 ], [ %4082, %4625 ], [ %4082, %4527 ]
  %4811 = phi float [ %4800, %4663 ], [ %4114, %4625 ], [ %4114, %4527 ]
  %4812 = phi float [ %4797, %4663 ], [ %4086, %4625 ], [ %4086, %4527 ]
  br i1 %4525, label %4813, label %5086

; <label>:4813                                    ; preds = %4801
  %4814 = call float @dx.op.unary.f32(i32 23, float %4812)  ; Log(value)
  %4815 = fmul fast float %4814, 4.000000e+00
  %4816 = call float @dx.op.unary.f32(i32 21, float %4815)  ; Exp(value)
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = fmul fast float %4818, %60
  %4820 = fmul fast float %4818, %61
  %4821 = fmul fast float %4818, %62
  %4822 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4823 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4824 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4825 = call float @dx.op.unary.f32(i32 23, float %4822)  ; Log(value)
  %4826 = call float @dx.op.unary.f32(i32 23, float %4823)  ; Log(value)
  %4827 = call float @dx.op.unary.f32(i32 23, float %4824)  ; Log(value)
  %4828 = fmul fast float %4825, 4.000000e+00
  %4829 = fmul fast float %4826, 4.000000e+00
  %4830 = fmul fast float %4827, 4.000000e+00
  %4831 = call float @dx.op.unary.f32(i32 21, float %4828)  ; Exp(value)
  %4832 = call float @dx.op.unary.f32(i32 21, float %4829)  ; Exp(value)
  %4833 = call float @dx.op.unary.f32(i32 21, float %4830)  ; Exp(value)
  %4834 = fadd fast float %4832, %4831
  %4835 = fadd fast float %4834, %4833
  %4836 = fdiv fast float 1.000000e+00, %4835
  %4837 = fmul fast float %4836, %4831
  %4838 = fcmp fast ogt float %69, 0.000000e+00
  %4839 = fcmp fast ogt float %70, 0.000000e+00
  %4840 = fcmp fast ogt float %71, 0.000000e+00
  %4841 = fcmp fast olt float %69, 0.000000e+00
  %4842 = fcmp fast olt float %70, 0.000000e+00
  %4843 = fcmp fast olt float %71, 0.000000e+00
  %4844 = zext i1 %4838 to i32
  %4845 = zext i1 %4839 to i32
  %4846 = zext i1 %4840 to i32
  %4847 = zext i1 %4841 to i32
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = sub nsw i32 %4844, %4847
  %4851 = sub nsw i32 %4845, %4848
  %4852 = sub nsw i32 %4846, %4849
  %4853 = call float @dx.op.unary.f32(i32 83, float %4819)  ; DerivCoarseX(value)
  %4854 = call float @dx.op.unary.f32(i32 83, float %4820)  ; DerivCoarseX(value)
  %4855 = call float @dx.op.unary.f32(i32 83, float %4821)  ; DerivCoarseX(value)
  %4856 = call float @dx.op.unary.f32(i32 84, float %4819)  ; DerivCoarseY(value)
  %4857 = call float @dx.op.unary.f32(i32 84, float %4820)  ; DerivCoarseY(value)
  %4858 = call float @dx.op.unary.f32(i32 84, float %4821)  ; DerivCoarseY(value)
  %4859 = fcmp fast ole float %278, %4837
  %4860 = fmul fast float %4836, %4834
  %4861 = fcmp fast ole float %278, %4860
  %4862 = select i1 %4861, float %4821, float %4819
  %4863 = select i1 %4861, float %4819, float %4820
  %4864 = select i1 %4859, float %4820, float %4862
  %4865 = select i1 %4859, float %4821, float %4863
  %4866 = select i1 %4861, float %4855, float %4853
  %4867 = select i1 %4861, float %4853, float %4854
  %4868 = select i1 %4859, float %4854, float %4866
  %4869 = select i1 %4859, float %4855, float %4867
  %4870 = select i1 %4861, float %4858, float %4856
  %4871 = select i1 %4861, float %4856, float %4857
  %4872 = select i1 %4859, float %4857, float %4870
  %4873 = select i1 %4859, float %4858, float %4871
  %4874 = call float @dx.op.unary.f32(i32 27, float %4864)  ; Round_ni(value)
  %4875 = call float @dx.op.unary.f32(i32 27, float %4865)  ; Round_ni(value)
  %4876 = fptosi float %4874 to i32
  %4877 = fptosi float %4875 to i32
  %4878 = xor i32 %4877, %4876
  %4879 = sitofp i32 %4878 to float
  %4880 = fptosi float %4879 to i32
  %4881 = sitofp i32 %4880 to float
  %4882 = fmul fast float %4881, 0x3FE3C6EF40000000
  %4883 = frem fast float %4874, 2.560000e+02
  %4884 = frem fast float %4875, 2.560000e+02
  %4885 = fptoui float %4883 to i32
  %4886 = fptoui float %4884 to i32
  %4887 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4885, i32 %4886, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.ResRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.ResRet.f32 %4887, 2
  %4891 = fadd fast float %4888, %4882
  %4892 = fadd fast float %4889, %4882
  %4893 = fadd fast float %4890, %4882
  %4894 = call float @dx.op.unary.f32(i32 22, float %4891)  ; Frc(value)
  %4895 = call float @dx.op.unary.f32(i32 22, float %4892)  ; Frc(value)
  %4896 = call float @dx.op.unary.f32(i32 22, float %4893)  ; Frc(value)
  %4897 = fmul fast float %4896, 0x401921FB60000000
  %4898 = call float @dx.op.unary.f32(i32 13, float %4897)  ; Sin(value)
  %4899 = call float @dx.op.unary.f32(i32 12, float %4897)  ; Cos(value)
  %4900 = fsub fast float -0.000000e+00, %4899
  %4901 = fmul fast float %4899, %4864
  %4902 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %4865, float %4901)  ; FMad(a,b,c)
  %4903 = fmul fast float %4898, %4864
  %4904 = call float @dx.op.tertiary.f32(i32 46, float %4900, float %4865, float %4903)  ; FMad(a,b,c)
  %4905 = fadd fast float %4902, %4894
  %4906 = fadd fast float %4904, %4895
  %4907 = extractvalue %dx.types.CBufRet.f32 %4817, 3
  %4908 = bitcast float %4907 to i32
  %4909 = icmp eq i32 %4908, 0
  br i1 %4909, label %4948, label %4910

; <label>:4910                                    ; preds = %4813
  %4911 = add i32 %4908, 0
  %4912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4913 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4912, %dx.types.Handle %105, float %4905, float %4906, float undef, float undef, i32 0, i32 0, i32 undef, float %4868, float %4869, float undef, float %4872, float %4873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4918 = fsub fast float 1.000000e+00, %4523
  %4919 = call float @dx.op.binary.f32(i32 35, float %4918, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4920 = bitcast float %4523 to i32
  %4921 = sitofp i32 %4920 to float
  %4922 = fadd fast float %4921, 0xC1CFBF8940000000
  %4923 = fmul fast float %4917, %4922
  %4924 = fadd fast float %4923, 0x41CFBF8940000000
  %4925 = fptosi float %4924 to i32
  %4926 = bitcast i32 %4925 to float
  %4927 = bitcast float %4919 to i32
  %4928 = sitofp i32 %4927 to float
  %4929 = fadd fast float %4928, 0xC1CFBF8940000000
  %4930 = fmul fast float %4929, %4917
  %4931 = fadd fast float %4930, 0x41CFBF8940000000
  %4932 = fptosi float %4931 to i32
  %4933 = bitcast i32 %4932 to float
  %4934 = fmul fast float %4926, %4916
  %4935 = fmul fast float %4933, %4916
  %4936 = fsub fast float %4919, %4934
  %4937 = fadd fast float %4935, %4919
  %4938 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4940 = fsub fast float %4914, %4938
  %4941 = fsub fast float %4939, %4938
  %4942 = bitcast float %4941 to i32
  %4943 = sub nsw i32 2129859010, %4942
  %4944 = bitcast i32 %4943 to float
  %4945 = fmul fast float %4944, %4940
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = fcmp fast olt float %4946, 0x3F70101020000000
  br i1 %4947, label %5086, label %4948

; <label>:4948                                    ; preds = %4910, %4813
  %4949 = phi float [ %4946, %4910 ], [ %4523, %4813 ]
  %4950 = fmul fast float %4949, %4816
  %4951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.i32 %4951, 1
  %4953 = extractvalue %dx.types.CBufRet.i32 %4951, 0
  %4954 = add i32 %4953, 0
  %4955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4955, %dx.types.Handle %104, float %4905, float %4906, float undef, float undef, i32 0, i32 0, i32 undef, float %4868, float %4869, float undef, float %4872, float %4873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4960 = extractvalue %dx.types.ResRet.f32 %4956, 3
  %4961 = and i32 %4952, 255
  %4962 = uitofp i32 %4961 to float
  %4963 = lshr i32 %4952, 8
  %4964 = and i32 %4963, 255
  %4965 = uitofp i32 %4964 to float
  %4966 = fmul fast float %4960, %4962
  %4967 = fadd fast float %4966, %4965
  %4968 = fmul fast float %4967, 0x3F70101000000000
  %4969 = fadd fast float %4968, 0xBFB99999A0000000
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fmul fast float %4970, 0x3FF1C71C80000000
  %4972 = call float @dx.op.binary.f32(i32 36, float %4968, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4973 = fsub fast float 1.000000e+00, %4971
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, %4957
  %4976 = fmul fast float %4974, %4958
  %4977 = fmul fast float %4974, %4959
  %4978 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4981 = fmul fast float %4971, %4957
  %4982 = fmul fast float %4971, %4958
  %4983 = fmul fast float %4971, %4959
  %4984 = fadd fast float %4981, %4972
  %4985 = fadd fast float %4982, %4972
  %4986 = fadd fast float %4983, %4972
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.i32 %4990, 3
  %4992 = extractvalue %dx.types.CBufRet.i32 %4990, 2
  %4993 = add i32 %4992, 0
  %4994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4994, %dx.types.Handle %104, float %4905, float %4906, float undef, float undef, i32 0, i32 0, i32 undef, float %4868, float %4869, float undef, float %4872, float %4873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = extractvalue %dx.types.ResRet.f32 %4995, 3
  %5000 = and i32 %4991, 255
  %5001 = uitofp i32 %5000 to float
  %5002 = lshr i32 %4991, 8
  %5003 = and i32 %5002, 255
  %5004 = uitofp i32 %5003 to float
  %5005 = lshr i32 %4991, 16
  %5006 = and i32 %5005, 255
  %5007 = uitofp i32 %5006 to float
  %5008 = fmul fast float %5007, 0x3F70101000000000
  %5009 = fmul fast float %4996, %5001
  %5010 = fadd fast float %5009, %5004
  %5011 = fmul fast float %5010, 0x3F70101000000000
  %5012 = fadd fast float %4997, -5.000000e-01
  %5013 = fadd fast float %4999, -5.000000e-01
  %5014 = fmul fast float %5012, %5008
  %5015 = fmul fast float %5013, %5008
  %5016 = fadd fast float %5014, 5.000000e-01
  %5017 = fadd fast float %5015, 5.000000e-01
  %5018 = fmul fast float %5016, 2.000000e+00
  %5019 = fadd fast float %5018, -1.000000e+00
  %5020 = fmul fast float %5017, 2.000000e+00
  %5021 = fadd fast float %5020, -1.000000e+00
  %5022 = fadd fast float %5019, %5021
  %5023 = fmul fast float %5022, 5.000000e-01
  %5024 = fsub fast float %5019, %5021
  %5025 = fmul fast float %5024, 5.000000e-01
  %5026 = call float @dx.op.unary.f32(i32 6, float %5023)  ; FAbs(value)
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = call float @dx.op.unary.f32(i32 6, float %5025)  ; FAbs(value)
  %5029 = fsub fast float %5027, %5028
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5025, float %5029, float %5023, float %5025, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.unary.f32(i32 25, float %5030)  ; Rsqrt(value)
  %5032 = fmul fast float %5023, %5031
  %5033 = fmul fast float %5025, %5031
  %5034 = select i1 %4861, i32 %4851, i32 %4852
  %5035 = select i1 %4859, i32 %4850, i32 %5034
  %5036 = sitofp i32 %5035 to float
  %5037 = fmul fast float %5029, %5036
  %5038 = fmul fast float %5037, %5031
  %5039 = select i1 %4861, float %5038, float %5033
  %5040 = select i1 %4861, float %5033, float %5038
  %5041 = select i1 %4859, float %5038, float %5032
  %5042 = select i1 %4859, float %5033, float %5039
  %5043 = select i1 %4859, float %5032, float %5040
  %5044 = fsub fast float %4978, %4802
  %5045 = fsub fast float %4979, %4803
  %5046 = fsub fast float %4980, %4804
  %5047 = fmul fast float %5044, %4950
  %5048 = fmul fast float %5045, %4950
  %5049 = fmul fast float %5046, %4950
  %5050 = fadd fast float %5047, %4802
  %5051 = fadd fast float %5048, %4803
  %5052 = fadd fast float %5049, %4804
  %5053 = fsub fast float %4987, %4805
  %5054 = fsub fast float %4988, %4806
  %5055 = fsub fast float %4989, %4807
  %5056 = fmul fast float %5053, %4950
  %5057 = fmul fast float %5054, %4950
  %5058 = fmul fast float %5055, %4950
  %5059 = fadd fast float %5056, %4805
  %5060 = fadd fast float %5057, %4806
  %5061 = fadd fast float %5058, %4807
  %5062 = fadd fast float %5041, %4808
  %5063 = fadd fast float %5042, %4809
  %5064 = fadd fast float %5043, %4810
  %5065 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float %5062, float %5063, float %5064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5066 = call float @dx.op.unary.f32(i32 25, float %5065)  ; Rsqrt(value)
  %5067 = fmul fast float %5062, %5066
  %5068 = fmul fast float %5063, %5066
  %5069 = fmul fast float %5064, %5066
  %5070 = fsub fast float %5067, %4808
  %5071 = fsub fast float %5068, %4809
  %5072 = fsub fast float %5069, %4810
  %5073 = fmul fast float %5070, %4950
  %5074 = fmul fast float %5071, %4950
  %5075 = fmul fast float %5072, %4950
  %5076 = fadd fast float %5073, %4808
  %5077 = fadd fast float %5074, %4809
  %5078 = fadd fast float %5075, %4810
  %5079 = call float @dx.op.binary.f32(i32 36, float %4812, float %4998)  ; FMin(a,b)
  %5080 = fsub fast float %5079, %4812
  %5081 = fmul fast float %5080, %4950
  %5082 = fadd fast float %5081, %4812
  %5083 = fsub fast float %5011, %4811
  %5084 = fmul fast float %5083, %4950
  %5085 = fadd fast float %5084, %4811
  br label %5086

; <label>:5086                                    ; preds = %4948, %4910, %4801, %4517
  %5087 = phi float [ %5050, %4948 ], [ %4802, %4910 ], [ %4802, %4801 ], [ %4126, %4517 ]
  %5088 = phi float [ %5051, %4948 ], [ %4803, %4910 ], [ %4803, %4801 ], [ %4127, %4517 ]
  %5089 = phi float [ %5052, %4948 ], [ %4804, %4910 ], [ %4804, %4801 ], [ %4128, %4517 ]
  %5090 = phi float [ %5059, %4948 ], [ %4805, %4910 ], [ %4805, %4801 ], [ %4111, %4517 ]
  %5091 = phi float [ %5060, %4948 ], [ %4806, %4910 ], [ %4806, %4801 ], [ %4112, %4517 ]
  %5092 = phi float [ %5061, %4948 ], [ %4807, %4910 ], [ %4807, %4801 ], [ %4113, %4517 ]
  %5093 = phi float [ %5076, %4948 ], [ %4808, %4910 ], [ %4808, %4801 ], [ %4080, %4517 ]
  %5094 = phi float [ %5077, %4948 ], [ %4809, %4910 ], [ %4809, %4801 ], [ %4081, %4517 ]
  %5095 = phi float [ %5078, %4948 ], [ %4810, %4910 ], [ %4810, %4801 ], [ %4082, %4517 ]
  %5096 = phi float [ %5085, %4948 ], [ %4811, %4910 ], [ %4811, %4801 ], [ %4114, %4517 ]
  %5097 = phi float [ %5082, %4948 ], [ %4812, %4910 ], [ %4812, %4801 ], [ %4086, %4517 ]
  %5098 = fcmp fast une float %4521, 0.000000e+00
  br i1 %5098, label %5099, label %5268

; <label>:5099                                    ; preds = %5086
  %5100 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 25, float %5100)  ; Rsqrt(value)
  %5102 = fmul fast float %195, %5101
  %5103 = fsub fast float -0.000000e+00, %5102
  %5104 = fmul fast float %196, %5101
  %5105 = fsub fast float -0.000000e+00, %5104
  %5106 = fmul fast float %197, %5101
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5105, float %5107, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5109 = fmul fast float %4521, 2.500000e+00
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %4521, 0x4013FFFFE0000000
  %5112 = fadd fast float %5111, 0xBFFFFFFFE0000000
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %4521, 0x4004000020000000
  %5115 = fadd fast float %5114, 0xBFF8000040000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %4093, 1.000000e+01
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = fmul fast float %5118, 2.000000e+00
  %5120 = fsub fast float 3.000000e+00, %5119
  %5121 = fmul fast float %5118, %5118
  %5122 = fmul fast float %5121, %5120
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = fsub fast float 0x3FE3333340000000, %5096
  %5125 = fmul fast float %5124, 0x400AAAAAA0000000
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fmul fast float %5123, %5126
  %5128 = fmul fast float %5087, 0x3FEA2B8620000000
  %5129 = fmul fast float %5088, 0x3FEA2B8620000000
  %5130 = fmul fast float %5089, 0x3FEA2B8620000000
  %5131 = fadd fast float %5128, 0x3FC81DFBA0000000
  %5132 = fmul fast float %5131, %5087
  %5133 = fadd fast float %5132, 0x3F910E6020000000
  %5134 = fadd fast float %5129, 0x3FC81DFBA0000000
  %5135 = fmul fast float %5134, %5088
  %5136 = fadd fast float %5135, 0x3F910E6020000000
  %5137 = fadd fast float %5130, 0x3FC81DFBA0000000
  %5138 = fmul fast float %5137, %5089
  %5139 = fadd fast float %5138, 0x3F910E6020000000
  %5140 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = fsub fast float %5140, %5087
  %5144 = fsub fast float %5141, %5088
  %5145 = fsub fast float %5142, %5089
  %5146 = fmul fast float %5143, %5110
  %5147 = fmul fast float %5146, %5127
  %5148 = fmul fast float %5144, %5110
  %5149 = fmul fast float %5148, %5127
  %5150 = fmul fast float %5145, %5110
  %5151 = fmul fast float %5150, %5127
  %5152 = fadd fast float %5147, %5087
  %5153 = fadd fast float %5149, %5088
  %5154 = fadd fast float %5151, %5089
  %5155 = fmul fast float %5097, %5097
  %5156 = fmul fast float %5155, %5155
  %5157 = fadd fast float %5113, 1.000000e+00
  %5158 = fsub fast float %5157, %5127
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = fsub fast float 1.000000e+00, %5156
  %5163 = call float @dx.op.binary.f32(i32 36, float %5159, float %5162)  ; FMin(a,b)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5165 = call float @dx.op.binary.f32(i32 35, float %5163, float %5164)  ; FMax(a,b)
  %5166 = fadd fast float %5161, 0xBFE4CCCCC0000000
  %5167 = fmul fast float %5166, 0x4006DB6DA0000000
  %5168 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5169 = fmul fast float %5168, 2.000000e+00
  %5170 = fsub fast float 3.000000e+00, %5169
  %5171 = bitcast float %5090 to i32
  %5172 = ashr i32 %5171, 1
  %5173 = add nsw i32 %5172, 532487669
  %5174 = bitcast i32 %5173 to float
  %5175 = fsub fast float 1.000000e+00, %5174
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = fmul fast float %5178, 2.000000e+00
  %5180 = bitcast float %5091 to i32
  %5181 = ashr i32 %5180, 1
  %5182 = add nsw i32 %5181, 532487669
  %5183 = bitcast i32 %5182 to float
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = bitcast float %5184 to i32
  %5186 = sub nsw i32 2129859010, %5185
  %5187 = bitcast i32 %5186 to float
  %5188 = fmul fast float %5187, 2.000000e+00
  %5189 = bitcast float %5092 to i32
  %5190 = ashr i32 %5189, 1
  %5191 = add nsw i32 %5190, 532487669
  %5192 = bitcast i32 %5191 to float
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = bitcast float %5193 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = fmul fast float %5196, 2.000000e+00
  %5198 = fsub fast float 0x4002A9FBE0000000, %5179
  %5199 = fadd fast float %5179, 0x3FD54FDF00000000
  %5200 = bitcast float %5199 to i32
  %5201 = sub nsw i32 2129859010, %5200
  %5202 = bitcast i32 %5201 to float
  %5203 = fmul fast float %5202, %5198
  %5204 = fmul fast float %5203, %5203
  %5205 = fsub fast float 0x4002A9FBE0000000, %5188
  %5206 = fadd fast float %5188, 0x3FD54FDF00000000
  %5207 = bitcast float %5206 to i32
  %5208 = sub nsw i32 2129859010, %5207
  %5209 = bitcast i32 %5208 to float
  %5210 = fmul fast float %5209, %5205
  %5211 = fmul fast float %5210, %5210
  %5212 = fsub fast float 0x4002A9FBE0000000, %5197
  %5213 = fadd fast float %5197, 0x3FD54FDF00000000
  %5214 = bitcast float %5213 to i32
  %5215 = sub nsw i32 2129859010, %5214
  %5216 = bitcast i32 %5215 to float
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5217, %5217
  %5219 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5204)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5211)  ; FMax(a,b)
  %5221 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5218)  ; FMax(a,b)
  %5222 = fsub fast float 1.000000e+00, %5108
  %5223 = fadd fast float %5222, %5123
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fsub fast float 1.000000e+00, %4502
  %5226 = fmul fast float %5165, %5225
  %5227 = fmul fast float %5168, %5168
  %5228 = fmul fast float %5227, %5226
  %5229 = fmul fast float %5228, %5170
  %5230 = fmul fast float %5225, 0xBFE99999A0000000
  %5231 = fmul fast float %5230, %5110
  %5232 = fmul fast float %5231, %5127
  %5233 = fadd fast float %5232, 1.000000e+00
  %5234 = fadd fast float %5096, -1.000000e+00
  %5235 = fmul fast float %5233, %5234
  %5236 = fadd fast float %5235, 1.000000e+00
  %5237 = fsub fast float %5219, %5090
  %5238 = fsub fast float %5220, %5091
  %5239 = fsub fast float %5221, %5092
  %5240 = fmul fast float %5229, %5237
  %5241 = fmul fast float %5229, %5238
  %5242 = fmul fast float %5229, %5239
  %5243 = fadd fast float %5240, %5090
  %5244 = fadd fast float %5241, %5091
  %5245 = fadd fast float %5242, %5092
  %5246 = fsub fast float %115, %5093
  %5247 = fsub fast float %116, %5094
  %5248 = fsub fast float %117, %5095
  %5249 = fmul fast float %5229, %5246
  %5250 = fmul fast float %5229, %5247
  %5251 = fmul fast float %5229, %5248
  %5252 = fadd fast float %5249, %5093
  %5253 = fadd fast float %5250, %5094
  %5254 = fadd fast float %5251, %5095
  %5255 = fmul fast float %5229, %5224
  %5256 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5257 = fsub fast float 1.000000e+00, %5256
  %5258 = fmul fast float %5255, %5257
  %5259 = fadd fast float %5258, %5256
  %5260 = fsub fast float 1.000000e+00, %5097
  %5261 = fmul fast float %5229, %5260
  %5262 = fadd fast float %5261, %5097
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5252, float %5253, float %5254)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = call float @dx.op.unary.f32(i32 25, float %5263)  ; Rsqrt(value)
  %5265 = fmul fast float %5252, %5264
  %5266 = fmul fast float %5253, %5264
  %5267 = fmul fast float %5254, %5264
  br label %5268

; <label>:5268                                    ; preds = %5099, %5086
  %5269 = phi float [ %5152, %5099 ], [ %5087, %5086 ]
  %5270 = phi float [ %5153, %5099 ], [ %5088, %5086 ]
  %5271 = phi float [ %5154, %5099 ], [ %5089, %5086 ]
  %5272 = phi float [ %5243, %5099 ], [ %5090, %5086 ]
  %5273 = phi float [ %5244, %5099 ], [ %5091, %5086 ]
  %5274 = phi float [ %5245, %5099 ], [ %5092, %5086 ]
  %5275 = phi float [ %5265, %5099 ], [ %5093, %5086 ]
  %5276 = phi float [ %5266, %5099 ], [ %5094, %5086 ]
  %5277 = phi float [ %5267, %5099 ], [ %5095, %5086 ]
  %5278 = phi float [ %5259, %5099 ], [ %5096, %5086 ]
  %5279 = phi float [ %5262, %5099 ], [ %5097, %5086 ]
  %5280 = icmp eq i32 %58, 0
  br i1 %5280, label %5311, label %5281

; <label>:5281                                    ; preds = %5268
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 2
  %5284 = extractvalue %dx.types.CBufRet.f32 %5282, 3
  %5285 = fmul fast float %5283, %108
  %5286 = fmul fast float %5284, %109
  %5287 = fmul fast float %5285, 1.024000e+03
  %5288 = fmul fast float %5286, 1.024000e+03
  %5289 = fadd fast float %5287, -5.120000e+02
  %5290 = fadd fast float %5288, -5.120000e+02
  %5291 = fmul fast float %5285, 0x4081BEDF00000000
  %5292 = fadd fast float %5291, 0xC071BEDF00000000
  %5293 = call float @dx.op.unary.f32(i32 22, float %5292)  ; Frc(value)
  %5294 = fmul fast float %5289, %5293
  %5295 = fadd fast float %5294, %5290
  %5296 = fmul fast float %5286, 0x4073BEBE20000000
  %5297 = fadd fast float %5296, 0xC063BEBE20000000
  %5298 = call float @dx.op.unary.f32(i32 22, float %5297)  ; Frc(value)
  %5299 = fmul fast float %5290, %5298
  %5300 = fadd fast float %5299, %5289
  %5301 = fmul fast float %5295, %5300
  %5302 = call float @dx.op.unary.f32(i32 22, float %5301)  ; Frc(value)
  %5303 = add i32 %321, 12
  %5304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.i32 %5304, 0
  %5306 = and i32 %5305, 255
  %5307 = uitofp i32 %5306 to float
  %5308 = fmul fast float %5307, 0x3F70101020000000
  %5309 = fcmp fast olt float %5302, %5308
  br i1 %5309, label %5310, label %5311

; <label>:5310                                    ; preds = %5281
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5311

; <label>:5311                                    ; preds = %5310, %5281, %5268
  %5312 = fsub fast float -0.000000e+00, %197
  %5313 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = call float @dx.op.unary.f32(i32 25, float %5313)  ; Rsqrt(value)
  %5315 = fmul fast float %5314, %195
  %5316 = fmul fast float %5314, %196
  %5317 = fmul fast float %5314, %197
  %5318 = fsub fast float -0.000000e+00, %5315
  %5319 = fsub fast float -0.000000e+00, %5316
  %5320 = fsub fast float -0.000000e+00, %5317
  %5321 = select i1 %267, float 0.000000e+00, float %5274
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %5318, float %5319, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5275, float %5276, float %5277)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = fmul fast float %5324, 2.000000e+00
  %5326 = fmul fast float %5325, %5275
  %5327 = fmul fast float %5325, %5276
  %5328 = fmul fast float %5325, %5277
  %5329 = fsub fast float %5315, %5326
  %5330 = fsub fast float %5316, %5327
  %5331 = fsub fast float %5317, %5328
  %5332 = call float @dx.op.binary.f32(i32 36, float %5279, float 1.000000e+00)  ; FMin(a,b)
  %5333 = fsub fast float 1.000000e+00, %5279
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = fsub fast float 1.000000e+00, %79
  %5338 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5338, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5340 = fdiv fast float %5337, %5339
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, 5.000000e-01
  %5344 = fadd fast float %5343, 5.000000e-01
  %5345 = fmul fast float %5344, %79
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = fmul fast float %5347, %5340
  %5349 = fadd fast float %5345, %5348
  %5350 = fsub fast float 5.000000e-01, %5343
  %5351 = fmul fast float %5350, %5269
  %5352 = fmul fast float %5350, %5270
  %5353 = fmul fast float %5350, %5271
  %5354 = fadd fast float %5349, %5351
  %5355 = fadd fast float %5349, %5352
  %5356 = fadd fast float %5349, %5353
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, 5.000000e-01
  %5360 = fadd fast float %5359, 5.000000e-01
  %5361 = fmul fast float %5360, %79
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = fmul fast float %5363, %5340
  %5365 = fadd fast float %5361, %5364
  %5366 = fsub fast float 5.000000e-01, %5359
  %5367 = fmul fast float %5366, %5269
  %5368 = fmul fast float %5366, %5270
  %5369 = fmul fast float %5366, %5271
  %5370 = fadd fast float %5365, %5367
  %5371 = fadd fast float %5365, %5368
  %5372 = fadd fast float %5365, %5369
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 0
  %5375 = call float @dx.op.binary.f32(i32 36, float %5269, float %5374)  ; FMin(a,b)
  %5376 = fsub fast float 1.000000e+00, %5332
  %5377 = fmul fast float %5375, %5376
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = bitcast float %5378 to i32
  %5380 = sub nsw i32 2129859010, %5379
  %5381 = bitcast i32 %5380 to float
  %5382 = call float @dx.op.binary.f32(i32 36, float %5270, float %5374)  ; FMin(a,b)
  %5383 = fmul fast float %5382, %5376
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = call float @dx.op.binary.f32(i32 36, float %5271, float %5374)  ; FMin(a,b)
  %5389 = fmul fast float %5388, %5376
  %5390 = fsub fast float 1.000000e+00, %5389
  %5391 = bitcast float %5390 to i32
  %5392 = sub nsw i32 2129859010, %5391
  %5393 = bitcast i32 %5392 to float
  %5394 = fmul fast float %5332, %80
  %5395 = fmul fast float %5394, %5354
  %5396 = fmul fast float %5395, %5381
  %5397 = fmul fast float %5332, %81
  %5398 = fmul fast float %5397, %5355
  %5399 = fmul fast float %5398, %5387
  %5400 = fmul fast float %5332, %82
  %5401 = fmul fast float %5400, %5356
  %5402 = fmul fast float %5401, %5393
  %5403 = call float @dx.op.binary.f32(i32 36, float %5272, float %5374)  ; FMin(a,b)
  %5404 = fmul fast float %5403, %5376
  %5405 = fsub fast float 1.000000e+00, %5404
  %5406 = bitcast float %5405 to i32
  %5407 = sub nsw i32 2129859010, %5406
  %5408 = bitcast i32 %5407 to float
  %5409 = call float @dx.op.binary.f32(i32 36, float %5273, float %5374)  ; FMin(a,b)
  %5410 = fmul fast float %5409, %5376
  %5411 = fsub fast float 1.000000e+00, %5410
  %5412 = bitcast float %5411 to i32
  %5413 = sub nsw i32 2129859010, %5412
  %5414 = bitcast i32 %5413 to float
  %5415 = call float @dx.op.binary.f32(i32 36, float %5321, float %5374)  ; FMin(a,b)
  %5416 = fmul fast float %5415, %5376
  %5417 = fsub fast float 1.000000e+00, %5416
  %5418 = bitcast float %5417 to i32
  %5419 = sub nsw i32 2129859010, %5418
  %5420 = bitcast i32 %5419 to float
  %5421 = fmul fast float %5394, %5370
  %5422 = fmul fast float %5421, %5408
  %5423 = fmul fast float %5397, %5371
  %5424 = fmul fast float %5423, %5414
  %5425 = fmul fast float %5400, %5372
  %5426 = fmul fast float %5425, %5420
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5399, float %5402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = select i1 %267, float 0.000000e+00, float %5396
  %5429 = select i1 %267, float %5427, float %5399
  %5430 = select i1 %267, float 0.000000e+00, float %5402
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5422, float %5424, float %5426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = select i1 %267, float 0.000000e+00, float %5422
  %5433 = select i1 %267, float %5431, float %5424
  %5434 = select i1 %267, float 0.000000e+00, float %5426
  %5435 = fmul fast float %5323, 9.843750e-01
  %5436 = fmul fast float %5278, 9.843750e-01
  %5437 = fadd fast float %5435, 7.812500e-03
  %5438 = fadd fast float %5436, 7.812500e-03
  %5439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5437, float %5438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 2
  %5441 = extractvalue %dx.types.ResRet.f32 %5439, 3
  %5442 = fmul fast float %5440, %5272
  %5443 = fmul fast float %5440, %5273
  %5444 = fmul fast float %5440, %5321
  %5445 = fadd fast float %5442, %5441
  %5446 = fadd fast float %5443, %5441
  %5447 = fadd fast float %5444, %5441
  %5448 = fcmp fast ogt float %4087, 0.000000e+00
  br i1 %5448, label %5449, label %5475

; <label>:5449                                    ; preds = %5311
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4087, float %5323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.ResRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.ResRet.f32 %5450, 2
  %5454 = fadd fast float %5451, -5.000000e-01
  %5455 = fadd fast float %5452, -5.000000e-01
  %5456 = fadd fast float %5453, -5.000000e-01
  %5457 = fsub fast float 1.000000e+00, %5272
  %5458 = fsub fast float 1.000000e+00, %5273
  %5459 = fsub fast float 1.000000e+00, %5321
  %5460 = fmul fast float %5272, 4.000000e+00
  %5461 = fmul fast float %5460, %5457
  %5462 = fmul fast float %5461, %5454
  %5463 = fmul fast float %5273, 4.000000e+00
  %5464 = fmul fast float %5463, %5458
  %5465 = fmul fast float %5464, %5455
  %5466 = fmul fast float %5321, 4.000000e+00
  %5467 = fmul fast float %5466, %5459
  %5468 = fmul fast float %5467, %5456
  %5469 = fadd fast float %5462, %5445
  %5470 = fadd fast float %5465, %5446
  %5471 = fadd fast float %5468, %5447
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  br label %5475

; <label>:5475                                    ; preds = %5449, %5311
  %5476 = phi float [ %5472, %5449 ], [ %5445, %5311 ]
  %5477 = phi float [ %5473, %5449 ], [ %5446, %5311 ]
  %5478 = phi float [ %5474, %5449 ], [ %5447, %5311 ]
  %5479 = call float @dx.op.binary.f32(i32 35, float %5477, float %5478)  ; FMax(a,b)
  %5480 = call float @dx.op.binary.f32(i32 35, float %5476, float %5479)  ; FMax(a,b)
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = fmul fast float %5481, %5428
  %5483 = fmul fast float %5481, %5429
  %5484 = fmul fast float %5481, %5430
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fcmp fast ogt float %5485, 0x3E7FF19E20000000
  %5487 = fdiv fast float 1.000000e+00, %5485
  %5488 = select i1 %5486, float %5487, float 0.000000e+00
  %5489 = fmul fast float %5488, %5269
  %5490 = fmul fast float %5488, %5270
  %5491 = fmul fast float %5488, %5271
  %5492 = fadd fast float %5489, -1.000000e+00
  %5493 = fadd fast float %5490, -1.000000e+00
  %5494 = fadd fast float %5491, -1.000000e+00
  %5495 = fmul fast float %5492, 5.000000e-01
  %5496 = fmul fast float %5493, 5.000000e-01
  %5497 = fmul fast float %5494, 5.000000e-01
  %5498 = fadd fast float %5495, 1.000000e+00
  %5499 = fadd fast float %5496, 1.000000e+00
  %5500 = fadd fast float %5497, 1.000000e+00
  %5501 = fmul fast float %5476, %5432
  %5502 = fmul fast float %5477, %5433
  %5503 = fmul fast float %5478, %5434
  %5504 = fsub fast float 1.000000e+00, %5323
  %5505 = bitcast float %5504 to i32
  %5506 = sitofp i32 %5505 to float
  %5507 = fmul fast float %5506, 5.000000e+00
  %5508 = fadd fast float %5507, 0xC1EFBF8940000000
  %5509 = fptosi float %5508 to i32
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5510, %4088
  %5512 = fmul fast float %5428, %5511
  %5513 = fmul fast float %5512, %5481
  %5514 = fmul fast float %5513, %5498
  %5515 = fmul fast float %5429, %5511
  %5516 = fmul fast float %5515, %5481
  %5517 = fmul fast float %5516, %5499
  %5518 = fmul fast float %5430, %5511
  %5519 = fmul fast float %5518, %5481
  %5520 = fmul fast float %5519, %5500
  %5521 = fmul fast float %5482, %4084
  %5522 = fmul fast float %5483, %4084
  %5523 = fmul fast float %5484, %4084
  %5524 = fadd fast float %5501, %4077
  %5525 = fadd fast float %5524, %5514
  %5526 = fmul fast float %5525, %4084
  %5527 = fadd fast float %5502, %4078
  %5528 = fadd fast float %5527, %5517
  %5529 = fmul fast float %5528, %4084
  %5530 = fadd fast float %5503, %4079
  %5531 = fadd fast float %5530, %5520
  %5532 = fmul fast float %5531, %4084
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = fcmp fast oeq float %5534, 0.000000e+00
  br i1 %5535, label %6620, label %5536

; <label>:5536                                    ; preds = %5475
  %5537 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.CBufRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.CBufRet.f32 %5540, 2
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = select i1 %267, float %5545, float %5541
  %5549 = select i1 %267, float %5547, float %5542
  %5550 = select i1 %267, float %5546, float %5543
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5553 = fmul fast float %5552, %115
  %5554 = fmul fast float %5552, %116
  %5555 = fmul fast float %5552, %117
  %5556 = fadd fast float %5553, %195
  %5557 = fadd fast float %5554, %196
  %5558 = fadd fast float %5555, %197
  %5559 = fcmp fast olt float %5534, 0.000000e+00
  br i1 %5559, label %6199, label %5560

; <label>:5560                                    ; preds = %5536
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5561, 2
  %5565 = extractvalue %dx.types.CBufRet.f32 %5561, 3
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5566, 3
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5575 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5576 = fmul fast float %5562, %5556
  %5577 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %5563, float %5576)  ; FMad(a,b,c)
  %5578 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5564, float %5577)  ; FMad(a,b,c)
  %5579 = fadd fast float %5578, %5565
  %5580 = fmul fast float %5567, %5556
  %5581 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %5568, float %5580)  ; FMad(a,b,c)
  %5582 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5569, float %5581)  ; FMad(a,b,c)
  %5583 = fadd fast float %5582, %5570
  %5584 = fmul fast float %5572, %5556
  %5585 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %5573, float %5584)  ; FMad(a,b,c)
  %5586 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5574, float %5585)  ; FMad(a,b,c)
  %5587 = fadd fast float %5586, %5575
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = fcmp fast une float %5589, 0.000000e+00
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.CBufRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.CBufRet.f32 %5591, 3
  %5595 = fmul fast float %5594, %5579
  %5596 = fmul fast float %5594, %5583
  %5597 = fadd fast float %5595, %5592
  %5598 = fadd fast float %5596, %5593
  %5599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.CBufRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.CBufRet.f32 %5599, 3
  %5603 = fmul fast float %5602, %5579
  %5604 = fmul fast float %5602, %5583
  %5605 = fadd fast float %5603, %5600
  %5606 = fadd fast float %5604, %5601
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 1
  %5609 = fsub fast float %5608, %5587
  %5610 = extractvalue %dx.types.CBufRet.f32 %5607, 2
  %5611 = fmul fast float %5609, %5610
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  br i1 %5590, label %5674, label %5614

; <label>:5614                                    ; preds = %5560
  %5615 = extractvalue %dx.types.CBufRet.f32 %5599, 2
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5618 = fadd fast float %5617, %5615
  %5619 = fcmp fast ogt float %5618, 0.000000e+00
  br i1 %5619, label %5620, label %5644

; <label>:5620                                    ; preds = %5614
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5624 = fsub fast float %5605, %5622
  %5625 = fsub fast float %5606, %5623
  %5626 = fcmp fast olt float %5624, 0.000000e+00
  %5627 = fcmp fast olt float %5625, 0.000000e+00
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5628, 1
  %5631 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5632 = extractvalue %dx.types.CBufRet.f32 %5628, 3
  %5633 = select i1 %5626, float %5629, float %5631
  %5634 = select i1 %5627, float %5630, float %5632
  %5635 = fmul fast float %5633, %5624
  %5636 = fmul fast float %5634, %5625
  %5637 = call float @dx.op.unary.f32(i32 6, float %5635)  ; FAbs(value)
  %5638 = call float @dx.op.unary.f32(i32 6, float %5636)  ; FAbs(value)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5640 = call float @dx.op.binary.f32(i32 35, float %5637, float %5638)  ; FMax(a,b)
  %5641 = fsub fast float %5639, %5640
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fmul fast float %5642, %5613
  br label %5644

; <label>:5644                                    ; preds = %5620, %5614
  %5645 = phi float [ %5643, %5620 ], [ 0.000000e+00, %5614 ]
  %5646 = extractvalue %dx.types.CBufRet.f32 %5591, 2
  %5647 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5648 = fadd fast float %5647, %5646
  %5649 = fcmp fast ogt float %5648, 0.000000e+00
  br i1 %5649, label %5650, label %5674

; <label>:5650                                    ; preds = %5644
  %5651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5652 = extractvalue %dx.types.CBufRet.f32 %5651, 0
  %5653 = extractvalue %dx.types.CBufRet.f32 %5651, 1
  %5654 = fsub fast float %5597, %5652
  %5655 = fsub fast float %5598, %5653
  %5656 = fcmp fast olt float %5654, 0.000000e+00
  %5657 = fcmp fast olt float %5655, 0.000000e+00
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = select i1 %5656, float %5659, float %5661
  %5664 = select i1 %5657, float %5660, float %5662
  %5665 = fmul fast float %5663, %5654
  %5666 = fmul fast float %5664, %5655
  %5667 = call float @dx.op.unary.f32(i32 6, float %5665)  ; FAbs(value)
  %5668 = call float @dx.op.unary.f32(i32 6, float %5666)  ; FAbs(value)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5670 = call float @dx.op.binary.f32(i32 35, float %5667, float %5668)  ; FMax(a,b)
  %5671 = fsub fast float %5669, %5670
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5672, %5613
  br label %5674

; <label>:5674                                    ; preds = %5650, %5644, %5560
  %5675 = phi float [ 0.000000e+00, %5560 ], [ %5673, %5650 ], [ 0.000000e+00, %5644 ]
  %5676 = phi float [ 0.000000e+00, %5560 ], [ %5645, %5650 ], [ %5645, %5644 ]
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = fsub fast float %5579, %5681
  %5684 = fsub fast float %5583, %5682
  %5685 = fcmp fast olt float %5683, 0.000000e+00
  %5686 = fcmp fast olt float %5684, 0.000000e+00
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.CBufRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5691 = extractvalue %dx.types.CBufRet.f32 %5687, 3
  %5692 = select i1 %5685, float %5688, float %5690
  %5693 = select i1 %5686, float %5689, float %5691
  %5694 = fmul fast float %5692, %5683
  %5695 = fmul fast float %5693, %5684
  %5696 = call float @dx.op.unary.f32(i32 6, float %5694)  ; FAbs(value)
  %5697 = call float @dx.op.unary.f32(i32 6, float %5695)  ; FAbs(value)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5699 = call float @dx.op.binary.f32(i32 35, float %5696, float %5697)  ; FMax(a,b)
  %5700 = fsub fast float %5698, %5699
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = call float @dx.op.binary.f32(i32 36, float %5701, float %5679)  ; FMin(a,b)
  %5703 = fmul fast float %5702, %5613
  %5704 = fsub fast float %5675, %5703
  %5705 = fsub fast float %5676, %5675
  %5706 = fsub fast float %5705, %5703
  %5707 = call float @dx.op.binary.f32(i32 35, float %5675, float %5676)  ; FMax(a,b)
  %5708 = call float @dx.op.binary.f32(i32 35, float %5703, float %5707)  ; FMax(a,b)
  %5709 = fcmp fast olt float %5708, 1.000000e+00
  br i1 %5709, label %5710, label %6108, !dx.controlflow.hints !97

; <label>:5710                                    ; preds = %5674
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 0
  %5713 = fcmp fast une float %5712, 0.000000e+00
  br i1 %5713, label %5714, label %6108, !dx.controlflow.hints !98

; <label>:5714                                    ; preds = %5710
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5719 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = extractvalue %dx.types.CBufRet.f32 %5720, 1
  %5723 = extractvalue %dx.types.CBufRet.f32 %5720, 2
  %5724 = extractvalue %dx.types.CBufRet.f32 %5720, 3
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5727 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5728 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5729 = extractvalue %dx.types.CBufRet.f32 %5725, 3
  %5730 = fmul fast float %5716, %5556
  %5731 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %5717, float %5730)  ; FMad(a,b,c)
  %5732 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5718, float %5731)  ; FMad(a,b,c)
  %5733 = fadd fast float %5732, %5719
  %5734 = fmul fast float %5721, %5556
  %5735 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %5722, float %5734)  ; FMad(a,b,c)
  %5736 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5723, float %5735)  ; FMad(a,b,c)
  %5737 = fadd fast float %5736, %5724
  %5738 = fmul fast float %5726, %5556
  %5739 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %5727, float %5738)  ; FMad(a,b,c)
  %5740 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %5728, float %5739)  ; FMad(a,b,c)
  %5741 = fadd fast float %5740, %5729
  %5742 = fcmp fast oge float %5733, 1.000000e+00
  %5743 = fcmp fast oge float %5737, 1.000000e+00
  %5744 = or i1 %5742, %5743
  %5745 = fcmp fast olt float %5733, 0.000000e+00
  %5746 = fcmp fast olt float %5737, 0.000000e+00
  %5747 = or i1 %5745, %5746
  %5748 = or i1 %5744, %5747
  br i1 %5748, label %6108, label %5749, !dx.controlflow.hints !99

; <label>:5749                                    ; preds = %5714
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.i32 %5754, 2
  %5756 = uitofp i32 %5755 to float
  %5757 = extractvalue %dx.types.CBufRet.i32 %5754, 3
  %5758 = uitofp i32 %5757 to float
  %5759 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5760 = fmul fast float %5759, 2.000000e+00
  %5761 = fsub fast float %5733, %5751
  %5762 = fsub fast float %5737, %5752
  %5763 = fmul fast float %5760, %5761
  %5764 = fmul fast float %5760, %5762
  %5765 = fdiv fast float 1.000000e+00, %5539
  %5766 = fmul fast float %5764, %5765
  %5767 = call float @dx.op.unary.f32(i32 6, float %5766)  ; FAbs(value)
  %5768 = fmul fast float %5753, %5558
  %5769 = fmul fast float %5768, %5760
  %5770 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5771 = call float @dx.op.unary.f32(i32 6, float %5763)  ; FAbs(value)
  %5772 = call float @dx.op.binary.f32(i32 35, float %5770, float %5767)  ; FMax(a,b)
  %5773 = call float @dx.op.binary.f32(i32 35, float %5771, float %5772)  ; FMax(a,b)
  %5774 = fmul fast float %5773, 2.000000e+00
  %5775 = call float @dx.op.unary.f32(i32 23, float %5774)  ; Log(value)
  %5776 = call float @dx.op.binary.f32(i32 35, float %5775, float %5756)  ; FMax(a,b)
  %5777 = call float @dx.op.unary.f32(i32 22, float %5776)  ; Frc(value)
  %5778 = fadd fast float %5777, 0xBFEA666660000000
  %5779 = fmul fast float %5778, 8.000000e+00
  %5780 = call float @dx.op.unary.f32(i32 7, float %5779)  ; Saturate(value)
  %5781 = call float @dx.op.unary.f32(i32 27, float %5776)  ; Round_ni(value)
  %5782 = fadd fast float %5781, %5780
  %5783 = call float @dx.op.binary.f32(i32 36, float %5782, float %5758)  ; FMin(a,b)
  %5784 = call float @dx.op.unary.f32(i32 27, float %5783)  ; Round_ni(value)
  %5785 = fsub fast float -0.000000e+00, %5784
  %5786 = call float @dx.op.unary.f32(i32 21, float %5785)  ; Exp(value)
  %5787 = fmul fast float %5786, %5760
  %5788 = fmul fast float %5787, %5733
  %5789 = fmul fast float %5787, %5737
  %5790 = fmul fast float %5788, 2.500000e-01
  %5791 = fmul fast float %5789, 2.500000e-01
  %5792 = fadd fast float %5790, 5.000000e-01
  %5793 = fadd fast float %5791, 5.000000e-01
  %5794 = fsub fast float %5758, %5756
  %5795 = fptoui float %5794 to i32
  %5796 = add i32 %5795, 320
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5796)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = fcmp fast une float %5783, %5758
  %5801 = fsub fast float %5733, %5798
  %5802 = fsub fast float %5737, %5799
  %5803 = call float @dx.op.unary.f32(i32 6, float %5801)  ; FAbs(value)
  %5804 = call float @dx.op.unary.f32(i32 6, float %5802)  ; FAbs(value)
  %5805 = fmul fast float %5803, %5787
  %5806 = fmul fast float %5804, %5787
  %5807 = fcmp fast olt float %5805, 1.000000e+00
  %5808 = fcmp fast olt float %5806, 1.000000e+00
  %5809 = and i1 %5807, %5808
  %5810 = or i1 %5800, %5809
  br i1 %5810, label %5811, label %6108, !dx.controlflow.hints !100

; <label>:5811                                    ; preds = %5749
  %5812 = fmul fast float %5789, 5.000000e-01
  %5813 = fmul fast float %5788, 5.000000e-01
  %5814 = fadd fast float %5812, 5.000000e-01
  %5815 = fadd fast float %5813, 5.000000e-01
  %5816 = sitofp i32 %5755 to float
  %5817 = fsub fast float %5783, %5816
  %5818 = call float @dx.op.unary.f32(i32 27, float %5817)  ; Round_ni(value)
  %5819 = call float @dx.op.unary.f32(i32 22, float %5783)  ; Frc(value)
  %5820 = call float @dx.op.unary.f32(i32 22, float %5815)  ; Frc(value)
  %5821 = call float @dx.op.unary.f32(i32 22, float %5814)  ; Frc(value)
  %5822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5820, float %5821, float %5818, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.ResRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.ResRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.ResRet.f32 %5822, 3
  %5827 = fcmp fast ogt float %5819, 0.000000e+00
  br i1 %5827, label %5828, label %5849, !dx.controlflow.hints !101

; <label>:5828                                    ; preds = %5811
  %5829 = fadd fast float %5818, 1.000000e+00
  %5830 = call float @dx.op.unary.f32(i32 22, float %5792)  ; Frc(value)
  %5831 = call float @dx.op.unary.f32(i32 22, float %5793)  ; Frc(value)
  %5832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5830, float %5831, float %5829, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.ResRet.f32 %5832, 1
  %5835 = extractvalue %dx.types.ResRet.f32 %5832, 2
  %5836 = extractvalue %dx.types.ResRet.f32 %5832, 3
  %5837 = fsub fast float %5833, %5823
  %5838 = fsub fast float %5834, %5824
  %5839 = fsub fast float %5835, %5825
  %5840 = fsub fast float %5836, %5826
  %5841 = fmul fast float %5837, %5819
  %5842 = fmul fast float %5838, %5819
  %5843 = fmul fast float %5839, %5819
  %5844 = fmul fast float %5840, %5819
  %5845 = fadd fast float %5841, %5823
  %5846 = fadd fast float %5842, %5824
  %5847 = fadd fast float %5843, %5825
  %5848 = fadd fast float %5844, %5826
  br label %5849

; <label>:5849                                    ; preds = %5828, %5811
  %5850 = phi float [ %5845, %5828 ], [ %5823, %5811 ]
  %5851 = phi float [ %5846, %5828 ], [ %5824, %5811 ]
  %5852 = phi float [ %5847, %5828 ], [ %5825, %5811 ]
  %5853 = phi float [ %5848, %5828 ], [ %5826, %5811 ]
  %5854 = fadd fast float %5850, -5.000000e-01
  %5855 = fadd fast float %5852, -5.000000e-01
  %5856 = fmul fast float %5854, 0xBFD5555560000000
  %5857 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5855, float %5856)  ; FMad(a,b,c)
  %5858 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5851, float 0.000000e+00)  ; FMad(a,b,c)
  %5859 = fadd fast float %5858, %5853
  %5860 = fmul fast float %5854, -7.500000e-01
  %5861 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5855, float %5860)  ; FMad(a,b,c)
  %5862 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5851, float 0.000000e+00)  ; FMad(a,b,c)
  %5863 = fadd fast float %5862, %5853
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 0
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5871 = fsub fast float %5867, %5857
  %5872 = fsub fast float %5868, %5859
  %5873 = fsub fast float %5869, %5861
  %5874 = fsub fast float %5870, %5863
  %5875 = fmul fast float %5871, %5865
  %5876 = fmul fast float %5872, %5865
  %5877 = fmul fast float %5873, %5865
  %5878 = fmul fast float %5874, %5865
  %5879 = fadd fast float %5875, %5857
  %5880 = fadd fast float %5876, %5859
  %5881 = fadd fast float %5877, %5861
  %5882 = fadd fast float %5878, %5863
  %5883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5884 = extractvalue %dx.types.ResRet.i32 %5883, 0
  %5885 = and i32 %5884, 536870911
  %5886 = uitofp i32 %5885 to float
  %5887 = fmul fast float %5886, %5733
  %5888 = fmul fast float %5886, %5737
  %5889 = fptoui float %5887 to i32
  %5890 = fptoui float %5888 to i32
  %5891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.i32 %5891, 0
  %5893 = and i32 %5892, 31
  %5894 = lshr i32 %5889, %5893
  %5895 = lshr i32 %5890, %5893
  %5896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.i32 %5896, 0
  %5898 = and i32 %5897, 31
  %5899 = shl i32 1, %5898
  %5900 = call i32 @dx.op.binary.i32(i32 40, i32 %5899, i32 4)  ; UMin(a,b)
  %5901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5902 = extractvalue %dx.types.ResRet.i32 %5901, 0
  %5903 = extractvalue %dx.types.ResRet.i32 %5901, 1
  %5904 = icmp eq i32 %5900, 0
  br i1 %5904, label %5946, label %5905

; <label>:5905                                    ; preds = %5849
  br label %5906

; <label>:5906                                    ; preds = %5934, %5905
  %5907 = phi i32 [ %5937, %5934 ], [ 0, %5905 ]
  %5908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.i32 %5908, 0
  %5910 = lshr i32 %5909, 16
  %5911 = and i32 %5910, 31
  %5912 = shl i32 %5895, %5911
  %5913 = add i32 %5912, %5894
  %5914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.i32 %5914, 0
  %5916 = and i32 %5915, 31
  %5917 = shl i32 %5913, %5916
  %5918 = add i32 %5917, %5907
  %5919 = shl i32 %5918, 2
  %5920 = add i32 %5919, 32
  %5921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5920, i32 undef)  ; BufferLoad(srv,index,wot)
  %5922 = extractvalue %dx.types.ResRet.i32 %5921, 0
  %5923 = icmp slt i32 %5922, 0
  %5924 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5907
  %5925 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5907
  %5926 = bitcast float* %5924 to i32*
  %5927 = bitcast float* %5925 to i32*
  br i1 %5923, label %5928, label %5934

; <label>:5928                                    ; preds = %5906
  %5929 = and i32 %5922, 1073741823
  %5930 = add nuw nsw i32 %5929, 20
  %5931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5930, i32 undef)  ; BufferLoad(srv,index,wot)
  %5932 = extractvalue %dx.types.ResRet.i32 %5931, 0
  %5933 = extractvalue %dx.types.ResRet.i32 %5931, 1
  br label %5934

; <label>:5934                                    ; preds = %5928, %5906
  %5935 = phi i32 [ %5932, %5928 ], [ %5902, %5906 ]
  %5936 = phi i32 [ %5933, %5928 ], [ %5903, %5906 ]
  store i32 %5935, i32* %5926, align 4
  store i32 %5936, i32* %5927, align 4
  %5937 = add nuw i32 %5907, 1
  %5938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.i32 %5938, 2
  %5940 = icmp eq i32 %5939, 0
  %5941 = icmp ugt i32 %5922, -1073741825
  %5942 = and i1 %5941, %5940
  %5943 = icmp ult i32 %5937, %5900
  %5944 = and i1 %5942, %5943
  br i1 %5944, label %5906, label %5945

; <label>:5945                                    ; preds = %5934
  br label %5946

; <label>:5946                                    ; preds = %5945, %5849
  %5947 = phi i32 [ 0, %5849 ], [ %5937, %5945 ]
  %5948 = extractvalue %dx.types.CBufRet.f32 %5711, 2
  %5949 = fptoui float %5948 to i32
  %5950 = icmp eq i32 %5949, 0
  br i1 %5950, label %6002, label %5951

; <label>:5951                                    ; preds = %5946
  br label %5952

; <label>:5952                                    ; preds = %5997, %5951
  %5953 = phi i32 [ %5998, %5997 ], [ %5947, %5951 ]
  %5954 = phi i32 [ %5999, %5997 ], [ 0, %5951 ]
  %5955 = lshr i32 %5954, 2
  %5956 = and i32 %5954, 3
  %5957 = add nuw nsw i32 %5955, 83
  %5958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %5957)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.i32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.i32 %5958, 1
  %5961 = extractvalue %dx.types.CBufRet.i32 %5958, 2
  %5962 = extractvalue %dx.types.CBufRet.i32 %5958, 3
  %5963 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %5959, i32* %5963, align 4
  %5964 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %5960, i32* %5964, align 4
  %5965 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %5961, i32* %5965, align 4
  %5966 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %5962, i32* %5966, align 4
  %5967 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5956
  %5968 = load i32, i32* %5967, align 4, !tbaa !102, !noalias !106
  %5969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.i32 %5969, 0
  %5971 = lshr i32 %5970, 16
  %5972 = and i32 %5971, 31
  %5973 = shl i32 %5895, %5972
  %5974 = add i32 %5973, %5894
  %5975 = shl i32 %5974, 2
  %5976 = add i32 %5975, %5968
  %5977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5976, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.i32 %5977, 0
  %5979 = icmp eq i32 %5978, 0
  br i1 %5979, label %5997, label %5980

; <label>:5980                                    ; preds = %5952
  %5981 = icmp slt i32 %5978, 0
  %5982 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5953
  %5983 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5953
  %5984 = bitcast float* %5982 to i32*
  %5985 = bitcast float* %5983 to i32*
  br i1 %5981, label %5986, label %5993

; <label>:5986                                    ; preds = %5980
  %5987 = and i32 %5978, 1073741823
  %5988 = add i32 %5968, 20
  %5989 = add i32 %5988, %5987
  %5990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %5991 = extractvalue %dx.types.ResRet.i32 %5990, 0
  %5992 = extractvalue %dx.types.ResRet.i32 %5990, 1
  br label %5993

; <label>:5993                                    ; preds = %5986, %5980
  %5994 = phi i32 [ %5991, %5986 ], [ %5902, %5980 ]
  %5995 = phi i32 [ %5992, %5986 ], [ %5903, %5980 ]
  store i32 %5994, i32* %5984, align 4
  store i32 %5995, i32* %5985, align 4
  %5996 = add i32 %5953, 1
  br label %5997

; <label>:5997                                    ; preds = %5993, %5952
  %5998 = phi i32 [ %5953, %5952 ], [ %5996, %5993 ]
  %5999 = add nuw i32 %5954, 1
  %6000 = icmp eq i32 %5999, %5949
  br i1 %6000, label %6001, label %5952

; <label>:6001                                    ; preds = %5997
  br label %6002

; <label>:6002                                    ; preds = %6001, %5946
  %6003 = phi i32 [ %5947, %5946 ], [ %5998, %6001 ]
  %6004 = icmp eq i32 %6003, 1
  %6005 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6006 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6004, label %6007, label %6010

; <label>:6007                                    ; preds = %6002
  %6008 = load float, float* %6005, align 4
  %6009 = load float, float* %6006, align 4
  br label %6037

; <label>:6010                                    ; preds = %6002
  %6011 = load float, float* %6005, align 4
  %6012 = load float, float* %6006, align 4
  %6013 = fdiv fast float 1.000000e+00, %6012
  %6014 = fsub fast float %6011, %6013
  %6015 = icmp ugt i32 %6003, 1
  br i1 %6015, label %6016, label %6032

; <label>:6016                                    ; preds = %6010
  br label %6017

; <label>:6017                                    ; preds = %6017, %6016
  %6018 = phi float [ %6027, %6017 ], [ %6014, %6016 ]
  %6019 = phi float [ %6028, %6017 ], [ %6011, %6016 ]
  %6020 = phi i32 [ %6029, %6017 ], [ 1, %6016 ]
  %6021 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6020
  %6022 = load float, float* %6021, align 4
  %6023 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6020
  %6024 = load float, float* %6023, align 4
  %6025 = fdiv fast float 1.000000e+00, %6024
  %6026 = fsub fast float %6022, %6025
  %6027 = call float @dx.op.binary.f32(i32 36, float %6018, float %6026)  ; FMin(a,b)
  %6028 = call float @dx.op.binary.f32(i32 35, float %6019, float %6022)  ; FMax(a,b)
  %6029 = add nuw i32 %6020, 1
  %6030 = icmp eq i32 %6029, %6003
  br i1 %6030, label %6031, label %6017

; <label>:6031                                    ; preds = %6017
  br label %6032

; <label>:6032                                    ; preds = %6031, %6010
  %6033 = phi float [ %6014, %6010 ], [ %6027, %6031 ]
  %6034 = phi float [ %6011, %6010 ], [ %6028, %6031 ]
  %6035 = fsub fast float %6034, %6033
  %6036 = fdiv fast float 1.000000e+00, %6035
  br label %6037

; <label>:6037                                    ; preds = %6032, %6007
  %6038 = phi float [ %6008, %6007 ], [ %6034, %6032 ]
  %6039 = phi float [ %6009, %6007 ], [ %6036, %6032 ]
  %6040 = fadd fast float %5741, %6038
  %6041 = fmul fast float %6040, %6039
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6043 = fmul fast float %6042, 2.000000e+00
  %6044 = fsub fast float 1.000000e+00, %6043
  %6045 = fmul fast float %5879, %5879
  %6046 = fsub fast float %5880, %6045
  %6047 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6046)  ; FMax(a,b)
  %6048 = fdiv fast float 1.000000e+00, %6047
  %6049 = fmul fast float %5880, %5879
  %6050 = fsub fast float %5881, %6049
  %6051 = fsub fast float %6044, %5879
  %6052 = fmul fast float %6044, %6044
  %6053 = fsub fast float %6052, %5880
  %6054 = fmul fast float %6048, %6050
  %6055 = fmul fast float %6054, %6051
  %6056 = fsub fast float %6053, %6055
  %6057 = fmul fast float %5880, %5880
  %6058 = fsub fast float %5882, %6057
  %6059 = fmul fast float %6050, %6050
  %6060 = fmul fast float %6059, %6048
  %6061 = fsub fast float %6058, %6060
  %6062 = fdiv fast float %6056, %6061
  %6063 = fmul fast float %6062, %6050
  %6064 = fsub fast float %6051, %6063
  %6065 = fmul fast float %6064, %6048
  %6066 = fmul fast float %6065, %5879
  %6067 = fsub fast float 1.000000e+00, %6066
  %6068 = fmul fast float %6062, %5880
  %6069 = fsub fast float %6067, %6068
  %6070 = fmul fast float %6065, %6065
  %6071 = fmul fast float %6062, 4.000000e+00
  %6072 = fmul fast float %6071, %6069
  %6073 = fsub fast float %6070, %6072
  %6074 = call float @dx.op.unary.f32(i32 24, float %6073)  ; Sqrt(value)
  %6075 = fcmp fast oge float %6065, 0.000000e+00
  %6076 = fsub fast float -0.000000e+00, %6074
  %6077 = select i1 %6075, float %6076, float %6074
  %6078 = fsub fast float %6077, %6065
  %6079 = fdiv fast float %6078, %6062
  %6080 = fdiv fast float %6069, %6078
  %6081 = fmul fast float %6079, 5.000000e-01
  %6082 = fmul fast float %6080, 2.000000e+00
  %6083 = select i1 %6075, float %6081, float %6082
  %6084 = select i1 %6075, float %6082, float %6081
  %6085 = call float @dx.op.binary.f32(i32 35, float %6083, float %6084)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 36, float %6083, float %6084)  ; FMin(a,b)
  %6087 = fcmp fast ogt float %6044, %6085
  %6088 = fsub fast float %6044, %6086
  %6089 = fsub fast float %6044, %6085
  %6090 = fsub fast float %6085, %6086
  %6091 = select i1 %6087, float %6089, float %6090
  %6092 = fmul float %6088, %6091
  %6093 = select i1 %6087, float %6086, float %6044
  %6094 = fcmp fast ogt float %6044, %6086
  %6095 = fmul fast float %6093, %6085
  %6096 = fadd fast float %6093, %6085
  %6097 = fmul fast float %6096, %5879
  %6098 = fadd fast float %6095, %5880
  %6099 = fsub fast float %6098, %6097
  %6100 = fdiv fast float %6099, %6092
  %6101 = select i1 %6094, float %6100, float 0.000000e+00
  %6102 = fsub fast float 1.000000e+00, %6101
  %6103 = select i1 %6087, float %6102, float %6101
  %6104 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6105 = extractvalue %dx.types.CBufRet.f32 %5864, 3
  %6106 = fmul fast float %6105, %6104
  %6107 = fsub fast float 1.000000e+00, %6106
  br label %6108

; <label>:6108                                    ; preds = %6037, %5749, %5714, %5710, %5674
  %6109 = phi float [ 1.000000e+00, %5674 ], [ %6107, %6037 ], [ 1.000000e+00, %5714 ], [ 1.000000e+00, %5749 ], [ 1.000000e+00, %5710 ]
  %6110 = fcmp fast ogt float %5706, 0.000000e+00
  br i1 %6110, label %6111, label %6119, !dx.controlflow.hints !115

; <label>:6111                                    ; preds = %6108
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6114 = fadd fast float %6113, %5587
  %6115 = call float @dx.op.binary.f32(i32 35, float %6114, float 0.000000e+00)  ; FMax(a,b)
  %6116 = fadd fast float %6115, 0x3F10000000000000
  %6117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5605, float %5606, float undef, float undef, i32 0, i32 0, i32 undef, float %6116)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  br label %6119

; <label>:6119                                    ; preds = %6111, %6108
  %6120 = phi float [ %6118, %6111 ], [ 1.000000e+00, %6108 ]
  %6121 = fcmp fast ogt float %5704, 0.000000e+00
  br i1 %6121, label %6122, label %6130, !dx.controlflow.hints !116

; <label>:6122                                    ; preds = %6119
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6125 = fadd fast float %6124, %5587
  %6126 = call float @dx.op.binary.f32(i32 35, float %6125, float 0.000000e+00)  ; FMax(a,b)
  %6127 = fadd fast float %6126, 0x3F10000000000000
  %6128 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5597, float %5598, float undef, float undef, i32 0, i32 0, i32 undef, float %6127)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  br label %6130

; <label>:6130                                    ; preds = %6122, %6119
  %6131 = phi float [ %6129, %6122 ], [ 1.000000e+00, %6119 ]
  %6132 = fcmp fast ogt float %5703, 0.000000e+00
  br i1 %6132, label %6133, label %6145, !dx.controlflow.hints !117

; <label>:6133                                    ; preds = %6130
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 0
  %6136 = fadd fast float %6135, %5587
  %6137 = call float @dx.op.binary.f32(i32 35, float %6136, float 0.000000e+00)  ; FMax(a,b)
  %6138 = fadd fast float %6137, 0x3F10000000000000
  br i1 %5590, label %6139, label %6142, !dx.controlflow.hints !118

; <label>:6139                                    ; preds = %6133
  %6140 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5579, float %5583, float undef, float undef, i32 0, i32 0, i32 undef, float %6138)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6141 = extractvalue %dx.types.ResRet.f32 %6140, 0
  br label %6145

; <label>:6142                                    ; preds = %6133
  %6143 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5579, float %5583, float undef, float undef, i32 0, i32 0, i32 undef, float %6138)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6144 = extractvalue %dx.types.ResRet.f32 %6143, 0
  br label %6145

; <label>:6145                                    ; preds = %6142, %6139, %6130
  %6146 = phi float [ %6141, %6139 ], [ %6144, %6142 ], [ 1.000000e+00, %6130 ]
  %6147 = fsub fast float %6120, %6109
  %6148 = fmul fast float %6147, %5676
  %6149 = fadd fast float %6148, %6109
  %6150 = fsub fast float %6131, %6149
  %6151 = fmul fast float %6150, %5675
  %6152 = fadd fast float %6151, %6149
  %6153 = fsub fast float %6146, %6152
  %6154 = fmul fast float %6153, %5703
  %6155 = fadd fast float %6154, %6152
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 2
  %6158 = fcmp fast ogt float %6157, 0.000000e+00
  br i1 %6158, label %6159, label %6199, !dx.controlflow.hints !119

; <label>:6159                                    ; preds = %6145
  %6160 = fcmp fast ugt float %6157, 0.000000e+00
  br i1 %6160, label %6161, label %6196

; <label>:6161                                    ; preds = %6159
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6171 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6172 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6156, 1
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = extractvalue %dx.types.CBufRet.f32 %6174, 2
  %6178 = fadd fast float %6175, %5556
  %6179 = fadd fast float %6176, %5557
  %6180 = fadd fast float %6177, %5558
  %6181 = fmul fast float %6178, %6163
  %6182 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6179, float %6181)  ; FMad(a,b,c)
  %6183 = call float @dx.op.tertiary.f32(i32 46, float %6165, float %6180, float %6182)  ; FMad(a,b,c)
  %6184 = fadd fast float %6183, %6166
  %6185 = fmul fast float %6178, %6168
  %6186 = call float @dx.op.tertiary.f32(i32 46, float %6169, float %6179, float %6185)  ; FMad(a,b,c)
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6170, float %6180, float %6186)  ; FMad(a,b,c)
  %6188 = fadd fast float %6187, %6171
  %6189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6184, float %6188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = fmul fast float %6190, %6173
  %6192 = fadd fast float %6191, %6172
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fmul fast float %6193, %6157
  %6195 = fsub fast float 1.000000e+00, %6194
  br label %6196

; <label>:6196                                    ; preds = %6161, %6159
  %6197 = phi float [ %6195, %6161 ], [ 1.000000e+00, %6159 ]
  %6198 = fmul fast float %6197, %6155
  br label %6199

; <label>:6199                                    ; preds = %6196, %6145, %5536
  %6200 = phi float [ 1.000000e+00, %5536 ], [ %6198, %6196 ], [ %6155, %6145 ]
  %6201 = call float @dx.op.binary.f32(i32 36, float %6200, float %6200)  ; FMin(a,b)
  %6202 = call float @dx.op.binary.f32(i32 36, float %6200, float %6201)  ; FMin(a,b)
  %6203 = fcmp fast ogt float %6202, 0.000000e+00
  br i1 %6203, label %6204, label %6364, !dx.controlflow.hints !120

; <label>:6204                                    ; preds = %6199
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = extractvalue %dx.types.CBufRet.f32 %6215, 3
  %6220 = fmul fast float %6206, %5556
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %6207, float %6220)  ; FMad(a,b,c)
  %6222 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %6208, float %6221)  ; FMad(a,b,c)
  %6223 = fadd fast float %6222, %6209
  %6224 = fmul fast float %6211, %5556
  %6225 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %6212, float %6224)  ; FMad(a,b,c)
  %6226 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %6213, float %6225)  ; FMad(a,b,c)
  %6227 = fadd fast float %6226, %6214
  %6228 = fmul fast float %6216, %5556
  %6229 = call float @dx.op.tertiary.f32(i32 46, float %5557, float %6217, float %6228)  ; FMad(a,b,c)
  %6230 = call float @dx.op.tertiary.f32(i32 46, float %5558, float %6218, float %6229)  ; FMad(a,b,c)
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6235 = fmul fast float %6234, %6223
  %6236 = fmul fast float %6234, %6227
  %6237 = fadd fast float %6235, %6232
  %6238 = fadd fast float %6236, %6233
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = fsub fast float %6237, %6240
  %6243 = fsub fast float %6238, %6241
  %6244 = fcmp fast olt float %6242, 0.000000e+00
  %6245 = fcmp fast olt float %6243, 0.000000e+00
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = select i1 %6244, float %6247, float %6249
  %6252 = select i1 %6245, float %6248, float %6250
  %6253 = fmul fast float %6251, %6242
  %6254 = fmul fast float %6252, %6243
  %6255 = call float @dx.op.unary.f32(i32 6, float %6253)  ; FAbs(value)
  %6256 = call float @dx.op.unary.f32(i32 6, float %6254)  ; FAbs(value)
  %6257 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %6258 = call float @dx.op.binary.f32(i32 35, float %6255, float %6256)  ; FMax(a,b)
  %6259 = fsub fast float %6257, %6258
  %6260 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6261 = fcmp fast ogt float %6260, 0.000000e+00
  br i1 %6261, label %6262, label %6303, !dx.controlflow.hints !121

; <label>:6262                                    ; preds = %6204
  %6263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6237, float %6238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6265 = fcmp fast ogt float %6264, 0.000000e+00
  br i1 %6265, label %6266, label %6298

; <label>:6266                                    ; preds = %6262
  %6267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6237, float %6238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6272 = fsub fast float 1.000000e+00, %6219
  %6273 = fsub fast float %6272, %6230
  %6274 = fmul fast float %6273, 0x400921FB60000000
  %6275 = fadd fast float %6274, 0x3FF921FB60000000
  %6276 = call float @dx.op.unary.f32(i32 13, float %6275)  ; Sin(value)
  %6277 = fadd fast float %6276, -1.000000e+00
  %6278 = fmul fast float %6277, 0x3FD45F3060000000
  %6279 = fmul fast float %6273, 0x401921FB60000000
  %6280 = fadd fast float %6279, 0x400921FB60000000
  %6281 = call float @dx.op.unary.f32(i32 13, float %6280)  ; Sin(value)
  %6282 = fadd fast float %6281, 0x3E7777A5C0000000
  %6283 = fmul fast float %6282, 0x3FC45F3060000000
  %6284 = fmul fast float %6273, 0x4022D97C80000000
  %6285 = fadd fast float %6284, 0x4012D97C80000000
  %6286 = call float @dx.op.unary.f32(i32 13, float %6285)  ; Sin(value)
  %6287 = fadd fast float %6286, 1.000000e+00
  %6288 = fmul fast float %6287, 0x3FBB2995E0000000
  %6289 = fmul fast float %6273, 0x402921FB60000000
  %6290 = fadd fast float %6289, 0x401921FB60000000
  %6291 = call float @dx.op.unary.f32(i32 13, float %6290)  ; Sin(value)
  %6292 = fadd fast float %6291, 0xBE8777A5C0000000
  %6293 = fmul fast float %6292, 0x3FB45F3060000000
  %6294 = call float @dx.op.dot4.f32(i32 56, float %6268, float %6269, float %6270, float %6271, float %6278, float %6283, float %6288, float %6293)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6295 = fmul fast float %6294, 0xBFF7154760000000
  %6296 = call float @dx.op.unary.f32(i32 21, float %6295)  ; Exp(value)
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  br label %6298

; <label>:6298                                    ; preds = %6266, %6262
  %6299 = phi float [ %6297, %6266 ], [ 1.000000e+00, %6262 ]
  %6300 = fadd fast float %6299, -1.000000e+00
  %6301 = fmul fast float %6300, %6260
  %6302 = fadd fast float %6301, 1.000000e+00
  br label %6303

; <label>:6303                                    ; preds = %6298, %6204
  %6304 = phi float [ %6302, %6298 ], [ 1.000000e+00, %6204 ]
  %6305 = fmul fast float %6304, %6200
  %6306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6306, 0
  %6308 = extractvalue %dx.types.CBufRet.f32 %6306, 1
  %6309 = extractvalue %dx.types.CBufRet.f32 %6306, 2
  %6310 = fadd fast float %6307, %195
  %6311 = fadd fast float %6308, %196
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6314 = fsub fast float -0.000000e+00, %6310
  %6315 = fsub fast float -0.000000e+00, %6311
  %6316 = fsub fast float %5312, %6309
  %6317 = fadd fast float %6316, %6313
  %6318 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6314, float %6315, float %6317)  ; Dot3(ax,ay,az,bx,by,bz)
  %6319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5537, float %5538, float %5539)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = fdiv fast float 1.000000e+00, %6319
  %6321 = fmul fast float %6320, %6318
  %6322 = fmul fast float %5537, %6321
  %6323 = fmul fast float %5538, %6321
  %6324 = fadd fast float %6322, %6310
  %6325 = fadd fast float %6323, %6311
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = fsub fast float %6324, %6327
  %6330 = fsub fast float %6325, %6328
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6334 = fmul fast float %6329, %6332
  %6335 = fmul fast float %6330, %6333
  %6336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.i32 %6336, 3
  %6338 = icmp eq i32 %6337, 0
  br i1 %6338, label %6344, label %6339

; <label>:6339                                    ; preds = %6303
  %6340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6334, float %6335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.ResRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.ResRet.f32 %6340, 2
  br label %6349

; <label>:6344                                    ; preds = %6303
  %6345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6334, float %6335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6346 = extractvalue %dx.types.ResRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.ResRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.ResRet.f32 %6345, 2
  br label %6349

; <label>:6349                                    ; preds = %6344, %6339
  %6350 = phi float [ %6341, %6339 ], [ %6346, %6344 ]
  %6351 = phi float [ %6342, %6339 ], [ %6347, %6344 ]
  %6352 = phi float [ %6343, %6339 ], [ %6348, %6344 ]
  %6353 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6354 = fmul fast float %6353, %6350
  %6355 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6356 = fsub fast float %6321, %6355
  %6357 = fsub fast float %6356, %6354
  %6358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6357)  ; FMax(a,b)
  %6359 = fmul fast float %6358, %6351
  %6360 = call float @dx.op.binary.f32(i32 36, float %6352, float %6359)  ; FMin(a,b)
  %6361 = fmul fast float %6360, 0xBFF7154760000000
  %6362 = call float @dx.op.unary.f32(i32 21, float %6361)  ; Exp(value)
  %6363 = fmul fast float %6305, %6362
  br label %6364

; <label>:6364                                    ; preds = %6349, %6199
  %6365 = phi float [ %6363, %6349 ], [ %6200, %6199 ]
  %6366 = call float @dx.op.binary.f32(i32 36, float %6365, float %6365)  ; FMin(a,b)
  %6367 = call float @dx.op.binary.f32(i32 36, float %6365, float %6366)  ; FMin(a,b)
  %6368 = fcmp fast ogt float %6367, 0.000000e+00
  br i1 %6368, label %6369, label %6620, !dx.controlflow.hints !122

; <label>:6369                                    ; preds = %6364
  %6370 = fmul fast float %6365, %5548
  %6371 = fmul fast float %6365, %5549
  %6372 = fmul fast float %6365, %5550
  %6373 = fsub fast float %197, %4489
  %6374 = fcmp fast ogt float %6373, 0.000000e+00
  %6375 = fmul fast float %5537, 5.120000e+02
  %6376 = fmul fast float %5538, 5.120000e+02
  %6377 = fmul fast float %5539, 5.120000e+02
  %6378 = fadd fast float %6377, %197
  %6379 = fsub fast float %4489, %6378
  %6380 = fmul fast float %6379, 2.000000e+00
  %6381 = fadd fast float %6380, %6378
  %6382 = select i1 %6374, float %6381, float %6378
  %6383 = fsub fast float %6382, %197
  %6384 = call float @dx.op.dot3.f32(i32 55, float %6375, float %6376, float %6383, float %6375, float %6376, float %6383)  ; Dot3(ax,ay,az,bx,by,bz)
  %6385 = call float @dx.op.unary.f32(i32 25, float %6384)  ; Rsqrt(value)
  %6386 = fmul fast float %6385, %6375
  %6387 = fmul fast float %6385, %6376
  %6388 = fmul fast float %6385, %6383
  %6389 = fsub fast float %4489, %197
  %6390 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6389)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6386, float %6387, float %6388)  ; Dot3(ax,ay,az,bx,by,bz)
  %6392 = fdiv fast float 1.000000e+00, %6391
  %6393 = fmul fast float %6392, %6390
  %6394 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6373, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6395 = fcmp fast ogt float %6394, 0.000000e+00
  %6396 = fcmp fast olt float %6394, 0.000000e+00
  %6397 = zext i1 %6395 to i32
  %6398 = zext i1 %6396 to i32
  %6399 = sub nsw i32 %6397, %6398
  %6400 = sitofp i32 %6399 to float
  %6401 = fsub fast float %6382, %4489
  %6402 = call float @dx.op.dot3.f32(i32 55, float %6375, float %6376, float %6401, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = fcmp fast ogt float %6402, 0.000000e+00
  %6404 = fcmp fast olt float %6402, 0.000000e+00
  %6405 = zext i1 %6403 to i32
  %6406 = zext i1 %6404 to i32
  %6407 = sub nsw i32 %6405, %6406
  %6408 = sitofp i32 %6407 to float
  %6409 = fcmp fast une float %6400, %6408
  br i1 %6409, label %6410, label %6420

; <label>:6410                                    ; preds = %6369
  %6411 = fmul fast float %6393, %6388
  %6412 = fmul fast float %6393, %6387
  %6413 = fmul fast float %6393, %6386
  %6414 = fmul fast float %6413, %6413
  %6415 = fmul fast float %6412, %6412
  %6416 = fadd fast float %6414, %6415
  %6417 = fmul fast float %6411, %6411
  %6418 = fadd fast float %6416, %6417
  %6419 = call float @dx.op.unary.f32(i32 24, float %6418)  ; Sqrt(value)
  br label %6430

; <label>:6420                                    ; preds = %6369
  %6421 = icmp slt i32 %6399, 0
  br i1 %6421, label %6422, label %6430

; <label>:6422                                    ; preds = %6420
  %6423 = fsub fast float %197, %6382
  %6424 = fmul fast float %6375, %6375
  %6425 = fmul fast float %6376, %6376
  %6426 = fadd fast float %6424, %6425
  %6427 = fmul fast float %6423, %6423
  %6428 = fadd fast float %6426, %6427
  %6429 = call float @dx.op.unary.f32(i32 24, float %6428)  ; Sqrt(value)
  br label %6430

; <label>:6430                                    ; preds = %6422, %6420, %6410
  %6431 = phi float [ %6419, %6410 ], [ %6429, %6422 ], [ 0.000000e+00, %6420 ]
  %6432 = fsub fast float -0.000000e+00, %6431
  %6433 = select i1 %6374, float -0.000000e+00, float %6432
  %6434 = fmul fast float %4490, 0x3FF7154760000000
  %6435 = fmul fast float %6434, %6433
  %6436 = fmul fast float %4491, 0x3FF7154760000000
  %6437 = fmul fast float %6436, %6433
  %6438 = fmul fast float %4492, 0x3FF7154760000000
  %6439 = fmul fast float %6438, %6433
  %6440 = call float @dx.op.unary.f32(i32 21, float %6435)  ; Exp(value)
  %6441 = call float @dx.op.unary.f32(i32 21, float %6437)  ; Exp(value)
  %6442 = call float @dx.op.unary.f32(i32 21, float %6439)  ; Exp(value)
  %6443 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  %6444 = call float @dx.op.unary.f32(i32 7, float %6441)  ; Saturate(value)
  %6445 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6446 = fmul fast float %6370, %6443
  %6447 = fmul fast float %6371, %6444
  %6448 = fmul fast float %6372, %6445
  %6449 = fsub fast float %5537, %5315
  %6450 = fsub fast float %5538, %5316
  %6451 = fsub fast float %5539, %5317
  %6452 = call float @dx.op.dot3.f32(i32 55, float %6449, float %6450, float %6451, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = call float @dx.op.unary.f32(i32 25, float %6452)  ; Rsqrt(value)
  %6454 = fmul fast float %6453, %6449
  %6455 = fmul fast float %6453, %6450
  %6456 = fmul fast float %6453, %6451
  %6457 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %5275, float %5276, float %5277)  ; Dot3(ax,ay,az,bx,by,bz)
  %6458 = call float @dx.op.dot3.f32(i32 55, float %5318, float %5319, float %5320, float %6454, float %6455, float %6456)  ; Dot3(ax,ay,az,bx,by,bz)
  %6459 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6460 = fmul fast float %6459, %6459
  %6461 = fmul fast float %6460, %5336
  %6462 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6463 = fmul fast float %6462, %6459
  %6464 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %6454, float %6455, float %6456)  ; Dot3(ax,ay,az,bx,by,bz)
  %6465 = fmul fast float %6464, %6464
  %6466 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6467 = fsub fast float 1.000000e+00, %5278
  %6468 = call float @dx.op.binary.f32(i32 35, float %6467, float 0x3F847AE140000000)  ; FMax(a,b)
  %6469 = fmul fast float %6468, %6468
  %6470 = fmul fast float %6469, %6469
  %6471 = fsub fast float 1.000000e+00, %6470
  %6472 = fmul fast float %5323, %5323
  %6473 = fmul fast float %6472, %6471
  %6474 = fadd fast float %6473, %6470
  %6475 = bitcast float %6474 to i32
  %6476 = ashr i32 %6475, 1
  %6477 = add nsw i32 %6476, 532487669
  %6478 = bitcast i32 %6477 to float
  %6479 = fadd fast float %6478, %5323
  %6480 = fmul fast float %6470, %6465
  %6481 = fsub fast float 1.000000e+00, %6465
  %6482 = fadd fast float %6481, %6480
  %6483 = fmul fast float %6466, %6466
  %6484 = fmul fast float %6483, %6471
  %6485 = fadd fast float %6484, %6470
  %6486 = bitcast float %6485 to i32
  %6487 = ashr i32 %6486, 1
  %6488 = add nsw i32 %6487, 532487669
  %6489 = bitcast i32 %6488 to float
  %6490 = fadd fast float %6489, %6466
  %6491 = fmul fast float %6482, %6482
  %6492 = fmul fast float %6491, %6479
  %6493 = fmul fast float %6492, %6490
  %6494 = fdiv fast float 0x3FF0A00000000000, %6493
  %6495 = fmul fast float %6494, %6470
  %6496 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6497 = fsub fast float 1.000000e+00, %6496
  %6498 = bitcast float %6497 to i32
  %6499 = sitofp i32 %6498 to float
  %6500 = fmul fast float %6499, 5.000000e+00
  %6501 = fadd fast float %6500, 0xC1EFBF8940000000
  %6502 = fptosi float %6501 to i32
  %6503 = bitcast i32 %6502 to float
  %6504 = fsub fast float 1.000000e+00, %5272
  %6505 = fsub fast float 1.000000e+00, %5273
  %6506 = fsub fast float 1.000000e+00, %5321
  %6507 = fmul fast float %6503, %6504
  %6508 = fmul fast float %6503, %6505
  %6509 = fmul fast float %6503, %6506
  %6510 = fadd fast float %6507, %5272
  %6511 = fadd fast float %6508, %5273
  %6512 = fadd fast float %6509, %5321
  br i1 %5448, label %6513, label %6536

; <label>:6513                                    ; preds = %6430
  %6514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4087, float %6496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.ResRet.f32 %6514, 2
  %6518 = fadd fast float %6515, -5.000000e-01
  %6519 = fadd fast float %6516, -5.000000e-01
  %6520 = fadd fast float %6517, -5.000000e-01
  %6521 = fmul fast float %5272, 4.000000e+00
  %6522 = fmul fast float %6521, %6504
  %6523 = fmul fast float %6522, %6518
  %6524 = fmul fast float %5273, 4.000000e+00
  %6525 = fmul fast float %6524, %6505
  %6526 = fmul fast float %6525, %6519
  %6527 = fmul fast float %5321, 4.000000e+00
  %6528 = fmul fast float %6527, %6506
  %6529 = fmul fast float %6528, %6520
  %6530 = fadd fast float %6523, %6510
  %6531 = fadd fast float %6526, %6511
  %6532 = fadd fast float %6529, %6512
  %6533 = call float @dx.op.unary.f32(i32 7, float %6530)  ; Saturate(value)
  %6534 = call float @dx.op.unary.f32(i32 7, float %6531)  ; Saturate(value)
  %6535 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  br label %6536

; <label>:6536                                    ; preds = %6513, %6430
  %6537 = phi float [ %6533, %6513 ], [ %6510, %6430 ]
  %6538 = phi float [ %6534, %6513 ], [ %6511, %6430 ]
  %6539 = phi float [ %6535, %6513 ], [ %6512, %6430 ]
  %6540 = fmul fast float %6457, 9.843750e-01
  %6541 = fadd fast float %6540, 7.812500e-03
  %6542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6541, float %5438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 2
  %6544 = extractvalue %dx.types.ResRet.f32 %6542, 3
  %6545 = fmul fast float %6543, %5272
  %6546 = fmul fast float %6543, %5273
  %6547 = fmul fast float %6543, %5321
  %6548 = fadd fast float %6545, %6544
  %6549 = fadd fast float %6546, %6544
  %6550 = fadd fast float %6547, %6544
  br i1 %5448, label %6551, label %6574

; <label>:6551                                    ; preds = %6536
  %6552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4087, float %6457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6553 = extractvalue %dx.types.ResRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.ResRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.ResRet.f32 %6552, 2
  %6556 = fadd fast float %6553, -5.000000e-01
  %6557 = fadd fast float %6554, -5.000000e-01
  %6558 = fadd fast float %6555, -5.000000e-01
  %6559 = fmul fast float %5272, 4.000000e+00
  %6560 = fmul fast float %6559, %6504
  %6561 = fmul fast float %6560, %6556
  %6562 = fmul fast float %5273, 4.000000e+00
  %6563 = fmul fast float %6562, %6505
  %6564 = fmul fast float %6563, %6557
  %6565 = fmul fast float %5321, 4.000000e+00
  %6566 = fmul fast float %6565, %6506
  %6567 = fmul fast float %6566, %6558
  %6568 = fadd fast float %6561, %6548
  %6569 = fadd fast float %6564, %6549
  %6570 = fadd fast float %6567, %6550
  %6571 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6572 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6573 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  br label %6574

; <label>:6574                                    ; preds = %6551, %6536
  %6575 = phi float [ %6571, %6551 ], [ %6548, %6536 ]
  %6576 = phi float [ %6572, %6551 ], [ %6549, %6536 ]
  %6577 = phi float [ %6573, %6551 ], [ %6550, %6536 ]
  %6578 = call float @dx.op.binary.f32(i32 35, float %6576, float %6577)  ; FMax(a,b)
  %6579 = call float @dx.op.binary.f32(i32 35, float %6575, float %6578)  ; FMax(a,b)
  %6580 = fsub fast float 1.000000e+00, %6579
  %6581 = fmul fast float %6537, %6495
  %6582 = fmul fast float %6538, %6495
  %6583 = fmul fast float %6539, %6495
  %6584 = fsub fast float 1.000000e+00, %6458
  %6585 = bitcast float %6584 to i32
  %6586 = sitofp i32 %6585 to float
  %6587 = fmul fast float %6586, 5.000000e+00
  %6588 = fadd fast float %6587, 0xC1EFBF8940000000
  %6589 = fptosi float %6588 to i32
  %6590 = bitcast i32 %6589 to float
  %6591 = fmul fast float %6590, %4088
  %6592 = fmul fast float %6580, %6591
  %6593 = fmul fast float %6592, %5498
  %6594 = fmul fast float %6592, %5499
  %6595 = fmul fast float %6592, %5500
  %6596 = fadd fast float %6593, %6581
  %6597 = fadd fast float %6594, %6582
  %6598 = fadd fast float %6595, %6583
  %6599 = fmul fast float %6463, %6446
  %6600 = fmul fast float %6599, %6580
  %6601 = fmul fast float %6463, %6447
  %6602 = fmul fast float %6601, %6580
  %6603 = fmul fast float %6463, %6448
  %6604 = fmul fast float %6603, %6580
  %6605 = fmul fast float %6599, %6596
  %6606 = fmul fast float %6601, %6597
  %6607 = fmul fast float %6603, %6598
  %6608 = fadd fast float %6600, %5482
  %6609 = fmul fast float %6608, %4084
  %6610 = fadd fast float %6602, %5483
  %6611 = fmul fast float %6610, %4084
  %6612 = fadd fast float %6604, %5484
  %6613 = fmul fast float %6612, %4084
  %6614 = fadd fast float %6605, %5525
  %6615 = fmul fast float %6614, %4084
  %6616 = fadd fast float %6606, %5528
  %6617 = fmul fast float %6616, %4084
  %6618 = fadd fast float %6607, %5531
  %6619 = fmul fast float %6618, %4084
  br label %6620

; <label>:6620                                    ; preds = %6574, %6364, %5475
  %6621 = phi float [ %5526, %5475 ], [ %5526, %6364 ], [ %6615, %6574 ]
  %6622 = phi float [ %5529, %5475 ], [ %5529, %6364 ], [ %6617, %6574 ]
  %6623 = phi float [ %5532, %5475 ], [ %5532, %6364 ], [ %6619, %6574 ]
  %6624 = phi float [ %5521, %5475 ], [ %5521, %6364 ], [ %6609, %6574 ]
  %6625 = phi float [ %5522, %5475 ], [ %5522, %6364 ], [ %6611, %6574 ]
  %6626 = phi float [ %5523, %5475 ], [ %5523, %6364 ], [ %6613, %6574 ]
  %6627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.i32 %6627, 0
  %6629 = icmp eq i32 %6628, 0
  br i1 %6629, label %7250, label %6630

; <label>:6630                                    ; preds = %6620
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 3
  %6634 = fmul fast float %6632, %108
  %6635 = fmul fast float %6633, %109
  %6636 = fptoui float %6634 to i32
  %6637 = fptoui float %6635 to i32
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 0
  %6640 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6641 = extractvalue %dx.types.CBufRet.f32 %6638, 3
  %6642 = fadd fast float %99, -4.000000e+00
  %6643 = call float @dx.op.binary.f32(i32 35, float %6642, float 0.000000e+00)  ; FMax(a,b)
  %6644 = fadd fast float %6643, %6639
  %6645 = fmul fast float %6644, %6640
  %6646 = call float @dx.op.unary.f32(i32 23, float %6645)  ; Log(value)
  %6647 = fmul fast float %6646, %6641
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6650 = fmul fast float %6647, %6649
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.i32 %6652, 1
  %6654 = add i32 %6653, -1
  %6655 = uitofp i32 %6653 to float
  %6656 = fmul fast float %6655, %6651
  %6657 = fptoui float %6656 to i32
  %6658 = call i32 @dx.op.binary.i32(i32 40, i32 %6657, i32 %6654)  ; UMin(a,b)
  %6659 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.i32 %6659, 2
  %6661 = extractvalue %dx.types.CBufRet.i32 %6659, 3
  %6662 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6637, i32 %6660, i32 %6636)  ; UMad(a,b,c)
  %6663 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6658, i32 %6661, i32 %6662)  ; UMad(a,b,c)
  %6664 = add nsw i32 %6628, -1
  %6665 = call i32 @dx.op.binary.i32(i32 37, i32 %6664, i32 0)  ; IMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6667 = fptoui float %6666 to i32
  %6668 = lshr i32 %6667, 5
  %6669 = call i32 @dx.op.binary.i32(i32 40, i32 %6668, i32 8191)  ; UMin(a,b)
  %6670 = shl i32 %6669, 2
  %6671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6670, i32 undef)  ; BufferLoad(srv,index,wot)
  %6672 = extractvalue %dx.types.ResRet.i32 %6671, 0
  %6673 = lshr i32 %6672, 16
  %6674 = and i32 %6672, 65535
  %6675 = lshr i32 %6672, 21
  %6676 = lshr i32 %6674, 5
  %6677 = call i32 @dx.op.binary.i32(i32 40, i32 %6676, i32 %6665)  ; UMin(a,b)
  %6678 = icmp ugt i32 %6675, %6677
  br i1 %6678, label %7250, label %6679

; <label>:6679                                    ; preds = %6630
  br label %6680

; <label>:6680                                    ; preds = %7240, %6679
  %6681 = phi i32 [ %7247, %7240 ], [ %6675, %6679 ]
  %6682 = phi float [ %7241, %7240 ], [ %6621, %6679 ]
  %6683 = phi float [ %7242, %7240 ], [ %6622, %6679 ]
  %6684 = phi float [ %7243, %7240 ], [ %6623, %6679 ]
  %6685 = phi float [ %7244, %7240 ], [ %6624, %6679 ]
  %6686 = phi float [ %7245, %7240 ], [ %6625, %6679 ]
  %6687 = phi float [ %7246, %7240 ], [ %6626, %6679 ]
  %6688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.i32 %6688, 0
  %6690 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6663, i32 %6689, i32 %6681)  ; UMad(a,b,c)
  %6691 = shl i32 %6690, 2
  %6692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6691, i32 undef)  ; BufferLoad(srv,index,wot)
  %6693 = extractvalue %dx.types.ResRet.i32 %6692, 0
  %6694 = shl i32 %6681, 5
  %6695 = sub nsw i32 %6673, %6694
  %6696 = call i32 @dx.op.binary.i32(i32 37, i32 %6695, i32 0)  ; IMax(a,b)
  %6697 = call i32 @dx.op.binary.i32(i32 38, i32 %6696, i32 31)  ; IMin(a,b)
  %6698 = sub nsw i32 1, %6673
  %6699 = add nsw i32 %6698, %6674
  %6700 = call i32 @dx.op.binary.i32(i32 37, i32 %6699, i32 0)  ; IMax(a,b)
  %6701 = call i32 @dx.op.binary.i32(i32 38, i32 %6700, i32 32)  ; IMin(a,b)
  %6702 = and i32 %6701, 31
  %6703 = shl i32 -1, %6702
  %6704 = xor i32 %6703, -1
  %6705 = and i32 %6697, 31
  %6706 = shl i32 %6704, %6705
  %6707 = icmp eq i32 %6701, 32
  %6708 = select i1 %6707, i32 -1, i32 %6706
  %6709 = and i32 %6708, %6693
  %6710 = icmp eq i32 %6709, 0
  br i1 %6710, label %7240, label %6711

; <label>:6711                                    ; preds = %6680
  br label %6712

; <label>:6712                                    ; preds = %6846, %6711
  %6713 = phi i32 [ %6724, %6846 ], [ %6709, %6711 ]
  %6714 = phi float [ %6847, %6846 ], [ %6682, %6711 ]
  %6715 = phi float [ %6848, %6846 ], [ %6683, %6711 ]
  %6716 = phi float [ %6849, %6846 ], [ %6684, %6711 ]
  %6717 = phi float [ %6850, %6846 ], [ %6685, %6711 ]
  %6718 = phi float [ %6851, %6846 ], [ %6686, %6711 ]
  %6719 = phi float [ %6852, %6846 ], [ %6687, %6711 ]
  %6720 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6713)  ; FirstbitLo(value)
  %6721 = add i32 %6720, %6694
  %6722 = and i32 %6720, 31
  %6723 = shl i32 1, %6722
  %6724 = xor i32 %6723, %6713
  %6725 = mul i32 %6721, 112
  %6726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6725, i32 undef)  ; BufferLoad(srv,index,wot)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.ResRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.ResRet.f32 %6726, 2
  %6730 = or i32 %6725, 12
  %6731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6730, i32 undef)  ; BufferLoad(srv,index,wot)
  %6732 = extractvalue %dx.types.ResRet.f32 %6731, 0
  %6733 = add i32 %6725, 16
  %6734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6733, i32 undef)  ; BufferLoad(srv,index,wot)
  %6735 = extractvalue %dx.types.ResRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.ResRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.ResRet.f32 %6734, 2
  %6738 = add i32 %6725, 28
  %6739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6738, i32 undef)  ; BufferLoad(srv,index,wot)
  %6740 = extractvalue %dx.types.ResRet.i32 %6739, 0
  %6741 = add i32 %6725, 44
  %6742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6741, i32 undef)  ; BufferLoad(srv,index,wot)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = add i32 %6725, 48
  %6745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6744, i32 undef)  ; BufferLoad(srv,index,wot)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  %6747 = extractvalue %dx.types.ResRet.f32 %6745, 1
  %6748 = extractvalue %dx.types.ResRet.f32 %6745, 2
  %6749 = extractvalue %dx.types.ResRet.f32 %6745, 3
  %6750 = add i32 %6725, 64
  %6751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6750, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6755 = extractvalue %dx.types.ResRet.f32 %6751, 3
  %6756 = add i32 %6725, 80
  %6757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6756, i32 undef)  ; BufferLoad(srv,index,wot)
  %6758 = extractvalue %dx.types.ResRet.f32 %6757, 1
  %6759 = extractvalue %dx.types.ResRet.f32 %6757, 2
  %6760 = add i32 %6725, 92
  %6761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6760, i32 undef)  ; BufferLoad(srv,index,wot)
  %6762 = extractvalue %dx.types.ResRet.i32 %6761, 0
  %6763 = call float @dx.op.dot3.f32(i32 55, float %6727, float %6728, float %6729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6764 = select i1 %267, float %6758, float %6727
  %6765 = select i1 %267, float %6763, float %6728
  %6766 = select i1 %267, float %6759, float %6729
  %6767 = and i32 %6762, 65535
  %6768 = uitofp i32 %6767 to float
  %6769 = lshr i32 %6762, 16
  %6770 = uitofp i32 %6769 to float
  %6771 = and i32 %6740, 65535
  %6772 = and i32 %6740, 50331648
  %6773 = icmp eq i32 %6772, 33554432
  %6774 = fsub fast float %6746, %195
  %6775 = fsub fast float %6747, %196
  %6776 = fsub fast float %6748, %197
  %6777 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6776, float %6774, float %6775, float %6776)  ; Dot3(ax,ay,az,bx,by,bz)
  %6778 = call float @dx.op.unary.f32(i32 24, float %6777)  ; Sqrt(value)
  %6779 = fdiv fast float 1.000000e+00, %6778
  %6780 = fmul fast float %6779, %6774
  %6781 = fmul fast float %6779, %6775
  %6782 = fmul fast float %6779, %6776
  %6783 = fadd fast float %6778, %6732
  %6784 = fdiv fast float 1.000000e+00, %6783
  %6785 = fmul float %6743, %6784
  %6786 = fmul float %6785, %6785
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  br i1 %6773, label %6788, label %6809

; <label>:6788                                    ; preds = %6712
  %6789 = fmul fast float %6754, %6735
  %6790 = fmul fast float %6754, %6736
  %6791 = fmul fast float %6754, %6737
  %6792 = fadd fast float %6774, %6789
  %6793 = fadd fast float %6775, %6790
  %6794 = fadd fast float %6776, %6791
  %6795 = call float @dx.op.dot3.f32(i32 55, float %6792, float %6793, float %6794, float %6792, float %6793, float %6794)  ; Dot3(ax,ay,az,bx,by,bz)
  %6796 = call float @dx.op.unary.f32(i32 25, float %6795)  ; Rsqrt(value)
  %6797 = fmul fast float %6796, %6792
  %6798 = fmul fast float %6796, %6793
  %6799 = fmul fast float %6796, %6794
  %6800 = fsub fast float %195, %6746
  %6801 = fsub fast float %196, %6747
  %6802 = fsub fast float %197, %6748
  %6803 = fsub fast float -0.000000e+00, %6800
  %6804 = fsub fast float -0.000000e+00, %6801
  %6805 = fsub fast float -0.000000e+00, %6802
  %6806 = call float @dx.op.dot3.f32(i32 55, float %6803, float %6804, float %6805, float %6735, float %6736, float %6737)  ; Dot3(ax,ay,az,bx,by,bz)
  %6807 = fcmp fast ogt float %6806, 0.000000e+00
  %6808 = uitofp i1 %6807 to float
  br label %6809

; <label>:6809                                    ; preds = %6788, %6712
  %6810 = phi float [ %6808, %6788 ], [ 1.000000e+00, %6712 ]
  %6811 = phi float [ %6797, %6788 ], [ %6780, %6712 ]
  %6812 = phi float [ %6798, %6788 ], [ %6781, %6712 ]
  %6813 = phi float [ %6799, %6788 ], [ %6782, %6712 ]
  %6814 = call float @dx.op.dot3.f32(i32 55, float %6735, float %6736, float %6737, float %6811, float %6812, float %6813)  ; Dot3(ax,ay,az,bx,by,bz)
  %6815 = fmul fast float %6814, %6814
  %6816 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6817 = fsub fast float 1.000000e+00, %6816
  %6818 = fmul fast float %6817, 5.000000e-01
  %6819 = fcmp fast ogt float %6814, 0.000000e+00
  %6820 = fsub fast float 1.000000e+00, %6818
  %6821 = select i1 %6819, float %6818, float %6820
  %6822 = fmul fast float %6821, %6770
  %6823 = fadd fast float %6822, %6768
  %6824 = fmul fast float %6823, 0x3EF0001000000000
  %6825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6824, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = fmul fast float %6814, %6752
  %6828 = fadd fast float %6827, %6753
  %6829 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6830 = select i1 %6773, float 1.000000e+00, float %6829
  %6831 = select i1 %6773, float %6829, float 1.000000e+00
  %6832 = fmul fast float %6778, %6749
  %6833 = fsub fast float 1.000000e+00, %6832
  %6834 = fmul fast float %6833, %6755
  %6835 = call float @dx.op.unary.f32(i32 7, float %6834)  ; Saturate(value)
  %6836 = fmul fast float %6835, %6831
  %6837 = fmul fast float %6836, 2.000000e+00
  %6838 = fsub fast float 3.000000e+00, %6837
  %6839 = fmul fast float %6826, %6810
  %6840 = fmul fast float %6836, %6836
  %6841 = fmul fast float %6840, %6839
  %6842 = fmul fast float %6841, %6838
  %6843 = call float @dx.op.binary.f32(i32 36, float %6842, float %6842)  ; FMin(a,b)
  %6844 = call float @dx.op.binary.f32(i32 36, float %6842, float %6843)  ; FMin(a,b)
  %6845 = fcmp fast ogt float %6844, 0.000000e+00
  br i1 %6845, label %6854, label %6846, !dx.controlflow.hints !123

; <label>:6846                                    ; preds = %7196, %6954, %6809
  %6847 = phi float [ %6714, %6954 ], [ %6714, %6809 ], [ %7236, %7196 ]
  %6848 = phi float [ %6715, %6954 ], [ %6715, %6809 ], [ %7237, %7196 ]
  %6849 = phi float [ %6716, %6954 ], [ %6716, %6809 ], [ %7238, %7196 ]
  %6850 = phi float [ %6717, %6954 ], [ %6717, %6809 ], [ %7230, %7196 ]
  %6851 = phi float [ %6718, %6954 ], [ %6718, %6809 ], [ %7231, %7196 ]
  %6852 = phi float [ %6719, %6954 ], [ %6719, %6809 ], [ %7232, %7196 ]
  %6853 = icmp eq i32 %6713, %6723
  br i1 %6853, label %7239, label %6712

; <label>:6854                                    ; preds = %6809
  %6855 = icmp eq i32 %6771, 255
  br i1 %6855, label %6954, label %6856, !dx.controlflow.hints !124

; <label>:6856                                    ; preds = %6854
  %6857 = mul nuw nsw i32 %6771, 176
  %6858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6857, i32 undef)  ; BufferLoad(srv,index,wot)
  %6859 = extractvalue %dx.types.ResRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.ResRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.ResRet.f32 %6858, 2
  %6862 = extractvalue %dx.types.ResRet.f32 %6858, 3
  %6863 = add nuw nsw i32 %6857, 16
  %6864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6863, i32 undef)  ; BufferLoad(srv,index,wot)
  %6865 = extractvalue %dx.types.ResRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.ResRet.f32 %6864, 1
  %6867 = add nuw nsw i32 %6857, 32
  %6868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6867, i32 undef)  ; BufferLoad(srv,index,wot)
  %6869 = extractvalue %dx.types.ResRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.ResRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.ResRet.f32 %6868, 2
  %6872 = add nuw nsw i32 %6857, 48
  %6873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6872, i32 undef)  ; BufferLoad(srv,index,wot)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.ResRet.f32 %6873, 1
  %6876 = extractvalue %dx.types.ResRet.f32 %6873, 2
  %6877 = extractvalue %dx.types.ResRet.f32 %6873, 3
  %6878 = add nuw nsw i32 %6857, 64
  %6879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6878, i32 undef)  ; BufferLoad(srv,index,wot)
  %6880 = extractvalue %dx.types.ResRet.f32 %6879, 0
  %6881 = extractvalue %dx.types.ResRet.f32 %6879, 1
  %6882 = extractvalue %dx.types.ResRet.f32 %6879, 2
  %6883 = extractvalue %dx.types.ResRet.f32 %6879, 3
  %6884 = add nuw nsw i32 %6857, 80
  %6885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6884, i32 undef)  ; BufferLoad(srv,index,wot)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.ResRet.f32 %6885, 2
  %6889 = extractvalue %dx.types.ResRet.f32 %6885, 3
  %6890 = add nuw nsw i32 %6857, 96
  %6891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6890, i32 undef)  ; BufferLoad(srv,index,wot)
  %6892 = extractvalue %dx.types.ResRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.ResRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.ResRet.f32 %6891, 2
  %6895 = extractvalue %dx.types.ResRet.f32 %6891, 3
  %6896 = bitcast float %6866 to i32
  %6897 = fmul fast float %6871, %115
  %6898 = fmul fast float %6871, %116
  %6899 = fmul fast float %6871, %117
  %6900 = fadd fast float %6897, %195
  %6901 = fadd fast float %6898, %196
  %6902 = fadd fast float %6899, %197
  %6903 = fmul fast float %6900, %6874
  %6904 = call float @dx.op.tertiary.f32(i32 46, float %6901, float %6880, float %6903)  ; FMad(a,b,c)
  %6905 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6886, float %6904)  ; FMad(a,b,c)
  %6906 = fadd fast float %6905, %6892
  %6907 = fmul fast float %6900, %6875
  %6908 = call float @dx.op.tertiary.f32(i32 46, float %6901, float %6881, float %6907)  ; FMad(a,b,c)
  %6909 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6887, float %6908)  ; FMad(a,b,c)
  %6910 = fadd fast float %6909, %6893
  %6911 = fmul fast float %6900, %6876
  %6912 = call float @dx.op.tertiary.f32(i32 46, float %6901, float %6882, float %6911)  ; FMad(a,b,c)
  %6913 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6888, float %6912)  ; FMad(a,b,c)
  %6914 = fadd fast float %6913, %6894
  %6915 = fmul fast float %6900, %6877
  %6916 = call float @dx.op.tertiary.f32(i32 46, float %6901, float %6883, float %6915)  ; FMad(a,b,c)
  %6917 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6889, float %6916)  ; FMad(a,b,c)
  %6918 = fadd fast float %6917, %6895
  %6919 = fdiv fast float %6906, %6918
  %6920 = fdiv fast float %6910, %6918
  %6921 = fdiv fast float %6914, %6918
  %6922 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6921)  ; FMax(a,b)
  %6923 = fmul fast float %278, 0x401921FB60000000
  %6924 = call float @dx.op.unary.f32(i32 13, float %6923)  ; Sin(value)
  %6925 = call float @dx.op.unary.f32(i32 12, float %6923)  ; Cos(value)
  %6926 = fsub fast float -0.000000e+00, %6924
  %6927 = fmul fast float %6861, 5.000000e-01
  %6928 = call float @dx.op.dot2.f32(i32 54, float %278, float %278, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6929 = call float @dx.op.unary.f32(i32 22, float %6928)  ; Frc(value)
  %6930 = fmul fast float %6929, 0x404A7DD040000000
  %6931 = call float @dx.op.unary.f32(i32 22, float %6930)  ; Frc(value)
  %6932 = fmul fast float %6931, %6870
  %6933 = fadd fast float %6932, %6927
  %6934 = call float @dx.op.tertiary.f32(i32 46, float %6933, float %6926, float 0.000000e+00)  ; FMad(a,b,c)
  %6935 = call float @dx.op.tertiary.f32(i32 46, float %6933, float %6925, float 0.000000e+00)  ; FMad(a,b,c)
  %6936 = fadd fast float %6934, %6919
  %6937 = fadd fast float %6935, %6920
  %6938 = fmul fast float %6936, %6865
  %6939 = fmul fast float %6937, %6865
  %6940 = call float @dx.op.binary.f32(i32 35, float %6938, float %6861)  ; FMax(a,b)
  %6941 = call float @dx.op.binary.f32(i32 35, float %6939, float %6861)  ; FMax(a,b)
  %6942 = call float @dx.op.binary.f32(i32 36, float %6940, float %6862)  ; FMin(a,b)
  %6943 = call float @dx.op.binary.f32(i32 36, float %6941, float %6862)  ; FMin(a,b)
  %6944 = fadd fast float %6942, %6859
  %6945 = fadd fast float %6943, %6860
  %6946 = uitofp i32 %6896 to float
  %6947 = fadd fast float %6922, %6869
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %6944, float %6945, float %6946, float undef, i32 0, i32 0, i32 undef, float %6947)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = fadd fast float %6949, -1.000000e+00
  %6951 = fmul fast float %6950, %6830
  %6952 = fadd fast float %6951, 1.000000e+00
  %6953 = fmul fast float %6952, %6842
  br label %6954

; <label>:6954                                    ; preds = %6856, %6854
  %6955 = phi float [ %6953, %6856 ], [ %6842, %6854 ]
  %6956 = call float @dx.op.binary.f32(i32 36, float %6955, float %6955)  ; FMin(a,b)
  %6957 = call float @dx.op.binary.f32(i32 36, float %6955, float %6956)  ; FMin(a,b)
  %6958 = fcmp fast ogt float %6957, 0.000000e+00
  br i1 %6958, label %6959, label %6846, !dx.controlflow.hints !125

; <label>:6959                                    ; preds = %6954
  %6960 = fmul fast float %6955, %6764
  %6961 = fmul fast float %6955, %6765
  %6962 = fmul fast float %6955, %6766
  %6963 = fsub fast float %6748, %4489
  %6964 = fcmp fast ogt float %6963, 0.000000e+00
  %6965 = fsub fast float %197, %4489
  %6966 = fcmp fast ogt float %6965, 0.000000e+00
  %6967 = xor i1 %6966, %6964
  %6968 = fsub fast float %4489, %6748
  %6969 = fmul fast float %6968, 2.000000e+00
  %6970 = fadd fast float %6969, %6748
  %6971 = select i1 %6967, float %6748, float %6970
  %6972 = fsub fast float %6971, %197
  %6973 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6972, float %6774, float %6775, float %6972)  ; Dot3(ax,ay,az,bx,by,bz)
  %6974 = call float @dx.op.unary.f32(i32 25, float %6973)  ; Rsqrt(value)
  %6975 = fmul fast float %6974, %6774
  %6976 = fmul fast float %6974, %6775
  %6977 = fmul fast float %6974, %6972
  %6978 = fsub fast float %4489, %197
  %6979 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6978)  ; Dot3(ax,ay,az,bx,by,bz)
  %6980 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6975, float %6976, float %6977)  ; Dot3(ax,ay,az,bx,by,bz)
  %6981 = fdiv fast float 1.000000e+00, %6980
  %6982 = fmul fast float %6981, %6979
  %6983 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6984 = fcmp fast ogt float %6983, 0.000000e+00
  %6985 = fcmp fast olt float %6983, 0.000000e+00
  %6986 = zext i1 %6984 to i32
  %6987 = zext i1 %6985 to i32
  %6988 = sub nsw i32 %6986, %6987
  %6989 = sitofp i32 %6988 to float
  %6990 = fsub fast float %6971, %4489
  %6991 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6990, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6992 = fcmp fast ogt float %6991, 0.000000e+00
  %6993 = fcmp fast olt float %6991, 0.000000e+00
  %6994 = zext i1 %6992 to i32
  %6995 = zext i1 %6993 to i32
  %6996 = sub nsw i32 %6994, %6995
  %6997 = sitofp i32 %6996 to float
  %6998 = fcmp fast une float %6989, %6997
  br i1 %6998, label %6999, label %7009

; <label>:6999                                    ; preds = %6959
  %7000 = fmul fast float %6982, %6977
  %7001 = fmul fast float %6982, %6976
  %7002 = fmul fast float %6982, %6975
  %7003 = fmul fast float %7002, %7002
  %7004 = fmul fast float %7001, %7001
  %7005 = fadd fast float %7003, %7004
  %7006 = fmul fast float %7000, %7000
  %7007 = fadd fast float %7005, %7006
  %7008 = call float @dx.op.unary.f32(i32 24, float %7007)  ; Sqrt(value)
  br label %7021

; <label>:7009                                    ; preds = %6959
  %7010 = icmp slt i32 %6988, 0
  br i1 %7010, label %7011, label %7021

; <label>:7011                                    ; preds = %7009
  %7012 = fsub fast float %195, %6746
  %7013 = fsub fast float %196, %6747
  %7014 = fsub fast float %197, %6971
  %7015 = fmul fast float %7012, %7012
  %7016 = fmul fast float %7013, %7013
  %7017 = fadd fast float %7015, %7016
  %7018 = fmul fast float %7014, %7014
  %7019 = fadd fast float %7017, %7018
  %7020 = call float @dx.op.unary.f32(i32 24, float %7019)  ; Sqrt(value)
  br label %7021

; <label>:7021                                    ; preds = %7011, %7009, %6999
  %7022 = phi float [ %7008, %6999 ], [ %7020, %7011 ], [ 0.000000e+00, %7009 ]
  %7023 = and i1 %6966, %6964
  %7024 = fsub fast float -0.000000e+00, %7022
  %7025 = select i1 %7023, float -0.000000e+00, float %7024
  %7026 = fmul fast float %4490, 0x3FF7154760000000
  %7027 = fmul fast float %7026, %7025
  %7028 = fmul fast float %4491, 0x3FF7154760000000
  %7029 = fmul fast float %7028, %7025
  %7030 = fmul fast float %4492, 0x3FF7154760000000
  %7031 = fmul fast float %7030, %7025
  %7032 = call float @dx.op.unary.f32(i32 21, float %7027)  ; Exp(value)
  %7033 = call float @dx.op.unary.f32(i32 21, float %7029)  ; Exp(value)
  %7034 = call float @dx.op.unary.f32(i32 21, float %7031)  ; Exp(value)
  %7035 = call float @dx.op.unary.f32(i32 7, float %7032)  ; Saturate(value)
  %7036 = call float @dx.op.unary.f32(i32 7, float %7033)  ; Saturate(value)
  %7037 = call float @dx.op.unary.f32(i32 7, float %7034)  ; Saturate(value)
  %7038 = fmul fast float %6960, %7035
  %7039 = fmul fast float %6961, %7036
  %7040 = fmul fast float %6962, %7037
  %7041 = fsub fast float %6780, %5315
  %7042 = fsub fast float %6781, %5316
  %7043 = fsub fast float %6782, %5317
  %7044 = call float @dx.op.dot3.f32(i32 55, float %7041, float %7042, float %7043, float %7041, float %7042, float %7043)  ; Dot3(ax,ay,az,bx,by,bz)
  %7045 = call float @dx.op.unary.f32(i32 25, float %7044)  ; Rsqrt(value)
  %7046 = fmul fast float %7045, %7041
  %7047 = fmul fast float %7045, %7042
  %7048 = fmul fast float %7045, %7043
  %7049 = call float @dx.op.dot3.f32(i32 55, float %6780, float %6781, float %6782, float %5275, float %5276, float %5277)  ; Dot3(ax,ay,az,bx,by,bz)
  %7050 = call float @dx.op.dot3.f32(i32 55, float %5318, float %5319, float %5320, float %7046, float %7047, float %7048)  ; Dot3(ax,ay,az,bx,by,bz)
  %7051 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7052 = fmul fast float %7051, %6787
  %7053 = fmul fast float %7051, %7051
  %7054 = fmul fast float %7053, %5336
  %7055 = call float @dx.op.unary.f32(i32 7, float %7054)  ; Saturate(value)
  %7056 = fmul fast float %7052, %7055
  %7057 = bitcast float %6777 to i32
  %7058 = ashr i32 %7057, 1
  %7059 = sub nsw i32 1597463007, %7058
  %7060 = bitcast i32 %7059 to float
  %7061 = fmul fast float %7060, %6774
  %7062 = fmul fast float %7060, %6775
  %7063 = fmul fast float %7060, %6776
  %7064 = fsub fast float %7061, %5315
  %7065 = fsub fast float %7062, %5316
  %7066 = fsub fast float %7063, %5317
  %7067 = call float @dx.op.dot3.f32(i32 55, float %7064, float %7065, float %7066, float %7064, float %7065, float %7066)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = call float @dx.op.unary.f32(i32 25, float %7067)  ; Rsqrt(value)
  %7069 = fmul fast float %7064, %7068
  %7070 = fmul fast float %7065, %7068
  %7071 = fmul fast float %7066, %7068
  %7072 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %7069, float %7070, float %7071)  ; Dot3(ax,ay,az,bx,by,bz)
  %7073 = fmul fast float %7072, %7072
  %7074 = call float @dx.op.unary.f32(i32 6, float %7049)  ; FAbs(value)
  %7075 = fsub fast float 1.000000e+00, %5278
  %7076 = call float @dx.op.binary.f32(i32 35, float %7075, float 0x3F847AE140000000)  ; FMax(a,b)
  %7077 = fmul fast float %7076, %7076
  %7078 = fmul fast float %7077, %7077
  %7079 = fsub fast float 1.000000e+00, %7078
  %7080 = fmul fast float %5323, %5323
  %7081 = fmul fast float %7080, %7079
  %7082 = fadd fast float %7081, %7078
  %7083 = bitcast float %7082 to i32
  %7084 = ashr i32 %7083, 1
  %7085 = add nsw i32 %7084, 532487669
  %7086 = bitcast i32 %7085 to float
  %7087 = fadd fast float %7086, %5323
  %7088 = fmul fast float %7078, %7073
  %7089 = fsub fast float 1.000000e+00, %7073
  %7090 = fadd fast float %7089, %7088
  %7091 = fmul fast float %7074, %7074
  %7092 = fmul fast float %7091, %7079
  %7093 = fadd fast float %7092, %7078
  %7094 = bitcast float %7093 to i32
  %7095 = ashr i32 %7094, 1
  %7096 = add nsw i32 %7095, 532487669
  %7097 = bitcast i32 %7096 to float
  %7098 = fadd fast float %7097, %7074
  %7099 = fmul fast float %7090, %7090
  %7100 = fmul fast float %7099, %7087
  %7101 = fmul fast float %7100, %7098
  %7102 = fdiv fast float 1.000000e+00, %7101
  %7103 = bitcast float %7078 to i32
  %7104 = sitofp i32 %7103 to float
  %7105 = fmul fast float %7104, 0x3FE7F73180000000
  %7106 = fadd fast float %7105, 0x41AFE27C40000000
  %7107 = fptosi float %7106 to i32
  %7108 = bitcast i32 %7107 to float
  %7109 = fmul fast float %6743, 0x3FD80E9D60000000
  %7110 = fmul fast float %7109, %7060
  %7111 = fadd fast float %7108, %7110
  %7112 = bitcast float %7111 to i32
  %7113 = sub nsw i32 2129859010, %7112
  %7114 = bitcast i32 %7113 to float
  %7115 = fmul fast float %7078, %7102
  %7116 = fmul fast float %7115, %7108
  %7117 = fmul fast float %7116, %7114
  %7118 = call float @dx.op.unary.f32(i32 6, float %7050)  ; FAbs(value)
  %7119 = fsub fast float 1.000000e+00, %7118
  %7120 = bitcast float %7119 to i32
  %7121 = sitofp i32 %7120 to float
  %7122 = fmul fast float %7121, 5.000000e+00
  %7123 = fadd fast float %7122, 0xC1EFBF8940000000
  %7124 = fptosi float %7123 to i32
  %7125 = bitcast i32 %7124 to float
  %7126 = fsub fast float 1.000000e+00, %5272
  %7127 = fsub fast float 1.000000e+00, %5273
  %7128 = fsub fast float 1.000000e+00, %5321
  %7129 = fmul fast float %7125, %7126
  %7130 = fmul fast float %7125, %7127
  %7131 = fmul fast float %7125, %7128
  %7132 = fadd fast float %7129, %5272
  %7133 = fadd fast float %7130, %5273
  %7134 = fadd fast float %7131, %5321
  br i1 %5448, label %7135, label %7158

; <label>:7135                                    ; preds = %7021
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4087, float %7118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = fadd fast float %7137, -5.000000e-01
  %7141 = fadd fast float %7138, -5.000000e-01
  %7142 = fadd fast float %7139, -5.000000e-01
  %7143 = fmul fast float %5272, 4.000000e+00
  %7144 = fmul fast float %7143, %7126
  %7145 = fmul fast float %7144, %7140
  %7146 = fmul fast float %5273, 4.000000e+00
  %7147 = fmul fast float %7146, %7127
  %7148 = fmul fast float %7147, %7141
  %7149 = fmul fast float %5321, 4.000000e+00
  %7150 = fmul fast float %7149, %7128
  %7151 = fmul fast float %7150, %7142
  %7152 = fadd fast float %7145, %7132
  %7153 = fadd fast float %7148, %7133
  %7154 = fadd fast float %7151, %7134
  %7155 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7156 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7157 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  br label %7158

; <label>:7158                                    ; preds = %7135, %7021
  %7159 = phi float [ %7155, %7135 ], [ %7132, %7021 ]
  %7160 = phi float [ %7156, %7135 ], [ %7133, %7021 ]
  %7161 = phi float [ %7157, %7135 ], [ %7134, %7021 ]
  %7162 = fmul fast float %7049, 9.843750e-01
  %7163 = fadd fast float %7162, 7.812500e-03
  %7164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7163, float %5438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7165 = extractvalue %dx.types.ResRet.f32 %7164, 2
  %7166 = extractvalue %dx.types.ResRet.f32 %7164, 3
  %7167 = fmul fast float %7165, %5272
  %7168 = fmul fast float %7165, %5273
  %7169 = fmul fast float %7165, %5321
  %7170 = fadd fast float %7167, %7166
  %7171 = fadd fast float %7168, %7166
  %7172 = fadd fast float %7169, %7166
  br i1 %5448, label %7173, label %7196

; <label>:7173                                    ; preds = %7158
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4087, float %7049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.ResRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.ResRet.f32 %7174, 2
  %7178 = fadd fast float %7175, -5.000000e-01
  %7179 = fadd fast float %7176, -5.000000e-01
  %7180 = fadd fast float %7177, -5.000000e-01
  %7181 = fmul fast float %5272, 4.000000e+00
  %7182 = fmul fast float %7181, %7126
  %7183 = fmul fast float %7182, %7178
  %7184 = fmul fast float %5273, 4.000000e+00
  %7185 = fmul fast float %7184, %7127
  %7186 = fmul fast float %7185, %7179
  %7187 = fmul fast float %5321, 4.000000e+00
  %7188 = fmul fast float %7187, %7128
  %7189 = fmul fast float %7188, %7180
  %7190 = fadd fast float %7183, %7170
  %7191 = fadd fast float %7186, %7171
  %7192 = fadd fast float %7189, %7172
  %7193 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7194 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7195 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  br label %7196

; <label>:7196                                    ; preds = %7173, %7158
  %7197 = phi float [ %7193, %7173 ], [ %7170, %7158 ]
  %7198 = phi float [ %7194, %7173 ], [ %7171, %7158 ]
  %7199 = phi float [ %7195, %7173 ], [ %7172, %7158 ]
  %7200 = call float @dx.op.binary.f32(i32 35, float %7198, float %7199)  ; FMax(a,b)
  %7201 = call float @dx.op.binary.f32(i32 35, float %7197, float %7200)  ; FMax(a,b)
  %7202 = fsub fast float 1.000000e+00, %7201
  %7203 = fmul fast float %7159, %7117
  %7204 = fmul fast float %7160, %7117
  %7205 = fmul fast float %7161, %7117
  %7206 = fsub fast float 1.000000e+00, %7050
  %7207 = bitcast float %7206 to i32
  %7208 = sitofp i32 %7207 to float
  %7209 = fmul fast float %7208, 5.000000e+00
  %7210 = fadd fast float %7209, 0xC1EFBF8940000000
  %7211 = fptosi float %7210 to i32
  %7212 = bitcast i32 %7211 to float
  %7213 = fmul fast float %7212, %4088
  %7214 = fmul fast float %7202, %7213
  %7215 = fmul fast float %7214, %5498
  %7216 = fmul fast float %7214, %5499
  %7217 = fmul fast float %7214, %5500
  %7218 = fadd fast float %7215, %7203
  %7219 = fadd fast float %7216, %7204
  %7220 = fadd fast float %7217, %7205
  %7221 = fmul fast float %7038, %4084
  %7222 = fmul fast float %7221, %7056
  %7223 = fmul fast float %7222, %7202
  %7224 = fmul fast float %7039, %4084
  %7225 = fmul fast float %7224, %7056
  %7226 = fmul fast float %7225, %7202
  %7227 = fmul fast float %7040, %4084
  %7228 = fmul fast float %7227, %7056
  %7229 = fmul fast float %7228, %7202
  %7230 = fadd fast float %7223, %6717
  %7231 = fadd fast float %7226, %6718
  %7232 = fadd fast float %7229, %6719
  %7233 = fmul fast float %7222, %7218
  %7234 = fmul fast float %7225, %7219
  %7235 = fmul fast float %7228, %7220
  %7236 = fadd fast float %7233, %6714
  %7237 = fadd fast float %7234, %6715
  %7238 = fadd fast float %7235, %6716
  br label %6846

; <label>:7239                                    ; preds = %6846
  br label %7240

; <label>:7240                                    ; preds = %7239, %6680
  %7241 = phi float [ %6682, %6680 ], [ %6847, %7239 ]
  %7242 = phi float [ %6683, %6680 ], [ %6848, %7239 ]
  %7243 = phi float [ %6684, %6680 ], [ %6849, %7239 ]
  %7244 = phi float [ %6685, %6680 ], [ %6850, %7239 ]
  %7245 = phi float [ %6686, %6680 ], [ %6851, %7239 ]
  %7246 = phi float [ %6687, %6680 ], [ %6852, %7239 ]
  %7247 = add i32 %6681, 1
  %7248 = icmp ugt i32 %7247, %6677
  br i1 %7248, label %7249, label %6680

; <label>:7249                                    ; preds = %7240
  br label %7250

; <label>:7250                                    ; preds = %7249, %6630, %6620
  %7251 = phi float [ %6621, %6620 ], [ %6621, %6630 ], [ %7241, %7249 ]
  %7252 = phi float [ %6622, %6620 ], [ %6622, %6630 ], [ %7242, %7249 ]
  %7253 = phi float [ %6623, %6620 ], [ %6623, %6630 ], [ %7243, %7249 ]
  %7254 = phi float [ %6624, %6620 ], [ %6624, %6630 ], [ %7244, %7249 ]
  %7255 = phi float [ %6625, %6620 ], [ %6625, %6630 ], [ %7245, %7249 ]
  %7256 = phi float [ %6626, %6620 ], [ %6626, %6630 ], [ %7246, %7249 ]
  %7257 = fmul fast float %4084, %4084
  %7258 = fsub fast float 1.000000e+00, %7257
  %7259 = call float @dx.op.dot3.f32(i32 55, float %7258, float %7258, float %7258, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7260 = fsub fast float 1.000000e+00, %7259
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 0
  %7263 = fmul fast float %7262, %5504
  %7264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7265 = extractvalue %dx.types.CBufRet.f32 %7264, 3
  %7266 = fsub fast float 1.000000e+00, %4092
  %7267 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7268 = fadd fast float %7256, %4090
  %7269 = fmul fast float %7268, %4092
  %7270 = fmul fast float %7267, %7265
  %7271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7271, 3
  %7273 = fmul fast float %7254, %5269
  %7274 = fmul fast float %7255, %5270
  %7275 = fmul fast float %7256, %5271
  %7276 = fcmp fast ogt float %99, %230
  %7277 = and i1 %7276, %4495
  %7278 = or i1 %4501, %7277
  %7279 = icmp eq i32 %4494, 2
  %7280 = fcmp fast ole float %99, %230
  %7281 = and i1 %7280, %7279
  %7282 = or i1 %7281, %7278
  br i1 %7277, label %7283, label %7540

; <label>:7283                                    ; preds = %7250
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 2
  %7286 = extractvalue %dx.types.CBufRet.f32 %7284, 3
  %7287 = fmul fast float %7285, %108
  %7288 = fmul fast float %7286, %109
  %7289 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  %7290 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7291 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7289, float %7290, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.ResRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.ResRet.f32 %7291, 2
  %7295 = extractvalue %dx.types.ResRet.f32 %7291, 3
  %7296 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7289, float %7290, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.ResRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.ResRet.f32 %7296, 2
  %7300 = extractvalue %dx.types.ResRet.f32 %7296, 3
  %7301 = call float @dx.op.binary.f32(i32 35, float %7293, float %7294)  ; FMax(a,b)
  %7302 = call float @dx.op.binary.f32(i32 35, float %7292, float %7301)  ; FMax(a,b)
  %7303 = call float @dx.op.binary.f32(i32 35, float %7302, float %7295)  ; FMax(a,b)
  %7304 = call float @dx.op.binary.f32(i32 36, float %7298, float %7299)  ; FMin(a,b)
  %7305 = call float @dx.op.binary.f32(i32 36, float %7297, float %7304)  ; FMin(a,b)
  %7306 = call float @dx.op.binary.f32(i32 36, float %7305, float %7300)  ; FMin(a,b)
  %7307 = fmul fast float %7303, 2.550000e+02
  %7308 = fadd fast float %7307, 0x3F70101020000000
  %7309 = fptoui float %7308 to i32
  %7310 = fmul fast float %7306, 2.550000e+02
  %7311 = fadd fast float %7310, 0x3F70101020000000
  %7312 = fptoui float %7311 to i32
  %7313 = icmp ult i32 %7309, %7312
  br i1 %7313, label %7314, label %7482

; <label>:7314                                    ; preds = %7283
  %7315 = fcmp fast ogt float %98, 9.843750e-01
  %7316 = fadd fast float %99, -4.000000e+00
  %7317 = select i1 %7315, float -4.000000e+00, float %7316
  %7318 = call float @dx.op.binary.f32(i32 35, float %7317, float 0.000000e+00)  ; FMax(a,b)
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = fadd fast float %7320, %7318
  %7322 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7323 = fmul fast float %7321, %7322
  %7324 = call float @dx.op.unary.f32(i32 23, float %7323)  ; Log(value)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7319, 3
  %7326 = fmul fast float %7325, %7324
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 2
  %7329 = fmul fast float %7326, %7328
  %7330 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7331 = uitofp i32 %7309 to float
  %7332 = uitofp i32 %7312 to float
  %7333 = fadd fast float %7331, 5.000000e-01
  %7334 = fadd fast float %7332, 5.000000e-01
  %7335 = fmul fast float %7328, %7333
  %7336 = fmul fast float %7328, %7334
  %7337 = fadd fast float %7335, 0x3F0FFB4800000000
  %7338 = fadd fast float %7336, 0xBF0FFB4800000000
  %7339 = call float @dx.op.binary.f32(i32 35, float %7330, float %7337)  ; FMax(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7339, float %7338)  ; FMin(a,b)
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7344 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7345 = fmul fast float %7342, %7340
  %7346 = fadd fast float %7344, %7345
  %7347 = fadd fast float %7344, %7343
  %7348 = fsub fast float %7342, %7343
  %7349 = fadd fast float %7348, %7344
  %7350 = call float @dx.op.binary.f32(i32 35, float %7346, float %7347)  ; FMax(a,b)
  %7351 = call float @dx.op.binary.f32(i32 36, float %7350, float %7349)  ; FMin(a,b)
  %7352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7289, float %7290, float %7351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7353 = extractvalue %dx.types.ResRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.ResRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.ResRet.f32 %7352, 2
  %7356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.i32 %7356, 0
  %7358 = extractvalue %dx.types.CBufRet.i32 %7356, 1
  %7359 = uitofp i32 %7357 to float
  %7360 = uitofp i32 %7358 to float
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = fmul fast float %7359, %7289
  %7365 = fmul fast float %7360, %7290
  %7366 = fadd fast float %7364, -5.000000e-01
  %7367 = fadd fast float %7365, -5.000000e-01
  %7368 = call float @dx.op.unary.f32(i32 22, float %7366)  ; Frc(value)
  %7369 = call float @dx.op.unary.f32(i32 22, float %7367)  ; Frc(value)
  %7370 = fmul fast float %7368, %7368
  %7371 = fmul fast float %7370, %7368
  %7372 = fsub fast float 3.000000e+00, %7368
  %7373 = fmul fast float %7370, %7372
  %7374 = fmul fast float %7368, 3.000000e+00
  %7375 = fmul fast float %7371, 3.000000e+00
  %7376 = fmul fast float %7370, 6.000000e+00
  %7377 = fsub fast float %7375, %7376
  %7378 = fadd fast float %7377, 4.000000e+00
  %7379 = fmul fast float %7378, 0x3FC5555560000000
  %7380 = fmul fast float %7371, -3.000000e+00
  %7381 = fadd fast float %7370, %7368
  %7382 = fmul fast float %7381, 3.000000e+00
  %7383 = fadd fast float %7380, 1.000000e+00
  %7384 = fadd fast float %7383, %7382
  %7385 = fmul fast float %7371, 0x3FC5555560000000
  %7386 = fmul fast float %7369, %7369
  %7387 = fmul fast float %7386, %7369
  %7388 = fsub fast float 3.000000e+00, %7369
  %7389 = fmul fast float %7386, %7388
  %7390 = fmul fast float %7369, 3.000000e+00
  %7391 = fmul fast float %7387, 3.000000e+00
  %7392 = fmul fast float %7386, 6.000000e+00
  %7393 = fsub fast float %7391, %7392
  %7394 = fadd fast float %7393, 4.000000e+00
  %7395 = fmul fast float %7394, 0x3FC5555560000000
  %7396 = fmul fast float %7387, -3.000000e+00
  %7397 = fadd fast float %7386, %7369
  %7398 = fmul fast float %7397, 3.000000e+00
  %7399 = fadd fast float %7396, 1.000000e+00
  %7400 = fadd fast float %7399, %7398
  %7401 = fmul fast float %7387, 0x3FC5555560000000
  %7402 = fadd fast float %7368, 1.000000e+00
  %7403 = fsub fast float 1.000000e+00, %7374
  %7404 = fadd fast float %7403, %7373
  %7405 = fadd fast float %7404, %7378
  %7406 = fmul fast float %7405, 0x3FC5555560000000
  %7407 = fdiv fast float %7379, %7406
  %7408 = fsub fast float %7402, %7407
  %7409 = fsub fast float 1.000000e+00, %7368
  %7410 = fadd fast float %7384, %7371
  %7411 = fmul fast float %7410, 0x3FC5555560000000
  %7412 = fdiv fast float %7385, %7411
  %7413 = fadd fast float %7409, %7412
  %7414 = fadd fast float %7369, 1.000000e+00
  %7415 = fsub fast float 1.000000e+00, %7390
  %7416 = fadd fast float %7415, %7389
  %7417 = fadd fast float %7416, %7394
  %7418 = fmul fast float %7417, 0x3FC5555560000000
  %7419 = fdiv fast float %7395, %7418
  %7420 = fsub fast float %7414, %7419
  %7421 = fsub fast float 1.000000e+00, %7369
  %7422 = fadd fast float %7400, %7387
  %7423 = fmul fast float %7422, 0x3FC5555560000000
  %7424 = fdiv fast float %7401, %7423
  %7425 = fadd fast float %7424, %7421
  %7426 = fmul fast float %7408, %7362
  %7427 = fsub fast float %7289, %7426
  %7428 = fmul fast float %7413, %7362
  %7429 = fadd fast float %7428, %7289
  %7430 = fmul fast float %7425, %7363
  %7431 = fadd fast float %7430, %7290
  %7432 = fmul fast float %7420, %7363
  %7433 = fsub fast float %7290, %7432
  %7434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7427, float %7433, float %7351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = extractvalue %dx.types.ResRet.f32 %7434, 1
  %7437 = extractvalue %dx.types.ResRet.f32 %7434, 2
  %7438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7429, float %7433, float %7351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7439 = extractvalue %dx.types.ResRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.ResRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.ResRet.f32 %7438, 2
  %7442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7427, float %7431, float %7351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7443 = extractvalue %dx.types.ResRet.f32 %7442, 0
  %7444 = extractvalue %dx.types.ResRet.f32 %7442, 1
  %7445 = extractvalue %dx.types.ResRet.f32 %7442, 2
  %7446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7429, float %7431, float %7351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.ResRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.ResRet.f32 %7446, 2
  %7450 = fsub fast float %7443, %7435
  %7451 = fsub fast float %7444, %7436
  %7452 = fsub fast float %7445, %7437
  %7453 = fmul fast float %7450, %7423
  %7454 = fmul fast float %7451, %7423
  %7455 = fmul fast float %7452, %7423
  %7456 = fadd fast float %7453, %7435
  %7457 = fadd fast float %7454, %7436
  %7458 = fadd fast float %7455, %7437
  %7459 = fsub fast float %7447, %7439
  %7460 = fsub fast float %7448, %7440
  %7461 = fsub fast float %7449, %7441
  %7462 = fmul fast float %7459, %7423
  %7463 = fmul fast float %7460, %7423
  %7464 = fmul fast float %7461, %7423
  %7465 = fsub fast float %7439, %7456
  %7466 = fadd fast float %7465, %7462
  %7467 = fsub fast float %7440, %7457
  %7468 = fadd fast float %7467, %7463
  %7469 = fsub fast float %7441, %7458
  %7470 = fadd fast float %7469, %7464
  %7471 = fmul fast float %7466, %7411
  %7472 = fmul fast float %7468, %7411
  %7473 = fmul fast float %7470, %7411
  %7474 = fadd fast float %7471, %7456
  %7475 = fadd fast float %7472, %7457
  %7476 = fadd fast float %7473, %7458
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 1
  %7479 = fmul fast float %7474, %7478
  %7480 = fmul fast float %7475, %7478
  %7481 = fmul fast float %7476, %7478
  br label %7482

; <label>:7482                                    ; preds = %7314, %7283
  %7483 = phi float [ %7353, %7314 ], [ 1.000000e+00, %7283 ]
  %7484 = phi float [ %7354, %7314 ], [ 1.000000e+00, %7283 ]
  %7485 = phi float [ %7355, %7314 ], [ 1.000000e+00, %7283 ]
  %7486 = phi float [ %7479, %7314 ], [ 0.000000e+00, %7283 ]
  %7487 = phi float [ %7480, %7314 ], [ 0.000000e+00, %7283 ]
  %7488 = phi float [ %7481, %7314 ], [ 0.000000e+00, %7283 ]
  %7489 = fmul fast float %7486, %7260
  %7490 = fmul fast float %7487, %7260
  %7491 = fmul fast float %7488, %7260
  %7492 = call float @dx.op.dot3.f32(i32 55, float %7483, float %7484, float %7485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7493 = call float @dx.op.dot3.f32(i32 55, float %7489, float %7490, float %7491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7494 = select i1 %267, float %7492, float %7483
  %7495 = select i1 %267, float %7492, float %7484
  %7496 = select i1 %267, float 1.000000e+00, float %7485
  %7497 = select i1 %267, float %7493, float %7489
  %7498 = select i1 %267, float 0.000000e+00, float %7490
  %7499 = select i1 %267, float 0.000000e+00, float %7491
  %7500 = fmul fast float %7494, %7273
  %7501 = fmul fast float %7495, %7274
  %7502 = fmul fast float %7496, %7275
  %7503 = fadd fast float %7500, %7497
  %7504 = fadd fast float %7501, %7498
  %7505 = fadd fast float %7499, %7502
  %7506 = fmul fast float %7494, %7251
  %7507 = fmul fast float %7495, %7252
  %7508 = fmul fast float %7496, %7253
  %7509 = fmul fast float %144, %7285
  %7510 = fmul fast float %146, %7286
  %7511 = fsub fast float 1.000000e+00, %7509
  %7512 = fsub fast float 1.000000e+00, %7510
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 0
  %7515 = extractvalue %dx.types.CBufRet.f32 %7513, 1
  %7516 = extractvalue %dx.types.CBufRet.f32 %7513, 2
  %7517 = fmul fast float %7511, %7514
  %7518 = fmul fast float %7511, %7515
  %7519 = fmul fast float %7511, %7516
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.CBufRet.f32 %7520, 2
  %7524 = fmul fast float %7512, %7521
  %7525 = fmul fast float %7512, %7522
  %7526 = fmul fast float %7512, %7523
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = fadd fast float %7524, %7528
  %7532 = fadd fast float %7531, %7517
  %7533 = fadd fast float %7525, %7529
  %7534 = fadd fast float %7533, %7518
  %7535 = fadd fast float %7526, %7530
  %7536 = fadd fast float %7535, %7519
  %7537 = fmul fast float %7532, %230
  %7538 = fmul fast float %7534, %230
  %7539 = fmul fast float %7536, %230
  br label %7540

; <label>:7540                                    ; preds = %7482, %7250
  %7541 = phi float [ %7537, %7482 ], [ %195, %7250 ]
  %7542 = phi float [ %7538, %7482 ], [ %196, %7250 ]
  %7543 = phi float [ %7539, %7482 ], [ %197, %7250 ]
  %7544 = phi float [ %230, %7482 ], [ %99, %7250 ]
  %7545 = phi float [ %7503, %7482 ], [ %7273, %7250 ]
  %7546 = phi float [ %7504, %7482 ], [ %7274, %7250 ]
  %7547 = phi float [ %7505, %7482 ], [ %7275, %7250 ]
  %7548 = phi float [ %7506, %7482 ], [ %7251, %7250 ]
  %7549 = phi float [ %7507, %7482 ], [ %7252, %7250 ]
  %7550 = phi float [ %7508, %7482 ], [ %7253, %7250 ]
  %7551 = phi float [ %7483, %7482 ], [ 1.000000e+00, %7250 ]
  br i1 %7282, label %8706, label %7552

; <label>:7552                                    ; preds = %7540
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7555 = extractvalue %dx.types.CBufRet.f32 %7553, 1
  %7556 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7557 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7558, 0
  %7560 = extractvalue %dx.types.CBufRet.f32 %7558, 1
  %7561 = extractvalue %dx.types.CBufRet.f32 %7558, 2
  %7562 = extractvalue %dx.types.CBufRet.f32 %7558, 3
  %7563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.f32 %7563, 0
  %7565 = extractvalue %dx.types.CBufRet.f32 %7563, 1
  %7566 = extractvalue %dx.types.CBufRet.f32 %7563, 2
  %7567 = extractvalue %dx.types.CBufRet.f32 %7563, 3
  %7568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7569 = extractvalue %dx.types.CBufRet.f32 %7568, 0
  %7570 = extractvalue %dx.types.CBufRet.f32 %7568, 1
  %7571 = extractvalue %dx.types.CBufRet.f32 %7568, 2
  %7572 = extractvalue %dx.types.CBufRet.f32 %7568, 3
  %7573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7574 = extractvalue %dx.types.CBufRet.f32 %7573, 3
  %7575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7575, 3
  %7577 = extractvalue %dx.types.CBufRet.f32 %7575, 0
  %7578 = extractvalue %dx.types.CBufRet.f32 %7575, 1
  %7579 = extractvalue %dx.types.CBufRet.f32 %7575, 2
  %7580 = fcmp fast olt float %7579, -5.000000e-01
  %7581 = call float @dx.op.dot3.f32(i32 55, float %7541, float %7542, float %7543, float %7541, float %7542, float %7543)  ; Dot3(ax,ay,az,bx,by,bz)
  %7582 = call float @dx.op.unary.f32(i32 25, float %7581)  ; Rsqrt(value)
  %7583 = fmul fast float %7582, %7581
  %7584 = fmul fast float %7582, %7541
  %7585 = fmul fast float %7582, %7542
  %7586 = fmul fast float %7582, %7543
  %7587 = fadd fast float %7583, %7557
  %7588 = call float @dx.op.dot3.f32(i32 55, float %7584, float %7585, float %7586, float %7554, float %7555, float %7556)  ; Dot3(ax,ay,az,bx,by,bz)
  %7589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.i32 %7589, 1
  %7591 = and i32 %7590, 1
  %7592 = icmp ne i32 %7591, 0
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 2
  %7595 = fcmp fast ogt float %7594, 0.000000e+00
  %7596 = and i1 %7592, %7595
  br i1 %7596, label %7597, label %8003, !dx.controlflow.hints !126

; <label>:7597                                    ; preds = %7552
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 3
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 2
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7604 = fsub fast float %7601, %7603
  %7605 = and i32 %7590, 2
  %7606 = extractvalue %dx.types.CBufRet.i32 %7589, 0
  %7607 = call i32 @dx.op.binary.i32(i32 40, i32 %7606, i32 3)  ; UMin(a,b)
  %7608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.f32 %7608, 0
  %7610 = extractvalue %dx.types.CBufRet.f32 %7608, 1
  %7611 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %7612 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7613 = fsub fast float %7609, %7611
  %7614 = fsub fast float %7610, %7612
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = fcmp fast ogt float %7616, 0.000000e+00
  %7618 = fsub fast float -0.000000e+00, %7613
  %7619 = fsub fast float -0.000000e+00, %7614
  %7620 = call float @dx.op.dot2.f32(i32 54, float %7584, float %7585, float %7584, float %7585)  ; Dot2(ax,ay,bx,by)
  %7621 = call float @dx.op.dot2.f32(i32 54, float %7584, float %7585, float %7618, float %7619)  ; Dot2(ax,ay,bx,by)
  %7622 = fmul fast float %7621, 2.000000e+00
  %7623 = call float @dx.op.dot2.f32(i32 54, float %7618, float %7619, float %7618, float %7619)  ; Dot2(ax,ay,bx,by)
  %7624 = fmul fast float %7616, %7616
  %7625 = fsub fast float %7623, %7624
  %7626 = fmul fast float %7622, %7622
  %7627 = fmul fast float %7620, 4.000000e+00
  %7628 = fmul fast float %7627, %7625
  %7629 = fsub fast float %7626, %7628
  %7630 = fcmp fast ogt float %7629, 0.000000e+00
  br i1 %7630, label %7631, label %7646

; <label>:7631                                    ; preds = %7597
  %7632 = fcmp fast ogt float %7622, 0.000000e+00
  %7633 = call float @dx.op.unary.f32(i32 24, float %7629)  ; Sqrt(value)
  %7634 = fsub fast float -0.000000e+00, %7633
  %7635 = select i1 %7632, float %7633, float %7634
  %7636 = fadd fast float %7635, %7622
  %7637 = fmul float %7636, -5.000000e-01
  %7638 = fdiv fast float %7637, %7620
  %7639 = call float @dx.op.binary.f32(i32 35, float %7638, float 0.000000e+00)  ; FMax(a,b)
  %7640 = call float @dx.op.binary.f32(i32 36, float %7583, float %7639)  ; FMin(a,b)
  %7641 = fdiv fast float %7625, %7637
  %7642 = call float @dx.op.binary.f32(i32 35, float %7641, float 0.000000e+00)  ; FMax(a,b)
  %7643 = call float @dx.op.binary.f32(i32 36, float %7583, float %7642)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7640, float %7643)  ; FMin(a,b)
  %7645 = call float @dx.op.binary.f32(i32 35, float %7640, float %7643)  ; FMax(a,b)
  br label %7646

; <label>:7646                                    ; preds = %7631, %7597
  %7647 = phi float [ %7645, %7631 ], [ -1.000000e+00, %7597 ]
  %7648 = phi float [ %7644, %7631 ], [ -1.000000e+00, %7597 ]
  %7649 = phi i1 [ true, %7631 ], [ false, %7597 ]
  %7650 = and i1 %7617, %7649
  br i1 %7650, label %7651, label %7653

; <label>:7651                                    ; preds = %7646
  %7652 = fcmp fast oeq float %7648, %7647
  br i1 %7652, label %7956, label %7654

; <label>:7653                                    ; preds = %7646
  br i1 %7617, label %7956, label %7654

; <label>:7654                                    ; preds = %7653, %7651
  %7655 = phi float [ %7583, %7653 ], [ %7647, %7651 ]
  %7656 = phi float [ 0.000000e+00, %7653 ], [ %7648, %7651 ]
  %7657 = icmp ne i32 %7605, 0
  %7658 = fmul fast float %7655, %7586
  %7659 = fadd fast float %7658, %7599
  %7660 = fmul fast float %7659, %7655
  %7661 = select i1 %7657, float 0.000000e+00, float %7660
  %7662 = fcmp fast oeq float %7586, 0.000000e+00
  %7663 = fdiv fast float %7604, %7586
  %7664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7663)  ; FMax(a,b)
  %7665 = select i1 %7662, float %7655, float %7664
  %7666 = call float @dx.op.binary.f32(i32 36, float %7655, float %7665)  ; FMin(a,b)
  %7667 = fcmp fast ogt float %7586, 0.000000e+00
  %7668 = fcmp fast olt float %7604, 0.000000e+00
  br i1 %7667, label %7669, label %7726

; <label>:7669                                    ; preds = %7654
  %7670 = icmp eq i32 %7605, 0
  br i1 %7668, label %7671, label %7715

; <label>:7671                                    ; preds = %7669
  %7672 = select i1 %7670, float %7655, float 0.000000e+00
  %7673 = fsub fast float -0.000000e+00, %7672
  %7674 = call float @dx.op.unary.f32(i32 6, float %7673)  ; FAbs(value)
  %7675 = fmul fast float %7672, %7586
  %7676 = fadd fast float %7675, %7599
  %7677 = fmul fast float %7674, %7676
  %7678 = fsub fast float %7661, %7677
  %7679 = fsub fast float %7655, %7674
  %7680 = select i1 %7670, float %7679, float 0.000000e+00
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 0
  %7683 = extractvalue %dx.types.CBufRet.f32 %7681, 1
  %7684 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7689 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 3
  %7692 = call float @dx.op.binary.f32(i32 36, float %7678, float %7691)  ; FMin(a,b)
  %7693 = fmul fast float %7689, %7680
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fsub fast float %7686, %7682
  %7696 = fsub fast float %7687, %7683
  %7697 = fsub fast float %7688, %7684
  %7698 = fmul fast float %7694, %7695
  %7699 = fmul fast float %7694, %7696
  %7700 = fmul fast float %7694, %7697
  %7701 = fadd fast float %7698, %7682
  %7702 = fadd fast float %7699, %7683
  %7703 = fadd fast float %7700, %7684
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.CBufRet.f32 %7704, 1
  %7707 = fadd fast float %7706, %7705
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7704, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7704, 3
  %7711 = fadd fast float %7710, %7709
  %7712 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7713 = fmul fast float %7708, %7692
  %7714 = fmul fast float %7713, %7712
  br label %7956

; <label>:7715                                    ; preds = %7669
  br i1 %7670, label %7716, label %7737

; <label>:7716                                    ; preds = %7715
  %7717 = call float @dx.op.binary.f32(i32 36, float %7666, float %7656)  ; FMin(a,b)
  %7718 = fsub fast float %7666, %7717
  %7719 = fsub fast float %7718, %7655
  %7720 = call float @dx.op.unary.f32(i32 6, float %7719)  ; FAbs(value)
  %7721 = fadd fast float %7718, %7655
  %7722 = fmul fast float %7721, %7586
  %7723 = fadd fast float %7722, %7599
  %7724 = fmul fast float %7723, %7720
  %7725 = fsub fast float %7661, %7724
  br label %7737

; <label>:7726                                    ; preds = %7654
  br i1 %7668, label %7727, label %7737

; <label>:7727                                    ; preds = %7726
  %7728 = call float @dx.op.binary.f32(i32 35, float %7656, float %7666)  ; FMax(a,b)
  %7729 = icmp eq i32 %7605, 0
  %7730 = select i1 %7729, float %7666, float 0.000000e+00
  %7731 = fsub fast float -0.000000e+00, %7730
  %7732 = call float @dx.op.unary.f32(i32 6, float %7731)  ; FAbs(value)
  %7733 = fmul fast float %7730, %7586
  %7734 = fadd fast float %7733, %7599
  %7735 = fmul fast float %7732, %7734
  %7736 = fsub fast float %7661, %7735
  br label %7737

; <label>:7737                                    ; preds = %7727, %7726, %7716, %7715
  %7738 = phi float [ %7656, %7715 ], [ %7656, %7716 ], [ %7728, %7727 ], [ %7656, %7726 ]
  %7739 = phi float [ 0.000000e+00, %7715 ], [ %7720, %7716 ], [ %7732, %7727 ], [ 0.000000e+00, %7726 ]
  %7740 = phi float [ %7661, %7715 ], [ %7725, %7716 ], [ %7736, %7727 ], [ %7661, %7726 ]
  %7741 = phi float [ %7666, %7715 ], [ %7666, %7716 ], [ %7655, %7727 ], [ %7655, %7726 ]
  %7742 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %7742, align 4, !tbaa !127, !noalias !129
  %7743 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %7743, align 4, !tbaa !127, !noalias !129
  %7744 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %7744, align 4, !tbaa !127, !noalias !129
  %7745 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %7745, align 4, !tbaa !127, !noalias !129
  %7746 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %7746, align 4, !tbaa !127, !noalias !129
  %7747 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %7747, align 4, !tbaa !127, !noalias !129
  %7748 = icmp sgt i32 %7607, 0
  br i1 %7748, label %7749, label %7810

; <label>:7749                                    ; preds = %7737
  br label %7750

; <label>:7750                                    ; preds = %7799, %7749
  %7751 = phi i32 [ %7800, %7799 ], [ 0, %7749 ]
  %7752 = phi i32 [ %7801, %7799 ], [ 0, %7749 ]
  %7753 = add nuw i32 %7752, 171
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7753)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7760 = fsub fast float %7755, %7758
  %7761 = fsub fast float %7756, %7759
  %7762 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7763 = fsub fast float -0.000000e+00, %7760
  %7764 = fsub fast float -0.000000e+00, %7761
  %7765 = call float @dx.op.dot2.f32(i32 54, float %7584, float %7585, float %7763, float %7764)  ; Dot2(ax,ay,bx,by)
  %7766 = fmul fast float %7765, 2.000000e+00
  %7767 = call float @dx.op.dot2.f32(i32 54, float %7763, float %7764, float %7763, float %7764)  ; Dot2(ax,ay,bx,by)
  %7768 = fmul fast float %7762, %7762
  %7769 = fsub fast float %7767, %7768
  %7770 = fmul fast float %7766, %7766
  %7771 = fmul fast float %7627, %7769
  %7772 = fsub fast float %7770, %7771
  %7773 = fcmp fast ogt float %7772, 0.000000e+00
  br i1 %7773, label %7774, label %7789

; <label>:7774                                    ; preds = %7750
  %7775 = fcmp fast ogt float %7766, 0.000000e+00
  %7776 = call float @dx.op.unary.f32(i32 24, float %7772)  ; Sqrt(value)
  %7777 = fsub fast float -0.000000e+00, %7776
  %7778 = select i1 %7775, float %7776, float %7777
  %7779 = fadd fast float %7778, %7766
  %7780 = fmul float %7779, -5.000000e-01
  %7781 = fdiv fast float %7780, %7620
  %7782 = call float @dx.op.binary.f32(i32 35, float %7781, float 0.000000e+00)  ; FMax(a,b)
  %7783 = call float @dx.op.binary.f32(i32 36, float %7655, float %7782)  ; FMin(a,b)
  %7784 = fdiv fast float %7769, %7780
  %7785 = call float @dx.op.binary.f32(i32 35, float %7784, float 0.000000e+00)  ; FMax(a,b)
  %7786 = call float @dx.op.binary.f32(i32 36, float %7655, float %7785)  ; FMin(a,b)
  %7787 = call float @dx.op.binary.f32(i32 36, float %7783, float %7786)  ; FMin(a,b)
  %7788 = call float @dx.op.binary.f32(i32 35, float %7783, float %7786)  ; FMax(a,b)
  br label %7789

; <label>:7789                                    ; preds = %7774, %7750
  %7790 = phi float [ %7788, %7774 ], [ -1.000000e+00, %7750 ]
  %7791 = phi float [ %7787, %7774 ], [ -1.000000e+00, %7750 ]
  %7792 = phi i1 [ true, %7774 ], [ false, %7750 ]
  br i1 %7792, label %7793, label %7799

; <label>:7793                                    ; preds = %7789
  %7794 = call float @dx.op.binary.f32(i32 35, float %7738, float %7791)  ; FMax(a,b)
  %7795 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7752
  store float %7794, float* %7795, align 4, !tbaa !127, !noalias !129
  %7796 = call float @dx.op.binary.f32(i32 35, float %7738, float %7790)  ; FMax(a,b)
  %7797 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7752
  store float %7796, float* %7797, align 4, !tbaa !127, !noalias !129
  %7798 = add nsw i32 %7751, 1
  br label %7799

; <label>:7799                                    ; preds = %7793, %7789
  %7800 = phi i32 [ %7798, %7793 ], [ %7751, %7789 ]
  %7801 = add nuw nsw i32 %7752, 1
  %7802 = icmp eq i32 %7801, %7607
  br i1 %7802, label %7803, label %7750

; <label>:7803                                    ; preds = %7799
  %7804 = load float, float* %7744, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %7805 = load float, float* %7743, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  %7806 = load float, float* %7742, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  %7807 = load float, float* %7747, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %7808 = load float, float* %7746, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  %7809 = load float, float* %7745, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  br label %7810

; <label>:7810                                    ; preds = %7803, %7737
  %7811 = phi float [ -1.000000e+00, %7737 ], [ %7809, %7803 ]
  %7812 = phi float [ -1.000000e+00, %7737 ], [ %7808, %7803 ]
  %7813 = phi float [ -1.000000e+00, %7737 ], [ %7807, %7803 ]
  %7814 = phi float [ -1.000000e+00, %7737 ], [ %7806, %7803 ]
  %7815 = phi float [ -1.000000e+00, %7737 ], [ %7805, %7803 ]
  %7816 = phi float [ -1.000000e+00, %7737 ], [ %7804, %7803 ]
  %7817 = phi i32 [ 0, %7737 ], [ %7800, %7803 ]
  %7818 = call float @dx.op.binary.f32(i32 36, float %7815, float %7816)  ; FMin(a,b)
  %7819 = call float @dx.op.binary.f32(i32 36, float %7814, float %7818)  ; FMin(a,b)
  %7820 = call float @dx.op.binary.f32(i32 35, float %7814, float %7815)  ; FMax(a,b)
  %7821 = call float @dx.op.binary.f32(i32 36, float %7820, float %7816)  ; FMin(a,b)
  %7822 = call float @dx.op.binary.f32(i32 36, float %7814, float %7815)  ; FMin(a,b)
  %7823 = call float @dx.op.binary.f32(i32 35, float %7822, float %7821)  ; FMax(a,b)
  %7824 = call float @dx.op.binary.f32(i32 35, float %7815, float %7816)  ; FMax(a,b)
  %7825 = call float @dx.op.binary.f32(i32 35, float %7814, float %7824)  ; FMax(a,b)
  store float %7819, float* %7742, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  store float %7823, float* %7743, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  store float %7825, float* %7744, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %7826 = call float @dx.op.binary.f32(i32 36, float %7812, float %7813)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 36, float %7811, float %7826)  ; FMin(a,b)
  %7828 = call float @dx.op.binary.f32(i32 35, float %7811, float %7812)  ; FMax(a,b)
  %7829 = call float @dx.op.binary.f32(i32 36, float %7828, float %7813)  ; FMin(a,b)
  %7830 = call float @dx.op.binary.f32(i32 36, float %7811, float %7812)  ; FMin(a,b)
  %7831 = call float @dx.op.binary.f32(i32 35, float %7830, float %7829)  ; FMax(a,b)
  %7832 = call float @dx.op.binary.f32(i32 35, float %7812, float %7813)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float %7811, float %7832)  ; FMax(a,b)
  store float %7827, float* %7745, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  store float %7831, float* %7746, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  store float %7833, float* %7747, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %7834 = sub nsw i32 3, %7817
  %7835 = icmp sgt i32 %7834, 2
  br i1 %7835, label %7836, label %7874

; <label>:7836                                    ; preds = %7810
  %7837 = icmp eq i32 %7605, 0
  %7838 = fsub fast float %7655, %7739
  %7839 = select i1 %7837, float %7838, float %7739
  %7840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.CBufRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.CBufRet.f32 %7840, 2
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7847 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7848 = extractvalue %dx.types.CBufRet.f32 %7844, 3
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 3
  %7851 = call float @dx.op.binary.f32(i32 36, float %7740, float %7850)  ; FMin(a,b)
  %7852 = fmul fast float %7848, %7839
  %7853 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7854 = fsub fast float %7845, %7841
  %7855 = fsub fast float %7846, %7842
  %7856 = fsub fast float %7847, %7843
  %7857 = fmul fast float %7853, %7854
  %7858 = fmul fast float %7853, %7855
  %7859 = fmul fast float %7853, %7856
  %7860 = fadd fast float %7857, %7841
  %7861 = fadd fast float %7858, %7842
  %7862 = fadd fast float %7859, %7843
  %7863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.CBufRet.f32 %7863, 1
  %7866 = fadd fast float %7865, %7864
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7863, 2
  %7869 = extractvalue %dx.types.CBufRet.f32 %7863, 3
  %7870 = fadd fast float %7869, %7868
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fmul fast float %7867, %7851
  %7873 = fmul fast float %7872, %7871
  br label %7956

; <label>:7874                                    ; preds = %7810
  %7875 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7834
  %7876 = load float, float* %7875, align 4, !tbaa !127, !noalias !129
  %7877 = fcmp fast olt float %7876, %7741
  %7878 = icmp sgt i32 %7817, 0
  %7879 = and i1 %7878, %7877
  br i1 %7879, label %7880, label %7917

; <label>:7880                                    ; preds = %7874
  br label %7881

; <label>:7881                                    ; preds = %7910, %7880
  %7882 = phi float [ %7911, %7910 ], [ %7739, %7880 ]
  %7883 = phi float [ %7912, %7910 ], [ %7740, %7880 ]
  %7884 = phi float [ %7892, %7910 ], [ %7876, %7880 ]
  %7885 = phi i32 [ %7889, %7910 ], [ %7834, %7880 ]
  %7886 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7885
  %7887 = load float, float* %7886, align 4, !tbaa !127, !noalias !129
  %7888 = icmp slt i32 %7885, 2
  %7889 = add nsw i32 %7885, 1
  %7890 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7889
  %7891 = load float, float* %7890, align 4, !tbaa !127, !noalias !129
  %7892 = select i1 %7888, float %7891, float %7655
  %7893 = call float @dx.op.binary.f32(i32 36, float %7892, float %7887)  ; FMin(a,b)
  %7894 = call float @dx.op.binary.f32(i32 36, float %7741, float %7893)  ; FMin(a,b)
  %7895 = icmp eq i32 %7605, 0
  %7896 = fadd fast float %7894, %7884
  %7897 = fmul fast float %7896, %7586
  %7898 = fadd fast float %7897, %7599
  br i1 %7895, label %7904, label %7899

; <label>:7899                                    ; preds = %7881
  %7900 = fsub fast float %7894, %7884
  %7901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7900)  ; FMax(a,b)
  %7902 = fmul fast float %7901, %7898
  %7903 = fadd fast float %7902, %7883
  br label %7910

; <label>:7904                                    ; preds = %7881
  %7905 = fsub fast float %7884, %7894
  %7906 = call float @dx.op.unary.f32(i32 6, float %7905)  ; FAbs(value)
  %7907 = fadd fast float %7906, %7882
  %7908 = fmul fast float %7906, %7898
  %7909 = fsub fast float %7883, %7908
  br label %7910

; <label>:7910                                    ; preds = %7904, %7899
  %7911 = phi float [ %7901, %7899 ], [ %7907, %7904 ]
  %7912 = phi float [ %7903, %7899 ], [ %7909, %7904 ]
  %7913 = fcmp fast olt float %7892, %7741
  %7914 = icmp slt i32 %7889, 3
  %7915 = and i1 %7914, %7913
  br i1 %7915, label %7881, label %7916

; <label>:7916                                    ; preds = %7910
  br label %7917

; <label>:7917                                    ; preds = %7916, %7874
  %7918 = phi float [ %7739, %7874 ], [ %7911, %7916 ]
  %7919 = phi float [ %7740, %7874 ], [ %7912, %7916 ]
  %7920 = fsub fast float %7655, %7918
  %7921 = select i1 %7657, float %7918, float %7920
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7925 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 3
  %7933 = call float @dx.op.binary.f32(i32 36, float %7919, float %7932)  ; FMin(a,b)
  %7934 = fmul fast float %7930, %7921
  %7935 = call float @dx.op.unary.f32(i32 7, float %7934)  ; Saturate(value)
  %7936 = fsub fast float %7927, %7923
  %7937 = fsub fast float %7928, %7924
  %7938 = fsub fast float %7929, %7925
  %7939 = fmul fast float %7935, %7936
  %7940 = fmul fast float %7935, %7937
  %7941 = fmul fast float %7935, %7938
  %7942 = fadd fast float %7939, %7923
  %7943 = fadd fast float %7940, %7924
  %7944 = fadd fast float %7941, %7925
  %7945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.f32 %7945, 0
  %7947 = extractvalue %dx.types.CBufRet.f32 %7945, 1
  %7948 = fadd fast float %7947, %7946
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7945, 2
  %7951 = extractvalue %dx.types.CBufRet.f32 %7945, 3
  %7952 = fadd fast float %7951, %7950
  %7953 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7954 = fmul fast float %7949, %7933
  %7955 = fmul fast float %7954, %7953
  br label %7956

; <label>:7956                                    ; preds = %7917, %7836, %7671, %7653, %7651
  %7957 = phi float [ %7680, %7671 ], [ %7839, %7836 ], [ %7921, %7917 ], [ 0.000000e+00, %7651 ], [ 0.000000e+00, %7653 ]
  %7958 = phi float [ %7714, %7671 ], [ %7873, %7836 ], [ %7955, %7917 ], [ 0.000000e+00, %7651 ], [ 0.000000e+00, %7653 ]
  %7959 = phi float [ %7701, %7671 ], [ %7860, %7836 ], [ %7942, %7917 ], [ 0.000000e+00, %7651 ], [ 0.000000e+00, %7653 ]
  %7960 = phi float [ %7702, %7671 ], [ %7861, %7836 ], [ %7943, %7917 ], [ 0.000000e+00, %7651 ], [ 0.000000e+00, %7653 ]
  %7961 = phi float [ %7703, %7671 ], [ %7862, %7836 ], [ %7944, %7917 ], [ 0.000000e+00, %7651 ], [ 0.000000e+00, %7653 ]
  %7962 = fmul fast float %7594, %7958
  %7963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.f32 %7963, 2
  %7965 = fsub fast float %7601, %7964
  %7966 = fcmp fast olt float %7962, -2.000000e+01
  %7967 = call float @dx.op.unary.f32(i32 21, float %7962)  ; Exp(value)
  %7968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7969 = extractvalue %dx.types.CBufRet.f32 %7968, 2
  %7970 = extractvalue %dx.types.CBufRet.f32 %7968, 3
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7973 = fmul fast float %7970, %7965
  %7974 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7975 = fsub fast float 1.000000e+00, %7974
  %7976 = fmul fast float %7586, 5.000000e-01
  %7977 = fadd fast float %7976, 5.000000e-01
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fsub fast float 1.000000e+00, %7978
  %7980 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7975)  ; FMax(a,b)
  %7981 = fdiv fast float %7979, %7980
  %7982 = fsub fast float %7965, %7543
  %7983 = call float @dx.op.unary.f32(i32 6, float %7982)  ; FAbs(value)
  %7984 = fmul fast float %7983, %7969
  %7985 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7986 = fsub fast float 1.000000e+00, %7984
  %7987 = fmul fast float %7986, %7985
  %7988 = fadd fast float %7987, %7984
  %7989 = fmul fast float %7972, %7965
  %7990 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7991 = fsub fast float 1.000000e+00, %7988
  %7992 = fmul fast float %7991, %7990
  %7993 = fadd fast float %7992, %7988
  %7994 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7995 = fadd fast float %7967, -1.000000e+00
  %7996 = select i1 %7966, float -1.000000e+00, float %7995
  %7997 = fmul fast float %7994, %7996
  %7998 = fadd fast float %7997, 1.000000e+00
  %7999 = fsub fast float -0.000000e+00, %7997
  %8000 = fmul fast float %7959, %7999
  %8001 = fmul fast float %7960, %7999
  %8002 = fmul fast float %7961, %7999
  br label %8003

; <label>:8003                                    ; preds = %7956, %7552
  %8004 = phi float [ %7957, %7956 ], [ 0.000000e+00, %7552 ]
  %8005 = phi float [ %7998, %7956 ], [ 1.000000e+00, %7552 ]
  %8006 = phi float [ %8000, %7956 ], [ 0.000000e+00, %7552 ]
  %8007 = phi float [ %8001, %7956 ], [ 0.000000e+00, %7552 ]
  %8008 = phi float [ %8002, %7956 ], [ 0.000000e+00, %7552 ]
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8011 = fsub fast float 1.000000e+00, %8005
  %8012 = fmul fast float %8011, %7587
  %8013 = fmul fast float %8012, %8010
  %8014 = fsub fast float %7587, %8013
  br i1 %7580, label %8015, label %8044, !dx.controlflow.hints !165

; <label>:8015                                    ; preds = %8003
  %8016 = fmul fast float %7588, %7577
  %8017 = fadd fast float %8016, %7578
  %8018 = call float @dx.op.unary.f32(i32 7, float %8017)  ; Saturate(value)
  %8019 = fmul fast float %7559, %8014
  %8020 = fsub fast float -0.000000e+00, %8019
  %8021 = fmul fast float %7560, %8014
  %8022 = fsub fast float -0.000000e+00, %8021
  %8023 = call float @dx.op.unary.f32(i32 21, float %8020)  ; Exp(value)
  %8024 = call float @dx.op.unary.f32(i32 21, float %8022)  ; Exp(value)
  %8025 = call float @dx.op.binary.f32(i32 35, float %7567, float %8023)  ; FMax(a,b)
  %8026 = call float @dx.op.binary.f32(i32 35, float %7567, float %8024)  ; FMax(a,b)
  %8027 = fsub fast float %8026, %8025
  %8028 = fmul fast float %8027, %8018
  %8029 = fadd fast float %8028, %8025
  %8030 = call float @dx.op.unary.f32(i32 7, float %8029)  ; Saturate(value)
  %8031 = fsub fast float %7564, %7569
  %8032 = fsub fast float %7565, %7570
  %8033 = fsub fast float %7566, %7571
  %8034 = fmul fast float %8018, %8031
  %8035 = fmul fast float %8018, %8032
  %8036 = fmul fast float %8018, %8033
  %8037 = fadd fast float %8034, %7569
  %8038 = fadd fast float %8035, %7570
  %8039 = fadd fast float %8036, %7571
  %8040 = fsub fast float 1.000000e+00, %8030
  %8041 = fmul fast float %8040, %8037
  %8042 = fmul fast float %8040, %8038
  %8043 = fmul fast float %8040, %8039
  br label %8103

; <label>:8044                                    ; preds = %8003
  %8045 = fmul fast float %8014, %7576
  %8046 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8047 = fsub fast float 2.000000e+00, %8046
  %8048 = fmul fast float %8046, 9.921875e-01
  %8049 = fmul fast float %8048, %8047
  %8050 = fadd fast float %8049, 3.906250e-03
  %8051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8050, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8052 = extractvalue %dx.types.ResRet.f32 %8051, 0
  %8053 = fsub fast float %8046, %8052
  %8054 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8053)  ; FMax(a,b)
  %8055 = fmul fast float %7562, %7543
  %8056 = call float @dx.op.unary.f32(i32 6, float %8055)  ; FAbs(value)
  %8057 = fcmp fast ogt float %8056, 0x3EB0C6F7A0000000
  br i1 %8057, label %8058, label %8064, !dx.controlflow.hints !166

; <label>:8058                                    ; preds = %8044
  %8059 = fmul fast float %8055, 0xBFF7154760000000
  %8060 = call float @dx.op.unary.f32(i32 21, float %8059)  ; Exp(value)
  %8061 = fsub fast float 1.000000e+00, %8060
  %8062 = fdiv fast float %8061, %8055
  %8063 = fmul fast float %8062, %7572
  br label %8064

; <label>:8064                                    ; preds = %8058, %8044
  %8065 = phi float [ %8063, %8058 ], [ %7572, %8044 ]
  %8066 = fadd fast float %8065, %7574
  %8067 = fmul fast float %8066, %8054
  %8068 = fmul fast float %7559, %8067
  %8069 = fsub fast float -0.000000e+00, %8068
  %8070 = fmul fast float %7560, %8067
  %8071 = fsub fast float -0.000000e+00, %8070
  %8072 = fmul fast float %7561, %8067
  %8073 = fsub fast float -0.000000e+00, %8072
  %8074 = call float @dx.op.unary.f32(i32 21, float %8069)  ; Exp(value)
  %8075 = call float @dx.op.unary.f32(i32 21, float %8071)  ; Exp(value)
  %8076 = call float @dx.op.unary.f32(i32 21, float %8073)  ; Exp(value)
  %8077 = fmul fast float %7588, %7588
  %8078 = fadd fast float %8077, 1.000000e+00
  %8079 = fmul fast float %8078, 0x3FAE8EC8A0000000
  %8080 = fmul fast float %8079, %7569
  %8081 = fmul fast float %8079, %7570
  %8082 = fmul fast float %8079, %7571
  %8083 = fmul fast float %7588, %7567
  %8084 = fsub fast float 1.000000e+00, %8083
  %8085 = fmul fast float %7567, %7567
  %8086 = fsub fast float 1.000000e+00, %8085
  %8087 = fmul fast float %8086, 0x3FB45F3060000000
  %8088 = fmul fast float %8084, %8084
  %8089 = fdiv fast float 1.000000e+00, %8088
  %8090 = fmul fast float %8087, %8089
  %8091 = fmul fast float %8090, %7564
  %8092 = fmul fast float %8090, %7565
  %8093 = fmul fast float %8090, %7566
  %8094 = fadd fast float %8091, %8080
  %8095 = fadd fast float %8092, %8081
  %8096 = fadd fast float %8093, %8082
  %8097 = fsub fast float 1.000000e+00, %8074
  %8098 = fsub fast float 1.000000e+00, %8075
  %8099 = fsub fast float 1.000000e+00, %8076
  %8100 = fmul fast float %8094, %8097
  %8101 = fmul fast float %8095, %8098
  %8102 = fmul fast float %8096, %8099
  br label %8103

; <label>:8103                                    ; preds = %8064, %8015
  %8104 = phi float [ %8041, %8015 ], [ %8100, %8064 ]
  %8105 = phi float [ %8042, %8015 ], [ %8101, %8064 ]
  %8106 = phi float [ %8043, %8015 ], [ %8102, %8064 ]
  %8107 = phi float [ %8030, %8015 ], [ %8074, %8064 ]
  %8108 = phi float [ %8030, %8015 ], [ %8075, %8064 ]
  %8109 = phi float [ %8030, %8015 ], [ %8076, %8064 ]
  br i1 %7596, label %8110, label %8308, !dx.controlflow.hints !167

; <label>:8110                                    ; preds = %8103
  %8111 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8112 = fmul fast float %8111, %8011
  %8113 = fsub fast float %8006, %8104
  %8114 = fsub fast float %8007, %8105
  %8115 = fsub fast float %8008, %8106
  %8116 = fmul fast float %8112, %8113
  %8117 = fmul fast float %8112, %8114
  %8118 = fmul fast float %8112, %8115
  %8119 = fadd fast float %8116, %8104
  %8120 = fadd fast float %8117, %8105
  %8121 = fadd fast float %8118, %8106
  %8122 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8107)  ; FMax(a,b)
  %8123 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8108)  ; FMax(a,b)
  %8124 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8109)  ; FMax(a,b)
  %8125 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8005)  ; FMax(a,b)
  %8126 = call float @dx.op.binary.f32(i32 35, float %8004, float %8014)  ; FMax(a,b)
  %8127 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8126)  ; FMax(a,b)
  %8128 = fdiv fast float %8004, %8127
  %8129 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8130 = fdiv fast float %8014, %8127
  %8131 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  %8132 = fcmp fast une float %8125, 1.000000e+00
  br i1 %8132, label %8133, label %8146, !dx.controlflow.hints !168

; <label>:8133                                    ; preds = %8110
  %8134 = call float @dx.op.unary.f32(i32 23, float %8125)  ; Log(value)
  %8135 = fmul fast float %8134, 0x3FE62E4300000000
  %8136 = fmul fast float %8006, %8135
  %8137 = fsub fast float -0.000000e+00, %8136
  %8138 = fmul fast float %8007, %8135
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = fmul fast float %8008, %8135
  %8141 = fsub fast float -0.000000e+00, %8140
  %8142 = fsub fast float 1.000000e+00, %8125
  %8143 = fdiv fast float %8137, %8142
  %8144 = fdiv fast float %8139, %8142
  %8145 = fdiv fast float %8141, %8142
  br label %8146

; <label>:8146                                    ; preds = %8133, %8110
  %8147 = phi float [ %8143, %8133 ], [ %8006, %8110 ]
  %8148 = phi float [ %8144, %8133 ], [ %8007, %8110 ]
  %8149 = phi float [ %8145, %8133 ], [ %8008, %8110 ]
  %8150 = phi float [ %8135, %8133 ], [ 0.000000e+00, %8110 ]
  %8151 = fcmp fast une float %8122, 1.000000e+00
  br i1 %8151, label %8152, label %8159, !dx.controlflow.hints !169

; <label>:8152                                    ; preds = %8146
  %8153 = call float @dx.op.unary.f32(i32 23, float %8122)  ; Log(value)
  %8154 = fmul fast float %8153, 0x3FE62E4300000000
  %8155 = fmul fast float %8119, %8154
  %8156 = fsub fast float -0.000000e+00, %8155
  %8157 = fsub fast float 1.000000e+00, %8122
  %8158 = fdiv fast float %8156, %8157
  br label %8159

; <label>:8159                                    ; preds = %8152, %8146
  %8160 = phi float [ %8158, %8152 ], [ %8119, %8146 ]
  %8161 = phi float [ %8154, %8152 ], [ 0.000000e+00, %8146 ]
  %8162 = fcmp fast une float %8123, 1.000000e+00
  br i1 %8162, label %8163, label %8170, !dx.controlflow.hints !169

; <label>:8163                                    ; preds = %8159
  %8164 = call float @dx.op.unary.f32(i32 23, float %8123)  ; Log(value)
  %8165 = fmul fast float %8164, 0x3FE62E4300000000
  %8166 = fmul fast float %8120, %8165
  %8167 = fsub fast float -0.000000e+00, %8166
  %8168 = fsub fast float 1.000000e+00, %8123
  %8169 = fdiv fast float %8167, %8168
  br label %8170

; <label>:8170                                    ; preds = %8163, %8159
  %8171 = phi float [ %8169, %8163 ], [ %8120, %8159 ]
  %8172 = phi float [ %8165, %8163 ], [ 0.000000e+00, %8159 ]
  %8173 = fcmp fast une float %8124, 1.000000e+00
  br i1 %8173, label %8174, label %8181, !dx.controlflow.hints !169

; <label>:8174                                    ; preds = %8170
  %8175 = call float @dx.op.unary.f32(i32 23, float %8124)  ; Log(value)
  %8176 = fmul fast float %8175, 0x3FE62E4300000000
  %8177 = fmul fast float %8121, %8176
  %8178 = fsub fast float -0.000000e+00, %8177
  %8179 = fsub fast float 1.000000e+00, %8124
  %8180 = fdiv fast float %8178, %8179
  br label %8181

; <label>:8181                                    ; preds = %8174, %8170
  %8182 = phi float [ %8180, %8174 ], [ %8121, %8170 ]
  %8183 = phi float [ %8176, %8174 ], [ 0.000000e+00, %8170 ]
  %8184 = fmul fast float %8147, %8131
  %8185 = fmul fast float %8148, %8131
  %8186 = fmul fast float %8149, %8131
  %8187 = fmul fast float %8150, %8131
  %8188 = fmul fast float %8160, %8129
  %8189 = fmul fast float %8171, %8129
  %8190 = fmul fast float %8182, %8129
  %8191 = fmul fast float %8161, %8129
  %8192 = fmul fast float %8172, %8129
  %8193 = fmul fast float %8183, %8129
  %8194 = fadd fast float %8188, %8184
  %8195 = fadd fast float %8189, %8185
  %8196 = fadd fast float %8190, %8186
  %8197 = fadd fast float %8191, %8187
  %8198 = fadd fast float %8192, %8187
  %8199 = fadd fast float %8193, %8187
  %8200 = fcmp fast une float %8197, 0.000000e+00
  br i1 %8200, label %8201, label %8208, !dx.controlflow.hints !170

; <label>:8201                                    ; preds = %8181
  %8202 = fmul fast float %8197, 0x3FF7154760000000
  %8203 = call float @dx.op.unary.f32(i32 21, float %8202)  ; Exp(value)
  %8204 = fsub fast float 1.000000e+00, %8203
  %8205 = fmul fast float %8194, %8204
  %8206 = fsub fast float -0.000000e+00, %8205
  %8207 = fdiv fast float %8206, %8197
  br label %8208

; <label>:8208                                    ; preds = %8201, %8181
  %8209 = phi float [ %8203, %8201 ], [ 1.000000e+00, %8181 ]
  %8210 = phi float [ %8207, %8201 ], [ %8194, %8181 ]
  %8211 = fcmp fast une float %8198, 0.000000e+00
  br i1 %8211, label %8212, label %8219, !dx.controlflow.hints !170

; <label>:8212                                    ; preds = %8208
  %8213 = fmul fast float %8198, 0x3FF7154760000000
  %8214 = call float @dx.op.unary.f32(i32 21, float %8213)  ; Exp(value)
  %8215 = fsub fast float 1.000000e+00, %8214
  %8216 = fmul fast float %8195, %8215
  %8217 = fsub fast float -0.000000e+00, %8216
  %8218 = fdiv fast float %8217, %8198
  br label %8219

; <label>:8219                                    ; preds = %8212, %8208
  %8220 = phi float [ %8214, %8212 ], [ 1.000000e+00, %8208 ]
  %8221 = phi float [ %8218, %8212 ], [ %8195, %8208 ]
  %8222 = fcmp fast une float %8199, 0.000000e+00
  br i1 %8222, label %8223, label %8230, !dx.controlflow.hints !170

; <label>:8223                                    ; preds = %8219
  %8224 = fmul fast float %8199, 0x3FF7154760000000
  %8225 = call float @dx.op.unary.f32(i32 21, float %8224)  ; Exp(value)
  %8226 = fsub fast float 1.000000e+00, %8225
  %8227 = fmul fast float %8196, %8226
  %8228 = fsub fast float -0.000000e+00, %8227
  %8229 = fdiv fast float %8228, %8199
  br label %8230

; <label>:8230                                    ; preds = %8223, %8219
  %8231 = phi float [ %8225, %8223 ], [ 1.000000e+00, %8219 ]
  %8232 = phi float [ %8229, %8223 ], [ %8196, %8219 ]
  %8233 = fcmp fast ogt float %8129, %8131
  br i1 %8233, label %8234, label %8254

; <label>:8234                                    ; preds = %8230
  %8235 = fsub fast float 1.000000e+00, %8131
  %8236 = fmul fast float %8147, %8235
  %8237 = fmul fast float %8148, %8235
  %8238 = fmul fast float %8149, %8235
  %8239 = fmul fast float %8150, %8235
  %8240 = fcmp fast une float %8239, 0.000000e+00
  br i1 %8240, label %8241, label %8292, !dx.controlflow.hints !171

; <label>:8241                                    ; preds = %8234
  %8242 = fmul fast float %8239, 0x3FF7154760000000
  %8243 = call float @dx.op.unary.f32(i32 21, float %8242)  ; Exp(value)
  %8244 = fsub fast float 1.000000e+00, %8243
  %8245 = fmul fast float %8236, %8244
  %8246 = fsub fast float -0.000000e+00, %8245
  %8247 = fmul fast float %8237, %8244
  %8248 = fsub fast float -0.000000e+00, %8247
  %8249 = fmul fast float %8238, %8244
  %8250 = fsub fast float -0.000000e+00, %8249
  %8251 = fdiv fast float %8246, %8239
  %8252 = fdiv fast float %8248, %8239
  %8253 = fdiv fast float %8250, %8239
  br label %8292

; <label>:8254                                    ; preds = %8230
  %8255 = fsub fast float 1.000000e+00, %8129
  %8256 = fmul fast float %8160, %8255
  %8257 = fmul fast float %8171, %8255
  %8258 = fmul fast float %8182, %8255
  %8259 = fmul fast float %8161, %8255
  %8260 = fmul fast float %8172, %8255
  %8261 = fmul fast float %8183, %8255
  %8262 = fcmp fast une float %8259, 0.000000e+00
  br i1 %8262, label %8263, label %8270, !dx.controlflow.hints !170

; <label>:8263                                    ; preds = %8254
  %8264 = fmul fast float %8259, 0x3FF7154760000000
  %8265 = call float @dx.op.unary.f32(i32 21, float %8264)  ; Exp(value)
  %8266 = fsub fast float 1.000000e+00, %8265
  %8267 = fmul fast float %8256, %8266
  %8268 = fsub fast float -0.000000e+00, %8267
  %8269 = fdiv fast float %8268, %8259
  br label %8270

; <label>:8270                                    ; preds = %8263, %8254
  %8271 = phi float [ %8269, %8263 ], [ %8256, %8254 ]
  %8272 = phi float [ %8265, %8263 ], [ 1.000000e+00, %8254 ]
  %8273 = fcmp fast une float %8260, 0.000000e+00
  br i1 %8273, label %8274, label %8281, !dx.controlflow.hints !170

; <label>:8274                                    ; preds = %8270
  %8275 = fmul fast float %8260, 0x3FF7154760000000
  %8276 = call float @dx.op.unary.f32(i32 21, float %8275)  ; Exp(value)
  %8277 = fsub fast float 1.000000e+00, %8276
  %8278 = fmul fast float %8257, %8277
  %8279 = fsub fast float -0.000000e+00, %8278
  %8280 = fdiv fast float %8279, %8260
  br label %8281

; <label>:8281                                    ; preds = %8274, %8270
  %8282 = phi float [ %8280, %8274 ], [ %8257, %8270 ]
  %8283 = phi float [ %8276, %8274 ], [ 1.000000e+00, %8270 ]
  %8284 = fcmp fast une float %8261, 0.000000e+00
  br i1 %8284, label %8285, label %8292, !dx.controlflow.hints !170

; <label>:8285                                    ; preds = %8281
  %8286 = fmul fast float %8261, 0x3FF7154760000000
  %8287 = call float @dx.op.unary.f32(i32 21, float %8286)  ; Exp(value)
  %8288 = fsub fast float 1.000000e+00, %8287
  %8289 = fmul fast float %8258, %8288
  %8290 = fsub fast float -0.000000e+00, %8289
  %8291 = fdiv fast float %8290, %8261
  br label %8292

; <label>:8292                                    ; preds = %8285, %8281, %8241, %8234
  %8293 = phi float [ %8291, %8285 ], [ %8253, %8241 ], [ %8238, %8234 ], [ %8258, %8281 ]
  %8294 = phi float [ %8282, %8285 ], [ %8252, %8241 ], [ %8237, %8234 ], [ %8282, %8281 ]
  %8295 = phi float [ %8271, %8285 ], [ %8251, %8241 ], [ %8236, %8234 ], [ %8271, %8281 ]
  %8296 = phi float [ %8287, %8285 ], [ %8243, %8241 ], [ 1.000000e+00, %8234 ], [ 1.000000e+00, %8281 ]
  %8297 = phi float [ %8283, %8285 ], [ %8243, %8241 ], [ 1.000000e+00, %8234 ], [ %8283, %8281 ]
  %8298 = phi float [ %8272, %8285 ], [ %8243, %8241 ], [ 1.000000e+00, %8234 ], [ %8272, %8281 ]
  %8299 = fmul fast float %8298, %8210
  %8300 = fmul fast float %8297, %8221
  %8301 = fmul fast float %8296, %8232
  %8302 = fadd fast float %8299, %8295
  %8303 = fadd fast float %8300, %8294
  %8304 = fadd fast float %8301, %8293
  %8305 = fmul fast float %8298, %8209
  %8306 = fmul fast float %8297, %8220
  %8307 = fmul fast float %8296, %8231
  br label %8308

; <label>:8308                                    ; preds = %8292, %8103
  %8309 = phi float [ %8307, %8292 ], [ %8109, %8103 ]
  %8310 = phi float [ %8306, %8292 ], [ %8108, %8103 ]
  %8311 = phi float [ %8305, %8292 ], [ %8107, %8103 ]
  %8312 = phi float [ %8304, %8292 ], [ %8106, %8103 ]
  %8313 = phi float [ %8303, %8292 ], [ %8105, %8103 ]
  %8314 = phi float [ %8302, %8292 ], [ %8104, %8103 ]
  %8315 = fmul fast float %8314, %7260
  %8316 = fmul fast float %8313, %7260
  %8317 = fmul fast float %8312, %7260
  %8318 = fmul fast float %8311, %7551
  %8319 = call float @dx.op.dot3.f32(i32 55, float %8311, float %8310, float %8309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8320 = call float @dx.op.dot3.f32(i32 55, float %8315, float %8316, float %8317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8321 = select i1 %267, float %8319, float %8311
  %8322 = select i1 %267, float %8319, float %8310
  %8323 = select i1 %267, float 1.000000e+00, float %8309
  %8324 = select i1 %267, float %8320, float %8315
  %8325 = select i1 %267, float 0.000000e+00, float %8316
  %8326 = select i1 %267, float 0.000000e+00, float %8317
  %8327 = fmul fast float %8321, %7545
  %8328 = fmul fast float %8322, %7546
  %8329 = fmul fast float %8323, %7547
  %8330 = fadd fast float %8327, %8324
  %8331 = fadd fast float %8328, %8325
  %8332 = fadd fast float %8326, %8329
  %8333 = fmul fast float %8321, %7548
  %8334 = fmul fast float %8322, %7549
  %8335 = fmul fast float %8323, %7550
  %8336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.i32 %8336, 0
  %8338 = icmp eq i32 %8337, 0
  br i1 %8338, label %8706, label %8339, !dx.controlflow.hints !172

; <label>:8339                                    ; preds = %8308
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 2
  %8342 = extractvalue %dx.types.CBufRet.f32 %8340, 3
  %8343 = fmul fast float %8341, %108
  %8344 = fmul fast float %8342, %109
  %8345 = fmul fast float %8343, 2.000000e+00
  %8346 = fmul fast float %8344, 2.000000e+00
  %8347 = fsub fast float 1.000000e+00, %8345
  %8348 = fsub fast float 1.000000e+00, %8346
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8353 = fmul fast float %8347, %8350
  %8354 = fmul fast float %8347, %8351
  %8355 = fmul fast float %8347, %8352
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = fmul fast float %8348, %8357
  %8361 = fmul fast float %8348, %8358
  %8362 = fmul fast float %8348, %8359
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8367 = fadd fast float %8360, %8364
  %8368 = fadd fast float %8367, %8353
  %8369 = fadd fast float %8361, %8365
  %8370 = fadd fast float %8369, %8354
  %8371 = fadd fast float %8362, %8366
  %8372 = fadd fast float %8371, %8355
  %8373 = fmul fast float %8368, %7544
  %8374 = fmul fast float %8370, %7544
  %8375 = fmul fast float %8372, %7544
  %8376 = fmul fast float %8373, %8373
  %8377 = fmul fast float %8374, %8374
  %8378 = fadd fast float %8376, %8377
  %8379 = fmul fast float %8375, %8375
  %8380 = fadd fast float %8378, %8379
  %8381 = call float @dx.op.unary.f32(i32 24, float %8380)  ; Sqrt(value)
  %8382 = extractvalue %dx.types.CBufRet.f32 %7271, 0
  %8383 = fsub fast float %8381, %8382
  %8384 = extractvalue %dx.types.CBufRet.f32 %7271, 2
  %8385 = fmul fast float %8383, %8384
  %8386 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8387 = fadd fast float %8386, -5.000000e-01
  %8388 = fmul fast float %8387, 2.000000e+00
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8391 = call float @dx.op.binary.f32(i32 36, float %8390, float %8388)  ; FMin(a,b)
  %8392 = fsub fast float -0.000000e+00, %8390
  %8393 = fcmp fast ogt float %8391, %8392
  br i1 %8393, label %8394, label %8706, !dx.controlflow.hints !173

; <label>:8394                                    ; preds = %8339
  %8395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8395, 3
  %8397 = fcmp fast ogt float %8396, 0.000000e+00
  br i1 %8397, label %8398, label %8473, !dx.controlflow.hints !174

; <label>:8398                                    ; preds = %8394
  %8399 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8400 = extractvalue %dx.types.Dimensions %8399, 0
  %8401 = sitofp i32 %8400 to float
  %8402 = extractvalue %dx.types.Dimensions %8399, 1
  %8403 = sitofp i32 %8402 to float
  %8404 = fmul fast float %8343, %8401
  %8405 = fmul fast float %8344, %8403
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 1
  %8408 = fsub fast float -0.000000e+00, %8407
  %8409 = fptoui float %8408 to i32
  %8410 = fptoui float %8404 to i32
  %8411 = fptoui float %8405 to i32
  %8412 = and i32 %8409, 31
  %8413 = lshr i32 %8410, %8412
  %8414 = lshr i32 %8411, %8412
  %8415 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8409, i32 %8413, i32 %8414, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = fcmp fast olt float %8416, -1.000000e+00
  %8418 = fcmp fast ogt float %8416, -1.000000e+00
  %8419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8419, 1
  %8421 = select i1 %8418, float %8420, float 1.000000e+00
  %8422 = fadd fast float %8416, 1.000000e+00
  %8423 = fmul fast float %8421, %8422
  %8424 = call float @dx.op.unary.f32(i32 6, float %8423)  ; FAbs(value)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8419, 3
  %8426 = fcmp fast oge float %8424, %8425
  %8427 = select i1 %8426, float 0x4197782600000000, float %8424
  %8428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8429 = extractvalue %dx.types.CBufRet.f32 %8428, 0
  %8430 = extractvalue %dx.types.CBufRet.f32 %8428, 1
  %8431 = extractvalue %dx.types.CBufRet.f32 %8428, 2
  %8432 = select i1 %8417, float %8429, float %8350
  %8433 = select i1 %8417, float %8430, float %8351
  %8434 = select i1 %8417, float %8431, float %8352
  %8435 = fmul fast float %8432, %8347
  %8436 = fmul fast float %8433, %8347
  %8437 = fmul fast float %8434, %8347
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.CBufRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8442 = select i1 %8417, float %8439, float %8357
  %8443 = select i1 %8417, float %8440, float %8358
  %8444 = select i1 %8417, float %8441, float %8359
  %8445 = fmul fast float %8442, %8348
  %8446 = fmul fast float %8443, %8348
  %8447 = fmul fast float %8444, %8348
  %8448 = fadd fast float %8445, %8435
  %8449 = fadd fast float %8446, %8436
  %8450 = fadd fast float %8447, %8437
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8455 = select i1 %8417, float %8452, float %8364
  %8456 = select i1 %8417, float %8453, float %8365
  %8457 = select i1 %8417, float %8454, float %8366
  %8458 = fadd fast float %8448, %8455
  %8459 = fadd fast float %8449, %8456
  %8460 = fadd fast float %8450, %8457
  %8461 = fmul fast float %8458, %8427
  %8462 = fmul fast float %8459, %8427
  %8463 = fmul fast float %8460, %8427
  %8464 = fmul fast float %8461, %8461
  %8465 = fmul fast float %8462, %8462
  %8466 = fadd fast float %8464, %8465
  %8467 = fmul fast float %8463, %8463
  %8468 = fadd fast float %8466, %8467
  %8469 = call float @dx.op.unary.f32(i32 24, float %8468)  ; Sqrt(value)
  %8470 = fsub fast float %8469, %8382
  %8471 = fmul fast float %8470, %8384
  %8472 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  br label %8473

; <label>:8473                                    ; preds = %8398, %8394
  %8474 = phi float [ %8472, %8398 ], [ 1.000000e+00, %8394 ]
  %8475 = fmul fast float %8391, 5.000000e-01
  %8476 = fadd fast float %8475, 5.000000e-01
  %8477 = call float @dx.op.unary.f32(i32 22, float %8476)  ; Frc(value)
  %8478 = call float @dx.op.unary.f32(i32 27, float %8477)  ; Round_ni(value)
  %8479 = call float @dx.op.unary.f32(i32 22, float %8477)  ; Frc(value)
  %8480 = fmul fast float %8479, 2.000000e+00
  %8481 = fadd fast float %8480, -1.000000e+00
  %8482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8343, float %8344, float %8478, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8483 = extractvalue %dx.types.ResRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.ResRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.ResRet.f32 %8482, 2
  %8486 = extractvalue %dx.types.ResRet.f32 %8482, 3
  %8487 = fadd fast float %8483, -5.000000e-01
  %8488 = fadd fast float %8485, -5.000000e-01
  %8489 = fmul fast float %8487, 0xBFD5555560000000
  %8490 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8488, float %8489)  ; FMad(a,b,c)
  %8491 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8484, float 0.000000e+00)  ; FMad(a,b,c)
  %8492 = fadd fast float %8491, %8486
  %8493 = fmul fast float %8487, -7.500000e-01
  %8494 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8488, float %8493)  ; FMad(a,b,c)
  %8495 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8484, float 0.000000e+00)  ; FMad(a,b,c)
  %8496 = fadd fast float %8495, %8486
  %8497 = call float @dx.op.binary.f32(i32 35, float %8490, float -1.000000e+00)  ; FMax(a,b)
  %8498 = call float @dx.op.binary.f32(i32 35, float %8492, float -1.000000e+00)  ; FMax(a,b)
  %8499 = call float @dx.op.binary.f32(i32 35, float %8494, float -1.000000e+00)  ; FMax(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8496, float -1.000000e+00)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 36, float %8497, float 1.000000e+00)  ; FMin(a,b)
  %8502 = call float @dx.op.binary.f32(i32 36, float %8498, float 1.000000e+00)  ; FMin(a,b)
  %8503 = call float @dx.op.binary.f32(i32 36, float %8499, float 1.000000e+00)  ; FMin(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8500, float 1.000000e+00)  ; FMin(a,b)
  %8505 = fcmp fast olt float %8501, 0x3FEFFF8020000000
  br i1 %8505, label %8506, label %8621, !dx.controlflow.hints !175

; <label>:8506                                    ; preds = %8473
  %8507 = extractvalue %dx.types.CBufRet.f32 %8389, 3
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 0
  %8510 = extractvalue %dx.types.CBufRet.f32 %8508, 1
  %8511 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8512 = extractvalue %dx.types.CBufRet.f32 %8508, 3
  %8513 = fsub fast float %8509, %8501
  %8514 = fsub fast float %8510, %8502
  %8515 = fsub fast float %8511, %8503
  %8516 = fsub fast float %8512, %8504
  %8517 = fmul fast float %8513, %8507
  %8518 = fmul fast float %8514, %8507
  %8519 = fmul fast float %8515, %8507
  %8520 = fmul fast float %8516, %8507
  %8521 = fadd fast float %8517, %8501
  %8522 = fadd fast float %8518, %8502
  %8523 = fsub fast float -0.000000e+00, %8522
  %8524 = fadd fast float %8519, %8503
  %8525 = fadd fast float %8520, %8504
  %8526 = fmul fast float %8521, %8521
  %8527 = fsub fast float %8522, %8526
  %8528 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8527)  ; FMax(a,b)
  %8529 = fdiv fast float 1.000000e+00, %8528
  %8530 = fmul fast float %8522, %8521
  %8531 = fsub fast float %8524, %8530
  %8532 = fsub fast float %8481, %8521
  %8533 = fmul fast float %8481, %8481
  %8534 = fsub fast float %8533, %8522
  %8535 = fmul fast float %8532, %8529
  %8536 = fmul fast float %8535, %8531
  %8537 = fsub fast float %8534, %8536
  %8538 = fmul fast float %8522, %8522
  %8539 = fsub fast float %8525, %8538
  %8540 = fmul fast float %8531, %8531
  %8541 = fmul fast float %8540, %8529
  %8542 = fsub fast float %8539, %8541
  %8543 = fdiv fast float %8537, %8542
  %8544 = fmul fast float %8531, %8543
  %8545 = fsub fast float %8532, %8544
  %8546 = fmul fast float %8545, %8529
  %8547 = fmul fast float %8546, %8521
  %8548 = fsub fast float 1.000000e+00, %8547
  %8549 = fmul fast float %8522, %8543
  %8550 = fsub fast float %8548, %8549
  %8551 = fmul fast float %8546, %8546
  %8552 = fmul fast float %8543, 4.000000e+00
  %8553 = fmul fast float %8552, %8550
  %8554 = fsub fast float %8551, %8553
  %8555 = call float @dx.op.unary.f32(i32 24, float %8554)  ; Sqrt(value)
  %8556 = fcmp fast oge float %8546, 0.000000e+00
  %8557 = fsub fast float -0.000000e+00, %8555
  %8558 = select i1 %8556, float %8557, float %8555
  %8559 = fsub fast float %8558, %8546
  %8560 = fdiv fast float %8559, %8543
  %8561 = fdiv fast float %8550, %8559
  %8562 = fmul fast float %8560, 5.000000e-01
  %8563 = fmul fast float %8561, 2.000000e+00
  %8564 = select i1 %8556, float %8562, float %8563
  %8565 = select i1 %8556, float %8563, float %8562
  %8566 = call float @dx.op.binary.f32(i32 35, float %8564, float %8565)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 36, float %8564, float %8565)  ; FMin(a,b)
  %8568 = fcmp fast ogt float %8481, %8567
  br i1 %8568, label %8569, label %8579

; <label>:8569                                    ; preds = %8506
  %8570 = fsub fast float %8481, %8567
  %8571 = fsub fast float %8566, %8567
  %8572 = fmul fast float %8570, %8571
  %8573 = fmul fast float %8566, %8481
  %8574 = fadd fast float %8566, %8481
  %8575 = fmul fast float %8574, %8521
  %8576 = fadd fast float %8573, %8522
  %8577 = fsub fast float %8576, %8575
  %8578 = fdiv fast float %8577, %8572
  br label %8579

; <label>:8579                                    ; preds = %8569, %8506
  %8580 = phi float [ %8578, %8569 ], [ 0.000000e+00, %8506 ]
  %8581 = fcmp fast ogt float %8481, %8566
  %8582 = fsub fast float %8481, %8566
  br i1 %8581, label %8583, label %8593

; <label>:8583                                    ; preds = %8579
  %8584 = fsub fast float %8566, %8567
  %8585 = fmul fast float %8584, %8582
  %8586 = fmul fast float %8567, %8481
  %8587 = fadd fast float %8567, %8481
  %8588 = fmul fast float %8587, %8521
  %8589 = fsub fast float %8523, %8586
  %8590 = fadd fast float %8589, %8588
  %8591 = fdiv fast float %8590, %8585
  %8592 = fadd fast float %8591, %8580
  br label %8593

; <label>:8593                                    ; preds = %8583, %8579
  %8594 = phi float [ %8592, %8583 ], [ %8580, %8579 ]
  %8595 = fsub fast float %8481, %8567
  %8596 = fmul fast float %8595, %8582
  %8597 = fmul fast float %8567, %8566
  %8598 = fadd fast float %8567, %8566
  %8599 = fmul fast float %8598, %8521
  %8600 = fadd fast float %8597, %8522
  %8601 = fsub fast float %8600, %8599
  %8602 = fdiv fast float %8601, %8596
  %8603 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8604 = fcmp fast oeq float %7272, 0.000000e+00
  %8605 = extractvalue %dx.types.CBufRet.f32 %8389, 0
  %8606 = fcmp fast oeq float %8605, 0.000000e+00
  %8607 = or i1 %8604, %8606
  %8608 = fmul fast float %8605, 2.000000e+00
  %8609 = fadd fast float %8390, %8391
  %8610 = fdiv fast float %8609, %8608
  %8611 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8612 = fmul fast float %8611, 2.000000e+00
  %8613 = fsub fast float 3.000000e+00, %8612
  %8614 = fmul fast float %8611, %8611
  %8615 = fmul fast float %8614, %8613
  %8616 = select i1 %8607, float 1.000000e+00, float %8615
  %8617 = fmul fast float %8602, %7272
  %8618 = fadd fast float %8603, %8617
  %8619 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  %8620 = fmul fast float %8616, %8619
  br label %8621

; <label>:8621                                    ; preds = %8593, %8473
  %8622 = phi float [ %8620, %8593 ], [ 0.000000e+00, %8473 ]
  %8623 = fsub fast float 1.000000e+00, %8622
  %8624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8343, float %8344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8625 = extractvalue %dx.types.ResRet.f32 %8624, 0
  %8626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.i32 %8626, 2
  %8628 = icmp eq i32 %8627, 0
  br i1 %8628, label %8634, label %8629

; <label>:8629                                    ; preds = %8621
  %8630 = call float @dx.op.unary.f32(i32 7, float %8622)  ; Saturate(value)
  %8631 = fadd fast float %8625, -1.000000e+00
  %8632 = fmul fast float %8630, %8631
  %8633 = fadd fast float %8632, 1.000000e+00
  br label %8634

; <label>:8634                                    ; preds = %8629, %8621
  %8635 = phi float [ %8633, %8629 ], [ %8623, %8621 ]
  br i1 %8397, label %8636, label %8654

; <label>:8636                                    ; preds = %8634
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8639 = fsub fast float %8474, %8638
  %8640 = call float @dx.op.unary.f32(i32 7, float %8639)  ; Saturate(value)
  %8641 = fsub fast float %8474, %8396
  %8642 = call float @dx.op.unary.f32(i32 7, float %8641)  ; Saturate(value)
  %8643 = fsub fast float %8640, %8642
  %8644 = fsub fast float %8476, %8642
  %8645 = fdiv fast float %8644, %8643
  %8646 = call float @dx.op.unary.f32(i32 7, float %8645)  ; Saturate(value)
  %8647 = fmul fast float %8646, 2.000000e+00
  %8648 = fsub fast float 3.000000e+00, %8647
  %8649 = fsub fast float %8625, %8635
  %8650 = fmul fast float %8646, %8646
  %8651 = fmul fast float %8650, %8649
  %8652 = fmul fast float %8651, %8648
  %8653 = fadd fast float %8652, %8635
  br label %8654

; <label>:8654                                    ; preds = %8636, %8634
  %8655 = phi float [ %8653, %8636 ], [ %8635, %8634 ]
  %8656 = call float @dx.op.binary.f32(i32 35, float %8625, float %8655)  ; FMax(a,b)
  %8657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.i32 %8657, 2
  %8659 = and i32 %8658, 1
  %8660 = icmp eq i32 %8659, 0
  %8661 = fcmp fast une float %8656, 1.000000e+00
  %8662 = and i1 %8661, %8660
  br i1 %8662, label %8663, label %8682

; <label>:8663                                    ; preds = %8654
  %8664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8343, float %8344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8665 = extractvalue %dx.types.ResRet.f32 %8664, 0
  %8666 = extractvalue %dx.types.ResRet.f32 %8664, 1
  %8667 = extractvalue %dx.types.ResRet.f32 %8664, 2
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8670 = fmul fast float %8669, %8665
  %8671 = fmul fast float %8669, %8666
  %8672 = fmul fast float %8669, %8667
  %8673 = fcmp fast ogt float %8625, 0x3FEFFF2E40000000
  %8674 = fsub fast float 1.000000e+00, %8656
  %8675 = fsub fast float 1.000000e+00, %8625
  %8676 = fdiv fast float %8674, %8675
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = select i1 %8673, float 0.000000e+00, float %8677
  %8679 = fmul fast float %8670, %8678
  %8680 = fmul fast float %8671, %8678
  %8681 = fmul fast float %8672, %8678
  br label %8682

; <label>:8682                                    ; preds = %8663, %8654
  %8683 = phi float [ 0.000000e+00, %8654 ], [ %8679, %8663 ]
  %8684 = phi float [ 0.000000e+00, %8654 ], [ %8680, %8663 ]
  %8685 = phi float [ 0.000000e+00, %8654 ], [ %8681, %8663 ]
  %8686 = fmul fast float %8683, %7260
  %8687 = fmul fast float %8684, %7260
  %8688 = fmul fast float %8685, %7260
  %8689 = fmul fast float %8656, %8318
  %8690 = call float @dx.op.dot3.f32(i32 55, float %8656, float %8656, float %8656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8691 = call float @dx.op.dot3.f32(i32 55, float %8686, float %8687, float %8688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8692 = select i1 %267, float %8690, float %8656
  %8693 = select i1 %267, float 1.000000e+00, float %8656
  %8694 = select i1 %267, float %8691, float %8686
  %8695 = select i1 %267, float 0.000000e+00, float %8687
  %8696 = select i1 %267, float 0.000000e+00, float %8688
  %8697 = fmul fast float %8692, %8330
  %8698 = fmul fast float %8692, %8331
  %8699 = fmul fast float %8693, %8332
  %8700 = fadd fast float %8697, %8694
  %8701 = fadd fast float %8698, %8695
  %8702 = fadd fast float %8696, %8699
  %8703 = fmul fast float %8692, %8333
  %8704 = fmul fast float %8692, %8334
  %8705 = fmul fast float %8693, %8335
  br label %8706

; <label>:8706                                    ; preds = %8682, %8339, %8308, %7540
  %8707 = phi float [ %7545, %7540 ], [ %8330, %8308 ], [ %8700, %8682 ], [ %8330, %8339 ]
  %8708 = phi float [ %7546, %7540 ], [ %8331, %8308 ], [ %8701, %8682 ], [ %8331, %8339 ]
  %8709 = phi float [ %7547, %7540 ], [ %8332, %8308 ], [ %8702, %8682 ], [ %8332, %8339 ]
  %8710 = phi float [ %7548, %7540 ], [ %8333, %8308 ], [ %8703, %8682 ], [ %8333, %8339 ]
  %8711 = phi float [ %7549, %7540 ], [ %8334, %8308 ], [ %8704, %8682 ], [ %8334, %8339 ]
  %8712 = phi float [ %7550, %7540 ], [ %8335, %8308 ], [ %8705, %8682 ], [ %8335, %8339 ]
  %8713 = phi float [ %7551, %7540 ], [ %8318, %8308 ], [ %8689, %8682 ], [ %8318, %8339 ]
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 2
  %8716 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8717 = fmul fast float %8715, %108
  %8718 = fmul fast float %8716, %109
  %8719 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  %8720 = call float @dx.op.unary.f32(i32 7, float %8718)  ; Saturate(value)
  %8721 = select i1 %7282, i32 2, i32 0
  %8722 = or i32 %8721, 1
  %8723 = uitofp i32 %8722 to float
  %8724 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8719, float %8720, float %8723, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8725 = extractvalue %dx.types.ResRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.ResRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.ResRet.f32 %8724, 2
  %8728 = extractvalue %dx.types.ResRet.f32 %8724, 3
  %8729 = add nuw nsw i32 %8721, 2
  %8730 = uitofp i32 %8729 to float
  %8731 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8719, float %8720, float %8730, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8732 = extractvalue %dx.types.ResRet.f32 %8731, 0
  %8733 = extractvalue %dx.types.ResRet.f32 %8731, 1
  %8734 = extractvalue %dx.types.ResRet.f32 %8731, 2
  %8735 = extractvalue %dx.types.ResRet.f32 %8731, 3
  %8736 = call float @dx.op.binary.f32(i32 35, float %8726, float %8727)  ; FMax(a,b)
  %8737 = call float @dx.op.binary.f32(i32 35, float %8725, float %8736)  ; FMax(a,b)
  %8738 = call float @dx.op.binary.f32(i32 35, float %8737, float %8728)  ; FMax(a,b)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8733, float %8734)  ; FMin(a,b)
  %8740 = call float @dx.op.binary.f32(i32 36, float %8732, float %8739)  ; FMin(a,b)
  %8741 = call float @dx.op.binary.f32(i32 36, float %8740, float %8735)  ; FMin(a,b)
  %8742 = fmul fast float %8738, 2.550000e+02
  %8743 = fadd fast float %8742, 0x3F70101020000000
  %8744 = fptoui float %8743 to i32
  %8745 = fmul fast float %8741, 2.550000e+02
  %8746 = fadd fast float %8745, 0x3F70101020000000
  %8747 = fptoui float %8746 to i32
  %8748 = icmp ult i32 %8744, %8747
  br i1 %8748, label %8749, label %8918

; <label>:8749                                    ; preds = %8706
  %8750 = fcmp fast ogt float %98, 9.843750e-01
  %8751 = fadd fast float %7544, -4.000000e+00
  %8752 = select i1 %8750, float -4.000000e+00, float %8751
  %8753 = call float @dx.op.binary.f32(i32 35, float %8752, float 0.000000e+00)  ; FMax(a,b)
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8756 = fadd fast float %8755, %8753
  %8757 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8758 = fmul fast float %8756, %8757
  %8759 = call float @dx.op.unary.f32(i32 23, float %8758)  ; Log(value)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8754, 3
  %8761 = fmul fast float %8760, %8759
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 2
  %8764 = fmul fast float %8761, %8763
  %8765 = call float @dx.op.unary.f32(i32 7, float %8764)  ; Saturate(value)
  %8766 = uitofp i32 %8744 to float
  %8767 = uitofp i32 %8747 to float
  %8768 = fadd fast float %8766, 5.000000e-01
  %8769 = fadd fast float %8767, 5.000000e-01
  %8770 = fmul fast float %8763, %8768
  %8771 = fmul fast float %8763, %8769
  %8772 = fadd fast float %8770, 0x3F0FFB4800000000
  %8773 = fadd fast float %8771, 0xBF0FFB4800000000
  %8774 = call float @dx.op.binary.f32(i32 35, float %8765, float %8772)  ; FMax(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8774, float %8773)  ; FMin(a,b)
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8779 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8780 = select i1 %7282, float %8779, float 0.000000e+00
  %8781 = fmul fast float %8777, %8775
  %8782 = fadd fast float %8780, %8781
  %8783 = fadd fast float %8780, %8778
  %8784 = fsub fast float %8777, %8778
  %8785 = fadd fast float %8784, %8780
  %8786 = call float @dx.op.binary.f32(i32 35, float %8782, float %8783)  ; FMax(a,b)
  %8787 = call float @dx.op.binary.f32(i32 36, float %8786, float %8785)  ; FMin(a,b)
  %8788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8719, float %8720, float %8787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8789 = extractvalue %dx.types.ResRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.ResRet.f32 %8788, 1
  %8791 = extractvalue %dx.types.ResRet.f32 %8788, 2
  %8792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.i32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.i32 %8792, 1
  %8795 = uitofp i32 %8793 to float
  %8796 = uitofp i32 %8794 to float
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = fmul fast float %8795, %8719
  %8801 = fmul fast float %8796, %8720
  %8802 = fadd fast float %8800, -5.000000e-01
  %8803 = fadd fast float %8801, -5.000000e-01
  %8804 = call float @dx.op.unary.f32(i32 22, float %8802)  ; Frc(value)
  %8805 = call float @dx.op.unary.f32(i32 22, float %8803)  ; Frc(value)
  %8806 = fmul fast float %8804, %8804
  %8807 = fmul fast float %8806, %8804
  %8808 = fsub fast float 3.000000e+00, %8804
  %8809 = fmul fast float %8806, %8808
  %8810 = fmul fast float %8804, 3.000000e+00
  %8811 = fmul fast float %8807, 3.000000e+00
  %8812 = fmul fast float %8806, 6.000000e+00
  %8813 = fsub fast float %8811, %8812
  %8814 = fadd fast float %8813, 4.000000e+00
  %8815 = fmul fast float %8814, 0x3FC5555560000000
  %8816 = fmul fast float %8807, -3.000000e+00
  %8817 = fadd fast float %8806, %8804
  %8818 = fmul fast float %8817, 3.000000e+00
  %8819 = fadd fast float %8816, 1.000000e+00
  %8820 = fadd fast float %8819, %8818
  %8821 = fmul fast float %8807, 0x3FC5555560000000
  %8822 = fmul fast float %8805, %8805
  %8823 = fmul fast float %8822, %8805
  %8824 = fsub fast float 3.000000e+00, %8805
  %8825 = fmul fast float %8822, %8824
  %8826 = fmul fast float %8805, 3.000000e+00
  %8827 = fmul fast float %8823, 3.000000e+00
  %8828 = fmul fast float %8822, 6.000000e+00
  %8829 = fsub fast float %8827, %8828
  %8830 = fadd fast float %8829, 4.000000e+00
  %8831 = fmul fast float %8830, 0x3FC5555560000000
  %8832 = fmul fast float %8823, -3.000000e+00
  %8833 = fadd fast float %8822, %8805
  %8834 = fmul fast float %8833, 3.000000e+00
  %8835 = fadd fast float %8832, 1.000000e+00
  %8836 = fadd fast float %8835, %8834
  %8837 = fmul fast float %8823, 0x3FC5555560000000
  %8838 = fadd fast float %8804, 1.000000e+00
  %8839 = fsub fast float 1.000000e+00, %8810
  %8840 = fadd fast float %8839, %8809
  %8841 = fadd fast float %8840, %8814
  %8842 = fmul fast float %8841, 0x3FC5555560000000
  %8843 = fdiv fast float %8815, %8842
  %8844 = fsub fast float %8838, %8843
  %8845 = fsub fast float 1.000000e+00, %8804
  %8846 = fadd fast float %8820, %8807
  %8847 = fmul fast float %8846, 0x3FC5555560000000
  %8848 = fdiv fast float %8821, %8847
  %8849 = fadd fast float %8845, %8848
  %8850 = fadd fast float %8805, 1.000000e+00
  %8851 = fsub fast float 1.000000e+00, %8826
  %8852 = fadd fast float %8851, %8825
  %8853 = fadd fast float %8852, %8830
  %8854 = fmul fast float %8853, 0x3FC5555560000000
  %8855 = fdiv fast float %8831, %8854
  %8856 = fsub fast float %8850, %8855
  %8857 = fsub fast float 1.000000e+00, %8805
  %8858 = fadd fast float %8836, %8823
  %8859 = fmul fast float %8858, 0x3FC5555560000000
  %8860 = fdiv fast float %8837, %8859
  %8861 = fadd fast float %8860, %8857
  %8862 = fmul fast float %8844, %8798
  %8863 = fsub fast float %8719, %8862
  %8864 = fmul fast float %8849, %8798
  %8865 = fadd fast float %8864, %8719
  %8866 = fmul fast float %8861, %8799
  %8867 = fadd fast float %8866, %8720
  %8868 = fmul fast float %8856, %8799
  %8869 = fsub fast float %8720, %8868
  %8870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8863, float %8869, float %8787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8871 = extractvalue %dx.types.ResRet.f32 %8870, 0
  %8872 = extractvalue %dx.types.ResRet.f32 %8870, 1
  %8873 = extractvalue %dx.types.ResRet.f32 %8870, 2
  %8874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8865, float %8869, float %8787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8875 = extractvalue %dx.types.ResRet.f32 %8874, 0
  %8876 = extractvalue %dx.types.ResRet.f32 %8874, 1
  %8877 = extractvalue %dx.types.ResRet.f32 %8874, 2
  %8878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8863, float %8867, float %8787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8879 = extractvalue %dx.types.ResRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.ResRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.ResRet.f32 %8878, 2
  %8882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8865, float %8867, float %8787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8883 = extractvalue %dx.types.ResRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.ResRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.ResRet.f32 %8882, 2
  %8886 = fsub fast float %8879, %8871
  %8887 = fsub fast float %8880, %8872
  %8888 = fsub fast float %8881, %8873
  %8889 = fmul fast float %8886, %8859
  %8890 = fmul fast float %8887, %8859
  %8891 = fmul fast float %8888, %8859
  %8892 = fadd fast float %8889, %8871
  %8893 = fadd fast float %8890, %8872
  %8894 = fadd fast float %8891, %8873
  %8895 = fsub fast float %8883, %8875
  %8896 = fsub fast float %8884, %8876
  %8897 = fsub fast float %8885, %8877
  %8898 = fmul fast float %8895, %8859
  %8899 = fmul fast float %8896, %8859
  %8900 = fmul fast float %8897, %8859
  %8901 = fsub fast float %8875, %8892
  %8902 = fadd fast float %8901, %8898
  %8903 = fsub fast float %8876, %8893
  %8904 = fadd fast float %8903, %8899
  %8905 = fsub fast float %8877, %8894
  %8906 = fadd fast float %8905, %8900
  %8907 = fmul fast float %8902, %8847
  %8908 = fmul fast float %8904, %8847
  %8909 = fmul fast float %8906, %8847
  %8910 = fadd fast float %8907, %8892
  %8911 = fadd fast float %8908, %8893
  %8912 = fadd fast float %8909, %8894
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 1
  %8915 = fmul fast float %8910, %8914
  %8916 = fmul fast float %8911, %8914
  %8917 = fmul fast float %8912, %8914
  br label %8918

; <label>:8918                                    ; preds = %8749, %8706
  %8919 = phi float [ %8789, %8749 ], [ 1.000000e+00, %8706 ]
  %8920 = phi float [ %8790, %8749 ], [ 1.000000e+00, %8706 ]
  %8921 = phi float [ %8791, %8749 ], [ 1.000000e+00, %8706 ]
  %8922 = phi float [ %8915, %8749 ], [ 0.000000e+00, %8706 ]
  %8923 = phi float [ %8916, %8749 ], [ 0.000000e+00, %8706 ]
  %8924 = phi float [ %8917, %8749 ], [ 0.000000e+00, %8706 ]
  %8925 = fmul fast float %8922, %7260
  %8926 = fmul fast float %8923, %7260
  %8927 = fmul fast float %8924, %7260
  %8928 = fmul fast float %8919, %8713
  %8929 = call float @dx.op.dot3.f32(i32 55, float %8919, float %8920, float %8921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8930 = call float @dx.op.dot3.f32(i32 55, float %8925, float %8926, float %8927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8931 = select i1 %267, float %8929, float %8919
  %8932 = select i1 %267, float %8929, float %8920
  %8933 = select i1 %267, float 1.000000e+00, float %8921
  %8934 = select i1 %267, float %8930, float %8925
  %8935 = select i1 %267, float 0.000000e+00, float %8926
  %8936 = select i1 %267, float 0.000000e+00, float %8927
  %8937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.i32 %8937, 3
  %8939 = and i32 %8938, 3
  %8940 = icmp ne i32 %8939, 0
  %8941 = and i32 %8938, 4
  %8942 = icmp ne i32 %8941, 0
  %8943 = and i1 %8940, %8942
  %8944 = and i1 %267, %8943
  br i1 %8944, label %8945, label %8951

; <label>:8945                                    ; preds = %8918
  %8946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8947 = extractvalue %dx.types.CBufRet.f32 %8946, 1
  %8948 = fadd fast float %8928, -1.000000e+00
  %8949 = fmul fast float %8947, %8948
  %8950 = fadd fast float %8949, 1.000000e+00
  br label %8951

; <label>:8951                                    ; preds = %8945, %8918
  %8952 = phi float [ %8950, %8945 ], [ %8928, %8918 ]
  %8953 = fadd fast float %8710, %8707
  %8954 = fmul fast float %8931, %8953
  %8955 = fadd fast float %8954, %8934
  %8956 = fadd fast float %8711, %8708
  %8957 = fmul fast float %8932, %8956
  %8958 = fadd fast float %8957, %8935
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 0
  br i1 %267, label %8961, label %8985

; <label>:8961                                    ; preds = %8951
  %8962 = fadd fast float %8955, %8958
  %8963 = fmul fast float %8960, %8962
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 3
  %8966 = extractvalue %dx.types.CBufRet.f32 %7264, 1
  %8967 = fsub fast float %7269, %7263
  %8968 = fadd fast float %8967, %7270
  %8969 = fsub fast float %8968, %8966
  %8970 = extractvalue %dx.types.CBufRet.f32 %7264, 2
  %8971 = fmul fast float %8969, %8970
  %8972 = call float @dx.op.unary.f32(i32 7, float %8971)  ; Saturate(value)
  %8973 = fsub fast float %8972, %8965
  %8974 = fmul fast float %8973, %8952
  %8975 = fadd fast float %8974, %8965
  %8976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8976, 0
  %8978 = fsub fast float %8975, %8977
  %8979 = fmul fast float %8978, 1.000000e+01
  %8980 = call float @dx.op.unary.f32(i32 7, float %8979)  ; Saturate(value)
  %8981 = fsub fast float %4091, %7260
  %8982 = fmul fast float %8980, %8981
  %8983 = fadd fast float %8982, %7260
  %8984 = fmul fast float %8983, %8975
  br label %9009

; <label>:8985                                    ; preds = %8951
  %8986 = fadd fast float %8712, %8709
  %8987 = fmul fast float %8933, %8986
  %8988 = fadd fast float %8987, %8936
  %8989 = fmul fast float %8960, %8955
  %8990 = fmul fast float %8960, %8958
  %8991 = fmul fast float %8960, %8988
  %8992 = call float @dx.op.binary.f32(i32 35, float %8990, float %8991)  ; FMax(a,b)
  %8993 = call float @dx.op.binary.f32(i32 35, float %8989, float %8992)  ; FMax(a,b)
  %8994 = call float @dx.op.binary.f32(i32 35, float %8993, float %7260)  ; FMax(a,b)
  %8995 = fcmp fast ugt float %8994, 0x3F10000000000000
  br i1 %8995, label %8997, label %8996

; <label>:8996                                    ; preds = %8985
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8997

; <label>:8997                                    ; preds = %8996, %8985
  %8998 = add i32 %56, 356
  %8999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8998, i32 undef)  ; BufferLoad(srv,index,wot)
  %9000 = extractvalue %dx.types.ResRet.i32 %8999, 0
  %9001 = and i32 %9000, 32
  %9002 = icmp eq i32 %9001, 0
  br i1 %9002, label %9009, label %9003

; <label>:9003                                    ; preds = %8997
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 0
  %9006 = fmul fast float %9005, 0x3FE99999A0000000
  %9007 = fadd fast float %9005, %8989
  %9008 = fadd fast float %9006, %8991
  br label %9009

; <label>:9009                                    ; preds = %9003, %8997, %8961
  %9010 = phi float [ %8963, %8961 ], [ %9007, %9003 ], [ %8989, %8997 ]
  %9011 = phi float [ %8984, %8961 ], [ %8990, %9003 ], [ %8990, %8997 ]
  %9012 = phi float [ %8983, %8961 ], [ %9008, %9003 ], [ %8991, %8997 ]
  %9013 = phi float [ %8983, %8961 ], [ %7260, %9003 ], [ %7260, %8997 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9014 = call float @dx.op.binary.f32(i32 36, float %9010, float 3.225500e+04)  ; FMin(a,b)
  %9015 = call float @dx.op.binary.f32(i32 36, float %9011, float 3.225500e+04)  ; FMin(a,b)
  %9016 = call float @dx.op.binary.f32(i32 36, float %9012, float 3.225500e+04)  ; FMin(a,b)
  %9017 = call float @dx.op.binary.f32(i32 36, float %9013, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9014)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9015)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9016)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9017)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !96}
!71 = !{!72, !94, null}
!72 = !{!73, !76, !77, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93}
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
!84 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 7, i8 0, !80}
!85 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 8, i8 0, !75}
!86 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 9, i8 0, !78}
!87 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 10, i8 0, !75}
!88 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 11, i8 0, !80}
!89 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !74, i8 1, i32 1, i8 1, i32 12, i8 0, !90}
!90 = !{i32 3, i32 1}
!91 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !74, i8 1, i32 1, i8 2, i32 12, i8 1, !78}
!92 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !74, i8 1, i32 1, i8 4, i32 13, i8 0, !90}
!93 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!94 = !{!95}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!96 = !{i32 0, i64 16}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !109, !111, !113}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !128, i64 0}
!128 = !{!"float", !104, i64 0}
!129 = !{!130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!130 = distinct !{!130, !131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!131 = distinct !{!131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!132 = distinct !{!132, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!133 = distinct !{!133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!134 = distinct !{!134, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!144 = distinct !{!144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!153 = !{!149}
!154 = !{!150, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!163 = !{!159}
!164 = !{!160, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}

