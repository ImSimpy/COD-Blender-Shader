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
; shader hash: c60746f8ec67b1f99b685306afc5860d
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
  %4804 = phi float [ %4776, %4665 ], [ %4113, %4627 ], [ %4113, %4529 ]
  %4805 = phi float [ %4777, %4665 ], [ %4114, %4627 ], [ %4114, %4529 ]
  %4806 = phi float [ %4778, %4665 ], [ %4115, %4627 ], [ %4115, %4529 ]
  %4807 = phi float [ %4793, %4665 ], [ %4076, %4627 ], [ %4076, %4529 ]
  %4808 = phi float [ %4794, %4665 ], [ %4077, %4627 ], [ %4077, %4529 ]
  %4809 = phi float [ %4795, %4665 ], [ %4078, %4627 ], [ %4078, %4529 ]
  %4810 = phi float [ %4767, %4665 ], [ %4128, %4627 ], [ %4128, %4529 ]
  %4811 = phi float [ %4768, %4665 ], [ %4129, %4627 ], [ %4129, %4529 ]
  %4812 = phi float [ %4769, %4665 ], [ %4130, %4627 ], [ %4130, %4529 ]
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
  %5046 = fsub fast float %4980, %4810
  %5047 = fsub fast float %4981, %4811
  %5048 = fsub fast float %4982, %4812
  %5049 = fmul fast float %5046, %4952
  %5050 = fmul fast float %5047, %4952
  %5051 = fmul fast float %5048, %4952
  %5052 = fadd fast float %5049, %4810
  %5053 = fadd fast float %5050, %4811
  %5054 = fadd fast float %5051, %4812
  %5055 = fsub fast float %4989, %4804
  %5056 = fsub fast float %4990, %4805
  %5057 = fsub fast float %4991, %4806
  %5058 = fmul fast float %5055, %4952
  %5059 = fmul fast float %5056, %4952
  %5060 = fmul fast float %5057, %4952
  %5061 = fadd fast float %5058, %4804
  %5062 = fadd fast float %5059, %4805
  %5063 = fadd fast float %5060, %4806
  %5064 = fadd fast float %5043, %4807
  %5065 = fadd fast float %5044, %4808
  %5066 = fadd fast float %5045, %4809
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 25, float %5067)  ; Rsqrt(value)
  %5069 = fmul fast float %5064, %5068
  %5070 = fmul fast float %5065, %5068
  %5071 = fmul fast float %5066, %5068
  %5072 = fsub fast float %5069, %4807
  %5073 = fsub fast float %5070, %4808
  %5074 = fsub fast float %5071, %4809
  %5075 = fmul fast float %5072, %4952
  %5076 = fmul fast float %5073, %4952
  %5077 = fmul fast float %5074, %4952
  %5078 = fadd fast float %5075, %4807
  %5079 = fadd fast float %5076, %4808
  %5080 = fadd fast float %5077, %4809
  %5081 = call float @dx.op.binary.f32(i32 36, float %4814, float %5000)  ; FMin(a,b)
  %5082 = fsub fast float %5081, %4814
  %5083 = fmul fast float %5082, %4952
  %5084 = fadd fast float %5083, %4814
  %5085 = fsub fast float %5013, %4813
  %5086 = fmul fast float %5085, %4952
  %5087 = fadd fast float %5086, %4813
  br label %5088

; <label>:5088                                    ; preds = %4950, %4912, %4803, %4519
  %5089 = phi float [ %5061, %4950 ], [ %4804, %4912 ], [ %4804, %4803 ], [ %4113, %4519 ]
  %5090 = phi float [ %5062, %4950 ], [ %4805, %4912 ], [ %4805, %4803 ], [ %4114, %4519 ]
  %5091 = phi float [ %5063, %4950 ], [ %4806, %4912 ], [ %4806, %4803 ], [ %4115, %4519 ]
  %5092 = phi float [ %5078, %4950 ], [ %4807, %4912 ], [ %4807, %4803 ], [ %4076, %4519 ]
  %5093 = phi float [ %5079, %4950 ], [ %4808, %4912 ], [ %4808, %4803 ], [ %4077, %4519 ]
  %5094 = phi float [ %5080, %4950 ], [ %4809, %4912 ], [ %4809, %4803 ], [ %4078, %4519 ]
  %5095 = phi float [ %5052, %4950 ], [ %4810, %4912 ], [ %4810, %4803 ], [ %4128, %4519 ]
  %5096 = phi float [ %5053, %4950 ], [ %4811, %4912 ], [ %4811, %4803 ], [ %4129, %4519 ]
  %5097 = phi float [ %5054, %4950 ], [ %4812, %4912 ], [ %4812, %4803 ], [ %4130, %4519 ]
  %5098 = phi float [ %5087, %4950 ], [ %4813, %4912 ], [ %4813, %4803 ], [ %4116, %4519 ]
  %5099 = phi float [ %5084, %4950 ], [ %4814, %4912 ], [ %4814, %4803 ], [ %4088, %4519 ]
  %5100 = fcmp fast une float %4523, 0.000000e+00
  %5101 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5102 = call float @dx.op.unary.f32(i32 25, float %5101)  ; Rsqrt(value)
  br i1 %5100, label %5110, label %5103

; <label>:5103                                    ; preds = %5088
  %5104 = fmul fast float %5102, %197
  %5105 = fmul fast float %5102, %198
  %5106 = fmul fast float %5102, %199
  %5107 = fsub fast float -0.000000e+00, %5104
  %5108 = fsub fast float -0.000000e+00, %5105
  %5109 = fsub fast float -0.000000e+00, %5106
  br label %5277

; <label>:5110                                    ; preds = %5088
  %5111 = fmul fast float %197, %5102
  %5112 = fsub fast float -0.000000e+00, %5111
  %5113 = fmul fast float %198, %5102
  %5114 = fsub fast float -0.000000e+00, %5113
  %5115 = fmul fast float %199, %5102
  %5116 = fsub fast float -0.000000e+00, %5115
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5114, float %5116, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = fmul fast float %4523, 2.500000e+00
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %4523, 0x4013FFFFE0000000
  %5121 = fadd fast float %5120, 0xBFFFFFFFE0000000
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %4523, 0x4004000020000000
  %5124 = fadd fast float %5123, 0xBFF8000040000000
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %4095, 1.000000e+01
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %5127, 2.000000e+00
  %5129 = fsub fast float 3.000000e+00, %5128
  %5130 = fmul fast float %5127, %5127
  %5131 = fmul fast float %5130, %5129
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = fsub fast float 0x3FE3333340000000, %5098
  %5134 = fmul fast float %5133, 0x400AAAAAA0000000
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5132, %5135
  %5137 = fmul fast float %5095, 0x3FEA2B8620000000
  %5138 = fmul fast float %5096, 0x3FEA2B8620000000
  %5139 = fmul fast float %5097, 0x3FEA2B8620000000
  %5140 = fadd fast float %5137, 0x3FC81DFBA0000000
  %5141 = fmul fast float %5140, %5095
  %5142 = fadd fast float %5141, 0x3F910E6020000000
  %5143 = fadd fast float %5138, 0x3FC81DFBA0000000
  %5144 = fmul fast float %5143, %5096
  %5145 = fadd fast float %5144, 0x3F910E6020000000
  %5146 = fadd fast float %5139, 0x3FC81DFBA0000000
  %5147 = fmul fast float %5146, %5097
  %5148 = fadd fast float %5147, 0x3F910E6020000000
  %5149 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = fsub fast float %5149, %5095
  %5153 = fsub fast float %5150, %5096
  %5154 = fsub fast float %5151, %5097
  %5155 = fmul fast float %5152, %5119
  %5156 = fmul fast float %5155, %5136
  %5157 = fmul fast float %5153, %5119
  %5158 = fmul fast float %5157, %5136
  %5159 = fmul fast float %5154, %5119
  %5160 = fmul fast float %5159, %5136
  %5161 = fadd fast float %5156, %5095
  %5162 = fadd fast float %5158, %5096
  %5163 = fadd fast float %5160, %5097
  %5164 = fmul fast float %5099, %5099
  %5165 = fmul fast float %5164, %5164
  %5166 = fadd fast float %5122, 1.000000e+00
  %5167 = fsub fast float %5166, %5136
  %5168 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5169 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fsub fast float 1.000000e+00, %5165
  %5172 = call float @dx.op.binary.f32(i32 36, float %5168, float %5171)  ; FMin(a,b)
  %5173 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5174 = call float @dx.op.binary.f32(i32 35, float %5172, float %5173)  ; FMax(a,b)
  %5175 = fadd fast float %5170, 0xBFE4CCCCC0000000
  %5176 = fmul fast float %5175, 0x4006DB6DA0000000
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5177, 2.000000e+00
  %5179 = fsub fast float 3.000000e+00, %5178
  %5180 = bitcast float %5089 to i32
  %5181 = ashr i32 %5180, 1
  %5182 = add nsw i32 %5181, 532487669
  %5183 = bitcast i32 %5182 to float
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = bitcast float %5184 to i32
  %5186 = sub nsw i32 2129859010, %5185
  %5187 = bitcast i32 %5186 to float
  %5188 = fmul fast float %5187, 2.000000e+00
  %5189 = bitcast float %5090 to i32
  %5190 = ashr i32 %5189, 1
  %5191 = add nsw i32 %5190, 532487669
  %5192 = bitcast i32 %5191 to float
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = bitcast float %5193 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = fmul fast float %5196, 2.000000e+00
  %5198 = bitcast float %5091 to i32
  %5199 = ashr i32 %5198, 1
  %5200 = add nsw i32 %5199, 532487669
  %5201 = bitcast i32 %5200 to float
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = bitcast float %5202 to i32
  %5204 = sub nsw i32 2129859010, %5203
  %5205 = bitcast i32 %5204 to float
  %5206 = fmul fast float %5205, 2.000000e+00
  %5207 = fsub fast float 0x4002A9FBE0000000, %5188
  %5208 = fadd fast float %5188, 0x3FD54FDF00000000
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = fmul fast float %5211, %5207
  %5213 = fmul fast float %5212, %5212
  %5214 = fsub fast float 0x4002A9FBE0000000, %5197
  %5215 = fadd fast float %5197, 0x3FD54FDF00000000
  %5216 = bitcast float %5215 to i32
  %5217 = sub nsw i32 2129859010, %5216
  %5218 = bitcast i32 %5217 to float
  %5219 = fmul fast float %5218, %5214
  %5220 = fmul fast float %5219, %5219
  %5221 = fsub fast float 0x4002A9FBE0000000, %5206
  %5222 = fadd fast float %5206, 0x3FD54FDF00000000
  %5223 = bitcast float %5222 to i32
  %5224 = sub nsw i32 2129859010, %5223
  %5225 = bitcast i32 %5224 to float
  %5226 = fmul fast float %5225, %5221
  %5227 = fmul fast float %5226, %5226
  %5228 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5213)  ; FMax(a,b)
  %5229 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5220)  ; FMax(a,b)
  %5230 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5227)  ; FMax(a,b)
  %5231 = fsub fast float 1.000000e+00, %5117
  %5232 = fadd fast float %5231, %5132
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fsub fast float 1.000000e+00, %4504
  %5235 = fmul fast float %5174, %5234
  %5236 = fmul fast float %5177, %5177
  %5237 = fmul fast float %5236, %5235
  %5238 = fmul fast float %5237, %5179
  %5239 = fmul fast float %5234, 0xBFE99999A0000000
  %5240 = fmul fast float %5239, %5119
  %5241 = fmul fast float %5240, %5136
  %5242 = fadd fast float %5241, 1.000000e+00
  %5243 = fadd fast float %5098, -1.000000e+00
  %5244 = fmul fast float %5242, %5243
  %5245 = fadd fast float %5244, 1.000000e+00
  %5246 = fsub fast float %5228, %5089
  %5247 = fsub fast float %5229, %5090
  %5248 = fsub fast float %5230, %5091
  %5249 = fmul fast float %5238, %5246
  %5250 = fmul fast float %5238, %5247
  %5251 = fmul fast float %5238, %5248
  %5252 = fadd fast float %5249, %5089
  %5253 = fadd fast float %5250, %5090
  %5254 = fadd fast float %5251, %5091
  %5255 = fsub fast float %117, %5092
  %5256 = fsub fast float %118, %5093
  %5257 = fsub fast float %119, %5094
  %5258 = fmul fast float %5238, %5255
  %5259 = fmul fast float %5238, %5256
  %5260 = fmul fast float %5238, %5257
  %5261 = fadd fast float %5258, %5092
  %5262 = fadd fast float %5259, %5093
  %5263 = fadd fast float %5260, %5094
  %5264 = fmul fast float %5238, %5233
  %5265 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = fmul fast float %5264, %5266
  %5268 = fadd fast float %5267, %5265
  %5269 = fsub fast float 1.000000e+00, %5099
  %5270 = fmul fast float %5238, %5269
  %5271 = fadd fast float %5270, %5099
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.unary.f32(i32 25, float %5272)  ; Rsqrt(value)
  %5274 = fmul fast float %5261, %5273
  %5275 = fmul fast float %5262, %5273
  %5276 = fmul fast float %5263, %5273
  br label %5277

; <label>:5277                                    ; preds = %5110, %5103
  %5278 = phi float [ %5109, %5103 ], [ %5116, %5110 ]
  %5279 = phi float [ %5108, %5103 ], [ %5114, %5110 ]
  %5280 = phi float [ %5107, %5103 ], [ %5112, %5110 ]
  %5281 = phi float [ %5106, %5103 ], [ %5115, %5110 ]
  %5282 = phi float [ %5105, %5103 ], [ %5113, %5110 ]
  %5283 = phi float [ %5104, %5103 ], [ %5111, %5110 ]
  %5284 = phi float [ %5089, %5103 ], [ %5252, %5110 ]
  %5285 = phi float [ %5090, %5103 ], [ %5253, %5110 ]
  %5286 = phi float [ %5091, %5103 ], [ %5254, %5110 ]
  %5287 = phi float [ %5092, %5103 ], [ %5274, %5110 ]
  %5288 = phi float [ %5093, %5103 ], [ %5275, %5110 ]
  %5289 = phi float [ %5094, %5103 ], [ %5276, %5110 ]
  %5290 = phi float [ %5095, %5103 ], [ %5161, %5110 ]
  %5291 = phi float [ %5096, %5103 ], [ %5162, %5110 ]
  %5292 = phi float [ %5097, %5103 ], [ %5163, %5110 ]
  %5293 = phi float [ %5098, %5103 ], [ %5268, %5110 ]
  %5294 = phi float [ %5099, %5103 ], [ %5271, %5110 ]
  %5295 = fsub fast float -0.000000e+00, %199
  %5296 = select i1 %269, float 0.000000e+00, float %5286
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %5280, float %5279, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5282, float %5281, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = fmul fast float %5299, 2.000000e+00
  %5301 = fmul fast float %5300, %5287
  %5302 = fmul fast float %5300, %5288
  %5303 = fmul fast float %5300, %5289
  %5304 = fsub fast float %5283, %5301
  %5305 = fsub fast float %5282, %5302
  %5306 = fsub fast float %5281, %5303
  %5307 = call float @dx.op.binary.f32(i32 36, float %5294, float 1.000000e+00)  ; FMin(a,b)
  %5308 = fsub fast float 1.000000e+00, %5294
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = fsub fast float 1.000000e+00, %81
  %5313 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5313, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5315 = fdiv fast float %5312, %5314
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fmul fast float %5317, 5.000000e-01
  %5319 = fadd fast float %5318, 5.000000e-01
  %5320 = fmul fast float %5319, %81
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, %5315
  %5324 = fadd fast float %5320, %5323
  %5325 = fsub fast float 5.000000e-01, %5318
  %5326 = fmul fast float %5325, %5290
  %5327 = fmul fast float %5325, %5291
  %5328 = fmul fast float %5325, %5292
  %5329 = fadd fast float %5324, %5326
  %5330 = fadd fast float %5324, %5327
  %5331 = fadd fast float %5324, %5328
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fmul fast float %5333, 5.000000e-01
  %5335 = fadd fast float %5334, 5.000000e-01
  %5336 = fmul fast float %5335, %81
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fmul fast float %5338, %5315
  %5340 = fadd fast float %5336, %5339
  %5341 = fsub fast float 5.000000e-01, %5334
  %5342 = fmul fast float %5341, %5290
  %5343 = fmul fast float %5341, %5291
  %5344 = fmul fast float %5341, %5292
  %5345 = fadd fast float %5340, %5342
  %5346 = fadd fast float %5340, %5343
  %5347 = fadd fast float %5340, %5344
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = call float @dx.op.binary.f32(i32 36, float %5290, float %5349)  ; FMin(a,b)
  %5351 = fsub fast float 1.000000e+00, %5307
  %5352 = fmul fast float %5350, %5351
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = bitcast float %5353 to i32
  %5355 = sub nsw i32 2129859010, %5354
  %5356 = bitcast i32 %5355 to float
  %5357 = call float @dx.op.binary.f32(i32 36, float %5291, float %5349)  ; FMin(a,b)
  %5358 = fmul fast float %5357, %5351
  %5359 = fsub fast float 1.000000e+00, %5358
  %5360 = bitcast float %5359 to i32
  %5361 = sub nsw i32 2129859010, %5360
  %5362 = bitcast i32 %5361 to float
  %5363 = call float @dx.op.binary.f32(i32 36, float %5292, float %5349)  ; FMin(a,b)
  %5364 = fmul fast float %5363, %5351
  %5365 = fsub fast float 1.000000e+00, %5364
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %5307, %82
  %5370 = fmul fast float %5369, %5329
  %5371 = fmul fast float %5370, %5356
  %5372 = fmul fast float %5307, %83
  %5373 = fmul fast float %5372, %5330
  %5374 = fmul fast float %5373, %5362
  %5375 = fmul fast float %5307, %84
  %5376 = fmul fast float %5375, %5331
  %5377 = fmul fast float %5376, %5368
  %5378 = call float @dx.op.binary.f32(i32 36, float %5284, float %5349)  ; FMin(a,b)
  %5379 = fmul fast float %5378, %5351
  %5380 = fsub fast float 1.000000e+00, %5379
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = call float @dx.op.binary.f32(i32 36, float %5285, float %5349)  ; FMin(a,b)
  %5385 = fmul fast float %5384, %5351
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = bitcast float %5386 to i32
  %5388 = sub nsw i32 2129859010, %5387
  %5389 = bitcast i32 %5388 to float
  %5390 = call float @dx.op.binary.f32(i32 36, float %5296, float %5349)  ; FMin(a,b)
  %5391 = fmul fast float %5390, %5351
  %5392 = fsub fast float 1.000000e+00, %5391
  %5393 = bitcast float %5392 to i32
  %5394 = sub nsw i32 2129859010, %5393
  %5395 = bitcast i32 %5394 to float
  %5396 = fmul fast float %5369, %5345
  %5397 = fmul fast float %5396, %5383
  %5398 = fmul fast float %5372, %5346
  %5399 = fmul fast float %5398, %5389
  %5400 = fmul fast float %5375, %5347
  %5401 = fmul fast float %5400, %5395
  %5402 = call float @dx.op.dot3.f32(i32 55, float %5371, float %5374, float %5377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = select i1 %269, float 0.000000e+00, float %5371
  %5404 = select i1 %269, float %5402, float %5374
  %5405 = select i1 %269, float 0.000000e+00, float %5377
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5399, float %5401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = select i1 %269, float 0.000000e+00, float %5397
  %5408 = select i1 %269, float %5406, float %5399
  %5409 = select i1 %269, float 0.000000e+00, float %5401
  %5410 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5411 = fmul fast float %5410, %5403
  %5412 = fmul fast float %5410, %5404
  %5413 = fmul fast float %5405, %5410
  %5414 = fmul fast float %5298, 9.843750e-01
  %5415 = fmul fast float %5293, 9.843750e-01
  %5416 = fadd fast float %5414, 7.812500e-03
  %5417 = fadd fast float %5415, 7.812500e-03
  %5418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5416, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5419 = extractvalue %dx.types.ResRet.f32 %5418, 2
  %5420 = extractvalue %dx.types.ResRet.f32 %5418, 3
  %5421 = fmul fast float %5419, %5284
  %5422 = fmul fast float %5419, %5285
  %5423 = fmul fast float %5419, %5296
  %5424 = fadd fast float %5421, %5420
  %5425 = fadd fast float %5422, %5420
  %5426 = fadd fast float %5423, %5420
  %5427 = fcmp fast ogt float %4089, 0.000000e+00
  br i1 %5427, label %5428, label %5454

; <label>:5428                                    ; preds = %5277
  %5429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %5298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = fadd fast float %5430, -5.000000e-01
  %5434 = fadd fast float %5431, -5.000000e-01
  %5435 = fadd fast float %5432, -5.000000e-01
  %5436 = fsub fast float 1.000000e+00, %5284
  %5437 = fsub fast float 1.000000e+00, %5285
  %5438 = fsub fast float 1.000000e+00, %5296
  %5439 = fmul fast float %5284, 4.000000e+00
  %5440 = fmul fast float %5439, %5436
  %5441 = fmul fast float %5440, %5433
  %5442 = fmul fast float %5285, 4.000000e+00
  %5443 = fmul fast float %5442, %5437
  %5444 = fmul fast float %5443, %5434
  %5445 = fmul fast float %5296, 4.000000e+00
  %5446 = fmul fast float %5445, %5438
  %5447 = fmul fast float %5446, %5435
  %5448 = fadd fast float %5441, %5424
  %5449 = fadd fast float %5444, %5425
  %5450 = fadd fast float %5447, %5426
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  br label %5454

; <label>:5454                                    ; preds = %5428, %5277
  %5455 = phi float [ %5451, %5428 ], [ %5424, %5277 ]
  %5456 = phi float [ %5452, %5428 ], [ %5425, %5277 ]
  %5457 = phi float [ %5453, %5428 ], [ %5426, %5277 ]
  %5458 = call float @dx.op.binary.f32(i32 35, float %5456, float %5457)  ; FMax(a,b)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5455, float %5458)  ; FMax(a,b)
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = fmul fast float %197, %197
  %5462 = fmul fast float %198, %198
  %5463 = fadd fast float %5462, %5461
  %5464 = fmul fast float %199, %199
  %5465 = fadd fast float %5463, %5464
  %5466 = call float @dx.op.unary.f32(i32 24, float %5465)  ; Sqrt(value)
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5469 = fsub fast float %5466, %5468
  %5470 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5471 = fmul fast float %5469, %5470
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5474 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.i32 %5475, 0
  %5477 = and i32 %5476, 4194304
  %5478 = icmp ne i32 %5477, 0
  %5479 = and i32 %5476, 8388608
  %5480 = icmp ne i32 %5479, 0
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5491 = select i1 %5478, float %5482, float %5487
  %5492 = select i1 %5478, float %5483, float %5488
  %5493 = select i1 %5478, float %5484, float %5489
  %5494 = select i1 %5478, float %5485, float %5490
  %5495 = select i1 %5480, float 0.000000e+00, float %5494
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = select i1 %5478, float %5497, float %5498
  %5500 = select i1 %5480, float 0.000000e+00, float %5499
  %5501 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5502 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5503 = select i1 %5478, float %5501, float %5502
  %5504 = select i1 %5480, float 0.000000e+00, float %5503
  %5505 = fmul fast float %5472, %63
  %5506 = fmul fast float %5505, %5473
  %5507 = fmul fast float %5506, %5500
  %5508 = fmul fast float %5505, %5474
  %5509 = fmul fast float %5508, %5504
  %5510 = fadd fast float %5509, 1.000000e+00
  %5511 = fmul fast float %5460, %5411
  %5512 = fmul fast float %5511, %5510
  %5513 = fmul fast float %5460, %5412
  %5514 = fmul fast float %5513, %5510
  %5515 = fmul fast float %5460, %5413
  %5516 = fmul fast float %5515, %5510
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5290, float %5291, float %5292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fcmp fast ogt float %5517, 0x3E7FF19E20000000
  %5519 = fdiv fast float 1.000000e+00, %5517
  %5520 = select i1 %5518, float %5519, float 0.000000e+00
  %5521 = fmul fast float %5520, %5290
  %5522 = fmul fast float %5520, %5291
  %5523 = fmul fast float %5520, %5292
  %5524 = fadd fast float %5521, -1.000000e+00
  %5525 = fadd fast float %5522, -1.000000e+00
  %5526 = fadd fast float %5523, -1.000000e+00
  %5527 = fmul fast float %5524, 5.000000e-01
  %5528 = fmul fast float %5525, 5.000000e-01
  %5529 = fmul fast float %5526, 5.000000e-01
  %5530 = fadd fast float %5527, 1.000000e+00
  %5531 = fadd fast float %5528, 1.000000e+00
  %5532 = fadd fast float %5529, 1.000000e+00
  %5533 = fadd fast float %5507, %4090
  %5534 = fsub fast float %5491, %5530
  %5535 = fsub fast float %5492, %5531
  %5536 = fsub fast float %5493, %5532
  %5537 = fmul fast float %5534, %5495
  %5538 = fmul fast float %5535, %5495
  %5539 = fmul fast float %5536, %5495
  %5540 = fadd fast float %5537, %5530
  %5541 = fadd fast float %5538, %5531
  %5542 = fadd fast float %5539, %5532
  %5543 = fmul fast float %5455, %5407
  %5544 = fmul fast float %5456, %5408
  %5545 = fmul fast float %5457, %5409
  %5546 = fsub fast float 1.000000e+00, %5298
  %5547 = bitcast float %5546 to i32
  %5548 = sitofp i32 %5547 to float
  %5549 = fmul fast float %5548, 5.000000e+00
  %5550 = fadd fast float %5549, 0xC1EFBF8940000000
  %5551 = fptosi float %5550 to i32
  %5552 = bitcast i32 %5551 to float
  %5553 = fmul fast float %5533, %5552
  %5554 = fmul fast float %5511, %5553
  %5555 = fmul fast float %5554, %5540
  %5556 = fmul fast float %5513, %5553
  %5557 = fmul fast float %5556, %5541
  %5558 = fmul fast float %5515, %5553
  %5559 = fmul fast float %5558, %5542
  %5560 = fmul fast float %5512, %4086
  %5561 = fmul fast float %5514, %4086
  %5562 = fmul fast float %5516, %4086
  %5563 = fadd fast float %5543, %4082
  %5564 = fadd fast float %5563, %5555
  %5565 = fmul fast float %5564, %4086
  %5566 = fadd fast float %5544, %4083
  %5567 = fadd fast float %5566, %5557
  %5568 = fmul fast float %5567, %4086
  %5569 = fadd fast float %5545, %4084
  %5570 = fadd fast float %5569, %5559
  %5571 = fmul fast float %5570, %4086
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 3
  %5574 = fcmp fast oeq float %5573, 0.000000e+00
  br i1 %5574, label %6659, label %5575

; <label>:5575                                    ; preds = %5454
  %5576 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5578 = extractvalue %dx.types.CBufRet.f32 %5572, 2
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.CBufRet.f32 %5579, 1
  %5582 = extractvalue %dx.types.CBufRet.f32 %5579, 2
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = select i1 %269, float %5584, float %5580
  %5588 = select i1 %269, float %5586, float %5581
  %5589 = select i1 %269, float %5585, float %5582
  %5590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.f32 %5590, 2
  %5592 = fmul fast float %5591, %117
  %5593 = fmul fast float %5591, %118
  %5594 = fmul fast float %5591, %119
  %5595 = fadd fast float %5592, %197
  %5596 = fadd fast float %5593, %198
  %5597 = fadd fast float %5594, %199
  %5598 = fcmp fast olt float %5573, 0.000000e+00
  br i1 %5598, label %6238, label %5599

