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
;
; shader hash: fcea23894e43a711782e3aeb780789af
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %459 = add i32 %55, 492
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
  br i1 %515, label %1081, label %516

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
  %1039 = and i32 %1038, 14336
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1066, label %1041

; <label>:1041                                    ; preds = %1033
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 4096
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1066, label %1046

; <label>:1046                                    ; preds = %1041
  %1047 = and i32 %1043, 1048576
  %1048 = icmp ne i32 %1047, 0
  %1049 = add i32 %55, 476
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = add i32 %1051, 0
  %1053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1053, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1056 = select i1 %1048, float 1.000000e+00, float %1055
  %1057 = add i32 %55, 164
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = and i32 %1059, 65535
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = lshr i32 %1059, 16
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = fmul fast float %1061, %1056
  %1065 = fadd fast float %1064, %1063
  br label %1066

; <label>:1066                                    ; preds = %1046, %1041, %1033
  %1067 = phi float [ %1065, %1046 ], [ 0.000000e+00, %1041 ], [ 0.000000e+00, %1033 ]
  %1068 = add i32 %55, 96
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 255
  %1072 = uitofp i32 %1071 to float
  %1073 = lshr i32 %1070, 8
  %1074 = and i32 %1073, 255
  %1075 = uitofp i32 %1074 to float
  %1076 = call float @dx.op.dot3.f32(i32 55, float %906, float %907, float %908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1077 = fmul fast float %1075, %1076
  %1078 = fadd fast float %1077, %1072
  %1079 = fmul fast float %1078, 0x3F70101020000000
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  br label %1081

; <label>:1081                                    ; preds = %1066, %501
  %1082 = phi float [ 0.000000e+00, %501 ], [ %987, %1066 ]
  %1083 = phi float [ 0.000000e+00, %501 ], [ %988, %1066 ]
  %1084 = phi float [ 0.000000e+00, %501 ], [ %906, %1066 ]
  %1085 = phi float [ 0.000000e+00, %501 ], [ %907, %1066 ]
  %1086 = phi float [ 0.000000e+00, %501 ], [ %908, %1066 ]
  %1087 = phi float [ 0.000000e+00, %501 ], [ %1034, %1066 ]
  %1088 = phi float [ 0.000000e+00, %501 ], [ %1035, %1066 ]
  %1089 = phi float [ 0.000000e+00, %501 ], [ %1036, %1066 ]
  %1090 = phi float [ 0.000000e+00, %501 ], [ %892, %1066 ]
  %1091 = phi float [ 0.000000e+00, %501 ], [ %688, %1066 ]
  %1092 = phi float [ 0.000000e+00, %501 ], [ %986, %1066 ]
  %1093 = phi float [ 0.000000e+00, %501 ], [ %989, %1066 ]
  %1094 = phi float [ 0.000000e+00, %501 ], [ %1067, %1066 ]
  %1095 = phi float [ 0.000000e+00, %501 ], [ %1080, %1066 ]
  br i1 %449, label %1863, label %1096

; <label>:1096                                    ; preds = %1081
  %1097 = icmp ult i32 %507, 2
  %1098 = add i32 %55, 40
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = add i32 %55, 44
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = or i32 %1103, %1100
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1863, label %1106

; <label>:1106                                    ; preds = %1096
  %1107 = and i32 %1100, 262144
  %1108 = icmp ne i32 %1107, 0
  %1109 = select i1 %1108, float %61, float 1.000000e+00
  %1110 = select i1 %1108, float %62, float 0.000000e+00
  %1111 = select i1 %1108, float %63, float 0.000000e+00
  %1112 = select i1 %1108, float %64, float 1.000000e+00
  %1113 = select i1 %1108, float %65, float %88
  %1114 = select i1 %1108, float %66, float %89
  %1115 = add i32 %55, 300
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 16
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = fmul fast float %1119, 0x3F50624DE0000000
  %1121 = add i32 %55, 104
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = lshr i32 %1123, 16
  %1125 = and i32 %1124, 255
  %1126 = lshr i32 %1123, 24
  %1127 = add i32 %55, 308
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 65535
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130)  ; LegacyF16ToF32(value)
  %1132 = lshr i32 %1129, 16
  %1133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1132)  ; LegacyF16ToF32(value)
  %1134 = add i32 %55, 48
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = lshr i32 %1136, 22
  %1138 = shl nuw nsw i32 %1137, 5
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = shl i32 %1136, 4
  %1141 = and i32 %1140, 32752
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = lshr i32 %1136, 7
  %1144 = and i32 %1143, 32752
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 3
  %1148 = fmul fast float %1147, 1.000000e+03
  %1149 = fmul fast float %359, %1148
  %1150 = call float @dx.op.unary.f32(i32 22, float %1149)  ; Frc(value)
  %1151 = fadd fast float %1150, %349
  %1152 = fmul fast float %360, %1148
  %1153 = call float @dx.op.unary.f32(i32 22, float %1152)  ; Frc(value)
  %1154 = fadd fast float %1153, %351
  %1155 = fmul fast float %1120, %1148
  %1156 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1157 = fmul fast float %1156, 0x401921FB60000000
  %1158 = fadd fast float %1157, %1139
  %1159 = call float @dx.op.unary.f32(i32 13, float %1158)  ; Sin(value)
  %1160 = call float @dx.op.unary.f32(i32 12, float %1158)  ; Cos(value)
  %1161 = fsub fast float -0.000000e+00, %1159
  %1162 = fadd fast float %1113, -5.000000e-01
  %1163 = fadd fast float %1114, -5.000000e-01
  %1164 = fmul fast float %1131, %1162
  %1165 = fmul fast float %1133, %1163
  %1166 = fadd fast float %1164, 5.000000e-01
  %1167 = fadd fast float %1165, 5.000000e-01
  %1168 = fmul fast float %1142, %1166
  %1169 = fmul fast float %1145, %1167
  %1170 = fmul fast float %1160, %1168
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1161, float %1169, float %1170)  ; FMad(a,b,c)
  %1172 = fmul fast float %1159, %1168
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1160, float %1169, float %1172)  ; FMad(a,b,c)
  %1174 = fadd fast float %1151, %1171
  %1175 = fadd fast float %1154, %1173
  %1176 = icmp ugt i32 %1125, 1
  %1177 = icmp ugt i32 %1123, 33554431
  %1178 = or i1 %1177, %1176
  br i1 %1178, label %1179, label %1204

; <label>:1179                                    ; preds = %1106
  %1180 = add i32 %55, 244
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = fmul fast float %1147, %1184
  %1186 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1187 = mul nuw nsw i32 %1125, %1126
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1186, %1188
  %1190 = call float @dx.op.unary.f32(i32 27, float %1189)  ; Round_ni(value)
  %1191 = fptoui float %1190 to i32
  %1192 = urem i32 %1191, %1125
  %1193 = udiv i32 %1191, %1126
  %1194 = call float @dx.op.unary.f32(i32 22, float %1174)  ; Frc(value)
  %1195 = call float @dx.op.unary.f32(i32 22, float %1175)  ; Frc(value)
  %1196 = uitofp i32 %1192 to float
  %1197 = uitofp i32 %1193 to float
  %1198 = fadd fast float %1194, %1196
  %1199 = fadd fast float %1195, %1197
  %1200 = uitofp i32 %1125 to float
  %1201 = uitofp i32 %1126 to float
  %1202 = fdiv fast float %1198, %1200
  %1203 = fdiv fast float %1199, %1201
  br label %1204

; <label>:1204                                    ; preds = %1179, %1106
  %1205 = phi float [ %1202, %1179 ], [ %1174, %1106 ]
  %1206 = phi float [ %1203, %1179 ], [ %1175, %1106 ]
  %1207 = and i32 %1100, 256
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1255, label %1209

; <label>:1209                                    ; preds = %1204
  %1210 = add i32 %55, 444
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %1212, 0
  %1214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1214, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = add i32 %55, 116
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = shl i32 %1219, 4
  %1221 = and i32 %1220, 32752
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = lshr i32 %1219, 7
  %1224 = and i32 %1223, 32752
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fsub fast float 1.000000e+00, %504
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1228 = bitcast float %504 to i32
  %1229 = sitofp i32 %1228 to float
  %1230 = fadd fast float %1229, 0xC1CFBF8940000000
  %1231 = fmul fast float %1225, %1230
  %1232 = fadd fast float %1231, 0x41CFBF8940000000
  %1233 = fptosi float %1232 to i32
  %1234 = bitcast i32 %1233 to float
  %1235 = bitcast float %1227 to i32
  %1236 = sitofp i32 %1235 to float
  %1237 = fadd fast float %1236, 0xC1CFBF8940000000
  %1238 = fmul fast float %1237, %1225
  %1239 = fadd fast float %1238, 0x41CFBF8940000000
  %1240 = fptosi float %1239 to i32
  %1241 = bitcast i32 %1240 to float
  %1242 = fmul fast float %1234, %1222
  %1243 = fmul fast float %1241, %1222
  %1244 = fsub fast float %1227, %1242
  %1245 = fadd fast float %1243, %1227
  %1246 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1247 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1248 = fsub fast float %1216, %1246
  %1249 = fsub fast float %1247, %1246
  %1250 = bitcast float %1249 to i32
  %1251 = sub nsw i32 2129859010, %1250
  %1252 = bitcast i32 %1251 to float
  %1253 = fmul fast float %1252, %1248
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  br label %1255

; <label>:1255                                    ; preds = %1209, %1204
  %1256 = phi float [ %1254, %1209 ], [ %504, %1204 ]
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 128
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1277, label %1261

; <label>:1261                                    ; preds = %1255
  %1262 = add i32 %55, 428
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %1264, 0
  %1266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1266, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 524288
  %1272 = icmp ne i32 %1271, 0
  %1273 = fcmp fast ogt float %1268, 0x3FE0101020000000
  %1274 = select i1 %1273, float 1.000000e+00, float 0.000000e+00
  %1275 = select i1 %1272, float %1274, float %1268
  %1276 = fmul fast float %1275, %1256
  br label %1277

; <label>:1277                                    ; preds = %1261, %1255
  %1278 = phi float [ %1276, %1261 ], [ %1256, %1255 ]
  %1279 = fcmp fast ult float %1278, 0x3F70101020000000
  br i1 %1279, label %1863, label %1280

; <label>:1280                                    ; preds = %1277
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 16
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1483, label %1285

; <label>:1285                                    ; preds = %1280
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = add i32 %55, 380
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %102, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1298 = and i32 %1287, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = lshr i32 %1287, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1297, %1299
  %1304 = fadd fast float %1303, %1302
  %1305 = fmul fast float %1304, 0x3F70101000000000
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 512
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1318, label %1310

; <label>:1310                                    ; preds = %1285
  %1311 = add i32 %55, 464
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = add i32 %1313, 0
  %1315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1315, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  br label %1318

; <label>:1318                                    ; preds = %1310, %1285
  %1319 = phi float [ %1317, %1310 ], [ 1.000000e+00, %1285 ]
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 33554432
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1430, label %1324

; <label>:1324                                    ; preds = %1318
  %1325 = add i32 %55, 240
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 65535
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = lshr i32 %1327, 16
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = add i32 %55, 244
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 65535
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = lshr i32 %1338, 24
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = and i32 %1338, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1343, 0x3F70101020000000
  %1345 = lshr i32 %1338, 8
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1347, 0x3F70101020000000
  %1349 = lshr i32 %1338, 16
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = add i32 %55, 236
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = lshr i32 %1355, 24
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1357, 0x3F70101020000000
  %1359 = and i32 %1355, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1360, 0x3F70101020000000
  %1362 = lshr i32 %1355, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = lshr i32 %1355, 16
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = bitcast float %1294 to i32
  %1371 = ashr i32 %1370, 1
  %1372 = sub nsw i32 1597463174, %1371
  %1373 = bitcast i32 %1372 to float
  %1374 = fmul fast float %1294, 5.000000e-01
  %1375 = fmul fast float %1373, %1373
  %1376 = fmul fast float %1375, %1374
  %1377 = fsub fast float 1.500000e+00, %1376
  %1378 = fmul fast float %1373, %1294
  %1379 = fmul fast float %1378, %1377
  %1380 = bitcast float %1295 to i32
  %1381 = ashr i32 %1380, 1
  %1382 = sub nsw i32 1597463174, %1381
  %1383 = bitcast i32 %1382 to float
  %1384 = fmul fast float %1295, 5.000000e-01
  %1385 = fmul fast float %1383, %1383
  %1386 = fmul fast float %1385, %1384
  %1387 = fsub fast float 1.500000e+00, %1386
  %1388 = fmul fast float %1383, %1295
  %1389 = fmul fast float %1388, %1387
  %1390 = bitcast float %1296 to i32
  %1391 = ashr i32 %1390, 1
  %1392 = sub nsw i32 1597463174, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1296, 5.000000e-01
  %1395 = fmul fast float %1393, %1393
  %1396 = fmul fast float %1395, %1394
  %1397 = fsub fast float 1.500000e+00, %1396
  %1398 = fmul fast float %1393, %1296
  %1399 = fmul fast float %1398, %1397
  %1400 = fsub fast float %1379, %1361
  %1401 = fsub fast float %1389, %1365
  %1402 = fsub fast float %1399, %1369
  %1403 = fmul fast float %1400, %1329
  %1404 = fmul fast float %1401, %1331
  %1405 = fmul fast float %1402, %1336
  %1406 = fadd fast float %1403, %1344
  %1407 = fadd fast float %1404, %1348
  %1408 = fadd fast float %1405, %1352
  %1409 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1412 = fmul fast float %1409, %1409
  %1413 = fmul fast float %1410, %1410
  %1414 = fmul fast float %1411, %1411
  %1415 = fsub fast float %1412, %1294
  %1416 = fsub fast float %1413, %1295
  %1417 = fsub fast float %1414, %1296
  %1418 = fmul fast float %1415, %1319
  %1419 = fmul fast float %1416, %1319
  %1420 = fmul fast float %1417, %1319
  %1421 = fadd fast float %1418, %1294
  %1422 = fadd fast float %1419, %1295
  %1423 = fadd fast float %1420, %1296
  %1424 = fadd fast float %1341, %1305
  %1425 = fsub fast float %1424, %1358
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = fsub fast float %1426, %1305
  %1428 = fmul fast float %1427, %1319
  %1429 = fadd fast float %1428, %1305
  br label %1483

; <label>:1430                                    ; preds = %1318
  %1431 = and i32 %1321, 134217728
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1467, label %1433

; <label>:1433                                    ; preds = %1430
  %1434 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1435 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1436 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1437 = fadd fast float %1434, -5.000000e-01
  %1438 = fadd fast float %1435, -5.000000e-01
  %1439 = fadd fast float %1436, -5.000000e-01
  %1440 = fmul fast float %1437, %1319
  %1441 = fmul fast float %1438, %1319
  %1442 = fmul fast float %1439, %1319
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 24, float %1294)  ; Sqrt(value)
  %1447 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1448 = call float @dx.op.unary.f32(i32 24, float %1296)  ; Sqrt(value)
  %1449 = fmul fast float %1443, 2.000000e+00
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = fmul fast float %1450, %1446
  %1452 = fadd fast float %1451, %1449
  %1453 = fmul fast float %1452, %1446
  %1454 = fmul fast float %1444, 2.000000e+00
  %1455 = fsub fast float 1.000000e+00, %1454
  %1456 = fmul fast float %1455, %1447
  %1457 = fadd fast float %1456, %1454
  %1458 = fmul fast float %1457, %1447
  %1459 = fmul fast float %1445, 2.000000e+00
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = fmul fast float %1460, %1448
  %1462 = fadd fast float %1461, %1459
  %1463 = fmul fast float %1462, %1448
  %1464 = fmul fast float %1453, %1453
  %1465 = fmul fast float %1458, %1458
  %1466 = fmul fast float %1463, %1463
  br label %1483

; <label>:1467                                    ; preds = %1430
  %1468 = fmul fast float %336, %336
  %1469 = fmul fast float %340, %340
  %1470 = fmul fast float %344, %344
  %1471 = fadd fast float %1468, -1.000000e+00
  %1472 = fadd fast float %1469, -1.000000e+00
  %1473 = fadd fast float %1470, -1.000000e+00
  %1474 = fmul fast float %1319, %1471
  %1475 = fmul fast float %1319, %1472
  %1476 = fmul fast float %1319, %1473
  %1477 = fadd fast float %1474, 1.000000e+00
  %1478 = fadd fast float %1475, 1.000000e+00
  %1479 = fadd fast float %1476, 1.000000e+00
  %1480 = fmul fast float %1477, %1294
  %1481 = fmul fast float %1478, %1295
  %1482 = fmul fast float %1479, %1296
  br label %1483

; <label>:1483                                    ; preds = %1467, %1433, %1324, %1280
  %1484 = phi float [ %1429, %1324 ], [ %1305, %1433 ], [ %1305, %1467 ], [ 0x3FA23C0BE0000000, %1280 ]
  %1485 = phi float [ %1421, %1324 ], [ %1464, %1433 ], [ %1480, %1467 ], [ 1.000000e+00, %1280 ]
  %1486 = phi float [ %1422, %1324 ], [ %1465, %1433 ], [ %1481, %1467 ], [ 1.000000e+00, %1280 ]
  %1487 = phi float [ %1423, %1324 ], [ %1466, %1433 ], [ %1482, %1467 ], [ 1.000000e+00, %1280 ]
  %1488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.i32 %1488, 1
  %1490 = and i32 %1489, 1
  %1491 = icmp ne i32 %1490, 0
  %1492 = add i32 %55, 356
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 32
  %1496 = icmp ne i32 %1495, 0
  %1497 = and i1 %1491, %1496
  %1498 = select i1 %1497, float 1.000000e+00, float %1485
  %1499 = select i1 %1497, float 0x3FD3333340000000, float %1486
  %1500 = select i1 %1497, float 0x3FD3333340000000, float %1487
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 32
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1577, label %1505

; <label>:1505                                    ; preds = %1483
  %1506 = add i32 %55, 108
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %55, 396
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %102, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = extractvalue %dx.types.ResRet.f32 %1514, 3
  %1519 = and i32 %1508, 255
  %1520 = uitofp i32 %1519 to float
  %1521 = lshr i32 %1508, 8
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = lshr i32 %1508, 16
  %1525 = and i32 %1524, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101000000000
  %1528 = fmul fast float %1515, %1520
  %1529 = fadd fast float %1528, %1523
  %1530 = fmul fast float %1529, 0x3F70101000000000
  %1531 = fadd fast float %1516, -5.000000e-01
  %1532 = fadd fast float %1518, -5.000000e-01
  %1533 = fmul fast float %1531, %1527
  %1534 = fmul fast float %1532, %1527
  %1535 = fadd fast float %1533, 5.000000e-01
  %1536 = fadd fast float %1534, 5.000000e-01
  %1537 = fmul fast float %1535, 2.000000e+00
  %1538 = fadd fast float %1537, -1.000000e+00
  %1539 = fmul fast float %1536, 2.000000e+00
  %1540 = fadd fast float %1539, -1.000000e+00
  %1541 = fadd fast float %1538, %1540
  %1542 = fmul fast float %1541, 5.000000e-01
  %1543 = fsub fast float %1538, %1540
  %1544 = fmul fast float %1543, 5.000000e-01
  %1545 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = call float @dx.op.unary.f32(i32 6, float %1544)  ; FAbs(value)
  %1548 = fsub fast float %1546, %1547
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1544, float %1548, float %1542, float %1544, float %1548)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = call float @dx.op.unary.f32(i32 25, float %1549)  ; Rsqrt(value)
  %1551 = fmul fast float %1542, %1550
  %1552 = fmul fast float %1544, %1550
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 67108864
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1573, label %1557

; <label>:1557                                    ; preds = %1505
  %1558 = add i32 %55, 296
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 65535
  %1562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1561)  ; LegacyF16ToF32(value)
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = lshr i32 %1560, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = fsub fast float %1530, %1568
  %1570 = fmul fast float %1569, %1562
  %1571 = fadd fast float %1570, %1566
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  br label %1573

; <label>:1573                                    ; preds = %1557, %1505
  %1574 = phi float [ %1572, %1557 ], [ %1530, %1505 ]
  %1575 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1109, float %1110)  ; Dot2(ax,ay,bx,by)
  %1576 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1111, float %1112)  ; Dot2(ax,ay,bx,by)
  br label %1577

; <label>:1577                                    ; preds = %1573, %1483
  %1578 = phi float [ %1574, %1573 ], [ 0x3FD6666660000000, %1483 ]
  %1579 = phi float [ %1575, %1573 ], [ 0.000000e+00, %1483 ]
  %1580 = phi float [ %1576, %1573 ], [ 0.000000e+00, %1483 ]
  %1581 = phi float [ %1517, %1573 ], [ 1.000000e+00, %1483 ]
  %1582 = add i32 %55, 176
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = lshr i32 %1584, 22
  %1586 = shl nuw nsw i32 %1585, 5
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 64
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1625, label %1592

; <label>:1592                                    ; preds = %1577
  %1593 = add i32 %55, 412
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 131072
  %1601 = icmp eq i32 %1600, 0
  %1602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %102, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = fmul fast float %1603, %324
  %1607 = fmul fast float %1604, %327
  %1608 = fmul fast float %1605, %330
  br i1 %1601, label %1615, label %1609

; <label>:1609                                    ; preds = %1592
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = fmul fast float %1611, %1606
  %1613 = fmul fast float %1611, %1607
  %1614 = fmul fast float %1611, %1608
  br label %1615

; <label>:1615                                    ; preds = %1609, %1592
  %1616 = phi float [ %1612, %1609 ], [ %1606, %1592 ]
  %1617 = phi float [ %1613, %1609 ], [ %1607, %1592 ]
  %1618 = phi float [ %1614, %1609 ], [ %1608, %1592 ]
  %1619 = fmul fast float %1616, %1587
  %1620 = select i1 %265, float %1619, float %1616
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1617, float %1618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = select i1 %265, float 0.000000e+00, float %1616
  %1623 = select i1 %265, float %1621, float %1617
  %1624 = select i1 %265, float 0.000000e+00, float %1618
  br label %1625

; <label>:1625                                    ; preds = %1615, %1577
  %1626 = phi float [ %1622, %1615 ], [ 0.000000e+00, %1577 ]
  %1627 = phi float [ %1623, %1615 ], [ 0.000000e+00, %1577 ]
  %1628 = phi float [ %1624, %1615 ], [ 0.000000e+00, %1577 ]
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 14336
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1658, label %1633

; <label>:1633                                    ; preds = %1625
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = and i32 %1635, 4096
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1658, label %1638

; <label>:1638                                    ; preds = %1633
  %1639 = and i32 %1635, 1048576
  %1640 = icmp ne i32 %1639, 0
  %1641 = add i32 %55, 480
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = add i32 %1643, 0
  %1645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1645, %dx.types.Handle %103, float %1205, float %1206, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 2
  %1648 = select i1 %1640, float 1.000000e+00, float %1647
  %1649 = add i32 %55, 180
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 65535
  %1653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1652)  ; LegacyF16ToF32(value)
  %1654 = lshr i32 %1651, 16
  %1655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1654)  ; LegacyF16ToF32(value)
  %1656 = fmul fast float %1653, %1648
  %1657 = fadd fast float %1656, %1655
  br label %1658

; <label>:1658                                    ; preds = %1638, %1633, %1625
  %1659 = phi float [ %1657, %1638 ], [ 0.000000e+00, %1633 ], [ 0.000000e+00, %1625 ]
  %1660 = add i32 %55, 112
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = and i32 %1662, 255
  %1664 = uitofp i32 %1663 to float
  %1665 = lshr i32 %1662, 8
  %1666 = and i32 %1665, 255
  %1667 = uitofp i32 %1666 to float
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1499, float %1500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = fmul fast float %1667, %1668
  %1670 = fadd fast float %1669, %1664
  %1671 = fmul fast float %1670, 0x3F70101020000000
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  br i1 %1097, label %1673, label %1681

; <label>:1673                                    ; preds = %1658
  %1674 = fsub fast float 1.000000e+00, %1278
  %1675 = fmul fast float %1674, %1084
  %1676 = fmul fast float %1674, %1085
  %1677 = fmul fast float %1674, %1086
  %1678 = fmul fast float %1674, %1087
  %1679 = fmul fast float %1674, %1088
  %1680 = fmul fast float %1674, %1089
  br label %1681

; <label>:1681                                    ; preds = %1673, %1658
  %1682 = phi float [ %1675, %1673 ], [ %1084, %1658 ]
  %1683 = phi float [ %1676, %1673 ], [ %1085, %1658 ]
  %1684 = phi float [ %1677, %1673 ], [ %1086, %1658 ]
  %1685 = phi float [ %1678, %1673 ], [ %1087, %1658 ]
  %1686 = phi float [ %1679, %1673 ], [ %1088, %1658 ]
  %1687 = phi float [ %1680, %1673 ], [ %1089, %1658 ]
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 3
  %1691 = icmp eq i32 %1690, 3
  br i1 %1691, label %1770, label %1692

; <label>:1692                                    ; preds = %1681
  %1693 = and i32 %1689, 16
  %1694 = icmp ne i32 %1693, 0
  %1695 = select i1 %1694, float %1278, float 0.000000e+00
  %1696 = icmp eq i32 %1690, 0
  br i1 %1696, label %1697, label %1725

; <label>:1697                                    ; preds = %1692
  %1698 = and i32 %1689, 64
  %1699 = icmp ne i32 %1698, 0
  %1700 = select i1 %1699, float %1278, float 0.000000e+00
  %1701 = fsub fast float %1498, %1682
  %1702 = fsub fast float %1499, %1683
  %1703 = fsub fast float %1500, %1684
  %1704 = fmul fast float %1695, %1701
  %1705 = fmul fast float %1695, %1702
  %1706 = fmul fast float %1695, %1703
  %1707 = fadd fast float %1704, %1682
  %1708 = fadd fast float %1705, %1683
  %1709 = fadd fast float %1706, %1684
  %1710 = fsub fast float %1484, %1090
  %1711 = fmul fast float %1695, %1710
  %1712 = fadd fast float %1711, %1090
  %1713 = fsub fast float %1626, %1685
  %1714 = fsub fast float %1627, %1686
  %1715 = fsub fast float %1628, %1687
  %1716 = fmul fast float %1700, %1713
  %1717 = fmul fast float %1700, %1714
  %1718 = fmul fast float %1700, %1715
  %1719 = fadd fast float %1716, %1685
  %1720 = fadd fast float %1717, %1686
  %1721 = fadd fast float %1718, %1687
  %1722 = fsub fast float %1672, %1095
  %1723 = fmul fast float %1695, %1722
  %1724 = fadd fast float %1723, %1095
  br label %1770

; <label>:1725                                    ; preds = %1692
  %1726 = icmp eq i32 %1690, 1
  br i1 %1726, label %1727, label %1740

; <label>:1727                                    ; preds = %1725
  %1728 = fadd fast float %1498, -1.000000e+00
  %1729 = fadd fast float %1499, -1.000000e+00
  %1730 = fadd fast float %1500, -1.000000e+00
  %1731 = fmul fast float %1695, %1728
  %1732 = fmul fast float %1695, %1729
  %1733 = fmul fast float %1695, %1730
  %1734 = fadd fast float %1731, 1.000000e+00
  %1735 = fadd fast float %1732, 1.000000e+00
  %1736 = fadd fast float %1733, 1.000000e+00
  %1737 = fmul fast float %1734, %1682
  %1738 = fmul fast float %1735, %1683
  %1739 = fmul fast float %1736, %1684
  br label %1770

; <label>:1740                                    ; preds = %1725
  %1741 = icmp eq i32 %1690, 2
  br i1 %1741, label %1742, label %1770

; <label>:1742                                    ; preds = %1740
  %1743 = call float @dx.op.unary.f32(i32 24, float %1498)  ; Sqrt(value)
  %1744 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1745 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1746 = fadd fast float %1743, -5.000000e-01
  %1747 = fadd fast float %1744, -5.000000e-01
  %1748 = fadd fast float %1745, -5.000000e-01
  %1749 = fmul fast float %1746, %1695
  %1750 = fmul fast float %1747, %1695
  %1751 = fmul fast float %1748, %1695
  %1752 = fadd fast float %1749, 5.000000e-01
  %1753 = fadd fast float %1750, 5.000000e-01
  %1754 = fadd fast float %1751, 5.000000e-01
  %1755 = fmul fast float %1752, 2.000000e+00
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = fmul fast float %1756, %1682
  %1758 = fadd fast float %1757, %1755
  %1759 = fmul fast float %1758, %1682
  %1760 = fmul fast float %1753, 2.000000e+00
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1761, %1683
  %1763 = fadd fast float %1762, %1760
  %1764 = fmul fast float %1763, %1683
  %1765 = fmul fast float %1754, 2.000000e+00
  %1766 = fsub fast float 1.000000e+00, %1765
  %1767 = fmul fast float %1766, %1684
  %1768 = fadd fast float %1767, %1765
  %1769 = fmul fast float %1768, %1684
  br label %1770

; <label>:1770                                    ; preds = %1742, %1740, %1727, %1697, %1681
  %1771 = phi float [ %1682, %1681 ], [ %1759, %1742 ], [ %1682, %1740 ], [ %1737, %1727 ], [ %1707, %1697 ]
  %1772 = phi float [ %1683, %1681 ], [ %1764, %1742 ], [ %1683, %1740 ], [ %1738, %1727 ], [ %1708, %1697 ]
  %1773 = phi float [ %1684, %1681 ], [ %1769, %1742 ], [ %1684, %1740 ], [ %1739, %1727 ], [ %1709, %1697 ]
  %1774 = phi float [ %1685, %1681 ], [ %1685, %1742 ], [ %1685, %1740 ], [ %1685, %1727 ], [ %1719, %1697 ]
  %1775 = phi float [ %1686, %1681 ], [ %1686, %1742 ], [ %1686, %1740 ], [ %1686, %1727 ], [ %1720, %1697 ]
  %1776 = phi float [ %1687, %1681 ], [ %1687, %1742 ], [ %1687, %1740 ], [ %1687, %1727 ], [ %1721, %1697 ]
  %1777 = phi float [ %1090, %1681 ], [ %1090, %1742 ], [ %1090, %1740 ], [ %1090, %1727 ], [ %1712, %1697 ]
  %1778 = phi float [ %1095, %1681 ], [ %1095, %1742 ], [ %1095, %1740 ], [ %1095, %1727 ], [ %1724, %1697 ]
  %1779 = and i32 %1689, 12
  %1780 = icmp eq i32 %1779, 12
  br i1 %1780, label %1863, label %1781

; <label>:1781                                    ; preds = %1770
  %1782 = and i32 %1689, 2097184
  %1783 = icmp eq i32 %1782, 2097184
  %1784 = select i1 %1783, float %1278, float 0.000000e+00
  %1785 = and i32 %1689, 4194336
  %1786 = icmp eq i32 %1785, 4194336
  %1787 = select i1 %1786, float %1278, float 0.000000e+00
  %1788 = and i32 %1689, 8388640
  %1789 = icmp eq i32 %1788, 8388640
  %1790 = select i1 %1789, float %1278, float 0.000000e+00
  %1791 = and i32 %1689, 4096
  %1792 = icmp ne i32 %1791, 0
  %1793 = select i1 %1792, float %1278, float 0.000000e+00
  %1794 = icmp eq i32 %1779, 0
  br i1 %1794, label %1795, label %1811

; <label>:1795                                    ; preds = %1781
  %1796 = fsub fast float %1579, %1082
  %1797 = fsub fast float %1580, %1083
  %1798 = fmul fast float %1784, %1796
  %1799 = fmul fast float %1784, %1797
  %1800 = fadd fast float %1798, %1082
  %1801 = fadd fast float %1799, %1083
  %1802 = fsub fast float %1581, %1093
  %1803 = fmul fast float %1787, %1802
  %1804 = fadd fast float %1803, %1093
  %1805 = fsub fast float %1578, %1092
  %1806 = fmul fast float %1790, %1805
  %1807 = fadd fast float %1806, %1092
  %1808 = fsub fast float %1659, %1094
  %1809 = fmul fast float %1793, %1808
  %1810 = fadd fast float %1809, %1094
  br label %1863

; <label>:1811                                    ; preds = %1781
  %1812 = icmp eq i32 %1779, 4
  br i1 %1812, label %1813, label %1847

; <label>:1813                                    ; preds = %1811
  %1814 = fmul fast float %1784, %1579
  %1815 = fmul fast float %1784, %1580
  %1816 = fadd fast float %1814, %1082
  %1817 = fadd fast float %1815, %1083
  %1818 = call float @dx.op.binary.f32(i32 36, float %1093, float %1581)  ; FMin(a,b)
  %1819 = fsub fast float %1818, %1093
  %1820 = fmul fast float %1819, %1787
  %1821 = fadd fast float %1820, %1093
  %1822 = fadd fast float %1578, %1092
  %1823 = fmul fast float %1822, 0x3FF337FAE0000000
  %1824 = fmul fast float %1092, %1092
  %1825 = fmul fast float %1578, %1578
  %1826 = fadd fast float %1825, %1824
  %1827 = fmul fast float %1826, 0x3FE5152B00000000
  %1828 = fmul fast float %1092, 0xBFCC1F85E0000000
  %1829 = fmul fast float %1828, %1578
  %1830 = fadd fast float %1829, 0xBFE1363700000000
  %1831 = fadd fast float %1830, %1823
  %1832 = fsub fast float %1831, %1827
  %1833 = fmul fast float %1822, 0x3FBA6F0D00000000
  %1834 = fmul fast float %1826, 0x3FD0432880000000
  %1835 = fmul fast float %1092, 0xBFEF110800000000
  %1836 = fmul fast float %1835, %1578
  %1837 = fadd fast float %1836, 1.000000e+00
  %1838 = fsub fast float %1837, %1833
  %1839 = fadd fast float %1838, %1834
  %1840 = fdiv fast float %1832, %1839
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1842 = fsub fast float %1841, %1092
  %1843 = fmul fast float %1842, %1790
  %1844 = fadd fast float %1843, %1092
  %1845 = fmul fast float %1793, %1659
  %1846 = fadd fast float %1845, %1094
  br label %1863

; <label>:1847                                    ; preds = %1811
  %1848 = icmp eq i32 %1779, 8
  br i1 %1848, label %1849, label %1863

; <label>:1849                                    ; preds = %1847
  %1850 = fmul fast float %1784, %1579
  %1851 = fmul fast float %1784, %1580
  %1852 = fadd fast float %1850, %1082
  %1853 = fadd fast float %1851, %1083
  %1854 = call float @dx.op.binary.f32(i32 36, float %1093, float %1581)  ; FMin(a,b)
  %1855 = fsub fast float %1854, %1093
  %1856 = fmul fast float %1855, %1787
  %1857 = fadd fast float %1856, %1093
  %1858 = fsub fast float %1578, %1092
  %1859 = fmul fast float %1790, %1858
  %1860 = fadd fast float %1859, %1092
  %1861 = fmul fast float %1793, %1659
  %1862 = fadd fast float %1861, %1094
  br label %1863

; <label>:1863                                    ; preds = %1849, %1847, %1813, %1795, %1770, %1277, %1096, %1081
  %1864 = phi float [ %1082, %1770 ], [ %1082, %1277 ], [ %1082, %1081 ], [ %1852, %1849 ], [ %1082, %1847 ], [ %1816, %1813 ], [ %1800, %1795 ], [ %1082, %1096 ]
  %1865 = phi float [ %1083, %1770 ], [ %1083, %1277 ], [ %1083, %1081 ], [ %1853, %1849 ], [ %1083, %1847 ], [ %1817, %1813 ], [ %1801, %1795 ], [ %1083, %1096 ]
  %1866 = phi float [ %1771, %1770 ], [ %1084, %1277 ], [ %1084, %1081 ], [ %1771, %1849 ], [ %1771, %1847 ], [ %1771, %1813 ], [ %1771, %1795 ], [ %1084, %1096 ]
  %1867 = phi float [ %1772, %1770 ], [ %1085, %1277 ], [ %1085, %1081 ], [ %1772, %1849 ], [ %1772, %1847 ], [ %1772, %1813 ], [ %1772, %1795 ], [ %1085, %1096 ]
  %1868 = phi float [ %1773, %1770 ], [ %1086, %1277 ], [ %1086, %1081 ], [ %1773, %1849 ], [ %1773, %1847 ], [ %1773, %1813 ], [ %1773, %1795 ], [ %1086, %1096 ]
  %1869 = phi float [ %1774, %1770 ], [ %1087, %1277 ], [ %1087, %1081 ], [ %1774, %1849 ], [ %1774, %1847 ], [ %1774, %1813 ], [ %1774, %1795 ], [ %1087, %1096 ]
  %1870 = phi float [ %1775, %1770 ], [ %1088, %1277 ], [ %1088, %1081 ], [ %1775, %1849 ], [ %1775, %1847 ], [ %1775, %1813 ], [ %1775, %1795 ], [ %1088, %1096 ]
  %1871 = phi float [ %1776, %1770 ], [ %1089, %1277 ], [ %1089, %1081 ], [ %1776, %1849 ], [ %1776, %1847 ], [ %1776, %1813 ], [ %1776, %1795 ], [ %1089, %1096 ]
  %1872 = phi float [ %1777, %1770 ], [ %1090, %1277 ], [ %1090, %1081 ], [ %1777, %1849 ], [ %1777, %1847 ], [ %1777, %1813 ], [ %1777, %1795 ], [ %1090, %1096 ]
  %1873 = phi float [ %1092, %1770 ], [ %1092, %1277 ], [ %1092, %1081 ], [ %1860, %1849 ], [ %1092, %1847 ], [ %1844, %1813 ], [ %1807, %1795 ], [ %1092, %1096 ]
  %1874 = phi float [ %1093, %1770 ], [ %1093, %1277 ], [ %1093, %1081 ], [ %1857, %1849 ], [ %1093, %1847 ], [ %1821, %1813 ], [ %1804, %1795 ], [ %1093, %1096 ]
  %1875 = phi float [ %1094, %1770 ], [ %1094, %1277 ], [ %1094, %1081 ], [ %1862, %1849 ], [ %1094, %1847 ], [ %1846, %1813 ], [ %1810, %1795 ], [ %1094, %1096 ]
  %1876 = phi float [ %1778, %1770 ], [ %1095, %1277 ], [ %1095, %1081 ], [ %1778, %1849 ], [ %1778, %1847 ], [ %1778, %1813 ], [ %1778, %1795 ], [ %1095, %1096 ]
  br i1 %451, label %2644, label %1877

; <label>:1877                                    ; preds = %1863
  %1878 = icmp ult i32 %507, 3
  %1879 = add i32 %55, 56
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = add i32 %55, 60
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = or i32 %1884, %1881
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %2644, label %1887

; <label>:1887                                    ; preds = %1877
  %1888 = and i32 %1881, 262144
  %1889 = icmp ne i32 %1888, 0
  %1890 = select i1 %1889, float %61, float 1.000000e+00
  %1891 = select i1 %1889, float %62, float 0.000000e+00
  %1892 = select i1 %1889, float %63, float 0.000000e+00
  %1893 = select i1 %1889, float %64, float 1.000000e+00
  %1894 = select i1 %1889, float %65, float %88
  %1895 = select i1 %1889, float %66, float %89
  %1896 = add i32 %55, 316
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = lshr i32 %1898, 16
  %1900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1899)  ; LegacyF16ToF32(value)
  %1901 = fmul fast float %1900, 0x3F50624DE0000000
  %1902 = add i32 %55, 120
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = lshr i32 %1904, 16
  %1906 = and i32 %1905, 255
  %1907 = lshr i32 %1904, 24
  %1908 = add i32 %55, 324
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 65535
  %1912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1911)  ; LegacyF16ToF32(value)
  %1913 = lshr i32 %1910, 16
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = add i32 %55, 64
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = lshr i32 %1917, 22
  %1919 = shl nuw nsw i32 %1918, 5
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = shl i32 %1917, 4
  %1922 = and i32 %1921, 32752
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = lshr i32 %1917, 7
  %1925 = and i32 %1924, 32752
  %1926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1925)  ; LegacyF16ToF32(value)
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  %1929 = fmul fast float %1928, 1.000000e+03
  %1930 = fmul fast float %401, %1929
  %1931 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1932 = fadd fast float %1931, %391
  %1933 = fmul fast float %402, %1929
  %1934 = call float @dx.op.unary.f32(i32 22, float %1933)  ; Frc(value)
  %1935 = fadd fast float %1934, %393
  %1936 = fmul fast float %1901, %1929
  %1937 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1938 = fmul fast float %1937, 0x401921FB60000000
  %1939 = fadd fast float %1938, %1920
  %1940 = call float @dx.op.unary.f32(i32 13, float %1939)  ; Sin(value)
  %1941 = call float @dx.op.unary.f32(i32 12, float %1939)  ; Cos(value)
  %1942 = fsub fast float -0.000000e+00, %1940
  %1943 = fadd fast float %1894, -5.000000e-01
  %1944 = fadd fast float %1895, -5.000000e-01
  %1945 = fmul fast float %1912, %1943
  %1946 = fmul fast float %1914, %1944
  %1947 = fadd fast float %1945, 5.000000e-01
  %1948 = fadd fast float %1946, 5.000000e-01
  %1949 = fmul fast float %1923, %1947
  %1950 = fmul fast float %1926, %1948
  %1951 = fmul fast float %1941, %1949
  %1952 = call float @dx.op.tertiary.f32(i32 46, float %1942, float %1950, float %1951)  ; FMad(a,b,c)
  %1953 = fmul fast float %1940, %1949
  %1954 = call float @dx.op.tertiary.f32(i32 46, float %1941, float %1950, float %1953)  ; FMad(a,b,c)
  %1955 = fadd fast float %1932, %1952
  %1956 = fadd fast float %1935, %1954
  %1957 = icmp ugt i32 %1906, 1
  %1958 = icmp ugt i32 %1904, 33554431
  %1959 = or i1 %1958, %1957
  br i1 %1959, label %1960, label %1985

; <label>:1960                                    ; preds = %1887
  %1961 = add i32 %55, 260
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = lshr i32 %1963, 16
  %1965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1964)  ; LegacyF16ToF32(value)
  %1966 = fmul fast float %1928, %1965
  %1967 = call float @dx.op.unary.f32(i32 22, float %1966)  ; Frc(value)
  %1968 = mul nuw nsw i32 %1906, %1907
  %1969 = uitofp i32 %1968 to float
  %1970 = fmul fast float %1967, %1969
  %1971 = call float @dx.op.unary.f32(i32 27, float %1970)  ; Round_ni(value)
  %1972 = fptoui float %1971 to i32
  %1973 = urem i32 %1972, %1906
  %1974 = udiv i32 %1972, %1907
  %1975 = call float @dx.op.unary.f32(i32 22, float %1955)  ; Frc(value)
  %1976 = call float @dx.op.unary.f32(i32 22, float %1956)  ; Frc(value)
  %1977 = uitofp i32 %1973 to float
  %1978 = uitofp i32 %1974 to float
  %1979 = fadd fast float %1975, %1977
  %1980 = fadd fast float %1976, %1978
  %1981 = uitofp i32 %1906 to float
  %1982 = uitofp i32 %1907 to float
  %1983 = fdiv fast float %1979, %1981
  %1984 = fdiv fast float %1980, %1982
  br label %1985

; <label>:1985                                    ; preds = %1960, %1887
  %1986 = phi float [ %1983, %1960 ], [ %1955, %1887 ]
  %1987 = phi float [ %1984, %1960 ], [ %1956, %1887 ]
  %1988 = and i32 %1881, 256
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2036, label %1990

; <label>:1990                                    ; preds = %1985
  %1991 = add i32 %55, 448
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = add i32 %1993, 0
  %1995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1995, %dx.types.Handle %103, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = add i32 %55, 132
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = shl i32 %2000, 4
  %2002 = and i32 %2001, 32752
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = lshr i32 %2000, 7
  %2005 = and i32 %2004, 32752
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = fsub fast float 1.000000e+00, %503
  %2008 = call float @dx.op.binary.f32(i32 35, float %2007, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2009 = bitcast float %503 to i32
  %2010 = sitofp i32 %2009 to float
  %2011 = fadd fast float %2010, 0xC1CFBF8940000000
  %2012 = fmul fast float %2006, %2011
  %2013 = fadd fast float %2012, 0x41CFBF8940000000
  %2014 = fptosi float %2013 to i32
  %2015 = bitcast i32 %2014 to float
  %2016 = bitcast float %2008 to i32
  %2017 = sitofp i32 %2016 to float
  %2018 = fadd fast float %2017, 0xC1CFBF8940000000
  %2019 = fmul fast float %2018, %2006
  %2020 = fadd fast float %2019, 0x41CFBF8940000000
  %2021 = fptosi float %2020 to i32
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2015, %2003
  %2024 = fmul fast float %2022, %2003
  %2025 = fsub fast float %2008, %2023
  %2026 = fadd fast float %2024, %2008
  %2027 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2028 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2029 = fsub fast float %1997, %2027
  %2030 = fsub fast float %2028, %2027
  %2031 = bitcast float %2030 to i32
  %2032 = sub nsw i32 2129859010, %2031
  %2033 = bitcast i32 %2032 to float
  %2034 = fmul fast float %2033, %2029
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  br label %2036

; <label>:2036                                    ; preds = %1990, %1985
  %2037 = phi float [ %2035, %1990 ], [ %503, %1985 ]
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 128
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2058, label %2042

; <label>:2042                                    ; preds = %2036
  %2043 = add i32 %55, 432
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2047, %dx.types.Handle %103, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 524288
  %2053 = icmp ne i32 %2052, 0
  %2054 = fcmp fast ogt float %2049, 0x3FE0101020000000
  %2055 = select i1 %2054, float 1.000000e+00, float 0.000000e+00
  %2056 = select i1 %2053, float %2055, float %2049
  %2057 = fmul fast float %2056, %2037
  br label %2058

; <label>:2058                                    ; preds = %2042, %2036
  %2059 = phi float [ %2057, %2042 ], [ %2037, %2036 ]
  %2060 = fcmp fast ult float %2059, 0x3F70101020000000
  br i1 %2060, label %2644, label %2061

; <label>:2061                                    ; preds = %2058
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 16
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2264, label %2066

; <label>:2066                                    ; preds = %2061
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %55, 384
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = add i32 %2071, 0
  %2073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2073, %dx.types.Handle %102, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = extractvalue %dx.types.ResRet.f32 %2074, 3
  %2079 = and i32 %2068, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = lshr i32 %2068, 8
  %2082 = and i32 %2081, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2078, %2080
  %2085 = fadd fast float %2084, %2083
  %2086 = fmul fast float %2085, 0x3F70101000000000
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 512
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2099, label %2091

; <label>:2091                                    ; preds = %2066
  %2092 = add i32 %55, 468
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = add i32 %2094, 0
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2096, %dx.types.Handle %103, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  br label %2099

; <label>:2099                                    ; preds = %2091, %2066
  %2100 = phi float [ %2098, %2091 ], [ 1.000000e+00, %2066 ]
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = and i32 %2102, 33554432
  %2104 = icmp eq i32 %2103, 0
  br i1 %2104, label %2211, label %2105

; <label>:2105                                    ; preds = %2099
  %2106 = add i32 %55, 256
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = and i32 %2108, 65535
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = lshr i32 %2108, 16
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = add i32 %55, 260
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = and i32 %2115, 65535
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = lshr i32 %2119, 24
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = and i32 %2119, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = lshr i32 %2119, 8
  %2127 = and i32 %2126, 255
  %2128 = uitofp i32 %2127 to float
  %2129 = fmul fast float %2128, 0x3F70101020000000
  %2130 = lshr i32 %2119, 16
  %2131 = and i32 %2130, 255
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2132, 0x3F70101020000000
  %2134 = add i32 %55, 252
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = lshr i32 %2136, 24
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = and i32 %2136, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F70101020000000
  %2143 = lshr i32 %2136, 8
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = fmul fast float %2145, 0x3F70101020000000
  %2147 = lshr i32 %2136, 16
  %2148 = and i32 %2147, 255
  %2149 = uitofp i32 %2148 to float
  %2150 = fmul fast float %2149, 0x3F70101020000000
  %2151 = bitcast float %2075 to i32
  %2152 = ashr i32 %2151, 1
  %2153 = sub nsw i32 1597463174, %2152
  %2154 = bitcast i32 %2153 to float
  %2155 = fmul fast float %2075, 5.000000e-01
  %2156 = fmul fast float %2154, %2154
  %2157 = fmul fast float %2156, %2155
  %2158 = fsub fast float 1.500000e+00, %2157
  %2159 = fmul fast float %2154, %2075
  %2160 = fmul fast float %2159, %2158
  %2161 = bitcast float %2076 to i32
  %2162 = ashr i32 %2161, 1
  %2163 = sub nsw i32 1597463174, %2162
  %2164 = bitcast i32 %2163 to float
  %2165 = fmul fast float %2076, 5.000000e-01
  %2166 = fmul fast float %2164, %2164
  %2167 = fmul fast float %2166, %2165
  %2168 = fsub fast float 1.500000e+00, %2167
  %2169 = fmul fast float %2164, %2076
  %2170 = fmul fast float %2169, %2168
  %2171 = bitcast float %2077 to i32
  %2172 = ashr i32 %2171, 1
  %2173 = sub nsw i32 1597463174, %2172
  %2174 = bitcast i32 %2173 to float
  %2175 = fmul fast float %2077, 5.000000e-01
  %2176 = fmul fast float %2174, %2174
  %2177 = fmul fast float %2176, %2175
  %2178 = fsub fast float 1.500000e+00, %2177
  %2179 = fmul fast float %2174, %2077
  %2180 = fmul fast float %2179, %2178
  %2181 = fsub fast float %2160, %2142
  %2182 = fsub fast float %2170, %2146
  %2183 = fsub fast float %2180, %2150
  %2184 = fmul fast float %2181, %2110
  %2185 = fmul fast float %2182, %2112
  %2186 = fmul fast float %2183, %2117
  %2187 = fadd fast float %2184, %2125
  %2188 = fadd fast float %2185, %2129
  %2189 = fadd fast float %2186, %2133
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = fmul fast float %2190, %2190
  %2194 = fmul fast float %2191, %2191
  %2195 = fmul fast float %2192, %2192
  %2196 = fsub fast float %2193, %2075
  %2197 = fsub fast float %2194, %2076
  %2198 = fsub fast float %2195, %2077
  %2199 = fmul fast float %2196, %2100
  %2200 = fmul fast float %2197, %2100
  %2201 = fmul fast float %2198, %2100
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2200, %2076
  %2204 = fadd fast float %2201, %2077
  %2205 = fadd fast float %2122, %2086
  %2206 = fsub fast float %2205, %2139
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = fsub fast float %2207, %2086
  %2209 = fmul fast float %2208, %2100
  %2210 = fadd fast float %2209, %2086
  br label %2264

; <label>:2211                                    ; preds = %2099
  %2212 = and i32 %2102, 134217728
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2248, label %2214

; <label>:2214                                    ; preds = %2211
  %2215 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2216 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fadd fast float %2216, -5.000000e-01
  %2220 = fadd fast float %2217, -5.000000e-01
  %2221 = fmul fast float %2218, %2100
  %2222 = fmul fast float %2219, %2100
  %2223 = fmul fast float %2220, %2100
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2229 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2230 = fmul fast float %2224, 2.000000e+00
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2231, %2227
  %2233 = fadd fast float %2232, %2230
  %2234 = fmul fast float %2233, %2227
  %2235 = fmul fast float %2225, 2.000000e+00
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2236, %2228
  %2238 = fadd fast float %2237, %2235
  %2239 = fmul fast float %2238, %2228
  %2240 = fmul fast float %2226, 2.000000e+00
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = fmul fast float %2241, %2229
  %2243 = fadd fast float %2242, %2240
  %2244 = fmul fast float %2243, %2229
  %2245 = fmul fast float %2234, %2234
  %2246 = fmul fast float %2239, %2239
  %2247 = fmul fast float %2244, %2244
  br label %2264

; <label>:2248                                    ; preds = %2211
  %2249 = fmul fast float %378, %378
  %2250 = fmul fast float %382, %382
  %2251 = fmul fast float %386, %386
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fadd fast float %2250, -1.000000e+00
  %2254 = fadd fast float %2251, -1.000000e+00
  %2255 = fmul fast float %2100, %2252
  %2256 = fmul fast float %2100, %2253
  %2257 = fmul fast float %2100, %2254
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fmul fast float %2258, %2075
  %2262 = fmul fast float %2259, %2076
  %2263 = fmul fast float %2260, %2077
  br label %2264

; <label>:2264                                    ; preds = %2248, %2214, %2105, %2061
  %2265 = phi float [ %2210, %2105 ], [ %2086, %2214 ], [ %2086, %2248 ], [ 0x3FA23C0BE0000000, %2061 ]
  %2266 = phi float [ %2202, %2105 ], [ %2245, %2214 ], [ %2261, %2248 ], [ 1.000000e+00, %2061 ]
  %2267 = phi float [ %2203, %2105 ], [ %2246, %2214 ], [ %2262, %2248 ], [ 1.000000e+00, %2061 ]
  %2268 = phi float [ %2204, %2105 ], [ %2247, %2214 ], [ %2263, %2248 ], [ 1.000000e+00, %2061 ]
  %2269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.i32 %2269, 1
  %2271 = and i32 %2270, 1
  %2272 = icmp ne i32 %2271, 0
  %2273 = add i32 %55, 356
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 32
  %2277 = icmp ne i32 %2276, 0
  %2278 = and i1 %2272, %2277
  %2279 = select i1 %2278, float 1.000000e+00, float %2266
  %2280 = select i1 %2278, float 0x3FD3333340000000, float %2267
  %2281 = select i1 %2278, float 0x3FD3333340000000, float %2268
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 32
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2358, label %2286

; <label>:2286                                    ; preds = %2264
  %2287 = add i32 %55, 124
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %55, 400
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = add i32 %2292, 0
  %2294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2295 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2294, %dx.types.Handle %102, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.ResRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.ResRet.f32 %2295, 2
  %2299 = extractvalue %dx.types.ResRet.f32 %2295, 3
  %2300 = and i32 %2289, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = lshr i32 %2289, 8
  %2303 = and i32 %2302, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = lshr i32 %2289, 16
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101000000000
  %2309 = fmul fast float %2296, %2301
  %2310 = fadd fast float %2309, %2304
  %2311 = fmul fast float %2310, 0x3F70101000000000
  %2312 = fadd fast float %2297, -5.000000e-01
  %2313 = fadd fast float %2299, -5.000000e-01
  %2314 = fmul fast float %2312, %2308
  %2315 = fmul fast float %2313, %2308
  %2316 = fadd fast float %2314, 5.000000e-01
  %2317 = fadd fast float %2315, 5.000000e-01
  %2318 = fmul fast float %2316, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = fmul fast float %2317, 2.000000e+00
  %2321 = fadd fast float %2320, -1.000000e+00
  %2322 = fadd fast float %2319, %2321
  %2323 = fmul fast float %2322, 5.000000e-01
  %2324 = fsub fast float %2319, %2321
  %2325 = fmul fast float %2324, 5.000000e-01
  %2326 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2327 = fsub fast float 1.000000e+00, %2326
  %2328 = call float @dx.op.unary.f32(i32 6, float %2325)  ; FAbs(value)
  %2329 = fsub fast float %2327, %2328
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2325, float %2329, float %2323, float %2325, float %2329)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = call float @dx.op.unary.f32(i32 25, float %2330)  ; Rsqrt(value)
  %2332 = fmul fast float %2323, %2331
  %2333 = fmul fast float %2325, %2331
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 67108864
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2354, label %2338

; <label>:2338                                    ; preds = %2286
  %2339 = add i32 %55, 312
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2341, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = fsub fast float %2311, %2349
  %2351 = fmul fast float %2350, %2343
  %2352 = fadd fast float %2351, %2347
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  br label %2354

; <label>:2354                                    ; preds = %2338, %2286
  %2355 = phi float [ %2353, %2338 ], [ %2311, %2286 ]
  %2356 = call float @dx.op.dot2.f32(i32 54, float %2332, float %2333, float %1890, float %1891)  ; Dot2(ax,ay,bx,by)
  %2357 = call float @dx.op.dot2.f32(i32 54, float %2332, float %2333, float %1892, float %1893)  ; Dot2(ax,ay,bx,by)
  br label %2358

; <label>:2358                                    ; preds = %2354, %2264
  %2359 = phi float [ %2355, %2354 ], [ 0x3FD6666660000000, %2264 ]
  %2360 = phi float [ %2356, %2354 ], [ 0.000000e+00, %2264 ]
  %2361 = phi float [ %2357, %2354 ], [ 0.000000e+00, %2264 ]
  %2362 = phi float [ %2298, %2354 ], [ 1.000000e+00, %2264 ]
  %2363 = add i32 %55, 192
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 22
  %2367 = shl nuw nsw i32 %2366, 5
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 64
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2406, label %2373

; <label>:2373                                    ; preds = %2358
  %2374 = add i32 %55, 416
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = add i32 %2376, 0
  %2378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 131072
  %2382 = icmp eq i32 %2381, 0
  %2383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2378, %dx.types.Handle %102, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = fmul fast float %2384, %366
  %2388 = fmul fast float %2385, %369
  %2389 = fmul fast float %2386, %372
  br i1 %2382, label %2396, label %2390

; <label>:2390                                    ; preds = %2373
  %2391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2391, 0
  %2393 = fmul fast float %2392, %2387
  %2394 = fmul fast float %2392, %2388
  %2395 = fmul fast float %2392, %2389
  br label %2396

; <label>:2396                                    ; preds = %2390, %2373
  %2397 = phi float [ %2393, %2390 ], [ %2387, %2373 ]
  %2398 = phi float [ %2394, %2390 ], [ %2388, %2373 ]
  %2399 = phi float [ %2395, %2390 ], [ %2389, %2373 ]
  %2400 = fmul fast float %2397, %2368
  %2401 = select i1 %265, float %2400, float %2397
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2398, float %2399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = select i1 %265, float 0.000000e+00, float %2397
  %2404 = select i1 %265, float %2402, float %2398
  %2405 = select i1 %265, float 0.000000e+00, float %2399
  br label %2406

; <label>:2406                                    ; preds = %2396, %2358
  %2407 = phi float [ %2403, %2396 ], [ 0.000000e+00, %2358 ]
  %2408 = phi float [ %2404, %2396 ], [ 0.000000e+00, %2358 ]
  %2409 = phi float [ %2405, %2396 ], [ 0.000000e+00, %2358 ]
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 14336
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2439, label %2414

; <label>:2414                                    ; preds = %2406
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 4096
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2439, label %2419

; <label>:2419                                    ; preds = %2414
  %2420 = and i32 %2416, 1048576
  %2421 = icmp ne i32 %2420, 0
  %2422 = add i32 %55, 484
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = add i32 %2424, 0
  %2426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2426, %dx.types.Handle %103, float %1986, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2429 = select i1 %2421, float 1.000000e+00, float %2428
  %2430 = add i32 %55, 196
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 65535
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = lshr i32 %2432, 16
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = fmul fast float %2434, %2429
  %2438 = fadd fast float %2437, %2436
  br label %2439

; <label>:2439                                    ; preds = %2419, %2414, %2406
  %2440 = phi float [ %2438, %2419 ], [ 0.000000e+00, %2414 ], [ 0.000000e+00, %2406 ]
  %2441 = add i32 %55, 128
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = lshr i32 %2443, 8
  %2447 = and i32 %2446, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2280, float %2281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = fmul fast float %2448, %2449
  %2451 = fadd fast float %2450, %2445
  %2452 = fmul fast float %2451, 0x3F70101020000000
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  br i1 %1878, label %2454, label %2462

; <label>:2454                                    ; preds = %2439
  %2455 = fsub fast float 1.000000e+00, %2059
  %2456 = fmul fast float %2455, %1866
  %2457 = fmul fast float %2455, %1867
  %2458 = fmul fast float %2455, %1868
  %2459 = fmul fast float %2455, %1869
  %2460 = fmul fast float %2455, %1870
  %2461 = fmul fast float %2455, %1871
  br label %2462

; <label>:2462                                    ; preds = %2454, %2439
  %2463 = phi float [ %2456, %2454 ], [ %1866, %2439 ]
  %2464 = phi float [ %2457, %2454 ], [ %1867, %2439 ]
  %2465 = phi float [ %2458, %2454 ], [ %1868, %2439 ]
  %2466 = phi float [ %2459, %2454 ], [ %1869, %2439 ]
  %2467 = phi float [ %2460, %2454 ], [ %1870, %2439 ]
  %2468 = phi float [ %2461, %2454 ], [ %1871, %2439 ]
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = and i32 %2470, 3
  %2472 = icmp eq i32 %2471, 3
  br i1 %2472, label %2551, label %2473

; <label>:2473                                    ; preds = %2462
  %2474 = and i32 %2470, 16
  %2475 = icmp ne i32 %2474, 0
  %2476 = select i1 %2475, float %2059, float 0.000000e+00
  %2477 = icmp eq i32 %2471, 0
  br i1 %2477, label %2478, label %2506

; <label>:2478                                    ; preds = %2473
  %2479 = and i32 %2470, 64
  %2480 = icmp ne i32 %2479, 0
  %2481 = select i1 %2480, float %2059, float 0.000000e+00
  %2482 = fsub fast float %2279, %2463
  %2483 = fsub fast float %2280, %2464
  %2484 = fsub fast float %2281, %2465
  %2485 = fmul fast float %2476, %2482
  %2486 = fmul fast float %2476, %2483
  %2487 = fmul fast float %2476, %2484
  %2488 = fadd fast float %2485, %2463
  %2489 = fadd fast float %2486, %2464
  %2490 = fadd fast float %2487, %2465
  %2491 = fsub fast float %2265, %1872
  %2492 = fmul fast float %2476, %2491
  %2493 = fadd fast float %2492, %1872
  %2494 = fsub fast float %2407, %2466
  %2495 = fsub fast float %2408, %2467
  %2496 = fsub fast float %2409, %2468
  %2497 = fmul fast float %2481, %2494
  %2498 = fmul fast float %2481, %2495
  %2499 = fmul fast float %2481, %2496
  %2500 = fadd fast float %2497, %2466
  %2501 = fadd fast float %2498, %2467
  %2502 = fadd fast float %2499, %2468
  %2503 = fsub fast float %2453, %1876
  %2504 = fmul fast float %2476, %2503
  %2505 = fadd fast float %2504, %1876
  br label %2551

; <label>:2506                                    ; preds = %2473
  %2507 = icmp eq i32 %2471, 1
  br i1 %2507, label %2508, label %2521

; <label>:2508                                    ; preds = %2506
  %2509 = fadd fast float %2279, -1.000000e+00
  %2510 = fadd fast float %2280, -1.000000e+00
  %2511 = fadd fast float %2281, -1.000000e+00
  %2512 = fmul fast float %2476, %2509
  %2513 = fmul fast float %2476, %2510
  %2514 = fmul fast float %2476, %2511
  %2515 = fadd fast float %2512, 1.000000e+00
  %2516 = fadd fast float %2513, 1.000000e+00
  %2517 = fadd fast float %2514, 1.000000e+00
  %2518 = fmul fast float %2515, %2463
  %2519 = fmul fast float %2516, %2464
  %2520 = fmul fast float %2517, %2465
  br label %2551

; <label>:2521                                    ; preds = %2506
  %2522 = icmp eq i32 %2471, 2
  br i1 %2522, label %2523, label %2551

; <label>:2523                                    ; preds = %2521
  %2524 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2525 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2526 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2527 = fadd fast float %2524, -5.000000e-01
  %2528 = fadd fast float %2525, -5.000000e-01
  %2529 = fadd fast float %2526, -5.000000e-01
  %2530 = fmul fast float %2527, %2476
  %2531 = fmul fast float %2528, %2476
  %2532 = fmul fast float %2529, %2476
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fadd fast float %2531, 5.000000e-01
  %2535 = fadd fast float %2532, 5.000000e-01
  %2536 = fmul fast float %2533, 2.000000e+00
  %2537 = fsub fast float 1.000000e+00, %2536
  %2538 = fmul fast float %2537, %2463
  %2539 = fadd fast float %2538, %2536
  %2540 = fmul fast float %2539, %2463
  %2541 = fmul fast float %2534, 2.000000e+00
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = fmul fast float %2542, %2464
  %2544 = fadd fast float %2543, %2541
  %2545 = fmul fast float %2544, %2464
  %2546 = fmul fast float %2535, 2.000000e+00
  %2547 = fsub fast float 1.000000e+00, %2546
  %2548 = fmul fast float %2547, %2465
  %2549 = fadd fast float %2548, %2546
  %2550 = fmul fast float %2549, %2465
  br label %2551

; <label>:2551                                    ; preds = %2523, %2521, %2508, %2478, %2462
  %2552 = phi float [ %2463, %2462 ], [ %2540, %2523 ], [ %2463, %2521 ], [ %2518, %2508 ], [ %2488, %2478 ]
  %2553 = phi float [ %2464, %2462 ], [ %2545, %2523 ], [ %2464, %2521 ], [ %2519, %2508 ], [ %2489, %2478 ]
  %2554 = phi float [ %2465, %2462 ], [ %2550, %2523 ], [ %2465, %2521 ], [ %2520, %2508 ], [ %2490, %2478 ]
  %2555 = phi float [ %2466, %2462 ], [ %2466, %2523 ], [ %2466, %2521 ], [ %2466, %2508 ], [ %2500, %2478 ]
  %2556 = phi float [ %2467, %2462 ], [ %2467, %2523 ], [ %2467, %2521 ], [ %2467, %2508 ], [ %2501, %2478 ]
  %2557 = phi float [ %2468, %2462 ], [ %2468, %2523 ], [ %2468, %2521 ], [ %2468, %2508 ], [ %2502, %2478 ]
  %2558 = phi float [ %1872, %2462 ], [ %1872, %2523 ], [ %1872, %2521 ], [ %1872, %2508 ], [ %2493, %2478 ]
  %2559 = phi float [ %1876, %2462 ], [ %1876, %2523 ], [ %1876, %2521 ], [ %1876, %2508 ], [ %2505, %2478 ]
  %2560 = and i32 %2470, 12
  %2561 = icmp eq i32 %2560, 12
  br i1 %2561, label %2644, label %2562

; <label>:2562                                    ; preds = %2551
  %2563 = and i32 %2470, 2097184
  %2564 = icmp eq i32 %2563, 2097184
  %2565 = select i1 %2564, float %2059, float 0.000000e+00
  %2566 = and i32 %2470, 4194336
  %2567 = icmp eq i32 %2566, 4194336
  %2568 = select i1 %2567, float %2059, float 0.000000e+00
  %2569 = and i32 %2470, 8388640
  %2570 = icmp eq i32 %2569, 8388640
  %2571 = select i1 %2570, float %2059, float 0.000000e+00
  %2572 = and i32 %2470, 4096
  %2573 = icmp ne i32 %2572, 0
  %2574 = select i1 %2573, float %2059, float 0.000000e+00
  %2575 = icmp eq i32 %2560, 0
  br i1 %2575, label %2576, label %2592

; <label>:2576                                    ; preds = %2562
  %2577 = fsub fast float %2360, %1864
  %2578 = fsub fast float %2361, %1865
  %2579 = fmul fast float %2565, %2577
  %2580 = fmul fast float %2565, %2578
  %2581 = fadd fast float %2579, %1864
  %2582 = fadd fast float %2580, %1865
  %2583 = fsub fast float %2362, %1874
  %2584 = fmul fast float %2568, %2583
  %2585 = fadd fast float %2584, %1874
  %2586 = fsub fast float %2359, %1873
  %2587 = fmul fast float %2571, %2586
  %2588 = fadd fast float %2587, %1873
  %2589 = fsub fast float %2440, %1875
  %2590 = fmul fast float %2574, %2589
  %2591 = fadd fast float %2590, %1875
  br label %2644

; <label>:2592                                    ; preds = %2562
  %2593 = icmp eq i32 %2560, 4
  br i1 %2593, label %2594, label %2628

; <label>:2594                                    ; preds = %2592
  %2595 = fmul fast float %2565, %2360
  %2596 = fmul fast float %2565, %2361
  %2597 = fadd fast float %2595, %1864
  %2598 = fadd fast float %2596, %1865
  %2599 = call float @dx.op.binary.f32(i32 36, float %1874, float %2362)  ; FMin(a,b)
  %2600 = fsub fast float %2599, %1874
  %2601 = fmul fast float %2600, %2568
  %2602 = fadd fast float %2601, %1874
  %2603 = fadd fast float %2359, %1873
  %2604 = fmul fast float %2603, 0x3FF337FAE0000000
  %2605 = fmul fast float %1873, %1873
  %2606 = fmul fast float %2359, %2359
  %2607 = fadd fast float %2606, %2605
  %2608 = fmul fast float %2607, 0x3FE5152B00000000
  %2609 = fmul fast float %1873, 0xBFCC1F85E0000000
  %2610 = fmul fast float %2609, %2359
  %2611 = fadd fast float %2610, 0xBFE1363700000000
  %2612 = fadd fast float %2611, %2604
  %2613 = fsub fast float %2612, %2608
  %2614 = fmul fast float %2603, 0x3FBA6F0D00000000
  %2615 = fmul fast float %2607, 0x3FD0432880000000
  %2616 = fmul fast float %1873, 0xBFEF110800000000
  %2617 = fmul fast float %2616, %2359
  %2618 = fadd fast float %2617, 1.000000e+00
  %2619 = fsub fast float %2618, %2614
  %2620 = fadd fast float %2619, %2615
  %2621 = fdiv fast float %2613, %2620
  %2622 = call float @dx.op.unary.f32(i32 7, float %2621)  ; Saturate(value)
  %2623 = fsub fast float %2622, %1873
  %2624 = fmul fast float %2623, %2571
  %2625 = fadd fast float %2624, %1873
  %2626 = fmul fast float %2574, %2440
  %2627 = fadd fast float %2626, %1875
  br label %2644

; <label>:2628                                    ; preds = %2592
  %2629 = icmp eq i32 %2560, 8
  br i1 %2629, label %2630, label %2644

; <label>:2630                                    ; preds = %2628
  %2631 = fmul fast float %2565, %2360
  %2632 = fmul fast float %2565, %2361
  %2633 = fadd fast float %2631, %1864
  %2634 = fadd fast float %2632, %1865
  %2635 = call float @dx.op.binary.f32(i32 36, float %1874, float %2362)  ; FMin(a,b)
  %2636 = fsub fast float %2635, %1874
  %2637 = fmul fast float %2636, %2568
  %2638 = fadd fast float %2637, %1874
  %2639 = fsub fast float %2359, %1873
  %2640 = fmul fast float %2571, %2639
  %2641 = fadd fast float %2640, %1873
  %2642 = fmul fast float %2574, %2440
  %2643 = fadd fast float %2642, %1875
  br label %2644

; <label>:2644                                    ; preds = %2630, %2628, %2594, %2576, %2551, %2058, %1877, %1863
  %2645 = phi float [ %1864, %2551 ], [ %1864, %2058 ], [ %1864, %1863 ], [ %2633, %2630 ], [ %1864, %2628 ], [ %2597, %2594 ], [ %2581, %2576 ], [ %1864, %1877 ]
  %2646 = phi float [ %1865, %2551 ], [ %1865, %2058 ], [ %1865, %1863 ], [ %2634, %2630 ], [ %1865, %2628 ], [ %2598, %2594 ], [ %2582, %2576 ], [ %1865, %1877 ]
  %2647 = phi float [ %2552, %2551 ], [ %1866, %2058 ], [ %1866, %1863 ], [ %2552, %2630 ], [ %2552, %2628 ], [ %2552, %2594 ], [ %2552, %2576 ], [ %1866, %1877 ]
  %2648 = phi float [ %2553, %2551 ], [ %1867, %2058 ], [ %1867, %1863 ], [ %2553, %2630 ], [ %2553, %2628 ], [ %2553, %2594 ], [ %2553, %2576 ], [ %1867, %1877 ]
  %2649 = phi float [ %2554, %2551 ], [ %1868, %2058 ], [ %1868, %1863 ], [ %2554, %2630 ], [ %2554, %2628 ], [ %2554, %2594 ], [ %2554, %2576 ], [ %1868, %1877 ]
  %2650 = phi float [ %2555, %2551 ], [ %1869, %2058 ], [ %1869, %1863 ], [ %2555, %2630 ], [ %2555, %2628 ], [ %2555, %2594 ], [ %2555, %2576 ], [ %1869, %1877 ]
  %2651 = phi float [ %2556, %2551 ], [ %1870, %2058 ], [ %1870, %1863 ], [ %2556, %2630 ], [ %2556, %2628 ], [ %2556, %2594 ], [ %2556, %2576 ], [ %1870, %1877 ]
  %2652 = phi float [ %2557, %2551 ], [ %1871, %2058 ], [ %1871, %1863 ], [ %2557, %2630 ], [ %2557, %2628 ], [ %2557, %2594 ], [ %2557, %2576 ], [ %1871, %1877 ]
  %2653 = phi float [ %2558, %2551 ], [ %1872, %2058 ], [ %1872, %1863 ], [ %2558, %2630 ], [ %2558, %2628 ], [ %2558, %2594 ], [ %2558, %2576 ], [ %1872, %1877 ]
  %2654 = phi float [ %1873, %2551 ], [ %1873, %2058 ], [ %1873, %1863 ], [ %2641, %2630 ], [ %1873, %2628 ], [ %2625, %2594 ], [ %2588, %2576 ], [ %1873, %1877 ]
  %2655 = phi float [ %1874, %2551 ], [ %1874, %2058 ], [ %1874, %1863 ], [ %2638, %2630 ], [ %1874, %2628 ], [ %2602, %2594 ], [ %2585, %2576 ], [ %1874, %1877 ]
  %2656 = phi float [ %1875, %2551 ], [ %1875, %2058 ], [ %1875, %1863 ], [ %2643, %2630 ], [ %1875, %2628 ], [ %2627, %2594 ], [ %2591, %2576 ], [ %1875, %1877 ]
  %2657 = phi float [ %2559, %2551 ], [ %1876, %2058 ], [ %1876, %1863 ], [ %2559, %2630 ], [ %2559, %2628 ], [ %2559, %2594 ], [ %2559, %2576 ], [ %1876, %1877 ]
  br i1 %453, label %3425, label %2658

; <label>:2658                                    ; preds = %2644
  %2659 = icmp ult i32 %507, 4
  %2660 = add i32 %55, 72
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %55, 76
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = or i32 %2665, %2662
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %3425, label %2668

; <label>:2668                                    ; preds = %2658
  %2669 = and i32 %2662, 262144
  %2670 = icmp ne i32 %2669, 0
  %2671 = select i1 %2670, float %61, float 1.000000e+00
  %2672 = select i1 %2670, float %62, float 0.000000e+00
  %2673 = select i1 %2670, float %63, float 0.000000e+00
  %2674 = select i1 %2670, float %64, float 1.000000e+00
  %2675 = select i1 %2670, float %65, float %88
  %2676 = select i1 %2670, float %66, float %89
  %2677 = add i32 %55, 332
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 16
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fmul fast float %2681, 0x3F50624DE0000000
  %2683 = add i32 %55, 136
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 16
  %2687 = and i32 %2686, 255
  %2688 = lshr i32 %2685, 24
  %2689 = add i32 %55, 340
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 65535
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = lshr i32 %2691, 16
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = add i32 %55, 80
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = lshr i32 %2698, 22
  %2700 = shl nuw nsw i32 %2699, 5
  %2701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2700)  ; LegacyF16ToF32(value)
  %2702 = shl i32 %2698, 4
  %2703 = and i32 %2702, 32752
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = lshr i32 %2698, 7
  %2706 = and i32 %2705, 32752
  %2707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2706)  ; LegacyF16ToF32(value)
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 3
  %2710 = fmul fast float %2709, 1.000000e+03
  %2711 = fmul fast float %443, %2710
  %2712 = call float @dx.op.unary.f32(i32 22, float %2711)  ; Frc(value)
  %2713 = fadd fast float %2712, %433
  %2714 = fmul fast float %444, %2710
  %2715 = call float @dx.op.unary.f32(i32 22, float %2714)  ; Frc(value)
  %2716 = fadd fast float %2715, %435
  %2717 = fmul fast float %2682, %2710
  %2718 = call float @dx.op.unary.f32(i32 22, float %2717)  ; Frc(value)
  %2719 = fmul fast float %2718, 0x401921FB60000000
  %2720 = fadd fast float %2719, %2701
  %2721 = call float @dx.op.unary.f32(i32 13, float %2720)  ; Sin(value)
  %2722 = call float @dx.op.unary.f32(i32 12, float %2720)  ; Cos(value)
  %2723 = fsub fast float -0.000000e+00, %2721
  %2724 = fadd fast float %2675, -5.000000e-01
  %2725 = fadd fast float %2676, -5.000000e-01
  %2726 = fmul fast float %2693, %2724
  %2727 = fmul fast float %2695, %2725
  %2728 = fadd fast float %2726, 5.000000e-01
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = fmul fast float %2704, %2728
  %2731 = fmul fast float %2707, %2729
  %2732 = fmul fast float %2722, %2730
  %2733 = call float @dx.op.tertiary.f32(i32 46, float %2723, float %2731, float %2732)  ; FMad(a,b,c)
  %2734 = fmul fast float %2721, %2730
  %2735 = call float @dx.op.tertiary.f32(i32 46, float %2722, float %2731, float %2734)  ; FMad(a,b,c)
  %2736 = fadd fast float %2713, %2733
  %2737 = fadd fast float %2716, %2735
  %2738 = icmp ugt i32 %2687, 1
  %2739 = icmp ugt i32 %2685, 33554431
  %2740 = or i1 %2739, %2738
  br i1 %2740, label %2741, label %2766

; <label>:2741                                    ; preds = %2668
  %2742 = add i32 %55, 276
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = lshr i32 %2744, 16
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = fmul fast float %2709, %2746
  %2748 = call float @dx.op.unary.f32(i32 22, float %2747)  ; Frc(value)
  %2749 = mul nuw nsw i32 %2687, %2688
  %2750 = uitofp i32 %2749 to float
  %2751 = fmul fast float %2748, %2750
  %2752 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2753 = fptoui float %2752 to i32
  %2754 = urem i32 %2753, %2687
  %2755 = udiv i32 %2753, %2688
  %2756 = call float @dx.op.unary.f32(i32 22, float %2736)  ; Frc(value)
  %2757 = call float @dx.op.unary.f32(i32 22, float %2737)  ; Frc(value)
  %2758 = uitofp i32 %2754 to float
  %2759 = uitofp i32 %2755 to float
  %2760 = fadd fast float %2756, %2758
  %2761 = fadd fast float %2757, %2759
  %2762 = uitofp i32 %2687 to float
  %2763 = uitofp i32 %2688 to float
  %2764 = fdiv fast float %2760, %2762
  %2765 = fdiv fast float %2761, %2763
  br label %2766

; <label>:2766                                    ; preds = %2741, %2668
  %2767 = phi float [ %2764, %2741 ], [ %2736, %2668 ]
  %2768 = phi float [ %2765, %2741 ], [ %2737, %2668 ]
  %2769 = and i32 %2662, 256
  %2770 = icmp eq i32 %2769, 0
  br i1 %2770, label %2817, label %2771

; <label>:2771                                    ; preds = %2766
  %2772 = add i32 %55, 452
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = add i32 %2774, 0
  %2776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2776, %dx.types.Handle %103, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = add i32 %55, 148
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = shl i32 %2781, 4
  %2783 = and i32 %2782, 32752
  %2784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2783)  ; LegacyF16ToF32(value)
  %2785 = lshr i32 %2781, 7
  %2786 = and i32 %2785, 32752
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = fsub fast float 1.000000e+00, %502
  %2789 = call float @dx.op.binary.f32(i32 35, float %2788, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2790 = bitcast float %502 to i32
  %2791 = sitofp i32 %2790 to float
  %2792 = fadd fast float %2791, 0xC1CFBF8940000000
  %2793 = fmul fast float %2787, %2792
  %2794 = fadd fast float %2793, 0x41CFBF8940000000
  %2795 = fptosi float %2794 to i32
  %2796 = bitcast i32 %2795 to float
  %2797 = bitcast float %2789 to i32
  %2798 = sitofp i32 %2797 to float
  %2799 = fadd fast float %2798, 0xC1CFBF8940000000
  %2800 = fmul fast float %2799, %2787
  %2801 = fadd fast float %2800, 0x41CFBF8940000000
  %2802 = fptosi float %2801 to i32
  %2803 = bitcast i32 %2802 to float
  %2804 = fmul fast float %2796, %2784
  %2805 = fmul fast float %2803, %2784
  %2806 = fsub fast float %2789, %2804
  %2807 = fadd fast float %2805, %2789
  %2808 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2809 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2810 = fsub fast float %2778, %2808
  %2811 = fsub fast float %2809, %2808
  %2812 = bitcast float %2811 to i32
  %2813 = sub nsw i32 2129859010, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2814, %2810
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  br label %2817

; <label>:2817                                    ; preds = %2771, %2766
  %2818 = phi float [ %2816, %2771 ], [ %502, %2766 ]
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 128
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %2839, label %2823

; <label>:2823                                    ; preds = %2817
  %2824 = add i32 %55, 436
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = add i32 %2826, 0
  %2828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2828, %dx.types.Handle %103, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 524288
  %2834 = icmp ne i32 %2833, 0
  %2835 = fcmp fast ogt float %2830, 0x3FE0101020000000
  %2836 = select i1 %2835, float 1.000000e+00, float 0.000000e+00
  %2837 = select i1 %2834, float %2836, float %2830
  %2838 = fmul fast float %2837, %2818
  br label %2839

; <label>:2839                                    ; preds = %2823, %2817
  %2840 = phi float [ %2838, %2823 ], [ %2818, %2817 ]
  %2841 = fcmp fast ult float %2840, 0x3F70101020000000
  br i1 %2841, label %3425, label %2842

; <label>:2842                                    ; preds = %2839
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = and i32 %2844, 16
  %2846 = icmp eq i32 %2845, 0
  br i1 %2846, label %3045, label %2847

; <label>:2847                                    ; preds = %2842
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = add i32 %55, 388
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = add i32 %2852, 0
  %2854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2853, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2854, %dx.types.Handle %102, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2856 = extractvalue %dx.types.ResRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.ResRet.f32 %2855, 1
  %2858 = extractvalue %dx.types.ResRet.f32 %2855, 2
  %2859 = extractvalue %dx.types.ResRet.f32 %2855, 3
  %2860 = and i32 %2849, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = lshr i32 %2849, 8
  %2863 = and i32 %2862, 255
  %2864 = uitofp i32 %2863 to float
  %2865 = fmul fast float %2859, %2861
  %2866 = fadd fast float %2865, %2864
  %2867 = fmul fast float %2866, 0x3F70101000000000
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 512
  %2871 = icmp eq i32 %2870, 0
  br i1 %2871, label %2880, label %2872

; <label>:2872                                    ; preds = %2847
  %2873 = add i32 %55, 472
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = add i32 %2875, 0
  %2877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2877, %dx.types.Handle %103, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  br label %2880

; <label>:2880                                    ; preds = %2872, %2847
  %2881 = phi float [ %2879, %2872 ], [ 1.000000e+00, %2847 ]
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 33554432
  %2885 = icmp eq i32 %2884, 0
  br i1 %2885, label %2992, label %2886

; <label>:2886                                    ; preds = %2880
  %2887 = add i32 %55, 272
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 65535
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = lshr i32 %2889, 16
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = add i32 %55, 276
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 65535
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = lshr i32 %2900, 24
  %2902 = uitofp i32 %2901 to float
  %2903 = fmul fast float %2902, 0x3F70101020000000
  %2904 = and i32 %2900, 255
  %2905 = uitofp i32 %2904 to float
  %2906 = fmul fast float %2905, 0x3F70101020000000
  %2907 = lshr i32 %2900, 8
  %2908 = and i32 %2907, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2909, 0x3F70101020000000
  %2911 = lshr i32 %2900, 16
  %2912 = and i32 %2911, 255
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2913, 0x3F70101020000000
  %2915 = add i32 %55, 268
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = lshr i32 %2917, 24
  %2919 = uitofp i32 %2918 to float
  %2920 = fmul fast float %2919, 0x3F70101020000000
  %2921 = and i32 %2917, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2922, 0x3F70101020000000
  %2924 = lshr i32 %2917, 8
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2926, 0x3F70101020000000
  %2928 = lshr i32 %2917, 16
  %2929 = and i32 %2928, 255
  %2930 = uitofp i32 %2929 to float
  %2931 = fmul fast float %2930, 0x3F70101020000000
  %2932 = bitcast float %2856 to i32
  %2933 = ashr i32 %2932, 1
  %2934 = sub nsw i32 1597463174, %2933
  %2935 = bitcast i32 %2934 to float
  %2936 = fmul fast float %2856, 5.000000e-01
  %2937 = fmul fast float %2935, %2935
  %2938 = fmul fast float %2937, %2936
  %2939 = fsub fast float 1.500000e+00, %2938
  %2940 = fmul fast float %2935, %2856
  %2941 = fmul fast float %2940, %2939
  %2942 = bitcast float %2857 to i32
  %2943 = ashr i32 %2942, 1
  %2944 = sub nsw i32 1597463174, %2943
  %2945 = bitcast i32 %2944 to float
  %2946 = fmul fast float %2857, 5.000000e-01
  %2947 = fmul fast float %2945, %2945
  %2948 = fmul fast float %2947, %2946
  %2949 = fsub fast float 1.500000e+00, %2948
  %2950 = fmul fast float %2945, %2857
  %2951 = fmul fast float %2950, %2949
  %2952 = bitcast float %2858 to i32
  %2953 = ashr i32 %2952, 1
  %2954 = sub nsw i32 1597463174, %2953
  %2955 = bitcast i32 %2954 to float
  %2956 = fmul fast float %2858, 5.000000e-01
  %2957 = fmul fast float %2955, %2955
  %2958 = fmul fast float %2957, %2956
  %2959 = fsub fast float 1.500000e+00, %2958
  %2960 = fmul fast float %2955, %2858
  %2961 = fmul fast float %2960, %2959
  %2962 = fsub fast float %2941, %2923
  %2963 = fsub fast float %2951, %2927
  %2964 = fsub fast float %2961, %2931
  %2965 = fmul fast float %2962, %2891
  %2966 = fmul fast float %2963, %2893
  %2967 = fmul fast float %2964, %2898
  %2968 = fadd fast float %2965, %2906
  %2969 = fadd fast float %2966, %2910
  %2970 = fadd fast float %2967, %2914
  %2971 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2972 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  %2973 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2974 = fmul fast float %2971, %2971
  %2975 = fmul fast float %2972, %2972
  %2976 = fmul fast float %2973, %2973
  %2977 = fsub fast float %2974, %2856
  %2978 = fsub fast float %2975, %2857
  %2979 = fsub fast float %2976, %2858
  %2980 = fmul fast float %2977, %2881
  %2981 = fmul fast float %2978, %2881
  %2982 = fmul fast float %2979, %2881
  %2983 = fadd fast float %2980, %2856
  %2984 = fadd fast float %2981, %2857
  %2985 = fadd fast float %2982, %2858
  %2986 = fadd fast float %2903, %2867
  %2987 = fsub fast float %2986, %2920
  %2988 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2989 = fsub fast float %2988, %2867
  %2990 = fmul fast float %2989, %2881
  %2991 = fadd fast float %2990, %2867
  br label %3045

; <label>:2992                                    ; preds = %2880
  %2993 = and i32 %2883, 134217728
  %2994 = icmp eq i32 %2993, 0
  br i1 %2994, label %3029, label %2995

; <label>:2995                                    ; preds = %2992
  %2996 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %2997 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %2998 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %2999 = fadd fast float %2996, -5.000000e-01
  %3000 = fadd fast float %2997, -5.000000e-01
  %3001 = fadd fast float %2998, -5.000000e-01
  %3002 = fmul fast float %2999, %2881
  %3003 = fmul fast float %3000, %2881
  %3004 = fmul fast float %3001, %2881
  %3005 = fadd fast float %3002, 5.000000e-01
  %3006 = fadd fast float %3003, 5.000000e-01
  %3007 = fadd fast float %3004, 5.000000e-01
  %3008 = call float @dx.op.unary.f32(i32 24, float %2856)  ; Sqrt(value)
  %3009 = call float @dx.op.unary.f32(i32 24, float %2857)  ; Sqrt(value)
  %3010 = call float @dx.op.unary.f32(i32 24, float %2858)  ; Sqrt(value)
  %3011 = fmul fast float %3005, 2.000000e+00
  %3012 = fsub fast float 1.000000e+00, %3011
  %3013 = fmul fast float %3012, %3008
  %3014 = fadd fast float %3013, %3011
  %3015 = fmul fast float %3014, %3008
  %3016 = fmul fast float %3006, 2.000000e+00
  %3017 = fsub fast float 1.000000e+00, %3016
  %3018 = fmul fast float %3017, %3009
  %3019 = fadd fast float %3018, %3016
  %3020 = fmul fast float %3019, %3009
  %3021 = fmul fast float %3007, 2.000000e+00
  %3022 = fsub fast float 1.000000e+00, %3021
  %3023 = fmul fast float %3022, %3010
  %3024 = fadd fast float %3023, %3021
  %3025 = fmul fast float %3024, %3010
  %3026 = fmul fast float %3015, %3015
  %3027 = fmul fast float %3020, %3020
  %3028 = fmul fast float %3025, %3025
  br label %3045

; <label>:3029                                    ; preds = %2992
  %3030 = fmul fast float %420, %420
  %3031 = fmul fast float %424, %424
  %3032 = fmul fast float %428, %428
  %3033 = fadd fast float %3030, -1.000000e+00
  %3034 = fadd fast float %3031, -1.000000e+00
  %3035 = fadd fast float %3032, -1.000000e+00
  %3036 = fmul fast float %2881, %3033
  %3037 = fmul fast float %2881, %3034
  %3038 = fmul fast float %2881, %3035
  %3039 = fadd fast float %3036, 1.000000e+00
  %3040 = fadd fast float %3037, 1.000000e+00
  %3041 = fadd fast float %3038, 1.000000e+00
  %3042 = fmul fast float %3039, %2856
  %3043 = fmul fast float %3040, %2857
  %3044 = fmul fast float %3041, %2858
  br label %3045

; <label>:3045                                    ; preds = %3029, %2995, %2886, %2842
  %3046 = phi float [ %2991, %2886 ], [ %2867, %2995 ], [ %2867, %3029 ], [ 0x3FA23C0BE0000000, %2842 ]
  %3047 = phi float [ %2983, %2886 ], [ %3026, %2995 ], [ %3042, %3029 ], [ 1.000000e+00, %2842 ]
  %3048 = phi float [ %2984, %2886 ], [ %3027, %2995 ], [ %3043, %3029 ], [ 1.000000e+00, %2842 ]
  %3049 = phi float [ %2985, %2886 ], [ %3028, %2995 ], [ %3044, %3029 ], [ 1.000000e+00, %2842 ]
  %3050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.i32 %3050, 1
  %3052 = and i32 %3051, 1
  %3053 = icmp ne i32 %3052, 0
  %3054 = add i32 %55, 356
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = and i32 %3056, 32
  %3058 = icmp ne i32 %3057, 0
  %3059 = and i1 %3053, %3058
  %3060 = select i1 %3059, float 1.000000e+00, float %3047
  %3061 = select i1 %3059, float 0x3FD3333340000000, float %3048
  %3062 = select i1 %3059, float 0x3FD3333340000000, float %3049
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = and i32 %3064, 32
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3139, label %3067

; <label>:3067                                    ; preds = %3045
  %3068 = add i32 %55, 140
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = add i32 %55, 404
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3075, %dx.types.Handle %102, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = extractvalue %dx.types.ResRet.f32 %3076, 1
  %3079 = extractvalue %dx.types.ResRet.f32 %3076, 2
  %3080 = extractvalue %dx.types.ResRet.f32 %3076, 3
  %3081 = and i32 %3070, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = lshr i32 %3070, 8
  %3084 = and i32 %3083, 255
  %3085 = uitofp i32 %3084 to float
  %3086 = lshr i32 %3070, 16
  %3087 = and i32 %3086, 255
  %3088 = uitofp i32 %3087 to float
  %3089 = fmul fast float %3088, 0x3F70101000000000
  %3090 = fmul fast float %3077, %3082
  %3091 = fadd fast float %3090, %3085
  %3092 = fmul fast float %3091, 0x3F70101000000000
  %3093 = fadd fast float %3078, -5.000000e-01
  %3094 = fadd fast float %3080, -5.000000e-01
  %3095 = fmul fast float %3093, %3089
  %3096 = fmul fast float %3094, %3089
  %3097 = fadd fast float %3095, 5.000000e-01
  %3098 = fadd fast float %3096, 5.000000e-01
  %3099 = fmul fast float %3097, 2.000000e+00
  %3100 = fadd fast float %3099, -1.000000e+00
  %3101 = fmul fast float %3098, 2.000000e+00
  %3102 = fadd fast float %3101, -1.000000e+00
  %3103 = fadd fast float %3100, %3102
  %3104 = fmul fast float %3103, 5.000000e-01
  %3105 = fsub fast float %3100, %3102
  %3106 = fmul fast float %3105, 5.000000e-01
  %3107 = call float @dx.op.unary.f32(i32 6, float %3104)  ; FAbs(value)
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = call float @dx.op.unary.f32(i32 6, float %3106)  ; FAbs(value)
  %3110 = fsub fast float %3108, %3109
  %3111 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3106, float %3110, float %3104, float %3106, float %3110)  ; Dot3(ax,ay,az,bx,by,bz)
  %3112 = call float @dx.op.unary.f32(i32 25, float %3111)  ; Rsqrt(value)
  %3113 = fmul fast float %3104, %3112
  %3114 = fmul fast float %3106, %3112
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 67108864
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3135, label %3119

; <label>:3119                                    ; preds = %3067
  %3120 = add i32 %55, 328
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 65535
  %3124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3123)  ; LegacyF16ToF32(value)
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 65535
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = lshr i32 %3122, 16
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = fsub fast float %3092, %3130
  %3132 = fmul fast float %3131, %3124
  %3133 = fadd fast float %3132, %3128
  %3134 = call float @dx.op.unary.f32(i32 7, float %3133)  ; Saturate(value)
  br label %3135

; <label>:3135                                    ; preds = %3119, %3067
  %3136 = phi float [ %3134, %3119 ], [ %3092, %3067 ]
  %3137 = call float @dx.op.dot2.f32(i32 54, float %3113, float %3114, float %2671, float %2672)  ; Dot2(ax,ay,bx,by)
  %3138 = call float @dx.op.dot2.f32(i32 54, float %3113, float %3114, float %2673, float %2674)  ; Dot2(ax,ay,bx,by)
  br label %3139

; <label>:3139                                    ; preds = %3135, %3045
  %3140 = phi float [ %3136, %3135 ], [ 0x3FD6666660000000, %3045 ]
  %3141 = phi float [ %3137, %3135 ], [ 0.000000e+00, %3045 ]
  %3142 = phi float [ %3138, %3135 ], [ 0.000000e+00, %3045 ]
  %3143 = phi float [ %3079, %3135 ], [ 1.000000e+00, %3045 ]
  %3144 = add i32 %55, 208
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = lshr i32 %3146, 22
  %3148 = shl nuw nsw i32 %3147, 5
  %3149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3148)  ; LegacyF16ToF32(value)
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 64
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3187, label %3154

; <label>:3154                                    ; preds = %3139
  %3155 = add i32 %55, 420
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %3157, 0
  %3159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 131072
  %3163 = icmp eq i32 %3162, 0
  %3164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3159, %dx.types.Handle %102, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.ResRet.f32 %3164, 2
  %3168 = fmul fast float %3165, %408
  %3169 = fmul fast float %3166, %411
  %3170 = fmul fast float %3167, %414
  br i1 %3163, label %3177, label %3171

; <label>:3171                                    ; preds = %3154
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = fmul fast float %3173, %3168
  %3175 = fmul fast float %3173, %3169
  %3176 = fmul fast float %3173, %3170
  br label %3177

; <label>:3177                                    ; preds = %3171, %3154
  %3178 = phi float [ %3174, %3171 ], [ %3168, %3154 ]
  %3179 = phi float [ %3175, %3171 ], [ %3169, %3154 ]
  %3180 = phi float [ %3176, %3171 ], [ %3170, %3154 ]
  %3181 = fmul fast float %3178, %3149
  %3182 = select i1 %265, float %3181, float %3178
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3182, float %3179, float %3180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = select i1 %265, float 0.000000e+00, float %3178
  %3185 = select i1 %265, float %3183, float %3179
  %3186 = select i1 %265, float 0.000000e+00, float %3180
  br label %3187

; <label>:3187                                    ; preds = %3177, %3139
  %3188 = phi float [ %3184, %3177 ], [ 0.000000e+00, %3139 ]
  %3189 = phi float [ %3185, %3177 ], [ 0.000000e+00, %3139 ]
  %3190 = phi float [ %3186, %3177 ], [ 0.000000e+00, %3139 ]
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 14336
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3220, label %3195

; <label>:3195                                    ; preds = %3187
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 4096
  %3199 = icmp eq i32 %3198, 0
  br i1 %3199, label %3220, label %3200

; <label>:3200                                    ; preds = %3195
  %3201 = and i32 %3197, 1048576
  %3202 = icmp ne i32 %3201, 0
  %3203 = add i32 %55, 488
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = add i32 %3205, 0
  %3207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3207, %dx.types.Handle %103, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 2
  %3210 = select i1 %3202, float 1.000000e+00, float %3209
  %3211 = add i32 %55, 212
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 65535
  %3215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3214)  ; LegacyF16ToF32(value)
  %3216 = lshr i32 %3213, 16
  %3217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3216)  ; LegacyF16ToF32(value)
  %3218 = fmul fast float %3215, %3210
  %3219 = fadd fast float %3218, %3217
  br label %3220

; <label>:3220                                    ; preds = %3200, %3195, %3187
  %3221 = phi float [ %3219, %3200 ], [ 0.000000e+00, %3195 ], [ 0.000000e+00, %3187 ]
  %3222 = add i32 %55, 144
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 255
  %3226 = uitofp i32 %3225 to float
  %3227 = lshr i32 %3224, 8
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3060, float %3061, float %3062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = fmul fast float %3229, %3230
  %3232 = fadd fast float %3231, %3226
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  br i1 %2659, label %3235, label %3243

; <label>:3235                                    ; preds = %3220
  %3236 = fsub fast float 1.000000e+00, %2840
  %3237 = fmul fast float %3236, %2647
  %3238 = fmul fast float %3236, %2648
  %3239 = fmul fast float %3236, %2649
  %3240 = fmul fast float %3236, %2650
  %3241 = fmul fast float %3236, %2651
  %3242 = fmul fast float %3236, %2652
  br label %3243

; <label>:3243                                    ; preds = %3235, %3220
  %3244 = phi float [ %3237, %3235 ], [ %2647, %3220 ]
  %3245 = phi float [ %3238, %3235 ], [ %2648, %3220 ]
  %3246 = phi float [ %3239, %3235 ], [ %2649, %3220 ]
  %3247 = phi float [ %3240, %3235 ], [ %2650, %3220 ]
  %3248 = phi float [ %3241, %3235 ], [ %2651, %3220 ]
  %3249 = phi float [ %3242, %3235 ], [ %2652, %3220 ]
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 3
  %3253 = icmp eq i32 %3252, 3
  br i1 %3253, label %3332, label %3254

; <label>:3254                                    ; preds = %3243
  %3255 = and i32 %3251, 16
  %3256 = icmp ne i32 %3255, 0
  %3257 = select i1 %3256, float %2840, float 0.000000e+00
  %3258 = icmp eq i32 %3252, 0
  br i1 %3258, label %3259, label %3287

; <label>:3259                                    ; preds = %3254
  %3260 = and i32 %3251, 64
  %3261 = icmp ne i32 %3260, 0
  %3262 = select i1 %3261, float %2840, float 0.000000e+00
  %3263 = fsub fast float %3060, %3244
  %3264 = fsub fast float %3061, %3245
  %3265 = fsub fast float %3062, %3246
  %3266 = fmul fast float %3257, %3263
  %3267 = fmul fast float %3257, %3264
  %3268 = fmul fast float %3257, %3265
  %3269 = fadd fast float %3266, %3244
  %3270 = fadd fast float %3267, %3245
  %3271 = fadd fast float %3268, %3246
  %3272 = fsub fast float %3046, %2653
  %3273 = fmul fast float %3257, %3272
  %3274 = fadd fast float %3273, %2653
  %3275 = fsub fast float %3188, %3247
  %3276 = fsub fast float %3189, %3248
  %3277 = fsub fast float %3190, %3249
  %3278 = fmul fast float %3262, %3275
  %3279 = fmul fast float %3262, %3276
  %3280 = fmul fast float %3262, %3277
  %3281 = fadd fast float %3278, %3247
  %3282 = fadd fast float %3279, %3248
  %3283 = fadd fast float %3280, %3249
  %3284 = fsub fast float %3234, %2657
  %3285 = fmul fast float %3257, %3284
  %3286 = fadd fast float %3285, %2657
  br label %3332

; <label>:3287                                    ; preds = %3254
  %3288 = icmp eq i32 %3252, 1
  br i1 %3288, label %3289, label %3302

; <label>:3289                                    ; preds = %3287
  %3290 = fadd fast float %3060, -1.000000e+00
  %3291 = fadd fast float %3061, -1.000000e+00
  %3292 = fadd fast float %3062, -1.000000e+00
  %3293 = fmul fast float %3257, %3290
  %3294 = fmul fast float %3257, %3291
  %3295 = fmul fast float %3257, %3292
  %3296 = fadd fast float %3293, 1.000000e+00
  %3297 = fadd fast float %3294, 1.000000e+00
  %3298 = fadd fast float %3295, 1.000000e+00
  %3299 = fmul fast float %3296, %3244
  %3300 = fmul fast float %3297, %3245
  %3301 = fmul fast float %3298, %3246
  br label %3332

; <label>:3302                                    ; preds = %3287
  %3303 = icmp eq i32 %3252, 2
  br i1 %3303, label %3304, label %3332

; <label>:3304                                    ; preds = %3302
  %3305 = call float @dx.op.unary.f32(i32 24, float %3060)  ; Sqrt(value)
  %3306 = call float @dx.op.unary.f32(i32 24, float %3061)  ; Sqrt(value)
  %3307 = call float @dx.op.unary.f32(i32 24, float %3062)  ; Sqrt(value)
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fmul fast float %3308, %3257
  %3312 = fmul fast float %3309, %3257
  %3313 = fmul fast float %3310, %3257
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = fmul fast float %3314, 2.000000e+00
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3318, %3244
  %3320 = fadd fast float %3319, %3317
  %3321 = fmul fast float %3320, %3244
  %3322 = fmul fast float %3315, 2.000000e+00
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3323, %3245
  %3325 = fadd fast float %3324, %3322
  %3326 = fmul fast float %3325, %3245
  %3327 = fmul fast float %3316, 2.000000e+00
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = fmul fast float %3328, %3246
  %3330 = fadd fast float %3329, %3327
  %3331 = fmul fast float %3330, %3246
  br label %3332

; <label>:3332                                    ; preds = %3304, %3302, %3289, %3259, %3243
  %3333 = phi float [ %3244, %3243 ], [ %3321, %3304 ], [ %3244, %3302 ], [ %3299, %3289 ], [ %3269, %3259 ]
  %3334 = phi float [ %3245, %3243 ], [ %3326, %3304 ], [ %3245, %3302 ], [ %3300, %3289 ], [ %3270, %3259 ]
  %3335 = phi float [ %3246, %3243 ], [ %3331, %3304 ], [ %3246, %3302 ], [ %3301, %3289 ], [ %3271, %3259 ]
  %3336 = phi float [ %3247, %3243 ], [ %3247, %3304 ], [ %3247, %3302 ], [ %3247, %3289 ], [ %3281, %3259 ]
  %3337 = phi float [ %3248, %3243 ], [ %3248, %3304 ], [ %3248, %3302 ], [ %3248, %3289 ], [ %3282, %3259 ]
  %3338 = phi float [ %3249, %3243 ], [ %3249, %3304 ], [ %3249, %3302 ], [ %3249, %3289 ], [ %3283, %3259 ]
  %3339 = phi float [ %2653, %3243 ], [ %2653, %3304 ], [ %2653, %3302 ], [ %2653, %3289 ], [ %3274, %3259 ]
  %3340 = phi float [ %2657, %3243 ], [ %2657, %3304 ], [ %2657, %3302 ], [ %2657, %3289 ], [ %3286, %3259 ]
  %3341 = and i32 %3251, 12
  %3342 = icmp eq i32 %3341, 12
  br i1 %3342, label %3425, label %3343

; <label>:3343                                    ; preds = %3332
  %3344 = and i32 %3251, 2097184
  %3345 = icmp eq i32 %3344, 2097184
  %3346 = select i1 %3345, float %2840, float 0.000000e+00
  %3347 = and i32 %3251, 4194336
  %3348 = icmp eq i32 %3347, 4194336
  %3349 = select i1 %3348, float %2840, float 0.000000e+00
  %3350 = and i32 %3251, 8388640
  %3351 = icmp eq i32 %3350, 8388640
  %3352 = select i1 %3351, float %2840, float 0.000000e+00
  %3353 = and i32 %3251, 4096
  %3354 = icmp ne i32 %3353, 0
  %3355 = select i1 %3354, float %2840, float 0.000000e+00
  %3356 = icmp eq i32 %3341, 0
  br i1 %3356, label %3357, label %3373

; <label>:3357                                    ; preds = %3343
  %3358 = fsub fast float %3141, %2645
  %3359 = fsub fast float %3142, %2646
  %3360 = fmul fast float %3346, %3358
  %3361 = fmul fast float %3346, %3359
  %3362 = fadd fast float %3360, %2645
  %3363 = fadd fast float %3361, %2646
  %3364 = fsub fast float %3143, %2655
  %3365 = fmul fast float %3349, %3364
  %3366 = fadd fast float %3365, %2655
  %3367 = fsub fast float %3140, %2654
  %3368 = fmul fast float %3352, %3367
  %3369 = fadd fast float %3368, %2654
  %3370 = fsub fast float %3221, %2656
  %3371 = fmul fast float %3355, %3370
  %3372 = fadd fast float %3371, %2656
  br label %3425

; <label>:3373                                    ; preds = %3343
  %3374 = icmp eq i32 %3341, 4
  br i1 %3374, label %3375, label %3409

; <label>:3375                                    ; preds = %3373
  %3376 = fmul fast float %3346, %3141
  %3377 = fmul fast float %3346, %3142
  %3378 = fadd fast float %3376, %2645
  %3379 = fadd fast float %3377, %2646
  %3380 = call float @dx.op.binary.f32(i32 36, float %2655, float %3143)  ; FMin(a,b)
  %3381 = fsub fast float %3380, %2655
  %3382 = fmul fast float %3381, %3349
  %3383 = fadd fast float %3382, %2655
  %3384 = fadd fast float %3140, %2654
  %3385 = fmul fast float %3384, 0x3FF337FAE0000000
  %3386 = fmul fast float %2654, %2654
  %3387 = fmul fast float %3140, %3140
  %3388 = fadd fast float %3387, %3386
  %3389 = fmul fast float %3388, 0x3FE5152B00000000
  %3390 = fmul fast float %2654, 0xBFCC1F85E0000000
  %3391 = fmul fast float %3390, %3140
  %3392 = fadd fast float %3391, 0xBFE1363700000000
  %3393 = fadd fast float %3392, %3385
  %3394 = fsub fast float %3393, %3389
  %3395 = fmul fast float %3384, 0x3FBA6F0D00000000
  %3396 = fmul fast float %3388, 0x3FD0432880000000
  %3397 = fmul fast float %2654, 0xBFEF110800000000
  %3398 = fmul fast float %3397, %3140
  %3399 = fadd fast float %3398, 1.000000e+00
  %3400 = fsub fast float %3399, %3395
  %3401 = fadd fast float %3400, %3396
  %3402 = fdiv fast float %3394, %3401
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fsub fast float %3403, %2654
  %3405 = fmul fast float %3404, %3352
  %3406 = fadd fast float %3405, %2654
  %3407 = fmul fast float %3355, %3221
  %3408 = fadd fast float %3407, %2656
  br label %3425

; <label>:3409                                    ; preds = %3373
  %3410 = icmp eq i32 %3341, 8
  br i1 %3410, label %3411, label %3425

; <label>:3411                                    ; preds = %3409
  %3412 = fmul fast float %3346, %3141
  %3413 = fmul fast float %3346, %3142
  %3414 = fadd fast float %3412, %2645
  %3415 = fadd fast float %3413, %2646
  %3416 = call float @dx.op.binary.f32(i32 36, float %2655, float %3143)  ; FMin(a,b)
  %3417 = fsub fast float %3416, %2655
  %3418 = fmul fast float %3417, %3349
  %3419 = fadd fast float %3418, %2655
  %3420 = fsub fast float %3140, %2654
  %3421 = fmul fast float %3352, %3420
  %3422 = fadd fast float %3421, %2654
  %3423 = fmul fast float %3355, %3221
  %3424 = fadd fast float %3423, %2656
  br label %3425

; <label>:3425                                    ; preds = %3411, %3409, %3375, %3357, %3332, %2839, %2658, %2644
  %3426 = phi float [ %2645, %3332 ], [ %2645, %2839 ], [ %2645, %2644 ], [ %2645, %2658 ], [ %3362, %3357 ], [ %3378, %3375 ], [ %2645, %3409 ], [ %3414, %3411 ]
  %3427 = phi float [ %2646, %3332 ], [ %2646, %2839 ], [ %2646, %2644 ], [ %2646, %2658 ], [ %3363, %3357 ], [ %3379, %3375 ], [ %2646, %3409 ], [ %3415, %3411 ]
  %3428 = phi float [ %3333, %3332 ], [ %2647, %2839 ], [ %2647, %2644 ], [ %2647, %2658 ], [ %3333, %3357 ], [ %3333, %3375 ], [ %3333, %3409 ], [ %3333, %3411 ]
  %3429 = phi float [ %3334, %3332 ], [ %2648, %2839 ], [ %2648, %2644 ], [ %2648, %2658 ], [ %3334, %3357 ], [ %3334, %3375 ], [ %3334, %3409 ], [ %3334, %3411 ]
  %3430 = phi float [ %3335, %3332 ], [ %2649, %2839 ], [ %2649, %2644 ], [ %2649, %2658 ], [ %3335, %3357 ], [ %3335, %3375 ], [ %3335, %3409 ], [ %3335, %3411 ]
  %3431 = phi float [ %3336, %3332 ], [ %2650, %2839 ], [ %2650, %2644 ], [ %2650, %2658 ], [ %3336, %3357 ], [ %3336, %3375 ], [ %3336, %3409 ], [ %3336, %3411 ]
  %3432 = phi float [ %3337, %3332 ], [ %2651, %2839 ], [ %2651, %2644 ], [ %2651, %2658 ], [ %3337, %3357 ], [ %3337, %3375 ], [ %3337, %3409 ], [ %3337, %3411 ]
  %3433 = phi float [ %3338, %3332 ], [ %2652, %2839 ], [ %2652, %2644 ], [ %2652, %2658 ], [ %3338, %3357 ], [ %3338, %3375 ], [ %3338, %3409 ], [ %3338, %3411 ]
  %3434 = phi float [ %3339, %3332 ], [ %2653, %2839 ], [ %2653, %2644 ], [ %2653, %2658 ], [ %3339, %3357 ], [ %3339, %3375 ], [ %3339, %3409 ], [ %3339, %3411 ]
  %3435 = phi float [ %2654, %3332 ], [ %2654, %2839 ], [ %2654, %2644 ], [ %2654, %2658 ], [ %3369, %3357 ], [ %3406, %3375 ], [ %2654, %3409 ], [ %3422, %3411 ]
  %3436 = phi float [ %2655, %3332 ], [ %2655, %2839 ], [ %2655, %2644 ], [ %2655, %2658 ], [ %3366, %3357 ], [ %3383, %3375 ], [ %2655, %3409 ], [ %3419, %3411 ]
  %3437 = phi float [ %2656, %3332 ], [ %2656, %2839 ], [ %2656, %2644 ], [ %2656, %2658 ], [ %3372, %3357 ], [ %3408, %3375 ], [ %2656, %3409 ], [ %3424, %3411 ]
  %3438 = phi float [ %3340, %3332 ], [ %2657, %2839 ], [ %2657, %2644 ], [ %2657, %2658 ], [ %3340, %3357 ], [ %3340, %3375 ], [ %3340, %3409 ], [ %3340, %3411 ]
  %3439 = add i32 %55, 360
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = extractvalue %dx.types.ResRet.i32 %3440, 1
  %3443 = bitcast i32 %3441 to float
  %3444 = bitcast i32 %3442 to float
  %3445 = fcmp fast oge float %3443, 0.000000e+00
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3448 = select i1 %3445, float %3443, float %3447
  %3449 = fadd fast float %3448, %207
  %3450 = fmul fast float %3444, %208
  %3451 = add i32 %55, 456
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = add i32 %3453, 0
  %3455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3455, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = fmul fast float %3450, %3457
  %3459 = fadd fast float %3449, %3458
  %3460 = and i32 %199, 65535
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = lshr i32 %199, 16
  %3463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3462)  ; LegacyF16ToF32(value)
  %3464 = and i32 %200, 65535
  %3465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3464)  ; LegacyF16ToF32(value)
  %3466 = fmul fast float %3461, %3428
  %3467 = fmul fast float %3463, %3429
  %3468 = fmul fast float %3465, %3430
  %3469 = shl i32 %201, 4
  %3470 = and i32 %3469, 32752
  %3471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3470)  ; LegacyF16ToF32(value)
  %3472 = lshr i32 %201, 7
  %3473 = and i32 %3472, 32752
  %3474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3473)  ; LegacyF16ToF32(value)
  %3475 = lshr i32 %201, 22
  %3476 = shl nuw nsw i32 %3475, 5
  %3477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3476)  ; LegacyF16ToF32(value)
  %3478 = and i32 %202, 65535
  %3479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3478)  ; LegacyF16ToF32(value)
  %3480 = fmul fast float %3471, %3431
  %3481 = fmul fast float %3480, %3479
  %3482 = fmul fast float %3474, %3432
  %3483 = fmul fast float %3482, %3479
  %3484 = fmul fast float %3477, %3433
  %3485 = fmul fast float %3484, %3479
  %3486 = call float @dx.op.dot2.f32(i32 54, float %3426, float %3427, float %3426, float %3427)  ; Dot2(ax,ay,bx,by)
  %3487 = fmul fast float %3486, 0x3FE3333340000000
  %3488 = fsub fast float 1.000000e+00, %3487
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3426, float %3427, float %3488, float %3426, float %3427, float %3488)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = call float @dx.op.unary.f32(i32 25, float %3489)  ; Rsqrt(value)
  %3491 = fmul fast float %3490, %3426
  %3492 = fmul fast float %3490, %3427
  %3493 = fmul fast float %3488, %3490
  %3494 = fmul fast float %3493, %113
  %3495 = fmul fast float %3493, %114
  %3496 = fmul fast float %3493, %115
  %3497 = fmul fast float %3491, %81
  %3498 = fmul fast float %3491, %82
  %3499 = fmul fast float %3491, %83
  %3500 = fadd fast float %3494, %3497
  %3501 = fadd fast float %3495, %3498
  %3502 = fadd fast float %3496, %3499
  %3503 = fmul fast float %125, %3492
  %3504 = fmul fast float %126, %3492
  %3505 = fmul fast float %127, %3492
  %3506 = fadd fast float %3500, %3503
  %3507 = fadd fast float %3501, %3504
  %3508 = fadd fast float %3502, %3505
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3506, float %3507, float %3508, float %3506, float %3507, float %3508)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = call float @dx.op.unary.f32(i32 25, float %3509)  ; Rsqrt(value)
  %3511 = fmul fast float %3506, %3510
  %3512 = fmul fast float %3507, %3510
  %3513 = fmul fast float %3508, %3510
  %3514 = icmp eq i32 %57, 65535
  br i1 %3514, label %4033, label %3515

; <label>:3515                                    ; preds = %3425
  %3516 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3517 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3518 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3519 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3520 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3521 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3522 = fadd fast float %3516, %58
  %3523 = fadd fast float %3517, %59
  %3524 = fadd fast float %3518, %60
  %3525 = fadd fast float %3519, %58
  %3526 = fadd fast float %3520, %59
  %3527 = fadd fast float %3521, %60
  %3528 = mul i32 %57, 48
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = add i32 %3528, 16
  %3534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = add i32 %3528, 32
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = extractvalue %dx.types.ResRet.f32 %3539, 3
  %3544 = bitcast float %3543 to i32
  %3545 = fmul fast float %3530, %58
  %3546 = fmul fast float %3531, %59
  %3547 = fmul fast float %3532, %60
  %3548 = fsub fast float %3545, %3535
  %3549 = fsub fast float %3546, %3536
  %3550 = fsub fast float %3547, %3537
  %3551 = call float @dx.op.unary.f32(i32 7, float %3548)  ; Saturate(value)
  %3552 = call float @dx.op.unary.f32(i32 7, float %3549)  ; Saturate(value)
  %3553 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3554 = fmul fast float %3551, %3540
  %3555 = fmul fast float %3552, %3541
  %3556 = fmul fast float %3553, %3542
  %3557 = fadd fast float %3540, -1.000000e+00
  %3558 = fadd fast float %3541, -1.000000e+00
  %3559 = fadd fast float %3542, -1.000000e+00
  %3560 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3561 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3562 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3563 = call float @dx.op.binary.f32(i32 36, float %3560, float %3557)  ; FMin(a,b)
  %3564 = call float @dx.op.binary.f32(i32 36, float %3561, float %3558)  ; FMin(a,b)
  %3565 = call float @dx.op.binary.f32(i32 36, float %3562, float %3559)  ; FMin(a,b)
  %3566 = fmul fast float %3565, %3541
  %3567 = fadd fast float %3566, %3564
  %3568 = fmul fast float %3567, %3540
  %3569 = fadd fast float %3568, %3563
  %3570 = fptosi float %3569 to i32
  %3571 = add nsw i32 %3570, %3544
  %3572 = shl nsw i32 %3571, 2
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = lshr i32 %3574, 16
  %3576 = icmp eq i32 %3575, 0
  br i1 %3576, label %4001, label %3577

; <label>:3577                                    ; preds = %3515
  br label %3578

; <label>:3578                                    ; preds = %3700, %3577
  %3579 = phi i32 [ %3602, %3700 ], [ %3575, %3577 ]
  %3580 = phi float [ %3701, %3700 ], [ 0.000000e+00, %3577 ]
  %3581 = phi float [ %3702, %3700 ], [ %1091, %3577 ]
  %3582 = phi float [ %3703, %3700 ], [ %3459, %3577 ]
  %3583 = phi float [ %3704, %3700 ], [ %3438, %3577 ]
  %3584 = phi float [ %3705, %3700 ], [ 0.000000e+00, %3577 ]
  %3585 = phi float [ %3706, %3700 ], [ %3437, %3577 ]
  %3586 = phi float [ %3707, %3700 ], [ %3481, %3577 ]
  %3587 = phi float [ %3708, %3700 ], [ %3483, %3577 ]
  %3588 = phi float [ %3709, %3700 ], [ %3485, %3577 ]
  %3589 = phi float [ %3710, %3700 ], [ %3511, %3577 ]
  %3590 = phi float [ %3711, %3700 ], [ %3512, %3577 ]
  %3591 = phi float [ %3712, %3700 ], [ %3513, %3577 ]
  %3592 = phi float [ %3713, %3700 ], [ %3436, %3577 ]
  %3593 = phi float [ %3714, %3700 ], [ %3435, %3577 ]
  %3594 = phi float [ %3715, %3700 ], [ 0.000000e+00, %3577 ]
  %3595 = phi float [ %3716, %3700 ], [ %3434, %3577 ]
  %3596 = phi float [ %3717, %3700 ], [ %3466, %3577 ]
  %3597 = phi float [ %3718, %3700 ], [ %3467, %3577 ]
  %3598 = phi float [ %3719, %3700 ], [ %3468, %3577 ]
  %3599 = shl nuw nsw i32 %3579, 2
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = lshr i32 %3601, 16
  %3603 = shl i32 %3601, 8
  %3604 = and i32 %3603, 16776960
  %3605 = or i32 %3604, 48
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = or i32 %3604, 64
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.i32 %3611, 1
  %3614 = or i32 %3604, 80
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3618 = or i32 %3604, 96
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = or i32 %3604, 112
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3627 = or i32 %3604, 128
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = or i32 %3604, 144
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = or i32 %3604, 160
  %3640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = extractvalue %dx.types.ResRet.f32 %3640, 3
  %3645 = or i32 %3604, 192
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = or i32 %3604, 208
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = or i32 %3604, 248
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = extractvalue %dx.types.ResRet.f32 %3655, 3
  %3660 = call float @dx.op.dot4.f32(i32 56, float %3656, float %3657, float %3658, float %3659, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3661 = or i32 %3604, 16
  %3662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3661, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3663, float %3664, float %3665, float %3666, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = or i32 %3604, 32
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = extractvalue %dx.types.ResRet.f32 %3669, 3
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3670, float %3671, float %3672, float %3673, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = call float @dx.op.unary.f32(i32 27, float %3660)  ; Round_ni(value)
  %3676 = call float @dx.op.unary.f32(i32 6, float %3675)  ; FAbs(value)
  %3677 = call float @dx.op.unary.f32(i32 27, float %3667)  ; Round_ni(value)
  %3678 = call float @dx.op.unary.f32(i32 6, float %3677)  ; FAbs(value)
  %3679 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3680 = call float @dx.op.unary.f32(i32 27, float %3679)  ; Round_ni(value)
  %3681 = fadd fast float %3678, %3676
  %3682 = fadd fast float %3681, %3680
  %3683 = fcmp fast oeq float %3682, 0.000000e+00
  %3684 = call float @dx.op.dot4.f32(i32 56, float %3656, float %3657, float %3658, float %3659, float %3522, float %3523, float %3524, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3685 = call float @dx.op.dot4.f32(i32 56, float %3663, float %3664, float %3665, float %3666, float %3522, float %3523, float %3524, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3686 = call float @dx.op.dot4.f32(i32 56, float %3656, float %3657, float %3658, float %3659, float %3525, float %3526, float %3527, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3687 = call float @dx.op.dot4.f32(i32 56, float %3663, float %3664, float %3665, float %3666, float %3525, float %3526, float %3527, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3688 = fsub fast float %3684, %3660
  %3689 = fsub fast float %3686, %3660
  %3690 = fsub fast float %3685, %3667
  %3691 = fsub fast float %3687, %3667
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3607, float %3608, float %3609, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3693, 2
  %3695 = fadd fast float %3694, %3692
  %3696 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3693, 0
  %3698 = fcmp fast ogt float %3696, %3697
  %3699 = and i1 %3683, %3698
  br i1 %3699, label %3721, label %3700

; <label>:3700                                    ; preds = %3987, %3804, %3721, %3578
  %3701 = phi float [ %3580, %3721 ], [ %3807, %3804 ], [ %3807, %3987 ], [ %3580, %3578 ]
  %3702 = phi float [ %3581, %3721 ], [ %3581, %3804 ], [ %3962, %3987 ], [ %3581, %3578 ]
  %3703 = phi float [ %3582, %3721 ], [ %3582, %3804 ], [ %3961, %3987 ], [ %3582, %3578 ]
  %3704 = phi float [ %3583, %3721 ], [ %3583, %3804 ], [ %3959, %3987 ], [ %3583, %3578 ]
  %3705 = phi float [ %3584, %3721 ], [ %3584, %3804 ], [ %3931, %3987 ], [ %3584, %3578 ]
  %3706 = phi float [ %3585, %3721 ], [ %3585, %3804 ], [ %3929, %3987 ], [ %3585, %3578 ]
  %3707 = phi float [ %3586, %3721 ], [ %3586, %3804 ], [ %3997, %3987 ], [ %3586, %3578 ]
  %3708 = phi float [ %3587, %3721 ], [ %3587, %3804 ], [ %3998, %3987 ], [ %3587, %3578 ]
  %3709 = phi float [ %3588, %3721 ], [ %3588, %3804 ], [ %3999, %3987 ], [ %3588, %3578 ]
  %3710 = phi float [ %3589, %3721 ], [ %3589, %3804 ], [ %3910, %3987 ], [ %3589, %3578 ]
  %3711 = phi float [ %3590, %3721 ], [ %3590, %3804 ], [ %3911, %3987 ], [ %3590, %3578 ]
  %3712 = phi float [ %3591, %3721 ], [ %3591, %3804 ], [ %3912, %3987 ], [ %3591, %3578 ]
  %3713 = phi float [ %3592, %3721 ], [ %3592, %3804 ], [ %3939, %3987 ], [ %3592, %3578 ]
  %3714 = phi float [ %3593, %3721 ], [ %3593, %3804 ], [ %3936, %3987 ], [ %3593, %3578 ]
  %3715 = phi float [ %3594, %3721 ], [ %3594, %3804 ], [ %3933, %3987 ], [ %3594, %3578 ]
  %3716 = phi float [ %3595, %3721 ], [ %3595, %3804 ], [ %3927, %3987 ], [ %3595, %3578 ]
  %3717 = phi float [ %3596, %3721 ], [ %3596, %3804 ], [ %3922, %3987 ], [ %3596, %3578 ]
  %3718 = phi float [ %3597, %3721 ], [ %3597, %3804 ], [ %3923, %3987 ], [ %3597, %3578 ]
  %3719 = phi float [ %3598, %3721 ], [ %3598, %3804 ], [ %3924, %3987 ], [ %3598, %3578 ]
  %3720 = icmp eq i32 %3602, 0
  br i1 %3720, label %4000, label %3578

; <label>:3721                                    ; preds = %3578
  %3722 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3723 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3724 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3725 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3726 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3727 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3728 = extractvalue %dx.types.ResRet.i32 %3611, 3
  %3729 = extractvalue %dx.types.ResRet.i32 %3611, 2
  %3730 = bitcast float %3722 to i32
  %3731 = add i32 %3728, 0
  %3732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3731, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3732, %dx.types.Handle %3733, float %3660, float %3667, float undef, float undef, i32 0, i32 0, i32 undef, float %3688, float %3690, float undef, float %3689, float %3691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = fmul fast float %3735, %3727
  %3737 = fadd fast float %3736, %3726
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3660, %3620
  %3740 = call float @dx.op.tertiary.f32(i32 46, float %3621, float %3667, float %3739)  ; FMad(a,b,c)
  %3741 = fadd fast float %3740, %3725
  %3742 = fmul fast float %3660, %3622
  %3743 = call float @dx.op.tertiary.f32(i32 46, float %3623, float %3667, float %3742)  ; FMad(a,b,c)
  %3744 = fadd fast float %3743, %3724
  %3745 = fmul fast float %3688, %3620
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3621, float %3690, float %3745)  ; FMad(a,b,c)
  %3747 = fmul fast float %3688, %3622
  %3748 = call float @dx.op.tertiary.f32(i32 46, float %3623, float %3690, float %3747)  ; FMad(a,b,c)
  %3749 = fmul fast float %3689, %3620
  %3750 = call float @dx.op.tertiary.f32(i32 46, float %3621, float %3691, float %3749)  ; FMad(a,b,c)
  %3751 = fmul fast float %3689, %3622
  %3752 = call float @dx.op.tertiary.f32(i32 46, float %3623, float %3691, float %3751)  ; FMad(a,b,c)
  %3753 = add i32 %3729, 0
  %3754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3753, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3755 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3754, %dx.types.Handle %3733, float %3741, float %3744, float undef, float undef, i32 0, i32 0, i32 undef, float %3746, float %3748, float undef, float %3750, float %3752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = and i32 %3730, 1024
  %3758 = icmp ne i32 %3757, 0
  %3759 = fcmp fast ogt float %3756, 0x3FE0101020000000
  %3760 = uitofp i1 %3759 to float
  %3761 = select i1 %3758, float %3760, float %3756
  %3762 = and i32 %3730, 8192
  %3763 = icmp ne i32 %3762, 0
  %3764 = select i1 %3763, float %3723, float 1.000000e+00
  %3765 = fmul fast float %3660, 2.000000e+00
  %3766 = fadd fast float %3765, -1.000000e+00
  %3767 = call float @dx.op.unary.f32(i32 6, float %3766)  ; FAbs(value)
  %3768 = fmul fast float %3767, %3653
  %3769 = fsub fast float %3768, %3653
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fmul fast float %3667, 2.000000e+00
  %3772 = fadd fast float %3771, -1.000000e+00
  %3773 = call float @dx.op.unary.f32(i32 6, float %3772)  ; FAbs(value)
  %3774 = fmul fast float %3773, %3654
  %3775 = fsub fast float %3774, %3654
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fmul fast float %3679, %3616
  %3778 = fsub fast float %3777, %3616
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = fmul fast float %3738, %3764
  %3781 = fmul fast float %3780, %3735
  %3782 = fmul fast float %3781, %3770
  %3783 = fmul fast float %3782, %3761
  %3784 = fmul fast float %3783, %3776
  %3785 = fmul fast float %3784, %3779
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 1
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3789 = fsub fast float %3696, %3788
  %3790 = fmul fast float %3789, %3787
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = fmul fast float %3785, %3617
  %3793 = fadd fast float %3785, %3617
  %3794 = fmul fast float %3793, %3626
  %3795 = fsub fast float %3794, %3626
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = and i32 %3730, 128
  %3798 = icmp ne i32 %3797, 0
  %3799 = select i1 %3798, float %3796, float %3792
  %3800 = fmul fast float %3799, %3791
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = fcmp fast ugt float %3800, %3802
  br i1 %3803, label %3804, label %3700

; <label>:3804                                    ; preds = %3721
  %3805 = select i1 %3763, float %3800, float 0.000000e+00
  %3806 = fadd fast float %3805, %3580
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  br i1 %3763, label %3700, label %3808

; <label>:3808                                    ; preds = %3804
  %3809 = and i32 %3730, 4
  %3810 = and i32 %3730, 8
  %3811 = add i32 %3612, 0
  %3812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3812, %dx.types.Handle %3813, float %3741, float %3744, float undef, float undef, i32 0, i32 0, i32 undef, float %3746, float %3748, float undef, float %3750, float %3752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = extractvalue %dx.types.ResRet.f32 %3814, 3
  %3819 = bitcast float %3638 to i32
  %3820 = and i32 %3819, 255
  %3821 = uitofp i32 %3820 to float
  %3822 = lshr i32 %3819, 8
  %3823 = and i32 %3822, 255
  %3824 = uitofp i32 %3823 to float
  %3825 = fmul fast float %3818, %3821
  %3826 = fadd fast float %3825, %3824
  %3827 = fmul fast float %3826, 0x3F70101000000000
  %3828 = add i32 %3613, 0
  %3829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3828, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3830 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3829, %dx.types.Handle %3813, float %3741, float %3744, float undef, float undef, i32 0, i32 0, i32 undef, float %3746, float %3748, float undef, float %3750, float %3752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3835 = bitcast float %3632 to i32
  %3836 = and i32 %3835, 255
  %3837 = uitofp i32 %3836 to float
  %3838 = lshr i32 %3835, 8
  %3839 = and i32 %3838, 255
  %3840 = uitofp i32 %3839 to float
  %3841 = lshr i32 %3835, 16
  %3842 = and i32 %3841, 255
  %3843 = uitofp i32 %3842 to float
  %3844 = fmul fast float %3843, 0x3F70101000000000
  %3845 = fmul fast float %3831, %3837
  %3846 = fadd fast float %3845, %3840
  %3847 = fmul fast float %3846, 0x3F70101000000000
  %3848 = fadd fast float %3832, -5.000000e-01
  %3849 = fadd fast float %3834, -5.000000e-01
  %3850 = fmul fast float %3848, %3844
  %3851 = fmul fast float %3849, %3844
  %3852 = fadd fast float %3850, 5.000000e-01
  %3853 = fadd fast float %3851, 5.000000e-01
  %3854 = fmul fast float %3815, %3641
  %3855 = fmul fast float %3816, %3642
  %3856 = fmul fast float %3817, %3643
  %3857 = fmul fast float %3852, 2.000000e+00
  %3858 = fadd fast float %3857, -1.000000e+00
  %3859 = fmul fast float %3853, 2.000000e+00
  %3860 = fadd fast float %3859, -1.000000e+00
  %3861 = fadd fast float %3858, %3860
  %3862 = fmul fast float %3861, 5.000000e-01
  %3863 = fsub fast float %3858, %3860
  %3864 = fmul fast float %3863, 5.000000e-01
  %3865 = call float @dx.op.unary.f32(i32 6, float %3862)  ; FAbs(value)
  %3866 = fsub fast float 1.000000e+00, %3865
  %3867 = call float @dx.op.unary.f32(i32 6, float %3864)  ; FAbs(value)
  %3868 = fsub fast float %3866, %3867
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3862, float %3864, float %3868, float %3862, float %3864, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.unary.f32(i32 25, float %3869)  ; Rsqrt(value)
  %3871 = fmul fast float %3862, %3870
  %3872 = fmul fast float %3864, %3870
  %3873 = fmul fast float %3870, %3868
  %3874 = fmul fast float %3873, %3607
  %3875 = fmul fast float %3873, %3608
  %3876 = fmul fast float %3873, %3609
  %3877 = fmul fast float %3871, %3629
  %3878 = fmul fast float %3871, %3630
  %3879 = fmul fast float %3871, %3631
  %3880 = fadd fast float %3877, %3874
  %3881 = fadd fast float %3878, %3875
  %3882 = fadd fast float %3879, %3876
  %3883 = fmul fast float %3872, %3635
  %3884 = fmul fast float %3872, %3636
  %3885 = fmul fast float %3872, %3637
  %3886 = fadd fast float %3880, %3883
  %3887 = fadd fast float %3881, %3884
  %3888 = fadd fast float %3882, %3885
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float %3886, float %3887, float %3888)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.unary.f32(i32 25, float %3889)  ; Rsqrt(value)
  %3891 = fmul fast float %3886, %3890
  %3892 = fmul fast float %3887, %3890
  %3893 = fmul fast float %3888, %3890
  %3894 = icmp ne i32 %3810, 0
  %3895 = select i1 %3894, float 1.000000e+00, float 0.000000e+00
  %3896 = fmul fast float %3800, %3895
  %3897 = and i32 %3730, 1
  %3898 = icmp eq i32 %3897, 0
  br i1 %3898, label %3899, label %3903

; <label>:3899                                    ; preds = %3808
  %3900 = fsub fast float %3891, %3589
  %3901 = fsub fast float %3892, %3590
  %3902 = fsub fast float %3893, %3591
  br label %3903

; <label>:3903                                    ; preds = %3899, %3808
  %3904 = phi float [ %3900, %3899 ], [ %3891, %3808 ]
  %3905 = phi float [ %3901, %3899 ], [ %3892, %3808 ]
  %3906 = phi float [ %3902, %3899 ], [ %3893, %3808 ]
  %3907 = fmul float %3906, %3896
  %3908 = fmul float %3905, %3896
  %3909 = fmul float %3904, %3896
  %3910 = fadd fast float %3909, %3589
  %3911 = fadd fast float %3908, %3590
  %3912 = fadd fast float %3907, %3591
  %3913 = icmp ne i32 %3809, 0
  %3914 = select i1 %3913, float 1.000000e+00, float 0.000000e+00
  %3915 = fmul fast float %3800, %3914
  %3916 = fsub fast float %3854, %3596
  %3917 = fsub fast float %3855, %3597
  %3918 = fsub fast float %3856, %3598
  %3919 = fmul fast float %3916, %3915
  %3920 = fmul fast float %3917, %3915
  %3921 = fmul fast float %3918, %3915
  %3922 = fadd fast float %3919, %3596
  %3923 = fadd fast float %3920, %3597
  %3924 = fadd fast float %3921, %3598
  %3925 = fsub fast float %3827, %3595
  %3926 = fmul fast float %3925, %3915
  %3927 = fadd fast float %3926, %3595
  %3928 = fmul fast float %3915, %3585
  %3929 = fsub fast float %3585, %3928
  %3930 = fmul fast float %3915, %3584
  %3931 = fsub fast float %3584, %3930
  %3932 = fadd fast float %3800, %3594
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = fsub fast float %3847, %3593
  %3935 = fmul fast float %3934, %3896
  %3936 = fadd fast float %3935, %3593
  %3937 = fsub fast float %3833, %3592
  %3938 = fmul fast float %3937, %3896
  %3939 = fadd fast float %3938, %3592
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = fmul fast float %3943, %3940
  %3945 = fadd fast float %3944, %3942
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = bitcast float %3644 to i32
  %3948 = and i32 %3947, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = lshr i32 %3947, 16
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = fcmp fast oge float %3949, 0.000000e+00
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = select i1 %3952, float %3949, float %3954
  %3956 = fadd fast float %3955, %3951
  %3957 = fsub fast float %3946, %3583
  %3958 = fmul fast float %3957, %3800
  %3959 = fadd fast float %3958, %3583
  %3960 = fmul fast float %3956, %3800
  %3961 = call float @dx.op.binary.f32(i32 35, float %3582, float %3960)  ; FMax(a,b)
  %3962 = call float @dx.op.binary.f32(i32 35, float %3581, float %3800)  ; FMax(a,b)
  %3963 = and i32 %3730, 16
  %3964 = icmp eq i32 %3963, 0
  br i1 %3964, label %3987, label %3965

; <label>:3965                                    ; preds = %3903
  %3966 = bitcast float %3650 to i32
  %3967 = add i32 %3647, 0
  %3968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3967, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3968, %dx.types.Handle %3813, float %3741, float %3744, float undef, float undef, i32 0, i32 0, i32 undef, float %3746, float %3748, float undef, float %3750, float %3752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = and i32 %3966, 65535
  %3974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3973)  ; LegacyF16ToF32(value)
  %3975 = fmul fast float %3970, %3641
  %3976 = fmul fast float %3971, %3642
  %3977 = fmul fast float %3972, %3643
  %3978 = and i32 %3730, 16384
  %3979 = icmp ne i32 %3978, 0
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = select i1 %3979, float %3981, float 1.000000e+00
  %3983 = fmul fast float %3982, %3974
  %3984 = fmul fast float %3975, %3983
  %3985 = fmul fast float %3976, %3983
  %3986 = fmul fast float %3977, %3983
  br label %3987

; <label>:3987                                    ; preds = %3965, %3903
  %3988 = phi float [ %3984, %3965 ], [ 0.000000e+00, %3903 ]
  %3989 = phi float [ %3985, %3965 ], [ 0.000000e+00, %3903 ]
  %3990 = phi float [ %3986, %3965 ], [ 0.000000e+00, %3903 ]
  %3991 = fsub fast float %3988, %3586
  %3992 = fsub fast float %3989, %3587
  %3993 = fsub fast float %3990, %3588
  %3994 = fmul fast float %3991, %3800
  %3995 = fmul fast float %3992, %3800
  %3996 = fmul fast float %3993, %3800
  %3997 = fadd fast float %3994, %3586
  %3998 = fadd fast float %3995, %3587
  %3999 = fadd fast float %3996, %3588
  br label %3700

; <label>:4000                                    ; preds = %3700
  br label %4001

; <label>:4001                                    ; preds = %4000, %3515
  %4002 = phi float [ 0.000000e+00, %3515 ], [ %3701, %4000 ]
  %4003 = phi float [ %1091, %3515 ], [ %3702, %4000 ]
  %4004 = phi float [ %3459, %3515 ], [ %3703, %4000 ]
  %4005 = phi float [ %3438, %3515 ], [ %3704, %4000 ]
  %4006 = phi float [ 0.000000e+00, %3515 ], [ %3705, %4000 ]
  %4007 = phi float [ %3437, %3515 ], [ %3706, %4000 ]
  %4008 = phi float [ %3481, %3515 ], [ %3707, %4000 ]
  %4009 = phi float [ %3483, %3515 ], [ %3708, %4000 ]
  %4010 = phi float [ %3485, %3515 ], [ %3709, %4000 ]
  %4011 = phi float [ %3511, %3515 ], [ %3710, %4000 ]
  %4012 = phi float [ %3512, %3515 ], [ %3711, %4000 ]
  %4013 = phi float [ %3513, %3515 ], [ %3712, %4000 ]
  %4014 = phi float [ %3436, %3515 ], [ %3713, %4000 ]
  %4015 = phi float [ %3435, %3515 ], [ %3714, %4000 ]
  %4016 = phi float [ 0.000000e+00, %3515 ], [ %3715, %4000 ]
  %4017 = phi float [ %3434, %3515 ], [ %3716, %4000 ]
  %4018 = phi float [ %3466, %3515 ], [ %3717, %4000 ]
  %4019 = phi float [ %3467, %3515 ], [ %3718, %4000 ]
  %4020 = phi float [ %3468, %3515 ], [ %3719, %4000 ]
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4011, float %4012, float %4013, float %4011, float %4012, float %4013)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = call float @dx.op.unary.f32(i32 25, float %4021)  ; Rsqrt(value)
  %4023 = fmul fast float %4022, %4011
  %4024 = fmul fast float %4022, %4012
  %4025 = fmul fast float %4022, %4013
  %4026 = fadd fast float %4016, %1091
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = call float @dx.op.dot3.f32(i32 55, float %4023, float %4024, float %4025, float %4023, float %4024, float %4025)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = call float @dx.op.unary.f32(i32 25, float %4028)  ; Rsqrt(value)
  %4030 = fmul fast float %4029, %4023
  %4031 = fmul fast float %4029, %4024
  %4032 = fmul fast float %4029, %4025
  br label %4033

; <label>:4033                                    ; preds = %4001, %3425
  %4034 = phi float [ %4030, %4001 ], [ %3511, %3425 ]
  %4035 = phi float [ %4031, %4001 ], [ %3512, %3425 ]
  %4036 = phi float [ %4032, %4001 ], [ %3513, %3425 ]
  %4037 = phi float [ %4008, %4001 ], [ %3481, %3425 ]
  %4038 = phi float [ %4009, %4001 ], [ %3483, %3425 ]
  %4039 = phi float [ %4010, %4001 ], [ %3485, %3425 ]
  %4040 = phi float [ %4018, %4001 ], [ %3466, %3425 ]
  %4041 = phi float [ %4019, %4001 ], [ %3467, %3425 ]
  %4042 = phi float [ %4020, %4001 ], [ %3468, %3425 ]
  %4043 = phi float [ %4017, %4001 ], [ %3434, %3425 ]
  %4044 = phi float [ %4027, %4001 ], [ %1091, %3425 ]
  %4045 = phi float [ %4015, %4001 ], [ %3435, %3425 ]
  %4046 = phi float [ %4014, %4001 ], [ %3436, %3425 ]
  %4047 = phi float [ %4007, %4001 ], [ %3437, %3425 ]
  %4048 = phi float [ %4006, %4001 ], [ 0.000000e+00, %3425 ]
  %4049 = phi float [ %4002, %4001 ], [ 0.000000e+00, %3425 ]
  %4050 = phi float [ %4004, %4001 ], [ %3459, %3425 ]
  %4051 = phi float [ %4003, %4001 ], [ %1091, %3425 ]
  %4052 = phi float [ %4005, %4001 ], [ %3438, %3425 ]
  %4053 = fadd fast float %4043, 0xBFB99999A0000000
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fmul fast float %4054, 0x3FF1C71C80000000
  %4056 = call float @dx.op.binary.f32(i32 36, float %4043, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4057 = fsub fast float 1.000000e+00, %4055
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = fmul fast float %4058, %4040
  %4060 = fmul fast float %4058, %4041
  %4061 = fmul fast float %4058, %4042
  %4062 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4063 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4064 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4065 = fmul fast float %4055, %4040
  %4066 = fmul fast float %4055, %4041
  %4067 = fmul fast float %4055, %4042
  %4068 = fadd fast float %4065, %4056
  %4069 = fadd fast float %4066, %4056
  %4070 = fadd fast float %4067, %4056
  %4071 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.i32 %4075, 3
  %4077 = and i32 %4076, 8
  %4078 = icmp ne i32 %4077, 0
  %4079 = call float @dx.op.binary.f32(i32 35, float %4062, float %4040)  ; FMax(a,b)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4063, float %4040)  ; FMax(a,b)
  %4081 = call float @dx.op.binary.f32(i32 35, float %4064, float %4040)  ; FMax(a,b)
  %4082 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4083 = select i1 %265, float %4040, float %4062
  %4084 = select i1 %265, float %4082, float %4063
  %4085 = select i1 %265, float 1.000000e+00, float %4064
  %4086 = select i1 %4078, float %4079, float %4083
  %4087 = select i1 %4078, float %4080, float %4084
  %4088 = select i1 %4078, float %4081, float %4085
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4093 = fadd fast float %4090, %193
  %4094 = fadd fast float %4091, %194
  %4095 = fadd fast float %4092, %195
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = fsub fast float %4093, %4097
  %4100 = fsub fast float %4094, %4098
  %4101 = fmul fast float %4099, %4099
  %4102 = fmul fast float %4100, %4100
  %4103 = fadd fast float %4101, %4102
  %4104 = call float @dx.op.unary.f32(i32 24, float %4103)  ; Sqrt(value)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4106 = fcmp fast olt float %4104, %4105
  br i1 %4106, label %4107, label %4174

; <label>:4107                                    ; preds = %4033
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4115 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4117 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4118 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4119 = extractvalue %dx.types.CBufRet.f32 %4112, 3
  %4120 = fadd fast float %4117, %4093
  %4121 = fadd fast float %4118, %4094
  %4122 = fadd fast float %4119, %4095
  %4123 = fmul fast float %4120, %4109
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4111, float %4123)  ; FMad(a,b,c)
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4113, float %4124)  ; FMad(a,b,c)
  %4126 = fmul fast float %4120, %4114
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4115, float %4126)  ; FMad(a,b,c)
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4116, float %4127)  ; FMad(a,b,c)
  %4129 = fsub fast float %4125, %4117
  %4130 = fsub fast float %4128, %4118
  %4131 = fsub fast float %4129, %4097
  %4132 = fadd fast float %4131, %4105
  %4133 = fsub fast float %4130, %4098
  %4134 = fadd fast float %4133, %4105
  %4135 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4136 = fmul fast float %4132, %4135
  %4137 = fmul fast float %4134, %4135
  %4138 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4139 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4140 = fsub fast float 1.000000e+00, %4138
  %4141 = fsub fast float 1.000000e+00, %4139
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4140, float %4141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = fcmp fast ugt float %4143, 0.000000e+00
  br i1 %4144, label %4145, label %4448

; <label>:4145                                    ; preds = %4107
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 2
  %4148 = fmul fast float %4147, %4143
  %4149 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4150 = fadd fast float %4149, %4148
  %4151 = extractvalue %dx.types.CBufRet.f32 %4112, 2
  %4152 = fadd fast float %4150, %4119
  %4153 = fmul fast float %4125, %4113
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4128, float %4116, float %4153)  ; FMad(a,b,c)
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4151, float %4154)  ; FMad(a,b,c)
  %4156 = fsub fast float %4155, %4119
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 2
  %4159 = fsub fast float %4156, %4158
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4140, float %4141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4140, float %4141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.ResRet.f32 %4164, 2
  %4168 = fadd fast float %4165, %4161
  %4169 = fmul fast float %4168, 0x3F847AE140000000
  %4170 = fadd fast float %4166, %4162
  %4171 = fmul fast float %4170, 0x3F847AE140000000
  %4172 = fadd fast float %4167, %4163
  %4173 = fmul fast float %4172, 0x3F847AE140000000
  br label %4448

; <label>:4174                                    ; preds = %4033
  %4175 = and i32 %244, 1
  %4176 = icmp eq i32 %4175, 0
  br i1 %4176, label %4448, label %4177

; <label>:4177                                    ; preds = %4174
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4185 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4182, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4188 = extractvalue %dx.types.CBufRet.f32 %4180, 3
  %4189 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4190 = fadd fast float %4187, %4093
  %4191 = fadd fast float %4188, %4094
  %4192 = fadd fast float %4189, %4095
  %4193 = fmul fast float %4190, %4179
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4181, float %4193)  ; FMad(a,b,c)
  %4195 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4183, float %4194)  ; FMad(a,b,c)
  %4196 = fmul fast float %4190, %4184
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4185, float %4196)  ; FMad(a,b,c)
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4186, float %4197)  ; FMad(a,b,c)
  %4199 = fsub fast float %4195, %4187
  %4200 = fsub fast float %4198, %4188
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.CBufRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4205 = extractvalue %dx.types.CBufRet.f32 %4201, 3
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 3
  %4208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.i32 %4208, 0
  %4210 = extractvalue %dx.types.CBufRet.i32 %4208, 1
  %4211 = udiv i32 %4210, %4209
  %4212 = fsub fast float %4199, %4202
  %4213 = fsub fast float %4200, %4203
  %4214 = call float @dx.op.binary.f32(i32 35, float %4212, float 0.000000e+00)  ; FMax(a,b)
  %4215 = call float @dx.op.binary.f32(i32 35, float %4213, float 0.000000e+00)  ; FMax(a,b)
  %4216 = call float @dx.op.binary.f32(i32 36, float %4214, float %4204)  ; FMin(a,b)
  %4217 = call float @dx.op.binary.f32(i32 36, float %4215, float %4205)  ; FMin(a,b)
  %4218 = add i32 %4209, -1
  %4219 = add i32 %4211, -1
  %4220 = fmul fast float %4216, %4207
  %4221 = fmul fast float %4217, %4207
  %4222 = fptoui float %4220 to i32
  %4223 = fptoui float %4221 to i32
  %4224 = call i32 @dx.op.binary.i32(i32 40, i32 %4222, i32 %4218)  ; UMin(a,b)
  %4225 = call i32 @dx.op.binary.i32(i32 40, i32 %4223, i32 %4219)  ; UMin(a,b)
  %4226 = mul i32 %4225, %4209
  %4227 = add i32 %4226, %4224
  %4228 = shl i32 %4227, 2
  %4229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.i32 %4229, 0
  %4231 = icmp eq i32 %4230, -1
  br i1 %4231, label %4448, label %4232

; <label>:4232                                    ; preds = %4177
  %4233 = mul i32 %4230, 148
  %4234 = add i32 %4233, 4
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = add i32 %4233, 8
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = add i32 %4233, 36
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = add i32 %4233, 60
  %4244 = add i32 %4233, 92
  %4245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.i32 %4245, 0
  %4247 = add i32 %4233, 116
  %4248 = fsub fast float %4199, %4236
  %4249 = fsub fast float %4200, %4239
  %4250 = fmul fast float %4207, %4248
  %4251 = fmul fast float %4207, %4249
  %4252 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4254 = fsub fast float 1.000000e+00, %4253
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 2
  %4257 = call float @dx.op.unary.f32(i32 83, float %4252)  ; DerivCoarseX(value)
  %4258 = call float @dx.op.unary.f32(i32 83, float %4254)  ; DerivCoarseX(value)
  %4259 = call float @dx.op.unary.f32(i32 84, float %4252)  ; DerivCoarseY(value)
  %4260 = call float @dx.op.unary.f32(i32 84, float %4254)  ; DerivCoarseY(value)
  %4261 = fmul fast float %4257, %4256
  %4262 = fmul fast float %4258, %4256
  %4263 = fmul fast float %4259, %4256
  %4264 = fmul fast float %4260, %4256
  %4265 = call float @dx.op.dot2.f32(i32 54, float %4263, float %4264, float %4263, float %4264)  ; Dot2(ax,ay,bx,by)
  %4266 = call float @dx.op.dot2.f32(i32 54, float %4261, float %4262, float %4261, float %4262)  ; Dot2(ax,ay,bx,by)
  %4267 = call float @dx.op.binary.f32(i32 35, float %4266, float %4265)  ; FMax(a,b)
  %4268 = call float @dx.op.unary.f32(i32 23, float %4267)  ; Log(value)
  %4269 = fmul fast float %4268, 5.000000e-01
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 1
  %4272 = fadd fast float %4271, %4269
  %4273 = call float @dx.op.binary.f32(i32 35, float %4272, float 0.000000e+00)  ; FMax(a,b)
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 3
  %4276 = fadd fast float %4275, %4273
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4279 = fadd fast float %4276, %4278
  %4280 = add i32 %4246, 0
  %4281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4280, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4282 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4281, i32 0)  ; GetDimensions(handle,mipLevel)
  %4283 = extractvalue %dx.types.Dimensions %4282, 0
  %4284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4283)  ; FirstbitLo(value)
  %4285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.i32 %4285, 1
  %4287 = sub nsw i32 %4286, %4284
  %4288 = sitofp i32 %4287 to float
  %4289 = fsub fast float %4279, %4288
  %4290 = call float @dx.op.binary.f32(i32 35, float %4289, float 0.000000e+00)  ; FMax(a,b)
  %4291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4281, %dx.types.Handle %47, float %4252, float %4254, float %4242, float undef, i32 0, i32 0, i32 undef, float %4290)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = fcmp ule float %4292, 0x3FE0101020000000
  %4294 = extractvalue %dx.types.CBufRet.i32 %4285, 0
  %4295 = and i32 %4294, 128
  %4296 = icmp ne i32 %4295, 0
  %4297 = and i1 %4293, %4296
  br i1 %4297, label %4448, label %4298

; <label>:4298                                    ; preds = %4232
  %4299 = add i32 %4233, 20
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = add i32 %4233, 24
  %4303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4302, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = add i32 %4233, 40
  %4306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = add i32 %4233, 96
  %4309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.i32 %4309, 0
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4313 = fmul fast float %4312, %4252
  %4314 = fmul fast float %4312, %4254
  %4315 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4316 = fadd fast float %4313, %4315
  %4317 = fadd fast float %4314, %4315
  %4318 = add i32 %4310, 0
  %4319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4318, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4320 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4319, i32 0)  ; GetDimensions(handle,mipLevel)
  %4321 = extractvalue %dx.types.Dimensions %4320, 0
  %4322 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4321)  ; FirstbitLo(value)
  %4323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.i32 %4323, 1
  %4325 = sub nsw i32 %4324, %4322
  %4326 = sitofp i32 %4325 to float
  %4327 = fsub fast float %4276, %4326
  %4328 = call float @dx.op.binary.f32(i32 35, float %4327, float 0.000000e+00)  ; FMax(a,b)
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4319, %dx.types.Handle %47, float %4316, float %4317, float %4307, float undef, i32 0, i32 0, i32 undef, float %4328)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = fmul fast float %4330, %4301
  %4332 = fadd fast float %4331, %4304
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.CBufRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.CBufRet.f32 %4333, 2
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4341 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4342 = fadd fast float %4338, %4199
  %4343 = fadd fast float %4340, %4200
  %4344 = fadd fast float %4332, %4341
  %4345 = fmul fast float %4342, %4334
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4343, float %4335, float %4345)  ; FMad(a,b,c)
  %4347 = call float @dx.op.tertiary.f32(i32 46, float %4344, float %4336, float %4346)  ; FMad(a,b,c)
  %4348 = fsub fast float %4347, %4341
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4351 = fsub fast float %4348, %4350
  %4352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.i32 %4352, 0
  %4354 = call i32 @dx.op.binary.i32(i32 40, i32 %4230, i32 %4353)  ; UMin(a,b)
  %4355 = mul i32 %4354, 36
  %4356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.i32 %4356, 0
  %4358 = add i32 %4355, 4
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = fmul fast float %4360, %4252
  %4362 = fmul fast float %4360, %4254
  %4363 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4364 = fadd fast float %4361, %4363
  %4365 = fadd fast float %4362, %4363
  %4366 = icmp eq i32 %4357, 0
  br i1 %4366, label %4435, label %4367

; <label>:4367                                    ; preds = %4298
  br label %4368

; <label>:4368                                    ; preds = %4425, %4367
  %4369 = phi float [ %4426, %4425 ], [ 0.000000e+00, %4367 ]
  %4370 = phi float [ %4427, %4425 ], [ 0.000000e+00, %4367 ]
  %4371 = phi float [ %4428, %4425 ], [ 0.000000e+00, %4367 ]
  %4372 = phi float [ %4429, %4425 ], [ 0.000000e+00, %4367 ]
  %4373 = phi float [ %4430, %4425 ], [ 0.000000e+00, %4367 ]
  %4374 = phi float [ %4431, %4425 ], [ 0.000000e+00, %4367 ]
  %4375 = phi i32 [ %4432, %4425 ], [ 0, %4367 ]
  %4376 = shl i32 %4375, 2
  %4377 = add i32 %4243, %4376
  %4378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = add i32 %4247, %4376
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = add i32 %4382, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4383, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4384, i32 0)  ; GetDimensions(handle,mipLevel)
  %4386 = extractvalue %dx.types.Dimensions %4385, 0
  %4387 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4386)  ; FirstbitLo(value)
  %4388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.i32 %4388, 1
  %4390 = sub nsw i32 %4389, %4387
  %4391 = sitofp i32 %4390 to float
  %4392 = fsub fast float %4276, %4391
  %4393 = call float @dx.op.binary.f32(i32 35, float %4392, float 0.000000e+00)  ; FMax(a,b)
  %4394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4384, %dx.types.Handle %47, float %4364, float %4365, float %4379, float undef, i32 0, i32 0, i32 undef, float %4393)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = fcmp fast ogt float %4395, 0.000000e+00
  br i1 %4396, label %4397, label %4425

; <label>:4397                                    ; preds = %4368
  %4398 = add i32 %4358, %4376
  %4399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.i32 %4399, 0
  %4401 = and i32 %4400, 32767
  %4402 = mul nuw nsw i32 %4401, 928
  %4403 = add nuw nsw i32 %4402, 48
  %4404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4405 = extractvalue %dx.types.ResRet.f32 %4404, 0
  %4406 = extractvalue %dx.types.ResRet.f32 %4404, 1
  %4407 = extractvalue %dx.types.ResRet.f32 %4404, 2
  %4408 = add nuw nsw i32 %4402, 60
  %4409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = fmul fast float %4405, %4395
  %4414 = fmul fast float %4406, %4395
  %4415 = fmul fast float %4407, %4395
  %4416 = fadd fast float %4413, %4369
  %4417 = fadd fast float %4414, %4370
  %4418 = fadd fast float %4415, %4371
  %4419 = fmul fast float %4410, %4395
  %4420 = fmul fast float %4411, %4395
  %4421 = fmul fast float %4412, %4395
  %4422 = fadd fast float %4419, %4372
  %4423 = fadd fast float %4420, %4373
  %4424 = fadd fast float %4421, %4374
  br label %4425

; <label>:4425                                    ; preds = %4397, %4368
  %4426 = phi float [ %4416, %4397 ], [ %4369, %4368 ]
  %4427 = phi float [ %4417, %4397 ], [ %4370, %4368 ]
  %4428 = phi float [ %4418, %4397 ], [ %4371, %4368 ]
  %4429 = phi float [ %4422, %4397 ], [ %4372, %4368 ]
  %4430 = phi float [ %4423, %4397 ], [ %4373, %4368 ]
  %4431 = phi float [ %4424, %4397 ], [ %4374, %4368 ]
  %4432 = add nuw i32 %4375, 1
  %4433 = icmp eq i32 %4432, %4357
  br i1 %4433, label %4434, label %4368

; <label>:4434                                    ; preds = %4425
  br label %4435

; <label>:4435                                    ; preds = %4434, %4298
  %4436 = phi float [ 0.000000e+00, %4298 ], [ %4426, %4434 ]
  %4437 = phi float [ 0.000000e+00, %4298 ], [ %4427, %4434 ]
  %4438 = phi float [ 0.000000e+00, %4298 ], [ %4428, %4434 ]
  %4439 = phi float [ 0.000000e+00, %4298 ], [ %4429, %4434 ]
  %4440 = phi float [ 0.000000e+00, %4298 ], [ %4430, %4434 ]
  %4441 = phi float [ 0.000000e+00, %4298 ], [ %4431, %4434 ]
  %4442 = fadd fast float %4439, %4436
  %4443 = fmul fast float %4442, 0x3F847AE140000000
  %4444 = fadd fast float %4440, %4437
  %4445 = fmul fast float %4444, 0x3F847AE140000000
  %4446 = fadd fast float %4441, %4438
  %4447 = fmul fast float %4446, 0x3F847AE140000000
  br label %4448

; <label>:4448                                    ; preds = %4435, %4232, %4177, %4174, %4145, %4107
  %4449 = phi float [ %4159, %4145 ], [ -1.310720e+05, %4107 ], [ %4351, %4435 ], [ -1.310720e+05, %4177 ], [ -1.310720e+05, %4232 ], [ -1.310720e+05, %4174 ]
  %4450 = phi float [ %4169, %4145 ], [ 0.000000e+00, %4107 ], [ %4443, %4435 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4232 ], [ 0.000000e+00, %4174 ]
  %4451 = phi float [ %4171, %4145 ], [ 0.000000e+00, %4107 ], [ %4445, %4435 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4232 ], [ 0.000000e+00, %4174 ]
  %4452 = phi float [ %4173, %4145 ], [ 0.000000e+00, %4107 ], [ %4447, %4435 ], [ 0.000000e+00, %4177 ], [ 0.000000e+00, %4232 ], [ 0.000000e+00, %4174 ]
  %4453 = phi i1 [ true, %4145 ], [ false, %4107 ], [ true, %4435 ], [ false, %4177 ], [ false, %4232 ], [ false, %4174 ]
  %4454 = and i32 %244, 3
  %4455 = icmp eq i32 %4454, 1
  %4456 = select i1 %4455, float 1.000000e+00, float 0.000000e+00
  %4457 = fsub fast float %4449, %195
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = select i1 %4453, float %4458, float 1.000000e+00
  %4460 = fmul fast float %4459, %4456
  %4461 = icmp eq i32 %4454, 3
  %4462 = select i1 %4461, float 1.000000e+00, float %4460
  %4463 = call float @dx.op.binary.f32(i32 35, float %4049, float %4462)  ; FMax(a,b)
  %4464 = fcmp fast olt float %4462, 1.000000e+00
  %4465 = fcmp uge float %71, 0.000000e+00
  %4466 = and i1 %4465, %4464
  br i1 %4466, label %4467, label %4477

; <label>:4467                                    ; preds = %4448
  %4468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4469 = extractvalue %dx.types.ResRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.ResRet.f32 %4468, 1
  %4471 = extractvalue %dx.types.ResRet.f32 %4468, 2
  %4472 = fadd fast float %4469, %4463
  %4473 = fcmp ule float %70, 0.000000e+00
  %4474 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4475 = select i1 %4473, float %4474, float 1.000000e+00
  %4476 = fmul fast float %4475, %4471
  br label %4477

; <label>:4477                                    ; preds = %4467, %4448
  %4478 = phi float [ %4472, %4467 ], [ %4463, %4448 ]
  %4479 = phi float [ %4470, %4467 ], [ 0.000000e+00, %4448 ]
  %4480 = phi float [ %4476, %4467 ], [ 0.000000e+00, %4448 ]
  %4481 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4484 = fcmp fast une float %4482, 0.000000e+00
  %4485 = fcmp fast une float %4483, 0.000000e+00
  %4486 = or i1 %4484, %4485
  br i1 %4486, label %4487, label %5046

; <label>:4487                                    ; preds = %4477
  br i1 %4484, label %4488, label %4761

; <label>:4488                                    ; preds = %4487
  %4489 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4490 = fmul fast float %4489, 4.000000e+00
  %4491 = call float @dx.op.unary.f32(i32 21, float %4490)  ; Exp(value)
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = fmul fast float %4493, %58
  %4495 = fmul fast float %4493, %59
  %4496 = fmul fast float %4493, %60
  %4497 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4498 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4499 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4500 = call float @dx.op.unary.f32(i32 23, float %4497)  ; Log(value)
  %4501 = call float @dx.op.unary.f32(i32 23, float %4498)  ; Log(value)
  %4502 = call float @dx.op.unary.f32(i32 23, float %4499)  ; Log(value)
  %4503 = fmul fast float %4500, 4.000000e+00
  %4504 = fmul fast float %4501, 4.000000e+00
  %4505 = fmul fast float %4502, 4.000000e+00
  %4506 = call float @dx.op.unary.f32(i32 21, float %4503)  ; Exp(value)
  %4507 = call float @dx.op.unary.f32(i32 21, float %4504)  ; Exp(value)
  %4508 = call float @dx.op.unary.f32(i32 21, float %4505)  ; Exp(value)
  %4509 = fadd fast float %4507, %4506
  %4510 = fadd fast float %4509, %4508
  %4511 = fdiv fast float 1.000000e+00, %4510
  %4512 = fmul fast float %4511, %4506
  %4513 = fcmp fast ogt float %67, 0.000000e+00
  %4514 = fcmp fast ogt float %68, 0.000000e+00
  %4515 = fcmp fast ogt float %69, 0.000000e+00
  %4516 = fcmp fast olt float %67, 0.000000e+00
  %4517 = fcmp fast olt float %68, 0.000000e+00
  %4518 = fcmp fast olt float %69, 0.000000e+00
  %4519 = zext i1 %4513 to i32
  %4520 = zext i1 %4514 to i32
  %4521 = zext i1 %4515 to i32
  %4522 = zext i1 %4516 to i32
  %4523 = zext i1 %4517 to i32
  %4524 = zext i1 %4518 to i32
  %4525 = sub nsw i32 %4519, %4522
  %4526 = sub nsw i32 %4520, %4523
  %4527 = sub nsw i32 %4521, %4524
  %4528 = call float @dx.op.unary.f32(i32 83, float %4494)  ; DerivCoarseX(value)
  %4529 = call float @dx.op.unary.f32(i32 83, float %4495)  ; DerivCoarseX(value)
  %4530 = call float @dx.op.unary.f32(i32 83, float %4496)  ; DerivCoarseX(value)
  %4531 = call float @dx.op.unary.f32(i32 84, float %4494)  ; DerivCoarseY(value)
  %4532 = call float @dx.op.unary.f32(i32 84, float %4495)  ; DerivCoarseY(value)
  %4533 = call float @dx.op.unary.f32(i32 84, float %4496)  ; DerivCoarseY(value)
  %4534 = fcmp fast ole float %276, %4512
  %4535 = fmul fast float %4511, %4509
  %4536 = fcmp fast ole float %276, %4535
  %4537 = select i1 %4536, float %4496, float %4494
  %4538 = select i1 %4536, float %4494, float %4495
  %4539 = select i1 %4534, float %4495, float %4537
  %4540 = select i1 %4534, float %4496, float %4538
  %4541 = select i1 %4536, float %4530, float %4528
  %4542 = select i1 %4536, float %4528, float %4529
  %4543 = select i1 %4534, float %4529, float %4541
  %4544 = select i1 %4534, float %4530, float %4542
  %4545 = select i1 %4536, float %4533, float %4531
  %4546 = select i1 %4536, float %4531, float %4532
  %4547 = select i1 %4534, float %4532, float %4545
  %4548 = select i1 %4534, float %4533, float %4546
  %4549 = call float @dx.op.unary.f32(i32 27, float %4539)  ; Round_ni(value)
  %4550 = call float @dx.op.unary.f32(i32 27, float %4540)  ; Round_ni(value)
  %4551 = fptosi float %4549 to i32
  %4552 = fptosi float %4550 to i32
  %4553 = xor i32 %4552, %4551
  %4554 = sitofp i32 %4553 to float
  %4555 = fptosi float %4554 to i32
  %4556 = sitofp i32 %4555 to float
  %4557 = fmul fast float %4556, 0x3FE3C6EF40000000
  %4558 = frem fast float %4549, 2.560000e+02
  %4559 = frem fast float %4550, 2.560000e+02
  %4560 = fptoui float %4558 to i32
  %4561 = fptoui float %4559 to i32
  %4562 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4560, i32 %4561, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = fadd fast float %4563, %4557
  %4567 = fadd fast float %4564, %4557
  %4568 = fadd fast float %4565, %4557
  %4569 = call float @dx.op.unary.f32(i32 22, float %4566)  ; Frc(value)
  %4570 = call float @dx.op.unary.f32(i32 22, float %4567)  ; Frc(value)
  %4571 = call float @dx.op.unary.f32(i32 22, float %4568)  ; Frc(value)
  %4572 = fmul fast float %4571, 0x401921FB60000000
  %4573 = call float @dx.op.unary.f32(i32 13, float %4572)  ; Sin(value)
  %4574 = call float @dx.op.unary.f32(i32 12, float %4572)  ; Cos(value)
  %4575 = fsub fast float -0.000000e+00, %4574
  %4576 = fmul fast float %4574, %4539
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4540, float %4576)  ; FMad(a,b,c)
  %4578 = fmul fast float %4573, %4539
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4540, float %4578)  ; FMad(a,b,c)
  %4580 = fadd fast float %4577, %4569
  %4581 = fadd fast float %4579, %4570
  %4582 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4583 = bitcast float %4582 to i32
  %4584 = icmp eq i32 %4583, 0
  br i1 %4584, label %4623, label %4585

; <label>:4585                                    ; preds = %4488
  %4586 = add i32 %4583, 0
  %4587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4587, %dx.types.Handle %103, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4543, float %4544, float undef, float %4547, float %4548, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.f32 %4590, 1
  %4592 = extractvalue %dx.types.CBufRet.f32 %4590, 2
  %4593 = fsub fast float 1.000000e+00, %4482
  %4594 = call float @dx.op.binary.f32(i32 35, float %4593, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4595 = bitcast float %4482 to i32
  %4596 = sitofp i32 %4595 to float
  %4597 = fadd fast float %4596, 0xC1CFBF8940000000
  %4598 = fmul fast float %4592, %4597
  %4599 = fadd fast float %4598, 0x41CFBF8940000000
  %4600 = fptosi float %4599 to i32
  %4601 = bitcast i32 %4600 to float
  %4602 = bitcast float %4594 to i32
  %4603 = sitofp i32 %4602 to float
  %4604 = fadd fast float %4603, 0xC1CFBF8940000000
  %4605 = fmul fast float %4604, %4592
  %4606 = fadd fast float %4605, 0x41CFBF8940000000
  %4607 = fptosi float %4606 to i32
  %4608 = bitcast i32 %4607 to float
  %4609 = fmul fast float %4601, %4591
  %4610 = fmul fast float %4608, %4591
  %4611 = fsub fast float %4594, %4609
  %4612 = fadd fast float %4610, %4594
  %4613 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4615 = fsub fast float %4589, %4613
  %4616 = fsub fast float %4614, %4613
  %4617 = bitcast float %4616 to i32
  %4618 = sub nsw i32 2129859010, %4617
  %4619 = bitcast i32 %4618 to float
  %4620 = fmul fast float %4619, %4615
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fcmp fast olt float %4621, 0x3F70101020000000
  br i1 %4622, label %4761, label %4623

; <label>:4623                                    ; preds = %4585, %4488
  %4624 = phi float [ %4621, %4585 ], [ %4482, %4488 ]
  %4625 = fmul fast float %4624, %4491
  %4626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.i32 %4626, 1
  %4628 = extractvalue %dx.types.CBufRet.i32 %4626, 0
  %4629 = add i32 %4628, 0
  %4630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4630, %dx.types.Handle %102, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4543, float %4544, float undef, float %4547, float %4548, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.ResRet.f32 %4631, 3
  %4636 = and i32 %4627, 255
  %4637 = uitofp i32 %4636 to float
  %4638 = lshr i32 %4627, 8
  %4639 = and i32 %4638, 255
  %4640 = uitofp i32 %4639 to float
  %4641 = fmul fast float %4635, %4637
  %4642 = fadd fast float %4641, %4640
  %4643 = fmul fast float %4642, 0x3F70101000000000
  %4644 = fadd fast float %4643, 0xBFB99999A0000000
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = fmul fast float %4645, 0x3FF1C71C80000000
  %4647 = call float @dx.op.binary.f32(i32 36, float %4643, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4648 = fsub fast float 1.000000e+00, %4646
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %4649, %4632
  %4651 = fmul fast float %4649, %4633
  %4652 = fmul fast float %4649, %4634
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = fmul fast float %4646, %4632
  %4657 = fmul fast float %4646, %4633
  %4658 = fmul fast float %4646, %4634
  %4659 = fadd fast float %4656, %4647
  %4660 = fadd fast float %4657, %4647
  %4661 = fadd fast float %4658, %4647
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.i32 %4665, 3
  %4667 = extractvalue %dx.types.CBufRet.i32 %4665, 2
  %4668 = add i32 %4667, 0
  %4669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4669, %dx.types.Handle %102, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4543, float %4544, float undef, float %4547, float %4548, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4675 = and i32 %4666, 255
  %4676 = uitofp i32 %4675 to float
  %4677 = lshr i32 %4666, 8
  %4678 = and i32 %4677, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = lshr i32 %4666, 16
  %4681 = and i32 %4680, 255
  %4682 = uitofp i32 %4681 to float
  %4683 = fmul fast float %4682, 0x3F70101000000000
  %4684 = fmul fast float %4671, %4676
  %4685 = fadd fast float %4684, %4679
  %4686 = fmul fast float %4685, 0x3F70101000000000
  %4687 = fadd fast float %4672, -5.000000e-01
  %4688 = fadd fast float %4674, -5.000000e-01
  %4689 = fmul fast float %4687, %4683
  %4690 = fmul fast float %4688, %4683
  %4691 = fadd fast float %4689, 5.000000e-01
  %4692 = fadd fast float %4690, 5.000000e-01
  %4693 = fmul fast float %4691, 2.000000e+00
  %4694 = fadd fast float %4693, -1.000000e+00
  %4695 = fmul fast float %4692, 2.000000e+00
  %4696 = fadd fast float %4695, -1.000000e+00
  %4697 = fadd fast float %4694, %4696
  %4698 = fmul fast float %4697, 5.000000e-01
  %4699 = fsub fast float %4694, %4696
  %4700 = fmul fast float %4699, 5.000000e-01
  %4701 = call float @dx.op.unary.f32(i32 6, float %4698)  ; FAbs(value)
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = call float @dx.op.unary.f32(i32 6, float %4700)  ; FAbs(value)
  %4704 = fsub fast float %4702, %4703
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4700, float %4704, float %4698, float %4700, float %4704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = call float @dx.op.unary.f32(i32 25, float %4705)  ; Rsqrt(value)
  %4707 = fmul fast float %4698, %4706
  %4708 = fmul fast float %4700, %4706
  %4709 = select i1 %4536, i32 %4526, i32 %4527
  %4710 = select i1 %4534, i32 %4525, i32 %4709
  %4711 = sitofp i32 %4710 to float
  %4712 = fmul fast float %4704, %4711
  %4713 = fmul fast float %4712, %4706
  %4714 = select i1 %4536, float %4713, float %4708
  %4715 = select i1 %4536, float %4708, float %4713
  %4716 = select i1 %4534, float %4713, float %4707
  %4717 = select i1 %4534, float %4708, float %4714
  %4718 = select i1 %4534, float %4707, float %4715
  %4719 = fsub fast float %4653, %4086
  %4720 = fsub fast float %4654, %4087
  %4721 = fsub fast float %4655, %4088
  %4722 = fmul fast float %4719, %4625
  %4723 = fmul fast float %4720, %4625
  %4724 = fmul fast float %4721, %4625
  %4725 = fadd fast float %4722, %4086
  %4726 = fadd fast float %4723, %4087
  %4727 = fadd fast float %4724, %4088
  %4728 = fsub fast float %4662, %4071
  %4729 = fsub fast float %4663, %4072
  %4730 = fsub fast float %4664, %4073
  %4731 = fmul fast float %4728, %4625
  %4732 = fmul fast float %4729, %4625
  %4733 = fmul fast float %4730, %4625
  %4734 = fadd fast float %4731, %4071
  %4735 = fadd fast float %4732, %4072
  %4736 = fadd fast float %4733, %4073
  %4737 = fadd fast float %4716, %4034
  %4738 = fadd fast float %4717, %4035
  %4739 = fadd fast float %4718, %4036
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4738, float %4739, float %4737, float %4738, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 25, float %4740)  ; Rsqrt(value)
  %4742 = fmul fast float %4737, %4741
  %4743 = fmul fast float %4738, %4741
  %4744 = fmul fast float %4739, %4741
  %4745 = fsub fast float %4742, %4034
  %4746 = fsub fast float %4743, %4035
  %4747 = fsub fast float %4744, %4036
  %4748 = fmul fast float %4745, %4625
  %4749 = fmul fast float %4746, %4625
  %4750 = fmul fast float %4747, %4625
  %4751 = fadd fast float %4748, %4034
  %4752 = fadd fast float %4749, %4035
  %4753 = fadd fast float %4750, %4036
  %4754 = call float @dx.op.binary.f32(i32 36, float %4046, float %4673)  ; FMin(a,b)
  %4755 = fsub fast float %4754, %4046
  %4756 = fmul fast float %4755, %4625
  %4757 = fadd fast float %4756, %4046
  %4758 = fsub fast float %4686, %4074
  %4759 = fmul fast float %4758, %4625
  %4760 = fadd fast float %4759, %4074
  br label %4761

; <label>:4761                                    ; preds = %4623, %4585, %4487
  %4762 = phi float [ %4725, %4623 ], [ %4086, %4585 ], [ %4086, %4487 ]
  %4763 = phi float [ %4726, %4623 ], [ %4087, %4585 ], [ %4087, %4487 ]
  %4764 = phi float [ %4727, %4623 ], [ %4088, %4585 ], [ %4088, %4487 ]
  %4765 = phi float [ %4734, %4623 ], [ %4071, %4585 ], [ %4071, %4487 ]
  %4766 = phi float [ %4735, %4623 ], [ %4072, %4585 ], [ %4072, %4487 ]
  %4767 = phi float [ %4736, %4623 ], [ %4073, %4585 ], [ %4073, %4487 ]
  %4768 = phi float [ %4751, %4623 ], [ %4034, %4585 ], [ %4034, %4487 ]
  %4769 = phi float [ %4752, %4623 ], [ %4035, %4585 ], [ %4035, %4487 ]
  %4770 = phi float [ %4753, %4623 ], [ %4036, %4585 ], [ %4036, %4487 ]
  %4771 = phi float [ %4760, %4623 ], [ %4074, %4585 ], [ %4074, %4487 ]
  %4772 = phi float [ %4757, %4623 ], [ %4046, %4585 ], [ %4046, %4487 ]
  br i1 %4485, label %4773, label %5046

; <label>:4773                                    ; preds = %4761
  %4774 = call float @dx.op.unary.f32(i32 23, float %4772)  ; Log(value)
  %4775 = fmul fast float %4774, 4.000000e+00
  %4776 = call float @dx.op.unary.f32(i32 21, float %4775)  ; Exp(value)
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  %4779 = fmul fast float %4778, %58
  %4780 = fmul fast float %4778, %59
  %4781 = fmul fast float %4778, %60
  %4782 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4783 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4784 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4785 = call float @dx.op.unary.f32(i32 23, float %4782)  ; Log(value)
  %4786 = call float @dx.op.unary.f32(i32 23, float %4783)  ; Log(value)
  %4787 = call float @dx.op.unary.f32(i32 23, float %4784)  ; Log(value)
  %4788 = fmul fast float %4785, 4.000000e+00
  %4789 = fmul fast float %4786, 4.000000e+00
  %4790 = fmul fast float %4787, 4.000000e+00
  %4791 = call float @dx.op.unary.f32(i32 21, float %4788)  ; Exp(value)
  %4792 = call float @dx.op.unary.f32(i32 21, float %4789)  ; Exp(value)
  %4793 = call float @dx.op.unary.f32(i32 21, float %4790)  ; Exp(value)
  %4794 = fadd fast float %4792, %4791
  %4795 = fadd fast float %4794, %4793
  %4796 = fdiv fast float 1.000000e+00, %4795
  %4797 = fmul fast float %4796, %4791
  %4798 = fcmp fast ogt float %67, 0.000000e+00
  %4799 = fcmp fast ogt float %68, 0.000000e+00
  %4800 = fcmp fast ogt float %69, 0.000000e+00
  %4801 = fcmp fast olt float %67, 0.000000e+00
  %4802 = fcmp fast olt float %68, 0.000000e+00
  %4803 = fcmp fast olt float %69, 0.000000e+00
  %4804 = zext i1 %4798 to i32
  %4805 = zext i1 %4799 to i32
  %4806 = zext i1 %4800 to i32
  %4807 = zext i1 %4801 to i32
  %4808 = zext i1 %4802 to i32
  %4809 = zext i1 %4803 to i32
  %4810 = sub nsw i32 %4804, %4807
  %4811 = sub nsw i32 %4805, %4808
  %4812 = sub nsw i32 %4806, %4809
  %4813 = call float @dx.op.unary.f32(i32 83, float %4779)  ; DerivCoarseX(value)
  %4814 = call float @dx.op.unary.f32(i32 83, float %4780)  ; DerivCoarseX(value)
  %4815 = call float @dx.op.unary.f32(i32 83, float %4781)  ; DerivCoarseX(value)
  %4816 = call float @dx.op.unary.f32(i32 84, float %4779)  ; DerivCoarseY(value)
  %4817 = call float @dx.op.unary.f32(i32 84, float %4780)  ; DerivCoarseY(value)
  %4818 = call float @dx.op.unary.f32(i32 84, float %4781)  ; DerivCoarseY(value)
  %4819 = fcmp fast ole float %276, %4797
  %4820 = fmul fast float %4796, %4794
  %4821 = fcmp fast ole float %276, %4820
  %4822 = select i1 %4821, float %4781, float %4779
  %4823 = select i1 %4821, float %4779, float %4780
  %4824 = select i1 %4819, float %4780, float %4822
  %4825 = select i1 %4819, float %4781, float %4823
  %4826 = select i1 %4821, float %4815, float %4813
  %4827 = select i1 %4821, float %4813, float %4814
  %4828 = select i1 %4819, float %4814, float %4826
  %4829 = select i1 %4819, float %4815, float %4827
  %4830 = select i1 %4821, float %4818, float %4816
  %4831 = select i1 %4821, float %4816, float %4817
  %4832 = select i1 %4819, float %4817, float %4830
  %4833 = select i1 %4819, float %4818, float %4831
  %4834 = call float @dx.op.unary.f32(i32 27, float %4824)  ; Round_ni(value)
  %4835 = call float @dx.op.unary.f32(i32 27, float %4825)  ; Round_ni(value)
  %4836 = fptosi float %4834 to i32
  %4837 = fptosi float %4835 to i32
  %4838 = xor i32 %4837, %4836
  %4839 = sitofp i32 %4838 to float
  %4840 = fptosi float %4839 to i32
  %4841 = sitofp i32 %4840 to float
  %4842 = fmul fast float %4841, 0x3FE3C6EF40000000
  %4843 = frem fast float %4834, 2.560000e+02
  %4844 = frem fast float %4835, 2.560000e+02
  %4845 = fptoui float %4843 to i32
  %4846 = fptoui float %4844 to i32
  %4847 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4845, i32 %4846, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = fadd fast float %4848, %4842
  %4852 = fadd fast float %4849, %4842
  %4853 = fadd fast float %4850, %4842
  %4854 = call float @dx.op.unary.f32(i32 22, float %4851)  ; Frc(value)
  %4855 = call float @dx.op.unary.f32(i32 22, float %4852)  ; Frc(value)
  %4856 = call float @dx.op.unary.f32(i32 22, float %4853)  ; Frc(value)
  %4857 = fmul fast float %4856, 0x401921FB60000000
  %4858 = call float @dx.op.unary.f32(i32 13, float %4857)  ; Sin(value)
  %4859 = call float @dx.op.unary.f32(i32 12, float %4857)  ; Cos(value)
  %4860 = fsub fast float -0.000000e+00, %4859
  %4861 = fmul fast float %4859, %4824
  %4862 = call float @dx.op.tertiary.f32(i32 46, float %4858, float %4825, float %4861)  ; FMad(a,b,c)
  %4863 = fmul fast float %4858, %4824
  %4864 = call float @dx.op.tertiary.f32(i32 46, float %4860, float %4825, float %4863)  ; FMad(a,b,c)
  %4865 = fadd fast float %4862, %4854
  %4866 = fadd fast float %4864, %4855
  %4867 = extractvalue %dx.types.CBufRet.f32 %4777, 3
  %4868 = bitcast float %4867 to i32
  %4869 = icmp eq i32 %4868, 0
  br i1 %4869, label %4908, label %4870

; <label>:4870                                    ; preds = %4773
  %4871 = add i32 %4868, 0
  %4872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4873 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4872, %dx.types.Handle %103, float %4865, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float %4828, float %4829, float undef, float %4832, float %4833, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4874 = extractvalue %dx.types.ResRet.f32 %4873, 0
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4878 = fsub fast float 1.000000e+00, %4483
  %4879 = call float @dx.op.binary.f32(i32 35, float %4878, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4880 = bitcast float %4483 to i32
  %4881 = sitofp i32 %4880 to float
  %4882 = fadd fast float %4881, 0xC1CFBF8940000000
  %4883 = fmul fast float %4877, %4882
  %4884 = fadd fast float %4883, 0x41CFBF8940000000
  %4885 = fptosi float %4884 to i32
  %4886 = bitcast i32 %4885 to float
  %4887 = bitcast float %4879 to i32
  %4888 = sitofp i32 %4887 to float
  %4889 = fadd fast float %4888, 0xC1CFBF8940000000
  %4890 = fmul fast float %4889, %4877
  %4891 = fadd fast float %4890, 0x41CFBF8940000000
  %4892 = fptosi float %4891 to i32
  %4893 = bitcast i32 %4892 to float
  %4894 = fmul fast float %4886, %4876
  %4895 = fmul fast float %4893, %4876
  %4896 = fsub fast float %4879, %4894
  %4897 = fadd fast float %4895, %4879
  %4898 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4900 = fsub fast float %4874, %4898
  %4901 = fsub fast float %4899, %4898
  %4902 = bitcast float %4901 to i32
  %4903 = sub nsw i32 2129859010, %4902
  %4904 = bitcast i32 %4903 to float
  %4905 = fmul fast float %4904, %4900
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fcmp fast olt float %4906, 0x3F70101020000000
  br i1 %4907, label %5046, label %4908

; <label>:4908                                    ; preds = %4870, %4773
  %4909 = phi float [ %4906, %4870 ], [ %4483, %4773 ]
  %4910 = fmul fast float %4909, %4776
  %4911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.i32 %4911, 1
  %4913 = extractvalue %dx.types.CBufRet.i32 %4911, 0
  %4914 = add i32 %4913, 0
  %4915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4916 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4915, %dx.types.Handle %102, float %4865, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float %4828, float %4829, float undef, float %4832, float %4833, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.ResRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.ResRet.f32 %4916, 2
  %4920 = extractvalue %dx.types.ResRet.f32 %4916, 3
  %4921 = and i32 %4912, 255
  %4922 = uitofp i32 %4921 to float
  %4923 = lshr i32 %4912, 8
  %4924 = and i32 %4923, 255
  %4925 = uitofp i32 %4924 to float
  %4926 = fmul fast float %4920, %4922
  %4927 = fadd fast float %4926, %4925
  %4928 = fmul fast float %4927, 0x3F70101000000000
  %4929 = fadd fast float %4928, 0xBFB99999A0000000
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, 0x3FF1C71C80000000
  %4932 = call float @dx.op.binary.f32(i32 36, float %4928, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4933 = fsub fast float 1.000000e+00, %4931
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fmul fast float %4934, %4917
  %4936 = fmul fast float %4934, %4918
  %4937 = fmul fast float %4934, %4919
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4941 = fmul fast float %4931, %4917
  %4942 = fmul fast float %4931, %4918
  %4943 = fmul fast float %4931, %4919
  %4944 = fadd fast float %4941, %4932
  %4945 = fadd fast float %4942, %4932
  %4946 = fadd fast float %4943, %4932
  %4947 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.i32 %4950, 3
  %4952 = extractvalue %dx.types.CBufRet.i32 %4950, 2
  %4953 = add i32 %4952, 0
  %4954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4955 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4954, %dx.types.Handle %102, float %4865, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float %4828, float %4829, float undef, float %4832, float %4833, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.ResRet.f32 %4955, 1
  %4958 = extractvalue %dx.types.ResRet.f32 %4955, 2
  %4959 = extractvalue %dx.types.ResRet.f32 %4955, 3
  %4960 = and i32 %4951, 255
  %4961 = uitofp i32 %4960 to float
  %4962 = lshr i32 %4951, 8
  %4963 = and i32 %4962, 255
  %4964 = uitofp i32 %4963 to float
  %4965 = lshr i32 %4951, 16
  %4966 = and i32 %4965, 255
  %4967 = uitofp i32 %4966 to float
  %4968 = fmul fast float %4967, 0x3F70101000000000
  %4969 = fmul fast float %4956, %4961
  %4970 = fadd fast float %4969, %4964
  %4971 = fmul fast float %4970, 0x3F70101000000000
  %4972 = fadd fast float %4957, -5.000000e-01
  %4973 = fadd fast float %4959, -5.000000e-01
  %4974 = fmul fast float %4972, %4968
  %4975 = fmul fast float %4973, %4968
  %4976 = fadd fast float %4974, 5.000000e-01
  %4977 = fadd fast float %4975, 5.000000e-01
  %4978 = fmul fast float %4976, 2.000000e+00
  %4979 = fadd fast float %4978, -1.000000e+00
  %4980 = fmul fast float %4977, 2.000000e+00
  %4981 = fadd fast float %4980, -1.000000e+00
  %4982 = fadd fast float %4979, %4981
  %4983 = fmul fast float %4982, 5.000000e-01
  %4984 = fsub fast float %4979, %4981
  %4985 = fmul fast float %4984, 5.000000e-01
  %4986 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = call float @dx.op.unary.f32(i32 6, float %4985)  ; FAbs(value)
  %4989 = fsub fast float %4987, %4988
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4983, float %4985, float %4989, float %4983, float %4985, float %4989)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call float @dx.op.unary.f32(i32 25, float %4990)  ; Rsqrt(value)
  %4992 = fmul fast float %4983, %4991
  %4993 = fmul fast float %4985, %4991
  %4994 = select i1 %4821, i32 %4811, i32 %4812
  %4995 = select i1 %4819, i32 %4810, i32 %4994
  %4996 = sitofp i32 %4995 to float
  %4997 = fmul fast float %4989, %4996
  %4998 = fmul fast float %4997, %4991
  %4999 = select i1 %4821, float %4998, float %4993
  %5000 = select i1 %4821, float %4993, float %4998
  %5001 = select i1 %4819, float %4998, float %4992
  %5002 = select i1 %4819, float %4993, float %4999
  %5003 = select i1 %4819, float %4992, float %5000
  %5004 = fsub fast float %4938, %4762
  %5005 = fsub fast float %4939, %4763
  %5006 = fsub fast float %4940, %4764
  %5007 = fmul fast float %5004, %4910
  %5008 = fmul fast float %5005, %4910
  %5009 = fmul fast float %5006, %4910
  %5010 = fadd fast float %5007, %4762
  %5011 = fadd fast float %5008, %4763
  %5012 = fadd fast float %5009, %4764
  %5013 = fsub fast float %4947, %4765
  %5014 = fsub fast float %4948, %4766
  %5015 = fsub fast float %4949, %4767
  %5016 = fmul fast float %5013, %4910
  %5017 = fmul fast float %5014, %4910
  %5018 = fmul fast float %5015, %4910
  %5019 = fadd fast float %5016, %4765
  %5020 = fadd fast float %5017, %4766
  %5021 = fadd fast float %5018, %4767
  %5022 = fadd fast float %5001, %4768
  %5023 = fadd fast float %5002, %4769
  %5024 = fadd fast float %5003, %4770
  %5025 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %5022, float %5023, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.unary.f32(i32 25, float %5025)  ; Rsqrt(value)
  %5027 = fmul fast float %5022, %5026
  %5028 = fmul fast float %5023, %5026
  %5029 = fmul fast float %5024, %5026
  %5030 = fsub fast float %5027, %4768
  %5031 = fsub fast float %5028, %4769
  %5032 = fsub fast float %5029, %4770
  %5033 = fmul fast float %5030, %4910
  %5034 = fmul fast float %5031, %4910
  %5035 = fmul fast float %5032, %4910
  %5036 = fadd fast float %5033, %4768
  %5037 = fadd fast float %5034, %4769
  %5038 = fadd fast float %5035, %4770
  %5039 = call float @dx.op.binary.f32(i32 36, float %4772, float %4958)  ; FMin(a,b)
  %5040 = fsub fast float %5039, %4772
  %5041 = fmul fast float %5040, %4910
  %5042 = fadd fast float %5041, %4772
  %5043 = fsub fast float %4971, %4771
  %5044 = fmul fast float %5043, %4910
  %5045 = fadd fast float %5044, %4771
  br label %5046

; <label>:5046                                    ; preds = %4908, %4870, %4761, %4477
  %5047 = phi float [ %5010, %4908 ], [ %4762, %4870 ], [ %4762, %4761 ], [ %4086, %4477 ]
  %5048 = phi float [ %5011, %4908 ], [ %4763, %4870 ], [ %4763, %4761 ], [ %4087, %4477 ]
  %5049 = phi float [ %5012, %4908 ], [ %4764, %4870 ], [ %4764, %4761 ], [ %4088, %4477 ]
  %5050 = phi float [ %5019, %4908 ], [ %4765, %4870 ], [ %4765, %4761 ], [ %4071, %4477 ]
  %5051 = phi float [ %5020, %4908 ], [ %4766, %4870 ], [ %4766, %4761 ], [ %4072, %4477 ]
  %5052 = phi float [ %5021, %4908 ], [ %4767, %4870 ], [ %4767, %4761 ], [ %4073, %4477 ]
  %5053 = phi float [ %5036, %4908 ], [ %4768, %4870 ], [ %4768, %4761 ], [ %4034, %4477 ]
  %5054 = phi float [ %5037, %4908 ], [ %4769, %4870 ], [ %4769, %4761 ], [ %4035, %4477 ]
  %5055 = phi float [ %5038, %4908 ], [ %4770, %4870 ], [ %4770, %4761 ], [ %4036, %4477 ]
  %5056 = phi float [ %5045, %4908 ], [ %4771, %4870 ], [ %4771, %4761 ], [ %4074, %4477 ]
  %5057 = phi float [ %5042, %4908 ], [ %4772, %4870 ], [ %4772, %4761 ], [ %4046, %4477 ]
  %5058 = fcmp fast une float %4481, 0.000000e+00
  %5059 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.unary.f32(i32 25, float %5059)  ; Rsqrt(value)
  br i1 %5058, label %5068, label %5061

; <label>:5061                                    ; preds = %5046
  %5062 = fmul fast float %5060, %193
  %5063 = fmul fast float %5060, %194
  %5064 = fmul fast float %5060, %195
  %5065 = fsub fast float -0.000000e+00, %5062
  %5066 = fsub fast float -0.000000e+00, %5063
  %5067 = fsub fast float -0.000000e+00, %5064
  br label %5235

; <label>:5068                                    ; preds = %5046
  %5069 = fmul fast float %193, %5060
  %5070 = fsub fast float -0.000000e+00, %5069
  %5071 = fmul fast float %194, %5060
  %5072 = fsub fast float -0.000000e+00, %5071
  %5073 = fmul fast float %195, %5060
  %5074 = fsub fast float -0.000000e+00, %5073
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5072, float %5074, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = fmul fast float %4481, 2.500000e+00
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fmul fast float %4481, 0x4013FFFFE0000000
  %5079 = fadd fast float %5078, 0xBFFFFFFFE0000000
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %4481, 0x4004000020000000
  %5082 = fadd fast float %5081, 0xBFF8000040000000
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %4053, 1.000000e+01
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, 2.000000e+00
  %5087 = fsub fast float 3.000000e+00, %5086
  %5088 = fmul fast float %5085, %5085
  %5089 = fmul fast float %5088, %5087
  %5090 = fsub fast float 1.000000e+00, %5089
  %5091 = fsub fast float 0x3FE3333340000000, %5056
  %5092 = fmul fast float %5091, 0x400AAAAAA0000000
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5090, %5093
  %5095 = fmul fast float %5047, 0x3FEA2B8620000000
  %5096 = fmul fast float %5048, 0x3FEA2B8620000000
  %5097 = fmul fast float %5049, 0x3FEA2B8620000000
  %5098 = fadd fast float %5095, 0x3FC81DFBA0000000
  %5099 = fmul fast float %5098, %5047
  %5100 = fadd fast float %5099, 0x3F910E6020000000
  %5101 = fadd fast float %5096, 0x3FC81DFBA0000000
  %5102 = fmul fast float %5101, %5048
  %5103 = fadd fast float %5102, 0x3F910E6020000000
  %5104 = fadd fast float %5097, 0x3FC81DFBA0000000
  %5105 = fmul fast float %5104, %5049
  %5106 = fadd fast float %5105, 0x3F910E6020000000
  %5107 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = fsub fast float %5107, %5047
  %5111 = fsub fast float %5108, %5048
  %5112 = fsub fast float %5109, %5049
  %5113 = fmul fast float %5110, %5077
  %5114 = fmul fast float %5113, %5094
  %5115 = fmul fast float %5111, %5077
  %5116 = fmul fast float %5115, %5094
  %5117 = fmul fast float %5112, %5077
  %5118 = fmul fast float %5117, %5094
  %5119 = fadd fast float %5114, %5047
  %5120 = fadd fast float %5116, %5048
  %5121 = fadd fast float %5118, %5049
  %5122 = fmul fast float %5057, %5057
  %5123 = fmul fast float %5122, %5122
  %5124 = fadd fast float %5080, 1.000000e+00
  %5125 = fsub fast float %5124, %5094
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = fsub fast float 1.000000e+00, %5123
  %5130 = call float @dx.op.binary.f32(i32 36, float %5126, float %5129)  ; FMin(a,b)
  %5131 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5132 = call float @dx.op.binary.f32(i32 35, float %5130, float %5131)  ; FMax(a,b)
  %5133 = fadd fast float %5128, 0xBFE4CCCCC0000000
  %5134 = fmul fast float %5133, 0x4006DB6DA0000000
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5135, 2.000000e+00
  %5137 = fsub fast float 3.000000e+00, %5136
  %5138 = bitcast float %5050 to i32
  %5139 = ashr i32 %5138, 1
  %5140 = add nsw i32 %5139, 532487669
  %5141 = bitcast i32 %5140 to float
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = fmul fast float %5145, 2.000000e+00
  %5147 = bitcast float %5051 to i32
  %5148 = ashr i32 %5147, 1
  %5149 = add nsw i32 %5148, 532487669
  %5150 = bitcast i32 %5149 to float
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = bitcast float %5151 to i32
  %5153 = sub nsw i32 2129859010, %5152
  %5154 = bitcast i32 %5153 to float
  %5155 = fmul fast float %5154, 2.000000e+00
  %5156 = bitcast float %5052 to i32
  %5157 = ashr i32 %5156, 1
  %5158 = add nsw i32 %5157, 532487669
  %5159 = bitcast i32 %5158 to float
  %5160 = fsub fast float 1.000000e+00, %5159
  %5161 = bitcast float %5160 to i32
  %5162 = sub nsw i32 2129859010, %5161
  %5163 = bitcast i32 %5162 to float
  %5164 = fmul fast float %5163, 2.000000e+00
  %5165 = fsub fast float 0x4002A9FBE0000000, %5146
  %5166 = fadd fast float %5146, 0x3FD54FDF00000000
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %5170, %5170
  %5172 = fsub fast float 0x4002A9FBE0000000, %5155
  %5173 = fadd fast float %5155, 0x3FD54FDF00000000
  %5174 = bitcast float %5173 to i32
  %5175 = sub nsw i32 2129859010, %5174
  %5176 = bitcast i32 %5175 to float
  %5177 = fmul fast float %5176, %5172
  %5178 = fmul fast float %5177, %5177
  %5179 = fsub fast float 0x4002A9FBE0000000, %5164
  %5180 = fadd fast float %5164, 0x3FD54FDF00000000
  %5181 = bitcast float %5180 to i32
  %5182 = sub nsw i32 2129859010, %5181
  %5183 = bitcast i32 %5182 to float
  %5184 = fmul fast float %5183, %5179
  %5185 = fmul fast float %5184, %5184
  %5186 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5171)  ; FMax(a,b)
  %5187 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5178)  ; FMax(a,b)
  %5188 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5185)  ; FMax(a,b)
  %5189 = fsub fast float 1.000000e+00, %5075
  %5190 = fadd fast float %5189, %5090
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fsub fast float 1.000000e+00, %4462
  %5193 = fmul fast float %5132, %5192
  %5194 = fmul fast float %5135, %5135
  %5195 = fmul fast float %5194, %5193
  %5196 = fmul fast float %5195, %5137
  %5197 = fmul fast float %5192, 0xBFE99999A0000000
  %5198 = fmul fast float %5197, %5077
  %5199 = fmul fast float %5198, %5094
  %5200 = fadd fast float %5199, 1.000000e+00
  %5201 = fadd fast float %5056, -1.000000e+00
  %5202 = fmul fast float %5200, %5201
  %5203 = fadd fast float %5202, 1.000000e+00
  %5204 = fsub fast float %5186, %5050
  %5205 = fsub fast float %5187, %5051
  %5206 = fsub fast float %5188, %5052
  %5207 = fmul fast float %5196, %5204
  %5208 = fmul fast float %5196, %5205
  %5209 = fmul fast float %5196, %5206
  %5210 = fadd fast float %5207, %5050
  %5211 = fadd fast float %5208, %5051
  %5212 = fadd fast float %5209, %5052
  %5213 = fsub fast float %113, %5053
  %5214 = fsub fast float %114, %5054
  %5215 = fsub fast float %115, %5055
  %5216 = fmul fast float %5196, %5213
  %5217 = fmul fast float %5196, %5214
  %5218 = fmul fast float %5196, %5215
  %5219 = fadd fast float %5216, %5053
  %5220 = fadd fast float %5217, %5054
  %5221 = fadd fast float %5218, %5055
  %5222 = fmul fast float %5196, %5191
  %5223 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5224 = fsub fast float 1.000000e+00, %5223
  %5225 = fmul fast float %5222, %5224
  %5226 = fadd fast float %5225, %5223
  %5227 = fsub fast float 1.000000e+00, %5057
  %5228 = fmul fast float %5196, %5227
  %5229 = fadd fast float %5228, %5057
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5219, float %5220, float %5221, float %5219, float %5220, float %5221)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = call float @dx.op.unary.f32(i32 25, float %5230)  ; Rsqrt(value)
  %5232 = fmul fast float %5219, %5231
  %5233 = fmul fast float %5220, %5231
  %5234 = fmul fast float %5221, %5231
  br label %5235

; <label>:5235                                    ; preds = %5068, %5061
  %5236 = phi float [ %5067, %5061 ], [ %5074, %5068 ]
  %5237 = phi float [ %5066, %5061 ], [ %5072, %5068 ]
  %5238 = phi float [ %5065, %5061 ], [ %5070, %5068 ]
  %5239 = phi float [ %5064, %5061 ], [ %5073, %5068 ]
  %5240 = phi float [ %5063, %5061 ], [ %5071, %5068 ]
  %5241 = phi float [ %5062, %5061 ], [ %5069, %5068 ]
  %5242 = phi float [ %5047, %5061 ], [ %5119, %5068 ]
  %5243 = phi float [ %5048, %5061 ], [ %5120, %5068 ]
  %5244 = phi float [ %5049, %5061 ], [ %5121, %5068 ]
  %5245 = phi float [ %5050, %5061 ], [ %5210, %5068 ]
  %5246 = phi float [ %5051, %5061 ], [ %5211, %5068 ]
  %5247 = phi float [ %5052, %5061 ], [ %5212, %5068 ]
  %5248 = phi float [ %5053, %5061 ], [ %5232, %5068 ]
  %5249 = phi float [ %5054, %5061 ], [ %5233, %5068 ]
  %5250 = phi float [ %5055, %5061 ], [ %5234, %5068 ]
  %5251 = phi float [ %5056, %5061 ], [ %5226, %5068 ]
  %5252 = phi float [ %5057, %5061 ], [ %5229, %5068 ]
  %5253 = fsub fast float -0.000000e+00, %195
  %5254 = select i1 %265, float 0.000000e+00, float %5247
  %5255 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %5238, float %5237, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5241, float %5240, float %5239, float %5248, float %5249, float %5250)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = fmul fast float %5257, 2.000000e+00
  %5259 = fmul fast float %5258, %5248
  %5260 = fmul fast float %5258, %5249
  %5261 = fmul fast float %5258, %5250
  %5262 = fsub fast float %5241, %5259
  %5263 = fsub fast float %5240, %5260
  %5264 = fsub fast float %5239, %5261
  %5265 = call float @dx.op.binary.f32(i32 36, float %5252, float 1.000000e+00)  ; FMin(a,b)
  %5266 = fsub fast float 1.000000e+00, %5252
  %5267 = bitcast float %5266 to i32
  %5268 = sub nsw i32 2129859010, %5267
  %5269 = bitcast i32 %5268 to float
  %5270 = fsub fast float 1.000000e+00, %77
  %5271 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5271, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5273 = fdiv fast float %5270, %5272
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5275, 5.000000e-01
  %5277 = fadd fast float %5276, 5.000000e-01
  %5278 = fmul fast float %5277, %77
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %5280, %5273
  %5282 = fadd fast float %5278, %5281
  %5283 = fsub fast float 5.000000e-01, %5276
  %5284 = fmul fast float %5283, %5242
  %5285 = fmul fast float %5283, %5243
  %5286 = fmul fast float %5283, %5244
  %5287 = fadd fast float %5282, %5284
  %5288 = fadd fast float %5282, %5285
  %5289 = fadd fast float %5282, %5286
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fmul fast float %5291, 5.000000e-01
  %5293 = fadd fast float %5292, 5.000000e-01
  %5294 = fmul fast float %5293, %77
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fmul fast float %5296, %5273
  %5298 = fadd fast float %5294, %5297
  %5299 = fsub fast float 5.000000e-01, %5292
  %5300 = fmul fast float %5299, %5242
  %5301 = fmul fast float %5299, %5243
  %5302 = fmul fast float %5299, %5244
  %5303 = fadd fast float %5298, %5300
  %5304 = fadd fast float %5298, %5301
  %5305 = fadd fast float %5298, %5302
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = call float @dx.op.binary.f32(i32 36, float %5242, float %5307)  ; FMin(a,b)
  %5309 = fsub fast float 1.000000e+00, %5265
  %5310 = fmul fast float %5308, %5309
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = bitcast float %5311 to i32
  %5313 = sub nsw i32 2129859010, %5312
  %5314 = bitcast i32 %5313 to float
  %5315 = call float @dx.op.binary.f32(i32 36, float %5243, float %5307)  ; FMin(a,b)
  %5316 = fmul fast float %5315, %5309
  %5317 = fsub fast float 1.000000e+00, %5316
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = call float @dx.op.binary.f32(i32 36, float %5244, float %5307)  ; FMin(a,b)
  %5322 = fmul fast float %5321, %5309
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5265, %78
  %5328 = fmul fast float %5327, %5287
  %5329 = fmul fast float %5328, %5314
  %5330 = fmul fast float %5265, %79
  %5331 = fmul fast float %5330, %5288
  %5332 = fmul fast float %5331, %5320
  %5333 = fmul fast float %5265, %80
  %5334 = fmul fast float %5333, %5289
  %5335 = fmul fast float %5334, %5326
  %5336 = call float @dx.op.binary.f32(i32 36, float %5245, float %5307)  ; FMin(a,b)
  %5337 = fmul fast float %5336, %5309
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = call float @dx.op.binary.f32(i32 36, float %5246, float %5307)  ; FMin(a,b)
  %5343 = fmul fast float %5342, %5309
  %5344 = fsub fast float 1.000000e+00, %5343
  %5345 = bitcast float %5344 to i32
  %5346 = sub nsw i32 2129859010, %5345
  %5347 = bitcast i32 %5346 to float
  %5348 = call float @dx.op.binary.f32(i32 36, float %5254, float %5307)  ; FMin(a,b)
  %5349 = fmul fast float %5348, %5309
  %5350 = fsub fast float 1.000000e+00, %5349
  %5351 = bitcast float %5350 to i32
  %5352 = sub nsw i32 2129859010, %5351
  %5353 = bitcast i32 %5352 to float
  %5354 = fmul fast float %5327, %5303
  %5355 = fmul fast float %5354, %5341
  %5356 = fmul fast float %5330, %5304
  %5357 = fmul fast float %5356, %5347
  %5358 = fmul fast float %5333, %5305
  %5359 = fmul fast float %5358, %5353
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5332, float %5335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = select i1 %265, float 0.000000e+00, float %5329
  %5362 = select i1 %265, float %5360, float %5332
  %5363 = select i1 %265, float 0.000000e+00, float %5335
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5355, float %5357, float %5359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = select i1 %265, float 0.000000e+00, float %5355
  %5366 = select i1 %265, float %5364, float %5357
  %5367 = select i1 %265, float 0.000000e+00, float %5359
  %5368 = fmul fast float %5256, 9.843750e-01
  %5369 = fmul fast float %5251, 9.843750e-01
  %5370 = fadd fast float %5368, 7.812500e-03
  %5371 = fadd fast float %5369, 7.812500e-03
  %5372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5370, float %5371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5373 = extractvalue %dx.types.ResRet.f32 %5372, 2
  %5374 = extractvalue %dx.types.ResRet.f32 %5372, 3
  %5375 = fmul fast float %5373, %5245
  %5376 = fmul fast float %5373, %5246
  %5377 = fmul fast float %5373, %5254
  %5378 = fadd fast float %5375, %5374
  %5379 = fadd fast float %5376, %5374
  %5380 = fadd fast float %5377, %5374
  %5381 = fcmp fast ogt float %4047, 0.000000e+00
  br i1 %5381, label %5382, label %5408

; <label>:5382                                    ; preds = %5235
  %5383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4047, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = fadd fast float %5384, -5.000000e-01
  %5388 = fadd fast float %5385, -5.000000e-01
  %5389 = fadd fast float %5386, -5.000000e-01
  %5390 = fsub fast float 1.000000e+00, %5245
  %5391 = fsub fast float 1.000000e+00, %5246
  %5392 = fsub fast float 1.000000e+00, %5254
  %5393 = fmul fast float %5245, 4.000000e+00
  %5394 = fmul fast float %5393, %5390
  %5395 = fmul fast float %5394, %5387
  %5396 = fmul fast float %5246, 4.000000e+00
  %5397 = fmul fast float %5396, %5391
  %5398 = fmul fast float %5397, %5388
  %5399 = fmul fast float %5254, 4.000000e+00
  %5400 = fmul fast float %5399, %5392
  %5401 = fmul fast float %5400, %5389
  %5402 = fadd fast float %5395, %5378
  %5403 = fadd fast float %5398, %5379
  %5404 = fadd fast float %5401, %5380
  %5405 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5406 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5407 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  br label %5408

; <label>:5408                                    ; preds = %5382, %5235
  %5409 = phi float [ %5405, %5382 ], [ %5378, %5235 ]
  %5410 = phi float [ %5406, %5382 ], [ %5379, %5235 ]
  %5411 = phi float [ %5407, %5382 ], [ %5380, %5235 ]
  %5412 = call float @dx.op.binary.f32(i32 35, float %5410, float %5411)  ; FMax(a,b)
  %5413 = call float @dx.op.binary.f32(i32 35, float %5409, float %5412)  ; FMax(a,b)
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5414, %5361
  %5416 = fmul fast float %5414, %5362
  %5417 = fmul fast float %5414, %5363
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5243, float %5244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = fcmp fast ogt float %5418, 0x3E7FF19E20000000
  %5420 = fdiv fast float 1.000000e+00, %5418
  %5421 = select i1 %5419, float %5420, float 0.000000e+00
  %5422 = fmul fast float %5421, %5242
  %5423 = fmul fast float %5421, %5243
  %5424 = fmul fast float %5421, %5244
  %5425 = fadd fast float %5422, -1.000000e+00
  %5426 = fadd fast float %5423, -1.000000e+00
  %5427 = fadd fast float %5424, -1.000000e+00
  %5428 = fmul fast float %5425, 5.000000e-01
  %5429 = fmul fast float %5426, 5.000000e-01
  %5430 = fmul fast float %5427, 5.000000e-01
  %5431 = fadd fast float %5428, 1.000000e+00
  %5432 = fadd fast float %5429, 1.000000e+00
  %5433 = fadd fast float %5430, 1.000000e+00
  %5434 = fmul fast float %5409, %5365
  %5435 = fmul fast float %5410, %5366
  %5436 = fmul fast float %5411, %5367
  %5437 = fsub fast float 1.000000e+00, %5256
  %5438 = bitcast float %5437 to i32
  %5439 = sitofp i32 %5438 to float
  %5440 = fmul fast float %5439, 5.000000e+00
  %5441 = fadd fast float %5440, 0xC1EFBF8940000000
  %5442 = fptosi float %5441 to i32
  %5443 = bitcast i32 %5442 to float
  %5444 = fmul fast float %5443, %4048
  %5445 = fmul fast float %5361, %5444
  %5446 = fmul fast float %5445, %5414
  %5447 = fmul fast float %5446, %5431
  %5448 = fmul fast float %5362, %5444
  %5449 = fmul fast float %5448, %5414
  %5450 = fmul fast float %5449, %5432
  %5451 = fmul fast float %5363, %5444
  %5452 = fmul fast float %5451, %5414
  %5453 = fmul fast float %5452, %5433
  %5454 = fmul fast float %5415, %4044
  %5455 = fmul fast float %5416, %4044
  %5456 = fmul fast float %5417, %4044
  %5457 = fadd fast float %5434, %4037
  %5458 = fadd fast float %5457, %5447
  %5459 = fmul fast float %5458, %4044
  %5460 = fadd fast float %5435, %4038
  %5461 = fadd fast float %5460, %5450
  %5462 = fmul fast float %5461, %4044
  %5463 = fadd fast float %5436, %4039
  %5464 = fadd fast float %5463, %5453
  %5465 = fmul fast float %5464, %4044
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 3
  %5468 = fcmp fast oeq float %5467, 0.000000e+00
  br i1 %5468, label %6553, label %5469

; <label>:5469                                    ; preds = %5408
  %5470 = extractvalue %dx.types.CBufRet.f32 %5466, 0
  %5471 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5472 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5476 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.CBufRet.f32 %5477, 1
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = select i1 %265, float %5478, float %5474
  %5482 = select i1 %265, float %5480, float %5475
  %5483 = select i1 %265, float %5479, float %5476
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5486 = fmul fast float %5485, %113
  %5487 = fmul fast float %5485, %114
  %5488 = fmul fast float %5485, %115
  %5489 = fadd fast float %5486, %193
  %5490 = fadd fast float %5487, %194
  %5491 = fadd fast float %5488, %195
  %5492 = fcmp fast olt float %5467, 0.000000e+00
  br i1 %5492, label %6132, label %5493

; <label>:5493                                    ; preds = %5469
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5496 = extractvalue %dx.types.CBufRet.f32 %5494, 1
  %5497 = extractvalue %dx.types.CBufRet.f32 %5494, 2
  %5498 = extractvalue %dx.types.CBufRet.f32 %5494, 3
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.CBufRet.f32 %5499, 2
  %5503 = extractvalue %dx.types.CBufRet.f32 %5499, 3
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5508 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5509 = fmul fast float %5495, %5489
  %5510 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5496, float %5509)  ; FMad(a,b,c)
  %5511 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %5497, float %5510)  ; FMad(a,b,c)
  %5512 = fadd fast float %5511, %5498
  %5513 = fmul fast float %5500, %5489
  %5514 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5501, float %5513)  ; FMad(a,b,c)
  %5515 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %5502, float %5514)  ; FMad(a,b,c)
  %5516 = fadd fast float %5515, %5503
  %5517 = fmul fast float %5505, %5489
  %5518 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5506, float %5517)  ; FMad(a,b,c)
  %5519 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %5507, float %5518)  ; FMad(a,b,c)
  %5520 = fadd fast float %5519, %5508
  %5521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5521, 0
  %5523 = fcmp fast une float %5522, 0.000000e+00
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.CBufRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.CBufRet.f32 %5524, 3
  %5528 = fmul fast float %5527, %5512
  %5529 = fmul fast float %5527, %5516
  %5530 = fadd fast float %5528, %5525
  %5531 = fadd fast float %5529, %5526
  %5532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.f32 %5532, 0
  %5534 = extractvalue %dx.types.CBufRet.f32 %5532, 1
  %5535 = extractvalue %dx.types.CBufRet.f32 %5532, 3
  %5536 = fmul fast float %5535, %5512
  %5537 = fmul fast float %5535, %5516
  %5538 = fadd fast float %5536, %5533
  %5539 = fadd fast float %5537, %5534
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 1
  %5542 = fsub fast float %5541, %5520
  %5543 = extractvalue %dx.types.CBufRet.f32 %5540, 2
  %5544 = fmul fast float %5542, %5543
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  br i1 %5523, label %5607, label %5547

; <label>:5547                                    ; preds = %5493
  %5548 = extractvalue %dx.types.CBufRet.f32 %5532, 2
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5551 = fadd fast float %5550, %5548
  %5552 = fcmp fast ogt float %5551, 0.000000e+00
  br i1 %5552, label %5553, label %5577

; <label>:5553                                    ; preds = %5547
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.CBufRet.f32 %5554, 1
  %5557 = fsub fast float %5538, %5555
  %5558 = fsub fast float %5539, %5556
  %5559 = fcmp fast olt float %5557, 0.000000e+00
  %5560 = fcmp fast olt float %5558, 0.000000e+00
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5561, 2
  %5565 = extractvalue %dx.types.CBufRet.f32 %5561, 3
  %5566 = select i1 %5559, float %5562, float %5564
  %5567 = select i1 %5560, float %5563, float %5565
  %5568 = fmul fast float %5566, %5557
  %5569 = fmul fast float %5567, %5558
  %5570 = call float @dx.op.unary.f32(i32 6, float %5568)  ; FAbs(value)
  %5571 = call float @dx.op.unary.f32(i32 6, float %5569)  ; FAbs(value)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5573 = call float @dx.op.binary.f32(i32 35, float %5570, float %5571)  ; FMax(a,b)
  %5574 = fsub fast float %5572, %5573
  %5575 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5576 = fmul fast float %5575, %5546
  br label %5577

; <label>:5577                                    ; preds = %5553, %5547
  %5578 = phi float [ %5576, %5553 ], [ 0.000000e+00, %5547 ]
  %5579 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5580 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5581 = fadd fast float %5580, %5579
  %5582 = fcmp fast ogt float %5581, 0.000000e+00
  br i1 %5582, label %5583, label %5607

; <label>:5583                                    ; preds = %5577
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = extractvalue %dx.types.CBufRet.f32 %5584, 1
  %5587 = fsub fast float %5530, %5585
  %5588 = fsub fast float %5531, %5586
  %5589 = fcmp fast olt float %5587, 0.000000e+00
  %5590 = fcmp fast olt float %5588, 0.000000e+00
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.CBufRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.CBufRet.f32 %5591, 2
  %5595 = extractvalue %dx.types.CBufRet.f32 %5591, 3
  %5596 = select i1 %5589, float %5592, float %5594
  %5597 = select i1 %5590, float %5593, float %5595
  %5598 = fmul fast float %5596, %5587
  %5599 = fmul fast float %5597, %5588
  %5600 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5601 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5603 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5604 = fsub fast float %5602, %5603
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5605, %5546
  br label %5607

; <label>:5607                                    ; preds = %5583, %5577, %5493
  %5608 = phi float [ 0.000000e+00, %5493 ], [ %5606, %5583 ], [ 0.000000e+00, %5577 ]
  %5609 = phi float [ 0.000000e+00, %5493 ], [ %5578, %5583 ], [ %5578, %5577 ]
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.CBufRet.f32 %5613, 1
  %5616 = fsub fast float %5512, %5614
  %5617 = fsub fast float %5516, %5615
  %5618 = fcmp fast olt float %5616, 0.000000e+00
  %5619 = fcmp fast olt float %5617, 0.000000e+00
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.CBufRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5624 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5625 = select i1 %5618, float %5621, float %5623
  %5626 = select i1 %5619, float %5622, float %5624
  %5627 = fmul fast float %5625, %5616
  %5628 = fmul fast float %5626, %5617
  %5629 = call float @dx.op.unary.f32(i32 6, float %5627)  ; FAbs(value)
  %5630 = call float @dx.op.unary.f32(i32 6, float %5628)  ; FAbs(value)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5632 = call float @dx.op.binary.f32(i32 35, float %5629, float %5630)  ; FMax(a,b)
  %5633 = fsub fast float %5631, %5632
  %5634 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5635 = call float @dx.op.binary.f32(i32 36, float %5634, float %5612)  ; FMin(a,b)
  %5636 = fmul fast float %5635, %5546
  %5637 = fsub fast float %5608, %5636
  %5638 = fsub fast float %5609, %5608
  %5639 = fsub fast float %5638, %5636
  %5640 = call float @dx.op.binary.f32(i32 35, float %5608, float %5609)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5636, float %5640)  ; FMax(a,b)
  %5642 = fcmp fast olt float %5641, 1.000000e+00
  br i1 %5642, label %5643, label %6041, !dx.controlflow.hints !96

; <label>:5643                                    ; preds = %5607
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = fcmp fast une float %5645, 0.000000e+00
  br i1 %5646, label %5647, label %6041, !dx.controlflow.hints !97

; <label>:5647                                    ; preds = %5643
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.CBufRet.f32 %5648, 1
  %5651 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5652 = extractvalue %dx.types.CBufRet.f32 %5648, 3
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5657 = extractvalue %dx.types.CBufRet.f32 %5653, 3
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = fmul fast float %5649, %5489
  %5664 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5650, float %5663)  ; FMad(a,b,c)
  %5665 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %5651, float %5664)  ; FMad(a,b,c)
  %5666 = fadd fast float %5665, %5652
  %5667 = fmul fast float %5654, %5489
  %5668 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5655, float %5667)  ; FMad(a,b,c)
  %5669 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %5656, float %5668)  ; FMad(a,b,c)
  %5670 = fadd fast float %5669, %5657
  %5671 = fmul fast float %5659, %5489
  %5672 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5660, float %5671)  ; FMad(a,b,c)
  %5673 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %5661, float %5672)  ; FMad(a,b,c)
  %5674 = fadd fast float %5673, %5662
  %5675 = fcmp fast oge float %5666, 1.000000e+00
  %5676 = fcmp fast oge float %5670, 1.000000e+00
  %5677 = or i1 %5675, %5676
  %5678 = fcmp fast olt float %5666, 0.000000e+00
  %5679 = fcmp fast olt float %5670, 0.000000e+00
  %5680 = or i1 %5678, %5679
  %5681 = or i1 %5677, %5680
  br i1 %5681, label %6041, label %5682, !dx.controlflow.hints !98

; <label>:5682                                    ; preds = %5647
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5686 = extractvalue %dx.types.CBufRet.f32 %5683, 2
  %5687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.i32 %5687, 2
  %5689 = uitofp i32 %5688 to float
  %5690 = extractvalue %dx.types.CBufRet.i32 %5687, 3
  %5691 = uitofp i32 %5690 to float
  %5692 = extractvalue %dx.types.CBufRet.f32 %5683, 3
  %5693 = fmul fast float %5692, 2.000000e+00
  %5694 = fsub fast float %5666, %5684
  %5695 = fsub fast float %5670, %5685
  %5696 = fmul fast float %5693, %5694
  %5697 = fmul fast float %5693, %5695
  %5698 = fdiv fast float 1.000000e+00, %5472
  %5699 = fmul fast float %5697, %5698
  %5700 = call float @dx.op.unary.f32(i32 6, float %5699)  ; FAbs(value)
  %5701 = fmul fast float %5686, %5491
  %5702 = fmul fast float %5701, %5693
  %5703 = call float @dx.op.unary.f32(i32 6, float %5702)  ; FAbs(value)
  %5704 = call float @dx.op.unary.f32(i32 6, float %5696)  ; FAbs(value)
  %5705 = call float @dx.op.binary.f32(i32 35, float %5703, float %5700)  ; FMax(a,b)
  %5706 = call float @dx.op.binary.f32(i32 35, float %5704, float %5705)  ; FMax(a,b)
  %5707 = fmul fast float %5706, 2.000000e+00
  %5708 = call float @dx.op.unary.f32(i32 23, float %5707)  ; Log(value)
  %5709 = call float @dx.op.binary.f32(i32 35, float %5708, float %5689)  ; FMax(a,b)
  %5710 = call float @dx.op.unary.f32(i32 22, float %5709)  ; Frc(value)
  %5711 = fadd fast float %5710, 0xBFEA666660000000
  %5712 = fmul fast float %5711, 8.000000e+00
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = call float @dx.op.unary.f32(i32 27, float %5709)  ; Round_ni(value)
  %5715 = fadd fast float %5714, %5713
  %5716 = call float @dx.op.binary.f32(i32 36, float %5715, float %5691)  ; FMin(a,b)
  %5717 = call float @dx.op.unary.f32(i32 27, float %5716)  ; Round_ni(value)
  %5718 = fsub fast float -0.000000e+00, %5717
  %5719 = call float @dx.op.unary.f32(i32 21, float %5718)  ; Exp(value)
  %5720 = fmul fast float %5719, %5693
  %5721 = fmul fast float %5720, %5666
  %5722 = fmul fast float %5720, %5670
  %5723 = fmul fast float %5721, 2.500000e-01
  %5724 = fmul fast float %5722, 2.500000e-01
  %5725 = fadd fast float %5723, 5.000000e-01
  %5726 = fadd fast float %5724, 5.000000e-01
  %5727 = fsub fast float %5691, %5689
  %5728 = fptoui float %5727 to i32
  %5729 = add i32 %5728, 320
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5729)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 1
  %5733 = fcmp fast une float %5716, %5691
  %5734 = fsub fast float %5666, %5731
  %5735 = fsub fast float %5670, %5732
  %5736 = call float @dx.op.unary.f32(i32 6, float %5734)  ; FAbs(value)
  %5737 = call float @dx.op.unary.f32(i32 6, float %5735)  ; FAbs(value)
  %5738 = fmul fast float %5736, %5720
  %5739 = fmul fast float %5737, %5720
  %5740 = fcmp fast olt float %5738, 1.000000e+00
  %5741 = fcmp fast olt float %5739, 1.000000e+00
  %5742 = and i1 %5740, %5741
  %5743 = or i1 %5733, %5742
  br i1 %5743, label %5744, label %6041, !dx.controlflow.hints !99

; <label>:5744                                    ; preds = %5682
  %5745 = fmul fast float %5722, 5.000000e-01
  %5746 = fmul fast float %5721, 5.000000e-01
  %5747 = fadd fast float %5745, 5.000000e-01
  %5748 = fadd fast float %5746, 5.000000e-01
  %5749 = sitofp i32 %5688 to float
  %5750 = fsub fast float %5716, %5749
  %5751 = call float @dx.op.unary.f32(i32 27, float %5750)  ; Round_ni(value)
  %5752 = call float @dx.op.unary.f32(i32 22, float %5716)  ; Frc(value)
  %5753 = call float @dx.op.unary.f32(i32 22, float %5748)  ; Frc(value)
  %5754 = call float @dx.op.unary.f32(i32 22, float %5747)  ; Frc(value)
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5753, float %5754, float %5751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.ResRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.ResRet.f32 %5755, 2
  %5759 = extractvalue %dx.types.ResRet.f32 %5755, 3
  %5760 = fcmp fast ogt float %5752, 0.000000e+00
  br i1 %5760, label %5761, label %5782, !dx.controlflow.hints !100

; <label>:5761                                    ; preds = %5744
  %5762 = fadd fast float %5751, 1.000000e+00
  %5763 = call float @dx.op.unary.f32(i32 22, float %5725)  ; Frc(value)
  %5764 = call float @dx.op.unary.f32(i32 22, float %5726)  ; Frc(value)
  %5765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5763, float %5764, float %5762, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5766 = extractvalue %dx.types.ResRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.ResRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.ResRet.f32 %5765, 2
  %5769 = extractvalue %dx.types.ResRet.f32 %5765, 3
  %5770 = fsub fast float %5766, %5756
  %5771 = fsub fast float %5767, %5757
  %5772 = fsub fast float %5768, %5758
  %5773 = fsub fast float %5769, %5759
  %5774 = fmul fast float %5770, %5752
  %5775 = fmul fast float %5771, %5752
  %5776 = fmul fast float %5772, %5752
  %5777 = fmul fast float %5773, %5752
  %5778 = fadd fast float %5774, %5756
  %5779 = fadd fast float %5775, %5757
  %5780 = fadd fast float %5776, %5758
  %5781 = fadd fast float %5777, %5759
  br label %5782

; <label>:5782                                    ; preds = %5761, %5744
  %5783 = phi float [ %5778, %5761 ], [ %5756, %5744 ]
  %5784 = phi float [ %5779, %5761 ], [ %5757, %5744 ]
  %5785 = phi float [ %5780, %5761 ], [ %5758, %5744 ]
  %5786 = phi float [ %5781, %5761 ], [ %5759, %5744 ]
  %5787 = fadd fast float %5783, -5.000000e-01
  %5788 = fadd fast float %5785, -5.000000e-01
  %5789 = fmul fast float %5787, 0xBFD5555560000000
  %5790 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5788, float %5789)  ; FMad(a,b,c)
  %5791 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5784, float 0.000000e+00)  ; FMad(a,b,c)
  %5792 = fadd fast float %5791, %5786
  %5793 = fmul fast float %5787, -7.500000e-01
  %5794 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5788, float %5793)  ; FMad(a,b,c)
  %5795 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5784, float 0.000000e+00)  ; FMad(a,b,c)
  %5796 = fadd fast float %5795, %5786
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5804 = fsub fast float %5800, %5790
  %5805 = fsub fast float %5801, %5792
  %5806 = fsub fast float %5802, %5794
  %5807 = fsub fast float %5803, %5796
  %5808 = fmul fast float %5804, %5798
  %5809 = fmul fast float %5805, %5798
  %5810 = fmul fast float %5806, %5798
  %5811 = fmul fast float %5807, %5798
  %5812 = fadd fast float %5808, %5790
  %5813 = fadd fast float %5809, %5792
  %5814 = fadd fast float %5810, %5794
  %5815 = fadd fast float %5811, %5796
  %5816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.i32 %5816, 0
  %5818 = and i32 %5817, 536870911
  %5819 = uitofp i32 %5818 to float
  %5820 = fmul fast float %5819, %5666
  %5821 = fmul fast float %5819, %5670
  %5822 = fptoui float %5820 to i32
  %5823 = fptoui float %5821 to i32
  %5824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5825 = extractvalue %dx.types.ResRet.i32 %5824, 0
  %5826 = and i32 %5825, 31
  %5827 = lshr i32 %5822, %5826
  %5828 = lshr i32 %5823, %5826
  %5829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.i32 %5829, 0
  %5831 = and i32 %5830, 31
  %5832 = shl i32 1, %5831
  %5833 = call i32 @dx.op.binary.i32(i32 40, i32 %5832, i32 4)  ; UMin(a,b)
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = extractvalue %dx.types.ResRet.i32 %5834, 1
  %5837 = icmp eq i32 %5833, 0
  br i1 %5837, label %5879, label %5838

; <label>:5838                                    ; preds = %5782
  br label %5839

; <label>:5839                                    ; preds = %5867, %5838
  %5840 = phi i32 [ %5870, %5867 ], [ 0, %5838 ]
  %5841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5842 = extractvalue %dx.types.ResRet.i32 %5841, 0
  %5843 = lshr i32 %5842, 16
  %5844 = and i32 %5843, 31
  %5845 = shl i32 %5828, %5844
  %5846 = add i32 %5845, %5827
  %5847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5848 = extractvalue %dx.types.ResRet.i32 %5847, 0
  %5849 = and i32 %5848, 31
  %5850 = shl i32 %5846, %5849
  %5851 = add i32 %5850, %5840
  %5852 = shl i32 %5851, 2
  %5853 = add i32 %5852, 32
  %5854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.i32 %5854, 0
  %5856 = icmp slt i32 %5855, 0
  %5857 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5840
  %5858 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5840
  %5859 = bitcast float* %5857 to i32*
  %5860 = bitcast float* %5858 to i32*
  br i1 %5856, label %5861, label %5867

; <label>:5861                                    ; preds = %5839
  %5862 = and i32 %5855, 1073741823
  %5863 = add nuw nsw i32 %5862, 20
  %5864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5863, i32 undef)  ; BufferLoad(srv,index,wot)
  %5865 = extractvalue %dx.types.ResRet.i32 %5864, 0
  %5866 = extractvalue %dx.types.ResRet.i32 %5864, 1
  br label %5867

; <label>:5867                                    ; preds = %5861, %5839
  %5868 = phi i32 [ %5865, %5861 ], [ %5835, %5839 ]
  %5869 = phi i32 [ %5866, %5861 ], [ %5836, %5839 ]
  store i32 %5868, i32* %5859, align 4
  store i32 %5869, i32* %5860, align 4
  %5870 = add nuw i32 %5840, 1
  %5871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.i32 %5871, 2
  %5873 = icmp eq i32 %5872, 0
  %5874 = icmp ugt i32 %5855, -1073741825
  %5875 = and i1 %5874, %5873
  %5876 = icmp ult i32 %5870, %5833
  %5877 = and i1 %5875, %5876
  br i1 %5877, label %5839, label %5878

; <label>:5878                                    ; preds = %5867
  br label %5879

; <label>:5879                                    ; preds = %5878, %5782
  %5880 = phi i32 [ 0, %5782 ], [ %5870, %5878 ]
  %5881 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5882 = fptoui float %5881 to i32
  %5883 = icmp eq i32 %5882, 0
  br i1 %5883, label %5935, label %5884

; <label>:5884                                    ; preds = %5879
  br label %5885

; <label>:5885                                    ; preds = %5930, %5884
  %5886 = phi i32 [ %5931, %5930 ], [ %5880, %5884 ]
  %5887 = phi i32 [ %5932, %5930 ], [ 0, %5884 ]
  %5888 = lshr i32 %5887, 2
  %5889 = and i32 %5887, 3
  %5890 = add nuw nsw i32 %5888, 83
  %5891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5890)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.i32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.i32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.i32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.i32 %5891, 3
  %5896 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5892, i32* %5896, align 4
  %5897 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5893, i32* %5897, align 4
  %5898 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5894, i32* %5898, align 4
  %5899 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5895, i32* %5899, align 4
  %5900 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5889
  %5901 = load i32, i32* %5900, align 4, !tbaa !101, !noalias !105
  %5902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.i32 %5902, 0
  %5904 = lshr i32 %5903, 16
  %5905 = and i32 %5904, 31
  %5906 = shl i32 %5828, %5905
  %5907 = add i32 %5906, %5827
  %5908 = shl i32 %5907, 2
  %5909 = add i32 %5908, %5901
  %5910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5909, i32 undef)  ; BufferLoad(srv,index,wot)
  %5911 = extractvalue %dx.types.ResRet.i32 %5910, 0
  %5912 = icmp eq i32 %5911, 0
  br i1 %5912, label %5930, label %5913

; <label>:5913                                    ; preds = %5885
  %5914 = icmp slt i32 %5911, 0
  %5915 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5886
  %5916 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5886
  %5917 = bitcast float* %5915 to i32*
  %5918 = bitcast float* %5916 to i32*
  br i1 %5914, label %5919, label %5926

; <label>:5919                                    ; preds = %5913
  %5920 = and i32 %5911, 1073741823
  %5921 = add i32 %5901, 20
  %5922 = add i32 %5921, %5920
  %5923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5922, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.i32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.i32 %5923, 1
  br label %5926

; <label>:5926                                    ; preds = %5919, %5913
  %5927 = phi i32 [ %5924, %5919 ], [ %5835, %5913 ]
  %5928 = phi i32 [ %5925, %5919 ], [ %5836, %5913 ]
  store i32 %5927, i32* %5917, align 4
  store i32 %5928, i32* %5918, align 4
  %5929 = add i32 %5886, 1
  br label %5930

; <label>:5930                                    ; preds = %5926, %5885
  %5931 = phi i32 [ %5886, %5885 ], [ %5929, %5926 ]
  %5932 = add nuw i32 %5887, 1
  %5933 = icmp eq i32 %5932, %5882
  br i1 %5933, label %5934, label %5885

; <label>:5934                                    ; preds = %5930
  br label %5935

; <label>:5935                                    ; preds = %5934, %5879
  %5936 = phi i32 [ %5880, %5879 ], [ %5931, %5934 ]
  %5937 = icmp eq i32 %5936, 1
  %5938 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %5939 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %5937, label %5940, label %5943

; <label>:5940                                    ; preds = %5935
  %5941 = load float, float* %5938, align 4
  %5942 = load float, float* %5939, align 4
  br label %5970

; <label>:5943                                    ; preds = %5935
  %5944 = load float, float* %5938, align 4
  %5945 = load float, float* %5939, align 4
  %5946 = fdiv fast float 1.000000e+00, %5945
  %5947 = fsub fast float %5944, %5946
  %5948 = icmp ugt i32 %5936, 1
  br i1 %5948, label %5949, label %5965

; <label>:5949                                    ; preds = %5943
  br label %5950

; <label>:5950                                    ; preds = %5950, %5949
  %5951 = phi float [ %5960, %5950 ], [ %5947, %5949 ]
  %5952 = phi float [ %5961, %5950 ], [ %5944, %5949 ]
  %5953 = phi i32 [ %5962, %5950 ], [ 1, %5949 ]
  %5954 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5953
  %5955 = load float, float* %5954, align 4
  %5956 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5953
  %5957 = load float, float* %5956, align 4
  %5958 = fdiv fast float 1.000000e+00, %5957
  %5959 = fsub fast float %5955, %5958
  %5960 = call float @dx.op.binary.f32(i32 36, float %5951, float %5959)  ; FMin(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5952, float %5955)  ; FMax(a,b)
  %5962 = add nuw i32 %5953, 1
  %5963 = icmp eq i32 %5962, %5936
  br i1 %5963, label %5964, label %5950

; <label>:5964                                    ; preds = %5950
  br label %5965

; <label>:5965                                    ; preds = %5964, %5943
  %5966 = phi float [ %5947, %5943 ], [ %5960, %5964 ]
  %5967 = phi float [ %5944, %5943 ], [ %5961, %5964 ]
  %5968 = fsub fast float %5967, %5966
  %5969 = fdiv fast float 1.000000e+00, %5968
  br label %5970

; <label>:5970                                    ; preds = %5965, %5940
  %5971 = phi float [ %5941, %5940 ], [ %5967, %5965 ]
  %5972 = phi float [ %5942, %5940 ], [ %5969, %5965 ]
  %5973 = fadd fast float %5674, %5971
  %5974 = fmul fast float %5973, %5972
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = fmul fast float %5975, 2.000000e+00
  %5977 = fsub fast float 1.000000e+00, %5976
  %5978 = fmul fast float %5812, %5812
  %5979 = fsub fast float %5813, %5978
  %5980 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5979)  ; FMax(a,b)
  %5981 = fdiv fast float 1.000000e+00, %5980
  %5982 = fmul fast float %5813, %5812
  %5983 = fsub fast float %5814, %5982
  %5984 = fsub fast float %5977, %5812
  %5985 = fmul fast float %5977, %5977
  %5986 = fsub fast float %5985, %5813
  %5987 = fmul fast float %5981, %5983
  %5988 = fmul fast float %5987, %5984
  %5989 = fsub fast float %5986, %5988
  %5990 = fmul fast float %5813, %5813
  %5991 = fsub fast float %5815, %5990
  %5992 = fmul fast float %5983, %5983
  %5993 = fmul fast float %5992, %5981
  %5994 = fsub fast float %5991, %5993
  %5995 = fdiv fast float %5989, %5994
  %5996 = fmul fast float %5995, %5983
  %5997 = fsub fast float %5984, %5996
  %5998 = fmul fast float %5997, %5981
  %5999 = fmul fast float %5998, %5812
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = fmul fast float %5995, %5813
  %6002 = fsub fast float %6000, %6001
  %6003 = fmul fast float %5998, %5998
  %6004 = fmul fast float %5995, 4.000000e+00
  %6005 = fmul fast float %6004, %6002
  %6006 = fsub fast float %6003, %6005
  %6007 = call float @dx.op.unary.f32(i32 24, float %6006)  ; Sqrt(value)
  %6008 = fcmp fast oge float %5998, 0.000000e+00
  %6009 = fsub fast float -0.000000e+00, %6007
  %6010 = select i1 %6008, float %6009, float %6007
  %6011 = fsub fast float %6010, %5998
  %6012 = fdiv fast float %6011, %5995
  %6013 = fdiv fast float %6002, %6011
  %6014 = fmul fast float %6012, 5.000000e-01
  %6015 = fmul fast float %6013, 2.000000e+00
  %6016 = select i1 %6008, float %6014, float %6015
  %6017 = select i1 %6008, float %6015, float %6014
  %6018 = call float @dx.op.binary.f32(i32 35, float %6016, float %6017)  ; FMax(a,b)
  %6019 = call float @dx.op.binary.f32(i32 36, float %6016, float %6017)  ; FMin(a,b)
  %6020 = fcmp fast ogt float %5977, %6018
  %6021 = fsub fast float %5977, %6019
  %6022 = fsub fast float %5977, %6018
  %6023 = fsub fast float %6018, %6019
  %6024 = select i1 %6020, float %6022, float %6023
  %6025 = fmul float %6021, %6024
  %6026 = select i1 %6020, float %6019, float %5977
  %6027 = fcmp fast ogt float %5977, %6019
  %6028 = fmul fast float %6026, %6018
  %6029 = fadd fast float %6026, %6018
  %6030 = fmul fast float %6029, %5812
  %6031 = fadd fast float %6028, %5813
  %6032 = fsub fast float %6031, %6030
  %6033 = fdiv fast float %6032, %6025
  %6034 = select i1 %6027, float %6033, float 0.000000e+00
  %6035 = fsub fast float 1.000000e+00, %6034
  %6036 = select i1 %6020, float %6035, float %6034
  %6037 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6038 = extractvalue %dx.types.CBufRet.f32 %5797, 3
  %6039 = fmul fast float %6038, %6037
  %6040 = fsub fast float 1.000000e+00, %6039
  br label %6041

; <label>:6041                                    ; preds = %5970, %5682, %5647, %5643, %5607
  %6042 = phi float [ 1.000000e+00, %5607 ], [ %6040, %5970 ], [ 1.000000e+00, %5647 ], [ 1.000000e+00, %5682 ], [ 1.000000e+00, %5643 ]
  %6043 = fcmp fast ogt float %5639, 0.000000e+00
  br i1 %6043, label %6044, label %6052, !dx.controlflow.hints !114

; <label>:6044                                    ; preds = %6041
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6047 = fadd fast float %6046, %5520
  %6048 = call float @dx.op.binary.f32(i32 35, float %6047, float 0.000000e+00)  ; FMax(a,b)
  %6049 = fadd fast float %6048, 0x3F10000000000000
  %6050 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5538, float %5539, float undef, float undef, i32 0, i32 0, i32 undef, float %6049)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  br label %6052

; <label>:6052                                    ; preds = %6044, %6041
  %6053 = phi float [ %6051, %6044 ], [ 1.000000e+00, %6041 ]
  %6054 = fcmp fast ogt float %5637, 0.000000e+00
  br i1 %6054, label %6055, label %6063, !dx.controlflow.hints !115

; <label>:6055                                    ; preds = %6052
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6058 = fadd fast float %6057, %5520
  %6059 = call float @dx.op.binary.f32(i32 35, float %6058, float 0.000000e+00)  ; FMax(a,b)
  %6060 = fadd fast float %6059, 0x3F10000000000000
  %6061 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5530, float %5531, float undef, float undef, i32 0, i32 0, i32 undef, float %6060)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 0
  br label %6063

; <label>:6063                                    ; preds = %6055, %6052
  %6064 = phi float [ %6062, %6055 ], [ 1.000000e+00, %6052 ]
  %6065 = fcmp fast ogt float %5636, 0.000000e+00
  br i1 %6065, label %6066, label %6078, !dx.controlflow.hints !116

; <label>:6066                                    ; preds = %6063
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = fadd fast float %6068, %5520
  %6070 = call float @dx.op.binary.f32(i32 35, float %6069, float 0.000000e+00)  ; FMax(a,b)
  %6071 = fadd fast float %6070, 0x3F10000000000000
  br i1 %5523, label %6072, label %6075, !dx.controlflow.hints !117

; <label>:6072                                    ; preds = %6066
  %6073 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5512, float %5516, float undef, float undef, i32 0, i32 0, i32 undef, float %6071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  br label %6078

; <label>:6075                                    ; preds = %6066
  %6076 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5512, float %5516, float undef, float undef, i32 0, i32 0, i32 undef, float %6071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  br label %6078

; <label>:6078                                    ; preds = %6075, %6072, %6063
  %6079 = phi float [ %6074, %6072 ], [ %6077, %6075 ], [ 1.000000e+00, %6063 ]
  %6080 = fsub fast float %6053, %6042
  %6081 = fmul fast float %6080, %5609
  %6082 = fadd fast float %6081, %6042
  %6083 = fsub fast float %6064, %6082
  %6084 = fmul fast float %6083, %5608
  %6085 = fadd fast float %6084, %6082
  %6086 = fsub fast float %6079, %6085
  %6087 = fmul fast float %6086, %5636
  %6088 = fadd fast float %6087, %6085
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6091 = fcmp fast ogt float %6090, 0.000000e+00
  br i1 %6091, label %6092, label %6132, !dx.controlflow.hints !118

; <label>:6092                                    ; preds = %6078
  %6093 = fcmp fast ugt float %6090, 0.000000e+00
  br i1 %6093, label %6094, label %6129

; <label>:6094                                    ; preds = %6092
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6104 = extractvalue %dx.types.CBufRet.f32 %6100, 3
  %6105 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6111 = fadd fast float %6108, %5489
  %6112 = fadd fast float %6109, %5490
  %6113 = fadd fast float %6110, %5491
  %6114 = fmul fast float %6111, %6096
  %6115 = call float @dx.op.tertiary.f32(i32 46, float %6097, float %6112, float %6114)  ; FMad(a,b,c)
  %6116 = call float @dx.op.tertiary.f32(i32 46, float %6098, float %6113, float %6115)  ; FMad(a,b,c)
  %6117 = fadd fast float %6116, %6099
  %6118 = fmul fast float %6111, %6101
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6112, float %6118)  ; FMad(a,b,c)
  %6120 = call float @dx.op.tertiary.f32(i32 46, float %6103, float %6113, float %6119)  ; FMad(a,b,c)
  %6121 = fadd fast float %6120, %6104
  %6122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6117, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = fmul fast float %6123, %6106
  %6125 = fadd fast float %6124, %6105
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = fmul fast float %6126, %6090
  %6128 = fsub fast float 1.000000e+00, %6127
  br label %6129

; <label>:6129                                    ; preds = %6094, %6092
  %6130 = phi float [ %6128, %6094 ], [ 1.000000e+00, %6092 ]
  %6131 = fmul fast float %6130, %6088
  br label %6132

; <label>:6132                                    ; preds = %6129, %6078, %5469
  %6133 = phi float [ 1.000000e+00, %5469 ], [ %6131, %6129 ], [ %6088, %6078 ]
  %6134 = call float @dx.op.binary.f32(i32 36, float %6133, float %6133)  ; FMin(a,b)
  %6135 = call float @dx.op.binary.f32(i32 36, float %6133, float %6134)  ; FMin(a,b)
  %6136 = fcmp fast ogt float %6135, 0.000000e+00
  br i1 %6136, label %6137, label %6297, !dx.controlflow.hints !119

; <label>:6137                                    ; preds = %6132
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.CBufRet.f32 %6138, 1
  %6141 = extractvalue %dx.types.CBufRet.f32 %6138, 2
  %6142 = extractvalue %dx.types.CBufRet.f32 %6138, 3
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6147 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6153 = fmul fast float %6139, %5489
  %6154 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %6140, float %6153)  ; FMad(a,b,c)
  %6155 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %6141, float %6154)  ; FMad(a,b,c)
  %6156 = fadd fast float %6155, %6142
  %6157 = fmul fast float %6144, %5489
  %6158 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %6145, float %6157)  ; FMad(a,b,c)
  %6159 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %6146, float %6158)  ; FMad(a,b,c)
  %6160 = fadd fast float %6159, %6147
  %6161 = fmul fast float %6149, %5489
  %6162 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %6150, float %6161)  ; FMad(a,b,c)
  %6163 = call float @dx.op.tertiary.f32(i32 46, float %5491, float %6151, float %6162)  ; FMad(a,b,c)
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6168 = fmul fast float %6167, %6156
  %6169 = fmul fast float %6167, %6160
  %6170 = fadd fast float %6168, %6165
  %6171 = fadd fast float %6169, %6166
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = fsub fast float %6170, %6173
  %6176 = fsub fast float %6171, %6174
  %6177 = fcmp fast olt float %6175, 0.000000e+00
  %6178 = fcmp fast olt float %6176, 0.000000e+00
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6183 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6184 = select i1 %6177, float %6180, float %6182
  %6185 = select i1 %6178, float %6181, float %6183
  %6186 = fmul fast float %6184, %6175
  %6187 = fmul fast float %6185, %6176
  %6188 = call float @dx.op.unary.f32(i32 6, float %6186)  ; FAbs(value)
  %6189 = call float @dx.op.unary.f32(i32 6, float %6187)  ; FAbs(value)
  %6190 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %6191 = call float @dx.op.binary.f32(i32 35, float %6188, float %6189)  ; FMax(a,b)
  %6192 = fsub fast float %6190, %6191
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fcmp fast ogt float %6193, 0.000000e+00
  br i1 %6194, label %6195, label %6236, !dx.controlflow.hints !120

; <label>:6195                                    ; preds = %6137
  %6196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6170, float %6171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6197 = extractvalue %dx.types.ResRet.f32 %6196, 1
  %6198 = fcmp fast ogt float %6197, 0.000000e+00
  br i1 %6198, label %6199, label %6231

; <label>:6199                                    ; preds = %6195
  %6200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6170, float %6171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6201 = extractvalue %dx.types.ResRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.ResRet.f32 %6200, 1
  %6203 = extractvalue %dx.types.ResRet.f32 %6200, 2
  %6204 = extractvalue %dx.types.ResRet.f32 %6200, 3
  %6205 = fsub fast float 1.000000e+00, %6152
  %6206 = fsub fast float %6205, %6163
  %6207 = fmul fast float %6206, 0x400921FB60000000
  %6208 = fadd fast float %6207, 0x3FF921FB60000000
  %6209 = call float @dx.op.unary.f32(i32 13, float %6208)  ; Sin(value)
  %6210 = fadd fast float %6209, -1.000000e+00
  %6211 = fmul fast float %6210, 0x3FD45F3060000000
  %6212 = fmul fast float %6206, 0x401921FB60000000
  %6213 = fadd fast float %6212, 0x400921FB60000000
  %6214 = call float @dx.op.unary.f32(i32 13, float %6213)  ; Sin(value)
  %6215 = fadd fast float %6214, 0x3E7777A5C0000000
  %6216 = fmul fast float %6215, 0x3FC45F3060000000
  %6217 = fmul fast float %6206, 0x4022D97C80000000
  %6218 = fadd fast float %6217, 0x4012D97C80000000
  %6219 = call float @dx.op.unary.f32(i32 13, float %6218)  ; Sin(value)
  %6220 = fadd fast float %6219, 1.000000e+00
  %6221 = fmul fast float %6220, 0x3FBB2995E0000000
  %6222 = fmul fast float %6206, 0x402921FB60000000
  %6223 = fadd fast float %6222, 0x401921FB60000000
  %6224 = call float @dx.op.unary.f32(i32 13, float %6223)  ; Sin(value)
  %6225 = fadd fast float %6224, 0xBE8777A5C0000000
  %6226 = fmul fast float %6225, 0x3FB45F3060000000
  %6227 = call float @dx.op.dot4.f32(i32 56, float %6201, float %6202, float %6203, float %6204, float %6211, float %6216, float %6221, float %6226)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6228 = fmul fast float %6227, 0xBFF7154760000000
  %6229 = call float @dx.op.unary.f32(i32 21, float %6228)  ; Exp(value)
  %6230 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  br label %6231

; <label>:6231                                    ; preds = %6199, %6195
  %6232 = phi float [ %6230, %6199 ], [ 1.000000e+00, %6195 ]
  %6233 = fadd fast float %6232, -1.000000e+00
  %6234 = fmul fast float %6233, %6193
  %6235 = fadd fast float %6234, 1.000000e+00
  br label %6236

; <label>:6236                                    ; preds = %6231, %6137
  %6237 = phi float [ %6235, %6231 ], [ 1.000000e+00, %6137 ]
  %6238 = fmul fast float %6237, %6133
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6243 = fadd fast float %6240, %193
  %6244 = fadd fast float %6241, %194
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6247 = fsub fast float -0.000000e+00, %6243
  %6248 = fsub fast float -0.000000e+00, %6244
  %6249 = fsub fast float %5253, %6242
  %6250 = fadd fast float %6249, %6246
  %6251 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6247, float %6248, float %6250)  ; Dot3(ax,ay,az,bx,by,bz)
  %6252 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %6253 = fdiv fast float 1.000000e+00, %6252
  %6254 = fmul fast float %6253, %6251
  %6255 = fmul fast float %5470, %6254
  %6256 = fmul fast float %5471, %6254
  %6257 = fadd fast float %6255, %6243
  %6258 = fadd fast float %6256, %6244
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.CBufRet.f32 %6259, 1
  %6262 = fsub fast float %6257, %6260
  %6263 = fsub fast float %6258, %6261
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6267 = fmul fast float %6262, %6265
  %6268 = fmul fast float %6263, %6266
  %6269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.i32 %6269, 3
  %6271 = icmp eq i32 %6270, 0
  br i1 %6271, label %6277, label %6272

; <label>:6272                                    ; preds = %6236
  %6273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6267, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  br label %6282

; <label>:6277                                    ; preds = %6236
  %6278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6267, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6279 = extractvalue %dx.types.ResRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.ResRet.f32 %6278, 1
  %6281 = extractvalue %dx.types.ResRet.f32 %6278, 2
  br label %6282

; <label>:6282                                    ; preds = %6277, %6272
  %6283 = phi float [ %6274, %6272 ], [ %6279, %6277 ]
  %6284 = phi float [ %6275, %6272 ], [ %6280, %6277 ]
  %6285 = phi float [ %6276, %6272 ], [ %6281, %6277 ]
  %6286 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6287 = fmul fast float %6286, %6283
  %6288 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6289 = fsub fast float %6254, %6288
  %6290 = fsub fast float %6289, %6287
  %6291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6290)  ; FMax(a,b)
  %6292 = fmul fast float %6291, %6284
  %6293 = call float @dx.op.binary.f32(i32 36, float %6285, float %6292)  ; FMin(a,b)
  %6294 = fmul fast float %6293, 0xBFF7154760000000
  %6295 = call float @dx.op.unary.f32(i32 21, float %6294)  ; Exp(value)
  %6296 = fmul fast float %6238, %6295
  br label %6297

; <label>:6297                                    ; preds = %6282, %6132
  %6298 = phi float [ %6296, %6282 ], [ %6133, %6132 ]
  %6299 = call float @dx.op.binary.f32(i32 36, float %6298, float %6298)  ; FMin(a,b)
  %6300 = call float @dx.op.binary.f32(i32 36, float %6298, float %6299)  ; FMin(a,b)
  %6301 = fcmp fast ogt float %6300, 0.000000e+00
  br i1 %6301, label %6302, label %6553, !dx.controlflow.hints !121

; <label>:6302                                    ; preds = %6297
  %6303 = fmul fast float %6298, %5481
  %6304 = fmul fast float %6298, %5482
  %6305 = fmul fast float %6298, %5483
  %6306 = fsub fast float %195, %4449
  %6307 = fcmp fast ogt float %6306, 0.000000e+00
  %6308 = fmul fast float %5470, 5.120000e+02
  %6309 = fmul fast float %5471, 5.120000e+02
  %6310 = fmul fast float %5472, 5.120000e+02
  %6311 = fadd fast float %6310, %195
  %6312 = fsub fast float %4449, %6311
  %6313 = fmul fast float %6312, 2.000000e+00
  %6314 = fadd fast float %6313, %6311
  %6315 = select i1 %6307, float %6314, float %6311
  %6316 = fsub fast float %6315, %195
  %6317 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6316, float %6308, float %6309, float %6316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = call float @dx.op.unary.f32(i32 25, float %6317)  ; Rsqrt(value)
  %6319 = fmul fast float %6318, %6308
  %6320 = fmul fast float %6318, %6309
  %6321 = fmul fast float %6318, %6316
  %6322 = fsub fast float %4449, %195
  %6323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6322)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6319, float %6320, float %6321)  ; Dot3(ax,ay,az,bx,by,bz)
  %6325 = fdiv fast float 1.000000e+00, %6324
  %6326 = fmul fast float %6325, %6323
  %6327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6306, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6328 = fcmp fast ogt float %6327, 0.000000e+00
  %6329 = fcmp fast olt float %6327, 0.000000e+00
  %6330 = zext i1 %6328 to i32
  %6331 = zext i1 %6329 to i32
  %6332 = sub nsw i32 %6330, %6331
  %6333 = sitofp i32 %6332 to float
  %6334 = fsub fast float %6315, %4449
  %6335 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6334, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6336 = fcmp fast ogt float %6335, 0.000000e+00
  %6337 = fcmp fast olt float %6335, 0.000000e+00
  %6338 = zext i1 %6336 to i32
  %6339 = zext i1 %6337 to i32
  %6340 = sub nsw i32 %6338, %6339
  %6341 = sitofp i32 %6340 to float
  %6342 = fcmp fast une float %6333, %6341
  br i1 %6342, label %6343, label %6353

; <label>:6343                                    ; preds = %6302
  %6344 = fmul fast float %6326, %6321
  %6345 = fmul fast float %6326, %6320
  %6346 = fmul fast float %6326, %6319
  %6347 = fmul fast float %6346, %6346
  %6348 = fmul fast float %6345, %6345
  %6349 = fadd fast float %6347, %6348
  %6350 = fmul fast float %6344, %6344
  %6351 = fadd fast float %6349, %6350
  %6352 = call float @dx.op.unary.f32(i32 24, float %6351)  ; Sqrt(value)
  br label %6363

; <label>:6353                                    ; preds = %6302
  %6354 = icmp slt i32 %6332, 0
  br i1 %6354, label %6355, label %6363

; <label>:6355                                    ; preds = %6353
  %6356 = fsub fast float %195, %6315
  %6357 = fmul fast float %6308, %6308
  %6358 = fmul fast float %6309, %6309
  %6359 = fadd fast float %6357, %6358
  %6360 = fmul fast float %6356, %6356
  %6361 = fadd fast float %6359, %6360
  %6362 = call float @dx.op.unary.f32(i32 24, float %6361)  ; Sqrt(value)
  br label %6363

; <label>:6363                                    ; preds = %6355, %6353, %6343
  %6364 = phi float [ %6352, %6343 ], [ %6362, %6355 ], [ 0.000000e+00, %6353 ]
  %6365 = fsub fast float -0.000000e+00, %6364
  %6366 = select i1 %6307, float -0.000000e+00, float %6365
  %6367 = fmul fast float %4450, 0x3FF7154760000000
  %6368 = fmul fast float %6367, %6366
  %6369 = fmul fast float %4451, 0x3FF7154760000000
  %6370 = fmul fast float %6369, %6366
  %6371 = fmul fast float %4452, 0x3FF7154760000000
  %6372 = fmul fast float %6371, %6366
  %6373 = call float @dx.op.unary.f32(i32 21, float %6368)  ; Exp(value)
  %6374 = call float @dx.op.unary.f32(i32 21, float %6370)  ; Exp(value)
  %6375 = call float @dx.op.unary.f32(i32 21, float %6372)  ; Exp(value)
  %6376 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6377 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6378 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6379 = fmul fast float %6303, %6376
  %6380 = fmul fast float %6304, %6377
  %6381 = fmul fast float %6305, %6378
  %6382 = fsub fast float %5470, %5241
  %6383 = fsub fast float %5471, %5240
  %6384 = fsub fast float %5472, %5239
  %6385 = call float @dx.op.dot3.f32(i32 55, float %6382, float %6383, float %6384, float %6382, float %6383, float %6384)  ; Dot3(ax,ay,az,bx,by,bz)
  %6386 = call float @dx.op.unary.f32(i32 25, float %6385)  ; Rsqrt(value)
  %6387 = fmul fast float %6386, %6382
  %6388 = fmul fast float %6386, %6383
  %6389 = fmul fast float %6386, %6384
  %6390 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float %5248, float %5249, float %5250)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5237, float %5236, float %6387, float %6388, float %6389)  ; Dot3(ax,ay,az,bx,by,bz)
  %6392 = call float @dx.op.unary.f32(i32 7, float %6390)  ; Saturate(value)
  %6393 = fmul fast float %6392, %6392
  %6394 = fmul fast float %6393, %5269
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fmul fast float %6395, %6392
  %6397 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %6387, float %6388, float %6389)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = fmul fast float %6397, %6397
  %6399 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6400 = fsub fast float 1.000000e+00, %5251
  %6401 = call float @dx.op.binary.f32(i32 35, float %6400, float 0x3F847AE140000000)  ; FMax(a,b)
  %6402 = fmul fast float %6401, %6401
  %6403 = fmul fast float %6402, %6402
  %6404 = fsub fast float 1.000000e+00, %6403
  %6405 = fmul fast float %5256, %5256
  %6406 = fmul fast float %6405, %6404
  %6407 = fadd fast float %6406, %6403
  %6408 = bitcast float %6407 to i32
  %6409 = ashr i32 %6408, 1
  %6410 = add nsw i32 %6409, 532487669
  %6411 = bitcast i32 %6410 to float
  %6412 = fadd fast float %6411, %5256
  %6413 = fmul fast float %6403, %6398
  %6414 = fsub fast float 1.000000e+00, %6398
  %6415 = fadd fast float %6414, %6413
  %6416 = fmul fast float %6399, %6399
  %6417 = fmul fast float %6416, %6404
  %6418 = fadd fast float %6417, %6403
  %6419 = bitcast float %6418 to i32
  %6420 = ashr i32 %6419, 1
  %6421 = add nsw i32 %6420, 532487669
  %6422 = bitcast i32 %6421 to float
  %6423 = fadd fast float %6422, %6399
  %6424 = fmul fast float %6415, %6415
  %6425 = fmul fast float %6424, %6412
  %6426 = fmul fast float %6425, %6423
  %6427 = fdiv fast float 0x3FF0A00000000000, %6426
  %6428 = fmul fast float %6427, %6403
  %6429 = call float @dx.op.unary.f32(i32 6, float %6391)  ; FAbs(value)
  %6430 = fsub fast float 1.000000e+00, %6429
  %6431 = bitcast float %6430 to i32
  %6432 = sitofp i32 %6431 to float
  %6433 = fmul fast float %6432, 5.000000e+00
  %6434 = fadd fast float %6433, 0xC1EFBF8940000000
  %6435 = fptosi float %6434 to i32
  %6436 = bitcast i32 %6435 to float
  %6437 = fsub fast float 1.000000e+00, %5245
  %6438 = fsub fast float 1.000000e+00, %5246
  %6439 = fsub fast float 1.000000e+00, %5254
  %6440 = fmul fast float %6436, %6437
  %6441 = fmul fast float %6436, %6438
  %6442 = fmul fast float %6436, %6439
  %6443 = fadd fast float %6440, %5245
  %6444 = fadd fast float %6441, %5246
  %6445 = fadd fast float %6442, %5254
  br i1 %5381, label %6446, label %6469

; <label>:6446                                    ; preds = %6363
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4047, float %6429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6451 = fadd fast float %6448, -5.000000e-01
  %6452 = fadd fast float %6449, -5.000000e-01
  %6453 = fadd fast float %6450, -5.000000e-01
  %6454 = fmul fast float %5245, 4.000000e+00
  %6455 = fmul fast float %6454, %6437
  %6456 = fmul fast float %6455, %6451
  %6457 = fmul fast float %5246, 4.000000e+00
  %6458 = fmul fast float %6457, %6438
  %6459 = fmul fast float %6458, %6452
  %6460 = fmul fast float %5254, 4.000000e+00
  %6461 = fmul fast float %6460, %6439
  %6462 = fmul fast float %6461, %6453
  %6463 = fadd fast float %6456, %6443
  %6464 = fadd fast float %6459, %6444
  %6465 = fadd fast float %6462, %6445
  %6466 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  %6467 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6468 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  br label %6469

; <label>:6469                                    ; preds = %6446, %6363
  %6470 = phi float [ %6466, %6446 ], [ %6443, %6363 ]
  %6471 = phi float [ %6467, %6446 ], [ %6444, %6363 ]
  %6472 = phi float [ %6468, %6446 ], [ %6445, %6363 ]
  %6473 = fmul fast float %6390, 9.843750e-01
  %6474 = fadd fast float %6473, 7.812500e-03
  %6475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6474, float %5371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6476 = extractvalue %dx.types.ResRet.f32 %6475, 2
  %6477 = extractvalue %dx.types.ResRet.f32 %6475, 3
  %6478 = fmul fast float %6476, %5245
  %6479 = fmul fast float %6476, %5246
  %6480 = fmul fast float %6476, %5254
  %6481 = fadd fast float %6478, %6477
  %6482 = fadd fast float %6479, %6477
  %6483 = fadd fast float %6480, %6477
  br i1 %5381, label %6484, label %6507

; <label>:6484                                    ; preds = %6469
  %6485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4047, float %6390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6486 = extractvalue %dx.types.ResRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.ResRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.ResRet.f32 %6485, 2
  %6489 = fadd fast float %6486, -5.000000e-01
  %6490 = fadd fast float %6487, -5.000000e-01
  %6491 = fadd fast float %6488, -5.000000e-01
  %6492 = fmul fast float %5245, 4.000000e+00
  %6493 = fmul fast float %6492, %6437
  %6494 = fmul fast float %6493, %6489
  %6495 = fmul fast float %5246, 4.000000e+00
  %6496 = fmul fast float %6495, %6438
  %6497 = fmul fast float %6496, %6490
  %6498 = fmul fast float %5254, 4.000000e+00
  %6499 = fmul fast float %6498, %6439
  %6500 = fmul fast float %6499, %6491
  %6501 = fadd fast float %6494, %6481
  %6502 = fadd fast float %6497, %6482
  %6503 = fadd fast float %6500, %6483
  %6504 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6505 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6506 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  br label %6507

; <label>:6507                                    ; preds = %6484, %6469
  %6508 = phi float [ %6504, %6484 ], [ %6481, %6469 ]
  %6509 = phi float [ %6505, %6484 ], [ %6482, %6469 ]
  %6510 = phi float [ %6506, %6484 ], [ %6483, %6469 ]
  %6511 = call float @dx.op.binary.f32(i32 35, float %6509, float %6510)  ; FMax(a,b)
  %6512 = call float @dx.op.binary.f32(i32 35, float %6508, float %6511)  ; FMax(a,b)
  %6513 = fsub fast float 1.000000e+00, %6512
  %6514 = fmul fast float %6470, %6428
  %6515 = fmul fast float %6471, %6428
  %6516 = fmul fast float %6472, %6428
  %6517 = fsub fast float 1.000000e+00, %6391
  %6518 = bitcast float %6517 to i32
  %6519 = sitofp i32 %6518 to float
  %6520 = fmul fast float %6519, 5.000000e+00
  %6521 = fadd fast float %6520, 0xC1EFBF8940000000
  %6522 = fptosi float %6521 to i32
  %6523 = bitcast i32 %6522 to float
  %6524 = fmul fast float %6523, %4048
  %6525 = fmul fast float %6513, %6524
  %6526 = fmul fast float %6525, %5431
  %6527 = fmul fast float %6525, %5432
  %6528 = fmul fast float %6525, %5433
  %6529 = fadd fast float %6526, %6514
  %6530 = fadd fast float %6527, %6515
  %6531 = fadd fast float %6528, %6516
  %6532 = fmul fast float %6396, %6379
  %6533 = fmul fast float %6532, %6513
  %6534 = fmul fast float %6396, %6380
  %6535 = fmul fast float %6534, %6513
  %6536 = fmul fast float %6396, %6381
  %6537 = fmul fast float %6536, %6513
  %6538 = fmul fast float %6532, %6529
  %6539 = fmul fast float %6534, %6530
  %6540 = fmul fast float %6536, %6531
  %6541 = fadd fast float %6533, %5415
  %6542 = fmul fast float %6541, %4044
  %6543 = fadd fast float %6535, %5416
  %6544 = fmul fast float %6543, %4044
  %6545 = fadd fast float %6537, %5417
  %6546 = fmul fast float %6545, %4044
  %6547 = fadd fast float %6538, %5458
  %6548 = fmul fast float %6547, %4044
  %6549 = fadd fast float %6539, %5461
  %6550 = fmul fast float %6549, %4044
  %6551 = fadd fast float %6540, %5464
  %6552 = fmul fast float %6551, %4044
  br label %6553

; <label>:6553                                    ; preds = %6507, %6297, %5408
  %6554 = phi float [ %5459, %5408 ], [ %5459, %6297 ], [ %6548, %6507 ]
  %6555 = phi float [ %5462, %5408 ], [ %5462, %6297 ], [ %6550, %6507 ]
  %6556 = phi float [ %5465, %5408 ], [ %5465, %6297 ], [ %6552, %6507 ]
  %6557 = phi float [ %5454, %5408 ], [ %5454, %6297 ], [ %6542, %6507 ]
  %6558 = phi float [ %5455, %5408 ], [ %5455, %6297 ], [ %6544, %6507 ]
  %6559 = phi float [ %5456, %5408 ], [ %5456, %6297 ], [ %6546, %6507 ]
  %6560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.i32 %6560, 0
  %6562 = icmp eq i32 %6561, 0
  br i1 %6562, label %7183, label %6563

; <label>:6563                                    ; preds = %6553
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 2
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 3
  %6567 = fmul fast float %6565, %106
  %6568 = fmul fast float %6566, %107
  %6569 = fptoui float %6567 to i32
  %6570 = fptoui float %6568 to i32
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 2
  %6574 = extractvalue %dx.types.CBufRet.f32 %6571, 3
  %6575 = fadd fast float %97, -4.000000e+00
  %6576 = call float @dx.op.binary.f32(i32 35, float %6575, float 0.000000e+00)  ; FMax(a,b)
  %6577 = fadd fast float %6576, %6572
  %6578 = fmul fast float %6577, %6573
  %6579 = call float @dx.op.unary.f32(i32 23, float %6578)  ; Log(value)
  %6580 = fmul fast float %6579, %6574
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 2
  %6583 = fmul fast float %6580, %6582
  %6584 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.i32 %6585, 1
  %6587 = add i32 %6586, -1
  %6588 = uitofp i32 %6586 to float
  %6589 = fmul fast float %6588, %6584
  %6590 = fptoui float %6589 to i32
  %6591 = call i32 @dx.op.binary.i32(i32 40, i32 %6590, i32 %6587)  ; UMin(a,b)
  %6592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.i32 %6592, 2
  %6594 = extractvalue %dx.types.CBufRet.i32 %6592, 3
  %6595 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6570, i32 %6593, i32 %6569)  ; UMad(a,b,c)
  %6596 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6591, i32 %6594, i32 %6595)  ; UMad(a,b,c)
  %6597 = add nsw i32 %6561, -1
  %6598 = call i32 @dx.op.binary.i32(i32 37, i32 %6597, i32 0)  ; IMax(a,b)
  %6599 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6600 = fptoui float %6599 to i32
  %6601 = lshr i32 %6600, 5
  %6602 = call i32 @dx.op.binary.i32(i32 40, i32 %6601, i32 8191)  ; UMin(a,b)
  %6603 = shl i32 %6602, 2
  %6604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6603, i32 undef)  ; BufferLoad(srv,index,wot)
  %6605 = extractvalue %dx.types.ResRet.i32 %6604, 0
  %6606 = lshr i32 %6605, 16
  %6607 = and i32 %6605, 65535
  %6608 = lshr i32 %6605, 21
  %6609 = lshr i32 %6607, 5
  %6610 = call i32 @dx.op.binary.i32(i32 40, i32 %6609, i32 %6598)  ; UMin(a,b)
  %6611 = icmp ugt i32 %6608, %6610
  br i1 %6611, label %7183, label %6612

; <label>:6612                                    ; preds = %6563
  br label %6613

; <label>:6613                                    ; preds = %7173, %6612
  %6614 = phi i32 [ %7180, %7173 ], [ %6608, %6612 ]
  %6615 = phi float [ %7174, %7173 ], [ %6554, %6612 ]
  %6616 = phi float [ %7175, %7173 ], [ %6555, %6612 ]
  %6617 = phi float [ %7176, %7173 ], [ %6556, %6612 ]
  %6618 = phi float [ %7177, %7173 ], [ %6557, %6612 ]
  %6619 = phi float [ %7178, %7173 ], [ %6558, %6612 ]
  %6620 = phi float [ %7179, %7173 ], [ %6559, %6612 ]
  %6621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.i32 %6621, 0
  %6623 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6596, i32 %6622, i32 %6614)  ; UMad(a,b,c)
  %6624 = shl i32 %6623, 2
  %6625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6624, i32 undef)  ; BufferLoad(srv,index,wot)
  %6626 = extractvalue %dx.types.ResRet.i32 %6625, 0
  %6627 = shl i32 %6614, 5
  %6628 = sub nsw i32 %6606, %6627
  %6629 = call i32 @dx.op.binary.i32(i32 37, i32 %6628, i32 0)  ; IMax(a,b)
  %6630 = call i32 @dx.op.binary.i32(i32 38, i32 %6629, i32 31)  ; IMin(a,b)
  %6631 = sub nsw i32 1, %6606
  %6632 = add nsw i32 %6631, %6607
  %6633 = call i32 @dx.op.binary.i32(i32 37, i32 %6632, i32 0)  ; IMax(a,b)
  %6634 = call i32 @dx.op.binary.i32(i32 38, i32 %6633, i32 32)  ; IMin(a,b)
  %6635 = and i32 %6634, 31
  %6636 = shl i32 -1, %6635
  %6637 = xor i32 %6636, -1
  %6638 = and i32 %6630, 31
  %6639 = shl i32 %6637, %6638
  %6640 = icmp eq i32 %6634, 32
  %6641 = select i1 %6640, i32 -1, i32 %6639
  %6642 = and i32 %6641, %6626
  %6643 = icmp eq i32 %6642, 0
  br i1 %6643, label %7173, label %6644

; <label>:6644                                    ; preds = %6613
  br label %6645

; <label>:6645                                    ; preds = %6779, %6644
  %6646 = phi i32 [ %6657, %6779 ], [ %6642, %6644 ]
  %6647 = phi float [ %6780, %6779 ], [ %6615, %6644 ]
  %6648 = phi float [ %6781, %6779 ], [ %6616, %6644 ]
  %6649 = phi float [ %6782, %6779 ], [ %6617, %6644 ]
  %6650 = phi float [ %6783, %6779 ], [ %6618, %6644 ]
  %6651 = phi float [ %6784, %6779 ], [ %6619, %6644 ]
  %6652 = phi float [ %6785, %6779 ], [ %6620, %6644 ]
  %6653 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6646)  ; FirstbitLo(value)
  %6654 = add i32 %6653, %6627
  %6655 = and i32 %6653, 31
  %6656 = shl i32 1, %6655
  %6657 = xor i32 %6656, %6646
  %6658 = mul i32 %6654, 112
  %6659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6658, i32 undef)  ; BufferLoad(srv,index,wot)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = or i32 %6658, 12
  %6664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6663, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = add i32 %6658, 16
  %6667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6666, i32 undef)  ; BufferLoad(srv,index,wot)
  %6668 = extractvalue %dx.types.ResRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.ResRet.f32 %6667, 1
  %6670 = extractvalue %dx.types.ResRet.f32 %6667, 2
  %6671 = add i32 %6658, 28
  %6672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6671, i32 undef)  ; BufferLoad(srv,index,wot)
  %6673 = extractvalue %dx.types.ResRet.i32 %6672, 0
  %6674 = add i32 %6658, 44
  %6675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6674, i32 undef)  ; BufferLoad(srv,index,wot)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = add i32 %6658, 48
  %6678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6677, i32 undef)  ; BufferLoad(srv,index,wot)
  %6679 = extractvalue %dx.types.ResRet.f32 %6678, 0
  %6680 = extractvalue %dx.types.ResRet.f32 %6678, 1
  %6681 = extractvalue %dx.types.ResRet.f32 %6678, 2
  %6682 = extractvalue %dx.types.ResRet.f32 %6678, 3
  %6683 = add i32 %6658, 64
  %6684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6683, i32 undef)  ; BufferLoad(srv,index,wot)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.ResRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.ResRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.ResRet.f32 %6684, 3
  %6689 = add i32 %6658, 80
  %6690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6689, i32 undef)  ; BufferLoad(srv,index,wot)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6693 = add i32 %6658, 92
  %6694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6693, i32 undef)  ; BufferLoad(srv,index,wot)
  %6695 = extractvalue %dx.types.ResRet.i32 %6694, 0
  %6696 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6697 = select i1 %265, float %6691, float %6660
  %6698 = select i1 %265, float %6696, float %6661
  %6699 = select i1 %265, float %6692, float %6662
  %6700 = and i32 %6695, 65535
  %6701 = uitofp i32 %6700 to float
  %6702 = lshr i32 %6695, 16
  %6703 = uitofp i32 %6702 to float
  %6704 = and i32 %6673, 65535
  %6705 = and i32 %6673, 50331648
  %6706 = icmp eq i32 %6705, 33554432
  %6707 = fsub fast float %6679, %193
  %6708 = fsub fast float %6680, %194
  %6709 = fsub fast float %6681, %195
  %6710 = call float @dx.op.dot3.f32(i32 55, float %6707, float %6708, float %6709, float %6707, float %6708, float %6709)  ; Dot3(ax,ay,az,bx,by,bz)
  %6711 = call float @dx.op.unary.f32(i32 24, float %6710)  ; Sqrt(value)
  %6712 = fdiv fast float 1.000000e+00, %6711
  %6713 = fmul fast float %6712, %6707
  %6714 = fmul fast float %6712, %6708
  %6715 = fmul fast float %6712, %6709
  %6716 = fadd fast float %6711, %6665
  %6717 = fdiv fast float 1.000000e+00, %6716
  %6718 = fmul float %6676, %6717
  %6719 = fmul float %6718, %6718
  %6720 = call float @dx.op.unary.f32(i32 7, float %6719)  ; Saturate(value)
  br i1 %6706, label %6721, label %6742

; <label>:6721                                    ; preds = %6645
  %6722 = fmul fast float %6687, %6668
  %6723 = fmul fast float %6687, %6669
  %6724 = fmul fast float %6687, %6670
  %6725 = fadd fast float %6707, %6722
  %6726 = fadd fast float %6708, %6723
  %6727 = fadd fast float %6709, %6724
  %6728 = call float @dx.op.dot3.f32(i32 55, float %6725, float %6726, float %6727, float %6725, float %6726, float %6727)  ; Dot3(ax,ay,az,bx,by,bz)
  %6729 = call float @dx.op.unary.f32(i32 25, float %6728)  ; Rsqrt(value)
  %6730 = fmul fast float %6729, %6725
  %6731 = fmul fast float %6729, %6726
  %6732 = fmul fast float %6729, %6727
  %6733 = fsub fast float %193, %6679
  %6734 = fsub fast float %194, %6680
  %6735 = fsub fast float %195, %6681
  %6736 = fsub fast float -0.000000e+00, %6733
  %6737 = fsub fast float -0.000000e+00, %6734
  %6738 = fsub fast float -0.000000e+00, %6735
  %6739 = call float @dx.op.dot3.f32(i32 55, float %6736, float %6737, float %6738, float %6668, float %6669, float %6670)  ; Dot3(ax,ay,az,bx,by,bz)
  %6740 = fcmp fast ogt float %6739, 0.000000e+00
  %6741 = uitofp i1 %6740 to float
  br label %6742

; <label>:6742                                    ; preds = %6721, %6645
  %6743 = phi float [ %6741, %6721 ], [ 1.000000e+00, %6645 ]
  %6744 = phi float [ %6730, %6721 ], [ %6713, %6645 ]
  %6745 = phi float [ %6731, %6721 ], [ %6714, %6645 ]
  %6746 = phi float [ %6732, %6721 ], [ %6715, %6645 ]
  %6747 = call float @dx.op.dot3.f32(i32 55, float %6668, float %6669, float %6670, float %6744, float %6745, float %6746)  ; Dot3(ax,ay,az,bx,by,bz)
  %6748 = fmul fast float %6747, %6747
  %6749 = call float @dx.op.unary.f32(i32 7, float %6748)  ; Saturate(value)
  %6750 = fsub fast float 1.000000e+00, %6749
  %6751 = fmul fast float %6750, 5.000000e-01
  %6752 = fcmp fast ogt float %6747, 0.000000e+00
  %6753 = fsub fast float 1.000000e+00, %6751
  %6754 = select i1 %6752, float %6751, float %6753
  %6755 = fmul fast float %6754, %6703
  %6756 = fadd fast float %6755, %6701
  %6757 = fmul fast float %6756, 0x3EF0001000000000
  %6758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6757, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6759 = extractvalue %dx.types.ResRet.f32 %6758, 0
  %6760 = fmul fast float %6747, %6685
  %6761 = fadd fast float %6760, %6686
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = select i1 %6706, float 1.000000e+00, float %6762
  %6764 = select i1 %6706, float %6762, float 1.000000e+00
  %6765 = fmul fast float %6711, %6682
  %6766 = fsub fast float 1.000000e+00, %6765
  %6767 = fmul fast float %6766, %6688
  %6768 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6769 = fmul fast float %6768, %6764
  %6770 = fmul fast float %6769, 2.000000e+00
  %6771 = fsub fast float 3.000000e+00, %6770
  %6772 = fmul fast float %6759, %6743
  %6773 = fmul fast float %6769, %6769
  %6774 = fmul fast float %6773, %6772
  %6775 = fmul fast float %6774, %6771
  %6776 = call float @dx.op.binary.f32(i32 36, float %6775, float %6775)  ; FMin(a,b)
  %6777 = call float @dx.op.binary.f32(i32 36, float %6775, float %6776)  ; FMin(a,b)
  %6778 = fcmp fast ogt float %6777, 0.000000e+00
  br i1 %6778, label %6787, label %6779, !dx.controlflow.hints !122

; <label>:6779                                    ; preds = %7129, %6887, %6742
  %6780 = phi float [ %6647, %6887 ], [ %6647, %6742 ], [ %7169, %7129 ]
  %6781 = phi float [ %6648, %6887 ], [ %6648, %6742 ], [ %7170, %7129 ]
  %6782 = phi float [ %6649, %6887 ], [ %6649, %6742 ], [ %7171, %7129 ]
  %6783 = phi float [ %6650, %6887 ], [ %6650, %6742 ], [ %7163, %7129 ]
  %6784 = phi float [ %6651, %6887 ], [ %6651, %6742 ], [ %7164, %7129 ]
  %6785 = phi float [ %6652, %6887 ], [ %6652, %6742 ], [ %7165, %7129 ]
  %6786 = icmp eq i32 %6646, %6656
  br i1 %6786, label %7172, label %6645

; <label>:6787                                    ; preds = %6742
  %6788 = icmp eq i32 %6704, 255
  br i1 %6788, label %6887, label %6789, !dx.controlflow.hints !123

; <label>:6789                                    ; preds = %6787
  %6790 = mul nuw nsw i32 %6704, 176
  %6791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6790, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.f32 %6791, 1
  %6794 = extractvalue %dx.types.ResRet.f32 %6791, 2
  %6795 = extractvalue %dx.types.ResRet.f32 %6791, 3
  %6796 = add nuw nsw i32 %6790, 16
  %6797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6796, i32 undef)  ; BufferLoad(srv,index,wot)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = add nuw nsw i32 %6790, 32
  %6801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6800, i32 undef)  ; BufferLoad(srv,index,wot)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.ResRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.ResRet.f32 %6801, 2
  %6805 = add nuw nsw i32 %6790, 48
  %6806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6805, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.ResRet.f32 %6806, 1
  %6809 = extractvalue %dx.types.ResRet.f32 %6806, 2
  %6810 = extractvalue %dx.types.ResRet.f32 %6806, 3
  %6811 = add nuw nsw i32 %6790, 64
  %6812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6811, i32 undef)  ; BufferLoad(srv,index,wot)
  %6813 = extractvalue %dx.types.ResRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.ResRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.ResRet.f32 %6812, 2
  %6816 = extractvalue %dx.types.ResRet.f32 %6812, 3
  %6817 = add nuw nsw i32 %6790, 80
  %6818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6817, i32 undef)  ; BufferLoad(srv,index,wot)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 0
  %6820 = extractvalue %dx.types.ResRet.f32 %6818, 1
  %6821 = extractvalue %dx.types.ResRet.f32 %6818, 2
  %6822 = extractvalue %dx.types.ResRet.f32 %6818, 3
  %6823 = add nuw nsw i32 %6790, 96
  %6824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6823, i32 undef)  ; BufferLoad(srv,index,wot)
  %6825 = extractvalue %dx.types.ResRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.ResRet.f32 %6824, 1
  %6827 = extractvalue %dx.types.ResRet.f32 %6824, 2
  %6828 = extractvalue %dx.types.ResRet.f32 %6824, 3
  %6829 = bitcast float %6799 to i32
  %6830 = fmul fast float %6804, %113
  %6831 = fmul fast float %6804, %114
  %6832 = fmul fast float %6804, %115
  %6833 = fadd fast float %6830, %193
  %6834 = fadd fast float %6831, %194
  %6835 = fadd fast float %6832, %195
  %6836 = fmul fast float %6833, %6807
  %6837 = call float @dx.op.tertiary.f32(i32 46, float %6834, float %6813, float %6836)  ; FMad(a,b,c)
  %6838 = call float @dx.op.tertiary.f32(i32 46, float %6835, float %6819, float %6837)  ; FMad(a,b,c)
  %6839 = fadd fast float %6838, %6825
  %6840 = fmul fast float %6833, %6808
  %6841 = call float @dx.op.tertiary.f32(i32 46, float %6834, float %6814, float %6840)  ; FMad(a,b,c)
  %6842 = call float @dx.op.tertiary.f32(i32 46, float %6835, float %6820, float %6841)  ; FMad(a,b,c)
  %6843 = fadd fast float %6842, %6826
  %6844 = fmul fast float %6833, %6809
  %6845 = call float @dx.op.tertiary.f32(i32 46, float %6834, float %6815, float %6844)  ; FMad(a,b,c)
  %6846 = call float @dx.op.tertiary.f32(i32 46, float %6835, float %6821, float %6845)  ; FMad(a,b,c)
  %6847 = fadd fast float %6846, %6827
  %6848 = fmul fast float %6833, %6810
  %6849 = call float @dx.op.tertiary.f32(i32 46, float %6834, float %6816, float %6848)  ; FMad(a,b,c)
  %6850 = call float @dx.op.tertiary.f32(i32 46, float %6835, float %6822, float %6849)  ; FMad(a,b,c)
  %6851 = fadd fast float %6850, %6828
  %6852 = fdiv fast float %6839, %6851
  %6853 = fdiv fast float %6843, %6851
  %6854 = fdiv fast float %6847, %6851
  %6855 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6854)  ; FMax(a,b)
  %6856 = fmul fast float %276, 0x401921FB60000000
  %6857 = call float @dx.op.unary.f32(i32 13, float %6856)  ; Sin(value)
  %6858 = call float @dx.op.unary.f32(i32 12, float %6856)  ; Cos(value)
  %6859 = fsub fast float -0.000000e+00, %6857
  %6860 = fmul fast float %6794, 5.000000e-01
  %6861 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6862 = call float @dx.op.unary.f32(i32 22, float %6861)  ; Frc(value)
  %6863 = fmul fast float %6862, 0x404A7DD040000000
  %6864 = call float @dx.op.unary.f32(i32 22, float %6863)  ; Frc(value)
  %6865 = fmul fast float %6864, %6803
  %6866 = fadd fast float %6865, %6860
  %6867 = call float @dx.op.tertiary.f32(i32 46, float %6866, float %6859, float 0.000000e+00)  ; FMad(a,b,c)
  %6868 = call float @dx.op.tertiary.f32(i32 46, float %6866, float %6858, float 0.000000e+00)  ; FMad(a,b,c)
  %6869 = fadd fast float %6867, %6852
  %6870 = fadd fast float %6868, %6853
  %6871 = fmul fast float %6869, %6798
  %6872 = fmul fast float %6870, %6798
  %6873 = call float @dx.op.binary.f32(i32 35, float %6871, float %6794)  ; FMax(a,b)
  %6874 = call float @dx.op.binary.f32(i32 35, float %6872, float %6794)  ; FMax(a,b)
  %6875 = call float @dx.op.binary.f32(i32 36, float %6873, float %6795)  ; FMin(a,b)
  %6876 = call float @dx.op.binary.f32(i32 36, float %6874, float %6795)  ; FMin(a,b)
  %6877 = fadd fast float %6875, %6792
  %6878 = fadd fast float %6876, %6793
  %6879 = uitofp i32 %6829 to float
  %6880 = fadd fast float %6855, %6802
  %6881 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6877, float %6878, float %6879, float undef, i32 0, i32 0, i32 undef, float %6880)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6882 = extractvalue %dx.types.ResRet.f32 %6881, 0
  %6883 = fadd fast float %6882, -1.000000e+00
  %6884 = fmul fast float %6883, %6763
  %6885 = fadd fast float %6884, 1.000000e+00
  %6886 = fmul fast float %6885, %6775
  br label %6887

; <label>:6887                                    ; preds = %6789, %6787
  %6888 = phi float [ %6886, %6789 ], [ %6775, %6787 ]
  %6889 = call float @dx.op.binary.f32(i32 36, float %6888, float %6888)  ; FMin(a,b)
  %6890 = call float @dx.op.binary.f32(i32 36, float %6888, float %6889)  ; FMin(a,b)
  %6891 = fcmp fast ogt float %6890, 0.000000e+00
  br i1 %6891, label %6892, label %6779, !dx.controlflow.hints !124

; <label>:6892                                    ; preds = %6887
  %6893 = fmul fast float %6888, %6697
  %6894 = fmul fast float %6888, %6698
  %6895 = fmul fast float %6888, %6699
  %6896 = fsub fast float %6681, %4449
  %6897 = fcmp fast ogt float %6896, 0.000000e+00
  %6898 = fsub fast float %195, %4449
  %6899 = fcmp fast ogt float %6898, 0.000000e+00
  %6900 = xor i1 %6899, %6897
  %6901 = fsub fast float %4449, %6681
  %6902 = fmul fast float %6901, 2.000000e+00
  %6903 = fadd fast float %6902, %6681
  %6904 = select i1 %6900, float %6681, float %6903
  %6905 = fsub fast float %6904, %195
  %6906 = call float @dx.op.dot3.f32(i32 55, float %6707, float %6708, float %6905, float %6707, float %6708, float %6905)  ; Dot3(ax,ay,az,bx,by,bz)
  %6907 = call float @dx.op.unary.f32(i32 25, float %6906)  ; Rsqrt(value)
  %6908 = fmul fast float %6907, %6707
  %6909 = fmul fast float %6907, %6708
  %6910 = fmul fast float %6907, %6905
  %6911 = fsub fast float %4449, %195
  %6912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6911)  ; Dot3(ax,ay,az,bx,by,bz)
  %6913 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6908, float %6909, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6914 = fdiv fast float 1.000000e+00, %6913
  %6915 = fmul fast float %6914, %6912
  %6916 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6898, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6917 = fcmp fast ogt float %6916, 0.000000e+00
  %6918 = fcmp fast olt float %6916, 0.000000e+00
  %6919 = zext i1 %6917 to i32
  %6920 = zext i1 %6918 to i32
  %6921 = sub nsw i32 %6919, %6920
  %6922 = sitofp i32 %6921 to float
  %6923 = fsub fast float %6904, %4449
  %6924 = call float @dx.op.dot3.f32(i32 55, float %6707, float %6708, float %6923, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6925 = fcmp fast ogt float %6924, 0.000000e+00
  %6926 = fcmp fast olt float %6924, 0.000000e+00
  %6927 = zext i1 %6925 to i32
  %6928 = zext i1 %6926 to i32
  %6929 = sub nsw i32 %6927, %6928
  %6930 = sitofp i32 %6929 to float
  %6931 = fcmp fast une float %6922, %6930
  br i1 %6931, label %6932, label %6942

; <label>:6932                                    ; preds = %6892
  %6933 = fmul fast float %6915, %6910
  %6934 = fmul fast float %6915, %6909
  %6935 = fmul fast float %6915, %6908
  %6936 = fmul fast float %6935, %6935
  %6937 = fmul fast float %6934, %6934
  %6938 = fadd fast float %6936, %6937
  %6939 = fmul fast float %6933, %6933
  %6940 = fadd fast float %6938, %6939
  %6941 = call float @dx.op.unary.f32(i32 24, float %6940)  ; Sqrt(value)
  br label %6954

; <label>:6942                                    ; preds = %6892
  %6943 = icmp slt i32 %6921, 0
  br i1 %6943, label %6944, label %6954

; <label>:6944                                    ; preds = %6942
  %6945 = fsub fast float %193, %6679
  %6946 = fsub fast float %194, %6680
  %6947 = fsub fast float %195, %6904
  %6948 = fmul fast float %6945, %6945
  %6949 = fmul fast float %6946, %6946
  %6950 = fadd fast float %6948, %6949
  %6951 = fmul fast float %6947, %6947
  %6952 = fadd fast float %6950, %6951
  %6953 = call float @dx.op.unary.f32(i32 24, float %6952)  ; Sqrt(value)
  br label %6954

; <label>:6954                                    ; preds = %6944, %6942, %6932
  %6955 = phi float [ %6941, %6932 ], [ %6953, %6944 ], [ 0.000000e+00, %6942 ]
  %6956 = and i1 %6899, %6897
  %6957 = fsub fast float -0.000000e+00, %6955
  %6958 = select i1 %6956, float -0.000000e+00, float %6957
  %6959 = fmul fast float %4450, 0x3FF7154760000000
  %6960 = fmul fast float %6959, %6958
  %6961 = fmul fast float %4451, 0x3FF7154760000000
  %6962 = fmul fast float %6961, %6958
  %6963 = fmul fast float %4452, 0x3FF7154760000000
  %6964 = fmul fast float %6963, %6958
  %6965 = call float @dx.op.unary.f32(i32 21, float %6960)  ; Exp(value)
  %6966 = call float @dx.op.unary.f32(i32 21, float %6962)  ; Exp(value)
  %6967 = call float @dx.op.unary.f32(i32 21, float %6964)  ; Exp(value)
  %6968 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  %6969 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6970 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  %6971 = fmul fast float %6893, %6968
  %6972 = fmul fast float %6894, %6969
  %6973 = fmul fast float %6895, %6970
  %6974 = fsub fast float %6713, %5241
  %6975 = fsub fast float %6714, %5240
  %6976 = fsub fast float %6715, %5239
  %6977 = call float @dx.op.dot3.f32(i32 55, float %6974, float %6975, float %6976, float %6974, float %6975, float %6976)  ; Dot3(ax,ay,az,bx,by,bz)
  %6978 = call float @dx.op.unary.f32(i32 25, float %6977)  ; Rsqrt(value)
  %6979 = fmul fast float %6978, %6974
  %6980 = fmul fast float %6978, %6975
  %6981 = fmul fast float %6978, %6976
  %6982 = call float @dx.op.dot3.f32(i32 55, float %6713, float %6714, float %6715, float %5248, float %5249, float %5250)  ; Dot3(ax,ay,az,bx,by,bz)
  %6983 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5237, float %5236, float %6979, float %6980, float %6981)  ; Dot3(ax,ay,az,bx,by,bz)
  %6984 = call float @dx.op.unary.f32(i32 7, float %6982)  ; Saturate(value)
  %6985 = fmul fast float %6984, %6720
  %6986 = fmul fast float %6984, %6984
  %6987 = fmul fast float %6986, %5269
  %6988 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6989 = fmul fast float %6985, %6988
  %6990 = bitcast float %6710 to i32
  %6991 = ashr i32 %6990, 1
  %6992 = sub nsw i32 1597463007, %6991
  %6993 = bitcast i32 %6992 to float
  %6994 = fmul fast float %6993, %6707
  %6995 = fmul fast float %6993, %6708
  %6996 = fmul fast float %6993, %6709
  %6997 = fsub fast float %6994, %5241
  %6998 = fsub fast float %6995, %5240
  %6999 = fsub fast float %6996, %5239
  %7000 = call float @dx.op.dot3.f32(i32 55, float %6997, float %6998, float %6999, float %6997, float %6998, float %6999)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = call float @dx.op.unary.f32(i32 25, float %7000)  ; Rsqrt(value)
  %7002 = fmul fast float %6997, %7001
  %7003 = fmul fast float %6998, %7001
  %7004 = fmul fast float %6999, %7001
  %7005 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %7002, float %7003, float %7004)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = fmul fast float %7005, %7005
  %7007 = call float @dx.op.unary.f32(i32 6, float %6982)  ; FAbs(value)
  %7008 = fsub fast float 1.000000e+00, %5251
  %7009 = call float @dx.op.binary.f32(i32 35, float %7008, float 0x3F847AE140000000)  ; FMax(a,b)
  %7010 = fmul fast float %7009, %7009
  %7011 = fmul fast float %7010, %7010
  %7012 = fsub fast float 1.000000e+00, %7011
  %7013 = fmul fast float %5256, %5256
  %7014 = fmul fast float %7013, %7012
  %7015 = fadd fast float %7014, %7011
  %7016 = bitcast float %7015 to i32
  %7017 = ashr i32 %7016, 1
  %7018 = add nsw i32 %7017, 532487669
  %7019 = bitcast i32 %7018 to float
  %7020 = fadd fast float %7019, %5256
  %7021 = fmul fast float %7011, %7006
  %7022 = fsub fast float 1.000000e+00, %7006
  %7023 = fadd fast float %7022, %7021
  %7024 = fmul fast float %7007, %7007
  %7025 = fmul fast float %7024, %7012
  %7026 = fadd fast float %7025, %7011
  %7027 = bitcast float %7026 to i32
  %7028 = ashr i32 %7027, 1
  %7029 = add nsw i32 %7028, 532487669
  %7030 = bitcast i32 %7029 to float
  %7031 = fadd fast float %7030, %7007
  %7032 = fmul fast float %7023, %7023
  %7033 = fmul fast float %7032, %7020
  %7034 = fmul fast float %7033, %7031
  %7035 = fdiv fast float 1.000000e+00, %7034
  %7036 = bitcast float %7011 to i32
  %7037 = sitofp i32 %7036 to float
  %7038 = fmul fast float %7037, 0x3FE7F73180000000
  %7039 = fadd fast float %7038, 0x41AFE27C40000000
  %7040 = fptosi float %7039 to i32
  %7041 = bitcast i32 %7040 to float
  %7042 = fmul fast float %6676, 0x3FD80E9D60000000
  %7043 = fmul fast float %7042, %6993
  %7044 = fadd fast float %7041, %7043
  %7045 = bitcast float %7044 to i32
  %7046 = sub nsw i32 2129859010, %7045
  %7047 = bitcast i32 %7046 to float
  %7048 = fmul fast float %7011, %7035
  %7049 = fmul fast float %7048, %7041
  %7050 = fmul fast float %7049, %7047
  %7051 = call float @dx.op.unary.f32(i32 6, float %6983)  ; FAbs(value)
  %7052 = fsub fast float 1.000000e+00, %7051
  %7053 = bitcast float %7052 to i32
  %7054 = sitofp i32 %7053 to float
  %7055 = fmul fast float %7054, 5.000000e+00
  %7056 = fadd fast float %7055, 0xC1EFBF8940000000
  %7057 = fptosi float %7056 to i32
  %7058 = bitcast i32 %7057 to float
  %7059 = fsub fast float 1.000000e+00, %5245
  %7060 = fsub fast float 1.000000e+00, %5246
  %7061 = fsub fast float 1.000000e+00, %5254
  %7062 = fmul fast float %7058, %7059
  %7063 = fmul fast float %7058, %7060
  %7064 = fmul fast float %7058, %7061
  %7065 = fadd fast float %7062, %5245
  %7066 = fadd fast float %7063, %5246
  %7067 = fadd fast float %7064, %5254
  br i1 %5381, label %7068, label %7091

; <label>:7068                                    ; preds = %6954
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4047, float %7051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.ResRet.f32 %7069, 2
  %7073 = fadd fast float %7070, -5.000000e-01
  %7074 = fadd fast float %7071, -5.000000e-01
  %7075 = fadd fast float %7072, -5.000000e-01
  %7076 = fmul fast float %5245, 4.000000e+00
  %7077 = fmul fast float %7076, %7059
  %7078 = fmul fast float %7077, %7073
  %7079 = fmul fast float %5246, 4.000000e+00
  %7080 = fmul fast float %7079, %7060
  %7081 = fmul fast float %7080, %7074
  %7082 = fmul fast float %5254, 4.000000e+00
  %7083 = fmul fast float %7082, %7061
  %7084 = fmul fast float %7083, %7075
  %7085 = fadd fast float %7078, %7065
  %7086 = fadd fast float %7081, %7066
  %7087 = fadd fast float %7084, %7067
  %7088 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7089 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7090 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  br label %7091

; <label>:7091                                    ; preds = %7068, %6954
  %7092 = phi float [ %7088, %7068 ], [ %7065, %6954 ]
  %7093 = phi float [ %7089, %7068 ], [ %7066, %6954 ]
  %7094 = phi float [ %7090, %7068 ], [ %7067, %6954 ]
  %7095 = fmul fast float %6982, 9.843750e-01
  %7096 = fadd fast float %7095, 7.812500e-03
  %7097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7096, float %5371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7098 = extractvalue %dx.types.ResRet.f32 %7097, 2
  %7099 = extractvalue %dx.types.ResRet.f32 %7097, 3
  %7100 = fmul fast float %7098, %5245
  %7101 = fmul fast float %7098, %5246
  %7102 = fmul fast float %7098, %5254
  %7103 = fadd fast float %7100, %7099
  %7104 = fadd fast float %7101, %7099
  %7105 = fadd fast float %7102, %7099
  br i1 %5381, label %7106, label %7129

; <label>:7106                                    ; preds = %7091
  %7107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4047, float %6982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = extractvalue %dx.types.ResRet.f32 %7107, 1
  %7110 = extractvalue %dx.types.ResRet.f32 %7107, 2
  %7111 = fadd fast float %7108, -5.000000e-01
  %7112 = fadd fast float %7109, -5.000000e-01
  %7113 = fadd fast float %7110, -5.000000e-01
  %7114 = fmul fast float %5245, 4.000000e+00
  %7115 = fmul fast float %7114, %7059
  %7116 = fmul fast float %7115, %7111
  %7117 = fmul fast float %5246, 4.000000e+00
  %7118 = fmul fast float %7117, %7060
  %7119 = fmul fast float %7118, %7112
  %7120 = fmul fast float %5254, 4.000000e+00
  %7121 = fmul fast float %7120, %7061
  %7122 = fmul fast float %7121, %7113
  %7123 = fadd fast float %7116, %7103
  %7124 = fadd fast float %7119, %7104
  %7125 = fadd fast float %7122, %7105
  %7126 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7127 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7128 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  br label %7129

; <label>:7129                                    ; preds = %7106, %7091
  %7130 = phi float [ %7126, %7106 ], [ %7103, %7091 ]
  %7131 = phi float [ %7127, %7106 ], [ %7104, %7091 ]
  %7132 = phi float [ %7128, %7106 ], [ %7105, %7091 ]
  %7133 = call float @dx.op.binary.f32(i32 35, float %7131, float %7132)  ; FMax(a,b)
  %7134 = call float @dx.op.binary.f32(i32 35, float %7130, float %7133)  ; FMax(a,b)
  %7135 = fsub fast float 1.000000e+00, %7134
  %7136 = fmul fast float %7092, %7050
  %7137 = fmul fast float %7093, %7050
  %7138 = fmul fast float %7094, %7050
  %7139 = fsub fast float 1.000000e+00, %6983
  %7140 = bitcast float %7139 to i32
  %7141 = sitofp i32 %7140 to float
  %7142 = fmul fast float %7141, 5.000000e+00
  %7143 = fadd fast float %7142, 0xC1EFBF8940000000
  %7144 = fptosi float %7143 to i32
  %7145 = bitcast i32 %7144 to float
  %7146 = fmul fast float %7145, %4048
  %7147 = fmul fast float %7135, %7146
  %7148 = fmul fast float %7147, %5431
  %7149 = fmul fast float %7147, %5432
  %7150 = fmul fast float %7147, %5433
  %7151 = fadd fast float %7148, %7136
  %7152 = fadd fast float %7149, %7137
  %7153 = fadd fast float %7150, %7138
  %7154 = fmul fast float %6971, %4044
  %7155 = fmul fast float %7154, %6989
  %7156 = fmul fast float %7155, %7135
  %7157 = fmul fast float %6972, %4044
  %7158 = fmul fast float %7157, %6989
  %7159 = fmul fast float %7158, %7135
  %7160 = fmul fast float %6973, %4044
  %7161 = fmul fast float %7160, %6989
  %7162 = fmul fast float %7161, %7135
  %7163 = fadd fast float %7156, %6650
  %7164 = fadd fast float %7159, %6651
  %7165 = fadd fast float %7162, %6652
  %7166 = fmul fast float %7155, %7151
  %7167 = fmul fast float %7158, %7152
  %7168 = fmul fast float %7161, %7153
  %7169 = fadd fast float %7166, %6647
  %7170 = fadd fast float %7167, %6648
  %7171 = fadd fast float %7168, %6649
  br label %6779

; <label>:7172                                    ; preds = %6779
  br label %7173

; <label>:7173                                    ; preds = %7172, %6613
  %7174 = phi float [ %6615, %6613 ], [ %6780, %7172 ]
  %7175 = phi float [ %6616, %6613 ], [ %6781, %7172 ]
  %7176 = phi float [ %6617, %6613 ], [ %6782, %7172 ]
  %7177 = phi float [ %6618, %6613 ], [ %6783, %7172 ]
  %7178 = phi float [ %6619, %6613 ], [ %6784, %7172 ]
  %7179 = phi float [ %6620, %6613 ], [ %6785, %7172 ]
  %7180 = add i32 %6614, 1
  %7181 = icmp ugt i32 %7180, %6610
  br i1 %7181, label %7182, label %6613

; <label>:7182                                    ; preds = %7173
  br label %7183

; <label>:7183                                    ; preds = %7182, %6563, %6553
  %7184 = phi float [ %6554, %6553 ], [ %6554, %6563 ], [ %7174, %7182 ]
  %7185 = phi float [ %6555, %6553 ], [ %6555, %6563 ], [ %7175, %7182 ]
  %7186 = phi float [ %6556, %6553 ], [ %6556, %6563 ], [ %7176, %7182 ]
  %7187 = phi float [ %6557, %6553 ], [ %6557, %6563 ], [ %7177, %7182 ]
  %7188 = phi float [ %6558, %6553 ], [ %6558, %6563 ], [ %7178, %7182 ]
  %7189 = phi float [ %6559, %6553 ], [ %6559, %6563 ], [ %7179, %7182 ]
  %7190 = fmul fast float %4044, %4044
  %7191 = fsub fast float 1.000000e+00, %7190
  %7192 = call float @dx.op.dot3.f32(i32 55, float %7191, float %7191, float %7191, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7193 = fsub fast float 1.000000e+00, %7192
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = fmul fast float %7195, %5437
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 3
  %7199 = fsub fast float 1.000000e+00, %4052
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7201 = fadd fast float %7189, %4050
  %7202 = fmul fast float %7201, %4052
  %7203 = fmul fast float %7200, %7198
  %7204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.f32 %7204, 3
  %7206 = fmul fast float %7187, %5242
  %7207 = fmul fast float %7188, %5243
  %7208 = fmul fast float %7189, %5244
  %7209 = fcmp fast ogt float %97, %228
  %7210 = and i1 %7209, %4455
  %7211 = or i1 %4461, %7210
  %7212 = icmp eq i32 %4454, 2
  %7213 = fcmp fast ole float %97, %228
  %7214 = and i1 %7213, %7212
  %7215 = or i1 %7214, %7211
  br i1 %7210, label %7216, label %7473

; <label>:7216                                    ; preds = %7183
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 3
  %7220 = fmul fast float %7218, %106
  %7221 = fmul fast float %7219, %107
  %7222 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7223 = call float @dx.op.unary.f32(i32 7, float %7221)  ; Saturate(value)
  %7224 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7222, float %7223, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.ResRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.ResRet.f32 %7224, 2
  %7228 = extractvalue %dx.types.ResRet.f32 %7224, 3
  %7229 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7222, float %7223, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7230 = extractvalue %dx.types.ResRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.ResRet.f32 %7229, 1
  %7232 = extractvalue %dx.types.ResRet.f32 %7229, 2
  %7233 = extractvalue %dx.types.ResRet.f32 %7229, 3
  %7234 = call float @dx.op.binary.f32(i32 35, float %7226, float %7227)  ; FMax(a,b)
  %7235 = call float @dx.op.binary.f32(i32 35, float %7225, float %7234)  ; FMax(a,b)
  %7236 = call float @dx.op.binary.f32(i32 35, float %7235, float %7228)  ; FMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 36, float %7231, float %7232)  ; FMin(a,b)
  %7238 = call float @dx.op.binary.f32(i32 36, float %7230, float %7237)  ; FMin(a,b)
  %7239 = call float @dx.op.binary.f32(i32 36, float %7238, float %7233)  ; FMin(a,b)
  %7240 = fmul fast float %7236, 2.550000e+02
  %7241 = fadd fast float %7240, 0x3F70101020000000
  %7242 = fptoui float %7241 to i32
  %7243 = fmul fast float %7239, 2.550000e+02
  %7244 = fadd fast float %7243, 0x3F70101020000000
  %7245 = fptoui float %7244 to i32
  %7246 = icmp ult i32 %7242, %7245
  br i1 %7246, label %7247, label %7415

; <label>:7247                                    ; preds = %7216
  %7248 = fcmp fast ogt float %96, 9.843750e-01
  %7249 = fadd fast float %97, -4.000000e+00
  %7250 = select i1 %7248, float -4.000000e+00, float %7249
  %7251 = call float @dx.op.binary.f32(i32 35, float %7250, float 0.000000e+00)  ; FMax(a,b)
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = fadd fast float %7253, %7251
  %7255 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %7256 = fmul fast float %7254, %7255
  %7257 = call float @dx.op.unary.f32(i32 23, float %7256)  ; Log(value)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7252, 3
  %7259 = fmul fast float %7258, %7257
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7262 = fmul fast float %7259, %7261
  %7263 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7264 = uitofp i32 %7242 to float
  %7265 = uitofp i32 %7245 to float
  %7266 = fadd fast float %7264, 5.000000e-01
  %7267 = fadd fast float %7265, 5.000000e-01
  %7268 = fmul fast float %7261, %7266
  %7269 = fmul fast float %7261, %7267
  %7270 = fadd fast float %7268, 0x3F0FFB4800000000
  %7271 = fadd fast float %7269, 0xBF0FFB4800000000
  %7272 = call float @dx.op.binary.f32(i32 35, float %7263, float %7270)  ; FMax(a,b)
  %7273 = call float @dx.op.binary.f32(i32 36, float %7272, float %7271)  ; FMin(a,b)
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 1
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7277 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7278 = fmul fast float %7275, %7273
  %7279 = fadd fast float %7277, %7278
  %7280 = fadd fast float %7277, %7276
  %7281 = fsub fast float %7275, %7276
  %7282 = fadd fast float %7281, %7277
  %7283 = call float @dx.op.binary.f32(i32 35, float %7279, float %7280)  ; FMax(a,b)
  %7284 = call float @dx.op.binary.f32(i32 36, float %7283, float %7282)  ; FMin(a,b)
  %7285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7222, float %7223, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.ResRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.ResRet.f32 %7285, 2
  %7289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.i32 %7289, 0
  %7291 = extractvalue %dx.types.CBufRet.i32 %7289, 1
  %7292 = uitofp i32 %7290 to float
  %7293 = uitofp i32 %7291 to float
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7297 = fmul fast float %7292, %7222
  %7298 = fmul fast float %7293, %7223
  %7299 = fadd fast float %7297, -5.000000e-01
  %7300 = fadd fast float %7298, -5.000000e-01
  %7301 = call float @dx.op.unary.f32(i32 22, float %7299)  ; Frc(value)
  %7302 = call float @dx.op.unary.f32(i32 22, float %7300)  ; Frc(value)
  %7303 = fmul fast float %7301, %7301
  %7304 = fmul fast float %7303, %7301
  %7305 = fsub fast float 3.000000e+00, %7301
  %7306 = fmul fast float %7303, %7305
  %7307 = fmul fast float %7301, 3.000000e+00
  %7308 = fmul fast float %7304, 3.000000e+00
  %7309 = fmul fast float %7303, 6.000000e+00
  %7310 = fsub fast float %7308, %7309
  %7311 = fadd fast float %7310, 4.000000e+00
  %7312 = fmul fast float %7311, 0x3FC5555560000000
  %7313 = fmul fast float %7304, -3.000000e+00
  %7314 = fadd fast float %7303, %7301
  %7315 = fmul fast float %7314, 3.000000e+00
  %7316 = fadd fast float %7313, 1.000000e+00
  %7317 = fadd fast float %7316, %7315
  %7318 = fmul fast float %7304, 0x3FC5555560000000
  %7319 = fmul fast float %7302, %7302
  %7320 = fmul fast float %7319, %7302
  %7321 = fsub fast float 3.000000e+00, %7302
  %7322 = fmul fast float %7319, %7321
  %7323 = fmul fast float %7302, 3.000000e+00
  %7324 = fmul fast float %7320, 3.000000e+00
  %7325 = fmul fast float %7319, 6.000000e+00
  %7326 = fsub fast float %7324, %7325
  %7327 = fadd fast float %7326, 4.000000e+00
  %7328 = fmul fast float %7327, 0x3FC5555560000000
  %7329 = fmul fast float %7320, -3.000000e+00
  %7330 = fadd fast float %7319, %7302
  %7331 = fmul fast float %7330, 3.000000e+00
  %7332 = fadd fast float %7329, 1.000000e+00
  %7333 = fadd fast float %7332, %7331
  %7334 = fmul fast float %7320, 0x3FC5555560000000
  %7335 = fadd fast float %7301, 1.000000e+00
  %7336 = fsub fast float 1.000000e+00, %7307
  %7337 = fadd fast float %7336, %7306
  %7338 = fadd fast float %7337, %7311
  %7339 = fmul fast float %7338, 0x3FC5555560000000
  %7340 = fdiv fast float %7312, %7339
  %7341 = fsub fast float %7335, %7340
  %7342 = fsub fast float 1.000000e+00, %7301
  %7343 = fadd fast float %7317, %7304
  %7344 = fmul fast float %7343, 0x3FC5555560000000
  %7345 = fdiv fast float %7318, %7344
  %7346 = fadd fast float %7342, %7345
  %7347 = fadd fast float %7302, 1.000000e+00
  %7348 = fsub fast float 1.000000e+00, %7323
  %7349 = fadd fast float %7348, %7322
  %7350 = fadd fast float %7349, %7327
  %7351 = fmul fast float %7350, 0x3FC5555560000000
  %7352 = fdiv fast float %7328, %7351
  %7353 = fsub fast float %7347, %7352
  %7354 = fsub fast float 1.000000e+00, %7302
  %7355 = fadd fast float %7333, %7320
  %7356 = fmul fast float %7355, 0x3FC5555560000000
  %7357 = fdiv fast float %7334, %7356
  %7358 = fadd fast float %7357, %7354
  %7359 = fmul fast float %7341, %7295
  %7360 = fsub fast float %7222, %7359
  %7361 = fmul fast float %7346, %7295
  %7362 = fadd fast float %7361, %7222
  %7363 = fmul fast float %7358, %7296
  %7364 = fadd fast float %7363, %7223
  %7365 = fmul fast float %7353, %7296
  %7366 = fsub fast float %7223, %7365
  %7367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7360, float %7366, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7362, float %7366, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7360, float %7364, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7362, float %7364, float %7284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.ResRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.ResRet.f32 %7379, 2
  %7383 = fsub fast float %7376, %7368
  %7384 = fsub fast float %7377, %7369
  %7385 = fsub fast float %7378, %7370
  %7386 = fmul fast float %7383, %7356
  %7387 = fmul fast float %7384, %7356
  %7388 = fmul fast float %7385, %7356
  %7389 = fadd fast float %7386, %7368
  %7390 = fadd fast float %7387, %7369
  %7391 = fadd fast float %7388, %7370
  %7392 = fsub fast float %7380, %7372
  %7393 = fsub fast float %7381, %7373
  %7394 = fsub fast float %7382, %7374
  %7395 = fmul fast float %7392, %7356
  %7396 = fmul fast float %7393, %7356
  %7397 = fmul fast float %7394, %7356
  %7398 = fsub fast float %7372, %7389
  %7399 = fadd fast float %7398, %7395
  %7400 = fsub fast float %7373, %7390
  %7401 = fadd fast float %7400, %7396
  %7402 = fsub fast float %7374, %7391
  %7403 = fadd fast float %7402, %7397
  %7404 = fmul fast float %7399, %7344
  %7405 = fmul fast float %7401, %7344
  %7406 = fmul fast float %7403, %7344
  %7407 = fadd fast float %7404, %7389
  %7408 = fadd fast float %7405, %7390
  %7409 = fadd fast float %7406, %7391
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7412 = fmul fast float %7407, %7411
  %7413 = fmul fast float %7408, %7411
  %7414 = fmul fast float %7409, %7411
  br label %7415

; <label>:7415                                    ; preds = %7247, %7216
  %7416 = phi float [ %7286, %7247 ], [ 1.000000e+00, %7216 ]
  %7417 = phi float [ %7287, %7247 ], [ 1.000000e+00, %7216 ]
  %7418 = phi float [ %7288, %7247 ], [ 1.000000e+00, %7216 ]
  %7419 = phi float [ %7412, %7247 ], [ 0.000000e+00, %7216 ]
  %7420 = phi float [ %7413, %7247 ], [ 0.000000e+00, %7216 ]
  %7421 = phi float [ %7414, %7247 ], [ 0.000000e+00, %7216 ]
  %7422 = fmul fast float %7419, %7193
  %7423 = fmul fast float %7420, %7193
  %7424 = fmul fast float %7421, %7193
  %7425 = call float @dx.op.dot3.f32(i32 55, float %7416, float %7417, float %7418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7426 = call float @dx.op.dot3.f32(i32 55, float %7422, float %7423, float %7424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = select i1 %265, float %7425, float %7416
  %7428 = select i1 %265, float %7425, float %7417
  %7429 = select i1 %265, float 1.000000e+00, float %7418
  %7430 = select i1 %265, float %7426, float %7422
  %7431 = select i1 %265, float 0.000000e+00, float %7423
  %7432 = select i1 %265, float 0.000000e+00, float %7424
  %7433 = fmul fast float %7427, %7206
  %7434 = fmul fast float %7428, %7207
  %7435 = fmul fast float %7429, %7208
  %7436 = fadd fast float %7433, %7430
  %7437 = fadd fast float %7434, %7431
  %7438 = fadd fast float %7432, %7435
  %7439 = fmul fast float %7427, %7184
  %7440 = fmul fast float %7428, %7185
  %7441 = fmul fast float %7429, %7186
  %7442 = fmul fast float %142, %7218
  %7443 = fmul fast float %144, %7219
  %7444 = fsub fast float 1.000000e+00, %7442
  %7445 = fsub fast float 1.000000e+00, %7443
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7450 = fmul fast float %7444, %7447
  %7451 = fmul fast float %7444, %7448
  %7452 = fmul fast float %7444, %7449
  %7453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.CBufRet.f32 %7453, 1
  %7456 = extractvalue %dx.types.CBufRet.f32 %7453, 2
  %7457 = fmul fast float %7445, %7454
  %7458 = fmul fast float %7445, %7455
  %7459 = fmul fast float %7445, %7456
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7464 = fadd fast float %7457, %7461
  %7465 = fadd fast float %7464, %7450
  %7466 = fadd fast float %7458, %7462
  %7467 = fadd fast float %7466, %7451
  %7468 = fadd fast float %7459, %7463
  %7469 = fadd fast float %7468, %7452
  %7470 = fmul fast float %7465, %228
  %7471 = fmul fast float %7467, %228
  %7472 = fmul fast float %7469, %228
  br label %7473

; <label>:7473                                    ; preds = %7415, %7183
  %7474 = phi float [ %7470, %7415 ], [ %193, %7183 ]
  %7475 = phi float [ %7471, %7415 ], [ %194, %7183 ]
  %7476 = phi float [ %7472, %7415 ], [ %195, %7183 ]
  %7477 = phi float [ %228, %7415 ], [ %97, %7183 ]
  %7478 = phi float [ %7436, %7415 ], [ %7206, %7183 ]
  %7479 = phi float [ %7437, %7415 ], [ %7207, %7183 ]
  %7480 = phi float [ %7438, %7415 ], [ %7208, %7183 ]
  %7481 = phi float [ %7439, %7415 ], [ %7184, %7183 ]
  %7482 = phi float [ %7440, %7415 ], [ %7185, %7183 ]
  %7483 = phi float [ %7441, %7415 ], [ %7186, %7183 ]
  %7484 = phi float [ %7416, %7415 ], [ 1.000000e+00, %7183 ]
  br i1 %7215, label %8639, label %7485

; <label>:7485                                    ; preds = %7473
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7491, 3
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7500 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.CBufRet.f32 %7501, 2
  %7505 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 3
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 3
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7512 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7513 = fcmp fast olt float %7512, -5.000000e-01
  %7514 = call float @dx.op.dot3.f32(i32 55, float %7474, float %7475, float %7476, float %7474, float %7475, float %7476)  ; Dot3(ax,ay,az,bx,by,bz)
  %7515 = call float @dx.op.unary.f32(i32 25, float %7514)  ; Rsqrt(value)
  %7516 = fmul fast float %7515, %7514
  %7517 = fmul fast float %7515, %7474
  %7518 = fmul fast float %7515, %7475
  %7519 = fmul fast float %7515, %7476
  %7520 = fadd fast float %7516, %7490
  %7521 = call float @dx.op.dot3.f32(i32 55, float %7517, float %7518, float %7519, float %7487, float %7488, float %7489)  ; Dot3(ax,ay,az,bx,by,bz)
  %7522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.i32 %7522, 1
  %7524 = and i32 %7523, 1
  %7525 = icmp ne i32 %7524, 0
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 2
  %7528 = fcmp fast ogt float %7527, 0.000000e+00
  %7529 = and i1 %7525, %7528
  br i1 %7529, label %7530, label %7936, !dx.controlflow.hints !125

; <label>:7530                                    ; preds = %7485
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 3
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7537 = fsub fast float %7534, %7536
  %7538 = and i32 %7523, 2
  %7539 = extractvalue %dx.types.CBufRet.i32 %7522, 0
  %7540 = call i32 @dx.op.binary.i32(i32 40, i32 %7539, i32 3)  ; UMin(a,b)
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7545 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7546 = fsub fast float %7542, %7544
  %7547 = fsub fast float %7543, %7545
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  %7550 = fcmp fast ogt float %7549, 0.000000e+00
  %7551 = fsub fast float -0.000000e+00, %7546
  %7552 = fsub fast float -0.000000e+00, %7547
  %7553 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7517, float %7518)  ; Dot2(ax,ay,bx,by)
  %7554 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7551, float %7552)  ; Dot2(ax,ay,bx,by)
  %7555 = fmul fast float %7554, 2.000000e+00
  %7556 = call float @dx.op.dot2.f32(i32 54, float %7551, float %7552, float %7551, float %7552)  ; Dot2(ax,ay,bx,by)
  %7557 = fmul fast float %7549, %7549
  %7558 = fsub fast float %7556, %7557
  %7559 = fmul fast float %7555, %7555
  %7560 = fmul fast float %7553, 4.000000e+00
  %7561 = fmul fast float %7560, %7558
  %7562 = fsub fast float %7559, %7561
  %7563 = fcmp fast ogt float %7562, 0.000000e+00
  br i1 %7563, label %7564, label %7579

; <label>:7564                                    ; preds = %7530
  %7565 = fcmp fast ogt float %7555, 0.000000e+00
  %7566 = call float @dx.op.unary.f32(i32 24, float %7562)  ; Sqrt(value)
  %7567 = fsub fast float -0.000000e+00, %7566
  %7568 = select i1 %7565, float %7566, float %7567
  %7569 = fadd fast float %7568, %7555
  %7570 = fmul float %7569, -5.000000e-01
  %7571 = fdiv fast float %7570, %7553
  %7572 = call float @dx.op.binary.f32(i32 35, float %7571, float 0.000000e+00)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 36, float %7516, float %7572)  ; FMin(a,b)
  %7574 = fdiv fast float %7558, %7570
  %7575 = call float @dx.op.binary.f32(i32 35, float %7574, float 0.000000e+00)  ; FMax(a,b)
  %7576 = call float @dx.op.binary.f32(i32 36, float %7516, float %7575)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 36, float %7573, float %7576)  ; FMin(a,b)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7573, float %7576)  ; FMax(a,b)
  br label %7579

; <label>:7579                                    ; preds = %7564, %7530
  %7580 = phi float [ %7578, %7564 ], [ -1.000000e+00, %7530 ]
  %7581 = phi float [ %7577, %7564 ], [ -1.000000e+00, %7530 ]
  %7582 = phi i1 [ true, %7564 ], [ false, %7530 ]
  %7583 = and i1 %7550, %7582
  br i1 %7583, label %7584, label %7586

; <label>:7584                                    ; preds = %7579
  %7585 = fcmp fast oeq float %7581, %7580
  br i1 %7585, label %7889, label %7587

; <label>:7586                                    ; preds = %7579
  br i1 %7550, label %7889, label %7587

; <label>:7587                                    ; preds = %7586, %7584
  %7588 = phi float [ %7516, %7586 ], [ %7580, %7584 ]
  %7589 = phi float [ 0.000000e+00, %7586 ], [ %7581, %7584 ]
  %7590 = icmp ne i32 %7538, 0
  %7591 = fmul fast float %7588, %7519
  %7592 = fadd fast float %7591, %7532
  %7593 = fmul fast float %7592, %7588
  %7594 = select i1 %7590, float 0.000000e+00, float %7593
  %7595 = fcmp fast oeq float %7519, 0.000000e+00
  %7596 = fdiv fast float %7537, %7519
  %7597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7596)  ; FMax(a,b)
  %7598 = select i1 %7595, float %7588, float %7597
  %7599 = call float @dx.op.binary.f32(i32 36, float %7588, float %7598)  ; FMin(a,b)
  %7600 = fcmp fast ogt float %7519, 0.000000e+00
  %7601 = fcmp fast olt float %7537, 0.000000e+00
  br i1 %7600, label %7602, label %7659

; <label>:7602                                    ; preds = %7587
  %7603 = icmp eq i32 %7538, 0
  br i1 %7601, label %7604, label %7648

; <label>:7604                                    ; preds = %7602
  %7605 = select i1 %7603, float %7588, float 0.000000e+00
  %7606 = fsub fast float -0.000000e+00, %7605
  %7607 = call float @dx.op.unary.f32(i32 6, float %7606)  ; FAbs(value)
  %7608 = fmul fast float %7605, %7519
  %7609 = fadd fast float %7608, %7532
  %7610 = fmul fast float %7607, %7609
  %7611 = fsub fast float %7594, %7610
  %7612 = fsub fast float %7588, %7607
  %7613 = select i1 %7603, float %7612, float 0.000000e+00
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7622 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 3
  %7625 = call float @dx.op.binary.f32(i32 36, float %7611, float %7624)  ; FMin(a,b)
  %7626 = fmul fast float %7622, %7613
  %7627 = call float @dx.op.unary.f32(i32 7, float %7626)  ; Saturate(value)
  %7628 = fsub fast float %7619, %7615
  %7629 = fsub fast float %7620, %7616
  %7630 = fsub fast float %7621, %7617
  %7631 = fmul fast float %7627, %7628
  %7632 = fmul fast float %7627, %7629
  %7633 = fmul fast float %7627, %7630
  %7634 = fadd fast float %7631, %7615
  %7635 = fadd fast float %7632, %7616
  %7636 = fadd fast float %7633, %7617
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.CBufRet.f32 %7637, 1
  %7640 = fadd fast float %7639, %7638
  %7641 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7637, 2
  %7643 = extractvalue %dx.types.CBufRet.f32 %7637, 3
  %7644 = fadd fast float %7643, %7642
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = fmul fast float %7641, %7625
  %7647 = fmul fast float %7646, %7645
  br label %7889

; <label>:7648                                    ; preds = %7602
  br i1 %7603, label %7649, label %7670

; <label>:7649                                    ; preds = %7648
  %7650 = call float @dx.op.binary.f32(i32 36, float %7599, float %7589)  ; FMin(a,b)
  %7651 = fsub fast float %7599, %7650
  %7652 = fsub fast float %7651, %7588
  %7653 = call float @dx.op.unary.f32(i32 6, float %7652)  ; FAbs(value)
  %7654 = fadd fast float %7651, %7588
  %7655 = fmul fast float %7654, %7519
  %7656 = fadd fast float %7655, %7532
  %7657 = fmul fast float %7656, %7653
  %7658 = fsub fast float %7594, %7657
  br label %7670

; <label>:7659                                    ; preds = %7587
  br i1 %7601, label %7660, label %7670

; <label>:7660                                    ; preds = %7659
  %7661 = call float @dx.op.binary.f32(i32 35, float %7589, float %7599)  ; FMax(a,b)
  %7662 = icmp eq i32 %7538, 0
  %7663 = select i1 %7662, float %7599, float 0.000000e+00
  %7664 = fsub fast float -0.000000e+00, %7663
  %7665 = call float @dx.op.unary.f32(i32 6, float %7664)  ; FAbs(value)
  %7666 = fmul fast float %7663, %7519
  %7667 = fadd fast float %7666, %7532
  %7668 = fmul fast float %7665, %7667
  %7669 = fsub fast float %7594, %7668
  br label %7670

; <label>:7670                                    ; preds = %7660, %7659, %7649, %7648
  %7671 = phi float [ %7589, %7648 ], [ %7589, %7649 ], [ %7661, %7660 ], [ %7589, %7659 ]
  %7672 = phi float [ 0.000000e+00, %7648 ], [ %7653, %7649 ], [ %7665, %7660 ], [ 0.000000e+00, %7659 ]
  %7673 = phi float [ %7594, %7648 ], [ %7658, %7649 ], [ %7669, %7660 ], [ %7594, %7659 ]
  %7674 = phi float [ %7599, %7648 ], [ %7599, %7649 ], [ %7588, %7660 ], [ %7588, %7659 ]
  %7675 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7675, align 4, !tbaa !126, !noalias !128
  %7676 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7676, align 4, !tbaa !126, !noalias !128
  %7677 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7677, align 4, !tbaa !126, !noalias !128
  %7678 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7678, align 4, !tbaa !126, !noalias !128
  %7679 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7679, align 4, !tbaa !126, !noalias !128
  %7680 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7680, align 4, !tbaa !126, !noalias !128
  %7681 = icmp sgt i32 %7540, 0
  br i1 %7681, label %7682, label %7743

; <label>:7682                                    ; preds = %7670
  br label %7683

; <label>:7683                                    ; preds = %7732, %7682
  %7684 = phi i32 [ %7733, %7732 ], [ 0, %7682 ]
  %7685 = phi i32 [ %7734, %7732 ], [ 0, %7682 ]
  %7686 = add nuw i32 %7685, 171
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7686)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 1
  %7693 = fsub fast float %7688, %7691
  %7694 = fsub fast float %7689, %7692
  %7695 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7696 = fsub fast float -0.000000e+00, %7693
  %7697 = fsub fast float -0.000000e+00, %7694
  %7698 = call float @dx.op.dot2.f32(i32 54, float %7517, float %7518, float %7696, float %7697)  ; Dot2(ax,ay,bx,by)
  %7699 = fmul fast float %7698, 2.000000e+00
  %7700 = call float @dx.op.dot2.f32(i32 54, float %7696, float %7697, float %7696, float %7697)  ; Dot2(ax,ay,bx,by)
  %7701 = fmul fast float %7695, %7695
  %7702 = fsub fast float %7700, %7701
  %7703 = fmul fast float %7699, %7699
  %7704 = fmul fast float %7560, %7702
  %7705 = fsub fast float %7703, %7704
  %7706 = fcmp fast ogt float %7705, 0.000000e+00
  br i1 %7706, label %7707, label %7722

; <label>:7707                                    ; preds = %7683
  %7708 = fcmp fast ogt float %7699, 0.000000e+00
  %7709 = call float @dx.op.unary.f32(i32 24, float %7705)  ; Sqrt(value)
  %7710 = fsub fast float -0.000000e+00, %7709
  %7711 = select i1 %7708, float %7709, float %7710
  %7712 = fadd fast float %7711, %7699
  %7713 = fmul float %7712, -5.000000e-01
  %7714 = fdiv fast float %7713, %7553
  %7715 = call float @dx.op.binary.f32(i32 35, float %7714, float 0.000000e+00)  ; FMax(a,b)
  %7716 = call float @dx.op.binary.f32(i32 36, float %7588, float %7715)  ; FMin(a,b)
  %7717 = fdiv fast float %7702, %7713
  %7718 = call float @dx.op.binary.f32(i32 35, float %7717, float 0.000000e+00)  ; FMax(a,b)
  %7719 = call float @dx.op.binary.f32(i32 36, float %7588, float %7718)  ; FMin(a,b)
  %7720 = call float @dx.op.binary.f32(i32 36, float %7716, float %7719)  ; FMin(a,b)
  %7721 = call float @dx.op.binary.f32(i32 35, float %7716, float %7719)  ; FMax(a,b)
  br label %7722

; <label>:7722                                    ; preds = %7707, %7683
  %7723 = phi float [ %7721, %7707 ], [ -1.000000e+00, %7683 ]
  %7724 = phi float [ %7720, %7707 ], [ -1.000000e+00, %7683 ]
  %7725 = phi i1 [ true, %7707 ], [ false, %7683 ]
  br i1 %7725, label %7726, label %7732

; <label>:7726                                    ; preds = %7722
  %7727 = call float @dx.op.binary.f32(i32 35, float %7671, float %7724)  ; FMax(a,b)
  %7728 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7685
  store float %7727, float* %7728, align 4, !tbaa !126, !noalias !128
  %7729 = call float @dx.op.binary.f32(i32 35, float %7671, float %7723)  ; FMax(a,b)
  %7730 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7685
  store float %7729, float* %7730, align 4, !tbaa !126, !noalias !128
  %7731 = add nsw i32 %7684, 1
  br label %7732

; <label>:7732                                    ; preds = %7726, %7722
  %7733 = phi i32 [ %7731, %7726 ], [ %7684, %7722 ]
  %7734 = add nuw nsw i32 %7685, 1
  %7735 = icmp eq i32 %7734, %7540
  br i1 %7735, label %7736, label %7683

; <label>:7736                                    ; preds = %7732
  %7737 = load float, float* %7677, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7738 = load float, float* %7676, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %7739 = load float, float* %7675, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %7740 = load float, float* %7680, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7741 = load float, float* %7679, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %7742 = load float, float* %7678, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %7743

; <label>:7743                                    ; preds = %7736, %7670
  %7744 = phi float [ -1.000000e+00, %7670 ], [ %7742, %7736 ]
  %7745 = phi float [ -1.000000e+00, %7670 ], [ %7741, %7736 ]
  %7746 = phi float [ -1.000000e+00, %7670 ], [ %7740, %7736 ]
  %7747 = phi float [ -1.000000e+00, %7670 ], [ %7739, %7736 ]
  %7748 = phi float [ -1.000000e+00, %7670 ], [ %7738, %7736 ]
  %7749 = phi float [ -1.000000e+00, %7670 ], [ %7737, %7736 ]
  %7750 = phi i32 [ 0, %7670 ], [ %7733, %7736 ]
  %7751 = call float @dx.op.binary.f32(i32 36, float %7748, float %7749)  ; FMin(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7747, float %7751)  ; FMin(a,b)
  %7753 = call float @dx.op.binary.f32(i32 35, float %7747, float %7748)  ; FMax(a,b)
  %7754 = call float @dx.op.binary.f32(i32 36, float %7753, float %7749)  ; FMin(a,b)
  %7755 = call float @dx.op.binary.f32(i32 36, float %7747, float %7748)  ; FMin(a,b)
  %7756 = call float @dx.op.binary.f32(i32 35, float %7755, float %7754)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 35, float %7748, float %7749)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7747, float %7757)  ; FMax(a,b)
  store float %7752, float* %7675, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %7756, float* %7676, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %7758, float* %7677, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7759 = call float @dx.op.binary.f32(i32 36, float %7745, float %7746)  ; FMin(a,b)
  %7760 = call float @dx.op.binary.f32(i32 36, float %7744, float %7759)  ; FMin(a,b)
  %7761 = call float @dx.op.binary.f32(i32 35, float %7744, float %7745)  ; FMax(a,b)
  %7762 = call float @dx.op.binary.f32(i32 36, float %7761, float %7746)  ; FMin(a,b)
  %7763 = call float @dx.op.binary.f32(i32 36, float %7744, float %7745)  ; FMin(a,b)
  %7764 = call float @dx.op.binary.f32(i32 35, float %7763, float %7762)  ; FMax(a,b)
  %7765 = call float @dx.op.binary.f32(i32 35, float %7745, float %7746)  ; FMax(a,b)
  %7766 = call float @dx.op.binary.f32(i32 35, float %7744, float %7765)  ; FMax(a,b)
  store float %7760, float* %7678, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %7764, float* %7679, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %7766, float* %7680, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7767 = sub nsw i32 3, %7750
  %7768 = icmp sgt i32 %7767, 2
  br i1 %7768, label %7769, label %7807

; <label>:7769                                    ; preds = %7743
  %7770 = icmp eq i32 %7538, 0
  %7771 = fsub fast float %7588, %7672
  %7772 = select i1 %7770, float %7771, float %7672
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7781 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 3
  %7784 = call float @dx.op.binary.f32(i32 36, float %7673, float %7783)  ; FMin(a,b)
  %7785 = fmul fast float %7781, %7772
  %7786 = call float @dx.op.unary.f32(i32 7, float %7785)  ; Saturate(value)
  %7787 = fsub fast float %7778, %7774
  %7788 = fsub fast float %7779, %7775
  %7789 = fsub fast float %7780, %7776
  %7790 = fmul fast float %7786, %7787
  %7791 = fmul fast float %7786, %7788
  %7792 = fmul fast float %7786, %7789
  %7793 = fadd fast float %7790, %7774
  %7794 = fadd fast float %7791, %7775
  %7795 = fadd fast float %7792, %7776
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7799 = fadd fast float %7798, %7797
  %7800 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7801 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7802 = extractvalue %dx.types.CBufRet.f32 %7796, 3
  %7803 = fadd fast float %7802, %7801
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = fmul fast float %7800, %7784
  %7806 = fmul fast float %7805, %7804
  br label %7889

; <label>:7807                                    ; preds = %7743
  %7808 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7767
  %7809 = load float, float* %7808, align 4, !tbaa !126, !noalias !128
  %7810 = fcmp fast olt float %7809, %7674
  %7811 = icmp sgt i32 %7750, 0
  %7812 = and i1 %7811, %7810
  br i1 %7812, label %7813, label %7850

; <label>:7813                                    ; preds = %7807
  br label %7814

; <label>:7814                                    ; preds = %7843, %7813
  %7815 = phi float [ %7844, %7843 ], [ %7672, %7813 ]
  %7816 = phi float [ %7845, %7843 ], [ %7673, %7813 ]
  %7817 = phi float [ %7825, %7843 ], [ %7809, %7813 ]
  %7818 = phi i32 [ %7822, %7843 ], [ %7767, %7813 ]
  %7819 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7818
  %7820 = load float, float* %7819, align 4, !tbaa !126, !noalias !128
  %7821 = icmp slt i32 %7818, 2
  %7822 = add nsw i32 %7818, 1
  %7823 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7822
  %7824 = load float, float* %7823, align 4, !tbaa !126, !noalias !128
  %7825 = select i1 %7821, float %7824, float %7588
  %7826 = call float @dx.op.binary.f32(i32 36, float %7825, float %7820)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 36, float %7674, float %7826)  ; FMin(a,b)
  %7828 = icmp eq i32 %7538, 0
  %7829 = fadd fast float %7827, %7817
  %7830 = fmul fast float %7829, %7519
  %7831 = fadd fast float %7830, %7532
  br i1 %7828, label %7837, label %7832

; <label>:7832                                    ; preds = %7814
  %7833 = fsub fast float %7827, %7817
  %7834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7833)  ; FMax(a,b)
  %7835 = fmul fast float %7834, %7831
  %7836 = fadd fast float %7835, %7816
  br label %7843

; <label>:7837                                    ; preds = %7814
  %7838 = fsub fast float %7817, %7827
  %7839 = call float @dx.op.unary.f32(i32 6, float %7838)  ; FAbs(value)
  %7840 = fadd fast float %7839, %7815
  %7841 = fmul fast float %7839, %7831
  %7842 = fsub fast float %7816, %7841
  br label %7843

; <label>:7843                                    ; preds = %7837, %7832
  %7844 = phi float [ %7834, %7832 ], [ %7840, %7837 ]
  %7845 = phi float [ %7836, %7832 ], [ %7842, %7837 ]
  %7846 = fcmp fast olt float %7825, %7674
  %7847 = icmp slt i32 %7822, 3
  %7848 = and i1 %7847, %7846
  br i1 %7848, label %7814, label %7849

; <label>:7849                                    ; preds = %7843
  br label %7850

; <label>:7850                                    ; preds = %7849, %7807
  %7851 = phi float [ %7672, %7807 ], [ %7844, %7849 ]
  %7852 = phi float [ %7673, %7807 ], [ %7845, %7849 ]
  %7853 = fsub fast float %7588, %7851
  %7854 = select i1 %7590, float %7851, float %7853
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.CBufRet.f32 %7859, 2
  %7863 = extractvalue %dx.types.CBufRet.f32 %7859, 3
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 3
  %7866 = call float @dx.op.binary.f32(i32 36, float %7852, float %7865)  ; FMin(a,b)
  %7867 = fmul fast float %7863, %7854
  %7868 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7869 = fsub fast float %7860, %7856
  %7870 = fsub fast float %7861, %7857
  %7871 = fsub fast float %7862, %7858
  %7872 = fmul fast float %7868, %7869
  %7873 = fmul fast float %7868, %7870
  %7874 = fmul fast float %7868, %7871
  %7875 = fadd fast float %7872, %7856
  %7876 = fadd fast float %7873, %7857
  %7877 = fadd fast float %7874, %7858
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = fadd fast float %7880, %7879
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7884 = extractvalue %dx.types.CBufRet.f32 %7878, 3
  %7885 = fadd fast float %7884, %7883
  %7886 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7887 = fmul fast float %7882, %7866
  %7888 = fmul fast float %7887, %7886
  br label %7889

; <label>:7889                                    ; preds = %7850, %7769, %7604, %7586, %7584
  %7890 = phi float [ %7613, %7604 ], [ %7772, %7769 ], [ %7854, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7891 = phi float [ %7647, %7604 ], [ %7806, %7769 ], [ %7888, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7892 = phi float [ %7634, %7604 ], [ %7793, %7769 ], [ %7875, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7893 = phi float [ %7635, %7604 ], [ %7794, %7769 ], [ %7876, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7894 = phi float [ %7636, %7604 ], [ %7795, %7769 ], [ %7877, %7850 ], [ 0.000000e+00, %7584 ], [ 0.000000e+00, %7586 ]
  %7895 = fmul fast float %7527, %7891
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 2
  %7898 = fsub fast float %7534, %7897
  %7899 = fcmp fast olt float %7895, -2.000000e+01
  %7900 = call float @dx.op.unary.f32(i32 21, float %7895)  ; Exp(value)
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.f32 %7904, 2
  %7906 = fmul fast float %7903, %7898
  %7907 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7908 = fsub fast float 1.000000e+00, %7907
  %7909 = fmul fast float %7519, 5.000000e-01
  %7910 = fadd fast float %7909, 5.000000e-01
  %7911 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  %7912 = fsub fast float 1.000000e+00, %7911
  %7913 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7908)  ; FMax(a,b)
  %7914 = fdiv fast float %7912, %7913
  %7915 = fsub fast float %7898, %7476
  %7916 = call float @dx.op.unary.f32(i32 6, float %7915)  ; FAbs(value)
  %7917 = fmul fast float %7916, %7902
  %7918 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7919 = fsub fast float 1.000000e+00, %7917
  %7920 = fmul fast float %7919, %7918
  %7921 = fadd fast float %7920, %7917
  %7922 = fmul fast float %7905, %7898
  %7923 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7924 = fsub fast float 1.000000e+00, %7921
  %7925 = fmul fast float %7924, %7923
  %7926 = fadd fast float %7925, %7921
  %7927 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7928 = fadd fast float %7900, -1.000000e+00
  %7929 = select i1 %7899, float -1.000000e+00, float %7928
  %7930 = fmul fast float %7927, %7929
  %7931 = fadd fast float %7930, 1.000000e+00
  %7932 = fsub fast float -0.000000e+00, %7930
  %7933 = fmul fast float %7892, %7932
  %7934 = fmul fast float %7893, %7932
  %7935 = fmul fast float %7894, %7932
  br label %7936

; <label>:7936                                    ; preds = %7889, %7485
  %7937 = phi float [ %7890, %7889 ], [ 0.000000e+00, %7485 ]
  %7938 = phi float [ %7931, %7889 ], [ 1.000000e+00, %7485 ]
  %7939 = phi float [ %7933, %7889 ], [ 0.000000e+00, %7485 ]
  %7940 = phi float [ %7934, %7889 ], [ 0.000000e+00, %7485 ]
  %7941 = phi float [ %7935, %7889 ], [ 0.000000e+00, %7485 ]
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 1
  %7944 = fsub fast float 1.000000e+00, %7938
  %7945 = fmul fast float %7944, %7520
  %7946 = fmul fast float %7945, %7943
  %7947 = fsub fast float %7520, %7946
  br i1 %7513, label %7948, label %7977, !dx.controlflow.hints !164

; <label>:7948                                    ; preds = %7936
  %7949 = fmul fast float %7521, %7510
  %7950 = fadd fast float %7949, %7511
  %7951 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  %7952 = fmul fast float %7492, %7947
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fmul fast float %7493, %7947
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = call float @dx.op.unary.f32(i32 21, float %7953)  ; Exp(value)
  %7957 = call float @dx.op.unary.f32(i32 21, float %7955)  ; Exp(value)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7500, float %7956)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 35, float %7500, float %7957)  ; FMax(a,b)
  %7960 = fsub fast float %7959, %7958
  %7961 = fmul fast float %7960, %7951
  %7962 = fadd fast float %7961, %7958
  %7963 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7964 = fsub fast float %7497, %7502
  %7965 = fsub fast float %7498, %7503
  %7966 = fsub fast float %7499, %7504
  %7967 = fmul fast float %7951, %7964
  %7968 = fmul fast float %7951, %7965
  %7969 = fmul fast float %7951, %7966
  %7970 = fadd fast float %7967, %7502
  %7971 = fadd fast float %7968, %7503
  %7972 = fadd fast float %7969, %7504
  %7973 = fsub fast float 1.000000e+00, %7963
  %7974 = fmul fast float %7973, %7970
  %7975 = fmul fast float %7973, %7971
  %7976 = fmul fast float %7973, %7972
  br label %8036

; <label>:7977                                    ; preds = %7936
  %7978 = fmul fast float %7947, %7509
  %7979 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7980 = fsub fast float 2.000000e+00, %7979
  %7981 = fmul fast float %7979, 9.921875e-01
  %7982 = fmul fast float %7981, %7980
  %7983 = fadd fast float %7982, 3.906250e-03
  %7984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7983, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7985 = extractvalue %dx.types.ResRet.f32 %7984, 0
  %7986 = fsub fast float %7979, %7985
  %7987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7986)  ; FMax(a,b)
  %7988 = fmul fast float %7495, %7476
  %7989 = call float @dx.op.unary.f32(i32 6, float %7988)  ; FAbs(value)
  %7990 = fcmp fast ogt float %7989, 0x3EB0C6F7A0000000
  br i1 %7990, label %7991, label %7997, !dx.controlflow.hints !165

; <label>:7991                                    ; preds = %7977
  %7992 = fmul fast float %7988, 0xBFF7154760000000
  %7993 = call float @dx.op.unary.f32(i32 21, float %7992)  ; Exp(value)
  %7994 = fsub fast float 1.000000e+00, %7993
  %7995 = fdiv fast float %7994, %7988
  %7996 = fmul fast float %7995, %7505
  br label %7997

; <label>:7997                                    ; preds = %7991, %7977
  %7998 = phi float [ %7996, %7991 ], [ %7505, %7977 ]
  %7999 = fadd fast float %7998, %7507
  %8000 = fmul fast float %7999, %7987
  %8001 = fmul fast float %7492, %8000
  %8002 = fsub fast float -0.000000e+00, %8001
  %8003 = fmul fast float %7493, %8000
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fmul fast float %7494, %8000
  %8006 = fsub fast float -0.000000e+00, %8005
  %8007 = call float @dx.op.unary.f32(i32 21, float %8002)  ; Exp(value)
  %8008 = call float @dx.op.unary.f32(i32 21, float %8004)  ; Exp(value)
  %8009 = call float @dx.op.unary.f32(i32 21, float %8006)  ; Exp(value)
  %8010 = fmul fast float %7521, %7521
  %8011 = fadd fast float %8010, 1.000000e+00
  %8012 = fmul fast float %8011, 0x3FAE8EC8A0000000
  %8013 = fmul fast float %8012, %7502
  %8014 = fmul fast float %8012, %7503
  %8015 = fmul fast float %8012, %7504
  %8016 = fmul fast float %7521, %7500
  %8017 = fsub fast float 1.000000e+00, %8016
  %8018 = fmul fast float %7500, %7500
  %8019 = fsub fast float 1.000000e+00, %8018
  %8020 = fmul fast float %8019, 0x3FB45F3060000000
  %8021 = fmul fast float %8017, %8017
  %8022 = fdiv fast float 1.000000e+00, %8021
  %8023 = fmul fast float %8020, %8022
  %8024 = fmul fast float %8023, %7497
  %8025 = fmul fast float %8023, %7498
  %8026 = fmul fast float %8023, %7499
  %8027 = fadd fast float %8024, %8013
  %8028 = fadd fast float %8025, %8014
  %8029 = fadd fast float %8026, %8015
  %8030 = fsub fast float 1.000000e+00, %8007
  %8031 = fsub fast float 1.000000e+00, %8008
  %8032 = fsub fast float 1.000000e+00, %8009
  %8033 = fmul fast float %8027, %8030
  %8034 = fmul fast float %8028, %8031
  %8035 = fmul fast float %8029, %8032
  br label %8036

; <label>:8036                                    ; preds = %7997, %7948
  %8037 = phi float [ %7974, %7948 ], [ %8033, %7997 ]
  %8038 = phi float [ %7975, %7948 ], [ %8034, %7997 ]
  %8039 = phi float [ %7976, %7948 ], [ %8035, %7997 ]
  %8040 = phi float [ %7963, %7948 ], [ %8007, %7997 ]
  %8041 = phi float [ %7963, %7948 ], [ %8008, %7997 ]
  %8042 = phi float [ %7963, %7948 ], [ %8009, %7997 ]
  br i1 %7529, label %8043, label %8241, !dx.controlflow.hints !166

; <label>:8043                                    ; preds = %8036
  %8044 = extractvalue %dx.types.CBufRet.f32 %7942, 0
  %8045 = fmul fast float %8044, %7944
  %8046 = fsub fast float %7939, %8037
  %8047 = fsub fast float %7940, %8038
  %8048 = fsub fast float %7941, %8039
  %8049 = fmul fast float %8045, %8046
  %8050 = fmul fast float %8045, %8047
  %8051 = fmul fast float %8045, %8048
  %8052 = fadd fast float %8049, %8037
  %8053 = fadd fast float %8050, %8038
  %8054 = fadd fast float %8051, %8039
  %8055 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8040)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8041)  ; FMax(a,b)
  %8057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8042)  ; FMax(a,b)
  %8058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7938)  ; FMax(a,b)
  %8059 = call float @dx.op.binary.f32(i32 35, float %7937, float %7947)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8059)  ; FMax(a,b)
  %8061 = fdiv fast float %7937, %8060
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = fdiv fast float %7947, %8060
  %8064 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8065 = fcmp fast une float %8058, 1.000000e+00
  br i1 %8065, label %8066, label %8079, !dx.controlflow.hints !167

; <label>:8066                                    ; preds = %8043
  %8067 = call float @dx.op.unary.f32(i32 23, float %8058)  ; Log(value)
  %8068 = fmul fast float %8067, 0x3FE62E4300000000
  %8069 = fmul fast float %7939, %8068
  %8070 = fsub fast float -0.000000e+00, %8069
  %8071 = fmul fast float %7940, %8068
  %8072 = fsub fast float -0.000000e+00, %8071
  %8073 = fmul fast float %7941, %8068
  %8074 = fsub fast float -0.000000e+00, %8073
  %8075 = fsub fast float 1.000000e+00, %8058
  %8076 = fdiv fast float %8070, %8075
  %8077 = fdiv fast float %8072, %8075
  %8078 = fdiv fast float %8074, %8075
  br label %8079

; <label>:8079                                    ; preds = %8066, %8043
  %8080 = phi float [ %8076, %8066 ], [ %7939, %8043 ]
  %8081 = phi float [ %8077, %8066 ], [ %7940, %8043 ]
  %8082 = phi float [ %8078, %8066 ], [ %7941, %8043 ]
  %8083 = phi float [ %8068, %8066 ], [ 0.000000e+00, %8043 ]
  %8084 = fcmp fast une float %8055, 1.000000e+00
  br i1 %8084, label %8085, label %8092, !dx.controlflow.hints !168

; <label>:8085                                    ; preds = %8079
  %8086 = call float @dx.op.unary.f32(i32 23, float %8055)  ; Log(value)
  %8087 = fmul fast float %8086, 0x3FE62E4300000000
  %8088 = fmul fast float %8052, %8087
  %8089 = fsub fast float -0.000000e+00, %8088
  %8090 = fsub fast float 1.000000e+00, %8055
  %8091 = fdiv fast float %8089, %8090
  br label %8092

; <label>:8092                                    ; preds = %8085, %8079
  %8093 = phi float [ %8091, %8085 ], [ %8052, %8079 ]
  %8094 = phi float [ %8087, %8085 ], [ 0.000000e+00, %8079 ]
  %8095 = fcmp fast une float %8056, 1.000000e+00
  br i1 %8095, label %8096, label %8103, !dx.controlflow.hints !168

; <label>:8096                                    ; preds = %8092
  %8097 = call float @dx.op.unary.f32(i32 23, float %8056)  ; Log(value)
  %8098 = fmul fast float %8097, 0x3FE62E4300000000
  %8099 = fmul fast float %8053, %8098
  %8100 = fsub fast float -0.000000e+00, %8099
  %8101 = fsub fast float 1.000000e+00, %8056
  %8102 = fdiv fast float %8100, %8101
  br label %8103

; <label>:8103                                    ; preds = %8096, %8092
  %8104 = phi float [ %8102, %8096 ], [ %8053, %8092 ]
  %8105 = phi float [ %8098, %8096 ], [ 0.000000e+00, %8092 ]
  %8106 = fcmp fast une float %8057, 1.000000e+00
  br i1 %8106, label %8107, label %8114, !dx.controlflow.hints !168

; <label>:8107                                    ; preds = %8103
  %8108 = call float @dx.op.unary.f32(i32 23, float %8057)  ; Log(value)
  %8109 = fmul fast float %8108, 0x3FE62E4300000000
  %8110 = fmul fast float %8054, %8109
  %8111 = fsub fast float -0.000000e+00, %8110
  %8112 = fsub fast float 1.000000e+00, %8057
  %8113 = fdiv fast float %8111, %8112
  br label %8114

; <label>:8114                                    ; preds = %8107, %8103
  %8115 = phi float [ %8113, %8107 ], [ %8054, %8103 ]
  %8116 = phi float [ %8109, %8107 ], [ 0.000000e+00, %8103 ]
  %8117 = fmul fast float %8080, %8064
  %8118 = fmul fast float %8081, %8064
  %8119 = fmul fast float %8082, %8064
  %8120 = fmul fast float %8083, %8064
  %8121 = fmul fast float %8093, %8062
  %8122 = fmul fast float %8104, %8062
  %8123 = fmul fast float %8115, %8062
  %8124 = fmul fast float %8094, %8062
  %8125 = fmul fast float %8105, %8062
  %8126 = fmul fast float %8116, %8062
  %8127 = fadd fast float %8121, %8117
  %8128 = fadd fast float %8122, %8118
  %8129 = fadd fast float %8123, %8119
  %8130 = fadd fast float %8124, %8120
  %8131 = fadd fast float %8125, %8120
  %8132 = fadd fast float %8126, %8120
  %8133 = fcmp fast une float %8130, 0.000000e+00
  br i1 %8133, label %8134, label %8141, !dx.controlflow.hints !169

; <label>:8134                                    ; preds = %8114
  %8135 = fmul fast float %8130, 0x3FF7154760000000
  %8136 = call float @dx.op.unary.f32(i32 21, float %8135)  ; Exp(value)
  %8137 = fsub fast float 1.000000e+00, %8136
  %8138 = fmul fast float %8127, %8137
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = fdiv fast float %8139, %8130
  br label %8141

; <label>:8141                                    ; preds = %8134, %8114
  %8142 = phi float [ %8136, %8134 ], [ 1.000000e+00, %8114 ]
  %8143 = phi float [ %8140, %8134 ], [ %8127, %8114 ]
  %8144 = fcmp fast une float %8131, 0.000000e+00
  br i1 %8144, label %8145, label %8152, !dx.controlflow.hints !169

; <label>:8145                                    ; preds = %8141
  %8146 = fmul fast float %8131, 0x3FF7154760000000
  %8147 = call float @dx.op.unary.f32(i32 21, float %8146)  ; Exp(value)
  %8148 = fsub fast float 1.000000e+00, %8147
  %8149 = fmul fast float %8128, %8148
  %8150 = fsub fast float -0.000000e+00, %8149
  %8151 = fdiv fast float %8150, %8131
  br label %8152

; <label>:8152                                    ; preds = %8145, %8141
  %8153 = phi float [ %8147, %8145 ], [ 1.000000e+00, %8141 ]
  %8154 = phi float [ %8151, %8145 ], [ %8128, %8141 ]
  %8155 = fcmp fast une float %8132, 0.000000e+00
  br i1 %8155, label %8156, label %8163, !dx.controlflow.hints !169

; <label>:8156                                    ; preds = %8152
  %8157 = fmul fast float %8132, 0x3FF7154760000000
  %8158 = call float @dx.op.unary.f32(i32 21, float %8157)  ; Exp(value)
  %8159 = fsub fast float 1.000000e+00, %8158
  %8160 = fmul fast float %8129, %8159
  %8161 = fsub fast float -0.000000e+00, %8160
  %8162 = fdiv fast float %8161, %8132
  br label %8163

; <label>:8163                                    ; preds = %8156, %8152
  %8164 = phi float [ %8158, %8156 ], [ 1.000000e+00, %8152 ]
  %8165 = phi float [ %8162, %8156 ], [ %8129, %8152 ]
  %8166 = fcmp fast ogt float %8062, %8064
  br i1 %8166, label %8167, label %8187

; <label>:8167                                    ; preds = %8163
  %8168 = fsub fast float 1.000000e+00, %8064
  %8169 = fmul fast float %8080, %8168
  %8170 = fmul fast float %8081, %8168
  %8171 = fmul fast float %8082, %8168
  %8172 = fmul fast float %8083, %8168
  %8173 = fcmp fast une float %8172, 0.000000e+00
  br i1 %8173, label %8174, label %8225, !dx.controlflow.hints !170

; <label>:8174                                    ; preds = %8167
  %8175 = fmul fast float %8172, 0x3FF7154760000000
  %8176 = call float @dx.op.unary.f32(i32 21, float %8175)  ; Exp(value)
  %8177 = fsub fast float 1.000000e+00, %8176
  %8178 = fmul fast float %8169, %8177
  %8179 = fsub fast float -0.000000e+00, %8178
  %8180 = fmul fast float %8170, %8177
  %8181 = fsub fast float -0.000000e+00, %8180
  %8182 = fmul fast float %8171, %8177
  %8183 = fsub fast float -0.000000e+00, %8182
  %8184 = fdiv fast float %8179, %8172
  %8185 = fdiv fast float %8181, %8172
  %8186 = fdiv fast float %8183, %8172
  br label %8225

; <label>:8187                                    ; preds = %8163
  %8188 = fsub fast float 1.000000e+00, %8062
  %8189 = fmul fast float %8093, %8188
  %8190 = fmul fast float %8104, %8188
  %8191 = fmul fast float %8115, %8188
  %8192 = fmul fast float %8094, %8188
  %8193 = fmul fast float %8105, %8188
  %8194 = fmul fast float %8116, %8188
  %8195 = fcmp fast une float %8192, 0.000000e+00
  br i1 %8195, label %8196, label %8203, !dx.controlflow.hints !169

; <label>:8196                                    ; preds = %8187
  %8197 = fmul fast float %8192, 0x3FF7154760000000
  %8198 = call float @dx.op.unary.f32(i32 21, float %8197)  ; Exp(value)
  %8199 = fsub fast float 1.000000e+00, %8198
  %8200 = fmul fast float %8189, %8199
  %8201 = fsub fast float -0.000000e+00, %8200
  %8202 = fdiv fast float %8201, %8192
  br label %8203

; <label>:8203                                    ; preds = %8196, %8187
  %8204 = phi float [ %8202, %8196 ], [ %8189, %8187 ]
  %8205 = phi float [ %8198, %8196 ], [ 1.000000e+00, %8187 ]
  %8206 = fcmp fast une float %8193, 0.000000e+00
  br i1 %8206, label %8207, label %8214, !dx.controlflow.hints !169

; <label>:8207                                    ; preds = %8203
  %8208 = fmul fast float %8193, 0x3FF7154760000000
  %8209 = call float @dx.op.unary.f32(i32 21, float %8208)  ; Exp(value)
  %8210 = fsub fast float 1.000000e+00, %8209
  %8211 = fmul fast float %8190, %8210
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = fdiv fast float %8212, %8193
  br label %8214

; <label>:8214                                    ; preds = %8207, %8203
  %8215 = phi float [ %8213, %8207 ], [ %8190, %8203 ]
  %8216 = phi float [ %8209, %8207 ], [ 1.000000e+00, %8203 ]
  %8217 = fcmp fast une float %8194, 0.000000e+00
  br i1 %8217, label %8218, label %8225, !dx.controlflow.hints !169

; <label>:8218                                    ; preds = %8214
  %8219 = fmul fast float %8194, 0x3FF7154760000000
  %8220 = call float @dx.op.unary.f32(i32 21, float %8219)  ; Exp(value)
  %8221 = fsub fast float 1.000000e+00, %8220
  %8222 = fmul fast float %8191, %8221
  %8223 = fsub fast float -0.000000e+00, %8222
  %8224 = fdiv fast float %8223, %8194
  br label %8225

; <label>:8225                                    ; preds = %8218, %8214, %8174, %8167
  %8226 = phi float [ %8224, %8218 ], [ %8186, %8174 ], [ %8171, %8167 ], [ %8191, %8214 ]
  %8227 = phi float [ %8215, %8218 ], [ %8185, %8174 ], [ %8170, %8167 ], [ %8215, %8214 ]
  %8228 = phi float [ %8204, %8218 ], [ %8184, %8174 ], [ %8169, %8167 ], [ %8204, %8214 ]
  %8229 = phi float [ %8220, %8218 ], [ %8176, %8174 ], [ 1.000000e+00, %8167 ], [ 1.000000e+00, %8214 ]
  %8230 = phi float [ %8216, %8218 ], [ %8176, %8174 ], [ 1.000000e+00, %8167 ], [ %8216, %8214 ]
  %8231 = phi float [ %8205, %8218 ], [ %8176, %8174 ], [ 1.000000e+00, %8167 ], [ %8205, %8214 ]
  %8232 = fmul fast float %8231, %8143
  %8233 = fmul fast float %8230, %8154
  %8234 = fmul fast float %8229, %8165
  %8235 = fadd fast float %8232, %8228
  %8236 = fadd fast float %8233, %8227
  %8237 = fadd fast float %8234, %8226
  %8238 = fmul fast float %8231, %8142
  %8239 = fmul fast float %8230, %8153
  %8240 = fmul fast float %8229, %8164
  br label %8241

; <label>:8241                                    ; preds = %8225, %8036
  %8242 = phi float [ %8240, %8225 ], [ %8042, %8036 ]
  %8243 = phi float [ %8239, %8225 ], [ %8041, %8036 ]
  %8244 = phi float [ %8238, %8225 ], [ %8040, %8036 ]
  %8245 = phi float [ %8237, %8225 ], [ %8039, %8036 ]
  %8246 = phi float [ %8236, %8225 ], [ %8038, %8036 ]
  %8247 = phi float [ %8235, %8225 ], [ %8037, %8036 ]
  %8248 = fmul fast float %8247, %7193
  %8249 = fmul fast float %8246, %7193
  %8250 = fmul fast float %8245, %7193
  %8251 = fmul fast float %8244, %7484
  %8252 = call float @dx.op.dot3.f32(i32 55, float %8244, float %8243, float %8242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8253 = call float @dx.op.dot3.f32(i32 55, float %8248, float %8249, float %8250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8254 = select i1 %265, float %8252, float %8244
  %8255 = select i1 %265, float %8252, float %8243
  %8256 = select i1 %265, float 1.000000e+00, float %8242
  %8257 = select i1 %265, float %8253, float %8248
  %8258 = select i1 %265, float 0.000000e+00, float %8249
  %8259 = select i1 %265, float 0.000000e+00, float %8250
  %8260 = fmul fast float %8254, %7478
  %8261 = fmul fast float %8255, %7479
  %8262 = fmul fast float %8256, %7480
  %8263 = fadd fast float %8260, %8257
  %8264 = fadd fast float %8261, %8258
  %8265 = fadd fast float %8259, %8262
  %8266 = fmul fast float %8254, %7481
  %8267 = fmul fast float %8255, %7482
  %8268 = fmul fast float %8256, %7483
  %8269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.i32 %8269, 0
  %8271 = icmp eq i32 %8270, 0
  br i1 %8271, label %8639, label %8272, !dx.controlflow.hints !171

; <label>:8272                                    ; preds = %8241
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 2
  %8275 = extractvalue %dx.types.CBufRet.f32 %8273, 3
  %8276 = fmul fast float %8274, %106
  %8277 = fmul fast float %8275, %107
  %8278 = fmul fast float %8276, 2.000000e+00
  %8279 = fmul fast float %8277, 2.000000e+00
  %8280 = fsub fast float 1.000000e+00, %8278
  %8281 = fsub fast float 1.000000e+00, %8279
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8286 = fmul fast float %8280, %8283
  %8287 = fmul fast float %8280, %8284
  %8288 = fmul fast float %8280, %8285
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  %8291 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %8292 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8293 = fmul fast float %8281, %8290
  %8294 = fmul fast float %8281, %8291
  %8295 = fmul fast float %8281, %8292
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8300 = fadd fast float %8293, %8297
  %8301 = fadd fast float %8300, %8286
  %8302 = fadd fast float %8294, %8298
  %8303 = fadd fast float %8302, %8287
  %8304 = fadd fast float %8295, %8299
  %8305 = fadd fast float %8304, %8288
  %8306 = fmul fast float %8301, %7477
  %8307 = fmul fast float %8303, %7477
  %8308 = fmul fast float %8305, %7477
  %8309 = fmul fast float %8306, %8306
  %8310 = fmul fast float %8307, %8307
  %8311 = fadd fast float %8309, %8310
  %8312 = fmul fast float %8308, %8308
  %8313 = fadd fast float %8311, %8312
  %8314 = call float @dx.op.unary.f32(i32 24, float %8313)  ; Sqrt(value)
  %8315 = extractvalue %dx.types.CBufRet.f32 %7204, 0
  %8316 = fsub fast float %8314, %8315
  %8317 = extractvalue %dx.types.CBufRet.f32 %7204, 2
  %8318 = fmul fast float %8316, %8317
  %8319 = call float @dx.op.unary.f32(i32 7, float %8318)  ; Saturate(value)
  %8320 = fadd fast float %8319, -5.000000e-01
  %8321 = fmul fast float %8320, 2.000000e+00
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 2
  %8324 = call float @dx.op.binary.f32(i32 36, float %8323, float %8321)  ; FMin(a,b)
  %8325 = fsub fast float -0.000000e+00, %8323
  %8326 = fcmp fast ogt float %8324, %8325
  br i1 %8326, label %8327, label %8639, !dx.controlflow.hints !172

; <label>:8327                                    ; preds = %8272
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 3
  %8330 = fcmp fast ogt float %8329, 0.000000e+00
  br i1 %8330, label %8331, label %8406, !dx.controlflow.hints !173

; <label>:8331                                    ; preds = %8327
  %8332 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8333 = extractvalue %dx.types.Dimensions %8332, 0
  %8334 = sitofp i32 %8333 to float
  %8335 = extractvalue %dx.types.Dimensions %8332, 1
  %8336 = sitofp i32 %8335 to float
  %8337 = fmul fast float %8276, %8334
  %8338 = fmul fast float %8277, %8336
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8341 = fsub fast float -0.000000e+00, %8340
  %8342 = fptoui float %8341 to i32
  %8343 = fptoui float %8337 to i32
  %8344 = fptoui float %8338 to i32
  %8345 = and i32 %8342, 31
  %8346 = lshr i32 %8343, %8345
  %8347 = lshr i32 %8344, %8345
  %8348 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8342, i32 %8346, i32 %8347, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8349 = extractvalue %dx.types.ResRet.f32 %8348, 0
  %8350 = fcmp fast olt float %8349, -1.000000e+00
  %8351 = fcmp fast ogt float %8349, -1.000000e+00
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8354 = select i1 %8351, float %8353, float 1.000000e+00
  %8355 = fadd fast float %8349, 1.000000e+00
  %8356 = fmul fast float %8354, %8355
  %8357 = call float @dx.op.unary.f32(i32 6, float %8356)  ; FAbs(value)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8352, 3
  %8359 = fcmp fast oge float %8357, %8358
  %8360 = select i1 %8359, float 0x4197782600000000, float %8357
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8365 = select i1 %8350, float %8362, float %8283
  %8366 = select i1 %8350, float %8363, float %8284
  %8367 = select i1 %8350, float %8364, float %8285
  %8368 = fmul fast float %8365, %8280
  %8369 = fmul fast float %8366, %8280
  %8370 = fmul fast float %8367, %8280
  %8371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.CBufRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.CBufRet.f32 %8371, 2
  %8375 = select i1 %8350, float %8372, float %8290
  %8376 = select i1 %8350, float %8373, float %8291
  %8377 = select i1 %8350, float %8374, float %8292
  %8378 = fmul fast float %8375, %8281
  %8379 = fmul fast float %8376, %8281
  %8380 = fmul fast float %8377, %8281
  %8381 = fadd fast float %8378, %8368
  %8382 = fadd fast float %8379, %8369
  %8383 = fadd fast float %8380, %8370
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8388 = select i1 %8350, float %8385, float %8297
  %8389 = select i1 %8350, float %8386, float %8298
  %8390 = select i1 %8350, float %8387, float %8299
  %8391 = fadd fast float %8381, %8388
  %8392 = fadd fast float %8382, %8389
  %8393 = fadd fast float %8383, %8390
  %8394 = fmul fast float %8391, %8360
  %8395 = fmul fast float %8392, %8360
  %8396 = fmul fast float %8393, %8360
  %8397 = fmul fast float %8394, %8394
  %8398 = fmul fast float %8395, %8395
  %8399 = fadd fast float %8397, %8398
  %8400 = fmul fast float %8396, %8396
  %8401 = fadd fast float %8399, %8400
  %8402 = call float @dx.op.unary.f32(i32 24, float %8401)  ; Sqrt(value)
  %8403 = fsub fast float %8402, %8315
  %8404 = fmul fast float %8403, %8317
  %8405 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  br label %8406

; <label>:8406                                    ; preds = %8331, %8327
  %8407 = phi float [ %8405, %8331 ], [ 1.000000e+00, %8327 ]
  %8408 = fmul fast float %8324, 5.000000e-01
  %8409 = fadd fast float %8408, 5.000000e-01
  %8410 = call float @dx.op.unary.f32(i32 22, float %8409)  ; Frc(value)
  %8411 = call float @dx.op.unary.f32(i32 27, float %8410)  ; Round_ni(value)
  %8412 = call float @dx.op.unary.f32(i32 22, float %8410)  ; Frc(value)
  %8413 = fmul fast float %8412, 2.000000e+00
  %8414 = fadd fast float %8413, -1.000000e+00
  %8415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8276, float %8277, float %8411, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.ResRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.ResRet.f32 %8415, 2
  %8419 = extractvalue %dx.types.ResRet.f32 %8415, 3
  %8420 = fadd fast float %8416, -5.000000e-01
  %8421 = fadd fast float %8418, -5.000000e-01
  %8422 = fmul fast float %8420, 0xBFD5555560000000
  %8423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8421, float %8422)  ; FMad(a,b,c)
  %8424 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8417, float 0.000000e+00)  ; FMad(a,b,c)
  %8425 = fadd fast float %8424, %8419
  %8426 = fmul fast float %8420, -7.500000e-01
  %8427 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8421, float %8426)  ; FMad(a,b,c)
  %8428 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8417, float 0.000000e+00)  ; FMad(a,b,c)
  %8429 = fadd fast float %8428, %8419
  %8430 = call float @dx.op.binary.f32(i32 35, float %8423, float -1.000000e+00)  ; FMax(a,b)
  %8431 = call float @dx.op.binary.f32(i32 35, float %8425, float -1.000000e+00)  ; FMax(a,b)
  %8432 = call float @dx.op.binary.f32(i32 35, float %8427, float -1.000000e+00)  ; FMax(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %8429, float -1.000000e+00)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 36, float %8430, float 1.000000e+00)  ; FMin(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8431, float 1.000000e+00)  ; FMin(a,b)
  %8436 = call float @dx.op.binary.f32(i32 36, float %8432, float 1.000000e+00)  ; FMin(a,b)
  %8437 = call float @dx.op.binary.f32(i32 36, float %8433, float 1.000000e+00)  ; FMin(a,b)
  %8438 = fcmp fast olt float %8434, 0x3FEFFF8020000000
  br i1 %8438, label %8439, label %8554, !dx.controlflow.hints !174

; <label>:8439                                    ; preds = %8406
  %8440 = extractvalue %dx.types.CBufRet.f32 %8322, 3
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8446 = fsub fast float %8442, %8434
  %8447 = fsub fast float %8443, %8435
  %8448 = fsub fast float %8444, %8436
  %8449 = fsub fast float %8445, %8437
  %8450 = fmul fast float %8446, %8440
  %8451 = fmul fast float %8447, %8440
  %8452 = fmul fast float %8448, %8440
  %8453 = fmul fast float %8449, %8440
  %8454 = fadd fast float %8450, %8434
  %8455 = fadd fast float %8451, %8435
  %8456 = fsub fast float -0.000000e+00, %8455
  %8457 = fadd fast float %8452, %8436
  %8458 = fadd fast float %8453, %8437
  %8459 = fmul fast float %8454, %8454
  %8460 = fsub fast float %8455, %8459
  %8461 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8460)  ; FMax(a,b)
  %8462 = fdiv fast float 1.000000e+00, %8461
  %8463 = fmul fast float %8455, %8454
  %8464 = fsub fast float %8457, %8463
  %8465 = fsub fast float %8414, %8454
  %8466 = fmul fast float %8414, %8414
  %8467 = fsub fast float %8466, %8455
  %8468 = fmul fast float %8465, %8462
  %8469 = fmul fast float %8468, %8464
  %8470 = fsub fast float %8467, %8469
  %8471 = fmul fast float %8455, %8455
  %8472 = fsub fast float %8458, %8471
  %8473 = fmul fast float %8464, %8464
  %8474 = fmul fast float %8473, %8462
  %8475 = fsub fast float %8472, %8474
  %8476 = fdiv fast float %8470, %8475
  %8477 = fmul fast float %8464, %8476
  %8478 = fsub fast float %8465, %8477
  %8479 = fmul fast float %8478, %8462
  %8480 = fmul fast float %8479, %8454
  %8481 = fsub fast float 1.000000e+00, %8480
  %8482 = fmul fast float %8455, %8476
  %8483 = fsub fast float %8481, %8482
  %8484 = fmul fast float %8479, %8479
  %8485 = fmul fast float %8476, 4.000000e+00
  %8486 = fmul fast float %8485, %8483
  %8487 = fsub fast float %8484, %8486
  %8488 = call float @dx.op.unary.f32(i32 24, float %8487)  ; Sqrt(value)
  %8489 = fcmp fast oge float %8479, 0.000000e+00
  %8490 = fsub fast float -0.000000e+00, %8488
  %8491 = select i1 %8489, float %8490, float %8488
  %8492 = fsub fast float %8491, %8479
  %8493 = fdiv fast float %8492, %8476
  %8494 = fdiv fast float %8483, %8492
  %8495 = fmul fast float %8493, 5.000000e-01
  %8496 = fmul fast float %8494, 2.000000e+00
  %8497 = select i1 %8489, float %8495, float %8496
  %8498 = select i1 %8489, float %8496, float %8495
  %8499 = call float @dx.op.binary.f32(i32 35, float %8497, float %8498)  ; FMax(a,b)
  %8500 = call float @dx.op.binary.f32(i32 36, float %8497, float %8498)  ; FMin(a,b)
  %8501 = fcmp fast ogt float %8414, %8500
  br i1 %8501, label %8502, label %8512

; <label>:8502                                    ; preds = %8439
  %8503 = fsub fast float %8414, %8500
  %8504 = fsub fast float %8499, %8500
  %8505 = fmul fast float %8503, %8504
  %8506 = fmul fast float %8499, %8414
  %8507 = fadd fast float %8499, %8414
  %8508 = fmul fast float %8507, %8454
  %8509 = fadd fast float %8506, %8455
  %8510 = fsub fast float %8509, %8508
  %8511 = fdiv fast float %8510, %8505
  br label %8512

; <label>:8512                                    ; preds = %8502, %8439
  %8513 = phi float [ %8511, %8502 ], [ 0.000000e+00, %8439 ]
  %8514 = fcmp fast ogt float %8414, %8499
  %8515 = fsub fast float %8414, %8499
  br i1 %8514, label %8516, label %8526

; <label>:8516                                    ; preds = %8512
  %8517 = fsub fast float %8499, %8500
  %8518 = fmul fast float %8517, %8515
  %8519 = fmul fast float %8500, %8414
  %8520 = fadd fast float %8500, %8414
  %8521 = fmul fast float %8520, %8454
  %8522 = fsub fast float %8456, %8519
  %8523 = fadd fast float %8522, %8521
  %8524 = fdiv fast float %8523, %8518
  %8525 = fadd fast float %8524, %8513
  br label %8526

; <label>:8526                                    ; preds = %8516, %8512
  %8527 = phi float [ %8525, %8516 ], [ %8513, %8512 ]
  %8528 = fsub fast float %8414, %8500
  %8529 = fmul fast float %8528, %8515
  %8530 = fmul fast float %8500, %8499
  %8531 = fadd fast float %8500, %8499
  %8532 = fmul fast float %8531, %8454
  %8533 = fadd fast float %8530, %8455
  %8534 = fsub fast float %8533, %8532
  %8535 = fdiv fast float %8534, %8529
  %8536 = call float @dx.op.unary.f32(i32 7, float %8527)  ; Saturate(value)
  %8537 = fcmp fast oeq float %7205, 0.000000e+00
  %8538 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  %8539 = fcmp fast oeq float %8538, 0.000000e+00
  %8540 = or i1 %8537, %8539
  %8541 = fmul fast float %8538, 2.000000e+00
  %8542 = fadd fast float %8323, %8324
  %8543 = fdiv fast float %8542, %8541
  %8544 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8545 = fmul fast float %8544, 2.000000e+00
  %8546 = fsub fast float 3.000000e+00, %8545
  %8547 = fmul fast float %8544, %8544
  %8548 = fmul fast float %8547, %8546
  %8549 = select i1 %8540, float 1.000000e+00, float %8548
  %8550 = fmul fast float %8535, %7205
  %8551 = fadd fast float %8536, %8550
  %8552 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  %8553 = fmul fast float %8549, %8552
  br label %8554

; <label>:8554                                    ; preds = %8526, %8406
  %8555 = phi float [ %8553, %8526 ], [ 0.000000e+00, %8406 ]
  %8556 = fsub fast float 1.000000e+00, %8555
  %8557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8276, float %8277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8558 = extractvalue %dx.types.ResRet.f32 %8557, 0
  %8559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.i32 %8559, 2
  %8561 = icmp eq i32 %8560, 0
  br i1 %8561, label %8567, label %8562

; <label>:8562                                    ; preds = %8554
  %8563 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8564 = fadd fast float %8558, -1.000000e+00
  %8565 = fmul fast float %8563, %8564
  %8566 = fadd fast float %8565, 1.000000e+00
  br label %8567

; <label>:8567                                    ; preds = %8562, %8554
  %8568 = phi float [ %8566, %8562 ], [ %8556, %8554 ]
  br i1 %8330, label %8569, label %8587

; <label>:8569                                    ; preds = %8567
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 1
  %8572 = fsub fast float %8407, %8571
  %8573 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  %8574 = fsub fast float %8407, %8329
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fsub fast float %8573, %8575
  %8577 = fsub fast float %8409, %8575
  %8578 = fdiv fast float %8577, %8576
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = fmul fast float %8579, 2.000000e+00
  %8581 = fsub fast float 3.000000e+00, %8580
  %8582 = fsub fast float %8558, %8568
  %8583 = fmul fast float %8579, %8579
  %8584 = fmul fast float %8583, %8582
  %8585 = fmul fast float %8584, %8581
  %8586 = fadd fast float %8585, %8568
  br label %8587

; <label>:8587                                    ; preds = %8569, %8567
  %8588 = phi float [ %8586, %8569 ], [ %8568, %8567 ]
  %8589 = call float @dx.op.binary.f32(i32 35, float %8558, float %8588)  ; FMax(a,b)
  %8590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.i32 %8590, 2
  %8592 = and i32 %8591, 1
  %8593 = icmp eq i32 %8592, 0
  %8594 = fcmp fast une float %8589, 1.000000e+00
  %8595 = and i1 %8594, %8593
  br i1 %8595, label %8596, label %8615

; <label>:8596                                    ; preds = %8587
  %8597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8276, float %8277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.ResRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.ResRet.f32 %8597, 2
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8603 = fmul fast float %8602, %8598
  %8604 = fmul fast float %8602, %8599
  %8605 = fmul fast float %8602, %8600
  %8606 = fcmp fast ogt float %8558, 0x3FEFFF2E40000000
  %8607 = fsub fast float 1.000000e+00, %8589
  %8608 = fsub fast float 1.000000e+00, %8558
  %8609 = fdiv fast float %8607, %8608
  %8610 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8611 = select i1 %8606, float 0.000000e+00, float %8610
  %8612 = fmul fast float %8603, %8611
  %8613 = fmul fast float %8604, %8611
  %8614 = fmul fast float %8605, %8611
  br label %8615

; <label>:8615                                    ; preds = %8596, %8587
  %8616 = phi float [ 0.000000e+00, %8587 ], [ %8612, %8596 ]
  %8617 = phi float [ 0.000000e+00, %8587 ], [ %8613, %8596 ]
  %8618 = phi float [ 0.000000e+00, %8587 ], [ %8614, %8596 ]
  %8619 = fmul fast float %8616, %7193
  %8620 = fmul fast float %8617, %7193
  %8621 = fmul fast float %8618, %7193
  %8622 = fmul fast float %8589, %8251
  %8623 = call float @dx.op.dot3.f32(i32 55, float %8589, float %8589, float %8589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8624 = call float @dx.op.dot3.f32(i32 55, float %8619, float %8620, float %8621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = select i1 %265, float %8623, float %8589
  %8626 = select i1 %265, float 1.000000e+00, float %8589
  %8627 = select i1 %265, float %8624, float %8619
  %8628 = select i1 %265, float 0.000000e+00, float %8620
  %8629 = select i1 %265, float 0.000000e+00, float %8621
  %8630 = fmul fast float %8625, %8263
  %8631 = fmul fast float %8625, %8264
  %8632 = fmul fast float %8626, %8265
  %8633 = fadd fast float %8630, %8627
  %8634 = fadd fast float %8631, %8628
  %8635 = fadd fast float %8629, %8632
  %8636 = fmul fast float %8625, %8266
  %8637 = fmul fast float %8625, %8267
  %8638 = fmul fast float %8626, %8268
  br label %8639

; <label>:8639                                    ; preds = %8615, %8272, %8241, %7473
  %8640 = phi float [ %7478, %7473 ], [ %8263, %8241 ], [ %8633, %8615 ], [ %8263, %8272 ]
  %8641 = phi float [ %7479, %7473 ], [ %8264, %8241 ], [ %8634, %8615 ], [ %8264, %8272 ]
  %8642 = phi float [ %7480, %7473 ], [ %8265, %8241 ], [ %8635, %8615 ], [ %8265, %8272 ]
  %8643 = phi float [ %7481, %7473 ], [ %8266, %8241 ], [ %8636, %8615 ], [ %8266, %8272 ]
  %8644 = phi float [ %7482, %7473 ], [ %8267, %8241 ], [ %8637, %8615 ], [ %8267, %8272 ]
  %8645 = phi float [ %7483, %7473 ], [ %8268, %8241 ], [ %8638, %8615 ], [ %8268, %8272 ]
  %8646 = phi float [ %7484, %7473 ], [ %8251, %8241 ], [ %8622, %8615 ], [ %8251, %8272 ]
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8650 = fmul fast float %8648, %106
  %8651 = fmul fast float %8649, %107
  %8652 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8653 = call float @dx.op.unary.f32(i32 7, float %8651)  ; Saturate(value)
  %8654 = select i1 %7215, i32 2, i32 0
  %8655 = or i32 %8654, 1
  %8656 = uitofp i32 %8655 to float
  %8657 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8652, float %8653, float %8656, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8658 = extractvalue %dx.types.ResRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.ResRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.ResRet.f32 %8657, 2
  %8661 = extractvalue %dx.types.ResRet.f32 %8657, 3
  %8662 = add nuw nsw i32 %8654, 2
  %8663 = uitofp i32 %8662 to float
  %8664 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8652, float %8653, float %8663, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8665 = extractvalue %dx.types.ResRet.f32 %8664, 0
  %8666 = extractvalue %dx.types.ResRet.f32 %8664, 1
  %8667 = extractvalue %dx.types.ResRet.f32 %8664, 2
  %8668 = extractvalue %dx.types.ResRet.f32 %8664, 3
  %8669 = call float @dx.op.binary.f32(i32 35, float %8659, float %8660)  ; FMax(a,b)
  %8670 = call float @dx.op.binary.f32(i32 35, float %8658, float %8669)  ; FMax(a,b)
  %8671 = call float @dx.op.binary.f32(i32 35, float %8670, float %8661)  ; FMax(a,b)
  %8672 = call float @dx.op.binary.f32(i32 36, float %8666, float %8667)  ; FMin(a,b)
  %8673 = call float @dx.op.binary.f32(i32 36, float %8665, float %8672)  ; FMin(a,b)
  %8674 = call float @dx.op.binary.f32(i32 36, float %8673, float %8668)  ; FMin(a,b)
  %8675 = fmul fast float %8671, 2.550000e+02
  %8676 = fadd fast float %8675, 0x3F70101020000000
  %8677 = fptoui float %8676 to i32
  %8678 = fmul fast float %8674, 2.550000e+02
  %8679 = fadd fast float %8678, 0x3F70101020000000
  %8680 = fptoui float %8679 to i32
  %8681 = icmp ult i32 %8677, %8680
  br i1 %8681, label %8682, label %8851

; <label>:8682                                    ; preds = %8639
  %8683 = fcmp fast ogt float %96, 9.843750e-01
  %8684 = fadd fast float %7477, -4.000000e+00
  %8685 = select i1 %8683, float -4.000000e+00, float %8684
  %8686 = call float @dx.op.binary.f32(i32 35, float %8685, float 0.000000e+00)  ; FMax(a,b)
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 0
  %8689 = fadd fast float %8688, %8686
  %8690 = extractvalue %dx.types.CBufRet.f32 %8687, 2
  %8691 = fmul fast float %8689, %8690
  %8692 = call float @dx.op.unary.f32(i32 23, float %8691)  ; Log(value)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8687, 3
  %8694 = fmul fast float %8693, %8692
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = fmul fast float %8694, %8696
  %8698 = call float @dx.op.unary.f32(i32 7, float %8697)  ; Saturate(value)
  %8699 = uitofp i32 %8677 to float
  %8700 = uitofp i32 %8680 to float
  %8701 = fadd fast float %8699, 5.000000e-01
  %8702 = fadd fast float %8700, 5.000000e-01
  %8703 = fmul fast float %8696, %8701
  %8704 = fmul fast float %8696, %8702
  %8705 = fadd fast float %8703, 0x3F0FFB4800000000
  %8706 = fadd fast float %8704, 0xBF0FFB4800000000
  %8707 = call float @dx.op.binary.f32(i32 35, float %8698, float %8705)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 36, float %8707, float %8706)  ; FMin(a,b)
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %8711 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8712 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  %8713 = select i1 %7215, float %8712, float 0.000000e+00
  %8714 = fmul fast float %8710, %8708
  %8715 = fadd fast float %8713, %8714
  %8716 = fadd fast float %8713, %8711
  %8717 = fsub fast float %8710, %8711
  %8718 = fadd fast float %8717, %8713
  %8719 = call float @dx.op.binary.f32(i32 35, float %8715, float %8716)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8719, float %8718)  ; FMin(a,b)
  %8721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8652, float %8653, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8722 = extractvalue %dx.types.ResRet.f32 %8721, 0
  %8723 = extractvalue %dx.types.ResRet.f32 %8721, 1
  %8724 = extractvalue %dx.types.ResRet.f32 %8721, 2
  %8725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.i32 %8725, 0
  %8727 = extractvalue %dx.types.CBufRet.i32 %8725, 1
  %8728 = uitofp i32 %8726 to float
  %8729 = uitofp i32 %8727 to float
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.CBufRet.f32 %8730, 1
  %8733 = fmul fast float %8728, %8652
  %8734 = fmul fast float %8729, %8653
  %8735 = fadd fast float %8733, -5.000000e-01
  %8736 = fadd fast float %8734, -5.000000e-01
  %8737 = call float @dx.op.unary.f32(i32 22, float %8735)  ; Frc(value)
  %8738 = call float @dx.op.unary.f32(i32 22, float %8736)  ; Frc(value)
  %8739 = fmul fast float %8737, %8737
  %8740 = fmul fast float %8739, %8737
  %8741 = fsub fast float 3.000000e+00, %8737
  %8742 = fmul fast float %8739, %8741
  %8743 = fmul fast float %8737, 3.000000e+00
  %8744 = fmul fast float %8740, 3.000000e+00
  %8745 = fmul fast float %8739, 6.000000e+00
  %8746 = fsub fast float %8744, %8745
  %8747 = fadd fast float %8746, 4.000000e+00
  %8748 = fmul fast float %8747, 0x3FC5555560000000
  %8749 = fmul fast float %8740, -3.000000e+00
  %8750 = fadd fast float %8739, %8737
  %8751 = fmul fast float %8750, 3.000000e+00
  %8752 = fadd fast float %8749, 1.000000e+00
  %8753 = fadd fast float %8752, %8751
  %8754 = fmul fast float %8740, 0x3FC5555560000000
  %8755 = fmul fast float %8738, %8738
  %8756 = fmul fast float %8755, %8738
  %8757 = fsub fast float 3.000000e+00, %8738
  %8758 = fmul fast float %8755, %8757
  %8759 = fmul fast float %8738, 3.000000e+00
  %8760 = fmul fast float %8756, 3.000000e+00
  %8761 = fmul fast float %8755, 6.000000e+00
  %8762 = fsub fast float %8760, %8761
  %8763 = fadd fast float %8762, 4.000000e+00
  %8764 = fmul fast float %8763, 0x3FC5555560000000
  %8765 = fmul fast float %8756, -3.000000e+00
  %8766 = fadd fast float %8755, %8738
  %8767 = fmul fast float %8766, 3.000000e+00
  %8768 = fadd fast float %8765, 1.000000e+00
  %8769 = fadd fast float %8768, %8767
  %8770 = fmul fast float %8756, 0x3FC5555560000000
  %8771 = fadd fast float %8737, 1.000000e+00
  %8772 = fsub fast float 1.000000e+00, %8743
  %8773 = fadd fast float %8772, %8742
  %8774 = fadd fast float %8773, %8747
  %8775 = fmul fast float %8774, 0x3FC5555560000000
  %8776 = fdiv fast float %8748, %8775
  %8777 = fsub fast float %8771, %8776
  %8778 = fsub fast float 1.000000e+00, %8737
  %8779 = fadd fast float %8753, %8740
  %8780 = fmul fast float %8779, 0x3FC5555560000000
  %8781 = fdiv fast float %8754, %8780
  %8782 = fadd fast float %8778, %8781
  %8783 = fadd fast float %8738, 1.000000e+00
  %8784 = fsub fast float 1.000000e+00, %8759
  %8785 = fadd fast float %8784, %8758
  %8786 = fadd fast float %8785, %8763
  %8787 = fmul fast float %8786, 0x3FC5555560000000
  %8788 = fdiv fast float %8764, %8787
  %8789 = fsub fast float %8783, %8788
  %8790 = fsub fast float 1.000000e+00, %8738
  %8791 = fadd fast float %8769, %8756
  %8792 = fmul fast float %8791, 0x3FC5555560000000
  %8793 = fdiv fast float %8770, %8792
  %8794 = fadd fast float %8793, %8790
  %8795 = fmul fast float %8777, %8731
  %8796 = fsub fast float %8652, %8795
  %8797 = fmul fast float %8782, %8731
  %8798 = fadd fast float %8797, %8652
  %8799 = fmul fast float %8794, %8732
  %8800 = fadd fast float %8799, %8653
  %8801 = fmul fast float %8789, %8732
  %8802 = fsub fast float %8653, %8801
  %8803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8796, float %8802, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8804 = extractvalue %dx.types.ResRet.f32 %8803, 0
  %8805 = extractvalue %dx.types.ResRet.f32 %8803, 1
  %8806 = extractvalue %dx.types.ResRet.f32 %8803, 2
  %8807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8798, float %8802, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8808 = extractvalue %dx.types.ResRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.ResRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.ResRet.f32 %8807, 2
  %8811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8796, float %8800, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8812 = extractvalue %dx.types.ResRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.ResRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.ResRet.f32 %8811, 2
  %8815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8798, float %8800, float %8720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8816 = extractvalue %dx.types.ResRet.f32 %8815, 0
  %8817 = extractvalue %dx.types.ResRet.f32 %8815, 1
  %8818 = extractvalue %dx.types.ResRet.f32 %8815, 2
  %8819 = fsub fast float %8812, %8804
  %8820 = fsub fast float %8813, %8805
  %8821 = fsub fast float %8814, %8806
  %8822 = fmul fast float %8819, %8792
  %8823 = fmul fast float %8820, %8792
  %8824 = fmul fast float %8821, %8792
  %8825 = fadd fast float %8822, %8804
  %8826 = fadd fast float %8823, %8805
  %8827 = fadd fast float %8824, %8806
  %8828 = fsub fast float %8816, %8808
  %8829 = fsub fast float %8817, %8809
  %8830 = fsub fast float %8818, %8810
  %8831 = fmul fast float %8828, %8792
  %8832 = fmul fast float %8829, %8792
  %8833 = fmul fast float %8830, %8792
  %8834 = fsub fast float %8808, %8825
  %8835 = fadd fast float %8834, %8831
  %8836 = fsub fast float %8809, %8826
  %8837 = fadd fast float %8836, %8832
  %8838 = fsub fast float %8810, %8827
  %8839 = fadd fast float %8838, %8833
  %8840 = fmul fast float %8835, %8780
  %8841 = fmul fast float %8837, %8780
  %8842 = fmul fast float %8839, %8780
  %8843 = fadd fast float %8840, %8825
  %8844 = fadd fast float %8841, %8826
  %8845 = fadd fast float %8842, %8827
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 1
  %8848 = fmul fast float %8843, %8847
  %8849 = fmul fast float %8844, %8847
  %8850 = fmul fast float %8845, %8847
  br label %8851

; <label>:8851                                    ; preds = %8682, %8639
  %8852 = phi float [ %8722, %8682 ], [ 1.000000e+00, %8639 ]
  %8853 = phi float [ %8723, %8682 ], [ 1.000000e+00, %8639 ]
  %8854 = phi float [ %8724, %8682 ], [ 1.000000e+00, %8639 ]
  %8855 = phi float [ %8848, %8682 ], [ 0.000000e+00, %8639 ]
  %8856 = phi float [ %8849, %8682 ], [ 0.000000e+00, %8639 ]
  %8857 = phi float [ %8850, %8682 ], [ 0.000000e+00, %8639 ]
  %8858 = fmul fast float %8855, %7193
  %8859 = fmul fast float %8856, %7193
  %8860 = fmul fast float %8857, %7193
  %8861 = fmul fast float %8852, %8646
  %8862 = call float @dx.op.dot3.f32(i32 55, float %8852, float %8853, float %8854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8863 = call float @dx.op.dot3.f32(i32 55, float %8858, float %8859, float %8860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8864 = select i1 %265, float %8862, float %8852
  %8865 = select i1 %265, float %8862, float %8853
  %8866 = select i1 %265, float 1.000000e+00, float %8854
  %8867 = select i1 %265, float %8863, float %8858
  %8868 = select i1 %265, float 0.000000e+00, float %8859
  %8869 = select i1 %265, float 0.000000e+00, float %8860
  %8870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.i32 %8870, 3
  %8872 = and i32 %8871, 3
  %8873 = icmp ne i32 %8872, 0
  %8874 = and i32 %8871, 4
  %8875 = icmp ne i32 %8874, 0
  %8876 = and i1 %8873, %8875
  %8877 = and i1 %265, %8876
  br i1 %8877, label %8878, label %8884

; <label>:8878                                    ; preds = %8851
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 1
  %8881 = fadd fast float %8861, -1.000000e+00
  %8882 = fmul fast float %8880, %8881
  %8883 = fadd fast float %8882, 1.000000e+00
  br label %8884

; <label>:8884                                    ; preds = %8878, %8851
  %8885 = phi float [ %8883, %8878 ], [ %8861, %8851 ]
  %8886 = fadd fast float %8643, %8640
  %8887 = fmul fast float %8864, %8886
  %8888 = fadd fast float %8887, %8867
  %8889 = fadd fast float %8644, %8641
  %8890 = fmul fast float %8865, %8889
  %8891 = fadd fast float %8890, %8868
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  br i1 %265, label %8894, label %8918

; <label>:8894                                    ; preds = %8884
  %8895 = fadd fast float %8888, %8891
  %8896 = fmul fast float %8893, %8895
  %8897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8897, 3
  %8899 = extractvalue %dx.types.CBufRet.f32 %7197, 1
  %8900 = fsub fast float %7202, %7196
  %8901 = fadd fast float %8900, %7203
  %8902 = fsub fast float %8901, %8899
  %8903 = extractvalue %dx.types.CBufRet.f32 %7197, 2
  %8904 = fmul fast float %8902, %8903
  %8905 = call float @dx.op.unary.f32(i32 7, float %8904)  ; Saturate(value)
  %8906 = fsub fast float %8905, %8898
  %8907 = fmul fast float %8906, %8885
  %8908 = fadd fast float %8907, %8898
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 0
  %8911 = fsub fast float %8908, %8910
  %8912 = fmul fast float %8911, 1.000000e+01
  %8913 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  %8914 = fsub fast float %4051, %7193
  %8915 = fmul fast float %8913, %8914
  %8916 = fadd fast float %8915, %7193
  %8917 = fmul fast float %8916, %8908
  br label %8942

; <label>:8918                                    ; preds = %8884
  %8919 = fadd fast float %8645, %8642
  %8920 = fmul fast float %8866, %8919
  %8921 = fadd fast float %8920, %8869
  %8922 = fmul fast float %8893, %8888
  %8923 = fmul fast float %8893, %8891
  %8924 = fmul fast float %8893, %8921
  %8925 = call float @dx.op.binary.f32(i32 35, float %8923, float %8924)  ; FMax(a,b)
  %8926 = call float @dx.op.binary.f32(i32 35, float %8922, float %8925)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 35, float %8926, float %7193)  ; FMax(a,b)
  %8928 = fcmp fast ugt float %8927, 0x3F10000000000000
  br i1 %8928, label %8930, label %8929

; <label>:8929                                    ; preds = %8918
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8930

; <label>:8930                                    ; preds = %8929, %8918
  %8931 = add i32 %55, 356
  %8932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8931, i32 undef)  ; BufferLoad(srv,index,wot)
  %8933 = extractvalue %dx.types.ResRet.i32 %8932, 0
  %8934 = and i32 %8933, 32
  %8935 = icmp eq i32 %8934, 0
  br i1 %8935, label %8942, label %8936

; <label>:8936                                    ; preds = %8930
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 0
  %8939 = fmul fast float %8938, 0x3FE99999A0000000
  %8940 = fadd fast float %8938, %8922
  %8941 = fadd fast float %8939, %8924
  br label %8942

; <label>:8942                                    ; preds = %8936, %8930, %8894
  %8943 = phi float [ %8896, %8894 ], [ %8940, %8936 ], [ %8922, %8930 ]
  %8944 = phi float [ %8917, %8894 ], [ %8923, %8936 ], [ %8923, %8930 ]
  %8945 = phi float [ %8916, %8894 ], [ %8941, %8936 ], [ %8924, %8930 ]
  %8946 = phi float [ %8916, %8894 ], [ %7193, %8936 ], [ %7193, %8930 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8947 = call float @dx.op.binary.f32(i32 36, float %8943, float 3.225500e+04)  ; FMin(a,b)
  %8948 = call float @dx.op.binary.f32(i32 36, float %8944, float 3.225500e+04)  ; FMin(a,b)
  %8949 = call float @dx.op.binary.f32(i32 36, float %8945, float 3.225500e+04)  ; FMin(a,b)
  %8950 = call float @dx.op.binary.f32(i32 36, float %8946, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8947)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !95}
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
!93 = !{!94}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
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
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !103, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

