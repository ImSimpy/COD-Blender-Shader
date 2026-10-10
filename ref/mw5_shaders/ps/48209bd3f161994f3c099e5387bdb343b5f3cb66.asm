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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 3ee3d8291c06182eebd85a2363c217ac
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
;   [160 x i8] (type annotation not present)
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = fcmp fast une float %139, 0.000000e+00
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %657 = add i32 %56, 508
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
  br i1 %713, label %1332, label %714

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
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 1024
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1269, label %1239

; <label>:1239                                    ; preds = %1231
  %1240 = add i32 %56, 152
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = lshr i32 %1242, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1242, 16
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = fmul fast float %1245, %1245
  %1255 = fmul fast float %1249, %1249
  %1256 = fmul fast float %1253, %1253
  %1257 = add i32 %56, 476
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %1259, 0
  %1261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1261, %dx.types.Handle %105, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = fmul fast float %1254, %1263
  %1267 = fmul fast float %1255, %1264
  %1268 = fmul fast float %1256, %1265
  br label %1269

; <label>:1269                                    ; preds = %1239, %1231
  %1270 = phi float [ %1266, %1239 ], [ 0.000000e+00, %1231 ]
  %1271 = phi float [ %1267, %1239 ], [ 0.000000e+00, %1231 ]
  %1272 = phi float [ %1268, %1239 ], [ 0.000000e+00, %1231 ]
  %1273 = fcmp fast ogt float %1270, 0.000000e+00
  %1274 = fcmp fast ogt float %1271, 0.000000e+00
  %1275 = fcmp fast ogt float %1272, 0.000000e+00
  %1276 = call float @dx.op.unary.f32(i32 23, float %1270)  ; Log(value)
  %1277 = call float @dx.op.unary.f32(i32 23, float %1271)  ; Log(value)
  %1278 = call float @dx.op.unary.f32(i32 23, float %1272)  ; Log(value)
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = lshr i32 %1280, 7
  %1282 = and i32 %1281, 32752
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = fmul fast float %1276, 0xBFE62E4300000000
  %1285 = fmul fast float %1284, %1283
  %1286 = fmul fast float %1277, 0xBFE62E4300000000
  %1287 = fmul fast float %1286, %1283
  %1288 = fmul fast float %1278, 0xBFE62E4300000000
  %1289 = fmul fast float %1288, %1283
  %1290 = select i1 %1273, float %1285, float 1.270000e+02
  %1291 = select i1 %1274, float %1287, float 1.270000e+02
  %1292 = select i1 %1275, float %1289, float 1.270000e+02
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 10240
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1317, label %1297

; <label>:1297                                    ; preds = %1269
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 2048
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1317, label %1302

; <label>:1302                                    ; preds = %1297
  %1303 = add i32 %56, 492
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1305, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1307, %dx.types.Handle %105, float %813, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = shl i32 %1311, 4
  %1313 = and i32 %1312, 32752
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = fmul fast float %1314, %1309
  %1316 = call float @dx.op.binary.f32(i32 35, float %1315, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1317

; <label>:1317                                    ; preds = %1302, %1297, %1269
  %1318 = phi float [ %1316, %1302 ], [ 0x3F70101020000000, %1297 ], [ 0x3F70101020000000, %1269 ]
  %1319 = add i32 %56, 96
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = lshr i32 %1321, 8
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = fmul fast float %1326, %1327
  %1329 = fadd fast float %1328, %1323
  %1330 = fmul fast float %1329, 0x3F70101020000000
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  br label %1332

; <label>:1332                                    ; preds = %1317, %699
  %1333 = phi float [ 0.000000e+00, %699 ], [ %1185, %1317 ]
  %1334 = phi float [ 0.000000e+00, %699 ], [ %1186, %1317 ]
  %1335 = phi float [ 0.000000e+00, %699 ], [ %1104, %1317 ]
  %1336 = phi float [ 0.000000e+00, %699 ], [ %1105, %1317 ]
  %1337 = phi float [ 0.000000e+00, %699 ], [ %1106, %1317 ]
  %1338 = phi float [ 0.000000e+00, %699 ], [ %1232, %1317 ]
  %1339 = phi float [ 0.000000e+00, %699 ], [ %1233, %1317 ]
  %1340 = phi float [ 0.000000e+00, %699 ], [ %1234, %1317 ]
  %1341 = phi float [ 0.000000e+00, %699 ], [ %1290, %1317 ]
  %1342 = phi float [ 0.000000e+00, %699 ], [ %1291, %1317 ]
  %1343 = phi float [ 0.000000e+00, %699 ], [ %1292, %1317 ]
  %1344 = phi float [ 0.000000e+00, %699 ], [ %1090, %1317 ]
  %1345 = phi float [ 0.000000e+00, %699 ], [ %886, %1317 ]
  %1346 = phi float [ 0.000000e+00, %699 ], [ %1184, %1317 ]
  %1347 = phi float [ 0.000000e+00, %699 ], [ %1187, %1317 ]
  %1348 = phi float [ 0.000000e+00, %699 ], [ %1318, %1317 ]
  %1349 = phi float [ 0.000000e+00, %699 ], [ %1331, %1317 ]
  br i1 %647, label %2221, label %1350

; <label>:1350                                    ; preds = %1332
  %1351 = icmp ult i32 %705, 2
  %1352 = add i32 %56, 40
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %56, 44
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = or i32 %1357, %1354
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %2221, label %1360

; <label>:1360                                    ; preds = %1350
  %1361 = and i32 %1354, 262144
  %1362 = icmp ne i32 %1361, 0
  %1363 = select i1 %1362, float %63, float 1.000000e+00
  %1364 = select i1 %1362, float %64, float 0.000000e+00
  %1365 = select i1 %1362, float %65, float 0.000000e+00
  %1366 = select i1 %1362, float %66, float 1.000000e+00
  %1367 = select i1 %1362, float %67, float %90
  %1368 = select i1 %1362, float %68, float %91
  %1369 = add i32 %56, 300
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = lshr i32 %1371, 16
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = fmul fast float %1373, 0x3F50624DE0000000
  %1375 = add i32 %56, 104
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = lshr i32 %1377, 16
  %1379 = and i32 %1378, 255
  %1380 = lshr i32 %1377, 24
  %1381 = add i32 %56, 308
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 65535
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1383, 16
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = add i32 %56, 48
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = lshr i32 %1390, 22
  %1392 = shl nuw nsw i32 %1391, 5
  %1393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1392)  ; LegacyF16ToF32(value)
  %1394 = shl i32 %1390, 4
  %1395 = and i32 %1394, 32752
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  %1397 = lshr i32 %1390, 7
  %1398 = and i32 %1397, 32752
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 3
  %1402 = fmul fast float %1401, 1.000000e+03
  %1403 = fmul fast float %1402, %426
  %1404 = call float @dx.op.unary.f32(i32 22, float %1403)  ; Frc(value)
  %1405 = fadd fast float %1404, %414
  %1406 = fmul fast float %1402, %428
  %1407 = call float @dx.op.unary.f32(i32 22, float %1406)  ; Frc(value)
  %1408 = fadd fast float %1407, %415
  %1409 = fmul fast float %1374, %1402
  %1410 = call float @dx.op.unary.f32(i32 22, float %1409)  ; Frc(value)
  %1411 = fmul fast float %1410, 0x401921FB60000000
  %1412 = fadd fast float %1411, %1393
  %1413 = call float @dx.op.unary.f32(i32 13, float %1412)  ; Sin(value)
  %1414 = call float @dx.op.unary.f32(i32 12, float %1412)  ; Cos(value)
  %1415 = fsub fast float -0.000000e+00, %1413
  %1416 = fadd fast float %1367, -5.000000e-01
  %1417 = fadd fast float %1368, -5.000000e-01
  %1418 = fmul fast float %1385, %1416
  %1419 = fmul fast float %1387, %1417
  %1420 = fadd fast float %1418, 5.000000e-01
  %1421 = fadd fast float %1419, 5.000000e-01
  %1422 = fmul fast float %1396, %1420
  %1423 = fmul fast float %1399, %1421
  %1424 = fmul fast float %1414, %1422
  %1425 = call float @dx.op.tertiary.f32(i32 46, float %1415, float %1423, float %1424)  ; FMad(a,b,c)
  %1426 = fmul fast float %1413, %1422
  %1427 = call float @dx.op.tertiary.f32(i32 46, float %1414, float %1423, float %1426)  ; FMad(a,b,c)
  %1428 = fadd fast float %1405, %1425
  %1429 = fadd fast float %1408, %1427
  %1430 = icmp ugt i32 %1379, 1
  %1431 = icmp ugt i32 %1377, 33554431
  %1432 = or i1 %1431, %1430
  br i1 %1432, label %1433, label %1458

; <label>:1433                                    ; preds = %1360
  %1434 = add i32 %56, 244
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = lshr i32 %1436, 16
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = fmul fast float %1401, %1438
  %1440 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  %1441 = mul nuw nsw i32 %1379, %1380
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1440, %1442
  %1444 = call float @dx.op.unary.f32(i32 27, float %1443)  ; Round_ni(value)
  %1445 = fptoui float %1444 to i32
  %1446 = urem i32 %1445, %1379
  %1447 = udiv i32 %1445, %1380
  %1448 = call float @dx.op.unary.f32(i32 22, float %1428)  ; Frc(value)
  %1449 = call float @dx.op.unary.f32(i32 22, float %1429)  ; Frc(value)
  %1450 = uitofp i32 %1446 to float
  %1451 = uitofp i32 %1447 to float
  %1452 = fadd fast float %1448, %1450
  %1453 = fadd fast float %1449, %1451
  %1454 = uitofp i32 %1379 to float
  %1455 = uitofp i32 %1380 to float
  %1456 = fdiv fast float %1452, %1454
  %1457 = fdiv fast float %1453, %1455
  br label %1458

; <label>:1458                                    ; preds = %1433, %1360
  %1459 = phi float [ %1456, %1433 ], [ %1428, %1360 ]
  %1460 = phi float [ %1457, %1433 ], [ %1429, %1360 ]
  %1461 = and i32 %1354, 256
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1509, label %1463

; <label>:1463                                    ; preds = %1458
  %1464 = add i32 %56, 444
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %105, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = add i32 %56, 116
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = shl i32 %1473, 4
  %1475 = and i32 %1474, 32752
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = lshr i32 %1473, 7
  %1478 = and i32 %1477, 32752
  %1479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1478)  ; LegacyF16ToF32(value)
  %1480 = fsub fast float 1.000000e+00, %702
  %1481 = call float @dx.op.binary.f32(i32 35, float %1480, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1482 = bitcast float %702 to i32
  %1483 = sitofp i32 %1482 to float
  %1484 = fadd fast float %1483, 0xC1CFBF8940000000
  %1485 = fmul fast float %1479, %1484
  %1486 = fadd fast float %1485, 0x41CFBF8940000000
  %1487 = fptosi float %1486 to i32
  %1488 = bitcast i32 %1487 to float
  %1489 = bitcast float %1481 to i32
  %1490 = sitofp i32 %1489 to float
  %1491 = fadd fast float %1490, 0xC1CFBF8940000000
  %1492 = fmul fast float %1491, %1479
  %1493 = fadd fast float %1492, 0x41CFBF8940000000
  %1494 = fptosi float %1493 to i32
  %1495 = bitcast i32 %1494 to float
  %1496 = fmul fast float %1488, %1476
  %1497 = fmul fast float %1495, %1476
  %1498 = fsub fast float %1481, %1496
  %1499 = fadd fast float %1497, %1481
  %1500 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1501 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1502 = fsub fast float %1470, %1500
  %1503 = fsub fast float %1501, %1500
  %1504 = bitcast float %1503 to i32
  %1505 = sub nsw i32 2129859010, %1504
  %1506 = bitcast i32 %1505 to float
  %1507 = fmul fast float %1506, %1502
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  br label %1509

; <label>:1509                                    ; preds = %1463, %1458
  %1510 = phi float [ %1508, %1463 ], [ %702, %1458 ]
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 128
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1531, label %1515

; <label>:1515                                    ; preds = %1509
  %1516 = add i32 %56, 428
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %1518, 0
  %1520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1520, %dx.types.Handle %105, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 524288
  %1526 = icmp ne i32 %1525, 0
  %1527 = fcmp fast ogt float %1522, 0x3FE0101020000000
  %1528 = select i1 %1527, float 1.000000e+00, float 0.000000e+00
  %1529 = select i1 %1526, float %1528, float %1522
  %1530 = fmul fast float %1529, %1510
  br label %1531

; <label>:1531                                    ; preds = %1515, %1509
  %1532 = phi float [ %1530, %1515 ], [ %1510, %1509 ]
  %1533 = fcmp fast ult float %1532, 0x3F70101020000000
  br i1 %1533, label %2221, label %1534

; <label>:1534                                    ; preds = %1531
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 16
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1737, label %1539

; <label>:1539                                    ; preds = %1534
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = add i32 %56, 380
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = add i32 %1544, 0
  %1546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1547 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1546, %dx.types.Handle %104, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1551 = extractvalue %dx.types.ResRet.f32 %1547, 3
  %1552 = and i32 %1541, 255
  %1553 = uitofp i32 %1552 to float
  %1554 = lshr i32 %1541, 8
  %1555 = and i32 %1554, 255
  %1556 = uitofp i32 %1555 to float
  %1557 = fmul fast float %1551, %1553
  %1558 = fadd fast float %1557, %1556
  %1559 = fmul fast float %1558, 0x3F70101000000000
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 512
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1572, label %1564

; <label>:1564                                    ; preds = %1539
  %1565 = add i32 %56, 464
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %105, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  br label %1572

; <label>:1572                                    ; preds = %1564, %1539
  %1573 = phi float [ %1571, %1564 ], [ 1.000000e+00, %1539 ]
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 33554432
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1684, label %1578

; <label>:1578                                    ; preds = %1572
  %1579 = add i32 %56, 240
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 65535
  %1583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1582)  ; LegacyF16ToF32(value)
  %1584 = lshr i32 %1581, 16
  %1585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1584)  ; LegacyF16ToF32(value)
  %1586 = add i32 %56, 244
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 65535
  %1590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1589)  ; LegacyF16ToF32(value)
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = lshr i32 %1592, 24
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1594, 0x3F70101020000000
  %1596 = and i32 %1592, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1592, 8
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = lshr i32 %1592, 16
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = add i32 %56, 236
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = lshr i32 %1609, 24
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = and i32 %1609, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = lshr i32 %1609, 8
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = lshr i32 %1609, 16
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = bitcast float %1548 to i32
  %1625 = ashr i32 %1624, 1
  %1626 = sub nsw i32 1597463174, %1625
  %1627 = bitcast i32 %1626 to float
  %1628 = fmul fast float %1548, 5.000000e-01
  %1629 = fmul fast float %1627, %1627
  %1630 = fmul fast float %1629, %1628
  %1631 = fsub fast float 1.500000e+00, %1630
  %1632 = fmul fast float %1627, %1548
  %1633 = fmul fast float %1632, %1631
  %1634 = bitcast float %1549 to i32
  %1635 = ashr i32 %1634, 1
  %1636 = sub nsw i32 1597463174, %1635
  %1637 = bitcast i32 %1636 to float
  %1638 = fmul fast float %1549, 5.000000e-01
  %1639 = fmul fast float %1637, %1637
  %1640 = fmul fast float %1639, %1638
  %1641 = fsub fast float 1.500000e+00, %1640
  %1642 = fmul fast float %1637, %1549
  %1643 = fmul fast float %1642, %1641
  %1644 = bitcast float %1550 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = sub nsw i32 1597463174, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1550, 5.000000e-01
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1649, %1648
  %1651 = fsub fast float 1.500000e+00, %1650
  %1652 = fmul fast float %1647, %1550
  %1653 = fmul fast float %1652, %1651
  %1654 = fsub fast float %1633, %1615
  %1655 = fsub fast float %1643, %1619
  %1656 = fsub fast float %1653, %1623
  %1657 = fmul fast float %1654, %1583
  %1658 = fmul fast float %1655, %1585
  %1659 = fmul fast float %1656, %1590
  %1660 = fadd fast float %1657, %1598
  %1661 = fadd fast float %1658, %1602
  %1662 = fadd fast float %1659, %1606
  %1663 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1664 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1665 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1666 = fmul fast float %1663, %1663
  %1667 = fmul fast float %1664, %1664
  %1668 = fmul fast float %1665, %1665
  %1669 = fsub fast float %1666, %1548
  %1670 = fsub fast float %1667, %1549
  %1671 = fsub fast float %1668, %1550
  %1672 = fmul fast float %1669, %1573
  %1673 = fmul fast float %1670, %1573
  %1674 = fmul fast float %1671, %1573
  %1675 = fadd fast float %1672, %1548
  %1676 = fadd fast float %1673, %1549
  %1677 = fadd fast float %1674, %1550
  %1678 = fadd fast float %1595, %1559
  %1679 = fsub fast float %1678, %1612
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = fsub fast float %1680, %1559
  %1682 = fmul fast float %1681, %1573
  %1683 = fadd fast float %1682, %1559
  br label %1737

; <label>:1684                                    ; preds = %1572
  %1685 = and i32 %1575, 134217728
  %1686 = icmp eq i32 %1685, 0
  br i1 %1686, label %1721, label %1687

; <label>:1687                                    ; preds = %1684
  %1688 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %1689 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %1690 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1691 = fadd fast float %1688, -5.000000e-01
  %1692 = fadd fast float %1689, -5.000000e-01
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fmul fast float %1691, %1573
  %1695 = fmul fast float %1692, %1573
  %1696 = fmul fast float %1693, %1573
  %1697 = fadd fast float %1694, 5.000000e-01
  %1698 = fadd fast float %1695, 5.000000e-01
  %1699 = fadd fast float %1696, 5.000000e-01
  %1700 = call float @dx.op.unary.f32(i32 24, float %1548)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1702 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1703 = fmul fast float %1697, 2.000000e+00
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = fmul fast float %1704, %1700
  %1706 = fadd fast float %1705, %1703
  %1707 = fmul fast float %1706, %1700
  %1708 = fmul fast float %1698, 2.000000e+00
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = fmul fast float %1709, %1701
  %1711 = fadd fast float %1710, %1708
  %1712 = fmul fast float %1711, %1701
  %1713 = fmul fast float %1699, 2.000000e+00
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = fmul fast float %1714, %1702
  %1716 = fadd fast float %1715, %1713
  %1717 = fmul fast float %1716, %1702
  %1718 = fmul fast float %1707, %1707
  %1719 = fmul fast float %1712, %1712
  %1720 = fmul fast float %1717, %1717
  br label %1737

; <label>:1721                                    ; preds = %1684
  %1722 = fmul fast float %402, %402
  %1723 = fmul fast float %403, %403
  %1724 = fmul fast float %404, %404
  %1725 = fadd fast float %1722, -1.000000e+00
  %1726 = fadd fast float %1723, -1.000000e+00
  %1727 = fadd fast float %1724, -1.000000e+00
  %1728 = fmul fast float %1573, %1725
  %1729 = fmul fast float %1573, %1726
  %1730 = fmul fast float %1573, %1727
  %1731 = fadd fast float %1728, 1.000000e+00
  %1732 = fadd fast float %1729, 1.000000e+00
  %1733 = fadd fast float %1730, 1.000000e+00
  %1734 = fmul fast float %1731, %1548
  %1735 = fmul fast float %1732, %1549
  %1736 = fmul fast float %1733, %1550
  br label %1737

; <label>:1737                                    ; preds = %1721, %1687, %1578, %1534
  %1738 = phi float [ %1683, %1578 ], [ %1559, %1687 ], [ %1559, %1721 ], [ 0x3FA23C0BE0000000, %1534 ]
  %1739 = phi float [ %1675, %1578 ], [ %1718, %1687 ], [ %1734, %1721 ], [ 1.000000e+00, %1534 ]
  %1740 = phi float [ %1676, %1578 ], [ %1719, %1687 ], [ %1735, %1721 ], [ 1.000000e+00, %1534 ]
  %1741 = phi float [ %1677, %1578 ], [ %1720, %1687 ], [ %1736, %1721 ], [ 1.000000e+00, %1534 ]
  %1742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.i32 %1742, 1
  %1744 = and i32 %1743, 1
  %1745 = icmp ne i32 %1744, 0
  %1746 = add i32 %56, 356
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 32
  %1750 = icmp ne i32 %1749, 0
  %1751 = and i1 %1745, %1750
  %1752 = select i1 %1751, float 1.000000e+00, float %1739
  %1753 = select i1 %1751, float 0x3FD3333340000000, float %1740
  %1754 = select i1 %1751, float 0x3FD3333340000000, float %1741
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 32
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1831, label %1759

; <label>:1759                                    ; preds = %1737
  %1760 = add i32 %56, 108
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = add i32 %56, 396
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = add i32 %1765, 0
  %1767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1767, %dx.types.Handle %104, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.ResRet.f32 %1768, 3
  %1773 = and i32 %1762, 255
  %1774 = uitofp i32 %1773 to float
  %1775 = lshr i32 %1762, 8
  %1776 = and i32 %1775, 255
  %1777 = uitofp i32 %1776 to float
  %1778 = lshr i32 %1762, 16
  %1779 = and i32 %1778, 255
  %1780 = uitofp i32 %1779 to float
  %1781 = fmul fast float %1780, 0x3F70101000000000
  %1782 = fmul fast float %1769, %1774
  %1783 = fadd fast float %1782, %1777
  %1784 = fmul fast float %1783, 0x3F70101000000000
  %1785 = fadd fast float %1770, -5.000000e-01
  %1786 = fadd fast float %1772, -5.000000e-01
  %1787 = fmul fast float %1785, %1781
  %1788 = fmul fast float %1786, %1781
  %1789 = fadd fast float %1787, 5.000000e-01
  %1790 = fadd fast float %1788, 5.000000e-01
  %1791 = fmul fast float %1789, 2.000000e+00
  %1792 = fadd fast float %1791, -1.000000e+00
  %1793 = fmul fast float %1790, 2.000000e+00
  %1794 = fadd fast float %1793, -1.000000e+00
  %1795 = fadd fast float %1792, %1794
  %1796 = fmul fast float %1795, 5.000000e-01
  %1797 = fsub fast float %1792, %1794
  %1798 = fmul fast float %1797, 5.000000e-01
  %1799 = call float @dx.op.unary.f32(i32 6, float %1796)  ; FAbs(value)
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1802 = fsub fast float %1800, %1801
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1798, float %1802, float %1796, float %1798, float %1802)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = call float @dx.op.unary.f32(i32 25, float %1803)  ; Rsqrt(value)
  %1805 = fmul fast float %1796, %1804
  %1806 = fmul fast float %1798, %1804
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 67108864
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1827, label %1811

; <label>:1811                                    ; preds = %1759
  %1812 = add i32 %56, 296
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 65535
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 65535
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = lshr i32 %1814, 16
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fsub fast float %1784, %1822
  %1824 = fmul fast float %1823, %1816
  %1825 = fadd fast float %1824, %1820
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  br label %1827

; <label>:1827                                    ; preds = %1811, %1759
  %1828 = phi float [ %1826, %1811 ], [ %1784, %1759 ]
  %1829 = call float @dx.op.dot2.f32(i32 54, float %1805, float %1806, float %1363, float %1364)  ; Dot2(ax,ay,bx,by)
  %1830 = call float @dx.op.dot2.f32(i32 54, float %1805, float %1806, float %1365, float %1366)  ; Dot2(ax,ay,bx,by)
  br label %1831

; <label>:1831                                    ; preds = %1827, %1737
  %1832 = phi float [ %1828, %1827 ], [ 0x3FD6666660000000, %1737 ]
  %1833 = phi float [ %1829, %1827 ], [ 0.000000e+00, %1737 ]
  %1834 = phi float [ %1830, %1827 ], [ 0.000000e+00, %1737 ]
  %1835 = phi float [ %1771, %1827 ], [ 1.000000e+00, %1737 ]
  %1836 = add i32 %56, 176
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = lshr i32 %1838, 22
  %1840 = shl nuw nsw i32 %1839, 5
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 64
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1879, label %1846

; <label>:1846                                    ; preds = %1831
  %1847 = add i32 %56, 412
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %1849, 0
  %1851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 131072
  %1855 = icmp eq i32 %1854, 0
  %1856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1851, %dx.types.Handle %104, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1857 = extractvalue %dx.types.ResRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.ResRet.f32 %1856, 1
  %1859 = extractvalue %dx.types.ResRet.f32 %1856, 2
  %1860 = fmul fast float %385, %1857
  %1861 = fmul fast float %386, %1858
  %1862 = fmul fast float %387, %1859
  br i1 %1855, label %1869, label %1863

; <label>:1863                                    ; preds = %1846
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = fmul fast float %1865, %1860
  %1867 = fmul fast float %1865, %1861
  %1868 = fmul fast float %1865, %1862
  br label %1869

; <label>:1869                                    ; preds = %1863, %1846
  %1870 = phi float [ %1866, %1863 ], [ %1860, %1846 ]
  %1871 = phi float [ %1867, %1863 ], [ %1861, %1846 ]
  %1872 = phi float [ %1868, %1863 ], [ %1862, %1846 ]
  %1873 = fmul fast float %1870, %1841
  %1874 = select i1 %267, float %1873, float %1870
  %1875 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1871, float %1872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1876 = select i1 %267, float 0.000000e+00, float %1870
  %1877 = select i1 %267, float %1875, float %1871
  %1878 = select i1 %267, float 0.000000e+00, float %1872
  br label %1879

; <label>:1879                                    ; preds = %1869, %1831
  %1880 = phi float [ %1876, %1869 ], [ 0.000000e+00, %1831 ]
  %1881 = phi float [ %1877, %1869 ], [ 0.000000e+00, %1831 ]
  %1882 = phi float [ %1878, %1869 ], [ 0.000000e+00, %1831 ]
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = and i32 %1884, 1024
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %1917, label %1887

; <label>:1887                                    ; preds = %1879
  %1888 = add i32 %56, 168
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = fmul fast float %1892, 0x3F70101020000000
  %1894 = lshr i32 %1890, 8
  %1895 = and i32 %1894, 255
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1896, 0x3F70101020000000
  %1898 = lshr i32 %1890, 16
  %1899 = and i32 %1898, 255
  %1900 = uitofp i32 %1899 to float
  %1901 = fmul fast float %1900, 0x3F70101020000000
  %1902 = fmul fast float %1893, %1893
  %1903 = fmul fast float %1897, %1897
  %1904 = fmul fast float %1901, %1901
  %1905 = add i32 %56, 480
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = add i32 %1907, 0
  %1909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1909, %dx.types.Handle %105, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = fmul fast float %1902, %1911
  %1915 = fmul fast float %1903, %1912
  %1916 = fmul fast float %1904, %1913
  br label %1917

; <label>:1917                                    ; preds = %1887, %1879
  %1918 = phi float [ %1914, %1887 ], [ 0.000000e+00, %1879 ]
  %1919 = phi float [ %1915, %1887 ], [ 0.000000e+00, %1879 ]
  %1920 = phi float [ %1916, %1887 ], [ 0.000000e+00, %1879 ]
  %1921 = fcmp fast ogt float %1918, 0.000000e+00
  %1922 = fcmp fast ogt float %1919, 0.000000e+00
  %1923 = fcmp fast ogt float %1920, 0.000000e+00
  %1924 = call float @dx.op.unary.f32(i32 23, float %1918)  ; Log(value)
  %1925 = call float @dx.op.unary.f32(i32 23, float %1919)  ; Log(value)
  %1926 = call float @dx.op.unary.f32(i32 23, float %1920)  ; Log(value)
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = lshr i32 %1928, 7
  %1930 = and i32 %1929, 32752
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = fmul fast float %1924, 0xBFE62E4300000000
  %1933 = fmul fast float %1932, %1931
  %1934 = fmul fast float %1925, 0xBFE62E4300000000
  %1935 = fmul fast float %1934, %1931
  %1936 = fmul fast float %1926, 0xBFE62E4300000000
  %1937 = fmul fast float %1936, %1931
  %1938 = select i1 %1921, float %1933, float 1.270000e+02
  %1939 = select i1 %1922, float %1935, float 1.270000e+02
  %1940 = select i1 %1923, float %1937, float 1.270000e+02
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = and i32 %1942, 10240
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %1965, label %1945

; <label>:1945                                    ; preds = %1917
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = and i32 %1947, 2048
  %1949 = icmp eq i32 %1948, 0
  br i1 %1949, label %1965, label %1950

; <label>:1950                                    ; preds = %1945
  %1951 = add i32 %56, 496
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = add i32 %1953, 0
  %1955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1955, %dx.types.Handle %105, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 3
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = shl i32 %1959, 4
  %1961 = and i32 %1960, 32752
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = fmul fast float %1962, %1957
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1965

; <label>:1965                                    ; preds = %1950, %1945, %1917
  %1966 = phi float [ %1964, %1950 ], [ 0x3F70101020000000, %1945 ], [ 0x3F70101020000000, %1917 ]
  %1967 = add i32 %56, 112
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 255
  %1971 = uitofp i32 %1970 to float
  %1972 = lshr i32 %1969, 8
  %1973 = and i32 %1972, 255
  %1974 = uitofp i32 %1973 to float
  %1975 = call float @dx.op.dot3.f32(i32 55, float %1752, float %1753, float %1754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1976 = fmul fast float %1974, %1975
  %1977 = fadd fast float %1976, %1971
  %1978 = fmul fast float %1977, 0x3F70101020000000
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  br i1 %1351, label %1980, label %2015

; <label>:1980                                    ; preds = %1965
  %1981 = fmul fast float %1966, 2.000000e+00
  %1982 = fcmp fast olt float %1938, 1.270000e+02
  %1983 = fcmp fast olt float %1939, 1.270000e+02
  %1984 = fcmp fast olt float %1940, 1.270000e+02
  %1985 = fmul fast float %1938, 0xBFF7154760000000
  %1986 = fmul fast float %1985, %1981
  %1987 = fmul fast float %1939, 0xBFF7154760000000
  %1988 = fmul fast float %1987, %1981
  %1989 = fmul fast float %1940, 0xBFF7154760000000
  %1990 = fmul fast float %1989, %1981
  %1991 = call float @dx.op.unary.f32(i32 21, float %1986)  ; Exp(value)
  %1992 = call float @dx.op.unary.f32(i32 21, float %1988)  ; Exp(value)
  %1993 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1994 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1995 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1997 = fadd fast float %1994, -1.000000e+00
  %1998 = select i1 %1982, float %1997, float -1.000000e+00
  %1999 = fadd fast float %1995, -1.000000e+00
  %2000 = select i1 %1983, float %1999, float -1.000000e+00
  %2001 = fadd fast float %1996, -1.000000e+00
  %2002 = select i1 %1984, float %2001, float -1.000000e+00
  %2003 = fmul fast float %1998, %1532
  %2004 = fmul fast float %2000, %1532
  %2005 = fmul fast float %2002, %1532
  %2006 = fadd fast float %2003, 1.000000e+00
  %2007 = fadd fast float %2004, 1.000000e+00
  %2008 = fadd fast float %2005, 1.000000e+00
  %2009 = fmul fast float %2006, %1335
  %2010 = fmul fast float %2007, %1336
  %2011 = fmul fast float %2008, %1337
  %2012 = fmul fast float %2006, %1338
  %2013 = fmul fast float %2007, %1339
  %2014 = fmul fast float %2008, %1340
  br label %2015

; <label>:2015                                    ; preds = %1980, %1965
  %2016 = phi float [ %2009, %1980 ], [ %1335, %1965 ]
  %2017 = phi float [ %2010, %1980 ], [ %1336, %1965 ]
  %2018 = phi float [ %2011, %1980 ], [ %1337, %1965 ]
  %2019 = phi float [ %2012, %1980 ], [ %1338, %1965 ]
  %2020 = phi float [ %2013, %1980 ], [ %1339, %1965 ]
  %2021 = phi float [ %2014, %1980 ], [ %1340, %1965 ]
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 3
  %2025 = icmp eq i32 %2024, 3
  br i1 %2025, label %2104, label %2026

; <label>:2026                                    ; preds = %2015
  %2027 = and i32 %2023, 16
  %2028 = icmp ne i32 %2027, 0
  %2029 = select i1 %2028, float %1532, float 0.000000e+00
  %2030 = icmp eq i32 %2024, 0
  br i1 %2030, label %2031, label %2059

; <label>:2031                                    ; preds = %2026
  %2032 = and i32 %2023, 64
  %2033 = icmp ne i32 %2032, 0
  %2034 = select i1 %2033, float %1532, float 0.000000e+00
  %2035 = fsub fast float %1752, %2016
  %2036 = fsub fast float %1753, %2017
  %2037 = fsub fast float %1754, %2018
  %2038 = fmul fast float %2029, %2035
  %2039 = fmul fast float %2029, %2036
  %2040 = fmul fast float %2029, %2037
  %2041 = fadd fast float %2038, %2016
  %2042 = fadd fast float %2039, %2017
  %2043 = fadd fast float %2040, %2018
  %2044 = fsub fast float %1738, %1344
  %2045 = fmul fast float %2029, %2044
  %2046 = fadd fast float %2045, %1344
  %2047 = fsub fast float %1880, %2019
  %2048 = fsub fast float %1881, %2020
  %2049 = fsub fast float %1882, %2021
  %2050 = fmul fast float %2034, %2047
  %2051 = fmul fast float %2034, %2048
  %2052 = fmul fast float %2034, %2049
  %2053 = fadd fast float %2050, %2019
  %2054 = fadd fast float %2051, %2020
  %2055 = fadd fast float %2052, %2021
  %2056 = fsub fast float %1979, %1349
  %2057 = fmul fast float %2029, %2056
  %2058 = fadd fast float %2057, %1349
  br label %2104

; <label>:2059                                    ; preds = %2026
  %2060 = icmp eq i32 %2024, 1
  br i1 %2060, label %2061, label %2074

; <label>:2061                                    ; preds = %2059
  %2062 = fadd fast float %1752, -1.000000e+00
  %2063 = fadd fast float %1753, -1.000000e+00
  %2064 = fadd fast float %1754, -1.000000e+00
  %2065 = fmul fast float %2029, %2062
  %2066 = fmul fast float %2029, %2063
  %2067 = fmul fast float %2029, %2064
  %2068 = fadd fast float %2065, 1.000000e+00
  %2069 = fadd fast float %2066, 1.000000e+00
  %2070 = fadd fast float %2067, 1.000000e+00
  %2071 = fmul fast float %2068, %2016
  %2072 = fmul fast float %2069, %2017
  %2073 = fmul fast float %2070, %2018
  br label %2104

; <label>:2074                                    ; preds = %2059
  %2075 = icmp eq i32 %2024, 2
  br i1 %2075, label %2076, label %2104

; <label>:2076                                    ; preds = %2074
  %2077 = call float @dx.op.unary.f32(i32 24, float %1752)  ; Sqrt(value)
  %2078 = call float @dx.op.unary.f32(i32 24, float %1753)  ; Sqrt(value)
  %2079 = call float @dx.op.unary.f32(i32 24, float %1754)  ; Sqrt(value)
  %2080 = fadd fast float %2077, -5.000000e-01
  %2081 = fadd fast float %2078, -5.000000e-01
  %2082 = fadd fast float %2079, -5.000000e-01
  %2083 = fmul fast float %2080, %2029
  %2084 = fmul fast float %2081, %2029
  %2085 = fmul fast float %2082, %2029
  %2086 = fadd fast float %2083, 5.000000e-01
  %2087 = fadd fast float %2084, 5.000000e-01
  %2088 = fadd fast float %2085, 5.000000e-01
  %2089 = fmul fast float %2086, 2.000000e+00
  %2090 = fsub fast float 1.000000e+00, %2089
  %2091 = fmul fast float %2090, %2016
  %2092 = fadd fast float %2091, %2089
  %2093 = fmul fast float %2092, %2016
  %2094 = fmul fast float %2087, 2.000000e+00
  %2095 = fsub fast float 1.000000e+00, %2094
  %2096 = fmul fast float %2095, %2017
  %2097 = fadd fast float %2096, %2094
  %2098 = fmul fast float %2097, %2017
  %2099 = fmul fast float %2088, 2.000000e+00
  %2100 = fsub fast float 1.000000e+00, %2099
  %2101 = fmul fast float %2100, %2018
  %2102 = fadd fast float %2101, %2099
  %2103 = fmul fast float %2102, %2018
  br label %2104

; <label>:2104                                    ; preds = %2076, %2074, %2061, %2031, %2015
  %2105 = phi float [ %2016, %2015 ], [ %2093, %2076 ], [ %2016, %2074 ], [ %2071, %2061 ], [ %2041, %2031 ]
  %2106 = phi float [ %2017, %2015 ], [ %2098, %2076 ], [ %2017, %2074 ], [ %2072, %2061 ], [ %2042, %2031 ]
  %2107 = phi float [ %2018, %2015 ], [ %2103, %2076 ], [ %2018, %2074 ], [ %2073, %2061 ], [ %2043, %2031 ]
  %2108 = phi float [ %2019, %2015 ], [ %2019, %2076 ], [ %2019, %2074 ], [ %2019, %2061 ], [ %2053, %2031 ]
  %2109 = phi float [ %2020, %2015 ], [ %2020, %2076 ], [ %2020, %2074 ], [ %2020, %2061 ], [ %2054, %2031 ]
  %2110 = phi float [ %2021, %2015 ], [ %2021, %2076 ], [ %2021, %2074 ], [ %2021, %2061 ], [ %2055, %2031 ]
  %2111 = phi float [ %1344, %2015 ], [ %1344, %2076 ], [ %1344, %2074 ], [ %1344, %2061 ], [ %2046, %2031 ]
  %2112 = phi float [ %1349, %2015 ], [ %1349, %2076 ], [ %1349, %2074 ], [ %1349, %2061 ], [ %2058, %2031 ]
  %2113 = and i32 %2023, 12
  %2114 = icmp eq i32 %2113, 12
  br i1 %2114, label %2221, label %2115

; <label>:2115                                    ; preds = %2104
  %2116 = and i32 %2023, 2097184
  %2117 = icmp eq i32 %2116, 2097184
  %2118 = select i1 %2117, float %1532, float 0.000000e+00
  %2119 = and i32 %2023, 4194336
  %2120 = icmp eq i32 %2119, 4194336
  %2121 = select i1 %2120, float %1532, float 0.000000e+00
  %2122 = and i32 %2023, 8388640
  %2123 = icmp eq i32 %2122, 8388640
  %2124 = select i1 %2123, float %1532, float 0.000000e+00
  %2125 = and i32 %2023, 1024
  %2126 = icmp ne i32 %2125, 0
  %2127 = select i1 %2126, float %1532, float 0.000000e+00
  %2128 = and i32 %2023, 2048
  %2129 = icmp ne i32 %2128, 0
  %2130 = select i1 %2129, float %1532, float 0.000000e+00
  %2131 = icmp eq i32 %2113, 0
  br i1 %2131, label %2132, label %2157

; <label>:2132                                    ; preds = %2115
  %2133 = fsub fast float %1833, %1333
  %2134 = fsub fast float %1834, %1334
  %2135 = fmul fast float %2118, %2133
  %2136 = fmul fast float %2118, %2134
  %2137 = fadd fast float %2135, %1333
  %2138 = fadd fast float %2136, %1334
  %2139 = fsub fast float %1835, %1347
  %2140 = fmul fast float %2121, %2139
  %2141 = fadd fast float %2140, %1347
  %2142 = fsub fast float %1832, %1346
  %2143 = fmul fast float %2124, %2142
  %2144 = fadd fast float %2143, %1346
  %2145 = fsub fast float %1938, %1341
  %2146 = fsub fast float %1939, %1342
  %2147 = fsub fast float %1940, %1343
  %2148 = fmul fast float %2127, %2145
  %2149 = fmul fast float %2127, %2146
  %2150 = fmul fast float %2127, %2147
  %2151 = fadd fast float %2148, %1341
  %2152 = fadd fast float %2149, %1342
  %2153 = fadd fast float %2150, %1343
  %2154 = fsub fast float %1966, %1348
  %2155 = fmul fast float %2130, %2154
  %2156 = fadd fast float %2155, %1348
  br label %2221

; <label>:2157                                    ; preds = %2115
  %2158 = icmp eq i32 %2113, 4
  br i1 %2158, label %2159, label %2199

; <label>:2159                                    ; preds = %2157
  %2160 = fmul fast float %2118, %1833
  %2161 = fmul fast float %2118, %1834
  %2162 = fadd fast float %2160, %1333
  %2163 = fadd fast float %2161, %1334
  %2164 = call float @dx.op.binary.f32(i32 36, float %1347, float %1835)  ; FMin(a,b)
  %2165 = fsub fast float %2164, %1347
  %2166 = fmul fast float %2165, %2121
  %2167 = fadd fast float %2166, %1347
  %2168 = fadd fast float %1832, %1346
  %2169 = fmul fast float %2168, 0x3FF337FAE0000000
  %2170 = fmul fast float %1346, %1346
  %2171 = fmul fast float %1832, %1832
  %2172 = fadd fast float %2171, %2170
  %2173 = fmul fast float %2172, 0x3FE5152B00000000
  %2174 = fmul fast float %1346, 0xBFCC1F85E0000000
  %2175 = fmul fast float %2174, %1832
  %2176 = fadd fast float %2175, 0xBFE1363700000000
  %2177 = fadd fast float %2176, %2169
  %2178 = fsub fast float %2177, %2173
  %2179 = fmul fast float %2168, 0x3FBA6F0D00000000
  %2180 = fmul fast float %2172, 0x3FD0432880000000
  %2181 = fmul fast float %1346, 0xBFEF110800000000
  %2182 = fmul fast float %2181, %1832
  %2183 = fadd fast float %2182, 1.000000e+00
  %2184 = fsub fast float %2183, %2179
  %2185 = fadd fast float %2184, %2180
  %2186 = fdiv fast float %2178, %2185
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = fsub fast float %2187, %1346
  %2189 = fmul fast float %2188, %2124
  %2190 = fadd fast float %2189, %1346
  %2191 = fmul fast float %2127, %1938
  %2192 = fmul fast float %2127, %1939
  %2193 = fmul fast float %2127, %1940
  %2194 = fadd fast float %2191, %1341
  %2195 = fadd fast float %2192, %1342
  %2196 = fadd fast float %2193, %1343
  %2197 = fmul fast float %2130, %1966
  %2198 = fadd fast float %2197, %1348
  br label %2221

; <label>:2199                                    ; preds = %2157
  %2200 = icmp eq i32 %2113, 8
  br i1 %2200, label %2201, label %2221

; <label>:2201                                    ; preds = %2199
  %2202 = fmul fast float %2118, %1833
  %2203 = fmul fast float %2118, %1834
  %2204 = fadd fast float %2202, %1333
  %2205 = fadd fast float %2203, %1334
  %2206 = call float @dx.op.binary.f32(i32 36, float %1347, float %1835)  ; FMin(a,b)
  %2207 = fsub fast float %2206, %1347
  %2208 = fmul fast float %2207, %2121
  %2209 = fadd fast float %2208, %1347
  %2210 = fsub fast float %1832, %1346
  %2211 = fmul fast float %2124, %2210
  %2212 = fadd fast float %2211, %1346
  %2213 = fmul fast float %2127, %1938
  %2214 = fmul fast float %2127, %1939
  %2215 = fmul fast float %2127, %1940
  %2216 = fadd fast float %2213, %1341
  %2217 = fadd fast float %2214, %1342
  %2218 = fadd fast float %2215, %1343
  %2219 = fmul fast float %2130, %1966
  %2220 = fadd fast float %2219, %1348
  br label %2221

; <label>:2221                                    ; preds = %2201, %2199, %2159, %2132, %2104, %1531, %1350, %1332
  %2222 = phi float [ %1333, %2104 ], [ %1333, %1531 ], [ %1333, %1332 ], [ %2204, %2201 ], [ %1333, %2199 ], [ %2162, %2159 ], [ %2137, %2132 ], [ %1333, %1350 ]
  %2223 = phi float [ %1334, %2104 ], [ %1334, %1531 ], [ %1334, %1332 ], [ %2205, %2201 ], [ %1334, %2199 ], [ %2163, %2159 ], [ %2138, %2132 ], [ %1334, %1350 ]
  %2224 = phi float [ %2105, %2104 ], [ %1335, %1531 ], [ %1335, %1332 ], [ %2105, %2201 ], [ %2105, %2199 ], [ %2105, %2159 ], [ %2105, %2132 ], [ %1335, %1350 ]
  %2225 = phi float [ %2106, %2104 ], [ %1336, %1531 ], [ %1336, %1332 ], [ %2106, %2201 ], [ %2106, %2199 ], [ %2106, %2159 ], [ %2106, %2132 ], [ %1336, %1350 ]
  %2226 = phi float [ %2107, %2104 ], [ %1337, %1531 ], [ %1337, %1332 ], [ %2107, %2201 ], [ %2107, %2199 ], [ %2107, %2159 ], [ %2107, %2132 ], [ %1337, %1350 ]
  %2227 = phi float [ %2108, %2104 ], [ %1338, %1531 ], [ %1338, %1332 ], [ %2108, %2201 ], [ %2108, %2199 ], [ %2108, %2159 ], [ %2108, %2132 ], [ %1338, %1350 ]
  %2228 = phi float [ %2109, %2104 ], [ %1339, %1531 ], [ %1339, %1332 ], [ %2109, %2201 ], [ %2109, %2199 ], [ %2109, %2159 ], [ %2109, %2132 ], [ %1339, %1350 ]
  %2229 = phi float [ %2110, %2104 ], [ %1340, %1531 ], [ %1340, %1332 ], [ %2110, %2201 ], [ %2110, %2199 ], [ %2110, %2159 ], [ %2110, %2132 ], [ %1340, %1350 ]
  %2230 = phi float [ %1341, %2104 ], [ %1341, %1531 ], [ %1341, %1332 ], [ %2216, %2201 ], [ %1341, %2199 ], [ %2194, %2159 ], [ %2151, %2132 ], [ %1341, %1350 ]
  %2231 = phi float [ %1342, %2104 ], [ %1342, %1531 ], [ %1342, %1332 ], [ %2217, %2201 ], [ %1342, %2199 ], [ %2195, %2159 ], [ %2152, %2132 ], [ %1342, %1350 ]
  %2232 = phi float [ %1343, %2104 ], [ %1343, %1531 ], [ %1343, %1332 ], [ %2218, %2201 ], [ %1343, %2199 ], [ %2196, %2159 ], [ %2153, %2132 ], [ %1343, %1350 ]
  %2233 = phi float [ %2111, %2104 ], [ %1344, %1531 ], [ %1344, %1332 ], [ %2111, %2201 ], [ %2111, %2199 ], [ %2111, %2159 ], [ %2111, %2132 ], [ %1344, %1350 ]
  %2234 = phi float [ %1346, %2104 ], [ %1346, %1531 ], [ %1346, %1332 ], [ %2212, %2201 ], [ %1346, %2199 ], [ %2190, %2159 ], [ %2144, %2132 ], [ %1346, %1350 ]
  %2235 = phi float [ %1347, %2104 ], [ %1347, %1531 ], [ %1347, %1332 ], [ %2209, %2201 ], [ %1347, %2199 ], [ %2167, %2159 ], [ %2141, %2132 ], [ %1347, %1350 ]
  %2236 = phi float [ %1348, %2104 ], [ %1348, %1531 ], [ %1348, %1332 ], [ %2220, %2201 ], [ %1348, %2199 ], [ %2198, %2159 ], [ %2156, %2132 ], [ %1348, %1350 ]
  %2237 = phi float [ %2112, %2104 ], [ %1349, %1531 ], [ %1349, %1332 ], [ %2112, %2201 ], [ %2112, %2199 ], [ %2112, %2159 ], [ %2112, %2132 ], [ %1349, %1350 ]
  br i1 %649, label %3109, label %2238

; <label>:2238                                    ; preds = %2221
  %2239 = icmp ult i32 %705, 3
  %2240 = add i32 %56, 56
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %56, 60
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = or i32 %2245, %2242
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %3109, label %2248

; <label>:2248                                    ; preds = %2238
  %2249 = and i32 %2242, 262144
  %2250 = icmp ne i32 %2249, 0
  %2251 = select i1 %2250, float %63, float 1.000000e+00
  %2252 = select i1 %2250, float %64, float 0.000000e+00
  %2253 = select i1 %2250, float %65, float 0.000000e+00
  %2254 = select i1 %2250, float %66, float 1.000000e+00
  %2255 = select i1 %2250, float %67, float %90
  %2256 = select i1 %2250, float %68, float %91
  %2257 = add i32 %56, 316
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = lshr i32 %2259, 16
  %2261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2260)  ; LegacyF16ToF32(value)
  %2262 = fmul fast float %2261, 0x3F50624DE0000000
  %2263 = add i32 %56, 120
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = lshr i32 %2265, 16
  %2267 = and i32 %2266, 255
  %2268 = lshr i32 %2265, 24
  %2269 = add i32 %56, 324
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 65535
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = lshr i32 %2271, 16
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = add i32 %56, 64
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = lshr i32 %2278, 22
  %2280 = shl nuw nsw i32 %2279, 5
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = shl i32 %2278, 4
  %2283 = and i32 %2282, 32752
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = lshr i32 %2278, 7
  %2286 = and i32 %2285, 32752
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 3
  %2290 = fmul fast float %2289, 1.000000e+03
  %2291 = fmul fast float %2290, %533
  %2292 = call float @dx.op.unary.f32(i32 22, float %2291)  ; Frc(value)
  %2293 = fadd fast float %2292, %521
  %2294 = fmul fast float %2290, %535
  %2295 = call float @dx.op.unary.f32(i32 22, float %2294)  ; Frc(value)
  %2296 = fadd fast float %2295, %522
  %2297 = fmul fast float %2262, %2290
  %2298 = call float @dx.op.unary.f32(i32 22, float %2297)  ; Frc(value)
  %2299 = fmul fast float %2298, 0x401921FB60000000
  %2300 = fadd fast float %2299, %2281
  %2301 = call float @dx.op.unary.f32(i32 13, float %2300)  ; Sin(value)
  %2302 = call float @dx.op.unary.f32(i32 12, float %2300)  ; Cos(value)
  %2303 = fsub fast float -0.000000e+00, %2301
  %2304 = fadd fast float %2255, -5.000000e-01
  %2305 = fadd fast float %2256, -5.000000e-01
  %2306 = fmul fast float %2273, %2304
  %2307 = fmul fast float %2275, %2305
  %2308 = fadd fast float %2306, 5.000000e-01
  %2309 = fadd fast float %2307, 5.000000e-01
  %2310 = fmul fast float %2284, %2308
  %2311 = fmul fast float %2287, %2309
  %2312 = fmul fast float %2302, %2310
  %2313 = call float @dx.op.tertiary.f32(i32 46, float %2303, float %2311, float %2312)  ; FMad(a,b,c)
  %2314 = fmul fast float %2301, %2310
  %2315 = call float @dx.op.tertiary.f32(i32 46, float %2302, float %2311, float %2314)  ; FMad(a,b,c)
  %2316 = fadd fast float %2293, %2313
  %2317 = fadd fast float %2296, %2315
  %2318 = icmp ugt i32 %2267, 1
  %2319 = icmp ugt i32 %2265, 33554431
  %2320 = or i1 %2319, %2318
  br i1 %2320, label %2321, label %2346

; <label>:2321                                    ; preds = %2248
  %2322 = add i32 %56, 260
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = lshr i32 %2324, 16
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = fmul fast float %2289, %2326
  %2328 = call float @dx.op.unary.f32(i32 22, float %2327)  ; Frc(value)
  %2329 = mul nuw nsw i32 %2267, %2268
  %2330 = uitofp i32 %2329 to float
  %2331 = fmul fast float %2328, %2330
  %2332 = call float @dx.op.unary.f32(i32 27, float %2331)  ; Round_ni(value)
  %2333 = fptoui float %2332 to i32
  %2334 = urem i32 %2333, %2267
  %2335 = udiv i32 %2333, %2268
  %2336 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2337 = call float @dx.op.unary.f32(i32 22, float %2317)  ; Frc(value)
  %2338 = uitofp i32 %2334 to float
  %2339 = uitofp i32 %2335 to float
  %2340 = fadd fast float %2336, %2338
  %2341 = fadd fast float %2337, %2339
  %2342 = uitofp i32 %2267 to float
  %2343 = uitofp i32 %2268 to float
  %2344 = fdiv fast float %2340, %2342
  %2345 = fdiv fast float %2341, %2343
  br label %2346

; <label>:2346                                    ; preds = %2321, %2248
  %2347 = phi float [ %2344, %2321 ], [ %2316, %2248 ]
  %2348 = phi float [ %2345, %2321 ], [ %2317, %2248 ]
  %2349 = and i32 %2242, 256
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2397, label %2351

; <label>:2351                                    ; preds = %2346
  %2352 = add i32 %56, 448
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = add i32 %2354, 0
  %2356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2356, %dx.types.Handle %105, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = add i32 %56, 132
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = shl i32 %2361, 4
  %2363 = and i32 %2362, 32752
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = lshr i32 %2361, 7
  %2366 = and i32 %2365, 32752
  %2367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2366)  ; LegacyF16ToF32(value)
  %2368 = fsub fast float 1.000000e+00, %701
  %2369 = call float @dx.op.binary.f32(i32 35, float %2368, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2370 = bitcast float %701 to i32
  %2371 = sitofp i32 %2370 to float
  %2372 = fadd fast float %2371, 0xC1CFBF8940000000
  %2373 = fmul fast float %2367, %2372
  %2374 = fadd fast float %2373, 0x41CFBF8940000000
  %2375 = fptosi float %2374 to i32
  %2376 = bitcast i32 %2375 to float
  %2377 = bitcast float %2369 to i32
  %2378 = sitofp i32 %2377 to float
  %2379 = fadd fast float %2378, 0xC1CFBF8940000000
  %2380 = fmul fast float %2379, %2367
  %2381 = fadd fast float %2380, 0x41CFBF8940000000
  %2382 = fptosi float %2381 to i32
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2376, %2364
  %2385 = fmul fast float %2383, %2364
  %2386 = fsub fast float %2369, %2384
  %2387 = fadd fast float %2385, %2369
  %2388 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  %2389 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2390 = fsub fast float %2358, %2388
  %2391 = fsub fast float %2389, %2388
  %2392 = bitcast float %2391 to i32
  %2393 = sub nsw i32 2129859010, %2392
  %2394 = bitcast i32 %2393 to float
  %2395 = fmul fast float %2394, %2390
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  br label %2397

; <label>:2397                                    ; preds = %2351, %2346
  %2398 = phi float [ %2396, %2351 ], [ %701, %2346 ]
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 128
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2419, label %2403

; <label>:2403                                    ; preds = %2397
  %2404 = add i32 %56, 432
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %2406, 0
  %2408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2408, %dx.types.Handle %105, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2410 = extractvalue %dx.types.ResRet.f32 %2409, 0
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 524288
  %2414 = icmp ne i32 %2413, 0
  %2415 = fcmp fast ogt float %2410, 0x3FE0101020000000
  %2416 = select i1 %2415, float 1.000000e+00, float 0.000000e+00
  %2417 = select i1 %2414, float %2416, float %2410
  %2418 = fmul fast float %2417, %2398
  br label %2419

; <label>:2419                                    ; preds = %2403, %2397
  %2420 = phi float [ %2418, %2403 ], [ %2398, %2397 ]
  %2421 = fcmp fast ult float %2420, 0x3F70101020000000
  br i1 %2421, label %3109, label %2422

; <label>:2422                                    ; preds = %2419
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 16
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2625, label %2427

; <label>:2427                                    ; preds = %2422
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = add i32 %56, 384
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = add i32 %2432, 0
  %2434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2434, %dx.types.Handle %104, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.ResRet.f32 %2435, 2
  %2439 = extractvalue %dx.types.ResRet.f32 %2435, 3
  %2440 = and i32 %2429, 255
  %2441 = uitofp i32 %2440 to float
  %2442 = lshr i32 %2429, 8
  %2443 = and i32 %2442, 255
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2439, %2441
  %2446 = fadd fast float %2445, %2444
  %2447 = fmul fast float %2446, 0x3F70101000000000
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 512
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2460, label %2452

; <label>:2452                                    ; preds = %2427
  %2453 = add i32 %56, 468
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = add i32 %2455, 0
  %2457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2457, %dx.types.Handle %105, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  br label %2460

; <label>:2460                                    ; preds = %2452, %2427
  %2461 = phi float [ %2459, %2452 ], [ 1.000000e+00, %2427 ]
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 33554432
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %2572, label %2466

; <label>:2466                                    ; preds = %2460
  %2467 = add i32 %56, 256
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = lshr i32 %2469, 16
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = add i32 %56, 260
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %2476, 65535
  %2478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2477)  ; LegacyF16ToF32(value)
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = lshr i32 %2480, 24
  %2482 = uitofp i32 %2481 to float
  %2483 = fmul fast float %2482, 0x3F70101020000000
  %2484 = and i32 %2480, 255
  %2485 = uitofp i32 %2484 to float
  %2486 = fmul fast float %2485, 0x3F70101020000000
  %2487 = lshr i32 %2480, 8
  %2488 = and i32 %2487, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = fmul fast float %2489, 0x3F70101020000000
  %2491 = lshr i32 %2480, 16
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = add i32 %56, 252
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = lshr i32 %2497, 24
  %2499 = uitofp i32 %2498 to float
  %2500 = fmul fast float %2499, 0x3F70101020000000
  %2501 = and i32 %2497, 255
  %2502 = uitofp i32 %2501 to float
  %2503 = fmul fast float %2502, 0x3F70101020000000
  %2504 = lshr i32 %2497, 8
  %2505 = and i32 %2504, 255
  %2506 = uitofp i32 %2505 to float
  %2507 = fmul fast float %2506, 0x3F70101020000000
  %2508 = lshr i32 %2497, 16
  %2509 = and i32 %2508, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = bitcast float %2436 to i32
  %2513 = ashr i32 %2512, 1
  %2514 = sub nsw i32 1597463174, %2513
  %2515 = bitcast i32 %2514 to float
  %2516 = fmul fast float %2436, 5.000000e-01
  %2517 = fmul fast float %2515, %2515
  %2518 = fmul fast float %2517, %2516
  %2519 = fsub fast float 1.500000e+00, %2518
  %2520 = fmul fast float %2515, %2436
  %2521 = fmul fast float %2520, %2519
  %2522 = bitcast float %2437 to i32
  %2523 = ashr i32 %2522, 1
  %2524 = sub nsw i32 1597463174, %2523
  %2525 = bitcast i32 %2524 to float
  %2526 = fmul fast float %2437, 5.000000e-01
  %2527 = fmul fast float %2525, %2525
  %2528 = fmul fast float %2527, %2526
  %2529 = fsub fast float 1.500000e+00, %2528
  %2530 = fmul fast float %2525, %2437
  %2531 = fmul fast float %2530, %2529
  %2532 = bitcast float %2438 to i32
  %2533 = ashr i32 %2532, 1
  %2534 = sub nsw i32 1597463174, %2533
  %2535 = bitcast i32 %2534 to float
  %2536 = fmul fast float %2438, 5.000000e-01
  %2537 = fmul fast float %2535, %2535
  %2538 = fmul fast float %2537, %2536
  %2539 = fsub fast float 1.500000e+00, %2538
  %2540 = fmul fast float %2535, %2438
  %2541 = fmul fast float %2540, %2539
  %2542 = fsub fast float %2521, %2503
  %2543 = fsub fast float %2531, %2507
  %2544 = fsub fast float %2541, %2511
  %2545 = fmul fast float %2542, %2471
  %2546 = fmul fast float %2543, %2473
  %2547 = fmul fast float %2544, %2478
  %2548 = fadd fast float %2545, %2486
  %2549 = fadd fast float %2546, %2490
  %2550 = fadd fast float %2547, %2494
  %2551 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2552 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2553 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2554 = fmul fast float %2551, %2551
  %2555 = fmul fast float %2552, %2552
  %2556 = fmul fast float %2553, %2553
  %2557 = fsub fast float %2554, %2436
  %2558 = fsub fast float %2555, %2437
  %2559 = fsub fast float %2556, %2438
  %2560 = fmul fast float %2557, %2461
  %2561 = fmul fast float %2558, %2461
  %2562 = fmul fast float %2559, %2461
  %2563 = fadd fast float %2560, %2436
  %2564 = fadd fast float %2561, %2437
  %2565 = fadd fast float %2562, %2438
  %2566 = fadd fast float %2483, %2447
  %2567 = fsub fast float %2566, %2500
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2569 = fsub fast float %2568, %2447
  %2570 = fmul fast float %2569, %2461
  %2571 = fadd fast float %2570, %2447
  br label %2625

; <label>:2572                                    ; preds = %2460
  %2573 = and i32 %2463, 134217728
  %2574 = icmp eq i32 %2573, 0
  br i1 %2574, label %2609, label %2575

; <label>:2575                                    ; preds = %2572
  %2576 = call float @dx.op.unary.f32(i32 24, float %509)  ; Sqrt(value)
  %2577 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %2578 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2579 = fadd fast float %2576, -5.000000e-01
  %2580 = fadd fast float %2577, -5.000000e-01
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fmul fast float %2579, %2461
  %2583 = fmul fast float %2580, %2461
  %2584 = fmul fast float %2581, %2461
  %2585 = fadd fast float %2582, 5.000000e-01
  %2586 = fadd fast float %2583, 5.000000e-01
  %2587 = fadd fast float %2584, 5.000000e-01
  %2588 = call float @dx.op.unary.f32(i32 24, float %2436)  ; Sqrt(value)
  %2589 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  %2590 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2591 = fmul fast float %2585, 2.000000e+00
  %2592 = fsub fast float 1.000000e+00, %2591
  %2593 = fmul fast float %2592, %2588
  %2594 = fadd fast float %2593, %2591
  %2595 = fmul fast float %2594, %2588
  %2596 = fmul fast float %2586, 2.000000e+00
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = fmul fast float %2597, %2589
  %2599 = fadd fast float %2598, %2596
  %2600 = fmul fast float %2599, %2589
  %2601 = fmul fast float %2587, 2.000000e+00
  %2602 = fsub fast float 1.000000e+00, %2601
  %2603 = fmul fast float %2602, %2590
  %2604 = fadd fast float %2603, %2601
  %2605 = fmul fast float %2604, %2590
  %2606 = fmul fast float %2595, %2595
  %2607 = fmul fast float %2600, %2600
  %2608 = fmul fast float %2605, %2605
  br label %2625

; <label>:2609                                    ; preds = %2572
  %2610 = fmul fast float %509, %509
  %2611 = fmul fast float %510, %510
  %2612 = fmul fast float %511, %511
  %2613 = fadd fast float %2610, -1.000000e+00
  %2614 = fadd fast float %2611, -1.000000e+00
  %2615 = fadd fast float %2612, -1.000000e+00
  %2616 = fmul fast float %2461, %2613
  %2617 = fmul fast float %2461, %2614
  %2618 = fmul fast float %2461, %2615
  %2619 = fadd fast float %2616, 1.000000e+00
  %2620 = fadd fast float %2617, 1.000000e+00
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fmul fast float %2619, %2436
  %2623 = fmul fast float %2620, %2437
  %2624 = fmul fast float %2621, %2438
  br label %2625

; <label>:2625                                    ; preds = %2609, %2575, %2466, %2422
  %2626 = phi float [ %2571, %2466 ], [ %2447, %2575 ], [ %2447, %2609 ], [ 0x3FA23C0BE0000000, %2422 ]
  %2627 = phi float [ %2563, %2466 ], [ %2606, %2575 ], [ %2622, %2609 ], [ 1.000000e+00, %2422 ]
  %2628 = phi float [ %2564, %2466 ], [ %2607, %2575 ], [ %2623, %2609 ], [ 1.000000e+00, %2422 ]
  %2629 = phi float [ %2565, %2466 ], [ %2608, %2575 ], [ %2624, %2609 ], [ 1.000000e+00, %2422 ]
  %2630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.i32 %2630, 1
  %2632 = and i32 %2631, 1
  %2633 = icmp ne i32 %2632, 0
  %2634 = add i32 %56, 356
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = and i32 %2636, 32
  %2638 = icmp ne i32 %2637, 0
  %2639 = and i1 %2633, %2638
  %2640 = select i1 %2639, float 1.000000e+00, float %2627
  %2641 = select i1 %2639, float 0x3FD3333340000000, float %2628
  %2642 = select i1 %2639, float 0x3FD3333340000000, float %2629
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 32
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2719, label %2647

; <label>:2647                                    ; preds = %2625
  %2648 = add i32 %56, 124
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = add i32 %56, 400
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %104, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = extractvalue %dx.types.ResRet.f32 %2656, 1
  %2659 = extractvalue %dx.types.ResRet.f32 %2656, 2
  %2660 = extractvalue %dx.types.ResRet.f32 %2656, 3
  %2661 = and i32 %2650, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = lshr i32 %2650, 8
  %2664 = and i32 %2663, 255
  %2665 = uitofp i32 %2664 to float
  %2666 = lshr i32 %2650, 16
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101000000000
  %2670 = fmul fast float %2657, %2662
  %2671 = fadd fast float %2670, %2665
  %2672 = fmul fast float %2671, 0x3F70101000000000
  %2673 = fadd fast float %2658, -5.000000e-01
  %2674 = fadd fast float %2660, -5.000000e-01
  %2675 = fmul fast float %2673, %2669
  %2676 = fmul fast float %2674, %2669
  %2677 = fadd fast float %2675, 5.000000e-01
  %2678 = fadd fast float %2676, 5.000000e-01
  %2679 = fmul fast float %2677, 2.000000e+00
  %2680 = fadd fast float %2679, -1.000000e+00
  %2681 = fmul fast float %2678, 2.000000e+00
  %2682 = fadd fast float %2681, -1.000000e+00
  %2683 = fadd fast float %2680, %2682
  %2684 = fmul fast float %2683, 5.000000e-01
  %2685 = fsub fast float %2680, %2682
  %2686 = fmul fast float %2685, 5.000000e-01
  %2687 = call float @dx.op.unary.f32(i32 6, float %2684)  ; FAbs(value)
  %2688 = fsub fast float 1.000000e+00, %2687
  %2689 = call float @dx.op.unary.f32(i32 6, float %2686)  ; FAbs(value)
  %2690 = fsub fast float %2688, %2689
  %2691 = call float @dx.op.dot3.f32(i32 55, float %2684, float %2686, float %2690, float %2684, float %2686, float %2690)  ; Dot3(ax,ay,az,bx,by,bz)
  %2692 = call float @dx.op.unary.f32(i32 25, float %2691)  ; Rsqrt(value)
  %2693 = fmul fast float %2684, %2692
  %2694 = fmul fast float %2686, %2692
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = and i32 %2696, 67108864
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2715, label %2699

; <label>:2699                                    ; preds = %2647
  %2700 = add i32 %56, 312
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, 65535
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 65535
  %2708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2707)  ; LegacyF16ToF32(value)
  %2709 = lshr i32 %2702, 16
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = fsub fast float %2672, %2710
  %2712 = fmul fast float %2711, %2704
  %2713 = fadd fast float %2712, %2708
  %2714 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  br label %2715

; <label>:2715                                    ; preds = %2699, %2647
  %2716 = phi float [ %2714, %2699 ], [ %2672, %2647 ]
  %2717 = call float @dx.op.dot2.f32(i32 54, float %2693, float %2694, float %2251, float %2252)  ; Dot2(ax,ay,bx,by)
  %2718 = call float @dx.op.dot2.f32(i32 54, float %2693, float %2694, float %2253, float %2254)  ; Dot2(ax,ay,bx,by)
  br label %2719

; <label>:2719                                    ; preds = %2715, %2625
  %2720 = phi float [ %2716, %2715 ], [ 0x3FD6666660000000, %2625 ]
  %2721 = phi float [ %2717, %2715 ], [ 0.000000e+00, %2625 ]
  %2722 = phi float [ %2718, %2715 ], [ 0.000000e+00, %2625 ]
  %2723 = phi float [ %2659, %2715 ], [ 1.000000e+00, %2625 ]
  %2724 = add i32 %56, 192
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 22
  %2728 = shl nuw nsw i32 %2727, 5
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 64
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %2767, label %2734

; <label>:2734                                    ; preds = %2719
  %2735 = add i32 %56, 416
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = add i32 %2737, 0
  %2739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 131072
  %2743 = icmp eq i32 %2742, 0
  %2744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2739, %dx.types.Handle %104, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = fmul fast float %492, %2745
  %2749 = fmul fast float %493, %2746
  %2750 = fmul fast float %494, %2747
  br i1 %2743, label %2757, label %2751

; <label>:2751                                    ; preds = %2734
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = fmul fast float %2753, %2748
  %2755 = fmul fast float %2753, %2749
  %2756 = fmul fast float %2753, %2750
  br label %2757

; <label>:2757                                    ; preds = %2751, %2734
  %2758 = phi float [ %2754, %2751 ], [ %2748, %2734 ]
  %2759 = phi float [ %2755, %2751 ], [ %2749, %2734 ]
  %2760 = phi float [ %2756, %2751 ], [ %2750, %2734 ]
  %2761 = fmul fast float %2758, %2729
  %2762 = select i1 %267, float %2761, float %2758
  %2763 = call float @dx.op.dot3.f32(i32 55, float %2762, float %2759, float %2760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2764 = select i1 %267, float 0.000000e+00, float %2758
  %2765 = select i1 %267, float %2763, float %2759
  %2766 = select i1 %267, float 0.000000e+00, float %2760
  br label %2767

; <label>:2767                                    ; preds = %2757, %2719
  %2768 = phi float [ %2764, %2757 ], [ 0.000000e+00, %2719 ]
  %2769 = phi float [ %2765, %2757 ], [ 0.000000e+00, %2719 ]
  %2770 = phi float [ %2766, %2757 ], [ 0.000000e+00, %2719 ]
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = and i32 %2772, 1024
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2805, label %2775

; <label>:2775                                    ; preds = %2767
  %2776 = add i32 %56, 184
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %2778, 255
  %2780 = uitofp i32 %2779 to float
  %2781 = fmul fast float %2780, 0x3F70101020000000
  %2782 = lshr i32 %2778, 8
  %2783 = and i32 %2782, 255
  %2784 = uitofp i32 %2783 to float
  %2785 = fmul fast float %2784, 0x3F70101020000000
  %2786 = lshr i32 %2778, 16
  %2787 = and i32 %2786, 255
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = fmul fast float %2781, %2781
  %2791 = fmul fast float %2785, %2785
  %2792 = fmul fast float %2789, %2789
  %2793 = add i32 %56, 484
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = add i32 %2795, 0
  %2797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2797, %dx.types.Handle %105, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2799 = extractvalue %dx.types.ResRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.ResRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.ResRet.f32 %2798, 2
  %2802 = fmul fast float %2790, %2799
  %2803 = fmul fast float %2791, %2800
  %2804 = fmul fast float %2792, %2801
  br label %2805

; <label>:2805                                    ; preds = %2775, %2767
  %2806 = phi float [ %2802, %2775 ], [ 0.000000e+00, %2767 ]
  %2807 = phi float [ %2803, %2775 ], [ 0.000000e+00, %2767 ]
  %2808 = phi float [ %2804, %2775 ], [ 0.000000e+00, %2767 ]
  %2809 = fcmp fast ogt float %2806, 0.000000e+00
  %2810 = fcmp fast ogt float %2807, 0.000000e+00
  %2811 = fcmp fast ogt float %2808, 0.000000e+00
  %2812 = call float @dx.op.unary.f32(i32 23, float %2806)  ; Log(value)
  %2813 = call float @dx.op.unary.f32(i32 23, float %2807)  ; Log(value)
  %2814 = call float @dx.op.unary.f32(i32 23, float %2808)  ; Log(value)
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = lshr i32 %2816, 7
  %2818 = and i32 %2817, 32752
  %2819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2818)  ; LegacyF16ToF32(value)
  %2820 = fmul fast float %2812, 0xBFE62E4300000000
  %2821 = fmul fast float %2820, %2819
  %2822 = fmul fast float %2813, 0xBFE62E4300000000
  %2823 = fmul fast float %2822, %2819
  %2824 = fmul fast float %2814, 0xBFE62E4300000000
  %2825 = fmul fast float %2824, %2819
  %2826 = select i1 %2809, float %2821, float 1.270000e+02
  %2827 = select i1 %2810, float %2823, float 1.270000e+02
  %2828 = select i1 %2811, float %2825, float 1.270000e+02
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 10240
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2853, label %2833

; <label>:2833                                    ; preds = %2805
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = and i32 %2835, 2048
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2853, label %2838

; <label>:2838                                    ; preds = %2833
  %2839 = add i32 %56, 500
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = add i32 %2841, 0
  %2843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2843, %dx.types.Handle %105, float %2347, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 3
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = shl i32 %2847, 4
  %2849 = and i32 %2848, 32752
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = fmul fast float %2850, %2845
  %2852 = call float @dx.op.binary.f32(i32 35, float %2851, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2853

; <label>:2853                                    ; preds = %2838, %2833, %2805
  %2854 = phi float [ %2852, %2838 ], [ 0x3F70101020000000, %2833 ], [ 0x3F70101020000000, %2805 ]
  %2855 = add i32 %56, 128
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = and i32 %2857, 255
  %2859 = uitofp i32 %2858 to float
  %2860 = lshr i32 %2857, 8
  %2861 = and i32 %2860, 255
  %2862 = uitofp i32 %2861 to float
  %2863 = call float @dx.op.dot3.f32(i32 55, float %2640, float %2641, float %2642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2864 = fmul fast float %2862, %2863
  %2865 = fadd fast float %2864, %2859
  %2866 = fmul fast float %2865, 0x3F70101020000000
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  br i1 %2239, label %2868, label %2903

; <label>:2868                                    ; preds = %2853
  %2869 = fmul fast float %2854, 2.000000e+00
  %2870 = fcmp fast olt float %2826, 1.270000e+02
  %2871 = fcmp fast olt float %2827, 1.270000e+02
  %2872 = fcmp fast olt float %2828, 1.270000e+02
  %2873 = fmul fast float %2826, 0xBFF7154760000000
  %2874 = fmul fast float %2873, %2869
  %2875 = fmul fast float %2827, 0xBFF7154760000000
  %2876 = fmul fast float %2875, %2869
  %2877 = fmul fast float %2828, 0xBFF7154760000000
  %2878 = fmul fast float %2877, %2869
  %2879 = call float @dx.op.unary.f32(i32 21, float %2874)  ; Exp(value)
  %2880 = call float @dx.op.unary.f32(i32 21, float %2876)  ; Exp(value)
  %2881 = call float @dx.op.unary.f32(i32 21, float %2878)  ; Exp(value)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2883 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2885 = fadd fast float %2882, -1.000000e+00
  %2886 = select i1 %2870, float %2885, float -1.000000e+00
  %2887 = fadd fast float %2883, -1.000000e+00
  %2888 = select i1 %2871, float %2887, float -1.000000e+00
  %2889 = fadd fast float %2884, -1.000000e+00
  %2890 = select i1 %2872, float %2889, float -1.000000e+00
  %2891 = fmul fast float %2886, %2420
  %2892 = fmul fast float %2888, %2420
  %2893 = fmul fast float %2890, %2420
  %2894 = fadd fast float %2891, 1.000000e+00
  %2895 = fadd fast float %2892, 1.000000e+00
  %2896 = fadd fast float %2893, 1.000000e+00
  %2897 = fmul fast float %2894, %2224
  %2898 = fmul fast float %2895, %2225
  %2899 = fmul fast float %2896, %2226
  %2900 = fmul fast float %2894, %2227
  %2901 = fmul fast float %2895, %2228
  %2902 = fmul fast float %2896, %2229
  br label %2903

; <label>:2903                                    ; preds = %2868, %2853
  %2904 = phi float [ %2897, %2868 ], [ %2224, %2853 ]
  %2905 = phi float [ %2898, %2868 ], [ %2225, %2853 ]
  %2906 = phi float [ %2899, %2868 ], [ %2226, %2853 ]
  %2907 = phi float [ %2900, %2868 ], [ %2227, %2853 ]
  %2908 = phi float [ %2901, %2868 ], [ %2228, %2853 ]
  %2909 = phi float [ %2902, %2868 ], [ %2229, %2853 ]
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 3
  %2913 = icmp eq i32 %2912, 3
  br i1 %2913, label %2992, label %2914

; <label>:2914                                    ; preds = %2903
  %2915 = and i32 %2911, 16
  %2916 = icmp ne i32 %2915, 0
  %2917 = select i1 %2916, float %2420, float 0.000000e+00
  %2918 = icmp eq i32 %2912, 0
  br i1 %2918, label %2919, label %2947

; <label>:2919                                    ; preds = %2914
  %2920 = and i32 %2911, 64
  %2921 = icmp ne i32 %2920, 0
  %2922 = select i1 %2921, float %2420, float 0.000000e+00
  %2923 = fsub fast float %2640, %2904
  %2924 = fsub fast float %2641, %2905
  %2925 = fsub fast float %2642, %2906
  %2926 = fmul fast float %2917, %2923
  %2927 = fmul fast float %2917, %2924
  %2928 = fmul fast float %2917, %2925
  %2929 = fadd fast float %2926, %2904
  %2930 = fadd fast float %2927, %2905
  %2931 = fadd fast float %2928, %2906
  %2932 = fsub fast float %2626, %2233
  %2933 = fmul fast float %2917, %2932
  %2934 = fadd fast float %2933, %2233
  %2935 = fsub fast float %2768, %2907
  %2936 = fsub fast float %2769, %2908
  %2937 = fsub fast float %2770, %2909
  %2938 = fmul fast float %2922, %2935
  %2939 = fmul fast float %2922, %2936
  %2940 = fmul fast float %2922, %2937
  %2941 = fadd fast float %2938, %2907
  %2942 = fadd fast float %2939, %2908
  %2943 = fadd fast float %2940, %2909
  %2944 = fsub fast float %2867, %2237
  %2945 = fmul fast float %2917, %2944
  %2946 = fadd fast float %2945, %2237
  br label %2992

; <label>:2947                                    ; preds = %2914
  %2948 = icmp eq i32 %2912, 1
  br i1 %2948, label %2949, label %2962

; <label>:2949                                    ; preds = %2947
  %2950 = fadd fast float %2640, -1.000000e+00
  %2951 = fadd fast float %2641, -1.000000e+00
  %2952 = fadd fast float %2642, -1.000000e+00
  %2953 = fmul fast float %2917, %2950
  %2954 = fmul fast float %2917, %2951
  %2955 = fmul fast float %2917, %2952
  %2956 = fadd fast float %2953, 1.000000e+00
  %2957 = fadd fast float %2954, 1.000000e+00
  %2958 = fadd fast float %2955, 1.000000e+00
  %2959 = fmul fast float %2956, %2904
  %2960 = fmul fast float %2957, %2905
  %2961 = fmul fast float %2958, %2906
  br label %2992

; <label>:2962                                    ; preds = %2947
  %2963 = icmp eq i32 %2912, 2
  br i1 %2963, label %2964, label %2992

; <label>:2964                                    ; preds = %2962
  %2965 = call float @dx.op.unary.f32(i32 24, float %2640)  ; Sqrt(value)
  %2966 = call float @dx.op.unary.f32(i32 24, float %2641)  ; Sqrt(value)
  %2967 = call float @dx.op.unary.f32(i32 24, float %2642)  ; Sqrt(value)
  %2968 = fadd fast float %2965, -5.000000e-01
  %2969 = fadd fast float %2966, -5.000000e-01
  %2970 = fadd fast float %2967, -5.000000e-01
  %2971 = fmul fast float %2968, %2917
  %2972 = fmul fast float %2969, %2917
  %2973 = fmul fast float %2970, %2917
  %2974 = fadd fast float %2971, 5.000000e-01
  %2975 = fadd fast float %2972, 5.000000e-01
  %2976 = fadd fast float %2973, 5.000000e-01
  %2977 = fmul fast float %2974, 2.000000e+00
  %2978 = fsub fast float 1.000000e+00, %2977
  %2979 = fmul fast float %2978, %2904
  %2980 = fadd fast float %2979, %2977
  %2981 = fmul fast float %2980, %2904
  %2982 = fmul fast float %2975, 2.000000e+00
  %2983 = fsub fast float 1.000000e+00, %2982
  %2984 = fmul fast float %2983, %2905
  %2985 = fadd fast float %2984, %2982
  %2986 = fmul fast float %2985, %2905
  %2987 = fmul fast float %2976, 2.000000e+00
  %2988 = fsub fast float 1.000000e+00, %2987
  %2989 = fmul fast float %2988, %2906
  %2990 = fadd fast float %2989, %2987
  %2991 = fmul fast float %2990, %2906
  br label %2992

; <label>:2992                                    ; preds = %2964, %2962, %2949, %2919, %2903
  %2993 = phi float [ %2904, %2903 ], [ %2981, %2964 ], [ %2904, %2962 ], [ %2959, %2949 ], [ %2929, %2919 ]
  %2994 = phi float [ %2905, %2903 ], [ %2986, %2964 ], [ %2905, %2962 ], [ %2960, %2949 ], [ %2930, %2919 ]
  %2995 = phi float [ %2906, %2903 ], [ %2991, %2964 ], [ %2906, %2962 ], [ %2961, %2949 ], [ %2931, %2919 ]
  %2996 = phi float [ %2907, %2903 ], [ %2907, %2964 ], [ %2907, %2962 ], [ %2907, %2949 ], [ %2941, %2919 ]
  %2997 = phi float [ %2908, %2903 ], [ %2908, %2964 ], [ %2908, %2962 ], [ %2908, %2949 ], [ %2942, %2919 ]
  %2998 = phi float [ %2909, %2903 ], [ %2909, %2964 ], [ %2909, %2962 ], [ %2909, %2949 ], [ %2943, %2919 ]
  %2999 = phi float [ %2233, %2903 ], [ %2233, %2964 ], [ %2233, %2962 ], [ %2233, %2949 ], [ %2934, %2919 ]
  %3000 = phi float [ %2237, %2903 ], [ %2237, %2964 ], [ %2237, %2962 ], [ %2237, %2949 ], [ %2946, %2919 ]
  %3001 = and i32 %2911, 12
  %3002 = icmp eq i32 %3001, 12
  br i1 %3002, label %3109, label %3003

; <label>:3003                                    ; preds = %2992
  %3004 = and i32 %2911, 2097184
  %3005 = icmp eq i32 %3004, 2097184
  %3006 = select i1 %3005, float %2420, float 0.000000e+00
  %3007 = and i32 %2911, 4194336
  %3008 = icmp eq i32 %3007, 4194336
  %3009 = select i1 %3008, float %2420, float 0.000000e+00
  %3010 = and i32 %2911, 8388640
  %3011 = icmp eq i32 %3010, 8388640
  %3012 = select i1 %3011, float %2420, float 0.000000e+00
  %3013 = and i32 %2911, 1024
  %3014 = icmp ne i32 %3013, 0
  %3015 = select i1 %3014, float %2420, float 0.000000e+00
  %3016 = and i32 %2911, 2048
  %3017 = icmp ne i32 %3016, 0
  %3018 = select i1 %3017, float %2420, float 0.000000e+00
  %3019 = icmp eq i32 %3001, 0
  br i1 %3019, label %3020, label %3045

; <label>:3020                                    ; preds = %3003
  %3021 = fsub fast float %2721, %2222
  %3022 = fsub fast float %2722, %2223
  %3023 = fmul fast float %3006, %3021
  %3024 = fmul fast float %3006, %3022
  %3025 = fadd fast float %3023, %2222
  %3026 = fadd fast float %3024, %2223
  %3027 = fsub fast float %2723, %2235
  %3028 = fmul fast float %3009, %3027
  %3029 = fadd fast float %3028, %2235
  %3030 = fsub fast float %2720, %2234
  %3031 = fmul fast float %3012, %3030
  %3032 = fadd fast float %3031, %2234
  %3033 = fsub fast float %2826, %2230
  %3034 = fsub fast float %2827, %2231
  %3035 = fsub fast float %2828, %2232
  %3036 = fmul fast float %3015, %3033
  %3037 = fmul fast float %3015, %3034
  %3038 = fmul fast float %3015, %3035
  %3039 = fadd fast float %3036, %2230
  %3040 = fadd fast float %3037, %2231
  %3041 = fadd fast float %3038, %2232
  %3042 = fsub fast float %2854, %2236
  %3043 = fmul fast float %3018, %3042
  %3044 = fadd fast float %3043, %2236
  br label %3109

; <label>:3045                                    ; preds = %3003
  %3046 = icmp eq i32 %3001, 4
  br i1 %3046, label %3047, label %3087

; <label>:3047                                    ; preds = %3045
  %3048 = fmul fast float %3006, %2721
  %3049 = fmul fast float %3006, %2722
  %3050 = fadd fast float %3048, %2222
  %3051 = fadd fast float %3049, %2223
  %3052 = call float @dx.op.binary.f32(i32 36, float %2235, float %2723)  ; FMin(a,b)
  %3053 = fsub fast float %3052, %2235
  %3054 = fmul fast float %3053, %3009
  %3055 = fadd fast float %3054, %2235
  %3056 = fadd fast float %2720, %2234
  %3057 = fmul fast float %3056, 0x3FF337FAE0000000
  %3058 = fmul fast float %2234, %2234
  %3059 = fmul fast float %2720, %2720
  %3060 = fadd fast float %3059, %3058
  %3061 = fmul fast float %3060, 0x3FE5152B00000000
  %3062 = fmul fast float %2234, 0xBFCC1F85E0000000
  %3063 = fmul fast float %3062, %2720
  %3064 = fadd fast float %3063, 0xBFE1363700000000
  %3065 = fadd fast float %3064, %3057
  %3066 = fsub fast float %3065, %3061
  %3067 = fmul fast float %3056, 0x3FBA6F0D00000000
  %3068 = fmul fast float %3060, 0x3FD0432880000000
  %3069 = fmul fast float %2234, 0xBFEF110800000000
  %3070 = fmul fast float %3069, %2720
  %3071 = fadd fast float %3070, 1.000000e+00
  %3072 = fsub fast float %3071, %3067
  %3073 = fadd fast float %3072, %3068
  %3074 = fdiv fast float %3066, %3073
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3076 = fsub fast float %3075, %2234
  %3077 = fmul fast float %3076, %3012
  %3078 = fadd fast float %3077, %2234
  %3079 = fmul fast float %3015, %2826
  %3080 = fmul fast float %3015, %2827
  %3081 = fmul fast float %3015, %2828
  %3082 = fadd fast float %3079, %2230
  %3083 = fadd fast float %3080, %2231
  %3084 = fadd fast float %3081, %2232
  %3085 = fmul fast float %3018, %2854
  %3086 = fadd fast float %3085, %2236
  br label %3109

; <label>:3087                                    ; preds = %3045
  %3088 = icmp eq i32 %3001, 8
  br i1 %3088, label %3089, label %3109

; <label>:3089                                    ; preds = %3087
  %3090 = fmul fast float %3006, %2721
  %3091 = fmul fast float %3006, %2722
  %3092 = fadd fast float %3090, %2222
  %3093 = fadd fast float %3091, %2223
  %3094 = call float @dx.op.binary.f32(i32 36, float %2235, float %2723)  ; FMin(a,b)
  %3095 = fsub fast float %3094, %2235
  %3096 = fmul fast float %3095, %3009
  %3097 = fadd fast float %3096, %2235
  %3098 = fsub fast float %2720, %2234
  %3099 = fmul fast float %3012, %3098
  %3100 = fadd fast float %3099, %2234
  %3101 = fmul fast float %3015, %2826
  %3102 = fmul fast float %3015, %2827
  %3103 = fmul fast float %3015, %2828
  %3104 = fadd fast float %3101, %2230
  %3105 = fadd fast float %3102, %2231
  %3106 = fadd fast float %3103, %2232
  %3107 = fmul fast float %3018, %2854
  %3108 = fadd fast float %3107, %2236
  br label %3109

; <label>:3109                                    ; preds = %3089, %3087, %3047, %3020, %2992, %2419, %2238, %2221
  %3110 = phi float [ %2222, %2992 ], [ %2222, %2419 ], [ %2222, %2221 ], [ %3092, %3089 ], [ %2222, %3087 ], [ %3050, %3047 ], [ %3025, %3020 ], [ %2222, %2238 ]
  %3111 = phi float [ %2223, %2992 ], [ %2223, %2419 ], [ %2223, %2221 ], [ %3093, %3089 ], [ %2223, %3087 ], [ %3051, %3047 ], [ %3026, %3020 ], [ %2223, %2238 ]
  %3112 = phi float [ %2993, %2992 ], [ %2224, %2419 ], [ %2224, %2221 ], [ %2993, %3089 ], [ %2993, %3087 ], [ %2993, %3047 ], [ %2993, %3020 ], [ %2224, %2238 ]
  %3113 = phi float [ %2994, %2992 ], [ %2225, %2419 ], [ %2225, %2221 ], [ %2994, %3089 ], [ %2994, %3087 ], [ %2994, %3047 ], [ %2994, %3020 ], [ %2225, %2238 ]
  %3114 = phi float [ %2995, %2992 ], [ %2226, %2419 ], [ %2226, %2221 ], [ %2995, %3089 ], [ %2995, %3087 ], [ %2995, %3047 ], [ %2995, %3020 ], [ %2226, %2238 ]
  %3115 = phi float [ %2996, %2992 ], [ %2227, %2419 ], [ %2227, %2221 ], [ %2996, %3089 ], [ %2996, %3087 ], [ %2996, %3047 ], [ %2996, %3020 ], [ %2227, %2238 ]
  %3116 = phi float [ %2997, %2992 ], [ %2228, %2419 ], [ %2228, %2221 ], [ %2997, %3089 ], [ %2997, %3087 ], [ %2997, %3047 ], [ %2997, %3020 ], [ %2228, %2238 ]
  %3117 = phi float [ %2998, %2992 ], [ %2229, %2419 ], [ %2229, %2221 ], [ %2998, %3089 ], [ %2998, %3087 ], [ %2998, %3047 ], [ %2998, %3020 ], [ %2229, %2238 ]
  %3118 = phi float [ %2230, %2992 ], [ %2230, %2419 ], [ %2230, %2221 ], [ %3104, %3089 ], [ %2230, %3087 ], [ %3082, %3047 ], [ %3039, %3020 ], [ %2230, %2238 ]
  %3119 = phi float [ %2231, %2992 ], [ %2231, %2419 ], [ %2231, %2221 ], [ %3105, %3089 ], [ %2231, %3087 ], [ %3083, %3047 ], [ %3040, %3020 ], [ %2231, %2238 ]
  %3120 = phi float [ %2232, %2992 ], [ %2232, %2419 ], [ %2232, %2221 ], [ %3106, %3089 ], [ %2232, %3087 ], [ %3084, %3047 ], [ %3041, %3020 ], [ %2232, %2238 ]
  %3121 = phi float [ %2999, %2992 ], [ %2233, %2419 ], [ %2233, %2221 ], [ %2999, %3089 ], [ %2999, %3087 ], [ %2999, %3047 ], [ %2999, %3020 ], [ %2233, %2238 ]
  %3122 = phi float [ %2234, %2992 ], [ %2234, %2419 ], [ %2234, %2221 ], [ %3100, %3089 ], [ %2234, %3087 ], [ %3078, %3047 ], [ %3032, %3020 ], [ %2234, %2238 ]
  %3123 = phi float [ %2235, %2992 ], [ %2235, %2419 ], [ %2235, %2221 ], [ %3097, %3089 ], [ %2235, %3087 ], [ %3055, %3047 ], [ %3029, %3020 ], [ %2235, %2238 ]
  %3124 = phi float [ %2236, %2992 ], [ %2236, %2419 ], [ %2236, %2221 ], [ %3108, %3089 ], [ %2236, %3087 ], [ %3086, %3047 ], [ %3044, %3020 ], [ %2236, %2238 ]
  %3125 = phi float [ %3000, %2992 ], [ %2237, %2419 ], [ %2237, %2221 ], [ %3000, %3089 ], [ %3000, %3087 ], [ %3000, %3047 ], [ %3000, %3020 ], [ %2237, %2238 ]
  br i1 %651, label %3997, label %3126

; <label>:3126                                    ; preds = %3109
  %3127 = icmp ult i32 %705, 4
  %3128 = add i32 %56, 72
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = add i32 %56, 76
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = or i32 %3133, %3130
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3997, label %3136

; <label>:3136                                    ; preds = %3126
  %3137 = and i32 %3130, 262144
  %3138 = icmp ne i32 %3137, 0
  %3139 = select i1 %3138, float %63, float 1.000000e+00
  %3140 = select i1 %3138, float %64, float 0.000000e+00
  %3141 = select i1 %3138, float %65, float 0.000000e+00
  %3142 = select i1 %3138, float %66, float 1.000000e+00
  %3143 = select i1 %3138, float %67, float %90
  %3144 = select i1 %3138, float %68, float %91
  %3145 = add i32 %56, 332
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = lshr i32 %3147, 16
  %3149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3148)  ; LegacyF16ToF32(value)
  %3150 = fmul fast float %3149, 0x3F50624DE0000000
  %3151 = add i32 %56, 136
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = lshr i32 %3153, 16
  %3155 = and i32 %3154, 255
  %3156 = lshr i32 %3153, 24
  %3157 = add i32 %56, 340
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 65535
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = lshr i32 %3159, 16
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = add i32 %56, 80
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = lshr i32 %3166, 22
  %3168 = shl nuw nsw i32 %3167, 5
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = shl i32 %3166, 4
  %3171 = and i32 %3170, 32752
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = lshr i32 %3166, 7
  %3174 = and i32 %3173, 32752
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3178 = fmul fast float %3177, 1.000000e+03
  %3179 = fmul fast float %3178, %640
  %3180 = call float @dx.op.unary.f32(i32 22, float %3179)  ; Frc(value)
  %3181 = fadd fast float %3180, %628
  %3182 = fmul fast float %3178, %642
  %3183 = call float @dx.op.unary.f32(i32 22, float %3182)  ; Frc(value)
  %3184 = fadd fast float %3183, %629
  %3185 = fmul fast float %3150, %3178
  %3186 = call float @dx.op.unary.f32(i32 22, float %3185)  ; Frc(value)
  %3187 = fmul fast float %3186, 0x401921FB60000000
  %3188 = fadd fast float %3187, %3169
  %3189 = call float @dx.op.unary.f32(i32 13, float %3188)  ; Sin(value)
  %3190 = call float @dx.op.unary.f32(i32 12, float %3188)  ; Cos(value)
  %3191 = fsub fast float -0.000000e+00, %3189
  %3192 = fadd fast float %3143, -5.000000e-01
  %3193 = fadd fast float %3144, -5.000000e-01
  %3194 = fmul fast float %3161, %3192
  %3195 = fmul fast float %3163, %3193
  %3196 = fadd fast float %3194, 5.000000e-01
  %3197 = fadd fast float %3195, 5.000000e-01
  %3198 = fmul fast float %3172, %3196
  %3199 = fmul fast float %3175, %3197
  %3200 = fmul fast float %3190, %3198
  %3201 = call float @dx.op.tertiary.f32(i32 46, float %3191, float %3199, float %3200)  ; FMad(a,b,c)
  %3202 = fmul fast float %3189, %3198
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3190, float %3199, float %3202)  ; FMad(a,b,c)
  %3204 = fadd fast float %3181, %3201
  %3205 = fadd fast float %3184, %3203
  %3206 = icmp ugt i32 %3155, 1
  %3207 = icmp ugt i32 %3153, 33554431
  %3208 = or i1 %3207, %3206
  br i1 %3208, label %3209, label %3234

; <label>:3209                                    ; preds = %3136
  %3210 = add i32 %56, 276
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = lshr i32 %3212, 16
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = fmul fast float %3177, %3214
  %3216 = call float @dx.op.unary.f32(i32 22, float %3215)  ; Frc(value)
  %3217 = mul nuw nsw i32 %3155, %3156
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3216, %3218
  %3220 = call float @dx.op.unary.f32(i32 27, float %3219)  ; Round_ni(value)
  %3221 = fptoui float %3220 to i32
  %3222 = urem i32 %3221, %3155
  %3223 = udiv i32 %3221, %3156
  %3224 = call float @dx.op.unary.f32(i32 22, float %3204)  ; Frc(value)
  %3225 = call float @dx.op.unary.f32(i32 22, float %3205)  ; Frc(value)
  %3226 = uitofp i32 %3222 to float
  %3227 = uitofp i32 %3223 to float
  %3228 = fadd fast float %3224, %3226
  %3229 = fadd fast float %3225, %3227
  %3230 = uitofp i32 %3155 to float
  %3231 = uitofp i32 %3156 to float
  %3232 = fdiv fast float %3228, %3230
  %3233 = fdiv fast float %3229, %3231
  br label %3234

; <label>:3234                                    ; preds = %3209, %3136
  %3235 = phi float [ %3232, %3209 ], [ %3204, %3136 ]
  %3236 = phi float [ %3233, %3209 ], [ %3205, %3136 ]
  %3237 = and i32 %3130, 256
  %3238 = icmp eq i32 %3237, 0
  br i1 %3238, label %3285, label %3239

; <label>:3239                                    ; preds = %3234
  %3240 = add i32 %56, 452
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = add i32 %3242, 0
  %3244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3244, %dx.types.Handle %105, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = add i32 %56, 148
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = shl i32 %3249, 4
  %3251 = and i32 %3250, 32752
  %3252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3251)  ; LegacyF16ToF32(value)
  %3253 = lshr i32 %3249, 7
  %3254 = and i32 %3253, 32752
  %3255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3254)  ; LegacyF16ToF32(value)
  %3256 = fsub fast float 1.000000e+00, %700
  %3257 = call float @dx.op.binary.f32(i32 35, float %3256, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3258 = bitcast float %700 to i32
  %3259 = sitofp i32 %3258 to float
  %3260 = fadd fast float %3259, 0xC1CFBF8940000000
  %3261 = fmul fast float %3255, %3260
  %3262 = fadd fast float %3261, 0x41CFBF8940000000
  %3263 = fptosi float %3262 to i32
  %3264 = bitcast i32 %3263 to float
  %3265 = bitcast float %3257 to i32
  %3266 = sitofp i32 %3265 to float
  %3267 = fadd fast float %3266, 0xC1CFBF8940000000
  %3268 = fmul fast float %3267, %3255
  %3269 = fadd fast float %3268, 0x41CFBF8940000000
  %3270 = fptosi float %3269 to i32
  %3271 = bitcast i32 %3270 to float
  %3272 = fmul fast float %3264, %3252
  %3273 = fmul fast float %3271, %3252
  %3274 = fsub fast float %3257, %3272
  %3275 = fadd fast float %3273, %3257
  %3276 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3277 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3278 = fsub fast float %3246, %3276
  %3279 = fsub fast float %3277, %3276
  %3280 = bitcast float %3279 to i32
  %3281 = sub nsw i32 2129859010, %3280
  %3282 = bitcast i32 %3281 to float
  %3283 = fmul fast float %3282, %3278
  %3284 = call float @dx.op.unary.f32(i32 7, float %3283)  ; Saturate(value)
  br label %3285

; <label>:3285                                    ; preds = %3239, %3234
  %3286 = phi float [ %3284, %3239 ], [ %700, %3234 ]
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = and i32 %3288, 128
  %3290 = icmp eq i32 %3289, 0
  br i1 %3290, label %3307, label %3291

; <label>:3291                                    ; preds = %3285
  %3292 = add i32 %56, 436
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = add i32 %3294, 0
  %3296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3296, %dx.types.Handle %105, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = and i32 %3300, 524288
  %3302 = icmp ne i32 %3301, 0
  %3303 = fcmp fast ogt float %3298, 0x3FE0101020000000
  %3304 = select i1 %3303, float 1.000000e+00, float 0.000000e+00
  %3305 = select i1 %3302, float %3304, float %3298
  %3306 = fmul fast float %3305, %3286
  br label %3307

; <label>:3307                                    ; preds = %3291, %3285
  %3308 = phi float [ %3306, %3291 ], [ %3286, %3285 ]
  %3309 = fcmp fast ult float %3308, 0x3F70101020000000
  br i1 %3309, label %3997, label %3310

; <label>:3310                                    ; preds = %3307
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = and i32 %3312, 16
  %3314 = icmp eq i32 %3313, 0
  br i1 %3314, label %3513, label %3315

; <label>:3315                                    ; preds = %3310
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = add i32 %56, 388
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = add i32 %3320, 0
  %3322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3322, %dx.types.Handle %104, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = extractvalue %dx.types.ResRet.f32 %3323, 3
  %3328 = and i32 %3317, 255
  %3329 = uitofp i32 %3328 to float
  %3330 = lshr i32 %3317, 8
  %3331 = and i32 %3330, 255
  %3332 = uitofp i32 %3331 to float
  %3333 = fmul fast float %3327, %3329
  %3334 = fadd fast float %3333, %3332
  %3335 = fmul fast float %3334, 0x3F70101000000000
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = and i32 %3337, 512
  %3339 = icmp eq i32 %3338, 0
  br i1 %3339, label %3348, label %3340

; <label>:3340                                    ; preds = %3315
  %3341 = add i32 %56, 472
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = add i32 %3343, 0
  %3345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3345, %dx.types.Handle %105, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  br label %3348

; <label>:3348                                    ; preds = %3340, %3315
  %3349 = phi float [ %3347, %3340 ], [ 1.000000e+00, %3315 ]
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 33554432
  %3353 = icmp eq i32 %3352, 0
  br i1 %3353, label %3460, label %3354

; <label>:3354                                    ; preds = %3348
  %3355 = add i32 %56, 272
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 65535
  %3359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3358)  ; LegacyF16ToF32(value)
  %3360 = lshr i32 %3357, 16
  %3361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3360)  ; LegacyF16ToF32(value)
  %3362 = add i32 %56, 276
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = and i32 %3364, 65535
  %3366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3365)  ; LegacyF16ToF32(value)
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = lshr i32 %3368, 24
  %3370 = uitofp i32 %3369 to float
  %3371 = fmul fast float %3370, 0x3F70101020000000
  %3372 = and i32 %3368, 255
  %3373 = uitofp i32 %3372 to float
  %3374 = fmul fast float %3373, 0x3F70101020000000
  %3375 = lshr i32 %3368, 8
  %3376 = and i32 %3375, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 0x3F70101020000000
  %3379 = lshr i32 %3368, 16
  %3380 = and i32 %3379, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = fmul fast float %3381, 0x3F70101020000000
  %3383 = add i32 %56, 268
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = lshr i32 %3385, 24
  %3387 = uitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 0x3F70101020000000
  %3389 = and i32 %3385, 255
  %3390 = uitofp i32 %3389 to float
  %3391 = fmul fast float %3390, 0x3F70101020000000
  %3392 = lshr i32 %3385, 8
  %3393 = and i32 %3392, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = fmul fast float %3394, 0x3F70101020000000
  %3396 = lshr i32 %3385, 16
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = fmul fast float %3398, 0x3F70101020000000
  %3400 = bitcast float %3324 to i32
  %3401 = ashr i32 %3400, 1
  %3402 = sub nsw i32 1597463174, %3401
  %3403 = bitcast i32 %3402 to float
  %3404 = fmul fast float %3324, 5.000000e-01
  %3405 = fmul fast float %3403, %3403
  %3406 = fmul fast float %3405, %3404
  %3407 = fsub fast float 1.500000e+00, %3406
  %3408 = fmul fast float %3403, %3324
  %3409 = fmul fast float %3408, %3407
  %3410 = bitcast float %3325 to i32
  %3411 = ashr i32 %3410, 1
  %3412 = sub nsw i32 1597463174, %3411
  %3413 = bitcast i32 %3412 to float
  %3414 = fmul fast float %3325, 5.000000e-01
  %3415 = fmul fast float %3413, %3413
  %3416 = fmul fast float %3415, %3414
  %3417 = fsub fast float 1.500000e+00, %3416
  %3418 = fmul fast float %3413, %3325
  %3419 = fmul fast float %3418, %3417
  %3420 = bitcast float %3326 to i32
  %3421 = ashr i32 %3420, 1
  %3422 = sub nsw i32 1597463174, %3421
  %3423 = bitcast i32 %3422 to float
  %3424 = fmul fast float %3326, 5.000000e-01
  %3425 = fmul fast float %3423, %3423
  %3426 = fmul fast float %3425, %3424
  %3427 = fsub fast float 1.500000e+00, %3426
  %3428 = fmul fast float %3423, %3326
  %3429 = fmul fast float %3428, %3427
  %3430 = fsub fast float %3409, %3391
  %3431 = fsub fast float %3419, %3395
  %3432 = fsub fast float %3429, %3399
  %3433 = fmul fast float %3430, %3359
  %3434 = fmul fast float %3431, %3361
  %3435 = fmul fast float %3432, %3366
  %3436 = fadd fast float %3433, %3374
  %3437 = fadd fast float %3434, %3378
  %3438 = fadd fast float %3435, %3382
  %3439 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3440 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3441 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3442 = fmul fast float %3439, %3439
  %3443 = fmul fast float %3440, %3440
  %3444 = fmul fast float %3441, %3441
  %3445 = fsub fast float %3442, %3324
  %3446 = fsub fast float %3443, %3325
  %3447 = fsub fast float %3444, %3326
  %3448 = fmul fast float %3445, %3349
  %3449 = fmul fast float %3446, %3349
  %3450 = fmul fast float %3447, %3349
  %3451 = fadd fast float %3448, %3324
  %3452 = fadd fast float %3449, %3325
  %3453 = fadd fast float %3450, %3326
  %3454 = fadd fast float %3371, %3335
  %3455 = fsub fast float %3454, %3388
  %3456 = call float @dx.op.unary.f32(i32 7, float %3455)  ; Saturate(value)
  %3457 = fsub fast float %3456, %3335
  %3458 = fmul fast float %3457, %3349
  %3459 = fadd fast float %3458, %3335
  br label %3513

; <label>:3460                                    ; preds = %3348
  %3461 = and i32 %3351, 134217728
  %3462 = icmp eq i32 %3461, 0
  br i1 %3462, label %3497, label %3463

; <label>:3463                                    ; preds = %3460
  %3464 = call float @dx.op.unary.f32(i32 24, float %616)  ; Sqrt(value)
  %3465 = call float @dx.op.unary.f32(i32 24, float %617)  ; Sqrt(value)
  %3466 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3467 = fadd fast float %3464, -5.000000e-01
  %3468 = fadd fast float %3465, -5.000000e-01
  %3469 = fadd fast float %3466, -5.000000e-01
  %3470 = fmul fast float %3467, %3349
  %3471 = fmul fast float %3468, %3349
  %3472 = fmul fast float %3469, %3349
  %3473 = fadd fast float %3470, 5.000000e-01
  %3474 = fadd fast float %3471, 5.000000e-01
  %3475 = fadd fast float %3472, 5.000000e-01
  %3476 = call float @dx.op.unary.f32(i32 24, float %3324)  ; Sqrt(value)
  %3477 = call float @dx.op.unary.f32(i32 24, float %3325)  ; Sqrt(value)
  %3478 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3479 = fmul fast float %3473, 2.000000e+00
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %3480, %3476
  %3482 = fadd fast float %3481, %3479
  %3483 = fmul fast float %3482, %3476
  %3484 = fmul fast float %3474, 2.000000e+00
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3477
  %3487 = fadd fast float %3486, %3484
  %3488 = fmul fast float %3487, %3477
  %3489 = fmul fast float %3475, 2.000000e+00
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, %3478
  %3492 = fadd fast float %3491, %3489
  %3493 = fmul fast float %3492, %3478
  %3494 = fmul fast float %3483, %3483
  %3495 = fmul fast float %3488, %3488
  %3496 = fmul fast float %3493, %3493
  br label %3513

; <label>:3497                                    ; preds = %3460
  %3498 = fmul fast float %616, %616
  %3499 = fmul fast float %617, %617
  %3500 = fmul fast float %618, %618
  %3501 = fadd fast float %3498, -1.000000e+00
  %3502 = fadd fast float %3499, -1.000000e+00
  %3503 = fadd fast float %3500, -1.000000e+00
  %3504 = fmul fast float %3349, %3501
  %3505 = fmul fast float %3349, %3502
  %3506 = fmul fast float %3349, %3503
  %3507 = fadd fast float %3504, 1.000000e+00
  %3508 = fadd fast float %3505, 1.000000e+00
  %3509 = fadd fast float %3506, 1.000000e+00
  %3510 = fmul fast float %3507, %3324
  %3511 = fmul fast float %3508, %3325
  %3512 = fmul fast float %3509, %3326
  br label %3513

; <label>:3513                                    ; preds = %3497, %3463, %3354, %3310
  %3514 = phi float [ %3459, %3354 ], [ %3335, %3463 ], [ %3335, %3497 ], [ 0x3FA23C0BE0000000, %3310 ]
  %3515 = phi float [ %3451, %3354 ], [ %3494, %3463 ], [ %3510, %3497 ], [ 1.000000e+00, %3310 ]
  %3516 = phi float [ %3452, %3354 ], [ %3495, %3463 ], [ %3511, %3497 ], [ 1.000000e+00, %3310 ]
  %3517 = phi float [ %3453, %3354 ], [ %3496, %3463 ], [ %3512, %3497 ], [ 1.000000e+00, %3310 ]
  %3518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.i32 %3518, 1
  %3520 = and i32 %3519, 1
  %3521 = icmp ne i32 %3520, 0
  %3522 = add i32 %56, 356
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %3524, 32
  %3526 = icmp ne i32 %3525, 0
  %3527 = and i1 %3521, %3526
  %3528 = select i1 %3527, float 1.000000e+00, float %3515
  %3529 = select i1 %3527, float 0x3FD3333340000000, float %3516
  %3530 = select i1 %3527, float 0x3FD3333340000000, float %3517
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 32
  %3534 = icmp eq i32 %3533, 0
  br i1 %3534, label %3607, label %3535

; <label>:3535                                    ; preds = %3513
  %3536 = add i32 %56, 140
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = add i32 %56, 404
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = add i32 %3541, 0
  %3543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3543, %dx.types.Handle %104, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = extractvalue %dx.types.ResRet.f32 %3544, 3
  %3549 = and i32 %3538, 255
  %3550 = uitofp i32 %3549 to float
  %3551 = lshr i32 %3538, 8
  %3552 = and i32 %3551, 255
  %3553 = uitofp i32 %3552 to float
  %3554 = lshr i32 %3538, 16
  %3555 = and i32 %3554, 255
  %3556 = uitofp i32 %3555 to float
  %3557 = fmul fast float %3556, 0x3F70101000000000
  %3558 = fmul fast float %3545, %3550
  %3559 = fadd fast float %3558, %3553
  %3560 = fmul fast float %3559, 0x3F70101000000000
  %3561 = fadd fast float %3546, -5.000000e-01
  %3562 = fadd fast float %3548, -5.000000e-01
  %3563 = fmul fast float %3561, %3557
  %3564 = fmul fast float %3562, %3557
  %3565 = fadd fast float %3563, 5.000000e-01
  %3566 = fadd fast float %3564, 5.000000e-01
  %3567 = fmul fast float %3565, 2.000000e+00
  %3568 = fadd fast float %3567, -1.000000e+00
  %3569 = fmul fast float %3566, 2.000000e+00
  %3570 = fadd fast float %3569, -1.000000e+00
  %3571 = fadd fast float %3568, %3570
  %3572 = fmul fast float %3571, 5.000000e-01
  %3573 = fsub fast float %3568, %3570
  %3574 = fmul fast float %3573, 5.000000e-01
  %3575 = call float @dx.op.unary.f32(i32 6, float %3572)  ; FAbs(value)
  %3576 = fsub fast float 1.000000e+00, %3575
  %3577 = call float @dx.op.unary.f32(i32 6, float %3574)  ; FAbs(value)
  %3578 = fsub fast float %3576, %3577
  %3579 = call float @dx.op.dot3.f32(i32 55, float %3572, float %3574, float %3578, float %3572, float %3574, float %3578)  ; Dot3(ax,ay,az,bx,by,bz)
  %3580 = call float @dx.op.unary.f32(i32 25, float %3579)  ; Rsqrt(value)
  %3581 = fmul fast float %3572, %3580
  %3582 = fmul fast float %3574, %3580
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 67108864
  %3586 = icmp eq i32 %3585, 0
  br i1 %3586, label %3603, label %3587

; <label>:3587                                    ; preds = %3535
  %3588 = add i32 %56, 328
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = and i32 %3590, 65535
  %3592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3591)  ; LegacyF16ToF32(value)
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %3594, 65535
  %3596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3595)  ; LegacyF16ToF32(value)
  %3597 = lshr i32 %3590, 16
  %3598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3597)  ; LegacyF16ToF32(value)
  %3599 = fsub fast float %3560, %3598
  %3600 = fmul fast float %3599, %3592
  %3601 = fadd fast float %3600, %3596
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  br label %3603

; <label>:3603                                    ; preds = %3587, %3535
  %3604 = phi float [ %3602, %3587 ], [ %3560, %3535 ]
  %3605 = call float @dx.op.dot2.f32(i32 54, float %3581, float %3582, float %3139, float %3140)  ; Dot2(ax,ay,bx,by)
  %3606 = call float @dx.op.dot2.f32(i32 54, float %3581, float %3582, float %3141, float %3142)  ; Dot2(ax,ay,bx,by)
  br label %3607

; <label>:3607                                    ; preds = %3603, %3513
  %3608 = phi float [ %3604, %3603 ], [ 0x3FD6666660000000, %3513 ]
  %3609 = phi float [ %3605, %3603 ], [ 0.000000e+00, %3513 ]
  %3610 = phi float [ %3606, %3603 ], [ 0.000000e+00, %3513 ]
  %3611 = phi float [ %3547, %3603 ], [ 1.000000e+00, %3513 ]
  %3612 = add i32 %56, 208
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = lshr i32 %3614, 22
  %3616 = shl nuw nsw i32 %3615, 5
  %3617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3616)  ; LegacyF16ToF32(value)
  %3618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.i32 %3618, 0
  %3620 = and i32 %3619, 64
  %3621 = icmp eq i32 %3620, 0
  br i1 %3621, label %3655, label %3622

; <label>:3622                                    ; preds = %3607
  %3623 = add i32 %56, 420
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = add i32 %3625, 0
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = and i32 %3629, 131072
  %3631 = icmp eq i32 %3630, 0
  %3632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3627, %dx.types.Handle %104, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = fmul fast float %599, %3633
  %3637 = fmul fast float %600, %3634
  %3638 = fmul fast float %601, %3635
  br i1 %3631, label %3645, label %3639

; <label>:3639                                    ; preds = %3622
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = fmul fast float %3641, %3636
  %3643 = fmul fast float %3641, %3637
  %3644 = fmul fast float %3641, %3638
  br label %3645

; <label>:3645                                    ; preds = %3639, %3622
  %3646 = phi float [ %3642, %3639 ], [ %3636, %3622 ]
  %3647 = phi float [ %3643, %3639 ], [ %3637, %3622 ]
  %3648 = phi float [ %3644, %3639 ], [ %3638, %3622 ]
  %3649 = fmul fast float %3646, %3617
  %3650 = select i1 %267, float %3649, float %3646
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3650, float %3647, float %3648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = select i1 %267, float 0.000000e+00, float %3646
  %3653 = select i1 %267, float %3651, float %3647
  %3654 = select i1 %267, float 0.000000e+00, float %3648
  br label %3655

; <label>:3655                                    ; preds = %3645, %3607
  %3656 = phi float [ %3652, %3645 ], [ 0.000000e+00, %3607 ]
  %3657 = phi float [ %3653, %3645 ], [ 0.000000e+00, %3607 ]
  %3658 = phi float [ %3654, %3645 ], [ 0.000000e+00, %3607 ]
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 1024
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3693, label %3663

; <label>:3663                                    ; preds = %3655
  %3664 = add i32 %56, 200
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = and i32 %3666, 255
  %3668 = uitofp i32 %3667 to float
  %3669 = fmul fast float %3668, 0x3F70101020000000
  %3670 = lshr i32 %3666, 8
  %3671 = and i32 %3670, 255
  %3672 = uitofp i32 %3671 to float
  %3673 = fmul fast float %3672, 0x3F70101020000000
  %3674 = lshr i32 %3666, 16
  %3675 = and i32 %3674, 255
  %3676 = uitofp i32 %3675 to float
  %3677 = fmul fast float %3676, 0x3F70101020000000
  %3678 = fmul fast float %3669, %3669
  %3679 = fmul fast float %3673, %3673
  %3680 = fmul fast float %3677, %3677
  %3681 = add i32 %56, 488
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3681, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = add i32 %3683, 0
  %3685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3685, %dx.types.Handle %105, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3687 = extractvalue %dx.types.ResRet.f32 %3686, 0
  %3688 = extractvalue %dx.types.ResRet.f32 %3686, 1
  %3689 = extractvalue %dx.types.ResRet.f32 %3686, 2
  %3690 = fmul fast float %3678, %3687
  %3691 = fmul fast float %3679, %3688
  %3692 = fmul fast float %3680, %3689
  br label %3693

; <label>:3693                                    ; preds = %3663, %3655
  %3694 = phi float [ %3690, %3663 ], [ 0.000000e+00, %3655 ]
  %3695 = phi float [ %3691, %3663 ], [ 0.000000e+00, %3655 ]
  %3696 = phi float [ %3692, %3663 ], [ 0.000000e+00, %3655 ]
  %3697 = fcmp fast ogt float %3694, 0.000000e+00
  %3698 = fcmp fast ogt float %3695, 0.000000e+00
  %3699 = fcmp fast ogt float %3696, 0.000000e+00
  %3700 = call float @dx.op.unary.f32(i32 23, float %3694)  ; Log(value)
  %3701 = call float @dx.op.unary.f32(i32 23, float %3695)  ; Log(value)
  %3702 = call float @dx.op.unary.f32(i32 23, float %3696)  ; Log(value)
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = lshr i32 %3704, 7
  %3706 = and i32 %3705, 32752
  %3707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3706)  ; LegacyF16ToF32(value)
  %3708 = fmul fast float %3700, 0xBFE62E4300000000
  %3709 = fmul fast float %3708, %3707
  %3710 = fmul fast float %3701, 0xBFE62E4300000000
  %3711 = fmul fast float %3710, %3707
  %3712 = fmul fast float %3702, 0xBFE62E4300000000
  %3713 = fmul fast float %3712, %3707
  %3714 = select i1 %3697, float %3709, float 1.270000e+02
  %3715 = select i1 %3698, float %3711, float 1.270000e+02
  %3716 = select i1 %3699, float %3713, float 1.270000e+02
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = and i32 %3718, 10240
  %3720 = icmp eq i32 %3719, 0
  br i1 %3720, label %3741, label %3721

; <label>:3721                                    ; preds = %3693
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 2048
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3741, label %3726

; <label>:3726                                    ; preds = %3721
  %3727 = add i32 %56, 504
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = add i32 %3729, 0
  %3731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3731, %dx.types.Handle %105, float %3235, float %3236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 3
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = shl i32 %3735, 4
  %3737 = and i32 %3736, 32752
  %3738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3737)  ; LegacyF16ToF32(value)
  %3739 = fmul fast float %3738, %3733
  %3740 = call float @dx.op.binary.f32(i32 35, float %3739, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3741

; <label>:3741                                    ; preds = %3726, %3721, %3693
  %3742 = phi float [ %3740, %3726 ], [ 0x3F70101020000000, %3721 ], [ 0x3F70101020000000, %3693 ]
  %3743 = add i32 %56, 144
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = lshr i32 %3745, 8
  %3749 = and i32 %3748, 255
  %3750 = uitofp i32 %3749 to float
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3528, float %3529, float %3530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = fmul fast float %3750, %3751
  %3753 = fadd fast float %3752, %3747
  %3754 = fmul fast float %3753, 0x3F70101020000000
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  br i1 %3127, label %3756, label %3791

; <label>:3756                                    ; preds = %3741
  %3757 = fmul fast float %3742, 2.000000e+00
  %3758 = fcmp fast olt float %3714, 1.270000e+02
  %3759 = fcmp fast olt float %3715, 1.270000e+02
  %3760 = fcmp fast olt float %3716, 1.270000e+02
  %3761 = fmul fast float %3714, 0xBFF7154760000000
  %3762 = fmul fast float %3761, %3757
  %3763 = fmul fast float %3715, 0xBFF7154760000000
  %3764 = fmul fast float %3763, %3757
  %3765 = fmul fast float %3716, 0xBFF7154760000000
  %3766 = fmul fast float %3765, %3757
  %3767 = call float @dx.op.unary.f32(i32 21, float %3762)  ; Exp(value)
  %3768 = call float @dx.op.unary.f32(i32 21, float %3764)  ; Exp(value)
  %3769 = call float @dx.op.unary.f32(i32 21, float %3766)  ; Exp(value)
  %3770 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3771 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3772 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3773 = fadd fast float %3770, -1.000000e+00
  %3774 = select i1 %3758, float %3773, float -1.000000e+00
  %3775 = fadd fast float %3771, -1.000000e+00
  %3776 = select i1 %3759, float %3775, float -1.000000e+00
  %3777 = fadd fast float %3772, -1.000000e+00
  %3778 = select i1 %3760, float %3777, float -1.000000e+00
  %3779 = fmul fast float %3774, %3308
  %3780 = fmul fast float %3776, %3308
  %3781 = fmul fast float %3778, %3308
  %3782 = fadd fast float %3779, 1.000000e+00
  %3783 = fadd fast float %3780, 1.000000e+00
  %3784 = fadd fast float %3781, 1.000000e+00
  %3785 = fmul fast float %3782, %3112
  %3786 = fmul fast float %3783, %3113
  %3787 = fmul fast float %3784, %3114
  %3788 = fmul fast float %3782, %3115
  %3789 = fmul fast float %3783, %3116
  %3790 = fmul fast float %3784, %3117
  br label %3791

; <label>:3791                                    ; preds = %3756, %3741
  %3792 = phi float [ %3785, %3756 ], [ %3112, %3741 ]
  %3793 = phi float [ %3786, %3756 ], [ %3113, %3741 ]
  %3794 = phi float [ %3787, %3756 ], [ %3114, %3741 ]
  %3795 = phi float [ %3788, %3756 ], [ %3115, %3741 ]
  %3796 = phi float [ %3789, %3756 ], [ %3116, %3741 ]
  %3797 = phi float [ %3790, %3756 ], [ %3117, %3741 ]
  %3798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.i32 %3798, 0
  %3800 = and i32 %3799, 3
  %3801 = icmp eq i32 %3800, 3
  br i1 %3801, label %3880, label %3802

; <label>:3802                                    ; preds = %3791
  %3803 = and i32 %3799, 16
  %3804 = icmp ne i32 %3803, 0
  %3805 = select i1 %3804, float %3308, float 0.000000e+00
  %3806 = icmp eq i32 %3800, 0
  br i1 %3806, label %3807, label %3835

; <label>:3807                                    ; preds = %3802
  %3808 = and i32 %3799, 64
  %3809 = icmp ne i32 %3808, 0
  %3810 = select i1 %3809, float %3308, float 0.000000e+00
  %3811 = fsub fast float %3528, %3792
  %3812 = fsub fast float %3529, %3793
  %3813 = fsub fast float %3530, %3794
  %3814 = fmul fast float %3805, %3811
  %3815 = fmul fast float %3805, %3812
  %3816 = fmul fast float %3805, %3813
  %3817 = fadd fast float %3814, %3792
  %3818 = fadd fast float %3815, %3793
  %3819 = fadd fast float %3816, %3794
  %3820 = fsub fast float %3514, %3121
  %3821 = fmul fast float %3805, %3820
  %3822 = fadd fast float %3821, %3121
  %3823 = fsub fast float %3656, %3795
  %3824 = fsub fast float %3657, %3796
  %3825 = fsub fast float %3658, %3797
  %3826 = fmul fast float %3810, %3823
  %3827 = fmul fast float %3810, %3824
  %3828 = fmul fast float %3810, %3825
  %3829 = fadd fast float %3826, %3795
  %3830 = fadd fast float %3827, %3796
  %3831 = fadd fast float %3828, %3797
  %3832 = fsub fast float %3755, %3125
  %3833 = fmul fast float %3805, %3832
  %3834 = fadd fast float %3833, %3125
  br label %3880

; <label>:3835                                    ; preds = %3802
  %3836 = icmp eq i32 %3800, 1
  br i1 %3836, label %3837, label %3850

; <label>:3837                                    ; preds = %3835
  %3838 = fadd fast float %3528, -1.000000e+00
  %3839 = fadd fast float %3529, -1.000000e+00
  %3840 = fadd fast float %3530, -1.000000e+00
  %3841 = fmul fast float %3805, %3838
  %3842 = fmul fast float %3805, %3839
  %3843 = fmul fast float %3805, %3840
  %3844 = fadd fast float %3841, 1.000000e+00
  %3845 = fadd fast float %3842, 1.000000e+00
  %3846 = fadd fast float %3843, 1.000000e+00
  %3847 = fmul fast float %3844, %3792
  %3848 = fmul fast float %3845, %3793
  %3849 = fmul fast float %3846, %3794
  br label %3880

; <label>:3850                                    ; preds = %3835
  %3851 = icmp eq i32 %3800, 2
  br i1 %3851, label %3852, label %3880

; <label>:3852                                    ; preds = %3850
  %3853 = call float @dx.op.unary.f32(i32 24, float %3528)  ; Sqrt(value)
  %3854 = call float @dx.op.unary.f32(i32 24, float %3529)  ; Sqrt(value)
  %3855 = call float @dx.op.unary.f32(i32 24, float %3530)  ; Sqrt(value)
  %3856 = fadd fast float %3853, -5.000000e-01
  %3857 = fadd fast float %3854, -5.000000e-01
  %3858 = fadd fast float %3855, -5.000000e-01
  %3859 = fmul fast float %3856, %3805
  %3860 = fmul fast float %3857, %3805
  %3861 = fmul fast float %3858, %3805
  %3862 = fadd fast float %3859, 5.000000e-01
  %3863 = fadd fast float %3860, 5.000000e-01
  %3864 = fadd fast float %3861, 5.000000e-01
  %3865 = fmul fast float %3862, 2.000000e+00
  %3866 = fsub fast float 1.000000e+00, %3865
  %3867 = fmul fast float %3866, %3792
  %3868 = fadd fast float %3867, %3865
  %3869 = fmul fast float %3868, %3792
  %3870 = fmul fast float %3863, 2.000000e+00
  %3871 = fsub fast float 1.000000e+00, %3870
  %3872 = fmul fast float %3871, %3793
  %3873 = fadd fast float %3872, %3870
  %3874 = fmul fast float %3873, %3793
  %3875 = fmul fast float %3864, 2.000000e+00
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = fmul fast float %3876, %3794
  %3878 = fadd fast float %3877, %3875
  %3879 = fmul fast float %3878, %3794
  br label %3880

; <label>:3880                                    ; preds = %3852, %3850, %3837, %3807, %3791
  %3881 = phi float [ %3792, %3791 ], [ %3869, %3852 ], [ %3792, %3850 ], [ %3847, %3837 ], [ %3817, %3807 ]
  %3882 = phi float [ %3793, %3791 ], [ %3874, %3852 ], [ %3793, %3850 ], [ %3848, %3837 ], [ %3818, %3807 ]
  %3883 = phi float [ %3794, %3791 ], [ %3879, %3852 ], [ %3794, %3850 ], [ %3849, %3837 ], [ %3819, %3807 ]
  %3884 = phi float [ %3795, %3791 ], [ %3795, %3852 ], [ %3795, %3850 ], [ %3795, %3837 ], [ %3829, %3807 ]
  %3885 = phi float [ %3796, %3791 ], [ %3796, %3852 ], [ %3796, %3850 ], [ %3796, %3837 ], [ %3830, %3807 ]
  %3886 = phi float [ %3797, %3791 ], [ %3797, %3852 ], [ %3797, %3850 ], [ %3797, %3837 ], [ %3831, %3807 ]
  %3887 = phi float [ %3121, %3791 ], [ %3121, %3852 ], [ %3121, %3850 ], [ %3121, %3837 ], [ %3822, %3807 ]
  %3888 = phi float [ %3125, %3791 ], [ %3125, %3852 ], [ %3125, %3850 ], [ %3125, %3837 ], [ %3834, %3807 ]
  %3889 = and i32 %3799, 12
  %3890 = icmp eq i32 %3889, 12
  br i1 %3890, label %3997, label %3891

; <label>:3891                                    ; preds = %3880
  %3892 = and i32 %3799, 2097184
  %3893 = icmp eq i32 %3892, 2097184
  %3894 = select i1 %3893, float %3308, float 0.000000e+00
  %3895 = and i32 %3799, 4194336
  %3896 = icmp eq i32 %3895, 4194336
  %3897 = select i1 %3896, float %3308, float 0.000000e+00
  %3898 = and i32 %3799, 8388640
  %3899 = icmp eq i32 %3898, 8388640
  %3900 = select i1 %3899, float %3308, float 0.000000e+00
  %3901 = and i32 %3799, 1024
  %3902 = icmp ne i32 %3901, 0
  %3903 = select i1 %3902, float %3308, float 0.000000e+00
  %3904 = and i32 %3799, 2048
  %3905 = icmp ne i32 %3904, 0
  %3906 = select i1 %3905, float %3308, float 0.000000e+00
  %3907 = icmp eq i32 %3889, 0
  br i1 %3907, label %3908, label %3933

; <label>:3908                                    ; preds = %3891
  %3909 = fsub fast float %3609, %3110
  %3910 = fsub fast float %3610, %3111
  %3911 = fmul fast float %3894, %3909
  %3912 = fmul fast float %3894, %3910
  %3913 = fadd fast float %3911, %3110
  %3914 = fadd fast float %3912, %3111
  %3915 = fsub fast float %3611, %3123
  %3916 = fmul fast float %3897, %3915
  %3917 = fadd fast float %3916, %3123
  %3918 = fsub fast float %3608, %3122
  %3919 = fmul fast float %3900, %3918
  %3920 = fadd fast float %3919, %3122
  %3921 = fsub fast float %3714, %3118
  %3922 = fsub fast float %3715, %3119
  %3923 = fsub fast float %3716, %3120
  %3924 = fmul fast float %3903, %3921
  %3925 = fmul fast float %3903, %3922
  %3926 = fmul fast float %3903, %3923
  %3927 = fadd fast float %3924, %3118
  %3928 = fadd fast float %3925, %3119
  %3929 = fadd fast float %3926, %3120
  %3930 = fsub fast float %3742, %3124
  %3931 = fmul fast float %3906, %3930
  %3932 = fadd fast float %3931, %3124
  br label %3997

; <label>:3933                                    ; preds = %3891
  %3934 = icmp eq i32 %3889, 4
  br i1 %3934, label %3935, label %3975

; <label>:3935                                    ; preds = %3933
  %3936 = fmul fast float %3894, %3609
  %3937 = fmul fast float %3894, %3610
  %3938 = fadd fast float %3936, %3110
  %3939 = fadd fast float %3937, %3111
  %3940 = call float @dx.op.binary.f32(i32 36, float %3123, float %3611)  ; FMin(a,b)
  %3941 = fsub fast float %3940, %3123
  %3942 = fmul fast float %3941, %3897
  %3943 = fadd fast float %3942, %3123
  %3944 = fadd fast float %3608, %3122
  %3945 = fmul fast float %3944, 0x3FF337FAE0000000
  %3946 = fmul fast float %3122, %3122
  %3947 = fmul fast float %3608, %3608
  %3948 = fadd fast float %3947, %3946
  %3949 = fmul fast float %3948, 0x3FE5152B00000000
  %3950 = fmul fast float %3122, 0xBFCC1F85E0000000
  %3951 = fmul fast float %3950, %3608
  %3952 = fadd fast float %3951, 0xBFE1363700000000
  %3953 = fadd fast float %3952, %3945
  %3954 = fsub fast float %3953, %3949
  %3955 = fmul fast float %3944, 0x3FBA6F0D00000000
  %3956 = fmul fast float %3948, 0x3FD0432880000000
  %3957 = fmul fast float %3122, 0xBFEF110800000000
  %3958 = fmul fast float %3957, %3608
  %3959 = fadd fast float %3958, 1.000000e+00
  %3960 = fsub fast float %3959, %3955
  %3961 = fadd fast float %3960, %3956
  %3962 = fdiv fast float %3954, %3961
  %3963 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %3964 = fsub fast float %3963, %3122
  %3965 = fmul fast float %3964, %3900
  %3966 = fadd fast float %3965, %3122
  %3967 = fmul fast float %3903, %3714
  %3968 = fmul fast float %3903, %3715
  %3969 = fmul fast float %3903, %3716
  %3970 = fadd fast float %3967, %3118
  %3971 = fadd fast float %3968, %3119
  %3972 = fadd fast float %3969, %3120
  %3973 = fmul fast float %3906, %3742
  %3974 = fadd fast float %3973, %3124
  br label %3997

; <label>:3975                                    ; preds = %3933
  %3976 = icmp eq i32 %3889, 8
  br i1 %3976, label %3977, label %3997

; <label>:3977                                    ; preds = %3975
  %3978 = fmul fast float %3894, %3609
  %3979 = fmul fast float %3894, %3610
  %3980 = fadd fast float %3978, %3110
  %3981 = fadd fast float %3979, %3111
  %3982 = call float @dx.op.binary.f32(i32 36, float %3123, float %3611)  ; FMin(a,b)
  %3983 = fsub fast float %3982, %3123
  %3984 = fmul fast float %3983, %3897
  %3985 = fadd fast float %3984, %3123
  %3986 = fsub fast float %3608, %3122
  %3987 = fmul fast float %3900, %3986
  %3988 = fadd fast float %3987, %3122
  %3989 = fmul fast float %3903, %3714
  %3990 = fmul fast float %3903, %3715
  %3991 = fmul fast float %3903, %3716
  %3992 = fadd fast float %3989, %3118
  %3993 = fadd fast float %3990, %3119
  %3994 = fadd fast float %3991, %3120
  %3995 = fmul fast float %3906, %3742
  %3996 = fadd fast float %3995, %3124
  br label %3997

; <label>:3997                                    ; preds = %3977, %3975, %3935, %3908, %3880, %3307, %3126, %3109
  %3998 = phi float [ %3110, %3880 ], [ %3110, %3307 ], [ %3110, %3109 ], [ %3110, %3126 ], [ %3913, %3908 ], [ %3938, %3935 ], [ %3110, %3975 ], [ %3980, %3977 ]
  %3999 = phi float [ %3111, %3880 ], [ %3111, %3307 ], [ %3111, %3109 ], [ %3111, %3126 ], [ %3914, %3908 ], [ %3939, %3935 ], [ %3111, %3975 ], [ %3981, %3977 ]
  %4000 = phi float [ %3881, %3880 ], [ %3112, %3307 ], [ %3112, %3109 ], [ %3112, %3126 ], [ %3881, %3908 ], [ %3881, %3935 ], [ %3881, %3975 ], [ %3881, %3977 ]
  %4001 = phi float [ %3882, %3880 ], [ %3113, %3307 ], [ %3113, %3109 ], [ %3113, %3126 ], [ %3882, %3908 ], [ %3882, %3935 ], [ %3882, %3975 ], [ %3882, %3977 ]
  %4002 = phi float [ %3883, %3880 ], [ %3114, %3307 ], [ %3114, %3109 ], [ %3114, %3126 ], [ %3883, %3908 ], [ %3883, %3935 ], [ %3883, %3975 ], [ %3883, %3977 ]
  %4003 = phi float [ %3884, %3880 ], [ %3115, %3307 ], [ %3115, %3109 ], [ %3115, %3126 ], [ %3884, %3908 ], [ %3884, %3935 ], [ %3884, %3975 ], [ %3884, %3977 ]
  %4004 = phi float [ %3885, %3880 ], [ %3116, %3307 ], [ %3116, %3109 ], [ %3116, %3126 ], [ %3885, %3908 ], [ %3885, %3935 ], [ %3885, %3975 ], [ %3885, %3977 ]
  %4005 = phi float [ %3886, %3880 ], [ %3117, %3307 ], [ %3117, %3109 ], [ %3117, %3126 ], [ %3886, %3908 ], [ %3886, %3935 ], [ %3886, %3975 ], [ %3886, %3977 ]
  %4006 = phi float [ %3118, %3880 ], [ %3118, %3307 ], [ %3118, %3109 ], [ %3118, %3126 ], [ %3927, %3908 ], [ %3970, %3935 ], [ %3118, %3975 ], [ %3992, %3977 ]
  %4007 = phi float [ %3119, %3880 ], [ %3119, %3307 ], [ %3119, %3109 ], [ %3119, %3126 ], [ %3928, %3908 ], [ %3971, %3935 ], [ %3119, %3975 ], [ %3993, %3977 ]
  %4008 = phi float [ %3120, %3880 ], [ %3120, %3307 ], [ %3120, %3109 ], [ %3120, %3126 ], [ %3929, %3908 ], [ %3972, %3935 ], [ %3120, %3975 ], [ %3994, %3977 ]
  %4009 = phi float [ %3887, %3880 ], [ %3121, %3307 ], [ %3121, %3109 ], [ %3121, %3126 ], [ %3887, %3908 ], [ %3887, %3935 ], [ %3887, %3975 ], [ %3887, %3977 ]
  %4010 = phi float [ %3122, %3880 ], [ %3122, %3307 ], [ %3122, %3109 ], [ %3122, %3126 ], [ %3920, %3908 ], [ %3966, %3935 ], [ %3122, %3975 ], [ %3988, %3977 ]
  %4011 = phi float [ %3123, %3880 ], [ %3123, %3307 ], [ %3123, %3109 ], [ %3123, %3126 ], [ %3917, %3908 ], [ %3943, %3935 ], [ %3123, %3975 ], [ %3985, %3977 ]
  %4012 = phi float [ %3124, %3880 ], [ %3124, %3307 ], [ %3124, %3109 ], [ %3124, %3126 ], [ %3932, %3908 ], [ %3974, %3935 ], [ %3124, %3975 ], [ %3996, %3977 ]
  %4013 = phi float [ %3888, %3880 ], [ %3125, %3307 ], [ %3125, %3109 ], [ %3125, %3126 ], [ %3888, %3908 ], [ %3888, %3935 ], [ %3888, %3975 ], [ %3888, %3977 ]
  %4014 = add i32 %56, 360
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.i32 %4015, 1
  %4018 = bitcast i32 %4016 to float
  %4019 = bitcast i32 %4017 to float
  %4020 = fcmp fast oge float %4018, 0.000000e+00
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = select i1 %4020, float %4018, float %4022
  %4024 = fadd fast float %4023, %209
  %4025 = fmul fast float %4019, %210
  %4026 = add i32 %56, 456
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = add i32 %4028, 0
  %4030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4030, %dx.types.Handle %105, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = fmul fast float %4025, %4032
  %4034 = fadd fast float %4024, %4033
  %4035 = and i32 %201, 65535
  %4036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4035)  ; LegacyF16ToF32(value)
  %4037 = lshr i32 %201, 16
  %4038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4037)  ; LegacyF16ToF32(value)
  %4039 = and i32 %202, 65535
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = fmul fast float %4036, %4000
  %4042 = fmul fast float %4038, %4001
  %4043 = fmul fast float %4040, %4002
  %4044 = shl i32 %203, 4
  %4045 = and i32 %4044, 32752
  %4046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4045)  ; LegacyF16ToF32(value)
  %4047 = lshr i32 %203, 7
  %4048 = and i32 %4047, 32752
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = lshr i32 %203, 22
  %4051 = shl nuw nsw i32 %4050, 5
  %4052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4051)  ; LegacyF16ToF32(value)
  %4053 = and i32 %204, 65535
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = fmul fast float %4046, %4003
  %4056 = fmul fast float %4055, %4054
  %4057 = fmul fast float %4049, %4004
  %4058 = fmul fast float %4057, %4054
  %4059 = fmul fast float %4052, %4005
  %4060 = fmul fast float %4059, %4054
  %4061 = call float @dx.op.dot2.f32(i32 54, float %3998, float %3999, float %3998, float %3999)  ; Dot2(ax,ay,bx,by)
  %4062 = fmul fast float %4061, 0x3FE3333340000000
  %4063 = fsub fast float 1.000000e+00, %4062
  %4064 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3999, float %4063, float %3998, float %3999, float %4063)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call float @dx.op.unary.f32(i32 25, float %4064)  ; Rsqrt(value)
  %4066 = fmul fast float %4065, %3998
  %4067 = fmul fast float %4065, %3999
  %4068 = fmul fast float %4063, %4065
  %4069 = fmul fast float %4068, %115
  %4070 = fmul fast float %4068, %116
  %4071 = fmul fast float %4068, %117
  %4072 = fmul fast float %4066, %83
  %4073 = fmul fast float %4066, %84
  %4074 = fmul fast float %4066, %85
  %4075 = fadd fast float %4069, %4072
  %4076 = fadd fast float %4070, %4073
  %4077 = fadd fast float %4071, %4074
  %4078 = fmul fast float %127, %4067
  %4079 = fmul fast float %128, %4067
  %4080 = fmul fast float %129, %4067
  %4081 = fadd fast float %4075, %4078
  %4082 = fadd fast float %4076, %4079
  %4083 = fadd fast float %4077, %4080
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4081, float %4082, float %4083, float %4081, float %4082, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 25, float %4084)  ; Rsqrt(value)
  %4086 = fmul fast float %4081, %4085
  %4087 = fmul fast float %4082, %4085
  %4088 = fmul fast float %4083, %4085
  %4089 = icmp eq i32 %59, 65535
  br i1 %4089, label %4635, label %4090

; <label>:4090                                    ; preds = %3997
  %4091 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4092 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %4093 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4094 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4095 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %4096 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4097 = fadd fast float %4091, %60
  %4098 = fadd fast float %4092, %61
  %4099 = fadd fast float %4093, %62
  %4100 = fadd fast float %4094, %60
  %4101 = fadd fast float %4095, %61
  %4102 = fadd fast float %4096, %62
  %4103 = mul i32 %59, 48
  %4104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = add i32 %4103, 16
  %4109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = add i32 %4103, 32
  %4114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.ResRet.f32 %4114, 1
  %4117 = extractvalue %dx.types.ResRet.f32 %4114, 2
  %4118 = extractvalue %dx.types.ResRet.f32 %4114, 3
  %4119 = bitcast float %4118 to i32
  %4120 = fmul fast float %4105, %60
  %4121 = fmul fast float %4106, %61
  %4122 = fmul fast float %4107, %62
  %4123 = fsub fast float %4120, %4110
  %4124 = fsub fast float %4121, %4111
  %4125 = fsub fast float %4122, %4112
  %4126 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4127 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4128 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4129 = fmul fast float %4126, %4115
  %4130 = fmul fast float %4127, %4116
  %4131 = fmul fast float %4128, %4117
  %4132 = fadd fast float %4115, -1.000000e+00
  %4133 = fadd fast float %4116, -1.000000e+00
  %4134 = fadd fast float %4117, -1.000000e+00
  %4135 = call float @dx.op.unary.f32(i32 27, float %4129)  ; Round_ni(value)
  %4136 = call float @dx.op.unary.f32(i32 27, float %4130)  ; Round_ni(value)
  %4137 = call float @dx.op.unary.f32(i32 27, float %4131)  ; Round_ni(value)
  %4138 = call float @dx.op.binary.f32(i32 36, float %4135, float %4132)  ; FMin(a,b)
  %4139 = call float @dx.op.binary.f32(i32 36, float %4136, float %4133)  ; FMin(a,b)
  %4140 = call float @dx.op.binary.f32(i32 36, float %4137, float %4134)  ; FMin(a,b)
  %4141 = fmul fast float %4140, %4116
  %4142 = fadd fast float %4141, %4139
  %4143 = fmul fast float %4142, %4115
  %4144 = fadd fast float %4143, %4138
  %4145 = fptosi float %4144 to i32
  %4146 = add nsw i32 %4145, %4119
  %4147 = shl nsw i32 %4146, 2
  %4148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.i32 %4148, 0
  %4150 = lshr i32 %4149, 16
  %4151 = icmp eq i32 %4150, 0
  br i1 %4151, label %4601, label %4152

; <label>:4152                                    ; preds = %4090
  br label %4153

; <label>:4153                                    ; preds = %4277, %4152
  %4154 = phi i32 [ %4179, %4277 ], [ %4150, %4152 ]
  %4155 = phi float [ %4278, %4277 ], [ 0.000000e+00, %4152 ]
  %4156 = phi float [ %4279, %4277 ], [ %4034, %4152 ]
  %4157 = phi float [ %4280, %4277 ], [ %4013, %4152 ]
  %4158 = phi float [ %4281, %4277 ], [ %4006, %4152 ]
  %4159 = phi float [ %4282, %4277 ], [ %4007, %4152 ]
  %4160 = phi float [ %4283, %4277 ], [ %4008, %4152 ]
  %4161 = phi float [ %4284, %4277 ], [ 0.000000e+00, %4152 ]
  %4162 = phi float [ %4285, %4277 ], [ 0.000000e+00, %4152 ]
  %4163 = phi float [ %4286, %4277 ], [ %4056, %4152 ]
  %4164 = phi float [ %4287, %4277 ], [ %4058, %4152 ]
  %4165 = phi float [ %4288, %4277 ], [ %4060, %4152 ]
  %4166 = phi float [ %4289, %4277 ], [ %4086, %4152 ]
  %4167 = phi float [ %4290, %4277 ], [ %4087, %4152 ]
  %4168 = phi float [ %4291, %4277 ], [ %4088, %4152 ]
  %4169 = phi float [ %4292, %4277 ], [ %4011, %4152 ]
  %4170 = phi float [ %4293, %4277 ], [ %4010, %4152 ]
  %4171 = phi float [ %4294, %4277 ], [ 0.000000e+00, %4152 ]
  %4172 = phi float [ %4295, %4277 ], [ %4009, %4152 ]
  %4173 = phi float [ %4296, %4277 ], [ %4041, %4152 ]
  %4174 = phi float [ %4297, %4277 ], [ %4042, %4152 ]
  %4175 = phi float [ %4298, %4277 ], [ %4043, %4152 ]
  %4176 = shl nuw nsw i32 %4154, 2
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = lshr i32 %4178, 16
  %4180 = shl i32 %4178, 8
  %4181 = and i32 %4180, 16776960
  %4182 = or i32 %4181, 48
  %4183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.ResRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.ResRet.f32 %4183, 2
  %4187 = or i32 %4181, 64
  %4188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.i32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.i32 %4188, 1
  %4191 = or i32 %4181, 80
  %4192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 3
  %4195 = or i32 %4181, 96
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4199 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4200 = extractvalue %dx.types.ResRet.f32 %4196, 3
  %4201 = or i32 %4181, 112
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4204 = or i32 %4181, 128
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = or i32 %4181, 144
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = extractvalue %dx.types.ResRet.f32 %4211, 3
  %4216 = or i32 %4181, 160
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = extractvalue %dx.types.ResRet.f32 %4217, 3
  %4222 = or i32 %4181, 192
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = or i32 %4181, 208
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = or i32 %4181, 248
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.ResRet.f32 %4229, 1
  %4232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.ResRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.ResRet.f32 %4232, 2
  %4236 = extractvalue %dx.types.ResRet.f32 %4232, 3
  %4237 = call float @dx.op.dot4.f32(i32 56, float %4233, float %4234, float %4235, float %4236, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4238 = or i32 %4181, 16
  %4239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.ResRet.f32 %4239, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4239, 2
  %4243 = extractvalue %dx.types.ResRet.f32 %4239, 3
  %4244 = call float @dx.op.dot4.f32(i32 56, float %4240, float %4241, float %4242, float %4243, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4245 = or i32 %4181, 32
  %4246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = extractvalue %dx.types.ResRet.f32 %4246, 1
  %4249 = extractvalue %dx.types.ResRet.f32 %4246, 2
  %4250 = extractvalue %dx.types.ResRet.f32 %4246, 3
  %4251 = call float @dx.op.dot4.f32(i32 56, float %4247, float %4248, float %4249, float %4250, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4252 = call float @dx.op.unary.f32(i32 27, float %4237)  ; Round_ni(value)
  %4253 = call float @dx.op.unary.f32(i32 6, float %4252)  ; FAbs(value)
  %4254 = call float @dx.op.unary.f32(i32 27, float %4244)  ; Round_ni(value)
  %4255 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4256 = call float @dx.op.unary.f32(i32 6, float %4251)  ; FAbs(value)
  %4257 = call float @dx.op.unary.f32(i32 27, float %4256)  ; Round_ni(value)
  %4258 = fadd fast float %4255, %4253
  %4259 = fadd fast float %4258, %4257
  %4260 = fcmp fast oeq float %4259, 0.000000e+00
  %4261 = call float @dx.op.dot4.f32(i32 56, float %4233, float %4234, float %4235, float %4236, float %4097, float %4098, float %4099, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4262 = call float @dx.op.dot4.f32(i32 56, float %4240, float %4241, float %4242, float %4243, float %4097, float %4098, float %4099, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4233, float %4234, float %4235, float %4236, float %4100, float %4101, float %4102, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = call float @dx.op.dot4.f32(i32 56, float %4240, float %4241, float %4242, float %4243, float %4100, float %4101, float %4102, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4265 = fsub fast float %4261, %4237
  %4266 = fsub fast float %4263, %4237
  %4267 = fsub fast float %4262, %4244
  %4268 = fsub fast float %4264, %4244
  %4269 = call float @dx.op.dot3.f32(i32 55, float %4184, float %4185, float %4186, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 2
  %4272 = fadd fast float %4271, %4269
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4270, 0
  %4275 = fcmp fast ogt float %4273, %4274
  %4276 = and i1 %4260, %4275
  br i1 %4276, label %4300, label %4277

; <label>:4277                                    ; preds = %4587, %4383, %4300, %4153
  %4278 = phi float [ %4155, %4300 ], [ %4386, %4383 ], [ %4386, %4587 ], [ %4155, %4153 ]
  %4279 = phi float [ %4156, %4300 ], [ %4156, %4383 ], [ %4563, %4587 ], [ %4156, %4153 ]
  %4280 = phi float [ %4157, %4300 ], [ %4157, %4383 ], [ %4561, %4587 ], [ %4157, %4153 ]
  %4281 = phi float [ %4158, %4300 ], [ %4158, %4383 ], [ %4539, %4587 ], [ %4158, %4153 ]
  %4282 = phi float [ %4159, %4300 ], [ %4159, %4383 ], [ %4540, %4587 ], [ %4159, %4153 ]
  %4283 = phi float [ %4160, %4300 ], [ %4160, %4383 ], [ %4541, %4587 ], [ %4160, %4153 ]
  %4284 = phi float [ %4161, %4300 ], [ %4161, %4383 ], [ %4510, %4587 ], [ %4161, %4153 ]
  %4285 = phi float [ %4162, %4300 ], [ %4162, %4383 ], [ %4508, %4587 ], [ %4162, %4153 ]
  %4286 = phi float [ %4163, %4300 ], [ %4163, %4383 ], [ %4597, %4587 ], [ %4163, %4153 ]
  %4287 = phi float [ %4164, %4300 ], [ %4164, %4383 ], [ %4598, %4587 ], [ %4164, %4153 ]
  %4288 = phi float [ %4165, %4300 ], [ %4165, %4383 ], [ %4599, %4587 ], [ %4165, %4153 ]
  %4289 = phi float [ %4166, %4300 ], [ %4166, %4383 ], [ %4489, %4587 ], [ %4166, %4153 ]
  %4290 = phi float [ %4167, %4300 ], [ %4167, %4383 ], [ %4490, %4587 ], [ %4167, %4153 ]
  %4291 = phi float [ %4168, %4300 ], [ %4168, %4383 ], [ %4491, %4587 ], [ %4168, %4153 ]
  %4292 = phi float [ %4169, %4300 ], [ %4169, %4383 ], [ %4519, %4587 ], [ %4169, %4153 ]
  %4293 = phi float [ %4170, %4300 ], [ %4170, %4383 ], [ %4516, %4587 ], [ %4170, %4153 ]
  %4294 = phi float [ %4171, %4300 ], [ %4171, %4383 ], [ %4513, %4587 ], [ %4171, %4153 ]
  %4295 = phi float [ %4172, %4300 ], [ %4172, %4383 ], [ %4506, %4587 ], [ %4172, %4153 ]
  %4296 = phi float [ %4173, %4300 ], [ %4173, %4383 ], [ %4501, %4587 ], [ %4173, %4153 ]
  %4297 = phi float [ %4174, %4300 ], [ %4174, %4383 ], [ %4502, %4587 ], [ %4174, %4153 ]
  %4298 = phi float [ %4175, %4300 ], [ %4175, %4383 ], [ %4503, %4587 ], [ %4175, %4153 ]
  %4299 = icmp eq i32 %4179, 0
  br i1 %4299, label %4600, label %4153

; <label>:4300                                    ; preds = %4153
  %4301 = extractvalue %dx.types.ResRet.f32 %4183, 3
  %4302 = extractvalue %dx.types.ResRet.f32 %4202, 3
  %4303 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4305 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4307 = extractvalue %dx.types.ResRet.i32 %4188, 3
  %4308 = extractvalue %dx.types.ResRet.i32 %4188, 2
  %4309 = bitcast float %4301 to i32
  %4310 = add i32 %4307, 0
  %4311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4311, %dx.types.Handle %4312, float %4237, float %4244, float undef, float undef, i32 0, i32 0, i32 undef, float %4265, float %4267, float undef, float %4266, float %4268, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = fmul fast float %4314, %4306
  %4316 = fadd fast float %4315, %4305
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4237, %4197
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4244, float %4318)  ; FMad(a,b,c)
  %4320 = fadd fast float %4319, %4304
  %4321 = fmul fast float %4237, %4199
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4244, float %4321)  ; FMad(a,b,c)
  %4323 = fadd fast float %4322, %4303
  %4324 = fmul fast float %4265, %4197
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4267, float %4324)  ; FMad(a,b,c)
  %4326 = fmul fast float %4265, %4199
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4267, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4266, %4197
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4268, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4266, %4199
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4268, float %4330)  ; FMad(a,b,c)
  %4332 = add i32 %4308, 0
  %4333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4332, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4333, %dx.types.Handle %4312, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = and i32 %4309, 1024
  %4337 = icmp ne i32 %4336, 0
  %4338 = fcmp fast ogt float %4335, 0x3FE0101020000000
  %4339 = uitofp i1 %4338 to float
  %4340 = select i1 %4337, float %4339, float %4335
  %4341 = and i32 %4309, 8192
  %4342 = icmp ne i32 %4341, 0
  %4343 = select i1 %4342, float %4302, float 1.000000e+00
  %4344 = fmul fast float %4237, 2.000000e+00
  %4345 = fadd fast float %4344, -1.000000e+00
  %4346 = call float @dx.op.unary.f32(i32 6, float %4345)  ; FAbs(value)
  %4347 = fmul fast float %4346, %4230
  %4348 = fsub fast float %4347, %4230
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fmul fast float %4244, 2.000000e+00
  %4351 = fadd fast float %4350, -1.000000e+00
  %4352 = call float @dx.op.unary.f32(i32 6, float %4351)  ; FAbs(value)
  %4353 = fmul fast float %4352, %4231
  %4354 = fsub fast float %4353, %4231
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fmul fast float %4256, %4193
  %4357 = fsub fast float %4356, %4193
  %4358 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4359 = fmul fast float %4317, %4343
  %4360 = fmul fast float %4359, %4314
  %4361 = fmul fast float %4360, %4349
  %4362 = fmul fast float %4361, %4340
  %4363 = fmul fast float %4362, %4355
  %4364 = fmul fast float %4363, %4358
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 1
  %4367 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4368 = fsub fast float %4273, %4367
  %4369 = fmul fast float %4368, %4366
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fmul fast float %4364, %4194
  %4372 = fadd fast float %4364, %4194
  %4373 = fmul fast float %4372, %4203
  %4374 = fsub fast float %4373, %4203
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = and i32 %4309, 128
  %4377 = icmp ne i32 %4376, 0
  %4378 = select i1 %4377, float %4375, float %4371
  %4379 = fmul fast float %4378, %4370
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = fcmp fast ugt float %4379, %4381
  br i1 %4382, label %4383, label %4277

; <label>:4383                                    ; preds = %4300
  %4384 = select i1 %4342, float %4379, float 0.000000e+00
  %4385 = fadd fast float %4384, %4155
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  br i1 %4342, label %4277, label %4387

; <label>:4387                                    ; preds = %4383
  %4388 = and i32 %4309, 4
  %4389 = and i32 %4309, 8
  %4390 = add i32 %4189, 0
  %4391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4390, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4391, %dx.types.Handle %4392, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.ResRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.ResRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.ResRet.f32 %4393, 3
  %4398 = bitcast float %4215 to i32
  %4399 = and i32 %4398, 255
  %4400 = uitofp i32 %4399 to float
  %4401 = lshr i32 %4398, 8
  %4402 = and i32 %4401, 255
  %4403 = uitofp i32 %4402 to float
  %4404 = fmul fast float %4397, %4400
  %4405 = fadd fast float %4404, %4403
  %4406 = fmul fast float %4405, 0x3F70101000000000
  %4407 = add i32 %4190, 0
  %4408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4407, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4409 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4408, %dx.types.Handle %4392, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.ResRet.f32 %4409, 3
  %4414 = bitcast float %4209 to i32
  %4415 = and i32 %4414, 255
  %4416 = uitofp i32 %4415 to float
  %4417 = lshr i32 %4414, 8
  %4418 = and i32 %4417, 255
  %4419 = uitofp i32 %4418 to float
  %4420 = lshr i32 %4414, 16
  %4421 = and i32 %4420, 255
  %4422 = uitofp i32 %4421 to float
  %4423 = fmul fast float %4422, 0x3F70101000000000
  %4424 = fmul fast float %4410, %4416
  %4425 = fadd fast float %4424, %4419
  %4426 = fmul fast float %4425, 0x3F70101000000000
  %4427 = fadd fast float %4411, -5.000000e-01
  %4428 = fadd fast float %4413, -5.000000e-01
  %4429 = fmul fast float %4427, %4423
  %4430 = fmul fast float %4428, %4423
  %4431 = fadd fast float %4429, 5.000000e-01
  %4432 = fadd fast float %4430, 5.000000e-01
  %4433 = fmul fast float %4394, %4218
  %4434 = fmul fast float %4395, %4219
  %4435 = fmul fast float %4396, %4220
  %4436 = fmul fast float %4431, 2.000000e+00
  %4437 = fadd fast float %4436, -1.000000e+00
  %4438 = fmul fast float %4432, 2.000000e+00
  %4439 = fadd fast float %4438, -1.000000e+00
  %4440 = fadd fast float %4437, %4439
  %4441 = fmul fast float %4440, 5.000000e-01
  %4442 = fsub fast float %4437, %4439
  %4443 = fmul fast float %4442, 5.000000e-01
  %4444 = call float @dx.op.unary.f32(i32 6, float %4441)  ; FAbs(value)
  %4445 = fsub fast float 1.000000e+00, %4444
  %4446 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4447 = fsub fast float %4445, %4446
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4441, float %4443, float %4447, float %4441, float %4443, float %4447)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  %4450 = fmul fast float %4441, %4449
  %4451 = fmul fast float %4443, %4449
  %4452 = fmul fast float %4449, %4447
  %4453 = fmul fast float %4452, %4184
  %4454 = fmul fast float %4452, %4185
  %4455 = fmul fast float %4452, %4186
  %4456 = fmul fast float %4450, %4206
  %4457 = fmul fast float %4450, %4207
  %4458 = fmul fast float %4450, %4208
  %4459 = fadd fast float %4456, %4453
  %4460 = fadd fast float %4457, %4454
  %4461 = fadd fast float %4458, %4455
  %4462 = fmul fast float %4451, %4212
  %4463 = fmul fast float %4451, %4213
  %4464 = fmul fast float %4451, %4214
  %4465 = fadd fast float %4459, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = fadd fast float %4461, %4464
  %4468 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4469 = call float @dx.op.unary.f32(i32 25, float %4468)  ; Rsqrt(value)
  %4470 = fmul fast float %4465, %4469
  %4471 = fmul fast float %4466, %4469
  %4472 = fmul fast float %4467, %4469
  %4473 = icmp ne i32 %4389, 0
  %4474 = select i1 %4473, float 1.000000e+00, float 0.000000e+00
  %4475 = fmul fast float %4379, %4474
  %4476 = and i32 %4309, 1
  %4477 = icmp eq i32 %4476, 0
  br i1 %4477, label %4478, label %4482

; <label>:4478                                    ; preds = %4387
  %4479 = fsub fast float %4470, %4166
  %4480 = fsub fast float %4471, %4167
  %4481 = fsub fast float %4472, %4168
  br label %4482

; <label>:4482                                    ; preds = %4478, %4387
  %4483 = phi float [ %4479, %4478 ], [ %4470, %4387 ]
  %4484 = phi float [ %4480, %4478 ], [ %4471, %4387 ]
  %4485 = phi float [ %4481, %4478 ], [ %4472, %4387 ]
  %4486 = fmul float %4485, %4475
  %4487 = fmul float %4484, %4475
  %4488 = fmul float %4483, %4475
  %4489 = fadd fast float %4488, %4166
  %4490 = fadd fast float %4487, %4167
  %4491 = fadd fast float %4486, %4168
  %4492 = icmp ne i32 %4388, 0
  %4493 = select i1 %4492, float 1.000000e+00, float 0.000000e+00
  %4494 = fmul fast float %4379, %4493
  %4495 = fsub fast float %4433, %4173
  %4496 = fsub fast float %4434, %4174
  %4497 = fsub fast float %4435, %4175
  %4498 = fmul fast float %4495, %4494
  %4499 = fmul fast float %4496, %4494
  %4500 = fmul fast float %4497, %4494
  %4501 = fadd fast float %4498, %4173
  %4502 = fadd fast float %4499, %4174
  %4503 = fadd fast float %4500, %4175
  %4504 = fsub fast float %4406, %4172
  %4505 = fmul fast float %4504, %4494
  %4506 = fadd fast float %4505, %4172
  %4507 = fmul fast float %4494, %4162
  %4508 = fsub fast float %4162, %4507
  %4509 = fmul fast float %4494, %4161
  %4510 = fsub fast float %4161, %4509
  %4511 = bitcast float %4227 to i32
  %4512 = fadd fast float %4379, %4171
  %4513 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4514 = fsub fast float %4426, %4170
  %4515 = fmul fast float %4514, %4475
  %4516 = fadd fast float %4515, %4170
  %4517 = fsub fast float %4412, %4169
  %4518 = fmul fast float %4517, %4475
  %4519 = fadd fast float %4518, %4169
  br i1 %4477, label %4528, label %4520

; <label>:4520                                    ; preds = %4482
  %4521 = and i32 %4309, 32768
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %4538, label %4523

; <label>:4523                                    ; preds = %4520
  %4524 = fmul fast float %4475, 1.270000e+02
  %4525 = fadd fast float %4524, %4158
  %4526 = fadd fast float %4524, %4159
  %4527 = fadd fast float %4524, %4160
  br label %4538

; <label>:4528                                    ; preds = %4482
  %4529 = fsub fast float 1.270000e+02, %4158
  %4530 = fsub fast float 1.270000e+02, %4159
  %4531 = fsub fast float 1.270000e+02, %4160
  %4532 = fmul fast float %4475, %4529
  %4533 = fmul fast float %4475, %4530
  %4534 = fmul fast float %4475, %4531
  %4535 = fadd fast float %4532, %4158
  %4536 = fadd fast float %4533, %4159
  %4537 = fadd fast float %4534, %4160
  br label %4538

; <label>:4538                                    ; preds = %4528, %4523, %4520
  %4539 = phi float [ %4525, %4523 ], [ %4158, %4520 ], [ %4535, %4528 ]
  %4540 = phi float [ %4526, %4523 ], [ %4159, %4520 ], [ %4536, %4528 ]
  %4541 = phi float [ %4527, %4523 ], [ %4160, %4520 ], [ %4537, %4528 ]
  %4542 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4434, float %4435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = fmul fast float %4545, %4542
  %4547 = fadd fast float %4546, %4544
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = bitcast float %4221 to i32
  %4550 = and i32 %4549, 65535
  %4551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4550)  ; LegacyF16ToF32(value)
  %4552 = lshr i32 %4549, 16
  %4553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4552)  ; LegacyF16ToF32(value)
  %4554 = fcmp fast oge float %4551, 0.000000e+00
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 0
  %4557 = select i1 %4554, float %4551, float %4556
  %4558 = fadd fast float %4557, %4553
  %4559 = fsub fast float %4548, %4157
  %4560 = fmul fast float %4559, %4379
  %4561 = fadd fast float %4560, %4157
  %4562 = fmul fast float %4558, %4379
  %4563 = call float @dx.op.binary.f32(i32 35, float %4156, float %4562)  ; FMax(a,b)
  %4564 = and i32 %4309, 16
  %4565 = icmp eq i32 %4564, 0
  br i1 %4565, label %4587, label %4566

; <label>:4566                                    ; preds = %4538
  %4567 = add i32 %4224, 0
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4568, %dx.types.Handle %4392, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = and i32 %4511, 65535
  %4574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4573)  ; LegacyF16ToF32(value)
  %4575 = fmul fast float %4570, %4218
  %4576 = fmul fast float %4571, %4219
  %4577 = fmul fast float %4572, %4220
  %4578 = and i32 %4309, 16384
  %4579 = icmp ne i32 %4578, 0
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = select i1 %4579, float %4581, float 1.000000e+00
  %4583 = fmul fast float %4582, %4574
  %4584 = fmul fast float %4575, %4583
  %4585 = fmul fast float %4576, %4583
  %4586 = fmul fast float %4577, %4583
  br label %4587

; <label>:4587                                    ; preds = %4566, %4538
  %4588 = phi float [ %4584, %4566 ], [ 0.000000e+00, %4538 ]
  %4589 = phi float [ %4585, %4566 ], [ 0.000000e+00, %4538 ]
  %4590 = phi float [ %4586, %4566 ], [ 0.000000e+00, %4538 ]
  %4591 = fsub fast float %4588, %4163
  %4592 = fsub fast float %4589, %4164
  %4593 = fsub fast float %4590, %4165
  %4594 = fmul fast float %4591, %4379
  %4595 = fmul fast float %4592, %4379
  %4596 = fmul fast float %4593, %4379
  %4597 = fadd fast float %4594, %4163
  %4598 = fadd fast float %4595, %4164
  %4599 = fadd fast float %4596, %4165
  br label %4277

; <label>:4600                                    ; preds = %4277
  br label %4601

; <label>:4601                                    ; preds = %4600, %4090
  %4602 = phi float [ 0.000000e+00, %4090 ], [ %4278, %4600 ]
  %4603 = phi float [ %4034, %4090 ], [ %4279, %4600 ]
  %4604 = phi float [ %4013, %4090 ], [ %4280, %4600 ]
  %4605 = phi float [ %4006, %4090 ], [ %4281, %4600 ]
  %4606 = phi float [ %4007, %4090 ], [ %4282, %4600 ]
  %4607 = phi float [ %4008, %4090 ], [ %4283, %4600 ]
  %4608 = phi float [ 0.000000e+00, %4090 ], [ %4284, %4600 ]
  %4609 = phi float [ 0.000000e+00, %4090 ], [ %4285, %4600 ]
  %4610 = phi float [ %4056, %4090 ], [ %4286, %4600 ]
  %4611 = phi float [ %4058, %4090 ], [ %4287, %4600 ]
  %4612 = phi float [ %4060, %4090 ], [ %4288, %4600 ]
  %4613 = phi float [ %4086, %4090 ], [ %4289, %4600 ]
  %4614 = phi float [ %4087, %4090 ], [ %4290, %4600 ]
  %4615 = phi float [ %4088, %4090 ], [ %4291, %4600 ]
  %4616 = phi float [ %4011, %4090 ], [ %4292, %4600 ]
  %4617 = phi float [ %4010, %4090 ], [ %4293, %4600 ]
  %4618 = phi float [ 0.000000e+00, %4090 ], [ %4294, %4600 ]
  %4619 = phi float [ %4009, %4090 ], [ %4295, %4600 ]
  %4620 = phi float [ %4041, %4090 ], [ %4296, %4600 ]
  %4621 = phi float [ %4042, %4090 ], [ %4297, %4600 ]
  %4622 = phi float [ %4043, %4090 ], [ %4298, %4600 ]
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4614, float %4615, float %4613, float %4614, float %4615)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 25, float %4623)  ; Rsqrt(value)
  %4625 = fmul fast float %4624, %4613
  %4626 = fmul fast float %4624, %4614
  %4627 = fmul fast float %4624, %4615
  %4628 = fadd fast float %4618, %1345
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 25, float %4630)  ; Rsqrt(value)
  %4632 = fmul fast float %4631, %4625
  %4633 = fmul fast float %4631, %4626
  %4634 = fmul fast float %4631, %4627
  br label %4635

; <label>:4635                                    ; preds = %4601, %3997
  %4636 = phi float [ %4632, %4601 ], [ %4086, %3997 ]
  %4637 = phi float [ %4633, %4601 ], [ %4087, %3997 ]
  %4638 = phi float [ %4634, %4601 ], [ %4088, %3997 ]
  %4639 = phi float [ %4620, %4601 ], [ %4041, %3997 ]
  %4640 = phi float [ %4621, %4601 ], [ %4042, %3997 ]
  %4641 = phi float [ %4622, %4601 ], [ %4043, %3997 ]
  %4642 = phi float [ %4610, %4601 ], [ %4056, %3997 ]
  %4643 = phi float [ %4611, %4601 ], [ %4058, %3997 ]
  %4644 = phi float [ %4612, %4601 ], [ %4060, %3997 ]
  %4645 = phi float [ %4605, %4601 ], [ %4006, %3997 ]
  %4646 = phi float [ %4606, %4601 ], [ %4007, %3997 ]
  %4647 = phi float [ %4607, %4601 ], [ %4008, %3997 ]
  %4648 = phi float [ %4619, %4601 ], [ %4009, %3997 ]
  %4649 = phi float [ %4629, %4601 ], [ %1345, %3997 ]
  %4650 = phi float [ %4617, %4601 ], [ %4010, %3997 ]
  %4651 = phi float [ %4616, %4601 ], [ %4011, %3997 ]
  %4652 = phi float [ %4609, %4601 ], [ 0.000000e+00, %3997 ]
  %4653 = phi float [ %4608, %4601 ], [ 0.000000e+00, %3997 ]
  %4654 = phi float [ %4602, %4601 ], [ 0.000000e+00, %3997 ]
  %4655 = phi float [ %4603, %4601 ], [ %4034, %3997 ]
  %4656 = phi float [ %4604, %4601 ], [ %4013, %3997 ]
  %4657 = fadd fast float %4648, 0xBFB99999A0000000
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4658, 0x3FF1C71C80000000
  %4660 = call float @dx.op.binary.f32(i32 36, float %4648, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4661 = fsub fast float 1.000000e+00, %4659
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4662, %4639
  %4664 = fmul fast float %4662, %4640
  %4665 = fmul fast float %4662, %4641
  %4666 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4668 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4669 = fmul fast float %4659, %4639
  %4670 = fmul fast float %4659, %4640
  %4671 = fmul fast float %4659, %4641
  %4672 = fadd fast float %4669, %4660
  %4673 = fadd fast float %4670, %4660
  %4674 = fadd fast float %4671, %4660
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4679 = call float @dx.op.binary.f32(i32 36, float %4645, float 1.270000e+02)  ; FMin(a,b)
  %4680 = call float @dx.op.binary.f32(i32 36, float %4646, float 1.270000e+02)  ; FMin(a,b)
  %4681 = call float @dx.op.binary.f32(i32 36, float %4647, float 1.270000e+02)  ; FMin(a,b)
  %4682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.i32 %4682, 3
  %4684 = and i32 %4683, 8
  %4685 = icmp ne i32 %4684, 0
  %4686 = call float @dx.op.binary.f32(i32 35, float %4666, float %4639)  ; FMax(a,b)
  %4687 = call float @dx.op.binary.f32(i32 35, float %4667, float %4639)  ; FMax(a,b)
  %4688 = call float @dx.op.binary.f32(i32 35, float %4668, float %4639)  ; FMax(a,b)
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = select i1 %267, float %4639, float %4666
  %4691 = select i1 %267, float %4689, float %4667
  %4692 = select i1 %267, float 1.000000e+00, float %4668
  %4693 = select i1 %4685, float %4686, float %4690
  %4694 = select i1 %4685, float %4687, float %4691
  %4695 = select i1 %4685, float %4688, float %4692
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4700 = fadd fast float %4697, %195
  %4701 = fadd fast float %4698, %196
  %4702 = fadd fast float %4699, %197
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fsub fast float %4700, %4704
  %4707 = fsub fast float %4701, %4705
  %4708 = fmul fast float %4706, %4706
  %4709 = fmul fast float %4707, %4707
  %4710 = fadd fast float %4708, %4709
  %4711 = call float @dx.op.unary.f32(i32 24, float %4710)  ; Sqrt(value)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4713 = fcmp fast olt float %4711, %4712
  br i1 %4713, label %4714, label %4781

; <label>:4714                                    ; preds = %4635
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.CBufRet.f32 %4715, 1
  %4722 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4723 = extractvalue %dx.types.CBufRet.f32 %4719, 1
  %4724 = extractvalue %dx.types.CBufRet.f32 %4715, 3
  %4725 = extractvalue %dx.types.CBufRet.f32 %4717, 3
  %4726 = extractvalue %dx.types.CBufRet.f32 %4719, 3
  %4727 = fadd fast float %4724, %4700
  %4728 = fadd fast float %4725, %4701
  %4729 = fadd fast float %4726, %4702
  %4730 = fmul fast float %4727, %4716
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4718, float %4730)  ; FMad(a,b,c)
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4720, float %4731)  ; FMad(a,b,c)
  %4733 = fmul fast float %4727, %4721
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4722, float %4733)  ; FMad(a,b,c)
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4723, float %4734)  ; FMad(a,b,c)
  %4736 = fsub fast float %4732, %4724
  %4737 = fsub fast float %4735, %4725
  %4738 = fsub fast float %4736, %4704
  %4739 = fadd fast float %4738, %4712
  %4740 = fsub fast float %4737, %4705
  %4741 = fadd fast float %4740, %4712
  %4742 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4743 = fmul fast float %4739, %4742
  %4744 = fmul fast float %4741, %4742
  %4745 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4746 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4747 = fsub fast float 1.000000e+00, %4745
  %4748 = fsub fast float 1.000000e+00, %4746
  %4749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4747, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4750 = extractvalue %dx.types.ResRet.f32 %4749, 0
  %4751 = fcmp fast ugt float %4750, 0.000000e+00
  br i1 %4751, label %4752, label %5055

; <label>:4752                                    ; preds = %4714
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 2
  %4755 = fmul fast float %4754, %4750
  %4756 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4757 = fadd fast float %4756, %4755
  %4758 = extractvalue %dx.types.CBufRet.f32 %4719, 2
  %4759 = fadd fast float %4757, %4726
  %4760 = fmul fast float %4732, %4720
  %4761 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4723, float %4760)  ; FMad(a,b,c)
  %4762 = call float @dx.op.tertiary.f32(i32 46, float %4759, float %4758, float %4761)  ; FMad(a,b,c)
  %4763 = fsub fast float %4762, %4726
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 2
  %4766 = fsub fast float %4763, %4765
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4747, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4747, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = fadd fast float %4772, %4768
  %4776 = fmul fast float %4775, 0x3F847AE140000000
  %4777 = fadd fast float %4773, %4769
  %4778 = fmul fast float %4777, 0x3F847AE140000000
  %4779 = fadd fast float %4774, %4770
  %4780 = fmul fast float %4779, 0x3F847AE140000000
  br label %5055

; <label>:4781                                    ; preds = %4635
  %4782 = and i32 %246, 1
  %4783 = icmp eq i32 %4782, 0
  br i1 %4783, label %5055, label %4784

; <label>:4784                                    ; preds = %4781
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4792 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4793 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4785, 3
  %4795 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4796 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4797 = fadd fast float %4794, %4700
  %4798 = fadd fast float %4795, %4701
  %4799 = fadd fast float %4796, %4702
  %4800 = fmul fast float %4797, %4786
  %4801 = call float @dx.op.tertiary.f32(i32 46, float %4798, float %4788, float %4800)  ; FMad(a,b,c)
  %4802 = call float @dx.op.tertiary.f32(i32 46, float %4799, float %4790, float %4801)  ; FMad(a,b,c)
  %4803 = fmul fast float %4797, %4791
  %4804 = call float @dx.op.tertiary.f32(i32 46, float %4798, float %4792, float %4803)  ; FMad(a,b,c)
  %4805 = call float @dx.op.tertiary.f32(i32 46, float %4799, float %4793, float %4804)  ; FMad(a,b,c)
  %4806 = fsub fast float %4802, %4794
  %4807 = fsub fast float %4805, %4795
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.CBufRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4812 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 3
  %4815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.i32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.i32 %4815, 1
  %4818 = udiv i32 %4817, %4816
  %4819 = fsub fast float %4806, %4809
  %4820 = fsub fast float %4807, %4810
  %4821 = call float @dx.op.binary.f32(i32 35, float %4819, float 0.000000e+00)  ; FMax(a,b)
  %4822 = call float @dx.op.binary.f32(i32 35, float %4820, float 0.000000e+00)  ; FMax(a,b)
  %4823 = call float @dx.op.binary.f32(i32 36, float %4821, float %4811)  ; FMin(a,b)
  %4824 = call float @dx.op.binary.f32(i32 36, float %4822, float %4812)  ; FMin(a,b)
  %4825 = add i32 %4816, -1
  %4826 = add i32 %4818, -1
  %4827 = fmul fast float %4823, %4814
  %4828 = fmul fast float %4824, %4814
  %4829 = fptoui float %4827 to i32
  %4830 = fptoui float %4828 to i32
  %4831 = call i32 @dx.op.binary.i32(i32 40, i32 %4829, i32 %4825)  ; UMin(a,b)
  %4832 = call i32 @dx.op.binary.i32(i32 40, i32 %4830, i32 %4826)  ; UMin(a,b)
  %4833 = mul i32 %4832, %4816
  %4834 = add i32 %4833, %4831
  %4835 = shl i32 %4834, 2
  %4836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4835, i32 undef)  ; BufferLoad(srv,index,wot)
  %4837 = extractvalue %dx.types.ResRet.i32 %4836, 0
  %4838 = icmp eq i32 %4837, -1
  br i1 %4838, label %5055, label %4839

; <label>:4839                                    ; preds = %4784
  %4840 = mul i32 %4837, 148
  %4841 = add i32 %4840, 4
  %4842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4841, i32 undef)  ; BufferLoad(srv,index,wot)
  %4843 = extractvalue %dx.types.ResRet.f32 %4842, 0
  %4844 = add i32 %4840, 8
  %4845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4844, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = add i32 %4840, 36
  %4848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4847, i32 undef)  ; BufferLoad(srv,index,wot)
  %4849 = extractvalue %dx.types.ResRet.f32 %4848, 0
  %4850 = add i32 %4840, 60
  %4851 = add i32 %4840, 92
  %4852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4851, i32 undef)  ; BufferLoad(srv,index,wot)
  %4853 = extractvalue %dx.types.ResRet.i32 %4852, 0
  %4854 = add i32 %4840, 116
  %4855 = fsub fast float %4806, %4843
  %4856 = fsub fast float %4807, %4846
  %4857 = fmul fast float %4814, %4855
  %4858 = fmul fast float %4814, %4856
  %4859 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4864 = call float @dx.op.unary.f32(i32 83, float %4859)  ; DerivCoarseX(value)
  %4865 = call float @dx.op.unary.f32(i32 83, float %4861)  ; DerivCoarseX(value)
  %4866 = call float @dx.op.unary.f32(i32 84, float %4859)  ; DerivCoarseY(value)
  %4867 = call float @dx.op.unary.f32(i32 84, float %4861)  ; DerivCoarseY(value)
  %4868 = fmul fast float %4864, %4863
  %4869 = fmul fast float %4865, %4863
  %4870 = fmul fast float %4866, %4863
  %4871 = fmul fast float %4867, %4863
  %4872 = call float @dx.op.dot2.f32(i32 54, float %4870, float %4871, float %4870, float %4871)  ; Dot2(ax,ay,bx,by)
  %4873 = call float @dx.op.dot2.f32(i32 54, float %4868, float %4869, float %4868, float %4869)  ; Dot2(ax,ay,bx,by)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4873, float %4872)  ; FMax(a,b)
  %4875 = call float @dx.op.unary.f32(i32 23, float %4874)  ; Log(value)
  %4876 = fmul fast float %4875, 5.000000e-01
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4879 = fadd fast float %4878, %4876
  %4880 = call float @dx.op.binary.f32(i32 35, float %4879, float 0.000000e+00)  ; FMax(a,b)
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4883 = fadd fast float %4882, %4880
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4886 = fadd fast float %4883, %4885
  %4887 = add i32 %4853, 0
  %4888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4887, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4889 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4888, i32 0)  ; GetDimensions(handle,mipLevel)
  %4890 = extractvalue %dx.types.Dimensions %4889, 0
  %4891 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4890)  ; FirstbitLo(value)
  %4892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.i32 %4892, 1
  %4894 = sub nsw i32 %4893, %4891
  %4895 = sitofp i32 %4894 to float
  %4896 = fsub fast float %4886, %4895
  %4897 = call float @dx.op.binary.f32(i32 35, float %4896, float 0.000000e+00)  ; FMax(a,b)
  %4898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4888, %dx.types.Handle %48, float %4859, float %4861, float %4849, float undef, i32 0, i32 0, i32 undef, float %4897)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = fcmp ule float %4899, 0x3FE0101020000000
  %4901 = extractvalue %dx.types.CBufRet.i32 %4892, 0
  %4902 = and i32 %4901, 128
  %4903 = icmp ne i32 %4902, 0
  %4904 = and i1 %4900, %4903
  br i1 %4904, label %5055, label %4905

; <label>:4905                                    ; preds = %4839
  %4906 = add i32 %4840, 20
  %4907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = add i32 %4840, 24
  %4910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4909, i32 undef)  ; BufferLoad(srv,index,wot)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = add i32 %4840, 40
  %4913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4912, i32 undef)  ; BufferLoad(srv,index,wot)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = add i32 %4840, 96
  %4916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.i32 %4916, 0
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 2
  %4920 = fmul fast float %4919, %4859
  %4921 = fmul fast float %4919, %4861
  %4922 = extractvalue %dx.types.CBufRet.f32 %4918, 3
  %4923 = fadd fast float %4920, %4922
  %4924 = fadd fast float %4921, %4922
  %4925 = add i32 %4917, 0
  %4926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4925, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4927 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4926, i32 0)  ; GetDimensions(handle,mipLevel)
  %4928 = extractvalue %dx.types.Dimensions %4927, 0
  %4929 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4928)  ; FirstbitLo(value)
  %4930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.i32 %4930, 1
  %4932 = sub nsw i32 %4931, %4929
  %4933 = sitofp i32 %4932 to float
  %4934 = fsub fast float %4883, %4933
  %4935 = call float @dx.op.binary.f32(i32 35, float %4934, float 0.000000e+00)  ; FMax(a,b)
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4926, %dx.types.Handle %48, float %4923, float %4924, float %4914, float undef, i32 0, i32 0, i32 undef, float %4935)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = fmul fast float %4937, %4908
  %4939 = fadd fast float %4938, %4911
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 3
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 3
  %4948 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4949 = fadd fast float %4945, %4806
  %4950 = fadd fast float %4947, %4807
  %4951 = fadd fast float %4939, %4948
  %4952 = fmul fast float %4949, %4941
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4950, float %4942, float %4952)  ; FMad(a,b,c)
  %4954 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4943, float %4953)  ; FMad(a,b,c)
  %4955 = fsub fast float %4954, %4948
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4958 = fsub fast float %4955, %4957
  %4959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.i32 %4959, 0
  %4961 = call i32 @dx.op.binary.i32(i32 40, i32 %4837, i32 %4960)  ; UMin(a,b)
  %4962 = mul i32 %4961, 36
  %4963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4962, i32 undef)  ; BufferLoad(srv,index,wot)
  %4964 = extractvalue %dx.types.ResRet.i32 %4963, 0
  %4965 = add i32 %4962, 4
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = fmul fast float %4967, %4859
  %4969 = fmul fast float %4967, %4861
  %4970 = extractvalue %dx.types.CBufRet.f32 %4966, 1
  %4971 = fadd fast float %4968, %4970
  %4972 = fadd fast float %4969, %4970
  %4973 = icmp eq i32 %4964, 0
  br i1 %4973, label %5042, label %4974

; <label>:4974                                    ; preds = %4905
  br label %4975

; <label>:4975                                    ; preds = %5032, %4974
  %4976 = phi float [ %5033, %5032 ], [ 0.000000e+00, %4974 ]
  %4977 = phi float [ %5034, %5032 ], [ 0.000000e+00, %4974 ]
  %4978 = phi float [ %5035, %5032 ], [ 0.000000e+00, %4974 ]
  %4979 = phi float [ %5036, %5032 ], [ 0.000000e+00, %4974 ]
  %4980 = phi float [ %5037, %5032 ], [ 0.000000e+00, %4974 ]
  %4981 = phi float [ %5038, %5032 ], [ 0.000000e+00, %4974 ]
  %4982 = phi i32 [ %5039, %5032 ], [ 0, %4974 ]
  %4983 = shl i32 %4982, 2
  %4984 = add i32 %4850, %4983
  %4985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4984, i32 undef)  ; BufferLoad(srv,index,wot)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 0
  %4987 = add i32 %4854, %4983
  %4988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4987, i32 undef)  ; BufferLoad(srv,index,wot)
  %4989 = extractvalue %dx.types.ResRet.i32 %4988, 0
  %4990 = add i32 %4989, 0
  %4991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4992 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4991, i32 0)  ; GetDimensions(handle,mipLevel)
  %4993 = extractvalue %dx.types.Dimensions %4992, 0
  %4994 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4993)  ; FirstbitLo(value)
  %4995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.i32 %4995, 1
  %4997 = sub nsw i32 %4996, %4994
  %4998 = sitofp i32 %4997 to float
  %4999 = fsub fast float %4883, %4998
  %5000 = call float @dx.op.binary.f32(i32 35, float %4999, float 0.000000e+00)  ; FMax(a,b)
  %5001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4991, %dx.types.Handle %48, float %4971, float %4972, float %4986, float undef, i32 0, i32 0, i32 undef, float %5000)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = fcmp fast ogt float %5002, 0.000000e+00
  br i1 %5003, label %5004, label %5032

; <label>:5004                                    ; preds = %4975
  %5005 = add i32 %4965, %4983
  %5006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5005, i32 undef)  ; BufferLoad(srv,index,wot)
  %5007 = extractvalue %dx.types.ResRet.i32 %5006, 0
  %5008 = and i32 %5007, 32767
  %5009 = mul nuw nsw i32 %5008, 928
  %5010 = add nuw nsw i32 %5009, 48
  %5011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5010, i32 undef)  ; BufferLoad(srv,index,wot)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.ResRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.ResRet.f32 %5011, 2
  %5015 = add nuw nsw i32 %5009, 60
  %5016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5015, i32 undef)  ; BufferLoad(srv,index,wot)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5020 = fmul fast float %5012, %5002
  %5021 = fmul fast float %5013, %5002
  %5022 = fmul fast float %5014, %5002
  %5023 = fadd fast float %5020, %4976
  %5024 = fadd fast float %5021, %4977
  %5025 = fadd fast float %5022, %4978
  %5026 = fmul fast float %5017, %5002
  %5027 = fmul fast float %5018, %5002
  %5028 = fmul fast float %5019, %5002
  %5029 = fadd fast float %5026, %4979
  %5030 = fadd fast float %5027, %4980
  %5031 = fadd fast float %5028, %4981
  br label %5032

; <label>:5032                                    ; preds = %5004, %4975
  %5033 = phi float [ %5023, %5004 ], [ %4976, %4975 ]
  %5034 = phi float [ %5024, %5004 ], [ %4977, %4975 ]
  %5035 = phi float [ %5025, %5004 ], [ %4978, %4975 ]
  %5036 = phi float [ %5029, %5004 ], [ %4979, %4975 ]
  %5037 = phi float [ %5030, %5004 ], [ %4980, %4975 ]
  %5038 = phi float [ %5031, %5004 ], [ %4981, %4975 ]
  %5039 = add nuw i32 %4982, 1
  %5040 = icmp eq i32 %5039, %4964
  br i1 %5040, label %5041, label %4975

; <label>:5041                                    ; preds = %5032
  br label %5042

; <label>:5042                                    ; preds = %5041, %4905
  %5043 = phi float [ 0.000000e+00, %4905 ], [ %5033, %5041 ]
  %5044 = phi float [ 0.000000e+00, %4905 ], [ %5034, %5041 ]
  %5045 = phi float [ 0.000000e+00, %4905 ], [ %5035, %5041 ]
  %5046 = phi float [ 0.000000e+00, %4905 ], [ %5036, %5041 ]
  %5047 = phi float [ 0.000000e+00, %4905 ], [ %5037, %5041 ]
  %5048 = phi float [ 0.000000e+00, %4905 ], [ %5038, %5041 ]
  %5049 = fadd fast float %5046, %5043
  %5050 = fmul fast float %5049, 0x3F847AE140000000
  %5051 = fadd fast float %5047, %5044
  %5052 = fmul fast float %5051, 0x3F847AE140000000
  %5053 = fadd fast float %5048, %5045
  %5054 = fmul fast float %5053, 0x3F847AE140000000
  br label %5055

; <label>:5055                                    ; preds = %5042, %4839, %4784, %4781, %4752, %4714
  %5056 = phi float [ %4766, %4752 ], [ -1.310720e+05, %4714 ], [ %4958, %5042 ], [ -1.310720e+05, %4784 ], [ -1.310720e+05, %4839 ], [ -1.310720e+05, %4781 ]
  %5057 = phi float [ %4776, %4752 ], [ 0.000000e+00, %4714 ], [ %5050, %5042 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4839 ], [ 0.000000e+00, %4781 ]
  %5058 = phi float [ %4778, %4752 ], [ 0.000000e+00, %4714 ], [ %5052, %5042 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4839 ], [ 0.000000e+00, %4781 ]
  %5059 = phi float [ %4780, %4752 ], [ 0.000000e+00, %4714 ], [ %5054, %5042 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4839 ], [ 0.000000e+00, %4781 ]
  %5060 = phi i1 [ true, %4752 ], [ false, %4714 ], [ true, %5042 ], [ false, %4784 ], [ false, %4839 ], [ false, %4781 ]
  %5061 = and i32 %246, 3
  %5062 = icmp eq i32 %5061, 1
  %5063 = select i1 %5062, float 1.000000e+00, float 0.000000e+00
  %5064 = fsub fast float %5056, %197
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = select i1 %5060, float %5065, float 1.000000e+00
  %5067 = fmul fast float %5066, %5063
  %5068 = icmp eq i32 %5061, 3
  %5069 = select i1 %5068, float 1.000000e+00, float %5067
  %5070 = call float @dx.op.binary.f32(i32 35, float %4654, float %5069)  ; FMax(a,b)
  %5071 = fcmp fast olt float %5069, 1.000000e+00
  %5072 = fcmp uge float %73, 0.000000e+00
  %5073 = and i1 %5072, %5071
  br i1 %5073, label %5074, label %5084

; <label>:5074                                    ; preds = %5055
  %5075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.ResRet.f32 %5075, 2
  %5079 = fadd fast float %5076, %5070
  %5080 = fcmp ule float %72, 0.000000e+00
  %5081 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = select i1 %5080, float %5081, float 1.000000e+00
  %5083 = fmul fast float %5082, %5078
  br label %5084

; <label>:5084                                    ; preds = %5074, %5055
  %5085 = phi float [ %5079, %5074 ], [ %5070, %5055 ]
  %5086 = phi float [ %5077, %5074 ], [ 0.000000e+00, %5055 ]
  %5087 = phi float [ %5083, %5074 ], [ 0.000000e+00, %5055 ]
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = fcmp fast une float %5089, 0.000000e+00
  %5092 = fcmp fast une float %5090, 0.000000e+00
  %5093 = or i1 %5091, %5092
  br i1 %5093, label %5094, label %5653

; <label>:5094                                    ; preds = %5084
  br i1 %5091, label %5095, label %5368

; <label>:5095                                    ; preds = %5094
  %5096 = call float @dx.op.unary.f32(i32 23, float %4651)  ; Log(value)
  %5097 = fmul fast float %5096, 4.000000e+00
  %5098 = call float @dx.op.unary.f32(i32 21, float %5097)  ; Exp(value)
  %5099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.f32 %5099, 0
  %5101 = fmul fast float %5100, %60
  %5102 = fmul fast float %5100, %61
  %5103 = fmul fast float %5100, %62
  %5104 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5105 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5106 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5107 = call float @dx.op.unary.f32(i32 23, float %5104)  ; Log(value)
  %5108 = call float @dx.op.unary.f32(i32 23, float %5105)  ; Log(value)
  %5109 = call float @dx.op.unary.f32(i32 23, float %5106)  ; Log(value)
  %5110 = fmul fast float %5107, 4.000000e+00
  %5111 = fmul fast float %5108, 4.000000e+00
  %5112 = fmul fast float %5109, 4.000000e+00
  %5113 = call float @dx.op.unary.f32(i32 21, float %5110)  ; Exp(value)
  %5114 = call float @dx.op.unary.f32(i32 21, float %5111)  ; Exp(value)
  %5115 = call float @dx.op.unary.f32(i32 21, float %5112)  ; Exp(value)
  %5116 = fadd fast float %5114, %5113
  %5117 = fadd fast float %5116, %5115
  %5118 = fdiv fast float 1.000000e+00, %5117
  %5119 = fmul fast float %5118, %5113
  %5120 = fcmp fast ogt float %69, 0.000000e+00
  %5121 = fcmp fast ogt float %70, 0.000000e+00
  %5122 = fcmp fast ogt float %71, 0.000000e+00
  %5123 = fcmp fast olt float %69, 0.000000e+00
  %5124 = fcmp fast olt float %70, 0.000000e+00
  %5125 = fcmp fast olt float %71, 0.000000e+00
  %5126 = zext i1 %5120 to i32
  %5127 = zext i1 %5121 to i32
  %5128 = zext i1 %5122 to i32
  %5129 = zext i1 %5123 to i32
  %5130 = zext i1 %5124 to i32
  %5131 = zext i1 %5125 to i32
  %5132 = sub nsw i32 %5126, %5129
  %5133 = sub nsw i32 %5127, %5130
  %5134 = sub nsw i32 %5128, %5131
  %5135 = call float @dx.op.unary.f32(i32 83, float %5101)  ; DerivCoarseX(value)
  %5136 = call float @dx.op.unary.f32(i32 83, float %5102)  ; DerivCoarseX(value)
  %5137 = call float @dx.op.unary.f32(i32 83, float %5103)  ; DerivCoarseX(value)
  %5138 = call float @dx.op.unary.f32(i32 84, float %5101)  ; DerivCoarseY(value)
  %5139 = call float @dx.op.unary.f32(i32 84, float %5102)  ; DerivCoarseY(value)
  %5140 = call float @dx.op.unary.f32(i32 84, float %5103)  ; DerivCoarseY(value)
  %5141 = fcmp fast ole float %278, %5119
  %5142 = fmul fast float %5118, %5116
  %5143 = fcmp fast ole float %278, %5142
  %5144 = select i1 %5143, float %5103, float %5101
  %5145 = select i1 %5143, float %5101, float %5102
  %5146 = select i1 %5141, float %5102, float %5144
  %5147 = select i1 %5141, float %5103, float %5145
  %5148 = select i1 %5143, float %5137, float %5135
  %5149 = select i1 %5143, float %5135, float %5136
  %5150 = select i1 %5141, float %5136, float %5148
  %5151 = select i1 %5141, float %5137, float %5149
  %5152 = select i1 %5143, float %5140, float %5138
  %5153 = select i1 %5143, float %5138, float %5139
  %5154 = select i1 %5141, float %5139, float %5152
  %5155 = select i1 %5141, float %5140, float %5153
  %5156 = call float @dx.op.unary.f32(i32 27, float %5146)  ; Round_ni(value)
  %5157 = call float @dx.op.unary.f32(i32 27, float %5147)  ; Round_ni(value)
  %5158 = fptosi float %5156 to i32
  %5159 = fptosi float %5157 to i32
  %5160 = xor i32 %5159, %5158
  %5161 = sitofp i32 %5160 to float
  %5162 = fptosi float %5161 to i32
  %5163 = sitofp i32 %5162 to float
  %5164 = fmul fast float %5163, 0x3FE3C6EF40000000
  %5165 = frem fast float %5156, 2.560000e+02
  %5166 = frem fast float %5157, 2.560000e+02
  %5167 = fptoui float %5165 to i32
  %5168 = fptoui float %5166 to i32
  %5169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5167, i32 %5168, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5170 = extractvalue %dx.types.ResRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.ResRet.f32 %5169, 1
  %5172 = extractvalue %dx.types.ResRet.f32 %5169, 2
  %5173 = fadd fast float %5170, %5164
  %5174 = fadd fast float %5171, %5164
  %5175 = fadd fast float %5172, %5164
  %5176 = call float @dx.op.unary.f32(i32 22, float %5173)  ; Frc(value)
  %5177 = call float @dx.op.unary.f32(i32 22, float %5174)  ; Frc(value)
  %5178 = call float @dx.op.unary.f32(i32 22, float %5175)  ; Frc(value)
  %5179 = fmul fast float %5178, 0x401921FB60000000
  %5180 = call float @dx.op.unary.f32(i32 13, float %5179)  ; Sin(value)
  %5181 = call float @dx.op.unary.f32(i32 12, float %5179)  ; Cos(value)
  %5182 = fsub fast float -0.000000e+00, %5181
  %5183 = fmul fast float %5181, %5146
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5180, float %5147, float %5183)  ; FMad(a,b,c)
  %5185 = fmul fast float %5180, %5146
  %5186 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5147, float %5185)  ; FMad(a,b,c)
  %5187 = fadd fast float %5184, %5176
  %5188 = fadd fast float %5186, %5177
  %5189 = extractvalue %dx.types.CBufRet.f32 %5099, 3
  %5190 = bitcast float %5189 to i32
  %5191 = icmp eq i32 %5190, 0
  br i1 %5191, label %5230, label %5192

; <label>:5192                                    ; preds = %5095
  %5193 = add i32 %5190, 0
  %5194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5194, %dx.types.Handle %105, float %5187, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float %5150, float %5151, float undef, float %5154, float %5155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5199 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5200 = fsub fast float 1.000000e+00, %5089
  %5201 = call float @dx.op.binary.f32(i32 35, float %5200, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5202 = bitcast float %5089 to i32
  %5203 = sitofp i32 %5202 to float
  %5204 = fadd fast float %5203, 0xC1CFBF8940000000
  %5205 = fmul fast float %5199, %5204
  %5206 = fadd fast float %5205, 0x41CFBF8940000000
  %5207 = fptosi float %5206 to i32
  %5208 = bitcast i32 %5207 to float
  %5209 = bitcast float %5201 to i32
  %5210 = sitofp i32 %5209 to float
  %5211 = fadd fast float %5210, 0xC1CFBF8940000000
  %5212 = fmul fast float %5211, %5199
  %5213 = fadd fast float %5212, 0x41CFBF8940000000
  %5214 = fptosi float %5213 to i32
  %5215 = bitcast i32 %5214 to float
  %5216 = fmul fast float %5208, %5198
  %5217 = fmul fast float %5215, %5198
  %5218 = fsub fast float %5201, %5216
  %5219 = fadd fast float %5217, %5201
  %5220 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5221 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5222 = fsub fast float %5196, %5220
  %5223 = fsub fast float %5221, %5220
  %5224 = bitcast float %5223 to i32
  %5225 = sub nsw i32 2129859010, %5224
  %5226 = bitcast i32 %5225 to float
  %5227 = fmul fast float %5226, %5222
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fcmp fast olt float %5228, 0x3F70101020000000
  br i1 %5229, label %5368, label %5230

; <label>:5230                                    ; preds = %5192, %5095
  %5231 = phi float [ %5228, %5192 ], [ %5089, %5095 ]
  %5232 = fmul fast float %5231, %5098
  %5233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.i32 %5233, 1
  %5235 = extractvalue %dx.types.CBufRet.i32 %5233, 0
  %5236 = add i32 %5235, 0
  %5237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5238 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5237, %dx.types.Handle %104, float %5187, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float %5150, float %5151, float undef, float %5154, float %5155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.ResRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.ResRet.f32 %5238, 2
  %5242 = extractvalue %dx.types.ResRet.f32 %5238, 3
  %5243 = and i32 %5234, 255
  %5244 = uitofp i32 %5243 to float
  %5245 = lshr i32 %5234, 8
  %5246 = and i32 %5245, 255
  %5247 = uitofp i32 %5246 to float
  %5248 = fmul fast float %5242, %5244
  %5249 = fadd fast float %5248, %5247
  %5250 = fmul fast float %5249, 0x3F70101000000000
  %5251 = fadd fast float %5250, 0xBFB99999A0000000
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5252, 0x3FF1C71C80000000
  %5254 = call float @dx.op.binary.f32(i32 36, float %5250, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5255 = fsub fast float 1.000000e+00, %5253
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5256, %5239
  %5258 = fmul fast float %5256, %5240
  %5259 = fmul fast float %5256, %5241
  %5260 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5261 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5263 = fmul fast float %5253, %5239
  %5264 = fmul fast float %5253, %5240
  %5265 = fmul fast float %5253, %5241
  %5266 = fadd fast float %5263, %5254
  %5267 = fadd fast float %5264, %5254
  %5268 = fadd fast float %5265, %5254
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.i32 %5272, 3
  %5274 = extractvalue %dx.types.CBufRet.i32 %5272, 2
  %5275 = add i32 %5274, 0
  %5276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5277 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5276, %dx.types.Handle %104, float %5187, float %5188, float undef, float undef, i32 0, i32 0, i32 undef, float %5150, float %5151, float undef, float %5154, float %5155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.ResRet.f32 %5277, 1
  %5280 = extractvalue %dx.types.ResRet.f32 %5277, 2
  %5281 = extractvalue %dx.types.ResRet.f32 %5277, 3
  %5282 = and i32 %5273, 255
  %5283 = uitofp i32 %5282 to float
  %5284 = lshr i32 %5273, 8
  %5285 = and i32 %5284, 255
  %5286 = uitofp i32 %5285 to float
  %5287 = lshr i32 %5273, 16
  %5288 = and i32 %5287, 255
  %5289 = uitofp i32 %5288 to float
  %5290 = fmul fast float %5289, 0x3F70101000000000
  %5291 = fmul fast float %5278, %5283
  %5292 = fadd fast float %5291, %5286
  %5293 = fmul fast float %5292, 0x3F70101000000000
  %5294 = fadd fast float %5279, -5.000000e-01
  %5295 = fadd fast float %5281, -5.000000e-01
  %5296 = fmul fast float %5294, %5290
  %5297 = fmul fast float %5295, %5290
  %5298 = fadd fast float %5296, 5.000000e-01
  %5299 = fadd fast float %5297, 5.000000e-01
  %5300 = fmul fast float %5298, 2.000000e+00
  %5301 = fadd fast float %5300, -1.000000e+00
  %5302 = fmul fast float %5299, 2.000000e+00
  %5303 = fadd fast float %5302, -1.000000e+00
  %5304 = fadd fast float %5301, %5303
  %5305 = fmul fast float %5304, 5.000000e-01
  %5306 = fsub fast float %5301, %5303
  %5307 = fmul fast float %5306, 5.000000e-01
  %5308 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5309 = fsub fast float 1.000000e+00, %5308
  %5310 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5311 = fsub fast float %5309, %5310
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5307, float %5311, float %5305, float %5307, float %5311)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.unary.f32(i32 25, float %5312)  ; Rsqrt(value)
  %5314 = fmul fast float %5305, %5313
  %5315 = fmul fast float %5307, %5313
  %5316 = select i1 %5143, i32 %5133, i32 %5134
  %5317 = select i1 %5141, i32 %5132, i32 %5316
  %5318 = sitofp i32 %5317 to float
  %5319 = fmul fast float %5311, %5318
  %5320 = fmul fast float %5319, %5313
  %5321 = select i1 %5143, float %5320, float %5315
  %5322 = select i1 %5143, float %5315, float %5320
  %5323 = select i1 %5141, float %5320, float %5314
  %5324 = select i1 %5141, float %5315, float %5321
  %5325 = select i1 %5141, float %5314, float %5322
  %5326 = fsub fast float %5260, %4693
  %5327 = fsub fast float %5261, %4694
  %5328 = fsub fast float %5262, %4695
  %5329 = fmul fast float %5326, %5232
  %5330 = fmul fast float %5327, %5232
  %5331 = fmul fast float %5328, %5232
  %5332 = fadd fast float %5329, %4693
  %5333 = fadd fast float %5330, %4694
  %5334 = fadd fast float %5331, %4695
  %5335 = fsub fast float %5269, %4675
  %5336 = fsub fast float %5270, %4676
  %5337 = fsub fast float %5271, %4677
  %5338 = fmul fast float %5335, %5232
  %5339 = fmul fast float %5336, %5232
  %5340 = fmul fast float %5337, %5232
  %5341 = fadd fast float %5338, %4675
  %5342 = fadd fast float %5339, %4676
  %5343 = fadd fast float %5340, %4677
  %5344 = fadd fast float %5323, %4636
  %5345 = fadd fast float %5324, %4637
  %5346 = fadd fast float %5325, %4638
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5344, float %5345, float %5346, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = call float @dx.op.unary.f32(i32 25, float %5347)  ; Rsqrt(value)
  %5349 = fmul fast float %5344, %5348
  %5350 = fmul fast float %5345, %5348
  %5351 = fmul fast float %5346, %5348
  %5352 = fsub fast float %5349, %4636
  %5353 = fsub fast float %5350, %4637
  %5354 = fsub fast float %5351, %4638
  %5355 = fmul fast float %5352, %5232
  %5356 = fmul fast float %5353, %5232
  %5357 = fmul fast float %5354, %5232
  %5358 = fadd fast float %5355, %4636
  %5359 = fadd fast float %5356, %4637
  %5360 = fadd fast float %5357, %4638
  %5361 = call float @dx.op.binary.f32(i32 36, float %4651, float %5280)  ; FMin(a,b)
  %5362 = fsub fast float %5361, %4651
  %5363 = fmul fast float %5362, %5232
  %5364 = fadd fast float %5363, %4651
  %5365 = fsub fast float %5293, %4678
  %5366 = fmul fast float %5365, %5232
  %5367 = fadd fast float %5366, %4678
  br label %5368

; <label>:5368                                    ; preds = %5230, %5192, %5094
  %5369 = phi float [ %5341, %5230 ], [ %4675, %5192 ], [ %4675, %5094 ]
  %5370 = phi float [ %5342, %5230 ], [ %4676, %5192 ], [ %4676, %5094 ]
  %5371 = phi float [ %5343, %5230 ], [ %4677, %5192 ], [ %4677, %5094 ]
  %5372 = phi float [ %5358, %5230 ], [ %4636, %5192 ], [ %4636, %5094 ]
  %5373 = phi float [ %5359, %5230 ], [ %4637, %5192 ], [ %4637, %5094 ]
  %5374 = phi float [ %5360, %5230 ], [ %4638, %5192 ], [ %4638, %5094 ]
  %5375 = phi float [ %5332, %5230 ], [ %4693, %5192 ], [ %4693, %5094 ]
  %5376 = phi float [ %5333, %5230 ], [ %4694, %5192 ], [ %4694, %5094 ]
  %5377 = phi float [ %5334, %5230 ], [ %4695, %5192 ], [ %4695, %5094 ]
  %5378 = phi float [ %5367, %5230 ], [ %4678, %5192 ], [ %4678, %5094 ]
  %5379 = phi float [ %5364, %5230 ], [ %4651, %5192 ], [ %4651, %5094 ]
  br i1 %5092, label %5380, label %5653

; <label>:5380                                    ; preds = %5368
  %5381 = call float @dx.op.unary.f32(i32 23, float %5379)  ; Log(value)
  %5382 = fmul fast float %5381, 4.000000e+00
  %5383 = call float @dx.op.unary.f32(i32 21, float %5382)  ; Exp(value)
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = fmul fast float %5385, %60
  %5387 = fmul fast float %5385, %61
  %5388 = fmul fast float %5385, %62
  %5389 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5390 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5391 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5392 = call float @dx.op.unary.f32(i32 23, float %5389)  ; Log(value)
  %5393 = call float @dx.op.unary.f32(i32 23, float %5390)  ; Log(value)
  %5394 = call float @dx.op.unary.f32(i32 23, float %5391)  ; Log(value)
  %5395 = fmul fast float %5392, 4.000000e+00
  %5396 = fmul fast float %5393, 4.000000e+00
  %5397 = fmul fast float %5394, 4.000000e+00
  %5398 = call float @dx.op.unary.f32(i32 21, float %5395)  ; Exp(value)
  %5399 = call float @dx.op.unary.f32(i32 21, float %5396)  ; Exp(value)
  %5400 = call float @dx.op.unary.f32(i32 21, float %5397)  ; Exp(value)
  %5401 = fadd fast float %5399, %5398
  %5402 = fadd fast float %5401, %5400
  %5403 = fdiv fast float 1.000000e+00, %5402
  %5404 = fmul fast float %5403, %5398
  %5405 = fcmp fast ogt float %69, 0.000000e+00
  %5406 = fcmp fast ogt float %70, 0.000000e+00
  %5407 = fcmp fast ogt float %71, 0.000000e+00
  %5408 = fcmp fast olt float %69, 0.000000e+00
  %5409 = fcmp fast olt float %70, 0.000000e+00
  %5410 = fcmp fast olt float %71, 0.000000e+00
  %5411 = zext i1 %5405 to i32
  %5412 = zext i1 %5406 to i32
  %5413 = zext i1 %5407 to i32
  %5414 = zext i1 %5408 to i32
  %5415 = zext i1 %5409 to i32
  %5416 = zext i1 %5410 to i32
  %5417 = sub nsw i32 %5411, %5414
  %5418 = sub nsw i32 %5412, %5415
  %5419 = sub nsw i32 %5413, %5416
  %5420 = call float @dx.op.unary.f32(i32 83, float %5386)  ; DerivCoarseX(value)
  %5421 = call float @dx.op.unary.f32(i32 83, float %5387)  ; DerivCoarseX(value)
  %5422 = call float @dx.op.unary.f32(i32 83, float %5388)  ; DerivCoarseX(value)
  %5423 = call float @dx.op.unary.f32(i32 84, float %5386)  ; DerivCoarseY(value)
  %5424 = call float @dx.op.unary.f32(i32 84, float %5387)  ; DerivCoarseY(value)
  %5425 = call float @dx.op.unary.f32(i32 84, float %5388)  ; DerivCoarseY(value)
  %5426 = fcmp fast ole float %278, %5404
  %5427 = fmul fast float %5403, %5401
  %5428 = fcmp fast ole float %278, %5427
  %5429 = select i1 %5428, float %5388, float %5386
  %5430 = select i1 %5428, float %5386, float %5387
  %5431 = select i1 %5426, float %5387, float %5429
  %5432 = select i1 %5426, float %5388, float %5430
  %5433 = select i1 %5428, float %5422, float %5420
  %5434 = select i1 %5428, float %5420, float %5421
  %5435 = select i1 %5426, float %5421, float %5433
  %5436 = select i1 %5426, float %5422, float %5434
  %5437 = select i1 %5428, float %5425, float %5423
  %5438 = select i1 %5428, float %5423, float %5424
  %5439 = select i1 %5426, float %5424, float %5437
  %5440 = select i1 %5426, float %5425, float %5438
  %5441 = call float @dx.op.unary.f32(i32 27, float %5431)  ; Round_ni(value)
  %5442 = call float @dx.op.unary.f32(i32 27, float %5432)  ; Round_ni(value)
  %5443 = fptosi float %5441 to i32
  %5444 = fptosi float %5442 to i32
  %5445 = xor i32 %5444, %5443
  %5446 = sitofp i32 %5445 to float
  %5447 = fptosi float %5446 to i32
  %5448 = sitofp i32 %5447 to float
  %5449 = fmul fast float %5448, 0x3FE3C6EF40000000
  %5450 = frem fast float %5441, 2.560000e+02
  %5451 = frem fast float %5442, 2.560000e+02
  %5452 = fptoui float %5450 to i32
  %5453 = fptoui float %5451 to i32
  %5454 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5452, i32 %5453, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = fadd fast float %5455, %5449
  %5459 = fadd fast float %5456, %5449
  %5460 = fadd fast float %5457, %5449
  %5461 = call float @dx.op.unary.f32(i32 22, float %5458)  ; Frc(value)
  %5462 = call float @dx.op.unary.f32(i32 22, float %5459)  ; Frc(value)
  %5463 = call float @dx.op.unary.f32(i32 22, float %5460)  ; Frc(value)
  %5464 = fmul fast float %5463, 0x401921FB60000000
  %5465 = call float @dx.op.unary.f32(i32 13, float %5464)  ; Sin(value)
  %5466 = call float @dx.op.unary.f32(i32 12, float %5464)  ; Cos(value)
  %5467 = fsub fast float -0.000000e+00, %5466
  %5468 = fmul fast float %5466, %5431
  %5469 = call float @dx.op.tertiary.f32(i32 46, float %5465, float %5432, float %5468)  ; FMad(a,b,c)
  %5470 = fmul fast float %5465, %5431
  %5471 = call float @dx.op.tertiary.f32(i32 46, float %5467, float %5432, float %5470)  ; FMad(a,b,c)
  %5472 = fadd fast float %5469, %5461
  %5473 = fadd fast float %5471, %5462
  %5474 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5475 = bitcast float %5474 to i32
  %5476 = icmp eq i32 %5475, 0
  br i1 %5476, label %5515, label %5477

; <label>:5477                                    ; preds = %5380
  %5478 = add i32 %5475, 0
  %5479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5480 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5479, %dx.types.Handle %105, float %5472, float %5473, float undef, float undef, i32 0, i32 0, i32 undef, float %5435, float %5436, float undef, float %5439, float %5440, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.f32 %5482, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5482, 2
  %5485 = fsub fast float 1.000000e+00, %5090
  %5486 = call float @dx.op.binary.f32(i32 35, float %5485, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5487 = bitcast float %5090 to i32
  %5488 = sitofp i32 %5487 to float
  %5489 = fadd fast float %5488, 0xC1CFBF8940000000
  %5490 = fmul fast float %5484, %5489
  %5491 = fadd fast float %5490, 0x41CFBF8940000000
  %5492 = fptosi float %5491 to i32
  %5493 = bitcast i32 %5492 to float
  %5494 = bitcast float %5486 to i32
  %5495 = sitofp i32 %5494 to float
  %5496 = fadd fast float %5495, 0xC1CFBF8940000000
  %5497 = fmul fast float %5496, %5484
  %5498 = fadd fast float %5497, 0x41CFBF8940000000
  %5499 = fptosi float %5498 to i32
  %5500 = bitcast i32 %5499 to float
  %5501 = fmul fast float %5493, %5483
  %5502 = fmul fast float %5500, %5483
  %5503 = fsub fast float %5486, %5501
  %5504 = fadd fast float %5502, %5486
  %5505 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5507 = fsub fast float %5481, %5505
  %5508 = fsub fast float %5506, %5505
  %5509 = bitcast float %5508 to i32
  %5510 = sub nsw i32 2129859010, %5509
  %5511 = bitcast i32 %5510 to float
  %5512 = fmul fast float %5511, %5507
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5514 = fcmp fast olt float %5513, 0x3F70101020000000
  br i1 %5514, label %5653, label %5515

; <label>:5515                                    ; preds = %5477, %5380
  %5516 = phi float [ %5513, %5477 ], [ %5090, %5380 ]
  %5517 = fmul fast float %5516, %5383
  %5518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.i32 %5518, 1
  %5520 = extractvalue %dx.types.CBufRet.i32 %5518, 0
  %5521 = add i32 %5520, 0
  %5522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5523 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5522, %dx.types.Handle %104, float %5472, float %5473, float undef, float undef, i32 0, i32 0, i32 undef, float %5435, float %5436, float undef, float %5439, float %5440, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = extractvalue %dx.types.ResRet.f32 %5523, 3
  %5528 = and i32 %5519, 255
  %5529 = uitofp i32 %5528 to float
  %5530 = lshr i32 %5519, 8
  %5531 = and i32 %5530, 255
  %5532 = uitofp i32 %5531 to float
  %5533 = fmul fast float %5527, %5529
  %5534 = fadd fast float %5533, %5532
  %5535 = fmul fast float %5534, 0x3F70101000000000
  %5536 = fadd fast float %5535, 0xBFB99999A0000000
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = fmul fast float %5537, 0x3FF1C71C80000000
  %5539 = call float @dx.op.binary.f32(i32 36, float %5535, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5540 = fsub fast float 1.000000e+00, %5538
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fmul fast float %5541, %5524
  %5543 = fmul fast float %5541, %5525
  %5544 = fmul fast float %5541, %5526
  %5545 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5546 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5548 = fmul fast float %5538, %5524
  %5549 = fmul fast float %5538, %5525
  %5550 = fmul fast float %5538, %5526
  %5551 = fadd fast float %5548, %5539
  %5552 = fadd fast float %5549, %5539
  %5553 = fadd fast float %5550, %5539
  %5554 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5555 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5556 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.i32 %5557, 3
  %5559 = extractvalue %dx.types.CBufRet.i32 %5557, 2
  %5560 = add i32 %5559, 0
  %5561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5562 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5561, %dx.types.Handle %104, float %5472, float %5473, float undef, float undef, i32 0, i32 0, i32 undef, float %5435, float %5436, float undef, float %5439, float %5440, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5563 = extractvalue %dx.types.ResRet.f32 %5562, 0
  %5564 = extractvalue %dx.types.ResRet.f32 %5562, 1
  %5565 = extractvalue %dx.types.ResRet.f32 %5562, 2
  %5566 = extractvalue %dx.types.ResRet.f32 %5562, 3
  %5567 = and i32 %5558, 255
  %5568 = uitofp i32 %5567 to float
  %5569 = lshr i32 %5558, 8
  %5570 = and i32 %5569, 255
  %5571 = uitofp i32 %5570 to float
  %5572 = lshr i32 %5558, 16
  %5573 = and i32 %5572, 255
  %5574 = uitofp i32 %5573 to float
  %5575 = fmul fast float %5574, 0x3F70101000000000
  %5576 = fmul fast float %5563, %5568
  %5577 = fadd fast float %5576, %5571
  %5578 = fmul fast float %5577, 0x3F70101000000000
  %5579 = fadd fast float %5564, -5.000000e-01
  %5580 = fadd fast float %5566, -5.000000e-01
  %5581 = fmul fast float %5579, %5575
  %5582 = fmul fast float %5580, %5575
  %5583 = fadd fast float %5581, 5.000000e-01
  %5584 = fadd fast float %5582, 5.000000e-01
  %5585 = fmul fast float %5583, 2.000000e+00
  %5586 = fadd fast float %5585, -1.000000e+00
  %5587 = fmul fast float %5584, 2.000000e+00
  %5588 = fadd fast float %5587, -1.000000e+00
  %5589 = fadd fast float %5586, %5588
  %5590 = fmul fast float %5589, 5.000000e-01
  %5591 = fsub fast float %5586, %5588
  %5592 = fmul fast float %5591, 5.000000e-01
  %5593 = call float @dx.op.unary.f32(i32 6, float %5590)  ; FAbs(value)
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = call float @dx.op.unary.f32(i32 6, float %5592)  ; FAbs(value)
  %5596 = fsub fast float %5594, %5595
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5592, float %5596, float %5590, float %5592, float %5596)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = call float @dx.op.unary.f32(i32 25, float %5597)  ; Rsqrt(value)
  %5599 = fmul fast float %5590, %5598
  %5600 = fmul fast float %5592, %5598
  %5601 = select i1 %5428, i32 %5418, i32 %5419
  %5602 = select i1 %5426, i32 %5417, i32 %5601
  %5603 = sitofp i32 %5602 to float
  %5604 = fmul fast float %5596, %5603
  %5605 = fmul fast float %5604, %5598
  %5606 = select i1 %5428, float %5605, float %5600
  %5607 = select i1 %5428, float %5600, float %5605
  %5608 = select i1 %5426, float %5605, float %5599
  %5609 = select i1 %5426, float %5600, float %5606
  %5610 = select i1 %5426, float %5599, float %5607
  %5611 = fsub fast float %5545, %5375
  %5612 = fsub fast float %5546, %5376
  %5613 = fsub fast float %5547, %5377
  %5614 = fmul fast float %5611, %5517
  %5615 = fmul fast float %5612, %5517
  %5616 = fmul fast float %5613, %5517
  %5617 = fadd fast float %5614, %5375
  %5618 = fadd fast float %5615, %5376
  %5619 = fadd fast float %5616, %5377
  %5620 = fsub fast float %5554, %5369
  %5621 = fsub fast float %5555, %5370
  %5622 = fsub fast float %5556, %5371
  %5623 = fmul fast float %5620, %5517
  %5624 = fmul fast float %5621, %5517
  %5625 = fmul fast float %5622, %5517
  %5626 = fadd fast float %5623, %5369
  %5627 = fadd fast float %5624, %5370
  %5628 = fadd fast float %5625, %5371
  %5629 = fadd fast float %5608, %5372
  %5630 = fadd fast float %5609, %5373
  %5631 = fadd fast float %5610, %5374
  %5632 = call float @dx.op.dot3.f32(i32 55, float %5629, float %5630, float %5631, float %5629, float %5630, float %5631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = call float @dx.op.unary.f32(i32 25, float %5632)  ; Rsqrt(value)
  %5634 = fmul fast float %5629, %5633
  %5635 = fmul fast float %5630, %5633
  %5636 = fmul fast float %5631, %5633
  %5637 = fsub fast float %5634, %5372
  %5638 = fsub fast float %5635, %5373
  %5639 = fsub fast float %5636, %5374
  %5640 = fmul fast float %5637, %5517
  %5641 = fmul fast float %5638, %5517
  %5642 = fmul fast float %5639, %5517
  %5643 = fadd fast float %5640, %5372
  %5644 = fadd fast float %5641, %5373
  %5645 = fadd fast float %5642, %5374
  %5646 = call float @dx.op.binary.f32(i32 36, float %5379, float %5565)  ; FMin(a,b)
  %5647 = fsub fast float %5646, %5379
  %5648 = fmul fast float %5647, %5517
  %5649 = fadd fast float %5648, %5379
  %5650 = fsub fast float %5578, %5378
  %5651 = fmul fast float %5650, %5517
  %5652 = fadd fast float %5651, %5378
  br label %5653

; <label>:5653                                    ; preds = %5515, %5477, %5368, %5084
  %5654 = phi float [ %5626, %5515 ], [ %5369, %5477 ], [ %5369, %5368 ], [ %4675, %5084 ]
  %5655 = phi float [ %5627, %5515 ], [ %5370, %5477 ], [ %5370, %5368 ], [ %4676, %5084 ]
  %5656 = phi float [ %5628, %5515 ], [ %5371, %5477 ], [ %5371, %5368 ], [ %4677, %5084 ]
  %5657 = phi float [ %5643, %5515 ], [ %5372, %5477 ], [ %5372, %5368 ], [ %4636, %5084 ]
  %5658 = phi float [ %5644, %5515 ], [ %5373, %5477 ], [ %5373, %5368 ], [ %4637, %5084 ]
  %5659 = phi float [ %5645, %5515 ], [ %5374, %5477 ], [ %5374, %5368 ], [ %4638, %5084 ]
  %5660 = phi float [ %5617, %5515 ], [ %5375, %5477 ], [ %5375, %5368 ], [ %4693, %5084 ]
  %5661 = phi float [ %5618, %5515 ], [ %5376, %5477 ], [ %5376, %5368 ], [ %4694, %5084 ]
  %5662 = phi float [ %5619, %5515 ], [ %5377, %5477 ], [ %5377, %5368 ], [ %4695, %5084 ]
  %5663 = phi float [ %5652, %5515 ], [ %5378, %5477 ], [ %5378, %5368 ], [ %4678, %5084 ]
  %5664 = phi float [ %5649, %5515 ], [ %5379, %5477 ], [ %5379, %5368 ], [ %4651, %5084 ]
  %5665 = fcmp fast une float %5088, 0.000000e+00
  br i1 %5665, label %5666, label %5835

; <label>:5666                                    ; preds = %5653
  %5667 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.unary.f32(i32 25, float %5667)  ; Rsqrt(value)
  %5669 = fmul fast float %195, %5668
  %5670 = fsub fast float -0.000000e+00, %5669
  %5671 = fmul fast float %196, %5668
  %5672 = fsub fast float -0.000000e+00, %5671
  %5673 = fmul fast float %197, %5668
  %5674 = fsub fast float -0.000000e+00, %5673
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5672, float %5674, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fmul fast float %5088, 2.500000e+00
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fmul fast float %5088, 0x4013FFFFE0000000
  %5679 = fadd fast float %5678, 0xBFFFFFFFE0000000
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = fmul fast float %5088, 0x4004000020000000
  %5682 = fadd fast float %5681, 0xBFF8000040000000
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fmul fast float %4657, 1.000000e+01
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = fmul fast float %5685, 2.000000e+00
  %5687 = fsub fast float 3.000000e+00, %5686
  %5688 = fmul fast float %5685, %5685
  %5689 = fmul fast float %5688, %5687
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = fsub fast float 0x3FE3333340000000, %5663
  %5692 = fmul fast float %5691, 0x400AAAAAA0000000
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = fmul fast float %5690, %5693
  %5695 = fmul fast float %5660, 0x3FEA2B8620000000
  %5696 = fmul fast float %5661, 0x3FEA2B8620000000
  %5697 = fmul fast float %5662, 0x3FEA2B8620000000
  %5698 = fadd fast float %5695, 0x3FC81DFBA0000000
  %5699 = fmul fast float %5698, %5660
  %5700 = fadd fast float %5699, 0x3F910E6020000000
  %5701 = fadd fast float %5696, 0x3FC81DFBA0000000
  %5702 = fmul fast float %5701, %5661
  %5703 = fadd fast float %5702, 0x3F910E6020000000
  %5704 = fadd fast float %5697, 0x3FC81DFBA0000000
  %5705 = fmul fast float %5704, %5662
  %5706 = fadd fast float %5705, 0x3F910E6020000000
  %5707 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5709 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5710 = fsub fast float %5707, %5660
  %5711 = fsub fast float %5708, %5661
  %5712 = fsub fast float %5709, %5662
  %5713 = fmul fast float %5710, %5677
  %5714 = fmul fast float %5713, %5694
  %5715 = fmul fast float %5711, %5677
  %5716 = fmul fast float %5715, %5694
  %5717 = fmul fast float %5712, %5677
  %5718 = fmul fast float %5717, %5694
  %5719 = fadd fast float %5714, %5660
  %5720 = fadd fast float %5716, %5661
  %5721 = fadd fast float %5718, %5662
  %5722 = fmul fast float %5664, %5664
  %5723 = fmul fast float %5722, %5722
  %5724 = fadd fast float %5680, 1.000000e+00
  %5725 = fsub fast float %5724, %5694
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = fsub fast float 1.000000e+00, %5723
  %5730 = call float @dx.op.binary.f32(i32 36, float %5726, float %5729)  ; FMin(a,b)
  %5731 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5732 = call float @dx.op.binary.f32(i32 35, float %5730, float %5731)  ; FMax(a,b)
  %5733 = fadd fast float %5728, 0xBFE4CCCCC0000000
  %5734 = fmul fast float %5733, 0x4006DB6DA0000000
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fmul fast float %5735, 2.000000e+00
  %5737 = fsub fast float 3.000000e+00, %5736
  %5738 = bitcast float %5654 to i32
  %5739 = ashr i32 %5738, 1
  %5740 = add nsw i32 %5739, 532487669
  %5741 = bitcast i32 %5740 to float
  %5742 = fsub fast float 1.000000e+00, %5741
  %5743 = bitcast float %5742 to i32
  %5744 = sub nsw i32 2129859010, %5743
  %5745 = bitcast i32 %5744 to float
  %5746 = fmul fast float %5745, 2.000000e+00
  %5747 = bitcast float %5655 to i32
  %5748 = ashr i32 %5747, 1
  %5749 = add nsw i32 %5748, 532487669
  %5750 = bitcast i32 %5749 to float
  %5751 = fsub fast float 1.000000e+00, %5750
  %5752 = bitcast float %5751 to i32
  %5753 = sub nsw i32 2129859010, %5752
  %5754 = bitcast i32 %5753 to float
  %5755 = fmul fast float %5754, 2.000000e+00
  %5756 = bitcast float %5656 to i32
  %5757 = ashr i32 %5756, 1
  %5758 = add nsw i32 %5757, 532487669
  %5759 = bitcast i32 %5758 to float
  %5760 = fsub fast float 1.000000e+00, %5759
  %5761 = bitcast float %5760 to i32
  %5762 = sub nsw i32 2129859010, %5761
  %5763 = bitcast i32 %5762 to float
  %5764 = fmul fast float %5763, 2.000000e+00
  %5765 = fsub fast float 0x4002A9FBE0000000, %5746
  %5766 = fadd fast float %5746, 0x3FD54FDF00000000
  %5767 = bitcast float %5766 to i32
  %5768 = sub nsw i32 2129859010, %5767
  %5769 = bitcast i32 %5768 to float
  %5770 = fmul fast float %5769, %5765
  %5771 = fmul fast float %5770, %5770
  %5772 = fsub fast float 0x4002A9FBE0000000, %5755
  %5773 = fadd fast float %5755, 0x3FD54FDF00000000
  %5774 = bitcast float %5773 to i32
  %5775 = sub nsw i32 2129859010, %5774
  %5776 = bitcast i32 %5775 to float
  %5777 = fmul fast float %5776, %5772
  %5778 = fmul fast float %5777, %5777
  %5779 = fsub fast float 0x4002A9FBE0000000, %5764
  %5780 = fadd fast float %5764, 0x3FD54FDF00000000
  %5781 = bitcast float %5780 to i32
  %5782 = sub nsw i32 2129859010, %5781
  %5783 = bitcast i32 %5782 to float
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5784
  %5786 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5771)  ; FMax(a,b)
  %5787 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5778)  ; FMax(a,b)
  %5788 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5785)  ; FMax(a,b)
  %5789 = fsub fast float 1.000000e+00, %5675
  %5790 = fadd fast float %5789, %5690
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fsub fast float 1.000000e+00, %5069
  %5793 = fmul fast float %5732, %5792
  %5794 = fmul fast float %5735, %5735
  %5795 = fmul fast float %5794, %5793
  %5796 = fmul fast float %5795, %5737
  %5797 = fmul fast float %5792, 0xBFE99999A0000000
  %5798 = fmul fast float %5797, %5677
  %5799 = fmul fast float %5798, %5694
  %5800 = fadd fast float %5799, 1.000000e+00
  %5801 = fadd fast float %5663, -1.000000e+00
  %5802 = fmul fast float %5800, %5801
  %5803 = fadd fast float %5802, 1.000000e+00
  %5804 = fsub fast float %5786, %5654
  %5805 = fsub fast float %5787, %5655
  %5806 = fsub fast float %5788, %5656
  %5807 = fmul fast float %5796, %5804
  %5808 = fmul fast float %5796, %5805
  %5809 = fmul fast float %5796, %5806
  %5810 = fadd fast float %5807, %5654
  %5811 = fadd fast float %5808, %5655
  %5812 = fadd fast float %5809, %5656
  %5813 = fsub fast float %115, %5657
  %5814 = fsub fast float %116, %5658
  %5815 = fsub fast float %117, %5659
  %5816 = fmul fast float %5796, %5813
  %5817 = fmul fast float %5796, %5814
  %5818 = fmul fast float %5796, %5815
  %5819 = fadd fast float %5816, %5657
  %5820 = fadd fast float %5817, %5658
  %5821 = fadd fast float %5818, %5659
  %5822 = fmul fast float %5796, %5791
  %5823 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = fmul fast float %5822, %5824
  %5826 = fadd fast float %5825, %5823
  %5827 = fsub fast float 1.000000e+00, %5664
  %5828 = fmul fast float %5796, %5827
  %5829 = fadd fast float %5828, %5664
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5819, float %5820, float %5821, float %5819, float %5820, float %5821)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.unary.f32(i32 25, float %5830)  ; Rsqrt(value)
  %5832 = fmul fast float %5819, %5831
  %5833 = fmul fast float %5820, %5831
  %5834 = fmul fast float %5821, %5831
  br label %5835

; <label>:5835                                    ; preds = %5666, %5653
  %5836 = phi float [ %5810, %5666 ], [ %5654, %5653 ]
  %5837 = phi float [ %5811, %5666 ], [ %5655, %5653 ]
  %5838 = phi float [ %5812, %5666 ], [ %5656, %5653 ]
  %5839 = phi float [ %5832, %5666 ], [ %5657, %5653 ]
  %5840 = phi float [ %5833, %5666 ], [ %5658, %5653 ]
  %5841 = phi float [ %5834, %5666 ], [ %5659, %5653 ]
  %5842 = phi float [ %5719, %5666 ], [ %5660, %5653 ]
  %5843 = phi float [ %5720, %5666 ], [ %5661, %5653 ]
  %5844 = phi float [ %5721, %5666 ], [ %5662, %5653 ]
  %5845 = phi float [ %5826, %5666 ], [ %5663, %5653 ]
  %5846 = phi float [ %5829, %5666 ], [ %5664, %5653 ]
  %5847 = icmp eq i32 %58, 0
  br i1 %5847, label %5878, label %5848

; <label>:5848                                    ; preds = %5835
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5852 = fmul fast float %5850, %108
  %5853 = fmul fast float %5851, %109
  %5854 = fmul fast float %5852, 1.024000e+03
  %5855 = fmul fast float %5853, 1.024000e+03
  %5856 = fadd fast float %5854, -5.120000e+02
  %5857 = fadd fast float %5855, -5.120000e+02
  %5858 = fmul fast float %5852, 0x4081BEDF00000000
  %5859 = fadd fast float %5858, 0xC071BEDF00000000
  %5860 = call float @dx.op.unary.f32(i32 22, float %5859)  ; Frc(value)
  %5861 = fmul fast float %5856, %5860
  %5862 = fadd fast float %5861, %5857
  %5863 = fmul fast float %5853, 0x4073BEBE20000000
  %5864 = fadd fast float %5863, 0xC063BEBE20000000
  %5865 = call float @dx.op.unary.f32(i32 22, float %5864)  ; Frc(value)
  %5866 = fmul fast float %5857, %5865
  %5867 = fadd fast float %5866, %5856
  %5868 = fmul fast float %5862, %5867
  %5869 = call float @dx.op.unary.f32(i32 22, float %5868)  ; Frc(value)
  %5870 = add i32 %321, 12
  %5871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5870, i32 undef)  ; BufferLoad(srv,index,wot)
  %5872 = extractvalue %dx.types.ResRet.i32 %5871, 0
  %5873 = and i32 %5872, 255
  %5874 = uitofp i32 %5873 to float
  %5875 = fmul fast float %5874, 0x3F70101020000000
  %5876 = fcmp fast olt float %5869, %5875
  br i1 %5876, label %5877, label %5878

; <label>:5877                                    ; preds = %5848
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5878

; <label>:5878                                    ; preds = %5877, %5848, %5835
  %5879 = fsub fast float -0.000000e+00, %197
  %5880 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.unary.f32(i32 25, float %5880)  ; Rsqrt(value)
  %5882 = fmul fast float %5881, %195
  %5883 = fmul fast float %5881, %196
  %5884 = fmul fast float %5881, %197
  %5885 = fsub fast float -0.000000e+00, %5882
  %5886 = fsub fast float -0.000000e+00, %5883
  %5887 = fsub fast float -0.000000e+00, %5884
  %5888 = select i1 %267, float 0.000000e+00, float %5838
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %5885, float %5886, float %5887)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float %5839, float %5840, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = fmul fast float %5891, 2.000000e+00
  %5893 = fmul fast float %5892, %5839
  %5894 = fmul fast float %5892, %5840
  %5895 = fmul fast float %5892, %5841
  %5896 = fsub fast float %5882, %5893
  %5897 = fsub fast float %5883, %5894
  %5898 = fsub fast float %5884, %5895
  %5899 = call float @dx.op.binary.f32(i32 36, float %5846, float 1.000000e+00)  ; FMin(a,b)
  %5900 = fsub fast float 1.000000e+00, %5846
  %5901 = bitcast float %5900 to i32
  %5902 = sub nsw i32 2129859010, %5901
  %5903 = bitcast i32 %5902 to float
  %5904 = fsub fast float 1.000000e+00, %79
  %5905 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5905, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5907 = fdiv fast float %5904, %5906
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = fmul fast float %5909, 5.000000e-01
  %5911 = fadd fast float %5910, 5.000000e-01
  %5912 = fmul fast float %5911, %79
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5915 = fmul fast float %5914, %5907
  %5916 = fadd fast float %5912, %5915
  %5917 = fsub fast float 5.000000e-01, %5910
  %5918 = fmul fast float %5917, %5842
  %5919 = fmul fast float %5917, %5843
  %5920 = fmul fast float %5917, %5844
  %5921 = fadd fast float %5916, %5918
  %5922 = fadd fast float %5916, %5919
  %5923 = fadd fast float %5916, %5920
  %5924 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = fmul fast float %5925, 5.000000e-01
  %5927 = fadd fast float %5926, 5.000000e-01
  %5928 = fmul fast float %5927, %79
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = fmul fast float %5930, %5907
  %5932 = fadd fast float %5928, %5931
  %5933 = fsub fast float 5.000000e-01, %5926
  %5934 = fmul fast float %5933, %5842
  %5935 = fmul fast float %5933, %5843
  %5936 = fmul fast float %5933, %5844
  %5937 = fadd fast float %5932, %5934
  %5938 = fadd fast float %5932, %5935
  %5939 = fadd fast float %5932, %5936
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = call float @dx.op.binary.f32(i32 36, float %5842, float %5941)  ; FMin(a,b)
  %5943 = fsub fast float 1.000000e+00, %5899
  %5944 = fmul fast float %5942, %5943
  %5945 = fsub fast float 1.000000e+00, %5944
  %5946 = bitcast float %5945 to i32
  %5947 = sub nsw i32 2129859010, %5946
  %5948 = bitcast i32 %5947 to float
  %5949 = call float @dx.op.binary.f32(i32 36, float %5843, float %5941)  ; FMin(a,b)
  %5950 = fmul fast float %5949, %5943
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = bitcast float %5951 to i32
  %5953 = sub nsw i32 2129859010, %5952
  %5954 = bitcast i32 %5953 to float
  %5955 = call float @dx.op.binary.f32(i32 36, float %5844, float %5941)  ; FMin(a,b)
  %5956 = fmul fast float %5955, %5943
  %5957 = fsub fast float 1.000000e+00, %5956
  %5958 = bitcast float %5957 to i32
  %5959 = sub nsw i32 2129859010, %5958
  %5960 = bitcast i32 %5959 to float
  %5961 = fmul fast float %5899, %80
  %5962 = fmul fast float %5961, %5921
  %5963 = fmul fast float %5962, %5948
  %5964 = fmul fast float %5899, %81
  %5965 = fmul fast float %5964, %5922
  %5966 = fmul fast float %5965, %5954
  %5967 = fmul fast float %5899, %82
  %5968 = fmul fast float %5967, %5923
  %5969 = fmul fast float %5968, %5960
  %5970 = call float @dx.op.binary.f32(i32 36, float %5836, float %5941)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5943
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = call float @dx.op.binary.f32(i32 36, float %5837, float %5941)  ; FMin(a,b)
  %5977 = fmul fast float %5976, %5943
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = bitcast float %5978 to i32
  %5980 = sub nsw i32 2129859010, %5979
  %5981 = bitcast i32 %5980 to float
  %5982 = call float @dx.op.binary.f32(i32 36, float %5888, float %5941)  ; FMin(a,b)
  %5983 = fmul fast float %5982, %5943
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = bitcast float %5984 to i32
  %5986 = sub nsw i32 2129859010, %5985
  %5987 = bitcast i32 %5986 to float
  %5988 = fmul fast float %5961, %5937
  %5989 = fmul fast float %5988, %5975
  %5990 = fmul fast float %5964, %5938
  %5991 = fmul fast float %5990, %5981
  %5992 = fmul fast float %5967, %5939
  %5993 = fmul fast float %5992, %5987
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5963, float %5966, float %5969, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = select i1 %267, float 0.000000e+00, float %5963
  %5996 = select i1 %267, float %5994, float %5966
  %5997 = select i1 %267, float 0.000000e+00, float %5969
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5989, float %5991, float %5993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = select i1 %267, float 0.000000e+00, float %5989
  %6000 = select i1 %267, float %5998, float %5991
  %6001 = select i1 %267, float 0.000000e+00, float %5993
  %6002 = fmul fast float %4012, %4012
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = fmul fast float %5890, 9.843750e-01
  %6005 = fmul fast float %5845, 9.843750e-01
  %6006 = fadd fast float %6004, 7.812500e-03
  %6007 = fadd fast float %6005, 7.812500e-03
  %6008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6006, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = extractvalue %dx.types.ResRet.f32 %6008, 3
  %6013 = fsub fast float 1.000000e+00, %6003
  %6014 = fsub fast float %6011, %6009
  %6015 = fsub fast float %6012, %6010
  %6016 = fmul fast float %6014, %6013
  %6017 = fmul fast float %6015, %6013
  %6018 = fadd fast float %6016, %6009
  %6019 = fadd fast float %6017, %6010
  %6020 = fmul fast float %6018, %5836
  %6021 = fmul fast float %6018, %5837
  %6022 = fmul fast float %6018, %5888
  %6023 = fadd fast float %6020, %6019
  %6024 = fadd fast float %6021, %6019
  %6025 = fadd fast float %6022, %6019
  %6026 = fcmp fast ogt float %4652, 0.000000e+00
  br i1 %6026, label %6027, label %6053

; <label>:6027                                    ; preds = %5878
  %6028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4652, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6029 = extractvalue %dx.types.ResRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.ResRet.f32 %6028, 1
  %6031 = extractvalue %dx.types.ResRet.f32 %6028, 2
  %6032 = fadd fast float %6029, -5.000000e-01
  %6033 = fadd fast float %6030, -5.000000e-01
  %6034 = fadd fast float %6031, -5.000000e-01
  %6035 = fsub fast float 1.000000e+00, %5836
  %6036 = fsub fast float 1.000000e+00, %5837
  %6037 = fsub fast float 1.000000e+00, %5888
  %6038 = fmul fast float %5836, 4.000000e+00
  %6039 = fmul fast float %6038, %6035
  %6040 = fmul fast float %6039, %6032
  %6041 = fmul fast float %5837, 4.000000e+00
  %6042 = fmul fast float %6041, %6036
  %6043 = fmul fast float %6042, %6033
  %6044 = fmul fast float %5888, 4.000000e+00
  %6045 = fmul fast float %6044, %6037
  %6046 = fmul fast float %6045, %6034
  %6047 = fadd fast float %6040, %6023
  %6048 = fadd fast float %6043, %6024
  %6049 = fadd fast float %6046, %6025
  %6050 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6051 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6052 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  br label %6053

; <label>:6053                                    ; preds = %6027, %5878
  %6054 = phi float [ %6050, %6027 ], [ %6023, %5878 ]
  %6055 = phi float [ %6051, %6027 ], [ %6024, %5878 ]
  %6056 = phi float [ %6052, %6027 ], [ %6025, %5878 ]
  %6057 = call float @dx.op.binary.f32(i32 35, float %6055, float %6056)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float %6054, float %6057)  ; FMax(a,b)
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = fmul fast float %6059, %5995
  %6061 = fmul fast float %6059, %5996
  %6062 = fmul fast float %6059, %5997
  %6063 = call float @dx.op.dot3.f32(i32 55, float %5842, float %5843, float %5844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = fcmp fast ogt float %6063, 0x3E7FF19E20000000
  %6065 = fdiv fast float 1.000000e+00, %6063
  %6066 = select i1 %6064, float %6065, float 0.000000e+00
  %6067 = fmul fast float %6066, %5842
  %6068 = fmul fast float %6066, %5843
  %6069 = fmul fast float %6066, %5844
  %6070 = fadd fast float %6067, -1.000000e+00
  %6071 = fadd fast float %6068, -1.000000e+00
  %6072 = fadd fast float %6069, -1.000000e+00
  %6073 = fmul fast float %6070, 5.000000e-01
  %6074 = fmul fast float %6071, 5.000000e-01
  %6075 = fmul fast float %6072, 5.000000e-01
  %6076 = fadd fast float %6073, 1.000000e+00
  %6077 = fadd fast float %6074, 1.000000e+00
  %6078 = fadd fast float %6075, 1.000000e+00
  %6079 = call float @dx.op.binary.f32(i32 35, float %5890, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6080 = fdiv fast float %4012, %6079
  %6081 = fcmp fast olt float %4679, 1.270000e+02
  %6082 = fcmp fast olt float %4680, 1.270000e+02
  %6083 = fcmp fast olt float %4681, 1.270000e+02
  %6084 = fmul fast float %4679, 0xBFF7154760000000
  %6085 = fmul fast float %6084, %6080
  %6086 = fmul fast float %4680, 0xBFF7154760000000
  %6087 = fmul fast float %6086, %6080
  %6088 = fmul fast float %4681, 0xBFF7154760000000
  %6089 = fmul fast float %6088, %6080
  %6090 = call float @dx.op.unary.f32(i32 21, float %6085)  ; Exp(value)
  %6091 = call float @dx.op.unary.f32(i32 21, float %6087)  ; Exp(value)
  %6092 = call float @dx.op.unary.f32(i32 21, float %6089)  ; Exp(value)
  %6093 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6094 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6095 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6096 = select i1 %6081, float %6093, float 0.000000e+00
  %6097 = select i1 %6082, float %6094, float 0.000000e+00
  %6098 = select i1 %6083, float %6095, float 0.000000e+00
  %6099 = fmul fast float %6096, %6059
  %6100 = fmul fast float %6097, %6059
  %6101 = fmul fast float %6098, %6059
  %6102 = fadd fast float %6099, -1.000000e+00
  %6103 = fadd fast float %6100, -1.000000e+00
  %6104 = fadd fast float %6101, -1.000000e+00
  %6105 = fmul fast float %6054, %5999
  %6106 = fmul fast float %6055, %6000
  %6107 = fmul fast float %6056, %6001
  %6108 = fsub fast float 1.000000e+00, %5890
  %6109 = bitcast float %6108 to i32
  %6110 = sitofp i32 %6109 to float
  %6111 = fmul fast float %6110, 5.000000e+00
  %6112 = fadd fast float %6111, 0xC1EFBF8940000000
  %6113 = fptosi float %6112 to i32
  %6114 = bitcast i32 %6113 to float
  %6115 = fmul fast float %6114, %4653
  %6116 = fmul fast float %5995, %6115
  %6117 = fmul fast float %6116, %6059
  %6118 = fmul fast float %6117, %6076
  %6119 = fmul fast float %5996, %6115
  %6120 = fmul fast float %6119, %6059
  %6121 = fmul fast float %6120, %6077
  %6122 = fmul fast float %5997, %6115
  %6123 = fmul fast float %6122, %6059
  %6124 = fmul fast float %6123, %6078
  %6125 = fmul fast float %6060, %4649
  %6126 = fmul fast float %6061, %4649
  %6127 = fmul fast float %6062, %4649
  %6128 = fadd fast float %6105, %4642
  %6129 = fadd fast float %6128, %6118
  %6130 = fmul fast float %6129, %4649
  %6131 = fadd fast float %6106, %4643
  %6132 = fadd fast float %6131, %6121
  %6133 = fmul fast float %6132, %4649
  %6134 = fadd fast float %6107, %4644
  %6135 = fadd fast float %6134, %6124
  %6136 = fmul fast float %6135, %4649
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 3
  %6139 = fcmp fast oeq float %6138, 0.000000e+00
  br i1 %6139, label %7236, label %6140

; <label>:6140                                    ; preds = %6053
  %6141 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = call float @dx.op.dot3.f32(i32 55, float %6145, float %6146, float %6147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6152 = select i1 %267, float %6149, float %6145
  %6153 = select i1 %267, float %6151, float %6146
  %6154 = select i1 %267, float %6150, float %6147
  %6155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.f32 %6155, 2
  %6157 = fmul fast float %6156, %115
  %6158 = fmul fast float %6156, %116
  %6159 = fmul fast float %6156, %117
  %6160 = fadd fast float %6157, %195
  %6161 = fadd fast float %6158, %196
  %6162 = fadd fast float %6159, %197
  %6163 = fcmp fast olt float %6138, 0.000000e+00
  br i1 %6163, label %6803, label %6164

; <label>:6164                                    ; preds = %6140
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6169 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6172 = extractvalue %dx.types.CBufRet.f32 %6170, 1
  %6173 = extractvalue %dx.types.CBufRet.f32 %6170, 2
  %6174 = extractvalue %dx.types.CBufRet.f32 %6170, 3
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6178 = extractvalue %dx.types.CBufRet.f32 %6175, 2
  %6179 = extractvalue %dx.types.CBufRet.f32 %6175, 3
  %6180 = fmul fast float %6166, %6160
  %6181 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6167, float %6180)  ; FMad(a,b,c)
  %6182 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6168, float %6181)  ; FMad(a,b,c)
  %6183 = fadd fast float %6182, %6169
  %6184 = fmul fast float %6171, %6160
  %6185 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6172, float %6184)  ; FMad(a,b,c)
  %6186 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6173, float %6185)  ; FMad(a,b,c)
  %6187 = fadd fast float %6186, %6174
  %6188 = fmul fast float %6176, %6160
  %6189 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6177, float %6188)  ; FMad(a,b,c)
  %6190 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6178, float %6189)  ; FMad(a,b,c)
  %6191 = fadd fast float %6190, %6179
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  %6194 = fcmp fast une float %6193, 0.000000e+00
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6199 = fmul fast float %6198, %6183
  %6200 = fmul fast float %6198, %6187
  %6201 = fadd fast float %6199, %6196
  %6202 = fadd fast float %6200, %6197
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6206 = extractvalue %dx.types.CBufRet.f32 %6203, 3
  %6207 = fmul fast float %6206, %6183
  %6208 = fmul fast float %6206, %6187
  %6209 = fadd fast float %6207, %6204
  %6210 = fadd fast float %6208, %6205
  %6211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6211, 1
  %6213 = fsub fast float %6212, %6191
  %6214 = extractvalue %dx.types.CBufRet.f32 %6211, 2
  %6215 = fmul fast float %6213, %6214
  %6216 = fsub fast float 1.000000e+00, %6215
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  br i1 %6194, label %6278, label %6218

; <label>:6218                                    ; preds = %6164
  %6219 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6220, 2
  %6222 = fadd fast float %6221, %6219
  %6223 = fcmp fast ogt float %6222, 0.000000e+00
  br i1 %6223, label %6224, label %6248

; <label>:6224                                    ; preds = %6218
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = fsub fast float %6209, %6226
  %6229 = fsub fast float %6210, %6227
  %6230 = fcmp fast olt float %6228, 0.000000e+00
  %6231 = fcmp fast olt float %6229, 0.000000e+00
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6236 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6237 = select i1 %6230, float %6233, float %6235
  %6238 = select i1 %6231, float %6234, float %6236
  %6239 = fmul fast float %6237, %6228
  %6240 = fmul fast float %6238, %6229
  %6241 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6242 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6244 = call float @dx.op.binary.f32(i32 35, float %6241, float %6242)  ; FMax(a,b)
  %6245 = fsub fast float %6243, %6244
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6247 = fmul fast float %6246, %6217
  br label %6248

; <label>:6248                                    ; preds = %6224, %6218
  %6249 = phi float [ %6247, %6224 ], [ 0.000000e+00, %6218 ]
  %6250 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6251 = extractvalue %dx.types.CBufRet.f32 %6220, 1
  %6252 = fadd fast float %6251, %6250
  %6253 = fcmp fast ogt float %6252, 0.000000e+00
  br i1 %6253, label %6254, label %6278

; <label>:6254                                    ; preds = %6248
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6258 = fsub fast float %6201, %6256
  %6259 = fsub fast float %6202, %6257
  %6260 = fcmp fast olt float %6258, 0.000000e+00
  %6261 = fcmp fast olt float %6259, 0.000000e+00
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6267 = select i1 %6260, float %6263, float %6265
  %6268 = select i1 %6261, float %6264, float %6266
  %6269 = fmul fast float %6267, %6258
  %6270 = fmul fast float %6268, %6259
  %6271 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6272 = call float @dx.op.unary.f32(i32 6, float %6270)  ; FAbs(value)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6274 = call float @dx.op.binary.f32(i32 35, float %6271, float %6272)  ; FMax(a,b)
  %6275 = fsub fast float %6273, %6274
  %6276 = call float @dx.op.unary.f32(i32 7, float %6275)  ; Saturate(value)
  %6277 = fmul fast float %6276, %6217
  br label %6278

; <label>:6278                                    ; preds = %6254, %6248, %6164
  %6279 = phi float [ 0.000000e+00, %6164 ], [ %6277, %6254 ], [ 0.000000e+00, %6248 ]
  %6280 = phi float [ 0.000000e+00, %6164 ], [ %6249, %6254 ], [ %6249, %6248 ]
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = fsub fast float %6183, %6285
  %6288 = fsub fast float %6187, %6286
  %6289 = fcmp fast olt float %6287, 0.000000e+00
  %6290 = fcmp fast olt float %6288, 0.000000e+00
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6296 = select i1 %6289, float %6292, float %6294
  %6297 = select i1 %6290, float %6293, float %6295
  %6298 = fmul fast float %6296, %6287
  %6299 = fmul fast float %6297, %6288
  %6300 = call float @dx.op.unary.f32(i32 6, float %6298)  ; FAbs(value)
  %6301 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6303 = call float @dx.op.binary.f32(i32 35, float %6300, float %6301)  ; FMax(a,b)
  %6304 = fsub fast float %6302, %6303
  %6305 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6306 = call float @dx.op.binary.f32(i32 36, float %6305, float %6283)  ; FMin(a,b)
  %6307 = fmul fast float %6306, %6217
  %6308 = fsub fast float %6279, %6307
  %6309 = fsub fast float %6280, %6279
  %6310 = fsub fast float %6309, %6307
  %6311 = call float @dx.op.binary.f32(i32 35, float %6279, float %6280)  ; FMax(a,b)
  %6312 = call float @dx.op.binary.f32(i32 35, float %6307, float %6311)  ; FMax(a,b)
  %6313 = fcmp fast olt float %6312, 1.000000e+00
  br i1 %6313, label %6314, label %6712, !dx.controlflow.hints !99

; <label>:6314                                    ; preds = %6278
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 0
  %6317 = fcmp fast une float %6316, 0.000000e+00
  br i1 %6317, label %6318, label %6712, !dx.controlflow.hints !100

; <label>:6318                                    ; preds = %6314
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6323 = extractvalue %dx.types.CBufRet.f32 %6319, 3
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = extractvalue %dx.types.CBufRet.f32 %6324, 2
  %6328 = extractvalue %dx.types.CBufRet.f32 %6324, 3
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6331 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6332 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6333 = extractvalue %dx.types.CBufRet.f32 %6329, 3
  %6334 = fmul fast float %6320, %6160
  %6335 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6321, float %6334)  ; FMad(a,b,c)
  %6336 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6322, float %6335)  ; FMad(a,b,c)
  %6337 = fadd fast float %6336, %6323
  %6338 = fmul fast float %6325, %6160
  %6339 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6326, float %6338)  ; FMad(a,b,c)
  %6340 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6327, float %6339)  ; FMad(a,b,c)
  %6341 = fadd fast float %6340, %6328
  %6342 = fmul fast float %6330, %6160
  %6343 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6331, float %6342)  ; FMad(a,b,c)
  %6344 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6332, float %6343)  ; FMad(a,b,c)
  %6345 = fadd fast float %6344, %6333
  %6346 = fcmp fast oge float %6337, 1.000000e+00
  %6347 = fcmp fast oge float %6341, 1.000000e+00
  %6348 = or i1 %6346, %6347
  %6349 = fcmp fast olt float %6337, 0.000000e+00
  %6350 = fcmp fast olt float %6341, 0.000000e+00
  %6351 = or i1 %6349, %6350
  %6352 = or i1 %6348, %6351
  br i1 %6352, label %6712, label %6353, !dx.controlflow.hints !101

; <label>:6353                                    ; preds = %6318
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.CBufRet.f32 %6354, 2
  %6358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.i32 %6358, 2
  %6360 = uitofp i32 %6359 to float
  %6361 = extractvalue %dx.types.CBufRet.i32 %6358, 3
  %6362 = uitofp i32 %6361 to float
  %6363 = extractvalue %dx.types.CBufRet.f32 %6354, 3
  %6364 = fmul fast float %6363, 2.000000e+00
  %6365 = fsub fast float %6337, %6355
  %6366 = fsub fast float %6341, %6356
  %6367 = fmul fast float %6364, %6365
  %6368 = fmul fast float %6364, %6366
  %6369 = fdiv fast float 1.000000e+00, %6143
  %6370 = fmul fast float %6368, %6369
  %6371 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6372 = fmul fast float %6357, %6162
  %6373 = fmul fast float %6372, %6364
  %6374 = call float @dx.op.unary.f32(i32 6, float %6373)  ; FAbs(value)
  %6375 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6376 = call float @dx.op.binary.f32(i32 35, float %6374, float %6371)  ; FMax(a,b)
  %6377 = call float @dx.op.binary.f32(i32 35, float %6375, float %6376)  ; FMax(a,b)
  %6378 = fmul fast float %6377, 2.000000e+00
  %6379 = call float @dx.op.unary.f32(i32 23, float %6378)  ; Log(value)
  %6380 = call float @dx.op.binary.f32(i32 35, float %6379, float %6360)  ; FMax(a,b)
  %6381 = call float @dx.op.unary.f32(i32 22, float %6380)  ; Frc(value)
  %6382 = fadd fast float %6381, 0xBFEA666660000000
  %6383 = fmul fast float %6382, 8.000000e+00
  %6384 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6385 = call float @dx.op.unary.f32(i32 27, float %6380)  ; Round_ni(value)
  %6386 = fadd fast float %6385, %6384
  %6387 = call float @dx.op.binary.f32(i32 36, float %6386, float %6362)  ; FMin(a,b)
  %6388 = call float @dx.op.unary.f32(i32 27, float %6387)  ; Round_ni(value)
  %6389 = fsub fast float -0.000000e+00, %6388
  %6390 = call float @dx.op.unary.f32(i32 21, float %6389)  ; Exp(value)
  %6391 = fmul fast float %6390, %6364
  %6392 = fmul fast float %6391, %6337
  %6393 = fmul fast float %6391, %6341
  %6394 = fmul fast float %6392, 2.500000e-01
  %6395 = fmul fast float %6393, 2.500000e-01
  %6396 = fadd fast float %6394, 5.000000e-01
  %6397 = fadd fast float %6395, 5.000000e-01
  %6398 = fsub fast float %6362, %6360
  %6399 = fptoui float %6398 to i32
  %6400 = add i32 %6399, 320
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6400)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = fcmp fast une float %6387, %6362
  %6405 = fsub fast float %6337, %6402
  %6406 = fsub fast float %6341, %6403
  %6407 = call float @dx.op.unary.f32(i32 6, float %6405)  ; FAbs(value)
  %6408 = call float @dx.op.unary.f32(i32 6, float %6406)  ; FAbs(value)
  %6409 = fmul fast float %6407, %6391
  %6410 = fmul fast float %6408, %6391
  %6411 = fcmp fast olt float %6409, 1.000000e+00
  %6412 = fcmp fast olt float %6410, 1.000000e+00
  %6413 = and i1 %6411, %6412
  %6414 = or i1 %6404, %6413
  br i1 %6414, label %6415, label %6712, !dx.controlflow.hints !102

; <label>:6415                                    ; preds = %6353
  %6416 = fmul fast float %6393, 5.000000e-01
  %6417 = fmul fast float %6392, 5.000000e-01
  %6418 = fadd fast float %6416, 5.000000e-01
  %6419 = fadd fast float %6417, 5.000000e-01
  %6420 = sitofp i32 %6359 to float
  %6421 = fsub fast float %6387, %6420
  %6422 = call float @dx.op.unary.f32(i32 27, float %6421)  ; Round_ni(value)
  %6423 = call float @dx.op.unary.f32(i32 22, float %6387)  ; Frc(value)
  %6424 = call float @dx.op.unary.f32(i32 22, float %6419)  ; Frc(value)
  %6425 = call float @dx.op.unary.f32(i32 22, float %6418)  ; Frc(value)
  %6426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6424, float %6425, float %6422, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6427 = extractvalue %dx.types.ResRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.ResRet.f32 %6426, 1
  %6429 = extractvalue %dx.types.ResRet.f32 %6426, 2
  %6430 = extractvalue %dx.types.ResRet.f32 %6426, 3
  %6431 = fcmp fast ogt float %6423, 0.000000e+00
  br i1 %6431, label %6432, label %6453, !dx.controlflow.hints !103

; <label>:6432                                    ; preds = %6415
  %6433 = fadd fast float %6422, 1.000000e+00
  %6434 = call float @dx.op.unary.f32(i32 22, float %6396)  ; Frc(value)
  %6435 = call float @dx.op.unary.f32(i32 22, float %6397)  ; Frc(value)
  %6436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6434, float %6435, float %6433, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.ResRet.f32 %6436, 2
  %6440 = extractvalue %dx.types.ResRet.f32 %6436, 3
  %6441 = fsub fast float %6437, %6427
  %6442 = fsub fast float %6438, %6428
  %6443 = fsub fast float %6439, %6429
  %6444 = fsub fast float %6440, %6430
  %6445 = fmul fast float %6441, %6423
  %6446 = fmul fast float %6442, %6423
  %6447 = fmul fast float %6443, %6423
  %6448 = fmul fast float %6444, %6423
  %6449 = fadd fast float %6445, %6427
  %6450 = fadd fast float %6446, %6428
  %6451 = fadd fast float %6447, %6429
  %6452 = fadd fast float %6448, %6430
  br label %6453

; <label>:6453                                    ; preds = %6432, %6415
  %6454 = phi float [ %6449, %6432 ], [ %6427, %6415 ]
  %6455 = phi float [ %6450, %6432 ], [ %6428, %6415 ]
  %6456 = phi float [ %6451, %6432 ], [ %6429, %6415 ]
  %6457 = phi float [ %6452, %6432 ], [ %6430, %6415 ]
  %6458 = fadd fast float %6454, -5.000000e-01
  %6459 = fadd fast float %6456, -5.000000e-01
  %6460 = fmul fast float %6458, 0xBFD5555560000000
  %6461 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6459, float %6460)  ; FMad(a,b,c)
  %6462 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6455, float 0.000000e+00)  ; FMad(a,b,c)
  %6463 = fadd fast float %6462, %6457
  %6464 = fmul fast float %6458, -7.500000e-01
  %6465 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6459, float %6464)  ; FMad(a,b,c)
  %6466 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6455, float 0.000000e+00)  ; FMad(a,b,c)
  %6467 = fadd fast float %6466, %6457
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6475 = fsub fast float %6471, %6461
  %6476 = fsub fast float %6472, %6463
  %6477 = fsub fast float %6473, %6465
  %6478 = fsub fast float %6474, %6467
  %6479 = fmul fast float %6475, %6469
  %6480 = fmul fast float %6476, %6469
  %6481 = fmul fast float %6477, %6469
  %6482 = fmul fast float %6478, %6469
  %6483 = fadd fast float %6479, %6461
  %6484 = fadd fast float %6480, %6463
  %6485 = fadd fast float %6481, %6465
  %6486 = fadd fast float %6482, %6467
  %6487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6488 = extractvalue %dx.types.ResRet.i32 %6487, 0
  %6489 = and i32 %6488, 536870911
  %6490 = uitofp i32 %6489 to float
  %6491 = fmul fast float %6490, %6337
  %6492 = fmul fast float %6490, %6341
  %6493 = fptoui float %6491 to i32
  %6494 = fptoui float %6492 to i32
  %6495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.i32 %6495, 0
  %6497 = and i32 %6496, 31
  %6498 = lshr i32 %6493, %6497
  %6499 = lshr i32 %6494, %6497
  %6500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6501 = extractvalue %dx.types.ResRet.i32 %6500, 0
  %6502 = and i32 %6501, 31
  %6503 = shl i32 1, %6502
  %6504 = call i32 @dx.op.binary.i32(i32 40, i32 %6503, i32 4)  ; UMin(a,b)
  %6505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.i32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.i32 %6505, 1
  %6508 = icmp eq i32 %6504, 0
  br i1 %6508, label %6550, label %6509

; <label>:6509                                    ; preds = %6453
  br label %6510

; <label>:6510                                    ; preds = %6538, %6509
  %6511 = phi i32 [ %6541, %6538 ], [ 0, %6509 ]
  %6512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6513 = extractvalue %dx.types.ResRet.i32 %6512, 0
  %6514 = lshr i32 %6513, 16
  %6515 = and i32 %6514, 31
  %6516 = shl i32 %6499, %6515
  %6517 = add i32 %6516, %6498
  %6518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6519 = extractvalue %dx.types.ResRet.i32 %6518, 0
  %6520 = and i32 %6519, 31
  %6521 = shl i32 %6517, %6520
  %6522 = add i32 %6521, %6511
  %6523 = shl i32 %6522, 2
  %6524 = add i32 %6523, 32
  %6525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6524, i32 undef)  ; BufferLoad(srv,index,wot)
  %6526 = extractvalue %dx.types.ResRet.i32 %6525, 0
  %6527 = icmp slt i32 %6526, 0
  %6528 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6511
  %6529 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6511
  %6530 = bitcast float* %6528 to i32*
  %6531 = bitcast float* %6529 to i32*
  br i1 %6527, label %6532, label %6538

; <label>:6532                                    ; preds = %6510
  %6533 = and i32 %6526, 1073741823
  %6534 = add nuw nsw i32 %6533, 20
  %6535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6534, i32 undef)  ; BufferLoad(srv,index,wot)
  %6536 = extractvalue %dx.types.ResRet.i32 %6535, 0
  %6537 = extractvalue %dx.types.ResRet.i32 %6535, 1
  br label %6538

; <label>:6538                                    ; preds = %6532, %6510
  %6539 = phi i32 [ %6536, %6532 ], [ %6506, %6510 ]
  %6540 = phi i32 [ %6537, %6532 ], [ %6507, %6510 ]
  store i32 %6539, i32* %6530, align 4
  store i32 %6540, i32* %6531, align 4
  %6541 = add nuw i32 %6511, 1
  %6542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.i32 %6542, 2
  %6544 = icmp eq i32 %6543, 0
  %6545 = icmp ugt i32 %6526, -1073741825
  %6546 = and i1 %6545, %6544
  %6547 = icmp ult i32 %6541, %6504
  %6548 = and i1 %6546, %6547
  br i1 %6548, label %6510, label %6549

; <label>:6549                                    ; preds = %6538
  br label %6550

; <label>:6550                                    ; preds = %6549, %6453
  %6551 = phi i32 [ 0, %6453 ], [ %6541, %6549 ]
  %6552 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6553 = fptoui float %6552 to i32
  %6554 = icmp eq i32 %6553, 0
  br i1 %6554, label %6606, label %6555

; <label>:6555                                    ; preds = %6550
  br label %6556

; <label>:6556                                    ; preds = %6601, %6555
  %6557 = phi i32 [ %6602, %6601 ], [ %6551, %6555 ]
  %6558 = phi i32 [ %6603, %6601 ], [ 0, %6555 ]
  %6559 = lshr i32 %6558, 2
  %6560 = and i32 %6558, 3
  %6561 = add nuw nsw i32 %6559, 83
  %6562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6561)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.i32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.i32 %6562, 1
  %6565 = extractvalue %dx.types.CBufRet.i32 %6562, 2
  %6566 = extractvalue %dx.types.CBufRet.i32 %6562, 3
  %6567 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6563, i32* %6567, align 4
  %6568 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6564, i32* %6568, align 4
  %6569 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6565, i32* %6569, align 4
  %6570 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6566, i32* %6570, align 4
  %6571 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6560
  %6572 = load i32, i32* %6571, align 4, !tbaa !104, !noalias !108
  %6573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6574 = extractvalue %dx.types.ResRet.i32 %6573, 0
  %6575 = lshr i32 %6574, 16
  %6576 = and i32 %6575, 31
  %6577 = shl i32 %6499, %6576
  %6578 = add i32 %6577, %6498
  %6579 = shl i32 %6578, 2
  %6580 = add i32 %6579, %6572
  %6581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6580, i32 undef)  ; BufferLoad(srv,index,wot)
  %6582 = extractvalue %dx.types.ResRet.i32 %6581, 0
  %6583 = icmp eq i32 %6582, 0
  br i1 %6583, label %6601, label %6584

; <label>:6584                                    ; preds = %6556
  %6585 = icmp slt i32 %6582, 0
  %6586 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6557
  %6587 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6557
  %6588 = bitcast float* %6586 to i32*
  %6589 = bitcast float* %6587 to i32*
  br i1 %6585, label %6590, label %6597

; <label>:6590                                    ; preds = %6584
  %6591 = and i32 %6582, 1073741823
  %6592 = add i32 %6572, 20
  %6593 = add i32 %6592, %6591
  %6594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6593, i32 undef)  ; BufferLoad(srv,index,wot)
  %6595 = extractvalue %dx.types.ResRet.i32 %6594, 0
  %6596 = extractvalue %dx.types.ResRet.i32 %6594, 1
  br label %6597

; <label>:6597                                    ; preds = %6590, %6584
  %6598 = phi i32 [ %6595, %6590 ], [ %6506, %6584 ]
  %6599 = phi i32 [ %6596, %6590 ], [ %6507, %6584 ]
  store i32 %6598, i32* %6588, align 4
  store i32 %6599, i32* %6589, align 4
  %6600 = add i32 %6557, 1
  br label %6601

; <label>:6601                                    ; preds = %6597, %6556
  %6602 = phi i32 [ %6557, %6556 ], [ %6600, %6597 ]
  %6603 = add nuw i32 %6558, 1
  %6604 = icmp eq i32 %6603, %6553
  br i1 %6604, label %6605, label %6556

; <label>:6605                                    ; preds = %6601
  br label %6606

; <label>:6606                                    ; preds = %6605, %6550
  %6607 = phi i32 [ %6551, %6550 ], [ %6602, %6605 ]
  %6608 = icmp eq i32 %6607, 1
  %6609 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6610 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6608, label %6611, label %6614

; <label>:6611                                    ; preds = %6606
  %6612 = load float, float* %6609, align 4
  %6613 = load float, float* %6610, align 4
  br label %6641

; <label>:6614                                    ; preds = %6606
  %6615 = load float, float* %6609, align 4
  %6616 = load float, float* %6610, align 4
  %6617 = fdiv fast float 1.000000e+00, %6616
  %6618 = fsub fast float %6615, %6617
  %6619 = icmp ugt i32 %6607, 1
  br i1 %6619, label %6620, label %6636

; <label>:6620                                    ; preds = %6614
  br label %6621

; <label>:6621                                    ; preds = %6621, %6620
  %6622 = phi float [ %6631, %6621 ], [ %6618, %6620 ]
  %6623 = phi float [ %6632, %6621 ], [ %6615, %6620 ]
  %6624 = phi i32 [ %6633, %6621 ], [ 1, %6620 ]
  %6625 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6624
  %6626 = load float, float* %6625, align 4
  %6627 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6624
  %6628 = load float, float* %6627, align 4
  %6629 = fdiv fast float 1.000000e+00, %6628
  %6630 = fsub fast float %6626, %6629
  %6631 = call float @dx.op.binary.f32(i32 36, float %6622, float %6630)  ; FMin(a,b)
  %6632 = call float @dx.op.binary.f32(i32 35, float %6623, float %6626)  ; FMax(a,b)
  %6633 = add nuw i32 %6624, 1
  %6634 = icmp eq i32 %6633, %6607
  br i1 %6634, label %6635, label %6621

; <label>:6635                                    ; preds = %6621
  br label %6636

; <label>:6636                                    ; preds = %6635, %6614
  %6637 = phi float [ %6618, %6614 ], [ %6631, %6635 ]
  %6638 = phi float [ %6615, %6614 ], [ %6632, %6635 ]
  %6639 = fsub fast float %6638, %6637
  %6640 = fdiv fast float 1.000000e+00, %6639
  br label %6641

; <label>:6641                                    ; preds = %6636, %6611
  %6642 = phi float [ %6612, %6611 ], [ %6638, %6636 ]
  %6643 = phi float [ %6613, %6611 ], [ %6640, %6636 ]
  %6644 = fadd fast float %6345, %6642
  %6645 = fmul fast float %6644, %6643
  %6646 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6647 = fmul fast float %6646, 2.000000e+00
  %6648 = fsub fast float 1.000000e+00, %6647
  %6649 = fmul fast float %6483, %6483
  %6650 = fsub fast float %6484, %6649
  %6651 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6650)  ; FMax(a,b)
  %6652 = fdiv fast float 1.000000e+00, %6651
  %6653 = fmul fast float %6484, %6483
  %6654 = fsub fast float %6485, %6653
  %6655 = fsub fast float %6648, %6483
  %6656 = fmul fast float %6648, %6648
  %6657 = fsub fast float %6656, %6484
  %6658 = fmul fast float %6652, %6654
  %6659 = fmul fast float %6658, %6655
  %6660 = fsub fast float %6657, %6659
  %6661 = fmul fast float %6484, %6484
  %6662 = fsub fast float %6486, %6661
  %6663 = fmul fast float %6654, %6654
  %6664 = fmul fast float %6663, %6652
  %6665 = fsub fast float %6662, %6664
  %6666 = fdiv fast float %6660, %6665
  %6667 = fmul fast float %6666, %6654
  %6668 = fsub fast float %6655, %6667
  %6669 = fmul fast float %6668, %6652
  %6670 = fmul fast float %6669, %6483
  %6671 = fsub fast float 1.000000e+00, %6670
  %6672 = fmul fast float %6666, %6484
  %6673 = fsub fast float %6671, %6672
  %6674 = fmul fast float %6669, %6669
  %6675 = fmul fast float %6666, 4.000000e+00
  %6676 = fmul fast float %6675, %6673
  %6677 = fsub fast float %6674, %6676
  %6678 = call float @dx.op.unary.f32(i32 24, float %6677)  ; Sqrt(value)
  %6679 = fcmp fast oge float %6669, 0.000000e+00
  %6680 = fsub fast float -0.000000e+00, %6678
  %6681 = select i1 %6679, float %6680, float %6678
  %6682 = fsub fast float %6681, %6669
  %6683 = fdiv fast float %6682, %6666
  %6684 = fdiv fast float %6673, %6682
  %6685 = fmul fast float %6683, 5.000000e-01
  %6686 = fmul fast float %6684, 2.000000e+00
  %6687 = select i1 %6679, float %6685, float %6686
  %6688 = select i1 %6679, float %6686, float %6685
  %6689 = call float @dx.op.binary.f32(i32 35, float %6687, float %6688)  ; FMax(a,b)
  %6690 = call float @dx.op.binary.f32(i32 36, float %6687, float %6688)  ; FMin(a,b)
  %6691 = fcmp fast ogt float %6648, %6689
  %6692 = fsub fast float %6648, %6690
  %6693 = fsub fast float %6648, %6689
  %6694 = fsub fast float %6689, %6690
  %6695 = select i1 %6691, float %6693, float %6694
  %6696 = fmul float %6692, %6695
  %6697 = select i1 %6691, float %6690, float %6648
  %6698 = fcmp fast ogt float %6648, %6690
  %6699 = fmul fast float %6697, %6689
  %6700 = fadd fast float %6697, %6689
  %6701 = fmul fast float %6700, %6483
  %6702 = fadd fast float %6699, %6484
  %6703 = fsub fast float %6702, %6701
  %6704 = fdiv fast float %6703, %6696
  %6705 = select i1 %6698, float %6704, float 0.000000e+00
  %6706 = fsub fast float 1.000000e+00, %6705
  %6707 = select i1 %6691, float %6706, float %6705
  %6708 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6468, 3
  %6710 = fmul fast float %6709, %6708
  %6711 = fsub fast float 1.000000e+00, %6710
  br label %6712

; <label>:6712                                    ; preds = %6641, %6353, %6318, %6314, %6278
  %6713 = phi float [ 1.000000e+00, %6278 ], [ %6711, %6641 ], [ 1.000000e+00, %6318 ], [ 1.000000e+00, %6353 ], [ 1.000000e+00, %6314 ]
  %6714 = fcmp fast ogt float %6310, 0.000000e+00
  br i1 %6714, label %6715, label %6723, !dx.controlflow.hints !117

; <label>:6715                                    ; preds = %6712
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6718 = fadd fast float %6717, %6191
  %6719 = call float @dx.op.binary.f32(i32 35, float %6718, float 0.000000e+00)  ; FMax(a,b)
  %6720 = fadd fast float %6719, 0x3F10000000000000
  %6721 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6209, float %6210, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6722 = extractvalue %dx.types.ResRet.f32 %6721, 0
  br label %6723

; <label>:6723                                    ; preds = %6715, %6712
  %6724 = phi float [ %6722, %6715 ], [ 1.000000e+00, %6712 ]
  %6725 = fcmp fast ogt float %6308, 0.000000e+00
  br i1 %6725, label %6726, label %6734, !dx.controlflow.hints !118

; <label>:6726                                    ; preds = %6723
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6729 = fadd fast float %6728, %6191
  %6730 = call float @dx.op.binary.f32(i32 35, float %6729, float 0.000000e+00)  ; FMax(a,b)
  %6731 = fadd fast float %6730, 0x3F10000000000000
  %6732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6201, float %6202, float undef, float undef, i32 0, i32 0, i32 undef, float %6731)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  br label %6734

; <label>:6734                                    ; preds = %6726, %6723
  %6735 = phi float [ %6733, %6726 ], [ 1.000000e+00, %6723 ]
  %6736 = fcmp fast ogt float %6307, 0.000000e+00
  br i1 %6736, label %6737, label %6749, !dx.controlflow.hints !119

; <label>:6737                                    ; preds = %6734
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6740 = fadd fast float %6739, %6191
  %6741 = call float @dx.op.binary.f32(i32 35, float %6740, float 0.000000e+00)  ; FMax(a,b)
  %6742 = fadd fast float %6741, 0x3F10000000000000
  br i1 %6194, label %6743, label %6746, !dx.controlflow.hints !120

; <label>:6743                                    ; preds = %6737
  %6744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6183, float %6187, float undef, float undef, i32 0, i32 0, i32 undef, float %6742)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6745 = extractvalue %dx.types.ResRet.f32 %6744, 0
  br label %6749

; <label>:6746                                    ; preds = %6737
  %6747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6183, float %6187, float undef, float undef, i32 0, i32 0, i32 undef, float %6742)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6748 = extractvalue %dx.types.ResRet.f32 %6747, 0
  br label %6749

; <label>:6749                                    ; preds = %6746, %6743, %6734
  %6750 = phi float [ %6745, %6743 ], [ %6748, %6746 ], [ 1.000000e+00, %6734 ]
  %6751 = fsub fast float %6724, %6713
  %6752 = fmul fast float %6751, %6280
  %6753 = fadd fast float %6752, %6713
  %6754 = fsub fast float %6735, %6753
  %6755 = fmul fast float %6754, %6279
  %6756 = fadd fast float %6755, %6753
  %6757 = fsub fast float %6750, %6756
  %6758 = fmul fast float %6757, %6307
  %6759 = fadd fast float %6758, %6756
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 2
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  br i1 %6762, label %6763, label %6803, !dx.controlflow.hints !121

; <label>:6763                                    ; preds = %6749
  %6764 = fcmp fast ugt float %6761, 0.000000e+00
  br i1 %6764, label %6765, label %6800

; <label>:6765                                    ; preds = %6763
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.CBufRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.CBufRet.f32 %6771, 3
  %6776 = extractvalue %dx.types.CBufRet.f32 %6760, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  %6780 = extractvalue %dx.types.CBufRet.f32 %6778, 1
  %6781 = extractvalue %dx.types.CBufRet.f32 %6778, 2
  %6782 = fadd fast float %6779, %6160
  %6783 = fadd fast float %6780, %6161
  %6784 = fadd fast float %6781, %6162
  %6785 = fmul fast float %6782, %6767
  %6786 = call float @dx.op.tertiary.f32(i32 46, float %6768, float %6783, float %6785)  ; FMad(a,b,c)
  %6787 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6784, float %6786)  ; FMad(a,b,c)
  %6788 = fadd fast float %6787, %6770
  %6789 = fmul fast float %6782, %6772
  %6790 = call float @dx.op.tertiary.f32(i32 46, float %6773, float %6783, float %6789)  ; FMad(a,b,c)
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %6774, float %6784, float %6790)  ; FMad(a,b,c)
  %6792 = fadd fast float %6791, %6775
  %6793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6788, float %6792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = fmul fast float %6794, %6777
  %6796 = fadd fast float %6795, %6776
  %6797 = call float @dx.op.unary.f32(i32 7, float %6796)  ; Saturate(value)
  %6798 = fmul fast float %6797, %6761
  %6799 = fsub fast float 1.000000e+00, %6798
  br label %6800

; <label>:6800                                    ; preds = %6765, %6763
  %6801 = phi float [ %6799, %6765 ], [ 1.000000e+00, %6763 ]
  %6802 = fmul fast float %6801, %6759
  br label %6803

; <label>:6803                                    ; preds = %6800, %6749, %6140
  %6804 = phi float [ 1.000000e+00, %6140 ], [ %6802, %6800 ], [ %6759, %6749 ]
  %6805 = call float @dx.op.binary.f32(i32 36, float %6804, float %6804)  ; FMin(a,b)
  %6806 = call float @dx.op.binary.f32(i32 36, float %6804, float %6805)  ; FMin(a,b)
  %6807 = fcmp fast ogt float %6806, 0.000000e+00
  br i1 %6807, label %6808, label %6968, !dx.controlflow.hints !122

; <label>:6808                                    ; preds = %6803
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.CBufRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.CBufRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6814, 3
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6823 = extractvalue %dx.types.CBufRet.f32 %6819, 3
  %6824 = fmul fast float %6810, %6160
  %6825 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6811, float %6824)  ; FMad(a,b,c)
  %6826 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6812, float %6825)  ; FMad(a,b,c)
  %6827 = fadd fast float %6826, %6813
  %6828 = fmul fast float %6815, %6160
  %6829 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6816, float %6828)  ; FMad(a,b,c)
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6817, float %6829)  ; FMad(a,b,c)
  %6831 = fadd fast float %6830, %6818
  %6832 = fmul fast float %6820, %6160
  %6833 = call float @dx.op.tertiary.f32(i32 46, float %6161, float %6821, float %6832)  ; FMad(a,b,c)
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6162, float %6822, float %6833)  ; FMad(a,b,c)
  %6835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.f32 %6835, 0
  %6837 = extractvalue %dx.types.CBufRet.f32 %6835, 1
  %6838 = extractvalue %dx.types.CBufRet.f32 %6835, 3
  %6839 = fmul fast float %6838, %6827
  %6840 = fmul fast float %6838, %6831
  %6841 = fadd fast float %6839, %6836
  %6842 = fadd fast float %6840, %6837
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = fsub fast float %6841, %6844
  %6847 = fsub fast float %6842, %6845
  %6848 = fcmp fast olt float %6846, 0.000000e+00
  %6849 = fcmp fast olt float %6847, 0.000000e+00
  %6850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.f32 %6850, 1
  %6853 = extractvalue %dx.types.CBufRet.f32 %6850, 2
  %6854 = extractvalue %dx.types.CBufRet.f32 %6850, 3
  %6855 = select i1 %6848, float %6851, float %6853
  %6856 = select i1 %6849, float %6852, float %6854
  %6857 = fmul fast float %6855, %6846
  %6858 = fmul fast float %6856, %6847
  %6859 = call float @dx.op.unary.f32(i32 6, float %6857)  ; FAbs(value)
  %6860 = call float @dx.op.unary.f32(i32 6, float %6858)  ; FAbs(value)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6862 = call float @dx.op.binary.f32(i32 35, float %6859, float %6860)  ; FMax(a,b)
  %6863 = fsub fast float %6861, %6862
  %6864 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6865 = fcmp fast ogt float %6864, 0.000000e+00
  br i1 %6865, label %6866, label %6907, !dx.controlflow.hints !123

; <label>:6866                                    ; preds = %6808
  %6867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6841, float %6842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6869 = fcmp fast ogt float %6868, 0.000000e+00
  br i1 %6869, label %6870, label %6902

; <label>:6870                                    ; preds = %6866
  %6871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6841, float %6842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.ResRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.ResRet.f32 %6871, 2
  %6875 = extractvalue %dx.types.ResRet.f32 %6871, 3
  %6876 = fsub fast float 1.000000e+00, %6823
  %6877 = fsub fast float %6876, %6834
  %6878 = fmul fast float %6877, 0x400921FB60000000
  %6879 = fadd fast float %6878, 0x3FF921FB60000000
  %6880 = call float @dx.op.unary.f32(i32 13, float %6879)  ; Sin(value)
  %6881 = fadd fast float %6880, -1.000000e+00
  %6882 = fmul fast float %6881, 0x3FD45F3060000000
  %6883 = fmul fast float %6877, 0x401921FB60000000
  %6884 = fadd fast float %6883, 0x400921FB60000000
  %6885 = call float @dx.op.unary.f32(i32 13, float %6884)  ; Sin(value)
  %6886 = fadd fast float %6885, 0x3E7777A5C0000000
  %6887 = fmul fast float %6886, 0x3FC45F3060000000
  %6888 = fmul fast float %6877, 0x4022D97C80000000
  %6889 = fadd fast float %6888, 0x4012D97C80000000
  %6890 = call float @dx.op.unary.f32(i32 13, float %6889)  ; Sin(value)
  %6891 = fadd fast float %6890, 1.000000e+00
  %6892 = fmul fast float %6891, 0x3FBB2995E0000000
  %6893 = fmul fast float %6877, 0x402921FB60000000
  %6894 = fadd fast float %6893, 0x401921FB60000000
  %6895 = call float @dx.op.unary.f32(i32 13, float %6894)  ; Sin(value)
  %6896 = fadd fast float %6895, 0xBE8777A5C0000000
  %6897 = fmul fast float %6896, 0x3FB45F3060000000
  %6898 = call float @dx.op.dot4.f32(i32 56, float %6872, float %6873, float %6874, float %6875, float %6882, float %6887, float %6892, float %6897)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6899 = fmul fast float %6898, 0xBFF7154760000000
  %6900 = call float @dx.op.unary.f32(i32 21, float %6899)  ; Exp(value)
  %6901 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  br label %6902

; <label>:6902                                    ; preds = %6870, %6866
  %6903 = phi float [ %6901, %6870 ], [ 1.000000e+00, %6866 ]
  %6904 = fadd fast float %6903, -1.000000e+00
  %6905 = fmul fast float %6904, %6864
  %6906 = fadd fast float %6905, 1.000000e+00
  br label %6907

; <label>:6907                                    ; preds = %6902, %6808
  %6908 = phi float [ %6906, %6902 ], [ 1.000000e+00, %6808 ]
  %6909 = fmul fast float %6908, %6804
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %6914 = fadd fast float %6911, %195
  %6915 = fadd fast float %6912, %196
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6918 = fsub fast float -0.000000e+00, %6914
  %6919 = fsub fast float -0.000000e+00, %6915
  %6920 = fsub fast float %5879, %6913
  %6921 = fadd fast float %6920, %6917
  %6922 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6918, float %6919, float %6921)  ; Dot3(ax,ay,az,bx,by,bz)
  %6923 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6141, float %6142, float %6143)  ; Dot3(ax,ay,az,bx,by,bz)
  %6924 = fdiv fast float 1.000000e+00, %6923
  %6925 = fmul fast float %6924, %6922
  %6926 = fmul fast float %6141, %6925
  %6927 = fmul fast float %6142, %6925
  %6928 = fadd fast float %6926, %6914
  %6929 = fadd fast float %6927, %6915
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.CBufRet.f32 %6930, 1
  %6933 = fsub fast float %6928, %6931
  %6934 = fsub fast float %6929, %6932
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6937 = extractvalue %dx.types.CBufRet.f32 %6935, 3
  %6938 = fmul fast float %6933, %6936
  %6939 = fmul fast float %6934, %6937
  %6940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.i32 %6940, 3
  %6942 = icmp eq i32 %6941, 0
  br i1 %6942, label %6948, label %6943

; <label>:6943                                    ; preds = %6907
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6938, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.ResRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.ResRet.f32 %6944, 2
  br label %6953

; <label>:6948                                    ; preds = %6907
  %6949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6938, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.ResRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.ResRet.f32 %6949, 2
  br label %6953

; <label>:6953                                    ; preds = %6948, %6943
  %6954 = phi float [ %6945, %6943 ], [ %6950, %6948 ]
  %6955 = phi float [ %6946, %6943 ], [ %6951, %6948 ]
  %6956 = phi float [ %6947, %6943 ], [ %6952, %6948 ]
  %6957 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6958 = fmul fast float %6957, %6954
  %6959 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6960 = fsub fast float %6925, %6959
  %6961 = fsub fast float %6960, %6958
  %6962 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6961)  ; FMax(a,b)
  %6963 = fmul fast float %6962, %6955
  %6964 = call float @dx.op.binary.f32(i32 36, float %6956, float %6963)  ; FMin(a,b)
  %6965 = fmul fast float %6964, 0xBFF7154760000000
  %6966 = call float @dx.op.unary.f32(i32 21, float %6965)  ; Exp(value)
  %6967 = fmul fast float %6909, %6966
  br label %6968

; <label>:6968                                    ; preds = %6953, %6803
  %6969 = phi float [ %6967, %6953 ], [ %6804, %6803 ]
  %6970 = call float @dx.op.binary.f32(i32 36, float %6969, float %6969)  ; FMin(a,b)
  %6971 = call float @dx.op.binary.f32(i32 36, float %6969, float %6970)  ; FMin(a,b)
  %6972 = fcmp fast ogt float %6971, 0.000000e+00
  br i1 %6972, label %6973, label %7236, !dx.controlflow.hints !124

; <label>:6973                                    ; preds = %6968
  %6974 = fmul fast float %6969, %6152
  %6975 = fmul fast float %6969, %6153
  %6976 = fmul fast float %6969, %6154
  %6977 = fsub fast float %197, %5056
  %6978 = fcmp fast ogt float %6977, 0.000000e+00
  %6979 = fmul fast float %6141, 5.120000e+02
  %6980 = fmul fast float %6142, 5.120000e+02
  %6981 = fmul fast float %6143, 5.120000e+02
  %6982 = fadd fast float %6981, %197
  %6983 = fsub fast float %5056, %6982
  %6984 = fmul fast float %6983, 2.000000e+00
  %6985 = fadd fast float %6984, %6982
  %6986 = select i1 %6978, float %6985, float %6982
  %6987 = fsub fast float %6986, %197
  %6988 = call float @dx.op.dot3.f32(i32 55, float %6979, float %6980, float %6987, float %6979, float %6980, float %6987)  ; Dot3(ax,ay,az,bx,by,bz)
  %6989 = call float @dx.op.unary.f32(i32 25, float %6988)  ; Rsqrt(value)
  %6990 = fmul fast float %6989, %6979
  %6991 = fmul fast float %6989, %6980
  %6992 = fmul fast float %6989, %6987
  %6993 = fsub fast float %5056, %197
  %6994 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6993)  ; Dot3(ax,ay,az,bx,by,bz)
  %6995 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6990, float %6991, float %6992)  ; Dot3(ax,ay,az,bx,by,bz)
  %6996 = fdiv fast float 1.000000e+00, %6995
  %6997 = fmul fast float %6996, %6994
  %6998 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6977, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6999 = fcmp fast ogt float %6998, 0.000000e+00
  %7000 = fcmp fast olt float %6998, 0.000000e+00
  %7001 = zext i1 %6999 to i32
  %7002 = zext i1 %7000 to i32
  %7003 = sub nsw i32 %7001, %7002
  %7004 = sitofp i32 %7003 to float
  %7005 = fsub fast float %6986, %5056
  %7006 = call float @dx.op.dot3.f32(i32 55, float %6979, float %6980, float %7005, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7007 = fcmp fast ogt float %7006, 0.000000e+00
  %7008 = fcmp fast olt float %7006, 0.000000e+00
  %7009 = zext i1 %7007 to i32
  %7010 = zext i1 %7008 to i32
  %7011 = sub nsw i32 %7009, %7010
  %7012 = sitofp i32 %7011 to float
  %7013 = fcmp fast une float %7004, %7012
  br i1 %7013, label %7014, label %7024

; <label>:7014                                    ; preds = %6973
  %7015 = fmul fast float %6997, %6992
  %7016 = fmul fast float %6997, %6991
  %7017 = fmul fast float %6997, %6990
  %7018 = fmul fast float %7017, %7017
  %7019 = fmul fast float %7016, %7016
  %7020 = fadd fast float %7018, %7019
  %7021 = fmul fast float %7015, %7015
  %7022 = fadd fast float %7020, %7021
  %7023 = call float @dx.op.unary.f32(i32 24, float %7022)  ; Sqrt(value)
  br label %7034

; <label>:7024                                    ; preds = %6973
  %7025 = icmp slt i32 %7003, 0
  br i1 %7025, label %7026, label %7034

; <label>:7026                                    ; preds = %7024
  %7027 = fsub fast float %197, %6986
  %7028 = fmul fast float %6979, %6979
  %7029 = fmul fast float %6980, %6980
  %7030 = fadd fast float %7028, %7029
  %7031 = fmul fast float %7027, %7027
  %7032 = fadd fast float %7030, %7031
  %7033 = call float @dx.op.unary.f32(i32 24, float %7032)  ; Sqrt(value)
  br label %7034

; <label>:7034                                    ; preds = %7026, %7024, %7014
  %7035 = phi float [ %7023, %7014 ], [ %7033, %7026 ], [ 0.000000e+00, %7024 ]
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = select i1 %6978, float -0.000000e+00, float %7036
  %7038 = fmul fast float %5057, 0x3FF7154760000000
  %7039 = fmul fast float %7038, %7037
  %7040 = fmul fast float %5058, 0x3FF7154760000000
  %7041 = fmul fast float %7040, %7037
  %7042 = fmul fast float %5059, 0x3FF7154760000000
  %7043 = fmul fast float %7042, %7037
  %7044 = call float @dx.op.unary.f32(i32 21, float %7039)  ; Exp(value)
  %7045 = call float @dx.op.unary.f32(i32 21, float %7041)  ; Exp(value)
  %7046 = call float @dx.op.unary.f32(i32 21, float %7043)  ; Exp(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7048 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7049 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7050 = fmul fast float %6974, %7047
  %7051 = fmul fast float %6975, %7048
  %7052 = fmul fast float %6976, %7049
  %7053 = fsub fast float %6141, %5882
  %7054 = fsub fast float %6142, %5883
  %7055 = fsub fast float %6143, %5884
  %7056 = call float @dx.op.dot3.f32(i32 55, float %7053, float %7054, float %7055, float %7053, float %7054, float %7055)  ; Dot3(ax,ay,az,bx,by,bz)
  %7057 = call float @dx.op.unary.f32(i32 25, float %7056)  ; Rsqrt(value)
  %7058 = fmul fast float %7057, %7053
  %7059 = fmul fast float %7057, %7054
  %7060 = fmul fast float %7057, %7055
  %7061 = call float @dx.op.dot3.f32(i32 55, float %6141, float %6142, float %6143, float %5839, float %5840, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %7062 = call float @dx.op.dot3.f32(i32 55, float %5885, float %5886, float %5887, float %7058, float %7059, float %7060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7063 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7064 = fmul fast float %7063, %7063
  %7065 = fmul fast float %7064, %5903
  %7066 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7067 = fmul fast float %7066, %7063
  %7068 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %7058, float %7059, float %7060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7069 = fmul fast float %7068, %7068
  %7070 = call float @dx.op.unary.f32(i32 6, float %7061)  ; FAbs(value)
  %7071 = fsub fast float 1.000000e+00, %5845
  %7072 = call float @dx.op.binary.f32(i32 35, float %7071, float 0x3F847AE140000000)  ; FMax(a,b)
  %7073 = fmul fast float %7072, %7072
  %7074 = fmul fast float %7073, %7073
  %7075 = fsub fast float 1.000000e+00, %7074
  %7076 = fmul fast float %5890, %5890
  %7077 = fmul fast float %7076, %7075
  %7078 = fadd fast float %7077, %7074
  %7079 = bitcast float %7078 to i32
  %7080 = ashr i32 %7079, 1
  %7081 = add nsw i32 %7080, 532487669
  %7082 = bitcast i32 %7081 to float
  %7083 = fadd fast float %7082, %5890
  %7084 = fmul fast float %7074, %7069
  %7085 = fsub fast float 1.000000e+00, %7069
  %7086 = fadd fast float %7085, %7084
  %7087 = fmul fast float %7070, %7070
  %7088 = fmul fast float %7087, %7075
  %7089 = fadd fast float %7088, %7074
  %7090 = bitcast float %7089 to i32
  %7091 = ashr i32 %7090, 1
  %7092 = add nsw i32 %7091, 532487669
  %7093 = bitcast i32 %7092 to float
  %7094 = fadd fast float %7093, %7070
  %7095 = fmul fast float %7086, %7086
  %7096 = fmul fast float %7095, %7083
  %7097 = fmul fast float %7096, %7094
  %7098 = fdiv fast float 0x3FF0A00000000000, %7097
  %7099 = fmul fast float %7098, %7074
  %7100 = fmul fast float %6003, 0x3FF9999980000000
  %7101 = fsub fast float 5.000000e+00, %7100
  %7102 = call float @dx.op.unary.f32(i32 6, float %7062)  ; FAbs(value)
  %7103 = fsub fast float 1.000000e+00, %7102
  %7104 = fmul fast float %6003, 0x41D9660740000000
  %7105 = fadd fast float %7104, 0xC1EFBF8940000000
  %7106 = bitcast float %7103 to i32
  %7107 = sitofp i32 %7106 to float
  %7108 = fmul fast float %7107, %7101
  %7109 = fadd fast float %7105, %7108
  %7110 = fptosi float %7109 to i32
  %7111 = bitcast i32 %7110 to float
  %7112 = fsub fast float 1.000000e+00, %5836
  %7113 = fsub fast float 1.000000e+00, %5837
  %7114 = fsub fast float 1.000000e+00, %5888
  %7115 = fmul fast float %7111, %7112
  %7116 = fmul fast float %7111, %7113
  %7117 = fmul fast float %7111, %7114
  %7118 = fadd fast float %7115, %5836
  %7119 = fadd fast float %7116, %5837
  %7120 = fadd fast float %7117, %5888
  br i1 %6026, label %7121, label %7144

; <label>:7121                                    ; preds = %7034
  %7122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4652, float %7102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.ResRet.f32 %7122, 1
  %7125 = extractvalue %dx.types.ResRet.f32 %7122, 2
  %7126 = fadd fast float %7123, -5.000000e-01
  %7127 = fadd fast float %7124, -5.000000e-01
  %7128 = fadd fast float %7125, -5.000000e-01
  %7129 = fmul fast float %5836, 4.000000e+00
  %7130 = fmul fast float %7129, %7112
  %7131 = fmul fast float %7130, %7126
  %7132 = fmul fast float %5837, 4.000000e+00
  %7133 = fmul fast float %7132, %7113
  %7134 = fmul fast float %7133, %7127
  %7135 = fmul fast float %5888, 4.000000e+00
  %7136 = fmul fast float %7135, %7114
  %7137 = fmul fast float %7136, %7128
  %7138 = fadd fast float %7131, %7118
  %7139 = fadd fast float %7134, %7119
  %7140 = fadd fast float %7137, %7120
  %7141 = call float @dx.op.unary.f32(i32 7, float %7138)  ; Saturate(value)
  %7142 = call float @dx.op.unary.f32(i32 7, float %7139)  ; Saturate(value)
  %7143 = call float @dx.op.unary.f32(i32 7, float %7140)  ; Saturate(value)
  br label %7144

; <label>:7144                                    ; preds = %7121, %7034
  %7145 = phi float [ %7141, %7121 ], [ %7118, %7034 ]
  %7146 = phi float [ %7142, %7121 ], [ %7119, %7034 ]
  %7147 = phi float [ %7143, %7121 ], [ %7120, %7034 ]
  %7148 = fmul fast float %7061, 9.843750e-01
  %7149 = fadd fast float %7148, 7.812500e-03
  %7150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7149, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7151 = extractvalue %dx.types.ResRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.ResRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.ResRet.f32 %7150, 2
  %7154 = extractvalue %dx.types.ResRet.f32 %7150, 3
  %7155 = fsub fast float %7153, %7151
  %7156 = fsub fast float %7154, %7152
  %7157 = fmul fast float %7155, %6013
  %7158 = fmul fast float %7156, %6013
  %7159 = fadd fast float %7157, %7151
  %7160 = fadd fast float %7158, %7152
  %7161 = fmul fast float %7159, %5836
  %7162 = fmul fast float %7159, %5837
  %7163 = fmul fast float %7159, %5888
  %7164 = fadd fast float %7161, %7160
  %7165 = fadd fast float %7162, %7160
  %7166 = fadd fast float %7163, %7160
  br i1 %6026, label %7167, label %7190

; <label>:7167                                    ; preds = %7144
  %7168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4652, float %7061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7169 = extractvalue %dx.types.ResRet.f32 %7168, 0
  %7170 = extractvalue %dx.types.ResRet.f32 %7168, 1
  %7171 = extractvalue %dx.types.ResRet.f32 %7168, 2
  %7172 = fadd fast float %7169, -5.000000e-01
  %7173 = fadd fast float %7170, -5.000000e-01
  %7174 = fadd fast float %7171, -5.000000e-01
  %7175 = fmul fast float %5836, 4.000000e+00
  %7176 = fmul fast float %7175, %7112
  %7177 = fmul fast float %7176, %7172
  %7178 = fmul fast float %5837, 4.000000e+00
  %7179 = fmul fast float %7178, %7113
  %7180 = fmul fast float %7179, %7173
  %7181 = fmul fast float %5888, 4.000000e+00
  %7182 = fmul fast float %7181, %7114
  %7183 = fmul fast float %7182, %7174
  %7184 = fadd fast float %7177, %7164
  %7185 = fadd fast float %7180, %7165
  %7186 = fadd fast float %7183, %7166
  %7187 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7188 = call float @dx.op.unary.f32(i32 7, float %7185)  ; Saturate(value)
  %7189 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  br label %7190

; <label>:7190                                    ; preds = %7167, %7144
  %7191 = phi float [ %7187, %7167 ], [ %7164, %7144 ]
  %7192 = phi float [ %7188, %7167 ], [ %7165, %7144 ]
  %7193 = phi float [ %7189, %7167 ], [ %7166, %7144 ]
  %7194 = call float @dx.op.binary.f32(i32 35, float %7192, float %7193)  ; FMax(a,b)
  %7195 = call float @dx.op.binary.f32(i32 35, float %7191, float %7194)  ; FMax(a,b)
  %7196 = fsub fast float 1.000000e+00, %7195
  %7197 = fmul fast float %7145, %7099
  %7198 = fmul fast float %7146, %7099
  %7199 = fmul fast float %7147, %7099
  %7200 = fsub fast float 1.000000e+00, %7062
  %7201 = bitcast float %7200 to i32
  %7202 = sitofp i32 %7201 to float
  %7203 = fmul fast float %7202, 5.000000e+00
  %7204 = fadd fast float %7203, 0xC1EFBF8940000000
  %7205 = fptosi float %7204 to i32
  %7206 = bitcast i32 %7205 to float
  %7207 = fmul fast float %7206, %4653
  %7208 = fmul fast float %7196, %7207
  %7209 = fmul fast float %7208, %6076
  %7210 = fmul fast float %7208, %6077
  %7211 = fmul fast float %7208, %6078
  %7212 = fadd fast float %7209, %7197
  %7213 = fadd fast float %7210, %7198
  %7214 = fadd fast float %7211, %7199
  %7215 = fmul fast float %7067, %7050
  %7216 = fmul fast float %7215, %7196
  %7217 = fmul fast float %7067, %7051
  %7218 = fmul fast float %7217, %7196
  %7219 = fmul fast float %7067, %7052
  %7220 = fmul fast float %7219, %7196
  %7221 = fmul fast float %7215, %7212
  %7222 = fmul fast float %7217, %7213
  %7223 = fmul fast float %7219, %7214
  %7224 = fadd fast float %7216, %6060
  %7225 = fmul fast float %7224, %4649
  %7226 = fadd fast float %7218, %6061
  %7227 = fmul fast float %7226, %4649
  %7228 = fadd fast float %7220, %6062
  %7229 = fmul fast float %7228, %4649
  %7230 = fadd fast float %7221, %6129
  %7231 = fmul fast float %7230, %4649
  %7232 = fadd fast float %7222, %6132
  %7233 = fmul fast float %7232, %4649
  %7234 = fadd fast float %7223, %6135
  %7235 = fmul fast float %7234, %4649
  br label %7236

; <label>:7236                                    ; preds = %7190, %6968, %6053
  %7237 = phi float [ %6130, %6053 ], [ %6130, %6968 ], [ %7231, %7190 ]
  %7238 = phi float [ %6133, %6053 ], [ %6133, %6968 ], [ %7233, %7190 ]
  %7239 = phi float [ %6136, %6053 ], [ %6136, %6968 ], [ %7235, %7190 ]
  %7240 = phi float [ %6125, %6053 ], [ %6125, %6968 ], [ %7225, %7190 ]
  %7241 = phi float [ %6126, %6053 ], [ %6126, %6968 ], [ %7227, %7190 ]
  %7242 = phi float [ %6127, %6053 ], [ %6127, %6968 ], [ %7229, %7190 ]
  %7243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.i32 %7243, 0
  %7245 = icmp eq i32 %7244, 0
  br i1 %7245, label %7878, label %7246

; <label>:7246                                    ; preds = %7236
  %7247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7248 = extractvalue %dx.types.CBufRet.f32 %7247, 2
  %7249 = extractvalue %dx.types.CBufRet.f32 %7247, 3
  %7250 = fmul fast float %7248, %108
  %7251 = fmul fast float %7249, %109
  %7252 = fptoui float %7250 to i32
  %7253 = fptoui float %7251 to i32
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7256 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7257 = extractvalue %dx.types.CBufRet.f32 %7254, 3
  %7258 = fadd fast float %99, -4.000000e+00
  %7259 = call float @dx.op.binary.f32(i32 35, float %7258, float 0.000000e+00)  ; FMax(a,b)
  %7260 = fadd fast float %7259, %7255
  %7261 = fmul fast float %7260, %7256
  %7262 = call float @dx.op.unary.f32(i32 23, float %7261)  ; Log(value)
  %7263 = fmul fast float %7262, %7257
  %7264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7265 = extractvalue %dx.types.CBufRet.f32 %7264, 2
  %7266 = fmul fast float %7263, %7265
  %7267 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.i32 %7268, 1
  %7270 = add i32 %7269, -1
  %7271 = uitofp i32 %7269 to float
  %7272 = fmul fast float %7271, %7267
  %7273 = fptoui float %7272 to i32
  %7274 = call i32 @dx.op.binary.i32(i32 40, i32 %7273, i32 %7270)  ; UMin(a,b)
  %7275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7276 = extractvalue %dx.types.CBufRet.i32 %7275, 2
  %7277 = extractvalue %dx.types.CBufRet.i32 %7275, 3
  %7278 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7253, i32 %7276, i32 %7252)  ; UMad(a,b,c)
  %7279 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7274, i32 %7277, i32 %7278)  ; UMad(a,b,c)
  %7280 = add nsw i32 %7244, -1
  %7281 = call i32 @dx.op.binary.i32(i32 37, i32 %7280, i32 0)  ; IMax(a,b)
  %7282 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7283 = fptoui float %7282 to i32
  %7284 = lshr i32 %7283, 5
  %7285 = call i32 @dx.op.binary.i32(i32 40, i32 %7284, i32 8191)  ; UMin(a,b)
  %7286 = shl i32 %7285, 2
  %7287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7286, i32 undef)  ; BufferLoad(srv,index,wot)
  %7288 = extractvalue %dx.types.ResRet.i32 %7287, 0
  %7289 = lshr i32 %7288, 16
  %7290 = and i32 %7288, 65535
  %7291 = lshr i32 %7288, 21
  %7292 = lshr i32 %7290, 5
  %7293 = call i32 @dx.op.binary.i32(i32 40, i32 %7292, i32 %7281)  ; UMin(a,b)
  %7294 = icmp ugt i32 %7291, %7293
  br i1 %7294, label %7878, label %7295

; <label>:7295                                    ; preds = %7246
  br label %7296

; <label>:7296                                    ; preds = %7868, %7295
  %7297 = phi i32 [ %7875, %7868 ], [ %7291, %7295 ]
  %7298 = phi float [ %7869, %7868 ], [ %7237, %7295 ]
  %7299 = phi float [ %7870, %7868 ], [ %7238, %7295 ]
  %7300 = phi float [ %7871, %7868 ], [ %7239, %7295 ]
  %7301 = phi float [ %7872, %7868 ], [ %7240, %7295 ]
  %7302 = phi float [ %7873, %7868 ], [ %7241, %7295 ]
  %7303 = phi float [ %7874, %7868 ], [ %7242, %7295 ]
  %7304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.i32 %7304, 0
  %7306 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7279, i32 %7305, i32 %7297)  ; UMad(a,b,c)
  %7307 = shl i32 %7306, 2
  %7308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7307, i32 undef)  ; BufferLoad(srv,index,wot)
  %7309 = extractvalue %dx.types.ResRet.i32 %7308, 0
  %7310 = shl i32 %7297, 5
  %7311 = sub nsw i32 %7289, %7310
  %7312 = call i32 @dx.op.binary.i32(i32 37, i32 %7311, i32 0)  ; IMax(a,b)
  %7313 = call i32 @dx.op.binary.i32(i32 38, i32 %7312, i32 31)  ; IMin(a,b)
  %7314 = sub nsw i32 1, %7289
  %7315 = add nsw i32 %7314, %7290
  %7316 = call i32 @dx.op.binary.i32(i32 37, i32 %7315, i32 0)  ; IMax(a,b)
  %7317 = call i32 @dx.op.binary.i32(i32 38, i32 %7316, i32 32)  ; IMin(a,b)
  %7318 = and i32 %7317, 31
  %7319 = shl i32 -1, %7318
  %7320 = xor i32 %7319, -1
  %7321 = and i32 %7313, 31
  %7322 = shl i32 %7320, %7321
  %7323 = icmp eq i32 %7317, 32
  %7324 = select i1 %7323, i32 -1, i32 %7322
  %7325 = and i32 %7324, %7309
  %7326 = icmp eq i32 %7325, 0
  br i1 %7326, label %7868, label %7327

; <label>:7327                                    ; preds = %7296
  br label %7328

; <label>:7328                                    ; preds = %7462, %7327
  %7329 = phi i32 [ %7340, %7462 ], [ %7325, %7327 ]
  %7330 = phi float [ %7463, %7462 ], [ %7298, %7327 ]
  %7331 = phi float [ %7464, %7462 ], [ %7299, %7327 ]
  %7332 = phi float [ %7465, %7462 ], [ %7300, %7327 ]
  %7333 = phi float [ %7466, %7462 ], [ %7301, %7327 ]
  %7334 = phi float [ %7467, %7462 ], [ %7302, %7327 ]
  %7335 = phi float [ %7468, %7462 ], [ %7303, %7327 ]
  %7336 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7329)  ; FirstbitLo(value)
  %7337 = add i32 %7336, %7310
  %7338 = and i32 %7336, 31
  %7339 = shl i32 1, %7338
  %7340 = xor i32 %7339, %7329
  %7341 = mul i32 %7337, 112
  %7342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7341, i32 undef)  ; BufferLoad(srv,index,wot)
  %7343 = extractvalue %dx.types.ResRet.f32 %7342, 0
  %7344 = extractvalue %dx.types.ResRet.f32 %7342, 1
  %7345 = extractvalue %dx.types.ResRet.f32 %7342, 2
  %7346 = or i32 %7341, 12
  %7347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7346, i32 undef)  ; BufferLoad(srv,index,wot)
  %7348 = extractvalue %dx.types.ResRet.f32 %7347, 0
  %7349 = add i32 %7341, 16
  %7350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7349, i32 undef)  ; BufferLoad(srv,index,wot)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = extractvalue %dx.types.ResRet.f32 %7350, 1
  %7353 = extractvalue %dx.types.ResRet.f32 %7350, 2
  %7354 = add i32 %7341, 28
  %7355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7354, i32 undef)  ; BufferLoad(srv,index,wot)
  %7356 = extractvalue %dx.types.ResRet.i32 %7355, 0
  %7357 = add i32 %7341, 44
  %7358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7357, i32 undef)  ; BufferLoad(srv,index,wot)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = add i32 %7341, 48
  %7361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7360, i32 undef)  ; BufferLoad(srv,index,wot)
  %7362 = extractvalue %dx.types.ResRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.ResRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.ResRet.f32 %7361, 2
  %7365 = extractvalue %dx.types.ResRet.f32 %7361, 3
  %7366 = add i32 %7341, 64
  %7367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7366, i32 undef)  ; BufferLoad(srv,index,wot)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = extractvalue %dx.types.ResRet.f32 %7367, 3
  %7372 = add i32 %7341, 80
  %7373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7372, i32 undef)  ; BufferLoad(srv,index,wot)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 1
  %7375 = extractvalue %dx.types.ResRet.f32 %7373, 2
  %7376 = add i32 %7341, 92
  %7377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7376, i32 undef)  ; BufferLoad(srv,index,wot)
  %7378 = extractvalue %dx.types.ResRet.i32 %7377, 0
  %7379 = call float @dx.op.dot3.f32(i32 55, float %7343, float %7344, float %7345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = select i1 %267, float %7374, float %7343
  %7381 = select i1 %267, float %7379, float %7344
  %7382 = select i1 %267, float %7375, float %7345
  %7383 = and i32 %7378, 65535
  %7384 = uitofp i32 %7383 to float
  %7385 = lshr i32 %7378, 16
  %7386 = uitofp i32 %7385 to float
  %7387 = and i32 %7356, 65535
  %7388 = and i32 %7356, 50331648
  %7389 = icmp eq i32 %7388, 33554432
  %7390 = fsub fast float %7362, %195
  %7391 = fsub fast float %7363, %196
  %7392 = fsub fast float %7364, %197
  %7393 = call float @dx.op.dot3.f32(i32 55, float %7390, float %7391, float %7392, float %7390, float %7391, float %7392)  ; Dot3(ax,ay,az,bx,by,bz)
  %7394 = call float @dx.op.unary.f32(i32 24, float %7393)  ; Sqrt(value)
  %7395 = fdiv fast float 1.000000e+00, %7394
  %7396 = fmul fast float %7395, %7390
  %7397 = fmul fast float %7395, %7391
  %7398 = fmul fast float %7395, %7392
  %7399 = fadd fast float %7394, %7348
  %7400 = fdiv fast float 1.000000e+00, %7399
  %7401 = fmul float %7359, %7400
  %7402 = fmul float %7401, %7401
  %7403 = call float @dx.op.unary.f32(i32 7, float %7402)  ; Saturate(value)
  br i1 %7389, label %7404, label %7425

; <label>:7404                                    ; preds = %7328
  %7405 = fmul fast float %7370, %7351
  %7406 = fmul fast float %7370, %7352
  %7407 = fmul fast float %7370, %7353
  %7408 = fadd fast float %7390, %7405
  %7409 = fadd fast float %7391, %7406
  %7410 = fadd fast float %7392, %7407
  %7411 = call float @dx.op.dot3.f32(i32 55, float %7408, float %7409, float %7410, float %7408, float %7409, float %7410)  ; Dot3(ax,ay,az,bx,by,bz)
  %7412 = call float @dx.op.unary.f32(i32 25, float %7411)  ; Rsqrt(value)
  %7413 = fmul fast float %7412, %7408
  %7414 = fmul fast float %7412, %7409
  %7415 = fmul fast float %7412, %7410
  %7416 = fsub fast float %195, %7362
  %7417 = fsub fast float %196, %7363
  %7418 = fsub fast float %197, %7364
  %7419 = fsub fast float -0.000000e+00, %7416
  %7420 = fsub fast float -0.000000e+00, %7417
  %7421 = fsub fast float -0.000000e+00, %7418
  %7422 = call float @dx.op.dot3.f32(i32 55, float %7419, float %7420, float %7421, float %7351, float %7352, float %7353)  ; Dot3(ax,ay,az,bx,by,bz)
  %7423 = fcmp fast ogt float %7422, 0.000000e+00
  %7424 = uitofp i1 %7423 to float
  br label %7425

; <label>:7425                                    ; preds = %7404, %7328
  %7426 = phi float [ %7424, %7404 ], [ 1.000000e+00, %7328 ]
  %7427 = phi float [ %7413, %7404 ], [ %7396, %7328 ]
  %7428 = phi float [ %7414, %7404 ], [ %7397, %7328 ]
  %7429 = phi float [ %7415, %7404 ], [ %7398, %7328 ]
  %7430 = call float @dx.op.dot3.f32(i32 55, float %7351, float %7352, float %7353, float %7427, float %7428, float %7429)  ; Dot3(ax,ay,az,bx,by,bz)
  %7431 = fmul fast float %7430, %7430
  %7432 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7433 = fsub fast float 1.000000e+00, %7432
  %7434 = fmul fast float %7433, 5.000000e-01
  %7435 = fcmp fast ogt float %7430, 0.000000e+00
  %7436 = fsub fast float 1.000000e+00, %7434
  %7437 = select i1 %7435, float %7434, float %7436
  %7438 = fmul fast float %7437, %7386
  %7439 = fadd fast float %7438, %7384
  %7440 = fmul fast float %7439, 0x3EF0001000000000
  %7441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7440, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7442 = extractvalue %dx.types.ResRet.f32 %7441, 0
  %7443 = fmul fast float %7430, %7368
  %7444 = fadd fast float %7443, %7369
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = select i1 %7389, float 1.000000e+00, float %7445
  %7447 = select i1 %7389, float %7445, float 1.000000e+00
  %7448 = fmul fast float %7394, %7365
  %7449 = fsub fast float 1.000000e+00, %7448
  %7450 = fmul fast float %7449, %7371
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = fmul fast float %7451, %7447
  %7453 = fmul fast float %7452, 2.000000e+00
  %7454 = fsub fast float 3.000000e+00, %7453
  %7455 = fmul fast float %7442, %7426
  %7456 = fmul fast float %7452, %7452
  %7457 = fmul fast float %7456, %7455
  %7458 = fmul fast float %7457, %7454
  %7459 = call float @dx.op.binary.f32(i32 36, float %7458, float %7458)  ; FMin(a,b)
  %7460 = call float @dx.op.binary.f32(i32 36, float %7458, float %7459)  ; FMin(a,b)
  %7461 = fcmp fast ogt float %7460, 0.000000e+00
  br i1 %7461, label %7470, label %7462, !dx.controlflow.hints !125

; <label>:7462                                    ; preds = %7824, %7570, %7425
  %7463 = phi float [ %7330, %7570 ], [ %7330, %7425 ], [ %7864, %7824 ]
  %7464 = phi float [ %7331, %7570 ], [ %7331, %7425 ], [ %7865, %7824 ]
  %7465 = phi float [ %7332, %7570 ], [ %7332, %7425 ], [ %7866, %7824 ]
  %7466 = phi float [ %7333, %7570 ], [ %7333, %7425 ], [ %7858, %7824 ]
  %7467 = phi float [ %7334, %7570 ], [ %7334, %7425 ], [ %7859, %7824 ]
  %7468 = phi float [ %7335, %7570 ], [ %7335, %7425 ], [ %7860, %7824 ]
  %7469 = icmp eq i32 %7329, %7339
  br i1 %7469, label %7867, label %7328

; <label>:7470                                    ; preds = %7425
  %7471 = icmp eq i32 %7387, 255
  br i1 %7471, label %7570, label %7472, !dx.controlflow.hints !126

; <label>:7472                                    ; preds = %7470
  %7473 = mul nuw nsw i32 %7387, 176
  %7474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7473, i32 undef)  ; BufferLoad(srv,index,wot)
  %7475 = extractvalue %dx.types.ResRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.ResRet.f32 %7474, 1
  %7477 = extractvalue %dx.types.ResRet.f32 %7474, 2
  %7478 = extractvalue %dx.types.ResRet.f32 %7474, 3
  %7479 = add nuw nsw i32 %7473, 16
  %7480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7479, i32 undef)  ; BufferLoad(srv,index,wot)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 1
  %7483 = add nuw nsw i32 %7473, 32
  %7484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7483, i32 undef)  ; BufferLoad(srv,index,wot)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 0
  %7486 = extractvalue %dx.types.ResRet.f32 %7484, 1
  %7487 = extractvalue %dx.types.ResRet.f32 %7484, 2
  %7488 = add nuw nsw i32 %7473, 48
  %7489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7488, i32 undef)  ; BufferLoad(srv,index,wot)
  %7490 = extractvalue %dx.types.ResRet.f32 %7489, 0
  %7491 = extractvalue %dx.types.ResRet.f32 %7489, 1
  %7492 = extractvalue %dx.types.ResRet.f32 %7489, 2
  %7493 = extractvalue %dx.types.ResRet.f32 %7489, 3
  %7494 = add nuw nsw i32 %7473, 64
  %7495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7494, i32 undef)  ; BufferLoad(srv,index,wot)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 0
  %7497 = extractvalue %dx.types.ResRet.f32 %7495, 1
  %7498 = extractvalue %dx.types.ResRet.f32 %7495, 2
  %7499 = extractvalue %dx.types.ResRet.f32 %7495, 3
  %7500 = add nuw nsw i32 %7473, 80
  %7501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7500, i32 undef)  ; BufferLoad(srv,index,wot)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  %7505 = extractvalue %dx.types.ResRet.f32 %7501, 3
  %7506 = add nuw nsw i32 %7473, 96
  %7507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = extractvalue %dx.types.ResRet.f32 %7507, 3
  %7512 = bitcast float %7482 to i32
  %7513 = fmul fast float %7487, %115
  %7514 = fmul fast float %7487, %116
  %7515 = fmul fast float %7487, %117
  %7516 = fadd fast float %7513, %195
  %7517 = fadd fast float %7514, %196
  %7518 = fadd fast float %7515, %197
  %7519 = fmul fast float %7516, %7490
  %7520 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7496, float %7519)  ; FMad(a,b,c)
  %7521 = call float @dx.op.tertiary.f32(i32 46, float %7518, float %7502, float %7520)  ; FMad(a,b,c)
  %7522 = fadd fast float %7521, %7508
  %7523 = fmul fast float %7516, %7491
  %7524 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7497, float %7523)  ; FMad(a,b,c)
  %7525 = call float @dx.op.tertiary.f32(i32 46, float %7518, float %7503, float %7524)  ; FMad(a,b,c)
  %7526 = fadd fast float %7525, %7509
  %7527 = fmul fast float %7516, %7492
  %7528 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7498, float %7527)  ; FMad(a,b,c)
  %7529 = call float @dx.op.tertiary.f32(i32 46, float %7518, float %7504, float %7528)  ; FMad(a,b,c)
  %7530 = fadd fast float %7529, %7510
  %7531 = fmul fast float %7516, %7493
  %7532 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7499, float %7531)  ; FMad(a,b,c)
  %7533 = call float @dx.op.tertiary.f32(i32 46, float %7518, float %7505, float %7532)  ; FMad(a,b,c)
  %7534 = fadd fast float %7533, %7511
  %7535 = fdiv fast float %7522, %7534
  %7536 = fdiv fast float %7526, %7534
  %7537 = fdiv fast float %7530, %7534
  %7538 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7537)  ; FMax(a,b)
  %7539 = fmul fast float %278, 0x401921FB60000000
  %7540 = call float @dx.op.unary.f32(i32 13, float %7539)  ; Sin(value)
  %7541 = call float @dx.op.unary.f32(i32 12, float %7539)  ; Cos(value)
  %7542 = fsub fast float -0.000000e+00, %7540
  %7543 = fmul fast float %7477, 5.000000e-01
  %7544 = call float @dx.op.dot2.f32(i32 54, float %278, float %278, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7545 = call float @dx.op.unary.f32(i32 22, float %7544)  ; Frc(value)
  %7546 = fmul fast float %7545, 0x404A7DD040000000
  %7547 = call float @dx.op.unary.f32(i32 22, float %7546)  ; Frc(value)
  %7548 = fmul fast float %7547, %7486
  %7549 = fadd fast float %7548, %7543
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %7549, float %7542, float 0.000000e+00)  ; FMad(a,b,c)
  %7551 = call float @dx.op.tertiary.f32(i32 46, float %7549, float %7541, float 0.000000e+00)  ; FMad(a,b,c)
  %7552 = fadd fast float %7550, %7535
  %7553 = fadd fast float %7551, %7536
  %7554 = fmul fast float %7552, %7481
  %7555 = fmul fast float %7553, %7481
  %7556 = call float @dx.op.binary.f32(i32 35, float %7554, float %7477)  ; FMax(a,b)
  %7557 = call float @dx.op.binary.f32(i32 35, float %7555, float %7477)  ; FMax(a,b)
  %7558 = call float @dx.op.binary.f32(i32 36, float %7556, float %7478)  ; FMin(a,b)
  %7559 = call float @dx.op.binary.f32(i32 36, float %7557, float %7478)  ; FMin(a,b)
  %7560 = fadd fast float %7558, %7475
  %7561 = fadd fast float %7559, %7476
  %7562 = uitofp i32 %7512 to float
  %7563 = fadd fast float %7538, %7485
  %7564 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7560, float %7561, float %7562, float undef, i32 0, i32 0, i32 undef, float %7563)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7565 = extractvalue %dx.types.ResRet.f32 %7564, 0
  %7566 = fadd fast float %7565, -1.000000e+00
  %7567 = fmul fast float %7566, %7446
  %7568 = fadd fast float %7567, 1.000000e+00
  %7569 = fmul fast float %7568, %7458
  br label %7570

; <label>:7570                                    ; preds = %7472, %7470
  %7571 = phi float [ %7569, %7472 ], [ %7458, %7470 ]
  %7572 = call float @dx.op.binary.f32(i32 36, float %7571, float %7571)  ; FMin(a,b)
  %7573 = call float @dx.op.binary.f32(i32 36, float %7571, float %7572)  ; FMin(a,b)
  %7574 = fcmp fast ogt float %7573, 0.000000e+00
  br i1 %7574, label %7575, label %7462, !dx.controlflow.hints !127

; <label>:7575                                    ; preds = %7570
  %7576 = fmul fast float %7571, %7380
  %7577 = fmul fast float %7571, %7381
  %7578 = fmul fast float %7571, %7382
  %7579 = fsub fast float %7364, %5056
  %7580 = fcmp fast ogt float %7579, 0.000000e+00
  %7581 = fsub fast float %197, %5056
  %7582 = fcmp fast ogt float %7581, 0.000000e+00
  %7583 = xor i1 %7582, %7580
  %7584 = fsub fast float %5056, %7364
  %7585 = fmul fast float %7584, 2.000000e+00
  %7586 = fadd fast float %7585, %7364
  %7587 = select i1 %7583, float %7364, float %7586
  %7588 = fsub fast float %7587, %197
  %7589 = call float @dx.op.dot3.f32(i32 55, float %7390, float %7391, float %7588, float %7390, float %7391, float %7588)  ; Dot3(ax,ay,az,bx,by,bz)
  %7590 = call float @dx.op.unary.f32(i32 25, float %7589)  ; Rsqrt(value)
  %7591 = fmul fast float %7590, %7390
  %7592 = fmul fast float %7590, %7391
  %7593 = fmul fast float %7590, %7588
  %7594 = fsub fast float %5056, %197
  %7595 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7596 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7591, float %7592, float %7593)  ; Dot3(ax,ay,az,bx,by,bz)
  %7597 = fdiv fast float 1.000000e+00, %7596
  %7598 = fmul fast float %7597, %7595
  %7599 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7581, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7600 = fcmp fast ogt float %7599, 0.000000e+00
  %7601 = fcmp fast olt float %7599, 0.000000e+00
  %7602 = zext i1 %7600 to i32
  %7603 = zext i1 %7601 to i32
  %7604 = sub nsw i32 %7602, %7603
  %7605 = sitofp i32 %7604 to float
  %7606 = fsub fast float %7587, %5056
  %7607 = call float @dx.op.dot3.f32(i32 55, float %7390, float %7391, float %7606, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7608 = fcmp fast ogt float %7607, 0.000000e+00
  %7609 = fcmp fast olt float %7607, 0.000000e+00
  %7610 = zext i1 %7608 to i32
  %7611 = zext i1 %7609 to i32
  %7612 = sub nsw i32 %7610, %7611
  %7613 = sitofp i32 %7612 to float
  %7614 = fcmp fast une float %7605, %7613
  br i1 %7614, label %7615, label %7625

; <label>:7615                                    ; preds = %7575
  %7616 = fmul fast float %7598, %7593
  %7617 = fmul fast float %7598, %7592
  %7618 = fmul fast float %7598, %7591
  %7619 = fmul fast float %7618, %7618
  %7620 = fmul fast float %7617, %7617
  %7621 = fadd fast float %7619, %7620
  %7622 = fmul fast float %7616, %7616
  %7623 = fadd fast float %7621, %7622
  %7624 = call float @dx.op.unary.f32(i32 24, float %7623)  ; Sqrt(value)
  br label %7637

; <label>:7625                                    ; preds = %7575
  %7626 = icmp slt i32 %7604, 0
  br i1 %7626, label %7627, label %7637

; <label>:7627                                    ; preds = %7625
  %7628 = fsub fast float %195, %7362
  %7629 = fsub fast float %196, %7363
  %7630 = fsub fast float %197, %7587
  %7631 = fmul fast float %7628, %7628
  %7632 = fmul fast float %7629, %7629
  %7633 = fadd fast float %7631, %7632
  %7634 = fmul fast float %7630, %7630
  %7635 = fadd fast float %7633, %7634
  %7636 = call float @dx.op.unary.f32(i32 24, float %7635)  ; Sqrt(value)
  br label %7637

; <label>:7637                                    ; preds = %7627, %7625, %7615
  %7638 = phi float [ %7624, %7615 ], [ %7636, %7627 ], [ 0.000000e+00, %7625 ]
  %7639 = and i1 %7582, %7580
  %7640 = fsub fast float -0.000000e+00, %7638
  %7641 = select i1 %7639, float -0.000000e+00, float %7640
  %7642 = fmul fast float %5057, 0x3FF7154760000000
  %7643 = fmul fast float %7642, %7641
  %7644 = fmul fast float %5058, 0x3FF7154760000000
  %7645 = fmul fast float %7644, %7641
  %7646 = fmul fast float %5059, 0x3FF7154760000000
  %7647 = fmul fast float %7646, %7641
  %7648 = call float @dx.op.unary.f32(i32 21, float %7643)  ; Exp(value)
  %7649 = call float @dx.op.unary.f32(i32 21, float %7645)  ; Exp(value)
  %7650 = call float @dx.op.unary.f32(i32 21, float %7647)  ; Exp(value)
  %7651 = call float @dx.op.unary.f32(i32 7, float %7648)  ; Saturate(value)
  %7652 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7653 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7654 = fmul fast float %7576, %7651
  %7655 = fmul fast float %7577, %7652
  %7656 = fmul fast float %7578, %7653
  %7657 = fsub fast float %7396, %5882
  %7658 = fsub fast float %7397, %5883
  %7659 = fsub fast float %7398, %5884
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7657, float %7658, float %7659, float %7657, float %7658, float %7659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.unary.f32(i32 25, float %7660)  ; Rsqrt(value)
  %7662 = fmul fast float %7661, %7657
  %7663 = fmul fast float %7661, %7658
  %7664 = fmul fast float %7661, %7659
  %7665 = call float @dx.op.dot3.f32(i32 55, float %7396, float %7397, float %7398, float %5839, float %5840, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = call float @dx.op.dot3.f32(i32 55, float %5885, float %5886, float %5887, float %7662, float %7663, float %7664)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  %7668 = fmul fast float %7667, %7403
  %7669 = fmul fast float %7667, %7667
  %7670 = fmul fast float %7669, %5903
  %7671 = call float @dx.op.unary.f32(i32 7, float %7670)  ; Saturate(value)
  %7672 = fmul fast float %7668, %7671
  %7673 = bitcast float %7393 to i32
  %7674 = ashr i32 %7673, 1
  %7675 = sub nsw i32 1597463007, %7674
  %7676 = bitcast i32 %7675 to float
  %7677 = fmul fast float %7676, %7390
  %7678 = fmul fast float %7676, %7391
  %7679 = fmul fast float %7676, %7392
  %7680 = fsub fast float %7677, %5882
  %7681 = fsub fast float %7678, %5883
  %7682 = fsub fast float %7679, %5884
  %7683 = call float @dx.op.dot3.f32(i32 55, float %7680, float %7681, float %7682, float %7680, float %7681, float %7682)  ; Dot3(ax,ay,az,bx,by,bz)
  %7684 = call float @dx.op.unary.f32(i32 25, float %7683)  ; Rsqrt(value)
  %7685 = fmul fast float %7680, %7684
  %7686 = fmul fast float %7681, %7684
  %7687 = fmul fast float %7682, %7684
  %7688 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %7685, float %7686, float %7687)  ; Dot3(ax,ay,az,bx,by,bz)
  %7689 = fmul fast float %7688, %7688
  %7690 = call float @dx.op.unary.f32(i32 6, float %7665)  ; FAbs(value)
  %7691 = fsub fast float 1.000000e+00, %5845
  %7692 = call float @dx.op.binary.f32(i32 35, float %7691, float 0x3F847AE140000000)  ; FMax(a,b)
  %7693 = fmul fast float %7692, %7692
  %7694 = fmul fast float %7693, %7693
  %7695 = fsub fast float 1.000000e+00, %7694
  %7696 = fmul fast float %5890, %5890
  %7697 = fmul fast float %7696, %7695
  %7698 = fadd fast float %7697, %7694
  %7699 = bitcast float %7698 to i32
  %7700 = ashr i32 %7699, 1
  %7701 = add nsw i32 %7700, 532487669
  %7702 = bitcast i32 %7701 to float
  %7703 = fadd fast float %7702, %5890
  %7704 = fmul fast float %7694, %7689
  %7705 = fsub fast float 1.000000e+00, %7689
  %7706 = fadd fast float %7705, %7704
  %7707 = fmul fast float %7690, %7690
  %7708 = fmul fast float %7707, %7695
  %7709 = fadd fast float %7708, %7694
  %7710 = bitcast float %7709 to i32
  %7711 = ashr i32 %7710, 1
  %7712 = add nsw i32 %7711, 532487669
  %7713 = bitcast i32 %7712 to float
  %7714 = fadd fast float %7713, %7690
  %7715 = fmul fast float %7706, %7706
  %7716 = fmul fast float %7715, %7703
  %7717 = fmul fast float %7716, %7714
  %7718 = fdiv fast float 1.000000e+00, %7717
  %7719 = bitcast float %7694 to i32
  %7720 = sitofp i32 %7719 to float
  %7721 = fmul fast float %7720, 0x3FE7F73180000000
  %7722 = fadd fast float %7721, 0x41AFE27C40000000
  %7723 = fptosi float %7722 to i32
  %7724 = bitcast i32 %7723 to float
  %7725 = fmul fast float %7359, 0x3FD80E9D60000000
  %7726 = fmul fast float %7725, %7676
  %7727 = fadd fast float %7724, %7726
  %7728 = bitcast float %7727 to i32
  %7729 = sub nsw i32 2129859010, %7728
  %7730 = bitcast i32 %7729 to float
  %7731 = fmul fast float %7694, %7718
  %7732 = fmul fast float %7731, %7724
  %7733 = fmul fast float %7732, %7730
  %7734 = fmul fast float %6003, 0x3FF9999980000000
  %7735 = fsub fast float 5.000000e+00, %7734
  %7736 = call float @dx.op.unary.f32(i32 6, float %7666)  ; FAbs(value)
  %7737 = fsub fast float 1.000000e+00, %7736
  %7738 = fmul fast float %6003, 0x41D9660740000000
  %7739 = fadd fast float %7738, 0xC1EFBF8940000000
  %7740 = bitcast float %7737 to i32
  %7741 = sitofp i32 %7740 to float
  %7742 = fmul fast float %7741, %7735
  %7743 = fadd fast float %7739, %7742
  %7744 = fptosi float %7743 to i32
  %7745 = bitcast i32 %7744 to float
  %7746 = fsub fast float 1.000000e+00, %5836
  %7747 = fsub fast float 1.000000e+00, %5837
  %7748 = fsub fast float 1.000000e+00, %5888
  %7749 = fmul fast float %7745, %7746
  %7750 = fmul fast float %7745, %7747
  %7751 = fmul fast float %7745, %7748
  %7752 = fadd fast float %7749, %5836
  %7753 = fadd fast float %7750, %5837
  %7754 = fadd fast float %7751, %5888
  br i1 %6026, label %7755, label %7778

; <label>:7755                                    ; preds = %7637
  %7756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4652, float %7736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.ResRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.ResRet.f32 %7756, 2
  %7760 = fadd fast float %7757, -5.000000e-01
  %7761 = fadd fast float %7758, -5.000000e-01
  %7762 = fadd fast float %7759, -5.000000e-01
  %7763 = fmul fast float %5836, 4.000000e+00
  %7764 = fmul fast float %7763, %7746
  %7765 = fmul fast float %7764, %7760
  %7766 = fmul fast float %5837, 4.000000e+00
  %7767 = fmul fast float %7766, %7747
  %7768 = fmul fast float %7767, %7761
  %7769 = fmul fast float %5888, 4.000000e+00
  %7770 = fmul fast float %7769, %7748
  %7771 = fmul fast float %7770, %7762
  %7772 = fadd fast float %7765, %7752
  %7773 = fadd fast float %7768, %7753
  %7774 = fadd fast float %7771, %7754
  %7775 = call float @dx.op.unary.f32(i32 7, float %7772)  ; Saturate(value)
  %7776 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7777 = call float @dx.op.unary.f32(i32 7, float %7774)  ; Saturate(value)
  br label %7778

; <label>:7778                                    ; preds = %7755, %7637
  %7779 = phi float [ %7775, %7755 ], [ %7752, %7637 ]
  %7780 = phi float [ %7776, %7755 ], [ %7753, %7637 ]
  %7781 = phi float [ %7777, %7755 ], [ %7754, %7637 ]
  %7782 = fmul fast float %7665, 9.843750e-01
  %7783 = fadd fast float %7782, 7.812500e-03
  %7784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7783, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7785 = extractvalue %dx.types.ResRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.ResRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.ResRet.f32 %7784, 2
  %7788 = extractvalue %dx.types.ResRet.f32 %7784, 3
  %7789 = fsub fast float %7787, %7785
  %7790 = fsub fast float %7788, %7786
  %7791 = fmul fast float %7789, %6013
  %7792 = fmul fast float %7790, %6013
  %7793 = fadd fast float %7791, %7785
  %7794 = fadd fast float %7792, %7786
  %7795 = fmul fast float %7793, %5836
  %7796 = fmul fast float %7793, %5837
  %7797 = fmul fast float %7793, %5888
  %7798 = fadd fast float %7795, %7794
  %7799 = fadd fast float %7796, %7794
  %7800 = fadd fast float %7797, %7794
  br i1 %6026, label %7801, label %7824

; <label>:7801                                    ; preds = %7778
  %7802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4652, float %7665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7803 = extractvalue %dx.types.ResRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.ResRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.ResRet.f32 %7802, 2
  %7806 = fadd fast float %7803, -5.000000e-01
  %7807 = fadd fast float %7804, -5.000000e-01
  %7808 = fadd fast float %7805, -5.000000e-01
  %7809 = fmul fast float %5836, 4.000000e+00
  %7810 = fmul fast float %7809, %7746
  %7811 = fmul fast float %7810, %7806
  %7812 = fmul fast float %5837, 4.000000e+00
  %7813 = fmul fast float %7812, %7747
  %7814 = fmul fast float %7813, %7807
  %7815 = fmul fast float %5888, 4.000000e+00
  %7816 = fmul fast float %7815, %7748
  %7817 = fmul fast float %7816, %7808
  %7818 = fadd fast float %7811, %7798
  %7819 = fadd fast float %7814, %7799
  %7820 = fadd fast float %7817, %7800
  %7821 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7822 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7823 = call float @dx.op.unary.f32(i32 7, float %7820)  ; Saturate(value)
  br label %7824

; <label>:7824                                    ; preds = %7801, %7778
  %7825 = phi float [ %7821, %7801 ], [ %7798, %7778 ]
  %7826 = phi float [ %7822, %7801 ], [ %7799, %7778 ]
  %7827 = phi float [ %7823, %7801 ], [ %7800, %7778 ]
  %7828 = call float @dx.op.binary.f32(i32 35, float %7826, float %7827)  ; FMax(a,b)
  %7829 = call float @dx.op.binary.f32(i32 35, float %7825, float %7828)  ; FMax(a,b)
  %7830 = fsub fast float 1.000000e+00, %7829
  %7831 = fmul fast float %7779, %7733
  %7832 = fmul fast float %7780, %7733
  %7833 = fmul fast float %7781, %7733
  %7834 = fsub fast float 1.000000e+00, %7666
  %7835 = bitcast float %7834 to i32
  %7836 = sitofp i32 %7835 to float
  %7837 = fmul fast float %7836, 5.000000e+00
  %7838 = fadd fast float %7837, 0xC1EFBF8940000000
  %7839 = fptosi float %7838 to i32
  %7840 = bitcast i32 %7839 to float
  %7841 = fmul fast float %7840, %4653
  %7842 = fmul fast float %7830, %7841
  %7843 = fmul fast float %7842, %6076
  %7844 = fmul fast float %7842, %6077
  %7845 = fmul fast float %7842, %6078
  %7846 = fadd fast float %7843, %7831
  %7847 = fadd fast float %7844, %7832
  %7848 = fadd fast float %7845, %7833
  %7849 = fmul fast float %7654, %4649
  %7850 = fmul fast float %7849, %7672
  %7851 = fmul fast float %7850, %7830
  %7852 = fmul fast float %7655, %4649
  %7853 = fmul fast float %7852, %7672
  %7854 = fmul fast float %7853, %7830
  %7855 = fmul fast float %7656, %4649
  %7856 = fmul fast float %7855, %7672
  %7857 = fmul fast float %7856, %7830
  %7858 = fadd fast float %7851, %7333
  %7859 = fadd fast float %7854, %7334
  %7860 = fadd fast float %7857, %7335
  %7861 = fmul fast float %7850, %7846
  %7862 = fmul fast float %7853, %7847
  %7863 = fmul fast float %7856, %7848
  %7864 = fadd fast float %7861, %7330
  %7865 = fadd fast float %7862, %7331
  %7866 = fadd fast float %7863, %7332
  br label %7462

; <label>:7867                                    ; preds = %7462
  br label %7868

; <label>:7868                                    ; preds = %7867, %7296
  %7869 = phi float [ %7298, %7296 ], [ %7463, %7867 ]
  %7870 = phi float [ %7299, %7296 ], [ %7464, %7867 ]
  %7871 = phi float [ %7300, %7296 ], [ %7465, %7867 ]
  %7872 = phi float [ %7301, %7296 ], [ %7466, %7867 ]
  %7873 = phi float [ %7302, %7296 ], [ %7467, %7867 ]
  %7874 = phi float [ %7303, %7296 ], [ %7468, %7867 ]
  %7875 = add i32 %7297, 1
  %7876 = icmp ugt i32 %7875, %7293
  br i1 %7876, label %7877, label %7296

; <label>:7877                                    ; preds = %7868
  br label %7878

; <label>:7878                                    ; preds = %7877, %7246, %7236
  %7879 = phi float [ %7237, %7236 ], [ %7237, %7246 ], [ %7869, %7877 ]
  %7880 = phi float [ %7238, %7236 ], [ %7238, %7246 ], [ %7870, %7877 ]
  %7881 = phi float [ %7239, %7236 ], [ %7239, %7246 ], [ %7871, %7877 ]
  %7882 = phi float [ %7240, %7236 ], [ %7240, %7246 ], [ %7872, %7877 ]
  %7883 = phi float [ %7241, %7236 ], [ %7241, %7246 ], [ %7873, %7877 ]
  %7884 = phi float [ %7242, %7236 ], [ %7242, %7246 ], [ %7874, %7877 ]
  %7885 = fmul fast float %4649, %4649
  %7886 = fmul fast float %7885, %6102
  %7887 = fsub fast float -0.000000e+00, %7886
  %7888 = fmul fast float %7885, %6103
  %7889 = fsub fast float -0.000000e+00, %7888
  %7890 = fmul fast float %7885, %6104
  %7891 = fsub fast float -0.000000e+00, %7890
  %7892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.f32 %7892, 0
  %7894 = fmul fast float %7893, %6108
  %7895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7895, 3
  %7897 = fsub fast float 1.000000e+00, %4656
  %7898 = call float @dx.op.unary.f32(i32 7, float %7897)  ; Saturate(value)
  %7899 = fadd fast float %7884, %4655
  %7900 = fmul fast float %7899, %4656
  %7901 = fmul fast float %7898, %7896
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 3
  %7904 = fmul fast float %7882, %5842
  %7905 = fmul fast float %7883, %5843
  %7906 = fmul fast float %7884, %5844
  %7907 = fcmp fast ogt float %99, %230
  %7908 = and i1 %7907, %5062
  %7909 = or i1 %5068, %7908
  %7910 = icmp eq i32 %5061, 2
  %7911 = fcmp fast ole float %99, %230
  %7912 = and i1 %7911, %7910
  %7913 = or i1 %7912, %7909
  br i1 %7908, label %7914, label %8171

; <label>:7914                                    ; preds = %7878
  %7915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.f32 %7915, 2
  %7917 = extractvalue %dx.types.CBufRet.f32 %7915, 3
  %7918 = fmul fast float %7916, %108
  %7919 = fmul fast float %7917, %109
  %7920 = call float @dx.op.unary.f32(i32 7, float %7918)  ; Saturate(value)
  %7921 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  %7922 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7920, float %7921, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7923 = extractvalue %dx.types.ResRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.ResRet.f32 %7922, 1
  %7925 = extractvalue %dx.types.ResRet.f32 %7922, 2
  %7926 = extractvalue %dx.types.ResRet.f32 %7922, 3
  %7927 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7920, float %7921, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7928 = extractvalue %dx.types.ResRet.f32 %7927, 0
  %7929 = extractvalue %dx.types.ResRet.f32 %7927, 1
  %7930 = extractvalue %dx.types.ResRet.f32 %7927, 2
  %7931 = extractvalue %dx.types.ResRet.f32 %7927, 3
  %7932 = call float @dx.op.binary.f32(i32 35, float %7924, float %7925)  ; FMax(a,b)
  %7933 = call float @dx.op.binary.f32(i32 35, float %7923, float %7932)  ; FMax(a,b)
  %7934 = call float @dx.op.binary.f32(i32 35, float %7933, float %7926)  ; FMax(a,b)
  %7935 = call float @dx.op.binary.f32(i32 36, float %7929, float %7930)  ; FMin(a,b)
  %7936 = call float @dx.op.binary.f32(i32 36, float %7928, float %7935)  ; FMin(a,b)
  %7937 = call float @dx.op.binary.f32(i32 36, float %7936, float %7931)  ; FMin(a,b)
  %7938 = fmul fast float %7934, 2.550000e+02
  %7939 = fadd fast float %7938, 0x3F70101020000000
  %7940 = fptoui float %7939 to i32
  %7941 = fmul fast float %7937, 2.550000e+02
  %7942 = fadd fast float %7941, 0x3F70101020000000
  %7943 = fptoui float %7942 to i32
  %7944 = icmp ult i32 %7940, %7943
  br i1 %7944, label %7945, label %8113

; <label>:7945                                    ; preds = %7914
  %7946 = fcmp fast ogt float %98, 9.843750e-01
  %7947 = fadd fast float %99, -4.000000e+00
  %7948 = select i1 %7946, float -4.000000e+00, float %7947
  %7949 = call float @dx.op.binary.f32(i32 35, float %7948, float 0.000000e+00)  ; FMax(a,b)
  %7950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7951 = extractvalue %dx.types.CBufRet.f32 %7950, 0
  %7952 = fadd fast float %7951, %7949
  %7953 = extractvalue %dx.types.CBufRet.f32 %7950, 2
  %7954 = fmul fast float %7952, %7953
  %7955 = call float @dx.op.unary.f32(i32 23, float %7954)  ; Log(value)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7950, 3
  %7957 = fmul fast float %7956, %7955
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 2
  %7960 = fmul fast float %7957, %7959
  %7961 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7962 = uitofp i32 %7940 to float
  %7963 = uitofp i32 %7943 to float
  %7964 = fadd fast float %7962, 5.000000e-01
  %7965 = fadd fast float %7963, 5.000000e-01
  %7966 = fmul fast float %7959, %7964
  %7967 = fmul fast float %7959, %7965
  %7968 = fadd fast float %7966, 0x3F0FFB4800000000
  %7969 = fadd fast float %7967, 0xBF0FFB4800000000
  %7970 = call float @dx.op.binary.f32(i32 35, float %7961, float %7968)  ; FMax(a,b)
  %7971 = call float @dx.op.binary.f32(i32 36, float %7970, float %7969)  ; FMin(a,b)
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 2
  %7975 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7976 = fmul fast float %7973, %7971
  %7977 = fadd fast float %7975, %7976
  %7978 = fadd fast float %7975, %7974
  %7979 = fsub fast float %7973, %7974
  %7980 = fadd fast float %7979, %7975
  %7981 = call float @dx.op.binary.f32(i32 35, float %7977, float %7978)  ; FMax(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7981, float %7980)  ; FMin(a,b)
  %7983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7920, float %7921, float %7982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7984 = extractvalue %dx.types.ResRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.ResRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.ResRet.f32 %7983, 2
  %7987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.i32 %7987, 0
  %7989 = extractvalue %dx.types.CBufRet.i32 %7987, 1
  %7990 = uitofp i32 %7988 to float
  %7991 = uitofp i32 %7989 to float
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7995 = fmul fast float %7990, %7920
  %7996 = fmul fast float %7991, %7921
  %7997 = fadd fast float %7995, -5.000000e-01
  %7998 = fadd fast float %7996, -5.000000e-01
  %7999 = call float @dx.op.unary.f32(i32 22, float %7997)  ; Frc(value)
  %8000 = call float @dx.op.unary.f32(i32 22, float %7998)  ; Frc(value)
  %8001 = fmul fast float %7999, %7999
  %8002 = fmul fast float %8001, %7999
  %8003 = fsub fast float 3.000000e+00, %7999
  %8004 = fmul fast float %8001, %8003
  %8005 = fmul fast float %7999, 3.000000e+00
  %8006 = fmul fast float %8002, 3.000000e+00
  %8007 = fmul fast float %8001, 6.000000e+00
  %8008 = fsub fast float %8006, %8007
  %8009 = fadd fast float %8008, 4.000000e+00
  %8010 = fmul fast float %8009, 0x3FC5555560000000
  %8011 = fmul fast float %8002, -3.000000e+00
  %8012 = fadd fast float %8001, %7999
  %8013 = fmul fast float %8012, 3.000000e+00
  %8014 = fadd fast float %8011, 1.000000e+00
  %8015 = fadd fast float %8014, %8013
  %8016 = fmul fast float %8002, 0x3FC5555560000000
  %8017 = fmul fast float %8000, %8000
  %8018 = fmul fast float %8017, %8000
  %8019 = fsub fast float 3.000000e+00, %8000
  %8020 = fmul fast float %8017, %8019
  %8021 = fmul fast float %8000, 3.000000e+00
  %8022 = fmul fast float %8018, 3.000000e+00
  %8023 = fmul fast float %8017, 6.000000e+00
  %8024 = fsub fast float %8022, %8023
  %8025 = fadd fast float %8024, 4.000000e+00
  %8026 = fmul fast float %8025, 0x3FC5555560000000
  %8027 = fmul fast float %8018, -3.000000e+00
  %8028 = fadd fast float %8017, %8000
  %8029 = fmul fast float %8028, 3.000000e+00
  %8030 = fadd fast float %8027, 1.000000e+00
  %8031 = fadd fast float %8030, %8029
  %8032 = fmul fast float %8018, 0x3FC5555560000000
  %8033 = fadd fast float %7999, 1.000000e+00
  %8034 = fsub fast float 1.000000e+00, %8005
  %8035 = fadd fast float %8034, %8004
  %8036 = fadd fast float %8035, %8009
  %8037 = fmul fast float %8036, 0x3FC5555560000000
  %8038 = fdiv fast float %8010, %8037
  %8039 = fsub fast float %8033, %8038
  %8040 = fsub fast float 1.000000e+00, %7999
  %8041 = fadd fast float %8015, %8002
  %8042 = fmul fast float %8041, 0x3FC5555560000000
  %8043 = fdiv fast float %8016, %8042
  %8044 = fadd fast float %8040, %8043
  %8045 = fadd fast float %8000, 1.000000e+00
  %8046 = fsub fast float 1.000000e+00, %8021
  %8047 = fadd fast float %8046, %8020
  %8048 = fadd fast float %8047, %8025
  %8049 = fmul fast float %8048, 0x3FC5555560000000
  %8050 = fdiv fast float %8026, %8049
  %8051 = fsub fast float %8045, %8050
  %8052 = fsub fast float 1.000000e+00, %8000
  %8053 = fadd fast float %8031, %8018
  %8054 = fmul fast float %8053, 0x3FC5555560000000
  %8055 = fdiv fast float %8032, %8054
  %8056 = fadd fast float %8055, %8052
  %8057 = fmul fast float %8039, %7993
  %8058 = fsub fast float %7920, %8057
  %8059 = fmul fast float %8044, %7993
  %8060 = fadd fast float %8059, %7920
  %8061 = fmul fast float %8056, %7994
  %8062 = fadd fast float %8061, %7921
  %8063 = fmul fast float %8051, %7994
  %8064 = fsub fast float %7921, %8063
  %8065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8058, float %8064, float %7982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8066 = extractvalue %dx.types.ResRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.ResRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.ResRet.f32 %8065, 2
  %8069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8060, float %8064, float %7982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8070 = extractvalue %dx.types.ResRet.f32 %8069, 0
  %8071 = extractvalue %dx.types.ResRet.f32 %8069, 1
  %8072 = extractvalue %dx.types.ResRet.f32 %8069, 2
  %8073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8058, float %8062, float %7982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8074 = extractvalue %dx.types.ResRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.ResRet.f32 %8073, 1
  %8076 = extractvalue %dx.types.ResRet.f32 %8073, 2
  %8077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8060, float %8062, float %7982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8078 = extractvalue %dx.types.ResRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.ResRet.f32 %8077, 1
  %8080 = extractvalue %dx.types.ResRet.f32 %8077, 2
  %8081 = fsub fast float %8074, %8066
  %8082 = fsub fast float %8075, %8067
  %8083 = fsub fast float %8076, %8068
  %8084 = fmul fast float %8081, %8054
  %8085 = fmul fast float %8082, %8054
  %8086 = fmul fast float %8083, %8054
  %8087 = fadd fast float %8084, %8066
  %8088 = fadd fast float %8085, %8067
  %8089 = fadd fast float %8086, %8068
  %8090 = fsub fast float %8078, %8070
  %8091 = fsub fast float %8079, %8071
  %8092 = fsub fast float %8080, %8072
  %8093 = fmul fast float %8090, %8054
  %8094 = fmul fast float %8091, %8054
  %8095 = fmul fast float %8092, %8054
  %8096 = fsub fast float %8070, %8087
  %8097 = fadd fast float %8096, %8093
  %8098 = fsub fast float %8071, %8088
  %8099 = fadd fast float %8098, %8094
  %8100 = fsub fast float %8072, %8089
  %8101 = fadd fast float %8100, %8095
  %8102 = fmul fast float %8097, %8042
  %8103 = fmul fast float %8099, %8042
  %8104 = fmul fast float %8101, %8042
  %8105 = fadd fast float %8102, %8087
  %8106 = fadd fast float %8103, %8088
  %8107 = fadd fast float %8104, %8089
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8110 = fmul fast float %8105, %8109
  %8111 = fmul fast float %8106, %8109
  %8112 = fmul fast float %8107, %8109
  br label %8113

; <label>:8113                                    ; preds = %7945, %7914
  %8114 = phi float [ %7984, %7945 ], [ 1.000000e+00, %7914 ]
  %8115 = phi float [ %7985, %7945 ], [ 1.000000e+00, %7914 ]
  %8116 = phi float [ %7986, %7945 ], [ 1.000000e+00, %7914 ]
  %8117 = phi float [ %8110, %7945 ], [ 0.000000e+00, %7914 ]
  %8118 = phi float [ %8111, %7945 ], [ 0.000000e+00, %7914 ]
  %8119 = phi float [ %8112, %7945 ], [ 0.000000e+00, %7914 ]
  %8120 = fmul fast float %8117, %7887
  %8121 = fmul fast float %8118, %7889
  %8122 = fmul fast float %8119, %7891
  %8123 = call float @dx.op.dot3.f32(i32 55, float %8114, float %8115, float %8116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8124 = call float @dx.op.dot3.f32(i32 55, float %8120, float %8121, float %8122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = select i1 %267, float %8123, float %8114
  %8126 = select i1 %267, float %8123, float %8115
  %8127 = select i1 %267, float 1.000000e+00, float %8116
  %8128 = select i1 %267, float %8124, float %8120
  %8129 = select i1 %267, float 0.000000e+00, float %8121
  %8130 = select i1 %267, float 0.000000e+00, float %8122
  %8131 = fmul fast float %8125, %7904
  %8132 = fmul fast float %8126, %7905
  %8133 = fmul fast float %8127, %7906
  %8134 = fadd fast float %8131, %8128
  %8135 = fadd fast float %8132, %8129
  %8136 = fadd fast float %8130, %8133
  %8137 = fmul fast float %8125, %7879
  %8138 = fmul fast float %8126, %7880
  %8139 = fmul fast float %8127, %7881
  %8140 = fmul fast float %144, %7916
  %8141 = fmul fast float %146, %7917
  %8142 = fsub fast float 1.000000e+00, %8140
  %8143 = fsub fast float 1.000000e+00, %8141
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.CBufRet.f32 %8144, 1
  %8147 = extractvalue %dx.types.CBufRet.f32 %8144, 2
  %8148 = fmul fast float %8142, %8145
  %8149 = fmul fast float %8142, %8146
  %8150 = fmul fast float %8142, %8147
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 0
  %8153 = extractvalue %dx.types.CBufRet.f32 %8151, 1
  %8154 = extractvalue %dx.types.CBufRet.f32 %8151, 2
  %8155 = fmul fast float %8143, %8152
  %8156 = fmul fast float %8143, %8153
  %8157 = fmul fast float %8143, %8154
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 0
  %8160 = extractvalue %dx.types.CBufRet.f32 %8158, 1
  %8161 = extractvalue %dx.types.CBufRet.f32 %8158, 2
  %8162 = fadd fast float %8155, %8159
  %8163 = fadd fast float %8162, %8148
  %8164 = fadd fast float %8156, %8160
  %8165 = fadd fast float %8164, %8149
  %8166 = fadd fast float %8157, %8161
  %8167 = fadd fast float %8166, %8150
  %8168 = fmul fast float %8163, %230
  %8169 = fmul fast float %8165, %230
  %8170 = fmul fast float %8167, %230
  br label %8171

; <label>:8171                                    ; preds = %8113, %7878
  %8172 = phi float [ %8168, %8113 ], [ %195, %7878 ]
  %8173 = phi float [ %8169, %8113 ], [ %196, %7878 ]
  %8174 = phi float [ %8170, %8113 ], [ %197, %7878 ]
  %8175 = phi float [ %230, %8113 ], [ %99, %7878 ]
  %8176 = phi float [ %8134, %8113 ], [ %7904, %7878 ]
  %8177 = phi float [ %8135, %8113 ], [ %7905, %7878 ]
  %8178 = phi float [ %8136, %8113 ], [ %7906, %7878 ]
  %8179 = phi float [ %8137, %8113 ], [ %7879, %7878 ]
  %8180 = phi float [ %8138, %8113 ], [ %7880, %7878 ]
  %8181 = phi float [ %8139, %8113 ], [ %7881, %7878 ]
  %8182 = phi float [ %8114, %8113 ], [ 1.000000e+00, %7878 ]
  br i1 %7913, label %9337, label %8183

; <label>:8183                                    ; preds = %8171
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.CBufRet.f32 %8184, 1
  %8187 = extractvalue %dx.types.CBufRet.f32 %8184, 2
  %8188 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8193 = extractvalue %dx.types.CBufRet.f32 %8189, 3
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8198 = extractvalue %dx.types.CBufRet.f32 %8194, 3
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.CBufRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %8203 = extractvalue %dx.types.CBufRet.f32 %8199, 3
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 3
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 3
  %8208 = extractvalue %dx.types.CBufRet.f32 %8206, 0
  %8209 = extractvalue %dx.types.CBufRet.f32 %8206, 1
  %8210 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %8211 = fcmp fast olt float %8210, -5.000000e-01
  %8212 = call float @dx.op.dot3.f32(i32 55, float %8172, float %8173, float %8174, float %8172, float %8173, float %8174)  ; Dot3(ax,ay,az,bx,by,bz)
  %8213 = call float @dx.op.unary.f32(i32 25, float %8212)  ; Rsqrt(value)
  %8214 = fmul fast float %8213, %8212
  %8215 = fmul fast float %8213, %8172
  %8216 = fmul fast float %8213, %8173
  %8217 = fmul fast float %8213, %8174
  %8218 = fadd fast float %8214, %8188
  %8219 = call float @dx.op.dot3.f32(i32 55, float %8215, float %8216, float %8217, float %8185, float %8186, float %8187)  ; Dot3(ax,ay,az,bx,by,bz)
  %8220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.i32 %8220, 1
  %8222 = and i32 %8221, 1
  %8223 = icmp ne i32 %8222, 0
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 2
  %8226 = fcmp fast ogt float %8225, 0.000000e+00
  %8227 = and i1 %8223, %8226
  br i1 %8227, label %8228, label %8634, !dx.controlflow.hints !128

; <label>:8228                                    ; preds = %8183
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 3
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8235 = fsub fast float %8232, %8234
  %8236 = and i32 %8221, 2
  %8237 = extractvalue %dx.types.CBufRet.i32 %8220, 0
  %8238 = call i32 @dx.op.binary.i32(i32 40, i32 %8237, i32 3)  ; UMin(a,b)
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8243 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8244 = fsub fast float %8240, %8242
  %8245 = fsub fast float %8241, %8243
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = fcmp fast ogt float %8247, 0.000000e+00
  %8249 = fsub fast float -0.000000e+00, %8244
  %8250 = fsub fast float -0.000000e+00, %8245
  %8251 = call float @dx.op.dot2.f32(i32 54, float %8215, float %8216, float %8215, float %8216)  ; Dot2(ax,ay,bx,by)
  %8252 = call float @dx.op.dot2.f32(i32 54, float %8215, float %8216, float %8249, float %8250)  ; Dot2(ax,ay,bx,by)
  %8253 = fmul fast float %8252, 2.000000e+00
  %8254 = call float @dx.op.dot2.f32(i32 54, float %8249, float %8250, float %8249, float %8250)  ; Dot2(ax,ay,bx,by)
  %8255 = fmul fast float %8247, %8247
  %8256 = fsub fast float %8254, %8255
  %8257 = fmul fast float %8253, %8253
  %8258 = fmul fast float %8251, 4.000000e+00
  %8259 = fmul fast float %8258, %8256
  %8260 = fsub fast float %8257, %8259
  %8261 = fcmp fast ogt float %8260, 0.000000e+00
  br i1 %8261, label %8262, label %8277

; <label>:8262                                    ; preds = %8228
  %8263 = fcmp fast ogt float %8253, 0.000000e+00
  %8264 = call float @dx.op.unary.f32(i32 24, float %8260)  ; Sqrt(value)
  %8265 = fsub fast float -0.000000e+00, %8264
  %8266 = select i1 %8263, float %8264, float %8265
  %8267 = fadd fast float %8266, %8253
  %8268 = fmul float %8267, -5.000000e-01
  %8269 = fdiv fast float %8268, %8251
  %8270 = call float @dx.op.binary.f32(i32 35, float %8269, float 0.000000e+00)  ; FMax(a,b)
  %8271 = call float @dx.op.binary.f32(i32 36, float %8214, float %8270)  ; FMin(a,b)
  %8272 = fdiv fast float %8256, %8268
  %8273 = call float @dx.op.binary.f32(i32 35, float %8272, float 0.000000e+00)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 36, float %8214, float %8273)  ; FMin(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8271, float %8274)  ; FMin(a,b)
  %8276 = call float @dx.op.binary.f32(i32 35, float %8271, float %8274)  ; FMax(a,b)
  br label %8277

; <label>:8277                                    ; preds = %8262, %8228
  %8278 = phi float [ %8276, %8262 ], [ -1.000000e+00, %8228 ]
  %8279 = phi float [ %8275, %8262 ], [ -1.000000e+00, %8228 ]
  %8280 = phi i1 [ true, %8262 ], [ false, %8228 ]
  %8281 = and i1 %8248, %8280
  br i1 %8281, label %8282, label %8284

; <label>:8282                                    ; preds = %8277
  %8283 = fcmp fast oeq float %8279, %8278
  br i1 %8283, label %8587, label %8285

; <label>:8284                                    ; preds = %8277
  br i1 %8248, label %8587, label %8285

; <label>:8285                                    ; preds = %8284, %8282
  %8286 = phi float [ %8214, %8284 ], [ %8278, %8282 ]
  %8287 = phi float [ 0.000000e+00, %8284 ], [ %8279, %8282 ]
  %8288 = icmp ne i32 %8236, 0
  %8289 = fmul fast float %8286, %8217
  %8290 = fadd fast float %8289, %8230
  %8291 = fmul fast float %8290, %8286
  %8292 = select i1 %8288, float 0.000000e+00, float %8291
  %8293 = fcmp fast oeq float %8217, 0.000000e+00
  %8294 = fdiv fast float %8235, %8217
  %8295 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8294)  ; FMax(a,b)
  %8296 = select i1 %8293, float %8286, float %8295
  %8297 = call float @dx.op.binary.f32(i32 36, float %8286, float %8296)  ; FMin(a,b)
  %8298 = fcmp fast ogt float %8217, 0.000000e+00
  %8299 = fcmp fast olt float %8235, 0.000000e+00
  br i1 %8298, label %8300, label %8357

; <label>:8300                                    ; preds = %8285
  %8301 = icmp eq i32 %8236, 0
  br i1 %8299, label %8302, label %8346

; <label>:8302                                    ; preds = %8300
  %8303 = select i1 %8301, float %8286, float 0.000000e+00
  %8304 = fsub fast float -0.000000e+00, %8303
  %8305 = call float @dx.op.unary.f32(i32 6, float %8304)  ; FAbs(value)
  %8306 = fmul fast float %8303, %8217
  %8307 = fadd fast float %8306, %8230
  %8308 = fmul fast float %8305, %8307
  %8309 = fsub fast float %8292, %8308
  %8310 = fsub fast float %8286, %8305
  %8311 = select i1 %8301, float %8310, float 0.000000e+00
  %8312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8312, 0
  %8314 = extractvalue %dx.types.CBufRet.f32 %8312, 1
  %8315 = extractvalue %dx.types.CBufRet.f32 %8312, 2
  %8316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8317 = extractvalue %dx.types.CBufRet.f32 %8316, 0
  %8318 = extractvalue %dx.types.CBufRet.f32 %8316, 1
  %8319 = extractvalue %dx.types.CBufRet.f32 %8316, 2
  %8320 = extractvalue %dx.types.CBufRet.f32 %8316, 3
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 3
  %8323 = call float @dx.op.binary.f32(i32 36, float %8309, float %8322)  ; FMin(a,b)
  %8324 = fmul fast float %8320, %8311
  %8325 = call float @dx.op.unary.f32(i32 7, float %8324)  ; Saturate(value)
  %8326 = fsub fast float %8317, %8313
  %8327 = fsub fast float %8318, %8314
  %8328 = fsub fast float %8319, %8315
  %8329 = fmul fast float %8325, %8326
  %8330 = fmul fast float %8325, %8327
  %8331 = fmul fast float %8325, %8328
  %8332 = fadd fast float %8329, %8313
  %8333 = fadd fast float %8330, %8314
  %8334 = fadd fast float %8331, %8315
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 0
  %8337 = extractvalue %dx.types.CBufRet.f32 %8335, 1
  %8338 = fadd fast float %8337, %8336
  %8339 = call float @dx.op.unary.f32(i32 7, float %8338)  ; Saturate(value)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8335, 2
  %8341 = extractvalue %dx.types.CBufRet.f32 %8335, 3
  %8342 = fadd fast float %8341, %8340
  %8343 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8344 = fmul fast float %8339, %8323
  %8345 = fmul fast float %8344, %8343
  br label %8587

; <label>:8346                                    ; preds = %8300
  br i1 %8301, label %8347, label %8368

; <label>:8347                                    ; preds = %8346
  %8348 = call float @dx.op.binary.f32(i32 36, float %8297, float %8287)  ; FMin(a,b)
  %8349 = fsub fast float %8297, %8348
  %8350 = fsub fast float %8349, %8286
  %8351 = call float @dx.op.unary.f32(i32 6, float %8350)  ; FAbs(value)
  %8352 = fadd fast float %8349, %8286
  %8353 = fmul fast float %8352, %8217
  %8354 = fadd fast float %8353, %8230
  %8355 = fmul fast float %8354, %8351
  %8356 = fsub fast float %8292, %8355
  br label %8368

; <label>:8357                                    ; preds = %8285
  br i1 %8299, label %8358, label %8368

; <label>:8358                                    ; preds = %8357
  %8359 = call float @dx.op.binary.f32(i32 35, float %8287, float %8297)  ; FMax(a,b)
  %8360 = icmp eq i32 %8236, 0
  %8361 = select i1 %8360, float %8297, float 0.000000e+00
  %8362 = fsub fast float -0.000000e+00, %8361
  %8363 = call float @dx.op.unary.f32(i32 6, float %8362)  ; FAbs(value)
  %8364 = fmul fast float %8361, %8217
  %8365 = fadd fast float %8364, %8230
  %8366 = fmul fast float %8363, %8365
  %8367 = fsub fast float %8292, %8366
  br label %8368

; <label>:8368                                    ; preds = %8358, %8357, %8347, %8346
  %8369 = phi float [ %8287, %8346 ], [ %8287, %8347 ], [ %8359, %8358 ], [ %8287, %8357 ]
  %8370 = phi float [ 0.000000e+00, %8346 ], [ %8351, %8347 ], [ %8363, %8358 ], [ 0.000000e+00, %8357 ]
  %8371 = phi float [ %8292, %8346 ], [ %8356, %8347 ], [ %8367, %8358 ], [ %8292, %8357 ]
  %8372 = phi float [ %8297, %8346 ], [ %8297, %8347 ], [ %8286, %8358 ], [ %8286, %8357 ]
  %8373 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8373, align 4, !tbaa !129, !noalias !131
  %8374 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8374, align 4, !tbaa !129, !noalias !131
  %8375 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8375, align 4, !tbaa !129, !noalias !131
  %8376 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8376, align 4, !tbaa !129, !noalias !131
  %8377 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8377, align 4, !tbaa !129, !noalias !131
  %8378 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8378, align 4, !tbaa !129, !noalias !131
  %8379 = icmp sgt i32 %8238, 0
  br i1 %8379, label %8380, label %8441

; <label>:8380                                    ; preds = %8368
  br label %8381

; <label>:8381                                    ; preds = %8430, %8380
  %8382 = phi i32 [ %8431, %8430 ], [ 0, %8380 ]
  %8383 = phi i32 [ %8432, %8430 ], [ 0, %8380 ]
  %8384 = add nuw i32 %8383, 171
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8384)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 0
  %8387 = extractvalue %dx.types.CBufRet.f32 %8385, 1
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.CBufRet.f32 %8388, 1
  %8391 = fsub fast float %8386, %8389
  %8392 = fsub fast float %8387, %8390
  %8393 = extractvalue %dx.types.CBufRet.f32 %8385, 2
  %8394 = fsub fast float -0.000000e+00, %8391
  %8395 = fsub fast float -0.000000e+00, %8392
  %8396 = call float @dx.op.dot2.f32(i32 54, float %8215, float %8216, float %8394, float %8395)  ; Dot2(ax,ay,bx,by)
  %8397 = fmul fast float %8396, 2.000000e+00
  %8398 = call float @dx.op.dot2.f32(i32 54, float %8394, float %8395, float %8394, float %8395)  ; Dot2(ax,ay,bx,by)
  %8399 = fmul fast float %8393, %8393
  %8400 = fsub fast float %8398, %8399
  %8401 = fmul fast float %8397, %8397
  %8402 = fmul fast float %8258, %8400
  %8403 = fsub fast float %8401, %8402
  %8404 = fcmp fast ogt float %8403, 0.000000e+00
  br i1 %8404, label %8405, label %8420

; <label>:8405                                    ; preds = %8381
  %8406 = fcmp fast ogt float %8397, 0.000000e+00
  %8407 = call float @dx.op.unary.f32(i32 24, float %8403)  ; Sqrt(value)
  %8408 = fsub fast float -0.000000e+00, %8407
  %8409 = select i1 %8406, float %8407, float %8408
  %8410 = fadd fast float %8409, %8397
  %8411 = fmul float %8410, -5.000000e-01
  %8412 = fdiv fast float %8411, %8251
  %8413 = call float @dx.op.binary.f32(i32 35, float %8412, float 0.000000e+00)  ; FMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 36, float %8286, float %8413)  ; FMin(a,b)
  %8415 = fdiv fast float %8400, %8411
  %8416 = call float @dx.op.binary.f32(i32 35, float %8415, float 0.000000e+00)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8286, float %8416)  ; FMin(a,b)
  %8418 = call float @dx.op.binary.f32(i32 36, float %8414, float %8417)  ; FMin(a,b)
  %8419 = call float @dx.op.binary.f32(i32 35, float %8414, float %8417)  ; FMax(a,b)
  br label %8420

; <label>:8420                                    ; preds = %8405, %8381
  %8421 = phi float [ %8419, %8405 ], [ -1.000000e+00, %8381 ]
  %8422 = phi float [ %8418, %8405 ], [ -1.000000e+00, %8381 ]
  %8423 = phi i1 [ true, %8405 ], [ false, %8381 ]
  br i1 %8423, label %8424, label %8430

; <label>:8424                                    ; preds = %8420
  %8425 = call float @dx.op.binary.f32(i32 35, float %8369, float %8422)  ; FMax(a,b)
  %8426 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8383
  store float %8425, float* %8426, align 4, !tbaa !129, !noalias !131
  %8427 = call float @dx.op.binary.f32(i32 35, float %8369, float %8421)  ; FMax(a,b)
  %8428 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8383
  store float %8427, float* %8428, align 4, !tbaa !129, !noalias !131
  %8429 = add nsw i32 %8382, 1
  br label %8430

; <label>:8430                                    ; preds = %8424, %8420
  %8431 = phi i32 [ %8429, %8424 ], [ %8382, %8420 ]
  %8432 = add nuw nsw i32 %8383, 1
  %8433 = icmp eq i32 %8432, %8238
  br i1 %8433, label %8434, label %8381

; <label>:8434                                    ; preds = %8430
  %8435 = load float, float* %8375, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8436 = load float, float* %8374, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8437 = load float, float* %8373, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8438 = load float, float* %8378, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8439 = load float, float* %8377, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8440 = load float, float* %8376, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8441

; <label>:8441                                    ; preds = %8434, %8368
  %8442 = phi float [ -1.000000e+00, %8368 ], [ %8440, %8434 ]
  %8443 = phi float [ -1.000000e+00, %8368 ], [ %8439, %8434 ]
  %8444 = phi float [ -1.000000e+00, %8368 ], [ %8438, %8434 ]
  %8445 = phi float [ -1.000000e+00, %8368 ], [ %8437, %8434 ]
  %8446 = phi float [ -1.000000e+00, %8368 ], [ %8436, %8434 ]
  %8447 = phi float [ -1.000000e+00, %8368 ], [ %8435, %8434 ]
  %8448 = phi i32 [ 0, %8368 ], [ %8431, %8434 ]
  %8449 = call float @dx.op.binary.f32(i32 36, float %8446, float %8447)  ; FMin(a,b)
  %8450 = call float @dx.op.binary.f32(i32 36, float %8445, float %8449)  ; FMin(a,b)
  %8451 = call float @dx.op.binary.f32(i32 35, float %8445, float %8446)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 36, float %8451, float %8447)  ; FMin(a,b)
  %8453 = call float @dx.op.binary.f32(i32 36, float %8445, float %8446)  ; FMin(a,b)
  %8454 = call float @dx.op.binary.f32(i32 35, float %8453, float %8452)  ; FMax(a,b)
  %8455 = call float @dx.op.binary.f32(i32 35, float %8446, float %8447)  ; FMax(a,b)
  %8456 = call float @dx.op.binary.f32(i32 35, float %8445, float %8455)  ; FMax(a,b)
  store float %8450, float* %8373, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8454, float* %8374, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8456, float* %8375, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8457 = call float @dx.op.binary.f32(i32 36, float %8443, float %8444)  ; FMin(a,b)
  %8458 = call float @dx.op.binary.f32(i32 36, float %8442, float %8457)  ; FMin(a,b)
  %8459 = call float @dx.op.binary.f32(i32 35, float %8442, float %8443)  ; FMax(a,b)
  %8460 = call float @dx.op.binary.f32(i32 36, float %8459, float %8444)  ; FMin(a,b)
  %8461 = call float @dx.op.binary.f32(i32 36, float %8442, float %8443)  ; FMin(a,b)
  %8462 = call float @dx.op.binary.f32(i32 35, float %8461, float %8460)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %8443, float %8444)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 35, float %8442, float %8463)  ; FMax(a,b)
  store float %8458, float* %8376, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8462, float* %8377, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8464, float* %8378, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8465 = sub nsw i32 3, %8448
  %8466 = icmp sgt i32 %8465, 2
  br i1 %8466, label %8467, label %8505

; <label>:8467                                    ; preds = %8441
  %8468 = icmp eq i32 %8236, 0
  %8469 = fsub fast float %8286, %8370
  %8470 = select i1 %8468, float %8469, float %8370
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 0
  %8473 = extractvalue %dx.types.CBufRet.f32 %8471, 1
  %8474 = extractvalue %dx.types.CBufRet.f32 %8471, 2
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8479 = extractvalue %dx.types.CBufRet.f32 %8475, 3
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 3
  %8482 = call float @dx.op.binary.f32(i32 36, float %8371, float %8481)  ; FMin(a,b)
  %8483 = fmul fast float %8479, %8470
  %8484 = call float @dx.op.unary.f32(i32 7, float %8483)  ; Saturate(value)
  %8485 = fsub fast float %8476, %8472
  %8486 = fsub fast float %8477, %8473
  %8487 = fsub fast float %8478, %8474
  %8488 = fmul fast float %8484, %8485
  %8489 = fmul fast float %8484, %8486
  %8490 = fmul fast float %8484, %8487
  %8491 = fadd fast float %8488, %8472
  %8492 = fadd fast float %8489, %8473
  %8493 = fadd fast float %8490, %8474
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = fadd fast float %8496, %8495
  %8498 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8500 = extractvalue %dx.types.CBufRet.f32 %8494, 3
  %8501 = fadd fast float %8500, %8499
  %8502 = call float @dx.op.unary.f32(i32 7, float %8501)  ; Saturate(value)
  %8503 = fmul fast float %8498, %8482
  %8504 = fmul fast float %8503, %8502
  br label %8587

; <label>:8505                                    ; preds = %8441
  %8506 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8465
  %8507 = load float, float* %8506, align 4, !tbaa !129, !noalias !131
  %8508 = fcmp fast olt float %8507, %8372
  %8509 = icmp sgt i32 %8448, 0
  %8510 = and i1 %8509, %8508
  br i1 %8510, label %8511, label %8548

; <label>:8511                                    ; preds = %8505
  br label %8512

; <label>:8512                                    ; preds = %8541, %8511
  %8513 = phi float [ %8542, %8541 ], [ %8370, %8511 ]
  %8514 = phi float [ %8543, %8541 ], [ %8371, %8511 ]
  %8515 = phi float [ %8523, %8541 ], [ %8507, %8511 ]
  %8516 = phi i32 [ %8520, %8541 ], [ %8465, %8511 ]
  %8517 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8516
  %8518 = load float, float* %8517, align 4, !tbaa !129, !noalias !131
  %8519 = icmp slt i32 %8516, 2
  %8520 = add nsw i32 %8516, 1
  %8521 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8520
  %8522 = load float, float* %8521, align 4, !tbaa !129, !noalias !131
  %8523 = select i1 %8519, float %8522, float %8286
  %8524 = call float @dx.op.binary.f32(i32 36, float %8523, float %8518)  ; FMin(a,b)
  %8525 = call float @dx.op.binary.f32(i32 36, float %8372, float %8524)  ; FMin(a,b)
  %8526 = icmp eq i32 %8236, 0
  %8527 = fadd fast float %8525, %8515
  %8528 = fmul fast float %8527, %8217
  %8529 = fadd fast float %8528, %8230
  br i1 %8526, label %8535, label %8530

; <label>:8530                                    ; preds = %8512
  %8531 = fsub fast float %8525, %8515
  %8532 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8531)  ; FMax(a,b)
  %8533 = fmul fast float %8532, %8529
  %8534 = fadd fast float %8533, %8514
  br label %8541

; <label>:8535                                    ; preds = %8512
  %8536 = fsub fast float %8515, %8525
  %8537 = call float @dx.op.unary.f32(i32 6, float %8536)  ; FAbs(value)
  %8538 = fadd fast float %8537, %8513
  %8539 = fmul fast float %8537, %8529
  %8540 = fsub fast float %8514, %8539
  br label %8541

; <label>:8541                                    ; preds = %8535, %8530
  %8542 = phi float [ %8532, %8530 ], [ %8538, %8535 ]
  %8543 = phi float [ %8534, %8530 ], [ %8540, %8535 ]
  %8544 = fcmp fast olt float %8523, %8372
  %8545 = icmp slt i32 %8520, 3
  %8546 = and i1 %8545, %8544
  br i1 %8546, label %8512, label %8547

; <label>:8547                                    ; preds = %8541
  br label %8548

; <label>:8548                                    ; preds = %8547, %8505
  %8549 = phi float [ %8370, %8505 ], [ %8542, %8547 ]
  %8550 = phi float [ %8371, %8505 ], [ %8543, %8547 ]
  %8551 = fsub fast float %8286, %8549
  %8552 = select i1 %8288, float %8549, float %8551
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = extractvalue %dx.types.CBufRet.f32 %8553, 1
  %8556 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 0
  %8559 = extractvalue %dx.types.CBufRet.f32 %8557, 1
  %8560 = extractvalue %dx.types.CBufRet.f32 %8557, 2
  %8561 = extractvalue %dx.types.CBufRet.f32 %8557, 3
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 3
  %8564 = call float @dx.op.binary.f32(i32 36, float %8550, float %8563)  ; FMin(a,b)
  %8565 = fmul fast float %8561, %8552
  %8566 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8567 = fsub fast float %8558, %8554
  %8568 = fsub fast float %8559, %8555
  %8569 = fsub fast float %8560, %8556
  %8570 = fmul fast float %8566, %8567
  %8571 = fmul fast float %8566, %8568
  %8572 = fmul fast float %8566, %8569
  %8573 = fadd fast float %8570, %8554
  %8574 = fadd fast float %8571, %8555
  %8575 = fadd fast float %8572, %8556
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.CBufRet.f32 %8576, 1
  %8579 = fadd fast float %8578, %8577
  %8580 = call float @dx.op.unary.f32(i32 7, float %8579)  ; Saturate(value)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8576, 2
  %8582 = extractvalue %dx.types.CBufRet.f32 %8576, 3
  %8583 = fadd fast float %8582, %8581
  %8584 = call float @dx.op.unary.f32(i32 7, float %8583)  ; Saturate(value)
  %8585 = fmul fast float %8580, %8564
  %8586 = fmul fast float %8585, %8584
  br label %8587

; <label>:8587                                    ; preds = %8548, %8467, %8302, %8284, %8282
  %8588 = phi float [ %8311, %8302 ], [ %8470, %8467 ], [ %8552, %8548 ], [ 0.000000e+00, %8282 ], [ 0.000000e+00, %8284 ]
  %8589 = phi float [ %8345, %8302 ], [ %8504, %8467 ], [ %8586, %8548 ], [ 0.000000e+00, %8282 ], [ 0.000000e+00, %8284 ]
  %8590 = phi float [ %8332, %8302 ], [ %8491, %8467 ], [ %8573, %8548 ], [ 0.000000e+00, %8282 ], [ 0.000000e+00, %8284 ]
  %8591 = phi float [ %8333, %8302 ], [ %8492, %8467 ], [ %8574, %8548 ], [ 0.000000e+00, %8282 ], [ 0.000000e+00, %8284 ]
  %8592 = phi float [ %8334, %8302 ], [ %8493, %8467 ], [ %8575, %8548 ], [ 0.000000e+00, %8282 ], [ 0.000000e+00, %8284 ]
  %8593 = fmul fast float %8225, %8589
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 2
  %8596 = fsub fast float %8232, %8595
  %8597 = fcmp fast olt float %8593, -2.000000e+01
  %8598 = call float @dx.op.unary.f32(i32 21, float %8593)  ; Exp(value)
  %8599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8600 = extractvalue %dx.types.CBufRet.f32 %8599, 2
  %8601 = extractvalue %dx.types.CBufRet.f32 %8599, 3
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8604 = fmul fast float %8601, %8596
  %8605 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8606 = fsub fast float 1.000000e+00, %8605
  %8607 = fmul fast float %8217, 5.000000e-01
  %8608 = fadd fast float %8607, 5.000000e-01
  %8609 = call float @dx.op.unary.f32(i32 7, float %8608)  ; Saturate(value)
  %8610 = fsub fast float 1.000000e+00, %8609
  %8611 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8606)  ; FMax(a,b)
  %8612 = fdiv fast float %8610, %8611
  %8613 = fsub fast float %8596, %8174
  %8614 = call float @dx.op.unary.f32(i32 6, float %8613)  ; FAbs(value)
  %8615 = fmul fast float %8614, %8600
  %8616 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8617 = fsub fast float 1.000000e+00, %8615
  %8618 = fmul fast float %8617, %8616
  %8619 = fadd fast float %8618, %8615
  %8620 = fmul fast float %8603, %8596
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = fsub fast float 1.000000e+00, %8619
  %8623 = fmul fast float %8622, %8621
  %8624 = fadd fast float %8623, %8619
  %8625 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8626 = fadd fast float %8598, -1.000000e+00
  %8627 = select i1 %8597, float -1.000000e+00, float %8626
  %8628 = fmul fast float %8625, %8627
  %8629 = fadd fast float %8628, 1.000000e+00
  %8630 = fsub fast float -0.000000e+00, %8628
  %8631 = fmul fast float %8590, %8630
  %8632 = fmul fast float %8591, %8630
  %8633 = fmul fast float %8592, %8630
  br label %8634

; <label>:8634                                    ; preds = %8587, %8183
  %8635 = phi float [ %8588, %8587 ], [ 0.000000e+00, %8183 ]
  %8636 = phi float [ %8629, %8587 ], [ 1.000000e+00, %8183 ]
  %8637 = phi float [ %8631, %8587 ], [ 0.000000e+00, %8183 ]
  %8638 = phi float [ %8632, %8587 ], [ 0.000000e+00, %8183 ]
  %8639 = phi float [ %8633, %8587 ], [ 0.000000e+00, %8183 ]
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8642 = fsub fast float 1.000000e+00, %8636
  %8643 = fmul fast float %8642, %8218
  %8644 = fmul fast float %8643, %8641
  %8645 = fsub fast float %8218, %8644
  br i1 %8211, label %8646, label %8675, !dx.controlflow.hints !167

; <label>:8646                                    ; preds = %8634
  %8647 = fmul fast float %8219, %8208
  %8648 = fadd fast float %8647, %8209
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = fmul fast float %8190, %8645
  %8651 = fsub fast float -0.000000e+00, %8650
  %8652 = fmul fast float %8191, %8645
  %8653 = fsub fast float -0.000000e+00, %8652
  %8654 = call float @dx.op.unary.f32(i32 21, float %8651)  ; Exp(value)
  %8655 = call float @dx.op.unary.f32(i32 21, float %8653)  ; Exp(value)
  %8656 = call float @dx.op.binary.f32(i32 35, float %8198, float %8654)  ; FMax(a,b)
  %8657 = call float @dx.op.binary.f32(i32 35, float %8198, float %8655)  ; FMax(a,b)
  %8658 = fsub fast float %8657, %8656
  %8659 = fmul fast float %8658, %8649
  %8660 = fadd fast float %8659, %8656
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = fsub fast float %8195, %8200
  %8663 = fsub fast float %8196, %8201
  %8664 = fsub fast float %8197, %8202
  %8665 = fmul fast float %8649, %8662
  %8666 = fmul fast float %8649, %8663
  %8667 = fmul fast float %8649, %8664
  %8668 = fadd fast float %8665, %8200
  %8669 = fadd fast float %8666, %8201
  %8670 = fadd fast float %8667, %8202
  %8671 = fsub fast float 1.000000e+00, %8661
  %8672 = fmul fast float %8671, %8668
  %8673 = fmul fast float %8671, %8669
  %8674 = fmul fast float %8671, %8670
  br label %8734

; <label>:8675                                    ; preds = %8634
  %8676 = fmul fast float %8645, %8207
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = fsub fast float 2.000000e+00, %8677
  %8679 = fmul fast float %8677, 9.921875e-01
  %8680 = fmul fast float %8679, %8678
  %8681 = fadd fast float %8680, 3.906250e-03
  %8682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8681, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8683 = extractvalue %dx.types.ResRet.f32 %8682, 0
  %8684 = fsub fast float %8677, %8683
  %8685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8684)  ; FMax(a,b)
  %8686 = fmul fast float %8193, %8174
  %8687 = call float @dx.op.unary.f32(i32 6, float %8686)  ; FAbs(value)
  %8688 = fcmp fast ogt float %8687, 0x3EB0C6F7A0000000
  br i1 %8688, label %8689, label %8695, !dx.controlflow.hints !168

; <label>:8689                                    ; preds = %8675
  %8690 = fmul fast float %8686, 0xBFF7154760000000
  %8691 = call float @dx.op.unary.f32(i32 21, float %8690)  ; Exp(value)
  %8692 = fsub fast float 1.000000e+00, %8691
  %8693 = fdiv fast float %8692, %8686
  %8694 = fmul fast float %8693, %8203
  br label %8695

; <label>:8695                                    ; preds = %8689, %8675
  %8696 = phi float [ %8694, %8689 ], [ %8203, %8675 ]
  %8697 = fadd fast float %8696, %8205
  %8698 = fmul fast float %8697, %8685
  %8699 = fmul fast float %8190, %8698
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = fmul fast float %8191, %8698
  %8702 = fsub fast float -0.000000e+00, %8701
  %8703 = fmul fast float %8192, %8698
  %8704 = fsub fast float -0.000000e+00, %8703
  %8705 = call float @dx.op.unary.f32(i32 21, float %8700)  ; Exp(value)
  %8706 = call float @dx.op.unary.f32(i32 21, float %8702)  ; Exp(value)
  %8707 = call float @dx.op.unary.f32(i32 21, float %8704)  ; Exp(value)
  %8708 = fmul fast float %8219, %8219
  %8709 = fadd fast float %8708, 1.000000e+00
  %8710 = fmul fast float %8709, 0x3FAE8EC8A0000000
  %8711 = fmul fast float %8710, %8200
  %8712 = fmul fast float %8710, %8201
  %8713 = fmul fast float %8710, %8202
  %8714 = fmul fast float %8219, %8198
  %8715 = fsub fast float 1.000000e+00, %8714
  %8716 = fmul fast float %8198, %8198
  %8717 = fsub fast float 1.000000e+00, %8716
  %8718 = fmul fast float %8717, 0x3FB45F3060000000
  %8719 = fmul fast float %8715, %8715
  %8720 = fdiv fast float 1.000000e+00, %8719
  %8721 = fmul fast float %8718, %8720
  %8722 = fmul fast float %8721, %8195
  %8723 = fmul fast float %8721, %8196
  %8724 = fmul fast float %8721, %8197
  %8725 = fadd fast float %8722, %8711
  %8726 = fadd fast float %8723, %8712
  %8727 = fadd fast float %8724, %8713
  %8728 = fsub fast float 1.000000e+00, %8705
  %8729 = fsub fast float 1.000000e+00, %8706
  %8730 = fsub fast float 1.000000e+00, %8707
  %8731 = fmul fast float %8725, %8728
  %8732 = fmul fast float %8726, %8729
  %8733 = fmul fast float %8727, %8730
  br label %8734

; <label>:8734                                    ; preds = %8695, %8646
  %8735 = phi float [ %8672, %8646 ], [ %8731, %8695 ]
  %8736 = phi float [ %8673, %8646 ], [ %8732, %8695 ]
  %8737 = phi float [ %8674, %8646 ], [ %8733, %8695 ]
  %8738 = phi float [ %8661, %8646 ], [ %8705, %8695 ]
  %8739 = phi float [ %8661, %8646 ], [ %8706, %8695 ]
  %8740 = phi float [ %8661, %8646 ], [ %8707, %8695 ]
  br i1 %8227, label %8741, label %8939, !dx.controlflow.hints !169

; <label>:8741                                    ; preds = %8734
  %8742 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8743 = fmul fast float %8742, %8642
  %8744 = fsub fast float %8637, %8735
  %8745 = fsub fast float %8638, %8736
  %8746 = fsub fast float %8639, %8737
  %8747 = fmul fast float %8743, %8744
  %8748 = fmul fast float %8743, %8745
  %8749 = fmul fast float %8743, %8746
  %8750 = fadd fast float %8747, %8735
  %8751 = fadd fast float %8748, %8736
  %8752 = fadd fast float %8749, %8737
  %8753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8738)  ; FMax(a,b)
  %8754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8739)  ; FMax(a,b)
  %8755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8740)  ; FMax(a,b)
  %8756 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8636)  ; FMax(a,b)
  %8757 = call float @dx.op.binary.f32(i32 35, float %8635, float %8645)  ; FMax(a,b)
  %8758 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8757)  ; FMax(a,b)
  %8759 = fdiv fast float %8635, %8758
  %8760 = call float @dx.op.unary.f32(i32 7, float %8759)  ; Saturate(value)
  %8761 = fdiv fast float %8645, %8758
  %8762 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8763 = fcmp fast une float %8756, 1.000000e+00
  br i1 %8763, label %8764, label %8777, !dx.controlflow.hints !170

; <label>:8764                                    ; preds = %8741
  %8765 = call float @dx.op.unary.f32(i32 23, float %8756)  ; Log(value)
  %8766 = fmul fast float %8765, 0x3FE62E4300000000
  %8767 = fmul fast float %8637, %8766
  %8768 = fsub fast float -0.000000e+00, %8767
  %8769 = fmul fast float %8638, %8766
  %8770 = fsub fast float -0.000000e+00, %8769
  %8771 = fmul fast float %8639, %8766
  %8772 = fsub fast float -0.000000e+00, %8771
  %8773 = fsub fast float 1.000000e+00, %8756
  %8774 = fdiv fast float %8768, %8773
  %8775 = fdiv fast float %8770, %8773
  %8776 = fdiv fast float %8772, %8773
  br label %8777

; <label>:8777                                    ; preds = %8764, %8741
  %8778 = phi float [ %8774, %8764 ], [ %8637, %8741 ]
  %8779 = phi float [ %8775, %8764 ], [ %8638, %8741 ]
  %8780 = phi float [ %8776, %8764 ], [ %8639, %8741 ]
  %8781 = phi float [ %8766, %8764 ], [ 0.000000e+00, %8741 ]
  %8782 = fcmp fast une float %8753, 1.000000e+00
  br i1 %8782, label %8783, label %8790, !dx.controlflow.hints !171

; <label>:8783                                    ; preds = %8777
  %8784 = call float @dx.op.unary.f32(i32 23, float %8753)  ; Log(value)
  %8785 = fmul fast float %8784, 0x3FE62E4300000000
  %8786 = fmul fast float %8750, %8785
  %8787 = fsub fast float -0.000000e+00, %8786
  %8788 = fsub fast float 1.000000e+00, %8753
  %8789 = fdiv fast float %8787, %8788
  br label %8790

; <label>:8790                                    ; preds = %8783, %8777
  %8791 = phi float [ %8789, %8783 ], [ %8750, %8777 ]
  %8792 = phi float [ %8785, %8783 ], [ 0.000000e+00, %8777 ]
  %8793 = fcmp fast une float %8754, 1.000000e+00
  br i1 %8793, label %8794, label %8801, !dx.controlflow.hints !171

; <label>:8794                                    ; preds = %8790
  %8795 = call float @dx.op.unary.f32(i32 23, float %8754)  ; Log(value)
  %8796 = fmul fast float %8795, 0x3FE62E4300000000
  %8797 = fmul fast float %8751, %8796
  %8798 = fsub fast float -0.000000e+00, %8797
  %8799 = fsub fast float 1.000000e+00, %8754
  %8800 = fdiv fast float %8798, %8799
  br label %8801

; <label>:8801                                    ; preds = %8794, %8790
  %8802 = phi float [ %8800, %8794 ], [ %8751, %8790 ]
  %8803 = phi float [ %8796, %8794 ], [ 0.000000e+00, %8790 ]
  %8804 = fcmp fast une float %8755, 1.000000e+00
  br i1 %8804, label %8805, label %8812, !dx.controlflow.hints !171

; <label>:8805                                    ; preds = %8801
  %8806 = call float @dx.op.unary.f32(i32 23, float %8755)  ; Log(value)
  %8807 = fmul fast float %8806, 0x3FE62E4300000000
  %8808 = fmul fast float %8752, %8807
  %8809 = fsub fast float -0.000000e+00, %8808
  %8810 = fsub fast float 1.000000e+00, %8755
  %8811 = fdiv fast float %8809, %8810
  br label %8812

; <label>:8812                                    ; preds = %8805, %8801
  %8813 = phi float [ %8811, %8805 ], [ %8752, %8801 ]
  %8814 = phi float [ %8807, %8805 ], [ 0.000000e+00, %8801 ]
  %8815 = fmul fast float %8778, %8762
  %8816 = fmul fast float %8779, %8762
  %8817 = fmul fast float %8780, %8762
  %8818 = fmul fast float %8781, %8762
  %8819 = fmul fast float %8791, %8760
  %8820 = fmul fast float %8802, %8760
  %8821 = fmul fast float %8813, %8760
  %8822 = fmul fast float %8792, %8760
  %8823 = fmul fast float %8803, %8760
  %8824 = fmul fast float %8814, %8760
  %8825 = fadd fast float %8819, %8815
  %8826 = fadd fast float %8820, %8816
  %8827 = fadd fast float %8821, %8817
  %8828 = fadd fast float %8822, %8818
  %8829 = fadd fast float %8823, %8818
  %8830 = fadd fast float %8824, %8818
  %8831 = fcmp fast une float %8828, 0.000000e+00
  br i1 %8831, label %8832, label %8839, !dx.controlflow.hints !172

; <label>:8832                                    ; preds = %8812
  %8833 = fmul fast float %8828, 0x3FF7154760000000
  %8834 = call float @dx.op.unary.f32(i32 21, float %8833)  ; Exp(value)
  %8835 = fsub fast float 1.000000e+00, %8834
  %8836 = fmul fast float %8825, %8835
  %8837 = fsub fast float -0.000000e+00, %8836
  %8838 = fdiv fast float %8837, %8828
  br label %8839

; <label>:8839                                    ; preds = %8832, %8812
  %8840 = phi float [ %8834, %8832 ], [ 1.000000e+00, %8812 ]
  %8841 = phi float [ %8838, %8832 ], [ %8825, %8812 ]
  %8842 = fcmp fast une float %8829, 0.000000e+00
  br i1 %8842, label %8843, label %8850, !dx.controlflow.hints !172

; <label>:8843                                    ; preds = %8839
  %8844 = fmul fast float %8829, 0x3FF7154760000000
  %8845 = call float @dx.op.unary.f32(i32 21, float %8844)  ; Exp(value)
  %8846 = fsub fast float 1.000000e+00, %8845
  %8847 = fmul fast float %8826, %8846
  %8848 = fsub fast float -0.000000e+00, %8847
  %8849 = fdiv fast float %8848, %8829
  br label %8850

; <label>:8850                                    ; preds = %8843, %8839
  %8851 = phi float [ %8845, %8843 ], [ 1.000000e+00, %8839 ]
  %8852 = phi float [ %8849, %8843 ], [ %8826, %8839 ]
  %8853 = fcmp fast une float %8830, 0.000000e+00
  br i1 %8853, label %8854, label %8861, !dx.controlflow.hints !172

; <label>:8854                                    ; preds = %8850
  %8855 = fmul fast float %8830, 0x3FF7154760000000
  %8856 = call float @dx.op.unary.f32(i32 21, float %8855)  ; Exp(value)
  %8857 = fsub fast float 1.000000e+00, %8856
  %8858 = fmul fast float %8827, %8857
  %8859 = fsub fast float -0.000000e+00, %8858
  %8860 = fdiv fast float %8859, %8830
  br label %8861

; <label>:8861                                    ; preds = %8854, %8850
  %8862 = phi float [ %8856, %8854 ], [ 1.000000e+00, %8850 ]
  %8863 = phi float [ %8860, %8854 ], [ %8827, %8850 ]
  %8864 = fcmp fast ogt float %8760, %8762
  br i1 %8864, label %8865, label %8885

; <label>:8865                                    ; preds = %8861
  %8866 = fsub fast float 1.000000e+00, %8762
  %8867 = fmul fast float %8778, %8866
  %8868 = fmul fast float %8779, %8866
  %8869 = fmul fast float %8780, %8866
  %8870 = fmul fast float %8781, %8866
  %8871 = fcmp fast une float %8870, 0.000000e+00
  br i1 %8871, label %8872, label %8923, !dx.controlflow.hints !173

; <label>:8872                                    ; preds = %8865
  %8873 = fmul fast float %8870, 0x3FF7154760000000
  %8874 = call float @dx.op.unary.f32(i32 21, float %8873)  ; Exp(value)
  %8875 = fsub fast float 1.000000e+00, %8874
  %8876 = fmul fast float %8867, %8875
  %8877 = fsub fast float -0.000000e+00, %8876
  %8878 = fmul fast float %8868, %8875
  %8879 = fsub fast float -0.000000e+00, %8878
  %8880 = fmul fast float %8869, %8875
  %8881 = fsub fast float -0.000000e+00, %8880
  %8882 = fdiv fast float %8877, %8870
  %8883 = fdiv fast float %8879, %8870
  %8884 = fdiv fast float %8881, %8870
  br label %8923

; <label>:8885                                    ; preds = %8861
  %8886 = fsub fast float 1.000000e+00, %8760
  %8887 = fmul fast float %8791, %8886
  %8888 = fmul fast float %8802, %8886
  %8889 = fmul fast float %8813, %8886
  %8890 = fmul fast float %8792, %8886
  %8891 = fmul fast float %8803, %8886
  %8892 = fmul fast float %8814, %8886
  %8893 = fcmp fast une float %8890, 0.000000e+00
  br i1 %8893, label %8894, label %8901, !dx.controlflow.hints !172

; <label>:8894                                    ; preds = %8885
  %8895 = fmul fast float %8890, 0x3FF7154760000000
  %8896 = call float @dx.op.unary.f32(i32 21, float %8895)  ; Exp(value)
  %8897 = fsub fast float 1.000000e+00, %8896
  %8898 = fmul fast float %8887, %8897
  %8899 = fsub fast float -0.000000e+00, %8898
  %8900 = fdiv fast float %8899, %8890
  br label %8901

; <label>:8901                                    ; preds = %8894, %8885
  %8902 = phi float [ %8900, %8894 ], [ %8887, %8885 ]
  %8903 = phi float [ %8896, %8894 ], [ 1.000000e+00, %8885 ]
  %8904 = fcmp fast une float %8891, 0.000000e+00
  br i1 %8904, label %8905, label %8912, !dx.controlflow.hints !172

; <label>:8905                                    ; preds = %8901
  %8906 = fmul fast float %8891, 0x3FF7154760000000
  %8907 = call float @dx.op.unary.f32(i32 21, float %8906)  ; Exp(value)
  %8908 = fsub fast float 1.000000e+00, %8907
  %8909 = fmul fast float %8888, %8908
  %8910 = fsub fast float -0.000000e+00, %8909
  %8911 = fdiv fast float %8910, %8891
  br label %8912

; <label>:8912                                    ; preds = %8905, %8901
  %8913 = phi float [ %8911, %8905 ], [ %8888, %8901 ]
  %8914 = phi float [ %8907, %8905 ], [ 1.000000e+00, %8901 ]
  %8915 = fcmp fast une float %8892, 0.000000e+00
  br i1 %8915, label %8916, label %8923, !dx.controlflow.hints !172

; <label>:8916                                    ; preds = %8912
  %8917 = fmul fast float %8892, 0x3FF7154760000000
  %8918 = call float @dx.op.unary.f32(i32 21, float %8917)  ; Exp(value)
  %8919 = fsub fast float 1.000000e+00, %8918
  %8920 = fmul fast float %8889, %8919
  %8921 = fsub fast float -0.000000e+00, %8920
  %8922 = fdiv fast float %8921, %8892
  br label %8923

; <label>:8923                                    ; preds = %8916, %8912, %8872, %8865
  %8924 = phi float [ %8922, %8916 ], [ %8884, %8872 ], [ %8869, %8865 ], [ %8889, %8912 ]
  %8925 = phi float [ %8913, %8916 ], [ %8883, %8872 ], [ %8868, %8865 ], [ %8913, %8912 ]
  %8926 = phi float [ %8902, %8916 ], [ %8882, %8872 ], [ %8867, %8865 ], [ %8902, %8912 ]
  %8927 = phi float [ %8918, %8916 ], [ %8874, %8872 ], [ 1.000000e+00, %8865 ], [ 1.000000e+00, %8912 ]
  %8928 = phi float [ %8914, %8916 ], [ %8874, %8872 ], [ 1.000000e+00, %8865 ], [ %8914, %8912 ]
  %8929 = phi float [ %8903, %8916 ], [ %8874, %8872 ], [ 1.000000e+00, %8865 ], [ %8903, %8912 ]
  %8930 = fmul fast float %8929, %8841
  %8931 = fmul fast float %8928, %8852
  %8932 = fmul fast float %8927, %8863
  %8933 = fadd fast float %8930, %8926
  %8934 = fadd fast float %8931, %8925
  %8935 = fadd fast float %8932, %8924
  %8936 = fmul fast float %8929, %8840
  %8937 = fmul fast float %8928, %8851
  %8938 = fmul fast float %8927, %8862
  br label %8939

; <label>:8939                                    ; preds = %8923, %8734
  %8940 = phi float [ %8938, %8923 ], [ %8740, %8734 ]
  %8941 = phi float [ %8937, %8923 ], [ %8739, %8734 ]
  %8942 = phi float [ %8936, %8923 ], [ %8738, %8734 ]
  %8943 = phi float [ %8935, %8923 ], [ %8737, %8734 ]
  %8944 = phi float [ %8934, %8923 ], [ %8736, %8734 ]
  %8945 = phi float [ %8933, %8923 ], [ %8735, %8734 ]
  %8946 = fmul fast float %8945, %7887
  %8947 = fmul fast float %8944, %7889
  %8948 = fmul fast float %8943, %7891
  %8949 = fmul fast float %8942, %8182
  %8950 = call float @dx.op.dot3.f32(i32 55, float %8942, float %8941, float %8940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8951 = call float @dx.op.dot3.f32(i32 55, float %8946, float %8947, float %8948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8952 = select i1 %267, float %8950, float %8942
  %8953 = select i1 %267, float %8950, float %8941
  %8954 = select i1 %267, float 1.000000e+00, float %8940
  %8955 = select i1 %267, float %8951, float %8946
  %8956 = select i1 %267, float 0.000000e+00, float %8947
  %8957 = select i1 %267, float 0.000000e+00, float %8948
  %8958 = fmul fast float %8952, %8176
  %8959 = fmul fast float %8953, %8177
  %8960 = fmul fast float %8954, %8178
  %8961 = fadd fast float %8958, %8955
  %8962 = fadd fast float %8959, %8956
  %8963 = fadd fast float %8957, %8960
  %8964 = fmul fast float %8952, %8179
  %8965 = fmul fast float %8953, %8180
  %8966 = fmul fast float %8954, %8181
  %8967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.i32 %8967, 0
  %8969 = icmp eq i32 %8968, 0
  br i1 %8969, label %9337, label %8970, !dx.controlflow.hints !174

; <label>:8970                                    ; preds = %8939
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 2
  %8973 = extractvalue %dx.types.CBufRet.f32 %8971, 3
  %8974 = fmul fast float %8972, %108
  %8975 = fmul fast float %8973, %109
  %8976 = fmul fast float %8974, 2.000000e+00
  %8977 = fmul fast float %8975, 2.000000e+00
  %8978 = fsub fast float 1.000000e+00, %8976
  %8979 = fsub fast float 1.000000e+00, %8977
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 0
  %8982 = extractvalue %dx.types.CBufRet.f32 %8980, 1
  %8983 = extractvalue %dx.types.CBufRet.f32 %8980, 2
  %8984 = fmul fast float %8978, %8981
  %8985 = fmul fast float %8978, %8982
  %8986 = fmul fast float %8978, %8983
  %8987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8988 = extractvalue %dx.types.CBufRet.f32 %8987, 0
  %8989 = extractvalue %dx.types.CBufRet.f32 %8987, 1
  %8990 = extractvalue %dx.types.CBufRet.f32 %8987, 2
  %8991 = fmul fast float %8979, %8988
  %8992 = fmul fast float %8979, %8989
  %8993 = fmul fast float %8979, %8990
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 0
  %8996 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8997 = extractvalue %dx.types.CBufRet.f32 %8994, 2
  %8998 = fadd fast float %8991, %8995
  %8999 = fadd fast float %8998, %8984
  %9000 = fadd fast float %8992, %8996
  %9001 = fadd fast float %9000, %8985
  %9002 = fadd fast float %8993, %8997
  %9003 = fadd fast float %9002, %8986
  %9004 = fmul fast float %8999, %8175
  %9005 = fmul fast float %9001, %8175
  %9006 = fmul fast float %9003, %8175
  %9007 = fmul fast float %9004, %9004
  %9008 = fmul fast float %9005, %9005
  %9009 = fadd fast float %9007, %9008
  %9010 = fmul fast float %9006, %9006
  %9011 = fadd fast float %9009, %9010
  %9012 = call float @dx.op.unary.f32(i32 24, float %9011)  ; Sqrt(value)
  %9013 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %9014 = fsub fast float %9012, %9013
  %9015 = extractvalue %dx.types.CBufRet.f32 %7902, 2
  %9016 = fmul fast float %9014, %9015
  %9017 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9018 = fadd fast float %9017, -5.000000e-01
  %9019 = fmul fast float %9018, 2.000000e+00
  %9020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9021 = extractvalue %dx.types.CBufRet.f32 %9020, 2
  %9022 = call float @dx.op.binary.f32(i32 36, float %9021, float %9019)  ; FMin(a,b)
  %9023 = fsub fast float -0.000000e+00, %9021
  %9024 = fcmp fast ogt float %9022, %9023
  br i1 %9024, label %9025, label %9337, !dx.controlflow.hints !175

; <label>:9025                                    ; preds = %8970
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 3
  %9028 = fcmp fast ogt float %9027, 0.000000e+00
  br i1 %9028, label %9029, label %9104, !dx.controlflow.hints !176

; <label>:9029                                    ; preds = %9025
  %9030 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9031 = extractvalue %dx.types.Dimensions %9030, 0
  %9032 = sitofp i32 %9031 to float
  %9033 = extractvalue %dx.types.Dimensions %9030, 1
  %9034 = sitofp i32 %9033 to float
  %9035 = fmul fast float %8974, %9032
  %9036 = fmul fast float %8975, %9034
  %9037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9038 = extractvalue %dx.types.CBufRet.f32 %9037, 1
  %9039 = fsub fast float -0.000000e+00, %9038
  %9040 = fptoui float %9039 to i32
  %9041 = fptoui float %9035 to i32
  %9042 = fptoui float %9036 to i32
  %9043 = and i32 %9040, 31
  %9044 = lshr i32 %9041, %9043
  %9045 = lshr i32 %9042, %9043
  %9046 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9040, i32 %9044, i32 %9045, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9047 = extractvalue %dx.types.ResRet.f32 %9046, 0
  %9048 = fcmp fast olt float %9047, -1.000000e+00
  %9049 = fcmp fast ogt float %9047, -1.000000e+00
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 1
  %9052 = select i1 %9049, float %9051, float 1.000000e+00
  %9053 = fadd fast float %9047, 1.000000e+00
  %9054 = fmul fast float %9052, %9053
  %9055 = call float @dx.op.unary.f32(i32 6, float %9054)  ; FAbs(value)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9050, 3
  %9057 = fcmp fast oge float %9055, %9056
  %9058 = select i1 %9057, float 0x4197782600000000, float %9055
  %9059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9060 = extractvalue %dx.types.CBufRet.f32 %9059, 0
  %9061 = extractvalue %dx.types.CBufRet.f32 %9059, 1
  %9062 = extractvalue %dx.types.CBufRet.f32 %9059, 2
  %9063 = select i1 %9048, float %9060, float %8981
  %9064 = select i1 %9048, float %9061, float %8982
  %9065 = select i1 %9048, float %9062, float %8983
  %9066 = fmul fast float %9063, %8978
  %9067 = fmul fast float %9064, %8978
  %9068 = fmul fast float %9065, %8978
  %9069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9070 = extractvalue %dx.types.CBufRet.f32 %9069, 0
  %9071 = extractvalue %dx.types.CBufRet.f32 %9069, 1
  %9072 = extractvalue %dx.types.CBufRet.f32 %9069, 2
  %9073 = select i1 %9048, float %9070, float %8988
  %9074 = select i1 %9048, float %9071, float %8989
  %9075 = select i1 %9048, float %9072, float %8990
  %9076 = fmul fast float %9073, %8979
  %9077 = fmul fast float %9074, %8979
  %9078 = fmul fast float %9075, %8979
  %9079 = fadd fast float %9076, %9066
  %9080 = fadd fast float %9077, %9067
  %9081 = fadd fast float %9078, %9068
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.CBufRet.f32 %9082, 2
  %9086 = select i1 %9048, float %9083, float %8995
  %9087 = select i1 %9048, float %9084, float %8996
  %9088 = select i1 %9048, float %9085, float %8997
  %9089 = fadd fast float %9079, %9086
  %9090 = fadd fast float %9080, %9087
  %9091 = fadd fast float %9081, %9088
  %9092 = fmul fast float %9089, %9058
  %9093 = fmul fast float %9090, %9058
  %9094 = fmul fast float %9091, %9058
  %9095 = fmul fast float %9092, %9092
  %9096 = fmul fast float %9093, %9093
  %9097 = fadd fast float %9095, %9096
  %9098 = fmul fast float %9094, %9094
  %9099 = fadd fast float %9097, %9098
  %9100 = call float @dx.op.unary.f32(i32 24, float %9099)  ; Sqrt(value)
  %9101 = fsub fast float %9100, %9013
  %9102 = fmul fast float %9101, %9015
  %9103 = call float @dx.op.unary.f32(i32 7, float %9102)  ; Saturate(value)
  br label %9104

; <label>:9104                                    ; preds = %9029, %9025
  %9105 = phi float [ %9103, %9029 ], [ 1.000000e+00, %9025 ]
  %9106 = fmul fast float %9022, 5.000000e-01
  %9107 = fadd fast float %9106, 5.000000e-01
  %9108 = call float @dx.op.unary.f32(i32 22, float %9107)  ; Frc(value)
  %9109 = call float @dx.op.unary.f32(i32 27, float %9108)  ; Round_ni(value)
  %9110 = call float @dx.op.unary.f32(i32 22, float %9108)  ; Frc(value)
  %9111 = fmul fast float %9110, 2.000000e+00
  %9112 = fadd fast float %9111, -1.000000e+00
  %9113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8974, float %8975, float %9109, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9114 = extractvalue %dx.types.ResRet.f32 %9113, 0
  %9115 = extractvalue %dx.types.ResRet.f32 %9113, 1
  %9116 = extractvalue %dx.types.ResRet.f32 %9113, 2
  %9117 = extractvalue %dx.types.ResRet.f32 %9113, 3
  %9118 = fadd fast float %9114, -5.000000e-01
  %9119 = fadd fast float %9116, -5.000000e-01
  %9120 = fmul fast float %9118, 0xBFD5555560000000
  %9121 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9119, float %9120)  ; FMad(a,b,c)
  %9122 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9115, float 0.000000e+00)  ; FMad(a,b,c)
  %9123 = fadd fast float %9122, %9117
  %9124 = fmul fast float %9118, -7.500000e-01
  %9125 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9119, float %9124)  ; FMad(a,b,c)
  %9126 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9115, float 0.000000e+00)  ; FMad(a,b,c)
  %9127 = fadd fast float %9126, %9117
  %9128 = call float @dx.op.binary.f32(i32 35, float %9121, float -1.000000e+00)  ; FMax(a,b)
  %9129 = call float @dx.op.binary.f32(i32 35, float %9123, float -1.000000e+00)  ; FMax(a,b)
  %9130 = call float @dx.op.binary.f32(i32 35, float %9125, float -1.000000e+00)  ; FMax(a,b)
  %9131 = call float @dx.op.binary.f32(i32 35, float %9127, float -1.000000e+00)  ; FMax(a,b)
  %9132 = call float @dx.op.binary.f32(i32 36, float %9128, float 1.000000e+00)  ; FMin(a,b)
  %9133 = call float @dx.op.binary.f32(i32 36, float %9129, float 1.000000e+00)  ; FMin(a,b)
  %9134 = call float @dx.op.binary.f32(i32 36, float %9130, float 1.000000e+00)  ; FMin(a,b)
  %9135 = call float @dx.op.binary.f32(i32 36, float %9131, float 1.000000e+00)  ; FMin(a,b)
  %9136 = fcmp fast olt float %9132, 0x3FEFFF8020000000
  br i1 %9136, label %9137, label %9252, !dx.controlflow.hints !177

; <label>:9137                                    ; preds = %9104
  %9138 = extractvalue %dx.types.CBufRet.f32 %9020, 3
  %9139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.f32 %9139, 0
  %9141 = extractvalue %dx.types.CBufRet.f32 %9139, 1
  %9142 = extractvalue %dx.types.CBufRet.f32 %9139, 2
  %9143 = extractvalue %dx.types.CBufRet.f32 %9139, 3
  %9144 = fsub fast float %9140, %9132
  %9145 = fsub fast float %9141, %9133
  %9146 = fsub fast float %9142, %9134
  %9147 = fsub fast float %9143, %9135
  %9148 = fmul fast float %9144, %9138
  %9149 = fmul fast float %9145, %9138
  %9150 = fmul fast float %9146, %9138
  %9151 = fmul fast float %9147, %9138
  %9152 = fadd fast float %9148, %9132
  %9153 = fadd fast float %9149, %9133
  %9154 = fsub fast float -0.000000e+00, %9153
  %9155 = fadd fast float %9150, %9134
  %9156 = fadd fast float %9151, %9135
  %9157 = fmul fast float %9152, %9152
  %9158 = fsub fast float %9153, %9157
  %9159 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9158)  ; FMax(a,b)
  %9160 = fdiv fast float 1.000000e+00, %9159
  %9161 = fmul fast float %9153, %9152
  %9162 = fsub fast float %9155, %9161
  %9163 = fsub fast float %9112, %9152
  %9164 = fmul fast float %9112, %9112
  %9165 = fsub fast float %9164, %9153
  %9166 = fmul fast float %9163, %9160
  %9167 = fmul fast float %9166, %9162
  %9168 = fsub fast float %9165, %9167
  %9169 = fmul fast float %9153, %9153
  %9170 = fsub fast float %9156, %9169
  %9171 = fmul fast float %9162, %9162
  %9172 = fmul fast float %9171, %9160
  %9173 = fsub fast float %9170, %9172
  %9174 = fdiv fast float %9168, %9173
  %9175 = fmul fast float %9162, %9174
  %9176 = fsub fast float %9163, %9175
  %9177 = fmul fast float %9176, %9160
  %9178 = fmul fast float %9177, %9152
  %9179 = fsub fast float 1.000000e+00, %9178
  %9180 = fmul fast float %9153, %9174
  %9181 = fsub fast float %9179, %9180
  %9182 = fmul fast float %9177, %9177
  %9183 = fmul fast float %9174, 4.000000e+00
  %9184 = fmul fast float %9183, %9181
  %9185 = fsub fast float %9182, %9184
  %9186 = call float @dx.op.unary.f32(i32 24, float %9185)  ; Sqrt(value)
  %9187 = fcmp fast oge float %9177, 0.000000e+00
  %9188 = fsub fast float -0.000000e+00, %9186
  %9189 = select i1 %9187, float %9188, float %9186
  %9190 = fsub fast float %9189, %9177
  %9191 = fdiv fast float %9190, %9174
  %9192 = fdiv fast float %9181, %9190
  %9193 = fmul fast float %9191, 5.000000e-01
  %9194 = fmul fast float %9192, 2.000000e+00
  %9195 = select i1 %9187, float %9193, float %9194
  %9196 = select i1 %9187, float %9194, float %9193
  %9197 = call float @dx.op.binary.f32(i32 35, float %9195, float %9196)  ; FMax(a,b)
  %9198 = call float @dx.op.binary.f32(i32 36, float %9195, float %9196)  ; FMin(a,b)
  %9199 = fcmp fast ogt float %9112, %9198
  br i1 %9199, label %9200, label %9210

; <label>:9200                                    ; preds = %9137
  %9201 = fsub fast float %9112, %9198
  %9202 = fsub fast float %9197, %9198
  %9203 = fmul fast float %9201, %9202
  %9204 = fmul fast float %9197, %9112
  %9205 = fadd fast float %9197, %9112
  %9206 = fmul fast float %9205, %9152
  %9207 = fadd fast float %9204, %9153
  %9208 = fsub fast float %9207, %9206
  %9209 = fdiv fast float %9208, %9203
  br label %9210

; <label>:9210                                    ; preds = %9200, %9137
  %9211 = phi float [ %9209, %9200 ], [ 0.000000e+00, %9137 ]
  %9212 = fcmp fast ogt float %9112, %9197
  %9213 = fsub fast float %9112, %9197
  br i1 %9212, label %9214, label %9224

; <label>:9214                                    ; preds = %9210
  %9215 = fsub fast float %9197, %9198
  %9216 = fmul fast float %9215, %9213
  %9217 = fmul fast float %9198, %9112
  %9218 = fadd fast float %9198, %9112
  %9219 = fmul fast float %9218, %9152
  %9220 = fsub fast float %9154, %9217
  %9221 = fadd fast float %9220, %9219
  %9222 = fdiv fast float %9221, %9216
  %9223 = fadd fast float %9222, %9211
  br label %9224

; <label>:9224                                    ; preds = %9214, %9210
  %9225 = phi float [ %9223, %9214 ], [ %9211, %9210 ]
  %9226 = fsub fast float %9112, %9198
  %9227 = fmul fast float %9226, %9213
  %9228 = fmul fast float %9198, %9197
  %9229 = fadd fast float %9198, %9197
  %9230 = fmul fast float %9229, %9152
  %9231 = fadd fast float %9228, %9153
  %9232 = fsub fast float %9231, %9230
  %9233 = fdiv fast float %9232, %9227
  %9234 = call float @dx.op.unary.f32(i32 7, float %9225)  ; Saturate(value)
  %9235 = fcmp fast oeq float %7903, 0.000000e+00
  %9236 = extractvalue %dx.types.CBufRet.f32 %9020, 0
  %9237 = fcmp fast oeq float %9236, 0.000000e+00
  %9238 = or i1 %9235, %9237
  %9239 = fmul fast float %9236, 2.000000e+00
  %9240 = fadd fast float %9021, %9022
  %9241 = fdiv fast float %9240, %9239
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = fmul fast float %9242, 2.000000e+00
  %9244 = fsub fast float 3.000000e+00, %9243
  %9245 = fmul fast float %9242, %9242
  %9246 = fmul fast float %9245, %9244
  %9247 = select i1 %9238, float 1.000000e+00, float %9246
  %9248 = fmul fast float %9233, %7903
  %9249 = fadd fast float %9234, %9248
  %9250 = call float @dx.op.unary.f32(i32 7, float %9249)  ; Saturate(value)
  %9251 = fmul fast float %9247, %9250
  br label %9252

; <label>:9252                                    ; preds = %9224, %9104
  %9253 = phi float [ %9251, %9224 ], [ 0.000000e+00, %9104 ]
  %9254 = fsub fast float 1.000000e+00, %9253
  %9255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8974, float %8975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9256 = extractvalue %dx.types.ResRet.f32 %9255, 0
  %9257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9258 = extractvalue %dx.types.CBufRet.i32 %9257, 2
  %9259 = icmp eq i32 %9258, 0
  br i1 %9259, label %9265, label %9260

; <label>:9260                                    ; preds = %9252
  %9261 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  %9262 = fadd fast float %9256, -1.000000e+00
  %9263 = fmul fast float %9261, %9262
  %9264 = fadd fast float %9263, 1.000000e+00
  br label %9265

; <label>:9265                                    ; preds = %9260, %9252
  %9266 = phi float [ %9264, %9260 ], [ %9254, %9252 ]
  br i1 %9028, label %9267, label %9285

; <label>:9267                                    ; preds = %9265
  %9268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9269 = extractvalue %dx.types.CBufRet.f32 %9268, 1
  %9270 = fsub fast float %9105, %9269
  %9271 = call float @dx.op.unary.f32(i32 7, float %9270)  ; Saturate(value)
  %9272 = fsub fast float %9105, %9027
  %9273 = call float @dx.op.unary.f32(i32 7, float %9272)  ; Saturate(value)
  %9274 = fsub fast float %9271, %9273
  %9275 = fsub fast float %9107, %9273
  %9276 = fdiv fast float %9275, %9274
  %9277 = call float @dx.op.unary.f32(i32 7, float %9276)  ; Saturate(value)
  %9278 = fmul fast float %9277, 2.000000e+00
  %9279 = fsub fast float 3.000000e+00, %9278
  %9280 = fsub fast float %9256, %9266
  %9281 = fmul fast float %9277, %9277
  %9282 = fmul fast float %9281, %9280
  %9283 = fmul fast float %9282, %9279
  %9284 = fadd fast float %9283, %9266
  br label %9285

; <label>:9285                                    ; preds = %9267, %9265
  %9286 = phi float [ %9284, %9267 ], [ %9266, %9265 ]
  %9287 = call float @dx.op.binary.f32(i32 35, float %9256, float %9286)  ; FMax(a,b)
  %9288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.i32 %9288, 2
  %9290 = and i32 %9289, 1
  %9291 = icmp eq i32 %9290, 0
  %9292 = fcmp fast une float %9287, 1.000000e+00
  %9293 = and i1 %9292, %9291
  br i1 %9293, label %9294, label %9313

; <label>:9294                                    ; preds = %9285
  %9295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8974, float %8975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.ResRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.ResRet.f32 %9295, 2
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 1
  %9301 = fmul fast float %9300, %9296
  %9302 = fmul fast float %9300, %9297
  %9303 = fmul fast float %9300, %9298
  %9304 = fcmp fast ogt float %9256, 0x3FEFFF2E40000000
  %9305 = fsub fast float 1.000000e+00, %9287
  %9306 = fsub fast float 1.000000e+00, %9256
  %9307 = fdiv fast float %9305, %9306
  %9308 = call float @dx.op.unary.f32(i32 7, float %9307)  ; Saturate(value)
  %9309 = select i1 %9304, float 0.000000e+00, float %9308
  %9310 = fmul fast float %9301, %9309
  %9311 = fmul fast float %9302, %9309
  %9312 = fmul fast float %9303, %9309
  br label %9313

; <label>:9313                                    ; preds = %9294, %9285
  %9314 = phi float [ 0.000000e+00, %9285 ], [ %9310, %9294 ]
  %9315 = phi float [ 0.000000e+00, %9285 ], [ %9311, %9294 ]
  %9316 = phi float [ 0.000000e+00, %9285 ], [ %9312, %9294 ]
  %9317 = fmul fast float %9314, %7887
  %9318 = fmul fast float %9315, %7889
  %9319 = fmul fast float %9316, %7891
  %9320 = fmul fast float %9287, %8949
  %9321 = call float @dx.op.dot3.f32(i32 55, float %9287, float %9287, float %9287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9322 = call float @dx.op.dot3.f32(i32 55, float %9317, float %9318, float %9319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9323 = select i1 %267, float %9321, float %9287
  %9324 = select i1 %267, float 1.000000e+00, float %9287
  %9325 = select i1 %267, float %9322, float %9317
  %9326 = select i1 %267, float 0.000000e+00, float %9318
  %9327 = select i1 %267, float 0.000000e+00, float %9319
  %9328 = fmul fast float %9323, %8961
  %9329 = fmul fast float %9323, %8962
  %9330 = fmul fast float %9324, %8963
  %9331 = fadd fast float %9328, %9325
  %9332 = fadd fast float %9329, %9326
  %9333 = fadd fast float %9327, %9330
  %9334 = fmul fast float %9323, %8964
  %9335 = fmul fast float %9323, %8965
  %9336 = fmul fast float %9324, %8966
  br label %9337

; <label>:9337                                    ; preds = %9313, %8970, %8939, %8171
  %9338 = phi float [ %8176, %8171 ], [ %8961, %8939 ], [ %9331, %9313 ], [ %8961, %8970 ]
  %9339 = phi float [ %8177, %8171 ], [ %8962, %8939 ], [ %9332, %9313 ], [ %8962, %8970 ]
  %9340 = phi float [ %8178, %8171 ], [ %8963, %8939 ], [ %9333, %9313 ], [ %8963, %8970 ]
  %9341 = phi float [ %8179, %8171 ], [ %8964, %8939 ], [ %9334, %9313 ], [ %8964, %8970 ]
  %9342 = phi float [ %8180, %8171 ], [ %8965, %8939 ], [ %9335, %9313 ], [ %8965, %8970 ]
  %9343 = phi float [ %8181, %8171 ], [ %8966, %8939 ], [ %9336, %9313 ], [ %8966, %8970 ]
  %9344 = phi float [ %8182, %8171 ], [ %8949, %8939 ], [ %9320, %9313 ], [ %8949, %8970 ]
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 2
  %9347 = extractvalue %dx.types.CBufRet.f32 %9345, 3
  %9348 = fmul fast float %9346, %108
  %9349 = fmul fast float %9347, %109
  %9350 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9351 = call float @dx.op.unary.f32(i32 7, float %9349)  ; Saturate(value)
  %9352 = select i1 %7913, i32 2, i32 0
  %9353 = or i32 %9352, 1
  %9354 = uitofp i32 %9353 to float
  %9355 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9350, float %9351, float %9354, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9356 = extractvalue %dx.types.ResRet.f32 %9355, 0
  %9357 = extractvalue %dx.types.ResRet.f32 %9355, 1
  %9358 = extractvalue %dx.types.ResRet.f32 %9355, 2
  %9359 = extractvalue %dx.types.ResRet.f32 %9355, 3
  %9360 = add nuw nsw i32 %9352, 2
  %9361 = uitofp i32 %9360 to float
  %9362 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9350, float %9351, float %9361, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9363 = extractvalue %dx.types.ResRet.f32 %9362, 0
  %9364 = extractvalue %dx.types.ResRet.f32 %9362, 1
  %9365 = extractvalue %dx.types.ResRet.f32 %9362, 2
  %9366 = extractvalue %dx.types.ResRet.f32 %9362, 3
  %9367 = call float @dx.op.binary.f32(i32 35, float %9357, float %9358)  ; FMax(a,b)
  %9368 = call float @dx.op.binary.f32(i32 35, float %9356, float %9367)  ; FMax(a,b)
  %9369 = call float @dx.op.binary.f32(i32 35, float %9368, float %9359)  ; FMax(a,b)
  %9370 = call float @dx.op.binary.f32(i32 36, float %9364, float %9365)  ; FMin(a,b)
  %9371 = call float @dx.op.binary.f32(i32 36, float %9363, float %9370)  ; FMin(a,b)
  %9372 = call float @dx.op.binary.f32(i32 36, float %9371, float %9366)  ; FMin(a,b)
  %9373 = fmul fast float %9369, 2.550000e+02
  %9374 = fadd fast float %9373, 0x3F70101020000000
  %9375 = fptoui float %9374 to i32
  %9376 = fmul fast float %9372, 2.550000e+02
  %9377 = fadd fast float %9376, 0x3F70101020000000
  %9378 = fptoui float %9377 to i32
  %9379 = icmp ult i32 %9375, %9378
  br i1 %9379, label %9380, label %9549

; <label>:9380                                    ; preds = %9337
  %9381 = fcmp fast ogt float %98, 9.843750e-01
  %9382 = fadd fast float %8175, -4.000000e+00
  %9383 = select i1 %9381, float -4.000000e+00, float %9382
  %9384 = call float @dx.op.binary.f32(i32 35, float %9383, float 0.000000e+00)  ; FMax(a,b)
  %9385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.f32 %9385, 0
  %9387 = fadd fast float %9386, %9384
  %9388 = extractvalue %dx.types.CBufRet.f32 %9385, 2
  %9389 = fmul fast float %9387, %9388
  %9390 = call float @dx.op.unary.f32(i32 23, float %9389)  ; Log(value)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9385, 3
  %9392 = fmul fast float %9391, %9390
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 2
  %9395 = fmul fast float %9392, %9394
  %9396 = call float @dx.op.unary.f32(i32 7, float %9395)  ; Saturate(value)
  %9397 = uitofp i32 %9375 to float
  %9398 = uitofp i32 %9378 to float
  %9399 = fadd fast float %9397, 5.000000e-01
  %9400 = fadd fast float %9398, 5.000000e-01
  %9401 = fmul fast float %9394, %9399
  %9402 = fmul fast float %9394, %9400
  %9403 = fadd fast float %9401, 0x3F0FFB4800000000
  %9404 = fadd fast float %9402, 0xBF0FFB4800000000
  %9405 = call float @dx.op.binary.f32(i32 35, float %9396, float %9403)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 36, float %9405, float %9404)  ; FMin(a,b)
  %9407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9408 = extractvalue %dx.types.CBufRet.f32 %9407, 1
  %9409 = extractvalue %dx.types.CBufRet.f32 %9407, 2
  %9410 = extractvalue %dx.types.CBufRet.f32 %9407, 0
  %9411 = select i1 %7913, float %9410, float 0.000000e+00
  %9412 = fmul fast float %9408, %9406
  %9413 = fadd fast float %9411, %9412
  %9414 = fadd fast float %9411, %9409
  %9415 = fsub fast float %9408, %9409
  %9416 = fadd fast float %9415, %9411
  %9417 = call float @dx.op.binary.f32(i32 35, float %9413, float %9414)  ; FMax(a,b)
  %9418 = call float @dx.op.binary.f32(i32 36, float %9417, float %9416)  ; FMin(a,b)
  %9419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9350, float %9351, float %9418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9420 = extractvalue %dx.types.ResRet.f32 %9419, 0
  %9421 = extractvalue %dx.types.ResRet.f32 %9419, 1
  %9422 = extractvalue %dx.types.ResRet.f32 %9419, 2
  %9423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9424 = extractvalue %dx.types.CBufRet.i32 %9423, 0
  %9425 = extractvalue %dx.types.CBufRet.i32 %9423, 1
  %9426 = uitofp i32 %9424 to float
  %9427 = uitofp i32 %9425 to float
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 0
  %9430 = extractvalue %dx.types.CBufRet.f32 %9428, 1
  %9431 = fmul fast float %9426, %9350
  %9432 = fmul fast float %9427, %9351
  %9433 = fadd fast float %9431, -5.000000e-01
  %9434 = fadd fast float %9432, -5.000000e-01
  %9435 = call float @dx.op.unary.f32(i32 22, float %9433)  ; Frc(value)
  %9436 = call float @dx.op.unary.f32(i32 22, float %9434)  ; Frc(value)
  %9437 = fmul fast float %9435, %9435
  %9438 = fmul fast float %9437, %9435
  %9439 = fsub fast float 3.000000e+00, %9435
  %9440 = fmul fast float %9437, %9439
  %9441 = fmul fast float %9435, 3.000000e+00
  %9442 = fmul fast float %9438, 3.000000e+00
  %9443 = fmul fast float %9437, 6.000000e+00
  %9444 = fsub fast float %9442, %9443
  %9445 = fadd fast float %9444, 4.000000e+00
  %9446 = fmul fast float %9445, 0x3FC5555560000000
  %9447 = fmul fast float %9438, -3.000000e+00
  %9448 = fadd fast float %9437, %9435
  %9449 = fmul fast float %9448, 3.000000e+00
  %9450 = fadd fast float %9447, 1.000000e+00
  %9451 = fadd fast float %9450, %9449
  %9452 = fmul fast float %9438, 0x3FC5555560000000
  %9453 = fmul fast float %9436, %9436
  %9454 = fmul fast float %9453, %9436
  %9455 = fsub fast float 3.000000e+00, %9436
  %9456 = fmul fast float %9453, %9455
  %9457 = fmul fast float %9436, 3.000000e+00
  %9458 = fmul fast float %9454, 3.000000e+00
  %9459 = fmul fast float %9453, 6.000000e+00
  %9460 = fsub fast float %9458, %9459
  %9461 = fadd fast float %9460, 4.000000e+00
  %9462 = fmul fast float %9461, 0x3FC5555560000000
  %9463 = fmul fast float %9454, -3.000000e+00
  %9464 = fadd fast float %9453, %9436
  %9465 = fmul fast float %9464, 3.000000e+00
  %9466 = fadd fast float %9463, 1.000000e+00
  %9467 = fadd fast float %9466, %9465
  %9468 = fmul fast float %9454, 0x3FC5555560000000
  %9469 = fadd fast float %9435, 1.000000e+00
  %9470 = fsub fast float 1.000000e+00, %9441
  %9471 = fadd fast float %9470, %9440
  %9472 = fadd fast float %9471, %9445
  %9473 = fmul fast float %9472, 0x3FC5555560000000
  %9474 = fdiv fast float %9446, %9473
  %9475 = fsub fast float %9469, %9474
  %9476 = fsub fast float 1.000000e+00, %9435
  %9477 = fadd fast float %9451, %9438
  %9478 = fmul fast float %9477, 0x3FC5555560000000
  %9479 = fdiv fast float %9452, %9478
  %9480 = fadd fast float %9476, %9479
  %9481 = fadd fast float %9436, 1.000000e+00
  %9482 = fsub fast float 1.000000e+00, %9457
  %9483 = fadd fast float %9482, %9456
  %9484 = fadd fast float %9483, %9461
  %9485 = fmul fast float %9484, 0x3FC5555560000000
  %9486 = fdiv fast float %9462, %9485
  %9487 = fsub fast float %9481, %9486
  %9488 = fsub fast float 1.000000e+00, %9436
  %9489 = fadd fast float %9467, %9454
  %9490 = fmul fast float %9489, 0x3FC5555560000000
  %9491 = fdiv fast float %9468, %9490
  %9492 = fadd fast float %9491, %9488
  %9493 = fmul fast float %9475, %9429
  %9494 = fsub fast float %9350, %9493
  %9495 = fmul fast float %9480, %9429
  %9496 = fadd fast float %9495, %9350
  %9497 = fmul fast float %9492, %9430
  %9498 = fadd fast float %9497, %9351
  %9499 = fmul fast float %9487, %9430
  %9500 = fsub fast float %9351, %9499
  %9501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9494, float %9500, float %9418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9502 = extractvalue %dx.types.ResRet.f32 %9501, 0
  %9503 = extractvalue %dx.types.ResRet.f32 %9501, 1
  %9504 = extractvalue %dx.types.ResRet.f32 %9501, 2
  %9505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9496, float %9500, float %9418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9506 = extractvalue %dx.types.ResRet.f32 %9505, 0
  %9507 = extractvalue %dx.types.ResRet.f32 %9505, 1
  %9508 = extractvalue %dx.types.ResRet.f32 %9505, 2
  %9509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9494, float %9498, float %9418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9510 = extractvalue %dx.types.ResRet.f32 %9509, 0
  %9511 = extractvalue %dx.types.ResRet.f32 %9509, 1
  %9512 = extractvalue %dx.types.ResRet.f32 %9509, 2
  %9513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9496, float %9498, float %9418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9514 = extractvalue %dx.types.ResRet.f32 %9513, 0
  %9515 = extractvalue %dx.types.ResRet.f32 %9513, 1
  %9516 = extractvalue %dx.types.ResRet.f32 %9513, 2
  %9517 = fsub fast float %9510, %9502
  %9518 = fsub fast float %9511, %9503
  %9519 = fsub fast float %9512, %9504
  %9520 = fmul fast float %9517, %9490
  %9521 = fmul fast float %9518, %9490
  %9522 = fmul fast float %9519, %9490
  %9523 = fadd fast float %9520, %9502
  %9524 = fadd fast float %9521, %9503
  %9525 = fadd fast float %9522, %9504
  %9526 = fsub fast float %9514, %9506
  %9527 = fsub fast float %9515, %9507
  %9528 = fsub fast float %9516, %9508
  %9529 = fmul fast float %9526, %9490
  %9530 = fmul fast float %9527, %9490
  %9531 = fmul fast float %9528, %9490
  %9532 = fsub fast float %9506, %9523
  %9533 = fadd fast float %9532, %9529
  %9534 = fsub fast float %9507, %9524
  %9535 = fadd fast float %9534, %9530
  %9536 = fsub fast float %9508, %9525
  %9537 = fadd fast float %9536, %9531
  %9538 = fmul fast float %9533, %9478
  %9539 = fmul fast float %9535, %9478
  %9540 = fmul fast float %9537, %9478
  %9541 = fadd fast float %9538, %9523
  %9542 = fadd fast float %9539, %9524
  %9543 = fadd fast float %9540, %9525
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 1
  %9546 = fmul fast float %9541, %9545
  %9547 = fmul fast float %9542, %9545
  %9548 = fmul fast float %9543, %9545
  br label %9549

; <label>:9549                                    ; preds = %9380, %9337
  %9550 = phi float [ %9420, %9380 ], [ 1.000000e+00, %9337 ]
  %9551 = phi float [ %9421, %9380 ], [ 1.000000e+00, %9337 ]
  %9552 = phi float [ %9422, %9380 ], [ 1.000000e+00, %9337 ]
  %9553 = phi float [ %9546, %9380 ], [ 0.000000e+00, %9337 ]
  %9554 = phi float [ %9547, %9380 ], [ 0.000000e+00, %9337 ]
  %9555 = phi float [ %9548, %9380 ], [ 0.000000e+00, %9337 ]
  %9556 = fmul fast float %9553, %7887
  %9557 = fmul fast float %9554, %7889
  %9558 = fmul fast float %9555, %7891
  %9559 = fmul fast float %9550, %9344
  %9560 = call float @dx.op.dot3.f32(i32 55, float %9550, float %9551, float %9552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9561 = call float @dx.op.dot3.f32(i32 55, float %9556, float %9557, float %9558, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9562 = select i1 %267, float %9560, float %9550
  %9563 = select i1 %267, float %9560, float %9551
  %9564 = select i1 %267, float 1.000000e+00, float %9552
  %9565 = select i1 %267, float %9561, float %9556
  %9566 = select i1 %267, float 0.000000e+00, float %9557
  %9567 = select i1 %267, float 0.000000e+00, float %9558
  %9568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.i32 %9568, 3
  %9570 = and i32 %9569, 3
  %9571 = icmp ne i32 %9570, 0
  %9572 = and i32 %9569, 4
  %9573 = icmp ne i32 %9572, 0
  %9574 = and i1 %9571, %9573
  %9575 = and i1 %267, %9574
  br i1 %9575, label %9576, label %9582

; <label>:9576                                    ; preds = %9549
  %9577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9578 = extractvalue %dx.types.CBufRet.f32 %9577, 1
  %9579 = fadd fast float %9559, -1.000000e+00
  %9580 = fmul fast float %9578, %9579
  %9581 = fadd fast float %9580, 1.000000e+00
  br label %9582

; <label>:9582                                    ; preds = %9576, %9549
  %9583 = phi float [ %9581, %9576 ], [ %9559, %9549 ]
  %9584 = fadd fast float %9341, %9338
  %9585 = fmul fast float %9562, %9584
  %9586 = fadd fast float %9585, %9565
  %9587 = fadd fast float %9342, %9339
  %9588 = fmul fast float %9563, %9587
  %9589 = fadd fast float %9588, %9566
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  br i1 %267, label %9592, label %9607

; <label>:9592                                    ; preds = %9582
  %9593 = fadd fast float %9586, %9589
  %9594 = fmul fast float %9591, %9593
  %9595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9596 = extractvalue %dx.types.CBufRet.f32 %9595, 3
  %9597 = extractvalue %dx.types.CBufRet.f32 %7895, 1
  %9598 = fsub fast float %7900, %7894
  %9599 = fadd fast float %9598, %7901
  %9600 = fsub fast float %9599, %9597
  %9601 = extractvalue %dx.types.CBufRet.f32 %7895, 2
  %9602 = fmul fast float %9600, %9601
  %9603 = call float @dx.op.unary.f32(i32 7, float %9602)  ; Saturate(value)
  %9604 = fsub fast float %9603, %9596
  %9605 = fmul fast float %9604, %9583
  %9606 = fadd fast float %9605, %9596
  br label %9633

; <label>:9607                                    ; preds = %9582
  %9608 = fadd fast float %9343, %9340
  %9609 = fmul fast float %9564, %9608
  %9610 = fadd fast float %9609, %9567
  %9611 = fmul fast float %9591, %9586
  %9612 = fmul fast float %9591, %9589
  %9613 = fmul fast float %9591, %9610
  %9614 = call float @dx.op.binary.f32(i32 35, float %9612, float %9613)  ; FMax(a,b)
  %9615 = call float @dx.op.binary.f32(i32 35, float %9611, float %9614)  ; FMax(a,b)
  %9616 = call float @dx.op.binary.f32(i32 35, float %7889, float %7891)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 35, float %7887, float %9616)  ; FMax(a,b)
  %9618 = call float @dx.op.binary.f32(i32 35, float %9615, float %9617)  ; FMax(a,b)
  %9619 = fcmp fast ugt float %9618, 0x3F10000000000000
  br i1 %9619, label %9621, label %9620

; <label>:9620                                    ; preds = %9607
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9621

; <label>:9621                                    ; preds = %9620, %9607
  %9622 = add i32 %56, 356
  %9623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9622, i32 undef)  ; BufferLoad(srv,index,wot)
  %9624 = extractvalue %dx.types.ResRet.i32 %9623, 0
  %9625 = and i32 %9624, 32
  %9626 = icmp eq i32 %9625, 0
  br i1 %9626, label %9633, label %9627

; <label>:9627                                    ; preds = %9621
  %9628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9629 = extractvalue %dx.types.CBufRet.f32 %9628, 0
  %9630 = fmul fast float %9629, 0x3FE99999A0000000
  %9631 = fadd fast float %9629, %9611
  %9632 = fadd fast float %9630, %9613
  br label %9633

; <label>:9633                                    ; preds = %9627, %9621, %9592
  %9634 = phi float [ 1.000000e+00, %9592 ], [ %7889, %9627 ], [ %7889, %9621 ]
  %9635 = phi float [ 1.000000e+00, %9592 ], [ %7891, %9627 ], [ %7891, %9621 ]
  %9636 = phi float [ %9594, %9592 ], [ %9631, %9627 ], [ %9611, %9621 ]
  %9637 = phi float [ %9606, %9592 ], [ %9612, %9627 ], [ %9612, %9621 ]
  %9638 = phi float [ 1.000000e+00, %9592 ], [ %9632, %9627 ], [ %9613, %9621 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9639 = call float @dx.op.binary.f32(i32 36, float %9636, float 3.225500e+04)  ; FMin(a,b)
  %9640 = call float @dx.op.binary.f32(i32 36, float %9637, float 3.225500e+04)  ; FMin(a,b)
  %9641 = call float @dx.op.binary.f32(i32 36, float %9638, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9640)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9642 = call float @dx.op.binary.f32(i32 36, float %7887, float 3.225500e+04)  ; FMin(a,b)
  %9643 = call float @dx.op.binary.f32(i32 36, float %9634, float 3.225500e+04)  ; FMin(a,b)
  %9644 = call float @dx.op.binary.f32(i32 36, float %9635, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !98}
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
!94 = !{!95, !96}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!96 = !{i32 1, !"SV_Target", i8 9, i8 16, !97, i8 0, i32 1, i8 4, i32 1, i8 0, !75}
!97 = !{i32 1}
!98 = !{i32 0, i64 16}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"int", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !{!109, !111, !113, !115}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"float", !106, i64 0}
!131 = !{!132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!132 = distinct !{!132, !133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!133 = distinct !{!133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!134 = distinct !{!134, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!135 = distinct !{!135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!136 = distinct !{!136, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!146 = distinct !{!146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!155 = !{!151}
!156 = !{!152, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!157 = !{!158}
!158 = distinct !{!158, !159, !"\01?sort@@YAXAIAM00@Z: %c"}
!159 = distinct !{!159, !"\01?sort@@YAXAIAM00@Z"}
!160 = !{!161, !162, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!161 = distinct !{!161, !159, !"\01?sort@@YAXAIAM00@Z: %a"}
!162 = distinct !{!162, !159, !"\01?sort@@YAXAIAM00@Z: %b"}
!163 = !{!162}
!164 = !{!161, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!165 = !{!161}
!166 = !{!162, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 2}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}