; <label>:5599                                    ; preds = %5575
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.CBufRet.f32 %5610, 3
  %5615 = fmul fast float %5601, %5595
  %5616 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %5602, float %5615)  ; FMad(a,b,c)
  %5617 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5603, float %5616)  ; FMad(a,b,c)
  %5618 = fadd fast float %5617, %5604
  %5619 = fmul fast float %5606, %5595
  %5620 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %5607, float %5619)  ; FMad(a,b,c)
  %5621 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5608, float %5620)  ; FMad(a,b,c)
  %5622 = fadd fast float %5621, %5609
  %5623 = fmul fast float %5611, %5595
  %5624 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %5612, float %5623)  ; FMad(a,b,c)
  %5625 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5613, float %5624)  ; FMad(a,b,c)
  %5626 = fadd fast float %5625, %5614
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = fcmp fast une float %5628, 0.000000e+00
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5634 = fmul fast float %5633, %5618
  %5635 = fmul fast float %5633, %5622
  %5636 = fadd fast float %5634, %5631
  %5637 = fadd fast float %5635, %5632
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5638, 1
  %5641 = extractvalue %dx.types.CBufRet.f32 %5638, 3
  %5642 = fmul fast float %5641, %5618
  %5643 = fmul fast float %5641, %5622
  %5644 = fadd fast float %5642, %5639
  %5645 = fadd fast float %5643, %5640
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 1
  %5648 = fsub fast float %5647, %5626
  %5649 = extractvalue %dx.types.CBufRet.f32 %5646, 2
  %5650 = fmul fast float %5648, %5649
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  br i1 %5629, label %5713, label %5653

; <label>:5653                                    ; preds = %5599
  %5654 = extractvalue %dx.types.CBufRet.f32 %5638, 2
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5657 = fadd fast float %5656, %5654
  %5658 = fcmp fast ogt float %5657, 0.000000e+00
  br i1 %5658, label %5659, label %5683

; <label>:5659                                    ; preds = %5653
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = fsub fast float %5644, %5661
  %5664 = fsub fast float %5645, %5662
  %5665 = fcmp fast olt float %5663, 0.000000e+00
  %5666 = fcmp fast olt float %5664, 0.000000e+00
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5669 = extractvalue %dx.types.CBufRet.f32 %5667, 1
  %5670 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5671 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5672 = select i1 %5665, float %5668, float %5670
  %5673 = select i1 %5666, float %5669, float %5671
  %5674 = fmul fast float %5672, %5663
  %5675 = fmul fast float %5673, %5664
  %5676 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %5677 = call float @dx.op.unary.f32(i32 6, float %5675)  ; FAbs(value)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5590, 0
  %5679 = call float @dx.op.binary.f32(i32 35, float %5676, float %5677)  ; FMax(a,b)
  %5680 = fsub fast float %5678, %5679
  %5681 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5682 = fmul fast float %5681, %5652
  br label %5683

; <label>:5683                                    ; preds = %5659, %5653
  %5684 = phi float [ %5682, %5659 ], [ 0.000000e+00, %5653 ]
  %5685 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5686 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5687 = fadd fast float %5686, %5685
  %5688 = fcmp fast ogt float %5687, 0.000000e+00
  br i1 %5688, label %5689, label %5713

; <label>:5689                                    ; preds = %5683
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = fsub fast float %5636, %5691
  %5694 = fsub fast float %5637, %5692
  %5695 = fcmp fast olt float %5693, 0.000000e+00
  %5696 = fcmp fast olt float %5694, 0.000000e+00
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5701 = extractvalue %dx.types.CBufRet.f32 %5697, 3
  %5702 = select i1 %5695, float %5698, float %5700
  %5703 = select i1 %5696, float %5699, float %5701
  %5704 = fmul fast float %5702, %5693
  %5705 = fmul fast float %5703, %5694
  %5706 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5707 = call float @dx.op.unary.f32(i32 6, float %5705)  ; FAbs(value)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5590, 0
  %5709 = call float @dx.op.binary.f32(i32 35, float %5706, float %5707)  ; FMax(a,b)
  %5710 = fsub fast float %5708, %5709
  %5711 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5712 = fmul fast float %5711, %5652
  br label %5713

; <label>:5713                                    ; preds = %5689, %5683, %5599
  %5714 = phi float [ 0.000000e+00, %5599 ], [ %5712, %5689 ], [ 0.000000e+00, %5683 ]
  %5715 = phi float [ 0.000000e+00, %5599 ], [ %5684, %5689 ], [ %5684, %5683 ]
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 1
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = fsub fast float %5618, %5720
  %5723 = fsub fast float %5622, %5721
  %5724 = fcmp fast olt float %5722, 0.000000e+00
  %5725 = fcmp fast olt float %5723, 0.000000e+00
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5730 = extractvalue %dx.types.CBufRet.f32 %5726, 3
  %5731 = select i1 %5724, float %5727, float %5729
  %5732 = select i1 %5725, float %5728, float %5730
  %5733 = fmul fast float %5731, %5722
  %5734 = fmul fast float %5732, %5723
  %5735 = call float @dx.op.unary.f32(i32 6, float %5733)  ; FAbs(value)
  %5736 = call float @dx.op.unary.f32(i32 6, float %5734)  ; FAbs(value)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5590, 0
  %5738 = call float @dx.op.binary.f32(i32 35, float %5735, float %5736)  ; FMax(a,b)
  %5739 = fsub fast float %5737, %5738
  %5740 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5741 = call float @dx.op.binary.f32(i32 36, float %5740, float %5718)  ; FMin(a,b)
  %5742 = fmul fast float %5741, %5652
  %5743 = fsub fast float %5714, %5742
  %5744 = fsub fast float %5715, %5714
  %5745 = fsub fast float %5744, %5742
  %5746 = call float @dx.op.binary.f32(i32 35, float %5714, float %5715)  ; FMax(a,b)
  %5747 = call float @dx.op.binary.f32(i32 35, float %5742, float %5746)  ; FMax(a,b)
  %5748 = fcmp fast olt float %5747, 1.000000e+00
  br i1 %5748, label %5749, label %6147, !dx.controlflow.hints !98

; <label>:5749                                    ; preds = %5713
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = fcmp fast une float %5751, 0.000000e+00
  br i1 %5752, label %5753, label %6147, !dx.controlflow.hints !99

; <label>:5753                                    ; preds = %5749
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.CBufRet.f32 %5754, 2
  %5758 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5763 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.CBufRet.f32 %5764, 2
  %5768 = extractvalue %dx.types.CBufRet.f32 %5764, 3
  %5769 = fmul fast float %5755, %5595
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %5756, float %5769)  ; FMad(a,b,c)
  %5771 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5757, float %5770)  ; FMad(a,b,c)
  %5772 = fadd fast float %5771, %5758
  %5773 = fmul fast float %5760, %5595
  %5774 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %5761, float %5773)  ; FMad(a,b,c)
  %5775 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5762, float %5774)  ; FMad(a,b,c)
  %5776 = fadd fast float %5775, %5763
  %5777 = fmul fast float %5765, %5595
  %5778 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %5766, float %5777)  ; FMad(a,b,c)
  %5779 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5767, float %5778)  ; FMad(a,b,c)
  %5780 = fadd fast float %5779, %5768
  %5781 = fcmp fast oge float %5772, 1.000000e+00
  %5782 = fcmp fast oge float %5776, 1.000000e+00
  %5783 = or i1 %5781, %5782
  %5784 = fcmp fast olt float %5772, 0.000000e+00
  %5785 = fcmp fast olt float %5776, 0.000000e+00
  %5786 = or i1 %5784, %5785
  %5787 = or i1 %5783, %5786
  br i1 %5787, label %6147, label %5788, !dx.controlflow.hints !100

; <label>:5788                                    ; preds = %5753
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.i32 %5793, 2
  %5795 = uitofp i32 %5794 to float
  %5796 = extractvalue %dx.types.CBufRet.i32 %5793, 3
  %5797 = uitofp i32 %5796 to float
  %5798 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5799 = fmul fast float %5798, 2.000000e+00
  %5800 = fsub fast float %5772, %5790
  %5801 = fsub fast float %5776, %5791
  %5802 = fmul fast float %5799, %5800
  %5803 = fmul fast float %5799, %5801
  %5804 = fdiv fast float 1.000000e+00, %5578
  %5805 = fmul fast float %5803, %5804
  %5806 = call float @dx.op.unary.f32(i32 6, float %5805)  ; FAbs(value)
  %5807 = fmul fast float %5792, %5597
  %5808 = fmul fast float %5807, %5799
  %5809 = call float @dx.op.unary.f32(i32 6, float %5808)  ; FAbs(value)
  %5810 = call float @dx.op.unary.f32(i32 6, float %5802)  ; FAbs(value)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5809, float %5806)  ; FMax(a,b)
  %5812 = call float @dx.op.binary.f32(i32 35, float %5810, float %5811)  ; FMax(a,b)
  %5813 = fmul fast float %5812, 2.000000e+00
  %5814 = call float @dx.op.unary.f32(i32 23, float %5813)  ; Log(value)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5814, float %5795)  ; FMax(a,b)
  %5816 = call float @dx.op.unary.f32(i32 22, float %5815)  ; Frc(value)
  %5817 = fadd fast float %5816, 0xBFEA666660000000
  %5818 = fmul fast float %5817, 8.000000e+00
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = call float @dx.op.unary.f32(i32 27, float %5815)  ; Round_ni(value)
  %5821 = fadd fast float %5820, %5819
  %5822 = call float @dx.op.binary.f32(i32 36, float %5821, float %5797)  ; FMin(a,b)
  %5823 = call float @dx.op.unary.f32(i32 27, float %5822)  ; Round_ni(value)
  %5824 = fsub fast float -0.000000e+00, %5823
  %5825 = call float @dx.op.unary.f32(i32 21, float %5824)  ; Exp(value)
  %5826 = fmul fast float %5825, %5799
  %5827 = fmul fast float %5826, %5772
  %5828 = fmul fast float %5826, %5776
  %5829 = fmul fast float %5827, 2.500000e-01
  %5830 = fmul fast float %5828, 2.500000e-01
  %5831 = fadd fast float %5829, 5.000000e-01
  %5832 = fadd fast float %5830, 5.000000e-01
  %5833 = fsub fast float %5797, %5795
  %5834 = fptoui float %5833 to i32
  %5835 = add i32 %5834, 320
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5835)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = fcmp fast une float %5822, %5797
  %5840 = fsub fast float %5772, %5837
  %5841 = fsub fast float %5776, %5838
  %5842 = call float @dx.op.unary.f32(i32 6, float %5840)  ; FAbs(value)
  %5843 = call float @dx.op.unary.f32(i32 6, float %5841)  ; FAbs(value)
  %5844 = fmul fast float %5842, %5826
  %5845 = fmul fast float %5843, %5826
  %5846 = fcmp fast olt float %5844, 1.000000e+00
  %5847 = fcmp fast olt float %5845, 1.000000e+00
  %5848 = and i1 %5846, %5847
  %5849 = or i1 %5839, %5848
  br i1 %5849, label %5850, label %6147, !dx.controlflow.hints !101

; <label>:5850                                    ; preds = %5788
  %5851 = fmul fast float %5828, 5.000000e-01
  %5852 = fmul fast float %5827, 5.000000e-01
  %5853 = fadd fast float %5851, 5.000000e-01
  %5854 = fadd fast float %5852, 5.000000e-01
  %5855 = sitofp i32 %5794 to float
  %5856 = fsub fast float %5822, %5855
  %5857 = call float @dx.op.unary.f32(i32 27, float %5856)  ; Round_ni(value)
  %5858 = call float @dx.op.unary.f32(i32 22, float %5822)  ; Frc(value)
  %5859 = call float @dx.op.unary.f32(i32 22, float %5854)  ; Frc(value)
  %5860 = call float @dx.op.unary.f32(i32 22, float %5853)  ; Frc(value)
  %5861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5859, float %5860, float %5857, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.ResRet.f32 %5861, 3
  %5866 = fcmp fast ogt float %5858, 0.000000e+00
  br i1 %5866, label %5867, label %5888, !dx.controlflow.hints !102

; <label>:5867                                    ; preds = %5850
  %5868 = fadd fast float %5857, 1.000000e+00
  %5869 = call float @dx.op.unary.f32(i32 22, float %5831)  ; Frc(value)
  %5870 = call float @dx.op.unary.f32(i32 22, float %5832)  ; Frc(value)
  %5871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5869, float %5870, float %5868, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5872 = extractvalue %dx.types.ResRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.ResRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.ResRet.f32 %5871, 2
  %5875 = extractvalue %dx.types.ResRet.f32 %5871, 3
  %5876 = fsub fast float %5872, %5862
  %5877 = fsub fast float %5873, %5863
  %5878 = fsub fast float %5874, %5864
  %5879 = fsub fast float %5875, %5865
  %5880 = fmul fast float %5876, %5858
  %5881 = fmul fast float %5877, %5858
  %5882 = fmul fast float %5878, %5858
  %5883 = fmul fast float %5879, %5858
  %5884 = fadd fast float %5880, %5862
  %5885 = fadd fast float %5881, %5863
  %5886 = fadd fast float %5882, %5864
  %5887 = fadd fast float %5883, %5865
  br label %5888

; <label>:5888                                    ; preds = %5867, %5850
  %5889 = phi float [ %5884, %5867 ], [ %5862, %5850 ]
  %5890 = phi float [ %5885, %5867 ], [ %5863, %5850 ]
  %5891 = phi float [ %5886, %5867 ], [ %5864, %5850 ]
  %5892 = phi float [ %5887, %5867 ], [ %5865, %5850 ]
  %5893 = fadd fast float %5889, -5.000000e-01
  %5894 = fadd fast float %5891, -5.000000e-01
  %5895 = fmul fast float %5893, 0xBFD5555560000000
  %5896 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5894, float %5895)  ; FMad(a,b,c)
  %5897 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5890, float 0.000000e+00)  ; FMad(a,b,c)
  %5898 = fadd fast float %5897, %5892
  %5899 = fmul fast float %5893, -7.500000e-01
  %5900 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5894, float %5899)  ; FMad(a,b,c)
  %5901 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5890, float 0.000000e+00)  ; FMad(a,b,c)
  %5902 = fadd fast float %5901, %5892
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5909 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5910 = fsub fast float %5906, %5896
  %5911 = fsub fast float %5907, %5898
  %5912 = fsub fast float %5908, %5900
  %5913 = fsub fast float %5909, %5902
  %5914 = fmul fast float %5910, %5904
  %5915 = fmul fast float %5911, %5904
  %5916 = fmul fast float %5912, %5904
  %5917 = fmul fast float %5913, %5904
  %5918 = fadd fast float %5914, %5896
  %5919 = fadd fast float %5915, %5898
  %5920 = fadd fast float %5916, %5900
  %5921 = fadd fast float %5917, %5902
  %5922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.i32 %5922, 0
  %5924 = and i32 %5923, 536870911
  %5925 = uitofp i32 %5924 to float
  %5926 = fmul fast float %5925, %5772
  %5927 = fmul fast float %5925, %5776
  %5928 = fptoui float %5926 to i32
  %5929 = fptoui float %5927 to i32
  %5930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.i32 %5930, 0
  %5932 = and i32 %5931, 31
  %5933 = lshr i32 %5928, %5932
  %5934 = lshr i32 %5929, %5932
  %5935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5936 = extractvalue %dx.types.ResRet.i32 %5935, 0
  %5937 = and i32 %5936, 31
  %5938 = shl i32 1, %5937
  %5939 = call i32 @dx.op.binary.i32(i32 40, i32 %5938, i32 4)  ; UMin(a,b)
  %5940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.i32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.i32 %5940, 1
  %5943 = icmp eq i32 %5939, 0
  br i1 %5943, label %5985, label %5944

; <label>:5944                                    ; preds = %5888
  br label %5945

; <label>:5945                                    ; preds = %5973, %5944
  %5946 = phi i32 [ %5976, %5973 ], [ 0, %5944 ]
  %5947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5948 = extractvalue %dx.types.ResRet.i32 %5947, 0
  %5949 = lshr i32 %5948, 16
  %5950 = and i32 %5949, 31
  %5951 = shl i32 %5934, %5950
  %5952 = add i32 %5951, %5933
  %5953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.i32 %5953, 0
  %5955 = and i32 %5954, 31
  %5956 = shl i32 %5952, %5955
  %5957 = add i32 %5956, %5946
  %5958 = shl i32 %5957, 2
  %5959 = add i32 %5958, 32
  %5960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5959, i32 undef)  ; BufferLoad(srv,index,wot)
  %5961 = extractvalue %dx.types.ResRet.i32 %5960, 0
  %5962 = icmp slt i32 %5961, 0
  %5963 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5946
  %5964 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5946
  %5965 = bitcast float* %5963 to i32*
  %5966 = bitcast float* %5964 to i32*
  br i1 %5962, label %5967, label %5973

; <label>:5967                                    ; preds = %5945
  %5968 = and i32 %5961, 1073741823
  %5969 = add nuw nsw i32 %5968, 20
  %5970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5969, i32 undef)  ; BufferLoad(srv,index,wot)
  %5971 = extractvalue %dx.types.ResRet.i32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.i32 %5970, 1
  br label %5973

; <label>:5973                                    ; preds = %5967, %5945
  %5974 = phi i32 [ %5971, %5967 ], [ %5941, %5945 ]
  %5975 = phi i32 [ %5972, %5967 ], [ %5942, %5945 ]
  store i32 %5974, i32* %5965, align 4
  store i32 %5975, i32* %5966, align 4
  %5976 = add nuw i32 %5946, 1
  %5977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.i32 %5977, 2
  %5979 = icmp eq i32 %5978, 0
  %5980 = icmp ugt i32 %5961, -1073741825
  %5981 = and i1 %5980, %5979
  %5982 = icmp ult i32 %5976, %5939
  %5983 = and i1 %5981, %5982
  br i1 %5983, label %5945, label %5984

; <label>:5984                                    ; preds = %5973
  br label %5985

; <label>:5985                                    ; preds = %5984, %5888
  %5986 = phi i32 [ 0, %5888 ], [ %5976, %5984 ]
  %5987 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5988 = fptoui float %5987 to i32
  %5989 = icmp eq i32 %5988, 0
  br i1 %5989, label %6041, label %5990

; <label>:5990                                    ; preds = %5985
  br label %5991

; <label>:5991                                    ; preds = %6036, %5990
  %5992 = phi i32 [ %6037, %6036 ], [ %5986, %5990 ]
  %5993 = phi i32 [ %6038, %6036 ], [ 0, %5990 ]
  %5994 = lshr i32 %5993, 2
  %5995 = and i32 %5993, 3
  %5996 = add nuw nsw i32 %5994, 83
  %5997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %5996)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.i32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.i32 %5997, 1
  %6000 = extractvalue %dx.types.CBufRet.i32 %5997, 2
  %6001 = extractvalue %dx.types.CBufRet.i32 %5997, 3
  %6002 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %5998, i32* %6002, align 4
  %6003 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %5999, i32* %6003, align 4
  %6004 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6000, i32* %6004, align 4
  %6005 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6001, i32* %6005, align 4
  %6006 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5995
  %6007 = load i32, i32* %6006, align 4, !tbaa !103, !noalias !107
  %6008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.i32 %6008, 0
  %6010 = lshr i32 %6009, 16
  %6011 = and i32 %6010, 31
  %6012 = shl i32 %5934, %6011
  %6013 = add i32 %6012, %5933
  %6014 = shl i32 %6013, 2
  %6015 = add i32 %6014, %6007
  %6016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6015, i32 undef)  ; BufferLoad(srv,index,wot)
  %6017 = extractvalue %dx.types.ResRet.i32 %6016, 0
  %6018 = icmp eq i32 %6017, 0
  br i1 %6018, label %6036, label %6019

; <label>:6019                                    ; preds = %5991
  %6020 = icmp slt i32 %6017, 0
  %6021 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5992
  %6022 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5992
  %6023 = bitcast float* %6021 to i32*
  %6024 = bitcast float* %6022 to i32*
  br i1 %6020, label %6025, label %6032

; <label>:6025                                    ; preds = %6019
  %6026 = and i32 %6017, 1073741823
  %6027 = add i32 %6007, 20
  %6028 = add i32 %6027, %6026
  %6029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6028, i32 undef)  ; BufferLoad(srv,index,wot)
  %6030 = extractvalue %dx.types.ResRet.i32 %6029, 0
  %6031 = extractvalue %dx.types.ResRet.i32 %6029, 1
  br label %6032

; <label>:6032                                    ; preds = %6025, %6019
  %6033 = phi i32 [ %6030, %6025 ], [ %5941, %6019 ]
  %6034 = phi i32 [ %6031, %6025 ], [ %5942, %6019 ]
  store i32 %6033, i32* %6023, align 4
  store i32 %6034, i32* %6024, align 4
  %6035 = add i32 %5992, 1
  br label %6036

; <label>:6036                                    ; preds = %6032, %5991
  %6037 = phi i32 [ %5992, %5991 ], [ %6035, %6032 ]
  %6038 = add nuw i32 %5993, 1
  %6039 = icmp eq i32 %6038, %5988
  br i1 %6039, label %6040, label %5991

; <label>:6040                                    ; preds = %6036
  br label %6041

; <label>:6041                                    ; preds = %6040, %5985
  %6042 = phi i32 [ %5986, %5985 ], [ %6037, %6040 ]
  %6043 = icmp eq i32 %6042, 1
  %6044 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6045 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6043, label %6046, label %6049

; <label>:6046                                    ; preds = %6041
  %6047 = load float, float* %6044, align 4
  %6048 = load float, float* %6045, align 4
  br label %6076

; <label>:6049                                    ; preds = %6041
  %6050 = load float, float* %6044, align 4
  %6051 = load float, float* %6045, align 4
  %6052 = fdiv fast float 1.000000e+00, %6051
  %6053 = fsub fast float %6050, %6052
  %6054 = icmp ugt i32 %6042, 1
  br i1 %6054, label %6055, label %6071

; <label>:6055                                    ; preds = %6049
  br label %6056

; <label>:6056                                    ; preds = %6056, %6055
  %6057 = phi float [ %6066, %6056 ], [ %6053, %6055 ]
  %6058 = phi float [ %6067, %6056 ], [ %6050, %6055 ]
  %6059 = phi i32 [ %6068, %6056 ], [ 1, %6055 ]
  %6060 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6059
  %6061 = load float, float* %6060, align 4
  %6062 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6059
  %6063 = load float, float* %6062, align 4
  %6064 = fdiv fast float 1.000000e+00, %6063
  %6065 = fsub fast float %6061, %6064
  %6066 = call float @dx.op.binary.f32(i32 36, float %6057, float %6065)  ; FMin(a,b)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6058, float %6061)  ; FMax(a,b)
  %6068 = add nuw i32 %6059, 1
  %6069 = icmp eq i32 %6068, %6042
  br i1 %6069, label %6070, label %6056

; <label>:6070                                    ; preds = %6056
  br label %6071

; <label>:6071                                    ; preds = %6070, %6049
  %6072 = phi float [ %6053, %6049 ], [ %6066, %6070 ]
  %6073 = phi float [ %6050, %6049 ], [ %6067, %6070 ]
  %6074 = fsub fast float %6073, %6072
  %6075 = fdiv fast float 1.000000e+00, %6074
  br label %6076

; <label>:6076                                    ; preds = %6071, %6046
  %6077 = phi float [ %6047, %6046 ], [ %6073, %6071 ]
  %6078 = phi float [ %6048, %6046 ], [ %6075, %6071 ]
  %6079 = fadd fast float %5780, %6077
  %6080 = fmul fast float %6079, %6078
  %6081 = call float @dx.op.unary.f32(i32 7, float %6080)  ; Saturate(value)
  %6082 = fmul fast float %6081, 2.000000e+00
  %6083 = fsub fast float 1.000000e+00, %6082
  %6084 = fmul fast float %5918, %5918
  %6085 = fsub fast float %5919, %6084
  %6086 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6085)  ; FMax(a,b)
  %6087 = fdiv fast float 1.000000e+00, %6086
  %6088 = fmul fast float %5919, %5918
  %6089 = fsub fast float %5920, %6088
  %6090 = fsub fast float %6083, %5918
  %6091 = fmul fast float %6083, %6083
  %6092 = fsub fast float %6091, %5919
  %6093 = fmul fast float %6087, %6089
  %6094 = fmul fast float %6093, %6090
  %6095 = fsub fast float %6092, %6094
  %6096 = fmul fast float %5919, %5919
  %6097 = fsub fast float %5921, %6096
  %6098 = fmul fast float %6089, %6089
  %6099 = fmul fast float %6098, %6087
  %6100 = fsub fast float %6097, %6099
  %6101 = fdiv fast float %6095, %6100
  %6102 = fmul fast float %6101, %6089
  %6103 = fsub fast float %6090, %6102
  %6104 = fmul fast float %6103, %6087
  %6105 = fmul fast float %6104, %5918
  %6106 = fsub fast float 1.000000e+00, %6105
  %6107 = fmul fast float %6101, %5919
  %6108 = fsub fast float %6106, %6107
  %6109 = fmul fast float %6104, %6104
  %6110 = fmul fast float %6101, 4.000000e+00
  %6111 = fmul fast float %6110, %6108
  %6112 = fsub fast float %6109, %6111
  %6113 = call float @dx.op.unary.f32(i32 24, float %6112)  ; Sqrt(value)
  %6114 = fcmp fast oge float %6104, 0.000000e+00
  %6115 = fsub fast float -0.000000e+00, %6113
  %6116 = select i1 %6114, float %6115, float %6113
  %6117 = fsub fast float %6116, %6104
  %6118 = fdiv fast float %6117, %6101
  %6119 = fdiv fast float %6108, %6117
  %6120 = fmul fast float %6118, 5.000000e-01
  %6121 = fmul fast float %6119, 2.000000e+00
  %6122 = select i1 %6114, float %6120, float %6121
  %6123 = select i1 %6114, float %6121, float %6120
  %6124 = call float @dx.op.binary.f32(i32 35, float %6122, float %6123)  ; FMax(a,b)
  %6125 = call float @dx.op.binary.f32(i32 36, float %6122, float %6123)  ; FMin(a,b)
  %6126 = fcmp fast ogt float %6083, %6124
  %6127 = fsub fast float %6083, %6125
  %6128 = fsub fast float %6083, %6124
  %6129 = fsub fast float %6124, %6125
  %6130 = select i1 %6126, float %6128, float %6129
  %6131 = fmul float %6127, %6130
  %6132 = select i1 %6126, float %6125, float %6083
  %6133 = fcmp fast ogt float %6083, %6125
  %6134 = fmul fast float %6132, %6124
  %6135 = fadd fast float %6132, %6124
  %6136 = fmul fast float %6135, %5918
  %6137 = fadd fast float %6134, %5919
  %6138 = fsub fast float %6137, %6136
  %6139 = fdiv fast float %6138, %6131
  %6140 = select i1 %6133, float %6139, float 0.000000e+00
  %6141 = fsub fast float 1.000000e+00, %6140
  %6142 = select i1 %6126, float %6141, float %6140
  %6143 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6144 = extractvalue %dx.types.CBufRet.f32 %5903, 3
  %6145 = fmul fast float %6144, %6143
  %6146 = fsub fast float 1.000000e+00, %6145
  br label %6147

; <label>:6147                                    ; preds = %6076, %5788, %5753, %5749, %5713
  %6148 = phi float [ 1.000000e+00, %5713 ], [ %6146, %6076 ], [ 1.000000e+00, %5753 ], [ 1.000000e+00, %5788 ], [ 1.000000e+00, %5749 ]
  %6149 = fcmp fast ogt float %5745, 0.000000e+00
  br i1 %6149, label %6150, label %6158, !dx.controlflow.hints !116

