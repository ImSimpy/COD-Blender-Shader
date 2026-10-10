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
; shader hash: c56cd719f45153c847893203519750ee
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
;                                   texture     f32          2d     T49             t1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = alloca [4 x i32], align 4
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = alloca [12 x float], align 4
  %104 = alloca [12 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %99
  %112 = fmul fast float %110, %100
  %113 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %117, %90
  %119 = fmul fast float %117, %91
  %120 = fmul fast float %117, %92
  %121 = fmul fast float %91, %88
  %122 = fmul fast float %92, %87
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %92, %86
  %125 = fmul fast float %90, %88
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %90, %87
  %128 = fmul fast float %91, %86
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %123, %89
  %131 = fmul fast float %126, %89
  %132 = fmul fast float %129, %89
  %133 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %134 = bitcast float %133 to i32
  %135 = ashr i32 %134, 1
  %136 = sub nsw i32 1597250115, %135
  %137 = bitcast i32 %136 to float
  %138 = fmul fast float %137, %79
  %139 = fmul fast float %137, %80
  %140 = fmul fast float %137, %81
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fcmp fast une float %142, 0.000000e+00
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %111, 2.000000e+00
  %148 = fmul fast float %147, %145
  %149 = fmul fast float %112, 2.000000e+00
  %150 = fmul fast float %149, %146
  %151 = fsub fast float 1.000000e+00, %148
  %152 = fsub fast float 1.000000e+00, %150
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = select i1 %143, float %154, float %158
  %162 = select i1 %143, float %155, float %159
  %163 = select i1 %143, float %156, float %160
  %164 = fmul fast float %161, %151
  %165 = fmul fast float %162, %151
  %166 = fmul fast float %163, %151
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = select i1 %143, float %168, float %172
  %176 = select i1 %143, float %169, float %173
  %177 = select i1 %143, float %170, float %174
  %178 = fmul fast float %175, %152
  %179 = fmul fast float %176, %152
  %180 = fmul fast float %177, %152
  %181 = fadd fast float %178, %164
  %182 = fadd fast float %179, %165
  %183 = fadd fast float %180, %166
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = select i1 %143, float %185, float %189
  %193 = select i1 %143, float %186, float %190
  %194 = select i1 %143, float %187, float %191
  %195 = fadd fast float %181, %192
  %196 = fadd fast float %182, %193
  %197 = fadd fast float %183, %194
  %198 = fmul fast float %195, %102
  %199 = fmul fast float %196, %102
  %200 = fmul fast float %197, %102
  %201 = shl i32 %58, 5
  %202 = add i32 %201, 4194304
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = extractvalue %dx.types.ResRet.i32 %203, 1
  %206 = extractvalue %dx.types.ResRet.i32 %203, 2
  %207 = extractvalue %dx.types.ResRet.i32 %203, 3
  %208 = add i32 %201, 4194320
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = bitcast i32 %210 to float
  %212 = fmul fast float %111, 5.000000e-01
  %213 = fmul fast float %112, 5.000000e-01
  %214 = fptosi float %212 to i32
  %215 = fptosi float %213 to i32
  %216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = lshr i32 %217, 18
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F4C00EBA0000000
  %221 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %222 = fadd fast float %221, -1.000000e+00
  %223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %224 = extractvalue %dx.types.Dimensions %223, 0
  %225 = sitofp i32 %224 to float
  %226 = extractvalue %dx.types.Dimensions %223, 1
  %227 = sitofp i32 %226 to float
  %228 = fcmp fast oge float %212, %225
  %229 = fcmp fast oge float %213, %227
  %230 = or i1 %228, %229
  %231 = select i1 %230, float 0x4197782600000000, float %222
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %235 = fmul fast float %233, %111
  %236 = fmul fast float %234, %112
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 114688
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %240, float %235, float 0.000000e+00
  %242 = select i1 %240, float %236, float 0.000000e+00
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %241, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = fmul fast float %244, 2.550000e+02
  %246 = fptoui float %245 to i32
  %247 = select i1 %240, i32 %246, i32 0
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 3
  %250 = and i32 %249, 3
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %249, 4
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %251, %253
  br i1 %254, label %255, label %264

; <label>:255                                     ; preds = %0
  %256 = fmul fast float %146, %112
  %257 = fmul fast float %145, %111
  %258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %51, float %257, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fsub fast float 1.000000e+00, %259
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = fcmp fast olt float %260, %262
  br label %267

; <label>:264                                     ; preds = %0
  %265 = icmp eq i32 %252, 0
  %266 = and i1 %251, %265
  br label %267

; <label>:267                                     ; preds = %264, %255
  %268 = phi i1 [ %263, %255 ], [ %266, %264 ]
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fmul fast float %270, 0x3FE3C6EF40000000
  %272 = frem fast float %111, 2.560000e+02
  %273 = frem fast float %112, 2.560000e+02
  %274 = fptoui float %272 to i32
  %275 = fptoui float %273 to i32
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fadd fast float %277, %271
  %279 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %280 = add i32 %57, 216
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %282, 8
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %282, 16
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = add i32 %57, 36
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %57, 288
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %305, 0x3F50624DE0000000
  %309 = fmul fast float %307, 0x3F50624DE0000000
  %310 = mul i32 %59, 100
  %311 = add i32 %310, 28
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = add i32 %57, 232
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %316, 8
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = add i32 %57, 52
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %57, 304
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %310, 48
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = shl i32 %344, 4
  %346 = and i32 %345, 32752
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %344, 7
  %349 = and i32 %348, 32752
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %344, 22
  %352 = shl nuw nsw i32 %351, 5
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = and i32 %313, 8
  %355 = icmp ne i32 %354, 0
  %356 = select i1 %355, float %347, float %319
  %357 = select i1 %355, float %350, float %323
  %358 = select i1 %355, float %353, float %327
  %359 = add i32 %310, 52
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = and i32 %313, 2
  %367 = icmp ne i32 %366, 0
  %368 = select i1 %367, float %363, float %332
  %369 = select i1 %367, float %365, float %334
  %370 = add i32 %310, 56
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = and i32 %313, 4
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %374, float %339
  %380 = fmul float %379, 0x3F50624DE0000000
  %381 = select i1 %378, float %376, float %341
  %382 = fmul float %381, 0x3F50624DE0000000
  %383 = add i32 %310, 32
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = add i32 %57, 248
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = lshr i32 %388, 8
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = lshr i32 %388, 16
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = add i32 %57, 68
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %402, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %57, 320
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = add i32 %310, 68
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = shl i32 %416, 4
  %418 = and i32 %417, 32752
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %416, 7
  %421 = and i32 %420, 32752
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %416, 22
  %424 = shl nuw nsw i32 %423, 5
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = and i32 %385, 8
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %419, float %391
  %429 = select i1 %427, float %422, float %395
  %430 = select i1 %427, float %425, float %399
  %431 = add i32 %310, 72
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = and i32 %385, 2
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %435, float %404
  %441 = select i1 %439, float %437, float %406
  %442 = add i32 %310, 76
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = and i32 %385, 4
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %446, float %411
  %452 = fmul float %451, 0x3F50624DE0000000
  %453 = select i1 %450, float %448, float %413
  %454 = fmul float %453, 0x3F50624DE0000000
  %455 = add i32 %310, 36
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %57, 264
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 255
  %462 = uitofp i32 %461 to float
  %463 = fmul fast float %462, 0x3F70101020000000
  %464 = lshr i32 %460, 8
  %465 = and i32 %464, 255
  %466 = uitofp i32 %465 to float
  %467 = fmul fast float %466, 0x3F70101020000000
  %468 = lshr i32 %460, 16
  %469 = and i32 %468, 255
  %470 = uitofp i32 %469 to float
  %471 = fmul fast float %470, 0x3F70101020000000
  %472 = add i32 %57, 84
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = add i32 %57, 336
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 65535
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %481, 16
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = add i32 %310, 88
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = shl i32 %488, 4
  %490 = and i32 %489, 32752
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %488, 7
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %488, 22
  %496 = shl nuw nsw i32 %495, 5
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = and i32 %457, 8
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %499, float %491, float %463
  %501 = select i1 %499, float %494, float %467
  %502 = select i1 %499, float %497, float %471
  %503 = add i32 %310, 92
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 65535
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %505, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = and i32 %457, 2
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %511, float %507, float %476
  %513 = select i1 %511, float %509, float %478
  %514 = add i32 %310, 96
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 65535
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %516, 16
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = and i32 %457, 4
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %518, float %483
  %524 = fmul float %523, 0x3F50624DE0000000
  %525 = select i1 %522, float %520, float %485
  %526 = fmul float %525, 0x3F50624DE0000000
  %527 = add i32 %57, 348
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 32
  %531 = icmp eq i32 %530, 0
  %532 = and i32 %529, 64
  %533 = icmp eq i32 %532, 0
  %534 = and i32 %529, 128
  %535 = icmp eq i32 %534, 0
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 2
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %555, label %540

; <label>:540                                     ; preds = %267
  %541 = add i32 %57, 536
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %543, 0
  %545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %545, %dx.types.Handle %108, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = extractvalue %dx.types.ResRet.f32 %546, 3
  %551 = fmul fast float %550, %95
  %552 = fmul fast float %547, %96
  %553 = fmul fast float %548, %97
  %554 = fmul fast float %549, %98
  br label %555

; <label>:555                                     ; preds = %540, %267
  %556 = phi float [ %98, %267 ], [ %554, %540 ]
  %557 = phi float [ %97, %267 ], [ %553, %540 ]
  %558 = phi float [ %96, %267 ], [ %552, %540 ]
  %559 = phi float [ %95, %267 ], [ %551, %540 ]
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 2
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %583, label %564

; <label>:564                                     ; preds = %555
  %565 = add i32 %57, 44
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 1
  %569 = icmp ne i32 %568, 0
  %570 = select i1 %569, float %558, float 1.000000e+00
  %571 = add i32 %57, 60
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 1
  %575 = icmp ne i32 %574, 0
  %576 = select i1 %575, float %557, float 1.000000e+00
  %577 = add i32 %57, 76
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 1
  %581 = icmp ne i32 %580, 0
  %582 = select i1 %581, float %556, float 1.000000e+00
  br label %583

; <label>:583                                     ; preds = %564, %555
  %584 = phi float [ %556, %555 ], [ %582, %564 ]
  %585 = phi float [ %557, %555 ], [ %576, %564 ]
  %586 = phi float [ %558, %555 ], [ %570, %564 ]
  %587 = add i32 %57, 24
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = add i32 %57, 28
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = or i32 %592, %589
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %1058, label %595

; <label>:595                                     ; preds = %583
  %596 = and i32 %589, 262144
  %597 = icmp ne i32 %596, 0
  %598 = select i1 %597, float %65, float 1.000000e+00
  %599 = select i1 %597, float %66, float 0.000000e+00
  %600 = select i1 %597, float %67, float 0.000000e+00
  %601 = select i1 %597, float %68, float 1.000000e+00
  %602 = select i1 %597, float %69, float %93
  %603 = select i1 %597, float %70, float %94
  %604 = add i32 %57, 284
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = lshr i32 %606, 16
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = fmul fast float %608, 0x3F50624DE0000000
  %610 = add i32 %57, 88
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = lshr i32 %612, 16
  %614 = and i32 %613, 255
  %615 = lshr i32 %612, 24
  %616 = add i32 %57, 292
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 65535
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %618, 16
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = add i32 %57, 32
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = lshr i32 %625, 22
  %627 = shl nuw nsw i32 %626, 5
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = shl i32 %625, 4
  %630 = and i32 %629, 32752
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %625, 7
  %633 = and i32 %632, 32752
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %637 = fmul fast float %636, 1.000000e+03
  %638 = fmul fast float %308, %637
  %639 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %640 = fadd fast float %639, %298
  %641 = fmul fast float %309, %637
  %642 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %643 = fadd fast float %642, %300
  %644 = fmul fast float %609, %637
  %645 = call float @dx.op.unary.f32(i32 22, float %644)  ; Frc(value)
  %646 = fmul fast float %645, 0x401921FB60000000
  %647 = fadd fast float %646, %628
  %648 = call float @dx.op.unary.f32(i32 13, float %647)  ; Sin(value)
  %649 = call float @dx.op.unary.f32(i32 12, float %647)  ; Cos(value)
  %650 = fsub fast float -0.000000e+00, %648
  %651 = fadd fast float %602, -5.000000e-01
  %652 = fadd fast float %603, -5.000000e-01
  %653 = fmul fast float %620, %651
  %654 = fmul fast float %622, %652
  %655 = fadd fast float %653, 5.000000e-01
  %656 = fadd fast float %654, 5.000000e-01
  %657 = fmul fast float %631, %655
  %658 = fmul fast float %634, %656
  %659 = fmul fast float %649, %657
  %660 = call float @dx.op.tertiary.f32(i32 46, float %650, float %658, float %659)  ; FMad(a,b,c)
  %661 = fmul fast float %648, %657
  %662 = call float @dx.op.tertiary.f32(i32 46, float %649, float %658, float %661)  ; FMad(a,b,c)
  %663 = fadd fast float %640, %660
  %664 = fadd fast float %643, %662
  %665 = icmp ugt i32 %614, 1
  %666 = icmp ugt i32 %612, 33554431
  %667 = or i1 %666, %665
  br i1 %667, label %668, label %693

; <label>:668                                     ; preds = %595
  %669 = add i32 %57, 228
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = lshr i32 %671, 16
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = fmul fast float %636, %673
  %675 = call float @dx.op.unary.f32(i32 22, float %674)  ; Frc(value)
  %676 = mul nuw nsw i32 %614, %615
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %675, %677
  %679 = call float @dx.op.unary.f32(i32 27, float %678)  ; Round_ni(value)
  %680 = fptoui float %679 to i32
  %681 = urem i32 %680, %614
  %682 = udiv i32 %680, %615
  %683 = call float @dx.op.unary.f32(i32 22, float %663)  ; Frc(value)
  %684 = call float @dx.op.unary.f32(i32 22, float %664)  ; Frc(value)
  %685 = uitofp i32 %681 to float
  %686 = uitofp i32 %682 to float
  %687 = fadd fast float %683, %685
  %688 = fadd fast float %684, %686
  %689 = uitofp i32 %614 to float
  %690 = uitofp i32 %615 to float
  %691 = fdiv fast float %687, %689
  %692 = fdiv fast float %688, %690
  br label %693

; <label>:693                                     ; preds = %668, %595
  %694 = phi float [ %691, %668 ], [ %663, %595 ]
  %695 = phi float [ %692, %668 ], [ %664, %595 ]
  %696 = and i32 %589, 256
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %744, label %698

; <label>:698                                     ; preds = %693
  %699 = add i32 %57, 488
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %108, float %694, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = add i32 %57, 100
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = shl i32 %708, 4
  %710 = and i32 %709, 32752
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = lshr i32 %708, 7
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = fsub fast float 1.000000e+00, %559
  %716 = call float @dx.op.binary.f32(i32 35, float %715, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %717 = bitcast float %559 to i32
  %718 = sitofp i32 %717 to float
  %719 = fadd fast float %718, 0xC1CFBF8940000000
  %720 = fmul fast float %714, %719
  %721 = fadd fast float %720, 0x41CFBF8940000000
  %722 = fptosi float %721 to i32
  %723 = bitcast i32 %722 to float
  %724 = bitcast float %716 to i32
  %725 = sitofp i32 %724 to float
  %726 = fadd fast float %725, 0xC1CFBF8940000000
  %727 = fmul fast float %726, %714
  %728 = fadd fast float %727, 0x41CFBF8940000000
  %729 = fptosi float %728 to i32
  %730 = bitcast i32 %729 to float
  %731 = fmul fast float %723, %711
  %732 = fmul fast float %730, %711
  %733 = fsub fast float %716, %731
  %734 = fadd fast float %732, %716
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = fsub fast float %705, %735
  %738 = fsub fast float %736, %735
  %739 = bitcast float %738 to i32
  %740 = sub nsw i32 2129859010, %739
  %741 = bitcast i32 %740 to float
  %742 = fmul fast float %741, %737
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  br label %744

; <label>:744                                     ; preds = %698, %693
  %745 = phi float [ %743, %698 ], [ %559, %693 ]
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 128
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %766, label %750

; <label>:750                                     ; preds = %744
  %751 = add i32 %57, 472
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %753, 0
  %755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %755, %dx.types.Handle %108, float %694, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 524288
  %761 = icmp ne i32 %760, 0
  %762 = fcmp fast ogt float %757, 0x3FE0101020000000
  %763 = select i1 %762, float 1.000000e+00, float 0.000000e+00
  %764 = select i1 %761, float %763, float %757
  %765 = fmul fast float %764, %745
  br label %766

; <label>:766                                     ; preds = %750, %744
  %767 = phi float [ %765, %750 ], [ %745, %744 ]
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 16
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %947, label %772

; <label>:772                                     ; preds = %766
  %773 = add i32 %57, 424
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %775, 0
  %777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %778 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %777, %dx.types.Handle %107, float %694, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 512
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786

; <label>:786                                     ; preds = %772
  %787 = add i32 %57, 504
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %108, float %694, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  br label %794

; <label>:794                                     ; preds = %786, %772
  %795 = phi float [ %793, %786 ], [ 1.000000e+00, %772 ]
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 33554432
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %894, label %800

; <label>:800                                     ; preds = %794
  %801 = add i32 %57, 224
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 65535
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = lshr i32 %803, 16
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = add i32 %57, 228
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = lshr i32 %814, 8
  %819 = and i32 %818, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = lshr i32 %814, 16
  %823 = and i32 %822, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = add i32 %57, 220
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = lshr i32 %828, 8
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = lshr i32 %828, 16
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = bitcast float %779 to i32
  %841 = ashr i32 %840, 1
  %842 = sub nsw i32 1597463174, %841
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %779, 5.000000e-01
  %845 = fmul fast float %843, %843
  %846 = fmul fast float %845, %844
  %847 = fsub fast float 1.500000e+00, %846
  %848 = fmul fast float %843, %779
  %849 = fmul fast float %848, %847
  %850 = bitcast float %780 to i32
  %851 = ashr i32 %850, 1
  %852 = sub nsw i32 1597463174, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %780, 5.000000e-01
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.500000e+00, %856
  %858 = fmul fast float %853, %780
  %859 = fmul fast float %858, %857
  %860 = bitcast float %781 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %781, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %781
  %869 = fmul fast float %868, %867
  %870 = fsub fast float %849, %831
  %871 = fsub fast float %859, %835
  %872 = fsub fast float %869, %839
  %873 = fmul fast float %870, %805
  %874 = fmul fast float %871, %807
  %875 = fmul fast float %872, %812
  %876 = fadd fast float %873, %817
  %877 = fadd fast float %874, %821
  %878 = fadd fast float %875, %825
  %879 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %880 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = fmul fast float %879, %879
  %883 = fmul fast float %880, %880
  %884 = fmul fast float %881, %881
  %885 = fsub fast float %882, %779
  %886 = fsub fast float %883, %780
  %887 = fsub fast float %884, %781
  %888 = fmul fast float %885, %795
  %889 = fmul fast float %886, %795
  %890 = fmul fast float %887, %795
  %891 = fadd fast float %888, %779
  %892 = fadd fast float %889, %780
  %893 = fadd fast float %890, %781
  br label %947

; <label>:894                                     ; preds = %794
  %895 = and i32 %797, 134217728
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %931, label %897

; <label>:897                                     ; preds = %894
  %898 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %899 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %900 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %901 = fadd fast float %898, -5.000000e-01
  %902 = fadd fast float %899, -5.000000e-01
  %903 = fadd fast float %900, -5.000000e-01
  %904 = fmul fast float %901, %795
  %905 = fmul fast float %902, %795
  %906 = fmul fast float %903, %795
  %907 = fadd fast float %904, 5.000000e-01
  %908 = fadd fast float %905, 5.000000e-01
  %909 = fadd fast float %906, 5.000000e-01
  %910 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %780)  ; Sqrt(value)
  %912 = call float @dx.op.unary.f32(i32 24, float %781)  ; Sqrt(value)
  %913 = fmul fast float %907, 2.000000e+00
  %914 = fsub fast float 1.000000e+00, %913
  %915 = fmul fast float %914, %910
  %916 = fadd fast float %915, %913
  %917 = fmul fast float %916, %910
  %918 = fmul fast float %908, 2.000000e+00
  %919 = fsub fast float 1.000000e+00, %918
  %920 = fmul fast float %919, %911
  %921 = fadd fast float %920, %918
  %922 = fmul fast float %921, %911
  %923 = fmul fast float %909, 2.000000e+00
  %924 = fsub fast float 1.000000e+00, %923
  %925 = fmul fast float %924, %912
  %926 = fadd fast float %925, %923
  %927 = fmul fast float %926, %912
  %928 = fmul fast float %917, %917
  %929 = fmul fast float %922, %922
  %930 = fmul fast float %927, %927
  br label %947

; <label>:931                                     ; preds = %894
  %932 = fmul fast float %285, %285
  %933 = fmul fast float %289, %289
  %934 = fmul fast float %293, %293
  %935 = fadd fast float %932, -1.000000e+00
  %936 = fadd fast float %933, -1.000000e+00
  %937 = fadd fast float %934, -1.000000e+00
  %938 = fmul fast float %795, %935
  %939 = fmul fast float %795, %936
  %940 = fmul fast float %795, %937
  %941 = fadd fast float %938, 1.000000e+00
  %942 = fadd fast float %939, 1.000000e+00
  %943 = fadd fast float %940, 1.000000e+00
  %944 = fmul fast float %941, %779
  %945 = fmul fast float %942, %780
  %946 = fmul fast float %943, %781
  br label %947

; <label>:947                                     ; preds = %931, %897, %800, %766
  %948 = phi float [ %891, %800 ], [ %928, %897 ], [ %944, %931 ], [ 1.000000e+00, %766 ]
  %949 = phi float [ %892, %800 ], [ %929, %897 ], [ %945, %931 ], [ 1.000000e+00, %766 ]
  %950 = phi float [ %893, %800 ], [ %930, %897 ], [ %946, %931 ], [ 1.000000e+00, %766 ]
  %951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.i32 %951, 1
  %953 = and i32 %952, 1
  %954 = icmp ne i32 %953, 0
  %955 = add i32 %57, 356
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 32
  %959 = icmp ne i32 %958, 0
  %960 = and i1 %954, %959
  %961 = select i1 %960, float 1.000000e+00, float %948
  %962 = select i1 %960, float 0x3FD3333340000000, float %949
  %963 = select i1 %960, float 0x3FD3333340000000, float %950
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 32
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1040, label %968

; <label>:968                                     ; preds = %947
  %969 = add i32 %57, 92
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %57, 440
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = add i32 %974, 0
  %976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %976, %dx.types.Handle %107, float %694, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = extractvalue %dx.types.ResRet.f32 %977, 1
  %980 = extractvalue %dx.types.ResRet.f32 %977, 2
  %981 = extractvalue %dx.types.ResRet.f32 %977, 3
  %982 = and i32 %971, 255
  %983 = uitofp i32 %982 to float
  %984 = lshr i32 %971, 8
  %985 = and i32 %984, 255
  %986 = uitofp i32 %985 to float
  %987 = lshr i32 %971, 16
  %988 = and i32 %987, 255
  %989 = uitofp i32 %988 to float
  %990 = fmul fast float %989, 0x3F70101000000000
  %991 = fmul fast float %978, %983
  %992 = fadd fast float %991, %986
  %993 = fmul fast float %992, 0x3F70101000000000
  %994 = fadd fast float %979, -5.000000e-01
  %995 = fadd fast float %981, -5.000000e-01
  %996 = fmul fast float %994, %990
  %997 = fmul fast float %995, %990
  %998 = fadd fast float %996, 5.000000e-01
  %999 = fadd fast float %997, 5.000000e-01
  %1000 = fmul fast float %998, 2.000000e+00
  %1001 = fadd fast float %1000, -1.000000e+00
  %1002 = fmul fast float %999, 2.000000e+00
  %1003 = fadd fast float %1002, -1.000000e+00
  %1004 = fadd fast float %1001, %1003
  %1005 = fmul fast float %1004, 5.000000e-01
  %1006 = fsub fast float %1001, %1003
  %1007 = fmul fast float %1006, 5.000000e-01
  %1008 = call float @dx.op.unary.f32(i32 6, float %1005)  ; FAbs(value)
  %1009 = fsub fast float 1.000000e+00, %1008
  %1010 = call float @dx.op.unary.f32(i32 6, float %1007)  ; FAbs(value)
  %1011 = fsub fast float %1009, %1010
  %1012 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1007, float %1011, float %1005, float %1007, float %1011)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = call float @dx.op.unary.f32(i32 25, float %1012)  ; Rsqrt(value)
  %1014 = fmul fast float %1005, %1013
  %1015 = fmul fast float %1007, %1013
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = and i32 %1017, 67108864
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1036, label %1020

; <label>:1020                                    ; preds = %968
  %1021 = add i32 %57, 280
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = and i32 %1023, 65535
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 65535
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = lshr i32 %1023, 16
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = fsub fast float %993, %1031
  %1033 = fmul fast float %1032, %1025
  %1034 = fadd fast float %1033, %1029
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  br label %1036

; <label>:1036                                    ; preds = %1020, %968
  %1037 = phi float [ %1035, %1020 ], [ %993, %968 ]
  %1038 = call float @dx.op.dot2.f32(i32 54, float %1014, float %1015, float %598, float %599)  ; Dot2(ax,ay,bx,by)
  %1039 = call float @dx.op.dot2.f32(i32 54, float %1014, float %1015, float %600, float %601)  ; Dot2(ax,ay,bx,by)
  br label %1040

; <label>:1040                                    ; preds = %1036, %947
  %1041 = phi float [ %1037, %1036 ], [ 0x3FD6666660000000, %947 ]
  %1042 = phi float [ %1038, %1036 ], [ 0.000000e+00, %947 ]
  %1043 = phi float [ %1039, %1036 ], [ 0.000000e+00, %947 ]
  %1044 = phi float [ %980, %1036 ], [ 1.000000e+00, %947 ]
  %1045 = add i32 %57, 96
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = lshr i32 %1047, 8
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = call float @dx.op.dot3.f32(i32 55, float %961, float %962, float %963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = fmul fast float %1052, %1053
  %1055 = fadd fast float %1054, %1049
  %1056 = fmul fast float %1055, 0x3F70101020000000
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  br label %1058

; <label>:1058                                    ; preds = %1040, %583
  %1059 = phi float [ 0.000000e+00, %583 ], [ %1042, %1040 ]
  %1060 = phi float [ 0.000000e+00, %583 ], [ %1043, %1040 ]
  %1061 = phi float [ 0.000000e+00, %583 ], [ %767, %1040 ]
  %1062 = phi float [ 0.000000e+00, %583 ], [ %1041, %1040 ]
  %1063 = phi float [ 0.000000e+00, %583 ], [ %1044, %1040 ]
  %1064 = phi float [ 0.000000e+00, %583 ], [ %1057, %1040 ]
  br i1 %531, label %1626, label %1065

; <label>:1065                                    ; preds = %1058
  %1066 = add i32 %57, 40
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = add i32 %57, 44
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = or i32 %1071, %1068
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1626, label %1074

; <label>:1074                                    ; preds = %1065
  %1075 = and i32 %1068, 262144
  %1076 = icmp ne i32 %1075, 0
  %1077 = select i1 %1076, float %65, float 1.000000e+00
  %1078 = select i1 %1076, float %66, float 0.000000e+00
  %1079 = select i1 %1076, float %67, float 0.000000e+00
  %1080 = select i1 %1076, float %68, float 1.000000e+00
  %1081 = select i1 %1076, float %69, float %93
  %1082 = select i1 %1076, float %70, float %94
  %1083 = add i32 %57, 300
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = lshr i32 %1085, 16
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = fmul fast float %1087, 0x3F50624DE0000000
  %1089 = add i32 %57, 104
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = lshr i32 %1091, 16
  %1093 = and i32 %1092, 255
  %1094 = lshr i32 %1091, 24
  %1095 = add i32 %57, 308
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 65535
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = lshr i32 %1097, 16
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = add i32 %57, 48
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 22
  %1106 = shl nuw nsw i32 %1105, 5
  %1107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1106)  ; LegacyF16ToF32(value)
  %1108 = shl i32 %1104, 4
  %1109 = and i32 %1108, 32752
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = lshr i32 %1104, 7
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 3
  %1116 = fmul fast float %1115, 1.000000e+03
  %1117 = fmul fast float %1116, %380
  %1118 = call float @dx.op.unary.f32(i32 22, float %1117)  ; Frc(value)
  %1119 = fadd fast float %1118, %368
  %1120 = fmul fast float %1116, %382
  %1121 = call float @dx.op.unary.f32(i32 22, float %1120)  ; Frc(value)
  %1122 = fadd fast float %1121, %369
  %1123 = fmul fast float %1088, %1116
  %1124 = call float @dx.op.unary.f32(i32 22, float %1123)  ; Frc(value)
  %1125 = fmul fast float %1124, 0x401921FB60000000
  %1126 = fadd fast float %1125, %1107
  %1127 = call float @dx.op.unary.f32(i32 13, float %1126)  ; Sin(value)
  %1128 = call float @dx.op.unary.f32(i32 12, float %1126)  ; Cos(value)
  %1129 = fsub fast float -0.000000e+00, %1127
  %1130 = fadd fast float %1081, -5.000000e-01
  %1131 = fadd fast float %1082, -5.000000e-01
  %1132 = fmul fast float %1099, %1130
  %1133 = fmul fast float %1101, %1131
  %1134 = fadd fast float %1132, 5.000000e-01
  %1135 = fadd fast float %1133, 5.000000e-01
  %1136 = fmul fast float %1110, %1134
  %1137 = fmul fast float %1113, %1135
  %1138 = fmul fast float %1128, %1136
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1137, float %1138)  ; FMad(a,b,c)
  %1140 = fmul fast float %1127, %1136
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1128, float %1137, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1119, %1139
  %1143 = fadd fast float %1122, %1141
  %1144 = icmp ugt i32 %1093, 1
  %1145 = icmp ugt i32 %1091, 33554431
  %1146 = or i1 %1145, %1144
  br i1 %1146, label %1147, label %1172

; <label>:1147                                    ; preds = %1074
  %1148 = add i32 %57, 244
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 16
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fmul fast float %1115, %1152
  %1154 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1155 = mul nuw nsw i32 %1093, %1094
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1154, %1156
  %1158 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1159 = fptoui float %1158 to i32
  %1160 = urem i32 %1159, %1093
  %1161 = udiv i32 %1159, %1094
  %1162 = call float @dx.op.unary.f32(i32 22, float %1142)  ; Frc(value)
  %1163 = call float @dx.op.unary.f32(i32 22, float %1143)  ; Frc(value)
  %1164 = uitofp i32 %1160 to float
  %1165 = uitofp i32 %1161 to float
  %1166 = fadd fast float %1162, %1164
  %1167 = fadd fast float %1163, %1165
  %1168 = uitofp i32 %1093 to float
  %1169 = uitofp i32 %1094 to float
  %1170 = fdiv fast float %1166, %1168
  %1171 = fdiv fast float %1167, %1169
  br label %1172

; <label>:1172                                    ; preds = %1147, %1074
  %1173 = phi float [ %1170, %1147 ], [ %1142, %1074 ]
  %1174 = phi float [ %1171, %1147 ], [ %1143, %1074 ]
  %1175 = and i32 %1068, 256
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1223, label %1177

; <label>:1177                                    ; preds = %1172
  %1178 = add i32 %57, 492
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %108, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = add i32 %57, 116
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = shl i32 %1187, 4
  %1189 = and i32 %1188, 32752
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = lshr i32 %1187, 7
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = fsub fast float 1.000000e+00, %586
  %1195 = call float @dx.op.binary.f32(i32 35, float %1194, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1196 = bitcast float %586 to i32
  %1197 = sitofp i32 %1196 to float
  %1198 = fadd fast float %1197, 0xC1CFBF8940000000
  %1199 = fmul fast float %1193, %1198
  %1200 = fadd fast float %1199, 0x41CFBF8940000000
  %1201 = fptosi float %1200 to i32
  %1202 = bitcast i32 %1201 to float
  %1203 = bitcast float %1195 to i32
  %1204 = sitofp i32 %1203 to float
  %1205 = fadd fast float %1204, 0xC1CFBF8940000000
  %1206 = fmul fast float %1205, %1193
  %1207 = fadd fast float %1206, 0x41CFBF8940000000
  %1208 = fptosi float %1207 to i32
  %1209 = bitcast i32 %1208 to float
  %1210 = fmul fast float %1202, %1190
  %1211 = fmul fast float %1209, %1190
  %1212 = fsub fast float %1195, %1210
  %1213 = fadd fast float %1211, %1195
  %1214 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1215 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1216 = fsub fast float %1184, %1214
  %1217 = fsub fast float %1215, %1214
  %1218 = bitcast float %1217 to i32
  %1219 = sub nsw i32 2129859010, %1218
  %1220 = bitcast i32 %1219 to float
  %1221 = fmul fast float %1220, %1216
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  br label %1223

; <label>:1223                                    ; preds = %1177, %1172
  %1224 = phi float [ %1222, %1177 ], [ %586, %1172 ]
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 128
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1245, label %1229

; <label>:1229                                    ; preds = %1223
  %1230 = add i32 %57, 476
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = add i32 %1232, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1234, %dx.types.Handle %108, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 524288
  %1240 = icmp ne i32 %1239, 0
  %1241 = fcmp fast ogt float %1236, 0x3FE0101020000000
  %1242 = select i1 %1241, float 1.000000e+00, float 0.000000e+00
  %1243 = select i1 %1240, float %1242, float %1236
  %1244 = fmul fast float %1243, %1224
  br label %1245

; <label>:1245                                    ; preds = %1229, %1223
  %1246 = phi float [ %1244, %1229 ], [ %1224, %1223 ]
  %1247 = fcmp fast ult float %1246, 0x3F70101020000000
  br i1 %1247, label %1626, label %1248

; <label>:1248                                    ; preds = %1245
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 16
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1428, label %1253

; <label>:1253                                    ; preds = %1248
  %1254 = add i32 %57, 428
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %1256, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1258, %dx.types.Handle %107, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 512
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1275, label %1267

; <label>:1267                                    ; preds = %1253
  %1268 = add i32 %57, 508
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %1270, 0
  %1272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1272, %dx.types.Handle %108, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  br label %1275

; <label>:1275                                    ; preds = %1267, %1253
  %1276 = phi float [ %1274, %1267 ], [ 1.000000e+00, %1253 ]
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 33554432
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1375, label %1281

; <label>:1281                                    ; preds = %1275
  %1282 = add i32 %57, 240
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 65535
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = lshr i32 %1284, 16
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = add i32 %57, 244
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 65535
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = lshr i32 %1295, 8
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = lshr i32 %1295, 16
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = add i32 %57, 236
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = lshr i32 %1309, 8
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1309, 16
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = bitcast float %1260 to i32
  %1322 = ashr i32 %1321, 1
  %1323 = sub nsw i32 1597463174, %1322
  %1324 = bitcast i32 %1323 to float
  %1325 = fmul fast float %1260, 5.000000e-01
  %1326 = fmul fast float %1324, %1324
  %1327 = fmul fast float %1326, %1325
  %1328 = fsub fast float 1.500000e+00, %1327
  %1329 = fmul fast float %1324, %1260
  %1330 = fmul fast float %1329, %1328
  %1331 = bitcast float %1261 to i32
  %1332 = ashr i32 %1331, 1
  %1333 = sub nsw i32 1597463174, %1332
  %1334 = bitcast i32 %1333 to float
  %1335 = fmul fast float %1261, 5.000000e-01
  %1336 = fmul fast float %1334, %1334
  %1337 = fmul fast float %1336, %1335
  %1338 = fsub fast float 1.500000e+00, %1337
  %1339 = fmul fast float %1334, %1261
  %1340 = fmul fast float %1339, %1338
  %1341 = bitcast float %1262 to i32
  %1342 = ashr i32 %1341, 1
  %1343 = sub nsw i32 1597463174, %1342
  %1344 = bitcast i32 %1343 to float
  %1345 = fmul fast float %1262, 5.000000e-01
  %1346 = fmul fast float %1344, %1344
  %1347 = fmul fast float %1346, %1345
  %1348 = fsub fast float 1.500000e+00, %1347
  %1349 = fmul fast float %1344, %1262
  %1350 = fmul fast float %1349, %1348
  %1351 = fsub fast float %1330, %1312
  %1352 = fsub fast float %1340, %1316
  %1353 = fsub fast float %1350, %1320
  %1354 = fmul fast float %1351, %1286
  %1355 = fmul fast float %1352, %1288
  %1356 = fmul fast float %1353, %1293
  %1357 = fadd fast float %1354, %1298
  %1358 = fadd fast float %1355, %1302
  %1359 = fadd fast float %1356, %1306
  %1360 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1361 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1363 = fmul fast float %1360, %1360
  %1364 = fmul fast float %1361, %1361
  %1365 = fmul fast float %1362, %1362
  %1366 = fsub fast float %1363, %1260
  %1367 = fsub fast float %1364, %1261
  %1368 = fsub fast float %1365, %1262
  %1369 = fmul fast float %1366, %1276
  %1370 = fmul fast float %1367, %1276
  %1371 = fmul fast float %1368, %1276
  %1372 = fadd fast float %1369, %1260
  %1373 = fadd fast float %1370, %1261
  %1374 = fadd fast float %1371, %1262
  br label %1428

; <label>:1375                                    ; preds = %1275
  %1376 = and i32 %1278, 134217728
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1412, label %1378

; <label>:1378                                    ; preds = %1375
  %1379 = call float @dx.op.unary.f32(i32 24, float %356)  ; Sqrt(value)
  %1380 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1381 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %1382 = fadd fast float %1379, -5.000000e-01
  %1383 = fadd fast float %1380, -5.000000e-01
  %1384 = fadd fast float %1381, -5.000000e-01
  %1385 = fmul fast float %1382, %1276
  %1386 = fmul fast float %1383, %1276
  %1387 = fmul fast float %1384, %1276
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fadd fast float %1386, 5.000000e-01
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1394 = fmul fast float %1388, 2.000000e+00
  %1395 = fsub fast float 1.000000e+00, %1394
  %1396 = fmul fast float %1395, %1391
  %1397 = fadd fast float %1396, %1394
  %1398 = fmul fast float %1397, %1391
  %1399 = fmul fast float %1389, 2.000000e+00
  %1400 = fsub fast float 1.000000e+00, %1399
  %1401 = fmul fast float %1400, %1392
  %1402 = fadd fast float %1401, %1399
  %1403 = fmul fast float %1402, %1392
  %1404 = fmul fast float %1390, 2.000000e+00
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1393
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1407, %1393
  %1409 = fmul fast float %1398, %1398
  %1410 = fmul fast float %1403, %1403
  %1411 = fmul fast float %1408, %1408
  br label %1428

; <label>:1412                                    ; preds = %1375
  %1413 = fmul fast float %356, %356
  %1414 = fmul fast float %357, %357
  %1415 = fmul fast float %358, %358
  %1416 = fadd fast float %1413, -1.000000e+00
  %1417 = fadd fast float %1414, -1.000000e+00
  %1418 = fadd fast float %1415, -1.000000e+00
  %1419 = fmul fast float %1276, %1416
  %1420 = fmul fast float %1276, %1417
  %1421 = fmul fast float %1276, %1418
  %1422 = fadd fast float %1419, 1.000000e+00
  %1423 = fadd fast float %1420, 1.000000e+00
  %1424 = fadd fast float %1421, 1.000000e+00
  %1425 = fmul fast float %1422, %1260
  %1426 = fmul fast float %1423, %1261
  %1427 = fmul fast float %1424, %1262
  br label %1428

; <label>:1428                                    ; preds = %1412, %1378, %1281, %1248
  %1429 = phi float [ %1372, %1281 ], [ %1409, %1378 ], [ %1425, %1412 ], [ 1.000000e+00, %1248 ]
  %1430 = phi float [ %1373, %1281 ], [ %1410, %1378 ], [ %1426, %1412 ], [ 1.000000e+00, %1248 ]
  %1431 = phi float [ %1374, %1281 ], [ %1411, %1378 ], [ %1427, %1412 ], [ 1.000000e+00, %1248 ]
  %1432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.i32 %1432, 1
  %1434 = and i32 %1433, 1
  %1435 = icmp ne i32 %1434, 0
  %1436 = add i32 %57, 356
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 32
  %1440 = icmp ne i32 %1439, 0
  %1441 = and i1 %1435, %1440
  %1442 = select i1 %1441, float 1.000000e+00, float %1429
  %1443 = select i1 %1441, float 0x3FD3333340000000, float %1430
  %1444 = select i1 %1441, float 0x3FD3333340000000, float %1431
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 32
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1521, label %1449

; <label>:1449                                    ; preds = %1428
  %1450 = add i32 %57, 108
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = add i32 %57, 444
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1455, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1457, %dx.types.Handle %107, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = extractvalue %dx.types.ResRet.f32 %1458, 3
  %1463 = and i32 %1452, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = lshr i32 %1452, 8
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = lshr i32 %1452, 16
  %1469 = and i32 %1468, 255
  %1470 = uitofp i32 %1469 to float
  %1471 = fmul fast float %1470, 0x3F70101000000000
  %1472 = fmul fast float %1459, %1464
  %1473 = fadd fast float %1472, %1467
  %1474 = fmul fast float %1473, 0x3F70101000000000
  %1475 = fadd fast float %1460, -5.000000e-01
  %1476 = fadd fast float %1462, -5.000000e-01
  %1477 = fmul fast float %1475, %1471
  %1478 = fmul fast float %1476, %1471
  %1479 = fadd fast float %1477, 5.000000e-01
  %1480 = fadd fast float %1478, 5.000000e-01
  %1481 = fmul fast float %1479, 2.000000e+00
  %1482 = fadd fast float %1481, -1.000000e+00
  %1483 = fmul fast float %1480, 2.000000e+00
  %1484 = fadd fast float %1483, -1.000000e+00
  %1485 = fadd fast float %1482, %1484
  %1486 = fmul fast float %1485, 5.000000e-01
  %1487 = fsub fast float %1482, %1484
  %1488 = fmul fast float %1487, 5.000000e-01
  %1489 = call float @dx.op.unary.f32(i32 6, float %1486)  ; FAbs(value)
  %1490 = fsub fast float 1.000000e+00, %1489
  %1491 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1492 = fsub fast float %1490, %1491
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1488, float %1492, float %1486, float %1488, float %1492)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = call float @dx.op.unary.f32(i32 25, float %1493)  ; Rsqrt(value)
  %1495 = fmul fast float %1486, %1494
  %1496 = fmul fast float %1488, %1494
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 67108864
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1517, label %1501

; <label>:1501                                    ; preds = %1449
  %1502 = add i32 %57, 296
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 65535
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 65535
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = lshr i32 %1504, 16
  %1512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1511)  ; LegacyF16ToF32(value)
  %1513 = fsub fast float %1474, %1512
  %1514 = fmul fast float %1513, %1506
  %1515 = fadd fast float %1514, %1510
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  br label %1517

; <label>:1517                                    ; preds = %1501, %1449
  %1518 = phi float [ %1516, %1501 ], [ %1474, %1449 ]
  %1519 = call float @dx.op.dot2.f32(i32 54, float %1495, float %1496, float %1077, float %1078)  ; Dot2(ax,ay,bx,by)
  %1520 = call float @dx.op.dot2.f32(i32 54, float %1495, float %1496, float %1079, float %1080)  ; Dot2(ax,ay,bx,by)
  br label %1521

; <label>:1521                                    ; preds = %1517, %1428
  %1522 = phi float [ %1518, %1517 ], [ 0x3FD6666660000000, %1428 ]
  %1523 = phi float [ %1519, %1517 ], [ 0.000000e+00, %1428 ]
  %1524 = phi float [ %1520, %1517 ], [ 0.000000e+00, %1428 ]
  %1525 = phi float [ %1461, %1517 ], [ 1.000000e+00, %1428 ]
  %1526 = add i32 %57, 112
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 3
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1533, label %1550

; <label>:1533                                    ; preds = %1521
  %1534 = lshr i32 %1528, 8
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1442, float %1443, float %1444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = fmul fast float %1536, %1537
  %1539 = and i32 %1528, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = fadd fast float %1538, %1540
  %1542 = fmul fast float %1541, 0x3F70101020000000
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = and i32 %1530, 16
  %1545 = icmp ne i32 %1544, 0
  %1546 = select i1 %1545, float %1246, float 0.000000e+00
  %1547 = fsub fast float %1543, %1064
  %1548 = fmul fast float %1546, %1547
  %1549 = fadd fast float %1548, %1064
  br label %1550

; <label>:1550                                    ; preds = %1533, %1521
  %1551 = phi float [ %1064, %1521 ], [ %1549, %1533 ]
  %1552 = and i32 %1530, 12
  %1553 = icmp eq i32 %1552, 12
  br i1 %1553, label %1626, label %1554

; <label>:1554                                    ; preds = %1550
  %1555 = and i32 %1530, 2097184
  %1556 = icmp eq i32 %1555, 2097184
  %1557 = select i1 %1556, float %1246, float 0.000000e+00
  %1558 = and i32 %1530, 4194336
  %1559 = icmp eq i32 %1558, 4194336
  %1560 = select i1 %1559, float %1246, float 0.000000e+00
  %1561 = and i32 %1530, 8388640
  %1562 = icmp eq i32 %1561, 8388640
  %1563 = select i1 %1562, float %1246, float 0.000000e+00
  %1564 = icmp eq i32 %1552, 0
  br i1 %1564, label %1565, label %1578

; <label>:1565                                    ; preds = %1554
  %1566 = fsub fast float %1523, %1059
  %1567 = fsub fast float %1524, %1060
  %1568 = fmul fast float %1557, %1566
  %1569 = fmul fast float %1557, %1567
  %1570 = fadd fast float %1568, %1059
  %1571 = fadd fast float %1569, %1060
  %1572 = fsub fast float %1525, %1063
  %1573 = fmul fast float %1560, %1572
  %1574 = fadd fast float %1573, %1063
  %1575 = fsub fast float %1522, %1062
  %1576 = fmul fast float %1563, %1575
  %1577 = fadd fast float %1576, %1062
  br label %1626

; <label>:1578                                    ; preds = %1554
  %1579 = icmp eq i32 %1552, 4
  br i1 %1579, label %1580, label %1612

; <label>:1580                                    ; preds = %1578
  %1581 = fmul fast float %1557, %1523
  %1582 = fmul fast float %1557, %1524
  %1583 = fadd fast float %1581, %1059
  %1584 = fadd fast float %1582, %1060
  %1585 = call float @dx.op.binary.f32(i32 36, float %1063, float %1525)  ; FMin(a,b)
  %1586 = fsub fast float %1585, %1063
  %1587 = fmul fast float %1586, %1560
  %1588 = fadd fast float %1587, %1063
  %1589 = fadd fast float %1522, %1062
  %1590 = fmul fast float %1589, 0x3FF337FAE0000000
  %1591 = fmul fast float %1062, %1062
  %1592 = fmul fast float %1522, %1522
  %1593 = fadd fast float %1592, %1591
  %1594 = fmul fast float %1593, 0x3FE5152B00000000
  %1595 = fmul fast float %1062, 0xBFCC1F85E0000000
  %1596 = fmul fast float %1595, %1522
  %1597 = fadd fast float %1596, 0xBFE1363700000000
  %1598 = fadd fast float %1597, %1590
  %1599 = fsub fast float %1598, %1594
  %1600 = fmul fast float %1589, 0x3FBA6F0D00000000
  %1601 = fmul fast float %1593, 0x3FD0432880000000
  %1602 = fmul fast float %1062, 0xBFEF110800000000
  %1603 = fmul fast float %1602, %1522
  %1604 = fadd fast float %1603, 1.000000e+00
  %1605 = fsub fast float %1604, %1600
  %1606 = fadd fast float %1605, %1601
  %1607 = fdiv fast float %1599, %1606
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1609 = fsub fast float %1608, %1062
  %1610 = fmul fast float %1609, %1563
  %1611 = fadd fast float %1610, %1062
  br label %1626

; <label>:1612                                    ; preds = %1578
  %1613 = icmp eq i32 %1552, 8
  br i1 %1613, label %1614, label %1626

; <label>:1614                                    ; preds = %1612
  %1615 = fmul fast float %1557, %1523
  %1616 = fmul fast float %1557, %1524
  %1617 = fadd fast float %1615, %1059
  %1618 = fadd fast float %1616, %1060
  %1619 = call float @dx.op.binary.f32(i32 36, float %1063, float %1525)  ; FMin(a,b)
  %1620 = fsub fast float %1619, %1063
  %1621 = fmul fast float %1620, %1560
  %1622 = fadd fast float %1621, %1063
  %1623 = fsub fast float %1522, %1062
  %1624 = fmul fast float %1563, %1623
  %1625 = fadd fast float %1624, %1062
  br label %1626

; <label>:1626                                    ; preds = %1614, %1612, %1580, %1565, %1550, %1245, %1065, %1058
  %1627 = phi float [ %1059, %1550 ], [ %1059, %1245 ], [ %1059, %1058 ], [ %1617, %1614 ], [ %1059, %1612 ], [ %1583, %1580 ], [ %1570, %1565 ], [ %1059, %1065 ]
  %1628 = phi float [ %1060, %1550 ], [ %1060, %1245 ], [ %1060, %1058 ], [ %1618, %1614 ], [ %1060, %1612 ], [ %1584, %1580 ], [ %1571, %1565 ], [ %1060, %1065 ]
  %1629 = phi float [ %1062, %1550 ], [ %1062, %1245 ], [ %1062, %1058 ], [ %1625, %1614 ], [ %1062, %1612 ], [ %1611, %1580 ], [ %1577, %1565 ], [ %1062, %1065 ]
  %1630 = phi float [ %1063, %1550 ], [ %1063, %1245 ], [ %1063, %1058 ], [ %1622, %1614 ], [ %1063, %1612 ], [ %1588, %1580 ], [ %1574, %1565 ], [ %1063, %1065 ]
  %1631 = phi float [ %1551, %1550 ], [ %1064, %1245 ], [ %1064, %1058 ], [ %1551, %1614 ], [ %1551, %1612 ], [ %1551, %1580 ], [ %1551, %1565 ], [ %1064, %1065 ]
  br i1 %533, label %2193, label %1632

; <label>:1632                                    ; preds = %1626
  %1633 = add i32 %57, 56
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = add i32 %57, 60
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = or i32 %1638, %1635
  %1640 = icmp eq i32 %1639, 0
  br i1 %1640, label %2193, label %1641

; <label>:1641                                    ; preds = %1632
  %1642 = and i32 %1635, 262144
  %1643 = icmp ne i32 %1642, 0
  %1644 = select i1 %1643, float %65, float 1.000000e+00
  %1645 = select i1 %1643, float %66, float 0.000000e+00
  %1646 = select i1 %1643, float %67, float 0.000000e+00
  %1647 = select i1 %1643, float %68, float 1.000000e+00
  %1648 = select i1 %1643, float %69, float %93
  %1649 = select i1 %1643, float %70, float %94
  %1650 = add i32 %57, 316
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = lshr i32 %1652, 16
  %1654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1653)  ; LegacyF16ToF32(value)
  %1655 = fmul fast float %1654, 0x3F50624DE0000000
  %1656 = add i32 %57, 120
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = lshr i32 %1658, 16
  %1660 = and i32 %1659, 255
  %1661 = lshr i32 %1658, 24
  %1662 = add i32 %57, 324
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 65535
  %1666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1665)  ; LegacyF16ToF32(value)
  %1667 = lshr i32 %1664, 16
  %1668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1667)  ; LegacyF16ToF32(value)
  %1669 = add i32 %57, 64
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = lshr i32 %1671, 22
  %1673 = shl nuw nsw i32 %1672, 5
  %1674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1673)  ; LegacyF16ToF32(value)
  %1675 = shl i32 %1671, 4
  %1676 = and i32 %1675, 32752
  %1677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1676)  ; LegacyF16ToF32(value)
  %1678 = lshr i32 %1671, 7
  %1679 = and i32 %1678, 32752
  %1680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1679)  ; LegacyF16ToF32(value)
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 3
  %1683 = fmul fast float %1682, 1.000000e+03
  %1684 = fmul fast float %1683, %452
  %1685 = call float @dx.op.unary.f32(i32 22, float %1684)  ; Frc(value)
  %1686 = fadd fast float %1685, %440
  %1687 = fmul fast float %1683, %454
  %1688 = call float @dx.op.unary.f32(i32 22, float %1687)  ; Frc(value)
  %1689 = fadd fast float %1688, %441
  %1690 = fmul fast float %1655, %1683
  %1691 = call float @dx.op.unary.f32(i32 22, float %1690)  ; Frc(value)
  %1692 = fmul fast float %1691, 0x401921FB60000000
  %1693 = fadd fast float %1692, %1674
  %1694 = call float @dx.op.unary.f32(i32 13, float %1693)  ; Sin(value)
  %1695 = call float @dx.op.unary.f32(i32 12, float %1693)  ; Cos(value)
  %1696 = fsub fast float -0.000000e+00, %1694
  %1697 = fadd fast float %1648, -5.000000e-01
  %1698 = fadd fast float %1649, -5.000000e-01
  %1699 = fmul fast float %1666, %1697
  %1700 = fmul fast float %1668, %1698
  %1701 = fadd fast float %1699, 5.000000e-01
  %1702 = fadd fast float %1700, 5.000000e-01
  %1703 = fmul fast float %1677, %1701
  %1704 = fmul fast float %1680, %1702
  %1705 = fmul fast float %1695, %1703
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1696, float %1704, float %1705)  ; FMad(a,b,c)
  %1707 = fmul fast float %1694, %1703
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1695, float %1704, float %1707)  ; FMad(a,b,c)
  %1709 = fadd fast float %1686, %1706
  %1710 = fadd fast float %1689, %1708
  %1711 = icmp ugt i32 %1660, 1
  %1712 = icmp ugt i32 %1658, 33554431
  %1713 = or i1 %1712, %1711
  br i1 %1713, label %1714, label %1739

; <label>:1714                                    ; preds = %1641
  %1715 = add i32 %57, 260
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = lshr i32 %1717, 16
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = fmul fast float %1682, %1719
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = mul nuw nsw i32 %1660, %1661
  %1723 = uitofp i32 %1722 to float
  %1724 = fmul fast float %1721, %1723
  %1725 = call float @dx.op.unary.f32(i32 27, float %1724)  ; Round_ni(value)
  %1726 = fptoui float %1725 to i32
  %1727 = urem i32 %1726, %1660
  %1728 = udiv i32 %1726, %1661
  %1729 = call float @dx.op.unary.f32(i32 22, float %1709)  ; Frc(value)
  %1730 = call float @dx.op.unary.f32(i32 22, float %1710)  ; Frc(value)
  %1731 = uitofp i32 %1727 to float
  %1732 = uitofp i32 %1728 to float
  %1733 = fadd fast float %1729, %1731
  %1734 = fadd fast float %1730, %1732
  %1735 = uitofp i32 %1660 to float
  %1736 = uitofp i32 %1661 to float
  %1737 = fdiv fast float %1733, %1735
  %1738 = fdiv fast float %1734, %1736
  br label %1739

; <label>:1739                                    ; preds = %1714, %1641
  %1740 = phi float [ %1737, %1714 ], [ %1709, %1641 ]
  %1741 = phi float [ %1738, %1714 ], [ %1710, %1641 ]
  %1742 = and i32 %1635, 256
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1790, label %1744

; <label>:1744                                    ; preds = %1739
  %1745 = add i32 %57, 496
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = add i32 %1747, 0
  %1749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1749, %dx.types.Handle %108, float %1740, float %1741, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = add i32 %57, 132
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = shl i32 %1754, 4
  %1756 = and i32 %1755, 32752
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = lshr i32 %1754, 7
  %1759 = and i32 %1758, 32752
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = fsub fast float 1.000000e+00, %585
  %1762 = call float @dx.op.binary.f32(i32 35, float %1761, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1763 = bitcast float %585 to i32
  %1764 = sitofp i32 %1763 to float
  %1765 = fadd fast float %1764, 0xC1CFBF8940000000
  %1766 = fmul fast float %1760, %1765
  %1767 = fadd fast float %1766, 0x41CFBF8940000000
  %1768 = fptosi float %1767 to i32
  %1769 = bitcast i32 %1768 to float
  %1770 = bitcast float %1762 to i32
  %1771 = sitofp i32 %1770 to float
  %1772 = fadd fast float %1771, 0xC1CFBF8940000000
  %1773 = fmul fast float %1772, %1760
  %1774 = fadd fast float %1773, 0x41CFBF8940000000
  %1775 = fptosi float %1774 to i32
  %1776 = bitcast i32 %1775 to float
  %1777 = fmul fast float %1769, %1757
  %1778 = fmul fast float %1776, %1757
  %1779 = fsub fast float %1762, %1777
  %1780 = fadd fast float %1778, %1762
  %1781 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1782 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1783 = fsub fast float %1751, %1781
  %1784 = fsub fast float %1782, %1781
  %1785 = bitcast float %1784 to i32
  %1786 = sub nsw i32 2129859010, %1785
  %1787 = bitcast i32 %1786 to float
  %1788 = fmul fast float %1787, %1783
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  br label %1790

; <label>:1790                                    ; preds = %1744, %1739
  %1791 = phi float [ %1789, %1744 ], [ %585, %1739 ]
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 128
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1812, label %1796

; <label>:1796                                    ; preds = %1790
  %1797 = add i32 %57, 480
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = add i32 %1799, 0
  %1801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1801, %dx.types.Handle %108, float %1740, float %1741, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 524288
  %1807 = icmp ne i32 %1806, 0
  %1808 = fcmp fast ogt float %1803, 0x3FE0101020000000
  %1809 = select i1 %1808, float 1.000000e+00, float 0.000000e+00
  %1810 = select i1 %1807, float %1809, float %1803
  %1811 = fmul fast float %1810, %1791
  br label %1812

; <label>:1812                                    ; preds = %1796, %1790
  %1813 = phi float [ %1811, %1796 ], [ %1791, %1790 ]
  %1814 = fcmp fast ult float %1813, 0x3F70101020000000
  br i1 %1814, label %2193, label %1815

; <label>:1815                                    ; preds = %1812
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 16
  %1819 = icmp eq i32 %1818, 0
  br i1 %1819, label %1995, label %1820

; <label>:1820                                    ; preds = %1815
  %1821 = add i32 %57, 432
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = add i32 %1823, 0
  %1825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1825, %dx.types.Handle %107, float %1740, float %1741, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.ResRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.ResRet.f32 %1826, 2
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 512
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1842, label %1834

; <label>:1834                                    ; preds = %1820
  %1835 = add i32 %57, 512
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = add i32 %1837, 0
  %1839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1839, %dx.types.Handle %108, float %1740, float %1741, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  br label %1842

; <label>:1842                                    ; preds = %1834, %1820
  %1843 = phi float [ %1841, %1834 ], [ 1.000000e+00, %1820 ]
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 33554432
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1942, label %1848

; <label>:1848                                    ; preds = %1842
  %1849 = add i32 %57, 256
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = and i32 %1851, 65535
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = lshr i32 %1851, 16
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = add i32 %57, 260
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 65535
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 255
  %1864 = uitofp i32 %1863 to float
  %1865 = fmul fast float %1864, 0x3F70101020000000
  %1866 = lshr i32 %1862, 8
  %1867 = and i32 %1866, 255
  %1868 = uitofp i32 %1867 to float
  %1869 = fmul fast float %1868, 0x3F70101020000000
  %1870 = lshr i32 %1862, 16
  %1871 = and i32 %1870, 255
  %1872 = uitofp i32 %1871 to float
  %1873 = fmul fast float %1872, 0x3F70101020000000
  %1874 = add i32 %57, 252
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = and i32 %1876, 255
  %1878 = uitofp i32 %1877 to float
  %1879 = fmul fast float %1878, 0x3F70101020000000
  %1880 = lshr i32 %1876, 8
  %1881 = and i32 %1880, 255
  %1882 = uitofp i32 %1881 to float
  %1883 = fmul fast float %1882, 0x3F70101020000000
  %1884 = lshr i32 %1876, 16
  %1885 = and i32 %1884, 255
  %1886 = uitofp i32 %1885 to float
  %1887 = fmul fast float %1886, 0x3F70101020000000
  %1888 = bitcast float %1827 to i32
  %1889 = ashr i32 %1888, 1
  %1890 = sub nsw i32 1597463174, %1889
  %1891 = bitcast i32 %1890 to float
  %1892 = fmul fast float %1827, 5.000000e-01
  %1893 = fmul fast float %1891, %1891
  %1894 = fmul fast float %1893, %1892
  %1895 = fsub fast float 1.500000e+00, %1894
  %1896 = fmul fast float %1891, %1827
  %1897 = fmul fast float %1896, %1895
  %1898 = bitcast float %1828 to i32
  %1899 = ashr i32 %1898, 1
  %1900 = sub nsw i32 1597463174, %1899
  %1901 = bitcast i32 %1900 to float
  %1902 = fmul fast float %1828, 5.000000e-01
  %1903 = fmul fast float %1901, %1901
  %1904 = fmul fast float %1903, %1902
  %1905 = fsub fast float 1.500000e+00, %1904
  %1906 = fmul fast float %1901, %1828
  %1907 = fmul fast float %1906, %1905
  %1908 = bitcast float %1829 to i32
  %1909 = ashr i32 %1908, 1
  %1910 = sub nsw i32 1597463174, %1909
  %1911 = bitcast i32 %1910 to float
  %1912 = fmul fast float %1829, 5.000000e-01
  %1913 = fmul fast float %1911, %1911
  %1914 = fmul fast float %1913, %1912
  %1915 = fsub fast float 1.500000e+00, %1914
  %1916 = fmul fast float %1911, %1829
  %1917 = fmul fast float %1916, %1915
  %1918 = fsub fast float %1897, %1879
  %1919 = fsub fast float %1907, %1883
  %1920 = fsub fast float %1917, %1887
  %1921 = fmul fast float %1918, %1853
  %1922 = fmul fast float %1919, %1855
  %1923 = fmul fast float %1920, %1860
  %1924 = fadd fast float %1921, %1865
  %1925 = fadd fast float %1922, %1869
  %1926 = fadd fast float %1923, %1873
  %1927 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1928 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1929 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1930 = fmul fast float %1927, %1927
  %1931 = fmul fast float %1928, %1928
  %1932 = fmul fast float %1929, %1929
  %1933 = fsub fast float %1930, %1827
  %1934 = fsub fast float %1931, %1828
  %1935 = fsub fast float %1932, %1829
  %1936 = fmul fast float %1933, %1843
  %1937 = fmul fast float %1934, %1843
  %1938 = fmul fast float %1935, %1843
  %1939 = fadd fast float %1936, %1827
  %1940 = fadd fast float %1937, %1828
  %1941 = fadd fast float %1938, %1829
  br label %1995

; <label>:1942                                    ; preds = %1842
  %1943 = and i32 %1845, 134217728
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %1979, label %1945

; <label>:1945                                    ; preds = %1942
  %1946 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %1947 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %1948 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %1949 = fadd fast float %1946, -5.000000e-01
  %1950 = fadd fast float %1947, -5.000000e-01
  %1951 = fadd fast float %1948, -5.000000e-01
  %1952 = fmul fast float %1949, %1843
  %1953 = fmul fast float %1950, %1843
  %1954 = fmul fast float %1951, %1843
  %1955 = fadd fast float %1952, 5.000000e-01
  %1956 = fadd fast float %1953, 5.000000e-01
  %1957 = fadd fast float %1954, 5.000000e-01
  %1958 = call float @dx.op.unary.f32(i32 24, float %1827)  ; Sqrt(value)
  %1959 = call float @dx.op.unary.f32(i32 24, float %1828)  ; Sqrt(value)
  %1960 = call float @dx.op.unary.f32(i32 24, float %1829)  ; Sqrt(value)
  %1961 = fmul fast float %1955, 2.000000e+00
  %1962 = fsub fast float 1.000000e+00, %1961
  %1963 = fmul fast float %1962, %1958
  %1964 = fadd fast float %1963, %1961
  %1965 = fmul fast float %1964, %1958
  %1966 = fmul fast float %1956, 2.000000e+00
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = fmul fast float %1967, %1959
  %1969 = fadd fast float %1968, %1966
  %1970 = fmul fast float %1969, %1959
  %1971 = fmul fast float %1957, 2.000000e+00
  %1972 = fsub fast float 1.000000e+00, %1971
  %1973 = fmul fast float %1972, %1960
  %1974 = fadd fast float %1973, %1971
  %1975 = fmul fast float %1974, %1960
  %1976 = fmul fast float %1965, %1965
  %1977 = fmul fast float %1970, %1970
  %1978 = fmul fast float %1975, %1975
  br label %1995

; <label>:1979                                    ; preds = %1942
  %1980 = fmul fast float %428, %428
  %1981 = fmul fast float %429, %429
  %1982 = fmul fast float %430, %430
  %1983 = fadd fast float %1980, -1.000000e+00
  %1984 = fadd fast float %1981, -1.000000e+00
  %1985 = fadd fast float %1982, -1.000000e+00
  %1986 = fmul fast float %1843, %1983
  %1987 = fmul fast float %1843, %1984
  %1988 = fmul fast float %1843, %1985
  %1989 = fadd fast float %1986, 1.000000e+00
  %1990 = fadd fast float %1987, 1.000000e+00
  %1991 = fadd fast float %1988, 1.000000e+00
  %1992 = fmul fast float %1989, %1827
  %1993 = fmul fast float %1990, %1828
  %1994 = fmul fast float %1991, %1829
  br label %1995

; <label>:1995                                    ; preds = %1979, %1945, %1848, %1815
  %1996 = phi float [ %1939, %1848 ], [ %1976, %1945 ], [ %1992, %1979 ], [ 1.000000e+00, %1815 ]
  %1997 = phi float [ %1940, %1848 ], [ %1977, %1945 ], [ %1993, %1979 ], [ 1.000000e+00, %1815 ]
  %1998 = phi float [ %1941, %1848 ], [ %1978, %1945 ], [ %1994, %1979 ], [ 1.000000e+00, %1815 ]
  %1999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.i32 %1999, 1
  %2001 = and i32 %2000, 1
  %2002 = icmp ne i32 %2001, 0
  %2003 = add i32 %57, 356
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = and i32 %2005, 32
  %2007 = icmp ne i32 %2006, 0
  %2008 = and i1 %2002, %2007
  %2009 = select i1 %2008, float 1.000000e+00, float %1996
  %2010 = select i1 %2008, float 0x3FD3333340000000, float %1997
  %2011 = select i1 %2008, float 0x3FD3333340000000, float %1998
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 32
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2088, label %2016

; <label>:2016                                    ; preds = %1995
  %2017 = add i32 %57, 124
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %57, 448
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2024, %dx.types.Handle %107, float %1740, float %1741, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.ResRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2029 = extractvalue %dx.types.ResRet.f32 %2025, 3
  %2030 = and i32 %2019, 255
  %2031 = uitofp i32 %2030 to float
  %2032 = lshr i32 %2019, 8
  %2033 = and i32 %2032, 255
  %2034 = uitofp i32 %2033 to float
  %2035 = lshr i32 %2019, 16
  %2036 = and i32 %2035, 255
  %2037 = uitofp i32 %2036 to float
  %2038 = fmul fast float %2037, 0x3F70101000000000
  %2039 = fmul fast float %2026, %2031
  %2040 = fadd fast float %2039, %2034
  %2041 = fmul fast float %2040, 0x3F70101000000000
  %2042 = fadd fast float %2027, -5.000000e-01
  %2043 = fadd fast float %2029, -5.000000e-01
  %2044 = fmul fast float %2042, %2038
  %2045 = fmul fast float %2043, %2038
  %2046 = fadd fast float %2044, 5.000000e-01
  %2047 = fadd fast float %2045, 5.000000e-01
  %2048 = fmul fast float %2046, 2.000000e+00
  %2049 = fadd fast float %2048, -1.000000e+00
  %2050 = fmul fast float %2047, 2.000000e+00
  %2051 = fadd fast float %2050, -1.000000e+00
  %2052 = fadd fast float %2049, %2051
  %2053 = fmul fast float %2052, 5.000000e-01
  %2054 = fsub fast float %2049, %2051
  %2055 = fmul fast float %2054, 5.000000e-01
  %2056 = call float @dx.op.unary.f32(i32 6, float %2053)  ; FAbs(value)
  %2057 = fsub fast float 1.000000e+00, %2056
  %2058 = call float @dx.op.unary.f32(i32 6, float %2055)  ; FAbs(value)
  %2059 = fsub fast float %2057, %2058
  %2060 = call float @dx.op.dot3.f32(i32 55, float %2053, float %2055, float %2059, float %2053, float %2055, float %2059)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = call float @dx.op.unary.f32(i32 25, float %2060)  ; Rsqrt(value)
  %2062 = fmul fast float %2053, %2061
  %2063 = fmul fast float %2055, %2061
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 67108864
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2084, label %2068

; <label>:2068                                    ; preds = %2016
  %2069 = add i32 %57, 312
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 65535
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 65535
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = lshr i32 %2071, 16
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = fsub fast float %2041, %2079
  %2081 = fmul fast float %2080, %2073
  %2082 = fadd fast float %2081, %2077
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  br label %2084

; <label>:2084                                    ; preds = %2068, %2016
  %2085 = phi float [ %2083, %2068 ], [ %2041, %2016 ]
  %2086 = call float @dx.op.dot2.f32(i32 54, float %2062, float %2063, float %1644, float %1645)  ; Dot2(ax,ay,bx,by)
  %2087 = call float @dx.op.dot2.f32(i32 54, float %2062, float %2063, float %1646, float %1647)  ; Dot2(ax,ay,bx,by)
  br label %2088

; <label>:2088                                    ; preds = %2084, %1995
  %2089 = phi float [ %2085, %2084 ], [ 0x3FD6666660000000, %1995 ]
  %2090 = phi float [ %2086, %2084 ], [ 0.000000e+00, %1995 ]
  %2091 = phi float [ %2087, %2084 ], [ 0.000000e+00, %1995 ]
  %2092 = phi float [ %2028, %2084 ], [ 1.000000e+00, %1995 ]
  %2093 = add i32 %57, 128
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 3
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2100, label %2117

; <label>:2100                                    ; preds = %2088
  %2101 = lshr i32 %2095, 8
  %2102 = and i32 %2101, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = call float @dx.op.dot3.f32(i32 55, float %2009, float %2010, float %2011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = fmul fast float %2103, %2104
  %2106 = and i32 %2095, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fadd fast float %2105, %2107
  %2109 = fmul fast float %2108, 0x3F70101020000000
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2111 = and i32 %2097, 16
  %2112 = icmp ne i32 %2111, 0
  %2113 = select i1 %2112, float %1813, float 0.000000e+00
  %2114 = fsub fast float %2110, %1631
  %2115 = fmul fast float %2113, %2114
  %2116 = fadd fast float %2115, %1631
  br label %2117

; <label>:2117                                    ; preds = %2100, %2088
  %2118 = phi float [ %1631, %2088 ], [ %2116, %2100 ]
  %2119 = and i32 %2097, 12
  %2120 = icmp eq i32 %2119, 12
  br i1 %2120, label %2193, label %2121

; <label>:2121                                    ; preds = %2117
  %2122 = and i32 %2097, 2097184
  %2123 = icmp eq i32 %2122, 2097184
  %2124 = select i1 %2123, float %1813, float 0.000000e+00
  %2125 = and i32 %2097, 4194336
  %2126 = icmp eq i32 %2125, 4194336
  %2127 = select i1 %2126, float %1813, float 0.000000e+00
  %2128 = and i32 %2097, 8388640
  %2129 = icmp eq i32 %2128, 8388640
  %2130 = select i1 %2129, float %1813, float 0.000000e+00
  %2131 = icmp eq i32 %2119, 0
  br i1 %2131, label %2132, label %2145

; <label>:2132                                    ; preds = %2121
  %2133 = fsub fast float %2090, %1627
  %2134 = fsub fast float %2091, %1628
  %2135 = fmul fast float %2124, %2133
  %2136 = fmul fast float %2124, %2134
  %2137 = fadd fast float %2135, %1627
  %2138 = fadd fast float %2136, %1628
  %2139 = fsub fast float %2092, %1630
  %2140 = fmul fast float %2127, %2139
  %2141 = fadd fast float %2140, %1630
  %2142 = fsub fast float %2089, %1629
  %2143 = fmul fast float %2130, %2142
  %2144 = fadd fast float %2143, %1629
  br label %2193

; <label>:2145                                    ; preds = %2121
  %2146 = icmp eq i32 %2119, 4
  br i1 %2146, label %2147, label %2179

; <label>:2147                                    ; preds = %2145
  %2148 = fmul fast float %2124, %2090
  %2149 = fmul fast float %2124, %2091
  %2150 = fadd fast float %2148, %1627
  %2151 = fadd fast float %2149, %1628
  %2152 = call float @dx.op.binary.f32(i32 36, float %1630, float %2092)  ; FMin(a,b)
  %2153 = fsub fast float %2152, %1630
  %2154 = fmul fast float %2153, %2127
  %2155 = fadd fast float %2154, %1630
  %2156 = fadd fast float %2089, %1629
  %2157 = fmul fast float %2156, 0x3FF337FAE0000000
  %2158 = fmul fast float %1629, %1629
  %2159 = fmul fast float %2089, %2089
  %2160 = fadd fast float %2159, %2158
  %2161 = fmul fast float %2160, 0x3FE5152B00000000
  %2162 = fmul fast float %1629, 0xBFCC1F85E0000000
  %2163 = fmul fast float %2162, %2089
  %2164 = fadd fast float %2163, 0xBFE1363700000000
  %2165 = fadd fast float %2164, %2157
  %2166 = fsub fast float %2165, %2161
  %2167 = fmul fast float %2156, 0x3FBA6F0D00000000
  %2168 = fmul fast float %2160, 0x3FD0432880000000
  %2169 = fmul fast float %1629, 0xBFEF110800000000
  %2170 = fmul fast float %2169, %2089
  %2171 = fadd fast float %2170, 1.000000e+00
  %2172 = fsub fast float %2171, %2167
  %2173 = fadd fast float %2172, %2168
  %2174 = fdiv fast float %2166, %2173
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fsub fast float %2175, %1629
  %2177 = fmul fast float %2176, %2130
  %2178 = fadd fast float %2177, %1629
  br label %2193

; <label>:2179                                    ; preds = %2145
  %2180 = icmp eq i32 %2119, 8
  br i1 %2180, label %2181, label %2193

; <label>:2181                                    ; preds = %2179
  %2182 = fmul fast float %2124, %2090
  %2183 = fmul fast float %2124, %2091
  %2184 = fadd fast float %2182, %1627
  %2185 = fadd fast float %2183, %1628
  %2186 = call float @dx.op.binary.f32(i32 36, float %1630, float %2092)  ; FMin(a,b)
  %2187 = fsub fast float %2186, %1630
  %2188 = fmul fast float %2187, %2127
  %2189 = fadd fast float %2188, %1630
  %2190 = fsub fast float %2089, %1629
  %2191 = fmul fast float %2130, %2190
  %2192 = fadd fast float %2191, %1629
  br label %2193

; <label>:2193                                    ; preds = %2181, %2179, %2147, %2132, %2117, %1812, %1632, %1626
  %2194 = phi float [ %1627, %2117 ], [ %1627, %1812 ], [ %1627, %1626 ], [ %2184, %2181 ], [ %1627, %2179 ], [ %2150, %2147 ], [ %2137, %2132 ], [ %1627, %1632 ]
  %2195 = phi float [ %1628, %2117 ], [ %1628, %1812 ], [ %1628, %1626 ], [ %2185, %2181 ], [ %1628, %2179 ], [ %2151, %2147 ], [ %2138, %2132 ], [ %1628, %1632 ]
  %2196 = phi float [ %1629, %2117 ], [ %1629, %1812 ], [ %1629, %1626 ], [ %2192, %2181 ], [ %1629, %2179 ], [ %2178, %2147 ], [ %2144, %2132 ], [ %1629, %1632 ]
  %2197 = phi float [ %1630, %2117 ], [ %1630, %1812 ], [ %1630, %1626 ], [ %2189, %2181 ], [ %1630, %2179 ], [ %2155, %2147 ], [ %2141, %2132 ], [ %1630, %1632 ]
  %2198 = phi float [ %2118, %2117 ], [ %1631, %1812 ], [ %1631, %1626 ], [ %2118, %2181 ], [ %2118, %2179 ], [ %2118, %2147 ], [ %2118, %2132 ], [ %1631, %1632 ]
  br i1 %535, label %2760, label %2199

; <label>:2199                                    ; preds = %2193
  %2200 = add i32 %57, 72
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %57, 76
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = or i32 %2205, %2202
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2760, label %2208

; <label>:2208                                    ; preds = %2199
  %2209 = and i32 %2202, 262144
  %2210 = icmp ne i32 %2209, 0
  %2211 = select i1 %2210, float %65, float 1.000000e+00
  %2212 = select i1 %2210, float %66, float 0.000000e+00
  %2213 = select i1 %2210, float %67, float 0.000000e+00
  %2214 = select i1 %2210, float %68, float 1.000000e+00
  %2215 = select i1 %2210, float %69, float %93
  %2216 = select i1 %2210, float %70, float %94
  %2217 = add i32 %57, 332
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 16
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = fmul fast float %2221, 0x3F50624DE0000000
  %2223 = add i32 %57, 136
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = lshr i32 %2225, 16
  %2227 = and i32 %2226, 255
  %2228 = lshr i32 %2225, 24
  %2229 = add i32 %57, 340
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 65535
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = lshr i32 %2231, 16
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = add i32 %57, 80
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = lshr i32 %2238, 22
  %2240 = shl nuw nsw i32 %2239, 5
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = shl i32 %2238, 4
  %2243 = and i32 %2242, 32752
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = lshr i32 %2238, 7
  %2246 = and i32 %2245, 32752
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 3
  %2250 = fmul fast float %2249, 1.000000e+03
  %2251 = fmul fast float %2250, %524
  %2252 = call float @dx.op.unary.f32(i32 22, float %2251)  ; Frc(value)
  %2253 = fadd fast float %2252, %512
  %2254 = fmul fast float %2250, %526
  %2255 = call float @dx.op.unary.f32(i32 22, float %2254)  ; Frc(value)
  %2256 = fadd fast float %2255, %513
  %2257 = fmul fast float %2222, %2250
  %2258 = call float @dx.op.unary.f32(i32 22, float %2257)  ; Frc(value)
  %2259 = fmul fast float %2258, 0x401921FB60000000
  %2260 = fadd fast float %2259, %2241
  %2261 = call float @dx.op.unary.f32(i32 13, float %2260)  ; Sin(value)
  %2262 = call float @dx.op.unary.f32(i32 12, float %2260)  ; Cos(value)
  %2263 = fsub fast float -0.000000e+00, %2261
  %2264 = fadd fast float %2215, -5.000000e-01
  %2265 = fadd fast float %2216, -5.000000e-01
  %2266 = fmul fast float %2233, %2264
  %2267 = fmul fast float %2235, %2265
  %2268 = fadd fast float %2266, 5.000000e-01
  %2269 = fadd fast float %2267, 5.000000e-01
  %2270 = fmul fast float %2244, %2268
  %2271 = fmul fast float %2247, %2269
  %2272 = fmul fast float %2262, %2270
  %2273 = call float @dx.op.tertiary.f32(i32 46, float %2263, float %2271, float %2272)  ; FMad(a,b,c)
  %2274 = fmul fast float %2261, %2270
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2262, float %2271, float %2274)  ; FMad(a,b,c)
  %2276 = fadd fast float %2253, %2273
  %2277 = fadd fast float %2256, %2275
  %2278 = icmp ugt i32 %2227, 1
  %2279 = icmp ugt i32 %2225, 33554431
  %2280 = or i1 %2279, %2278
  br i1 %2280, label %2281, label %2306

; <label>:2281                                    ; preds = %2208
  %2282 = add i32 %57, 276
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 16
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = fmul fast float %2249, %2286
  %2288 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2289 = mul nuw nsw i32 %2227, %2228
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2288, %2290
  %2292 = call float @dx.op.unary.f32(i32 27, float %2291)  ; Round_ni(value)
  %2293 = fptoui float %2292 to i32
  %2294 = urem i32 %2293, %2227
  %2295 = udiv i32 %2293, %2228
  %2296 = call float @dx.op.unary.f32(i32 22, float %2276)  ; Frc(value)
  %2297 = call float @dx.op.unary.f32(i32 22, float %2277)  ; Frc(value)
  %2298 = uitofp i32 %2294 to float
  %2299 = uitofp i32 %2295 to float
  %2300 = fadd fast float %2296, %2298
  %2301 = fadd fast float %2297, %2299
  %2302 = uitofp i32 %2227 to float
  %2303 = uitofp i32 %2228 to float
  %2304 = fdiv fast float %2300, %2302
  %2305 = fdiv fast float %2301, %2303
  br label %2306

; <label>:2306                                    ; preds = %2281, %2208
  %2307 = phi float [ %2304, %2281 ], [ %2276, %2208 ]
  %2308 = phi float [ %2305, %2281 ], [ %2277, %2208 ]
  %2309 = and i32 %2202, 256
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2357, label %2311

; <label>:2311                                    ; preds = %2306
  %2312 = add i32 %57, 500
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = add i32 %2314, 0
  %2316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2316, %dx.types.Handle %108, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = add i32 %57, 148
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = shl i32 %2321, 4
  %2323 = and i32 %2322, 32752
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = lshr i32 %2321, 7
  %2326 = and i32 %2325, 32752
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = fsub fast float 1.000000e+00, %584
  %2329 = call float @dx.op.binary.f32(i32 35, float %2328, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2330 = bitcast float %584 to i32
  %2331 = sitofp i32 %2330 to float
  %2332 = fadd fast float %2331, 0xC1CFBF8940000000
  %2333 = fmul fast float %2327, %2332
  %2334 = fadd fast float %2333, 0x41CFBF8940000000
  %2335 = fptosi float %2334 to i32
  %2336 = bitcast i32 %2335 to float
  %2337 = bitcast float %2329 to i32
  %2338 = sitofp i32 %2337 to float
  %2339 = fadd fast float %2338, 0xC1CFBF8940000000
  %2340 = fmul fast float %2339, %2327
  %2341 = fadd fast float %2340, 0x41CFBF8940000000
  %2342 = fptosi float %2341 to i32
  %2343 = bitcast i32 %2342 to float
  %2344 = fmul fast float %2336, %2324
  %2345 = fmul fast float %2343, %2324
  %2346 = fsub fast float %2329, %2344
  %2347 = fadd fast float %2345, %2329
  %2348 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2349 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2350 = fsub fast float %2318, %2348
  %2351 = fsub fast float %2349, %2348
  %2352 = bitcast float %2351 to i32
  %2353 = sub nsw i32 2129859010, %2352
  %2354 = bitcast i32 %2353 to float
  %2355 = fmul fast float %2354, %2350
  %2356 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  br label %2357

; <label>:2357                                    ; preds = %2311, %2306
  %2358 = phi float [ %2356, %2311 ], [ %584, %2306 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 128
  %2362 = icmp eq i32 %2361, 0
  br i1 %2362, label %2379, label %2363

; <label>:2363                                    ; preds = %2357
  %2364 = add i32 %57, 484
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = add i32 %2366, 0
  %2368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2367, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2368, %dx.types.Handle %108, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 524288
  %2374 = icmp ne i32 %2373, 0
  %2375 = fcmp fast ogt float %2370, 0x3FE0101020000000
  %2376 = select i1 %2375, float 1.000000e+00, float 0.000000e+00
  %2377 = select i1 %2374, float %2376, float %2370
  %2378 = fmul fast float %2377, %2358
  br label %2379

; <label>:2379                                    ; preds = %2363, %2357
  %2380 = phi float [ %2378, %2363 ], [ %2358, %2357 ]
  %2381 = fcmp fast ult float %2380, 0x3F70101020000000
  br i1 %2381, label %2760, label %2382

; <label>:2382                                    ; preds = %2379
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 16
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2562, label %2387

; <label>:2387                                    ; preds = %2382
  %2388 = add i32 %57, 436
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %2390, 0
  %2392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2392, %dx.types.Handle %107, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.ResRet.f32 %2393, 1
  %2396 = extractvalue %dx.types.ResRet.f32 %2393, 2
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 512
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2409, label %2401

; <label>:2401                                    ; preds = %2387
  %2402 = add i32 %57, 516
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = add i32 %2404, 0
  %2406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2406, %dx.types.Handle %108, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  br label %2409

; <label>:2409                                    ; preds = %2401, %2387
  %2410 = phi float [ %2408, %2401 ], [ 1.000000e+00, %2387 ]
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 33554432
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2509, label %2415

; <label>:2415                                    ; preds = %2409
  %2416 = add i32 %57, 272
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 65535
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = lshr i32 %2418, 16
  %2422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2421)  ; LegacyF16ToF32(value)
  %2423 = add i32 %57, 276
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 65535
  %2427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2426)  ; LegacyF16ToF32(value)
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101020000000
  %2433 = lshr i32 %2429, 8
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2435, 0x3F70101020000000
  %2437 = lshr i32 %2429, 16
  %2438 = and i32 %2437, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101020000000
  %2441 = add i32 %57, 268
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3F70101020000000
  %2447 = lshr i32 %2443, 8
  %2448 = and i32 %2447, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = fmul fast float %2449, 0x3F70101020000000
  %2451 = lshr i32 %2443, 16
  %2452 = and i32 %2451, 255
  %2453 = uitofp i32 %2452 to float
  %2454 = fmul fast float %2453, 0x3F70101020000000
  %2455 = bitcast float %2394 to i32
  %2456 = ashr i32 %2455, 1
  %2457 = sub nsw i32 1597463174, %2456
  %2458 = bitcast i32 %2457 to float
  %2459 = fmul fast float %2394, 5.000000e-01
  %2460 = fmul fast float %2458, %2458
  %2461 = fmul fast float %2460, %2459
  %2462 = fsub fast float 1.500000e+00, %2461
  %2463 = fmul fast float %2458, %2394
  %2464 = fmul fast float %2463, %2462
  %2465 = bitcast float %2395 to i32
  %2466 = ashr i32 %2465, 1
  %2467 = sub nsw i32 1597463174, %2466
  %2468 = bitcast i32 %2467 to float
  %2469 = fmul fast float %2395, 5.000000e-01
  %2470 = fmul fast float %2468, %2468
  %2471 = fmul fast float %2470, %2469
  %2472 = fsub fast float 1.500000e+00, %2471
  %2473 = fmul fast float %2468, %2395
  %2474 = fmul fast float %2473, %2472
  %2475 = bitcast float %2396 to i32
  %2476 = ashr i32 %2475, 1
  %2477 = sub nsw i32 1597463174, %2476
  %2478 = bitcast i32 %2477 to float
  %2479 = fmul fast float %2396, 5.000000e-01
  %2480 = fmul fast float %2478, %2478
  %2481 = fmul fast float %2480, %2479
  %2482 = fsub fast float 1.500000e+00, %2481
  %2483 = fmul fast float %2478, %2396
  %2484 = fmul fast float %2483, %2482
  %2485 = fsub fast float %2464, %2446
  %2486 = fsub fast float %2474, %2450
  %2487 = fsub fast float %2484, %2454
  %2488 = fmul fast float %2485, %2420
  %2489 = fmul fast float %2486, %2422
  %2490 = fmul fast float %2487, %2427
  %2491 = fadd fast float %2488, %2432
  %2492 = fadd fast float %2489, %2436
  %2493 = fadd fast float %2490, %2440
  %2494 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  %2495 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2496 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2497 = fmul fast float %2494, %2494
  %2498 = fmul fast float %2495, %2495
  %2499 = fmul fast float %2496, %2496
  %2500 = fsub fast float %2497, %2394
  %2501 = fsub fast float %2498, %2395
  %2502 = fsub fast float %2499, %2396
  %2503 = fmul fast float %2500, %2410
  %2504 = fmul fast float %2501, %2410
  %2505 = fmul fast float %2502, %2410
  %2506 = fadd fast float %2503, %2394
  %2507 = fadd fast float %2504, %2395
  %2508 = fadd fast float %2505, %2396
  br label %2562

; <label>:2509                                    ; preds = %2409
  %2510 = and i32 %2412, 134217728
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2546, label %2512

; <label>:2512                                    ; preds = %2509
  %2513 = call float @dx.op.unary.f32(i32 24, float %500)  ; Sqrt(value)
  %2514 = call float @dx.op.unary.f32(i32 24, float %501)  ; Sqrt(value)
  %2515 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %2516 = fadd fast float %2513, -5.000000e-01
  %2517 = fadd fast float %2514, -5.000000e-01
  %2518 = fadd fast float %2515, -5.000000e-01
  %2519 = fmul fast float %2516, %2410
  %2520 = fmul fast float %2517, %2410
  %2521 = fmul fast float %2518, %2410
  %2522 = fadd fast float %2519, 5.000000e-01
  %2523 = fadd fast float %2520, 5.000000e-01
  %2524 = fadd fast float %2521, 5.000000e-01
  %2525 = call float @dx.op.unary.f32(i32 24, float %2394)  ; Sqrt(value)
  %2526 = call float @dx.op.unary.f32(i32 24, float %2395)  ; Sqrt(value)
  %2527 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2528 = fmul fast float %2522, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2529, %2525
  %2531 = fadd fast float %2530, %2528
  %2532 = fmul fast float %2531, %2525
  %2533 = fmul fast float %2523, 2.000000e+00
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2526
  %2536 = fadd fast float %2535, %2533
  %2537 = fmul fast float %2536, %2526
  %2538 = fmul fast float %2524, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2527
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2527
  %2543 = fmul fast float %2532, %2532
  %2544 = fmul fast float %2537, %2537
  %2545 = fmul fast float %2542, %2542
  br label %2562

; <label>:2546                                    ; preds = %2509
  %2547 = fmul fast float %500, %500
  %2548 = fmul fast float %501, %501
  %2549 = fmul fast float %502, %502
  %2550 = fadd fast float %2547, -1.000000e+00
  %2551 = fadd fast float %2548, -1.000000e+00
  %2552 = fadd fast float %2549, -1.000000e+00
  %2553 = fmul fast float %2410, %2550
  %2554 = fmul fast float %2410, %2551
  %2555 = fmul fast float %2410, %2552
  %2556 = fadd fast float %2553, 1.000000e+00
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fmul fast float %2556, %2394
  %2560 = fmul fast float %2557, %2395
  %2561 = fmul fast float %2558, %2396
  br label %2562

; <label>:2562                                    ; preds = %2546, %2512, %2415, %2382
  %2563 = phi float [ %2506, %2415 ], [ %2543, %2512 ], [ %2559, %2546 ], [ 1.000000e+00, %2382 ]
  %2564 = phi float [ %2507, %2415 ], [ %2544, %2512 ], [ %2560, %2546 ], [ 1.000000e+00, %2382 ]
  %2565 = phi float [ %2508, %2415 ], [ %2545, %2512 ], [ %2561, %2546 ], [ 1.000000e+00, %2382 ]
  %2566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.i32 %2566, 1
  %2568 = and i32 %2567, 1
  %2569 = icmp ne i32 %2568, 0
  %2570 = add i32 %57, 356
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 32
  %2574 = icmp ne i32 %2573, 0
  %2575 = and i1 %2569, %2574
  %2576 = select i1 %2575, float 1.000000e+00, float %2563
  %2577 = select i1 %2575, float 0x3FD3333340000000, float %2564
  %2578 = select i1 %2575, float 0x3FD3333340000000, float %2565
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 32
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2655, label %2583

; <label>:2583                                    ; preds = %2562
  %2584 = add i32 %57, 140
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = add i32 %57, 452
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2589, 0
  %2591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2591, %dx.types.Handle %107, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.ResRet.f32 %2592, 2
  %2596 = extractvalue %dx.types.ResRet.f32 %2592, 3
  %2597 = and i32 %2586, 255
  %2598 = uitofp i32 %2597 to float
  %2599 = lshr i32 %2586, 8
  %2600 = and i32 %2599, 255
  %2601 = uitofp i32 %2600 to float
  %2602 = lshr i32 %2586, 16
  %2603 = and i32 %2602, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F70101000000000
  %2606 = fmul fast float %2593, %2598
  %2607 = fadd fast float %2606, %2601
  %2608 = fmul fast float %2607, 0x3F70101000000000
  %2609 = fadd fast float %2594, -5.000000e-01
  %2610 = fadd fast float %2596, -5.000000e-01
  %2611 = fmul fast float %2609, %2605
  %2612 = fmul fast float %2610, %2605
  %2613 = fadd fast float %2611, 5.000000e-01
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = fmul fast float %2613, 2.000000e+00
  %2616 = fadd fast float %2615, -1.000000e+00
  %2617 = fmul fast float %2614, 2.000000e+00
  %2618 = fadd fast float %2617, -1.000000e+00
  %2619 = fadd fast float %2616, %2618
  %2620 = fmul fast float %2619, 5.000000e-01
  %2621 = fsub fast float %2616, %2618
  %2622 = fmul fast float %2621, 5.000000e-01
  %2623 = call float @dx.op.unary.f32(i32 6, float %2620)  ; FAbs(value)
  %2624 = fsub fast float 1.000000e+00, %2623
  %2625 = call float @dx.op.unary.f32(i32 6, float %2622)  ; FAbs(value)
  %2626 = fsub fast float %2624, %2625
  %2627 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2622, float %2626, float %2620, float %2622, float %2626)  ; Dot3(ax,ay,az,bx,by,bz)
  %2628 = call float @dx.op.unary.f32(i32 25, float %2627)  ; Rsqrt(value)
  %2629 = fmul fast float %2620, %2628
  %2630 = fmul fast float %2622, %2628
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 67108864
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2651, label %2635

; <label>:2635                                    ; preds = %2583
  %2636 = add i32 %57, 328
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 65535
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 65535
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = lshr i32 %2638, 16
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = fsub fast float %2608, %2646
  %2648 = fmul fast float %2647, %2640
  %2649 = fadd fast float %2648, %2644
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  br label %2651

; <label>:2651                                    ; preds = %2635, %2583
  %2652 = phi float [ %2650, %2635 ], [ %2608, %2583 ]
  %2653 = call float @dx.op.dot2.f32(i32 54, float %2629, float %2630, float %2211, float %2212)  ; Dot2(ax,ay,bx,by)
  %2654 = call float @dx.op.dot2.f32(i32 54, float %2629, float %2630, float %2213, float %2214)  ; Dot2(ax,ay,bx,by)
  br label %2655

; <label>:2655                                    ; preds = %2651, %2562
  %2656 = phi float [ %2652, %2651 ], [ 0x3FD6666660000000, %2562 ]
  %2657 = phi float [ %2653, %2651 ], [ 0.000000e+00, %2562 ]
  %2658 = phi float [ %2654, %2651 ], [ 0.000000e+00, %2562 ]
  %2659 = phi float [ %2595, %2651 ], [ 1.000000e+00, %2562 ]
  %2660 = add i32 %57, 144
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 3
  %2666 = icmp eq i32 %2665, 0
  br i1 %2666, label %2667, label %2684

; <label>:2667                                    ; preds = %2655
  %2668 = lshr i32 %2662, 8
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = call float @dx.op.dot3.f32(i32 55, float %2576, float %2577, float %2578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2672 = fmul fast float %2670, %2671
  %2673 = and i32 %2662, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fadd fast float %2672, %2674
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2678 = and i32 %2664, 16
  %2679 = icmp ne i32 %2678, 0
  %2680 = select i1 %2679, float %2380, float 0.000000e+00
  %2681 = fsub fast float %2677, %2198
  %2682 = fmul fast float %2680, %2681
  %2683 = fadd fast float %2682, %2198
  br label %2684

; <label>:2684                                    ; preds = %2667, %2655
  %2685 = phi float [ %2198, %2655 ], [ %2683, %2667 ]
  %2686 = and i32 %2664, 12
  %2687 = icmp eq i32 %2686, 12
  br i1 %2687, label %2760, label %2688

; <label>:2688                                    ; preds = %2684
  %2689 = and i32 %2664, 2097184
  %2690 = icmp eq i32 %2689, 2097184
  %2691 = select i1 %2690, float %2380, float 0.000000e+00
  %2692 = and i32 %2664, 4194336
  %2693 = icmp eq i32 %2692, 4194336
  %2694 = select i1 %2693, float %2380, float 0.000000e+00
  %2695 = and i32 %2664, 8388640
  %2696 = icmp eq i32 %2695, 8388640
  %2697 = select i1 %2696, float %2380, float 0.000000e+00
  %2698 = icmp eq i32 %2686, 0
  br i1 %2698, label %2699, label %2712

; <label>:2699                                    ; preds = %2688
  %2700 = fsub fast float %2657, %2194
  %2701 = fsub fast float %2658, %2195
  %2702 = fmul fast float %2691, %2700
  %2703 = fmul fast float %2691, %2701
  %2704 = fadd fast float %2702, %2194
  %2705 = fadd fast float %2703, %2195
  %2706 = fsub fast float %2659, %2197
  %2707 = fmul fast float %2694, %2706
  %2708 = fadd fast float %2707, %2197
  %2709 = fsub fast float %2656, %2196
  %2710 = fmul fast float %2697, %2709
  %2711 = fadd fast float %2710, %2196
  br label %2760

; <label>:2712                                    ; preds = %2688
  %2713 = icmp eq i32 %2686, 4
  br i1 %2713, label %2714, label %2746

; <label>:2714                                    ; preds = %2712
  %2715 = fmul fast float %2691, %2657
  %2716 = fmul fast float %2691, %2658
  %2717 = fadd fast float %2715, %2194
  %2718 = fadd fast float %2716, %2195
  %2719 = call float @dx.op.binary.f32(i32 36, float %2197, float %2659)  ; FMin(a,b)
  %2720 = fsub fast float %2719, %2197
  %2721 = fmul fast float %2720, %2694
  %2722 = fadd fast float %2721, %2197
  %2723 = fadd fast float %2656, %2196
  %2724 = fmul fast float %2723, 0x3FF337FAE0000000
  %2725 = fmul fast float %2196, %2196
  %2726 = fmul fast float %2656, %2656
  %2727 = fadd fast float %2726, %2725
  %2728 = fmul fast float %2727, 0x3FE5152B00000000
  %2729 = fmul fast float %2196, 0xBFCC1F85E0000000
  %2730 = fmul fast float %2729, %2656
  %2731 = fadd fast float %2730, 0xBFE1363700000000
  %2732 = fadd fast float %2731, %2724
  %2733 = fsub fast float %2732, %2728
  %2734 = fmul fast float %2723, 0x3FBA6F0D00000000
  %2735 = fmul fast float %2727, 0x3FD0432880000000
  %2736 = fmul fast float %2196, 0xBFEF110800000000
  %2737 = fmul fast float %2736, %2656
  %2738 = fadd fast float %2737, 1.000000e+00
  %2739 = fsub fast float %2738, %2734
  %2740 = fadd fast float %2739, %2735
  %2741 = fdiv fast float %2733, %2740
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2743 = fsub fast float %2742, %2196
  %2744 = fmul fast float %2743, %2697
  %2745 = fadd fast float %2744, %2196
  br label %2760

; <label>:2746                                    ; preds = %2712
  %2747 = icmp eq i32 %2686, 8
  br i1 %2747, label %2748, label %2760

; <label>:2748                                    ; preds = %2746
  %2749 = fmul fast float %2691, %2657
  %2750 = fmul fast float %2691, %2658
  %2751 = fadd fast float %2749, %2194
  %2752 = fadd fast float %2750, %2195
  %2753 = call float @dx.op.binary.f32(i32 36, float %2197, float %2659)  ; FMin(a,b)
  %2754 = fsub fast float %2753, %2197
  %2755 = fmul fast float %2754, %2694
  %2756 = fadd fast float %2755, %2197
  %2757 = fsub fast float %2656, %2196
  %2758 = fmul fast float %2697, %2757
  %2759 = fadd fast float %2758, %2196
  br label %2760

; <label>:2760                                    ; preds = %2748, %2746, %2714, %2699, %2684, %2379, %2199, %2193
  %2761 = phi float [ %2194, %2684 ], [ %2194, %2379 ], [ %2194, %2193 ], [ %2194, %2199 ], [ %2704, %2699 ], [ %2717, %2714 ], [ %2194, %2746 ], [ %2751, %2748 ]
  %2762 = phi float [ %2195, %2684 ], [ %2195, %2379 ], [ %2195, %2193 ], [ %2195, %2199 ], [ %2705, %2699 ], [ %2718, %2714 ], [ %2195, %2746 ], [ %2752, %2748 ]
  %2763 = phi float [ %2196, %2684 ], [ %2196, %2379 ], [ %2196, %2193 ], [ %2196, %2199 ], [ %2711, %2699 ], [ %2745, %2714 ], [ %2196, %2746 ], [ %2759, %2748 ]
  %2764 = phi float [ %2197, %2684 ], [ %2197, %2379 ], [ %2197, %2193 ], [ %2197, %2199 ], [ %2708, %2699 ], [ %2722, %2714 ], [ %2197, %2746 ], [ %2756, %2748 ]
  %2765 = phi float [ %2685, %2684 ], [ %2198, %2379 ], [ %2198, %2193 ], [ %2198, %2199 ], [ %2685, %2699 ], [ %2685, %2714 ], [ %2685, %2746 ], [ %2685, %2748 ]
  %2766 = add i32 %57, 360
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = bitcast i32 %2768 to float
  %2770 = fcmp fast oge float %2769, 0.000000e+00
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = select i1 %2770, float %2769, float %2772
  %2774 = fadd fast float %2773, %211
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2778 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2777, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float %2776, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2779 = extractvalue %dx.types.ResRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.ResRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.ResRet.f32 %2778, 2
  %2782 = extractvalue %dx.types.ResRet.f32 %2778, 3
  %2783 = add i32 %57, 376
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.i32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.i32 %2784, 2
  %2788 = bitcast i32 %2785 to float
  %2789 = bitcast i32 %2786 to float
  %2790 = bitcast i32 %2787 to float
  %2791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2792 = extractvalue %dx.types.CBufRet.f32 %2791, 0
  %2793 = and i32 %204, 65535
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = lshr i32 %204, 16
  %2796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2795)  ; LegacyF16ToF32(value)
  %2797 = and i32 %205, 65535
  %2798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2797)  ; LegacyF16ToF32(value)
  %2799 = fmul fast float %2794, %2779
  %2800 = fmul fast float %2796, %2780
  %2801 = fmul fast float %2798, %2781
  %2802 = shl i32 %206, 4
  %2803 = and i32 %2802, 32752
  %2804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2803)  ; LegacyF16ToF32(value)
  %2805 = lshr i32 %206, 7
  %2806 = and i32 %2805, 32752
  %2807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2806)  ; LegacyF16ToF32(value)
  %2808 = lshr i32 %206, 22
  %2809 = shl nuw nsw i32 %2808, 5
  %2810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2809)  ; LegacyF16ToF32(value)
  %2811 = and i32 %207, 65535
  %2812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2811)  ; LegacyF16ToF32(value)
  %2813 = fmul fast float %2788, %2779
  %2814 = fmul fast float %2813, %2792
  %2815 = fmul fast float %2814, %2804
  %2816 = fmul fast float %2815, %2812
  %2817 = fmul fast float %2789, %2780
  %2818 = fmul fast float %2817, %2792
  %2819 = fmul fast float %2818, %2807
  %2820 = fmul fast float %2819, %2812
  %2821 = fmul fast float %2790, %2781
  %2822 = fmul fast float %2821, %2792
  %2823 = fmul fast float %2822, %2810
  %2824 = fmul fast float %2823, %2812
  %2825 = call float @dx.op.dot2.f32(i32 54, float %2761, float %2762, float %2761, float %2762)  ; Dot2(ax,ay,bx,by)
  %2826 = fmul fast float %2825, 0x3FE3333340000000
  %2827 = fsub fast float 1.000000e+00, %2826
  %2828 = call float @dx.op.dot3.f32(i32 55, float %2761, float %2762, float %2827, float %2761, float %2762, float %2827)  ; Dot3(ax,ay,az,bx,by,bz)
  %2829 = call float @dx.op.unary.f32(i32 25, float %2828)  ; Rsqrt(value)
  %2830 = fmul fast float %2829, %2761
  %2831 = fmul fast float %2829, %2762
  %2832 = fmul fast float %2827, %2829
  %2833 = fmul fast float %2832, %118
  %2834 = fmul fast float %2832, %119
  %2835 = fmul fast float %2832, %120
  %2836 = fmul fast float %2830, %86
  %2837 = fmul fast float %2830, %87
  %2838 = fmul fast float %2830, %88
  %2839 = fadd fast float %2833, %2836
  %2840 = fadd fast float %2834, %2837
  %2841 = fadd fast float %2835, %2838
  %2842 = fmul fast float %130, %2831
  %2843 = fmul fast float %131, %2831
  %2844 = fmul fast float %132, %2831
  %2845 = fadd fast float %2839, %2842
  %2846 = fadd fast float %2840, %2843
  %2847 = fadd fast float %2841, %2844
  %2848 = call float @dx.op.dot3.f32(i32 55, float %2845, float %2846, float %2847, float %2845, float %2846, float %2847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2849 = call float @dx.op.unary.f32(i32 25, float %2848)  ; Rsqrt(value)
  %2850 = fmul fast float %2845, %2849
  %2851 = fmul fast float %2846, %2849
  %2852 = fmul fast float %2847, %2849
  %2853 = icmp eq i32 %60, 65535
  br i1 %2853, label %3372, label %2854

; <label>:2854                                    ; preds = %2760
  %2855 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %2856 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %2857 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %2858 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %2859 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %2860 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %2861 = fadd fast float %2855, %61
  %2862 = fadd fast float %2856, %62
  %2863 = fadd fast float %2857, %63
  %2864 = fadd fast float %2858, %61
  %2865 = fadd fast float %2859, %62
  %2866 = fadd fast float %2860, %63
  %2867 = mul i32 %60, 48
  %2868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.ResRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.ResRet.f32 %2868, 2
  %2872 = add i32 %2867, 16
  %2873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = add i32 %2867, 32
  %2878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = extractvalue %dx.types.ResRet.f32 %2878, 3
  %2883 = bitcast float %2882 to i32
  %2884 = fmul fast float %2869, %61
  %2885 = fmul fast float %2870, %62
  %2886 = fmul fast float %2871, %63
  %2887 = fsub fast float %2884, %2874
  %2888 = fsub fast float %2885, %2875
  %2889 = fsub fast float %2886, %2876
  %2890 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  %2891 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2892 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  %2893 = fmul fast float %2890, %2879
  %2894 = fmul fast float %2891, %2880
  %2895 = fmul fast float %2892, %2881
  %2896 = fadd fast float %2879, -1.000000e+00
  %2897 = fadd fast float %2880, -1.000000e+00
  %2898 = fadd fast float %2881, -1.000000e+00
  %2899 = call float @dx.op.unary.f32(i32 27, float %2893)  ; Round_ni(value)
  %2900 = call float @dx.op.unary.f32(i32 27, float %2894)  ; Round_ni(value)
  %2901 = call float @dx.op.unary.f32(i32 27, float %2895)  ; Round_ni(value)
  %2902 = call float @dx.op.binary.f32(i32 36, float %2899, float %2896)  ; FMin(a,b)
  %2903 = call float @dx.op.binary.f32(i32 36, float %2900, float %2897)  ; FMin(a,b)
  %2904 = call float @dx.op.binary.f32(i32 36, float %2901, float %2898)  ; FMin(a,b)
  %2905 = fmul fast float %2904, %2880
  %2906 = fadd fast float %2905, %2903
  %2907 = fmul fast float %2906, %2879
  %2908 = fadd fast float %2907, %2902
  %2909 = fptosi float %2908 to i32
  %2910 = add nsw i32 %2909, %2883
  %2911 = shl nsw i32 %2910, 2
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = lshr i32 %2913, 16
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %3340, label %2916

; <label>:2916                                    ; preds = %2854
  br label %2917

; <label>:2917                                    ; preds = %3039, %2916
  %2918 = phi i32 [ %2941, %3039 ], [ %2914, %2916 ]
  %2919 = phi float [ %3040, %3039 ], [ 0.000000e+00, %2916 ]
  %2920 = phi float [ %3041, %3039 ], [ %1061, %2916 ]
  %2921 = phi float [ %3042, %3039 ], [ %2774, %2916 ]
  %2922 = phi float [ %3043, %3039 ], [ %2765, %2916 ]
  %2923 = phi float [ %3044, %3039 ], [ 0.000000e+00, %2916 ]
  %2924 = phi float [ %3045, %3039 ], [ 0.000000e+00, %2916 ]
  %2925 = phi float [ %3046, %3039 ], [ %2816, %2916 ]
  %2926 = phi float [ %3047, %3039 ], [ %2820, %2916 ]
  %2927 = phi float [ %3048, %3039 ], [ %2824, %2916 ]
  %2928 = phi float [ %3049, %3039 ], [ %2850, %2916 ]
  %2929 = phi float [ %3050, %3039 ], [ %2851, %2916 ]
  %2930 = phi float [ %3051, %3039 ], [ %2852, %2916 ]
  %2931 = phi float [ %3052, %3039 ], [ %2764, %2916 ]
  %2932 = phi float [ %3053, %3039 ], [ %2763, %2916 ]
  %2933 = phi float [ %3054, %3039 ], [ 0.000000e+00, %2916 ]
  %2934 = phi float [ %3055, %3039 ], [ 0x3FA23C0BE0000000, %2916 ]
  %2935 = phi float [ %3056, %3039 ], [ %2799, %2916 ]
  %2936 = phi float [ %3057, %3039 ], [ %2800, %2916 ]
  %2937 = phi float [ %3058, %3039 ], [ %2801, %2916 ]
  %2938 = shl nuw nsw i32 %2918, 2
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = lshr i32 %2940, 16
  %2942 = shl i32 %2940, 8
  %2943 = and i32 %2942, 16776960
  %2944 = or i32 %2943, 48
  %2945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = or i32 %2943, 64
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.i32 %2950, 1
  %2953 = or i32 %2943, 80
  %2954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 2
  %2956 = extractvalue %dx.types.ResRet.f32 %2954, 3
  %2957 = or i32 %2943, 96
  %2958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2963 = or i32 %2943, 112
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2966 = or i32 %2943, 128
  %2967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = extractvalue %dx.types.ResRet.f32 %2967, 3
  %2972 = or i32 %2943, 144
  %2973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2973, 3
  %2978 = or i32 %2943, 160
  %2979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.ResRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.ResRet.f32 %2979, 2
  %2983 = extractvalue %dx.types.ResRet.f32 %2979, 3
  %2984 = or i32 %2943, 192
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = or i32 %2943, 208
  %2988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = or i32 %2943, 248
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = extractvalue %dx.types.ResRet.f32 %2994, 3
  %2999 = call float @dx.op.dot4.f32(i32 56, float %2995, float %2996, float %2997, float %2998, float %61, float %62, float %63, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3000 = or i32 %2943, 16
  %3001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3005 = extractvalue %dx.types.ResRet.f32 %3001, 3
  %3006 = call float @dx.op.dot4.f32(i32 56, float %3002, float %3003, float %3004, float %3005, float %61, float %62, float %63, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3007 = or i32 %2943, 32
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3012 = extractvalue %dx.types.ResRet.f32 %3008, 3
  %3013 = call float @dx.op.dot4.f32(i32 56, float %3009, float %3010, float %3011, float %3012, float %61, float %62, float %63, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3014 = call float @dx.op.unary.f32(i32 27, float %2999)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 6, float %3014)  ; FAbs(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 6, float %3016)  ; FAbs(value)
  %3018 = call float @dx.op.unary.f32(i32 6, float %3013)  ; FAbs(value)
  %3019 = call float @dx.op.unary.f32(i32 27, float %3018)  ; Round_ni(value)
  %3020 = fadd fast float %3017, %3015
  %3021 = fadd fast float %3020, %3019
  %3022 = fcmp fast oeq float %3021, 0.000000e+00
  %3023 = call float @dx.op.dot4.f32(i32 56, float %2995, float %2996, float %2997, float %2998, float %2861, float %2862, float %2863, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3024 = call float @dx.op.dot4.f32(i32 56, float %3002, float %3003, float %3004, float %3005, float %2861, float %2862, float %2863, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3025 = call float @dx.op.dot4.f32(i32 56, float %2995, float %2996, float %2997, float %2998, float %2864, float %2865, float %2866, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3026 = call float @dx.op.dot4.f32(i32 56, float %3002, float %3003, float %3004, float %3005, float %2864, float %2865, float %2866, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3027 = fsub fast float %3023, %2999
  %3028 = fsub fast float %3025, %2999
  %3029 = fsub fast float %3024, %3006
  %3030 = fsub fast float %3026, %3006
  %3031 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2948, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3034 = fadd fast float %3033, %3031
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = extractvalue %dx.types.CBufRet.f32 %3032, 0
  %3037 = fcmp fast ogt float %3035, %3036
  %3038 = and i1 %3022, %3037
  br i1 %3038, label %3060, label %3039

; <label>:3039                                    ; preds = %3326, %3143, %3060, %2917
  %3040 = phi float [ %2919, %3060 ], [ %3146, %3143 ], [ %3146, %3326 ], [ %2919, %2917 ]
  %3041 = phi float [ %2920, %3060 ], [ %2920, %3143 ], [ %3301, %3326 ], [ %2920, %2917 ]
  %3042 = phi float [ %2921, %3060 ], [ %2921, %3143 ], [ %3300, %3326 ], [ %2921, %2917 ]
  %3043 = phi float [ %2922, %3060 ], [ %2922, %3143 ], [ %3298, %3326 ], [ %2922, %2917 ]
  %3044 = phi float [ %2923, %3060 ], [ %2923, %3143 ], [ %3270, %3326 ], [ %2923, %2917 ]
  %3045 = phi float [ %2924, %3060 ], [ %2924, %3143 ], [ %3268, %3326 ], [ %2924, %2917 ]
  %3046 = phi float [ %2925, %3060 ], [ %2925, %3143 ], [ %3336, %3326 ], [ %2925, %2917 ]
  %3047 = phi float [ %2926, %3060 ], [ %2926, %3143 ], [ %3337, %3326 ], [ %2926, %2917 ]
  %3048 = phi float [ %2927, %3060 ], [ %2927, %3143 ], [ %3338, %3326 ], [ %2927, %2917 ]
  %3049 = phi float [ %2928, %3060 ], [ %2928, %3143 ], [ %3249, %3326 ], [ %2928, %2917 ]
  %3050 = phi float [ %2929, %3060 ], [ %2929, %3143 ], [ %3250, %3326 ], [ %2929, %2917 ]
  %3051 = phi float [ %2930, %3060 ], [ %2930, %3143 ], [ %3251, %3326 ], [ %2930, %2917 ]
  %3052 = phi float [ %2931, %3060 ], [ %2931, %3143 ], [ %3278, %3326 ], [ %2931, %2917 ]
  %3053 = phi float [ %2932, %3060 ], [ %2932, %3143 ], [ %3275, %3326 ], [ %2932, %2917 ]
  %3054 = phi float [ %2933, %3060 ], [ %2933, %3143 ], [ %3272, %3326 ], [ %2933, %2917 ]
  %3055 = phi float [ %2934, %3060 ], [ %2934, %3143 ], [ %3266, %3326 ], [ %2934, %2917 ]
  %3056 = phi float [ %2935, %3060 ], [ %2935, %3143 ], [ %3261, %3326 ], [ %2935, %2917 ]
  %3057 = phi float [ %2936, %3060 ], [ %2936, %3143 ], [ %3262, %3326 ], [ %2936, %2917 ]
  %3058 = phi float [ %2937, %3060 ], [ %2937, %3143 ], [ %3263, %3326 ], [ %2937, %2917 ]
  %3059 = icmp eq i32 %2941, 0
  br i1 %3059, label %3339, label %2917

; <label>:3060                                    ; preds = %2917
  %3061 = extractvalue %dx.types.ResRet.f32 %2945, 3
  %3062 = extractvalue %dx.types.ResRet.f32 %2964, 3
  %3063 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %3065 = extractvalue %dx.types.ResRet.f32 %2954, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %3067 = extractvalue %dx.types.ResRet.i32 %2950, 3
  %3068 = extractvalue %dx.types.ResRet.i32 %2950, 2
  %3069 = bitcast float %3061 to i32
  %3070 = add i32 %3067, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3070, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3071, %dx.types.Handle %3072, float %2999, float %3006, float undef, float undef, i32 0, i32 0, i32 undef, float %3027, float %3029, float undef, float %3028, float %3030, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3074 = extractvalue %dx.types.ResRet.f32 %3073, 0
  %3075 = fmul fast float %3074, %3066
  %3076 = fadd fast float %3075, %3065
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3078 = fmul fast float %2999, %2959
  %3079 = call float @dx.op.tertiary.f32(i32 46, float %2960, float %3006, float %3078)  ; FMad(a,b,c)
  %3080 = fadd fast float %3079, %3064
  %3081 = fmul fast float %2999, %2961
  %3082 = call float @dx.op.tertiary.f32(i32 46, float %2962, float %3006, float %3081)  ; FMad(a,b,c)
  %3083 = fadd fast float %3082, %3063
  %3084 = fmul fast float %3027, %2959
  %3085 = call float @dx.op.tertiary.f32(i32 46, float %2960, float %3029, float %3084)  ; FMad(a,b,c)
  %3086 = fmul fast float %3027, %2961
  %3087 = call float @dx.op.tertiary.f32(i32 46, float %2962, float %3029, float %3086)  ; FMad(a,b,c)
  %3088 = fmul fast float %3028, %2959
  %3089 = call float @dx.op.tertiary.f32(i32 46, float %2960, float %3030, float %3088)  ; FMad(a,b,c)
  %3090 = fmul fast float %3028, %2961
  %3091 = call float @dx.op.tertiary.f32(i32 46, float %2962, float %3030, float %3090)  ; FMad(a,b,c)
  %3092 = add i32 %3068, 0
  %3093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3092, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3094 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3093, %dx.types.Handle %3072, float %3080, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float %3085, float %3087, float undef, float %3089, float %3091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = and i32 %3069, 1024
  %3097 = icmp ne i32 %3096, 0
  %3098 = fcmp fast ogt float %3095, 0x3FE0101020000000
  %3099 = uitofp i1 %3098 to float
  %3100 = select i1 %3097, float %3099, float %3095
  %3101 = and i32 %3069, 8192
  %3102 = icmp ne i32 %3101, 0
  %3103 = select i1 %3102, float %3062, float 1.000000e+00
  %3104 = fmul fast float %2999, 2.000000e+00
  %3105 = fadd fast float %3104, -1.000000e+00
  %3106 = call float @dx.op.unary.f32(i32 6, float %3105)  ; FAbs(value)
  %3107 = fmul fast float %3106, %2992
  %3108 = fsub fast float %3107, %2992
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = fmul fast float %3006, 2.000000e+00
  %3111 = fadd fast float %3110, -1.000000e+00
  %3112 = call float @dx.op.unary.f32(i32 6, float %3111)  ; FAbs(value)
  %3113 = fmul fast float %3112, %2993
  %3114 = fsub fast float %3113, %2993
  %3115 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3116 = fmul fast float %3018, %2955
  %3117 = fsub fast float %3116, %2955
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = fmul fast float %3077, %3103
  %3120 = fmul fast float %3119, %3074
  %3121 = fmul fast float %3120, %3109
  %3122 = fmul fast float %3121, %3100
  %3123 = fmul fast float %3122, %3115
  %3124 = fmul fast float %3123, %3118
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 1
  %3127 = extractvalue %dx.types.CBufRet.f32 %3125, 0
  %3128 = fsub fast float %3035, %3127
  %3129 = fmul fast float %3128, %3126
  %3130 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3131 = fmul fast float %3124, %2956
  %3132 = fadd fast float %3124, %2956
  %3133 = fmul fast float %3132, %2965
  %3134 = fsub fast float %3133, %2965
  %3135 = call float @dx.op.unary.f32(i32 7, float %3134)  ; Saturate(value)
  %3136 = and i32 %3069, 128
  %3137 = icmp ne i32 %3136, 0
  %3138 = select i1 %3137, float %3135, float %3131
  %3139 = fmul fast float %3138, %3130
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = fcmp fast ugt float %3139, %3141
  br i1 %3142, label %3143, label %3039

; <label>:3143                                    ; preds = %3060
  %3144 = select i1 %3102, float %3139, float 0.000000e+00
  %3145 = fadd fast float %3144, %2919
  %3146 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  br i1 %3102, label %3039, label %3147

; <label>:3147                                    ; preds = %3143
  %3148 = and i32 %3069, 4
  %3149 = and i32 %3069, 8
  %3150 = add i32 %2951, 0
  %3151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3150, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3153 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3151, %dx.types.Handle %3152, float %3080, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float %3085, float %3087, float undef, float %3089, float %3091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3154 = extractvalue %dx.types.ResRet.f32 %3153, 0
  %3155 = extractvalue %dx.types.ResRet.f32 %3153, 1
  %3156 = extractvalue %dx.types.ResRet.f32 %3153, 2
  %3157 = extractvalue %dx.types.ResRet.f32 %3153, 3
  %3158 = bitcast float %2977 to i32
  %3159 = and i32 %3158, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3158, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3157, %3160
  %3165 = fadd fast float %3164, %3163
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = add i32 %2952, 0
  %3168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3167, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3168, %dx.types.Handle %3152, float %3080, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float %3085, float %3087, float undef, float %3089, float %3091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = extractvalue %dx.types.ResRet.f32 %3169, 3
  %3174 = bitcast float %2971 to i32
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = lshr i32 %3174, 8
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = lshr i32 %3174, 16
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101000000000
  %3184 = fmul fast float %3170, %3176
  %3185 = fadd fast float %3184, %3179
  %3186 = fmul fast float %3185, 0x3F70101000000000
  %3187 = fadd fast float %3171, -5.000000e-01
  %3188 = fadd fast float %3173, -5.000000e-01
  %3189 = fmul fast float %3187, %3183
  %3190 = fmul fast float %3188, %3183
  %3191 = fadd fast float %3189, 5.000000e-01
  %3192 = fadd fast float %3190, 5.000000e-01
  %3193 = fmul fast float %3154, %2980
  %3194 = fmul fast float %3155, %2981
  %3195 = fmul fast float %3156, %2982
  %3196 = fmul fast float %3191, 2.000000e+00
  %3197 = fadd fast float %3196, -1.000000e+00
  %3198 = fmul fast float %3192, 2.000000e+00
  %3199 = fadd fast float %3198, -1.000000e+00
  %3200 = fadd fast float %3197, %3199
  %3201 = fmul fast float %3200, 5.000000e-01
  %3202 = fsub fast float %3197, %3199
  %3203 = fmul fast float %3202, 5.000000e-01
  %3204 = call float @dx.op.unary.f32(i32 6, float %3201)  ; FAbs(value)
  %3205 = fsub fast float 1.000000e+00, %3204
  %3206 = call float @dx.op.unary.f32(i32 6, float %3203)  ; FAbs(value)
  %3207 = fsub fast float %3205, %3206
  %3208 = call float @dx.op.dot3.f32(i32 55, float %3201, float %3203, float %3207, float %3201, float %3203, float %3207)  ; Dot3(ax,ay,az,bx,by,bz)
  %3209 = call float @dx.op.unary.f32(i32 25, float %3208)  ; Rsqrt(value)
  %3210 = fmul fast float %3201, %3209
  %3211 = fmul fast float %3203, %3209
  %3212 = fmul fast float %3209, %3207
  %3213 = fmul fast float %3212, %2946
  %3214 = fmul fast float %3212, %2947
  %3215 = fmul fast float %3212, %2948
  %3216 = fmul fast float %3210, %2968
  %3217 = fmul fast float %3210, %2969
  %3218 = fmul fast float %3210, %2970
  %3219 = fadd fast float %3216, %3213
  %3220 = fadd fast float %3217, %3214
  %3221 = fadd fast float %3218, %3215
  %3222 = fmul fast float %3211, %2974
  %3223 = fmul fast float %3211, %2975
  %3224 = fmul fast float %3211, %2976
  %3225 = fadd fast float %3219, %3222
  %3226 = fadd fast float %3220, %3223
  %3227 = fadd fast float %3221, %3224
  %3228 = call float @dx.op.dot3.f32(i32 55, float %3225, float %3226, float %3227, float %3225, float %3226, float %3227)  ; Dot3(ax,ay,az,bx,by,bz)
  %3229 = call float @dx.op.unary.f32(i32 25, float %3228)  ; Rsqrt(value)
  %3230 = fmul fast float %3225, %3229
  %3231 = fmul fast float %3226, %3229
  %3232 = fmul fast float %3227, %3229
  %3233 = icmp ne i32 %3149, 0
  %3234 = select i1 %3233, float 1.000000e+00, float 0.000000e+00
  %3235 = fmul fast float %3139, %3234
  %3236 = and i32 %3069, 1
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3238, label %3242

; <label>:3238                                    ; preds = %3147
  %3239 = fsub fast float %3230, %2928
  %3240 = fsub fast float %3231, %2929
  %3241 = fsub fast float %3232, %2930
  br label %3242

; <label>:3242                                    ; preds = %3238, %3147
  %3243 = phi float [ %3239, %3238 ], [ %3230, %3147 ]
  %3244 = phi float [ %3240, %3238 ], [ %3231, %3147 ]
  %3245 = phi float [ %3241, %3238 ], [ %3232, %3147 ]
  %3246 = fmul float %3245, %3235
  %3247 = fmul float %3244, %3235
  %3248 = fmul float %3243, %3235
  %3249 = fadd fast float %3248, %2928
  %3250 = fadd fast float %3247, %2929
  %3251 = fadd fast float %3246, %2930
  %3252 = icmp ne i32 %3148, 0
  %3253 = select i1 %3252, float 1.000000e+00, float 0.000000e+00
  %3254 = fmul fast float %3139, %3253
  %3255 = fsub fast float %3193, %2935
  %3256 = fsub fast float %3194, %2936
  %3257 = fsub fast float %3195, %2937
  %3258 = fmul fast float %3255, %3254
  %3259 = fmul fast float %3256, %3254
  %3260 = fmul fast float %3257, %3254
  %3261 = fadd fast float %3258, %2935
  %3262 = fadd fast float %3259, %2936
  %3263 = fadd fast float %3260, %2937
  %3264 = fsub fast float %3166, %2934
  %3265 = fmul fast float %3264, %3254
  %3266 = fadd fast float %3265, %2934
  %3267 = fmul fast float %3254, %2924
  %3268 = fsub fast float %2924, %3267
  %3269 = fmul fast float %3254, %2923
  %3270 = fsub fast float %2923, %3269
  %3271 = fadd fast float %3139, %2933
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3273 = fsub fast float %3186, %2932
  %3274 = fmul fast float %3273, %3235
  %3275 = fadd fast float %3274, %2932
  %3276 = fsub fast float %3172, %2931
  %3277 = fmul fast float %3276, %3235
  %3278 = fadd fast float %3277, %2931
  %3279 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3194, float %3195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3281 = extractvalue %dx.types.CBufRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.CBufRet.f32 %3280, 1
  %3283 = fmul fast float %3282, %3279
  %3284 = fadd fast float %3283, %3281
  %3285 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  %3286 = bitcast float %2983 to i32
  %3287 = and i32 %3286, 65535
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = lshr i32 %3286, 16
  %3290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3289)  ; LegacyF16ToF32(value)
  %3291 = fcmp fast oge float %3288, 0.000000e+00
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = select i1 %3291, float %3288, float %3293
  %3295 = fadd fast float %3294, %3290
  %3296 = fsub fast float %3285, %2922
  %3297 = fmul fast float %3296, %3139
  %3298 = fadd fast float %3297, %2922
  %3299 = fmul fast float %3295, %3139
  %3300 = call float @dx.op.binary.f32(i32 35, float %2921, float %3299)  ; FMax(a,b)
  %3301 = call float @dx.op.binary.f32(i32 35, float %2920, float %3139)  ; FMax(a,b)
  %3302 = and i32 %3069, 16
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3326, label %3304

; <label>:3304                                    ; preds = %3242
  %3305 = bitcast float %2989 to i32
  %3306 = add i32 %2986, 0
  %3307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3308 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3307, %dx.types.Handle %3152, float %3080, float %3083, float undef, float undef, i32 0, i32 0, i32 undef, float %3085, float %3087, float undef, float %3089, float %3091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.ResRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.ResRet.f32 %3308, 2
  %3312 = and i32 %3305, 65535
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = fmul fast float %3309, %2980
  %3315 = fmul fast float %3310, %2981
  %3316 = fmul fast float %3311, %2982
  %3317 = and i32 %3069, 16384
  %3318 = icmp ne i32 %3317, 0
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = select i1 %3318, float %3320, float 1.000000e+00
  %3322 = fmul fast float %3321, %3313
  %3323 = fmul fast float %3314, %3322
  %3324 = fmul fast float %3315, %3322
  %3325 = fmul fast float %3316, %3322
  br label %3326

; <label>:3326                                    ; preds = %3304, %3242
  %3327 = phi float [ %3323, %3304 ], [ 0.000000e+00, %3242 ]
  %3328 = phi float [ %3324, %3304 ], [ 0.000000e+00, %3242 ]
  %3329 = phi float [ %3325, %3304 ], [ 0.000000e+00, %3242 ]
  %3330 = fsub fast float %3327, %2925
  %3331 = fsub fast float %3328, %2926
  %3332 = fsub fast float %3329, %2927
  %3333 = fmul fast float %3330, %3139
  %3334 = fmul fast float %3331, %3139
  %3335 = fmul fast float %3332, %3139
  %3336 = fadd fast float %3333, %2925
  %3337 = fadd fast float %3334, %2926
  %3338 = fadd fast float %3335, %2927
  br label %3039

; <label>:3339                                    ; preds = %3039
  br label %3340

; <label>:3340                                    ; preds = %3339, %2854
  %3341 = phi float [ 0.000000e+00, %2854 ], [ %3040, %3339 ]
  %3342 = phi float [ %1061, %2854 ], [ %3041, %3339 ]
  %3343 = phi float [ %2774, %2854 ], [ %3042, %3339 ]
  %3344 = phi float [ %2765, %2854 ], [ %3043, %3339 ]
  %3345 = phi float [ 0.000000e+00, %2854 ], [ %3044, %3339 ]
  %3346 = phi float [ 0.000000e+00, %2854 ], [ %3045, %3339 ]
  %3347 = phi float [ %2816, %2854 ], [ %3046, %3339 ]
  %3348 = phi float [ %2820, %2854 ], [ %3047, %3339 ]
  %3349 = phi float [ %2824, %2854 ], [ %3048, %3339 ]
  %3350 = phi float [ %2850, %2854 ], [ %3049, %3339 ]
  %3351 = phi float [ %2851, %2854 ], [ %3050, %3339 ]
  %3352 = phi float [ %2852, %2854 ], [ %3051, %3339 ]
  %3353 = phi float [ %2764, %2854 ], [ %3052, %3339 ]
  %3354 = phi float [ %2763, %2854 ], [ %3053, %3339 ]
  %3355 = phi float [ 0.000000e+00, %2854 ], [ %3054, %3339 ]
  %3356 = phi float [ 0x3FA23C0BE0000000, %2854 ], [ %3055, %3339 ]
  %3357 = phi float [ %2799, %2854 ], [ %3056, %3339 ]
  %3358 = phi float [ %2800, %2854 ], [ %3057, %3339 ]
  %3359 = phi float [ %2801, %2854 ], [ %3058, %3339 ]
  %3360 = call float @dx.op.dot3.f32(i32 55, float %3350, float %3351, float %3352, float %3350, float %3351, float %3352)  ; Dot3(ax,ay,az,bx,by,bz)
  %3361 = call float @dx.op.unary.f32(i32 25, float %3360)  ; Rsqrt(value)
  %3362 = fmul fast float %3361, %3350
  %3363 = fmul fast float %3361, %3351
  %3364 = fmul fast float %3361, %3352
  %3365 = fadd fast float %3355, %2782
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3362, float %3363, float %3364, float %3362, float %3363, float %3364)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = call float @dx.op.unary.f32(i32 25, float %3367)  ; Rsqrt(value)
  %3369 = fmul fast float %3368, %3362
  %3370 = fmul fast float %3368, %3363
  %3371 = fmul fast float %3368, %3364
  br label %3372

; <label>:3372                                    ; preds = %3340, %2760
  %3373 = phi float [ %3369, %3340 ], [ %2850, %2760 ]
  %3374 = phi float [ %3370, %3340 ], [ %2851, %2760 ]
  %3375 = phi float [ %3371, %3340 ], [ %2852, %2760 ]
  %3376 = phi float [ %3357, %3340 ], [ %2799, %2760 ]
  %3377 = phi float [ %3358, %3340 ], [ %2800, %2760 ]
  %3378 = phi float [ %3359, %3340 ], [ %2801, %2760 ]
  %3379 = phi float [ %3347, %3340 ], [ %2816, %2760 ]
  %3380 = phi float [ %3348, %3340 ], [ %2820, %2760 ]
  %3381 = phi float [ %3349, %3340 ], [ %2824, %2760 ]
  %3382 = phi float [ %3356, %3340 ], [ 0x3FA23C0BE0000000, %2760 ]
  %3383 = phi float [ %3366, %3340 ], [ %2782, %2760 ]
  %3384 = phi float [ %3354, %3340 ], [ %2763, %2760 ]
  %3385 = phi float [ %3353, %3340 ], [ %2764, %2760 ]
  %3386 = phi float [ %3346, %3340 ], [ 0.000000e+00, %2760 ]
  %3387 = phi float [ %3345, %3340 ], [ 0.000000e+00, %2760 ]
  %3388 = phi float [ %3341, %3340 ], [ 0.000000e+00, %2760 ]
  %3389 = phi float [ %3343, %3340 ], [ %2774, %2760 ]
  %3390 = phi float [ %3342, %3340 ], [ %1061, %2760 ]
  %3391 = phi float [ %3344, %3340 ], [ %2765, %2760 ]
  %3392 = fadd fast float %3382, 0xBFB99999A0000000
  %3393 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3394 = fmul fast float %3393, 0x3FF1C71C80000000
  %3395 = call float @dx.op.binary.f32(i32 36, float %3382, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3396 = fsub fast float 1.000000e+00, %3394
  %3397 = call float @dx.op.unary.f32(i32 7, float %3396)  ; Saturate(value)
  %3398 = fmul fast float %3397, %3376
  %3399 = fmul fast float %3397, %3377
  %3400 = fmul fast float %3397, %3378
  %3401 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3402 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = fmul fast float %3394, %3376
  %3405 = fmul fast float %3394, %3377
  %3406 = fmul fast float %3394, %3378
  %3407 = fadd fast float %3404, %3395
  %3408 = fadd fast float %3405, %3395
  %3409 = fadd fast float %3406, %3395
  %3410 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3411 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = call float @dx.op.unary.f32(i32 7, float %3384)  ; Saturate(value)
  %3414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.i32 %3414, 3
  %3416 = and i32 %3415, 8
  %3417 = icmp ne i32 %3416, 0
  %3418 = call float @dx.op.binary.f32(i32 35, float %3401, float %3376)  ; FMax(a,b)
  %3419 = call float @dx.op.binary.f32(i32 35, float %3402, float %3376)  ; FMax(a,b)
  %3420 = call float @dx.op.binary.f32(i32 35, float %3403, float %3376)  ; FMax(a,b)
  %3421 = call float @dx.op.dot3.f32(i32 55, float %3401, float %3402, float %3403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3422 = select i1 %268, float %3376, float %3401
  %3423 = select i1 %268, float %3421, float %3402
  %3424 = select i1 %268, float 1.000000e+00, float %3403
  %3425 = select i1 %3417, float %3418, float %3422
  %3426 = select i1 %3417, float %3419, float %3423
  %3427 = select i1 %3417, float %3420, float %3424
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 0
  %3430 = extractvalue %dx.types.CBufRet.f32 %3428, 1
  %3431 = extractvalue %dx.types.CBufRet.f32 %3428, 2
  %3432 = fadd fast float %3429, %198
  %3433 = fadd fast float %3430, %199
  %3434 = fadd fast float %3431, %200
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.CBufRet.f32 %3435, 1
  %3438 = fsub fast float %3432, %3436
  %3439 = fsub fast float %3433, %3437
  %3440 = fmul fast float %3438, %3438
  %3441 = fmul fast float %3439, %3439
  %3442 = fadd fast float %3440, %3441
  %3443 = call float @dx.op.unary.f32(i32 24, float %3442)  ; Sqrt(value)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3435, 2
  %3445 = fcmp fast olt float %3443, %3444
  br i1 %3445, label %3446, label %3513

; <label>:3446                                    ; preds = %3372
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 0
  %3449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3450 = extractvalue %dx.types.CBufRet.f32 %3449, 0
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.CBufRet.f32 %3447, 1
  %3454 = extractvalue %dx.types.CBufRet.f32 %3449, 1
  %3455 = extractvalue %dx.types.CBufRet.f32 %3451, 1
  %3456 = extractvalue %dx.types.CBufRet.f32 %3447, 3
  %3457 = extractvalue %dx.types.CBufRet.f32 %3449, 3
  %3458 = extractvalue %dx.types.CBufRet.f32 %3451, 3
  %3459 = fadd fast float %3456, %3432
  %3460 = fadd fast float %3457, %3433
  %3461 = fadd fast float %3458, %3434
  %3462 = fmul fast float %3459, %3448
  %3463 = call float @dx.op.tertiary.f32(i32 46, float %3460, float %3450, float %3462)  ; FMad(a,b,c)
  %3464 = call float @dx.op.tertiary.f32(i32 46, float %3461, float %3452, float %3463)  ; FMad(a,b,c)
  %3465 = fmul fast float %3459, %3453
  %3466 = call float @dx.op.tertiary.f32(i32 46, float %3460, float %3454, float %3465)  ; FMad(a,b,c)
  %3467 = call float @dx.op.tertiary.f32(i32 46, float %3461, float %3455, float %3466)  ; FMad(a,b,c)
  %3468 = fsub fast float %3464, %3456
  %3469 = fsub fast float %3467, %3457
  %3470 = fsub fast float %3468, %3436
  %3471 = fadd fast float %3470, %3444
  %3472 = fsub fast float %3469, %3437
  %3473 = fadd fast float %3472, %3444
  %3474 = extractvalue %dx.types.CBufRet.f32 %3435, 3
  %3475 = fmul fast float %3471, %3474
  %3476 = fmul fast float %3473, %3474
  %3477 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3478 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3479 = fsub fast float 1.000000e+00, %3477
  %3480 = fsub fast float 1.000000e+00, %3478
  %3481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = fcmp fast ugt float %3482, 0.000000e+00
  br i1 %3483, label %3484, label %3787

; <label>:3484                                    ; preds = %3446
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 2
  %3487 = fmul fast float %3486, %3482
  %3488 = extractvalue %dx.types.CBufRet.f32 %3485, 3
  %3489 = fadd fast float %3488, %3487
  %3490 = extractvalue %dx.types.CBufRet.f32 %3451, 2
  %3491 = fadd fast float %3489, %3458
  %3492 = fmul fast float %3464, %3452
  %3493 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3455, float %3492)  ; FMad(a,b,c)
  %3494 = call float @dx.op.tertiary.f32(i32 46, float %3491, float %3490, float %3493)  ; FMad(a,b,c)
  %3495 = fsub fast float %3494, %3458
  %3496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3497 = extractvalue %dx.types.CBufRet.f32 %3496, 2
  %3498 = fsub fast float %3495, %3497
  %3499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %3479, float %3480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3506 = extractvalue %dx.types.ResRet.f32 %3503, 2
  %3507 = fadd fast float %3504, %3500
  %3508 = fmul fast float %3507, 0x3F847AE140000000
  %3509 = fadd fast float %3505, %3501
  %3510 = fmul fast float %3509, 0x3F847AE140000000
  %3511 = fadd fast float %3506, %3502
  %3512 = fmul fast float %3511, 0x3F847AE140000000
  br label %3787

; <label>:3513                                    ; preds = %3372
  %3514 = and i32 %247, 1
  %3515 = icmp eq i32 %3514, 0
  br i1 %3515, label %3787, label %3516

; <label>:3516                                    ; preds = %3513
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3526 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3527 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3528 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3529 = fadd fast float %3526, %3432
  %3530 = fadd fast float %3527, %3433
  %3531 = fadd fast float %3528, %3434
  %3532 = fmul fast float %3529, %3518
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3530, float %3520, float %3532)  ; FMad(a,b,c)
  %3534 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3522, float %3533)  ; FMad(a,b,c)
  %3535 = fmul fast float %3529, %3523
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3530, float %3524, float %3535)  ; FMad(a,b,c)
  %3537 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3525, float %3536)  ; FMad(a,b,c)
  %3538 = fsub fast float %3534, %3526
  %3539 = fsub fast float %3537, %3527
  %3540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3541 = extractvalue %dx.types.CBufRet.f32 %3540, 0
  %3542 = extractvalue %dx.types.CBufRet.f32 %3540, 1
  %3543 = extractvalue %dx.types.CBufRet.f32 %3540, 2
  %3544 = extractvalue %dx.types.CBufRet.f32 %3540, 3
  %3545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3545, 3
  %3547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.i32 %3547, 0
  %3549 = extractvalue %dx.types.CBufRet.i32 %3547, 1
  %3550 = udiv i32 %3549, %3548
  %3551 = fsub fast float %3538, %3541
  %3552 = fsub fast float %3539, %3542
  %3553 = call float @dx.op.binary.f32(i32 35, float %3551, float 0.000000e+00)  ; FMax(a,b)
  %3554 = call float @dx.op.binary.f32(i32 35, float %3552, float 0.000000e+00)  ; FMax(a,b)
  %3555 = call float @dx.op.binary.f32(i32 36, float %3553, float %3543)  ; FMin(a,b)
  %3556 = call float @dx.op.binary.f32(i32 36, float %3554, float %3544)  ; FMin(a,b)
  %3557 = add i32 %3548, -1
  %3558 = add i32 %3550, -1
  %3559 = fmul fast float %3555, %3546
  %3560 = fmul fast float %3556, %3546
  %3561 = fptoui float %3559 to i32
  %3562 = fptoui float %3560 to i32
  %3563 = call i32 @dx.op.binary.i32(i32 40, i32 %3561, i32 %3557)  ; UMin(a,b)
  %3564 = call i32 @dx.op.binary.i32(i32 40, i32 %3562, i32 %3558)  ; UMin(a,b)
  %3565 = mul i32 %3564, %3548
  %3566 = add i32 %3565, %3563
  %3567 = shl i32 %3566, 2
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = icmp eq i32 %3569, -1
  br i1 %3570, label %3787, label %3571

; <label>:3571                                    ; preds = %3516
  %3572 = mul i32 %3569, 148
  %3573 = add i32 %3572, 4
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = add i32 %3572, 8
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = add i32 %3572, 36
  %3580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = add i32 %3572, 60
  %3583 = add i32 %3572, 92
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = add i32 %3572, 116
  %3587 = fsub fast float %3538, %3575
  %3588 = fsub fast float %3539, %3578
  %3589 = fmul fast float %3546, %3587
  %3590 = fmul fast float %3546, %3588
  %3591 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3592 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3593 = fsub fast float 1.000000e+00, %3592
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 2
  %3596 = call float @dx.op.unary.f32(i32 83, float %3591)  ; DerivCoarseX(value)
  %3597 = call float @dx.op.unary.f32(i32 83, float %3593)  ; DerivCoarseX(value)
  %3598 = call float @dx.op.unary.f32(i32 84, float %3591)  ; DerivCoarseY(value)
  %3599 = call float @dx.op.unary.f32(i32 84, float %3593)  ; DerivCoarseY(value)
  %3600 = fmul fast float %3596, %3595
  %3601 = fmul fast float %3597, %3595
  %3602 = fmul fast float %3598, %3595
  %3603 = fmul fast float %3599, %3595
  %3604 = call float @dx.op.dot2.f32(i32 54, float %3602, float %3603, float %3602, float %3603)  ; Dot2(ax,ay,bx,by)
  %3605 = call float @dx.op.dot2.f32(i32 54, float %3600, float %3601, float %3600, float %3601)  ; Dot2(ax,ay,bx,by)
  %3606 = call float @dx.op.binary.f32(i32 35, float %3605, float %3604)  ; FMax(a,b)
  %3607 = call float @dx.op.unary.f32(i32 23, float %3606)  ; Log(value)
  %3608 = fmul fast float %3607, 5.000000e-01
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3611 = fadd fast float %3610, %3608
  %3612 = call float @dx.op.binary.f32(i32 35, float %3611, float 0.000000e+00)  ; FMax(a,b)
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 3
  %3615 = fadd fast float %3614, %3612
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 3
  %3618 = fadd fast float %3615, %3617
  %3619 = add i32 %3585, 0
  %3620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3619, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3621 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3620, i32 0)  ; GetDimensions(handle,mipLevel)
  %3622 = extractvalue %dx.types.Dimensions %3621, 0
  %3623 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3622)  ; FirstbitLo(value)
  %3624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.i32 %3624, 1
  %3626 = sub nsw i32 %3625, %3623
  %3627 = sitofp i32 %3626 to float
  %3628 = fsub fast float %3618, %3627
  %3629 = call float @dx.op.binary.f32(i32 35, float %3628, float 0.000000e+00)  ; FMax(a,b)
  %3630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3620, %dx.types.Handle %49, float %3591, float %3593, float %3581, float undef, i32 0, i32 0, i32 undef, float %3629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = fcmp ule float %3631, 0x3FE0101020000000
  %3633 = extractvalue %dx.types.CBufRet.i32 %3624, 0
  %3634 = and i32 %3633, 128
  %3635 = icmp ne i32 %3634, 0
  %3636 = and i1 %3632, %3635
  br i1 %3636, label %3787, label %3637

; <label>:3637                                    ; preds = %3571
  %3638 = add i32 %3572, 20
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = add i32 %3572, 24
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = add i32 %3572, 40
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = add i32 %3572, 96
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 2
  %3652 = fmul fast float %3651, %3591
  %3653 = fmul fast float %3651, %3593
  %3654 = extractvalue %dx.types.CBufRet.f32 %3650, 3
  %3655 = fadd fast float %3652, %3654
  %3656 = fadd fast float %3653, %3654
  %3657 = add i32 %3649, 0
  %3658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3657, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3659 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3658, i32 0)  ; GetDimensions(handle,mipLevel)
  %3660 = extractvalue %dx.types.Dimensions %3659, 0
  %3661 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3660)  ; FirstbitLo(value)
  %3662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.i32 %3662, 1
  %3664 = sub nsw i32 %3663, %3661
  %3665 = sitofp i32 %3664 to float
  %3666 = fsub fast float %3615, %3665
  %3667 = call float @dx.op.binary.f32(i32 35, float %3666, float 0.000000e+00)  ; FMax(a,b)
  %3668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3658, %dx.types.Handle %49, float %3655, float %3656, float %3646, float undef, i32 0, i32 0, i32 undef, float %3667)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = fmul fast float %3669, %3640
  %3671 = fadd fast float %3670, %3643
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.CBufRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 3
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3680 = extractvalue %dx.types.CBufRet.f32 %3672, 3
  %3681 = fadd fast float %3677, %3538
  %3682 = fadd fast float %3679, %3539
  %3683 = fadd fast float %3671, %3680
  %3684 = fmul fast float %3681, %3673
  %3685 = call float @dx.op.tertiary.f32(i32 46, float %3682, float %3674, float %3684)  ; FMad(a,b,c)
  %3686 = call float @dx.op.tertiary.f32(i32 46, float %3683, float %3675, float %3685)  ; FMad(a,b,c)
  %3687 = fsub fast float %3686, %3680
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 2
  %3690 = fsub fast float %3687, %3689
  %3691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.i32 %3691, 0
  %3693 = call i32 @dx.op.binary.i32(i32 40, i32 %3569, i32 %3692)  ; UMin(a,b)
  %3694 = mul i32 %3693, 36
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = add i32 %3694, 4
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3700 = fmul fast float %3699, %3591
  %3701 = fmul fast float %3699, %3593
  %3702 = extractvalue %dx.types.CBufRet.f32 %3698, 1
  %3703 = fadd fast float %3700, %3702
  %3704 = fadd fast float %3701, %3702
  %3705 = icmp eq i32 %3696, 0
  br i1 %3705, label %3774, label %3706

; <label>:3706                                    ; preds = %3637
  br label %3707

; <label>:3707                                    ; preds = %3764, %3706
  %3708 = phi float [ %3765, %3764 ], [ 0.000000e+00, %3706 ]
  %3709 = phi float [ %3766, %3764 ], [ 0.000000e+00, %3706 ]
  %3710 = phi float [ %3767, %3764 ], [ 0.000000e+00, %3706 ]
  %3711 = phi float [ %3768, %3764 ], [ 0.000000e+00, %3706 ]
  %3712 = phi float [ %3769, %3764 ], [ 0.000000e+00, %3706 ]
  %3713 = phi float [ %3770, %3764 ], [ 0.000000e+00, %3706 ]
  %3714 = phi i32 [ %3771, %3764 ], [ 0, %3706 ]
  %3715 = shl i32 %3714, 2
  %3716 = add i32 %3582, %3715
  %3717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = add i32 %3586, %3715
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = add i32 %3721, 0
  %3723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3722, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3724 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3723, i32 0)  ; GetDimensions(handle,mipLevel)
  %3725 = extractvalue %dx.types.Dimensions %3724, 0
  %3726 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3725)  ; FirstbitLo(value)
  %3727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.i32 %3727, 1
  %3729 = sub nsw i32 %3728, %3726
  %3730 = sitofp i32 %3729 to float
  %3731 = fsub fast float %3615, %3730
  %3732 = call float @dx.op.binary.f32(i32 35, float %3731, float 0.000000e+00)  ; FMax(a,b)
  %3733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3723, %dx.types.Handle %49, float %3703, float %3704, float %3718, float undef, i32 0, i32 0, i32 undef, float %3732)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = fcmp fast ogt float %3734, 0.000000e+00
  br i1 %3735, label %3736, label %3764

; <label>:3736                                    ; preds = %3707
  %3737 = add i32 %3697, %3715
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = and i32 %3739, 32767
  %3741 = mul nuw nsw i32 %3740, 928
  %3742 = add nuw nsw i32 %3741, 48
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3747 = add nuw nsw i32 %3741, 60
  %3748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.ResRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.ResRet.f32 %3748, 2
  %3752 = fmul fast float %3744, %3734
  %3753 = fmul fast float %3745, %3734
  %3754 = fmul fast float %3746, %3734
  %3755 = fadd fast float %3752, %3708
  %3756 = fadd fast float %3753, %3709
  %3757 = fadd fast float %3754, %3710
  %3758 = fmul fast float %3749, %3734
  %3759 = fmul fast float %3750, %3734
  %3760 = fmul fast float %3751, %3734
  %3761 = fadd fast float %3758, %3711
  %3762 = fadd fast float %3759, %3712
  %3763 = fadd fast float %3760, %3713
  br label %3764

; <label>:3764                                    ; preds = %3736, %3707
  %3765 = phi float [ %3755, %3736 ], [ %3708, %3707 ]
  %3766 = phi float [ %3756, %3736 ], [ %3709, %3707 ]
  %3767 = phi float [ %3757, %3736 ], [ %3710, %3707 ]
  %3768 = phi float [ %3761, %3736 ], [ %3711, %3707 ]
  %3769 = phi float [ %3762, %3736 ], [ %3712, %3707 ]
  %3770 = phi float [ %3763, %3736 ], [ %3713, %3707 ]
  %3771 = add nuw i32 %3714, 1
  %3772 = icmp eq i32 %3771, %3696
  br i1 %3772, label %3773, label %3707

; <label>:3773                                    ; preds = %3764
  br label %3774

; <label>:3774                                    ; preds = %3773, %3637
  %3775 = phi float [ 0.000000e+00, %3637 ], [ %3765, %3773 ]
  %3776 = phi float [ 0.000000e+00, %3637 ], [ %3766, %3773 ]
  %3777 = phi float [ 0.000000e+00, %3637 ], [ %3767, %3773 ]
  %3778 = phi float [ 0.000000e+00, %3637 ], [ %3768, %3773 ]
  %3779 = phi float [ 0.000000e+00, %3637 ], [ %3769, %3773 ]
  %3780 = phi float [ 0.000000e+00, %3637 ], [ %3770, %3773 ]
  %3781 = fadd fast float %3778, %3775
  %3782 = fmul fast float %3781, 0x3F847AE140000000
  %3783 = fadd fast float %3779, %3776
  %3784 = fmul fast float %3783, 0x3F847AE140000000
  %3785 = fadd fast float %3780, %3777
  %3786 = fmul fast float %3785, 0x3F847AE140000000
  br label %3787

; <label>:3787                                    ; preds = %3774, %3571, %3516, %3513, %3484, %3446
  %3788 = phi float [ %3498, %3484 ], [ -1.310720e+05, %3446 ], [ %3690, %3774 ], [ -1.310720e+05, %3516 ], [ -1.310720e+05, %3571 ], [ -1.310720e+05, %3513 ]
  %3789 = phi float [ %3508, %3484 ], [ 0.000000e+00, %3446 ], [ %3782, %3774 ], [ 0.000000e+00, %3516 ], [ 0.000000e+00, %3571 ], [ 0.000000e+00, %3513 ]
  %3790 = phi float [ %3510, %3484 ], [ 0.000000e+00, %3446 ], [ %3784, %3774 ], [ 0.000000e+00, %3516 ], [ 0.000000e+00, %3571 ], [ 0.000000e+00, %3513 ]
  %3791 = phi float [ %3512, %3484 ], [ 0.000000e+00, %3446 ], [ %3786, %3774 ], [ 0.000000e+00, %3516 ], [ 0.000000e+00, %3571 ], [ 0.000000e+00, %3513 ]
  %3792 = phi i1 [ true, %3484 ], [ false, %3446 ], [ true, %3774 ], [ false, %3516 ], [ false, %3571 ], [ false, %3513 ]
  %3793 = and i32 %247, 3
  %3794 = icmp eq i32 %3793, 1
  %3795 = select i1 %3794, float 1.000000e+00, float 0.000000e+00
  %3796 = fsub fast float %3788, %200
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = select i1 %3792, float %3797, float 1.000000e+00
  %3799 = fmul fast float %3798, %3795
  %3800 = icmp eq i32 %3793, 3
  %3801 = select i1 %3800, float 1.000000e+00, float %3799
  %3802 = call float @dx.op.binary.f32(i32 35, float %3388, float %3801)  ; FMax(a,b)
  %3803 = fcmp fast olt float %3801, 1.000000e+00
  %3804 = fcmp uge float %75, 0.000000e+00
  %3805 = and i1 %3804, %3803
  br i1 %3805, label %3806, label %3816

; <label>:3806                                    ; preds = %3787
  %3807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %49, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = fadd fast float %3808, %3802
  %3812 = fcmp ule float %74, 0.000000e+00
  %3813 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = select i1 %3812, float %3813, float 1.000000e+00
  %3815 = fmul fast float %3814, %3810
  br label %3816

; <label>:3816                                    ; preds = %3806, %3787
  %3817 = phi float [ %3811, %3806 ], [ %3802, %3787 ]
  %3818 = phi float [ %3809, %3806 ], [ 0.000000e+00, %3787 ]
  %3819 = phi float [ %3815, %3806 ], [ 0.000000e+00, %3787 ]
  %3820 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3821 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3822 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3823 = fcmp fast une float %3821, 0.000000e+00
  %3824 = fcmp fast une float %3822, 0.000000e+00
  %3825 = or i1 %3823, %3824
  br i1 %3825, label %3826, label %4385

; <label>:3826                                    ; preds = %3816
  br i1 %3823, label %3827, label %4100

; <label>:3827                                    ; preds = %3826
  %3828 = call float @dx.op.unary.f32(i32 23, float %3385)  ; Log(value)
  %3829 = fmul fast float %3828, 4.000000e+00
  %3830 = call float @dx.op.unary.f32(i32 21, float %3829)  ; Exp(value)
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = fmul fast float %3832, %61
  %3834 = fmul fast float %3832, %62
  %3835 = fmul fast float %3832, %63
  %3836 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %3837 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %3838 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %3839 = call float @dx.op.unary.f32(i32 23, float %3836)  ; Log(value)
  %3840 = call float @dx.op.unary.f32(i32 23, float %3837)  ; Log(value)
  %3841 = call float @dx.op.unary.f32(i32 23, float %3838)  ; Log(value)
  %3842 = fmul fast float %3839, 4.000000e+00
  %3843 = fmul fast float %3840, 4.000000e+00
  %3844 = fmul fast float %3841, 4.000000e+00
  %3845 = call float @dx.op.unary.f32(i32 21, float %3842)  ; Exp(value)
  %3846 = call float @dx.op.unary.f32(i32 21, float %3843)  ; Exp(value)
  %3847 = call float @dx.op.unary.f32(i32 21, float %3844)  ; Exp(value)
  %3848 = fadd fast float %3846, %3845
  %3849 = fadd fast float %3848, %3847
  %3850 = fdiv fast float 1.000000e+00, %3849
  %3851 = fmul fast float %3850, %3845
  %3852 = fcmp fast ogt float %71, 0.000000e+00
  %3853 = fcmp fast ogt float %72, 0.000000e+00
  %3854 = fcmp fast ogt float %73, 0.000000e+00
  %3855 = fcmp fast olt float %71, 0.000000e+00
  %3856 = fcmp fast olt float %72, 0.000000e+00
  %3857 = fcmp fast olt float %73, 0.000000e+00
  %3858 = zext i1 %3852 to i32
  %3859 = zext i1 %3853 to i32
  %3860 = zext i1 %3854 to i32
  %3861 = zext i1 %3855 to i32
  %3862 = zext i1 %3856 to i32
  %3863 = zext i1 %3857 to i32
  %3864 = sub nsw i32 %3858, %3861
  %3865 = sub nsw i32 %3859, %3862
  %3866 = sub nsw i32 %3860, %3863
  %3867 = call float @dx.op.unary.f32(i32 83, float %3833)  ; DerivCoarseX(value)
  %3868 = call float @dx.op.unary.f32(i32 83, float %3834)  ; DerivCoarseX(value)
  %3869 = call float @dx.op.unary.f32(i32 83, float %3835)  ; DerivCoarseX(value)
  %3870 = call float @dx.op.unary.f32(i32 84, float %3833)  ; DerivCoarseY(value)
  %3871 = call float @dx.op.unary.f32(i32 84, float %3834)  ; DerivCoarseY(value)
  %3872 = call float @dx.op.unary.f32(i32 84, float %3835)  ; DerivCoarseY(value)
  %3873 = fcmp fast ole float %279, %3851
  %3874 = fmul fast float %3850, %3848
  %3875 = fcmp fast ole float %279, %3874
  %3876 = select i1 %3875, float %3835, float %3833
  %3877 = select i1 %3875, float %3833, float %3834
  %3878 = select i1 %3873, float %3834, float %3876
  %3879 = select i1 %3873, float %3835, float %3877
  %3880 = select i1 %3875, float %3869, float %3867
  %3881 = select i1 %3875, float %3867, float %3868
  %3882 = select i1 %3873, float %3868, float %3880
  %3883 = select i1 %3873, float %3869, float %3881
  %3884 = select i1 %3875, float %3872, float %3870
  %3885 = select i1 %3875, float %3870, float %3871
  %3886 = select i1 %3873, float %3871, float %3884
  %3887 = select i1 %3873, float %3872, float %3885
  %3888 = call float @dx.op.unary.f32(i32 27, float %3878)  ; Round_ni(value)
  %3889 = call float @dx.op.unary.f32(i32 27, float %3879)  ; Round_ni(value)
  %3890 = fptosi float %3888 to i32
  %3891 = fptosi float %3889 to i32
  %3892 = xor i32 %3891, %3890
  %3893 = sitofp i32 %3892 to float
  %3894 = fptosi float %3893 to i32
  %3895 = sitofp i32 %3894 to float
  %3896 = fmul fast float %3895, 0x3FE3C6EF40000000
  %3897 = frem fast float %3888, 2.560000e+02
  %3898 = frem fast float %3889, 2.560000e+02
  %3899 = fptoui float %3897 to i32
  %3900 = fptoui float %3898 to i32
  %3901 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %3899, i32 %3900, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = fadd fast float %3902, %3896
  %3906 = fadd fast float %3903, %3896
  %3907 = fadd fast float %3904, %3896
  %3908 = call float @dx.op.unary.f32(i32 22, float %3905)  ; Frc(value)
  %3909 = call float @dx.op.unary.f32(i32 22, float %3906)  ; Frc(value)
  %3910 = call float @dx.op.unary.f32(i32 22, float %3907)  ; Frc(value)
  %3911 = fmul fast float %3910, 0x401921FB60000000
  %3912 = call float @dx.op.unary.f32(i32 13, float %3911)  ; Sin(value)
  %3913 = call float @dx.op.unary.f32(i32 12, float %3911)  ; Cos(value)
  %3914 = fsub fast float -0.000000e+00, %3913
  %3915 = fmul fast float %3913, %3878
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3912, float %3879, float %3915)  ; FMad(a,b,c)
  %3917 = fmul fast float %3912, %3878
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3879, float %3917)  ; FMad(a,b,c)
  %3919 = fadd fast float %3916, %3908
  %3920 = fadd fast float %3918, %3909
  %3921 = extractvalue %dx.types.CBufRet.f32 %3831, 3
  %3922 = bitcast float %3921 to i32
  %3923 = icmp eq i32 %3922, 0
  br i1 %3923, label %3962, label %3924

; <label>:3924                                    ; preds = %3827
  %3925 = add i32 %3922, 0
  %3926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3926, %dx.types.Handle %108, float %3919, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3883, float undef, float %3886, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3932 = fsub fast float 1.000000e+00, %3821
  %3933 = call float @dx.op.binary.f32(i32 35, float %3932, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3934 = bitcast float %3821 to i32
  %3935 = sitofp i32 %3934 to float
  %3936 = fadd fast float %3935, 0xC1CFBF8940000000
  %3937 = fmul fast float %3931, %3936
  %3938 = fadd fast float %3937, 0x41CFBF8940000000
  %3939 = fptosi float %3938 to i32
  %3940 = bitcast i32 %3939 to float
  %3941 = bitcast float %3933 to i32
  %3942 = sitofp i32 %3941 to float
  %3943 = fadd fast float %3942, 0xC1CFBF8940000000
  %3944 = fmul fast float %3943, %3931
  %3945 = fadd fast float %3944, 0x41CFBF8940000000
  %3946 = fptosi float %3945 to i32
  %3947 = bitcast i32 %3946 to float
  %3948 = fmul fast float %3940, %3930
  %3949 = fmul fast float %3947, %3930
  %3950 = fsub fast float %3933, %3948
  %3951 = fadd fast float %3949, %3933
  %3952 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3953 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3954 = fsub fast float %3928, %3952
  %3955 = fsub fast float %3953, %3952
  %3956 = bitcast float %3955 to i32
  %3957 = sub nsw i32 2129859010, %3956
  %3958 = bitcast i32 %3957 to float
  %3959 = fmul fast float %3958, %3954
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = fcmp fast olt float %3960, 0x3F70101020000000
  br i1 %3961, label %4100, label %3962

; <label>:3962                                    ; preds = %3924, %3827
  %3963 = phi float [ %3960, %3924 ], [ %3821, %3827 ]
  %3964 = fmul fast float %3963, %3830
  %3965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.i32 %3965, 1
  %3967 = extractvalue %dx.types.CBufRet.i32 %3965, 0
  %3968 = add i32 %3967, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3969, %dx.types.Handle %107, float %3919, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3883, float undef, float %3886, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = extractvalue %dx.types.ResRet.f32 %3970, 3
  %3975 = and i32 %3966, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3966, 8
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = fmul fast float %3974, %3976
  %3981 = fadd fast float %3980, %3979
  %3982 = fmul fast float %3981, 0x3F70101000000000
  %3983 = fadd fast float %3982, 0xBFB99999A0000000
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = fmul fast float %3984, 0x3FF1C71C80000000
  %3986 = call float @dx.op.binary.f32(i32 36, float %3982, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3987 = fsub fast float 1.000000e+00, %3985
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = fmul fast float %3988, %3971
  %3990 = fmul fast float %3988, %3972
  %3991 = fmul fast float %3988, %3973
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3994 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3995 = fmul fast float %3985, %3971
  %3996 = fmul fast float %3985, %3972
  %3997 = fmul fast float %3985, %3973
  %3998 = fadd fast float %3995, %3986
  %3999 = fadd fast float %3996, %3986
  %4000 = fadd fast float %3997, %3986
  %4001 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4002 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.i32 %4004, 3
  %4006 = extractvalue %dx.types.CBufRet.i32 %4004, 2
  %4007 = add i32 %4006, 0
  %4008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4008, %dx.types.Handle %107, float %3919, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3883, float undef, float %3886, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = extractvalue %dx.types.ResRet.f32 %4009, 3
  %4014 = and i32 %4005, 255
  %4015 = uitofp i32 %4014 to float
  %4016 = lshr i32 %4005, 8
  %4017 = and i32 %4016, 255
  %4018 = uitofp i32 %4017 to float
  %4019 = lshr i32 %4005, 16
  %4020 = and i32 %4019, 255
  %4021 = uitofp i32 %4020 to float
  %4022 = fmul fast float %4021, 0x3F70101000000000
  %4023 = fmul fast float %4010, %4015
  %4024 = fadd fast float %4023, %4018
  %4025 = fmul fast float %4024, 0x3F70101000000000
  %4026 = fadd fast float %4011, -5.000000e-01
  %4027 = fadd fast float %4013, -5.000000e-01
  %4028 = fmul fast float %4026, %4022
  %4029 = fmul fast float %4027, %4022
  %4030 = fadd fast float %4028, 5.000000e-01
  %4031 = fadd fast float %4029, 5.000000e-01
  %4032 = fmul fast float %4030, 2.000000e+00
  %4033 = fadd fast float %4032, -1.000000e+00
  %4034 = fmul fast float %4031, 2.000000e+00
  %4035 = fadd fast float %4034, -1.000000e+00
  %4036 = fadd fast float %4033, %4035
  %4037 = fmul fast float %4036, 5.000000e-01
  %4038 = fsub fast float %4033, %4035
  %4039 = fmul fast float %4038, 5.000000e-01
  %4040 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4041 = fsub fast float 1.000000e+00, %4040
  %4042 = call float @dx.op.unary.f32(i32 6, float %4039)  ; FAbs(value)
  %4043 = fsub fast float %4041, %4042
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4039, float %4043, float %4037, float %4039, float %4043)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = call float @dx.op.unary.f32(i32 25, float %4044)  ; Rsqrt(value)
  %4046 = fmul fast float %4037, %4045
  %4047 = fmul fast float %4039, %4045
  %4048 = select i1 %3875, i32 %3865, i32 %3866
  %4049 = select i1 %3873, i32 %3864, i32 %4048
  %4050 = sitofp i32 %4049 to float
  %4051 = fmul fast float %4043, %4050
  %4052 = fmul fast float %4051, %4045
  %4053 = select i1 %3875, float %4052, float %4047
  %4054 = select i1 %3875, float %4047, float %4052
  %4055 = select i1 %3873, float %4052, float %4046
  %4056 = select i1 %3873, float %4047, float %4053
  %4057 = select i1 %3873, float %4046, float %4054
  %4058 = fsub fast float %3992, %3425
  %4059 = fsub fast float %3993, %3426
  %4060 = fsub fast float %3994, %3427
  %4061 = fmul fast float %4058, %3964
  %4062 = fmul fast float %4059, %3964
  %4063 = fmul fast float %4060, %3964
  %4064 = fadd fast float %4061, %3425
  %4065 = fadd fast float %4062, %3426
  %4066 = fadd fast float %4063, %3427
  %4067 = fsub fast float %4001, %3410
  %4068 = fsub fast float %4002, %3411
  %4069 = fsub fast float %4003, %3412
  %4070 = fmul fast float %4067, %3964
  %4071 = fmul fast float %4068, %3964
  %4072 = fmul fast float %4069, %3964
  %4073 = fadd fast float %4070, %3410
  %4074 = fadd fast float %4071, %3411
  %4075 = fadd fast float %4072, %3412
  %4076 = fadd fast float %4055, %3373
  %4077 = fadd fast float %4056, %3374
  %4078 = fadd fast float %4057, %3375
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4076, float %4077, float %4078, float %4076, float %4077, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = call float @dx.op.unary.f32(i32 25, float %4079)  ; Rsqrt(value)
  %4081 = fmul fast float %4076, %4080
  %4082 = fmul fast float %4077, %4080
  %4083 = fmul fast float %4078, %4080
  %4084 = fsub fast float %4081, %3373
  %4085 = fsub fast float %4082, %3374
  %4086 = fsub fast float %4083, %3375
  %4087 = fmul fast float %4084, %3964
  %4088 = fmul fast float %4085, %3964
  %4089 = fmul fast float %4086, %3964
  %4090 = fadd fast float %4087, %3373
  %4091 = fadd fast float %4088, %3374
  %4092 = fadd fast float %4089, %3375
  %4093 = call float @dx.op.binary.f32(i32 36, float %3385, float %4012)  ; FMin(a,b)
  %4094 = fsub fast float %4093, %3385
  %4095 = fmul fast float %4094, %3964
  %4096 = fadd fast float %4095, %3385
  %4097 = fsub fast float %4025, %3413
  %4098 = fmul fast float %4097, %3964
  %4099 = fadd fast float %4098, %3413
  br label %4100

; <label>:4100                                    ; preds = %3962, %3924, %3826
  %4101 = phi float [ %4064, %3962 ], [ %3425, %3924 ], [ %3425, %3826 ]
  %4102 = phi float [ %4065, %3962 ], [ %3426, %3924 ], [ %3426, %3826 ]
  %4103 = phi float [ %4066, %3962 ], [ %3427, %3924 ], [ %3427, %3826 ]
  %4104 = phi float [ %4073, %3962 ], [ %3410, %3924 ], [ %3410, %3826 ]
  %4105 = phi float [ %4074, %3962 ], [ %3411, %3924 ], [ %3411, %3826 ]
  %4106 = phi float [ %4075, %3962 ], [ %3412, %3924 ], [ %3412, %3826 ]
  %4107 = phi float [ %4090, %3962 ], [ %3373, %3924 ], [ %3373, %3826 ]
  %4108 = phi float [ %4091, %3962 ], [ %3374, %3924 ], [ %3374, %3826 ]
  %4109 = phi float [ %4092, %3962 ], [ %3375, %3924 ], [ %3375, %3826 ]
  %4110 = phi float [ %4099, %3962 ], [ %3413, %3924 ], [ %3413, %3826 ]
  %4111 = phi float [ %4096, %3962 ], [ %3385, %3924 ], [ %3385, %3826 ]
  br i1 %3824, label %4112, label %4385

; <label>:4112                                    ; preds = %4100
  %4113 = call float @dx.op.unary.f32(i32 23, float %4111)  ; Log(value)
  %4114 = fmul fast float %4113, 4.000000e+00
  %4115 = call float @dx.op.unary.f32(i32 21, float %4114)  ; Exp(value)
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = fmul fast float %4117, %61
  %4119 = fmul fast float %4117, %62
  %4120 = fmul fast float %4117, %63
  %4121 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4122 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4123 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4124 = call float @dx.op.unary.f32(i32 23, float %4121)  ; Log(value)
  %4125 = call float @dx.op.unary.f32(i32 23, float %4122)  ; Log(value)
  %4126 = call float @dx.op.unary.f32(i32 23, float %4123)  ; Log(value)
  %4127 = fmul fast float %4124, 4.000000e+00
  %4128 = fmul fast float %4125, 4.000000e+00
  %4129 = fmul fast float %4126, 4.000000e+00
  %4130 = call float @dx.op.unary.f32(i32 21, float %4127)  ; Exp(value)
  %4131 = call float @dx.op.unary.f32(i32 21, float %4128)  ; Exp(value)
  %4132 = call float @dx.op.unary.f32(i32 21, float %4129)  ; Exp(value)
  %4133 = fadd fast float %4131, %4130
  %4134 = fadd fast float %4133, %4132
  %4135 = fdiv fast float 1.000000e+00, %4134
  %4136 = fmul fast float %4135, %4130
  %4137 = fcmp fast ogt float %71, 0.000000e+00
  %4138 = fcmp fast ogt float %72, 0.000000e+00
  %4139 = fcmp fast ogt float %73, 0.000000e+00
  %4140 = fcmp fast olt float %71, 0.000000e+00
  %4141 = fcmp fast olt float %72, 0.000000e+00
  %4142 = fcmp fast olt float %73, 0.000000e+00
  %4143 = zext i1 %4137 to i32
  %4144 = zext i1 %4138 to i32
  %4145 = zext i1 %4139 to i32
  %4146 = zext i1 %4140 to i32
  %4147 = zext i1 %4141 to i32
  %4148 = zext i1 %4142 to i32
  %4149 = sub nsw i32 %4143, %4146
  %4150 = sub nsw i32 %4144, %4147
  %4151 = sub nsw i32 %4145, %4148
  %4152 = call float @dx.op.unary.f32(i32 83, float %4118)  ; DerivCoarseX(value)
  %4153 = call float @dx.op.unary.f32(i32 83, float %4119)  ; DerivCoarseX(value)
  %4154 = call float @dx.op.unary.f32(i32 83, float %4120)  ; DerivCoarseX(value)
  %4155 = call float @dx.op.unary.f32(i32 84, float %4118)  ; DerivCoarseY(value)
  %4156 = call float @dx.op.unary.f32(i32 84, float %4119)  ; DerivCoarseY(value)
  %4157 = call float @dx.op.unary.f32(i32 84, float %4120)  ; DerivCoarseY(value)
  %4158 = fcmp fast ole float %279, %4136
  %4159 = fmul fast float %4135, %4133
  %4160 = fcmp fast ole float %279, %4159
  %4161 = select i1 %4160, float %4120, float %4118
  %4162 = select i1 %4160, float %4118, float %4119
  %4163 = select i1 %4158, float %4119, float %4161
  %4164 = select i1 %4158, float %4120, float %4162
  %4165 = select i1 %4160, float %4154, float %4152
  %4166 = select i1 %4160, float %4152, float %4153
  %4167 = select i1 %4158, float %4153, float %4165
  %4168 = select i1 %4158, float %4154, float %4166
  %4169 = select i1 %4160, float %4157, float %4155
  %4170 = select i1 %4160, float %4155, float %4156
  %4171 = select i1 %4158, float %4156, float %4169
  %4172 = select i1 %4158, float %4157, float %4170
  %4173 = call float @dx.op.unary.f32(i32 27, float %4163)  ; Round_ni(value)
  %4174 = call float @dx.op.unary.f32(i32 27, float %4164)  ; Round_ni(value)
  %4175 = fptosi float %4173 to i32
  %4176 = fptosi float %4174 to i32
  %4177 = xor i32 %4176, %4175
  %4178 = sitofp i32 %4177 to float
  %4179 = fptosi float %4178 to i32
  %4180 = sitofp i32 %4179 to float
  %4181 = fmul fast float %4180, 0x3FE3C6EF40000000
  %4182 = frem fast float %4173, 2.560000e+02
  %4183 = frem fast float %4174, 2.560000e+02
  %4184 = fptoui float %4182 to i32
  %4185 = fptoui float %4183 to i32
  %4186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4184, i32 %4185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = fadd fast float %4187, %4181
  %4191 = fadd fast float %4188, %4181
  %4192 = fadd fast float %4189, %4181
  %4193 = call float @dx.op.unary.f32(i32 22, float %4190)  ; Frc(value)
  %4194 = call float @dx.op.unary.f32(i32 22, float %4191)  ; Frc(value)
  %4195 = call float @dx.op.unary.f32(i32 22, float %4192)  ; Frc(value)
  %4196 = fmul fast float %4195, 0x401921FB60000000
  %4197 = call float @dx.op.unary.f32(i32 13, float %4196)  ; Sin(value)
  %4198 = call float @dx.op.unary.f32(i32 12, float %4196)  ; Cos(value)
  %4199 = fsub fast float -0.000000e+00, %4198
  %4200 = fmul fast float %4198, %4163
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4164, float %4200)  ; FMad(a,b,c)
  %4202 = fmul fast float %4197, %4163
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4164, float %4202)  ; FMad(a,b,c)
  %4204 = fadd fast float %4201, %4193
  %4205 = fadd fast float %4203, %4194
  %4206 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4207 = bitcast float %4206 to i32
  %4208 = icmp eq i32 %4207, 0
  br i1 %4208, label %4247, label %4209

; <label>:4209                                    ; preds = %4112
  %4210 = add i32 %4207, 0
  %4211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4212 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4211, %dx.types.Handle %108, float %4204, float %4205, float undef, float undef, i32 0, i32 0, i32 undef, float %4167, float %4168, float undef, float %4171, float %4172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4216 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4217 = fsub fast float 1.000000e+00, %3822
  %4218 = call float @dx.op.binary.f32(i32 35, float %4217, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4219 = bitcast float %3822 to i32
  %4220 = sitofp i32 %4219 to float
  %4221 = fadd fast float %4220, 0xC1CFBF8940000000
  %4222 = fmul fast float %4216, %4221
  %4223 = fadd fast float %4222, 0x41CFBF8940000000
  %4224 = fptosi float %4223 to i32
  %4225 = bitcast i32 %4224 to float
  %4226 = bitcast float %4218 to i32
  %4227 = sitofp i32 %4226 to float
  %4228 = fadd fast float %4227, 0xC1CFBF8940000000
  %4229 = fmul fast float %4228, %4216
  %4230 = fadd fast float %4229, 0x41CFBF8940000000
  %4231 = fptosi float %4230 to i32
  %4232 = bitcast i32 %4231 to float
  %4233 = fmul fast float %4225, %4215
  %4234 = fmul fast float %4232, %4215
  %4235 = fsub fast float %4218, %4233
  %4236 = fadd fast float %4234, %4218
  %4237 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = fsub fast float %4213, %4237
  %4240 = fsub fast float %4238, %4237
  %4241 = bitcast float %4240 to i32
  %4242 = sub nsw i32 2129859010, %4241
  %4243 = bitcast i32 %4242 to float
  %4244 = fmul fast float %4243, %4239
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = fcmp fast olt float %4245, 0x3F70101020000000
  br i1 %4246, label %4385, label %4247

; <label>:4247                                    ; preds = %4209, %4112
  %4248 = phi float [ %4245, %4209 ], [ %3822, %4112 ]
  %4249 = fmul fast float %4248, %4115
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4252 = extractvalue %dx.types.CBufRet.i32 %4250, 0
  %4253 = add i32 %4252, 0
  %4254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4255 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4254, %dx.types.Handle %107, float %4204, float %4205, float undef, float undef, i32 0, i32 0, i32 undef, float %4167, float %4168, float undef, float %4171, float %4172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4259 = extractvalue %dx.types.ResRet.f32 %4255, 3
  %4260 = and i32 %4251, 255
  %4261 = uitofp i32 %4260 to float
  %4262 = lshr i32 %4251, 8
  %4263 = and i32 %4262, 255
  %4264 = uitofp i32 %4263 to float
  %4265 = fmul fast float %4259, %4261
  %4266 = fadd fast float %4265, %4264
  %4267 = fmul fast float %4266, 0x3F70101000000000
  %4268 = fadd fast float %4267, 0xBFB99999A0000000
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = fmul fast float %4269, 0x3FF1C71C80000000
  %4271 = call float @dx.op.binary.f32(i32 36, float %4267, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4272 = fsub fast float 1.000000e+00, %4270
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fmul fast float %4273, %4256
  %4275 = fmul fast float %4273, %4257
  %4276 = fmul fast float %4273, %4258
  %4277 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = fmul fast float %4270, %4256
  %4281 = fmul fast float %4270, %4257
  %4282 = fmul fast float %4270, %4258
  %4283 = fadd fast float %4280, %4271
  %4284 = fadd fast float %4281, %4271
  %4285 = fadd fast float %4282, %4271
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.i32 %4289, 3
  %4291 = extractvalue %dx.types.CBufRet.i32 %4289, 2
  %4292 = add i32 %4291, 0
  %4293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4293, %dx.types.Handle %107, float %4204, float %4205, float undef, float undef, i32 0, i32 0, i32 undef, float %4167, float %4168, float undef, float %4171, float %4172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4298 = extractvalue %dx.types.ResRet.f32 %4294, 3
  %4299 = and i32 %4290, 255
  %4300 = uitofp i32 %4299 to float
  %4301 = lshr i32 %4290, 8
  %4302 = and i32 %4301, 255
  %4303 = uitofp i32 %4302 to float
  %4304 = lshr i32 %4290, 16
  %4305 = and i32 %4304, 255
  %4306 = uitofp i32 %4305 to float
  %4307 = fmul fast float %4306, 0x3F70101000000000
  %4308 = fmul fast float %4295, %4300
  %4309 = fadd fast float %4308, %4303
  %4310 = fmul fast float %4309, 0x3F70101000000000
  %4311 = fadd fast float %4296, -5.000000e-01
  %4312 = fadd fast float %4298, -5.000000e-01
  %4313 = fmul fast float %4311, %4307
  %4314 = fmul fast float %4312, %4307
  %4315 = fadd fast float %4313, 5.000000e-01
  %4316 = fadd fast float %4314, 5.000000e-01
  %4317 = fmul fast float %4315, 2.000000e+00
  %4318 = fadd fast float %4317, -1.000000e+00
  %4319 = fmul fast float %4316, 2.000000e+00
  %4320 = fadd fast float %4319, -1.000000e+00
  %4321 = fadd fast float %4318, %4320
  %4322 = fmul fast float %4321, 5.000000e-01
  %4323 = fsub fast float %4318, %4320
  %4324 = fmul fast float %4323, 5.000000e-01
  %4325 = call float @dx.op.unary.f32(i32 6, float %4322)  ; FAbs(value)
  %4326 = fsub fast float 1.000000e+00, %4325
  %4327 = call float @dx.op.unary.f32(i32 6, float %4324)  ; FAbs(value)
  %4328 = fsub fast float %4326, %4327
  %4329 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4324, float %4328, float %4322, float %4324, float %4328)  ; Dot3(ax,ay,az,bx,by,bz)
  %4330 = call float @dx.op.unary.f32(i32 25, float %4329)  ; Rsqrt(value)
  %4331 = fmul fast float %4322, %4330
  %4332 = fmul fast float %4324, %4330
  %4333 = select i1 %4160, i32 %4150, i32 %4151
  %4334 = select i1 %4158, i32 %4149, i32 %4333
  %4335 = sitofp i32 %4334 to float
  %4336 = fmul fast float %4328, %4335
  %4337 = fmul fast float %4336, %4330
  %4338 = select i1 %4160, float %4337, float %4332
  %4339 = select i1 %4160, float %4332, float %4337
  %4340 = select i1 %4158, float %4337, float %4331
  %4341 = select i1 %4158, float %4332, float %4338
  %4342 = select i1 %4158, float %4331, float %4339
  %4343 = fsub fast float %4277, %4101
  %4344 = fsub fast float %4278, %4102
  %4345 = fsub fast float %4279, %4103
  %4346 = fmul fast float %4343, %4249
  %4347 = fmul fast float %4344, %4249
  %4348 = fmul fast float %4345, %4249
  %4349 = fadd fast float %4346, %4101
  %4350 = fadd fast float %4347, %4102
  %4351 = fadd fast float %4348, %4103
  %4352 = fsub fast float %4286, %4104
  %4353 = fsub fast float %4287, %4105
  %4354 = fsub fast float %4288, %4106
  %4355 = fmul fast float %4352, %4249
  %4356 = fmul fast float %4353, %4249
  %4357 = fmul fast float %4354, %4249
  %4358 = fadd fast float %4355, %4104
  %4359 = fadd fast float %4356, %4105
  %4360 = fadd fast float %4357, %4106
  %4361 = fadd fast float %4340, %4107
  %4362 = fadd fast float %4341, %4108
  %4363 = fadd fast float %4342, %4109
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4361, float %4362, float %4363, float %4361, float %4362, float %4363)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = call float @dx.op.unary.f32(i32 25, float %4364)  ; Rsqrt(value)
  %4366 = fmul fast float %4361, %4365
  %4367 = fmul fast float %4362, %4365
  %4368 = fmul fast float %4363, %4365
  %4369 = fsub fast float %4366, %4107
  %4370 = fsub fast float %4367, %4108
  %4371 = fsub fast float %4368, %4109
  %4372 = fmul fast float %4369, %4249
  %4373 = fmul fast float %4370, %4249
  %4374 = fmul fast float %4371, %4249
  %4375 = fadd fast float %4372, %4107
  %4376 = fadd fast float %4373, %4108
  %4377 = fadd fast float %4374, %4109
  %4378 = call float @dx.op.binary.f32(i32 36, float %4111, float %4297)  ; FMin(a,b)
  %4379 = fsub fast float %4378, %4111
  %4380 = fmul fast float %4379, %4249
  %4381 = fadd fast float %4380, %4111
  %4382 = fsub fast float %4310, %4110
  %4383 = fmul fast float %4382, %4249
  %4384 = fadd fast float %4383, %4110
  br label %4385

; <label>:4385                                    ; preds = %4247, %4209, %4100, %3816
  %4386 = phi float [ %4349, %4247 ], [ %4101, %4209 ], [ %4101, %4100 ], [ %3425, %3816 ]
  %4387 = phi float [ %4350, %4247 ], [ %4102, %4209 ], [ %4102, %4100 ], [ %3426, %3816 ]
  %4388 = phi float [ %4351, %4247 ], [ %4103, %4209 ], [ %4103, %4100 ], [ %3427, %3816 ]
  %4389 = phi float [ %4358, %4247 ], [ %4104, %4209 ], [ %4104, %4100 ], [ %3410, %3816 ]
  %4390 = phi float [ %4359, %4247 ], [ %4105, %4209 ], [ %4105, %4100 ], [ %3411, %3816 ]
  %4391 = phi float [ %4360, %4247 ], [ %4106, %4209 ], [ %4106, %4100 ], [ %3412, %3816 ]
  %4392 = phi float [ %4375, %4247 ], [ %4107, %4209 ], [ %4107, %4100 ], [ %3373, %3816 ]
  %4393 = phi float [ %4376, %4247 ], [ %4108, %4209 ], [ %4108, %4100 ], [ %3374, %3816 ]
  %4394 = phi float [ %4377, %4247 ], [ %4109, %4209 ], [ %4109, %4100 ], [ %3375, %3816 ]
  %4395 = phi float [ %4384, %4247 ], [ %4110, %4209 ], [ %4110, %4100 ], [ %3413, %3816 ]
  %4396 = phi float [ %4381, %4247 ], [ %4111, %4209 ], [ %4111, %4100 ], [ %3385, %3816 ]
  %4397 = fcmp fast une float %3820, 0.000000e+00
  br i1 %4397, label %4398, label %4567

; <label>:4398                                    ; preds = %4385
  %4399 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %4400 = call float @dx.op.unary.f32(i32 25, float %4399)  ; Rsqrt(value)
  %4401 = fmul fast float %198, %4400
  %4402 = fsub fast float -0.000000e+00, %4401
  %4403 = fmul fast float %199, %4400
  %4404 = fsub fast float -0.000000e+00, %4403
  %4405 = fmul fast float %200, %4400
  %4406 = fsub fast float -0.000000e+00, %4405
  %4407 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4404, float %4406, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = fmul fast float %3820, 2.500000e+00
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fmul fast float %3820, 0x4013FFFFE0000000
  %4411 = fadd fast float %4410, 0xBFFFFFFFE0000000
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = fmul fast float %3820, 0x4004000020000000
  %4414 = fadd fast float %4413, 0xBFF8000040000000
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %3392, 1.000000e+01
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = fmul fast float %4417, 2.000000e+00
  %4419 = fsub fast float 3.000000e+00, %4418
  %4420 = fmul fast float %4417, %4417
  %4421 = fmul fast float %4420, %4419
  %4422 = fsub fast float 1.000000e+00, %4421
  %4423 = fsub fast float 0x3FE3333340000000, %4395
  %4424 = fmul fast float %4423, 0x400AAAAAA0000000
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %4422, %4425
  %4427 = fmul fast float %4386, 0x3FEA2B8620000000
  %4428 = fmul fast float %4387, 0x3FEA2B8620000000
  %4429 = fmul fast float %4388, 0x3FEA2B8620000000
  %4430 = fadd fast float %4427, 0x3FC81DFBA0000000
  %4431 = fmul fast float %4430, %4386
  %4432 = fadd fast float %4431, 0x3F910E6020000000
  %4433 = fadd fast float %4428, 0x3FC81DFBA0000000
  %4434 = fmul fast float %4433, %4387
  %4435 = fadd fast float %4434, 0x3F910E6020000000
  %4436 = fadd fast float %4429, 0x3FC81DFBA0000000
  %4437 = fmul fast float %4436, %4388
  %4438 = fadd fast float %4437, 0x3F910E6020000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = fsub fast float %4439, %4386
  %4443 = fsub fast float %4440, %4387
  %4444 = fsub fast float %4441, %4388
  %4445 = fmul fast float %4442, %4409
  %4446 = fmul fast float %4445, %4426
  %4447 = fmul fast float %4443, %4409
  %4448 = fmul fast float %4447, %4426
  %4449 = fmul fast float %4444, %4409
  %4450 = fmul fast float %4449, %4426
  %4451 = fadd fast float %4446, %4386
  %4452 = fadd fast float %4448, %4387
  %4453 = fadd fast float %4450, %4388
  %4454 = fmul fast float %4396, %4396
  %4455 = fmul fast float %4454, %4454
  %4456 = fadd fast float %4412, 1.000000e+00
  %4457 = fsub fast float %4456, %4426
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fsub fast float 1.000000e+00, %4455
  %4462 = call float @dx.op.binary.f32(i32 36, float %4458, float %4461)  ; FMin(a,b)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4464 = call float @dx.op.binary.f32(i32 35, float %4462, float %4463)  ; FMax(a,b)
  %4465 = fadd fast float %4460, 0xBFE4CCCCC0000000
  %4466 = fmul fast float %4465, 0x4006DB6DA0000000
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fmul fast float %4467, 2.000000e+00
  %4469 = fsub fast float 3.000000e+00, %4468
  %4470 = bitcast float %4389 to i32
  %4471 = ashr i32 %4470, 1
  %4472 = add nsw i32 %4471, 532487669
  %4473 = bitcast i32 %4472 to float
  %4474 = fsub fast float 1.000000e+00, %4473
  %4475 = bitcast float %4474 to i32
  %4476 = sub nsw i32 2129859010, %4475
  %4477 = bitcast i32 %4476 to float
  %4478 = fmul fast float %4477, 2.000000e+00
  %4479 = bitcast float %4390 to i32
  %4480 = ashr i32 %4479, 1
  %4481 = add nsw i32 %4480, 532487669
  %4482 = bitcast i32 %4481 to float
  %4483 = fsub fast float 1.000000e+00, %4482
  %4484 = bitcast float %4483 to i32
  %4485 = sub nsw i32 2129859010, %4484
  %4486 = bitcast i32 %4485 to float
  %4487 = fmul fast float %4486, 2.000000e+00
  %4488 = bitcast float %4391 to i32
  %4489 = ashr i32 %4488, 1
  %4490 = add nsw i32 %4489, 532487669
  %4491 = bitcast i32 %4490 to float
  %4492 = fsub fast float 1.000000e+00, %4491
  %4493 = bitcast float %4492 to i32
  %4494 = sub nsw i32 2129859010, %4493
  %4495 = bitcast i32 %4494 to float
  %4496 = fmul fast float %4495, 2.000000e+00
  %4497 = fsub fast float 0x4002A9FBE0000000, %4478
  %4498 = fadd fast float %4478, 0x3FD54FDF00000000
  %4499 = bitcast float %4498 to i32
  %4500 = sub nsw i32 2129859010, %4499
  %4501 = bitcast i32 %4500 to float
  %4502 = fmul fast float %4501, %4497
  %4503 = fmul fast float %4502, %4502
  %4504 = fsub fast float 0x4002A9FBE0000000, %4487
  %4505 = fadd fast float %4487, 0x3FD54FDF00000000
  %4506 = bitcast float %4505 to i32
  %4507 = sub nsw i32 2129859010, %4506
  %4508 = bitcast i32 %4507 to float
  %4509 = fmul fast float %4508, %4504
  %4510 = fmul fast float %4509, %4509
  %4511 = fsub fast float 0x4002A9FBE0000000, %4496
  %4512 = fadd fast float %4496, 0x3FD54FDF00000000
  %4513 = bitcast float %4512 to i32
  %4514 = sub nsw i32 2129859010, %4513
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4515, %4511
  %4517 = fmul fast float %4516, %4516
  %4518 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4503)  ; FMax(a,b)
  %4519 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4510)  ; FMax(a,b)
  %4520 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4517)  ; FMax(a,b)
  %4521 = fsub fast float 1.000000e+00, %4407
  %4522 = fadd fast float %4521, %4422
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = fsub fast float 1.000000e+00, %3801
  %4525 = fmul fast float %4464, %4524
  %4526 = fmul fast float %4467, %4467
  %4527 = fmul fast float %4526, %4525
  %4528 = fmul fast float %4527, %4469
  %4529 = fmul fast float %4524, 0xBFE99999A0000000
  %4530 = fmul fast float %4529, %4409
  %4531 = fmul fast float %4530, %4426
  %4532 = fadd fast float %4531, 1.000000e+00
  %4533 = fadd fast float %4395, -1.000000e+00
  %4534 = fmul fast float %4532, %4533
  %4535 = fadd fast float %4534, 1.000000e+00
  %4536 = fsub fast float %4518, %4389
  %4537 = fsub fast float %4519, %4390
  %4538 = fsub fast float %4520, %4391
  %4539 = fmul fast float %4528, %4536
  %4540 = fmul fast float %4528, %4537
  %4541 = fmul fast float %4528, %4538
  %4542 = fadd fast float %4539, %4389
  %4543 = fadd fast float %4540, %4390
  %4544 = fadd fast float %4541, %4391
  %4545 = fsub fast float %118, %4392
  %4546 = fsub fast float %119, %4393
  %4547 = fsub fast float %120, %4394
  %4548 = fmul fast float %4528, %4545
  %4549 = fmul fast float %4528, %4546
  %4550 = fmul fast float %4528, %4547
  %4551 = fadd fast float %4548, %4392
  %4552 = fadd fast float %4549, %4393
  %4553 = fadd fast float %4550, %4394
  %4554 = fmul fast float %4528, %4523
  %4555 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = fmul fast float %4554, %4556
  %4558 = fadd fast float %4557, %4555
  %4559 = fsub fast float 1.000000e+00, %4396
  %4560 = fmul fast float %4528, %4559
  %4561 = fadd fast float %4560, %4396
  %4562 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4552, float %4553, float %4551, float %4552, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 25, float %4562)  ; Rsqrt(value)
  %4564 = fmul fast float %4551, %4563
  %4565 = fmul fast float %4552, %4563
  %4566 = fmul fast float %4553, %4563
  br label %4567

; <label>:4567                                    ; preds = %4398, %4385
  %4568 = phi float [ %4451, %4398 ], [ %4386, %4385 ]
  %4569 = phi float [ %4452, %4398 ], [ %4387, %4385 ]
  %4570 = phi float [ %4453, %4398 ], [ %4388, %4385 ]
  %4571 = phi float [ %4542, %4398 ], [ %4389, %4385 ]
  %4572 = phi float [ %4543, %4398 ], [ %4390, %4385 ]
  %4573 = phi float [ %4544, %4398 ], [ %4391, %4385 ]
  %4574 = phi float [ %4564, %4398 ], [ %4392, %4385 ]
  %4575 = phi float [ %4565, %4398 ], [ %4393, %4385 ]
  %4576 = phi float [ %4566, %4398 ], [ %4394, %4385 ]
  %4577 = phi float [ %4558, %4398 ], [ %4395, %4385 ]
  %4578 = phi float [ %4561, %4398 ], [ %4396, %4385 ]
  %4579 = icmp eq i32 %59, 0
  br i1 %4579, label %4610, label %4580

; <label>:4580                                    ; preds = %4567
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4584 = fmul fast float %4582, %111
  %4585 = fmul fast float %4583, %112
  %4586 = fmul fast float %4584, 1.024000e+03
  %4587 = fmul fast float %4585, 1.024000e+03
  %4588 = fadd fast float %4586, -5.120000e+02
  %4589 = fadd fast float %4587, -5.120000e+02
  %4590 = fmul fast float %4584, 0x4081BEDF00000000
  %4591 = fadd fast float %4590, 0xC071BEDF00000000
  %4592 = call float @dx.op.unary.f32(i32 22, float %4591)  ; Frc(value)
  %4593 = fmul fast float %4588, %4592
  %4594 = fadd fast float %4593, %4589
  %4595 = fmul fast float %4585, 0x4073BEBE20000000
  %4596 = fadd fast float %4595, 0xC063BEBE20000000
  %4597 = call float @dx.op.unary.f32(i32 22, float %4596)  ; Frc(value)
  %4598 = fmul fast float %4589, %4597
  %4599 = fadd fast float %4598, %4588
  %4600 = fmul fast float %4594, %4599
  %4601 = call float @dx.op.unary.f32(i32 22, float %4600)  ; Frc(value)
  %4602 = add i32 %310, 12
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = and i32 %4604, 255
  %4606 = uitofp i32 %4605 to float
  %4607 = fmul fast float %4606, 0x3F70101020000000
  %4608 = fcmp fast olt float %4601, %4607
  br i1 %4608, label %4609, label %4610

; <label>:4609                                    ; preds = %4580
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4610

; <label>:4610                                    ; preds = %4609, %4580, %4567
  %4611 = fsub fast float -0.000000e+00, %200
  %4612 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 25, float %4612)  ; Rsqrt(value)
  %4614 = fmul fast float %4613, %198
  %4615 = fmul fast float %4613, %199
  %4616 = fmul fast float %4613, %200
  %4617 = fsub fast float -0.000000e+00, %4614
  %4618 = fsub fast float -0.000000e+00, %4615
  %4619 = fsub fast float -0.000000e+00, %4616
  %4620 = select i1 %268, float 0.000000e+00, float %4573
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %4617, float %4618, float %4619)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fmul fast float %4623, 2.000000e+00
  %4625 = fmul fast float %4624, %4574
  %4626 = fmul fast float %4624, %4575
  %4627 = fmul fast float %4624, %4576
  %4628 = fsub fast float %4614, %4625
  %4629 = fsub fast float %4615, %4626
  %4630 = fsub fast float %4616, %4627
  %4631 = call float @dx.op.binary.f32(i32 36, float %4578, float 1.000000e+00)  ; FMin(a,b)
  %4632 = fsub fast float 1.000000e+00, %4578
  %4633 = bitcast float %4632 to i32
  %4634 = sub nsw i32 2129859010, %4633
  %4635 = bitcast i32 %4634 to float
  %4636 = fsub fast float 1.000000e+00, %82
  %4637 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4639 = fdiv fast float %4636, %4638
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = fmul fast float %4641, 5.000000e-01
  %4643 = fadd fast float %4642, 5.000000e-01
  %4644 = fmul fast float %4643, %82
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4646, %4639
  %4648 = fadd fast float %4644, %4647
  %4649 = fsub fast float 5.000000e-01, %4642
  %4650 = fmul fast float %4649, %4568
  %4651 = fmul fast float %4649, %4569
  %4652 = fmul fast float %4649, %4570
  %4653 = fadd fast float %4648, %4650
  %4654 = fadd fast float %4648, %4651
  %4655 = fadd fast float %4648, %4652
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = fmul fast float %4657, 5.000000e-01
  %4659 = fadd fast float %4658, 5.000000e-01
  %4660 = fmul fast float %4659, %82
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4662, %4639
  %4664 = fadd fast float %4660, %4663
  %4665 = fsub fast float 5.000000e-01, %4658
  %4666 = fmul fast float %4665, %4568
  %4667 = fmul fast float %4665, %4569
  %4668 = fmul fast float %4665, %4570
  %4669 = fadd fast float %4664, %4666
  %4670 = fadd fast float %4664, %4667
  %4671 = fadd fast float %4664, %4668
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 0
  %4674 = call float @dx.op.binary.f32(i32 36, float %4568, float %4673)  ; FMin(a,b)
  %4675 = fsub fast float 1.000000e+00, %4631
  %4676 = fmul fast float %4674, %4675
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = call float @dx.op.binary.f32(i32 36, float %4569, float %4673)  ; FMin(a,b)
  %4682 = fmul fast float %4681, %4675
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = call float @dx.op.binary.f32(i32 36, float %4570, float %4673)  ; FMin(a,b)
  %4688 = fmul fast float %4687, %4675
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4631, %83
  %4694 = fmul fast float %4693, %4653
  %4695 = fmul fast float %4694, %4680
  %4696 = fmul fast float %4631, %84
  %4697 = fmul fast float %4696, %4654
  %4698 = fmul fast float %4697, %4686
  %4699 = fmul fast float %4631, %85
  %4700 = fmul fast float %4699, %4655
  %4701 = fmul fast float %4700, %4692
  %4702 = call float @dx.op.binary.f32(i32 36, float %4571, float %4673)  ; FMin(a,b)
  %4703 = fmul fast float %4702, %4675
  %4704 = fsub fast float 1.000000e+00, %4703
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = call float @dx.op.binary.f32(i32 36, float %4572, float %4673)  ; FMin(a,b)
  %4709 = fmul fast float %4708, %4675
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = call float @dx.op.binary.f32(i32 36, float %4620, float %4673)  ; FMin(a,b)
  %4715 = fmul fast float %4714, %4675
  %4716 = fsub fast float 1.000000e+00, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = fmul fast float %4693, %4669
  %4721 = fmul fast float %4720, %4707
  %4722 = fmul fast float %4696, %4670
  %4723 = fmul fast float %4722, %4713
  %4724 = fmul fast float %4699, %4671
  %4725 = fmul fast float %4724, %4719
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4698, float %4701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = select i1 %268, float 0.000000e+00, float %4695
  %4728 = select i1 %268, float %4726, float %4698
  %4729 = select i1 %268, float 0.000000e+00, float %4701
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4723, float %4725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = select i1 %268, float 0.000000e+00, float %4721
  %4732 = select i1 %268, float %4730, float %4723
  %4733 = select i1 %268, float 0.000000e+00, float %4725
  %4734 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4735 = fmul fast float %4734, %4727
  %4736 = fmul fast float %4734, %4728
  %4737 = fmul fast float %4729, %4734
  %4738 = fmul fast float %4622, 9.843750e-01
  %4739 = fmul fast float %4577, 9.843750e-01
  %4740 = fadd fast float %4738, 7.812500e-03
  %4741 = fadd fast float %4739, 7.812500e-03
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4740, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 2
  %4744 = extractvalue %dx.types.ResRet.f32 %4742, 3
  %4745 = fmul fast float %4743, %4571
  %4746 = fmul fast float %4743, %4572
  %4747 = fmul fast float %4743, %4620
  %4748 = fadd fast float %4745, %4744
  %4749 = fadd fast float %4746, %4744
  %4750 = fadd fast float %4747, %4744
  %4751 = fcmp fast ogt float %3386, 0.000000e+00
  br i1 %4751, label %4752, label %4778

; <label>:4752                                    ; preds = %4610
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %51, float %3386, float %4622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.ResRet.f32 %4753, 2
  %4757 = fadd fast float %4754, -5.000000e-01
  %4758 = fadd fast float %4755, -5.000000e-01
  %4759 = fadd fast float %4756, -5.000000e-01
  %4760 = fsub fast float 1.000000e+00, %4571
  %4761 = fsub fast float 1.000000e+00, %4572
  %4762 = fsub fast float 1.000000e+00, %4620
  %4763 = fmul fast float %4571, 4.000000e+00
  %4764 = fmul fast float %4763, %4760
  %4765 = fmul fast float %4764, %4757
  %4766 = fmul fast float %4572, 4.000000e+00
  %4767 = fmul fast float %4766, %4761
  %4768 = fmul fast float %4767, %4758
  %4769 = fmul fast float %4620, 4.000000e+00
  %4770 = fmul fast float %4769, %4762
  %4771 = fmul fast float %4770, %4759
  %4772 = fadd fast float %4765, %4748
  %4773 = fadd fast float %4768, %4749
  %4774 = fadd fast float %4771, %4750
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  br label %4778

; <label>:4778                                    ; preds = %4752, %4610
  %4779 = phi float [ %4775, %4752 ], [ %4748, %4610 ]
  %4780 = phi float [ %4776, %4752 ], [ %4749, %4610 ]
  %4781 = phi float [ %4777, %4752 ], [ %4750, %4610 ]
  %4782 = call float @dx.op.binary.f32(i32 35, float %4780, float %4781)  ; FMax(a,b)
  %4783 = call float @dx.op.binary.f32(i32 35, float %4779, float %4782)  ; FMax(a,b)
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = fmul fast float %198, %198
  %4786 = fmul fast float %199, %199
  %4787 = fadd fast float %4786, %4785
  %4788 = fmul fast float %200, %200
  %4789 = fadd fast float %4787, %4788
  %4790 = call float @dx.op.unary.f32(i32 24, float %4789)  ; Sqrt(value)
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4793 = fsub fast float %4790, %4792
  %4794 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4795 = fmul fast float %4793, %4794
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4791, 3
  %4799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %4800 = extractvalue %dx.types.ResRet.i32 %4799, 0
  %4801 = and i32 %4800, 4194304
  %4802 = icmp ne i32 %4801, 0
  %4803 = and i32 %4800, 8388608
  %4804 = icmp ne i32 %4803, 0
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.CBufRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.CBufRet.f32 %4805, 2
  %4809 = extractvalue %dx.types.CBufRet.f32 %4805, 3
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.CBufRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.CBufRet.f32 %4810, 3
  %4815 = select i1 %4802, float %4806, float %4811
  %4816 = select i1 %4802, float %4807, float %4812
  %4817 = select i1 %4802, float %4808, float %4813
  %4818 = select i1 %4802, float %4809, float %4814
  %4819 = select i1 %4804, float 0.000000e+00, float %4818
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.CBufRet.f32 %4820, 1
  %4823 = select i1 %4802, float %4821, float %4822
  %4824 = select i1 %4804, float 0.000000e+00, float %4823
  %4825 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4826 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4827 = select i1 %4802, float %4825, float %4826
  %4828 = select i1 %4804, float 0.000000e+00, float %4827
  %4829 = fmul fast float %4796, %64
  %4830 = fmul fast float %4829, %4797
  %4831 = fmul fast float %4830, %4824
  %4832 = fmul fast float %4829, %4798
  %4833 = fmul fast float %4832, %4828
  %4834 = fadd fast float %4833, 1.000000e+00
  %4835 = fmul fast float %4784, %4735
  %4836 = fmul fast float %4835, %4834
  %4837 = fmul fast float %4784, %4736
  %4838 = fmul fast float %4837, %4834
  %4839 = fmul fast float %4784, %4737
  %4840 = fmul fast float %4839, %4834
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = fcmp fast ogt float %4841, 0x3E7FF19E20000000
  %4843 = fdiv fast float 1.000000e+00, %4841
  %4844 = select i1 %4842, float %4843, float 0.000000e+00
  %4845 = fmul fast float %4844, %4568
  %4846 = fmul fast float %4844, %4569
  %4847 = fmul fast float %4844, %4570
  %4848 = fadd fast float %4845, -1.000000e+00
  %4849 = fadd fast float %4846, -1.000000e+00
  %4850 = fadd fast float %4847, -1.000000e+00
  %4851 = fmul fast float %4848, 5.000000e-01
  %4852 = fmul fast float %4849, 5.000000e-01
  %4853 = fmul fast float %4850, 5.000000e-01
  %4854 = fadd fast float %4851, 1.000000e+00
  %4855 = fadd fast float %4852, 1.000000e+00
  %4856 = fadd fast float %4853, 1.000000e+00
  %4857 = fadd fast float %4831, %3387
  %4858 = fsub fast float %4815, %4854
  %4859 = fsub fast float %4816, %4855
  %4860 = fsub fast float %4817, %4856
  %4861 = fmul fast float %4858, %4819
  %4862 = fmul fast float %4859, %4819
  %4863 = fmul fast float %4860, %4819
  %4864 = fadd fast float %4861, %4854
  %4865 = fadd fast float %4862, %4855
  %4866 = fadd fast float %4863, %4856
  %4867 = fmul fast float %4779, %4731
  %4868 = fmul fast float %4780, %4732
  %4869 = fmul fast float %4781, %4733
  %4870 = fsub fast float 1.000000e+00, %4622
  %4871 = bitcast float %4870 to i32
  %4872 = sitofp i32 %4871 to float
  %4873 = fmul fast float %4872, 5.000000e+00
  %4874 = fadd fast float %4873, 0xC1EFBF8940000000
  %4875 = fptosi float %4874 to i32
  %4876 = bitcast i32 %4875 to float
  %4877 = fmul fast float %4857, %4876
  %4878 = fmul fast float %4835, %4877
  %4879 = fmul fast float %4878, %4864
  %4880 = fmul fast float %4837, %4877
  %4881 = fmul fast float %4880, %4865
  %4882 = fmul fast float %4839, %4877
  %4883 = fmul fast float %4882, %4866
  %4884 = fmul fast float %4836, %3383
  %4885 = fmul fast float %4838, %3383
  %4886 = fmul fast float %4840, %3383
  %4887 = fadd fast float %4867, %3379
  %4888 = fadd fast float %4887, %4879
  %4889 = fmul fast float %4888, %3383
  %4890 = fadd fast float %4868, %3380
  %4891 = fadd fast float %4890, %4881
  %4892 = fmul fast float %4891, %3383
  %4893 = fadd fast float %4869, %3381
  %4894 = fadd fast float %4893, %4883
  %4895 = fmul fast float %4894, %3383
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4898 = fcmp fast oeq float %4897, 0.000000e+00
  br i1 %4898, label %5983, label %4899

; <label>:4899                                    ; preds = %4778
  %4900 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4901 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4903, 0
  %4905 = extractvalue %dx.types.CBufRet.f32 %4903, 1
  %4906 = extractvalue %dx.types.CBufRet.f32 %4903, 2
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4904, float %4905, float %4906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = select i1 %268, float %4908, float %4904
  %4912 = select i1 %268, float %4910, float %4905
  %4913 = select i1 %268, float %4909, float %4906
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4916 = fmul fast float %4915, %118
  %4917 = fmul fast float %4915, %119
  %4918 = fmul fast float %4915, %120
  %4919 = fadd fast float %4916, %198
  %4920 = fadd fast float %4917, %199
  %4921 = fadd fast float %4918, %200
  %4922 = fcmp fast olt float %4897, 0.000000e+00
  br i1 %4922, label %5562, label %4923

; <label>:4923                                    ; preds = %4899
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4928 = extractvalue %dx.types.CBufRet.f32 %4924, 3
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.CBufRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4933 = extractvalue %dx.types.CBufRet.f32 %4929, 3
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4936 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4937 = extractvalue %dx.types.CBufRet.f32 %4934, 2
  %4938 = extractvalue %dx.types.CBufRet.f32 %4934, 3
  %4939 = fmul fast float %4925, %4919
  %4940 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4926, float %4939)  ; FMad(a,b,c)
  %4941 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4927, float %4940)  ; FMad(a,b,c)
  %4942 = fadd fast float %4941, %4928
  %4943 = fmul fast float %4930, %4919
  %4944 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4931, float %4943)  ; FMad(a,b,c)
  %4945 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4932, float %4944)  ; FMad(a,b,c)
  %4946 = fadd fast float %4945, %4933
  %4947 = fmul fast float %4935, %4919
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4936, float %4947)  ; FMad(a,b,c)
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4937, float %4948)  ; FMad(a,b,c)
  %4950 = fadd fast float %4949, %4938
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = fcmp fast une float %4952, 0.000000e+00
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.CBufRet.f32 %4954, 1
  %4957 = extractvalue %dx.types.CBufRet.f32 %4954, 3
  %4958 = fmul fast float %4957, %4942
  %4959 = fmul fast float %4957, %4946
  %4960 = fadd fast float %4958, %4955
  %4961 = fadd fast float %4959, %4956
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.CBufRet.f32 %4962, 3
  %4966 = fmul fast float %4965, %4942
  %4967 = fmul fast float %4965, %4946
  %4968 = fadd fast float %4966, %4963
  %4969 = fadd fast float %4967, %4964
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 1
  %4972 = fsub fast float %4971, %4950
  %4973 = extractvalue %dx.types.CBufRet.f32 %4970, 2
  %4974 = fmul fast float %4972, %4973
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  br i1 %4953, label %5037, label %4977

; <label>:4977                                    ; preds = %4923
  %4978 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4981 = fadd fast float %4980, %4978
  %4982 = fcmp fast ogt float %4981, 0.000000e+00
  br i1 %4982, label %4983, label %5007

; <label>:4983                                    ; preds = %4977
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4987 = fsub fast float %4968, %4985
  %4988 = fsub fast float %4969, %4986
  %4989 = fcmp fast olt float %4987, 0.000000e+00
  %4990 = fcmp fast olt float %4988, 0.000000e+00
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4994 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4995 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %4996 = select i1 %4989, float %4992, float %4994
  %4997 = select i1 %4990, float %4993, float %4995
  %4998 = fmul fast float %4996, %4987
  %4999 = fmul fast float %4997, %4988
  %5000 = call float @dx.op.unary.f32(i32 6, float %4998)  ; FAbs(value)
  %5001 = call float @dx.op.unary.f32(i32 6, float %4999)  ; FAbs(value)
  %5002 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %5003 = call float @dx.op.binary.f32(i32 35, float %5000, float %5001)  ; FMax(a,b)
  %5004 = fsub fast float %5002, %5003
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fmul fast float %5005, %4976
  br label %5007

; <label>:5007                                    ; preds = %4983, %4977
  %5008 = phi float [ %5006, %4983 ], [ 0.000000e+00, %4977 ]
  %5009 = extractvalue %dx.types.CBufRet.f32 %4954, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %5011 = fadd fast float %5010, %5009
  %5012 = fcmp fast ogt float %5011, 0.000000e+00
  br i1 %5012, label %5013, label %5037

; <label>:5013                                    ; preds = %5007
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = fsub fast float %4960, %5015
  %5018 = fsub fast float %4961, %5016
  %5019 = fcmp fast olt float %5017, 0.000000e+00
  %5020 = fcmp fast olt float %5018, 0.000000e+00
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.CBufRet.f32 %5021, 3
  %5026 = select i1 %5019, float %5022, float %5024
  %5027 = select i1 %5020, float %5023, float %5025
  %5028 = fmul fast float %5026, %5017
  %5029 = fmul fast float %5027, %5018
  %5030 = call float @dx.op.unary.f32(i32 6, float %5028)  ; FAbs(value)
  %5031 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5032 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %5033 = call float @dx.op.binary.f32(i32 35, float %5030, float %5031)  ; FMax(a,b)
  %5034 = fsub fast float %5032, %5033
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fmul fast float %5035, %4976
  br label %5037

; <label>:5037                                    ; preds = %5013, %5007, %4923
  %5038 = phi float [ 0.000000e+00, %4923 ], [ %5036, %5013 ], [ 0.000000e+00, %5007 ]
  %5039 = phi float [ 0.000000e+00, %4923 ], [ %5008, %5013 ], [ %5008, %5007 ]
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = fsub fast float %4942, %5044
  %5047 = fsub fast float %4946, %5045
  %5048 = fcmp fast olt float %5046, 0.000000e+00
  %5049 = fcmp fast olt float %5047, 0.000000e+00
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.CBufRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5054 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5055 = select i1 %5048, float %5051, float %5053
  %5056 = select i1 %5049, float %5052, float %5054
  %5057 = fmul fast float %5055, %5046
  %5058 = fmul fast float %5056, %5047
  %5059 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5060 = call float @dx.op.unary.f32(i32 6, float %5058)  ; FAbs(value)
  %5061 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %5062 = call float @dx.op.binary.f32(i32 35, float %5059, float %5060)  ; FMax(a,b)
  %5063 = fsub fast float %5061, %5062
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = call float @dx.op.binary.f32(i32 36, float %5064, float %5042)  ; FMin(a,b)
  %5066 = fmul fast float %5065, %4976
  %5067 = fsub fast float %5038, %5066
  %5068 = fsub fast float %5039, %5038
  %5069 = fsub fast float %5068, %5066
  %5070 = call float @dx.op.binary.f32(i32 35, float %5038, float %5039)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5066, float %5070)  ; FMax(a,b)
  %5072 = fcmp fast olt float %5071, 1.000000e+00
  br i1 %5072, label %5073, label %5471, !dx.controlflow.hints !99

; <label>:5073                                    ; preds = %5037
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5076 = fcmp fast une float %5075, 0.000000e+00
  br i1 %5076, label %5077, label %5471, !dx.controlflow.hints !100

; <label>:5077                                    ; preds = %5073
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.CBufRet.f32 %5078, 2
  %5082 = extractvalue %dx.types.CBufRet.f32 %5078, 3
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.CBufRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5087 = extractvalue %dx.types.CBufRet.f32 %5083, 3
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5092 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5093 = fmul fast float %5079, %4919
  %5094 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %5080, float %5093)  ; FMad(a,b,c)
  %5095 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5081, float %5094)  ; FMad(a,b,c)
  %5096 = fadd fast float %5095, %5082
  %5097 = fmul fast float %5084, %4919
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %5085, float %5097)  ; FMad(a,b,c)
  %5099 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5086, float %5098)  ; FMad(a,b,c)
  %5100 = fadd fast float %5099, %5087
  %5101 = fmul fast float %5089, %4919
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %5090, float %5101)  ; FMad(a,b,c)
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5091, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5103, %5092
  %5105 = fcmp fast oge float %5096, 1.000000e+00
  %5106 = fcmp fast oge float %5100, 1.000000e+00
  %5107 = or i1 %5105, %5106
  %5108 = fcmp fast olt float %5096, 0.000000e+00
  %5109 = fcmp fast olt float %5100, 0.000000e+00
  %5110 = or i1 %5108, %5109
  %5111 = or i1 %5107, %5110
  br i1 %5111, label %5471, label %5112, !dx.controlflow.hints !101

; <label>:5112                                    ; preds = %5077
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.i32 %5117, 2
  %5119 = uitofp i32 %5118 to float
  %5120 = extractvalue %dx.types.CBufRet.i32 %5117, 3
  %5121 = uitofp i32 %5120 to float
  %5122 = extractvalue %dx.types.CBufRet.f32 %5113, 3
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = fsub fast float %5096, %5114
  %5125 = fsub fast float %5100, %5115
  %5126 = fmul fast float %5123, %5124
  %5127 = fmul fast float %5123, %5125
  %5128 = fdiv fast float 1.000000e+00, %4902
  %5129 = fmul fast float %5127, %5128
  %5130 = call float @dx.op.unary.f32(i32 6, float %5129)  ; FAbs(value)
  %5131 = fmul fast float %5116, %4921
  %5132 = fmul fast float %5131, %5123
  %5133 = call float @dx.op.unary.f32(i32 6, float %5132)  ; FAbs(value)
  %5134 = call float @dx.op.unary.f32(i32 6, float %5126)  ; FAbs(value)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5133, float %5130)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5134, float %5135)  ; FMax(a,b)
  %5137 = fmul fast float %5136, 2.000000e+00
  %5138 = call float @dx.op.unary.f32(i32 23, float %5137)  ; Log(value)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5138, float %5119)  ; FMax(a,b)
  %5140 = call float @dx.op.unary.f32(i32 22, float %5139)  ; Frc(value)
  %5141 = fadd fast float %5140, 0xBFEA666660000000
  %5142 = fmul fast float %5141, 8.000000e+00
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 27, float %5139)  ; Round_ni(value)
  %5145 = fadd fast float %5144, %5143
  %5146 = call float @dx.op.binary.f32(i32 36, float %5145, float %5121)  ; FMin(a,b)
  %5147 = call float @dx.op.unary.f32(i32 27, float %5146)  ; Round_ni(value)
  %5148 = fsub fast float -0.000000e+00, %5147
  %5149 = call float @dx.op.unary.f32(i32 21, float %5148)  ; Exp(value)
  %5150 = fmul fast float %5149, %5123
  %5151 = fmul fast float %5150, %5096
  %5152 = fmul fast float %5150, %5100
  %5153 = fmul fast float %5151, 2.500000e-01
  %5154 = fmul fast float %5152, 2.500000e-01
  %5155 = fadd fast float %5153, 5.000000e-01
  %5156 = fadd fast float %5154, 5.000000e-01
  %5157 = fsub fast float %5121, %5119
  %5158 = fptoui float %5157 to i32
  %5159 = add i32 %5158, 320
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %5159)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = fcmp fast une float %5146, %5121
  %5164 = fsub fast float %5096, %5161
  %5165 = fsub fast float %5100, %5162
  %5166 = call float @dx.op.unary.f32(i32 6, float %5164)  ; FAbs(value)
  %5167 = call float @dx.op.unary.f32(i32 6, float %5165)  ; FAbs(value)
  %5168 = fmul fast float %5166, %5150
  %5169 = fmul fast float %5167, %5150
  %5170 = fcmp fast olt float %5168, 1.000000e+00
  %5171 = fcmp fast olt float %5169, 1.000000e+00
  %5172 = and i1 %5170, %5171
  %5173 = or i1 %5163, %5172
  br i1 %5173, label %5174, label %5471, !dx.controlflow.hints !102

; <label>:5174                                    ; preds = %5112
  %5175 = fmul fast float %5152, 5.000000e-01
  %5176 = fmul fast float %5151, 5.000000e-01
  %5177 = fadd fast float %5175, 5.000000e-01
  %5178 = fadd fast float %5176, 5.000000e-01
  %5179 = sitofp i32 %5118 to float
  %5180 = fsub fast float %5146, %5179
  %5181 = call float @dx.op.unary.f32(i32 27, float %5180)  ; Round_ni(value)
  %5182 = call float @dx.op.unary.f32(i32 22, float %5146)  ; Frc(value)
  %5183 = call float @dx.op.unary.f32(i32 22, float %5178)  ; Frc(value)
  %5184 = call float @dx.op.unary.f32(i32 22, float %5177)  ; Frc(value)
  %5185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %50, float %5183, float %5184, float %5181, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = extractvalue %dx.types.ResRet.f32 %5185, 3
  %5190 = fcmp fast ogt float %5182, 0.000000e+00
  br i1 %5190, label %5191, label %5212, !dx.controlflow.hints !103

; <label>:5191                                    ; preds = %5174
  %5192 = fadd fast float %5181, 1.000000e+00
  %5193 = call float @dx.op.unary.f32(i32 22, float %5155)  ; Frc(value)
  %5194 = call float @dx.op.unary.f32(i32 22, float %5156)  ; Frc(value)
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %50, float %5193, float %5194, float %5192, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5199 = extractvalue %dx.types.ResRet.f32 %5195, 3
  %5200 = fsub fast float %5196, %5186
  %5201 = fsub fast float %5197, %5187
  %5202 = fsub fast float %5198, %5188
  %5203 = fsub fast float %5199, %5189
  %5204 = fmul fast float %5200, %5182
  %5205 = fmul fast float %5201, %5182
  %5206 = fmul fast float %5202, %5182
  %5207 = fmul fast float %5203, %5182
  %5208 = fadd fast float %5204, %5186
  %5209 = fadd fast float %5205, %5187
  %5210 = fadd fast float %5206, %5188
  %5211 = fadd fast float %5207, %5189
  br label %5212

; <label>:5212                                    ; preds = %5191, %5174
  %5213 = phi float [ %5208, %5191 ], [ %5186, %5174 ]
  %5214 = phi float [ %5209, %5191 ], [ %5187, %5174 ]
  %5215 = phi float [ %5210, %5191 ], [ %5188, %5174 ]
  %5216 = phi float [ %5211, %5191 ], [ %5189, %5174 ]
  %5217 = fadd fast float %5213, -5.000000e-01
  %5218 = fadd fast float %5215, -5.000000e-01
  %5219 = fmul fast float %5217, 0xBFD5555560000000
  %5220 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5218, float %5219)  ; FMad(a,b,c)
  %5221 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5214, float 0.000000e+00)  ; FMad(a,b,c)
  %5222 = fadd fast float %5221, %5216
  %5223 = fmul fast float %5217, -7.500000e-01
  %5224 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5218, float %5223)  ; FMad(a,b,c)
  %5225 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5214, float 0.000000e+00)  ; FMad(a,b,c)
  %5226 = fadd fast float %5225, %5216
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5234 = fsub fast float %5230, %5220
  %5235 = fsub fast float %5231, %5222
  %5236 = fsub fast float %5232, %5224
  %5237 = fsub fast float %5233, %5226
  %5238 = fmul fast float %5234, %5228
  %5239 = fmul fast float %5235, %5228
  %5240 = fmul fast float %5236, %5228
  %5241 = fmul fast float %5237, %5228
  %5242 = fadd fast float %5238, %5220
  %5243 = fadd fast float %5239, %5222
  %5244 = fadd fast float %5240, %5224
  %5245 = fadd fast float %5241, %5226
  %5246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.i32 %5246, 0
  %5248 = and i32 %5247, 536870911
  %5249 = uitofp i32 %5248 to float
  %5250 = fmul fast float %5249, %5096
  %5251 = fmul fast float %5249, %5100
  %5252 = fptoui float %5250 to i32
  %5253 = fptoui float %5251 to i32
  %5254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.i32 %5254, 0
  %5256 = and i32 %5255, 31
  %5257 = lshr i32 %5252, %5256
  %5258 = lshr i32 %5253, %5256
  %5259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.i32 %5259, 0
  %5261 = and i32 %5260, 31
  %5262 = shl i32 1, %5261
  %5263 = call i32 @dx.op.binary.i32(i32 40, i32 %5262, i32 4)  ; UMin(a,b)
  %5264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.i32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.i32 %5264, 1
  %5267 = icmp eq i32 %5263, 0
  br i1 %5267, label %5309, label %5268

; <label>:5268                                    ; preds = %5212
  br label %5269

; <label>:5269                                    ; preds = %5297, %5268
  %5270 = phi i32 [ %5300, %5297 ], [ 0, %5268 ]
  %5271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.i32 %5271, 0
  %5273 = lshr i32 %5272, 16
  %5274 = and i32 %5273, 31
  %5275 = shl i32 %5258, %5274
  %5276 = add i32 %5275, %5257
  %5277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.i32 %5277, 0
  %5279 = and i32 %5278, 31
  %5280 = shl i32 %5276, %5279
  %5281 = add i32 %5280, %5270
  %5282 = shl i32 %5281, 2
  %5283 = add i32 %5282, 32
  %5284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.i32 %5284, 0
  %5286 = icmp slt i32 %5285, 0
  %5287 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5270
  %5288 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5270
  %5289 = bitcast float* %5287 to i32*
  %5290 = bitcast float* %5288 to i32*
  br i1 %5286, label %5291, label %5297

; <label>:5291                                    ; preds = %5269
  %5292 = and i32 %5285, 1073741823
  %5293 = add nuw nsw i32 %5292, 20
  %5294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.i32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.i32 %5294, 1
  br label %5297

; <label>:5297                                    ; preds = %5291, %5269
  %5298 = phi i32 [ %5295, %5291 ], [ %5265, %5269 ]
  %5299 = phi i32 [ %5296, %5291 ], [ %5266, %5269 ]
  store i32 %5298, i32* %5289, align 4
  store i32 %5299, i32* %5290, align 4
  %5300 = add nuw i32 %5270, 1
  %5301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.i32 %5301, 2
  %5303 = icmp eq i32 %5302, 0
  %5304 = icmp ugt i32 %5285, -1073741825
  %5305 = and i1 %5304, %5303
  %5306 = icmp ult i32 %5300, %5263
  %5307 = and i1 %5305, %5306
  br i1 %5307, label %5269, label %5308

; <label>:5308                                    ; preds = %5297
  br label %5309

; <label>:5309                                    ; preds = %5308, %5212
  %5310 = phi i32 [ 0, %5212 ], [ %5300, %5308 ]
  %5311 = extractvalue %dx.types.CBufRet.f32 %5074, 2
  %5312 = fptoui float %5311 to i32
  %5313 = icmp eq i32 %5312, 0
  br i1 %5313, label %5365, label %5314

; <label>:5314                                    ; preds = %5309
  br label %5315

; <label>:5315                                    ; preds = %5360, %5314
  %5316 = phi i32 [ %5361, %5360 ], [ %5310, %5314 ]
  %5317 = phi i32 [ %5362, %5360 ], [ 0, %5314 ]
  %5318 = lshr i32 %5317, 2
  %5319 = and i32 %5317, 3
  %5320 = add nuw nsw i32 %5318, 83
  %5321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %5320)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.i32 %5321, 0
  %5323 = extractvalue %dx.types.CBufRet.i32 %5321, 1
  %5324 = extractvalue %dx.types.CBufRet.i32 %5321, 2
  %5325 = extractvalue %dx.types.CBufRet.i32 %5321, 3
  %5326 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %5322, i32* %5326, align 4
  %5327 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %5323, i32* %5327, align 4
  %5328 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %5324, i32* %5328, align 4
  %5329 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %5325, i32* %5329, align 4
  %5330 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %5319
  %5331 = load i32, i32* %5330, align 4, !tbaa !104, !noalias !108
  %5332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = lshr i32 %5333, 16
  %5335 = and i32 %5334, 31
  %5336 = shl i32 %5258, %5335
  %5337 = add i32 %5336, %5257
  %5338 = shl i32 %5337, 2
  %5339 = add i32 %5338, %5331
  %5340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5339, i32 undef)  ; BufferLoad(srv,index,wot)
  %5341 = extractvalue %dx.types.ResRet.i32 %5340, 0
  %5342 = icmp eq i32 %5341, 0
  br i1 %5342, label %5360, label %5343

; <label>:5343                                    ; preds = %5315
  %5344 = icmp slt i32 %5341, 0
  %5345 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5316
  %5346 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5316
  %5347 = bitcast float* %5345 to i32*
  %5348 = bitcast float* %5346 to i32*
  br i1 %5344, label %5349, label %5356

; <label>:5349                                    ; preds = %5343
  %5350 = and i32 %5341, 1073741823
  %5351 = add i32 %5331, 20
  %5352 = add i32 %5351, %5350
  %5353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.i32 %5353, 0
  %5355 = extractvalue %dx.types.ResRet.i32 %5353, 1
  br label %5356

; <label>:5356                                    ; preds = %5349, %5343
  %5357 = phi i32 [ %5354, %5349 ], [ %5265, %5343 ]
  %5358 = phi i32 [ %5355, %5349 ], [ %5266, %5343 ]
  store i32 %5357, i32* %5347, align 4
  store i32 %5358, i32* %5348, align 4
  %5359 = add i32 %5316, 1
  br label %5360

; <label>:5360                                    ; preds = %5356, %5315
  %5361 = phi i32 [ %5316, %5315 ], [ %5359, %5356 ]
  %5362 = add nuw i32 %5317, 1
  %5363 = icmp eq i32 %5362, %5312
  br i1 %5363, label %5364, label %5315

; <label>:5364                                    ; preds = %5360
  br label %5365

; <label>:5365                                    ; preds = %5364, %5309
  %5366 = phi i32 [ %5310, %5309 ], [ %5361, %5364 ]
  %5367 = icmp eq i32 %5366, 1
  %5368 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  %5369 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  br i1 %5367, label %5370, label %5373

; <label>:5370                                    ; preds = %5365
  %5371 = load float, float* %5368, align 4
  %5372 = load float, float* %5369, align 4
  br label %5400

; <label>:5373                                    ; preds = %5365
  %5374 = load float, float* %5368, align 4
  %5375 = load float, float* %5369, align 4
  %5376 = fdiv fast float 1.000000e+00, %5375
  %5377 = fsub fast float %5374, %5376
  %5378 = icmp ugt i32 %5366, 1
  br i1 %5378, label %5379, label %5395

; <label>:5379                                    ; preds = %5373
  br label %5380

; <label>:5380                                    ; preds = %5380, %5379
  %5381 = phi float [ %5390, %5380 ], [ %5377, %5379 ]
  %5382 = phi float [ %5391, %5380 ], [ %5374, %5379 ]
  %5383 = phi i32 [ %5392, %5380 ], [ 1, %5379 ]
  %5384 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5383
  %5385 = load float, float* %5384, align 4
  %5386 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5383
  %5387 = load float, float* %5386, align 4
  %5388 = fdiv fast float 1.000000e+00, %5387
  %5389 = fsub fast float %5385, %5388
  %5390 = call float @dx.op.binary.f32(i32 36, float %5381, float %5389)  ; FMin(a,b)
  %5391 = call float @dx.op.binary.f32(i32 35, float %5382, float %5385)  ; FMax(a,b)
  %5392 = add nuw i32 %5383, 1
  %5393 = icmp eq i32 %5392, %5366
  br i1 %5393, label %5394, label %5380

; <label>:5394                                    ; preds = %5380
  br label %5395

; <label>:5395                                    ; preds = %5394, %5373
  %5396 = phi float [ %5377, %5373 ], [ %5390, %5394 ]
  %5397 = phi float [ %5374, %5373 ], [ %5391, %5394 ]
  %5398 = fsub fast float %5397, %5396
  %5399 = fdiv fast float 1.000000e+00, %5398
  br label %5400

; <label>:5400                                    ; preds = %5395, %5370
  %5401 = phi float [ %5371, %5370 ], [ %5397, %5395 ]
  %5402 = phi float [ %5372, %5370 ], [ %5399, %5395 ]
  %5403 = fadd fast float %5104, %5401
  %5404 = fmul fast float %5403, %5402
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = fmul fast float %5405, 2.000000e+00
  %5407 = fsub fast float 1.000000e+00, %5406
  %5408 = fmul fast float %5242, %5242
  %5409 = fsub fast float %5243, %5408
  %5410 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5409)  ; FMax(a,b)
  %5411 = fdiv fast float 1.000000e+00, %5410
  %5412 = fmul fast float %5243, %5242
  %5413 = fsub fast float %5244, %5412
  %5414 = fsub fast float %5407, %5242
  %5415 = fmul fast float %5407, %5407
  %5416 = fsub fast float %5415, %5243
  %5417 = fmul fast float %5411, %5413
  %5418 = fmul fast float %5417, %5414
  %5419 = fsub fast float %5416, %5418
  %5420 = fmul fast float %5243, %5243
  %5421 = fsub fast float %5245, %5420
  %5422 = fmul fast float %5413, %5413
  %5423 = fmul fast float %5422, %5411
  %5424 = fsub fast float %5421, %5423
  %5425 = fdiv fast float %5419, %5424
  %5426 = fmul fast float %5425, %5413
  %5427 = fsub fast float %5414, %5426
  %5428 = fmul fast float %5427, %5411
  %5429 = fmul fast float %5428, %5242
  %5430 = fsub fast float 1.000000e+00, %5429
  %5431 = fmul fast float %5425, %5243
  %5432 = fsub fast float %5430, %5431
  %5433 = fmul fast float %5428, %5428
  %5434 = fmul fast float %5425, 4.000000e+00
  %5435 = fmul fast float %5434, %5432
  %5436 = fsub fast float %5433, %5435
  %5437 = call float @dx.op.unary.f32(i32 24, float %5436)  ; Sqrt(value)
  %5438 = fcmp fast oge float %5428, 0.000000e+00
  %5439 = fsub fast float -0.000000e+00, %5437
  %5440 = select i1 %5438, float %5439, float %5437
  %5441 = fsub fast float %5440, %5428
  %5442 = fdiv fast float %5441, %5425
  %5443 = fdiv fast float %5432, %5441
  %5444 = fmul fast float %5442, 5.000000e-01
  %5445 = fmul fast float %5443, 2.000000e+00
  %5446 = select i1 %5438, float %5444, float %5445
  %5447 = select i1 %5438, float %5445, float %5444
  %5448 = call float @dx.op.binary.f32(i32 35, float %5446, float %5447)  ; FMax(a,b)
  %5449 = call float @dx.op.binary.f32(i32 36, float %5446, float %5447)  ; FMin(a,b)
  %5450 = fcmp fast ogt float %5407, %5448
  %5451 = fsub fast float %5407, %5449
  %5452 = fsub fast float %5407, %5448
  %5453 = fsub fast float %5448, %5449
  %5454 = select i1 %5450, float %5452, float %5453
  %5455 = fmul float %5451, %5454
  %5456 = select i1 %5450, float %5449, float %5407
  %5457 = fcmp fast ogt float %5407, %5449
  %5458 = fmul fast float %5456, %5448
  %5459 = fadd fast float %5456, %5448
  %5460 = fmul fast float %5459, %5242
  %5461 = fadd fast float %5458, %5243
  %5462 = fsub fast float %5461, %5460
  %5463 = fdiv fast float %5462, %5455
  %5464 = select i1 %5457, float %5463, float 0.000000e+00
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = select i1 %5450, float %5465, float %5464
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5469 = fmul fast float %5468, %5467
  %5470 = fsub fast float 1.000000e+00, %5469
  br label %5471

; <label>:5471                                    ; preds = %5400, %5112, %5077, %5073, %5037
  %5472 = phi float [ 1.000000e+00, %5037 ], [ %5470, %5400 ], [ 1.000000e+00, %5077 ], [ 1.000000e+00, %5112 ], [ 1.000000e+00, %5073 ]
  %5473 = fcmp fast ogt float %5069, 0.000000e+00
  br i1 %5473, label %5474, label %5482, !dx.controlflow.hints !117

; <label>:5474                                    ; preds = %5471
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5477 = fadd fast float %5476, %4950
  %5478 = call float @dx.op.binary.f32(i32 35, float %5477, float 0.000000e+00)  ; FMax(a,b)
  %5479 = fadd fast float %5478, 0x3F10000000000000
  %5480 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4968, float %4969, float undef, float undef, i32 0, i32 0, i32 undef, float %5479)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  br label %5482

; <label>:5482                                    ; preds = %5474, %5471
  %5483 = phi float [ %5481, %5474 ], [ 1.000000e+00, %5471 ]
  %5484 = fcmp fast ogt float %5067, 0.000000e+00
  br i1 %5484, label %5485, label %5493, !dx.controlflow.hints !118

; <label>:5485                                    ; preds = %5482
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5488 = fadd fast float %5487, %4950
  %5489 = call float @dx.op.binary.f32(i32 35, float %5488, float 0.000000e+00)  ; FMax(a,b)
  %5490 = fadd fast float %5489, 0x3F10000000000000
  %5491 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4960, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float %5490)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 0
  br label %5493

; <label>:5493                                    ; preds = %5485, %5482
  %5494 = phi float [ %5492, %5485 ], [ 1.000000e+00, %5482 ]
  %5495 = fcmp fast ogt float %5066, 0.000000e+00
  br i1 %5495, label %5496, label %5508, !dx.controlflow.hints !119

; <label>:5496                                    ; preds = %5493
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = fadd fast float %5498, %4950
  %5500 = call float @dx.op.binary.f32(i32 35, float %5499, float 0.000000e+00)  ; FMax(a,b)
  %5501 = fadd fast float %5500, 0x3F10000000000000
  br i1 %4953, label %5502, label %5505, !dx.controlflow.hints !120

; <label>:5502                                    ; preds = %5496
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %53, float %4942, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float %5501)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  br label %5508

; <label>:5505                                    ; preds = %5496
  %5506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %4942, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float %5501)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 0
  br label %5508

; <label>:5508                                    ; preds = %5505, %5502, %5493
  %5509 = phi float [ %5504, %5502 ], [ %5507, %5505 ], [ 1.000000e+00, %5493 ]
  %5510 = fsub fast float %5483, %5472
  %5511 = fmul fast float %5510, %5039
  %5512 = fadd fast float %5511, %5472
  %5513 = fsub fast float %5494, %5512
  %5514 = fmul fast float %5513, %5038
  %5515 = fadd fast float %5514, %5512
  %5516 = fsub fast float %5509, %5515
  %5517 = fmul fast float %5516, %5066
  %5518 = fadd fast float %5517, %5515
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 2
  %5521 = fcmp fast ogt float %5520, 0.000000e+00
  br i1 %5521, label %5522, label %5562, !dx.controlflow.hints !121

; <label>:5522                                    ; preds = %5508
  %5523 = fcmp fast ugt float %5520, 0.000000e+00
  br i1 %5523, label %5524, label %5559

; <label>:5524                                    ; preds = %5522
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5529 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.CBufRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.CBufRet.f32 %5530, 2
  %5534 = extractvalue %dx.types.CBufRet.f32 %5530, 3
  %5535 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5519, 1
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.CBufRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.CBufRet.f32 %5537, 2
  %5541 = fadd fast float %5538, %4919
  %5542 = fadd fast float %5539, %4920
  %5543 = fadd fast float %5540, %4921
  %5544 = fmul fast float %5541, %5526
  %5545 = call float @dx.op.tertiary.f32(i32 46, float %5527, float %5542, float %5544)  ; FMad(a,b,c)
  %5546 = call float @dx.op.tertiary.f32(i32 46, float %5528, float %5543, float %5545)  ; FMad(a,b,c)
  %5547 = fadd fast float %5546, %5529
  %5548 = fmul fast float %5541, %5531
  %5549 = call float @dx.op.tertiary.f32(i32 46, float %5532, float %5542, float %5548)  ; FMad(a,b,c)
  %5550 = call float @dx.op.tertiary.f32(i32 46, float %5533, float %5543, float %5549)  ; FMad(a,b,c)
  %5551 = fadd fast float %5550, %5534
  %5552 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %48, float %5547, float %5551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5553 = extractvalue %dx.types.ResRet.f32 %5552, 0
  %5554 = fmul fast float %5553, %5536
  %5555 = fadd fast float %5554, %5535
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fmul fast float %5556, %5520
  %5558 = fsub fast float 1.000000e+00, %5557
  br label %5559

; <label>:5559                                    ; preds = %5524, %5522
  %5560 = phi float [ %5558, %5524 ], [ 1.000000e+00, %5522 ]
  %5561 = fmul fast float %5560, %5518
  br label %5562

; <label>:5562                                    ; preds = %5559, %5508, %4899
  %5563 = phi float [ 1.000000e+00, %4899 ], [ %5561, %5559 ], [ %5518, %5508 ]
  %5564 = call float @dx.op.binary.f32(i32 36, float %5563, float %5563)  ; FMin(a,b)
  %5565 = call float @dx.op.binary.f32(i32 36, float %5563, float %5564)  ; FMin(a,b)
  %5566 = fcmp fast ogt float %5565, 0.000000e+00
  br i1 %5566, label %5567, label %5727, !dx.controlflow.hints !122

; <label>:5567                                    ; preds = %5562
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5572 = extractvalue %dx.types.CBufRet.f32 %5568, 3
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.CBufRet.f32 %5573, 2
  %5577 = extractvalue %dx.types.CBufRet.f32 %5573, 3
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.CBufRet.f32 %5578, 2
  %5582 = extractvalue %dx.types.CBufRet.f32 %5578, 3
  %5583 = fmul fast float %5569, %4919
  %5584 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %5570, float %5583)  ; FMad(a,b,c)
  %5585 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5571, float %5584)  ; FMad(a,b,c)
  %5586 = fadd fast float %5585, %5572
  %5587 = fmul fast float %5574, %4919
  %5588 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %5575, float %5587)  ; FMad(a,b,c)
  %5589 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5576, float %5588)  ; FMad(a,b,c)
  %5590 = fadd fast float %5589, %5577
  %5591 = fmul fast float %5579, %4919
  %5592 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %5580, float %5591)  ; FMad(a,b,c)
  %5593 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %5581, float %5592)  ; FMad(a,b,c)
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.CBufRet.f32 %5594, 1
  %5597 = extractvalue %dx.types.CBufRet.f32 %5594, 3
  %5598 = fmul fast float %5597, %5586
  %5599 = fmul fast float %5597, %5590
  %5600 = fadd fast float %5598, %5595
  %5601 = fadd fast float %5599, %5596
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.CBufRet.f32 %5602, 1
  %5605 = fsub fast float %5600, %5603
  %5606 = fsub fast float %5601, %5604
  %5607 = fcmp fast olt float %5605, 0.000000e+00
  %5608 = fcmp fast olt float %5606, 0.000000e+00
  %5609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5610 = extractvalue %dx.types.CBufRet.f32 %5609, 0
  %5611 = extractvalue %dx.types.CBufRet.f32 %5609, 1
  %5612 = extractvalue %dx.types.CBufRet.f32 %5609, 2
  %5613 = extractvalue %dx.types.CBufRet.f32 %5609, 3
  %5614 = select i1 %5607, float %5610, float %5612
  %5615 = select i1 %5608, float %5611, float %5613
  %5616 = fmul fast float %5614, %5605
  %5617 = fmul fast float %5615, %5606
  %5618 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5619 = call float @dx.op.unary.f32(i32 6, float %5617)  ; FAbs(value)
  %5620 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %5621 = call float @dx.op.binary.f32(i32 35, float %5618, float %5619)  ; FMax(a,b)
  %5622 = fsub fast float %5620, %5621
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = fcmp fast ogt float %5623, 0.000000e+00
  br i1 %5624, label %5625, label %5666, !dx.controlflow.hints !123

; <label>:5625                                    ; preds = %5567
  %5626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %51, float %5600, float %5601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5627 = extractvalue %dx.types.ResRet.f32 %5626, 1
  %5628 = fcmp fast ogt float %5627, 0.000000e+00
  br i1 %5628, label %5629, label %5661

; <label>:5629                                    ; preds = %5625
  %5630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %5600, float %5601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5631 = extractvalue %dx.types.ResRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.ResRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.ResRet.f32 %5630, 2
  %5634 = extractvalue %dx.types.ResRet.f32 %5630, 3
  %5635 = fsub fast float 1.000000e+00, %5582
  %5636 = fsub fast float %5635, %5593
  %5637 = fmul fast float %5636, 0x400921FB60000000
  %5638 = fadd fast float %5637, 0x3FF921FB60000000
  %5639 = call float @dx.op.unary.f32(i32 13, float %5638)  ; Sin(value)
  %5640 = fadd fast float %5639, -1.000000e+00
  %5641 = fmul fast float %5640, 0x3FD45F3060000000
  %5642 = fmul fast float %5636, 0x401921FB60000000
  %5643 = fadd fast float %5642, 0x400921FB60000000
  %5644 = call float @dx.op.unary.f32(i32 13, float %5643)  ; Sin(value)
  %5645 = fadd fast float %5644, 0x3E7777A5C0000000
  %5646 = fmul fast float %5645, 0x3FC45F3060000000
  %5647 = fmul fast float %5636, 0x4022D97C80000000
  %5648 = fadd fast float %5647, 0x4012D97C80000000
  %5649 = call float @dx.op.unary.f32(i32 13, float %5648)  ; Sin(value)
  %5650 = fadd fast float %5649, 1.000000e+00
  %5651 = fmul fast float %5650, 0x3FBB2995E0000000
  %5652 = fmul fast float %5636, 0x402921FB60000000
  %5653 = fadd fast float %5652, 0x401921FB60000000
  %5654 = call float @dx.op.unary.f32(i32 13, float %5653)  ; Sin(value)
  %5655 = fadd fast float %5654, 0xBE8777A5C0000000
  %5656 = fmul fast float %5655, 0x3FB45F3060000000
  %5657 = call float @dx.op.dot4.f32(i32 56, float %5631, float %5632, float %5633, float %5634, float %5641, float %5646, float %5651, float %5656)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5658 = fmul fast float %5657, 0xBFF7154760000000
  %5659 = call float @dx.op.unary.f32(i32 21, float %5658)  ; Exp(value)
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  br label %5661

; <label>:5661                                    ; preds = %5629, %5625
  %5662 = phi float [ %5660, %5629 ], [ 1.000000e+00, %5625 ]
  %5663 = fadd fast float %5662, -1.000000e+00
  %5664 = fmul fast float %5663, %5623
  %5665 = fadd fast float %5664, 1.000000e+00
  br label %5666

; <label>:5666                                    ; preds = %5661, %5567
  %5667 = phi float [ %5665, %5661 ], [ 1.000000e+00, %5567 ]
  %5668 = fmul fast float %5667, %5563
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5673 = fadd fast float %5670, %198
  %5674 = fadd fast float %5671, %199
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5677 = fsub fast float -0.000000e+00, %5673
  %5678 = fsub fast float -0.000000e+00, %5674
  %5679 = fsub fast float %4611, %5672
  %5680 = fadd fast float %5679, %5676
  %5681 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5677, float %5678, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = fdiv fast float 1.000000e+00, %5682
  %5684 = fmul fast float %5683, %5681
  %5685 = fmul fast float %4900, %5684
  %5686 = fmul fast float %4901, %5684
  %5687 = fadd fast float %5685, %5673
  %5688 = fadd fast float %5686, %5674
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5692 = fsub fast float %5687, %5690
  %5693 = fsub fast float %5688, %5691
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5696 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5697 = fmul fast float %5692, %5695
  %5698 = fmul fast float %5693, %5696
  %5699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.i32 %5699, 3
  %5701 = icmp eq i32 %5700, 0
  br i1 %5701, label %5707, label %5702

; <label>:5702                                    ; preds = %5666
  %5703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %5697, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5704 = extractvalue %dx.types.ResRet.f32 %5703, 0
  %5705 = extractvalue %dx.types.ResRet.f32 %5703, 1
  %5706 = extractvalue %dx.types.ResRet.f32 %5703, 2
  br label %5712

; <label>:5707                                    ; preds = %5666
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %5697, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.ResRet.f32 %5708, 2
  br label %5712

; <label>:5712                                    ; preds = %5707, %5702
  %5713 = phi float [ %5704, %5702 ], [ %5709, %5707 ]
  %5714 = phi float [ %5705, %5702 ], [ %5710, %5707 ]
  %5715 = phi float [ %5706, %5702 ], [ %5711, %5707 ]
  %5716 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5717 = fmul fast float %5716, %5713
  %5718 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5719 = fsub fast float %5684, %5718
  %5720 = fsub fast float %5719, %5717
  %5721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5720)  ; FMax(a,b)
  %5722 = fmul fast float %5721, %5714
  %5723 = call float @dx.op.binary.f32(i32 36, float %5715, float %5722)  ; FMin(a,b)
  %5724 = fmul fast float %5723, 0xBFF7154760000000
  %5725 = call float @dx.op.unary.f32(i32 21, float %5724)  ; Exp(value)
  %5726 = fmul fast float %5668, %5725
  br label %5727

; <label>:5727                                    ; preds = %5712, %5562
  %5728 = phi float [ %5726, %5712 ], [ %5563, %5562 ]
  %5729 = call float @dx.op.binary.f32(i32 36, float %5728, float %5728)  ; FMin(a,b)
  %5730 = call float @dx.op.binary.f32(i32 36, float %5728, float %5729)  ; FMin(a,b)
  %5731 = fcmp fast ogt float %5730, 0.000000e+00
  br i1 %5731, label %5732, label %5983, !dx.controlflow.hints !124

; <label>:5732                                    ; preds = %5727
  %5733 = fmul fast float %5728, %4911
  %5734 = fmul fast float %5728, %4912
  %5735 = fmul fast float %5728, %4913
  %5736 = fsub fast float %200, %3788
  %5737 = fcmp fast ogt float %5736, 0.000000e+00
  %5738 = fmul fast float %4900, 5.120000e+02
  %5739 = fmul fast float %4901, 5.120000e+02
  %5740 = fmul fast float %4902, 5.120000e+02
  %5741 = fadd fast float %5740, %200
  %5742 = fsub fast float %3788, %5741
  %5743 = fmul fast float %5742, 2.000000e+00
  %5744 = fadd fast float %5743, %5741
  %5745 = select i1 %5737, float %5744, float %5741
  %5746 = fsub fast float %5745, %200
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5746, float %5738, float %5739, float %5746)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = call float @dx.op.unary.f32(i32 25, float %5747)  ; Rsqrt(value)
  %5749 = fmul fast float %5748, %5738
  %5750 = fmul fast float %5748, %5739
  %5751 = fmul fast float %5748, %5746
  %5752 = fsub fast float %3788, %200
  %5753 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5749, float %5750, float %5751)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = fdiv fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5755, %5753
  %5757 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5736, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = fcmp fast ogt float %5757, 0.000000e+00
  %5759 = fcmp fast olt float %5757, 0.000000e+00
  %5760 = zext i1 %5758 to i32
  %5761 = zext i1 %5759 to i32
  %5762 = sub nsw i32 %5760, %5761
  %5763 = sitofp i32 %5762 to float
  %5764 = fsub fast float %5745, %3788
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5764, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fcmp fast ogt float %5765, 0.000000e+00
  %5767 = fcmp fast olt float %5765, 0.000000e+00
  %5768 = zext i1 %5766 to i32
  %5769 = zext i1 %5767 to i32
  %5770 = sub nsw i32 %5768, %5769
  %5771 = sitofp i32 %5770 to float
  %5772 = fcmp fast une float %5763, %5771
  br i1 %5772, label %5773, label %5783

; <label>:5773                                    ; preds = %5732
  %5774 = fmul fast float %5756, %5751
  %5775 = fmul fast float %5756, %5750
  %5776 = fmul fast float %5756, %5749
  %5777 = fmul fast float %5776, %5776
  %5778 = fmul fast float %5775, %5775
  %5779 = fadd fast float %5777, %5778
  %5780 = fmul fast float %5774, %5774
  %5781 = fadd fast float %5779, %5780
  %5782 = call float @dx.op.unary.f32(i32 24, float %5781)  ; Sqrt(value)
  br label %5793

; <label>:5783                                    ; preds = %5732
  %5784 = icmp slt i32 %5762, 0
  br i1 %5784, label %5785, label %5793

; <label>:5785                                    ; preds = %5783
  %5786 = fsub fast float %200, %5745
  %5787 = fmul fast float %5738, %5738
  %5788 = fmul fast float %5739, %5739
  %5789 = fadd fast float %5787, %5788
  %5790 = fmul fast float %5786, %5786
  %5791 = fadd fast float %5789, %5790
  %5792 = call float @dx.op.unary.f32(i32 24, float %5791)  ; Sqrt(value)
  br label %5793

; <label>:5793                                    ; preds = %5785, %5783, %5773
  %5794 = phi float [ %5782, %5773 ], [ %5792, %5785 ], [ 0.000000e+00, %5783 ]
  %5795 = fsub fast float -0.000000e+00, %5794
  %5796 = select i1 %5737, float -0.000000e+00, float %5795
  %5797 = fmul fast float %3789, 0x3FF7154760000000
  %5798 = fmul fast float %5797, %5796
  %5799 = fmul fast float %3790, 0x3FF7154760000000
  %5800 = fmul fast float %5799, %5796
  %5801 = fmul fast float %3791, 0x3FF7154760000000
  %5802 = fmul fast float %5801, %5796
  %5803 = call float @dx.op.unary.f32(i32 21, float %5798)  ; Exp(value)
  %5804 = call float @dx.op.unary.f32(i32 21, float %5800)  ; Exp(value)
  %5805 = call float @dx.op.unary.f32(i32 21, float %5802)  ; Exp(value)
  %5806 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5807 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5808 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5809 = fmul fast float %5733, %5806
  %5810 = fmul fast float %5734, %5807
  %5811 = fmul fast float %5735, %5808
  %5812 = fsub fast float %4900, %4614
  %5813 = fsub fast float %4901, %4615
  %5814 = fsub fast float %4902, %4616
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5812, float %5813, float %5814, float %5812, float %5813, float %5814)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = call float @dx.op.unary.f32(i32 25, float %5815)  ; Rsqrt(value)
  %5817 = fmul fast float %5816, %5812
  %5818 = fmul fast float %5816, %5813
  %5819 = fmul fast float %5816, %5814
  %5820 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float %5817, float %5818, float %5819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5823 = fmul fast float %5822, %5822
  %5824 = fmul fast float %5823, %4635
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  %5826 = fmul fast float %5825, %5822
  %5827 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %5817, float %5818, float %5819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = fmul fast float %5827, %5827
  %5829 = call float @dx.op.unary.f32(i32 6, float %5820)  ; FAbs(value)
  %5830 = fsub fast float 1.000000e+00, %4577
  %5831 = call float @dx.op.binary.f32(i32 35, float %5830, float 0x3F847AE140000000)  ; FMax(a,b)
  %5832 = fmul fast float %5831, %5831
  %5833 = fmul fast float %5832, %5832
  %5834 = fsub fast float 1.000000e+00, %5833
  %5835 = fmul fast float %4622, %4622
  %5836 = fmul fast float %5835, %5834
  %5837 = fadd fast float %5836, %5833
  %5838 = bitcast float %5837 to i32
  %5839 = ashr i32 %5838, 1
  %5840 = add nsw i32 %5839, 532487669
  %5841 = bitcast i32 %5840 to float
  %5842 = fadd fast float %5841, %4622
  %5843 = fmul fast float %5833, %5828
  %5844 = fsub fast float 1.000000e+00, %5828
  %5845 = fadd fast float %5844, %5843
  %5846 = fmul fast float %5829, %5829
  %5847 = fmul fast float %5846, %5834
  %5848 = fadd fast float %5847, %5833
  %5849 = bitcast float %5848 to i32
  %5850 = ashr i32 %5849, 1
  %5851 = add nsw i32 %5850, 532487669
  %5852 = bitcast i32 %5851 to float
  %5853 = fadd fast float %5852, %5829
  %5854 = fmul fast float %5845, %5845
  %5855 = fmul fast float %5854, %5842
  %5856 = fmul fast float %5855, %5853
  %5857 = fdiv fast float 0x3FF0A00000000000, %5856
  %5858 = fmul fast float %5857, %5833
  %5859 = call float @dx.op.unary.f32(i32 6, float %5821)  ; FAbs(value)
  %5860 = fsub fast float 1.000000e+00, %5859
  %5861 = bitcast float %5860 to i32
  %5862 = sitofp i32 %5861 to float
  %5863 = fmul fast float %5862, 5.000000e+00
  %5864 = fadd fast float %5863, 0xC1EFBF8940000000
  %5865 = fptosi float %5864 to i32
  %5866 = bitcast i32 %5865 to float
  %5867 = fsub fast float 1.000000e+00, %4571
  %5868 = fsub fast float 1.000000e+00, %4572
  %5869 = fsub fast float 1.000000e+00, %4620
  %5870 = fmul fast float %5866, %5867
  %5871 = fmul fast float %5866, %5868
  %5872 = fmul fast float %5866, %5869
  %5873 = fadd fast float %5870, %4571
  %5874 = fadd fast float %5871, %4572
  %5875 = fadd fast float %5872, %4620
  br i1 %4751, label %5876, label %5899

; <label>:5876                                    ; preds = %5793
  %5877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %51, float %3386, float %5859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5878 = extractvalue %dx.types.ResRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.ResRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.ResRet.f32 %5877, 2
  %5881 = fadd fast float %5878, -5.000000e-01
  %5882 = fadd fast float %5879, -5.000000e-01
  %5883 = fadd fast float %5880, -5.000000e-01
  %5884 = fmul fast float %4571, 4.000000e+00
  %5885 = fmul fast float %5884, %5867
  %5886 = fmul fast float %5885, %5881
  %5887 = fmul fast float %4572, 4.000000e+00
  %5888 = fmul fast float %5887, %5868
  %5889 = fmul fast float %5888, %5882
  %5890 = fmul fast float %4620, 4.000000e+00
  %5891 = fmul fast float %5890, %5869
  %5892 = fmul fast float %5891, %5883
  %5893 = fadd fast float %5886, %5873
  %5894 = fadd fast float %5889, %5874
  %5895 = fadd fast float %5892, %5875
  %5896 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5897 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5898 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  br label %5899

; <label>:5899                                    ; preds = %5876, %5793
  %5900 = phi float [ %5896, %5876 ], [ %5873, %5793 ]
  %5901 = phi float [ %5897, %5876 ], [ %5874, %5793 ]
  %5902 = phi float [ %5898, %5876 ], [ %5875, %5793 ]
  %5903 = fmul fast float %5820, 9.843750e-01
  %5904 = fadd fast float %5903, 7.812500e-03
  %5905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %5904, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5906 = extractvalue %dx.types.ResRet.f32 %5905, 2
  %5907 = extractvalue %dx.types.ResRet.f32 %5905, 3
  %5908 = fmul fast float %5906, %4571
  %5909 = fmul fast float %5906, %4572
  %5910 = fmul fast float %5906, %4620
  %5911 = fadd fast float %5908, %5907
  %5912 = fadd fast float %5909, %5907
  %5913 = fadd fast float %5910, %5907
  br i1 %4751, label %5914, label %5937

; <label>:5914                                    ; preds = %5899
  %5915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %51, float %3386, float %5820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5916 = extractvalue %dx.types.ResRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.ResRet.f32 %5915, 1
  %5918 = extractvalue %dx.types.ResRet.f32 %5915, 2
  %5919 = fadd fast float %5916, -5.000000e-01
  %5920 = fadd fast float %5917, -5.000000e-01
  %5921 = fadd fast float %5918, -5.000000e-01
  %5922 = fmul fast float %4571, 4.000000e+00
  %5923 = fmul fast float %5922, %5867
  %5924 = fmul fast float %5923, %5919
  %5925 = fmul fast float %4572, 4.000000e+00
  %5926 = fmul fast float %5925, %5868
  %5927 = fmul fast float %5926, %5920
  %5928 = fmul fast float %4620, 4.000000e+00
  %5929 = fmul fast float %5928, %5869
  %5930 = fmul fast float %5929, %5921
  %5931 = fadd fast float %5924, %5911
  %5932 = fadd fast float %5927, %5912
  %5933 = fadd fast float %5930, %5913
  %5934 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5935 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5936 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  br label %5937

; <label>:5937                                    ; preds = %5914, %5899
  %5938 = phi float [ %5934, %5914 ], [ %5911, %5899 ]
  %5939 = phi float [ %5935, %5914 ], [ %5912, %5899 ]
  %5940 = phi float [ %5936, %5914 ], [ %5913, %5899 ]
  %5941 = call float @dx.op.binary.f32(i32 35, float %5939, float %5940)  ; FMax(a,b)
  %5942 = call float @dx.op.binary.f32(i32 35, float %5938, float %5941)  ; FMax(a,b)
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = fmul fast float %5900, %5858
  %5945 = fmul fast float %5901, %5858
  %5946 = fmul fast float %5902, %5858
  %5947 = fsub fast float 1.000000e+00, %5821
  %5948 = bitcast float %5947 to i32
  %5949 = sitofp i32 %5948 to float
  %5950 = fmul fast float %5949, 5.000000e+00
  %5951 = fadd fast float %5950, 0xC1EFBF8940000000
  %5952 = fptosi float %5951 to i32
  %5953 = bitcast i32 %5952 to float
  %5954 = fmul fast float %5953, %3387
  %5955 = fmul fast float %5943, %5954
  %5956 = fmul fast float %5955, %4854
  %5957 = fmul fast float %5955, %4855
  %5958 = fmul fast float %5955, %4856
  %5959 = fadd fast float %5956, %5944
  %5960 = fadd fast float %5957, %5945
  %5961 = fadd fast float %5958, %5946
  %5962 = fmul fast float %5826, %5809
  %5963 = fmul fast float %5962, %5943
  %5964 = fmul fast float %5826, %5810
  %5965 = fmul fast float %5964, %5943
  %5966 = fmul fast float %5826, %5811
  %5967 = fmul fast float %5966, %5943
  %5968 = fmul fast float %5962, %5959
  %5969 = fmul fast float %5964, %5960
  %5970 = fmul fast float %5966, %5961
  %5971 = fadd fast float %5963, %4836
  %5972 = fmul fast float %5971, %3383
  %5973 = fadd fast float %5965, %4838
  %5974 = fmul fast float %5973, %3383
  %5975 = fadd fast float %5967, %4840
  %5976 = fmul fast float %5975, %3383
  %5977 = fadd fast float %5968, %4888
  %5978 = fmul fast float %5977, %3383
  %5979 = fadd fast float %5969, %4891
  %5980 = fmul fast float %5979, %3383
  %5981 = fadd fast float %5970, %4894
  %5982 = fmul fast float %5981, %3383
  br label %5983

; <label>:5983                                    ; preds = %5937, %5727, %4778
  %5984 = phi float [ %4889, %4778 ], [ %4889, %5727 ], [ %5978, %5937 ]
  %5985 = phi float [ %4892, %4778 ], [ %4892, %5727 ], [ %5980, %5937 ]
  %5986 = phi float [ %4895, %4778 ], [ %4895, %5727 ], [ %5982, %5937 ]
  %5987 = phi float [ %4884, %4778 ], [ %4884, %5727 ], [ %5972, %5937 ]
  %5988 = phi float [ %4885, %4778 ], [ %4885, %5727 ], [ %5974, %5937 ]
  %5989 = phi float [ %4886, %4778 ], [ %4886, %5727 ], [ %5976, %5937 ]
  %5990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.i32 %5990, 0
  %5992 = icmp eq i32 %5991, 0
  br i1 %5992, label %6613, label %5993

; <label>:5993                                    ; preds = %5983
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5996 = extractvalue %dx.types.CBufRet.f32 %5994, 3
  %5997 = fmul fast float %5995, %111
  %5998 = fmul fast float %5996, %112
  %5999 = fptoui float %5997 to i32
  %6000 = fptoui float %5998 to i32
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 3
  %6005 = fadd fast float %102, -4.000000e+00
  %6006 = call float @dx.op.binary.f32(i32 35, float %6005, float 0.000000e+00)  ; FMax(a,b)
  %6007 = fadd fast float %6006, %6002
  %6008 = fmul fast float %6007, %6003
  %6009 = call float @dx.op.unary.f32(i32 23, float %6008)  ; Log(value)
  %6010 = fmul fast float %6009, %6004
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 2
  %6013 = fmul fast float %6010, %6012
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.i32 %6015, 1
  %6017 = add i32 %6016, -1
  %6018 = uitofp i32 %6016 to float
  %6019 = fmul fast float %6018, %6014
  %6020 = fptoui float %6019 to i32
  %6021 = call i32 @dx.op.binary.i32(i32 40, i32 %6020, i32 %6017)  ; UMin(a,b)
  %6022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.i32 %6022, 2
  %6024 = extractvalue %dx.types.CBufRet.i32 %6022, 3
  %6025 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6000, i32 %6023, i32 %5999)  ; UMad(a,b,c)
  %6026 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6021, i32 %6024, i32 %6025)  ; UMad(a,b,c)
  %6027 = add nsw i32 %5991, -1
  %6028 = call i32 @dx.op.binary.i32(i32 37, i32 %6027, i32 0)  ; IMax(a,b)
  %6029 = call float @dx.op.binary.f32(i32 35, float %102, float 0.000000e+00)  ; FMax(a,b)
  %6030 = fptoui float %6029 to i32
  %6031 = lshr i32 %6030, 5
  %6032 = call i32 @dx.op.binary.i32(i32 40, i32 %6031, i32 8191)  ; UMin(a,b)
  %6033 = shl i32 %6032, 2
  %6034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6033, i32 undef)  ; BufferLoad(srv,index,wot)
  %6035 = extractvalue %dx.types.ResRet.i32 %6034, 0
  %6036 = lshr i32 %6035, 16
  %6037 = and i32 %6035, 65535
  %6038 = lshr i32 %6035, 21
  %6039 = lshr i32 %6037, 5
  %6040 = call i32 @dx.op.binary.i32(i32 40, i32 %6039, i32 %6028)  ; UMin(a,b)
  %6041 = icmp ugt i32 %6038, %6040
  br i1 %6041, label %6613, label %6042

; <label>:6042                                    ; preds = %5993
  br label %6043

; <label>:6043                                    ; preds = %6603, %6042
  %6044 = phi i32 [ %6610, %6603 ], [ %6038, %6042 ]
  %6045 = phi float [ %6604, %6603 ], [ %5984, %6042 ]
  %6046 = phi float [ %6605, %6603 ], [ %5985, %6042 ]
  %6047 = phi float [ %6606, %6603 ], [ %5986, %6042 ]
  %6048 = phi float [ %6607, %6603 ], [ %5987, %6042 ]
  %6049 = phi float [ %6608, %6603 ], [ %5988, %6042 ]
  %6050 = phi float [ %6609, %6603 ], [ %5989, %6042 ]
  %6051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.i32 %6051, 0
  %6053 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6026, i32 %6052, i32 %6044)  ; UMad(a,b,c)
  %6054 = shl i32 %6053, 2
  %6055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %6054, i32 undef)  ; BufferLoad(srv,index,wot)
  %6056 = extractvalue %dx.types.ResRet.i32 %6055, 0
  %6057 = shl i32 %6044, 5
  %6058 = sub nsw i32 %6036, %6057
  %6059 = call i32 @dx.op.binary.i32(i32 37, i32 %6058, i32 0)  ; IMax(a,b)
  %6060 = call i32 @dx.op.binary.i32(i32 38, i32 %6059, i32 31)  ; IMin(a,b)
  %6061 = sub nsw i32 1, %6036
  %6062 = add nsw i32 %6061, %6037
  %6063 = call i32 @dx.op.binary.i32(i32 37, i32 %6062, i32 0)  ; IMax(a,b)
  %6064 = call i32 @dx.op.binary.i32(i32 38, i32 %6063, i32 32)  ; IMin(a,b)
  %6065 = and i32 %6064, 31
  %6066 = shl i32 -1, %6065
  %6067 = xor i32 %6066, -1
  %6068 = and i32 %6060, 31
  %6069 = shl i32 %6067, %6068
  %6070 = icmp eq i32 %6064, 32
  %6071 = select i1 %6070, i32 -1, i32 %6069
  %6072 = and i32 %6071, %6056
  %6073 = icmp eq i32 %6072, 0
  br i1 %6073, label %6603, label %6074

; <label>:6074                                    ; preds = %6043
  br label %6075

; <label>:6075                                    ; preds = %6209, %6074
  %6076 = phi i32 [ %6087, %6209 ], [ %6072, %6074 ]
  %6077 = phi float [ %6210, %6209 ], [ %6045, %6074 ]
  %6078 = phi float [ %6211, %6209 ], [ %6046, %6074 ]
  %6079 = phi float [ %6212, %6209 ], [ %6047, %6074 ]
  %6080 = phi float [ %6213, %6209 ], [ %6048, %6074 ]
  %6081 = phi float [ %6214, %6209 ], [ %6049, %6074 ]
  %6082 = phi float [ %6215, %6209 ], [ %6050, %6074 ]
  %6083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6076)  ; FirstbitLo(value)
  %6084 = add i32 %6083, %6057
  %6085 = and i32 %6083, 31
  %6086 = shl i32 1, %6085
  %6087 = xor i32 %6086, %6076
  %6088 = mul i32 %6084, 112
  %6089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6088, i32 undef)  ; BufferLoad(srv,index,wot)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.ResRet.f32 %6089, 2
  %6093 = or i32 %6088, 12
  %6094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6093, i32 undef)  ; BufferLoad(srv,index,wot)
  %6095 = extractvalue %dx.types.ResRet.f32 %6094, 0
  %6096 = add i32 %6088, 16
  %6097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6096, i32 undef)  ; BufferLoad(srv,index,wot)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = add i32 %6088, 28
  %6102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %6101, i32 undef)  ; BufferLoad(srv,index,wot)
  %6103 = extractvalue %dx.types.ResRet.i32 %6102, 0
  %6104 = add i32 %6088, 44
  %6105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6104, i32 undef)  ; BufferLoad(srv,index,wot)
  %6106 = extractvalue %dx.types.ResRet.f32 %6105, 0
  %6107 = add i32 %6088, 48
  %6108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6107, i32 undef)  ; BufferLoad(srv,index,wot)
  %6109 = extractvalue %dx.types.ResRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.ResRet.f32 %6108, 1
  %6111 = extractvalue %dx.types.ResRet.f32 %6108, 2
  %6112 = extractvalue %dx.types.ResRet.f32 %6108, 3
  %6113 = add i32 %6088, 64
  %6114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6113, i32 undef)  ; BufferLoad(srv,index,wot)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.ResRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.ResRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.ResRet.f32 %6114, 3
  %6119 = add i32 %6088, 80
  %6120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %6119, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6123 = add i32 %6088, 92
  %6124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %6123, i32 undef)  ; BufferLoad(srv,index,wot)
  %6125 = extractvalue %dx.types.ResRet.i32 %6124, 0
  %6126 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = select i1 %268, float %6121, float %6090
  %6128 = select i1 %268, float %6126, float %6091
  %6129 = select i1 %268, float %6122, float %6092
  %6130 = and i32 %6125, 65535
  %6131 = uitofp i32 %6130 to float
  %6132 = lshr i32 %6125, 16
  %6133 = uitofp i32 %6132 to float
  %6134 = and i32 %6103, 65535
  %6135 = and i32 %6103, 50331648
  %6136 = icmp eq i32 %6135, 33554432
  %6137 = fsub fast float %6109, %198
  %6138 = fsub fast float %6110, %199
  %6139 = fsub fast float %6111, %200
  %6140 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6137, float %6138, float %6139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = call float @dx.op.unary.f32(i32 24, float %6140)  ; Sqrt(value)
  %6142 = fdiv fast float 1.000000e+00, %6141
  %6143 = fmul fast float %6142, %6137
  %6144 = fmul fast float %6142, %6138
  %6145 = fmul fast float %6142, %6139
  %6146 = fadd fast float %6141, %6095
  %6147 = fdiv fast float 1.000000e+00, %6146
  %6148 = fmul float %6106, %6147
  %6149 = fmul float %6148, %6148
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  br i1 %6136, label %6151, label %6172

; <label>:6151                                    ; preds = %6075
  %6152 = fmul fast float %6117, %6098
  %6153 = fmul fast float %6117, %6099
  %6154 = fmul fast float %6117, %6100
  %6155 = fadd fast float %6137, %6152
  %6156 = fadd fast float %6138, %6153
  %6157 = fadd fast float %6139, %6154
  %6158 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6157, float %6155, float %6156, float %6157)  ; Dot3(ax,ay,az,bx,by,bz)
  %6159 = call float @dx.op.unary.f32(i32 25, float %6158)  ; Rsqrt(value)
  %6160 = fmul fast float %6159, %6155
  %6161 = fmul fast float %6159, %6156
  %6162 = fmul fast float %6159, %6157
  %6163 = fsub fast float %198, %6109
  %6164 = fsub fast float %199, %6110
  %6165 = fsub fast float %200, %6111
  %6166 = fsub fast float -0.000000e+00, %6163
  %6167 = fsub fast float -0.000000e+00, %6164
  %6168 = fsub fast float -0.000000e+00, %6165
  %6169 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6098, float %6099, float %6100)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fcmp fast ogt float %6169, 0.000000e+00
  %6171 = uitofp i1 %6170 to float
  br label %6172

; <label>:6172                                    ; preds = %6151, %6075
  %6173 = phi float [ %6171, %6151 ], [ 1.000000e+00, %6075 ]
  %6174 = phi float [ %6160, %6151 ], [ %6143, %6075 ]
  %6175 = phi float [ %6161, %6151 ], [ %6144, %6075 ]
  %6176 = phi float [ %6162, %6151 ], [ %6145, %6075 ]
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6098, float %6099, float %6100, float %6174, float %6175, float %6176)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = fmul fast float %6177, %6177
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = fsub fast float 1.000000e+00, %6179
  %6181 = fmul fast float %6180, 5.000000e-01
  %6182 = fcmp fast ogt float %6177, 0.000000e+00
  %6183 = fsub fast float 1.000000e+00, %6181
  %6184 = select i1 %6182, float %6181, float %6183
  %6185 = fmul fast float %6184, %6133
  %6186 = fadd fast float %6185, %6131
  %6187 = fmul fast float %6186, 0x3EF0001000000000
  %6188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %51, float %6187, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6189 = extractvalue %dx.types.ResRet.f32 %6188, 0
  %6190 = fmul fast float %6177, %6115
  %6191 = fadd fast float %6190, %6116
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6193 = select i1 %6136, float 1.000000e+00, float %6192
  %6194 = select i1 %6136, float %6192, float 1.000000e+00
  %6195 = fmul fast float %6141, %6112
  %6196 = fsub fast float 1.000000e+00, %6195
  %6197 = fmul fast float %6196, %6118
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fmul fast float %6198, %6194
  %6200 = fmul fast float %6199, 2.000000e+00
  %6201 = fsub fast float 3.000000e+00, %6200
  %6202 = fmul fast float %6189, %6173
  %6203 = fmul fast float %6199, %6199
  %6204 = fmul fast float %6203, %6202
  %6205 = fmul fast float %6204, %6201
  %6206 = call float @dx.op.binary.f32(i32 36, float %6205, float %6205)  ; FMin(a,b)
  %6207 = call float @dx.op.binary.f32(i32 36, float %6205, float %6206)  ; FMin(a,b)
  %6208 = fcmp fast ogt float %6207, 0.000000e+00
  br i1 %6208, label %6217, label %6209, !dx.controlflow.hints !125

; <label>:6209                                    ; preds = %6559, %6317, %6172
  %6210 = phi float [ %6077, %6317 ], [ %6077, %6172 ], [ %6599, %6559 ]
  %6211 = phi float [ %6078, %6317 ], [ %6078, %6172 ], [ %6600, %6559 ]
  %6212 = phi float [ %6079, %6317 ], [ %6079, %6172 ], [ %6601, %6559 ]
  %6213 = phi float [ %6080, %6317 ], [ %6080, %6172 ], [ %6593, %6559 ]
  %6214 = phi float [ %6081, %6317 ], [ %6081, %6172 ], [ %6594, %6559 ]
  %6215 = phi float [ %6082, %6317 ], [ %6082, %6172 ], [ %6595, %6559 ]
  %6216 = icmp eq i32 %6076, %6086
  br i1 %6216, label %6602, label %6075

; <label>:6217                                    ; preds = %6172
  %6218 = icmp eq i32 %6134, 255
  br i1 %6218, label %6317, label %6219, !dx.controlflow.hints !126

; <label>:6219                                    ; preds = %6217
  %6220 = mul nuw nsw i32 %6134, 176
  %6221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6220, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6221, 2
  %6225 = extractvalue %dx.types.ResRet.f32 %6221, 3
  %6226 = add nuw nsw i32 %6220, 16
  %6227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6226, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.ResRet.f32 %6227, 1
  %6230 = add nuw nsw i32 %6220, 32
  %6231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6230, i32 undef)  ; BufferLoad(srv,index,wot)
  %6232 = extractvalue %dx.types.ResRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.ResRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.ResRet.f32 %6231, 2
  %6235 = add nuw nsw i32 %6220, 48
  %6236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6235, i32 undef)  ; BufferLoad(srv,index,wot)
  %6237 = extractvalue %dx.types.ResRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.ResRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.ResRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.ResRet.f32 %6236, 3
  %6241 = add nuw nsw i32 %6220, 64
  %6242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6241, i32 undef)  ; BufferLoad(srv,index,wot)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.ResRet.f32 %6242, 2
  %6246 = extractvalue %dx.types.ResRet.f32 %6242, 3
  %6247 = add nuw nsw i32 %6220, 80
  %6248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.ResRet.f32 %6248, 2
  %6252 = extractvalue %dx.types.ResRet.f32 %6248, 3
  %6253 = add nuw nsw i32 %6220, 96
  %6254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.ResRet.f32 %6254, 3
  %6259 = bitcast float %6229 to i32
  %6260 = fmul fast float %6234, %118
  %6261 = fmul fast float %6234, %119
  %6262 = fmul fast float %6234, %120
  %6263 = fadd fast float %6260, %198
  %6264 = fadd fast float %6261, %199
  %6265 = fadd fast float %6262, %200
  %6266 = fmul fast float %6263, %6237
  %6267 = call float @dx.op.tertiary.f32(i32 46, float %6264, float %6243, float %6266)  ; FMad(a,b,c)
  %6268 = call float @dx.op.tertiary.f32(i32 46, float %6265, float %6249, float %6267)  ; FMad(a,b,c)
  %6269 = fadd fast float %6268, %6255
  %6270 = fmul fast float %6263, %6238
  %6271 = call float @dx.op.tertiary.f32(i32 46, float %6264, float %6244, float %6270)  ; FMad(a,b,c)
  %6272 = call float @dx.op.tertiary.f32(i32 46, float %6265, float %6250, float %6271)  ; FMad(a,b,c)
  %6273 = fadd fast float %6272, %6256
  %6274 = fmul fast float %6263, %6239
  %6275 = call float @dx.op.tertiary.f32(i32 46, float %6264, float %6245, float %6274)  ; FMad(a,b,c)
  %6276 = call float @dx.op.tertiary.f32(i32 46, float %6265, float %6251, float %6275)  ; FMad(a,b,c)
  %6277 = fadd fast float %6276, %6257
  %6278 = fmul fast float %6263, %6240
  %6279 = call float @dx.op.tertiary.f32(i32 46, float %6264, float %6246, float %6278)  ; FMad(a,b,c)
  %6280 = call float @dx.op.tertiary.f32(i32 46, float %6265, float %6252, float %6279)  ; FMad(a,b,c)
  %6281 = fadd fast float %6280, %6258
  %6282 = fdiv fast float %6269, %6281
  %6283 = fdiv fast float %6273, %6281
  %6284 = fdiv fast float %6277, %6281
  %6285 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6284)  ; FMax(a,b)
  %6286 = fmul fast float %279, 0x401921FB60000000
  %6287 = call float @dx.op.unary.f32(i32 13, float %6286)  ; Sin(value)
  %6288 = call float @dx.op.unary.f32(i32 12, float %6286)  ; Cos(value)
  %6289 = fsub fast float -0.000000e+00, %6287
  %6290 = fmul fast float %6224, 5.000000e-01
  %6291 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6292 = call float @dx.op.unary.f32(i32 22, float %6291)  ; Frc(value)
  %6293 = fmul fast float %6292, 0x404A7DD040000000
  %6294 = call float @dx.op.unary.f32(i32 22, float %6293)  ; Frc(value)
  %6295 = fmul fast float %6294, %6233
  %6296 = fadd fast float %6295, %6290
  %6297 = call float @dx.op.tertiary.f32(i32 46, float %6296, float %6289, float 0.000000e+00)  ; FMad(a,b,c)
  %6298 = call float @dx.op.tertiary.f32(i32 46, float %6296, float %6288, float 0.000000e+00)  ; FMad(a,b,c)
  %6299 = fadd fast float %6297, %6282
  %6300 = fadd fast float %6298, %6283
  %6301 = fmul fast float %6299, %6228
  %6302 = fmul fast float %6300, %6228
  %6303 = call float @dx.op.binary.f32(i32 35, float %6301, float %6224)  ; FMax(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float %6302, float %6224)  ; FMax(a,b)
  %6305 = call float @dx.op.binary.f32(i32 36, float %6303, float %6225)  ; FMin(a,b)
  %6306 = call float @dx.op.binary.f32(i32 36, float %6304, float %6225)  ; FMin(a,b)
  %6307 = fadd fast float %6305, %6222
  %6308 = fadd fast float %6306, %6223
  %6309 = uitofp i32 %6259 to float
  %6310 = fadd fast float %6285, %6232
  %6311 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %21, %dx.types.Handle %53, float %6307, float %6308, float %6309, float undef, i32 0, i32 0, i32 undef, float %6310)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = fadd fast float %6312, -1.000000e+00
  %6314 = fmul fast float %6313, %6193
  %6315 = fadd fast float %6314, 1.000000e+00
  %6316 = fmul fast float %6315, %6205
  br label %6317

; <label>:6317                                    ; preds = %6219, %6217
  %6318 = phi float [ %6316, %6219 ], [ %6205, %6217 ]
  %6319 = call float @dx.op.binary.f32(i32 36, float %6318, float %6318)  ; FMin(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6318, float %6319)  ; FMin(a,b)
  %6321 = fcmp fast ogt float %6320, 0.000000e+00
  br i1 %6321, label %6322, label %6209, !dx.controlflow.hints !127

; <label>:6322                                    ; preds = %6317
  %6323 = fmul fast float %6318, %6127
  %6324 = fmul fast float %6318, %6128
  %6325 = fmul fast float %6318, %6129
  %6326 = fsub fast float %6111, %3788
  %6327 = fcmp fast ogt float %6326, 0.000000e+00
  %6328 = fsub fast float %200, %3788
  %6329 = fcmp fast ogt float %6328, 0.000000e+00
  %6330 = xor i1 %6329, %6327
  %6331 = fsub fast float %3788, %6111
  %6332 = fmul fast float %6331, 2.000000e+00
  %6333 = fadd fast float %6332, %6111
  %6334 = select i1 %6330, float %6111, float %6333
  %6335 = fsub fast float %6334, %200
  %6336 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6335, float %6137, float %6138, float %6335)  ; Dot3(ax,ay,az,bx,by,bz)
  %6337 = call float @dx.op.unary.f32(i32 25, float %6336)  ; Rsqrt(value)
  %6338 = fmul fast float %6337, %6137
  %6339 = fmul fast float %6337, %6138
  %6340 = fmul fast float %6337, %6335
  %6341 = fsub fast float %3788, %200
  %6342 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6341)  ; Dot3(ax,ay,az,bx,by,bz)
  %6343 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6338, float %6339, float %6340)  ; Dot3(ax,ay,az,bx,by,bz)
  %6344 = fdiv fast float 1.000000e+00, %6343
  %6345 = fmul fast float %6344, %6342
  %6346 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6328, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6347 = fcmp fast ogt float %6346, 0.000000e+00
  %6348 = fcmp fast olt float %6346, 0.000000e+00
  %6349 = zext i1 %6347 to i32
  %6350 = zext i1 %6348 to i32
  %6351 = sub nsw i32 %6349, %6350
  %6352 = sitofp i32 %6351 to float
  %6353 = fsub fast float %6334, %3788
  %6354 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6353, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6355 = fcmp fast ogt float %6354, 0.000000e+00
  %6356 = fcmp fast olt float %6354, 0.000000e+00
  %6357 = zext i1 %6355 to i32
  %6358 = zext i1 %6356 to i32
  %6359 = sub nsw i32 %6357, %6358
  %6360 = sitofp i32 %6359 to float
  %6361 = fcmp fast une float %6352, %6360
  br i1 %6361, label %6362, label %6372

; <label>:6362                                    ; preds = %6322
  %6363 = fmul fast float %6345, %6340
  %6364 = fmul fast float %6345, %6339
  %6365 = fmul fast float %6345, %6338
  %6366 = fmul fast float %6365, %6365
  %6367 = fmul fast float %6364, %6364
  %6368 = fadd fast float %6366, %6367
  %6369 = fmul fast float %6363, %6363
  %6370 = fadd fast float %6368, %6369
  %6371 = call float @dx.op.unary.f32(i32 24, float %6370)  ; Sqrt(value)
  br label %6384

; <label>:6372                                    ; preds = %6322
  %6373 = icmp slt i32 %6351, 0
  br i1 %6373, label %6374, label %6384

; <label>:6374                                    ; preds = %6372
  %6375 = fsub fast float %198, %6109
  %6376 = fsub fast float %199, %6110
  %6377 = fsub fast float %200, %6334
  %6378 = fmul fast float %6375, %6375
  %6379 = fmul fast float %6376, %6376
  %6380 = fadd fast float %6378, %6379
  %6381 = fmul fast float %6377, %6377
  %6382 = fadd fast float %6380, %6381
  %6383 = call float @dx.op.unary.f32(i32 24, float %6382)  ; Sqrt(value)
  br label %6384

; <label>:6384                                    ; preds = %6374, %6372, %6362
  %6385 = phi float [ %6371, %6362 ], [ %6383, %6374 ], [ 0.000000e+00, %6372 ]
  %6386 = and i1 %6329, %6327
  %6387 = fsub fast float -0.000000e+00, %6385
  %6388 = select i1 %6386, float -0.000000e+00, float %6387
  %6389 = fmul fast float %3789, 0x3FF7154760000000
  %6390 = fmul fast float %6389, %6388
  %6391 = fmul fast float %3790, 0x3FF7154760000000
  %6392 = fmul fast float %6391, %6388
  %6393 = fmul fast float %3791, 0x3FF7154760000000
  %6394 = fmul fast float %6393, %6388
  %6395 = call float @dx.op.unary.f32(i32 21, float %6390)  ; Exp(value)
  %6396 = call float @dx.op.unary.f32(i32 21, float %6392)  ; Exp(value)
  %6397 = call float @dx.op.unary.f32(i32 21, float %6394)  ; Exp(value)
  %6398 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6399 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6400 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6401 = fmul fast float %6323, %6398
  %6402 = fmul fast float %6324, %6399
  %6403 = fmul fast float %6325, %6400
  %6404 = fsub fast float %6143, %4614
  %6405 = fsub fast float %6144, %4615
  %6406 = fsub fast float %6145, %4616
  %6407 = call float @dx.op.dot3.f32(i32 55, float %6404, float %6405, float %6406, float %6404, float %6405, float %6406)  ; Dot3(ax,ay,az,bx,by,bz)
  %6408 = call float @dx.op.unary.f32(i32 25, float %6407)  ; Rsqrt(value)
  %6409 = fmul fast float %6408, %6404
  %6410 = fmul fast float %6408, %6405
  %6411 = fmul fast float %6408, %6406
  %6412 = call float @dx.op.dot3.f32(i32 55, float %6143, float %6144, float %6145, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float %6409, float %6410, float %6411)  ; Dot3(ax,ay,az,bx,by,bz)
  %6414 = call float @dx.op.unary.f32(i32 7, float %6412)  ; Saturate(value)
  %6415 = fmul fast float %6414, %6150
  %6416 = fmul fast float %6414, %6414
  %6417 = fmul fast float %6416, %4635
  %6418 = call float @dx.op.unary.f32(i32 7, float %6417)  ; Saturate(value)
  %6419 = fmul fast float %6415, %6418
  %6420 = bitcast float %6140 to i32
  %6421 = ashr i32 %6420, 1
  %6422 = sub nsw i32 1597463007, %6421
  %6423 = bitcast i32 %6422 to float
  %6424 = fmul fast float %6423, %6137
  %6425 = fmul fast float %6423, %6138
  %6426 = fmul fast float %6423, %6139
  %6427 = fsub fast float %6424, %4614
  %6428 = fsub fast float %6425, %4615
  %6429 = fsub fast float %6426, %4616
  %6430 = call float @dx.op.dot3.f32(i32 55, float %6427, float %6428, float %6429, float %6427, float %6428, float %6429)  ; Dot3(ax,ay,az,bx,by,bz)
  %6431 = call float @dx.op.unary.f32(i32 25, float %6430)  ; Rsqrt(value)
  %6432 = fmul fast float %6427, %6431
  %6433 = fmul fast float %6428, %6431
  %6434 = fmul fast float %6429, %6431
  %6435 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %6432, float %6433, float %6434)  ; Dot3(ax,ay,az,bx,by,bz)
  %6436 = fmul fast float %6435, %6435
  %6437 = call float @dx.op.unary.f32(i32 6, float %6412)  ; FAbs(value)
  %6438 = fsub fast float 1.000000e+00, %4577
  %6439 = call float @dx.op.binary.f32(i32 35, float %6438, float 0x3F847AE140000000)  ; FMax(a,b)
  %6440 = fmul fast float %6439, %6439
  %6441 = fmul fast float %6440, %6440
  %6442 = fsub fast float 1.000000e+00, %6441
  %6443 = fmul fast float %4622, %4622
  %6444 = fmul fast float %6443, %6442
  %6445 = fadd fast float %6444, %6441
  %6446 = bitcast float %6445 to i32
  %6447 = ashr i32 %6446, 1
  %6448 = add nsw i32 %6447, 532487669
  %6449 = bitcast i32 %6448 to float
  %6450 = fadd fast float %6449, %4622
  %6451 = fmul fast float %6441, %6436
  %6452 = fsub fast float 1.000000e+00, %6436
  %6453 = fadd fast float %6452, %6451
  %6454 = fmul fast float %6437, %6437
  %6455 = fmul fast float %6454, %6442
  %6456 = fadd fast float %6455, %6441
  %6457 = bitcast float %6456 to i32
  %6458 = ashr i32 %6457, 1
  %6459 = add nsw i32 %6458, 532487669
  %6460 = bitcast i32 %6459 to float
  %6461 = fadd fast float %6460, %6437
  %6462 = fmul fast float %6453, %6453
  %6463 = fmul fast float %6462, %6450
  %6464 = fmul fast float %6463, %6461
  %6465 = fdiv fast float 1.000000e+00, %6464
  %6466 = bitcast float %6441 to i32
  %6467 = sitofp i32 %6466 to float
  %6468 = fmul fast float %6467, 0x3FE7F73180000000
  %6469 = fadd fast float %6468, 0x41AFE27C40000000
  %6470 = fptosi float %6469 to i32
  %6471 = bitcast i32 %6470 to float
  %6472 = fmul fast float %6106, 0x3FD80E9D60000000
  %6473 = fmul fast float %6472, %6423
  %6474 = fadd fast float %6471, %6473
  %6475 = bitcast float %6474 to i32
  %6476 = sub nsw i32 2129859010, %6475
  %6477 = bitcast i32 %6476 to float
  %6478 = fmul fast float %6441, %6465
  %6479 = fmul fast float %6478, %6471
  %6480 = fmul fast float %6479, %6477
  %6481 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6482 = fsub fast float 1.000000e+00, %6481
  %6483 = bitcast float %6482 to i32
  %6484 = sitofp i32 %6483 to float
  %6485 = fmul fast float %6484, 5.000000e+00
  %6486 = fadd fast float %6485, 0xC1EFBF8940000000
  %6487 = fptosi float %6486 to i32
  %6488 = bitcast i32 %6487 to float
  %6489 = fsub fast float 1.000000e+00, %4571
  %6490 = fsub fast float 1.000000e+00, %4572
  %6491 = fsub fast float 1.000000e+00, %4620
  %6492 = fmul fast float %6488, %6489
  %6493 = fmul fast float %6488, %6490
  %6494 = fmul fast float %6488, %6491
  %6495 = fadd fast float %6492, %4571
  %6496 = fadd fast float %6493, %4572
  %6497 = fadd fast float %6494, %4620
  br i1 %4751, label %6498, label %6521

; <label>:6498                                    ; preds = %6384
  %6499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %51, float %3386, float %6481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6500 = extractvalue %dx.types.ResRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.ResRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.ResRet.f32 %6499, 2
  %6503 = fadd fast float %6500, -5.000000e-01
  %6504 = fadd fast float %6501, -5.000000e-01
  %6505 = fadd fast float %6502, -5.000000e-01
  %6506 = fmul fast float %4571, 4.000000e+00
  %6507 = fmul fast float %6506, %6489
  %6508 = fmul fast float %6507, %6503
  %6509 = fmul fast float %4572, 4.000000e+00
  %6510 = fmul fast float %6509, %6490
  %6511 = fmul fast float %6510, %6504
  %6512 = fmul fast float %4620, 4.000000e+00
  %6513 = fmul fast float %6512, %6491
  %6514 = fmul fast float %6513, %6505
  %6515 = fadd fast float %6508, %6495
  %6516 = fadd fast float %6511, %6496
  %6517 = fadd fast float %6514, %6497
  %6518 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6519 = call float @dx.op.unary.f32(i32 7, float %6516)  ; Saturate(value)
  %6520 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  br label %6521

; <label>:6521                                    ; preds = %6498, %6384
  %6522 = phi float [ %6518, %6498 ], [ %6495, %6384 ]
  %6523 = phi float [ %6519, %6498 ], [ %6496, %6384 ]
  %6524 = phi float [ %6520, %6498 ], [ %6497, %6384 ]
  %6525 = fmul fast float %6412, 9.843750e-01
  %6526 = fadd fast float %6525, 7.812500e-03
  %6527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %6526, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6528 = extractvalue %dx.types.ResRet.f32 %6527, 2
  %6529 = extractvalue %dx.types.ResRet.f32 %6527, 3
  %6530 = fmul fast float %6528, %4571
  %6531 = fmul fast float %6528, %4572
  %6532 = fmul fast float %6528, %4620
  %6533 = fadd fast float %6530, %6529
  %6534 = fadd fast float %6531, %6529
  %6535 = fadd fast float %6532, %6529
  br i1 %4751, label %6536, label %6559

; <label>:6536                                    ; preds = %6521
  %6537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %51, float %3386, float %6412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.ResRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.ResRet.f32 %6537, 2
  %6541 = fadd fast float %6538, -5.000000e-01
  %6542 = fadd fast float %6539, -5.000000e-01
  %6543 = fadd fast float %6540, -5.000000e-01
  %6544 = fmul fast float %4571, 4.000000e+00
  %6545 = fmul fast float %6544, %6489
  %6546 = fmul fast float %6545, %6541
  %6547 = fmul fast float %4572, 4.000000e+00
  %6548 = fmul fast float %6547, %6490
  %6549 = fmul fast float %6548, %6542
  %6550 = fmul fast float %4620, 4.000000e+00
  %6551 = fmul fast float %6550, %6491
  %6552 = fmul fast float %6551, %6543
  %6553 = fadd fast float %6546, %6533
  %6554 = fadd fast float %6549, %6534
  %6555 = fadd fast float %6552, %6535
  %6556 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6557 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6558 = call float @dx.op.unary.f32(i32 7, float %6555)  ; Saturate(value)
  br label %6559

; <label>:6559                                    ; preds = %6536, %6521
  %6560 = phi float [ %6556, %6536 ], [ %6533, %6521 ]
  %6561 = phi float [ %6557, %6536 ], [ %6534, %6521 ]
  %6562 = phi float [ %6558, %6536 ], [ %6535, %6521 ]
  %6563 = call float @dx.op.binary.f32(i32 35, float %6561, float %6562)  ; FMax(a,b)
  %6564 = call float @dx.op.binary.f32(i32 35, float %6560, float %6563)  ; FMax(a,b)
  %6565 = fsub fast float 1.000000e+00, %6564
  %6566 = fmul fast float %6522, %6480
  %6567 = fmul fast float %6523, %6480
  %6568 = fmul fast float %6524, %6480
  %6569 = fsub fast float 1.000000e+00, %6413
  %6570 = bitcast float %6569 to i32
  %6571 = sitofp i32 %6570 to float
  %6572 = fmul fast float %6571, 5.000000e+00
  %6573 = fadd fast float %6572, 0xC1EFBF8940000000
  %6574 = fptosi float %6573 to i32
  %6575 = bitcast i32 %6574 to float
  %6576 = fmul fast float %6575, %3387
  %6577 = fmul fast float %6565, %6576
  %6578 = fmul fast float %6577, %4854
  %6579 = fmul fast float %6577, %4855
  %6580 = fmul fast float %6577, %4856
  %6581 = fadd fast float %6578, %6566
  %6582 = fadd fast float %6579, %6567
  %6583 = fadd fast float %6580, %6568
  %6584 = fmul fast float %6401, %3383
  %6585 = fmul fast float %6584, %6419
  %6586 = fmul fast float %6585, %6565
  %6587 = fmul fast float %6402, %3383
  %6588 = fmul fast float %6587, %6419
  %6589 = fmul fast float %6588, %6565
  %6590 = fmul fast float %6403, %3383
  %6591 = fmul fast float %6590, %6419
  %6592 = fmul fast float %6591, %6565
  %6593 = fadd fast float %6586, %6080
  %6594 = fadd fast float %6589, %6081
  %6595 = fadd fast float %6592, %6082
  %6596 = fmul fast float %6585, %6581
  %6597 = fmul fast float %6588, %6582
  %6598 = fmul fast float %6591, %6583
  %6599 = fadd fast float %6596, %6077
  %6600 = fadd fast float %6597, %6078
  %6601 = fadd fast float %6598, %6079
  br label %6209

; <label>:6602                                    ; preds = %6209
  br label %6603

; <label>:6603                                    ; preds = %6602, %6043
  %6604 = phi float [ %6045, %6043 ], [ %6210, %6602 ]
  %6605 = phi float [ %6046, %6043 ], [ %6211, %6602 ]
  %6606 = phi float [ %6047, %6043 ], [ %6212, %6602 ]
  %6607 = phi float [ %6048, %6043 ], [ %6213, %6602 ]
  %6608 = phi float [ %6049, %6043 ], [ %6214, %6602 ]
  %6609 = phi float [ %6050, %6043 ], [ %6215, %6602 ]
  %6610 = add i32 %6044, 1
  %6611 = icmp ugt i32 %6610, %6040
  br i1 %6611, label %6612, label %6043

; <label>:6612                                    ; preds = %6603
  br label %6613

; <label>:6613                                    ; preds = %6612, %5993, %5983
  %6614 = phi float [ %5984, %5983 ], [ %5984, %5993 ], [ %6604, %6612 ]
  %6615 = phi float [ %5985, %5983 ], [ %5985, %5993 ], [ %6605, %6612 ]
  %6616 = phi float [ %5986, %5983 ], [ %5986, %5993 ], [ %6606, %6612 ]
  %6617 = phi float [ %5987, %5983 ], [ %5987, %5993 ], [ %6607, %6612 ]
  %6618 = phi float [ %5988, %5983 ], [ %5988, %5993 ], [ %6608, %6612 ]
  %6619 = phi float [ %5989, %5983 ], [ %5989, %5993 ], [ %6609, %6612 ]
  %6620 = fmul fast float %3383, %3383
  %6621 = fsub fast float 1.000000e+00, %6620
  %6622 = call float @dx.op.dot3.f32(i32 55, float %6621, float %6621, float %6621, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6623 = fsub fast float 1.000000e+00, %6622
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = fmul fast float %6625, %4870
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 3
  %6629 = fsub fast float 1.000000e+00, %3391
  %6630 = call float @dx.op.unary.f32(i32 7, float %6629)  ; Saturate(value)
  %6631 = fadd fast float %6619, %3389
  %6632 = fmul fast float %6631, %3391
  %6633 = fmul fast float %6630, %6628
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 3
  %6636 = fmul fast float %6617, %4568
  %6637 = fmul fast float %6618, %4569
  %6638 = fmul fast float %6619, %4570
  %6639 = fcmp fast ogt float %102, %231
  %6640 = and i1 %6639, %3794
  %6641 = or i1 %3800, %6640
  %6642 = icmp eq i32 %3793, 2
  %6643 = fcmp fast ole float %102, %231
  %6644 = and i1 %6643, %6642
  %6645 = or i1 %6644, %6641
  br i1 %6640, label %6646, label %6903

; <label>:6646                                    ; preds = %6613
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6650 = fmul fast float %6648, %111
  %6651 = fmul fast float %6649, %112
  %6652 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6653 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6654 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %51, float %6652, float %6653, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = extractvalue %dx.types.ResRet.f32 %6654, 3
  %6659 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %51, float %6652, float %6653, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.ResRet.f32 %6659, 3
  %6664 = call float @dx.op.binary.f32(i32 35, float %6656, float %6657)  ; FMax(a,b)
  %6665 = call float @dx.op.binary.f32(i32 35, float %6655, float %6664)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6665, float %6658)  ; FMax(a,b)
  %6667 = call float @dx.op.binary.f32(i32 36, float %6661, float %6662)  ; FMin(a,b)
  %6668 = call float @dx.op.binary.f32(i32 36, float %6660, float %6667)  ; FMin(a,b)
  %6669 = call float @dx.op.binary.f32(i32 36, float %6668, float %6663)  ; FMin(a,b)
  %6670 = fmul fast float %6666, 2.550000e+02
  %6671 = fadd fast float %6670, 0x3F70101020000000
  %6672 = fptoui float %6671 to i32
  %6673 = fmul fast float %6669, 2.550000e+02
  %6674 = fadd fast float %6673, 0x3F70101020000000
  %6675 = fptoui float %6674 to i32
  %6676 = icmp ult i32 %6672, %6675
  br i1 %6676, label %6677, label %6845

; <label>:6677                                    ; preds = %6646
  %6678 = fcmp fast ogt float %101, 9.843750e-01
  %6679 = fadd fast float %102, -4.000000e+00
  %6680 = select i1 %6678, float -4.000000e+00, float %6679
  %6681 = call float @dx.op.binary.f32(i32 35, float %6680, float 0.000000e+00)  ; FMax(a,b)
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 0
  %6684 = fadd fast float %6683, %6681
  %6685 = extractvalue %dx.types.CBufRet.f32 %6682, 2
  %6686 = fmul fast float %6684, %6685
  %6687 = call float @dx.op.unary.f32(i32 23, float %6686)  ; Log(value)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6682, 3
  %6689 = fmul fast float %6688, %6687
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6692 = fmul fast float %6689, %6691
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6694 = uitofp i32 %6672 to float
  %6695 = uitofp i32 %6675 to float
  %6696 = fadd fast float %6694, 5.000000e-01
  %6697 = fadd fast float %6695, 5.000000e-01
  %6698 = fmul fast float %6691, %6696
  %6699 = fmul fast float %6691, %6697
  %6700 = fadd fast float %6698, 0x3F0FFB4800000000
  %6701 = fadd fast float %6699, 0xBF0FFB4800000000
  %6702 = call float @dx.op.binary.f32(i32 35, float %6693, float %6700)  ; FMax(a,b)
  %6703 = call float @dx.op.binary.f32(i32 36, float %6702, float %6701)  ; FMin(a,b)
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6707 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6708 = fmul fast float %6705, %6703
  %6709 = fadd fast float %6707, %6708
  %6710 = fadd fast float %6707, %6706
  %6711 = fsub fast float %6705, %6706
  %6712 = fadd fast float %6711, %6707
  %6713 = call float @dx.op.binary.f32(i32 35, float %6709, float %6710)  ; FMax(a,b)
  %6714 = call float @dx.op.binary.f32(i32 36, float %6713, float %6712)  ; FMin(a,b)
  %6715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6652, float %6653, float %6714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6716 = extractvalue %dx.types.ResRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.ResRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.ResRet.f32 %6715, 2
  %6719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.i32 %6719, 0
  %6721 = extractvalue %dx.types.CBufRet.i32 %6719, 1
  %6722 = uitofp i32 %6720 to float
  %6723 = uitofp i32 %6721 to float
  %6724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6725 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.CBufRet.f32 %6724, 1
  %6727 = fmul fast float %6722, %6652
  %6728 = fmul fast float %6723, %6653
  %6729 = fadd fast float %6727, -5.000000e-01
  %6730 = fadd fast float %6728, -5.000000e-01
  %6731 = call float @dx.op.unary.f32(i32 22, float %6729)  ; Frc(value)
  %6732 = call float @dx.op.unary.f32(i32 22, float %6730)  ; Frc(value)
  %6733 = fmul fast float %6731, %6731
  %6734 = fmul fast float %6733, %6731
  %6735 = fsub fast float 3.000000e+00, %6731
  %6736 = fmul fast float %6733, %6735
  %6737 = fmul fast float %6731, 3.000000e+00
  %6738 = fmul fast float %6734, 3.000000e+00
  %6739 = fmul fast float %6733, 6.000000e+00
  %6740 = fsub fast float %6738, %6739
  %6741 = fadd fast float %6740, 4.000000e+00
  %6742 = fmul fast float %6741, 0x3FC5555560000000
  %6743 = fmul fast float %6734, -3.000000e+00
  %6744 = fadd fast float %6733, %6731
  %6745 = fmul fast float %6744, 3.000000e+00
  %6746 = fadd fast float %6743, 1.000000e+00
  %6747 = fadd fast float %6746, %6745
  %6748 = fmul fast float %6734, 0x3FC5555560000000
  %6749 = fmul fast float %6732, %6732
  %6750 = fmul fast float %6749, %6732
  %6751 = fsub fast float 3.000000e+00, %6732
  %6752 = fmul fast float %6749, %6751
  %6753 = fmul fast float %6732, 3.000000e+00
  %6754 = fmul fast float %6750, 3.000000e+00
  %6755 = fmul fast float %6749, 6.000000e+00
  %6756 = fsub fast float %6754, %6755
  %6757 = fadd fast float %6756, 4.000000e+00
  %6758 = fmul fast float %6757, 0x3FC5555560000000
  %6759 = fmul fast float %6750, -3.000000e+00
  %6760 = fadd fast float %6749, %6732
  %6761 = fmul fast float %6760, 3.000000e+00
  %6762 = fadd fast float %6759, 1.000000e+00
  %6763 = fadd fast float %6762, %6761
  %6764 = fmul fast float %6750, 0x3FC5555560000000
  %6765 = fadd fast float %6731, 1.000000e+00
  %6766 = fsub fast float 1.000000e+00, %6737
  %6767 = fadd fast float %6766, %6736
  %6768 = fadd fast float %6767, %6741
  %6769 = fmul fast float %6768, 0x3FC5555560000000
  %6770 = fdiv fast float %6742, %6769
  %6771 = fsub fast float %6765, %6770
  %6772 = fsub fast float 1.000000e+00, %6731
  %6773 = fadd fast float %6747, %6734
  %6774 = fmul fast float %6773, 0x3FC5555560000000
  %6775 = fdiv fast float %6748, %6774
  %6776 = fadd fast float %6772, %6775
  %6777 = fadd fast float %6732, 1.000000e+00
  %6778 = fsub fast float 1.000000e+00, %6753
  %6779 = fadd fast float %6778, %6752
  %6780 = fadd fast float %6779, %6757
  %6781 = fmul fast float %6780, 0x3FC5555560000000
  %6782 = fdiv fast float %6758, %6781
  %6783 = fsub fast float %6777, %6782
  %6784 = fsub fast float 1.000000e+00, %6732
  %6785 = fadd fast float %6763, %6750
  %6786 = fmul fast float %6785, 0x3FC5555560000000
  %6787 = fdiv fast float %6764, %6786
  %6788 = fadd fast float %6787, %6784
  %6789 = fmul fast float %6771, %6725
  %6790 = fsub fast float %6652, %6789
  %6791 = fmul fast float %6776, %6725
  %6792 = fadd fast float %6791, %6652
  %6793 = fmul fast float %6788, %6726
  %6794 = fadd fast float %6793, %6653
  %6795 = fmul fast float %6783, %6726
  %6796 = fsub fast float %6653, %6795
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %6790, float %6796, float %6714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.ResRet.f32 %6797, 2
  %6801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %6792, float %6796, float %6714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.ResRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.ResRet.f32 %6801, 2
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %6790, float %6794, float %6714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.ResRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.ResRet.f32 %6805, 2
  %6809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %6792, float %6794, float %6714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6810 = extractvalue %dx.types.ResRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.ResRet.f32 %6809, 2
  %6813 = fsub fast float %6806, %6798
  %6814 = fsub fast float %6807, %6799
  %6815 = fsub fast float %6808, %6800
  %6816 = fmul fast float %6813, %6786
  %6817 = fmul fast float %6814, %6786
  %6818 = fmul fast float %6815, %6786
  %6819 = fadd fast float %6816, %6798
  %6820 = fadd fast float %6817, %6799
  %6821 = fadd fast float %6818, %6800
  %6822 = fsub fast float %6810, %6802
  %6823 = fsub fast float %6811, %6803
  %6824 = fsub fast float %6812, %6804
  %6825 = fmul fast float %6822, %6786
  %6826 = fmul fast float %6823, %6786
  %6827 = fmul fast float %6824, %6786
  %6828 = fsub fast float %6802, %6819
  %6829 = fadd fast float %6828, %6825
  %6830 = fsub fast float %6803, %6820
  %6831 = fadd fast float %6830, %6826
  %6832 = fsub fast float %6804, %6821
  %6833 = fadd fast float %6832, %6827
  %6834 = fmul fast float %6829, %6774
  %6835 = fmul fast float %6831, %6774
  %6836 = fmul fast float %6833, %6774
  %6837 = fadd fast float %6834, %6819
  %6838 = fadd fast float %6835, %6820
  %6839 = fadd fast float %6836, %6821
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 1
  %6842 = fmul fast float %6837, %6841
  %6843 = fmul fast float %6838, %6841
  %6844 = fmul fast float %6839, %6841
  br label %6845

; <label>:6845                                    ; preds = %6677, %6646
  %6846 = phi float [ %6716, %6677 ], [ 1.000000e+00, %6646 ]
  %6847 = phi float [ %6717, %6677 ], [ 1.000000e+00, %6646 ]
  %6848 = phi float [ %6718, %6677 ], [ 1.000000e+00, %6646 ]
  %6849 = phi float [ %6842, %6677 ], [ 0.000000e+00, %6646 ]
  %6850 = phi float [ %6843, %6677 ], [ 0.000000e+00, %6646 ]
  %6851 = phi float [ %6844, %6677 ], [ 0.000000e+00, %6646 ]
  %6852 = fmul fast float %6849, %6623
  %6853 = fmul fast float %6850, %6623
  %6854 = fmul fast float %6851, %6623
  %6855 = call float @dx.op.dot3.f32(i32 55, float %6846, float %6847, float %6848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6856 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6853, float %6854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = select i1 %268, float %6855, float %6846
  %6858 = select i1 %268, float %6855, float %6847
  %6859 = select i1 %268, float 1.000000e+00, float %6848
  %6860 = select i1 %268, float %6856, float %6852
  %6861 = select i1 %268, float 0.000000e+00, float %6853
  %6862 = select i1 %268, float 0.000000e+00, float %6854
  %6863 = fmul fast float %6857, %6636
  %6864 = fmul fast float %6858, %6637
  %6865 = fmul fast float %6859, %6638
  %6866 = fadd fast float %6863, %6860
  %6867 = fadd fast float %6864, %6861
  %6868 = fadd fast float %6862, %6865
  %6869 = fmul fast float %6857, %6614
  %6870 = fmul fast float %6858, %6615
  %6871 = fmul fast float %6859, %6616
  %6872 = fmul fast float %147, %6648
  %6873 = fmul fast float %149, %6649
  %6874 = fsub fast float 1.000000e+00, %6872
  %6875 = fsub fast float 1.000000e+00, %6873
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6880 = fmul fast float %6874, %6877
  %6881 = fmul fast float %6874, %6878
  %6882 = fmul fast float %6874, %6879
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.CBufRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.CBufRet.f32 %6883, 2
  %6887 = fmul fast float %6875, %6884
  %6888 = fmul fast float %6875, %6885
  %6889 = fmul fast float %6875, %6886
  %6890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6891 = extractvalue %dx.types.CBufRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.CBufRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.CBufRet.f32 %6890, 2
  %6894 = fadd fast float %6887, %6891
  %6895 = fadd fast float %6894, %6880
  %6896 = fadd fast float %6888, %6892
  %6897 = fadd fast float %6896, %6881
  %6898 = fadd fast float %6889, %6893
  %6899 = fadd fast float %6898, %6882
  %6900 = fmul fast float %6895, %231
  %6901 = fmul fast float %6897, %231
  %6902 = fmul fast float %6899, %231
  br label %6903

; <label>:6903                                    ; preds = %6845, %6613
  %6904 = phi float [ %6900, %6845 ], [ %198, %6613 ]
  %6905 = phi float [ %6901, %6845 ], [ %199, %6613 ]
  %6906 = phi float [ %6902, %6845 ], [ %200, %6613 ]
  %6907 = phi float [ %231, %6845 ], [ %102, %6613 ]
  %6908 = phi float [ %6866, %6845 ], [ %6636, %6613 ]
  %6909 = phi float [ %6867, %6845 ], [ %6637, %6613 ]
  %6910 = phi float [ %6868, %6845 ], [ %6638, %6613 ]
  %6911 = phi float [ %6869, %6845 ], [ %6614, %6613 ]
  %6912 = phi float [ %6870, %6845 ], [ %6615, %6613 ]
  %6913 = phi float [ %6871, %6845 ], [ %6616, %6613 ]
  %6914 = phi float [ %6846, %6845 ], [ 1.000000e+00, %6613 ]
  br i1 %6645, label %8069, label %6915

; <label>:6915                                    ; preds = %6903
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6920 = extractvalue %dx.types.CBufRet.f32 %6916, 3
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6924 = extractvalue %dx.types.CBufRet.f32 %6921, 2
  %6925 = extractvalue %dx.types.CBufRet.f32 %6921, 3
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 0
  %6928 = extractvalue %dx.types.CBufRet.f32 %6926, 1
  %6929 = extractvalue %dx.types.CBufRet.f32 %6926, 2
  %6930 = extractvalue %dx.types.CBufRet.f32 %6926, 3
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6934 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6935 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 3
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 3
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6941 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6942 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6943 = fcmp fast olt float %6942, -5.000000e-01
  %6944 = call float @dx.op.dot3.f32(i32 55, float %6904, float %6905, float %6906, float %6904, float %6905, float %6906)  ; Dot3(ax,ay,az,bx,by,bz)
  %6945 = call float @dx.op.unary.f32(i32 25, float %6944)  ; Rsqrt(value)
  %6946 = fmul fast float %6945, %6944
  %6947 = fmul fast float %6945, %6904
  %6948 = fmul fast float %6945, %6905
  %6949 = fmul fast float %6945, %6906
  %6950 = fadd fast float %6946, %6920
  %6951 = call float @dx.op.dot3.f32(i32 55, float %6947, float %6948, float %6949, float %6917, float %6918, float %6919)  ; Dot3(ax,ay,az,bx,by,bz)
  %6952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.i32 %6952, 1
  %6954 = and i32 %6953, 1
  %6955 = icmp ne i32 %6954, 0
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 2
  %6958 = fcmp fast ogt float %6957, 0.000000e+00
  %6959 = and i1 %6955, %6958
  br i1 %6959, label %6960, label %7366, !dx.controlflow.hints !128

; <label>:6960                                    ; preds = %6915
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 3
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 2
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6967 = fsub fast float %6964, %6966
  %6968 = and i32 %6953, 2
  %6969 = extractvalue %dx.types.CBufRet.i32 %6952, 0
  %6970 = call i32 @dx.op.binary.i32(i32 40, i32 %6969, i32 3)  ; UMin(a,b)
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6975 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6976 = fsub fast float %6972, %6974
  %6977 = fsub fast float %6973, %6975
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = fcmp fast ogt float %6979, 0.000000e+00
  %6981 = fsub fast float -0.000000e+00, %6976
  %6982 = fsub fast float -0.000000e+00, %6977
  %6983 = call float @dx.op.dot2.f32(i32 54, float %6947, float %6948, float %6947, float %6948)  ; Dot2(ax,ay,bx,by)
  %6984 = call float @dx.op.dot2.f32(i32 54, float %6947, float %6948, float %6981, float %6982)  ; Dot2(ax,ay,bx,by)
  %6985 = fmul fast float %6984, 2.000000e+00
  %6986 = call float @dx.op.dot2.f32(i32 54, float %6981, float %6982, float %6981, float %6982)  ; Dot2(ax,ay,bx,by)
  %6987 = fmul fast float %6979, %6979
  %6988 = fsub fast float %6986, %6987
  %6989 = fmul fast float %6985, %6985
  %6990 = fmul fast float %6983, 4.000000e+00
  %6991 = fmul fast float %6990, %6988
  %6992 = fsub fast float %6989, %6991
  %6993 = fcmp fast ogt float %6992, 0.000000e+00
  br i1 %6993, label %6994, label %7009

; <label>:6994                                    ; preds = %6960
  %6995 = fcmp fast ogt float %6985, 0.000000e+00
  %6996 = call float @dx.op.unary.f32(i32 24, float %6992)  ; Sqrt(value)
  %6997 = fsub fast float -0.000000e+00, %6996
  %6998 = select i1 %6995, float %6996, float %6997
  %6999 = fadd fast float %6998, %6985
  %7000 = fmul float %6999, -5.000000e-01
  %7001 = fdiv fast float %7000, %6983
  %7002 = call float @dx.op.binary.f32(i32 35, float %7001, float 0.000000e+00)  ; FMax(a,b)
  %7003 = call float @dx.op.binary.f32(i32 36, float %6946, float %7002)  ; FMin(a,b)
  %7004 = fdiv fast float %6988, %7000
  %7005 = call float @dx.op.binary.f32(i32 35, float %7004, float 0.000000e+00)  ; FMax(a,b)
  %7006 = call float @dx.op.binary.f32(i32 36, float %6946, float %7005)  ; FMin(a,b)
  %7007 = call float @dx.op.binary.f32(i32 36, float %7003, float %7006)  ; FMin(a,b)
  %7008 = call float @dx.op.binary.f32(i32 35, float %7003, float %7006)  ; FMax(a,b)
  br label %7009

; <label>:7009                                    ; preds = %6994, %6960
  %7010 = phi float [ %7008, %6994 ], [ -1.000000e+00, %6960 ]
  %7011 = phi float [ %7007, %6994 ], [ -1.000000e+00, %6960 ]
  %7012 = phi i1 [ true, %6994 ], [ false, %6960 ]
  %7013 = and i1 %6980, %7012
  br i1 %7013, label %7014, label %7016

; <label>:7014                                    ; preds = %7009
  %7015 = fcmp fast oeq float %7011, %7010
  br i1 %7015, label %7319, label %7017

; <label>:7016                                    ; preds = %7009
  br i1 %6980, label %7319, label %7017

; <label>:7017                                    ; preds = %7016, %7014
  %7018 = phi float [ %6946, %7016 ], [ %7010, %7014 ]
  %7019 = phi float [ 0.000000e+00, %7016 ], [ %7011, %7014 ]
  %7020 = icmp ne i32 %6968, 0
  %7021 = fmul fast float %7018, %6949
  %7022 = fadd fast float %7021, %6962
  %7023 = fmul fast float %7022, %7018
  %7024 = select i1 %7020, float 0.000000e+00, float %7023
  %7025 = fcmp fast oeq float %6949, 0.000000e+00
  %7026 = fdiv fast float %6967, %6949
  %7027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7026)  ; FMax(a,b)
  %7028 = select i1 %7025, float %7018, float %7027
  %7029 = call float @dx.op.binary.f32(i32 36, float %7018, float %7028)  ; FMin(a,b)
  %7030 = fcmp fast ogt float %6949, 0.000000e+00
  %7031 = fcmp fast olt float %6967, 0.000000e+00
  br i1 %7030, label %7032, label %7089

; <label>:7032                                    ; preds = %7017
  %7033 = icmp eq i32 %6968, 0
  br i1 %7031, label %7034, label %7078

; <label>:7034                                    ; preds = %7032
  %7035 = select i1 %7033, float %7018, float 0.000000e+00
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = call float @dx.op.unary.f32(i32 6, float %7036)  ; FAbs(value)
  %7038 = fmul fast float %7035, %6949
  %7039 = fadd fast float %7038, %6962
  %7040 = fmul fast float %7037, %7039
  %7041 = fsub fast float %7024, %7040
  %7042 = fsub fast float %7018, %7037
  %7043 = select i1 %7033, float %7042, float 0.000000e+00
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.CBufRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.CBufRet.f32 %7048, 2
  %7052 = extractvalue %dx.types.CBufRet.f32 %7048, 3
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 3
  %7055 = call float @dx.op.binary.f32(i32 36, float %7041, float %7054)  ; FMin(a,b)
  %7056 = fmul fast float %7052, %7043
  %7057 = call float @dx.op.unary.f32(i32 7, float %7056)  ; Saturate(value)
  %7058 = fsub fast float %7049, %7045
  %7059 = fsub fast float %7050, %7046
  %7060 = fsub fast float %7051, %7047
  %7061 = fmul fast float %7057, %7058
  %7062 = fmul fast float %7057, %7059
  %7063 = fmul fast float %7057, %7060
  %7064 = fadd fast float %7061, %7045
  %7065 = fadd fast float %7062, %7046
  %7066 = fadd fast float %7063, %7047
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7070 = fadd fast float %7069, %7068
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7073 = extractvalue %dx.types.CBufRet.f32 %7067, 3
  %7074 = fadd fast float %7073, %7072
  %7075 = call float @dx.op.unary.f32(i32 7, float %7074)  ; Saturate(value)
  %7076 = fmul fast float %7071, %7055
  %7077 = fmul fast float %7076, %7075
  br label %7319

; <label>:7078                                    ; preds = %7032
  br i1 %7033, label %7079, label %7100

; <label>:7079                                    ; preds = %7078
  %7080 = call float @dx.op.binary.f32(i32 36, float %7029, float %7019)  ; FMin(a,b)
  %7081 = fsub fast float %7029, %7080
  %7082 = fsub fast float %7081, %7018
  %7083 = call float @dx.op.unary.f32(i32 6, float %7082)  ; FAbs(value)
  %7084 = fadd fast float %7081, %7018
  %7085 = fmul fast float %7084, %6949
  %7086 = fadd fast float %7085, %6962
  %7087 = fmul fast float %7086, %7083
  %7088 = fsub fast float %7024, %7087
  br label %7100

; <label>:7089                                    ; preds = %7017
  br i1 %7031, label %7090, label %7100

; <label>:7090                                    ; preds = %7089
  %7091 = call float @dx.op.binary.f32(i32 35, float %7019, float %7029)  ; FMax(a,b)
  %7092 = icmp eq i32 %6968, 0
  %7093 = select i1 %7092, float %7029, float 0.000000e+00
  %7094 = fsub fast float -0.000000e+00, %7093
  %7095 = call float @dx.op.unary.f32(i32 6, float %7094)  ; FAbs(value)
  %7096 = fmul fast float %7093, %6949
  %7097 = fadd fast float %7096, %6962
  %7098 = fmul fast float %7095, %7097
  %7099 = fsub fast float %7024, %7098
  br label %7100

; <label>:7100                                    ; preds = %7090, %7089, %7079, %7078
  %7101 = phi float [ %7019, %7078 ], [ %7019, %7079 ], [ %7091, %7090 ], [ %7019, %7089 ]
  %7102 = phi float [ 0.000000e+00, %7078 ], [ %7083, %7079 ], [ %7095, %7090 ], [ 0.000000e+00, %7089 ]
  %7103 = phi float [ %7024, %7078 ], [ %7088, %7079 ], [ %7099, %7090 ], [ %7024, %7089 ]
  %7104 = phi float [ %7029, %7078 ], [ %7029, %7079 ], [ %7018, %7090 ], [ %7018, %7089 ]
  %7105 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7105, align 4, !tbaa !129, !noalias !131
  %7106 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7106, align 4, !tbaa !129, !noalias !131
  %7107 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7107, align 4, !tbaa !129, !noalias !131
  %7108 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %7108, align 4, !tbaa !129, !noalias !131
  %7109 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %7109, align 4, !tbaa !129, !noalias !131
  %7110 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %7110, align 4, !tbaa !129, !noalias !131
  %7111 = icmp sgt i32 %6970, 0
  br i1 %7111, label %7112, label %7173

; <label>:7112                                    ; preds = %7100
  br label %7113

; <label>:7113                                    ; preds = %7162, %7112
  %7114 = phi i32 [ %7163, %7162 ], [ 0, %7112 ]
  %7115 = phi i32 [ %7164, %7162 ], [ 0, %7112 ]
  %7116 = add nuw i32 %7115, 171
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %7116)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = fsub fast float %7118, %7121
  %7124 = fsub fast float %7119, %7122
  %7125 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7126 = fsub fast float -0.000000e+00, %7123
  %7127 = fsub fast float -0.000000e+00, %7124
  %7128 = call float @dx.op.dot2.f32(i32 54, float %6947, float %6948, float %7126, float %7127)  ; Dot2(ax,ay,bx,by)
  %7129 = fmul fast float %7128, 2.000000e+00
  %7130 = call float @dx.op.dot2.f32(i32 54, float %7126, float %7127, float %7126, float %7127)  ; Dot2(ax,ay,bx,by)
  %7131 = fmul fast float %7125, %7125
  %7132 = fsub fast float %7130, %7131
  %7133 = fmul fast float %7129, %7129
  %7134 = fmul fast float %6990, %7132
  %7135 = fsub fast float %7133, %7134
  %7136 = fcmp fast ogt float %7135, 0.000000e+00
  br i1 %7136, label %7137, label %7152

; <label>:7137                                    ; preds = %7113
  %7138 = fcmp fast ogt float %7129, 0.000000e+00
  %7139 = call float @dx.op.unary.f32(i32 24, float %7135)  ; Sqrt(value)
  %7140 = fsub fast float -0.000000e+00, %7139
  %7141 = select i1 %7138, float %7139, float %7140
  %7142 = fadd fast float %7141, %7129
  %7143 = fmul float %7142, -5.000000e-01
  %7144 = fdiv fast float %7143, %6983
  %7145 = call float @dx.op.binary.f32(i32 35, float %7144, float 0.000000e+00)  ; FMax(a,b)
  %7146 = call float @dx.op.binary.f32(i32 36, float %7018, float %7145)  ; FMin(a,b)
  %7147 = fdiv fast float %7132, %7143
  %7148 = call float @dx.op.binary.f32(i32 35, float %7147, float 0.000000e+00)  ; FMax(a,b)
  %7149 = call float @dx.op.binary.f32(i32 36, float %7018, float %7148)  ; FMin(a,b)
  %7150 = call float @dx.op.binary.f32(i32 36, float %7146, float %7149)  ; FMin(a,b)
  %7151 = call float @dx.op.binary.f32(i32 35, float %7146, float %7149)  ; FMax(a,b)
  br label %7152

; <label>:7152                                    ; preds = %7137, %7113
  %7153 = phi float [ %7151, %7137 ], [ -1.000000e+00, %7113 ]
  %7154 = phi float [ %7150, %7137 ], [ -1.000000e+00, %7113 ]
  %7155 = phi i1 [ true, %7137 ], [ false, %7113 ]
  br i1 %7155, label %7156, label %7162

; <label>:7156                                    ; preds = %7152
  %7157 = call float @dx.op.binary.f32(i32 35, float %7101, float %7154)  ; FMax(a,b)
  %7158 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7115
  store float %7157, float* %7158, align 4, !tbaa !129, !noalias !131
  %7159 = call float @dx.op.binary.f32(i32 35, float %7101, float %7153)  ; FMax(a,b)
  %7160 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %7115
  store float %7159, float* %7160, align 4, !tbaa !129, !noalias !131
  %7161 = add nsw i32 %7114, 1
  br label %7162

; <label>:7162                                    ; preds = %7156, %7152
  %7163 = phi i32 [ %7161, %7156 ], [ %7114, %7152 ]
  %7164 = add nuw nsw i32 %7115, 1
  %7165 = icmp eq i32 %7164, %6970
  br i1 %7165, label %7166, label %7113

; <label>:7166                                    ; preds = %7162
  %7167 = load float, float* %7107, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7168 = load float, float* %7106, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %7169 = load float, float* %7105, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %7170 = load float, float* %7110, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7171 = load float, float* %7109, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %7172 = load float, float* %7108, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %7173

; <label>:7173                                    ; preds = %7166, %7100
  %7174 = phi float [ -1.000000e+00, %7100 ], [ %7172, %7166 ]
  %7175 = phi float [ -1.000000e+00, %7100 ], [ %7171, %7166 ]
  %7176 = phi float [ -1.000000e+00, %7100 ], [ %7170, %7166 ]
  %7177 = phi float [ -1.000000e+00, %7100 ], [ %7169, %7166 ]
  %7178 = phi float [ -1.000000e+00, %7100 ], [ %7168, %7166 ]
  %7179 = phi float [ -1.000000e+00, %7100 ], [ %7167, %7166 ]
  %7180 = phi i32 [ 0, %7100 ], [ %7163, %7166 ]
  %7181 = call float @dx.op.binary.f32(i32 36, float %7178, float %7179)  ; FMin(a,b)
  %7182 = call float @dx.op.binary.f32(i32 36, float %7177, float %7181)  ; FMin(a,b)
  %7183 = call float @dx.op.binary.f32(i32 35, float %7177, float %7178)  ; FMax(a,b)
  %7184 = call float @dx.op.binary.f32(i32 36, float %7183, float %7179)  ; FMin(a,b)
  %7185 = call float @dx.op.binary.f32(i32 36, float %7177, float %7178)  ; FMin(a,b)
  %7186 = call float @dx.op.binary.f32(i32 35, float %7185, float %7184)  ; FMax(a,b)
  %7187 = call float @dx.op.binary.f32(i32 35, float %7178, float %7179)  ; FMax(a,b)
  %7188 = call float @dx.op.binary.f32(i32 35, float %7177, float %7187)  ; FMax(a,b)
  store float %7182, float* %7105, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %7186, float* %7106, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %7188, float* %7107, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7189 = call float @dx.op.binary.f32(i32 36, float %7175, float %7176)  ; FMin(a,b)
  %7190 = call float @dx.op.binary.f32(i32 36, float %7174, float %7189)  ; FMin(a,b)
  %7191 = call float @dx.op.binary.f32(i32 35, float %7174, float %7175)  ; FMax(a,b)
  %7192 = call float @dx.op.binary.f32(i32 36, float %7191, float %7176)  ; FMin(a,b)
  %7193 = call float @dx.op.binary.f32(i32 36, float %7174, float %7175)  ; FMin(a,b)
  %7194 = call float @dx.op.binary.f32(i32 35, float %7193, float %7192)  ; FMax(a,b)
  %7195 = call float @dx.op.binary.f32(i32 35, float %7175, float %7176)  ; FMax(a,b)
  %7196 = call float @dx.op.binary.f32(i32 35, float %7174, float %7195)  ; FMax(a,b)
  store float %7190, float* %7108, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %7194, float* %7109, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %7196, float* %7110, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7197 = sub nsw i32 3, %7180
  %7198 = icmp sgt i32 %7197, 2
  br i1 %7198, label %7199, label %7237

; <label>:7199                                    ; preds = %7173
  %7200 = icmp eq i32 %6968, 0
  %7201 = fsub fast float %7018, %7102
  %7202 = select i1 %7200, float %7201, float %7102
  %7203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7204 = extractvalue %dx.types.CBufRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.CBufRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.CBufRet.f32 %7203, 2
  %7207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7208 = extractvalue %dx.types.CBufRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.CBufRet.f32 %7207, 1
  %7210 = extractvalue %dx.types.CBufRet.f32 %7207, 2
  %7211 = extractvalue %dx.types.CBufRet.f32 %7207, 3
  %7212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7213 = extractvalue %dx.types.CBufRet.f32 %7212, 3
  %7214 = call float @dx.op.binary.f32(i32 36, float %7103, float %7213)  ; FMin(a,b)
  %7215 = fmul fast float %7211, %7202
  %7216 = call float @dx.op.unary.f32(i32 7, float %7215)  ; Saturate(value)
  %7217 = fsub fast float %7208, %7204
  %7218 = fsub fast float %7209, %7205
  %7219 = fsub fast float %7210, %7206
  %7220 = fmul fast float %7216, %7217
  %7221 = fmul fast float %7216, %7218
  %7222 = fmul fast float %7216, %7219
  %7223 = fadd fast float %7220, %7204
  %7224 = fadd fast float %7221, %7205
  %7225 = fadd fast float %7222, %7206
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7229 = fadd fast float %7228, %7227
  %7230 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7232 = extractvalue %dx.types.CBufRet.f32 %7226, 3
  %7233 = fadd fast float %7232, %7231
  %7234 = call float @dx.op.unary.f32(i32 7, float %7233)  ; Saturate(value)
  %7235 = fmul fast float %7230, %7214
  %7236 = fmul fast float %7235, %7234
  br label %7319

; <label>:7237                                    ; preds = %7173
  %7238 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7197
  %7239 = load float, float* %7238, align 4, !tbaa !129, !noalias !131
  %7240 = fcmp fast olt float %7239, %7104
  %7241 = icmp sgt i32 %7180, 0
  %7242 = and i1 %7241, %7240
  br i1 %7242, label %7243, label %7280

; <label>:7243                                    ; preds = %7237
  br label %7244

; <label>:7244                                    ; preds = %7273, %7243
  %7245 = phi float [ %7274, %7273 ], [ %7102, %7243 ]
  %7246 = phi float [ %7275, %7273 ], [ %7103, %7243 ]
  %7247 = phi float [ %7255, %7273 ], [ %7239, %7243 ]
  %7248 = phi i32 [ %7252, %7273 ], [ %7197, %7243 ]
  %7249 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %7248
  %7250 = load float, float* %7249, align 4, !tbaa !129, !noalias !131
  %7251 = icmp slt i32 %7248, 2
  %7252 = add nsw i32 %7248, 1
  %7253 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7252
  %7254 = load float, float* %7253, align 4, !tbaa !129, !noalias !131
  %7255 = select i1 %7251, float %7254, float %7018
  %7256 = call float @dx.op.binary.f32(i32 36, float %7255, float %7250)  ; FMin(a,b)
  %7257 = call float @dx.op.binary.f32(i32 36, float %7104, float %7256)  ; FMin(a,b)
  %7258 = icmp eq i32 %6968, 0
  %7259 = fadd fast float %7257, %7247
  %7260 = fmul fast float %7259, %6949
  %7261 = fadd fast float %7260, %6962
  br i1 %7258, label %7267, label %7262

; <label>:7262                                    ; preds = %7244
  %7263 = fsub fast float %7257, %7247
  %7264 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7263)  ; FMax(a,b)
  %7265 = fmul fast float %7264, %7261
  %7266 = fadd fast float %7265, %7246
  br label %7273

; <label>:7267                                    ; preds = %7244
  %7268 = fsub fast float %7247, %7257
  %7269 = call float @dx.op.unary.f32(i32 6, float %7268)  ; FAbs(value)
  %7270 = fadd fast float %7269, %7245
  %7271 = fmul fast float %7269, %7261
  %7272 = fsub fast float %7246, %7271
  br label %7273

; <label>:7273                                    ; preds = %7267, %7262
  %7274 = phi float [ %7264, %7262 ], [ %7270, %7267 ]
  %7275 = phi float [ %7266, %7262 ], [ %7272, %7267 ]
  %7276 = fcmp fast olt float %7255, %7104
  %7277 = icmp slt i32 %7252, 3
  %7278 = and i1 %7277, %7276
  br i1 %7278, label %7244, label %7279

; <label>:7279                                    ; preds = %7273
  br label %7280

; <label>:7280                                    ; preds = %7279, %7237
  %7281 = phi float [ %7102, %7237 ], [ %7274, %7279 ]
  %7282 = phi float [ %7103, %7237 ], [ %7275, %7279 ]
  %7283 = fsub fast float %7018, %7281
  %7284 = select i1 %7020, float %7281, float %7283
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 0
  %7291 = extractvalue %dx.types.CBufRet.f32 %7289, 1
  %7292 = extractvalue %dx.types.CBufRet.f32 %7289, 2
  %7293 = extractvalue %dx.types.CBufRet.f32 %7289, 3
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 3
  %7296 = call float @dx.op.binary.f32(i32 36, float %7282, float %7295)  ; FMin(a,b)
  %7297 = fmul fast float %7293, %7284
  %7298 = call float @dx.op.unary.f32(i32 7, float %7297)  ; Saturate(value)
  %7299 = fsub fast float %7290, %7286
  %7300 = fsub fast float %7291, %7287
  %7301 = fsub fast float %7292, %7288
  %7302 = fmul fast float %7298, %7299
  %7303 = fmul fast float %7298, %7300
  %7304 = fmul fast float %7298, %7301
  %7305 = fadd fast float %7302, %7286
  %7306 = fadd fast float %7303, %7287
  %7307 = fadd fast float %7304, %7288
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 0
  %7310 = extractvalue %dx.types.CBufRet.f32 %7308, 1
  %7311 = fadd fast float %7310, %7309
  %7312 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7314 = extractvalue %dx.types.CBufRet.f32 %7308, 3
  %7315 = fadd fast float %7314, %7313
  %7316 = call float @dx.op.unary.f32(i32 7, float %7315)  ; Saturate(value)
  %7317 = fmul fast float %7312, %7296
  %7318 = fmul fast float %7317, %7316
  br label %7319

; <label>:7319                                    ; preds = %7280, %7199, %7034, %7016, %7014
  %7320 = phi float [ %7043, %7034 ], [ %7202, %7199 ], [ %7284, %7280 ], [ 0.000000e+00, %7014 ], [ 0.000000e+00, %7016 ]
  %7321 = phi float [ %7077, %7034 ], [ %7236, %7199 ], [ %7318, %7280 ], [ 0.000000e+00, %7014 ], [ 0.000000e+00, %7016 ]
  %7322 = phi float [ %7064, %7034 ], [ %7223, %7199 ], [ %7305, %7280 ], [ 0.000000e+00, %7014 ], [ 0.000000e+00, %7016 ]
  %7323 = phi float [ %7065, %7034 ], [ %7224, %7199 ], [ %7306, %7280 ], [ 0.000000e+00, %7014 ], [ 0.000000e+00, %7016 ]
  %7324 = phi float [ %7066, %7034 ], [ %7225, %7199 ], [ %7307, %7280 ], [ 0.000000e+00, %7014 ], [ 0.000000e+00, %7016 ]
  %7325 = fmul fast float %6957, %7321
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 2
  %7328 = fsub fast float %6964, %7327
  %7329 = fcmp fast olt float %7325, -2.000000e+01
  %7330 = call float @dx.op.unary.f32(i32 21, float %7325)  ; Exp(value)
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 2
  %7333 = extractvalue %dx.types.CBufRet.f32 %7331, 3
  %7334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.f32 %7334, 2
  %7336 = fmul fast float %7333, %7328
  %7337 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  %7338 = fsub fast float 1.000000e+00, %7337
  %7339 = fmul fast float %6949, 5.000000e-01
  %7340 = fadd fast float %7339, 5.000000e-01
  %7341 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7342 = fsub fast float 1.000000e+00, %7341
  %7343 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7338)  ; FMax(a,b)
  %7344 = fdiv fast float %7342, %7343
  %7345 = fsub fast float %7328, %6906
  %7346 = call float @dx.op.unary.f32(i32 6, float %7345)  ; FAbs(value)
  %7347 = fmul fast float %7346, %7332
  %7348 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7349 = fsub fast float 1.000000e+00, %7347
  %7350 = fmul fast float %7349, %7348
  %7351 = fadd fast float %7350, %7347
  %7352 = fmul fast float %7335, %7328
  %7353 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7354 = fsub fast float 1.000000e+00, %7351
  %7355 = fmul fast float %7354, %7353
  %7356 = fadd fast float %7355, %7351
  %7357 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7358 = fadd fast float %7330, -1.000000e+00
  %7359 = select i1 %7329, float -1.000000e+00, float %7358
  %7360 = fmul fast float %7357, %7359
  %7361 = fadd fast float %7360, 1.000000e+00
  %7362 = fsub fast float -0.000000e+00, %7360
  %7363 = fmul fast float %7322, %7362
  %7364 = fmul fast float %7323, %7362
  %7365 = fmul fast float %7324, %7362
  br label %7366

; <label>:7366                                    ; preds = %7319, %6915
  %7367 = phi float [ %7320, %7319 ], [ 0.000000e+00, %6915 ]
  %7368 = phi float [ %7361, %7319 ], [ 1.000000e+00, %6915 ]
  %7369 = phi float [ %7363, %7319 ], [ 0.000000e+00, %6915 ]
  %7370 = phi float [ %7364, %7319 ], [ 0.000000e+00, %6915 ]
  %7371 = phi float [ %7365, %7319 ], [ 0.000000e+00, %6915 ]
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 1
  %7374 = fsub fast float 1.000000e+00, %7368
  %7375 = fmul fast float %7374, %6950
  %7376 = fmul fast float %7375, %7373
  %7377 = fsub fast float %6950, %7376
  br i1 %6943, label %7378, label %7407, !dx.controlflow.hints !167

; <label>:7378                                    ; preds = %7366
  %7379 = fmul fast float %6951, %6940
  %7380 = fadd fast float %7379, %6941
  %7381 = call float @dx.op.unary.f32(i32 7, float %7380)  ; Saturate(value)
  %7382 = fmul fast float %6922, %7377
  %7383 = fsub fast float -0.000000e+00, %7382
  %7384 = fmul fast float %6923, %7377
  %7385 = fsub fast float -0.000000e+00, %7384
  %7386 = call float @dx.op.unary.f32(i32 21, float %7383)  ; Exp(value)
  %7387 = call float @dx.op.unary.f32(i32 21, float %7385)  ; Exp(value)
  %7388 = call float @dx.op.binary.f32(i32 35, float %6930, float %7386)  ; FMax(a,b)
  %7389 = call float @dx.op.binary.f32(i32 35, float %6930, float %7387)  ; FMax(a,b)
  %7390 = fsub fast float %7389, %7388
  %7391 = fmul fast float %7390, %7381
  %7392 = fadd fast float %7391, %7388
  %7393 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  %7394 = fsub fast float %6927, %6932
  %7395 = fsub fast float %6928, %6933
  %7396 = fsub fast float %6929, %6934
  %7397 = fmul fast float %7381, %7394
  %7398 = fmul fast float %7381, %7395
  %7399 = fmul fast float %7381, %7396
  %7400 = fadd fast float %7397, %6932
  %7401 = fadd fast float %7398, %6933
  %7402 = fadd fast float %7399, %6934
  %7403 = fsub fast float 1.000000e+00, %7393
  %7404 = fmul fast float %7403, %7400
  %7405 = fmul fast float %7403, %7401
  %7406 = fmul fast float %7403, %7402
  br label %7466

; <label>:7407                                    ; preds = %7366
  %7408 = fmul fast float %7377, %6939
  %7409 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7410 = fsub fast float 2.000000e+00, %7409
  %7411 = fmul fast float %7409, 9.921875e-01
  %7412 = fmul fast float %7411, %7410
  %7413 = fadd fast float %7412, 3.906250e-03
  %7414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %51, float %7413, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7415 = extractvalue %dx.types.ResRet.f32 %7414, 0
  %7416 = fsub fast float %7409, %7415
  %7417 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7416)  ; FMax(a,b)
  %7418 = fmul fast float %6925, %6906
  %7419 = call float @dx.op.unary.f32(i32 6, float %7418)  ; FAbs(value)
  %7420 = fcmp fast ogt float %7419, 0x3EB0C6F7A0000000
  br i1 %7420, label %7421, label %7427, !dx.controlflow.hints !168

; <label>:7421                                    ; preds = %7407
  %7422 = fmul fast float %7418, 0xBFF7154760000000
  %7423 = call float @dx.op.unary.f32(i32 21, float %7422)  ; Exp(value)
  %7424 = fsub fast float 1.000000e+00, %7423
  %7425 = fdiv fast float %7424, %7418
  %7426 = fmul fast float %7425, %6935
  br label %7427

; <label>:7427                                    ; preds = %7421, %7407
  %7428 = phi float [ %7426, %7421 ], [ %6935, %7407 ]
  %7429 = fadd fast float %7428, %6937
  %7430 = fmul fast float %7429, %7417
  %7431 = fmul fast float %6922, %7430
  %7432 = fsub fast float -0.000000e+00, %7431
  %7433 = fmul fast float %6923, %7430
  %7434 = fsub fast float -0.000000e+00, %7433
  %7435 = fmul fast float %6924, %7430
  %7436 = fsub fast float -0.000000e+00, %7435
  %7437 = call float @dx.op.unary.f32(i32 21, float %7432)  ; Exp(value)
  %7438 = call float @dx.op.unary.f32(i32 21, float %7434)  ; Exp(value)
  %7439 = call float @dx.op.unary.f32(i32 21, float %7436)  ; Exp(value)
  %7440 = fmul fast float %6951, %6951
  %7441 = fadd fast float %7440, 1.000000e+00
  %7442 = fmul fast float %7441, 0x3FAE8EC8A0000000
  %7443 = fmul fast float %7442, %6932
  %7444 = fmul fast float %7442, %6933
  %7445 = fmul fast float %7442, %6934
  %7446 = fmul fast float %6951, %6930
  %7447 = fsub fast float 1.000000e+00, %7446
  %7448 = fmul fast float %6930, %6930
  %7449 = fsub fast float 1.000000e+00, %7448
  %7450 = fmul fast float %7449, 0x3FB45F3060000000
  %7451 = fmul fast float %7447, %7447
  %7452 = fdiv fast float 1.000000e+00, %7451
  %7453 = fmul fast float %7450, %7452
  %7454 = fmul fast float %7453, %6927
  %7455 = fmul fast float %7453, %6928
  %7456 = fmul fast float %7453, %6929
  %7457 = fadd fast float %7454, %7443
  %7458 = fadd fast float %7455, %7444
  %7459 = fadd fast float %7456, %7445
  %7460 = fsub fast float 1.000000e+00, %7437
  %7461 = fsub fast float 1.000000e+00, %7438
  %7462 = fsub fast float 1.000000e+00, %7439
  %7463 = fmul fast float %7457, %7460
  %7464 = fmul fast float %7458, %7461
  %7465 = fmul fast float %7459, %7462
  br label %7466

; <label>:7466                                    ; preds = %7427, %7378
  %7467 = phi float [ %7404, %7378 ], [ %7463, %7427 ]
  %7468 = phi float [ %7405, %7378 ], [ %7464, %7427 ]
  %7469 = phi float [ %7406, %7378 ], [ %7465, %7427 ]
  %7470 = phi float [ %7393, %7378 ], [ %7437, %7427 ]
  %7471 = phi float [ %7393, %7378 ], [ %7438, %7427 ]
  %7472 = phi float [ %7393, %7378 ], [ %7439, %7427 ]
  br i1 %6959, label %7473, label %7671, !dx.controlflow.hints !169

; <label>:7473                                    ; preds = %7466
  %7474 = extractvalue %dx.types.CBufRet.f32 %7372, 0
  %7475 = fmul fast float %7474, %7374
  %7476 = fsub fast float %7369, %7467
  %7477 = fsub fast float %7370, %7468
  %7478 = fsub fast float %7371, %7469
  %7479 = fmul fast float %7475, %7476
  %7480 = fmul fast float %7475, %7477
  %7481 = fmul fast float %7475, %7478
  %7482 = fadd fast float %7479, %7467
  %7483 = fadd fast float %7480, %7468
  %7484 = fadd fast float %7481, %7469
  %7485 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7470)  ; FMax(a,b)
  %7486 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7471)  ; FMax(a,b)
  %7487 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7472)  ; FMax(a,b)
  %7488 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7368)  ; FMax(a,b)
  %7489 = call float @dx.op.binary.f32(i32 35, float %7367, float %7377)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7489)  ; FMax(a,b)
  %7491 = fdiv fast float %7367, %7490
  %7492 = call float @dx.op.unary.f32(i32 7, float %7491)  ; Saturate(value)
  %7493 = fdiv fast float %7377, %7490
  %7494 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7495 = fcmp fast une float %7488, 1.000000e+00
  br i1 %7495, label %7496, label %7509, !dx.controlflow.hints !170

; <label>:7496                                    ; preds = %7473
  %7497 = call float @dx.op.unary.f32(i32 23, float %7488)  ; Log(value)
  %7498 = fmul fast float %7497, 0x3FE62E4300000000
  %7499 = fmul fast float %7369, %7498
  %7500 = fsub fast float -0.000000e+00, %7499
  %7501 = fmul fast float %7370, %7498
  %7502 = fsub fast float -0.000000e+00, %7501
  %7503 = fmul fast float %7371, %7498
  %7504 = fsub fast float -0.000000e+00, %7503
  %7505 = fsub fast float 1.000000e+00, %7488
  %7506 = fdiv fast float %7500, %7505
  %7507 = fdiv fast float %7502, %7505
  %7508 = fdiv fast float %7504, %7505
  br label %7509

; <label>:7509                                    ; preds = %7496, %7473
  %7510 = phi float [ %7506, %7496 ], [ %7369, %7473 ]
  %7511 = phi float [ %7507, %7496 ], [ %7370, %7473 ]
  %7512 = phi float [ %7508, %7496 ], [ %7371, %7473 ]
  %7513 = phi float [ %7498, %7496 ], [ 0.000000e+00, %7473 ]
  %7514 = fcmp fast une float %7485, 1.000000e+00
  br i1 %7514, label %7515, label %7522, !dx.controlflow.hints !171

; <label>:7515                                    ; preds = %7509
  %7516 = call float @dx.op.unary.f32(i32 23, float %7485)  ; Log(value)
  %7517 = fmul fast float %7516, 0x3FE62E4300000000
  %7518 = fmul fast float %7482, %7517
  %7519 = fsub fast float -0.000000e+00, %7518
  %7520 = fsub fast float 1.000000e+00, %7485
  %7521 = fdiv fast float %7519, %7520
  br label %7522

; <label>:7522                                    ; preds = %7515, %7509
  %7523 = phi float [ %7521, %7515 ], [ %7482, %7509 ]
  %7524 = phi float [ %7517, %7515 ], [ 0.000000e+00, %7509 ]
  %7525 = fcmp fast une float %7486, 1.000000e+00
  br i1 %7525, label %7526, label %7533, !dx.controlflow.hints !171

; <label>:7526                                    ; preds = %7522
  %7527 = call float @dx.op.unary.f32(i32 23, float %7486)  ; Log(value)
  %7528 = fmul fast float %7527, 0x3FE62E4300000000
  %7529 = fmul fast float %7483, %7528
  %7530 = fsub fast float -0.000000e+00, %7529
  %7531 = fsub fast float 1.000000e+00, %7486
  %7532 = fdiv fast float %7530, %7531
  br label %7533

; <label>:7533                                    ; preds = %7526, %7522
  %7534 = phi float [ %7532, %7526 ], [ %7483, %7522 ]
  %7535 = phi float [ %7528, %7526 ], [ 0.000000e+00, %7522 ]
  %7536 = fcmp fast une float %7487, 1.000000e+00
  br i1 %7536, label %7537, label %7544, !dx.controlflow.hints !171

; <label>:7537                                    ; preds = %7533
  %7538 = call float @dx.op.unary.f32(i32 23, float %7487)  ; Log(value)
  %7539 = fmul fast float %7538, 0x3FE62E4300000000
  %7540 = fmul fast float %7484, %7539
  %7541 = fsub fast float -0.000000e+00, %7540
  %7542 = fsub fast float 1.000000e+00, %7487
  %7543 = fdiv fast float %7541, %7542
  br label %7544

; <label>:7544                                    ; preds = %7537, %7533
  %7545 = phi float [ %7543, %7537 ], [ %7484, %7533 ]
  %7546 = phi float [ %7539, %7537 ], [ 0.000000e+00, %7533 ]
  %7547 = fmul fast float %7510, %7494
  %7548 = fmul fast float %7511, %7494
  %7549 = fmul fast float %7512, %7494
  %7550 = fmul fast float %7513, %7494
  %7551 = fmul fast float %7523, %7492
  %7552 = fmul fast float %7534, %7492
  %7553 = fmul fast float %7545, %7492
  %7554 = fmul fast float %7524, %7492
  %7555 = fmul fast float %7535, %7492
  %7556 = fmul fast float %7546, %7492
  %7557 = fadd fast float %7551, %7547
  %7558 = fadd fast float %7552, %7548
  %7559 = fadd fast float %7553, %7549
  %7560 = fadd fast float %7554, %7550
  %7561 = fadd fast float %7555, %7550
  %7562 = fadd fast float %7556, %7550
  %7563 = fcmp fast une float %7560, 0.000000e+00
  br i1 %7563, label %7564, label %7571, !dx.controlflow.hints !172

; <label>:7564                                    ; preds = %7544
  %7565 = fmul fast float %7560, 0x3FF7154760000000
  %7566 = call float @dx.op.unary.f32(i32 21, float %7565)  ; Exp(value)
  %7567 = fsub fast float 1.000000e+00, %7566
  %7568 = fmul fast float %7557, %7567
  %7569 = fsub fast float -0.000000e+00, %7568
  %7570 = fdiv fast float %7569, %7560
  br label %7571

; <label>:7571                                    ; preds = %7564, %7544
  %7572 = phi float [ %7566, %7564 ], [ 1.000000e+00, %7544 ]
  %7573 = phi float [ %7570, %7564 ], [ %7557, %7544 ]
  %7574 = fcmp fast une float %7561, 0.000000e+00
  br i1 %7574, label %7575, label %7582, !dx.controlflow.hints !172

; <label>:7575                                    ; preds = %7571
  %7576 = fmul fast float %7561, 0x3FF7154760000000
  %7577 = call float @dx.op.unary.f32(i32 21, float %7576)  ; Exp(value)
  %7578 = fsub fast float 1.000000e+00, %7577
  %7579 = fmul fast float %7558, %7578
  %7580 = fsub fast float -0.000000e+00, %7579
  %7581 = fdiv fast float %7580, %7561
  br label %7582

; <label>:7582                                    ; preds = %7575, %7571
  %7583 = phi float [ %7577, %7575 ], [ 1.000000e+00, %7571 ]
  %7584 = phi float [ %7581, %7575 ], [ %7558, %7571 ]
  %7585 = fcmp fast une float %7562, 0.000000e+00
  br i1 %7585, label %7586, label %7593, !dx.controlflow.hints !172

; <label>:7586                                    ; preds = %7582
  %7587 = fmul fast float %7562, 0x3FF7154760000000
  %7588 = call float @dx.op.unary.f32(i32 21, float %7587)  ; Exp(value)
  %7589 = fsub fast float 1.000000e+00, %7588
  %7590 = fmul fast float %7559, %7589
  %7591 = fsub fast float -0.000000e+00, %7590
  %7592 = fdiv fast float %7591, %7562
  br label %7593

; <label>:7593                                    ; preds = %7586, %7582
  %7594 = phi float [ %7588, %7586 ], [ 1.000000e+00, %7582 ]
  %7595 = phi float [ %7592, %7586 ], [ %7559, %7582 ]
  %7596 = fcmp fast ogt float %7492, %7494
  br i1 %7596, label %7597, label %7617

; <label>:7597                                    ; preds = %7593
  %7598 = fsub fast float 1.000000e+00, %7494
  %7599 = fmul fast float %7510, %7598
  %7600 = fmul fast float %7511, %7598
  %7601 = fmul fast float %7512, %7598
  %7602 = fmul fast float %7513, %7598
  %7603 = fcmp fast une float %7602, 0.000000e+00
  br i1 %7603, label %7604, label %7655, !dx.controlflow.hints !173

; <label>:7604                                    ; preds = %7597
  %7605 = fmul fast float %7602, 0x3FF7154760000000
  %7606 = call float @dx.op.unary.f32(i32 21, float %7605)  ; Exp(value)
  %7607 = fsub fast float 1.000000e+00, %7606
  %7608 = fmul fast float %7599, %7607
  %7609 = fsub fast float -0.000000e+00, %7608
  %7610 = fmul fast float %7600, %7607
  %7611 = fsub fast float -0.000000e+00, %7610
  %7612 = fmul fast float %7601, %7607
  %7613 = fsub fast float -0.000000e+00, %7612
  %7614 = fdiv fast float %7609, %7602
  %7615 = fdiv fast float %7611, %7602
  %7616 = fdiv fast float %7613, %7602
  br label %7655

; <label>:7617                                    ; preds = %7593
  %7618 = fsub fast float 1.000000e+00, %7492
  %7619 = fmul fast float %7523, %7618
  %7620 = fmul fast float %7534, %7618
  %7621 = fmul fast float %7545, %7618
  %7622 = fmul fast float %7524, %7618
  %7623 = fmul fast float %7535, %7618
  %7624 = fmul fast float %7546, %7618
  %7625 = fcmp fast une float %7622, 0.000000e+00
  br i1 %7625, label %7626, label %7633, !dx.controlflow.hints !172

; <label>:7626                                    ; preds = %7617
  %7627 = fmul fast float %7622, 0x3FF7154760000000
  %7628 = call float @dx.op.unary.f32(i32 21, float %7627)  ; Exp(value)
  %7629 = fsub fast float 1.000000e+00, %7628
  %7630 = fmul fast float %7619, %7629
  %7631 = fsub fast float -0.000000e+00, %7630
  %7632 = fdiv fast float %7631, %7622
  br label %7633

; <label>:7633                                    ; preds = %7626, %7617
  %7634 = phi float [ %7632, %7626 ], [ %7619, %7617 ]
  %7635 = phi float [ %7628, %7626 ], [ 1.000000e+00, %7617 ]
  %7636 = fcmp fast une float %7623, 0.000000e+00
  br i1 %7636, label %7637, label %7644, !dx.controlflow.hints !172

; <label>:7637                                    ; preds = %7633
  %7638 = fmul fast float %7623, 0x3FF7154760000000
  %7639 = call float @dx.op.unary.f32(i32 21, float %7638)  ; Exp(value)
  %7640 = fsub fast float 1.000000e+00, %7639
  %7641 = fmul fast float %7620, %7640
  %7642 = fsub fast float -0.000000e+00, %7641
  %7643 = fdiv fast float %7642, %7623
  br label %7644

; <label>:7644                                    ; preds = %7637, %7633
  %7645 = phi float [ %7643, %7637 ], [ %7620, %7633 ]
  %7646 = phi float [ %7639, %7637 ], [ 1.000000e+00, %7633 ]
  %7647 = fcmp fast une float %7624, 0.000000e+00
  br i1 %7647, label %7648, label %7655, !dx.controlflow.hints !172

; <label>:7648                                    ; preds = %7644
  %7649 = fmul fast float %7624, 0x3FF7154760000000
  %7650 = call float @dx.op.unary.f32(i32 21, float %7649)  ; Exp(value)
  %7651 = fsub fast float 1.000000e+00, %7650
  %7652 = fmul fast float %7621, %7651
  %7653 = fsub fast float -0.000000e+00, %7652
  %7654 = fdiv fast float %7653, %7624
  br label %7655

; <label>:7655                                    ; preds = %7648, %7644, %7604, %7597
  %7656 = phi float [ %7654, %7648 ], [ %7616, %7604 ], [ %7601, %7597 ], [ %7621, %7644 ]
  %7657 = phi float [ %7645, %7648 ], [ %7615, %7604 ], [ %7600, %7597 ], [ %7645, %7644 ]
  %7658 = phi float [ %7634, %7648 ], [ %7614, %7604 ], [ %7599, %7597 ], [ %7634, %7644 ]
  %7659 = phi float [ %7650, %7648 ], [ %7606, %7604 ], [ 1.000000e+00, %7597 ], [ 1.000000e+00, %7644 ]
  %7660 = phi float [ %7646, %7648 ], [ %7606, %7604 ], [ 1.000000e+00, %7597 ], [ %7646, %7644 ]
  %7661 = phi float [ %7635, %7648 ], [ %7606, %7604 ], [ 1.000000e+00, %7597 ], [ %7635, %7644 ]
  %7662 = fmul fast float %7661, %7573
  %7663 = fmul fast float %7660, %7584
  %7664 = fmul fast float %7659, %7595
  %7665 = fadd fast float %7662, %7658
  %7666 = fadd fast float %7663, %7657
  %7667 = fadd fast float %7664, %7656
  %7668 = fmul fast float %7661, %7572
  %7669 = fmul fast float %7660, %7583
  %7670 = fmul fast float %7659, %7594
  br label %7671

; <label>:7671                                    ; preds = %7655, %7466
  %7672 = phi float [ %7670, %7655 ], [ %7472, %7466 ]
  %7673 = phi float [ %7669, %7655 ], [ %7471, %7466 ]
  %7674 = phi float [ %7668, %7655 ], [ %7470, %7466 ]
  %7675 = phi float [ %7667, %7655 ], [ %7469, %7466 ]
  %7676 = phi float [ %7666, %7655 ], [ %7468, %7466 ]
  %7677 = phi float [ %7665, %7655 ], [ %7467, %7466 ]
  %7678 = fmul fast float %7677, %6623
  %7679 = fmul fast float %7676, %6623
  %7680 = fmul fast float %7675, %6623
  %7681 = fmul fast float %7674, %6914
  %7682 = call float @dx.op.dot3.f32(i32 55, float %7674, float %7673, float %7672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7683 = call float @dx.op.dot3.f32(i32 55, float %7678, float %7679, float %7680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7684 = select i1 %268, float %7682, float %7674
  %7685 = select i1 %268, float %7682, float %7673
  %7686 = select i1 %268, float 1.000000e+00, float %7672
  %7687 = select i1 %268, float %7683, float %7678
  %7688 = select i1 %268, float 0.000000e+00, float %7679
  %7689 = select i1 %268, float 0.000000e+00, float %7680
  %7690 = fmul fast float %7684, %6908
  %7691 = fmul fast float %7685, %6909
  %7692 = fmul fast float %7686, %6910
  %7693 = fadd fast float %7690, %7687
  %7694 = fadd fast float %7691, %7688
  %7695 = fadd fast float %7689, %7692
  %7696 = fmul fast float %7684, %6911
  %7697 = fmul fast float %7685, %6912
  %7698 = fmul fast float %7686, %6913
  %7699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.i32 %7699, 0
  %7701 = icmp eq i32 %7700, 0
  br i1 %7701, label %8069, label %7702, !dx.controlflow.hints !174

; <label>:7702                                    ; preds = %7671
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7703, 3
  %7706 = fmul fast float %7704, %111
  %7707 = fmul fast float %7705, %112
  %7708 = fmul fast float %7706, 2.000000e+00
  %7709 = fmul fast float %7707, 2.000000e+00
  %7710 = fsub fast float 1.000000e+00, %7708
  %7711 = fsub fast float 1.000000e+00, %7709
  %7712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7713 = extractvalue %dx.types.CBufRet.f32 %7712, 0
  %7714 = extractvalue %dx.types.CBufRet.f32 %7712, 1
  %7715 = extractvalue %dx.types.CBufRet.f32 %7712, 2
  %7716 = fmul fast float %7710, %7713
  %7717 = fmul fast float %7710, %7714
  %7718 = fmul fast float %7710, %7715
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7721 = extractvalue %dx.types.CBufRet.f32 %7719, 1
  %7722 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7723 = fmul fast float %7711, %7720
  %7724 = fmul fast float %7711, %7721
  %7725 = fmul fast float %7711, %7722
  %7726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.CBufRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.CBufRet.f32 %7726, 2
  %7730 = fadd fast float %7723, %7727
  %7731 = fadd fast float %7730, %7716
  %7732 = fadd fast float %7724, %7728
  %7733 = fadd fast float %7732, %7717
  %7734 = fadd fast float %7725, %7729
  %7735 = fadd fast float %7734, %7718
  %7736 = fmul fast float %7731, %6907
  %7737 = fmul fast float %7733, %6907
  %7738 = fmul fast float %7735, %6907
  %7739 = fmul fast float %7736, %7736
  %7740 = fmul fast float %7737, %7737
  %7741 = fadd fast float %7739, %7740
  %7742 = fmul fast float %7738, %7738
  %7743 = fadd fast float %7741, %7742
  %7744 = call float @dx.op.unary.f32(i32 24, float %7743)  ; Sqrt(value)
  %7745 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %7746 = fsub fast float %7744, %7745
  %7747 = extractvalue %dx.types.CBufRet.f32 %6634, 2
  %7748 = fmul fast float %7746, %7747
  %7749 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7750 = fadd fast float %7749, -5.000000e-01
  %7751 = fmul fast float %7750, 2.000000e+00
  %7752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.f32 %7752, 2
  %7754 = call float @dx.op.binary.f32(i32 36, float %7753, float %7751)  ; FMin(a,b)
  %7755 = fsub fast float -0.000000e+00, %7753
  %7756 = fcmp fast ogt float %7754, %7755
  br i1 %7756, label %7757, label %8069, !dx.controlflow.hints !175

; <label>:7757                                    ; preds = %7702
  %7758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7758, 3
  %7760 = fcmp fast ogt float %7759, 0.000000e+00
  br i1 %7760, label %7761, label %7836, !dx.controlflow.hints !176

; <label>:7761                                    ; preds = %7757
  %7762 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7763 = extractvalue %dx.types.Dimensions %7762, 0
  %7764 = sitofp i32 %7763 to float
  %7765 = extractvalue %dx.types.Dimensions %7762, 1
  %7766 = sitofp i32 %7765 to float
  %7767 = fmul fast float %7706, %7764
  %7768 = fmul fast float %7707, %7766
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7771 = fsub fast float -0.000000e+00, %7770
  %7772 = fptoui float %7771 to i32
  %7773 = fptoui float %7767 to i32
  %7774 = fptoui float %7768 to i32
  %7775 = and i32 %7772, 31
  %7776 = lshr i32 %7773, %7775
  %7777 = lshr i32 %7774, %7775
  %7778 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7772, i32 %7776, i32 %7777, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7779 = extractvalue %dx.types.ResRet.f32 %7778, 0
  %7780 = fcmp fast olt float %7779, -1.000000e+00
  %7781 = fcmp fast ogt float %7779, -1.000000e+00
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 1
  %7784 = select i1 %7781, float %7783, float 1.000000e+00
  %7785 = fadd fast float %7779, 1.000000e+00
  %7786 = fmul fast float %7784, %7785
  %7787 = call float @dx.op.unary.f32(i32 6, float %7786)  ; FAbs(value)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7782, 3
  %7789 = fcmp fast oge float %7787, %7788
  %7790 = select i1 %7789, float 0x4197782600000000, float %7787
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 1
  %7794 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7795 = select i1 %7780, float %7792, float %7713
  %7796 = select i1 %7780, float %7793, float %7714
  %7797 = select i1 %7780, float %7794, float %7715
  %7798 = fmul fast float %7795, %7710
  %7799 = fmul fast float %7796, %7710
  %7800 = fmul fast float %7797, %7710
  %7801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.f32 %7801, 0
  %7803 = extractvalue %dx.types.CBufRet.f32 %7801, 1
  %7804 = extractvalue %dx.types.CBufRet.f32 %7801, 2
  %7805 = select i1 %7780, float %7802, float %7720
  %7806 = select i1 %7780, float %7803, float %7721
  %7807 = select i1 %7780, float %7804, float %7722
  %7808 = fmul fast float %7805, %7711
  %7809 = fmul fast float %7806, %7711
  %7810 = fmul fast float %7807, %7711
  %7811 = fadd fast float %7808, %7798
  %7812 = fadd fast float %7809, %7799
  %7813 = fadd fast float %7810, %7800
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = select i1 %7780, float %7815, float %7727
  %7819 = select i1 %7780, float %7816, float %7728
  %7820 = select i1 %7780, float %7817, float %7729
  %7821 = fadd fast float %7811, %7818
  %7822 = fadd fast float %7812, %7819
  %7823 = fadd fast float %7813, %7820
  %7824 = fmul fast float %7821, %7790
  %7825 = fmul fast float %7822, %7790
  %7826 = fmul fast float %7823, %7790
  %7827 = fmul fast float %7824, %7824
  %7828 = fmul fast float %7825, %7825
  %7829 = fadd fast float %7827, %7828
  %7830 = fmul fast float %7826, %7826
  %7831 = fadd fast float %7829, %7830
  %7832 = call float @dx.op.unary.f32(i32 24, float %7831)  ; Sqrt(value)
  %7833 = fsub fast float %7832, %7745
  %7834 = fmul fast float %7833, %7747
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  br label %7836

; <label>:7836                                    ; preds = %7761, %7757
  %7837 = phi float [ %7835, %7761 ], [ 1.000000e+00, %7757 ]
  %7838 = fmul fast float %7754, 5.000000e-01
  %7839 = fadd fast float %7838, 5.000000e-01
  %7840 = call float @dx.op.unary.f32(i32 22, float %7839)  ; Frc(value)
  %7841 = call float @dx.op.unary.f32(i32 27, float %7840)  ; Round_ni(value)
  %7842 = call float @dx.op.unary.f32(i32 22, float %7840)  ; Frc(value)
  %7843 = fmul fast float %7842, 2.000000e+00
  %7844 = fadd fast float %7843, -1.000000e+00
  %7845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %51, float %7706, float %7707, float %7841, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7846 = extractvalue %dx.types.ResRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.ResRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.ResRet.f32 %7845, 2
  %7849 = extractvalue %dx.types.ResRet.f32 %7845, 3
  %7850 = fadd fast float %7846, -5.000000e-01
  %7851 = fadd fast float %7848, -5.000000e-01
  %7852 = fmul fast float %7850, 0xBFD5555560000000
  %7853 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7851, float %7852)  ; FMad(a,b,c)
  %7854 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7847, float 0.000000e+00)  ; FMad(a,b,c)
  %7855 = fadd fast float %7854, %7849
  %7856 = fmul fast float %7850, -7.500000e-01
  %7857 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7851, float %7856)  ; FMad(a,b,c)
  %7858 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7847, float 0.000000e+00)  ; FMad(a,b,c)
  %7859 = fadd fast float %7858, %7849
  %7860 = call float @dx.op.binary.f32(i32 35, float %7853, float -1.000000e+00)  ; FMax(a,b)
  %7861 = call float @dx.op.binary.f32(i32 35, float %7855, float -1.000000e+00)  ; FMax(a,b)
  %7862 = call float @dx.op.binary.f32(i32 35, float %7857, float -1.000000e+00)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 35, float %7859, float -1.000000e+00)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7860, float 1.000000e+00)  ; FMin(a,b)
  %7865 = call float @dx.op.binary.f32(i32 36, float %7861, float 1.000000e+00)  ; FMin(a,b)
  %7866 = call float @dx.op.binary.f32(i32 36, float %7862, float 1.000000e+00)  ; FMin(a,b)
  %7867 = call float @dx.op.binary.f32(i32 36, float %7863, float 1.000000e+00)  ; FMin(a,b)
  %7868 = fcmp fast olt float %7864, 0x3FEFFF8020000000
  br i1 %7868, label %7869, label %7984, !dx.controlflow.hints !177

; <label>:7869                                    ; preds = %7836
  %7870 = extractvalue %dx.types.CBufRet.f32 %7752, 3
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7874 = extractvalue %dx.types.CBufRet.f32 %7871, 2
  %7875 = extractvalue %dx.types.CBufRet.f32 %7871, 3
  %7876 = fsub fast float %7872, %7864
  %7877 = fsub fast float %7873, %7865
  %7878 = fsub fast float %7874, %7866
  %7879 = fsub fast float %7875, %7867
  %7880 = fmul fast float %7876, %7870
  %7881 = fmul fast float %7877, %7870
  %7882 = fmul fast float %7878, %7870
  %7883 = fmul fast float %7879, %7870
  %7884 = fadd fast float %7880, %7864
  %7885 = fadd fast float %7881, %7865
  %7886 = fsub fast float -0.000000e+00, %7885
  %7887 = fadd fast float %7882, %7866
  %7888 = fadd fast float %7883, %7867
  %7889 = fmul fast float %7884, %7884
  %7890 = fsub fast float %7885, %7889
  %7891 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7890)  ; FMax(a,b)
  %7892 = fdiv fast float 1.000000e+00, %7891
  %7893 = fmul fast float %7885, %7884
  %7894 = fsub fast float %7887, %7893
  %7895 = fsub fast float %7844, %7884
  %7896 = fmul fast float %7844, %7844
  %7897 = fsub fast float %7896, %7885
  %7898 = fmul fast float %7895, %7892
  %7899 = fmul fast float %7898, %7894
  %7900 = fsub fast float %7897, %7899
  %7901 = fmul fast float %7885, %7885
  %7902 = fsub fast float %7888, %7901
  %7903 = fmul fast float %7894, %7894
  %7904 = fmul fast float %7903, %7892
  %7905 = fsub fast float %7902, %7904
  %7906 = fdiv fast float %7900, %7905
  %7907 = fmul fast float %7894, %7906
  %7908 = fsub fast float %7895, %7907
  %7909 = fmul fast float %7908, %7892
  %7910 = fmul fast float %7909, %7884
  %7911 = fsub fast float 1.000000e+00, %7910
  %7912 = fmul fast float %7885, %7906
  %7913 = fsub fast float %7911, %7912
  %7914 = fmul fast float %7909, %7909
  %7915 = fmul fast float %7906, 4.000000e+00
  %7916 = fmul fast float %7915, %7913
  %7917 = fsub fast float %7914, %7916
  %7918 = call float @dx.op.unary.f32(i32 24, float %7917)  ; Sqrt(value)
  %7919 = fcmp fast oge float %7909, 0.000000e+00
  %7920 = fsub fast float -0.000000e+00, %7918
  %7921 = select i1 %7919, float %7920, float %7918
  %7922 = fsub fast float %7921, %7909
  %7923 = fdiv fast float %7922, %7906
  %7924 = fdiv fast float %7913, %7922
  %7925 = fmul fast float %7923, 5.000000e-01
  %7926 = fmul fast float %7924, 2.000000e+00
  %7927 = select i1 %7919, float %7925, float %7926
  %7928 = select i1 %7919, float %7926, float %7925
  %7929 = call float @dx.op.binary.f32(i32 35, float %7927, float %7928)  ; FMax(a,b)
  %7930 = call float @dx.op.binary.f32(i32 36, float %7927, float %7928)  ; FMin(a,b)
  %7931 = fcmp fast ogt float %7844, %7930
  br i1 %7931, label %7932, label %7942

; <label>:7932                                    ; preds = %7869
  %7933 = fsub fast float %7844, %7930
  %7934 = fsub fast float %7929, %7930
  %7935 = fmul fast float %7933, %7934
  %7936 = fmul fast float %7929, %7844
  %7937 = fadd fast float %7929, %7844
  %7938 = fmul fast float %7937, %7884
  %7939 = fadd fast float %7936, %7885
  %7940 = fsub fast float %7939, %7938
  %7941 = fdiv fast float %7940, %7935
  br label %7942

; <label>:7942                                    ; preds = %7932, %7869
  %7943 = phi float [ %7941, %7932 ], [ 0.000000e+00, %7869 ]
  %7944 = fcmp fast ogt float %7844, %7929
  %7945 = fsub fast float %7844, %7929
  br i1 %7944, label %7946, label %7956

; <label>:7946                                    ; preds = %7942
  %7947 = fsub fast float %7929, %7930
  %7948 = fmul fast float %7947, %7945
  %7949 = fmul fast float %7930, %7844
  %7950 = fadd fast float %7930, %7844
  %7951 = fmul fast float %7950, %7884
  %7952 = fsub fast float %7886, %7949
  %7953 = fadd fast float %7952, %7951
  %7954 = fdiv fast float %7953, %7948
  %7955 = fadd fast float %7954, %7943
  br label %7956

; <label>:7956                                    ; preds = %7946, %7942
  %7957 = phi float [ %7955, %7946 ], [ %7943, %7942 ]
  %7958 = fsub fast float %7844, %7930
  %7959 = fmul fast float %7958, %7945
  %7960 = fmul fast float %7930, %7929
  %7961 = fadd fast float %7930, %7929
  %7962 = fmul fast float %7961, %7884
  %7963 = fadd fast float %7960, %7885
  %7964 = fsub fast float %7963, %7962
  %7965 = fdiv fast float %7964, %7959
  %7966 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7967 = fcmp fast oeq float %6635, 0.000000e+00
  %7968 = extractvalue %dx.types.CBufRet.f32 %7752, 0
  %7969 = fcmp fast oeq float %7968, 0.000000e+00
  %7970 = or i1 %7967, %7969
  %7971 = fmul fast float %7968, 2.000000e+00
  %7972 = fadd fast float %7753, %7754
  %7973 = fdiv fast float %7972, %7971
  %7974 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7975 = fmul fast float %7974, 2.000000e+00
  %7976 = fsub fast float 3.000000e+00, %7975
  %7977 = fmul fast float %7974, %7974
  %7978 = fmul fast float %7977, %7976
  %7979 = select i1 %7970, float 1.000000e+00, float %7978
  %7980 = fmul fast float %7965, %6635
  %7981 = fadd fast float %7966, %7980
  %7982 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7983 = fmul fast float %7979, %7982
  br label %7984

; <label>:7984                                    ; preds = %7956, %7836
  %7985 = phi float [ %7983, %7956 ], [ 0.000000e+00, %7836 ]
  %7986 = fsub fast float 1.000000e+00, %7985
  %7987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %7706, float %7707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7988 = extractvalue %dx.types.ResRet.f32 %7987, 0
  %7989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.i32 %7989, 2
  %7991 = icmp eq i32 %7990, 0
  br i1 %7991, label %7997, label %7992

; <label>:7992                                    ; preds = %7984
  %7993 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7994 = fadd fast float %7988, -1.000000e+00
  %7995 = fmul fast float %7993, %7994
  %7996 = fadd fast float %7995, 1.000000e+00
  br label %7997

; <label>:7997                                    ; preds = %7992, %7984
  %7998 = phi float [ %7996, %7992 ], [ %7986, %7984 ]
  br i1 %7760, label %7999, label %8017

; <label>:7999                                    ; preds = %7997
  %8000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8001 = extractvalue %dx.types.CBufRet.f32 %8000, 1
  %8002 = fsub fast float %7837, %8001
  %8003 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8004 = fsub fast float %7837, %7759
  %8005 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  %8006 = fsub fast float %8003, %8005
  %8007 = fsub fast float %7839, %8005
  %8008 = fdiv fast float %8007, %8006
  %8009 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  %8010 = fmul fast float %8009, 2.000000e+00
  %8011 = fsub fast float 3.000000e+00, %8010
  %8012 = fsub fast float %7988, %7998
  %8013 = fmul fast float %8009, %8009
  %8014 = fmul fast float %8013, %8012
  %8015 = fmul fast float %8014, %8011
  %8016 = fadd fast float %8015, %7998
  br label %8017

; <label>:8017                                    ; preds = %7999, %7997
  %8018 = phi float [ %8016, %7999 ], [ %7998, %7997 ]
  %8019 = call float @dx.op.binary.f32(i32 35, float %7988, float %8018)  ; FMax(a,b)
  %8020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.i32 %8020, 2
  %8022 = and i32 %8021, 1
  %8023 = icmp eq i32 %8022, 0
  %8024 = fcmp fast une float %8019, 1.000000e+00
  %8025 = and i1 %8024, %8023
  br i1 %8025, label %8026, label %8045

; <label>:8026                                    ; preds = %8017
  %8027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %7706, float %7707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 1
  %8033 = fmul fast float %8032, %8028
  %8034 = fmul fast float %8032, %8029
  %8035 = fmul fast float %8032, %8030
  %8036 = fcmp fast ogt float %7988, 0x3FEFFF2E40000000
  %8037 = fsub fast float 1.000000e+00, %8019
  %8038 = fsub fast float 1.000000e+00, %7988
  %8039 = fdiv fast float %8037, %8038
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = select i1 %8036, float 0.000000e+00, float %8040
  %8042 = fmul fast float %8033, %8041
  %8043 = fmul fast float %8034, %8041
  %8044 = fmul fast float %8035, %8041
  br label %8045

; <label>:8045                                    ; preds = %8026, %8017
  %8046 = phi float [ 0.000000e+00, %8017 ], [ %8042, %8026 ]
  %8047 = phi float [ 0.000000e+00, %8017 ], [ %8043, %8026 ]
  %8048 = phi float [ 0.000000e+00, %8017 ], [ %8044, %8026 ]
  %8049 = fmul fast float %8046, %6623
  %8050 = fmul fast float %8047, %6623
  %8051 = fmul fast float %8048, %6623
  %8052 = fmul fast float %8019, %7681
  %8053 = call float @dx.op.dot3.f32(i32 55, float %8019, float %8019, float %8019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8054 = call float @dx.op.dot3.f32(i32 55, float %8049, float %8050, float %8051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8055 = select i1 %268, float %8053, float %8019
  %8056 = select i1 %268, float 1.000000e+00, float %8019
  %8057 = select i1 %268, float %8054, float %8049
  %8058 = select i1 %268, float 0.000000e+00, float %8050
  %8059 = select i1 %268, float 0.000000e+00, float %8051
  %8060 = fmul fast float %8055, %7693
  %8061 = fmul fast float %8055, %7694
  %8062 = fmul fast float %8056, %7695
  %8063 = fadd fast float %8060, %8057
  %8064 = fadd fast float %8061, %8058
  %8065 = fadd fast float %8059, %8062
  %8066 = fmul fast float %8055, %7696
  %8067 = fmul fast float %8055, %7697
  %8068 = fmul fast float %8056, %7698
  br label %8069

; <label>:8069                                    ; preds = %8045, %7702, %7671, %6903
  %8070 = phi float [ %6908, %6903 ], [ %7693, %7671 ], [ %8063, %8045 ], [ %7693, %7702 ]
  %8071 = phi float [ %6909, %6903 ], [ %7694, %7671 ], [ %8064, %8045 ], [ %7694, %7702 ]
  %8072 = phi float [ %6910, %6903 ], [ %7695, %7671 ], [ %8065, %8045 ], [ %7695, %7702 ]
  %8073 = phi float [ %6911, %6903 ], [ %7696, %7671 ], [ %8066, %8045 ], [ %7696, %7702 ]
  %8074 = phi float [ %6912, %6903 ], [ %7697, %7671 ], [ %8067, %8045 ], [ %7697, %7702 ]
  %8075 = phi float [ %6913, %6903 ], [ %7698, %7671 ], [ %8068, %8045 ], [ %7698, %7702 ]
  %8076 = phi float [ %6914, %6903 ], [ %7681, %7671 ], [ %8052, %8045 ], [ %7681, %7702 ]
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 2
  %8079 = extractvalue %dx.types.CBufRet.f32 %8077, 3
  %8080 = fmul fast float %8078, %111
  %8081 = fmul fast float %8079, %112
  %8082 = call float @dx.op.unary.f32(i32 7, float %8080)  ; Saturate(value)
  %8083 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  %8084 = select i1 %6645, i32 2, i32 0
  %8085 = or i32 %8084, 1
  %8086 = uitofp i32 %8085 to float
  %8087 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %51, float %8082, float %8083, float %8086, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8088 = extractvalue %dx.types.ResRet.f32 %8087, 0
  %8089 = extractvalue %dx.types.ResRet.f32 %8087, 1
  %8090 = extractvalue %dx.types.ResRet.f32 %8087, 2
  %8091 = extractvalue %dx.types.ResRet.f32 %8087, 3
  %8092 = add nuw nsw i32 %8084, 2
  %8093 = uitofp i32 %8092 to float
  %8094 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %51, float %8082, float %8083, float %8093, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = extractvalue %dx.types.ResRet.f32 %8094, 3
  %8099 = call float @dx.op.binary.f32(i32 35, float %8089, float %8090)  ; FMax(a,b)
  %8100 = call float @dx.op.binary.f32(i32 35, float %8088, float %8099)  ; FMax(a,b)
  %8101 = call float @dx.op.binary.f32(i32 35, float %8100, float %8091)  ; FMax(a,b)
  %8102 = call float @dx.op.binary.f32(i32 36, float %8096, float %8097)  ; FMin(a,b)
  %8103 = call float @dx.op.binary.f32(i32 36, float %8095, float %8102)  ; FMin(a,b)
  %8104 = call float @dx.op.binary.f32(i32 36, float %8103, float %8098)  ; FMin(a,b)
  %8105 = fmul fast float %8101, 2.550000e+02
  %8106 = fadd fast float %8105, 0x3F70101020000000
  %8107 = fptoui float %8106 to i32
  %8108 = fmul fast float %8104, 2.550000e+02
  %8109 = fadd fast float %8108, 0x3F70101020000000
  %8110 = fptoui float %8109 to i32
  %8111 = icmp ult i32 %8107, %8110
  br i1 %8111, label %8112, label %8281

; <label>:8112                                    ; preds = %8069
  %8113 = fcmp fast ogt float %101, 9.843750e-01
  %8114 = fadd fast float %6907, -4.000000e+00
  %8115 = select i1 %8113, float -4.000000e+00, float %8114
  %8116 = call float @dx.op.binary.f32(i32 35, float %8115, float 0.000000e+00)  ; FMax(a,b)
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 0
  %8119 = fadd fast float %8118, %8116
  %8120 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8121 = fmul fast float %8119, %8120
  %8122 = call float @dx.op.unary.f32(i32 23, float %8121)  ; Log(value)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8117, 3
  %8124 = fmul fast float %8123, %8122
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 2
  %8127 = fmul fast float %8124, %8126
  %8128 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8129 = uitofp i32 %8107 to float
  %8130 = uitofp i32 %8110 to float
  %8131 = fadd fast float %8129, 5.000000e-01
  %8132 = fadd fast float %8130, 5.000000e-01
  %8133 = fmul fast float %8126, %8131
  %8134 = fmul fast float %8126, %8132
  %8135 = fadd fast float %8133, 0x3F0FFB4800000000
  %8136 = fadd fast float %8134, 0xBF0FFB4800000000
  %8137 = call float @dx.op.binary.f32(i32 35, float %8128, float %8135)  ; FMax(a,b)
  %8138 = call float @dx.op.binary.f32(i32 36, float %8137, float %8136)  ; FMin(a,b)
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8142 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8143 = select i1 %6645, float %8142, float 0.000000e+00
  %8144 = fmul fast float %8140, %8138
  %8145 = fadd fast float %8143, %8144
  %8146 = fadd fast float %8143, %8141
  %8147 = fsub fast float %8140, %8141
  %8148 = fadd fast float %8147, %8143
  %8149 = call float @dx.op.binary.f32(i32 35, float %8145, float %8146)  ; FMax(a,b)
  %8150 = call float @dx.op.binary.f32(i32 36, float %8149, float %8148)  ; FMin(a,b)
  %8151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8082, float %8083, float %8150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8152 = extractvalue %dx.types.ResRet.f32 %8151, 0
  %8153 = extractvalue %dx.types.ResRet.f32 %8151, 1
  %8154 = extractvalue %dx.types.ResRet.f32 %8151, 2
  %8155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.i32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.i32 %8155, 1
  %8158 = uitofp i32 %8156 to float
  %8159 = uitofp i32 %8157 to float
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = fmul fast float %8158, %8082
  %8164 = fmul fast float %8159, %8083
  %8165 = fadd fast float %8163, -5.000000e-01
  %8166 = fadd fast float %8164, -5.000000e-01
  %8167 = call float @dx.op.unary.f32(i32 22, float %8165)  ; Frc(value)
  %8168 = call float @dx.op.unary.f32(i32 22, float %8166)  ; Frc(value)
  %8169 = fmul fast float %8167, %8167
  %8170 = fmul fast float %8169, %8167
  %8171 = fsub fast float 3.000000e+00, %8167
  %8172 = fmul fast float %8169, %8171
  %8173 = fmul fast float %8167, 3.000000e+00
  %8174 = fmul fast float %8170, 3.000000e+00
  %8175 = fmul fast float %8169, 6.000000e+00
  %8176 = fsub fast float %8174, %8175
  %8177 = fadd fast float %8176, 4.000000e+00
  %8178 = fmul fast float %8177, 0x3FC5555560000000
  %8179 = fmul fast float %8170, -3.000000e+00
  %8180 = fadd fast float %8169, %8167
  %8181 = fmul fast float %8180, 3.000000e+00
  %8182 = fadd fast float %8179, 1.000000e+00
  %8183 = fadd fast float %8182, %8181
  %8184 = fmul fast float %8170, 0x3FC5555560000000
  %8185 = fmul fast float %8168, %8168
  %8186 = fmul fast float %8185, %8168
  %8187 = fsub fast float 3.000000e+00, %8168
  %8188 = fmul fast float %8185, %8187
  %8189 = fmul fast float %8168, 3.000000e+00
  %8190 = fmul fast float %8186, 3.000000e+00
  %8191 = fmul fast float %8185, 6.000000e+00
  %8192 = fsub fast float %8190, %8191
  %8193 = fadd fast float %8192, 4.000000e+00
  %8194 = fmul fast float %8193, 0x3FC5555560000000
  %8195 = fmul fast float %8186, -3.000000e+00
  %8196 = fadd fast float %8185, %8168
  %8197 = fmul fast float %8196, 3.000000e+00
  %8198 = fadd fast float %8195, 1.000000e+00
  %8199 = fadd fast float %8198, %8197
  %8200 = fmul fast float %8186, 0x3FC5555560000000
  %8201 = fadd fast float %8167, 1.000000e+00
  %8202 = fsub fast float 1.000000e+00, %8173
  %8203 = fadd fast float %8202, %8172
  %8204 = fadd fast float %8203, %8177
  %8205 = fmul fast float %8204, 0x3FC5555560000000
  %8206 = fdiv fast float %8178, %8205
  %8207 = fsub fast float %8201, %8206
  %8208 = fsub fast float 1.000000e+00, %8167
  %8209 = fadd fast float %8183, %8170
  %8210 = fmul fast float %8209, 0x3FC5555560000000
  %8211 = fdiv fast float %8184, %8210
  %8212 = fadd fast float %8208, %8211
  %8213 = fadd fast float %8168, 1.000000e+00
  %8214 = fsub fast float 1.000000e+00, %8189
  %8215 = fadd fast float %8214, %8188
  %8216 = fadd fast float %8215, %8193
  %8217 = fmul fast float %8216, 0x3FC5555560000000
  %8218 = fdiv fast float %8194, %8217
  %8219 = fsub fast float %8213, %8218
  %8220 = fsub fast float 1.000000e+00, %8168
  %8221 = fadd fast float %8199, %8186
  %8222 = fmul fast float %8221, 0x3FC5555560000000
  %8223 = fdiv fast float %8200, %8222
  %8224 = fadd fast float %8223, %8220
  %8225 = fmul fast float %8207, %8161
  %8226 = fsub fast float %8082, %8225
  %8227 = fmul fast float %8212, %8161
  %8228 = fadd fast float %8227, %8082
  %8229 = fmul fast float %8224, %8162
  %8230 = fadd fast float %8229, %8083
  %8231 = fmul fast float %8219, %8162
  %8232 = fsub fast float %8083, %8231
  %8233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8226, float %8232, float %8150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8234 = extractvalue %dx.types.ResRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.ResRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.ResRet.f32 %8233, 2
  %8237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8228, float %8232, float %8150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8238 = extractvalue %dx.types.ResRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.ResRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.ResRet.f32 %8237, 2
  %8241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8226, float %8230, float %8150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8242 = extractvalue %dx.types.ResRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.ResRet.f32 %8241, 1
  %8244 = extractvalue %dx.types.ResRet.f32 %8241, 2
  %8245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8228, float %8230, float %8150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8246 = extractvalue %dx.types.ResRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.ResRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.ResRet.f32 %8245, 2
  %8249 = fsub fast float %8242, %8234
  %8250 = fsub fast float %8243, %8235
  %8251 = fsub fast float %8244, %8236
  %8252 = fmul fast float %8249, %8222
  %8253 = fmul fast float %8250, %8222
  %8254 = fmul fast float %8251, %8222
  %8255 = fadd fast float %8252, %8234
  %8256 = fadd fast float %8253, %8235
  %8257 = fadd fast float %8254, %8236
  %8258 = fsub fast float %8246, %8238
  %8259 = fsub fast float %8247, %8239
  %8260 = fsub fast float %8248, %8240
  %8261 = fmul fast float %8258, %8222
  %8262 = fmul fast float %8259, %8222
  %8263 = fmul fast float %8260, %8222
  %8264 = fsub fast float %8238, %8255
  %8265 = fadd fast float %8264, %8261
  %8266 = fsub fast float %8239, %8256
  %8267 = fadd fast float %8266, %8262
  %8268 = fsub fast float %8240, %8257
  %8269 = fadd fast float %8268, %8263
  %8270 = fmul fast float %8265, %8210
  %8271 = fmul fast float %8267, %8210
  %8272 = fmul fast float %8269, %8210
  %8273 = fadd fast float %8270, %8255
  %8274 = fadd fast float %8271, %8256
  %8275 = fadd fast float %8272, %8257
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8278 = fmul fast float %8273, %8277
  %8279 = fmul fast float %8274, %8277
  %8280 = fmul fast float %8275, %8277
  br label %8281

; <label>:8281                                    ; preds = %8112, %8069
  %8282 = phi float [ %8152, %8112 ], [ 1.000000e+00, %8069 ]
  %8283 = phi float [ %8153, %8112 ], [ 1.000000e+00, %8069 ]
  %8284 = phi float [ %8154, %8112 ], [ 1.000000e+00, %8069 ]
  %8285 = phi float [ %8278, %8112 ], [ 0.000000e+00, %8069 ]
  %8286 = phi float [ %8279, %8112 ], [ 0.000000e+00, %8069 ]
  %8287 = phi float [ %8280, %8112 ], [ 0.000000e+00, %8069 ]
  %8288 = fmul fast float %8285, %6623
  %8289 = fmul fast float %8286, %6623
  %8290 = fmul fast float %8287, %6623
  %8291 = fmul fast float %8282, %8076
  %8292 = call float @dx.op.dot3.f32(i32 55, float %8282, float %8283, float %8284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8293 = call float @dx.op.dot3.f32(i32 55, float %8288, float %8289, float %8290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8294 = select i1 %268, float %8292, float %8282
  %8295 = select i1 %268, float %8292, float %8283
  %8296 = select i1 %268, float 1.000000e+00, float %8284
  %8297 = select i1 %268, float %8293, float %8288
  %8298 = select i1 %268, float 0.000000e+00, float %8289
  %8299 = select i1 %268, float 0.000000e+00, float %8290
  %8300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.i32 %8300, 3
  %8302 = and i32 %8301, 3
  %8303 = icmp ne i32 %8302, 0
  %8304 = and i32 %8301, 4
  %8305 = icmp ne i32 %8304, 0
  %8306 = and i1 %8303, %8305
  %8307 = and i1 %268, %8306
  br i1 %8307, label %8308, label %8314

; <label>:8308                                    ; preds = %8281
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 1
  %8311 = fadd fast float %8291, -1.000000e+00
  %8312 = fmul fast float %8310, %8311
  %8313 = fadd fast float %8312, 1.000000e+00
  br label %8314

; <label>:8314                                    ; preds = %8308, %8281
  %8315 = phi float [ %8313, %8308 ], [ %8291, %8281 ]
  %8316 = fadd fast float %8073, %8070
  %8317 = fmul fast float %8294, %8316
  %8318 = fadd fast float %8317, %8297
  %8319 = fadd fast float %8074, %8071
  %8320 = fmul fast float %8295, %8319
  %8321 = fadd fast float %8320, %8298
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  br i1 %268, label %8324, label %8348

; <label>:8324                                    ; preds = %8314
  %8325 = fadd fast float %8318, %8321
  %8326 = fmul fast float %8323, %8325
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8329 = extractvalue %dx.types.CBufRet.f32 %6627, 1
  %8330 = fsub fast float %6632, %6626
  %8331 = fadd fast float %8330, %6633
  %8332 = fsub fast float %8331, %8329
  %8333 = extractvalue %dx.types.CBufRet.f32 %6627, 2
  %8334 = fmul fast float %8332, %8333
  %8335 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  %8336 = fsub fast float %8335, %8328
  %8337 = fmul fast float %8336, %8315
  %8338 = fadd fast float %8337, %8328
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 0
  %8341 = fsub fast float %8338, %8340
  %8342 = fmul fast float %8341, 1.000000e+01
  %8343 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8344 = fsub fast float %3390, %6623
  %8345 = fmul fast float %8343, %8344
  %8346 = fadd fast float %8345, %6623
  %8347 = fmul fast float %8346, %8338
  br label %8372

; <label>:8348                                    ; preds = %8314
  %8349 = fadd fast float %8075, %8072
  %8350 = fmul fast float %8296, %8349
  %8351 = fadd fast float %8350, %8299
  %8352 = fmul fast float %8323, %8318
  %8353 = fmul fast float %8323, %8321
  %8354 = fmul fast float %8323, %8351
  %8355 = call float @dx.op.binary.f32(i32 35, float %8353, float %8354)  ; FMax(a,b)
  %8356 = call float @dx.op.binary.f32(i32 35, float %8352, float %8355)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 35, float %8356, float %6623)  ; FMax(a,b)
  %8358 = fcmp fast ugt float %8357, 0x3F10000000000000
  br i1 %8358, label %8360, label %8359

; <label>:8359                                    ; preds = %8348
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8360

; <label>:8360                                    ; preds = %8359, %8348
  %8361 = add i32 %57, 356
  %8362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %8361, i32 undef)  ; BufferLoad(srv,index,wot)
  %8363 = extractvalue %dx.types.ResRet.i32 %8362, 0
  %8364 = and i32 %8363, 32
  %8365 = icmp eq i32 %8364, 0
  br i1 %8365, label %8372, label %8366

; <label>:8366                                    ; preds = %8360
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = fmul fast float %8368, 0x3FE99999A0000000
  %8370 = fadd fast float %8368, %8352
  %8371 = fadd fast float %8369, %8354
  br label %8372

; <label>:8372                                    ; preds = %8366, %8360, %8324
  %8373 = phi float [ %8326, %8324 ], [ %8370, %8366 ], [ %8352, %8360 ]
  %8374 = phi float [ %8347, %8324 ], [ %8353, %8366 ], [ %8353, %8360 ]
  %8375 = phi float [ %8346, %8324 ], [ %8371, %8366 ], [ %8354, %8360 ]
  %8376 = phi float [ %8346, %8324 ], [ %6623, %8366 ], [ %6623, %8360 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8377 = call float @dx.op.binary.f32(i32 36, float %8373, float 3.225500e+04)  ; FMin(a,b)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8374, float 3.225500e+04)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8375, float 3.225500e+04)  ; FMin(a,b)
  %8380 = call float @dx.op.binary.f32(i32 36, float %8376, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8378)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !59, !62}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
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
!58 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!59 = !{!60, !61}
!60 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !98}
!72 = !{!73, !96, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 5, i8 0, !81}
!84 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !75, i8 2, i32 1, i8 1, i32 3, i8 3, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 7, i8 0, !81}
!88 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 8, i8 0, !76}
!89 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 9, i8 0, !79}
!90 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 10, i8 0, !76}
!91 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 11, i8 0, !76}
!92 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !75, i8 1, i32 1, i8 1, i32 12, i8 0, !86}
!93 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !75, i8 1, i32 1, i8 2, i32 12, i8 1, !79}
!94 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 13, i8 0, !86}
!95 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
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
!137 = distinct !{!137, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

