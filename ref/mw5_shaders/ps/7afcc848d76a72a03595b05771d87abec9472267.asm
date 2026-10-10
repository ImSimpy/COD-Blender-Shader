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
; ENTITY_IDS               0    yz        12     NONE    uint    y  
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
; shader hash: 42564e2b849794ad1e429fd278901fc8
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
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture    byte         r/o      T8     t18,space1     1
;                                   texture    byte         r/o      T9     t19,space1     1
;                                   texture    byte         r/o     T10     t20,space1     1
;                                   texture    byte         r/o     T11     t21,space1     1
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26      t1,space1     1
;                                   texture     f32          1d     T27     t32,space2     1
;                                   texture     f32     2darray     T28      t8,space2     1
;                                   texture     f32          2d     T29      t1,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = alloca [4 x i32], align 4
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = alloca [12 x float], align 4
  %99 = alloca [12 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fmul fast float %105, %94
  %107 = fmul fast float %105, %95
  %108 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = bitcast float %108 to i32
  %110 = ashr i32 %109, 1
  %111 = sub nsw i32 1597250115, %110
  %112 = bitcast i32 %111 to float
  %113 = fmul fast float %112, %85
  %114 = fmul fast float %112, %86
  %115 = fmul fast float %112, %87
  %116 = fmul fast float %86, %83
  %117 = fmul fast float %87, %82
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %87, %81
  %120 = fmul fast float %85, %83
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %85, %82
  %123 = fmul fast float %86, %81
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %84
  %126 = fmul fast float %121, %84
  %127 = fmul fast float %124, %84
  %128 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = bitcast float %128 to i32
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 1597250115, %130
  %132 = bitcast i32 %131 to float
  %133 = fmul fast float %132, %74
  %134 = fmul fast float %132, %75
  %135 = fmul fast float %132, %76
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = fcmp fast une float %137, 0.000000e+00
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %106, 2.000000e+00
  %143 = fmul fast float %142, %140
  %144 = fmul fast float %107, 2.000000e+00
  %145 = fmul fast float %144, %141
  %146 = fsub fast float 1.000000e+00, %143
  %147 = fsub fast float 1.000000e+00, %145
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %138, float %149, float %153
  %157 = select i1 %138, float %150, float %154
  %158 = select i1 %138, float %151, float %155
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fmul fast float %158, %146
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %138, float %163, float %167
  %171 = select i1 %138, float %164, float %168
  %172 = select i1 %138, float %165, float %169
  %173 = fmul fast float %170, %147
  %174 = fmul fast float %171, %147
  %175 = fmul fast float %172, %147
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = select i1 %138, float %180, float %184
  %188 = select i1 %138, float %181, float %185
  %189 = select i1 %138, float %182, float %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fmul fast float %190, %97
  %194 = fmul fast float %191, %97
  %195 = fmul fast float %192, %97
  %196 = shl i32 %56, 5
  %197 = add i32 %196, 4194304
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = extractvalue %dx.types.ResRet.i32 %198, 2
  %202 = extractvalue %dx.types.ResRet.i32 %198, 3
  %203 = add i32 %196, 4194320
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = bitcast i32 %205 to float
  %208 = bitcast i32 %206 to float
  %209 = fmul fast float %106, 5.000000e-01
  %210 = fmul fast float %107, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %106
  %233 = fmul fast float %231, %107
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 114688
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, float %232, float 0.000000e+00
  %239 = select i1 %237, float %233, float 0.000000e+00
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fmul fast float %241, 2.550000e+02
  %243 = fptoui float %242 to i32
  %244 = select i1 %237, i32 %243, i32 0
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 3
  %247 = and i32 %246, 3
  %248 = icmp ne i32 %247, 0
  %249 = and i32 %246, 4
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %248, %250
  br i1 %251, label %252, label %261

; <label>:252                                     ; preds = %0
  %253 = fmul fast float %141, %107
  %254 = fmul fast float %140, %106
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %254, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fsub fast float 1.000000e+00, %256
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = fcmp fast olt float %257, %259
  br label %264

; <label>:261                                     ; preds = %0
  %262 = icmp eq i32 %249, 0
  %263 = and i1 %248, %262
  br label %264

; <label>:264                                     ; preds = %261, %252
  %265 = phi i1 [ %260, %252 ], [ %263, %261 ]
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = fmul fast float %267, 0x3FE3C6EF40000000
  %269 = frem fast float %106, 2.560000e+02
  %270 = frem fast float %107, 2.560000e+02
  %271 = fptoui float %269 to i32
  %272 = fptoui float %270 to i32
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %271, i32 %272, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = fadd fast float %274, %268
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = add i32 %55, 156
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %55, 216
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %55, 36
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %55, 288
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %55, 172
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %55, 232
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %55, 52
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %55, 304
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %55, 188
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %55, 248
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %55, 68
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %55, 320
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %55, 204
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = shl i32 %405, 4
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %405, 7
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %405, 22
  %413 = shl nuw nsw i32 %412, 5
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %55, 264
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = lshr i32 %417, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %417, 16
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = add i32 %55, 84
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %55, 336
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 65535
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %438, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = fmul fast float %440, 0x3F50624DE0000000
  %444 = fmul fast float %442, 0x3F50624DE0000000
  %445 = add i32 %55, 348
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 32
  %449 = icmp eq i32 %448, 0
  %450 = and i32 %447, 64
  %451 = icmp eq i32 %450, 0
  %452 = and i32 %447, 128
  %453 = icmp eq i32 %452, 0
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 2
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %473, label %458

; <label>:458                                     ; preds = %264
  %459 = add i32 %55, 508
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %461, 0
  %463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %463, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = fmul fast float %468, %90
  %470 = fmul fast float %465, %91
  %471 = fmul fast float %466, %92
  %472 = fmul fast float %467, %93
  br label %473

; <label>:473                                     ; preds = %458, %264
  %474 = phi float [ %93, %264 ], [ %472, %458 ]
  %475 = phi float [ %92, %264 ], [ %471, %458 ]
  %476 = phi float [ %91, %264 ], [ %470, %458 ]
  %477 = phi float [ %90, %264 ], [ %469, %458 ]
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 2
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %501, label %482

; <label>:482                                     ; preds = %473
  %483 = add i32 %55, 44
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %476, float 1.000000e+00
  %489 = add i32 %55, 60
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %475, float 1.000000e+00
  %495 = add i32 %55, 76
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 1
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %499, float %474, float 1.000000e+00
  br label %501

; <label>:501                                     ; preds = %482, %473
  %502 = phi float [ %474, %473 ], [ %500, %482 ]
  %503 = phi float [ %475, %473 ], [ %494, %482 ]
  %504 = phi float [ %476, %473 ], [ %488, %482 ]
  %505 = lshr i32 %479, 20
  %506 = and i32 %505, 3
  %507 = add nuw nsw i32 %506, 1
  %508 = add i32 %55, 24
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %55, 28
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = or i32 %513, %510
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %1151, label %516

; <label>:516                                     ; preds = %501
  %517 = and i32 %510, 262144
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %61, float 1.000000e+00
  %520 = select i1 %518, float %62, float 0.000000e+00
  %521 = select i1 %518, float %63, float 0.000000e+00
  %522 = select i1 %518, float %64, float 1.000000e+00
  %523 = select i1 %518, float %65, float %88
  %524 = select i1 %518, float %66, float %89
  %525 = add i32 %55, 284
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = fmul fast float %529, 0x3F50624DE0000000
  %531 = add i32 %55, 88
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 16
  %535 = and i32 %534, 255
  %536 = lshr i32 %533, 24
  %537 = add i32 %55, 292
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 65535
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %539, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = add i32 %55, 32
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 22
  %548 = shl nuw nsw i32 %547, 5
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = shl i32 %546, 4
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %546, 7
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %557, 1.000000e+03
  %559 = fmul fast float %317, %558
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fadd fast float %560, %307
  %562 = fmul fast float %318, %558
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fadd fast float %563, %309
  %565 = fmul fast float %530, %558
  %566 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %567 = fmul fast float %566, 0x401921FB60000000
  %568 = fadd fast float %567, %549
  %569 = call float @dx.op.unary.f32(i32 13, float %568)  ; Sin(value)
  %570 = call float @dx.op.unary.f32(i32 12, float %568)  ; Cos(value)
  %571 = fsub fast float -0.000000e+00, %569
  %572 = fadd fast float %523, -5.000000e-01
  %573 = fadd fast float %524, -5.000000e-01
  %574 = fmul fast float %541, %572
  %575 = fmul fast float %543, %573
  %576 = fadd fast float %574, 5.000000e-01
  %577 = fadd fast float %575, 5.000000e-01
  %578 = fmul fast float %552, %576
  %579 = fmul fast float %555, %577
  %580 = fmul fast float %570, %578
  %581 = call float @dx.op.tertiary.f32(i32 46, float %571, float %579, float %580)  ; FMad(a,b,c)
  %582 = fmul fast float %569, %578
  %583 = call float @dx.op.tertiary.f32(i32 46, float %570, float %579, float %582)  ; FMad(a,b,c)
  %584 = fadd fast float %561, %581
  %585 = fadd fast float %564, %583
  %586 = icmp ugt i32 %535, 1
  %587 = icmp ugt i32 %533, 33554431
  %588 = or i1 %587, %586
  br i1 %588, label %589, label %614

; <label>:589                                     ; preds = %516
  %590 = add i32 %55, 228
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = fmul fast float %557, %594
  %596 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %597 = mul nuw nsw i32 %535, %536
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %596, %598
  %600 = call float @dx.op.unary.f32(i32 27, float %599)  ; Round_ni(value)
  %601 = fptoui float %600 to i32
  %602 = urem i32 %601, %535
  %603 = udiv i32 %601, %536
  %604 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %605 = call float @dx.op.unary.f32(i32 22, float %585)  ; Frc(value)
  %606 = uitofp i32 %602 to float
  %607 = uitofp i32 %603 to float
  %608 = fadd fast float %604, %606
  %609 = fadd fast float %605, %607
  %610 = uitofp i32 %535 to float
  %611 = uitofp i32 %536 to float
  %612 = fdiv fast float %608, %610
  %613 = fdiv fast float %609, %611
  br label %614

; <label>:614                                     ; preds = %589, %516
  %615 = phi float [ %612, %589 ], [ %584, %516 ]
  %616 = phi float [ %613, %589 ], [ %585, %516 ]
  %617 = and i32 %510, 256
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %665, label %619

; <label>:619                                     ; preds = %614
  %620 = add i32 %55, 440
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = add i32 %55, 100
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = shl i32 %629, 4
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %629, 7
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = fsub fast float 1.000000e+00, %477
  %637 = call float @dx.op.binary.f32(i32 35, float %636, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %638 = bitcast float %477 to i32
  %639 = sitofp i32 %638 to float
  %640 = fadd fast float %639, 0xC1CFBF8940000000
  %641 = fmul fast float %635, %640
  %642 = fadd fast float %641, 0x41CFBF8940000000
  %643 = fptosi float %642 to i32
  %644 = bitcast i32 %643 to float
  %645 = bitcast float %637 to i32
  %646 = sitofp i32 %645 to float
  %647 = fadd fast float %646, 0xC1CFBF8940000000
  %648 = fmul fast float %647, %635
  %649 = fadd fast float %648, 0x41CFBF8940000000
  %650 = fptosi float %649 to i32
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %644, %632
  %653 = fmul fast float %651, %632
  %654 = fsub fast float %637, %652
  %655 = fadd fast float %653, %637
  %656 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %657 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %658 = fsub fast float %626, %656
  %659 = fsub fast float %657, %656
  %660 = bitcast float %659 to i32
  %661 = sub nsw i32 2129859010, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %662, %658
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  br label %665

; <label>:665                                     ; preds = %619, %614
  %666 = phi float [ %664, %619 ], [ %477, %614 ]
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 128
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %687, label %671

; <label>:671                                     ; preds = %665
  %672 = add i32 %55, 424
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 524288
  %682 = icmp ne i32 %681, 0
  %683 = fcmp fast ogt float %678, 0x3FE0101020000000
  %684 = select i1 %683, float 1.000000e+00, float 0.000000e+00
  %685 = select i1 %682, float %684, float %678
  %686 = fmul fast float %685, %666
  br label %687

; <label>:687                                     ; preds = %671, %665
  %688 = phi float [ %686, %671 ], [ %666, %665 ]
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 16
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %891, label %693

; <label>:693                                     ; preds = %687
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %55, 376
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = extractvalue %dx.types.ResRet.f32 %701, 3
  %706 = and i32 %695, 255
  %707 = uitofp i32 %706 to float
  %708 = lshr i32 %695, 8
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %705, %707
  %712 = fadd fast float %711, %710
  %713 = fmul fast float %712, 0x3F70101000000000
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 512
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %726, label %718

; <label>:718                                     ; preds = %693
  %719 = add i32 %55, 460
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %721, 0
  %723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %723, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  br label %726

; <label>:726                                     ; preds = %718, %693
  %727 = phi float [ %725, %718 ], [ 1.000000e+00, %693 ]
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 33554432
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %838, label %732

; <label>:732                                     ; preds = %726
  %733 = add i32 %55, 224
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 65535
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %735, 16
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = add i32 %55, 228
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 65535
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 24
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = and i32 %746, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = lshr i32 %746, 8
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %746, 16
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = add i32 %55, 220
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 24
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = and i32 %763, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %763, 8
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %763, 16
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = bitcast float %702 to i32
  %779 = ashr i32 %778, 1
  %780 = sub nsw i32 1597463174, %779
  %781 = bitcast i32 %780 to float
  %782 = fmul fast float %702, 5.000000e-01
  %783 = fmul fast float %781, %781
  %784 = fmul fast float %783, %782
  %785 = fsub fast float 1.500000e+00, %784
  %786 = fmul fast float %781, %702
  %787 = fmul fast float %786, %785
  %788 = bitcast float %703 to i32
  %789 = ashr i32 %788, 1
  %790 = sub nsw i32 1597463174, %789
  %791 = bitcast i32 %790 to float
  %792 = fmul fast float %703, 5.000000e-01
  %793 = fmul fast float %791, %791
  %794 = fmul fast float %793, %792
  %795 = fsub fast float 1.500000e+00, %794
  %796 = fmul fast float %791, %703
  %797 = fmul fast float %796, %795
  %798 = bitcast float %704 to i32
  %799 = ashr i32 %798, 1
  %800 = sub nsw i32 1597463174, %799
  %801 = bitcast i32 %800 to float
  %802 = fmul fast float %704, 5.000000e-01
  %803 = fmul fast float %801, %801
  %804 = fmul fast float %803, %802
  %805 = fsub fast float 1.500000e+00, %804
  %806 = fmul fast float %801, %704
  %807 = fmul fast float %806, %805
  %808 = fsub fast float %787, %769
  %809 = fsub fast float %797, %773
  %810 = fsub fast float %807, %777
  %811 = fmul fast float %808, %737
  %812 = fmul fast float %809, %739
  %813 = fmul fast float %810, %744
  %814 = fadd fast float %811, %752
  %815 = fadd fast float %812, %756
  %816 = fadd fast float %813, %760
  %817 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %818 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %819 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %820 = fmul fast float %817, %817
  %821 = fmul fast float %818, %818
  %822 = fmul fast float %819, %819
  %823 = fsub fast float %820, %702
  %824 = fsub fast float %821, %703
  %825 = fsub fast float %822, %704
  %826 = fmul fast float %823, %727
  %827 = fmul fast float %824, %727
  %828 = fmul fast float %825, %727
  %829 = fadd fast float %826, %702
  %830 = fadd fast float %827, %703
  %831 = fadd fast float %828, %704
  %832 = fadd fast float %749, %713
  %833 = fsub fast float %832, %766
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fsub fast float %834, %713
  %836 = fmul fast float %835, %727
  %837 = fadd fast float %836, %713
  br label %891

; <label>:838                                     ; preds = %726
  %839 = and i32 %729, 134217728
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %875, label %841

; <label>:841                                     ; preds = %838
  %842 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %844 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %845 = fadd fast float %842, -5.000000e-01
  %846 = fadd fast float %843, -5.000000e-01
  %847 = fadd fast float %844, -5.000000e-01
  %848 = fmul fast float %845, %727
  %849 = fmul fast float %846, %727
  %850 = fmul fast float %847, %727
  %851 = fadd fast float %848, 5.000000e-01
  %852 = fadd fast float %849, 5.000000e-01
  %853 = fadd fast float %850, 5.000000e-01
  %854 = call float @dx.op.unary.f32(i32 24, float %702)  ; Sqrt(value)
  %855 = call float @dx.op.unary.f32(i32 24, float %703)  ; Sqrt(value)
  %856 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %857 = fmul fast float %851, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %854
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %854
  %862 = fmul fast float %852, 2.000000e+00
  %863 = fsub fast float 1.000000e+00, %862
  %864 = fmul fast float %863, %855
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, %855
  %867 = fmul fast float %853, 2.000000e+00
  %868 = fsub fast float 1.000000e+00, %867
  %869 = fmul fast float %868, %856
  %870 = fadd fast float %869, %867
  %871 = fmul fast float %870, %856
  %872 = fmul fast float %861, %861
  %873 = fmul fast float %866, %866
  %874 = fmul fast float %871, %871
  br label %891

; <label>:875                                     ; preds = %838
  %876 = fmul fast float %294, %294
  %877 = fmul fast float %298, %298
  %878 = fmul fast float %302, %302
  %879 = fadd fast float %876, -1.000000e+00
  %880 = fadd fast float %877, -1.000000e+00
  %881 = fadd fast float %878, -1.000000e+00
  %882 = fmul fast float %727, %879
  %883 = fmul fast float %727, %880
  %884 = fmul fast float %727, %881
  %885 = fadd fast float %882, 1.000000e+00
  %886 = fadd fast float %883, 1.000000e+00
  %887 = fadd fast float %884, 1.000000e+00
  %888 = fmul fast float %885, %702
  %889 = fmul fast float %886, %703
  %890 = fmul fast float %887, %704
  br label %891

; <label>:891                                     ; preds = %875, %841, %732, %687
  %892 = phi float [ %837, %732 ], [ %713, %841 ], [ %713, %875 ], [ 0x3FA23C0BE0000000, %687 ]
  %893 = phi float [ %829, %732 ], [ %872, %841 ], [ %888, %875 ], [ 1.000000e+00, %687 ]
  %894 = phi float [ %830, %732 ], [ %873, %841 ], [ %889, %875 ], [ 1.000000e+00, %687 ]
  %895 = phi float [ %831, %732 ], [ %874, %841 ], [ %890, %875 ], [ 1.000000e+00, %687 ]
  %896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.i32 %896, 1
  %898 = and i32 %897, 1
  %899 = icmp ne i32 %898, 0
  %900 = add i32 %55, 356
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 32
  %904 = icmp ne i32 %903, 0
  %905 = and i1 %899, %904
  %906 = select i1 %905, float 1.000000e+00, float %893
  %907 = select i1 %905, float 0x3FD3333340000000, float %894
  %908 = select i1 %905, float 0x3FD3333340000000, float %895
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 32
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %985, label %913

; <label>:913                                     ; preds = %891
  %914 = add i32 %55, 92
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %55, 392
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %919, 0
  %921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %921, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = extractvalue %dx.types.ResRet.f32 %922, 3
  %927 = and i32 %916, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %916, 8
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %916, 16
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F70101000000000
  %936 = fmul fast float %923, %928
  %937 = fadd fast float %936, %931
  %938 = fmul fast float %937, 0x3F70101000000000
  %939 = fadd fast float %924, -5.000000e-01
  %940 = fadd fast float %926, -5.000000e-01
  %941 = fmul fast float %939, %935
  %942 = fmul fast float %940, %935
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fadd fast float %942, 5.000000e-01
  %945 = fmul fast float %943, 2.000000e+00
  %946 = fadd fast float %945, -1.000000e+00
  %947 = fmul fast float %944, 2.000000e+00
  %948 = fadd fast float %947, -1.000000e+00
  %949 = fadd fast float %946, %948
  %950 = fmul fast float %949, 5.000000e-01
  %951 = fsub fast float %946, %948
  %952 = fmul fast float %951, 5.000000e-01
  %953 = call float @dx.op.unary.f32(i32 6, float %950)  ; FAbs(value)
  %954 = fsub fast float 1.000000e+00, %953
  %955 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %956 = fsub fast float %954, %955
  %957 = call float @dx.op.dot3.f32(i32 55, float %950, float %952, float %956, float %950, float %952, float %956)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call float @dx.op.unary.f32(i32 25, float %957)  ; Rsqrt(value)
  %959 = fmul fast float %950, %958
  %960 = fmul fast float %952, %958
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 67108864
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %981, label %965

; <label>:965                                     ; preds = %913
  %966 = add i32 %55, 280
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %968, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = fsub fast float %938, %976
  %978 = fmul fast float %977, %970
  %979 = fadd fast float %978, %974
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  br label %981

; <label>:981                                     ; preds = %965, %913
  %982 = phi float [ %980, %965 ], [ %938, %913 ]
  %983 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %519, float %520)  ; Dot2(ax,ay,bx,by)
  %984 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %521, float %522)  ; Dot2(ax,ay,bx,by)
  br label %985

; <label>:985                                     ; preds = %981, %891
  %986 = phi float [ %982, %981 ], [ 0x3FD6666660000000, %891 ]
  %987 = phi float [ %983, %981 ], [ 0.000000e+00, %891 ]
  %988 = phi float [ %984, %981 ], [ 0.000000e+00, %891 ]
  %989 = phi float [ %925, %981 ], [ 1.000000e+00, %891 ]
  %990 = add i32 %55, 160
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 22
  %994 = shl nuw nsw i32 %993, 5
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 64
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1033, label %1000

; <label>:1000                                    ; preds = %985
  %1001 = add i32 %55, 408
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = add i32 %1003, 0
  %1005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 131072
  %1009 = icmp eq i32 %1008, 0
  %1010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1005, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = fmul fast float %1011, %282
  %1015 = fmul fast float %1012, %285
  %1016 = fmul fast float %1013, %288
  br i1 %1009, label %1023, label %1017

; <label>:1017                                    ; preds = %1000
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = fmul fast float %1019, %1014
  %1021 = fmul fast float %1019, %1015
  %1022 = fmul fast float %1019, %1016
  br label %1023

; <label>:1023                                    ; preds = %1017, %1000
  %1024 = phi float [ %1020, %1017 ], [ %1014, %1000 ]
  %1025 = phi float [ %1021, %1017 ], [ %1015, %1000 ]
  %1026 = phi float [ %1022, %1017 ], [ %1016, %1000 ]
  %1027 = fmul fast float %1024, %995
  %1028 = select i1 %265, float %1027, float %1024
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1025, float %1026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = select i1 %265, float 0.000000e+00, float %1024
  %1031 = select i1 %265, float %1029, float %1025
  %1032 = select i1 %265, float 0.000000e+00, float %1026
  br label %1033

; <label>:1033                                    ; preds = %1023, %985
  %1034 = phi float [ %1030, %1023 ], [ 0.000000e+00, %985 ]
  %1035 = phi float [ %1031, %1023 ], [ 0.000000e+00, %985 ]
  %1036 = phi float [ %1032, %1023 ], [ 0.000000e+00, %985 ]
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 1024
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1071, label %1041

; <label>:1041                                    ; preds = %1033
  %1042 = add i32 %55, 152
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F70101020000000
  %1048 = lshr i32 %1044, 8
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = lshr i32 %1044, 16
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = fmul fast float %1047, %1047
  %1057 = fmul fast float %1051, %1051
  %1058 = fmul fast float %1055, %1055
  %1059 = add i32 %55, 476
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = add i32 %1061, 0
  %1063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1063, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = fmul fast float %1056, %1065
  %1069 = fmul fast float %1057, %1066
  %1070 = fmul fast float %1058, %1067
  br label %1071

; <label>:1071                                    ; preds = %1041, %1033
  %1072 = phi float [ %1068, %1041 ], [ 0.000000e+00, %1033 ]
  %1073 = phi float [ %1069, %1041 ], [ 0.000000e+00, %1033 ]
  %1074 = phi float [ %1070, %1041 ], [ 0.000000e+00, %1033 ]
  %1075 = fcmp fast ogt float %1072, 0.000000e+00
  %1076 = fcmp fast ogt float %1073, 0.000000e+00
  %1077 = fcmp fast ogt float %1074, 0.000000e+00
  %1078 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1079 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1080 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = lshr i32 %1082, 7
  %1084 = and i32 %1083, 32752
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fmul fast float %1078, 0xBFE62E4300000000
  %1087 = fmul fast float %1086, %1085
  %1088 = fmul fast float %1079, 0xBFE62E4300000000
  %1089 = fmul fast float %1088, %1085
  %1090 = fmul fast float %1080, 0xBFE62E4300000000
  %1091 = fmul fast float %1090, %1085
  %1092 = select i1 %1075, float %1087, float 1.270000e+02
  %1093 = select i1 %1076, float %1089, float 1.270000e+02
  %1094 = select i1 %1077, float %1091, float 1.270000e+02
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 26624
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1135, label %1099

; <label>:1099                                    ; preds = %1071
  %1100 = add i32 %55, 492
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 1048576
  %1110 = icmp ne i32 %1109, 0
  %1111 = and i32 %1108, 2048
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1122, label %1113

; <label>:1113                                    ; preds = %1099
  %1114 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = shl i32 %1116, 4
  %1118 = and i32 %1117, 32752
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = fmul fast float %1119, %1114
  %1121 = call float @dx.op.binary.f32(i32 35, float %1120, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1122

; <label>:1122                                    ; preds = %1113, %1099
  %1123 = phi float [ %1121, %1113 ], [ 0x3F70101020000000, %1099 ]
  %1124 = and i32 %1108, 16384
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1135, label %1126

; <label>:1126                                    ; preds = %1122
  %1127 = add i32 %55, 96
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = lshr i32 %1129, 24
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1106, 0x3F70101020000000
  %1133 = select i1 %1110, float 0x3F70101020000000, float %1132
  %1134 = fmul fast float %1133, %1131
  br label %1135

; <label>:1135                                    ; preds = %1126, %1122, %1071
  %1136 = phi float [ %1123, %1126 ], [ %1123, %1122 ], [ 0x3F70101020000000, %1071 ]
  %1137 = phi float [ %1134, %1126 ], [ 0.000000e+00, %1122 ], [ 0.000000e+00, %1071 ]
  %1138 = add i32 %55, 96
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 255
  %1142 = uitofp i32 %1141 to float
  %1143 = lshr i32 %1140, 8
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = call float @dx.op.dot3.f32(i32 55, float %906, float %907, float %908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = fmul fast float %1145, %1146
  %1148 = fadd fast float %1147, %1142
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  br label %1151

; <label>:1151                                    ; preds = %1135, %501
  %1152 = phi float [ 0.000000e+00, %501 ], [ %987, %1135 ]
  %1153 = phi float [ 0.000000e+00, %501 ], [ %988, %1135 ]
  %1154 = phi float [ 0.000000e+00, %501 ], [ %906, %1135 ]
  %1155 = phi float [ 0.000000e+00, %501 ], [ %907, %1135 ]
  %1156 = phi float [ 0.000000e+00, %501 ], [ %908, %1135 ]
  %1157 = phi float [ 0.000000e+00, %501 ], [ %1034, %1135 ]
  %1158 = phi float [ 0.000000e+00, %501 ], [ %1035, %1135 ]
  %1159 = phi float [ 0.000000e+00, %501 ], [ %1036, %1135 ]
  %1160 = phi float [ 0.000000e+00, %501 ], [ %1092, %1135 ]
  %1161 = phi float [ 0.000000e+00, %501 ], [ %1093, %1135 ]
  %1162 = phi float [ 0.000000e+00, %501 ], [ %1094, %1135 ]
  %1163 = phi float [ 0.000000e+00, %501 ], [ %892, %1135 ]
  %1164 = phi float [ 0.000000e+00, %501 ], [ %688, %1135 ]
  %1165 = phi float [ 0.000000e+00, %501 ], [ %986, %1135 ]
  %1166 = phi float [ 0.000000e+00, %501 ], [ %989, %1135 ]
  %1167 = phi float [ 0.000000e+00, %501 ], [ %1136, %1135 ]
  %1168 = phi float [ 0.000000e+00, %501 ], [ %1137, %1135 ]
  %1169 = phi float [ 0.000000e+00, %501 ], [ %1150, %1135 ]
  br i1 %449, label %2068, label %1170

; <label>:1170                                    ; preds = %1151
  %1171 = icmp ult i32 %507, 2
  %1172 = add i32 %55, 40
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %55, 44
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = or i32 %1177, %1174
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %2068, label %1180

; <label>:1180                                    ; preds = %1170
  %1181 = and i32 %1174, 262144
  %1182 = icmp ne i32 %1181, 0
  %1183 = select i1 %1182, float %61, float 1.000000e+00
  %1184 = select i1 %1182, float %62, float 0.000000e+00
  %1185 = select i1 %1182, float %63, float 0.000000e+00
  %1186 = select i1 %1182, float %64, float 1.000000e+00
  %1187 = select i1 %1182, float %65, float %88
  %1188 = select i1 %1182, float %66, float %89
  %1189 = add i32 %55, 300
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = lshr i32 %1191, 16
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = fmul fast float %1193, 0x3F50624DE0000000
  %1195 = add i32 %55, 104
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = lshr i32 %1197, 16
  %1199 = and i32 %1198, 255
  %1200 = lshr i32 %1197, 24
  %1201 = add i32 %55, 308
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 65535
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = lshr i32 %1203, 16
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = add i32 %55, 48
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = lshr i32 %1210, 22
  %1212 = shl nuw nsw i32 %1211, 5
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = shl i32 %1210, 4
  %1215 = and i32 %1214, 32752
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1210, 7
  %1218 = and i32 %1217, 32752
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1222 = fmul fast float %1221, 1.000000e+03
  %1223 = fmul fast float %359, %1222
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = fadd fast float %1224, %349
  %1226 = fmul fast float %360, %1222
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = fadd fast float %1227, %351
  %1229 = fmul fast float %1194, %1222
  %1230 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1231 = fmul fast float %1230, 0x401921FB60000000
  %1232 = fadd fast float %1231, %1213
  %1233 = call float @dx.op.unary.f32(i32 13, float %1232)  ; Sin(value)
  %1234 = call float @dx.op.unary.f32(i32 12, float %1232)  ; Cos(value)
  %1235 = fsub fast float -0.000000e+00, %1233
  %1236 = fadd fast float %1187, -5.000000e-01
  %1237 = fadd fast float %1188, -5.000000e-01
  %1238 = fmul fast float %1205, %1236
  %1239 = fmul fast float %1207, %1237
  %1240 = fadd fast float %1238, 5.000000e-01
  %1241 = fadd fast float %1239, 5.000000e-01
  %1242 = fmul fast float %1216, %1240
  %1243 = fmul fast float %1219, %1241
  %1244 = fmul fast float %1234, %1242
  %1245 = call float @dx.op.tertiary.f32(i32 46, float %1235, float %1243, float %1244)  ; FMad(a,b,c)
  %1246 = fmul fast float %1233, %1242
  %1247 = call float @dx.op.tertiary.f32(i32 46, float %1234, float %1243, float %1246)  ; FMad(a,b,c)
  %1248 = fadd fast float %1225, %1245
  %1249 = fadd fast float %1228, %1247
  %1250 = icmp ugt i32 %1199, 1
  %1251 = icmp ugt i32 %1197, 33554431
  %1252 = or i1 %1251, %1250
  br i1 %1252, label %1253, label %1278

; <label>:1253                                    ; preds = %1180
  %1254 = add i32 %55, 244
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 16
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = fmul fast float %1221, %1258
  %1260 = call float @dx.op.unary.f32(i32 22, float %1259)  ; Frc(value)
  %1261 = mul nuw nsw i32 %1199, %1200
  %1262 = uitofp i32 %1261 to float
  %1263 = fmul fast float %1260, %1262
  %1264 = call float @dx.op.unary.f32(i32 27, float %1263)  ; Round_ni(value)
  %1265 = fptoui float %1264 to i32
  %1266 = urem i32 %1265, %1199
  %1267 = udiv i32 %1265, %1200
  %1268 = call float @dx.op.unary.f32(i32 22, float %1248)  ; Frc(value)
  %1269 = call float @dx.op.unary.f32(i32 22, float %1249)  ; Frc(value)
  %1270 = uitofp i32 %1266 to float
  %1271 = uitofp i32 %1267 to float
  %1272 = fadd fast float %1268, %1270
  %1273 = fadd fast float %1269, %1271
  %1274 = uitofp i32 %1199 to float
  %1275 = uitofp i32 %1200 to float
  %1276 = fdiv fast float %1272, %1274
  %1277 = fdiv fast float %1273, %1275
  br label %1278

; <label>:1278                                    ; preds = %1253, %1180
  %1279 = phi float [ %1276, %1253 ], [ %1248, %1180 ]
  %1280 = phi float [ %1277, %1253 ], [ %1249, %1180 ]
  %1281 = and i32 %1174, 256
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1329, label %1283

; <label>:1283                                    ; preds = %1278
  %1284 = add i32 %55, 444
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = add i32 %1286, 0
  %1288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1288, %dx.types.Handle %103, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = add i32 %55, 116
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = shl i32 %1293, 4
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1293, 7
  %1298 = and i32 %1297, 32752
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = fsub fast float 1.000000e+00, %504
  %1301 = call float @dx.op.binary.f32(i32 35, float %1300, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1302 = bitcast float %504 to i32
  %1303 = sitofp i32 %1302 to float
  %1304 = fadd fast float %1303, 0xC1CFBF8940000000
  %1305 = fmul fast float %1299, %1304
  %1306 = fadd fast float %1305, 0x41CFBF8940000000
  %1307 = fptosi float %1306 to i32
  %1308 = bitcast i32 %1307 to float
  %1309 = bitcast float %1301 to i32
  %1310 = sitofp i32 %1309 to float
  %1311 = fadd fast float %1310, 0xC1CFBF8940000000
  %1312 = fmul fast float %1311, %1299
  %1313 = fadd fast float %1312, 0x41CFBF8940000000
  %1314 = fptosi float %1313 to i32
  %1315 = bitcast i32 %1314 to float
  %1316 = fmul fast float %1308, %1296
  %1317 = fmul fast float %1315, %1296
  %1318 = fsub fast float %1301, %1316
  %1319 = fadd fast float %1317, %1301
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1322 = fsub fast float %1290, %1320
  %1323 = fsub fast float %1321, %1320
  %1324 = bitcast float %1323 to i32
  %1325 = sub nsw i32 2129859010, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1326, %1322
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  br label %1329

; <label>:1329                                    ; preds = %1283, %1278
  %1330 = phi float [ %1328, %1283 ], [ %504, %1278 ]
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %1332, 128
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1351, label %1335

; <label>:1335                                    ; preds = %1329
  %1336 = add i32 %55, 428
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %1338, 0
  %1340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1340, %dx.types.Handle %103, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 524288
  %1346 = icmp ne i32 %1345, 0
  %1347 = fcmp fast ogt float %1342, 0x3FE0101020000000
  %1348 = select i1 %1347, float 1.000000e+00, float 0.000000e+00
  %1349 = select i1 %1346, float %1348, float %1342
  %1350 = fmul fast float %1349, %1330
  br label %1351

; <label>:1351                                    ; preds = %1335, %1329
  %1352 = phi float [ %1350, %1335 ], [ %1330, %1329 ]
  %1353 = fcmp fast ult float %1352, 0x3F70101020000000
  br i1 %1353, label %2068, label %1354

; <label>:1354                                    ; preds = %1351
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 16
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1557, label %1359

; <label>:1359                                    ; preds = %1354
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = add i32 %55, 380
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %1364, 0
  %1366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1366, %dx.types.Handle %102, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = extractvalue %dx.types.ResRet.f32 %1367, 3
  %1372 = and i32 %1361, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = lshr i32 %1361, 8
  %1375 = and i32 %1374, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1371, %1373
  %1378 = fadd fast float %1377, %1376
  %1379 = fmul fast float %1378, 0x3F70101000000000
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 512
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1392, label %1384

; <label>:1384                                    ; preds = %1359
  %1385 = add i32 %55, 464
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = add i32 %1387, 0
  %1389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1389, %dx.types.Handle %103, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  br label %1392

; <label>:1392                                    ; preds = %1384, %1359
  %1393 = phi float [ %1391, %1384 ], [ 1.000000e+00, %1359 ]
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 33554432
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1504, label %1398

; <label>:1398                                    ; preds = %1392
  %1399 = add i32 %55, 240
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 65535
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = lshr i32 %1401, 16
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = add i32 %55, 244
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = and i32 %1408, 65535
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = lshr i32 %1412, 24
  %1414 = uitofp i32 %1413 to float
  %1415 = fmul fast float %1414, 0x3F70101020000000
  %1416 = and i32 %1412, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = lshr i32 %1412, 8
  %1420 = and i32 %1419, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101020000000
  %1423 = lshr i32 %1412, 16
  %1424 = and i32 %1423, 255
  %1425 = uitofp i32 %1424 to float
  %1426 = fmul fast float %1425, 0x3F70101020000000
  %1427 = add i32 %55, 236
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1427, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = lshr i32 %1429, 24
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1431, 0x3F70101020000000
  %1433 = and i32 %1429, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = lshr i32 %1429, 8
  %1437 = and i32 %1436, 255
  %1438 = uitofp i32 %1437 to float
  %1439 = fmul fast float %1438, 0x3F70101020000000
  %1440 = lshr i32 %1429, 16
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101020000000
  %1444 = bitcast float %1368 to i32
  %1445 = ashr i32 %1444, 1
  %1446 = sub nsw i32 1597463174, %1445
  %1447 = bitcast i32 %1446 to float
  %1448 = fmul fast float %1368, 5.000000e-01
  %1449 = fmul fast float %1447, %1447
  %1450 = fmul fast float %1449, %1448
  %1451 = fsub fast float 1.500000e+00, %1450
  %1452 = fmul fast float %1447, %1368
  %1453 = fmul fast float %1452, %1451
  %1454 = bitcast float %1369 to i32
  %1455 = ashr i32 %1454, 1
  %1456 = sub nsw i32 1597463174, %1455
  %1457 = bitcast i32 %1456 to float
  %1458 = fmul fast float %1369, 5.000000e-01
  %1459 = fmul fast float %1457, %1457
  %1460 = fmul fast float %1459, %1458
  %1461 = fsub fast float 1.500000e+00, %1460
  %1462 = fmul fast float %1457, %1369
  %1463 = fmul fast float %1462, %1461
  %1464 = bitcast float %1370 to i32
  %1465 = ashr i32 %1464, 1
  %1466 = sub nsw i32 1597463174, %1465
  %1467 = bitcast i32 %1466 to float
  %1468 = fmul fast float %1370, 5.000000e-01
  %1469 = fmul fast float %1467, %1467
  %1470 = fmul fast float %1469, %1468
  %1471 = fsub fast float 1.500000e+00, %1470
  %1472 = fmul fast float %1467, %1370
  %1473 = fmul fast float %1472, %1471
  %1474 = fsub fast float %1453, %1435
  %1475 = fsub fast float %1463, %1439
  %1476 = fsub fast float %1473, %1443
  %1477 = fmul fast float %1474, %1403
  %1478 = fmul fast float %1475, %1405
  %1479 = fmul fast float %1476, %1410
  %1480 = fadd fast float %1477, %1418
  %1481 = fadd fast float %1478, %1422
  %1482 = fadd fast float %1479, %1426
  %1483 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1485 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1486 = fmul fast float %1483, %1483
  %1487 = fmul fast float %1484, %1484
  %1488 = fmul fast float %1485, %1485
  %1489 = fsub fast float %1486, %1368
  %1490 = fsub fast float %1487, %1369
  %1491 = fsub fast float %1488, %1370
  %1492 = fmul fast float %1489, %1393
  %1493 = fmul fast float %1490, %1393
  %1494 = fmul fast float %1491, %1393
  %1495 = fadd fast float %1492, %1368
  %1496 = fadd fast float %1493, %1369
  %1497 = fadd fast float %1494, %1370
  %1498 = fadd fast float %1415, %1379
  %1499 = fsub fast float %1498, %1432
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fsub fast float %1500, %1379
  %1502 = fmul fast float %1501, %1393
  %1503 = fadd fast float %1502, %1379
  br label %1557

; <label>:1504                                    ; preds = %1392
  %1505 = and i32 %1395, 134217728
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1541, label %1507

; <label>:1507                                    ; preds = %1504
  %1508 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1509 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1510 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1511 = fadd fast float %1508, -5.000000e-01
  %1512 = fadd fast float %1509, -5.000000e-01
  %1513 = fadd fast float %1510, -5.000000e-01
  %1514 = fmul fast float %1511, %1393
  %1515 = fmul fast float %1512, %1393
  %1516 = fmul fast float %1513, %1393
  %1517 = fadd fast float %1514, 5.000000e-01
  %1518 = fadd fast float %1515, 5.000000e-01
  %1519 = fadd fast float %1516, 5.000000e-01
  %1520 = call float @dx.op.unary.f32(i32 24, float %1368)  ; Sqrt(value)
  %1521 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1522 = call float @dx.op.unary.f32(i32 24, float %1370)  ; Sqrt(value)
  %1523 = fmul fast float %1517, 2.000000e+00
  %1524 = fsub fast float 1.000000e+00, %1523
  %1525 = fmul fast float %1524, %1520
  %1526 = fadd fast float %1525, %1523
  %1527 = fmul fast float %1526, %1520
  %1528 = fmul fast float %1518, 2.000000e+00
  %1529 = fsub fast float 1.000000e+00, %1528
  %1530 = fmul fast float %1529, %1521
  %1531 = fadd fast float %1530, %1528
  %1532 = fmul fast float %1531, %1521
  %1533 = fmul fast float %1519, 2.000000e+00
  %1534 = fsub fast float 1.000000e+00, %1533
  %1535 = fmul fast float %1534, %1522
  %1536 = fadd fast float %1535, %1533
  %1537 = fmul fast float %1536, %1522
  %1538 = fmul fast float %1527, %1527
  %1539 = fmul fast float %1532, %1532
  %1540 = fmul fast float %1537, %1537
  br label %1557

; <label>:1541                                    ; preds = %1504
  %1542 = fmul fast float %336, %336
  %1543 = fmul fast float %340, %340
  %1544 = fmul fast float %344, %344
  %1545 = fadd fast float %1542, -1.000000e+00
  %1546 = fadd fast float %1543, -1.000000e+00
  %1547 = fadd fast float %1544, -1.000000e+00
  %1548 = fmul fast float %1393, %1545
  %1549 = fmul fast float %1393, %1546
  %1550 = fmul fast float %1393, %1547
  %1551 = fadd fast float %1548, 1.000000e+00
  %1552 = fadd fast float %1549, 1.000000e+00
  %1553 = fadd fast float %1550, 1.000000e+00
  %1554 = fmul fast float %1551, %1368
  %1555 = fmul fast float %1552, %1369
  %1556 = fmul fast float %1553, %1370
  br label %1557

; <label>:1557                                    ; preds = %1541, %1507, %1398, %1354
  %1558 = phi float [ %1503, %1398 ], [ %1379, %1507 ], [ %1379, %1541 ], [ 0x3FA23C0BE0000000, %1354 ]
  %1559 = phi float [ %1495, %1398 ], [ %1538, %1507 ], [ %1554, %1541 ], [ 1.000000e+00, %1354 ]
  %1560 = phi float [ %1496, %1398 ], [ %1539, %1507 ], [ %1555, %1541 ], [ 1.000000e+00, %1354 ]
  %1561 = phi float [ %1497, %1398 ], [ %1540, %1507 ], [ %1556, %1541 ], [ 1.000000e+00, %1354 ]
  %1562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.i32 %1562, 1
  %1564 = and i32 %1563, 1
  %1565 = icmp ne i32 %1564, 0
  %1566 = add i32 %55, 356
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 32
  %1570 = icmp ne i32 %1569, 0
  %1571 = and i1 %1565, %1570
  %1572 = select i1 %1571, float 1.000000e+00, float %1559
  %1573 = select i1 %1571, float 0x3FD3333340000000, float %1560
  %1574 = select i1 %1571, float 0x3FD3333340000000, float %1561
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 32
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1651, label %1579

; <label>:1579                                    ; preds = %1557
  %1580 = add i32 %55, 108
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %55, 396
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = add i32 %1585, 0
  %1587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1587, %dx.types.Handle %102, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 0
  %1590 = extractvalue %dx.types.ResRet.f32 %1588, 1
  %1591 = extractvalue %dx.types.ResRet.f32 %1588, 2
  %1592 = extractvalue %dx.types.ResRet.f32 %1588, 3
  %1593 = and i32 %1582, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = lshr i32 %1582, 8
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = lshr i32 %1582, 16
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F70101000000000
  %1602 = fmul fast float %1589, %1594
  %1603 = fadd fast float %1602, %1597
  %1604 = fmul fast float %1603, 0x3F70101000000000
  %1605 = fadd fast float %1590, -5.000000e-01
  %1606 = fadd fast float %1592, -5.000000e-01
  %1607 = fmul fast float %1605, %1601
  %1608 = fmul fast float %1606, %1601
  %1609 = fadd fast float %1607, 5.000000e-01
  %1610 = fadd fast float %1608, 5.000000e-01
  %1611 = fmul fast float %1609, 2.000000e+00
  %1612 = fadd fast float %1611, -1.000000e+00
  %1613 = fmul fast float %1610, 2.000000e+00
  %1614 = fadd fast float %1613, -1.000000e+00
  %1615 = fadd fast float %1612, %1614
  %1616 = fmul fast float %1615, 5.000000e-01
  %1617 = fsub fast float %1612, %1614
  %1618 = fmul fast float %1617, 5.000000e-01
  %1619 = call float @dx.op.unary.f32(i32 6, float %1616)  ; FAbs(value)
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = call float @dx.op.unary.f32(i32 6, float %1618)  ; FAbs(value)
  %1622 = fsub fast float %1620, %1621
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1616, float %1618, float %1622, float %1616, float %1618, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = call float @dx.op.unary.f32(i32 25, float %1623)  ; Rsqrt(value)
  %1625 = fmul fast float %1616, %1624
  %1626 = fmul fast float %1618, %1624
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = and i32 %1628, 67108864
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1647, label %1631

; <label>:1631                                    ; preds = %1579
  %1632 = add i32 %55, 296
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1632, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 65535
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = and i32 %1638, 65535
  %1640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1639)  ; LegacyF16ToF32(value)
  %1641 = lshr i32 %1634, 16
  %1642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1641)  ; LegacyF16ToF32(value)
  %1643 = fsub fast float %1604, %1642
  %1644 = fmul fast float %1643, %1636
  %1645 = fadd fast float %1644, %1640
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  br label %1647

; <label>:1647                                    ; preds = %1631, %1579
  %1648 = phi float [ %1646, %1631 ], [ %1604, %1579 ]
  %1649 = call float @dx.op.dot2.f32(i32 54, float %1625, float %1626, float %1183, float %1184)  ; Dot2(ax,ay,bx,by)
  %1650 = call float @dx.op.dot2.f32(i32 54, float %1625, float %1626, float %1185, float %1186)  ; Dot2(ax,ay,bx,by)
  br label %1651

; <label>:1651                                    ; preds = %1647, %1557
  %1652 = phi float [ %1648, %1647 ], [ 0x3FD6666660000000, %1557 ]
  %1653 = phi float [ %1649, %1647 ], [ 0.000000e+00, %1557 ]
  %1654 = phi float [ %1650, %1647 ], [ 0.000000e+00, %1557 ]
  %1655 = phi float [ %1591, %1647 ], [ 1.000000e+00, %1557 ]
  %1656 = add i32 %55, 176
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = lshr i32 %1658, 22
  %1660 = shl nuw nsw i32 %1659, 5
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 64
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1699, label %1666

; <label>:1666                                    ; preds = %1651
  %1667 = add i32 %55, 412
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %1669, 0
  %1671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 131072
  %1675 = icmp eq i32 %1674, 0
  %1676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1671, %dx.types.Handle %102, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = fmul fast float %1677, %324
  %1681 = fmul fast float %1678, %327
  %1682 = fmul fast float %1679, %330
  br i1 %1675, label %1689, label %1683

; <label>:1683                                    ; preds = %1666
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = fmul fast float %1685, %1680
  %1687 = fmul fast float %1685, %1681
  %1688 = fmul fast float %1685, %1682
  br label %1689

; <label>:1689                                    ; preds = %1683, %1666
  %1690 = phi float [ %1686, %1683 ], [ %1680, %1666 ]
  %1691 = phi float [ %1687, %1683 ], [ %1681, %1666 ]
  %1692 = phi float [ %1688, %1683 ], [ %1682, %1666 ]
  %1693 = fmul fast float %1690, %1661
  %1694 = select i1 %265, float %1693, float %1690
  %1695 = call float @dx.op.dot3.f32(i32 55, float %1694, float %1691, float %1692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1696 = select i1 %265, float 0.000000e+00, float %1690
  %1697 = select i1 %265, float %1695, float %1691
  %1698 = select i1 %265, float 0.000000e+00, float %1692
  br label %1699

; <label>:1699                                    ; preds = %1689, %1651
  %1700 = phi float [ %1696, %1689 ], [ 0.000000e+00, %1651 ]
  %1701 = phi float [ %1697, %1689 ], [ 0.000000e+00, %1651 ]
  %1702 = phi float [ %1698, %1689 ], [ 0.000000e+00, %1651 ]
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 1024
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1737, label %1707

; <label>:1707                                    ; preds = %1699
  %1708 = add i32 %55, 168
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 255
  %1712 = uitofp i32 %1711 to float
  %1713 = fmul fast float %1712, 0x3F70101020000000
  %1714 = lshr i32 %1710, 8
  %1715 = and i32 %1714, 255
  %1716 = uitofp i32 %1715 to float
  %1717 = fmul fast float %1716, 0x3F70101020000000
  %1718 = lshr i32 %1710, 16
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = fmul fast float %1720, 0x3F70101020000000
  %1722 = fmul fast float %1713, %1713
  %1723 = fmul fast float %1717, %1717
  %1724 = fmul fast float %1721, %1721
  %1725 = add i32 %55, 480
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = add i32 %1727, 0
  %1729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1729, %dx.types.Handle %103, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = fmul fast float %1722, %1731
  %1735 = fmul fast float %1723, %1732
  %1736 = fmul fast float %1724, %1733
  br label %1737

; <label>:1737                                    ; preds = %1707, %1699
  %1738 = phi float [ %1734, %1707 ], [ 0.000000e+00, %1699 ]
  %1739 = phi float [ %1735, %1707 ], [ 0.000000e+00, %1699 ]
  %1740 = phi float [ %1736, %1707 ], [ 0.000000e+00, %1699 ]
  %1741 = fcmp fast ogt float %1738, 0.000000e+00
  %1742 = fcmp fast ogt float %1739, 0.000000e+00
  %1743 = fcmp fast ogt float %1740, 0.000000e+00
  %1744 = call float @dx.op.unary.f32(i32 23, float %1738)  ; Log(value)
  %1745 = call float @dx.op.unary.f32(i32 23, float %1739)  ; Log(value)
  %1746 = call float @dx.op.unary.f32(i32 23, float %1740)  ; Log(value)
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 7
  %1750 = and i32 %1749, 32752
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = fmul fast float %1744, 0xBFE62E4300000000
  %1753 = fmul fast float %1752, %1751
  %1754 = fmul fast float %1745, 0xBFE62E4300000000
  %1755 = fmul fast float %1754, %1751
  %1756 = fmul fast float %1746, 0xBFE62E4300000000
  %1757 = fmul fast float %1756, %1751
  %1758 = select i1 %1741, float %1753, float 1.270000e+02
  %1759 = select i1 %1742, float %1755, float 1.270000e+02
  %1760 = select i1 %1743, float %1757, float 1.270000e+02
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 26624
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %1801, label %1765

; <label>:1765                                    ; preds = %1737
  %1766 = add i32 %55, 496
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %1768, 0
  %1770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1770, %dx.types.Handle %103, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 1048576
  %1776 = icmp ne i32 %1775, 0
  %1777 = and i32 %1774, 2048
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1788, label %1779

; <label>:1779                                    ; preds = %1765
  %1780 = extractvalue %dx.types.ResRet.f32 %1771, 3
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = shl i32 %1782, 4
  %1784 = and i32 %1783, 32752
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = fmul fast float %1785, %1780
  %1787 = call float @dx.op.binary.f32(i32 35, float %1786, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1788

; <label>:1788                                    ; preds = %1779, %1765
  %1789 = phi float [ %1787, %1779 ], [ 0x3F70101020000000, %1765 ]
  %1790 = and i32 %1774, 16384
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1801, label %1792

; <label>:1792                                    ; preds = %1788
  %1793 = add i32 %55, 112
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = lshr i32 %1795, 24
  %1797 = uitofp i32 %1796 to float
  %1798 = fmul fast float %1772, 0x3F70101020000000
  %1799 = select i1 %1776, float 0x3F70101020000000, float %1798
  %1800 = fmul fast float %1799, %1797
  br label %1801

; <label>:1801                                    ; preds = %1792, %1788, %1737
  %1802 = phi float [ %1789, %1792 ], [ %1789, %1788 ], [ 0x3F70101020000000, %1737 ]
  %1803 = phi float [ %1800, %1792 ], [ 0.000000e+00, %1788 ], [ 0.000000e+00, %1737 ]
  %1804 = add i32 %55, 112
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = and i32 %1806, 255
  %1808 = uitofp i32 %1807 to float
  %1809 = lshr i32 %1806, 8
  %1810 = and i32 %1809, 255
  %1811 = uitofp i32 %1810 to float
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = fmul fast float %1811, %1812
  %1814 = fadd fast float %1813, %1808
  %1815 = fmul fast float %1814, 0x3F70101020000000
  %1816 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  br i1 %1171, label %1817, label %1852

; <label>:1817                                    ; preds = %1801
  %1818 = fmul fast float %1802, 2.000000e+00
  %1819 = fcmp fast olt float %1758, 1.270000e+02
  %1820 = fcmp fast olt float %1759, 1.270000e+02
  %1821 = fcmp fast olt float %1760, 1.270000e+02
  %1822 = fmul fast float %1758, 0xBFF7154760000000
  %1823 = fmul fast float %1822, %1818
  %1824 = fmul fast float %1759, 0xBFF7154760000000
  %1825 = fmul fast float %1824, %1818
  %1826 = fmul fast float %1760, 0xBFF7154760000000
  %1827 = fmul fast float %1826, %1818
  %1828 = call float @dx.op.unary.f32(i32 21, float %1823)  ; Exp(value)
  %1829 = call float @dx.op.unary.f32(i32 21, float %1825)  ; Exp(value)
  %1830 = call float @dx.op.unary.f32(i32 21, float %1827)  ; Exp(value)
  %1831 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1832 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1833 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1834 = fadd fast float %1831, -1.000000e+00
  %1835 = select i1 %1819, float %1834, float -1.000000e+00
  %1836 = fadd fast float %1832, -1.000000e+00
  %1837 = select i1 %1820, float %1836, float -1.000000e+00
  %1838 = fadd fast float %1833, -1.000000e+00
  %1839 = select i1 %1821, float %1838, float -1.000000e+00
  %1840 = fmul fast float %1835, %1352
  %1841 = fmul fast float %1837, %1352
  %1842 = fmul fast float %1839, %1352
  %1843 = fadd fast float %1840, 1.000000e+00
  %1844 = fadd fast float %1841, 1.000000e+00
  %1845 = fadd fast float %1842, 1.000000e+00
  %1846 = fmul fast float %1843, %1154
  %1847 = fmul fast float %1844, %1155
  %1848 = fmul fast float %1845, %1156
  %1849 = fmul fast float %1843, %1157
  %1850 = fmul fast float %1844, %1158
  %1851 = fmul fast float %1845, %1159
  br label %1852

; <label>:1852                                    ; preds = %1817, %1801
  %1853 = phi float [ %1846, %1817 ], [ %1154, %1801 ]
  %1854 = phi float [ %1847, %1817 ], [ %1155, %1801 ]
  %1855 = phi float [ %1848, %1817 ], [ %1156, %1801 ]
  %1856 = phi float [ %1849, %1817 ], [ %1157, %1801 ]
  %1857 = phi float [ %1850, %1817 ], [ %1158, %1801 ]
  %1858 = phi float [ %1851, %1817 ], [ %1159, %1801 ]
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 3
  %1862 = icmp eq i32 %1861, 3
  br i1 %1862, label %1941, label %1863

; <label>:1863                                    ; preds = %1852
  %1864 = and i32 %1860, 16
  %1865 = icmp ne i32 %1864, 0
  %1866 = select i1 %1865, float %1352, float 0.000000e+00
  %1867 = icmp eq i32 %1861, 0
  br i1 %1867, label %1868, label %1896

; <label>:1868                                    ; preds = %1863
  %1869 = and i32 %1860, 64
  %1870 = icmp ne i32 %1869, 0
  %1871 = select i1 %1870, float %1352, float 0.000000e+00
  %1872 = fsub fast float %1572, %1853
  %1873 = fsub fast float %1573, %1854
  %1874 = fsub fast float %1574, %1855
  %1875 = fmul fast float %1866, %1872
  %1876 = fmul fast float %1866, %1873
  %1877 = fmul fast float %1866, %1874
  %1878 = fadd fast float %1875, %1853
  %1879 = fadd fast float %1876, %1854
  %1880 = fadd fast float %1877, %1855
  %1881 = fsub fast float %1558, %1163
  %1882 = fmul fast float %1866, %1881
  %1883 = fadd fast float %1882, %1163
  %1884 = fsub fast float %1700, %1856
  %1885 = fsub fast float %1701, %1857
  %1886 = fsub fast float %1702, %1858
  %1887 = fmul fast float %1871, %1884
  %1888 = fmul fast float %1871, %1885
  %1889 = fmul fast float %1871, %1886
  %1890 = fadd fast float %1887, %1856
  %1891 = fadd fast float %1888, %1857
  %1892 = fadd fast float %1889, %1858
  %1893 = fsub fast float %1816, %1169
  %1894 = fmul fast float %1866, %1893
  %1895 = fadd fast float %1894, %1169
  br label %1941

; <label>:1896                                    ; preds = %1863
  %1897 = icmp eq i32 %1861, 1
  br i1 %1897, label %1898, label %1911

; <label>:1898                                    ; preds = %1896
  %1899 = fadd fast float %1572, -1.000000e+00
  %1900 = fadd fast float %1573, -1.000000e+00
  %1901 = fadd fast float %1574, -1.000000e+00
  %1902 = fmul fast float %1866, %1899
  %1903 = fmul fast float %1866, %1900
  %1904 = fmul fast float %1866, %1901
  %1905 = fadd fast float %1902, 1.000000e+00
  %1906 = fadd fast float %1903, 1.000000e+00
  %1907 = fadd fast float %1904, 1.000000e+00
  %1908 = fmul fast float %1905, %1853
  %1909 = fmul fast float %1906, %1854
  %1910 = fmul fast float %1907, %1855
  br label %1941

; <label>:1911                                    ; preds = %1896
  %1912 = icmp eq i32 %1861, 2
  br i1 %1912, label %1913, label %1941

; <label>:1913                                    ; preds = %1911
  %1914 = call float @dx.op.unary.f32(i32 24, float %1572)  ; Sqrt(value)
  %1915 = call float @dx.op.unary.f32(i32 24, float %1573)  ; Sqrt(value)
  %1916 = call float @dx.op.unary.f32(i32 24, float %1574)  ; Sqrt(value)
  %1917 = fadd fast float %1914, -5.000000e-01
  %1918 = fadd fast float %1915, -5.000000e-01
  %1919 = fadd fast float %1916, -5.000000e-01
  %1920 = fmul fast float %1917, %1866
  %1921 = fmul fast float %1918, %1866
  %1922 = fmul fast float %1919, %1866
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fmul fast float %1923, 2.000000e+00
  %1927 = fsub fast float 1.000000e+00, %1926
  %1928 = fmul fast float %1927, %1853
  %1929 = fadd fast float %1928, %1926
  %1930 = fmul fast float %1929, %1853
  %1931 = fmul fast float %1924, 2.000000e+00
  %1932 = fsub fast float 1.000000e+00, %1931
  %1933 = fmul fast float %1932, %1854
  %1934 = fadd fast float %1933, %1931
  %1935 = fmul fast float %1934, %1854
  %1936 = fmul fast float %1925, 2.000000e+00
  %1937 = fsub fast float 1.000000e+00, %1936
  %1938 = fmul fast float %1937, %1855
  %1939 = fadd fast float %1938, %1936
  %1940 = fmul fast float %1939, %1855
  br label %1941

; <label>:1941                                    ; preds = %1913, %1911, %1898, %1868, %1852
  %1942 = phi float [ %1853, %1852 ], [ %1930, %1913 ], [ %1853, %1911 ], [ %1908, %1898 ], [ %1878, %1868 ]
  %1943 = phi float [ %1854, %1852 ], [ %1935, %1913 ], [ %1854, %1911 ], [ %1909, %1898 ], [ %1879, %1868 ]
  %1944 = phi float [ %1855, %1852 ], [ %1940, %1913 ], [ %1855, %1911 ], [ %1910, %1898 ], [ %1880, %1868 ]
  %1945 = phi float [ %1856, %1852 ], [ %1856, %1913 ], [ %1856, %1911 ], [ %1856, %1898 ], [ %1890, %1868 ]
  %1946 = phi float [ %1857, %1852 ], [ %1857, %1913 ], [ %1857, %1911 ], [ %1857, %1898 ], [ %1891, %1868 ]
  %1947 = phi float [ %1858, %1852 ], [ %1858, %1913 ], [ %1858, %1911 ], [ %1858, %1898 ], [ %1892, %1868 ]
  %1948 = phi float [ %1163, %1852 ], [ %1163, %1913 ], [ %1163, %1911 ], [ %1163, %1898 ], [ %1883, %1868 ]
  %1949 = phi float [ %1169, %1852 ], [ %1169, %1913 ], [ %1169, %1911 ], [ %1169, %1898 ], [ %1895, %1868 ]
  %1950 = and i32 %1860, 12
  %1951 = icmp eq i32 %1950, 12
  br i1 %1951, label %2068, label %1952

; <label>:1952                                    ; preds = %1941
  %1953 = and i32 %1860, 2097184
  %1954 = icmp eq i32 %1953, 2097184
  %1955 = select i1 %1954, float %1352, float 0.000000e+00
  %1956 = and i32 %1860, 4194336
  %1957 = icmp eq i32 %1956, 4194336
  %1958 = select i1 %1957, float %1352, float 0.000000e+00
  %1959 = and i32 %1860, 8388640
  %1960 = icmp eq i32 %1959, 8388640
  %1961 = select i1 %1960, float %1352, float 0.000000e+00
  %1962 = and i32 %1860, 1024
  %1963 = icmp ne i32 %1962, 0
  %1964 = select i1 %1963, float %1352, float 0.000000e+00
  %1965 = and i32 %1860, 2048
  %1966 = icmp ne i32 %1965, 0
  %1967 = select i1 %1966, float %1352, float 0.000000e+00
  %1968 = and i32 %1860, 16384
  %1969 = icmp ne i32 %1968, 0
  %1970 = select i1 %1969, float %1352, float 0.000000e+00
  %1971 = icmp eq i32 %1950, 0
  br i1 %1971, label %1972, label %2000

; <label>:1972                                    ; preds = %1952
  %1973 = fsub fast float %1653, %1152
  %1974 = fsub fast float %1654, %1153
  %1975 = fmul fast float %1955, %1973
  %1976 = fmul fast float %1955, %1974
  %1977 = fadd fast float %1975, %1152
  %1978 = fadd fast float %1976, %1153
  %1979 = fsub fast float %1655, %1166
  %1980 = fmul fast float %1958, %1979
  %1981 = fadd fast float %1980, %1166
  %1982 = fsub fast float %1652, %1165
  %1983 = fmul fast float %1961, %1982
  %1984 = fadd fast float %1983, %1165
  %1985 = fsub fast float %1758, %1160
  %1986 = fsub fast float %1759, %1161
  %1987 = fsub fast float %1760, %1162
  %1988 = fmul fast float %1964, %1985
  %1989 = fmul fast float %1964, %1986
  %1990 = fmul fast float %1964, %1987
  %1991 = fadd fast float %1988, %1160
  %1992 = fadd fast float %1989, %1161
  %1993 = fadd fast float %1990, %1162
  %1994 = fsub fast float %1802, %1167
  %1995 = fmul fast float %1967, %1994
  %1996 = fadd fast float %1995, %1167
  %1997 = fsub fast float %1803, %1168
  %1998 = fmul fast float %1970, %1997
  %1999 = fadd fast float %1998, %1168
  br label %2068

; <label>:2000                                    ; preds = %1952
  %2001 = icmp eq i32 %1950, 4
  br i1 %2001, label %2002, label %2044

; <label>:2002                                    ; preds = %2000
  %2003 = fmul fast float %1955, %1653
  %2004 = fmul fast float %1955, %1654
  %2005 = fadd fast float %2003, %1152
  %2006 = fadd fast float %2004, %1153
  %2007 = call float @dx.op.binary.f32(i32 36, float %1166, float %1655)  ; FMin(a,b)
  %2008 = fsub fast float %2007, %1166
  %2009 = fmul fast float %2008, %1958
  %2010 = fadd fast float %2009, %1166
  %2011 = fadd fast float %1652, %1165
  %2012 = fmul fast float %2011, 0x3FF337FAE0000000
  %2013 = fmul fast float %1165, %1165
  %2014 = fmul fast float %1652, %1652
  %2015 = fadd fast float %2014, %2013
  %2016 = fmul fast float %2015, 0x3FE5152B00000000
  %2017 = fmul fast float %1165, 0xBFCC1F85E0000000
  %2018 = fmul fast float %2017, %1652
  %2019 = fadd fast float %2018, 0xBFE1363700000000
  %2020 = fadd fast float %2019, %2012
  %2021 = fsub fast float %2020, %2016
  %2022 = fmul fast float %2011, 0x3FBA6F0D00000000
  %2023 = fmul fast float %2015, 0x3FD0432880000000
  %2024 = fmul fast float %1165, 0xBFEF110800000000
  %2025 = fmul fast float %2024, %1652
  %2026 = fadd fast float %2025, 1.000000e+00
  %2027 = fsub fast float %2026, %2022
  %2028 = fadd fast float %2027, %2023
  %2029 = fdiv fast float %2021, %2028
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fsub fast float %2030, %1165
  %2032 = fmul fast float %2031, %1961
  %2033 = fadd fast float %2032, %1165
  %2034 = fmul fast float %1964, %1758
  %2035 = fmul fast float %1964, %1759
  %2036 = fmul fast float %1964, %1760
  %2037 = fadd fast float %2034, %1160
  %2038 = fadd fast float %2035, %1161
  %2039 = fadd fast float %2036, %1162
  %2040 = fmul fast float %1967, %1802
  %2041 = fadd fast float %2040, %1167
  %2042 = fmul fast float %1970, %1803
  %2043 = fadd fast float %2042, %1168
  br label %2068

; <label>:2044                                    ; preds = %2000
  %2045 = icmp eq i32 %1950, 8
  br i1 %2045, label %2046, label %2068

; <label>:2046                                    ; preds = %2044
  %2047 = fmul fast float %1955, %1653
  %2048 = fmul fast float %1955, %1654
  %2049 = fadd fast float %2047, %1152
  %2050 = fadd fast float %2048, %1153
  %2051 = call float @dx.op.binary.f32(i32 36, float %1166, float %1655)  ; FMin(a,b)
  %2052 = fsub fast float %2051, %1166
  %2053 = fmul fast float %2052, %1958
  %2054 = fadd fast float %2053, %1166
  %2055 = fsub fast float %1652, %1165
  %2056 = fmul fast float %1961, %2055
  %2057 = fadd fast float %2056, %1165
  %2058 = fmul fast float %1964, %1758
  %2059 = fmul fast float %1964, %1759
  %2060 = fmul fast float %1964, %1760
  %2061 = fadd fast float %2058, %1160
  %2062 = fadd fast float %2059, %1161
  %2063 = fadd fast float %2060, %1162
  %2064 = fmul fast float %1967, %1802
  %2065 = fadd fast float %2064, %1167
  %2066 = fmul fast float %1970, %1803
  %2067 = fadd fast float %2066, %1168
  br label %2068

; <label>:2068                                    ; preds = %2046, %2044, %2002, %1972, %1941, %1351, %1170, %1151
  %2069 = phi float [ %1152, %1941 ], [ %1152, %1351 ], [ %1152, %1151 ], [ %2049, %2046 ], [ %1152, %2044 ], [ %2005, %2002 ], [ %1977, %1972 ], [ %1152, %1170 ]
  %2070 = phi float [ %1153, %1941 ], [ %1153, %1351 ], [ %1153, %1151 ], [ %2050, %2046 ], [ %1153, %2044 ], [ %2006, %2002 ], [ %1978, %1972 ], [ %1153, %1170 ]
  %2071 = phi float [ %1942, %1941 ], [ %1154, %1351 ], [ %1154, %1151 ], [ %1942, %2046 ], [ %1942, %2044 ], [ %1942, %2002 ], [ %1942, %1972 ], [ %1154, %1170 ]
  %2072 = phi float [ %1943, %1941 ], [ %1155, %1351 ], [ %1155, %1151 ], [ %1943, %2046 ], [ %1943, %2044 ], [ %1943, %2002 ], [ %1943, %1972 ], [ %1155, %1170 ]
  %2073 = phi float [ %1944, %1941 ], [ %1156, %1351 ], [ %1156, %1151 ], [ %1944, %2046 ], [ %1944, %2044 ], [ %1944, %2002 ], [ %1944, %1972 ], [ %1156, %1170 ]
  %2074 = phi float [ %1945, %1941 ], [ %1157, %1351 ], [ %1157, %1151 ], [ %1945, %2046 ], [ %1945, %2044 ], [ %1945, %2002 ], [ %1945, %1972 ], [ %1157, %1170 ]
  %2075 = phi float [ %1946, %1941 ], [ %1158, %1351 ], [ %1158, %1151 ], [ %1946, %2046 ], [ %1946, %2044 ], [ %1946, %2002 ], [ %1946, %1972 ], [ %1158, %1170 ]
  %2076 = phi float [ %1947, %1941 ], [ %1159, %1351 ], [ %1159, %1151 ], [ %1947, %2046 ], [ %1947, %2044 ], [ %1947, %2002 ], [ %1947, %1972 ], [ %1159, %1170 ]
  %2077 = phi float [ %1160, %1941 ], [ %1160, %1351 ], [ %1160, %1151 ], [ %2061, %2046 ], [ %1160, %2044 ], [ %2037, %2002 ], [ %1991, %1972 ], [ %1160, %1170 ]
  %2078 = phi float [ %1161, %1941 ], [ %1161, %1351 ], [ %1161, %1151 ], [ %2062, %2046 ], [ %1161, %2044 ], [ %2038, %2002 ], [ %1992, %1972 ], [ %1161, %1170 ]
  %2079 = phi float [ %1162, %1941 ], [ %1162, %1351 ], [ %1162, %1151 ], [ %2063, %2046 ], [ %1162, %2044 ], [ %2039, %2002 ], [ %1993, %1972 ], [ %1162, %1170 ]
  %2080 = phi float [ %1948, %1941 ], [ %1163, %1351 ], [ %1163, %1151 ], [ %1948, %2046 ], [ %1948, %2044 ], [ %1948, %2002 ], [ %1948, %1972 ], [ %1163, %1170 ]
  %2081 = phi float [ %1165, %1941 ], [ %1165, %1351 ], [ %1165, %1151 ], [ %2057, %2046 ], [ %1165, %2044 ], [ %2033, %2002 ], [ %1984, %1972 ], [ %1165, %1170 ]
  %2082 = phi float [ %1166, %1941 ], [ %1166, %1351 ], [ %1166, %1151 ], [ %2054, %2046 ], [ %1166, %2044 ], [ %2010, %2002 ], [ %1981, %1972 ], [ %1166, %1170 ]
  %2083 = phi float [ %1167, %1941 ], [ %1167, %1351 ], [ %1167, %1151 ], [ %2065, %2046 ], [ %1167, %2044 ], [ %2041, %2002 ], [ %1996, %1972 ], [ %1167, %1170 ]
  %2084 = phi float [ %1168, %1941 ], [ %1168, %1351 ], [ %1168, %1151 ], [ %2067, %2046 ], [ %1168, %2044 ], [ %2043, %2002 ], [ %1999, %1972 ], [ %1168, %1170 ]
  %2085 = phi float [ %1949, %1941 ], [ %1169, %1351 ], [ %1169, %1151 ], [ %1949, %2046 ], [ %1949, %2044 ], [ %1949, %2002 ], [ %1949, %1972 ], [ %1169, %1170 ]
  br i1 %451, label %2984, label %2086

; <label>:2086                                    ; preds = %2068
  %2087 = icmp ult i32 %507, 3
  %2088 = add i32 %55, 56
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = add i32 %55, 60
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = or i32 %2093, %2090
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2984, label %2096

; <label>:2096                                    ; preds = %2086
  %2097 = and i32 %2090, 262144
  %2098 = icmp ne i32 %2097, 0
  %2099 = select i1 %2098, float %61, float 1.000000e+00
  %2100 = select i1 %2098, float %62, float 0.000000e+00
  %2101 = select i1 %2098, float %63, float 0.000000e+00
  %2102 = select i1 %2098, float %64, float 1.000000e+00
  %2103 = select i1 %2098, float %65, float %88
  %2104 = select i1 %2098, float %66, float %89
  %2105 = add i32 %55, 316
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = lshr i32 %2107, 16
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = fmul fast float %2109, 0x3F50624DE0000000
  %2111 = add i32 %55, 120
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 16
  %2115 = and i32 %2114, 255
  %2116 = lshr i32 %2113, 24
  %2117 = add i32 %55, 324
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 65535
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = lshr i32 %2119, 16
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = add i32 %55, 64
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = lshr i32 %2126, 22
  %2128 = shl nuw nsw i32 %2127, 5
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = shl i32 %2126, 4
  %2131 = and i32 %2130, 32752
  %2132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2131)  ; LegacyF16ToF32(value)
  %2133 = lshr i32 %2126, 7
  %2134 = and i32 %2133, 32752
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2138 = fmul fast float %2137, 1.000000e+03
  %2139 = fmul fast float %401, %2138
  %2140 = call float @dx.op.unary.f32(i32 22, float %2139)  ; Frc(value)
  %2141 = fadd fast float %2140, %391
  %2142 = fmul fast float %402, %2138
  %2143 = call float @dx.op.unary.f32(i32 22, float %2142)  ; Frc(value)
  %2144 = fadd fast float %2143, %393
  %2145 = fmul fast float %2110, %2138
  %2146 = call float @dx.op.unary.f32(i32 22, float %2145)  ; Frc(value)
  %2147 = fmul fast float %2146, 0x401921FB60000000
  %2148 = fadd fast float %2147, %2129
  %2149 = call float @dx.op.unary.f32(i32 13, float %2148)  ; Sin(value)
  %2150 = call float @dx.op.unary.f32(i32 12, float %2148)  ; Cos(value)
  %2151 = fsub fast float -0.000000e+00, %2149
  %2152 = fadd fast float %2103, -5.000000e-01
  %2153 = fadd fast float %2104, -5.000000e-01
  %2154 = fmul fast float %2121, %2152
  %2155 = fmul fast float %2123, %2153
  %2156 = fadd fast float %2154, 5.000000e-01
  %2157 = fadd fast float %2155, 5.000000e-01
  %2158 = fmul fast float %2132, %2156
  %2159 = fmul fast float %2135, %2157
  %2160 = fmul fast float %2150, %2158
  %2161 = call float @dx.op.tertiary.f32(i32 46, float %2151, float %2159, float %2160)  ; FMad(a,b,c)
  %2162 = fmul fast float %2149, %2158
  %2163 = call float @dx.op.tertiary.f32(i32 46, float %2150, float %2159, float %2162)  ; FMad(a,b,c)
  %2164 = fadd fast float %2141, %2161
  %2165 = fadd fast float %2144, %2163
  %2166 = icmp ugt i32 %2115, 1
  %2167 = icmp ugt i32 %2113, 33554431
  %2168 = or i1 %2167, %2166
  br i1 %2168, label %2169, label %2194

; <label>:2169                                    ; preds = %2096
  %2170 = add i32 %55, 260
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = lshr i32 %2172, 16
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = fmul fast float %2137, %2174
  %2176 = call float @dx.op.unary.f32(i32 22, float %2175)  ; Frc(value)
  %2177 = mul nuw nsw i32 %2115, %2116
  %2178 = uitofp i32 %2177 to float
  %2179 = fmul fast float %2176, %2178
  %2180 = call float @dx.op.unary.f32(i32 27, float %2179)  ; Round_ni(value)
  %2181 = fptoui float %2180 to i32
  %2182 = urem i32 %2181, %2115
  %2183 = udiv i32 %2181, %2116
  %2184 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2185 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2186 = uitofp i32 %2182 to float
  %2187 = uitofp i32 %2183 to float
  %2188 = fadd fast float %2184, %2186
  %2189 = fadd fast float %2185, %2187
  %2190 = uitofp i32 %2115 to float
  %2191 = uitofp i32 %2116 to float
  %2192 = fdiv fast float %2188, %2190
  %2193 = fdiv fast float %2189, %2191
  br label %2194

; <label>:2194                                    ; preds = %2169, %2096
  %2195 = phi float [ %2192, %2169 ], [ %2164, %2096 ]
  %2196 = phi float [ %2193, %2169 ], [ %2165, %2096 ]
  %2197 = and i32 %2090, 256
  %2198 = icmp eq i32 %2197, 0
  br i1 %2198, label %2245, label %2199

; <label>:2199                                    ; preds = %2194
  %2200 = add i32 %55, 448
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %2202, 0
  %2204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2204, %dx.types.Handle %103, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  %2207 = add i32 %55, 132
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = shl i32 %2209, 4
  %2211 = and i32 %2210, 32752
  %2212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2211)  ; LegacyF16ToF32(value)
  %2213 = lshr i32 %2209, 7
  %2214 = and i32 %2213, 32752
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = fsub fast float 1.000000e+00, %503
  %2217 = call float @dx.op.binary.f32(i32 35, float %2216, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2218 = bitcast float %503 to i32
  %2219 = sitofp i32 %2218 to float
  %2220 = fadd fast float %2219, 0xC1CFBF8940000000
  %2221 = fmul fast float %2215, %2220
  %2222 = fadd fast float %2221, 0x41CFBF8940000000
  %2223 = fptosi float %2222 to i32
  %2224 = bitcast i32 %2223 to float
  %2225 = bitcast float %2217 to i32
  %2226 = sitofp i32 %2225 to float
  %2227 = fadd fast float %2226, 0xC1CFBF8940000000
  %2228 = fmul fast float %2227, %2215
  %2229 = fadd fast float %2228, 0x41CFBF8940000000
  %2230 = fptosi float %2229 to i32
  %2231 = bitcast i32 %2230 to float
  %2232 = fmul fast float %2224, %2212
  %2233 = fmul fast float %2231, %2212
  %2234 = fsub fast float %2217, %2232
  %2235 = fadd fast float %2233, %2217
  %2236 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2237 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2238 = fsub fast float %2206, %2236
  %2239 = fsub fast float %2237, %2236
  %2240 = bitcast float %2239 to i32
  %2241 = sub nsw i32 2129859010, %2240
  %2242 = bitcast i32 %2241 to float
  %2243 = fmul fast float %2242, %2238
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  br label %2245

; <label>:2245                                    ; preds = %2199, %2194
  %2246 = phi float [ %2244, %2199 ], [ %503, %2194 ]
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 128
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2267, label %2251

; <label>:2251                                    ; preds = %2245
  %2252 = add i32 %55, 432
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = add i32 %2254, 0
  %2256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2256, %dx.types.Handle %103, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 524288
  %2262 = icmp ne i32 %2261, 0
  %2263 = fcmp fast ogt float %2258, 0x3FE0101020000000
  %2264 = select i1 %2263, float 1.000000e+00, float 0.000000e+00
  %2265 = select i1 %2262, float %2264, float %2258
  %2266 = fmul fast float %2265, %2246
  br label %2267

; <label>:2267                                    ; preds = %2251, %2245
  %2268 = phi float [ %2266, %2251 ], [ %2246, %2245 ]
  %2269 = fcmp fast ult float %2268, 0x3F70101020000000
  br i1 %2269, label %2984, label %2270

; <label>:2270                                    ; preds = %2267
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = and i32 %2272, 16
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2473, label %2275

; <label>:2275                                    ; preds = %2270
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = add i32 %55, 384
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = add i32 %2280, 0
  %2282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2282, %dx.types.Handle %102, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2284 = extractvalue %dx.types.ResRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.ResRet.f32 %2283, 1
  %2286 = extractvalue %dx.types.ResRet.f32 %2283, 2
  %2287 = extractvalue %dx.types.ResRet.f32 %2283, 3
  %2288 = and i32 %2277, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = lshr i32 %2277, 8
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2287, %2289
  %2294 = fadd fast float %2293, %2292
  %2295 = fmul fast float %2294, 0x3F70101000000000
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 512
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2308, label %2300

; <label>:2300                                    ; preds = %2275
  %2301 = add i32 %55, 468
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = add i32 %2303, 0
  %2305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2305, %dx.types.Handle %103, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  br label %2308

; <label>:2308                                    ; preds = %2300, %2275
  %2309 = phi float [ %2307, %2300 ], [ 1.000000e+00, %2275 ]
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = and i32 %2311, 33554432
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2420, label %2314

; <label>:2314                                    ; preds = %2308
  %2315 = add i32 %55, 256
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 65535
  %2319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2318)  ; LegacyF16ToF32(value)
  %2320 = lshr i32 %2317, 16
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = add i32 %55, 260
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 65535
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = lshr i32 %2328, 24
  %2330 = uitofp i32 %2329 to float
  %2331 = fmul fast float %2330, 0x3F70101020000000
  %2332 = and i32 %2328, 255
  %2333 = uitofp i32 %2332 to float
  %2334 = fmul fast float %2333, 0x3F70101020000000
  %2335 = lshr i32 %2328, 8
  %2336 = and i32 %2335, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2337, 0x3F70101020000000
  %2339 = lshr i32 %2328, 16
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = fmul fast float %2341, 0x3F70101020000000
  %2343 = add i32 %55, 252
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = lshr i32 %2345, 24
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = and i32 %2345, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = lshr i32 %2345, 8
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = lshr i32 %2345, 16
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = bitcast float %2284 to i32
  %2361 = ashr i32 %2360, 1
  %2362 = sub nsw i32 1597463174, %2361
  %2363 = bitcast i32 %2362 to float
  %2364 = fmul fast float %2284, 5.000000e-01
  %2365 = fmul fast float %2363, %2363
  %2366 = fmul fast float %2365, %2364
  %2367 = fsub fast float 1.500000e+00, %2366
  %2368 = fmul fast float %2363, %2284
  %2369 = fmul fast float %2368, %2367
  %2370 = bitcast float %2285 to i32
  %2371 = ashr i32 %2370, 1
  %2372 = sub nsw i32 1597463174, %2371
  %2373 = bitcast i32 %2372 to float
  %2374 = fmul fast float %2285, 5.000000e-01
  %2375 = fmul fast float %2373, %2373
  %2376 = fmul fast float %2375, %2374
  %2377 = fsub fast float 1.500000e+00, %2376
  %2378 = fmul fast float %2373, %2285
  %2379 = fmul fast float %2378, %2377
  %2380 = bitcast float %2286 to i32
  %2381 = ashr i32 %2380, 1
  %2382 = sub nsw i32 1597463174, %2381
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2286, 5.000000e-01
  %2385 = fmul fast float %2383, %2383
  %2386 = fmul fast float %2385, %2384
  %2387 = fsub fast float 1.500000e+00, %2386
  %2388 = fmul fast float %2383, %2286
  %2389 = fmul fast float %2388, %2387
  %2390 = fsub fast float %2369, %2351
  %2391 = fsub fast float %2379, %2355
  %2392 = fsub fast float %2389, %2359
  %2393 = fmul fast float %2390, %2319
  %2394 = fmul fast float %2391, %2321
  %2395 = fmul fast float %2392, %2326
  %2396 = fadd fast float %2393, %2334
  %2397 = fadd fast float %2394, %2338
  %2398 = fadd fast float %2395, %2342
  %2399 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2400 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2401 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2402 = fmul fast float %2399, %2399
  %2403 = fmul fast float %2400, %2400
  %2404 = fmul fast float %2401, %2401
  %2405 = fsub fast float %2402, %2284
  %2406 = fsub fast float %2403, %2285
  %2407 = fsub fast float %2404, %2286
  %2408 = fmul fast float %2405, %2309
  %2409 = fmul fast float %2406, %2309
  %2410 = fmul fast float %2407, %2309
  %2411 = fadd fast float %2408, %2284
  %2412 = fadd fast float %2409, %2285
  %2413 = fadd fast float %2410, %2286
  %2414 = fadd fast float %2331, %2295
  %2415 = fsub fast float %2414, %2348
  %2416 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2417 = fsub fast float %2416, %2295
  %2418 = fmul fast float %2417, %2309
  %2419 = fadd fast float %2418, %2295
  br label %2473

; <label>:2420                                    ; preds = %2308
  %2421 = and i32 %2311, 134217728
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %2457, label %2423

; <label>:2423                                    ; preds = %2420
  %2424 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2425 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2426 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2427 = fadd fast float %2424, -5.000000e-01
  %2428 = fadd fast float %2425, -5.000000e-01
  %2429 = fadd fast float %2426, -5.000000e-01
  %2430 = fmul fast float %2427, %2309
  %2431 = fmul fast float %2428, %2309
  %2432 = fmul fast float %2429, %2309
  %2433 = fadd fast float %2430, 5.000000e-01
  %2434 = fadd fast float %2431, 5.000000e-01
  %2435 = fadd fast float %2432, 5.000000e-01
  %2436 = call float @dx.op.unary.f32(i32 24, float %2284)  ; Sqrt(value)
  %2437 = call float @dx.op.unary.f32(i32 24, float %2285)  ; Sqrt(value)
  %2438 = call float @dx.op.unary.f32(i32 24, float %2286)  ; Sqrt(value)
  %2439 = fmul fast float %2433, 2.000000e+00
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2436
  %2442 = fadd fast float %2441, %2439
  %2443 = fmul fast float %2442, %2436
  %2444 = fmul fast float %2434, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2437
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2437
  %2449 = fmul fast float %2435, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2438
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2438
  %2454 = fmul fast float %2443, %2443
  %2455 = fmul fast float %2448, %2448
  %2456 = fmul fast float %2453, %2453
  br label %2473

; <label>:2457                                    ; preds = %2420
  %2458 = fmul fast float %378, %378
  %2459 = fmul fast float %382, %382
  %2460 = fmul fast float %386, %386
  %2461 = fadd fast float %2458, -1.000000e+00
  %2462 = fadd fast float %2459, -1.000000e+00
  %2463 = fadd fast float %2460, -1.000000e+00
  %2464 = fmul fast float %2309, %2461
  %2465 = fmul fast float %2309, %2462
  %2466 = fmul fast float %2309, %2463
  %2467 = fadd fast float %2464, 1.000000e+00
  %2468 = fadd fast float %2465, 1.000000e+00
  %2469 = fadd fast float %2466, 1.000000e+00
  %2470 = fmul fast float %2467, %2284
  %2471 = fmul fast float %2468, %2285
  %2472 = fmul fast float %2469, %2286
  br label %2473

; <label>:2473                                    ; preds = %2457, %2423, %2314, %2270
  %2474 = phi float [ %2419, %2314 ], [ %2295, %2423 ], [ %2295, %2457 ], [ 0x3FA23C0BE0000000, %2270 ]
  %2475 = phi float [ %2411, %2314 ], [ %2454, %2423 ], [ %2470, %2457 ], [ 1.000000e+00, %2270 ]
  %2476 = phi float [ %2412, %2314 ], [ %2455, %2423 ], [ %2471, %2457 ], [ 1.000000e+00, %2270 ]
  %2477 = phi float [ %2413, %2314 ], [ %2456, %2423 ], [ %2472, %2457 ], [ 1.000000e+00, %2270 ]
  %2478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.i32 %2478, 1
  %2480 = and i32 %2479, 1
  %2481 = icmp ne i32 %2480, 0
  %2482 = add i32 %55, 356
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = and i32 %2484, 32
  %2486 = icmp ne i32 %2485, 0
  %2487 = and i1 %2481, %2486
  %2488 = select i1 %2487, float 1.000000e+00, float %2475
  %2489 = select i1 %2487, float 0x3FD3333340000000, float %2476
  %2490 = select i1 %2487, float 0x3FD3333340000000, float %2477
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = and i32 %2492, 32
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2567, label %2495

; <label>:2495                                    ; preds = %2473
  %2496 = add i32 %55, 124
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2496, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = add i32 %55, 400
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = add i32 %2501, 0
  %2503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2503, %dx.types.Handle %102, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2505 = extractvalue %dx.types.ResRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.ResRet.f32 %2504, 1
  %2507 = extractvalue %dx.types.ResRet.f32 %2504, 2
  %2508 = extractvalue %dx.types.ResRet.f32 %2504, 3
  %2509 = and i32 %2498, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = lshr i32 %2498, 8
  %2512 = and i32 %2511, 255
  %2513 = uitofp i32 %2512 to float
  %2514 = lshr i32 %2498, 16
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = fmul fast float %2516, 0x3F70101000000000
  %2518 = fmul fast float %2505, %2510
  %2519 = fadd fast float %2518, %2513
  %2520 = fmul fast float %2519, 0x3F70101000000000
  %2521 = fadd fast float %2506, -5.000000e-01
  %2522 = fadd fast float %2508, -5.000000e-01
  %2523 = fmul fast float %2521, %2517
  %2524 = fmul fast float %2522, %2517
  %2525 = fadd fast float %2523, 5.000000e-01
  %2526 = fadd fast float %2524, 5.000000e-01
  %2527 = fmul fast float %2525, 2.000000e+00
  %2528 = fadd fast float %2527, -1.000000e+00
  %2529 = fmul fast float %2526, 2.000000e+00
  %2530 = fadd fast float %2529, -1.000000e+00
  %2531 = fadd fast float %2528, %2530
  %2532 = fmul fast float %2531, 5.000000e-01
  %2533 = fsub fast float %2528, %2530
  %2534 = fmul fast float %2533, 5.000000e-01
  %2535 = call float @dx.op.unary.f32(i32 6, float %2532)  ; FAbs(value)
  %2536 = fsub fast float 1.000000e+00, %2535
  %2537 = call float @dx.op.unary.f32(i32 6, float %2534)  ; FAbs(value)
  %2538 = fsub fast float %2536, %2537
  %2539 = call float @dx.op.dot3.f32(i32 55, float %2532, float %2534, float %2538, float %2532, float %2534, float %2538)  ; Dot3(ax,ay,az,bx,by,bz)
  %2540 = call float @dx.op.unary.f32(i32 25, float %2539)  ; Rsqrt(value)
  %2541 = fmul fast float %2532, %2540
  %2542 = fmul fast float %2534, %2540
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 67108864
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2563, label %2547

; <label>:2547                                    ; preds = %2495
  %2548 = add i32 %55, 312
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 65535
  %2552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2551)  ; LegacyF16ToF32(value)
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 65535
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = lshr i32 %2550, 16
  %2558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2557)  ; LegacyF16ToF32(value)
  %2559 = fsub fast float %2520, %2558
  %2560 = fmul fast float %2559, %2552
  %2561 = fadd fast float %2560, %2556
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  br label %2563

; <label>:2563                                    ; preds = %2547, %2495
  %2564 = phi float [ %2562, %2547 ], [ %2520, %2495 ]
  %2565 = call float @dx.op.dot2.f32(i32 54, float %2541, float %2542, float %2099, float %2100)  ; Dot2(ax,ay,bx,by)
  %2566 = call float @dx.op.dot2.f32(i32 54, float %2541, float %2542, float %2101, float %2102)  ; Dot2(ax,ay,bx,by)
  br label %2567

; <label>:2567                                    ; preds = %2563, %2473
  %2568 = phi float [ %2564, %2563 ], [ 0x3FD6666660000000, %2473 ]
  %2569 = phi float [ %2565, %2563 ], [ 0.000000e+00, %2473 ]
  %2570 = phi float [ %2566, %2563 ], [ 0.000000e+00, %2473 ]
  %2571 = phi float [ %2507, %2563 ], [ 1.000000e+00, %2473 ]
  %2572 = add i32 %55, 192
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = lshr i32 %2574, 22
  %2576 = shl nuw nsw i32 %2575, 5
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 64
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %2615, label %2582

; <label>:2582                                    ; preds = %2567
  %2583 = add i32 %55, 416
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %2585, 0
  %2587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 131072
  %2591 = icmp eq i32 %2590, 0
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2587, %dx.types.Handle %102, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.ResRet.f32 %2592, 2
  %2596 = fmul fast float %2593, %366
  %2597 = fmul fast float %2594, %369
  %2598 = fmul fast float %2595, %372
  br i1 %2591, label %2605, label %2599

; <label>:2599                                    ; preds = %2582
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = fmul fast float %2601, %2596
  %2603 = fmul fast float %2601, %2597
  %2604 = fmul fast float %2601, %2598
  br label %2605

; <label>:2605                                    ; preds = %2599, %2582
  %2606 = phi float [ %2602, %2599 ], [ %2596, %2582 ]
  %2607 = phi float [ %2603, %2599 ], [ %2597, %2582 ]
  %2608 = phi float [ %2604, %2599 ], [ %2598, %2582 ]
  %2609 = fmul fast float %2606, %2577
  %2610 = select i1 %265, float %2609, float %2606
  %2611 = call float @dx.op.dot3.f32(i32 55, float %2610, float %2607, float %2608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2612 = select i1 %265, float 0.000000e+00, float %2606
  %2613 = select i1 %265, float %2611, float %2607
  %2614 = select i1 %265, float 0.000000e+00, float %2608
  br label %2615

; <label>:2615                                    ; preds = %2605, %2567
  %2616 = phi float [ %2612, %2605 ], [ 0.000000e+00, %2567 ]
  %2617 = phi float [ %2613, %2605 ], [ 0.000000e+00, %2567 ]
  %2618 = phi float [ %2614, %2605 ], [ 0.000000e+00, %2567 ]
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, 1024
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %2653, label %2623

; <label>:2623                                    ; preds = %2615
  %2624 = add i32 %55, 184
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2628, 0x3F70101020000000
  %2630 = lshr i32 %2626, 8
  %2631 = and i32 %2630, 255
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2632, 0x3F70101020000000
  %2634 = lshr i32 %2626, 16
  %2635 = and i32 %2634, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = fmul fast float %2636, 0x3F70101020000000
  %2638 = fmul fast float %2629, %2629
  %2639 = fmul fast float %2633, %2633
  %2640 = fmul fast float %2637, %2637
  %2641 = add i32 %55, 484
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %103, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = fmul fast float %2638, %2647
  %2651 = fmul fast float %2639, %2648
  %2652 = fmul fast float %2640, %2649
  br label %2653

; <label>:2653                                    ; preds = %2623, %2615
  %2654 = phi float [ %2650, %2623 ], [ 0.000000e+00, %2615 ]
  %2655 = phi float [ %2651, %2623 ], [ 0.000000e+00, %2615 ]
  %2656 = phi float [ %2652, %2623 ], [ 0.000000e+00, %2615 ]
  %2657 = fcmp fast ogt float %2654, 0.000000e+00
  %2658 = fcmp fast ogt float %2655, 0.000000e+00
  %2659 = fcmp fast ogt float %2656, 0.000000e+00
  %2660 = call float @dx.op.unary.f32(i32 23, float %2654)  ; Log(value)
  %2661 = call float @dx.op.unary.f32(i32 23, float %2655)  ; Log(value)
  %2662 = call float @dx.op.unary.f32(i32 23, float %2656)  ; Log(value)
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = lshr i32 %2664, 7
  %2666 = and i32 %2665, 32752
  %2667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2666)  ; LegacyF16ToF32(value)
  %2668 = fmul fast float %2660, 0xBFE62E4300000000
  %2669 = fmul fast float %2668, %2667
  %2670 = fmul fast float %2661, 0xBFE62E4300000000
  %2671 = fmul fast float %2670, %2667
  %2672 = fmul fast float %2662, 0xBFE62E4300000000
  %2673 = fmul fast float %2672, %2667
  %2674 = select i1 %2657, float %2669, float 1.270000e+02
  %2675 = select i1 %2658, float %2671, float 1.270000e+02
  %2676 = select i1 %2659, float %2673, float 1.270000e+02
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 26624
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2717, label %2681

; <label>:2681                                    ; preds = %2653
  %2682 = add i32 %55, 500
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = add i32 %2684, 0
  %2686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2686, %dx.types.Handle %103, float %2195, float %2196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = and i32 %2690, 1048576
  %2692 = icmp ne i32 %2691, 0
  %2693 = and i32 %2690, 2048
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2704, label %2695

; <label>:2695                                    ; preds = %2681
  %2696 = extractvalue %dx.types.ResRet.f32 %2687, 3
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = shl i32 %2698, 4
  %2700 = and i32 %2699, 32752
  %2701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2700)  ; LegacyF16ToF32(value)
  %2702 = fmul fast float %2701, %2696
  %2703 = call float @dx.op.binary.f32(i32 35, float %2702, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2704

; <label>:2704                                    ; preds = %2695, %2681
  %2705 = phi float [ %2703, %2695 ], [ 0x3F70101020000000, %2681 ]
  %2706 = and i32 %2690, 16384
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2717, label %2708

; <label>:2708                                    ; preds = %2704
  %2709 = add i32 %55, 128
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = lshr i32 %2711, 24
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2688, 0x3F70101020000000
  %2715 = select i1 %2692, float 0x3F70101020000000, float %2714
  %2716 = fmul fast float %2715, %2713
  br label %2717

; <label>:2717                                    ; preds = %2708, %2704, %2653
  %2718 = phi float [ %2705, %2708 ], [ %2705, %2704 ], [ 0x3F70101020000000, %2653 ]
  %2719 = phi float [ %2716, %2708 ], [ 0.000000e+00, %2704 ], [ 0.000000e+00, %2653 ]
  %2720 = add i32 %55, 128
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = and i32 %2722, 255
  %2724 = uitofp i32 %2723 to float
  %2725 = lshr i32 %2722, 8
  %2726 = and i32 %2725, 255
  %2727 = uitofp i32 %2726 to float
  %2728 = call float @dx.op.dot3.f32(i32 55, float %2488, float %2489, float %2490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2729 = fmul fast float %2727, %2728
  %2730 = fadd fast float %2729, %2724
  %2731 = fmul fast float %2730, 0x3F70101020000000
  %2732 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  br i1 %2087, label %2733, label %2768

; <label>:2733                                    ; preds = %2717
  %2734 = fmul fast float %2718, 2.000000e+00
  %2735 = fcmp fast olt float %2674, 1.270000e+02
  %2736 = fcmp fast olt float %2675, 1.270000e+02
  %2737 = fcmp fast olt float %2676, 1.270000e+02
  %2738 = fmul fast float %2674, 0xBFF7154760000000
  %2739 = fmul fast float %2738, %2734
  %2740 = fmul fast float %2675, 0xBFF7154760000000
  %2741 = fmul fast float %2740, %2734
  %2742 = fmul fast float %2676, 0xBFF7154760000000
  %2743 = fmul fast float %2742, %2734
  %2744 = call float @dx.op.unary.f32(i32 21, float %2739)  ; Exp(value)
  %2745 = call float @dx.op.unary.f32(i32 21, float %2741)  ; Exp(value)
  %2746 = call float @dx.op.unary.f32(i32 21, float %2743)  ; Exp(value)
  %2747 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2748 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2749 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2750 = fadd fast float %2747, -1.000000e+00
  %2751 = select i1 %2735, float %2750, float -1.000000e+00
  %2752 = fadd fast float %2748, -1.000000e+00
  %2753 = select i1 %2736, float %2752, float -1.000000e+00
  %2754 = fadd fast float %2749, -1.000000e+00
  %2755 = select i1 %2737, float %2754, float -1.000000e+00
  %2756 = fmul fast float %2751, %2268
  %2757 = fmul fast float %2753, %2268
  %2758 = fmul fast float %2755, %2268
  %2759 = fadd fast float %2756, 1.000000e+00
  %2760 = fadd fast float %2757, 1.000000e+00
  %2761 = fadd fast float %2758, 1.000000e+00
  %2762 = fmul fast float %2759, %2071
  %2763 = fmul fast float %2760, %2072
  %2764 = fmul fast float %2761, %2073
  %2765 = fmul fast float %2759, %2074
  %2766 = fmul fast float %2760, %2075
  %2767 = fmul fast float %2761, %2076
  br label %2768

; <label>:2768                                    ; preds = %2733, %2717
  %2769 = phi float [ %2762, %2733 ], [ %2071, %2717 ]
  %2770 = phi float [ %2763, %2733 ], [ %2072, %2717 ]
  %2771 = phi float [ %2764, %2733 ], [ %2073, %2717 ]
  %2772 = phi float [ %2765, %2733 ], [ %2074, %2717 ]
  %2773 = phi float [ %2766, %2733 ], [ %2075, %2717 ]
  %2774 = phi float [ %2767, %2733 ], [ %2076, %2717 ]
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = and i32 %2776, 3
  %2778 = icmp eq i32 %2777, 3
  br i1 %2778, label %2857, label %2779

; <label>:2779                                    ; preds = %2768
  %2780 = and i32 %2776, 16
  %2781 = icmp ne i32 %2780, 0
  %2782 = select i1 %2781, float %2268, float 0.000000e+00
  %2783 = icmp eq i32 %2777, 0
  br i1 %2783, label %2784, label %2812

; <label>:2784                                    ; preds = %2779
  %2785 = and i32 %2776, 64
  %2786 = icmp ne i32 %2785, 0
  %2787 = select i1 %2786, float %2268, float 0.000000e+00
  %2788 = fsub fast float %2488, %2769
  %2789 = fsub fast float %2489, %2770
  %2790 = fsub fast float %2490, %2771
  %2791 = fmul fast float %2782, %2788
  %2792 = fmul fast float %2782, %2789
  %2793 = fmul fast float %2782, %2790
  %2794 = fadd fast float %2791, %2769
  %2795 = fadd fast float %2792, %2770
  %2796 = fadd fast float %2793, %2771
  %2797 = fsub fast float %2474, %2080
  %2798 = fmul fast float %2782, %2797
  %2799 = fadd fast float %2798, %2080
  %2800 = fsub fast float %2616, %2772
  %2801 = fsub fast float %2617, %2773
  %2802 = fsub fast float %2618, %2774
  %2803 = fmul fast float %2787, %2800
  %2804 = fmul fast float %2787, %2801
  %2805 = fmul fast float %2787, %2802
  %2806 = fadd fast float %2803, %2772
  %2807 = fadd fast float %2804, %2773
  %2808 = fadd fast float %2805, %2774
  %2809 = fsub fast float %2732, %2085
  %2810 = fmul fast float %2782, %2809
  %2811 = fadd fast float %2810, %2085
  br label %2857

; <label>:2812                                    ; preds = %2779
  %2813 = icmp eq i32 %2777, 1
  br i1 %2813, label %2814, label %2827

; <label>:2814                                    ; preds = %2812
  %2815 = fadd fast float %2488, -1.000000e+00
  %2816 = fadd fast float %2489, -1.000000e+00
  %2817 = fadd fast float %2490, -1.000000e+00
  %2818 = fmul fast float %2782, %2815
  %2819 = fmul fast float %2782, %2816
  %2820 = fmul fast float %2782, %2817
  %2821 = fadd fast float %2818, 1.000000e+00
  %2822 = fadd fast float %2819, 1.000000e+00
  %2823 = fadd fast float %2820, 1.000000e+00
  %2824 = fmul fast float %2821, %2769
  %2825 = fmul fast float %2822, %2770
  %2826 = fmul fast float %2823, %2771
  br label %2857

; <label>:2827                                    ; preds = %2812
  %2828 = icmp eq i32 %2777, 2
  br i1 %2828, label %2829, label %2857

; <label>:2829                                    ; preds = %2827
  %2830 = call float @dx.op.unary.f32(i32 24, float %2488)  ; Sqrt(value)
  %2831 = call float @dx.op.unary.f32(i32 24, float %2489)  ; Sqrt(value)
  %2832 = call float @dx.op.unary.f32(i32 24, float %2490)  ; Sqrt(value)
  %2833 = fadd fast float %2830, -5.000000e-01
  %2834 = fadd fast float %2831, -5.000000e-01
  %2835 = fadd fast float %2832, -5.000000e-01
  %2836 = fmul fast float %2833, %2782
  %2837 = fmul fast float %2834, %2782
  %2838 = fmul fast float %2835, %2782
  %2839 = fadd fast float %2836, 5.000000e-01
  %2840 = fadd fast float %2837, 5.000000e-01
  %2841 = fadd fast float %2838, 5.000000e-01
  %2842 = fmul fast float %2839, 2.000000e+00
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = fmul fast float %2843, %2769
  %2845 = fadd fast float %2844, %2842
  %2846 = fmul fast float %2845, %2769
  %2847 = fmul fast float %2840, 2.000000e+00
  %2848 = fsub fast float 1.000000e+00, %2847
  %2849 = fmul fast float %2848, %2770
  %2850 = fadd fast float %2849, %2847
  %2851 = fmul fast float %2850, %2770
  %2852 = fmul fast float %2841, 2.000000e+00
  %2853 = fsub fast float 1.000000e+00, %2852
  %2854 = fmul fast float %2853, %2771
  %2855 = fadd fast float %2854, %2852
  %2856 = fmul fast float %2855, %2771
  br label %2857

; <label>:2857                                    ; preds = %2829, %2827, %2814, %2784, %2768
  %2858 = phi float [ %2769, %2768 ], [ %2846, %2829 ], [ %2769, %2827 ], [ %2824, %2814 ], [ %2794, %2784 ]
  %2859 = phi float [ %2770, %2768 ], [ %2851, %2829 ], [ %2770, %2827 ], [ %2825, %2814 ], [ %2795, %2784 ]
  %2860 = phi float [ %2771, %2768 ], [ %2856, %2829 ], [ %2771, %2827 ], [ %2826, %2814 ], [ %2796, %2784 ]
  %2861 = phi float [ %2772, %2768 ], [ %2772, %2829 ], [ %2772, %2827 ], [ %2772, %2814 ], [ %2806, %2784 ]
  %2862 = phi float [ %2773, %2768 ], [ %2773, %2829 ], [ %2773, %2827 ], [ %2773, %2814 ], [ %2807, %2784 ]
  %2863 = phi float [ %2774, %2768 ], [ %2774, %2829 ], [ %2774, %2827 ], [ %2774, %2814 ], [ %2808, %2784 ]
  %2864 = phi float [ %2080, %2768 ], [ %2080, %2829 ], [ %2080, %2827 ], [ %2080, %2814 ], [ %2799, %2784 ]
  %2865 = phi float [ %2085, %2768 ], [ %2085, %2829 ], [ %2085, %2827 ], [ %2085, %2814 ], [ %2811, %2784 ]
  %2866 = and i32 %2776, 12
  %2867 = icmp eq i32 %2866, 12
  br i1 %2867, label %2984, label %2868

; <label>:2868                                    ; preds = %2857
  %2869 = and i32 %2776, 2097184
  %2870 = icmp eq i32 %2869, 2097184
  %2871 = select i1 %2870, float %2268, float 0.000000e+00
  %2872 = and i32 %2776, 4194336
  %2873 = icmp eq i32 %2872, 4194336
  %2874 = select i1 %2873, float %2268, float 0.000000e+00
  %2875 = and i32 %2776, 8388640
  %2876 = icmp eq i32 %2875, 8388640
  %2877 = select i1 %2876, float %2268, float 0.000000e+00
  %2878 = and i32 %2776, 1024
  %2879 = icmp ne i32 %2878, 0
  %2880 = select i1 %2879, float %2268, float 0.000000e+00
  %2881 = and i32 %2776, 2048
  %2882 = icmp ne i32 %2881, 0
  %2883 = select i1 %2882, float %2268, float 0.000000e+00
  %2884 = and i32 %2776, 16384
  %2885 = icmp ne i32 %2884, 0
  %2886 = select i1 %2885, float %2268, float 0.000000e+00
  %2887 = icmp eq i32 %2866, 0
  br i1 %2887, label %2888, label %2916

; <label>:2888                                    ; preds = %2868
  %2889 = fsub fast float %2569, %2069
  %2890 = fsub fast float %2570, %2070
  %2891 = fmul fast float %2871, %2889
  %2892 = fmul fast float %2871, %2890
  %2893 = fadd fast float %2891, %2069
  %2894 = fadd fast float %2892, %2070
  %2895 = fsub fast float %2571, %2082
  %2896 = fmul fast float %2874, %2895
  %2897 = fadd fast float %2896, %2082
  %2898 = fsub fast float %2568, %2081
  %2899 = fmul fast float %2877, %2898
  %2900 = fadd fast float %2899, %2081
  %2901 = fsub fast float %2674, %2077
  %2902 = fsub fast float %2675, %2078
  %2903 = fsub fast float %2676, %2079
  %2904 = fmul fast float %2880, %2901
  %2905 = fmul fast float %2880, %2902
  %2906 = fmul fast float %2880, %2903
  %2907 = fadd fast float %2904, %2077
  %2908 = fadd fast float %2905, %2078
  %2909 = fadd fast float %2906, %2079
  %2910 = fsub fast float %2718, %2083
  %2911 = fmul fast float %2883, %2910
  %2912 = fadd fast float %2911, %2083
  %2913 = fsub fast float %2719, %2084
  %2914 = fmul fast float %2886, %2913
  %2915 = fadd fast float %2914, %2084
  br label %2984

; <label>:2916                                    ; preds = %2868
  %2917 = icmp eq i32 %2866, 4
  br i1 %2917, label %2918, label %2960

; <label>:2918                                    ; preds = %2916
  %2919 = fmul fast float %2871, %2569
  %2920 = fmul fast float %2871, %2570
  %2921 = fadd fast float %2919, %2069
  %2922 = fadd fast float %2920, %2070
  %2923 = call float @dx.op.binary.f32(i32 36, float %2082, float %2571)  ; FMin(a,b)
  %2924 = fsub fast float %2923, %2082
  %2925 = fmul fast float %2924, %2874
  %2926 = fadd fast float %2925, %2082
  %2927 = fadd fast float %2568, %2081
  %2928 = fmul fast float %2927, 0x3FF337FAE0000000
  %2929 = fmul fast float %2081, %2081
  %2930 = fmul fast float %2568, %2568
  %2931 = fadd fast float %2930, %2929
  %2932 = fmul fast float %2931, 0x3FE5152B00000000
  %2933 = fmul fast float %2081, 0xBFCC1F85E0000000
  %2934 = fmul fast float %2933, %2568
  %2935 = fadd fast float %2934, 0xBFE1363700000000
  %2936 = fadd fast float %2935, %2928
  %2937 = fsub fast float %2936, %2932
  %2938 = fmul fast float %2927, 0x3FBA6F0D00000000
  %2939 = fmul fast float %2931, 0x3FD0432880000000
  %2940 = fmul fast float %2081, 0xBFEF110800000000
  %2941 = fmul fast float %2940, %2568
  %2942 = fadd fast float %2941, 1.000000e+00
  %2943 = fsub fast float %2942, %2938
  %2944 = fadd fast float %2943, %2939
  %2945 = fdiv fast float %2937, %2944
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2947 = fsub fast float %2946, %2081
  %2948 = fmul fast float %2947, %2877
  %2949 = fadd fast float %2948, %2081
  %2950 = fmul fast float %2880, %2674
  %2951 = fmul fast float %2880, %2675
  %2952 = fmul fast float %2880, %2676
  %2953 = fadd fast float %2950, %2077
  %2954 = fadd fast float %2951, %2078
  %2955 = fadd fast float %2952, %2079
  %2956 = fmul fast float %2883, %2718
  %2957 = fadd fast float %2956, %2083
  %2958 = fmul fast float %2886, %2719
  %2959 = fadd fast float %2958, %2084
  br label %2984

; <label>:2960                                    ; preds = %2916
  %2961 = icmp eq i32 %2866, 8
  br i1 %2961, label %2962, label %2984

; <label>:2962                                    ; preds = %2960
  %2963 = fmul fast float %2871, %2569
  %2964 = fmul fast float %2871, %2570
  %2965 = fadd fast float %2963, %2069
  %2966 = fadd fast float %2964, %2070
  %2967 = call float @dx.op.binary.f32(i32 36, float %2082, float %2571)  ; FMin(a,b)
  %2968 = fsub fast float %2967, %2082
  %2969 = fmul fast float %2968, %2874
  %2970 = fadd fast float %2969, %2082
  %2971 = fsub fast float %2568, %2081
  %2972 = fmul fast float %2877, %2971
  %2973 = fadd fast float %2972, %2081
  %2974 = fmul fast float %2880, %2674
  %2975 = fmul fast float %2880, %2675
  %2976 = fmul fast float %2880, %2676
  %2977 = fadd fast float %2974, %2077
  %2978 = fadd fast float %2975, %2078
  %2979 = fadd fast float %2976, %2079
  %2980 = fmul fast float %2883, %2718
  %2981 = fadd fast float %2980, %2083
  %2982 = fmul fast float %2886, %2719
  %2983 = fadd fast float %2982, %2084
  br label %2984

; <label>:2984                                    ; preds = %2962, %2960, %2918, %2888, %2857, %2267, %2086, %2068
  %2985 = phi float [ %2069, %2857 ], [ %2069, %2267 ], [ %2069, %2068 ], [ %2965, %2962 ], [ %2069, %2960 ], [ %2921, %2918 ], [ %2893, %2888 ], [ %2069, %2086 ]
  %2986 = phi float [ %2070, %2857 ], [ %2070, %2267 ], [ %2070, %2068 ], [ %2966, %2962 ], [ %2070, %2960 ], [ %2922, %2918 ], [ %2894, %2888 ], [ %2070, %2086 ]
  %2987 = phi float [ %2858, %2857 ], [ %2071, %2267 ], [ %2071, %2068 ], [ %2858, %2962 ], [ %2858, %2960 ], [ %2858, %2918 ], [ %2858, %2888 ], [ %2071, %2086 ]
  %2988 = phi float [ %2859, %2857 ], [ %2072, %2267 ], [ %2072, %2068 ], [ %2859, %2962 ], [ %2859, %2960 ], [ %2859, %2918 ], [ %2859, %2888 ], [ %2072, %2086 ]
  %2989 = phi float [ %2860, %2857 ], [ %2073, %2267 ], [ %2073, %2068 ], [ %2860, %2962 ], [ %2860, %2960 ], [ %2860, %2918 ], [ %2860, %2888 ], [ %2073, %2086 ]
  %2990 = phi float [ %2861, %2857 ], [ %2074, %2267 ], [ %2074, %2068 ], [ %2861, %2962 ], [ %2861, %2960 ], [ %2861, %2918 ], [ %2861, %2888 ], [ %2074, %2086 ]
  %2991 = phi float [ %2862, %2857 ], [ %2075, %2267 ], [ %2075, %2068 ], [ %2862, %2962 ], [ %2862, %2960 ], [ %2862, %2918 ], [ %2862, %2888 ], [ %2075, %2086 ]
  %2992 = phi float [ %2863, %2857 ], [ %2076, %2267 ], [ %2076, %2068 ], [ %2863, %2962 ], [ %2863, %2960 ], [ %2863, %2918 ], [ %2863, %2888 ], [ %2076, %2086 ]
  %2993 = phi float [ %2077, %2857 ], [ %2077, %2267 ], [ %2077, %2068 ], [ %2977, %2962 ], [ %2077, %2960 ], [ %2953, %2918 ], [ %2907, %2888 ], [ %2077, %2086 ]
  %2994 = phi float [ %2078, %2857 ], [ %2078, %2267 ], [ %2078, %2068 ], [ %2978, %2962 ], [ %2078, %2960 ], [ %2954, %2918 ], [ %2908, %2888 ], [ %2078, %2086 ]
  %2995 = phi float [ %2079, %2857 ], [ %2079, %2267 ], [ %2079, %2068 ], [ %2979, %2962 ], [ %2079, %2960 ], [ %2955, %2918 ], [ %2909, %2888 ], [ %2079, %2086 ]
  %2996 = phi float [ %2864, %2857 ], [ %2080, %2267 ], [ %2080, %2068 ], [ %2864, %2962 ], [ %2864, %2960 ], [ %2864, %2918 ], [ %2864, %2888 ], [ %2080, %2086 ]
  %2997 = phi float [ %2081, %2857 ], [ %2081, %2267 ], [ %2081, %2068 ], [ %2973, %2962 ], [ %2081, %2960 ], [ %2949, %2918 ], [ %2900, %2888 ], [ %2081, %2086 ]
  %2998 = phi float [ %2082, %2857 ], [ %2082, %2267 ], [ %2082, %2068 ], [ %2970, %2962 ], [ %2082, %2960 ], [ %2926, %2918 ], [ %2897, %2888 ], [ %2082, %2086 ]
  %2999 = phi float [ %2083, %2857 ], [ %2083, %2267 ], [ %2083, %2068 ], [ %2981, %2962 ], [ %2083, %2960 ], [ %2957, %2918 ], [ %2912, %2888 ], [ %2083, %2086 ]
  %3000 = phi float [ %2084, %2857 ], [ %2084, %2267 ], [ %2084, %2068 ], [ %2983, %2962 ], [ %2084, %2960 ], [ %2959, %2918 ], [ %2915, %2888 ], [ %2084, %2086 ]
  %3001 = phi float [ %2865, %2857 ], [ %2085, %2267 ], [ %2085, %2068 ], [ %2865, %2962 ], [ %2865, %2960 ], [ %2865, %2918 ], [ %2865, %2888 ], [ %2085, %2086 ]
  br i1 %453, label %3900, label %3002

; <label>:3002                                    ; preds = %2984
  %3003 = icmp ult i32 %507, 4
  %3004 = add i32 %55, 72
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %55, 76
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = or i32 %3009, %3006
  %3011 = icmp eq i32 %3010, 0
  br i1 %3011, label %3900, label %3012

; <label>:3012                                    ; preds = %3002
  %3013 = and i32 %3006, 262144
  %3014 = icmp ne i32 %3013, 0
  %3015 = select i1 %3014, float %61, float 1.000000e+00
  %3016 = select i1 %3014, float %62, float 0.000000e+00
  %3017 = select i1 %3014, float %63, float 0.000000e+00
  %3018 = select i1 %3014, float %64, float 1.000000e+00
  %3019 = select i1 %3014, float %65, float %88
  %3020 = select i1 %3014, float %66, float %89
  %3021 = add i32 %55, 332
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = lshr i32 %3023, 16
  %3025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3024)  ; LegacyF16ToF32(value)
  %3026 = fmul fast float %3025, 0x3F50624DE0000000
  %3027 = add i32 %55, 136
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = lshr i32 %3029, 16
  %3031 = and i32 %3030, 255
  %3032 = lshr i32 %3029, 24
  %3033 = add i32 %55, 340
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 65535
  %3037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3036)  ; LegacyF16ToF32(value)
  %3038 = lshr i32 %3035, 16
  %3039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3038)  ; LegacyF16ToF32(value)
  %3040 = add i32 %55, 80
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = lshr i32 %3042, 22
  %3044 = shl nuw nsw i32 %3043, 5
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = shl i32 %3042, 4
  %3047 = and i32 %3046, 32752
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = lshr i32 %3042, 7
  %3050 = and i32 %3049, 32752
  %3051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3050)  ; LegacyF16ToF32(value)
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 3
  %3054 = fmul fast float %3053, 1.000000e+03
  %3055 = fmul fast float %443, %3054
  %3056 = call float @dx.op.unary.f32(i32 22, float %3055)  ; Frc(value)
  %3057 = fadd fast float %3056, %433
  %3058 = fmul fast float %444, %3054
  %3059 = call float @dx.op.unary.f32(i32 22, float %3058)  ; Frc(value)
  %3060 = fadd fast float %3059, %435
  %3061 = fmul fast float %3026, %3054
  %3062 = call float @dx.op.unary.f32(i32 22, float %3061)  ; Frc(value)
  %3063 = fmul fast float %3062, 0x401921FB60000000
  %3064 = fadd fast float %3063, %3045
  %3065 = call float @dx.op.unary.f32(i32 13, float %3064)  ; Sin(value)
  %3066 = call float @dx.op.unary.f32(i32 12, float %3064)  ; Cos(value)
  %3067 = fsub fast float -0.000000e+00, %3065
  %3068 = fadd fast float %3019, -5.000000e-01
  %3069 = fadd fast float %3020, -5.000000e-01
  %3070 = fmul fast float %3037, %3068
  %3071 = fmul fast float %3039, %3069
  %3072 = fadd fast float %3070, 5.000000e-01
  %3073 = fadd fast float %3071, 5.000000e-01
  %3074 = fmul fast float %3048, %3072
  %3075 = fmul fast float %3051, %3073
  %3076 = fmul fast float %3066, %3074
  %3077 = call float @dx.op.tertiary.f32(i32 46, float %3067, float %3075, float %3076)  ; FMad(a,b,c)
  %3078 = fmul fast float %3065, %3074
  %3079 = call float @dx.op.tertiary.f32(i32 46, float %3066, float %3075, float %3078)  ; FMad(a,b,c)
  %3080 = fadd fast float %3057, %3077
  %3081 = fadd fast float %3060, %3079
  %3082 = icmp ugt i32 %3031, 1
  %3083 = icmp ugt i32 %3029, 33554431
  %3084 = or i1 %3083, %3082
  br i1 %3084, label %3085, label %3110

; <label>:3085                                    ; preds = %3012
  %3086 = add i32 %55, 276
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = lshr i32 %3088, 16
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = fmul fast float %3053, %3090
  %3092 = call float @dx.op.unary.f32(i32 22, float %3091)  ; Frc(value)
  %3093 = mul nuw nsw i32 %3031, %3032
  %3094 = uitofp i32 %3093 to float
  %3095 = fmul fast float %3092, %3094
  %3096 = call float @dx.op.unary.f32(i32 27, float %3095)  ; Round_ni(value)
  %3097 = fptoui float %3096 to i32
  %3098 = urem i32 %3097, %3031
  %3099 = udiv i32 %3097, %3032
  %3100 = call float @dx.op.unary.f32(i32 22, float %3080)  ; Frc(value)
  %3101 = call float @dx.op.unary.f32(i32 22, float %3081)  ; Frc(value)
  %3102 = uitofp i32 %3098 to float
  %3103 = uitofp i32 %3099 to float
  %3104 = fadd fast float %3100, %3102
  %3105 = fadd fast float %3101, %3103
  %3106 = uitofp i32 %3031 to float
  %3107 = uitofp i32 %3032 to float
  %3108 = fdiv fast float %3104, %3106
  %3109 = fdiv fast float %3105, %3107
  br label %3110

; <label>:3110                                    ; preds = %3085, %3012
  %3111 = phi float [ %3108, %3085 ], [ %3080, %3012 ]
  %3112 = phi float [ %3109, %3085 ], [ %3081, %3012 ]
  %3113 = and i32 %3006, 256
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3161, label %3115

; <label>:3115                                    ; preds = %3110
  %3116 = add i32 %55, 452
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = add i32 %3118, 0
  %3120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3120, %dx.types.Handle %103, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = add i32 %55, 148
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = shl i32 %3125, 4
  %3127 = and i32 %3126, 32752
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = lshr i32 %3125, 7
  %3130 = and i32 %3129, 32752
  %3131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3130)  ; LegacyF16ToF32(value)
  %3132 = fsub fast float 1.000000e+00, %502
  %3133 = call float @dx.op.binary.f32(i32 35, float %3132, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3134 = bitcast float %502 to i32
  %3135 = sitofp i32 %3134 to float
  %3136 = fadd fast float %3135, 0xC1CFBF8940000000
  %3137 = fmul fast float %3131, %3136
  %3138 = fadd fast float %3137, 0x41CFBF8940000000
  %3139 = fptosi float %3138 to i32
  %3140 = bitcast i32 %3139 to float
  %3141 = bitcast float %3133 to i32
  %3142 = sitofp i32 %3141 to float
  %3143 = fadd fast float %3142, 0xC1CFBF8940000000
  %3144 = fmul fast float %3143, %3131
  %3145 = fadd fast float %3144, 0x41CFBF8940000000
  %3146 = fptosi float %3145 to i32
  %3147 = bitcast i32 %3146 to float
  %3148 = fmul fast float %3140, %3128
  %3149 = fmul fast float %3147, %3128
  %3150 = fsub fast float %3133, %3148
  %3151 = fadd fast float %3149, %3133
  %3152 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3154 = fsub fast float %3122, %3152
  %3155 = fsub fast float %3153, %3152
  %3156 = bitcast float %3155 to i32
  %3157 = sub nsw i32 2129859010, %3156
  %3158 = bitcast i32 %3157 to float
  %3159 = fmul fast float %3158, %3154
  %3160 = call float @dx.op.unary.f32(i32 7, float %3159)  ; Saturate(value)
  br label %3161

; <label>:3161                                    ; preds = %3115, %3110
  %3162 = phi float [ %3160, %3115 ], [ %502, %3110 ]
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 128
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3183, label %3167

; <label>:3167                                    ; preds = %3161
  %3168 = add i32 %55, 436
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = add i32 %3170, 0
  %3172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3172, %dx.types.Handle %103, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 524288
  %3178 = icmp ne i32 %3177, 0
  %3179 = fcmp fast ogt float %3174, 0x3FE0101020000000
  %3180 = select i1 %3179, float 1.000000e+00, float 0.000000e+00
  %3181 = select i1 %3178, float %3180, float %3174
  %3182 = fmul fast float %3181, %3162
  br label %3183

; <label>:3183                                    ; preds = %3167, %3161
  %3184 = phi float [ %3182, %3167 ], [ %3162, %3161 ]
  %3185 = fcmp fast ult float %3184, 0x3F70101020000000
  br i1 %3185, label %3900, label %3186

; <label>:3186                                    ; preds = %3183
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 16
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3389, label %3191

; <label>:3191                                    ; preds = %3186
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = add i32 %55, 388
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = add i32 %3196, 0
  %3198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3198, %dx.types.Handle %102, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3200 = extractvalue %dx.types.ResRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.ResRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.ResRet.f32 %3199, 2
  %3203 = extractvalue %dx.types.ResRet.f32 %3199, 3
  %3204 = and i32 %3193, 255
  %3205 = uitofp i32 %3204 to float
  %3206 = lshr i32 %3193, 8
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3203, %3205
  %3210 = fadd fast float %3209, %3208
  %3211 = fmul fast float %3210, 0x3F70101000000000
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 512
  %3215 = icmp eq i32 %3214, 0
  br i1 %3215, label %3224, label %3216

; <label>:3216                                    ; preds = %3191
  %3217 = add i32 %55, 472
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = add i32 %3219, 0
  %3221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3221, %dx.types.Handle %103, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  br label %3224

; <label>:3224                                    ; preds = %3216, %3191
  %3225 = phi float [ %3223, %3216 ], [ 1.000000e+00, %3191 ]
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 33554432
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3336, label %3230

; <label>:3230                                    ; preds = %3224
  %3231 = add i32 %55, 272
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = and i32 %3233, 65535
  %3235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3234)  ; LegacyF16ToF32(value)
  %3236 = lshr i32 %3233, 16
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = add i32 %55, 276
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 65535
  %3242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3241)  ; LegacyF16ToF32(value)
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = lshr i32 %3244, 24
  %3246 = uitofp i32 %3245 to float
  %3247 = fmul fast float %3246, 0x3F70101020000000
  %3248 = and i32 %3244, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = lshr i32 %3244, 8
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = lshr i32 %3244, 16
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = add i32 %55, 268
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = lshr i32 %3261, 24
  %3263 = uitofp i32 %3262 to float
  %3264 = fmul fast float %3263, 0x3F70101020000000
  %3265 = and i32 %3261, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = fmul fast float %3266, 0x3F70101020000000
  %3268 = lshr i32 %3261, 8
  %3269 = and i32 %3268, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = lshr i32 %3261, 16
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = fmul fast float %3274, 0x3F70101020000000
  %3276 = bitcast float %3200 to i32
  %3277 = ashr i32 %3276, 1
  %3278 = sub nsw i32 1597463174, %3277
  %3279 = bitcast i32 %3278 to float
  %3280 = fmul fast float %3200, 5.000000e-01
  %3281 = fmul fast float %3279, %3279
  %3282 = fmul fast float %3281, %3280
  %3283 = fsub fast float 1.500000e+00, %3282
  %3284 = fmul fast float %3279, %3200
  %3285 = fmul fast float %3284, %3283
  %3286 = bitcast float %3201 to i32
  %3287 = ashr i32 %3286, 1
  %3288 = sub nsw i32 1597463174, %3287
  %3289 = bitcast i32 %3288 to float
  %3290 = fmul fast float %3201, 5.000000e-01
  %3291 = fmul fast float %3289, %3289
  %3292 = fmul fast float %3291, %3290
  %3293 = fsub fast float 1.500000e+00, %3292
  %3294 = fmul fast float %3289, %3201
  %3295 = fmul fast float %3294, %3293
  %3296 = bitcast float %3202 to i32
  %3297 = ashr i32 %3296, 1
  %3298 = sub nsw i32 1597463174, %3297
  %3299 = bitcast i32 %3298 to float
  %3300 = fmul fast float %3202, 5.000000e-01
  %3301 = fmul fast float %3299, %3299
  %3302 = fmul fast float %3301, %3300
  %3303 = fsub fast float 1.500000e+00, %3302
  %3304 = fmul fast float %3299, %3202
  %3305 = fmul fast float %3304, %3303
  %3306 = fsub fast float %3285, %3267
  %3307 = fsub fast float %3295, %3271
  %3308 = fsub fast float %3305, %3275
  %3309 = fmul fast float %3306, %3235
  %3310 = fmul fast float %3307, %3237
  %3311 = fmul fast float %3308, %3242
  %3312 = fadd fast float %3309, %3250
  %3313 = fadd fast float %3310, %3254
  %3314 = fadd fast float %3311, %3258
  %3315 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3316 = call float @dx.op.unary.f32(i32 7, float %3313)  ; Saturate(value)
  %3317 = call float @dx.op.unary.f32(i32 7, float %3314)  ; Saturate(value)
  %3318 = fmul fast float %3315, %3315
  %3319 = fmul fast float %3316, %3316
  %3320 = fmul fast float %3317, %3317
  %3321 = fsub fast float %3318, %3200
  %3322 = fsub fast float %3319, %3201
  %3323 = fsub fast float %3320, %3202
  %3324 = fmul fast float %3321, %3225
  %3325 = fmul fast float %3322, %3225
  %3326 = fmul fast float %3323, %3225
  %3327 = fadd fast float %3324, %3200
  %3328 = fadd fast float %3325, %3201
  %3329 = fadd fast float %3326, %3202
  %3330 = fadd fast float %3247, %3211
  %3331 = fsub fast float %3330, %3264
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fsub fast float %3332, %3211
  %3334 = fmul fast float %3333, %3225
  %3335 = fadd fast float %3334, %3211
  br label %3389

; <label>:3336                                    ; preds = %3224
  %3337 = and i32 %3227, 134217728
  %3338 = icmp eq i32 %3337, 0
  br i1 %3338, label %3373, label %3339

; <label>:3339                                    ; preds = %3336
  %3340 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3341 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3342 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fadd fast float %3342, -5.000000e-01
  %3346 = fmul fast float %3343, %3225
  %3347 = fmul fast float %3344, %3225
  %3348 = fmul fast float %3345, %3225
  %3349 = fadd fast float %3346, 5.000000e-01
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = fadd fast float %3348, 5.000000e-01
  %3352 = call float @dx.op.unary.f32(i32 24, float %3200)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %3201)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %3202)  ; Sqrt(value)
  %3355 = fmul fast float %3349, 2.000000e+00
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = fmul fast float %3356, %3352
  %3358 = fadd fast float %3357, %3355
  %3359 = fmul fast float %3358, %3352
  %3360 = fmul fast float %3350, 2.000000e+00
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %3353
  %3363 = fadd fast float %3362, %3360
  %3364 = fmul fast float %3363, %3353
  %3365 = fmul fast float %3351, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3354
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3354
  %3370 = fmul fast float %3359, %3359
  %3371 = fmul fast float %3364, %3364
  %3372 = fmul fast float %3369, %3369
  br label %3389

; <label>:3373                                    ; preds = %3336
  %3374 = fmul fast float %420, %420
  %3375 = fmul fast float %424, %424
  %3376 = fmul fast float %428, %428
  %3377 = fadd fast float %3374, -1.000000e+00
  %3378 = fadd fast float %3375, -1.000000e+00
  %3379 = fadd fast float %3376, -1.000000e+00
  %3380 = fmul fast float %3225, %3377
  %3381 = fmul fast float %3225, %3378
  %3382 = fmul fast float %3225, %3379
  %3383 = fadd fast float %3380, 1.000000e+00
  %3384 = fadd fast float %3381, 1.000000e+00
  %3385 = fadd fast float %3382, 1.000000e+00
  %3386 = fmul fast float %3383, %3200
  %3387 = fmul fast float %3384, %3201
  %3388 = fmul fast float %3385, %3202
  br label %3389

; <label>:3389                                    ; preds = %3373, %3339, %3230, %3186
  %3390 = phi float [ %3335, %3230 ], [ %3211, %3339 ], [ %3211, %3373 ], [ 0x3FA23C0BE0000000, %3186 ]
  %3391 = phi float [ %3327, %3230 ], [ %3370, %3339 ], [ %3386, %3373 ], [ 1.000000e+00, %3186 ]
  %3392 = phi float [ %3328, %3230 ], [ %3371, %3339 ], [ %3387, %3373 ], [ 1.000000e+00, %3186 ]
  %3393 = phi float [ %3329, %3230 ], [ %3372, %3339 ], [ %3388, %3373 ], [ 1.000000e+00, %3186 ]
  %3394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.i32 %3394, 1
  %3396 = and i32 %3395, 1
  %3397 = icmp ne i32 %3396, 0
  %3398 = add i32 %55, 356
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 32
  %3402 = icmp ne i32 %3401, 0
  %3403 = and i1 %3397, %3402
  %3404 = select i1 %3403, float 1.000000e+00, float %3391
  %3405 = select i1 %3403, float 0x3FD3333340000000, float %3392
  %3406 = select i1 %3403, float 0x3FD3333340000000, float %3393
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = and i32 %3408, 32
  %3410 = icmp eq i32 %3409, 0
  br i1 %3410, label %3483, label %3411

; <label>:3411                                    ; preds = %3389
  %3412 = add i32 %55, 140
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = add i32 %55, 404
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = add i32 %3417, 0
  %3419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3419, %dx.types.Handle %102, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3425 = and i32 %3414, 255
  %3426 = uitofp i32 %3425 to float
  %3427 = lshr i32 %3414, 8
  %3428 = and i32 %3427, 255
  %3429 = uitofp i32 %3428 to float
  %3430 = lshr i32 %3414, 16
  %3431 = and i32 %3430, 255
  %3432 = uitofp i32 %3431 to float
  %3433 = fmul fast float %3432, 0x3F70101000000000
  %3434 = fmul fast float %3421, %3426
  %3435 = fadd fast float %3434, %3429
  %3436 = fmul fast float %3435, 0x3F70101000000000
  %3437 = fadd fast float %3422, -5.000000e-01
  %3438 = fadd fast float %3424, -5.000000e-01
  %3439 = fmul fast float %3437, %3433
  %3440 = fmul fast float %3438, %3433
  %3441 = fadd fast float %3439, 5.000000e-01
  %3442 = fadd fast float %3440, 5.000000e-01
  %3443 = fmul fast float %3441, 2.000000e+00
  %3444 = fadd fast float %3443, -1.000000e+00
  %3445 = fmul fast float %3442, 2.000000e+00
  %3446 = fadd fast float %3445, -1.000000e+00
  %3447 = fadd fast float %3444, %3446
  %3448 = fmul fast float %3447, 5.000000e-01
  %3449 = fsub fast float %3444, %3446
  %3450 = fmul fast float %3449, 5.000000e-01
  %3451 = call float @dx.op.unary.f32(i32 6, float %3448)  ; FAbs(value)
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = call float @dx.op.unary.f32(i32 6, float %3450)  ; FAbs(value)
  %3454 = fsub fast float %3452, %3453
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3448, float %3450, float %3454, float %3448, float %3450, float %3454)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = call float @dx.op.unary.f32(i32 25, float %3455)  ; Rsqrt(value)
  %3457 = fmul fast float %3448, %3456
  %3458 = fmul fast float %3450, %3456
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 67108864
  %3462 = icmp eq i32 %3461, 0
  br i1 %3462, label %3479, label %3463

; <label>:3463                                    ; preds = %3411
  %3464 = add i32 %55, 328
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 65535
  %3468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3467)  ; LegacyF16ToF32(value)
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 65535
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = lshr i32 %3466, 16
  %3474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3473)  ; LegacyF16ToF32(value)
  %3475 = fsub fast float %3436, %3474
  %3476 = fmul fast float %3475, %3468
  %3477 = fadd fast float %3476, %3472
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  br label %3479

; <label>:3479                                    ; preds = %3463, %3411
  %3480 = phi float [ %3478, %3463 ], [ %3436, %3411 ]
  %3481 = call float @dx.op.dot2.f32(i32 54, float %3457, float %3458, float %3015, float %3016)  ; Dot2(ax,ay,bx,by)
  %3482 = call float @dx.op.dot2.f32(i32 54, float %3457, float %3458, float %3017, float %3018)  ; Dot2(ax,ay,bx,by)
  br label %3483

; <label>:3483                                    ; preds = %3479, %3389
  %3484 = phi float [ %3480, %3479 ], [ 0x3FD6666660000000, %3389 ]
  %3485 = phi float [ %3481, %3479 ], [ 0.000000e+00, %3389 ]
  %3486 = phi float [ %3482, %3479 ], [ 0.000000e+00, %3389 ]
  %3487 = phi float [ %3423, %3479 ], [ 1.000000e+00, %3389 ]
  %3488 = add i32 %55, 208
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = lshr i32 %3490, 22
  %3492 = shl nuw nsw i32 %3491, 5
  %3493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3492)  ; LegacyF16ToF32(value)
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 64
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %3531, label %3498

; <label>:3498                                    ; preds = %3483
  %3499 = add i32 %55, 420
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = add i32 %3501, 0
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 131072
  %3507 = icmp eq i32 %3506, 0
  %3508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3503, %dx.types.Handle %102, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = fmul fast float %3509, %408
  %3513 = fmul fast float %3510, %411
  %3514 = fmul fast float %3511, %414
  br i1 %3507, label %3521, label %3515

; <label>:3515                                    ; preds = %3498
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = fmul fast float %3517, %3512
  %3519 = fmul fast float %3517, %3513
  %3520 = fmul fast float %3517, %3514
  br label %3521

; <label>:3521                                    ; preds = %3515, %3498
  %3522 = phi float [ %3518, %3515 ], [ %3512, %3498 ]
  %3523 = phi float [ %3519, %3515 ], [ %3513, %3498 ]
  %3524 = phi float [ %3520, %3515 ], [ %3514, %3498 ]
  %3525 = fmul fast float %3522, %3493
  %3526 = select i1 %265, float %3525, float %3522
  %3527 = call float @dx.op.dot3.f32(i32 55, float %3526, float %3523, float %3524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = select i1 %265, float 0.000000e+00, float %3522
  %3529 = select i1 %265, float %3527, float %3523
  %3530 = select i1 %265, float 0.000000e+00, float %3524
  br label %3531

; <label>:3531                                    ; preds = %3521, %3483
  %3532 = phi float [ %3528, %3521 ], [ 0.000000e+00, %3483 ]
  %3533 = phi float [ %3529, %3521 ], [ 0.000000e+00, %3483 ]
  %3534 = phi float [ %3530, %3521 ], [ 0.000000e+00, %3483 ]
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 1024
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3569, label %3539

; <label>:3539                                    ; preds = %3531
  %3540 = add i32 %55, 200
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = fmul fast float %3544, 0x3F70101020000000
  %3546 = lshr i32 %3542, 8
  %3547 = and i32 %3546, 255
  %3548 = uitofp i32 %3547 to float
  %3549 = fmul fast float %3548, 0x3F70101020000000
  %3550 = lshr i32 %3542, 16
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = fmul fast float %3552, 0x3F70101020000000
  %3554 = fmul fast float %3545, %3545
  %3555 = fmul fast float %3549, %3549
  %3556 = fmul fast float %3553, %3553
  %3557 = add i32 %55, 488
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = add i32 %3559, 0
  %3561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3561, %dx.types.Handle %103, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = fmul fast float %3554, %3563
  %3567 = fmul fast float %3555, %3564
  %3568 = fmul fast float %3556, %3565
  br label %3569

; <label>:3569                                    ; preds = %3539, %3531
  %3570 = phi float [ %3566, %3539 ], [ 0.000000e+00, %3531 ]
  %3571 = phi float [ %3567, %3539 ], [ 0.000000e+00, %3531 ]
  %3572 = phi float [ %3568, %3539 ], [ 0.000000e+00, %3531 ]
  %3573 = fcmp fast ogt float %3570, 0.000000e+00
  %3574 = fcmp fast ogt float %3571, 0.000000e+00
  %3575 = fcmp fast ogt float %3572, 0.000000e+00
  %3576 = call float @dx.op.unary.f32(i32 23, float %3570)  ; Log(value)
  %3577 = call float @dx.op.unary.f32(i32 23, float %3571)  ; Log(value)
  %3578 = call float @dx.op.unary.f32(i32 23, float %3572)  ; Log(value)
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = lshr i32 %3580, 7
  %3582 = and i32 %3581, 32752
  %3583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3582)  ; LegacyF16ToF32(value)
  %3584 = fmul fast float %3576, 0xBFE62E4300000000
  %3585 = fmul fast float %3584, %3583
  %3586 = fmul fast float %3577, 0xBFE62E4300000000
  %3587 = fmul fast float %3586, %3583
  %3588 = fmul fast float %3578, 0xBFE62E4300000000
  %3589 = fmul fast float %3588, %3583
  %3590 = select i1 %3573, float %3585, float 1.270000e+02
  %3591 = select i1 %3574, float %3587, float 1.270000e+02
  %3592 = select i1 %3575, float %3589, float 1.270000e+02
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %3594, 26624
  %3596 = icmp eq i32 %3595, 0
  br i1 %3596, label %3633, label %3597

; <label>:3597                                    ; preds = %3569
  %3598 = add i32 %55, 504
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = add i32 %3600, 0
  %3602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3602, %dx.types.Handle %103, float %3111, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = and i32 %3606, 1048576
  %3608 = icmp ne i32 %3607, 0
  %3609 = and i32 %3606, 2048
  %3610 = icmp eq i32 %3609, 0
  br i1 %3610, label %3620, label %3611

; <label>:3611                                    ; preds = %3597
  %3612 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = shl i32 %3614, 4
  %3616 = and i32 %3615, 32752
  %3617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3616)  ; LegacyF16ToF32(value)
  %3618 = fmul fast float %3617, %3612
  %3619 = call float @dx.op.binary.f32(i32 35, float %3618, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3620

; <label>:3620                                    ; preds = %3611, %3597
  %3621 = phi float [ %3619, %3611 ], [ 0x3F70101020000000, %3597 ]
  %3622 = and i32 %3606, 16384
  %3623 = icmp eq i32 %3622, 0
  br i1 %3623, label %3633, label %3624

; <label>:3624                                    ; preds = %3620
  %3625 = add i32 %55, 144
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = lshr i32 %3627, 24
  %3629 = uitofp i32 %3628 to float
  %3630 = fmul fast float %3604, 0x3F70101020000000
  %3631 = select i1 %3608, float 0x3F70101020000000, float %3630
  %3632 = fmul fast float %3631, %3629
  br label %3633

; <label>:3633                                    ; preds = %3624, %3620, %3569
  %3634 = phi float [ %3621, %3624 ], [ %3621, %3620 ], [ 0x3F70101020000000, %3569 ]
  %3635 = phi float [ %3632, %3624 ], [ 0.000000e+00, %3620 ], [ 0.000000e+00, %3569 ]
  %3636 = add i32 %55, 144
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = and i32 %3638, 255
  %3640 = uitofp i32 %3639 to float
  %3641 = lshr i32 %3638, 8
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = call float @dx.op.dot3.f32(i32 55, float %3404, float %3405, float %3406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3645 = fmul fast float %3643, %3644
  %3646 = fadd fast float %3645, %3640
  %3647 = fmul fast float %3646, 0x3F70101020000000
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  br i1 %3003, label %3649, label %3684

; <label>:3649                                    ; preds = %3633
  %3650 = fmul fast float %3634, 2.000000e+00
  %3651 = fcmp fast olt float %3590, 1.270000e+02
  %3652 = fcmp fast olt float %3591, 1.270000e+02
  %3653 = fcmp fast olt float %3592, 1.270000e+02
  %3654 = fmul fast float %3590, 0xBFF7154760000000
  %3655 = fmul fast float %3654, %3650
  %3656 = fmul fast float %3591, 0xBFF7154760000000
  %3657 = fmul fast float %3656, %3650
  %3658 = fmul fast float %3592, 0xBFF7154760000000
  %3659 = fmul fast float %3658, %3650
  %3660 = call float @dx.op.unary.f32(i32 21, float %3655)  ; Exp(value)
  %3661 = call float @dx.op.unary.f32(i32 21, float %3657)  ; Exp(value)
  %3662 = call float @dx.op.unary.f32(i32 21, float %3659)  ; Exp(value)
  %3663 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3664 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  %3665 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3666 = fadd fast float %3663, -1.000000e+00
  %3667 = select i1 %3651, float %3666, float -1.000000e+00
  %3668 = fadd fast float %3664, -1.000000e+00
  %3669 = select i1 %3652, float %3668, float -1.000000e+00
  %3670 = fadd fast float %3665, -1.000000e+00
  %3671 = select i1 %3653, float %3670, float -1.000000e+00
  %3672 = fmul fast float %3667, %3184
  %3673 = fmul fast float %3669, %3184
  %3674 = fmul fast float %3671, %3184
  %3675 = fadd fast float %3672, 1.000000e+00
  %3676 = fadd fast float %3673, 1.000000e+00
  %3677 = fadd fast float %3674, 1.000000e+00
  %3678 = fmul fast float %3675, %2987
  %3679 = fmul fast float %3676, %2988
  %3680 = fmul fast float %3677, %2989
  %3681 = fmul fast float %3675, %2990
  %3682 = fmul fast float %3676, %2991
  %3683 = fmul fast float %3677, %2992
  br label %3684

; <label>:3684                                    ; preds = %3649, %3633
  %3685 = phi float [ %3678, %3649 ], [ %2987, %3633 ]
  %3686 = phi float [ %3679, %3649 ], [ %2988, %3633 ]
  %3687 = phi float [ %3680, %3649 ], [ %2989, %3633 ]
  %3688 = phi float [ %3681, %3649 ], [ %2990, %3633 ]
  %3689 = phi float [ %3682, %3649 ], [ %2991, %3633 ]
  %3690 = phi float [ %3683, %3649 ], [ %2992, %3633 ]
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, 3
  %3694 = icmp eq i32 %3693, 3
  br i1 %3694, label %3773, label %3695

; <label>:3695                                    ; preds = %3684
  %3696 = and i32 %3692, 16
  %3697 = icmp ne i32 %3696, 0
  %3698 = select i1 %3697, float %3184, float 0.000000e+00
  %3699 = icmp eq i32 %3693, 0
  br i1 %3699, label %3700, label %3728

; <label>:3700                                    ; preds = %3695
  %3701 = and i32 %3692, 64
  %3702 = icmp ne i32 %3701, 0
  %3703 = select i1 %3702, float %3184, float 0.000000e+00
  %3704 = fsub fast float %3404, %3685
  %3705 = fsub fast float %3405, %3686
  %3706 = fsub fast float %3406, %3687
  %3707 = fmul fast float %3698, %3704
  %3708 = fmul fast float %3698, %3705
  %3709 = fmul fast float %3698, %3706
  %3710 = fadd fast float %3707, %3685
  %3711 = fadd fast float %3708, %3686
  %3712 = fadd fast float %3709, %3687
  %3713 = fsub fast float %3390, %2996
  %3714 = fmul fast float %3698, %3713
  %3715 = fadd fast float %3714, %2996
  %3716 = fsub fast float %3532, %3688
  %3717 = fsub fast float %3533, %3689
  %3718 = fsub fast float %3534, %3690
  %3719 = fmul fast float %3703, %3716
  %3720 = fmul fast float %3703, %3717
  %3721 = fmul fast float %3703, %3718
  %3722 = fadd fast float %3719, %3688
  %3723 = fadd fast float %3720, %3689
  %3724 = fadd fast float %3721, %3690
  %3725 = fsub fast float %3648, %3001
  %3726 = fmul fast float %3698, %3725
  %3727 = fadd fast float %3726, %3001
  br label %3773

; <label>:3728                                    ; preds = %3695
  %3729 = icmp eq i32 %3693, 1
  br i1 %3729, label %3730, label %3743

; <label>:3730                                    ; preds = %3728
  %3731 = fadd fast float %3404, -1.000000e+00
  %3732 = fadd fast float %3405, -1.000000e+00
  %3733 = fadd fast float %3406, -1.000000e+00
  %3734 = fmul fast float %3698, %3731
  %3735 = fmul fast float %3698, %3732
  %3736 = fmul fast float %3698, %3733
  %3737 = fadd fast float %3734, 1.000000e+00
  %3738 = fadd fast float %3735, 1.000000e+00
  %3739 = fadd fast float %3736, 1.000000e+00
  %3740 = fmul fast float %3737, %3685
  %3741 = fmul fast float %3738, %3686
  %3742 = fmul fast float %3739, %3687
  br label %3773

; <label>:3743                                    ; preds = %3728
  %3744 = icmp eq i32 %3693, 2
  br i1 %3744, label %3745, label %3773

; <label>:3745                                    ; preds = %3743
  %3746 = call float @dx.op.unary.f32(i32 24, float %3404)  ; Sqrt(value)
  %3747 = call float @dx.op.unary.f32(i32 24, float %3405)  ; Sqrt(value)
  %3748 = call float @dx.op.unary.f32(i32 24, float %3406)  ; Sqrt(value)
  %3749 = fadd fast float %3746, -5.000000e-01
  %3750 = fadd fast float %3747, -5.000000e-01
  %3751 = fadd fast float %3748, -5.000000e-01
  %3752 = fmul fast float %3749, %3698
  %3753 = fmul fast float %3750, %3698
  %3754 = fmul fast float %3751, %3698
  %3755 = fadd fast float %3752, 5.000000e-01
  %3756 = fadd fast float %3753, 5.000000e-01
  %3757 = fadd fast float %3754, 5.000000e-01
  %3758 = fmul fast float %3755, 2.000000e+00
  %3759 = fsub fast float 1.000000e+00, %3758
  %3760 = fmul fast float %3759, %3685
  %3761 = fadd fast float %3760, %3758
  %3762 = fmul fast float %3761, %3685
  %3763 = fmul fast float %3756, 2.000000e+00
  %3764 = fsub fast float 1.000000e+00, %3763
  %3765 = fmul fast float %3764, %3686
  %3766 = fadd fast float %3765, %3763
  %3767 = fmul fast float %3766, %3686
  %3768 = fmul fast float %3757, 2.000000e+00
  %3769 = fsub fast float 1.000000e+00, %3768
  %3770 = fmul fast float %3769, %3687
  %3771 = fadd fast float %3770, %3768
  %3772 = fmul fast float %3771, %3687
  br label %3773

; <label>:3773                                    ; preds = %3745, %3743, %3730, %3700, %3684
  %3774 = phi float [ %3685, %3684 ], [ %3762, %3745 ], [ %3685, %3743 ], [ %3740, %3730 ], [ %3710, %3700 ]
  %3775 = phi float [ %3686, %3684 ], [ %3767, %3745 ], [ %3686, %3743 ], [ %3741, %3730 ], [ %3711, %3700 ]
  %3776 = phi float [ %3687, %3684 ], [ %3772, %3745 ], [ %3687, %3743 ], [ %3742, %3730 ], [ %3712, %3700 ]
  %3777 = phi float [ %3688, %3684 ], [ %3688, %3745 ], [ %3688, %3743 ], [ %3688, %3730 ], [ %3722, %3700 ]
  %3778 = phi float [ %3689, %3684 ], [ %3689, %3745 ], [ %3689, %3743 ], [ %3689, %3730 ], [ %3723, %3700 ]
  %3779 = phi float [ %3690, %3684 ], [ %3690, %3745 ], [ %3690, %3743 ], [ %3690, %3730 ], [ %3724, %3700 ]
  %3780 = phi float [ %2996, %3684 ], [ %2996, %3745 ], [ %2996, %3743 ], [ %2996, %3730 ], [ %3715, %3700 ]
  %3781 = phi float [ %3001, %3684 ], [ %3001, %3745 ], [ %3001, %3743 ], [ %3001, %3730 ], [ %3727, %3700 ]
  %3782 = and i32 %3692, 12
  %3783 = icmp eq i32 %3782, 12
  br i1 %3783, label %3900, label %3784

; <label>:3784                                    ; preds = %3773
  %3785 = and i32 %3692, 2097184
  %3786 = icmp eq i32 %3785, 2097184
  %3787 = select i1 %3786, float %3184, float 0.000000e+00
  %3788 = and i32 %3692, 4194336
  %3789 = icmp eq i32 %3788, 4194336
  %3790 = select i1 %3789, float %3184, float 0.000000e+00
  %3791 = and i32 %3692, 8388640
  %3792 = icmp eq i32 %3791, 8388640
  %3793 = select i1 %3792, float %3184, float 0.000000e+00
  %3794 = and i32 %3692, 1024
  %3795 = icmp ne i32 %3794, 0
  %3796 = select i1 %3795, float %3184, float 0.000000e+00
  %3797 = and i32 %3692, 2048
  %3798 = icmp ne i32 %3797, 0
  %3799 = select i1 %3798, float %3184, float 0.000000e+00
  %3800 = and i32 %3692, 16384
  %3801 = icmp ne i32 %3800, 0
  %3802 = select i1 %3801, float %3184, float 0.000000e+00
  %3803 = icmp eq i32 %3782, 0
  br i1 %3803, label %3804, label %3832

; <label>:3804                                    ; preds = %3784
  %3805 = fsub fast float %3485, %2985
  %3806 = fsub fast float %3486, %2986
  %3807 = fmul fast float %3787, %3805
  %3808 = fmul fast float %3787, %3806
  %3809 = fadd fast float %3807, %2985
  %3810 = fadd fast float %3808, %2986
  %3811 = fsub fast float %3487, %2998
  %3812 = fmul fast float %3790, %3811
  %3813 = fadd fast float %3812, %2998
  %3814 = fsub fast float %3484, %2997
  %3815 = fmul fast float %3793, %3814
  %3816 = fadd fast float %3815, %2997
  %3817 = fsub fast float %3590, %2993
  %3818 = fsub fast float %3591, %2994
  %3819 = fsub fast float %3592, %2995
  %3820 = fmul fast float %3796, %3817
  %3821 = fmul fast float %3796, %3818
  %3822 = fmul fast float %3796, %3819
  %3823 = fadd fast float %3820, %2993
  %3824 = fadd fast float %3821, %2994
  %3825 = fadd fast float %3822, %2995
  %3826 = fsub fast float %3634, %2999
  %3827 = fmul fast float %3799, %3826
  %3828 = fadd fast float %3827, %2999
  %3829 = fsub fast float %3635, %3000
  %3830 = fmul fast float %3802, %3829
  %3831 = fadd fast float %3830, %3000
  br label %3900

; <label>:3832                                    ; preds = %3784
  %3833 = icmp eq i32 %3782, 4
  br i1 %3833, label %3834, label %3876

; <label>:3834                                    ; preds = %3832
  %3835 = fmul fast float %3787, %3485
  %3836 = fmul fast float %3787, %3486
  %3837 = fadd fast float %3835, %2985
  %3838 = fadd fast float %3836, %2986
  %3839 = call float @dx.op.binary.f32(i32 36, float %2998, float %3487)  ; FMin(a,b)
  %3840 = fsub fast float %3839, %2998
  %3841 = fmul fast float %3840, %3790
  %3842 = fadd fast float %3841, %2998
  %3843 = fadd fast float %3484, %2997
  %3844 = fmul fast float %3843, 0x3FF337FAE0000000
  %3845 = fmul fast float %2997, %2997
  %3846 = fmul fast float %3484, %3484
  %3847 = fadd fast float %3846, %3845
  %3848 = fmul fast float %3847, 0x3FE5152B00000000
  %3849 = fmul fast float %2997, 0xBFCC1F85E0000000
  %3850 = fmul fast float %3849, %3484
  %3851 = fadd fast float %3850, 0xBFE1363700000000
  %3852 = fadd fast float %3851, %3844
  %3853 = fsub fast float %3852, %3848
  %3854 = fmul fast float %3843, 0x3FBA6F0D00000000
  %3855 = fmul fast float %3847, 0x3FD0432880000000
  %3856 = fmul fast float %2997, 0xBFEF110800000000
  %3857 = fmul fast float %3856, %3484
  %3858 = fadd fast float %3857, 1.000000e+00
  %3859 = fsub fast float %3858, %3854
  %3860 = fadd fast float %3859, %3855
  %3861 = fdiv fast float %3853, %3860
  %3862 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3863 = fsub fast float %3862, %2997
  %3864 = fmul fast float %3863, %3793
  %3865 = fadd fast float %3864, %2997
  %3866 = fmul fast float %3796, %3590
  %3867 = fmul fast float %3796, %3591
  %3868 = fmul fast float %3796, %3592
  %3869 = fadd fast float %3866, %2993
  %3870 = fadd fast float %3867, %2994
  %3871 = fadd fast float %3868, %2995
  %3872 = fmul fast float %3799, %3634
  %3873 = fadd fast float %3872, %2999
  %3874 = fmul fast float %3802, %3635
  %3875 = fadd fast float %3874, %3000
  br label %3900

; <label>:3876                                    ; preds = %3832
  %3877 = icmp eq i32 %3782, 8
  br i1 %3877, label %3878, label %3900

; <label>:3878                                    ; preds = %3876
  %3879 = fmul fast float %3787, %3485
  %3880 = fmul fast float %3787, %3486
  %3881 = fadd fast float %3879, %2985
  %3882 = fadd fast float %3880, %2986
  %3883 = call float @dx.op.binary.f32(i32 36, float %2998, float %3487)  ; FMin(a,b)
  %3884 = fsub fast float %3883, %2998
  %3885 = fmul fast float %3884, %3790
  %3886 = fadd fast float %3885, %2998
  %3887 = fsub fast float %3484, %2997
  %3888 = fmul fast float %3793, %3887
  %3889 = fadd fast float %3888, %2997
  %3890 = fmul fast float %3796, %3590
  %3891 = fmul fast float %3796, %3591
  %3892 = fmul fast float %3796, %3592
  %3893 = fadd fast float %3890, %2993
  %3894 = fadd fast float %3891, %2994
  %3895 = fadd fast float %3892, %2995
  %3896 = fmul fast float %3799, %3634
  %3897 = fadd fast float %3896, %2999
  %3898 = fmul fast float %3802, %3635
  %3899 = fadd fast float %3898, %3000
  br label %3900

; <label>:3900                                    ; preds = %3878, %3876, %3834, %3804, %3773, %3183, %3002, %2984
  %3901 = phi float [ %2985, %3773 ], [ %2985, %3183 ], [ %2985, %2984 ], [ %2985, %3002 ], [ %3809, %3804 ], [ %3837, %3834 ], [ %2985, %3876 ], [ %3881, %3878 ]
  %3902 = phi float [ %2986, %3773 ], [ %2986, %3183 ], [ %2986, %2984 ], [ %2986, %3002 ], [ %3810, %3804 ], [ %3838, %3834 ], [ %2986, %3876 ], [ %3882, %3878 ]
  %3903 = phi float [ %3774, %3773 ], [ %2987, %3183 ], [ %2987, %2984 ], [ %2987, %3002 ], [ %3774, %3804 ], [ %3774, %3834 ], [ %3774, %3876 ], [ %3774, %3878 ]
  %3904 = phi float [ %3775, %3773 ], [ %2988, %3183 ], [ %2988, %2984 ], [ %2988, %3002 ], [ %3775, %3804 ], [ %3775, %3834 ], [ %3775, %3876 ], [ %3775, %3878 ]
  %3905 = phi float [ %3776, %3773 ], [ %2989, %3183 ], [ %2989, %2984 ], [ %2989, %3002 ], [ %3776, %3804 ], [ %3776, %3834 ], [ %3776, %3876 ], [ %3776, %3878 ]
  %3906 = phi float [ %3777, %3773 ], [ %2990, %3183 ], [ %2990, %2984 ], [ %2990, %3002 ], [ %3777, %3804 ], [ %3777, %3834 ], [ %3777, %3876 ], [ %3777, %3878 ]
  %3907 = phi float [ %3778, %3773 ], [ %2991, %3183 ], [ %2991, %2984 ], [ %2991, %3002 ], [ %3778, %3804 ], [ %3778, %3834 ], [ %3778, %3876 ], [ %3778, %3878 ]
  %3908 = phi float [ %3779, %3773 ], [ %2992, %3183 ], [ %2992, %2984 ], [ %2992, %3002 ], [ %3779, %3804 ], [ %3779, %3834 ], [ %3779, %3876 ], [ %3779, %3878 ]
  %3909 = phi float [ %2993, %3773 ], [ %2993, %3183 ], [ %2993, %2984 ], [ %2993, %3002 ], [ %3823, %3804 ], [ %3869, %3834 ], [ %2993, %3876 ], [ %3893, %3878 ]
  %3910 = phi float [ %2994, %3773 ], [ %2994, %3183 ], [ %2994, %2984 ], [ %2994, %3002 ], [ %3824, %3804 ], [ %3870, %3834 ], [ %2994, %3876 ], [ %3894, %3878 ]
  %3911 = phi float [ %2995, %3773 ], [ %2995, %3183 ], [ %2995, %2984 ], [ %2995, %3002 ], [ %3825, %3804 ], [ %3871, %3834 ], [ %2995, %3876 ], [ %3895, %3878 ]
  %3912 = phi float [ %3780, %3773 ], [ %2996, %3183 ], [ %2996, %2984 ], [ %2996, %3002 ], [ %3780, %3804 ], [ %3780, %3834 ], [ %3780, %3876 ], [ %3780, %3878 ]
  %3913 = phi float [ %2997, %3773 ], [ %2997, %3183 ], [ %2997, %2984 ], [ %2997, %3002 ], [ %3816, %3804 ], [ %3865, %3834 ], [ %2997, %3876 ], [ %3889, %3878 ]
  %3914 = phi float [ %2998, %3773 ], [ %2998, %3183 ], [ %2998, %2984 ], [ %2998, %3002 ], [ %3813, %3804 ], [ %3842, %3834 ], [ %2998, %3876 ], [ %3886, %3878 ]
  %3915 = phi float [ %2999, %3773 ], [ %2999, %3183 ], [ %2999, %2984 ], [ %2999, %3002 ], [ %3828, %3804 ], [ %3873, %3834 ], [ %2999, %3876 ], [ %3897, %3878 ]
  %3916 = phi float [ %3000, %3773 ], [ %3000, %3183 ], [ %3000, %2984 ], [ %3000, %3002 ], [ %3831, %3804 ], [ %3875, %3834 ], [ %3000, %3876 ], [ %3899, %3878 ]
  %3917 = phi float [ %3781, %3773 ], [ %3001, %3183 ], [ %3001, %2984 ], [ %3001, %3002 ], [ %3781, %3804 ], [ %3781, %3834 ], [ %3781, %3876 ], [ %3781, %3878 ]
  %3918 = add i32 %55, 360
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.i32 %3919, 1
  %3922 = bitcast i32 %3920 to float
  %3923 = bitcast i32 %3921 to float
  %3924 = fcmp fast oge float %3922, 0.000000e+00
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = select i1 %3924, float %3922, float %3926
  %3928 = fadd fast float %3927, %207
  %3929 = fmul fast float %3923, %208
  %3930 = add i32 %55, 456
  %3931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.i32 %3931, 0
  %3933 = add i32 %3932, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3934, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = fmul fast float %3929, %3936
  %3938 = fadd fast float %3928, %3937
  %3939 = and i32 %199, 65535
  %3940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3939)  ; LegacyF16ToF32(value)
  %3941 = lshr i32 %199, 16
  %3942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3941)  ; LegacyF16ToF32(value)
  %3943 = and i32 %200, 65535
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = fmul fast float %3940, %3903
  %3946 = fmul fast float %3942, %3904
  %3947 = fmul fast float %3944, %3905
  %3948 = shl i32 %201, 4
  %3949 = and i32 %3948, 32752
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = lshr i32 %201, 7
  %3952 = and i32 %3951, 32752
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = lshr i32 %201, 22
  %3955 = shl nuw nsw i32 %3954, 5
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = and i32 %202, 65535
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = fmul fast float %3950, %3906
  %3960 = fmul fast float %3959, %3958
  %3961 = fmul fast float %3953, %3907
  %3962 = fmul fast float %3961, %3958
  %3963 = fmul fast float %3956, %3908
  %3964 = fmul fast float %3963, %3958
  %3965 = call float @dx.op.dot2.f32(i32 54, float %3901, float %3902, float %3901, float %3902)  ; Dot2(ax,ay,bx,by)
  %3966 = fmul fast float %3965, 0x3FE3333340000000
  %3967 = fsub fast float 1.000000e+00, %3966
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3901, float %3902, float %3967, float %3901, float %3902, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = call float @dx.op.unary.f32(i32 25, float %3968)  ; Rsqrt(value)
  %3970 = fmul fast float %3969, %3901
  %3971 = fmul fast float %3969, %3902
  %3972 = fmul fast float %3967, %3969
  %3973 = fmul fast float %3972, %113
  %3974 = fmul fast float %3972, %114
  %3975 = fmul fast float %3972, %115
  %3976 = fmul fast float %3970, %81
  %3977 = fmul fast float %3970, %82
  %3978 = fmul fast float %3970, %83
  %3979 = fadd fast float %3973, %3976
  %3980 = fadd fast float %3974, %3977
  %3981 = fadd fast float %3975, %3978
  %3982 = fmul fast float %125, %3971
  %3983 = fmul fast float %126, %3971
  %3984 = fmul fast float %127, %3971
  %3985 = fadd fast float %3979, %3982
  %3986 = fadd fast float %3980, %3983
  %3987 = fadd fast float %3981, %3984
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %3987, float %3985, float %3986, float %3987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = call float @dx.op.unary.f32(i32 25, float %3988)  ; Rsqrt(value)
  %3990 = fmul fast float %3985, %3989
  %3991 = fmul fast float %3986, %3989
  %3992 = fmul fast float %3987, %3989
  %3993 = icmp eq i32 %57, 65535
  br i1 %3993, label %4543, label %3994

; <label>:3994                                    ; preds = %3900
  %3995 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3996 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3997 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3998 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3999 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %4000 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4001 = fadd fast float %3995, %58
  %4002 = fadd fast float %3996, %59
  %4003 = fadd fast float %3997, %60
  %4004 = fadd fast float %3998, %58
  %4005 = fadd fast float %3999, %59
  %4006 = fadd fast float %4000, %60
  %4007 = mul i32 %57, 48
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = add i32 %4007, 16
  %4013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = add i32 %4007, 32
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.ResRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.ResRet.f32 %4018, 2
  %4022 = extractvalue %dx.types.ResRet.f32 %4018, 3
  %4023 = bitcast float %4022 to i32
  %4024 = fmul fast float %4009, %58
  %4025 = fmul fast float %4010, %59
  %4026 = fmul fast float %4011, %60
  %4027 = fsub fast float %4024, %4014
  %4028 = fsub fast float %4025, %4015
  %4029 = fsub fast float %4026, %4016
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4033 = fmul fast float %4030, %4019
  %4034 = fmul fast float %4031, %4020
  %4035 = fmul fast float %4032, %4021
  %4036 = fadd fast float %4019, -1.000000e+00
  %4037 = fadd fast float %4020, -1.000000e+00
  %4038 = fadd fast float %4021, -1.000000e+00
  %4039 = call float @dx.op.unary.f32(i32 27, float %4033)  ; Round_ni(value)
  %4040 = call float @dx.op.unary.f32(i32 27, float %4034)  ; Round_ni(value)
  %4041 = call float @dx.op.unary.f32(i32 27, float %4035)  ; Round_ni(value)
  %4042 = call float @dx.op.binary.f32(i32 36, float %4039, float %4036)  ; FMin(a,b)
  %4043 = call float @dx.op.binary.f32(i32 36, float %4040, float %4037)  ; FMin(a,b)
  %4044 = call float @dx.op.binary.f32(i32 36, float %4041, float %4038)  ; FMin(a,b)
  %4045 = fmul fast float %4044, %4020
  %4046 = fadd fast float %4045, %4043
  %4047 = fmul fast float %4046, %4019
  %4048 = fadd fast float %4047, %4042
  %4049 = fptosi float %4048 to i32
  %4050 = add nsw i32 %4049, %4023
  %4051 = shl nsw i32 %4050, 2
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = lshr i32 %4053, 16
  %4055 = icmp eq i32 %4054, 0
  br i1 %4055, label %4508, label %4056

; <label>:4056                                    ; preds = %3994
  br label %4057

; <label>:4057                                    ; preds = %4182, %4056
  %4058 = phi i32 [ %4084, %4182 ], [ %4054, %4056 ]
  %4059 = phi float [ %4183, %4182 ], [ 0.000000e+00, %4056 ]
  %4060 = phi float [ %4184, %4182 ], [ %1164, %4056 ]
  %4061 = phi float [ %4185, %4182 ], [ %3938, %4056 ]
  %4062 = phi float [ %4186, %4182 ], [ %3917, %4056 ]
  %4063 = phi float [ %4187, %4182 ], [ %3909, %4056 ]
  %4064 = phi float [ %4188, %4182 ], [ %3910, %4056 ]
  %4065 = phi float [ %4189, %4182 ], [ %3911, %4056 ]
  %4066 = phi float [ %4190, %4182 ], [ %3916, %4056 ]
  %4067 = phi float [ %4191, %4182 ], [ 0.000000e+00, %4056 ]
  %4068 = phi float [ %4192, %4182 ], [ %3960, %4056 ]
  %4069 = phi float [ %4193, %4182 ], [ %3962, %4056 ]
  %4070 = phi float [ %4194, %4182 ], [ %3964, %4056 ]
  %4071 = phi float [ %4195, %4182 ], [ %3990, %4056 ]
  %4072 = phi float [ %4196, %4182 ], [ %3991, %4056 ]
  %4073 = phi float [ %4197, %4182 ], [ %3992, %4056 ]
  %4074 = phi float [ %4198, %4182 ], [ %3914, %4056 ]
  %4075 = phi float [ %4199, %4182 ], [ %3913, %4056 ]
  %4076 = phi float [ %4200, %4182 ], [ 0.000000e+00, %4056 ]
  %4077 = phi float [ %4201, %4182 ], [ %3912, %4056 ]
  %4078 = phi float [ %4202, %4182 ], [ %3945, %4056 ]
  %4079 = phi float [ %4203, %4182 ], [ %3946, %4056 ]
  %4080 = phi float [ %4204, %4182 ], [ %3947, %4056 ]
  %4081 = shl nuw nsw i32 %4058, 2
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = lshr i32 %4083, 16
  %4085 = shl i32 %4083, 8
  %4086 = and i32 %4085, 16776960
  %4087 = or i32 %4086, 48
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.ResRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.ResRet.f32 %4088, 2
  %4092 = or i32 %4086, 64
  %4093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.i32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.i32 %4093, 1
  %4096 = or i32 %4086, 80
  %4097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4096, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 2
  %4099 = extractvalue %dx.types.ResRet.f32 %4097, 3
  %4100 = or i32 %4086, 96
  %4101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = extractvalue %dx.types.ResRet.f32 %4101, 3
  %4106 = or i32 %4086, 112
  %4107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 2
  %4109 = or i32 %4086, 128
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.ResRet.f32 %4110, 3
  %4115 = or i32 %4086, 144
  %4116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4120 = extractvalue %dx.types.ResRet.f32 %4116, 3
  %4121 = or i32 %4086, 160
  %4122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = extractvalue %dx.types.ResRet.f32 %4122, 3
  %4127 = or i32 %4086, 192
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = or i32 %4086, 208
  %4131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = or i32 %4086, 248
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = extractvalue %dx.types.ResRet.f32 %4137, 3
  %4142 = call float @dx.op.dot4.f32(i32 56, float %4138, float %4139, float %4140, float %4141, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4143 = or i32 %4086, 16
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4148 = extractvalue %dx.types.ResRet.f32 %4144, 3
  %4149 = call float @dx.op.dot4.f32(i32 56, float %4145, float %4146, float %4147, float %4148, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4150 = or i32 %4086, 32
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = call float @dx.op.dot4.f32(i32 56, float %4152, float %4153, float %4154, float %4155, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4157 = call float @dx.op.unary.f32(i32 27, float %4142)  ; Round_ni(value)
  %4158 = call float @dx.op.unary.f32(i32 6, float %4157)  ; FAbs(value)
  %4159 = call float @dx.op.unary.f32(i32 27, float %4149)  ; Round_ni(value)
  %4160 = call float @dx.op.unary.f32(i32 6, float %4159)  ; FAbs(value)
  %4161 = call float @dx.op.unary.f32(i32 6, float %4156)  ; FAbs(value)
  %4162 = call float @dx.op.unary.f32(i32 27, float %4161)  ; Round_ni(value)
  %4163 = fadd fast float %4160, %4158
  %4164 = fadd fast float %4163, %4162
  %4165 = fcmp fast oeq float %4164, 0.000000e+00
  %4166 = call float @dx.op.dot4.f32(i32 56, float %4138, float %4139, float %4140, float %4141, float %4001, float %4002, float %4003, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4167 = call float @dx.op.dot4.f32(i32 56, float %4145, float %4146, float %4147, float %4148, float %4001, float %4002, float %4003, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4168 = call float @dx.op.dot4.f32(i32 56, float %4138, float %4139, float %4140, float %4141, float %4004, float %4005, float %4006, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4169 = call float @dx.op.dot4.f32(i32 56, float %4145, float %4146, float %4147, float %4148, float %4004, float %4005, float %4006, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4170 = fsub fast float %4166, %4142
  %4171 = fsub fast float %4168, %4142
  %4172 = fsub fast float %4167, %4149
  %4173 = fsub fast float %4169, %4149
  %4174 = call float @dx.op.dot3.f32(i32 55, float %4089, float %4090, float %4091, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4177 = fadd fast float %4176, %4174
  %4178 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4180 = fcmp fast ogt float %4178, %4179
  %4181 = and i1 %4165, %4180
  br i1 %4181, label %4206, label %4182

; <label>:4182                                    ; preds = %4494, %4289, %4206, %4057
  %4183 = phi float [ %4059, %4206 ], [ %4292, %4289 ], [ %4292, %4494 ], [ %4059, %4057 ]
  %4184 = phi float [ %4060, %4206 ], [ %4060, %4289 ], [ %4470, %4494 ], [ %4060, %4057 ]
  %4185 = phi float [ %4061, %4206 ], [ %4061, %4289 ], [ %4469, %4494 ], [ %4061, %4057 ]
  %4186 = phi float [ %4062, %4206 ], [ %4062, %4289 ], [ %4467, %4494 ], [ %4062, %4057 ]
  %4187 = phi float [ %4063, %4206 ], [ %4063, %4289 ], [ %4445, %4494 ], [ %4063, %4057 ]
  %4188 = phi float [ %4064, %4206 ], [ %4064, %4289 ], [ %4446, %4494 ], [ %4064, %4057 ]
  %4189 = phi float [ %4065, %4206 ], [ %4065, %4289 ], [ %4447, %4494 ], [ %4065, %4057 ]
  %4190 = phi float [ %4066, %4206 ], [ %4066, %4289 ], [ %4416, %4494 ], [ %4066, %4057 ]
  %4191 = phi float [ %4067, %4206 ], [ %4067, %4289 ], [ %4414, %4494 ], [ %4067, %4057 ]
  %4192 = phi float [ %4068, %4206 ], [ %4068, %4289 ], [ %4504, %4494 ], [ %4068, %4057 ]
  %4193 = phi float [ %4069, %4206 ], [ %4069, %4289 ], [ %4505, %4494 ], [ %4069, %4057 ]
  %4194 = phi float [ %4070, %4206 ], [ %4070, %4289 ], [ %4506, %4494 ], [ %4070, %4057 ]
  %4195 = phi float [ %4071, %4206 ], [ %4071, %4289 ], [ %4395, %4494 ], [ %4071, %4057 ]
  %4196 = phi float [ %4072, %4206 ], [ %4072, %4289 ], [ %4396, %4494 ], [ %4072, %4057 ]
  %4197 = phi float [ %4073, %4206 ], [ %4073, %4289 ], [ %4397, %4494 ], [ %4073, %4057 ]
  %4198 = phi float [ %4074, %4206 ], [ %4074, %4289 ], [ %4425, %4494 ], [ %4074, %4057 ]
  %4199 = phi float [ %4075, %4206 ], [ %4075, %4289 ], [ %4422, %4494 ], [ %4075, %4057 ]
  %4200 = phi float [ %4076, %4206 ], [ %4076, %4289 ], [ %4419, %4494 ], [ %4076, %4057 ]
  %4201 = phi float [ %4077, %4206 ], [ %4077, %4289 ], [ %4412, %4494 ], [ %4077, %4057 ]
  %4202 = phi float [ %4078, %4206 ], [ %4078, %4289 ], [ %4407, %4494 ], [ %4078, %4057 ]
  %4203 = phi float [ %4079, %4206 ], [ %4079, %4289 ], [ %4408, %4494 ], [ %4079, %4057 ]
  %4204 = phi float [ %4080, %4206 ], [ %4080, %4289 ], [ %4409, %4494 ], [ %4080, %4057 ]
  %4205 = icmp eq i32 %4084, 0
  br i1 %4205, label %4507, label %4057

; <label>:4206                                    ; preds = %4057
  %4207 = extractvalue %dx.types.ResRet.f32 %4088, 3
  %4208 = extractvalue %dx.types.ResRet.f32 %4107, 3
  %4209 = extractvalue %dx.types.ResRet.f32 %4107, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4097, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4213 = extractvalue %dx.types.ResRet.i32 %4093, 3
  %4214 = extractvalue %dx.types.ResRet.i32 %4093, 2
  %4215 = bitcast float %4207 to i32
  %4216 = add i32 %4213, 0
  %4217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4217, %dx.types.Handle %4218, float %4142, float %4149, float undef, float undef, i32 0, i32 0, i32 undef, float %4170, float %4172, float undef, float %4171, float %4173, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = fmul fast float %4220, %4212
  %4222 = fadd fast float %4221, %4211
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fmul fast float %4142, %4102
  %4225 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4149, float %4224)  ; FMad(a,b,c)
  %4226 = fadd fast float %4225, %4210
  %4227 = fmul fast float %4142, %4104
  %4228 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4149, float %4227)  ; FMad(a,b,c)
  %4229 = fadd fast float %4228, %4209
  %4230 = fmul fast float %4170, %4102
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4172, float %4230)  ; FMad(a,b,c)
  %4232 = fmul fast float %4170, %4104
  %4233 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4172, float %4232)  ; FMad(a,b,c)
  %4234 = fmul fast float %4171, %4102
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4173, float %4234)  ; FMad(a,b,c)
  %4236 = fmul fast float %4171, %4104
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4173, float %4236)  ; FMad(a,b,c)
  %4238 = add i32 %4214, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4239, %dx.types.Handle %4218, float %4226, float %4229, float undef, float undef, i32 0, i32 0, i32 undef, float %4231, float %4233, float undef, float %4235, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = and i32 %4215, 1024
  %4243 = icmp ne i32 %4242, 0
  %4244 = fcmp fast ogt float %4241, 0x3FE0101020000000
  %4245 = uitofp i1 %4244 to float
  %4246 = select i1 %4243, float %4245, float %4241
  %4247 = and i32 %4215, 8192
  %4248 = icmp ne i32 %4247, 0
  %4249 = select i1 %4248, float %4208, float 1.000000e+00
  %4250 = fmul fast float %4142, 2.000000e+00
  %4251 = fadd fast float %4250, -1.000000e+00
  %4252 = call float @dx.op.unary.f32(i32 6, float %4251)  ; FAbs(value)
  %4253 = fmul fast float %4252, %4135
  %4254 = fsub fast float %4253, %4135
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fmul fast float %4149, 2.000000e+00
  %4257 = fadd fast float %4256, -1.000000e+00
  %4258 = call float @dx.op.unary.f32(i32 6, float %4257)  ; FAbs(value)
  %4259 = fmul fast float %4258, %4136
  %4260 = fsub fast float %4259, %4136
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fmul fast float %4161, %4098
  %4263 = fsub fast float %4262, %4098
  %4264 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4265 = fmul fast float %4223, %4249
  %4266 = fmul fast float %4265, %4220
  %4267 = fmul fast float %4266, %4255
  %4268 = fmul fast float %4267, %4246
  %4269 = fmul fast float %4268, %4261
  %4270 = fmul fast float %4269, %4264
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4273 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4274 = fsub fast float %4178, %4273
  %4275 = fmul fast float %4274, %4272
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %4270, %4099
  %4278 = fadd fast float %4270, %4099
  %4279 = fmul fast float %4278, %4108
  %4280 = fsub fast float %4279, %4108
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = and i32 %4215, 128
  %4283 = icmp ne i32 %4282, 0
  %4284 = select i1 %4283, float %4281, float %4277
  %4285 = fmul fast float %4284, %4276
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = fcmp fast ugt float %4285, %4287
  br i1 %4288, label %4289, label %4182

; <label>:4289                                    ; preds = %4206
  %4290 = select i1 %4248, float %4285, float 0.000000e+00
  %4291 = fadd fast float %4290, %4059
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  br i1 %4248, label %4182, label %4293

; <label>:4293                                    ; preds = %4289
  %4294 = and i32 %4215, 4
  %4295 = and i32 %4215, 8
  %4296 = add i32 %4094, 0
  %4297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4297, %dx.types.Handle %4298, float %4226, float %4229, float undef, float undef, i32 0, i32 0, i32 undef, float %4231, float %4233, float undef, float %4235, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.ResRet.f32 %4299, 1
  %4302 = extractvalue %dx.types.ResRet.f32 %4299, 2
  %4303 = extractvalue %dx.types.ResRet.f32 %4299, 3
  %4304 = bitcast float %4120 to i32
  %4305 = and i32 %4304, 255
  %4306 = uitofp i32 %4305 to float
  %4307 = lshr i32 %4304, 8
  %4308 = and i32 %4307, 255
  %4309 = uitofp i32 %4308 to float
  %4310 = fmul fast float %4303, %4306
  %4311 = fadd fast float %4310, %4309
  %4312 = fmul fast float %4311, 0x3F70101000000000
  %4313 = add i32 %4095, 0
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4313, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4314, %dx.types.Handle %4298, float %4226, float %4229, float undef, float undef, i32 0, i32 0, i32 undef, float %4231, float %4233, float undef, float %4235, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = extractvalue %dx.types.ResRet.f32 %4315, 3
  %4320 = bitcast float %4114 to i32
  %4321 = and i32 %4320, 255
  %4322 = uitofp i32 %4321 to float
  %4323 = lshr i32 %4320, 8
  %4324 = and i32 %4323, 255
  %4325 = uitofp i32 %4324 to float
  %4326 = lshr i32 %4320, 16
  %4327 = and i32 %4326, 255
  %4328 = uitofp i32 %4327 to float
  %4329 = fmul fast float %4328, 0x3F70101000000000
  %4330 = fmul fast float %4316, %4322
  %4331 = fadd fast float %4330, %4325
  %4332 = fmul fast float %4331, 0x3F70101000000000
  %4333 = fadd fast float %4317, -5.000000e-01
  %4334 = fadd fast float %4319, -5.000000e-01
  %4335 = fmul fast float %4333, %4329
  %4336 = fmul fast float %4334, %4329
  %4337 = fadd fast float %4335, 5.000000e-01
  %4338 = fadd fast float %4336, 5.000000e-01
  %4339 = fmul fast float %4300, %4123
  %4340 = fmul fast float %4301, %4124
  %4341 = fmul fast float %4302, %4125
  %4342 = fmul fast float %4337, 2.000000e+00
  %4343 = fadd fast float %4342, -1.000000e+00
  %4344 = fmul fast float %4338, 2.000000e+00
  %4345 = fadd fast float %4344, -1.000000e+00
  %4346 = fadd fast float %4343, %4345
  %4347 = fmul fast float %4346, 5.000000e-01
  %4348 = fsub fast float %4343, %4345
  %4349 = fmul fast float %4348, 5.000000e-01
  %4350 = call float @dx.op.unary.f32(i32 6, float %4347)  ; FAbs(value)
  %4351 = fsub fast float 1.000000e+00, %4350
  %4352 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4353 = fsub fast float %4351, %4352
  %4354 = call float @dx.op.dot3.f32(i32 55, float %4347, float %4349, float %4353, float %4347, float %4349, float %4353)  ; Dot3(ax,ay,az,bx,by,bz)
  %4355 = call float @dx.op.unary.f32(i32 25, float %4354)  ; Rsqrt(value)
  %4356 = fmul fast float %4347, %4355
  %4357 = fmul fast float %4349, %4355
  %4358 = fmul fast float %4355, %4353
  %4359 = fmul fast float %4358, %4089
  %4360 = fmul fast float %4358, %4090
  %4361 = fmul fast float %4358, %4091
  %4362 = fmul fast float %4356, %4111
  %4363 = fmul fast float %4356, %4112
  %4364 = fmul fast float %4356, %4113
  %4365 = fadd fast float %4362, %4359
  %4366 = fadd fast float %4363, %4360
  %4367 = fadd fast float %4364, %4361
  %4368 = fmul fast float %4357, %4117
  %4369 = fmul fast float %4357, %4118
  %4370 = fmul fast float %4357, %4119
  %4371 = fadd fast float %4365, %4368
  %4372 = fadd fast float %4366, %4369
  %4373 = fadd fast float %4367, %4370
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = call float @dx.op.unary.f32(i32 25, float %4374)  ; Rsqrt(value)
  %4376 = fmul fast float %4371, %4375
  %4377 = fmul fast float %4372, %4375
  %4378 = fmul fast float %4373, %4375
  %4379 = icmp ne i32 %4295, 0
  %4380 = select i1 %4379, float 1.000000e+00, float 0.000000e+00
  %4381 = fmul fast float %4285, %4380
  %4382 = and i32 %4215, 1
  %4383 = icmp eq i32 %4382, 0
  br i1 %4383, label %4384, label %4388

; <label>:4384                                    ; preds = %4293
  %4385 = fsub fast float %4376, %4071
  %4386 = fsub fast float %4377, %4072
  %4387 = fsub fast float %4378, %4073
  br label %4388

; <label>:4388                                    ; preds = %4384, %4293
  %4389 = phi float [ %4385, %4384 ], [ %4376, %4293 ]
  %4390 = phi float [ %4386, %4384 ], [ %4377, %4293 ]
  %4391 = phi float [ %4387, %4384 ], [ %4378, %4293 ]
  %4392 = fmul float %4391, %4381
  %4393 = fmul float %4390, %4381
  %4394 = fmul float %4389, %4381
  %4395 = fadd fast float %4394, %4071
  %4396 = fadd fast float %4393, %4072
  %4397 = fadd fast float %4392, %4073
  %4398 = icmp ne i32 %4294, 0
  %4399 = select i1 %4398, float 1.000000e+00, float 0.000000e+00
  %4400 = fmul fast float %4285, %4399
  %4401 = fsub fast float %4339, %4078
  %4402 = fsub fast float %4340, %4079
  %4403 = fsub fast float %4341, %4080
  %4404 = fmul fast float %4401, %4400
  %4405 = fmul fast float %4402, %4400
  %4406 = fmul fast float %4403, %4400
  %4407 = fadd fast float %4404, %4078
  %4408 = fadd fast float %4405, %4079
  %4409 = fadd fast float %4406, %4080
  %4410 = fsub fast float %4312, %4077
  %4411 = fmul fast float %4410, %4400
  %4412 = fadd fast float %4411, %4077
  %4413 = fmul fast float %4400, %4067
  %4414 = fsub fast float %4067, %4413
  %4415 = fmul fast float %4400, %4066
  %4416 = fsub fast float %4066, %4415
  %4417 = bitcast float %4132 to i32
  %4418 = fadd fast float %4285, %4076
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = fsub fast float %4332, %4075
  %4421 = fmul fast float %4420, %4381
  %4422 = fadd fast float %4421, %4075
  %4423 = fsub fast float %4318, %4074
  %4424 = fmul fast float %4423, %4381
  %4425 = fadd fast float %4424, %4074
  br i1 %4383, label %4434, label %4426

; <label>:4426                                    ; preds = %4388
  %4427 = and i32 %4215, 32768
  %4428 = icmp eq i32 %4427, 0
  br i1 %4428, label %4444, label %4429

; <label>:4429                                    ; preds = %4426
  %4430 = fmul fast float %4381, 1.270000e+02
  %4431 = fadd fast float %4430, %4063
  %4432 = fadd fast float %4430, %4064
  %4433 = fadd fast float %4430, %4065
  br label %4444

; <label>:4434                                    ; preds = %4388
  %4435 = fsub fast float 1.270000e+02, %4063
  %4436 = fsub fast float 1.270000e+02, %4064
  %4437 = fsub fast float 1.270000e+02, %4065
  %4438 = fmul fast float %4381, %4435
  %4439 = fmul fast float %4381, %4436
  %4440 = fmul fast float %4381, %4437
  %4441 = fadd fast float %4438, %4063
  %4442 = fadd fast float %4439, %4064
  %4443 = fadd fast float %4440, %4065
  br label %4444

; <label>:4444                                    ; preds = %4434, %4429, %4426
  %4445 = phi float [ %4431, %4429 ], [ %4063, %4426 ], [ %4441, %4434 ]
  %4446 = phi float [ %4432, %4429 ], [ %4064, %4426 ], [ %4442, %4434 ]
  %4447 = phi float [ %4433, %4429 ], [ %4065, %4426 ], [ %4443, %4434 ]
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4339, float %4340, float %4341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.CBufRet.f32 %4449, 1
  %4452 = fmul fast float %4451, %4448
  %4453 = fadd fast float %4452, %4450
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = bitcast float %4126 to i32
  %4456 = and i32 %4455, 65535
  %4457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4456)  ; LegacyF16ToF32(value)
  %4458 = lshr i32 %4455, 16
  %4459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4458)  ; LegacyF16ToF32(value)
  %4460 = fcmp fast oge float %4457, 0.000000e+00
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = select i1 %4460, float %4457, float %4462
  %4464 = fadd fast float %4463, %4459
  %4465 = fsub fast float %4454, %4062
  %4466 = fmul fast float %4465, %4285
  %4467 = fadd fast float %4466, %4062
  %4468 = fmul fast float %4464, %4285
  %4469 = call float @dx.op.binary.f32(i32 35, float %4061, float %4468)  ; FMax(a,b)
  %4470 = call float @dx.op.binary.f32(i32 35, float %4060, float %4285)  ; FMax(a,b)
  %4471 = and i32 %4215, 16
  %4472 = icmp eq i32 %4471, 0
  br i1 %4472, label %4494, label %4473

; <label>:4473                                    ; preds = %4444
  %4474 = add i32 %4129, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4474, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4475, %dx.types.Handle %4298, float %4226, float %4229, float undef, float undef, i32 0, i32 0, i32 undef, float %4231, float %4233, float undef, float %4235, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = and i32 %4417, 65535
  %4481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4480)  ; LegacyF16ToF32(value)
  %4482 = fmul fast float %4477, %4123
  %4483 = fmul fast float %4478, %4124
  %4484 = fmul fast float %4479, %4125
  %4485 = and i32 %4215, 16384
  %4486 = icmp ne i32 %4485, 0
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = select i1 %4486, float %4488, float 1.000000e+00
  %4490 = fmul fast float %4489, %4481
  %4491 = fmul fast float %4482, %4490
  %4492 = fmul fast float %4483, %4490
  %4493 = fmul fast float %4484, %4490
  br label %4494

; <label>:4494                                    ; preds = %4473, %4444
  %4495 = phi float [ %4491, %4473 ], [ 0.000000e+00, %4444 ]
  %4496 = phi float [ %4492, %4473 ], [ 0.000000e+00, %4444 ]
  %4497 = phi float [ %4493, %4473 ], [ 0.000000e+00, %4444 ]
  %4498 = fsub fast float %4495, %4068
  %4499 = fsub fast float %4496, %4069
  %4500 = fsub fast float %4497, %4070
  %4501 = fmul fast float %4498, %4285
  %4502 = fmul fast float %4499, %4285
  %4503 = fmul fast float %4500, %4285
  %4504 = fadd fast float %4501, %4068
  %4505 = fadd fast float %4502, %4069
  %4506 = fadd fast float %4503, %4070
  br label %4182

; <label>:4507                                    ; preds = %4182
  br label %4508

; <label>:4508                                    ; preds = %4507, %3994
  %4509 = phi float [ 0.000000e+00, %3994 ], [ %4183, %4507 ]
  %4510 = phi float [ %1164, %3994 ], [ %4184, %4507 ]
  %4511 = phi float [ %3938, %3994 ], [ %4185, %4507 ]
  %4512 = phi float [ %3917, %3994 ], [ %4186, %4507 ]
  %4513 = phi float [ %3909, %3994 ], [ %4187, %4507 ]
  %4514 = phi float [ %3910, %3994 ], [ %4188, %4507 ]
  %4515 = phi float [ %3911, %3994 ], [ %4189, %4507 ]
  %4516 = phi float [ %3916, %3994 ], [ %4190, %4507 ]
  %4517 = phi float [ 0.000000e+00, %3994 ], [ %4191, %4507 ]
  %4518 = phi float [ %3960, %3994 ], [ %4192, %4507 ]
  %4519 = phi float [ %3962, %3994 ], [ %4193, %4507 ]
  %4520 = phi float [ %3964, %3994 ], [ %4194, %4507 ]
  %4521 = phi float [ %3990, %3994 ], [ %4195, %4507 ]
  %4522 = phi float [ %3991, %3994 ], [ %4196, %4507 ]
  %4523 = phi float [ %3992, %3994 ], [ %4197, %4507 ]
  %4524 = phi float [ %3914, %3994 ], [ %4198, %4507 ]
  %4525 = phi float [ %3913, %3994 ], [ %4199, %4507 ]
  %4526 = phi float [ 0.000000e+00, %3994 ], [ %4200, %4507 ]
  %4527 = phi float [ %3912, %3994 ], [ %4201, %4507 ]
  %4528 = phi float [ %3945, %3994 ], [ %4202, %4507 ]
  %4529 = phi float [ %3946, %3994 ], [ %4203, %4507 ]
  %4530 = phi float [ %3947, %3994 ], [ %4204, %4507 ]
  %4531 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4522, float %4523, float %4521, float %4522, float %4523)  ; Dot3(ax,ay,az,bx,by,bz)
  %4532 = call float @dx.op.unary.f32(i32 25, float %4531)  ; Rsqrt(value)
  %4533 = fmul fast float %4532, %4521
  %4534 = fmul fast float %4532, %4522
  %4535 = fmul fast float %4532, %4523
  %4536 = fadd fast float %4526, %1164
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float %4533, float %4534, float %4535)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call float @dx.op.unary.f32(i32 25, float %4538)  ; Rsqrt(value)
  %4540 = fmul fast float %4539, %4533
  %4541 = fmul fast float %4539, %4534
  %4542 = fmul fast float %4539, %4535
  br label %4543

; <label>:4543                                    ; preds = %4508, %3900
  %4544 = phi float [ %4540, %4508 ], [ %3990, %3900 ]
  %4545 = phi float [ %4541, %4508 ], [ %3991, %3900 ]
  %4546 = phi float [ %4542, %4508 ], [ %3992, %3900 ]
  %4547 = phi float [ %4528, %4508 ], [ %3945, %3900 ]
  %4548 = phi float [ %4529, %4508 ], [ %3946, %3900 ]
  %4549 = phi float [ %4530, %4508 ], [ %3947, %3900 ]
  %4550 = phi float [ %4518, %4508 ], [ %3960, %3900 ]
  %4551 = phi float [ %4519, %4508 ], [ %3962, %3900 ]
  %4552 = phi float [ %4520, %4508 ], [ %3964, %3900 ]
  %4553 = phi float [ %4513, %4508 ], [ %3909, %3900 ]
  %4554 = phi float [ %4514, %4508 ], [ %3910, %3900 ]
  %4555 = phi float [ %4515, %4508 ], [ %3911, %3900 ]
  %4556 = phi float [ %4527, %4508 ], [ %3912, %3900 ]
  %4557 = phi float [ %4537, %4508 ], [ %1164, %3900 ]
  %4558 = phi float [ %4525, %4508 ], [ %3913, %3900 ]
  %4559 = phi float [ %4524, %4508 ], [ %3914, %3900 ]
  %4560 = phi float [ %4517, %4508 ], [ 0.000000e+00, %3900 ]
  %4561 = phi float [ %4516, %4508 ], [ %3916, %3900 ]
  %4562 = phi float [ %4509, %4508 ], [ 0.000000e+00, %3900 ]
  %4563 = phi float [ %4511, %4508 ], [ %3938, %3900 ]
  %4564 = phi float [ %4510, %4508 ], [ %1164, %3900 ]
  %4565 = phi float [ %4512, %4508 ], [ %3917, %3900 ]
  %4566 = fadd fast float %4556, 0xBFB99999A0000000
  %4567 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4568 = fmul fast float %4567, 0x3FF1C71C80000000
  %4569 = call float @dx.op.binary.f32(i32 36, float %4556, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4570 = fsub fast float 1.000000e+00, %4568
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fmul fast float %4571, %4547
  %4573 = fmul fast float %4571, %4548
  %4574 = fmul fast float %4571, %4549
  %4575 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4576 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4577 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4578 = fmul fast float %4568, %4547
  %4579 = fmul fast float %4568, %4548
  %4580 = fmul fast float %4568, %4549
  %4581 = fadd fast float %4578, %4569
  %4582 = fadd fast float %4579, %4569
  %4583 = fadd fast float %4580, %4569
  %4584 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4586 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4587 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4588 = call float @dx.op.binary.f32(i32 36, float %4553, float 1.270000e+02)  ; FMin(a,b)
  %4589 = call float @dx.op.binary.f32(i32 36, float %4554, float 1.270000e+02)  ; FMin(a,b)
  %4590 = call float @dx.op.binary.f32(i32 36, float %4555, float 1.270000e+02)  ; FMin(a,b)
  %4591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.i32 %4591, 3
  %4593 = and i32 %4592, 8
  %4594 = icmp ne i32 %4593, 0
  %4595 = call float @dx.op.binary.f32(i32 35, float %4575, float %4547)  ; FMax(a,b)
  %4596 = call float @dx.op.binary.f32(i32 35, float %4576, float %4547)  ; FMax(a,b)
  %4597 = call float @dx.op.binary.f32(i32 35, float %4577, float %4547)  ; FMax(a,b)
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = select i1 %265, float %4547, float %4575
  %4600 = select i1 %265, float %4598, float %4576
  %4601 = select i1 %265, float 1.000000e+00, float %4577
  %4602 = select i1 %4594, float %4595, float %4599
  %4603 = select i1 %4594, float %4596, float %4600
  %4604 = select i1 %4594, float %4597, float %4601
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %4609 = fadd fast float %4606, %193
  %4610 = fadd fast float %4607, %194
  %4611 = fadd fast float %4608, %195
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4615 = fsub fast float %4609, %4613
  %4616 = fsub fast float %4610, %4614
  %4617 = fmul fast float %4615, %4615
  %4618 = fmul fast float %4616, %4616
  %4619 = fadd fast float %4617, %4618
  %4620 = call float @dx.op.unary.f32(i32 24, float %4619)  ; Sqrt(value)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4622 = fcmp fast olt float %4620, %4621
  br i1 %4622, label %4623, label %4690

; <label>:4623                                    ; preds = %4543
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4631 = extractvalue %dx.types.CBufRet.f32 %4626, 1
  %4632 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4633 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4634 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4635 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4636 = fadd fast float %4633, %4609
  %4637 = fadd fast float %4634, %4610
  %4638 = fadd fast float %4635, %4611
  %4639 = fmul fast float %4636, %4625
  %4640 = call float @dx.op.tertiary.f32(i32 46, float %4637, float %4627, float %4639)  ; FMad(a,b,c)
  %4641 = call float @dx.op.tertiary.f32(i32 46, float %4638, float %4629, float %4640)  ; FMad(a,b,c)
  %4642 = fmul fast float %4636, %4630
  %4643 = call float @dx.op.tertiary.f32(i32 46, float %4637, float %4631, float %4642)  ; FMad(a,b,c)
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4638, float %4632, float %4643)  ; FMad(a,b,c)
  %4645 = fsub fast float %4641, %4633
  %4646 = fsub fast float %4644, %4634
  %4647 = fsub fast float %4645, %4613
  %4648 = fadd fast float %4647, %4621
  %4649 = fsub fast float %4646, %4614
  %4650 = fadd fast float %4649, %4621
  %4651 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4652 = fmul fast float %4648, %4651
  %4653 = fmul fast float %4650, %4651
  %4654 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4656 = fsub fast float 1.000000e+00, %4654
  %4657 = fsub fast float 1.000000e+00, %4655
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4656, float %4657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = fcmp fast ugt float %4659, 0.000000e+00
  br i1 %4660, label %4661, label %4964

; <label>:4661                                    ; preds = %4623
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4664 = fmul fast float %4663, %4659
  %4665 = extractvalue %dx.types.CBufRet.f32 %4662, 3
  %4666 = fadd fast float %4665, %4664
  %4667 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %4668 = fadd fast float %4666, %4635
  %4669 = fmul fast float %4641, %4629
  %4670 = call float @dx.op.tertiary.f32(i32 46, float %4644, float %4632, float %4669)  ; FMad(a,b,c)
  %4671 = call float @dx.op.tertiary.f32(i32 46, float %4668, float %4667, float %4670)  ; FMad(a,b,c)
  %4672 = fsub fast float %4671, %4635
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 2
  %4675 = fsub fast float %4672, %4674
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4656, float %4657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = extractvalue %dx.types.ResRet.f32 %4676, 1
  %4679 = extractvalue %dx.types.ResRet.f32 %4676, 2
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4656, float %4657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = fadd fast float %4681, %4677
  %4685 = fmul fast float %4684, 0x3F847AE140000000
  %4686 = fadd fast float %4682, %4678
  %4687 = fmul fast float %4686, 0x3F847AE140000000
  %4688 = fadd fast float %4683, %4679
  %4689 = fmul fast float %4688, 0x3F847AE140000000
  br label %4964

; <label>:4690                                    ; preds = %4543
  %4691 = and i32 %244, 1
  %4692 = icmp eq i32 %4691, 0
  br i1 %4692, label %4964, label %4693

; <label>:4693                                    ; preds = %4690
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4701 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4702 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4703 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4704 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4705 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4706 = fadd fast float %4703, %4609
  %4707 = fadd fast float %4704, %4610
  %4708 = fadd fast float %4705, %4611
  %4709 = fmul fast float %4706, %4695
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4707, float %4697, float %4709)  ; FMad(a,b,c)
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4699, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4706, %4700
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4707, float %4701, float %4712)  ; FMad(a,b,c)
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4702, float %4713)  ; FMad(a,b,c)
  %4715 = fsub fast float %4711, %4703
  %4716 = fsub fast float %4714, %4704
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.CBufRet.f32 %4717, 2
  %4721 = extractvalue %dx.types.CBufRet.f32 %4717, 3
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 3
  %4724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.i32 %4724, 0
  %4726 = extractvalue %dx.types.CBufRet.i32 %4724, 1
  %4727 = udiv i32 %4726, %4725
  %4728 = fsub fast float %4715, %4718
  %4729 = fsub fast float %4716, %4719
  %4730 = call float @dx.op.binary.f32(i32 35, float %4728, float 0.000000e+00)  ; FMax(a,b)
  %4731 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 36, float %4730, float %4720)  ; FMin(a,b)
  %4733 = call float @dx.op.binary.f32(i32 36, float %4731, float %4721)  ; FMin(a,b)
  %4734 = add i32 %4725, -1
  %4735 = add i32 %4727, -1
  %4736 = fmul fast float %4732, %4723
  %4737 = fmul fast float %4733, %4723
  %4738 = fptoui float %4736 to i32
  %4739 = fptoui float %4737 to i32
  %4740 = call i32 @dx.op.binary.i32(i32 40, i32 %4738, i32 %4734)  ; UMin(a,b)
  %4741 = call i32 @dx.op.binary.i32(i32 40, i32 %4739, i32 %4735)  ; UMin(a,b)
  %4742 = mul i32 %4741, %4725
  %4743 = add i32 %4742, %4740
  %4744 = shl i32 %4743, 2
  %4745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4744, i32 undef)  ; BufferLoad(srv,index,wot)
  %4746 = extractvalue %dx.types.ResRet.i32 %4745, 0
  %4747 = icmp eq i32 %4746, -1
  br i1 %4747, label %4964, label %4748

; <label>:4748                                    ; preds = %4693
  %4749 = mul i32 %4746, 148
  %4750 = add i32 %4749, 4
  %4751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4750, i32 undef)  ; BufferLoad(srv,index,wot)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = add i32 %4749, 8
  %4754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4753, i32 undef)  ; BufferLoad(srv,index,wot)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = add i32 %4749, 36
  %4757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = add i32 %4749, 60
  %4760 = add i32 %4749, 92
  %4761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4760, i32 undef)  ; BufferLoad(srv,index,wot)
  %4762 = extractvalue %dx.types.ResRet.i32 %4761, 0
  %4763 = add i32 %4749, 116
  %4764 = fsub fast float %4715, %4752
  %4765 = fsub fast float %4716, %4755
  %4766 = fmul fast float %4723, %4764
  %4767 = fmul fast float %4723, %4765
  %4768 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 2
  %4773 = call float @dx.op.unary.f32(i32 83, float %4768)  ; DerivCoarseX(value)
  %4774 = call float @dx.op.unary.f32(i32 83, float %4770)  ; DerivCoarseX(value)
  %4775 = call float @dx.op.unary.f32(i32 84, float %4768)  ; DerivCoarseY(value)
  %4776 = call float @dx.op.unary.f32(i32 84, float %4770)  ; DerivCoarseY(value)
  %4777 = fmul fast float %4773, %4772
  %4778 = fmul fast float %4774, %4772
  %4779 = fmul fast float %4775, %4772
  %4780 = fmul fast float %4776, %4772
  %4781 = call float @dx.op.dot2.f32(i32 54, float %4779, float %4780, float %4779, float %4780)  ; Dot2(ax,ay,bx,by)
  %4782 = call float @dx.op.dot2.f32(i32 54, float %4777, float %4778, float %4777, float %4778)  ; Dot2(ax,ay,bx,by)
  %4783 = call float @dx.op.binary.f32(i32 35, float %4782, float %4781)  ; FMax(a,b)
  %4784 = call float @dx.op.unary.f32(i32 23, float %4783)  ; Log(value)
  %4785 = fmul fast float %4784, 5.000000e-01
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4788 = fadd fast float %4787, %4785
  %4789 = call float @dx.op.binary.f32(i32 35, float %4788, float 0.000000e+00)  ; FMax(a,b)
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 3
  %4792 = fadd fast float %4791, %4789
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4795 = fadd fast float %4792, %4794
  %4796 = add i32 %4762, 0
  %4797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4798 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4797, i32 0)  ; GetDimensions(handle,mipLevel)
  %4799 = extractvalue %dx.types.Dimensions %4798, 0
  %4800 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4799)  ; FirstbitLo(value)
  %4801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.i32 %4801, 1
  %4803 = sub nsw i32 %4802, %4800
  %4804 = sitofp i32 %4803 to float
  %4805 = fsub fast float %4795, %4804
  %4806 = call float @dx.op.binary.f32(i32 35, float %4805, float 0.000000e+00)  ; FMax(a,b)
  %4807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4797, %dx.types.Handle %47, float %4768, float %4770, float %4758, float undef, i32 0, i32 0, i32 undef, float %4806)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = fcmp ule float %4808, 0x3FE0101020000000
  %4810 = extractvalue %dx.types.CBufRet.i32 %4801, 0
  %4811 = and i32 %4810, 128
  %4812 = icmp ne i32 %4811, 0
  %4813 = and i1 %4809, %4812
  br i1 %4813, label %4964, label %4814

; <label>:4814                                    ; preds = %4748
  %4815 = add i32 %4749, 20
  %4816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4815, i32 undef)  ; BufferLoad(srv,index,wot)
  %4817 = extractvalue %dx.types.ResRet.f32 %4816, 0
  %4818 = add i32 %4749, 24
  %4819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4818, i32 undef)  ; BufferLoad(srv,index,wot)
  %4820 = extractvalue %dx.types.ResRet.f32 %4819, 0
  %4821 = add i32 %4749, 40
  %4822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4821, i32 undef)  ; BufferLoad(srv,index,wot)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 0
  %4824 = add i32 %4749, 96
  %4825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.i32 %4825, 0
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4829 = fmul fast float %4828, %4768
  %4830 = fmul fast float %4828, %4770
  %4831 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4832 = fadd fast float %4829, %4831
  %4833 = fadd fast float %4830, %4831
  %4834 = add i32 %4826, 0
  %4835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4834, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4836 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4835, i32 0)  ; GetDimensions(handle,mipLevel)
  %4837 = extractvalue %dx.types.Dimensions %4836, 0
  %4838 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4837)  ; FirstbitLo(value)
  %4839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.i32 %4839, 1
  %4841 = sub nsw i32 %4840, %4838
  %4842 = sitofp i32 %4841 to float
  %4843 = fsub fast float %4792, %4842
  %4844 = call float @dx.op.binary.f32(i32 35, float %4843, float 0.000000e+00)  ; FMax(a,b)
  %4845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4835, %dx.types.Handle %47, float %4832, float %4833, float %4823, float undef, i32 0, i32 0, i32 undef, float %4844)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = fmul fast float %4846, %4817
  %4848 = fadd fast float %4847, %4820
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4849, 2
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 3
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 3
  %4857 = extractvalue %dx.types.CBufRet.f32 %4849, 3
  %4858 = fadd fast float %4854, %4715
  %4859 = fadd fast float %4856, %4716
  %4860 = fadd fast float %4848, %4857
  %4861 = fmul fast float %4858, %4850
  %4862 = call float @dx.op.tertiary.f32(i32 46, float %4859, float %4851, float %4861)  ; FMad(a,b,c)
  %4863 = call float @dx.op.tertiary.f32(i32 46, float %4860, float %4852, float %4862)  ; FMad(a,b,c)
  %4864 = fsub fast float %4863, %4857
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4867 = fsub fast float %4864, %4866
  %4868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.i32 %4868, 0
  %4870 = call i32 @dx.op.binary.i32(i32 40, i32 %4746, i32 %4869)  ; UMin(a,b)
  %4871 = mul i32 %4870, 36
  %4872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4871, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.i32 %4872, 0
  %4874 = add i32 %4871, 4
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = fmul fast float %4876, %4768
  %4878 = fmul fast float %4876, %4770
  %4879 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4880 = fadd fast float %4877, %4879
  %4881 = fadd fast float %4878, %4879
  %4882 = icmp eq i32 %4873, 0
  br i1 %4882, label %4951, label %4883

; <label>:4883                                    ; preds = %4814
  br label %4884

; <label>:4884                                    ; preds = %4941, %4883
  %4885 = phi float [ %4942, %4941 ], [ 0.000000e+00, %4883 ]
  %4886 = phi float [ %4943, %4941 ], [ 0.000000e+00, %4883 ]
  %4887 = phi float [ %4944, %4941 ], [ 0.000000e+00, %4883 ]
  %4888 = phi float [ %4945, %4941 ], [ 0.000000e+00, %4883 ]
  %4889 = phi float [ %4946, %4941 ], [ 0.000000e+00, %4883 ]
  %4890 = phi float [ %4947, %4941 ], [ 0.000000e+00, %4883 ]
  %4891 = phi i32 [ %4948, %4941 ], [ 0, %4883 ]
  %4892 = shl i32 %4891, 2
  %4893 = add i32 %4759, %4892
  %4894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = add i32 %4763, %4892
  %4897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.i32 %4897, 0
  %4899 = add i32 %4898, 0
  %4900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4899, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4901 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4900, i32 0)  ; GetDimensions(handle,mipLevel)
  %4902 = extractvalue %dx.types.Dimensions %4901, 0
  %4903 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4902)  ; FirstbitLo(value)
  %4904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.i32 %4904, 1
  %4906 = sub nsw i32 %4905, %4903
  %4907 = sitofp i32 %4906 to float
  %4908 = fsub fast float %4792, %4907
  %4909 = call float @dx.op.binary.f32(i32 35, float %4908, float 0.000000e+00)  ; FMax(a,b)
  %4910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4900, %dx.types.Handle %47, float %4880, float %4881, float %4895, float undef, i32 0, i32 0, i32 undef, float %4909)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = fcmp fast ogt float %4911, 0.000000e+00
  br i1 %4912, label %4913, label %4941

; <label>:4913                                    ; preds = %4884
  %4914 = add i32 %4874, %4892
  %4915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4914, i32 undef)  ; BufferLoad(srv,index,wot)
  %4916 = extractvalue %dx.types.ResRet.i32 %4915, 0
  %4917 = and i32 %4916, 32767
  %4918 = mul nuw nsw i32 %4917, 928
  %4919 = add nuw nsw i32 %4918, 48
  %4920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4919, i32 undef)  ; BufferLoad(srv,index,wot)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 0
  %4922 = extractvalue %dx.types.ResRet.f32 %4920, 1
  %4923 = extractvalue %dx.types.ResRet.f32 %4920, 2
  %4924 = add nuw nsw i32 %4918, 60
  %4925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4924, i32 undef)  ; BufferLoad(srv,index,wot)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4929 = fmul fast float %4921, %4911
  %4930 = fmul fast float %4922, %4911
  %4931 = fmul fast float %4923, %4911
  %4932 = fadd fast float %4929, %4885
  %4933 = fadd fast float %4930, %4886
  %4934 = fadd fast float %4931, %4887
  %4935 = fmul fast float %4926, %4911
  %4936 = fmul fast float %4927, %4911
  %4937 = fmul fast float %4928, %4911
  %4938 = fadd fast float %4935, %4888
  %4939 = fadd fast float %4936, %4889
  %4940 = fadd fast float %4937, %4890
  br label %4941

; <label>:4941                                    ; preds = %4913, %4884
  %4942 = phi float [ %4932, %4913 ], [ %4885, %4884 ]
  %4943 = phi float [ %4933, %4913 ], [ %4886, %4884 ]
  %4944 = phi float [ %4934, %4913 ], [ %4887, %4884 ]
  %4945 = phi float [ %4938, %4913 ], [ %4888, %4884 ]
  %4946 = phi float [ %4939, %4913 ], [ %4889, %4884 ]
  %4947 = phi float [ %4940, %4913 ], [ %4890, %4884 ]
  %4948 = add nuw i32 %4891, 1
  %4949 = icmp eq i32 %4948, %4873
  br i1 %4949, label %4950, label %4884

; <label>:4950                                    ; preds = %4941
  br label %4951

; <label>:4951                                    ; preds = %4950, %4814
  %4952 = phi float [ 0.000000e+00, %4814 ], [ %4942, %4950 ]
  %4953 = phi float [ 0.000000e+00, %4814 ], [ %4943, %4950 ]
  %4954 = phi float [ 0.000000e+00, %4814 ], [ %4944, %4950 ]
  %4955 = phi float [ 0.000000e+00, %4814 ], [ %4945, %4950 ]
  %4956 = phi float [ 0.000000e+00, %4814 ], [ %4946, %4950 ]
  %4957 = phi float [ 0.000000e+00, %4814 ], [ %4947, %4950 ]
  %4958 = fadd fast float %4955, %4952
  %4959 = fmul fast float %4958, 0x3F847AE140000000
  %4960 = fadd fast float %4956, %4953
  %4961 = fmul fast float %4960, 0x3F847AE140000000
  %4962 = fadd fast float %4957, %4954
  %4963 = fmul fast float %4962, 0x3F847AE140000000
  br label %4964

; <label>:4964                                    ; preds = %4951, %4748, %4693, %4690, %4661, %4623
  %4965 = phi float [ %4675, %4661 ], [ -1.310720e+05, %4623 ], [ %4867, %4951 ], [ -1.310720e+05, %4693 ], [ -1.310720e+05, %4748 ], [ -1.310720e+05, %4690 ]
  %4966 = phi float [ %4685, %4661 ], [ 0.000000e+00, %4623 ], [ %4959, %4951 ], [ 0.000000e+00, %4693 ], [ 0.000000e+00, %4748 ], [ 0.000000e+00, %4690 ]
  %4967 = phi float [ %4687, %4661 ], [ 0.000000e+00, %4623 ], [ %4961, %4951 ], [ 0.000000e+00, %4693 ], [ 0.000000e+00, %4748 ], [ 0.000000e+00, %4690 ]
  %4968 = phi float [ %4689, %4661 ], [ 0.000000e+00, %4623 ], [ %4963, %4951 ], [ 0.000000e+00, %4693 ], [ 0.000000e+00, %4748 ], [ 0.000000e+00, %4690 ]
  %4969 = phi i1 [ true, %4661 ], [ false, %4623 ], [ true, %4951 ], [ false, %4693 ], [ false, %4748 ], [ false, %4690 ]
  %4970 = and i32 %244, 3
  %4971 = icmp eq i32 %4970, 1
  %4972 = select i1 %4971, float 1.000000e+00, float 0.000000e+00
  %4973 = fsub fast float %4965, %195
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = select i1 %4969, float %4974, float 1.000000e+00
  %4976 = fmul fast float %4975, %4972
  %4977 = icmp eq i32 %4970, 3
  %4978 = select i1 %4977, float 1.000000e+00, float %4976
  %4979 = call float @dx.op.binary.f32(i32 35, float %4562, float %4978)  ; FMax(a,b)
  %4980 = fcmp fast olt float %4978, 1.000000e+00
  %4981 = fcmp uge float %71, 0.000000e+00
  %4982 = and i1 %4981, %4980
  br i1 %4982, label %4983, label %4993

; <label>:4983                                    ; preds = %4964
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4988 = fadd fast float %4985, %4979
  %4989 = fcmp ule float %70, 0.000000e+00
  %4990 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = select i1 %4989, float %4990, float 1.000000e+00
  %4992 = fmul fast float %4991, %4987
  br label %4993

; <label>:4993                                    ; preds = %4983, %4964
  %4994 = phi float [ %4988, %4983 ], [ %4979, %4964 ]
  %4995 = phi float [ %4986, %4983 ], [ 0.000000e+00, %4964 ]
  %4996 = phi float [ %4992, %4983 ], [ 0.000000e+00, %4964 ]
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %5000 = fcmp fast une float %4998, 0.000000e+00
  %5001 = fcmp fast une float %4999, 0.000000e+00
  %5002 = or i1 %5000, %5001
  br i1 %5002, label %5003, label %5562

; <label>:5003                                    ; preds = %4993
  br i1 %5000, label %5004, label %5277

; <label>:5004                                    ; preds = %5003
  %5005 = call float @dx.op.unary.f32(i32 23, float %4559)  ; Log(value)
  %5006 = fmul fast float %5005, 4.000000e+00
  %5007 = call float @dx.op.unary.f32(i32 21, float %5006)  ; Exp(value)
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = fmul fast float %5009, %58
  %5011 = fmul fast float %5009, %59
  %5012 = fmul fast float %5009, %60
  %5013 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5014 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5015 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5016 = call float @dx.op.unary.f32(i32 23, float %5013)  ; Log(value)
  %5017 = call float @dx.op.unary.f32(i32 23, float %5014)  ; Log(value)
  %5018 = call float @dx.op.unary.f32(i32 23, float %5015)  ; Log(value)
  %5019 = fmul fast float %5016, 4.000000e+00
  %5020 = fmul fast float %5017, 4.000000e+00
  %5021 = fmul fast float %5018, 4.000000e+00
  %5022 = call float @dx.op.unary.f32(i32 21, float %5019)  ; Exp(value)
  %5023 = call float @dx.op.unary.f32(i32 21, float %5020)  ; Exp(value)
  %5024 = call float @dx.op.unary.f32(i32 21, float %5021)  ; Exp(value)
  %5025 = fadd fast float %5023, %5022
  %5026 = fadd fast float %5025, %5024
  %5027 = fdiv fast float 1.000000e+00, %5026
  %5028 = fmul fast float %5027, %5022
  %5029 = fcmp fast ogt float %67, 0.000000e+00
  %5030 = fcmp fast ogt float %68, 0.000000e+00
  %5031 = fcmp fast ogt float %69, 0.000000e+00
  %5032 = fcmp fast olt float %67, 0.000000e+00
  %5033 = fcmp fast olt float %68, 0.000000e+00
  %5034 = fcmp fast olt float %69, 0.000000e+00
  %5035 = zext i1 %5029 to i32
  %5036 = zext i1 %5030 to i32
  %5037 = zext i1 %5031 to i32
  %5038 = zext i1 %5032 to i32
  %5039 = zext i1 %5033 to i32
  %5040 = zext i1 %5034 to i32
  %5041 = sub nsw i32 %5035, %5038
  %5042 = sub nsw i32 %5036, %5039
  %5043 = sub nsw i32 %5037, %5040
  %5044 = call float @dx.op.unary.f32(i32 83, float %5010)  ; DerivCoarseX(value)
  %5045 = call float @dx.op.unary.f32(i32 83, float %5011)  ; DerivCoarseX(value)
  %5046 = call float @dx.op.unary.f32(i32 83, float %5012)  ; DerivCoarseX(value)
  %5047 = call float @dx.op.unary.f32(i32 84, float %5010)  ; DerivCoarseY(value)
  %5048 = call float @dx.op.unary.f32(i32 84, float %5011)  ; DerivCoarseY(value)
  %5049 = call float @dx.op.unary.f32(i32 84, float %5012)  ; DerivCoarseY(value)
  %5050 = fcmp fast ole float %276, %5028
  %5051 = fmul fast float %5027, %5025
  %5052 = fcmp fast ole float %276, %5051
  %5053 = select i1 %5052, float %5012, float %5010
  %5054 = select i1 %5052, float %5010, float %5011
  %5055 = select i1 %5050, float %5011, float %5053
  %5056 = select i1 %5050, float %5012, float %5054
  %5057 = select i1 %5052, float %5046, float %5044
  %5058 = select i1 %5052, float %5044, float %5045
  %5059 = select i1 %5050, float %5045, float %5057
  %5060 = select i1 %5050, float %5046, float %5058
  %5061 = select i1 %5052, float %5049, float %5047
  %5062 = select i1 %5052, float %5047, float %5048
  %5063 = select i1 %5050, float %5048, float %5061
  %5064 = select i1 %5050, float %5049, float %5062
  %5065 = call float @dx.op.unary.f32(i32 27, float %5055)  ; Round_ni(value)
  %5066 = call float @dx.op.unary.f32(i32 27, float %5056)  ; Round_ni(value)
  %5067 = fptosi float %5065 to i32
  %5068 = fptosi float %5066 to i32
  %5069 = xor i32 %5068, %5067
  %5070 = sitofp i32 %5069 to float
  %5071 = fptosi float %5070 to i32
  %5072 = sitofp i32 %5071 to float
  %5073 = fmul fast float %5072, 0x3FE3C6EF40000000
  %5074 = frem fast float %5065, 2.560000e+02
  %5075 = frem fast float %5066, 2.560000e+02
  %5076 = fptoui float %5074 to i32
  %5077 = fptoui float %5075 to i32
  %5078 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5076, i32 %5077, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5079 = extractvalue %dx.types.ResRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.ResRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.ResRet.f32 %5078, 2
  %5082 = fadd fast float %5079, %5073
  %5083 = fadd fast float %5080, %5073
  %5084 = fadd fast float %5081, %5073
  %5085 = call float @dx.op.unary.f32(i32 22, float %5082)  ; Frc(value)
  %5086 = call float @dx.op.unary.f32(i32 22, float %5083)  ; Frc(value)
  %5087 = call float @dx.op.unary.f32(i32 22, float %5084)  ; Frc(value)
  %5088 = fmul fast float %5087, 0x401921FB60000000
  %5089 = call float @dx.op.unary.f32(i32 13, float %5088)  ; Sin(value)
  %5090 = call float @dx.op.unary.f32(i32 12, float %5088)  ; Cos(value)
  %5091 = fsub fast float -0.000000e+00, %5090
  %5092 = fmul fast float %5090, %5055
  %5093 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5056, float %5092)  ; FMad(a,b,c)
  %5094 = fmul fast float %5089, %5055
  %5095 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5056, float %5094)  ; FMad(a,b,c)
  %5096 = fadd fast float %5093, %5085
  %5097 = fadd fast float %5095, %5086
  %5098 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5099 = bitcast float %5098 to i32
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5139, label %5101

; <label>:5101                                    ; preds = %5004
  %5102 = add i32 %5099, 0
  %5103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5103, %dx.types.Handle %103, float %5096, float %5097, float undef, float undef, i32 0, i32 0, i32 undef, float %5059, float %5060, float undef, float %5063, float %5064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5108 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5109 = fsub fast float 1.000000e+00, %4998
  %5110 = call float @dx.op.binary.f32(i32 35, float %5109, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5111 = bitcast float %4998 to i32
  %5112 = sitofp i32 %5111 to float
  %5113 = fadd fast float %5112, 0xC1CFBF8940000000
  %5114 = fmul fast float %5108, %5113
  %5115 = fadd fast float %5114, 0x41CFBF8940000000
  %5116 = fptosi float %5115 to i32
  %5117 = bitcast i32 %5116 to float
  %5118 = bitcast float %5110 to i32
  %5119 = sitofp i32 %5118 to float
  %5120 = fadd fast float %5119, 0xC1CFBF8940000000
  %5121 = fmul fast float %5120, %5108
  %5122 = fadd fast float %5121, 0x41CFBF8940000000
  %5123 = fptosi float %5122 to i32
  %5124 = bitcast i32 %5123 to float
  %5125 = fmul fast float %5117, %5107
  %5126 = fmul fast float %5124, %5107
  %5127 = fsub fast float %5110, %5125
  %5128 = fadd fast float %5126, %5110
  %5129 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5131 = fsub fast float %5105, %5129
  %5132 = fsub fast float %5130, %5129
  %5133 = bitcast float %5132 to i32
  %5134 = sub nsw i32 2129859010, %5133
  %5135 = bitcast i32 %5134 to float
  %5136 = fmul fast float %5135, %5131
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fcmp fast olt float %5137, 0x3F70101020000000
  br i1 %5138, label %5277, label %5139

; <label>:5139                                    ; preds = %5101, %5004
  %5140 = phi float [ %5137, %5101 ], [ %4998, %5004 ]
  %5141 = fmul fast float %5140, %5007
  %5142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.i32 %5142, 1
  %5144 = extractvalue %dx.types.CBufRet.i32 %5142, 0
  %5145 = add i32 %5144, 0
  %5146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5147 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5146, %dx.types.Handle %102, float %5096, float %5097, float undef, float undef, i32 0, i32 0, i32 undef, float %5059, float %5060, float undef, float %5063, float %5064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5148 = extractvalue %dx.types.ResRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.ResRet.f32 %5147, 1
  %5150 = extractvalue %dx.types.ResRet.f32 %5147, 2
  %5151 = extractvalue %dx.types.ResRet.f32 %5147, 3
  %5152 = and i32 %5143, 255
  %5153 = uitofp i32 %5152 to float
  %5154 = lshr i32 %5143, 8
  %5155 = and i32 %5154, 255
  %5156 = uitofp i32 %5155 to float
  %5157 = fmul fast float %5151, %5153
  %5158 = fadd fast float %5157, %5156
  %5159 = fmul fast float %5158, 0x3F70101000000000
  %5160 = fadd fast float %5159, 0xBFB99999A0000000
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = fmul fast float %5161, 0x3FF1C71C80000000
  %5163 = call float @dx.op.binary.f32(i32 36, float %5159, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5164 = fsub fast float 1.000000e+00, %5162
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fmul fast float %5165, %5148
  %5167 = fmul fast float %5165, %5149
  %5168 = fmul fast float %5165, %5150
  %5169 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5170 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5171 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5172 = fmul fast float %5162, %5148
  %5173 = fmul fast float %5162, %5149
  %5174 = fmul fast float %5162, %5150
  %5175 = fadd fast float %5172, %5163
  %5176 = fadd fast float %5173, %5163
  %5177 = fadd fast float %5174, %5163
  %5178 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.i32 %5181, 3
  %5183 = extractvalue %dx.types.CBufRet.i32 %5181, 2
  %5184 = add i32 %5183, 0
  %5185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5186 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5185, %dx.types.Handle %102, float %5096, float %5097, float undef, float undef, i32 0, i32 0, i32 undef, float %5059, float %5060, float undef, float %5063, float %5064, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = extractvalue %dx.types.ResRet.f32 %5186, 3
  %5191 = and i32 %5182, 255
  %5192 = uitofp i32 %5191 to float
  %5193 = lshr i32 %5182, 8
  %5194 = and i32 %5193, 255
  %5195 = uitofp i32 %5194 to float
  %5196 = lshr i32 %5182, 16
  %5197 = and i32 %5196, 255
  %5198 = uitofp i32 %5197 to float
  %5199 = fmul fast float %5198, 0x3F70101000000000
  %5200 = fmul fast float %5187, %5192
  %5201 = fadd fast float %5200, %5195
  %5202 = fmul fast float %5201, 0x3F70101000000000
  %5203 = fadd fast float %5188, -5.000000e-01
  %5204 = fadd fast float %5190, -5.000000e-01
  %5205 = fmul fast float %5203, %5199
  %5206 = fmul fast float %5204, %5199
  %5207 = fadd fast float %5205, 5.000000e-01
  %5208 = fadd fast float %5206, 5.000000e-01
  %5209 = fmul fast float %5207, 2.000000e+00
  %5210 = fadd fast float %5209, -1.000000e+00
  %5211 = fmul fast float %5208, 2.000000e+00
  %5212 = fadd fast float %5211, -1.000000e+00
  %5213 = fadd fast float %5210, %5212
  %5214 = fmul fast float %5213, 5.000000e-01
  %5215 = fsub fast float %5210, %5212
  %5216 = fmul fast float %5215, 5.000000e-01
  %5217 = call float @dx.op.unary.f32(i32 6, float %5214)  ; FAbs(value)
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = call float @dx.op.unary.f32(i32 6, float %5216)  ; FAbs(value)
  %5220 = fsub fast float %5218, %5219
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5216, float %5220, float %5214, float %5216, float %5220)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = call float @dx.op.unary.f32(i32 25, float %5221)  ; Rsqrt(value)
  %5223 = fmul fast float %5214, %5222
  %5224 = fmul fast float %5216, %5222
  %5225 = select i1 %5052, i32 %5042, i32 %5043
  %5226 = select i1 %5050, i32 %5041, i32 %5225
  %5227 = sitofp i32 %5226 to float
  %5228 = fmul fast float %5220, %5227
  %5229 = fmul fast float %5228, %5222
  %5230 = select i1 %5052, float %5229, float %5224
  %5231 = select i1 %5052, float %5224, float %5229
  %5232 = select i1 %5050, float %5229, float %5223
  %5233 = select i1 %5050, float %5224, float %5230
  %5234 = select i1 %5050, float %5223, float %5231
  %5235 = fsub fast float %5169, %4602
  %5236 = fsub fast float %5170, %4603
  %5237 = fsub fast float %5171, %4604
  %5238 = fmul fast float %5235, %5141
  %5239 = fmul fast float %5236, %5141
  %5240 = fmul fast float %5237, %5141
  %5241 = fadd fast float %5238, %4602
  %5242 = fadd fast float %5239, %4603
  %5243 = fadd fast float %5240, %4604
  %5244 = fsub fast float %5178, %4584
  %5245 = fsub fast float %5179, %4585
  %5246 = fsub fast float %5180, %4586
  %5247 = fmul fast float %5244, %5141
  %5248 = fmul fast float %5245, %5141
  %5249 = fmul fast float %5246, %5141
  %5250 = fadd fast float %5247, %4584
  %5251 = fadd fast float %5248, %4585
  %5252 = fadd fast float %5249, %4586
  %5253 = fadd fast float %5232, %4544
  %5254 = fadd fast float %5233, %4545
  %5255 = fadd fast float %5234, %4546
  %5256 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5253, float %5254, float %5255)  ; Dot3(ax,ay,az,bx,by,bz)
  %5257 = call float @dx.op.unary.f32(i32 25, float %5256)  ; Rsqrt(value)
  %5258 = fmul fast float %5253, %5257
  %5259 = fmul fast float %5254, %5257
  %5260 = fmul fast float %5255, %5257
  %5261 = fsub fast float %5258, %4544
  %5262 = fsub fast float %5259, %4545
  %5263 = fsub fast float %5260, %4546
  %5264 = fmul fast float %5261, %5141
  %5265 = fmul fast float %5262, %5141
  %5266 = fmul fast float %5263, %5141
  %5267 = fadd fast float %5264, %4544
  %5268 = fadd fast float %5265, %4545
  %5269 = fadd fast float %5266, %4546
  %5270 = call float @dx.op.binary.f32(i32 36, float %4559, float %5189)  ; FMin(a,b)
  %5271 = fsub fast float %5270, %4559
  %5272 = fmul fast float %5271, %5141
  %5273 = fadd fast float %5272, %4559
  %5274 = fsub fast float %5202, %4587
  %5275 = fmul fast float %5274, %5141
  %5276 = fadd fast float %5275, %4587
  br label %5277

; <label>:5277                                    ; preds = %5139, %5101, %5003
  %5278 = phi float [ %5241, %5139 ], [ %4602, %5101 ], [ %4602, %5003 ]
  %5279 = phi float [ %5242, %5139 ], [ %4603, %5101 ], [ %4603, %5003 ]
  %5280 = phi float [ %5243, %5139 ], [ %4604, %5101 ], [ %4604, %5003 ]
  %5281 = phi float [ %5250, %5139 ], [ %4584, %5101 ], [ %4584, %5003 ]
  %5282 = phi float [ %5251, %5139 ], [ %4585, %5101 ], [ %4585, %5003 ]
  %5283 = phi float [ %5252, %5139 ], [ %4586, %5101 ], [ %4586, %5003 ]
  %5284 = phi float [ %5267, %5139 ], [ %4544, %5101 ], [ %4544, %5003 ]
  %5285 = phi float [ %5268, %5139 ], [ %4545, %5101 ], [ %4545, %5003 ]
  %5286 = phi float [ %5269, %5139 ], [ %4546, %5101 ], [ %4546, %5003 ]
  %5287 = phi float [ %5276, %5139 ], [ %4587, %5101 ], [ %4587, %5003 ]
  %5288 = phi float [ %5273, %5139 ], [ %4559, %5101 ], [ %4559, %5003 ]
  br i1 %5001, label %5289, label %5562

; <label>:5289                                    ; preds = %5277
  %5290 = call float @dx.op.unary.f32(i32 23, float %5288)  ; Log(value)
  %5291 = fmul fast float %5290, 4.000000e+00
  %5292 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = fmul fast float %5294, %58
  %5296 = fmul fast float %5294, %59
  %5297 = fmul fast float %5294, %60
  %5298 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5299 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5300 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5301 = call float @dx.op.unary.f32(i32 23, float %5298)  ; Log(value)
  %5302 = call float @dx.op.unary.f32(i32 23, float %5299)  ; Log(value)
  %5303 = call float @dx.op.unary.f32(i32 23, float %5300)  ; Log(value)
  %5304 = fmul fast float %5301, 4.000000e+00
  %5305 = fmul fast float %5302, 4.000000e+00
  %5306 = fmul fast float %5303, 4.000000e+00
  %5307 = call float @dx.op.unary.f32(i32 21, float %5304)  ; Exp(value)
  %5308 = call float @dx.op.unary.f32(i32 21, float %5305)  ; Exp(value)
  %5309 = call float @dx.op.unary.f32(i32 21, float %5306)  ; Exp(value)
  %5310 = fadd fast float %5308, %5307
  %5311 = fadd fast float %5310, %5309
  %5312 = fdiv fast float 1.000000e+00, %5311
  %5313 = fmul fast float %5312, %5307
  %5314 = fcmp fast ogt float %67, 0.000000e+00
  %5315 = fcmp fast ogt float %68, 0.000000e+00
  %5316 = fcmp fast ogt float %69, 0.000000e+00
  %5317 = fcmp fast olt float %67, 0.000000e+00
  %5318 = fcmp fast olt float %68, 0.000000e+00
  %5319 = fcmp fast olt float %69, 0.000000e+00
  %5320 = zext i1 %5314 to i32
  %5321 = zext i1 %5315 to i32
  %5322 = zext i1 %5316 to i32
  %5323 = zext i1 %5317 to i32
  %5324 = zext i1 %5318 to i32
  %5325 = zext i1 %5319 to i32
  %5326 = sub nsw i32 %5320, %5323
  %5327 = sub nsw i32 %5321, %5324
  %5328 = sub nsw i32 %5322, %5325
  %5329 = call float @dx.op.unary.f32(i32 83, float %5295)  ; DerivCoarseX(value)
  %5330 = call float @dx.op.unary.f32(i32 83, float %5296)  ; DerivCoarseX(value)
  %5331 = call float @dx.op.unary.f32(i32 83, float %5297)  ; DerivCoarseX(value)
  %5332 = call float @dx.op.unary.f32(i32 84, float %5295)  ; DerivCoarseY(value)
  %5333 = call float @dx.op.unary.f32(i32 84, float %5296)  ; DerivCoarseY(value)
  %5334 = call float @dx.op.unary.f32(i32 84, float %5297)  ; DerivCoarseY(value)
  %5335 = fcmp fast ole float %276, %5313
  %5336 = fmul fast float %5312, %5310
  %5337 = fcmp fast ole float %276, %5336
  %5338 = select i1 %5337, float %5297, float %5295
  %5339 = select i1 %5337, float %5295, float %5296
  %5340 = select i1 %5335, float %5296, float %5338
  %5341 = select i1 %5335, float %5297, float %5339
  %5342 = select i1 %5337, float %5331, float %5329
  %5343 = select i1 %5337, float %5329, float %5330
  %5344 = select i1 %5335, float %5330, float %5342
  %5345 = select i1 %5335, float %5331, float %5343
  %5346 = select i1 %5337, float %5334, float %5332
  %5347 = select i1 %5337, float %5332, float %5333
  %5348 = select i1 %5335, float %5333, float %5346
  %5349 = select i1 %5335, float %5334, float %5347
  %5350 = call float @dx.op.unary.f32(i32 27, float %5340)  ; Round_ni(value)
  %5351 = call float @dx.op.unary.f32(i32 27, float %5341)  ; Round_ni(value)
  %5352 = fptosi float %5350 to i32
  %5353 = fptosi float %5351 to i32
  %5354 = xor i32 %5353, %5352
  %5355 = sitofp i32 %5354 to float
  %5356 = fptosi float %5355 to i32
  %5357 = sitofp i32 %5356 to float
  %5358 = fmul fast float %5357, 0x3FE3C6EF40000000
  %5359 = frem fast float %5350, 2.560000e+02
  %5360 = frem fast float %5351, 2.560000e+02
  %5361 = fptoui float %5359 to i32
  %5362 = fptoui float %5360 to i32
  %5363 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5361, i32 %5362, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = fadd fast float %5364, %5358
  %5368 = fadd fast float %5365, %5358
  %5369 = fadd fast float %5366, %5358
  %5370 = call float @dx.op.unary.f32(i32 22, float %5367)  ; Frc(value)
  %5371 = call float @dx.op.unary.f32(i32 22, float %5368)  ; Frc(value)
  %5372 = call float @dx.op.unary.f32(i32 22, float %5369)  ; Frc(value)
  %5373 = fmul fast float %5372, 0x401921FB60000000
  %5374 = call float @dx.op.unary.f32(i32 13, float %5373)  ; Sin(value)
  %5375 = call float @dx.op.unary.f32(i32 12, float %5373)  ; Cos(value)
  %5376 = fsub fast float -0.000000e+00, %5375
  %5377 = fmul fast float %5375, %5340
  %5378 = call float @dx.op.tertiary.f32(i32 46, float %5374, float %5341, float %5377)  ; FMad(a,b,c)
  %5379 = fmul fast float %5374, %5340
  %5380 = call float @dx.op.tertiary.f32(i32 46, float %5376, float %5341, float %5379)  ; FMad(a,b,c)
  %5381 = fadd fast float %5378, %5370
  %5382 = fadd fast float %5380, %5371
  %5383 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5384 = bitcast float %5383 to i32
  %5385 = icmp eq i32 %5384, 0
  br i1 %5385, label %5424, label %5386

; <label>:5386                                    ; preds = %5289
  %5387 = add i32 %5384, 0
  %5388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5388, %dx.types.Handle %103, float %5381, float %5382, float undef, float undef, i32 0, i32 0, i32 undef, float %5344, float %5345, float undef, float %5348, float %5349, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5391, 2
  %5394 = fsub fast float 1.000000e+00, %4999
  %5395 = call float @dx.op.binary.f32(i32 35, float %5394, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5396 = bitcast float %4999 to i32
  %5397 = sitofp i32 %5396 to float
  %5398 = fadd fast float %5397, 0xC1CFBF8940000000
  %5399 = fmul fast float %5393, %5398
  %5400 = fadd fast float %5399, 0x41CFBF8940000000
  %5401 = fptosi float %5400 to i32
  %5402 = bitcast i32 %5401 to float
  %5403 = bitcast float %5395 to i32
  %5404 = sitofp i32 %5403 to float
  %5405 = fadd fast float %5404, 0xC1CFBF8940000000
  %5406 = fmul fast float %5405, %5393
  %5407 = fadd fast float %5406, 0x41CFBF8940000000
  %5408 = fptosi float %5407 to i32
  %5409 = bitcast i32 %5408 to float
  %5410 = fmul fast float %5402, %5392
  %5411 = fmul fast float %5409, %5392
  %5412 = fsub fast float %5395, %5410
  %5413 = fadd fast float %5411, %5395
  %5414 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5415 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5416 = fsub fast float %5390, %5414
  %5417 = fsub fast float %5415, %5414
  %5418 = bitcast float %5417 to i32
  %5419 = sub nsw i32 2129859010, %5418
  %5420 = bitcast i32 %5419 to float
  %5421 = fmul fast float %5420, %5416
  %5422 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5423 = fcmp fast olt float %5422, 0x3F70101020000000
  br i1 %5423, label %5562, label %5424

; <label>:5424                                    ; preds = %5386, %5289
  %5425 = phi float [ %5422, %5386 ], [ %4999, %5289 ]
  %5426 = fmul fast float %5425, %5292
  %5427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.i32 %5427, 1
  %5429 = extractvalue %dx.types.CBufRet.i32 %5427, 0
  %5430 = add i32 %5429, 0
  %5431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5431, %dx.types.Handle %102, float %5381, float %5382, float undef, float undef, i32 0, i32 0, i32 undef, float %5344, float %5345, float undef, float %5348, float %5349, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.ResRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.ResRet.f32 %5432, 2
  %5436 = extractvalue %dx.types.ResRet.f32 %5432, 3
  %5437 = and i32 %5428, 255
  %5438 = uitofp i32 %5437 to float
  %5439 = lshr i32 %5428, 8
  %5440 = and i32 %5439, 255
  %5441 = uitofp i32 %5440 to float
  %5442 = fmul fast float %5436, %5438
  %5443 = fadd fast float %5442, %5441
  %5444 = fmul fast float %5443, 0x3F70101000000000
  %5445 = fadd fast float %5444, 0xBFB99999A0000000
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %5446, 0x3FF1C71C80000000
  %5448 = call float @dx.op.binary.f32(i32 36, float %5444, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5449 = fsub fast float 1.000000e+00, %5447
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %5450, %5433
  %5452 = fmul fast float %5450, %5434
  %5453 = fmul fast float %5450, %5435
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5455 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5457 = fmul fast float %5447, %5433
  %5458 = fmul fast float %5447, %5434
  %5459 = fmul fast float %5447, %5435
  %5460 = fadd fast float %5457, %5448
  %5461 = fadd fast float %5458, %5448
  %5462 = fadd fast float %5459, %5448
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.i32 %5466, 3
  %5468 = extractvalue %dx.types.CBufRet.i32 %5466, 2
  %5469 = add i32 %5468, 0
  %5470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5471 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5470, %dx.types.Handle %102, float %5381, float %5382, float undef, float undef, i32 0, i32 0, i32 undef, float %5344, float %5345, float undef, float %5348, float %5349, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = extractvalue %dx.types.ResRet.f32 %5471, 3
  %5476 = and i32 %5467, 255
  %5477 = uitofp i32 %5476 to float
  %5478 = lshr i32 %5467, 8
  %5479 = and i32 %5478, 255
  %5480 = uitofp i32 %5479 to float
  %5481 = lshr i32 %5467, 16
  %5482 = and i32 %5481, 255
  %5483 = uitofp i32 %5482 to float
  %5484 = fmul fast float %5483, 0x3F70101000000000
  %5485 = fmul fast float %5472, %5477
  %5486 = fadd fast float %5485, %5480
  %5487 = fmul fast float %5486, 0x3F70101000000000
  %5488 = fadd fast float %5473, -5.000000e-01
  %5489 = fadd fast float %5475, -5.000000e-01
  %5490 = fmul fast float %5488, %5484
  %5491 = fmul fast float %5489, %5484
  %5492 = fadd fast float %5490, 5.000000e-01
  %5493 = fadd fast float %5491, 5.000000e-01
  %5494 = fmul fast float %5492, 2.000000e+00
  %5495 = fadd fast float %5494, -1.000000e+00
  %5496 = fmul fast float %5493, 2.000000e+00
  %5497 = fadd fast float %5496, -1.000000e+00
  %5498 = fadd fast float %5495, %5497
  %5499 = fmul fast float %5498, 5.000000e-01
  %5500 = fsub fast float %5495, %5497
  %5501 = fmul fast float %5500, 5.000000e-01
  %5502 = call float @dx.op.unary.f32(i32 6, float %5499)  ; FAbs(value)
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5505 = fsub fast float %5503, %5504
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5501, float %5505, float %5499, float %5501, float %5505)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = call float @dx.op.unary.f32(i32 25, float %5506)  ; Rsqrt(value)
  %5508 = fmul fast float %5499, %5507
  %5509 = fmul fast float %5501, %5507
  %5510 = select i1 %5337, i32 %5327, i32 %5328
  %5511 = select i1 %5335, i32 %5326, i32 %5510
  %5512 = sitofp i32 %5511 to float
  %5513 = fmul fast float %5505, %5512
  %5514 = fmul fast float %5513, %5507
  %5515 = select i1 %5337, float %5514, float %5509
  %5516 = select i1 %5337, float %5509, float %5514
  %5517 = select i1 %5335, float %5514, float %5508
  %5518 = select i1 %5335, float %5509, float %5515
  %5519 = select i1 %5335, float %5508, float %5516
  %5520 = fsub fast float %5454, %5278
  %5521 = fsub fast float %5455, %5279
  %5522 = fsub fast float %5456, %5280
  %5523 = fmul fast float %5520, %5426
  %5524 = fmul fast float %5521, %5426
  %5525 = fmul fast float %5522, %5426
  %5526 = fadd fast float %5523, %5278
  %5527 = fadd fast float %5524, %5279
  %5528 = fadd fast float %5525, %5280
  %5529 = fsub fast float %5463, %5281
  %5530 = fsub fast float %5464, %5282
  %5531 = fsub fast float %5465, %5283
  %5532 = fmul fast float %5529, %5426
  %5533 = fmul fast float %5530, %5426
  %5534 = fmul fast float %5531, %5426
  %5535 = fadd fast float %5532, %5281
  %5536 = fadd fast float %5533, %5282
  %5537 = fadd fast float %5534, %5283
  %5538 = fadd fast float %5517, %5284
  %5539 = fadd fast float %5518, %5285
  %5540 = fadd fast float %5519, %5286
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5539, float %5540, float %5538, float %5539, float %5540)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = call float @dx.op.unary.f32(i32 25, float %5541)  ; Rsqrt(value)
  %5543 = fmul fast float %5538, %5542
  %5544 = fmul fast float %5539, %5542
  %5545 = fmul fast float %5540, %5542
  %5546 = fsub fast float %5543, %5284
  %5547 = fsub fast float %5544, %5285
  %5548 = fsub fast float %5545, %5286
  %5549 = fmul fast float %5546, %5426
  %5550 = fmul fast float %5547, %5426
  %5551 = fmul fast float %5548, %5426
  %5552 = fadd fast float %5549, %5284
  %5553 = fadd fast float %5550, %5285
  %5554 = fadd fast float %5551, %5286
  %5555 = call float @dx.op.binary.f32(i32 36, float %5288, float %5474)  ; FMin(a,b)
  %5556 = fsub fast float %5555, %5288
  %5557 = fmul fast float %5556, %5426
  %5558 = fadd fast float %5557, %5288
  %5559 = fsub fast float %5487, %5287
  %5560 = fmul fast float %5559, %5426
  %5561 = fadd fast float %5560, %5287
  br label %5562

; <label>:5562                                    ; preds = %5424, %5386, %5277, %4993
  %5563 = phi float [ %5526, %5424 ], [ %5278, %5386 ], [ %5278, %5277 ], [ %4602, %4993 ]
  %5564 = phi float [ %5527, %5424 ], [ %5279, %5386 ], [ %5279, %5277 ], [ %4603, %4993 ]
  %5565 = phi float [ %5528, %5424 ], [ %5280, %5386 ], [ %5280, %5277 ], [ %4604, %4993 ]
  %5566 = phi float [ %5535, %5424 ], [ %5281, %5386 ], [ %5281, %5277 ], [ %4584, %4993 ]
  %5567 = phi float [ %5536, %5424 ], [ %5282, %5386 ], [ %5282, %5277 ], [ %4585, %4993 ]
  %5568 = phi float [ %5537, %5424 ], [ %5283, %5386 ], [ %5283, %5277 ], [ %4586, %4993 ]
  %5569 = phi float [ %5552, %5424 ], [ %5284, %5386 ], [ %5284, %5277 ], [ %4544, %4993 ]
  %5570 = phi float [ %5553, %5424 ], [ %5285, %5386 ], [ %5285, %5277 ], [ %4545, %4993 ]
  %5571 = phi float [ %5554, %5424 ], [ %5286, %5386 ], [ %5286, %5277 ], [ %4546, %4993 ]
  %5572 = phi float [ %5561, %5424 ], [ %5287, %5386 ], [ %5287, %5277 ], [ %4587, %4993 ]
  %5573 = phi float [ %5558, %5424 ], [ %5288, %5386 ], [ %5288, %5277 ], [ %4559, %4993 ]
  %5574 = fcmp fast une float %4997, 0.000000e+00
  %5575 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = call float @dx.op.unary.f32(i32 25, float %5575)  ; Rsqrt(value)
  br i1 %5574, label %5584, label %5577

; <label>:5577                                    ; preds = %5562
  %5578 = fmul fast float %5576, %193
  %5579 = fmul fast float %5576, %194
  %5580 = fmul fast float %5576, %195
  %5581 = fsub fast float -0.000000e+00, %5578
  %5582 = fsub fast float -0.000000e+00, %5579
  %5583 = fsub fast float -0.000000e+00, %5580
  br label %5751

; <label>:5584                                    ; preds = %5562
  %5585 = fmul fast float %193, %5576
  %5586 = fsub fast float -0.000000e+00, %5585
  %5587 = fmul fast float %194, %5576
  %5588 = fsub fast float -0.000000e+00, %5587
  %5589 = fmul fast float %195, %5576
  %5590 = fsub fast float -0.000000e+00, %5589
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5588, float %5590, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = fmul fast float %4997, 2.500000e+00
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %4997, 0x4013FFFFE0000000
  %5595 = fadd fast float %5594, 0xBFFFFFFFE0000000
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fmul fast float %4997, 0x4004000020000000
  %5598 = fadd fast float %5597, 0xBFF8000040000000
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fmul fast float %4566, 1.000000e+01
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5601, 2.000000e+00
  %5603 = fsub fast float 3.000000e+00, %5602
  %5604 = fmul fast float %5601, %5601
  %5605 = fmul fast float %5604, %5603
  %5606 = fsub fast float 1.000000e+00, %5605
  %5607 = fsub fast float 0x3FE3333340000000, %5572
  %5608 = fmul fast float %5607, 0x400AAAAAA0000000
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fmul fast float %5606, %5609
  %5611 = fmul fast float %5563, 0x3FEA2B8620000000
  %5612 = fmul fast float %5564, 0x3FEA2B8620000000
  %5613 = fmul fast float %5565, 0x3FEA2B8620000000
  %5614 = fadd fast float %5611, 0x3FC81DFBA0000000
  %5615 = fmul fast float %5614, %5563
  %5616 = fadd fast float %5615, 0x3F910E6020000000
  %5617 = fadd fast float %5612, 0x3FC81DFBA0000000
  %5618 = fmul fast float %5617, %5564
  %5619 = fadd fast float %5618, 0x3F910E6020000000
  %5620 = fadd fast float %5613, 0x3FC81DFBA0000000
  %5621 = fmul fast float %5620, %5565
  %5622 = fadd fast float %5621, 0x3F910E6020000000
  %5623 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5624 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5625 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5626 = fsub fast float %5623, %5563
  %5627 = fsub fast float %5624, %5564
  %5628 = fsub fast float %5625, %5565
  %5629 = fmul fast float %5626, %5593
  %5630 = fmul fast float %5629, %5610
  %5631 = fmul fast float %5627, %5593
  %5632 = fmul fast float %5631, %5610
  %5633 = fmul fast float %5628, %5593
  %5634 = fmul fast float %5633, %5610
  %5635 = fadd fast float %5630, %5563
  %5636 = fadd fast float %5632, %5564
  %5637 = fadd fast float %5634, %5565
  %5638 = fmul fast float %5573, %5573
  %5639 = fmul fast float %5638, %5638
  %5640 = fadd fast float %5596, 1.000000e+00
  %5641 = fsub fast float %5640, %5610
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fsub fast float 1.000000e+00, %5639
  %5646 = call float @dx.op.binary.f32(i32 36, float %5642, float %5645)  ; FMin(a,b)
  %5647 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5646, float %5647)  ; FMax(a,b)
  %5649 = fadd fast float %5644, 0xBFE4CCCCC0000000
  %5650 = fmul fast float %5649, 0x4006DB6DA0000000
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5651, 2.000000e+00
  %5653 = fsub fast float 3.000000e+00, %5652
  %5654 = bitcast float %5566 to i32
  %5655 = ashr i32 %5654, 1
  %5656 = add nsw i32 %5655, 532487669
  %5657 = bitcast i32 %5656 to float
  %5658 = fsub fast float 1.000000e+00, %5657
  %5659 = bitcast float %5658 to i32
  %5660 = sub nsw i32 2129859010, %5659
  %5661 = bitcast i32 %5660 to float
  %5662 = fmul fast float %5661, 2.000000e+00
  %5663 = bitcast float %5567 to i32
  %5664 = ashr i32 %5663, 1
  %5665 = add nsw i32 %5664, 532487669
  %5666 = bitcast i32 %5665 to float
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = fmul fast float %5670, 2.000000e+00
  %5672 = bitcast float %5568 to i32
  %5673 = ashr i32 %5672, 1
  %5674 = add nsw i32 %5673, 532487669
  %5675 = bitcast i32 %5674 to float
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = bitcast float %5676 to i32
  %5678 = sub nsw i32 2129859010, %5677
  %5679 = bitcast i32 %5678 to float
  %5680 = fmul fast float %5679, 2.000000e+00
  %5681 = fsub fast float 0x4002A9FBE0000000, %5662
  %5682 = fadd fast float %5662, 0x3FD54FDF00000000
  %5683 = bitcast float %5682 to i32
  %5684 = sub nsw i32 2129859010, %5683
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, %5681
  %5687 = fmul fast float %5686, %5686
  %5688 = fsub fast float 0x4002A9FBE0000000, %5671
  %5689 = fadd fast float %5671, 0x3FD54FDF00000000
  %5690 = bitcast float %5689 to i32
  %5691 = sub nsw i32 2129859010, %5690
  %5692 = bitcast i32 %5691 to float
  %5693 = fmul fast float %5692, %5688
  %5694 = fmul fast float %5693, %5693
  %5695 = fsub fast float 0x4002A9FBE0000000, %5680
  %5696 = fadd fast float %5680, 0x3FD54FDF00000000
  %5697 = bitcast float %5696 to i32
  %5698 = sub nsw i32 2129859010, %5697
  %5699 = bitcast i32 %5698 to float
  %5700 = fmul fast float %5699, %5695
  %5701 = fmul fast float %5700, %5700
  %5702 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5687)  ; FMax(a,b)
  %5703 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5694)  ; FMax(a,b)
  %5704 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5701)  ; FMax(a,b)
  %5705 = fsub fast float 1.000000e+00, %5591
  %5706 = fadd fast float %5705, %5606
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = fsub fast float 1.000000e+00, %4978
  %5709 = fmul fast float %5648, %5708
  %5710 = fmul fast float %5651, %5651
  %5711 = fmul fast float %5710, %5709
  %5712 = fmul fast float %5711, %5653
  %5713 = fmul fast float %5708, 0xBFE99999A0000000
  %5714 = fmul fast float %5713, %5593
  %5715 = fmul fast float %5714, %5610
  %5716 = fadd fast float %5715, 1.000000e+00
  %5717 = fadd fast float %5572, -1.000000e+00
  %5718 = fmul fast float %5716, %5717
  %5719 = fadd fast float %5718, 1.000000e+00
  %5720 = fsub fast float %5702, %5566
  %5721 = fsub fast float %5703, %5567
  %5722 = fsub fast float %5704, %5568
  %5723 = fmul fast float %5712, %5720
  %5724 = fmul fast float %5712, %5721
  %5725 = fmul fast float %5712, %5722
  %5726 = fadd fast float %5723, %5566
  %5727 = fadd fast float %5724, %5567
  %5728 = fadd fast float %5725, %5568
  %5729 = fsub fast float %113, %5569
  %5730 = fsub fast float %114, %5570
  %5731 = fsub fast float %115, %5571
  %5732 = fmul fast float %5712, %5729
  %5733 = fmul fast float %5712, %5730
  %5734 = fmul fast float %5712, %5731
  %5735 = fadd fast float %5732, %5569
  %5736 = fadd fast float %5733, %5570
  %5737 = fadd fast float %5734, %5571
  %5738 = fmul fast float %5712, %5707
  %5739 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5738, %5740
  %5742 = fadd fast float %5741, %5739
  %5743 = fsub fast float 1.000000e+00, %5573
  %5744 = fmul fast float %5712, %5743
  %5745 = fadd fast float %5744, %5573
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %5737, float %5735, float %5736, float %5737)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = call float @dx.op.unary.f32(i32 25, float %5746)  ; Rsqrt(value)
  %5748 = fmul fast float %5735, %5747
  %5749 = fmul fast float %5736, %5747
  %5750 = fmul fast float %5737, %5747
  br label %5751

; <label>:5751                                    ; preds = %5584, %5577
  %5752 = phi float [ %5583, %5577 ], [ %5590, %5584 ]
  %5753 = phi float [ %5582, %5577 ], [ %5588, %5584 ]
  %5754 = phi float [ %5581, %5577 ], [ %5586, %5584 ]
  %5755 = phi float [ %5580, %5577 ], [ %5589, %5584 ]
  %5756 = phi float [ %5579, %5577 ], [ %5587, %5584 ]
  %5757 = phi float [ %5578, %5577 ], [ %5585, %5584 ]
  %5758 = phi float [ %5563, %5577 ], [ %5635, %5584 ]
  %5759 = phi float [ %5564, %5577 ], [ %5636, %5584 ]
  %5760 = phi float [ %5565, %5577 ], [ %5637, %5584 ]
  %5761 = phi float [ %5566, %5577 ], [ %5726, %5584 ]
  %5762 = phi float [ %5567, %5577 ], [ %5727, %5584 ]
  %5763 = phi float [ %5568, %5577 ], [ %5728, %5584 ]
  %5764 = phi float [ %5569, %5577 ], [ %5748, %5584 ]
  %5765 = phi float [ %5570, %5577 ], [ %5749, %5584 ]
  %5766 = phi float [ %5571, %5577 ], [ %5750, %5584 ]
  %5767 = phi float [ %5572, %5577 ], [ %5742, %5584 ]
  %5768 = phi float [ %5573, %5577 ], [ %5745, %5584 ]
  %5769 = fsub fast float -0.000000e+00, %195
  %5770 = select i1 %265, float 0.000000e+00, float %5763
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5754, float %5753, float %5752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5756, float %5755, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = fmul fast float %5773, 2.000000e+00
  %5775 = fmul fast float %5774, %5764
  %5776 = fmul fast float %5774, %5765
  %5777 = fmul fast float %5774, %5766
  %5778 = fsub fast float %5757, %5775
  %5779 = fsub fast float %5756, %5776
  %5780 = fsub fast float %5755, %5777
  %5781 = call float @dx.op.binary.f32(i32 36, float %5768, float 1.000000e+00)  ; FMin(a,b)
  %5782 = fsub fast float 1.000000e+00, %5768
  %5783 = bitcast float %5782 to i32
  %5784 = sub nsw i32 2129859010, %5783
  %5785 = bitcast i32 %5784 to float
  %5786 = fsub fast float 1.000000e+00, %77
  %5787 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = call float @dx.op.binary.f32(i32 35, float %5787, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5789 = fdiv fast float %5786, %5788
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fmul fast float %5791, 5.000000e-01
  %5793 = fadd fast float %5792, 5.000000e-01
  %5794 = fmul fast float %5793, %77
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fmul fast float %5796, %5789
  %5798 = fadd fast float %5794, %5797
  %5799 = fsub fast float 5.000000e-01, %5792
  %5800 = fmul fast float %5799, %5758
  %5801 = fmul fast float %5799, %5759
  %5802 = fmul fast float %5799, %5760
  %5803 = fadd fast float %5798, %5800
  %5804 = fadd fast float %5798, %5801
  %5805 = fadd fast float %5798, %5802
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = fmul fast float %5807, 5.000000e-01
  %5809 = fadd fast float %5808, 5.000000e-01
  %5810 = fmul fast float %5809, %77
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = fmul fast float %5812, %5789
  %5814 = fadd fast float %5810, %5813
  %5815 = fsub fast float 5.000000e-01, %5808
  %5816 = fmul fast float %5815, %5758
  %5817 = fmul fast float %5815, %5759
  %5818 = fmul fast float %5815, %5760
  %5819 = fadd fast float %5814, %5816
  %5820 = fadd fast float %5814, %5817
  %5821 = fadd fast float %5814, %5818
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = call float @dx.op.binary.f32(i32 36, float %5758, float %5823)  ; FMin(a,b)
  %5825 = fsub fast float 1.000000e+00, %5781
  %5826 = fmul fast float %5824, %5825
  %5827 = fsub fast float 1.000000e+00, %5826
  %5828 = bitcast float %5827 to i32
  %5829 = sub nsw i32 2129859010, %5828
  %5830 = bitcast i32 %5829 to float
  %5831 = call float @dx.op.binary.f32(i32 36, float %5759, float %5823)  ; FMin(a,b)
  %5832 = fmul fast float %5831, %5825
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = bitcast float %5833 to i32
  %5835 = sub nsw i32 2129859010, %5834
  %5836 = bitcast i32 %5835 to float
  %5837 = call float @dx.op.binary.f32(i32 36, float %5760, float %5823)  ; FMin(a,b)
  %5838 = fmul fast float %5837, %5825
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = bitcast float %5839 to i32
  %5841 = sub nsw i32 2129859010, %5840
  %5842 = bitcast i32 %5841 to float
  %5843 = fmul fast float %5781, %78
  %5844 = fmul fast float %5843, %5803
  %5845 = fmul fast float %5844, %5830
  %5846 = fmul fast float %5781, %79
  %5847 = fmul fast float %5846, %5804
  %5848 = fmul fast float %5847, %5836
  %5849 = fmul fast float %5781, %80
  %5850 = fmul fast float %5849, %5805
  %5851 = fmul fast float %5850, %5842
  %5852 = call float @dx.op.binary.f32(i32 36, float %5761, float %5823)  ; FMin(a,b)
  %5853 = fmul fast float %5852, %5825
  %5854 = fsub fast float 1.000000e+00, %5853
  %5855 = bitcast float %5854 to i32
  %5856 = sub nsw i32 2129859010, %5855
  %5857 = bitcast i32 %5856 to float
  %5858 = call float @dx.op.binary.f32(i32 36, float %5762, float %5823)  ; FMin(a,b)
  %5859 = fmul fast float %5858, %5825
  %5860 = fsub fast float 1.000000e+00, %5859
  %5861 = bitcast float %5860 to i32
  %5862 = sub nsw i32 2129859010, %5861
  %5863 = bitcast i32 %5862 to float
  %5864 = call float @dx.op.binary.f32(i32 36, float %5770, float %5823)  ; FMin(a,b)
  %5865 = fmul fast float %5864, %5825
  %5866 = fsub fast float 1.000000e+00, %5865
  %5867 = bitcast float %5866 to i32
  %5868 = sub nsw i32 2129859010, %5867
  %5869 = bitcast i32 %5868 to float
  %5870 = fmul fast float %5843, %5819
  %5871 = fmul fast float %5870, %5857
  %5872 = fmul fast float %5846, %5820
  %5873 = fmul fast float %5872, %5863
  %5874 = fmul fast float %5849, %5821
  %5875 = fmul fast float %5874, %5869
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5848, float %5851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = select i1 %265, float 0.000000e+00, float %5845
  %5878 = select i1 %265, float %5876, float %5848
  %5879 = select i1 %265, float 0.000000e+00, float %5851
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5871, float %5873, float %5875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = select i1 %265, float 0.000000e+00, float %5871
  %5882 = select i1 %265, float %5880, float %5873
  %5883 = select i1 %265, float 0.000000e+00, float %5875
  %5884 = fmul fast float %3915, %3915
  %5885 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5886 = fmul fast float %5772, 9.843750e-01
  %5887 = fmul fast float %5767, 9.843750e-01
  %5888 = fadd fast float %5886, 7.812500e-03
  %5889 = fadd fast float %5887, 7.812500e-03
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5888, float %5889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.ResRet.f32 %5890, 3
  %5895 = fsub fast float 1.000000e+00, %5885
  %5896 = fsub fast float %5893, %5891
  %5897 = fsub fast float %5894, %5892
  %5898 = fmul fast float %5896, %5895
  %5899 = fmul fast float %5897, %5895
  %5900 = fadd fast float %5898, %5891
  %5901 = fadd fast float %5899, %5892
  %5902 = fmul fast float %5900, %5761
  %5903 = fmul fast float %5900, %5762
  %5904 = fmul fast float %5900, %5770
  %5905 = fadd fast float %5902, %5901
  %5906 = fadd fast float %5903, %5901
  %5907 = fadd fast float %5904, %5901
  %5908 = fcmp fast ogt float %4560, 0.000000e+00
  br i1 %5908, label %5909, label %5935

; <label>:5909                                    ; preds = %5751
  %5910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4560, float %5772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5911 = extractvalue %dx.types.ResRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.ResRet.f32 %5910, 1
  %5913 = extractvalue %dx.types.ResRet.f32 %5910, 2
  %5914 = fadd fast float %5911, -5.000000e-01
  %5915 = fadd fast float %5912, -5.000000e-01
  %5916 = fadd fast float %5913, -5.000000e-01
  %5917 = fsub fast float 1.000000e+00, %5761
  %5918 = fsub fast float 1.000000e+00, %5762
  %5919 = fsub fast float 1.000000e+00, %5770
  %5920 = fmul fast float %5761, 4.000000e+00
  %5921 = fmul fast float %5920, %5917
  %5922 = fmul fast float %5921, %5914
  %5923 = fmul fast float %5762, 4.000000e+00
  %5924 = fmul fast float %5923, %5918
  %5925 = fmul fast float %5924, %5915
  %5926 = fmul fast float %5770, 4.000000e+00
  %5927 = fmul fast float %5926, %5919
  %5928 = fmul fast float %5927, %5916
  %5929 = fadd fast float %5922, %5905
  %5930 = fadd fast float %5925, %5906
  %5931 = fadd fast float %5928, %5907
  %5932 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5934 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  br label %5935

; <label>:5935                                    ; preds = %5909, %5751
  %5936 = phi float [ %5932, %5909 ], [ %5905, %5751 ]
  %5937 = phi float [ %5933, %5909 ], [ %5906, %5751 ]
  %5938 = phi float [ %5934, %5909 ], [ %5907, %5751 ]
  %5939 = call float @dx.op.binary.f32(i32 35, float %5937, float %5938)  ; FMax(a,b)
  %5940 = call float @dx.op.binary.f32(i32 35, float %5936, float %5939)  ; FMax(a,b)
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = fmul fast float %5941, %5877
  %5943 = fmul fast float %5941, %5878
  %5944 = fmul fast float %5941, %5879
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = fcmp fast ogt float %5945, 0x3E7FF19E20000000
  %5947 = fdiv fast float 1.000000e+00, %5945
  %5948 = select i1 %5946, float %5947, float 0.000000e+00
  %5949 = fmul fast float %5948, %5758
  %5950 = fmul fast float %5948, %5759
  %5951 = fmul fast float %5948, %5760
  %5952 = fadd fast float %5949, -1.000000e+00
  %5953 = fadd fast float %5950, -1.000000e+00
  %5954 = fadd fast float %5951, -1.000000e+00
  %5955 = fmul fast float %5952, 5.000000e-01
  %5956 = fmul fast float %5953, 5.000000e-01
  %5957 = fmul fast float %5954, 5.000000e-01
  %5958 = fadd fast float %5955, 1.000000e+00
  %5959 = fadd fast float %5956, 1.000000e+00
  %5960 = fadd fast float %5957, 1.000000e+00
  %5961 = call float @dx.op.binary.f32(i32 35, float %5772, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5962 = fdiv fast float %3915, %5961
  %5963 = fcmp fast olt float %4588, 1.270000e+02
  %5964 = fcmp fast olt float %4589, 1.270000e+02
  %5965 = fcmp fast olt float %4590, 1.270000e+02
  %5966 = fmul fast float %4588, 0xBFF7154760000000
  %5967 = fmul fast float %5966, %5962
  %5968 = fmul fast float %4589, 0xBFF7154760000000
  %5969 = fmul fast float %5968, %5962
  %5970 = fmul fast float %4590, 0xBFF7154760000000
  %5971 = fmul fast float %5970, %5962
  %5972 = call float @dx.op.unary.f32(i32 21, float %5967)  ; Exp(value)
  %5973 = call float @dx.op.unary.f32(i32 21, float %5969)  ; Exp(value)
  %5974 = call float @dx.op.unary.f32(i32 21, float %5971)  ; Exp(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5976 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5977 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5978 = select i1 %5963, float %5975, float 0.000000e+00
  %5979 = select i1 %5964, float %5976, float 0.000000e+00
  %5980 = select i1 %5965, float %5977, float 0.000000e+00
  %5981 = fmul fast float %5978, %5941
  %5982 = fmul fast float %5979, %5941
  %5983 = fmul fast float %5980, %5941
  %5984 = fadd fast float %5981, -1.000000e+00
  %5985 = fadd fast float %5982, -1.000000e+00
  %5986 = fadd fast float %5983, -1.000000e+00
  %5987 = fmul fast float %5936, %5881
  %5988 = fmul fast float %5937, %5882
  %5989 = fmul fast float %5938, %5883
  %5990 = fsub fast float 1.000000e+00, %5772
  %5991 = bitcast float %5990 to i32
  %5992 = sitofp i32 %5991 to float
  %5993 = fmul fast float %5992, 5.000000e+00
  %5994 = fadd fast float %5993, 0xC1EFBF8940000000
  %5995 = fptosi float %5994 to i32
  %5996 = bitcast i32 %5995 to float
  %5997 = fmul fast float %5996, %4561
  %5998 = fmul fast float %5877, %5997
  %5999 = fmul fast float %5998, %5941
  %6000 = fmul fast float %5999, %5958
  %6001 = fmul fast float %5878, %5997
  %6002 = fmul fast float %6001, %5941
  %6003 = fmul fast float %6002, %5959
  %6004 = fmul fast float %5879, %5997
  %6005 = fmul fast float %6004, %5941
  %6006 = fmul fast float %6005, %5960
  %6007 = fmul fast float %5942, %4557
  %6008 = fmul fast float %5943, %4557
  %6009 = fmul fast float %5944, %4557
  %6010 = fadd fast float %5987, %4550
  %6011 = fadd fast float %6010, %6000
  %6012 = fmul fast float %6011, %4557
  %6013 = fadd fast float %5988, %4551
  %6014 = fadd fast float %6013, %6003
  %6015 = fmul fast float %6014, %4557
  %6016 = fadd fast float %5989, %4552
  %6017 = fadd fast float %6016, %6006
  %6018 = fmul fast float %6017, %4557
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 3
  %6021 = fcmp fast oeq float %6020, 0.000000e+00
  br i1 %6021, label %7118, label %6022

; <label>:6022                                    ; preds = %5935
  %6023 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6025 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.CBufRet.f32 %6030, 1
  %6033 = call float @dx.op.dot3.f32(i32 55, float %6027, float %6028, float %6029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = select i1 %265, float %6031, float %6027
  %6035 = select i1 %265, float %6033, float %6028
  %6036 = select i1 %265, float %6032, float %6029
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6039 = fmul fast float %6038, %113
  %6040 = fmul fast float %6038, %114
  %6041 = fmul fast float %6038, %115
  %6042 = fadd fast float %6039, %193
  %6043 = fadd fast float %6040, %194
  %6044 = fadd fast float %6041, %195
  %6045 = fcmp fast olt float %6020, 0.000000e+00
  br i1 %6045, label %6685, label %6046

; <label>:6046                                    ; preds = %6022
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6051 = extractvalue %dx.types.CBufRet.f32 %6047, 3
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.CBufRet.f32 %6052, 1
  %6055 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6056 = extractvalue %dx.types.CBufRet.f32 %6052, 3
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6061 = extractvalue %dx.types.CBufRet.f32 %6057, 3
  %6062 = fmul fast float %6048, %6042
  %6063 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6049, float %6062)  ; FMad(a,b,c)
  %6064 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6050, float %6063)  ; FMad(a,b,c)
  %6065 = fadd fast float %6064, %6051
  %6066 = fmul fast float %6053, %6042
  %6067 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6054, float %6066)  ; FMad(a,b,c)
  %6068 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6055, float %6067)  ; FMad(a,b,c)
  %6069 = fadd fast float %6068, %6056
  %6070 = fmul fast float %6058, %6042
  %6071 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6059, float %6070)  ; FMad(a,b,c)
  %6072 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6060, float %6071)  ; FMad(a,b,c)
  %6073 = fadd fast float %6072, %6061
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = fcmp fast une float %6075, 0.000000e+00
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6081 = fmul fast float %6080, %6065
  %6082 = fmul fast float %6080, %6069
  %6083 = fadd fast float %6081, %6078
  %6084 = fadd fast float %6082, %6079
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.CBufRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6089 = fmul fast float %6088, %6065
  %6090 = fmul fast float %6088, %6069
  %6091 = fadd fast float %6089, %6086
  %6092 = fadd fast float %6090, %6087
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 1
  %6095 = fsub fast float %6094, %6073
  %6096 = extractvalue %dx.types.CBufRet.f32 %6093, 2
  %6097 = fmul fast float %6095, %6096
  %6098 = fsub fast float 1.000000e+00, %6097
  %6099 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  br i1 %6076, label %6160, label %6100

; <label>:6100                                    ; preds = %6046
  %6101 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6104 = fadd fast float %6103, %6101
  %6105 = fcmp fast ogt float %6104, 0.000000e+00
  br i1 %6105, label %6106, label %6130

; <label>:6106                                    ; preds = %6100
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = fsub fast float %6091, %6108
  %6111 = fsub fast float %6092, %6109
  %6112 = fcmp fast olt float %6110, 0.000000e+00
  %6113 = fcmp fast olt float %6111, 0.000000e+00
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6119 = select i1 %6112, float %6115, float %6117
  %6120 = select i1 %6113, float %6116, float %6118
  %6121 = fmul fast float %6119, %6110
  %6122 = fmul fast float %6120, %6111
  %6123 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6124 = call float @dx.op.unary.f32(i32 6, float %6122)  ; FAbs(value)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6126 = call float @dx.op.binary.f32(i32 35, float %6123, float %6124)  ; FMax(a,b)
  %6127 = fsub fast float %6125, %6126
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = fmul fast float %6128, %6099
  br label %6130

; <label>:6130                                    ; preds = %6106, %6100
  %6131 = phi float [ %6129, %6106 ], [ 0.000000e+00, %6100 ]
  %6132 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6133 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6134 = fadd fast float %6133, %6132
  %6135 = fcmp fast ogt float %6134, 0.000000e+00
  br i1 %6135, label %6136, label %6160

; <label>:6136                                    ; preds = %6130
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = fsub fast float %6083, %6138
  %6141 = fsub fast float %6084, %6139
  %6142 = fcmp fast olt float %6140, 0.000000e+00
  %6143 = fcmp fast olt float %6141, 0.000000e+00
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6148 = extractvalue %dx.types.CBufRet.f32 %6144, 3
  %6149 = select i1 %6142, float %6145, float %6147
  %6150 = select i1 %6143, float %6146, float %6148
  %6151 = fmul fast float %6149, %6140
  %6152 = fmul fast float %6150, %6141
  %6153 = call float @dx.op.unary.f32(i32 6, float %6151)  ; FAbs(value)
  %6154 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6156 = call float @dx.op.binary.f32(i32 35, float %6153, float %6154)  ; FMax(a,b)
  %6157 = fsub fast float %6155, %6156
  %6158 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6159 = fmul fast float %6158, %6099
  br label %6160

; <label>:6160                                    ; preds = %6136, %6130, %6046
  %6161 = phi float [ 0.000000e+00, %6046 ], [ %6159, %6136 ], [ 0.000000e+00, %6130 ]
  %6162 = phi float [ 0.000000e+00, %6046 ], [ %6131, %6136 ], [ %6131, %6130 ]
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = fsub fast float %6065, %6167
  %6170 = fsub fast float %6069, %6168
  %6171 = fcmp fast olt float %6169, 0.000000e+00
  %6172 = fcmp fast olt float %6170, 0.000000e+00
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6176 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6177 = extractvalue %dx.types.CBufRet.f32 %6173, 3
  %6178 = select i1 %6171, float %6174, float %6176
  %6179 = select i1 %6172, float %6175, float %6177
  %6180 = fmul fast float %6178, %6169
  %6181 = fmul fast float %6179, %6170
  %6182 = call float @dx.op.unary.f32(i32 6, float %6180)  ; FAbs(value)
  %6183 = call float @dx.op.unary.f32(i32 6, float %6181)  ; FAbs(value)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6185 = call float @dx.op.binary.f32(i32 35, float %6182, float %6183)  ; FMax(a,b)
  %6186 = fsub fast float %6184, %6185
  %6187 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6188 = call float @dx.op.binary.f32(i32 36, float %6187, float %6165)  ; FMin(a,b)
  %6189 = fmul fast float %6188, %6099
  %6190 = fsub fast float %6161, %6189
  %6191 = fsub fast float %6162, %6161
  %6192 = fsub fast float %6191, %6189
  %6193 = call float @dx.op.binary.f32(i32 35, float %6161, float %6162)  ; FMax(a,b)
  %6194 = call float @dx.op.binary.f32(i32 35, float %6189, float %6193)  ; FMax(a,b)
  %6195 = fcmp fast olt float %6194, 1.000000e+00
  br i1 %6195, label %6196, label %6594, !dx.controlflow.hints !98

; <label>:6196                                    ; preds = %6160
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = fcmp fast une float %6198, 0.000000e+00
  br i1 %6199, label %6200, label %6594, !dx.controlflow.hints !99

; <label>:6200                                    ; preds = %6196
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.CBufRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6210 = extractvalue %dx.types.CBufRet.f32 %6206, 3
  %6211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.CBufRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6211, 2
  %6215 = extractvalue %dx.types.CBufRet.f32 %6211, 3
  %6216 = fmul fast float %6202, %6042
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6203, float %6216)  ; FMad(a,b,c)
  %6218 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6204, float %6217)  ; FMad(a,b,c)
  %6219 = fadd fast float %6218, %6205
  %6220 = fmul fast float %6207, %6042
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6208, float %6220)  ; FMad(a,b,c)
  %6222 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6209, float %6221)  ; FMad(a,b,c)
  %6223 = fadd fast float %6222, %6210
  %6224 = fmul fast float %6212, %6042
  %6225 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6213, float %6224)  ; FMad(a,b,c)
  %6226 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6214, float %6225)  ; FMad(a,b,c)
  %6227 = fadd fast float %6226, %6215
  %6228 = fcmp fast oge float %6219, 1.000000e+00
  %6229 = fcmp fast oge float %6223, 1.000000e+00
  %6230 = or i1 %6228, %6229
  %6231 = fcmp fast olt float %6219, 0.000000e+00
  %6232 = fcmp fast olt float %6223, 0.000000e+00
  %6233 = or i1 %6231, %6232
  %6234 = or i1 %6230, %6233
  br i1 %6234, label %6594, label %6235, !dx.controlflow.hints !100

; <label>:6235                                    ; preds = %6200
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.i32 %6240, 2
  %6242 = uitofp i32 %6241 to float
  %6243 = extractvalue %dx.types.CBufRet.i32 %6240, 3
  %6244 = uitofp i32 %6243 to float
  %6245 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6246 = fmul fast float %6245, 2.000000e+00
  %6247 = fsub fast float %6219, %6237
  %6248 = fsub fast float %6223, %6238
  %6249 = fmul fast float %6246, %6247
  %6250 = fmul fast float %6246, %6248
  %6251 = fdiv fast float 1.000000e+00, %6025
  %6252 = fmul fast float %6250, %6251
  %6253 = call float @dx.op.unary.f32(i32 6, float %6252)  ; FAbs(value)
  %6254 = fmul fast float %6239, %6044
  %6255 = fmul fast float %6254, %6246
  %6256 = call float @dx.op.unary.f32(i32 6, float %6255)  ; FAbs(value)
  %6257 = call float @dx.op.unary.f32(i32 6, float %6249)  ; FAbs(value)
  %6258 = call float @dx.op.binary.f32(i32 35, float %6256, float %6253)  ; FMax(a,b)
  %6259 = call float @dx.op.binary.f32(i32 35, float %6257, float %6258)  ; FMax(a,b)
  %6260 = fmul fast float %6259, 2.000000e+00
  %6261 = call float @dx.op.unary.f32(i32 23, float %6260)  ; Log(value)
  %6262 = call float @dx.op.binary.f32(i32 35, float %6261, float %6242)  ; FMax(a,b)
  %6263 = call float @dx.op.unary.f32(i32 22, float %6262)  ; Frc(value)
  %6264 = fadd fast float %6263, 0xBFEA666660000000
  %6265 = fmul fast float %6264, 8.000000e+00
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = call float @dx.op.unary.f32(i32 27, float %6262)  ; Round_ni(value)
  %6268 = fadd fast float %6267, %6266
  %6269 = call float @dx.op.binary.f32(i32 36, float %6268, float %6244)  ; FMin(a,b)
  %6270 = call float @dx.op.unary.f32(i32 27, float %6269)  ; Round_ni(value)
  %6271 = fsub fast float -0.000000e+00, %6270
  %6272 = call float @dx.op.unary.f32(i32 21, float %6271)  ; Exp(value)
  %6273 = fmul fast float %6272, %6246
  %6274 = fmul fast float %6273, %6219
  %6275 = fmul fast float %6273, %6223
  %6276 = fmul fast float %6274, 2.500000e-01
  %6277 = fmul fast float %6275, 2.500000e-01
  %6278 = fadd fast float %6276, 5.000000e-01
  %6279 = fadd fast float %6277, 5.000000e-01
  %6280 = fsub fast float %6244, %6242
  %6281 = fptoui float %6280 to i32
  %6282 = add i32 %6281, 320
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6282)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6286 = fcmp fast une float %6269, %6244
  %6287 = fsub fast float %6219, %6284
  %6288 = fsub fast float %6223, %6285
  %6289 = call float @dx.op.unary.f32(i32 6, float %6287)  ; FAbs(value)
  %6290 = call float @dx.op.unary.f32(i32 6, float %6288)  ; FAbs(value)
  %6291 = fmul fast float %6289, %6273
  %6292 = fmul fast float %6290, %6273
  %6293 = fcmp fast olt float %6291, 1.000000e+00
  %6294 = fcmp fast olt float %6292, 1.000000e+00
  %6295 = and i1 %6293, %6294
  %6296 = or i1 %6286, %6295
  br i1 %6296, label %6297, label %6594, !dx.controlflow.hints !101

; <label>:6297                                    ; preds = %6235
  %6298 = fmul fast float %6275, 5.000000e-01
  %6299 = fmul fast float %6274, 5.000000e-01
  %6300 = fadd fast float %6298, 5.000000e-01
  %6301 = fadd fast float %6299, 5.000000e-01
  %6302 = sitofp i32 %6241 to float
  %6303 = fsub fast float %6269, %6302
  %6304 = call float @dx.op.unary.f32(i32 27, float %6303)  ; Round_ni(value)
  %6305 = call float @dx.op.unary.f32(i32 22, float %6269)  ; Frc(value)
  %6306 = call float @dx.op.unary.f32(i32 22, float %6301)  ; Frc(value)
  %6307 = call float @dx.op.unary.f32(i32 22, float %6300)  ; Frc(value)
  %6308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6306, float %6307, float %6304, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6309 = extractvalue %dx.types.ResRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.ResRet.f32 %6308, 1
  %6311 = extractvalue %dx.types.ResRet.f32 %6308, 2
  %6312 = extractvalue %dx.types.ResRet.f32 %6308, 3
  %6313 = fcmp fast ogt float %6305, 0.000000e+00
  br i1 %6313, label %6314, label %6335, !dx.controlflow.hints !102

; <label>:6314                                    ; preds = %6297
  %6315 = fadd fast float %6304, 1.000000e+00
  %6316 = call float @dx.op.unary.f32(i32 22, float %6278)  ; Frc(value)
  %6317 = call float @dx.op.unary.f32(i32 22, float %6279)  ; Frc(value)
  %6318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6316, float %6317, float %6315, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6319 = extractvalue %dx.types.ResRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.ResRet.f32 %6318, 1
  %6321 = extractvalue %dx.types.ResRet.f32 %6318, 2
  %6322 = extractvalue %dx.types.ResRet.f32 %6318, 3
  %6323 = fsub fast float %6319, %6309
  %6324 = fsub fast float %6320, %6310
  %6325 = fsub fast float %6321, %6311
  %6326 = fsub fast float %6322, %6312
  %6327 = fmul fast float %6323, %6305
  %6328 = fmul fast float %6324, %6305
  %6329 = fmul fast float %6325, %6305
  %6330 = fmul fast float %6326, %6305
  %6331 = fadd fast float %6327, %6309
  %6332 = fadd fast float %6328, %6310
  %6333 = fadd fast float %6329, %6311
  %6334 = fadd fast float %6330, %6312
  br label %6335

; <label>:6335                                    ; preds = %6314, %6297
  %6336 = phi float [ %6331, %6314 ], [ %6309, %6297 ]
  %6337 = phi float [ %6332, %6314 ], [ %6310, %6297 ]
  %6338 = phi float [ %6333, %6314 ], [ %6311, %6297 ]
  %6339 = phi float [ %6334, %6314 ], [ %6312, %6297 ]
  %6340 = fadd fast float %6336, -5.000000e-01
  %6341 = fadd fast float %6338, -5.000000e-01
  %6342 = fmul fast float %6340, 0xBFD5555560000000
  %6343 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6341, float %6342)  ; FMad(a,b,c)
  %6344 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6337, float 0.000000e+00)  ; FMad(a,b,c)
  %6345 = fadd fast float %6344, %6339
  %6346 = fmul fast float %6340, -7.500000e-01
  %6347 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6341, float %6346)  ; FMad(a,b,c)
  %6348 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6337, float 0.000000e+00)  ; FMad(a,b,c)
  %6349 = fadd fast float %6348, %6339
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = extractvalue %dx.types.CBufRet.f32 %6352, 3
  %6357 = fsub fast float %6353, %6343
  %6358 = fsub fast float %6354, %6345
  %6359 = fsub fast float %6355, %6347
  %6360 = fsub fast float %6356, %6349
  %6361 = fmul fast float %6357, %6351
  %6362 = fmul fast float %6358, %6351
  %6363 = fmul fast float %6359, %6351
  %6364 = fmul fast float %6360, %6351
  %6365 = fadd fast float %6361, %6343
  %6366 = fadd fast float %6362, %6345
  %6367 = fadd fast float %6363, %6347
  %6368 = fadd fast float %6364, %6349
  %6369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6370 = extractvalue %dx.types.ResRet.i32 %6369, 0
  %6371 = and i32 %6370, 536870911
  %6372 = uitofp i32 %6371 to float
  %6373 = fmul fast float %6372, %6219
  %6374 = fmul fast float %6372, %6223
  %6375 = fptoui float %6373 to i32
  %6376 = fptoui float %6374 to i32
  %6377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6378 = extractvalue %dx.types.ResRet.i32 %6377, 0
  %6379 = and i32 %6378, 31
  %6380 = lshr i32 %6375, %6379
  %6381 = lshr i32 %6376, %6379
  %6382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6383 = extractvalue %dx.types.ResRet.i32 %6382, 0
  %6384 = and i32 %6383, 31
  %6385 = shl i32 1, %6384
  %6386 = call i32 @dx.op.binary.i32(i32 40, i32 %6385, i32 4)  ; UMin(a,b)
  %6387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6388 = extractvalue %dx.types.ResRet.i32 %6387, 0
  %6389 = extractvalue %dx.types.ResRet.i32 %6387, 1
  %6390 = icmp eq i32 %6386, 0
  br i1 %6390, label %6432, label %6391

; <label>:6391                                    ; preds = %6335
  br label %6392

; <label>:6392                                    ; preds = %6420, %6391
  %6393 = phi i32 [ %6423, %6420 ], [ 0, %6391 ]
  %6394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6395 = extractvalue %dx.types.ResRet.i32 %6394, 0
  %6396 = lshr i32 %6395, 16
  %6397 = and i32 %6396, 31
  %6398 = shl i32 %6381, %6397
  %6399 = add i32 %6398, %6380
  %6400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6401 = extractvalue %dx.types.ResRet.i32 %6400, 0
  %6402 = and i32 %6401, 31
  %6403 = shl i32 %6399, %6402
  %6404 = add i32 %6403, %6393
  %6405 = shl i32 %6404, 2
  %6406 = add i32 %6405, 32
  %6407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6406, i32 undef)  ; BufferLoad(srv,index,wot)
  %6408 = extractvalue %dx.types.ResRet.i32 %6407, 0
  %6409 = icmp slt i32 %6408, 0
  %6410 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6393
  %6411 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6393
  %6412 = bitcast float* %6410 to i32*
  %6413 = bitcast float* %6411 to i32*
  br i1 %6409, label %6414, label %6420

; <label>:6414                                    ; preds = %6392
  %6415 = and i32 %6408, 1073741823
  %6416 = add nuw nsw i32 %6415, 20
  %6417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6416, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.i32 %6417, 0
  %6419 = extractvalue %dx.types.ResRet.i32 %6417, 1
  br label %6420

; <label>:6420                                    ; preds = %6414, %6392
  %6421 = phi i32 [ %6418, %6414 ], [ %6388, %6392 ]
  %6422 = phi i32 [ %6419, %6414 ], [ %6389, %6392 ]
  store i32 %6421, i32* %6412, align 4
  store i32 %6422, i32* %6413, align 4
  %6423 = add nuw i32 %6393, 1
  %6424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.i32 %6424, 2
  %6426 = icmp eq i32 %6425, 0
  %6427 = icmp ugt i32 %6408, -1073741825
  %6428 = and i1 %6427, %6426
  %6429 = icmp ult i32 %6423, %6386
  %6430 = and i1 %6428, %6429
  br i1 %6430, label %6392, label %6431

; <label>:6431                                    ; preds = %6420
  br label %6432

; <label>:6432                                    ; preds = %6431, %6335
  %6433 = phi i32 [ 0, %6335 ], [ %6423, %6431 ]
  %6434 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6435 = fptoui float %6434 to i32
  %6436 = icmp eq i32 %6435, 0
  br i1 %6436, label %6488, label %6437

; <label>:6437                                    ; preds = %6432
  br label %6438

; <label>:6438                                    ; preds = %6483, %6437
  %6439 = phi i32 [ %6484, %6483 ], [ %6433, %6437 ]
  %6440 = phi i32 [ %6485, %6483 ], [ 0, %6437 ]
  %6441 = lshr i32 %6440, 2
  %6442 = and i32 %6440, 3
  %6443 = add nuw nsw i32 %6441, 83
  %6444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6443)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.i32 %6444, 0
  %6446 = extractvalue %dx.types.CBufRet.i32 %6444, 1
  %6447 = extractvalue %dx.types.CBufRet.i32 %6444, 2
  %6448 = extractvalue %dx.types.CBufRet.i32 %6444, 3
  %6449 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6445, i32* %6449, align 4
  %6450 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6446, i32* %6450, align 4
  %6451 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6447, i32* %6451, align 4
  %6452 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6448, i32* %6452, align 4
  %6453 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6442
  %6454 = load i32, i32* %6453, align 4, !tbaa !103, !noalias !107
  %6455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.i32 %6455, 0
  %6457 = lshr i32 %6456, 16
  %6458 = and i32 %6457, 31
  %6459 = shl i32 %6381, %6458
  %6460 = add i32 %6459, %6380
  %6461 = shl i32 %6460, 2
  %6462 = add i32 %6461, %6454
  %6463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6462, i32 undef)  ; BufferLoad(srv,index,wot)
  %6464 = extractvalue %dx.types.ResRet.i32 %6463, 0
  %6465 = icmp eq i32 %6464, 0
  br i1 %6465, label %6483, label %6466

; <label>:6466                                    ; preds = %6438
  %6467 = icmp slt i32 %6464, 0
  %6468 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6439
  %6469 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6439
  %6470 = bitcast float* %6468 to i32*
  %6471 = bitcast float* %6469 to i32*
  br i1 %6467, label %6472, label %6479

; <label>:6472                                    ; preds = %6466
  %6473 = and i32 %6464, 1073741823
  %6474 = add i32 %6454, 20
  %6475 = add i32 %6474, %6473
  %6476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6475, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.i32 %6476, 0
  %6478 = extractvalue %dx.types.ResRet.i32 %6476, 1
  br label %6479

; <label>:6479                                    ; preds = %6472, %6466
  %6480 = phi i32 [ %6477, %6472 ], [ %6388, %6466 ]
  %6481 = phi i32 [ %6478, %6472 ], [ %6389, %6466 ]
  store i32 %6480, i32* %6470, align 4
  store i32 %6481, i32* %6471, align 4
  %6482 = add i32 %6439, 1
  br label %6483

; <label>:6483                                    ; preds = %6479, %6438
  %6484 = phi i32 [ %6439, %6438 ], [ %6482, %6479 ]
  %6485 = add nuw i32 %6440, 1
  %6486 = icmp eq i32 %6485, %6435
  br i1 %6486, label %6487, label %6438

; <label>:6487                                    ; preds = %6483
  br label %6488

; <label>:6488                                    ; preds = %6487, %6432
  %6489 = phi i32 [ %6433, %6432 ], [ %6484, %6487 ]
  %6490 = icmp eq i32 %6489, 1
  %6491 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6492 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6490, label %6493, label %6496

; <label>:6493                                    ; preds = %6488
  %6494 = load float, float* %6491, align 4
  %6495 = load float, float* %6492, align 4
  br label %6523

; <label>:6496                                    ; preds = %6488
  %6497 = load float, float* %6491, align 4
  %6498 = load float, float* %6492, align 4
  %6499 = fdiv fast float 1.000000e+00, %6498
  %6500 = fsub fast float %6497, %6499
  %6501 = icmp ugt i32 %6489, 1
  br i1 %6501, label %6502, label %6518

; <label>:6502                                    ; preds = %6496
  br label %6503

; <label>:6503                                    ; preds = %6503, %6502
  %6504 = phi float [ %6513, %6503 ], [ %6500, %6502 ]
  %6505 = phi float [ %6514, %6503 ], [ %6497, %6502 ]
  %6506 = phi i32 [ %6515, %6503 ], [ 1, %6502 ]
  %6507 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6506
  %6508 = load float, float* %6507, align 4
  %6509 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6506
  %6510 = load float, float* %6509, align 4
  %6511 = fdiv fast float 1.000000e+00, %6510
  %6512 = fsub fast float %6508, %6511
  %6513 = call float @dx.op.binary.f32(i32 36, float %6504, float %6512)  ; FMin(a,b)
  %6514 = call float @dx.op.binary.f32(i32 35, float %6505, float %6508)  ; FMax(a,b)
  %6515 = add nuw i32 %6506, 1
  %6516 = icmp eq i32 %6515, %6489
  br i1 %6516, label %6517, label %6503

; <label>:6517                                    ; preds = %6503
  br label %6518

; <label>:6518                                    ; preds = %6517, %6496
  %6519 = phi float [ %6500, %6496 ], [ %6513, %6517 ]
  %6520 = phi float [ %6497, %6496 ], [ %6514, %6517 ]
  %6521 = fsub fast float %6520, %6519
  %6522 = fdiv fast float 1.000000e+00, %6521
  br label %6523

; <label>:6523                                    ; preds = %6518, %6493
  %6524 = phi float [ %6494, %6493 ], [ %6520, %6518 ]
  %6525 = phi float [ %6495, %6493 ], [ %6522, %6518 ]
  %6526 = fadd fast float %6227, %6524
  %6527 = fmul fast float %6526, %6525
  %6528 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6529 = fmul fast float %6528, 2.000000e+00
  %6530 = fsub fast float 1.000000e+00, %6529
  %6531 = fmul fast float %6365, %6365
  %6532 = fsub fast float %6366, %6531
  %6533 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6532)  ; FMax(a,b)
  %6534 = fdiv fast float 1.000000e+00, %6533
  %6535 = fmul fast float %6366, %6365
  %6536 = fsub fast float %6367, %6535
  %6537 = fsub fast float %6530, %6365
  %6538 = fmul fast float %6530, %6530
  %6539 = fsub fast float %6538, %6366
  %6540 = fmul fast float %6534, %6536
  %6541 = fmul fast float %6540, %6537
  %6542 = fsub fast float %6539, %6541
  %6543 = fmul fast float %6366, %6366
  %6544 = fsub fast float %6368, %6543
  %6545 = fmul fast float %6536, %6536
  %6546 = fmul fast float %6545, %6534
  %6547 = fsub fast float %6544, %6546
  %6548 = fdiv fast float %6542, %6547
  %6549 = fmul fast float %6548, %6536
  %6550 = fsub fast float %6537, %6549
  %6551 = fmul fast float %6550, %6534
  %6552 = fmul fast float %6551, %6365
  %6553 = fsub fast float 1.000000e+00, %6552
  %6554 = fmul fast float %6548, %6366
  %6555 = fsub fast float %6553, %6554
  %6556 = fmul fast float %6551, %6551
  %6557 = fmul fast float %6548, 4.000000e+00
  %6558 = fmul fast float %6557, %6555
  %6559 = fsub fast float %6556, %6558
  %6560 = call float @dx.op.unary.f32(i32 24, float %6559)  ; Sqrt(value)
  %6561 = fcmp fast oge float %6551, 0.000000e+00
  %6562 = fsub fast float -0.000000e+00, %6560
  %6563 = select i1 %6561, float %6562, float %6560
  %6564 = fsub fast float %6563, %6551
  %6565 = fdiv fast float %6564, %6548
  %6566 = fdiv fast float %6555, %6564
  %6567 = fmul fast float %6565, 5.000000e-01
  %6568 = fmul fast float %6566, 2.000000e+00
  %6569 = select i1 %6561, float %6567, float %6568
  %6570 = select i1 %6561, float %6568, float %6567
  %6571 = call float @dx.op.binary.f32(i32 35, float %6569, float %6570)  ; FMax(a,b)
  %6572 = call float @dx.op.binary.f32(i32 36, float %6569, float %6570)  ; FMin(a,b)
  %6573 = fcmp fast ogt float %6530, %6571
  %6574 = fsub fast float %6530, %6572
  %6575 = fsub fast float %6530, %6571
  %6576 = fsub fast float %6571, %6572
  %6577 = select i1 %6573, float %6575, float %6576
  %6578 = fmul float %6574, %6577
  %6579 = select i1 %6573, float %6572, float %6530
  %6580 = fcmp fast ogt float %6530, %6572
  %6581 = fmul fast float %6579, %6571
  %6582 = fadd fast float %6579, %6571
  %6583 = fmul fast float %6582, %6365
  %6584 = fadd fast float %6581, %6366
  %6585 = fsub fast float %6584, %6583
  %6586 = fdiv fast float %6585, %6578
  %6587 = select i1 %6580, float %6586, float 0.000000e+00
  %6588 = fsub fast float 1.000000e+00, %6587
  %6589 = select i1 %6573, float %6588, float %6587
  %6590 = call float @dx.op.unary.f32(i32 7, float %6589)  ; Saturate(value)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6592 = fmul fast float %6591, %6590
  %6593 = fsub fast float 1.000000e+00, %6592
  br label %6594

; <label>:6594                                    ; preds = %6523, %6235, %6200, %6196, %6160
  %6595 = phi float [ 1.000000e+00, %6160 ], [ %6593, %6523 ], [ 1.000000e+00, %6200 ], [ 1.000000e+00, %6235 ], [ 1.000000e+00, %6196 ]
  %6596 = fcmp fast ogt float %6192, 0.000000e+00
  br i1 %6596, label %6597, label %6605, !dx.controlflow.hints !116

; <label>:6597                                    ; preds = %6594
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6600 = fadd fast float %6599, %6073
  %6601 = call float @dx.op.binary.f32(i32 35, float %6600, float 0.000000e+00)  ; FMax(a,b)
  %6602 = fadd fast float %6601, 0x3F10000000000000
  %6603 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6091, float %6092, float undef, float undef, i32 0, i32 0, i32 undef, float %6602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6604 = extractvalue %dx.types.ResRet.f32 %6603, 0
  br label %6605

; <label>:6605                                    ; preds = %6597, %6594
  %6606 = phi float [ %6604, %6597 ], [ 1.000000e+00, %6594 ]
  %6607 = fcmp fast ogt float %6190, 0.000000e+00
  br i1 %6607, label %6608, label %6616, !dx.controlflow.hints !117

; <label>:6608                                    ; preds = %6605
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6611 = fadd fast float %6610, %6073
  %6612 = call float @dx.op.binary.f32(i32 35, float %6611, float 0.000000e+00)  ; FMax(a,b)
  %6613 = fadd fast float %6612, 0x3F10000000000000
  %6614 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6083, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float %6613)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  br label %6616

; <label>:6616                                    ; preds = %6608, %6605
  %6617 = phi float [ %6615, %6608 ], [ 1.000000e+00, %6605 ]
  %6618 = fcmp fast ogt float %6189, 0.000000e+00
  br i1 %6618, label %6619, label %6631, !dx.controlflow.hints !118

; <label>:6619                                    ; preds = %6616
  %6620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6621 = extractvalue %dx.types.CBufRet.f32 %6620, 0
  %6622 = fadd fast float %6621, %6073
  %6623 = call float @dx.op.binary.f32(i32 35, float %6622, float 0.000000e+00)  ; FMax(a,b)
  %6624 = fadd fast float %6623, 0x3F10000000000000
  br i1 %6076, label %6625, label %6628, !dx.controlflow.hints !119

; <label>:6625                                    ; preds = %6619
  %6626 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6065, float %6069, float undef, float undef, i32 0, i32 0, i32 undef, float %6624)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6627 = extractvalue %dx.types.ResRet.f32 %6626, 0
  br label %6631

; <label>:6628                                    ; preds = %6619
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6065, float %6069, float undef, float undef, i32 0, i32 0, i32 undef, float %6624)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 0
  br label %6631

; <label>:6631                                    ; preds = %6628, %6625, %6616
  %6632 = phi float [ %6627, %6625 ], [ %6630, %6628 ], [ 1.000000e+00, %6616 ]
  %6633 = fsub fast float %6606, %6595
  %6634 = fmul fast float %6633, %6162
  %6635 = fadd fast float %6634, %6595
  %6636 = fsub fast float %6617, %6635
  %6637 = fmul fast float %6636, %6161
  %6638 = fadd fast float %6637, %6635
  %6639 = fsub fast float %6632, %6638
  %6640 = fmul fast float %6639, %6189
  %6641 = fadd fast float %6640, %6638
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6644 = fcmp fast ogt float %6643, 0.000000e+00
  br i1 %6644, label %6645, label %6685, !dx.controlflow.hints !120

; <label>:6645                                    ; preds = %6631
  %6646 = fcmp fast ugt float %6643, 0.000000e+00
  br i1 %6646, label %6647, label %6682

; <label>:6647                                    ; preds = %6645
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 1
  %6656 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6657 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6658 = extractvalue %dx.types.CBufRet.f32 %6642, 0
  %6659 = extractvalue %dx.types.CBufRet.f32 %6642, 1
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.CBufRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.CBufRet.f32 %6660, 2
  %6664 = fadd fast float %6661, %6042
  %6665 = fadd fast float %6662, %6043
  %6666 = fadd fast float %6663, %6044
  %6667 = fmul fast float %6664, %6649
  %6668 = call float @dx.op.tertiary.f32(i32 46, float %6650, float %6665, float %6667)  ; FMad(a,b,c)
  %6669 = call float @dx.op.tertiary.f32(i32 46, float %6651, float %6666, float %6668)  ; FMad(a,b,c)
  %6670 = fadd fast float %6669, %6652
  %6671 = fmul fast float %6664, %6654
  %6672 = call float @dx.op.tertiary.f32(i32 46, float %6655, float %6665, float %6671)  ; FMad(a,b,c)
  %6673 = call float @dx.op.tertiary.f32(i32 46, float %6656, float %6666, float %6672)  ; FMad(a,b,c)
  %6674 = fadd fast float %6673, %6657
  %6675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6670, float %6674, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = fmul fast float %6676, %6659
  %6678 = fadd fast float %6677, %6658
  %6679 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6680 = fmul fast float %6679, %6643
  %6681 = fsub fast float 1.000000e+00, %6680
  br label %6682

; <label>:6682                                    ; preds = %6647, %6645
  %6683 = phi float [ %6681, %6647 ], [ 1.000000e+00, %6645 ]
  %6684 = fmul fast float %6683, %6641
  br label %6685

; <label>:6685                                    ; preds = %6682, %6631, %6022
  %6686 = phi float [ 1.000000e+00, %6022 ], [ %6684, %6682 ], [ %6641, %6631 ]
  %6687 = call float @dx.op.binary.f32(i32 36, float %6686, float %6686)  ; FMin(a,b)
  %6688 = call float @dx.op.binary.f32(i32 36, float %6686, float %6687)  ; FMin(a,b)
  %6689 = fcmp fast ogt float %6688, 0.000000e+00
  br i1 %6689, label %6690, label %6850, !dx.controlflow.hints !121

; <label>:6690                                    ; preds = %6685
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6704 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6705 = extractvalue %dx.types.CBufRet.f32 %6701, 3
  %6706 = fmul fast float %6692, %6042
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6693, float %6706)  ; FMad(a,b,c)
  %6708 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6694, float %6707)  ; FMad(a,b,c)
  %6709 = fadd fast float %6708, %6695
  %6710 = fmul fast float %6697, %6042
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6698, float %6710)  ; FMad(a,b,c)
  %6712 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6699, float %6711)  ; FMad(a,b,c)
  %6713 = fadd fast float %6712, %6700
  %6714 = fmul fast float %6702, %6042
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6703, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6044, float %6704, float %6715)  ; FMad(a,b,c)
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6720 = extractvalue %dx.types.CBufRet.f32 %6717, 3
  %6721 = fmul fast float %6720, %6709
  %6722 = fmul fast float %6720, %6713
  %6723 = fadd fast float %6721, %6718
  %6724 = fadd fast float %6722, %6719
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  %6727 = extractvalue %dx.types.CBufRet.f32 %6725, 1
  %6728 = fsub fast float %6723, %6726
  %6729 = fsub fast float %6724, %6727
  %6730 = fcmp fast olt float %6728, 0.000000e+00
  %6731 = fcmp fast olt float %6729, 0.000000e+00
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6737 = select i1 %6730, float %6733, float %6735
  %6738 = select i1 %6731, float %6734, float %6736
  %6739 = fmul fast float %6737, %6728
  %6740 = fmul fast float %6738, %6729
  %6741 = call float @dx.op.unary.f32(i32 6, float %6739)  ; FAbs(value)
  %6742 = call float @dx.op.unary.f32(i32 6, float %6740)  ; FAbs(value)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6744 = call float @dx.op.binary.f32(i32 35, float %6741, float %6742)  ; FMax(a,b)
  %6745 = fsub fast float %6743, %6744
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fcmp fast ogt float %6746, 0.000000e+00
  br i1 %6747, label %6748, label %6789, !dx.controlflow.hints !122

; <label>:6748                                    ; preds = %6690
  %6749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6723, float %6724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6750 = extractvalue %dx.types.ResRet.f32 %6749, 1
  %6751 = fcmp fast ogt float %6750, 0.000000e+00
  br i1 %6751, label %6752, label %6784

; <label>:6752                                    ; preds = %6748
  %6753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6723, float %6724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6754 = extractvalue %dx.types.ResRet.f32 %6753, 0
  %6755 = extractvalue %dx.types.ResRet.f32 %6753, 1
  %6756 = extractvalue %dx.types.ResRet.f32 %6753, 2
  %6757 = extractvalue %dx.types.ResRet.f32 %6753, 3
  %6758 = fsub fast float 1.000000e+00, %6705
  %6759 = fsub fast float %6758, %6716
  %6760 = fmul fast float %6759, 0x400921FB60000000
  %6761 = fadd fast float %6760, 0x3FF921FB60000000
  %6762 = call float @dx.op.unary.f32(i32 13, float %6761)  ; Sin(value)
  %6763 = fadd fast float %6762, -1.000000e+00
  %6764 = fmul fast float %6763, 0x3FD45F3060000000
  %6765 = fmul fast float %6759, 0x401921FB60000000
  %6766 = fadd fast float %6765, 0x400921FB60000000
  %6767 = call float @dx.op.unary.f32(i32 13, float %6766)  ; Sin(value)
  %6768 = fadd fast float %6767, 0x3E7777A5C0000000
  %6769 = fmul fast float %6768, 0x3FC45F3060000000
  %6770 = fmul fast float %6759, 0x4022D97C80000000
  %6771 = fadd fast float %6770, 0x4012D97C80000000
  %6772 = call float @dx.op.unary.f32(i32 13, float %6771)  ; Sin(value)
  %6773 = fadd fast float %6772, 1.000000e+00
  %6774 = fmul fast float %6773, 0x3FBB2995E0000000
  %6775 = fmul fast float %6759, 0x402921FB60000000
  %6776 = fadd fast float %6775, 0x401921FB60000000
  %6777 = call float @dx.op.unary.f32(i32 13, float %6776)  ; Sin(value)
  %6778 = fadd fast float %6777, 0xBE8777A5C0000000
  %6779 = fmul fast float %6778, 0x3FB45F3060000000
  %6780 = call float @dx.op.dot4.f32(i32 56, float %6754, float %6755, float %6756, float %6757, float %6764, float %6769, float %6774, float %6779)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6781 = fmul fast float %6780, 0xBFF7154760000000
  %6782 = call float @dx.op.unary.f32(i32 21, float %6781)  ; Exp(value)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  br label %6784

; <label>:6784                                    ; preds = %6752, %6748
  %6785 = phi float [ %6783, %6752 ], [ 1.000000e+00, %6748 ]
  %6786 = fadd fast float %6785, -1.000000e+00
  %6787 = fmul fast float %6786, %6746
  %6788 = fadd fast float %6787, 1.000000e+00
  br label %6789

; <label>:6789                                    ; preds = %6784, %6690
  %6790 = phi float [ %6788, %6784 ], [ 1.000000e+00, %6690 ]
  %6791 = fmul fast float %6790, %6686
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6796 = fadd fast float %6793, %193
  %6797 = fadd fast float %6794, %194
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6800 = fsub fast float -0.000000e+00, %6796
  %6801 = fsub fast float -0.000000e+00, %6797
  %6802 = fsub fast float %5769, %6795
  %6803 = fadd fast float %6802, %6799
  %6804 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6800, float %6801, float %6803)  ; Dot3(ax,ay,az,bx,by,bz)
  %6805 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6806 = fdiv fast float 1.000000e+00, %6805
  %6807 = fmul fast float %6806, %6804
  %6808 = fmul fast float %6023, %6807
  %6809 = fmul fast float %6024, %6807
  %6810 = fadd fast float %6808, %6796
  %6811 = fadd fast float %6809, %6797
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = fsub fast float %6810, %6813
  %6816 = fsub fast float %6811, %6814
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6820 = fmul fast float %6815, %6818
  %6821 = fmul fast float %6816, %6819
  %6822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.i32 %6822, 3
  %6824 = icmp eq i32 %6823, 0
  br i1 %6824, label %6830, label %6825

; <label>:6825                                    ; preds = %6789
  %6826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6820, float %6821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6827 = extractvalue %dx.types.ResRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.ResRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.ResRet.f32 %6826, 2
  br label %6835

; <label>:6830                                    ; preds = %6789
  %6831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6820, float %6821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6832 = extractvalue %dx.types.ResRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.ResRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.ResRet.f32 %6831, 2
  br label %6835

; <label>:6835                                    ; preds = %6830, %6825
  %6836 = phi float [ %6827, %6825 ], [ %6832, %6830 ]
  %6837 = phi float [ %6828, %6825 ], [ %6833, %6830 ]
  %6838 = phi float [ %6829, %6825 ], [ %6834, %6830 ]
  %6839 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6840 = fmul fast float %6839, %6836
  %6841 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6842 = fsub fast float %6807, %6841
  %6843 = fsub fast float %6842, %6840
  %6844 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6843)  ; FMax(a,b)
  %6845 = fmul fast float %6844, %6837
  %6846 = call float @dx.op.binary.f32(i32 36, float %6838, float %6845)  ; FMin(a,b)
  %6847 = fmul fast float %6846, 0xBFF7154760000000
  %6848 = call float @dx.op.unary.f32(i32 21, float %6847)  ; Exp(value)
  %6849 = fmul fast float %6791, %6848
  br label %6850

; <label>:6850                                    ; preds = %6835, %6685
  %6851 = phi float [ %6849, %6835 ], [ %6686, %6685 ]
  %6852 = call float @dx.op.binary.f32(i32 36, float %6851, float %6851)  ; FMin(a,b)
  %6853 = call float @dx.op.binary.f32(i32 36, float %6851, float %6852)  ; FMin(a,b)
  %6854 = fcmp fast ogt float %6853, 0.000000e+00
  br i1 %6854, label %6855, label %7118, !dx.controlflow.hints !123

; <label>:6855                                    ; preds = %6850
  %6856 = fmul fast float %6851, %6034
  %6857 = fmul fast float %6851, %6035
  %6858 = fmul fast float %6851, %6036
  %6859 = fsub fast float %195, %4965
  %6860 = fcmp fast ogt float %6859, 0.000000e+00
  %6861 = fmul fast float %6023, 5.120000e+02
  %6862 = fmul fast float %6024, 5.120000e+02
  %6863 = fmul fast float %6025, 5.120000e+02
  %6864 = fadd fast float %6863, %195
  %6865 = fsub fast float %4965, %6864
  %6866 = fmul fast float %6865, 2.000000e+00
  %6867 = fadd fast float %6866, %6864
  %6868 = select i1 %6860, float %6867, float %6864
  %6869 = fsub fast float %6868, %195
  %6870 = call float @dx.op.dot3.f32(i32 55, float %6861, float %6862, float %6869, float %6861, float %6862, float %6869)  ; Dot3(ax,ay,az,bx,by,bz)
  %6871 = call float @dx.op.unary.f32(i32 25, float %6870)  ; Rsqrt(value)
  %6872 = fmul fast float %6871, %6861
  %6873 = fmul fast float %6871, %6862
  %6874 = fmul fast float %6871, %6869
  %6875 = fsub fast float %4965, %195
  %6876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6875)  ; Dot3(ax,ay,az,bx,by,bz)
  %6877 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6872, float %6873, float %6874)  ; Dot3(ax,ay,az,bx,by,bz)
  %6878 = fdiv fast float 1.000000e+00, %6877
  %6879 = fmul fast float %6878, %6876
  %6880 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6859, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6881 = fcmp fast ogt float %6880, 0.000000e+00
  %6882 = fcmp fast olt float %6880, 0.000000e+00
  %6883 = zext i1 %6881 to i32
  %6884 = zext i1 %6882 to i32
  %6885 = sub nsw i32 %6883, %6884
  %6886 = sitofp i32 %6885 to float
  %6887 = fsub fast float %6868, %4965
  %6888 = call float @dx.op.dot3.f32(i32 55, float %6861, float %6862, float %6887, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6889 = fcmp fast ogt float %6888, 0.000000e+00
  %6890 = fcmp fast olt float %6888, 0.000000e+00
  %6891 = zext i1 %6889 to i32
  %6892 = zext i1 %6890 to i32
  %6893 = sub nsw i32 %6891, %6892
  %6894 = sitofp i32 %6893 to float
  %6895 = fcmp fast une float %6886, %6894
  br i1 %6895, label %6896, label %6906

; <label>:6896                                    ; preds = %6855
  %6897 = fmul fast float %6879, %6874
  %6898 = fmul fast float %6879, %6873
  %6899 = fmul fast float %6879, %6872
  %6900 = fmul fast float %6899, %6899
  %6901 = fmul fast float %6898, %6898
  %6902 = fadd fast float %6900, %6901
  %6903 = fmul fast float %6897, %6897
  %6904 = fadd fast float %6902, %6903
  %6905 = call float @dx.op.unary.f32(i32 24, float %6904)  ; Sqrt(value)
  br label %6916

; <label>:6906                                    ; preds = %6855
  %6907 = icmp slt i32 %6885, 0
  br i1 %6907, label %6908, label %6916

; <label>:6908                                    ; preds = %6906
  %6909 = fsub fast float %195, %6868
  %6910 = fmul fast float %6861, %6861
  %6911 = fmul fast float %6862, %6862
  %6912 = fadd fast float %6910, %6911
  %6913 = fmul fast float %6909, %6909
  %6914 = fadd fast float %6912, %6913
  %6915 = call float @dx.op.unary.f32(i32 24, float %6914)  ; Sqrt(value)
  br label %6916

; <label>:6916                                    ; preds = %6908, %6906, %6896
  %6917 = phi float [ %6905, %6896 ], [ %6915, %6908 ], [ 0.000000e+00, %6906 ]
  %6918 = fsub fast float -0.000000e+00, %6917
  %6919 = select i1 %6860, float -0.000000e+00, float %6918
  %6920 = fmul fast float %4966, 0x3FF7154760000000
  %6921 = fmul fast float %6920, %6919
  %6922 = fmul fast float %4967, 0x3FF7154760000000
  %6923 = fmul fast float %6922, %6919
  %6924 = fmul fast float %4968, 0x3FF7154760000000
  %6925 = fmul fast float %6924, %6919
  %6926 = call float @dx.op.unary.f32(i32 21, float %6921)  ; Exp(value)
  %6927 = call float @dx.op.unary.f32(i32 21, float %6923)  ; Exp(value)
  %6928 = call float @dx.op.unary.f32(i32 21, float %6925)  ; Exp(value)
  %6929 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6930 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6931 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  %6932 = fmul fast float %6856, %6929
  %6933 = fmul fast float %6857, %6930
  %6934 = fmul fast float %6858, %6931
  %6935 = fsub fast float %6023, %5757
  %6936 = fsub fast float %6024, %5756
  %6937 = fsub fast float %6025, %5755
  %6938 = call float @dx.op.dot3.f32(i32 55, float %6935, float %6936, float %6937, float %6935, float %6936, float %6937)  ; Dot3(ax,ay,az,bx,by,bz)
  %6939 = call float @dx.op.unary.f32(i32 25, float %6938)  ; Rsqrt(value)
  %6940 = fmul fast float %6939, %6935
  %6941 = fmul fast float %6939, %6936
  %6942 = fmul fast float %6939, %6937
  %6943 = call float @dx.op.dot3.f32(i32 55, float %6023, float %6024, float %6025, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %6944 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5753, float %5752, float %6940, float %6941, float %6942)  ; Dot3(ax,ay,az,bx,by,bz)
  %6945 = call float @dx.op.unary.f32(i32 7, float %6943)  ; Saturate(value)
  %6946 = fmul fast float %6945, %6945
  %6947 = fmul fast float %6946, %5785
  %6948 = call float @dx.op.unary.f32(i32 7, float %6947)  ; Saturate(value)
  %6949 = fmul fast float %6948, %6945
  %6950 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %6940, float %6941, float %6942)  ; Dot3(ax,ay,az,bx,by,bz)
  %6951 = fmul fast float %6950, %6950
  %6952 = call float @dx.op.unary.f32(i32 6, float %6943)  ; FAbs(value)
  %6953 = fsub fast float 1.000000e+00, %5767
  %6954 = call float @dx.op.binary.f32(i32 35, float %6953, float 0x3F847AE140000000)  ; FMax(a,b)
  %6955 = fmul fast float %6954, %6954
  %6956 = fmul fast float %6955, %6955
  %6957 = fsub fast float 1.000000e+00, %6956
  %6958 = fmul fast float %5772, %5772
  %6959 = fmul fast float %6958, %6957
  %6960 = fadd fast float %6959, %6956
  %6961 = bitcast float %6960 to i32
  %6962 = ashr i32 %6961, 1
  %6963 = add nsw i32 %6962, 532487669
  %6964 = bitcast i32 %6963 to float
  %6965 = fadd fast float %6964, %5772
  %6966 = fmul fast float %6956, %6951
  %6967 = fsub fast float 1.000000e+00, %6951
  %6968 = fadd fast float %6967, %6966
  %6969 = fmul fast float %6952, %6952
  %6970 = fmul fast float %6969, %6957
  %6971 = fadd fast float %6970, %6956
  %6972 = bitcast float %6971 to i32
  %6973 = ashr i32 %6972, 1
  %6974 = add nsw i32 %6973, 532487669
  %6975 = bitcast i32 %6974 to float
  %6976 = fadd fast float %6975, %6952
  %6977 = fmul fast float %6968, %6968
  %6978 = fmul fast float %6977, %6965
  %6979 = fmul fast float %6978, %6976
  %6980 = fdiv fast float 0x3FF0A00000000000, %6979
  %6981 = fmul fast float %6980, %6956
  %6982 = fmul fast float %5885, 0x3FF9999980000000
  %6983 = fsub fast float 5.000000e+00, %6982
  %6984 = call float @dx.op.unary.f32(i32 6, float %6944)  ; FAbs(value)
  %6985 = fsub fast float 1.000000e+00, %6984
  %6986 = fmul fast float %5885, 0x41D9660740000000
  %6987 = fadd fast float %6986, 0xC1EFBF8940000000
  %6988 = bitcast float %6985 to i32
  %6989 = sitofp i32 %6988 to float
  %6990 = fmul fast float %6989, %6983
  %6991 = fadd fast float %6987, %6990
  %6992 = fptosi float %6991 to i32
  %6993 = bitcast i32 %6992 to float
  %6994 = fsub fast float 1.000000e+00, %5761
  %6995 = fsub fast float 1.000000e+00, %5762
  %6996 = fsub fast float 1.000000e+00, %5770
  %6997 = fmul fast float %6993, %6994
  %6998 = fmul fast float %6993, %6995
  %6999 = fmul fast float %6993, %6996
  %7000 = fadd fast float %6997, %5761
  %7001 = fadd fast float %6998, %5762
  %7002 = fadd fast float %6999, %5770
  br i1 %5908, label %7003, label %7026

; <label>:7003                                    ; preds = %6916
  %7004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4560, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7005 = extractvalue %dx.types.ResRet.f32 %7004, 0
  %7006 = extractvalue %dx.types.ResRet.f32 %7004, 1
  %7007 = extractvalue %dx.types.ResRet.f32 %7004, 2
  %7008 = fadd fast float %7005, -5.000000e-01
  %7009 = fadd fast float %7006, -5.000000e-01
  %7010 = fadd fast float %7007, -5.000000e-01
  %7011 = fmul fast float %5761, 4.000000e+00
  %7012 = fmul fast float %7011, %6994
  %7013 = fmul fast float %7012, %7008
  %7014 = fmul fast float %5762, 4.000000e+00
  %7015 = fmul fast float %7014, %6995
  %7016 = fmul fast float %7015, %7009
  %7017 = fmul fast float %5770, 4.000000e+00
  %7018 = fmul fast float %7017, %6996
  %7019 = fmul fast float %7018, %7010
  %7020 = fadd fast float %7013, %7000
  %7021 = fadd fast float %7016, %7001
  %7022 = fadd fast float %7019, %7002
  %7023 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7024 = call float @dx.op.unary.f32(i32 7, float %7021)  ; Saturate(value)
  %7025 = call float @dx.op.unary.f32(i32 7, float %7022)  ; Saturate(value)
  br label %7026

; <label>:7026                                    ; preds = %7003, %6916
  %7027 = phi float [ %7023, %7003 ], [ %7000, %6916 ]
  %7028 = phi float [ %7024, %7003 ], [ %7001, %6916 ]
  %7029 = phi float [ %7025, %7003 ], [ %7002, %6916 ]
  %7030 = fmul fast float %6943, 9.843750e-01
  %7031 = fadd fast float %7030, 7.812500e-03
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7031, float %5889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.ResRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.ResRet.f32 %7032, 2
  %7036 = extractvalue %dx.types.ResRet.f32 %7032, 3
  %7037 = fsub fast float %7035, %7033
  %7038 = fsub fast float %7036, %7034
  %7039 = fmul fast float %7037, %5895
  %7040 = fmul fast float %7038, %5895
  %7041 = fadd fast float %7039, %7033
  %7042 = fadd fast float %7040, %7034
  %7043 = fmul fast float %7041, %5761
  %7044 = fmul fast float %7041, %5762
  %7045 = fmul fast float %7041, %5770
  %7046 = fadd fast float %7043, %7042
  %7047 = fadd fast float %7044, %7042
  %7048 = fadd fast float %7045, %7042
  br i1 %5908, label %7049, label %7072

; <label>:7049                                    ; preds = %7026
  %7050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4560, float %6943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7051 = extractvalue %dx.types.ResRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.ResRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.ResRet.f32 %7050, 2
  %7054 = fadd fast float %7051, -5.000000e-01
  %7055 = fadd fast float %7052, -5.000000e-01
  %7056 = fadd fast float %7053, -5.000000e-01
  %7057 = fmul fast float %5761, 4.000000e+00
  %7058 = fmul fast float %7057, %6994
  %7059 = fmul fast float %7058, %7054
  %7060 = fmul fast float %5762, 4.000000e+00
  %7061 = fmul fast float %7060, %6995
  %7062 = fmul fast float %7061, %7055
  %7063 = fmul fast float %5770, 4.000000e+00
  %7064 = fmul fast float %7063, %6996
  %7065 = fmul fast float %7064, %7056
  %7066 = fadd fast float %7059, %7046
  %7067 = fadd fast float %7062, %7047
  %7068 = fadd fast float %7065, %7048
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7071 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  br label %7072

; <label>:7072                                    ; preds = %7049, %7026
  %7073 = phi float [ %7069, %7049 ], [ %7046, %7026 ]
  %7074 = phi float [ %7070, %7049 ], [ %7047, %7026 ]
  %7075 = phi float [ %7071, %7049 ], [ %7048, %7026 ]
  %7076 = call float @dx.op.binary.f32(i32 35, float %7074, float %7075)  ; FMax(a,b)
  %7077 = call float @dx.op.binary.f32(i32 35, float %7073, float %7076)  ; FMax(a,b)
  %7078 = fsub fast float 1.000000e+00, %7077
  %7079 = fmul fast float %7027, %6981
  %7080 = fmul fast float %7028, %6981
  %7081 = fmul fast float %7029, %6981
  %7082 = fsub fast float 1.000000e+00, %6944
  %7083 = bitcast float %7082 to i32
  %7084 = sitofp i32 %7083 to float
  %7085 = fmul fast float %7084, 5.000000e+00
  %7086 = fadd fast float %7085, 0xC1EFBF8940000000
  %7087 = fptosi float %7086 to i32
  %7088 = bitcast i32 %7087 to float
  %7089 = fmul fast float %7088, %4561
  %7090 = fmul fast float %7078, %7089
  %7091 = fmul fast float %7090, %5958
  %7092 = fmul fast float %7090, %5959
  %7093 = fmul fast float %7090, %5960
  %7094 = fadd fast float %7091, %7079
  %7095 = fadd fast float %7092, %7080
  %7096 = fadd fast float %7093, %7081
  %7097 = fmul fast float %6949, %6932
  %7098 = fmul fast float %7097, %7078
  %7099 = fmul fast float %6949, %6933
  %7100 = fmul fast float %7099, %7078
  %7101 = fmul fast float %6949, %6934
  %7102 = fmul fast float %7101, %7078
  %7103 = fmul fast float %7097, %7094
  %7104 = fmul fast float %7099, %7095
  %7105 = fmul fast float %7101, %7096
  %7106 = fadd fast float %7098, %5942
  %7107 = fmul fast float %7106, %4557
  %7108 = fadd fast float %7100, %5943
  %7109 = fmul fast float %7108, %4557
  %7110 = fadd fast float %7102, %5944
  %7111 = fmul fast float %7110, %4557
  %7112 = fadd fast float %7103, %6011
  %7113 = fmul fast float %7112, %4557
  %7114 = fadd fast float %7104, %6014
  %7115 = fmul fast float %7114, %4557
  %7116 = fadd fast float %7105, %6017
  %7117 = fmul fast float %7116, %4557
  br label %7118

; <label>:7118                                    ; preds = %7072, %6850, %5935
  %7119 = phi float [ %6012, %5935 ], [ %6012, %6850 ], [ %7113, %7072 ]
  %7120 = phi float [ %6015, %5935 ], [ %6015, %6850 ], [ %7115, %7072 ]
  %7121 = phi float [ %6018, %5935 ], [ %6018, %6850 ], [ %7117, %7072 ]
  %7122 = phi float [ %6007, %5935 ], [ %6007, %6850 ], [ %7107, %7072 ]
  %7123 = phi float [ %6008, %5935 ], [ %6008, %6850 ], [ %7109, %7072 ]
  %7124 = phi float [ %6009, %5935 ], [ %6009, %6850 ], [ %7111, %7072 ]
  %7125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.i32 %7125, 0
  %7127 = icmp eq i32 %7126, 0
  br i1 %7127, label %7760, label %7128

; <label>:7128                                    ; preds = %7118
  %7129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7130 = extractvalue %dx.types.CBufRet.f32 %7129, 2
  %7131 = extractvalue %dx.types.CBufRet.f32 %7129, 3
  %7132 = fmul fast float %7130, %106
  %7133 = fmul fast float %7131, %107
  %7134 = fptoui float %7132 to i32
  %7135 = fptoui float %7133 to i32
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7139 = extractvalue %dx.types.CBufRet.f32 %7136, 3
  %7140 = fadd fast float %97, -4.000000e+00
  %7141 = call float @dx.op.binary.f32(i32 35, float %7140, float 0.000000e+00)  ; FMax(a,b)
  %7142 = fadd fast float %7141, %7137
  %7143 = fmul fast float %7142, %7138
  %7144 = call float @dx.op.unary.f32(i32 23, float %7143)  ; Log(value)
  %7145 = fmul fast float %7144, %7139
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7148 = fmul fast float %7145, %7147
  %7149 = call float @dx.op.unary.f32(i32 7, float %7148)  ; Saturate(value)
  %7150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.i32 %7150, 1
  %7152 = add i32 %7151, -1
  %7153 = uitofp i32 %7151 to float
  %7154 = fmul fast float %7153, %7149
  %7155 = fptoui float %7154 to i32
  %7156 = call i32 @dx.op.binary.i32(i32 40, i32 %7155, i32 %7152)  ; UMin(a,b)
  %7157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.i32 %7157, 2
  %7159 = extractvalue %dx.types.CBufRet.i32 %7157, 3
  %7160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7135, i32 %7158, i32 %7134)  ; UMad(a,b,c)
  %7161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7156, i32 %7159, i32 %7160)  ; UMad(a,b,c)
  %7162 = add nsw i32 %7126, -1
  %7163 = call i32 @dx.op.binary.i32(i32 37, i32 %7162, i32 0)  ; IMax(a,b)
  %7164 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7165 = fptoui float %7164 to i32
  %7166 = lshr i32 %7165, 5
  %7167 = call i32 @dx.op.binary.i32(i32 40, i32 %7166, i32 8191)  ; UMin(a,b)
  %7168 = shl i32 %7167, 2
  %7169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7168, i32 undef)  ; BufferLoad(srv,index,wot)
  %7170 = extractvalue %dx.types.ResRet.i32 %7169, 0
  %7171 = lshr i32 %7170, 16
  %7172 = and i32 %7170, 65535
  %7173 = lshr i32 %7170, 21
  %7174 = lshr i32 %7172, 5
  %7175 = call i32 @dx.op.binary.i32(i32 40, i32 %7174, i32 %7163)  ; UMin(a,b)
  %7176 = icmp ugt i32 %7173, %7175
  br i1 %7176, label %7760, label %7177

; <label>:7177                                    ; preds = %7128
  br label %7178

; <label>:7178                                    ; preds = %7750, %7177
  %7179 = phi i32 [ %7757, %7750 ], [ %7173, %7177 ]
  %7180 = phi float [ %7751, %7750 ], [ %7119, %7177 ]
  %7181 = phi float [ %7752, %7750 ], [ %7120, %7177 ]
  %7182 = phi float [ %7753, %7750 ], [ %7121, %7177 ]
  %7183 = phi float [ %7754, %7750 ], [ %7122, %7177 ]
  %7184 = phi float [ %7755, %7750 ], [ %7123, %7177 ]
  %7185 = phi float [ %7756, %7750 ], [ %7124, %7177 ]
  %7186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.i32 %7186, 0
  %7188 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7161, i32 %7187, i32 %7179)  ; UMad(a,b,c)
  %7189 = shl i32 %7188, 2
  %7190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7189, i32 undef)  ; BufferLoad(srv,index,wot)
  %7191 = extractvalue %dx.types.ResRet.i32 %7190, 0
  %7192 = shl i32 %7179, 5
  %7193 = sub nsw i32 %7171, %7192
  %7194 = call i32 @dx.op.binary.i32(i32 37, i32 %7193, i32 0)  ; IMax(a,b)
  %7195 = call i32 @dx.op.binary.i32(i32 38, i32 %7194, i32 31)  ; IMin(a,b)
  %7196 = sub nsw i32 1, %7171
  %7197 = add nsw i32 %7196, %7172
  %7198 = call i32 @dx.op.binary.i32(i32 37, i32 %7197, i32 0)  ; IMax(a,b)
  %7199 = call i32 @dx.op.binary.i32(i32 38, i32 %7198, i32 32)  ; IMin(a,b)
  %7200 = and i32 %7199, 31
  %7201 = shl i32 -1, %7200
  %7202 = xor i32 %7201, -1
  %7203 = and i32 %7195, 31
  %7204 = shl i32 %7202, %7203
  %7205 = icmp eq i32 %7199, 32
  %7206 = select i1 %7205, i32 -1, i32 %7204
  %7207 = and i32 %7206, %7191
  %7208 = icmp eq i32 %7207, 0
  br i1 %7208, label %7750, label %7209

; <label>:7209                                    ; preds = %7178
  br label %7210

; <label>:7210                                    ; preds = %7344, %7209
  %7211 = phi i32 [ %7222, %7344 ], [ %7207, %7209 ]
  %7212 = phi float [ %7345, %7344 ], [ %7180, %7209 ]
  %7213 = phi float [ %7346, %7344 ], [ %7181, %7209 ]
  %7214 = phi float [ %7347, %7344 ], [ %7182, %7209 ]
  %7215 = phi float [ %7348, %7344 ], [ %7183, %7209 ]
  %7216 = phi float [ %7349, %7344 ], [ %7184, %7209 ]
  %7217 = phi float [ %7350, %7344 ], [ %7185, %7209 ]
  %7218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7211)  ; FirstbitLo(value)
  %7219 = add i32 %7218, %7192
  %7220 = and i32 %7218, 31
  %7221 = shl i32 1, %7220
  %7222 = xor i32 %7221, %7211
  %7223 = mul i32 %7219, 112
  %7224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7223, i32 undef)  ; BufferLoad(srv,index,wot)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.ResRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.ResRet.f32 %7224, 2
  %7228 = or i32 %7223, 12
  %7229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7228, i32 undef)  ; BufferLoad(srv,index,wot)
  %7230 = extractvalue %dx.types.ResRet.f32 %7229, 0
  %7231 = add i32 %7223, 16
  %7232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7231, i32 undef)  ; BufferLoad(srv,index,wot)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.ResRet.f32 %7232, 1
  %7235 = extractvalue %dx.types.ResRet.f32 %7232, 2
  %7236 = add i32 %7223, 28
  %7237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7236, i32 undef)  ; BufferLoad(srv,index,wot)
  %7238 = extractvalue %dx.types.ResRet.i32 %7237, 0
  %7239 = add i32 %7223, 44
  %7240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7239, i32 undef)  ; BufferLoad(srv,index,wot)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = add i32 %7223, 48
  %7243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7242, i32 undef)  ; BufferLoad(srv,index,wot)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.ResRet.f32 %7243, 1
  %7246 = extractvalue %dx.types.ResRet.f32 %7243, 2
  %7247 = extractvalue %dx.types.ResRet.f32 %7243, 3
  %7248 = add i32 %7223, 64
  %7249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7248, i32 undef)  ; BufferLoad(srv,index,wot)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = extractvalue %dx.types.ResRet.f32 %7249, 1
  %7252 = extractvalue %dx.types.ResRet.f32 %7249, 2
  %7253 = extractvalue %dx.types.ResRet.f32 %7249, 3
  %7254 = add i32 %7223, 80
  %7255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7254, i32 undef)  ; BufferLoad(srv,index,wot)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 2
  %7258 = add i32 %7223, 92
  %7259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7258, i32 undef)  ; BufferLoad(srv,index,wot)
  %7260 = extractvalue %dx.types.ResRet.i32 %7259, 0
  %7261 = call float @dx.op.dot3.f32(i32 55, float %7225, float %7226, float %7227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7262 = select i1 %265, float %7256, float %7225
  %7263 = select i1 %265, float %7261, float %7226
  %7264 = select i1 %265, float %7257, float %7227
  %7265 = and i32 %7260, 65535
  %7266 = uitofp i32 %7265 to float
  %7267 = lshr i32 %7260, 16
  %7268 = uitofp i32 %7267 to float
  %7269 = and i32 %7238, 65535
  %7270 = and i32 %7238, 50331648
  %7271 = icmp eq i32 %7270, 33554432
  %7272 = fsub fast float %7244, %193
  %7273 = fsub fast float %7245, %194
  %7274 = fsub fast float %7246, %195
  %7275 = call float @dx.op.dot3.f32(i32 55, float %7272, float %7273, float %7274, float %7272, float %7273, float %7274)  ; Dot3(ax,ay,az,bx,by,bz)
  %7276 = call float @dx.op.unary.f32(i32 24, float %7275)  ; Sqrt(value)
  %7277 = fdiv fast float 1.000000e+00, %7276
  %7278 = fmul fast float %7277, %7272
  %7279 = fmul fast float %7277, %7273
  %7280 = fmul fast float %7277, %7274
  %7281 = fadd fast float %7276, %7230
  %7282 = fdiv fast float 1.000000e+00, %7281
  %7283 = fmul float %7241, %7282
  %7284 = fmul float %7283, %7283
  %7285 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  br i1 %7271, label %7286, label %7307

; <label>:7286                                    ; preds = %7210
  %7287 = fmul fast float %7252, %7233
  %7288 = fmul fast float %7252, %7234
  %7289 = fmul fast float %7252, %7235
  %7290 = fadd fast float %7272, %7287
  %7291 = fadd fast float %7273, %7288
  %7292 = fadd fast float %7274, %7289
  %7293 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7292, float %7290, float %7291, float %7292)  ; Dot3(ax,ay,az,bx,by,bz)
  %7294 = call float @dx.op.unary.f32(i32 25, float %7293)  ; Rsqrt(value)
  %7295 = fmul fast float %7294, %7290
  %7296 = fmul fast float %7294, %7291
  %7297 = fmul fast float %7294, %7292
  %7298 = fsub fast float %193, %7244
  %7299 = fsub fast float %194, %7245
  %7300 = fsub fast float %195, %7246
  %7301 = fsub fast float -0.000000e+00, %7298
  %7302 = fsub fast float -0.000000e+00, %7299
  %7303 = fsub fast float -0.000000e+00, %7300
  %7304 = call float @dx.op.dot3.f32(i32 55, float %7301, float %7302, float %7303, float %7233, float %7234, float %7235)  ; Dot3(ax,ay,az,bx,by,bz)
  %7305 = fcmp fast ogt float %7304, 0.000000e+00
  %7306 = uitofp i1 %7305 to float
  br label %7307

; <label>:7307                                    ; preds = %7286, %7210
  %7308 = phi float [ %7306, %7286 ], [ 1.000000e+00, %7210 ]
  %7309 = phi float [ %7295, %7286 ], [ %7278, %7210 ]
  %7310 = phi float [ %7296, %7286 ], [ %7279, %7210 ]
  %7311 = phi float [ %7297, %7286 ], [ %7280, %7210 ]
  %7312 = call float @dx.op.dot3.f32(i32 55, float %7233, float %7234, float %7235, float %7309, float %7310, float %7311)  ; Dot3(ax,ay,az,bx,by,bz)
  %7313 = fmul fast float %7312, %7312
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = fsub fast float 1.000000e+00, %7314
  %7316 = fmul fast float %7315, 5.000000e-01
  %7317 = fcmp fast ogt float %7312, 0.000000e+00
  %7318 = fsub fast float 1.000000e+00, %7316
  %7319 = select i1 %7317, float %7316, float %7318
  %7320 = fmul fast float %7319, %7268
  %7321 = fadd fast float %7320, %7266
  %7322 = fmul fast float %7321, 0x3EF0001000000000
  %7323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7322, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7324 = extractvalue %dx.types.ResRet.f32 %7323, 0
  %7325 = fmul fast float %7312, %7250
  %7326 = fadd fast float %7325, %7251
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = select i1 %7271, float 1.000000e+00, float %7327
  %7329 = select i1 %7271, float %7327, float 1.000000e+00
  %7330 = fmul fast float %7276, %7247
  %7331 = fsub fast float 1.000000e+00, %7330
  %7332 = fmul fast float %7331, %7253
  %7333 = call float @dx.op.unary.f32(i32 7, float %7332)  ; Saturate(value)
  %7334 = fmul fast float %7333, %7329
  %7335 = fmul fast float %7334, 2.000000e+00
  %7336 = fsub fast float 3.000000e+00, %7335
  %7337 = fmul fast float %7324, %7308
  %7338 = fmul fast float %7334, %7334
  %7339 = fmul fast float %7338, %7337
  %7340 = fmul fast float %7339, %7336
  %7341 = call float @dx.op.binary.f32(i32 36, float %7340, float %7340)  ; FMin(a,b)
  %7342 = call float @dx.op.binary.f32(i32 36, float %7340, float %7341)  ; FMin(a,b)
  %7343 = fcmp fast ogt float %7342, 0.000000e+00
  br i1 %7343, label %7352, label %7344, !dx.controlflow.hints !124

; <label>:7344                                    ; preds = %7706, %7452, %7307
  %7345 = phi float [ %7212, %7452 ], [ %7212, %7307 ], [ %7746, %7706 ]
  %7346 = phi float [ %7213, %7452 ], [ %7213, %7307 ], [ %7747, %7706 ]
  %7347 = phi float [ %7214, %7452 ], [ %7214, %7307 ], [ %7748, %7706 ]
  %7348 = phi float [ %7215, %7452 ], [ %7215, %7307 ], [ %7740, %7706 ]
  %7349 = phi float [ %7216, %7452 ], [ %7216, %7307 ], [ %7741, %7706 ]
  %7350 = phi float [ %7217, %7452 ], [ %7217, %7307 ], [ %7742, %7706 ]
  %7351 = icmp eq i32 %7211, %7221
  br i1 %7351, label %7749, label %7210

; <label>:7352                                    ; preds = %7307
  %7353 = icmp eq i32 %7269, 255
  br i1 %7353, label %7452, label %7354, !dx.controlflow.hints !125

; <label>:7354                                    ; preds = %7352
  %7355 = mul nuw nsw i32 %7269, 176
  %7356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7355, i32 undef)  ; BufferLoad(srv,index,wot)
  %7357 = extractvalue %dx.types.ResRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.ResRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.ResRet.f32 %7356, 2
  %7360 = extractvalue %dx.types.ResRet.f32 %7356, 3
  %7361 = add nuw nsw i32 %7355, 16
  %7362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7361, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.ResRet.f32 %7362, 1
  %7365 = add nuw nsw i32 %7355, 32
  %7366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7365, i32 undef)  ; BufferLoad(srv,index,wot)
  %7367 = extractvalue %dx.types.ResRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.ResRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.ResRet.f32 %7366, 2
  %7370 = add nuw nsw i32 %7355, 48
  %7371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7370, i32 undef)  ; BufferLoad(srv,index,wot)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = extractvalue %dx.types.ResRet.f32 %7371, 3
  %7376 = add nuw nsw i32 %7355, 64
  %7377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7376, i32 undef)  ; BufferLoad(srv,index,wot)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.ResRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.ResRet.f32 %7377, 2
  %7381 = extractvalue %dx.types.ResRet.f32 %7377, 3
  %7382 = add nuw nsw i32 %7355, 80
  %7383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7382, i32 undef)  ; BufferLoad(srv,index,wot)
  %7384 = extractvalue %dx.types.ResRet.f32 %7383, 0
  %7385 = extractvalue %dx.types.ResRet.f32 %7383, 1
  %7386 = extractvalue %dx.types.ResRet.f32 %7383, 2
  %7387 = extractvalue %dx.types.ResRet.f32 %7383, 3
  %7388 = add nuw nsw i32 %7355, 96
  %7389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7388, i32 undef)  ; BufferLoad(srv,index,wot)
  %7390 = extractvalue %dx.types.ResRet.f32 %7389, 0
  %7391 = extractvalue %dx.types.ResRet.f32 %7389, 1
  %7392 = extractvalue %dx.types.ResRet.f32 %7389, 2
  %7393 = extractvalue %dx.types.ResRet.f32 %7389, 3
  %7394 = bitcast float %7364 to i32
  %7395 = fmul fast float %7369, %113
  %7396 = fmul fast float %7369, %114
  %7397 = fmul fast float %7369, %115
  %7398 = fadd fast float %7395, %193
  %7399 = fadd fast float %7396, %194
  %7400 = fadd fast float %7397, %195
  %7401 = fmul fast float %7398, %7372
  %7402 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7378, float %7401)  ; FMad(a,b,c)
  %7403 = call float @dx.op.tertiary.f32(i32 46, float %7400, float %7384, float %7402)  ; FMad(a,b,c)
  %7404 = fadd fast float %7403, %7390
  %7405 = fmul fast float %7398, %7373
  %7406 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7379, float %7405)  ; FMad(a,b,c)
  %7407 = call float @dx.op.tertiary.f32(i32 46, float %7400, float %7385, float %7406)  ; FMad(a,b,c)
  %7408 = fadd fast float %7407, %7391
  %7409 = fmul fast float %7398, %7374
  %7410 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7380, float %7409)  ; FMad(a,b,c)
  %7411 = call float @dx.op.tertiary.f32(i32 46, float %7400, float %7386, float %7410)  ; FMad(a,b,c)
  %7412 = fadd fast float %7411, %7392
  %7413 = fmul fast float %7398, %7375
  %7414 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7381, float %7413)  ; FMad(a,b,c)
  %7415 = call float @dx.op.tertiary.f32(i32 46, float %7400, float %7387, float %7414)  ; FMad(a,b,c)
  %7416 = fadd fast float %7415, %7393
  %7417 = fdiv fast float %7404, %7416
  %7418 = fdiv fast float %7408, %7416
  %7419 = fdiv fast float %7412, %7416
  %7420 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7419)  ; FMax(a,b)
  %7421 = fmul fast float %276, 0x401921FB60000000
  %7422 = call float @dx.op.unary.f32(i32 13, float %7421)  ; Sin(value)
  %7423 = call float @dx.op.unary.f32(i32 12, float %7421)  ; Cos(value)
  %7424 = fsub fast float -0.000000e+00, %7422
  %7425 = fmul fast float %7359, 5.000000e-01
  %7426 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7427 = call float @dx.op.unary.f32(i32 22, float %7426)  ; Frc(value)
  %7428 = fmul fast float %7427, 0x404A7DD040000000
  %7429 = call float @dx.op.unary.f32(i32 22, float %7428)  ; Frc(value)
  %7430 = fmul fast float %7429, %7368
  %7431 = fadd fast float %7430, %7425
  %7432 = call float @dx.op.tertiary.f32(i32 46, float %7431, float %7424, float 0.000000e+00)  ; FMad(a,b,c)
  %7433 = call float @dx.op.tertiary.f32(i32 46, float %7431, float %7423, float 0.000000e+00)  ; FMad(a,b,c)
  %7434 = fadd fast float %7432, %7417
  %7435 = fadd fast float %7433, %7418
  %7436 = fmul fast float %7434, %7363
  %7437 = fmul fast float %7435, %7363
  %7438 = call float @dx.op.binary.f32(i32 35, float %7436, float %7359)  ; FMax(a,b)
  %7439 = call float @dx.op.binary.f32(i32 35, float %7437, float %7359)  ; FMax(a,b)
  %7440 = call float @dx.op.binary.f32(i32 36, float %7438, float %7360)  ; FMin(a,b)
  %7441 = call float @dx.op.binary.f32(i32 36, float %7439, float %7360)  ; FMin(a,b)
  %7442 = fadd fast float %7440, %7357
  %7443 = fadd fast float %7441, %7358
  %7444 = uitofp i32 %7394 to float
  %7445 = fadd fast float %7420, %7367
  %7446 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7442, float %7443, float %7444, float undef, i32 0, i32 0, i32 undef, float %7445)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = fadd fast float %7447, -1.000000e+00
  %7449 = fmul fast float %7448, %7328
  %7450 = fadd fast float %7449, 1.000000e+00
  %7451 = fmul fast float %7450, %7340
  br label %7452

; <label>:7452                                    ; preds = %7354, %7352
  %7453 = phi float [ %7451, %7354 ], [ %7340, %7352 ]
  %7454 = call float @dx.op.binary.f32(i32 36, float %7453, float %7453)  ; FMin(a,b)
  %7455 = call float @dx.op.binary.f32(i32 36, float %7453, float %7454)  ; FMin(a,b)
  %7456 = fcmp fast ogt float %7455, 0.000000e+00
  br i1 %7456, label %7457, label %7344, !dx.controlflow.hints !126

; <label>:7457                                    ; preds = %7452
  %7458 = fmul fast float %7453, %7262
  %7459 = fmul fast float %7453, %7263
  %7460 = fmul fast float %7453, %7264
  %7461 = fsub fast float %7246, %4965
  %7462 = fcmp fast ogt float %7461, 0.000000e+00
  %7463 = fsub fast float %195, %4965
  %7464 = fcmp fast ogt float %7463, 0.000000e+00
  %7465 = xor i1 %7464, %7462
  %7466 = fsub fast float %4965, %7246
  %7467 = fmul fast float %7466, 2.000000e+00
  %7468 = fadd fast float %7467, %7246
  %7469 = select i1 %7465, float %7246, float %7468
  %7470 = fsub fast float %7469, %195
  %7471 = call float @dx.op.dot3.f32(i32 55, float %7272, float %7273, float %7470, float %7272, float %7273, float %7470)  ; Dot3(ax,ay,az,bx,by,bz)
  %7472 = call float @dx.op.unary.f32(i32 25, float %7471)  ; Rsqrt(value)
  %7473 = fmul fast float %7472, %7272
  %7474 = fmul fast float %7472, %7273
  %7475 = fmul fast float %7472, %7470
  %7476 = fsub fast float %4965, %195
  %7477 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7476)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7473, float %7474, float %7475)  ; Dot3(ax,ay,az,bx,by,bz)
  %7479 = fdiv fast float 1.000000e+00, %7478
  %7480 = fmul fast float %7479, %7477
  %7481 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7463, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7482 = fcmp fast ogt float %7481, 0.000000e+00
  %7483 = fcmp fast olt float %7481, 0.000000e+00
  %7484 = zext i1 %7482 to i32
  %7485 = zext i1 %7483 to i32
  %7486 = sub nsw i32 %7484, %7485
  %7487 = sitofp i32 %7486 to float
  %7488 = fsub fast float %7469, %4965
  %7489 = call float @dx.op.dot3.f32(i32 55, float %7272, float %7273, float %7488, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7490 = fcmp fast ogt float %7489, 0.000000e+00
  %7491 = fcmp fast olt float %7489, 0.000000e+00
  %7492 = zext i1 %7490 to i32
  %7493 = zext i1 %7491 to i32
  %7494 = sub nsw i32 %7492, %7493
  %7495 = sitofp i32 %7494 to float
  %7496 = fcmp fast une float %7487, %7495
  br i1 %7496, label %7497, label %7507

; <label>:7497                                    ; preds = %7457
  %7498 = fmul fast float %7480, %7475
  %7499 = fmul fast float %7480, %7474
  %7500 = fmul fast float %7480, %7473
  %7501 = fmul fast float %7500, %7500
  %7502 = fmul fast float %7499, %7499
  %7503 = fadd fast float %7501, %7502
  %7504 = fmul fast float %7498, %7498
  %7505 = fadd fast float %7503, %7504
  %7506 = call float @dx.op.unary.f32(i32 24, float %7505)  ; Sqrt(value)
  br label %7519

; <label>:7507                                    ; preds = %7457
  %7508 = icmp slt i32 %7486, 0
  br i1 %7508, label %7509, label %7519

; <label>:7509                                    ; preds = %7507
  %7510 = fsub fast float %193, %7244
  %7511 = fsub fast float %194, %7245
  %7512 = fsub fast float %195, %7469
  %7513 = fmul fast float %7510, %7510
  %7514 = fmul fast float %7511, %7511
  %7515 = fadd fast float %7513, %7514
  %7516 = fmul fast float %7512, %7512
  %7517 = fadd fast float %7515, %7516
  %7518 = call float @dx.op.unary.f32(i32 24, float %7517)  ; Sqrt(value)
  br label %7519

; <label>:7519                                    ; preds = %7509, %7507, %7497
  %7520 = phi float [ %7506, %7497 ], [ %7518, %7509 ], [ 0.000000e+00, %7507 ]
  %7521 = and i1 %7464, %7462
  %7522 = fsub fast float -0.000000e+00, %7520
  %7523 = select i1 %7521, float -0.000000e+00, float %7522
  %7524 = fmul fast float %4966, 0x3FF7154760000000
  %7525 = fmul fast float %7524, %7523
  %7526 = fmul fast float %4967, 0x3FF7154760000000
  %7527 = fmul fast float %7526, %7523
  %7528 = fmul fast float %4968, 0x3FF7154760000000
  %7529 = fmul fast float %7528, %7523
  %7530 = call float @dx.op.unary.f32(i32 21, float %7525)  ; Exp(value)
  %7531 = call float @dx.op.unary.f32(i32 21, float %7527)  ; Exp(value)
  %7532 = call float @dx.op.unary.f32(i32 21, float %7529)  ; Exp(value)
  %7533 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7534 = call float @dx.op.unary.f32(i32 7, float %7531)  ; Saturate(value)
  %7535 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7536 = fmul fast float %7458, %7533
  %7537 = fmul fast float %7459, %7534
  %7538 = fmul fast float %7460, %7535
  %7539 = fsub fast float %7278, %5757
  %7540 = fsub fast float %7279, %5756
  %7541 = fsub fast float %7280, %5755
  %7542 = call float @dx.op.dot3.f32(i32 55, float %7539, float %7540, float %7541, float %7539, float %7540, float %7541)  ; Dot3(ax,ay,az,bx,by,bz)
  %7543 = call float @dx.op.unary.f32(i32 25, float %7542)  ; Rsqrt(value)
  %7544 = fmul fast float %7543, %7539
  %7545 = fmul fast float %7543, %7540
  %7546 = fmul fast float %7543, %7541
  %7547 = call float @dx.op.dot3.f32(i32 55, float %7278, float %7279, float %7280, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %7548 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5753, float %5752, float %7544, float %7545, float %7546)  ; Dot3(ax,ay,az,bx,by,bz)
  %7549 = call float @dx.op.unary.f32(i32 7, float %7547)  ; Saturate(value)
  %7550 = fmul fast float %7549, %7285
  %7551 = fmul fast float %7549, %7549
  %7552 = fmul fast float %7551, %5785
  %7553 = call float @dx.op.unary.f32(i32 7, float %7552)  ; Saturate(value)
  %7554 = fmul fast float %7550, %7553
  %7555 = bitcast float %7275 to i32
  %7556 = ashr i32 %7555, 1
  %7557 = sub nsw i32 1597463007, %7556
  %7558 = bitcast i32 %7557 to float
  %7559 = fmul fast float %7558, %7272
  %7560 = fmul fast float %7558, %7273
  %7561 = fmul fast float %7558, %7274
  %7562 = fsub fast float %7559, %5757
  %7563 = fsub fast float %7560, %5756
  %7564 = fsub fast float %7561, %5755
  %7565 = call float @dx.op.dot3.f32(i32 55, float %7562, float %7563, float %7564, float %7562, float %7563, float %7564)  ; Dot3(ax,ay,az,bx,by,bz)
  %7566 = call float @dx.op.unary.f32(i32 25, float %7565)  ; Rsqrt(value)
  %7567 = fmul fast float %7562, %7566
  %7568 = fmul fast float %7563, %7566
  %7569 = fmul fast float %7564, %7566
  %7570 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %7567, float %7568, float %7569)  ; Dot3(ax,ay,az,bx,by,bz)
  %7571 = fmul fast float %7570, %7570
  %7572 = call float @dx.op.unary.f32(i32 6, float %7547)  ; FAbs(value)
  %7573 = fsub fast float 1.000000e+00, %5767
  %7574 = call float @dx.op.binary.f32(i32 35, float %7573, float 0x3F847AE140000000)  ; FMax(a,b)
  %7575 = fmul fast float %7574, %7574
  %7576 = fmul fast float %7575, %7575
  %7577 = fsub fast float 1.000000e+00, %7576
  %7578 = fmul fast float %5772, %5772
  %7579 = fmul fast float %7578, %7577
  %7580 = fadd fast float %7579, %7576
  %7581 = bitcast float %7580 to i32
  %7582 = ashr i32 %7581, 1
  %7583 = add nsw i32 %7582, 532487669
  %7584 = bitcast i32 %7583 to float
  %7585 = fadd fast float %7584, %5772
  %7586 = fmul fast float %7576, %7571
  %7587 = fsub fast float 1.000000e+00, %7571
  %7588 = fadd fast float %7587, %7586
  %7589 = fmul fast float %7572, %7572
  %7590 = fmul fast float %7589, %7577
  %7591 = fadd fast float %7590, %7576
  %7592 = bitcast float %7591 to i32
  %7593 = ashr i32 %7592, 1
  %7594 = add nsw i32 %7593, 532487669
  %7595 = bitcast i32 %7594 to float
  %7596 = fadd fast float %7595, %7572
  %7597 = fmul fast float %7588, %7588
  %7598 = fmul fast float %7597, %7585
  %7599 = fmul fast float %7598, %7596
  %7600 = fdiv fast float 1.000000e+00, %7599
  %7601 = bitcast float %7576 to i32
  %7602 = sitofp i32 %7601 to float
  %7603 = fmul fast float %7602, 0x3FE7F73180000000
  %7604 = fadd fast float %7603, 0x41AFE27C40000000
  %7605 = fptosi float %7604 to i32
  %7606 = bitcast i32 %7605 to float
  %7607 = fmul fast float %7241, 0x3FD80E9D60000000
  %7608 = fmul fast float %7607, %7558
  %7609 = fadd fast float %7606, %7608
  %7610 = bitcast float %7609 to i32
  %7611 = sub nsw i32 2129859010, %7610
  %7612 = bitcast i32 %7611 to float
  %7613 = fmul fast float %7576, %7600
  %7614 = fmul fast float %7613, %7606
  %7615 = fmul fast float %7614, %7612
  %7616 = fmul fast float %5885, 0x3FF9999980000000
  %7617 = fsub fast float 5.000000e+00, %7616
  %7618 = call float @dx.op.unary.f32(i32 6, float %7548)  ; FAbs(value)
  %7619 = fsub fast float 1.000000e+00, %7618
  %7620 = fmul fast float %5885, 0x41D9660740000000
  %7621 = fadd fast float %7620, 0xC1EFBF8940000000
  %7622 = bitcast float %7619 to i32
  %7623 = sitofp i32 %7622 to float
  %7624 = fmul fast float %7623, %7617
  %7625 = fadd fast float %7621, %7624
  %7626 = fptosi float %7625 to i32
  %7627 = bitcast i32 %7626 to float
  %7628 = fsub fast float 1.000000e+00, %5761
  %7629 = fsub fast float 1.000000e+00, %5762
  %7630 = fsub fast float 1.000000e+00, %5770
  %7631 = fmul fast float %7627, %7628
  %7632 = fmul fast float %7627, %7629
  %7633 = fmul fast float %7627, %7630
  %7634 = fadd fast float %7631, %5761
  %7635 = fadd fast float %7632, %5762
  %7636 = fadd fast float %7633, %5770
  br i1 %5908, label %7637, label %7660

; <label>:7637                                    ; preds = %7519
  %7638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4560, float %7618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7639 = extractvalue %dx.types.ResRet.f32 %7638, 0
  %7640 = extractvalue %dx.types.ResRet.f32 %7638, 1
  %7641 = extractvalue %dx.types.ResRet.f32 %7638, 2
  %7642 = fadd fast float %7639, -5.000000e-01
  %7643 = fadd fast float %7640, -5.000000e-01
  %7644 = fadd fast float %7641, -5.000000e-01
  %7645 = fmul fast float %5761, 4.000000e+00
  %7646 = fmul fast float %7645, %7628
  %7647 = fmul fast float %7646, %7642
  %7648 = fmul fast float %5762, 4.000000e+00
  %7649 = fmul fast float %7648, %7629
  %7650 = fmul fast float %7649, %7643
  %7651 = fmul fast float %5770, 4.000000e+00
  %7652 = fmul fast float %7651, %7630
  %7653 = fmul fast float %7652, %7644
  %7654 = fadd fast float %7647, %7634
  %7655 = fadd fast float %7650, %7635
  %7656 = fadd fast float %7653, %7636
  %7657 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7658 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7659 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  br label %7660

; <label>:7660                                    ; preds = %7637, %7519
  %7661 = phi float [ %7657, %7637 ], [ %7634, %7519 ]
  %7662 = phi float [ %7658, %7637 ], [ %7635, %7519 ]
  %7663 = phi float [ %7659, %7637 ], [ %7636, %7519 ]
  %7664 = fmul fast float %7547, 9.843750e-01
  %7665 = fadd fast float %7664, 7.812500e-03
  %7666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7665, float %5889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7667 = extractvalue %dx.types.ResRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.ResRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.ResRet.f32 %7666, 2
  %7670 = extractvalue %dx.types.ResRet.f32 %7666, 3
  %7671 = fsub fast float %7669, %7667
  %7672 = fsub fast float %7670, %7668
  %7673 = fmul fast float %7671, %5895
  %7674 = fmul fast float %7672, %5895
  %7675 = fadd fast float %7673, %7667
  %7676 = fadd fast float %7674, %7668
  %7677 = fmul fast float %7675, %5761
  %7678 = fmul fast float %7675, %5762
  %7679 = fmul fast float %7675, %5770
  %7680 = fadd fast float %7677, %7676
  %7681 = fadd fast float %7678, %7676
  %7682 = fadd fast float %7679, %7676
  br i1 %5908, label %7683, label %7706

; <label>:7683                                    ; preds = %7660
  %7684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4560, float %7547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.ResRet.f32 %7684, 2
  %7688 = fadd fast float %7685, -5.000000e-01
  %7689 = fadd fast float %7686, -5.000000e-01
  %7690 = fadd fast float %7687, -5.000000e-01
  %7691 = fmul fast float %5761, 4.000000e+00
  %7692 = fmul fast float %7691, %7628
  %7693 = fmul fast float %7692, %7688
  %7694 = fmul fast float %5762, 4.000000e+00
  %7695 = fmul fast float %7694, %7629
  %7696 = fmul fast float %7695, %7689
  %7697 = fmul fast float %5770, 4.000000e+00
  %7698 = fmul fast float %7697, %7630
  %7699 = fmul fast float %7698, %7690
  %7700 = fadd fast float %7693, %7680
  %7701 = fadd fast float %7696, %7681
  %7702 = fadd fast float %7699, %7682
  %7703 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7704 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7705 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  br label %7706

; <label>:7706                                    ; preds = %7683, %7660
  %7707 = phi float [ %7703, %7683 ], [ %7680, %7660 ]
  %7708 = phi float [ %7704, %7683 ], [ %7681, %7660 ]
  %7709 = phi float [ %7705, %7683 ], [ %7682, %7660 ]
  %7710 = call float @dx.op.binary.f32(i32 35, float %7708, float %7709)  ; FMax(a,b)
  %7711 = call float @dx.op.binary.f32(i32 35, float %7707, float %7710)  ; FMax(a,b)
  %7712 = fsub fast float 1.000000e+00, %7711
  %7713 = fmul fast float %7661, %7615
  %7714 = fmul fast float %7662, %7615
  %7715 = fmul fast float %7663, %7615
  %7716 = fsub fast float 1.000000e+00, %7548
  %7717 = bitcast float %7716 to i32
  %7718 = sitofp i32 %7717 to float
  %7719 = fmul fast float %7718, 5.000000e+00
  %7720 = fadd fast float %7719, 0xC1EFBF8940000000
  %7721 = fptosi float %7720 to i32
  %7722 = bitcast i32 %7721 to float
  %7723 = fmul fast float %7722, %4561
  %7724 = fmul fast float %7712, %7723
  %7725 = fmul fast float %7724, %5958
  %7726 = fmul fast float %7724, %5959
  %7727 = fmul fast float %7724, %5960
  %7728 = fadd fast float %7725, %7713
  %7729 = fadd fast float %7726, %7714
  %7730 = fadd fast float %7727, %7715
  %7731 = fmul fast float %7536, %4557
  %7732 = fmul fast float %7731, %7554
  %7733 = fmul fast float %7732, %7712
  %7734 = fmul fast float %7537, %4557
  %7735 = fmul fast float %7734, %7554
  %7736 = fmul fast float %7735, %7712
  %7737 = fmul fast float %7538, %4557
  %7738 = fmul fast float %7737, %7554
  %7739 = fmul fast float %7738, %7712
  %7740 = fadd fast float %7733, %7215
  %7741 = fadd fast float %7736, %7216
  %7742 = fadd fast float %7739, %7217
  %7743 = fmul fast float %7732, %7728
  %7744 = fmul fast float %7735, %7729
  %7745 = fmul fast float %7738, %7730
  %7746 = fadd fast float %7743, %7212
  %7747 = fadd fast float %7744, %7213
  %7748 = fadd fast float %7745, %7214
  br label %7344

; <label>:7749                                    ; preds = %7344
  br label %7750

; <label>:7750                                    ; preds = %7749, %7178
  %7751 = phi float [ %7180, %7178 ], [ %7345, %7749 ]
  %7752 = phi float [ %7181, %7178 ], [ %7346, %7749 ]
  %7753 = phi float [ %7182, %7178 ], [ %7347, %7749 ]
  %7754 = phi float [ %7183, %7178 ], [ %7348, %7749 ]
  %7755 = phi float [ %7184, %7178 ], [ %7349, %7749 ]
  %7756 = phi float [ %7185, %7178 ], [ %7350, %7749 ]
  %7757 = add i32 %7179, 1
  %7758 = icmp ugt i32 %7757, %7175
  br i1 %7758, label %7759, label %7178

; <label>:7759                                    ; preds = %7750
  br label %7760

; <label>:7760                                    ; preds = %7759, %7128, %7118
  %7761 = phi float [ %7119, %7118 ], [ %7119, %7128 ], [ %7751, %7759 ]
  %7762 = phi float [ %7120, %7118 ], [ %7120, %7128 ], [ %7752, %7759 ]
  %7763 = phi float [ %7121, %7118 ], [ %7121, %7128 ], [ %7753, %7759 ]
  %7764 = phi float [ %7122, %7118 ], [ %7122, %7128 ], [ %7754, %7759 ]
  %7765 = phi float [ %7123, %7118 ], [ %7123, %7128 ], [ %7755, %7759 ]
  %7766 = phi float [ %7124, %7118 ], [ %7124, %7128 ], [ %7756, %7759 ]
  %7767 = fmul fast float %4557, %4557
  %7768 = fmul fast float %7767, %5984
  %7769 = fsub fast float -0.000000e+00, %7768
  %7770 = fmul fast float %7767, %5985
  %7771 = fsub fast float -0.000000e+00, %7770
  %7772 = fmul fast float %7767, %5986
  %7773 = fsub fast float -0.000000e+00, %7772
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = fmul fast float %7775, %5990
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7779 = fsub fast float 1.000000e+00, %4565
  %7780 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7781 = fadd fast float %7766, %4563
  %7782 = fmul fast float %7781, %4565
  %7783 = fmul fast float %7780, %7778
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7786 = fmul fast float %7764, %5758
  %7787 = fmul fast float %7765, %5759
  %7788 = fmul fast float %7766, %5760
  %7789 = fcmp fast ogt float %97, %228
  %7790 = and i1 %7789, %4971
  %7791 = or i1 %4977, %7790
  %7792 = icmp eq i32 %4970, 2
  %7793 = fcmp fast ole float %97, %228
  %7794 = and i1 %7793, %7792
  %7795 = or i1 %7794, %7791
  br i1 %7790, label %7796, label %8053

; <label>:7796                                    ; preds = %7760
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 2
  %7799 = extractvalue %dx.types.CBufRet.f32 %7797, 3
  %7800 = fmul fast float %7798, %106
  %7801 = fmul fast float %7799, %107
  %7802 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  %7803 = call float @dx.op.unary.f32(i32 7, float %7801)  ; Saturate(value)
  %7804 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7802, float %7803, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7805 = extractvalue %dx.types.ResRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.ResRet.f32 %7804, 1
  %7807 = extractvalue %dx.types.ResRet.f32 %7804, 2
  %7808 = extractvalue %dx.types.ResRet.f32 %7804, 3
  %7809 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7802, float %7803, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7810 = extractvalue %dx.types.ResRet.f32 %7809, 0
  %7811 = extractvalue %dx.types.ResRet.f32 %7809, 1
  %7812 = extractvalue %dx.types.ResRet.f32 %7809, 2
  %7813 = extractvalue %dx.types.ResRet.f32 %7809, 3
  %7814 = call float @dx.op.binary.f32(i32 35, float %7806, float %7807)  ; FMax(a,b)
  %7815 = call float @dx.op.binary.f32(i32 35, float %7805, float %7814)  ; FMax(a,b)
  %7816 = call float @dx.op.binary.f32(i32 35, float %7815, float %7808)  ; FMax(a,b)
  %7817 = call float @dx.op.binary.f32(i32 36, float %7811, float %7812)  ; FMin(a,b)
  %7818 = call float @dx.op.binary.f32(i32 36, float %7810, float %7817)  ; FMin(a,b)
  %7819 = call float @dx.op.binary.f32(i32 36, float %7818, float %7813)  ; FMin(a,b)
  %7820 = fmul fast float %7816, 2.550000e+02
  %7821 = fadd fast float %7820, 0x3F70101020000000
  %7822 = fptoui float %7821 to i32
  %7823 = fmul fast float %7819, 2.550000e+02
  %7824 = fadd fast float %7823, 0x3F70101020000000
  %7825 = fptoui float %7824 to i32
  %7826 = icmp ult i32 %7822, %7825
  br i1 %7826, label %7827, label %7995

; <label>:7827                                    ; preds = %7796
  %7828 = fcmp fast ogt float %96, 9.843750e-01
  %7829 = fadd fast float %97, -4.000000e+00
  %7830 = select i1 %7828, float -4.000000e+00, float %7829
  %7831 = call float @dx.op.binary.f32(i32 35, float %7830, float 0.000000e+00)  ; FMax(a,b)
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = fadd fast float %7833, %7831
  %7835 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7836 = fmul fast float %7834, %7835
  %7837 = call float @dx.op.unary.f32(i32 23, float %7836)  ; Log(value)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7839 = fmul fast float %7838, %7837
  %7840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7840, 2
  %7842 = fmul fast float %7839, %7841
  %7843 = call float @dx.op.unary.f32(i32 7, float %7842)  ; Saturate(value)
  %7844 = uitofp i32 %7822 to float
  %7845 = uitofp i32 %7825 to float
  %7846 = fadd fast float %7844, 5.000000e-01
  %7847 = fadd fast float %7845, 5.000000e-01
  %7848 = fmul fast float %7841, %7846
  %7849 = fmul fast float %7841, %7847
  %7850 = fadd fast float %7848, 0x3F0FFB4800000000
  %7851 = fadd fast float %7849, 0xBF0FFB4800000000
  %7852 = call float @dx.op.binary.f32(i32 35, float %7843, float %7850)  ; FMax(a,b)
  %7853 = call float @dx.op.binary.f32(i32 36, float %7852, float %7851)  ; FMin(a,b)
  %7854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7854, 1
  %7856 = extractvalue %dx.types.CBufRet.f32 %7854, 2
  %7857 = extractvalue %dx.types.CBufRet.f32 %7854, 0
  %7858 = fmul fast float %7855, %7853
  %7859 = fadd fast float %7857, %7858
  %7860 = fadd fast float %7857, %7856
  %7861 = fsub fast float %7855, %7856
  %7862 = fadd fast float %7861, %7857
  %7863 = call float @dx.op.binary.f32(i32 35, float %7859, float %7860)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7863, float %7862)  ; FMin(a,b)
  %7865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7802, float %7803, float %7864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7866 = extractvalue %dx.types.ResRet.f32 %7865, 0
  %7867 = extractvalue %dx.types.ResRet.f32 %7865, 1
  %7868 = extractvalue %dx.types.ResRet.f32 %7865, 2
  %7869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7870 = extractvalue %dx.types.CBufRet.i32 %7869, 0
  %7871 = extractvalue %dx.types.CBufRet.i32 %7869, 1
  %7872 = uitofp i32 %7870 to float
  %7873 = uitofp i32 %7871 to float
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = fmul fast float %7872, %7802
  %7878 = fmul fast float %7873, %7803
  %7879 = fadd fast float %7877, -5.000000e-01
  %7880 = fadd fast float %7878, -5.000000e-01
  %7881 = call float @dx.op.unary.f32(i32 22, float %7879)  ; Frc(value)
  %7882 = call float @dx.op.unary.f32(i32 22, float %7880)  ; Frc(value)
  %7883 = fmul fast float %7881, %7881
  %7884 = fmul fast float %7883, %7881
  %7885 = fsub fast float 3.000000e+00, %7881
  %7886 = fmul fast float %7883, %7885
  %7887 = fmul fast float %7881, 3.000000e+00
  %7888 = fmul fast float %7884, 3.000000e+00
  %7889 = fmul fast float %7883, 6.000000e+00
  %7890 = fsub fast float %7888, %7889
  %7891 = fadd fast float %7890, 4.000000e+00
  %7892 = fmul fast float %7891, 0x3FC5555560000000
  %7893 = fmul fast float %7884, -3.000000e+00
  %7894 = fadd fast float %7883, %7881
  %7895 = fmul fast float %7894, 3.000000e+00
  %7896 = fadd fast float %7893, 1.000000e+00
  %7897 = fadd fast float %7896, %7895
  %7898 = fmul fast float %7884, 0x3FC5555560000000
  %7899 = fmul fast float %7882, %7882
  %7900 = fmul fast float %7899, %7882
  %7901 = fsub fast float 3.000000e+00, %7882
  %7902 = fmul fast float %7899, %7901
  %7903 = fmul fast float %7882, 3.000000e+00
  %7904 = fmul fast float %7900, 3.000000e+00
  %7905 = fmul fast float %7899, 6.000000e+00
  %7906 = fsub fast float %7904, %7905
  %7907 = fadd fast float %7906, 4.000000e+00
  %7908 = fmul fast float %7907, 0x3FC5555560000000
  %7909 = fmul fast float %7900, -3.000000e+00
  %7910 = fadd fast float %7899, %7882
  %7911 = fmul fast float %7910, 3.000000e+00
  %7912 = fadd fast float %7909, 1.000000e+00
  %7913 = fadd fast float %7912, %7911
  %7914 = fmul fast float %7900, 0x3FC5555560000000
  %7915 = fadd fast float %7881, 1.000000e+00
  %7916 = fsub fast float 1.000000e+00, %7887
  %7917 = fadd fast float %7916, %7886
  %7918 = fadd fast float %7917, %7891
  %7919 = fmul fast float %7918, 0x3FC5555560000000
  %7920 = fdiv fast float %7892, %7919
  %7921 = fsub fast float %7915, %7920
  %7922 = fsub fast float 1.000000e+00, %7881
  %7923 = fadd fast float %7897, %7884
  %7924 = fmul fast float %7923, 0x3FC5555560000000
  %7925 = fdiv fast float %7898, %7924
  %7926 = fadd fast float %7922, %7925
  %7927 = fadd fast float %7882, 1.000000e+00
  %7928 = fsub fast float 1.000000e+00, %7903
  %7929 = fadd fast float %7928, %7902
  %7930 = fadd fast float %7929, %7907
  %7931 = fmul fast float %7930, 0x3FC5555560000000
  %7932 = fdiv fast float %7908, %7931
  %7933 = fsub fast float %7927, %7932
  %7934 = fsub fast float 1.000000e+00, %7882
  %7935 = fadd fast float %7913, %7900
  %7936 = fmul fast float %7935, 0x3FC5555560000000
  %7937 = fdiv fast float %7914, %7936
  %7938 = fadd fast float %7937, %7934
  %7939 = fmul fast float %7921, %7875
  %7940 = fsub fast float %7802, %7939
  %7941 = fmul fast float %7926, %7875
  %7942 = fadd fast float %7941, %7802
  %7943 = fmul fast float %7938, %7876
  %7944 = fadd fast float %7943, %7803
  %7945 = fmul fast float %7933, %7876
  %7946 = fsub fast float %7803, %7945
  %7947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7940, float %7946, float %7864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7948 = extractvalue %dx.types.ResRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.ResRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.ResRet.f32 %7947, 2
  %7951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7942, float %7946, float %7864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7940, float %7944, float %7864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7956 = extractvalue %dx.types.ResRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.ResRet.f32 %7955, 1
  %7958 = extractvalue %dx.types.ResRet.f32 %7955, 2
  %7959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7942, float %7944, float %7864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7960 = extractvalue %dx.types.ResRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.ResRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.ResRet.f32 %7959, 2
  %7963 = fsub fast float %7956, %7948
  %7964 = fsub fast float %7957, %7949
  %7965 = fsub fast float %7958, %7950
  %7966 = fmul fast float %7963, %7936
  %7967 = fmul fast float %7964, %7936
  %7968 = fmul fast float %7965, %7936
  %7969 = fadd fast float %7966, %7948
  %7970 = fadd fast float %7967, %7949
  %7971 = fadd fast float %7968, %7950
  %7972 = fsub fast float %7960, %7952
  %7973 = fsub fast float %7961, %7953
  %7974 = fsub fast float %7962, %7954
  %7975 = fmul fast float %7972, %7936
  %7976 = fmul fast float %7973, %7936
  %7977 = fmul fast float %7974, %7936
  %7978 = fsub fast float %7952, %7969
  %7979 = fadd fast float %7978, %7975
  %7980 = fsub fast float %7953, %7970
  %7981 = fadd fast float %7980, %7976
  %7982 = fsub fast float %7954, %7971
  %7983 = fadd fast float %7982, %7977
  %7984 = fmul fast float %7979, %7924
  %7985 = fmul fast float %7981, %7924
  %7986 = fmul fast float %7983, %7924
  %7987 = fadd fast float %7984, %7969
  %7988 = fadd fast float %7985, %7970
  %7989 = fadd fast float %7986, %7971
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 1
  %7992 = fmul fast float %7987, %7991
  %7993 = fmul fast float %7988, %7991
  %7994 = fmul fast float %7989, %7991
  br label %7995

; <label>:7995                                    ; preds = %7827, %7796
  %7996 = phi float [ %7866, %7827 ], [ 1.000000e+00, %7796 ]
  %7997 = phi float [ %7867, %7827 ], [ 1.000000e+00, %7796 ]
  %7998 = phi float [ %7868, %7827 ], [ 1.000000e+00, %7796 ]
  %7999 = phi float [ %7992, %7827 ], [ 0.000000e+00, %7796 ]
  %8000 = phi float [ %7993, %7827 ], [ 0.000000e+00, %7796 ]
  %8001 = phi float [ %7994, %7827 ], [ 0.000000e+00, %7796 ]
  %8002 = fmul fast float %7999, %7769
  %8003 = fmul fast float %8000, %7771
  %8004 = fmul fast float %8001, %7773
  %8005 = call float @dx.op.dot3.f32(i32 55, float %7996, float %7997, float %7998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8006 = call float @dx.op.dot3.f32(i32 55, float %8002, float %8003, float %8004, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8007 = select i1 %265, float %8005, float %7996
  %8008 = select i1 %265, float %8005, float %7997
  %8009 = select i1 %265, float 1.000000e+00, float %7998
  %8010 = select i1 %265, float %8006, float %8002
  %8011 = select i1 %265, float 0.000000e+00, float %8003
  %8012 = select i1 %265, float 0.000000e+00, float %8004
  %8013 = fmul fast float %8007, %7786
  %8014 = fmul fast float %8008, %7787
  %8015 = fmul fast float %8009, %7788
  %8016 = fadd fast float %8013, %8010
  %8017 = fadd fast float %8014, %8011
  %8018 = fadd fast float %8012, %8015
  %8019 = fmul fast float %8007, %7761
  %8020 = fmul fast float %8008, %7762
  %8021 = fmul fast float %8009, %7763
  %8022 = fmul fast float %142, %7798
  %8023 = fmul fast float %144, %7799
  %8024 = fsub fast float 1.000000e+00, %8022
  %8025 = fsub fast float 1.000000e+00, %8023
  %8026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8027 = extractvalue %dx.types.CBufRet.f32 %8026, 0
  %8028 = extractvalue %dx.types.CBufRet.f32 %8026, 1
  %8029 = extractvalue %dx.types.CBufRet.f32 %8026, 2
  %8030 = fmul fast float %8024, %8027
  %8031 = fmul fast float %8024, %8028
  %8032 = fmul fast float %8024, %8029
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.CBufRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.CBufRet.f32 %8033, 2
  %8037 = fmul fast float %8025, %8034
  %8038 = fmul fast float %8025, %8035
  %8039 = fmul fast float %8025, %8036
  %8040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8041 = extractvalue %dx.types.CBufRet.f32 %8040, 0
  %8042 = extractvalue %dx.types.CBufRet.f32 %8040, 1
  %8043 = extractvalue %dx.types.CBufRet.f32 %8040, 2
  %8044 = fadd fast float %8037, %8041
  %8045 = fadd fast float %8044, %8030
  %8046 = fadd fast float %8038, %8042
  %8047 = fadd fast float %8046, %8031
  %8048 = fadd fast float %8039, %8043
  %8049 = fadd fast float %8048, %8032
  %8050 = fmul fast float %8045, %228
  %8051 = fmul fast float %8047, %228
  %8052 = fmul fast float %8049, %228
  br label %8053

; <label>:8053                                    ; preds = %7995, %7760
  %8054 = phi float [ %8050, %7995 ], [ %193, %7760 ]
  %8055 = phi float [ %8051, %7995 ], [ %194, %7760 ]
  %8056 = phi float [ %8052, %7995 ], [ %195, %7760 ]
  %8057 = phi float [ %228, %7995 ], [ %97, %7760 ]
  %8058 = phi float [ %8016, %7995 ], [ %7786, %7760 ]
  %8059 = phi float [ %8017, %7995 ], [ %7787, %7760 ]
  %8060 = phi float [ %8018, %7995 ], [ %7788, %7760 ]
  %8061 = phi float [ %8019, %7995 ], [ %7761, %7760 ]
  %8062 = phi float [ %8020, %7995 ], [ %7762, %7760 ]
  %8063 = phi float [ %8021, %7995 ], [ %7763, %7760 ]
  %8064 = phi float [ %7996, %7995 ], [ 1.000000e+00, %7760 ]
  br i1 %7795, label %9219, label %8065

; <label>:8065                                    ; preds = %8053
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 0
  %8068 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8069 = extractvalue %dx.types.CBufRet.f32 %8066, 2
  %8070 = extractvalue %dx.types.CBufRet.f32 %8066, 3
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.CBufRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.CBufRet.f32 %8071, 2
  %8075 = extractvalue %dx.types.CBufRet.f32 %8071, 3
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.CBufRet.f32 %8076, 2
  %8080 = extractvalue %dx.types.CBufRet.f32 %8076, 3
  %8081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.CBufRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.CBufRet.f32 %8081, 2
  %8085 = extractvalue %dx.types.CBufRet.f32 %8081, 3
  %8086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.f32 %8086, 3
  %8088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8088, 3
  %8090 = extractvalue %dx.types.CBufRet.f32 %8088, 0
  %8091 = extractvalue %dx.types.CBufRet.f32 %8088, 1
  %8092 = extractvalue %dx.types.CBufRet.f32 %8088, 2
  %8093 = fcmp fast olt float %8092, -5.000000e-01
  %8094 = call float @dx.op.dot3.f32(i32 55, float %8054, float %8055, float %8056, float %8054, float %8055, float %8056)  ; Dot3(ax,ay,az,bx,by,bz)
  %8095 = call float @dx.op.unary.f32(i32 25, float %8094)  ; Rsqrt(value)
  %8096 = fmul fast float %8095, %8094
  %8097 = fmul fast float %8095, %8054
  %8098 = fmul fast float %8095, %8055
  %8099 = fmul fast float %8095, %8056
  %8100 = fadd fast float %8096, %8070
  %8101 = call float @dx.op.dot3.f32(i32 55, float %8097, float %8098, float %8099, float %8067, float %8068, float %8069)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.i32 %8102, 1
  %8104 = and i32 %8103, 1
  %8105 = icmp ne i32 %8104, 0
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8108 = fcmp fast ogt float %8107, 0.000000e+00
  %8109 = and i1 %8105, %8108
  br i1 %8109, label %8110, label %8516, !dx.controlflow.hints !127

; <label>:8110                                    ; preds = %8065
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 3
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8117 = fsub fast float %8114, %8116
  %8118 = and i32 %8103, 2
  %8119 = extractvalue %dx.types.CBufRet.i32 %8102, 0
  %8120 = call i32 @dx.op.binary.i32(i32 40, i32 %8119, i32 3)  ; UMin(a,b)
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8125 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8126 = fsub fast float %8122, %8124
  %8127 = fsub fast float %8123, %8125
  %8128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.f32 %8128, 0
  %8130 = fcmp fast ogt float %8129, 0.000000e+00
  %8131 = fsub fast float -0.000000e+00, %8126
  %8132 = fsub fast float -0.000000e+00, %8127
  %8133 = call float @dx.op.dot2.f32(i32 54, float %8097, float %8098, float %8097, float %8098)  ; Dot2(ax,ay,bx,by)
  %8134 = call float @dx.op.dot2.f32(i32 54, float %8097, float %8098, float %8131, float %8132)  ; Dot2(ax,ay,bx,by)
  %8135 = fmul fast float %8134, 2.000000e+00
  %8136 = call float @dx.op.dot2.f32(i32 54, float %8131, float %8132, float %8131, float %8132)  ; Dot2(ax,ay,bx,by)
  %8137 = fmul fast float %8129, %8129
  %8138 = fsub fast float %8136, %8137
  %8139 = fmul fast float %8135, %8135
  %8140 = fmul fast float %8133, 4.000000e+00
  %8141 = fmul fast float %8140, %8138
  %8142 = fsub fast float %8139, %8141
  %8143 = fcmp fast ogt float %8142, 0.000000e+00
  br i1 %8143, label %8144, label %8159

; <label>:8144                                    ; preds = %8110
  %8145 = fcmp fast ogt float %8135, 0.000000e+00
  %8146 = call float @dx.op.unary.f32(i32 24, float %8142)  ; Sqrt(value)
  %8147 = fsub fast float -0.000000e+00, %8146
  %8148 = select i1 %8145, float %8146, float %8147
  %8149 = fadd fast float %8148, %8135
  %8150 = fmul float %8149, -5.000000e-01
  %8151 = fdiv fast float %8150, %8133
  %8152 = call float @dx.op.binary.f32(i32 35, float %8151, float 0.000000e+00)  ; FMax(a,b)
  %8153 = call float @dx.op.binary.f32(i32 36, float %8096, float %8152)  ; FMin(a,b)
  %8154 = fdiv fast float %8138, %8150
  %8155 = call float @dx.op.binary.f32(i32 35, float %8154, float 0.000000e+00)  ; FMax(a,b)
  %8156 = call float @dx.op.binary.f32(i32 36, float %8096, float %8155)  ; FMin(a,b)
  %8157 = call float @dx.op.binary.f32(i32 36, float %8153, float %8156)  ; FMin(a,b)
  %8158 = call float @dx.op.binary.f32(i32 35, float %8153, float %8156)  ; FMax(a,b)
  br label %8159

; <label>:8159                                    ; preds = %8144, %8110
  %8160 = phi float [ %8158, %8144 ], [ -1.000000e+00, %8110 ]
  %8161 = phi float [ %8157, %8144 ], [ -1.000000e+00, %8110 ]
  %8162 = phi i1 [ true, %8144 ], [ false, %8110 ]
  %8163 = and i1 %8130, %8162
  br i1 %8163, label %8164, label %8166

; <label>:8164                                    ; preds = %8159
  %8165 = fcmp fast oeq float %8161, %8160
  br i1 %8165, label %8469, label %8167

; <label>:8166                                    ; preds = %8159
  br i1 %8130, label %8469, label %8167

; <label>:8167                                    ; preds = %8166, %8164
  %8168 = phi float [ %8096, %8166 ], [ %8160, %8164 ]
  %8169 = phi float [ 0.000000e+00, %8166 ], [ %8161, %8164 ]
  %8170 = icmp ne i32 %8118, 0
  %8171 = fmul fast float %8168, %8099
  %8172 = fadd fast float %8171, %8112
  %8173 = fmul fast float %8172, %8168
  %8174 = select i1 %8170, float 0.000000e+00, float %8173
  %8175 = fcmp fast oeq float %8099, 0.000000e+00
  %8176 = fdiv fast float %8117, %8099
  %8177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8176)  ; FMax(a,b)
  %8178 = select i1 %8175, float %8168, float %8177
  %8179 = call float @dx.op.binary.f32(i32 36, float %8168, float %8178)  ; FMin(a,b)
  %8180 = fcmp fast ogt float %8099, 0.000000e+00
  %8181 = fcmp fast olt float %8117, 0.000000e+00
  br i1 %8180, label %8182, label %8239

; <label>:8182                                    ; preds = %8167
  %8183 = icmp eq i32 %8118, 0
  br i1 %8181, label %8184, label %8228

; <label>:8184                                    ; preds = %8182
  %8185 = select i1 %8183, float %8168, float 0.000000e+00
  %8186 = fsub fast float -0.000000e+00, %8185
  %8187 = call float @dx.op.unary.f32(i32 6, float %8186)  ; FAbs(value)
  %8188 = fmul fast float %8185, %8099
  %8189 = fadd fast float %8188, %8112
  %8190 = fmul fast float %8187, %8189
  %8191 = fsub fast float %8174, %8190
  %8192 = fsub fast float %8168, %8187
  %8193 = select i1 %8183, float %8192, float 0.000000e+00
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8202 = extractvalue %dx.types.CBufRet.f32 %8198, 3
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 3
  %8205 = call float @dx.op.binary.f32(i32 36, float %8191, float %8204)  ; FMin(a,b)
  %8206 = fmul fast float %8202, %8193
  %8207 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8208 = fsub fast float %8199, %8195
  %8209 = fsub fast float %8200, %8196
  %8210 = fsub fast float %8201, %8197
  %8211 = fmul fast float %8207, %8208
  %8212 = fmul fast float %8207, %8209
  %8213 = fmul fast float %8207, %8210
  %8214 = fadd fast float %8211, %8195
  %8215 = fadd fast float %8212, %8196
  %8216 = fadd fast float %8213, %8197
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8220 = fadd fast float %8219, %8218
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8223 = extractvalue %dx.types.CBufRet.f32 %8217, 3
  %8224 = fadd fast float %8223, %8222
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = fmul fast float %8221, %8205
  %8227 = fmul fast float %8226, %8225
  br label %8469

; <label>:8228                                    ; preds = %8182
  br i1 %8183, label %8229, label %8250

; <label>:8229                                    ; preds = %8228
  %8230 = call float @dx.op.binary.f32(i32 36, float %8179, float %8169)  ; FMin(a,b)
  %8231 = fsub fast float %8179, %8230
  %8232 = fsub fast float %8231, %8168
  %8233 = call float @dx.op.unary.f32(i32 6, float %8232)  ; FAbs(value)
  %8234 = fadd fast float %8231, %8168
  %8235 = fmul fast float %8234, %8099
  %8236 = fadd fast float %8235, %8112
  %8237 = fmul fast float %8236, %8233
  %8238 = fsub fast float %8174, %8237
  br label %8250

; <label>:8239                                    ; preds = %8167
  br i1 %8181, label %8240, label %8250

; <label>:8240                                    ; preds = %8239
  %8241 = call float @dx.op.binary.f32(i32 35, float %8169, float %8179)  ; FMax(a,b)
  %8242 = icmp eq i32 %8118, 0
  %8243 = select i1 %8242, float %8179, float 0.000000e+00
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = call float @dx.op.unary.f32(i32 6, float %8244)  ; FAbs(value)
  %8246 = fmul fast float %8243, %8099
  %8247 = fadd fast float %8246, %8112
  %8248 = fmul fast float %8245, %8247
  %8249 = fsub fast float %8174, %8248
  br label %8250

; <label>:8250                                    ; preds = %8240, %8239, %8229, %8228
  %8251 = phi float [ %8169, %8228 ], [ %8169, %8229 ], [ %8241, %8240 ], [ %8169, %8239 ]
  %8252 = phi float [ 0.000000e+00, %8228 ], [ %8233, %8229 ], [ %8245, %8240 ], [ 0.000000e+00, %8239 ]
  %8253 = phi float [ %8174, %8228 ], [ %8238, %8229 ], [ %8249, %8240 ], [ %8174, %8239 ]
  %8254 = phi float [ %8179, %8228 ], [ %8179, %8229 ], [ %8168, %8240 ], [ %8168, %8239 ]
  %8255 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8255, align 4, !tbaa !128, !noalias !130
  %8256 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8256, align 4, !tbaa !128, !noalias !130
  %8257 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8257, align 4, !tbaa !128, !noalias !130
  %8258 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8258, align 4, !tbaa !128, !noalias !130
  %8259 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8259, align 4, !tbaa !128, !noalias !130
  %8260 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8260, align 4, !tbaa !128, !noalias !130
  %8261 = icmp sgt i32 %8120, 0
  br i1 %8261, label %8262, label %8323

; <label>:8262                                    ; preds = %8250
  br label %8263

; <label>:8263                                    ; preds = %8312, %8262
  %8264 = phi i32 [ %8313, %8312 ], [ 0, %8262 ]
  %8265 = phi i32 [ %8314, %8312 ], [ 0, %8262 ]
  %8266 = add nuw i32 %8265, 171
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8266)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 0
  %8269 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8273 = fsub fast float %8268, %8271
  %8274 = fsub fast float %8269, %8272
  %8275 = extractvalue %dx.types.CBufRet.f32 %8267, 2
  %8276 = fsub fast float -0.000000e+00, %8273
  %8277 = fsub fast float -0.000000e+00, %8274
  %8278 = call float @dx.op.dot2.f32(i32 54, float %8097, float %8098, float %8276, float %8277)  ; Dot2(ax,ay,bx,by)
  %8279 = fmul fast float %8278, 2.000000e+00
  %8280 = call float @dx.op.dot2.f32(i32 54, float %8276, float %8277, float %8276, float %8277)  ; Dot2(ax,ay,bx,by)
  %8281 = fmul fast float %8275, %8275
  %8282 = fsub fast float %8280, %8281
  %8283 = fmul fast float %8279, %8279
  %8284 = fmul fast float %8140, %8282
  %8285 = fsub fast float %8283, %8284
  %8286 = fcmp fast ogt float %8285, 0.000000e+00
  br i1 %8286, label %8287, label %8302

; <label>:8287                                    ; preds = %8263
  %8288 = fcmp fast ogt float %8279, 0.000000e+00
  %8289 = call float @dx.op.unary.f32(i32 24, float %8285)  ; Sqrt(value)
  %8290 = fsub fast float -0.000000e+00, %8289
  %8291 = select i1 %8288, float %8289, float %8290
  %8292 = fadd fast float %8291, %8279
  %8293 = fmul float %8292, -5.000000e-01
  %8294 = fdiv fast float %8293, %8133
  %8295 = call float @dx.op.binary.f32(i32 35, float %8294, float 0.000000e+00)  ; FMax(a,b)
  %8296 = call float @dx.op.binary.f32(i32 36, float %8168, float %8295)  ; FMin(a,b)
  %8297 = fdiv fast float %8282, %8293
  %8298 = call float @dx.op.binary.f32(i32 35, float %8297, float 0.000000e+00)  ; FMax(a,b)
  %8299 = call float @dx.op.binary.f32(i32 36, float %8168, float %8298)  ; FMin(a,b)
  %8300 = call float @dx.op.binary.f32(i32 36, float %8296, float %8299)  ; FMin(a,b)
  %8301 = call float @dx.op.binary.f32(i32 35, float %8296, float %8299)  ; FMax(a,b)
  br label %8302

; <label>:8302                                    ; preds = %8287, %8263
  %8303 = phi float [ %8301, %8287 ], [ -1.000000e+00, %8263 ]
  %8304 = phi float [ %8300, %8287 ], [ -1.000000e+00, %8263 ]
  %8305 = phi i1 [ true, %8287 ], [ false, %8263 ]
  br i1 %8305, label %8306, label %8312

; <label>:8306                                    ; preds = %8302
  %8307 = call float @dx.op.binary.f32(i32 35, float %8251, float %8304)  ; FMax(a,b)
  %8308 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8265
  store float %8307, float* %8308, align 4, !tbaa !128, !noalias !130
  %8309 = call float @dx.op.binary.f32(i32 35, float %8251, float %8303)  ; FMax(a,b)
  %8310 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8265
  store float %8309, float* %8310, align 4, !tbaa !128, !noalias !130
  %8311 = add nsw i32 %8264, 1
  br label %8312

; <label>:8312                                    ; preds = %8306, %8302
  %8313 = phi i32 [ %8311, %8306 ], [ %8264, %8302 ]
  %8314 = add nuw nsw i32 %8265, 1
  %8315 = icmp eq i32 %8314, %8120
  br i1 %8315, label %8316, label %8263

; <label>:8316                                    ; preds = %8312
  %8317 = load float, float* %8257, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8318 = load float, float* %8256, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %8319 = load float, float* %8255, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %8320 = load float, float* %8260, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8321 = load float, float* %8259, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %8322 = load float, float* %8258, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %8323

; <label>:8323                                    ; preds = %8316, %8250
  %8324 = phi float [ -1.000000e+00, %8250 ], [ %8322, %8316 ]
  %8325 = phi float [ -1.000000e+00, %8250 ], [ %8321, %8316 ]
  %8326 = phi float [ -1.000000e+00, %8250 ], [ %8320, %8316 ]
  %8327 = phi float [ -1.000000e+00, %8250 ], [ %8319, %8316 ]
  %8328 = phi float [ -1.000000e+00, %8250 ], [ %8318, %8316 ]
  %8329 = phi float [ -1.000000e+00, %8250 ], [ %8317, %8316 ]
  %8330 = phi i32 [ 0, %8250 ], [ %8313, %8316 ]
  %8331 = call float @dx.op.binary.f32(i32 36, float %8328, float %8329)  ; FMin(a,b)
  %8332 = call float @dx.op.binary.f32(i32 36, float %8327, float %8331)  ; FMin(a,b)
  %8333 = call float @dx.op.binary.f32(i32 35, float %8327, float %8328)  ; FMax(a,b)
  %8334 = call float @dx.op.binary.f32(i32 36, float %8333, float %8329)  ; FMin(a,b)
  %8335 = call float @dx.op.binary.f32(i32 36, float %8327, float %8328)  ; FMin(a,b)
  %8336 = call float @dx.op.binary.f32(i32 35, float %8335, float %8334)  ; FMax(a,b)
  %8337 = call float @dx.op.binary.f32(i32 35, float %8328, float %8329)  ; FMax(a,b)
  %8338 = call float @dx.op.binary.f32(i32 35, float %8327, float %8337)  ; FMax(a,b)
  store float %8332, float* %8255, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %8336, float* %8256, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %8338, float* %8257, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8339 = call float @dx.op.binary.f32(i32 36, float %8325, float %8326)  ; FMin(a,b)
  %8340 = call float @dx.op.binary.f32(i32 36, float %8324, float %8339)  ; FMin(a,b)
  %8341 = call float @dx.op.binary.f32(i32 35, float %8324, float %8325)  ; FMax(a,b)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8341, float %8326)  ; FMin(a,b)
  %8343 = call float @dx.op.binary.f32(i32 36, float %8324, float %8325)  ; FMin(a,b)
  %8344 = call float @dx.op.binary.f32(i32 35, float %8343, float %8342)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 35, float %8325, float %8326)  ; FMax(a,b)
  %8346 = call float @dx.op.binary.f32(i32 35, float %8324, float %8345)  ; FMax(a,b)
  store float %8340, float* %8258, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %8344, float* %8259, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %8346, float* %8260, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8347 = sub nsw i32 3, %8330
  %8348 = icmp sgt i32 %8347, 2
  br i1 %8348, label %8349, label %8387

; <label>:8349                                    ; preds = %8323
  %8350 = icmp eq i32 %8118, 0
  %8351 = fsub fast float %8168, %8252
  %8352 = select i1 %8350, float %8351, float %8252
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.CBufRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.CBufRet.f32 %8353, 2
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = extractvalue %dx.types.CBufRet.f32 %8357, 3
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8364 = call float @dx.op.binary.f32(i32 36, float %8253, float %8363)  ; FMin(a,b)
  %8365 = fmul fast float %8361, %8352
  %8366 = call float @dx.op.unary.f32(i32 7, float %8365)  ; Saturate(value)
  %8367 = fsub fast float %8358, %8354
  %8368 = fsub fast float %8359, %8355
  %8369 = fsub fast float %8360, %8356
  %8370 = fmul fast float %8366, %8367
  %8371 = fmul fast float %8366, %8368
  %8372 = fmul fast float %8366, %8369
  %8373 = fadd fast float %8370, %8354
  %8374 = fadd fast float %8371, %8355
  %8375 = fadd fast float %8372, %8356
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.CBufRet.f32 %8376, 1
  %8379 = fadd fast float %8378, %8377
  %8380 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8376, 2
  %8382 = extractvalue %dx.types.CBufRet.f32 %8376, 3
  %8383 = fadd fast float %8382, %8381
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fmul fast float %8380, %8364
  %8386 = fmul fast float %8385, %8384
  br label %8469

; <label>:8387                                    ; preds = %8323
  %8388 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8347
  %8389 = load float, float* %8388, align 4, !tbaa !128, !noalias !130
  %8390 = fcmp fast olt float %8389, %8254
  %8391 = icmp sgt i32 %8330, 0
  %8392 = and i1 %8391, %8390
  br i1 %8392, label %8393, label %8430

; <label>:8393                                    ; preds = %8387
  br label %8394

; <label>:8394                                    ; preds = %8423, %8393
  %8395 = phi float [ %8424, %8423 ], [ %8252, %8393 ]
  %8396 = phi float [ %8425, %8423 ], [ %8253, %8393 ]
  %8397 = phi float [ %8405, %8423 ], [ %8389, %8393 ]
  %8398 = phi i32 [ %8402, %8423 ], [ %8347, %8393 ]
  %8399 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8398
  %8400 = load float, float* %8399, align 4, !tbaa !128, !noalias !130
  %8401 = icmp slt i32 %8398, 2
  %8402 = add nsw i32 %8398, 1
  %8403 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8402
  %8404 = load float, float* %8403, align 4, !tbaa !128, !noalias !130
  %8405 = select i1 %8401, float %8404, float %8168
  %8406 = call float @dx.op.binary.f32(i32 36, float %8405, float %8400)  ; FMin(a,b)
  %8407 = call float @dx.op.binary.f32(i32 36, float %8254, float %8406)  ; FMin(a,b)
  %8408 = icmp eq i32 %8118, 0
  %8409 = fadd fast float %8407, %8397
  %8410 = fmul fast float %8409, %8099
  %8411 = fadd fast float %8410, %8112
  br i1 %8408, label %8417, label %8412

; <label>:8412                                    ; preds = %8394
  %8413 = fsub fast float %8407, %8397
  %8414 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8413)  ; FMax(a,b)
  %8415 = fmul fast float %8414, %8411
  %8416 = fadd fast float %8415, %8396
  br label %8423

; <label>:8417                                    ; preds = %8394
  %8418 = fsub fast float %8397, %8407
  %8419 = call float @dx.op.unary.f32(i32 6, float %8418)  ; FAbs(value)
  %8420 = fadd fast float %8419, %8395
  %8421 = fmul fast float %8419, %8411
  %8422 = fsub fast float %8396, %8421
  br label %8423

; <label>:8423                                    ; preds = %8417, %8412
  %8424 = phi float [ %8414, %8412 ], [ %8420, %8417 ]
  %8425 = phi float [ %8416, %8412 ], [ %8422, %8417 ]
  %8426 = fcmp fast olt float %8405, %8254
  %8427 = icmp slt i32 %8402, 3
  %8428 = and i1 %8427, %8426
  br i1 %8428, label %8394, label %8429

; <label>:8429                                    ; preds = %8423
  br label %8430

; <label>:8430                                    ; preds = %8429, %8387
  %8431 = phi float [ %8252, %8387 ], [ %8424, %8429 ]
  %8432 = phi float [ %8253, %8387 ], [ %8425, %8429 ]
  %8433 = fsub fast float %8168, %8431
  %8434 = select i1 %8170, float %8431, float %8433
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.CBufRet.f32 %8435, 1
  %8438 = extractvalue %dx.types.CBufRet.f32 %8435, 2
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.CBufRet.f32 %8439, 1
  %8442 = extractvalue %dx.types.CBufRet.f32 %8439, 2
  %8443 = extractvalue %dx.types.CBufRet.f32 %8439, 3
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 3
  %8446 = call float @dx.op.binary.f32(i32 36, float %8432, float %8445)  ; FMin(a,b)
  %8447 = fmul fast float %8443, %8434
  %8448 = call float @dx.op.unary.f32(i32 7, float %8447)  ; Saturate(value)
  %8449 = fsub fast float %8440, %8436
  %8450 = fsub fast float %8441, %8437
  %8451 = fsub fast float %8442, %8438
  %8452 = fmul fast float %8448, %8449
  %8453 = fmul fast float %8448, %8450
  %8454 = fmul fast float %8448, %8451
  %8455 = fadd fast float %8452, %8436
  %8456 = fadd fast float %8453, %8437
  %8457 = fadd fast float %8454, %8438
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8461 = fadd fast float %8460, %8459
  %8462 = call float @dx.op.unary.f32(i32 7, float %8461)  ; Saturate(value)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8464 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8465 = fadd fast float %8464, %8463
  %8466 = call float @dx.op.unary.f32(i32 7, float %8465)  ; Saturate(value)
  %8467 = fmul fast float %8462, %8446
  %8468 = fmul fast float %8467, %8466
  br label %8469

; <label>:8469                                    ; preds = %8430, %8349, %8184, %8166, %8164
  %8470 = phi float [ %8193, %8184 ], [ %8352, %8349 ], [ %8434, %8430 ], [ 0.000000e+00, %8164 ], [ 0.000000e+00, %8166 ]
  %8471 = phi float [ %8227, %8184 ], [ %8386, %8349 ], [ %8468, %8430 ], [ 0.000000e+00, %8164 ], [ 0.000000e+00, %8166 ]
  %8472 = phi float [ %8214, %8184 ], [ %8373, %8349 ], [ %8455, %8430 ], [ 0.000000e+00, %8164 ], [ 0.000000e+00, %8166 ]
  %8473 = phi float [ %8215, %8184 ], [ %8374, %8349 ], [ %8456, %8430 ], [ 0.000000e+00, %8164 ], [ 0.000000e+00, %8166 ]
  %8474 = phi float [ %8216, %8184 ], [ %8375, %8349 ], [ %8457, %8430 ], [ 0.000000e+00, %8164 ], [ 0.000000e+00, %8166 ]
  %8475 = fmul fast float %8107, %8471
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8478 = fsub fast float %8114, %8477
  %8479 = fcmp fast olt float %8475, -2.000000e+01
  %8480 = call float @dx.op.unary.f32(i32 21, float %8475)  ; Exp(value)
  %8481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8482 = extractvalue %dx.types.CBufRet.f32 %8481, 2
  %8483 = extractvalue %dx.types.CBufRet.f32 %8481, 3
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 2
  %8486 = fmul fast float %8483, %8478
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fsub fast float 1.000000e+00, %8487
  %8489 = fmul fast float %8099, 5.000000e-01
  %8490 = fadd fast float %8489, 5.000000e-01
  %8491 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8492 = fsub fast float 1.000000e+00, %8491
  %8493 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8488)  ; FMax(a,b)
  %8494 = fdiv fast float %8492, %8493
  %8495 = fsub fast float %8478, %8056
  %8496 = call float @dx.op.unary.f32(i32 6, float %8495)  ; FAbs(value)
  %8497 = fmul fast float %8496, %8482
  %8498 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8499 = fsub fast float 1.000000e+00, %8497
  %8500 = fmul fast float %8499, %8498
  %8501 = fadd fast float %8500, %8497
  %8502 = fmul fast float %8485, %8478
  %8503 = call float @dx.op.unary.f32(i32 7, float %8502)  ; Saturate(value)
  %8504 = fsub fast float 1.000000e+00, %8501
  %8505 = fmul fast float %8504, %8503
  %8506 = fadd fast float %8505, %8501
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = fadd fast float %8480, -1.000000e+00
  %8509 = select i1 %8479, float -1.000000e+00, float %8508
  %8510 = fmul fast float %8507, %8509
  %8511 = fadd fast float %8510, 1.000000e+00
  %8512 = fsub fast float -0.000000e+00, %8510
  %8513 = fmul fast float %8472, %8512
  %8514 = fmul fast float %8473, %8512
  %8515 = fmul fast float %8474, %8512
  br label %8516

; <label>:8516                                    ; preds = %8469, %8065
  %8517 = phi float [ %8470, %8469 ], [ 0.000000e+00, %8065 ]
  %8518 = phi float [ %8511, %8469 ], [ 1.000000e+00, %8065 ]
  %8519 = phi float [ %8513, %8469 ], [ 0.000000e+00, %8065 ]
  %8520 = phi float [ %8514, %8469 ], [ 0.000000e+00, %8065 ]
  %8521 = phi float [ %8515, %8469 ], [ 0.000000e+00, %8065 ]
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8524 = fsub fast float 1.000000e+00, %8518
  %8525 = fmul fast float %8524, %8100
  %8526 = fmul fast float %8525, %8523
  %8527 = fsub fast float %8100, %8526
  br i1 %8093, label %8528, label %8557, !dx.controlflow.hints !166

; <label>:8528                                    ; preds = %8516
  %8529 = fmul fast float %8101, %8090
  %8530 = fadd fast float %8529, %8091
  %8531 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8532 = fmul fast float %8072, %8527
  %8533 = fsub fast float -0.000000e+00, %8532
  %8534 = fmul fast float %8073, %8527
  %8535 = fsub fast float -0.000000e+00, %8534
  %8536 = call float @dx.op.unary.f32(i32 21, float %8533)  ; Exp(value)
  %8537 = call float @dx.op.unary.f32(i32 21, float %8535)  ; Exp(value)
  %8538 = call float @dx.op.binary.f32(i32 35, float %8080, float %8536)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 35, float %8080, float %8537)  ; FMax(a,b)
  %8540 = fsub fast float %8539, %8538
  %8541 = fmul fast float %8540, %8531
  %8542 = fadd fast float %8541, %8538
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = fsub fast float %8077, %8082
  %8545 = fsub fast float %8078, %8083
  %8546 = fsub fast float %8079, %8084
  %8547 = fmul fast float %8531, %8544
  %8548 = fmul fast float %8531, %8545
  %8549 = fmul fast float %8531, %8546
  %8550 = fadd fast float %8547, %8082
  %8551 = fadd fast float %8548, %8083
  %8552 = fadd fast float %8549, %8084
  %8553 = fsub fast float 1.000000e+00, %8543
  %8554 = fmul fast float %8553, %8550
  %8555 = fmul fast float %8553, %8551
  %8556 = fmul fast float %8553, %8552
  br label %8616

; <label>:8557                                    ; preds = %8516
  %8558 = fmul fast float %8527, %8089
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fsub fast float 2.000000e+00, %8559
  %8561 = fmul fast float %8559, 9.921875e-01
  %8562 = fmul fast float %8561, %8560
  %8563 = fadd fast float %8562, 3.906250e-03
  %8564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8563, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8565 = extractvalue %dx.types.ResRet.f32 %8564, 0
  %8566 = fsub fast float %8559, %8565
  %8567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8566)  ; FMax(a,b)
  %8568 = fmul fast float %8075, %8056
  %8569 = call float @dx.op.unary.f32(i32 6, float %8568)  ; FAbs(value)
  %8570 = fcmp fast ogt float %8569, 0x3EB0C6F7A0000000
  br i1 %8570, label %8571, label %8577, !dx.controlflow.hints !167

; <label>:8571                                    ; preds = %8557
  %8572 = fmul fast float %8568, 0xBFF7154760000000
  %8573 = call float @dx.op.unary.f32(i32 21, float %8572)  ; Exp(value)
  %8574 = fsub fast float 1.000000e+00, %8573
  %8575 = fdiv fast float %8574, %8568
  %8576 = fmul fast float %8575, %8085
  br label %8577

; <label>:8577                                    ; preds = %8571, %8557
  %8578 = phi float [ %8576, %8571 ], [ %8085, %8557 ]
  %8579 = fadd fast float %8578, %8087
  %8580 = fmul fast float %8579, %8567
  %8581 = fmul fast float %8072, %8580
  %8582 = fsub fast float -0.000000e+00, %8581
  %8583 = fmul fast float %8073, %8580
  %8584 = fsub fast float -0.000000e+00, %8583
  %8585 = fmul fast float %8074, %8580
  %8586 = fsub fast float -0.000000e+00, %8585
  %8587 = call float @dx.op.unary.f32(i32 21, float %8582)  ; Exp(value)
  %8588 = call float @dx.op.unary.f32(i32 21, float %8584)  ; Exp(value)
  %8589 = call float @dx.op.unary.f32(i32 21, float %8586)  ; Exp(value)
  %8590 = fmul fast float %8101, %8101
  %8591 = fadd fast float %8590, 1.000000e+00
  %8592 = fmul fast float %8591, 0x3FAE8EC8A0000000
  %8593 = fmul fast float %8592, %8082
  %8594 = fmul fast float %8592, %8083
  %8595 = fmul fast float %8592, %8084
  %8596 = fmul fast float %8101, %8080
  %8597 = fsub fast float 1.000000e+00, %8596
  %8598 = fmul fast float %8080, %8080
  %8599 = fsub fast float 1.000000e+00, %8598
  %8600 = fmul fast float %8599, 0x3FB45F3060000000
  %8601 = fmul fast float %8597, %8597
  %8602 = fdiv fast float 1.000000e+00, %8601
  %8603 = fmul fast float %8600, %8602
  %8604 = fmul fast float %8603, %8077
  %8605 = fmul fast float %8603, %8078
  %8606 = fmul fast float %8603, %8079
  %8607 = fadd fast float %8604, %8593
  %8608 = fadd fast float %8605, %8594
  %8609 = fadd fast float %8606, %8595
  %8610 = fsub fast float 1.000000e+00, %8587
  %8611 = fsub fast float 1.000000e+00, %8588
  %8612 = fsub fast float 1.000000e+00, %8589
  %8613 = fmul fast float %8607, %8610
  %8614 = fmul fast float %8608, %8611
  %8615 = fmul fast float %8609, %8612
  br label %8616

; <label>:8616                                    ; preds = %8577, %8528
  %8617 = phi float [ %8554, %8528 ], [ %8613, %8577 ]
  %8618 = phi float [ %8555, %8528 ], [ %8614, %8577 ]
  %8619 = phi float [ %8556, %8528 ], [ %8615, %8577 ]
  %8620 = phi float [ %8543, %8528 ], [ %8587, %8577 ]
  %8621 = phi float [ %8543, %8528 ], [ %8588, %8577 ]
  %8622 = phi float [ %8543, %8528 ], [ %8589, %8577 ]
  br i1 %8109, label %8623, label %8821, !dx.controlflow.hints !168

; <label>:8623                                    ; preds = %8616
  %8624 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8625 = fmul fast float %8624, %8524
  %8626 = fsub fast float %8519, %8617
  %8627 = fsub fast float %8520, %8618
  %8628 = fsub fast float %8521, %8619
  %8629 = fmul fast float %8625, %8626
  %8630 = fmul fast float %8625, %8627
  %8631 = fmul fast float %8625, %8628
  %8632 = fadd fast float %8629, %8617
  %8633 = fadd fast float %8630, %8618
  %8634 = fadd fast float %8631, %8619
  %8635 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8620)  ; FMax(a,b)
  %8636 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8621)  ; FMax(a,b)
  %8637 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8622)  ; FMax(a,b)
  %8638 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8518)  ; FMax(a,b)
  %8639 = call float @dx.op.binary.f32(i32 35, float %8517, float %8527)  ; FMax(a,b)
  %8640 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8639)  ; FMax(a,b)
  %8641 = fdiv fast float %8517, %8640
  %8642 = call float @dx.op.unary.f32(i32 7, float %8641)  ; Saturate(value)
  %8643 = fdiv fast float %8527, %8640
  %8644 = call float @dx.op.unary.f32(i32 7, float %8643)  ; Saturate(value)
  %8645 = fcmp fast une float %8638, 1.000000e+00
  br i1 %8645, label %8646, label %8659, !dx.controlflow.hints !169

; <label>:8646                                    ; preds = %8623
  %8647 = call float @dx.op.unary.f32(i32 23, float %8638)  ; Log(value)
  %8648 = fmul fast float %8647, 0x3FE62E4300000000
  %8649 = fmul fast float %8519, %8648
  %8650 = fsub fast float -0.000000e+00, %8649
  %8651 = fmul fast float %8520, %8648
  %8652 = fsub fast float -0.000000e+00, %8651
  %8653 = fmul fast float %8521, %8648
  %8654 = fsub fast float -0.000000e+00, %8653
  %8655 = fsub fast float 1.000000e+00, %8638
  %8656 = fdiv fast float %8650, %8655
  %8657 = fdiv fast float %8652, %8655
  %8658 = fdiv fast float %8654, %8655
  br label %8659

; <label>:8659                                    ; preds = %8646, %8623
  %8660 = phi float [ %8656, %8646 ], [ %8519, %8623 ]
  %8661 = phi float [ %8657, %8646 ], [ %8520, %8623 ]
  %8662 = phi float [ %8658, %8646 ], [ %8521, %8623 ]
  %8663 = phi float [ %8648, %8646 ], [ 0.000000e+00, %8623 ]
  %8664 = fcmp fast une float %8635, 1.000000e+00
  br i1 %8664, label %8665, label %8672, !dx.controlflow.hints !170

; <label>:8665                                    ; preds = %8659
  %8666 = call float @dx.op.unary.f32(i32 23, float %8635)  ; Log(value)
  %8667 = fmul fast float %8666, 0x3FE62E4300000000
  %8668 = fmul fast float %8632, %8667
  %8669 = fsub fast float -0.000000e+00, %8668
  %8670 = fsub fast float 1.000000e+00, %8635
  %8671 = fdiv fast float %8669, %8670
  br label %8672

; <label>:8672                                    ; preds = %8665, %8659
  %8673 = phi float [ %8671, %8665 ], [ %8632, %8659 ]
  %8674 = phi float [ %8667, %8665 ], [ 0.000000e+00, %8659 ]
  %8675 = fcmp fast une float %8636, 1.000000e+00
  br i1 %8675, label %8676, label %8683, !dx.controlflow.hints !170

; <label>:8676                                    ; preds = %8672
  %8677 = call float @dx.op.unary.f32(i32 23, float %8636)  ; Log(value)
  %8678 = fmul fast float %8677, 0x3FE62E4300000000
  %8679 = fmul fast float %8633, %8678
  %8680 = fsub fast float -0.000000e+00, %8679
  %8681 = fsub fast float 1.000000e+00, %8636
  %8682 = fdiv fast float %8680, %8681
  br label %8683

; <label>:8683                                    ; preds = %8676, %8672
  %8684 = phi float [ %8682, %8676 ], [ %8633, %8672 ]
  %8685 = phi float [ %8678, %8676 ], [ 0.000000e+00, %8672 ]
  %8686 = fcmp fast une float %8637, 1.000000e+00
  br i1 %8686, label %8687, label %8694, !dx.controlflow.hints !170

; <label>:8687                                    ; preds = %8683
  %8688 = call float @dx.op.unary.f32(i32 23, float %8637)  ; Log(value)
  %8689 = fmul fast float %8688, 0x3FE62E4300000000
  %8690 = fmul fast float %8634, %8689
  %8691 = fsub fast float -0.000000e+00, %8690
  %8692 = fsub fast float 1.000000e+00, %8637
  %8693 = fdiv fast float %8691, %8692
  br label %8694

; <label>:8694                                    ; preds = %8687, %8683
  %8695 = phi float [ %8693, %8687 ], [ %8634, %8683 ]
  %8696 = phi float [ %8689, %8687 ], [ 0.000000e+00, %8683 ]
  %8697 = fmul fast float %8660, %8644
  %8698 = fmul fast float %8661, %8644
  %8699 = fmul fast float %8662, %8644
  %8700 = fmul fast float %8663, %8644
  %8701 = fmul fast float %8673, %8642
  %8702 = fmul fast float %8684, %8642
  %8703 = fmul fast float %8695, %8642
  %8704 = fmul fast float %8674, %8642
  %8705 = fmul fast float %8685, %8642
  %8706 = fmul fast float %8696, %8642
  %8707 = fadd fast float %8701, %8697
  %8708 = fadd fast float %8702, %8698
  %8709 = fadd fast float %8703, %8699
  %8710 = fadd fast float %8704, %8700
  %8711 = fadd fast float %8705, %8700
  %8712 = fadd fast float %8706, %8700
  %8713 = fcmp fast une float %8710, 0.000000e+00
  br i1 %8713, label %8714, label %8721, !dx.controlflow.hints !171

; <label>:8714                                    ; preds = %8694
  %8715 = fmul fast float %8710, 0x3FF7154760000000
  %8716 = call float @dx.op.unary.f32(i32 21, float %8715)  ; Exp(value)
  %8717 = fsub fast float 1.000000e+00, %8716
  %8718 = fmul fast float %8707, %8717
  %8719 = fsub fast float -0.000000e+00, %8718
  %8720 = fdiv fast float %8719, %8710
  br label %8721

; <label>:8721                                    ; preds = %8714, %8694
  %8722 = phi float [ %8716, %8714 ], [ 1.000000e+00, %8694 ]
  %8723 = phi float [ %8720, %8714 ], [ %8707, %8694 ]
  %8724 = fcmp fast une float %8711, 0.000000e+00
  br i1 %8724, label %8725, label %8732, !dx.controlflow.hints !171

; <label>:8725                                    ; preds = %8721
  %8726 = fmul fast float %8711, 0x3FF7154760000000
  %8727 = call float @dx.op.unary.f32(i32 21, float %8726)  ; Exp(value)
  %8728 = fsub fast float 1.000000e+00, %8727
  %8729 = fmul fast float %8708, %8728
  %8730 = fsub fast float -0.000000e+00, %8729
  %8731 = fdiv fast float %8730, %8711
  br label %8732

; <label>:8732                                    ; preds = %8725, %8721
  %8733 = phi float [ %8727, %8725 ], [ 1.000000e+00, %8721 ]
  %8734 = phi float [ %8731, %8725 ], [ %8708, %8721 ]
  %8735 = fcmp fast une float %8712, 0.000000e+00
  br i1 %8735, label %8736, label %8743, !dx.controlflow.hints !171

; <label>:8736                                    ; preds = %8732
  %8737 = fmul fast float %8712, 0x3FF7154760000000
  %8738 = call float @dx.op.unary.f32(i32 21, float %8737)  ; Exp(value)
  %8739 = fsub fast float 1.000000e+00, %8738
  %8740 = fmul fast float %8709, %8739
  %8741 = fsub fast float -0.000000e+00, %8740
  %8742 = fdiv fast float %8741, %8712
  br label %8743

; <label>:8743                                    ; preds = %8736, %8732
  %8744 = phi float [ %8738, %8736 ], [ 1.000000e+00, %8732 ]
  %8745 = phi float [ %8742, %8736 ], [ %8709, %8732 ]
  %8746 = fcmp fast ogt float %8642, %8644
  br i1 %8746, label %8747, label %8767

; <label>:8747                                    ; preds = %8743
  %8748 = fsub fast float 1.000000e+00, %8644
  %8749 = fmul fast float %8660, %8748
  %8750 = fmul fast float %8661, %8748
  %8751 = fmul fast float %8662, %8748
  %8752 = fmul fast float %8663, %8748
  %8753 = fcmp fast une float %8752, 0.000000e+00
  br i1 %8753, label %8754, label %8805, !dx.controlflow.hints !172

; <label>:8754                                    ; preds = %8747
  %8755 = fmul fast float %8752, 0x3FF7154760000000
  %8756 = call float @dx.op.unary.f32(i32 21, float %8755)  ; Exp(value)
  %8757 = fsub fast float 1.000000e+00, %8756
  %8758 = fmul fast float %8749, %8757
  %8759 = fsub fast float -0.000000e+00, %8758
  %8760 = fmul fast float %8750, %8757
  %8761 = fsub fast float -0.000000e+00, %8760
  %8762 = fmul fast float %8751, %8757
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = fdiv fast float %8759, %8752
  %8765 = fdiv fast float %8761, %8752
  %8766 = fdiv fast float %8763, %8752
  br label %8805

; <label>:8767                                    ; preds = %8743
  %8768 = fsub fast float 1.000000e+00, %8642
  %8769 = fmul fast float %8673, %8768
  %8770 = fmul fast float %8684, %8768
  %8771 = fmul fast float %8695, %8768
  %8772 = fmul fast float %8674, %8768
  %8773 = fmul fast float %8685, %8768
  %8774 = fmul fast float %8696, %8768
  %8775 = fcmp fast une float %8772, 0.000000e+00
  br i1 %8775, label %8776, label %8783, !dx.controlflow.hints !171

; <label>:8776                                    ; preds = %8767
  %8777 = fmul fast float %8772, 0x3FF7154760000000
  %8778 = call float @dx.op.unary.f32(i32 21, float %8777)  ; Exp(value)
  %8779 = fsub fast float 1.000000e+00, %8778
  %8780 = fmul fast float %8769, %8779
  %8781 = fsub fast float -0.000000e+00, %8780
  %8782 = fdiv fast float %8781, %8772
  br label %8783

; <label>:8783                                    ; preds = %8776, %8767
  %8784 = phi float [ %8782, %8776 ], [ %8769, %8767 ]
  %8785 = phi float [ %8778, %8776 ], [ 1.000000e+00, %8767 ]
  %8786 = fcmp fast une float %8773, 0.000000e+00
  br i1 %8786, label %8787, label %8794, !dx.controlflow.hints !171

; <label>:8787                                    ; preds = %8783
  %8788 = fmul fast float %8773, 0x3FF7154760000000
  %8789 = call float @dx.op.unary.f32(i32 21, float %8788)  ; Exp(value)
  %8790 = fsub fast float 1.000000e+00, %8789
  %8791 = fmul fast float %8770, %8790
  %8792 = fsub fast float -0.000000e+00, %8791
  %8793 = fdiv fast float %8792, %8773
  br label %8794

; <label>:8794                                    ; preds = %8787, %8783
  %8795 = phi float [ %8793, %8787 ], [ %8770, %8783 ]
  %8796 = phi float [ %8789, %8787 ], [ 1.000000e+00, %8783 ]
  %8797 = fcmp fast une float %8774, 0.000000e+00
  br i1 %8797, label %8798, label %8805, !dx.controlflow.hints !171

; <label>:8798                                    ; preds = %8794
  %8799 = fmul fast float %8774, 0x3FF7154760000000
  %8800 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8801 = fsub fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8771, %8801
  %8803 = fsub fast float -0.000000e+00, %8802
  %8804 = fdiv fast float %8803, %8774
  br label %8805

; <label>:8805                                    ; preds = %8798, %8794, %8754, %8747
  %8806 = phi float [ %8804, %8798 ], [ %8766, %8754 ], [ %8751, %8747 ], [ %8771, %8794 ]
  %8807 = phi float [ %8795, %8798 ], [ %8765, %8754 ], [ %8750, %8747 ], [ %8795, %8794 ]
  %8808 = phi float [ %8784, %8798 ], [ %8764, %8754 ], [ %8749, %8747 ], [ %8784, %8794 ]
  %8809 = phi float [ %8800, %8798 ], [ %8756, %8754 ], [ 1.000000e+00, %8747 ], [ 1.000000e+00, %8794 ]
  %8810 = phi float [ %8796, %8798 ], [ %8756, %8754 ], [ 1.000000e+00, %8747 ], [ %8796, %8794 ]
  %8811 = phi float [ %8785, %8798 ], [ %8756, %8754 ], [ 1.000000e+00, %8747 ], [ %8785, %8794 ]
  %8812 = fmul fast float %8811, %8723
  %8813 = fmul fast float %8810, %8734
  %8814 = fmul fast float %8809, %8745
  %8815 = fadd fast float %8812, %8808
  %8816 = fadd fast float %8813, %8807
  %8817 = fadd fast float %8814, %8806
  %8818 = fmul fast float %8811, %8722
  %8819 = fmul fast float %8810, %8733
  %8820 = fmul fast float %8809, %8744
  br label %8821

; <label>:8821                                    ; preds = %8805, %8616
  %8822 = phi float [ %8820, %8805 ], [ %8622, %8616 ]
  %8823 = phi float [ %8819, %8805 ], [ %8621, %8616 ]
  %8824 = phi float [ %8818, %8805 ], [ %8620, %8616 ]
  %8825 = phi float [ %8817, %8805 ], [ %8619, %8616 ]
  %8826 = phi float [ %8816, %8805 ], [ %8618, %8616 ]
  %8827 = phi float [ %8815, %8805 ], [ %8617, %8616 ]
  %8828 = fmul fast float %8827, %7769
  %8829 = fmul fast float %8826, %7771
  %8830 = fmul fast float %8825, %7773
  %8831 = fmul fast float %8824, %8064
  %8832 = call float @dx.op.dot3.f32(i32 55, float %8824, float %8823, float %8822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8833 = call float @dx.op.dot3.f32(i32 55, float %8828, float %8829, float %8830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8834 = select i1 %265, float %8832, float %8824
  %8835 = select i1 %265, float %8832, float %8823
  %8836 = select i1 %265, float 1.000000e+00, float %8822
  %8837 = select i1 %265, float %8833, float %8828
  %8838 = select i1 %265, float 0.000000e+00, float %8829
  %8839 = select i1 %265, float 0.000000e+00, float %8830
  %8840 = fmul fast float %8834, %8058
  %8841 = fmul fast float %8835, %8059
  %8842 = fmul fast float %8836, %8060
  %8843 = fadd fast float %8840, %8837
  %8844 = fadd fast float %8841, %8838
  %8845 = fadd fast float %8839, %8842
  %8846 = fmul fast float %8834, %8061
  %8847 = fmul fast float %8835, %8062
  %8848 = fmul fast float %8836, %8063
  %8849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.i32 %8849, 0
  %8851 = icmp eq i32 %8850, 0
  br i1 %8851, label %9219, label %8852, !dx.controlflow.hints !173

; <label>:8852                                    ; preds = %8821
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %8855 = extractvalue %dx.types.CBufRet.f32 %8853, 3
  %8856 = fmul fast float %8854, %106
  %8857 = fmul fast float %8855, %107
  %8858 = fmul fast float %8856, 2.000000e+00
  %8859 = fmul fast float %8857, 2.000000e+00
  %8860 = fsub fast float 1.000000e+00, %8858
  %8861 = fsub fast float 1.000000e+00, %8859
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = fmul fast float %8860, %8863
  %8867 = fmul fast float %8860, %8864
  %8868 = fmul fast float %8860, %8865
  %8869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8870 = extractvalue %dx.types.CBufRet.f32 %8869, 0
  %8871 = extractvalue %dx.types.CBufRet.f32 %8869, 1
  %8872 = extractvalue %dx.types.CBufRet.f32 %8869, 2
  %8873 = fmul fast float %8861, %8870
  %8874 = fmul fast float %8861, %8871
  %8875 = fmul fast float %8861, %8872
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8880 = fadd fast float %8873, %8877
  %8881 = fadd fast float %8880, %8866
  %8882 = fadd fast float %8874, %8878
  %8883 = fadd fast float %8882, %8867
  %8884 = fadd fast float %8875, %8879
  %8885 = fadd fast float %8884, %8868
  %8886 = fmul fast float %8881, %8057
  %8887 = fmul fast float %8883, %8057
  %8888 = fmul fast float %8885, %8057
  %8889 = fmul fast float %8886, %8886
  %8890 = fmul fast float %8887, %8887
  %8891 = fadd fast float %8889, %8890
  %8892 = fmul fast float %8888, %8888
  %8893 = fadd fast float %8891, %8892
  %8894 = call float @dx.op.unary.f32(i32 24, float %8893)  ; Sqrt(value)
  %8895 = extractvalue %dx.types.CBufRet.f32 %7784, 0
  %8896 = fsub fast float %8894, %8895
  %8897 = extractvalue %dx.types.CBufRet.f32 %7784, 2
  %8898 = fmul fast float %8896, %8897
  %8899 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8900 = fadd fast float %8899, -5.000000e-01
  %8901 = fmul fast float %8900, 2.000000e+00
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 2
  %8904 = call float @dx.op.binary.f32(i32 36, float %8903, float %8901)  ; FMin(a,b)
  %8905 = fsub fast float -0.000000e+00, %8903
  %8906 = fcmp fast ogt float %8904, %8905
  br i1 %8906, label %8907, label %9219, !dx.controlflow.hints !174

; <label>:8907                                    ; preds = %8852
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 3
  %8910 = fcmp fast ogt float %8909, 0.000000e+00
  br i1 %8910, label %8911, label %8986, !dx.controlflow.hints !175

; <label>:8911                                    ; preds = %8907
  %8912 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8913 = extractvalue %dx.types.Dimensions %8912, 0
  %8914 = sitofp i32 %8913 to float
  %8915 = extractvalue %dx.types.Dimensions %8912, 1
  %8916 = sitofp i32 %8915 to float
  %8917 = fmul fast float %8856, %8914
  %8918 = fmul fast float %8857, %8916
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 1
  %8921 = fsub fast float -0.000000e+00, %8920
  %8922 = fptoui float %8921 to i32
  %8923 = fptoui float %8917 to i32
  %8924 = fptoui float %8918 to i32
  %8925 = and i32 %8922, 31
  %8926 = lshr i32 %8923, %8925
  %8927 = lshr i32 %8924, %8925
  %8928 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8922, i32 %8926, i32 %8927, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8929 = extractvalue %dx.types.ResRet.f32 %8928, 0
  %8930 = fcmp fast olt float %8929, -1.000000e+00
  %8931 = fcmp fast ogt float %8929, -1.000000e+00
  %8932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.f32 %8932, 1
  %8934 = select i1 %8931, float %8933, float 1.000000e+00
  %8935 = fadd fast float %8929, 1.000000e+00
  %8936 = fmul fast float %8934, %8935
  %8937 = call float @dx.op.unary.f32(i32 6, float %8936)  ; FAbs(value)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8932, 3
  %8939 = fcmp fast oge float %8937, %8938
  %8940 = select i1 %8939, float 0x4197782600000000, float %8937
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 0
  %8943 = extractvalue %dx.types.CBufRet.f32 %8941, 1
  %8944 = extractvalue %dx.types.CBufRet.f32 %8941, 2
  %8945 = select i1 %8930, float %8942, float %8863
  %8946 = select i1 %8930, float %8943, float %8864
  %8947 = select i1 %8930, float %8944, float %8865
  %8948 = fmul fast float %8945, %8860
  %8949 = fmul fast float %8946, %8860
  %8950 = fmul fast float %8947, %8860
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 0
  %8953 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8954 = extractvalue %dx.types.CBufRet.f32 %8951, 2
  %8955 = select i1 %8930, float %8952, float %8870
  %8956 = select i1 %8930, float %8953, float %8871
  %8957 = select i1 %8930, float %8954, float %8872
  %8958 = fmul fast float %8955, %8861
  %8959 = fmul fast float %8956, %8861
  %8960 = fmul fast float %8957, %8861
  %8961 = fadd fast float %8958, %8948
  %8962 = fadd fast float %8959, %8949
  %8963 = fadd fast float %8960, %8950
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.CBufRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8968 = select i1 %8930, float %8965, float %8877
  %8969 = select i1 %8930, float %8966, float %8878
  %8970 = select i1 %8930, float %8967, float %8879
  %8971 = fadd fast float %8961, %8968
  %8972 = fadd fast float %8962, %8969
  %8973 = fadd fast float %8963, %8970
  %8974 = fmul fast float %8971, %8940
  %8975 = fmul fast float %8972, %8940
  %8976 = fmul fast float %8973, %8940
  %8977 = fmul fast float %8974, %8974
  %8978 = fmul fast float %8975, %8975
  %8979 = fadd fast float %8977, %8978
  %8980 = fmul fast float %8976, %8976
  %8981 = fadd fast float %8979, %8980
  %8982 = call float @dx.op.unary.f32(i32 24, float %8981)  ; Sqrt(value)
  %8983 = fsub fast float %8982, %8895
  %8984 = fmul fast float %8983, %8897
  %8985 = call float @dx.op.unary.f32(i32 7, float %8984)  ; Saturate(value)
  br label %8986

; <label>:8986                                    ; preds = %8911, %8907
  %8987 = phi float [ %8985, %8911 ], [ 1.000000e+00, %8907 ]
  %8988 = fmul fast float %8904, 5.000000e-01
  %8989 = fadd fast float %8988, 5.000000e-01
  %8990 = call float @dx.op.unary.f32(i32 22, float %8989)  ; Frc(value)
  %8991 = call float @dx.op.unary.f32(i32 27, float %8990)  ; Round_ni(value)
  %8992 = call float @dx.op.unary.f32(i32 22, float %8990)  ; Frc(value)
  %8993 = fmul fast float %8992, 2.000000e+00
  %8994 = fadd fast float %8993, -1.000000e+00
  %8995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8856, float %8857, float %8991, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8996 = extractvalue %dx.types.ResRet.f32 %8995, 0
  %8997 = extractvalue %dx.types.ResRet.f32 %8995, 1
  %8998 = extractvalue %dx.types.ResRet.f32 %8995, 2
  %8999 = extractvalue %dx.types.ResRet.f32 %8995, 3
  %9000 = fadd fast float %8996, -5.000000e-01
  %9001 = fadd fast float %8998, -5.000000e-01
  %9002 = fmul fast float %9000, 0xBFD5555560000000
  %9003 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9001, float %9002)  ; FMad(a,b,c)
  %9004 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8997, float 0.000000e+00)  ; FMad(a,b,c)
  %9005 = fadd fast float %9004, %8999
  %9006 = fmul fast float %9000, -7.500000e-01
  %9007 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9001, float %9006)  ; FMad(a,b,c)
  %9008 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8997, float 0.000000e+00)  ; FMad(a,b,c)
  %9009 = fadd fast float %9008, %8999
  %9010 = call float @dx.op.binary.f32(i32 35, float %9003, float -1.000000e+00)  ; FMax(a,b)
  %9011 = call float @dx.op.binary.f32(i32 35, float %9005, float -1.000000e+00)  ; FMax(a,b)
  %9012 = call float @dx.op.binary.f32(i32 35, float %9007, float -1.000000e+00)  ; FMax(a,b)
  %9013 = call float @dx.op.binary.f32(i32 35, float %9009, float -1.000000e+00)  ; FMax(a,b)
  %9014 = call float @dx.op.binary.f32(i32 36, float %9010, float 1.000000e+00)  ; FMin(a,b)
  %9015 = call float @dx.op.binary.f32(i32 36, float %9011, float 1.000000e+00)  ; FMin(a,b)
  %9016 = call float @dx.op.binary.f32(i32 36, float %9012, float 1.000000e+00)  ; FMin(a,b)
  %9017 = call float @dx.op.binary.f32(i32 36, float %9013, float 1.000000e+00)  ; FMin(a,b)
  %9018 = fcmp fast olt float %9014, 0x3FEFFF8020000000
  br i1 %9018, label %9019, label %9134, !dx.controlflow.hints !176

; <label>:9019                                    ; preds = %8986
  %9020 = extractvalue %dx.types.CBufRet.f32 %8902, 3
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9024 = extractvalue %dx.types.CBufRet.f32 %9021, 2
  %9025 = extractvalue %dx.types.CBufRet.f32 %9021, 3
  %9026 = fsub fast float %9022, %9014
  %9027 = fsub fast float %9023, %9015
  %9028 = fsub fast float %9024, %9016
  %9029 = fsub fast float %9025, %9017
  %9030 = fmul fast float %9026, %9020
  %9031 = fmul fast float %9027, %9020
  %9032 = fmul fast float %9028, %9020
  %9033 = fmul fast float %9029, %9020
  %9034 = fadd fast float %9030, %9014
  %9035 = fadd fast float %9031, %9015
  %9036 = fsub fast float -0.000000e+00, %9035
  %9037 = fadd fast float %9032, %9016
  %9038 = fadd fast float %9033, %9017
  %9039 = fmul fast float %9034, %9034
  %9040 = fsub fast float %9035, %9039
  %9041 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9040)  ; FMax(a,b)
  %9042 = fdiv fast float 1.000000e+00, %9041
  %9043 = fmul fast float %9035, %9034
  %9044 = fsub fast float %9037, %9043
  %9045 = fsub fast float %8994, %9034
  %9046 = fmul fast float %8994, %8994
  %9047 = fsub fast float %9046, %9035
  %9048 = fmul fast float %9045, %9042
  %9049 = fmul fast float %9048, %9044
  %9050 = fsub fast float %9047, %9049
  %9051 = fmul fast float %9035, %9035
  %9052 = fsub fast float %9038, %9051
  %9053 = fmul fast float %9044, %9044
  %9054 = fmul fast float %9053, %9042
  %9055 = fsub fast float %9052, %9054
  %9056 = fdiv fast float %9050, %9055
  %9057 = fmul fast float %9044, %9056
  %9058 = fsub fast float %9045, %9057
  %9059 = fmul fast float %9058, %9042
  %9060 = fmul fast float %9059, %9034
  %9061 = fsub fast float 1.000000e+00, %9060
  %9062 = fmul fast float %9035, %9056
  %9063 = fsub fast float %9061, %9062
  %9064 = fmul fast float %9059, %9059
  %9065 = fmul fast float %9056, 4.000000e+00
  %9066 = fmul fast float %9065, %9063
  %9067 = fsub fast float %9064, %9066
  %9068 = call float @dx.op.unary.f32(i32 24, float %9067)  ; Sqrt(value)
  %9069 = fcmp fast oge float %9059, 0.000000e+00
  %9070 = fsub fast float -0.000000e+00, %9068
  %9071 = select i1 %9069, float %9070, float %9068
  %9072 = fsub fast float %9071, %9059
  %9073 = fdiv fast float %9072, %9056
  %9074 = fdiv fast float %9063, %9072
  %9075 = fmul fast float %9073, 5.000000e-01
  %9076 = fmul fast float %9074, 2.000000e+00
  %9077 = select i1 %9069, float %9075, float %9076
  %9078 = select i1 %9069, float %9076, float %9075
  %9079 = call float @dx.op.binary.f32(i32 35, float %9077, float %9078)  ; FMax(a,b)
  %9080 = call float @dx.op.binary.f32(i32 36, float %9077, float %9078)  ; FMin(a,b)
  %9081 = fcmp fast ogt float %8994, %9080
  br i1 %9081, label %9082, label %9092

; <label>:9082                                    ; preds = %9019
  %9083 = fsub fast float %8994, %9080
  %9084 = fsub fast float %9079, %9080
  %9085 = fmul fast float %9083, %9084
  %9086 = fmul fast float %9079, %8994
  %9087 = fadd fast float %9079, %8994
  %9088 = fmul fast float %9087, %9034
  %9089 = fadd fast float %9086, %9035
  %9090 = fsub fast float %9089, %9088
  %9091 = fdiv fast float %9090, %9085
  br label %9092

; <label>:9092                                    ; preds = %9082, %9019
  %9093 = phi float [ %9091, %9082 ], [ 0.000000e+00, %9019 ]
  %9094 = fcmp fast ogt float %8994, %9079
  %9095 = fsub fast float %8994, %9079
  br i1 %9094, label %9096, label %9106

; <label>:9096                                    ; preds = %9092
  %9097 = fsub fast float %9079, %9080
  %9098 = fmul fast float %9097, %9095
  %9099 = fmul fast float %9080, %8994
  %9100 = fadd fast float %9080, %8994
  %9101 = fmul fast float %9100, %9034
  %9102 = fsub fast float %9036, %9099
  %9103 = fadd fast float %9102, %9101
  %9104 = fdiv fast float %9103, %9098
  %9105 = fadd fast float %9104, %9093
  br label %9106

; <label>:9106                                    ; preds = %9096, %9092
  %9107 = phi float [ %9105, %9096 ], [ %9093, %9092 ]
  %9108 = fsub fast float %8994, %9080
  %9109 = fmul fast float %9108, %9095
  %9110 = fmul fast float %9080, %9079
  %9111 = fadd fast float %9080, %9079
  %9112 = fmul fast float %9111, %9034
  %9113 = fadd fast float %9110, %9035
  %9114 = fsub fast float %9113, %9112
  %9115 = fdiv fast float %9114, %9109
  %9116 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9117 = fcmp fast oeq float %7785, 0.000000e+00
  %9118 = extractvalue %dx.types.CBufRet.f32 %8902, 0
  %9119 = fcmp fast oeq float %9118, 0.000000e+00
  %9120 = or i1 %9117, %9119
  %9121 = fmul fast float %9118, 2.000000e+00
  %9122 = fadd fast float %8903, %8904
  %9123 = fdiv fast float %9122, %9121
  %9124 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  %9125 = fmul fast float %9124, 2.000000e+00
  %9126 = fsub fast float 3.000000e+00, %9125
  %9127 = fmul fast float %9124, %9124
  %9128 = fmul fast float %9127, %9126
  %9129 = select i1 %9120, float 1.000000e+00, float %9128
  %9130 = fmul fast float %9115, %7785
  %9131 = fadd fast float %9116, %9130
  %9132 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9133 = fmul fast float %9129, %9132
  br label %9134

; <label>:9134                                    ; preds = %9106, %8986
  %9135 = phi float [ %9133, %9106 ], [ 0.000000e+00, %8986 ]
  %9136 = fsub fast float 1.000000e+00, %9135
  %9137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8856, float %8857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9138 = extractvalue %dx.types.ResRet.f32 %9137, 0
  %9139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.i32 %9139, 2
  %9141 = icmp eq i32 %9140, 0
  br i1 %9141, label %9147, label %9142

; <label>:9142                                    ; preds = %9134
  %9143 = call float @dx.op.unary.f32(i32 7, float %9135)  ; Saturate(value)
  %9144 = fadd fast float %9138, -1.000000e+00
  %9145 = fmul fast float %9143, %9144
  %9146 = fadd fast float %9145, 1.000000e+00
  br label %9147

; <label>:9147                                    ; preds = %9142, %9134
  %9148 = phi float [ %9146, %9142 ], [ %9136, %9134 ]
  br i1 %8910, label %9149, label %9167

; <label>:9149                                    ; preds = %9147
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9152 = fsub fast float %8987, %9151
  %9153 = call float @dx.op.unary.f32(i32 7, float %9152)  ; Saturate(value)
  %9154 = fsub fast float %8987, %8909
  %9155 = call float @dx.op.unary.f32(i32 7, float %9154)  ; Saturate(value)
  %9156 = fsub fast float %9153, %9155
  %9157 = fsub fast float %8989, %9155
  %9158 = fdiv fast float %9157, %9156
  %9159 = call float @dx.op.unary.f32(i32 7, float %9158)  ; Saturate(value)
  %9160 = fmul fast float %9159, 2.000000e+00
  %9161 = fsub fast float 3.000000e+00, %9160
  %9162 = fsub fast float %9138, %9148
  %9163 = fmul fast float %9159, %9159
  %9164 = fmul fast float %9163, %9162
  %9165 = fmul fast float %9164, %9161
  %9166 = fadd fast float %9165, %9148
  br label %9167

; <label>:9167                                    ; preds = %9149, %9147
  %9168 = phi float [ %9166, %9149 ], [ %9148, %9147 ]
  %9169 = call float @dx.op.binary.f32(i32 35, float %9138, float %9168)  ; FMax(a,b)
  %9170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.i32 %9170, 2
  %9172 = and i32 %9171, 1
  %9173 = icmp eq i32 %9172, 0
  %9174 = fcmp fast une float %9169, 1.000000e+00
  %9175 = and i1 %9174, %9173
  br i1 %9175, label %9176, label %9195

; <label>:9176                                    ; preds = %9167
  %9177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8856, float %8857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9178 = extractvalue %dx.types.ResRet.f32 %9177, 0
  %9179 = extractvalue %dx.types.ResRet.f32 %9177, 1
  %9180 = extractvalue %dx.types.ResRet.f32 %9177, 2
  %9181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9182 = extractvalue %dx.types.CBufRet.f32 %9181, 1
  %9183 = fmul fast float %9182, %9178
  %9184 = fmul fast float %9182, %9179
  %9185 = fmul fast float %9182, %9180
  %9186 = fcmp fast ogt float %9138, 0x3FEFFF2E40000000
  %9187 = fsub fast float 1.000000e+00, %9169
  %9188 = fsub fast float 1.000000e+00, %9138
  %9189 = fdiv fast float %9187, %9188
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  %9191 = select i1 %9186, float 0.000000e+00, float %9190
  %9192 = fmul fast float %9183, %9191
  %9193 = fmul fast float %9184, %9191
  %9194 = fmul fast float %9185, %9191
  br label %9195

; <label>:9195                                    ; preds = %9176, %9167
  %9196 = phi float [ 0.000000e+00, %9167 ], [ %9192, %9176 ]
  %9197 = phi float [ 0.000000e+00, %9167 ], [ %9193, %9176 ]
  %9198 = phi float [ 0.000000e+00, %9167 ], [ %9194, %9176 ]
  %9199 = fmul fast float %9196, %7769
  %9200 = fmul fast float %9197, %7771
  %9201 = fmul fast float %9198, %7773
  %9202 = fmul fast float %9169, %8831
  %9203 = call float @dx.op.dot3.f32(i32 55, float %9169, float %9169, float %9169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9204 = call float @dx.op.dot3.f32(i32 55, float %9199, float %9200, float %9201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9205 = select i1 %265, float %9203, float %9169
  %9206 = select i1 %265, float 1.000000e+00, float %9169
  %9207 = select i1 %265, float %9204, float %9199
  %9208 = select i1 %265, float 0.000000e+00, float %9200
  %9209 = select i1 %265, float 0.000000e+00, float %9201
  %9210 = fmul fast float %9205, %8843
  %9211 = fmul fast float %9205, %8844
  %9212 = fmul fast float %9206, %8845
  %9213 = fadd fast float %9210, %9207
  %9214 = fadd fast float %9211, %9208
  %9215 = fadd fast float %9209, %9212
  %9216 = fmul fast float %9205, %8846
  %9217 = fmul fast float %9205, %8847
  %9218 = fmul fast float %9206, %8848
  br label %9219

; <label>:9219                                    ; preds = %9195, %8852, %8821, %8053
  %9220 = phi float [ %8058, %8053 ], [ %8843, %8821 ], [ %9213, %9195 ], [ %8843, %8852 ]
  %9221 = phi float [ %8059, %8053 ], [ %8844, %8821 ], [ %9214, %9195 ], [ %8844, %8852 ]
  %9222 = phi float [ %8060, %8053 ], [ %8845, %8821 ], [ %9215, %9195 ], [ %8845, %8852 ]
  %9223 = phi float [ %8061, %8053 ], [ %8846, %8821 ], [ %9216, %9195 ], [ %8846, %8852 ]
  %9224 = phi float [ %8062, %8053 ], [ %8847, %8821 ], [ %9217, %9195 ], [ %8847, %8852 ]
  %9225 = phi float [ %8063, %8053 ], [ %8848, %8821 ], [ %9218, %9195 ], [ %8848, %8852 ]
  %9226 = phi float [ %8064, %8053 ], [ %8831, %8821 ], [ %9202, %9195 ], [ %8831, %8852 ]
  %9227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9228 = extractvalue %dx.types.CBufRet.f32 %9227, 2
  %9229 = extractvalue %dx.types.CBufRet.f32 %9227, 3
  %9230 = fmul fast float %9228, %106
  %9231 = fmul fast float %9229, %107
  %9232 = call float @dx.op.unary.f32(i32 7, float %9230)  ; Saturate(value)
  %9233 = call float @dx.op.unary.f32(i32 7, float %9231)  ; Saturate(value)
  %9234 = select i1 %7795, i32 2, i32 0
  %9235 = or i32 %9234, 1
  %9236 = uitofp i32 %9235 to float
  %9237 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9232, float %9233, float %9236, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9238 = extractvalue %dx.types.ResRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.ResRet.f32 %9237, 1
  %9240 = extractvalue %dx.types.ResRet.f32 %9237, 2
  %9241 = extractvalue %dx.types.ResRet.f32 %9237, 3
  %9242 = add nuw nsw i32 %9234, 2
  %9243 = uitofp i32 %9242 to float
  %9244 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9232, float %9233, float %9243, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9245 = extractvalue %dx.types.ResRet.f32 %9244, 0
  %9246 = extractvalue %dx.types.ResRet.f32 %9244, 1
  %9247 = extractvalue %dx.types.ResRet.f32 %9244, 2
  %9248 = extractvalue %dx.types.ResRet.f32 %9244, 3
  %9249 = call float @dx.op.binary.f32(i32 35, float %9239, float %9240)  ; FMax(a,b)
  %9250 = call float @dx.op.binary.f32(i32 35, float %9238, float %9249)  ; FMax(a,b)
  %9251 = call float @dx.op.binary.f32(i32 35, float %9250, float %9241)  ; FMax(a,b)
  %9252 = call float @dx.op.binary.f32(i32 36, float %9246, float %9247)  ; FMin(a,b)
  %9253 = call float @dx.op.binary.f32(i32 36, float %9245, float %9252)  ; FMin(a,b)
  %9254 = call float @dx.op.binary.f32(i32 36, float %9253, float %9248)  ; FMin(a,b)
  %9255 = fmul fast float %9251, 2.550000e+02
  %9256 = fadd fast float %9255, 0x3F70101020000000
  %9257 = fptoui float %9256 to i32
  %9258 = fmul fast float %9254, 2.550000e+02
  %9259 = fadd fast float %9258, 0x3F70101020000000
  %9260 = fptoui float %9259 to i32
  %9261 = icmp ult i32 %9257, %9260
  br i1 %9261, label %9262, label %9431

; <label>:9262                                    ; preds = %9219
  %9263 = fcmp fast ogt float %96, 9.843750e-01
  %9264 = fadd fast float %8057, -4.000000e+00
  %9265 = select i1 %9263, float -4.000000e+00, float %9264
  %9266 = call float @dx.op.binary.f32(i32 35, float %9265, float 0.000000e+00)  ; FMax(a,b)
  %9267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.f32 %9267, 0
  %9269 = fadd fast float %9268, %9266
  %9270 = extractvalue %dx.types.CBufRet.f32 %9267, 2
  %9271 = fmul fast float %9269, %9270
  %9272 = call float @dx.op.unary.f32(i32 23, float %9271)  ; Log(value)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9267, 3
  %9274 = fmul fast float %9273, %9272
  %9275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.f32 %9275, 2
  %9277 = fmul fast float %9274, %9276
  %9278 = call float @dx.op.unary.f32(i32 7, float %9277)  ; Saturate(value)
  %9279 = uitofp i32 %9257 to float
  %9280 = uitofp i32 %9260 to float
  %9281 = fadd fast float %9279, 5.000000e-01
  %9282 = fadd fast float %9280, 5.000000e-01
  %9283 = fmul fast float %9276, %9281
  %9284 = fmul fast float %9276, %9282
  %9285 = fadd fast float %9283, 0x3F0FFB4800000000
  %9286 = fadd fast float %9284, 0xBF0FFB4800000000
  %9287 = call float @dx.op.binary.f32(i32 35, float %9278, float %9285)  ; FMax(a,b)
  %9288 = call float @dx.op.binary.f32(i32 36, float %9287, float %9286)  ; FMin(a,b)
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 1
  %9291 = extractvalue %dx.types.CBufRet.f32 %9289, 2
  %9292 = extractvalue %dx.types.CBufRet.f32 %9289, 0
  %9293 = select i1 %7795, float %9292, float 0.000000e+00
  %9294 = fmul fast float %9290, %9288
  %9295 = fadd fast float %9293, %9294
  %9296 = fadd fast float %9293, %9291
  %9297 = fsub fast float %9290, %9291
  %9298 = fadd fast float %9297, %9293
  %9299 = call float @dx.op.binary.f32(i32 35, float %9295, float %9296)  ; FMax(a,b)
  %9300 = call float @dx.op.binary.f32(i32 36, float %9299, float %9298)  ; FMin(a,b)
  %9301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9232, float %9233, float %9300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9302 = extractvalue %dx.types.ResRet.f32 %9301, 0
  %9303 = extractvalue %dx.types.ResRet.f32 %9301, 1
  %9304 = extractvalue %dx.types.ResRet.f32 %9301, 2
  %9305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9306 = extractvalue %dx.types.CBufRet.i32 %9305, 0
  %9307 = extractvalue %dx.types.CBufRet.i32 %9305, 1
  %9308 = uitofp i32 %9306 to float
  %9309 = uitofp i32 %9307 to float
  %9310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9311 = extractvalue %dx.types.CBufRet.f32 %9310, 0
  %9312 = extractvalue %dx.types.CBufRet.f32 %9310, 1
  %9313 = fmul fast float %9308, %9232
  %9314 = fmul fast float %9309, %9233
  %9315 = fadd fast float %9313, -5.000000e-01
  %9316 = fadd fast float %9314, -5.000000e-01
  %9317 = call float @dx.op.unary.f32(i32 22, float %9315)  ; Frc(value)
  %9318 = call float @dx.op.unary.f32(i32 22, float %9316)  ; Frc(value)
  %9319 = fmul fast float %9317, %9317
  %9320 = fmul fast float %9319, %9317
  %9321 = fsub fast float 3.000000e+00, %9317
  %9322 = fmul fast float %9319, %9321
  %9323 = fmul fast float %9317, 3.000000e+00
  %9324 = fmul fast float %9320, 3.000000e+00
  %9325 = fmul fast float %9319, 6.000000e+00
  %9326 = fsub fast float %9324, %9325
  %9327 = fadd fast float %9326, 4.000000e+00
  %9328 = fmul fast float %9327, 0x3FC5555560000000
  %9329 = fmul fast float %9320, -3.000000e+00
  %9330 = fadd fast float %9319, %9317
  %9331 = fmul fast float %9330, 3.000000e+00
  %9332 = fadd fast float %9329, 1.000000e+00
  %9333 = fadd fast float %9332, %9331
  %9334 = fmul fast float %9320, 0x3FC5555560000000
  %9335 = fmul fast float %9318, %9318
  %9336 = fmul fast float %9335, %9318
  %9337 = fsub fast float 3.000000e+00, %9318
  %9338 = fmul fast float %9335, %9337
  %9339 = fmul fast float %9318, 3.000000e+00
  %9340 = fmul fast float %9336, 3.000000e+00
  %9341 = fmul fast float %9335, 6.000000e+00
  %9342 = fsub fast float %9340, %9341
  %9343 = fadd fast float %9342, 4.000000e+00
  %9344 = fmul fast float %9343, 0x3FC5555560000000
  %9345 = fmul fast float %9336, -3.000000e+00
  %9346 = fadd fast float %9335, %9318
  %9347 = fmul fast float %9346, 3.000000e+00
  %9348 = fadd fast float %9345, 1.000000e+00
  %9349 = fadd fast float %9348, %9347
  %9350 = fmul fast float %9336, 0x3FC5555560000000
  %9351 = fadd fast float %9317, 1.000000e+00
  %9352 = fsub fast float 1.000000e+00, %9323
  %9353 = fadd fast float %9352, %9322
  %9354 = fadd fast float %9353, %9327
  %9355 = fmul fast float %9354, 0x3FC5555560000000
  %9356 = fdiv fast float %9328, %9355
  %9357 = fsub fast float %9351, %9356
  %9358 = fsub fast float 1.000000e+00, %9317
  %9359 = fadd fast float %9333, %9320
  %9360 = fmul fast float %9359, 0x3FC5555560000000
  %9361 = fdiv fast float %9334, %9360
  %9362 = fadd fast float %9358, %9361
  %9363 = fadd fast float %9318, 1.000000e+00
  %9364 = fsub fast float 1.000000e+00, %9339
  %9365 = fadd fast float %9364, %9338
  %9366 = fadd fast float %9365, %9343
  %9367 = fmul fast float %9366, 0x3FC5555560000000
  %9368 = fdiv fast float %9344, %9367
  %9369 = fsub fast float %9363, %9368
  %9370 = fsub fast float 1.000000e+00, %9318
  %9371 = fadd fast float %9349, %9336
  %9372 = fmul fast float %9371, 0x3FC5555560000000
  %9373 = fdiv fast float %9350, %9372
  %9374 = fadd fast float %9373, %9370
  %9375 = fmul fast float %9357, %9311
  %9376 = fsub fast float %9232, %9375
  %9377 = fmul fast float %9362, %9311
  %9378 = fadd fast float %9377, %9232
  %9379 = fmul fast float %9374, %9312
  %9380 = fadd fast float %9379, %9233
  %9381 = fmul fast float %9369, %9312
  %9382 = fsub fast float %9233, %9381
  %9383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9376, float %9382, float %9300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9384 = extractvalue %dx.types.ResRet.f32 %9383, 0
  %9385 = extractvalue %dx.types.ResRet.f32 %9383, 1
  %9386 = extractvalue %dx.types.ResRet.f32 %9383, 2
  %9387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9378, float %9382, float %9300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9388 = extractvalue %dx.types.ResRet.f32 %9387, 0
  %9389 = extractvalue %dx.types.ResRet.f32 %9387, 1
  %9390 = extractvalue %dx.types.ResRet.f32 %9387, 2
  %9391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9376, float %9380, float %9300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9392 = extractvalue %dx.types.ResRet.f32 %9391, 0
  %9393 = extractvalue %dx.types.ResRet.f32 %9391, 1
  %9394 = extractvalue %dx.types.ResRet.f32 %9391, 2
  %9395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9378, float %9380, float %9300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9396 = extractvalue %dx.types.ResRet.f32 %9395, 0
  %9397 = extractvalue %dx.types.ResRet.f32 %9395, 1
  %9398 = extractvalue %dx.types.ResRet.f32 %9395, 2
  %9399 = fsub fast float %9392, %9384
  %9400 = fsub fast float %9393, %9385
  %9401 = fsub fast float %9394, %9386
  %9402 = fmul fast float %9399, %9372
  %9403 = fmul fast float %9400, %9372
  %9404 = fmul fast float %9401, %9372
  %9405 = fadd fast float %9402, %9384
  %9406 = fadd fast float %9403, %9385
  %9407 = fadd fast float %9404, %9386
  %9408 = fsub fast float %9396, %9388
  %9409 = fsub fast float %9397, %9389
  %9410 = fsub fast float %9398, %9390
  %9411 = fmul fast float %9408, %9372
  %9412 = fmul fast float %9409, %9372
  %9413 = fmul fast float %9410, %9372
  %9414 = fsub fast float %9388, %9405
  %9415 = fadd fast float %9414, %9411
  %9416 = fsub fast float %9389, %9406
  %9417 = fadd fast float %9416, %9412
  %9418 = fsub fast float %9390, %9407
  %9419 = fadd fast float %9418, %9413
  %9420 = fmul fast float %9415, %9360
  %9421 = fmul fast float %9417, %9360
  %9422 = fmul fast float %9419, %9360
  %9423 = fadd fast float %9420, %9405
  %9424 = fadd fast float %9421, %9406
  %9425 = fadd fast float %9422, %9407
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 1
  %9428 = fmul fast float %9423, %9427
  %9429 = fmul fast float %9424, %9427
  %9430 = fmul fast float %9425, %9427
  br label %9431

; <label>:9431                                    ; preds = %9262, %9219
  %9432 = phi float [ %9302, %9262 ], [ 1.000000e+00, %9219 ]
  %9433 = phi float [ %9303, %9262 ], [ 1.000000e+00, %9219 ]
  %9434 = phi float [ %9304, %9262 ], [ 1.000000e+00, %9219 ]
  %9435 = phi float [ %9428, %9262 ], [ 0.000000e+00, %9219 ]
  %9436 = phi float [ %9429, %9262 ], [ 0.000000e+00, %9219 ]
  %9437 = phi float [ %9430, %9262 ], [ 0.000000e+00, %9219 ]
  %9438 = fmul fast float %9435, %7769
  %9439 = fmul fast float %9436, %7771
  %9440 = fmul fast float %9437, %7773
  %9441 = fmul fast float %9432, %9226
  %9442 = call float @dx.op.dot3.f32(i32 55, float %9432, float %9433, float %9434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9443 = call float @dx.op.dot3.f32(i32 55, float %9438, float %9439, float %9440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9444 = select i1 %265, float %9442, float %9432
  %9445 = select i1 %265, float %9442, float %9433
  %9446 = select i1 %265, float 1.000000e+00, float %9434
  %9447 = select i1 %265, float %9443, float %9438
  %9448 = select i1 %265, float 0.000000e+00, float %9439
  %9449 = select i1 %265, float 0.000000e+00, float %9440
  %9450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.i32 %9450, 3
  %9452 = and i32 %9451, 3
  %9453 = icmp ne i32 %9452, 0
  %9454 = and i32 %9451, 4
  %9455 = icmp ne i32 %9454, 0
  %9456 = and i1 %9453, %9455
  %9457 = and i1 %265, %9456
  br i1 %9457, label %9458, label %9464

; <label>:9458                                    ; preds = %9431
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 1
  %9461 = fadd fast float %9441, -1.000000e+00
  %9462 = fmul fast float %9460, %9461
  %9463 = fadd fast float %9462, 1.000000e+00
  br label %9464

; <label>:9464                                    ; preds = %9458, %9431
  %9465 = phi float [ %9463, %9458 ], [ %9441, %9431 ]
  %9466 = fadd fast float %9223, %9220
  %9467 = fmul fast float %9444, %9466
  %9468 = fadd fast float %9467, %9447
  %9469 = fadd fast float %9224, %9221
  %9470 = fmul fast float %9445, %9469
  %9471 = fadd fast float %9470, %9448
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 0
  br i1 %265, label %9474, label %9490

; <label>:9474                                    ; preds = %9464
  %9475 = fadd fast float %9468, %9471
  %9476 = fmul fast float %9473, %9475
  %9477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9478 = extractvalue %dx.types.CBufRet.f32 %9477, 3
  %9479 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %9480 = fsub fast float %7782, %7776
  %9481 = fadd fast float %9480, %7783
  %9482 = fsub fast float %9481, %9479
  %9483 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %9484 = fmul fast float %9482, %9483
  %9485 = call float @dx.op.unary.f32(i32 7, float %9484)  ; Saturate(value)
  %9486 = fsub fast float %9485, %9478
  %9487 = fmul fast float %9486, %9465
  %9488 = fadd fast float %9487, %9478
  %9489 = fmul fast float %9488, %4564
  br label %9516

; <label>:9490                                    ; preds = %9464
  %9491 = fadd fast float %9225, %9222
  %9492 = fmul fast float %9446, %9491
  %9493 = fadd fast float %9492, %9449
  %9494 = fmul fast float %9473, %9468
  %9495 = fmul fast float %9473, %9471
  %9496 = fmul fast float %9473, %9493
  %9497 = call float @dx.op.binary.f32(i32 35, float %9495, float %9496)  ; FMax(a,b)
  %9498 = call float @dx.op.binary.f32(i32 35, float %9494, float %9497)  ; FMax(a,b)
  %9499 = call float @dx.op.binary.f32(i32 35, float %7771, float %7773)  ; FMax(a,b)
  %9500 = call float @dx.op.binary.f32(i32 35, float %7769, float %9499)  ; FMax(a,b)
  %9501 = call float @dx.op.binary.f32(i32 35, float %9498, float %9500)  ; FMax(a,b)
  %9502 = fcmp fast ugt float %9501, 0x3F10000000000000
  br i1 %9502, label %9504, label %9503

; <label>:9503                                    ; preds = %9490
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9504

; <label>:9504                                    ; preds = %9503, %9490
  %9505 = add i32 %55, 356
  %9506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9505, i32 undef)  ; BufferLoad(srv,index,wot)
  %9507 = extractvalue %dx.types.ResRet.i32 %9506, 0
  %9508 = and i32 %9507, 32
  %9509 = icmp eq i32 %9508, 0
  br i1 %9509, label %9516, label %9510

; <label>:9510                                    ; preds = %9504
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 0
  %9513 = fmul fast float %9512, 0x3FE99999A0000000
  %9514 = fadd fast float %9512, %9494
  %9515 = fadd fast float %9513, %9496
  br label %9516

; <label>:9516                                    ; preds = %9510, %9504, %9474
  %9517 = phi float [ %4564, %9474 ], [ %7771, %9510 ], [ %7771, %9504 ]
  %9518 = phi float [ %4564, %9474 ], [ %7773, %9510 ], [ %7773, %9504 ]
  %9519 = phi float [ %9476, %9474 ], [ %9514, %9510 ], [ %9494, %9504 ]
  %9520 = phi float [ %9489, %9474 ], [ %9495, %9510 ], [ %9495, %9504 ]
  %9521 = phi float [ %4564, %9474 ], [ %9515, %9510 ], [ %9496, %9504 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9522 = call float @dx.op.binary.f32(i32 36, float %9519, float 3.225500e+04)  ; FMin(a,b)
  %9523 = call float @dx.op.binary.f32(i32 36, float %9520, float 3.225500e+04)  ; FMin(a,b)
  %9524 = call float @dx.op.binary.f32(i32 36, float %9521, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9522)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9523)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9525 = call float @dx.op.binary.f32(i32 36, float %7769, float 3.225500e+04)  ; FMin(a,b)
  %9526 = call float @dx.op.binary.f32(i32 36, float %9517, float 3.225500e+04)  ; FMin(a,b)
  %9527 = call float @dx.op.binary.f32(i32 36, float %9518, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9525)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9526)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9527)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !97}
!70 = !{!71, !93, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 5, i8 0, !79}
!82 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 7, i8 0, !79}
!84 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 9, i8 0, !77}
!86 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !74}
!87 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !79}
!88 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 12, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 12, i8 1, !89}
!91 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 13, i8 0, !89}
!92 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94, !95}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!95 = !{i32 1, !"SV_Target", i8 9, i8 16, !96, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!96 = !{i32 1}
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
!136 = distinct !{!136, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