; <label>:6150                                    ; preds = %6147
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6153 = fadd fast float %6152, %5626
  %6154 = call float @dx.op.binary.f32(i32 35, float %6153, float 0.000000e+00)  ; FMax(a,b)
  %6155 = fadd fast float %6154, 0x3F10000000000000
  %6156 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5644, float %5645, float undef, float undef, i32 0, i32 0, i32 undef, float %6155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6157 = extractvalue %dx.types.ResRet.f32 %6156, 0
  br label %6158

; <label>:6158                                    ; preds = %6150, %6147
  %6159 = phi float [ %6157, %6150 ], [ 1.000000e+00, %6147 ]
  %6160 = fcmp fast ogt float %5743, 0.000000e+00
  br i1 %6160, label %6161, label %6169, !dx.controlflow.hints !117

; <label>:6161                                    ; preds = %6158
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6164 = fadd fast float %6163, %5626
  %6165 = call float @dx.op.binary.f32(i32 35, float %6164, float 0.000000e+00)  ; FMax(a,b)
  %6166 = fadd fast float %6165, 0x3F10000000000000
  %6167 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5636, float %5637, float undef, float undef, i32 0, i32 0, i32 undef, float %6166)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6168 = extractvalue %dx.types.ResRet.f32 %6167, 0
  br label %6169

; <label>:6169                                    ; preds = %6161, %6158
  %6170 = phi float [ %6168, %6161 ], [ 1.000000e+00, %6158 ]
  %6171 = fcmp fast ogt float %5742, 0.000000e+00
  br i1 %6171, label %6172, label %6184, !dx.controlflow.hints !118

; <label>:6172                                    ; preds = %6169
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = fadd fast float %6174, %5626
  %6176 = call float @dx.op.binary.f32(i32 35, float %6175, float 0.000000e+00)  ; FMax(a,b)
  %6177 = fadd fast float %6176, 0x3F10000000000000
  br i1 %5629, label %6178, label %6181, !dx.controlflow.hints !119

; <label>:6178                                    ; preds = %6172
  %6179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5618, float %5622, float undef, float undef, i32 0, i32 0, i32 undef, float %6177)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6180 = extractvalue %dx.types.ResRet.f32 %6179, 0
  br label %6184

; <label>:6181                                    ; preds = %6172
  %6182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5618, float %5622, float undef, float undef, i32 0, i32 0, i32 undef, float %6177)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6183 = extractvalue %dx.types.ResRet.f32 %6182, 0
  br label %6184

; <label>:6184                                    ; preds = %6181, %6178, %6169
  %6185 = phi float [ %6180, %6178 ], [ %6183, %6181 ], [ 1.000000e+00, %6169 ]
  %6186 = fsub fast float %6159, %6148
  %6187 = fmul fast float %6186, %5715
  %6188 = fadd fast float %6187, %6148
  %6189 = fsub fast float %6170, %6188
  %6190 = fmul fast float %6189, %5714
  %6191 = fadd fast float %6190, %6188
  %6192 = fsub fast float %6185, %6191
  %6193 = fmul fast float %6192, %5742
  %6194 = fadd fast float %6193, %6191
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6197 = fcmp fast ogt float %6196, 0.000000e+00
  br i1 %6197, label %6198, label %6238, !dx.controlflow.hints !120

; <label>:6198                                    ; preds = %6184
  %6199 = fcmp fast ugt float %6196, 0.000000e+00
  br i1 %6199, label %6200, label %6235

; <label>:6200                                    ; preds = %6198
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.CBufRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6210 = extractvalue %dx.types.CBufRet.f32 %6206, 3
  %6211 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 0
  %6215 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6216 = extractvalue %dx.types.CBufRet.f32 %6213, 2
  %6217 = fadd fast float %6214, %5595
  %6218 = fadd fast float %6215, %5596
  %6219 = fadd fast float %6216, %5597
  %6220 = fmul fast float %6217, %6202
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6203, float %6218, float %6220)  ; FMad(a,b,c)
  %6222 = call float @dx.op.tertiary.f32(i32 46, float %6204, float %6219, float %6221)  ; FMad(a,b,c)
  %6223 = fadd fast float %6222, %6205
  %6224 = fmul fast float %6217, %6207
  %6225 = call float @dx.op.tertiary.f32(i32 46, float %6208, float %6218, float %6224)  ; FMad(a,b,c)
  %6226 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6219, float %6225)  ; FMad(a,b,c)
  %6227 = fadd fast float %6226, %6210
  %6228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6223, float %6227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6229 = extractvalue %dx.types.ResRet.f32 %6228, 0
  %6230 = fmul fast float %6229, %6212
  %6231 = fadd fast float %6230, %6211
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = fmul fast float %6232, %6196
  %6234 = fsub fast float 1.000000e+00, %6233
  br label %6235

; <label>:6235                                    ; preds = %6200, %6198
  %6236 = phi float [ %6234, %6200 ], [ 1.000000e+00, %6198 ]
  %6237 = fmul fast float %6236, %6194
  br label %6238

; <label>:6238                                    ; preds = %6235, %6184, %5575
  %6239 = phi float [ 1.000000e+00, %5575 ], [ %6237, %6235 ], [ %6194, %6184 ]
  %6240 = call float @dx.op.binary.f32(i32 36, float %6239, float %6239)  ; FMin(a,b)
  %6241 = call float @dx.op.binary.f32(i32 36, float %6239, float %6240)  ; FMin(a,b)
  %6242 = fcmp fast ogt float %6241, 0.000000e+00
  br i1 %6242, label %6243, label %6403, !dx.controlflow.hints !121

; <label>:6243                                    ; preds = %6238
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6248 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6259 = fmul fast float %6245, %5595
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %6246, float %6259)  ; FMad(a,b,c)
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %6247, float %6260)  ; FMad(a,b,c)
  %6262 = fadd fast float %6261, %6248
  %6263 = fmul fast float %6250, %5595
  %6264 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %6251, float %6263)  ; FMad(a,b,c)
  %6265 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %6252, float %6264)  ; FMad(a,b,c)
  %6266 = fadd fast float %6265, %6253
  %6267 = fmul fast float %6255, %5595
  %6268 = call float @dx.op.tertiary.f32(i32 46, float %5596, float %6256, float %6267)  ; FMad(a,b,c)
  %6269 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %6257, float %6268)  ; FMad(a,b,c)
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6273 = extractvalue %dx.types.CBufRet.f32 %6270, 3
  %6274 = fmul fast float %6273, %6262
  %6275 = fmul fast float %6273, %6266
  %6276 = fadd fast float %6274, %6271
  %6277 = fadd fast float %6275, %6272
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6281 = fsub fast float %6276, %6279
  %6282 = fsub fast float %6277, %6280
  %6283 = fcmp fast olt float %6281, 0.000000e+00
  %6284 = fcmp fast olt float %6282, 0.000000e+00
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6290 = select i1 %6283, float %6286, float %6288
  %6291 = select i1 %6284, float %6287, float %6289
  %6292 = fmul fast float %6290, %6281
  %6293 = fmul fast float %6291, %6282
  %6294 = call float @dx.op.unary.f32(i32 6, float %6292)  ; FAbs(value)
  %6295 = call float @dx.op.unary.f32(i32 6, float %6293)  ; FAbs(value)
  %6296 = extractvalue %dx.types.CBufRet.f32 %5590, 0
  %6297 = call float @dx.op.binary.f32(i32 35, float %6294, float %6295)  ; FMax(a,b)
  %6298 = fsub fast float %6296, %6297
  %6299 = call float @dx.op.unary.f32(i32 7, float %6298)  ; Saturate(value)
  %6300 = fcmp fast ogt float %6299, 0.000000e+00
  br i1 %6300, label %6301, label %6342, !dx.controlflow.hints !122

; <label>:6301                                    ; preds = %6243
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6276, float %6277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6304 = fcmp fast ogt float %6303, 0.000000e+00
  br i1 %6304, label %6305, label %6337

; <label>:6305                                    ; preds = %6301
  %6306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6276, float %6277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6307 = extractvalue %dx.types.ResRet.f32 %6306, 0
  %6308 = extractvalue %dx.types.ResRet.f32 %6306, 1
  %6309 = extractvalue %dx.types.ResRet.f32 %6306, 2
  %6310 = extractvalue %dx.types.ResRet.f32 %6306, 3
  %6311 = fsub fast float 1.000000e+00, %6258
  %6312 = fsub fast float %6311, %6269
  %6313 = fmul fast float %6312, 0x400921FB60000000
  %6314 = fadd fast float %6313, 0x3FF921FB60000000
  %6315 = call float @dx.op.unary.f32(i32 13, float %6314)  ; Sin(value)
  %6316 = fadd fast float %6315, -1.000000e+00
  %6317 = fmul fast float %6316, 0x3FD45F3060000000
  %6318 = fmul fast float %6312, 0x401921FB60000000
  %6319 = fadd fast float %6318, 0x400921FB60000000
  %6320 = call float @dx.op.unary.f32(i32 13, float %6319)  ; Sin(value)
  %6321 = fadd fast float %6320, 0x3E7777A5C0000000
  %6322 = fmul fast float %6321, 0x3FC45F3060000000
  %6323 = fmul fast float %6312, 0x4022D97C80000000
  %6324 = fadd fast float %6323, 0x4012D97C80000000
  %6325 = call float @dx.op.unary.f32(i32 13, float %6324)  ; Sin(value)
  %6326 = fadd fast float %6325, 1.000000e+00
  %6327 = fmul fast float %6326, 0x3FBB2995E0000000
  %6328 = fmul fast float %6312, 0x402921FB60000000
  %6329 = fadd fast float %6328, 0x401921FB60000000
  %6330 = call float @dx.op.unary.f32(i32 13, float %6329)  ; Sin(value)
  %6331 = fadd fast float %6330, 0xBE8777A5C0000000
  %6332 = fmul fast float %6331, 0x3FB45F3060000000
  %6333 = call float @dx.op.dot4.f32(i32 56, float %6307, float %6308, float %6309, float %6310, float %6317, float %6322, float %6327, float %6332)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6334 = fmul fast float %6333, 0xBFF7154760000000
  %6335 = call float @dx.op.unary.f32(i32 21, float %6334)  ; Exp(value)
  %6336 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  br label %6337

; <label>:6337                                    ; preds = %6305, %6301
  %6338 = phi float [ %6336, %6305 ], [ 1.000000e+00, %6301 ]
  %6339 = fadd fast float %6338, -1.000000e+00
  %6340 = fmul fast float %6339, %6299
  %6341 = fadd fast float %6340, 1.000000e+00
  br label %6342

; <label>:6342                                    ; preds = %6337, %6243
  %6343 = phi float [ %6341, %6337 ], [ 1.000000e+00, %6243 ]
  %6344 = fmul fast float %6343, %6239
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = fadd fast float %6346, %197
  %6350 = fadd fast float %6347, %198
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6353 = fsub fast float -0.000000e+00, %6349
  %6354 = fsub fast float -0.000000e+00, %6350
  %6355 = fsub fast float %5295, %6348
  %6356 = fadd fast float %6355, %6352
  %6357 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6353, float %6354, float %6356)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5576, float %5577, float %5578)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = fdiv fast float 1.000000e+00, %6358
  %6360 = fmul fast float %6359, %6357
  %6361 = fmul fast float %5576, %6360
  %6362 = fmul fast float %5577, %6360
  %6363 = fadd fast float %6361, %6349
  %6364 = fadd fast float %6362, %6350
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6368 = fsub fast float %6363, %6366
  %6369 = fsub fast float %6364, %6367
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6372 = extractvalue %dx.types.CBufRet.f32 %6370, 3
  %6373 = fmul fast float %6368, %6371
  %6374 = fmul fast float %6369, %6372
  %6375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.i32 %6375, 3
  %6377 = icmp eq i32 %6376, 0
  br i1 %6377, label %6383, label %6378

; <label>:6378                                    ; preds = %6342
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6373, float %6374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.ResRet.f32 %6379, 2
  br label %6388

; <label>:6383                                    ; preds = %6342
  %6384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6373, float %6374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6385 = extractvalue %dx.types.ResRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.ResRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.ResRet.f32 %6384, 2
  br label %6388

; <label>:6388                                    ; preds = %6383, %6378
  %6389 = phi float [ %6380, %6378 ], [ %6385, %6383 ]
  %6390 = phi float [ %6381, %6378 ], [ %6386, %6383 ]
  %6391 = phi float [ %6382, %6378 ], [ %6387, %6383 ]
  %6392 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6393 = fmul fast float %6392, %6389
  %6394 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6395 = fsub fast float %6360, %6394
  %6396 = fsub fast float %6395, %6393
  %6397 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6396)  ; FMax(a,b)
  %6398 = fmul fast float %6397, %6390
  %6399 = call float @dx.op.binary.f32(i32 36, float %6391, float %6398)  ; FMin(a,b)
  %6400 = fmul fast float %6399, 0xBFF7154760000000
  %6401 = call float @dx.op.unary.f32(i32 21, float %6400)  ; Exp(value)
  %6402 = fmul fast float %6344, %6401
  br label %6403

; <label>:6403                                    ; preds = %6388, %6238
  %6404 = phi float [ %6402, %6388 ], [ %6239, %6238 ]
  %6405 = call float @dx.op.binary.f32(i32 36, float %6404, float %6404)  ; FMin(a,b)
  %6406 = call float @dx.op.binary.f32(i32 36, float %6404, float %6405)  ; FMin(a,b)
  %6407 = fcmp fast ogt float %6406, 0.000000e+00
  br i1 %6407, label %6408, label %6659, !dx.controlflow.hints !123

; <label>:6408                                    ; preds = %6403
  %6409 = fmul fast float %6404, %5587
  %6410 = fmul fast float %6404, %5588
  %6411 = fmul fast float %6404, %5589
  %6412 = fsub fast float %199, %4491
  %6413 = fcmp fast ogt float %6412, 0.000000e+00
  %6414 = fmul fast float %5576, 5.120000e+02
  %6415 = fmul fast float %5577, 5.120000e+02
  %6416 = fmul fast float %5578, 5.120000e+02
  %6417 = fadd fast float %6416, %199
  %6418 = fsub fast float %4491, %6417
  %6419 = fmul fast float %6418, 2.000000e+00
  %6420 = fadd fast float %6419, %6417
  %6421 = select i1 %6413, float %6420, float %6417
  %6422 = fsub fast float %6421, %199
  %6423 = call float @dx.op.dot3.f32(i32 55, float %6414, float %6415, float %6422, float %6414, float %6415, float %6422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6424 = call float @dx.op.unary.f32(i32 25, float %6423)  ; Rsqrt(value)
  %6425 = fmul fast float %6424, %6414
  %6426 = fmul fast float %6424, %6415
  %6427 = fmul fast float %6424, %6422
  %6428 = fsub fast float %4491, %199
  %6429 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6428)  ; Dot3(ax,ay,az,bx,by,bz)
  %6430 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6425, float %6426, float %6427)  ; Dot3(ax,ay,az,bx,by,bz)
  %6431 = fdiv fast float 1.000000e+00, %6430
  %6432 = fmul fast float %6431, %6429
  %6433 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6412, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6434 = fcmp fast ogt float %6433, 0.000000e+00
  %6435 = fcmp fast olt float %6433, 0.000000e+00
  %6436 = zext i1 %6434 to i32
  %6437 = zext i1 %6435 to i32
  %6438 = sub nsw i32 %6436, %6437
  %6439 = sitofp i32 %6438 to float
  %6440 = fsub fast float %6421, %4491
  %6441 = call float @dx.op.dot3.f32(i32 55, float %6414, float %6415, float %6440, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6442 = fcmp fast ogt float %6441, 0.000000e+00
  %6443 = fcmp fast olt float %6441, 0.000000e+00
  %6444 = zext i1 %6442 to i32
  %6445 = zext i1 %6443 to i32
  %6446 = sub nsw i32 %6444, %6445
  %6447 = sitofp i32 %6446 to float
  %6448 = fcmp fast une float %6439, %6447
  br i1 %6448, label %6449, label %6459

; <label>:6449                                    ; preds = %6408
  %6450 = fmul fast float %6432, %6427
  %6451 = fmul fast float %6432, %6426
  %6452 = fmul fast float %6432, %6425
  %6453 = fmul fast float %6452, %6452
  %6454 = fmul fast float %6451, %6451
  %6455 = fadd fast float %6453, %6454
  %6456 = fmul fast float %6450, %6450
  %6457 = fadd fast float %6455, %6456
  %6458 = call float @dx.op.unary.f32(i32 24, float %6457)  ; Sqrt(value)
  br label %6469

; <label>:6459                                    ; preds = %6408
  %6460 = icmp slt i32 %6438, 0
  br i1 %6460, label %6461, label %6469

; <label>:6461                                    ; preds = %6459
  %6462 = fsub fast float %199, %6421
  %6463 = fmul fast float %6414, %6414
  %6464 = fmul fast float %6415, %6415
  %6465 = fadd fast float %6463, %6464
  %6466 = fmul fast float %6462, %6462
  %6467 = fadd fast float %6465, %6466
  %6468 = call float @dx.op.unary.f32(i32 24, float %6467)  ; Sqrt(value)
  br label %6469

; <label>:6469                                    ; preds = %6461, %6459, %6449
  %6470 = phi float [ %6458, %6449 ], [ %6468, %6461 ], [ 0.000000e+00, %6459 ]
  %6471 = fsub fast float -0.000000e+00, %6470
  %6472 = select i1 %6413, float -0.000000e+00, float %6471
  %6473 = fmul fast float %4492, 0x3FF7154760000000
  %6474 = fmul fast float %6473, %6472
  %6475 = fmul fast float %4493, 0x3FF7154760000000
  %6476 = fmul fast float %6475, %6472
  %6477 = fmul fast float %4494, 0x3FF7154760000000
  %6478 = fmul fast float %6477, %6472
  %6479 = call float @dx.op.unary.f32(i32 21, float %6474)  ; Exp(value)
  %6480 = call float @dx.op.unary.f32(i32 21, float %6476)  ; Exp(value)
  %6481 = call float @dx.op.unary.f32(i32 21, float %6478)  ; Exp(value)
  %6482 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6483 = call float @dx.op.unary.f32(i32 7, float %6480)  ; Saturate(value)
  %6484 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6485 = fmul fast float %6409, %6482
  %6486 = fmul fast float %6410, %6483
  %6487 = fmul fast float %6411, %6484
  %6488 = fsub fast float %5576, %5283
  %6489 = fsub fast float %5577, %5282
  %6490 = fsub fast float %5578, %5281
  %6491 = call float @dx.op.dot3.f32(i32 55, float %6488, float %6489, float %6490, float %6488, float %6489, float %6490)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = call float @dx.op.unary.f32(i32 25, float %6491)  ; Rsqrt(value)
  %6493 = fmul fast float %6492, %6488
  %6494 = fmul fast float %6492, %6489
  %6495 = fmul fast float %6492, %6490
  %6496 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %6497 = call float @dx.op.dot3.f32(i32 55, float %5280, float %5279, float %5278, float %6493, float %6494, float %6495)  ; Dot3(ax,ay,az,bx,by,bz)
  %6498 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6499 = fmul fast float %6498, %6498
  %6500 = fmul fast float %6499, %5311
  %6501 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6502 = fmul fast float %6501, %6498
  %6503 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %6493, float %6494, float %6495)  ; Dot3(ax,ay,az,bx,by,bz)
  %6504 = fmul fast float %6503, %6503
  %6505 = call float @dx.op.unary.f32(i32 6, float %6496)  ; FAbs(value)
  %6506 = fsub fast float 1.000000e+00, %5293
  %6507 = call float @dx.op.binary.f32(i32 35, float %6506, float 0x3F847AE140000000)  ; FMax(a,b)
  %6508 = fmul fast float %6507, %6507
  %6509 = fmul fast float %6508, %6508
  %6510 = fsub fast float 1.000000e+00, %6509
  %6511 = fmul fast float %5298, %5298
  %6512 = fmul fast float %6511, %6510
  %6513 = fadd fast float %6512, %6509
  %6514 = bitcast float %6513 to i32
  %6515 = ashr i32 %6514, 1
  %6516 = add nsw i32 %6515, 532487669
  %6517 = bitcast i32 %6516 to float
  %6518 = fadd fast float %6517, %5298
  %6519 = fmul fast float %6509, %6504
  %6520 = fsub fast float 1.000000e+00, %6504
  %6521 = fadd fast float %6520, %6519
  %6522 = fmul fast float %6505, %6505
  %6523 = fmul fast float %6522, %6510
  %6524 = fadd fast float %6523, %6509
  %6525 = bitcast float %6524 to i32
  %6526 = ashr i32 %6525, 1
  %6527 = add nsw i32 %6526, 532487669
  %6528 = bitcast i32 %6527 to float
  %6529 = fadd fast float %6528, %6505
  %6530 = fmul fast float %6521, %6521
  %6531 = fmul fast float %6530, %6518
  %6532 = fmul fast float %6531, %6529
  %6533 = fdiv fast float 0x3FF0A00000000000, %6532
  %6534 = fmul fast float %6533, %6509
  %6535 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6536 = fsub fast float 1.000000e+00, %6535
  %6537 = bitcast float %6536 to i32
  %6538 = sitofp i32 %6537 to float
  %6539 = fmul fast float %6538, 5.000000e+00
  %6540 = fadd fast float %6539, 0xC1EFBF8940000000
  %6541 = fptosi float %6540 to i32
  %6542 = bitcast i32 %6541 to float
  %6543 = fsub fast float 1.000000e+00, %5284
  %6544 = fsub fast float 1.000000e+00, %5285
  %6545 = fsub fast float 1.000000e+00, %5296
  %6546 = fmul fast float %6542, %6543
  %6547 = fmul fast float %6542, %6544
  %6548 = fmul fast float %6542, %6545
  %6549 = fadd fast float %6546, %5284
  %6550 = fadd fast float %6547, %5285
  %6551 = fadd fast float %6548, %5296
  br i1 %5427, label %6552, label %6575

; <label>:6552                                    ; preds = %6469
  %6553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %6535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6554 = extractvalue %dx.types.ResRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.ResRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.ResRet.f32 %6553, 2
  %6557 = fadd fast float %6554, -5.000000e-01
  %6558 = fadd fast float %6555, -5.000000e-01
  %6559 = fadd fast float %6556, -5.000000e-01
  %6560 = fmul fast float %5284, 4.000000e+00
  %6561 = fmul fast float %6560, %6543
  %6562 = fmul fast float %6561, %6557
  %6563 = fmul fast float %5285, 4.000000e+00
  %6564 = fmul fast float %6563, %6544
  %6565 = fmul fast float %6564, %6558
  %6566 = fmul fast float %5296, 4.000000e+00
  %6567 = fmul fast float %6566, %6545
  %6568 = fmul fast float %6567, %6559
  %6569 = fadd fast float %6562, %6549
  %6570 = fadd fast float %6565, %6550
  %6571 = fadd fast float %6568, %6551
  %6572 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6573 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  br label %6575

; <label>:6575                                    ; preds = %6552, %6469
  %6576 = phi float [ %6572, %6552 ], [ %6549, %6469 ]
  %6577 = phi float [ %6573, %6552 ], [ %6550, %6469 ]
  %6578 = phi float [ %6574, %6552 ], [ %6551, %6469 ]
  %6579 = fmul fast float %6496, 9.843750e-01
  %6580 = fadd fast float %6579, 7.812500e-03
  %6581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6580, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6582 = extractvalue %dx.types.ResRet.f32 %6581, 2
  %6583 = extractvalue %dx.types.ResRet.f32 %6581, 3
  %6584 = fmul fast float %6582, %5284
  %6585 = fmul fast float %6582, %5285
  %6586 = fmul fast float %6582, %5296
  %6587 = fadd fast float %6584, %6583
  %6588 = fadd fast float %6585, %6583
  %6589 = fadd fast float %6586, %6583
  br i1 %5427, label %6590, label %6613

; <label>:6590                                    ; preds = %6575
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %6496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.ResRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.ResRet.f32 %6591, 2
  %6595 = fadd fast float %6592, -5.000000e-01
  %6596 = fadd fast float %6593, -5.000000e-01
  %6597 = fadd fast float %6594, -5.000000e-01
  %6598 = fmul fast float %5284, 4.000000e+00
  %6599 = fmul fast float %6598, %6543
  %6600 = fmul fast float %6599, %6595
  %6601 = fmul fast float %5285, 4.000000e+00
  %6602 = fmul fast float %6601, %6544
  %6603 = fmul fast float %6602, %6596
  %6604 = fmul fast float %5296, 4.000000e+00
  %6605 = fmul fast float %6604, %6545
  %6606 = fmul fast float %6605, %6597
  %6607 = fadd fast float %6600, %6587
  %6608 = fadd fast float %6603, %6588
  %6609 = fadd fast float %6606, %6589
  %6610 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  br label %6613

; <label>:6613                                    ; preds = %6590, %6575
  %6614 = phi float [ %6610, %6590 ], [ %6587, %6575 ]
  %6615 = phi float [ %6611, %6590 ], [ %6588, %6575 ]
  %6616 = phi float [ %6612, %6590 ], [ %6589, %6575 ]
  %6617 = call float @dx.op.binary.f32(i32 35, float %6615, float %6616)  ; FMax(a,b)
  %6618 = call float @dx.op.binary.f32(i32 35, float %6614, float %6617)  ; FMax(a,b)
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = fmul fast float %6576, %6534
  %6621 = fmul fast float %6577, %6534
  %6622 = fmul fast float %6578, %6534
  %6623 = fsub fast float 1.000000e+00, %6497
  %6624 = bitcast float %6623 to i32
  %6625 = sitofp i32 %6624 to float
  %6626 = fmul fast float %6625, 5.000000e+00
  %6627 = fadd fast float %6626, 0xC1EFBF8940000000
  %6628 = fptosi float %6627 to i32
  %6629 = bitcast i32 %6628 to float
  %6630 = fmul fast float %6629, %4090
  %6631 = fmul fast float %6619, %6630
  %6632 = fmul fast float %6631, %5530
  %6633 = fmul fast float %6631, %5531
  %6634 = fmul fast float %6631, %5532
  %6635 = fadd fast float %6632, %6620
  %6636 = fadd fast float %6633, %6621
  %6637 = fadd fast float %6634, %6622
  %6638 = fmul fast float %6502, %6485
  %6639 = fmul fast float %6638, %6619
  %6640 = fmul fast float %6502, %6486
  %6641 = fmul fast float %6640, %6619
  %6642 = fmul fast float %6502, %6487
  %6643 = fmul fast float %6642, %6619
  %6644 = fmul fast float %6638, %6635
  %6645 = fmul fast float %6640, %6636
  %6646 = fmul fast float %6642, %6637
  %6647 = fadd fast float %6639, %5512
  %6648 = fmul fast float %6647, %4086
  %6649 = fadd fast float %6641, %5514
  %6650 = fmul fast float %6649, %4086
  %6651 = fadd fast float %6643, %5516
  %6652 = fmul fast float %6651, %4086
  %6653 = fadd fast float %6644, %5564
  %6654 = fmul fast float %6653, %4086
  %6655 = fadd fast float %6645, %5567
  %6656 = fmul fast float %6655, %4086
  %6657 = fadd fast float %6646, %5570
  %6658 = fmul fast float %6657, %4086
  br label %6659

; <label>:6659                                    ; preds = %6613, %6403, %5454
  %6660 = phi float [ %5565, %5454 ], [ %5565, %6403 ], [ %6654, %6613 ]
  %6661 = phi float [ %5568, %5454 ], [ %5568, %6403 ], [ %6656, %6613 ]
  %6662 = phi float [ %5571, %5454 ], [ %5571, %6403 ], [ %6658, %6613 ]
  %6663 = phi float [ %5560, %5454 ], [ %5560, %6403 ], [ %6648, %6613 ]
  %6664 = phi float [ %5561, %5454 ], [ %5561, %6403 ], [ %6650, %6613 ]
  %6665 = phi float [ %5562, %5454 ], [ %5562, %6403 ], [ %6652, %6613 ]
  %6666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.i32 %6666, 0
  %6668 = icmp eq i32 %6667, 0
  br i1 %6668, label %7289, label %6669

; <label>:6669                                    ; preds = %6659
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 3
  %6673 = fmul fast float %6671, %110
  %6674 = fmul fast float %6672, %111
  %6675 = fptoui float %6673 to i32
  %6676 = fptoui float %6674 to i32
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6680 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6681 = fadd fast float %101, -4.000000e+00
  %6682 = call float @dx.op.binary.f32(i32 35, float %6681, float 0.000000e+00)  ; FMax(a,b)
  %6683 = fadd fast float %6682, %6678
  %6684 = fmul fast float %6683, %6679
  %6685 = call float @dx.op.unary.f32(i32 23, float %6684)  ; Log(value)
  %6686 = fmul fast float %6685, %6680
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6689 = fmul fast float %6686, %6688
  %6690 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.i32 %6691, 1
  %6693 = add i32 %6692, -1
  %6694 = uitofp i32 %6692 to float
  %6695 = fmul fast float %6694, %6690
  %6696 = fptoui float %6695 to i32
  %6697 = call i32 @dx.op.binary.i32(i32 40, i32 %6696, i32 %6693)  ; UMin(a,b)
  %6698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.i32 %6698, 2
  %6700 = extractvalue %dx.types.CBufRet.i32 %6698, 3
  %6701 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6676, i32 %6699, i32 %6675)  ; UMad(a,b,c)
  %6702 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6697, i32 %6700, i32 %6701)  ; UMad(a,b,c)
  %6703 = add nsw i32 %6667, -1
  %6704 = call i32 @dx.op.binary.i32(i32 37, i32 %6703, i32 0)  ; IMax(a,b)
  %6705 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6706 = fptoui float %6705 to i32
  %6707 = lshr i32 %6706, 5
  %6708 = call i32 @dx.op.binary.i32(i32 40, i32 %6707, i32 8191)  ; UMin(a,b)
  %6709 = shl i32 %6708, 2
  %6710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6709, i32 undef)  ; BufferLoad(srv,index,wot)
  %6711 = extractvalue %dx.types.ResRet.i32 %6710, 0
  %6712 = lshr i32 %6711, 16
  %6713 = and i32 %6711, 65535
  %6714 = lshr i32 %6711, 21
  %6715 = lshr i32 %6713, 5
  %6716 = call i32 @dx.op.binary.i32(i32 40, i32 %6715, i32 %6704)  ; UMin(a,b)
  %6717 = icmp ugt i32 %6714, %6716
  br i1 %6717, label %7289, label %6718

; <label>:6718                                    ; preds = %6669
  br label %6719

; <label>:6719                                    ; preds = %7279, %6718
  %6720 = phi i32 [ %7286, %7279 ], [ %6714, %6718 ]
  %6721 = phi float [ %7280, %7279 ], [ %6660, %6718 ]
  %6722 = phi float [ %7281, %7279 ], [ %6661, %6718 ]
  %6723 = phi float [ %7282, %7279 ], [ %6662, %6718 ]
  %6724 = phi float [ %7283, %7279 ], [ %6663, %6718 ]
  %6725 = phi float [ %7284, %7279 ], [ %6664, %6718 ]
  %6726 = phi float [ %7285, %7279 ], [ %6665, %6718 ]
  %6727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.i32 %6727, 0
  %6729 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6702, i32 %6728, i32 %6720)  ; UMad(a,b,c)
  %6730 = shl i32 %6729, 2
  %6731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6730, i32 undef)  ; BufferLoad(srv,index,wot)
  %6732 = extractvalue %dx.types.ResRet.i32 %6731, 0
  %6733 = shl i32 %6720, 5
  %6734 = sub nsw i32 %6712, %6733
  %6735 = call i32 @dx.op.binary.i32(i32 37, i32 %6734, i32 0)  ; IMax(a,b)
  %6736 = call i32 @dx.op.binary.i32(i32 38, i32 %6735, i32 31)  ; IMin(a,b)
  %6737 = sub nsw i32 1, %6712
  %6738 = add nsw i32 %6737, %6713
  %6739 = call i32 @dx.op.binary.i32(i32 37, i32 %6738, i32 0)  ; IMax(a,b)
  %6740 = call i32 @dx.op.binary.i32(i32 38, i32 %6739, i32 32)  ; IMin(a,b)
  %6741 = and i32 %6740, 31
  %6742 = shl i32 -1, %6741
  %6743 = xor i32 %6742, -1
  %6744 = and i32 %6736, 31
  %6745 = shl i32 %6743, %6744
  %6746 = icmp eq i32 %6740, 32
  %6747 = select i1 %6746, i32 -1, i32 %6745
  %6748 = and i32 %6747, %6732
  %6749 = icmp eq i32 %6748, 0
  br i1 %6749, label %7279, label %6750

; <label>:6750                                    ; preds = %6719
  br label %6751

; <label>:6751                                    ; preds = %6885, %6750
  %6752 = phi i32 [ %6763, %6885 ], [ %6748, %6750 ]
  %6753 = phi float [ %6886, %6885 ], [ %6721, %6750 ]
  %6754 = phi float [ %6887, %6885 ], [ %6722, %6750 ]
  %6755 = phi float [ %6888, %6885 ], [ %6723, %6750 ]
  %6756 = phi float [ %6889, %6885 ], [ %6724, %6750 ]
  %6757 = phi float [ %6890, %6885 ], [ %6725, %6750 ]
  %6758 = phi float [ %6891, %6885 ], [ %6726, %6750 ]
  %6759 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6752)  ; FirstbitLo(value)
  %6760 = add i32 %6759, %6733
  %6761 = and i32 %6759, 31
  %6762 = shl i32 1, %6761
  %6763 = xor i32 %6762, %6752
  %6764 = mul i32 %6760, 112
  %6765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6764, i32 undef)  ; BufferLoad(srv,index,wot)
  %6766 = extractvalue %dx.types.ResRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.ResRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.ResRet.f32 %6765, 2
  %6769 = or i32 %6764, 12
  %6770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6769, i32 undef)  ; BufferLoad(srv,index,wot)
  %6771 = extractvalue %dx.types.ResRet.f32 %6770, 0
  %6772 = add i32 %6764, 16
  %6773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6772, i32 undef)  ; BufferLoad(srv,index,wot)
  %6774 = extractvalue %dx.types.ResRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.ResRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.ResRet.f32 %6773, 2
  %6777 = add i32 %6764, 28
  %6778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6777, i32 undef)  ; BufferLoad(srv,index,wot)
  %6779 = extractvalue %dx.types.ResRet.i32 %6778, 0
  %6780 = add i32 %6764, 44
  %6781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6780, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 0
  %6783 = add i32 %6764, 48
  %6784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6783, i32 undef)  ; BufferLoad(srv,index,wot)
  %6785 = extractvalue %dx.types.ResRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.ResRet.f32 %6784, 1
  %6787 = extractvalue %dx.types.ResRet.f32 %6784, 2
  %6788 = extractvalue %dx.types.ResRet.f32 %6784, 3
  %6789 = add i32 %6764, 64
  %6790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6789, i32 undef)  ; BufferLoad(srv,index,wot)
  %6791 = extractvalue %dx.types.ResRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.ResRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.ResRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.ResRet.f32 %6790, 3
  %6795 = add i32 %6764, 80
  %6796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6795, i32 undef)  ; BufferLoad(srv,index,wot)
  %6797 = extractvalue %dx.types.ResRet.f32 %6796, 1
  %6798 = extractvalue %dx.types.ResRet.f32 %6796, 2
  %6799 = add i32 %6764, 92
  %6800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6799, i32 undef)  ; BufferLoad(srv,index,wot)
  %6801 = extractvalue %dx.types.ResRet.i32 %6800, 0
  %6802 = call float @dx.op.dot3.f32(i32 55, float %6766, float %6767, float %6768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6803 = select i1 %269, float %6797, float %6766
  %6804 = select i1 %269, float %6802, float %6767
  %6805 = select i1 %269, float %6798, float %6768
  %6806 = and i32 %6801, 65535
  %6807 = uitofp i32 %6806 to float
  %6808 = lshr i32 %6801, 16
  %6809 = uitofp i32 %6808 to float
  %6810 = and i32 %6779, 65535
  %6811 = and i32 %6779, 50331648
  %6812 = icmp eq i32 %6811, 33554432
  %6813 = fsub fast float %6785, %197
  %6814 = fsub fast float %6786, %198
  %6815 = fsub fast float %6787, %199
  %6816 = call float @dx.op.dot3.f32(i32 55, float %6813, float %6814, float %6815, float %6813, float %6814, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %6817 = call float @dx.op.unary.f32(i32 24, float %6816)  ; Sqrt(value)
  %6818 = fdiv fast float 1.000000e+00, %6817
  %6819 = fmul fast float %6818, %6813
  %6820 = fmul fast float %6818, %6814
  %6821 = fmul fast float %6818, %6815
  %6822 = fadd fast float %6817, %6771
  %6823 = fdiv fast float 1.000000e+00, %6822
  %6824 = fmul float %6782, %6823
  %6825 = fmul float %6824, %6824
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  br i1 %6812, label %6827, label %6848

; <label>:6827                                    ; preds = %6751
  %6828 = fmul fast float %6793, %6774
  %6829 = fmul fast float %6793, %6775
  %6830 = fmul fast float %6793, %6776
  %6831 = fadd fast float %6813, %6828
  %6832 = fadd fast float %6814, %6829
  %6833 = fadd fast float %6815, %6830
  %6834 = call float @dx.op.dot3.f32(i32 55, float %6831, float %6832, float %6833, float %6831, float %6832, float %6833)  ; Dot3(ax,ay,az,bx,by,bz)
  %6835 = call float @dx.op.unary.f32(i32 25, float %6834)  ; Rsqrt(value)
  %6836 = fmul fast float %6835, %6831
  %6837 = fmul fast float %6835, %6832
  %6838 = fmul fast float %6835, %6833
  %6839 = fsub fast float %197, %6785
  %6840 = fsub fast float %198, %6786
  %6841 = fsub fast float %199, %6787
  %6842 = fsub fast float -0.000000e+00, %6839
  %6843 = fsub fast float -0.000000e+00, %6840
  %6844 = fsub fast float -0.000000e+00, %6841
  %6845 = call float @dx.op.dot3.f32(i32 55, float %6842, float %6843, float %6844, float %6774, float %6775, float %6776)  ; Dot3(ax,ay,az,bx,by,bz)
  %6846 = fcmp fast ogt float %6845, 0.000000e+00
  %6847 = uitofp i1 %6846 to float
  br label %6848

; <label>:6848                                    ; preds = %6827, %6751
  %6849 = phi float [ %6847, %6827 ], [ 1.000000e+00, %6751 ]
  %6850 = phi float [ %6836, %6827 ], [ %6819, %6751 ]
  %6851 = phi float [ %6837, %6827 ], [ %6820, %6751 ]
  %6852 = phi float [ %6838, %6827 ], [ %6821, %6751 ]
  %6853 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6776, float %6850, float %6851, float %6852)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = fmul fast float %6853, %6853
  %6855 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6856 = fsub fast float 1.000000e+00, %6855
  %6857 = fmul fast float %6856, 5.000000e-01
  %6858 = fcmp fast ogt float %6853, 0.000000e+00
  %6859 = fsub fast float 1.000000e+00, %6857
  %6860 = select i1 %6858, float %6857, float %6859
  %6861 = fmul fast float %6860, %6809
  %6862 = fadd fast float %6861, %6807
  %6863 = fmul fast float %6862, 0x3EF0001000000000
  %6864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6863, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6865 = extractvalue %dx.types.ResRet.f32 %6864, 0
  %6866 = fmul fast float %6853, %6791
  %6867 = fadd fast float %6866, %6792
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = select i1 %6812, float 1.000000e+00, float %6868
  %6870 = select i1 %6812, float %6868, float 1.000000e+00
  %6871 = fmul fast float %6817, %6788
  %6872 = fsub fast float 1.000000e+00, %6871
  %6873 = fmul fast float %6872, %6794
  %6874 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  %6875 = fmul fast float %6874, %6870
  %6876 = fmul fast float %6875, 2.000000e+00
  %6877 = fsub fast float 3.000000e+00, %6876
  %6878 = fmul fast float %6865, %6849
  %6879 = fmul fast float %6875, %6875
  %6880 = fmul fast float %6879, %6878
  %6881 = fmul fast float %6880, %6877
  %6882 = call float @dx.op.binary.f32(i32 36, float %6881, float %6881)  ; FMin(a,b)
  %6883 = call float @dx.op.binary.f32(i32 36, float %6881, float %6882)  ; FMin(a,b)
  %6884 = fcmp fast ogt float %6883, 0.000000e+00
  br i1 %6884, label %6893, label %6885, !dx.controlflow.hints !124

; <label>:6885                                    ; preds = %7235, %6993, %6848
  %6886 = phi float [ %6753, %6993 ], [ %6753, %6848 ], [ %7275, %7235 ]
  %6887 = phi float [ %6754, %6993 ], [ %6754, %6848 ], [ %7276, %7235 ]
  %6888 = phi float [ %6755, %6993 ], [ %6755, %6848 ], [ %7277, %7235 ]
  %6889 = phi float [ %6756, %6993 ], [ %6756, %6848 ], [ %7269, %7235 ]
  %6890 = phi float [ %6757, %6993 ], [ %6757, %6848 ], [ %7270, %7235 ]
  %6891 = phi float [ %6758, %6993 ], [ %6758, %6848 ], [ %7271, %7235 ]
  %6892 = icmp eq i32 %6752, %6762
  br i1 %6892, label %7278, label %6751

; <label>:6893                                    ; preds = %6848
  %6894 = icmp eq i32 %6810, 255
  br i1 %6894, label %6993, label %6895, !dx.controlflow.hints !125

; <label>:6895                                    ; preds = %6893
  %6896 = mul nuw nsw i32 %6810, 176
  %6897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6896, i32 undef)  ; BufferLoad(srv,index,wot)
  %6898 = extractvalue %dx.types.ResRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.ResRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.ResRet.f32 %6897, 2
  %6901 = extractvalue %dx.types.ResRet.f32 %6897, 3
  %6902 = add nuw nsw i32 %6896, 16
  %6903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6902, i32 undef)  ; BufferLoad(srv,index,wot)
  %6904 = extractvalue %dx.types.ResRet.f32 %6903, 0
  %6905 = extractvalue %dx.types.ResRet.f32 %6903, 1
  %6906 = add nuw nsw i32 %6896, 32
  %6907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6906, i32 undef)  ; BufferLoad(srv,index,wot)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.ResRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.ResRet.f32 %6907, 2
  %6911 = add nuw nsw i32 %6896, 48
  %6912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6911, i32 undef)  ; BufferLoad(srv,index,wot)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.ResRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.ResRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.ResRet.f32 %6912, 3
  %6917 = add nuw nsw i32 %6896, 64
  %6918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6917, i32 undef)  ; BufferLoad(srv,index,wot)
  %6919 = extractvalue %dx.types.ResRet.f32 %6918, 0
  %6920 = extractvalue %dx.types.ResRet.f32 %6918, 1
  %6921 = extractvalue %dx.types.ResRet.f32 %6918, 2
  %6922 = extractvalue %dx.types.ResRet.f32 %6918, 3
  %6923 = add nuw nsw i32 %6896, 80
  %6924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6923, i32 undef)  ; BufferLoad(srv,index,wot)
  %6925 = extractvalue %dx.types.ResRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.ResRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.ResRet.f32 %6924, 2
  %6928 = extractvalue %dx.types.ResRet.f32 %6924, 3
  %6929 = add nuw nsw i32 %6896, 96
  %6930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6929, i32 undef)  ; BufferLoad(srv,index,wot)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.f32 %6930, 1
  %6933 = extractvalue %dx.types.ResRet.f32 %6930, 2
  %6934 = extractvalue %dx.types.ResRet.f32 %6930, 3
  %6935 = bitcast float %6905 to i32
  %6936 = fmul fast float %6910, %117
  %6937 = fmul fast float %6910, %118
  %6938 = fmul fast float %6910, %119
  %6939 = fadd fast float %6936, %197
  %6940 = fadd fast float %6937, %198
  %6941 = fadd fast float %6938, %199
  %6942 = fmul fast float %6939, %6913
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6919, float %6942)  ; FMad(a,b,c)
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6941, float %6925, float %6943)  ; FMad(a,b,c)
  %6945 = fadd fast float %6944, %6931
  %6946 = fmul fast float %6939, %6914
  %6947 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6920, float %6946)  ; FMad(a,b,c)
  %6948 = call float @dx.op.tertiary.f32(i32 46, float %6941, float %6926, float %6947)  ; FMad(a,b,c)
  %6949 = fadd fast float %6948, %6932
  %6950 = fmul fast float %6939, %6915
  %6951 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6921, float %6950)  ; FMad(a,b,c)
  %6952 = call float @dx.op.tertiary.f32(i32 46, float %6941, float %6927, float %6951)  ; FMad(a,b,c)
  %6953 = fadd fast float %6952, %6933
  %6954 = fmul fast float %6939, %6916
  %6955 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6922, float %6954)  ; FMad(a,b,c)
  %6956 = call float @dx.op.tertiary.f32(i32 46, float %6941, float %6928, float %6955)  ; FMad(a,b,c)
  %6957 = fadd fast float %6956, %6934
  %6958 = fdiv fast float %6945, %6957
  %6959 = fdiv fast float %6949, %6957
  %6960 = fdiv fast float %6953, %6957
  %6961 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6960)  ; FMax(a,b)
  %6962 = fmul fast float %280, 0x401921FB60000000
  %6963 = call float @dx.op.unary.f32(i32 13, float %6962)  ; Sin(value)
  %6964 = call float @dx.op.unary.f32(i32 12, float %6962)  ; Cos(value)
  %6965 = fsub fast float -0.000000e+00, %6963
  %6966 = fmul fast float %6900, 5.000000e-01
  %6967 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6968 = call float @dx.op.unary.f32(i32 22, float %6967)  ; Frc(value)
  %6969 = fmul fast float %6968, 0x404A7DD040000000
  %6970 = call float @dx.op.unary.f32(i32 22, float %6969)  ; Frc(value)
  %6971 = fmul fast float %6970, %6909
  %6972 = fadd fast float %6971, %6966
  %6973 = call float @dx.op.tertiary.f32(i32 46, float %6972, float %6965, float 0.000000e+00)  ; FMad(a,b,c)
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6972, float %6964, float 0.000000e+00)  ; FMad(a,b,c)
  %6975 = fadd fast float %6973, %6958
  %6976 = fadd fast float %6974, %6959
  %6977 = fmul fast float %6975, %6904
  %6978 = fmul fast float %6976, %6904
  %6979 = call float @dx.op.binary.f32(i32 35, float %6977, float %6900)  ; FMax(a,b)
  %6980 = call float @dx.op.binary.f32(i32 35, float %6978, float %6900)  ; FMax(a,b)
  %6981 = call float @dx.op.binary.f32(i32 36, float %6979, float %6901)  ; FMin(a,b)
  %6982 = call float @dx.op.binary.f32(i32 36, float %6980, float %6901)  ; FMin(a,b)
  %6983 = fadd fast float %6981, %6898
  %6984 = fadd fast float %6982, %6899
  %6985 = uitofp i32 %6935 to float
  %6986 = fadd fast float %6961, %6908
  %6987 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %6983, float %6984, float %6985, float undef, i32 0, i32 0, i32 undef, float %6986)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 0
  %6989 = fadd fast float %6988, -1.000000e+00
  %6990 = fmul fast float %6989, %6869
  %6991 = fadd fast float %6990, 1.000000e+00
  %6992 = fmul fast float %6991, %6881
  br label %6993

; <label>:6993                                    ; preds = %6895, %6893
  %6994 = phi float [ %6992, %6895 ], [ %6881, %6893 ]
  %6995 = call float @dx.op.binary.f32(i32 36, float %6994, float %6994)  ; FMin(a,b)
  %6996 = call float @dx.op.binary.f32(i32 36, float %6994, float %6995)  ; FMin(a,b)
  %6997 = fcmp fast ogt float %6996, 0.000000e+00
  br i1 %6997, label %6998, label %6885, !dx.controlflow.hints !126

; <label>:6998                                    ; preds = %6993
  %6999 = fmul fast float %6994, %6803
  %7000 = fmul fast float %6994, %6804
  %7001 = fmul fast float %6994, %6805
  %7002 = fsub fast float %6787, %4491
  %7003 = fcmp fast ogt float %7002, 0.000000e+00
  %7004 = fsub fast float %199, %4491
  %7005 = fcmp fast ogt float %7004, 0.000000e+00
  %7006 = xor i1 %7005, %7003
  %7007 = fsub fast float %4491, %6787
  %7008 = fmul fast float %7007, 2.000000e+00
  %7009 = fadd fast float %7008, %6787
  %7010 = select i1 %7006, float %6787, float %7009
  %7011 = fsub fast float %7010, %199
  %7012 = call float @dx.op.dot3.f32(i32 55, float %6813, float %6814, float %7011, float %6813, float %6814, float %7011)  ; Dot3(ax,ay,az,bx,by,bz)
  %7013 = call float @dx.op.unary.f32(i32 25, float %7012)  ; Rsqrt(value)
  %7014 = fmul fast float %7013, %6813
  %7015 = fmul fast float %7013, %6814
  %7016 = fmul fast float %7013, %7011
  %7017 = fsub fast float %4491, %199
  %7018 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7017)  ; Dot3(ax,ay,az,bx,by,bz)
  %7019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7014, float %7015, float %7016)  ; Dot3(ax,ay,az,bx,by,bz)
  %7020 = fdiv fast float 1.000000e+00, %7019
  %7021 = fmul fast float %7020, %7018
  %7022 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7004, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = fcmp fast ogt float %7022, 0.000000e+00
  %7024 = fcmp fast olt float %7022, 0.000000e+00
  %7025 = zext i1 %7023 to i32
  %7026 = zext i1 %7024 to i32
  %7027 = sub nsw i32 %7025, %7026
  %7028 = sitofp i32 %7027 to float
  %7029 = fsub fast float %7010, %4491
  %7030 = call float @dx.op.dot3.f32(i32 55, float %6813, float %6814, float %7029, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = fcmp fast ogt float %7030, 0.000000e+00
  %7032 = fcmp fast olt float %7030, 0.000000e+00
  %7033 = zext i1 %7031 to i32
  %7034 = zext i1 %7032 to i32
  %7035 = sub nsw i32 %7033, %7034
  %7036 = sitofp i32 %7035 to float
  %7037 = fcmp fast une float %7028, %7036
  br i1 %7037, label %7038, label %7048

; <label>:7038                                    ; preds = %6998
  %7039 = fmul fast float %7021, %7016
  %7040 = fmul fast float %7021, %7015
  %7041 = fmul fast float %7021, %7014
  %7042 = fmul fast float %7041, %7041
  %7043 = fmul fast float %7040, %7040
  %7044 = fadd fast float %7042, %7043
  %7045 = fmul fast float %7039, %7039
  %7046 = fadd fast float %7044, %7045
  %7047 = call float @dx.op.unary.f32(i32 24, float %7046)  ; Sqrt(value)
  br label %7060

; <label>:7048                                    ; preds = %6998
  %7049 = icmp slt i32 %7027, 0
  br i1 %7049, label %7050, label %7060

; <label>:7050                                    ; preds = %7048
  %7051 = fsub fast float %197, %6785
  %7052 = fsub fast float %198, %6786
  %7053 = fsub fast float %199, %7010
  %7054 = fmul fast float %7051, %7051
  %7055 = fmul fast float %7052, %7052
  %7056 = fadd fast float %7054, %7055
  %7057 = fmul fast float %7053, %7053
  %7058 = fadd fast float %7056, %7057
  %7059 = call float @dx.op.unary.f32(i32 24, float %7058)  ; Sqrt(value)
  br label %7060

; <label>:7060                                    ; preds = %7050, %7048, %7038
  %7061 = phi float [ %7047, %7038 ], [ %7059, %7050 ], [ 0.000000e+00, %7048 ]
  %7062 = and i1 %7005, %7003
  %7063 = fsub fast float -0.000000e+00, %7061
  %7064 = select i1 %7062, float -0.000000e+00, float %7063
  %7065 = fmul fast float %4492, 0x3FF7154760000000
  %7066 = fmul fast float %7065, %7064
  %7067 = fmul fast float %4493, 0x3FF7154760000000
  %7068 = fmul fast float %7067, %7064
  %7069 = fmul fast float %4494, 0x3FF7154760000000
  %7070 = fmul fast float %7069, %7064
  %7071 = call float @dx.op.unary.f32(i32 21, float %7066)  ; Exp(value)
  %7072 = call float @dx.op.unary.f32(i32 21, float %7068)  ; Exp(value)
  %7073 = call float @dx.op.unary.f32(i32 21, float %7070)  ; Exp(value)
  %7074 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7075 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7076 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7077 = fmul fast float %6999, %7074
  %7078 = fmul fast float %7000, %7075
  %7079 = fmul fast float %7001, %7076
  %7080 = fsub fast float %6819, %5283
  %7081 = fsub fast float %6820, %5282
  %7082 = fsub fast float %6821, %5281
  %7083 = call float @dx.op.dot3.f32(i32 55, float %7080, float %7081, float %7082, float %7080, float %7081, float %7082)  ; Dot3(ax,ay,az,bx,by,bz)
  %7084 = call float @dx.op.unary.f32(i32 25, float %7083)  ; Rsqrt(value)
  %7085 = fmul fast float %7084, %7080
  %7086 = fmul fast float %7084, %7081
  %7087 = fmul fast float %7084, %7082
  %7088 = call float @dx.op.dot3.f32(i32 55, float %6819, float %6820, float %6821, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = call float @dx.op.dot3.f32(i32 55, float %5280, float %5279, float %5278, float %7085, float %7086, float %7087)  ; Dot3(ax,ay,az,bx,by,bz)
  %7090 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7091 = fmul fast float %7090, %6826
  %7092 = fmul fast float %7090, %7090
  %7093 = fmul fast float %7092, %5311
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = fmul fast float %7091, %7094
  %7096 = bitcast float %6816 to i32
  %7097 = ashr i32 %7096, 1
  %7098 = sub nsw i32 1597463007, %7097
  %7099 = bitcast i32 %7098 to float
  %7100 = fmul fast float %7099, %6813
  %7101 = fmul fast float %7099, %6814
  %7102 = fmul fast float %7099, %6815
  %7103 = fsub fast float %7100, %5283
  %7104 = fsub fast float %7101, %5282
  %7105 = fsub fast float %7102, %5281
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7105, float %7103, float %7104, float %7105)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = call float @dx.op.unary.f32(i32 25, float %7106)  ; Rsqrt(value)
  %7108 = fmul fast float %7103, %7107
  %7109 = fmul fast float %7104, %7107
  %7110 = fmul fast float %7105, %7107
  %7111 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %7108, float %7109, float %7110)  ; Dot3(ax,ay,az,bx,by,bz)
  %7112 = fmul fast float %7111, %7111
  %7113 = call float @dx.op.unary.f32(i32 6, float %7088)  ; FAbs(value)
  %7114 = fsub fast float 1.000000e+00, %5293
  %7115 = call float @dx.op.binary.f32(i32 35, float %7114, float 0x3F847AE140000000)  ; FMax(a,b)
  %7116 = fmul fast float %7115, %7115
  %7117 = fmul fast float %7116, %7116
  %7118 = fsub fast float 1.000000e+00, %7117
  %7119 = fmul fast float %5298, %5298
  %7120 = fmul fast float %7119, %7118
  %7121 = fadd fast float %7120, %7117
  %7122 = bitcast float %7121 to i32
  %7123 = ashr i32 %7122, 1
  %7124 = add nsw i32 %7123, 532487669
  %7125 = bitcast i32 %7124 to float
  %7126 = fadd fast float %7125, %5298
  %7127 = fmul fast float %7117, %7112
  %7128 = fsub fast float 1.000000e+00, %7112
  %7129 = fadd fast float %7128, %7127
  %7130 = fmul fast float %7113, %7113
  %7131 = fmul fast float %7130, %7118
  %7132 = fadd fast float %7131, %7117
  %7133 = bitcast float %7132 to i32
  %7134 = ashr i32 %7133, 1
  %7135 = add nsw i32 %7134, 532487669
  %7136 = bitcast i32 %7135 to float
  %7137 = fadd fast float %7136, %7113
  %7138 = fmul fast float %7129, %7129
  %7139 = fmul fast float %7138, %7126
  %7140 = fmul fast float %7139, %7137
  %7141 = fdiv fast float 1.000000e+00, %7140
  %7142 = bitcast float %7117 to i32
  %7143 = sitofp i32 %7142 to float
  %7144 = fmul fast float %7143, 0x3FE7F73180000000
  %7145 = fadd fast float %7144, 0x41AFE27C40000000
  %7146 = fptosi float %7145 to i32
  %7147 = bitcast i32 %7146 to float
  %7148 = fmul fast float %6782, 0x3FD80E9D60000000
  %7149 = fmul fast float %7148, %7099
  %7150 = fadd fast float %7147, %7149
  %7151 = bitcast float %7150 to i32
  %7152 = sub nsw i32 2129859010, %7151
  %7153 = bitcast i32 %7152 to float
  %7154 = fmul fast float %7117, %7141
  %7155 = fmul fast float %7154, %7147
  %7156 = fmul fast float %7155, %7153
  %7157 = call float @dx.op.unary.f32(i32 6, float %7089)  ; FAbs(value)
  %7158 = fsub fast float 1.000000e+00, %7157
  %7159 = bitcast float %7158 to i32
  %7160 = sitofp i32 %7159 to float
  %7161 = fmul fast float %7160, 5.000000e+00
  %7162 = fadd fast float %7161, 0xC1EFBF8940000000
  %7163 = fptosi float %7162 to i32
  %7164 = bitcast i32 %7163 to float
  %7165 = fsub fast float 1.000000e+00, %5284
  %7166 = fsub fast float 1.000000e+00, %5285
  %7167 = fsub fast float 1.000000e+00, %5296
  %7168 = fmul fast float %7164, %7165
  %7169 = fmul fast float %7164, %7166
  %7170 = fmul fast float %7164, %7167
  %7171 = fadd fast float %7168, %5284
  %7172 = fadd fast float %7169, %5285
  %7173 = fadd fast float %7170, %5296
  br i1 %5427, label %7174, label %7197

; <label>:7174                                    ; preds = %7060
  %7175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %7157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7176 = extractvalue %dx.types.ResRet.f32 %7175, 0
  %7177 = extractvalue %dx.types.ResRet.f32 %7175, 1
  %7178 = extractvalue %dx.types.ResRet.f32 %7175, 2
  %7179 = fadd fast float %7176, -5.000000e-01
  %7180 = fadd fast float %7177, -5.000000e-01
  %7181 = fadd fast float %7178, -5.000000e-01
  %7182 = fmul fast float %5284, 4.000000e+00
  %7183 = fmul fast float %7182, %7165
  %7184 = fmul fast float %7183, %7179
  %7185 = fmul fast float %5285, 4.000000e+00
  %7186 = fmul fast float %7185, %7166
  %7187 = fmul fast float %7186, %7180
  %7188 = fmul fast float %5296, 4.000000e+00
  %7189 = fmul fast float %7188, %7167
  %7190 = fmul fast float %7189, %7181
  %7191 = fadd fast float %7184, %7171
  %7192 = fadd fast float %7187, %7172
  %7193 = fadd fast float %7190, %7173
  %7194 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7195 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  %7196 = call float @dx.op.unary.f32(i32 7, float %7193)  ; Saturate(value)
  br label %7197

; <label>:7197                                    ; preds = %7174, %7060
  %7198 = phi float [ %7194, %7174 ], [ %7171, %7060 ]
  %7199 = phi float [ %7195, %7174 ], [ %7172, %7060 ]
  %7200 = phi float [ %7196, %7174 ], [ %7173, %7060 ]
  %7201 = fmul fast float %7088, 9.843750e-01
  %7202 = fadd fast float %7201, 7.812500e-03
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7202, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 3
  %7206 = fmul fast float %7204, %5284
  %7207 = fmul fast float %7204, %5285
  %7208 = fmul fast float %7204, %5296
  %7209 = fadd fast float %7206, %7205
  %7210 = fadd fast float %7207, %7205
  %7211 = fadd fast float %7208, %7205
  br i1 %5427, label %7212, label %7235

; <label>:7212                                    ; preds = %7197
  %7213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4089, float %7088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7214 = extractvalue %dx.types.ResRet.f32 %7213, 0
  %7215 = extractvalue %dx.types.ResRet.f32 %7213, 1
  %7216 = extractvalue %dx.types.ResRet.f32 %7213, 2
  %7217 = fadd fast float %7214, -5.000000e-01
  %7218 = fadd fast float %7215, -5.000000e-01
  %7219 = fadd fast float %7216, -5.000000e-01
  %7220 = fmul fast float %5284, 4.000000e+00
  %7221 = fmul fast float %7220, %7165
  %7222 = fmul fast float %7221, %7217
  %7223 = fmul fast float %5285, 4.000000e+00
  %7224 = fmul fast float %7223, %7166
  %7225 = fmul fast float %7224, %7218
  %7226 = fmul fast float %5296, 4.000000e+00
  %7227 = fmul fast float %7226, %7167
  %7228 = fmul fast float %7227, %7219
  %7229 = fadd fast float %7222, %7209
  %7230 = fadd fast float %7225, %7210
  %7231 = fadd fast float %7228, %7211
  %7232 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7233 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7234 = call float @dx.op.unary.f32(i32 7, float %7231)  ; Saturate(value)
  br label %7235

; <label>:7235                                    ; preds = %7212, %7197
  %7236 = phi float [ %7232, %7212 ], [ %7209, %7197 ]
  %7237 = phi float [ %7233, %7212 ], [ %7210, %7197 ]
  %7238 = phi float [ %7234, %7212 ], [ %7211, %7197 ]
  %7239 = call float @dx.op.binary.f32(i32 35, float %7237, float %7238)  ; FMax(a,b)
  %7240 = call float @dx.op.binary.f32(i32 35, float %7236, float %7239)  ; FMax(a,b)
  %7241 = fsub fast float 1.000000e+00, %7240
  %7242 = fmul fast float %7198, %7156
  %7243 = fmul fast float %7199, %7156
  %7244 = fmul fast float %7200, %7156
  %7245 = fsub fast float 1.000000e+00, %7089
  %7246 = bitcast float %7245 to i32
  %7247 = sitofp i32 %7246 to float
  %7248 = fmul fast float %7247, 5.000000e+00
  %7249 = fadd fast float %7248, 0xC1EFBF8940000000
  %7250 = fptosi float %7249 to i32
  %7251 = bitcast i32 %7250 to float
  %7252 = fmul fast float %7251, %4090
  %7253 = fmul fast float %7241, %7252
  %7254 = fmul fast float %7253, %5530
  %7255 = fmul fast float %7253, %5531
  %7256 = fmul fast float %7253, %5532
  %7257 = fadd fast float %7254, %7242
  %7258 = fadd fast float %7255, %7243
  %7259 = fadd fast float %7256, %7244
  %7260 = fmul fast float %7077, %4086
  %7261 = fmul fast float %7260, %7095
  %7262 = fmul fast float %7261, %7241
  %7263 = fmul fast float %7078, %4086
  %7264 = fmul fast float %7263, %7095
  %7265 = fmul fast float %7264, %7241
  %7266 = fmul fast float %7079, %4086
  %7267 = fmul fast float %7266, %7095
  %7268 = fmul fast float %7267, %7241
  %7269 = fadd fast float %7262, %6756
  %7270 = fadd fast float %7265, %6757
  %7271 = fadd fast float %7268, %6758
  %7272 = fmul fast float %7261, %7257
  %7273 = fmul fast float %7264, %7258
  %7274 = fmul fast float %7267, %7259
  %7275 = fadd fast float %7272, %6753
  %7276 = fadd fast float %7273, %6754
  %7277 = fadd fast float %7274, %6755
  br label %6885

; <label>:7278                                    ; preds = %6885
  br label %7279

; <label>:7279                                    ; preds = %7278, %6719
  %7280 = phi float [ %6721, %6719 ], [ %6886, %7278 ]
  %7281 = phi float [ %6722, %6719 ], [ %6887, %7278 ]
  %7282 = phi float [ %6723, %6719 ], [ %6888, %7278 ]
  %7283 = phi float [ %6724, %6719 ], [ %6889, %7278 ]
  %7284 = phi float [ %6725, %6719 ], [ %6890, %7278 ]
  %7285 = phi float [ %6726, %6719 ], [ %6891, %7278 ]
  %7286 = add i32 %6720, 1
  %7287 = icmp ugt i32 %7286, %6716
  br i1 %7287, label %7288, label %6719

; <label>:7288                                    ; preds = %7279
  br label %7289

; <label>:7289                                    ; preds = %7288, %6669, %6659
  %7290 = phi float [ %6660, %6659 ], [ %6660, %6669 ], [ %7280, %7288 ]
  %7291 = phi float [ %6661, %6659 ], [ %6661, %6669 ], [ %7281, %7288 ]
  %7292 = phi float [ %6662, %6659 ], [ %6662, %6669 ], [ %7282, %7288 ]
  %7293 = phi float [ %6663, %6659 ], [ %6663, %6669 ], [ %7283, %7288 ]
  %7294 = phi float [ %6664, %6659 ], [ %6664, %6669 ], [ %7284, %7288 ]
  %7295 = phi float [ %6665, %6659 ], [ %6665, %6669 ], [ %7285, %7288 ]
  %7296 = fmul fast float %4086, %4086
  %7297 = fsub fast float 1.000000e+00, %7296
  %7298 = call float @dx.op.dot3.f32(i32 55, float %7297, float %7297, float %7297, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7299 = fsub fast float 1.000000e+00, %7298
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = fmul fast float %7301, %5546
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7305 = fsub fast float 1.000000e+00, %4094
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = fadd fast float %7295, %4092
  %7308 = fmul fast float %7307, %4094
  %7309 = fmul fast float %7306, %7304
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7312 = fmul fast float %7293, %5290
  %7313 = fmul fast float %7294, %5291
  %7314 = fmul fast float %7295, %5292
  %7315 = fcmp fast ogt float %101, %232
  %7316 = and i1 %7315, %4497
  %7317 = or i1 %4503, %7316
  %7318 = icmp eq i32 %4496, 2
  %7319 = fcmp fast ole float %101, %232
  %7320 = and i1 %7319, %7318
  %7321 = or i1 %7320, %7317
  br i1 %7316, label %7322, label %7579

; <label>:7322                                    ; preds = %7289
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 2
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7326 = fmul fast float %7324, %110
  %7327 = fmul fast float %7325, %111
  %7328 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7329 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7330 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7328, float %7329, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7334 = extractvalue %dx.types.ResRet.f32 %7330, 3
  %7335 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7328, float %7329, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  %7339 = extractvalue %dx.types.ResRet.f32 %7335, 3
  %7340 = call float @dx.op.binary.f32(i32 35, float %7332, float %7333)  ; FMax(a,b)
  %7341 = call float @dx.op.binary.f32(i32 35, float %7331, float %7340)  ; FMax(a,b)
  %7342 = call float @dx.op.binary.f32(i32 35, float %7341, float %7334)  ; FMax(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7337, float %7338)  ; FMin(a,b)
  %7344 = call float @dx.op.binary.f32(i32 36, float %7336, float %7343)  ; FMin(a,b)
  %7345 = call float @dx.op.binary.f32(i32 36, float %7344, float %7339)  ; FMin(a,b)
  %7346 = fmul fast float %7342, 2.550000e+02
  %7347 = fadd fast float %7346, 0x3F70101020000000
  %7348 = fptoui float %7347 to i32
  %7349 = fmul fast float %7345, 2.550000e+02
  %7350 = fadd fast float %7349, 0x3F70101020000000
  %7351 = fptoui float %7350 to i32
  %7352 = icmp ult i32 %7348, %7351
  br i1 %7352, label %7353, label %7521

; <label>:7353                                    ; preds = %7322
  %7354 = fcmp fast ogt float %100, 9.843750e-01
  %7355 = fadd fast float %101, -4.000000e+00
  %7356 = select i1 %7354, float -4.000000e+00, float %7355
  %7357 = call float @dx.op.binary.f32(i32 35, float %7356, float 0.000000e+00)  ; FMax(a,b)
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7360 = fadd fast float %7359, %7357
  %7361 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7362 = fmul fast float %7360, %7361
  %7363 = call float @dx.op.unary.f32(i32 23, float %7362)  ; Log(value)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7365 = fmul fast float %7364, %7363
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7368 = fmul fast float %7365, %7367
  %7369 = call float @dx.op.unary.f32(i32 7, float %7368)  ; Saturate(value)
  %7370 = uitofp i32 %7348 to float
  %7371 = uitofp i32 %7351 to float
  %7372 = fadd fast float %7370, 5.000000e-01
  %7373 = fadd fast float %7371, 5.000000e-01
  %7374 = fmul fast float %7367, %7372
  %7375 = fmul fast float %7367, %7373
  %7376 = fadd fast float %7374, 0x3F0FFB4800000000
  %7377 = fadd fast float %7375, 0xBF0FFB4800000000
  %7378 = call float @dx.op.binary.f32(i32 35, float %7369, float %7376)  ; FMax(a,b)
  %7379 = call float @dx.op.binary.f32(i32 36, float %7378, float %7377)  ; FMin(a,b)
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7383 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7384 = fmul fast float %7381, %7379
  %7385 = fadd fast float %7383, %7384
  %7386 = fadd fast float %7383, %7382
  %7387 = fsub fast float %7381, %7382
  %7388 = fadd fast float %7387, %7383
  %7389 = call float @dx.op.binary.f32(i32 35, float %7385, float %7386)  ; FMax(a,b)
  %7390 = call float @dx.op.binary.f32(i32 36, float %7389, float %7388)  ; FMin(a,b)
  %7391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7328, float %7329, float %7390, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7392 = extractvalue %dx.types.ResRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.ResRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.ResRet.f32 %7391, 2
  %7395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.i32 %7395, 0
  %7397 = extractvalue %dx.types.CBufRet.i32 %7395, 1
  %7398 = uitofp i32 %7396 to float
  %7399 = uitofp i32 %7397 to float
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = fmul fast float %7398, %7328
  %7404 = fmul fast float %7399, %7329
  %7405 = fadd fast float %7403, -5.000000e-01
  %7406 = fadd fast float %7404, -5.000000e-01
  %7407 = call float @dx.op.unary.f32(i32 22, float %7405)  ; Frc(value)
  %7408 = call float @dx.op.unary.f32(i32 22, float %7406)  ; Frc(value)
  %7409 = fmul fast float %7407, %7407
  %7410 = fmul fast float %7409, %7407
  %7411 = fsub fast float 3.000000e+00, %7407
  %7412 = fmul fast float %7409, %7411
  %7413 = fmul fast float %7407, 3.000000e+00
  %7414 = fmul fast float %7410, 3.000000e+00
  %7415 = fmul fast float %7409, 6.000000e+00
  %7416 = fsub fast float %7414, %7415
  %7417 = fadd fast float %7416, 4.000000e+00
  %7418 = fmul fast float %7417, 0x3FC5555560000000
  %7419 = fmul fast float %7410, -3.000000e+00
  %7420 = fadd fast float %7409, %7407
  %7421 = fmul fast float %7420, 3.000000e+00
  %7422 = fadd fast float %7419, 1.000000e+00
  %7423 = fadd fast float %7422, %7421
  %7424 = fmul fast float %7410, 0x3FC5555560000000
  %7425 = fmul fast float %7408, %7408
  %7426 = fmul fast float %7425, %7408
  %7427 = fsub fast float 3.000000e+00, %7408
  %7428 = fmul fast float %7425, %7427
  %7429 = fmul fast float %7408, 3.000000e+00
  %7430 = fmul fast float %7426, 3.000000e+00
  %7431 = fmul fast float %7425, 6.000000e+00
  %7432 = fsub fast float %7430, %7431
  %7433 = fadd fast float %7432, 4.000000e+00
  %7434 = fmul fast float %7433, 0x3FC5555560000000
  %7435 = fmul fast float %7426, -3.000000e+00
  %7436 = fadd fast float %7425, %7408
  %7437 = fmul fast float %7436, 3.000000e+00
  %7438 = fadd fast float %7435, 1.000000e+00
  %7439 = fadd fast float %7438, %7437
  %7440 = fmul fast float %7426, 0x3FC5555560000000
  %7441 = fadd fast float %7407, 1.000000e+00
  %7442 = fsub fast float 1.000000e+00, %7413
  %7443 = fadd fast float %7442, %7412
  %7444 = fadd fast float %7443, %7417
  %7445 = fmul fast float %7444, 0x3FC5555560000000
  %7446 = fdiv fast float %7418, %7445
  %7447 = fsub fast float %7441, %7446
  %7448 = fsub fast float 1.000000e+00, %7407
  %7449 = fadd fast float %7423, %7410
  %7450 = fmul fast float %7449, 0x3FC5555560000000
  %7451 = fdiv fast float %7424, %7450
  %7452 = fadd fast float %7448, %7451
  %7453 = fadd fast float %7408, 1.000000e+00
  %7454 = fsub fast float 1.000000e+00, %7429
  %7455 = fadd fast float %7454, %7428
  %7456 = fadd fast float %7455, %7433
  %7457 = fmul fast float %7456, 0x3FC5555560000000
  %7458 = fdiv fast float %7434, %7457
  %7459 = fsub fast float %7453, %7458
  %7460 = fsub fast float 1.000000e+00, %7408
  %7461 = fadd fast float %7439, %7426
  %7462 = fmul fast float %7461, 0x3FC5555560000000
  %7463 = fdiv fast float %7440, %7462
  %7464 = fadd fast float %7463, %7460
  %7465 = fmul fast float %7447, %7401
  %7466 = fsub fast float %7328, %7465
  %7467 = fmul fast float %7452, %7401
  %7468 = fadd fast float %7467, %7328
  %7469 = fmul fast float %7464, %7402
  %7470 = fadd fast float %7469, %7329
  %7471 = fmul fast float %7459, %7402
  %7472 = fsub fast float %7329, %7471
  %7473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7466, float %7472, float %7390, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7474 = extractvalue %dx.types.ResRet.f32 %7473, 0
  %7475 = extractvalue %dx.types.ResRet.f32 %7473, 1
  %7476 = extractvalue %dx.types.ResRet.f32 %7473, 2
  %7477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7468, float %7472, float %7390, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 0
  %7479 = extractvalue %dx.types.ResRet.f32 %7477, 1
  %7480 = extractvalue %dx.types.ResRet.f32 %7477, 2
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7466, float %7470, float %7390, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.ResRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.ResRet.f32 %7481, 2
  %7485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7468, float %7470, float %7390, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7486 = extractvalue %dx.types.ResRet.f32 %7485, 0
  %7487 = extractvalue %dx.types.ResRet.f32 %7485, 1
  %7488 = extractvalue %dx.types.ResRet.f32 %7485, 2
  %7489 = fsub fast float %7482, %7474
  %7490 = fsub fast float %7483, %7475
  %7491 = fsub fast float %7484, %7476
  %7492 = fmul fast float %7489, %7462
  %7493 = fmul fast float %7490, %7462
  %7494 = fmul fast float %7491, %7462
  %7495 = fadd fast float %7492, %7474
  %7496 = fadd fast float %7493, %7475
  %7497 = fadd fast float %7494, %7476
  %7498 = fsub fast float %7486, %7478
  %7499 = fsub fast float %7487, %7479
  %7500 = fsub fast float %7488, %7480
  %7501 = fmul fast float %7498, %7462
  %7502 = fmul fast float %7499, %7462
  %7503 = fmul fast float %7500, %7462
  %7504 = fsub fast float %7478, %7495
  %7505 = fadd fast float %7504, %7501
  %7506 = fsub fast float %7479, %7496
  %7507 = fadd fast float %7506, %7502
  %7508 = fsub fast float %7480, %7497
  %7509 = fadd fast float %7508, %7503
  %7510 = fmul fast float %7505, %7450
  %7511 = fmul fast float %7507, %7450
  %7512 = fmul fast float %7509, %7450
  %7513 = fadd fast float %7510, %7495
  %7514 = fadd fast float %7511, %7496
  %7515 = fadd fast float %7512, %7497
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7518 = fmul fast float %7513, %7517
  %7519 = fmul fast float %7514, %7517
  %7520 = fmul fast float %7515, %7517
  br label %7521

; <label>:7521                                    ; preds = %7353, %7322
  %7522 = phi float [ %7392, %7353 ], [ 1.000000e+00, %7322 ]
  %7523 = phi float [ %7393, %7353 ], [ 1.000000e+00, %7322 ]
  %7524 = phi float [ %7394, %7353 ], [ 1.000000e+00, %7322 ]
  %7525 = phi float [ %7518, %7353 ], [ 0.000000e+00, %7322 ]
  %7526 = phi float [ %7519, %7353 ], [ 0.000000e+00, %7322 ]
  %7527 = phi float [ %7520, %7353 ], [ 0.000000e+00, %7322 ]
  %7528 = fmul fast float %7525, %7299
  %7529 = fmul fast float %7526, %7299
  %7530 = fmul fast float %7527, %7299
  %7531 = call float @dx.op.dot3.f32(i32 55, float %7522, float %7523, float %7524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7532 = call float @dx.op.dot3.f32(i32 55, float %7528, float %7529, float %7530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7533 = select i1 %269, float %7531, float %7522
  %7534 = select i1 %269, float %7531, float %7523
  %7535 = select i1 %269, float 1.000000e+00, float %7524
  %7536 = select i1 %269, float %7532, float %7528
  %7537 = select i1 %269, float 0.000000e+00, float %7529
  %7538 = select i1 %269, float 0.000000e+00, float %7530
  %7539 = fmul fast float %7533, %7312
  %7540 = fmul fast float %7534, %7313
  %7541 = fmul fast float %7535, %7314
  %7542 = fadd fast float %7539, %7536
  %7543 = fadd fast float %7540, %7537
  %7544 = fadd fast float %7538, %7541
  %7545 = fmul fast float %7533, %7290
  %7546 = fmul fast float %7534, %7291
  %7547 = fmul fast float %7535, %7292
  %7548 = fmul fast float %146, %7324
  %7549 = fmul fast float %148, %7325
  %7550 = fsub fast float 1.000000e+00, %7548
  %7551 = fsub fast float 1.000000e+00, %7549
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.CBufRet.f32 %7552, 1
  %7555 = extractvalue %dx.types.CBufRet.f32 %7552, 2
  %7556 = fmul fast float %7550, %7553
  %7557 = fmul fast float %7550, %7554
  %7558 = fmul fast float %7550, %7555
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 0
  %7561 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7562 = extractvalue %dx.types.CBufRet.f32 %7559, 2
  %7563 = fmul fast float %7551, %7560
  %7564 = fmul fast float %7551, %7561
  %7565 = fmul fast float %7551, %7562
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.CBufRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.CBufRet.f32 %7566, 2
  %7570 = fadd fast float %7563, %7567
  %7571 = fadd fast float %7570, %7556
  %7572 = fadd fast float %7564, %7568
  %7573 = fadd fast float %7572, %7557
  %7574 = fadd fast float %7565, %7569
  %7575 = fadd fast float %7574, %7558
  %7576 = fmul fast float %7571, %232
  %7577 = fmul fast float %7573, %232
  %7578 = fmul fast float %7575, %232
  br label %7579

; <label>:7579                                    ; preds = %7521, %7289
  %7580 = phi float [ %7576, %7521 ], [ %197, %7289 ]
  %7581 = phi float [ %7577, %7521 ], [ %198, %7289 ]
  %7582 = phi float [ %7578, %7521 ], [ %199, %7289 ]
  %7583 = phi float [ %232, %7521 ], [ %101, %7289 ]
  %7584 = phi float [ %7542, %7521 ], [ %7312, %7289 ]
  %7585 = phi float [ %7543, %7521 ], [ %7313, %7289 ]
  %7586 = phi float [ %7544, %7521 ], [ %7314, %7289 ]
  %7587 = phi float [ %7545, %7521 ], [ %7290, %7289 ]
  %7588 = phi float [ %7546, %7521 ], [ %7291, %7289 ]
  %7589 = phi float [ %7547, %7521 ], [ %7292, %7289 ]
  %7590 = phi float [ %7522, %7521 ], [ 1.000000e+00, %7289 ]
  br i1 %7321, label %8745, label %7591

; <label>:7591                                    ; preds = %7579
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7596 = extractvalue %dx.types.CBufRet.f32 %7592, 3
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7601 = extractvalue %dx.types.CBufRet.f32 %7597, 3
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7605 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7606 = extractvalue %dx.types.CBufRet.f32 %7602, 3
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7609 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7610 = extractvalue %dx.types.CBufRet.f32 %7607, 2
  %7611 = extractvalue %dx.types.CBufRet.f32 %7607, 3
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 3
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 3
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7618 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7619 = fcmp fast olt float %7618, -5.000000e-01
  %7620 = call float @dx.op.dot3.f32(i32 55, float %7580, float %7581, float %7582, float %7580, float %7581, float %7582)  ; Dot3(ax,ay,az,bx,by,bz)
  %7621 = call float @dx.op.unary.f32(i32 25, float %7620)  ; Rsqrt(value)
  %7622 = fmul fast float %7621, %7620
  %7623 = fmul fast float %7621, %7580
  %7624 = fmul fast float %7621, %7581
  %7625 = fmul fast float %7621, %7582
  %7626 = fadd fast float %7622, %7596
  %7627 = call float @dx.op.dot3.f32(i32 55, float %7623, float %7624, float %7625, float %7593, float %7594, float %7595)  ; Dot3(ax,ay,az,bx,by,bz)
  %7628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.i32 %7628, 1
  %7630 = and i32 %7629, 1
  %7631 = icmp ne i32 %7630, 0
  %7632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.f32 %7632, 2
  %7634 = fcmp fast ogt float %7633, 0.000000e+00
  %7635 = and i1 %7631, %7634
  br i1 %7635, label %7636, label %8042, !dx.controlflow.hints !127

; <label>:7636                                    ; preds = %7591
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 3
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 2
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 2
  %7643 = fsub fast float %7640, %7642
  %7644 = and i32 %7629, 2
  %7645 = extractvalue %dx.types.CBufRet.i32 %7628, 0
  %7646 = call i32 @dx.op.binary.i32(i32 40, i32 %7645, i32 3)  ; UMin(a,b)
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.CBufRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.CBufRet.f32 %7641, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7652 = fsub fast float %7648, %7650
  %7653 = fsub fast float %7649, %7651
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 0
  %7656 = fcmp fast ogt float %7655, 0.000000e+00
  %7657 = fsub fast float -0.000000e+00, %7652
  %7658 = fsub fast float -0.000000e+00, %7653
  %7659 = call float @dx.op.dot2.f32(i32 54, float %7623, float %7624, float %7623, float %7624)  ; Dot2(ax,ay,bx,by)
  %7660 = call float @dx.op.dot2.f32(i32 54, float %7623, float %7624, float %7657, float %7658)  ; Dot2(ax,ay,bx,by)
  %7661 = fmul fast float %7660, 2.000000e+00
  %7662 = call float @dx.op.dot2.f32(i32 54, float %7657, float %7658, float %7657, float %7658)  ; Dot2(ax,ay,bx,by)
  %7663 = fmul fast float %7655, %7655
  %7664 = fsub fast float %7662, %7663
  %7665 = fmul fast float %7661, %7661
  %7666 = fmul fast float %7659, 4.000000e+00
  %7667 = fmul fast float %7666, %7664
  %7668 = fsub fast float %7665, %7667
  %7669 = fcmp fast ogt float %7668, 0.000000e+00
  br i1 %7669, label %7670, label %7685

; <label>:7670                                    ; preds = %7636
  %7671 = fcmp fast ogt float %7661, 0.000000e+00
  %7672 = call float @dx.op.unary.f32(i32 24, float %7668)  ; Sqrt(value)
  %7673 = fsub fast float -0.000000e+00, %7672
  %7674 = select i1 %7671, float %7672, float %7673
  %7675 = fadd fast float %7674, %7661
  %7676 = fmul float %7675, -5.000000e-01
  %7677 = fdiv fast float %7676, %7659
  %7678 = call float @dx.op.binary.f32(i32 35, float %7677, float 0.000000e+00)  ; FMax(a,b)
  %7679 = call float @dx.op.binary.f32(i32 36, float %7622, float %7678)  ; FMin(a,b)
  %7680 = fdiv fast float %7664, %7676
  %7681 = call float @dx.op.binary.f32(i32 35, float %7680, float 0.000000e+00)  ; FMax(a,b)
  %7682 = call float @dx.op.binary.f32(i32 36, float %7622, float %7681)  ; FMin(a,b)
  %7683 = call float @dx.op.binary.f32(i32 36, float %7679, float %7682)  ; FMin(a,b)
  %7684 = call float @dx.op.binary.f32(i32 35, float %7679, float %7682)  ; FMax(a,b)
  br label %7685

; <label>:7685                                    ; preds = %7670, %7636
  %7686 = phi float [ %7684, %7670 ], [ -1.000000e+00, %7636 ]
  %7687 = phi float [ %7683, %7670 ], [ -1.000000e+00, %7636 ]
  %7688 = phi i1 [ true, %7670 ], [ false, %7636 ]
  %7689 = and i1 %7656, %7688
  br i1 %7689, label %7690, label %7692

; <label>:7690                                    ; preds = %7685
  %7691 = fcmp fast oeq float %7687, %7686
  br i1 %7691, label %7995, label %7693

; <label>:7692                                    ; preds = %7685
  br i1 %7656, label %7995, label %7693

; <label>:7693                                    ; preds = %7692, %7690
  %7694 = phi float [ %7622, %7692 ], [ %7686, %7690 ]
  %7695 = phi float [ 0.000000e+00, %7692 ], [ %7687, %7690 ]
  %7696 = icmp ne i32 %7644, 0
  %7697 = fmul fast float %7694, %7625
  %7698 = fadd fast float %7697, %7638
  %7699 = fmul fast float %7698, %7694
  %7700 = select i1 %7696, float 0.000000e+00, float %7699
  %7701 = fcmp fast oeq float %7625, 0.000000e+00
  %7702 = fdiv fast float %7643, %7625
  %7703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7702)  ; FMax(a,b)
  %7704 = select i1 %7701, float %7694, float %7703
  %7705 = call float @dx.op.binary.f32(i32 36, float %7694, float %7704)  ; FMin(a,b)
  %7706 = fcmp fast ogt float %7625, 0.000000e+00
  %7707 = fcmp fast olt float %7643, 0.000000e+00
  br i1 %7706, label %7708, label %7765

; <label>:7708                                    ; preds = %7693
  %7709 = icmp eq i32 %7644, 0
  br i1 %7707, label %7710, label %7754

; <label>:7710                                    ; preds = %7708
  %7711 = select i1 %7709, float %7694, float 0.000000e+00
  %7712 = fsub fast float -0.000000e+00, %7711
  %7713 = call float @dx.op.unary.f32(i32 6, float %7712)  ; FAbs(value)
  %7714 = fmul fast float %7711, %7625
  %7715 = fadd fast float %7714, %7638
  %7716 = fmul fast float %7713, %7715
  %7717 = fsub fast float %7700, %7716
  %7718 = fsub fast float %7694, %7713
  %7719 = select i1 %7709, float %7718, float 0.000000e+00
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 0
  %7722 = extractvalue %dx.types.CBufRet.f32 %7720, 1
  %7723 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 0
  %7726 = extractvalue %dx.types.CBufRet.f32 %7724, 1
  %7727 = extractvalue %dx.types.CBufRet.f32 %7724, 2
  %7728 = extractvalue %dx.types.CBufRet.f32 %7724, 3
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 3
  %7731 = call float @dx.op.binary.f32(i32 36, float %7717, float %7730)  ; FMin(a,b)
  %7732 = fmul fast float %7728, %7719
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = fsub fast float %7725, %7721
  %7735 = fsub fast float %7726, %7722
  %7736 = fsub fast float %7727, %7723
  %7737 = fmul fast float %7733, %7734
  %7738 = fmul fast float %7733, %7735
  %7739 = fmul fast float %7733, %7736
  %7740 = fadd fast float %7737, %7721
  %7741 = fadd fast float %7738, %7722
  %7742 = fadd fast float %7739, %7723
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7746 = fadd fast float %7745, %7744
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7749 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7750 = fadd fast float %7749, %7748
  %7751 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  %7752 = fmul fast float %7747, %7731
  %7753 = fmul fast float %7752, %7751
  br label %7995

; <label>:7754                                    ; preds = %7708
  br i1 %7709, label %7755, label %7776

; <label>:7755                                    ; preds = %7754
  %7756 = call float @dx.op.binary.f32(i32 36, float %7705, float %7695)  ; FMin(a,b)
  %7757 = fsub fast float %7705, %7756
  %7758 = fsub fast float %7757, %7694
  %7759 = call float @dx.op.unary.f32(i32 6, float %7758)  ; FAbs(value)
  %7760 = fadd fast float %7757, %7694
  %7761 = fmul fast float %7760, %7625
  %7762 = fadd fast float %7761, %7638
  %7763 = fmul fast float %7762, %7759
  %7764 = fsub fast float %7700, %7763
  br label %7776

; <label>:7765                                    ; preds = %7693
  br i1 %7707, label %7766, label %7776

; <label>:7766                                    ; preds = %7765
  %7767 = call float @dx.op.binary.f32(i32 35, float %7695, float %7705)  ; FMax(a,b)
  %7768 = icmp eq i32 %7644, 0
  %7769 = select i1 %7768, float %7705, float 0.000000e+00
  %7770 = fsub fast float -0.000000e+00, %7769
  %7771 = call float @dx.op.unary.f32(i32 6, float %7770)  ; FAbs(value)
  %7772 = fmul fast float %7769, %7625
  %7773 = fadd fast float %7772, %7638
  %7774 = fmul fast float %7771, %7773
  %7775 = fsub fast float %7700, %7774
  br label %7776

; <label>:7776                                    ; preds = %7766, %7765, %7755, %7754
  %7777 = phi float [ %7695, %7754 ], [ %7695, %7755 ], [ %7767, %7766 ], [ %7695, %7765 ]
  %7778 = phi float [ 0.000000e+00, %7754 ], [ %7759, %7755 ], [ %7771, %7766 ], [ 0.000000e+00, %7765 ]
  %7779 = phi float [ %7700, %7754 ], [ %7764, %7755 ], [ %7775, %7766 ], [ %7700, %7765 ]
  %7780 = phi float [ %7705, %7754 ], [ %7705, %7755 ], [ %7694, %7766 ], [ %7694, %7765 ]
  %7781 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7781, align 4, !tbaa !128, !noalias !130
  %7782 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7782, align 4, !tbaa !128, !noalias !130
  %7783 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7783, align 4, !tbaa !128, !noalias !130
  %7784 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7784, align 4, !tbaa !128, !noalias !130
  %7785 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7785, align 4, !tbaa !128, !noalias !130
  %7786 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7786, align 4, !tbaa !128, !noalias !130
  %7787 = icmp sgt i32 %7646, 0
  br i1 %7787, label %7788, label %7849

; <label>:7788                                    ; preds = %7776
  br label %7789

; <label>:7789                                    ; preds = %7838, %7788
  %7790 = phi i32 [ %7839, %7838 ], [ 0, %7788 ]
  %7791 = phi i32 [ %7840, %7838 ], [ 0, %7788 ]
  %7792 = add nuw i32 %7791, 171
  %7793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7792)  ; CBufferLoadLegacy(handle,regIndex)
  %7794 = extractvalue %dx.types.CBufRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.CBufRet.f32 %7793, 1
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7799 = fsub fast float %7794, %7797
  %7800 = fsub fast float %7795, %7798
  %7801 = extractvalue %dx.types.CBufRet.f32 %7793, 2
  %7802 = fsub fast float -0.000000e+00, %7799
  %7803 = fsub fast float -0.000000e+00, %7800
  %7804 = call float @dx.op.dot2.f32(i32 54, float %7623, float %7624, float %7802, float %7803)  ; Dot2(ax,ay,bx,by)
  %7805 = fmul fast float %7804, 2.000000e+00
  %7806 = call float @dx.op.dot2.f32(i32 54, float %7802, float %7803, float %7802, float %7803)  ; Dot2(ax,ay,bx,by)
  %7807 = fmul fast float %7801, %7801
  %7808 = fsub fast float %7806, %7807
  %7809 = fmul fast float %7805, %7805
  %7810 = fmul fast float %7666, %7808
  %7811 = fsub fast float %7809, %7810
  %7812 = fcmp fast ogt float %7811, 0.000000e+00
  br i1 %7812, label %7813, label %7828

; <label>:7813                                    ; preds = %7789
  %7814 = fcmp fast ogt float %7805, 0.000000e+00
  %7815 = call float @dx.op.unary.f32(i32 24, float %7811)  ; Sqrt(value)
  %7816 = fsub fast float -0.000000e+00, %7815
  %7817 = select i1 %7814, float %7815, float %7816
  %7818 = fadd fast float %7817, %7805
  %7819 = fmul float %7818, -5.000000e-01
  %7820 = fdiv fast float %7819, %7659
  %7821 = call float @dx.op.binary.f32(i32 35, float %7820, float 0.000000e+00)  ; FMax(a,b)
  %7822 = call float @dx.op.binary.f32(i32 36, float %7694, float %7821)  ; FMin(a,b)
  %7823 = fdiv fast float %7808, %7819
  %7824 = call float @dx.op.binary.f32(i32 35, float %7823, float 0.000000e+00)  ; FMax(a,b)
  %7825 = call float @dx.op.binary.f32(i32 36, float %7694, float %7824)  ; FMin(a,b)
  %7826 = call float @dx.op.binary.f32(i32 36, float %7822, float %7825)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 35, float %7822, float %7825)  ; FMax(a,b)
  br label %7828

; <label>:7828                                    ; preds = %7813, %7789
  %7829 = phi float [ %7827, %7813 ], [ -1.000000e+00, %7789 ]
  %7830 = phi float [ %7826, %7813 ], [ -1.000000e+00, %7789 ]
  %7831 = phi i1 [ true, %7813 ], [ false, %7789 ]
  br i1 %7831, label %7832, label %7838

; <label>:7832                                    ; preds = %7828
  %7833 = call float @dx.op.binary.f32(i32 35, float %7777, float %7830)  ; FMax(a,b)
  %7834 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7791
  store float %7833, float* %7834, align 4, !tbaa !128, !noalias !130
  %7835 = call float @dx.op.binary.f32(i32 35, float %7777, float %7829)  ; FMax(a,b)
  %7836 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7791
  store float %7835, float* %7836, align 4, !tbaa !128, !noalias !130
  %7837 = add nsw i32 %7790, 1
  br label %7838

; <label>:7838                                    ; preds = %7832, %7828
  %7839 = phi i32 [ %7837, %7832 ], [ %7790, %7828 ]
  %7840 = add nuw nsw i32 %7791, 1
  %7841 = icmp eq i32 %7840, %7646
  br i1 %7841, label %7842, label %7789

; <label>:7842                                    ; preds = %7838
  %7843 = load float, float* %7783, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7844 = load float, float* %7782, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %7845 = load float, float* %7781, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %7846 = load float, float* %7786, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7847 = load float, float* %7785, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %7848 = load float, float* %7784, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %7849

; <label>:7849                                    ; preds = %7842, %7776
  %7850 = phi float [ -1.000000e+00, %7776 ], [ %7848, %7842 ]
  %7851 = phi float [ -1.000000e+00, %7776 ], [ %7847, %7842 ]
  %7852 = phi float [ -1.000000e+00, %7776 ], [ %7846, %7842 ]
  %7853 = phi float [ -1.000000e+00, %7776 ], [ %7845, %7842 ]
  %7854 = phi float [ -1.000000e+00, %7776 ], [ %7844, %7842 ]
  %7855 = phi float [ -1.000000e+00, %7776 ], [ %7843, %7842 ]
  %7856 = phi i32 [ 0, %7776 ], [ %7839, %7842 ]
  %7857 = call float @dx.op.binary.f32(i32 36, float %7854, float %7855)  ; FMin(a,b)
  %7858 = call float @dx.op.binary.f32(i32 36, float %7853, float %7857)  ; FMin(a,b)
  %7859 = call float @dx.op.binary.f32(i32 35, float %7853, float %7854)  ; FMax(a,b)
  %7860 = call float @dx.op.binary.f32(i32 36, float %7859, float %7855)  ; FMin(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7853, float %7854)  ; FMin(a,b)
  %7862 = call float @dx.op.binary.f32(i32 35, float %7861, float %7860)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 35, float %7854, float %7855)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 35, float %7853, float %7863)  ; FMax(a,b)
  store float %7858, float* %7781, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %7862, float* %7782, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %7864, float* %7783, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %7865 = call float @dx.op.binary.f32(i32 36, float %7851, float %7852)  ; FMin(a,b)
  %7866 = call float @dx.op.binary.f32(i32 36, float %7850, float %7865)  ; FMin(a,b)
  %7867 = call float @dx.op.binary.f32(i32 35, float %7850, float %7851)  ; FMax(a,b)
  %7868 = call float @dx.op.binary.f32(i32 36, float %7867, float %7852)  ; FMin(a,b)
  %7869 = call float @dx.op.binary.f32(i32 36, float %7850, float %7851)  ; FMin(a,b)
  %7870 = call float @dx.op.binary.f32(i32 35, float %7869, float %7868)  ; FMax(a,b)
  %7871 = call float @dx.op.binary.f32(i32 35, float %7851, float %7852)  ; FMax(a,b)
  %7872 = call float @dx.op.binary.f32(i32 35, float %7850, float %7871)  ; FMax(a,b)
  store float %7866, float* %7784, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %7870, float* %7785, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %7872, float* %7786, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %7873 = sub nsw i32 3, %7856
  %7874 = icmp sgt i32 %7873, 2
  br i1 %7874, label %7875, label %7913

; <label>:7875                                    ; preds = %7849
  %7876 = icmp eq i32 %7644, 0
  %7877 = fsub fast float %7694, %7778
  %7878 = select i1 %7876, float %7877, float %7778
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.CBufRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.CBufRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.CBufRet.f32 %7883, 2
  %7887 = extractvalue %dx.types.CBufRet.f32 %7883, 3
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 3
  %7890 = call float @dx.op.binary.f32(i32 36, float %7779, float %7889)  ; FMin(a,b)
  %7891 = fmul fast float %7887, %7878
  %7892 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7893 = fsub fast float %7884, %7880
  %7894 = fsub fast float %7885, %7881
  %7895 = fsub fast float %7886, %7882
  %7896 = fmul fast float %7892, %7893
  %7897 = fmul fast float %7892, %7894
  %7898 = fmul fast float %7892, %7895
  %7899 = fadd fast float %7896, %7880
  %7900 = fadd fast float %7897, %7881
  %7901 = fadd fast float %7898, %7882
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7902, 1
  %7905 = fadd fast float %7904, %7903
  %7906 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7902, 2
  %7908 = extractvalue %dx.types.CBufRet.f32 %7902, 3
  %7909 = fadd fast float %7908, %7907
  %7910 = call float @dx.op.unary.f32(i32 7, float %7909)  ; Saturate(value)
  %7911 = fmul fast float %7906, %7890
  %7912 = fmul fast float %7911, %7910
  br label %7995

; <label>:7913                                    ; preds = %7849
  %7914 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7873
  %7915 = load float, float* %7914, align 4, !tbaa !128, !noalias !130
  %7916 = fcmp fast olt float %7915, %7780
  %7917 = icmp sgt i32 %7856, 0
  %7918 = and i1 %7917, %7916
  br i1 %7918, label %7919, label %7956

; <label>:7919                                    ; preds = %7913
  br label %7920

; <label>:7920                                    ; preds = %7949, %7919
  %7921 = phi float [ %7950, %7949 ], [ %7778, %7919 ]
  %7922 = phi float [ %7951, %7949 ], [ %7779, %7919 ]
  %7923 = phi float [ %7931, %7949 ], [ %7915, %7919 ]
  %7924 = phi i32 [ %7928, %7949 ], [ %7873, %7919 ]
  %7925 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7924
  %7926 = load float, float* %7925, align 4, !tbaa !128, !noalias !130
  %7927 = icmp slt i32 %7924, 2
  %7928 = add nsw i32 %7924, 1
  %7929 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7928
  %7930 = load float, float* %7929, align 4, !tbaa !128, !noalias !130
  %7931 = select i1 %7927, float %7930, float %7694
  %7932 = call float @dx.op.binary.f32(i32 36, float %7931, float %7926)  ; FMin(a,b)
  %7933 = call float @dx.op.binary.f32(i32 36, float %7780, float %7932)  ; FMin(a,b)
  %7934 = icmp eq i32 %7644, 0
  %7935 = fadd fast float %7933, %7923
  %7936 = fmul fast float %7935, %7625
  %7937 = fadd fast float %7936, %7638
  br i1 %7934, label %7943, label %7938

; <label>:7938                                    ; preds = %7920
  %7939 = fsub fast float %7933, %7923
  %7940 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7939)  ; FMax(a,b)
  %7941 = fmul fast float %7940, %7937
  %7942 = fadd fast float %7941, %7922
  br label %7949

; <label>:7943                                    ; preds = %7920
  %7944 = fsub fast float %7923, %7933
  %7945 = call float @dx.op.unary.f32(i32 6, float %7944)  ; FAbs(value)
  %7946 = fadd fast float %7945, %7921
  %7947 = fmul fast float %7945, %7937
  %7948 = fsub fast float %7922, %7947
  br label %7949

; <label>:7949                                    ; preds = %7943, %7938
  %7950 = phi float [ %7940, %7938 ], [ %7946, %7943 ]
  %7951 = phi float [ %7942, %7938 ], [ %7948, %7943 ]
  %7952 = fcmp fast olt float %7931, %7780
  %7953 = icmp slt i32 %7928, 3
  %7954 = and i1 %7953, %7952
  br i1 %7954, label %7920, label %7955

; <label>:7955                                    ; preds = %7949
  br label %7956

; <label>:7956                                    ; preds = %7955, %7913
  %7957 = phi float [ %7778, %7913 ], [ %7950, %7955 ]
  %7958 = phi float [ %7779, %7913 ], [ %7951, %7955 ]
  %7959 = fsub fast float %7694, %7957
  %7960 = select i1 %7696, float %7957, float %7959
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.CBufRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.CBufRet.f32 %7961, 2
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 0
  %7967 = extractvalue %dx.types.CBufRet.f32 %7965, 1
  %7968 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %7969 = extractvalue %dx.types.CBufRet.f32 %7965, 3
  %7970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7971 = extractvalue %dx.types.CBufRet.f32 %7970, 3
  %7972 = call float @dx.op.binary.f32(i32 36, float %7958, float %7971)  ; FMin(a,b)
  %7973 = fmul fast float %7969, %7960
  %7974 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7975 = fsub fast float %7966, %7962
  %7976 = fsub fast float %7967, %7963
  %7977 = fsub fast float %7968, %7964
  %7978 = fmul fast float %7974, %7975
  %7979 = fmul fast float %7974, %7976
  %7980 = fmul fast float %7974, %7977
  %7981 = fadd fast float %7978, %7962
  %7982 = fadd fast float %7979, %7963
  %7983 = fadd fast float %7980, %7964
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = fadd fast float %7986, %7985
  %7988 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7990 = extractvalue %dx.types.CBufRet.f32 %7984, 3
  %7991 = fadd fast float %7990, %7989
  %7992 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7993 = fmul fast float %7988, %7972
  %7994 = fmul fast float %7993, %7992
  br label %7995

; <label>:7995                                    ; preds = %7956, %7875, %7710, %7692, %7690
  %7996 = phi float [ %7719, %7710 ], [ %7878, %7875 ], [ %7960, %7956 ], [ 0.000000e+00, %7690 ], [ 0.000000e+00, %7692 ]
  %7997 = phi float [ %7753, %7710 ], [ %7912, %7875 ], [ %7994, %7956 ], [ 0.000000e+00, %7690 ], [ 0.000000e+00, %7692 ]
  %7998 = phi float [ %7740, %7710 ], [ %7899, %7875 ], [ %7981, %7956 ], [ 0.000000e+00, %7690 ], [ 0.000000e+00, %7692 ]
  %7999 = phi float [ %7741, %7710 ], [ %7900, %7875 ], [ %7982, %7956 ], [ 0.000000e+00, %7690 ], [ 0.000000e+00, %7692 ]
  %8000 = phi float [ %7742, %7710 ], [ %7901, %7875 ], [ %7983, %7956 ], [ 0.000000e+00, %7690 ], [ 0.000000e+00, %7692 ]
  %8001 = fmul fast float %7633, %7997
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8004 = fsub fast float %7640, %8003
  %8005 = fcmp fast olt float %8001, -2.000000e+01
  %8006 = call float @dx.op.unary.f32(i32 21, float %8001)  ; Exp(value)
  %8007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8007, 2
  %8009 = extractvalue %dx.types.CBufRet.f32 %8007, 3
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 2
  %8012 = fmul fast float %8009, %8004
  %8013 = call float @dx.op.unary.f32(i32 7, float %8012)  ; Saturate(value)
  %8014 = fsub fast float 1.000000e+00, %8013
  %8015 = fmul fast float %7625, 5.000000e-01
  %8016 = fadd fast float %8015, 5.000000e-01
  %8017 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8018 = fsub fast float 1.000000e+00, %8017
  %8019 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8014)  ; FMax(a,b)
  %8020 = fdiv fast float %8018, %8019
  %8021 = fsub fast float %8004, %7582
  %8022 = call float @dx.op.unary.f32(i32 6, float %8021)  ; FAbs(value)
  %8023 = fmul fast float %8022, %8008
  %8024 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8025 = fsub fast float 1.000000e+00, %8023
  %8026 = fmul fast float %8025, %8024
  %8027 = fadd fast float %8026, %8023
  %8028 = fmul fast float %8011, %8004
  %8029 = call float @dx.op.unary.f32(i32 7, float %8028)  ; Saturate(value)
  %8030 = fsub fast float 1.000000e+00, %8027
  %8031 = fmul fast float %8030, %8029
  %8032 = fadd fast float %8031, %8027
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = fadd fast float %8006, -1.000000e+00
  %8035 = select i1 %8005, float -1.000000e+00, float %8034
  %8036 = fmul fast float %8033, %8035
  %8037 = fadd fast float %8036, 1.000000e+00
  %8038 = fsub fast float -0.000000e+00, %8036
  %8039 = fmul fast float %7998, %8038
  %8040 = fmul fast float %7999, %8038
  %8041 = fmul fast float %8000, %8038
  br label %8042

; <label>:8042                                    ; preds = %7995, %7591
  %8043 = phi float [ %7996, %7995 ], [ 0.000000e+00, %7591 ]
  %8044 = phi float [ %8037, %7995 ], [ 1.000000e+00, %7591 ]
  %8045 = phi float [ %8039, %7995 ], [ 0.000000e+00, %7591 ]
  %8046 = phi float [ %8040, %7995 ], [ 0.000000e+00, %7591 ]
  %8047 = phi float [ %8041, %7995 ], [ 0.000000e+00, %7591 ]
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8050 = fsub fast float 1.000000e+00, %8044
  %8051 = fmul fast float %8050, %7626
  %8052 = fmul fast float %8051, %8049
  %8053 = fsub fast float %7626, %8052
  br i1 %7619, label %8054, label %8083, !dx.controlflow.hints !166

; <label>:8054                                    ; preds = %8042
  %8055 = fmul fast float %7627, %7616
  %8056 = fadd fast float %8055, %7617
  %8057 = call float @dx.op.unary.f32(i32 7, float %8056)  ; Saturate(value)
  %8058 = fmul fast float %7598, %8053
  %8059 = fsub fast float -0.000000e+00, %8058
  %8060 = fmul fast float %7599, %8053
  %8061 = fsub fast float -0.000000e+00, %8060
  %8062 = call float @dx.op.unary.f32(i32 21, float %8059)  ; Exp(value)
  %8063 = call float @dx.op.unary.f32(i32 21, float %8061)  ; Exp(value)
  %8064 = call float @dx.op.binary.f32(i32 35, float %7606, float %8062)  ; FMax(a,b)
  %8065 = call float @dx.op.binary.f32(i32 35, float %7606, float %8063)  ; FMax(a,b)
  %8066 = fsub fast float %8065, %8064
  %8067 = fmul fast float %8066, %8057
  %8068 = fadd fast float %8067, %8064
  %8069 = call float @dx.op.unary.f32(i32 7, float %8068)  ; Saturate(value)
  %8070 = fsub fast float %7603, %7608
  %8071 = fsub fast float %7604, %7609
  %8072 = fsub fast float %7605, %7610
  %8073 = fmul fast float %8057, %8070
  %8074 = fmul fast float %8057, %8071
  %8075 = fmul fast float %8057, %8072
  %8076 = fadd fast float %8073, %7608
  %8077 = fadd fast float %8074, %7609
  %8078 = fadd fast float %8075, %7610
  %8079 = fsub fast float 1.000000e+00, %8069
  %8080 = fmul fast float %8079, %8076
  %8081 = fmul fast float %8079, %8077
  %8082 = fmul fast float %8079, %8078
  br label %8142

; <label>:8083                                    ; preds = %8042
  %8084 = fmul fast float %8053, %7615
  %8085 = call float @dx.op.unary.f32(i32 7, float %8084)  ; Saturate(value)
  %8086 = fsub fast float 2.000000e+00, %8085
  %8087 = fmul fast float %8085, 9.921875e-01
  %8088 = fmul fast float %8087, %8086
  %8089 = fadd fast float %8088, 3.906250e-03
  %8090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8089, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8091 = extractvalue %dx.types.ResRet.f32 %8090, 0
  %8092 = fsub fast float %8085, %8091
  %8093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8092)  ; FMax(a,b)
  %8094 = fmul fast float %7601, %7582
  %8095 = call float @dx.op.unary.f32(i32 6, float %8094)  ; FAbs(value)
  %8096 = fcmp fast ogt float %8095, 0x3EB0C6F7A0000000
  br i1 %8096, label %8097, label %8103, !dx.controlflow.hints !167

; <label>:8097                                    ; preds = %8083
  %8098 = fmul fast float %8094, 0xBFF7154760000000
  %8099 = call float @dx.op.unary.f32(i32 21, float %8098)  ; Exp(value)
  %8100 = fsub fast float 1.000000e+00, %8099
  %8101 = fdiv fast float %8100, %8094
  %8102 = fmul fast float %8101, %7611
  br label %8103

; <label>:8103                                    ; preds = %8097, %8083
  %8104 = phi float [ %8102, %8097 ], [ %7611, %8083 ]
  %8105 = fadd fast float %8104, %7613
  %8106 = fmul fast float %8105, %8093
  %8107 = fmul fast float %7598, %8106
  %8108 = fsub fast float -0.000000e+00, %8107
  %8109 = fmul fast float %7599, %8106
  %8110 = fsub fast float -0.000000e+00, %8109
  %8111 = fmul fast float %7600, %8106
  %8112 = fsub fast float -0.000000e+00, %8111
  %8113 = call float @dx.op.unary.f32(i32 21, float %8108)  ; Exp(value)
  %8114 = call float @dx.op.unary.f32(i32 21, float %8110)  ; Exp(value)
  %8115 = call float @dx.op.unary.f32(i32 21, float %8112)  ; Exp(value)
  %8116 = fmul fast float %7627, %7627
  %8117 = fadd fast float %8116, 1.000000e+00
  %8118 = fmul fast float %8117, 0x3FAE8EC8A0000000
  %8119 = fmul fast float %8118, %7608
  %8120 = fmul fast float %8118, %7609
  %8121 = fmul fast float %8118, %7610
  %8122 = fmul fast float %7627, %7606
  %8123 = fsub fast float 1.000000e+00, %8122
  %8124 = fmul fast float %7606, %7606
  %8125 = fsub fast float 1.000000e+00, %8124
  %8126 = fmul fast float %8125, 0x3FB45F3060000000
  %8127 = fmul fast float %8123, %8123
  %8128 = fdiv fast float 1.000000e+00, %8127
  %8129 = fmul fast float %8126, %8128
  %8130 = fmul fast float %8129, %7603
  %8131 = fmul fast float %8129, %7604
  %8132 = fmul fast float %8129, %7605
  %8133 = fadd fast float %8130, %8119
  %8134 = fadd fast float %8131, %8120
  %8135 = fadd fast float %8132, %8121
  %8136 = fsub fast float 1.000000e+00, %8113
  %8137 = fsub fast float 1.000000e+00, %8114
  %8138 = fsub fast float 1.000000e+00, %8115
  %8139 = fmul fast float %8133, %8136
  %8140 = fmul fast float %8134, %8137
  %8141 = fmul fast float %8135, %8138
  br label %8142

; <label>:8142                                    ; preds = %8103, %8054
  %8143 = phi float [ %8080, %8054 ], [ %8139, %8103 ]
  %8144 = phi float [ %8081, %8054 ], [ %8140, %8103 ]
  %8145 = phi float [ %8082, %8054 ], [ %8141, %8103 ]
  %8146 = phi float [ %8069, %8054 ], [ %8113, %8103 ]
  %8147 = phi float [ %8069, %8054 ], [ %8114, %8103 ]
  %8148 = phi float [ %8069, %8054 ], [ %8115, %8103 ]
  br i1 %7635, label %8149, label %8347, !dx.controlflow.hints !168

; <label>:8149                                    ; preds = %8142
  %8150 = extractvalue %dx.types.CBufRet.f32 %8048, 0
  %8151 = fmul fast float %8150, %8050
  %8152 = fsub fast float %8045, %8143
  %8153 = fsub fast float %8046, %8144
  %8154 = fsub fast float %8047, %8145
  %8155 = fmul fast float %8151, %8152
  %8156 = fmul fast float %8151, %8153
  %8157 = fmul fast float %8151, %8154
  %8158 = fadd fast float %8155, %8143
  %8159 = fadd fast float %8156, %8144
  %8160 = fadd fast float %8157, %8145
  %8161 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8146)  ; FMax(a,b)
  %8162 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8147)  ; FMax(a,b)
  %8163 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8148)  ; FMax(a,b)
  %8164 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8044)  ; FMax(a,b)
  %8165 = call float @dx.op.binary.f32(i32 35, float %8043, float %8053)  ; FMax(a,b)
  %8166 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8165)  ; FMax(a,b)
  %8167 = fdiv fast float %8043, %8166
  %8168 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8169 = fdiv fast float %8053, %8166
  %8170 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8171 = fcmp fast une float %8164, 1.000000e+00
  br i1 %8171, label %8172, label %8185, !dx.controlflow.hints !169

; <label>:8172                                    ; preds = %8149
  %8173 = call float @dx.op.unary.f32(i32 23, float %8164)  ; Log(value)
  %8174 = fmul fast float %8173, 0x3FE62E4300000000
  %8175 = fmul fast float %8045, %8174
  %8176 = fsub fast float -0.000000e+00, %8175
  %8177 = fmul fast float %8046, %8174
  %8178 = fsub fast float -0.000000e+00, %8177
  %8179 = fmul fast float %8047, %8174
  %8180 = fsub fast float -0.000000e+00, %8179
  %8181 = fsub fast float 1.000000e+00, %8164
  %8182 = fdiv fast float %8176, %8181
  %8183 = fdiv fast float %8178, %8181
  %8184 = fdiv fast float %8180, %8181
  br label %8185

; <label>:8185                                    ; preds = %8172, %8149
  %8186 = phi float [ %8182, %8172 ], [ %8045, %8149 ]
  %8187 = phi float [ %8183, %8172 ], [ %8046, %8149 ]
  %8188 = phi float [ %8184, %8172 ], [ %8047, %8149 ]
  %8189 = phi float [ %8174, %8172 ], [ 0.000000e+00, %8149 ]
  %8190 = fcmp fast une float %8161, 1.000000e+00
  br i1 %8190, label %8191, label %8198, !dx.controlflow.hints !170

; <label>:8191                                    ; preds = %8185
  %8192 = call float @dx.op.unary.f32(i32 23, float %8161)  ; Log(value)
  %8193 = fmul fast float %8192, 0x3FE62E4300000000
  %8194 = fmul fast float %8158, %8193
  %8195 = fsub fast float -0.000000e+00, %8194
  %8196 = fsub fast float 1.000000e+00, %8161
  %8197 = fdiv fast float %8195, %8196
  br label %8198

; <label>:8198                                    ; preds = %8191, %8185
  %8199 = phi float [ %8197, %8191 ], [ %8158, %8185 ]
  %8200 = phi float [ %8193, %8191 ], [ 0.000000e+00, %8185 ]
  %8201 = fcmp fast une float %8162, 1.000000e+00
  br i1 %8201, label %8202, label %8209, !dx.controlflow.hints !170

; <label>:8202                                    ; preds = %8198
  %8203 = call float @dx.op.unary.f32(i32 23, float %8162)  ; Log(value)
  %8204 = fmul fast float %8203, 0x3FE62E4300000000
  %8205 = fmul fast float %8159, %8204
  %8206 = fsub fast float -0.000000e+00, %8205
  %8207 = fsub fast float 1.000000e+00, %8162
  %8208 = fdiv fast float %8206, %8207
  br label %8209

; <label>:8209                                    ; preds = %8202, %8198
  %8210 = phi float [ %8208, %8202 ], [ %8159, %8198 ]
  %8211 = phi float [ %8204, %8202 ], [ 0.000000e+00, %8198 ]
  %8212 = fcmp fast une float %8163, 1.000000e+00
  br i1 %8212, label %8213, label %8220, !dx.controlflow.hints !170

; <label>:8213                                    ; preds = %8209
  %8214 = call float @dx.op.unary.f32(i32 23, float %8163)  ; Log(value)
  %8215 = fmul fast float %8214, 0x3FE62E4300000000
  %8216 = fmul fast float %8160, %8215
  %8217 = fsub fast float -0.000000e+00, %8216
  %8218 = fsub fast float 1.000000e+00, %8163
  %8219 = fdiv fast float %8217, %8218
  br label %8220

; <label>:8220                                    ; preds = %8213, %8209
  %8221 = phi float [ %8219, %8213 ], [ %8160, %8209 ]
  %8222 = phi float [ %8215, %8213 ], [ 0.000000e+00, %8209 ]
  %8223 = fmul fast float %8186, %8170
  %8224 = fmul fast float %8187, %8170
  %8225 = fmul fast float %8188, %8170
  %8226 = fmul fast float %8189, %8170
  %8227 = fmul fast float %8199, %8168
  %8228 = fmul fast float %8210, %8168
  %8229 = fmul fast float %8221, %8168
  %8230 = fmul fast float %8200, %8168
  %8231 = fmul fast float %8211, %8168
  %8232 = fmul fast float %8222, %8168
  %8233 = fadd fast float %8227, %8223
  %8234 = fadd fast float %8228, %8224
  %8235 = fadd fast float %8229, %8225
  %8236 = fadd fast float %8230, %8226
  %8237 = fadd fast float %8231, %8226
  %8238 = fadd fast float %8232, %8226
  %8239 = fcmp fast une float %8236, 0.000000e+00
  br i1 %8239, label %8240, label %8247, !dx.controlflow.hints !171

; <label>:8240                                    ; preds = %8220
  %8241 = fmul fast float %8236, 0x3FF7154760000000
  %8242 = call float @dx.op.unary.f32(i32 21, float %8241)  ; Exp(value)
  %8243 = fsub fast float 1.000000e+00, %8242
  %8244 = fmul fast float %8233, %8243
  %8245 = fsub fast float -0.000000e+00, %8244
  %8246 = fdiv fast float %8245, %8236
  br label %8247

; <label>:8247                                    ; preds = %8240, %8220
  %8248 = phi float [ %8242, %8240 ], [ 1.000000e+00, %8220 ]
  %8249 = phi float [ %8246, %8240 ], [ %8233, %8220 ]
  %8250 = fcmp fast une float %8237, 0.000000e+00
  br i1 %8250, label %8251, label %8258, !dx.controlflow.hints !171

; <label>:8251                                    ; preds = %8247
  %8252 = fmul fast float %8237, 0x3FF7154760000000
  %8253 = call float @dx.op.unary.f32(i32 21, float %8252)  ; Exp(value)
  %8254 = fsub fast float 1.000000e+00, %8253
  %8255 = fmul fast float %8234, %8254
  %8256 = fsub fast float -0.000000e+00, %8255
  %8257 = fdiv fast float %8256, %8237
  br label %8258

; <label>:8258                                    ; preds = %8251, %8247
  %8259 = phi float [ %8253, %8251 ], [ 1.000000e+00, %8247 ]
  %8260 = phi float [ %8257, %8251 ], [ %8234, %8247 ]
  %8261 = fcmp fast une float %8238, 0.000000e+00
  br i1 %8261, label %8262, label %8269, !dx.controlflow.hints !171

; <label>:8262                                    ; preds = %8258
  %8263 = fmul fast float %8238, 0x3FF7154760000000
  %8264 = call float @dx.op.unary.f32(i32 21, float %8263)  ; Exp(value)
  %8265 = fsub fast float 1.000000e+00, %8264
  %8266 = fmul fast float %8235, %8265
  %8267 = fsub fast float -0.000000e+00, %8266
  %8268 = fdiv fast float %8267, %8238
  br label %8269

; <label>:8269                                    ; preds = %8262, %8258
  %8270 = phi float [ %8264, %8262 ], [ 1.000000e+00, %8258 ]
  %8271 = phi float [ %8268, %8262 ], [ %8235, %8258 ]
  %8272 = fcmp fast ogt float %8168, %8170
  br i1 %8272, label %8273, label %8293

; <label>:8273                                    ; preds = %8269
  %8274 = fsub fast float 1.000000e+00, %8170
  %8275 = fmul fast float %8186, %8274
  %8276 = fmul fast float %8187, %8274
  %8277 = fmul fast float %8188, %8274
  %8278 = fmul fast float %8189, %8274
  %8279 = fcmp fast une float %8278, 0.000000e+00
  br i1 %8279, label %8280, label %8331, !dx.controlflow.hints !172

; <label>:8280                                    ; preds = %8273
  %8281 = fmul fast float %8278, 0x3FF7154760000000
  %8282 = call float @dx.op.unary.f32(i32 21, float %8281)  ; Exp(value)
  %8283 = fsub fast float 1.000000e+00, %8282
  %8284 = fmul fast float %8275, %8283
  %8285 = fsub fast float -0.000000e+00, %8284
  %8286 = fmul fast float %8276, %8283
  %8287 = fsub fast float -0.000000e+00, %8286
  %8288 = fmul fast float %8277, %8283
  %8289 = fsub fast float -0.000000e+00, %8288
  %8290 = fdiv fast float %8285, %8278
  %8291 = fdiv fast float %8287, %8278
  %8292 = fdiv fast float %8289, %8278
  br label %8331

; <label>:8293                                    ; preds = %8269
  %8294 = fsub fast float 1.000000e+00, %8168
  %8295 = fmul fast float %8199, %8294
  %8296 = fmul fast float %8210, %8294
  %8297 = fmul fast float %8221, %8294
  %8298 = fmul fast float %8200, %8294
  %8299 = fmul fast float %8211, %8294
  %8300 = fmul fast float %8222, %8294
  %8301 = fcmp fast une float %8298, 0.000000e+00
  br i1 %8301, label %8302, label %8309, !dx.controlflow.hints !171

; <label>:8302                                    ; preds = %8293
  %8303 = fmul fast float %8298, 0x3FF7154760000000
  %8304 = call float @dx.op.unary.f32(i32 21, float %8303)  ; Exp(value)
  %8305 = fsub fast float 1.000000e+00, %8304
  %8306 = fmul fast float %8295, %8305
  %8307 = fsub fast float -0.000000e+00, %8306
  %8308 = fdiv fast float %8307, %8298
  br label %8309

; <label>:8309                                    ; preds = %8302, %8293
  %8310 = phi float [ %8308, %8302 ], [ %8295, %8293 ]
  %8311 = phi float [ %8304, %8302 ], [ 1.000000e+00, %8293 ]
  %8312 = fcmp fast une float %8299, 0.000000e+00
  br i1 %8312, label %8313, label %8320, !dx.controlflow.hints !171

; <label>:8313                                    ; preds = %8309
  %8314 = fmul fast float %8299, 0x3FF7154760000000
  %8315 = call float @dx.op.unary.f32(i32 21, float %8314)  ; Exp(value)
  %8316 = fsub fast float 1.000000e+00, %8315
  %8317 = fmul fast float %8296, %8316
  %8318 = fsub fast float -0.000000e+00, %8317
  %8319 = fdiv fast float %8318, %8299
  br label %8320

; <label>:8320                                    ; preds = %8313, %8309
  %8321 = phi float [ %8319, %8313 ], [ %8296, %8309 ]
  %8322 = phi float [ %8315, %8313 ], [ 1.000000e+00, %8309 ]
  %8323 = fcmp fast une float %8300, 0.000000e+00
  br i1 %8323, label %8324, label %8331, !dx.controlflow.hints !171

; <label>:8324                                    ; preds = %8320
  %8325 = fmul fast float %8300, 0x3FF7154760000000
  %8326 = call float @dx.op.unary.f32(i32 21, float %8325)  ; Exp(value)
  %8327 = fsub fast float 1.000000e+00, %8326
  %8328 = fmul fast float %8297, %8327
  %8329 = fsub fast float -0.000000e+00, %8328
  %8330 = fdiv fast float %8329, %8300
  br label %8331

; <label>:8331                                    ; preds = %8324, %8320, %8280, %8273
  %8332 = phi float [ %8330, %8324 ], [ %8292, %8280 ], [ %8277, %8273 ], [ %8297, %8320 ]
  %8333 = phi float [ %8321, %8324 ], [ %8291, %8280 ], [ %8276, %8273 ], [ %8321, %8320 ]
  %8334 = phi float [ %8310, %8324 ], [ %8290, %8280 ], [ %8275, %8273 ], [ %8310, %8320 ]
  %8335 = phi float [ %8326, %8324 ], [ %8282, %8280 ], [ 1.000000e+00, %8273 ], [ 1.000000e+00, %8320 ]
  %8336 = phi float [ %8322, %8324 ], [ %8282, %8280 ], [ 1.000000e+00, %8273 ], [ %8322, %8320 ]
  %8337 = phi float [ %8311, %8324 ], [ %8282, %8280 ], [ 1.000000e+00, %8273 ], [ %8311, %8320 ]
  %8338 = fmul fast float %8337, %8249
  %8339 = fmul fast float %8336, %8260
  %8340 = fmul fast float %8335, %8271
  %8341 = fadd fast float %8338, %8334
  %8342 = fadd fast float %8339, %8333
  %8343 = fadd fast float %8340, %8332
  %8344 = fmul fast float %8337, %8248
  %8345 = fmul fast float %8336, %8259
  %8346 = fmul fast float %8335, %8270
  br label %8347

; <label>:8347                                    ; preds = %8331, %8142
  %8348 = phi float [ %8346, %8331 ], [ %8148, %8142 ]
  %8349 = phi float [ %8345, %8331 ], [ %8147, %8142 ]
  %8350 = phi float [ %8344, %8331 ], [ %8146, %8142 ]
  %8351 = phi float [ %8343, %8331 ], [ %8145, %8142 ]
  %8352 = phi float [ %8342, %8331 ], [ %8144, %8142 ]
  %8353 = phi float [ %8341, %8331 ], [ %8143, %8142 ]
  %8354 = fmul fast float %8353, %7299
  %8355 = fmul fast float %8352, %7299
  %8356 = fmul fast float %8351, %7299
  %8357 = fmul fast float %8350, %7590
  %8358 = call float @dx.op.dot3.f32(i32 55, float %8350, float %8349, float %8348, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8359 = call float @dx.op.dot3.f32(i32 55, float %8354, float %8355, float %8356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8360 = select i1 %269, float %8358, float %8350
  %8361 = select i1 %269, float %8358, float %8349
  %8362 = select i1 %269, float 1.000000e+00, float %8348
  %8363 = select i1 %269, float %8359, float %8354
  %8364 = select i1 %269, float 0.000000e+00, float %8355
  %8365 = select i1 %269, float 0.000000e+00, float %8356
  %8366 = fmul fast float %8360, %7584
  %8367 = fmul fast float %8361, %7585
  %8368 = fmul fast float %8362, %7586
  %8369 = fadd fast float %8366, %8363
  %8370 = fadd fast float %8367, %8364
  %8371 = fadd fast float %8365, %8368
  %8372 = fmul fast float %8360, %7587
  %8373 = fmul fast float %8361, %7588
  %8374 = fmul fast float %8362, %7589
  %8375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.i32 %8375, 0
  %8377 = icmp eq i32 %8376, 0
  br i1 %8377, label %8745, label %8378, !dx.controlflow.hints !173

; <label>:8378                                    ; preds = %8347
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 3
  %8382 = fmul fast float %8380, %110
  %8383 = fmul fast float %8381, %111
  %8384 = fmul fast float %8382, 2.000000e+00
  %8385 = fmul fast float %8383, 2.000000e+00
  %8386 = fsub fast float 1.000000e+00, %8384
  %8387 = fsub fast float 1.000000e+00, %8385
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.CBufRet.f32 %8388, 1
  %8391 = extractvalue %dx.types.CBufRet.f32 %8388, 2
  %8392 = fmul fast float %8386, %8389
  %8393 = fmul fast float %8386, %8390
  %8394 = fmul fast float %8386, %8391
  %8395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.CBufRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.CBufRet.f32 %8395, 2
  %8399 = fmul fast float %8387, %8396
  %8400 = fmul fast float %8387, %8397
  %8401 = fmul fast float %8387, %8398
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8406 = fadd fast float %8399, %8403
  %8407 = fadd fast float %8406, %8392
  %8408 = fadd fast float %8400, %8404
  %8409 = fadd fast float %8408, %8393
  %8410 = fadd fast float %8401, %8405
  %8411 = fadd fast float %8410, %8394
  %8412 = fmul fast float %8407, %7583
  %8413 = fmul fast float %8409, %7583
  %8414 = fmul fast float %8411, %7583
  %8415 = fmul fast float %8412, %8412
  %8416 = fmul fast float %8413, %8413
  %8417 = fadd fast float %8415, %8416
  %8418 = fmul fast float %8414, %8414
  %8419 = fadd fast float %8417, %8418
  %8420 = call float @dx.op.unary.f32(i32 24, float %8419)  ; Sqrt(value)
  %8421 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %8422 = fsub fast float %8420, %8421
  %8423 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %8424 = fmul fast float %8422, %8423
  %8425 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8426 = fadd fast float %8425, -5.000000e-01
  %8427 = fmul fast float %8426, 2.000000e+00
  %8428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8429 = extractvalue %dx.types.CBufRet.f32 %8428, 2
  %8430 = call float @dx.op.binary.f32(i32 36, float %8429, float %8427)  ; FMin(a,b)
  %8431 = fsub fast float -0.000000e+00, %8429
  %8432 = fcmp fast ogt float %8430, %8431
  br i1 %8432, label %8433, label %8745, !dx.controlflow.hints !174

; <label>:8433                                    ; preds = %8378
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8436 = fcmp fast ogt float %8435, 0.000000e+00
  br i1 %8436, label %8437, label %8512, !dx.controlflow.hints !175

; <label>:8437                                    ; preds = %8433
  %8438 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8439 = extractvalue %dx.types.Dimensions %8438, 0
  %8440 = sitofp i32 %8439 to float
  %8441 = extractvalue %dx.types.Dimensions %8438, 1
  %8442 = sitofp i32 %8441 to float
  %8443 = fmul fast float %8382, %8440
  %8444 = fmul fast float %8383, %8442
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 1
  %8447 = fsub fast float -0.000000e+00, %8446
  %8448 = fptoui float %8447 to i32
  %8449 = fptoui float %8443 to i32
  %8450 = fptoui float %8444 to i32
  %8451 = and i32 %8448, 31
  %8452 = lshr i32 %8449, %8451
  %8453 = lshr i32 %8450, %8451
  %8454 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8448, i32 %8452, i32 %8453, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = fcmp fast olt float %8455, -1.000000e+00
  %8457 = fcmp fast ogt float %8455, -1.000000e+00
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8460 = select i1 %8457, float %8459, float 1.000000e+00
  %8461 = fadd fast float %8455, 1.000000e+00
  %8462 = fmul fast float %8460, %8461
  %8463 = call float @dx.op.unary.f32(i32 6, float %8462)  ; FAbs(value)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8465 = fcmp fast oge float %8463, %8464
  %8466 = select i1 %8465, float 0x4197782600000000, float %8463
  %8467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8468 = extractvalue %dx.types.CBufRet.f32 %8467, 0
  %8469 = extractvalue %dx.types.CBufRet.f32 %8467, 1
  %8470 = extractvalue %dx.types.CBufRet.f32 %8467, 2
  %8471 = select i1 %8456, float %8468, float %8389
  %8472 = select i1 %8456, float %8469, float %8390
  %8473 = select i1 %8456, float %8470, float %8391
  %8474 = fmul fast float %8471, %8386
  %8475 = fmul fast float %8472, %8386
  %8476 = fmul fast float %8473, %8386
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8481 = select i1 %8456, float %8478, float %8396
  %8482 = select i1 %8456, float %8479, float %8397
  %8483 = select i1 %8456, float %8480, float %8398
  %8484 = fmul fast float %8481, %8387
  %8485 = fmul fast float %8482, %8387
  %8486 = fmul fast float %8483, %8387
  %8487 = fadd fast float %8484, %8474
  %8488 = fadd fast float %8485, %8475
  %8489 = fadd fast float %8486, %8476
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.CBufRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.CBufRet.f32 %8490, 2
  %8494 = select i1 %8456, float %8491, float %8403
  %8495 = select i1 %8456, float %8492, float %8404
  %8496 = select i1 %8456, float %8493, float %8405
  %8497 = fadd fast float %8487, %8494
  %8498 = fadd fast float %8488, %8495
  %8499 = fadd fast float %8489, %8496
  %8500 = fmul fast float %8497, %8466
  %8501 = fmul fast float %8498, %8466
  %8502 = fmul fast float %8499, %8466
  %8503 = fmul fast float %8500, %8500
  %8504 = fmul fast float %8501, %8501
  %8505 = fadd fast float %8503, %8504
  %8506 = fmul fast float %8502, %8502
  %8507 = fadd fast float %8505, %8506
  %8508 = call float @dx.op.unary.f32(i32 24, float %8507)  ; Sqrt(value)
  %8509 = fsub fast float %8508, %8421
  %8510 = fmul fast float %8509, %8423
  %8511 = call float @dx.op.unary.f32(i32 7, float %8510)  ; Saturate(value)
  br label %8512

; <label>:8512                                    ; preds = %8437, %8433
  %8513 = phi float [ %8511, %8437 ], [ 1.000000e+00, %8433 ]
  %8514 = fmul fast float %8430, 5.000000e-01
  %8515 = fadd fast float %8514, 5.000000e-01
  %8516 = call float @dx.op.unary.f32(i32 22, float %8515)  ; Frc(value)
  %8517 = call float @dx.op.unary.f32(i32 27, float %8516)  ; Round_ni(value)
  %8518 = call float @dx.op.unary.f32(i32 22, float %8516)  ; Frc(value)
  %8519 = fmul fast float %8518, 2.000000e+00
  %8520 = fadd fast float %8519, -1.000000e+00
  %8521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8382, float %8383, float %8517, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8522 = extractvalue %dx.types.ResRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.ResRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.ResRet.f32 %8521, 2
  %8525 = extractvalue %dx.types.ResRet.f32 %8521, 3
  %8526 = fadd fast float %8522, -5.000000e-01
  %8527 = fadd fast float %8524, -5.000000e-01
  %8528 = fmul fast float %8526, 0xBFD5555560000000
  %8529 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8527, float %8528)  ; FMad(a,b,c)
  %8530 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8523, float 0.000000e+00)  ; FMad(a,b,c)
  %8531 = fadd fast float %8530, %8525
  %8532 = fmul fast float %8526, -7.500000e-01
  %8533 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8527, float %8532)  ; FMad(a,b,c)
  %8534 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8523, float 0.000000e+00)  ; FMad(a,b,c)
  %8535 = fadd fast float %8534, %8525
  %8536 = call float @dx.op.binary.f32(i32 35, float %8529, float -1.000000e+00)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 35, float %8531, float -1.000000e+00)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 35, float %8533, float -1.000000e+00)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 35, float %8535, float -1.000000e+00)  ; FMax(a,b)
  %8540 = call float @dx.op.binary.f32(i32 36, float %8536, float 1.000000e+00)  ; FMin(a,b)
  %8541 = call float @dx.op.binary.f32(i32 36, float %8537, float 1.000000e+00)  ; FMin(a,b)
  %8542 = call float @dx.op.binary.f32(i32 36, float %8538, float 1.000000e+00)  ; FMin(a,b)
  %8543 = call float @dx.op.binary.f32(i32 36, float %8539, float 1.000000e+00)  ; FMin(a,b)
  %8544 = fcmp fast olt float %8540, 0x3FEFFF8020000000
  br i1 %8544, label %8545, label %8660, !dx.controlflow.hints !176

; <label>:8545                                    ; preds = %8512
  %8546 = extractvalue %dx.types.CBufRet.f32 %8428, 3
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8551 = extractvalue %dx.types.CBufRet.f32 %8547, 3
  %8552 = fsub fast float %8548, %8540
  %8553 = fsub fast float %8549, %8541
  %8554 = fsub fast float %8550, %8542
  %8555 = fsub fast float %8551, %8543
  %8556 = fmul fast float %8552, %8546
  %8557 = fmul fast float %8553, %8546
  %8558 = fmul fast float %8554, %8546
  %8559 = fmul fast float %8555, %8546
  %8560 = fadd fast float %8556, %8540
  %8561 = fadd fast float %8557, %8541
  %8562 = fsub fast float -0.000000e+00, %8561
  %8563 = fadd fast float %8558, %8542
  %8564 = fadd fast float %8559, %8543
  %8565 = fmul fast float %8560, %8560
  %8566 = fsub fast float %8561, %8565
  %8567 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8566)  ; FMax(a,b)
  %8568 = fdiv fast float 1.000000e+00, %8567
  %8569 = fmul fast float %8561, %8560
  %8570 = fsub fast float %8563, %8569
  %8571 = fsub fast float %8520, %8560
  %8572 = fmul fast float %8520, %8520
  %8573 = fsub fast float %8572, %8561
  %8574 = fmul fast float %8571, %8568
  %8575 = fmul fast float %8574, %8570
  %8576 = fsub fast float %8573, %8575
  %8577 = fmul fast float %8561, %8561
  %8578 = fsub fast float %8564, %8577
  %8579 = fmul fast float %8570, %8570
  %8580 = fmul fast float %8579, %8568
  %8581 = fsub fast float %8578, %8580
  %8582 = fdiv fast float %8576, %8581
  %8583 = fmul fast float %8570, %8582
  %8584 = fsub fast float %8571, %8583
  %8585 = fmul fast float %8584, %8568
  %8586 = fmul fast float %8585, %8560
  %8587 = fsub fast float 1.000000e+00, %8586
  %8588 = fmul fast float %8561, %8582
  %8589 = fsub fast float %8587, %8588
  %8590 = fmul fast float %8585, %8585
  %8591 = fmul fast float %8582, 4.000000e+00
  %8592 = fmul fast float %8591, %8589
  %8593 = fsub fast float %8590, %8592
  %8594 = call float @dx.op.unary.f32(i32 24, float %8593)  ; Sqrt(value)
  %8595 = fcmp fast oge float %8585, 0.000000e+00
  %8596 = fsub fast float -0.000000e+00, %8594
  %8597 = select i1 %8595, float %8596, float %8594
  %8598 = fsub fast float %8597, %8585
  %8599 = fdiv fast float %8598, %8582
  %8600 = fdiv fast float %8589, %8598
  %8601 = fmul fast float %8599, 5.000000e-01
  %8602 = fmul fast float %8600, 2.000000e+00
  %8603 = select i1 %8595, float %8601, float %8602
  %8604 = select i1 %8595, float %8602, float %8601
  %8605 = call float @dx.op.binary.f32(i32 35, float %8603, float %8604)  ; FMax(a,b)
  %8606 = call float @dx.op.binary.f32(i32 36, float %8603, float %8604)  ; FMin(a,b)
  %8607 = fcmp fast ogt float %8520, %8606
  br i1 %8607, label %8608, label %8618

; <label>:8608                                    ; preds = %8545
  %8609 = fsub fast float %8520, %8606
  %8610 = fsub fast float %8605, %8606
  %8611 = fmul fast float %8609, %8610
  %8612 = fmul fast float %8605, %8520
  %8613 = fadd fast float %8605, %8520
  %8614 = fmul fast float %8613, %8560
  %8615 = fadd fast float %8612, %8561
  %8616 = fsub fast float %8615, %8614
  %8617 = fdiv fast float %8616, %8611
  br label %8618

; <label>:8618                                    ; preds = %8608, %8545
  %8619 = phi float [ %8617, %8608 ], [ 0.000000e+00, %8545 ]
  %8620 = fcmp fast ogt float %8520, %8605
  %8621 = fsub fast float %8520, %8605
  br i1 %8620, label %8622, label %8632

; <label>:8622                                    ; preds = %8618
  %8623 = fsub fast float %8605, %8606
  %8624 = fmul fast float %8623, %8621
  %8625 = fmul fast float %8606, %8520
  %8626 = fadd fast float %8606, %8520
  %8627 = fmul fast float %8626, %8560
  %8628 = fsub fast float %8562, %8625
  %8629 = fadd fast float %8628, %8627
  %8630 = fdiv fast float %8629, %8624
  %8631 = fadd fast float %8630, %8619
  br label %8632

; <label>:8632                                    ; preds = %8622, %8618
  %8633 = phi float [ %8631, %8622 ], [ %8619, %8618 ]
  %8634 = fsub fast float %8520, %8606
  %8635 = fmul fast float %8634, %8621
  %8636 = fmul fast float %8606, %8605
  %8637 = fadd fast float %8606, %8605
  %8638 = fmul fast float %8637, %8560
  %8639 = fadd fast float %8636, %8561
  %8640 = fsub fast float %8639, %8638
  %8641 = fdiv fast float %8640, %8635
  %8642 = call float @dx.op.unary.f32(i32 7, float %8633)  ; Saturate(value)
  %8643 = fcmp fast oeq float %7311, 0.000000e+00
  %8644 = extractvalue %dx.types.CBufRet.f32 %8428, 0
  %8645 = fcmp fast oeq float %8644, 0.000000e+00
  %8646 = or i1 %8643, %8645
  %8647 = fmul fast float %8644, 2.000000e+00
  %8648 = fadd fast float %8429, %8430
  %8649 = fdiv fast float %8648, %8647
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = fmul fast float %8650, 2.000000e+00
  %8652 = fsub fast float 3.000000e+00, %8651
  %8653 = fmul fast float %8650, %8650
  %8654 = fmul fast float %8653, %8652
  %8655 = select i1 %8646, float 1.000000e+00, float %8654
  %8656 = fmul fast float %8641, %7311
  %8657 = fadd fast float %8642, %8656
  %8658 = call float @dx.op.unary.f32(i32 7, float %8657)  ; Saturate(value)
  %8659 = fmul fast float %8655, %8658
  br label %8660

; <label>:8660                                    ; preds = %8632, %8512
  %8661 = phi float [ %8659, %8632 ], [ 0.000000e+00, %8512 ]
  %8662 = fsub fast float 1.000000e+00, %8661
  %8663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8382, float %8383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8664 = extractvalue %dx.types.ResRet.f32 %8663, 0
  %8665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.i32 %8665, 2
  %8667 = icmp eq i32 %8666, 0
  br i1 %8667, label %8673, label %8668

; <label>:8668                                    ; preds = %8660
  %8669 = call float @dx.op.unary.f32(i32 7, float %8661)  ; Saturate(value)
  %8670 = fadd fast float %8664, -1.000000e+00
  %8671 = fmul fast float %8669, %8670
  %8672 = fadd fast float %8671, 1.000000e+00
  br label %8673

; <label>:8673                                    ; preds = %8668, %8660
  %8674 = phi float [ %8672, %8668 ], [ %8662, %8660 ]
  br i1 %8436, label %8675, label %8693

; <label>:8675                                    ; preds = %8673
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8678 = fsub fast float %8513, %8677
  %8679 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8680 = fsub fast float %8513, %8435
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = fsub fast float %8679, %8681
  %8683 = fsub fast float %8515, %8681
  %8684 = fdiv fast float %8683, %8682
  %8685 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8686 = fmul fast float %8685, 2.000000e+00
  %8687 = fsub fast float 3.000000e+00, %8686
  %8688 = fsub fast float %8664, %8674
  %8689 = fmul fast float %8685, %8685
  %8690 = fmul fast float %8689, %8688
  %8691 = fmul fast float %8690, %8687
  %8692 = fadd fast float %8691, %8674
  br label %8693

; <label>:8693                                    ; preds = %8675, %8673
  %8694 = phi float [ %8692, %8675 ], [ %8674, %8673 ]
  %8695 = call float @dx.op.binary.f32(i32 35, float %8664, float %8694)  ; FMax(a,b)
  %8696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.i32 %8696, 2
  %8698 = and i32 %8697, 1
  %8699 = icmp eq i32 %8698, 0
  %8700 = fcmp fast une float %8695, 1.000000e+00
  %8701 = and i1 %8700, %8699
  br i1 %8701, label %8702, label %8721

; <label>:8702                                    ; preds = %8693
  %8703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8382, float %8383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8704 = extractvalue %dx.types.ResRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.ResRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.ResRet.f32 %8703, 2
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 1
  %8709 = fmul fast float %8708, %8704
  %8710 = fmul fast float %8708, %8705
  %8711 = fmul fast float %8708, %8706
  %8712 = fcmp fast ogt float %8664, 0x3FEFFF2E40000000
  %8713 = fsub fast float 1.000000e+00, %8695
  %8714 = fsub fast float 1.000000e+00, %8664
  %8715 = fdiv fast float %8713, %8714
  %8716 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8717 = select i1 %8712, float 0.000000e+00, float %8716
  %8718 = fmul fast float %8709, %8717
  %8719 = fmul fast float %8710, %8717
  %8720 = fmul fast float %8711, %8717
  br label %8721

; <label>:8721                                    ; preds = %8702, %8693
  %8722 = phi float [ 0.000000e+00, %8693 ], [ %8718, %8702 ]
  %8723 = phi float [ 0.000000e+00, %8693 ], [ %8719, %8702 ]
  %8724 = phi float [ 0.000000e+00, %8693 ], [ %8720, %8702 ]
  %8725 = fmul fast float %8722, %7299
  %8726 = fmul fast float %8723, %7299
  %8727 = fmul fast float %8724, %7299
  %8728 = fmul fast float %8695, %8357
  %8729 = call float @dx.op.dot3.f32(i32 55, float %8695, float %8695, float %8695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8730 = call float @dx.op.dot3.f32(i32 55, float %8725, float %8726, float %8727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8731 = select i1 %269, float %8729, float %8695
  %8732 = select i1 %269, float 1.000000e+00, float %8695
  %8733 = select i1 %269, float %8730, float %8725
  %8734 = select i1 %269, float 0.000000e+00, float %8726
  %8735 = select i1 %269, float 0.000000e+00, float %8727
  %8736 = fmul fast float %8731, %8369
  %8737 = fmul fast float %8731, %8370
  %8738 = fmul fast float %8732, %8371
  %8739 = fadd fast float %8736, %8733
  %8740 = fadd fast float %8737, %8734
  %8741 = fadd fast float %8735, %8738
  %8742 = fmul fast float %8731, %8372
  %8743 = fmul fast float %8731, %8373
  %8744 = fmul fast float %8732, %8374
  br label %8745

; <label>:8745                                    ; preds = %8721, %8378, %8347, %7579
  %8746 = phi float [ %7584, %7579 ], [ %8369, %8347 ], [ %8739, %8721 ], [ %8369, %8378 ]
  %8747 = phi float [ %7585, %7579 ], [ %8370, %8347 ], [ %8740, %8721 ], [ %8370, %8378 ]
  %8748 = phi float [ %7586, %7579 ], [ %8371, %8347 ], [ %8741, %8721 ], [ %8371, %8378 ]
  %8749 = phi float [ %7587, %7579 ], [ %8372, %8347 ], [ %8742, %8721 ], [ %8372, %8378 ]
  %8750 = phi float [ %7588, %7579 ], [ %8373, %8347 ], [ %8743, %8721 ], [ %8373, %8378 ]
  %8751 = phi float [ %7589, %7579 ], [ %8374, %8347 ], [ %8744, %8721 ], [ %8374, %8378 ]
  %8752 = phi float [ %7590, %7579 ], [ %8357, %8347 ], [ %8728, %8721 ], [ %8357, %8378 ]
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 3
  %8756 = fmul fast float %8754, %110
  %8757 = fmul fast float %8755, %111
  %8758 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8759 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8760 = select i1 %7321, i32 2, i32 0
  %8761 = or i32 %8760, 1
  %8762 = uitofp i32 %8761 to float
  %8763 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8758, float %8759, float %8762, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8764 = extractvalue %dx.types.ResRet.f32 %8763, 0
  %8765 = extractvalue %dx.types.ResRet.f32 %8763, 1
  %8766 = extractvalue %dx.types.ResRet.f32 %8763, 2
  %8767 = extractvalue %dx.types.ResRet.f32 %8763, 3
  %8768 = add nuw nsw i32 %8760, 2
  %8769 = uitofp i32 %8768 to float
  %8770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8758, float %8759, float %8769, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8771 = extractvalue %dx.types.ResRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.ResRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.ResRet.f32 %8770, 2
  %8774 = extractvalue %dx.types.ResRet.f32 %8770, 3
  %8775 = call float @dx.op.binary.f32(i32 35, float %8765, float %8766)  ; FMax(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8764, float %8775)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 35, float %8776, float %8767)  ; FMax(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8772, float %8773)  ; FMin(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8771, float %8778)  ; FMin(a,b)
  %8780 = call float @dx.op.binary.f32(i32 36, float %8779, float %8774)  ; FMin(a,b)
  %8781 = fmul fast float %8777, 2.550000e+02
  %8782 = fadd fast float %8781, 0x3F70101020000000
  %8783 = fptoui float %8782 to i32
  %8784 = fmul fast float %8780, 2.550000e+02
  %8785 = fadd fast float %8784, 0x3F70101020000000
  %8786 = fptoui float %8785 to i32
  %8787 = icmp ult i32 %8783, %8786
  br i1 %8787, label %8788, label %8957

; <label>:8788                                    ; preds = %8745
  %8789 = fcmp fast ogt float %100, 9.843750e-01
  %8790 = fadd fast float %7583, -4.000000e+00
  %8791 = select i1 %8789, float -4.000000e+00, float %8790
  %8792 = call float @dx.op.binary.f32(i32 35, float %8791, float 0.000000e+00)  ; FMax(a,b)
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = fadd fast float %8794, %8792
  %8796 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8797 = fmul fast float %8795, %8796
  %8798 = call float @dx.op.unary.f32(i32 23, float %8797)  ; Log(value)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8800 = fmul fast float %8799, %8798
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 2
  %8803 = fmul fast float %8800, %8802
  %8804 = call float @dx.op.unary.f32(i32 7, float %8803)  ; Saturate(value)
  %8805 = uitofp i32 %8783 to float
  %8806 = uitofp i32 %8786 to float
  %8807 = fadd fast float %8805, 5.000000e-01
  %8808 = fadd fast float %8806, 5.000000e-01
  %8809 = fmul fast float %8802, %8807
  %8810 = fmul fast float %8802, %8808
  %8811 = fadd fast float %8809, 0x3F0FFB4800000000
  %8812 = fadd fast float %8810, 0xBF0FFB4800000000
  %8813 = call float @dx.op.binary.f32(i32 35, float %8804, float %8811)  ; FMax(a,b)
  %8814 = call float @dx.op.binary.f32(i32 36, float %8813, float %8812)  ; FMin(a,b)
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 1
  %8817 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8818 = extractvalue %dx.types.CBufRet.f32 %8815, 0
  %8819 = select i1 %7321, float %8818, float 0.000000e+00
  %8820 = fmul fast float %8816, %8814
  %8821 = fadd fast float %8819, %8820
  %8822 = fadd fast float %8819, %8817
  %8823 = fsub fast float %8816, %8817
  %8824 = fadd fast float %8823, %8819
  %8825 = call float @dx.op.binary.f32(i32 35, float %8821, float %8822)  ; FMax(a,b)
  %8826 = call float @dx.op.binary.f32(i32 36, float %8825, float %8824)  ; FMin(a,b)
  %8827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8758, float %8759, float %8826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8828 = extractvalue %dx.types.ResRet.f32 %8827, 0
  %8829 = extractvalue %dx.types.ResRet.f32 %8827, 1
  %8830 = extractvalue %dx.types.ResRet.f32 %8827, 2
  %8831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.i32 %8831, 0
  %8833 = extractvalue %dx.types.CBufRet.i32 %8831, 1
  %8834 = uitofp i32 %8832 to float
  %8835 = uitofp i32 %8833 to float
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 0
  %8838 = extractvalue %dx.types.CBufRet.f32 %8836, 1
  %8839 = fmul fast float %8834, %8758
  %8840 = fmul fast float %8835, %8759
  %8841 = fadd fast float %8839, -5.000000e-01
  %8842 = fadd fast float %8840, -5.000000e-01
  %8843 = call float @dx.op.unary.f32(i32 22, float %8841)  ; Frc(value)
  %8844 = call float @dx.op.unary.f32(i32 22, float %8842)  ; Frc(value)
  %8845 = fmul fast float %8843, %8843
  %8846 = fmul fast float %8845, %8843
  %8847 = fsub fast float 3.000000e+00, %8843
  %8848 = fmul fast float %8845, %8847
  %8849 = fmul fast float %8843, 3.000000e+00
  %8850 = fmul fast float %8846, 3.000000e+00
  %8851 = fmul fast float %8845, 6.000000e+00
  %8852 = fsub fast float %8850, %8851
  %8853 = fadd fast float %8852, 4.000000e+00
  %8854 = fmul fast float %8853, 0x3FC5555560000000
  %8855 = fmul fast float %8846, -3.000000e+00
  %8856 = fadd fast float %8845, %8843
  %8857 = fmul fast float %8856, 3.000000e+00
  %8858 = fadd fast float %8855, 1.000000e+00
  %8859 = fadd fast float %8858, %8857
  %8860 = fmul fast float %8846, 0x3FC5555560000000
  %8861 = fmul fast float %8844, %8844
  %8862 = fmul fast float %8861, %8844
  %8863 = fsub fast float 3.000000e+00, %8844
  %8864 = fmul fast float %8861, %8863
  %8865 = fmul fast float %8844, 3.000000e+00
  %8866 = fmul fast float %8862, 3.000000e+00
  %8867 = fmul fast float %8861, 6.000000e+00
  %8868 = fsub fast float %8866, %8867
  %8869 = fadd fast float %8868, 4.000000e+00
  %8870 = fmul fast float %8869, 0x3FC5555560000000
  %8871 = fmul fast float %8862, -3.000000e+00
  %8872 = fadd fast float %8861, %8844
  %8873 = fmul fast float %8872, 3.000000e+00
  %8874 = fadd fast float %8871, 1.000000e+00
  %8875 = fadd fast float %8874, %8873
  %8876 = fmul fast float %8862, 0x3FC5555560000000
  %8877 = fadd fast float %8843, 1.000000e+00
  %8878 = fsub fast float 1.000000e+00, %8849
  %8879 = fadd fast float %8878, %8848
  %8880 = fadd fast float %8879, %8853
  %8881 = fmul fast float %8880, 0x3FC5555560000000
  %8882 = fdiv fast float %8854, %8881
  %8883 = fsub fast float %8877, %8882
  %8884 = fsub fast float 1.000000e+00, %8843
  %8885 = fadd fast float %8859, %8846
  %8886 = fmul fast float %8885, 0x3FC5555560000000
  %8887 = fdiv fast float %8860, %8886
  %8888 = fadd fast float %8884, %8887
  %8889 = fadd fast float %8844, 1.000000e+00
  %8890 = fsub fast float 1.000000e+00, %8865
  %8891 = fadd fast float %8890, %8864
  %8892 = fadd fast float %8891, %8869
  %8893 = fmul fast float %8892, 0x3FC5555560000000
  %8894 = fdiv fast float %8870, %8893
  %8895 = fsub fast float %8889, %8894
  %8896 = fsub fast float 1.000000e+00, %8844
  %8897 = fadd fast float %8875, %8862
  %8898 = fmul fast float %8897, 0x3FC5555560000000
  %8899 = fdiv fast float %8876, %8898
  %8900 = fadd fast float %8899, %8896
  %8901 = fmul fast float %8883, %8837
  %8902 = fsub fast float %8758, %8901
  %8903 = fmul fast float %8888, %8837
  %8904 = fadd fast float %8903, %8758
  %8905 = fmul fast float %8900, %8838
  %8906 = fadd fast float %8905, %8759
  %8907 = fmul fast float %8895, %8838
  %8908 = fsub fast float %8759, %8907
  %8909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8902, float %8908, float %8826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8910 = extractvalue %dx.types.ResRet.f32 %8909, 0
  %8911 = extractvalue %dx.types.ResRet.f32 %8909, 1
  %8912 = extractvalue %dx.types.ResRet.f32 %8909, 2
  %8913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8904, float %8908, float %8826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8914 = extractvalue %dx.types.ResRet.f32 %8913, 0
  %8915 = extractvalue %dx.types.ResRet.f32 %8913, 1
  %8916 = extractvalue %dx.types.ResRet.f32 %8913, 2
  %8917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8902, float %8906, float %8826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8918 = extractvalue %dx.types.ResRet.f32 %8917, 0
  %8919 = extractvalue %dx.types.ResRet.f32 %8917, 1
  %8920 = extractvalue %dx.types.ResRet.f32 %8917, 2
  %8921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8904, float %8906, float %8826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8922 = extractvalue %dx.types.ResRet.f32 %8921, 0
  %8923 = extractvalue %dx.types.ResRet.f32 %8921, 1
  %8924 = extractvalue %dx.types.ResRet.f32 %8921, 2
  %8925 = fsub fast float %8918, %8910
  %8926 = fsub fast float %8919, %8911
  %8927 = fsub fast float %8920, %8912
  %8928 = fmul fast float %8925, %8898
  %8929 = fmul fast float %8926, %8898
  %8930 = fmul fast float %8927, %8898
  %8931 = fadd fast float %8928, %8910
  %8932 = fadd fast float %8929, %8911
  %8933 = fadd fast float %8930, %8912
  %8934 = fsub fast float %8922, %8914
  %8935 = fsub fast float %8923, %8915
  %8936 = fsub fast float %8924, %8916
  %8937 = fmul fast float %8934, %8898
  %8938 = fmul fast float %8935, %8898
  %8939 = fmul fast float %8936, %8898
  %8940 = fsub fast float %8914, %8931
  %8941 = fadd fast float %8940, %8937
  %8942 = fsub fast float %8915, %8932
  %8943 = fadd fast float %8942, %8938
  %8944 = fsub fast float %8916, %8933
  %8945 = fadd fast float %8944, %8939
  %8946 = fmul fast float %8941, %8886
  %8947 = fmul fast float %8943, %8886
  %8948 = fmul fast float %8945, %8886
  %8949 = fadd fast float %8946, %8931
  %8950 = fadd fast float %8947, %8932
  %8951 = fadd fast float %8948, %8933
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 1
  %8954 = fmul fast float %8949, %8953
  %8955 = fmul fast float %8950, %8953
  %8956 = fmul fast float %8951, %8953
  br label %8957

; <label>:8957                                    ; preds = %8788, %8745
  %8958 = phi float [ %8828, %8788 ], [ 1.000000e+00, %8745 ]
  %8959 = phi float [ %8829, %8788 ], [ 1.000000e+00, %8745 ]
  %8960 = phi float [ %8830, %8788 ], [ 1.000000e+00, %8745 ]
  %8961 = phi float [ %8954, %8788 ], [ 0.000000e+00, %8745 ]
  %8962 = phi float [ %8955, %8788 ], [ 0.000000e+00, %8745 ]
  %8963 = phi float [ %8956, %8788 ], [ 0.000000e+00, %8745 ]
  %8964 = fmul fast float %8961, %7299
  %8965 = fmul fast float %8962, %7299
  %8966 = fmul fast float %8963, %7299
  %8967 = fmul fast float %8958, %8752
  %8968 = call float @dx.op.dot3.f32(i32 55, float %8958, float %8959, float %8960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8969 = call float @dx.op.dot3.f32(i32 55, float %8964, float %8965, float %8966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8970 = select i1 %269, float %8968, float %8958
  %8971 = select i1 %269, float %8968, float %8959
  %8972 = select i1 %269, float 1.000000e+00, float %8960
  %8973 = select i1 %269, float %8969, float %8964
  %8974 = select i1 %269, float 0.000000e+00, float %8965
  %8975 = select i1 %269, float 0.000000e+00, float %8966
  %8976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.i32 %8976, 3
  %8978 = and i32 %8977, 3
  %8979 = icmp ne i32 %8978, 0
  %8980 = and i32 %8977, 4
  %8981 = icmp ne i32 %8980, 0
  %8982 = and i1 %8979, %8981
  %8983 = and i1 %269, %8982
  br i1 %8983, label %8984, label %8990

; <label>:8984                                    ; preds = %8957
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 1
  %8987 = fadd fast float %8967, -1.000000e+00
  %8988 = fmul fast float %8986, %8987
  %8989 = fadd fast float %8988, 1.000000e+00
  br label %8990

; <label>:8990                                    ; preds = %8984, %8957
  %8991 = phi float [ %8989, %8984 ], [ %8967, %8957 ]
  %8992 = fadd fast float %8749, %8746
  %8993 = fmul fast float %8970, %8992
  %8994 = fadd fast float %8993, %8973
  %8995 = fadd fast float %8750, %8747
  %8996 = fmul fast float %8971, %8995
  %8997 = fadd fast float %8996, %8974
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 0
  br i1 %269, label %9000, label %9024

; <label>:9000                                    ; preds = %8990
  %9001 = fadd fast float %8994, %8997
  %9002 = fmul fast float %8999, %9001
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 3
  %9005 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %9006 = fsub fast float %7308, %7302
  %9007 = fadd fast float %9006, %7309
  %9008 = fsub fast float %9007, %9005
  %9009 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %9010 = fmul fast float %9008, %9009
  %9011 = call float @dx.op.unary.f32(i32 7, float %9010)  ; Saturate(value)
  %9012 = fsub fast float %9011, %9004
  %9013 = fmul fast float %9012, %8991
  %9014 = fadd fast float %9013, %9004
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 0
  %9017 = fsub fast float %9014, %9016
  %9018 = fmul fast float %9017, 1.000000e+01
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = fsub fast float %4093, %7299
  %9021 = fmul fast float %9019, %9020
  %9022 = fadd fast float %9021, %7299
  %9023 = fmul fast float %9022, %9014
  br label %9048

; <label>:9024                                    ; preds = %8990
  %9025 = fadd fast float %8751, %8748
  %9026 = fmul fast float %8972, %9025
  %9027 = fadd fast float %9026, %8975
  %9028 = fmul fast float %8999, %8994
  %9029 = fmul fast float %8999, %8997
  %9030 = fmul fast float %8999, %9027
  %9031 = call float @dx.op.binary.f32(i32 35, float %9029, float %9030)  ; FMax(a,b)
  %9032 = call float @dx.op.binary.f32(i32 35, float %9028, float %9031)  ; FMax(a,b)
  %9033 = call float @dx.op.binary.f32(i32 35, float %9032, float %7299)  ; FMax(a,b)
  %9034 = fcmp fast ugt float %9033, 0x3F10000000000000
  br i1 %9034, label %9036, label %9035

; <label>:9035                                    ; preds = %9024
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9036

; <label>:9036                                    ; preds = %9035, %9024
  %9037 = add i32 %56, 356
  %9038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9037, i32 undef)  ; BufferLoad(srv,index,wot)
  %9039 = extractvalue %dx.types.ResRet.i32 %9038, 0
  %9040 = and i32 %9039, 32
  %9041 = icmp eq i32 %9040, 0
  br i1 %9041, label %9048, label %9042

; <label>:9042                                    ; preds = %9036
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 0
  %9045 = fmul fast float %9044, 0x3FE99999A0000000
  %9046 = fadd fast float %9044, %9028
  %9047 = fadd fast float %9045, %9030
  br label %9048

; <label>:9048                                    ; preds = %9042, %9036, %9000
  %9049 = phi float [ %9002, %9000 ], [ %9046, %9042 ], [ %9028, %9036 ]
  %9050 = phi float [ %9023, %9000 ], [ %9029, %9042 ], [ %9029, %9036 ]
  %9051 = phi float [ %9022, %9000 ], [ %9047, %9042 ], [ %9030, %9036 ]
  %9052 = phi float [ %9022, %9000 ], [ %7299, %9042 ], [ %7299, %9036 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9053 = call float @dx.op.binary.f32(i32 36, float %9049, float 3.225500e+04)  ; FMin(a,b)
  %9054 = call float @dx.op.binary.f32(i32 36, float %9050, float 3.225500e+04)  ; FMin(a,b)
  %9055 = call float @dx.op.binary.f32(i32 36, float %9051, float 3.225500e+04)  ; FMin(a,b)
  %9056 = call float @dx.op.binary.f32(i32 36, float %9052, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9053)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9054)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9055)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9056)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

